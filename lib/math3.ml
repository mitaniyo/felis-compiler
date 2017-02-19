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

let rec normalize_sub x =
	let p30 = (6746518852.2610092163085937500000000000000000000000) in
	let i30 = floor(x /. p30) in
	let x30 = x -. p30 *. i30 in
	let p29 = (3373259426.1305046081542968750000000000000000000000) in
	let x29 = (if x30 >= p29 then x30 -. p29 else x30) in
	let p28 = (1686629713.0652523040771484375000000000000000000000) in
	let x28 = (if x29 >= p28 then x29 -. p28 else x29) in
	let p27 = (843314856.5326261520385742187500000000000000000000) in
	let x27 = (if x28 >= p27 then x28 -. p27 else x28) in
	let p26 = (421657428.2663130760192871093750000000000000000000) in
	let x26 = (if x27 >= p26 then x27 -. p26 else x27) in
	let p25 = (210828714.1331565380096435546875000000000000000000) in
	let x25 = (if x26 >= p25 then x26 -. p25 else x26) in
	let p24 = (105414357.0665782690048217773437500000000000000000) in
	let x24 = (if x25 >= p24 then x25 -. p24 else x25) in
	let p23 = (52707178.5332891345024108886718750000000000000000) in
	let x23 = (if x24 >= p23 then x24 -. p23 else x24) in
	let p22 = (26353589.2666445672512054443359375000000000000000) in
	let x22 = (if x23 >= p22 then x23 -. p22 else x23) in
	let p21 = (13176794.6333222836256027221679687500000000000000) in
	let x21 = (if x22 >= p21 then x22 -. p21 else x22) in
	let p20 = (6588397.3166611418128013610839843750000000000000) in
	let x20 = (if x21 >= p20 then x21 -. p20 else x21) in
	let p19 = (3294198.6583305709064006805419921875000000000000) in
	let x19 = (if x20 >= p19 then x20 -. p19 else x20) in
	let p18 = (1647099.3291652854532003402709960937500000000000) in
	let x18 = (if x19 >= p18 then x19 -. p18 else x19) in
	let p17 = (823549.6645826427266001701354980468750000000000) in
	let x17 = (if x18 >= p17 then x18 -. p17 else x18) in
	let p16 = (411774.8322913213633000850677490234375000000000) in
	let x16 = (if x17 >= p16 then x17 -. p16 else x17) in
	let p15 = (205887.4161456606816500425338745117187500000000) in
	let x15 = (if x16 >= p15 then x16 -. p15 else x16) in
	let p14 = (102943.7080728303408250212669372558593750000000) in
	let x14 = (if x15 >= p14 then x15 -. p14 else x15) in
	let p13 = (51471.8540364151704125106334686279296875000000) in
	let x13 = (if x14 >= p13 then x14 -. p13 else x14) in
	let p12 = (25735.9270182075852062553167343139648437500000) in
	let x12 = (if x13 >= p12 then x13 -. p12 else x13) in
	let p11 = (12867.9635091037926031276583671569824218750000) in
	let x11 = (if x12 >= p11 then x12 -. p11 else x12) in
	let p10 = (6433.9817545518963015638291835784912109375000) in
	let x10 = (if x11 >= p10 then x11 -. p10 else x11) in
	let p9 = (3216.9908772759481507819145917892456054687500) in
	let x9 = (if x10 >= p9 then x10 -. p9 else x10) in
	let p8 = (1608.4954386379740753909572958946228027343750) in
	let x8 = (if x9 >= p8 then x9 -. p8 else x9) in
	let p7 = (804.2477193189870376954786479473114013671875) in
	let x7 = (if x8 >= p7 then x8 -. p7 else x8) in
	let p6 = (402.1238596594935188477393239736557006835938) in
	let x6 = (if x7 >= p6 then x7 -. p6 else x7) in
	let p5 = (201.0619298297467594238696619868278503417969) in
	let x5 = (if x6 >= p5 then x6 -. p5 else x6) in
	let p4 = (100.5309649148733797119348309934139251708984) in
	let x4 = (if x5 >= p4 then x5 -. p4 else x5) in
	let p3 = (50.2654824574366898559674154967069625854492) in
	let x3 = (if x4 >= p3 then x4 -. p3 else x4) in
	let p2 = (25.1327412287183449279837077483534812927246) in
	let x2 = (if x3 >= p2 then x3 -. p2 else x3) in
	let p1 = (12.5663706143591724639918538741767406463623) in
	let x1 = (if x2 >= p1 then x2 -. p1 else x2) in
	let p0 = (6.2831853071795862319959269370883703231812) in
	let x0 = (if x1 >= p0 then x1 -. p0 else x1) in
	x0
in

let rec normalize_sub2 x pi pi2 = 
	if x < -.pi then normalize_sub2 (x +. pi2) pi pi2 else
	if x < pi then x else
	normalize_sub2 (x -. pi2) pi pi2
in

let rec normalize x =
	if x = 0.0 then x else
	let s = if x < 0.0 then -1.0 else 1.0 in
	let xx = if x < 0.0 then -.x else x in
	let xxn = normalize_sub xx in
	let pi = 3.14159265358979 in
	let pi2 = 6.2831853071795862319959269370883703231812 in
	(normalize_sub2 (xxn *. s) pi pi2)
in
(*
taylor
*)

let rec sin2 x =
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
	res1 *. x
in


let rec cos x2 =
	let pi = 3.14159265358979323846264 in
	let y = normalize x2 in
	let y2 = if y < 0.0 then (-.y) else y in
	let s = if y2 > (pi /. 2.0) then -1.0 else 1.0 in
	let x = if y2 > (pi /. 2.0) then pi -. y2 else if y2 < (-.(pi /. 2.0)) then (-.pi -. y2) else y2 in
	if x > (pi /. 4.0) then (sin2 (pi /. 2.0 -. x)) *. s else
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

let rec sin x2 =
	let pi = 3.14159265358979323846264 in
	let y2 = normalize x2 in
	let z = if y2 > (pi /. 2.0) then pi -. y2 else if y2 < (-.(pi /. 2.0)) then (-.pi -. y2) else y2 in
	let s = if z < 0.0 then -1.0 else 1.0 in
	let x = if z < 0.0 then (-.z) else z in
	if (x > (pi /. 4.0)) then (cos (pi /. 2.0 -. x)) *. s else
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

let rec atan_sub x n l r =
	if n = 30 then l else
	let m = (l +. r) /. 2.0 in
	let a = ((sin m) /. (cos m)) in
	if fless a x then atan_sub x (n + 1) m r
	else atan_sub x (n + 1) l m
in
let rec atan x = let pi = 3.14159265358979323846264 in atan_sub x 0 (fneg (pi /. 2.0)) (pi /. 2.0)
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
