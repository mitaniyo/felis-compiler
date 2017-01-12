let limit = ref 1000
let isLib = ref 0
let hasExtvar = ref 0

let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
  let e' = if (!isLib) = 0 then Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e)))) 
  else ConstFold.f (Inline.f (Assoc.f (Beta.f e))) in
  if e = e' then e else
  iter (n - 1) e'

(* main loop. added error handling *)
let lexbuf outchan l = (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  Emit.f outchan (!hasExtvar)
    (RegAlloc.f
    (Virtual.f
       (Closure.f
    (iter !limit
       (Alpha.f
          (KNormal.f
          (let typed = (try
          (Typing.f
            (let parsed = (try
              Parser.exp Lexer.token l
                with
                | _ ->
                  let cur = l.Lexing.lex_curr_p in
                  let line = cur.Lexing.pos_lnum in
                  let cnum = cur.Lexing.pos_cnum - cur.Lexing.pos_bol in
                  let tok = Lexing.lexeme l in
                  print_string "parse_error in line ";
                  print_int line;
                  print_string " character ";
                  print_int cnum;
                  print_string " token \"";
                  print_string tok;
                  print_string "\"\n";
                  Syntax.Unit)
              in
              print_string "parse succeeded!\n";
            parsed)
          )
          with
          | _ -> print_string "type inference error\n"; Syntax.Unit
          )
            in
          typed)
          

        ))))))

let string s = lexbuf stdout (Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
  try
    lexbuf outchan (Lexing.from_channel inchan);
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)

let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-lib", Arg.Int(fun i -> isLib := i), "set 1 if no function should be eliminated");
     ("-extvar", Arg.Int(fun i -> hasExtvar := i), "set 1 if the program has ext variable (not function)")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files
