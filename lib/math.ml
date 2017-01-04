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
 
let x = sqrt 1.0 in
()
