min_caml_floor_retint: # float -> int
	cvt.w.s f0 f0
	mfc1 f0 r1
	jr r31
min_caml_float_of_int: #int -> float
	mtc1 r1 f1
	cvt.s.w f1 f0
	jr r31
min_caml_sqrt:
	sqrt.s f0 f0
	jr r31

