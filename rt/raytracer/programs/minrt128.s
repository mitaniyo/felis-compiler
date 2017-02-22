read_screen_settings.2872:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_read_float
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r1 4
	multi r1 r1 4
	lw	r30 r2 0
	swoc1	f0 r2 r1
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 1
	sw	r1 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_read_float
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 12
	multi r1 r1 4
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 2
	sw	r1 r30 16
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_read_float
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r1 20
	multi r1 r1 4
	lw	r30 r2 16
	swoc1	f0 r2 r1
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_read_float
	addi	r30 r30 -28
	lw	r30 r31 24
	lui	r24 15502
	ori	r24 r24 64053
	mtc1	r24 f1
	mul.s	f0 f1 f0
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_cos
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -36
	lw	r30 r31 32
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_read_float
	addi	r30 r30 -40
	lw	r30 r31 36
	lui	r24 15502
	ori	r24 r24 64053
	mtc1	r24 f1
	mul.s	f0 f1 f0
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_cos
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	lwc1	 r30 f1 28
	mul.s	f1 f0 f2
	lui	r24 17224
	ori	r24 r24 0
	mtc1	r24 f3
	mul.s	f2 f3 f2
	multi r2 r2 4
	swoc1	f2 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	lui	r24 49992
	ori	r24 r24 0
	mtc1	r24 f2
	lwc1	 r30 f3 32
	mul.s	f3 f2 f2
	multi r2 r2 4
	swoc1	f2 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 2
	lwc1	 r30 f2 40
	mul.s	f1 f2 f4
	lui	r24 17224
	ori	r24 r24 0
	mtc1	r24 f5
	mul.s	f4 f5 f4
	multi r2 r2 4
	swoc1	f4 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	multi r2 r2 4
	swoc1	f2 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	mtc1	r0 f4
	multi r2 r2 4
	swoc1	f4 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 2
	neg.s	f0 f4
	multi r2 r2 4
	swoc1	f4 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	neg.s	f3 f4
	mul.s	f4 f0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	neg.s	f1 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 2
	neg.s	f3 f0
	mul.s	f0 f2 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f0
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f0
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f0
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	jr	r31
rotate_quadratic_matrix.2876:
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_cos
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r1 0
	multi r1 r1 4
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	lwc1	 r30 f2 16
	mul.s	f2 f1 f3
	lwc1	 r30 f4 20
	lwc1	 r30 f5 12
	mul.s	f5 f4 f6
	mul.s	f6 f1 f6
	lwc1	 r30 f7 8
	mul.s	f7 f0 f8
	sub.s	f6 f8 f6
	mul.s	f7 f4 f8
	mul.s	f8 f1 f8
	mul.s	f5 f0 f9
	add.s	f8 f9 f8
	mul.s	f2 f0 f9
	mul.s	f5 f4 f10
	mul.s	f10 f0 f10
	mul.s	f7 f1 f11
	add.s	f10 f11 f10
	mul.s	f7 f4 f11
	mul.s	f11 f0 f0
	mul.s	f5 f1 f1
	sub.s	f0 f1 f0
	neg.s	f4 f1
	mul.s	f5 f2 f4
	mul.s	f7 f2 f2
	addi	r0 r1 0
	multi r1 r1 4
	lw	r30 r2 0
	lwoc1	r2 r1 f5
	addi	r0 r1 1
	multi r1 r1 4
	lwoc1	r2 r1 f7
	addi	r0 r1 2
	multi r1 r1 4
	lwoc1	r2 r1 f11
	addi	r0 r1 0
	mul.s	f3 f3 f12
	mul.s	f5 f12 f12
	mul.s	f9 f9 f13
	mul.s	f7 f13 f13
	add.s	f12 f13 f12
	mul.s	f1 f1 f13
	mul.s	f11 f13 f13
	add.s	f12 f13 f12
	multi r1 r1 4
	swoc1	f12 r2 r1
	addi	r0 r1 1
	mul.s	f6 f6 f12
	mul.s	f5 f12 f12
	mul.s	f10 f10 f13
	mul.s	f7 f13 f13
	add.s	f12 f13 f12
	mul.s	f4 f4 f13
	mul.s	f11 f13 f13
	add.s	f12 f13 f12
	multi r1 r1 4
	swoc1	f12 r2 r1
	addi	r0 r1 2
	mul.s	f8 f8 f12
	mul.s	f5 f12 f12
	mul.s	f0 f0 f13
	mul.s	f7 f13 f13
	add.s	f12 f13 f12
	mul.s	f2 f2 f13
	mul.s	f11 f13 f13
	add.s	f12 f13 f12
	multi r1 r1 4
	swoc1	f12 r2 r1
	addi	r0 r1 0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f12
	mul.s	f5 f6 f13
	mul.s	f13 f8 f13
	mul.s	f7 f10 f14
	mul.s	f14 f0 f14
	add.s	f13 f14 f13
	mul.s	f11 f4 f14
	mul.s	f14 f2 f14
	add.s	f13 f14 f13
	mul.s	f12 f13 f12
	multi r1 r1 4
	lw	r30 r2 4
	swoc1	f12 r2 r1
	addi	r0 r1 1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f12
	mul.s	f5 f3 f13
	mul.s	f13 f8 f8
	mul.s	f7 f9 f13
	mul.s	f13 f0 f0
	add.s	f8 f0 f0
	mul.s	f11 f1 f8
	mul.s	f8 f2 f2
	add.s	f0 f2 f0
	mul.s	f12 f0 f0
	multi r1 r1 4
	swoc1	f0 r2 r1
	addi	r0 r1 2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f0
	mul.s	f5 f3 f2
	mul.s	f2 f6 f2
	mul.s	f7 f9 f3
	mul.s	f3 f10 f3
	add.s	f2 f3 f2
	mul.s	f11 f1 f1
	mul.s	f1 f4 f1
	add.s	f2 f1 f1
	mul.s	f0 f1 f0
	multi r1 r1 4
	swoc1	f0 r2 r1
	jr	r31
read_nth_object.2879:
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_read_int
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28480
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_read_int
	addi	r30 r30 -12
	lw	r30 r31 8
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_read_int
	addi	r30 r30 -16
	lw	r30 r31 12
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_read_int
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sw	r1 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_read_float
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 24
	multi r1 r1 4
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_read_float
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r1 28
	multi r1 r1 4
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_read_float
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 32
	multi r1 r1 4
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 3
	mtc1	r0 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_create_float_array
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sw	r1 r30 36
	sw	r2 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_read_float
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r1 40
	multi r1 r1 4
	lw	r30 r2 36
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_read_float
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r1 44
	multi r1 r1 4
	lw	r30 r2 36
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_read_float
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r1 48
	multi r1 r1 4
	lw	r30 r2 36
	swoc1	f0 r2 r1
	mtc1	r0 f0
	swc1	f0 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_read_float
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 52
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28481
	addi	r0 r1 1
	j	bfle_nontail_cont.28482
bfle_nontail_else.28481:
	addi	r0 r1 0
bfle_nontail_cont.28482:
	addi	r0 r2 2
	mtc1	r0 f0
	sw	r1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 0
	sw	r1 r30 60
	sw	r2 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_read_float
	addi	r30 r30 -72
	lw	r30 r31 68
	lw	r30 r1 64
	multi r1 r1 4
	lw	r30 r2 60
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	jal	min_caml_read_float
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r1 68
	multi r1 r1 4
	lw	r30 r2 60
	swoc1	f0 r2 r1
	addi	r0 r1 3
	mtc1	r0 f0
	sw	r31 r30 72
	addi	r30 r30 76
	jal	min_caml_create_float_array
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r2 0
	sw	r1 r30 72
	sw	r2 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	jal	min_caml_read_float
	addi	r30 r30 -84
	lw	r30 r31 80
	lw	r30 r1 76
	multi r1 r1 4
	lw	r30 r2 72
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	jal	min_caml_read_float
	addi	r30 r30 -88
	lw	r30 r31 84
	lw	r30 r1 80
	multi r1 r1 4
	lw	r30 r2 72
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	jal	min_caml_read_float
	addi	r30 r30 -92
	lw	r30 r31 88
	lw	r30 r1 84
	multi r1 r1 4
	lw	r30 r2 72
	swoc1	f0 r2 r1
	addi	r0 r1 3
	mtc1	r0 f0
	sw	r31 r30 88
	addi	r30 r30 92
	jal	min_caml_create_float_array
	addi	r30 r30 -92
	lw	r30 r31 88
	addi	r0 r2 0
	lw	r30 r3 16
	sw	r1 r30 88
	sub	r3 r2 r25
	beq	r25 r0 beq_else.28483
	addi	r0 r2 0
	sw	r2 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	jal	min_caml_read_float
	addi	r30 r30 -100
	lw	r30 r31 96
	lui	r24 15502
	ori	r24 r24 64053
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lw	r30 r1 92
	multi r1 r1 4
	lw	r30 r2 88
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 96
	sw	r31 r30 100
	addi	r30 r30 104
	jal	min_caml_read_float
	addi	r30 r30 -104
	lw	r30 r31 100
	lui	r24 15502
	ori	r24 r24 64053
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lw	r30 r1 96
	multi r1 r1 4
	lw	r30 r2 88
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	jal	min_caml_read_float
	addi	r30 r30 -108
	lw	r30 r31 104
	lui	r24 15502
	ori	r24 r24 64053
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lw	r30 r1 100
	multi r1 r1 4
	lw	r30 r2 88
	swoc1	f0 r2 r1
	j	beq_cont.28484
beq_else.28483:
beq_cont.28484:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.28485
	lw	r30 r1 56
	j	beq_cont.28486
beq_else.28485:
	addi	r0 r1 1
beq_cont.28486:
	addi	r0 r3 4
	mtc1	r0 f0
	sw	r1 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -112
	lw	r30 r31 108
	mov	r2 r27
	addi	r27 r27 44
	sw	r1 r2 40
	lw	r30 r1 88
	sw	r1 r2 36
	lw	r30 r3 72
	sw	r3 r2 32
	lw	r30 r3 60
	sw	r3 r2 28
	lw	r30 r3 104
	sw	r3 r2 24
	lw	r30 r3 36
	sw	r3 r2 20
	lw	r30 r3 20
	sw	r3 r2 16
	lw	r30 r4 16
	sw	r4 r2 12
	lw	r30 r5 12
	sw	r5 r2 8
	lw	r30 r5 8
	sw	r5 r2 4
	lw	r30 r6 4
	sw	r6 r2 0
	addi	r30 r30 108
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -108
	lw	r30 r7 0
	multi r7 r7 4
	swo	r2 r6 r7
	addi	r0 r2 3
	sub	r5 r2 r25
	beq	r25 r0 beq_else.28487
	addi	r0 r2 2
	sub	r5 r2 r25
	beq	r25 r0 beq_else.28489
	j	beq_cont.28490
beq_else.28489:
	addi	r0 r2 0
	lw	r30 r5 56
	sub	r5 r2 r25
	beq	r25 r0 beq_else.28491
	addi	r0 r2 0
	j	beq_cont.28492
beq_else.28491:
	addi	r0 r2 1
beq_cont.28492:
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f1
	mul.s	f0 f1 f0
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r3 r5 f1
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sqrt.s	f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28493
	addi	r0 r5 0
	j	bfeq_nontail_cont.28494
bfeq_nontail_else.28493:
	addi	r0 r5 1
bfeq_nontail_cont.28494:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28495
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.28496
beq_else.28495:
	addi	r0 r5 0
	sub	r2 r5 r25
	beq	r25 r0 beq_else.28497
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
	j	beq_cont.28498
beq_else.28497:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
beq_cont.28498:
beq_cont.28496:
	addi	r0 r2 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f1
	mul.s	f1 f0 f1
	multi r2 r2 4
	swoc1	f1 r3 r2
	addi	r0 r2 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f1
	mul.s	f1 f0 f1
	multi r2 r2 4
	swoc1	f1 r3 r2
	addi	r0 r2 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r3 r5 f1
	mul.s	f1 f0 f0
	multi r2 r2 4
	swoc1	f0 r3 r2
beq_cont.28490:
	j	beq_cont.28488
beq_else.28487:
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r3 r2 f0
	addi	r0 r2 0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28499
	addi	r0 r5 0
	j	bfeq_nontail_cont.28500
bfeq_nontail_else.28499:
	addi	r0 r5 1
bfeq_nontail_cont.28500:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28501
	mtc1	r0 f0
	j	beq_cont.28502
beq_else.28501:
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28503
	addi	r0 r5 0
	j	bfeq_nontail_cont.28504
bfeq_nontail_else.28503:
	addi	r0 r5 1
bfeq_nontail_cont.28504:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28505
	mtc1	r0 f1
	j	beq_cont.28506
beq_else.28505:
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28507
	addi	r0 r5 1
	j	bfle_nontail_cont.28508
bfle_nontail_else.28507:
	addi	r0 r5 0
bfle_nontail_cont.28508:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28509
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28510
beq_else.28509:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
beq_cont.28510:
beq_cont.28506:
	mul.s	f0 f0 f0
	div.s	f1 f0 f0
beq_cont.28502:
	multi r2 r2 4
	swoc1	f0 r3 r2
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r3 r2 f0
	addi	r0 r2 1
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28511
	addi	r0 r5 0
	j	bfeq_nontail_cont.28512
bfeq_nontail_else.28511:
	addi	r0 r5 1
bfeq_nontail_cont.28512:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28513
	mtc1	r0 f0
	j	beq_cont.28514
beq_else.28513:
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28515
	addi	r0 r5 0
	j	bfeq_nontail_cont.28516
bfeq_nontail_else.28515:
	addi	r0 r5 1
bfeq_nontail_cont.28516:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28517
	mtc1	r0 f1
	j	beq_cont.28518
beq_else.28517:
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28519
	addi	r0 r5 1
	j	bfle_nontail_cont.28520
bfle_nontail_else.28519:
	addi	r0 r5 0
bfle_nontail_cont.28520:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28521
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28522
beq_else.28521:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
beq_cont.28522:
beq_cont.28518:
	mul.s	f0 f0 f0
	div.s	f1 f0 f0
beq_cont.28514:
	multi r2 r2 4
	swoc1	f0 r3 r2
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f0
	addi	r0 r2 2
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28523
	addi	r0 r5 0
	j	bfeq_nontail_cont.28524
bfeq_nontail_else.28523:
	addi	r0 r5 1
bfeq_nontail_cont.28524:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28525
	mtc1	r0 f0
	j	beq_cont.28526
beq_else.28525:
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28527
	addi	r0 r5 0
	j	bfeq_nontail_cont.28528
bfeq_nontail_else.28527:
	addi	r0 r5 1
bfeq_nontail_cont.28528:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28529
	mtc1	r0 f1
	j	beq_cont.28530
beq_else.28529:
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28531
	addi	r0 r5 1
	j	bfle_nontail_cont.28532
bfle_nontail_else.28531:
	addi	r0 r5 0
bfle_nontail_cont.28532:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28533
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28534
beq_else.28533:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
beq_cont.28534:
beq_cont.28530:
	mul.s	f0 f0 f0
	div.s	f1 f0 f0
beq_cont.28526:
	multi r2 r2 4
	swoc1	f0 r3 r2
beq_cont.28488:
	addi	r0 r2 0
	sub	r4 r2 r25
	beq	r25 r0 beq_else.28535
	sw	r31 r30 108
	addi	r30 r30 112
	mov	r2 r1
	mov	r1 r3
	jal	rotate_quadratic_matrix.2876
	addi	r30 r30 -112
	lw	r30 r31 108
	j	beq_cont.28536
beq_else.28535:
beq_cont.28536:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28480:
	addi	r0 r1 0
	jr	r31
read_object.2881:
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28537
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	read_nth_object.2879
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28538
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28539
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	read_nth_object.2879
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28540
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28541
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	read_nth_object.2879
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28542
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28543
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	read_nth_object.2879
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28544
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28545
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	read_nth_object.2879
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28546
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28547
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	read_nth_object.2879
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28548
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28549
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	read_nth_object.2879
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28550
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28551
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	read_nth_object.2879
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28552
	addi	r0 r1 1
	lw	r30 r2 28
	add	r2 r1 r1
	j	read_object.2881
beq_tail_else.28552:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 28
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28551:
	jr	r31
beq_tail_else.28550:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 24
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28549:
	jr	r31
beq_tail_else.28548:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 20
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28547:
	jr	r31
beq_tail_else.28546:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 16
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28545:
	jr	r31
beq_tail_else.28544:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 12
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28543:
	jr	r31
beq_tail_else.28542:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 8
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28541:
	jr	r31
beq_tail_else.28540:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 4
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28539:
	jr	r31
beq_tail_else.28538:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 0
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28537:
	jr	r31
read_net_item.2885:
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_read_int
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28569
	addi	r0 r2 1
	lw	r30 r3 0
	add	r3 r2 r2
	sw	r1 r30 4
	sw	r2 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_read_int
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28570
	addi	r0 r2 1
	lw	r30 r3 8
	add	r3 r2 r2
	sw	r1 r30 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_read_int
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28572
	addi	r0 r2 1
	lw	r30 r3 16
	add	r3 r2 r2
	sw	r1 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_read_int
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28574
	addi	r0 r2 1
	lw	r30 r3 24
	add	r3 r2 r2
	sw	r1 r30 28
	sw	r2 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_read_int
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28576
	addi	r0 r2 1
	lw	r30 r3 32
	add	r3 r2 r2
	sw	r1 r30 36
	sw	r2 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_read_int
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28578
	addi	r0 r2 1
	lw	r30 r3 40
	add	r3 r2 r2
	sw	r1 r30 44
	sw	r2 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_read_int
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28580
	addi	r0 r2 1
	lw	r30 r3 48
	add	r3 r2 r2
	sw	r1 r30 52
	sw	r2 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_read_int
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28582
	addi	r0 r2 1
	lw	r30 r3 56
	add	r3 r2 r2
	sw	r1 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -68
	lw	r30 r31 64
	lw	r30 r2 56
	multi r2 r2 4
	lw	r30 r3 60
	swo	r3 r1 r2
	j	beq_cont.28583
beq_else.28582:
	addi	r0 r1 1
	lw	r30 r2 56
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28583:
	lw	r30 r2 48
	multi r2 r2 4
	lw	r30 r3 52
	swo	r3 r1 r2
	j	beq_cont.28581
beq_else.28580:
	addi	r0 r1 1
	lw	r30 r2 48
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28581:
	lw	r30 r2 40
	multi r2 r2 4
	lw	r30 r3 44
	swo	r3 r1 r2
	j	beq_cont.28579
beq_else.28578:
	addi	r0 r1 1
	lw	r30 r2 40
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28579:
	lw	r30 r2 32
	multi r2 r2 4
	lw	r30 r3 36
	swo	r3 r1 r2
	j	beq_cont.28577
beq_else.28576:
	addi	r0 r1 1
	lw	r30 r2 32
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28577:
	lw	r30 r2 24
	multi r2 r2 4
	lw	r30 r3 28
	swo	r3 r1 r2
	j	beq_cont.28575
beq_else.28574:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28575:
	lw	r30 r2 16
	multi r2 r2 4
	lw	r30 r3 20
	swo	r3 r1 r2
	j	beq_cont.28573
beq_else.28572:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28573:
	lw	r30 r2 8
	multi r2 r2 4
	lw	r30 r3 12
	swo	r3 r1 r2
	j	beq_cont.28571
beq_else.28570:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28571:
	lw	r30 r2 0
	multi r2 r2 4
	lw	r30 r3 4
	swo	r3 r1 r2
	jr	r31
beq_tail_else.28569:
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r1
	addi	r0 r2 -1
	j	min_caml_create_array
read_or_network.2887:
	addi	r0 r2 0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_read_int
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28584
	addi	r0 r2 1
	sw	r1 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_read_int
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28586
	addi	r0 r2 2
	sw	r1 r30 16
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_read_int
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28588
	addi	r0 r2 3
	sw	r1 r30 24
	sw	r2 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_read_int
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28590
	addi	r0 r2 4
	sw	r1 r30 32
	sw	r2 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_read_int
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28592
	addi	r0 r2 5
	sw	r1 r30 40
	sw	r2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_read_int
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28594
	addi	r0 r2 6
	sw	r1 r30 48
	sw	r2 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_read_int
	addi	r30 r30 -60
	lw	r30 r31 56
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28596
	addi	r0 r2 7
	sw	r1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -64
	lw	r30 r31 60
	lw	r30 r2 52
	multi r2 r2 4
	lw	r30 r3 56
	swo	r3 r1 r2
	j	beq_cont.28597
beq_else.28596:
	addi	r0 r1 7
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28597:
	lw	r30 r2 44
	multi r2 r2 4
	lw	r30 r3 48
	swo	r3 r1 r2
	j	beq_cont.28595
beq_else.28594:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28595:
	lw	r30 r2 36
	multi r2 r2 4
	lw	r30 r3 40
	swo	r3 r1 r2
	j	beq_cont.28593
beq_else.28592:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28593:
	lw	r30 r2 28
	multi r2 r2 4
	lw	r30 r3 32
	swo	r3 r1 r2
	j	beq_cont.28591
beq_else.28590:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28591:
	lw	r30 r2 20
	multi r2 r2 4
	lw	r30 r3 24
	swo	r3 r1 r2
	j	beq_cont.28589
beq_else.28588:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28589:
	lw	r30 r2 12
	multi r2 r2 4
	lw	r30 r3 16
	swo	r3 r1 r2
	j	beq_cont.28587
beq_else.28586:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28587:
	lw	r30 r2 4
	multi r2 r2 4
	lw	r30 r3 8
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28585
beq_else.28584:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
	mov	r2 r1
beq_cont.28585:
	addi	r0 r1 0
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.28598
	addi	r0 r1 1
	lw	r30 r3 0
	add	r3 r1 r1
	addi	r0 r4 0
	sw	r2 r30 60
	sw	r1 r30 64
	sw	r4 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	jal	min_caml_read_int
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28599
	addi	r0 r2 1
	sw	r1 r30 72
	sw	r2 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	jal	min_caml_read_int
	addi	r30 r30 -84
	lw	r30 r31 80
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28601
	addi	r0 r2 2
	sw	r1 r30 80
	sw	r2 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	jal	min_caml_read_int
	addi	r30 r30 -92
	lw	r30 r31 88
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28603
	addi	r0 r2 3
	sw	r1 r30 88
	sw	r2 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	jal	min_caml_read_int
	addi	r30 r30 -100
	lw	r30 r31 96
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28605
	addi	r0 r2 4
	sw	r1 r30 96
	sw	r2 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	jal	min_caml_read_int
	addi	r30 r30 -108
	lw	r30 r31 104
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28607
	addi	r0 r2 5
	sw	r1 r30 104
	sw	r2 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_read_int
	addi	r30 r30 -116
	lw	r30 r31 112
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28609
	addi	r0 r2 6
	sw	r1 r30 112
	sw	r31 r30 116
	addi	r30 r30 120
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -120
	lw	r30 r31 116
	lw	r30 r2 108
	multi r2 r2 4
	lw	r30 r3 112
	swo	r3 r1 r2
	j	beq_cont.28610
beq_else.28609:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28610:
	lw	r30 r2 100
	multi r2 r2 4
	lw	r30 r3 104
	swo	r3 r1 r2
	j	beq_cont.28608
beq_else.28607:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28608:
	lw	r30 r2 92
	multi r2 r2 4
	lw	r30 r3 96
	swo	r3 r1 r2
	j	beq_cont.28606
beq_else.28605:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28606:
	lw	r30 r2 84
	multi r2 r2 4
	lw	r30 r3 88
	swo	r3 r1 r2
	j	beq_cont.28604
beq_else.28603:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28604:
	lw	r30 r2 76
	multi r2 r2 4
	lw	r30 r3 80
	swo	r3 r1 r2
	j	beq_cont.28602
beq_else.28601:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28602:
	lw	r30 r2 68
	multi r2 r2 4
	lw	r30 r3 72
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28600
beq_else.28599:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
	mov	r2 r1
beq_cont.28600:
	addi	r0 r1 0
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28611
	addi	r0 r1 1
	lw	r30 r3 64
	add	r3 r1 r1
	addi	r0 r4 0
	sw	r2 r30 116
	sw	r1 r30 120
	sw	r4 r30 124
	sw	r31 r30 128
	addi	r30 r30 132
	jal	min_caml_read_int
	addi	r30 r30 -132
	lw	r30 r31 128
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28613
	addi	r0 r2 1
	sw	r1 r30 128
	sw	r2 r30 132
	sw	r31 r30 136
	addi	r30 r30 140
	jal	min_caml_read_int
	addi	r30 r30 -140
	lw	r30 r31 136
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28615
	addi	r0 r2 2
	sw	r1 r30 136
	sw	r2 r30 140
	sw	r31 r30 144
	addi	r30 r30 148
	jal	min_caml_read_int
	addi	r30 r30 -148
	lw	r30 r31 144
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28617
	addi	r0 r2 3
	sw	r1 r30 144
	sw	r2 r30 148
	sw	r31 r30 152
	addi	r30 r30 156
	jal	min_caml_read_int
	addi	r30 r30 -156
	lw	r30 r31 152
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28619
	addi	r0 r2 4
	sw	r1 r30 152
	sw	r2 r30 156
	sw	r31 r30 160
	addi	r30 r30 164
	jal	min_caml_read_int
	addi	r30 r30 -164
	lw	r30 r31 160
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28621
	addi	r0 r2 5
	sw	r1 r30 160
	sw	r31 r30 164
	addi	r30 r30 168
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -168
	lw	r30 r31 164
	lw	r30 r2 156
	multi r2 r2 4
	lw	r30 r3 160
	swo	r3 r1 r2
	j	beq_cont.28622
beq_else.28621:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28622:
	lw	r30 r2 148
	multi r2 r2 4
	lw	r30 r3 152
	swo	r3 r1 r2
	j	beq_cont.28620
beq_else.28619:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28620:
	lw	r30 r2 140
	multi r2 r2 4
	lw	r30 r3 144
	swo	r3 r1 r2
	j	beq_cont.28618
beq_else.28617:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28618:
	lw	r30 r2 132
	multi r2 r2 4
	lw	r30 r3 136
	swo	r3 r1 r2
	j	beq_cont.28616
beq_else.28615:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28616:
	lw	r30 r2 124
	multi r2 r2 4
	lw	r30 r3 128
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28614
beq_else.28613:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
	mov	r2 r1
beq_cont.28614:
	addi	r0 r1 0
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28623
	addi	r0 r1 1
	lw	r30 r3 120
	add	r3 r1 r1
	addi	r0 r4 0
	sw	r2 r30 164
	sw	r1 r30 168
	sw	r4 r30 172
	sw	r31 r30 176
	addi	r30 r30 180
	jal	min_caml_read_int
	addi	r30 r30 -180
	lw	r30 r31 176
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28625
	addi	r0 r2 1
	sw	r1 r30 176
	sw	r2 r30 180
	sw	r31 r30 184
	addi	r30 r30 188
	jal	min_caml_read_int
	addi	r30 r30 -188
	lw	r30 r31 184
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28627
	addi	r0 r2 2
	sw	r1 r30 184
	sw	r2 r30 188
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_read_int
	addi	r30 r30 -196
	lw	r30 r31 192
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28629
	addi	r0 r2 3
	sw	r1 r30 192
	sw	r2 r30 196
	sw	r31 r30 200
	addi	r30 r30 204
	jal	min_caml_read_int
	addi	r30 r30 -204
	lw	r30 r31 200
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28631
	addi	r0 r2 4
	sw	r1 r30 200
	sw	r31 r30 204
	addi	r30 r30 208
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -208
	lw	r30 r31 204
	lw	r30 r2 196
	multi r2 r2 4
	lw	r30 r3 200
	swo	r3 r1 r2
	j	beq_cont.28632
beq_else.28631:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
beq_cont.28632:
	lw	r30 r2 188
	multi r2 r2 4
	lw	r30 r3 192
	swo	r3 r1 r2
	j	beq_cont.28630
beq_else.28629:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
beq_cont.28630:
	lw	r30 r2 180
	multi r2 r2 4
	lw	r30 r3 184
	swo	r3 r1 r2
	j	beq_cont.28628
beq_else.28627:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
beq_cont.28628:
	lw	r30 r2 172
	multi r2 r2 4
	lw	r30 r3 176
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28626
beq_else.28625:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
	mov	r2 r1
beq_cont.28626:
	addi	r0 r1 0
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28633
	addi	r0 r1 1
	lw	r30 r3 168
	add	r3 r1 r1
	sw	r2 r30 204
	sw	r31 r30 208
	addi	r30 r30 212
	jal	read_or_network.2887
	addi	r30 r30 -212
	lw	r30 r31 208
	lw	r30 r2 168
	multi r2 r2 4
	lw	r30 r3 204
	swo	r3 r1 r2
	j	beq_cont.28634
beq_else.28633:
	addi	r0 r1 1
	lw	r30 r3 168
	add	r3 r1 r1
	sw	r31 r30 208
	addi	r30 r30 212
	jal	min_caml_create_array
	addi	r30 r30 -212
	lw	r30 r31 208
beq_cont.28634:
	lw	r30 r2 120
	multi r2 r2 4
	lw	r30 r3 164
	swo	r3 r1 r2
	j	beq_cont.28624
beq_else.28623:
	addi	r0 r1 1
	lw	r30 r3 120
	add	r3 r1 r1
	sw	r31 r30 208
	addi	r30 r30 212
	jal	min_caml_create_array
	addi	r30 r30 -212
	lw	r30 r31 208
beq_cont.28624:
	lw	r30 r2 64
	multi r2 r2 4
	lw	r30 r3 116
	swo	r3 r1 r2
	j	beq_cont.28612
beq_else.28611:
	addi	r0 r1 1
	lw	r30 r3 64
	add	r3 r1 r1
	sw	r31 r30 208
	addi	r30 r30 212
	jal	min_caml_create_array
	addi	r30 r30 -212
	lw	r30 r31 208
beq_cont.28612:
	lw	r30 r2 0
	multi r2 r2 4
	lw	r30 r3 60
	swo	r3 r1 r2
	jr	r31
beq_tail_else.28598:
	addi	r0 r1 1
	lw	r30 r3 0
	add	r3 r1 r1
	j	min_caml_create_array
read_and_network.2889:
	addi	r0 r2 0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_read_int
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28635
	addi	r0 r2 1
	sw	r1 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_read_int
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28637
	addi	r0 r2 2
	sw	r1 r30 16
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_read_int
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28639
	addi	r0 r2 3
	sw	r1 r30 24
	sw	r2 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_read_int
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28641
	addi	r0 r2 4
	sw	r1 r30 32
	sw	r2 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_read_int
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28643
	addi	r0 r2 5
	sw	r1 r30 40
	sw	r2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_read_int
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28645
	addi	r0 r2 6
	sw	r1 r30 48
	sw	r2 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_read_int
	addi	r30 r30 -60
	lw	r30 r31 56
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28647
	addi	r0 r2 7
	sw	r1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -64
	lw	r30 r31 60
	lw	r30 r2 52
	multi r2 r2 4
	lw	r30 r3 56
	swo	r3 r1 r2
	j	beq_cont.28648
beq_else.28647:
	addi	r0 r1 7
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28648:
	lw	r30 r2 44
	multi r2 r2 4
	lw	r30 r3 48
	swo	r3 r1 r2
	j	beq_cont.28646
beq_else.28645:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28646:
	lw	r30 r2 36
	multi r2 r2 4
	lw	r30 r3 40
	swo	r3 r1 r2
	j	beq_cont.28644
beq_else.28643:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28644:
	lw	r30 r2 28
	multi r2 r2 4
	lw	r30 r3 32
	swo	r3 r1 r2
	j	beq_cont.28642
beq_else.28641:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28642:
	lw	r30 r2 20
	multi r2 r2 4
	lw	r30 r3 24
	swo	r3 r1 r2
	j	beq_cont.28640
beq_else.28639:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28640:
	lw	r30 r2 12
	multi r2 r2 4
	lw	r30 r3 16
	swo	r3 r1 r2
	j	beq_cont.28638
beq_else.28637:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28638:
	lw	r30 r2 4
	multi r2 r2 4
	lw	r30 r3 8
	swo	r3 r1 r2
	j	beq_cont.28636
beq_else.28635:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28636:
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28649
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -60
	lw	r30 r3 0
	multi r3 r4 4
	swo	r1 r2 r4
	addi	r0 r1 1
	add	r3 r1 r1
	addi	r0 r2 0
	sw	r1 r30 60
	sw	r2 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_read_int
	addi	r30 r30 -72
	lw	r30 r31 68
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28650
	addi	r0 r2 1
	sw	r1 r30 68
	sw	r2 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	jal	min_caml_read_int
	addi	r30 r30 -80
	lw	r30 r31 76
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28652
	addi	r0 r2 2
	sw	r1 r30 76
	sw	r2 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	jal	min_caml_read_int
	addi	r30 r30 -88
	lw	r30 r31 84
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28654
	addi	r0 r2 3
	sw	r1 r30 84
	sw	r2 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	jal	min_caml_read_int
	addi	r30 r30 -96
	lw	r30 r31 92
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28656
	addi	r0 r2 4
	sw	r1 r30 92
	sw	r2 r30 96
	sw	r31 r30 100
	addi	r30 r30 104
	jal	min_caml_read_int
	addi	r30 r30 -104
	lw	r30 r31 100
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28658
	addi	r0 r2 5
	sw	r1 r30 100
	sw	r2 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	jal	min_caml_read_int
	addi	r30 r30 -112
	lw	r30 r31 108
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28660
	addi	r0 r2 6
	sw	r1 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -116
	lw	r30 r31 112
	lw	r30 r2 104
	multi r2 r2 4
	lw	r30 r3 108
	swo	r3 r1 r2
	j	beq_cont.28661
beq_else.28660:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28661:
	lw	r30 r2 96
	multi r2 r2 4
	lw	r30 r3 100
	swo	r3 r1 r2
	j	beq_cont.28659
beq_else.28658:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28659:
	lw	r30 r2 88
	multi r2 r2 4
	lw	r30 r3 92
	swo	r3 r1 r2
	j	beq_cont.28657
beq_else.28656:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28657:
	lw	r30 r2 80
	multi r2 r2 4
	lw	r30 r3 84
	swo	r3 r1 r2
	j	beq_cont.28655
beq_else.28654:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28655:
	lw	r30 r2 72
	multi r2 r2 4
	lw	r30 r3 76
	swo	r3 r1 r2
	j	beq_cont.28653
beq_else.28652:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28653:
	lw	r30 r2 64
	multi r2 r2 4
	lw	r30 r3 68
	swo	r3 r1 r2
	j	beq_cont.28651
beq_else.28650:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28651:
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28662
	addi	r30 r30 112
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -112
	lw	r30 r3 60
	multi r3 r4 4
	swo	r1 r2 r4
	addi	r0 r1 1
	add	r3 r1 r1
	addi	r0 r2 0
	sw	r1 r30 112
	sw	r2 r30 116
	sw	r31 r30 120
	addi	r30 r30 124
	jal	min_caml_read_int
	addi	r30 r30 -124
	lw	r30 r31 120
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28663
	addi	r0 r2 1
	sw	r1 r30 120
	sw	r2 r30 124
	sw	r31 r30 128
	addi	r30 r30 132
	jal	min_caml_read_int
	addi	r30 r30 -132
	lw	r30 r31 128
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28665
	addi	r0 r2 2
	sw	r1 r30 128
	sw	r2 r30 132
	sw	r31 r30 136
	addi	r30 r30 140
	jal	min_caml_read_int
	addi	r30 r30 -140
	lw	r30 r31 136
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28667
	addi	r0 r2 3
	sw	r1 r30 136
	sw	r2 r30 140
	sw	r31 r30 144
	addi	r30 r30 148
	jal	min_caml_read_int
	addi	r30 r30 -148
	lw	r30 r31 144
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28669
	addi	r0 r2 4
	sw	r1 r30 144
	sw	r2 r30 148
	sw	r31 r30 152
	addi	r30 r30 156
	jal	min_caml_read_int
	addi	r30 r30 -156
	lw	r30 r31 152
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28671
	addi	r0 r2 5
	sw	r1 r30 152
	sw	r31 r30 156
	addi	r30 r30 160
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -160
	lw	r30 r31 156
	lw	r30 r2 148
	multi r2 r2 4
	lw	r30 r3 152
	swo	r3 r1 r2
	j	beq_cont.28672
beq_else.28671:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28672:
	lw	r30 r2 140
	multi r2 r2 4
	lw	r30 r3 144
	swo	r3 r1 r2
	j	beq_cont.28670
beq_else.28669:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28670:
	lw	r30 r2 132
	multi r2 r2 4
	lw	r30 r3 136
	swo	r3 r1 r2
	j	beq_cont.28668
beq_else.28667:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28668:
	lw	r30 r2 124
	multi r2 r2 4
	lw	r30 r3 128
	swo	r3 r1 r2
	j	beq_cont.28666
beq_else.28665:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28666:
	lw	r30 r2 116
	multi r2 r2 4
	lw	r30 r3 120
	swo	r3 r1 r2
	j	beq_cont.28664
beq_else.28663:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28664:
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28673
	addi	r30 r30 156
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -156
	lw	r30 r3 112
	multi r3 r4 4
	swo	r1 r2 r4
	addi	r0 r1 1
	add	r3 r1 r1
	addi	r0 r2 0
	sw	r1 r30 156
	sw	r2 r30 160
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_read_int
	addi	r30 r30 -168
	lw	r30 r31 164
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28674
	addi	r0 r2 1
	sw	r1 r30 164
	sw	r2 r30 168
	sw	r31 r30 172
	addi	r30 r30 176
	jal	min_caml_read_int
	addi	r30 r30 -176
	lw	r30 r31 172
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28676
	addi	r0 r2 2
	sw	r1 r30 172
	sw	r2 r30 176
	sw	r31 r30 180
	addi	r30 r30 184
	jal	min_caml_read_int
	addi	r30 r30 -184
	lw	r30 r31 180
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28678
	addi	r0 r2 3
	sw	r1 r30 180
	sw	r2 r30 184
	sw	r31 r30 188
	addi	r30 r30 192
	jal	min_caml_read_int
	addi	r30 r30 -192
	lw	r30 r31 188
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28680
	addi	r0 r2 4
	sw	r1 r30 188
	sw	r31 r30 192
	addi	r30 r30 196
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -196
	lw	r30 r31 192
	lw	r30 r2 184
	multi r2 r2 4
	lw	r30 r3 188
	swo	r3 r1 r2
	j	beq_cont.28681
beq_else.28680:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28681:
	lw	r30 r2 176
	multi r2 r2 4
	lw	r30 r3 180
	swo	r3 r1 r2
	j	beq_cont.28679
beq_else.28678:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28679:
	lw	r30 r2 168
	multi r2 r2 4
	lw	r30 r3 172
	swo	r3 r1 r2
	j	beq_cont.28677
beq_else.28676:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28677:
	lw	r30 r2 160
	multi r2 r2 4
	lw	r30 r3 164
	swo	r3 r1 r2
	j	beq_cont.28675
beq_else.28674:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28675:
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28682
	addi	r30 r30 192
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -192
	lw	r30 r3 156
	multi r3 r4 4
	swo	r1 r2 r4
	addi	r0 r1 1
	add	r3 r1 r1
	j	read_and_network.2889
beq_tail_else.28682:
	jr	r31
beq_tail_else.28673:
	jr	r31
beq_tail_else.28662:
	jr	r31
beq_tail_else.28649:
	jr	r31
solver_rect.2902:
	addi	r0 r3 0
	addi	r0 r4 1
	addi	r0 r5 2
	multi r3 r6 4
	lwoc1	r2 r6 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28687
	addi	r0 r6 0
	j	bfeq_nontail_cont.28688
bfeq_nontail_else.28687:
	addi	r0 r6 1
bfeq_nontail_cont.28688:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28689
	addi	r0 r3 0
	j	beq_cont.28690
beq_else.28689:
	lw	r1 r6 16
	lw	r1 r7 24
	mtc1	r0 f3
	multi r3 r8 4
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28691
	addi	r0 r8 1
	j	bfle_nontail_cont.28692
bfle_nontail_else.28691:
	addi	r0 r8 0
bfle_nontail_cont.28692:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28693
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28695
	addi	r0 r7 0
	j	beq_cont.28696
beq_else.28695:
	addi	r0 r7 1
beq_cont.28696:
	j	beq_cont.28694
beq_else.28693:
	mov	r7 r8
beq_cont.28694:
	multi r3 r8 4
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28697
	j	beq_cont.28698
beq_else.28697:
	neg.s	f3 f3
beq_cont.28698:
	sub.s	f3 f0 f3
	multi r3 r3 4
	lwoc1	r2 r3 f4
	div.s	f3 f4 f3
	multi r4 r3 4
	lwoc1	r6 r3 f4
	multi r4 r3 4
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f1 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28699
	addi	r0 r3 1
	j	bfle_nontail_cont.28700
bfle_nontail_else.28699:
	addi	r0 r3 0
bfle_nontail_cont.28700:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28701
	multi r5 r3 4
	lwoc1	r6 r3 f4
	multi r5 r3 4
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28703
	addi	r0 r3 1
	j	bfle_nontail_cont.28704
bfle_nontail_else.28703:
	addi	r0 r3 0
bfle_nontail_cont.28704:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28705
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	multi r4 r4 4
	swoc1	f3 r3 r4
	addi	r0 r3 1
	j	beq_cont.28706
beq_else.28705:
	addi	r0 r3 0
beq_cont.28706:
	j	beq_cont.28702
beq_else.28701:
	addi	r0 r3 0
beq_cont.28702:
beq_cont.28690:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28707
	addi	r0 r1 1
	jr	r31
beq_tail_else.28707:
	addi	r0 r3 1
	addi	r0 r4 2
	addi	r0 r5 0
	multi r3 r6 4
	lwoc1	r2 r6 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28708
	addi	r0 r6 0
	j	bfeq_nontail_cont.28709
bfeq_nontail_else.28708:
	addi	r0 r6 1
bfeq_nontail_cont.28709:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28710
	addi	r0 r3 0
	j	beq_cont.28711
beq_else.28710:
	lw	r1 r6 16
	lw	r1 r7 24
	mtc1	r0 f3
	multi r3 r8 4
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28712
	addi	r0 r8 1
	j	bfle_nontail_cont.28713
bfle_nontail_else.28712:
	addi	r0 r8 0
bfle_nontail_cont.28713:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28714
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28716
	addi	r0 r7 0
	j	beq_cont.28717
beq_else.28716:
	addi	r0 r7 1
beq_cont.28717:
	j	beq_cont.28715
beq_else.28714:
	mov	r7 r8
beq_cont.28715:
	multi r3 r8 4
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28718
	j	beq_cont.28719
beq_else.28718:
	neg.s	f3 f3
beq_cont.28719:
	sub.s	f3 f1 f3
	multi r3 r3 4
	lwoc1	r2 r3 f4
	div.s	f3 f4 f3
	multi r4 r3 4
	lwoc1	r6 r3 f4
	multi r4 r3 4
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28720
	addi	r0 r3 1
	j	bfle_nontail_cont.28721
bfle_nontail_else.28720:
	addi	r0 r3 0
bfle_nontail_cont.28721:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28722
	multi r5 r3 4
	lwoc1	r6 r3 f4
	multi r5 r3 4
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f0 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28724
	addi	r0 r3 1
	j	bfle_nontail_cont.28725
bfle_nontail_else.28724:
	addi	r0 r3 0
bfle_nontail_cont.28725:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28726
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	multi r4 r4 4
	swoc1	f3 r3 r4
	addi	r0 r3 1
	j	beq_cont.28727
beq_else.28726:
	addi	r0 r3 0
beq_cont.28727:
	j	beq_cont.28723
beq_else.28722:
	addi	r0 r3 0
beq_cont.28723:
beq_cont.28711:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28728
	addi	r0 r1 2
	jr	r31
beq_tail_else.28728:
	addi	r0 r3 2
	addi	r0 r4 0
	addi	r0 r5 1
	multi r3 r6 4
	lwoc1	r2 r6 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28729
	addi	r0 r6 0
	j	bfeq_nontail_cont.28730
bfeq_nontail_else.28729:
	addi	r0 r6 1
bfeq_nontail_cont.28730:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28731
	addi	r0 r1 0
	j	beq_cont.28732
beq_else.28731:
	lw	r1 r6 16
	lw	r1 r1 24
	mtc1	r0 f3
	multi r3 r7 4
	lwoc1	r2 r7 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28733
	addi	r0 r7 1
	j	bfle_nontail_cont.28734
bfle_nontail_else.28733:
	addi	r0 r7 0
bfle_nontail_cont.28734:
	addi	r0 r8 0
	sub	r1 r8 r25
	beq	r25 r0 beq_else.28735
	addi	r0 r1 0
	sub	r7 r1 r25
	beq	r25 r0 beq_else.28737
	addi	r0 r1 0
	j	beq_cont.28738
beq_else.28737:
	addi	r0 r1 1
beq_cont.28738:
	j	beq_cont.28736
beq_else.28735:
	mov	r1 r7
beq_cont.28736:
	multi r3 r7 4
	lwoc1	r6 r7 f3
	addi	r0 r7 0
	sub	r1 r7 r25
	beq	r25 r0 beq_else.28739
	j	beq_cont.28740
beq_else.28739:
	neg.s	f3 f3
beq_cont.28740:
	sub.s	f3 f2 f2
	multi r3 r1 4
	lwoc1	r2 r1 f3
	div.s	f2 f3 f2
	multi r4 r1 4
	lwoc1	r6 r1 f3
	multi r4 r1 4
	lwoc1	r2 r1 f4
	mul.s	f2 f4 f4
	add.s	f4 f0 f0
	abs.s	f0 f0
	sub.s	f3 f0 f0
	mtc1	r0 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28741
	addi	r0 r1 1
	j	bfle_nontail_cont.28742
bfle_nontail_else.28741:
	addi	r0 r1 0
bfle_nontail_cont.28742:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28743
	multi r5 r1 4
	lwoc1	r6 r1 f0
	multi r5 r1 4
	lwoc1	r2 r1 f3
	mul.s	f2 f3 f3
	add.s	f3 f1 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28745
	addi	r0 r1 1
	j	bfle_nontail_cont.28746
bfle_nontail_else.28745:
	addi	r0 r1 0
bfle_nontail_cont.28746:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28747
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	multi r2 r2 4
	swoc1	f2 r1 r2
	addi	r0 r1 1
	j	beq_cont.28748
beq_else.28747:
	addi	r0 r1 0
beq_cont.28748:
	j	beq_cont.28744
beq_else.28743:
	addi	r0 r1 0
beq_cont.28744:
beq_cont.28732:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28749
	addi	r0 r1 3
	jr	r31
beq_tail_else.28749:
	addi	r0 r1 0
	jr	r31
solver_second.2927:
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f3
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f4
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f5
	mul.s	f3 f3 f6
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r1 r3 16
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f5 f7
	lw	r1 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28750
	mul.s	f4 f5 f7
	lw	r1 r3 36
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f3 f5
	lw	r1 r3 36
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f5 f7 f5
	add.s	f6 f5 f5
	mul.s	f3 f4 f3
	lw	r1 r3 36
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f4
	mul.s	f3 f4 f3
	add.s	f5 f3 f3
	j	beq_cont.28751
beq_else.28750:
	mov.s	f6 f3
beq_cont.28751:
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28752
	addi	r0 r3 0
	j	bfeq_nontail_cont.28753
bfeq_nontail_else.28752:
	addi	r0 r3 1
bfeq_nontail_cont.28753:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28754
	addi	r0 r1 0
	jr	r31
beq_tail_else.28754:
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f4
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f5
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f6
	mul.s	f4 f0 f7
	lw	r1 r2 16
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f8
	mul.s	f7 f8 f7
	mul.s	f5 f1 f8
	lw	r1 r2 16
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	add.s	f7 f8 f7
	mul.s	f6 f2 f8
	lw	r1 r2 16
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	add.s	f7 f8 f7
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28755
	mul.s	f6 f1 f8
	mul.s	f5 f2 f9
	add.s	f8 f9 f8
	lw	r1 r2 36
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	mul.s	f4 f2 f9
	mul.s	f6 f0 f6
	add.s	f9 f6 f6
	lw	r1 r2 36
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f9
	mul.s	f6 f9 f6
	add.s	f8 f6 f6
	mul.s	f4 f1 f4
	mul.s	f5 f0 f5
	add.s	f4 f5 f4
	lw	r1 r2 36
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f5
	mul.s	f4 f5 f4
	add.s	f6 f4 f4
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f5
	mul.s	f4 f5 f4
	add.s	f7 f4 f4
	j	beq_cont.28756
beq_else.28755:
	mov.s	f7 f4
beq_cont.28756:
	mul.s	f0 f0 f5
	lw	r1 r2 16
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f6
	mul.s	f5 f6 f5
	mul.s	f1 f1 f6
	lw	r1 r2 16
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f2 f6
	lw	r1 r2 16
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28757
	mul.s	f1 f2 f6
	lw	r1 r2 36
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f0 f2
	lw	r1 r2 36
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f6
	mul.s	f2 f6 f2
	add.s	f5 f2 f2
	mul.s	f0 f1 f0
	lw	r1 r2 36
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.28758
beq_else.28757:
	mov.s	f5 f0
beq_cont.28758:
	lw	r1 r2 4
	addi	r0 r3 3
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28759
	j	beq_cont.28760
beq_else.28759:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28760:
	mul.s	f4 f4 f1
	mul.s	f3 f0 f0
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28761
	addi	r0 r2 1
	j	bfle_nontail_cont.28762
bfle_nontail_else.28761:
	addi	r0 r2 0
bfle_nontail_cont.28762:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28763
	sqrt.s	f0 f0
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28764
	j	beq_cont.28765
beq_else.28764:
	neg.s	f0 f0
beq_cont.28765:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sub.s	f0 f4 f0
	div.s	f0 f3 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.28763:
	addi	r0 r1 0
	jr	r31
solver.2933:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r1 r1 4
	lwo	r4 r1 r1
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f0
	lw	r1 r4 20
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f1
	sub.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f1
	lw	r1 r4 20
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f2
	sub.s	f1 f2 f1
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f2
	lw	r1 r3 20
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f3
	sub.s	f2 f3 f2
	lw	r1 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28766
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28767
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f3
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f4
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f5
	mul.s	f3 f3 f6
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r1 r3 16
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f5 f7
	lw	r1 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28768
	mul.s	f4 f5 f7
	lw	r1 r3 36
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f3 f5
	lw	r1 r3 36
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f5 f7 f5
	add.s	f6 f5 f5
	mul.s	f3 f4 f3
	lw	r1 r3 36
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f4
	mul.s	f3 f4 f3
	add.s	f5 f3 f3
	j	beq_cont.28769
beq_else.28768:
	mov.s	f6 f3
beq_cont.28769:
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28770
	addi	r0 r3 0
	j	bfeq_nontail_cont.28771
bfeq_nontail_else.28770:
	addi	r0 r3 1
bfeq_nontail_cont.28771:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28772
	addi	r0 r1 0
	jr	r31
beq_tail_else.28772:
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f4
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f5
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f6
	mul.s	f4 f0 f7
	lw	r1 r2 16
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f8
	mul.s	f7 f8 f7
	mul.s	f5 f1 f8
	lw	r1 r2 16
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	add.s	f7 f8 f7
	mul.s	f6 f2 f8
	lw	r1 r2 16
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	add.s	f7 f8 f7
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28773
	mul.s	f6 f1 f8
	mul.s	f5 f2 f9
	add.s	f8 f9 f8
	lw	r1 r2 36
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	mul.s	f4 f2 f9
	mul.s	f6 f0 f6
	add.s	f9 f6 f6
	lw	r1 r2 36
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f9
	mul.s	f6 f9 f6
	add.s	f8 f6 f6
	mul.s	f4 f1 f4
	mul.s	f5 f0 f5
	add.s	f4 f5 f4
	lw	r1 r2 36
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f5
	mul.s	f4 f5 f4
	add.s	f6 f4 f4
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f5
	mul.s	f4 f5 f4
	add.s	f7 f4 f4
	j	beq_cont.28774
beq_else.28773:
	mov.s	f7 f4
beq_cont.28774:
	mul.s	f0 f0 f5
	lw	r1 r2 16
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f6
	mul.s	f5 f6 f5
	mul.s	f1 f1 f6
	lw	r1 r2 16
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f2 f6
	lw	r1 r2 16
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28775
	mul.s	f1 f2 f6
	lw	r1 r2 36
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f0 f2
	lw	r1 r2 36
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f6
	mul.s	f2 f6 f2
	add.s	f5 f2 f2
	mul.s	f0 f1 f0
	lw	r1 r2 36
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.28776
beq_else.28775:
	mov.s	f5 f0
beq_cont.28776:
	lw	r1 r2 4
	addi	r0 r3 3
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28777
	j	beq_cont.28778
beq_else.28777:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28778:
	mul.s	f4 f4 f1
	mul.s	f3 f0 f0
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28779
	addi	r0 r2 1
	j	bfle_nontail_cont.28780
bfle_nontail_else.28779:
	addi	r0 r2 0
bfle_nontail_cont.28780:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28781
	sqrt.s	f0 f0
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28782
	j	beq_cont.28783
beq_else.28782:
	neg.s	f0 f0
beq_cont.28783:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sub.s	f0 f4 f0
	div.s	f0 f3 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.28781:
	addi	r0 r1 0
	jr	r31
beq_tail_else.28767:
	lw	r1 r1 16
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f3
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r1 r3 f4
	mul.s	f3 f4 f3
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f4
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r1 r3 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f4
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28784
	addi	r0 r2 1
	j	bfle_nontail_cont.28785
bfle_nontail_else.28784:
	addi	r0 r2 0
bfle_nontail_cont.28785:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28786
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r1 r4 f4
	mul.s	f4 f0 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r1 r4 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r1 r4 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	div.s	f0 f3 f0
	multi r3 r1 4
	swoc1	f0 r2 r1
	addi	r0 r1 1
	jr	r31
beq_tail_else.28786:
	addi	r0 r1 0
	jr	r31
beq_tail_else.28766:
	addi	r0 r3 0
	addi	r0 r4 1
	addi	r0 r5 2
	multi r3 r6 4
	lwoc1	r2 r6 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28787
	addi	r0 r6 0
	j	bfeq_nontail_cont.28788
bfeq_nontail_else.28787:
	addi	r0 r6 1
bfeq_nontail_cont.28788:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28789
	addi	r0 r3 0
	j	beq_cont.28790
beq_else.28789:
	lw	r1 r6 16
	lw	r1 r7 24
	mtc1	r0 f3
	multi r3 r8 4
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28791
	addi	r0 r8 1
	j	bfle_nontail_cont.28792
bfle_nontail_else.28791:
	addi	r0 r8 0
bfle_nontail_cont.28792:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28793
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28795
	addi	r0 r7 0
	j	beq_cont.28796
beq_else.28795:
	addi	r0 r7 1
beq_cont.28796:
	j	beq_cont.28794
beq_else.28793:
	mov	r7 r8
beq_cont.28794:
	multi r3 r8 4
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28797
	j	beq_cont.28798
beq_else.28797:
	neg.s	f3 f3
beq_cont.28798:
	sub.s	f3 f0 f3
	multi r3 r3 4
	lwoc1	r2 r3 f4
	div.s	f3 f4 f3
	multi r4 r3 4
	lwoc1	r6 r3 f4
	multi r4 r3 4
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f1 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28799
	addi	r0 r3 1
	j	bfle_nontail_cont.28800
bfle_nontail_else.28799:
	addi	r0 r3 0
bfle_nontail_cont.28800:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28801
	multi r5 r3 4
	lwoc1	r6 r3 f4
	multi r5 r3 4
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28803
	addi	r0 r3 1
	j	bfle_nontail_cont.28804
bfle_nontail_else.28803:
	addi	r0 r3 0
bfle_nontail_cont.28804:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28805
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	multi r4 r4 4
	swoc1	f3 r3 r4
	addi	r0 r3 1
	j	beq_cont.28806
beq_else.28805:
	addi	r0 r3 0
beq_cont.28806:
	j	beq_cont.28802
beq_else.28801:
	addi	r0 r3 0
beq_cont.28802:
beq_cont.28790:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28807
	addi	r0 r1 1
	jr	r31
beq_tail_else.28807:
	addi	r0 r3 1
	addi	r0 r4 2
	addi	r0 r5 0
	multi r3 r6 4
	lwoc1	r2 r6 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28808
	addi	r0 r6 0
	j	bfeq_nontail_cont.28809
bfeq_nontail_else.28808:
	addi	r0 r6 1
bfeq_nontail_cont.28809:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28810
	addi	r0 r3 0
	j	beq_cont.28811
beq_else.28810:
	lw	r1 r6 16
	lw	r1 r7 24
	mtc1	r0 f3
	multi r3 r8 4
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28812
	addi	r0 r8 1
	j	bfle_nontail_cont.28813
bfle_nontail_else.28812:
	addi	r0 r8 0
bfle_nontail_cont.28813:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28814
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28816
	addi	r0 r7 0
	j	beq_cont.28817
beq_else.28816:
	addi	r0 r7 1
beq_cont.28817:
	j	beq_cont.28815
beq_else.28814:
	mov	r7 r8
beq_cont.28815:
	multi r3 r8 4
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28818
	j	beq_cont.28819
beq_else.28818:
	neg.s	f3 f3
beq_cont.28819:
	sub.s	f3 f1 f3
	multi r3 r3 4
	lwoc1	r2 r3 f4
	div.s	f3 f4 f3
	multi r4 r3 4
	lwoc1	r6 r3 f4
	multi r4 r3 4
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28820
	addi	r0 r3 1
	j	bfle_nontail_cont.28821
bfle_nontail_else.28820:
	addi	r0 r3 0
bfle_nontail_cont.28821:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28822
	multi r5 r3 4
	lwoc1	r6 r3 f4
	multi r5 r3 4
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f0 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28824
	addi	r0 r3 1
	j	bfle_nontail_cont.28825
bfle_nontail_else.28824:
	addi	r0 r3 0
bfle_nontail_cont.28825:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28826
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	multi r4 r4 4
	swoc1	f3 r3 r4
	addi	r0 r3 1
	j	beq_cont.28827
beq_else.28826:
	addi	r0 r3 0
beq_cont.28827:
	j	beq_cont.28823
beq_else.28822:
	addi	r0 r3 0
beq_cont.28823:
beq_cont.28811:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28828
	addi	r0 r1 2
	jr	r31
beq_tail_else.28828:
	addi	r0 r3 2
	addi	r0 r4 0
	addi	r0 r5 1
	multi r3 r6 4
	lwoc1	r2 r6 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28829
	addi	r0 r6 0
	j	bfeq_nontail_cont.28830
bfeq_nontail_else.28829:
	addi	r0 r6 1
bfeq_nontail_cont.28830:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28831
	addi	r0 r1 0
	j	beq_cont.28832
beq_else.28831:
	lw	r1 r6 16
	lw	r1 r1 24
	mtc1	r0 f3
	multi r3 r7 4
	lwoc1	r2 r7 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28833
	addi	r0 r7 1
	j	bfle_nontail_cont.28834
bfle_nontail_else.28833:
	addi	r0 r7 0
bfle_nontail_cont.28834:
	addi	r0 r8 0
	sub	r1 r8 r25
	beq	r25 r0 beq_else.28835
	addi	r0 r1 0
	sub	r7 r1 r25
	beq	r25 r0 beq_else.28837
	addi	r0 r1 0
	j	beq_cont.28838
beq_else.28837:
	addi	r0 r1 1
beq_cont.28838:
	j	beq_cont.28836
beq_else.28835:
	mov	r1 r7
beq_cont.28836:
	multi r3 r7 4
	lwoc1	r6 r7 f3
	addi	r0 r7 0
	sub	r1 r7 r25
	beq	r25 r0 beq_else.28839
	j	beq_cont.28840
beq_else.28839:
	neg.s	f3 f3
beq_cont.28840:
	sub.s	f3 f2 f2
	multi r3 r1 4
	lwoc1	r2 r1 f3
	div.s	f2 f3 f2
	multi r4 r1 4
	lwoc1	r6 r1 f3
	multi r4 r1 4
	lwoc1	r2 r1 f4
	mul.s	f2 f4 f4
	add.s	f4 f0 f0
	abs.s	f0 f0
	sub.s	f3 f0 f0
	mtc1	r0 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28841
	addi	r0 r1 1
	j	bfle_nontail_cont.28842
bfle_nontail_else.28841:
	addi	r0 r1 0
bfle_nontail_cont.28842:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28843
	multi r5 r1 4
	lwoc1	r6 r1 f0
	multi r5 r1 4
	lwoc1	r2 r1 f3
	mul.s	f2 f3 f3
	add.s	f3 f1 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28845
	addi	r0 r1 1
	j	bfle_nontail_cont.28846
bfle_nontail_else.28845:
	addi	r0 r1 0
bfle_nontail_cont.28846:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28847
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	multi r2 r2 4
	swoc1	f2 r1 r2
	addi	r0 r1 1
	j	beq_cont.28848
beq_else.28847:
	addi	r0 r1 0
beq_cont.28848:
	j	beq_cont.28844
beq_else.28843:
	addi	r0 r1 0
beq_cont.28844:
beq_cont.28832:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28849
	addi	r0 r1 3
	jr	r31
beq_tail_else.28849:
	addi	r0 r1 0
	jr	r31
solver_rect_fast.2937:
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f3
	sub.s	f3 f0 f3
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f4
	mul.s	f3 f4 f3
	lw	r1 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f4
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f5
	mul.s	f3 f5 f5
	add.s	f5 f1 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28850
	addi	r0 r4 1
	j	bfle_nontail_cont.28851
bfle_nontail_else.28850:
	addi	r0 r4 0
bfle_nontail_cont.28851:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28852
	lw	r1 r4 16
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f4
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28854
	addi	r0 r4 1
	j	bfle_nontail_cont.28855
bfle_nontail_else.28854:
	addi	r0 r4 0
bfle_nontail_cont.28855:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28856
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28858
	addi	r0 r4 0
	j	bfeq_nontail_cont.28859
bfeq_nontail_else.28858:
	addi	r0 r4 1
bfeq_nontail_cont.28859:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28860
	addi	r0 r4 0
	j	beq_cont.28861
beq_else.28860:
	addi	r0 r4 1
beq_cont.28861:
	j	beq_cont.28857
beq_else.28856:
	addi	r0 r4 0
beq_cont.28857:
	j	beq_cont.28853
beq_else.28852:
	addi	r0 r4 0
beq_cont.28853:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.28862
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	multi r2 r2 4
	swoc1	f3 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.28862:
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f3
	sub.s	f3 f1 f3
	addi	r0 r4 3
	multi r4 r4 4
	lwoc1	r3 r4 f4
	mul.s	f3 f4 f3
	lw	r1 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f4
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f5
	mul.s	f3 f5 f5
	add.s	f5 f0 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28863
	addi	r0 r4 1
	j	bfle_nontail_cont.28864
bfle_nontail_else.28863:
	addi	r0 r4 0
bfle_nontail_cont.28864:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28865
	lw	r1 r4 16
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f4
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28867
	addi	r0 r4 1
	j	bfle_nontail_cont.28868
bfle_nontail_else.28867:
	addi	r0 r4 0
bfle_nontail_cont.28868:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28869
	addi	r0 r4 3
	multi r4 r4 4
	lwoc1	r3 r4 f4
	mtc1	r0 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28871
	addi	r0 r4 0
	j	bfeq_nontail_cont.28872
bfeq_nontail_else.28871:
	addi	r0 r4 1
bfeq_nontail_cont.28872:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28873
	addi	r0 r4 0
	j	beq_cont.28874
beq_else.28873:
	addi	r0 r4 1
beq_cont.28874:
	j	beq_cont.28870
beq_else.28869:
	addi	r0 r4 0
beq_cont.28870:
	j	beq_cont.28866
beq_else.28865:
	addi	r0 r4 0
beq_cont.28866:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.28875
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	multi r2 r2 4
	swoc1	f3 r1 r2
	addi	r0 r1 2
	jr	r31
beq_tail_else.28875:
	addi	r0 r4 4
	multi r4 r4 4
	lwoc1	r3 r4 f3
	sub.s	f3 f2 f2
	addi	r0 r4 5
	multi r4 r4 4
	lwoc1	r3 r4 f3
	mul.s	f2 f3 f2
	lw	r1 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f3
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f4
	mul.s	f2 f4 f4
	add.s	f4 f0 f0
	abs.s	f0 f0
	sub.s	f3 f0 f0
	mtc1	r0 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28876
	addi	r0 r4 1
	j	bfle_nontail_cont.28877
bfle_nontail_else.28876:
	addi	r0 r4 0
bfle_nontail_cont.28877:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28878
	lw	r1 r1 16
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r1 r4 f0
	addi	r0 r1 1
	multi r1 r1 4
	lwoc1	r2 r1 f3
	mul.s	f2 f3 f3
	add.s	f3 f1 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28880
	addi	r0 r1 1
	j	bfle_nontail_cont.28881
bfle_nontail_else.28880:
	addi	r0 r1 0
bfle_nontail_cont.28881:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28882
	addi	r0 r1 5
	multi r1 r1 4
	lwoc1	r3 r1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28884
	addi	r0 r1 0
	j	bfeq_nontail_cont.28885
bfeq_nontail_else.28884:
	addi	r0 r1 1
bfeq_nontail_cont.28885:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28886
	addi	r0 r1 0
	j	beq_cont.28887
beq_else.28886:
	addi	r0 r1 1
beq_cont.28887:
	j	beq_cont.28883
beq_else.28882:
	addi	r0 r1 0
beq_cont.28883:
	j	beq_cont.28879
beq_else.28878:
	addi	r0 r1 0
beq_cont.28879:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28888
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	multi r2 r2 4
	swoc1	f2 r1 r2
	addi	r0 r1 3
	jr	r31
beq_tail_else.28888:
	addi	r0 r1 0
	jr	r31
solver_second_fast.2950:
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28889
	addi	r0 r3 0
	j	bfeq_nontail_cont.28890
bfeq_nontail_else.28889:
	addi	r0 r3 1
bfeq_nontail_cont.28890:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28891
	addi	r0 r1 0
	jr	r31
beq_tail_else.28891:
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f4
	mul.s	f4 f0 f4
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f5
	mul.s	f5 f1 f5
	add.s	f4 f5 f4
	addi	r0 r3 3
	multi r3 r3 4
	lwoc1	r2 r3 f5
	mul.s	f5 f2 f5
	add.s	f4 f5 f4
	mul.s	f0 f0 f5
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f6
	mul.s	f5 f6 f5
	mul.s	f1 f1 f6
	lw	r1 r3 16
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f2 f6
	lw	r1 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28892
	mul.s	f1 f2 f6
	lw	r1 r3 36
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f0 f2
	lw	r1 r3 36
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f6
	mul.s	f2 f6 f2
	add.s	f5 f2 f2
	mul.s	f0 f1 f0
	lw	r1 r3 36
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.28893
beq_else.28892:
	mov.s	f5 f0
beq_cont.28893:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28894
	j	beq_cont.28895
beq_else.28894:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28895:
	mul.s	f4 f4 f1
	mul.s	f3 f0 f0
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28896
	addi	r0 r3 1
	j	bfle_nontail_cont.28897
bfle_nontail_else.28896:
	addi	r0 r3 0
bfle_nontail_cont.28897:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28898
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28899
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sqrt.s	f0 f0
	add.s	f4 f0 f0
	addi	r0 r4 4
	multi r4 r4 4
	lwoc1	r2 r4 f1
	mul.s	f0 f1 f0
	multi r3 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.28900
beq_else.28899:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sqrt.s	f0 f0
	sub.s	f4 f0 f0
	addi	r0 r4 4
	multi r4 r4 4
	lwoc1	r2 r4 f1
	mul.s	f0 f1 f0
	multi r3 r2 4
	swoc1	f0 r1 r2
beq_cont.28900:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28898:
	addi	r0 r1 0
	jr	r31
solver_fast2.2974:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r1 r4 4
	lwo	r3 r4 r3
	lw	r3 r4 40
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f0
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f1
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f2
	lw	r2 r5 4
	multi r1 r1 4
	lwo	r5 r1 r1
	lw	r3 r5 4
	addi	r0 r6 1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.28901
	addi	r0 r2 2
	sub	r5 r2 r25
	beq	r25 r0 beq_tail_else.28902
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28903
	addi	r0 r2 0
	j	bfeq_nontail_cont.28904
bfeq_nontail_else.28903:
	addi	r0 r2 1
bfeq_nontail_cont.28904:
	addi	r0 r5 0
	sub	r2 r5 r25
	beq	r25 r0 beq_tail_else.28905
	addi	r0 r1 0
	jr	r31
beq_tail_else.28905:
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f4
	mul.s	f4 f0 f0
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r2 3
	multi r2 r2 4
	lwoc1	r1 r2 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r2 3
	multi r2 r2 4
	lwoc1	r4 r2 f1
	mul.s	f0 f0 f2
	mul.s	f3 f1 f1
	sub.s	f2 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28906
	addi	r0 r2 1
	j	bfle_nontail_cont.28907
bfle_nontail_else.28906:
	addi	r0 r2 0
bfle_nontail_cont.28907:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.28908
	lw	r3 r2 24
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28909
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sqrt.s	f1 f1
	add.s	f0 f1 f0
	addi	r0 r4 4
	multi r4 r4 4
	lwoc1	r1 r4 f1
	mul.s	f0 f1 f0
	multi r3 r1 4
	swoc1	f0 r2 r1
	j	beq_cont.28910
beq_else.28909:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sqrt.s	f1 f1
	sub.s	f0 f1 f0
	addi	r0 r4 4
	multi r4 r4 4
	lwoc1	r1 r4 f1
	mul.s	f0 f1 f0
	multi r3 r1 4
	swoc1	f0 r2 r1
beq_cont.28910:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28908:
	addi	r0 r1 0
	jr	r31
beq_tail_else.28902:
	mtc1	r0 f0
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28911
	addi	r0 r2 1
	j	bfle_nontail_cont.28912
bfle_nontail_else.28911:
	addi	r0 r2 0
bfle_nontail_cont.28912:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28913
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r1 3
	multi r1 r1 4
	lwoc1	r4 r1 f1
	mul.s	f0 f1 f0
	multi r3 r1 4
	swoc1	f0 r2 r1
	addi	r0 r1 1
	jr	r31
beq_tail_else.28913:
	addi	r0 r1 0
	jr	r31
beq_tail_else.28901:
	lw	r2 r2 0
	mov	r28 r3
	mov	r3 r1
	mov	r1 r28
	j	solver_rect_fast.2937
setup_rect_table.2977:
	addi	r0 r3 6
	mtc1	r0 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28914
	addi	r0 r2 0
	j	bfeq_nontail_cont.28915
bfeq_nontail_else.28914:
	addi	r0 r2 1
bfeq_nontail_cont.28915:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.28916
	addi	r0 r2 1
	mtc1	r0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.28917
beq_else.28916:
	addi	r0 r2 0
	lw	r30 r4 0
	lw	r4 r5 24
	mtc1	r0 f0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r3 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28918
	addi	r0 r6 1
	j	bfle_nontail_cont.28919
bfle_nontail_else.28918:
	addi	r0 r6 0
bfle_nontail_cont.28919:
	addi	r0 r7 0
	sub	r5 r7 r25
	beq	r25 r0 beq_else.28920
	addi	r0 r5 0
	sub	r6 r5 r25
	beq	r25 r0 beq_else.28922
	addi	r0 r5 0
	j	beq_cont.28923
beq_else.28922:
	addi	r0 r5 1
beq_cont.28923:
	j	beq_cont.28921
beq_else.28920:
	mov	r5 r6
beq_cont.28921:
	lw	r4 r6 16
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r6 r7 f0
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28924
	j	beq_cont.28925
beq_else.28924:
	neg.s	f0 f0
beq_cont.28925:
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r0 r2 1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f1
	div.s	f0 f1 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
beq_cont.28917:
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r3 r2 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28926
	addi	r0 r2 0
	j	bfeq_nontail_cont.28927
bfeq_nontail_else.28926:
	addi	r0 r2 1
bfeq_nontail_cont.28927:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.28928
	addi	r0 r2 3
	mtc1	r0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.28929
beq_else.28928:
	addi	r0 r2 2
	lw	r30 r4 0
	lw	r4 r5 24
	mtc1	r0 f0
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28930
	addi	r0 r6 1
	j	bfle_nontail_cont.28931
bfle_nontail_else.28930:
	addi	r0 r6 0
bfle_nontail_cont.28931:
	addi	r0 r7 0
	sub	r5 r7 r25
	beq	r25 r0 beq_else.28932
	addi	r0 r5 0
	sub	r6 r5 r25
	beq	r25 r0 beq_else.28934
	addi	r0 r5 0
	j	beq_cont.28935
beq_else.28934:
	addi	r0 r5 1
beq_cont.28935:
	j	beq_cont.28933
beq_else.28932:
	mov	r5 r6
beq_cont.28933:
	lw	r4 r6 16
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r6 r7 f0
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28936
	j	beq_cont.28937
beq_else.28936:
	neg.s	f0 f0
beq_cont.28937:
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r0 r2 3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f1
	div.s	f0 f1 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
beq_cont.28929:
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28938
	addi	r0 r2 0
	j	bfeq_nontail_cont.28939
bfeq_nontail_else.28938:
	addi	r0 r2 1
bfeq_nontail_cont.28939:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.28940
	addi	r0 r2 5
	mtc1	r0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.28941
beq_else.28940:
	addi	r0 r2 4
	lw	r30 r4 0
	lw	r4 r5 24
	mtc1	r0 f0
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28942
	addi	r0 r6 1
	j	bfle_nontail_cont.28943
bfle_nontail_else.28942:
	addi	r0 r6 0
bfle_nontail_cont.28943:
	addi	r0 r7 0
	sub	r5 r7 r25
	beq	r25 r0 beq_else.28944
	addi	r0 r5 0
	sub	r6 r5 r25
	beq	r25 r0 beq_else.28946
	addi	r0 r5 0
	j	beq_cont.28947
beq_else.28946:
	addi	r0 r5 1
beq_cont.28947:
	j	beq_cont.28945
beq_else.28944:
	mov	r5 r6
beq_cont.28945:
	lw	r4 r4 16
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r4 r6 f0
	addi	r0 r4 0
	sub	r5 r4 r25
	beq	r25 r0 beq_else.28948
	j	beq_cont.28949
beq_else.28948:
	neg.s	f0 f0
beq_cont.28949:
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r0 r2 5
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f1
	div.s	f0 f1 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
beq_cont.28941:
	jr	r31
setup_surface_table.2980:
	addi	r0 r3 4
	mtc1	r0 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	lw	r30 r2 0
	lw	r2 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f1
	lw	r2 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f1
	lw	r2 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28950
	addi	r0 r3 1
	j	bfle_nontail_cont.28951
bfle_nontail_else.28950:
	addi	r0 r3 0
bfle_nontail_cont.28951:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28952
	addi	r0 r3 0
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 1
	lw	r2 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f1
	div.s	f1 f0 f1
	neg.s	f1 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 2
	lw	r2 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f1
	div.s	f1 f0 f1
	neg.s	f1 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 3
	lw	r2 r2 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f1
	div.s	f1 f0 f0
	neg.s	f0 f0
	multi r3 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.28953
beq_else.28952:
	addi	r0 r2 0
	mtc1	r0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
beq_cont.28953:
	jr	r31
setup_second_table.2983:
	addi	r0 r3 5
	mtc1	r0 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r3 r2 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f2
	mul.s	f0 f0 f3
	lw	r30 r2 0
	lw	r2 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f4
	mul.s	f3 f4 f3
	mul.s	f1 f1 f4
	lw	r2 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f2 f4
	lw	r2 r4 16
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	lw	r2 r4 12
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28954
	mul.s	f1 f2 f4
	lw	r2 r4 36
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f0 f2
	lw	r2 r4 36
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f4
	mul.s	f2 f4 f2
	add.s	f3 f2 f2
	mul.s	f0 f1 f0
	lw	r2 r4 36
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.28955
beq_else.28954:
	mov.s	f3 f0
beq_cont.28955:
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	lw	r2 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f2
	mul.s	f1 f2 f1
	neg.s	f1 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f2
	lw	r2 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f3
	mul.s	f2 f3 f2
	neg.s	f2 f2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f3
	lw	r2 r4 16
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f4
	mul.s	f3 f4 f3
	neg.s	f3 f3
	addi	r0 r4 0
	multi r4 r4 4
	swoc1	f0 r1 r4
	lw	r2 r4 12
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28956
	addi	r0 r4 1
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r3 r5 f4
	lw	r2 r5 36
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f5
	lw	r2 r5 36
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r5 r6 f6
	mul.s	f5 f6 f5
	add.s	f4 f5 f4
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f5
	mul.s	f4 f5 f4
	sub.s	f1 f4 f1
	multi r4 r4 4
	swoc1	f1 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r3 r5 f1
	lw	r2 r5 36
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r5 r6 f4
	mul.s	f1 f4 f1
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f4
	lw	r2 r5 36
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	add.s	f1 f4 f1
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	mul.s	f1 f4 f1
	sub.s	f2 f1 f1
	multi r4 r4 4
	swoc1	f1 r1 r4
	addi	r0 r4 3
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f1
	lw	r2 r5 36
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r5 r6 f2
	mul.s	f1 f2 f1
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f2
	lw	r2 r2 36
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f4
	mul.s	f2 f4 f2
	add.s	f1 f2 f1
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f2
	mul.s	f1 f2 f1
	sub.s	f3 f1 f1
	multi r4 r2 4
	swoc1	f1 r1 r2
	j	beq_cont.28957
beq_else.28956:
	addi	r0 r2 1
	multi r2 r2 4
	swoc1	f1 r1 r2
	addi	r0 r2 2
	multi r2 r2 4
	swoc1	f2 r1 r2
	addi	r0 r2 3
	multi r2 r2 4
	swoc1	f3 r1 r2
beq_cont.28957:
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.28958
	addi	r0 r2 0
	j	bfeq_nontail_cont.28959
bfeq_nontail_else.28958:
	addi	r0 r2 1
bfeq_nontail_cont.28959:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28960
	j	beq_cont.28961
beq_else.28960:
	addi	r0 r2 4
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
beq_cont.28961:
	jr	r31
iter_setup_dirvec_constants.2986:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.28962
	jr	r31
ble_tail_else.28962:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r2 r4 4
	lwo	r3 r4 r3
	lw	r1 r4 4
	lw	r1 r5 0
	lw	r3 r6 4
	addi	r0 r7 1
	sw	r1 r30 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28964
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28966
	sw	r4 r30 4
	sw	r2 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	mov	r1 r5
	jal	setup_second_table.2983
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 8
	multi r2 r3 4
	lw	r30 r4 4
	swo	r1 r4 r3
	j	beq_cont.28967
beq_else.28966:
	addi	r0 r6 4
	mtc1	r0 f0
	sw	r4 r30 4
	sw	r2 r30 8
	sw	r3 r30 12
	sw	r5 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r6
	jal	min_caml_create_float_array
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 16
	lwoc1	r3 r2 f0
	lw	r30 r2 12
	lw	r2 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f1
	lw	r2 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f1
	lw	r2 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28968
	addi	r0 r3 1
	j	bfle_nontail_cont.28969
bfle_nontail_else.28968:
	addi	r0 r3 0
bfle_nontail_cont.28969:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28970
	addi	r0 r3 0
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 1
	lw	r2 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f1
	div.s	f1 f0 f1
	neg.s	f1 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 2
	lw	r2 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f1
	div.s	f1 f0 f1
	neg.s	f1 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 3
	lw	r2 r2 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f1
	div.s	f1 f0 f0
	neg.s	f0 f0
	multi r3 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.28971
beq_else.28970:
	addi	r0 r2 0
	mtc1	r0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
beq_cont.28971:
	lw	r30 r2 8
	multi r2 r3 4
	lw	r30 r4 4
	swo	r1 r4 r3
beq_cont.28967:
	j	beq_cont.28965
beq_else.28964:
	sw	r4 r30 4
	sw	r2 r30 8
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	mov	r1 r5
	jal	setup_rect_table.2977
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 8
	multi r2 r3 4
	lw	r30 r4 4
	swo	r1 r4 r3
beq_cont.28965:
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28972
	jr	r31
ble_tail_else.28972:
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r3 4
	lwo	r2 r3 r2
	lw	r30 r3 0
	lw	r3 r4 4
	lw	r3 r5 0
	lw	r2 r6 4
	addi	r0 r7 1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28974
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28976
	sw	r4 r30 20
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r5
	jal	setup_second_table.2983
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 24
	multi r2 r3 4
	lw	r30 r4 20
	swo	r1 r4 r3
	j	beq_cont.28977
beq_else.28976:
	sw	r4 r30 20
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r5
	jal	setup_surface_table.2980
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 24
	multi r2 r3 4
	lw	r30 r4 20
	swo	r1 r4 r3
beq_cont.28977:
	j	beq_cont.28975
beq_else.28974:
	sw	r4 r30 20
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r5
	jal	setup_rect_table.2977
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 24
	multi r2 r3 4
	lw	r30 r4 20
	swo	r1 r4 r3
beq_cont.28975:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 0
	j	iter_setup_dirvec_constants.2986
setup_startp_constants.2991:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.28978
	jr	r31
ble_tail_else.28978:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r2 r4 4
	lwo	r3 r4 r3
	lw	r3 r4 40
	lw	r3 r5 4
	addi	r0 r6 0
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r1 r7 f0
	lw	r3 r7 20
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	multi r6 r6 4
	swoc1	f0 r4 r6
	addi	r0 r6 1
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r1 r7 f0
	lw	r3 r7 20
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	multi r6 r6 4
	swoc1	f0 r4 r6
	addi	r0 r6 2
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r1 r7 f0
	lw	r3 r7 20
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	multi r6 r6 4
	swoc1	f0 r4 r6
	addi	r0 r6 2
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28980
	addi	r0 r6 2
	sub	r5 r6 r25
	blez	r25 ble_nontail_else.28982
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r4 r6 f0
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r4 r6 f1
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r4 r6 f2
	mul.s	f0 f0 f3
	lw	r3 r6 16
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r6 r7 f4
	mul.s	f3 f4 f3
	mul.s	f1 f1 f4
	lw	r3 r6 16
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r6 r7 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f2 f4
	lw	r3 r6 16
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r6 r7 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	lw	r3 r6 12
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28984
	mul.s	f1 f2 f4
	lw	r3 r6 36
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r6 r7 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f0 f2
	lw	r3 r6 36
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r6 r7 f4
	mul.s	f2 f4 f2
	add.s	f3 f2 f2
	mul.s	f0 f1 f0
	lw	r3 r3 36
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.28985
beq_else.28984:
	mov.s	f3 f0
beq_cont.28985:
	addi	r0 r3 3
	addi	r0 r6 3
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28986
	j	beq_cont.28987
beq_else.28986:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28987:
	multi r3 r3 4
	swoc1	f0 r4 r3
	j	ble_nontail_cont.28983
ble_nontail_else.28982:
ble_nontail_cont.28983:
	j	beq_cont.28981
beq_else.28980:
	addi	r0 r5 3
	lw	r3 r3 16
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r4 r6 f0
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r4 r6 f1
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r4 r6 f2
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r3 r6 f3
	mul.s	f3 f0 f0
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r3 4
	swoc1	f0 r4 r3
beq_cont.28981:
	addi	r0 r3 1
	sub	r2 r3 r2
	j	setup_startp_constants.2991
is_outside.3011:
	lw	r1 r2 20
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f3
	sub.s	f0 f3 f0
	lw	r1 r2 20
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f3
	sub.s	f1 f3 f1
	lw	r1 r2 20
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f3
	sub.s	f2 f3 f2
	lw	r1 r2 4
	addi	r0 r3 1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28988
	addi	r0 r3 2
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28989
	mul.s	f0 f0 f3
	lw	r1 r2 16
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f4
	mul.s	f3 f4 f3
	mul.s	f1 f1 f4
	lw	r1 r2 16
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f2 f4
	lw	r1 r2 16
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28990
	mul.s	f1 f2 f4
	lw	r1 r2 36
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f0 f2
	lw	r1 r2 36
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f4
	mul.s	f2 f4 f2
	add.s	f3 f2 f2
	mul.s	f0 f1 f0
	lw	r1 r2 36
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.28991
beq_else.28990:
	mov.s	f3 f0
beq_cont.28991:
	lw	r1 r2 4
	addi	r0 r3 3
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28992
	j	beq_cont.28993
beq_else.28992:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28993:
	lw	r1 r1 24
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28994
	addi	r0 r2 1
	j	bfle_nontail_cont.28995
bfle_nontail_else.28994:
	addi	r0 r2 0
bfle_nontail_cont.28995:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28996
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_else.28998
	addi	r0 r1 0
	j	beq_cont.28999
beq_else.28998:
	addi	r0 r1 1
beq_cont.28999:
	j	beq_cont.28997
beq_else.28996:
	mov	r1 r2
beq_cont.28997:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29000
	addi	r0 r1 0
	jr	r31
beq_tail_else.29000:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28989:
	lw	r1 r2 16
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f3
	mul.s	f3 f0 f0
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lw	r1 r1 24
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29001
	addi	r0 r2 1
	j	bfle_nontail_cont.29002
bfle_nontail_else.29001:
	addi	r0 r2 0
bfle_nontail_cont.29002:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29003
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_else.29005
	addi	r0 r1 0
	j	beq_cont.29006
beq_else.29005:
	addi	r0 r1 1
beq_cont.29006:
	j	beq_cont.29004
beq_else.29003:
	mov	r1 r2
beq_cont.29004:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29007
	addi	r0 r1 0
	jr	r31
beq_tail_else.29007:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28988:
	lw	r1 r2 16
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f3
	abs.s	f0 f0
	sub.s	f3 f0 f0
	mtc1	r0 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29008
	addi	r0 r2 1
	j	bfle_nontail_cont.29009
bfle_nontail_else.29008:
	addi	r0 r2 0
bfle_nontail_cont.29009:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29010
	lw	r1 r2 16
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f0
	abs.s	f1 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29012
	addi	r0 r2 1
	j	bfle_nontail_cont.29013
bfle_nontail_else.29012:
	addi	r0 r2 0
bfle_nontail_cont.29013:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29014
	lw	r1 r2 16
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f0
	abs.s	f2 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29016
	addi	r0 r2 1
	j	bfle_nontail_cont.29017
bfle_nontail_else.29016:
	addi	r0 r2 0
bfle_nontail_cont.29017:
	j	beq_cont.29015
beq_else.29014:
	addi	r0 r2 0
beq_cont.29015:
	j	beq_cont.29011
beq_else.29010:
	addi	r0 r2 0
beq_cont.29011:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.29018
	lw	r1 r1 24
	jr	r31
beq_tail_else.29018:
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29019
	addi	r0 r1 0
	jr	r31
beq_tail_else.29019:
	addi	r0 r1 1
	jr	r31
check_all_inside.3016:
	multi r1 r3 4
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29020
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r3 r3 4
	lwo	r4 r3 r3
	lw	r3 r4 20
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f3
	sub.s	f0 f3 f3
	lw	r3 r4 20
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f4
	sub.s	f1 f4 f4
	lw	r3 r4 20
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f5
	sub.s	f2 f5 f5
	lw	r3 r4 4
	addi	r0 r5 1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29021
	addi	r0 r5 2
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29023
	mul.s	f3 f3 f6
	lw	r3 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f7
	mul.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r3 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f5 f7
	lw	r3 r4 16
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r3 r4 12
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29025
	mul.s	f4 f5 f7
	lw	r3 r4 36
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f3 f5
	lw	r3 r4 36
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f7
	mul.s	f5 f7 f5
	add.s	f6 f5 f5
	mul.s	f3 f4 f3
	lw	r3 r4 36
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f4
	mul.s	f3 f4 f3
	add.s	f5 f3 f3
	j	beq_cont.29026
beq_else.29025:
	mov.s	f6 f3
beq_cont.29026:
	lw	r3 r4 4
	addi	r0 r5 3
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29027
	j	beq_cont.29028
beq_else.29027:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f3
beq_cont.29028:
	lw	r3 r3 24
	mtc1	r0 f4
	sub.s	f4 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29029
	addi	r0 r4 1
	j	bfle_nontail_cont.29030
bfle_nontail_else.29029:
	addi	r0 r4 0
bfle_nontail_cont.29030:
	addi	r0 r5 0
	sub	r3 r5 r25
	beq	r25 r0 beq_else.29031
	addi	r0 r3 0
	sub	r4 r3 r25
	beq	r25 r0 beq_else.29033
	addi	r0 r3 0
	j	beq_cont.29034
beq_else.29033:
	addi	r0 r3 1
beq_cont.29034:
	j	beq_cont.29032
beq_else.29031:
	mov	r3 r4
beq_cont.29032:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29035
	addi	r0 r3 0
	j	beq_cont.29036
beq_else.29035:
	addi	r0 r3 1
beq_cont.29036:
	j	beq_cont.29024
beq_else.29023:
	lw	r3 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f6
	mul.s	f6 f3 f3
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f6
	mul.s	f6 f4 f4
	add.s	f3 f4 f3
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f4
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	lw	r3 r3 24
	mtc1	r0 f4
	sub.s	f4 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29037
	addi	r0 r4 1
	j	bfle_nontail_cont.29038
bfle_nontail_else.29037:
	addi	r0 r4 0
bfle_nontail_cont.29038:
	addi	r0 r5 0
	sub	r3 r5 r25
	beq	r25 r0 beq_else.29039
	addi	r0 r3 0
	sub	r4 r3 r25
	beq	r25 r0 beq_else.29041
	addi	r0 r3 0
	j	beq_cont.29042
beq_else.29041:
	addi	r0 r3 1
beq_cont.29042:
	j	beq_cont.29040
beq_else.29039:
	mov	r3 r4
beq_cont.29040:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29043
	addi	r0 r3 0
	j	beq_cont.29044
beq_else.29043:
	addi	r0 r3 1
beq_cont.29044:
beq_cont.29024:
	j	beq_cont.29022
beq_else.29021:
	lw	r3 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f6
	abs.s	f3 f3
	sub.s	f6 f3 f3
	mtc1	r0 f6
	sub.s	f3 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29045
	addi	r0 r4 1
	j	bfle_nontail_cont.29046
bfle_nontail_else.29045:
	addi	r0 r4 0
bfle_nontail_cont.29046:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29047
	lw	r3 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f3
	abs.s	f4 f4
	sub.s	f3 f4 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29049
	addi	r0 r4 1
	j	bfle_nontail_cont.29050
bfle_nontail_else.29049:
	addi	r0 r4 0
bfle_nontail_cont.29050:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29051
	lw	r3 r4 16
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f3
	abs.s	f5 f4
	sub.s	f3 f4 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29053
	addi	r0 r4 1
	j	bfle_nontail_cont.29054
bfle_nontail_else.29053:
	addi	r0 r4 0
bfle_nontail_cont.29054:
	j	beq_cont.29052
beq_else.29051:
	addi	r0 r4 0
beq_cont.29052:
	j	beq_cont.29048
beq_else.29047:
	addi	r0 r4 0
beq_cont.29048:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29055
	lw	r3 r3 24
	j	beq_cont.29056
beq_else.29055:
	lw	r3 r3 24
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29057
	addi	r0 r3 0
	j	beq_cont.29058
beq_else.29057:
	addi	r0 r3 1
beq_cont.29058:
beq_cont.29056:
beq_cont.29022:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29059
	addi	r0 r1 0
	jr	r31
beq_tail_else.29059:
	addi	r0 r3 1
	add	r1 r3 r1
	multi r1 r3 4
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29060
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r3 r3 4
	lwo	r4 r3 r3
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	is_outside.3011
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29061
	addi	r0 r1 0
	jr	r31
beq_tail_else.29061:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 12
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29062
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r2 r2 4
	lwo	r4 r2 r2
	lw	r2 r4 20
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lw	r2 r4 20
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f2
	lwc1	 r30 f3 4
	sub.s	f3 f2 f2
	lw	r2 r4 20
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f4
	lwc1	 r30 f5 0
	sub.s	f5 f4 f4
	lw	r2 r4 4
	addi	r0 r5 1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29063
	addi	r0 r5 2
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29065
	mul.s	f0 f0 f6
	lw	r2 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f7
	mul.s	f6 f7 f6
	mul.s	f2 f2 f7
	lw	r2 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r2 r4 16
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r2 r4 12
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29067
	mul.s	f2 f4 f7
	lw	r2 r4 36
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f0 f4
	lw	r2 r4 36
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f7
	mul.s	f4 f7 f4
	add.s	f6 f4 f4
	mul.s	f0 f2 f0
	lw	r2 r4 36
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f2
	mul.s	f0 f2 f0
	add.s	f4 f0 f0
	j	beq_cont.29068
beq_else.29067:
	mov.s	f6 f0
beq_cont.29068:
	lw	r2 r4 4
	addi	r0 r5 3
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29069
	j	beq_cont.29070
beq_else.29069:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29070:
	lw	r2 r2 24
	mtc1	r0 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29071
	addi	r0 r4 1
	j	bfle_nontail_cont.29072
bfle_nontail_else.29071:
	addi	r0 r4 0
bfle_nontail_cont.29072:
	addi	r0 r5 0
	sub	r2 r5 r25
	beq	r25 r0 beq_else.29073
	addi	r0 r2 0
	sub	r4 r2 r25
	beq	r25 r0 beq_else.29075
	addi	r0 r2 0
	j	beq_cont.29076
beq_else.29075:
	addi	r0 r2 1
beq_cont.29076:
	j	beq_cont.29074
beq_else.29073:
	mov	r2 r4
beq_cont.29074:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29077
	addi	r0 r2 0
	j	beq_cont.29078
beq_else.29077:
	addi	r0 r2 1
beq_cont.29078:
	j	beq_cont.29066
beq_else.29065:
	lw	r2 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f6
	mul.s	f6 f0 f0
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f6
	mul.s	f6 f2 f2
	add.s	f0 f2 f0
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f2
	mul.s	f2 f4 f2
	add.s	f0 f2 f0
	lw	r2 r2 24
	mtc1	r0 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29079
	addi	r0 r4 1
	j	bfle_nontail_cont.29080
bfle_nontail_else.29079:
	addi	r0 r4 0
bfle_nontail_cont.29080:
	addi	r0 r5 0
	sub	r2 r5 r25
	beq	r25 r0 beq_else.29081
	addi	r0 r2 0
	sub	r4 r2 r25
	beq	r25 r0 beq_else.29083
	addi	r0 r2 0
	j	beq_cont.29084
beq_else.29083:
	addi	r0 r2 1
beq_cont.29084:
	j	beq_cont.29082
beq_else.29081:
	mov	r2 r4
beq_cont.29082:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29085
	addi	r0 r2 0
	j	beq_cont.29086
beq_else.29085:
	addi	r0 r2 1
beq_cont.29086:
beq_cont.29066:
	j	beq_cont.29064
beq_else.29063:
	lw	r2 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f6
	abs.s	f0 f0
	sub.s	f6 f0 f0
	mtc1	r0 f6
	sub.s	f0 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29087
	addi	r0 r4 1
	j	bfle_nontail_cont.29088
bfle_nontail_else.29087:
	addi	r0 r4 0
bfle_nontail_cont.29088:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29089
	lw	r2 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f0
	abs.s	f2 f2
	sub.s	f0 f2 f0
	mtc1	r0 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29091
	addi	r0 r4 1
	j	bfle_nontail_cont.29092
bfle_nontail_else.29091:
	addi	r0 r4 0
bfle_nontail_cont.29092:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29093
	lw	r2 r4 16
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f0
	abs.s	f4 f2
	sub.s	f0 f2 f0
	mtc1	r0 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29095
	addi	r0 r4 1
	j	bfle_nontail_cont.29096
bfle_nontail_else.29095:
	addi	r0 r4 0
bfle_nontail_cont.29096:
	j	beq_cont.29094
beq_else.29093:
	addi	r0 r4 0
beq_cont.29094:
	j	beq_cont.29090
beq_else.29089:
	addi	r0 r4 0
beq_cont.29090:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29097
	lw	r2 r2 24
	j	beq_cont.29098
beq_else.29097:
	lw	r2 r2 24
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29099
	addi	r0 r2 0
	j	beq_cont.29100
beq_else.29099:
	addi	r0 r2 1
beq_cont.29100:
beq_cont.29098:
beq_cont.29064:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29101
	addi	r0 r1 0
	jr	r31
beq_tail_else.29101:
	addi	r0 r2 1
	add	r1 r2 r1
	multi r1 r2 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29102
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r2 r2 4
	lwo	r4 r2 r2
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	mov.s	f5 f2
	mov.s	f1 f0
	mov.s	f3 f1
	jal	is_outside.3011
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29103
	addi	r0 r1 0
	jr	r31
beq_tail_else.29103:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r1
	lwc1	 r30 f0 8
	lwc1	 r30 f1 4
	lwc1	 r30 f2 0
	lw	r30 r2 12
	j	check_all_inside.3016
beq_tail_else.29102:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29062:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29060:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29020:
	addi	r0 r1 1
	jr	r31
shadow_check_and_group.3022:
	multi r1 r3 4
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29104
	multi r1 r3 4
	lwo	r2 r3 r3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r3 r7 4
	lwo	r6 r7 r6
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r5 r7 f0
	lw	r6 r7 20
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r5 r7 f1
	lw	r6 r7 20
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r7 r8 f2
	sub.s	f1 f2 f1
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r5 r7 f2
	lw	r6 r5 20
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r5 r7 f3
	sub.s	f2 f3 f2
	lw	r4 r5 4
	multi r3 r7 4
	lwo	r5 r7 r5
	lw	r6 r7 4
	addi	r0 r8 1
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	sub	r7 r8 r25
	beq	r25 r0 beq_else.29105
	addi	r0 r4 2
	sub	r7 r4 r25
	beq	r25 r0 beq_else.29107
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r5
	mov	r1 r6
	jal	solver_second_fast.2950
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.29108
beq_else.29107:
	mtc1	r0 f3
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r5 r4 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29109
	addi	r0 r4 1
	j	bfle_nontail_cont.29110
bfle_nontail_else.29109:
	addi	r0 r4 0
bfle_nontail_cont.29110:
	addi	r0 r6 0
	sub	r4 r6 r25
	beq	r25 r0 beq_else.29111
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r6 0
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r5 r7 f3
	mul.s	f3 f0 f0
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r5 r7 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r7 3
	multi r7 r7 4
	lwoc1	r5 r7 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r6 r5 4
	swoc1	f0 r4 r5
	addi	r0 r1 1
	j	beq_cont.29112
beq_else.29111:
	addi	r0 r1 0
beq_cont.29112:
beq_cont.29108:
	j	beq_cont.29106
beq_else.29105:
	lw	r4 r4 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r3 r5
	mov	r2 r4
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29106:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f0
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29113
	lui	r24 48716
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f1 f0 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29115
	addi	r0 r1 1
	j	bfle_nontail_cont.29116
bfle_nontail_else.29115:
	addi	r0 r1 0
bfle_nontail_cont.29116:
	j	beq_cont.29114
beq_else.29113:
	addi	r0 r1 0
beq_cont.29114:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29117
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f1
	add.s	f0 f1 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	mul.s	f1 f0 f1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f2
	add.s	f1 f2 f1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f2
	mul.s	f2 f0 f2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f3
	add.s	f2 f3 f2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f3
	mul.s	f3 f0 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r0 r1 0
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29118
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	swc1	f0 r30 12
	swc1	f2 r30 16
	swc1	f1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f2 f31
	mov.s	f0 f2
	mov.s	f1 f0
	mov.s	f31 f1
	jal	is_outside.3011
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29120
	addi	r0 r1 0
	j	beq_cont.29121
beq_else.29120:
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29122
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	lw	r1 r3 20
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f0
	lwc1	 r30 f1 20
	sub.s	f1 f0 f0
	lw	r1 r3 20
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f2
	lwc1	 r30 f3 16
	sub.s	f3 f2 f2
	lw	r1 r3 20
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f4
	lwc1	 r30 f5 12
	sub.s	f5 f4 f4
	lw	r1 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29124
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29126
	mul.s	f0 f0 f6
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	mul.s	f2 f2 f7
	lw	r1 r3 16
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r1 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29128
	mul.s	f2 f4 f7
	lw	r1 r3 36
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f0 f4
	lw	r1 r3 36
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f4 f7 f4
	add.s	f6 f4 f4
	mul.s	f0 f2 f0
	lw	r1 r3 36
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f2
	mul.s	f0 f2 f0
	add.s	f4 f0 f0
	j	beq_cont.29129
beq_else.29128:
	mov.s	f6 f0
beq_cont.29129:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29130
	j	beq_cont.29131
beq_else.29130:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29131:
	lw	r1 r1 24
	mtc1	r0 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29132
	addi	r0 r3 1
	j	bfle_nontail_cont.29133
bfle_nontail_else.29132:
	addi	r0 r3 0
bfle_nontail_cont.29133:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29134
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29136
	addi	r0 r1 0
	j	beq_cont.29137
beq_else.29136:
	addi	r0 r1 1
beq_cont.29137:
	j	beq_cont.29135
beq_else.29134:
	mov	r1 r3
beq_cont.29135:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29138
	addi	r0 r1 0
	j	beq_cont.29139
beq_else.29138:
	addi	r0 r1 1
beq_cont.29139:
	j	beq_cont.29127
beq_else.29126:
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f6
	mul.s	f6 f0 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f6
	mul.s	f6 f2 f2
	add.s	f0 f2 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f2
	mul.s	f2 f4 f2
	add.s	f0 f2 f0
	lw	r1 r1 24
	mtc1	r0 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29140
	addi	r0 r3 1
	j	bfle_nontail_cont.29141
bfle_nontail_else.29140:
	addi	r0 r3 0
bfle_nontail_cont.29141:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29142
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29144
	addi	r0 r1 0
	j	beq_cont.29145
beq_else.29144:
	addi	r0 r1 1
beq_cont.29145:
	j	beq_cont.29143
beq_else.29142:
	mov	r1 r3
beq_cont.29143:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29146
	addi	r0 r1 0
	j	beq_cont.29147
beq_else.29146:
	addi	r0 r1 1
beq_cont.29147:
beq_cont.29127:
	j	beq_cont.29125
beq_else.29124:
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f6
	abs.s	f0 f0
	sub.s	f6 f0 f0
	mtc1	r0 f6
	sub.s	f0 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29148
	addi	r0 r3 1
	j	bfle_nontail_cont.29149
bfle_nontail_else.29148:
	addi	r0 r3 0
bfle_nontail_cont.29149:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29150
	lw	r1 r3 16
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f0
	abs.s	f2 f2
	sub.s	f0 f2 f0
	mtc1	r0 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29152
	addi	r0 r3 1
	j	bfle_nontail_cont.29153
bfle_nontail_else.29152:
	addi	r0 r3 0
bfle_nontail_cont.29153:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29154
	lw	r1 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f0
	abs.s	f4 f2
	sub.s	f0 f2 f0
	mtc1	r0 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29156
	addi	r0 r3 1
	j	bfle_nontail_cont.29157
bfle_nontail_else.29156:
	addi	r0 r3 0
bfle_nontail_cont.29157:
	j	beq_cont.29155
beq_else.29154:
	addi	r0 r3 0
beq_cont.29155:
	j	beq_cont.29151
beq_else.29150:
	addi	r0 r3 0
beq_cont.29151:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29158
	lw	r1 r1 24
	j	beq_cont.29159
beq_else.29158:
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29160
	addi	r0 r1 0
	j	beq_cont.29161
beq_else.29160:
	addi	r0 r1 1
beq_cont.29161:
beq_cont.29159:
beq_cont.29125:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29162
	addi	r0 r1 0
	j	beq_cont.29163
beq_else.29162:
	addi	r0 r1 2
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29164
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f5 f2
	mov.s	f1 f0
	mov.s	f3 f1
	jal	is_outside.3011
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29166
	addi	r0 r1 0
	j	beq_cont.29167
beq_else.29166:
	addi	r0 r1 3
	lwc1	 r30 f0 20
	lwc1	 r30 f1 16
	lwc1	 r30 f2 12
	lw	r30 r2 0
	sw	r31 r30 24
	addi	r30 r30 28
	jal	check_all_inside.3016
	addi	r30 r30 -28
	lw	r30 r31 24
beq_cont.29167:
	j	beq_cont.29165
beq_else.29164:
	addi	r0 r1 1
beq_cont.29165:
beq_cont.29163:
	j	beq_cont.29123
beq_else.29122:
	addi	r0 r1 1
beq_cont.29123:
beq_cont.29121:
	j	beq_cont.29119
beq_else.29118:
	addi	r0 r1 1
beq_cont.29119:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29168
	addi	r0 r1 1
	jr	r31
beq_tail_else.29168:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_and_group.3022
beq_tail_else.29117:
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	lw	r30 r2 8
	multi r2 r2 4
	lwo	r1 r2 r1
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29169
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_and_group.3022
beq_tail_else.29169:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29104:
	addi	r0 r1 0
	jr	r31
shadow_check_one_or_group.3025:
	multi r1 r3 4
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29170
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r3 r3 4
	lwo	r4 r3 r3
	addi	r0 r4 0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r2 r3
	mov	r1 r4
	jal	shadow_check_and_group.3022
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29171
	addi	r0 r1 1
	jr	r31
beq_tail_else.29171:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29172
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r4
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29173
	addi	r0 r1 1
	jr	r31
beq_tail_else.29173:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29174
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r4
	jal	shadow_check_and_group.3022
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29175
	addi	r0 r1 1
	jr	r31
beq_tail_else.29175:
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29176
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r4
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29177
	addi	r0 r1 1
	jr	r31
beq_tail_else.29177:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29178
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r4
	jal	shadow_check_and_group.3022
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29179
	addi	r0 r1 1
	jr	r31
beq_tail_else.29179:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29180
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r4
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29181
	addi	r0 r1 1
	jr	r31
beq_tail_else.29181:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29182
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r4
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29183
	addi	r0 r1 1
	jr	r31
beq_tail_else.29183:
	addi	r0 r1 1
	lw	r30 r2 28
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29184
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r4
	jal	shadow_check_and_group.3022
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29185
	addi	r0 r1 1
	jr	r31
beq_tail_else.29185:
	addi	r0 r1 1
	lw	r30 r2 32
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_one_or_group.3025
beq_tail_else.29184:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29182:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29180:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29178:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29176:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29174:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29172:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29170:
	addi	r0 r1 0
	jr	r31
shadow_check_one_or_matrix.3028:
	multi r1 r3 4
	lwo	r2 r3 r3
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29186
	addi	r0 r5 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29187
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r4 r8 4
	lwo	r7 r8 r7
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r6 r8 f0
	lw	r7 r8 20
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r8 r9 f1
	sub.s	f0 f1 f0
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r6 r8 f1
	lw	r7 r8 20
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r8 r9 f2
	sub.s	f1 f2 f1
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r6 r8 f2
	lw	r7 r6 20
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r6 r8 f3
	sub.s	f2 f3 f2
	lw	r5 r6 4
	multi r4 r4 4
	lwo	r6 r4 r4
	lw	r7 r6 4
	addi	r0 r8 1
	sub	r6 r8 r25
	beq	r25 r0 beq_else.29189
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29191
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.29192
beq_else.29191:
	mtc1	r0 f3
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29193
	addi	r0 r5 1
	j	bfle_nontail_cont.29194
bfle_nontail_else.29193:
	addi	r0 r5 0
bfle_nontail_cont.29194:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29195
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r6 0
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r4 r7 f3
	mul.s	f3 f0 f0
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r4 r7 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r7 3
	multi r7 r7 4
	lwoc1	r4 r7 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r6 r4 4
	swoc1	f0 r5 r4
	addi	r0 r1 1
	j	beq_cont.29196
beq_else.29195:
	addi	r0 r1 0
beq_cont.29196:
beq_cont.29192:
	j	beq_cont.29190
beq_else.29189:
	lw	r5 r5 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29190:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29197
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29199
	addi	r0 r1 1
	j	bfle_nontail_cont.29200
bfle_nontail_else.29199:
	addi	r0 r1 0
bfle_nontail_cont.29200:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29201
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29203
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29205
	addi	r0 r1 1
	j	beq_cont.29206
beq_else.29205:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29207
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29209
	addi	r0 r1 1
	j	beq_cont.29210
beq_else.29209:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29211
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29213
	addi	r0 r1 1
	j	beq_cont.29214
beq_else.29213:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29215
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29217
	addi	r0 r1 1
	j	beq_cont.29218
beq_else.29217:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29219
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29221
	addi	r0 r1 1
	j	beq_cont.29222
beq_else.29221:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29223
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29225
	addi	r0 r1 1
	j	beq_cont.29226
beq_else.29225:
	addi	r0 r1 7
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29227
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29229
	addi	r0 r1 1
	j	beq_cont.29230
beq_else.29229:
	addi	r0 r1 8
	lw	r30 r2 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29230:
	j	beq_cont.29228
beq_else.29227:
	addi	r0 r1 0
beq_cont.29228:
beq_cont.29226:
	j	beq_cont.29224
beq_else.29223:
	addi	r0 r1 0
beq_cont.29224:
beq_cont.29222:
	j	beq_cont.29220
beq_else.29219:
	addi	r0 r1 0
beq_cont.29220:
beq_cont.29218:
	j	beq_cont.29216
beq_else.29215:
	addi	r0 r1 0
beq_cont.29216:
beq_cont.29214:
	j	beq_cont.29212
beq_else.29211:
	addi	r0 r1 0
beq_cont.29212:
beq_cont.29210:
	j	beq_cont.29208
beq_else.29207:
	addi	r0 r1 0
beq_cont.29208:
beq_cont.29206:
	j	beq_cont.29204
beq_else.29203:
	addi	r0 r1 0
beq_cont.29204:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29231
	addi	r0 r1 1
	j	beq_cont.29232
beq_else.29231:
	addi	r0 r1 0
beq_cont.29232:
	j	beq_cont.29202
beq_else.29201:
	addi	r0 r1 0
beq_cont.29202:
	j	beq_cont.29198
beq_else.29197:
	addi	r0 r1 0
beq_cont.29198:
	j	beq_cont.29188
beq_else.29187:
	addi	r0 r1 1
beq_cont.29188:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29233
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29234
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29236
	addi	r0 r1 1
	j	beq_cont.29237
beq_else.29236:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29238
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29240
	addi	r0 r1 1
	j	beq_cont.29241
beq_else.29240:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29242
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29244
	addi	r0 r1 1
	j	beq_cont.29245
beq_else.29244:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29246
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29248
	addi	r0 r1 1
	j	beq_cont.29249
beq_else.29248:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29250
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29252
	addi	r0 r1 1
	j	beq_cont.29253
beq_else.29252:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29254
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29256
	addi	r0 r1 1
	j	beq_cont.29257
beq_else.29256:
	addi	r0 r1 7
	multi r1 r1 4
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29258
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29260
	addi	r0 r1 1
	j	beq_cont.29261
beq_else.29260:
	addi	r0 r1 8
	lw	r30 r2 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29261:
	j	beq_cont.29259
beq_else.29258:
	addi	r0 r1 0
beq_cont.29259:
beq_cont.29257:
	j	beq_cont.29255
beq_else.29254:
	addi	r0 r1 0
beq_cont.29255:
beq_cont.29253:
	j	beq_cont.29251
beq_else.29250:
	addi	r0 r1 0
beq_cont.29251:
beq_cont.29249:
	j	beq_cont.29247
beq_else.29246:
	addi	r0 r1 0
beq_cont.29247:
beq_cont.29245:
	j	beq_cont.29243
beq_else.29242:
	addi	r0 r1 0
beq_cont.29243:
beq_cont.29241:
	j	beq_cont.29239
beq_else.29238:
	addi	r0 r1 0
beq_cont.29239:
beq_cont.29237:
	j	beq_cont.29235
beq_else.29234:
	addi	r0 r1 0
beq_cont.29235:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29262
	addi	r0 r1 1
	jr	r31
beq_tail_else.29262:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29263
	addi	r0 r5 99
	sw	r2 r30 12
	sw	r1 r30 16
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29264
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r4 r8 4
	lwo	r7 r8 r7
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r6 r8 f0
	lw	r7 r8 20
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r8 r9 f1
	sub.s	f0 f1 f0
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r6 r8 f1
	lw	r7 r8 20
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r8 r9 f2
	sub.s	f1 f2 f1
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r6 r8 f2
	lw	r7 r6 20
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r6 r8 f3
	sub.s	f2 f3 f2
	lw	r5 r6 4
	multi r4 r4 4
	lwo	r6 r4 r4
	lw	r7 r6 4
	addi	r0 r8 1
	sub	r6 r8 r25
	beq	r25 r0 beq_else.29266
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29268
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.29269
beq_else.29268:
	mtc1	r0 f3
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29270
	addi	r0 r5 1
	j	bfle_nontail_cont.29271
bfle_nontail_else.29270:
	addi	r0 r5 0
bfle_nontail_cont.29271:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29272
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r6 0
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r4 r7 f3
	mul.s	f3 f0 f0
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r4 r7 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r7 3
	multi r7 r7 4
	lwoc1	r4 r7 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r6 r4 4
	swoc1	f0 r5 r4
	addi	r0 r1 1
	j	beq_cont.29273
beq_else.29272:
	addi	r0 r1 0
beq_cont.29273:
beq_cont.29269:
	j	beq_cont.29267
beq_else.29266:
	lw	r5 r5 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.29267:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29274
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29276
	addi	r0 r1 1
	j	bfle_nontail_cont.29277
bfle_nontail_else.29276:
	addi	r0 r1 0
bfle_nontail_cont.29277:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29278
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29280
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29282
	addi	r0 r1 1
	j	beq_cont.29283
beq_else.29282:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29284
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29286
	addi	r0 r1 1
	j	beq_cont.29287
beq_else.29286:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29288
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29290
	addi	r0 r1 1
	j	beq_cont.29291
beq_else.29290:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29292
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29294
	addi	r0 r1 1
	j	beq_cont.29295
beq_else.29294:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29296
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29298
	addi	r0 r1 1
	j	beq_cont.29299
beq_else.29298:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29300
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29302
	addi	r0 r1 1
	j	beq_cont.29303
beq_else.29302:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.29303:
	j	beq_cont.29301
beq_else.29300:
	addi	r0 r1 0
beq_cont.29301:
beq_cont.29299:
	j	beq_cont.29297
beq_else.29296:
	addi	r0 r1 0
beq_cont.29297:
beq_cont.29295:
	j	beq_cont.29293
beq_else.29292:
	addi	r0 r1 0
beq_cont.29293:
beq_cont.29291:
	j	beq_cont.29289
beq_else.29288:
	addi	r0 r1 0
beq_cont.29289:
beq_cont.29287:
	j	beq_cont.29285
beq_else.29284:
	addi	r0 r1 0
beq_cont.29285:
beq_cont.29283:
	j	beq_cont.29281
beq_else.29280:
	addi	r0 r1 0
beq_cont.29281:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29304
	addi	r0 r1 1
	j	beq_cont.29305
beq_else.29304:
	addi	r0 r1 0
beq_cont.29305:
	j	beq_cont.29279
beq_else.29278:
	addi	r0 r1 0
beq_cont.29279:
	j	beq_cont.29275
beq_else.29274:
	addi	r0 r1 0
beq_cont.29275:
	j	beq_cont.29265
beq_else.29264:
	addi	r0 r1 1
beq_cont.29265:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29306
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29307
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29309
	addi	r0 r1 1
	j	beq_cont.29310
beq_else.29309:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29311
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29313
	addi	r0 r1 1
	j	beq_cont.29314
beq_else.29313:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29315
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29317
	addi	r0 r1 1
	j	beq_cont.29318
beq_else.29317:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29319
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29321
	addi	r0 r1 1
	j	beq_cont.29322
beq_else.29321:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29323
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29325
	addi	r0 r1 1
	j	beq_cont.29326
beq_else.29325:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29327
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29329
	addi	r0 r1 1
	j	beq_cont.29330
beq_else.29329:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.29330:
	j	beq_cont.29328
beq_else.29327:
	addi	r0 r1 0
beq_cont.29328:
beq_cont.29326:
	j	beq_cont.29324
beq_else.29323:
	addi	r0 r1 0
beq_cont.29324:
beq_cont.29322:
	j	beq_cont.29320
beq_else.29319:
	addi	r0 r1 0
beq_cont.29320:
beq_cont.29318:
	j	beq_cont.29316
beq_else.29315:
	addi	r0 r1 0
beq_cont.29316:
beq_cont.29314:
	j	beq_cont.29312
beq_else.29311:
	addi	r0 r1 0
beq_cont.29312:
beq_cont.29310:
	j	beq_cont.29308
beq_else.29307:
	addi	r0 r1 0
beq_cont.29308:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29331
	addi	r0 r1 1
	jr	r31
beq_tail_else.29331:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29306:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29263:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29233:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29332
	addi	r0 r5 99
	sw	r2 r30 20
	sw	r1 r30 24
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29333
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r4 r8 4
	lwo	r7 r8 r7
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r6 r8 f0
	lw	r7 r8 20
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r8 r9 f1
	sub.s	f0 f1 f0
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r6 r8 f1
	lw	r7 r8 20
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r8 r9 f2
	sub.s	f1 f2 f1
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r6 r8 f2
	lw	r7 r6 20
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r6 r8 f3
	sub.s	f2 f3 f2
	lw	r5 r6 4
	multi r4 r4 4
	lwo	r6 r4 r4
	lw	r7 r6 4
	addi	r0 r8 1
	sub	r6 r8 r25
	beq	r25 r0 beq_else.29335
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29337
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -32
	lw	r30 r31 28
	j	beq_cont.29338
beq_else.29337:
	mtc1	r0 f3
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29339
	addi	r0 r5 1
	j	bfle_nontail_cont.29340
bfle_nontail_else.29339:
	addi	r0 r5 0
bfle_nontail_cont.29340:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29341
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r6 0
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r4 r7 f3
	mul.s	f3 f0 f0
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r4 r7 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r7 3
	multi r7 r7 4
	lwoc1	r4 r7 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r6 r4 4
	swoc1	f0 r5 r4
	addi	r0 r1 1
	j	beq_cont.29342
beq_else.29341:
	addi	r0 r1 0
beq_cont.29342:
beq_cont.29338:
	j	beq_cont.29336
beq_else.29335:
	lw	r5 r5 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -32
	lw	r30 r31 28
beq_cont.29336:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29343
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29345
	addi	r0 r1 1
	j	bfle_nontail_cont.29346
bfle_nontail_else.29345:
	addi	r0 r1 0
bfle_nontail_cont.29346:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29347
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29349
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29351
	addi	r0 r1 1
	j	beq_cont.29352
beq_else.29351:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29353
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29355
	addi	r0 r1 1
	j	beq_cont.29356
beq_else.29355:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29357
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29359
	addi	r0 r1 1
	j	beq_cont.29360
beq_else.29359:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29361
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29363
	addi	r0 r1 1
	j	beq_cont.29364
beq_else.29363:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29365
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29367
	addi	r0 r1 1
	j	beq_cont.29368
beq_else.29367:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29369
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29371
	addi	r0 r1 1
	j	beq_cont.29372
beq_else.29371:
	addi	r0 r1 7
	lw	r30 r2 20
	sw	r31 r30 28
	addi	r30 r30 32
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -32
	lw	r30 r31 28
beq_cont.29372:
	j	beq_cont.29370
beq_else.29369:
	addi	r0 r1 0
beq_cont.29370:
beq_cont.29368:
	j	beq_cont.29366
beq_else.29365:
	addi	r0 r1 0
beq_cont.29366:
beq_cont.29364:
	j	beq_cont.29362
beq_else.29361:
	addi	r0 r1 0
beq_cont.29362:
beq_cont.29360:
	j	beq_cont.29358
beq_else.29357:
	addi	r0 r1 0
beq_cont.29358:
beq_cont.29356:
	j	beq_cont.29354
beq_else.29353:
	addi	r0 r1 0
beq_cont.29354:
beq_cont.29352:
	j	beq_cont.29350
beq_else.29349:
	addi	r0 r1 0
beq_cont.29350:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29373
	addi	r0 r1 1
	j	beq_cont.29374
beq_else.29373:
	addi	r0 r1 0
beq_cont.29374:
	j	beq_cont.29348
beq_else.29347:
	addi	r0 r1 0
beq_cont.29348:
	j	beq_cont.29344
beq_else.29343:
	addi	r0 r1 0
beq_cont.29344:
	j	beq_cont.29334
beq_else.29333:
	addi	r0 r1 1
beq_cont.29334:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29375
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29376
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29378
	addi	r0 r1 1
	j	beq_cont.29379
beq_else.29378:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29380
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29382
	addi	r0 r1 1
	j	beq_cont.29383
beq_else.29382:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29384
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29386
	addi	r0 r1 1
	j	beq_cont.29387
beq_else.29386:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29388
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29390
	addi	r0 r1 1
	j	beq_cont.29391
beq_else.29390:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29392
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29394
	addi	r0 r1 1
	j	beq_cont.29395
beq_else.29394:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29396
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29398
	addi	r0 r1 1
	j	beq_cont.29399
beq_else.29398:
	addi	r0 r1 7
	lw	r30 r2 20
	sw	r31 r30 28
	addi	r30 r30 32
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -32
	lw	r30 r31 28
beq_cont.29399:
	j	beq_cont.29397
beq_else.29396:
	addi	r0 r1 0
beq_cont.29397:
beq_cont.29395:
	j	beq_cont.29393
beq_else.29392:
	addi	r0 r1 0
beq_cont.29393:
beq_cont.29391:
	j	beq_cont.29389
beq_else.29388:
	addi	r0 r1 0
beq_cont.29389:
beq_cont.29387:
	j	beq_cont.29385
beq_else.29384:
	addi	r0 r1 0
beq_cont.29385:
beq_cont.29383:
	j	beq_cont.29381
beq_else.29380:
	addi	r0 r1 0
beq_cont.29381:
beq_cont.29379:
	j	beq_cont.29377
beq_else.29376:
	addi	r0 r1 0
beq_cont.29377:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29400
	addi	r0 r1 1
	jr	r31
beq_tail_else.29400:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29375:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29332:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29186:
	addi	r0 r1 0
	jr	r31
solve_each_element.3031:
	multi r1 r4 4
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29401
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r4 r7 4
	lwo	r6 r7 r6
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r5 r7 f0
	lw	r6 r7 20
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r5 r7 f1
	lw	r6 r7 20
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r7 r8 f2
	sub.s	f1 f2 f1
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r5 r7 f2
	lw	r6 r5 20
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r5 r7 f3
	sub.s	f2 f3 f2
	lw	r6 r5 4
	addi	r0 r7 1
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r4 r30 12
	sub	r5 r7 r25
	beq	r25 r0 beq_else.29402
	addi	r0 r7 2
	sub	r5 r7 r25
	beq	r25 r0 beq_else.29404
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r6
	jal	solver_second.2927
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.29405
beq_else.29404:
	lw	r6 r5 16
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r3 r6 f3
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r5 r6 f4
	mul.s	f3 f4 f3
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f4
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f4
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29406
	addi	r0 r6 1
	j	bfle_nontail_cont.29407
bfle_nontail_else.29406:
	addi	r0 r6 0
bfle_nontail_cont.29407:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29408
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r7 0
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r5 r8 f4
	mul.s	f4 f0 f0
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r5 r8 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r5 r8 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	div.s	f0 f3 f0
	multi r7 r5 4
	swoc1	f0 r6 r5
	addi	r0 r1 1
	j	beq_cont.29409
beq_else.29408:
	addi	r0 r1 0
beq_cont.29409:
beq_cont.29405:
	j	beq_cont.29403
beq_else.29402:
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r6
	jal	solver_rect.2902
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.29403:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29410
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f0
	mtc1	r0 f1
	sub.s	f0 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29411
	addi	r0 r2 1
	j	bfle_nontail_cont.29412
bfle_nontail_else.29411:
	addi	r0 r2 0
bfle_nontail_cont.29412:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29413
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	sub.s	f1 f0 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29415
	addi	r0 r2 1
	j	bfle_nontail_cont.29416
bfle_nontail_else.29415:
	addi	r0 r2 0
bfle_nontail_cont.29416:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29417
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f1
	add.s	f0 f1 f0
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 0
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f2
	add.s	f1 f2 f1
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r3 r2 f2
	mul.s	f2 f0 f2
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f3
	add.s	f2 f3 f2
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f3
	mul.s	f3 f0 f3
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f4
	add.s	f3 f4 f3
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r4 4
	lwo	r4 r2 r2
	addi	r0 r5 -1
	sw	r1 r30 16
	swc1	f3 r30 20
	swc1	f2 r30 24
	swc1	f1 r30 28
	swc1	f0 r30 32
	sub	r2 r5 r25
	beq	r25 r0 beq_else.29419
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	multi r2 r2 4
	lwo	r5 r2 r2
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r2
	mov.s	f1 f0
	mov.s	f2 f1
	mov.s	f3 f2
	jal	is_outside.3011
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29421
	addi	r0 r1 0
	j	beq_cont.29422
beq_else.29421:
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29423
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	multi r1 r1 4
	lwo	r3 r1 r1
	lw	r1 r3 20
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f0
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
	lw	r1 r3 20
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f2
	lwc1	 r30 f3 24
	sub.s	f3 f2 f2
	lw	r1 r3 20
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f4
	lwc1	 r30 f5 20
	sub.s	f5 f4 f4
	lw	r1 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29425
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29427
	mul.s	f0 f0 f6
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	mul.s	f2 f2 f7
	lw	r1 r3 16
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r1 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29429
	mul.s	f2 f4 f7
	lw	r1 r3 36
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f0 f4
	lw	r1 r3 36
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f4 f7 f4
	add.s	f6 f4 f4
	mul.s	f0 f2 f0
	lw	r1 r3 36
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f2
	mul.s	f0 f2 f0
	add.s	f4 f0 f0
	j	beq_cont.29430
beq_else.29429:
	mov.s	f6 f0
beq_cont.29430:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29431
	j	beq_cont.29432
beq_else.29431:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29432:
	lw	r1 r1 24
	mtc1	r0 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29433
	addi	r0 r3 1
	j	bfle_nontail_cont.29434
bfle_nontail_else.29433:
	addi	r0 r3 0
bfle_nontail_cont.29434:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29435
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29437
	addi	r0 r1 0
	j	beq_cont.29438
beq_else.29437:
	addi	r0 r1 1
beq_cont.29438:
	j	beq_cont.29436
beq_else.29435:
	mov	r1 r3
beq_cont.29436:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29439
	addi	r0 r1 0
	j	beq_cont.29440
beq_else.29439:
	addi	r0 r1 1
beq_cont.29440:
	j	beq_cont.29428
beq_else.29427:
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f6
	mul.s	f6 f0 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f6
	mul.s	f6 f2 f2
	add.s	f0 f2 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f2
	mul.s	f2 f4 f2
	add.s	f0 f2 f0
	lw	r1 r1 24
	mtc1	r0 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29441
	addi	r0 r3 1
	j	bfle_nontail_cont.29442
bfle_nontail_else.29441:
	addi	r0 r3 0
bfle_nontail_cont.29442:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29443
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29445
	addi	r0 r1 0
	j	beq_cont.29446
beq_else.29445:
	addi	r0 r1 1
beq_cont.29446:
	j	beq_cont.29444
beq_else.29443:
	mov	r1 r3
beq_cont.29444:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29447
	addi	r0 r1 0
	j	beq_cont.29448
beq_else.29447:
	addi	r0 r1 1
beq_cont.29448:
beq_cont.29428:
	j	beq_cont.29426
beq_else.29425:
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f6
	abs.s	f0 f0
	sub.s	f6 f0 f0
	mtc1	r0 f6
	sub.s	f0 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29449
	addi	r0 r3 1
	j	bfle_nontail_cont.29450
bfle_nontail_else.29449:
	addi	r0 r3 0
bfle_nontail_cont.29450:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29451
	lw	r1 r3 16
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f0
	abs.s	f2 f2
	sub.s	f0 f2 f0
	mtc1	r0 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29453
	addi	r0 r3 1
	j	bfle_nontail_cont.29454
bfle_nontail_else.29453:
	addi	r0 r3 0
bfle_nontail_cont.29454:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29455
	lw	r1 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f0
	abs.s	f4 f2
	sub.s	f0 f2 f0
	mtc1	r0 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29457
	addi	r0 r3 1
	j	bfle_nontail_cont.29458
bfle_nontail_else.29457:
	addi	r0 r3 0
bfle_nontail_cont.29458:
	j	beq_cont.29456
beq_else.29455:
	addi	r0 r3 0
beq_cont.29456:
	j	beq_cont.29452
beq_else.29451:
	addi	r0 r3 0
beq_cont.29452:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29459
	lw	r1 r1 24
	j	beq_cont.29460
beq_else.29459:
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29461
	addi	r0 r1 0
	j	beq_cont.29462
beq_else.29461:
	addi	r0 r1 1
beq_cont.29462:
beq_cont.29460:
beq_cont.29426:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29463
	addi	r0 r1 0
	j	beq_cont.29464
beq_else.29463:
	addi	r0 r1 2
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29465
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	multi r1 r1 4
	lwo	r3 r1 r1
	sw	r31 r30 36
	addi	r30 r30 40
	mov.s	f5 f2
	mov.s	f1 f0
	mov.s	f3 f1
	jal	is_outside.3011
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29467
	addi	r0 r1 0
	j	beq_cont.29468
beq_else.29467:
	addi	r0 r1 3
	lwc1	 r30 f0 28
	lwc1	 r30 f1 24
	lwc1	 r30 f2 20
	lw	r30 r2 4
	sw	r31 r30 36
	addi	r30 r30 40
	jal	check_all_inside.3016
	addi	r30 r30 -40
	lw	r30 r31 36
beq_cont.29468:
	j	beq_cont.29466
beq_else.29465:
	addi	r0 r1 1
beq_cont.29466:
beq_cont.29464:
	j	beq_cont.29424
beq_else.29423:
	addi	r0 r1 1
beq_cont.29424:
beq_cont.29422:
	j	beq_cont.29420
beq_else.29419:
	addi	r0 r1 1
beq_cont.29420:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29469
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	multi r2 r2 4
	lwc1	 r30 f0 32
	swoc1	f0 r1 r2
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	multi r2 r2 4
	lwc1	 r30 f0 28
	swoc1	f0 r1 r2
	addi	r0 r2 1
	multi r2 r2 4
	lwc1	 r30 f0 24
	swoc1	f0 r1 r2
	addi	r0 r2 2
	multi r2 r2 4
	lwc1	 r30 f0 20
	swoc1	f0 r1 r2
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 12
	swo	r3 r1 r2
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 16
	swo	r3 r1 r2
	j	beq_cont.29470
beq_else.29469:
beq_cont.29470:
	j	beq_cont.29418
beq_else.29417:
beq_cont.29418:
	j	beq_cont.29414
beq_else.29413:
beq_cont.29414:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element.3031
beq_tail_else.29410:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 12
	multi r2 r2 4
	lwo	r1 r2 r1
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29471
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element.3031
beq_tail_else.29471:
	jr	r31
beq_tail_else.29401:
	jr	r31
solve_one_or_network.3035:
	multi r1 r4 4
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29474
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r4 r4 4
	lwo	r5 r4 r4
	addi	r0 r5 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r4
	mov	r1 r5
	jal	solve_each_element.3031
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29475
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29476
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element.3031
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29477
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29478
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element.3031
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29479
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element.3031
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 1
	lw	r30 r2 28
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29480
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element.3031
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 1
	lw	r30 r2 32
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29481
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element.3031
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 1
	lw	r30 r2 36
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_one_or_network.3035
beq_tail_else.29481:
	jr	r31
beq_tail_else.29480:
	jr	r31
beq_tail_else.29479:
	jr	r31
beq_tail_else.29478:
	jr	r31
beq_tail_else.29477:
	jr	r31
beq_tail_else.29476:
	jr	r31
beq_tail_else.29475:
	jr	r31
beq_tail_else.29474:
	jr	r31
trace_or_matrix.3039:
	multi r1 r4 4
	lwo	r2 r4 r4
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.29490
	addi	r0 r6 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29491
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r5 r5 4
	lwo	r7 r5 r5
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r6 r7 f0
	lw	r5 r7 20
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r6 r7 f1
	lw	r5 r7 20
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r7 r8 f2
	sub.s	f1 f2 f1
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r6 r7 f2
	lw	r5 r6 20
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r6 r7 f3
	sub.s	f2 f3 f2
	lw	r5 r6 4
	addi	r0 r7 1
	sw	r4 r30 12
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29493
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29495
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r5
	jal	solver_second.2927
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.29496
beq_else.29495:
	lw	r5 r5 16
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r3 r6 f3
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r5 r6 f4
	mul.s	f3 f4 f3
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f4
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f4
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29497
	addi	r0 r6 1
	j	bfle_nontail_cont.29498
bfle_nontail_else.29497:
	addi	r0 r6 0
bfle_nontail_cont.29498:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29499
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r7 0
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r5 r8 f4
	mul.s	f4 f0 f0
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r5 r8 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r5 r8 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	div.s	f0 f3 f0
	multi r7 r5 4
	swoc1	f0 r6 r5
	addi	r0 r1 1
	j	beq_cont.29500
beq_else.29499:
	addi	r0 r1 0
beq_cont.29500:
beq_cont.29496:
	j	beq_cont.29494
beq_else.29493:
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r5
	jal	solver_rect.2902
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.29494:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29501
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29503
	addi	r0 r1 1
	j	bfle_nontail_cont.29504
bfle_nontail_else.29503:
	addi	r0 r1 0
bfle_nontail_cont.29504:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29505
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29507
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29509
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29511
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29513
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29515
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29517
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 7
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29519
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 8
	lw	r30 r2 12
	lw	r30 r3 0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	solve_one_or_network.3035
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.29520
beq_else.29519:
beq_cont.29520:
	j	beq_cont.29518
beq_else.29517:
beq_cont.29518:
	j	beq_cont.29516
beq_else.29515:
beq_cont.29516:
	j	beq_cont.29514
beq_else.29513:
beq_cont.29514:
	j	beq_cont.29512
beq_else.29511:
beq_cont.29512:
	j	beq_cont.29510
beq_else.29509:
beq_cont.29510:
	j	beq_cont.29508
beq_else.29507:
beq_cont.29508:
	j	beq_cont.29506
beq_else.29505:
beq_cont.29506:
	j	beq_cont.29502
beq_else.29501:
beq_cont.29502:
	j	beq_cont.29492
beq_else.29491:
	addi	r0 r5 1
	multi r5 r5 4
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29521
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r5 r5 4
	lwo	r6 r5 r5
	addi	r0 r6 0
	sw	r4 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r5
	mov	r1 r6
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29523
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29525
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29527
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29529
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29531
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 7
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29533
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 8
	lw	r30 r2 12
	lw	r30 r3 0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	solve_one_or_network.3035
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.29534
beq_else.29533:
beq_cont.29534:
	j	beq_cont.29532
beq_else.29531:
beq_cont.29532:
	j	beq_cont.29530
beq_else.29529:
beq_cont.29530:
	j	beq_cont.29528
beq_else.29527:
beq_cont.29528:
	j	beq_cont.29526
beq_else.29525:
beq_cont.29526:
	j	beq_cont.29524
beq_else.29523:
beq_cont.29524:
	j	beq_cont.29522
beq_else.29521:
beq_cont.29522:
beq_cont.29492:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29535
	addi	r0 r5 99
	sw	r1 r30 16
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29536
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	lw	r30 r6 0
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r3 r5
	mov	r2 r6
	mov	r1 r4
	jal	solver.2933
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29538
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29540
	addi	r0 r1 1
	j	bfle_nontail_cont.29541
bfle_nontail_else.29540:
	addi	r0 r1 0
bfle_nontail_cont.29541:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29542
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29544
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29546
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29548
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29550
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29552
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29554
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 7
	lw	r30 r2 20
	lw	r30 r3 0
	sw	r31 r30 24
	addi	r30 r30 28
	jal	solve_one_or_network.3035
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.29555
beq_else.29554:
beq_cont.29555:
	j	beq_cont.29553
beq_else.29552:
beq_cont.29553:
	j	beq_cont.29551
beq_else.29550:
beq_cont.29551:
	j	beq_cont.29549
beq_else.29548:
beq_cont.29549:
	j	beq_cont.29547
beq_else.29546:
beq_cont.29547:
	j	beq_cont.29545
beq_else.29544:
beq_cont.29545:
	j	beq_cont.29543
beq_else.29542:
beq_cont.29543:
	j	beq_cont.29539
beq_else.29538:
beq_cont.29539:
	j	beq_cont.29537
beq_else.29536:
	addi	r0 r4 1
	multi r4 r4 4
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29556
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r4 r4 4
	lwo	r5 r4 r4
	addi	r0 r5 0
	lw	r30 r6 0
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r3 r6
	mov	r2 r4
	mov	r1 r5
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29558
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29560
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29562
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29564
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29566
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element.3031
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 7
	lw	r30 r2 20
	lw	r30 r3 0
	sw	r31 r30 24
	addi	r30 r30 28
	jal	solve_one_or_network.3035
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.29567
beq_else.29566:
beq_cont.29567:
	j	beq_cont.29565
beq_else.29564:
beq_cont.29565:
	j	beq_cont.29563
beq_else.29562:
beq_cont.29563:
	j	beq_cont.29561
beq_else.29560:
beq_cont.29561:
	j	beq_cont.29559
beq_else.29558:
beq_cont.29559:
	j	beq_cont.29557
beq_else.29556:
beq_cont.29557:
beq_cont.29537:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_or_matrix.3039
beq_tail_else.29535:
	jr	r31
beq_tail_else.29490:
	jr	r31
solve_each_element_fast.3045:
	lw	r3 r4 0
	multi r1 r5 4
	lwo	r2 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.29570
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r5 r7 4
	lwo	r6 r7 r6
	lw	r6 r7 40
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r7 r8 f0
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r7 r8 f1
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r7 r8 f2
	lw	r3 r8 4
	multi r5 r9 4
	lwo	r8 r9 r8
	lw	r6 r9 4
	addi	r0 r10 1
	sw	r4 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	sw	r1 r30 12
	sw	r5 r30 16
	sub	r9 r10 r25
	beq	r25 r0 beq_else.29571
	addi	r0 r10 2
	sub	r9 r10 r25
	beq	r25 r0 beq_else.29573
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r8 r9 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.29575
	addi	r0 r9 0
	j	bfeq_nontail_cont.29576
bfeq_nontail_else.29575:
	addi	r0 r9 1
bfeq_nontail_cont.29576:
	addi	r0 r10 0
	sub	r9 r10 r25
	beq	r25 r0 beq_else.29577
	addi	r0 r1 0
	j	beq_cont.29578
beq_else.29577:
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r8 r9 f4
	mul.s	f4 f0 f0
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r8 r9 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r9 3
	multi r9 r9 4
	lwoc1	r8 r9 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r9 3
	multi r9 r9 4
	lwoc1	r7 r9 f1
	mul.s	f0 f0 f2
	mul.s	f3 f1 f1
	sub.s	f2 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29579
	addi	r0 r7 1
	j	bfle_nontail_cont.29580
bfle_nontail_else.29579:
	addi	r0 r7 0
bfle_nontail_cont.29580:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.29581
	lw	r6 r6 24
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29583
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r7 0
	sqrt.s	f1 f1
	add.s	f0 f1 f0
	addi	r0 r9 4
	multi r9 r9 4
	lwoc1	r8 r9 f1
	mul.s	f0 f1 f0
	multi r7 r7 4
	swoc1	f0 r6 r7
	j	beq_cont.29584
beq_else.29583:
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r7 0
	sqrt.s	f1 f1
	sub.s	f0 f1 f0
	addi	r0 r9 4
	multi r9 r9 4
	lwoc1	r8 r9 f1
	mul.s	f0 f1 f0
	multi r7 r7 4
	swoc1	f0 r6 r7
beq_cont.29584:
	addi	r0 r1 1
	j	beq_cont.29582
beq_else.29581:
	addi	r0 r1 0
beq_cont.29582:
beq_cont.29578:
	j	beq_cont.29574
beq_else.29573:
	mtc1	r0 f0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r8 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29585
	addi	r0 r6 1
	j	bfle_nontail_cont.29586
bfle_nontail_else.29585:
	addi	r0 r6 0
bfle_nontail_cont.29586:
	addi	r0 r9 0
	sub	r6 r9 r25
	beq	r25 r0 beq_else.29587
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r9 0
	addi	r0 r10 0
	multi r10 r10 4
	lwoc1	r8 r10 f0
	addi	r0 r8 3
	multi r8 r8 4
	lwoc1	r7 r8 f1
	mul.s	f0 f1 f0
	multi r9 r7 4
	swoc1	f0 r6 r7
	addi	r0 r1 1
	j	beq_cont.29588
beq_else.29587:
	addi	r0 r1 0
beq_cont.29588:
beq_cont.29574:
	j	beq_cont.29572
beq_else.29571:
	lw	r3 r7 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r3 r8
	mov	r2 r7
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.29572:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29589
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f0
	mtc1	r0 f1
	sub.s	f0 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29590
	addi	r0 r2 1
	j	bfle_nontail_cont.29591
bfle_nontail_else.29590:
	addi	r0 r2 0
bfle_nontail_cont.29591:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29592
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	sub.s	f1 f0 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29594
	addi	r0 r2 1
	j	bfle_nontail_cont.29595
bfle_nontail_else.29594:
	addi	r0 r2 0
bfle_nontail_cont.29595:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29596
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f1
	add.s	f0 f1 f0
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 0
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f2
	add.s	f1 f2 f1
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r3 r2 f2
	mul.s	f2 f0 f2
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f3
	add.s	f2 f3 f2
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f3
	mul.s	f3 f0 f3
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f4
	add.s	f3 f4 f3
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 8
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sw	r1 r30 20
	swc1	f3 r30 24
	swc1	f2 r30 28
	swc1	f1 r30 32
	swc1	f0 r30 36
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29598
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	multi r2 r2 4
	lwo	r4 r2 r2
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r2
	mov.s	f1 f0
	mov.s	f2 f1
	mov.s	f3 f2
	jal	is_outside.3011
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29600
	addi	r0 r1 0
	j	beq_cont.29601
beq_else.29600:
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 8
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29602
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	multi r1 r1 4
	lwo	r3 r1 r1
	lw	r1 r3 20
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f0
	lwc1	 r30 f1 32
	sub.s	f1 f0 f0
	lw	r1 r3 20
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f2
	lwc1	 r30 f3 28
	sub.s	f3 f2 f2
	lw	r1 r3 20
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f4
	lwc1	 r30 f5 24
	sub.s	f5 f4 f4
	lw	r1 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29604
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29606
	mul.s	f0 f0 f6
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	mul.s	f2 f2 f7
	lw	r1 r3 16
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r1 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29608
	mul.s	f2 f4 f7
	lw	r1 r3 36
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f0 f4
	lw	r1 r3 36
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f7
	mul.s	f4 f7 f4
	add.s	f6 f4 f4
	mul.s	f0 f2 f0
	lw	r1 r3 36
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f2
	mul.s	f0 f2 f0
	add.s	f4 f0 f0
	j	beq_cont.29609
beq_else.29608:
	mov.s	f6 f0
beq_cont.29609:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29610
	j	beq_cont.29611
beq_else.29610:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29611:
	lw	r1 r1 24
	mtc1	r0 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29612
	addi	r0 r3 1
	j	bfle_nontail_cont.29613
bfle_nontail_else.29612:
	addi	r0 r3 0
bfle_nontail_cont.29613:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29614
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29616
	addi	r0 r1 0
	j	beq_cont.29617
beq_else.29616:
	addi	r0 r1 1
beq_cont.29617:
	j	beq_cont.29615
beq_else.29614:
	mov	r1 r3
beq_cont.29615:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29618
	addi	r0 r1 0
	j	beq_cont.29619
beq_else.29618:
	addi	r0 r1 1
beq_cont.29619:
	j	beq_cont.29607
beq_else.29606:
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f6
	mul.s	f6 f0 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f6
	mul.s	f6 f2 f2
	add.s	f0 f2 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f2
	mul.s	f2 f4 f2
	add.s	f0 f2 f0
	lw	r1 r1 24
	mtc1	r0 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29620
	addi	r0 r3 1
	j	bfle_nontail_cont.29621
bfle_nontail_else.29620:
	addi	r0 r3 0
bfle_nontail_cont.29621:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29622
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29624
	addi	r0 r1 0
	j	beq_cont.29625
beq_else.29624:
	addi	r0 r1 1
beq_cont.29625:
	j	beq_cont.29623
beq_else.29622:
	mov	r1 r3
beq_cont.29623:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29626
	addi	r0 r1 0
	j	beq_cont.29627
beq_else.29626:
	addi	r0 r1 1
beq_cont.29627:
beq_cont.29607:
	j	beq_cont.29605
beq_else.29604:
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f6
	abs.s	f0 f0
	sub.s	f6 f0 f0
	mtc1	r0 f6
	sub.s	f0 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29628
	addi	r0 r3 1
	j	bfle_nontail_cont.29629
bfle_nontail_else.29628:
	addi	r0 r3 0
bfle_nontail_cont.29629:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29630
	lw	r1 r3 16
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f0
	abs.s	f2 f2
	sub.s	f0 f2 f0
	mtc1	r0 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29632
	addi	r0 r3 1
	j	bfle_nontail_cont.29633
bfle_nontail_else.29632:
	addi	r0 r3 0
bfle_nontail_cont.29633:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29634
	lw	r1 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f0
	abs.s	f4 f2
	sub.s	f0 f2 f0
	mtc1	r0 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29636
	addi	r0 r3 1
	j	bfle_nontail_cont.29637
bfle_nontail_else.29636:
	addi	r0 r3 0
bfle_nontail_cont.29637:
	j	beq_cont.29635
beq_else.29634:
	addi	r0 r3 0
beq_cont.29635:
	j	beq_cont.29631
beq_else.29630:
	addi	r0 r3 0
beq_cont.29631:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29638
	lw	r1 r1 24
	j	beq_cont.29639
beq_else.29638:
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29640
	addi	r0 r1 0
	j	beq_cont.29641
beq_else.29640:
	addi	r0 r1 1
beq_cont.29641:
beq_cont.29639:
beq_cont.29605:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29642
	addi	r0 r1 0
	j	beq_cont.29643
beq_else.29642:
	addi	r0 r1 2
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29644
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	multi r1 r1 4
	lwo	r3 r1 r1
	sw	r31 r30 40
	addi	r30 r30 44
	mov.s	f5 f2
	mov.s	f1 f0
	mov.s	f3 f1
	jal	is_outside.3011
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29646
	addi	r0 r1 0
	j	beq_cont.29647
beq_else.29646:
	addi	r0 r1 3
	lwc1	 r30 f0 32
	lwc1	 r30 f1 28
	lwc1	 r30 f2 24
	lw	r30 r2 8
	sw	r31 r30 40
	addi	r30 r30 44
	jal	check_all_inside.3016
	addi	r30 r30 -44
	lw	r30 r31 40
beq_cont.29647:
	j	beq_cont.29645
beq_else.29644:
	addi	r0 r1 1
beq_cont.29645:
beq_cont.29643:
	j	beq_cont.29603
beq_else.29602:
	addi	r0 r1 1
beq_cont.29603:
beq_cont.29601:
	j	beq_cont.29599
beq_else.29598:
	addi	r0 r1 1
beq_cont.29599:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29648
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	multi r2 r2 4
	lwc1	 r30 f0 36
	swoc1	f0 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	multi r2 r2 4
	lwc1	 r30 f0 32
	swoc1	f0 r1 r2
	addi	r0 r2 1
	multi r2 r2 4
	lwc1	 r30 f0 28
	swoc1	f0 r1 r2
	addi	r0 r2 2
	multi r2 r2 4
	lwc1	 r30 f0 24
	swoc1	f0 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 16
	swo	r3 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 20
	swo	r3 r1 r2
	j	beq_cont.29649
beq_else.29648:
beq_cont.29649:
	j	beq_cont.29597
beq_else.29596:
beq_cont.29597:
	j	beq_cont.29593
beq_else.29592:
beq_cont.29593:
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	lw	r30 r2 8
	lw	r30 r3 4
	j	solve_each_element_fast.3045
beq_tail_else.29589:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	lw	r30 r2 16
	multi r2 r2 4
	lwo	r1 r2 r1
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29650
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	lw	r30 r2 8
	lw	r30 r3 4
	j	solve_each_element_fast.3045
beq_tail_else.29650:
	jr	r31
beq_tail_else.29570:
	jr	r31
solve_one_or_network_fast.3049:
	multi r1 r4 4
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29653
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r4 r4 4
	lwo	r5 r4 r4
	addi	r0 r5 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r4
	mov	r1 r5
	jal	solve_each_element_fast.3045
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29654
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29655
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29656
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29657
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29658
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 1
	lw	r30 r2 28
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29659
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 1
	lw	r30 r2 32
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29660
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	multi r2 r2 4
	lwo	r4 r2 r2
	addi	r0 r4 0
	lw	r30 r5 0
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r3 r5
	mov	r1 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 1
	lw	r30 r2 36
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_one_or_network_fast.3049
beq_tail_else.29660:
	jr	r31
beq_tail_else.29659:
	jr	r31
beq_tail_else.29658:
	jr	r31
beq_tail_else.29657:
	jr	r31
beq_tail_else.29656:
	jr	r31
beq_tail_else.29655:
	jr	r31
beq_tail_else.29654:
	jr	r31
beq_tail_else.29653:
	jr	r31
trace_or_matrix_fast.3053:
	multi r1 r4 4
	lwo	r2 r4 r4
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.29669
	addi	r0 r6 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29670
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r5 r7 4
	lwo	r6 r7 r6
	lw	r6 r7 40
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r7 r8 f0
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r7 r8 f1
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r7 r8 f2
	lw	r3 r8 4
	multi r5 r5 4
	lwo	r8 r5 r5
	lw	r6 r8 4
	addi	r0 r9 1
	sw	r4 r30 12
	sub	r8 r9 r25
	beq	r25 r0 beq_else.29672
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.29674
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r5 r8 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.29676
	addi	r0 r8 0
	j	bfeq_nontail_cont.29677
bfeq_nontail_else.29676:
	addi	r0 r8 1
bfeq_nontail_cont.29677:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_else.29678
	addi	r0 r1 0
	j	beq_cont.29679
beq_else.29678:
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r5 r8 f4
	mul.s	f4 f0 f0
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r5 r8 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r8 3
	multi r8 r8 4
	lwoc1	r5 r8 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r8 3
	multi r8 r8 4
	lwoc1	r7 r8 f1
	mul.s	f0 f0 f2
	mul.s	f3 f1 f1
	sub.s	f2 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29680
	addi	r0 r7 1
	j	bfle_nontail_cont.29681
bfle_nontail_else.29680:
	addi	r0 r7 0
bfle_nontail_cont.29681:
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.29682
	lw	r6 r6 24
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29684
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r7 0
	sqrt.s	f1 f1
	add.s	f0 f1 f0
	addi	r0 r8 4
	multi r8 r8 4
	lwoc1	r5 r8 f1
	mul.s	f0 f1 f0
	multi r7 r5 4
	swoc1	f0 r6 r5
	j	beq_cont.29685
beq_else.29684:
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r7 0
	sqrt.s	f1 f1
	sub.s	f0 f1 f0
	addi	r0 r8 4
	multi r8 r8 4
	lwoc1	r5 r8 f1
	mul.s	f0 f1 f0
	multi r7 r5 4
	swoc1	f0 r6 r5
beq_cont.29685:
	addi	r0 r1 1
	j	beq_cont.29683
beq_else.29682:
	addi	r0 r1 0
beq_cont.29683:
beq_cont.29679:
	j	beq_cont.29675
beq_else.29674:
	mtc1	r0 f0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r5 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29686
	addi	r0 r6 1
	j	bfle_nontail_cont.29687
bfle_nontail_else.29686:
	addi	r0 r6 0
bfle_nontail_cont.29687:
	addi	r0 r8 0
	sub	r6 r8 r25
	beq	r25 r0 beq_else.29688
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r8 0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r5 r9 f0
	addi	r0 r5 3
	multi r5 r5 4
	lwoc1	r7 r5 f1
	mul.s	f0 f1 f0
	multi r8 r5 4
	swoc1	f0 r6 r5
	addi	r0 r1 1
	j	beq_cont.29689
beq_else.29688:
	addi	r0 r1 0
beq_cont.29689:
beq_cont.29675:
	j	beq_cont.29673
beq_else.29672:
	lw	r3 r7 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r3 r5
	mov	r2 r7
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.29673:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29690
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29692
	addi	r0 r1 1
	j	bfle_nontail_cont.29693
bfle_nontail_else.29692:
	addi	r0 r1 0
bfle_nontail_cont.29693:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29694
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29696
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29698
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29700
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29702
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29704
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29706
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 7
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29708
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 8
	lw	r30 r2 12
	lw	r30 r3 0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.29709
beq_else.29708:
beq_cont.29709:
	j	beq_cont.29707
beq_else.29706:
beq_cont.29707:
	j	beq_cont.29705
beq_else.29704:
beq_cont.29705:
	j	beq_cont.29703
beq_else.29702:
beq_cont.29703:
	j	beq_cont.29701
beq_else.29700:
beq_cont.29701:
	j	beq_cont.29699
beq_else.29698:
beq_cont.29699:
	j	beq_cont.29697
beq_else.29696:
beq_cont.29697:
	j	beq_cont.29695
beq_else.29694:
beq_cont.29695:
	j	beq_cont.29691
beq_else.29690:
beq_cont.29691:
	j	beq_cont.29671
beq_else.29670:
	addi	r0 r5 1
	multi r5 r5 4
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29710
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r5 r5 4
	lwo	r6 r5 r5
	addi	r0 r6 0
	sw	r4 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r5
	mov	r1 r6
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29712
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29714
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29716
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29718
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29720
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 7
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29722
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 8
	lw	r30 r2 12
	lw	r30 r3 0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.29723
beq_else.29722:
beq_cont.29723:
	j	beq_cont.29721
beq_else.29720:
beq_cont.29721:
	j	beq_cont.29719
beq_else.29718:
beq_cont.29719:
	j	beq_cont.29717
beq_else.29716:
beq_cont.29717:
	j	beq_cont.29715
beq_else.29714:
beq_cont.29715:
	j	beq_cont.29713
beq_else.29712:
beq_cont.29713:
	j	beq_cont.29711
beq_else.29710:
beq_cont.29711:
beq_cont.29671:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29724
	addi	r0 r5 99
	sw	r1 r30 16
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29725
	lw	r30 r5 0
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r5
	mov	r1 r4
	jal	solver_fast2.2974
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29727
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29729
	addi	r0 r1 1
	j	bfle_nontail_cont.29730
bfle_nontail_else.29729:
	addi	r0 r1 0
bfle_nontail_cont.29730:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29731
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29733
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29735
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29737
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29739
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29741
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29743
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 7
	lw	r30 r2 20
	lw	r30 r3 0
	sw	r31 r30 24
	addi	r30 r30 28
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.29744
beq_else.29743:
beq_cont.29744:
	j	beq_cont.29742
beq_else.29741:
beq_cont.29742:
	j	beq_cont.29740
beq_else.29739:
beq_cont.29740:
	j	beq_cont.29738
beq_else.29737:
beq_cont.29738:
	j	beq_cont.29736
beq_else.29735:
beq_cont.29736:
	j	beq_cont.29734
beq_else.29733:
beq_cont.29734:
	j	beq_cont.29732
beq_else.29731:
beq_cont.29732:
	j	beq_cont.29728
beq_else.29727:
beq_cont.29728:
	j	beq_cont.29726
beq_else.29725:
	addi	r0 r4 1
	multi r4 r4 4
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29745
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r4 r4 4
	lwo	r5 r4 r4
	addi	r0 r5 0
	lw	r30 r6 0
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r3 r6
	mov	r2 r4
	mov	r1 r5
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29747
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29749
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29751
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29753
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29755
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 7
	lw	r30 r2 20
	lw	r30 r3 0
	sw	r31 r30 24
	addi	r30 r30 28
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.29756
beq_else.29755:
beq_cont.29756:
	j	beq_cont.29754
beq_else.29753:
beq_cont.29754:
	j	beq_cont.29752
beq_else.29751:
beq_cont.29752:
	j	beq_cont.29750
beq_else.29749:
beq_cont.29750:
	j	beq_cont.29748
beq_else.29747:
beq_cont.29748:
	j	beq_cont.29746
beq_else.29745:
beq_cont.29746:
beq_cont.29726:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_or_matrix_fast.3053
beq_tail_else.29724:
	jr	r31
beq_tail_else.29669:
	jr	r31
get_nvector_second.3063:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f0
	lw	r1 r2 20
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	sub.s	f0 f1 f0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f1
	lw	r1 r2 20
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f2
	sub.s	f1 f2 f1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f2
	lw	r1 r2 20
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f3
	sub.s	f2 f3 f2
	lw	r1 r2 16
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f3
	mul.s	f0 f3 f3
	lw	r1 r2 16
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f4
	mul.s	f1 f4 f4
	lw	r1 r2 16
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f5
	mul.s	f2 f5 f5
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29759
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	lw	r1 r4 36
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f6
	mul.s	f1 f6 f6
	lw	r1 r4 36
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f7
	mul.s	f2 f7 f7
	add.s	f6 f7 f6
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f7
	mul.s	f6 f7 f6
	add.s	f3 f6 f3
	multi r3 r3 4
	swoc1	f3 r2 r3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 1
	lw	r1 r4 36
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f3
	mul.s	f0 f3 f3
	lw	r1 r4 36
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f6
	mul.s	f2 f6 f2
	add.s	f3 f2 f2
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f3
	mul.s	f2 f3 f2
	add.s	f4 f2 f2
	multi r3 r3 4
	swoc1	f2 r2 r3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 2
	lw	r1 r4 36
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f2
	mul.s	f0 f2 f0
	lw	r1 r4 36
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	add.s	f5 f0 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	j	beq_cont.29760
beq_else.29759:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	multi r3 r3 4
	swoc1	f3 r2 r3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 1
	multi r3 r3 4
	swoc1	f4 r2 r3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 2
	multi r3 r3 4
	swoc1	f5 r2 r3
beq_cont.29760:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	lw	r1 r1 24
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f0
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f1
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f1
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sqrt.s	f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.29761
	addi	r0 r3 0
	j	bfeq_nontail_cont.29762
bfeq_nontail_else.29761:
	addi	r0 r3 1
bfeq_nontail_cont.29762:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29763
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29764
beq_else.29763:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29765
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
	j	beq_cont.29766
beq_else.29765:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
beq_cont.29766:
beq_cont.29764:
	addi	r0 r1 0
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f1 f0 f1
	multi r1 r1 4
	swoc1	f1 r2 r1
	addi	r0 r1 1
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f1 f0 f1
	multi r1 r1 4
	swoc1	f1 r2 r1
	addi	r0 r1 2
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f1 f0 f0
	multi r1 r1 4
	swoc1	f0 r2 r1
	jr	r31
utexture.3068:
	lw	r1 r3 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	lw	r1 r6 32
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r6 r7 f0
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 1
	lw	r1 r6 32
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r6 r7 f0
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 2
	lw	r1 r6 32
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r6 r7 f0
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29768
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29769
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29770
	addi	r0 r4 4
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29771
	jr	r31
beq_tail_else.29771:
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f0
	lw	r1 r3 20
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	lw	r1 r3 16
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	sqrt.s	f1 f1
	mul.s	f0 f1 f0
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f1
	lw	r1 r3 20
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f2
	sub.s	f1 f2 f1
	lw	r1 r3 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f2
	sqrt.s	f2 f2
	mul.s	f1 f2 f1
	mul.s	f0 f0 f2
	mul.s	f1 f1 f3
	add.s	f2 f3 f2
	lui	r24 14545
	ori	r24 r24 46871
	mtc1	r24 f3
	abs.s	f0 f4
	sub.s	f3 f4 f3
	mtc1	r0 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29773
	addi	r0 r3 1
	j	bfle_nontail_cont.29774
bfle_nontail_else.29773:
	addi	r0 r3 0
bfle_nontail_cont.29774:
	addi	r0 r4 0
	swc1	f2 r30 0
	sw	r1 r30 4
	sw	r2 r30 8
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29775
	lui	r24 16752
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29776
beq_else.29775:
	div.s	f1 f0 f0
	abs.s	f0 f0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_atan
	addi	r30 r30 -16
	lw	r30 r31 12
	lui	r24 16880
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	div.s	f0 f1 f0
beq_cont.29776:
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_floor
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 8
	lwoc1	r2 r1 f1
	lw	r30 r1 4
	lw	r1 r2 20
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f2
	sub.s	f1 f2 f1
	lw	r1 r1 16
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f2
	sqrt.s	f2 f2
	mul.s	f1 f2 f1
	lui	r24 14545
	ori	r24 r24 46871
	mtc1	r24 f2
	lwc1	 r30 f3 0
	abs.s	f3 f4
	sub.s	f2 f4 f2
	mtc1	r0 f4
	sub.s	f2 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29777
	addi	r0 r1 1
	j	bfle_nontail_cont.29778
bfle_nontail_else.29777:
	addi	r0 r1 0
bfle_nontail_cont.29778:
	addi	r0 r2 0
	swc1	f0 r30 16
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29779
	lui	r24 16752
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29780
beq_else.29779:
	div.s	f1 f3 f1
	abs.s	f1 f1
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f0
	jal	min_caml_atan
	addi	r30 r30 -24
	lw	r30 r31 20
	lui	r24 16880
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	div.s	f0 f1 f0
beq_cont.29780:
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_floor
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	sub.s	f1 f0 f0
	lui	r24 15897
	ori	r24 r24 39322
	mtc1	r24 f1
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f2
	lwc1	 r30 f3 16
	sub.s	f2 f3 f2
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f4 f3 f3
	mul.s	f2 f3 f2
	sub.s	f1 f2 f1
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f2
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f3 f0 f0
	mul.s	f2 f0 f0
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29781
	addi	r0 r1 1
	j	bfle_nontail_cont.29782
bfle_nontail_else.29781:
	addi	r0 r1 0
bfle_nontail_cont.29782:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29783
	mtc1	r0 f0
	j	beq_cont.29784
beq_else.29783:
beq_cont.29784:
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 2
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f1 f0 f0
	lui	r24 16025
	ori	r24 r24 39322
	mtc1	r24 f1
	div.s	f0 f1 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.29770:
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f0
	lw	r1 r3 20
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f1
	lw	r1 r1 20
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f2
	sub.s	f1 f2 f1
	mul.s	f0 f0 f0
	mul.s	f1 f1 f1
	add.s	f0 f1 f0
	sqrt.s	f0 f0
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_floor
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	sub.s	f1 f0 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	mul.s	f0 f1 f0
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_cos
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	mul.s	f1 f0 f0
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f1
	multi r2 r2 4
	swoc1	f1 r1 r2
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.29769:
	addi	r0 r1 1
	multi r1 r1 4
	lwoc1	r2 r1 f0
	lui	r24 16000
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	sw	r2 r30 8
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_sin
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 8
	lwoc1	r2 r1 f1
	lui	r24 16000
	ori	r24 r24 0
	mtc1	r24 f2
	mul.s	f1 f2 f1
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	mul.s	f1 f0 f0
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f1 f0 f1
	multi r2 r2 4
	swoc1	f1 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f0
	mul.s	f1 f0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.29768:
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f0
	lw	r1 r3 20
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	lui	r24 15692
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f1
	sw	r1 r30 4
	sw	r2 r30 8
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov.s	f1 f0
	jal	min_caml_floor
	addi	r30 r30 -48
	lw	r30 r31 44
	lui	r24 16800
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	lwc1	 r30 f2 40
	sub.s	f2 f0 f0
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29788
	addi	r0 r1 1
	j	bfle_nontail_cont.29789
bfle_nontail_else.29788:
	addi	r0 r1 0
bfle_nontail_cont.29789:
	addi	r0 r2 2
	multi r2 r2 4
	lw	r30 r3 8
	lwoc1	r3 r2 f0
	lw	r30 r2 4
	lw	r2 r2 20
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r2 r3 f1
	sub.s	f0 f1 f0
	lui	r24 15692
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f1
	sw	r1 r30 44
	swc1	f0 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov.s	f1 f0
	jal	min_caml_floor
	addi	r30 r30 -56
	lw	r30 r31 52
	lui	r24 16800
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	lwc1	 r30 f2 48
	sub.s	f2 f0 f0
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29790
	addi	r0 r1 1
	j	bfle_nontail_cont.29791
bfle_nontail_else.29790:
	addi	r0 r1 0
bfle_nontail_cont.29791:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r3 1
	addi	r0 r4 0
	lw	r30 r5 44
	sub	r5 r4 r25
	beq	r25 r0 beq_else.29792
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29794
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29795
beq_else.29794:
	mtc1	r0 f0
beq_cont.29795:
	j	beq_cont.29793
beq_else.29792:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29796
	mtc1	r0 f0
	j	beq_cont.29797
beq_else.29796:
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.29797:
beq_cont.29793:
	multi r3 r1 4
	swoc1	f0 r2 r1
	jr	r31
add_light.3071:
	mtc1	r0 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29799
	addi	r0 r1 1
	j	bfle_nontail_cont.29800
bfle_nontail_else.29799:
	addi	r0 r1 0
bfle_nontail_cont.29800:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29801
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r1 r4 f3
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	multi r3 r3 4
	swoc1	f3 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r1 r4 f3
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	multi r3 r3 4
	swoc1	f3 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r1 r4 f3
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f4
	mul.s	f0 f4 f0
	add.s	f3 f0 f0
	multi r3 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.29802
beq_else.29801:
beq_cont.29802:
	mtc1	r0 f0
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29803
	addi	r0 r1 1
	j	bfle_nontail_cont.29804
bfle_nontail_else.29803:
	addi	r0 r1 0
bfle_nontail_cont.29804:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29805
	mul.s	f1 f1 f0
	mul.s	f1 f1 f1
	mul.s	f0 f1 f0
	mul.s	f0 f2 f0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	multi r2 r2 4
	swoc1	f1 r1 r2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	multi r2 r2 4
	swoc1	f1 r1 r2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f1
	add.s	f1 f0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.29805:
	jr	r31
trace_reflections.3075:
	addi	r0 r3 0
	sub	r3 r1 r25
	blez	r25 ble_tail_else.29808
	jr	r31
ble_tail_else.29808:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r1 r4 4
	lwo	r3 r4 r3
	lw	r3 r4 4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r6 0
	lui	r24 20078
	ori	r24 r24 27432
	mtc1	r24 f2
	multi r6 r6 4
	swoc1	f2 r5 r6
	addi	r0 r5 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r6 r7 r6
	sw	r1 r30 0
	swc1	f1 r30 4
	sw	r2 r30 8
	swc1	f0 r30 12
	sw	r4 r30 16
	sw	r3 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r3 r4
	mov	r2 r6
	mov	r1 r5
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29810
	addi	r0 r1 1
	j	bfle_nontail_cont.29811
bfle_nontail_else.29810:
	addi	r0 r1 0
bfle_nontail_cont.29811:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29812
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29814
	addi	r0 r1 1
	j	bfle_nontail_cont.29815
bfle_nontail_else.29814:
	addi	r0 r1 0
bfle_nontail_cont.29815:
	j	beq_cont.29813
beq_else.29812:
	addi	r0 r1 0
beq_cont.29813:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29816
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r0 r2 4
	mult	r1 r2 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 20
	lw	r2 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29818
	j	beq_cont.29819
beq_else.29818:
	addi	r0 r1 0
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r1 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29820
	addi	r0 r5 99
	sw	r1 r30 24
	sw	r3 r30 28
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29822
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r4 r8 4
	lwo	r7 r8 r7
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r6 r8 f0
	lw	r7 r8 20
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r8 r9 f1
	sub.s	f0 f1 f0
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r6 r8 f1
	lw	r7 r8 20
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r8 r9 f2
	sub.s	f1 f2 f1
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r6 r8 f2
	lw	r7 r6 20
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r6 r8 f3
	sub.s	f2 f3 f2
	lw	r5 r6 4
	multi r4 r4 4
	lwo	r6 r4 r4
	lw	r7 r6 4
	addi	r0 r8 1
	sub	r6 r8 r25
	beq	r25 r0 beq_else.29824
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29826
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.29827
beq_else.29826:
	mtc1	r0 f3
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29828
	addi	r0 r5 1
	j	bfle_nontail_cont.29829
bfle_nontail_else.29828:
	addi	r0 r5 0
bfle_nontail_cont.29829:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29830
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r6 0
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r4 r7 f3
	mul.s	f3 f0 f0
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r4 r7 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r7 3
	multi r7 r7 4
	lwoc1	r4 r7 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r6 r4 4
	swoc1	f0 r5 r4
	addi	r0 r1 1
	j	beq_cont.29831
beq_else.29830:
	addi	r0 r1 0
beq_cont.29831:
beq_cont.29827:
	j	beq_cont.29825
beq_else.29824:
	lw	r5 r5 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29825:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29832
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29834
	addi	r0 r1 1
	j	bfle_nontail_cont.29835
bfle_nontail_else.29834:
	addi	r0 r1 0
bfle_nontail_cont.29835:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29836
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29838
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29840
	addi	r0 r1 1
	j	beq_cont.29841
beq_else.29840:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29842
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29844
	addi	r0 r1 1
	j	beq_cont.29845
beq_else.29844:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29846
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29848
	addi	r0 r1 1
	j	beq_cont.29849
beq_else.29848:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29850
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29852
	addi	r0 r1 1
	j	beq_cont.29853
beq_else.29852:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29854
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29856
	addi	r0 r1 1
	j	beq_cont.29857
beq_else.29856:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29858
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29860
	addi	r0 r1 1
	j	beq_cont.29861
beq_else.29860:
	addi	r0 r1 7
	lw	r30 r2 24
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29861:
	j	beq_cont.29859
beq_else.29858:
	addi	r0 r1 0
beq_cont.29859:
beq_cont.29857:
	j	beq_cont.29855
beq_else.29854:
	addi	r0 r1 0
beq_cont.29855:
beq_cont.29853:
	j	beq_cont.29851
beq_else.29850:
	addi	r0 r1 0
beq_cont.29851:
beq_cont.29849:
	j	beq_cont.29847
beq_else.29846:
	addi	r0 r1 0
beq_cont.29847:
beq_cont.29845:
	j	beq_cont.29843
beq_else.29842:
	addi	r0 r1 0
beq_cont.29843:
beq_cont.29841:
	j	beq_cont.29839
beq_else.29838:
	addi	r0 r1 0
beq_cont.29839:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29862
	addi	r0 r1 1
	j	beq_cont.29863
beq_else.29862:
	addi	r0 r1 0
beq_cont.29863:
	j	beq_cont.29837
beq_else.29836:
	addi	r0 r1 0
beq_cont.29837:
	j	beq_cont.29833
beq_else.29832:
	addi	r0 r1 0
beq_cont.29833:
	j	beq_cont.29823
beq_else.29822:
	addi	r0 r1 1
beq_cont.29823:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29864
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29866
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29868
	addi	r0 r1 1
	j	beq_cont.29869
beq_else.29868:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29870
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29872
	addi	r0 r1 1
	j	beq_cont.29873
beq_else.29872:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29874
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29876
	addi	r0 r1 1
	j	beq_cont.29877
beq_else.29876:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29878
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29880
	addi	r0 r1 1
	j	beq_cont.29881
beq_else.29880:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29882
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29884
	addi	r0 r1 1
	j	beq_cont.29885
beq_else.29884:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29886
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29888
	addi	r0 r1 1
	j	beq_cont.29889
beq_else.29888:
	addi	r0 r1 7
	lw	r30 r2 24
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29889:
	j	beq_cont.29887
beq_else.29886:
	addi	r0 r1 0
beq_cont.29887:
beq_cont.29885:
	j	beq_cont.29883
beq_else.29882:
	addi	r0 r1 0
beq_cont.29883:
beq_cont.29881:
	j	beq_cont.29879
beq_else.29878:
	addi	r0 r1 0
beq_cont.29879:
beq_cont.29877:
	j	beq_cont.29875
beq_else.29874:
	addi	r0 r1 0
beq_cont.29875:
beq_cont.29873:
	j	beq_cont.29871
beq_else.29870:
	addi	r0 r1 0
beq_cont.29871:
beq_cont.29869:
	j	beq_cont.29867
beq_else.29866:
	addi	r0 r1 0
beq_cont.29867:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29890
	addi	r0 r1 1
	j	beq_cont.29891
beq_else.29890:
	addi	r0 r1 1
	lw	r30 r2 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29891:
	j	beq_cont.29865
beq_else.29864:
	addi	r0 r1 1
	lw	r30 r2 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29865:
	j	beq_cont.29821
beq_else.29820:
	addi	r0 r1 0
beq_cont.29821:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29892
	j	beq_cont.29893
beq_else.29892:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	lw	r30 r2 16
	lw	r2 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r1 r4 f0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r1 2
	multi r1 r1 4
	lwoc1	r3 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lw	r30 r1 20
	lwc1	r1 f1 8
	lwc1	 r30 f2 12
	mul.s	f1 f2 f3
	mul.s	f3 f0 f0
	lw	r2 r1 0
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 8
	lwoc1	r3 r2 f3
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f4
	mul.s	f3 f4 f3
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r3 r2 f4
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f4
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f1 f3 f1
	mtc1	r0 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29894
	addi	r0 r1 1
	j	bfle_nontail_cont.29895
bfle_nontail_else.29894:
	addi	r0 r1 0
bfle_nontail_cont.29895:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29896
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r1 r5 f3
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	multi r4 r4 4
	swoc1	f3 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r1 r5 f3
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	multi r4 r4 4
	swoc1	f3 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r1 r5 f3
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f0
	add.s	f3 f0 f0
	multi r4 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.29897
beq_else.29896:
beq_cont.29897:
	mtc1	r0 f0
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29898
	addi	r0 r1 1
	j	bfle_nontail_cont.29899
bfle_nontail_else.29898:
	addi	r0 r1 0
bfle_nontail_cont.29899:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29900
	mul.s	f1 f1 f0
	mul.s	f1 f1 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 4
	mul.s	f0 f1 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f3
	add.s	f3 f0 f3
	multi r2 r2 4
	swoc1	f3 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 1
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f3
	add.s	f3 f0 f3
	multi r2 r2 4
	swoc1	f3 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f3
	add.s	f3 f0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.29901
beq_else.29900:
beq_cont.29901:
beq_cont.29893:
beq_cont.29819:
	j	beq_cont.29817
beq_else.29816:
beq_cont.29817:
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.29902
	jr	r31
ble_tail_else.29902:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r3 4
	lwo	r2 r3 r2
	lw	r2 r3 4
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r5 0
	lui	r24 20078
	ori	r24 r24 27432
	mtc1	r24 f0
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r4 0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r6 0
	multi r6 r6 4
	lwo	r5 r6 r5
	multi r4 r4 4
	lwo	r5 r4 r4
	addi	r0 r6 0
	multi r6 r6 4
	lwo	r4 r6 r6
	addi	r0 r7 -1
	sw	r1 r30 32
	sw	r3 r30 36
	sw	r2 r30 40
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29904
	addi	r0 r7 99
	sw	r5 r30 44
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29906
	sw	r4 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r3
	mov	r1 r6
	jal	solver_fast2.2974
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29908
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29910
	addi	r0 r1 1
	j	bfle_nontail_cont.29911
bfle_nontail_else.29910:
	addi	r0 r1 0
bfle_nontail_cont.29911:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29912
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29914
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 36
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29916
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 36
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29918
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 36
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29920
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 36
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 5
	lw	r30 r2 48
	lw	r30 r3 36
	sw	r31 r30 52
	addi	r30 r30 56
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.29921
beq_else.29920:
beq_cont.29921:
	j	beq_cont.29919
beq_else.29918:
beq_cont.29919:
	j	beq_cont.29917
beq_else.29916:
beq_cont.29917:
	j	beq_cont.29915
beq_else.29914:
beq_cont.29915:
	j	beq_cont.29913
beq_else.29912:
beq_cont.29913:
	j	beq_cont.29909
beq_else.29908:
beq_cont.29909:
	j	beq_cont.29907
beq_else.29906:
	addi	r0 r6 1
	multi r6 r6 4
	lwo	r4 r6 r6
	addi	r0 r7 -1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29922
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r6 r6 4
	lwo	r7 r6 r6
	addi	r0 r7 0
	sw	r4 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r6
	mov	r1 r7
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29924
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 36
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29926
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 36
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29928
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 36
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 5
	lw	r30 r2 48
	lw	r30 r3 36
	sw	r31 r30 52
	addi	r30 r30 56
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.29929
beq_else.29928:
beq_cont.29929:
	j	beq_cont.29927
beq_else.29926:
beq_cont.29927:
	j	beq_cont.29925
beq_else.29924:
beq_cont.29925:
	j	beq_cont.29923
beq_else.29922:
beq_cont.29923:
beq_cont.29907:
	addi	r0 r1 1
	lw	r30 r2 44
	lw	r30 r3 36
	sw	r31 r30 52
	addi	r30 r30 56
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.29905
beq_else.29904:
beq_cont.29905:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29930
	addi	r0 r1 1
	j	bfle_nontail_cont.29931
bfle_nontail_else.29930:
	addi	r0 r1 0
bfle_nontail_cont.29931:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29932
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29934
	addi	r0 r1 1
	j	bfle_nontail_cont.29935
bfle_nontail_else.29934:
	addi	r0 r1 0
bfle_nontail_cont.29935:
	j	beq_cont.29933
beq_else.29932:
	addi	r0 r1 0
beq_cont.29933:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29936
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r0 r2 4
	mult	r1 r2 r1
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 40
	lw	r2 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29938
	j	beq_cont.29939
beq_else.29938:
	addi	r0 r1 0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r3
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29940
	j	beq_cont.29941
beq_else.29940:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	lw	r30 r2 36
	lw	r2 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r1 r4 f0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r1 2
	multi r1 r1 4
	lwoc1	r3 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lw	r30 r1 40
	lwc1	r1 f1 8
	lwc1	 r30 f2 12
	mul.s	f1 f2 f3
	mul.s	f3 f0 f0
	lw	r2 r1 0
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 8
	lwoc1	r3 r2 f3
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f4
	mul.s	f3 f4 f3
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r3 r2 f4
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f4
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f1 f3 f1
	lwc1	 r30 f3 4
	sw	r31 r30 52
	addi	r30 r30 56
	mov.s	f3 f2
	jal	add_light.3071
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.29941:
beq_cont.29939:
	j	beq_cont.29937
beq_else.29936:
beq_cont.29937:
	addi	r0 r1 1
	lw	r30 r2 32
	sub	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 4
	lw	r30 r2 8
	j	trace_reflections.3075
trace_ray.3080:
	addi	r0 r4 4
	sub	r1 r4 r25
	blez	r25 ble_tail_else.29942
	jr	r31
ble_tail_else.29942:
	lw	r3 r4 8
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r6 0
	lui	r24 20078
	ori	r24 r24 27432
	mtc1	r24 f2
	multi r6 r6 4
	swoc1	f2 r5 r6
	addi	r0 r5 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r6 r7 r6
	swc1	f1 r30 0
	sw	r3 r30 4
	swc1	f0 r30 8
	sw	r2 r30 12
	sw	r4 r30 16
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r3 r2
	mov	r1 r5
	mov	r2 r6
	jal	trace_or_matrix.3039
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29944
	addi	r0 r1 1
	j	bfle_nontail_cont.29945
bfle_nontail_else.29944:
	addi	r0 r1 0
bfle_nontail_cont.29945:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29946
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29948
	addi	r0 r1 1
	j	bfle_nontail_cont.29949
bfle_nontail_else.29948:
	addi	r0 r1 0
bfle_nontail_cont.29949:
	j	beq_cont.29947
beq_else.29946:
	addi	r0 r1 0
beq_cont.29947:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29950
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r3 4
	lwo	r2 r3 r2
	lw	r2 r3 8
	lw	r2 r4 28
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f0
	lwc1	 r30 f1 8
	mul.s	f0 f1 f0
	lw	r2 r4 4
	addi	r0 r5 1
	sw	r3 r30 24
	swc1	f0 r30 28
	sw	r1 r30 32
	sw	r2 r30 36
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29951
	addi	r0 r5 2
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29953
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r2
	jal	get_nvector_second.3063
	addi	r30 r30 -44
	lw	r30 r31 40
	j	beq_cont.29954
beq_else.29953:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r5 0
	lw	r2 r6 16
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r6 r7 f2
	neg.s	f2 f2
	multi r5 r5 4
	swoc1	f2 r4 r5
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r5 1
	lw	r2 r6 16
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r6 r7 f2
	neg.s	f2 f2
	multi r5 r5 4
	swoc1	f2 r4 r5
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r5 2
	lw	r2 r6 16
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r6 r7 f2
	neg.s	f2 f2
	multi r5 r5 4
	swoc1	f2 r4 r5
beq_cont.29954:
	j	beq_cont.29952
beq_else.29951:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	mtc1	r0 f2
	addi	r0 r6 0
	multi r6 r6 4
	swoc1	f2 r5 r6
	addi	r0 r6 1
	multi r6 r6 4
	swoc1	f2 r5 r6
	addi	r0 r6 2
	multi r6 r6 4
	swoc1	f2 r5 r6
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r6 1
	sub	r4 r6 r6
	addi	r0 r7 1
	sub	r4 r7 r4
	multi r4 r4 4
	lw	r30 r7 12
	lwoc1	r7 r4 f2
	mtc1	r0 f3
	sub.s	f2 f3 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.29955
	addi	r0 r4 0
	j	bfeq_nontail_cont.29956
bfeq_nontail_else.29955:
	addi	r0 r4 1
bfeq_nontail_cont.29956:
	addi	r0 r8 0
	sub	r4 r8 r25
	beq	r25 r0 beq_else.29957
	mtc1	r0 f2
	j	beq_cont.29958
beq_else.29957:
	mtc1	r0 f3
	sub.s	f2 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29959
	addi	r0 r4 1
	j	bfle_nontail_cont.29960
bfle_nontail_else.29959:
	addi	r0 r4 0
bfle_nontail_cont.29960:
	addi	r0 r8 0
	sub	r4 r8 r25
	beq	r25 r0 beq_else.29961
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	j	beq_cont.29962
beq_else.29961:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f2
beq_cont.29962:
beq_cont.29958:
	neg.s	f2 f2
	multi r6 r4 4
	swoc1	f2 r5 r4
beq_cont.29952:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f0
	multi r3 r3 4
	swoc1	f0 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f0
	multi r3 r3 4
	swoc1	f0 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f0
	multi r3 r2 4
	swoc1	f0 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	lw	r30 r1 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	utexture.3068
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 4
	lw	r30 r2 32
	mult	r2 r1 r1
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 20
	multi r2 r3 4
	lw	r30 r4 16
	swo	r1 r4 r3
	lw	r30 r1 4
	lw	r1 r3 4
	multi r2 r5 4
	lwo	r3 r5 r3
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r6 0
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r5 r7 f0
	multi r6 r6 4
	swoc1	f0 r3 r6
	addi	r0 r6 1
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r5 r7 f0
	multi r6 r6 4
	swoc1	f0 r3 r6
	addi	r0 r6 2
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r5 r7 f0
	multi r6 r5 4
	swoc1	f0 r3 r5
	lw	r1 r3 12
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r30 r5 36
	lw	r5 r6 28
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r6 r7 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29963
	addi	r0 r6 1
	j	bfle_nontail_cont.29964
bfle_nontail_else.29963:
	addi	r0 r6 0
bfle_nontail_cont.29964:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29965
	addi	r0 r6 0
	multi r2 r7 4
	swo	r6 r3 r7
	j	beq_cont.29966
beq_else.29965:
	addi	r0 r6 1
	multi r2 r7 4
	swo	r6 r3 r7
	lw	r1 r3 16
	multi r2 r6 4
	lwo	r3 r6 r6
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r8 0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r7 r9 f0
	multi r8 r8 4
	swoc1	f0 r6 r8
	addi	r0 r8 1
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r7 r9 f0
	multi r8 r8 4
	swoc1	f0 r6 r8
	addi	r0 r8 2
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r7 r9 f0
	multi r8 r7 4
	swoc1	f0 r6 r7
	multi r2 r6 4
	lwo	r3 r6 r3
	lui	r24 15232
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 28
	mul.s	f0 f1 f0
	addi	r0 r6 0
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r3 r7 f2
	mul.s	f2 f0 f2
	multi r6 r6 4
	swoc1	f2 r3 r6
	addi	r0 r6 1
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r3 r7 f2
	mul.s	f2 f0 f2
	multi r6 r6 4
	swoc1	f2 r3 r6
	addi	r0 r6 2
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r3 r7 f2
	mul.s	f2 f0 f0
	multi r6 r6 4
	swoc1	f0 r3 r6
	lw	r1 r3 28
	multi r2 r6 4
	lwo	r3 r6 r3
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r7 0
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r6 r8 f0
	multi r7 r7 4
	swoc1	f0 r3 r7
	addi	r0 r7 1
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r6 r8 f0
	multi r7 r7 4
	swoc1	f0 r3 r7
	addi	r0 r7 2
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r6 r8 f0
	multi r7 r6 4
	swoc1	f0 r3 r6
beq_cont.29966:
	lui	r24 49152
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r6 0
	multi r6 r6 4
	lw	r30 r7 12
	lwoc1	r7 r6 f1
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r3 r6 f2
	mul.s	f1 f2 f1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r7 r6 f2
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f3
	mul.s	f2 f3 f2
	add.s	f1 f2 f1
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r7 r6 f2
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f3
	mul.s	f2 f3 f2
	add.s	f1 f2 f1
	mul.s	f0 f1 f0
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r6 0
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r7 r8 f1
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r3 r8 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	multi r6 r6 4
	swoc1	f1 r7 r6
	addi	r0 r6 1
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r7 r8 f1
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r3 r8 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	multi r6 r6 4
	swoc1	f1 r7 r6
	addi	r0 r6 2
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r7 r8 f1
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r3 r8 f2
	mul.s	f0 f2 f0
	add.s	f1 f0 f0
	multi r6 r3 4
	swoc1	f0 r7 r3
	lw	r5 r3 28
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f0
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	addi	r0 r3 0
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r8 0
	multi r8 r8 4
	lwo	r6 r8 r6
	multi r3 r3 4
	lwo	r6 r3 r3
	addi	r0 r8 0
	multi r8 r8 4
	lwo	r3 r8 r8
	addi	r0 r9 -1
	swc1	f0 r30 40
	sub	r8 r9 r25
	beq	r25 r0 beq_else.29967
	addi	r0 r9 99
	sw	r3 r30 44
	sw	r6 r30 48
	sub	r8 r9 r25
	beq	r25 r0 beq_else.29969
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r10 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r11 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r8 r12 4
	lwo	r11 r12 r11
	addi	r0 r12 0
	multi r12 r12 4
	lwoc1	r10 r12 f2
	lw	r11 r12 20
	addi	r0 r13 0
	multi r13 r13 4
	lwoc1	r12 r13 f3
	sub.s	f2 f3 f2
	addi	r0 r12 1
	multi r12 r12 4
	lwoc1	r10 r12 f3
	lw	r11 r12 20
	addi	r0 r13 1
	multi r13 r13 4
	lwoc1	r12 r13 f4
	sub.s	f3 f4 f3
	addi	r0 r12 2
	multi r12 r12 4
	lwoc1	r10 r12 f4
	lw	r11 r10 20
	addi	r0 r12 2
	multi r12 r12 4
	lwoc1	r10 r12 f5
	sub.s	f4 f5 f4
	lw	r9 r10 4
	multi r8 r8 4
	lwo	r10 r8 r8
	lw	r11 r10 4
	addi	r0 r12 1
	sub	r10 r12 r25
	beq	r25 r0 beq_else.29971
	addi	r0 r9 2
	sub	r10 r9 r25
	beq	r25 r0 beq_else.29973
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r8
	mov	r1 r11
	mov.s	f3 f1
	mov.s	f2 f0
	mov.s	f4 f2
	jal	solver_second_fast.2950
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.29974
beq_else.29973:
	mtc1	r0 f5
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r8 r9 f6
	sub.s	f5 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29975
	addi	r0 r9 1
	j	bfle_nontail_cont.29976
bfle_nontail_else.29975:
	addi	r0 r9 0
bfle_nontail_cont.29976:
	addi	r0 r10 0
	sub	r9 r10 r25
	beq	r25 r0 beq_else.29977
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r10 0
	addi	r0 r11 1
	multi r11 r11 4
	lwoc1	r8 r11 f5
	mul.s	f5 f2 f2
	addi	r0 r11 2
	multi r11 r11 4
	lwoc1	r8 r11 f5
	mul.s	f5 f3 f3
	add.s	f2 f3 f2
	addi	r0 r11 3
	multi r11 r11 4
	lwoc1	r8 r11 f3
	mul.s	f3 f4 f3
	add.s	f2 f3 f2
	multi r10 r8 4
	swoc1	f2 r9 r8
	addi	r0 r1 1
	j	beq_cont.29978
beq_else.29977:
	addi	r0 r1 0
beq_cont.29978:
beq_cont.29974:
	j	beq_cont.29972
beq_else.29971:
	lw	r9 r9 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r3 r8
	mov	r2 r9
	mov	r1 r11
	mov.s	f3 f1
	mov.s	f2 f0
	mov.s	f4 f2
	jal	solver_rect_fast.2937
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.29972:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29979
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29981
	addi	r0 r1 1
	j	bfle_nontail_cont.29982
bfle_nontail_else.29981:
	addi	r0 r1 0
bfle_nontail_cont.29982:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29983
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29985
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29987
	addi	r0 r1 1
	j	beq_cont.29988
beq_else.29987:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29989
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29991
	addi	r0 r1 1
	j	beq_cont.29992
beq_else.29991:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29993
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29995
	addi	r0 r1 1
	j	beq_cont.29996
beq_else.29995:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29997
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29999
	addi	r0 r1 1
	j	beq_cont.30000
beq_else.29999:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30001
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30003
	addi	r0 r1 1
	j	beq_cont.30004
beq_else.30003:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30005
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30007
	addi	r0 r1 1
	j	beq_cont.30008
beq_else.30007:
	addi	r0 r1 7
	lw	r30 r2 44
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.30008:
	j	beq_cont.30006
beq_else.30005:
	addi	r0 r1 0
beq_cont.30006:
beq_cont.30004:
	j	beq_cont.30002
beq_else.30001:
	addi	r0 r1 0
beq_cont.30002:
beq_cont.30000:
	j	beq_cont.29998
beq_else.29997:
	addi	r0 r1 0
beq_cont.29998:
beq_cont.29996:
	j	beq_cont.29994
beq_else.29993:
	addi	r0 r1 0
beq_cont.29994:
beq_cont.29992:
	j	beq_cont.29990
beq_else.29989:
	addi	r0 r1 0
beq_cont.29990:
beq_cont.29988:
	j	beq_cont.29986
beq_else.29985:
	addi	r0 r1 0
beq_cont.29986:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30009
	addi	r0 r1 1
	j	beq_cont.30010
beq_else.30009:
	addi	r0 r1 0
beq_cont.30010:
	j	beq_cont.29984
beq_else.29983:
	addi	r0 r1 0
beq_cont.29984:
	j	beq_cont.29980
beq_else.29979:
	addi	r0 r1 0
beq_cont.29980:
	j	beq_cont.29970
beq_else.29969:
	addi	r0 r1 1
beq_cont.29970:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30011
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30013
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30015
	addi	r0 r1 1
	j	beq_cont.30016
beq_else.30015:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30017
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30019
	addi	r0 r1 1
	j	beq_cont.30020
beq_else.30019:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30021
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30023
	addi	r0 r1 1
	j	beq_cont.30024
beq_else.30023:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30025
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30027
	addi	r0 r1 1
	j	beq_cont.30028
beq_else.30027:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30029
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30031
	addi	r0 r1 1
	j	beq_cont.30032
beq_else.30031:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30033
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30035
	addi	r0 r1 1
	j	beq_cont.30036
beq_else.30035:
	addi	r0 r1 7
	lw	r30 r2 44
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.30036:
	j	beq_cont.30034
beq_else.30033:
	addi	r0 r1 0
beq_cont.30034:
beq_cont.30032:
	j	beq_cont.30030
beq_else.30029:
	addi	r0 r1 0
beq_cont.30030:
beq_cont.30028:
	j	beq_cont.30026
beq_else.30025:
	addi	r0 r1 0
beq_cont.30026:
beq_cont.30024:
	j	beq_cont.30022
beq_else.30021:
	addi	r0 r1 0
beq_cont.30022:
beq_cont.30020:
	j	beq_cont.30018
beq_else.30017:
	addi	r0 r1 0
beq_cont.30018:
beq_cont.30016:
	j	beq_cont.30014
beq_else.30013:
	addi	r0 r1 0
beq_cont.30014:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30037
	addi	r0 r1 1
	j	beq_cont.30038
beq_else.30037:
	addi	r0 r1 1
	lw	r30 r2 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.30038:
	j	beq_cont.30012
beq_else.30011:
	addi	r0 r1 1
	lw	r30 r2 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.30012:
	j	beq_cont.29968
beq_else.29967:
	addi	r0 r1 0
beq_cont.29968:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30039
	j	beq_cont.30040
beq_else.30039:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r1 r3 f0
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r1 r3 f1
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r1 r3 f1
	addi	r0 r1 2
	multi r1 r1 4
	lwoc1	r2 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	lwc1	 r30 f1 28
	mul.s	f0 f1 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 12
	lwoc1	r3 r2 f2
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f3
	mul.s	f2 f3 f2
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r3 r2 f3
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f4
	mul.s	f3 f4 f3
	add.s	f2 f3 f2
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f3
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f4
	mul.s	f3 f4 f3
	add.s	f2 f3 f2
	neg.s	f2 f2
	mtc1	r0 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30041
	addi	r0 r1 1
	j	bfle_nontail_cont.30042
bfle_nontail_else.30041:
	addi	r0 r1 0
bfle_nontail_cont.30042:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30043
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r1 r5 f3
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	multi r4 r4 4
	swoc1	f3 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r1 r5 f3
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	multi r4 r4 4
	swoc1	f3 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r1 r5 f3
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f0
	add.s	f3 f0 f0
	multi r4 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.30044
beq_else.30043:
beq_cont.30044:
	mtc1	r0 f0
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30045
	addi	r0 r1 1
	j	bfle_nontail_cont.30046
bfle_nontail_else.30045:
	addi	r0 r1 0
bfle_nontail_cont.30046:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30047
	mul.s	f2 f2 f0
	mul.s	f2 f2 f2
	mul.s	f0 f2 f0
	lwc1	 r30 f2 40
	mul.s	f0 f2 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f3
	add.s	f3 f0 f3
	multi r2 r2 4
	swoc1	f3 r1 r2
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 1
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f3
	add.s	f3 f0 f3
	multi r2 r2 4
	swoc1	f3 r1 r2
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 2
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f3
	add.s	f3 f0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.30048
beq_else.30047:
beq_cont.30048:
beq_cont.30040:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r1 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r0 r3 1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r1 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r0 r3 2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r1 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 1
	sub	r2 r3 r2
	sw	r31 r30 52
	addi	r30 r30 56
	jal	setup_startp_constants.2991
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30049
	j	ble_nontail_cont.30050
ble_nontail_else.30049:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r3 4
	lwo	r2 r3 r2
	lw	r2 r3 4
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r5 0
	lui	r24 20078
	ori	r24 r24 27432
	mtc1	r24 f0
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r4 0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r6 0
	multi r6 r6 4
	lwo	r5 r6 r5
	multi r4 r4 4
	lwo	r5 r4 r4
	addi	r0 r6 0
	multi r6 r6 4
	lwo	r4 r6 r6
	addi	r0 r7 -1
	sw	r1 r30 52
	sw	r3 r30 56
	sw	r2 r30 60
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30051
	addi	r0 r7 99
	sw	r5 r30 64
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30053
	sw	r4 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r3
	mov	r1 r6
	jal	solver_fast2.2974
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30055
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30057
	addi	r0 r1 1
	j	bfle_nontail_cont.30058
bfle_nontail_else.30057:
	addi	r0 r1 0
bfle_nontail_cont.30058:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30059
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30061
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 56
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30063
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 56
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30065
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 56
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30067
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 56
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r1 5
	lw	r30 r2 68
	lw	r30 r3 56
	sw	r31 r30 72
	addi	r30 r30 76
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -76
	lw	r30 r31 72
	j	beq_cont.30068
beq_else.30067:
beq_cont.30068:
	j	beq_cont.30066
beq_else.30065:
beq_cont.30066:
	j	beq_cont.30064
beq_else.30063:
beq_cont.30064:
	j	beq_cont.30062
beq_else.30061:
beq_cont.30062:
	j	beq_cont.30060
beq_else.30059:
beq_cont.30060:
	j	beq_cont.30056
beq_else.30055:
beq_cont.30056:
	j	beq_cont.30054
beq_else.30053:
	addi	r0 r6 1
	multi r6 r6 4
	lwo	r4 r6 r6
	addi	r0 r7 -1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30069
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	multi r6 r6 4
	lwo	r7 r6 r6
	addi	r0 r7 0
	sw	r4 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r6
	mov	r1 r7
	jal	solve_each_element_fast.3045
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30071
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 56
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30073
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 56
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30075
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 56
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r1 5
	lw	r30 r2 68
	lw	r30 r3 56
	sw	r31 r30 72
	addi	r30 r30 76
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -76
	lw	r30 r31 72
	j	beq_cont.30076
beq_else.30075:
beq_cont.30076:
	j	beq_cont.30074
beq_else.30073:
beq_cont.30074:
	j	beq_cont.30072
beq_else.30071:
beq_cont.30072:
	j	beq_cont.30070
beq_else.30069:
beq_cont.30070:
beq_cont.30054:
	addi	r0 r1 1
	lw	r30 r2 64
	lw	r30 r3 56
	sw	r31 r30 72
	addi	r30 r30 76
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -76
	lw	r30 r31 72
	j	beq_cont.30052
beq_else.30051:
beq_cont.30052:
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30077
	addi	r0 r1 1
	j	bfle_nontail_cont.30078
bfle_nontail_else.30077:
	addi	r0 r1 0
bfle_nontail_cont.30078:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30079
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30081
	addi	r0 r1 1
	j	bfle_nontail_cont.30082
bfle_nontail_else.30081:
	addi	r0 r1 0
bfle_nontail_cont.30082:
	j	beq_cont.30080
beq_else.30079:
	addi	r0 r1 0
beq_cont.30080:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30083
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r0 r2 4
	mult	r1 r2 r1
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 60
	lw	r2 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30085
	j	beq_cont.30086
beq_else.30085:
	addi	r0 r1 0
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r3
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30087
	j	beq_cont.30088
beq_else.30087:
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	lw	r30 r2 56
	lw	r2 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r1 r4 f0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r1 2
	multi r1 r1 4
	lwoc1	r3 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lw	r30 r1 60
	lwc1	r1 f1 8
	lwc1	 r30 f2 28
	mul.s	f1 f2 f3
	mul.s	f3 f0 f0
	lw	r2 r1 0
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 12
	lwoc1	r3 r2 f3
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f4
	mul.s	f3 f4 f3
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r3 r2 f4
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f4
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f1 f3 f1
	lwc1	 r30 f3 40
	sw	r31 r30 72
	addi	r30 r30 76
	mov.s	f3 f2
	jal	add_light.3071
	addi	r30 r30 -76
	lw	r30 r31 72
beq_cont.30088:
beq_cont.30086:
	j	beq_cont.30084
beq_else.30083:
beq_cont.30084:
	addi	r0 r1 1
	lw	r30 r2 52
	sub	r2 r1 r1
	lwc1	 r30 f0 28
	lwc1	 r30 f1 40
	lw	r30 r2 12
	sw	r31 r30 72
	addi	r30 r30 76
	jal	trace_reflections.3075
	addi	r30 r30 -76
	lw	r30 r31 72
ble_nontail_cont.30050:
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	mtc1	r0 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30089
	addi	r0 r1 1
	j	bfle_nontail_cont.30090
bfle_nontail_else.30089:
	addi	r0 r1 0
bfle_nontail_cont.30090:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30091
	addi	r0 r1 4
	lw	r30 r2 20
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30092
	addi	r0 r1 1
	add	r2 r1 r1
	addi	r0 r3 -1
	multi r1 r1 4
	lw	r30 r4 16
	swo	r3 r4 r1
	j	ble_nontail_cont.30093
ble_nontail_else.30092:
ble_nontail_cont.30093:
	addi	r0 r1 2
	lw	r30 r3 24
	sub	r3 r1 r25
	beq	r25 r0 beq_tail_else.30094
	jr	r31
beq_tail_else.30094:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r30 r1 36
	lw	r1 r1 28
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r1 r3 f2
	sub.s	f0 f2 f0
	mul.s	f1 f0 f0
	addi	r0 r1 1
	add	r2 r1 r1
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	lwc1	 r30 f2 0
	add.s	f2 f1 f1
	lw	r30 r2 12
	lw	r30 r3 4
	j	trace_ray.3080
beq_tail_else.30091:
	jr	r31
beq_tail_else.29950:
	addi	r0 r1 -1
	lw	r30 r2 20
	multi r2 r3 4
	lw	r30 r4 16
	swo	r1 r4 r3
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.30097
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 12
	lwoc1	r3 r2 f0
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f0
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r3 r2 f1
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30098
	addi	r0 r1 1
	j	bfle_nontail_cont.30099
bfle_nontail_else.30098:
	addi	r0 r1 0
bfle_nontail_cont.30099:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30100
	mul.s	f0 f0 f1
	mul.s	f1 f0 f0
	lwc1	 r30 f1 8
	mul.s	f0 f1 f0
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_beam
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f0
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	multi r2 r2 4
	swoc1	f1 r1 r2
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 1
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	multi r2 r2 4
	swoc1	f1 r1 r2
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 2
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f1
	add.s	f1 f0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.30100:
	jr	r31
beq_tail_else.30097:
	jr	r31
trace_diffuse_ray.3086:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	lui	r24 20078
	ori	r24 r24 27432
	mtc1	r24 f1
	multi r3 r3 4
	swoc1	f1 r2 r3
	addi	r0 r2 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	swc1	f0 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r28 r3
	mov	r3 r1
	mov	r1 r2
	mov	r2 r28
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30104
	addi	r0 r1 1
	j	bfle_nontail_cont.30105
bfle_nontail_else.30104:
	addi	r0 r1 0
bfle_nontail_cont.30105:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30106
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30108
	addi	r0 r1 1
	j	bfle_nontail_cont.30109
bfle_nontail_else.30108:
	addi	r0 r1 0
bfle_nontail_cont.30109:
	j	beq_cont.30107
beq_else.30106:
	addi	r0 r1 0
beq_cont.30107:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30110
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	multi r2 r2 4
	lwo	r1 r2 r1
	lw	r30 r2 4
	lw	r2 r2 0
	lw	r1 r3 4
	addi	r0 r4 1
	sw	r1 r30 8
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30111
	addi	r0 r2 2
	sub	r3 r2 r25
	beq	r25 r0 beq_else.30113
	sw	r31 r30 12
	addi	r30 r30 16
	jal	get_nvector_second.3063
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.30114
beq_else.30113:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 0
	lw	r1 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 1
	lw	r1 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 2
	lw	r1 r4 16
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
beq_cont.30114:
	j	beq_cont.30112
beq_else.30111:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	mtc1	r0 f0
	addi	r0 r5 0
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r5 1
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r5 2
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r5 1
	sub	r3 r5 r5
	addi	r0 r6 1
	sub	r3 r6 r3
	multi r3 r3 4
	lwoc1	r2 r3 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.30115
	addi	r0 r2 0
	j	bfeq_nontail_cont.30116
bfeq_nontail_else.30115:
	addi	r0 r2 1
bfeq_nontail_cont.30116:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30117
	mtc1	r0 f0
	j	beq_cont.30118
beq_else.30117:
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30119
	addi	r0 r2 1
	j	bfle_nontail_cont.30120
bfle_nontail_else.30119:
	addi	r0 r2 0
bfle_nontail_cont.30120:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30121
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30122
beq_else.30121:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30122:
beq_cont.30118:
	neg.s	f0 f0
	multi r5 r2 4
	swoc1	f0 r4 r2
beq_cont.30112:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	lw	r30 r1 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	utexture.3068
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30123
	addi	r0 r4 99
	sw	r1 r30 12
	sw	r2 r30 16
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30125
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r3 r7 4
	lwo	r6 r7 r6
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r5 r7 f0
	lw	r6 r7 20
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r5 r7 f1
	lw	r6 r7 20
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r7 r8 f2
	sub.s	f1 f2 f1
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r5 r7 f2
	lw	r6 r5 20
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r5 r7 f3
	sub.s	f2 f3 f2
	lw	r4 r5 4
	multi r3 r3 4
	lwo	r5 r3 r3
	lw	r6 r5 4
	addi	r0 r7 1
	sub	r5 r7 r25
	beq	r25 r0 beq_else.30127
	addi	r0 r4 2
	sub	r5 r4 r25
	beq	r25 r0 beq_else.30129
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	mov	r1 r6
	jal	solver_second_fast.2950
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.30130
beq_else.30129:
	mtc1	r0 f3
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30131
	addi	r0 r4 1
	j	bfle_nontail_cont.30132
bfle_nontail_else.30131:
	addi	r0 r4 0
bfle_nontail_cont.30132:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.30133
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r5 0
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f3
	mul.s	f3 f0 f0
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r6 3
	multi r6 r6 4
	lwoc1	r3 r6 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r3 4
	swoc1	f0 r4 r3
	addi	r0 r1 1
	j	beq_cont.30134
beq_else.30133:
	addi	r0 r1 0
beq_cont.30134:
beq_cont.30130:
	j	beq_cont.30128
beq_else.30127:
	lw	r4 r4 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r4
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30128:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30135
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30137
	addi	r0 r1 1
	j	bfle_nontail_cont.30138
bfle_nontail_else.30137:
	addi	r0 r1 0
bfle_nontail_cont.30138:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30139
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30141
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30143
	addi	r0 r1 1
	j	beq_cont.30144
beq_else.30143:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30145
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30147
	addi	r0 r1 1
	j	beq_cont.30148
beq_else.30147:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30149
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30151
	addi	r0 r1 1
	j	beq_cont.30152
beq_else.30151:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30153
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30155
	addi	r0 r1 1
	j	beq_cont.30156
beq_else.30155:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30157
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30159
	addi	r0 r1 1
	j	beq_cont.30160
beq_else.30159:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30161
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30163
	addi	r0 r1 1
	j	beq_cont.30164
beq_else.30163:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30164:
	j	beq_cont.30162
beq_else.30161:
	addi	r0 r1 0
beq_cont.30162:
beq_cont.30160:
	j	beq_cont.30158
beq_else.30157:
	addi	r0 r1 0
beq_cont.30158:
beq_cont.30156:
	j	beq_cont.30154
beq_else.30153:
	addi	r0 r1 0
beq_cont.30154:
beq_cont.30152:
	j	beq_cont.30150
beq_else.30149:
	addi	r0 r1 0
beq_cont.30150:
beq_cont.30148:
	j	beq_cont.30146
beq_else.30145:
	addi	r0 r1 0
beq_cont.30146:
beq_cont.30144:
	j	beq_cont.30142
beq_else.30141:
	addi	r0 r1 0
beq_cont.30142:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30165
	addi	r0 r1 1
	j	beq_cont.30166
beq_else.30165:
	addi	r0 r1 0
beq_cont.30166:
	j	beq_cont.30140
beq_else.30139:
	addi	r0 r1 0
beq_cont.30140:
	j	beq_cont.30136
beq_else.30135:
	addi	r0 r1 0
beq_cont.30136:
	j	beq_cont.30126
beq_else.30125:
	addi	r0 r1 1
beq_cont.30126:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30167
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30169
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30171
	addi	r0 r1 1
	j	beq_cont.30172
beq_else.30171:
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30173
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30175
	addi	r0 r1 1
	j	beq_cont.30176
beq_else.30175:
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30177
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30179
	addi	r0 r1 1
	j	beq_cont.30180
beq_else.30179:
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30181
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30183
	addi	r0 r1 1
	j	beq_cont.30184
beq_else.30183:
	addi	r0 r1 5
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30185
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30187
	addi	r0 r1 1
	j	beq_cont.30188
beq_else.30187:
	addi	r0 r1 6
	multi r1 r1 4
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30189
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r1
	mov	r1 r3
	jal	shadow_check_and_group.3022
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30191
	addi	r0 r1 1
	j	beq_cont.30192
beq_else.30191:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30192:
	j	beq_cont.30190
beq_else.30189:
	addi	r0 r1 0
beq_cont.30190:
beq_cont.30188:
	j	beq_cont.30186
beq_else.30185:
	addi	r0 r1 0
beq_cont.30186:
beq_cont.30184:
	j	beq_cont.30182
beq_else.30181:
	addi	r0 r1 0
beq_cont.30182:
beq_cont.30180:
	j	beq_cont.30178
beq_else.30177:
	addi	r0 r1 0
beq_cont.30178:
beq_cont.30176:
	j	beq_cont.30174
beq_else.30173:
	addi	r0 r1 0
beq_cont.30174:
beq_cont.30172:
	j	beq_cont.30170
beq_else.30169:
	addi	r0 r1 0
beq_cont.30170:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30193
	addi	r0 r1 1
	j	beq_cont.30194
beq_else.30193:
	addi	r0 r1 1
	lw	r30 r2 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30194:
	j	beq_cont.30168
beq_else.30167:
	addi	r0 r1 1
	lw	r30 r2 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30168:
	j	beq_cont.30124
beq_else.30123:
	addi	r0 r1 0
beq_cont.30124:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30195
	jr	r31
beq_tail_else.30195:
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r1 r3 f0
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r1 r3 f1
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r1 r3 f1
	addi	r0 r1 2
	multi r1 r1 4
	lwoc1	r2 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30197
	addi	r0 r1 1
	j	bfle_nontail_cont.30198
bfle_nontail_else.30197:
	addi	r0 r1 0
bfle_nontail_cont.30198:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30199
	j	beq_cont.30200
beq_else.30199:
	mtc1	r0 f0
beq_cont.30200:
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	lwc1	 r30 f1 0
	mul.s	f1 f0 f0
	lw	r30 r2 8
	lw	r2 r2 28
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f0
	add.s	f1 f0 f0
	multi r3 r2 4
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.30110:
	jr	r31
iter_trace_diffuse_rays.3089:
	addi	r0 r5 0
	sub	r5 r4 r25
	blez	r25 ble_tail_else.30203
	jr	r31
ble_tail_else.30203:
	multi r4 r5 4
	lwo	r1 r5 r5
	lw	r5 r5 0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r5 r6 f0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r2 r6 f1
	mul.s	f0 f1 f0
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r5 r6 f1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r2 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r5 r6 f1
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r2 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30205
	addi	r0 r5 1
	j	bfle_nontail_cont.30206
bfle_nontail_else.30205:
	addi	r0 r5 0
bfle_nontail_cont.30206:
	addi	r0 r6 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r4 r30 12
	sub	r5 r6 r25
	beq	r25 r0 beq_else.30207
	addi	r0 r5 1
	add	r4 r5 r5
	multi r5 r5 4
	lwo	r1 r5 r5
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r7 0
	lui	r24 20078
	ori	r24 r24 27432
	mtc1	r24 f1
	multi r7 r7 4
	swoc1	f1 r6 r7
	addi	r0 r6 0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r8 0
	multi r8 r8 4
	lwo	r7 r8 r7
	multi r6 r6 4
	lwo	r7 r6 r6
	addi	r0 r8 0
	multi r8 r8 4
	lwo	r6 r8 r8
	addi	r0 r9 -1
	swc1	f0 r30 16
	sw	r5 r30 20
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30209
	addi	r0 r9 99
	sw	r7 r30 24
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30211
	sw	r6 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r5
	mov	r1 r8
	jal	solver_fast2.2974
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30213
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30215
	addi	r0 r1 1
	j	bfle_nontail_cont.30216
bfle_nontail_else.30215:
	addi	r0 r1 0
bfle_nontail_cont.30216:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30217
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30219
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 20
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30221
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 20
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30223
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 20
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30225
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 20
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 5
	lw	r30 r2 28
	lw	r30 r3 20
	sw	r31 r30 32
	addi	r30 r30 36
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30226
beq_else.30225:
beq_cont.30226:
	j	beq_cont.30224
beq_else.30223:
beq_cont.30224:
	j	beq_cont.30222
beq_else.30221:
beq_cont.30222:
	j	beq_cont.30220
beq_else.30219:
beq_cont.30220:
	j	beq_cont.30218
beq_else.30217:
beq_cont.30218:
	j	beq_cont.30214
beq_else.30213:
beq_cont.30214:
	j	beq_cont.30212
beq_else.30211:
	addi	r0 r8 1
	multi r8 r8 4
	lwo	r6 r8 r8
	addi	r0 r9 -1
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30227
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r8 r8 4
	lwo	r9 r8 r8
	addi	r0 r9 0
	sw	r6 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r3 r5
	mov	r2 r8
	mov	r1 r9
	jal	solve_each_element_fast.3045
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30229
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 20
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30231
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 20
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30233
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 20
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 5
	lw	r30 r2 28
	lw	r30 r3 20
	sw	r31 r30 32
	addi	r30 r30 36
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30234
beq_else.30233:
beq_cont.30234:
	j	beq_cont.30232
beq_else.30231:
beq_cont.30232:
	j	beq_cont.30230
beq_else.30229:
beq_cont.30230:
	j	beq_cont.30228
beq_else.30227:
beq_cont.30228:
beq_cont.30212:
	addi	r0 r1 1
	lw	r30 r2 24
	lw	r30 r3 20
	sw	r31 r30 32
	addi	r30 r30 36
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30210
beq_else.30209:
beq_cont.30210:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30235
	addi	r0 r1 1
	j	bfle_nontail_cont.30236
bfle_nontail_else.30235:
	addi	r0 r1 0
bfle_nontail_cont.30236:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30237
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30239
	addi	r0 r1 1
	j	bfle_nontail_cont.30240
bfle_nontail_else.30239:
	addi	r0 r1 0
bfle_nontail_cont.30240:
	j	beq_cont.30238
beq_else.30237:
	addi	r0 r1 0
beq_cont.30238:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30241
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	multi r2 r2 4
	lwo	r1 r2 r1
	lw	r30 r2 20
	lw	r2 r2 0
	lw	r1 r3 4
	addi	r0 r4 1
	sw	r1 r30 32
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30243
	addi	r0 r2 2
	sub	r3 r2 r25
	beq	r25 r0 beq_else.30245
	sw	r31 r30 36
	addi	r30 r30 40
	jal	get_nvector_second.3063
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30246
beq_else.30245:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r3 0
	lw	r1 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r3 1
	lw	r1 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r3 2
	lw	r1 r4 16
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
beq_cont.30246:
	j	beq_cont.30244
beq_else.30243:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	mtc1	r0 f0
	addi	r0 r5 0
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r5 1
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r5 2
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r5 1
	sub	r3 r5 r5
	addi	r0 r6 1
	sub	r3 r6 r3
	multi r3 r3 4
	lwoc1	r2 r3 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.30247
	addi	r0 r2 0
	j	bfeq_nontail_cont.30248
bfeq_nontail_else.30247:
	addi	r0 r2 1
bfeq_nontail_cont.30248:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30249
	mtc1	r0 f0
	j	beq_cont.30250
beq_else.30249:
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30251
	addi	r0 r2 1
	j	bfle_nontail_cont.30252
bfle_nontail_else.30251:
	addi	r0 r2 0
bfle_nontail_cont.30252:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30253
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30254
beq_else.30253:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30254:
beq_cont.30250:
	neg.s	f0 f0
	multi r5 r2 4
	swoc1	f0 r4 r2
beq_cont.30244:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r1 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	utexture.3068
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 0
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	sw	r31 r30 36
	addi	r30 r30 40
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30255
	j	beq_cont.30256
beq_else.30255:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r1 r3 f0
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r1 r3 f1
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r1 r3 f1
	addi	r0 r1 2
	multi r1 r1 4
	lwoc1	r2 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30257
	addi	r0 r1 1
	j	bfle_nontail_cont.30258
bfle_nontail_else.30257:
	addi	r0 r1 0
bfle_nontail_cont.30258:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30259
	j	beq_cont.30260
beq_else.30259:
	mtc1	r0 f0
beq_cont.30260:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	lw	r30 r2 32
	lw	r2 r2 28
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f0
	add.s	f1 f0 f0
	multi r3 r2 4
	swoc1	f0 r1 r2
beq_cont.30256:
	j	beq_cont.30242
beq_else.30241:
beq_cont.30242:
	j	beq_cont.30208
beq_else.30207:
	multi r4 r5 4
	lwo	r1 r5 r5
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r7 0
	lui	r24 20078
	ori	r24 r24 27432
	mtc1	r24 f1
	multi r7 r7 4
	swoc1	f1 r6 r7
	addi	r0 r6 0
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r8 0
	multi r8 r8 4
	lwo	r7 r8 r7
	multi r6 r6 4
	lwo	r7 r6 r6
	addi	r0 r8 0
	multi r8 r8 4
	lwo	r6 r8 r8
	addi	r0 r9 -1
	swc1	f0 r30 36
	sw	r5 r30 40
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30261
	addi	r0 r9 99
	sw	r7 r30 44
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30263
	sw	r6 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r5
	mov	r1 r8
	jal	solver_fast2.2974
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30265
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30267
	addi	r0 r1 1
	j	bfle_nontail_cont.30268
bfle_nontail_else.30267:
	addi	r0 r1 0
bfle_nontail_cont.30268:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30269
	addi	r0 r1 1
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30271
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 40
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30273
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 40
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30275
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 40
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30277
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 40
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 5
	lw	r30 r2 48
	lw	r30 r3 40
	sw	r31 r30 52
	addi	r30 r30 56
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.30278
beq_else.30277:
beq_cont.30278:
	j	beq_cont.30276
beq_else.30275:
beq_cont.30276:
	j	beq_cont.30274
beq_else.30273:
beq_cont.30274:
	j	beq_cont.30272
beq_else.30271:
beq_cont.30272:
	j	beq_cont.30270
beq_else.30269:
beq_cont.30270:
	j	beq_cont.30266
beq_else.30265:
beq_cont.30266:
	j	beq_cont.30264
beq_else.30263:
	addi	r0 r8 1
	multi r8 r8 4
	lwo	r6 r8 r8
	addi	r0 r9 -1
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30279
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r8 r8 4
	lwo	r9 r8 r8
	addi	r0 r9 0
	sw	r6 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r3 r5
	mov	r2 r8
	mov	r1 r9
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 2
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30281
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 40
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 3
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30283
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 40
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 4
	multi r1 r1 4
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30285
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r1 4
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 40
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 5
	lw	r30 r2 48
	lw	r30 r3 40
	sw	r31 r30 52
	addi	r30 r30 56
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.30286
beq_else.30285:
beq_cont.30286:
	j	beq_cont.30284
beq_else.30283:
beq_cont.30284:
	j	beq_cont.30282
beq_else.30281:
beq_cont.30282:
	j	beq_cont.30280
beq_else.30279:
beq_cont.30280:
beq_cont.30264:
	addi	r0 r1 1
	lw	r30 r2 44
	lw	r30 r3 40
	sw	r31 r30 52
	addi	r30 r30 56
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.30262
beq_else.30261:
beq_cont.30262:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	mtc1	r0 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30287
	addi	r0 r1 1
	j	bfle_nontail_cont.30288
bfle_nontail_else.30287:
	addi	r0 r1 0
bfle_nontail_cont.30288:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30289
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30291
	addi	r0 r1 1
	j	bfle_nontail_cont.30292
bfle_nontail_else.30291:
	addi	r0 r1 0
bfle_nontail_cont.30292:
	j	beq_cont.30290
beq_else.30289:
	addi	r0 r1 0
beq_cont.30290:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30293
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	multi r2 r2 4
	lwo	r1 r2 r1
	lw	r30 r2 40
	lw	r2 r2 0
	lw	r1 r3 4
	addi	r0 r4 1
	sw	r1 r30 52
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30295
	addi	r0 r2 2
	sub	r3 r2 r25
	beq	r25 r0 beq_else.30297
	sw	r31 r30 56
	addi	r30 r30 60
	jal	get_nvector_second.3063
	addi	r30 r30 -60
	lw	r30 r31 56
	j	beq_cont.30298
beq_else.30297:
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r3 0
	lw	r1 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r3 1
	lw	r1 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r3 2
	lw	r1 r4 16
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
beq_cont.30298:
	j	beq_cont.30296
beq_else.30295:
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	mtc1	r0 f0
	addi	r0 r5 0
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r5 1
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r5 2
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r5 1
	sub	r3 r5 r5
	addi	r0 r6 1
	sub	r3 r6 r3
	multi r3 r3 4
	lwoc1	r2 r3 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.30299
	addi	r0 r2 0
	j	bfeq_nontail_cont.30300
bfeq_nontail_else.30299:
	addi	r0 r2 1
bfeq_nontail_cont.30300:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30301
	mtc1	r0 f0
	j	beq_cont.30302
beq_else.30301:
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30303
	addi	r0 r2 1
	j	bfle_nontail_cont.30304
bfle_nontail_else.30303:
	addi	r0 r2 0
bfle_nontail_cont.30304:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30305
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30306
beq_else.30305:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30306:
beq_cont.30302:
	neg.s	f0 f0
	multi r5 r2 4
	swoc1	f0 r4 r2
beq_cont.30296:
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	lw	r30 r1 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	utexture.3068
	addi	r30 r30 -60
	lw	r30 r31 56
	addi	r0 r1 0
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	sw	r31 r30 56
	addi	r30 r30 60
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -60
	lw	r30 r31 56
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30307
	j	beq_cont.30308
beq_else.30307:
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r1 r3 f0
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r1 r3 f1
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r1 r3 f1
	addi	r0 r1 2
	multi r1 r1 4
	lwoc1	r2 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30309
	addi	r0 r1 1
	j	bfle_nontail_cont.30310
bfle_nontail_else.30309:
	addi	r0 r1 0
bfle_nontail_cont.30310:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30311
	j	beq_cont.30312
beq_else.30311:
	mtc1	r0 f0
beq_cont.30312:
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -56
	lwc1	 r30 f1 36
	mul.s	f1 f0 f0
	lw	r30 r2 52
	lw	r2 r2 28
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	multi r3 r3 4
	swoc1	f1 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r1 r4 f1
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f0
	add.s	f1 f0 f0
	multi r3 r2 4
	swoc1	f0 r1 r2
beq_cont.30308:
	j	beq_cont.30294
beq_else.30293:
beq_cont.30294:
beq_cont.30208:
	addi	r0 r1 2
	lw	r30 r2 12
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30313
	jr	r31
ble_tail_else.30313:
	multi r1 r2 4
	lw	r30 r3 8
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 4
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30315
	addi	r0 r2 1
	j	bfle_nontail_cont.30316
bfle_nontail_else.30315:
	addi	r0 r2 0
bfle_nontail_cont.30316:
	addi	r0 r4 0
	sw	r1 r30 56
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30317
	addi	r0 r2 1
	add	r1 r2 r2
	multi r2 r2 4
	lwo	r3 r2 r2
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r2
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -64
	lw	r30 r31 60
	j	beq_cont.30318
beq_else.30317:
	multi r1 r2 4
	lwo	r3 r2 r2
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r2
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.30318:
	addi	r0 r1 2
	lw	r30 r2 56
	sub	r2 r1 r4
	lw	r30 r1 8
	lw	r30 r2 4
	lw	r30 r3 0
	j	iter_trace_diffuse_rays.3089
trace_diffuse_ray_80percent.3098:
	addi	r0 r4 0
	sw	r2 r30 0
	sw	r3 r30 4
	sw	r1 r30 8
	sub	r1 r4 r25
	beq	r25 r0 beq_else.30319
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r6 0
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r3 r7 f0
	multi r6 r6 4
	swoc1	f0 r5 r6
	addi	r0 r6 1
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r3 r7 f0
	multi r6 r6 4
	swoc1	f0 r5 r6
	addi	r0 r6 2
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r3 r7 f0
	multi r6 r6 4
	swoc1	f0 r5 r6
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r6 0
	multi r6 r6 4
	lwo	r5 r6 r5
	addi	r0 r6 1
	sub	r5 r6 r5
	sw	r4 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r5
	mov	r1 r3
	jal	setup_startp_constants.2991
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r4 118
	lw	r30 r1 12
	lw	r30 r2 0
	lw	r30 r3 4
	sw	r31 r30 16
	addi	r30 r30 20
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.30320
beq_else.30319:
beq_cont.30320:
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30321
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 1
	multi r3 r3 4
	lwo	r1 r3 r1
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lw	r30 r6 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	mov	r1 r6
	jal	setup_startp_constants.2991
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r4 118
	lw	r30 r1 16
	lw	r30 r2 0
	lw	r30 r3 4
	sw	r31 r30 20
	addi	r30 r30 24
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.30322
beq_else.30321:
beq_cont.30322:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30323
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 2
	multi r3 r3 4
	lwo	r1 r3 r1
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lw	r30 r6 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r3
	mov	r1 r6
	jal	setup_startp_constants.2991
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r4 118
	lw	r30 r1 20
	lw	r30 r2 0
	lw	r30 r3 4
	sw	r31 r30 24
	addi	r30 r30 28
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.30324
beq_else.30323:
beq_cont.30324:
	addi	r0 r1 3
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30325
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 3
	multi r3 r3 4
	lwo	r1 r3 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lw	r30 r6 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r3
	mov	r1 r6
	jal	setup_startp_constants.2991
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r4 118
	lw	r30 r1 24
	lw	r30 r2 0
	lw	r30 r3 4
	sw	r31 r30 28
	addi	r30 r30 32
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -32
	lw	r30 r31 28
	j	beq_cont.30326
beq_else.30325:
beq_cont.30326:
	addi	r0 r1 4
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.30327
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 4
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 4
	lwoc1	r5 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r0 r3 1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r5 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r0 r3 2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r5 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 1
	sub	r2 r3 r2
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r5
	jal	setup_startp_constants.2991
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r4 118
	lw	r30 r1 28
	lw	r30 r2 0
	lw	r30 r3 4
	j	iter_trace_diffuse_rays.3089
beq_tail_else.30327:
	jr	r31
calc_diffuse_using_1point.3102:
	lw	r1 r3 20
	lw	r1 r4 28
	lw	r1 r5 4
	lw	r1 r6 16
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r2 r8 4
	lwo	r3 r8 r3
	addi	r0 r8 0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r3 4
	swoc1	f0 r7 r3
	lw	r1 r1 24
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	multi r2 r3 4
	lwo	r4 r3 r3
	multi r2 r4 4
	lwo	r5 r4 r4
	addi	r0 r5 0
	sw	r6 r30 0
	sw	r2 r30 4
	sw	r3 r30 8
	sw	r4 r30 12
	sw	r1 r30 16
	sub	r1 r5 r25
	beq	r25 r0 beq_else.30329
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r5 r7 r5
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r8 0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r4 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r4 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r4 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r8 0
	multi r8 r8 4
	lwo	r7 r8 r7
	addi	r0 r8 1
	sub	r7 r8 r7
	sw	r5 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r7
	mov	r1 r4
	jal	setup_startp_constants.2991
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 118
	multi r1 r2 4
	lw	r30 r3 20
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 8
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30331
	addi	r0 r2 1
	j	bfle_nontail_cont.30332
bfle_nontail_else.30331:
	addi	r0 r2 0
bfle_nontail_cont.30332:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30333
	addi	r0 r1 119
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 24
	addi	r30 r30 28
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.30334
beq_else.30333:
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 24
	addi	r30 r30 28
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -28
	lw	r30 r31 24
beq_cont.30334:
	addi	r0 r4 116
	lw	r30 r1 20
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 24
	addi	r30 r30 28
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.30330
beq_else.30329:
beq_cont.30330:
	addi	r0 r1 1
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30335
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 1
	multi r3 r3 4
	lwo	r1 r3 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lw	r30 r6 12
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r3
	mov	r1 r6
	jal	setup_startp_constants.2991
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 118
	multi r1 r2 4
	lw	r30 r3 24
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 8
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30337
	addi	r0 r2 1
	j	bfle_nontail_cont.30338
bfle_nontail_else.30337:
	addi	r0 r2 0
bfle_nontail_cont.30338:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30339
	addi	r0 r1 119
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 28
	addi	r30 r30 32
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -32
	lw	r30 r31 28
	j	beq_cont.30340
beq_else.30339:
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 28
	addi	r30 r30 32
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -32
	lw	r30 r31 28
beq_cont.30340:
	addi	r0 r4 116
	lw	r30 r1 24
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 28
	addi	r30 r30 32
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -32
	lw	r30 r31 28
	j	beq_cont.30336
beq_else.30335:
beq_cont.30336:
	addi	r0 r1 2
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30341
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r3 2
	multi r3 r3 4
	lwo	r1 r3 r1
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lw	r30 r6 12
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r3
	mov	r1 r6
	jal	setup_startp_constants.2991
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 118
	multi r1 r2 4
	lw	r30 r3 28
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 8
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30343
	addi	r0 r2 1
	j	bfle_nontail_cont.30344
bfle_nontail_else.30343:
	addi	r0 r2 0
bfle_nontail_cont.30344:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30345
	addi	r0 r1 119
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 32
	addi	r30 r30 36
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30346
beq_else.30345:
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 32
	addi	r30 r30 36
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.30346:
	addi	r0 r4 116
	lw	r30 r1 28
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 32
	addi	r30 r30 36
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30342
beq_else.30341:
beq_cont.30342:
	addi	r0 r1 3
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30347
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r3 3
	multi r3 r3 4
	lwo	r1 r3 r1
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lw	r30 r6 12
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r3
	mov	r1 r6
	jal	setup_startp_constants.2991
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 118
	multi r1 r2 4
	lw	r30 r3 32
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 8
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30349
	addi	r0 r2 1
	j	bfle_nontail_cont.30350
bfle_nontail_else.30349:
	addi	r0 r2 0
bfle_nontail_cont.30350:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30351
	addi	r0 r1 119
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30352
beq_else.30351:
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -40
	lw	r30 r31 36
beq_cont.30352:
	addi	r0 r4 116
	lw	r30 r1 32
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 36
	addi	r30 r30 40
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30348
beq_else.30347:
beq_cont.30348:
	addi	r0 r1 4
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30353
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 4
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 12
	lwoc1	r5 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r0 r3 1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r5 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r0 r3 2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r5 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 1
	sub	r2 r3 r2
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r5
	jal	setup_startp_constants.2991
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 118
	multi r1 r2 4
	lw	r30 r3 36
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 8
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30355
	addi	r0 r2 1
	j	bfle_nontail_cont.30356
bfle_nontail_else.30355:
	addi	r0 r2 0
bfle_nontail_cont.30356:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30357
	addi	r0 r1 119
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 40
	addi	r30 r30 44
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -44
	lw	r30 r31 40
	j	beq_cont.30358
beq_else.30357:
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 40
	addi	r30 r30 44
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -44
	lw	r30 r31 40
beq_cont.30358:
	addi	r0 r4 116
	lw	r30 r1 36
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 40
	addi	r30 r30 44
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -44
	lw	r30 r31 40
	j	beq_cont.30354
beq_else.30353:
beq_cont.30354:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	lw	r30 r2 4
	multi r2 r2 4
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r2 4
	swoc1	f0 r1 r2
	jr	r31
calc_diffuse_using_5points.3105:
	multi r1 r6 4
	lwo	r2 r6 r2
	lw	r2 r2 20
	addi	r0 r6 1
	sub	r1 r6 r6
	multi r6 r6 4
	lwo	r3 r6 r6
	lw	r6 r6 20
	multi r1 r7 4
	lwo	r3 r7 r7
	lw	r7 r7 20
	addi	r0 r8 1
	add	r1 r8 r8
	multi r8 r8 4
	lwo	r3 r8 r8
	lw	r8 r8 20
	multi r1 r9 4
	lwo	r4 r9 r4
	lw	r4 r4 20
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r5 r10 4
	lwo	r2 r10 r2
	addi	r0 r10 0
	addi	r0 r11 0
	multi r11 r11 4
	lwoc1	r2 r11 f0
	multi r10 r10 4
	swoc1	f0 r9 r10
	addi	r0 r10 1
	addi	r0 r11 1
	multi r11 r11 4
	lwoc1	r2 r11 f0
	multi r10 r10 4
	swoc1	f0 r9 r10
	addi	r0 r10 2
	addi	r0 r11 2
	multi r11 r11 4
	lwoc1	r2 r11 f0
	multi r10 r2 4
	swoc1	f0 r9 r2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r5 r9 4
	lwo	r6 r9 r6
	addi	r0 r9 0
	addi	r0 r10 0
	multi r10 r10 4
	lwoc1	r2 r10 f0
	addi	r0 r10 0
	multi r10 r10 4
	lwoc1	r6 r10 f1
	add.s	f0 f1 f0
	multi r9 r9 4
	swoc1	f0 r2 r9
	addi	r0 r9 1
	addi	r0 r10 1
	multi r10 r10 4
	lwoc1	r2 r10 f0
	addi	r0 r10 1
	multi r10 r10 4
	lwoc1	r6 r10 f1
	add.s	f0 f1 f0
	multi r9 r9 4
	swoc1	f0 r2 r9
	addi	r0 r9 2
	addi	r0 r10 2
	multi r10 r10 4
	lwoc1	r2 r10 f0
	addi	r0 r10 2
	multi r10 r10 4
	lwoc1	r6 r10 f1
	add.s	f0 f1 f0
	multi r9 r6 4
	swoc1	f0 r2 r6
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r5 r6 4
	lwo	r7 r6 r6
	addi	r0 r7 0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r2 r9 f0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r6 r9 f1
	add.s	f0 f1 f0
	multi r7 r7 4
	swoc1	f0 r2 r7
	addi	r0 r7 1
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r2 r9 f0
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r6 r9 f1
	add.s	f0 f1 f0
	multi r7 r7 4
	swoc1	f0 r2 r7
	addi	r0 r7 2
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r2 r9 f0
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r6 r9 f1
	add.s	f0 f1 f0
	multi r7 r6 4
	swoc1	f0 r2 r6
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r5 r6 4
	lwo	r8 r6 r6
	addi	r0 r7 0
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r2 r8 f0
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r6 r8 f1
	add.s	f0 f1 f0
	multi r7 r7 4
	swoc1	f0 r2 r7
	addi	r0 r7 1
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r2 r8 f0
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r6 r8 f1
	add.s	f0 f1 f0
	multi r7 r7 4
	swoc1	f0 r2 r7
	addi	r0 r7 2
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r2 r8 f0
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r6 r8 f1
	add.s	f0 f1 f0
	multi r7 r6 4
	swoc1	f0 r2 r6
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r5 r6 4
	lwo	r4 r6 r4
	addi	r0 r6 0
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r2 r7 f0
	addi	r0 r7 0
	multi r7 r7 4
	lwoc1	r4 r7 f1
	add.s	f0 f1 f0
	multi r6 r6 4
	swoc1	f0 r2 r6
	addi	r0 r6 1
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r2 r7 f0
	addi	r0 r7 1
	multi r7 r7 4
	lwoc1	r4 r7 f1
	add.s	f0 f1 f0
	multi r6 r6 4
	swoc1	f0 r2 r6
	addi	r0 r6 2
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r2 r7 f0
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r4 r7 f1
	add.s	f0 f1 f0
	multi r6 r4 4
	swoc1	f0 r2 r4
	multi r1 r1 4
	lwo	r3 r1 r1
	lw	r1 r1 16
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r5 r3 4
	lwo	r1 r3 r1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r2 r5 f0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r1 r5 f1
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r2 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r2 r5 f0
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r1 r5 f1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r2 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r2 r5 f0
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r1 r5 f1
	addi	r0 r1 2
	multi r1 r1 4
	lwoc1	r3 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r1 4
	swoc1	f0 r2 r1
	jr	r31
do_without_neighbors.3111:
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.30361
	jr	r31
ble_tail_else.30361:
	lw	r1 r3 8
	addi	r0 r4 0
	multi r2 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30363
	jr	r31
ble_tail_else.30363:
	lw	r1 r3 12
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30365
	lw	r1 r3 20
	lw	r1 r4 28
	lw	r1 r5 4
	lw	r1 r6 16
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -4
	multi r2 r8 4
	lwo	r3 r8 r3
	addi	r0 r8 0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r3 4
	swoc1	f0 r7 r3
	lw	r1 r3 24
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r3 r7 r3
	multi r2 r7 4
	lwo	r4 r7 r4
	multi r2 r7 4
	lwo	r5 r7 r5
	addi	r0 r7 0
	sw	r6 r30 4
	sw	r2 r30 8
	sw	r4 r30 12
	sw	r5 r30 16
	sw	r3 r30 20
	sub	r3 r7 r25
	beq	r25 r0 beq_else.30367
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r8 0
	multi r8 r8 4
	lwo	r7 r8 r7
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r8 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r9 0
	addi	r0 r10 0
	multi r10 r10 4
	lwoc1	r5 r10 f0
	multi r9 r9 4
	swoc1	f0 r8 r9
	addi	r0 r9 1
	addi	r0 r10 1
	multi r10 r10 4
	lwoc1	r5 r10 f0
	multi r9 r9 4
	swoc1	f0 r8 r9
	addi	r0 r9 2
	addi	r0 r10 2
	multi r10 r10 4
	lwoc1	r5 r10 f0
	multi r9 r9 4
	swoc1	f0 r8 r9
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r8 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r9 0
	multi r9 r9 4
	lwo	r8 r9 r8
	addi	r0 r9 1
	sub	r8 r9 r8
	sw	r7 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r8
	mov	r1 r5
	jal	setup_startp_constants.2991
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r4 118
	lw	r30 r1 24
	lw	r30 r2 12
	lw	r30 r3 16
	sw	r31 r30 28
	addi	r30 r30 32
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -32
	lw	r30 r31 28
	j	beq_cont.30368
beq_else.30367:
beq_cont.30368:
	addi	r0 r1 1
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30369
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r3 1
	multi r3 r3 4
	lwo	r1 r3 r1
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lw	r30 r6 16
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r3
	mov	r1 r6
	jal	setup_startp_constants.2991
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r4 118
	lw	r30 r1 28
	lw	r30 r2 12
	lw	r30 r3 16
	sw	r31 r30 32
	addi	r30 r30 36
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30370
beq_else.30369:
beq_cont.30370:
	addi	r0 r1 2
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30371
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r3 2
	multi r3 r3 4
	lwo	r1 r3 r1
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lw	r30 r6 16
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r3
	mov	r1 r6
	jal	setup_startp_constants.2991
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r4 118
	lw	r30 r1 32
	lw	r30 r2 12
	lw	r30 r3 16
	sw	r31 r30 36
	addi	r30 r30 40
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30372
beq_else.30371:
beq_cont.30372:
	addi	r0 r1 3
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30373
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r3 3
	multi r3 r3 4
	lwo	r1 r3 r1
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lw	r30 r6 16
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r6 r5 f0
	multi r4 r4 4
	swoc1	f0 r3 r4
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r3
	mov	r1 r6
	jal	setup_startp_constants.2991
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r4 118
	lw	r30 r1 36
	lw	r30 r2 12
	lw	r30 r3 16
	sw	r31 r30 40
	addi	r30 r30 44
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -44
	lw	r30 r31 40
	j	beq_cont.30374
beq_else.30373:
beq_cont.30374:
	addi	r0 r1 4
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30375
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 4
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 16
	lwoc1	r5 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r0 r3 1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r5 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r0 r3 2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r5 r4 f0
	multi r3 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 1
	sub	r2 r3 r2
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r5
	jal	setup_startp_constants.2991
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r4 118
	lw	r30 r1 40
	lw	r30 r2 12
	lw	r30 r3 16
	sw	r31 r30 44
	addi	r30 r30 48
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -48
	lw	r30 r31 44
	j	beq_cont.30376
beq_else.30375:
beq_cont.30376:
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	lw	r30 r2 8
	multi r2 r3 4
	lw	r30 r4 4
	lwo	r4 r3 r3
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r5 0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r5 4
	swoc1	f0 r1 r5
	addi	r0 r5 1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r5 4
	swoc1	f0 r1 r5
	addi	r0 r5 2
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r4 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r3 4
	swoc1	f0 r1 r3
	j	beq_cont.30366
beq_else.30365:
beq_cont.30366:
	addi	r0 r1 1
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30377
	jr	r31
ble_tail_else.30377:
	lw	r30 r1 0
	lw	r1 r3 8
	addi	r0 r4 0
	multi r2 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30379
	jr	r31
ble_tail_else.30379:
	lw	r1 r3 12
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 44
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30381
	sw	r31 r30 48
	addi	r30 r30 52
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -52
	lw	r30 r31 48
	j	beq_cont.30382
beq_else.30381:
beq_cont.30382:
	addi	r0 r1 1
	lw	r30 r2 44
	add	r2 r1 r1
	addi	r0 r2 4
	sub	r1 r2 r25
	blez	r25 ble_tail_else.30383
	jr	r31
ble_tail_else.30383:
	lw	r30 r2 0
	lw	r2 r3 8
	addi	r0 r4 0
	multi r1 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30385
	jr	r31
ble_tail_else.30385:
	lw	r2 r3 12
	multi r1 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 48
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30387
	lw	r2 r3 20
	lw	r2 r4 28
	lw	r2 r5 4
	lw	r2 r6 16
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r8 4
	lwo	r3 r8 r3
	addi	r0 r8 0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r3 4
	swoc1	f0 r7 r3
	lw	r2 r3 24
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r3 r7 r3
	multi r1 r7 4
	lwo	r4 r7 r4
	multi r1 r7 4
	lwo	r5 r7 r5
	sw	r6 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	mov	r2 r4
	mov	r1 r3
	mov	r3 r5
	jal	trace_diffuse_ray_80percent.3098
	addi	r30 r30 -60
	lw	r30 r31 56
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -56
	lw	r30 r2 48
	multi r2 r3 4
	lw	r30 r4 52
	lwo	r4 r3 r3
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r5 0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r5 4
	swoc1	f0 r1 r5
	addi	r0 r5 1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r5 4
	swoc1	f0 r1 r5
	addi	r0 r5 2
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r4 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r3 4
	swoc1	f0 r1 r3
	j	beq_cont.30388
beq_else.30387:
beq_cont.30388:
	addi	r0 r1 1
	lw	r30 r2 48
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30389
	jr	r31
ble_tail_else.30389:
	lw	r30 r1 0
	lw	r1 r3 8
	addi	r0 r4 0
	multi r2 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30391
	jr	r31
ble_tail_else.30391:
	lw	r1 r3 12
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 56
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30393
	sw	r31 r30 60
	addi	r30 r30 64
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -64
	lw	r30 r31 60
	j	beq_cont.30394
beq_else.30393:
beq_cont.30394:
	addi	r0 r1 1
	lw	r30 r2 56
	add	r2 r1 r2
	lw	r30 r1 0
	j	do_without_neighbors.3111
try_exploit_neighbors.3127:
	multi r1 r7 4
	lwo	r4 r7 r7
	addi	r0 r8 4
	sub	r6 r8 r25
	blez	r25 ble_tail_else.30395
	jr	r31
ble_tail_else.30395:
	addi	r0 r8 0
	lw	r7 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r8 r9 r25
	blez	r25 ble_tail_else.30397
	jr	r31
ble_tail_else.30397:
	multi r1 r8 4
	lwo	r4 r8 r8
	lw	r8 r8 8
	multi r6 r9 4
	lwo	r8 r9 r8
	multi r1 r9 4
	lwo	r3 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30399
	addi	r0 r8 0
	j	beq_cont.30400
beq_else.30399:
	multi r1 r9 4
	lwo	r5 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30401
	addi	r0 r8 0
	j	beq_cont.30402
beq_else.30401:
	addi	r0 r9 1
	sub	r1 r9 r9
	multi r9 r9 4
	lwo	r4 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30403
	addi	r0 r8 0
	j	beq_cont.30404
beq_else.30403:
	addi	r0 r9 1
	add	r1 r9 r9
	multi r9 r9 4
	lwo	r4 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30405
	addi	r0 r8 0
	j	beq_cont.30406
beq_else.30405:
	addi	r0 r8 1
beq_cont.30406:
beq_cont.30404:
beq_cont.30402:
beq_cont.30400:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_tail_else.30407
	lw	r7 r7 12
	multi r6 r8 4
	lwo	r7 r8 r7
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30408
	multi r1 r7 4
	lwo	r3 r7 r7
	lw	r7 r7 20
	addi	r0 r8 1
	sub	r1 r8 r8
	multi r8 r8 4
	lwo	r4 r8 r8
	lw	r8 r8 20
	multi r1 r9 4
	lwo	r4 r9 r9
	lw	r9 r9 20
	addi	r0 r10 1
	add	r1 r10 r10
	multi r10 r10 4
	lwo	r4 r10 r10
	lw	r10 r10 20
	multi r1 r11 4
	lwo	r5 r11 r11
	lw	r11 r11 20
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r12 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r6 r13 4
	lwo	r7 r13 r7
	addi	r0 r13 0
	addi	r0 r14 0
	multi r14 r14 4
	lwoc1	r7 r14 f0
	multi r13 r13 4
	swoc1	f0 r12 r13
	addi	r0 r13 1
	addi	r0 r14 1
	multi r14 r14 4
	lwoc1	r7 r14 f0
	multi r13 r13 4
	swoc1	f0 r12 r13
	addi	r0 r13 2
	addi	r0 r14 2
	multi r14 r14 4
	lwoc1	r7 r14 f0
	multi r13 r7 4
	swoc1	f0 r12 r7
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r6 r12 4
	lwo	r8 r12 r8
	addi	r0 r12 0
	addi	r0 r13 0
	multi r13 r13 4
	lwoc1	r7 r13 f0
	addi	r0 r13 0
	multi r13 r13 4
	lwoc1	r8 r13 f1
	add.s	f0 f1 f0
	multi r12 r12 4
	swoc1	f0 r7 r12
	addi	r0 r12 1
	addi	r0 r13 1
	multi r13 r13 4
	lwoc1	r7 r13 f0
	addi	r0 r13 1
	multi r13 r13 4
	lwoc1	r8 r13 f1
	add.s	f0 f1 f0
	multi r12 r12 4
	swoc1	f0 r7 r12
	addi	r0 r12 2
	addi	r0 r13 2
	multi r13 r13 4
	lwoc1	r7 r13 f0
	addi	r0 r13 2
	multi r13 r13 4
	lwoc1	r8 r13 f1
	add.s	f0 f1 f0
	multi r12 r8 4
	swoc1	f0 r7 r8
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r6 r8 4
	lwo	r9 r8 r8
	addi	r0 r9 0
	addi	r0 r12 0
	multi r12 r12 4
	lwoc1	r7 r12 f0
	addi	r0 r12 0
	multi r12 r12 4
	lwoc1	r8 r12 f1
	add.s	f0 f1 f0
	multi r9 r9 4
	swoc1	f0 r7 r9
	addi	r0 r9 1
	addi	r0 r12 1
	multi r12 r12 4
	lwoc1	r7 r12 f0
	addi	r0 r12 1
	multi r12 r12 4
	lwoc1	r8 r12 f1
	add.s	f0 f1 f0
	multi r9 r9 4
	swoc1	f0 r7 r9
	addi	r0 r9 2
	addi	r0 r12 2
	multi r12 r12 4
	lwoc1	r7 r12 f0
	addi	r0 r12 2
	multi r12 r12 4
	lwoc1	r8 r12 f1
	add.s	f0 f1 f0
	multi r9 r8 4
	swoc1	f0 r7 r8
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r6 r8 4
	lwo	r10 r8 r8
	addi	r0 r9 0
	addi	r0 r10 0
	multi r10 r10 4
	lwoc1	r7 r10 f0
	addi	r0 r10 0
	multi r10 r10 4
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	multi r9 r9 4
	swoc1	f0 r7 r9
	addi	r0 r9 1
	addi	r0 r10 1
	multi r10 r10 4
	lwoc1	r7 r10 f0
	addi	r0 r10 1
	multi r10 r10 4
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	multi r9 r9 4
	swoc1	f0 r7 r9
	addi	r0 r9 2
	addi	r0 r10 2
	multi r10 r10 4
	lwoc1	r7 r10 f0
	addi	r0 r10 2
	multi r10 r10 4
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	multi r9 r8 4
	swoc1	f0 r7 r8
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r6 r8 4
	lwo	r11 r8 r8
	addi	r0 r9 0
	addi	r0 r10 0
	multi r10 r10 4
	lwoc1	r7 r10 f0
	addi	r0 r10 0
	multi r10 r10 4
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	multi r9 r9 4
	swoc1	f0 r7 r9
	addi	r0 r9 1
	addi	r0 r10 1
	multi r10 r10 4
	lwoc1	r7 r10 f0
	addi	r0 r10 1
	multi r10 r10 4
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	multi r9 r9 4
	swoc1	f0 r7 r9
	addi	r0 r9 2
	addi	r0 r10 2
	multi r10 r10 4
	lwoc1	r7 r10 f0
	addi	r0 r10 2
	multi r10 r10 4
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	multi r9 r8 4
	swoc1	f0 r7 r8
	multi r1 r7 4
	lwo	r4 r7 r7
	lw	r7 r7 16
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r8 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r6 r9 4
	lwo	r7 r9 r7
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r10 0
	addi	r0 r11 0
	multi r11 r11 4
	lwoc1	r8 r11 f0
	addi	r0 r11 0
	multi r11 r11 4
	lwoc1	r7 r11 f1
	addi	r0 r11 0
	multi r11 r11 4
	lwoc1	r9 r11 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r10 r10 4
	swoc1	f0 r8 r10
	addi	r0 r10 1
	addi	r0 r11 1
	multi r11 r11 4
	lwoc1	r8 r11 f0
	addi	r0 r11 1
	multi r11 r11 4
	lwoc1	r7 r11 f1
	addi	r0 r11 1
	multi r11 r11 4
	lwoc1	r9 r11 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r10 r10 4
	swoc1	f0 r8 r10
	addi	r0 r10 2
	addi	r0 r11 2
	multi r11 r11 4
	lwoc1	r8 r11 f0
	addi	r0 r11 2
	multi r11 r11 4
	lwoc1	r7 r11 f1
	addi	r0 r7 2
	multi r7 r7 4
	lwoc1	r9 r7 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r10 r7 4
	swoc1	f0 r8 r7
	j	beq_cont.30409
beq_else.30408:
beq_cont.30409:
	addi	r0 r7 1
	add	r6 r7 r6
	multi r1 r7 4
	lwo	r4 r7 r7
	addi	r0 r8 4
	sub	r6 r8 r25
	blez	r25 ble_tail_else.30410
	jr	r31
ble_tail_else.30410:
	addi	r0 r8 0
	lw	r7 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r8 r9 r25
	blez	r25 ble_tail_else.30412
	jr	r31
ble_tail_else.30412:
	multi r1 r8 4
	lwo	r4 r8 r8
	lw	r8 r8 8
	multi r6 r9 4
	lwo	r8 r9 r8
	multi r1 r9 4
	lwo	r3 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30414
	addi	r0 r8 0
	j	beq_cont.30415
beq_else.30414:
	multi r1 r9 4
	lwo	r5 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30416
	addi	r0 r8 0
	j	beq_cont.30417
beq_else.30416:
	addi	r0 r9 1
	sub	r1 r9 r9
	multi r9 r9 4
	lwo	r4 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30418
	addi	r0 r8 0
	j	beq_cont.30419
beq_else.30418:
	addi	r0 r9 1
	add	r1 r9 r9
	multi r9 r9 4
	lwo	r4 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30420
	addi	r0 r8 0
	j	beq_cont.30421
beq_else.30420:
	addi	r0 r8 1
beq_cont.30421:
beq_cont.30419:
beq_cont.30417:
beq_cont.30415:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_tail_else.30422
	lw	r7 r7 12
	multi r6 r8 4
	lwo	r7 r8 r7
	addi	r0 r8 0
	sw	r5 r30 0
	sw	r4 r30 4
	sw	r3 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sw	r6 r30 20
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30423
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r3
	mov	r3 r4
	mov	r4 r5
	mov	r5 r6
	jal	calc_diffuse_using_5points.3105
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.30424
beq_else.30423:
beq_cont.30424:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r6
	lw	r30 r1 16
	lw	r30 r2 12
	lw	r30 r3 8
	lw	r30 r4 4
	lw	r30 r5 0
	j	try_exploit_neighbors.3127
beq_tail_else.30422:
	multi r1 r1 4
	lwo	r4 r1 r1
	addi	r0 r2 4
	sub	r6 r2 r25
	blez	r25 ble_tail_else.30425
	jr	r31
ble_tail_else.30425:
	lw	r1 r2 8
	addi	r0 r3 0
	multi r6 r4 4
	lwo	r2 r4 r2
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30427
	jr	r31
ble_tail_else.30427:
	lw	r1 r2 12
	multi r6 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 0
	sw	r1 r30 24
	sw	r6 r30 20
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30429
	lw	r1 r2 20
	lw	r1 r3 28
	lw	r1 r4 4
	lw	r1 r5 16
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r6 r8 4
	lwo	r2 r8 r2
	addi	r0 r8 0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r2 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r2 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r2 r9 f0
	multi r8 r2 4
	swoc1	f0 r7 r2
	lw	r1 r2 24
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r2 r7 r2
	multi r6 r7 4
	lwo	r3 r7 r3
	multi r6 r7 4
	lwo	r4 r7 r4
	sw	r5 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	mov	r2 r3
	mov	r3 r4
	jal	trace_diffuse_ray_80percent.3098
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	lw	r30 r2 20
	multi r2 r3 4
	lw	r30 r4 28
	lwo	r4 r3 r3
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r5 0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r5 4
	swoc1	f0 r1 r5
	addi	r0 r5 1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r5 4
	swoc1	f0 r1 r5
	addi	r0 r5 2
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r4 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r3 4
	swoc1	f0 r1 r3
	j	beq_cont.30430
beq_else.30429:
beq_cont.30430:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30431
	jr	r31
ble_tail_else.30431:
	lw	r30 r1 24
	lw	r1 r3 8
	addi	r0 r4 0
	multi r2 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30433
	jr	r31
ble_tail_else.30433:
	lw	r1 r3 12
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 32
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30435
	sw	r31 r30 36
	addi	r30 r30 40
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30436
beq_else.30435:
beq_cont.30436:
	addi	r0 r1 1
	lw	r30 r2 32
	add	r2 r1 r2
	lw	r30 r1 24
	j	do_without_neighbors.3111
beq_tail_else.30407:
	multi r1 r1 4
	lwo	r4 r1 r1
	addi	r0 r2 4
	sub	r6 r2 r25
	blez	r25 ble_tail_else.30437
	jr	r31
ble_tail_else.30437:
	lw	r1 r2 8
	addi	r0 r3 0
	multi r6 r4 4
	lwo	r2 r4 r2
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30439
	jr	r31
ble_tail_else.30439:
	lw	r1 r2 12
	multi r6 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 0
	sw	r1 r30 36
	sw	r6 r30 40
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30441
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r2 r6
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -48
	lw	r30 r31 44
	j	beq_cont.30442
beq_else.30441:
beq_cont.30442:
	addi	r0 r1 1
	lw	r30 r2 40
	add	r2 r1 r1
	addi	r0 r2 4
	sub	r1 r2 r25
	blez	r25 ble_tail_else.30443
	jr	r31
ble_tail_else.30443:
	lw	r30 r2 36
	lw	r2 r3 8
	addi	r0 r4 0
	multi r1 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30445
	jr	r31
ble_tail_else.30445:
	lw	r2 r3 12
	multi r1 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 44
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30447
	lw	r2 r3 20
	lw	r2 r4 28
	lw	r2 r5 4
	lw	r2 r6 16
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	multi r1 r8 4
	lwo	r3 r8 r3
	addi	r0 r8 0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r3 4
	swoc1	f0 r7 r3
	lw	r2 r3 24
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r3 r7 r3
	multi r1 r7 4
	lwo	r4 r7 r4
	multi r1 r7 4
	lwo	r5 r7 r5
	sw	r6 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r4
	mov	r1 r3
	mov	r3 r5
	jal	trace_diffuse_ray_80percent.3098
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	lw	r30 r2 44
	multi r2 r3 4
	lw	r30 r4 48
	lwo	r4 r3 r3
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r5 0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r5 4
	swoc1	f0 r1 r5
	addi	r0 r5 1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r5 4
	swoc1	f0 r1 r5
	addi	r0 r5 2
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r1 r6 f0
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f1
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r4 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r5 r3 4
	swoc1	f0 r1 r3
	j	beq_cont.30448
beq_else.30447:
beq_cont.30448:
	addi	r0 r1 1
	lw	r30 r2 44
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30449
	jr	r31
ble_tail_else.30449:
	lw	r30 r1 36
	lw	r1 r3 8
	addi	r0 r4 0
	multi r2 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30451
	jr	r31
ble_tail_else.30451:
	lw	r1 r3 12
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 52
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30453
	sw	r31 r30 56
	addi	r30 r30 60
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -60
	lw	r30 r31 56
	j	beq_cont.30454
beq_else.30453:
beq_cont.30454:
	addi	r0 r1 1
	lw	r30 r2 52
	add	r2 r1 r2
	lw	r30 r1 36
	j	do_without_neighbors.3111
pretrace_diffuse_rays.3140:
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.30455
	jr	r31
ble_tail_else.30455:
	lw	r1 r3 8
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30457
	jr	r31
ble_tail_else.30457:
	lw	r1 r3 12
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30459
	lw	r1 r3 24
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -4
	mtc1	r0 f0
	addi	r0 r5 0
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r5 1
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r5 2
	multi r5 r5 4
	swoc1	f0 r4 r5
	lw	r1 r4 28
	lw	r1 r5 4
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -4
	multi r3 r3 4
	lwo	r6 r3 r3
	multi r2 r6 4
	lwo	r4 r6 r4
	multi r2 r6 4
	lwo	r5 r6 r5
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -4
	addi	r0 r7 0
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r5 r8 f0
	multi r7 r7 4
	swoc1	f0 r6 r7
	addi	r0 r7 1
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r5 r8 f0
	multi r7 r7 4
	swoc1	f0 r6 r7
	addi	r0 r7 2
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r5 r8 f0
	multi r7 r7 4
	swoc1	f0 r6 r7
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -4
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r6 r7 r6
	addi	r0 r7 1
	sub	r6 r7 r6
	sw	r1 r30 4
	sw	r5 r30 8
	sw	r4 r30 12
	sw	r3 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r6
	mov	r1 r5
	jal	setup_startp_constants.2991
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r4 118
	lw	r30 r1 16
	lw	r30 r2 12
	lw	r30 r3 8
	sw	r31 r30 20
	addi	r30 r30 24
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 4
	lw	r1 r2 20
	lw	r30 r3 0
	multi r3 r4 4
	lwo	r2 r4 r2
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r5 0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r4 r6 f0
	multi r5 r5 4
	swoc1	f0 r2 r5
	addi	r0 r5 1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r4 r6 f0
	multi r5 r5 4
	swoc1	f0 r2 r5
	addi	r0 r5 2
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r4 r6 f0
	multi r5 r4 4
	swoc1	f0 r2 r4
	j	beq_cont.30460
beq_else.30459:
beq_cont.30460:
	addi	r0 r2 1
	lw	r30 r3 0
	add	r3 r2 r2
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.30461
	jr	r31
ble_tail_else.30461:
	lw	r1 r3 8
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30463
	jr	r31
ble_tail_else.30463:
	lw	r1 r3 12
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 20
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30465
	lw	r1 r3 24
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	mtc1	r0 f0
	addi	r0 r5 0
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r5 1
	multi r5 r5 4
	swoc1	f0 r4 r5
	addi	r0 r5 2
	multi r5 r5 4
	swoc1	f0 r4 r5
	lw	r1 r4 28
	lw	r1 r5 4
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r3 r3 4
	lwo	r6 r3 r3
	multi r2 r6 4
	lwo	r4 r6 r4
	multi r2 r6 4
	lwo	r5 r6 r5
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r7 0
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r5 r8 f0
	multi r7 r7 4
	swoc1	f0 r6 r7
	addi	r0 r7 1
	addi	r0 r8 1
	multi r8 r8 4
	lwoc1	r5 r8 f0
	multi r7 r7 4
	swoc1	f0 r6 r7
	addi	r0 r7 2
	addi	r0 r8 2
	multi r8 r8 4
	lwoc1	r5 r8 f0
	multi r7 r7 4
	swoc1	f0 r6 r7
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r6 r7 r6
	addi	r0 r7 1
	sub	r6 r7 r6
	sw	r1 r30 4
	sw	r5 r30 24
	sw	r4 r30 28
	sw	r3 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r6
	mov	r1 r5
	jal	setup_startp_constants.2991
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 118
	multi r1 r2 4
	lw	r30 r3 32
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 28
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30467
	addi	r0 r2 1
	j	bfle_nontail_cont.30468
bfle_nontail_else.30467:
	addi	r0 r2 0
bfle_nontail_cont.30468:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30469
	addi	r0 r1 119
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30470
beq_else.30469:
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -40
	lw	r30 r31 36
beq_cont.30470:
	addi	r0 r4 116
	lw	r30 r1 32
	lw	r30 r2 28
	lw	r30 r3 24
	sw	r31 r30 36
	addi	r30 r30 40
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 4
	lw	r1 r2 20
	lw	r30 r3 20
	multi r3 r4 4
	lwo	r2 r4 r2
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r5 0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r4 r6 f0
	multi r5 r5 4
	swoc1	f0 r2 r5
	addi	r0 r5 1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r4 r6 f0
	multi r5 r5 4
	swoc1	f0 r2 r5
	addi	r0 r5 2
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r4 r6 f0
	multi r5 r4 4
	swoc1	f0 r2 r4
	j	beq_cont.30466
beq_else.30465:
beq_cont.30466:
	addi	r0 r2 1
	lw	r30 r3 20
	add	r3 r2 r2
	j	pretrace_diffuse_rays.3140
pretrace_pixels.3143:
	addi	r0 r4 0
	sub	r4 r2 r25
	blez	r25 ble_tail_else.30471
	jr	r31
ble_tail_else.30471:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	sub	r2 r4 r4
	sw	r3 r30 0
	sw	r1 r30 4
	sw	r2 r30 8
	swc1	f2 r30 12
	swc1	f1 r30 16
	swc1	f0 r30 20
	swc1	f3 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r4
	jal	min_caml_float_of_int
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f1
	lwc1	 r30 f2 20
	add.s	f1 f2 f1
	multi r2 r2 4
	swoc1	f1 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 1
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f1
	lwc1	 r30 f3 16
	add.s	f1 f3 f1
	multi r2 r2 4
	swoc1	f1 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 12
	add.s	f0 f1 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f4
	mul.s	f0 f4 f0
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f4
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f0 f4 f0
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f4
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f0 f4 f0
	sqrt.s	f0 f0
	mtc1	r0 f4
	sub.s	f0 f4 f30
	mfc1	f30 r25
	beq	r25 r0 bfeq_nontail_else.30473
	addi	r0 r2 0
	j	bfeq_nontail_cont.30474
bfeq_nontail_else.30473:
	addi	r0 r2 1
bfeq_nontail_cont.30474:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30475
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30476
beq_else.30475:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f4 f0 f0
beq_cont.30476:
	addi	r0 r2 0
	addi	r0 r3 0
	multi r3 r3 4
	lwoc1	r1 r3 f4
	mul.s	f4 f0 f4
	multi r2 r2 4
	swoc1	f4 r1 r2
	addi	r0 r2 1
	addi	r0 r3 1
	multi r3 r3 4
	lwoc1	r1 r3 f4
	mul.s	f4 f0 f4
	multi r2 r2 4
	swoc1	f4 r1 r2
	addi	r0 r2 2
	addi	r0 r3 2
	multi r3 r3 4
	lwoc1	r1 r3 f4
	mul.s	f4 f0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	mtc1	r0 f0
	addi	r0 r2 0
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r0 r2 1
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r0 r2 2
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f0
	multi r3 r3 4
	swoc1	f0 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f0
	multi r3 r3 4
	swoc1	f0 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f0
	multi r3 r2 4
	swoc1	f0 r1 r2
	addi	r0 r1 0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	lw	r30 r3 8
	multi r3 r4 4
	lw	r30 r5 4
	lwo	r5 r4 r4
	mtc1	r0 f4
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r3 r4
	mov.s	f4 f1
	jal	trace_ray.3080
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 8
	multi r1 r2 4
	lw	r30 r3 4
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r5 0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r4 r6 f0
	multi r5 r5 4
	swoc1	f0 r2 r5
	addi	r0 r5 1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r4 r6 f0
	multi r5 r5 4
	swoc1	f0 r2 r5
	addi	r0 r5 2
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r4 r6 f0
	multi r5 r4 4
	swoc1	f0 r2 r4
	multi r1 r2 4
	lwo	r3 r2 r2
	lw	r2 r2 24
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 0
	swo	r5 r2 r4
	multi r1 r2 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	lw	r2 r6 8
	multi r4 r7 4
	lwo	r6 r7 r6
	addi	r0 r7 0
	sub	r7 r6 r25
	blez	r25 ble_nontail_else.30477
	j	ble_nontail_cont.30478
ble_nontail_else.30477:
	lw	r2 r6 12
	multi r4 r7 4
	lwo	r6 r7 r6
	addi	r0 r7 0
	sw	r2 r30 28
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30479
	lw	r2 r6 24
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r6 r7 r6
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	mtc1	r0 f0
	addi	r0 r8 0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 1
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 2
	multi r8 r8 4
	swoc1	f0 r7 r8
	lw	r2 r7 28
	lw	r2 r8 4
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r6 r6 4
	lwo	r9 r6 r6
	multi r4 r9 4
	lwo	r7 r9 r7
	multi r4 r9 4
	lwo	r8 r9 r8
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r10 0
	addi	r0 r11 0
	multi r11 r11 4
	lwoc1	r8 r11 f0
	multi r10 r10 4
	swoc1	f0 r9 r10
	addi	r0 r10 1
	addi	r0 r11 1
	multi r11 r11 4
	lwoc1	r8 r11 f0
	multi r10 r10 4
	swoc1	f0 r9 r10
	addi	r0 r10 2
	addi	r0 r11 2
	multi r11 r11 4
	lwoc1	r8 r11 f0
	multi r10 r10 4
	swoc1	f0 r9 r10
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r10 0
	multi r10 r10 4
	lwo	r9 r10 r9
	addi	r0 r10 1
	sub	r9 r10 r9
	sw	r4 r30 32
	sw	r8 r30 36
	sw	r7 r30 40
	sw	r6 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r9
	mov	r1 r8
	jal	setup_startp_constants.2991
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 118
	multi r1 r2 4
	lw	r30 r3 44
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	multi r4 r4 4
	lw	r30 r5 40
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30481
	addi	r0 r2 1
	j	bfle_nontail_cont.30482
bfle_nontail_else.30481:
	addi	r0 r2 0
bfle_nontail_cont.30482:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30483
	addi	r0 r1 119
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 48
	addi	r30 r30 52
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -52
	lw	r30 r31 48
	j	beq_cont.30484
beq_else.30483:
	multi r1 r1 4
	lwo	r3 r1 r1
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 48
	addi	r30 r30 52
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -52
	lw	r30 r31 48
beq_cont.30484:
	addi	r0 r4 116
	lw	r30 r1 44
	lw	r30 r2 40
	lw	r30 r3 36
	sw	r31 r30 48
	addi	r30 r30 52
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r1 28
	lw	r1 r2 20
	lw	r30 r3 32
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f0
	multi r4 r4 4
	swoc1	f0 r2 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f0
	multi r4 r4 4
	swoc1	f0 r2 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r3 r5 f0
	multi r4 r3 4
	swoc1	f0 r2 r3
	j	beq_cont.30480
beq_else.30479:
beq_cont.30480:
	addi	r0 r2 1
	lw	r30 r1 28
	sw	r31 r30 48
	addi	r30 r30 52
	jal	pretrace_diffuse_rays.3140
	addi	r30 r30 -52
	lw	r30 r31 48
ble_nontail_cont.30478:
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r2
	addi	r0 r1 1
	lw	r30 r3 0
	add	r3 r1 r1
	addi	r0 r3 5
	sub	r3 r1 r25
	blez	r25 ble_nontail_else.30485
	mov	r3 r1
	j	ble_nontail_cont.30486
ble_nontail_else.30485:
	addi	r0 r3 5
	sub	r1 r3 r3
ble_nontail_cont.30486:
	lwc1	 r30 f0 20
	lwc1	 r30 f1 16
	lwc1	 r30 f2 12
	lw	r30 r1 4
	j	pretrace_pixels.3143
scan_pixel.3154:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r6 r7 r6
	sub	r6 r1 r25
	blez	r25 ble_tail_else.30487
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r1 r7 4
	lwo	r4 r7 r7
	lw	r7 r7 0
	addi	r0 r8 0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r7 r9 f0
	multi r8 r8 4
	swoc1	f0 r6 r8
	addi	r0 r8 1
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r7 r9 f0
	multi r8 r8 4
	swoc1	f0 r6 r8
	addi	r0 r8 2
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r7 r9 f0
	multi r8 r7 4
	swoc1	f0 r6 r7
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 1
	multi r7 r7 4
	lwo	r6 r7 r6
	addi	r0 r7 1
	add	r2 r7 r7
	sub	r6 r7 r25
	blez	r25 ble_nontail_else.30488
	addi	r0 r6 0
	sub	r2 r6 r25
	blez	r25 ble_nontail_else.30490
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r6 r7 r6
	addi	r0 r7 1
	add	r1 r7 r7
	sub	r6 r7 r25
	blez	r25 ble_nontail_else.30492
	addi	r0 r6 0
	sub	r1 r6 r25
	blez	r25 ble_nontail_else.30494
	addi	r0 r6 1
	j	ble_nontail_cont.30495
ble_nontail_else.30494:
	addi	r0 r6 0
ble_nontail_cont.30495:
	j	ble_nontail_cont.30493
ble_nontail_else.30492:
	addi	r0 r6 0
ble_nontail_cont.30493:
	j	ble_nontail_cont.30491
ble_nontail_else.30490:
	addi	r0 r6 0
ble_nontail_cont.30491:
	j	ble_nontail_cont.30489
ble_nontail_else.30488:
	addi	r0 r6 0
ble_nontail_cont.30489:
	addi	r0 r7 0
	sw	r5 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	sw	r4 r30 12
	sw	r1 r30 16
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30496
	addi	r0 r6 0
	multi r1 r7 4
	lwo	r4 r7 r7
	addi	r0 r8 0
	lw	r7 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r8 r9 r25
	blez	r25 ble_nontail_else.30498
	j	ble_nontail_cont.30499
ble_nontail_else.30498:
	multi r1 r8 4
	lwo	r4 r8 r8
	lw	r8 r8 8
	multi r6 r9 4
	lwo	r8 r9 r8
	multi r1 r9 4
	lwo	r3 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30500
	addi	r0 r8 0
	j	beq_cont.30501
beq_else.30500:
	multi r1 r9 4
	lwo	r5 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30502
	addi	r0 r8 0
	j	beq_cont.30503
beq_else.30502:
	addi	r0 r9 1
	sub	r1 r9 r9
	multi r9 r9 4
	lwo	r4 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30504
	addi	r0 r8 0
	j	beq_cont.30505
beq_else.30504:
	addi	r0 r9 1
	add	r1 r9 r9
	multi r9 r9 4
	lwo	r4 r9 r9
	lw	r9 r9 8
	multi r6 r10 4
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30506
	addi	r0 r8 0
	j	beq_cont.30507
beq_else.30506:
	addi	r0 r8 1
beq_cont.30507:
beq_cont.30505:
beq_cont.30503:
beq_cont.30501:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30508
	lw	r7 r7 12
	multi r6 r8 4
	lwo	r7 r8 r7
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30510
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	mov	r3 r4
	mov	r4 r5
	mov	r5 r6
	jal	calc_diffuse_using_5points.3105
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.30511
beq_else.30510:
beq_cont.30511:
	addi	r0 r6 1
	lw	r30 r1 16
	lw	r30 r2 8
	lw	r30 r3 4
	lw	r30 r4 12
	lw	r30 r5 0
	sw	r31 r30 20
	addi	r30 r30 24
	jal	try_exploit_neighbors.3127
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.30509
beq_else.30508:
	multi r1 r7 4
	lwo	r4 r7 r7
	lw	r7 r8 8
	addi	r0 r9 0
	multi r6 r10 4
	lwo	r8 r10 r8
	sub	r9 r8 r25
	blez	r25 ble_nontail_else.30512
	j	ble_nontail_cont.30513
ble_nontail_else.30512:
	lw	r7 r8 12
	multi r6 r9 4
	lwo	r8 r9 r8
	addi	r0 r9 0
	sw	r7 r30 20
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30514
	lw	r7 r8 20
	lw	r7 r9 28
	lw	r7 r10 4
	lw	r7 r11 16
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r12 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r6 r13 4
	lwo	r8 r13 r8
	addi	r0 r13 0
	addi	r0 r14 0
	multi r14 r14 4
	lwoc1	r8 r14 f0
	multi r13 r13 4
	swoc1	f0 r12 r13
	addi	r0 r13 1
	addi	r0 r14 1
	multi r14 r14 4
	lwoc1	r8 r14 f0
	multi r13 r13 4
	swoc1	f0 r12 r13
	addi	r0 r13 2
	addi	r0 r14 2
	multi r14 r14 4
	lwoc1	r8 r14 f0
	multi r13 r8 4
	swoc1	f0 r12 r8
	lw	r7 r8 24
	addi	r0 r12 0
	multi r12 r12 4
	lwo	r8 r12 r8
	multi r6 r12 4
	lwo	r9 r12 r9
	multi r6 r12 4
	lwo	r10 r12 r10
	sw	r11 r30 24
	sw	r6 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r3 r10
	mov	r2 r9
	mov	r1 r8
	jal	trace_diffuse_ray_80percent.3098
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	lw	r30 r2 28
	multi r2 r2 4
	lw	r30 r3 24
	lwo	r3 r2 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.30515
beq_else.30514:
beq_cont.30515:
	addi	r0 r2 1
	lw	r30 r1 20
	lw	r1 r3 8
	addi	r0 r4 0
	multi r2 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30516
	j	ble_nontail_cont.30517
ble_nontail_else.30516:
	lw	r1 r3 12
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30518
	sw	r31 r30 32
	addi	r30 r30 36
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30519
beq_else.30518:
beq_cont.30519:
	addi	r0 r2 2
	lw	r30 r1 20
	sw	r31 r30 32
	addi	r30 r30 36
	jal	do_without_neighbors.3111
	addi	r30 r30 -36
	lw	r30 r31 32
ble_nontail_cont.30517:
ble_nontail_cont.30513:
beq_cont.30509:
ble_nontail_cont.30499:
	j	beq_cont.30497
beq_else.30496:
	multi r1 r6 4
	lwo	r4 r6 r6
	addi	r0 r7 0
	lw	r6 r8 8
	addi	r0 r9 0
	multi r7 r10 4
	lwo	r8 r10 r8
	sub	r9 r8 r25
	blez	r25 ble_nontail_else.30520
	j	ble_nontail_cont.30521
ble_nontail_else.30520:
	lw	r6 r8 12
	multi r7 r9 4
	lwo	r8 r9 r8
	addi	r0 r9 0
	sw	r6 r30 32
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30522
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r7
	mov	r1 r6
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30523
beq_else.30522:
beq_cont.30523:
	addi	r0 r1 1
	lw	r30 r2 32
	lw	r2 r3 8
	addi	r0 r4 0
	multi r1 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30524
	j	ble_nontail_cont.30525
ble_nontail_else.30524:
	lw	r2 r3 12
	multi r1 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30526
	lw	r2 r3 20
	lw	r2 r4 28
	lw	r2 r5 4
	lw	r2 r6 16
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	multi r1 r8 4
	lwo	r3 r8 r3
	addi	r0 r8 0
	addi	r0 r9 0
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r8 4
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	multi r9 r9 4
	lwoc1	r3 r9 f0
	multi r8 r3 4
	swoc1	f0 r7 r3
	lw	r2 r3 24
	addi	r0 r7 0
	multi r7 r7 4
	lwo	r3 r7 r3
	multi r1 r7 4
	lwo	r4 r7 r4
	multi r1 r7 4
	lwo	r5 r7 r5
	sw	r6 r30 36
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r2 r4
	mov	r1 r3
	mov	r3 r5
	jal	trace_diffuse_ray_80percent.3098
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	lw	r30 r2 40
	multi r2 r2 4
	lw	r30 r3 36
	lwo	r3 r2 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.30527
beq_else.30526:
beq_cont.30527:
	addi	r0 r2 2
	lw	r30 r1 32
	lw	r1 r3 8
	addi	r0 r4 0
	multi r2 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30528
	j	ble_nontail_cont.30529
ble_nontail_else.30528:
	lw	r1 r3 12
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30530
	sw	r31 r30 44
	addi	r30 r30 48
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -48
	lw	r30 r31 44
	j	beq_cont.30531
beq_else.30530:
beq_cont.30531:
	addi	r0 r2 3
	lw	r30 r1 32
	sw	r31 r30 44
	addi	r30 r30 48
	jal	do_without_neighbors.3111
	addi	r30 r30 -48
	lw	r30 r31 44
ble_nontail_cont.30529:
ble_nontail_cont.30525:
ble_nontail_cont.30521:
beq_cont.30497:
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_int_of_float
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30532
	addi	r0 r1 255
	j	ble_nontail_cont.30533
ble_nontail_else.30532:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30534
	addi	r0 r1 0
	j	ble_nontail_cont.30535
ble_nontail_else.30534:
ble_nontail_cont.30535:
ble_nontail_cont.30533:
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_print_int
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r1 32
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_print_char
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f0
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_int_of_float
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30536
	addi	r0 r1 255
	j	ble_nontail_cont.30537
ble_nontail_else.30536:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30538
	addi	r0 r1 0
	j	ble_nontail_cont.30539
ble_nontail_else.30538:
ble_nontail_cont.30539:
ble_nontail_cont.30537:
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_print_int
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r1 32
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_print_char
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f0
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_int_of_float
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30540
	addi	r0 r1 255
	j	ble_nontail_cont.30541
ble_nontail_else.30540:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30542
	addi	r0 r1 0
	j	ble_nontail_cont.30543
ble_nontail_else.30542:
ble_nontail_cont.30543:
ble_nontail_cont.30541:
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_print_int
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r1 10
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_print_char
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30544
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	multi r1 r3 4
	lw	r30 r4 12
	lwo	r4 r3 r3
	lw	r3 r3 0
	addi	r0 r5 0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r3 r6 f0
	multi r5 r5 4
	swoc1	f0 r2 r5
	addi	r0 r5 1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f0
	multi r5 r5 4
	swoc1	f0 r2 r5
	addi	r0 r5 2
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f0
	multi r5 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r3 1
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 1
	lw	r30 r5 8
	add	r5 r3 r3
	sub	r2 r3 r25
	blez	r25 ble_nontail_else.30545
	addi	r0 r2 0
	sub	r5 r2 r25
	blez	r25 ble_nontail_else.30547
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 1
	add	r1 r3 r3
	sub	r2 r3 r25
	blez	r25 ble_nontail_else.30549
	addi	r0 r2 0
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30551
	addi	r0 r2 1
	j	ble_nontail_cont.30552
ble_nontail_else.30551:
	addi	r0 r2 0
ble_nontail_cont.30552:
	j	ble_nontail_cont.30550
ble_nontail_else.30549:
	addi	r0 r2 0
ble_nontail_cont.30550:
	j	ble_nontail_cont.30548
ble_nontail_else.30547:
	addi	r0 r2 0
ble_nontail_cont.30548:
	j	ble_nontail_cont.30546
ble_nontail_else.30545:
	addi	r0 r2 0
ble_nontail_cont.30546:
	addi	r0 r3 0
	sw	r1 r30 44
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30553
	addi	r0 r6 0
	lw	r30 r3 4
	lw	r30 r2 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r28 r5
	mov	r5 r2
	mov	r2 r28
	jal	try_exploit_neighbors.3127
	addi	r30 r30 -52
	lw	r30 r31 48
	j	beq_cont.30554
beq_else.30553:
	multi r1 r2 4
	lwo	r4 r2 r2
	addi	r0 r3 0
	lw	r2 r6 8
	addi	r0 r7 0
	multi r3 r8 4
	lwo	r6 r8 r6
	sub	r7 r6 r25
	blez	r25 ble_nontail_else.30555
	j	ble_nontail_cont.30556
ble_nontail_else.30555:
	lw	r2 r6 12
	multi r3 r7 4
	lwo	r6 r7 r6
	addi	r0 r7 0
	sw	r2 r30 48
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30557
	lw	r2 r6 20
	lw	r2 r7 28
	lw	r2 r8 4
	lw	r2 r9 16
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r10 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r3 r11 4
	lwo	r6 r11 r6
	addi	r0 r11 0
	addi	r0 r12 0
	multi r12 r12 4
	lwoc1	r6 r12 f0
	multi r11 r11 4
	swoc1	f0 r10 r11
	addi	r0 r11 1
	addi	r0 r12 1
	multi r12 r12 4
	lwoc1	r6 r12 f0
	multi r11 r11 4
	swoc1	f0 r10 r11
	addi	r0 r11 2
	addi	r0 r12 2
	multi r12 r12 4
	lwoc1	r6 r12 f0
	multi r11 r6 4
	swoc1	f0 r10 r6
	lw	r2 r6 24
	addi	r0 r10 0
	multi r10 r10 4
	lwo	r6 r10 r6
	multi r3 r10 4
	lwo	r7 r10 r7
	multi r3 r10 4
	lwo	r8 r10 r8
	sw	r9 r30 52
	sw	r3 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r3 r8
	mov	r2 r7
	mov	r1 r6
	jal	trace_diffuse_ray_80percent.3098
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -60
	lw	r30 r2 56
	multi r2 r2 4
	lw	r30 r3 52
	lwo	r3 r2 r2
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -60
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.30558
beq_else.30557:
beq_cont.30558:
	addi	r0 r2 1
	lw	r30 r1 48
	lw	r1 r3 8
	addi	r0 r4 0
	multi r2 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30559
	j	ble_nontail_cont.30560
ble_nontail_else.30559:
	lw	r1 r3 12
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30561
	sw	r31 r30 60
	addi	r30 r30 64
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -64
	lw	r30 r31 60
	j	beq_cont.30562
beq_else.30561:
beq_cont.30562:
	addi	r0 r2 2
	lw	r30 r1 48
	sw	r31 r30 60
	addi	r30 r30 64
	jal	do_without_neighbors.3111
	addi	r30 r30 -64
	lw	r30 r31 60
ble_nontail_cont.30560:
ble_nontail_cont.30556:
beq_cont.30554:
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -60
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_int_of_float
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30563
	addi	r0 r1 255
	j	ble_nontail_cont.30564
ble_nontail_else.30563:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30565
	addi	r0 r1 0
	j	ble_nontail_cont.30566
ble_nontail_else.30565:
ble_nontail_cont.30566:
ble_nontail_cont.30564:
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_print_int
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r1 32
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_print_char
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -60
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f0
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_int_of_float
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30567
	addi	r0 r1 255
	j	ble_nontail_cont.30568
ble_nontail_else.30567:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30569
	addi	r0 r1 0
	j	ble_nontail_cont.30570
ble_nontail_else.30569:
ble_nontail_cont.30570:
ble_nontail_cont.30568:
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_print_int
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r1 32
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_print_char
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -60
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f0
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_int_of_float
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30571
	addi	r0 r1 255
	j	ble_nontail_cont.30572
ble_nontail_else.30571:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30573
	addi	r0 r1 0
	j	ble_nontail_cont.30574
ble_nontail_else.30573:
ble_nontail_cont.30574:
ble_nontail_cont.30572:
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_print_int
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r1 10
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_print_char
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r1 1
	lw	r30 r2 44
	add	r2 r1 r1
	lw	r30 r2 8
	lw	r30 r3 4
	lw	r30 r4 12
	lw	r30 r5 0
	j	scan_pixel.3154
ble_tail_else.30544:
	jr	r31
ble_tail_else.30487:
	jr	r31
scan_line.3160:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 1
	multi r7 r7 4
	lwo	r6 r7 r6
	sub	r6 r1 r25
	blez	r25 ble_tail_else.30577
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 1
	multi r7 r7 4
	lwo	r6 r7 r6
	addi	r0 r7 1
	sub	r6 r7 r6
	sw	r5 r30 0
	sw	r4 r30 4
	sw	r2 r30 8
	sw	r1 r30 12
	sw	r3 r30 16
	sub	r6 r1 r25
	blez	r25 ble_nontail_else.30578
	addi	r0 r6 1
	add	r1 r6 r6
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r8 0
	multi r8 r8 4
	lwoc1	r7 r8 f0
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r8 1
	multi r8 r8 4
	lwo	r7 r8 r7
	sub	r6 r7 r6
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r6
	jal	min_caml_float_of_int
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	mul.s	f1 f0 f0
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f2
	add.s	f1 f2 f1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f2
	mul.s	f0 f2 f2
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f3
	add.s	f2 f3 f2
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f3
	mul.s	f0 f3 f0
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r2
	lw	r30 r1 4
	lw	r30 r3 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f2 f31
	mov.s	f0 f2
	mov.s	f1 f0
	mov.s	f31 f1
	jal	pretrace_pixels.3143
	addi	r30 r30 -28
	lw	r30 r31 24
	j	ble_nontail_cont.30579
ble_nontail_else.30578:
ble_nontail_cont.30579:
	addi	r0 r1 0
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30580
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	multi r1 r3 4
	lw	r30 r4 16
	lwo	r4 r3 r3
	lw	r3 r3 0
	addi	r0 r5 0
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r3 r6 f0
	multi r5 r5 4
	swoc1	f0 r2 r5
	addi	r0 r5 1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r3 r6 f0
	multi r5 r5 4
	swoc1	f0 r2 r5
	addi	r0 r5 2
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r3 r6 f0
	multi r5 r3 4
	swoc1	f0 r2 r3
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 1
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 1
	lw	r30 r5 12
	add	r5 r3 r3
	sub	r2 r3 r25
	blez	r25 ble_nontail_else.30582
	addi	r0 r2 0
	sub	r5 r2 r25
	blez	r25 ble_nontail_else.30584
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 1
	sub	r2 r3 r25
	blez	r25 ble_nontail_else.30586
	addi	r0 r2 0
	j	ble_nontail_cont.30587
ble_nontail_else.30586:
	addi	r0 r2 0
ble_nontail_cont.30587:
	j	ble_nontail_cont.30585
ble_nontail_else.30584:
	addi	r0 r2 0
ble_nontail_cont.30585:
	j	ble_nontail_cont.30583
ble_nontail_else.30582:
	addi	r0 r2 0
ble_nontail_cont.30583:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30588
	addi	r0 r6 0
	lw	r30 r3 8
	lw	r30 r2 4
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r28 r5
	mov	r5 r2
	mov	r2 r28
	jal	try_exploit_neighbors.3127
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.30589
beq_else.30588:
	multi r1 r1 4
	lwo	r4 r1 r1
	addi	r0 r2 0
	lw	r1 r3 8
	addi	r0 r6 0
	multi r2 r7 4
	lwo	r3 r7 r3
	sub	r6 r3 r25
	blez	r25 ble_nontail_else.30590
	j	ble_nontail_cont.30591
ble_nontail_else.30590:
	lw	r1 r3 12
	multi r2 r6 4
	lwo	r3 r6 r3
	addi	r0 r6 0
	sw	r1 r30 24
	sub	r3 r6 r25
	beq	r25 r0 beq_else.30592
	lw	r1 r3 20
	lw	r1 r6 28
	lw	r1 r7 4
	lw	r1 r8 16
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	multi r2 r10 4
	lwo	r3 r10 r3
	addi	r0 r10 0
	addi	r0 r11 0
	multi r11 r11 4
	lwoc1	r3 r11 f0
	multi r10 r10 4
	swoc1	f0 r9 r10
	addi	r0 r10 1
	addi	r0 r11 1
	multi r11 r11 4
	lwoc1	r3 r11 f0
	multi r10 r10 4
	swoc1	f0 r9 r10
	addi	r0 r10 2
	addi	r0 r11 2
	multi r11 r11 4
	lwoc1	r3 r11 f0
	multi r10 r3 4
	swoc1	f0 r9 r3
	lw	r1 r3 24
	addi	r0 r9 0
	multi r9 r9 4
	lwo	r3 r9 r3
	multi r2 r9 4
	lwo	r6 r9 r6
	multi r2 r9 4
	lwo	r7 r9 r7
	sw	r8 r30 28
	sw	r2 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r6
	mov	r1 r3
	mov	r3 r7
	jal	trace_diffuse_ray_80percent.3098
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 32
	multi r2 r2 4
	lw	r30 r3 28
	lwo	r3 r2 r2
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r4 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r4 4
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	multi r4 r2 4
	swoc1	f0 r1 r2
	j	beq_cont.30593
beq_else.30592:
beq_cont.30593:
	addi	r0 r2 1
	lw	r30 r1 24
	lw	r1 r3 8
	addi	r0 r4 0
	multi r2 r5 4
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30594
	j	ble_nontail_cont.30595
ble_nontail_else.30594:
	lw	r1 r3 12
	multi r2 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30596
	sw	r31 r30 36
	addi	r30 r30 40
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30597
beq_else.30596:
beq_cont.30597:
	addi	r0 r2 2
	lw	r30 r1 24
	sw	r31 r30 36
	addi	r30 r30 40
	jal	do_without_neighbors.3111
	addi	r30 r30 -40
	lw	r30 r31 36
ble_nontail_cont.30595:
ble_nontail_cont.30591:
beq_cont.30589:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_int_of_float
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30598
	addi	r0 r1 255
	j	ble_nontail_cont.30599
ble_nontail_else.30598:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30600
	addi	r0 r1 0
	j	ble_nontail_cont.30601
ble_nontail_else.30600:
ble_nontail_cont.30601:
ble_nontail_cont.30599:
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_print_int
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_print_char
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_int_of_float
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30602
	addi	r0 r1 255
	j	ble_nontail_cont.30603
ble_nontail_else.30602:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30604
	addi	r0 r1 0
	j	ble_nontail_cont.30605
ble_nontail_else.30604:
ble_nontail_cont.30605:
ble_nontail_cont.30603:
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_print_int
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_print_char
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_int_of_float
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30606
	addi	r0 r1 255
	j	ble_nontail_cont.30607
ble_nontail_else.30606:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30608
	addi	r0 r1 0
	j	ble_nontail_cont.30609
ble_nontail_else.30608:
ble_nontail_cont.30609:
ble_nontail_cont.30607:
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_print_int
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 10
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_print_char
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 1
	lw	r30 r2 12
	lw	r30 r3 8
	lw	r30 r4 16
	lw	r30 r5 4
	sw	r31 r30 36
	addi	r30 r30 40
	jal	scan_pixel.3154
	addi	r30 r30 -40
	lw	r30 r31 36
	j	ble_nontail_cont.30581
ble_nontail_else.30580:
ble_nontail_cont.30581:
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r2
	addi	r0 r1 2
	lw	r30 r3 0
	add	r3 r1 r1
	addi	r0 r3 5
	sub	r3 r1 r25
	blez	r25 ble_nontail_else.30610
	j	ble_nontail_cont.30611
ble_nontail_else.30610:
	addi	r0 r3 5
	sub	r1 r3 r1
ble_nontail_cont.30611:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r4 1
	multi r4 r4 4
	lwo	r3 r4 r3
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30612
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r4 1
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r1 r30 36
	sw	r2 r30 40
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30613
	addi	r0 r3 1
	add	r2 r3 r3
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f0
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r5 1
	multi r5 r5 4
	lwo	r4 r5 r4
	sub	r3 r4 r3
	swc1	f0 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r3
	jal	min_caml_float_of_int
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 44
	mul.s	f1 f0 f0
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f1
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f2
	add.s	f1 f2 f1
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f2
	mul.s	f0 f2 f2
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f3
	add.s	f2 f3 f2
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f3
	mul.s	f0 f3 f0
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r2
	lw	r30 r1 8
	lw	r30 r3 36
	sw	r31 r30 48
	addi	r30 r30 52
	mov.s	f2 f31
	mov.s	f0 f2
	mov.s	f1 f0
	mov.s	f31 f1
	jal	pretrace_pixels.3143
	addi	r30 r30 -52
	lw	r30 r31 48
	j	ble_nontail_cont.30614
ble_nontail_else.30613:
ble_nontail_cont.30614:
	addi	r0 r1 0
	lw	r30 r2 40
	lw	r30 r3 16
	lw	r30 r4 4
	lw	r30 r5 8
	sw	r31 r30 48
	addi	r30 r30 52
	jal	scan_pixel.3154
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 1
	lw	r30 r2 40
	add	r2 r1 r1
	addi	r0 r2 2
	lw	r30 r3 36
	add	r3 r2 r2
	addi	r0 r3 5
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30615
	mov	r5 r2
	j	ble_nontail_cont.30616
ble_nontail_else.30615:
	addi	r0 r3 5
	sub	r2 r3 r5
ble_nontail_cont.30616:
	lw	r30 r2 4
	lw	r30 r3 8
	lw	r30 r4 16
	j	scan_line.3160
ble_tail_else.30612:
	jr	r31
ble_tail_else.30577:
	jr	r31
create_pixel.3168:
	addi	r0 r1 3
	mtc1	r0 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_float_array
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -8
	lw	r30 r31 4
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_create_array
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 4
	sw	r2 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 8
	multi r2 r2 4
	lw	r30 r3 4
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 12
	multi r2 r2 4
	lw	r30 r3 4
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	multi r2 r2 4
	lw	r30 r3 4
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	multi r2 r2 4
	lw	r30 r3 4
	swo	r1 r3 r2
	addi	r0 r1 5
	addi	r0 r2 0
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_create_array
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 5
	addi	r0 r3 0
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -36
	lw	r30 r31 32
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_create_array
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 32
	sw	r2 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 36
	multi r2 r2 4
	lw	r30 r3 32
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r2 40
	multi r2 r2 4
	lw	r30 r3 32
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r2 44
	multi r2 r2 4
	lw	r30 r3 32
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r2 48
	multi r2 r2 4
	lw	r30 r3 32
	swo	r1 r3 r2
	addi	r0 r1 3
	mtc1	r0 f0
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_create_float_array
	addi	r30 r30 -56
	lw	r30 r31 52
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_create_array
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 52
	sw	r2 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -64
	lw	r30 r31 60
	lw	r30 r2 56
	multi r2 r2 4
	lw	r30 r3 52
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -68
	lw	r30 r31 64
	lw	r30 r2 60
	multi r2 r2 4
	lw	r30 r3 52
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -72
	lw	r30 r31 68
	lw	r30 r2 64
	multi r2 r2 4
	lw	r30 r3 52
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r2 68
	multi r2 r2 4
	lw	r30 r3 52
	swo	r1 r3 r2
	addi	r0 r1 1
	addi	r0 r2 0
	sw	r31 r30 72
	addi	r30 r30 76
	jal	min_caml_create_array
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -80
	lw	r30 r31 76
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 76
	addi	r30 r30 80
	jal	min_caml_create_array
	addi	r30 r30 -80
	lw	r30 r31 76
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 76
	sw	r2 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -88
	lw	r30 r31 84
	lw	r30 r2 80
	multi r2 r2 4
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -92
	lw	r30 r31 88
	lw	r30 r2 84
	multi r2 r2 4
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -96
	lw	r30 r31 92
	lw	r30 r2 88
	multi r2 r2 4
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -100
	lw	r30 r31 96
	lw	r30 r2 92
	multi r2 r2 4
	lw	r30 r3 76
	swo	r1 r3 r2
	mov	r1 r27
	addi	r27 r27 32
	sw	r3 r1 28
	lw	r30 r2 72
	sw	r2 r1 24
	lw	r30 r2 52
	sw	r2 r1 20
	lw	r30 r2 32
	sw	r2 r1 16
	lw	r30 r2 28
	sw	r2 r1 12
	lw	r30 r2 24
	sw	r2 r1 8
	lw	r30 r2 4
	sw	r2 r1 4
	lw	r30 r2 0
	sw	r2 r1 0
	jr	r31
init_line_elements.3170:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30619
	jr	r31
ble_tail_else.30619:
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -16
	lw	r30 r31 12
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_create_array
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	multi r2 r2 4
	lw	r30 r3 12
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	multi r2 r2 4
	lw	r30 r3 12
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 24
	multi r2 r2 4
	lw	r30 r3 12
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 28
	multi r2 r2 4
	lw	r30 r3 12
	swo	r1 r3 r2
	addi	r0 r1 5
	addi	r0 r2 0
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_create_array
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 5
	addi	r0 r3 0
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -44
	lw	r30 r31 40
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_create_array
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 40
	sw	r2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r2 44
	multi r2 r2 4
	lw	r30 r3 40
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r2 48
	multi r2 r2 4
	lw	r30 r3 40
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -60
	lw	r30 r31 56
	lw	r30 r2 52
	multi r2 r2 4
	lw	r30 r3 40
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -64
	lw	r30 r31 60
	lw	r30 r2 56
	multi r2 r2 4
	lw	r30 r3 40
	swo	r1 r3 r2
	addi	r0 r1 3
	mtc1	r0 f0
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_float_array
	addi	r30 r30 -64
	lw	r30 r31 60
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 60
	sw	r2 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -72
	lw	r30 r31 68
	lw	r30 r2 64
	multi r2 r2 4
	lw	r30 r3 60
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r2 68
	multi r2 r2 4
	lw	r30 r3 60
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -80
	lw	r30 r31 76
	lw	r30 r2 72
	multi r2 r2 4
	lw	r30 r3 60
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -84
	lw	r30 r31 80
	lw	r30 r2 76
	multi r2 r2 4
	lw	r30 r3 60
	swo	r1 r3 r2
	addi	r0 r1 1
	addi	r0 r2 0
	sw	r31 r30 80
	addi	r30 r30 84
	jal	min_caml_create_array
	addi	r30 r30 -84
	lw	r30 r31 80
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -88
	lw	r30 r31 84
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 84
	addi	r30 r30 88
	jal	min_caml_create_array
	addi	r30 r30 -88
	lw	r30 r31 84
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 84
	sw	r2 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -96
	lw	r30 r31 92
	lw	r30 r2 88
	multi r2 r2 4
	lw	r30 r3 84
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -100
	lw	r30 r31 96
	lw	r30 r2 92
	multi r2 r2 4
	lw	r30 r3 84
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 96
	sw	r31 r30 100
	addi	r30 r30 104
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -104
	lw	r30 r31 100
	lw	r30 r2 96
	multi r2 r2 4
	lw	r30 r3 84
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -108
	lw	r30 r31 104
	lw	r30 r2 100
	multi r2 r2 4
	lw	r30 r3 84
	swo	r1 r3 r2
	mov	r1 r27
	addi	r27 r27 32
	sw	r3 r1 28
	lw	r30 r2 80
	sw	r2 r1 24
	lw	r30 r2 60
	sw	r2 r1 20
	lw	r30 r2 40
	sw	r2 r1 16
	lw	r30 r2 36
	sw	r2 r1 12
	lw	r30 r2 32
	sw	r2 r1 8
	lw	r30 r2 12
	sw	r2 r1 4
	lw	r30 r2 8
	sw	r2 r1 0
	lw	r30 r2 4
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30620
	mov	r1 r4
	jr	r31
ble_tail_else.30620:
	sw	r1 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	jal	create_pixel.3168
	addi	r30 r30 -112
	lw	r30 r31 108
	lw	r30 r2 104
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30621
	mov	r1 r4
	jr	r31
ble_tail_else.30621:
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -116
	lw	r30 r31 112
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 112
	sw	r31 r30 116
	addi	r30 r30 120
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -120
	lw	r30 r31 116
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 116
	sw	r2 r30 120
	sw	r31 r30 124
	addi	r30 r30 128
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -128
	lw	r30 r31 124
	lw	r30 r2 120
	multi r2 r2 4
	lw	r30 r3 116
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 124
	sw	r31 r30 128
	addi	r30 r30 132
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -132
	lw	r30 r31 128
	lw	r30 r2 124
	multi r2 r2 4
	lw	r30 r3 116
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 128
	sw	r31 r30 132
	addi	r30 r30 136
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -136
	lw	r30 r31 132
	lw	r30 r2 128
	multi r2 r2 4
	lw	r30 r3 116
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 132
	sw	r31 r30 136
	addi	r30 r30 140
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -140
	lw	r30 r31 136
	lw	r30 r2 132
	multi r2 r2 4
	lw	r30 r3 116
	swo	r1 r3 r2
	addi	r0 r1 5
	addi	r0 r2 0
	sw	r31 r30 136
	addi	r30 r30 140
	jal	min_caml_create_array
	addi	r30 r30 -140
	lw	r30 r31 136
	addi	r0 r2 5
	addi	r0 r3 0
	sw	r1 r30 136
	sw	r31 r30 140
	addi	r30 r30 144
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -144
	lw	r30 r31 140
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 140
	sw	r31 r30 144
	addi	r30 r30 148
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -148
	lw	r30 r31 144
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 144
	addi	r30 r30 148
	jal	min_caml_create_array
	addi	r30 r30 -148
	lw	r30 r31 144
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 144
	sw	r2 r30 148
	sw	r31 r30 152
	addi	r30 r30 156
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -156
	lw	r30 r31 152
	lw	r30 r2 148
	multi r2 r2 4
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 152
	sw	r31 r30 156
	addi	r30 r30 160
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -160
	lw	r30 r31 156
	lw	r30 r2 152
	multi r2 r2 4
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 156
	sw	r31 r30 160
	addi	r30 r30 164
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -164
	lw	r30 r31 160
	lw	r30 r2 156
	multi r2 r2 4
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 160
	sw	r31 r30 164
	addi	r30 r30 168
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -168
	lw	r30 r31 164
	lw	r30 r2 160
	multi r2 r2 4
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 3
	mtc1	r0 f0
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_float_array
	addi	r30 r30 -168
	lw	r30 r31 164
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 164
	sw	r2 r30 168
	sw	r31 r30 172
	addi	r30 r30 176
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -176
	lw	r30 r31 172
	lw	r30 r2 168
	multi r2 r2 4
	lw	r30 r3 164
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 172
	sw	r31 r30 176
	addi	r30 r30 180
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -180
	lw	r30 r31 176
	lw	r30 r2 172
	multi r2 r2 4
	lw	r30 r3 164
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 176
	sw	r31 r30 180
	addi	r30 r30 184
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -184
	lw	r30 r31 180
	lw	r30 r2 176
	multi r2 r2 4
	lw	r30 r3 164
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 180
	sw	r31 r30 184
	addi	r30 r30 188
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -188
	lw	r30 r31 184
	lw	r30 r2 180
	multi r2 r2 4
	lw	r30 r3 164
	swo	r1 r3 r2
	addi	r0 r1 1
	addi	r0 r2 0
	sw	r31 r30 184
	addi	r30 r30 188
	jal	min_caml_create_array
	addi	r30 r30 -188
	lw	r30 r31 184
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 184
	sw	r31 r30 188
	addi	r30 r30 192
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -192
	lw	r30 r31 188
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 188
	addi	r30 r30 192
	jal	min_caml_create_array
	addi	r30 r30 -192
	lw	r30 r31 188
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 188
	sw	r2 r30 192
	sw	r31 r30 196
	addi	r30 r30 200
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -200
	lw	r30 r31 196
	lw	r30 r2 192
	multi r2 r2 4
	lw	r30 r3 188
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 196
	sw	r31 r30 200
	addi	r30 r30 204
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -204
	lw	r30 r31 200
	lw	r30 r2 196
	multi r2 r2 4
	lw	r30 r3 188
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 200
	sw	r31 r30 204
	addi	r30 r30 208
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -208
	lw	r30 r31 204
	lw	r30 r2 200
	multi r2 r2 4
	lw	r30 r3 188
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 204
	sw	r31 r30 208
	addi	r30 r30 212
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -212
	lw	r30 r31 208
	lw	r30 r2 204
	multi r2 r2 4
	lw	r30 r3 188
	swo	r1 r3 r2
	mov	r1 r27
	addi	r27 r27 32
	sw	r3 r1 28
	lw	r30 r2 184
	sw	r2 r1 24
	lw	r30 r2 164
	sw	r2 r1 20
	lw	r30 r2 144
	sw	r2 r1 16
	lw	r30 r2 140
	sw	r2 r1 12
	lw	r30 r2 136
	sw	r2 r1 8
	lw	r30 r2 116
	sw	r2 r1 4
	lw	r30 r2 112
	sw	r2 r1 0
	lw	r30 r2 108
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30622
	mov	r1 r4
	jr	r31
ble_tail_else.30622:
	sw	r1 r30 208
	sw	r31 r30 212
	addi	r30 r30 216
	jal	create_pixel.3168
	addi	r30 r30 -216
	lw	r30 r31 212
	lw	r30 r2 208
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r2
	mov	r1 r4
	j	init_line_elements.3170
calc_dirvec.3180:
	addi	r0 r4 5
	sub	r4 r1 r25
	blez	r25 ble_tail_else.30623
	mul.s	f1 f1 f0
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f1
	add.s	f0 f1 f0
	sqrt.s	f0 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f1
	sw	r3 r30 0
	sw	r2 r30 4
	swc1	f3 r30 8
	sw	r1 r30 12
	swc1	f0 r30 16
	swc1	f2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	min_caml_atan
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	mul.s	f0 f1 f0
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_sin
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	div.s	f1 f0 f0
	lwc1	 r30 f1 16
	mul.s	f0 f1 f0
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	mul.s	f0 f0 f1
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f2
	add.s	f1 f2 f1
	sqrt.s	f1 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	div.s	f2 f1 f2
	swc1	f0 r30 32
	sw	r1 r30 36
	swc1	f1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov.s	f2 f0
	jal	min_caml_atan
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 8
	mul.s	f0 f1 f0
	swc1	f0 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_sin
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 44
	swc1	f0 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 48
	div.s	f1 f0 f0
	lwc1	 r30 f1 40
	mul.s	f0 f1 f1
	lwc1	 r30 f0 32
	lwc1	 r30 f2 20
	lwc1	 r30 f3 8
	lw	r30 r1 36
	lw	r30 r2 4
	lw	r30 r3 0
	j	calc_dirvec.3180
ble_tail_else.30623:
	mul.s	f0 f0 f2
	mul.s	f1 f1 f3
	add.s	f2 f3 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	add.s	f2 f3 f2
	sqrt.s	f2 f2
	div.s	f0 f2 f0
	div.s	f1 f2 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	div.s	f3 f2 f2
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r2 r2 4
	lwo	r1 r2 r1
	multi r3 r2 4
	lwo	r1 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	swoc1	f0 r2 r4
	addi	r0 r4 1
	multi r4 r4 4
	swoc1	f1 r2 r4
	addi	r0 r4 2
	multi r4 r4 4
	swoc1	f2 r2 r4
	addi	r0 r2 40
	add	r3 r2 r2
	multi r2 r2 4
	lwo	r1 r2 r2
	lw	r2 r2 0
	neg.s	f1 f3
	addi	r0 r4 0
	multi r4 r4 4
	swoc1	f0 r2 r4
	addi	r0 r4 1
	multi r4 r4 4
	swoc1	f2 r2 r4
	addi	r0 r4 2
	multi r4 r4 4
	swoc1	f3 r2 r4
	addi	r0 r2 80
	add	r3 r2 r2
	multi r2 r2 4
	lwo	r1 r2 r2
	lw	r2 r2 0
	neg.s	f0 f3
	neg.s	f1 f4
	addi	r0 r4 0
	multi r4 r4 4
	swoc1	f2 r2 r4
	addi	r0 r4 1
	multi r4 r4 4
	swoc1	f3 r2 r4
	addi	r0 r4 2
	multi r4 r4 4
	swoc1	f4 r2 r4
	addi	r0 r2 1
	add	r3 r2 r2
	multi r2 r2 4
	lwo	r1 r2 r2
	lw	r2 r2 0
	neg.s	f0 f3
	neg.s	f1 f4
	neg.s	f2 f5
	addi	r0 r4 0
	multi r4 r4 4
	swoc1	f3 r2 r4
	addi	r0 r4 1
	multi r4 r4 4
	swoc1	f4 r2 r4
	addi	r0 r4 2
	multi r4 r4 4
	swoc1	f5 r2 r4
	addi	r0 r2 41
	add	r3 r2 r2
	multi r2 r2 4
	lwo	r1 r2 r2
	lw	r2 r2 0
	neg.s	f0 f3
	neg.s	f2 f4
	addi	r0 r4 0
	multi r4 r4 4
	swoc1	f3 r2 r4
	addi	r0 r4 1
	multi r4 r4 4
	swoc1	f4 r2 r4
	addi	r0 r4 2
	multi r4 r4 4
	swoc1	f1 r2 r4
	addi	r0 r2 81
	add	r3 r2 r2
	multi r2 r2 4
	lwo	r1 r2 r1
	lw	r1 r1 0
	neg.s	f2 f2
	addi	r0 r2 0
	multi r2 r2 4
	swoc1	f2 r1 r2
	addi	r0 r2 1
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r0 r2 2
	multi r2 r2 4
	swoc1	f1 r1 r2
	jr	r31
calc_dirvecs.3188:
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.30625
	jr	r31
ble_tail_else.30625:
	sw	r1 r30 0
	swc1	f0 r30 4
	sw	r3 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_float_of_int
	addi	r30 r30 -20
	lw	r30 r31 16
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16230
	ori	r24 r24 26214
	mtc1	r24 f1
	sub.s	f0 f1 f2
	addi	r0 r1 0
	mtc1	r0 f0
	mtc1	r0 f1
	lwc1	 r30 f3 4
	lw	r30 r2 12
	lw	r30 r3 8
	sw	r31 r30 16
	addi	r30 r30 20
	jal	calc_dirvec.3180
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_float_of_int
	addi	r30 r30 -20
	lw	r30 r31 16
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f1
	add.s	f0 f1 f2
	addi	r0 r1 0
	mtc1	r0 f0
	mtc1	r0 f1
	addi	r0 r2 2
	lw	r30 r3 8
	add	r3 r2 r2
	lwc1	 r30 f3 4
	lw	r30 r4 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r3 r2
	mov	r2 r4
	jal	calc_dirvec.3180
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	addi	r0 r2 1
	lw	r30 r3 12
	add	r3 r2 r2
	addi	r0 r3 5
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30627
	j	ble_nontail_cont.30628
ble_nontail_else.30627:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30628:
	addi	r0 r3 0
	sub	r3 r1 r25
	blez	r25 ble_tail_else.30629
	jr	r31
ble_tail_else.30629:
	sw	r1 r30 16
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_float_of_int
	addi	r30 r30 -28
	lw	r30 r31 24
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16230
	ori	r24 r24 26214
	mtc1	r24 f1
	sub.s	f0 f1 f2
	addi	r0 r1 0
	mtc1	r0 f0
	mtc1	r0 f1
	lwc1	 r30 f3 4
	lw	r30 r2 20
	lw	r30 r3 8
	sw	r31 r30 24
	addi	r30 r30 28
	jal	calc_dirvec.3180
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r1 16
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_float_of_int
	addi	r30 r30 -28
	lw	r30 r31 24
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f1
	add.s	f0 f1 f2
	addi	r0 r1 0
	mtc1	r0 f0
	mtc1	r0 f1
	addi	r0 r2 2
	lw	r30 r3 8
	add	r3 r2 r2
	lwc1	 r30 f3 4
	lw	r30 r4 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r3 r2
	mov	r2 r4
	jal	calc_dirvec.3180
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 1
	lw	r30 r2 16
	sub	r2 r1 r1
	addi	r0 r2 1
	lw	r30 r3 20
	add	r3 r2 r2
	addi	r0 r3 5
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30631
	j	ble_nontail_cont.30632
ble_nontail_else.30631:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30632:
	lwc1	 r30 f0 4
	lw	r30 r3 8
	j	calc_dirvecs.3188
calc_dirvec_rows.3193:
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.30633
	jr	r31
ble_tail_else.30633:
	sw	r1 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16230
	ori	r24 r24 26214
	mtc1	r24 f1
	sub.s	f0 f1 f0
	addi	r0 r1 4
	sw	r1 r30 12
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_float_of_int
	addi	r30 r30 -24
	lw	r30 r31 20
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16230
	ori	r24 r24 26214
	mtc1	r24 f1
	sub.s	f0 f1 f2
	addi	r0 r1 0
	mtc1	r0 f0
	mtc1	r0 f1
	lwc1	 r30 f3 16
	lw	r30 r2 8
	lw	r30 r3 4
	sw	r31 r30 20
	addi	r30 r30 24
	jal	calc_dirvec.3180
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_float_of_int
	addi	r30 r30 -24
	lw	r30 r31 20
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f1
	add.s	f0 f1 f2
	addi	r0 r1 0
	mtc1	r0 f0
	mtc1	r0 f1
	addi	r0 r2 2
	lw	r30 r3 4
	add	r3 r2 r2
	lwc1	 r30 f3 16
	lw	r30 r4 8
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r3 r2
	mov	r2 r4
	jal	calc_dirvec.3180
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 3
	addi	r0 r2 1
	lw	r30 r3 8
	add	r3 r2 r2
	addi	r0 r4 5
	sub	r4 r2 r25
	blez	r25 ble_nontail_else.30635
	j	ble_nontail_cont.30636
ble_nontail_else.30635:
	addi	r0 r4 5
	sub	r2 r4 r2
ble_nontail_cont.30636:
	lwc1	 r30 f0 16
	lw	r30 r4 4
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r3 r4
	jal	calc_dirvecs.3188
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	addi	r0 r2 2
	lw	r30 r3 8
	add	r3 r2 r2
	addi	r0 r3 5
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30637
	j	ble_nontail_cont.30638
ble_nontail_else.30637:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30638:
	addi	r0 r3 4
	lw	r30 r4 4
	add	r4 r3 r3
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.30639
	jr	r31
ble_tail_else.30639:
	sw	r1 r30 20
	sw	r3 r30 24
	sw	r2 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_float_of_int
	addi	r30 r30 -36
	lw	r30 r31 32
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16230
	ori	r24 r24 26214
	mtc1	r24 f1
	sub.s	f0 f1 f0
	addi	r0 r1 4
	lw	r30 r2 28
	lw	r30 r3 24
	sw	r31 r30 32
	addi	r30 r30 36
	jal	calc_dirvecs.3188
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 1
	lw	r30 r2 20
	sub	r2 r1 r1
	addi	r0 r2 2
	lw	r30 r3 28
	add	r3 r2 r2
	addi	r0 r3 5
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30641
	j	ble_nontail_cont.30642
ble_nontail_else.30641:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30642:
	addi	r0 r3 4
	lw	r30 r4 24
	add	r4 r3 r3
	j	calc_dirvec_rows.3193
create_dirvec_elements.3199:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30643
	jr	r31
ble_tail_else.30643:
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	mov	r2 r1
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_create_array
	addi	r30 r30 -16
	lw	r30 r31 12
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 8
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 4
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30645
	jr	r31
ble_tail_else.30645:
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -20
	lw	r30 r31 16
	mov	r2 r1
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_create_array
	addi	r30 r30 -24
	lw	r30 r31 20
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 16
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 12
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30647
	jr	r31
ble_tail_else.30647:
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -28
	lw	r30 r31 24
	mov	r2 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_create_array
	addi	r30 r30 -32
	lw	r30 r31 28
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 24
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 20
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30649
	jr	r31
ble_tail_else.30649:
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -36
	lw	r30 r31 32
	mov	r2 r1
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_create_array
	addi	r30 r30 -40
	lw	r30 r31 36
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 32
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 28
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30651
	jr	r31
ble_tail_else.30651:
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -44
	lw	r30 r31 40
	mov	r2 r1
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_create_array
	addi	r30 r30 -48
	lw	r30 r31 44
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 40
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 36
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30653
	jr	r31
ble_tail_else.30653:
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -52
	lw	r30 r31 48
	mov	r2 r1
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_create_array
	addi	r30 r30 -56
	lw	r30 r31 52
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 48
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 44
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30655
	jr	r31
ble_tail_else.30655:
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -60
	lw	r30 r31 56
	mov	r2 r1
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 56
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 52
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30657
	jr	r31
ble_tail_else.30657:
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -68
	lw	r30 r31 64
	mov	r2 r1
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_create_array
	addi	r30 r30 -72
	lw	r30 r31 68
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 64
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 60
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r2
	mov	r1 r4
	j	create_dirvec_elements.3199
create_dirvecs.3202:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30659
	jr	r31
ble_tail_else.30659:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 120
	addi	r0 r4 3
	mtc1	r0 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -16
	lw	r30 r31 12
	mov	r2 r1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_create_array
	addi	r30 r30 -20
	lw	r30 r31 16
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 12
	sw	r1 r2 0
	lw	r30 r1 8
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_create_array
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 4
	multi r2 r3 4
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	multi r2 r3 4
	lwo	r1 r3 r1
	addi	r0 r3 118
	addi	r0 r4 3
	mtc1	r0 f0
	sw	r1 r30 16
	sw	r3 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -28
	lw	r30 r31 24
	mov	r2 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_create_array
	addi	r30 r30 -32
	lw	r30 r31 28
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 24
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 20
	multi r2 r2 4
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -36
	lw	r30 r31 32
	mov	r2 r1
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_create_array
	addi	r30 r30 -40
	lw	r30 r31 36
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 32
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 28
	multi r2 r2 4
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -44
	lw	r30 r31 40
	mov	r2 r1
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_create_array
	addi	r30 r30 -48
	lw	r30 r31 44
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 40
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 36
	multi r2 r2 4
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -52
	lw	r30 r31 48
	mov	r2 r1
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_create_array
	addi	r30 r30 -56
	lw	r30 r31 52
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 48
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 44
	multi r2 r2 4
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 114
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -60
	lw	r30 r31 56
	mov	r2 r1
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 56
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 52
	multi r2 r2 4
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 113
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -68
	lw	r30 r31 64
	mov	r2 r1
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_create_array
	addi	r30 r30 -72
	lw	r30 r31 68
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 64
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 60
	multi r2 r2 4
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 112
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -76
	lw	r30 r31 72
	mov	r2 r1
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	jal	min_caml_create_array
	addi	r30 r30 -80
	lw	r30 r31 76
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 72
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 68
	multi r2 r2 4
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r2 111
	sw	r31 r30 76
	addi	r30 r30 80
	mov	r1 r3
	jal	create_dirvec_elements.3199
	addi	r30 r30 -80
	lw	r30 r31 76
	addi	r0 r1 1
	lw	r30 r2 4
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30661
	jr	r31
ble_tail_else.30661:
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -76
	addi	r0 r3 120
	addi	r0 r4 3
	mtc1	r0 f0
	sw	r2 r30 76
	sw	r1 r30 80
	sw	r3 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -92
	lw	r30 r31 88
	mov	r2 r1
	addi	r30 r30 88
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -88
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	jal	min_caml_create_array
	addi	r30 r30 -96
	lw	r30 r31 92
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 88
	sw	r1 r2 0
	lw	r30 r1 84
	sw	r31 r30 92
	addi	r30 r30 96
	jal	min_caml_create_array
	addi	r30 r30 -96
	lw	r30 r31 92
	lw	r30 r2 80
	multi r2 r3 4
	lw	r30 r4 76
	swo	r1 r4 r3
	addi	r30 r30 92
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -92
	multi r2 r3 4
	lwo	r1 r3 r1
	addi	r0 r3 118
	addi	r0 r4 3
	mtc1	r0 f0
	sw	r1 r30 92
	sw	r3 r30 96
	sw	r31 r30 100
	addi	r30 r30 104
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -104
	lw	r30 r31 100
	mov	r2 r1
	addi	r30 r30 100
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -100
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	jal	min_caml_create_array
	addi	r30 r30 -108
	lw	r30 r31 104
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 100
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 96
	multi r2 r2 4
	lw	r30 r3 92
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -112
	lw	r30 r31 108
	mov	r2 r1
	addi	r30 r30 108
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -108
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 108
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 104
	multi r2 r2 4
	lw	r30 r3 92
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 112
	sw	r31 r30 116
	addi	r30 r30 120
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -120
	lw	r30 r31 116
	mov	r2 r1
	addi	r30 r30 116
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -116
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 116
	sw	r31 r30 120
	addi	r30 r30 124
	jal	min_caml_create_array
	addi	r30 r30 -124
	lw	r30 r31 120
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 116
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 112
	multi r2 r2 4
	lw	r30 r3 92
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 120
	sw	r31 r30 124
	addi	r30 r30 128
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -128
	lw	r30 r31 124
	mov	r2 r1
	addi	r30 r30 124
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -124
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 124
	sw	r31 r30 128
	addi	r30 r30 132
	jal	min_caml_create_array
	addi	r30 r30 -132
	lw	r30 r31 128
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 124
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 120
	multi r2 r2 4
	lw	r30 r3 92
	swo	r1 r3 r2
	addi	r0 r1 114
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 128
	sw	r31 r30 132
	addi	r30 r30 136
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -136
	lw	r30 r31 132
	mov	r2 r1
	addi	r30 r30 132
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -132
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 132
	sw	r31 r30 136
	addi	r30 r30 140
	jal	min_caml_create_array
	addi	r30 r30 -140
	lw	r30 r31 136
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 132
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 128
	multi r2 r2 4
	lw	r30 r3 92
	swo	r1 r3 r2
	addi	r0 r1 113
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 136
	sw	r31 r30 140
	addi	r30 r30 144
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -144
	lw	r30 r31 140
	mov	r2 r1
	addi	r30 r30 140
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -140
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 140
	sw	r31 r30 144
	addi	r30 r30 148
	jal	min_caml_create_array
	addi	r30 r30 -148
	lw	r30 r31 144
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 140
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 136
	multi r2 r2 4
	lw	r30 r3 92
	swo	r1 r3 r2
	addi	r0 r2 112
	sw	r31 r30 144
	addi	r30 r30 148
	mov	r1 r3
	jal	create_dirvec_elements.3199
	addi	r30 r30 -148
	lw	r30 r31 144
	addi	r0 r1 1
	lw	r30 r2 80
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30663
	jr	r31
ble_tail_else.30663:
	addi	r30 r30 144
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -144
	addi	r0 r3 120
	addi	r0 r4 3
	mtc1	r0 f0
	sw	r2 r30 144
	sw	r1 r30 148
	sw	r3 r30 152
	sw	r31 r30 156
	addi	r30 r30 160
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -160
	lw	r30 r31 156
	mov	r2 r1
	addi	r30 r30 156
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -156
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 156
	sw	r31 r30 160
	addi	r30 r30 164
	jal	min_caml_create_array
	addi	r30 r30 -164
	lw	r30 r31 160
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 156
	sw	r1 r2 0
	lw	r30 r1 152
	sw	r31 r30 160
	addi	r30 r30 164
	jal	min_caml_create_array
	addi	r30 r30 -164
	lw	r30 r31 160
	lw	r30 r2 148
	multi r2 r3 4
	lw	r30 r4 144
	swo	r1 r4 r3
	addi	r30 r30 160
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -160
	multi r2 r3 4
	lwo	r1 r3 r1
	addi	r0 r3 118
	addi	r0 r4 3
	mtc1	r0 f0
	sw	r1 r30 160
	sw	r3 r30 164
	sw	r31 r30 168
	addi	r30 r30 172
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -172
	lw	r30 r31 168
	mov	r2 r1
	addi	r30 r30 168
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -168
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 168
	sw	r31 r30 172
	addi	r30 r30 176
	jal	min_caml_create_array
	addi	r30 r30 -176
	lw	r30 r31 172
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 168
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 164
	multi r2 r2 4
	lw	r30 r3 160
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 172
	sw	r31 r30 176
	addi	r30 r30 180
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -180
	lw	r30 r31 176
	mov	r2 r1
	addi	r30 r30 176
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -176
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 176
	sw	r31 r30 180
	addi	r30 r30 184
	jal	min_caml_create_array
	addi	r30 r30 -184
	lw	r30 r31 180
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 176
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 172
	multi r2 r2 4
	lw	r30 r3 160
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 180
	sw	r31 r30 184
	addi	r30 r30 188
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -188
	lw	r30 r31 184
	mov	r2 r1
	addi	r30 r30 184
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -184
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 184
	sw	r31 r30 188
	addi	r30 r30 192
	jal	min_caml_create_array
	addi	r30 r30 -192
	lw	r30 r31 188
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 184
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 180
	multi r2 r2 4
	lw	r30 r3 160
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 188
	sw	r31 r30 192
	addi	r30 r30 196
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -196
	lw	r30 r31 192
	mov	r2 r1
	addi	r30 r30 192
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -192
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 192
	sw	r31 r30 196
	addi	r30 r30 200
	jal	min_caml_create_array
	addi	r30 r30 -200
	lw	r30 r31 196
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 192
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 188
	multi r2 r2 4
	lw	r30 r3 160
	swo	r1 r3 r2
	addi	r0 r1 114
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 196
	sw	r31 r30 200
	addi	r30 r30 204
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -204
	lw	r30 r31 200
	mov	r2 r1
	addi	r30 r30 200
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -200
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 200
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 200
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 196
	multi r2 r2 4
	lw	r30 r3 160
	swo	r1 r3 r2
	addi	r0 r2 113
	sw	r31 r30 204
	addi	r30 r30 208
	mov	r1 r3
	jal	create_dirvec_elements.3199
	addi	r30 r30 -208
	lw	r30 r31 204
	addi	r0 r1 1
	lw	r30 r2 148
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30665
	jr	r31
ble_tail_else.30665:
	addi	r30 r30 204
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -204
	addi	r0 r3 120
	addi	r0 r4 3
	mtc1	r0 f0
	sw	r2 r30 204
	sw	r1 r30 208
	sw	r3 r30 212
	sw	r31 r30 216
	addi	r30 r30 220
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -220
	lw	r30 r31 216
	mov	r2 r1
	addi	r30 r30 216
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -216
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 216
	sw	r31 r30 220
	addi	r30 r30 224
	jal	min_caml_create_array
	addi	r30 r30 -224
	lw	r30 r31 220
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 216
	sw	r1 r2 0
	lw	r30 r1 212
	sw	r31 r30 220
	addi	r30 r30 224
	jal	min_caml_create_array
	addi	r30 r30 -224
	lw	r30 r31 220
	lw	r30 r2 208
	multi r2 r3 4
	lw	r30 r4 204
	swo	r1 r4 r3
	addi	r30 r30 220
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -220
	multi r2 r3 4
	lwo	r1 r3 r1
	addi	r0 r3 118
	addi	r0 r4 3
	mtc1	r0 f0
	sw	r1 r30 220
	sw	r3 r30 224
	sw	r31 r30 228
	addi	r30 r30 232
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -232
	lw	r30 r31 228
	mov	r2 r1
	addi	r30 r30 228
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -228
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 228
	sw	r31 r30 232
	addi	r30 r30 236
	jal	min_caml_create_array
	addi	r30 r30 -236
	lw	r30 r31 232
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 228
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 224
	multi r2 r2 4
	lw	r30 r3 220
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 232
	sw	r31 r30 236
	addi	r30 r30 240
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -240
	lw	r30 r31 236
	mov	r2 r1
	addi	r30 r30 236
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -236
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 236
	sw	r31 r30 240
	addi	r30 r30 244
	jal	min_caml_create_array
	addi	r30 r30 -244
	lw	r30 r31 240
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 236
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 232
	multi r2 r2 4
	lw	r30 r3 220
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 240
	sw	r31 r30 244
	addi	r30 r30 248
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -248
	lw	r30 r31 244
	mov	r2 r1
	addi	r30 r30 244
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -244
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 244
	sw	r31 r30 248
	addi	r30 r30 252
	jal	min_caml_create_array
	addi	r30 r30 -252
	lw	r30 r31 248
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 244
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 240
	multi r2 r2 4
	lw	r30 r3 220
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 248
	sw	r31 r30 252
	addi	r30 r30 256
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -256
	lw	r30 r31 252
	mov	r2 r1
	addi	r30 r30 252
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -252
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 252
	sw	r31 r30 256
	addi	r30 r30 260
	jal	min_caml_create_array
	addi	r30 r30 -260
	lw	r30 r31 256
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 252
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 248
	multi r2 r2 4
	lw	r30 r3 220
	swo	r1 r3 r2
	addi	r0 r2 114
	sw	r31 r30 256
	addi	r30 r30 260
	mov	r1 r3
	jal	create_dirvec_elements.3199
	addi	r30 r30 -260
	lw	r30 r31 256
	addi	r0 r1 1
	lw	r30 r2 208
	sub	r2 r1 r1
	j	create_dirvecs.3202
init_dirvec_constants.3204:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30667
	jr	r31
ble_tail_else.30667:
	multi r2 r3 4
	lwo	r1 r3 r3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r2 r4
	mov	r1 r3
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r1 1
	lw	r30 r2 4
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30669
	jr	r31
ble_tail_else.30669:
	multi r1 r2 4
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r1 r30 8
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30671
	j	ble_nontail_cont.30672
ble_nontail_else.30671:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	multi r4 r6 4
	lwo	r5 r6 r5
	lw	r2 r6 4
	lw	r2 r7 0
	lw	r5 r8 4
	addi	r0 r9 1
	sw	r2 r30 12
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30673
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30675
	sw	r6 r30 16
	sw	r4 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r5
	mov	r1 r7
	jal	setup_second_table.2983
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	multi r2 r3 4
	lw	r30 r4 16
	swo	r1 r4 r3
	j	beq_cont.30676
beq_else.30675:
	sw	r6 r30 16
	sw	r4 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r5
	mov	r1 r7
	jal	setup_surface_table.2980
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	multi r2 r3 4
	lw	r30 r4 16
	swo	r1 r4 r3
beq_cont.30676:
	j	beq_cont.30674
beq_else.30673:
	sw	r6 r30 16
	sw	r4 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r5
	mov	r1 r7
	jal	setup_rect_table.2977
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	multi r2 r3 4
	lw	r30 r4 16
	swo	r1 r4 r3
beq_cont.30674:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 12
	sw	r31 r30 24
	addi	r30 r30 28
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -28
	lw	r30 r31 24
ble_nontail_cont.30672:
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30677
	jr	r31
ble_tail_else.30677:
	multi r1 r2 4
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	mov	r2 r4
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 1
	lw	r30 r2 24
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30679
	jr	r31
ble_tail_else.30679:
	multi r1 r2 4
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r1 r30 28
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30681
	j	ble_nontail_cont.30682
ble_nontail_else.30681:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r4 r6 4
	lwo	r5 r6 r5
	lw	r2 r6 4
	lw	r2 r7 0
	lw	r5 r8 4
	addi	r0 r9 1
	sw	r2 r30 32
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30683
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30685
	sw	r6 r30 36
	sw	r4 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r2 r5
	mov	r1 r7
	jal	setup_second_table.2983
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r2 40
	multi r2 r3 4
	lw	r30 r4 36
	swo	r1 r4 r3
	j	beq_cont.30686
beq_else.30685:
	sw	r6 r30 36
	sw	r4 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r2 r5
	mov	r1 r7
	jal	setup_surface_table.2980
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r2 40
	multi r2 r3 4
	lw	r30 r4 36
	swo	r1 r4 r3
beq_cont.30686:
	j	beq_cont.30684
beq_else.30683:
	sw	r6 r30 36
	sw	r4 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r2 r5
	mov	r1 r7
	jal	setup_rect_table.2977
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r2 40
	multi r2 r3 4
	lw	r30 r4 36
	swo	r1 r4 r3
beq_cont.30684:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 32
	sw	r31 r30 44
	addi	r30 r30 48
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -48
	lw	r30 r31 44
ble_nontail_cont.30682:
	addi	r0 r1 1
	lw	r30 r2 28
	sub	r2 r1 r2
	lw	r30 r1 0
	j	init_dirvec_constants.3204
init_vecset_constants.3207:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30687
	jr	r31
ble_tail_else.30687:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	multi r1 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 119
	multi r3 r3 4
	lwo	r2 r3 r3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r1 r30 0
	sw	r2 r30 4
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30689
	j	ble_nontail_cont.30690
ble_nontail_else.30689:
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	multi r4 r6 4
	lwo	r5 r6 r5
	lw	r3 r6 4
	lw	r3 r7 0
	lw	r5 r8 4
	addi	r0 r9 1
	sw	r3 r30 8
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30691
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30693
	sw	r6 r30 12
	sw	r4 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r5
	mov	r1 r7
	jal	setup_second_table.2983
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	multi r2 r3 4
	lw	r30 r4 12
	swo	r1 r4 r3
	j	beq_cont.30694
beq_else.30693:
	sw	r6 r30 12
	sw	r4 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r5
	mov	r1 r7
	jal	setup_surface_table.2980
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	multi r2 r3 4
	lw	r30 r4 12
	swo	r1 r4 r3
beq_cont.30694:
	j	beq_cont.30692
beq_else.30691:
	sw	r6 r30 12
	sw	r4 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r5
	mov	r1 r7
	jal	setup_rect_table.2977
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	multi r2 r3 4
	lw	r30 r4 12
	swo	r1 r4 r3
beq_cont.30692:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 8
	sw	r31 r30 20
	addi	r30 r30 24
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -24
	lw	r30 r31 20
ble_nontail_cont.30690:
	addi	r0 r1 118
	multi r1 r1 4
	lw	r30 r2 4
	lwo	r2 r1 r1
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 117
	multi r1 r1 4
	lw	r30 r2 4
	lwo	r2 r1 r1
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	addi	r0 r4 0
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30695
	j	ble_nontail_cont.30696
ble_nontail_else.30695:
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	multi r3 r5 4
	lwo	r4 r5 r4
	lw	r1 r5 4
	lw	r1 r6 0
	lw	r4 r7 4
	addi	r0 r8 1
	sw	r1 r30 20
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30697
	addi	r0 r8 2
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30699
	sw	r5 r30 24
	sw	r3 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r4
	mov	r1 r6
	jal	setup_second_table.2983
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 28
	multi r2 r3 4
	lw	r30 r4 24
	swo	r1 r4 r3
	j	beq_cont.30700
beq_else.30699:
	sw	r5 r30 24
	sw	r3 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r4
	mov	r1 r6
	jal	setup_surface_table.2980
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 28
	multi r2 r3 4
	lw	r30 r4 24
	swo	r1 r4 r3
beq_cont.30700:
	j	beq_cont.30698
beq_else.30697:
	sw	r5 r30 24
	sw	r3 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r4
	mov	r1 r6
	jal	setup_rect_table.2977
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 28
	multi r2 r3 4
	lw	r30 r4 24
	swo	r1 r4 r3
beq_cont.30698:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 20
	sw	r31 r30 32
	addi	r30 r30 36
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -36
	lw	r30 r31 32
ble_nontail_cont.30696:
	addi	r0 r2 116
	lw	r30 r1 4
	sw	r31 r30 32
	addi	r30 r30 36
	jal	init_dirvec_constants.3204
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30701
	jr	r31
ble_tail_else.30701:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r1 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 119
	multi r3 r3 4
	lwo	r2 r3 r3
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	sw	r1 r30 32
	sw	r2 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r4
	mov	r1 r3
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 118
	multi r1 r1 4
	lw	r30 r2 36
	lwo	r2 r1 r1
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	addi	r0 r4 0
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30703
	j	ble_nontail_cont.30704
ble_nontail_else.30703:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	multi r3 r5 4
	lwo	r4 r5 r4
	lw	r1 r5 4
	lw	r1 r6 0
	lw	r4 r7 4
	addi	r0 r8 1
	sw	r1 r30 40
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30705
	addi	r0 r8 2
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30707
	sw	r5 r30 44
	sw	r3 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r4
	mov	r1 r6
	jal	setup_second_table.2983
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r2 48
	multi r2 r3 4
	lw	r30 r4 44
	swo	r1 r4 r3
	j	beq_cont.30708
beq_else.30707:
	sw	r5 r30 44
	sw	r3 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r4
	mov	r1 r6
	jal	setup_surface_table.2980
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r2 48
	multi r2 r3 4
	lw	r30 r4 44
	swo	r1 r4 r3
beq_cont.30708:
	j	beq_cont.30706
beq_else.30705:
	sw	r5 r30 44
	sw	r3 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r4
	mov	r1 r6
	jal	setup_rect_table.2977
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r2 48
	multi r2 r3 4
	lw	r30 r4 44
	swo	r1 r4 r3
beq_cont.30706:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 40
	sw	r31 r30 52
	addi	r30 r30 56
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -56
	lw	r30 r31 52
ble_nontail_cont.30704:
	addi	r0 r2 117
	lw	r30 r1 36
	sw	r31 r30 52
	addi	r30 r30 56
	jal	init_dirvec_constants.3204
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 1
	lw	r30 r2 32
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30709
	jr	r31
ble_tail_else.30709:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	multi r1 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 119
	multi r3 r3 4
	lwo	r2 r3 r3
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r1 r30 52
	sw	r2 r30 56
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30711
	j	ble_nontail_cont.30712
ble_nontail_else.30711:
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -60
	multi r4 r6 4
	lwo	r5 r6 r5
	lw	r3 r6 4
	lw	r3 r7 0
	lw	r5 r8 4
	addi	r0 r9 1
	sw	r3 r30 60
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30713
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30715
	sw	r6 r30 64
	sw	r4 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r5
	mov	r1 r7
	jal	setup_second_table.2983
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r2 68
	multi r2 r3 4
	lw	r30 r4 64
	swo	r1 r4 r3
	j	beq_cont.30716
beq_else.30715:
	sw	r6 r30 64
	sw	r4 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r5
	mov	r1 r7
	jal	setup_surface_table.2980
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r2 68
	multi r2 r3 4
	lw	r30 r4 64
	swo	r1 r4 r3
beq_cont.30716:
	j	beq_cont.30714
beq_else.30713:
	sw	r6 r30 64
	sw	r4 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r5
	mov	r1 r7
	jal	setup_rect_table.2977
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r2 68
	multi r2 r3 4
	lw	r30 r4 64
	swo	r1 r4 r3
beq_cont.30714:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 60
	sw	r31 r30 72
	addi	r30 r30 76
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -76
	lw	r30 r31 72
ble_nontail_cont.30712:
	addi	r0 r2 118
	lw	r30 r1 56
	sw	r31 r30 72
	addi	r30 r30 76
	jal	init_dirvec_constants.3204
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r1 1
	lw	r30 r2 52
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30717
	jr	r31
ble_tail_else.30717:
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	multi r1 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 119
	sw	r1 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	mov	r1 r2
	mov	r2 r3
	jal	init_dirvec_constants.3204
	addi	r30 r30 -80
	lw	r30 r31 76
	addi	r0 r1 1
	lw	r30 r2 72
	sub	r2 r1 r1
	j	init_vecset_constants.3207
setup_rect_reflection.3218:
	addi	r0 r3 4
	mult	r1 r3 r1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r2 r2 28
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f1
	sub.s	f0 f1 f0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f1
	neg.s	f1 f1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f2
	neg.s	f2 f2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f3
	neg.s	f3 f3
	addi	r0 r2 1
	add	r1 r2 r2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f4
	addi	r0 r4 3
	mtc1	r0 f5
	swc1	f1 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	sw	r2 r30 12
	swc1	f0 r30 16
	swc1	f3 r30 20
	swc1	f2 r30 24
	swc1	f4 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r4
	mov.s	f5 f0
	jal	min_caml_create_float_array
	addi	r30 r30 -36
	lw	r30 r31 32
	mov	r2 r1
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_create_array
	addi	r30 r30 -40
	lw	r30 r31 36
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r3 32
	sw	r3 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwc1	 r30 f0 28
	swoc1	f0 r3 r4
	addi	r0 r4 1
	multi r4 r4 4
	lwc1	 r30 f0 24
	swoc1	f0 r3 r4
	addi	r0 r4 2
	multi r4 r4 4
	lwc1	 r30 f1 20
	swoc1	f1 r3 r4
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r2 r30 36
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30719
	j	ble_nontail_cont.30720
ble_nontail_else.30719:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	multi r4 r6 4
	lwo	r5 r6 r5
	lw	r5 r6 4
	addi	r0 r7 1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30721
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30723
	sw	r1 r30 40
	sw	r4 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r5
	mov	r1 r3
	jal	setup_second_table.2983
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r2 44
	multi r2 r3 4
	lw	r30 r4 40
	swo	r1 r4 r3
	j	beq_cont.30724
beq_else.30723:
	sw	r1 r30 40
	sw	r4 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r5
	mov	r1 r3
	jal	setup_surface_table.2980
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r2 44
	multi r2 r3 4
	lw	r30 r4 40
	swo	r1 r4 r3
beq_cont.30724:
	j	beq_cont.30722
beq_else.30721:
	sw	r1 r30 40
	sw	r4 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r5
	mov	r1 r3
	jal	setup_rect_table.2977
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r2 44
	multi r2 r3 4
	lw	r30 r4 40
	swo	r1 r4 r3
beq_cont.30722:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 36
	sw	r31 r30 48
	addi	r30 r30 52
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -52
	lw	r30 r31 48
ble_nontail_cont.30720:
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	mov	r2 r27
	addi	r27 r27 12
	lwc1	 r30 f0 16
	swc1	f0 r2 8
	lw	r30 r3 36
	sw	r3 r2 4
	lw	r30 r3 12
	sw	r3 r2 0
	lw	r30 r3 8
	multi r3 r4 4
	swo	r2 r1 r4
	addi	r0 r1 1
	add	r3 r1 r1
	addi	r0 r2 2
	lw	r30 r4 4
	add	r4 r2 r2
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r5 r6 f1
	addi	r0 r5 3
	mtc1	r0 f2
	sw	r1 r30 48
	sw	r2 r30 52
	swc1	f1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r5
	mov.s	f2 f0
	jal	min_caml_create_float_array
	addi	r30 r30 -64
	lw	r30 r31 60
	mov	r2 r1
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -60
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r3 60
	sw	r3 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwc1	 r30 f0 0
	swoc1	f0 r3 r4
	addi	r0 r4 1
	multi r4 r4 4
	lwc1	 r30 f1 56
	swoc1	f1 r3 r4
	addi	r0 r4 2
	multi r4 r4 4
	lwc1	 r30 f1 20
	swoc1	f1 r3 r4
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r2 r30 64
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30725
	j	ble_nontail_cont.30726
ble_nontail_else.30725:
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -68
	multi r4 r6 4
	lwo	r5 r6 r5
	lw	r5 r6 4
	addi	r0 r7 1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30727
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30729
	sw	r1 r30 68
	sw	r4 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	mov	r2 r5
	mov	r1 r3
	jal	setup_second_table.2983
	addi	r30 r30 -80
	lw	r30 r31 76
	lw	r30 r2 72
	multi r2 r3 4
	lw	r30 r4 68
	swo	r1 r4 r3
	j	beq_cont.30730
beq_else.30729:
	sw	r1 r30 68
	sw	r4 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	mov	r2 r5
	mov	r1 r3
	jal	setup_surface_table.2980
	addi	r30 r30 -80
	lw	r30 r31 76
	lw	r30 r2 72
	multi r2 r3 4
	lw	r30 r4 68
	swo	r1 r4 r3
beq_cont.30730:
	j	beq_cont.30728
beq_else.30727:
	sw	r1 r30 68
	sw	r4 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	mov	r2 r5
	mov	r1 r3
	jal	setup_rect_table.2977
	addi	r30 r30 -80
	lw	r30 r31 76
	lw	r30 r2 72
	multi r2 r3 4
	lw	r30 r4 68
	swo	r1 r4 r3
beq_cont.30728:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 64
	sw	r31 r30 76
	addi	r30 r30 80
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -80
	lw	r30 r31 76
ble_nontail_cont.30726:
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -76
	mov	r2 r27
	addi	r27 r27 12
	lwc1	 r30 f0 16
	swc1	f0 r2 8
	lw	r30 r3 64
	sw	r3 r2 4
	lw	r30 r3 52
	sw	r3 r2 0
	lw	r30 r3 48
	multi r3 r3 4
	swo	r2 r1 r3
	addi	r0 r1 2
	lw	r30 r2 8
	add	r2 r1 r1
	addi	r0 r3 3
	lw	r30 r4 4
	add	r4 r3 r3
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -76
	addi	r0 r5 2
	multi r5 r5 4
	lwoc1	r4 r5 f1
	addi	r0 r4 3
	mtc1	r0 f2
	sw	r1 r30 76
	sw	r3 r30 80
	swc1	f1 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	mov	r1 r4
	mov.s	f2 f0
	jal	min_caml_create_float_array
	addi	r30 r30 -92
	lw	r30 r31 88
	mov	r2 r1
	addi	r30 r30 88
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -88
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	jal	min_caml_create_array
	addi	r30 r30 -96
	lw	r30 r31 92
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r3 88
	sw	r3 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwc1	 r30 f0 0
	swoc1	f0 r3 r4
	addi	r0 r4 1
	multi r4 r4 4
	lwc1	 r30 f0 24
	swoc1	f0 r3 r4
	addi	r0 r4 2
	multi r4 r4 4
	lwc1	 r30 f0 84
	swoc1	f0 r3 r4
	addi	r30 r30 92
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -92
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r2 r30 92
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30731
	j	ble_nontail_cont.30732
ble_nontail_else.30731:
	addi	r30 r30 96
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -96
	multi r4 r6 4
	lwo	r5 r6 r5
	lw	r5 r6 4
	addi	r0 r7 1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30733
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30735
	sw	r1 r30 96
	sw	r4 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	mov	r2 r5
	mov	r1 r3
	jal	setup_second_table.2983
	addi	r30 r30 -108
	lw	r30 r31 104
	lw	r30 r2 100
	multi r2 r3 4
	lw	r30 r4 96
	swo	r1 r4 r3
	j	beq_cont.30736
beq_else.30735:
	sw	r1 r30 96
	sw	r4 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	mov	r2 r5
	mov	r1 r3
	jal	setup_surface_table.2980
	addi	r30 r30 -108
	lw	r30 r31 104
	lw	r30 r2 100
	multi r2 r3 4
	lw	r30 r4 96
	swo	r1 r4 r3
beq_cont.30736:
	j	beq_cont.30734
beq_else.30733:
	sw	r1 r30 96
	sw	r4 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	mov	r2 r5
	mov	r1 r3
	jal	setup_rect_table.2977
	addi	r30 r30 -108
	lw	r30 r31 104
	lw	r30 r2 100
	multi r2 r3 4
	lw	r30 r4 96
	swo	r1 r4 r3
beq_cont.30734:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 92
	sw	r31 r30 104
	addi	r30 r30 108
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -108
	lw	r30 r31 104
ble_nontail_cont.30732:
	addi	r30 r30 104
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -104
	mov	r2 r27
	addi	r27 r27 12
	lwc1	 r30 f0 16
	swc1	f0 r2 8
	lw	r30 r3 92
	sw	r3 r2 4
	lw	r30 r3 80
	sw	r3 r2 0
	lw	r30 r3 76
	multi r3 r3 4
	swo	r2 r1 r3
	addi	r30 r30 104
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -104
	addi	r0 r2 0
	addi	r0 r3 3
	lw	r30 r4 8
	add	r4 r3 r3
	multi r2 r2 4
	swo	r3 r1 r2
	jr	r31
setup_surface_reflection.3221:
	addi	r0 r3 4
	mult	r1 r3 r1
	addi	r0 r3 1
	add	r1 r3 r1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r2 r4 28
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f1
	sub.s	f0 f1 f0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	lw	r2 r5 16
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r4 r6 f1
	addi	r0 r6 0
	multi r6 r6 4
	lwoc1	r5 r6 f2
	mul.s	f1 f2 f1
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r4 r6 f2
	addi	r0 r6 1
	multi r6 r6 4
	lwoc1	r5 r6 f3
	mul.s	f2 f3 f2
	add.s	f1 f2 f1
	addi	r0 r6 2
	multi r6 r6 4
	lwoc1	r4 r6 f2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r5 r4 f3
	mul.s	f2 f3 f2
	add.s	f1 f2 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lw	r2 r4 16
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f3
	mul.s	f2 f3 f2
	mul.s	f2 f1 f2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f3
	sub.s	f2 f3 f2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f3
	lw	r2 r4 16
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f4
	mul.s	f3 f4 f3
	mul.s	f3 f1 f3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 1
	multi r5 r5 4
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	lw	r2 r2 16
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f5
	mul.s	f4 f5 f4
	mul.s	f4 f1 f1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f4
	sub.s	f1 f4 f1
	addi	r0 r2 3
	mtc1	r0 f4
	sw	r3 r30 0
	sw	r1 r30 4
	swc1	f0 r30 8
	swc1	f1 r30 12
	swc1	f3 r30 16
	swc1	f2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	mov.s	f4 f0
	jal	min_caml_create_float_array
	addi	r30 r30 -28
	lw	r30 r31 24
	mov	r2 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_create_array
	addi	r30 r30 -32
	lw	r30 r31 28
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r3 24
	sw	r3 r2 0
	addi	r0 r4 0
	multi r4 r4 4
	lwc1	 r30 f0 20
	swoc1	f0 r3 r4
	addi	r0 r4 1
	multi r4 r4 4
	lwc1	 r30 f0 16
	swoc1	f0 r3 r4
	addi	r0 r4 2
	multi r4 r4 4
	lwc1	 r30 f0 12
	swoc1	f0 r3 r4
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r5 0
	multi r5 r5 4
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r2 r30 28
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30738
	j	ble_nontail_cont.30739
ble_nontail_else.30738:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	multi r4 r6 4
	lwo	r5 r6 r5
	lw	r5 r6 4
	addi	r0 r7 1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30740
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30742
	sw	r1 r30 32
	sw	r4 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r5
	mov	r1 r3
	jal	setup_second_table.2983
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 36
	multi r2 r3 4
	lw	r30 r4 32
	swo	r1 r4 r3
	j	beq_cont.30743
beq_else.30742:
	sw	r1 r30 32
	sw	r4 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r5
	mov	r1 r3
	jal	setup_surface_table.2980
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 36
	multi r2 r3 4
	lw	r30 r4 32
	swo	r1 r4 r3
beq_cont.30743:
	j	beq_cont.30741
beq_else.30740:
	sw	r1 r30 32
	sw	r4 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r5
	mov	r1 r3
	jal	setup_rect_table.2977
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 36
	multi r2 r3 4
	lw	r30 r4 32
	swo	r1 r4 r3
beq_cont.30741:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 28
	sw	r31 r30 40
	addi	r30 r30 44
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -44
	lw	r30 r31 40
ble_nontail_cont.30739:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	mov	r2 r27
	addi	r27 r27 12
	lwc1	 r30 f0 8
	swc1	f0 r2 8
	lw	r30 r3 28
	sw	r3 r2 4
	lw	r30 r3 4
	sw	r3 r2 0
	lw	r30 r3 0
	multi r3 r4 4
	swo	r2 r1 r4
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	addi	r0 r4 1
	add	r3 r4 r3
	multi r2 r2 4
	swo	r3 r1 r2
	jr	r31
rt.3226:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	multi r4 r4 4
	swo	r1 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 1
	multi r4 r4 4
	swo	r2 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	addi	r0 r5 2
	div	r1 r5 r5
	multi r4 r4 4
	swo	r5 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 1
	addi	r0 r5 2
	div	r2 r5 r2
	multi r4 r4 4
	swo	r2 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	lui	r24 17152
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r3 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	div.s	f1 f0 f0
	lw	r30 r1 4
	multi r1 r1 4
	lw	r30 r2 0
	swoc1	f0 r2 r1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	create_pixel.3168
	addi	r30 r30 -20
	lw	r30 r31 16
	mov	r2 r1
	lw	r30 r1 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_create_array
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 2
	sub	r2 r3 r2
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30745
	j	ble_nontail_cont.30746
ble_nontail_else.30745:
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 16
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -32
	lw	r30 r31 28
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_create_array
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 28
	sw	r2 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r2 32
	multi r2 r2 4
	lw	r30 r3 28
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 36
	multi r2 r2 4
	lw	r30 r3 28
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r2 40
	multi r2 r2 4
	lw	r30 r3 28
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r2 44
	multi r2 r2 4
	lw	r30 r3 28
	swo	r1 r3 r2
	addi	r0 r1 5
	addi	r0 r2 0
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_create_array
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r2 5
	addi	r0 r3 0
	sw	r1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -60
	lw	r30 r31 56
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_create_array
	addi	r30 r30 -60
	lw	r30 r31 56
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 56
	sw	r2 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -68
	lw	r30 r31 64
	lw	r30 r2 60
	multi r2 r2 4
	lw	r30 r3 56
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -72
	lw	r30 r31 68
	lw	r30 r2 64
	multi r2 r2 4
	lw	r30 r3 56
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r2 68
	multi r2 r2 4
	lw	r30 r3 56
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -80
	lw	r30 r31 76
	lw	r30 r2 72
	multi r2 r2 4
	lw	r30 r3 56
	swo	r1 r3 r2
	addi	r0 r1 3
	mtc1	r0 f0
	sw	r31 r30 76
	addi	r30 r30 80
	jal	min_caml_create_float_array
	addi	r30 r30 -80
	lw	r30 r31 76
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 76
	addi	r30 r30 80
	jal	min_caml_create_array
	addi	r30 r30 -80
	lw	r30 r31 76
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 76
	sw	r2 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -88
	lw	r30 r31 84
	lw	r30 r2 80
	multi r2 r2 4
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -92
	lw	r30 r31 88
	lw	r30 r2 84
	multi r2 r2 4
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -96
	lw	r30 r31 92
	lw	r30 r2 88
	multi r2 r2 4
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -100
	lw	r30 r31 96
	lw	r30 r2 92
	multi r2 r2 4
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 1
	addi	r0 r2 0
	sw	r31 r30 96
	addi	r30 r30 100
	jal	min_caml_create_array
	addi	r30 r30 -100
	lw	r30 r31 96
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 96
	sw	r31 r30 100
	addi	r30 r30 104
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -104
	lw	r30 r31 100
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 100
	addi	r30 r30 104
	jal	min_caml_create_array
	addi	r30 r30 -104
	lw	r30 r31 100
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 100
	sw	r2 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -112
	lw	r30 r31 108
	lw	r30 r2 104
	multi r2 r2 4
	lw	r30 r3 100
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -116
	lw	r30 r31 112
	lw	r30 r2 108
	multi r2 r2 4
	lw	r30 r3 100
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 112
	sw	r31 r30 116
	addi	r30 r30 120
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -120
	lw	r30 r31 116
	lw	r30 r2 112
	multi r2 r2 4
	lw	r30 r3 100
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 116
	sw	r31 r30 120
	addi	r30 r30 124
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -124
	lw	r30 r31 120
	lw	r30 r2 116
	multi r2 r2 4
	lw	r30 r3 100
	swo	r1 r3 r2
	mov	r1 r27
	addi	r27 r27 32
	sw	r3 r1 28
	lw	r30 r2 96
	sw	r2 r1 24
	lw	r30 r2 76
	sw	r2 r1 20
	lw	r30 r2 56
	sw	r2 r1 16
	lw	r30 r2 52
	sw	r2 r1 12
	lw	r30 r2 48
	sw	r2 r1 8
	lw	r30 r2 28
	sw	r2 r1 4
	lw	r30 r2 24
	sw	r2 r1 0
	lw	r30 r2 20
	multi r2 r3 4
	lw	r30 r4 16
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30747
	mov	r1 r4
	j	ble_nontail_cont.30748
ble_nontail_else.30747:
	sw	r1 r30 120
	sw	r31 r30 124
	addi	r30 r30 128
	jal	create_pixel.3168
	addi	r30 r30 -128
	lw	r30 r31 124
	lw	r30 r2 120
	multi r2 r3 4
	lw	r30 r4 16
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r2
	sw	r31 r30 124
	addi	r30 r30 128
	mov	r1 r4
	jal	init_line_elements.3170
	addi	r30 r30 -128
	lw	r30 r31 124
ble_nontail_cont.30748:
ble_nontail_cont.30746:
	addi	r30 r30 124
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -124
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	sw	r1 r30 124
	sw	r2 r30 128
	sw	r31 r30 132
	addi	r30 r30 136
	jal	create_pixel.3168
	addi	r30 r30 -136
	lw	r30 r31 132
	mov	r2 r1
	lw	r30 r1 128
	sw	r31 r30 132
	addi	r30 r30 136
	jal	min_caml_create_array
	addi	r30 r30 -136
	lw	r30 r31 132
	addi	r30 r30 132
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -132
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 2
	sub	r2 r3 r2
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30749
	j	ble_nontail_cont.30750
ble_nontail_else.30749:
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 132
	sw	r2 r30 136
	sw	r31 r30 140
	addi	r30 r30 144
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -144
	lw	r30 r31 140
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 140
	sw	r31 r30 144
	addi	r30 r30 148
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -148
	lw	r30 r31 144
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 144
	addi	r30 r30 148
	jal	min_caml_create_array
	addi	r30 r30 -148
	lw	r30 r31 144
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 144
	sw	r2 r30 148
	sw	r31 r30 152
	addi	r30 r30 156
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -156
	lw	r30 r31 152
	lw	r30 r2 148
	multi r2 r2 4
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 152
	sw	r31 r30 156
	addi	r30 r30 160
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -160
	lw	r30 r31 156
	lw	r30 r2 152
	multi r2 r2 4
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 156
	sw	r31 r30 160
	addi	r30 r30 164
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -164
	lw	r30 r31 160
	lw	r30 r2 156
	multi r2 r2 4
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 160
	sw	r31 r30 164
	addi	r30 r30 168
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -168
	lw	r30 r31 164
	lw	r30 r2 160
	multi r2 r2 4
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 5
	addi	r0 r2 0
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
	addi	r0 r2 5
	addi	r0 r3 0
	sw	r1 r30 164
	sw	r31 r30 168
	addi	r30 r30 172
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -172
	lw	r30 r31 168
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 168
	sw	r31 r30 172
	addi	r30 r30 176
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -176
	lw	r30 r31 172
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 172
	addi	r30 r30 176
	jal	min_caml_create_array
	addi	r30 r30 -176
	lw	r30 r31 172
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 172
	sw	r2 r30 176
	sw	r31 r30 180
	addi	r30 r30 184
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -184
	lw	r30 r31 180
	lw	r30 r2 176
	multi r2 r2 4
	lw	r30 r3 172
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 180
	sw	r31 r30 184
	addi	r30 r30 188
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -188
	lw	r30 r31 184
	lw	r30 r2 180
	multi r2 r2 4
	lw	r30 r3 172
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 184
	sw	r31 r30 188
	addi	r30 r30 192
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -192
	lw	r30 r31 188
	lw	r30 r2 184
	multi r2 r2 4
	lw	r30 r3 172
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 188
	sw	r31 r30 192
	addi	r30 r30 196
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -196
	lw	r30 r31 192
	lw	r30 r2 188
	multi r2 r2 4
	lw	r30 r3 172
	swo	r1 r3 r2
	addi	r0 r1 3
	mtc1	r0 f0
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_float_array
	addi	r30 r30 -196
	lw	r30 r31 192
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 192
	sw	r2 r30 196
	sw	r31 r30 200
	addi	r30 r30 204
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -204
	lw	r30 r31 200
	lw	r30 r2 196
	multi r2 r2 4
	lw	r30 r3 192
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 200
	sw	r31 r30 204
	addi	r30 r30 208
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -208
	lw	r30 r31 204
	lw	r30 r2 200
	multi r2 r2 4
	lw	r30 r3 192
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 204
	sw	r31 r30 208
	addi	r30 r30 212
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -212
	lw	r30 r31 208
	lw	r30 r2 204
	multi r2 r2 4
	lw	r30 r3 192
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 208
	sw	r31 r30 212
	addi	r30 r30 216
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -216
	lw	r30 r31 212
	lw	r30 r2 208
	multi r2 r2 4
	lw	r30 r3 192
	swo	r1 r3 r2
	addi	r0 r1 1
	addi	r0 r2 0
	sw	r31 r30 212
	addi	r30 r30 216
	jal	min_caml_create_array
	addi	r30 r30 -216
	lw	r30 r31 212
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 212
	sw	r31 r30 216
	addi	r30 r30 220
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -220
	lw	r30 r31 216
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 216
	addi	r30 r30 220
	jal	min_caml_create_array
	addi	r30 r30 -220
	lw	r30 r31 216
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 216
	sw	r2 r30 220
	sw	r31 r30 224
	addi	r30 r30 228
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -228
	lw	r30 r31 224
	lw	r30 r2 220
	multi r2 r2 4
	lw	r30 r3 216
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 224
	sw	r31 r30 228
	addi	r30 r30 232
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -232
	lw	r30 r31 228
	lw	r30 r2 224
	multi r2 r2 4
	lw	r30 r3 216
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 228
	sw	r31 r30 232
	addi	r30 r30 236
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -236
	lw	r30 r31 232
	lw	r30 r2 228
	multi r2 r2 4
	lw	r30 r3 216
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 232
	sw	r31 r30 236
	addi	r30 r30 240
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -240
	lw	r30 r31 236
	lw	r30 r2 232
	multi r2 r2 4
	lw	r30 r3 216
	swo	r1 r3 r2
	mov	r1 r27
	addi	r27 r27 32
	sw	r3 r1 28
	lw	r30 r2 212
	sw	r2 r1 24
	lw	r30 r2 192
	sw	r2 r1 20
	lw	r30 r2 172
	sw	r2 r1 16
	lw	r30 r2 168
	sw	r2 r1 12
	lw	r30 r2 164
	sw	r2 r1 8
	lw	r30 r2 144
	sw	r2 r1 4
	lw	r30 r2 140
	sw	r2 r1 0
	lw	r30 r2 136
	multi r2 r3 4
	lw	r30 r4 132
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30751
	mov	r1 r4
	j	ble_nontail_cont.30752
ble_nontail_else.30751:
	sw	r1 r30 236
	sw	r31 r30 240
	addi	r30 r30 244
	jal	create_pixel.3168
	addi	r30 r30 -244
	lw	r30 r31 240
	lw	r30 r2 236
	multi r2 r3 4
	lw	r30 r4 132
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r2
	sw	r31 r30 240
	addi	r30 r30 244
	mov	r1 r4
	jal	init_line_elements.3170
	addi	r30 r30 -244
	lw	r30 r31 240
ble_nontail_cont.30752:
ble_nontail_cont.30750:
	addi	r30 r30 240
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -240
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	sw	r1 r30 240
	sw	r2 r30 244
	sw	r31 r30 248
	addi	r30 r30 252
	jal	create_pixel.3168
	addi	r30 r30 -252
	lw	r30 r31 248
	mov	r2 r1
	lw	r30 r1 244
	sw	r31 r30 248
	addi	r30 r30 252
	jal	min_caml_create_array
	addi	r30 r30 -252
	lw	r30 r31 248
	addi	r30 r30 248
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -248
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 2
	sub	r2 r3 r2
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30753
	j	ble_nontail_cont.30754
ble_nontail_else.30753:
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 248
	sw	r2 r30 252
	sw	r31 r30 256
	addi	r30 r30 260
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -260
	lw	r30 r31 256
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 256
	sw	r31 r30 260
	addi	r30 r30 264
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -264
	lw	r30 r31 260
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 260
	addi	r30 r30 264
	jal	min_caml_create_array
	addi	r30 r30 -264
	lw	r30 r31 260
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 260
	sw	r2 r30 264
	sw	r31 r30 268
	addi	r30 r30 272
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -272
	lw	r30 r31 268
	lw	r30 r2 264
	multi r2 r2 4
	lw	r30 r3 260
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 268
	sw	r31 r30 272
	addi	r30 r30 276
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -276
	lw	r30 r31 272
	lw	r30 r2 268
	multi r2 r2 4
	lw	r30 r3 260
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 272
	sw	r31 r30 276
	addi	r30 r30 280
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -280
	lw	r30 r31 276
	lw	r30 r2 272
	multi r2 r2 4
	lw	r30 r3 260
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 276
	sw	r31 r30 280
	addi	r30 r30 284
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -284
	lw	r30 r31 280
	lw	r30 r2 276
	multi r2 r2 4
	lw	r30 r3 260
	swo	r1 r3 r2
	addi	r0 r1 5
	addi	r0 r2 0
	sw	r31 r30 280
	addi	r30 r30 284
	jal	min_caml_create_array
	addi	r30 r30 -284
	lw	r30 r31 280
	addi	r0 r2 5
	addi	r0 r3 0
	sw	r1 r30 280
	sw	r31 r30 284
	addi	r30 r30 288
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -288
	lw	r30 r31 284
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 284
	sw	r31 r30 288
	addi	r30 r30 292
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -292
	lw	r30 r31 288
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 288
	addi	r30 r30 292
	jal	min_caml_create_array
	addi	r30 r30 -292
	lw	r30 r31 288
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 288
	sw	r2 r30 292
	sw	r31 r30 296
	addi	r30 r30 300
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -300
	lw	r30 r31 296
	lw	r30 r2 292
	multi r2 r2 4
	lw	r30 r3 288
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 296
	sw	r31 r30 300
	addi	r30 r30 304
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -304
	lw	r30 r31 300
	lw	r30 r2 296
	multi r2 r2 4
	lw	r30 r3 288
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 300
	sw	r31 r30 304
	addi	r30 r30 308
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -308
	lw	r30 r31 304
	lw	r30 r2 300
	multi r2 r2 4
	lw	r30 r3 288
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 304
	sw	r31 r30 308
	addi	r30 r30 312
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -312
	lw	r30 r31 308
	lw	r30 r2 304
	multi r2 r2 4
	lw	r30 r3 288
	swo	r1 r3 r2
	addi	r0 r1 3
	mtc1	r0 f0
	sw	r31 r30 308
	addi	r30 r30 312
	jal	min_caml_create_float_array
	addi	r30 r30 -312
	lw	r30 r31 308
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 308
	addi	r30 r30 312
	jal	min_caml_create_array
	addi	r30 r30 -312
	lw	r30 r31 308
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 308
	sw	r2 r30 312
	sw	r31 r30 316
	addi	r30 r30 320
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -320
	lw	r30 r31 316
	lw	r30 r2 312
	multi r2 r2 4
	lw	r30 r3 308
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 316
	sw	r31 r30 320
	addi	r30 r30 324
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -324
	lw	r30 r31 320
	lw	r30 r2 316
	multi r2 r2 4
	lw	r30 r3 308
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 320
	sw	r31 r30 324
	addi	r30 r30 328
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -328
	lw	r30 r31 324
	lw	r30 r2 320
	multi r2 r2 4
	lw	r30 r3 308
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 324
	sw	r31 r30 328
	addi	r30 r30 332
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -332
	lw	r30 r31 328
	lw	r30 r2 324
	multi r2 r2 4
	lw	r30 r3 308
	swo	r1 r3 r2
	addi	r0 r1 1
	addi	r0 r2 0
	sw	r31 r30 328
	addi	r30 r30 332
	jal	min_caml_create_array
	addi	r30 r30 -332
	lw	r30 r31 328
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 328
	sw	r31 r30 332
	addi	r30 r30 336
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -336
	lw	r30 r31 332
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 332
	addi	r30 r30 336
	jal	min_caml_create_array
	addi	r30 r30 -336
	lw	r30 r31 332
	addi	r0 r2 1
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 332
	sw	r2 r30 336
	sw	r31 r30 340
	addi	r30 r30 344
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -344
	lw	r30 r31 340
	lw	r30 r2 336
	multi r2 r2 4
	lw	r30 r3 332
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 340
	sw	r31 r30 344
	addi	r30 r30 348
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -348
	lw	r30 r31 344
	lw	r30 r2 340
	multi r2 r2 4
	lw	r30 r3 332
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 344
	sw	r31 r30 348
	addi	r30 r30 352
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -352
	lw	r30 r31 348
	lw	r30 r2 344
	multi r2 r2 4
	lw	r30 r3 332
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 348
	sw	r31 r30 352
	addi	r30 r30 356
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -356
	lw	r30 r31 352
	lw	r30 r2 348
	multi r2 r2 4
	lw	r30 r3 332
	swo	r1 r3 r2
	mov	r1 r27
	addi	r27 r27 32
	sw	r3 r1 28
	lw	r30 r2 328
	sw	r2 r1 24
	lw	r30 r2 308
	sw	r2 r1 20
	lw	r30 r2 288
	sw	r2 r1 16
	lw	r30 r2 284
	sw	r2 r1 12
	lw	r30 r2 280
	sw	r2 r1 8
	lw	r30 r2 260
	sw	r2 r1 4
	lw	r30 r2 256
	sw	r2 r1 0
	lw	r30 r2 252
	multi r2 r3 4
	lw	r30 r4 248
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30755
	mov	r1 r4
	j	ble_nontail_cont.30756
ble_nontail_else.30755:
	sw	r1 r30 352
	sw	r31 r30 356
	addi	r30 r30 360
	jal	create_pixel.3168
	addi	r30 r30 -360
	lw	r30 r31 356
	lw	r30 r2 352
	multi r2 r3 4
	lw	r30 r4 248
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r2
	sw	r31 r30 356
	addi	r30 r30 360
	mov	r1 r4
	jal	init_line_elements.3170
	addi	r30 r30 -360
	lw	r30 r31 356
ble_nontail_cont.30756:
ble_nontail_cont.30754:
	sw	r1 r30 356
	sw	r31 r30 360
	addi	r30 r30 364
	jal	read_screen_settings.2872
	addi	r30 r30 -364
	lw	r30 r31 360
	sw	r31 r30 360
	addi	r30 r30 364
	jal	min_caml_read_int
	addi	r30 r30 -364
	lw	r30 r31 360
	sw	r31 r30 360
	addi	r30 r30 364
	jal	min_caml_read_float
	addi	r30 r30 -364
	lw	r30 r31 360
	lui	r24 15502
	ori	r24 r24 64053
	mtc1	r24 f1
	mul.s	f0 f1 f0
	swc1	f0 r30 360
	sw	r31 r30 364
	addi	r30 r30 368
	jal	min_caml_sin
	addi	r30 r30 -368
	lw	r30 r31 364
	addi	r30 r30 364
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -364
	addi	r0 r2 1
	neg.s	f0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	sw	r31 r30 364
	addi	r30 r30 368
	jal	min_caml_read_float
	addi	r30 r30 -368
	lw	r30 r31 364
	lui	r24 15502
	ori	r24 r24 64053
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 360
	swc1	f0 r30 364
	sw	r31 r30 368
	addi	r30 r30 372
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -372
	lw	r30 r31 368
	lwc1	 r30 f1 364
	swc1	f0 r30 368
	sw	r31 r30 372
	addi	r30 r30 376
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -376
	lw	r30 r31 372
	addi	r30 r30 372
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -372
	addi	r0 r2 0
	lwc1	 r30 f1 368
	mul.s	f1 f0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	lwc1	 r30 f0 364
	sw	r31 r30 372
	addi	r30 r30 376
	jal	min_caml_cos
	addi	r30 r30 -376
	lw	r30 r31 372
	addi	r30 r30 372
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -372
	addi	r0 r2 2
	lwc1	 r30 f1 368
	mul.s	f1 f0 f0
	multi r2 r2 4
	swoc1	f0 r1 r2
	addi	r30 r30 372
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_beam
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -372
	addi	r0 r2 0
	sw	r1 r30 372
	sw	r2 r30 376
	sw	r31 r30 380
	addi	r30 r30 384
	jal	min_caml_read_float
	addi	r30 r30 -384
	lw	r30 r31 380
	lw	r30 r1 376
	multi r1 r1 4
	lw	r30 r2 372
	swoc1	f0 r2 r1
	addi	r0 r1 0
	sw	r1 r30 380
	sw	r31 r30 384
	addi	r30 r30 388
	jal	read_nth_object.2879
	addi	r30 r30 -388
	lw	r30 r31 384
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30757
	addi	r0 r1 1
	sw	r1 r30 384
	sw	r31 r30 388
	addi	r30 r30 392
	jal	read_nth_object.2879
	addi	r30 r30 -392
	lw	r30 r31 388
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30759
	addi	r0 r1 2
	sw	r1 r30 388
	sw	r31 r30 392
	addi	r30 r30 396
	jal	read_nth_object.2879
	addi	r30 r30 -396
	lw	r30 r31 392
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30761
	addi	r0 r1 3
	sw	r1 r30 392
	sw	r31 r30 396
	addi	r30 r30 400
	jal	read_nth_object.2879
	addi	r30 r30 -400
	lw	r30 r31 396
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30763
	addi	r0 r1 4
	sw	r1 r30 396
	sw	r31 r30 400
	addi	r30 r30 404
	jal	read_nth_object.2879
	addi	r30 r30 -404
	lw	r30 r31 400
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30765
	addi	r0 r1 5
	sw	r31 r30 400
	addi	r30 r30 404
	jal	read_object.2881
	addi	r30 r30 -404
	lw	r30 r31 400
	j	beq_cont.30766
beq_else.30765:
	addi	r30 r30 400
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -400
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 396
	swo	r3 r1 r2
beq_cont.30766:
	j	beq_cont.30764
beq_else.30763:
	addi	r30 r30 400
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -400
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 392
	swo	r3 r1 r2
beq_cont.30764:
	j	beq_cont.30762
beq_else.30761:
	addi	r30 r30 400
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -400
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 388
	swo	r3 r1 r2
beq_cont.30762:
	j	beq_cont.30760
beq_else.30759:
	addi	r30 r30 400
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -400
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 384
	swo	r3 r1 r2
beq_cont.30760:
	j	beq_cont.30758
beq_else.30757:
	addi	r30 r30 400
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -400
	addi	r0 r2 0
	multi r2 r2 4
	lw	r30 r3 380
	swo	r3 r1 r2
beq_cont.30758:
	addi	r0 r1 0
	addi	r0 r2 0
	sw	r1 r30 400
	sw	r2 r30 404
	sw	r31 r30 408
	addi	r30 r30 412
	jal	min_caml_read_int
	addi	r30 r30 -412
	lw	r30 r31 408
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30767
	addi	r0 r2 1
	sw	r1 r30 408
	sw	r2 r30 412
	sw	r31 r30 416
	addi	r30 r30 420
	jal	min_caml_read_int
	addi	r30 r30 -420
	lw	r30 r31 416
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30769
	addi	r0 r2 2
	sw	r1 r30 416
	sw	r2 r30 420
	sw	r31 r30 424
	addi	r30 r30 428
	jal	min_caml_read_int
	addi	r30 r30 -428
	lw	r30 r31 424
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30771
	addi	r0 r2 3
	sw	r1 r30 424
	sw	r2 r30 428
	sw	r31 r30 432
	addi	r30 r30 436
	jal	min_caml_read_int
	addi	r30 r30 -436
	lw	r30 r31 432
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30773
	addi	r0 r2 4
	sw	r1 r30 432
	sw	r2 r30 436
	sw	r31 r30 440
	addi	r30 r30 444
	jal	min_caml_read_int
	addi	r30 r30 -444
	lw	r30 r31 440
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30775
	addi	r0 r2 5
	sw	r1 r30 440
	sw	r31 r30 444
	addi	r30 r30 448
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -448
	lw	r30 r31 444
	lw	r30 r2 436
	multi r2 r2 4
	lw	r30 r3 440
	swo	r3 r1 r2
	j	beq_cont.30776
beq_else.30775:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 444
	addi	r30 r30 448
	jal	min_caml_create_array
	addi	r30 r30 -448
	lw	r30 r31 444
beq_cont.30776:
	lw	r30 r2 428
	multi r2 r2 4
	lw	r30 r3 432
	swo	r3 r1 r2
	j	beq_cont.30774
beq_else.30773:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 444
	addi	r30 r30 448
	jal	min_caml_create_array
	addi	r30 r30 -448
	lw	r30 r31 444
beq_cont.30774:
	lw	r30 r2 420
	multi r2 r2 4
	lw	r30 r3 424
	swo	r3 r1 r2
	j	beq_cont.30772
beq_else.30771:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 444
	addi	r30 r30 448
	jal	min_caml_create_array
	addi	r30 r30 -448
	lw	r30 r31 444
beq_cont.30772:
	lw	r30 r2 412
	multi r2 r2 4
	lw	r30 r3 416
	swo	r3 r1 r2
	j	beq_cont.30770
beq_else.30769:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 444
	addi	r30 r30 448
	jal	min_caml_create_array
	addi	r30 r30 -448
	lw	r30 r31 444
beq_cont.30770:
	lw	r30 r2 404
	multi r2 r2 4
	lw	r30 r3 408
	swo	r3 r1 r2
	j	beq_cont.30768
beq_else.30767:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 444
	addi	r30 r30 448
	jal	min_caml_create_array
	addi	r30 r30 -448
	lw	r30 r31 444
beq_cont.30768:
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30777
	addi	r30 r30 444
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -444
	lw	r30 r3 400
	multi r3 r3 4
	swo	r1 r2 r3
	addi	r0 r1 1
	addi	r0 r2 0
	sw	r1 r30 444
	sw	r2 r30 448
	sw	r31 r30 452
	addi	r30 r30 456
	jal	min_caml_read_int
	addi	r30 r30 -456
	lw	r30 r31 452
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30779
	addi	r0 r2 1
	sw	r1 r30 452
	sw	r2 r30 456
	sw	r31 r30 460
	addi	r30 r30 464
	jal	min_caml_read_int
	addi	r30 r30 -464
	lw	r30 r31 460
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30781
	addi	r0 r2 2
	sw	r1 r30 460
	sw	r2 r30 464
	sw	r31 r30 468
	addi	r30 r30 472
	jal	min_caml_read_int
	addi	r30 r30 -472
	lw	r30 r31 468
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30783
	addi	r0 r2 3
	sw	r1 r30 468
	sw	r2 r30 472
	sw	r31 r30 476
	addi	r30 r30 480
	jal	min_caml_read_int
	addi	r30 r30 -480
	lw	r30 r31 476
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30785
	addi	r0 r2 4
	sw	r1 r30 476
	sw	r31 r30 480
	addi	r30 r30 484
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -484
	lw	r30 r31 480
	lw	r30 r2 472
	multi r2 r2 4
	lw	r30 r3 476
	swo	r3 r1 r2
	j	beq_cont.30786
beq_else.30785:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 480
	addi	r30 r30 484
	jal	min_caml_create_array
	addi	r30 r30 -484
	lw	r30 r31 480
beq_cont.30786:
	lw	r30 r2 464
	multi r2 r2 4
	lw	r30 r3 468
	swo	r3 r1 r2
	j	beq_cont.30784
beq_else.30783:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 480
	addi	r30 r30 484
	jal	min_caml_create_array
	addi	r30 r30 -484
	lw	r30 r31 480
beq_cont.30784:
	lw	r30 r2 456
	multi r2 r2 4
	lw	r30 r3 460
	swo	r3 r1 r2
	j	beq_cont.30782
beq_else.30781:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 480
	addi	r30 r30 484
	jal	min_caml_create_array
	addi	r30 r30 -484
	lw	r30 r31 480
beq_cont.30782:
	lw	r30 r2 448
	multi r2 r2 4
	lw	r30 r3 452
	swo	r3 r1 r2
	j	beq_cont.30780
beq_else.30779:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 480
	addi	r30 r30 484
	jal	min_caml_create_array
	addi	r30 r30 -484
	lw	r30 r31 480
beq_cont.30780:
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30787
	addi	r30 r30 480
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -480
	lw	r30 r3 444
	multi r3 r3 4
	swo	r1 r2 r3
	addi	r0 r1 2
	sw	r31 r30 480
	addi	r30 r30 484
	jal	read_and_network.2889
	addi	r30 r30 -484
	lw	r30 r31 480
	j	beq_cont.30788
beq_else.30787:
beq_cont.30788:
	j	beq_cont.30778
beq_else.30777:
beq_cont.30778:
	addi	r30 r30 480
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -480
	addi	r0 r2 0
	addi	r0 r3 0
	addi	r0 r4 0
	sw	r1 r30 480
	sw	r2 r30 484
	sw	r3 r30 488
	sw	r4 r30 492
	sw	r31 r30 496
	addi	r30 r30 500
	jal	min_caml_read_int
	addi	r30 r30 -500
	lw	r30 r31 496
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30789
	addi	r0 r2 1
	sw	r1 r30 496
	sw	r2 r30 500
	sw	r31 r30 504
	addi	r30 r30 508
	jal	min_caml_read_int
	addi	r30 r30 -508
	lw	r30 r31 504
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30791
	addi	r0 r2 2
	sw	r1 r30 504
	sw	r2 r30 508
	sw	r31 r30 512
	addi	r30 r30 516
	jal	min_caml_read_int
	addi	r30 r30 -516
	lw	r30 r31 512
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30793
	addi	r0 r2 3
	sw	r1 r30 512
	sw	r2 r30 516
	sw	r31 r30 520
	addi	r30 r30 524
	jal	min_caml_read_int
	addi	r30 r30 -524
	lw	r30 r31 520
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30795
	addi	r0 r2 4
	sw	r1 r30 520
	sw	r2 r30 524
	sw	r31 r30 528
	addi	r30 r30 532
	jal	min_caml_read_int
	addi	r30 r30 -532
	lw	r30 r31 528
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30797
	addi	r0 r2 5
	sw	r1 r30 528
	sw	r31 r30 532
	addi	r30 r30 536
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -536
	lw	r30 r31 532
	lw	r30 r2 524
	multi r2 r2 4
	lw	r30 r3 528
	swo	r3 r1 r2
	j	beq_cont.30798
beq_else.30797:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 532
	addi	r30 r30 536
	jal	min_caml_create_array
	addi	r30 r30 -536
	lw	r30 r31 532
beq_cont.30798:
	lw	r30 r2 516
	multi r2 r2 4
	lw	r30 r3 520
	swo	r3 r1 r2
	j	beq_cont.30796
beq_else.30795:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 532
	addi	r30 r30 536
	jal	min_caml_create_array
	addi	r30 r30 -536
	lw	r30 r31 532
beq_cont.30796:
	lw	r30 r2 508
	multi r2 r2 4
	lw	r30 r3 512
	swo	r3 r1 r2
	j	beq_cont.30794
beq_else.30793:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 532
	addi	r30 r30 536
	jal	min_caml_create_array
	addi	r30 r30 -536
	lw	r30 r31 532
beq_cont.30794:
	lw	r30 r2 500
	multi r2 r2 4
	lw	r30 r3 504
	swo	r3 r1 r2
	j	beq_cont.30792
beq_else.30791:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 532
	addi	r30 r30 536
	jal	min_caml_create_array
	addi	r30 r30 -536
	lw	r30 r31 532
beq_cont.30792:
	lw	r30 r2 492
	multi r2 r2 4
	lw	r30 r3 496
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.30790
beq_else.30789:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 532
	addi	r30 r30 536
	jal	min_caml_create_array
	addi	r30 r30 -536
	lw	r30 r31 532
	mov	r2 r1
beq_cont.30790:
	addi	r0 r1 0
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30799
	addi	r0 r1 1
	addi	r0 r3 0
	sw	r2 r30 532
	sw	r1 r30 536
	sw	r3 r30 540
	sw	r31 r30 544
	addi	r30 r30 548
	jal	min_caml_read_int
	addi	r30 r30 -548
	lw	r30 r31 544
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30801
	addi	r0 r2 1
	sw	r1 r30 544
	sw	r2 r30 548
	sw	r31 r30 552
	addi	r30 r30 556
	jal	min_caml_read_int
	addi	r30 r30 -556
	lw	r30 r31 552
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30803
	addi	r0 r2 2
	sw	r1 r30 552
	sw	r2 r30 556
	sw	r31 r30 560
	addi	r30 r30 564
	jal	min_caml_read_int
	addi	r30 r30 -564
	lw	r30 r31 560
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30805
	addi	r0 r2 3
	sw	r1 r30 560
	sw	r2 r30 564
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_read_int
	addi	r30 r30 -572
	lw	r30 r31 568
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30807
	addi	r0 r2 4
	sw	r1 r30 568
	sw	r31 r30 572
	addi	r30 r30 576
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -576
	lw	r30 r31 572
	lw	r30 r2 564
	multi r2 r2 4
	lw	r30 r3 568
	swo	r3 r1 r2
	j	beq_cont.30808
beq_else.30807:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 572
	addi	r30 r30 576
	jal	min_caml_create_array
	addi	r30 r30 -576
	lw	r30 r31 572
beq_cont.30808:
	lw	r30 r2 556
	multi r2 r2 4
	lw	r30 r3 560
	swo	r3 r1 r2
	j	beq_cont.30806
beq_else.30805:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 572
	addi	r30 r30 576
	jal	min_caml_create_array
	addi	r30 r30 -576
	lw	r30 r31 572
beq_cont.30806:
	lw	r30 r2 548
	multi r2 r2 4
	lw	r30 r3 552
	swo	r3 r1 r2
	j	beq_cont.30804
beq_else.30803:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 572
	addi	r30 r30 576
	jal	min_caml_create_array
	addi	r30 r30 -576
	lw	r30 r31 572
beq_cont.30804:
	lw	r30 r2 540
	multi r2 r2 4
	lw	r30 r3 544
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.30802
beq_else.30801:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 572
	addi	r30 r30 576
	jal	min_caml_create_array
	addi	r30 r30 -576
	lw	r30 r31 572
	mov	r2 r1
beq_cont.30802:
	addi	r0 r1 0
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30809
	addi	r0 r1 2
	sw	r2 r30 572
	sw	r31 r30 576
	addi	r30 r30 580
	jal	read_or_network.2887
	addi	r30 r30 -580
	lw	r30 r31 576
	lw	r30 r2 536
	multi r2 r2 4
	lw	r30 r3 572
	swo	r3 r1 r2
	j	beq_cont.30810
beq_else.30809:
	addi	r0 r1 2
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_create_array
	addi	r30 r30 -580
	lw	r30 r31 576
beq_cont.30810:
	lw	r30 r2 488
	multi r2 r2 4
	lw	r30 r3 532
	swo	r3 r1 r2
	j	beq_cont.30800
beq_else.30799:
	addi	r0 r1 1
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_create_array
	addi	r30 r30 -580
	lw	r30 r31 576
beq_cont.30800:
	lw	r30 r2 484
	multi r2 r2 4
	lw	r30 r3 480
	swo	r1 r3 r2
	addi	r0 r1 80
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_print_char
	addi	r30 r30 -580
	lw	r30 r31 576
	addi	r0 r1 51
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_print_char
	addi	r30 r30 -580
	lw	r30 r31 576
	addi	r0 r1 10
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_print_char
	addi	r30 r30 -580
	lw	r30 r31 576
	addi	r30 r30 576
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -576
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_print_int
	addi	r30 r30 -580
	lw	r30 r31 576
	addi	r0 r1 32
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_print_char
	addi	r30 r30 -580
	lw	r30 r31 576
	addi	r30 r30 576
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -576
	addi	r0 r2 1
	multi r2 r2 4
	lwo	r1 r2 r1
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_print_int
	addi	r30 r30 -580
	lw	r30 r31 576
	addi	r0 r1 32
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_print_char
	addi	r30 r30 -580
	lw	r30 r31 576
	addi	r0 r1 255
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_print_int
	addi	r30 r30 -580
	lw	r30 r31 576
	addi	r0 r1 10
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_print_char
	addi	r30 r30 -580
	lw	r30 r31 576
	addi	r0 r1 4
	addi	r30 r30 576
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -576
	addi	r0 r3 120
	addi	r0 r4 3
	mtc1	r0 f0
	sw	r2 r30 576
	sw	r1 r30 580
	sw	r3 r30 584
	sw	r31 r30 588
	addi	r30 r30 592
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -592
	lw	r30 r31 588
	mov	r2 r1
	addi	r30 r30 588
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -588
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 588
	sw	r31 r30 592
	addi	r30 r30 596
	jal	min_caml_create_array
	addi	r30 r30 -596
	lw	r30 r31 592
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 588
	sw	r1 r2 0
	lw	r30 r1 584
	sw	r31 r30 592
	addi	r30 r30 596
	jal	min_caml_create_array
	addi	r30 r30 -596
	lw	r30 r31 592
	lw	r30 r2 580
	multi r2 r3 4
	lw	r30 r4 576
	swo	r1 r4 r3
	addi	r30 r30 592
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -592
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r0 r2 118
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 592
	sw	r2 r30 596
	sw	r31 r30 600
	addi	r30 r30 604
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -604
	lw	r30 r31 600
	mov	r2 r1
	addi	r30 r30 600
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -600
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 600
	sw	r31 r30 604
	addi	r30 r30 608
	jal	min_caml_create_array
	addi	r30 r30 -608
	lw	r30 r31 604
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 600
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 596
	multi r2 r2 4
	lw	r30 r3 592
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 604
	sw	r31 r30 608
	addi	r30 r30 612
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -612
	lw	r30 r31 608
	mov	r2 r1
	addi	r30 r30 608
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -608
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 608
	sw	r31 r30 612
	addi	r30 r30 616
	jal	min_caml_create_array
	addi	r30 r30 -616
	lw	r30 r31 612
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 608
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 604
	multi r2 r2 4
	lw	r30 r3 592
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 612
	sw	r31 r30 616
	addi	r30 r30 620
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -620
	lw	r30 r31 616
	mov	r2 r1
	addi	r30 r30 616
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -616
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 616
	sw	r31 r30 620
	addi	r30 r30 624
	jal	min_caml_create_array
	addi	r30 r30 -624
	lw	r30 r31 620
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 616
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 612
	multi r2 r2 4
	lw	r30 r3 592
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 620
	sw	r31 r30 624
	addi	r30 r30 628
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -628
	lw	r30 r31 624
	mov	r2 r1
	addi	r30 r30 624
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -624
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 624
	sw	r31 r30 628
	addi	r30 r30 632
	jal	min_caml_create_array
	addi	r30 r30 -632
	lw	r30 r31 628
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 624
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 620
	multi r2 r2 4
	lw	r30 r3 592
	swo	r1 r3 r2
	addi	r0 r1 114
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 628
	sw	r31 r30 632
	addi	r30 r30 636
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -636
	lw	r30 r31 632
	mov	r2 r1
	addi	r30 r30 632
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -632
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 632
	sw	r31 r30 636
	addi	r30 r30 640
	jal	min_caml_create_array
	addi	r30 r30 -640
	lw	r30 r31 636
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 632
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 628
	multi r2 r2 4
	lw	r30 r3 592
	swo	r1 r3 r2
	addi	r0 r2 113
	sw	r31 r30 636
	addi	r30 r30 640
	mov	r1 r3
	jal	create_dirvec_elements.3199
	addi	r30 r30 -640
	lw	r30 r31 636
	addi	r0 r1 3
	addi	r30 r30 636
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -636
	addi	r0 r3 120
	addi	r0 r4 3
	mtc1	r0 f0
	sw	r2 r30 636
	sw	r1 r30 640
	sw	r3 r30 644
	sw	r31 r30 648
	addi	r30 r30 652
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -652
	lw	r30 r31 648
	mov	r2 r1
	addi	r30 r30 648
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -648
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 648
	sw	r31 r30 652
	addi	r30 r30 656
	jal	min_caml_create_array
	addi	r30 r30 -656
	lw	r30 r31 652
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 648
	sw	r1 r2 0
	lw	r30 r1 644
	sw	r31 r30 652
	addi	r30 r30 656
	jal	min_caml_create_array
	addi	r30 r30 -656
	lw	r30 r31 652
	lw	r30 r2 640
	multi r2 r3 4
	lw	r30 r4 636
	swo	r1 r4 r3
	addi	r30 r30 652
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -652
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r0 r2 118
	addi	r0 r3 3
	mtc1	r0 f0
	sw	r1 r30 652
	sw	r2 r30 656
	sw	r31 r30 660
	addi	r30 r30 664
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -664
	lw	r30 r31 660
	mov	r2 r1
	addi	r30 r30 660
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -660
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 660
	sw	r31 r30 664
	addi	r30 r30 668
	jal	min_caml_create_array
	addi	r30 r30 -668
	lw	r30 r31 664
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 660
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 656
	multi r2 r2 4
	lw	r30 r3 652
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 664
	sw	r31 r30 668
	addi	r30 r30 672
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -672
	lw	r30 r31 668
	mov	r2 r1
	addi	r30 r30 668
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -668
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 668
	sw	r31 r30 672
	addi	r30 r30 676
	jal	min_caml_create_array
	addi	r30 r30 -676
	lw	r30 r31 672
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 668
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 664
	multi r2 r2 4
	lw	r30 r3 652
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 672
	sw	r31 r30 676
	addi	r30 r30 680
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -680
	lw	r30 r31 676
	mov	r2 r1
	addi	r30 r30 676
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -676
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 676
	sw	r31 r30 680
	addi	r30 r30 684
	jal	min_caml_create_array
	addi	r30 r30 -684
	lw	r30 r31 680
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 676
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 672
	multi r2 r2 4
	lw	r30 r3 652
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	mtc1	r0 f0
	sw	r1 r30 680
	sw	r31 r30 684
	addi	r30 r30 688
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -688
	lw	r30 r31 684
	mov	r2 r1
	addi	r30 r30 684
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -684
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r1 r3 r1
	sw	r2 r30 684
	sw	r31 r30 688
	addi	r30 r30 692
	jal	min_caml_create_array
	addi	r30 r30 -692
	lw	r30 r31 688
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 684
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 680
	multi r2 r2 4
	lw	r30 r3 652
	swo	r1 r3 r2
	addi	r0 r2 114
	sw	r31 r30 688
	addi	r30 r30 692
	mov	r1 r3
	jal	create_dirvec_elements.3199
	addi	r30 r30 -692
	lw	r30 r31 688
	addi	r0 r1 2
	sw	r31 r30 688
	addi	r30 r30 692
	jal	create_dirvecs.3202
	addi	r30 r30 -692
	lw	r30 r31 688
	addi	r0 r1 9
	addi	r0 r2 0
	addi	r0 r3 0
	sw	r31 r30 688
	addi	r30 r30 692
	jal	calc_dirvec_rows.3193
	addi	r30 r30 -692
	lw	r30 r31 688
	addi	r0 r1 4
	addi	r30 r30 688
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -688
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r2 119
	multi r2 r2 4
	lwo	r1 r2 r2
	addi	r30 r30 688
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -688
	addi	r0 r4 0
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 688
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30811
	j	ble_nontail_cont.30812
ble_nontail_else.30811:
	addi	r30 r30 692
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -692
	multi r3 r5 4
	lwo	r4 r5 r4
	lw	r2 r5 4
	lw	r2 r6 0
	lw	r4 r7 4
	addi	r0 r8 1
	sw	r2 r30 692
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30813
	addi	r0 r8 2
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30815
	sw	r5 r30 696
	sw	r3 r30 700
	sw	r31 r30 704
	addi	r30 r30 708
	mov	r2 r4
	mov	r1 r6
	jal	setup_second_table.2983
	addi	r30 r30 -708
	lw	r30 r31 704
	lw	r30 r2 700
	multi r2 r3 4
	lw	r30 r4 696
	swo	r1 r4 r3
	j	beq_cont.30816
beq_else.30815:
	sw	r5 r30 696
	sw	r3 r30 700
	sw	r31 r30 704
	addi	r30 r30 708
	mov	r2 r4
	mov	r1 r6
	jal	setup_surface_table.2980
	addi	r30 r30 -708
	lw	r30 r31 704
	lw	r30 r2 700
	multi r2 r3 4
	lw	r30 r4 696
	swo	r1 r4 r3
beq_cont.30816:
	j	beq_cont.30814
beq_else.30813:
	sw	r5 r30 696
	sw	r3 r30 700
	sw	r31 r30 704
	addi	r30 r30 708
	mov	r2 r4
	mov	r1 r6
	jal	setup_rect_table.2977
	addi	r30 r30 -708
	lw	r30 r31 704
	lw	r30 r2 700
	multi r2 r3 4
	lw	r30 r4 696
	swo	r1 r4 r3
beq_cont.30814:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 692
	sw	r31 r30 704
	addi	r30 r30 708
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -708
	lw	r30 r31 704
ble_nontail_cont.30812:
	addi	r0 r2 118
	lw	r30 r1 688
	sw	r31 r30 704
	addi	r30 r30 708
	jal	init_dirvec_constants.3204
	addi	r30 r30 -708
	lw	r30 r31 704
	addi	r0 r1 3
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -704
	multi r1 r1 4
	lwo	r2 r1 r1
	addi	r0 r2 119
	sw	r31 r30 704
	addi	r30 r30 708
	jal	init_dirvec_constants.3204
	addi	r30 r30 -708
	lw	r30 r31 704
	addi	r0 r1 2
	sw	r31 r30 704
	addi	r30 r30 708
	jal	init_vecset_constants.3207
	addi	r30 r30 -708
	lw	r30 r31 704
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -704
	lw	r1 r1 0
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r3 0
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r2 r4 f0
	multi r3 r3 4
	swoc1	f0 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	multi r4 r4 4
	lwoc1	r2 r4 f0
	multi r3 r3 4
	swoc1	f0 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	multi r4 r4 4
	lwoc1	r2 r4 f0
	multi r3 r2 4
	swoc1	f0 r1 r2
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r3 0
	multi r3 r3 4
	lwo	r2 r3 r2
	addi	r0 r3 1
	sub	r2 r3 r2
	sw	r31 r30 704
	addi	r30 r30 708
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -708
	lw	r30 r31 704
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30817
	j	ble_nontail_cont.30818
ble_nontail_else.30817:
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -704
	multi r1 r3 4
	lwo	r2 r3 r2
	lw	r2 r3 8
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30819
	j	beq_cont.30820
beq_else.30819:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r2 r3 28
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	mtc1	r0 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30821
	addi	r0 r3 1
	j	bfle_nontail_cont.30822
bfle_nontail_else.30821:
	addi	r0 r3 0
bfle_nontail_cont.30822:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30823
	lw	r2 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30825
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30827
	j	beq_cont.30828
beq_else.30827:
	sw	r31 r30 704
	addi	r30 r30 708
	jal	setup_surface_reflection.3221
	addi	r30 r30 -708
	lw	r30 r31 704
beq_cont.30828:
	j	beq_cont.30826
beq_else.30825:
	sw	r31 r30 704
	addi	r30 r30 708
	jal	setup_rect_reflection.3218
	addi	r30 r30 -708
	lw	r30 r31 704
beq_cont.30826:
	j	beq_cont.30824
beq_else.30823:
beq_cont.30824:
beq_cont.30820:
ble_nontail_cont.30818:
	addi	r0 r1 0
	addi	r0 r2 0
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r4 0
	multi r4 r4 4
	lwoc1	r3 r4 f0
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r4 1
	multi r4 r4 4
	lwo	r3 r4 r3
	sub	r1 r3 r1
	sw	r2 r30 704
	swc1	f0 r30 708
	sw	r31 r30 712
	addi	r30 r30 716
	jal	min_caml_float_of_int
	addi	r30 r30 -716
	lw	r30 r31 712
	lwc1	 r30 f1 708
	mul.s	f1 f0 f0
	addi	r30 r30 712
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -712
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f1
	addi	r30 r30 712
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -712
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f2
	add.s	f1 f2 f1
	addi	r30 r30 712
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -712
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f2
	mul.s	f0 f2 f2
	addi	r30 r30 712
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -712
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f3
	add.s	f2 f3 f2
	addi	r30 r30 712
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -712
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f3
	mul.s	f0 f3 f0
	addi	r30 r30 712
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -712
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r30 r30 712
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -712
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r2
	lw	r30 r1 240
	lw	r30 r3 704
	sw	r31 r30 712
	addi	r30 r30 716
	mov.s	f2 f31
	mov.s	f0 f2
	mov.s	f1 f0
	mov.s	f31 f1
	jal	pretrace_pixels.3143
	addi	r30 r30 -716
	lw	r30 r31 712
	addi	r0 r2 0
	addi	r0 r1 2
	addi	r30 r30 712
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -712
	addi	r0 r4 1
	multi r4 r4 4
	lwo	r3 r4 r3
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30829
	addi	r30 r30 712
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -712
	addi	r0 r4 1
	multi r4 r4 4
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r2 r30 712
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30830
	addi	r0 r3 1
	addi	r30 r30 716
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -716
	addi	r0 r5 0
	multi r5 r5 4
	lwoc1	r4 r5 f0
	addi	r30 r30 716
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -716
	addi	r0 r5 1
	multi r5 r5 4
	lwo	r4 r5 r4
	sub	r3 r4 r3
	sw	r1 r30 716
	swc1	f0 r30 720
	sw	r31 r30 724
	addi	r30 r30 728
	mov	r1 r3
	jal	min_caml_float_of_int
	addi	r30 r30 -728
	lw	r30 r31 724
	lwc1	 r30 f1 720
	mul.s	f1 f0 f0
	addi	r30 r30 724
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -724
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f1
	addi	r30 r30 724
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -724
	addi	r0 r2 0
	multi r2 r2 4
	lwoc1	r1 r2 f2
	add.s	f1 f2 f1
	addi	r30 r30 724
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -724
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f2
	mul.s	f0 f2 f2
	addi	r30 r30 724
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -724
	addi	r0 r2 1
	multi r2 r2 4
	lwoc1	r1 r2 f3
	add.s	f2 f3 f2
	addi	r30 r30 724
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -724
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f3
	mul.s	f0 f3 f0
	addi	r30 r30 724
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -724
	addi	r0 r2 2
	multi r2 r2 4
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r30 r30 724
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -724
	addi	r0 r2 0
	multi r2 r2 4
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r2
	lw	r30 r1 356
	lw	r30 r3 716
	sw	r31 r30 724
	addi	r30 r30 728
	mov.s	f2 f31
	mov.s	f0 f2
	mov.s	f1 f0
	mov.s	f31 f1
	jal	pretrace_pixels.3143
	addi	r30 r30 -728
	lw	r30 r31 724
	j	ble_nontail_cont.30831
ble_nontail_else.30830:
ble_nontail_cont.30831:
	addi	r0 r1 0
	lw	r30 r2 712
	lw	r30 r3 124
	lw	r30 r4 240
	lw	r30 r5 356
	sw	r31 r30 724
	addi	r30 r30 728
	jal	scan_pixel.3154
	addi	r30 r30 -728
	lw	r30 r31 724
	addi	r0 r1 1
	addi	r0 r5 4
	lw	r30 r2 240
	lw	r30 r3 356
	lw	r30 r4 124
	j	scan_line.3160
ble_tail_else.30829:
	jr	r31
_min_caml_start:
	lui	r27 32
	jal	min_caml_globals
	addi	r0 r31 0
	addi	r0 r1 128
	addi	r0 r2 128
	sw	r31 r30 0
	addi	r30 r30 4
	jal	rt.3226
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r0 0
halt
