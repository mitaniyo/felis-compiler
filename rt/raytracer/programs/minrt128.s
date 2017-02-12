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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
	swoc1	f4 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r4 r4 2
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	sll	r2 r2 2
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
	sll	r4 r4 2
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	sll	r2 r2 2
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
	sll	r4 r4 2
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
rotate_quadratic_matrix.2876:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_cos
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r1 0
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f5
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f7
	addi	r0 r1 2
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	beq	r25 r0 beq_tail_else.28590
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 36
	swoc1	f0 r2 r1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	swc1	f0 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_read_float
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 52
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28591
	addi	r0 r1 1
	j	bfle_nontail_cont.28592
bfle_nontail_else.28591:
	addi	r0 r1 0
bfle_nontail_cont.28592:
	addi	r0 r2 2
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 60
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 72
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 88
	addi	r30 r30 92
	jal	min_caml_create_float_array
	addi	r30 r30 -92
	lw	r30 r31 88
	addi	r0 r2 0
	lw	r30 r3 16
	sw	r1 r30 88
	sub	r3 r2 r25
	beq	r25 r0 beq_else.28593
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
	sll	r1 r1 2
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
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 88
	swoc1	f0 r2 r1
	j	beq_cont.28594
beq_else.28593:
beq_cont.28594:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.28595
	lw	r30 r1 56
	j	beq_cont.28596
beq_else.28595:
	addi	r0 r1 1
beq_cont.28596:
	addi	r0 r3 4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -112
	lw	r30 r31 108
	mov	r2 r27
	addi	r27 r27 48
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
	sll	r7 r7 2
	swo	r2 r6 r7
	addi	r0 r2 3
	sub	r5 r2 r25
	beq	r25 r0 beq_else.28597
	addi	r0 r2 2
	sub	r5 r2 r25
	beq	r25 r0 beq_else.28599
	j	beq_cont.28600
beq_else.28599:
	addi	r0 r2 0
	lw	r30 r5 56
	sub	r5 r2 r25
	beq	r25 r0 beq_else.28601
	addi	r0 r2 0
	j	beq_cont.28602
beq_else.28601:
	addi	r0 r2 1
beq_cont.28602:
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f1
	mul.s	f0 f1 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r3 r5 f1
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sw	r2 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_sqrt
	addi	r30 r30 -116
	lw	r30 r31 112
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28603
	addi	r0 r1 0
	j	bfeq_nontail_cont.28604
bfeq_nontail_else.28603:
	addi	r0 r1 1
bfeq_nontail_cont.28604:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28605
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.28606
beq_else.28605:
	addi	r0 r1 0
	lw	r30 r2 108
	sub	r2 r1 r25
	beq	r25 r0 beq_else.28607
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
	j	beq_cont.28608
beq_else.28607:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
beq_cont.28608:
beq_cont.28606:
	addi	r0 r1 0
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 20
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r3 r1
	addi	r0 r1 1
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r3 r1
	addi	r0 r1 2
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f0
	sll	r1 r1 2
	swoc1	f0 r3 r1
beq_cont.28600:
	j	beq_cont.28598
beq_else.28597:
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r3 r2 f0
	addi	r0 r2 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28609
	addi	r0 r5 0
	j	bfeq_nontail_cont.28610
bfeq_nontail_else.28609:
	addi	r0 r5 1
bfeq_nontail_cont.28610:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28611
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.28612
beq_else.28611:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28613
	addi	r0 r5 0
	j	bfeq_nontail_cont.28614
bfeq_nontail_else.28613:
	addi	r0 r5 1
bfeq_nontail_cont.28614:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28615
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28616
beq_else.28615:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28617
	addi	r0 r5 1
	j	bfle_nontail_cont.28618
bfle_nontail_else.28617:
	addi	r0 r5 0
bfle_nontail_cont.28618:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28619
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28620
beq_else.28619:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
beq_cont.28620:
beq_cont.28616:
	mul.s	f0 f0 f0
	div.s	f1 f0 f0
beq_cont.28612:
	sll	r2 r2 2
	swoc1	f0 r3 r2
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f0
	addi	r0 r2 1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28621
	addi	r0 r5 0
	j	bfeq_nontail_cont.28622
bfeq_nontail_else.28621:
	addi	r0 r5 1
bfeq_nontail_cont.28622:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28623
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.28624
beq_else.28623:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28625
	addi	r0 r5 0
	j	bfeq_nontail_cont.28626
bfeq_nontail_else.28625:
	addi	r0 r5 1
bfeq_nontail_cont.28626:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28627
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28628
beq_else.28627:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28629
	addi	r0 r5 1
	j	bfle_nontail_cont.28630
bfle_nontail_else.28629:
	addi	r0 r5 0
bfle_nontail_cont.28630:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28631
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28632
beq_else.28631:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
beq_cont.28632:
beq_cont.28628:
	mul.s	f0 f0 f0
	div.s	f1 f0 f0
beq_cont.28624:
	sll	r2 r2 2
	swoc1	f0 r3 r2
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f0
	addi	r0 r2 2
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28633
	addi	r0 r5 0
	j	bfeq_nontail_cont.28634
bfeq_nontail_else.28633:
	addi	r0 r5 1
bfeq_nontail_cont.28634:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28635
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.28636
beq_else.28635:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28637
	addi	r0 r5 0
	j	bfeq_nontail_cont.28638
bfeq_nontail_else.28637:
	addi	r0 r5 1
bfeq_nontail_cont.28638:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28639
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28640
beq_else.28639:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28641
	addi	r0 r5 1
	j	bfle_nontail_cont.28642
bfle_nontail_else.28641:
	addi	r0 r5 0
bfle_nontail_cont.28642:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28643
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28644
beq_else.28643:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
beq_cont.28644:
beq_cont.28640:
	mul.s	f0 f0 f0
	div.s	f1 f0 f0
beq_cont.28636:
	sll	r2 r2 2
	swoc1	f0 r3 r2
beq_cont.28598:
	addi	r0 r1 0
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.28645
	lw	r30 r2 88
	sw	r31 r30 112
	addi	r30 r30 116
	mov	r1 r3
	jal	rotate_quadratic_matrix.2876
	addi	r30 r30 -116
	lw	r30 r31 112
	j	beq_cont.28646
beq_else.28645:
beq_cont.28646:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28590:
	addi	r0 r1 0
	jr	r31
read_object.2881:
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28647
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	read_nth_object.2879
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28648
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28649
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	read_nth_object.2879
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28650
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28651
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	read_nth_object.2879
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28652
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28653
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	read_nth_object.2879
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28654
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28655
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	read_nth_object.2879
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28656
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28657
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	read_nth_object.2879
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28658
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28659
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	read_nth_object.2879
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28660
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28661
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	read_nth_object.2879
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28662
	addi	r0 r1 1
	lw	r30 r2 28
	add	r2 r1 r1
	j	read_object.2881
beq_tail_else.28662:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 28
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28661:
	jr	r31
beq_tail_else.28660:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 24
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28659:
	jr	r31
beq_tail_else.28658:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 20
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28657:
	jr	r31
beq_tail_else.28656:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28655:
	jr	r31
beq_tail_else.28654:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 12
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28653:
	jr	r31
beq_tail_else.28652:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 8
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28651:
	jr	r31
beq_tail_else.28650:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28649:
	jr	r31
beq_tail_else.28648:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28647:
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
	beq	r25 r0 beq_tail_else.28679
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
	beq	r25 r0 beq_else.28680
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
	beq	r25 r0 beq_else.28682
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
	beq	r25 r0 beq_else.28684
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
	beq	r25 r0 beq_else.28686
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
	beq	r25 r0 beq_else.28688
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
	beq	r25 r0 beq_else.28690
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
	beq	r25 r0 beq_else.28692
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
	sll	r2 r2 2
	lw	r30 r3 60
	swo	r3 r1 r2
	j	beq_cont.28693
beq_else.28692:
	addi	r0 r1 1
	lw	r30 r2 56
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28693:
	lw	r30 r2 48
	sll	r2 r2 2
	lw	r30 r3 52
	swo	r3 r1 r2
	j	beq_cont.28691
beq_else.28690:
	addi	r0 r1 1
	lw	r30 r2 48
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28691:
	lw	r30 r2 40
	sll	r2 r2 2
	lw	r30 r3 44
	swo	r3 r1 r2
	j	beq_cont.28689
beq_else.28688:
	addi	r0 r1 1
	lw	r30 r2 40
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28689:
	lw	r30 r2 32
	sll	r2 r2 2
	lw	r30 r3 36
	swo	r3 r1 r2
	j	beq_cont.28687
beq_else.28686:
	addi	r0 r1 1
	lw	r30 r2 32
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28687:
	lw	r30 r2 24
	sll	r2 r2 2
	lw	r30 r3 28
	swo	r3 r1 r2
	j	beq_cont.28685
beq_else.28684:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28685:
	lw	r30 r2 16
	sll	r2 r2 2
	lw	r30 r3 20
	swo	r3 r1 r2
	j	beq_cont.28683
beq_else.28682:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28683:
	lw	r30 r2 8
	sll	r2 r2 2
	lw	r30 r3 12
	swo	r3 r1 r2
	j	beq_cont.28681
beq_else.28680:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28681:
	lw	r30 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	swo	r3 r1 r2
	jr	r31
beq_tail_else.28679:
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
	beq	r25 r0 beq_else.28694
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
	beq	r25 r0 beq_else.28696
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
	beq	r25 r0 beq_else.28698
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
	beq	r25 r0 beq_else.28700
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
	beq	r25 r0 beq_else.28702
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
	beq	r25 r0 beq_else.28704
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
	beq	r25 r0 beq_else.28706
	addi	r0 r2 7
	sw	r1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -64
	lw	r30 r31 60
	lw	r30 r2 52
	sll	r2 r2 2
	lw	r30 r3 56
	swo	r3 r1 r2
	j	beq_cont.28707
beq_else.28706:
	addi	r0 r1 7
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28707:
	lw	r30 r2 44
	sll	r2 r2 2
	lw	r30 r3 48
	swo	r3 r1 r2
	j	beq_cont.28705
beq_else.28704:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28705:
	lw	r30 r2 36
	sll	r2 r2 2
	lw	r30 r3 40
	swo	r3 r1 r2
	j	beq_cont.28703
beq_else.28702:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28703:
	lw	r30 r2 28
	sll	r2 r2 2
	lw	r30 r3 32
	swo	r3 r1 r2
	j	beq_cont.28701
beq_else.28700:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28701:
	lw	r30 r2 20
	sll	r2 r2 2
	lw	r30 r3 24
	swo	r3 r1 r2
	j	beq_cont.28699
beq_else.28698:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28699:
	lw	r30 r2 12
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	j	beq_cont.28697
beq_else.28696:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28697:
	lw	r30 r2 4
	sll	r2 r2 2
	lw	r30 r3 8
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28695
beq_else.28694:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
	mov	r2 r1
beq_cont.28695:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.28708
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
	beq	r25 r0 beq_else.28709
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
	beq	r25 r0 beq_else.28711
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
	beq	r25 r0 beq_else.28713
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
	beq	r25 r0 beq_else.28715
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
	beq	r25 r0 beq_else.28717
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
	beq	r25 r0 beq_else.28719
	addi	r0 r2 6
	sw	r1 r30 112
	sw	r31 r30 116
	addi	r30 r30 120
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -120
	lw	r30 r31 116
	lw	r30 r2 108
	sll	r2 r2 2
	lw	r30 r3 112
	swo	r3 r1 r2
	j	beq_cont.28720
beq_else.28719:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28720:
	lw	r30 r2 100
	sll	r2 r2 2
	lw	r30 r3 104
	swo	r3 r1 r2
	j	beq_cont.28718
beq_else.28717:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28718:
	lw	r30 r2 92
	sll	r2 r2 2
	lw	r30 r3 96
	swo	r3 r1 r2
	j	beq_cont.28716
beq_else.28715:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28716:
	lw	r30 r2 84
	sll	r2 r2 2
	lw	r30 r3 88
	swo	r3 r1 r2
	j	beq_cont.28714
beq_else.28713:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28714:
	lw	r30 r2 76
	sll	r2 r2 2
	lw	r30 r3 80
	swo	r3 r1 r2
	j	beq_cont.28712
beq_else.28711:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28712:
	lw	r30 r2 68
	sll	r2 r2 2
	lw	r30 r3 72
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28710
beq_else.28709:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
	mov	r2 r1
beq_cont.28710:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28721
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
	beq	r25 r0 beq_else.28723
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
	beq	r25 r0 beq_else.28725
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
	beq	r25 r0 beq_else.28727
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
	beq	r25 r0 beq_else.28729
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
	beq	r25 r0 beq_else.28731
	addi	r0 r2 5
	sw	r1 r30 160
	sw	r31 r30 164
	addi	r30 r30 168
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -168
	lw	r30 r31 164
	lw	r30 r2 156
	sll	r2 r2 2
	lw	r30 r3 160
	swo	r3 r1 r2
	j	beq_cont.28732
beq_else.28731:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28732:
	lw	r30 r2 148
	sll	r2 r2 2
	lw	r30 r3 152
	swo	r3 r1 r2
	j	beq_cont.28730
beq_else.28729:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28730:
	lw	r30 r2 140
	sll	r2 r2 2
	lw	r30 r3 144
	swo	r3 r1 r2
	j	beq_cont.28728
beq_else.28727:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28728:
	lw	r30 r2 132
	sll	r2 r2 2
	lw	r30 r3 136
	swo	r3 r1 r2
	j	beq_cont.28726
beq_else.28725:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28726:
	lw	r30 r2 124
	sll	r2 r2 2
	lw	r30 r3 128
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28724
beq_else.28723:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
	mov	r2 r1
beq_cont.28724:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28733
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
	beq	r25 r0 beq_else.28735
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
	beq	r25 r0 beq_else.28737
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
	beq	r25 r0 beq_else.28739
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
	beq	r25 r0 beq_else.28741
	addi	r0 r2 4
	sw	r1 r30 200
	sw	r31 r30 204
	addi	r30 r30 208
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -208
	lw	r30 r31 204
	lw	r30 r2 196
	sll	r2 r2 2
	lw	r30 r3 200
	swo	r3 r1 r2
	j	beq_cont.28742
beq_else.28741:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
beq_cont.28742:
	lw	r30 r2 188
	sll	r2 r2 2
	lw	r30 r3 192
	swo	r3 r1 r2
	j	beq_cont.28740
beq_else.28739:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
beq_cont.28740:
	lw	r30 r2 180
	sll	r2 r2 2
	lw	r30 r3 184
	swo	r3 r1 r2
	j	beq_cont.28738
beq_else.28737:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
beq_cont.28738:
	lw	r30 r2 172
	sll	r2 r2 2
	lw	r30 r3 176
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28736
beq_else.28735:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
	mov	r2 r1
beq_cont.28736:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28743
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
	sll	r2 r2 2
	lw	r30 r3 204
	swo	r3 r1 r2
	j	beq_cont.28744
beq_else.28743:
	addi	r0 r1 1
	lw	r30 r3 168
	add	r3 r1 r1
	sw	r31 r30 208
	addi	r30 r30 212
	jal	min_caml_create_array
	addi	r30 r30 -212
	lw	r30 r31 208
beq_cont.28744:
	lw	r30 r2 120
	sll	r2 r2 2
	lw	r30 r3 164
	swo	r3 r1 r2
	j	beq_cont.28734
beq_else.28733:
	addi	r0 r1 1
	lw	r30 r3 120
	add	r3 r1 r1
	sw	r31 r30 208
	addi	r30 r30 212
	jal	min_caml_create_array
	addi	r30 r30 -212
	lw	r30 r31 208
beq_cont.28734:
	lw	r30 r2 64
	sll	r2 r2 2
	lw	r30 r3 116
	swo	r3 r1 r2
	j	beq_cont.28722
beq_else.28721:
	addi	r0 r1 1
	lw	r30 r3 64
	add	r3 r1 r1
	sw	r31 r30 208
	addi	r30 r30 212
	jal	min_caml_create_array
	addi	r30 r30 -212
	lw	r30 r31 208
beq_cont.28722:
	lw	r30 r2 0
	sll	r2 r2 2
	lw	r30 r3 60
	swo	r3 r1 r2
	jr	r31
beq_tail_else.28708:
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
	beq	r25 r0 beq_else.28745
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
	beq	r25 r0 beq_else.28747
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
	beq	r25 r0 beq_else.28749
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
	beq	r25 r0 beq_else.28751
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
	beq	r25 r0 beq_else.28753
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
	beq	r25 r0 beq_else.28755
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
	beq	r25 r0 beq_else.28757
	addi	r0 r2 7
	sw	r1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -64
	lw	r30 r31 60
	lw	r30 r2 52
	sll	r2 r2 2
	lw	r30 r3 56
	swo	r3 r1 r2
	j	beq_cont.28758
beq_else.28757:
	addi	r0 r1 7
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28758:
	lw	r30 r2 44
	sll	r2 r2 2
	lw	r30 r3 48
	swo	r3 r1 r2
	j	beq_cont.28756
beq_else.28755:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28756:
	lw	r30 r2 36
	sll	r2 r2 2
	lw	r30 r3 40
	swo	r3 r1 r2
	j	beq_cont.28754
beq_else.28753:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28754:
	lw	r30 r2 28
	sll	r2 r2 2
	lw	r30 r3 32
	swo	r3 r1 r2
	j	beq_cont.28752
beq_else.28751:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28752:
	lw	r30 r2 20
	sll	r2 r2 2
	lw	r30 r3 24
	swo	r3 r1 r2
	j	beq_cont.28750
beq_else.28749:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28750:
	lw	r30 r2 12
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	j	beq_cont.28748
beq_else.28747:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28748:
	lw	r30 r2 4
	sll	r2 r2 2
	lw	r30 r3 8
	swo	r3 r1 r2
	j	beq_cont.28746
beq_else.28745:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28746:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28759
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -60
	lw	r30 r3 0
	sll	r3 r4 2
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
	beq	r25 r0 beq_else.28760
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
	beq	r25 r0 beq_else.28762
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
	beq	r25 r0 beq_else.28764
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
	beq	r25 r0 beq_else.28766
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
	beq	r25 r0 beq_else.28768
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
	beq	r25 r0 beq_else.28770
	addi	r0 r2 6
	sw	r1 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -116
	lw	r30 r31 112
	lw	r30 r2 104
	sll	r2 r2 2
	lw	r30 r3 108
	swo	r3 r1 r2
	j	beq_cont.28771
beq_else.28770:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28771:
	lw	r30 r2 96
	sll	r2 r2 2
	lw	r30 r3 100
	swo	r3 r1 r2
	j	beq_cont.28769
beq_else.28768:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28769:
	lw	r30 r2 88
	sll	r2 r2 2
	lw	r30 r3 92
	swo	r3 r1 r2
	j	beq_cont.28767
beq_else.28766:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28767:
	lw	r30 r2 80
	sll	r2 r2 2
	lw	r30 r3 84
	swo	r3 r1 r2
	j	beq_cont.28765
beq_else.28764:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28765:
	lw	r30 r2 72
	sll	r2 r2 2
	lw	r30 r3 76
	swo	r3 r1 r2
	j	beq_cont.28763
beq_else.28762:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28763:
	lw	r30 r2 64
	sll	r2 r2 2
	lw	r30 r3 68
	swo	r3 r1 r2
	j	beq_cont.28761
beq_else.28760:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28761:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28772
	addi	r30 r30 112
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -112
	lw	r30 r3 60
	sll	r3 r4 2
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
	beq	r25 r0 beq_else.28773
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
	beq	r25 r0 beq_else.28775
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
	beq	r25 r0 beq_else.28777
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
	beq	r25 r0 beq_else.28779
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
	beq	r25 r0 beq_else.28781
	addi	r0 r2 5
	sw	r1 r30 152
	sw	r31 r30 156
	addi	r30 r30 160
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -160
	lw	r30 r31 156
	lw	r30 r2 148
	sll	r2 r2 2
	lw	r30 r3 152
	swo	r3 r1 r2
	j	beq_cont.28782
beq_else.28781:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28782:
	lw	r30 r2 140
	sll	r2 r2 2
	lw	r30 r3 144
	swo	r3 r1 r2
	j	beq_cont.28780
beq_else.28779:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28780:
	lw	r30 r2 132
	sll	r2 r2 2
	lw	r30 r3 136
	swo	r3 r1 r2
	j	beq_cont.28778
beq_else.28777:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28778:
	lw	r30 r2 124
	sll	r2 r2 2
	lw	r30 r3 128
	swo	r3 r1 r2
	j	beq_cont.28776
beq_else.28775:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28776:
	lw	r30 r2 116
	sll	r2 r2 2
	lw	r30 r3 120
	swo	r3 r1 r2
	j	beq_cont.28774
beq_else.28773:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28774:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28783
	addi	r30 r30 156
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -156
	lw	r30 r3 112
	sll	r3 r4 2
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
	beq	r25 r0 beq_else.28784
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
	beq	r25 r0 beq_else.28786
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
	beq	r25 r0 beq_else.28788
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
	beq	r25 r0 beq_else.28790
	addi	r0 r2 4
	sw	r1 r30 188
	sw	r31 r30 192
	addi	r30 r30 196
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -196
	lw	r30 r31 192
	lw	r30 r2 184
	sll	r2 r2 2
	lw	r30 r3 188
	swo	r3 r1 r2
	j	beq_cont.28791
beq_else.28790:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28791:
	lw	r30 r2 176
	sll	r2 r2 2
	lw	r30 r3 180
	swo	r3 r1 r2
	j	beq_cont.28789
beq_else.28788:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28789:
	lw	r30 r2 168
	sll	r2 r2 2
	lw	r30 r3 172
	swo	r3 r1 r2
	j	beq_cont.28787
beq_else.28786:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28787:
	lw	r30 r2 160
	sll	r2 r2 2
	lw	r30 r3 164
	swo	r3 r1 r2
	j	beq_cont.28785
beq_else.28784:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28785:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28792
	addi	r30 r30 192
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -192
	lw	r30 r3 156
	sll	r3 r4 2
	swo	r1 r2 r4
	addi	r0 r1 1
	add	r3 r1 r1
	j	read_and_network.2889
beq_tail_else.28792:
	jr	r31
beq_tail_else.28783:
	jr	r31
beq_tail_else.28772:
	jr	r31
beq_tail_else.28759:
	jr	r31
solver_rect.2902:
	addi	r0 r3 0
	addi	r0 r4 1
	addi	r0 r5 2
	sll	r3 r6 2
	lwoc1	r2 r6 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28797
	addi	r0 r6 0
	j	bfeq_nontail_cont.28798
bfeq_nontail_else.28797:
	addi	r0 r6 1
bfeq_nontail_cont.28798:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28799
	addi	r0 r3 0
	j	beq_cont.28800
beq_else.28799:
	lw	r1 r6 16
	lw	r1 r7 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r8 2
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28801
	addi	r0 r8 1
	j	bfle_nontail_cont.28802
bfle_nontail_else.28801:
	addi	r0 r8 0
bfle_nontail_cont.28802:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28803
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28805
	addi	r0 r7 0
	j	beq_cont.28806
beq_else.28805:
	addi	r0 r7 1
beq_cont.28806:
	j	beq_cont.28804
beq_else.28803:
	mov	r7 r8
beq_cont.28804:
	sll	r3 r8 2
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28807
	j	beq_cont.28808
beq_else.28807:
	neg.s	f3 f3
beq_cont.28808:
	sub.s	f3 f0 f3
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	div.s	f3 f4 f3
	sll	r4 r3 2
	lwoc1	r6 r3 f4
	sll	r4 r3 2
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f1 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28809
	addi	r0 r3 1
	j	bfle_nontail_cont.28810
bfle_nontail_else.28809:
	addi	r0 r3 0
bfle_nontail_cont.28810:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28811
	sll	r5 r3 2
	lwoc1	r6 r3 f4
	sll	r5 r3 2
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28813
	addi	r0 r3 1
	j	bfle_nontail_cont.28814
bfle_nontail_else.28813:
	addi	r0 r3 0
bfle_nontail_cont.28814:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28815
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f3 r3 r4
	addi	r0 r3 1
	j	beq_cont.28816
beq_else.28815:
	addi	r0 r3 0
beq_cont.28816:
	j	beq_cont.28812
beq_else.28811:
	addi	r0 r3 0
beq_cont.28812:
beq_cont.28800:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28817
	addi	r0 r1 1
	jr	r31
beq_tail_else.28817:
	addi	r0 r3 1
	addi	r0 r4 2
	addi	r0 r5 0
	sll	r3 r6 2
	lwoc1	r2 r6 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28818
	addi	r0 r6 0
	j	bfeq_nontail_cont.28819
bfeq_nontail_else.28818:
	addi	r0 r6 1
bfeq_nontail_cont.28819:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28820
	addi	r0 r3 0
	j	beq_cont.28821
beq_else.28820:
	lw	r1 r6 16
	lw	r1 r7 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r8 2
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28822
	addi	r0 r8 1
	j	bfle_nontail_cont.28823
bfle_nontail_else.28822:
	addi	r0 r8 0
bfle_nontail_cont.28823:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28824
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28826
	addi	r0 r7 0
	j	beq_cont.28827
beq_else.28826:
	addi	r0 r7 1
beq_cont.28827:
	j	beq_cont.28825
beq_else.28824:
	mov	r7 r8
beq_cont.28825:
	sll	r3 r8 2
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28828
	j	beq_cont.28829
beq_else.28828:
	neg.s	f3 f3
beq_cont.28829:
	sub.s	f3 f1 f3
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	div.s	f3 f4 f3
	sll	r4 r3 2
	lwoc1	r6 r3 f4
	sll	r4 r3 2
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28830
	addi	r0 r3 1
	j	bfle_nontail_cont.28831
bfle_nontail_else.28830:
	addi	r0 r3 0
bfle_nontail_cont.28831:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28832
	sll	r5 r3 2
	lwoc1	r6 r3 f4
	sll	r5 r3 2
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f0 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28834
	addi	r0 r3 1
	j	bfle_nontail_cont.28835
bfle_nontail_else.28834:
	addi	r0 r3 0
bfle_nontail_cont.28835:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28836
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f3 r3 r4
	addi	r0 r3 1
	j	beq_cont.28837
beq_else.28836:
	addi	r0 r3 0
beq_cont.28837:
	j	beq_cont.28833
beq_else.28832:
	addi	r0 r3 0
beq_cont.28833:
beq_cont.28821:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28838
	addi	r0 r1 2
	jr	r31
beq_tail_else.28838:
	addi	r0 r3 2
	addi	r0 r4 0
	addi	r0 r5 1
	sll	r3 r6 2
	lwoc1	r2 r6 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28839
	addi	r0 r6 0
	j	bfeq_nontail_cont.28840
bfeq_nontail_else.28839:
	addi	r0 r6 1
bfeq_nontail_cont.28840:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28841
	addi	r0 r1 0
	j	beq_cont.28842
beq_else.28841:
	lw	r1 r6 16
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r7 2
	lwoc1	r2 r7 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28843
	addi	r0 r7 1
	j	bfle_nontail_cont.28844
bfle_nontail_else.28843:
	addi	r0 r7 0
bfle_nontail_cont.28844:
	addi	r0 r8 0
	sub	r1 r8 r25
	beq	r25 r0 beq_else.28845
	addi	r0 r1 0
	sub	r7 r1 r25
	beq	r25 r0 beq_else.28847
	addi	r0 r1 0
	j	beq_cont.28848
beq_else.28847:
	addi	r0 r1 1
beq_cont.28848:
	j	beq_cont.28846
beq_else.28845:
	mov	r1 r7
beq_cont.28846:
	sll	r3 r7 2
	lwoc1	r6 r7 f3
	addi	r0 r7 0
	sub	r1 r7 r25
	beq	r25 r0 beq_else.28849
	j	beq_cont.28850
beq_else.28849:
	neg.s	f3 f3
beq_cont.28850:
	sub.s	f3 f2 f2
	sll	r3 r1 2
	lwoc1	r2 r1 f3
	div.s	f2 f3 f2
	sll	r4 r1 2
	lwoc1	r6 r1 f3
	sll	r4 r1 2
	lwoc1	r2 r1 f4
	mul.s	f2 f4 f4
	add.s	f4 f0 f0
	abs.s	f0 f0
	sub.s	f3 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28851
	addi	r0 r1 1
	j	bfle_nontail_cont.28852
bfle_nontail_else.28851:
	addi	r0 r1 0
bfle_nontail_cont.28852:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28853
	sll	r5 r1 2
	lwoc1	r6 r1 f0
	sll	r5 r1 2
	lwoc1	r2 r1 f3
	mul.s	f2 f3 f3
	add.s	f3 f1 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28855
	addi	r0 r1 1
	j	bfle_nontail_cont.28856
bfle_nontail_else.28855:
	addi	r0 r1 0
bfle_nontail_cont.28856:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28857
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r1 1
	j	beq_cont.28858
beq_else.28857:
	addi	r0 r1 0
beq_cont.28858:
	j	beq_cont.28854
beq_else.28853:
	addi	r0 r1 0
beq_cont.28854:
beq_cont.28842:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28859
	addi	r0 r1 3
	jr	r31
beq_tail_else.28859:
	addi	r0 r1 0
	jr	r31
solver_second.2927:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f3 f3 f6
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r1 r3 16
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f5 f7
	lw	r1 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28860
	mul.s	f4 f5 f7
	lw	r1 r3 36
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f3 f5
	lw	r1 r3 36
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f5 f7 f5
	add.s	f6 f5 f5
	mul.s	f3 f4 f3
	lw	r1 r3 36
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	mul.s	f3 f4 f3
	add.s	f5 f3 f3
	j	beq_cont.28861
beq_else.28860:
	mov.s	f6 f3
beq_cont.28861:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28862
	addi	r0 r3 0
	j	bfeq_nontail_cont.28863
bfeq_nontail_else.28862:
	addi	r0 r3 1
bfeq_nontail_cont.28863:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28864
	addi	r0 r1 0
	jr	r31
beq_tail_else.28864:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f6
	mul.s	f4 f0 f7
	lw	r1 r2 16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f8
	mul.s	f7 f8 f7
	mul.s	f5 f1 f8
	lw	r1 r2 16
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	add.s	f7 f8 f7
	mul.s	f6 f2 f8
	lw	r1 r2 16
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	add.s	f7 f8 f7
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28865
	mul.s	f6 f1 f8
	mul.s	f5 f2 f9
	add.s	f8 f9 f8
	lw	r1 r2 36
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	mul.s	f4 f2 f9
	mul.s	f6 f0 f6
	add.s	f9 f6 f6
	lw	r1 r2 36
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f9
	mul.s	f6 f9 f6
	add.s	f8 f6 f6
	mul.s	f4 f1 f4
	mul.s	f5 f0 f5
	add.s	f4 f5 f4
	lw	r1 r2 36
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f4 f5 f4
	add.s	f6 f4 f4
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f5
	mul.s	f4 f5 f4
	add.s	f7 f4 f4
	j	beq_cont.28866
beq_else.28865:
	mov.s	f7 f4
beq_cont.28866:
	mul.s	f0 f0 f5
	lw	r1 r2 16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f6
	mul.s	f5 f6 f5
	mul.s	f1 f1 f6
	lw	r1 r2 16
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f2 f6
	lw	r1 r2 16
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28867
	mul.s	f1 f2 f6
	lw	r1 r2 36
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f0 f2
	lw	r1 r2 36
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f6
	mul.s	f2 f6 f2
	add.s	f5 f2 f2
	mul.s	f0 f1 f0
	lw	r1 r2 36
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.28868
beq_else.28867:
	mov.s	f5 f0
beq_cont.28868:
	lw	r1 r2 4
	addi	r0 r3 3
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28869
	j	beq_cont.28870
beq_else.28869:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28870:
	mul.s	f4 f4 f1
	mul.s	f3 f0 f0
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28871
	addi	r0 r2 1
	j	bfle_nontail_cont.28872
bfle_nontail_else.28871:
	addi	r0 r2 0
bfle_nontail_cont.28872:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28873
	swc1	f3 r30 0
	swc1	f4 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_sqrt
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r1 8
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28874
	j	beq_cont.28875
beq_else.28874:
	neg.s	f0 f0
beq_cont.28875:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	lwc1	 r30 f1 4
	sub.s	f0 f1 f0
	lwc1	 r30 f1 0
	div.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.28873:
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
	sll	r1 r1 2
	lwo	r4 r1 r1
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	lw	r1 r4 20
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f1
	sub.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	lw	r1 r4 20
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f2
	sub.s	f1 f2 f1
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	lw	r1 r3 20
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f3
	sub.s	f2 f3 f2
	lw	r1 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28876
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28877
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f3 f3 f6
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r1 r3 16
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f5 f7
	lw	r1 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28878
	mul.s	f4 f5 f7
	lw	r1 r3 36
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f3 f5
	lw	r1 r3 36
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f5 f7 f5
	add.s	f6 f5 f5
	mul.s	f3 f4 f3
	lw	r1 r3 36
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	mul.s	f3 f4 f3
	add.s	f5 f3 f3
	j	beq_cont.28879
beq_else.28878:
	mov.s	f6 f3
beq_cont.28879:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28880
	addi	r0 r3 0
	j	bfeq_nontail_cont.28881
bfeq_nontail_else.28880:
	addi	r0 r3 1
bfeq_nontail_cont.28881:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28882
	addi	r0 r1 0
	jr	r31
beq_tail_else.28882:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f6
	mul.s	f4 f0 f7
	lw	r1 r2 16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f8
	mul.s	f7 f8 f7
	mul.s	f5 f1 f8
	lw	r1 r2 16
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	add.s	f7 f8 f7
	mul.s	f6 f2 f8
	lw	r1 r2 16
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	add.s	f7 f8 f7
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28883
	mul.s	f6 f1 f8
	mul.s	f5 f2 f9
	add.s	f8 f9 f8
	lw	r1 r2 36
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f9
	mul.s	f8 f9 f8
	mul.s	f4 f2 f9
	mul.s	f6 f0 f6
	add.s	f9 f6 f6
	lw	r1 r2 36
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f9
	mul.s	f6 f9 f6
	add.s	f8 f6 f6
	mul.s	f4 f1 f4
	mul.s	f5 f0 f5
	add.s	f4 f5 f4
	lw	r1 r2 36
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f4 f5 f4
	add.s	f6 f4 f4
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f5
	mul.s	f4 f5 f4
	add.s	f7 f4 f4
	j	beq_cont.28884
beq_else.28883:
	mov.s	f7 f4
beq_cont.28884:
	mul.s	f0 f0 f5
	lw	r1 r2 16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f6
	mul.s	f5 f6 f5
	mul.s	f1 f1 f6
	lw	r1 r2 16
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f2 f6
	lw	r1 r2 16
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28885
	mul.s	f1 f2 f6
	lw	r1 r2 36
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f0 f2
	lw	r1 r2 36
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f6
	mul.s	f2 f6 f2
	add.s	f5 f2 f2
	mul.s	f0 f1 f0
	lw	r1 r2 36
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.28886
beq_else.28885:
	mov.s	f5 f0
beq_cont.28886:
	lw	r1 r2 4
	addi	r0 r3 3
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28887
	j	beq_cont.28888
beq_else.28887:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28888:
	mul.s	f4 f4 f1
	mul.s	f3 f0 f0
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28889
	addi	r0 r2 1
	j	bfle_nontail_cont.28890
bfle_nontail_else.28889:
	addi	r0 r2 0
bfle_nontail_cont.28890:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28891
	swc1	f3 r30 0
	swc1	f4 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_sqrt
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r1 8
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28892
	j	beq_cont.28893
beq_else.28892:
	neg.s	f0 f0
beq_cont.28893:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	lwc1	 r30 f1 4
	sub.s	f0 f1 f0
	lwc1	 r30 f1 0
	div.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.28891:
	addi	r0 r1 0
	jr	r31
beq_tail_else.28877:
	lw	r1 r1 16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f4
	mul.s	f3 f4 f3
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28894
	addi	r0 r2 1
	j	bfle_nontail_cont.28895
bfle_nontail_else.28894:
	addi	r0 r2 0
bfle_nontail_cont.28895:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28896
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r1 r4 f4
	mul.s	f4 f0 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	div.s	f0 f3 f0
	sll	r3 r1 2
	swoc1	f0 r2 r1
	addi	r0 r1 1
	jr	r31
beq_tail_else.28896:
	addi	r0 r1 0
	jr	r31
beq_tail_else.28876:
	addi	r0 r3 0
	addi	r0 r4 1
	addi	r0 r5 2
	sll	r3 r6 2
	lwoc1	r2 r6 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28897
	addi	r0 r6 0
	j	bfeq_nontail_cont.28898
bfeq_nontail_else.28897:
	addi	r0 r6 1
bfeq_nontail_cont.28898:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28899
	addi	r0 r3 0
	j	beq_cont.28900
beq_else.28899:
	lw	r1 r6 16
	lw	r1 r7 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r8 2
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28901
	addi	r0 r8 1
	j	bfle_nontail_cont.28902
bfle_nontail_else.28901:
	addi	r0 r8 0
bfle_nontail_cont.28902:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28903
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28905
	addi	r0 r7 0
	j	beq_cont.28906
beq_else.28905:
	addi	r0 r7 1
beq_cont.28906:
	j	beq_cont.28904
