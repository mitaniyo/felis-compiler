let rec floor_sub2 x l r lf rf =
	if r - l = 1 then lf else
	let m = (l + r) / 2 in
	let mf = (lf +. rf) /. 2.0 in
	if x < mf then floor_sub2 x l m lf mf else
	floor_sub2 x m r mf rf
in
let rec floor x =
	let a = 8388608 in
	let b = 8388608.0 in
	if x < (0.0 -. b) then x
	else if x > b then x
	else floor_sub2 x (-a) a (-.b) b
in

let rec int_of_float x =
	let f = floor (x +. 0.5) in
	floor_retint f

in

let rec normalize x pi pi2 =
	if x < (-.pi) then
		let i = x /. pi2 in
		let i2 = (int_of_float i) in
		if i2 < (-10) then
			let nx = x -. pi2 *. (float_of_int i2) in normalize nx pi pi2
		else
			normalize (x +. pi2) pi pi2
	else if x < pi then
		x
	else
		let i =(x /. pi2) in
		let i2 = (int_of_float i) in
		if i2 > 10 then
			let nx = (x -. pi2 *. (float_of_int i2)) in normalize nx pi pi2
		else
			normalize (x -. pi2) pi pi2
in
(*
taylor
*)

let rec sin2 x =
	(*let xx = x *. x in
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
	let res = res1 *. x in*)
	(*res1 *. x*)

	let xx = x *. x in
	let x4 = xx *. xx in
	let nres35 = (-0.0000000000000000000000000000000000000001) in
	let nres31 = nres35 *. x4 +. (-0.0000000000000000000000000000000001216125) in
	let nres27 = nres31 *. x4 +. (-0.0000000000000000000000000000918368986380) in
	let nres23 = nres27 *. x4 +. (-0.0000000000000000000000386817017063068413) in
	let nres19 = nres23 *. x4 +. (-0.0000000000000000082206352466243310362810) in
	let nres15 = nres19 *. x4 +. (-0.0000000000007647163731819817415255802895) in
	let nres11 = nres15 *. x4 +. (-0.0000000250521083854417202238661793213537) in
	let nres7 = nres11 *. x4 +. (-0.0001984126984126984125263171154784913597) in
	let nres3 = nres7 *. x4 +. (-0.1666666666666666574148081281236954964697) in
	let pres33 = (0.0000000000000000000000000000000000001152) in
	let pres29 = pres33 *. x4 +. (0.0000000000000000000000000000001130996289) in
	let pres25 = pres29 *. x4 +. (0.0000000000000000000000000644695028438447) in
	let pres21 = pres25 *. x4 +. (0.0000000000000000000195729410633912625952) in
	let pres17 = pres21 *. x4 +. (0.0000000000000028114572543455209925409709) in
	let pres13 = pres17 *. x4 +. (0.0000000001605904383682161592580233252316) in
	let pres9 = pres13 *. x4 +. (0.0000027557319223985892510950593270457887) in
	let pres5 = pres9 *. x4 +. (0.0083333333333333332176851016015461937059) in
	let pres1 = pres5 *. x4 +. (1.0000000000000000000000000000000000000000) in
	let res = x *. (pres1 +. nres3 *. xx) in

	if res > 1.0 then 1.0 else
	if res >= -1.0 then res else
	-1.0
in


let rec cos x2 =
	let pi = 3.14159265358979323846264 in
	let y = normalize x2 pi (pi *. 2.0) in
	let y2 = if y < 0.0 then (-.y) else y in
	let s = if y2 > (pi /. 2.0) then -1.0 else 1.0 in
	let x = if y2 > (pi /. 2.0) then pi -. y2 else if y2 < (-.(pi /. 2.0)) then (-.pi -. y2) else y2 in
	if x > (pi /. 4.0) then (sin2 (pi /. 2.0 -. x)) *. s else
	(*let xx = x *. x in
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
	let res = res0 *. s in*)

	let xx = x *. x in
	let x4 = xx *. xx in
	let pres36 = (-0.0000000000000000000000000000000000000000) in
	let pres32 = pres36 *. x4 +. (0.0000000000000000000000000000000000038004) in
	let pres28 = pres32 *. x4 +. (0.0000000000000000000000000000032798892371) in
	let pres24 = pres28 *. x4 +. (0.0000000000000000000000016117375710961184) in
	let pres20 = pres24 *. x4 +. (0.0000000000000000004110317623312165325548) in
	let pres16 = pres20 *. x4 +. (0.0000000000000477947733238738588453487681) in
	let pres12 = pres16 *. x4 +. (0.0000000020876756987868100186555149434461) in
	let pres8 = pres12 *. x4 +. (0.0000248015873015873015657896394348114200) in
	let pres4 = pres8 *. x4 +. (0.0416666666666666643537020320309238741174) in
	let pres0 = pres4 *. x4 +. (1.0000000000000000000000000000000000000000) in
	let nres34 = (-0.0000000000000000000000000000000000000034) in
	let nres30 = nres34 *. x4 +. (-0.0000000000000000000000000000000037699876) in
	let nres26 = nres30 *. x4 +. (-0.0000000000000000000000000024795962632248) in
	let nres22 = nres26 *. x4 +. (-0.0000000000000000000008896791392450574078) in
	let nres18 = nres22 *. x4 +. (-0.0000000000000001561920696858622773633873) in
	let nres14 = nres18 *. x4 +. (-0.0000000000114707455977297261228837043430) in
	let nres10 = nres14 *. x4 +. (-0.0000002755731922398589356974177733833331) in
	let nres6 = nres10 *. x4 +. (-0.0013888888888888889418943284326246612181) in
	let nres2 = nres6 *. x4 +. (-0.5000000000000000000000000000000000000000) in
	let res = (pres0 +. nres2 *. xx) *. s in

	if res > 1.0 then 1.0 else
	if res >= -1.0 then res else
	-1.0
	(*res0 *. s*)
