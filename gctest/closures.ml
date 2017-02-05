let rec f x =
	if x = 1000 then 0 else
	let a = create_array 100 x in
	let rec g x =
		let y = a.(0) in
		let z = a.(1) in
		y + z + 1
	in
	let b = g x in
	let rec h x =
		if x = b then 0 else
		1 + (h (x + 1))
	in
	let c = h 0 in
	c + f (x + 1)
in
let a = f 0 in
print_int a;
()