beq_else.28903:
	mov	r7 r8
beq_cont.28904:
	sll	r3 r8 2
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28907
	j	beq_cont.28908
beq_else.28907:
	neg.s	f3 f3
beq_cont.28908:
	sub.s	f3 f0 f3
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	div.s	f3 f4 f3
	sll	r4 r3 2
	lwoc1	r6 r3 f4
	sll	r4 r3 2
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f1 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28909
	addi	r0 r3 1
	j	bfle_nontail_cont.28910
bfle_nontail_else.28909:
	addi	r0 r3 0
bfle_nontail_cont.28910:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28911
	sll	r5 r3 2
	lwoc1	r6 r3 f4
	sll	r5 r3 2
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28913
	addi	r0 r3 1
	j	bfle_nontail_cont.28914
bfle_nontail_else.28913:
	addi	r0 r3 0
bfle_nontail_cont.28914:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28915
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f3 r3 r4
	addi	r0 r3 1
	j	beq_cont.28916
beq_else.28915:
	addi	r0 r3 0
beq_cont.28916:
	j	beq_cont.28912
beq_else.28911:
	addi	r0 r3 0
beq_cont.28912:
beq_cont.28900:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28917
	addi	r0 r1 1
	jr	r31
beq_tail_else.28917:
	addi	r0 r3 1
	addi	r0 r4 2
	addi	r0 r5 0
	sll	r3 r6 2
	lwoc1	r2 r6 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28918
	addi	r0 r6 0
	j	bfeq_nontail_cont.28919
bfeq_nontail_else.28918:
	addi	r0 r6 1
bfeq_nontail_cont.28919:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28920
	addi	r0 r3 0
	j	beq_cont.28921
beq_else.28920:
	lw	r1 r6 16
	lw	r1 r7 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r8 2
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28922
	addi	r0 r8 1
	j	bfle_nontail_cont.28923
bfle_nontail_else.28922:
	addi	r0 r8 0
bfle_nontail_cont.28923:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28924
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28926
	addi	r0 r7 0
	j	beq_cont.28927
beq_else.28926:
	addi	r0 r7 1
beq_cont.28927:
	j	beq_cont.28925
beq_else.28924:
	mov	r7 r8
beq_cont.28925:
	sll	r3 r8 2
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28928
	j	beq_cont.28929
beq_else.28928:
	neg.s	f3 f3
beq_cont.28929:
	sub.s	f3 f1 f3
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	div.s	f3 f4 f3
	sll	r4 r3 2
	lwoc1	r6 r3 f4
	sll	r4 r3 2
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28930
	addi	r0 r3 1
	j	bfle_nontail_cont.28931
bfle_nontail_else.28930:
	addi	r0 r3 0
bfle_nontail_cont.28931:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28932
	sll	r5 r3 2
	lwoc1	r6 r3 f4
	sll	r5 r3 2
	lwoc1	r2 r3 f5
	mul.s	f3 f5 f5
	add.s	f5 f0 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28934
	addi	r0 r3 1
	j	bfle_nontail_cont.28935
bfle_nontail_else.28934:
	addi	r0 r3 0
bfle_nontail_cont.28935:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28936
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f3 r3 r4
	addi	r0 r3 1
	j	beq_cont.28937
beq_else.28936:
	addi	r0 r3 0
beq_cont.28937:
	j	beq_cont.28933
beq_else.28932:
	addi	r0 r3 0
beq_cont.28933:
beq_cont.28921:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28938
	addi	r0 r1 2
	jr	r31
beq_tail_else.28938:
	addi	r0 r3 2
	addi	r0 r4 0
	addi	r0 r5 1
	sll	r3 r6 2
	lwoc1	r2 r6 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28939
	addi	r0 r6 0
	j	bfeq_nontail_cont.28940
bfeq_nontail_else.28939:
	addi	r0 r6 1
bfeq_nontail_cont.28940:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28941
	addi	r0 r1 0
	j	beq_cont.28942
beq_else.28941:
	lw	r1 r6 16
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r7 2
	lwoc1	r2 r7 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28943
	addi	r0 r7 1
	j	bfle_nontail_cont.28944
bfle_nontail_else.28943:
	addi	r0 r7 0
bfle_nontail_cont.28944:
	addi	r0 r8 0
	sub	r1 r8 r25
	beq	r25 r0 beq_else.28945
	addi	r0 r1 0
	sub	r7 r1 r25
	beq	r25 r0 beq_else.28947
	addi	r0 r1 0
	j	beq_cont.28948
beq_else.28947:
	addi	r0 r1 1
beq_cont.28948:
	j	beq_cont.28946
beq_else.28945:
	mov	r1 r7
beq_cont.28946:
	sll	r3 r7 2
	lwoc1	r6 r7 f3
	addi	r0 r7 0
	sub	r1 r7 r25
	beq	r25 r0 beq_else.28949
	j	beq_cont.28950
beq_else.28949:
	neg.s	f3 f3
beq_cont.28950:
	sub.s	f3 f2 f2
	sll	r3 r1 2
	lwoc1	r2 r1 f3
	div.s	f2 f3 f2
	sll	r4 r1 2
	lwoc1	r6 r1 f3
	sll	r4 r1 2
	lwoc1	r2 r1 f4
	mul.s	f2 f4 f4
	add.s	f4 f0 f0
	abs.s	f0 f0
	sub.s	f3 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28951
	addi	r0 r1 1
	j	bfle_nontail_cont.28952
bfle_nontail_else.28951:
	addi	r0 r1 0
bfle_nontail_cont.28952:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28953
	sll	r5 r1 2
	lwoc1	r6 r1 f0
	sll	r5 r1 2
	lwoc1	r2 r1 f3
	mul.s	f2 f3 f3
	add.s	f3 f1 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28955
	addi	r0 r1 1
	j	bfle_nontail_cont.28956
bfle_nontail_else.28955:
	addi	r0 r1 0
bfle_nontail_cont.28956:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28957
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r1 1
	j	beq_cont.28958
beq_else.28957:
	addi	r0 r1 0
beq_cont.28958:
	j	beq_cont.28954
beq_else.28953:
	addi	r0 r1 0
beq_cont.28954:
beq_cont.28942:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28959
	addi	r0 r1 3
	jr	r31
beq_tail_else.28959:
	addi	r0 r1 0
	jr	r31
solver_rect_fast.2937:
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f3
	sub.s	f3 f0 f3
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	mul.s	f3 f4 f3
	lw	r1 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f5
	mul.s	f3 f5 f5
	add.s	f5 f1 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28960
	addi	r0 r4 1
	j	bfle_nontail_cont.28961
bfle_nontail_else.28960:
	addi	r0 r4 0
bfle_nontail_cont.28961:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28962
	lw	r1 r4 16
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28964
	addi	r0 r4 1
	j	bfle_nontail_cont.28965
bfle_nontail_else.28964:
	addi	r0 r4 0
bfle_nontail_cont.28965:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28966
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28968
	addi	r0 r4 0
	j	bfeq_nontail_cont.28969
bfeq_nontail_else.28968:
	addi	r0 r4 1
bfeq_nontail_cont.28969:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28970
	addi	r0 r4 0
	j	beq_cont.28971
beq_else.28970:
	addi	r0 r4 1
beq_cont.28971:
	j	beq_cont.28967
beq_else.28966:
	addi	r0 r4 0
beq_cont.28967:
	j	beq_cont.28963
beq_else.28962:
	addi	r0 r4 0
beq_cont.28963:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.28972
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f3 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.28972:
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f3
	sub.s	f3 f1 f3
	addi	r0 r4 3
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	mul.s	f3 f4 f3
	lw	r1 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f5
	mul.s	f3 f5 f5
	add.s	f5 f0 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28973
	addi	r0 r4 1
	j	bfle_nontail_cont.28974
bfle_nontail_else.28973:
	addi	r0 r4 0
bfle_nontail_cont.28974:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28975
	lw	r1 r4 16
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f5
	mul.s	f3 f5 f5
	add.s	f5 f2 f5
	abs.s	f5 f5
	sub.s	f4 f5 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28977
	addi	r0 r4 1
	j	bfle_nontail_cont.28978
bfle_nontail_else.28977:
	addi	r0 r4 0
bfle_nontail_cont.28978:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28979
	addi	r0 r4 3
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28981
	addi	r0 r4 0
	j	bfeq_nontail_cont.28982
bfeq_nontail_else.28981:
	addi	r0 r4 1
bfeq_nontail_cont.28982:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28983
	addi	r0 r4 0
	j	beq_cont.28984
beq_else.28983:
	addi	r0 r4 1
beq_cont.28984:
	j	beq_cont.28980
beq_else.28979:
	addi	r0 r4 0
beq_cont.28980:
	j	beq_cont.28976
beq_else.28975:
	addi	r0 r4 0
beq_cont.28976:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.28985
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f3 r1 r2
	addi	r0 r1 2
	jr	r31
beq_tail_else.28985:
	addi	r0 r4 4
	sll	r4 r4 2
	lwoc1	r3 r4 f3
	sub.s	f3 f2 f2
	addi	r0 r4 5
	sll	r4 r4 2
	lwoc1	r3 r4 f3
	mul.s	f2 f3 f2
	lw	r1 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f4
	mul.s	f2 f4 f4
	add.s	f4 f0 f0
	abs.s	f0 f0
	sub.s	f3 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28986
	addi	r0 r4 1
	j	bfle_nontail_cont.28987
bfle_nontail_else.28986:
	addi	r0 r4 0
bfle_nontail_cont.28987:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28988
	lw	r1 r1 16
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f3
	mul.s	f2 f3 f3
	add.s	f3 f1 f1
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28990
	addi	r0 r1 1
	j	bfle_nontail_cont.28991
bfle_nontail_else.28990:
	addi	r0 r1 0
bfle_nontail_cont.28991:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28992
	addi	r0 r1 5
	sll	r1 r1 2
	lwoc1	r3 r1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28994
	addi	r0 r1 0
	j	bfeq_nontail_cont.28995
bfeq_nontail_else.28994:
	addi	r0 r1 1
bfeq_nontail_cont.28995:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28996
	addi	r0 r1 0
	j	beq_cont.28997
beq_else.28996:
	addi	r0 r1 1
beq_cont.28997:
	j	beq_cont.28993
beq_else.28992:
	addi	r0 r1 0
beq_cont.28993:
	j	beq_cont.28989
beq_else.28988:
	addi	r0 r1 0
beq_cont.28989:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28998
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r1 3
	jr	r31
beq_tail_else.28998:
	addi	r0 r1 0
	jr	r31
solver_second_fast.2950:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28999
	addi	r0 r3 0
	j	bfeq_nontail_cont.29000
bfeq_nontail_else.28999:
	addi	r0 r3 1
bfeq_nontail_cont.29000:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29001
	addi	r0 r1 0
	jr	r31
beq_tail_else.29001:
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	mul.s	f4 f0 f4
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f5 f1 f5
	add.s	f4 f5 f4
	addi	r0 r3 3
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f5 f2 f5
	add.s	f4 f5 f4
	mul.s	f0 f0 f5
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f6
	mul.s	f5 f6 f5
	mul.s	f1 f1 f6
	lw	r1 r3 16
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f2 f6
	lw	r1 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29002
	mul.s	f1 f2 f6
	lw	r1 r3 36
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	add.s	f5 f6 f5
	mul.s	f2 f0 f2
	lw	r1 r3 36
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f6
	mul.s	f2 f6 f2
	add.s	f5 f2 f2
	mul.s	f0 f1 f0
	lw	r1 r3 36
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.29003
beq_else.29002:
	mov.s	f5 f0
beq_cont.29003:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29004
	j	beq_cont.29005
beq_else.29004:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.29005:
	mul.s	f4 f4 f1
	mul.s	f3 f0 f0
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29006
	addi	r0 r3 1
	j	bfle_nontail_cont.29007
bfle_nontail_else.29006:
	addi	r0 r3 0
bfle_nontail_cont.29007:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29008
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29009
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sw	r1 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	swc1	f4 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_sqrt
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	add.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	swoc1	f0 r2 r1
	j	beq_cont.29010
beq_else.29009:
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 0
	sw	r1 r30 16
	sw	r3 r30 20
	sw	r2 r30 8
	swc1	f4 r30 12
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_sqrt
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 20
	sll	r1 r1 2
	lw	r30 r2 16
	swoc1	f0 r2 r1
beq_cont.29010:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29008:
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
	sll	r1 r4 2
	lwo	r3 r4 r3
	lw	r3 r4 40
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f1
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f2
	lw	r2 r5 4
	sll	r1 r1 2
	lwo	r5 r1 r1
	lw	r3 r5 4
	addi	r0 r6 1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.29011
	addi	r0 r2 2
	sub	r5 r2 r25
	beq	r25 r0 beq_tail_else.29012
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.29013
	addi	r0 r2 0
	j	bfeq_nontail_cont.29014
bfeq_nontail_else.29013:
	addi	r0 r2 1
bfeq_nontail_cont.29014:
	addi	r0 r5 0
	sub	r2 r5 r25
	beq	r25 r0 beq_tail_else.29015
	addi	r0 r1 0
	jr	r31
beq_tail_else.29015:
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f4
	mul.s	f4 f0 f0
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r2 3
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r2 3
	sll	r2 r2 2
	lwoc1	r4 r2 f1
	mul.s	f0 f0 f2
	mul.s	f3 f1 f1
	sub.s	f2 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29016
	addi	r0 r2 1
	j	bfle_nontail_cont.29017
bfle_nontail_else.29016:
	addi	r0 r2 0
bfle_nontail_cont.29017:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29018
	lw	r3 r2 24
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29019
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sw	r2 r30 0
	sw	r3 r30 4
	sw	r1 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f1 f0
	jal	min_caml_sqrt
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	add.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	swoc1	f0 r2 r1
	j	beq_cont.29020
beq_else.29019:
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 0
	sw	r2 r30 16
	sw	r3 r30 20
	sw	r1 r30 8
	swc1	f0 r30 12
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	min_caml_sqrt
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 20
	sll	r1 r1 2
	lw	r30 r2 16
	swoc1	f0 r2 r1
beq_cont.29020:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29018:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29012:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29021
	addi	r0 r2 1
	j	bfle_nontail_cont.29022
bfle_nontail_else.29021:
	addi	r0 r2 0
bfle_nontail_cont.29022:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.29023
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r1 3
	sll	r1 r1 2
	lwoc1	r4 r1 f1
	mul.s	f0 f1 f0
	sll	r3 r1 2
	swoc1	f0 r2 r1
	addi	r0 r1 1
	jr	r31
beq_tail_else.29023:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29011:
	lw	r2 r2 0
	mov	r28 r3
	mov	r3 r1
	mov	r1 r28
	j	solver_rect_fast.2937
setup_rect_table.2977:
	addi	r0 r3 6
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.29024
	addi	r0 r2 0
	j	bfeq_nontail_cont.29025
bfeq_nontail_else.29024:
	addi	r0 r2 1
bfeq_nontail_cont.29025:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29026
	addi	r0 r2 1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.29027
beq_else.29026:
	addi	r0 r2 0
	lw	r30 r4 0
	lw	r4 r5 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29028
	addi	r0 r6 1
	j	bfle_nontail_cont.29029
bfle_nontail_else.29028:
	addi	r0 r6 0
bfle_nontail_cont.29029:
	addi	r0 r7 0
	sub	r5 r7 r25
	beq	r25 r0 beq_else.29030
	addi	r0 r5 0
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29032
	addi	r0 r5 0
	j	beq_cont.29033
beq_else.29032:
	addi	r0 r5 1
beq_cont.29033:
	j	beq_cont.29031
beq_else.29030:
	mov	r5 r6
beq_cont.29031:
	lw	r4 r6 16
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r6 r7 f0
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29034
	j	beq_cont.29035
beq_else.29034:
	neg.s	f0 f0
beq_cont.29035:
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f1
	div.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
beq_cont.29027:
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.29036
	addi	r0 r2 0
	j	bfeq_nontail_cont.29037
bfeq_nontail_else.29036:
	addi	r0 r2 1
bfeq_nontail_cont.29037:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29038
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.29039
beq_else.29038:
	addi	r0 r2 2
	lw	r30 r4 0
	lw	r4 r5 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29040
	addi	r0 r6 1
	j	bfle_nontail_cont.29041
bfle_nontail_else.29040:
	addi	r0 r6 0
bfle_nontail_cont.29041:
	addi	r0 r7 0
	sub	r5 r7 r25
	beq	r25 r0 beq_else.29042
	addi	r0 r5 0
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29044
	addi	r0 r5 0
	j	beq_cont.29045
beq_else.29044:
	addi	r0 r5 1
beq_cont.29045:
	j	beq_cont.29043
beq_else.29042:
	mov	r5 r6
beq_cont.29043:
	lw	r4 r6 16
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r6 r7 f0
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29046
	j	beq_cont.29047
beq_else.29046:
	neg.s	f0 f0
beq_cont.29047:
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f1
	div.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
beq_cont.29039:
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.29048
	addi	r0 r2 0
	j	bfeq_nontail_cont.29049
bfeq_nontail_else.29048:
	addi	r0 r2 1
bfeq_nontail_cont.29049:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29050
	addi	r0 r2 5
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.29051
beq_else.29050:
	addi	r0 r2 4
	lw	r30 r4 0
	lw	r4 r5 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29052
	addi	r0 r6 1
	j	bfle_nontail_cont.29053
bfle_nontail_else.29052:
	addi	r0 r6 0
bfle_nontail_cont.29053:
	addi	r0 r7 0
	sub	r5 r7 r25
	beq	r25 r0 beq_else.29054
	addi	r0 r5 0
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29056
	addi	r0 r5 0
	j	beq_cont.29057
beq_else.29056:
	addi	r0 r5 1
beq_cont.29057:
	j	beq_cont.29055
beq_else.29054:
	mov	r5 r6
beq_cont.29055:
	lw	r4 r4 16
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	addi	r0 r4 0
	sub	r5 r4 r25
	beq	r25 r0 beq_else.29058
	j	beq_cont.29059
beq_else.29058:
	neg.s	f0 f0
beq_cont.29059:
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 5
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	div.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
beq_cont.29051:
	jr	r31
setup_surface_table.2980:
	addi	r0 r3 4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	lw	r30 r2 0
	lw	r2 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	lw	r2 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	lw	r2 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29060
	addi	r0 r3 1
	j	bfle_nontail_cont.29061
bfle_nontail_else.29060:
	addi	r0 r3 0
bfle_nontail_cont.29061:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29062
	addi	r0 r3 0
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 1
	lw	r2 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f1
	div.s	f1 f0 f1
	neg.s	f1 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 2
	lw	r2 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f1
	div.s	f1 f0 f1
	neg.s	f1 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 3
	lw	r2 r2 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	div.s	f1 f0 f0
	neg.s	f0 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.29063
beq_else.29062:
	addi	r0 r2 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
beq_cont.29063:
	jr	r31
setup_second_table.2983:
	addi	r0 r3 5
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	mul.s	f0 f0 f3
	lw	r30 r2 0
	lw	r2 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	mul.s	f3 f4 f3
	mul.s	f1 f1 f4
	lw	r2 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f2 f4
	lw	r2 r4 16
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	lw	r2 r4 12
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29064
	mul.s	f1 f2 f4
	lw	r2 r4 36
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f0 f2
	lw	r2 r4 36
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	mul.s	f2 f4 f2
	add.s	f3 f2 f2
	mul.s	f0 f1 f0
	lw	r2 r4 36
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.29065
beq_else.29064:
	mov.s	f3 f0
beq_cont.29065:
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	lw	r2 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f2
	mul.s	f1 f2 f1
	neg.s	f1 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	lw	r2 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	mul.s	f2 f3 f2
	neg.s	f2 f2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f3
	lw	r2 r4 16
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	mul.s	f3 f4 f3
	neg.s	f3 f3
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	lw	r2 r4 12
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29066
	addi	r0 r4 1
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r3 r5 f4
	lw	r2 r5 36
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f5
	lw	r2 r5 36
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r5 r6 f6
	mul.s	f5 f6 f5
	add.s	f4 f5 f4
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f5
	mul.s	f4 f5 f4
	sub.s	f1 f4 f1
	sll	r4 r4 2
	swoc1	f1 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r3 r5 f1
	lw	r2 r5 36
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r5 r6 f4
	mul.s	f1 f4 f1
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f4
	lw	r2 r5 36
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	add.s	f1 f4 f1
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	mul.s	f1 f4 f1
	sub.s	f2 f1 f1
	sll	r4 r4 2
	swoc1	f1 r1 r4
	addi	r0 r4 3
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f1
	lw	r2 r5 36
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r5 r6 f2
	mul.s	f1 f2 f1
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	lw	r2 r2 36
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	mul.s	f2 f4 f2
	add.s	f1 f2 f1
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f2
	mul.s	f1 f2 f1
	sub.s	f3 f1 f1
	sll	r4 r2 2
	swoc1	f1 r1 r2
	j	beq_cont.29067
beq_else.29066:
	addi	r0 r2 1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r2 3
	sll	r2 r2 2
	swoc1	f3 r1 r2
beq_cont.29067:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.29068
	addi	r0 r2 0
	j	bfeq_nontail_cont.29069
bfeq_nontail_else.29068:
	addi	r0 r2 1
bfeq_nontail_cont.29069:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29070
	j	beq_cont.29071
beq_else.29070:
	addi	r0 r2 4
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
beq_cont.29071:
	jr	r31
iter_setup_dirvec_constants.2986:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.29072
	jr	r31
ble_tail_else.29072:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r2 r4 2
	lwo	r3 r4 r3
	lw	r1 r4 4
	lw	r1 r5 0
	lw	r3 r6 4
	addi	r0 r7 1
	sw	r1 r30 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29074
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29076
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
	sll	r2 r3 2
	lw	r30 r4 4
	swo	r1 r4 r3
	j	beq_cont.29077
beq_else.29076:
	addi	r0 r6 4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r2 r2 2
	lw	r30 r3 16
	lwoc1	r3 r2 f0
	lw	r30 r2 12
	lw	r2 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	lw	r2 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	lw	r2 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29078
	addi	r0 r3 1
	j	bfle_nontail_cont.29079
bfle_nontail_else.29078:
	addi	r0 r3 0
bfle_nontail_cont.29079:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29080
	addi	r0 r3 0
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 1
	lw	r2 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f1
	div.s	f1 f0 f1
	neg.s	f1 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 2
	lw	r2 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f1
	div.s	f1 f0 f1
	neg.s	f1 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 3
	lw	r2 r2 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	div.s	f1 f0 f0
	neg.s	f0 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.29081
beq_else.29080:
	addi	r0 r2 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
beq_cont.29081:
	lw	r30 r2 8
	sll	r2 r3 2
	lw	r30 r4 4
	swo	r1 r4 r3
beq_cont.29077:
	j	beq_cont.29075
beq_else.29074:
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
	sll	r2 r3 2
	lw	r30 r4 4
	swo	r1 r4 r3
beq_cont.29075:
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.29082
	jr	r31
ble_tail_else.29082:
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r3 2
	lwo	r2 r3 r2
	lw	r30 r3 0
	lw	r3 r4 4
	lw	r3 r5 0
	lw	r2 r6 4
	addi	r0 r7 1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29084
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29086
	sw	r4 r30 20
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r5
	jal	setup_second_table.2983
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 24
	sll	r2 r3 2
	lw	r30 r4 20
	swo	r1 r4 r3
	j	beq_cont.29087
beq_else.29086:
	sw	r4 r30 20
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r5
	jal	setup_surface_table.2980
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 24
	sll	r2 r3 2
	lw	r30 r4 20
	swo	r1 r4 r3
beq_cont.29087:
	j	beq_cont.29085
beq_else.29084:
	sw	r4 r30 20
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r5
	jal	setup_rect_table.2977
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 24
	sll	r2 r3 2
	lw	r30 r4 20
	swo	r1 r4 r3
beq_cont.29085:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 0
	j	iter_setup_dirvec_constants.2986
setup_startp_constants.2991:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.29088
	jr	r31
ble_tail_else.29088:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r2 r4 2
	lwo	r3 r4 r3
	lw	r3 r4 40
	lw	r3 r5 4
	addi	r0 r6 0
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r1 r7 f0
	lw	r3 r7 20
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	sll	r6 r6 2
	swoc1	f0 r4 r6
	addi	r0 r6 1
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r1 r7 f0
	lw	r3 r7 20
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	sll	r6 r6 2
	swoc1	f0 r4 r6
	addi	r0 r6 2
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r1 r7 f0
	lw	r3 r7 20
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	sll	r6 r6 2
	swoc1	f0 r4 r6
	addi	r0 r6 2
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29090
	addi	r0 r6 2
	sub	r5 r6 r25
	blez	r25 ble_nontail_else.29092
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r4 r6 f1
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	mul.s	f0 f0 f3
	lw	r3 r6 16
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r6 r7 f4
	mul.s	f3 f4 f3
	mul.s	f1 f1 f4
	lw	r3 r6 16
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r6 r7 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f2 f4
	lw	r3 r6 16
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r6 r7 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	lw	r3 r6 12
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29094
	mul.s	f1 f2 f4
	lw	r3 r6 36
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r6 r7 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f0 f2
	lw	r3 r6 36
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r6 r7 f4
	mul.s	f2 f4 f2
	add.s	f3 f2 f2
	mul.s	f0 f1 f0
	lw	r3 r3 36
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.29095
beq_else.29094:
	mov.s	f3 f0
beq_cont.29095:
	addi	r0 r3 3
	addi	r0 r6 3
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29096
	j	beq_cont.29097
beq_else.29096:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.29097:
	sll	r3 r3 2
	swoc1	f0 r4 r3
	j	ble_nontail_cont.29093
ble_nontail_else.29092:
ble_nontail_cont.29093:
	j	beq_cont.29091
beq_else.29090:
	addi	r0 r5 3
	lw	r3 r3 16
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r4 r6 f1
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r3 r6 f3
	mul.s	f3 f0 f0
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r3 r6 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r3 2
	swoc1	f0 r4 r3
beq_cont.29091:
	addi	r0 r3 1
	sub	r2 r3 r2
	j	setup_startp_constants.2991
is_outside.3011:
	lw	r1 r2 20
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	sub.s	f0 f3 f0
	lw	r1 r2 20
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	sub.s	f1 f3 f1
	lw	r1 r2 20
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	sub.s	f2 f3 f2
	lw	r1 r2 4
	addi	r0 r3 1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.29098
	addi	r0 r3 2
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.29099
	mul.s	f0 f0 f3
	lw	r1 r2 16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	mul.s	f3 f4 f3
	mul.s	f1 f1 f4
	lw	r1 r2 16
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f2 f4
	lw	r1 r2 16
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29100
	mul.s	f1 f2 f4
	lw	r1 r2 36
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f2 f0 f2
	lw	r1 r2 36
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	mul.s	f2 f4 f2
	add.s	f3 f2 f2
	mul.s	f0 f1 f0
	lw	r1 r2 36
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	add.s	f2 f0 f0
	j	beq_cont.29101
beq_else.29100:
	mov.s	f3 f0
beq_cont.29101:
	lw	r1 r2 4
	addi	r0 r3 3
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29102
	j	beq_cont.29103
beq_else.29102:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.29103:
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29104
	addi	r0 r2 1
	j	bfle_nontail_cont.29105
bfle_nontail_else.29104:
	addi	r0 r2 0
bfle_nontail_cont.29105:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29106
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_else.29108
	addi	r0 r1 0
	j	beq_cont.29109
beq_else.29108:
	addi	r0 r1 1
beq_cont.29109:
	j	beq_cont.29107
beq_else.29106:
	mov	r1 r2
beq_cont.29107:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29110
	addi	r0 r1 0
	jr	r31
beq_tail_else.29110:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29099:
	lw	r1 r2 16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	mul.s	f3 f0 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29111
	addi	r0 r2 1
	j	bfle_nontail_cont.29112
bfle_nontail_else.29111:
	addi	r0 r2 0
bfle_nontail_cont.29112:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29113
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_else.29115
	addi	r0 r1 0
	j	beq_cont.29116
beq_else.29115:
	addi	r0 r1 1
beq_cont.29116:
	j	beq_cont.29114
beq_else.29113:
	mov	r1 r2
beq_cont.29114:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29117
	addi	r0 r1 0
	jr	r31
beq_tail_else.29117:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29098:
	lw	r1 r2 16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	abs.s	f0 f0
	sub.s	f3 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29118
	addi	r0 r2 1
	j	bfle_nontail_cont.29119
bfle_nontail_else.29118:
	addi	r0 r2 0
bfle_nontail_cont.29119:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29120
	lw	r1 r2 16
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	abs.s	f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29122
	addi	r0 r2 1
	j	bfle_nontail_cont.29123
bfle_nontail_else.29122:
	addi	r0 r2 0
bfle_nontail_cont.29123:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29124
	lw	r1 r2 16
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	abs.s	f2 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29126
	addi	r0 r2 1
	j	bfle_nontail_cont.29127
bfle_nontail_else.29126:
	addi	r0 r2 0
bfle_nontail_cont.29127:
	j	beq_cont.29125
beq_else.29124:
	addi	r0 r2 0
beq_cont.29125:
	j	beq_cont.29121
beq_else.29120:
	addi	r0 r2 0
beq_cont.29121:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.29128
	lw	r1 r1 24
	jr	r31
beq_tail_else.29128:
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29129
	addi	r0 r1 0
	jr	r31
beq_tail_else.29129:
	addi	r0 r1 1
	jr	r31
check_all_inside.3016:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29130
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r3 r3 2
	lwo	r4 r3 r3
	lw	r3 r4 20
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	sub.s	f0 f3 f3
	lw	r3 r4 20
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	sub.s	f1 f4 f4
	lw	r3 r4 20
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f5
	sub.s	f2 f5 f5
	lw	r3 r4 4
	addi	r0 r5 1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29131
	addi	r0 r5 2
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29133
	mul.s	f3 f3 f6
	lw	r3 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f7
	mul.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r3 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f5 f7
	lw	r3 r4 16
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r3 r4 12
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29135
	mul.s	f4 f5 f7
	lw	r3 r4 36
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f5 f3 f5
	lw	r3 r4 36
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f7
	mul.s	f5 f7 f5
	add.s	f6 f5 f5
	mul.s	f3 f4 f3
	lw	r3 r4 36
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	mul.s	f3 f4 f3
	add.s	f5 f3 f3
	j	beq_cont.29136
beq_else.29135:
	mov.s	f6 f3
beq_cont.29136:
	lw	r3 r4 4
	addi	r0 r5 3
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29137
	j	beq_cont.29138
beq_else.29137:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f3
beq_cont.29138:
	lw	r3 r3 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f4 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29139
	addi	r0 r4 1
	j	bfle_nontail_cont.29140
bfle_nontail_else.29139:
	addi	r0 r4 0
bfle_nontail_cont.29140:
	addi	r0 r5 0
	sub	r3 r5 r25
	beq	r25 r0 beq_else.29141
	addi	r0 r3 0
	sub	r4 r3 r25
	beq	r25 r0 beq_else.29143
	addi	r0 r3 0
	j	beq_cont.29144
beq_else.29143:
	addi	r0 r3 1
beq_cont.29144:
	j	beq_cont.29142
beq_else.29141:
	mov	r3 r4
beq_cont.29142:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29145
	addi	r0 r3 0
	j	beq_cont.29146
beq_else.29145:
	addi	r0 r3 1
beq_cont.29146:
	j	beq_cont.29134
beq_else.29133:
	lw	r3 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f6
	mul.s	f6 f3 f3
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f6
	mul.s	f6 f4 f4
	add.s	f3 f4 f3
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	lw	r3 r3 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f4 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29147
	addi	r0 r4 1
	j	bfle_nontail_cont.29148
bfle_nontail_else.29147:
	addi	r0 r4 0
bfle_nontail_cont.29148:
	addi	r0 r5 0
	sub	r3 r5 r25
	beq	r25 r0 beq_else.29149
	addi	r0 r3 0
	sub	r4 r3 r25
	beq	r25 r0 beq_else.29151
	addi	r0 r3 0
	j	beq_cont.29152
beq_else.29151:
	addi	r0 r3 1
beq_cont.29152:
	j	beq_cont.29150
beq_else.29149:
	mov	r3 r4
beq_cont.29150:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29153
	addi	r0 r3 0
	j	beq_cont.29154
beq_else.29153:
	addi	r0 r3 1
beq_cont.29154:
beq_cont.29134:
	j	beq_cont.29132
beq_else.29131:
	lw	r3 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f6
	abs.s	f3 f3
	sub.s	f6 f3 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f6
	sub.s	f3 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29155
	addi	r0 r4 1
	j	bfle_nontail_cont.29156
bfle_nontail_else.29155:
	addi	r0 r4 0
bfle_nontail_cont.29156:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29157
	lw	r3 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	abs.s	f4 f4
	sub.s	f3 f4 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29159
	addi	r0 r4 1
	j	bfle_nontail_cont.29160
bfle_nontail_else.29159:
	addi	r0 r4 0
bfle_nontail_cont.29160:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29161
	lw	r3 r4 16
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	abs.s	f5 f4
	sub.s	f3 f4 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29163
	addi	r0 r4 1
	j	bfle_nontail_cont.29164
bfle_nontail_else.29163:
	addi	r0 r4 0
bfle_nontail_cont.29164:
	j	beq_cont.29162
beq_else.29161:
	addi	r0 r4 0
beq_cont.29162:
	j	beq_cont.29158
beq_else.29157:
	addi	r0 r4 0
beq_cont.29158:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29165
	lw	r3 r3 24
	j	beq_cont.29166
beq_else.29165:
	lw	r3 r3 24
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29167
	addi	r0 r3 0
	j	beq_cont.29168
beq_else.29167:
	addi	r0 r3 1
beq_cont.29168:
beq_cont.29166:
beq_cont.29132:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29169
	addi	r0 r1 0
	jr	r31
beq_tail_else.29169:
	addi	r0 r3 1
	add	r1 r3 r1
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29170
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r3 r3 2
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
	beq	r25 r0 beq_tail_else.29171
	addi	r0 r1 0
	jr	r31
beq_tail_else.29171:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 12
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29172
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r2 r2 2
	lwo	r4 r2 r2
	lw	r2 r4 20
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lw	r2 r4 20
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f2
	lwc1	 r30 f3 4
	sub.s	f3 f2 f2
	lw	r2 r4 20
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	lwc1	 r30 f5 0
	sub.s	f5 f4 f4
	lw	r2 r4 4
	addi	r0 r5 1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29173
	addi	r0 r5 2
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29175
	mul.s	f0 f0 f6
	lw	r2 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f7
	mul.s	f6 f7 f6
	mul.s	f2 f2 f7
	lw	r2 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r2 r4 16
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r2 r4 12
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29177
	mul.s	f2 f4 f7
	lw	r2 r4 36
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f0 f4
	lw	r2 r4 36
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f7
	mul.s	f4 f7 f4
	add.s	f6 f4 f4
	mul.s	f0 f2 f0
	lw	r2 r4 36
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f2
	mul.s	f0 f2 f0
	add.s	f4 f0 f0
	j	beq_cont.29178
beq_else.29177:
	mov.s	f6 f0
beq_cont.29178:
	lw	r2 r4 4
	addi	r0 r5 3
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29179
	j	beq_cont.29180
beq_else.29179:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29180:
	lw	r2 r2 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29181
	addi	r0 r4 1
	j	bfle_nontail_cont.29182
bfle_nontail_else.29181:
	addi	r0 r4 0
bfle_nontail_cont.29182:
	addi	r0 r5 0
	sub	r2 r5 r25
	beq	r25 r0 beq_else.29183
	addi	r0 r2 0
	sub	r4 r2 r25
	beq	r25 r0 beq_else.29185
	addi	r0 r2 0
	j	beq_cont.29186
beq_else.29185:
	addi	r0 r2 1
beq_cont.29186:
	j	beq_cont.29184
beq_else.29183:
	mov	r2 r4
beq_cont.29184:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29187
	addi	r0 r2 0
	j	beq_cont.29188
beq_else.29187:
	addi	r0 r2 1
beq_cont.29188:
	j	beq_cont.29176
beq_else.29175:
	lw	r2 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f6
	mul.s	f6 f0 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f6
	mul.s	f6 f2 f2
	add.s	f0 f2 f0
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f2
	mul.s	f2 f4 f2
	add.s	f0 f2 f0
	lw	r2 r2 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29189
	addi	r0 r4 1
	j	bfle_nontail_cont.29190
bfle_nontail_else.29189:
	addi	r0 r4 0
bfle_nontail_cont.29190:
	addi	r0 r5 0
	sub	r2 r5 r25
	beq	r25 r0 beq_else.29191
	addi	r0 r2 0
	sub	r4 r2 r25
	beq	r25 r0 beq_else.29193
	addi	r0 r2 0
	j	beq_cont.29194
beq_else.29193:
	addi	r0 r2 1
beq_cont.29194:
	j	beq_cont.29192
beq_else.29191:
	mov	r2 r4
beq_cont.29192:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29195
	addi	r0 r2 0
	j	beq_cont.29196
beq_else.29195:
	addi	r0 r2 1
beq_cont.29196:
beq_cont.29176:
	j	beq_cont.29174
beq_else.29173:
	lw	r2 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f6
	abs.s	f0 f0
	sub.s	f6 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f6
	sub.s	f0 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29197
	addi	r0 r4 1
	j	bfle_nontail_cont.29198
