open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"
(*external getbits : float -> int32 = "getbits"*)

let stackset = ref S.empty (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let stacktypemap = ref [] (* type of each variabes in stackmap *)
let save x = (* add x to stackset/map *)
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x];
    stacktypemap := !stacktypemap @ [Type.Int]
let savef x =
  (* save of 32-bit float is same as save of int *)
  (*save x*)
  stackset := S.add x !stackset;
   if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x];
    stacktypemap := !stacktypemap @ [Type.Float]
  (*stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
    stackmap := !stackmap @ pad @ [x; x])*)
(*let locate x = (* find all locations of x in stackmap *)
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap*)
let locate x =
  let rec loc s =
  match s with
  | [] -> failwith "cannot find requied variable in stack\n"
  | y :: zs when x = y -> 0
  | y :: zs -> 1 + loc zs
  in
  loc !stackmap
let gettype n = List.nth (!stacktypemap) n
let offset x = 4 * (locate x)
(*let offset x = 4 * List.hd (locate x)*)
let stacksize () = (List.length (!stackmap)) * 4
(*let stacksize () = align ((List.length !stackmap + 1) * 4)*)

let small_log x =
  match x with
  | 1 -> 0
  | 2 -> 1
  | 4 -> 2
  | 8 -> 3
  | 16 -> 4
  | _ -> failwith "implement mul/div!!\n"

let reg r =
  if is_reg r
  then String.sub r 1 (String.length r - 1)
  else r

let load_label r label = (* TO BE DECIDED *)
  let r' = reg r in
  Printf.sprintf "\taddi\t%s %s %s\n" r' "r0" label
