let rec g a b =
	a.(0) <- b
in
let rec f x =
	if x = 4 then 0 else
	let a = create_array 1000 x in
	let e = a.(0) in
	let b = create_array 5 x in
	let c = create_array 5 (x + 1) in
	let d = create_array 5 b in
	let t = g b (x + 2) in
	let n = f (x + 2) in
	print_int n;
	print_char 10;
	n + e + d.(0).(0) + d.(1).(0)
in
let a = f 0 in
let b = print_int a in
()