bfle_nontail_else.29197:
	addi	r0 r4 0
bfle_nontail_cont.29198:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29199
	lw	r2 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	abs.s	f2 f2
	sub.s	f0 f2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29201
	addi	r0 r4 1
	j	bfle_nontail_cont.29202
bfle_nontail_else.29201:
	addi	r0 r4 0
bfle_nontail_cont.29202:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29203
	lw	r2 r4 16
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	abs.s	f4 f2
	sub.s	f0 f2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29205
	addi	r0 r4 1
	j	bfle_nontail_cont.29206
bfle_nontail_else.29205:
	addi	r0 r4 0
bfle_nontail_cont.29206:
	j	beq_cont.29204
beq_else.29203:
	addi	r0 r4 0
beq_cont.29204:
	j	beq_cont.29200
beq_else.29199:
	addi	r0 r4 0
beq_cont.29200:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29207
	lw	r2 r2 24
	j	beq_cont.29208
beq_else.29207:
	lw	r2 r2 24
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29209
	addi	r0 r2 0
	j	beq_cont.29210
beq_else.29209:
	addi	r0 r2 1
beq_cont.29210:
beq_cont.29208:
beq_cont.29174:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29211
	addi	r0 r1 0
	jr	r31
beq_tail_else.29211:
	addi	r0 r2 1
	add	r1 r2 r1
	sll	r1 r2 2
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29212
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r2 r2 2
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
	beq	r25 r0 beq_tail_else.29213
	addi	r0 r1 0
	jr	r31
beq_tail_else.29213:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r1
	lwc1	 r30 f0 8
	lwc1	 r30 f1 4
	lwc1	 r30 f2 0
	lw	r30 r2 12
	j	check_all_inside.3016
beq_tail_else.29212:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29172:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29170:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29130:
	addi	r0 r1 1
	jr	r31
shadow_check_and_group.3022:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29214
	sll	r1 r3 2
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
	sll	r3 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r5 r7 f0
	lw	r6 r7 20
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r5 r7 f1
	lw	r6 r7 20
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r7 r8 f2
	sub.s	f1 f2 f1
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r5 r7 f2
	lw	r6 r5 20
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r5 r7 f3
	sub.s	f2 f3 f2
	lw	r4 r5 4
	sll	r3 r7 2
	lwo	r5 r7 r5
	lw	r6 r7 4
	addi	r0 r8 1
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	sub	r7 r8 r25
	beq	r25 r0 beq_else.29215
	addi	r0 r4 2
	sub	r7 r4 r25
	beq	r25 r0 beq_else.29217
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r5
	mov	r1 r6
	jal	solver_second_fast.2950
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.29218
beq_else.29217:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r5 r4 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29219
	addi	r0 r4 1
	j	bfle_nontail_cont.29220
bfle_nontail_else.29219:
	addi	r0 r4 0
bfle_nontail_cont.29220:
	addi	r0 r6 0
	sub	r4 r6 r25
	beq	r25 r0 beq_else.29221
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
	sll	r7 r7 2
	lwoc1	r5 r7 f3
	mul.s	f3 f0 f0
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r5 r7 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r7 3
	sll	r7 r7 2
	lwoc1	r5 r7 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r6 r5 2
	swoc1	f0 r4 r5
	addi	r0 r1 1
	j	beq_cont.29222
beq_else.29221:
	addi	r0 r1 0
beq_cont.29222:
beq_cont.29218:
	j	beq_cont.29216
beq_else.29215:
	lw	r4 r4 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r3 r5
	mov	r2 r4
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29216:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29223
	lui	r24 48716
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f1 f0 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29225
	addi	r0 r1 1
	j	bfle_nontail_cont.29226
bfle_nontail_else.29225:
	addi	r0 r1 0
bfle_nontail_cont.29226:
	j	beq_cont.29224
beq_else.29223:
	addi	r0 r1 0
beq_cont.29224:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29227
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29228
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29230
	addi	r0 r1 0
	j	beq_cont.29231
beq_else.29230:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29232
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
	lwo	r3 r1 r1
	lw	r1 r3 20
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	lwc1	 r30 f1 20
	sub.s	f1 f0 f0
	lw	r1 r3 20
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	lwc1	 r30 f3 16
	sub.s	f3 f2 f2
	lw	r1 r3 20
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	lwc1	 r30 f5 12
	sub.s	f5 f4 f4
	lw	r1 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29234
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29236
	mul.s	f0 f0 f6
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	mul.s	f2 f2 f7
	lw	r1 r3 16
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r1 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29238
	mul.s	f2 f4 f7
	lw	r1 r3 36
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f0 f4
	lw	r1 r3 36
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f4 f7 f4
	add.s	f6 f4 f4
	mul.s	f0 f2 f0
	lw	r1 r3 36
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mul.s	f0 f2 f0
	add.s	f4 f0 f0
	j	beq_cont.29239
beq_else.29238:
	mov.s	f6 f0
beq_cont.29239:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29240
	j	beq_cont.29241
beq_else.29240:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29241:
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29242
	addi	r0 r3 1
	j	bfle_nontail_cont.29243
bfle_nontail_else.29242:
	addi	r0 r3 0
bfle_nontail_cont.29243:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29244
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29246
	addi	r0 r1 0
	j	beq_cont.29247
beq_else.29246:
	addi	r0 r1 1
beq_cont.29247:
	j	beq_cont.29245
beq_else.29244:
	mov	r1 r3
beq_cont.29245:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29248
	addi	r0 r1 0
	j	beq_cont.29249
beq_else.29248:
	addi	r0 r1 1
beq_cont.29249:
	j	beq_cont.29237
beq_else.29236:
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f6
	mul.s	f6 f0 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f6
	mul.s	f6 f2 f2
	add.s	f0 f2 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mul.s	f2 f4 f2
	add.s	f0 f2 f0
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29250
	addi	r0 r3 1
	j	bfle_nontail_cont.29251
bfle_nontail_else.29250:
	addi	r0 r3 0
bfle_nontail_cont.29251:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29252
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29254
	addi	r0 r1 0
	j	beq_cont.29255
beq_else.29254:
	addi	r0 r1 1
beq_cont.29255:
	j	beq_cont.29253
beq_else.29252:
	mov	r1 r3
beq_cont.29253:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29256
	addi	r0 r1 0
	j	beq_cont.29257
beq_else.29256:
	addi	r0 r1 1
beq_cont.29257:
beq_cont.29237:
	j	beq_cont.29235
beq_else.29234:
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f6
	abs.s	f0 f0
	sub.s	f6 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f6
	sub.s	f0 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29258
	addi	r0 r3 1
	j	bfle_nontail_cont.29259
bfle_nontail_else.29258:
	addi	r0 r3 0
bfle_nontail_cont.29259:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29260
	lw	r1 r3 16
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	abs.s	f2 f2
	sub.s	f0 f2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29262
	addi	r0 r3 1
	j	bfle_nontail_cont.29263
bfle_nontail_else.29262:
	addi	r0 r3 0
bfle_nontail_cont.29263:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29264
	lw	r1 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	abs.s	f4 f2
	sub.s	f0 f2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29266
	addi	r0 r3 1
	j	bfle_nontail_cont.29267
bfle_nontail_else.29266:
	addi	r0 r3 0
bfle_nontail_cont.29267:
	j	beq_cont.29265
beq_else.29264:
	addi	r0 r3 0
beq_cont.29265:
	j	beq_cont.29261
beq_else.29260:
	addi	r0 r3 0
beq_cont.29261:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29268
	lw	r1 r1 24
	j	beq_cont.29269
beq_else.29268:
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29270
	addi	r0 r1 0
	j	beq_cont.29271
beq_else.29270:
	addi	r0 r1 1
beq_cont.29271:
beq_cont.29269:
beq_cont.29235:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29272
	addi	r0 r1 0
	j	beq_cont.29273
beq_else.29272:
	addi	r0 r1 2
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29274
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29276
	addi	r0 r1 0
	j	beq_cont.29277
beq_else.29276:
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
beq_cont.29277:
	j	beq_cont.29275
beq_else.29274:
	addi	r0 r1 1
beq_cont.29275:
beq_cont.29273:
	j	beq_cont.29233
beq_else.29232:
	addi	r0 r1 1
beq_cont.29233:
beq_cont.29231:
	j	beq_cont.29229
beq_else.29228:
	addi	r0 r1 1
beq_cont.29229:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29278
	addi	r0 r1 1
	jr	r31
beq_tail_else.29278:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_and_group.3022
beq_tail_else.29227:
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	lw	r30 r2 8
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29279
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_and_group.3022
beq_tail_else.29279:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29214:
	addi	r0 r1 0
	jr	r31
shadow_check_one_or_group.3025:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29280
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r3 r3 2
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
	beq	r25 r0 beq_tail_else.29281
	addi	r0 r1 1
	jr	r31
beq_tail_else.29281:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29282
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	sll	r2 r2 2
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
	beq	r25 r0 beq_tail_else.29283
	addi	r0 r1 1
	jr	r31
beq_tail_else.29283:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29284
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r2 r2 2
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
	beq	r25 r0 beq_tail_else.29285
	addi	r0 r1 1
	jr	r31
beq_tail_else.29285:
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29286
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r2 r2 2
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
	beq	r25 r0 beq_tail_else.29287
	addi	r0 r1 1
	jr	r31
beq_tail_else.29287:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29288
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r2 r2 2
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
	beq	r25 r0 beq_tail_else.29289
	addi	r0 r1 1
	jr	r31
beq_tail_else.29289:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29290
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r2 r2 2
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
	beq	r25 r0 beq_tail_else.29291
	addi	r0 r1 1
	jr	r31
beq_tail_else.29291:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29292
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r2 r2 2
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
	beq	r25 r0 beq_tail_else.29293
	addi	r0 r1 1
	jr	r31
beq_tail_else.29293:
	addi	r0 r1 1
	lw	r30 r2 28
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29294
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r2 r2 2
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
	beq	r25 r0 beq_tail_else.29295
	addi	r0 r1 1
	jr	r31
beq_tail_else.29295:
	addi	r0 r1 1
	lw	r30 r2 32
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_one_or_group.3025
beq_tail_else.29294:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29292:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29290:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29288:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29286:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29284:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29282:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29280:
	addi	r0 r1 0
	jr	r31
shadow_check_one_or_matrix.3028:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29296
	addi	r0 r5 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29297
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
	sll	r4 r8 2
	lwo	r7 r8 r7
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r6 r8 f0
	lw	r7 r8 20
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r8 r9 f1
	sub.s	f0 f1 f0
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r6 r8 f1
	lw	r7 r8 20
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r8 r9 f2
	sub.s	f1 f2 f1
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r6 r8 f2
	lw	r7 r6 20
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r6 r8 f3
	sub.s	f2 f3 f2
	lw	r5 r6 4
	sll	r4 r4 2
	lwo	r6 r4 r4
	lw	r7 r6 4
	addi	r0 r8 1
	sub	r6 r8 r25
	beq	r25 r0 beq_else.29299
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29301
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.29302
beq_else.29301:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29303
	addi	r0 r5 1
	j	bfle_nontail_cont.29304
bfle_nontail_else.29303:
	addi	r0 r5 0
bfle_nontail_cont.29304:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29305
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
	sll	r7 r7 2
	lwoc1	r4 r7 f3
	mul.s	f3 f0 f0
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r4 r7 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r7 3
	sll	r7 r7 2
	lwoc1	r4 r7 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r6 r4 2
	swoc1	f0 r5 r4
	addi	r0 r1 1
	j	beq_cont.29306
beq_else.29305:
	addi	r0 r1 0
beq_cont.29306:
beq_cont.29302:
	j	beq_cont.29300
beq_else.29299:
	lw	r5 r5 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29300:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29307
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
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29309
	addi	r0 r1 1
	j	bfle_nontail_cont.29310
bfle_nontail_else.29309:
	addi	r0 r1 0
bfle_nontail_cont.29310:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29311
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29313
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29315
	addi	r0 r1 1
	j	beq_cont.29316
beq_else.29315:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29317
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29319
	addi	r0 r1 1
	j	beq_cont.29320
beq_else.29319:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29321
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29323
	addi	r0 r1 1
	j	beq_cont.29324
beq_else.29323:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29325
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29327
	addi	r0 r1 1
	j	beq_cont.29328
beq_else.29327:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29329
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29331
	addi	r0 r1 1
	j	beq_cont.29332
beq_else.29331:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29333
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29335
	addi	r0 r1 1
	j	beq_cont.29336
beq_else.29335:
	addi	r0 r1 7
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29337
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29339
	addi	r0 r1 1
	j	beq_cont.29340
beq_else.29339:
	addi	r0 r1 8
	lw	r30 r2 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29340:
	j	beq_cont.29338
beq_else.29337:
	addi	r0 r1 0
beq_cont.29338:
beq_cont.29336:
	j	beq_cont.29334
beq_else.29333:
	addi	r0 r1 0
beq_cont.29334:
beq_cont.29332:
	j	beq_cont.29330
beq_else.29329:
	addi	r0 r1 0
beq_cont.29330:
beq_cont.29328:
	j	beq_cont.29326
beq_else.29325:
	addi	r0 r1 0
beq_cont.29326:
beq_cont.29324:
	j	beq_cont.29322
beq_else.29321:
	addi	r0 r1 0
beq_cont.29322:
beq_cont.29320:
	j	beq_cont.29318
beq_else.29317:
	addi	r0 r1 0
beq_cont.29318:
beq_cont.29316:
	j	beq_cont.29314
beq_else.29313:
	addi	r0 r1 0
beq_cont.29314:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29341
	addi	r0 r1 1
	j	beq_cont.29342
beq_else.29341:
	addi	r0 r1 0
beq_cont.29342:
	j	beq_cont.29312
beq_else.29311:
	addi	r0 r1 0
beq_cont.29312:
	j	beq_cont.29308
beq_else.29307:
	addi	r0 r1 0
beq_cont.29308:
	j	beq_cont.29298
beq_else.29297:
	addi	r0 r1 1
beq_cont.29298:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29343
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29344
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29346
	addi	r0 r1 1
	j	beq_cont.29347
beq_else.29346:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29348
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29350
	addi	r0 r1 1
	j	beq_cont.29351
beq_else.29350:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29352
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29354
	addi	r0 r1 1
	j	beq_cont.29355
beq_else.29354:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29356
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29358
	addi	r0 r1 1
	j	beq_cont.29359
beq_else.29358:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29360
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29362
	addi	r0 r1 1
	j	beq_cont.29363
beq_else.29362:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29364
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29366
	addi	r0 r1 1
	j	beq_cont.29367
beq_else.29366:
	addi	r0 r1 7
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29368
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29370
	addi	r0 r1 1
	j	beq_cont.29371
beq_else.29370:
	addi	r0 r1 8
	lw	r30 r2 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29371:
	j	beq_cont.29369
beq_else.29368:
	addi	r0 r1 0
beq_cont.29369:
beq_cont.29367:
	j	beq_cont.29365
beq_else.29364:
	addi	r0 r1 0
beq_cont.29365:
beq_cont.29363:
	j	beq_cont.29361
beq_else.29360:
	addi	r0 r1 0
beq_cont.29361:
beq_cont.29359:
	j	beq_cont.29357
beq_else.29356:
	addi	r0 r1 0
beq_cont.29357:
beq_cont.29355:
	j	beq_cont.29353
beq_else.29352:
	addi	r0 r1 0
beq_cont.29353:
beq_cont.29351:
	j	beq_cont.29349
beq_else.29348:
	addi	r0 r1 0
beq_cont.29349:
beq_cont.29347:
	j	beq_cont.29345
beq_else.29344:
	addi	r0 r1 0
beq_cont.29345:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29372
	addi	r0 r1 1
	jr	r31
beq_tail_else.29372:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29373
	addi	r0 r5 99
	sw	r2 r30 12
	sw	r1 r30 16
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29374
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
	sll	r4 r8 2
	lwo	r7 r8 r7
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r6 r8 f0
	lw	r7 r8 20
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r8 r9 f1
	sub.s	f0 f1 f0
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r6 r8 f1
	lw	r7 r8 20
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r8 r9 f2
	sub.s	f1 f2 f1
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r6 r8 f2
	lw	r7 r6 20
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r6 r8 f3
	sub.s	f2 f3 f2
	lw	r5 r6 4
	sll	r4 r4 2
	lwo	r6 r4 r4
	lw	r7 r6 4
	addi	r0 r8 1
	sub	r6 r8 r25
	beq	r25 r0 beq_else.29376
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29378
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.29379
beq_else.29378:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29380
	addi	r0 r5 1
	j	bfle_nontail_cont.29381
bfle_nontail_else.29380:
	addi	r0 r5 0
bfle_nontail_cont.29381:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29382
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
	sll	r7 r7 2
	lwoc1	r4 r7 f3
	mul.s	f3 f0 f0
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r4 r7 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r7 3
	sll	r7 r7 2
	lwoc1	r4 r7 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r6 r4 2
	swoc1	f0 r5 r4
	addi	r0 r1 1
	j	beq_cont.29383
beq_else.29382:
	addi	r0 r1 0
beq_cont.29383:
beq_cont.29379:
	j	beq_cont.29377
beq_else.29376:
	lw	r5 r5 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.29377:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29384
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
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29386
	addi	r0 r1 1
	j	bfle_nontail_cont.29387
bfle_nontail_else.29386:
	addi	r0 r1 0
bfle_nontail_cont.29387:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29388
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29390
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29392
	addi	r0 r1 1
	j	beq_cont.29393
beq_else.29392:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29394
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29396
	addi	r0 r1 1
	j	beq_cont.29397
beq_else.29396:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29398
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29400
	addi	r0 r1 1
	j	beq_cont.29401
beq_else.29400:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29402
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29404
	addi	r0 r1 1
	j	beq_cont.29405
beq_else.29404:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29406
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29408
	addi	r0 r1 1
	j	beq_cont.29409
beq_else.29408:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29410
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29412
	addi	r0 r1 1
	j	beq_cont.29413
beq_else.29412:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.29413:
	j	beq_cont.29411
beq_else.29410:
	addi	r0 r1 0
beq_cont.29411:
beq_cont.29409:
	j	beq_cont.29407
beq_else.29406:
	addi	r0 r1 0
beq_cont.29407:
beq_cont.29405:
	j	beq_cont.29403
beq_else.29402:
	addi	r0 r1 0
beq_cont.29403:
beq_cont.29401:
	j	beq_cont.29399
beq_else.29398:
	addi	r0 r1 0
beq_cont.29399:
beq_cont.29397:
	j	beq_cont.29395
beq_else.29394:
	addi	r0 r1 0
beq_cont.29395:
beq_cont.29393:
	j	beq_cont.29391
beq_else.29390:
	addi	r0 r1 0
beq_cont.29391:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29414
	addi	r0 r1 1
	j	beq_cont.29415
beq_else.29414:
	addi	r0 r1 0
beq_cont.29415:
	j	beq_cont.29389
beq_else.29388:
	addi	r0 r1 0
beq_cont.29389:
	j	beq_cont.29385
beq_else.29384:
	addi	r0 r1 0
beq_cont.29385:
	j	beq_cont.29375
beq_else.29374:
	addi	r0 r1 1
beq_cont.29375:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29416
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29417
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29419
	addi	r0 r1 1
	j	beq_cont.29420
beq_else.29419:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29421
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29423
	addi	r0 r1 1
	j	beq_cont.29424
beq_else.29423:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29425
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29427
	addi	r0 r1 1
	j	beq_cont.29428
beq_else.29427:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29429
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29431
	addi	r0 r1 1
	j	beq_cont.29432
beq_else.29431:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29433
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29435
	addi	r0 r1 1
	j	beq_cont.29436
beq_else.29435:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29437
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29439
	addi	r0 r1 1
	j	beq_cont.29440
beq_else.29439:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.29440:
	j	beq_cont.29438
beq_else.29437:
	addi	r0 r1 0
beq_cont.29438:
beq_cont.29436:
	j	beq_cont.29434
beq_else.29433:
	addi	r0 r1 0
beq_cont.29434:
beq_cont.29432:
	j	beq_cont.29430
beq_else.29429:
	addi	r0 r1 0
beq_cont.29430:
beq_cont.29428:
	j	beq_cont.29426
beq_else.29425:
	addi	r0 r1 0
beq_cont.29426:
beq_cont.29424:
	j	beq_cont.29422
beq_else.29421:
	addi	r0 r1 0
beq_cont.29422:
beq_cont.29420:
	j	beq_cont.29418
beq_else.29417:
	addi	r0 r1 0
beq_cont.29418:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29441
	addi	r0 r1 1
	jr	r31
beq_tail_else.29441:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29416:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29373:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29343:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29442
	addi	r0 r5 99
	sw	r2 r30 20
	sw	r1 r30 24
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29443
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
	sll	r4 r8 2
	lwo	r7 r8 r7
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r6 r8 f0
	lw	r7 r8 20
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r8 r9 f1
	sub.s	f0 f1 f0
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r6 r8 f1
	lw	r7 r8 20
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r8 r9 f2
	sub.s	f1 f2 f1
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r6 r8 f2
	lw	r7 r6 20
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r6 r8 f3
	sub.s	f2 f3 f2
	lw	r5 r6 4
	sll	r4 r4 2
	lwo	r6 r4 r4
	lw	r7 r6 4
	addi	r0 r8 1
	sub	r6 r8 r25
	beq	r25 r0 beq_else.29445
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29447
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -32
	lw	r30 r31 28
	j	beq_cont.29448
beq_else.29447:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29449
	addi	r0 r5 1
	j	bfle_nontail_cont.29450
bfle_nontail_else.29449:
	addi	r0 r5 0
bfle_nontail_cont.29450:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29451
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
	sll	r7 r7 2
	lwoc1	r4 r7 f3
	mul.s	f3 f0 f0
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r4 r7 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r7 3
	sll	r7 r7 2
	lwoc1	r4 r7 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r6 r4 2
	swoc1	f0 r5 r4
	addi	r0 r1 1
	j	beq_cont.29452
beq_else.29451:
	addi	r0 r1 0
beq_cont.29452:
beq_cont.29448:
	j	beq_cont.29446
beq_else.29445:
	lw	r5 r5 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -32
	lw	r30 r31 28
beq_cont.29446:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29453
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
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29455
	addi	r0 r1 1
	j	bfle_nontail_cont.29456
bfle_nontail_else.29455:
	addi	r0 r1 0
bfle_nontail_cont.29456:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29457
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29459
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29461
	addi	r0 r1 1
	j	beq_cont.29462
beq_else.29461:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29463
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29465
	addi	r0 r1 1
	j	beq_cont.29466
beq_else.29465:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29467
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29469
	addi	r0 r1 1
	j	beq_cont.29470
beq_else.29469:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29471
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29473
	addi	r0 r1 1
	j	beq_cont.29474
beq_else.29473:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29475
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29477
	addi	r0 r1 1
	j	beq_cont.29478
beq_else.29477:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29479
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29481
	addi	r0 r1 1
	j	beq_cont.29482
beq_else.29481:
	addi	r0 r1 7
	lw	r30 r2 20
	sw	r31 r30 28
	addi	r30 r30 32
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -32
	lw	r30 r31 28
beq_cont.29482:
	j	beq_cont.29480
beq_else.29479:
	addi	r0 r1 0
beq_cont.29480:
beq_cont.29478:
	j	beq_cont.29476
beq_else.29475:
	addi	r0 r1 0
beq_cont.29476:
beq_cont.29474:
	j	beq_cont.29472
beq_else.29471:
	addi	r0 r1 0
beq_cont.29472:
beq_cont.29470:
	j	beq_cont.29468
beq_else.29467:
	addi	r0 r1 0
beq_cont.29468:
beq_cont.29466:
	j	beq_cont.29464
beq_else.29463:
	addi	r0 r1 0
beq_cont.29464:
beq_cont.29462:
	j	beq_cont.29460
beq_else.29459:
	addi	r0 r1 0
beq_cont.29460:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29483
	addi	r0 r1 1
	j	beq_cont.29484
beq_else.29483:
	addi	r0 r1 0
beq_cont.29484:
	j	beq_cont.29458
beq_else.29457:
	addi	r0 r1 0
beq_cont.29458:
	j	beq_cont.29454
beq_else.29453:
	addi	r0 r1 0
beq_cont.29454:
	j	beq_cont.29444
beq_else.29443:
	addi	r0 r1 1
beq_cont.29444:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29485
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29486
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29488
	addi	r0 r1 1
	j	beq_cont.29489
beq_else.29488:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29490
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29492
	addi	r0 r1 1
	j	beq_cont.29493
beq_else.29492:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29494
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29496
	addi	r0 r1 1
	j	beq_cont.29497
beq_else.29496:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29498
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29500
	addi	r0 r1 1
	j	beq_cont.29501
beq_else.29500:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29502
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29504
	addi	r0 r1 1
	j	beq_cont.29505
beq_else.29504:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29506
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29508
	addi	r0 r1 1
	j	beq_cont.29509
beq_else.29508:
	addi	r0 r1 7
	lw	r30 r2 20
	sw	r31 r30 28
	addi	r30 r30 32
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -32
	lw	r30 r31 28
beq_cont.29509:
	j	beq_cont.29507
beq_else.29506:
	addi	r0 r1 0
beq_cont.29507:
beq_cont.29505:
	j	beq_cont.29503
beq_else.29502:
	addi	r0 r1 0
beq_cont.29503:
beq_cont.29501:
	j	beq_cont.29499
beq_else.29498:
	addi	r0 r1 0
beq_cont.29499:
beq_cont.29497:
	j	beq_cont.29495
beq_else.29494:
	addi	r0 r1 0
beq_cont.29495:
beq_cont.29493:
	j	beq_cont.29491
beq_else.29490:
	addi	r0 r1 0
beq_cont.29491:
beq_cont.29489:
	j	beq_cont.29487
beq_else.29486:
	addi	r0 r1 0
beq_cont.29487:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29510
	addi	r0 r1 1
	jr	r31
beq_tail_else.29510:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29485:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29442:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29296:
	addi	r0 r1 0
	jr	r31
solve_each_element.3031:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29511
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
	sll	r4 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r5 r7 f0
	lw	r6 r7 20
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r5 r7 f1
	lw	r6 r7 20
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r7 r8 f2
	sub.s	f1 f2 f1
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r5 r7 f2
	lw	r6 r5 20
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r5 r7 f3
	sub.s	f2 f3 f2
	lw	r6 r5 4
	addi	r0 r7 1
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r4 r30 12
	sub	r5 r7 r25
	beq	r25 r0 beq_else.29512
	addi	r0 r7 2
	sub	r5 r7 r25
	beq	r25 r0 beq_else.29514
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r6
	jal	solver_second.2927
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.29515
beq_else.29514:
	lw	r6 r5 16
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r3 r6 f3
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r5 r6 f4
	mul.s	f3 f4 f3
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r3 r6 f4
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f4
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29516
	addi	r0 r6 1
	j	bfle_nontail_cont.29517
bfle_nontail_else.29516:
	addi	r0 r6 0
bfle_nontail_cont.29517:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29518
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
	sll	r8 r8 2
	lwoc1	r5 r8 f4
	mul.s	f4 f0 f0
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r5 r8 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r5 r8 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	div.s	f0 f3 f0
	sll	r7 r5 2
	swoc1	f0 r6 r5
	addi	r0 r1 1
	j	beq_cont.29519
beq_else.29518:
	addi	r0 r1 0
beq_cont.29519:
beq_cont.29515:
	j	beq_cont.29513
beq_else.29512:
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r6
	jal	solver_rect.2902
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.29513:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29520
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29521
	addi	r0 r2 1
	j	bfle_nontail_cont.29522
bfle_nontail_else.29521:
	addi	r0 r2 0
bfle_nontail_cont.29522:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29523
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	sub.s	f1 f0 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29525
	addi	r0 r2 1
	j	bfle_nontail_cont.29526
bfle_nontail_else.29525:
	addi	r0 r2 0
bfle_nontail_cont.29526:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29527
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f1
	add.s	f0 f1 f0
	addi	r0 r2 0
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	add.s	f1 f2 f1
	addi	r0 r2 1
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r2 r4 f3
	add.s	f2 f3 f2
	addi	r0 r2 2
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r2 r4 f4
	add.s	f3 f4 f3
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r4 4
	lwo	r4 r2 r2
	addi	r0 r5 -1
	sw	r1 r30 16
	swc1	f3 r30 20
	swc1	f2 r30 24
	swc1	f1 r30 28
	swc1	f0 r30 32
	sub	r2 r5 r25
	beq	r25 r0 beq_else.29529
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	sll	r2 r2 2
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
	beq	r25 r0 beq_else.29531
	addi	r0 r1 0
	j	beq_cont.29532
beq_else.29531:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29533
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	sll	r1 r1 2
	lwo	r3 r1 r1
	lw	r1 r3 20
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
	lw	r1 r3 20
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	lwc1	 r30 f3 24
	sub.s	f3 f2 f2
	lw	r1 r3 20
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	lwc1	 r30 f5 20
	sub.s	f5 f4 f4
	lw	r1 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29535
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29537
	mul.s	f0 f0 f6
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	mul.s	f2 f2 f7
	lw	r1 r3 16
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r1 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29539
	mul.s	f2 f4 f7
	lw	r1 r3 36
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f0 f4
	lw	r1 r3 36
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f4 f7 f4
	add.s	f6 f4 f4
	mul.s	f0 f2 f0
	lw	r1 r3 36
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mul.s	f0 f2 f0
	add.s	f4 f0 f0
	j	beq_cont.29540
beq_else.29539:
	mov.s	f6 f0
beq_cont.29540:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29541
	j	beq_cont.29542
beq_else.29541:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29542:
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29543
	addi	r0 r3 1
	j	bfle_nontail_cont.29544
bfle_nontail_else.29543:
	addi	r0 r3 0
bfle_nontail_cont.29544:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29545
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29547
	addi	r0 r1 0
	j	beq_cont.29548
beq_else.29547:
	addi	r0 r1 1
beq_cont.29548:
	j	beq_cont.29546
beq_else.29545:
	mov	r1 r3
beq_cont.29546:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29549
	addi	r0 r1 0
	j	beq_cont.29550
beq_else.29549:
	addi	r0 r1 1
beq_cont.29550:
	j	beq_cont.29538
beq_else.29537:
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f6
	mul.s	f6 f0 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f6
	mul.s	f6 f2 f2
	add.s	f0 f2 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mul.s	f2 f4 f2
	add.s	f0 f2 f0
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29551
	addi	r0 r3 1
	j	bfle_nontail_cont.29552
bfle_nontail_else.29551:
	addi	r0 r3 0
bfle_nontail_cont.29552:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29553
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29555
	addi	r0 r1 0
	j	beq_cont.29556
beq_else.29555:
	addi	r0 r1 1
beq_cont.29556:
	j	beq_cont.29554
beq_else.29553:
	mov	r1 r3
beq_cont.29554:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29557
	addi	r0 r1 0
	j	beq_cont.29558
beq_else.29557:
	addi	r0 r1 1
beq_cont.29558:
beq_cont.29538:
	j	beq_cont.29536
beq_else.29535:
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f6
	abs.s	f0 f0
	sub.s	f6 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f6
	sub.s	f0 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29559
	addi	r0 r3 1
	j	bfle_nontail_cont.29560
bfle_nontail_else.29559:
	addi	r0 r3 0
bfle_nontail_cont.29560:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29561
	lw	r1 r3 16
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	abs.s	f2 f2
	sub.s	f0 f2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29563
	addi	r0 r3 1
	j	bfle_nontail_cont.29564
bfle_nontail_else.29563:
	addi	r0 r3 0
bfle_nontail_cont.29564:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29565
	lw	r1 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	abs.s	f4 f2
	sub.s	f0 f2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29567
	addi	r0 r3 1
	j	bfle_nontail_cont.29568
bfle_nontail_else.29567:
	addi	r0 r3 0
bfle_nontail_cont.29568:
	j	beq_cont.29566
beq_else.29565:
	addi	r0 r3 0
beq_cont.29566:
	j	beq_cont.29562
beq_else.29561:
	addi	r0 r3 0
beq_cont.29562:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29569
	lw	r1 r1 24
	j	beq_cont.29570
beq_else.29569:
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29571
	addi	r0 r1 0
	j	beq_cont.29572
beq_else.29571:
	addi	r0 r1 1
beq_cont.29572:
beq_cont.29570:
beq_cont.29536:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29573
	addi	r0 r1 0
	j	beq_cont.29574
beq_else.29573:
	addi	r0 r1 2
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29575
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29577
	addi	r0 r1 0
	j	beq_cont.29578
beq_else.29577:
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
beq_cont.29578:
	j	beq_cont.29576
beq_else.29575:
	addi	r0 r1 1
beq_cont.29576:
beq_cont.29574:
	j	beq_cont.29534
beq_else.29533:
	addi	r0 r1 1
beq_cont.29534:
beq_cont.29532:
	j	beq_cont.29530
beq_else.29529:
	addi	r0 r1 1
beq_cont.29530:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29579
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	sll	r2 r2 2
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
	sll	r2 r2 2
	lwc1	 r30 f0 28
	swoc1	f0 r1 r2
	addi	r0 r2 1
	sll	r2 r2 2
	lwc1	 r30 f0 24
	swoc1	f0 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	j	beq_cont.29580
beq_else.29579:
beq_cont.29580:
	j	beq_cont.29528
beq_else.29527:
beq_cont.29528:
	j	beq_cont.29524
beq_else.29523:
beq_cont.29524:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element.3031
beq_tail_else.29520:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 12
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29581
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element.3031
beq_tail_else.29581:
	jr	r31
beq_tail_else.29511:
	jr	r31
solve_one_or_network.3035:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29584
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r4 r4 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29585
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29586
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29587
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29588
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29589
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29590
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29591
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	sll	r2 r2 2
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
beq_tail_else.29591:
	jr	r31
beq_tail_else.29590:
	jr	r31
beq_tail_else.29589:
	jr	r31
beq_tail_else.29588:
	jr	r31
beq_tail_else.29587:
	jr	r31
beq_tail_else.29586:
	jr	r31
beq_tail_else.29585:
	jr	r31
beq_tail_else.29584:
	jr	r31
trace_or_matrix.3039:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.29600
	addi	r0 r6 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29601
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
	sll	r5 r5 2
	lwo	r7 r5 r5
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r6 r7 f0
	lw	r5 r7 20
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r6 r7 f1
	lw	r5 r7 20
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r7 r8 f2
	sub.s	f1 f2 f1
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r6 r7 f2
	lw	r5 r6 20
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r6 r7 f3
	sub.s	f2 f3 f2
	lw	r5 r6 4
	addi	r0 r7 1
	sw	r4 r30 12
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29603
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29605
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r5
	jal	solver_second.2927
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.29606
beq_else.29605:
	lw	r5 r5 16
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r3 r6 f3
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r5 r6 f4
	mul.s	f3 f4 f3
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r3 r6 f4
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f4
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r5 r6 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29607
	addi	r0 r6 1
	j	bfle_nontail_cont.29608
bfle_nontail_else.29607:
	addi	r0 r6 0
bfle_nontail_cont.29608:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29609
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
	sll	r8 r8 2
	lwoc1	r5 r8 f4
	mul.s	f4 f0 f0
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r5 r8 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r5 r8 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	div.s	f0 f3 f0
	sll	r7 r5 2
	swoc1	f0 r6 r5
	addi	r0 r1 1
	j	beq_cont.29610
beq_else.29609:
	addi	r0 r1 0
beq_cont.29610:
beq_cont.29606:
	j	beq_cont.29604
beq_else.29603:
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r5
	jal	solver_rect.2902
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.29604:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29611
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29613
	addi	r0 r1 1
	j	bfle_nontail_cont.29614
bfle_nontail_else.29613:
	addi	r0 r1 0
bfle_nontail_cont.29614:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29615
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29617
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29619
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29621
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29623
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29625
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29627
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29629
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	j	beq_cont.29630
beq_else.29629:
beq_cont.29630:
	j	beq_cont.29628
beq_else.29627:
beq_cont.29628:
	j	beq_cont.29626
beq_else.29625:
beq_cont.29626:
	j	beq_cont.29624
beq_else.29623:
beq_cont.29624:
	j	beq_cont.29622
beq_else.29621:
beq_cont.29622:
	j	beq_cont.29620
beq_else.29619:
beq_cont.29620:
	j	beq_cont.29618
beq_else.29617:
beq_cont.29618:
	j	beq_cont.29616
beq_else.29615:
beq_cont.29616:
	j	beq_cont.29612
beq_else.29611:
beq_cont.29612:
	j	beq_cont.29602
beq_else.29601:
	addi	r0 r5 1
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29631
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r5 r5 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29633
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29635
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29637
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29639
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29641
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29643
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r1 r1 2
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
	j	beq_cont.29644
beq_else.29643:
beq_cont.29644:
	j	beq_cont.29642
beq_else.29641:
beq_cont.29642:
	j	beq_cont.29640
beq_else.29639:
beq_cont.29640:
	j	beq_cont.29638
beq_else.29637:
beq_cont.29638:
	j	beq_cont.29636
beq_else.29635:
beq_cont.29636:
	j	beq_cont.29634
beq_else.29633:
beq_cont.29634:
	j	beq_cont.29632
