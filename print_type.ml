open Type

let rec print_spaces x =
	if x <= 0 then () else (print_string " "; print_spaces (x - 1))

let rec print_strlist d x =
	match x with
	| [] -> ()
	| h :: t -> print_spaces d; print_string h; print_string "\n"; print_strlist d t

let rec print_types_sub ts =
	match ts with
	| [] -> ()
	| [a] -> print_type a
	| h :: t -> print_type h; print_string " "; print_types_sub t

and

print_types ts =
	if ts = [] then print_string "{}" else (print_string "{"; print_types_sub ts; print_string "}")

and

print_type tp =
	print_string "(";
	(match tp with
	| Unit -> print_string "Unit"
	| Bool -> print_string "Bool"
	| Int -> print_string "Int"
	| Float -> print_string "Float"
	| Fun (args, ret) -> print_types args; print_string "->"; print_type ret
	| Tuple elems -> print_string "tuple: "; print_types elems
	| Array a -> print_string "Array: "; print_type a
	| Var _ -> print_string "[type variable]"
	);
	print_string ")"
