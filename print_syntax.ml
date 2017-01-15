open Syntax

let rec print_spaces x =
	if x <= 0 then () else (print_string " "; print_spaces (x - 1))

let rec print_strlist d x =
	match x with
	| [] -> ()
	| h :: t -> print_spaces d; print_string h; print_string "\n"; print_strlist d t

let rec print_tlist d l =
	match l with
	| [] -> ()
	| h :: t -> print_syntax_t d h; print_tlist d t

and

print_syntax_t (depth : int) (prog : Syntax.t) =
	print_spaces depth;
	( match prog with
	| Unit -> print_string "UNIT\n"
	| Int x -> print_int x; print_string "\n"
	| Float x -> print_float x; print_string "\n"
	| Not x -> print_string "Not\n"; print_syntax_t (depth + 1) x
	| Neg x -> print_string "Neg\n"; print_syntax_t (depth + 1) x
	| Add (x, y) ->
		print_string "Add\n"; print_syntax_t (depth + 1) x;
		print_spaces depth; print_string "and\n";
		print_syntax_t (depth + 1) y
	| Sub (x, y) ->
		print_string "Sub\n"; print_syntax_t (depth + 1) x;
		print_spaces depth; print_string "and\n";
		print_syntax_t (depth + 1) y
	| Mul(x, y) -> print_string "mult\n"
	| Div(x, y) -> print_string "div\n"
	| FAdd(x, y) -> print_string "fadd\n"
	| FSub(x, y) -> print_string "fsub\n"
	| FMul(x, y) -> print_string "fmul\n";
		print_syntax_t (depth + 1) x;
		print_string "and\n";
		print_syntax_t (depth + 1) y
	| FDiv(x, y) -> print_string "fdiv\n"
	| Eq (x, y) ->
		print_string "Eq?\n";
		print_syntax_t (depth + 1) x;
		print_spaces depth; print_string "and\n";
		print_syntax_t (depth + 1) y
	| LE (x, y) ->
		print_string "Le?\n";
		print_syntax_t (depth + 1) x;
		print_spaces depth; print_string "and\n";
		print_syntax_t (depth + 1) y
	| If (cond, tval, fval) ->
		print_string "If\n";
		print_syntax_t (depth + 1) cond;
		print_spaces depth; print_string "then\n";
		print_syntax_t (depth + 1) tval;
		print_spaces depth; print_string "else\n";
		print_syntax_t (depth + 1) fval
	| Let ((x, y), z, w) -> 
		print_string "Let "; print_string x; print_string "\n";
		print_syntax_t (depth + 1) z;
		print_spaces depth; print_string "in\n";
		print_syntax_t (depth + 1) w
	| Var x ->
		print_string x; print_string "\n"
	| LetRec ({name = (f, t); args = alist; body = b}, x) ->
		print_string "LetRec\n";
		print_spaces depth; print_string f; print_string "\n";
		print_strlist (depth + 1) (List.map (fun (x, y) -> x) alist);
		print_string "body =\n";
		print_syntax_t depth b;
		print_spaces depth; print_string "in\n";
		print_syntax_t (depth + 1) x
	| App (f, a) -> 
		print_string "App\n";
		print_syntax_t (depth + 1) f;
		print_spaces (depth); print_string "arg =\n";
		print_tlist (depth + 1) a
	| Tuple tl ->
		print_string "Tuple\n";
		print_tlist depth tl
	| LetTuple (x, y, z) ->
		print_string "LetTuple\n";
		print_strlist depth (List.map (fun (x, y) -> x) x);
		print_spaces depth; print_string ":=";
		print_syntax_t (depth + 1) y;
		print_spaces depth; print_string "in\n";
		print_syntax_t (depth + 1) z
	| Array (x, y) ->
		print_string "Array\n";
		print_syntax_t (depth + 1) x;
		print_spaces depth; print_string ":=\n";
		print_syntax_t (depth + 1) y
	| Get (x, y) ->
		print_string "Get\n";
		print_syntax_t (depth + 1) x;
		print_spaces depth; print_string "where\n";
		print_syntax_t (depth + 1) y
	| Put (x, y, z) ->
		print_string "Put\n";
		print_syntax_t (depth + 1) x;
		print_spaces depth; print_string "where\n";
		print_syntax_t (depth + 1) y;
		print_spaces depth; print_string "value =\n";
		print_syntax_t (depth + 1) z
	| _ -> print_string "not implemented\n"
)