beq_else.29631:
beq_cont.29632:
beq_cont.29602:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29645
	addi	r0 r5 99
	sw	r1 r30 16
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29646
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
	beq	r25 r0 beq_else.29648
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29650
	addi	r0 r1 1
	j	bfle_nontail_cont.29651
bfle_nontail_else.29650:
	addi	r0 r1 0
bfle_nontail_cont.29651:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29652
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29654
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29656
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29658
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29660
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29662
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29664
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	j	beq_cont.29665
beq_else.29664:
beq_cont.29665:
	j	beq_cont.29663
beq_else.29662:
beq_cont.29663:
	j	beq_cont.29661
beq_else.29660:
beq_cont.29661:
	j	beq_cont.29659
beq_else.29658:
beq_cont.29659:
	j	beq_cont.29657
beq_else.29656:
beq_cont.29657:
	j	beq_cont.29655
beq_else.29654:
beq_cont.29655:
	j	beq_cont.29653
beq_else.29652:
beq_cont.29653:
	j	beq_cont.29649
beq_else.29648:
beq_cont.29649:
	j	beq_cont.29647
beq_else.29646:
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29666
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r4 r4 2
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
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29668
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29670
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29672
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29674
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29676
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r1 2
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
	j	beq_cont.29677
beq_else.29676:
beq_cont.29677:
	j	beq_cont.29675
beq_else.29674:
beq_cont.29675:
	j	beq_cont.29673
beq_else.29672:
beq_cont.29673:
	j	beq_cont.29671
beq_else.29670:
beq_cont.29671:
	j	beq_cont.29669
beq_else.29668:
beq_cont.29669:
	j	beq_cont.29667
beq_else.29666:
beq_cont.29667:
beq_cont.29647:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_or_matrix.3039
beq_tail_else.29645:
	jr	r31
beq_tail_else.29600:
	jr	r31
solve_each_element_fast.3045:
	lw	r3 r4 0
	sll	r1 r5 2
	lwo	r2 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.29680
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r5 r7 2
	lwo	r6 r7 r6
	lw	r6 r7 40
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r7 r8 f0
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r7 r8 f2
	lw	r3 r8 4
	sll	r5 r9 2
	lwo	r8 r9 r8
	lw	r6 r9 4
	addi	r0 r10 1
	sw	r4 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	sw	r1 r30 12
	sw	r5 r30 16
	sub	r9 r10 r25
	beq	r25 r0 beq_else.29681
	addi	r0 r10 2
	sub	r9 r10 r25
	beq	r25 r0 beq_else.29683
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r8 r9 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.29685
	addi	r0 r9 0
	j	bfeq_nontail_cont.29686
bfeq_nontail_else.29685:
	addi	r0 r9 1
bfeq_nontail_cont.29686:
	addi	r0 r10 0
	sub	r9 r10 r25
	beq	r25 r0 beq_else.29687
	addi	r0 r1 0
	j	beq_cont.29688
beq_else.29687:
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r8 r9 f4
	mul.s	f4 f0 f0
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r8 r9 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r9 3
	sll	r9 r9 2
	lwoc1	r8 r9 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r9 3
	sll	r9 r9 2
	lwoc1	r7 r9 f1
	mul.s	f0 f0 f2
	mul.s	f3 f1 f1
	sub.s	f2 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29689
	addi	r0 r7 1
	j	bfle_nontail_cont.29690
bfle_nontail_else.29689:
	addi	r0 r7 0
bfle_nontail_cont.29690:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.29691
	lw	r6 r6 24
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29693
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r7 0
	sw	r6 r30 20
	sw	r7 r30 24
	sw	r8 r30 28
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov.s	f1 f0
	jal	min_caml_sqrt
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	add.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 28
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	j	beq_cont.29694
beq_else.29693:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r7 0
	sw	r6 r30 36
	sw	r7 r30 40
	sw	r8 r30 28
	swc1	f0 r30 32
	sw	r31 r30 44
	addi	r30 r30 48
	mov.s	f1 f0
	jal	min_caml_sqrt
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 32
	sub.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 28
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 40
	sll	r1 r1 2
	lw	r30 r2 36
	swoc1	f0 r2 r1
beq_cont.29694:
	addi	r0 r1 1
	j	beq_cont.29692
beq_else.29691:
	addi	r0 r1 0
beq_cont.29692:
beq_cont.29688:
	j	beq_cont.29684
beq_else.29683:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r8 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29695
	addi	r0 r6 1
	j	bfle_nontail_cont.29696
bfle_nontail_else.29695:
	addi	r0 r6 0
bfle_nontail_cont.29696:
	addi	r0 r9 0
	sub	r6 r9 r25
	beq	r25 r0 beq_else.29697
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r9 0
	addi	r0 r10 0
	sll	r10 r10 2
	lwoc1	r8 r10 f0
	addi	r0 r8 3
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	mul.s	f0 f1 f0
	sll	r9 r7 2
	swoc1	f0 r6 r7
	addi	r0 r1 1
	j	beq_cont.29698
beq_else.29697:
	addi	r0 r1 0
beq_cont.29698:
beq_cont.29684:
	j	beq_cont.29682
beq_else.29681:
	lw	r3 r7 0
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r3 r8
	mov	r2 r7
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -48
	lw	r30 r31 44
beq_cont.29682:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29699
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29700
	addi	r0 r2 1
	j	bfle_nontail_cont.29701
bfle_nontail_else.29700:
	addi	r0 r2 0
bfle_nontail_cont.29701:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29702
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	sub.s	f1 f0 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29704
	addi	r0 r2 1
	j	bfle_nontail_cont.29705
bfle_nontail_else.29704:
	addi	r0 r2 0
bfle_nontail_cont.29705:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29706
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f1
	add.s	f0 f1 f0
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 0
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	add.s	f1 f2 f1
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	mul.s	f2 f0 f2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f3
	add.s	f2 f3 f2
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f3
	mul.s	f3 f0 f3
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	add.s	f3 f4 f3
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 8
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sw	r1 r30 44
	swc1	f3 r30 48
	swc1	f2 r30 52
	swc1	f1 r30 56
	swc1	f0 r30 60
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29708
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -64
	sll	r2 r2 2
	lwo	r4 r2 r2
	sw	r31 r30 64
	addi	r30 r30 68
	mov	r1 r2
	mov.s	f1 f0
	mov.s	f2 f1
	mov.s	f3 f2
	jal	is_outside.3011
	addi	r30 r30 -68
	lw	r30 r31 64
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29710
	addi	r0 r1 0
	j	beq_cont.29711
beq_else.29710:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 8
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29712
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -64
	sll	r1 r1 2
	lwo	r3 r1 r1
	lw	r1 r3 20
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	lwc1	 r30 f1 56
	sub.s	f1 f0 f0
	lw	r1 r3 20
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	lwc1	 r30 f3 52
	sub.s	f3 f2 f2
	lw	r1 r3 20
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	lwc1	 r30 f5 48
	sub.s	f5 f4 f4
	lw	r1 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29714
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29716
	mul.s	f0 f0 f6
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f6 f7 f6
	mul.s	f2 f2 f7
	lw	r1 r3 16
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f4 f7
	lw	r1 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	lw	r1 r3 12
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29718
	mul.s	f2 f4 f7
	lw	r1 r3 36
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f8
	mul.s	f7 f8 f7
	add.s	f6 f7 f6
	mul.s	f4 f0 f4
	lw	r1 r3 36
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f7
	mul.s	f4 f7 f4
	add.s	f6 f4 f4
	mul.s	f0 f2 f0
	lw	r1 r3 36
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mul.s	f0 f2 f0
	add.s	f4 f0 f0
	j	beq_cont.29719
beq_else.29718:
	mov.s	f6 f0
beq_cont.29719:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29720
	j	beq_cont.29721
beq_else.29720:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29721:
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29722
	addi	r0 r3 1
	j	bfle_nontail_cont.29723
bfle_nontail_else.29722:
	addi	r0 r3 0
bfle_nontail_cont.29723:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29724
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29726
	addi	r0 r1 0
	j	beq_cont.29727
beq_else.29726:
	addi	r0 r1 1
beq_cont.29727:
	j	beq_cont.29725
beq_else.29724:
	mov	r1 r3
beq_cont.29725:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29728
	addi	r0 r1 0
	j	beq_cont.29729
beq_else.29728:
	addi	r0 r1 1
beq_cont.29729:
	j	beq_cont.29717
beq_else.29716:
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f6
	mul.s	f6 f0 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f6
	mul.s	f6 f2 f2
	add.s	f0 f2 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mul.s	f2 f4 f2
	add.s	f0 f2 f0
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29730
	addi	r0 r3 1
	j	bfle_nontail_cont.29731
bfle_nontail_else.29730:
	addi	r0 r3 0
bfle_nontail_cont.29731:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29732
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29734
	addi	r0 r1 0
	j	beq_cont.29735
beq_else.29734:
	addi	r0 r1 1
beq_cont.29735:
	j	beq_cont.29733
beq_else.29732:
	mov	r1 r3
beq_cont.29733:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29736
	addi	r0 r1 0
	j	beq_cont.29737
beq_else.29736:
	addi	r0 r1 1
beq_cont.29737:
beq_cont.29717:
	j	beq_cont.29715
beq_else.29714:
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f6
	abs.s	f0 f0
	sub.s	f6 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f6
	sub.s	f0 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29738
	addi	r0 r3 1
	j	bfle_nontail_cont.29739
bfle_nontail_else.29738:
	addi	r0 r3 0
bfle_nontail_cont.29739:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29740
	lw	r1 r3 16
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	abs.s	f2 f2
	sub.s	f0 f2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29742
	addi	r0 r3 1
	j	bfle_nontail_cont.29743
bfle_nontail_else.29742:
	addi	r0 r3 0
bfle_nontail_cont.29743:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29744
	lw	r1 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	abs.s	f4 f2
	sub.s	f0 f2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29746
	addi	r0 r3 1
	j	bfle_nontail_cont.29747
bfle_nontail_else.29746:
	addi	r0 r3 0
bfle_nontail_cont.29747:
	j	beq_cont.29745
beq_else.29744:
	addi	r0 r3 0
beq_cont.29745:
	j	beq_cont.29741
beq_else.29740:
	addi	r0 r3 0
beq_cont.29741:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29748
	lw	r1 r1 24
	j	beq_cont.29749
beq_else.29748:
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29750
	addi	r0 r1 0
	j	beq_cont.29751
beq_else.29750:
	addi	r0 r1 1
beq_cont.29751:
beq_cont.29749:
beq_cont.29715:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29752
	addi	r0 r1 0
	j	beq_cont.29753
beq_else.29752:
	addi	r0 r1 2
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29754
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -64
	sll	r1 r1 2
	lwo	r3 r1 r1
	sw	r31 r30 64
	addi	r30 r30 68
	mov.s	f5 f2
	mov.s	f1 f0
	mov.s	f3 f1
	jal	is_outside.3011
	addi	r30 r30 -68
	lw	r30 r31 64
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29756
	addi	r0 r1 0
	j	beq_cont.29757
beq_else.29756:
	addi	r0 r1 3
	lwc1	 r30 f0 56
	lwc1	 r30 f1 52
	lwc1	 r30 f2 48
	lw	r30 r2 8
	sw	r31 r30 64
	addi	r30 r30 68
	jal	check_all_inside.3016
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.29757:
	j	beq_cont.29755
beq_else.29754:
	addi	r0 r1 1
beq_cont.29755:
beq_cont.29753:
	j	beq_cont.29713
beq_else.29712:
	addi	r0 r1 1
beq_cont.29713:
beq_cont.29711:
	j	beq_cont.29709
beq_else.29708:
	addi	r0 r1 1
beq_cont.29709:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29758
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 60
	swoc1	f0 r1 r2
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 56
	swoc1	f0 r1 r2
	addi	r0 r2 1
	sll	r2 r2 2
	lwc1	 r30 f0 52
	swoc1	f0 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
	lwc1	 r30 f0 48
	swoc1	f0 r1 r2
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 44
	swo	r3 r1 r2
	j	beq_cont.29759
beq_else.29758:
beq_cont.29759:
	j	beq_cont.29707
beq_else.29706:
beq_cont.29707:
	j	beq_cont.29703
beq_else.29702:
beq_cont.29703:
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	lw	r30 r2 8
	lw	r30 r3 4
	j	solve_each_element_fast.3045
beq_tail_else.29699:
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	lw	r30 r2 16
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29760
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	lw	r30 r2 8
	lw	r30 r3 4
	j	solve_each_element_fast.3045
beq_tail_else.29760:
	jr	r31
beq_tail_else.29680:
	jr	r31
solve_one_or_network_fast.3049:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29763
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r4 r4 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29764
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29765
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29766
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29767
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29768
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29769
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r2 r2 2
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
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29770
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	sll	r2 r2 2
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
beq_tail_else.29770:
	jr	r31
beq_tail_else.29769:
	jr	r31
beq_tail_else.29768:
	jr	r31
beq_tail_else.29767:
	jr	r31
beq_tail_else.29766:
	jr	r31
beq_tail_else.29765:
	jr	r31
beq_tail_else.29764:
	jr	r31
beq_tail_else.29763:
	jr	r31
trace_or_matrix_fast.3053:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.29779
	addi	r0 r6 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29780
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r5 r7 2
	lwo	r6 r7 r6
	lw	r6 r7 40
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r7 r8 f0
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r7 r8 f2
	lw	r3 r8 4
	sll	r5 r5 2
	lwo	r8 r5 r5
	lw	r6 r8 4
	addi	r0 r9 1
	sw	r4 r30 12
	sub	r8 r9 r25
	beq	r25 r0 beq_else.29782
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.29784
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r5 r8 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.29786
	addi	r0 r8 0
	j	bfeq_nontail_cont.29787
bfeq_nontail_else.29786:
	addi	r0 r8 1
bfeq_nontail_cont.29787:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_else.29788
	addi	r0 r1 0
	j	beq_cont.29789
beq_else.29788:
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r5 r8 f4
	mul.s	f4 f0 f0
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r5 r8 f4
	mul.s	f4 f1 f1
	add.s	f0 f1 f0
	addi	r0 r8 3
	sll	r8 r8 2
	lwoc1	r5 r8 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r8 3
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	mul.s	f0 f0 f2
	mul.s	f3 f1 f1
	sub.s	f2 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29790
	addi	r0 r7 1
	j	bfle_nontail_cont.29791
bfle_nontail_else.29790:
	addi	r0 r7 0
bfle_nontail_cont.29791:
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.29792
	lw	r6 r6 24
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29794
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r7 0
	sw	r6 r30 16
	sw	r7 r30 20
	sw	r5 r30 24
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov.s	f1 f0
	jal	min_caml_sqrt
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	add.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 24
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 20
	sll	r1 r1 2
	lw	r30 r2 16
	swoc1	f0 r2 r1
	j	beq_cont.29795
beq_else.29794:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r7 0
	sw	r6 r30 32
	sw	r7 r30 36
	sw	r5 r30 24
	swc1	f0 r30 28
	sw	r31 r30 40
	addi	r30 r30 44
	mov.s	f1 f0
	jal	min_caml_sqrt
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 24
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 36
	sll	r1 r1 2
	lw	r30 r2 32
	swoc1	f0 r2 r1
beq_cont.29795:
	addi	r0 r1 1
	j	beq_cont.29793
beq_else.29792:
	addi	r0 r1 0
beq_cont.29793:
beq_cont.29789:
	j	beq_cont.29785
beq_else.29784:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r5 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29796
	addi	r0 r6 1
	j	bfle_nontail_cont.29797
bfle_nontail_else.29796:
	addi	r0 r6 0
bfle_nontail_cont.29797:
	addi	r0 r8 0
	sub	r6 r8 r25
	beq	r25 r0 beq_else.29798
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r8 0
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r5 r9 f0
	addi	r0 r5 3
	sll	r5 r5 2
	lwoc1	r7 r5 f1
	mul.s	f0 f1 f0
	sll	r8 r5 2
	swoc1	f0 r6 r5
	addi	r0 r1 1
	j	beq_cont.29799
beq_else.29798:
	addi	r0 r1 0
beq_cont.29799:
beq_cont.29785:
	j	beq_cont.29783
beq_else.29782:
	lw	r3 r7 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r3 r5
	mov	r2 r7
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -44
	lw	r30 r31 40
beq_cont.29783:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29800
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29802
	addi	r0 r1 1
	j	bfle_nontail_cont.29803
bfle_nontail_else.29802:
	addi	r0 r1 0
bfle_nontail_cont.29803:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29804
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29806
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29808
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29810
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29812
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29814
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29816
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 7
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29818
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 8
	lw	r30 r2 12
	lw	r30 r3 0
	sw	r31 r30 40
	addi	r30 r30 44
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -44
	lw	r30 r31 40
	j	beq_cont.29819
beq_else.29818:
beq_cont.29819:
	j	beq_cont.29817
beq_else.29816:
beq_cont.29817:
	j	beq_cont.29815
beq_else.29814:
beq_cont.29815:
	j	beq_cont.29813
beq_else.29812:
beq_cont.29813:
	j	beq_cont.29811
beq_else.29810:
beq_cont.29811:
	j	beq_cont.29809
beq_else.29808:
beq_cont.29809:
	j	beq_cont.29807
beq_else.29806:
beq_cont.29807:
	j	beq_cont.29805
beq_else.29804:
beq_cont.29805:
	j	beq_cont.29801
beq_else.29800:
beq_cont.29801:
	j	beq_cont.29781
beq_else.29780:
	addi	r0 r5 1
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29820
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r5 r5 2
	lwo	r6 r5 r5
	addi	r0 r6 0
	sw	r4 r30 12
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r5
	mov	r1 r6
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29822
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29824
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29826
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29828
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29830
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 7
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29832
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 8
	lw	r30 r2 12
	lw	r30 r3 0
	sw	r31 r30 40
	addi	r30 r30 44
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -44
	lw	r30 r31 40
	j	beq_cont.29833
beq_else.29832:
beq_cont.29833:
	j	beq_cont.29831
beq_else.29830:
beq_cont.29831:
	j	beq_cont.29829
beq_else.29828:
beq_cont.29829:
	j	beq_cont.29827
beq_else.29826:
beq_cont.29827:
	j	beq_cont.29825
beq_else.29824:
beq_cont.29825:
	j	beq_cont.29823
beq_else.29822:
beq_cont.29823:
	j	beq_cont.29821
beq_else.29820:
beq_cont.29821:
beq_cont.29781:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29834
	addi	r0 r5 99
	sw	r1 r30 40
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29835
	lw	r30 r5 0
	sw	r2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r5
	mov	r1 r4
	jal	solver_fast2.2974
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29837
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29839
	addi	r0 r1 1
	j	bfle_nontail_cont.29840
bfle_nontail_else.29839:
	addi	r0 r1 0
bfle_nontail_cont.29840:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29841
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29843
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29845
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29847
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29849
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29851
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29853
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 7
	lw	r30 r2 44
	lw	r30 r3 0
	sw	r31 r30 48
	addi	r30 r30 52
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -52
	lw	r30 r31 48
	j	beq_cont.29854
beq_else.29853:
beq_cont.29854:
	j	beq_cont.29852
beq_else.29851:
beq_cont.29852:
	j	beq_cont.29850
beq_else.29849:
beq_cont.29850:
	j	beq_cont.29848
beq_else.29847:
beq_cont.29848:
	j	beq_cont.29846
beq_else.29845:
beq_cont.29846:
	j	beq_cont.29844
beq_else.29843:
beq_cont.29844:
	j	beq_cont.29842
beq_else.29841:
beq_cont.29842:
	j	beq_cont.29838
beq_else.29837:
beq_cont.29838:
	j	beq_cont.29836
beq_else.29835:
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29855
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r4 r4 2
	lwo	r5 r4 r4
	addi	r0 r5 0
	lw	r30 r6 0
	sw	r2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r3 r6
	mov	r2 r4
	mov	r1 r5
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29857
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29859
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29861
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29863
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29865
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r3 0
	lw	r30 r4 0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r1
	mov	r1 r3
	mov	r3 r4
	jal	solve_each_element_fast.3045
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r1 7
	lw	r30 r2 44
	lw	r30 r3 0
	sw	r31 r30 48
	addi	r30 r30 52
	jal	solve_one_or_network_fast.3049
	addi	r30 r30 -52
	lw	r30 r31 48
	j	beq_cont.29866
beq_else.29865:
beq_cont.29866:
	j	beq_cont.29864
beq_else.29863:
beq_cont.29864:
	j	beq_cont.29862
beq_else.29861:
beq_cont.29862:
	j	beq_cont.29860
beq_else.29859:
beq_cont.29860:
	j	beq_cont.29858
beq_else.29857:
beq_cont.29858:
	j	beq_cont.29856
beq_else.29855:
beq_cont.29856:
beq_cont.29836:
	addi	r0 r1 1
	lw	r30 r2 40
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_or_matrix_fast.3053
beq_tail_else.29834:
	jr	r31
beq_tail_else.29779:
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
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	lw	r1 r2 20
	addi	r0 r3 0
	sll	r3 r3 2
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
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	lw	r1 r2 20
	addi	r0 r3 1
	sll	r3 r3 2
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
	sll	r3 r3 2
	lwoc1	r2 r3 f2
	lw	r1 r2 20
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	sub.s	f2 f3 f2
	lw	r1 r2 16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	mul.s	f0 f3 f3
	lw	r1 r2 16
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	mul.s	f1 f4 f4
	lw	r1 r2 16
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mul.s	f2 f5 f5
	lw	r1 r2 12
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29869
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
	sll	r5 r5 2
	lwoc1	r4 r5 f6
	mul.s	f1 f6 f6
	lw	r1 r4 36
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r4 r5 f7
	mul.s	f2 f7 f7
	add.s	f6 f7 f6
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f7
	mul.s	f6 f7 f6
	add.s	f3 f6 f3
	sll	r3 r3 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	mul.s	f0 f3 f3
	lw	r1 r4 36
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f6
	mul.s	f2 f6 f2
	add.s	f3 f2 f2
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f3
	mul.s	f2 f3 f2
	add.s	f4 f2 f2
	sll	r3 r3 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f2
	mul.s	f0 f2 f0
	lw	r1 r4 36
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	add.s	f5 f0 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	j	beq_cont.29870
beq_else.29869:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sll	r3 r3 2
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
	sll	r3 r3 2
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
	sll	r3 r3 2
	swoc1	f5 r2 r3
beq_cont.29870:
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
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_sqrt
	addi	r30 r30 -12
	lw	r30 r31 8
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.29871
	addi	r0 r1 0
	j	bfeq_nontail_cont.29872
bfeq_nontail_else.29871:
	addi	r0 r1 1
bfeq_nontail_cont.29872:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29873
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29874
beq_else.29873:
	addi	r0 r1 0
	lw	r30 r2 4
	sub	r2 r1 r25
	beq	r25 r0 beq_else.29875
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
	j	beq_cont.29876
beq_else.29875:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
beq_cont.29876:
beq_cont.29874:
	addi	r0 r1 0
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 0
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r3 r1
	addi	r0 r1 1
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r3 r1
	addi	r0 r1 2
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f0
	sll	r1 r1 2
	swoc1	f0 r3 r1
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
	sll	r7 r7 2
	lwoc1	r6 r7 f0
	sll	r5 r5 2
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
	sll	r7 r7 2
	lwoc1	r6 r7 f0
	sll	r5 r5 2
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
	sll	r7 r7 2
	lwoc1	r6 r7 f0
	sll	r5 r5 2
	swoc1	f0 r4 r5
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29878
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29879
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29880
	addi	r0 r4 4
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29881
	jr	r31
beq_tail_else.29881:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	lw	r1 r3 20
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	lw	r1 r3 16
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sw	r1 r30 0
	sw	r2 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f1 f0
	jal	min_caml_sqrt
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	lw	r1 r3 20
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	sub.s	f1 f2 f1
	lw	r1 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	swc1	f0 r30 12
	swc1	f1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f2 f0
	jal	min_caml_sqrt
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	lwc1	 r30 f1 12
	mul.s	f1 f1 f2
	mul.s	f0 f0 f3
	add.s	f2 f3 f2
	lui	r24 14545
	ori	r24 r24 46871
	mtc1	r24 f3
	abs.s	f1 f4
	sub.s	f3 f4 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29883
	addi	r0 r1 1
	j	bfle_nontail_cont.29884
bfle_nontail_else.29883:
	addi	r0 r1 0
bfle_nontail_cont.29884:
	addi	r0 r2 0
	swc1	f2 r30 20
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29885
	lui	r24 16752
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29886
beq_else.29885:
	div.s	f0 f1 f0
	abs.s	f0 f0
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_atan
	addi	r30 r30 -28
	lw	r30 r31 24
	lui	r24 16880
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	div.s	f0 f1 f0
beq_cont.29886:
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_floor
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	sub.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	lw	r1 r2 20
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f2
	sub.s	f1 f2 f1
	lw	r1 r1 16
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	swc1	f0 r30 28
	swc1	f1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov.s	f2 f0
	jal	min_caml_sqrt
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	mul.s	f1 f0 f0
	lui	r24 14545
	ori	r24 r24 46871
	mtc1	r24 f1
	lwc1	 r30 f2 20
	abs.s	f2 f3
	sub.s	f1 f3 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f1 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29887
	addi	r0 r1 1
	j	bfle_nontail_cont.29888
bfle_nontail_else.29887:
	addi	r0 r1 0
bfle_nontail_cont.29888:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29889
	lui	r24 16752
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29890
beq_else.29889:
	div.s	f0 f2 f0
	abs.s	f0 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_atan
	addi	r30 r30 -40
	lw	r30 r31 36
	lui	r24 16880
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	div.s	f0 f1 f0
beq_cont.29890:
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_floor
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	sub.s	f1 f0 f0
	lui	r24 15897
	ori	r24 r24 39322
	mtc1	r24 f1
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f2
	lwc1	 r30 f3 28
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29891
	addi	r0 r1 1
	j	bfle_nontail_cont.29892
bfle_nontail_else.29891:
	addi	r0 r1 0
bfle_nontail_cont.29892:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29893
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29894
beq_else.29893:
beq_cont.29894:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 2
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f1 f0 f0
	lui	r24 16025
	ori	r24 r24 39322
	mtc1	r24 f1
	div.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.29880:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	lw	r1 r3 20
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	lw	r1 r1 20
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	sub.s	f1 f2 f1
	mul.s	f0 f0 f0
	mul.s	f1 f1 f1
	add.s	f0 f1 f0
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_sqrt
	addi	r30 r30 -44
	lw	r30 r31 40
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_floor
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	sub.s	f1 f0 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	mul.s	f0 f1 f0
	swc1	f0 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_cos
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
	mul.s	f1 f0 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.29879:
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f0
	lui	r24 16000
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	sw	r2 r30 4
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_sin
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lui	r24 16000
	ori	r24 r24 0
	mtc1	r24 f2
	mul.s	f1 f2 f1
	swc1	f0 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 52
	mul.s	f1 f0 f0
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r2 0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r2 1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f0
	mul.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.29878:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	lw	r1 r3 20
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	lui	r24 15692
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f1
	sw	r1 r30 0
	sw	r2 r30 4
	swc1	f0 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov.s	f1 f0
	jal	min_caml_floor
	addi	r30 r30 -64
	lw	r30 r31 60
	lui	r24 16800
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	lwc1	 r30 f2 56
	sub.s	f2 f0 f0
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29898
	addi	r0 r1 1
	j	bfle_nontail_cont.29899
bfle_nontail_else.29898:
	addi	r0 r1 0
bfle_nontail_cont.29899:
	addi	r0 r2 2
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	lw	r30 r2 0
	lw	r2 r2 20
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	sub.s	f0 f1 f0
	lui	r24 15692
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f1
	sw	r1 r30 60
	swc1	f0 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	mov.s	f1 f0
	jal	min_caml_floor
	addi	r30 r30 -72
	lw	r30 r31 68
	lui	r24 16800
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	lwc1	 r30 f2 64
	sub.s	f2 f0 f0
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29900
	addi	r0 r1 1
	j	bfle_nontail_cont.29901
bfle_nontail_else.29900:
	addi	r0 r1 0
bfle_nontail_cont.29901:
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r3 1
	addi	r0 r4 0
	lw	r30 r5 60
	sub	r5 r4 r25
	beq	r25 r0 beq_else.29902
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29904
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29905
beq_else.29904:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.29905:
	j	beq_cont.29903
beq_else.29902:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29906
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29907
beq_else.29906:
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.29907:
beq_cont.29903:
	sll	r3 r1 2
	swoc1	f0 r2 r1
	jr	r31
add_light.3071:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29909
	addi	r0 r1 1
	j	bfle_nontail_cont.29910
bfle_nontail_else.29909:
	addi	r0 r1 0
bfle_nontail_cont.29910:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29911
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
	sll	r4 r4 2
	lwoc1	r1 r4 f3
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	sll	r3 r3 2
	swoc1	f3 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f3
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	sll	r3 r3 2
	swoc1	f3 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f3
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f4
	mul.s	f0 f4 f0
	add.s	f3 f0 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.29912
beq_else.29911:
beq_cont.29912:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29913
	addi	r0 r1 1
	j	bfle_nontail_cont.29914
bfle_nontail_else.29913:
	addi	r0 r1 0
bfle_nontail_cont.29914:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29915
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.29915:
	jr	r31
trace_reflections.3075:
	addi	r0 r3 0
	sub	r3 r1 r25
	blez	r25 ble_tail_else.29918
	jr	r31
ble_tail_else.29918:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r4 2
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
	sll	r6 r6 2
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
	sll	r7 r7 2
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
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29920
	addi	r0 r1 1
	j	bfle_nontail_cont.29921
bfle_nontail_else.29920:
	addi	r0 r1 0
bfle_nontail_cont.29921:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29922
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29924
	addi	r0 r1 1
	j	bfle_nontail_cont.29925
bfle_nontail_else.29924:
	addi	r0 r1 0
bfle_nontail_cont.29925:
	j	beq_cont.29923
beq_else.29922:
	addi	r0 r1 0
beq_cont.29923:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29926
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 20
	lw	r2 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29928
	j	beq_cont.29929
beq_else.29928:
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
	sll	r4 r4 2
	lwo	r3 r4 r3
	sll	r1 r1 2
	lwo	r3 r1 r1
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r1 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29930
	addi	r0 r5 99
	sw	r1 r30 24
	sw	r3 r30 28
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29932
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
	sll	r4 r8 2
	lwo	r7 r8 r7
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r6 r8 f0
	lw	r7 r8 20
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r8 r9 f1
	sub.s	f0 f1 f0
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r6 r8 f1
	lw	r7 r8 20
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r8 r9 f2
	sub.s	f1 f2 f1
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r6 r8 f2
	lw	r7 r6 20
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r6 r8 f3
	sub.s	f2 f3 f2
	lw	r5 r6 4
	sll	r4 r4 2
	lwo	r6 r4 r4
	lw	r7 r6 4
	addi	r0 r8 1
	sub	r6 r8 r25
	beq	r25 r0 beq_else.29934
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29936
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.29937
beq_else.29936:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29938
	addi	r0 r5 1
	j	bfle_nontail_cont.29939
bfle_nontail_else.29938:
	addi	r0 r5 0
bfle_nontail_cont.29939:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29940
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
	sll	r7 r7 2
	lwoc1	r4 r7 f3
	mul.s	f3 f0 f0
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r4 r7 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r7 3
	sll	r7 r7 2
	lwoc1	r4 r7 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r6 r4 2
	swoc1	f0 r5 r4
	addi	r0 r1 1
	j	beq_cont.29941
beq_else.29940:
	addi	r0 r1 0
beq_cont.29941:
beq_cont.29937:
	j	beq_cont.29935
beq_else.29934:
	lw	r5 r5 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29935:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29942
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
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
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
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29948
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29950
	addi	r0 r1 1
	j	beq_cont.29951
beq_else.29950:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29952
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29954
	addi	r0 r1 1
	j	beq_cont.29955
beq_else.29954:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29956
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29958
	addi	r0 r1 1
	j	beq_cont.29959
beq_else.29958:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29960
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29962
	addi	r0 r1 1
	j	beq_cont.29963
beq_else.29962:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29964
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29966
	addi	r0 r1 1
	j	beq_cont.29967
beq_else.29966:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29968
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29970
	addi	r0 r1 1
	j	beq_cont.29971
beq_else.29970:
	addi	r0 r1 7
	lw	r30 r2 24
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29971:
	j	beq_cont.29969
beq_else.29968:
	addi	r0 r1 0
beq_cont.29969:
beq_cont.29967:
	j	beq_cont.29965
beq_else.29964:
	addi	r0 r1 0
beq_cont.29965:
beq_cont.29963:
	j	beq_cont.29961
beq_else.29960:
	addi	r0 r1 0
beq_cont.29961:
beq_cont.29959:
	j	beq_cont.29957
beq_else.29956:
	addi	r0 r1 0
beq_cont.29957:
beq_cont.29955:
	j	beq_cont.29953
beq_else.29952:
	addi	r0 r1 0
beq_cont.29953:
beq_cont.29951:
	j	beq_cont.29949
beq_else.29948:
	addi	r0 r1 0
beq_cont.29949:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29972
	addi	r0 r1 1
	j	beq_cont.29973
beq_else.29972:
	addi	r0 r1 0
beq_cont.29973:
	j	beq_cont.29947
beq_else.29946:
	addi	r0 r1 0
beq_cont.29947:
	j	beq_cont.29943
beq_else.29942:
	addi	r0 r1 0
beq_cont.29943:
	j	beq_cont.29933
beq_else.29932:
	addi	r0 r1 1
beq_cont.29933:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29974
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29976
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29978
	addi	r0 r1 1
	j	beq_cont.29979
beq_else.29978:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29980
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29982
	addi	r0 r1 1
	j	beq_cont.29983
beq_else.29982:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29984
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29986
	addi	r0 r1 1
	j	beq_cont.29987
beq_else.29986:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29988
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29990
	addi	r0 r1 1
	j	beq_cont.29991
beq_else.29990:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29992
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29994
	addi	r0 r1 1
	j	beq_cont.29995
beq_else.29994:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29996
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29998
	addi	r0 r1 1
	j	beq_cont.29999
beq_else.29998:
	addi	r0 r1 7
	lw	r30 r2 24
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29999:
	j	beq_cont.29997
beq_else.29996:
	addi	r0 r1 0
beq_cont.29997:
beq_cont.29995:
	j	beq_cont.29993
beq_else.29992:
	addi	r0 r1 0
beq_cont.29993:
beq_cont.29991:
	j	beq_cont.29989
beq_else.29988:
	addi	r0 r1 0
beq_cont.29989:
beq_cont.29987:
	j	beq_cont.29985
beq_else.29984:
	addi	r0 r1 0
beq_cont.29985:
beq_cont.29983:
	j	beq_cont.29981
beq_else.29980:
	addi	r0 r1 0
beq_cont.29981:
beq_cont.29979:
	j	beq_cont.29977
beq_else.29976:
	addi	r0 r1 0
beq_cont.29977:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30000
	addi	r0 r1 1
	j	beq_cont.30001
beq_else.30000:
	addi	r0 r1 1
	lw	r30 r2 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.30001:
	j	beq_cont.29975
beq_else.29974:
	addi	r0 r1 1
	lw	r30 r2 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29975:
	j	beq_cont.29931
beq_else.29930:
	addi	r0 r1 0
beq_cont.29931:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30002
	j	beq_cont.30003
beq_else.30002:
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
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r1 2
	sll	r1 r1 2
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
	sll	r2 r2 2
	lw	r30 r3 8
	lwoc1	r3 r2 f3
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f4
	mul.s	f3 f4 f3
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f4
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f4
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	mul.s	f1 f3 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30004
	addi	r0 r1 1
	j	bfle_nontail_cont.30005
bfle_nontail_else.30004:
	addi	r0 r1 0
bfle_nontail_cont.30005:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30006
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
	sll	r5 r5 2
	lwoc1	r1 r5 f3
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	sll	r4 r4 2
	swoc1	f3 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r1 r5 f3
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	sll	r4 r4 2
	swoc1	f3 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r1 r5 f3
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f0
	add.s	f3 f0 f0
	sll	r4 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.30007
beq_else.30006:
beq_cont.30007:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30008
	addi	r0 r1 1
	j	bfle_nontail_cont.30009
bfle_nontail_else.30008:
	addi	r0 r1 0
bfle_nontail_cont.30009:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30010
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
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	add.s	f3 f0 f3
	sll	r2 r2 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	add.s	f3 f0 f3
	sll	r2 r2 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	add.s	f3 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.30011
beq_else.30010:
beq_cont.30011:
beq_cont.30003:
beq_cont.29929:
	j	beq_cont.29927
beq_else.29926:
beq_cont.29927:
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30012
	jr	r31
ble_tail_else.30012:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r3 2
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
	sll	r5 r5 2
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
	sll	r6 r6 2
	lwo	r5 r6 r5
	sll	r4 r4 2
	lwo	r5 r4 r4
	addi	r0 r6 0
	sll	r6 r6 2
	lwo	r4 r6 r6
	addi	r0 r7 -1
	sw	r1 r30 32
	sw	r3 r30 36
	sw	r2 r30 40
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30014
	addi	r0 r7 99
	sw	r5 r30 44
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30016
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
	beq	r25 r0 beq_else.30018
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30020
	addi	r0 r1 1
	j	bfle_nontail_cont.30021
