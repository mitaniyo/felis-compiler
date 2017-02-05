open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"
(*external getbits : float -> int32 = "getbits"*)

let reg r =
  if is_reg r
  then String.sub r 1 (String.length r - 1)
  else r

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

let pop_stack () =
  let pop_list l = (match l with
    | [] -> []
    | [x] -> []
    | a :: b -> a :: (pop_list b))
  in
  let a = List.length (!stackmap) in
  let b = List.nth (!stackmap) (a - 1) in
  stackset := S.remove b (!stackset);
  stackmap := pop_list (!stackmap);
  stacktypemap := pop_list (!stacktypemap)

let li_large oc r v =
  let lo = v land 65535 in
  let hi = ((v land (65535 lsl 16)) lsr 16) in
  if lo = 0 then (Printf.fprintf oc "\taddi %s %s %d\n" "r0" r lo) else
  (Printf.fprintf oc "\tlui %s %d\n" r hi;
  (if lo = 0 then () else Printf.fprintf oc "\taddi %s %s %d\n" r r lo))

let load_typeinfo oc r =
  let ri = reg_id r in
  Printf.fprintf oc "\tsrl %s %s %d\n" (reg reg_type) (reg reg_typetmp) ri;
  Printf.fprintf oc "\tandi %s %s %d\n" (reg reg_typetmp) (reg reg_typetmp) 1

let store_typeinfo oc r =
  let ri = reg_id r in
  if ri = 0 then () else
  Printf.fprintf oc "\taddi %s %s %d\n" "r0" (reg reg_tmp) 1;
  Printf.fprintf oc "\tsll %s %s %d\n" (reg reg_tmp) (reg reg_tmp) ri;
  Printf.fprintf oc "\taddi %s %s %d\n" (reg reg_tmp) (reg reg_tmp) 1;
  Printf.fprintf oc "\tsub %s %s %s\n" "r0" (reg reg_tmp) (reg reg_tmp);
  Printf.fprintf oc "\tand %s %s %s\n" (reg reg_type) (reg reg_tmp) (reg reg_type);
  Printf.fprintf oc "\tsll %s %s %d\n" (reg reg_typetmp) (reg reg_typetmp) ri;
  Printf.fprintf oc "\tor %s %s %s\n" (reg reg_type) (reg reg_typetmp) (reg reg_type)

let mov_typeinfo oc s d =
  let si = reg_id s in
  let di = reg_id d in
  if si = di then () else
  Printf.fprintf oc "\tsrl %s %s %d\n" (reg reg_type) (reg reg_typetmp) si;
  Printf.fprintf oc "\tandi %s %s %d\n" (reg reg_typetmp) (reg reg_typetmp) 1;
  store_typeinfo oc d

let init_typeinfo oc =
  Printf.fprintf oc "\taddi %s %s %d\n" "r0" (reg reg_type) 1;
  Printf.fprintf oc "\tsll %s %s %d\n" (reg reg_type) (reg reg_type) (reg_id (reg reg_hp))
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
let offset x = 8 * (locate x)
(*let offset x = 4 * List.hd (locate x)*)
let stacksize () = (List.length (!stackmap)) * 8
(*let stacksize () = align ((List.length !stackmap + 1) * 4)*)

let small_log x =
  match x with
  | 1 -> 0
  | 2 -> 1
  | 4 -> 2
  | 8 -> 3
  | 16 -> 4
  | _ -> -1

