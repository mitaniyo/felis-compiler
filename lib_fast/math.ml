(*
NO NON-TAIL FUNCTION CALL
*)

let rec sqrt_sub x n l r f =
	if n = 30 then (if f = 1 then (1.0 /. l) else l) else
	let m = (l +. r) /. 2.0 in
	let y = m *. m in
	if x < y then sqrt_sub x (n + 1) l m f else
	sqrt_sub x (n + 1) m r f
in

let rec sqrtlib x =
	if x > 1.0 then sqrt_sub (1.0 /. x) 0 0.0 1.0 1 else
	if x = 1.0 then x else
	if x > 0.0 then sqrt_sub x 0 0.0 1.0 0 else
	if x = 0.0 then x else
	x
in

let rec int_of_float x =
	let f = floor (x +. 0.5) in
	floor_retint f

in

(*
taylor
*)

let rec sin2 x s =
	let xx = x *. x in
	let res19 = (-0.0000000000000000082206352466243310362810) in
	let res17 = res19 *. xx +. (0.0000000000000028114572543455209925409709) in
	let res15 = res17 *. xx +. (-0.0000000000007647163731819817415255802895) in
	let res13 = res15 *. xx +. (0.0000000001605904383682161592580233252316) in
	let res11 = res13 *. xx +. (-0.0000000250521083854417202238661793213537) in
	let res9 = res11 *. xx +. (0.0000027557319223985892510950593270457887) in
	let res7 = res9 *. xx +. (-0.0001984126984126984125263171154784913597) in
	let res5 = res7 *. xx +. (0.0083333333333333332176851016015461937059) in
	let res3 = res5 *. xx +. (-0.1666666666666666574148081281236954964697) in
	let res1 = res3 *. xx +. (1.0000000000000000000000000000000000000000) in
	res1 *. x *. s

in

let rec cos2 x s =
	let xx = x *. x in
	let res20 = (0.0000000000000000004110317623312165325548) in
	let res18 = res20 *. xx +. (-0.0000000000000001561920696858622773633873) in
	let res16 = res18 *. xx +. (0.0000000000000477947733238738588453487681) in
	let res14 = res16 *. xx +. (-0.0000000000114707455977297261228837043430) in
	let res12 = res14 *. xx +. (0.0000000020876756987868100186555149434461) in
	let res10 = res12 *. xx +. (-0.0000002755731922398589356974177733833331) in
	let res8 = res10 *. xx +. (0.0000248015873015873015657896394348114200) in
	let res6 = res8 *. xx +. (-0.0013888888888888889418943284326246612181) in
	let res4 = res6 *. xx +. (0.0416666666666666643537020320309238741174) in
	let res2 = res4 *. xx +. (-0.5000000000000000000000000000000000000000) in
	let res0 = res2 *. xx +. (1.0000000000000000000000000000000000000000) in
	res0 *. s

in

let rec sin3 x s =
	(* sin x * s *)
	(* 0 <= x <= pi *)
	let pi = 3.14159265358979323846264 in
	let pih = 1.57079632679 in
	if x > pih then sin3 (pi -. x) s else
	(* 0 <= x <= pi / 2 *)
	let piq = 0.78539816339 in
	if x > piq then cos2 (pih -. x) s else
	sin2 x s
in

let rec sinlib x =
	let pi = 3.14159265358979323846264 in
	let pi2 = 6.28318530718 in
	let i = x /. pi2 in
	let fi = floor i in
	if fi < (-2.0) then sinlib (x -. (fi *. pi2)) else
	if fi > 2.0 then sinlib (x -. fi *. pi2) else
	if x < (-. pi) then sinlib (x +. pi2) else
	if x >= pi then sinlib (x -. pi2) else
	if x < 0.0 then sin3 (-. x) (-1.0) else
	sin3 x 1.0

in

let rec cos3 x s =
	(* 0 <= x <= pi / 2 *)
	let pih = 1.57079632679 in
	let piq = 0.78539816339 in
	if x > piq then sin2 (pih - x) s else
	cos2 x s
in

let rec coslib x =
	if x < 0.0 then coslib (-.x) else
	let pi = 3.14159265358979323846264 in
	let pi2 = 6.28318530718 in
	let i = x /. pi2 in
	let fi = floor i in
	if fi > 2.0 then coslib (x -. fi *. pi2) else
	if x > pi then coslib (x -. pi2) else
	(* 0 <= x <= pi *)
	let pih = 1.57079632679 in
	if x > pih then cos3 (pi -. x) (-1.0) else
	cos3 x 1.0
in

let rec atan4 le ri n x s f =
	if n = 30 then
		let pih = 1.57079632679 in
		let res = (if f = 0 then x else (pih -. x)) in
		res *. s
	else
	let mid = (le +. ri) /. 2.0 in
	let c = (
		let xx = mid *. mid in
		let res20 = (0.0000000000000000004110317623312165325548) in
		let res18 = res20 *. xx +. (-0.0000000000000001561920696858622773633873) in
		let res16 = res18 *. xx +. (0.0000000000000477947733238738588453487681) in
		let res14 = res16 *. xx +. (-0.0000000000114707455977297261228837043430) in
		let res12 = res14 *. xx +. (0.0000000020876756987868100186555149434461) in
		let res10 = res12 *. xx +. (-0.0000002755731922398589356974177733833331) in
		let res8 = res10 *. xx +. (0.0000248015873015873015657896394348114200) in
		let res6 = res8 *. xx +. (-0.0013888888888888889418943284326246612181) in
		let res4 = res6 *. xx +. (0.0416666666666666643537020320309238741174) in
		let res2 = res4 *. xx +. (-0.5000000000000000000000000000000000000000) in
		let res0 = res2 *. xx +. (1.0000000000000000000000000000000000000000) in
		res0
	) in
	let s = (
		let xx = mid *. mid in
		let res19 = (-0.0000000000000000082206352466243310362810) in
		let res17 = res19 *. xx +. (0.0000000000000028114572543455209925409709) in
		let res15 = res17 *. xx +. (-0.0000000000007647163731819817415255802895) in
		let res13 = res15 *. xx +. (0.0000000001605904383682161592580233252316) in
		let res11 = res13 *. xx +. (-0.0000000250521083854417202238661793213537) in
		let res9 = res11 *. xx +. (0.0000027557319223985892510950593270457887) in
		let res7 = res9 *. xx +. (-0.0001984126984126984125263171154784913597) in
		let res5 = res7 *. xx +. (0.0083333333333333332176851016015461937059) in
		let res3 = res5 *. xx +. (-0.1666666666666666574148081281236954964697) in
		let res1 = res3 *. xx +. (1.0000000000000000000000000000000000000000) in
		res1 *. mid
	) in
	let t = s /. c in
	if t > x then (* le mid *) atan4 le mid (n + 1) x s f else
	atan4 mid ri (n + 1) x s f
in

let rec atan3 x s f =
	let le = 0.0 in
	let ri = 0.78539816339 in
	atan4 le ri 0 x s f
in

let rec atan2 x s =
	if x > 1.0 then atan3 (1.0 / x) s 1 else
	if x = 1.0 then 0.78539816339 else
	atan3 x s 0
in

let rec atanlib x = if x < 0.0 then atan2 x (-1.0) else atan2 x (1.0)
in

let x = (int_of_float 3.0) + 1 in
let y = (floor_retint 3.0) + 1 in
let z = (floor 3.0) +. 1.0 in

()