bfle_nontail_else.30020:
	addi	r0 r1 0
bfle_nontail_cont.30021:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30022
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30024
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30026
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30028
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30030
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	j	beq_cont.30031
beq_else.30030:
beq_cont.30031:
	j	beq_cont.30029
beq_else.30028:
beq_cont.30029:
	j	beq_cont.30027
beq_else.30026:
beq_cont.30027:
	j	beq_cont.30025
beq_else.30024:
beq_cont.30025:
	j	beq_cont.30023
beq_else.30022:
beq_cont.30023:
	j	beq_cont.30019
beq_else.30018:
beq_cont.30019:
	j	beq_cont.30017
beq_else.30016:
	addi	r0 r6 1
	sll	r6 r6 2
	lwo	r4 r6 r6
	addi	r0 r7 -1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30032
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r6 r6 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30034
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30036
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30038
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	j	beq_cont.30039
beq_else.30038:
beq_cont.30039:
	j	beq_cont.30037
beq_else.30036:
beq_cont.30037:
	j	beq_cont.30035
beq_else.30034:
beq_cont.30035:
	j	beq_cont.30033
beq_else.30032:
beq_cont.30033:
beq_cont.30017:
	addi	r0 r1 1
	lw	r30 r2 44
	lw	r30 r3 36
	sw	r31 r30 52
	addi	r30 r30 56
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.30015
beq_else.30014:
beq_cont.30015:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30040
	addi	r0 r1 1
	j	bfle_nontail_cont.30041
bfle_nontail_else.30040:
	addi	r0 r1 0
bfle_nontail_cont.30041:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30042
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30044
	addi	r0 r1 1
	j	bfle_nontail_cont.30045
bfle_nontail_else.30044:
	addi	r0 r1 0
bfle_nontail_cont.30045:
	j	beq_cont.30043
beq_else.30042:
	addi	r0 r1 0
beq_cont.30043:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30046
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	sll	r2 r2 2
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 40
	lw	r2 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30048
	j	beq_cont.30049
beq_else.30048:
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
	sll	r4 r4 2
	lwo	r3 r4 r3
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r3
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30050
	j	beq_cont.30051
beq_else.30050:
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
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r1 2
	sll	r1 r1 2
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
	sll	r2 r2 2
	lw	r30 r3 8
	lwoc1	r3 r2 f3
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f4
	mul.s	f3 f4 f3
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f4
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f4
	addi	r0 r2 2
	sll	r2 r2 2
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
beq_cont.30051:
beq_cont.30049:
	j	beq_cont.30047
beq_else.30046:
beq_cont.30047:
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
	blez	r25 ble_tail_else.30052
	jr	r31
ble_tail_else.30052:
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
	sll	r6 r6 2
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
	sll	r7 r7 2
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
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30054
	addi	r0 r1 1
	j	bfle_nontail_cont.30055
bfle_nontail_else.30054:
	addi	r0 r1 0
bfle_nontail_cont.30055:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30056
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30058
	addi	r0 r1 1
	j	bfle_nontail_cont.30059
bfle_nontail_else.30058:
	addi	r0 r1 0
bfle_nontail_cont.30059:
	j	beq_cont.30057
beq_else.30056:
	addi	r0 r1 0
beq_cont.30057:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30060
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r3 2
	lwo	r2 r3 r2
	lw	r2 r3 8
	lw	r2 r4 28
	addi	r0 r5 0
	sll	r5 r5 2
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
	beq	r25 r0 beq_else.30061
	addi	r0 r5 2
	sub	r4 r5 r25
	beq	r25 r0 beq_else.30063
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r2
	jal	get_nvector_second.3063
	addi	r30 r30 -44
	lw	r30 r31 40
	j	beq_cont.30064
beq_else.30063:
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
	sll	r7 r7 2
	lwoc1	r6 r7 f2
	neg.s	f2 f2
	sll	r5 r5 2
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
	sll	r7 r7 2
	lwoc1	r6 r7 f2
	neg.s	f2 f2
	sll	r5 r5 2
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
	sll	r7 r7 2
	lwoc1	r6 r7 f2
	neg.s	f2 f2
	sll	r5 r5 2
	swoc1	f2 r4 r5
beq_cont.30064:
	j	beq_cont.30062
beq_else.30061:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r4
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	addi	r0 r6 0
	sll	r6 r6 2
	swoc1	f2 r5 r6
	addi	r0 r6 1
	sll	r6 r6 2
	swoc1	f2 r5 r6
	addi	r0 r6 2
	sll	r6 r6 2
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
	sll	r4 r4 2
	lw	r30 r7 12
	lwoc1	r7 r4 f2
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f2 f3 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.30065
	addi	r0 r4 0
	j	bfeq_nontail_cont.30066
bfeq_nontail_else.30065:
	addi	r0 r4 1
bfeq_nontail_cont.30066:
	addi	r0 r8 0
	sub	r4 r8 r25
	beq	r25 r0 beq_else.30067
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	j	beq_cont.30068
beq_else.30067:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f2 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30069
	addi	r0 r4 1
	j	bfle_nontail_cont.30070
bfle_nontail_else.30069:
	addi	r0 r4 0
bfle_nontail_cont.30070:
	addi	r0 r8 0
	sub	r4 r8 r25
	beq	r25 r0 beq_else.30071
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	j	beq_cont.30072
beq_else.30071:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f2
beq_cont.30072:
beq_cont.30068:
	neg.s	f2 f2
	sll	r6 r4 2
	swoc1	f2 r5 r4
beq_cont.30062:
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
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r2 2
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 20
	sll	r2 r3 2
	lw	r30 r4 16
	swo	r1 r4 r3
	lw	r30 r1 4
	lw	r1 r3 4
	sll	r2 r5 2
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
	sll	r7 r7 2
	lwoc1	r5 r7 f0
	sll	r6 r6 2
	swoc1	f0 r3 r6
	addi	r0 r6 1
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r5 r7 f0
	sll	r6 r6 2
	swoc1	f0 r3 r6
	addi	r0 r6 2
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r5 r7 f0
	sll	r6 r5 2
	swoc1	f0 r3 r5
	lw	r1 r3 12
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r30 r5 36
	lw	r5 r6 28
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r6 r7 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30073
	addi	r0 r6 1
	j	bfle_nontail_cont.30074
bfle_nontail_else.30073:
	addi	r0 r6 0
bfle_nontail_cont.30074:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30075
	addi	r0 r6 0
	sll	r2 r7 2
	swo	r6 r3 r7
	j	beq_cont.30076
beq_else.30075:
	addi	r0 r6 1
	sll	r2 r7 2
	swo	r6 r3 r7
	lw	r1 r3 16
	sll	r2 r6 2
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
	sll	r9 r9 2
	lwoc1	r7 r9 f0
	sll	r8 r8 2
	swoc1	f0 r6 r8
	addi	r0 r8 1
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r7 r9 f0
	sll	r8 r8 2
	swoc1	f0 r6 r8
	addi	r0 r8 2
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r7 r9 f0
	sll	r8 r7 2
	swoc1	f0 r6 r7
	sll	r2 r6 2
	lwo	r3 r6 r3
	lui	r24 15232
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 28
	mul.s	f0 f1 f0
	addi	r0 r6 0
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r3 r7 f2
	mul.s	f2 f0 f2
	sll	r6 r6 2
	swoc1	f2 r3 r6
	addi	r0 r6 1
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r3 r7 f2
	mul.s	f2 f0 f2
	sll	r6 r6 2
	swoc1	f2 r3 r6
	addi	r0 r6 2
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r3 r7 f2
	mul.s	f2 f0 f0
	sll	r6 r6 2
	swoc1	f0 r3 r6
	lw	r1 r3 28
	sll	r2 r6 2
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
	sll	r8 r8 2
	lwoc1	r6 r8 f0
	sll	r7 r7 2
	swoc1	f0 r3 r7
	addi	r0 r7 1
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r6 r8 f0
	sll	r7 r7 2
	swoc1	f0 r3 r7
	addi	r0 r7 2
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r6 r8 f0
	sll	r7 r6 2
	swoc1	f0 r3 r6
beq_cont.30076:
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
	sll	r6 r6 2
	lw	r30 r7 12
	lwoc1	r7 r6 f1
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r3 r6 f2
	mul.s	f1 f2 f1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r7 r6 f2
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r3 r6 f3
	mul.s	f2 f3 f2
	add.s	f1 f2 f1
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r7 r6 f2
	addi	r0 r6 2
	sll	r6 r6 2
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
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r3 r8 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r6 r6 2
	swoc1	f1 r7 r6
	addi	r0 r6 1
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r3 r8 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r6 r6 2
	swoc1	f1 r7 r6
	addi	r0 r6 2
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r3 r8 f2
	mul.s	f0 f2 f0
	add.s	f1 f0 f0
	sll	r6 r3 2
	swoc1	f0 r7 r3
	lw	r5 r3 28
	addi	r0 r6 1
	sll	r6 r6 2
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
	sll	r8 r8 2
	lwo	r6 r8 r6
	sll	r3 r3 2
	lwo	r6 r3 r3
	addi	r0 r8 0
	sll	r8 r8 2
	lwo	r3 r8 r8
	addi	r0 r9 -1
	swc1	f0 r30 40
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30077
	addi	r0 r9 99
	sw	r3 r30 44
	sw	r6 r30 48
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30079
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
	sll	r8 r12 2
	lwo	r11 r12 r11
	addi	r0 r12 0
	sll	r12 r12 2
	lwoc1	r10 r12 f2
	lw	r11 r12 20
	addi	r0 r13 0
	sll	r13 r13 2
	lwoc1	r12 r13 f3
	sub.s	f2 f3 f2
	addi	r0 r12 1
	sll	r12 r12 2
	lwoc1	r10 r12 f3
	lw	r11 r12 20
	addi	r0 r13 1
	sll	r13 r13 2
	lwoc1	r12 r13 f4
	sub.s	f3 f4 f3
	addi	r0 r12 2
	sll	r12 r12 2
	lwoc1	r10 r12 f4
	lw	r11 r10 20
	addi	r0 r12 2
	sll	r12 r12 2
	lwoc1	r10 r12 f5
	sub.s	f4 f5 f4
	lw	r9 r10 4
	sll	r8 r8 2
	lwo	r10 r8 r8
	lw	r11 r10 4
	addi	r0 r12 1
	sub	r10 r12 r25
	beq	r25 r0 beq_else.30081
	addi	r0 r9 2
	sub	r10 r9 r25
	beq	r25 r0 beq_else.30083
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
	j	beq_cont.30084
beq_else.30083:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r8 r9 f6
	sub.s	f5 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30085
	addi	r0 r9 1
	j	bfle_nontail_cont.30086
bfle_nontail_else.30085:
	addi	r0 r9 0
bfle_nontail_cont.30086:
	addi	r0 r10 0
	sub	r9 r10 r25
	beq	r25 r0 beq_else.30087
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
	sll	r11 r11 2
	lwoc1	r8 r11 f5
	mul.s	f5 f2 f2
	addi	r0 r11 2
	sll	r11 r11 2
	lwoc1	r8 r11 f5
	mul.s	f5 f3 f3
	add.s	f2 f3 f2
	addi	r0 r11 3
	sll	r11 r11 2
	lwoc1	r8 r11 f3
	mul.s	f3 f4 f3
	add.s	f2 f3 f2
	sll	r10 r8 2
	swoc1	f2 r9 r8
	addi	r0 r1 1
	j	beq_cont.30088
beq_else.30087:
	addi	r0 r1 0
beq_cont.30088:
beq_cont.30084:
	j	beq_cont.30082
beq_else.30081:
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
beq_cont.30082:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30089
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
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30091
	addi	r0 r1 1
	j	bfle_nontail_cont.30092
bfle_nontail_else.30091:
	addi	r0 r1 0
bfle_nontail_cont.30092:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30093
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30095
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30097
	addi	r0 r1 1
	j	beq_cont.30098
beq_else.30097:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30099
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30101
	addi	r0 r1 1
	j	beq_cont.30102
beq_else.30101:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30103
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30105
	addi	r0 r1 1
	j	beq_cont.30106
beq_else.30105:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30107
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30109
	addi	r0 r1 1
	j	beq_cont.30110
beq_else.30109:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30111
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30113
	addi	r0 r1 1
	j	beq_cont.30114
beq_else.30113:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30115
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30117
	addi	r0 r1 1
	j	beq_cont.30118
beq_else.30117:
	addi	r0 r1 7
	lw	r30 r2 44
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.30118:
	j	beq_cont.30116
beq_else.30115:
	addi	r0 r1 0
beq_cont.30116:
beq_cont.30114:
	j	beq_cont.30112
beq_else.30111:
	addi	r0 r1 0
beq_cont.30112:
beq_cont.30110:
	j	beq_cont.30108
beq_else.30107:
	addi	r0 r1 0
beq_cont.30108:
beq_cont.30106:
	j	beq_cont.30104
beq_else.30103:
	addi	r0 r1 0
beq_cont.30104:
beq_cont.30102:
	j	beq_cont.30100
beq_else.30099:
	addi	r0 r1 0
beq_cont.30100:
beq_cont.30098:
	j	beq_cont.30096
beq_else.30095:
	addi	r0 r1 0
beq_cont.30096:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30119
	addi	r0 r1 1
	j	beq_cont.30120
beq_else.30119:
	addi	r0 r1 0
beq_cont.30120:
	j	beq_cont.30094
beq_else.30093:
	addi	r0 r1 0
beq_cont.30094:
	j	beq_cont.30090
beq_else.30089:
	addi	r0 r1 0
beq_cont.30090:
	j	beq_cont.30080
beq_else.30079:
	addi	r0 r1 1
beq_cont.30080:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30121
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30123
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30125
	addi	r0 r1 1
	j	beq_cont.30126
beq_else.30125:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30127
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30129
	addi	r0 r1 1
	j	beq_cont.30130
beq_else.30129:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30131
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30133
	addi	r0 r1 1
	j	beq_cont.30134
beq_else.30133:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30135
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30137
	addi	r0 r1 1
	j	beq_cont.30138
beq_else.30137:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30139
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30141
	addi	r0 r1 1
	j	beq_cont.30142
beq_else.30141:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30143
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30145
	addi	r0 r1 1
	j	beq_cont.30146
beq_else.30145:
	addi	r0 r1 7
	lw	r30 r2 44
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.30146:
	j	beq_cont.30144
beq_else.30143:
	addi	r0 r1 0
beq_cont.30144:
beq_cont.30142:
	j	beq_cont.30140
beq_else.30139:
	addi	r0 r1 0
beq_cont.30140:
beq_cont.30138:
	j	beq_cont.30136
beq_else.30135:
	addi	r0 r1 0
beq_cont.30136:
beq_cont.30134:
	j	beq_cont.30132
beq_else.30131:
	addi	r0 r1 0
beq_cont.30132:
beq_cont.30130:
	j	beq_cont.30128
beq_else.30127:
	addi	r0 r1 0
beq_cont.30128:
beq_cont.30126:
	j	beq_cont.30124
beq_else.30123:
	addi	r0 r1 0
beq_cont.30124:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30147
	addi	r0 r1 1
	j	beq_cont.30148
beq_else.30147:
	addi	r0 r1 1
	lw	r30 r2 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.30148:
	j	beq_cont.30122
beq_else.30121:
	addi	r0 r1 1
	lw	r30 r2 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.30122:
	j	beq_cont.30078
beq_else.30077:
	addi	r0 r1 0
beq_cont.30078:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30149
	j	beq_cont.30150
beq_else.30149:
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
	sll	r3 r3 2
	lwoc1	r1 r3 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r1 2
	sll	r1 r1 2
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
	sll	r2 r2 2
	lw	r30 r3 12
	lwoc1	r3 r2 f2
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mul.s	f2 f3 f2
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f3
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f4
	mul.s	f3 f4 f3
	add.s	f2 f3 f2
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f3
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f4
	mul.s	f3 f4 f3
	add.s	f2 f3 f2
	neg.s	f2 f2
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30151
	addi	r0 r1 1
	j	bfle_nontail_cont.30152
bfle_nontail_else.30151:
	addi	r0 r1 0
bfle_nontail_cont.30152:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30153
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
	sll	r5 r5 2
	lwoc1	r1 r5 f3
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	sll	r4 r4 2
	swoc1	f3 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r1 r5 f3
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f4
	add.s	f3 f4 f3
	sll	r4 r4 2
	swoc1	f3 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r1 r5 f3
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r2 r5 f4
	mul.s	f0 f4 f0
	add.s	f3 f0 f0
	sll	r4 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.30154
beq_else.30153:
beq_cont.30154:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30155
	addi	r0 r1 1
	j	bfle_nontail_cont.30156
bfle_nontail_else.30155:
	addi	r0 r1 0
bfle_nontail_cont.30156:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30157
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
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	add.s	f3 f0 f3
	sll	r2 r2 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	add.s	f3 f0 f3
	sll	r2 r2 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	add.s	f3 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.30158
beq_else.30157:
beq_cont.30158:
beq_cont.30150:
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
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	sll	r3 r3 2
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30159
	j	ble_nontail_cont.30160
ble_nontail_else.30159:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r3 2
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
	sll	r5 r5 2
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
	sll	r6 r6 2
	lwo	r5 r6 r5
	sll	r4 r4 2
	lwo	r5 r4 r4
	addi	r0 r6 0
	sll	r6 r6 2
	lwo	r4 r6 r6
	addi	r0 r7 -1
	sw	r1 r30 52
	sw	r3 r30 56
	sw	r2 r30 60
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30161
	addi	r0 r7 99
	sw	r5 r30 64
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30163
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
	beq	r25 r0 beq_else.30165
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30167
	addi	r0 r1 1
	j	bfle_nontail_cont.30168
bfle_nontail_else.30167:
	addi	r0 r1 0
bfle_nontail_cont.30168:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30169
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30171
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30173
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30175
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30177
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	sll	r1 r1 2
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
	j	beq_cont.30178
beq_else.30177:
beq_cont.30178:
	j	beq_cont.30176
beq_else.30175:
beq_cont.30176:
	j	beq_cont.30174
beq_else.30173:
beq_cont.30174:
	j	beq_cont.30172
beq_else.30171:
beq_cont.30172:
	j	beq_cont.30170
beq_else.30169:
beq_cont.30170:
	j	beq_cont.30166
beq_else.30165:
beq_cont.30166:
	j	beq_cont.30164
beq_else.30163:
	addi	r0 r6 1
	sll	r6 r6 2
	lwo	r4 r6 r6
	addi	r0 r7 -1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30179
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	sll	r6 r6 2
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
	sll	r1 r1 2
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30181
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30183
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30185
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	sll	r1 r1 2
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
	j	beq_cont.30186
beq_else.30185:
beq_cont.30186:
	j	beq_cont.30184
beq_else.30183:
beq_cont.30184:
	j	beq_cont.30182
beq_else.30181:
beq_cont.30182:
	j	beq_cont.30180
beq_else.30179:
beq_cont.30180:
beq_cont.30164:
	addi	r0 r1 1
	lw	r30 r2 64
	lw	r30 r3 56
	sw	r31 r30 72
	addi	r30 r30 76
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -76
	lw	r30 r31 72
	j	beq_cont.30162
beq_else.30161:
beq_cont.30162:
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30187
	addi	r0 r1 1
	j	bfle_nontail_cont.30188
bfle_nontail_else.30187:
	addi	r0 r1 0
bfle_nontail_cont.30188:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30189
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30191
	addi	r0 r1 1
	j	bfle_nontail_cont.30192
bfle_nontail_else.30191:
	addi	r0 r1 0
bfle_nontail_cont.30192:
	j	beq_cont.30190
beq_else.30189:
	addi	r0 r1 0
beq_cont.30190:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30193
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	sll	r2 r2 2
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 60
	lw	r2 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30195
	j	beq_cont.30196
beq_else.30195:
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
	sll	r4 r4 2
	lwo	r3 r4 r3
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r2 r3
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -76
	lw	r30 r31 72
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30197
	j	beq_cont.30198
beq_else.30197:
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
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r1 2
	sll	r1 r1 2
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
	sll	r2 r2 2
	lw	r30 r3 12
	lwoc1	r3 r2 f3
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f4
	mul.s	f3 f4 f3
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f4
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f3 f4 f3
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f4
	addi	r0 r2 2
	sll	r2 r2 2
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
beq_cont.30198:
beq_cont.30196:
	j	beq_cont.30194
beq_else.30193:
beq_cont.30194:
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
ble_nontail_cont.30160:
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30199
	addi	r0 r1 1
	j	bfle_nontail_cont.30200
bfle_nontail_else.30199:
	addi	r0 r1 0
bfle_nontail_cont.30200:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30201
	addi	r0 r1 4
	lw	r30 r2 20
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30202
	addi	r0 r1 1
	add	r2 r1 r1
	addi	r0 r3 -1
	sll	r1 r1 2
	lw	r30 r4 16
	swo	r3 r4 r1
	j	ble_nontail_cont.30203
ble_nontail_else.30202:
ble_nontail_cont.30203:
	addi	r0 r1 2
	lw	r30 r3 24
	sub	r3 r1 r25
	beq	r25 r0 beq_tail_else.30204
	jr	r31
beq_tail_else.30204:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r30 r1 36
	lw	r1 r1 28
	addi	r0 r3 0
	sll	r3 r3 2
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
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	lwc1	 r30 f2 0
	add.s	f2 f1 f1
	lw	r30 r2 12
	lw	r30 r3 4
	j	trace_ray.3080
beq_tail_else.30201:
	jr	r31
beq_tail_else.30060:
	addi	r0 r1 -1
	lw	r30 r2 20
	sll	r2 r3 2
	lw	r30 r4 16
	swo	r1 r4 r3
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.30207
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 12
	lwoc1	r3 r2 f0
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30208
	addi	r0 r1 1
	j	bfle_nontail_cont.30209
bfle_nontail_else.30208:
	addi	r0 r1 0
bfle_nontail_cont.30209:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30210
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
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.30210:
	jr	r31
beq_tail_else.30207:
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
	sll	r3 r3 2
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
	sll	r4 r4 2
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
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30214
	addi	r0 r1 1
	j	bfle_nontail_cont.30215
bfle_nontail_else.30214:
	addi	r0 r1 0
bfle_nontail_cont.30215:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30216
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30218
	addi	r0 r1 1
	j	bfle_nontail_cont.30219
bfle_nontail_else.30218:
	addi	r0 r1 0
bfle_nontail_cont.30219:
	j	beq_cont.30217
beq_else.30216:
	addi	r0 r1 0
beq_cont.30217:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30220
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 4
	lw	r2 r2 0
	lw	r1 r3 4
	addi	r0 r4 1
	sw	r1 r30 8
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30221
	addi	r0 r2 2
	sub	r3 r2 r25
	beq	r25 r0 beq_else.30223
	sw	r31 r30 12
	addi	r30 r30 16
	jal	get_nvector_second.3063
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.30224
beq_else.30223:
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
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	sll	r3 r3 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	sll	r3 r3 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
beq_cont.30224:
	j	beq_cont.30222
beq_else.30221:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r5 0
	sll	r5 r5 2
	swoc1	f0 r4 r5
	addi	r0 r5 1
	sll	r5 r5 2
	swoc1	f0 r4 r5
	addi	r0 r5 2
	sll	r5 r5 2
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
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.30225
	addi	r0 r2 0
	j	bfeq_nontail_cont.30226
bfeq_nontail_else.30225:
	addi	r0 r2 1
bfeq_nontail_cont.30226:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30227
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30228
beq_else.30227:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30229
	addi	r0 r2 1
	j	bfle_nontail_cont.30230
bfle_nontail_else.30229:
	addi	r0 r2 0
bfle_nontail_cont.30230:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30231
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30232
beq_else.30231:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30232:
beq_cont.30228:
	neg.s	f0 f0
	sll	r5 r2 2
	swoc1	f0 r4 r2
beq_cont.30222:
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r1 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30233
	addi	r0 r4 99
	sw	r1 r30 12
	sw	r2 r30 16
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30235
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
	sll	r3 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r5 r7 f0
	lw	r6 r7 20
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	sub.s	f0 f1 f0
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r5 r7 f1
	lw	r6 r7 20
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r7 r8 f2
	sub.s	f1 f2 f1
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r5 r7 f2
	lw	r6 r5 20
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r5 r7 f3
	sub.s	f2 f3 f2
	lw	r4 r5 4
	sll	r3 r3 2
	lwo	r5 r3 r3
	lw	r6 r5 4
	addi	r0 r7 1
	sub	r5 r7 r25
	beq	r25 r0 beq_else.30237
	addi	r0 r4 2
	sub	r5 r4 r25
	beq	r25 r0 beq_else.30239
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	mov	r1 r6
	jal	solver_second_fast.2950
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.30240
beq_else.30239:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30241
	addi	r0 r4 1
	j	bfle_nontail_cont.30242
bfle_nontail_else.30241:
	addi	r0 r4 0
bfle_nontail_cont.30242:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.30243
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
	sll	r6 r6 2
	lwoc1	r3 r6 f3
	mul.s	f3 f0 f0
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r6 3
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r3 2
	swoc1	f0 r4 r3
	addi	r0 r1 1
	j	beq_cont.30244
beq_else.30243:
	addi	r0 r1 0
beq_cont.30244:
beq_cont.30240:
	j	beq_cont.30238
beq_else.30237:
	lw	r4 r4 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r4
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30238:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30245
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
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30247
	addi	r0 r1 1
	j	bfle_nontail_cont.30248
bfle_nontail_else.30247:
	addi	r0 r1 0
bfle_nontail_cont.30248:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30249
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30251
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30253
	addi	r0 r1 1
	j	beq_cont.30254
beq_else.30253:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30255
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30257
	addi	r0 r1 1
	j	beq_cont.30258
beq_else.30257:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30259
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30261
	addi	r0 r1 1
	j	beq_cont.30262
beq_else.30261:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30263
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30265
	addi	r0 r1 1
	j	beq_cont.30266
beq_else.30265:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30267
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30269
	addi	r0 r1 1
	j	beq_cont.30270
beq_else.30269:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30271
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30273
	addi	r0 r1 1
	j	beq_cont.30274
beq_else.30273:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30274:
	j	beq_cont.30272
beq_else.30271:
	addi	r0 r1 0
beq_cont.30272:
beq_cont.30270:
	j	beq_cont.30268
beq_else.30267:
	addi	r0 r1 0
beq_cont.30268:
beq_cont.30266:
	j	beq_cont.30264
beq_else.30263:
	addi	r0 r1 0
beq_cont.30264:
beq_cont.30262:
	j	beq_cont.30260
beq_else.30259:
	addi	r0 r1 0
beq_cont.30260:
beq_cont.30258:
	j	beq_cont.30256
beq_else.30255:
	addi	r0 r1 0
beq_cont.30256:
beq_cont.30254:
	j	beq_cont.30252
beq_else.30251:
	addi	r0 r1 0
beq_cont.30252:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30275
	addi	r0 r1 1
	j	beq_cont.30276
beq_else.30275:
	addi	r0 r1 0
beq_cont.30276:
	j	beq_cont.30250
beq_else.30249:
	addi	r0 r1 0
beq_cont.30250:
	j	beq_cont.30246
beq_else.30245:
	addi	r0 r1 0
beq_cont.30246:
	j	beq_cont.30236
beq_else.30235:
	addi	r0 r1 1
beq_cont.30236:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30277
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30279
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30281
	addi	r0 r1 1
	j	beq_cont.30282
beq_else.30281:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30283
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30285
	addi	r0 r1 1
	j	beq_cont.30286
beq_else.30285:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30287
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30289
	addi	r0 r1 1
	j	beq_cont.30290
beq_else.30289:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30291
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30293
	addi	r0 r1 1
	j	beq_cont.30294
beq_else.30293:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30295
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30297
	addi	r0 r1 1
	j	beq_cont.30298
beq_else.30297:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30299
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30301
	addi	r0 r1 1
	j	beq_cont.30302
beq_else.30301:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30302:
	j	beq_cont.30300
beq_else.30299:
	addi	r0 r1 0
beq_cont.30300:
beq_cont.30298:
	j	beq_cont.30296
beq_else.30295:
	addi	r0 r1 0
beq_cont.30296:
beq_cont.30294:
	j	beq_cont.30292
beq_else.30291:
	addi	r0 r1 0
beq_cont.30292:
beq_cont.30290:
	j	beq_cont.30288
beq_else.30287:
	addi	r0 r1 0
beq_cont.30288:
beq_cont.30286:
	j	beq_cont.30284
beq_else.30283:
	addi	r0 r1 0
beq_cont.30284:
beq_cont.30282:
	j	beq_cont.30280
beq_else.30279:
	addi	r0 r1 0
beq_cont.30280:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30303
	addi	r0 r1 1
	j	beq_cont.30304
beq_else.30303:
	addi	r0 r1 1
	lw	r30 r2 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30304:
	j	beq_cont.30278
beq_else.30277:
	addi	r0 r1 1
	lw	r30 r2 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30278:
	j	beq_cont.30234
beq_else.30233:
	addi	r0 r1 0
beq_cont.30234:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30305
	jr	r31
beq_tail_else.30305:
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
	sll	r3 r3 2
	lwoc1	r1 r3 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30307
	addi	r0 r1 1
	j	bfle_nontail_cont.30308
bfle_nontail_else.30307:
	addi	r0 r1 0
bfle_nontail_cont.30308:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30309
	j	beq_cont.30310
beq_else.30309:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30310:
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
	sll	r3 r3 2
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
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f0
	add.s	f1 f0 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.30220:
	jr	r31
iter_trace_diffuse_rays.3089:
	addi	r0 r5 0
	sub	r5 r4 r25
	blez	r25 ble_tail_else.30313
	jr	r31
ble_tail_else.30313:
	sll	r4 r5 2
	lwo	r1 r5 r5
	lw	r5 r5 0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r5 r6 f0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r2 r6 f1
	mul.s	f0 f1 f0
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r5 r6 f1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r2 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r5 r6 f1
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r2 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30315
	addi	r0 r5 1
	j	bfle_nontail_cont.30316
bfle_nontail_else.30315:
	addi	r0 r5 0
bfle_nontail_cont.30316:
	addi	r0 r6 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r4 r30 12
	sub	r5 r6 r25
	beq	r25 r0 beq_else.30317
	addi	r0 r5 1
	add	r4 r5 r5
	sll	r5 r5 2
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
	sll	r7 r7 2
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
	sll	r8 r8 2
	lwo	r7 r8 r7
	sll	r6 r6 2
	lwo	r7 r6 r6
	addi	r0 r8 0
	sll	r8 r8 2
	lwo	r6 r8 r8
	addi	r0 r9 -1
	swc1	f0 r30 16
	sw	r5 r30 20
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30319
	addi	r0 r9 99
	sw	r7 r30 24
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30321
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
	beq	r25 r0 beq_else.30323
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30325
	addi	r0 r1 1
	j	bfle_nontail_cont.30326
bfle_nontail_else.30325:
	addi	r0 r1 0
bfle_nontail_cont.30326:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30327
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30329
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30331
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30333
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30335
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	j	beq_cont.30336
beq_else.30335:
beq_cont.30336:
	j	beq_cont.30334
beq_else.30333:
beq_cont.30334:
	j	beq_cont.30332
beq_else.30331:
beq_cont.30332:
	j	beq_cont.30330
beq_else.30329:
beq_cont.30330:
	j	beq_cont.30328
beq_else.30327:
beq_cont.30328:
	j	beq_cont.30324
beq_else.30323:
beq_cont.30324:
	j	beq_cont.30322
beq_else.30321:
	addi	r0 r8 1
	sll	r8 r8 2
	lwo	r6 r8 r8
	addi	r0 r9 -1
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30337
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r8 r8 2
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
	sll	r1 r1 2
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30339
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30341
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30343
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r1 2
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
	j	beq_cont.30344
beq_else.30343:
beq_cont.30344:
	j	beq_cont.30342
beq_else.30341:
beq_cont.30342:
	j	beq_cont.30340
beq_else.30339:
beq_cont.30340:
	j	beq_cont.30338
beq_else.30337:
beq_cont.30338:
beq_cont.30322:
	addi	r0 r1 1
	lw	r30 r2 24
	lw	r30 r3 20
	sw	r31 r30 32
	addi	r30 r30 36
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30320
beq_else.30319:
beq_cont.30320:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30345
	addi	r0 r1 1
	j	bfle_nontail_cont.30346
bfle_nontail_else.30345:
	addi	r0 r1 0
bfle_nontail_cont.30346:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30347
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30349
	addi	r0 r1 1
	j	bfle_nontail_cont.30350
bfle_nontail_else.30349:
	addi	r0 r1 0
bfle_nontail_cont.30350:
	j	beq_cont.30348
beq_else.30347:
	addi	r0 r1 0
beq_cont.30348:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30351
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 20
	lw	r2 r2 0
	lw	r1 r3 4
	addi	r0 r4 1
	sw	r1 r30 32
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30353
	addi	r0 r2 2
	sub	r3 r2 r25
	beq	r25 r0 beq_else.30355
	sw	r31 r30 36
	addi	r30 r30 40
	jal	get_nvector_second.3063
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30356
beq_else.30355:
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
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	sll	r3 r3 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	sll	r3 r3 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
beq_cont.30356:
	j	beq_cont.30354
beq_else.30353:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r5 0
	sll	r5 r5 2
	swoc1	f0 r4 r5
	addi	r0 r5 1
	sll	r5 r5 2
	swoc1	f0 r4 r5
	addi	r0 r5 2
	sll	r5 r5 2
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
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.30357
	addi	r0 r2 0
	j	bfeq_nontail_cont.30358
bfeq_nontail_else.30357:
	addi	r0 r2 1
bfeq_nontail_cont.30358:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30359
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30360
beq_else.30359:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30361
	addi	r0 r2 1
	j	bfle_nontail_cont.30362
bfle_nontail_else.30361:
	addi	r0 r2 0
bfle_nontail_cont.30362:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30363
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30364
beq_else.30363:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30364:
beq_cont.30360:
	neg.s	f0 f0
	sll	r5 r2 2
	swoc1	f0 r4 r2
beq_cont.30354:
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	sw	r31 r30 36
	addi	r30 r30 40
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30365
	j	beq_cont.30366
beq_else.30365:
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
	sll	r3 r3 2
	lwoc1	r1 r3 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30367
	addi	r0 r1 1
	j	bfle_nontail_cont.30368
bfle_nontail_else.30367:
	addi	r0 r1 0
bfle_nontail_cont.30368:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30369
	j	beq_cont.30370
beq_else.30369:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30370:
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
	sll	r3 r3 2
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
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f0
	add.s	f1 f0 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
beq_cont.30366:
	j	beq_cont.30352
beq_else.30351:
beq_cont.30352:
	j	beq_cont.30318
beq_else.30317:
	sll	r4 r5 2
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
	sll	r7 r7 2
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
	sll	r8 r8 2
	lwo	r7 r8 r7
	sll	r6 r6 2
	lwo	r7 r6 r6
	addi	r0 r8 0
	sll	r8 r8 2
	lwo	r6 r8 r8
	addi	r0 r9 -1
	swc1	f0 r30 36
	sw	r5 r30 40
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30371
	addi	r0 r9 99
	sw	r7 r30 44
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30373
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
	beq	r25 r0 beq_else.30375
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30377
	addi	r0 r1 1
	j	bfle_nontail_cont.30378
bfle_nontail_else.30377:
	addi	r0 r1 0
bfle_nontail_cont.30378:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30379
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30381
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30383
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30385
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30387
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	j	beq_cont.30388
beq_else.30387:
beq_cont.30388:
	j	beq_cont.30386
beq_else.30385:
beq_cont.30386:
	j	beq_cont.30384
beq_else.30383:
beq_cont.30384:
	j	beq_cont.30382
beq_else.30381:
beq_cont.30382:
	j	beq_cont.30380
beq_else.30379:
beq_cont.30380:
	j	beq_cont.30376
beq_else.30375:
beq_cont.30376:
	j	beq_cont.30374
beq_else.30373:
	addi	r0 r8 1
	sll	r8 r8 2
	lwo	r6 r8 r8
	addi	r0 r9 -1
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30389
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r8 r8 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30391
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30393
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30395
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r1 2
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
	j	beq_cont.30396
beq_else.30395:
beq_cont.30396:
	j	beq_cont.30394
beq_else.30393:
beq_cont.30394:
	j	beq_cont.30392
beq_else.30391:
beq_cont.30392:
	j	beq_cont.30390
beq_else.30389:
beq_cont.30390:
beq_cont.30374:
	addi	r0 r1 1
	lw	r30 r2 44
	lw	r30 r3 40
	sw	r31 r30 52
	addi	r30 r30 56
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.30372
beq_else.30371:
beq_cont.30372:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f0 f1 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30397
	addi	r0 r1 1
	j	bfle_nontail_cont.30398
bfle_nontail_else.30397:
	addi	r0 r1 0
bfle_nontail_cont.30398:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30399
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30401
	addi	r0 r1 1
	j	bfle_nontail_cont.30402
bfle_nontail_else.30401:
	addi	r0 r1 0
bfle_nontail_cont.30402:
	j	beq_cont.30400
beq_else.30399:
	addi	r0 r1 0
