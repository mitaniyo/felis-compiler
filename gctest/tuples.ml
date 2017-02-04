let rec sum x =
	let (a, b, c, d, e) = x in
	let y = a + b + c + d + e in
	y
in
let rec sort x =
	let (a, b, c, d, e) = x in
	if a > b then sort (b, a, c, d, e) else
	if b > c then sort (a, c, b, d, e) else
	if c > d then sort (a, b, d, c, e) else
	if d > e then sort (a, b, c, e, d) else
	x
in
let rec f x =
	if x = 1000 then 0 else
	let a = (x + 4, x + 3, x + 2, x + 1, x) in
	let b = sort a in
	let c = sum b in
	(* let c = sum a in *)
	let d = 
	(*print_int c;
	print_char 10;*)
	f (x + 1) in
	print_int d;
	print_char 10;
	(* print_int c;
	print_char 10;*)
	c + d
in
let x = f 0 in
let a = print_int x in
()
