min_caml_int_of_float: # float -> int
	cvt.w.s f0 f1
	mfc1 f1 r1
	jr r31
min_caml_float_of_int: #int -> float
	mtc1 r1 f1
	cvt.s.w f1 f0
	jr r31
min_caml_fabs:
	abs.s f0 f0
	jr r31
min_caml_fneg:
	neg.s f0 f0
	jr r31