let load_label oc r label =
  let r' = reg r in
  Printf.eprintf "load %s to %s\n" r' label;
  Printf.sprintf "\taddi\t%s %s %s\n" "r0" r' label
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
  | NonTail(x), Li(i) when -32768 <= i && i < 32768 ->
    Printf.fprintf oc "\taddi\t%s %s %d\n" "r0" (reg x) i;
    mov_typeinfo oc "r0" (reg x)
  | NonTail(x), Li(i) ->
      (*let n = i lsr 16 in
      let m = i lxor (n lsl 16) in
      let r = reg x in*)
      let lo = i land 65535 in
      let hi = ((i land (65535 lsl 16)) lsr 16) in
      (*let hi = gethi d in
      let lo = getlo d in*)
      (*Printf.fprintf stderr "%d %d %d\n" i lo hi;*)
	  Printf.fprintf oc "\tlui\t%s %d\n" (reg x) hi;
	  Printf.fprintf oc "\tori %s %s %d\n" (reg x) (reg x) lo;
    mov_typeinfo oc "r0" (reg x)
      (*Printf.fprintf oc "\tlis\t%s, %d\n" r n;
      Printf.fprintf oc "\tori\t%s, %s, %d\n" r r m*)
  | NonTail(x), FLi(d) ->
  	  let hi = gethi d in
  	  let lo = getlo d in
      (*let v = getbits d in
      let lo = v land 32767 in
      let hi = ((v land (32767 lsl 16)) lsr 16) in*)
	  Printf.fprintf oc "\tlui\t%s %ld\n" (reg reg_fimm) hi;
      Printf.fprintf oc "\tori\t%s %s %ld\n" (reg reg_fimm) (reg reg_fimm) lo;
	  Printf.fprintf oc "\tmtc1\t%s %s\n" (reg reg_fimm) (reg x)
  | NonTail(x), SetL(Id.L(y)) ->
      let s = load_label oc x y in
      Printf.fprintf oc "%s" s;
      mov_typeinfo oc "r0" (reg x)
  | NonTail(x), SetLVar(Id.L(y)) -> (* TODO *)
      let ss = stacksize () in
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_sp) (reg reg_sp) ss;
      Printf.fprintf oc "\tsw\t%s %s %d\n" "r1" (reg reg_sp) 0;
      Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_link) (reg reg_sp) 4;
      Printf.fprintf oc "\tjal\t%s\n" y;
      Printf.fprintf oc "\tmov\t%s %s\n" (reg x) "r1";
      mov_typeinfo oc "r1" (reg x);
      (if (reg x) = "r1" then () else Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_sp) "r1" 0);
      Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_sp) (reg reg_link) 4;
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_sp) (reg reg_sp) (-ss)
  | NonTail(x), Mr(y) when x = y -> ()
  | NonTail(x), Mr(y) ->
    Printf.fprintf oc "\tmov\t%s %s\n" (reg x) (reg y);
    mov_typeinfo oc (reg y) (reg x)
  | NonTail(x), Neg(y) -> Printf.fprintf oc "\tsub\t%s %s %s\n" ("r0") (reg y) (reg x)
  | NonTail(x), Add(y, V(z)) ->
    Printf.fprintf oc "\tadd\t%s %s %s\n" (reg y) (reg z) (reg x)
    (** maybe don't have to call mov_typeinfo **)
  | NonTail(x), Add(y, C(z)) ->
    Printf.fprintf oc "\taddi\t%s %s %d\n" (reg y) (reg x) z;
    mov_typeinfo oc (reg y) (reg x)
  | NonTail(x), Sub(y, V(z)) -> Printf.fprintf oc "\tsub\t%s %s %s\n" (reg y) (reg z) (reg x)
  | NonTail(x), Sub(y, C(z)) ->
    Printf.fprintf oc "\taddi\t%s %s %d\n" (reg y) (reg x) (-z);
    mov_typeinfo oc (reg y) (reg x)
  (*| NonTail(x), Slw(y, V(z)) -> Printf.fprintf oc "\tslw\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Slw(y, C(z)) -> Printf.fprintf oc "\tslwi\t%s, %s, %d\n" (reg x) (reg y) z*)
  | NonTail(x), Mul(y, C(z)) -> let l = small_log z in 
    (if l >= 0 then Printf.fprintf oc "\tsll\t%s %s %d\n" (reg y) (reg x) l
    else Printf.fprintf oc "\tmult\t%s %s %d\n" (reg y) (reg x) z);
    mov_typeinfo oc (reg y) (reg x)
  | NonTail(x), Mul(y, V(z)) -> Printf.fprintf oc "\tmult\t%s %s %s\n" (reg y) (reg z) (reg x)
  | NonTail(x), Div(y, C(z)) -> let l = small_log z in
    (if l >= 0 then Printf.fprintf oc "\tsrl\t%s %s %d\n" (reg y) (reg x) l
    else Printf.fprintf oc "\tdiv\t%s %s %d\n" (reg y) (reg x) z);
    mov_typeinfo oc (reg y) (reg x)
  | NonTail(x), Div(y, V(z)) -> Printf.fprintf oc "\tdiv\t%s %s %s\n" (reg y) (reg z) (reg x)
  (*| NonTail(x), Lwz(y, V(z)) -> Printf.fprintf oc "\tlwzx\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Lwz(y, C(z)) -> Printf.fprintf oc "\tlwz\t%s, %d(%s)\n" (reg x) z (reg y)*)
  | NonTail(x), Ld(y, V(z)) ->
  	Printf.fprintf oc "\taddi\t%s %s %d\n" (reg z) (reg z) 4;
    Printf.fprintf oc "\tlwo\t%s %s %s\n" (reg y) (reg z) (reg reg_typetmp);
    Printf.fprintf oc "\taddi\t%s %s %d\n" (reg z) (reg z) (-4);
    Printf.fprintf oc "\tlwo\t%s %s %s\n" (reg y) (reg z) (reg x);
    store_typeinfo oc (reg x);
  | NonTail(x), Ld(y, C(z)) ->
    Printf.fprintf oc "\tlw\t%s %s %d\n" (reg y) (reg reg_typetmp) (z + 4);
    store_typeinfo oc (reg x);
    Printf.fprintf oc "\tlw\t%s %s %d\n" (reg y) (reg x) z;
  (*| NonTail(_), Stw(x, y, V(z)) -> Printf.fprintf oc "\tstwx\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(_), Stw(x, y, C(z)) -> Printf.fprintf oc "\tstw\t%s, %d(%s)\n" (reg x) z (reg y)*)
  | NonTail(_), St(x, y, V(z)) ->
    Printf.fprintf oc "\tswo\t%s %s %s\n" (reg x) (reg y) (reg z);
    Printf.fprintf oc "\taddi\t%s %s %d\n" (reg z) (reg z) 4;
    load_typeinfo oc (reg x);
    Printf.fprintf oc "\tswo\t%s %s %s\n" (reg reg_typetmp) (reg y) (reg z);
    Printf.fprintf oc "\taddi\t%s %s %d\n" (reg z) (reg z) (-4)
  | NonTail(_), St(x, y, C(z)) ->
    Printf.fprintf oc "\tsw\t%s %s %d\n" (reg x) (reg y) z;
    load_typeinfo oc (reg x);
    Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_typetmp) (reg y) (z + 4)
  | Tail, StTop(x, y) 
  | NonTail(_), StTop(x, y) ->
    Printf.fprintf oc "\taddi\t%s %s %d\n" "r0" (reg reg_typetmp) y;
    Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_typetmp) (reg x) 0
  | NonTail(x), FMr(y) when x = y -> ()
  | NonTail(x), FMr(y) -> Printf.fprintf oc "\tmov.s\t%s %s\n" (reg y) (reg x)
  | NonTail(x), FNeg(y) -> Printf.fprintf oc "\tneg.s\t%s %s\n" (reg y) (reg x)
  | NonTail(x), FAbs(y) -> Printf.fprintf oc "\tabs.s\t%s %s\n" (reg y) (reg x)
  | NonTail(x), FAdd(y, z) -> Printf.fprintf oc "\tadd.s\t%s %s %s\n" (reg y) (reg z) (reg x)
  | NonTail(x), FSub(y, z) -> Printf.fprintf oc "\tsub.s\t%s %s %s\n" (reg y) (reg z) (reg x)
  | NonTail(x), FMul(y, z) -> Printf.fprintf oc "\tmul.s\t%s %s %s\n" (reg y) (reg z) (reg x)
  | NonTail(x), FDiv(y, z) -> Printf.fprintf oc "\tdiv.s\t%s %s %s\n" (reg y) (reg z) (reg x)
  (*| NonTail(x), Lfd(y, V(z)) -> Printf.fprintf oc "\tlfdx\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Lfd(y, C(z)) -> Printf.fprintf oc "\tlfd\t%s, %d(%s)\n" (reg x) z (reg y)*)
  | NonTail(x), Ldf(y, V(z)) -> Printf.fprintf oc "\tlwoc1\t%s %s %s\n" (reg y) (reg z) (reg x)
  | NonTail(x), Ldf(y, C(z)) -> Printf.fprintf oc "\tlwc1\t%s %s %d\n" (reg y) (reg x) z
  (*| NonTail(_), Stfd(x, y, V(z)) -> Printf.fprintf oc "\tstfdx\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(_), Stfd(x, y, C(z)) -> Printf.fprintf oc "\tstfd\t%s, %d(%s)\n" (reg x) z (reg y)*)
  | NonTail(_), Stf(x, y, V(z)) ->
    Printf.fprintf oc "\tswoc1\t%s %s %s\n" (reg x) (reg y) (reg z);
    Printf.fprintf oc "\taddi\t%s %s %d\n" (reg z) (reg z) 4;
    Printf.fprintf oc "\taddi\t%s %s %d\n" ("r0") (reg reg_typetmp) 2;
    Printf.fprintf oc "\tswo\t%s %s %s\n" (reg reg_typetmp) (reg y) (reg z);
    Printf.fprintf oc "\taddi\t%s %s %d\n" (reg z) (reg z) (-4)
  | NonTail(_), Stf(x, y, C(z)) ->
    Printf.fprintf oc "\tswc1\t%s %s %d\n" (reg x) (reg y) z;
    Printf.fprintf oc "\taddi\t%s %s %d\n" ("r0") (reg reg_typetmp) 2;
    Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_typetmp) (reg y) (z + 4)
  | NonTail(_), Comment(s) -> Printf.fprintf oc "#\t%s\n" s
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) -> (* save register x, variable y if needed *)
      save y;
      Printf.fprintf oc "\tsw\t%s %s %d\n" (reg x) (reg reg_sp) (offset y);
      load_typeinfo oc (reg x);
      Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_typetmp) (reg reg_sp) ((offset y) + 4)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tswc1\t%s %s %d\n" (reg x) (reg reg_sp) (offset y);
      Printf.fprintf oc "\taddi\t%s %s %d\n" ("r0") (reg reg_typetmp) 2; 
      Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_typetmp) (reg reg_sp) ((offset y) + 4)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); () (* already saved *)
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_sp) (reg x) (offset y);
      Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_sp) (reg reg_typetmp) ((offset y) + 4);
      store_typeinfo oc (reg x)
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tlwc1\t %s %s %d\n" (reg reg_sp) (reg x) (offset y)
  | NonTail(x), RestoreAndDelete(y) when List.mem x allregs ->
      Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_sp) (reg x) (offset y);
      Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_sp) (reg reg_typetmp) ((offset y) + 4);
      store_typeinfo oc (reg x);
      Printf.fprintf oc "\tsw\t%s %s %d\n" "r0" (reg reg_sp) (offset y);
      Printf.fprintf oc "\tsw\t%s %s %d\n" "r0" (reg reg_sp) ((offset y) + 4)
  | NonTail(x), RestoreAndDelete(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tlwc1\t %s %s %d\n" (reg reg_sp) (reg x) (offset y)
  (* 末尾だったら計算結果を第一レジスタにセットしてリターン (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | Stf _ | Comment _ | Save _ as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);
      Printf.fprintf oc "\tjr\t%s\n" (reg reg_link)
  | Tail, (Li _ | SetL _ | SetLVar _ | Mr _ | Neg _ | Add _ | Sub _ | Mul _ | Div _ | Ld _ as exp) ->
      g' oc (NonTail(regs.(0)), exp);
      Printf.fprintf oc "\tjr\t%s\n" (reg reg_link)
  | Tail, (FLi _ | FMr _ | FNeg _ | FAbs _ | FAdd _ | FSub _ | FMul _ | FDiv _ | Ldf _ as exp) ->
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
  | Tail, (RestoreAndDelete(x) as exp) ->
      let i = locate x in
      let t = gettype i in
      (if t = Type.Int then
        g' oc (NonTail(regs.(0)), exp)
      else if t = Type.Float then
        g' oc (NonTail(fregs.(0)), exp)
      else assert false);
      Printf.fprintf oc "\tsw\t%s %s %d\n" "r0" (reg reg_sp) (i * 8);
      Printf.fprintf oc "\tsw\t%s %s %d\n" "r0" (reg reg_sp) (i * 8 + 4);
      Printf.fprintf oc "\tjr\t%s\n" (reg reg_link)
  | Tail, IfEq(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg x) (reg y) (reg reg_cond);
      g'_tail_if oc e2 e1 "beq_tail" "beq" (* if equal then jump *)
  | Tail, IfEq(x, C(y), e1, e2) ->
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg x) (reg reg_cond) (-y);
      g'_tail_if oc e2 e1 "beq_tail" "beq"
(*      Printf.fprintf oc "\tcmpwi\tcr7, %s, %d\n" (reg x) y;
      g'_tail_if oc e1 e2 "beq" "bne"*)
  | Tail, IfLE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg x) (reg y) (reg reg_cond);
      g'_tail_if oc e2 e1 "ble_tail" "blez"
  (*| Tail, IfLE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y);
      g'_tail_if oc e1 e2 "ble" "bgt"*)
  | Tail, IfLE(x, C(y), e1, e2) ->
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg x) (reg reg_cond) (-y);
      g'_tail_if oc e2 e1 "ble_tail" "blez"
  | Tail, IfGE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg x) (reg y) (reg reg_cond);
      g'_tail_if oc e2 e1 "bge_tail" "bgez"
  | Tail, IfGE(x, C(y), e1, e2) ->
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg x) (reg reg_cond) (-y);
      g'_tail_if oc e2 e1 "bge_tail" "bgez"
  | Tail, IfFEq(x, y, e1, e2) ->
  	  Printf.fprintf oc "\tsub.s\t%s %s %s\n" (reg x) (reg y) (reg reg_fcond);
  	  Printf.fprintf oc "\tmfc1\t%s %s\n" (reg reg_fcond) (reg reg_cond);
  	  Printf.fprintf oc "\tsll\t%s %s %d\n" (reg reg_cond) (reg reg_cond) 1;
      g'_tail_if oc e2 e1 "bfeq_tail" "beq"
  | Tail, IfFLE(x, y, e1, e2) ->
  	  Printf.fprintf oc "\tsub.s\t%s %s %s\n" (reg x) (reg y) (reg reg_fcond);
  	  Printf.fprintf oc "\tmfc1\t%s %s\n" (reg reg_fcond) (reg reg_cond);
  	  g'_tail_if oc e2 e1 "bfle_tail" "blez"
  | NonTail(z), IfEq(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg x) (reg y) (reg reg_cond);
      g'_non_tail_if oc (NonTail(z)) e2 e1 "beq" "beq"
  (*| NonTail(z), IfEq(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "beq" "bne"*)
  | NonTail(z), IfEq(x, C(y), e1, e2) ->
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg x) (reg reg_cond) (-y);
      g'_non_tail_if oc (NonTail(z)) e2 e1 "beq_nontail" "beq"
  (*| NonTail(z), IfEq(x, C(y), e1, e2) ->
      Printf.fprintf oc "\tcmpwi\tcr7, %s, %d\n" (reg x) y;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "beq" "bne"*)
  | NonTail(z), IfLE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg x) (reg y) (reg reg_cond);
      g'_non_tail_if oc (NonTail(z)) e2 e1 "ble_nontail" "blez"
      
  (*| NonTail(z), IfLE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tcmpw\tcr7, %s, %s\n" (reg x) (reg y);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "ble" "bgt"*)
  | NonTail(z), IfLE(x, C(y), e1, e2) ->
  	  Printf.fprintf oc "\taddi\t%s %s %d\n" (reg x) (reg reg_cond) (-y);
  	  g'_non_tail_if oc (NonTail(z)) e2 e1 "ble_nontail" "blez"
  (*| NonTail(z), IfLE(x, C(y), e1, e2) ->
      Printf.fprintf oc "\tcmpwi\tcr7, %s, %d\n" (reg x) y;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "ble" "bgt"*)
  | NonTail(z), IfGE(x, V(y), e1, e2) ->
      Printf.fprintf oc "\tsub\t%s %s %s\n" (reg x) (reg y) (reg reg_cond);
      g'_non_tail_if oc (NonTail(z)) e2 e1 "bge_nontail" "bgez"
  | NonTail(z), IfGE(x, C(y), e1, e2) ->
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg x) (reg reg_cond) (-y);
      g'_non_tail_if oc (NonTail(z)) e2 e1 "bge_nontail" "bgez"

  | NonTail(z), IfFEq(x, y, e1, e2) ->
  	  Printf.fprintf oc "\tsub.s\t%s %s %s\n" (reg x) (reg y) (reg reg_fcond);
  	  Printf.fprintf oc "\tmfc1\t%s %s\n" (reg reg_fcond) (reg reg_cond);
  	  Printf.fprintf oc "\tsll\t%s %s %d\n" (reg reg_cond) (reg reg_cond) 1;
      g'_non_tail_if oc (NonTail(z)) e2 e1 "bfeq_nontail" "beq"
  | NonTail(z), IfFLE(x, y, e1, e2) -> (* x <= y, x - y <= 0 *)
  	  Printf.fprintf oc "\tsub.s\t%s %s %s\n" (reg x) (reg y) (reg reg_fcond);
  	  Printf.fprintf oc "\tmfc1\t%s %s\n" (reg reg_fcond) (reg reg_cond);
  	  g'_non_tail_if oc (NonTail(z)) e2 e1 "bfle_nontail" "blez"

  | Tail, CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
	  Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_cl) (reg reg_adr) 4;
    Printf.fprintf oc "\tsll\t%s %s %d\n" (reg reg_adr) (reg reg_adr) 2;
	  Printf.fprintf oc "\tj %s\n" (reg reg_adr)
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tj\t%s\n" x
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
	  let ss = stacksize () in
	  Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_cl) (reg reg_adr) 4; (* get address *)
	  Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_link) (reg reg_sp) ss; (* save link register *)
    Printf.fprintf oc "\taddi\t%s %s %d\n" "r0" (reg reg_typetmp) 0;
    Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_typetmp) (reg reg_sp) (ss + 4);
	  Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_sp) (reg reg_sp) (ss + 8); (* update stack pointer *)
    Printf.fprintf oc "\tsll %s %s %d\n" (reg reg_adr) (reg reg_adr) 2;
	  Printf.fprintf oc "\tjal\t%s\n" (reg reg_adr); (* branch *)
	  Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_sp) (reg reg_sp) (-(ss + 8));
	  Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_sp) (reg reg_link) ss;
      if List.mem a allregs && a <> regs.(0) then
        (Printf.fprintf oc "\tmov\t%s %s\n" (reg a) (reg regs.(0));
        mov_typeinfo oc (reg regs.(0)) (reg a))
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmov.s\t%s %s\n" (reg fregs.(0)) (reg a)
  | (NonTail(a), CallDir(Id.L(x), ys, zs)) ->
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_link) (reg reg_sp) ss; (* save link register *)
      Printf.fprintf oc "\taddi\t%s %s %d\n" "r0" (reg reg_typetmp) 0;
      Printf.fprintf oc "\tsw\t%s %s %d\n" (reg reg_typetmp) (reg reg_sp) (ss + 4);
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_sp) (reg reg_sp) (ss + 8); (* update stack pointer *)
      g'_args oc [] ys zs; (* set arguments to correct positions *)
      Printf.fprintf oc "\tjal\t%s\n" x; (* branch *)
      Printf.fprintf oc "\taddi\t%s %s %d\n" (reg reg_sp) (reg reg_sp) (-(ss + 8)); (* restore stack pointer *)
      Printf.fprintf oc "\tlw\t%s %s %d\n" (reg reg_sp) (reg reg_link) ss; (* restore link register *)
