(* floating point *)

let rec fequal x y =
	if x = y then true
	else false

in

let rec fless x y =
	if x < y then true
	else false

in

let rec fispos x =
	if x > 0.0 then true
	else false

in

let rec fisneg x =
	if x < 0.0 then true
	else false

in

let rec fiszero x =
	if x = 0.0 then true
	else false

in

let rec fhalf x = x /. 2.0

in

let rec fsqr x = x *. x

in

(*
fabs, fneg : primitive
*)

let rec sqrt_sub x n l r =
	if n = 100 then l else
	let m = (l +. r) /. 2.0 in
	let y = m *. m in
	if fless x y then sqrt_sub x (n + 1) l m
	else sqrt_sub x (n + 1) m r
in
let rec sqrt x =
	sqrt_sub x 0 0.0 (10000000000000000000.0)
in

let rec floor_sub x l r =
	if r - l = 1 then (float_of_int l)
	else let m = (l + r) / 2 in
	if fless x (float_of_int m) then floor_sub x l m
	else floor_sub x m r
in
let rec floor x =
	floor_sub x (-2147483647 - 1) (2147483647)
in

(*
util
*)

let rec fact x =
	if x = 0 then 1.0 else (float_of_int x) *. (fact (x - 1))
in

let pi = 3.14159265368979323846264
in
let pi2 = pi *. 2.0
in

let rec normalize x =
	if fless x (0.0 -. pi) then normalize (x +. pi2)
	else if fless x pi then x
	else normalize (x -. pi2)
in

(*
taylor
*)

let rec cos_coe n =
	if ((n / 2) * 2 = n) then 
		let m = n / 2 in
		let c = 1.0 /. (fact n) in
		if ((m / 2) * 2 = m) then c
		else fneg c
	else 0.0
in
let rec cos_sub x n a =
	let b = a *. x in
	let c = b +. (cos_coe n) in
	if n = 0 then c
	else cos_sub x (n - 1) c
in
let rec cos x =
	let y = normalize x in
	cos_sub y 20 0.0
in

let rec sin_coe n =
	if ((n / 2) * 2 = n) then 0.0
	else let c = 1.0 /. (fact n) in
	let m = (n - 1) / 2 in
	if ((m / 2) * 2 = m) then c else fneg c
in
let rec sin_sub x n a =
	let b = a *. x in
	let c = b +. (sin_coe n) in
	if n = 0 then c
	else sin_sub x (n - 1) c
in
let rec sin x =
	let y = normalize x in
	sin_sub y 20 0.0
in

let rec atan_sub x n l r =
	if n = 100 then l else
	let m = (l +. r) /. 2.0 in
	let a = ((sin m) /. (cos m)) in
	if fless a x then atan_sub x (n + 1) m r
	else atan_sub x (n + 1) l m
in
let rec atan x = atan_sub x 0 (fneg (pi /. 2.0)) (pi /. 2.0)
in

let x = cos 1.0 in
()
