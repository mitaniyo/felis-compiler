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

let rec floor_sub x l r = (* maximum a such that a <= x *)
	if r - l = 1 then (float_of_int l)
	else let m = (l + r) / 2 in
	if fless x (float_of_int m) then floor_sub x l m
	else floor_sub x m r
in
let rec floor x =
	let a = 8388608 in
	let b = 8388608.0 in
	if x < (0.0 -. b) then x
	else if x > b then x
	else floor_sub x (-a) a
in

(*let pi = 3.14159265368979323846264
in
let pi2 = pi *. 2.0
in*)
(*
let rec normalize x pi=
	let pi2 = pi *. 2.0 in
	if fless x (0.0 -. pi) then normalize (x +. pi2) pi
	else if fless x pi then x
	else normalize (x -. pi2) pi
in*)

let rec normalize x pi pi2 =
	if x < (-.pi) then
		let i = x /. pi2 in
		let i2 = (int_of_float i) in
		if i2 < (-3) then
			let nx = x -. pi2 *. (float_of_int i2) in normalize nx pi pi2
		else
			normalize (x +. pi2) pi pi2
	else if x < pi then
		x
	else
		let i =(x /. pi2) in
		let i2 = (int_of_float i) in
		if i2 > 3 then
			let nx = (x -. pi2 *. (float_of_int i2)) in normalize nx pi pi2
		else
			normalize (x -. pi2) pi pi2
in
(*
taylor
*)

let rec sin2 x =
	let pi = 3.14159265358979323846264 in
	let tmp1 = 1.0 in
	let tmp3 = -.(tmp1 /. 3.0 /. 2.0) in
	let tmp5 = -.(tmp3 /. 5.0 /. 4.0) in
	let tmp7 = -.(tmp5 /. 7.0 /. 6.0) in
	let tmp9 = -.(tmp7 /. 9.0 /. 8.0) in
	let tmp11 = -.(tmp9 /. 11.0 /. 10.0) in
	let tmp13 = -.(tmp11 /. 13.0 /. 12.0) in
	let tmp15 = -.(tmp13 /. 15.0 /. 14.0) in
	let tmp17 = -.(tmp15 /. 17.0 /. 16.0) in
	let tmp19 = -.(tmp17 /. 19.0 /. 18.0) in
	let res21 = 0.0 in
	let res19 = res21 *. x *. x +. tmp19 in
	let res17 = res19 *. x *. x +. tmp17 in
	let res15 = res17 *. x *. x +. tmp15 in
	let res13 = res15 *. x *. x +. tmp13 in
	let res11 = res13 *. x *. x +. tmp11 in
	let res9 = res11 *. x *. x +. tmp9 in
	let res7 = res9 *. x *. x +. tmp7 in
	let res5 = res7 *. x *. x +. tmp5 in
	let res3 = res5 *. x *. x +. tmp3 in
	let res1 = res3 *. x *. x +. tmp1 in
	res1 *. x

in


let rec cos x2 =
	let pi = 3.14159265358979323846264 in
	let y = normalize x2 pi (pi *. 2.0) in
	let y2 = if y < 0.0 then (-.y) else y in
	let s = if y2 > (pi /. 2.0) then -1.0 else 1.0 in
	let x = if y2 > (pi /. 2.0) then pi -. y2 else if y2 < (-.(pi /. 2.0)) then (-.pi -. y2) else y2 in
	if x > (pi /. 4.0) then (sin2 (pi /. 2.0 -. x)) *. s else
	let tmp0 = 1.0 in
	let tmp2 = -. (tmp0 /. 2.0 /. 1.0) in
	let tmp4 = -. (tmp2 /. 4.0 /. 3.0) in
	let tmp6 = -. (tmp4 /. 6.0 /. 5.0) in
	let tmp8 = -. (tmp6 /. 8.0 /. 7.0) in
	let tmp10 = -. (tmp8 /. 10.0 /. 9.0) in
	let tmp12 = -. (tmp10 /. 12.0 /. 11.0) in
	let tmp14 = -. (tmp12 /. 14.0 /. 13.0) in
	let tmp16 = -. (tmp14 /. 16.0 /. 15.0) in
	let tmp18 = -. (tmp16 /. 18.0 /. 17.0) in
	let res20 = 0.0 in
	let res18 = res20 *. x *. x +. tmp18 in
	let res16 = res18 *. x *. x +. tmp16 in
	let res14 = res16 *. x *. x +. tmp14 in
	let res12 = res14 *. x *. x +. tmp12 in
	let res10 = res12 *. x *. x +. tmp10 in
	let res8 = res10 *. x *. x +. tmp8 in
	let res6 = res8 *. x *. x +. tmp6 in
	let res4 = res6 *. x *. x +. tmp4 in
	let res2 = res4 *. x *. x +. tmp2 in
	let res0 = res2 *. x *. x +. tmp0 in
	res0 *. s
in

let rec sin x2 =
	let pi = 3.14159265358979323846264 in
	let y2 = normalize x2 pi (pi *. 2.0) in
	let z = if y2 > (pi /. 2.0) then pi -. y2 else if y2 < (-.(pi /. 2.0)) then (-.pi -. y2) else y2 in
	let s = if z < 0.0 then -1.0 else 1.0 in
	let x = if z < 0.0 then (-.z) else z in
	if (x > (pi /. 4.0)) then (cos (pi /. 2.0 -. x)) *. s else
	let tmp1 = 1.0 in
	let tmp3 = -.(tmp1 /. 3.0 /. 2.0) in
	let tmp5 = -.(tmp3 /. 5.0 /. 4.0) in
	let tmp7 = -.(tmp5 /. 7.0 /. 6.0) in
	let tmp9 = -.(tmp7 /. 9.0 /. 8.0) in
	let tmp11 = -.(tmp9 /. 11.0 /. 10.0) in
	let tmp13 = -.(tmp11 /. 13.0 /. 12.0) in
	let tmp15 = -.(tmp13 /. 15.0 /. 14.0) in
	let tmp17 = -.(tmp15 /. 17.0 /. 16.0) in
	let tmp19 = -.(tmp17 /. 19.0 /. 18.0) in
	let res21 = 0.0 in
	let res19 = res21 *. x *. x +. tmp19 in
	let res17 = res19 *. x *. x +. tmp17 in
	let res15 = res17 *. x *. x +. tmp15 in
	let res13 = res15 *. x *. x +. tmp13 in
	let res11 = res13 *. x *. x +. tmp11 in
	let res9 = res11 *. x *. x +. tmp9 in
	let res7 = res9 *. x *. x +. tmp7 in
	let res5 = res7 *. x *. x +. tmp5 in
	let res3 = res5 *. x *. x +. tmp3 in
	let res1 = res3 *. x *. x +. tmp1 in
	res1 *. x *. s
in

let rec atan_sub x n l r =
	if n = 100 then l else
	let m = (l +. r) /. 2.0 in
	let a = ((sin m) /. (cos m)) in
	if fless a x then atan_sub x (n + 1) m r
	else atan_sub x (n + 1) l m
in
let rec atan x = let pi = 3.14159265358979323846264 in atan_sub x 0 (fneg (pi /. 2.0)) (pi /. 2.0)
in

let x = if fequal 1.0 2.0 then 1.0 else 2.0 in (* for typing *)
(*let y = (float_of_int 3) +. 1.0 in
let z = (int_of_float 3.0) + 1 in
print_char 10;
let pi = 3.141592653689793238 in
let a = normalize 100.0 pi (pi *. 2.0) in
let w = print_char 10; cos 10.0 in
*)
()