(*  Printf.sprintf
    "\tlis\t%s, ha16(%s)\n\taddi\t%s, %s, lo16(%s)\n"
    r' label r' r' label*)

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
					 (function
					   | (y', z) when y = y' -> (sw, z)
					   | yz -> yz)
					 xys)
  | xys, acyc -> acyc @ shuffle sw xys

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g oc = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' oc (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e)
and g' oc = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop -> ()
  | NonTail(x), Li(i) when -32768 <= i && i < 32768 -> Printf.fprintf oc "\taddi\t%s %s %d\n" (reg x) "r0" i
  | NonTail(x), Li(i) ->
      (*let n = i lsr 16 in
      let m = i lxor (n lsl 16) in
      let r = reg x in*)
      let lo = i land 32767 in
      let hi = ((i land (32767 lsl 16)) lsr 16) in
      (*let hi = gethi d in
      let lo = getlo d in*)
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg x) "r0" hi;
      Printf.fprintf oc "\tlui\t%s\n" (reg x);
      Printf.fprintf oc "\taddi %s %s %d\n" (reg x) (reg x) lo
      (*Printf.fprintf oc "\tlis\t%s, %d\n" r n;
      Printf.fprintf oc "\tori\t%s, %s, %d\n" r r m*)
  | NonTail(x), FLi(d) ->
  	  let hi = gethi d in
  	  let lo = getlo d in
      (*let v = getbits d in
      let lo = v land 32767 in
      let hi = ((v land (32767 lsl 16)) lsr 16) in*)
      Printf.fprintf oc "\taddi\t%s %s %ld\n" (reg reg_fimm) "r0" hi;
      Printf.fprintf oc "\tlui\t%s\n" (reg reg_fimm);
      Printf.fprintf oc "\taddi\t%s %s %ld\n" (reg reg_fimm) (reg reg_fimm) lo;
      Printf.fprintf oc "\tmtc1\t%s %s\n" (reg x) (reg reg_fimm)
  | NonTail(x), SetL(Id.L(y)) ->
      let s = load_label x y in
      Printf.fprintf oc "%s" s
  | NonTail(x), Mr(y) when x = y -> ()
  | NonTail(x), Mr(y) -> Printf.fprintf oc "\tmov\t%s %s\n" (reg x) (reg y)
  | NonTail(x), Neg(y) -> Printf.fprintf oc "\tsub\t%s %s %s\n" (reg x) ("r0") (reg y)
  | NonTail(x), Add(y, V(z)) -> Printf.fprintf oc "\tadd\t%s %s %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Add(y, C(z)) -> Printf.fprintf oc "\taddi\t%s %s %d\n" (reg x) (reg y) z
  | NonTail(x), Sub(y, V(z)) -> Printf.fprintf oc "\tsub\t%s %s %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Sub(y, C(z)) -> Printf.fprintf oc "\tsubi\t%s %s %d\n" (reg x) (reg y) z
  (*| NonTail(x), Slw(y, V(z)) -> Printf.fprintf oc "\tslw\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Slw(y, C(z)) -> Printf.fprintf oc "\tslwi\t%s, %s, %d\n" (reg x) (reg y) z*)
  | NonTail(x), Mul(y, C(z)) -> let l = small_log z in Printf.fprintf oc "\tsll\t%s %s %d\n" (reg x) (reg y) l
  | NonTail(x), Mul(y, V(z)) -> failwith "implement mul!\n"
  | NonTail(x), Div(y, C(z)) -> let l = small_log z in Printf.fprintf oc "\tsrl\t%s %s %d\n" (reg x) (reg y) l
  | NonTail(x), Div(y, V(z)) -> failwith "implement div!\n"
  
  (*| NonTail(x), Lwz(y, V(z)) -> Printf.fprintf oc "\tlwzx\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Lwz(y, C(z)) -> Printf.fprintf oc "\tlwz\t%s, %d(%s)\n" (reg x) z (reg y)*)
  | NonTail(x), Ld(y, V(z)) -> Printf.fprintf oc "\tlwo\t%s %s %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Ld(y, C(z)) -> Printf.fprintf oc "\tlw\t%s %s %d\n" (reg x) (reg y) z
  (*| NonTail(_), Stw(x, y, V(z)) -> Printf.fprintf oc "\tstwx\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(_), Stw(x, y, C(z)) -> Printf.fprintf oc "\tstw\t%s, %d(%s)\n" (reg x) z (reg y)*)
  | NonTail(_), St(x, y, V(z)) -> Printf.fprintf oc "\tswo\t%s %s %s\n" (reg x) (reg y) (reg z)
  | NonTail(_), St(x, y, C(z)) -> Printf.fprintf oc "\tsw\t%s %s %d\n" (reg x) (reg y) z
  | NonTail(x), FMr(y) when x = y -> ()
  | NonTail(x), FMr(y) -> Printf.fprintf oc "\tmov.s\t%s %s\n" (reg x) (reg y)
  | NonTail(x), FNeg(y) -> Printf.fprintf oc "\tneg.s\t%s %s\n" (reg x) (reg y)
  | NonTail(x), FAdd(y, z) -> Printf.fprintf oc "\tfadd\t%s %s %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FSub(y, z) -> Printf.fprintf oc "\tfsub\t%s %s %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FMul(y, z) -> Printf.fprintf oc "\tfmul\t%s %s %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FDiv(y, z) -> Printf.fprintf oc "\tfdiv\t%s %s %s\n" (reg x) (reg y) (reg z)
  (*| NonTail(x), Lfd(y, V(z)) -> Printf.fprintf oc "\tlfdx\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Lfd(y, C(z)) -> Printf.fprintf oc "\tlfd\t%s, %d(%s)\n" (reg x) z (reg y)*)
  | NonTail(x), Ldf(y, V(z)) -> Printf.fprintf oc "\tlwoc1\t%s %s %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Ldf(y, C(z)) -> Printf.fprintf oc "\tlwc1\t%s %s %d\n" (reg x) (reg y) z
  (*| NonTail(_), Stfd(x, y, V(z)) -> Printf.fprintf oc "\tstfdx\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(_), Stfd(x, y, C(z)) -> Printf.fprintf oc "\tstfd\t%s, %d(%s)\n" (reg x) z (reg y)*)
  | NonTail(_), Stf(x, y, V(z)) -> Printf.fprintf oc "\tswoc1\t%s %s %s\n" (reg x) (reg y) (reg z)
  | NonTail(_), Stf(x, y, C(z)) -> Printf.fprintf oc "\tswc1\t%s %s %d\n" (reg x) (reg y) z
  | NonTail(_), Comment(s) -> Printf.fprintf oc "#\t%s\n" s
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) -> (* save register x, variable y if needed *)
      save y;
      Printf.fprintf oc "\tsw\t%s %s %d\n" (reg x) (reg reg_sp) (offset y)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tswc1\t%s %s %d\n" (reg x) (reg reg_sp) (offset y)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); () (* already saved *)
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tlw %s %s %d\n" (reg x) (reg reg_sp) (offset y)
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tlwc1\t %s %s %d\n" (reg x) (reg reg_sp) (offset y)
  (* 末尾だったら計算結果を第一レジスタにセットしてリターン (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | Stf _ | Comment _ | Save _ as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);
      Printf.fprintf oc "\tjr\t%s\n" (reg reg_link)
  | Tail, (Li _ | SetL _ | Mr _ | Neg _ | Add _ | Sub _ | Mul _ | Div _ | Ld _ as exp) ->
      g' oc (NonTail(regs.(0)), exp);
      Printf.fprintf oc "\tjr\t%s\n" (reg reg_link)
  | Tail, (FLi _ | FMr _ | FNeg _ | FAdd _ | FSub _ | FMul _ | FDiv _ | Ldf _ as exp) ->
      g' oc (NonTail(fregs.(0)), exp);
      Printf.fprintf oc "\tjr\t%s\n" (reg reg_link)
  | Tail, (Restore(x) as exp) ->
  	  let i = locate x in
  	  let t = gettype i in
  	  (if t = Type.Int then
  	    g' oc (NonTail(regs.(0)), exp)
  	  else if t = Type.Float then
  	    g' oc (NonTail(fregs.(0)), exp)
  	  else assert false);
  	  Printf.fprintf oc "\tjr\t%s\n" (reg reg_link)
      (*(match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp)
      (*| [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp)*) (* No *)
      | _ -> assert false);
      Printf.fprintf oc "\tjr\t%s\n" (reg reg_link)*)
  | Tail, IfEq(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg reg_cond) (reg x) (reg y);
      g'_tail_if oc e2 e1 "beq_tail" "beq" (* if equal then jump *)
  | Tail, IfEq(x, C(y), e1, e2) ->
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_cond) (reg x) (-y);
      g'_tail_if oc e2 e1 "beq_tail" "beq"
(*      Printf.fprintf oc "\tcmpwi\tcr7, %s, %d\n" (reg x) y;
      g'_tail_if oc e1 e2 "beq" "bne"*)
  | Tail, IfLE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg reg_cond) (reg x) (reg y);
      g'_tail_if oc e2 e1 "ble_tail" "blez"
  (*| Tail, IfLE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y);
      g'_tail_if oc e1 e2 "ble" "bgt"*)
  | Tail, IfLE(x, C(y), e1, e2) ->
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_cond) (reg x) (-y);
      g'_tail_if oc e2 e1 "ble_tail" "blez"
  | Tail, IfGE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg reg_cond) (reg x) (reg y);
      g'_tail_if oc e2 e1 "bge_tail" "bgez"
  | Tail, IfGE(x, C(y), e1, e2) ->
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_cond) (reg x) (-y);
      g'_tail_if oc e2 e1 "bge_tail" "bgez"
  | Tail, IfFEq(x, y, e1, e2) ->
  	  Printf.fprintf oc "\tfsub\t%s %s %s\n" (reg reg_fcond) (reg x) (reg y);
  	  Printf.fprintf oc "\tmfc1\t%s %s\n" (reg reg_cond) (reg reg_fcond);
  	  Printf.fprintf oc "\tsll\t%s %s %d\n" (reg reg_cond) (reg reg_cond) 1;
      g'_tail_if oc e2 e1 "bfeq_tail" "beq"
  | Tail, IfFLE(x, y, e1, e2) ->
  	  Printf.fprintf oc "\tfsub\t%s %s %s\n" (reg reg_fcond) (reg x) (reg y);
  	  Printf.fprintf oc "\tmfc1\t%s %s\n" (reg reg_cond) (reg reg_fcond);
  	  g'_tail_if oc e2 e1 "bfle_nontail" "blez"
  | NonTail(z), IfEq(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg reg_cond) (reg x) (reg y);
      g'_non_tail_if oc (NonTail(z)) e2 e1 "beq" "beq"
  (*| NonTail(z), IfEq(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "beq" "bne"*)
  | NonTail(z), IfEq(x, C(y), e1, e2) ->
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_cond) (reg x) (-y);
      g'_non_tail_if oc (NonTail(z)) e2 e1 "beq_nontail" "beq"
  (*| NonTail(z), IfEq(x, C(y), e1, e2) ->
      Printf.fprintf oc "\tcmpwi\tcr7, %s, %d\n" (reg x) y;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "beq" "bne"*)
  | NonTail(z), IfLE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg reg_cond) (reg x) (reg y);
      g'_non_tail_if oc (NonTail(z)) e2 e1 "ble_nontail" "blez"
      
  (*| NonTail(z), IfLE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "ble" "bgt"*)
  | NonTail(z), IfLE(x, C(y), e1, e2) ->
  	  Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_cond) (reg x) (-y);
  	  g'_non_tail_if oc (NonTail(z)) e2 e1 "ble_nontail" "blez"
  (*| NonTail(z), IfLE(x, C(y), e1, e2) ->
      Printf.fprintf oc "\tcmpwi\tcr7, %s, %d\n" (reg x) y;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "ble" "bgt"*)
  | NonTail(z), IfGE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg reg_cond) (reg x) (reg y);
      g'_non_tail_if oc (NonTail(z)) e2 e1 "bge_nontail" "bgez"
  | NonTail(z), IfGE(x, C(y), e1, e2) ->
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_cond) (reg x) (-y);
      g'_non_tail_if oc (NonTail(z)) e2 e1 "bge_nontail" "bgez"

  | NonTail(z), IfFEq(x, y, e1, e2) ->
  	  Printf.fprintf oc "\tfsub\t%s %s %s\n" (reg reg_fcond) (reg x) (reg y);
  	  Printf.fprintf oc "\tmfc1\t%s %s\n" (reg reg_cond) (reg reg_fcond);
  	  Printf.fprintf oc "\tsll\t%s %s %d\n" (reg reg_cond) (reg reg_cond) 1;
      g'_non_tail_if oc (NonTail(z)) e2 e1 "bfeq_nontail" "beq"
  | NonTail(z), IfFLE(x, y, e1, e2) -> (* x <= y, x - y <= 0 *)
  	  Printf.fprintf oc "\tfsub\t%s %s %s\n" (reg reg_fcond) (reg x) (reg y);
  	  Printf.fprintf oc "\tmfc1\t%s %s\n" (reg reg_cond) (reg reg_fcond);
  	  g'_non_tail_if oc (NonTail(z)) e2 e1 "bfle_nontail" "blez"

  (*| NonTail(z), IfFLE(x, y, e1, e2) ->
      Printf.fprintf oc "\tfcmpu\tcr7, %s, %s\n" (reg x) (reg y);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "ble" "bgt"*)
  (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  (*| Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *) (* TODO *)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tlwz\t%s, 0(%s)\n" (reg reg_sw) (reg reg_cl);
      Printf.fprintf oc "\tmtctr\t%s\n\tbctr\n" (reg reg_sw);*)
  | Tail, CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
	  Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_sw) (reg reg_cl) 0;
	  Printf.fprintf oc "\tj %s\n" (reg reg_sw)
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tj\t%s\n" x
  (*| NonTail(a), CallCls(x, ys, zs) -> (* TODO *)
      Printf.fprintf oc "\tmflr\t%s\n" (reg reg_tmp);
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tstw\t%s, %d(%s)\n" (reg reg_tmp) (ss - 4) (reg reg_sp);
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) ss;
      Printf.fprintf oc "\tlwz\t%s, 0(%s)\n" (reg reg_tmp) (reg reg_cl);
      Printf.fprintf oc "\tmtctr\t%s\n" (reg reg_tmp);
      Printf.fprintf oc "\tbctrl\n";
      Printf.fprintf oc "\tsubi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) ss;
      Printf.fprintf oc "\tlwz\t%s, %d(%s)\n" (reg reg_tmp) (ss - 4) (reg reg_sp);
      if List.mem a allregs && a <> regs.(0) then
	Printf.fprintf oc "\tmr\t%s, %s\n" (reg a) (reg regs.(0))
      else if List.mem a allfregs && a <> fregs.(0) then
	Printf.fprintf oc "\tfmr\t%s, %s\n" (reg a) (reg fregs.(0));
      Printf.fprintf oc "\tmtlr\t%s\n" (reg reg_tmp)*)
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
	  let ss = stacksize () in
	  Printf.fprintf oc "\tlw%s %s %d\n" (reg reg_adr) (reg reg_cl); (* get address *)
	  Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_link) (reg reg_sp) ss; (* save link register *)
	  Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_sp) (reg reg_sp) (ss + 4); (* update stack pointer *)
	  Printf.fprintf oc "\tjal\t%s\n" (reg reg_adr); (* branch *)
	  Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_sp) (reg reg_sp) (-(ss + 4));
	  Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_link) (reg reg_sp) ss;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmov\t%s %s\n" (reg a) (reg regs.(0))
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmov.s\t%s %s\n" (reg a) (reg regs.(0))
  | (NonTail(a), CallDir(Id.L(x), ys, zs)) ->
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_link) (reg reg_sp) ss; (* save link register *)
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_sp) (reg reg_sp) (ss + 4); (* update stack pointer *)
      g'_args oc [] ys zs; (* set arguments to correct positions *)
      Printf.fprintf oc "\tjal\t%s\n" x; (* branch *)
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_sp) (reg reg_sp) (-(ss + 4)); (* restore stack pointer *)
      Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_link) (reg reg_sp) ss; (* restore link register *)
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmov\t%s %s\n" (reg a) (reg regs.(0))
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmov.s\t%s %s\n" (reg a) (reg regs.(0))