beq_cont.30400:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30403
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 40
	lw	r2 r2 0
	lw	r1 r3 4
	addi	r0 r4 1
	sw	r1 r30 52
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30405
	addi	r0 r2 2
	sub	r3 r2 r25
	beq	r25 r0 beq_else.30407
	sw	r31 r30 56
	addi	r30 r30 60
	jal	get_nvector_second.3063
	addi	r30 r30 -60
	lw	r30 r31 56
	j	beq_cont.30408
beq_else.30407:
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
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	sll	r3 r3 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	sll	r3 r3 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	neg.s	f0 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
beq_cont.30408:
	j	beq_cont.30406
beq_else.30405:
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r5 0
	sll	r5 r5 2
	swoc1	f0 r4 r5
	addi	r0 r5 1
	sll	r5 r5 2
	swoc1	f0 r4 r5
	addi	r0 r5 2
	sll	r5 r5 2
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
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.30409
	addi	r0 r2 0
	j	bfeq_nontail_cont.30410
bfeq_nontail_else.30409:
	addi	r0 r2 1
bfeq_nontail_cont.30410:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30411
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30412
beq_else.30411:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30413
	addi	r0 r2 1
	j	bfle_nontail_cont.30414
bfle_nontail_else.30413:
	addi	r0 r2 0
bfle_nontail_cont.30414:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30415
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30416
beq_else.30415:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30416:
beq_cont.30412:
	neg.s	f0 f0
	sll	r5 r2 2
	swoc1	f0 r4 r2
beq_cont.30406:
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	sw	r31 r30 56
	addi	r30 r30 60
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -60
	lw	r30 r31 56
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30417
	j	beq_cont.30418
beq_else.30417:
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
	sll	r3 r3 2
	lwoc1	r1 r3 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30419
	addi	r0 r1 1
	j	bfle_nontail_cont.30420
bfle_nontail_else.30419:
	addi	r0 r1 0
bfle_nontail_cont.30420:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30421
	j	beq_cont.30422
beq_else.30421:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30422:
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
	sll	r3 r3 2
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
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f0
	add.s	f1 f0 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
beq_cont.30418:
	j	beq_cont.30404
beq_else.30403:
beq_cont.30404:
beq_cont.30318:
	addi	r0 r1 2
	lw	r30 r2 12
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30423
	jr	r31
ble_tail_else.30423:
	sll	r1 r2 2
	lw	r30 r3 8
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lw	r30 r5 4
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30425
	addi	r0 r2 1
	j	bfle_nontail_cont.30426
bfle_nontail_else.30425:
	addi	r0 r2 0
bfle_nontail_cont.30426:
	addi	r0 r4 0
	sw	r1 r30 56
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30427
	addi	r0 r2 1
	add	r1 r2 r2
	sll	r2 r2 2
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
	j	beq_cont.30428
beq_else.30427:
	sll	r1 r2 2
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
beq_cont.30428:
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
	beq	r25 r0 beq_else.30429
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r5 0
	sll	r5 r5 2
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
	sll	r7 r7 2
	lwoc1	r3 r7 f0
	sll	r6 r6 2
	swoc1	f0 r5 r6
	addi	r0 r6 1
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r3 r7 f0
	sll	r6 r6 2
	swoc1	f0 r5 r6
	addi	r0 r6 2
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r3 r7 f0
	sll	r6 r6 2
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
	sll	r6 r6 2
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
	j	beq_cont.30430
beq_else.30429:
beq_cont.30430:
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30431
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 1
	sll	r3 r3 2
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
	sll	r5 r5 2
	lw	r30 r6 4
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	j	beq_cont.30432
beq_else.30431:
beq_cont.30432:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30433
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 2
	sll	r3 r3 2
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
	sll	r5 r5 2
	lw	r30 r6 4
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	j	beq_cont.30434
beq_else.30433:
beq_cont.30434:
	addi	r0 r1 3
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30435
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 3
	sll	r3 r3 2
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
	sll	r5 r5 2
	lw	r30 r6 4
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	j	beq_cont.30436
beq_else.30435:
beq_cont.30436:
	addi	r0 r1 4
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.30437
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 4
	sll	r2 r2 2
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
	sll	r4 r4 2
	lw	r30 r5 4
	lwoc1	r5 r4 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r5 r4 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r5 r4 f0
	sll	r3 r3 2
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
	sll	r3 r3 2
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
beq_tail_else.30437:
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
	sll	r2 r8 2
	lwo	r3 r8 r3
	addi	r0 r8 0
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r3 2
	swoc1	f0 r7 r3
	lw	r1 r1 24
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r1 r3 r1
	sll	r2 r3 2
	lwo	r4 r3 r3
	sll	r2 r4 2
	lwo	r5 r4 r4
	addi	r0 r5 0
	sw	r6 r30 0
	sw	r2 r30 4
	sw	r3 r30 8
	sw	r4 r30 12
	sw	r1 r30 16
	sub	r1 r5 r25
	beq	r25 r0 beq_else.30439
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r7 0
	sll	r7 r7 2
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
	sll	r9 r9 2
	lwoc1	r4 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r4 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r4 r9 f0
	sll	r8 r8 2
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
	sll	r8 r8 2
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
	sll	r1 r2 2
	lw	r30 r3 20
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lw	r30 r5 8
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30441
	addi	r0 r2 1
	j	bfle_nontail_cont.30442
bfle_nontail_else.30441:
	addi	r0 r2 0
bfle_nontail_cont.30442:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30443
	addi	r0 r1 119
	sll	r1 r1 2
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
	j	beq_cont.30444
beq_else.30443:
	sll	r1 r1 2
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
beq_cont.30444:
	addi	r0 r4 116
	lw	r30 r1 20
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 24
	addi	r30 r30 28
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.30440
beq_else.30439:
beq_cont.30440:
	addi	r0 r1 1
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30445
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 1
	sll	r3 r3 2
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
	sll	r5 r5 2
	lw	r30 r6 12
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	sll	r1 r2 2
	lw	r30 r3 24
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lw	r30 r5 8
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30447
	addi	r0 r2 1
	j	bfle_nontail_cont.30448
bfle_nontail_else.30447:
	addi	r0 r2 0
bfle_nontail_cont.30448:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30449
	addi	r0 r1 119
	sll	r1 r1 2
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
	j	beq_cont.30450
beq_else.30449:
	sll	r1 r1 2
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
beq_cont.30450:
	addi	r0 r4 116
	lw	r30 r1 24
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 28
	addi	r30 r30 32
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -32
	lw	r30 r31 28
	j	beq_cont.30446
beq_else.30445:
beq_cont.30446:
	addi	r0 r1 2
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30451
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r3 2
	sll	r3 r3 2
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
	sll	r5 r5 2
	lw	r30 r6 12
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	sll	r1 r2 2
	lw	r30 r3 28
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lw	r30 r5 8
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30453
	addi	r0 r2 1
	j	bfle_nontail_cont.30454
bfle_nontail_else.30453:
	addi	r0 r2 0
bfle_nontail_cont.30454:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30455
	addi	r0 r1 119
	sll	r1 r1 2
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
	j	beq_cont.30456
beq_else.30455:
	sll	r1 r1 2
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
beq_cont.30456:
	addi	r0 r4 116
	lw	r30 r1 28
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 32
	addi	r30 r30 36
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30452
beq_else.30451:
beq_cont.30452:
	addi	r0 r1 3
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30457
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r3 3
	sll	r3 r3 2
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
	sll	r5 r5 2
	lw	r30 r6 12
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	sll	r1 r2 2
	lw	r30 r3 32
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lw	r30 r5 8
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30459
	addi	r0 r2 1
	j	bfle_nontail_cont.30460
bfle_nontail_else.30459:
	addi	r0 r2 0
bfle_nontail_cont.30460:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30461
	addi	r0 r1 119
	sll	r1 r1 2
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
	j	beq_cont.30462
beq_else.30461:
	sll	r1 r1 2
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
beq_cont.30462:
	addi	r0 r4 116
	lw	r30 r1 32
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 36
	addi	r30 r30 40
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30458
beq_else.30457:
beq_cont.30458:
	addi	r0 r1 4
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30463
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 4
	sll	r2 r2 2
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
	sll	r4 r4 2
	lw	r30 r5 12
	lwoc1	r5 r4 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r5 r4 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r5 r4 f0
	sll	r3 r3 2
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
	sll	r3 r3 2
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
	sll	r1 r2 2
	lw	r30 r3 36
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lw	r30 r5 8
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30465
	addi	r0 r2 1
	j	bfle_nontail_cont.30466
bfle_nontail_else.30465:
	addi	r0 r2 0
bfle_nontail_cont.30466:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30467
	addi	r0 r1 119
	sll	r1 r1 2
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
	j	beq_cont.30468
beq_else.30467:
	sll	r1 r1 2
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
beq_cont.30468:
	addi	r0 r4 116
	lw	r30 r1 36
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 40
	addi	r30 r30 44
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -44
	lw	r30 r31 40
	j	beq_cont.30464
beq_else.30463:
beq_cont.30464:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	lw	r30 r2 4
	sll	r2 r2 2
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
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r2 2
	swoc1	f0 r1 r2
	jr	r31
calc_diffuse_using_5points.3105:
	sll	r1 r6 2
	lwo	r2 r6 r2
	lw	r2 r2 20
	addi	r0 r6 1
	sub	r1 r6 r6
	sll	r6 r6 2
	lwo	r3 r6 r6
	lw	r6 r6 20
	sll	r1 r7 2
	lwo	r3 r7 r7
	lw	r7 r7 20
	addi	r0 r8 1
	add	r1 r8 r8
	sll	r8 r8 2
	lwo	r3 r8 r8
	lw	r8 r8 20
	sll	r1 r9 2
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
	sll	r5 r10 2
	lwo	r2 r10 r2
	addi	r0 r10 0
	addi	r0 r11 0
	sll	r11 r11 2
	lwoc1	r2 r11 f0
	sll	r10 r10 2
	swoc1	f0 r9 r10
	addi	r0 r10 1
	addi	r0 r11 1
	sll	r11 r11 2
	lwoc1	r2 r11 f0
	sll	r10 r10 2
	swoc1	f0 r9 r10
	addi	r0 r10 2
	addi	r0 r11 2
	sll	r11 r11 2
	lwoc1	r2 r11 f0
	sll	r10 r2 2
	swoc1	f0 r9 r2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r5 r9 2
	lwo	r6 r9 r6
	addi	r0 r9 0
	addi	r0 r10 0
	sll	r10 r10 2
	lwoc1	r2 r10 f0
	addi	r0 r10 0
	sll	r10 r10 2
	lwoc1	r6 r10 f1
	add.s	f0 f1 f0
	sll	r9 r9 2
	swoc1	f0 r2 r9
	addi	r0 r9 1
	addi	r0 r10 1
	sll	r10 r10 2
	lwoc1	r2 r10 f0
	addi	r0 r10 1
	sll	r10 r10 2
	lwoc1	r6 r10 f1
	add.s	f0 f1 f0
	sll	r9 r9 2
	swoc1	f0 r2 r9
	addi	r0 r9 2
	addi	r0 r10 2
	sll	r10 r10 2
	lwoc1	r2 r10 f0
	addi	r0 r10 2
	sll	r10 r10 2
	lwoc1	r6 r10 f1
	add.s	f0 f1 f0
	sll	r9 r6 2
	swoc1	f0 r2 r6
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r5 r6 2
	lwo	r7 r6 r6
	addi	r0 r7 0
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r2 r9 f0
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r6 r9 f1
	add.s	f0 f1 f0
	sll	r7 r7 2
	swoc1	f0 r2 r7
	addi	r0 r7 1
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r2 r9 f0
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r6 r9 f1
	add.s	f0 f1 f0
	sll	r7 r7 2
	swoc1	f0 r2 r7
	addi	r0 r7 2
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r2 r9 f0
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r6 r9 f1
	add.s	f0 f1 f0
	sll	r7 r6 2
	swoc1	f0 r2 r6
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r5 r6 2
	lwo	r8 r6 r6
	addi	r0 r7 0
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r2 r8 f0
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r6 r8 f1
	add.s	f0 f1 f0
	sll	r7 r7 2
	swoc1	f0 r2 r7
	addi	r0 r7 1
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r2 r8 f0
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r6 r8 f1
	add.s	f0 f1 f0
	sll	r7 r7 2
	swoc1	f0 r2 r7
	addi	r0 r7 2
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r2 r8 f0
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r6 r8 f1
	add.s	f0 f1 f0
	sll	r7 r6 2
	swoc1	f0 r2 r6
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r5 r6 2
	lwo	r4 r6 r4
	addi	r0 r6 0
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r2 r7 f0
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r4 r7 f1
	add.s	f0 f1 f0
	sll	r6 r6 2
	swoc1	f0 r2 r6
	addi	r0 r6 1
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r2 r7 f0
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r4 r7 f1
	add.s	f0 f1 f0
	sll	r6 r6 2
	swoc1	f0 r2 r6
	addi	r0 r6 2
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r2 r7 f0
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r4 r7 f1
	add.s	f0 f1 f0
	sll	r6 r4 2
	swoc1	f0 r2 r4
	sll	r1 r1 2
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
	sll	r5 r3 2
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
	sll	r5 r5 2
	lwoc1	r2 r5 f0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r1 r5 f1
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r2 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r2 r5 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r1 r5 f1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r2 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r2 r5 f0
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r1 r5 f1
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r3 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r1 2
	swoc1	f0 r2 r1
	jr	r31
do_without_neighbors.3111:
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.30471
	jr	r31
ble_tail_else.30471:
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30473
	jr	r31
ble_tail_else.30473:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30475
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
	sll	r2 r8 2
	lwo	r3 r8 r3
	addi	r0 r8 0
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r3 2
	swoc1	f0 r7 r3
	lw	r1 r3 24
	addi	r0 r7 0
	sll	r7 r7 2
	lwo	r3 r7 r3
	sll	r2 r7 2
	lwo	r4 r7 r4
	sll	r2 r7 2
	lwo	r5 r7 r5
	addi	r0 r7 0
	sw	r6 r30 4
	sw	r2 r30 8
	sw	r4 r30 12
	sw	r5 r30 16
	sw	r3 r30 20
	sub	r3 r7 r25
	beq	r25 r0 beq_else.30477
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r8 0
	sll	r8 r8 2
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
	sll	r10 r10 2
	lwoc1	r5 r10 f0
	sll	r9 r9 2
	swoc1	f0 r8 r9
	addi	r0 r9 1
	addi	r0 r10 1
	sll	r10 r10 2
	lwoc1	r5 r10 f0
	sll	r9 r9 2
	swoc1	f0 r8 r9
	addi	r0 r9 2
	addi	r0 r10 2
	sll	r10 r10 2
	lwoc1	r5 r10 f0
	sll	r9 r9 2
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
	sll	r9 r9 2
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
	j	beq_cont.30478
beq_else.30477:
beq_cont.30478:
	addi	r0 r1 1
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30479
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r3 1
	sll	r3 r3 2
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
	sll	r5 r5 2
	lw	r30 r6 16
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	j	beq_cont.30480
beq_else.30479:
beq_cont.30480:
	addi	r0 r1 2
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30481
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r3 2
	sll	r3 r3 2
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
	sll	r5 r5 2
	lw	r30 r6 16
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	j	beq_cont.30482
beq_else.30481:
beq_cont.30482:
	addi	r0 r1 3
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30483
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r3 3
	sll	r3 r3 2
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
	sll	r5 r5 2
	lw	r30 r6 16
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r6 r5 f0
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	j	beq_cont.30484
beq_else.30483:
beq_cont.30484:
	addi	r0 r1 4
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30485
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 4
	sll	r2 r2 2
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
	sll	r4 r4 2
	lw	r30 r5 16
	lwoc1	r5 r4 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r5 r4 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r5 r4 f0
	sll	r3 r3 2
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
	sll	r3 r3 2
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
	j	beq_cont.30486
beq_else.30485:
beq_cont.30486:
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	lw	r30 r2 8
	sll	r2 r3 2
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
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r5 2
	swoc1	f0 r1 r5
	addi	r0 r5 1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r5 2
	swoc1	f0 r1 r5
	addi	r0 r5 2
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r4 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r3 2
	swoc1	f0 r1 r3
	j	beq_cont.30476
beq_else.30475:
beq_cont.30476:
	addi	r0 r1 1
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30487
	jr	r31
ble_tail_else.30487:
	lw	r30 r1 0
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30489
	jr	r31
ble_tail_else.30489:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 44
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30491
	sw	r31 r30 48
	addi	r30 r30 52
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -52
	lw	r30 r31 48
	j	beq_cont.30492
beq_else.30491:
beq_cont.30492:
	addi	r0 r1 1
	lw	r30 r2 44
	add	r2 r1 r1
	addi	r0 r2 4
	sub	r1 r2 r25
	blez	r25 ble_tail_else.30493
	jr	r31
ble_tail_else.30493:
	lw	r30 r2 0
	lw	r2 r3 8
	addi	r0 r4 0
	sll	r1 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30495
	jr	r31
ble_tail_else.30495:
	lw	r2 r3 12
	sll	r1 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 48
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30497
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
	sll	r1 r8 2
	lwo	r3 r8 r3
	addi	r0 r8 0
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r3 2
	swoc1	f0 r7 r3
	lw	r2 r3 24
	addi	r0 r7 0
	sll	r7 r7 2
	lwo	r3 r7 r3
	sll	r1 r7 2
	lwo	r4 r7 r4
	sll	r1 r7 2
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
	sll	r2 r3 2
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
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r5 2
	swoc1	f0 r1 r5
	addi	r0 r5 1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r5 2
	swoc1	f0 r1 r5
	addi	r0 r5 2
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r4 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r3 2
	swoc1	f0 r1 r3
	j	beq_cont.30498
beq_else.30497:
beq_cont.30498:
	addi	r0 r1 1
	lw	r30 r2 48
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30499
	jr	r31
ble_tail_else.30499:
	lw	r30 r1 0
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30501
	jr	r31
ble_tail_else.30501:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 56
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30503
	sw	r31 r30 60
	addi	r30 r30 64
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -64
	lw	r30 r31 60
	j	beq_cont.30504
beq_else.30503:
beq_cont.30504:
	addi	r0 r1 1
	lw	r30 r2 56
	add	r2 r1 r2
	lw	r30 r1 0
	j	do_without_neighbors.3111
try_exploit_neighbors.3127:
	sll	r1 r7 2
	lwo	r4 r7 r7
	addi	r0 r8 4
	sub	r6 r8 r25
	blez	r25 ble_tail_else.30505
	jr	r31
ble_tail_else.30505:
	addi	r0 r8 0
	lw	r7 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r8 r9 r25
	blez	r25 ble_tail_else.30507
	jr	r31
ble_tail_else.30507:
	sll	r1 r8 2
	lwo	r4 r8 r8
	lw	r8 r8 8
	sll	r6 r9 2
	lwo	r8 r9 r8
	sll	r1 r9 2
	lwo	r3 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30509
	addi	r0 r8 0
	j	beq_cont.30510
beq_else.30509:
	sll	r1 r9 2
	lwo	r5 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30511
	addi	r0 r8 0
	j	beq_cont.30512
beq_else.30511:
	addi	r0 r9 1
	sub	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30513
	addi	r0 r8 0
	j	beq_cont.30514
beq_else.30513:
	addi	r0 r9 1
	add	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30515
	addi	r0 r8 0
	j	beq_cont.30516
beq_else.30515:
	addi	r0 r8 1
beq_cont.30516:
beq_cont.30514:
beq_cont.30512:
beq_cont.30510:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_tail_else.30517
	lw	r7 r7 12
	sll	r6 r8 2
	lwo	r7 r8 r7
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30518
	sll	r1 r7 2
	lwo	r3 r7 r7
	lw	r7 r7 20
	addi	r0 r8 1
	sub	r1 r8 r8
	sll	r8 r8 2
	lwo	r4 r8 r8
	lw	r8 r8 20
	sll	r1 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 20
	addi	r0 r10 1
	add	r1 r10 r10
	sll	r10 r10 2
	lwo	r4 r10 r10
	lw	r10 r10 20
	sll	r1 r11 2
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
	sll	r6 r13 2
	lwo	r7 r13 r7
	addi	r0 r13 0
	addi	r0 r14 0
	sll	r14 r14 2
	lwoc1	r7 r14 f0
	sll	r13 r13 2
	swoc1	f0 r12 r13
	addi	r0 r13 1
	addi	r0 r14 1
	sll	r14 r14 2
	lwoc1	r7 r14 f0
	sll	r13 r13 2
	swoc1	f0 r12 r13
	addi	r0 r13 2
	addi	r0 r14 2
	sll	r14 r14 2
	lwoc1	r7 r14 f0
	sll	r13 r7 2
	swoc1	f0 r12 r7
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r6 r12 2
	lwo	r8 r12 r8
	addi	r0 r12 0
	addi	r0 r13 0
	sll	r13 r13 2
	lwoc1	r7 r13 f0
	addi	r0 r13 0
	sll	r13 r13 2
	lwoc1	r8 r13 f1
	add.s	f0 f1 f0
	sll	r12 r12 2
	swoc1	f0 r7 r12
	addi	r0 r12 1
	addi	r0 r13 1
	sll	r13 r13 2
	lwoc1	r7 r13 f0
	addi	r0 r13 1
	sll	r13 r13 2
	lwoc1	r8 r13 f1
	add.s	f0 f1 f0
	sll	r12 r12 2
	swoc1	f0 r7 r12
	addi	r0 r12 2
	addi	r0 r13 2
	sll	r13 r13 2
	lwoc1	r7 r13 f0
	addi	r0 r13 2
	sll	r13 r13 2
	lwoc1	r8 r13 f1
	add.s	f0 f1 f0
	sll	r12 r8 2
	swoc1	f0 r7 r8
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r6 r8 2
	lwo	r9 r8 r8
	addi	r0 r9 0
	addi	r0 r12 0
	sll	r12 r12 2
	lwoc1	r7 r12 f0
	addi	r0 r12 0
	sll	r12 r12 2
	lwoc1	r8 r12 f1
	add.s	f0 f1 f0
	sll	r9 r9 2
	swoc1	f0 r7 r9
	addi	r0 r9 1
	addi	r0 r12 1
	sll	r12 r12 2
	lwoc1	r7 r12 f0
	addi	r0 r12 1
	sll	r12 r12 2
	lwoc1	r8 r12 f1
	add.s	f0 f1 f0
	sll	r9 r9 2
	swoc1	f0 r7 r9
	addi	r0 r9 2
	addi	r0 r12 2
	sll	r12 r12 2
	lwoc1	r7 r12 f0
	addi	r0 r12 2
	sll	r12 r12 2
	lwoc1	r8 r12 f1
	add.s	f0 f1 f0
	sll	r9 r8 2
	swoc1	f0 r7 r8
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r6 r8 2
	lwo	r10 r8 r8
	addi	r0 r9 0
	addi	r0 r10 0
	sll	r10 r10 2
	lwoc1	r7 r10 f0
	addi	r0 r10 0
	sll	r10 r10 2
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	sll	r9 r9 2
	swoc1	f0 r7 r9
	addi	r0 r9 1
	addi	r0 r10 1
	sll	r10 r10 2
	lwoc1	r7 r10 f0
	addi	r0 r10 1
	sll	r10 r10 2
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	sll	r9 r9 2
	swoc1	f0 r7 r9
	addi	r0 r9 2
	addi	r0 r10 2
	sll	r10 r10 2
	lwoc1	r7 r10 f0
	addi	r0 r10 2
	sll	r10 r10 2
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	sll	r9 r8 2
	swoc1	f0 r7 r8
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r6 r8 2
	lwo	r11 r8 r8
	addi	r0 r9 0
	addi	r0 r10 0
	sll	r10 r10 2
	lwoc1	r7 r10 f0
	addi	r0 r10 0
	sll	r10 r10 2
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	sll	r9 r9 2
	swoc1	f0 r7 r9
	addi	r0 r9 1
	addi	r0 r10 1
	sll	r10 r10 2
	lwoc1	r7 r10 f0
	addi	r0 r10 1
	sll	r10 r10 2
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	sll	r9 r9 2
	swoc1	f0 r7 r9
	addi	r0 r9 2
	addi	r0 r10 2
	sll	r10 r10 2
	lwoc1	r7 r10 f0
	addi	r0 r10 2
	sll	r10 r10 2
	lwoc1	r8 r10 f1
	add.s	f0 f1 f0
	sll	r9 r8 2
	swoc1	f0 r7 r8
	sll	r1 r7 2
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
	sll	r6 r9 2
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
	sll	r11 r11 2
	lwoc1	r8 r11 f0
	addi	r0 r11 0
	sll	r11 r11 2
	lwoc1	r7 r11 f1
	addi	r0 r11 0
	sll	r11 r11 2
	lwoc1	r9 r11 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r10 r10 2
	swoc1	f0 r8 r10
	addi	r0 r10 1
	addi	r0 r11 1
	sll	r11 r11 2
	lwoc1	r8 r11 f0
	addi	r0 r11 1
	sll	r11 r11 2
	lwoc1	r7 r11 f1
	addi	r0 r11 1
	sll	r11 r11 2
	lwoc1	r9 r11 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r10 r10 2
	swoc1	f0 r8 r10
	addi	r0 r10 2
	addi	r0 r11 2
	sll	r11 r11 2
	lwoc1	r8 r11 f0
	addi	r0 r11 2
	sll	r11 r11 2
	lwoc1	r7 r11 f1
	addi	r0 r7 2
	sll	r7 r7 2
	lwoc1	r9 r7 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r10 r7 2
	swoc1	f0 r8 r7
	j	beq_cont.30519
beq_else.30518:
beq_cont.30519:
	addi	r0 r7 1
	add	r6 r7 r6
	sll	r1 r7 2
	lwo	r4 r7 r7
	addi	r0 r8 4
	sub	r6 r8 r25
	blez	r25 ble_tail_else.30520
	jr	r31
ble_tail_else.30520:
	addi	r0 r8 0
	lw	r7 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r8 r9 r25
	blez	r25 ble_tail_else.30522
	jr	r31
ble_tail_else.30522:
	sll	r1 r8 2
	lwo	r4 r8 r8
	lw	r8 r8 8
	sll	r6 r9 2
	lwo	r8 r9 r8
	sll	r1 r9 2
	lwo	r3 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30524
	addi	r0 r8 0
	j	beq_cont.30525
beq_else.30524:
	sll	r1 r9 2
	lwo	r5 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30526
	addi	r0 r8 0
	j	beq_cont.30527
beq_else.30526:
	addi	r0 r9 1
	sub	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30528
	addi	r0 r8 0
	j	beq_cont.30529
beq_else.30528:
	addi	r0 r9 1
	add	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30530
	addi	r0 r8 0
	j	beq_cont.30531
beq_else.30530:
	addi	r0 r8 1
beq_cont.30531:
beq_cont.30529:
beq_cont.30527:
beq_cont.30525:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_tail_else.30532
	lw	r7 r7 12
	sll	r6 r8 2
	lwo	r7 r8 r7
	addi	r0 r8 0
	sw	r5 r30 0
	sw	r4 r30 4
	sw	r3 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sw	r6 r30 20
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30533
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r3
	mov	r3 r4
	mov	r4 r5
	mov	r5 r6
	jal	calc_diffuse_using_5points.3105
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.30534
beq_else.30533:
beq_cont.30534:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r6
	lw	r30 r1 16
	lw	r30 r2 12
	lw	r30 r3 8
	lw	r30 r4 4
	lw	r30 r5 0
	j	try_exploit_neighbors.3127
beq_tail_else.30532:
	sll	r1 r1 2
	lwo	r4 r1 r1
	addi	r0 r2 4
	sub	r6 r2 r25
	blez	r25 ble_tail_else.30535
	jr	r31
ble_tail_else.30535:
	lw	r1 r2 8
	addi	r0 r3 0
	sll	r6 r4 2
	lwo	r2 r4 r2
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30537
	jr	r31
ble_tail_else.30537:
	lw	r1 r2 12
	sll	r6 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 0
	sw	r1 r30 24
	sw	r6 r30 20
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30539
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
	sll	r6 r8 2
	lwo	r2 r8 r2
	addi	r0 r8 0
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r2 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r2 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r2 r9 f0
	sll	r8 r2 2
	swoc1	f0 r7 r2
	lw	r1 r2 24
	addi	r0 r7 0
	sll	r7 r7 2
	lwo	r2 r7 r2
	sll	r6 r7 2
	lwo	r3 r7 r3
	sll	r6 r7 2
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
	sll	r2 r3 2
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
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r5 2
	swoc1	f0 r1 r5
	addi	r0 r5 1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r5 2
	swoc1	f0 r1 r5
	addi	r0 r5 2
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r4 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r3 2
	swoc1	f0 r1 r3
	j	beq_cont.30540
beq_else.30539:
beq_cont.30540:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30541
	jr	r31
ble_tail_else.30541:
	lw	r30 r1 24
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30543
	jr	r31
ble_tail_else.30543:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 32
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30545
	sw	r31 r30 36
	addi	r30 r30 40
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30546
beq_else.30545:
beq_cont.30546:
	addi	r0 r1 1
	lw	r30 r2 32
	add	r2 r1 r2
	lw	r30 r1 24
	j	do_without_neighbors.3111
beq_tail_else.30517:
	sll	r1 r1 2
	lwo	r4 r1 r1
	addi	r0 r2 4
	sub	r6 r2 r25
	blez	r25 ble_tail_else.30547
	jr	r31
ble_tail_else.30547:
	lw	r1 r2 8
	addi	r0 r3 0
	sll	r6 r4 2
	lwo	r2 r4 r2
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30549
	jr	r31
ble_tail_else.30549:
	lw	r1 r2 12
	sll	r6 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 0
	sw	r1 r30 36
	sw	r6 r30 40
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30551
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r2 r6
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -48
	lw	r30 r31 44
	j	beq_cont.30552
beq_else.30551:
beq_cont.30552:
	addi	r0 r1 1
	lw	r30 r2 40
	add	r2 r1 r1
	addi	r0 r2 4
	sub	r1 r2 r25
	blez	r25 ble_tail_else.30553
	jr	r31
ble_tail_else.30553:
	lw	r30 r2 36
	lw	r2 r3 8
	addi	r0 r4 0
	sll	r1 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30555
	jr	r31
ble_tail_else.30555:
	lw	r2 r3 12
	sll	r1 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 44
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30557
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
	sll	r1 r8 2
	lwo	r3 r8 r3
	addi	r0 r8 0
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r3 2
	swoc1	f0 r7 r3
	lw	r2 r3 24
	addi	r0 r7 0
	sll	r7 r7 2
	lwo	r3 r7 r3
	sll	r1 r7 2
	lwo	r4 r7 r4
	sll	r1 r7 2
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
	sll	r2 r3 2
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
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r5 2
	swoc1	f0 r1 r5
	addi	r0 r5 1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r5 2
	swoc1	f0 r1 r5
	addi	r0 r5 2
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r1 r6 f0
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f1
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r4 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r5 r3 2
	swoc1	f0 r1 r3
	j	beq_cont.30558
beq_else.30557:
beq_cont.30558:
	addi	r0 r1 1
	lw	r30 r2 44
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30559
	jr	r31
ble_tail_else.30559:
	lw	r30 r1 36
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30561
	jr	r31
ble_tail_else.30561:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 52
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30563
	sw	r31 r30 56
	addi	r30 r30 60
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -60
	lw	r30 r31 56
	j	beq_cont.30564
beq_else.30563:
beq_cont.30564:
	addi	r0 r1 1
	lw	r30 r2 52
	add	r2 r1 r2
	lw	r30 r1 36
	j	do_without_neighbors.3111
pretrace_diffuse_rays.3140:
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.30565
	jr	r31
ble_tail_else.30565:
	lw	r1 r3 8
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30567
	jr	r31
ble_tail_else.30567:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30569
	lw	r1 r3 24
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r5 0
	sll	r5 r5 2
	swoc1	f0 r4 r5
	addi	r0 r5 1
	sll	r5 r5 2
	swoc1	f0 r4 r5
	addi	r0 r5 2
	sll	r5 r5 2
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
	sll	r3 r3 2
	lwo	r6 r3 r3
	sll	r2 r6 2
	lwo	r4 r6 r4
	sll	r2 r6 2
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
	sll	r8 r8 2
	lwoc1	r5 r8 f0
	sll	r7 r7 2
	swoc1	f0 r6 r7
	addi	r0 r7 1
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r5 r8 f0
	sll	r7 r7 2
	swoc1	f0 r6 r7
	addi	r0 r7 2
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r5 r8 f0
	sll	r7 r7 2
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
	sll	r7 r7 2
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
	sll	r3 r4 2
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
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	sll	r5 r5 2
	swoc1	f0 r2 r5
	addi	r0 r5 1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	sll	r5 r5 2
	swoc1	f0 r2 r5
	addi	r0 r5 2
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	sll	r5 r4 2
	swoc1	f0 r2 r4
	j	beq_cont.30570
beq_else.30569:
beq_cont.30570:
	addi	r0 r2 1
	lw	r30 r3 0
	add	r3 r2 r2
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.30571
	jr	r31
ble_tail_else.30571:
	lw	r1 r3 8
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30573
	jr	r31
ble_tail_else.30573:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 20
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30575
	lw	r1 r3 24
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r5 0
	sll	r5 r5 2
	swoc1	f0 r4 r5
	addi	r0 r5 1
	sll	r5 r5 2
	swoc1	f0 r4 r5
	addi	r0 r5 2
	sll	r5 r5 2
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
	sll	r3 r3 2
	lwo	r6 r3 r3
	sll	r2 r6 2
	lwo	r4 r6 r4
	sll	r2 r6 2
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
	sll	r8 r8 2
	lwoc1	r5 r8 f0
	sll	r7 r7 2
	swoc1	f0 r6 r7
	addi	r0 r7 1
	addi	r0 r8 1
	sll	r8 r8 2
	lwoc1	r5 r8 f0
	sll	r7 r7 2
	swoc1	f0 r6 r7
	addi	r0 r7 2
	addi	r0 r8 2
	sll	r8 r8 2
	lwoc1	r5 r8 f0
	sll	r7 r7 2
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
	sll	r7 r7 2
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
	sll	r1 r2 2
	lw	r30 r3 32
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lw	r30 r5 28
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30577
	addi	r0 r2 1
	j	bfle_nontail_cont.30578
bfle_nontail_else.30577:
	addi	r0 r2 0
bfle_nontail_cont.30578:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30579
	addi	r0 r1 119
	sll	r1 r1 2
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
	j	beq_cont.30580
beq_else.30579:
	sll	r1 r1 2
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
beq_cont.30580:
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
	sll	r3 r4 2
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
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	sll	r5 r5 2
	swoc1	f0 r2 r5
	addi	r0 r5 1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	sll	r5 r5 2
	swoc1	f0 r2 r5
	addi	r0 r5 2
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	sll	r5 r4 2
	swoc1	f0 r2 r4
	j	beq_cont.30576
beq_else.30575:
beq_cont.30576:
	addi	r0 r2 1
	lw	r30 r3 20
	add	r3 r2 r2
	j	pretrace_diffuse_rays.3140
pretrace_pixels.3143:
	addi	r0 r4 0
	sub	r4 r2 r25
	blez	r25 ble_tail_else.30581
	jr	r31
ble_tail_else.30581:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	sll	r5 r5 2
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
	sll	r5 r5 2
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f1
	lwc1	 r30 f2 20
	add.s	f1 f2 f1
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f1
	lwc1	 r30 f3 16
	add.s	f1 f3 f1
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 12
	add.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f4
	mul.s	f0 f4 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f4
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f0 f4 f0
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f4
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f5
	mul.s	f4 f5 f4
	add.s	f0 f4 f0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_sqrt
	addi	r30 r30 -36
	lw	r30 r31 32
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.30583
	addi	r0 r1 0
	j	bfeq_nontail_cont.30584
bfeq_nontail_else.30583:
	addi	r0 r1 1
bfeq_nontail_cont.30584:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30585
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30586
beq_else.30585:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
beq_cont.30586:
	addi	r0 r1 0
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 28
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r3 r1
	addi	r0 r1 1
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r3 r1
	addi	r0 r1 2
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f0
	sll	r1 r1 2
	swoc1	f0 r3 r1
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 1
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r3 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	lw	r30 r3 8
	sll	r3 r4 2
	lw	r30 r5 4
	lwo	r5 r4 r4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r3 r4
	jal	trace_ray.3080
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r1 8
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r5 0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	sll	r5 r5 2
	swoc1	f0 r2 r5
	addi	r0 r5 1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	sll	r5 r5 2
	swoc1	f0 r2 r5
	addi	r0 r5 2
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	sll	r5 r4 2
	swoc1	f0 r2 r4
	sll	r1 r2 2
	lwo	r3 r2 r2
	lw	r2 r2 24
	addi	r0 r4 0
	sll	r4 r4 2
	lw	r30 r5 0
	swo	r5 r2 r4
	sll	r1 r2 2
	lwo	r3 r2 r2
	addi	r0 r4 0
	lw	r2 r6 8
	sll	r4 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 0
	sub	r7 r6 r25
	blez	r25 ble_nontail_else.30587
	j	ble_nontail_cont.30588