in

let rec sin x2 =
	let pi = 3.14159265358979323846264 in
	let y2 = normalize x2 pi (pi *. 2.0) in
	let z = if y2 > (pi /. 2.0) then pi -. y2 else if y2 < (-.(pi /. 2.0)) then (-.pi -. y2) else y2 in
	let s = if z < 0.0 then -1.0 else 1.0 in
	let x = if z < 0.0 then (-.z) else z in
	if (x > (pi /. 4.0)) then (cos (pi /. 2.0 -. x)) *. s else
	(*let xx = x *. x in
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
	let res = res1 *. x *. s in*)

	let xx = x *. x in
	let x4 = xx *. xx in
	let nres35 = (-0.0000000000000000000000000000000000000001) in
	let nres31 = nres35 *. x4 +. (-0.0000000000000000000000000000000001216125) in
	let nres27 = nres31 *. x4 +. (-0.0000000000000000000000000000918368986380) in
	let nres23 = nres27 *. x4 +. (-0.0000000000000000000000386817017063068413) in
	let nres19 = nres23 *. x4 +. (-0.0000000000000000082206352466243310362810) in
	let nres15 = nres19 *. x4 +. (-0.0000000000007647163731819817415255802895) in
	let nres11 = nres15 *. x4 +. (-0.0000000250521083854417202238661793213537) in
	let nres7 = nres11 *. x4 +. (-0.0001984126984126984125263171154784913597) in
	let nres3 = nres7 *. x4 +. (-0.1666666666666666574148081281236954964697) in
	let pres33 = (0.0000000000000000000000000000000000001152) in
	let pres29 = pres33 *. x4 +. (0.0000000000000000000000000000001130996289) in
	let pres25 = pres29 *. x4 +. (0.0000000000000000000000000644695028438447) in
	let pres21 = pres25 *. x4 +. (0.0000000000000000000195729410633912625952) in
	let pres17 = pres21 *. x4 +. (0.0000000000000028114572543455209925409709) in
	let pres13 = pres17 *. x4 +. (0.0000000001605904383682161592580233252316) in
	let pres9 = pres13 *. x4 +. (0.0000027557319223985892510950593270457887) in
	let pres5 = pres9 *. x4 +. (0.0083333333333333332176851016015461937059) in
	let pres1 = pres5 *. x4 +. (1.0000000000000000000000000000000000000000) in
	let res = x *. (pres1 +. nres3 *. xx) *. s in


	if res > 1.0 then 1.0 else
	if res >= -1.0 then res else
	-1.0
	(*res1 *. x *. s*)
in

let rec atan_sub x n l r =
	if n = 30 then r else
	let m = (l +. r) /. 2.0 in
	let a = ((sin m) /. (cos m)) in
	if fless a x then atan_sub x (n + 1) m r
	else atan_sub x (n + 1) l m
in

let rec atan x =
	if x < 0.0 then (-. (atan (-. x))) else
	if x = 0.0 then x else
	let pi = 3.14159265358979323846264 in atan_sub x 0 0.0 (pi /. 2.0)
in

let x = (int_of_float 3.0) + 1 in
let y = (floor_retint 3.0) + 1 in
let z = (floor 3.0) +. 1.0 in


(*let x = if fequal 1.0 2.0 then 1.0 else 2.0 in *)(* for typing *)
(*let y = (float_of_int 3) +. 1.0 in
let z = (int_of_float 3.0) + 1 in
print_char 10;
let pi = 3.141592653689793238 in
let a = normalize 100.0 pi (pi *. 2.0) in
let w = print_char 10; cos 10.0 in
*)
()