and g'_tail_if oc e1 e2 btag binst =
  let b_else = Id.genid (btag ^ "_else") in
  (if binst = "beq" then Printf.fprintf oc "\t%s\t%s %s %s\n" binst (reg reg_cond) "r0" b_else
  else Printf.fprintf oc "\t%s\t%s %s\n" binst (reg reg_cond) b_else);
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)

(*and g'_tail_if oc e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\tcr7, %s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)*)
(*and g'_non_tail_if oc dest e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\tcr7, %s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tb\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2*)
and g'_non_tail_if oc dest e1 e2 btag binst =
  let b_else = Id.genid (btag ^ "_else") in
  let b_cont = Id.genid (btag ^ "_cont") in
  (if binst = "beq" then Printf.fprintf oc "\t%s\t%s %s %s\n" binst (reg reg_cond) "r0" b_else
  else Printf.fprintf oc "\t%s\t%s %s\n" binst (reg reg_cond) b_else);
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tj\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tmov\t%s %s\n" (reg r) (reg y))
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) -> Printf.fprintf oc "\tmov.s\t%s %s\n" (reg fr) (reg z))
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  stacktypemap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
	Format.eprintf "generating assembly...\n";
	(* do not use data section *)
	List.iter (fun fundef -> h oc fundef) fundefs;
	Printf.fprintf oc "_min_caml_start:\n";
	stackset := S.empty;
	stackmap := [];
	stacktypemap := [];
	g oc (NonTail("r0"), e);
	Printf.fprintf oc "halt\n"

