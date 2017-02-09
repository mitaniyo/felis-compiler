# min_caml_floor: # float -> float
# int_of_float.163:
min_caml_int_of_float:
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	add.s	f0 f1 f0
	cvt.w.s f0 f0
	cvt.s.w f0 f0
	j	min_caml_floor_retint
min_caml_floor_retint: # float -> int
	cvt.w.s f0 f0
	mfc1 f0 r1
	jr r31
min_caml_float_of_int: #int -> float
	mtc1 r1 f1
	cvt.s.w f1 f0
	jr r31
