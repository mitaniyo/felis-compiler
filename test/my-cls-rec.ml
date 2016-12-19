let x = 10 in
let rec f a =
	if a = 0 then 0
	else x + f (a - 1)
in
let y = f 20 in
()