(*      (
        if x = "min_caml__gc" then
          (let rec cleaner x = if x < 0 then () else
            (Printf.fprintf oc "\tsw\t%s %s %d\n" ("r0") (reg reg_sp) x;
            (if x mod 8 = 0 then pop_stack () else ());
            cleaner (x - 4))
          in
          cleaner (ss + 4)) else ()
      );*)
      if List.mem a allregs && a <> regs.(0) then
        (Printf.fprintf oc "\tmov\t%s %s\n" (reg a) (reg regs.(0));
        mov_typeinfo oc (reg regs.(0)) (reg a))
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmov.s\t%s %s\n" (reg fregs.(0)) (reg a)

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
    (fun (y, r) -> (Printf.fprintf oc "\tmov\t%s %s\n" (reg r) (reg y); mov_typeinfo oc (reg y) (reg r)))
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) -> Printf.fprintf oc "\tmov.s\t%s %s\n" (reg z) (reg fr))
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  stacktypemap := [];
  g oc (Tail, e)

let f oc hasextvar max_s max_gl max_hp (Prog(data, fundefs, e)) =
	Format.eprintf "generating assembly...\n";
	(* do not use data section *)
	List.iter (fun fundef -> h oc fundef) fundefs;
	Printf.fprintf oc "_min_caml_start:\n";
	stackset := S.empty;
	stackmap := [];
	stacktypemap := [];
  init_typeinfo oc;
  Printf.fprintf oc "\tlui\t%s %d\n" (reg reg_hp) 32;
  (if hasextvar = 1 then
    (Printf.fprintf oc "\tjal\tmin_caml_globals\n";
    Printf.fprintf oc "\taddi\t%s %s %d\n" "r0" "r31" 0)
  else ());
  Printf.fprintf oc "\tlui\t%s %d\n" (reg reg_hp) 32;
  Printf.fprintf oc "\tori\t%s %s %d\n" (reg reg_hp) (reg reg_hp) 4096;
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