ble_nontail_else.30587:
	lw	r2 r6 12
	sll	r4 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 0
	sw	r2 r30 32
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30589
	lw	r2 r6 24
	addi	r0 r7 0
	sll	r7 r7 2
	lwo	r6 r7 r6
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r8 0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 1
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 2
	sll	r8 r8 2
	swoc1	f0 r7 r8
	lw	r2 r7 28
	lw	r2 r8 4
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	sll	r6 r6 2
	lwo	r9 r6 r6
	sll	r4 r9 2
	lwo	r7 r9 r7
	sll	r4 r9 2
	lwo	r8 r9 r8
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r10 0
	addi	r0 r11 0
	sll	r11 r11 2
	lwoc1	r8 r11 f0
	sll	r10 r10 2
	swoc1	f0 r9 r10
	addi	r0 r10 1
	addi	r0 r11 1
	sll	r11 r11 2
	lwoc1	r8 r11 f0
	sll	r10 r10 2
	swoc1	f0 r9 r10
	addi	r0 r10 2
	addi	r0 r11 2
	sll	r11 r11 2
	lwoc1	r8 r11 f0
	sll	r10 r10 2
	swoc1	f0 r9 r10
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r10 0
	sll	r10 r10 2
	lwo	r9 r10 r9
	addi	r0 r10 1
	sub	r9 r10 r9
	sw	r4 r30 36
	sw	r8 r30 40
	sw	r7 r30 44
	sw	r6 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r2 r9
	mov	r1 r8
	jal	setup_startp_constants.2991
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r1 118
	sll	r1 r2 2
	lw	r30 r3 48
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lw	r30 r5 44
	lwoc1	r5 r4 f1
	mul.s	f0 f1 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r5 r4 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r5 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30591
	addi	r0 r2 1
	j	bfle_nontail_cont.30592
bfle_nontail_else.30591:
	addi	r0 r2 0
bfle_nontail_cont.30592:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30593
	addi	r0 r1 119
	sll	r1 r1 2
	lwo	r3 r1 r1
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 52
	addi	r30 r30 56
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.30594
beq_else.30593:
	sll	r1 r1 2
	lwo	r3 r1 r1
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	sw	r31 r30 52
	addi	r30 r30 56
	jal	trace_diffuse_ray.3086
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.30594:
	addi	r0 r4 116
	lw	r30 r1 48
	lw	r30 r2 44
	lw	r30 r3 40
	sw	r31 r30 52
	addi	r30 r30 56
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r1 32
	lw	r1 r2 20
	lw	r30 r3 36
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r4 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f0
	sll	r4 r4 2
	swoc1	f0 r2 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f0
	sll	r4 r4 2
	swoc1	f0 r2 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r3 r5 f0
	sll	r4 r3 2
	swoc1	f0 r2 r3
	j	beq_cont.30590
beq_else.30589:
beq_cont.30590:
	addi	r0 r2 1
	lw	r30 r1 32
	sw	r31 r30 52
	addi	r30 r30 56
	jal	pretrace_diffuse_rays.3140
	addi	r30 r30 -56
	lw	r30 r31 52
ble_nontail_cont.30588:
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r2
	addi	r0 r1 1
	lw	r30 r3 0
	add	r3 r1 r1
	addi	r0 r3 5
	sub	r3 r1 r25
	blez	r25 ble_nontail_else.30595
	mov	r3 r1
	j	ble_nontail_cont.30596
ble_nontail_else.30595:
	addi	r0 r3 5
	sub	r1 r3 r3
ble_nontail_cont.30596:
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
	sll	r7 r7 2
	lwo	r6 r7 r6
	sub	r6 r1 r25
	blez	r25 ble_tail_else.30597
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r7 2
	lwo	r4 r7 r7
	lw	r7 r7 0
	addi	r0 r8 0
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r7 r9 f0
	sll	r8 r8 2
	swoc1	f0 r6 r8
	addi	r0 r8 1
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r7 r9 f0
	sll	r8 r8 2
	swoc1	f0 r6 r8
	addi	r0 r8 2
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r7 r9 f0
	sll	r8 r7 2
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
	sll	r7 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 1
	add	r2 r7 r7
	sub	r6 r7 r25
	blez	r25 ble_nontail_else.30598
	addi	r0 r6 0
	sub	r2 r6 r25
	blez	r25 ble_nontail_else.30600
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 0
	sll	r7 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 1
	add	r1 r7 r7
	sub	r6 r7 r25
	blez	r25 ble_nontail_else.30602
	addi	r0 r6 0
	sub	r1 r6 r25
	blez	r25 ble_nontail_else.30604
	addi	r0 r6 1
	j	ble_nontail_cont.30605
ble_nontail_else.30604:
	addi	r0 r6 0
ble_nontail_cont.30605:
	j	ble_nontail_cont.30603
ble_nontail_else.30602:
	addi	r0 r6 0
ble_nontail_cont.30603:
	j	ble_nontail_cont.30601
ble_nontail_else.30600:
	addi	r0 r6 0
ble_nontail_cont.30601:
	j	ble_nontail_cont.30599
ble_nontail_else.30598:
	addi	r0 r6 0
ble_nontail_cont.30599:
	addi	r0 r7 0
	sw	r5 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	sw	r4 r30 12
	sw	r1 r30 16
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30606
	addi	r0 r6 0
	sll	r1 r7 2
	lwo	r4 r7 r7
	addi	r0 r8 0
	lw	r7 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r8 r9 r25
	blez	r25 ble_nontail_else.30608
	j	ble_nontail_cont.30609
ble_nontail_else.30608:
	sll	r1 r8 2
	lwo	r4 r8 r8
	lw	r8 r8 8
	sll	r6 r9 2
	lwo	r8 r9 r8
	sll	r1 r9 2
	lwo	r3 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30610
	addi	r0 r8 0
	j	beq_cont.30611
beq_else.30610:
	sll	r1 r9 2
	lwo	r5 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30612
	addi	r0 r8 0
	j	beq_cont.30613
beq_else.30612:
	addi	r0 r9 1
	sub	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30614
	addi	r0 r8 0
	j	beq_cont.30615
beq_else.30614:
	addi	r0 r9 1
	add	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30616
	addi	r0 r8 0
	j	beq_cont.30617
beq_else.30616:
	addi	r0 r8 1
beq_cont.30617:
beq_cont.30615:
beq_cont.30613:
beq_cont.30611:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30618
	lw	r7 r7 12
	sll	r6 r8 2
	lwo	r7 r8 r7
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30620
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	mov	r3 r4
	mov	r4 r5
	mov	r5 r6
	jal	calc_diffuse_using_5points.3105
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.30621
beq_else.30620:
beq_cont.30621:
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
	j	beq_cont.30619
beq_else.30618:
	sll	r1 r7 2
	lwo	r4 r7 r7
	lw	r7 r8 8
	addi	r0 r9 0
	sll	r6 r10 2
	lwo	r8 r10 r8
	sub	r9 r8 r25
	blez	r25 ble_nontail_else.30622
	j	ble_nontail_cont.30623
ble_nontail_else.30622:
	lw	r7 r8 12
	sll	r6 r9 2
	lwo	r8 r9 r8
	addi	r0 r9 0
	sw	r7 r30 20
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30624
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
	sll	r6 r13 2
	lwo	r8 r13 r8
	addi	r0 r13 0
	addi	r0 r14 0
	sll	r14 r14 2
	lwoc1	r8 r14 f0
	sll	r13 r13 2
	swoc1	f0 r12 r13
	addi	r0 r13 1
	addi	r0 r14 1
	sll	r14 r14 2
	lwoc1	r8 r14 f0
	sll	r13 r13 2
	swoc1	f0 r12 r13
	addi	r0 r13 2
	addi	r0 r14 2
	sll	r14 r14 2
	lwoc1	r8 r14 f0
	sll	r13 r8 2
	swoc1	f0 r12 r8
	lw	r7 r8 24
	addi	r0 r12 0
	sll	r12 r12 2
	lwo	r8 r12 r8
	sll	r6 r12 2
	lwo	r9 r12 r9
	sll	r6 r12 2
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
	sll	r2 r2 2
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
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.30625
beq_else.30624:
beq_cont.30625:
	addi	r0 r2 1
	lw	r30 r1 20
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30626
	j	ble_nontail_cont.30627
ble_nontail_else.30626:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30628
	sw	r31 r30 32
	addi	r30 r30 36
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30629
beq_else.30628:
beq_cont.30629:
	addi	r0 r2 2
	lw	r30 r1 20
	sw	r31 r30 32
	addi	r30 r30 36
	jal	do_without_neighbors.3111
	addi	r30 r30 -36
	lw	r30 r31 32
ble_nontail_cont.30627:
ble_nontail_cont.30623:
beq_cont.30619:
ble_nontail_cont.30609:
	j	beq_cont.30607
beq_else.30606:
	sll	r1 r6 2
	lwo	r4 r6 r6
	addi	r0 r7 0
	lw	r6 r8 8
	addi	r0 r9 0
	sll	r7 r10 2
	lwo	r8 r10 r8
	sub	r9 r8 r25
	blez	r25 ble_nontail_else.30630
	j	ble_nontail_cont.30631
ble_nontail_else.30630:
	lw	r6 r8 12
	sll	r7 r9 2
	lwo	r8 r9 r8
	addi	r0 r9 0
	sw	r6 r30 32
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30632
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r7
	mov	r1 r6
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30633
beq_else.30632:
beq_cont.30633:
	addi	r0 r1 1
	lw	r30 r2 32
	lw	r2 r3 8
	addi	r0 r4 0
	sll	r1 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30634
	j	ble_nontail_cont.30635
ble_nontail_else.30634:
	lw	r2 r3 12
	sll	r1 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30636
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
	sll	r1 r8 2
	lwo	r3 r8 r3
	addi	r0 r8 0
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 1
	addi	r0 r9 1
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r8 2
	swoc1	f0 r7 r8
	addi	r0 r8 2
	addi	r0 r9 2
	sll	r9 r9 2
	lwoc1	r3 r9 f0
	sll	r8 r3 2
	swoc1	f0 r7 r3
	lw	r2 r3 24
	addi	r0 r7 0
	sll	r7 r7 2
	lwo	r3 r7 r3
	sll	r1 r7 2
	lwo	r4 r7 r4
	sll	r1 r7 2
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
	sll	r2 r2 2
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
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.30637
beq_else.30636:
beq_cont.30637:
	addi	r0 r2 2
	lw	r30 r1 32
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30638
	j	ble_nontail_cont.30639
ble_nontail_else.30638:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30640
	sw	r31 r30 44
	addi	r30 r30 48
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -48
	lw	r30 r31 44
	j	beq_cont.30641
beq_else.30640:
beq_cont.30641:
	addi	r0 r2 3
	lw	r30 r1 32
	sw	r31 r30 44
	addi	r30 r30 48
	jal	do_without_neighbors.3111
	addi	r30 r30 -48
	lw	r30 r31 44
ble_nontail_cont.30639:
ble_nontail_cont.30635:
ble_nontail_cont.30631:
beq_cont.30607:
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_int_of_float
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30642
	addi	r0 r1 255
	j	ble_nontail_cont.30643
ble_nontail_else.30642:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30644
	addi	r0 r1 0
	j	ble_nontail_cont.30645
ble_nontail_else.30644:
ble_nontail_cont.30645:
ble_nontail_cont.30643:
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
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_int_of_float
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30646
	addi	r0 r1 255
	j	ble_nontail_cont.30647
ble_nontail_else.30646:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30648
	addi	r0 r1 0
	j	ble_nontail_cont.30649
ble_nontail_else.30648:
ble_nontail_cont.30649:
ble_nontail_cont.30647:
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
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_int_of_float
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30650
	addi	r0 r1 255
	j	ble_nontail_cont.30651
ble_nontail_else.30650:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30652
	addi	r0 r1 0
	j	ble_nontail_cont.30653
ble_nontail_else.30652:
ble_nontail_cont.30653:
ble_nontail_cont.30651:
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30654
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	sll	r1 r3 2
	lw	r30 r4 12
	lwo	r4 r3 r3
	lw	r3 r3 0
	addi	r0 r5 0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r3 r6 f0
	sll	r5 r5 2
	swoc1	f0 r2 r5
	addi	r0 r5 1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r3 r6 f0
	sll	r5 r5 2
	swoc1	f0 r2 r5
	addi	r0 r5 2
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f0
	sll	r5 r3 2
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 1
	lw	r30 r5 8
	add	r5 r3 r3
	sub	r2 r3 r25
	blez	r25 ble_nontail_else.30655
	addi	r0 r2 0
	sub	r5 r2 r25
	blez	r25 ble_nontail_else.30657
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 1
	add	r1 r3 r3
	sub	r2 r3 r25
	blez	r25 ble_nontail_else.30659
	addi	r0 r2 0
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30661
	addi	r0 r2 1
	j	ble_nontail_cont.30662
ble_nontail_else.30661:
	addi	r0 r2 0
ble_nontail_cont.30662:
	j	ble_nontail_cont.30660
ble_nontail_else.30659:
	addi	r0 r2 0
ble_nontail_cont.30660:
	j	ble_nontail_cont.30658
ble_nontail_else.30657:
	addi	r0 r2 0
ble_nontail_cont.30658:
	j	ble_nontail_cont.30656
ble_nontail_else.30655:
	addi	r0 r2 0
ble_nontail_cont.30656:
	addi	r0 r3 0
	sw	r1 r30 44
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30663
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
	j	beq_cont.30664
beq_else.30663:
	sll	r1 r2 2
	lwo	r4 r2 r2
	addi	r0 r3 0
	lw	r2 r6 8
	addi	r0 r7 0
	sll	r3 r8 2
	lwo	r6 r8 r6
	sub	r7 r6 r25
	blez	r25 ble_nontail_else.30665
	j	ble_nontail_cont.30666
ble_nontail_else.30665:
	lw	r2 r6 12
	sll	r3 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 0
	sw	r2 r30 48
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30667
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
	sll	r3 r11 2
	lwo	r6 r11 r6
	addi	r0 r11 0
	addi	r0 r12 0
	sll	r12 r12 2
	lwoc1	r6 r12 f0
	sll	r11 r11 2
	swoc1	f0 r10 r11
	addi	r0 r11 1
	addi	r0 r12 1
	sll	r12 r12 2
	lwoc1	r6 r12 f0
	sll	r11 r11 2
	swoc1	f0 r10 r11
	addi	r0 r11 2
	addi	r0 r12 2
	sll	r12 r12 2
	lwoc1	r6 r12 f0
	sll	r11 r6 2
	swoc1	f0 r10 r6
	lw	r2 r6 24
	addi	r0 r10 0
	sll	r10 r10 2
	lwo	r6 r10 r6
	sll	r3 r10 2
	lwo	r7 r10 r7
	sll	r3 r10 2
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
	sll	r2 r2 2
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
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.30668
beq_else.30667:
beq_cont.30668:
	addi	r0 r2 1
	lw	r30 r1 48
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30669
	j	ble_nontail_cont.30670
ble_nontail_else.30669:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30671
	sw	r31 r30 60
	addi	r30 r30 64
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -64
	lw	r30 r31 60
	j	beq_cont.30672
beq_else.30671:
beq_cont.30672:
	addi	r0 r2 2
	lw	r30 r1 48
	sw	r31 r30 60
	addi	r30 r30 64
	jal	do_without_neighbors.3111
	addi	r30 r30 -64
	lw	r30 r31 60
ble_nontail_cont.30670:
ble_nontail_cont.30666:
beq_cont.30664:
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -60
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_int_of_float
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30673
	addi	r0 r1 255
	j	ble_nontail_cont.30674
ble_nontail_else.30673:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30675
	addi	r0 r1 0
	j	ble_nontail_cont.30676
ble_nontail_else.30675:
ble_nontail_cont.30676:
ble_nontail_cont.30674:
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
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_int_of_float
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30677
	addi	r0 r1 255
	j	ble_nontail_cont.30678
ble_nontail_else.30677:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30679
	addi	r0 r1 0
	j	ble_nontail_cont.30680
ble_nontail_else.30679:
ble_nontail_cont.30680:
ble_nontail_cont.30678:
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
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_int_of_float
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30681
	addi	r0 r1 255
	j	ble_nontail_cont.30682
ble_nontail_else.30681:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30683
	addi	r0 r1 0
	j	ble_nontail_cont.30684
ble_nontail_else.30683:
ble_nontail_cont.30684:
ble_nontail_cont.30682:
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
ble_tail_else.30654:
	jr	r31
ble_tail_else.30597:
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
	sll	r7 r7 2
	lwo	r6 r7 r6
	sub	r6 r1 r25
	blez	r25 ble_tail_else.30687
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 1
	sll	r7 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 1
	sub	r6 r7 r6
	sw	r5 r30 0
	sw	r4 r30 4
	sw	r2 r30 8
	sw	r1 r30 12
	sw	r3 r30 16
	sub	r6 r1 r25
	blez	r25 ble_nontail_else.30688
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
	sll	r8 r8 2
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
	sll	r8 r8 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	j	ble_nontail_cont.30689
ble_nontail_else.30688:
ble_nontail_cont.30689:
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30690
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r3 2
	lw	r30 r4 16
	lwo	r4 r3 r3
	lw	r3 r3 0
	addi	r0 r5 0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r3 r6 f0
	sll	r5 r5 2
	swoc1	f0 r2 r5
	addi	r0 r5 1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r3 r6 f0
	sll	r5 r5 2
	swoc1	f0 r2 r5
	addi	r0 r5 2
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r3 r6 f0
	sll	r5 r3 2
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 1
	lw	r30 r5 12
	add	r5 r3 r3
	sub	r2 r3 r25
	blez	r25 ble_nontail_else.30692
	addi	r0 r2 0
	sub	r5 r2 r25
	blez	r25 ble_nontail_else.30694
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 1
	sub	r2 r3 r25
	blez	r25 ble_nontail_else.30696
	addi	r0 r2 0
	j	ble_nontail_cont.30697
ble_nontail_else.30696:
	addi	r0 r2 0
ble_nontail_cont.30697:
	j	ble_nontail_cont.30695
ble_nontail_else.30694:
	addi	r0 r2 0
ble_nontail_cont.30695:
	j	ble_nontail_cont.30693
ble_nontail_else.30692:
	addi	r0 r2 0
ble_nontail_cont.30693:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30698
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
	j	beq_cont.30699
beq_else.30698:
	sll	r1 r1 2
	lwo	r4 r1 r1
	addi	r0 r2 0
	lw	r1 r3 8
	addi	r0 r6 0
	sll	r2 r7 2
	lwo	r3 r7 r3
	sub	r6 r3 r25
	blez	r25 ble_nontail_else.30700
	j	ble_nontail_cont.30701
ble_nontail_else.30700:
	lw	r1 r3 12
	sll	r2 r6 2
	lwo	r3 r6 r3
	addi	r0 r6 0
	sw	r1 r30 24
	sub	r3 r6 r25
	beq	r25 r0 beq_else.30702
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
	sll	r2 r10 2
	lwo	r3 r10 r3
	addi	r0 r10 0
	addi	r0 r11 0
	sll	r11 r11 2
	lwoc1	r3 r11 f0
	sll	r10 r10 2
	swoc1	f0 r9 r10
	addi	r0 r10 1
	addi	r0 r11 1
	sll	r11 r11 2
	lwoc1	r3 r11 f0
	sll	r10 r10 2
	swoc1	f0 r9 r10
	addi	r0 r10 2
	addi	r0 r11 2
	sll	r11 r11 2
	lwoc1	r3 r11 f0
	sll	r10 r3 2
	swoc1	f0 r9 r3
	lw	r1 r3 24
	addi	r0 r9 0
	sll	r9 r9 2
	lwo	r3 r9 r3
	sll	r2 r9 2
	lwo	r6 r9 r6
	sll	r2 r9 2
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
	sll	r2 r2 2
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
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.30703
beq_else.30702:
beq_cont.30703:
	addi	r0 r2 1
	lw	r30 r1 24
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30704
	j	ble_nontail_cont.30705
ble_nontail_else.30704:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30706
	sw	r31 r30 36
	addi	r30 r30 40
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30707
beq_else.30706:
beq_cont.30707:
	addi	r0 r2 2
	lw	r30 r1 24
	sw	r31 r30 36
	addi	r30 r30 40
	jal	do_without_neighbors.3111
	addi	r30 r30 -40
	lw	r30 r31 36
ble_nontail_cont.30705:
ble_nontail_cont.30701:
beq_cont.30699:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_int_of_float
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30708
	addi	r0 r1 255
	j	ble_nontail_cont.30709
ble_nontail_else.30708:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30710
	addi	r0 r1 0
	j	ble_nontail_cont.30711
ble_nontail_else.30710:
ble_nontail_cont.30711:
ble_nontail_cont.30709:
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
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_int_of_float
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30712
	addi	r0 r1 255
	j	ble_nontail_cont.30713
ble_nontail_else.30712:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30714
	addi	r0 r1 0
	j	ble_nontail_cont.30715
ble_nontail_else.30714:
ble_nontail_cont.30715:
ble_nontail_cont.30713:
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
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_int_of_float
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30716
	addi	r0 r1 255
	j	ble_nontail_cont.30717
ble_nontail_else.30716:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30718
	addi	r0 r1 0
	j	ble_nontail_cont.30719
ble_nontail_else.30718:
ble_nontail_cont.30719:
ble_nontail_cont.30717:
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
	j	ble_nontail_cont.30691
ble_nontail_else.30690:
ble_nontail_cont.30691:
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r2
	addi	r0 r1 2
	lw	r30 r3 0
	add	r3 r1 r1
	addi	r0 r3 5
	sub	r3 r1 r25
	blez	r25 ble_nontail_else.30720
	j	ble_nontail_cont.30721
ble_nontail_else.30720:
	addi	r0 r3 5
	sub	r1 r3 r1
ble_nontail_cont.30721:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r3 r4 r3
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30722
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r1 r30 36
	sw	r2 r30 40
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30723
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
	sll	r5 r5 2
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
	sll	r5 r5 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	j	ble_nontail_cont.30724
ble_nontail_else.30723:
ble_nontail_cont.30724:
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
	blez	r25 ble_nontail_else.30725
	mov	r5 r2
	j	ble_nontail_cont.30726
ble_nontail_else.30725:
	addi	r0 r3 5
	sub	r2 r3 r5
ble_nontail_cont.30726:
	lw	r30 r2 4
	lw	r30 r3 8
	lw	r30 r4 16
	j	scan_line.3160
ble_tail_else.30722:
	jr	r31
ble_tail_else.30687:
	jr	r31
create_pixel.3168:
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_float_array
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 4
	sw	r2 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 8
	sll	r2 r2 2
	lw	r30 r3 4
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 12
	sll	r2 r2 2
	lw	r30 r3 4
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	sll	r2 r2 2
	lw	r30 r3 4
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 32
	sw	r2 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 36
	sll	r2 r2 2
	lw	r30 r3 32
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r2 40
	sll	r2 r2 2
	lw	r30 r3 32
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r2 44
	sll	r2 r2 2
	lw	r30 r3 32
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r2 48
	sll	r2 r2 2
	lw	r30 r3 32
	swo	r1 r3 r2
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 52
	sw	r2 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -64
	lw	r30 r31 60
	lw	r30 r2 56
	sll	r2 r2 2
	lw	r30 r3 52
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -68
	lw	r30 r31 64
	lw	r30 r2 60
	sll	r2 r2 2
	lw	r30 r3 52
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -72
	lw	r30 r31 68
	lw	r30 r2 64
	sll	r2 r2 2
	lw	r30 r3 52
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r2 68
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 76
	sw	r2 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -88
	lw	r30 r31 84
	lw	r30 r2 80
	sll	r2 r2 2
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -92
	lw	r30 r31 88
	lw	r30 r2 84
	sll	r2 r2 2
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -96
	lw	r30 r31 92
	lw	r30 r2 88
	sll	r2 r2 2
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -100
	lw	r30 r31 96
	lw	r30 r2 92
	sll	r2 r2 2
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
	blez	r25 ble_tail_else.30729
	jr	r31
ble_tail_else.30729:
	addi	r0 r3 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	sll	r2 r2 2
	lw	r30 r3 12
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	sll	r2 r2 2
	lw	r30 r3 12
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 24
	sll	r2 r2 2
	lw	r30 r3 12
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 28
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 40
	sw	r2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r2 44
	sll	r2 r2 2
	lw	r30 r3 40
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r2 48
	sll	r2 r2 2
	lw	r30 r3 40
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -60
	lw	r30 r31 56
	lw	r30 r2 52
	sll	r2 r2 2
	lw	r30 r3 40
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -64
	lw	r30 r31 60
	lw	r30 r2 56
	sll	r2 r2 2
	lw	r30 r3 40
	swo	r1 r3 r2
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 60
	sw	r2 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -72
	lw	r30 r31 68
	lw	r30 r2 64
	sll	r2 r2 2
	lw	r30 r3 60
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r2 68
	sll	r2 r2 2
	lw	r30 r3 60
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -80
	lw	r30 r31 76
	lw	r30 r2 72
	sll	r2 r2 2
	lw	r30 r3 60
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -84
	lw	r30 r31 80
	lw	r30 r2 76
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 84
	sw	r2 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -96
	lw	r30 r31 92
	lw	r30 r2 88
	sll	r2 r2 2
	lw	r30 r3 84
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -100
	lw	r30 r31 96
	lw	r30 r2 92
	sll	r2 r2 2
	lw	r30 r3 84
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 96
	sw	r31 r30 100
	addi	r30 r30 104
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -104
	lw	r30 r31 100
	lw	r30 r2 96
	sll	r2 r2 2
	lw	r30 r3 84
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -108
	lw	r30 r31 104
	lw	r30 r2 100
	sll	r2 r2 2
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
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30730
	mov	r1 r4
	jr	r31
ble_tail_else.30730:
	sw	r1 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	jal	create_pixel.3168
	addi	r30 r30 -112
	lw	r30 r31 108
	lw	r30 r2 104
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30731
	mov	r1 r4
	jr	r31
ble_tail_else.30731:
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -116
	lw	r30 r31 112
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 116
	sw	r2 r30 120
	sw	r31 r30 124
	addi	r30 r30 128
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -128
	lw	r30 r31 124
	lw	r30 r2 120
	sll	r2 r2 2
	lw	r30 r3 116
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 124
	sw	r31 r30 128
	addi	r30 r30 132
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -132
	lw	r30 r31 128
	lw	r30 r2 124
	sll	r2 r2 2
	lw	r30 r3 116
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 128
	sw	r31 r30 132
	addi	r30 r30 136
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -136
	lw	r30 r31 132
	lw	r30 r2 128
	sll	r2 r2 2
	lw	r30 r3 116
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 132
	sw	r31 r30 136
	addi	r30 r30 140
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -140
	lw	r30 r31 136
	lw	r30 r2 132
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 144
	sw	r2 r30 148
	sw	r31 r30 152
	addi	r30 r30 156
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -156
	lw	r30 r31 152
	lw	r30 r2 148
	sll	r2 r2 2
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 152
	sw	r31 r30 156
	addi	r30 r30 160
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -160
	lw	r30 r31 156
	lw	r30 r2 152
	sll	r2 r2 2
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 156
	sw	r31 r30 160
	addi	r30 r30 164
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -164
	lw	r30 r31 160
	lw	r30 r2 156
	sll	r2 r2 2
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 160
	sw	r31 r30 164
	addi	r30 r30 168
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -168
	lw	r30 r31 164
	lw	r30 r2 160
	sll	r2 r2 2
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 164
	sw	r2 r30 168
	sw	r31 r30 172
	addi	r30 r30 176
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -176
	lw	r30 r31 172
	lw	r30 r2 168
	sll	r2 r2 2
	lw	r30 r3 164
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 172
	sw	r31 r30 176
	addi	r30 r30 180
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -180
	lw	r30 r31 176
	lw	r30 r2 172
	sll	r2 r2 2
	lw	r30 r3 164
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 176
	sw	r31 r30 180
	addi	r30 r30 184
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -184
	lw	r30 r31 180
	lw	r30 r2 176
	sll	r2 r2 2
	lw	r30 r3 164
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 180
	sw	r31 r30 184
	addi	r30 r30 188
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -188
	lw	r30 r31 184
	lw	r30 r2 180
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 188
	sw	r2 r30 192
	sw	r31 r30 196
	addi	r30 r30 200
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -200
	lw	r30 r31 196
	lw	r30 r2 192
	sll	r2 r2 2
	lw	r30 r3 188
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 196
	sw	r31 r30 200
	addi	r30 r30 204
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -204
	lw	r30 r31 200
	lw	r30 r2 196
	sll	r2 r2 2
	lw	r30 r3 188
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 200
	sw	r31 r30 204
	addi	r30 r30 208
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -208
	lw	r30 r31 204
	lw	r30 r2 200
	sll	r2 r2 2
	lw	r30 r3 188
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 204
	sw	r31 r30 208
	addi	r30 r30 212
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -212
	lw	r30 r31 208
	lw	r30 r2 204
	sll	r2 r2 2
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
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30732
	mov	r1 r4
	jr	r31
ble_tail_else.30732:
	sw	r1 r30 208
	sw	r31 r30 212
	addi	r30 r30 216
	jal	create_pixel.3168
	addi	r30 r30 -216
	lw	r30 r31 212
	lw	r30 r2 208
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r2
	mov	r1 r4
	j	init_line_elements.3170
calc_dirvec.3180:
	addi	r0 r4 5
	sub	r4 r1 r25
	blez	r25 ble_tail_else.30733
	mul.s	f1 f1 f0
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f1
	add.s	f0 f1 f0
	sw	r3 r30 0
	sw	r2 r30 4
	swc1	f3 r30 8
	sw	r1 r30 12
	swc1	f2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_sqrt
	addi	r30 r30 -24
	lw	r30 r31 20
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f1
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	min_caml_atan
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 16
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
	lwc1	 r30 f1 20
	mul.s	f0 f1 f0
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	mul.s	f0 f0 f1
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f2
	add.s	f1 f2 f1
	swc1	f0 r30 32
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov.s	f1 f0
	jal	min_caml_sqrt
	addi	r30 r30 -44
	lw	r30 r31 40
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f1
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov.s	f1 f0
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
	lwc1	 r30 f2 16
	lwc1	 r30 f3 8
	lw	r30 r1 36
	lw	r30 r2 4
	lw	r30 r3 0
	j	calc_dirvec.3180
ble_tail_else.30733:
	mul.s	f0 f0 f2
	mul.s	f1 f1 f3
	add.s	f2 f3 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	add.s	f2 f3 f2
	sw	r3 r30 0
	sw	r2 r30 4
	swc1	f1 r30 52
	swc1	f0 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov.s	f2 f0
	jal	min_caml_sqrt
	addi	r30 r30 -64
	lw	r30 r31 60
	lwc1	 r30 f1 56
	div.s	f1 f0 f1
	lwc1	 r30 f2 52
	div.s	f2 f0 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	div.s	f3 f0 f0
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -60
	lw	r30 r2 4
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 0
	sll	r2 r3 2
	lwo	r1 r3 r3
	lw	r3 r3 0
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f1 r3 r4
	addi	r0 r4 1
	sll	r4 r4 2
	swoc1	f2 r3 r4
	addi	r0 r4 2
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r3 40
	add	r2 r3 r3
	sll	r3 r3 2
	lwo	r1 r3 r3
	lw	r3 r3 0
	neg.s	f2 f3
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f1 r3 r4
	addi	r0 r4 1
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 2
	sll	r4 r4 2
	swoc1	f3 r3 r4
	addi	r0 r3 80
	add	r2 r3 r3
	sll	r3 r3 2
	lwo	r1 r3 r3
	lw	r3 r3 0
	neg.s	f1 f3
	neg.s	f2 f4
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f0 r3 r4
	addi	r0 r4 1
	sll	r4 r4 2
	swoc1	f3 r3 r4
	addi	r0 r4 2
	sll	r4 r4 2
	swoc1	f4 r3 r4
	addi	r0 r3 1
	add	r2 r3 r3
	sll	r3 r3 2
	lwo	r1 r3 r3
	lw	r3 r3 0
	neg.s	f1 f3
	neg.s	f2 f4
	neg.s	f0 f5
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f3 r3 r4
	addi	r0 r4 1
	sll	r4 r4 2
	swoc1	f4 r3 r4
	addi	r0 r4 2
	sll	r4 r4 2
	swoc1	f5 r3 r4
	addi	r0 r3 41
	add	r2 r3 r3
	sll	r3 r3 2
	lwo	r1 r3 r3
	lw	r3 r3 0
	neg.s	f1 f3
	neg.s	f0 f4
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f3 r3 r4
	addi	r0 r4 1
	sll	r4 r4 2
	swoc1	f4 r3 r4
	addi	r0 r4 2
	sll	r4 r4 2
	swoc1	f2 r3 r4
	addi	r0 r3 81
	add	r2 r3 r2
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r1 r1 0
	neg.s	f0 f0
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
	swoc1	f2 r1 r2
	jr	r31
calc_dirvecs.3188:
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.30735
	jr	r31
ble_tail_else.30735:
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
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
	blez	r25 ble_nontail_else.30737
	j	ble_nontail_cont.30738
ble_nontail_else.30737:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30738:
	addi	r0 r3 0
	sub	r3 r1 r25
	blez	r25 ble_tail_else.30739
	jr	r31
ble_tail_else.30739:
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
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
	blez	r25 ble_nontail_else.30741
	j	ble_nontail_cont.30742
ble_nontail_else.30741:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30742:
	lwc1	 r30 f0 4
	lw	r30 r3 8
	j	calc_dirvecs.3188
calc_dirvec_rows.3193:
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.30743
	jr	r31
ble_tail_else.30743:
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
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
	blez	r25 ble_nontail_else.30745
	j	ble_nontail_cont.30746
ble_nontail_else.30745:
	addi	r0 r4 5
	sub	r2 r4 r2
ble_nontail_cont.30746:
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
	blez	r25 ble_nontail_else.30747
	j	ble_nontail_cont.30748
ble_nontail_else.30747:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30748:
	addi	r0 r3 4
	lw	r30 r4 4
	add	r4 r3 r3
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.30749
	jr	r31
ble_tail_else.30749:
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
	blez	r25 ble_nontail_else.30751
	j	ble_nontail_cont.30752
ble_nontail_else.30751:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30752:
	addi	r0 r3 4
	lw	r30 r4 24
	add	r4 r3 r3
	j	calc_dirvec_rows.3193
create_dirvec_elements.3199:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30753
	jr	r31
ble_tail_else.30753:
	addi	r0 r3 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30755
	jr	r31
ble_tail_else.30755:
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30757
	jr	r31
ble_tail_else.30757:
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30759
	jr	r31
ble_tail_else.30759:
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30761
	jr	r31
ble_tail_else.30761:
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30763
	jr	r31
ble_tail_else.30763:
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30765
	jr	r31
ble_tail_else.30765:
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30767
	jr	r31
ble_tail_else.30767:
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r2
	mov	r1 r4
	j	create_dirvec_elements.3199
create_dirvecs.3202:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30769
	jr	r31
ble_tail_else.30769:
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r0 r3 118
	addi	r0 r4 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 114
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 113
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r1 r3 r2
	addi	r0 r1 112
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
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
	blez	r25 ble_tail_else.30771
	jr	r31
ble_tail_else.30771:
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 76
	swo	r1 r4 r3
	addi	r30 r30 92
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -92
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r0 r3 118
	addi	r0 r4 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 92
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 92
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 92
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 92
	swo	r1 r3 r2
	addi	r0 r1 114
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 92
	swo	r1 r3 r2
	addi	r0 r1 113
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
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
	blez	r25 ble_tail_else.30773
	jr	r31
ble_tail_else.30773:
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 144
	swo	r1 r4 r3
	addi	r30 r30 160
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -160
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r0 r3 118
	addi	r0 r4 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 160
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 160
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 160
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 160
	swo	r1 r3 r2
	addi	r0 r1 114
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
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
	blez	r25 ble_tail_else.30775
	jr	r31
ble_tail_else.30775:
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 204
	swo	r1 r4 r3
	addi	r30 r30 220
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -220
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r0 r3 118
	addi	r0 r4 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 220
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 220
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 220
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
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
	blez	r25 ble_tail_else.30777
	jr	r31
ble_tail_else.30777:
	sll	r2 r3 2
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
	sll	r5 r5 2
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
	blez	r25 ble_tail_else.30779
	jr	r31
ble_tail_else.30779:
	sll	r1 r2 2
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
	sll	r5 r5 2
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r1 r30 8
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30781
	j	ble_nontail_cont.30782
ble_nontail_else.30781:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r4 r6 2
	lwo	r5 r6 r5
	lw	r2 r6 4
	lw	r2 r7 0
	lw	r5 r8 4
	addi	r0 r9 1
	sw	r2 r30 12
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30783
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30785
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
	sll	r2 r3 2
	lw	r30 r4 16
	swo	r1 r4 r3
	j	beq_cont.30786
beq_else.30785:
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
	sll	r2 r3 2
	lw	r30 r4 16
	swo	r1 r4 r3
beq_cont.30786:
	j	beq_cont.30784
beq_else.30783:
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
	sll	r2 r3 2
	lw	r30 r4 16
	swo	r1 r4 r3
beq_cont.30784:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 12
	sw	r31 r30 24
	addi	r30 r30 28
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -28
	lw	r30 r31 24
ble_nontail_cont.30782:
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30787
	jr	r31
ble_tail_else.30787:
	sll	r1 r2 2
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
	sll	r5 r5 2
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
	blez	r25 ble_tail_else.30789
	jr	r31