(*
let f oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  if data <> [] then
    (Printf.fprintf oc "\t.data\n\t.literal8\n";
     List.iter
       (fun (Id.L(x), d) ->
	 Printf.fprintf oc "\t.align 3\n";
	 Printf.fprintf oc "%s:\t # %f\n" x d;
	 Printf.fprintf oc "\t.long\t%ld\n" (gethi d);
	 Printf.fprintf oc "\t.long\t%ld\n" (getlo d))
       data);
  Printf.fprintf oc "\t.text\n";
  Printf.fprintf oc "\t.globl _min_caml_start\n";
  Printf.fprintf oc "\t.align 2\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc "_min_caml_start: # main entry point\n";
  Printf.fprintf oc "\tmflr\tr0\n";
  Printf.fprintf oc "\tstmw\tr30, -8(r1)\n";
  Printf.fprintf oc "\tstw\tr0, 8(r1)\n";
  Printf.fprintf oc "\tstwu\tr1, -96(r1)\n";
  Printf.fprintf oc "#\tmain program starts\n";
  stackset := S.empty;
  stackmap := [];
  stacktypemap := [];
  g oc (NonTail("_R_0"), e);
  Printf.fprintf oc "#\tmain program ends\n";
  (* Printf.fprintf oc "\tmr\tr3, %s\n" regs.(0); *)
  Printf.fprintf oc "\tlwz\tr1, 0(r1)\n";
  Printf.fprintf oc "\tlwz\tr0, 8(r1)\n";
  Printf.fprintf oc "\tmtlr\tr0\n";
  Printf.fprintf oc "\tlmw\tr30, -8(r1)\n";
  Printf.fprintf oc "\tblr\n"
*)