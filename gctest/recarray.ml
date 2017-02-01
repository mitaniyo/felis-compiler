let rec f d x =
	if d = 1000 then 0 else
	let a = create_array 1000 (x + 1) in
	let b = a.(d) in
	b + (f (d + 1) (x + 1))
in
let x = f 0 0 in
let y = print_int x in
()