ble_tail_else.30789:
	sll	r1 r2 2
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
	sll	r5 r5 2
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r1 r30 28
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30791
	j	ble_nontail_cont.30792
ble_nontail_else.30791:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r4 r6 2
	lwo	r5 r6 r5
	lw	r2 r6 4
	lw	r2 r7 0
	lw	r5 r8 4
	addi	r0 r9 1
	sw	r2 r30 32
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30793
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30795
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
	sll	r2 r3 2
	lw	r30 r4 36
	swo	r1 r4 r3
	j	beq_cont.30796
beq_else.30795:
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
	sll	r2 r3 2
	lw	r30 r4 36
	swo	r1 r4 r3
beq_cont.30796:
	j	beq_cont.30794
beq_else.30793:
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
	sll	r2 r3 2
	lw	r30 r4 36
	swo	r1 r4 r3
beq_cont.30794:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 32
	sw	r31 r30 44
	addi	r30 r30 48
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -48
	lw	r30 r31 44
ble_nontail_cont.30792:
	addi	r0 r1 1
	lw	r30 r2 28
	sub	r2 r1 r2
	lw	r30 r1 0
	j	init_dirvec_constants.3204
init_vecset_constants.3207:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30797
	jr	r31
ble_tail_else.30797:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 119
	sll	r3 r3 2
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
	sll	r5 r5 2
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r1 r30 0
	sw	r2 r30 4
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30799
	j	ble_nontail_cont.30800
ble_nontail_else.30799:
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	sll	r4 r6 2
	lwo	r5 r6 r5
	lw	r3 r6 4
	lw	r3 r7 0
	lw	r5 r8 4
	addi	r0 r9 1
	sw	r3 r30 8
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30801
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30803
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
	sll	r2 r3 2
	lw	r30 r4 12
	swo	r1 r4 r3
	j	beq_cont.30804
beq_else.30803:
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
	sll	r2 r3 2
	lw	r30 r4 12
	swo	r1 r4 r3
beq_cont.30804:
	j	beq_cont.30802
beq_else.30801:
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
	sll	r2 r3 2
	lw	r30 r4 12
	swo	r1 r4 r3
beq_cont.30802:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 8
	sw	r31 r30 20
	addi	r30 r30 24
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -24
	lw	r30 r31 20
ble_nontail_cont.30800:
	addi	r0 r1 118
	sll	r1 r1 2
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
	sll	r4 r4 2
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
	sll	r1 r1 2
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
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	addi	r0 r4 0
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30805
	j	ble_nontail_cont.30806
ble_nontail_else.30805:
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	sll	r3 r5 2
	lwo	r4 r5 r4
	lw	r1 r5 4
	lw	r1 r6 0
	lw	r4 r7 4
	addi	r0 r8 1
	sw	r1 r30 20
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30807
	addi	r0 r8 2
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30809
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
	sll	r2 r3 2
	lw	r30 r4 24
	swo	r1 r4 r3
	j	beq_cont.30810
beq_else.30809:
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
	sll	r2 r3 2
	lw	r30 r4 24
	swo	r1 r4 r3
beq_cont.30810:
	j	beq_cont.30808
beq_else.30807:
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
	sll	r2 r3 2
	lw	r30 r4 24
	swo	r1 r4 r3
beq_cont.30808:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 20
	sw	r31 r30 32
	addi	r30 r30 36
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -36
	lw	r30 r31 32
ble_nontail_cont.30806:
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
	blez	r25 ble_tail_else.30811
	jr	r31
ble_tail_else.30811:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r1 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 119
	sll	r3 r3 2
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
	sll	r5 r5 2
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
	sll	r1 r1 2
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
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	addi	r0 r4 0
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30813
	j	ble_nontail_cont.30814
ble_nontail_else.30813:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r3 r5 2
	lwo	r4 r5 r4
	lw	r1 r5 4
	lw	r1 r6 0
	lw	r4 r7 4
	addi	r0 r8 1
	sw	r1 r30 40
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30815
	addi	r0 r8 2
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30817
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
	sll	r2 r3 2
	lw	r30 r4 44
	swo	r1 r4 r3
	j	beq_cont.30818
beq_else.30817:
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
	sll	r2 r3 2
	lw	r30 r4 44
	swo	r1 r4 r3
beq_cont.30818:
	j	beq_cont.30816
beq_else.30815:
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
	sll	r2 r3 2
	lw	r30 r4 44
	swo	r1 r4 r3
beq_cont.30816:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 40
	sw	r31 r30 52
	addi	r30 r30 56
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -56
	lw	r30 r31 52
ble_nontail_cont.30814:
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
	blez	r25 ble_tail_else.30819
	jr	r31
ble_tail_else.30819:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	sll	r1 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 119
	sll	r3 r3 2
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
	sll	r5 r5 2
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r1 r30 52
	sw	r2 r30 56
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30821
	j	ble_nontail_cont.30822
ble_nontail_else.30821:
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -60
	sll	r4 r6 2
	lwo	r5 r6 r5
	lw	r3 r6 4
	lw	r3 r7 0
	lw	r5 r8 4
	addi	r0 r9 1
	sw	r3 r30 60
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30823
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30825
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
	sll	r2 r3 2
	lw	r30 r4 64
	swo	r1 r4 r3
	j	beq_cont.30826
beq_else.30825:
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
	sll	r2 r3 2
	lw	r30 r4 64
	swo	r1 r4 r3
beq_cont.30826:
	j	beq_cont.30824
beq_else.30823:
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
	sll	r2 r3 2
	lw	r30 r4 64
	swo	r1 r4 r3
beq_cont.30824:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 60
	sw	r31 r30 72
	addi	r30 r30 76
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -76
	lw	r30 r31 72
ble_nontail_cont.30822:
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
	blez	r25 ble_tail_else.30827
	jr	r31
ble_tail_else.30827:
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -72
	sll	r1 r3 2
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
	sll	r4 r4 2
	lwo	r3 r4 r3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r2 r2 28
	addi	r0 r4 0
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	addi	r0 r4 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
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
	sll	r3 r3 2
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
	sll	r4 r4 2
	lwc1	 r30 f0 28
	swoc1	f0 r3 r4
	addi	r0 r4 1
	sll	r4 r4 2
	lwc1	 r30 f0 24
	swoc1	f0 r3 r4
	addi	r0 r4 2
	sll	r4 r4 2
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
	sll	r5 r5 2
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r2 r30 36
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30829
	j	ble_nontail_cont.30830
ble_nontail_else.30829:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r4 r6 2
	lwo	r5 r6 r5
	lw	r5 r6 4
	addi	r0 r7 1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30831
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30833
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
	sll	r2 r3 2
	lw	r30 r4 40
	swo	r1 r4 r3
	j	beq_cont.30834
beq_else.30833:
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
	sll	r2 r3 2
	lw	r30 r4 40
	swo	r1 r4 r3
beq_cont.30834:
	j	beq_cont.30832
beq_else.30831:
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
	sll	r2 r3 2
	lw	r30 r4 40
	swo	r1 r4 r3
beq_cont.30832:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 36
	sw	r31 r30 48
	addi	r30 r30 52
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -52
	lw	r30 r31 48
ble_nontail_cont.30830:
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	mov	r2 r27
	addi	r27 r27 16
	lwc1	 r30 f0 16
	swc1	f0 r2 8
	lw	r30 r3 36
	sw	r3 r2 4
	lw	r30 r3 12
	sw	r3 r2 0
	lw	r30 r3 8
	sll	r3 r4 2
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
	sll	r6 r6 2
	lwoc1	r5 r6 f1
	addi	r0 r5 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
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
	sll	r3 r3 2
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
	sll	r4 r4 2
	lwc1	 r30 f0 0
	swoc1	f0 r3 r4
	addi	r0 r4 1
	sll	r4 r4 2
	lwc1	 r30 f1 56
	swoc1	f1 r3 r4
	addi	r0 r4 2
	sll	r4 r4 2
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
	sll	r5 r5 2
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r2 r30 64
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30835
	j	ble_nontail_cont.30836
ble_nontail_else.30835:
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -68
	sll	r4 r6 2
	lwo	r5 r6 r5
	lw	r5 r6 4
	addi	r0 r7 1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30837
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30839
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
	sll	r2 r3 2
	lw	r30 r4 68
	swo	r1 r4 r3
	j	beq_cont.30840
beq_else.30839:
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
	sll	r2 r3 2
	lw	r30 r4 68
	swo	r1 r4 r3
beq_cont.30840:
	j	beq_cont.30838
beq_else.30837:
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
	sll	r2 r3 2
	lw	r30 r4 68
	swo	r1 r4 r3
beq_cont.30838:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 64
	sw	r31 r30 76
	addi	r30 r30 80
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -80
	lw	r30 r31 76
ble_nontail_cont.30836:
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -76
	mov	r2 r27
	addi	r27 r27 16
	lwc1	 r30 f0 16
	swc1	f0 r2 8
	lw	r30 r3 64
	sw	r3 r2 4
	lw	r30 r3 52
	sw	r3 r2 0
	lw	r30 r3 48
	sll	r3 r3 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f1
	addi	r0 r4 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
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
	sll	r3 r3 2
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
	sll	r4 r4 2
	lwc1	 r30 f0 0
	swoc1	f0 r3 r4
	addi	r0 r4 1
	sll	r4 r4 2
	lwc1	 r30 f0 24
	swoc1	f0 r3 r4
	addi	r0 r4 2
	sll	r4 r4 2
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
	sll	r5 r5 2
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r2 r30 92
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30841
	j	ble_nontail_cont.30842
ble_nontail_else.30841:
	addi	r30 r30 96
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -96
	sll	r4 r6 2
	lwo	r5 r6 r5
	lw	r5 r6 4
	addi	r0 r7 1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30843
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30845
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
	sll	r2 r3 2
	lw	r30 r4 96
	swo	r1 r4 r3
	j	beq_cont.30846
beq_else.30845:
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
	sll	r2 r3 2
	lw	r30 r4 96
	swo	r1 r4 r3
beq_cont.30846:
	j	beq_cont.30844
beq_else.30843:
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
	sll	r2 r3 2
	lw	r30 r4 96
	swo	r1 r4 r3
beq_cont.30844:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 92
	sw	r31 r30 104
	addi	r30 r30 108
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -108
	lw	r30 r31 104
ble_nontail_cont.30842:
	addi	r30 r30 104
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -104
	mov	r2 r27
	addi	r27 r27 16
	lwc1	 r30 f0 16
	swc1	f0 r2 8
	lw	r30 r3 92
	sw	r3 r2 4
	lw	r30 r3 80
	sw	r3 r2 0
	lw	r30 r3 76
	sll	r3 r3 2
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
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwo	r3 r4 r3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r2 r4 28
	addi	r0 r5 0
	sll	r5 r5 2
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
	sll	r6 r6 2
	lwoc1	r4 r6 f1
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r5 r6 f2
	mul.s	f1 f2 f1
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r5 r6 f3
	mul.s	f2 f3 f2
	add.s	f1 f2 f1
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r4 r6 f2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r5 r4 f3
	mul.s	f2 f3 f2
	add.s	f1 f2 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lw	r2 r4 16
	addi	r0 r5 0
	sll	r5 r5 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	sub.s	f2 f3 f2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f3
	lw	r2 r4 16
	addi	r0 r5 1
	sll	r5 r5 2
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
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	lw	r2 r2 16
	addi	r0 r4 2
	sll	r4 r4 2
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
	sll	r4 r4 2
	lwoc1	r2 r4 f4
	sub.s	f1 f4 f1
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
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
	sll	r3 r3 2
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
	sll	r4 r4 2
	lwc1	 r30 f0 20
	swoc1	f0 r3 r4
	addi	r0 r4 1
	sll	r4 r4 2
	lwc1	 r30 f0 16
	swoc1	f0 r3 r4
	addi	r0 r4 2
	sll	r4 r4 2
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
	sll	r5 r5 2
	lwo	r4 r5 r4
	addi	r0 r5 1
	sub	r4 r5 r4
	addi	r0 r5 0
	sw	r2 r30 28
	sub	r5 r4 r25
	blez	r25 ble_nontail_else.30848
	j	ble_nontail_cont.30849
ble_nontail_else.30848:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r4 r6 2
	lwo	r5 r6 r5
	lw	r5 r6 4
	addi	r0 r7 1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30850
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30852
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
	sll	r2 r3 2
	lw	r30 r4 32
	swo	r1 r4 r3
	j	beq_cont.30853
beq_else.30852:
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
	sll	r2 r3 2
	lw	r30 r4 32
	swo	r1 r4 r3
beq_cont.30853:
	j	beq_cont.30851
beq_else.30850:
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
	sll	r2 r3 2
	lw	r30 r4 32
	swo	r1 r4 r3
beq_cont.30851:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 28
	sw	r31 r30 40
	addi	r30 r30 44
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -44
	lw	r30 r31 40
ble_nontail_cont.30849:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	mov	r2 r27
	addi	r27 r27 16
	lwc1	 r30 f0 8
	swc1	f0 r2 8
	lw	r30 r3 28
	sw	r3 r2 4
	lw	r30 r3 4
	sw	r3 r2 0
	lw	r30 r3 0
	sll	r3 r4 2
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
	sll	r2 r2 2
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
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	sll	r1 r1 2
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
	sll	r2 r2 2
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 2
	sub	r2 r3 r2
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30855
	j	ble_nontail_cont.30856
ble_nontail_else.30855:
	addi	r0 r3 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 16
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 28
	sw	r2 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r2 32
	sll	r2 r2 2
	lw	r30 r3 28
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 36
	sll	r2 r2 2
	lw	r30 r3 28
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r2 40
	sll	r2 r2 2
	lw	r30 r3 28
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r2 44
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 56
	sw	r2 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -68
	lw	r30 r31 64
	lw	r30 r2 60
	sll	r2 r2 2
	lw	r30 r3 56
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -72
	lw	r30 r31 68
	lw	r30 r2 64
	sll	r2 r2 2
	lw	r30 r3 56
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r2 68
	sll	r2 r2 2
	lw	r30 r3 56
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -80
	lw	r30 r31 76
	lw	r30 r2 72
	sll	r2 r2 2
	lw	r30 r3 56
	swo	r1 r3 r2
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 76
	sw	r2 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -88
	lw	r30 r31 84
	lw	r30 r2 80
	sll	r2 r2 2
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -92
	lw	r30 r31 88
	lw	r30 r2 84
	sll	r2 r2 2
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -96
	lw	r30 r31 92
	lw	r30 r2 88
	sll	r2 r2 2
	lw	r30 r3 76
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -100
	lw	r30 r31 96
	lw	r30 r2 92
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 100
	sw	r2 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -112
	lw	r30 r31 108
	lw	r30 r2 104
	sll	r2 r2 2
	lw	r30 r3 100
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -116
	lw	r30 r31 112
	lw	r30 r2 108
	sll	r2 r2 2
	lw	r30 r3 100
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 112
	sw	r31 r30 116
	addi	r30 r30 120
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -120
	lw	r30 r31 116
	lw	r30 r2 112
	sll	r2 r2 2
	lw	r30 r3 100
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 116
	sw	r31 r30 120
	addi	r30 r30 124
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -124
	lw	r30 r31 120
	lw	r30 r2 116
	sll	r2 r2 2
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
	sll	r2 r3 2
	lw	r30 r4 16
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30857
	mov	r1 r4
	j	ble_nontail_cont.30858
ble_nontail_else.30857:
	sw	r1 r30 120
	sw	r31 r30 124
	addi	r30 r30 128
	jal	create_pixel.3168
	addi	r30 r30 -128
	lw	r30 r31 124
	lw	r30 r2 120
	sll	r2 r3 2
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
ble_nontail_cont.30858:
ble_nontail_cont.30856:
	addi	r30 r30 124
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -124
	addi	r0 r3 0
	sll	r3 r3 2
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 2
	sub	r2 r3 r2
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30859
	j	ble_nontail_cont.30860
ble_nontail_else.30859:
	addi	r0 r3 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 132
	sw	r2 r30 136
	sw	r31 r30 140
	addi	r30 r30 144
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -144
	lw	r30 r31 140
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 144
	sw	r2 r30 148
	sw	r31 r30 152
	addi	r30 r30 156
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -156
	lw	r30 r31 152
	lw	r30 r2 148
	sll	r2 r2 2
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 152
	sw	r31 r30 156
	addi	r30 r30 160
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -160
	lw	r30 r31 156
	lw	r30 r2 152
	sll	r2 r2 2
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 156
	sw	r31 r30 160
	addi	r30 r30 164
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -164
	lw	r30 r31 160
	lw	r30 r2 156
	sll	r2 r2 2
	lw	r30 r3 144
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 160
	sw	r31 r30 164
	addi	r30 r30 168
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -168
	lw	r30 r31 164
	lw	r30 r2 160
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 172
	sw	r2 r30 176
	sw	r31 r30 180
	addi	r30 r30 184
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -184
	lw	r30 r31 180
	lw	r30 r2 176
	sll	r2 r2 2
	lw	r30 r3 172
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 180
	sw	r31 r30 184
	addi	r30 r30 188
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -188
	lw	r30 r31 184
	lw	r30 r2 180
	sll	r2 r2 2
	lw	r30 r3 172
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 184
	sw	r31 r30 188
	addi	r30 r30 192
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -192
	lw	r30 r31 188
	lw	r30 r2 184
	sll	r2 r2 2
	lw	r30 r3 172
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 188
	sw	r31 r30 192
	addi	r30 r30 196
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -196
	lw	r30 r31 192
	lw	r30 r2 188
	sll	r2 r2 2
	lw	r30 r3 172
	swo	r1 r3 r2
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 192
	sw	r2 r30 196
	sw	r31 r30 200
	addi	r30 r30 204
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -204
	lw	r30 r31 200
	lw	r30 r2 196
	sll	r2 r2 2
	lw	r30 r3 192
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 200
	sw	r31 r30 204
	addi	r30 r30 208
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -208
	lw	r30 r31 204
	lw	r30 r2 200
	sll	r2 r2 2
	lw	r30 r3 192
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 204
	sw	r31 r30 208
	addi	r30 r30 212
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -212
	lw	r30 r31 208
	lw	r30 r2 204
	sll	r2 r2 2
	lw	r30 r3 192
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 208
	sw	r31 r30 212
	addi	r30 r30 216
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -216
	lw	r30 r31 212
	lw	r30 r2 208
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 216
	sw	r2 r30 220
	sw	r31 r30 224
	addi	r30 r30 228
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -228
	lw	r30 r31 224
	lw	r30 r2 220
	sll	r2 r2 2
	lw	r30 r3 216
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 224
	sw	r31 r30 228
	addi	r30 r30 232
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -232
	lw	r30 r31 228
	lw	r30 r2 224
	sll	r2 r2 2
	lw	r30 r3 216
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 228
	sw	r31 r30 232
	addi	r30 r30 236
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -236
	lw	r30 r31 232
	lw	r30 r2 228
	sll	r2 r2 2
	lw	r30 r3 216
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 232
	sw	r31 r30 236
	addi	r30 r30 240
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -240
	lw	r30 r31 236
	lw	r30 r2 232
	sll	r2 r2 2
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
	sll	r2 r3 2
	lw	r30 r4 132
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30861
	mov	r1 r4
	j	ble_nontail_cont.30862
ble_nontail_else.30861:
	sw	r1 r30 236
	sw	r31 r30 240
	addi	r30 r30 244
	jal	create_pixel.3168
	addi	r30 r30 -244
	lw	r30 r31 240
	lw	r30 r2 236
	sll	r2 r3 2
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
ble_nontail_cont.30862:
ble_nontail_cont.30860:
	addi	r30 r30 240
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -240
	addi	r0 r3 0
	sll	r3 r3 2
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
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 2
	sub	r2 r3 r2
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30863
	j	ble_nontail_cont.30864
ble_nontail_else.30863:
	addi	r0 r3 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 248
	sw	r2 r30 252
	sw	r31 r30 256
	addi	r30 r30 260
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -260
	lw	r30 r31 256
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 260
	sw	r2 r30 264
	sw	r31 r30 268
	addi	r30 r30 272
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -272
	lw	r30 r31 268
	lw	r30 r2 264
	sll	r2 r2 2
	lw	r30 r3 260
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 268
	sw	r31 r30 272
	addi	r30 r30 276
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -276
	lw	r30 r31 272
	lw	r30 r2 268
	sll	r2 r2 2
	lw	r30 r3 260
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 272
	sw	r31 r30 276
	addi	r30 r30 280
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -280
	lw	r30 r31 276
	lw	r30 r2 272
	sll	r2 r2 2
	lw	r30 r3 260
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 276
	sw	r31 r30 280
	addi	r30 r30 284
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -284
	lw	r30 r31 280
	lw	r30 r2 276
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 288
	sw	r2 r30 292
	sw	r31 r30 296
	addi	r30 r30 300
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -300
	lw	r30 r31 296
	lw	r30 r2 292
	sll	r2 r2 2
	lw	r30 r3 288
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 296
	sw	r31 r30 300
	addi	r30 r30 304
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -304
	lw	r30 r31 300
	lw	r30 r2 296
	sll	r2 r2 2
	lw	r30 r3 288
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 300
	sw	r31 r30 304
	addi	r30 r30 308
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -308
	lw	r30 r31 304
	lw	r30 r2 300
	sll	r2 r2 2
	lw	r30 r3 288
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 304
	sw	r31 r30 308
	addi	r30 r30 312
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -312
	lw	r30 r31 308
	lw	r30 r2 304
	sll	r2 r2 2
	lw	r30 r3 288
	swo	r1 r3 r2
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 308
	sw	r2 r30 312
	sw	r31 r30 316
	addi	r30 r30 320
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -320
	lw	r30 r31 316
	lw	r30 r2 312
	sll	r2 r2 2
	lw	r30 r3 308
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 316
	sw	r31 r30 320
	addi	r30 r30 324
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -324
	lw	r30 r31 320
	lw	r30 r2 316
	sll	r2 r2 2
	lw	r30 r3 308
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 320
	sw	r31 r30 324
	addi	r30 r30 328
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -328
	lw	r30 r31 324
	lw	r30 r2 320
	sll	r2 r2 2
	lw	r30 r3 308
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 324
	sw	r31 r30 328
	addi	r30 r30 332
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -332
	lw	r30 r31 328
	lw	r30 r2 324
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 332
	sw	r2 r30 336
	sw	r31 r30 340
	addi	r30 r30 344
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -344
	lw	r30 r31 340
	lw	r30 r2 336
	sll	r2 r2 2
	lw	r30 r3 332
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 340
	sw	r31 r30 344
	addi	r30 r30 348
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -348
	lw	r30 r31 344
	lw	r30 r2 340
	sll	r2 r2 2
	lw	r30 r3 332
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 344
	sw	r31 r30 348
	addi	r30 r30 352
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -352
	lw	r30 r31 348
	lw	r30 r2 344
	sll	r2 r2 2
	lw	r30 r3 332
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 348
	sw	r31 r30 352
	addi	r30 r30 356
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -356
	lw	r30 r31 352
	lw	r30 r2 348
	sll	r2 r2 2
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
	sll	r2 r3 2
	lw	r30 r4 248
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30865
	mov	r1 r4
	j	ble_nontail_cont.30866
ble_nontail_else.30865:
	sw	r1 r30 352
	sw	r31 r30 356
	addi	r30 r30 360
	jal	create_pixel.3168
	addi	r30 r30 -360
	lw	r30 r31 356
	lw	r30 r2 352
	sll	r2 r3 2
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
ble_nontail_cont.30866:
ble_nontail_cont.30864:
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.30867
	addi	r0 r1 1
	sw	r1 r30 384
	sw	r31 r30 388
	addi	r30 r30 392
	jal	read_nth_object.2879
	addi	r30 r30 -392
	lw	r30 r31 388
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30869
	addi	r0 r1 2
	sw	r1 r30 388
	sw	r31 r30 392
	addi	r30 r30 396
	jal	read_nth_object.2879
	addi	r30 r30 -396
	lw	r30 r31 392
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30871
	addi	r0 r1 3
	sw	r1 r30 392
	sw	r31 r30 396
	addi	r30 r30 400
	jal	read_nth_object.2879
	addi	r30 r30 -400
	lw	r30 r31 396
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30873
	addi	r0 r1 4
	sw	r1 r30 396
	sw	r31 r30 400
	addi	r30 r30 404
	jal	read_nth_object.2879
	addi	r30 r30 -404
	lw	r30 r31 400
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30875
	addi	r0 r1 5
	sw	r31 r30 400
	addi	r30 r30 404
	jal	read_object.2881
	addi	r30 r30 -404
	lw	r30 r31 400
	j	beq_cont.30876
beq_else.30875:
	addi	r30 r30 400
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -400
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 396
	swo	r3 r1 r2
beq_cont.30876:
	j	beq_cont.30874
beq_else.30873:
	addi	r30 r30 400
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -400
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 392
	swo	r3 r1 r2
beq_cont.30874:
	j	beq_cont.30872
beq_else.30871:
	addi	r30 r30 400
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -400
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 388
	swo	r3 r1 r2
beq_cont.30872:
	j	beq_cont.30870
beq_else.30869:
	addi	r30 r30 400
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -400
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 384
	swo	r3 r1 r2
beq_cont.30870:
	j	beq_cont.30868
beq_else.30867:
	addi	r30 r30 400
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -400
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 380
	swo	r3 r1 r2
beq_cont.30868:
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
	beq	r25 r0 beq_else.30877
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
	beq	r25 r0 beq_else.30879
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
	beq	r25 r0 beq_else.30881
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
	beq	r25 r0 beq_else.30883
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
	beq	r25 r0 beq_else.30885
	addi	r0 r2 5
	sw	r1 r30 440
	sw	r31 r30 444
	addi	r30 r30 448
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -448
	lw	r30 r31 444
	lw	r30 r2 436
	sll	r2 r2 2
	lw	r30 r3 440
	swo	r3 r1 r2
	j	beq_cont.30886
beq_else.30885:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 444
	addi	r30 r30 448
	jal	min_caml_create_array
	addi	r30 r30 -448
	lw	r30 r31 444
beq_cont.30886:
	lw	r30 r2 428
	sll	r2 r2 2
	lw	r30 r3 432
	swo	r3 r1 r2
	j	beq_cont.30884
beq_else.30883:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 444
	addi	r30 r30 448
	jal	min_caml_create_array
	addi	r30 r30 -448
	lw	r30 r31 444
beq_cont.30884:
	lw	r30 r2 420
	sll	r2 r2 2
	lw	r30 r3 424
	swo	r3 r1 r2
	j	beq_cont.30882
beq_else.30881:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 444
	addi	r30 r30 448
	jal	min_caml_create_array
	addi	r30 r30 -448
	lw	r30 r31 444
beq_cont.30882:
	lw	r30 r2 412
	sll	r2 r2 2
	lw	r30 r3 416
	swo	r3 r1 r2
	j	beq_cont.30880
beq_else.30879:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 444
	addi	r30 r30 448
	jal	min_caml_create_array
	addi	r30 r30 -448
	lw	r30 r31 444
beq_cont.30880:
	lw	r30 r2 404
	sll	r2 r2 2
	lw	r30 r3 408
	swo	r3 r1 r2
	j	beq_cont.30878
beq_else.30877:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 444
	addi	r30 r30 448
	jal	min_caml_create_array
	addi	r30 r30 -448
	lw	r30 r31 444
beq_cont.30878:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30887
	addi	r30 r30 444
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -444
	lw	r30 r3 400
	sll	r3 r3 2
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
	beq	r25 r0 beq_else.30889
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
	beq	r25 r0 beq_else.30891
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
	beq	r25 r0 beq_else.30893
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
	beq	r25 r0 beq_else.30895
	addi	r0 r2 4
	sw	r1 r30 476
	sw	r31 r30 480
	addi	r30 r30 484
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -484
	lw	r30 r31 480
	lw	r30 r2 472
	sll	r2 r2 2
	lw	r30 r3 476
	swo	r3 r1 r2
	j	beq_cont.30896
beq_else.30895:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 480
	addi	r30 r30 484
	jal	min_caml_create_array
	addi	r30 r30 -484
	lw	r30 r31 480
beq_cont.30896:
	lw	r30 r2 464
	sll	r2 r2 2
	lw	r30 r3 468
	swo	r3 r1 r2
	j	beq_cont.30894
beq_else.30893:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 480
	addi	r30 r30 484
	jal	min_caml_create_array
	addi	r30 r30 -484
	lw	r30 r31 480
beq_cont.30894:
	lw	r30 r2 456
	sll	r2 r2 2
	lw	r30 r3 460
	swo	r3 r1 r2
	j	beq_cont.30892
beq_else.30891:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 480
	addi	r30 r30 484
	jal	min_caml_create_array
	addi	r30 r30 -484
	lw	r30 r31 480
beq_cont.30892:
	lw	r30 r2 448
	sll	r2 r2 2
	lw	r30 r3 452
	swo	r3 r1 r2
	j	beq_cont.30890
beq_else.30889:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 480
	addi	r30 r30 484
	jal	min_caml_create_array
	addi	r30 r30 -484
	lw	r30 r31 480
beq_cont.30890:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30897
	addi	r30 r30 480
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -480
	lw	r30 r3 444
	sll	r3 r3 2
	swo	r1 r2 r3
	addi	r0 r1 2
	sw	r31 r30 480
	addi	r30 r30 484
	jal	read_and_network.2889
	addi	r30 r30 -484
	lw	r30 r31 480
	j	beq_cont.30898
beq_else.30897:
beq_cont.30898:
	j	beq_cont.30888
beq_else.30887:
beq_cont.30888:
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
	beq	r25 r0 beq_else.30899
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
	beq	r25 r0 beq_else.30901
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
	beq	r25 r0 beq_else.30903
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
	beq	r25 r0 beq_else.30905
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
	beq	r25 r0 beq_else.30907
	addi	r0 r2 5
	sw	r1 r30 528
	sw	r31 r30 532
	addi	r30 r30 536
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -536
	lw	r30 r31 532
	lw	r30 r2 524
	sll	r2 r2 2
	lw	r30 r3 528
	swo	r3 r1 r2
	j	beq_cont.30908
beq_else.30907:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 532
	addi	r30 r30 536
	jal	min_caml_create_array
	addi	r30 r30 -536
	lw	r30 r31 532
beq_cont.30908:
	lw	r30 r2 516
	sll	r2 r2 2
	lw	r30 r3 520
	swo	r3 r1 r2
	j	beq_cont.30906
beq_else.30905:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 532
	addi	r30 r30 536
	jal	min_caml_create_array
	addi	r30 r30 -536
	lw	r30 r31 532
beq_cont.30906:
	lw	r30 r2 508
	sll	r2 r2 2
	lw	r30 r3 512
	swo	r3 r1 r2
	j	beq_cont.30904
beq_else.30903:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 532
	addi	r30 r30 536
	jal	min_caml_create_array
	addi	r30 r30 -536
	lw	r30 r31 532
beq_cont.30904:
	lw	r30 r2 500
	sll	r2 r2 2
	lw	r30 r3 504
	swo	r3 r1 r2
	j	beq_cont.30902
beq_else.30901:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 532
	addi	r30 r30 536
	jal	min_caml_create_array
	addi	r30 r30 -536
	lw	r30 r31 532
beq_cont.30902:
	lw	r30 r2 492
	sll	r2 r2 2
	lw	r30 r3 496
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.30900
beq_else.30899:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 532
	addi	r30 r30 536
	jal	min_caml_create_array
	addi	r30 r30 -536
	lw	r30 r31 532
	mov	r2 r1
beq_cont.30900:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30909
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
	beq	r25 r0 beq_else.30911
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
	beq	r25 r0 beq_else.30913
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
	beq	r25 r0 beq_else.30915
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
	beq	r25 r0 beq_else.30917
	addi	r0 r2 4
	sw	r1 r30 568
	sw	r31 r30 572
	addi	r30 r30 576
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -576
	lw	r30 r31 572
	lw	r30 r2 564
	sll	r2 r2 2
	lw	r30 r3 568
	swo	r3 r1 r2
	j	beq_cont.30918
beq_else.30917:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 572
	addi	r30 r30 576
	jal	min_caml_create_array
	addi	r30 r30 -576
	lw	r30 r31 572
beq_cont.30918:
	lw	r30 r2 556
	sll	r2 r2 2
	lw	r30 r3 560
	swo	r3 r1 r2
	j	beq_cont.30916
beq_else.30915:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 572
	addi	r30 r30 576
	jal	min_caml_create_array
	addi	r30 r30 -576
	lw	r30 r31 572
beq_cont.30916:
	lw	r30 r2 548
	sll	r2 r2 2
	lw	r30 r3 552
	swo	r3 r1 r2
	j	beq_cont.30914
beq_else.30913:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 572
	addi	r30 r30 576
	jal	min_caml_create_array
	addi	r30 r30 -576
	lw	r30 r31 572
beq_cont.30914:
	lw	r30 r2 540
	sll	r2 r2 2
	lw	r30 r3 544
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.30912
beq_else.30911:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 572
	addi	r30 r30 576
	jal	min_caml_create_array
	addi	r30 r30 -576
	lw	r30 r31 572
	mov	r2 r1
beq_cont.30912:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30919
	addi	r0 r1 2
	sw	r2 r30 572
	sw	r31 r30 576
	addi	r30 r30 580
	jal	read_or_network.2887
	addi	r30 r30 -580
	lw	r30 r31 576
	lw	r30 r2 536
	sll	r2 r2 2
	lw	r30 r3 572
	swo	r3 r1 r2
	j	beq_cont.30920
beq_else.30919:
	addi	r0 r1 2
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_create_array
	addi	r30 r30 -580
	lw	r30 r31 576
beq_cont.30920:
	lw	r30 r2 488
	sll	r2 r2 2
	lw	r30 r3 532
	swo	r3 r1 r2
	j	beq_cont.30910
beq_else.30909:
	addi	r0 r1 1
	sw	r31 r30 576
	addi	r30 r30 580
	jal	min_caml_create_array
	addi	r30 r30 -580
	lw	r30 r31 576
beq_cont.30910:
	lw	r30 r2 484
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 576
	swo	r1 r4 r3
	addi	r30 r30 592
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -592
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 118
	addi	r0 r3 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 592
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 592
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 592
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 592
	swo	r1 r3 r2
	addi	r0 r1 114
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
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
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r3 2
	lw	r30 r4 636
	swo	r1 r4 r3
	addi	r30 r30 652
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -652
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 118
	addi	r0 r3 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 652
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 652
	swo	r1 r3 r2
	addi	r0 r1 116
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lw	r30 r3 652
	swo	r1 r3 r2
	addi	r0 r1 115
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
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
	sll	r3 r3 2
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
	sll	r2 r2 2
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
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r2 119
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 688
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30921
	j	ble_nontail_cont.30922
ble_nontail_else.30921:
	addi	r30 r30 692
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -692
	sll	r3 r5 2
	lwo	r4 r5 r4
	lw	r2 r5 4
	lw	r2 r6 0
	lw	r4 r7 4
	addi	r0 r8 1
	sw	r2 r30 692
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30923
	addi	r0 r8 2
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30925
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
	sll	r2 r3 2
	lw	r30 r4 696
	swo	r1 r4 r3
	j	beq_cont.30926
beq_else.30925:
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
	sll	r2 r3 2
	lw	r30 r4 696
	swo	r1 r4 r3
beq_cont.30926:
	j	beq_cont.30924
beq_else.30923:
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
	sll	r2 r3 2
	lw	r30 r4 696
	swo	r1 r4 r3
beq_cont.30924:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 692
	sw	r31 r30 704
	addi	r30 r30 708
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -708
	lw	r30 r31 704
ble_nontail_cont.30922:
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
	sll	r1 r1 2
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
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r2 2
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
	sll	r3 r3 2
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
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30927
	j	ble_nontail_cont.30928
ble_nontail_else.30927:
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -704
	sll	r1 r3 2
	lwo	r2 r3 r2
	lw	r2 r3 8
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30929
	j	beq_cont.30930
beq_else.30929:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r2 r3 28
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30931
	addi	r0 r3 1
	j	bfle_nontail_cont.30932
bfle_nontail_else.30931:
	addi	r0 r3 0
bfle_nontail_cont.30932:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30933
	lw	r2 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30935
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30937
	j	beq_cont.30938
beq_else.30937:
	sw	r31 r30 704
	addi	r30 r30 708
	jal	setup_surface_reflection.3221
	addi	r30 r30 -708
	lw	r30 r31 704
beq_cont.30938:
	j	beq_cont.30936
beq_else.30935:
	sw	r31 r30 704
	addi	r30 r30 708
	jal	setup_rect_reflection.3218
	addi	r30 r30 -708
	lw	r30 r31 704
beq_cont.30936:
	j	beq_cont.30934
beq_else.30933:
beq_cont.30934:
beq_cont.30930:
ble_nontail_cont.30928:
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
	sll	r4 r4 2
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
	sll	r4 r4 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwo	r3 r4 r3
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30939
	addi	r30 r30 712
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -712
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r2 r30 712
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30940
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
	sll	r5 r5 2
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
	sll	r5 r5 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	sll	r2 r2 2
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
	j	ble_nontail_cont.30941
ble_nontail_else.30940:
ble_nontail_cont.30941:
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
ble_tail_else.30939:
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
