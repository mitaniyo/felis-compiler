read_screen_settings.2872:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
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
	mov.s f0 f19
	sw r31 r30 24
	jal min_caml_coslib
	lw r30 r31 24
	mov.s f19 f1
	mov.s f0 f19
	sw r31 r30 24
	jal min_caml_sinlib
	lw r30 r31 24
	mov.s f19 f0
	swc1	f0 r30 24
	swc1	f1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_read_float
	addi	r30 r30 -36
	lw	r30 r31 32
	lui	r24 15502
	ori	r24 r24 64053
	mtc1	r24 f1
	mul.s	f0 f1 f0
	mov.s f0 f19
	sw r31 r30 32
	jal min_caml_coslib
	lw r30 r31 32
	mov.s f19 f1
	mov.s f0 f19
	sw r31 r30 32
	jal min_caml_sinlib
	lw r30 r31 32
	mov.s f19 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	lwc1	 r30 f2 28
	mul.s	f2 f0 f3
	lui	r24 17224
	ori	r24 r24 0
	mtc1	r24 f4
	mul.s	f3 f4 f3
	sll	r2 r2 2
	swoc1	f3 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 1
	lui	r24 49992
	ori	r24 r24 0
	mtc1	r24 f3
	lwc1	 r30 f4 24
	mul.s	f4 f3 f3
	sll	r2 r2 2
	swoc1	f3 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 2
	mul.s	f2 f1 f3
	lui	r24 17224
	ori	r24 r24 0
	mtc1	r24 f5
	mul.s	f3 f5 f3
	sll	r2 r2 2
	swoc1	f3 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r2 r2 2
	swoc1	f3 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 2
	neg.s	f0 f3
	sll	r2 r2 2
	swoc1	f3 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	neg.s	f4 f3
	mul.s	f3 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 1
	neg.s	f2 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 2
	neg.s	f4 f0
	mul.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 1
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 2
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
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
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_coslib
	lw r30 r31 0
	mov.s f19 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mov.s f1 f19
	sw r31 r30 0
	jal min_caml_sinlib
	lw r30 r31 0
	mov.s f19 f1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f2
	mov.s f2 f19
	sw r31 r30 0
	jal min_caml_coslib
	lw r30 r31 0
	mov.s f19 f2
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	mov.s f3 f19
	sw r31 r30 0
	jal min_caml_sinlib
	lw r30 r31 0
	mov.s f19 f3
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	mov.s f4 f19
	sw r31 r30 0
	jal min_caml_coslib
	lw r30 r31 0
	mov.s f19 f4
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	mov.s f5 f19
	sw r31 r30 0
	jal min_caml_sinlib
	lw r30 r31 0
	mov.s f19 f5
	mul.s	f2 f4 f6
	mul.s	f1 f3 f7
	mul.s	f7 f4 f7
	mul.s	f0 f5 f8
	sub.s	f7 f8 f7
	mul.s	f0 f3 f8
	mul.s	f8 f4 f8
	mul.s	f1 f5 f9
	add.s	f8 f9 f8
	mul.s	f2 f5 f9
	mul.s	f1 f3 f10
	mul.s	f10 f5 f10
	mul.s	f0 f4 f11
	add.s	f10 f11 f10
	mul.s	f0 f3 f11
	mul.s	f11 f5 f5
	mul.s	f1 f4 f4
	sub.s	f5 f4 f4
	neg.s	f3 f3
	mul.s	f1 f2 f1
	mul.s	f0 f2 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f2
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f5
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f11
	addi	r0 r3 0
	mul.s	f6 f6 f12
	mul.s	f2 f12 f12
	mul.s	f9 f9 f13
	mul.s	f5 f13 f13
	add.s	f12 f13 f12
	mul.s	f3 f3 f13
	mul.s	f11 f13 f13
	add.s	f12 f13 f12
	sll	r3 r3 2
	swoc1	f12 r1 r3
	addi	r0 r3 1
	mul.s	f7 f7 f12
	mul.s	f2 f12 f12
	mul.s	f10 f10 f13
	mul.s	f5 f13 f13
	add.s	f12 f13 f12
	mul.s	f1 f1 f13
	mul.s	f11 f13 f13
	add.s	f12 f13 f12
	sll	r3 r3 2
	swoc1	f12 r1 r3
	addi	r0 r3 2
	mul.s	f8 f8 f12
	mul.s	f2 f12 f12
	mul.s	f4 f4 f13
	mul.s	f5 f13 f13
	add.s	f12 f13 f12
	mul.s	f0 f0 f13
	mul.s	f11 f13 f13
	add.s	f12 f13 f12
	sll	r3 r3 2
	swoc1	f12 r1 r3
	addi	r0 r1 0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f12
	mul.s	f2 f7 f13
	mul.s	f13 f8 f13
	mul.s	f5 f10 f14
	mul.s	f14 f4 f14
	add.s	f13 f14 f13
	mul.s	f11 f1 f14
	mul.s	f14 f0 f14
	add.s	f13 f14 f13
	mul.s	f12 f13 f12
	sll	r1 r1 2
	swoc1	f12 r2 r1
	addi	r0 r1 1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f12
	mul.s	f2 f6 f13
	mul.s	f13 f8 f8
	mul.s	f5 f9 f13
	mul.s	f13 f4 f4
	add.s	f8 f4 f4
	mul.s	f11 f3 f8
	mul.s	f8 f0 f0
	add.s	f4 f0 f0
	mul.s	f12 f0 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
	addi	r0 r1 2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f0
	mul.s	f2 f6 f2
	mul.s	f2 f7 f2
	mul.s	f5 f9 f4
	mul.s	f4 f10 f4
	add.s	f2 f4 f2
	mul.s	f11 f3 f3
	mul.s	f3 f1 f1
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
	beq	r25 r0 beq_tail_else.28426
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
	blez	r25 bfle_nontail_else.28427
	addi	r0 r1 1
	j	bfle_nontail_cont.28428
bfle_nontail_else.28427:
	addi	r0 r1 0
bfle_nontail_cont.28428:
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
	beq	r25 r0 beq_else.28429
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
	j	beq_cont.28430
beq_else.28429:
beq_cont.28430:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.28431
	lw	r30 r1 56
	j	beq_cont.28432
beq_else.28431:
	addi	r0 r1 1
beq_cont.28432:
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
	beq	r25 r0 beq_else.28433
	addi	r0 r2 2
	sub	r5 r2 r25
	beq	r25 r0 beq_else.28435
	j	beq_cont.28436
beq_else.28435:
	addi	r0 r2 0
	lw	r30 r5 56
	sub	r5 r2 r25
	beq	r25 r0 beq_else.28437
	addi	r0 r2 0
	j	beq_cont.28438
beq_else.28437:
	addi	r0 r2 1
beq_cont.28438:
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
	mov.s f0 f19
	sw r31 r30 108
	jal min_caml_sqrtlib
	lw r30 r31 108
	mov.s f19 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28439
	addi	r0 r5 0
	j	bfeq_nontail_cont.28440
bfeq_nontail_else.28439:
	addi	r0 r5 1
bfeq_nontail_cont.28440:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28441
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.28442
beq_else.28441:
	addi	r0 r5 0
	sub	r2 r5 r25
	beq	r25 r0 beq_else.28443
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
	j	beq_cont.28444
beq_else.28443:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
beq_cont.28444:
beq_cont.28442:
	addi	r0 r2 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f1
	mul.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r3 r2
	addi	r0 r2 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f1
	mul.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r3 r2
	addi	r0 r2 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r3 r5 f1
	mul.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r3 r2
beq_cont.28436:
	j	beq_cont.28434
beq_else.28433:
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
	beq	r25 r0 bfeq_nontail_else.28445
	addi	r0 r5 0
	j	bfeq_nontail_cont.28446
bfeq_nontail_else.28445:
	addi	r0 r5 1
bfeq_nontail_cont.28446:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28447
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.28448
beq_else.28447:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28449
	addi	r0 r5 0
	j	bfeq_nontail_cont.28450
bfeq_nontail_else.28449:
	addi	r0 r5 1
bfeq_nontail_cont.28450:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28451
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28452
beq_else.28451:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28453
	addi	r0 r5 1
	j	bfle_nontail_cont.28454
bfle_nontail_else.28453:
	addi	r0 r5 0
bfle_nontail_cont.28454:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28455
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28456
beq_else.28455:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
beq_cont.28456:
beq_cont.28452:
	mul.s	f0 f0 f0
	div.s	f1 f0 f0
beq_cont.28448:
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
	beq	r25 r0 bfeq_nontail_else.28457
	addi	r0 r5 0
	j	bfeq_nontail_cont.28458
bfeq_nontail_else.28457:
	addi	r0 r5 1
bfeq_nontail_cont.28458:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28459
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.28460
beq_else.28459:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28461
	addi	r0 r5 0
	j	bfeq_nontail_cont.28462
bfeq_nontail_else.28461:
	addi	r0 r5 1
bfeq_nontail_cont.28462:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28463
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28464
beq_else.28463:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28465
	addi	r0 r5 1
	j	bfle_nontail_cont.28466
bfle_nontail_else.28465:
	addi	r0 r5 0
bfle_nontail_cont.28466:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28467
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28468
beq_else.28467:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
beq_cont.28468:
beq_cont.28464:
	mul.s	f0 f0 f0
	div.s	f1 f0 f0
beq_cont.28460:
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
	beq	r25 r0 bfeq_nontail_else.28469
	addi	r0 r5 0
	j	bfeq_nontail_cont.28470
bfeq_nontail_else.28469:
	addi	r0 r5 1
bfeq_nontail_cont.28470:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28471
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.28472
beq_else.28471:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28473
	addi	r0 r5 0
	j	bfeq_nontail_cont.28474
bfeq_nontail_else.28473:
	addi	r0 r5 1
bfeq_nontail_cont.28474:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28475
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28476
beq_else.28475:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28477
	addi	r0 r5 1
	j	bfle_nontail_cont.28478
bfle_nontail_else.28477:
	addi	r0 r5 0
bfle_nontail_cont.28478:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28479
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.28480
beq_else.28479:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
beq_cont.28480:
beq_cont.28476:
	mul.s	f0 f0 f0
	div.s	f1 f0 f0
beq_cont.28472:
	sll	r2 r2 2
	swoc1	f0 r3 r2
beq_cont.28434:
	addi	r0 r2 0
	sub	r4 r2 r25
	beq	r25 r0 beq_else.28481
	sw	r31 r30 108
	addi	r30 r30 112
	mov	r2 r1
	mov	r1 r3
	jal	rotate_quadratic_matrix.2876
	addi	r30 r30 -112
	lw	r30 r31 108
	j	beq_cont.28482
beq_else.28481:
beq_cont.28482:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28426:
	addi	r0 r1 0
	jr	r31
read_object.2881:
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28483
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	read_nth_object.2879
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28484
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28485
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	read_nth_object.2879
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28486
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28487
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	read_nth_object.2879
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28488
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28489
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	read_nth_object.2879
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28490
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28491
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	read_nth_object.2879
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28492
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28493
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	read_nth_object.2879
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28494
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28495
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	read_nth_object.2879
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28496
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28497
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	read_nth_object.2879
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28498
	addi	r0 r1 1
	lw	r30 r2 28
	add	r2 r1 r1
	j	read_object.2881
beq_tail_else.28498:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 28
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28497:
	jr	r31
beq_tail_else.28496:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 24
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28495:
	jr	r31
beq_tail_else.28494:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 20
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28493:
	jr	r31
beq_tail_else.28492:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28491:
	jr	r31
beq_tail_else.28490:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 12
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28489:
	jr	r31
beq_tail_else.28488:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 8
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28487:
	jr	r31
beq_tail_else.28486:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28485:
	jr	r31
beq_tail_else.28484:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r3 r1 r2
	jr	r31
ble_tail_else.28483:
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
	beq	r25 r0 beq_tail_else.28515
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
	beq	r25 r0 beq_else.28516
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
	beq	r25 r0 beq_else.28518
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
	beq	r25 r0 beq_else.28520
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
	beq	r25 r0 beq_else.28522
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
	beq	r25 r0 beq_else.28524
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
	beq	r25 r0 beq_else.28526
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
	beq	r25 r0 beq_else.28528
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
	j	beq_cont.28529
beq_else.28528:
	addi	r0 r1 1
	lw	r30 r2 56
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28529:
	lw	r30 r2 48
	sll	r2 r2 2
	lw	r30 r3 52
	swo	r3 r1 r2
	j	beq_cont.28527
beq_else.28526:
	addi	r0 r1 1
	lw	r30 r2 48
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28527:
	lw	r30 r2 40
	sll	r2 r2 2
	lw	r30 r3 44
	swo	r3 r1 r2
	j	beq_cont.28525
beq_else.28524:
	addi	r0 r1 1
	lw	r30 r2 40
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28525:
	lw	r30 r2 32
	sll	r2 r2 2
	lw	r30 r3 36
	swo	r3 r1 r2
	j	beq_cont.28523
beq_else.28522:
	addi	r0 r1 1
	lw	r30 r2 32
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28523:
	lw	r30 r2 24
	sll	r2 r2 2
	lw	r30 r3 28
	swo	r3 r1 r2
	j	beq_cont.28521
beq_else.28520:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28521:
	lw	r30 r2 16
	sll	r2 r2 2
	lw	r30 r3 20
	swo	r3 r1 r2
	j	beq_cont.28519
beq_else.28518:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28519:
	lw	r30 r2 8
	sll	r2 r2 2
	lw	r30 r3 12
	swo	r3 r1 r2
	j	beq_cont.28517
beq_else.28516:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	addi	r0 r2 -1
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_create_array
	addi	r30 r30 -68
	lw	r30 r31 64
beq_cont.28517:
	lw	r30 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	swo	r3 r1 r2
	jr	r31
beq_tail_else.28515:
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
	beq	r25 r0 beq_else.28530
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
	beq	r25 r0 beq_else.28532
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
	beq	r25 r0 beq_else.28534
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
	beq	r25 r0 beq_else.28536
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
	beq	r25 r0 beq_else.28538
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
	beq	r25 r0 beq_else.28540
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
	beq	r25 r0 beq_else.28542
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
	j	beq_cont.28543
beq_else.28542:
	addi	r0 r1 7
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28543:
	lw	r30 r2 44
	sll	r2 r2 2
	lw	r30 r3 48
	swo	r3 r1 r2
	j	beq_cont.28541
beq_else.28540:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28541:
	lw	r30 r2 36
	sll	r2 r2 2
	lw	r30 r3 40
	swo	r3 r1 r2
	j	beq_cont.28539
beq_else.28538:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28539:
	lw	r30 r2 28
	sll	r2 r2 2
	lw	r30 r3 32
	swo	r3 r1 r2
	j	beq_cont.28537
beq_else.28536:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28537:
	lw	r30 r2 20
	sll	r2 r2 2
	lw	r30 r3 24
	swo	r3 r1 r2
	j	beq_cont.28535
beq_else.28534:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28535:
	lw	r30 r2 12
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	j	beq_cont.28533
beq_else.28532:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28533:
	lw	r30 r2 4
	sll	r2 r2 2
	lw	r30 r3 8
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28531
beq_else.28530:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
	mov	r2 r1
beq_cont.28531:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.28544
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
	beq	r25 r0 beq_else.28545
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
	beq	r25 r0 beq_else.28547
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
	beq	r25 r0 beq_else.28549
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
	beq	r25 r0 beq_else.28551
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
	beq	r25 r0 beq_else.28553
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
	beq	r25 r0 beq_else.28555
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
	j	beq_cont.28556
beq_else.28555:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28556:
	lw	r30 r2 100
	sll	r2 r2 2
	lw	r30 r3 104
	swo	r3 r1 r2
	j	beq_cont.28554
beq_else.28553:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28554:
	lw	r30 r2 92
	sll	r2 r2 2
	lw	r30 r3 96
	swo	r3 r1 r2
	j	beq_cont.28552
beq_else.28551:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28552:
	lw	r30 r2 84
	sll	r2 r2 2
	lw	r30 r3 88
	swo	r3 r1 r2
	j	beq_cont.28550
beq_else.28549:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28550:
	lw	r30 r2 76
	sll	r2 r2 2
	lw	r30 r3 80
	swo	r3 r1 r2
	j	beq_cont.28548
beq_else.28547:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
beq_cont.28548:
	lw	r30 r2 68
	sll	r2 r2 2
	lw	r30 r3 72
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28546
beq_else.28545:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 116
	addi	r30 r30 120
	jal	min_caml_create_array
	addi	r30 r30 -120
	lw	r30 r31 116
	mov	r2 r1
beq_cont.28546:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28557
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
	beq	r25 r0 beq_else.28559
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
	beq	r25 r0 beq_else.28561
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
	beq	r25 r0 beq_else.28563
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
	beq	r25 r0 beq_else.28565
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
	beq	r25 r0 beq_else.28567
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
	j	beq_cont.28568
beq_else.28567:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28568:
	lw	r30 r2 148
	sll	r2 r2 2
	lw	r30 r3 152
	swo	r3 r1 r2
	j	beq_cont.28566
beq_else.28565:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28566:
	lw	r30 r2 140
	sll	r2 r2 2
	lw	r30 r3 144
	swo	r3 r1 r2
	j	beq_cont.28564
beq_else.28563:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28564:
	lw	r30 r2 132
	sll	r2 r2 2
	lw	r30 r3 136
	swo	r3 r1 r2
	j	beq_cont.28562
beq_else.28561:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
beq_cont.28562:
	lw	r30 r2 124
	sll	r2 r2 2
	lw	r30 r3 128
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28560
beq_else.28559:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 164
	addi	r30 r30 168
	jal	min_caml_create_array
	addi	r30 r30 -168
	lw	r30 r31 164
	mov	r2 r1
beq_cont.28560:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28569
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
	beq	r25 r0 beq_else.28571
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
	beq	r25 r0 beq_else.28573
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
	beq	r25 r0 beq_else.28575
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
	beq	r25 r0 beq_else.28577
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
	j	beq_cont.28578
beq_else.28577:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
beq_cont.28578:
	lw	r30 r2 188
	sll	r2 r2 2
	lw	r30 r3 192
	swo	r3 r1 r2
	j	beq_cont.28576
beq_else.28575:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
beq_cont.28576:
	lw	r30 r2 180
	sll	r2 r2 2
	lw	r30 r3 184
	swo	r3 r1 r2
	j	beq_cont.28574
beq_else.28573:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
beq_cont.28574:
	lw	r30 r2 172
	sll	r2 r2 2
	lw	r30 r3 176
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.28572
beq_else.28571:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 204
	addi	r30 r30 208
	jal	min_caml_create_array
	addi	r30 r30 -208
	lw	r30 r31 204
	mov	r2 r1
beq_cont.28572:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28579
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
	j	beq_cont.28580
beq_else.28579:
	addi	r0 r1 1
	lw	r30 r3 168
	add	r3 r1 r1
	sw	r31 r30 208
	addi	r30 r30 212
	jal	min_caml_create_array
	addi	r30 r30 -212
	lw	r30 r31 208
beq_cont.28580:
	lw	r30 r2 120
	sll	r2 r2 2
	lw	r30 r3 164
	swo	r3 r1 r2
	j	beq_cont.28570
beq_else.28569:
	addi	r0 r1 1
	lw	r30 r3 120
	add	r3 r1 r1
	sw	r31 r30 208
	addi	r30 r30 212
	jal	min_caml_create_array
	addi	r30 r30 -212
	lw	r30 r31 208
beq_cont.28570:
	lw	r30 r2 64
	sll	r2 r2 2
	lw	r30 r3 116
	swo	r3 r1 r2
	j	beq_cont.28558
beq_else.28557:
	addi	r0 r1 1
	lw	r30 r3 64
	add	r3 r1 r1
	sw	r31 r30 208
	addi	r30 r30 212
	jal	min_caml_create_array
	addi	r30 r30 -212
	lw	r30 r31 208
beq_cont.28558:
	lw	r30 r2 0
	sll	r2 r2 2
	lw	r30 r3 60
	swo	r3 r1 r2
	jr	r31
beq_tail_else.28544:
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
	beq	r25 r0 beq_else.28581
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
	beq	r25 r0 beq_else.28583
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
	beq	r25 r0 beq_else.28585
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
	beq	r25 r0 beq_else.28587
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
	beq	r25 r0 beq_else.28589
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
	beq	r25 r0 beq_else.28591
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
	beq	r25 r0 beq_else.28593
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
	j	beq_cont.28594
beq_else.28593:
	addi	r0 r1 7
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28594:
	lw	r30 r2 44
	sll	r2 r2 2
	lw	r30 r3 48
	swo	r3 r1 r2
	j	beq_cont.28592
beq_else.28591:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28592:
	lw	r30 r2 36
	sll	r2 r2 2
	lw	r30 r3 40
	swo	r3 r1 r2
	j	beq_cont.28590
beq_else.28589:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28590:
	lw	r30 r2 28
	sll	r2 r2 2
	lw	r30 r3 32
	swo	r3 r1 r2
	j	beq_cont.28588
beq_else.28587:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28588:
	lw	r30 r2 20
	sll	r2 r2 2
	lw	r30 r3 24
	swo	r3 r1 r2
	j	beq_cont.28586
beq_else.28585:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28586:
	lw	r30 r2 12
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	j	beq_cont.28584
beq_else.28583:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28584:
	lw	r30 r2 4
	sll	r2 r2 2
	lw	r30 r3 8
	swo	r3 r1 r2
	j	beq_cont.28582
beq_else.28581:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_create_array
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.28582:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28595
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
	beq	r25 r0 beq_else.28596
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
	beq	r25 r0 beq_else.28598
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
	beq	r25 r0 beq_else.28600
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
	beq	r25 r0 beq_else.28602
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
	beq	r25 r0 beq_else.28604
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
	beq	r25 r0 beq_else.28606
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
	j	beq_cont.28607
beq_else.28606:
	addi	r0 r1 6
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28607:
	lw	r30 r2 96
	sll	r2 r2 2
	lw	r30 r3 100
	swo	r3 r1 r2
	j	beq_cont.28605
beq_else.28604:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28605:
	lw	r30 r2 88
	sll	r2 r2 2
	lw	r30 r3 92
	swo	r3 r1 r2
	j	beq_cont.28603
beq_else.28602:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28603:
	lw	r30 r2 80
	sll	r2 r2 2
	lw	r30 r3 84
	swo	r3 r1 r2
	j	beq_cont.28601
beq_else.28600:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28601:
	lw	r30 r2 72
	sll	r2 r2 2
	lw	r30 r3 76
	swo	r3 r1 r2
	j	beq_cont.28599
beq_else.28598:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28599:
	lw	r30 r2 64
	sll	r2 r2 2
	lw	r30 r3 68
	swo	r3 r1 r2
	j	beq_cont.28597
beq_else.28596:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_create_array
	addi	r30 r30 -116
	lw	r30 r31 112
beq_cont.28597:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28608
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
	beq	r25 r0 beq_else.28609
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
	beq	r25 r0 beq_else.28611
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
	beq	r25 r0 beq_else.28613
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
	beq	r25 r0 beq_else.28615
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
	beq	r25 r0 beq_else.28617
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
	j	beq_cont.28618
beq_else.28617:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28618:
	lw	r30 r2 140
	sll	r2 r2 2
	lw	r30 r3 144
	swo	r3 r1 r2
	j	beq_cont.28616
beq_else.28615:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28616:
	lw	r30 r2 132
	sll	r2 r2 2
	lw	r30 r3 136
	swo	r3 r1 r2
	j	beq_cont.28614
beq_else.28613:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28614:
	lw	r30 r2 124
	sll	r2 r2 2
	lw	r30 r3 128
	swo	r3 r1 r2
	j	beq_cont.28612
beq_else.28611:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28612:
	lw	r30 r2 116
	sll	r2 r2 2
	lw	r30 r3 120
	swo	r3 r1 r2
	j	beq_cont.28610
beq_else.28609:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 156
	addi	r30 r30 160
	jal	min_caml_create_array
	addi	r30 r30 -160
	lw	r30 r31 156
beq_cont.28610:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28619
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
	beq	r25 r0 beq_else.28620
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
	beq	r25 r0 beq_else.28622
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
	beq	r25 r0 beq_else.28624
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
	beq	r25 r0 beq_else.28626
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
	j	beq_cont.28627
beq_else.28626:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28627:
	lw	r30 r2 176
	sll	r2 r2 2
	lw	r30 r3 180
	swo	r3 r1 r2
	j	beq_cont.28625
beq_else.28624:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28625:
	lw	r30 r2 168
	sll	r2 r2 2
	lw	r30 r3 172
	swo	r3 r1 r2
	j	beq_cont.28623
beq_else.28622:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28623:
	lw	r30 r2 160
	sll	r2 r2 2
	lw	r30 r3 164
	swo	r3 r1 r2
	j	beq_cont.28621
beq_else.28620:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 192
	addi	r30 r30 196
	jal	min_caml_create_array
	addi	r30 r30 -196
	lw	r30 r31 192
beq_cont.28621:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28628
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
beq_tail_else.28628:
	jr	r31
beq_tail_else.28619:
	jr	r31
beq_tail_else.28608:
	jr	r31
beq_tail_else.28595:
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
	beq	r25 r0 bfeq_nontail_else.28633
	addi	r0 r6 0
	j	bfeq_nontail_cont.28634
bfeq_nontail_else.28633:
	addi	r0 r6 1
bfeq_nontail_cont.28634:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28635
	addi	r0 r3 0
	j	beq_cont.28636
beq_else.28635:
	lw	r1 r6 16
	lw	r1 r7 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r8 2
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28637
	addi	r0 r8 1
	j	bfle_nontail_cont.28638
bfle_nontail_else.28637:
	addi	r0 r8 0
bfle_nontail_cont.28638:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28639
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28641
	addi	r0 r7 0
	j	beq_cont.28642
beq_else.28641:
	addi	r0 r7 1
beq_cont.28642:
	j	beq_cont.28640
beq_else.28639:
	mov	r7 r8
beq_cont.28640:
	sll	r3 r8 2
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28643
	j	beq_cont.28644
beq_else.28643:
	neg.s	f3 f3
beq_cont.28644:
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
	blez	r25 bfle_nontail_else.28645
	addi	r0 r3 1
	j	bfle_nontail_cont.28646
bfle_nontail_else.28645:
	addi	r0 r3 0
bfle_nontail_cont.28646:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28647
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
	blez	r25 bfle_nontail_else.28649
	addi	r0 r3 1
	j	bfle_nontail_cont.28650
bfle_nontail_else.28649:
	addi	r0 r3 0
bfle_nontail_cont.28650:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28651
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
	j	beq_cont.28652
beq_else.28651:
	addi	r0 r3 0
beq_cont.28652:
	j	beq_cont.28648
beq_else.28647:
	addi	r0 r3 0
beq_cont.28648:
beq_cont.28636:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28653
	addi	r0 r1 1
	jr	r31
beq_tail_else.28653:
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
	beq	r25 r0 bfeq_nontail_else.28654
	addi	r0 r6 0
	j	bfeq_nontail_cont.28655
bfeq_nontail_else.28654:
	addi	r0 r6 1
bfeq_nontail_cont.28655:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28656
	addi	r0 r3 0
	j	beq_cont.28657
beq_else.28656:
	lw	r1 r6 16
	lw	r1 r7 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r8 2
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28658
	addi	r0 r8 1
	j	bfle_nontail_cont.28659
bfle_nontail_else.28658:
	addi	r0 r8 0
bfle_nontail_cont.28659:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28660
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28662
	addi	r0 r7 0
	j	beq_cont.28663
beq_else.28662:
	addi	r0 r7 1
beq_cont.28663:
	j	beq_cont.28661
beq_else.28660:
	mov	r7 r8
beq_cont.28661:
	sll	r3 r8 2
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28664
	j	beq_cont.28665
beq_else.28664:
	neg.s	f3 f3
beq_cont.28665:
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
	blez	r25 bfle_nontail_else.28666
	addi	r0 r3 1
	j	bfle_nontail_cont.28667
bfle_nontail_else.28666:
	addi	r0 r3 0
bfle_nontail_cont.28667:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28668
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
	blez	r25 bfle_nontail_else.28670
	addi	r0 r3 1
	j	bfle_nontail_cont.28671
bfle_nontail_else.28670:
	addi	r0 r3 0
bfle_nontail_cont.28671:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28672
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
	j	beq_cont.28673
beq_else.28672:
	addi	r0 r3 0
beq_cont.28673:
	j	beq_cont.28669
beq_else.28668:
	addi	r0 r3 0
beq_cont.28669:
beq_cont.28657:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28674
	addi	r0 r1 2
	jr	r31
beq_tail_else.28674:
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
	beq	r25 r0 bfeq_nontail_else.28675
	addi	r0 r6 0
	j	bfeq_nontail_cont.28676
bfeq_nontail_else.28675:
	addi	r0 r6 1
bfeq_nontail_cont.28676:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28677
	addi	r0 r1 0
	j	beq_cont.28678
beq_else.28677:
	lw	r1 r6 16
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r7 2
	lwoc1	r2 r7 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28679
	addi	r0 r7 1
	j	bfle_nontail_cont.28680
bfle_nontail_else.28679:
	addi	r0 r7 0
bfle_nontail_cont.28680:
	addi	r0 r8 0
	sub	r1 r8 r25
	beq	r25 r0 beq_else.28681
	addi	r0 r1 0
	sub	r7 r1 r25
	beq	r25 r0 beq_else.28683
	addi	r0 r1 0
	j	beq_cont.28684
beq_else.28683:
	addi	r0 r1 1
beq_cont.28684:
	j	beq_cont.28682
beq_else.28681:
	mov	r1 r7
beq_cont.28682:
	sll	r3 r7 2
	lwoc1	r6 r7 f3
	addi	r0 r7 0
	sub	r1 r7 r25
	beq	r25 r0 beq_else.28685
	j	beq_cont.28686
beq_else.28685:
	neg.s	f3 f3
beq_cont.28686:
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
	blez	r25 bfle_nontail_else.28687
	addi	r0 r1 1
	j	bfle_nontail_cont.28688
bfle_nontail_else.28687:
	addi	r0 r1 0
bfle_nontail_cont.28688:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28689
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
	blez	r25 bfle_nontail_else.28691
	addi	r0 r1 1
	j	bfle_nontail_cont.28692
bfle_nontail_else.28691:
	addi	r0 r1 0
bfle_nontail_cont.28692:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28693
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r1 1
	j	beq_cont.28694
beq_else.28693:
	addi	r0 r1 0
beq_cont.28694:
	j	beq_cont.28690
beq_else.28689:
	addi	r0 r1 0
beq_cont.28690:
beq_cont.28678:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28695
	addi	r0 r1 3
	jr	r31
beq_tail_else.28695:
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
	beq	r25 r0 beq_else.28696
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
	j	beq_cont.28697
beq_else.28696:
	mov.s	f6 f3
beq_cont.28697:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28698
	addi	r0 r3 0
	j	bfeq_nontail_cont.28699
bfeq_nontail_else.28698:
	addi	r0 r3 1
bfeq_nontail_cont.28699:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28700
	addi	r0 r1 0
	jr	r31
beq_tail_else.28700:
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
	beq	r25 r0 beq_else.28701
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
	j	beq_cont.28702
beq_else.28701:
	mov.s	f7 f4
beq_cont.28702:
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
	beq	r25 r0 beq_else.28703
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
	j	beq_cont.28704
beq_else.28703:
	mov.s	f5 f0
beq_cont.28704:
	lw	r1 r2 4
	addi	r0 r3 3
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28705
	j	beq_cont.28706
beq_else.28705:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28706:
	mul.s	f4 f4 f1
	mul.s	f3 f0 f0
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28707
	addi	r0 r2 1
	j	bfle_nontail_cont.28708
bfle_nontail_else.28707:
	addi	r0 r2 0
bfle_nontail_cont.28708:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28709
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f0
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28710
	j	beq_cont.28711
beq_else.28710:
	neg.s	f0 f0
beq_cont.28711:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sub.s	f0 f4 f0
	div.s	f0 f3 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.28709:
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
	beq	r25 r0 beq_tail_else.28712
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28713
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
	beq	r25 r0 beq_else.28714
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
	j	beq_cont.28715
beq_else.28714:
	mov.s	f6 f3
beq_cont.28715:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28716
	addi	r0 r3 0
	j	bfeq_nontail_cont.28717
bfeq_nontail_else.28716:
	addi	r0 r3 1
bfeq_nontail_cont.28717:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28718
	addi	r0 r1 0
	jr	r31
beq_tail_else.28718:
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
	beq	r25 r0 beq_else.28719
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
	j	beq_cont.28720
beq_else.28719:
	mov.s	f7 f4
beq_cont.28720:
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
	beq	r25 r0 beq_else.28721
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
	j	beq_cont.28722
beq_else.28721:
	mov.s	f5 f0
beq_cont.28722:
	lw	r1 r2 4
	addi	r0 r3 3
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28723
	j	beq_cont.28724
beq_else.28723:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28724:
	mul.s	f4 f4 f1
	mul.s	f3 f0 f0
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28725
	addi	r0 r2 1
	j	bfle_nontail_cont.28726
bfle_nontail_else.28725:
	addi	r0 r2 0
bfle_nontail_cont.28726:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28727
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f0
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28728
	j	beq_cont.28729
beq_else.28728:
	neg.s	f0 f0
beq_cont.28729:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sub.s	f0 f4 f0
	div.s	f0 f3 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.28727:
	addi	r0 r1 0
	jr	r31
beq_tail_else.28713:
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
	blez	r25 bfle_nontail_else.28730
	addi	r0 r2 1
	j	bfle_nontail_cont.28731
bfle_nontail_else.28730:
	addi	r0 r2 0
bfle_nontail_cont.28731:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28732
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
beq_tail_else.28732:
	addi	r0 r1 0
	jr	r31
beq_tail_else.28712:
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
	beq	r25 r0 bfeq_nontail_else.28733
	addi	r0 r6 0
	j	bfeq_nontail_cont.28734
bfeq_nontail_else.28733:
	addi	r0 r6 1
bfeq_nontail_cont.28734:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28735
	addi	r0 r3 0
	j	beq_cont.28736
beq_else.28735:
	lw	r1 r6 16
	lw	r1 r7 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r8 2
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28737
	addi	r0 r8 1
	j	bfle_nontail_cont.28738
bfle_nontail_else.28737:
	addi	r0 r8 0
bfle_nontail_cont.28738:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28739
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28741
	addi	r0 r7 0
	j	beq_cont.28742
beq_else.28741:
	addi	r0 r7 1
beq_cont.28742:
	j	beq_cont.28740
beq_else.28739:
	mov	r7 r8
beq_cont.28740:
	sll	r3 r8 2
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28743
	j	beq_cont.28744
beq_else.28743:
	neg.s	f3 f3
beq_cont.28744:
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
	blez	r25 bfle_nontail_else.28745
	addi	r0 r3 1
	j	bfle_nontail_cont.28746
bfle_nontail_else.28745:
	addi	r0 r3 0
bfle_nontail_cont.28746:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28747
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
	blez	r25 bfle_nontail_else.28749
	addi	r0 r3 1
	j	bfle_nontail_cont.28750
bfle_nontail_else.28749:
	addi	r0 r3 0
bfle_nontail_cont.28750:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28751
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
	j	beq_cont.28752
beq_else.28751:
	addi	r0 r3 0
beq_cont.28752:
	j	beq_cont.28748
beq_else.28747:
	addi	r0 r3 0
beq_cont.28748:
beq_cont.28736:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28753
	addi	r0 r1 1
	jr	r31
beq_tail_else.28753:
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
	beq	r25 r0 bfeq_nontail_else.28754
	addi	r0 r6 0
	j	bfeq_nontail_cont.28755
bfeq_nontail_else.28754:
	addi	r0 r6 1
bfeq_nontail_cont.28755:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28756
	addi	r0 r3 0
	j	beq_cont.28757
beq_else.28756:
	lw	r1 r6 16
	lw	r1 r7 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r8 2
	lwoc1	r2 r8 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28758
	addi	r0 r8 1
	j	bfle_nontail_cont.28759
bfle_nontail_else.28758:
	addi	r0 r8 0
bfle_nontail_cont.28759:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.28760
	addi	r0 r7 0
	sub	r8 r7 r25
	beq	r25 r0 beq_else.28762
	addi	r0 r7 0
	j	beq_cont.28763
beq_else.28762:
	addi	r0 r7 1
beq_cont.28763:
	j	beq_cont.28761
beq_else.28760:
	mov	r7 r8
beq_cont.28761:
	sll	r3 r8 2
	lwoc1	r6 r8 f3
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.28764
	j	beq_cont.28765
beq_else.28764:
	neg.s	f3 f3
beq_cont.28765:
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
	blez	r25 bfle_nontail_else.28766
	addi	r0 r3 1
	j	bfle_nontail_cont.28767
bfle_nontail_else.28766:
	addi	r0 r3 0
bfle_nontail_cont.28767:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28768
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
	blez	r25 bfle_nontail_else.28770
	addi	r0 r3 1
	j	bfle_nontail_cont.28771
bfle_nontail_else.28770:
	addi	r0 r3 0
bfle_nontail_cont.28771:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28772
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
	j	beq_cont.28773
beq_else.28772:
	addi	r0 r3 0
beq_cont.28773:
	j	beq_cont.28769
beq_else.28768:
	addi	r0 r3 0
beq_cont.28769:
beq_cont.28757:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28774
	addi	r0 r1 2
	jr	r31
beq_tail_else.28774:
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
	beq	r25 r0 bfeq_nontail_else.28775
	addi	r0 r6 0
	j	bfeq_nontail_cont.28776
bfeq_nontail_else.28775:
	addi	r0 r6 1
bfeq_nontail_cont.28776:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28777
	addi	r0 r1 0
	j	beq_cont.28778
beq_else.28777:
	lw	r1 r6 16
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sll	r3 r7 2
	lwoc1	r2 r7 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28779
	addi	r0 r7 1
	j	bfle_nontail_cont.28780
bfle_nontail_else.28779:
	addi	r0 r7 0
bfle_nontail_cont.28780:
	addi	r0 r8 0
	sub	r1 r8 r25
	beq	r25 r0 beq_else.28781
	addi	r0 r1 0
	sub	r7 r1 r25
	beq	r25 r0 beq_else.28783
	addi	r0 r1 0
	j	beq_cont.28784
beq_else.28783:
	addi	r0 r1 1
beq_cont.28784:
	j	beq_cont.28782
beq_else.28781:
	mov	r1 r7
beq_cont.28782:
	sll	r3 r7 2
	lwoc1	r6 r7 f3
	addi	r0 r7 0
	sub	r1 r7 r25
	beq	r25 r0 beq_else.28785
	j	beq_cont.28786
beq_else.28785:
	neg.s	f3 f3
beq_cont.28786:
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
	blez	r25 bfle_nontail_else.28787
	addi	r0 r1 1
	j	bfle_nontail_cont.28788
bfle_nontail_else.28787:
	addi	r0 r1 0
bfle_nontail_cont.28788:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28789
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
	blez	r25 bfle_nontail_else.28791
	addi	r0 r1 1
	j	bfle_nontail_cont.28792
bfle_nontail_else.28791:
	addi	r0 r1 0
bfle_nontail_cont.28792:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28793
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r1 1
	j	beq_cont.28794
beq_else.28793:
	addi	r0 r1 0
beq_cont.28794:
	j	beq_cont.28790
beq_else.28789:
	addi	r0 r1 0
beq_cont.28790:
beq_cont.28778:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28795
	addi	r0 r1 3
	jr	r31
beq_tail_else.28795:
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
	blez	r25 bfle_nontail_else.28796
	addi	r0 r4 1
	j	bfle_nontail_cont.28797
bfle_nontail_else.28796:
	addi	r0 r4 0
bfle_nontail_cont.28797:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28798
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
	blez	r25 bfle_nontail_else.28800
	addi	r0 r4 1
	j	bfle_nontail_cont.28801
bfle_nontail_else.28800:
	addi	r0 r4 0
bfle_nontail_cont.28801:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28802
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28804
	addi	r0 r4 0
	j	bfeq_nontail_cont.28805
bfeq_nontail_else.28804:
	addi	r0 r4 1
bfeq_nontail_cont.28805:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28806
	addi	r0 r4 0
	j	beq_cont.28807
beq_else.28806:
	addi	r0 r4 1
beq_cont.28807:
	j	beq_cont.28803
beq_else.28802:
	addi	r0 r4 0
beq_cont.28803:
	j	beq_cont.28799
beq_else.28798:
	addi	r0 r4 0
beq_cont.28799:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.28808
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f3 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.28808:
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
	blez	r25 bfle_nontail_else.28809
	addi	r0 r4 1
	j	bfle_nontail_cont.28810
bfle_nontail_else.28809:
	addi	r0 r4 0
bfle_nontail_cont.28810:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28811
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
	blez	r25 bfle_nontail_else.28813
	addi	r0 r4 1
	j	bfle_nontail_cont.28814
bfle_nontail_else.28813:
	addi	r0 r4 0
bfle_nontail_cont.28814:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28815
	addi	r0 r4 3
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	sub.s	f4 f5 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28817
	addi	r0 r4 0
	j	bfeq_nontail_cont.28818
bfeq_nontail_else.28817:
	addi	r0 r4 1
bfeq_nontail_cont.28818:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28819
	addi	r0 r4 0
	j	beq_cont.28820
beq_else.28819:
	addi	r0 r4 1
beq_cont.28820:
	j	beq_cont.28816
beq_else.28815:
	addi	r0 r4 0
beq_cont.28816:
	j	beq_cont.28812
beq_else.28811:
	addi	r0 r4 0
beq_cont.28812:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.28821
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f3 r1 r2
	addi	r0 r1 2
	jr	r31
beq_tail_else.28821:
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
	blez	r25 bfle_nontail_else.28822
	addi	r0 r4 1
	j	bfle_nontail_cont.28823
bfle_nontail_else.28822:
	addi	r0 r4 0
bfle_nontail_cont.28823:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28824
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
	blez	r25 bfle_nontail_else.28826
	addi	r0 r1 1
	j	bfle_nontail_cont.28827
bfle_nontail_else.28826:
	addi	r0 r1 0
bfle_nontail_cont.28827:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28828
	addi	r0 r1 5
	sll	r1 r1 2
	lwoc1	r3 r1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28830
	addi	r0 r1 0
	j	bfeq_nontail_cont.28831
bfeq_nontail_else.28830:
	addi	r0 r1 1
bfeq_nontail_cont.28831:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.28832
	addi	r0 r1 0
	j	beq_cont.28833
beq_else.28832:
	addi	r0 r1 1
beq_cont.28833:
	j	beq_cont.28829
beq_else.28828:
	addi	r0 r1 0
beq_cont.28829:
	j	beq_cont.28825
beq_else.28824:
	addi	r0 r1 0
beq_cont.28825:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28834
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r1 3
	jr	r31
beq_tail_else.28834:
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
	beq	r25 r0 bfeq_nontail_else.28835
	addi	r0 r3 0
	j	bfeq_nontail_cont.28836
bfeq_nontail_else.28835:
	addi	r0 r3 1
bfeq_nontail_cont.28836:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28837
	addi	r0 r1 0
	jr	r31
beq_tail_else.28837:
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
	beq	r25 r0 beq_else.28838
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
	j	beq_cont.28839
beq_else.28838:
	mov.s	f5 f0
beq_cont.28839:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28840
	j	beq_cont.28841
beq_else.28840:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28841:
	mul.s	f4 f4 f1
	mul.s	f3 f0 f0
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28842
	addi	r0 r3 1
	j	bfle_nontail_cont.28843
bfle_nontail_else.28842:
	addi	r0 r3 0
bfle_nontail_cont.28843:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28844
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28845
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f0
	add.s	f4 f0 f0
	addi	r0 r4 4
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	mul.s	f0 f1 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.28846
beq_else.28845:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f0
	sub.s	f4 f0 f0
	addi	r0 r4 4
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	mul.s	f0 f1 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
beq_cont.28846:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28844:
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
	beq	r25 r0 beq_tail_else.28847
	addi	r0 r2 2
	sub	r5 r2 r25
	beq	r25 r0 beq_tail_else.28848
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28849
	addi	r0 r2 0
	j	bfeq_nontail_cont.28850
bfeq_nontail_else.28849:
	addi	r0 r2 1
bfeq_nontail_cont.28850:
	addi	r0 r5 0
	sub	r2 r5 r25
	beq	r25 r0 beq_tail_else.28851
	addi	r0 r1 0
	jr	r31
beq_tail_else.28851:
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
	blez	r25 bfle_nontail_else.28852
	addi	r0 r2 1
	j	bfle_nontail_cont.28853
bfle_nontail_else.28852:
	addi	r0 r2 0
bfle_nontail_cont.28853:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.28854
	lw	r3 r2 24
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28855
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	mov.s f1 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f1
	add.s	f0 f1 f0
	addi	r0 r4 4
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	mul.s	f0 f1 f0
	sll	r3 r1 2
	swoc1	f0 r2 r1
	j	beq_cont.28856
beq_else.28855:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	mov.s f1 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f1
	sub.s	f0 f1 f0
	addi	r0 r4 4
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	mul.s	f0 f1 f0
	sll	r3 r1 2
	swoc1	f0 r2 r1
beq_cont.28856:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28854:
	addi	r0 r1 0
	jr	r31
beq_tail_else.28848:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28857
	addi	r0 r2 1
	j	bfle_nontail_cont.28858
bfle_nontail_else.28857:
	addi	r0 r2 0
bfle_nontail_cont.28858:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28859
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
beq_tail_else.28859:
	addi	r0 r1 0
	jr	r31
beq_tail_else.28847:
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
	beq	r25 r0 bfeq_nontail_else.28860
	addi	r0 r2 0
	j	bfeq_nontail_cont.28861
bfeq_nontail_else.28860:
	addi	r0 r2 1
bfeq_nontail_cont.28861:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.28862
	addi	r0 r2 1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.28863
beq_else.28862:
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
	blez	r25 bfle_nontail_else.28864
	addi	r0 r6 1
	j	bfle_nontail_cont.28865
bfle_nontail_else.28864:
	addi	r0 r6 0
bfle_nontail_cont.28865:
	addi	r0 r7 0
	sub	r5 r7 r25
	beq	r25 r0 beq_else.28866
	addi	r0 r5 0
	sub	r6 r5 r25
	beq	r25 r0 beq_else.28868
	addi	r0 r5 0
	j	beq_cont.28869
beq_else.28868:
	addi	r0 r5 1
beq_cont.28869:
	j	beq_cont.28867
beq_else.28866:
	mov	r5 r6
beq_cont.28867:
	lw	r4 r6 16
	addi	r0 r7 0
	sll	r7 r7 2
	lwoc1	r6 r7 f0
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28870
	j	beq_cont.28871
beq_else.28870:
	neg.s	f0 f0
beq_cont.28871:
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
beq_cont.28863:
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28872
	addi	r0 r2 0
	j	bfeq_nontail_cont.28873
bfeq_nontail_else.28872:
	addi	r0 r2 1
bfeq_nontail_cont.28873:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.28874
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.28875
beq_else.28874:
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
	blez	r25 bfle_nontail_else.28876
	addi	r0 r6 1
	j	bfle_nontail_cont.28877
bfle_nontail_else.28876:
	addi	r0 r6 0
bfle_nontail_cont.28877:
	addi	r0 r7 0
	sub	r5 r7 r25
	beq	r25 r0 beq_else.28878
	addi	r0 r5 0
	sub	r6 r5 r25
	beq	r25 r0 beq_else.28880
	addi	r0 r5 0
	j	beq_cont.28881
beq_else.28880:
	addi	r0 r5 1
beq_cont.28881:
	j	beq_cont.28879
beq_else.28878:
	mov	r5 r6
beq_cont.28879:
	lw	r4 r6 16
	addi	r0 r7 1
	sll	r7 r7 2
	lwoc1	r6 r7 f0
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28882
	j	beq_cont.28883
beq_else.28882:
	neg.s	f0 f0
beq_cont.28883:
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
beq_cont.28875:
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28884
	addi	r0 r2 0
	j	bfeq_nontail_cont.28885
bfeq_nontail_else.28884:
	addi	r0 r2 1
bfeq_nontail_cont.28885:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.28886
	addi	r0 r2 5
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	j	beq_cont.28887
beq_else.28886:
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
	blez	r25 bfle_nontail_else.28888
	addi	r0 r6 1
	j	bfle_nontail_cont.28889
bfle_nontail_else.28888:
	addi	r0 r6 0
bfle_nontail_cont.28889:
	addi	r0 r7 0
	sub	r5 r7 r25
	beq	r25 r0 beq_else.28890
	addi	r0 r5 0
	sub	r6 r5 r25
	beq	r25 r0 beq_else.28892
	addi	r0 r5 0
	j	beq_cont.28893
beq_else.28892:
	addi	r0 r5 1
beq_cont.28893:
	j	beq_cont.28891
beq_else.28890:
	mov	r5 r6
beq_cont.28891:
	lw	r4 r4 16
	addi	r0 r6 2
	sll	r6 r6 2
	lwoc1	r4 r6 f0
	addi	r0 r4 0
	sub	r5 r4 r25
	beq	r25 r0 beq_else.28894
	j	beq_cont.28895
beq_else.28894:
	neg.s	f0 f0
beq_cont.28895:
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
beq_cont.28887:
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
	blez	r25 bfle_nontail_else.28896
	addi	r0 r3 1
	j	bfle_nontail_cont.28897
bfle_nontail_else.28896:
	addi	r0 r3 0
bfle_nontail_cont.28897:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28898
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
	j	beq_cont.28899
beq_else.28898:
	addi	r0 r2 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
beq_cont.28899:
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
	beq	r25 r0 beq_else.28900
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
	j	beq_cont.28901
beq_else.28900:
	mov.s	f3 f0
beq_cont.28901:
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
	beq	r25 r0 beq_else.28902
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
	j	beq_cont.28903
beq_else.28902:
	addi	r0 r2 1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r2 3
	sll	r2 r2 2
	swoc1	f3 r1 r2
beq_cont.28903:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.28904
	addi	r0 r2 0
	j	bfeq_nontail_cont.28905
bfeq_nontail_else.28904:
	addi	r0 r2 1
bfeq_nontail_cont.28905:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28906
	j	beq_cont.28907
beq_else.28906:
	addi	r0 r2 4
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
beq_cont.28907:
	jr	r31
iter_setup_dirvec_constants.2986:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.28908
	jr	r31
ble_tail_else.28908:
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
	beq	r25 r0 beq_else.28910
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28912
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
	j	beq_cont.28913
beq_else.28912:
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
	blez	r25 bfle_nontail_else.28914
	addi	r0 r3 1
	j	bfle_nontail_cont.28915
bfle_nontail_else.28914:
	addi	r0 r3 0
bfle_nontail_cont.28915:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28916
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
	j	beq_cont.28917
beq_else.28916:
	addi	r0 r2 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
beq_cont.28917:
	lw	r30 r2 8
	sll	r2 r3 2
	lw	r30 r4 4
	swo	r1 r4 r3
beq_cont.28913:
	j	beq_cont.28911
beq_else.28910:
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
beq_cont.28911:
	addi	r0 r1 1
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.28918
	jr	r31
ble_tail_else.28918:
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
	beq	r25 r0 beq_else.28920
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.28922
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
	j	beq_cont.28923
beq_else.28922:
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
beq_cont.28923:
	j	beq_cont.28921
beq_else.28920:
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
beq_cont.28921:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 0
	j	iter_setup_dirvec_constants.2986
setup_startp_constants.2991:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.28924
	jr	r31
ble_tail_else.28924:
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
	beq	r25 r0 beq_else.28926
	addi	r0 r6 2
	sub	r5 r6 r25
	blez	r25 ble_nontail_else.28928
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
	beq	r25 r0 beq_else.28930
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
	j	beq_cont.28931
beq_else.28930:
	mov.s	f3 f0
beq_cont.28931:
	addi	r0 r3 3
	addi	r0 r6 3
	sub	r5 r6 r25
	beq	r25 r0 beq_else.28932
	j	beq_cont.28933
beq_else.28932:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28933:
	sll	r3 r3 2
	swoc1	f0 r4 r3
	j	ble_nontail_cont.28929
ble_nontail_else.28928:
ble_nontail_cont.28929:
	j	beq_cont.28927
beq_else.28926:
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
beq_cont.28927:
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
	beq	r25 r0 beq_tail_else.28934
	addi	r0 r3 2
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28935
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
	beq	r25 r0 beq_else.28936
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
	j	beq_cont.28937
beq_else.28936:
	mov.s	f3 f0
beq_cont.28937:
	lw	r1 r2 4
	addi	r0 r3 3
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28938
	j	beq_cont.28939
beq_else.28938:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.28939:
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28940
	addi	r0 r2 1
	j	bfle_nontail_cont.28941
bfle_nontail_else.28940:
	addi	r0 r2 0
bfle_nontail_cont.28941:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28942
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_else.28944
	addi	r0 r1 0
	j	beq_cont.28945
beq_else.28944:
	addi	r0 r1 1
beq_cont.28945:
	j	beq_cont.28943
beq_else.28942:
	mov	r1 r2
beq_cont.28943:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28946
	addi	r0 r1 0
	jr	r31
beq_tail_else.28946:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28935:
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
	blez	r25 bfle_nontail_else.28947
	addi	r0 r2 1
	j	bfle_nontail_cont.28948
bfle_nontail_else.28947:
	addi	r0 r2 0
bfle_nontail_cont.28948:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.28949
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_else.28951
	addi	r0 r1 0
	j	beq_cont.28952
beq_else.28951:
	addi	r0 r1 1
beq_cont.28952:
	j	beq_cont.28950
beq_else.28949:
	mov	r1 r2
beq_cont.28950:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28953
	addi	r0 r1 0
	jr	r31
beq_tail_else.28953:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28934:
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
	blez	r25 bfle_nontail_else.28954
	addi	r0 r2 1
	j	bfle_nontail_cont.28955
bfle_nontail_else.28954:
	addi	r0 r2 0
bfle_nontail_cont.28955:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28956
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
	blez	r25 bfle_nontail_else.28958
	addi	r0 r2 1
	j	bfle_nontail_cont.28959
bfle_nontail_else.28958:
	addi	r0 r2 0
bfle_nontail_cont.28959:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.28960
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
	blez	r25 bfle_nontail_else.28962
	addi	r0 r2 1
	j	bfle_nontail_cont.28963
bfle_nontail_else.28962:
	addi	r0 r2 0
bfle_nontail_cont.28963:
	j	beq_cont.28961
beq_else.28960:
	addi	r0 r2 0
beq_cont.28961:
	j	beq_cont.28957
beq_else.28956:
	addi	r0 r2 0
beq_cont.28957:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.28964
	lw	r1 r1 24
	jr	r31
beq_tail_else.28964:
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.28965
	addi	r0 r1 0
	jr	r31
beq_tail_else.28965:
	addi	r0 r1 1
	jr	r31
check_all_inside.3016:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.28966
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
	beq	r25 r0 beq_else.28967
	addi	r0 r5 2
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28969
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
	beq	r25 r0 beq_else.28971
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
	j	beq_cont.28972
beq_else.28971:
	mov.s	f6 f3
beq_cont.28972:
	lw	r3 r4 4
	addi	r0 r5 3
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28973
	j	beq_cont.28974
beq_else.28973:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f3
beq_cont.28974:
	lw	r3 r3 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f4 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.28975
	addi	r0 r4 1
	j	bfle_nontail_cont.28976
bfle_nontail_else.28975:
	addi	r0 r4 0
bfle_nontail_cont.28976:
	addi	r0 r5 0
	sub	r3 r5 r25
	beq	r25 r0 beq_else.28977
	addi	r0 r3 0
	sub	r4 r3 r25
	beq	r25 r0 beq_else.28979
	addi	r0 r3 0
	j	beq_cont.28980
beq_else.28979:
	addi	r0 r3 1
beq_cont.28980:
	j	beq_cont.28978
beq_else.28977:
	mov	r3 r4
beq_cont.28978:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28981
	addi	r0 r3 0
	j	beq_cont.28982
beq_else.28981:
	addi	r0 r3 1
beq_cont.28982:
	j	beq_cont.28970
beq_else.28969:
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
	blez	r25 bfle_nontail_else.28983
	addi	r0 r4 1
	j	bfle_nontail_cont.28984
bfle_nontail_else.28983:
	addi	r0 r4 0
bfle_nontail_cont.28984:
	addi	r0 r5 0
	sub	r3 r5 r25
	beq	r25 r0 beq_else.28985
	addi	r0 r3 0
	sub	r4 r3 r25
	beq	r25 r0 beq_else.28987
	addi	r0 r3 0
	j	beq_cont.28988
beq_else.28987:
	addi	r0 r3 1
beq_cont.28988:
	j	beq_cont.28986
beq_else.28985:
	mov	r3 r4
beq_cont.28986:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.28989
	addi	r0 r3 0
	j	beq_cont.28990
beq_else.28989:
	addi	r0 r3 1
beq_cont.28990:
beq_cont.28970:
	j	beq_cont.28968
beq_else.28967:
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
	blez	r25 bfle_nontail_else.28991
	addi	r0 r4 1
	j	bfle_nontail_cont.28992
bfle_nontail_else.28991:
	addi	r0 r4 0
bfle_nontail_cont.28992:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28993
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
	blez	r25 bfle_nontail_else.28995
	addi	r0 r4 1
	j	bfle_nontail_cont.28996
bfle_nontail_else.28995:
	addi	r0 r4 0
bfle_nontail_cont.28996:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.28997
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
	blez	r25 bfle_nontail_else.28999
	addi	r0 r4 1
	j	bfle_nontail_cont.29000
bfle_nontail_else.28999:
	addi	r0 r4 0
bfle_nontail_cont.29000:
	j	beq_cont.28998
beq_else.28997:
	addi	r0 r4 0
beq_cont.28998:
	j	beq_cont.28994
beq_else.28993:
	addi	r0 r4 0
beq_cont.28994:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29001
	lw	r3 r3 24
	j	beq_cont.29002
beq_else.29001:
	lw	r3 r3 24
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29003
	addi	r0 r3 0
	j	beq_cont.29004
beq_else.29003:
	addi	r0 r3 1
beq_cont.29004:
beq_cont.29002:
beq_cont.28968:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29005
	addi	r0 r1 0
	jr	r31
beq_tail_else.29005:
	addi	r0 r3 1
	add	r1 r3 r1
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29006
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
	beq	r25 r0 beq_tail_else.29007
	addi	r0 r1 0
	jr	r31
beq_tail_else.29007:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 12
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29008
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
	beq	r25 r0 beq_else.29009
	addi	r0 r5 2
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29011
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
	beq	r25 r0 beq_else.29013
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
	j	beq_cont.29014
beq_else.29013:
	mov.s	f6 f0
beq_cont.29014:
	lw	r2 r4 4
	addi	r0 r5 3
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29015
	j	beq_cont.29016
beq_else.29015:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29016:
	lw	r2 r2 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29017
	addi	r0 r4 1
	j	bfle_nontail_cont.29018
bfle_nontail_else.29017:
	addi	r0 r4 0
bfle_nontail_cont.29018:
	addi	r0 r5 0
	sub	r2 r5 r25
	beq	r25 r0 beq_else.29019
	addi	r0 r2 0
	sub	r4 r2 r25
	beq	r25 r0 beq_else.29021
	addi	r0 r2 0
	j	beq_cont.29022
beq_else.29021:
	addi	r0 r2 1
beq_cont.29022:
	j	beq_cont.29020
beq_else.29019:
	mov	r2 r4
beq_cont.29020:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29023
	addi	r0 r2 0
	j	beq_cont.29024
beq_else.29023:
	addi	r0 r2 1
beq_cont.29024:
	j	beq_cont.29012
beq_else.29011:
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
	blez	r25 bfle_nontail_else.29025
	addi	r0 r4 1
	j	bfle_nontail_cont.29026
bfle_nontail_else.29025:
	addi	r0 r4 0
bfle_nontail_cont.29026:
	addi	r0 r5 0
	sub	r2 r5 r25
	beq	r25 r0 beq_else.29027
	addi	r0 r2 0
	sub	r4 r2 r25
	beq	r25 r0 beq_else.29029
	addi	r0 r2 0
	j	beq_cont.29030
beq_else.29029:
	addi	r0 r2 1
beq_cont.29030:
	j	beq_cont.29028
beq_else.29027:
	mov	r2 r4
beq_cont.29028:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29031
	addi	r0 r2 0
	j	beq_cont.29032
beq_else.29031:
	addi	r0 r2 1
beq_cont.29032:
beq_cont.29012:
	j	beq_cont.29010
beq_else.29009:
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
	blez	r25 bfle_nontail_else.29033
	addi	r0 r4 1
	j	bfle_nontail_cont.29034
bfle_nontail_else.29033:
	addi	r0 r4 0
bfle_nontail_cont.29034:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29035
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
	blez	r25 bfle_nontail_else.29037
	addi	r0 r4 1
	j	bfle_nontail_cont.29038
bfle_nontail_else.29037:
	addi	r0 r4 0
bfle_nontail_cont.29038:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29039
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
	blez	r25 bfle_nontail_else.29041
	addi	r0 r4 1
	j	bfle_nontail_cont.29042
bfle_nontail_else.29041:
	addi	r0 r4 0
bfle_nontail_cont.29042:
	j	beq_cont.29040
beq_else.29039:
	addi	r0 r4 0
beq_cont.29040:
	j	beq_cont.29036
beq_else.29035:
	addi	r0 r4 0
beq_cont.29036:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29043
	lw	r2 r2 24
	j	beq_cont.29044
beq_else.29043:
	lw	r2 r2 24
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29045
	addi	r0 r2 0
	j	beq_cont.29046
beq_else.29045:
	addi	r0 r2 1
beq_cont.29046:
beq_cont.29044:
beq_cont.29010:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29047
	addi	r0 r1 0
	jr	r31
beq_tail_else.29047:
	addi	r0 r2 1
	add	r1 r2 r1
	sll	r1 r2 2
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29048
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
	beq	r25 r0 beq_tail_else.29049
	addi	r0 r1 0
	jr	r31
beq_tail_else.29049:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r1
	lwc1	 r30 f0 8
	lwc1	 r30 f1 4
	lwc1	 r30 f2 0
	lw	r30 r2 12
	j	check_all_inside.3016
beq_tail_else.29048:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29008:
	addi	r0 r1 1
	jr	r31
beq_tail_else.29006:
	addi	r0 r1 1
	jr	r31
beq_tail_else.28966:
	addi	r0 r1 1
	jr	r31
shadow_check_and_group.3022:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29050
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
	beq	r25 r0 beq_else.29051
	addi	r0 r4 2
	sub	r7 r4 r25
	beq	r25 r0 beq_else.29053
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r5
	mov	r1 r6
	jal	solver_second_fast.2950
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.29054
beq_else.29053:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r5 r4 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29055
	addi	r0 r4 1
	j	bfle_nontail_cont.29056
bfle_nontail_else.29055:
	addi	r0 r4 0
bfle_nontail_cont.29056:
	addi	r0 r6 0
	sub	r4 r6 r25
	beq	r25 r0 beq_else.29057
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
	j	beq_cont.29058
beq_else.29057:
	addi	r0 r1 0
beq_cont.29058:
beq_cont.29054:
	j	beq_cont.29052
beq_else.29051:
	lw	r4 r4 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r3 r5
	mov	r2 r4
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29052:
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
	beq	r25 r0 beq_else.29059
	lui	r24 48716
	ori	r24 r24 52429
	mtc1	r24 f1
	sub.s	f1 f0 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29061
	addi	r0 r1 1
	j	bfle_nontail_cont.29062
bfle_nontail_else.29061:
	addi	r0 r1 0
bfle_nontail_cont.29062:
	j	beq_cont.29060
beq_else.29059:
	addi	r0 r1 0
beq_cont.29060:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29063
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f1
	add.s	f0 f1 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
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
	beq	r25 r0 beq_else.29064
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
	beq	r25 r0 beq_else.29066
	addi	r0 r1 0
	j	beq_cont.29067
beq_else.29066:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29068
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
	beq	r25 r0 beq_else.29070
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29072
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
	beq	r25 r0 beq_else.29074
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
	j	beq_cont.29075
beq_else.29074:
	mov.s	f6 f0
beq_cont.29075:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29076
	j	beq_cont.29077
beq_else.29076:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29077:
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29078
	addi	r0 r3 1
	j	bfle_nontail_cont.29079
bfle_nontail_else.29078:
	addi	r0 r3 0
bfle_nontail_cont.29079:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29080
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29082
	addi	r0 r1 0
	j	beq_cont.29083
beq_else.29082:
	addi	r0 r1 1
beq_cont.29083:
	j	beq_cont.29081
beq_else.29080:
	mov	r1 r3
beq_cont.29081:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29084
	addi	r0 r1 0
	j	beq_cont.29085
beq_else.29084:
	addi	r0 r1 1
beq_cont.29085:
	j	beq_cont.29073
beq_else.29072:
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
	blez	r25 bfle_nontail_else.29086
	addi	r0 r3 1
	j	bfle_nontail_cont.29087
bfle_nontail_else.29086:
	addi	r0 r3 0
bfle_nontail_cont.29087:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29088
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29090
	addi	r0 r1 0
	j	beq_cont.29091
beq_else.29090:
	addi	r0 r1 1
beq_cont.29091:
	j	beq_cont.29089
beq_else.29088:
	mov	r1 r3
beq_cont.29089:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29092
	addi	r0 r1 0
	j	beq_cont.29093
beq_else.29092:
	addi	r0 r1 1
beq_cont.29093:
beq_cont.29073:
	j	beq_cont.29071
beq_else.29070:
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
	blez	r25 bfle_nontail_else.29094
	addi	r0 r3 1
	j	bfle_nontail_cont.29095
bfle_nontail_else.29094:
	addi	r0 r3 0
bfle_nontail_cont.29095:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29096
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
	blez	r25 bfle_nontail_else.29098
	addi	r0 r3 1
	j	bfle_nontail_cont.29099
bfle_nontail_else.29098:
	addi	r0 r3 0
bfle_nontail_cont.29099:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29100
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
	blez	r25 bfle_nontail_else.29102
	addi	r0 r3 1
	j	bfle_nontail_cont.29103
bfle_nontail_else.29102:
	addi	r0 r3 0
bfle_nontail_cont.29103:
	j	beq_cont.29101
beq_else.29100:
	addi	r0 r3 0
beq_cont.29101:
	j	beq_cont.29097
beq_else.29096:
	addi	r0 r3 0
beq_cont.29097:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29104
	lw	r1 r1 24
	j	beq_cont.29105
beq_else.29104:
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29106
	addi	r0 r1 0
	j	beq_cont.29107
beq_else.29106:
	addi	r0 r1 1
beq_cont.29107:
beq_cont.29105:
beq_cont.29071:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29108
	addi	r0 r1 0
	j	beq_cont.29109
beq_else.29108:
	addi	r0 r1 2
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29110
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
	beq	r25 r0 beq_else.29112
	addi	r0 r1 0
	j	beq_cont.29113
beq_else.29112:
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
beq_cont.29113:
	j	beq_cont.29111
beq_else.29110:
	addi	r0 r1 1
beq_cont.29111:
beq_cont.29109:
	j	beq_cont.29069
beq_else.29068:
	addi	r0 r1 1
beq_cont.29069:
beq_cont.29067:
	j	beq_cont.29065
beq_else.29064:
	addi	r0 r1 1
beq_cont.29065:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29114
	addi	r0 r1 1
	jr	r31
beq_tail_else.29114:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_and_group.3022
beq_tail_else.29063:
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	lw	r30 r31 4
	addi	r30 r30 -24
	lw	r30 r2 8
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29115
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_and_group.3022
beq_tail_else.29115:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29050:
	addi	r0 r1 0
	jr	r31
shadow_check_one_or_group.3025:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29116
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
	beq	r25 r0 beq_tail_else.29117
	addi	r0 r1 1
	jr	r31
beq_tail_else.29117:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29118
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
	beq	r25 r0 beq_tail_else.29119
	addi	r0 r1 1
	jr	r31
beq_tail_else.29119:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29120
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
	beq	r25 r0 beq_tail_else.29121
	addi	r0 r1 1
	jr	r31
beq_tail_else.29121:
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29122
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
	beq	r25 r0 beq_tail_else.29123
	addi	r0 r1 1
	jr	r31
beq_tail_else.29123:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29124
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
	beq	r25 r0 beq_tail_else.29125
	addi	r0 r1 1
	jr	r31
beq_tail_else.29125:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29126
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
	beq	r25 r0 beq_tail_else.29127
	addi	r0 r1 1
	jr	r31
beq_tail_else.29127:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29128
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
	beq	r25 r0 beq_tail_else.29129
	addi	r0 r1 1
	jr	r31
beq_tail_else.29129:
	addi	r0 r1 1
	lw	r30 r2 28
	add	r2 r1 r1
	sll	r1 r2 2
	lw	r30 r3 0
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.29130
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
	beq	r25 r0 beq_tail_else.29131
	addi	r0 r1 1
	jr	r31
beq_tail_else.29131:
	addi	r0 r1 1
	lw	r30 r2 32
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_one_or_group.3025
beq_tail_else.29130:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29128:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29126:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29124:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29122:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29120:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29118:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29116:
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
	beq	r25 r0 beq_tail_else.29132
	addi	r0 r5 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29133
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
	beq	r25 r0 beq_else.29135
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29137
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.29138
beq_else.29137:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29139
	addi	r0 r5 1
	j	bfle_nontail_cont.29140
bfle_nontail_else.29139:
	addi	r0 r5 0
bfle_nontail_cont.29140:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29141
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
	j	beq_cont.29142
beq_else.29141:
	addi	r0 r1 0
beq_cont.29142:
beq_cont.29138:
	j	beq_cont.29136
beq_else.29135:
	lw	r5 r5 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29136:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29143
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
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
	blez	r25 bfle_nontail_else.29145
	addi	r0 r1 1
	j	bfle_nontail_cont.29146
bfle_nontail_else.29145:
	addi	r0 r1 0
bfle_nontail_cont.29146:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29147
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29149
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
	beq	r25 r0 beq_else.29151
	addi	r0 r1 1
	j	beq_cont.29152
beq_else.29151:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29153
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
	beq	r25 r0 beq_else.29155
	addi	r0 r1 1
	j	beq_cont.29156
beq_else.29155:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29157
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
	beq	r25 r0 beq_else.29159
	addi	r0 r1 1
	j	beq_cont.29160
beq_else.29159:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29161
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
	beq	r25 r0 beq_else.29163
	addi	r0 r1 1
	j	beq_cont.29164
beq_else.29163:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29165
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
	beq	r25 r0 beq_else.29167
	addi	r0 r1 1
	j	beq_cont.29168
beq_else.29167:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29169
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
	beq	r25 r0 beq_else.29171
	addi	r0 r1 1
	j	beq_cont.29172
beq_else.29171:
	addi	r0 r1 7
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29173
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
	beq	r25 r0 beq_else.29175
	addi	r0 r1 1
	j	beq_cont.29176
beq_else.29175:
	addi	r0 r1 8
	lw	r30 r2 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29176:
	j	beq_cont.29174
beq_else.29173:
	addi	r0 r1 0
beq_cont.29174:
beq_cont.29172:
	j	beq_cont.29170
beq_else.29169:
	addi	r0 r1 0
beq_cont.29170:
beq_cont.29168:
	j	beq_cont.29166
beq_else.29165:
	addi	r0 r1 0
beq_cont.29166:
beq_cont.29164:
	j	beq_cont.29162
beq_else.29161:
	addi	r0 r1 0
beq_cont.29162:
beq_cont.29160:
	j	beq_cont.29158
beq_else.29157:
	addi	r0 r1 0
beq_cont.29158:
beq_cont.29156:
	j	beq_cont.29154
beq_else.29153:
	addi	r0 r1 0
beq_cont.29154:
beq_cont.29152:
	j	beq_cont.29150
beq_else.29149:
	addi	r0 r1 0
beq_cont.29150:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29177
	addi	r0 r1 1
	j	beq_cont.29178
beq_else.29177:
	addi	r0 r1 0
beq_cont.29178:
	j	beq_cont.29148
beq_else.29147:
	addi	r0 r1 0
beq_cont.29148:
	j	beq_cont.29144
beq_else.29143:
	addi	r0 r1 0
beq_cont.29144:
	j	beq_cont.29134
beq_else.29133:
	addi	r0 r1 1
beq_cont.29134:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29179
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29180
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
	beq	r25 r0 beq_else.29182
	addi	r0 r1 1
	j	beq_cont.29183
beq_else.29182:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29184
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
	beq	r25 r0 beq_else.29186
	addi	r0 r1 1
	j	beq_cont.29187
beq_else.29186:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29188
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
	beq	r25 r0 beq_else.29190
	addi	r0 r1 1
	j	beq_cont.29191
beq_else.29190:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29192
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
	beq	r25 r0 beq_else.29194
	addi	r0 r1 1
	j	beq_cont.29195
beq_else.29194:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29196
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
	beq	r25 r0 beq_else.29198
	addi	r0 r1 1
	j	beq_cont.29199
beq_else.29198:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29200
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
	beq	r25 r0 beq_else.29202
	addi	r0 r1 1
	j	beq_cont.29203
beq_else.29202:
	addi	r0 r1 7
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29204
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
	beq	r25 r0 beq_else.29206
	addi	r0 r1 1
	j	beq_cont.29207
beq_else.29206:
	addi	r0 r1 8
	lw	r30 r2 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -16
	lw	r30 r31 12
beq_cont.29207:
	j	beq_cont.29205
beq_else.29204:
	addi	r0 r1 0
beq_cont.29205:
beq_cont.29203:
	j	beq_cont.29201
beq_else.29200:
	addi	r0 r1 0
beq_cont.29201:
beq_cont.29199:
	j	beq_cont.29197
beq_else.29196:
	addi	r0 r1 0
beq_cont.29197:
beq_cont.29195:
	j	beq_cont.29193
beq_else.29192:
	addi	r0 r1 0
beq_cont.29193:
beq_cont.29191:
	j	beq_cont.29189
beq_else.29188:
	addi	r0 r1 0
beq_cont.29189:
beq_cont.29187:
	j	beq_cont.29185
beq_else.29184:
	addi	r0 r1 0
beq_cont.29185:
beq_cont.29183:
	j	beq_cont.29181
beq_else.29180:
	addi	r0 r1 0
beq_cont.29181:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29208
	addi	r0 r1 1
	jr	r31
beq_tail_else.29208:
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
	beq	r25 r0 beq_tail_else.29209
	addi	r0 r5 99
	sw	r2 r30 12
	sw	r1 r30 16
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29210
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
	beq	r25 r0 beq_else.29212
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29214
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.29215
beq_else.29214:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29216
	addi	r0 r5 1
	j	bfle_nontail_cont.29217
bfle_nontail_else.29216:
	addi	r0 r5 0
bfle_nontail_cont.29217:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29218
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
	j	beq_cont.29219
beq_else.29218:
	addi	r0 r1 0
beq_cont.29219:
beq_cont.29215:
	j	beq_cont.29213
beq_else.29212:
	lw	r5 r5 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.29213:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29220
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
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
	blez	r25 bfle_nontail_else.29222
	addi	r0 r1 1
	j	bfle_nontail_cont.29223
bfle_nontail_else.29222:
	addi	r0 r1 0
bfle_nontail_cont.29223:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29224
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29226
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
	beq	r25 r0 beq_else.29228
	addi	r0 r1 1
	j	beq_cont.29229
beq_else.29228:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29230
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
	beq	r25 r0 beq_else.29232
	addi	r0 r1 1
	j	beq_cont.29233
beq_else.29232:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29234
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
	beq	r25 r0 beq_else.29236
	addi	r0 r1 1
	j	beq_cont.29237
beq_else.29236:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29238
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
	beq	r25 r0 beq_else.29240
	addi	r0 r1 1
	j	beq_cont.29241
beq_else.29240:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29242
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
	beq	r25 r0 beq_else.29244
	addi	r0 r1 1
	j	beq_cont.29245
beq_else.29244:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29246
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
	beq	r25 r0 beq_else.29248
	addi	r0 r1 1
	j	beq_cont.29249
beq_else.29248:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
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
beq_cont.29233:
	j	beq_cont.29231
beq_else.29230:
	addi	r0 r1 0
beq_cont.29231:
beq_cont.29229:
	j	beq_cont.29227
beq_else.29226:
	addi	r0 r1 0
beq_cont.29227:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29250
	addi	r0 r1 1
	j	beq_cont.29251
beq_else.29250:
	addi	r0 r1 0
beq_cont.29251:
	j	beq_cont.29225
beq_else.29224:
	addi	r0 r1 0
beq_cont.29225:
	j	beq_cont.29221
beq_else.29220:
	addi	r0 r1 0
beq_cont.29221:
	j	beq_cont.29211
beq_else.29210:
	addi	r0 r1 1
beq_cont.29211:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29252
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29253
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
	beq	r25 r0 beq_else.29255
	addi	r0 r1 1
	j	beq_cont.29256
beq_else.29255:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29257
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
	beq	r25 r0 beq_else.29259
	addi	r0 r1 1
	j	beq_cont.29260
beq_else.29259:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29261
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
	beq	r25 r0 beq_else.29263
	addi	r0 r1 1
	j	beq_cont.29264
beq_else.29263:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29265
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
	beq	r25 r0 beq_else.29267
	addi	r0 r1 1
	j	beq_cont.29268
beq_else.29267:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29269
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
	beq	r25 r0 beq_else.29271
	addi	r0 r1 1
	j	beq_cont.29272
beq_else.29271:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29273
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
	beq	r25 r0 beq_else.29275
	addi	r0 r1 1
	j	beq_cont.29276
beq_else.29275:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.29276:
	j	beq_cont.29274
beq_else.29273:
	addi	r0 r1 0
beq_cont.29274:
beq_cont.29272:
	j	beq_cont.29270
beq_else.29269:
	addi	r0 r1 0
beq_cont.29270:
beq_cont.29268:
	j	beq_cont.29266
beq_else.29265:
	addi	r0 r1 0
beq_cont.29266:
beq_cont.29264:
	j	beq_cont.29262
beq_else.29261:
	addi	r0 r1 0
beq_cont.29262:
beq_cont.29260:
	j	beq_cont.29258
beq_else.29257:
	addi	r0 r1 0
beq_cont.29258:
beq_cont.29256:
	j	beq_cont.29254
beq_else.29253:
	addi	r0 r1 0
beq_cont.29254:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29277
	addi	r0 r1 1
	jr	r31
beq_tail_else.29277:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29252:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29209:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29179:
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
	beq	r25 r0 beq_tail_else.29278
	addi	r0 r5 99
	sw	r2 r30 20
	sw	r1 r30 24
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29279
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
	beq	r25 r0 beq_else.29281
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29283
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -32
	lw	r30 r31 28
	j	beq_cont.29284
beq_else.29283:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29285
	addi	r0 r5 1
	j	bfle_nontail_cont.29286
bfle_nontail_else.29285:
	addi	r0 r5 0
bfle_nontail_cont.29286:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29287
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
	j	beq_cont.29288
beq_else.29287:
	addi	r0 r1 0
beq_cont.29288:
beq_cont.29284:
	j	beq_cont.29282
beq_else.29281:
	lw	r5 r5 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -32
	lw	r30 r31 28
beq_cont.29282:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29289
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
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
	blez	r25 bfle_nontail_else.29291
	addi	r0 r1 1
	j	bfle_nontail_cont.29292
bfle_nontail_else.29291:
	addi	r0 r1 0
bfle_nontail_cont.29292:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29293
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29295
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
	beq	r25 r0 beq_else.29297
	addi	r0 r1 1
	j	beq_cont.29298
beq_else.29297:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29299
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
	beq	r25 r0 beq_else.29301
	addi	r0 r1 1
	j	beq_cont.29302
beq_else.29301:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29303
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
	beq	r25 r0 beq_else.29305
	addi	r0 r1 1
	j	beq_cont.29306
beq_else.29305:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29307
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
	beq	r25 r0 beq_else.29309
	addi	r0 r1 1
	j	beq_cont.29310
beq_else.29309:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29311
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
	beq	r25 r0 beq_else.29313
	addi	r0 r1 1
	j	beq_cont.29314
beq_else.29313:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29315
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
	beq	r25 r0 beq_else.29317
	addi	r0 r1 1
	j	beq_cont.29318
beq_else.29317:
	addi	r0 r1 7
	lw	r30 r2 20
	sw	r31 r30 28
	addi	r30 r30 32
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -32
	lw	r30 r31 28
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
beq_cont.29306:
	j	beq_cont.29304
beq_else.29303:
	addi	r0 r1 0
beq_cont.29304:
beq_cont.29302:
	j	beq_cont.29300
beq_else.29299:
	addi	r0 r1 0
beq_cont.29300:
beq_cont.29298:
	j	beq_cont.29296
beq_else.29295:
	addi	r0 r1 0
beq_cont.29296:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29319
	addi	r0 r1 1
	j	beq_cont.29320
beq_else.29319:
	addi	r0 r1 0
beq_cont.29320:
	j	beq_cont.29294
beq_else.29293:
	addi	r0 r1 0
beq_cont.29294:
	j	beq_cont.29290
beq_else.29289:
	addi	r0 r1 0
beq_cont.29290:
	j	beq_cont.29280
beq_else.29279:
	addi	r0 r1 1
beq_cont.29280:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29321
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29322
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
	beq	r25 r0 beq_else.29324
	addi	r0 r1 1
	j	beq_cont.29325
beq_else.29324:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29326
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
	beq	r25 r0 beq_else.29328
	addi	r0 r1 1
	j	beq_cont.29329
beq_else.29328:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29330
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
	beq	r25 r0 beq_else.29332
	addi	r0 r1 1
	j	beq_cont.29333
beq_else.29332:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29334
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
	beq	r25 r0 beq_else.29336
	addi	r0 r1 1
	j	beq_cont.29337
beq_else.29336:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29338
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
	beq	r25 r0 beq_else.29340
	addi	r0 r1 1
	j	beq_cont.29341
beq_else.29340:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29342
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
	beq	r25 r0 beq_else.29344
	addi	r0 r1 1
	j	beq_cont.29345
beq_else.29344:
	addi	r0 r1 7
	lw	r30 r2 20
	sw	r31 r30 28
	addi	r30 r30 32
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -32
	lw	r30 r31 28
beq_cont.29345:
	j	beq_cont.29343
beq_else.29342:
	addi	r0 r1 0
beq_cont.29343:
beq_cont.29341:
	j	beq_cont.29339
beq_else.29338:
	addi	r0 r1 0
beq_cont.29339:
beq_cont.29337:
	j	beq_cont.29335
beq_else.29334:
	addi	r0 r1 0
beq_cont.29335:
beq_cont.29333:
	j	beq_cont.29331
beq_else.29330:
	addi	r0 r1 0
beq_cont.29331:
beq_cont.29329:
	j	beq_cont.29327
beq_else.29326:
	addi	r0 r1 0
beq_cont.29327:
beq_cont.29325:
	j	beq_cont.29323
beq_else.29322:
	addi	r0 r1 0
beq_cont.29323:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29346
	addi	r0 r1 1
	jr	r31
beq_tail_else.29346:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29321:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.3028
beq_tail_else.29278:
	addi	r0 r1 0
	jr	r31
beq_tail_else.29132:
	addi	r0 r1 0
	jr	r31
solve_each_element.3031:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29347
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
	beq	r25 r0 beq_else.29348
	addi	r0 r7 2
	sub	r5 r7 r25
	beq	r25 r0 beq_else.29350
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r6
	jal	solver_second.2927
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.29351
beq_else.29350:
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
	blez	r25 bfle_nontail_else.29352
	addi	r0 r6 1
	j	bfle_nontail_cont.29353
bfle_nontail_else.29352:
	addi	r0 r6 0
bfle_nontail_cont.29353:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29354
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
	j	beq_cont.29355
beq_else.29354:
	addi	r0 r1 0
beq_cont.29355:
beq_cont.29351:
	j	beq_cont.29349
beq_else.29348:
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r6
	jal	solver_rect.2902
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.29349:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29356
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
	blez	r25 bfle_nontail_else.29357
	addi	r0 r2 1
	j	bfle_nontail_cont.29358
bfle_nontail_else.29357:
	addi	r0 r2 0
bfle_nontail_cont.29358:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29359
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
	blez	r25 bfle_nontail_else.29361
	addi	r0 r2 1
	j	bfle_nontail_cont.29362
bfle_nontail_else.29361:
	addi	r0 r2 0
bfle_nontail_cont.29362:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29363
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
	beq	r25 r0 beq_else.29365
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
	beq	r25 r0 beq_else.29367
	addi	r0 r1 0
	j	beq_cont.29368
beq_else.29367:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29369
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
	beq	r25 r0 beq_else.29371
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29373
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
	beq	r25 r0 beq_else.29375
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
	j	beq_cont.29376
beq_else.29375:
	mov.s	f6 f0
beq_cont.29376:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29377
	j	beq_cont.29378
beq_else.29377:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29378:
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29379
	addi	r0 r3 1
	j	bfle_nontail_cont.29380
bfle_nontail_else.29379:
	addi	r0 r3 0
bfle_nontail_cont.29380:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29381
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29383
	addi	r0 r1 0
	j	beq_cont.29384
beq_else.29383:
	addi	r0 r1 1
beq_cont.29384:
	j	beq_cont.29382
beq_else.29381:
	mov	r1 r3
beq_cont.29382:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29385
	addi	r0 r1 0
	j	beq_cont.29386
beq_else.29385:
	addi	r0 r1 1
beq_cont.29386:
	j	beq_cont.29374
beq_else.29373:
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
	blez	r25 bfle_nontail_else.29387
	addi	r0 r3 1
	j	bfle_nontail_cont.29388
bfle_nontail_else.29387:
	addi	r0 r3 0
bfle_nontail_cont.29388:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29389
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29391
	addi	r0 r1 0
	j	beq_cont.29392
beq_else.29391:
	addi	r0 r1 1
beq_cont.29392:
	j	beq_cont.29390
beq_else.29389:
	mov	r1 r3
beq_cont.29390:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29393
	addi	r0 r1 0
	j	beq_cont.29394
beq_else.29393:
	addi	r0 r1 1
beq_cont.29394:
beq_cont.29374:
	j	beq_cont.29372
beq_else.29371:
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
	blez	r25 bfle_nontail_else.29395
	addi	r0 r3 1
	j	bfle_nontail_cont.29396
bfle_nontail_else.29395:
	addi	r0 r3 0
bfle_nontail_cont.29396:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29397
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
	blez	r25 bfle_nontail_else.29399
	addi	r0 r3 1
	j	bfle_nontail_cont.29400
bfle_nontail_else.29399:
	addi	r0 r3 0
bfle_nontail_cont.29400:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29401
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
	blez	r25 bfle_nontail_else.29403
	addi	r0 r3 1
	j	bfle_nontail_cont.29404
bfle_nontail_else.29403:
	addi	r0 r3 0
bfle_nontail_cont.29404:
	j	beq_cont.29402
beq_else.29401:
	addi	r0 r3 0
beq_cont.29402:
	j	beq_cont.29398
beq_else.29397:
	addi	r0 r3 0
beq_cont.29398:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29405
	lw	r1 r1 24
	j	beq_cont.29406
beq_else.29405:
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29407
	addi	r0 r1 0
	j	beq_cont.29408
beq_else.29407:
	addi	r0 r1 1
beq_cont.29408:
beq_cont.29406:
beq_cont.29372:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29409
	addi	r0 r1 0
	j	beq_cont.29410
beq_else.29409:
	addi	r0 r1 2
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29411
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
	beq	r25 r0 beq_else.29413
	addi	r0 r1 0
	j	beq_cont.29414
beq_else.29413:
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
beq_cont.29414:
	j	beq_cont.29412
beq_else.29411:
	addi	r0 r1 1
beq_cont.29412:
beq_cont.29410:
	j	beq_cont.29370
beq_else.29369:
	addi	r0 r1 1
beq_cont.29370:
beq_cont.29368:
	j	beq_cont.29366
beq_else.29365:
	addi	r0 r1 1
beq_cont.29366:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29415
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	j	beq_cont.29416
beq_else.29415:
beq_cont.29416:
	j	beq_cont.29364
beq_else.29363:
beq_cont.29364:
	j	beq_cont.29360
beq_else.29359:
beq_cont.29360:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element.3031
beq_tail_else.29356:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 12
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29417
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element.3031
beq_tail_else.29417:
	jr	r31
beq_tail_else.29347:
	jr	r31
solve_one_or_network.3035:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29420
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
	beq	r25 r0 beq_tail_else.29421
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
	beq	r25 r0 beq_tail_else.29422
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
	beq	r25 r0 beq_tail_else.29423
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
	beq	r25 r0 beq_tail_else.29424
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
	beq	r25 r0 beq_tail_else.29425
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
	beq	r25 r0 beq_tail_else.29426
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
	beq	r25 r0 beq_tail_else.29427
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
beq_tail_else.29427:
	jr	r31
beq_tail_else.29426:
	jr	r31
beq_tail_else.29425:
	jr	r31
beq_tail_else.29424:
	jr	r31
beq_tail_else.29423:
	jr	r31
beq_tail_else.29422:
	jr	r31
beq_tail_else.29421:
	jr	r31
beq_tail_else.29420:
	jr	r31
trace_or_matrix.3039:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.29436
	addi	r0 r6 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29437
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
	beq	r25 r0 beq_else.29439
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29441
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r5
	jal	solver_second.2927
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.29442
beq_else.29441:
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
	blez	r25 bfle_nontail_else.29443
	addi	r0 r6 1
	j	bfle_nontail_cont.29444
bfle_nontail_else.29443:
	addi	r0 r6 0
bfle_nontail_cont.29444:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29445
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
	j	beq_cont.29446
beq_else.29445:
	addi	r0 r1 0
beq_cont.29446:
beq_cont.29442:
	j	beq_cont.29440
beq_else.29439:
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r5
	jal	solver_rect.2902
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.29440:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29447
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.29449
	addi	r0 r1 1
	j	bfle_nontail_cont.29450
bfle_nontail_else.29449:
	addi	r0 r1 0
bfle_nontail_cont.29450:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29451
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29453
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
	beq	r25 r0 beq_else.29455
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
	beq	r25 r0 beq_else.29457
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
	beq	r25 r0 beq_else.29459
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
	beq	r25 r0 beq_else.29461
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
	beq	r25 r0 beq_else.29463
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
	beq	r25 r0 beq_else.29465
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
	j	beq_cont.29466
beq_else.29465:
beq_cont.29466:
	j	beq_cont.29464
beq_else.29463:
beq_cont.29464:
	j	beq_cont.29462
beq_else.29461:
beq_cont.29462:
	j	beq_cont.29460
beq_else.29459:
beq_cont.29460:
	j	beq_cont.29458
beq_else.29457:
beq_cont.29458:
	j	beq_cont.29456
beq_else.29455:
beq_cont.29456:
	j	beq_cont.29454
beq_else.29453:
beq_cont.29454:
	j	beq_cont.29452
beq_else.29451:
beq_cont.29452:
	j	beq_cont.29448
beq_else.29447:
beq_cont.29448:
	j	beq_cont.29438
beq_else.29437:
	addi	r0 r5 1
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29467
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
	beq	r25 r0 beq_else.29469
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
	beq	r25 r0 beq_else.29471
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
	beq	r25 r0 beq_else.29473
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
	beq	r25 r0 beq_else.29475
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
	beq	r25 r0 beq_else.29477
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
	beq	r25 r0 beq_else.29479
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
	j	beq_cont.29480
beq_else.29479:
beq_cont.29480:
	j	beq_cont.29478
beq_else.29477:
beq_cont.29478:
	j	beq_cont.29476
beq_else.29475:
beq_cont.29476:
	j	beq_cont.29474
beq_else.29473:
beq_cont.29474:
	j	beq_cont.29472
beq_else.29471:
beq_cont.29472:
	j	beq_cont.29470
beq_else.29469:
beq_cont.29470:
	j	beq_cont.29468
beq_else.29467:
beq_cont.29468:
beq_cont.29438:
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
	beq	r25 r0 beq_tail_else.29481
	addi	r0 r5 99
	sw	r1 r30 16
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29482
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
	beq	r25 r0 beq_else.29484
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.29486
	addi	r0 r1 1
	j	bfle_nontail_cont.29487
bfle_nontail_else.29486:
	addi	r0 r1 0
bfle_nontail_cont.29487:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29488
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29490
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
	beq	r25 r0 beq_else.29492
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
	beq	r25 r0 beq_else.29494
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
	beq	r25 r0 beq_else.29496
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
	beq	r25 r0 beq_else.29498
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
	beq	r25 r0 beq_else.29500
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
	j	beq_cont.29501
beq_else.29500:
beq_cont.29501:
	j	beq_cont.29499
beq_else.29498:
beq_cont.29499:
	j	beq_cont.29497
beq_else.29496:
beq_cont.29497:
	j	beq_cont.29495
beq_else.29494:
beq_cont.29495:
	j	beq_cont.29493
beq_else.29492:
beq_cont.29493:
	j	beq_cont.29491
beq_else.29490:
beq_cont.29491:
	j	beq_cont.29489
beq_else.29488:
beq_cont.29489:
	j	beq_cont.29485
beq_else.29484:
beq_cont.29485:
	j	beq_cont.29483
beq_else.29482:
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29502
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
	beq	r25 r0 beq_else.29504
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
	beq	r25 r0 beq_else.29506
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
	beq	r25 r0 beq_else.29508
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
	beq	r25 r0 beq_else.29510
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
	beq	r25 r0 beq_else.29512
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
	j	beq_cont.29513
beq_else.29512:
beq_cont.29513:
	j	beq_cont.29511
beq_else.29510:
beq_cont.29511:
	j	beq_cont.29509
beq_else.29508:
beq_cont.29509:
	j	beq_cont.29507
beq_else.29506:
beq_cont.29507:
	j	beq_cont.29505
beq_else.29504:
beq_cont.29505:
	j	beq_cont.29503
beq_else.29502:
beq_cont.29503:
beq_cont.29483:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_or_matrix.3039
beq_tail_else.29481:
	jr	r31
beq_tail_else.29436:
	jr	r31
solve_each_element_fast.3045:
	lw	r3 r4 0
	sll	r1 r5 2
	lwo	r2 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.29516
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
	beq	r25 r0 beq_else.29517
	addi	r0 r10 2
	sub	r9 r10 r25
	beq	r25 r0 beq_else.29519
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r8 r9 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.29521
	addi	r0 r9 0
	j	bfeq_nontail_cont.29522
bfeq_nontail_else.29521:
	addi	r0 r9 1
bfeq_nontail_cont.29522:
	addi	r0 r10 0
	sub	r9 r10 r25
	beq	r25 r0 beq_else.29523
	addi	r0 r1 0
	j	beq_cont.29524
beq_else.29523:
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
	blez	r25 bfle_nontail_else.29525
	addi	r0 r7 1
	j	bfle_nontail_cont.29526
bfle_nontail_else.29525:
	addi	r0 r7 0
bfle_nontail_cont.29526:
	addi	r0 r9 0
	sub	r7 r9 r25
	beq	r25 r0 beq_else.29527
	lw	r6 r6 24
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29529
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r7 0
	mov.s f1 f19
	sw r31 r30 20
	jal min_caml_sqrtlib
	lw r30 r31 20
	mov.s f19 f1
	add.s	f0 f1 f0
	addi	r0 r9 4
	sll	r9 r9 2
	lwoc1	r8 r9 f1
	mul.s	f0 f1 f0
	sll	r7 r7 2
	swoc1	f0 r6 r7
	j	beq_cont.29530
beq_else.29529:
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r7 0
	mov.s f1 f19
	sw r31 r30 20
	jal min_caml_sqrtlib
	lw r30 r31 20
	mov.s f19 f1
	sub.s	f0 f1 f0
	addi	r0 r9 4
	sll	r9 r9 2
	lwoc1	r8 r9 f1
	mul.s	f0 f1 f0
	sll	r7 r7 2
	swoc1	f0 r6 r7
beq_cont.29530:
	addi	r0 r1 1
	j	beq_cont.29528
beq_else.29527:
	addi	r0 r1 0
beq_cont.29528:
beq_cont.29524:
	j	beq_cont.29520
beq_else.29519:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r8 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29531
	addi	r0 r6 1
	j	bfle_nontail_cont.29532
bfle_nontail_else.29531:
	addi	r0 r6 0
bfle_nontail_cont.29532:
	addi	r0 r9 0
	sub	r6 r9 r25
	beq	r25 r0 beq_else.29533
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
	sll	r10 r10 2
	lwoc1	r8 r10 f0
	addi	r0 r8 3
	sll	r8 r8 2
	lwoc1	r7 r8 f1
	mul.s	f0 f1 f0
	sll	r9 r7 2
	swoc1	f0 r6 r7
	addi	r0 r1 1
	j	beq_cont.29534
beq_else.29533:
	addi	r0 r1 0
beq_cont.29534:
beq_cont.29520:
	j	beq_cont.29518
beq_else.29517:
	lw	r3 r7 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r3 r8
	mov	r2 r7
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.29518:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29535
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
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
	blez	r25 bfle_nontail_else.29536
	addi	r0 r2 1
	j	bfle_nontail_cont.29537
bfle_nontail_else.29536:
	addi	r0 r2 0
bfle_nontail_cont.29537:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29538
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	sub.s	f1 f0 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29540
	addi	r0 r2 1
	j	bfle_nontail_cont.29541
bfle_nontail_else.29540:
	addi	r0 r2 0
bfle_nontail_cont.29541:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.29542
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f1
	add.s	f0 f1 f0
	addi	r0 r2 0
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	add.s	f1 f2 f1
	addi	r0 r2 1
	sll	r2 r2 2
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
	sll	r4 r4 2
	lwoc1	r2 r4 f3
	add.s	f2 f3 f2
	addi	r0 r2 2
	sll	r2 r2 2
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
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	add.s	f3 f4 f3
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 8
	lwo	r3 r2 r2
	addi	r0 r4 -1
	sw	r1 r30 20
	swc1	f3 r30 24
	swc1	f2 r30 28
	swc1	f1 r30 32
	swc1	f0 r30 36
	sub	r2 r4 r25
	beq	r25 r0 beq_else.29544
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r2 r2 2
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
	beq	r25 r0 beq_else.29546
	addi	r0 r1 0
	j	beq_cont.29547
beq_else.29546:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 8
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29548
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
	lwo	r3 r1 r1
	lw	r1 r3 20
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	lwc1	 r30 f1 32
	sub.s	f1 f0 f0
	lw	r1 r3 20
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	lwc1	 r30 f3 28
	sub.s	f3 f2 f2
	lw	r1 r3 20
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	lwc1	 r30 f5 24
	sub.s	f5 f4 f4
	lw	r1 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29550
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29552
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
	beq	r25 r0 beq_else.29554
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
	j	beq_cont.29555
beq_else.29554:
	mov.s	f6 f0
beq_cont.29555:
	lw	r1 r3 4
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29556
	j	beq_cont.29557
beq_else.29556:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f0
beq_cont.29557:
	lw	r1 r1 24
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29558
	addi	r0 r3 1
	j	bfle_nontail_cont.29559
bfle_nontail_else.29558:
	addi	r0 r3 0
bfle_nontail_cont.29559:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29560
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29562
	addi	r0 r1 0
	j	beq_cont.29563
beq_else.29562:
	addi	r0 r1 1
beq_cont.29563:
	j	beq_cont.29561
beq_else.29560:
	mov	r1 r3
beq_cont.29561:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29564
	addi	r0 r1 0
	j	beq_cont.29565
beq_else.29564:
	addi	r0 r1 1
beq_cont.29565:
	j	beq_cont.29553
beq_else.29552:
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
	blez	r25 bfle_nontail_else.29566
	addi	r0 r3 1
	j	bfle_nontail_cont.29567
bfle_nontail_else.29566:
	addi	r0 r3 0
bfle_nontail_cont.29567:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.29568
	addi	r0 r1 0
	sub	r3 r1 r25
	beq	r25 r0 beq_else.29570
	addi	r0 r1 0
	j	beq_cont.29571
beq_else.29570:
	addi	r0 r1 1
beq_cont.29571:
	j	beq_cont.29569
beq_else.29568:
	mov	r1 r3
beq_cont.29569:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29572
	addi	r0 r1 0
	j	beq_cont.29573
beq_else.29572:
	addi	r0 r1 1
beq_cont.29573:
beq_cont.29553:
	j	beq_cont.29551
beq_else.29550:
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
	blez	r25 bfle_nontail_else.29574
	addi	r0 r3 1
	j	bfle_nontail_cont.29575
bfle_nontail_else.29574:
	addi	r0 r3 0
bfle_nontail_cont.29575:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29576
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
	blez	r25 bfle_nontail_else.29578
	addi	r0 r3 1
	j	bfle_nontail_cont.29579
bfle_nontail_else.29578:
	addi	r0 r3 0
bfle_nontail_cont.29579:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29580
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
	blez	r25 bfle_nontail_else.29582
	addi	r0 r3 1
	j	bfle_nontail_cont.29583
bfle_nontail_else.29582:
	addi	r0 r3 0
bfle_nontail_cont.29583:
	j	beq_cont.29581
beq_else.29580:
	addi	r0 r3 0
beq_cont.29581:
	j	beq_cont.29577
beq_else.29576:
	addi	r0 r3 0
beq_cont.29577:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29584
	lw	r1 r1 24
	j	beq_cont.29585
beq_else.29584:
	lw	r1 r1 24
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29586
	addi	r0 r1 0
	j	beq_cont.29587
beq_else.29586:
	addi	r0 r1 1
beq_cont.29587:
beq_cont.29585:
beq_cont.29551:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29588
	addi	r0 r1 0
	j	beq_cont.29589
beq_else.29588:
	addi	r0 r1 2
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29590
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sll	r1 r1 2
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
	beq	r25 r0 beq_else.29592
	addi	r0 r1 0
	j	beq_cont.29593
beq_else.29592:
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
beq_cont.29593:
	j	beq_cont.29591
beq_else.29590:
	addi	r0 r1 1
beq_cont.29591:
beq_cont.29589:
	j	beq_cont.29549
beq_else.29548:
	addi	r0 r1 1
beq_cont.29549:
beq_cont.29547:
	j	beq_cont.29545
beq_else.29544:
	addi	r0 r1 1
beq_cont.29545:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29594
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 36
	swoc1	f0 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 32
	swoc1	f0 r1 r2
	addi	r0 r2 1
	sll	r2 r2 2
	lwc1	 r30 f0 28
	swoc1	f0 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
	lwc1	 r30 f0 24
	swoc1	f0 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 20
	swo	r3 r1 r2
	j	beq_cont.29595
beq_else.29594:
beq_cont.29595:
	j	beq_cont.29543
beq_else.29542:
beq_cont.29543:
	j	beq_cont.29539
beq_else.29538:
beq_cont.29539:
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	lw	r30 r2 8
	lw	r30 r3 4
	j	solve_each_element_fast.3045
beq_tail_else.29535:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	lw	r30 r31 4
	addi	r30 r30 -40
	lw	r30 r2 16
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r1 r1 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29596
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	lw	r30 r2 8
	lw	r30 r3 4
	j	solve_each_element_fast.3045
beq_tail_else.29596:
	jr	r31
beq_tail_else.29516:
	jr	r31
solve_one_or_network_fast.3049:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.29599
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
	beq	r25 r0 beq_tail_else.29600
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
	beq	r25 r0 beq_tail_else.29601
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
	beq	r25 r0 beq_tail_else.29602
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
	beq	r25 r0 beq_tail_else.29603
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
	beq	r25 r0 beq_tail_else.29604
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
	beq	r25 r0 beq_tail_else.29605
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
	beq	r25 r0 beq_tail_else.29606
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
beq_tail_else.29606:
	jr	r31
beq_tail_else.29605:
	jr	r31
beq_tail_else.29604:
	jr	r31
beq_tail_else.29603:
	jr	r31
beq_tail_else.29602:
	jr	r31
beq_tail_else.29601:
	jr	r31
beq_tail_else.29600:
	jr	r31
beq_tail_else.29599:
	jr	r31
trace_or_matrix_fast.3053:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.29615
	addi	r0 r6 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29616
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
	beq	r25 r0 beq_else.29618
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.29620
	addi	r0 r8 0
	sll	r8 r8 2
	lwoc1	r5 r8 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.29622
	addi	r0 r8 0
	j	bfeq_nontail_cont.29623
bfeq_nontail_else.29622:
	addi	r0 r8 1
bfeq_nontail_cont.29623:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_else.29624
	addi	r0 r1 0
	j	beq_cont.29625
beq_else.29624:
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
	blez	r25 bfle_nontail_else.29626
	addi	r0 r7 1
	j	bfle_nontail_cont.29627
bfle_nontail_else.29626:
	addi	r0 r7 0
bfle_nontail_cont.29627:
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.29628
	lw	r6 r6 24
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29630
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r7 0
	mov.s f1 f19
	sw r31 r30 16
	jal min_caml_sqrtlib
	lw r30 r31 16
	mov.s f19 f1
	add.s	f0 f1 f0
	addi	r0 r8 4
	sll	r8 r8 2
	lwoc1	r5 r8 f1
	mul.s	f0 f1 f0
	sll	r7 r5 2
	swoc1	f0 r6 r5
	j	beq_cont.29631
beq_else.29630:
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r7 0
	mov.s f1 f19
	sw r31 r30 16
	jal min_caml_sqrtlib
	lw r30 r31 16
	mov.s f19 f1
	sub.s	f0 f1 f0
	addi	r0 r8 4
	sll	r8 r8 2
	lwoc1	r5 r8 f1
	mul.s	f0 f1 f0
	sll	r7 r5 2
	swoc1	f0 r6 r5
beq_cont.29631:
	addi	r0 r1 1
	j	beq_cont.29629
beq_else.29628:
	addi	r0 r1 0
beq_cont.29629:
beq_cont.29625:
	j	beq_cont.29621
beq_else.29620:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r6 0
	sll	r6 r6 2
	lwoc1	r5 r6 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29632
	addi	r0 r6 1
	j	bfle_nontail_cont.29633
bfle_nontail_else.29632:
	addi	r0 r6 0
bfle_nontail_cont.29633:
	addi	r0 r8 0
	sub	r6 r8 r25
	beq	r25 r0 beq_else.29634
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
	sll	r9 r9 2
	lwoc1	r5 r9 f0
	addi	r0 r5 3
	sll	r5 r5 2
	lwoc1	r7 r5 f1
	mul.s	f0 f1 f0
	sll	r8 r5 2
	swoc1	f0 r6 r5
	addi	r0 r1 1
	j	beq_cont.29635
beq_else.29634:
	addi	r0 r1 0
beq_cont.29635:
beq_cont.29621:
	j	beq_cont.29619
beq_else.29618:
	lw	r3 r7 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r3 r5
	mov	r2 r7
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.29619:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29636
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.29638
	addi	r0 r1 1
	j	bfle_nontail_cont.29639
bfle_nontail_else.29638:
	addi	r0 r1 0
bfle_nontail_cont.29639:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29640
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29642
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29644
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29646
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29648
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29650
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29652
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 7
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29654
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
	j	beq_cont.29655
beq_else.29654:
beq_cont.29655:
	j	beq_cont.29653
beq_else.29652:
beq_cont.29653:
	j	beq_cont.29651
beq_else.29650:
beq_cont.29651:
	j	beq_cont.29649
beq_else.29648:
beq_cont.29649:
	j	beq_cont.29647
beq_else.29646:
beq_cont.29647:
	j	beq_cont.29645
beq_else.29644:
beq_cont.29645:
	j	beq_cont.29643
beq_else.29642:
beq_cont.29643:
	j	beq_cont.29641
beq_else.29640:
beq_cont.29641:
	j	beq_cont.29637
beq_else.29636:
beq_cont.29637:
	j	beq_cont.29617
beq_else.29616:
	addi	r0 r5 1
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29656
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29658
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29660
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29662
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29664
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29666
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 7
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29668
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
	j	beq_cont.29669
beq_else.29668:
beq_cont.29669:
	j	beq_cont.29667
beq_else.29666:
beq_cont.29667:
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
beq_cont.29617:
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
	beq	r25 r0 beq_tail_else.29670
	addi	r0 r5 99
	sw	r1 r30 16
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29671
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
	beq	r25 r0 beq_else.29673
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.29675
	addi	r0 r1 1
	j	bfle_nontail_cont.29676
bfle_nontail_else.29675:
	addi	r0 r1 0
bfle_nontail_cont.29676:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29677
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29679
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29681
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29683
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29685
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29687
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29689
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
	j	beq_cont.29690
beq_else.29689:
beq_cont.29690:
	j	beq_cont.29688
beq_else.29687:
beq_cont.29688:
	j	beq_cont.29686
beq_else.29685:
beq_cont.29686:
	j	beq_cont.29684
beq_else.29683:
beq_cont.29684:
	j	beq_cont.29682
beq_else.29681:
beq_cont.29682:
	j	beq_cont.29680
beq_else.29679:
beq_cont.29680:
	j	beq_cont.29678
beq_else.29677:
beq_cont.29678:
	j	beq_cont.29674
beq_else.29673:
beq_cont.29674:
	j	beq_cont.29672
beq_else.29671:
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29691
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29693
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29695
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29697
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29699
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
	jal	solve_each_element_fast.3045
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 20
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29701
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
	j	beq_cont.29702
beq_else.29701:
beq_cont.29702:
	j	beq_cont.29700
beq_else.29699:
beq_cont.29700:
	j	beq_cont.29698
beq_else.29697:
beq_cont.29698:
	j	beq_cont.29696
beq_else.29695:
beq_cont.29696:
	j	beq_cont.29694
beq_else.29693:
beq_cont.29694:
	j	beq_cont.29692
beq_else.29691:
beq_cont.29692:
beq_cont.29672:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_or_matrix_fast.3053
beq_tail_else.29670:
	jr	r31
beq_tail_else.29615:
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
	beq	r25 r0 beq_else.29705
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
	j	beq_cont.29706
beq_else.29705:
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
beq_cont.29706:
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
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.29707
	addi	r0 r3 0
	j	bfeq_nontail_cont.29708
bfeq_nontail_else.29707:
	addi	r0 r3 1
bfeq_nontail_cont.29708:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29709
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29710
beq_else.29709:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29711
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
	j	beq_cont.29712
beq_else.29711:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f0
beq_cont.29712:
beq_cont.29710:
	addi	r0 r1 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r2 r1
	addi	r0 r1 1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r2 r1
	addi	r0 r1 2
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f1 f0 f0
	sll	r1 r1 2
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
	beq	r25 r0 beq_tail_else.29714
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29715
	addi	r0 r4 3
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29716
	addi	r0 r4 4
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.29717
	jr	r31
beq_tail_else.29717:
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
	mov.s f1 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f1
	mul.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	lw	r1 r3 20
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	sub.s	f1 f2 f1
	lw	r1 r3 16
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f2
	mov.s f2 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f2
	mul.s	f1 f2 f1
	mul.s	f0 f0 f2
	mul.s	f1 f1 f3
	add.s	f2 f3 f2
	lui	r24 14545
	ori	r24 r24 46871
	mtc1	r24 f3
	abs.s	f0 f4
	sub.s	f3 f4 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29719
	addi	r0 r3 1
	j	bfle_nontail_cont.29720
bfle_nontail_else.29719:
	addi	r0 r3 0
bfle_nontail_cont.29720:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.29721
	lui	r24 16752
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29722
beq_else.29721:
	div.s	f1 f0 f0
	abs.s	f0 f0
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_atanlib
	lw r30 r31 0
	mov.s f19 f0
	lui	r24 16880
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	div.s	f0 f1 f0
beq_cont.29722:
	cvt.w.s f0 f1
	cvt.s.w f1 f1
	sub.s	f0 f1 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	lw	r1 r2 20
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	sub.s	f1 f3 f1
	lw	r1 r1 16
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mov.s f3 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f3
	mul.s	f1 f3 f1
	lui	r24 14545
	ori	r24 r24 46871
	mtc1	r24 f3
	abs.s	f2 f4
	sub.s	f3 f4 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29723
	addi	r0 r1 1
	j	bfle_nontail_cont.29724
bfle_nontail_else.29723:
	addi	r0 r1 0
bfle_nontail_cont.29724:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29725
	lui	r24 16752
	ori	r24 r24 0
	mtc1	r24 f1
	j	beq_cont.29726
beq_else.29725:
	div.s	f1 f2 f1
	abs.s	f1 f1
	mov.s f1 f19
	sw r31 r30 0
	jal min_caml_atanlib
	lw r30 r31 0
	mov.s f19 f1
	lui	r24 16880
	ori	r24 r24 0
	mtc1	r24 f2
	mul.s	f1 f2 f1
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f2
	div.s	f1 f2 f1
beq_cont.29726:
	cvt.w.s f1 f2
	cvt.s.w f2 f2
	sub.s	f1 f2 f1
	lui	r24 15897
	ori	r24 r24 39322
	mtc1	r24 f2
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f3 f0 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f4 f0 f0
	mul.s	f3 f0 f0
	sub.s	f2 f0 f0
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f1 f2
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f3 f1 f1
	mul.s	f2 f1 f1
	sub.s	f0 f1 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29727
	addi	r0 r1 1
	j	bfle_nontail_cont.29728
bfle_nontail_else.29727:
	addi	r0 r1 0
bfle_nontail_cont.29728:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29729
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29730
beq_else.29729:
beq_cont.29730:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	lw	r30 r31 4
	addi	r30 r30 0
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
beq_tail_else.29716:
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
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f0
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	cvt.w.s f0 f1
	cvt.s.w f1 f1
	sub.s	f0 f1 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	mul.s	f0 f1 f0
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_coslib
	lw r30 r31 0
	mov.s f19 f1
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_coslib
	lw r30 r31 0
	mov.s f19 f0
	mul.s	f1 f0 f0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	lw	r30 r31 4
	addi	r30 r30 0
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
beq_tail_else.29715:
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f0
	lui	r24 16000
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_sinlib
	lw r30 r31 0
	mov.s f19 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f1
	lui	r24 16000
	ori	r24 r24 0
	mtc1	r24 f2
	mul.s	f1 f2 f1
	mov.s f1 f19
	sw r31 r30 0
	jal min_caml_sinlib
	lw r30 r31 0
	mov.s f19 f1
	mul.s	f0 f1 f0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	lw	r30 r31 4
	addi	r30 r30 0
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
beq_tail_else.29714:
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
	cvt.w.s f1 f1
	cvt.s.w f1 f1
	lui	r24 16800
	ori	r24 r24 0
	mtc1	r24 f2
	mul.s	f1 f2 f1
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f1 f0
	sub.s	f2 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29734
	addi	r0 r3 1
	j	bfle_nontail_cont.29735
bfle_nontail_else.29734:
	addi	r0 r3 0
bfle_nontail_cont.29735:
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	lw	r1 r1 20
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f0
	lui	r24 15692
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f1
	cvt.w.s f1 f1
	cvt.s.w f1 f1
	lui	r24 16800
	ori	r24 r24 0
	mtc1	r24 f2
	mul.s	f1 f2 f1
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f1 f0
	sub.s	f2 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29736
	addi	r0 r1 1
	j	bfle_nontail_cont.29737
bfle_nontail_else.29736:
	addi	r0 r1 0
bfle_nontail_cont.29737:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 1
	addi	r0 r5 0
	sub	r3 r5 r25
	beq	r25 r0 beq_else.29738
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29740
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29741
beq_else.29740:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.29741:
	j	beq_cont.29739
beq_else.29738:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29742
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.29743
beq_else.29742:
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.29743:
beq_cont.29739:
	sll	r4 r1 2
	swoc1	f0 r2 r1
	jr	r31
add_light.3071:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f0 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29745
	addi	r0 r1 1
	j	bfle_nontail_cont.29746
bfle_nontail_else.29745:
	addi	r0 r1 0
bfle_nontail_cont.29746:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29747
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
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
	j	beq_cont.29748
beq_else.29747:
beq_cont.29748:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29749
	addi	r0 r1 1
	j	bfle_nontail_cont.29750
bfle_nontail_else.29749:
	addi	r0 r1 0
bfle_nontail_cont.29750:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29751
	mul.s	f1 f1 f0
	mul.s	f1 f1 f1
	mul.s	f0 f1 f0
	mul.s	f0 f2 f0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
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
beq_tail_else.29751:
	jr	r31
trace_reflections.3075:
	addi	r0 r3 0
	sub	r3 r1 r25
	blez	r25 ble_tail_else.29754
	jr	r31
ble_tail_else.29754:
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
	blez	r25 bfle_nontail_else.29756
	addi	r0 r1 1
	j	bfle_nontail_cont.29757
bfle_nontail_else.29756:
	addi	r0 r1 0
bfle_nontail_cont.29757:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29758
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29760
	addi	r0 r1 1
	j	bfle_nontail_cont.29761
bfle_nontail_else.29760:
	addi	r0 r1 0
bfle_nontail_cont.29761:
	j	beq_cont.29759
beq_else.29758:
	addi	r0 r1 0
beq_cont.29759:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29762
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
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
	beq	r25 r0 beq_else.29764
	j	beq_cont.29765
beq_else.29764:
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
	beq	r25 r0 beq_else.29766
	addi	r0 r5 99
	sw	r1 r30 24
	sw	r3 r30 28
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29768
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
	beq	r25 r0 beq_else.29770
	addi	r0 r5 2
	sub	r6 r5 r25
	beq	r25 r0 beq_else.29772
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r4
	mov	r1 r7
	jal	solver_second_fast.2950
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.29773
beq_else.29772:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29774
	addi	r0 r5 1
	j	bfle_nontail_cont.29775
bfle_nontail_else.29774:
	addi	r0 r5 0
bfle_nontail_cont.29775:
	addi	r0 r6 0
	sub	r5 r6 r25
	beq	r25 r0 beq_else.29776
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
	j	beq_cont.29777
beq_else.29776:
	addi	r0 r1 0
beq_cont.29777:
beq_cont.29773:
	j	beq_cont.29771
beq_else.29770:
	lw	r5 r5 0
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r3 r4
	mov	r2 r5
	mov	r1 r7
	jal	solver_rect_fast.2937
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29771:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29778
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
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
	blez	r25 bfle_nontail_else.29780
	addi	r0 r1 1
	j	bfle_nontail_cont.29781
bfle_nontail_else.29780:
	addi	r0 r1 0
bfle_nontail_cont.29781:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29782
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29784
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
	beq	r25 r0 beq_else.29786
	addi	r0 r1 1
	j	beq_cont.29787
beq_else.29786:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29788
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
	beq	r25 r0 beq_else.29790
	addi	r0 r1 1
	j	beq_cont.29791
beq_else.29790:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29792
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
	beq	r25 r0 beq_else.29794
	addi	r0 r1 1
	j	beq_cont.29795
beq_else.29794:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29796
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
	beq	r25 r0 beq_else.29798
	addi	r0 r1 1
	j	beq_cont.29799
beq_else.29798:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29800
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
	beq	r25 r0 beq_else.29802
	addi	r0 r1 1
	j	beq_cont.29803
beq_else.29802:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29804
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
	beq	r25 r0 beq_else.29806
	addi	r0 r1 1
	j	beq_cont.29807
beq_else.29806:
	addi	r0 r1 7
	lw	r30 r2 24
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29807:
	j	beq_cont.29805
beq_else.29804:
	addi	r0 r1 0
beq_cont.29805:
beq_cont.29803:
	j	beq_cont.29801
beq_else.29800:
	addi	r0 r1 0
beq_cont.29801:
beq_cont.29799:
	j	beq_cont.29797
beq_else.29796:
	addi	r0 r1 0
beq_cont.29797:
beq_cont.29795:
	j	beq_cont.29793
beq_else.29792:
	addi	r0 r1 0
beq_cont.29793:
beq_cont.29791:
	j	beq_cont.29789
beq_else.29788:
	addi	r0 r1 0
beq_cont.29789:
beq_cont.29787:
	j	beq_cont.29785
beq_else.29784:
	addi	r0 r1 0
beq_cont.29785:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29808
	addi	r0 r1 1
	j	beq_cont.29809
beq_else.29808:
	addi	r0 r1 0
beq_cont.29809:
	j	beq_cont.29783
beq_else.29782:
	addi	r0 r1 0
beq_cont.29783:
	j	beq_cont.29779
beq_else.29778:
	addi	r0 r1 0
beq_cont.29779:
	j	beq_cont.29769
beq_else.29768:
	addi	r0 r1 1
beq_cont.29769:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29810
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29812
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
	beq	r25 r0 beq_else.29814
	addi	r0 r1 1
	j	beq_cont.29815
beq_else.29814:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29816
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
	beq	r25 r0 beq_else.29818
	addi	r0 r1 1
	j	beq_cont.29819
beq_else.29818:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29820
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
	beq	r25 r0 beq_else.29822
	addi	r0 r1 1
	j	beq_cont.29823
beq_else.29822:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29824
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
	beq	r25 r0 beq_else.29826
	addi	r0 r1 1
	j	beq_cont.29827
beq_else.29826:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29828
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
	beq	r25 r0 beq_else.29830
	addi	r0 r1 1
	j	beq_cont.29831
beq_else.29830:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 24
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29832
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
	beq	r25 r0 beq_else.29834
	addi	r0 r1 1
	j	beq_cont.29835
beq_else.29834:
	addi	r0 r1 7
	lw	r30 r2 24
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29835:
	j	beq_cont.29833
beq_else.29832:
	addi	r0 r1 0
beq_cont.29833:
beq_cont.29831:
	j	beq_cont.29829
beq_else.29828:
	addi	r0 r1 0
beq_cont.29829:
beq_cont.29827:
	j	beq_cont.29825
beq_else.29824:
	addi	r0 r1 0
beq_cont.29825:
beq_cont.29823:
	j	beq_cont.29821
beq_else.29820:
	addi	r0 r1 0
beq_cont.29821:
beq_cont.29819:
	j	beq_cont.29817
beq_else.29816:
	addi	r0 r1 0
beq_cont.29817:
beq_cont.29815:
	j	beq_cont.29813
beq_else.29812:
	addi	r0 r1 0
beq_cont.29813:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29836
	addi	r0 r1 1
	j	beq_cont.29837
beq_else.29836:
	addi	r0 r1 1
	lw	r30 r2 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29837:
	j	beq_cont.29811
beq_else.29810:
	addi	r0 r1 1
	lw	r30 r2 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -36
	lw	r30 r31 32
beq_cont.29811:
	j	beq_cont.29767
beq_else.29766:
	addi	r0 r1 0
beq_cont.29767:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29838
	j	beq_cont.29839
beq_else.29838:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
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
	blez	r25 bfle_nontail_else.29840
	addi	r0 r1 1
	j	bfle_nontail_cont.29841
bfle_nontail_else.29840:
	addi	r0 r1 0
bfle_nontail_cont.29841:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29842
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
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
	j	beq_cont.29843
beq_else.29842:
beq_cont.29843:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29844
	addi	r0 r1 1
	j	bfle_nontail_cont.29845
bfle_nontail_else.29844:
	addi	r0 r1 0
bfle_nontail_cont.29845:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29846
	mul.s	f1 f1 f0
	mul.s	f1 f1 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 4
	mul.s	f0 f1 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
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
	j	beq_cont.29847
beq_else.29846:
beq_cont.29847:
beq_cont.29839:
beq_cont.29765:
	j	beq_cont.29763
beq_else.29762:
beq_cont.29763:
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.29848
	jr	r31
ble_tail_else.29848:
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
	beq	r25 r0 beq_else.29850
	addi	r0 r7 99
	sw	r5 r30 44
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29852
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
	beq	r25 r0 beq_else.29854
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.29856
	addi	r0 r1 1
	j	bfle_nontail_cont.29857
bfle_nontail_else.29856:
	addi	r0 r1 0
bfle_nontail_cont.29857:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29858
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29860
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
	beq	r25 r0 beq_else.29862
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
	beq	r25 r0 beq_else.29864
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
	beq	r25 r0 beq_else.29866
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
	j	beq_cont.29867
beq_else.29866:
beq_cont.29867:
	j	beq_cont.29865
beq_else.29864:
beq_cont.29865:
	j	beq_cont.29863
beq_else.29862:
beq_cont.29863:
	j	beq_cont.29861
beq_else.29860:
beq_cont.29861:
	j	beq_cont.29859
beq_else.29858:
beq_cont.29859:
	j	beq_cont.29855
beq_else.29854:
beq_cont.29855:
	j	beq_cont.29853
beq_else.29852:
	addi	r0 r6 1
	sll	r6 r6 2
	lwo	r4 r6 r6
	addi	r0 r7 -1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29868
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
	beq	r25 r0 beq_else.29870
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
	beq	r25 r0 beq_else.29872
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
	beq	r25 r0 beq_else.29874
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
	j	beq_cont.29875
beq_else.29874:
beq_cont.29875:
	j	beq_cont.29873
beq_else.29872:
beq_cont.29873:
	j	beq_cont.29871
beq_else.29870:
beq_cont.29871:
	j	beq_cont.29869
beq_else.29868:
beq_cont.29869:
beq_cont.29853:
	addi	r0 r1 1
	lw	r30 r2 44
	lw	r30 r3 36
	sw	r31 r30 52
	addi	r30 r30 56
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.29851
beq_else.29850:
beq_cont.29851:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.29876
	addi	r0 r1 1
	j	bfle_nontail_cont.29877
bfle_nontail_else.29876:
	addi	r0 r1 0
bfle_nontail_cont.29877:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29878
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29880
	addi	r0 r1 1
	j	bfle_nontail_cont.29881
bfle_nontail_else.29880:
	addi	r0 r1 0
bfle_nontail_cont.29881:
	j	beq_cont.29879
beq_else.29878:
	addi	r0 r1 0
beq_cont.29879:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29882
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
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
	beq	r25 r0 beq_else.29884
	j	beq_cont.29885
beq_else.29884:
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
	beq	r25 r0 beq_else.29886
	j	beq_cont.29887
beq_else.29886:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
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
beq_cont.29887:
beq_cont.29885:
	j	beq_cont.29883
beq_else.29882:
beq_cont.29883:
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
	blez	r25 ble_tail_else.29888
	jr	r31
ble_tail_else.29888:
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
	blez	r25 bfle_nontail_else.29890
	addi	r0 r1 1
	j	bfle_nontail_cont.29891
bfle_nontail_else.29890:
	addi	r0 r1 0
bfle_nontail_cont.29891:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29892
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29894
	addi	r0 r1 1
	j	bfle_nontail_cont.29895
bfle_nontail_else.29894:
	addi	r0 r1 0
bfle_nontail_cont.29895:
	j	beq_cont.29893
beq_else.29892:
	addi	r0 r1 0
beq_cont.29893:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.29896
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
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
	beq	r25 r0 beq_else.29897
	addi	r0 r5 2
	sub	r4 r5 r25
	beq	r25 r0 beq_else.29899
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r2
	jal	get_nvector_second.3063
	addi	r30 r30 -44
	lw	r30 r31 40
	j	beq_cont.29900
beq_else.29899:
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
beq_cont.29900:
	j	beq_cont.29898
beq_else.29897:
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
	beq	r25 r0 bfeq_nontail_else.29901
	addi	r0 r4 0
	j	bfeq_nontail_cont.29902
bfeq_nontail_else.29901:
	addi	r0 r4 1
bfeq_nontail_cont.29902:
	addi	r0 r8 0
	sub	r4 r8 r25
	beq	r25 r0 beq_else.29903
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	j	beq_cont.29904
beq_else.29903:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f2 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29905
	addi	r0 r4 1
	j	bfle_nontail_cont.29906
bfle_nontail_else.29905:
	addi	r0 r4 0
bfle_nontail_cont.29906:
	addi	r0 r8 0
	sub	r4 r8 r25
	beq	r25 r0 beq_else.29907
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	j	beq_cont.29908
beq_else.29907:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f2
beq_cont.29908:
beq_cont.29904:
	neg.s	f2 f2
	sll	r6 r4 2
	swoc1	f2 r5 r4
beq_cont.29898:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
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
	blez	r25 bfle_nontail_else.29909
	addi	r0 r6 1
	j	bfle_nontail_cont.29910
bfle_nontail_else.29909:
	addi	r0 r6 0
bfle_nontail_cont.29910:
	addi	r0 r7 0
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29911
	addi	r0 r6 0
	sll	r2 r7 2
	swo	r6 r3 r7
	j	beq_cont.29912
beq_else.29911:
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
beq_cont.29912:
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
	beq	r25 r0 beq_else.29913
	addi	r0 r9 99
	sw	r3 r30 44
	sw	r6 r30 48
	sub	r8 r9 r25
	beq	r25 r0 beq_else.29915
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
	beq	r25 r0 beq_else.29917
	addi	r0 r9 2
	sub	r10 r9 r25
	beq	r25 r0 beq_else.29919
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
	j	beq_cont.29920
beq_else.29919:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	addi	r0 r9 0
	sll	r9 r9 2
	lwoc1	r8 r9 f6
	sub.s	f5 f6 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29921
	addi	r0 r9 1
	j	bfle_nontail_cont.29922
bfle_nontail_else.29921:
	addi	r0 r9 0
bfle_nontail_cont.29922:
	addi	r0 r10 0
	sub	r9 r10 r25
	beq	r25 r0 beq_else.29923
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
	j	beq_cont.29924
beq_else.29923:
	addi	r0 r1 0
beq_cont.29924:
beq_cont.29920:
	j	beq_cont.29918
beq_else.29917:
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
beq_cont.29918:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29925
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
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
	blez	r25 bfle_nontail_else.29927
	addi	r0 r1 1
	j	bfle_nontail_cont.29928
bfle_nontail_else.29927:
	addi	r0 r1 0
bfle_nontail_cont.29928:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29929
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29931
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
	beq	r25 r0 beq_else.29933
	addi	r0 r1 1
	j	beq_cont.29934
beq_else.29933:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29935
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
	beq	r25 r0 beq_else.29937
	addi	r0 r1 1
	j	beq_cont.29938
beq_else.29937:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29939
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
	beq	r25 r0 beq_else.29941
	addi	r0 r1 1
	j	beq_cont.29942
beq_else.29941:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29943
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
	beq	r25 r0 beq_else.29945
	addi	r0 r1 1
	j	beq_cont.29946
beq_else.29945:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29947
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
	beq	r25 r0 beq_else.29949
	addi	r0 r1 1
	j	beq_cont.29950
beq_else.29949:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29951
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
	beq	r25 r0 beq_else.29953
	addi	r0 r1 1
	j	beq_cont.29954
beq_else.29953:
	addi	r0 r1 7
	lw	r30 r2 44
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.29954:
	j	beq_cont.29952
beq_else.29951:
	addi	r0 r1 0
beq_cont.29952:
beq_cont.29950:
	j	beq_cont.29948
beq_else.29947:
	addi	r0 r1 0
beq_cont.29948:
beq_cont.29946:
	j	beq_cont.29944
beq_else.29943:
	addi	r0 r1 0
beq_cont.29944:
beq_cont.29942:
	j	beq_cont.29940
beq_else.29939:
	addi	r0 r1 0
beq_cont.29940:
beq_cont.29938:
	j	beq_cont.29936
beq_else.29935:
	addi	r0 r1 0
beq_cont.29936:
beq_cont.29934:
	j	beq_cont.29932
beq_else.29931:
	addi	r0 r1 0
beq_cont.29932:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29955
	addi	r0 r1 1
	j	beq_cont.29956
beq_else.29955:
	addi	r0 r1 0
beq_cont.29956:
	j	beq_cont.29930
beq_else.29929:
	addi	r0 r1 0
beq_cont.29930:
	j	beq_cont.29926
beq_else.29925:
	addi	r0 r1 0
beq_cont.29926:
	j	beq_cont.29916
beq_else.29915:
	addi	r0 r1 1
beq_cont.29916:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29957
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29959
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
	beq	r25 r0 beq_else.29961
	addi	r0 r1 1
	j	beq_cont.29962
beq_else.29961:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29963
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
	beq	r25 r0 beq_else.29965
	addi	r0 r1 1
	j	beq_cont.29966
beq_else.29965:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29967
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
	beq	r25 r0 beq_else.29969
	addi	r0 r1 1
	j	beq_cont.29970
beq_else.29969:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29971
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
	beq	r25 r0 beq_else.29973
	addi	r0 r1 1
	j	beq_cont.29974
beq_else.29973:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29975
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
	beq	r25 r0 beq_else.29977
	addi	r0 r1 1
	j	beq_cont.29978
beq_else.29977:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 44
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.29979
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
	beq	r25 r0 beq_else.29981
	addi	r0 r1 1
	j	beq_cont.29982
beq_else.29981:
	addi	r0 r1 7
	lw	r30 r2 44
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.29982:
	j	beq_cont.29980
beq_else.29979:
	addi	r0 r1 0
beq_cont.29980:
beq_cont.29978:
	j	beq_cont.29976
beq_else.29975:
	addi	r0 r1 0
beq_cont.29976:
beq_cont.29974:
	j	beq_cont.29972
beq_else.29971:
	addi	r0 r1 0
beq_cont.29972:
beq_cont.29970:
	j	beq_cont.29968
beq_else.29967:
	addi	r0 r1 0
beq_cont.29968:
beq_cont.29966:
	j	beq_cont.29964
beq_else.29963:
	addi	r0 r1 0
beq_cont.29964:
beq_cont.29962:
	j	beq_cont.29960
beq_else.29959:
	addi	r0 r1 0
beq_cont.29960:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29983
	addi	r0 r1 1
	j	beq_cont.29984
beq_else.29983:
	addi	r0 r1 1
	lw	r30 r2 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.29984:
	j	beq_cont.29958
beq_else.29957:
	addi	r0 r1 1
	lw	r30 r2 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -56
	lw	r30 r31 52
beq_cont.29958:
	j	beq_cont.29914
beq_else.29913:
	addi	r0 r1 0
beq_cont.29914:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29985
	j	beq_cont.29986
beq_else.29985:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
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
	blez	r25 bfle_nontail_else.29987
	addi	r0 r1 1
	j	bfle_nontail_cont.29988
bfle_nontail_else.29987:
	addi	r0 r1 0
bfle_nontail_cont.29988:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29989
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
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
	j	beq_cont.29990
beq_else.29989:
beq_cont.29990:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.29991
	addi	r0 r1 1
	j	bfle_nontail_cont.29992
bfle_nontail_else.29991:
	addi	r0 r1 0
bfle_nontail_cont.29992:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.29993
	mul.s	f2 f2 f0
	mul.s	f2 f2 f2
	mul.s	f0 f2 f0
	lwc1	 r30 f2 40
	mul.s	f0 f2 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
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
	j	beq_cont.29994
beq_else.29993:
beq_cont.29994:
beq_cont.29986:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
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
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.29995
	j	ble_nontail_cont.29996
ble_nontail_else.29995:
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
	beq	r25 r0 beq_else.29997
	addi	r0 r7 99
	sw	r5 r30 64
	sub	r6 r7 r25
	beq	r25 r0 beq_else.29999
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
	beq	r25 r0 beq_else.30001
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.30003
	addi	r0 r1 1
	j	bfle_nontail_cont.30004
bfle_nontail_else.30003:
	addi	r0 r1 0
bfle_nontail_cont.30004:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30005
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 68
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30007
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
	beq	r25 r0 beq_else.30009
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
	beq	r25 r0 beq_else.30011
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
	beq	r25 r0 beq_else.30013
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
	j	beq_cont.30014
beq_else.30013:
beq_cont.30014:
	j	beq_cont.30012
beq_else.30011:
beq_cont.30012:
	j	beq_cont.30010
beq_else.30009:
beq_cont.30010:
	j	beq_cont.30008
beq_else.30007:
beq_cont.30008:
	j	beq_cont.30006
beq_else.30005:
beq_cont.30006:
	j	beq_cont.30002
beq_else.30001:
beq_cont.30002:
	j	beq_cont.30000
beq_else.29999:
	addi	r0 r6 1
	sll	r6 r6 2
	lwo	r4 r6 r6
	addi	r0 r7 -1
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30015
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
	beq	r25 r0 beq_else.30017
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
	beq	r25 r0 beq_else.30019
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
	beq	r25 r0 beq_else.30021
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
	j	beq_cont.30022
beq_else.30021:
beq_cont.30022:
	j	beq_cont.30020
beq_else.30019:
beq_cont.30020:
	j	beq_cont.30018
beq_else.30017:
beq_cont.30018:
	j	beq_cont.30016
beq_else.30015:
beq_cont.30016:
beq_cont.30000:
	addi	r0 r1 1
	lw	r30 r2 64
	lw	r30 r3 56
	sw	r31 r30 72
	addi	r30 r30 76
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -76
	lw	r30 r31 72
	j	beq_cont.29998
beq_else.29997:
beq_cont.29998:
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.30023
	addi	r0 r1 1
	j	bfle_nontail_cont.30024
bfle_nontail_else.30023:
	addi	r0 r1 0
bfle_nontail_cont.30024:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30025
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30027
	addi	r0 r1 1
	j	bfle_nontail_cont.30028
bfle_nontail_else.30027:
	addi	r0 r1 0
bfle_nontail_cont.30028:
	j	beq_cont.30026
beq_else.30025:
	addi	r0 r1 0
beq_cont.30026:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30029
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
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
	beq	r25 r0 beq_else.30031
	j	beq_cont.30032
beq_else.30031:
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
	beq	r25 r0 beq_else.30033
	j	beq_cont.30034
beq_else.30033:
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
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
beq_cont.30034:
beq_cont.30032:
	j	beq_cont.30030
beq_else.30029:
beq_cont.30030:
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
ble_nontail_cont.29996:
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
	blez	r25 bfle_nontail_else.30035
	addi	r0 r1 1
	j	bfle_nontail_cont.30036
bfle_nontail_else.30035:
	addi	r0 r1 0
bfle_nontail_cont.30036:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30037
	addi	r0 r1 4
	lw	r30 r2 20
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30038
	addi	r0 r1 1
	add	r2 r1 r1
	addi	r0 r3 -1
	sll	r1 r1 2
	lw	r30 r4 16
	swo	r3 r4 r1
	j	ble_nontail_cont.30039
ble_nontail_else.30038:
ble_nontail_cont.30039:
	addi	r0 r1 2
	lw	r30 r3 24
	sub	r3 r1 r25
	beq	r25 r0 beq_tail_else.30040
	jr	r31
beq_tail_else.30040:
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
beq_tail_else.30037:
	jr	r31
beq_tail_else.29896:
	addi	r0 r1 -1
	lw	r30 r2 20
	sll	r2 r3 2
	lw	r30 r4 16
	swo	r1 r4 r3
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.30043
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
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
	blez	r25 bfle_nontail_else.30044
	addi	r0 r1 1
	j	bfle_nontail_cont.30045
bfle_nontail_else.30044:
	addi	r0 r1 0
bfle_nontail_cont.30045:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30046
	mul.s	f0 f0 f1
	mul.s	f1 f0 f0
	lwc1	 r30 f1 8
	mul.s	f0 f1 f0
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_beam
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
beq_tail_else.30046:
	jr	r31
beq_tail_else.30043:
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
	blez	r25 bfle_nontail_else.30050
	addi	r0 r1 1
	j	bfle_nontail_cont.30051
bfle_nontail_else.30050:
	addi	r0 r1 0
bfle_nontail_cont.30051:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30052
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30054
	addi	r0 r1 1
	j	bfle_nontail_cont.30055
bfle_nontail_else.30054:
	addi	r0 r1 0
bfle_nontail_cont.30055:
	j	beq_cont.30053
beq_else.30052:
	addi	r0 r1 0
beq_cont.30053:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30056
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
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
	beq	r25 r0 beq_else.30057
	addi	r0 r2 2
	sub	r3 r2 r25
	beq	r25 r0 beq_else.30059
	sw	r31 r30 12
	addi	r30 r30 16
	jal	get_nvector_second.3063
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.30060
beq_else.30059:
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
beq_cont.30060:
	j	beq_cont.30058
beq_else.30057:
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
	beq	r25 r0 bfeq_nontail_else.30061
	addi	r0 r2 0
	j	bfeq_nontail_cont.30062
bfeq_nontail_else.30061:
	addi	r0 r2 1
bfeq_nontail_cont.30062:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30063
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30064
beq_else.30063:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30065
	addi	r0 r2 1
	j	bfle_nontail_cont.30066
bfle_nontail_else.30065:
	addi	r0 r2 0
bfle_nontail_cont.30066:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30067
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30068
beq_else.30067:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30068:
beq_cont.30064:
	neg.s	f0 f0
	sll	r5 r2 2
	swoc1	f0 r4 r2
beq_cont.30058:
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
	beq	r25 r0 beq_else.30069
	addi	r0 r4 99
	sw	r1 r30 12
	sw	r2 r30 16
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30071
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
	beq	r25 r0 beq_else.30073
	addi	r0 r4 2
	sub	r5 r4 r25
	beq	r25 r0 beq_else.30075
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	mov	r1 r6
	jal	solver_second_fast.2950
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.30076
beq_else.30075:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30077
	addi	r0 r4 1
	j	bfle_nontail_cont.30078
bfle_nontail_else.30077:
	addi	r0 r4 0
bfle_nontail_cont.30078:
	addi	r0 r5 0
	sub	r4 r5 r25
	beq	r25 r0 beq_else.30079
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
	j	beq_cont.30080
beq_else.30079:
	addi	r0 r1 0
beq_cont.30080:
beq_cont.30076:
	j	beq_cont.30074
beq_else.30073:
	lw	r4 r4 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r4
	mov	r1 r6
	jal	solver_rect_fast.2937
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30074:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30081
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
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
	blez	r25 bfle_nontail_else.30083
	addi	r0 r1 1
	j	bfle_nontail_cont.30084
bfle_nontail_else.30083:
	addi	r0 r1 0
bfle_nontail_cont.30084:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30085
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30087
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
	beq	r25 r0 beq_else.30089
	addi	r0 r1 1
	j	beq_cont.30090
beq_else.30089:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30091
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
	beq	r25 r0 beq_else.30093
	addi	r0 r1 1
	j	beq_cont.30094
beq_else.30093:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30095
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
	beq	r25 r0 beq_else.30097
	addi	r0 r1 1
	j	beq_cont.30098
beq_else.30097:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30099
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
	beq	r25 r0 beq_else.30101
	addi	r0 r1 1
	j	beq_cont.30102
beq_else.30101:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30103
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
	beq	r25 r0 beq_else.30105
	addi	r0 r1 1
	j	beq_cont.30106
beq_else.30105:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30107
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
	beq	r25 r0 beq_else.30109
	addi	r0 r1 1
	j	beq_cont.30110
beq_else.30109:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
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
beq_cont.30094:
	j	beq_cont.30092
beq_else.30091:
	addi	r0 r1 0
beq_cont.30092:
beq_cont.30090:
	j	beq_cont.30088
beq_else.30087:
	addi	r0 r1 0
beq_cont.30088:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30111
	addi	r0 r1 1
	j	beq_cont.30112
beq_else.30111:
	addi	r0 r1 0
beq_cont.30112:
	j	beq_cont.30086
beq_else.30085:
	addi	r0 r1 0
beq_cont.30086:
	j	beq_cont.30082
beq_else.30081:
	addi	r0 r1 0
beq_cont.30082:
	j	beq_cont.30072
beq_else.30071:
	addi	r0 r1 1
beq_cont.30072:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30113
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30115
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
	beq	r25 r0 beq_else.30117
	addi	r0 r1 1
	j	beq_cont.30118
beq_else.30117:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30119
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
	beq	r25 r0 beq_else.30121
	addi	r0 r1 1
	j	beq_cont.30122
beq_else.30121:
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30123
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
	beq	r25 r0 beq_else.30125
	addi	r0 r1 1
	j	beq_cont.30126
beq_else.30125:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30127
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
	beq	r25 r0 beq_else.30129
	addi	r0 r1 1
	j	beq_cont.30130
beq_else.30129:
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30131
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
	beq	r25 r0 beq_else.30133
	addi	r0 r1 1
	j	beq_cont.30134
beq_else.30133:
	addi	r0 r1 6
	sll	r1 r1 2
	lw	r30 r2 12
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30135
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
	beq	r25 r0 beq_else.30137
	addi	r0 r1 1
	j	beq_cont.30138
beq_else.30137:
	addi	r0 r1 7
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_group.3025
	addi	r30 r30 -24
	lw	r30 r31 20
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
beq_cont.30122:
	j	beq_cont.30120
beq_else.30119:
	addi	r0 r1 0
beq_cont.30120:
beq_cont.30118:
	j	beq_cont.30116
beq_else.30115:
	addi	r0 r1 0
beq_cont.30116:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30139
	addi	r0 r1 1
	j	beq_cont.30140
beq_else.30139:
	addi	r0 r1 1
	lw	r30 r2 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30140:
	j	beq_cont.30114
beq_else.30113:
	addi	r0 r1 1
	lw	r30 r2 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	shadow_check_one_or_matrix.3028
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.30114:
	j	beq_cont.30070
beq_else.30069:
	addi	r0 r1 0
beq_cont.30070:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.30141
	jr	r31
beq_tail_else.30141:
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
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
	blez	r25 bfle_nontail_else.30143
	addi	r0 r1 1
	j	bfle_nontail_cont.30144
bfle_nontail_else.30143:
	addi	r0 r1 0
bfle_nontail_cont.30144:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30145
	j	beq_cont.30146
beq_else.30145:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30146:
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
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
beq_tail_else.30056:
	jr	r31
iter_trace_diffuse_rays.3089:
	addi	r0 r5 0
	sub	r5 r4 r25
	blez	r25 ble_tail_else.30149
	jr	r31
ble_tail_else.30149:
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
	blez	r25 bfle_nontail_else.30151
	addi	r0 r5 1
	j	bfle_nontail_cont.30152
bfle_nontail_else.30151:
	addi	r0 r5 0
bfle_nontail_cont.30152:
	addi	r0 r6 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r4 r30 12
	sub	r5 r6 r25
	beq	r25 r0 beq_else.30153
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
	beq	r25 r0 beq_else.30155
	addi	r0 r9 99
	sw	r7 r30 24
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30157
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
	beq	r25 r0 beq_else.30159
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.30161
	addi	r0 r1 1
	j	bfle_nontail_cont.30162
bfle_nontail_else.30161:
	addi	r0 r1 0
bfle_nontail_cont.30162:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30163
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 28
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30165
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
	beq	r25 r0 beq_else.30167
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
	beq	r25 r0 beq_else.30169
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
	beq	r25 r0 beq_else.30171
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
	j	beq_cont.30172
beq_else.30171:
beq_cont.30172:
	j	beq_cont.30170
beq_else.30169:
beq_cont.30170:
	j	beq_cont.30168
beq_else.30167:
beq_cont.30168:
	j	beq_cont.30166
beq_else.30165:
beq_cont.30166:
	j	beq_cont.30164
beq_else.30163:
beq_cont.30164:
	j	beq_cont.30160
beq_else.30159:
beq_cont.30160:
	j	beq_cont.30158
beq_else.30157:
	addi	r0 r8 1
	sll	r8 r8 2
	lwo	r6 r8 r8
	addi	r0 r9 -1
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30173
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
	beq	r25 r0 beq_else.30175
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
	beq	r25 r0 beq_else.30177
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
	beq	r25 r0 beq_else.30179
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
	j	beq_cont.30180
beq_else.30179:
beq_cont.30180:
	j	beq_cont.30178
beq_else.30177:
beq_cont.30178:
	j	beq_cont.30176
beq_else.30175:
beq_cont.30176:
	j	beq_cont.30174
beq_else.30173:
beq_cont.30174:
beq_cont.30158:
	addi	r0 r1 1
	lw	r30 r2 24
	lw	r30 r3 20
	sw	r31 r30 32
	addi	r30 r30 36
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30156
beq_else.30155:
beq_cont.30156:
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.30181
	addi	r0 r1 1
	j	bfle_nontail_cont.30182
bfle_nontail_else.30181:
	addi	r0 r1 0
bfle_nontail_cont.30182:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30183
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30185
	addi	r0 r1 1
	j	bfle_nontail_cont.30186
bfle_nontail_else.30185:
	addi	r0 r1 0
bfle_nontail_cont.30186:
	j	beq_cont.30184
beq_else.30183:
	addi	r0 r1 0
beq_cont.30184:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30187
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
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
	beq	r25 r0 beq_else.30189
	addi	r0 r2 2
	sub	r3 r2 r25
	beq	r25 r0 beq_else.30191
	sw	r31 r30 36
	addi	r30 r30 40
	jal	get_nvector_second.3063
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30192
beq_else.30191:
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
beq_cont.30192:
	j	beq_cont.30190
beq_else.30189:
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
	beq	r25 r0 bfeq_nontail_else.30193
	addi	r0 r2 0
	j	bfeq_nontail_cont.30194
bfeq_nontail_else.30193:
	addi	r0 r2 1
bfeq_nontail_cont.30194:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30195
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30196
beq_else.30195:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30197
	addi	r0 r2 1
	j	bfle_nontail_cont.30198
bfle_nontail_else.30197:
	addi	r0 r2 0
bfle_nontail_cont.30198:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30199
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30200
beq_else.30199:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30200:
beq_cont.30196:
	neg.s	f0 f0
	sll	r5 r2 2
	swoc1	f0 r4 r2
beq_cont.30190:
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
	beq	r25 r0 beq_else.30201
	j	beq_cont.30202
beq_else.30201:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
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
	blez	r25 bfle_nontail_else.30203
	addi	r0 r1 1
	j	bfle_nontail_cont.30204
bfle_nontail_else.30203:
	addi	r0 r1 0
bfle_nontail_cont.30204:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30205
	j	beq_cont.30206
beq_else.30205:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30206:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
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
beq_cont.30202:
	j	beq_cont.30188
beq_else.30187:
beq_cont.30188:
	j	beq_cont.30154
beq_else.30153:
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
	beq	r25 r0 beq_else.30207
	addi	r0 r9 99
	sw	r7 r30 44
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30209
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
	beq	r25 r0 beq_else.30211
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.30213
	addi	r0 r1 1
	j	bfle_nontail_cont.30214
bfle_nontail_else.30213:
	addi	r0 r1 0
bfle_nontail_cont.30214:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30215
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 48
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30217
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
	beq	r25 r0 beq_else.30219
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
	beq	r25 r0 beq_else.30221
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
	beq	r25 r0 beq_else.30223
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
	j	beq_cont.30216
beq_else.30215:
beq_cont.30216:
	j	beq_cont.30212
beq_else.30211:
beq_cont.30212:
	j	beq_cont.30210
beq_else.30209:
	addi	r0 r8 1
	sll	r8 r8 2
	lwo	r6 r8 r8
	addi	r0 r9 -1
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30225
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
	beq	r25 r0 beq_else.30227
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
	beq	r25 r0 beq_else.30229
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
	beq	r25 r0 beq_else.30231
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
	j	beq_cont.30232
beq_else.30231:
beq_cont.30232:
	j	beq_cont.30230
beq_else.30229:
beq_cont.30230:
	j	beq_cont.30228
beq_else.30227:
beq_cont.30228:
	j	beq_cont.30226
beq_else.30225:
beq_cont.30226:
beq_cont.30210:
	addi	r0 r1 1
	lw	r30 r2 44
	lw	r30 r3 40
	sw	r31 r30 52
	addi	r30 r30 56
	jal	trace_or_matrix_fast.3053
	addi	r30 r30 -56
	lw	r30 r31 52
	j	beq_cont.30208
beq_else.30207:
beq_cont.30208:
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
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
	blez	r25 bfle_nontail_else.30233
	addi	r0 r1 1
	j	bfle_nontail_cont.30234
bfle_nontail_else.30233:
	addi	r0 r1 0
bfle_nontail_cont.30234:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30235
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30237
	addi	r0 r1 1
	j	bfle_nontail_cont.30238
bfle_nontail_else.30237:
	addi	r0 r1 0
bfle_nontail_cont.30238:
	j	beq_cont.30236
beq_else.30235:
	addi	r0 r1 0
beq_cont.30236:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30239
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
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
	beq	r25 r0 beq_else.30241
	addi	r0 r2 2
	sub	r3 r2 r25
	beq	r25 r0 beq_else.30243
	sw	r31 r30 56
	addi	r30 r30 60
	jal	get_nvector_second.3063
	addi	r30 r30 -60
	lw	r30 r31 56
	j	beq_cont.30244
beq_else.30243:
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
beq_cont.30244:
	j	beq_cont.30242
beq_else.30241:
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
	beq	r25 r0 bfeq_nontail_else.30245
	addi	r0 r2 0
	j	bfeq_nontail_cont.30246
bfeq_nontail_else.30245:
	addi	r0 r2 1
bfeq_nontail_cont.30246:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30247
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30248
beq_else.30247:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.30249
	addi	r0 r2 1
	j	bfle_nontail_cont.30250
bfle_nontail_else.30249:
	addi	r0 r2 0
bfle_nontail_cont.30250:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30251
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30252
beq_else.30251:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30252:
beq_cont.30248:
	neg.s	f0 f0
	sll	r5 r2 2
	swoc1	f0 r4 r2
beq_cont.30242:
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
	beq	r25 r0 beq_else.30253
	j	beq_cont.30254
beq_else.30253:
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
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
	blez	r25 bfle_nontail_else.30255
	addi	r0 r1 1
	j	bfle_nontail_cont.30256
bfle_nontail_else.30255:
	addi	r0 r1 0
bfle_nontail_cont.30256:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30257
	j	beq_cont.30258
beq_else.30257:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.30258:
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
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
beq_cont.30254:
	j	beq_cont.30240
beq_else.30239:
beq_cont.30240:
beq_cont.30154:
	addi	r0 r1 2
	lw	r30 r2 12
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30259
	jr	r31
ble_tail_else.30259:
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
	blez	r25 bfle_nontail_else.30261
	addi	r0 r2 1
	j	bfle_nontail_cont.30262
bfle_nontail_else.30261:
	addi	r0 r2 0
bfle_nontail_cont.30262:
	addi	r0 r4 0
	sw	r1 r30 56
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30263
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
	j	beq_cont.30264
beq_else.30263:
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
beq_cont.30264:
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
	beq	r25 r0 beq_else.30265
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
	j	beq_cont.30266
beq_else.30265:
beq_cont.30266:
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30267
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
	j	beq_cont.30268
beq_else.30267:
beq_cont.30268:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30269
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
	j	beq_cont.30270
beq_else.30269:
beq_cont.30270:
	addi	r0 r1 3
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30271
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
	j	beq_cont.30272
beq_else.30271:
beq_cont.30272:
	addi	r0 r1 4
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.30273
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
beq_tail_else.30273:
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
	beq	r25 r0 beq_else.30275
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
	blez	r25 bfle_nontail_else.30277
	addi	r0 r2 1
	j	bfle_nontail_cont.30278
bfle_nontail_else.30277:
	addi	r0 r2 0
bfle_nontail_cont.30278:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30279
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
	j	beq_cont.30280
beq_else.30279:
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
beq_cont.30280:
	addi	r0 r4 116
	lw	r30 r1 20
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 24
	addi	r30 r30 28
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.30276
beq_else.30275:
beq_cont.30276:
	addi	r0 r1 1
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30281
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
	blez	r25 bfle_nontail_else.30283
	addi	r0 r2 1
	j	bfle_nontail_cont.30284
bfle_nontail_else.30283:
	addi	r0 r2 0
bfle_nontail_cont.30284:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30285
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
	j	beq_cont.30286
beq_else.30285:
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
beq_cont.30286:
	addi	r0 r4 116
	lw	r30 r1 24
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 28
	addi	r30 r30 32
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -32
	lw	r30 r31 28
	j	beq_cont.30282
beq_else.30281:
beq_cont.30282:
	addi	r0 r1 2
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30287
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
	blez	r25 bfle_nontail_else.30289
	addi	r0 r2 1
	j	bfle_nontail_cont.30290
bfle_nontail_else.30289:
	addi	r0 r2 0
bfle_nontail_cont.30290:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30291
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
	j	beq_cont.30292
beq_else.30291:
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
beq_cont.30292:
	addi	r0 r4 116
	lw	r30 r1 28
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 32
	addi	r30 r30 36
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30288
beq_else.30287:
beq_cont.30288:
	addi	r0 r1 3
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30293
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
	blez	r25 bfle_nontail_else.30295
	addi	r0 r2 1
	j	bfle_nontail_cont.30296
bfle_nontail_else.30295:
	addi	r0 r2 0
bfle_nontail_cont.30296:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30297
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
	j	beq_cont.30298
beq_else.30297:
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
beq_cont.30298:
	addi	r0 r4 116
	lw	r30 r1 32
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 36
	addi	r30 r30 40
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30294
beq_else.30293:
beq_cont.30294:
	addi	r0 r1 4
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30299
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
	blez	r25 bfle_nontail_else.30301
	addi	r0 r2 1
	j	bfle_nontail_cont.30302
bfle_nontail_else.30301:
	addi	r0 r2 0
bfle_nontail_cont.30302:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30303
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
	j	beq_cont.30304
beq_else.30303:
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
beq_cont.30304:
	addi	r0 r4 116
	lw	r30 r1 36
	lw	r30 r2 8
	lw	r30 r3 12
	sw	r31 r30 40
	addi	r30 r30 44
	jal	iter_trace_diffuse_rays.3089
	addi	r30 r30 -44
	lw	r30 r31 40
	j	beq_cont.30300
beq_else.30299:
beq_cont.30300:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
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
	blez	r25 ble_tail_else.30307
	jr	r31
ble_tail_else.30307:
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30309
	jr	r31
ble_tail_else.30309:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30311
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
	beq	r25 r0 beq_else.30313
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
	j	beq_cont.30314
beq_else.30313:
beq_cont.30314:
	addi	r0 r1 1
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30315
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
	j	beq_cont.30316
beq_else.30315:
beq_cont.30316:
	addi	r0 r1 2
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30317
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
	j	beq_cont.30318
beq_else.30317:
beq_cont.30318:
	addi	r0 r1 3
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30319
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
	j	beq_cont.30320
beq_else.30319:
beq_cont.30320:
	addi	r0 r1 4
	lw	r30 r2 20
	sub	r2 r1 r25
	beq	r25 r0 beq_else.30321
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
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
	j	beq_cont.30322
beq_else.30321:
beq_cont.30322:
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
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
	j	beq_cont.30312
beq_else.30311:
beq_cont.30312:
	addi	r0 r1 1
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30323
	jr	r31
ble_tail_else.30323:
	lw	r30 r1 0
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30325
	jr	r31
ble_tail_else.30325:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 44
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30327
	sw	r31 r30 48
	addi	r30 r30 52
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -52
	lw	r30 r31 48
	j	beq_cont.30328
beq_else.30327:
beq_cont.30328:
	addi	r0 r1 1
	lw	r30 r2 44
	add	r2 r1 r1
	addi	r0 r2 4
	sub	r1 r2 r25
	blez	r25 ble_tail_else.30329
	jr	r31
ble_tail_else.30329:
	lw	r30 r2 0
	lw	r2 r3 8
	addi	r0 r4 0
	sll	r1 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30331
	jr	r31
ble_tail_else.30331:
	lw	r2 r3 12
	sll	r1 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 48
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30333
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
	j	beq_cont.30334
beq_else.30333:
beq_cont.30334:
	addi	r0 r1 1
	lw	r30 r2 48
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30335
	jr	r31
ble_tail_else.30335:
	lw	r30 r1 0
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30337
	jr	r31
ble_tail_else.30337:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 56
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30339
	sw	r31 r30 60
	addi	r30 r30 64
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -64
	lw	r30 r31 60
	j	beq_cont.30340
beq_else.30339:
beq_cont.30340:
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
	blez	r25 ble_tail_else.30341
	jr	r31
ble_tail_else.30341:
	addi	r0 r8 0
	lw	r7 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r8 r9 r25
	blez	r25 ble_tail_else.30343
	jr	r31
ble_tail_else.30343:
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
	beq	r25 r0 beq_else.30345
	addi	r0 r8 0
	j	beq_cont.30346
beq_else.30345:
	sll	r1 r9 2
	lwo	r5 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30347
	addi	r0 r8 0
	j	beq_cont.30348
beq_else.30347:
	addi	r0 r9 1
	sub	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30349
	addi	r0 r8 0
	j	beq_cont.30350
beq_else.30349:
	addi	r0 r9 1
	add	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30351
	addi	r0 r8 0
	j	beq_cont.30352
beq_else.30351:
	addi	r0 r8 1
beq_cont.30352:
beq_cont.30350:
beq_cont.30348:
beq_cont.30346:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_tail_else.30353
	lw	r7 r7 12
	sll	r6 r8 2
	lwo	r7 r8 r7
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30354
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
	j	beq_cont.30355
beq_else.30354:
beq_cont.30355:
	addi	r0 r7 1
	add	r6 r7 r6
	sll	r1 r7 2
	lwo	r4 r7 r7
	addi	r0 r8 4
	sub	r6 r8 r25
	blez	r25 ble_tail_else.30356
	jr	r31
ble_tail_else.30356:
	addi	r0 r8 0
	lw	r7 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r8 r9 r25
	blez	r25 ble_tail_else.30358
	jr	r31
ble_tail_else.30358:
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
	beq	r25 r0 beq_else.30360
	addi	r0 r8 0
	j	beq_cont.30361
beq_else.30360:
	sll	r1 r9 2
	lwo	r5 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30362
	addi	r0 r8 0
	j	beq_cont.30363
beq_else.30362:
	addi	r0 r9 1
	sub	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30364
	addi	r0 r8 0
	j	beq_cont.30365
beq_else.30364:
	addi	r0 r9 1
	add	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30366
	addi	r0 r8 0
	j	beq_cont.30367
beq_else.30366:
	addi	r0 r8 1
beq_cont.30367:
beq_cont.30365:
beq_cont.30363:
beq_cont.30361:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_tail_else.30368
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
	beq	r25 r0 beq_else.30369
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r3
	mov	r3 r4
	mov	r4 r5
	mov	r5 r6
	jal	calc_diffuse_using_5points.3105
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.30370
beq_else.30369:
beq_cont.30370:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r6
	lw	r30 r1 16
	lw	r30 r2 12
	lw	r30 r3 8
	lw	r30 r4 4
	lw	r30 r5 0
	j	try_exploit_neighbors.3127
beq_tail_else.30368:
	sll	r1 r1 2
	lwo	r4 r1 r1
	addi	r0 r2 4
	sub	r6 r2 r25
	blez	r25 ble_tail_else.30371
	jr	r31
ble_tail_else.30371:
	lw	r1 r2 8
	addi	r0 r3 0
	sll	r6 r4 2
	lwo	r2 r4 r2
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30373
	jr	r31
ble_tail_else.30373:
	lw	r1 r2 12
	sll	r6 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 0
	sw	r1 r30 24
	sw	r6 r30 20
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30375
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
	j	beq_cont.30376
beq_else.30375:
beq_cont.30376:
	addi	r0 r1 1
	lw	r30 r2 20
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30377
	jr	r31
ble_tail_else.30377:
	lw	r30 r1 24
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30379
	jr	r31
ble_tail_else.30379:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 32
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30381
	sw	r31 r30 36
	addi	r30 r30 40
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30382
beq_else.30381:
beq_cont.30382:
	addi	r0 r1 1
	lw	r30 r2 32
	add	r2 r1 r2
	lw	r30 r1 24
	j	do_without_neighbors.3111
beq_tail_else.30353:
	sll	r1 r1 2
	lwo	r4 r1 r1
	addi	r0 r2 4
	sub	r6 r2 r25
	blez	r25 ble_tail_else.30383
	jr	r31
ble_tail_else.30383:
	lw	r1 r2 8
	addi	r0 r3 0
	sll	r6 r4 2
	lwo	r2 r4 r2
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30385
	jr	r31
ble_tail_else.30385:
	lw	r1 r2 12
	sll	r6 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 0
	sw	r1 r30 36
	sw	r6 r30 40
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30387
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r2 r6
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -48
	lw	r30 r31 44
	j	beq_cont.30388
beq_else.30387:
beq_cont.30388:
	addi	r0 r1 1
	lw	r30 r2 40
	add	r2 r1 r1
	addi	r0 r2 4
	sub	r1 r2 r25
	blez	r25 ble_tail_else.30389
	jr	r31
ble_tail_else.30389:
	lw	r30 r2 36
	lw	r2 r3 8
	addi	r0 r4 0
	sll	r1 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30391
	jr	r31
ble_tail_else.30391:
	lw	r2 r3 12
	sll	r1 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 44
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30393
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
	j	beq_cont.30394
beq_else.30393:
beq_cont.30394:
	addi	r0 r1 1
	lw	r30 r2 44
	add	r2 r1 r2
	addi	r0 r1 4
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30395
	jr	r31
ble_tail_else.30395:
	lw	r30 r1 36
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30397
	jr	r31
ble_tail_else.30397:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 52
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30399
	sw	r31 r30 56
	addi	r30 r30 60
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -60
	lw	r30 r31 56
	j	beq_cont.30400
beq_else.30399:
beq_cont.30400:
	addi	r0 r1 1
	lw	r30 r2 52
	add	r2 r1 r2
	lw	r30 r1 36
	j	do_without_neighbors.3111
pretrace_diffuse_rays.3140:
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.30401
	jr	r31
ble_tail_else.30401:
	lw	r1 r3 8
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30403
	jr	r31
ble_tail_else.30403:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30405
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
	j	beq_cont.30406
beq_else.30405:
beq_cont.30406:
	addi	r0 r2 1
	lw	r30 r3 0
	add	r3 r2 r2
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.30407
	jr	r31
ble_tail_else.30407:
	lw	r1 r3 8
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r4 r3 r25
	blez	r25 ble_tail_else.30409
	jr	r31
ble_tail_else.30409:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sw	r2 r30 20
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30411
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
	blez	r25 bfle_nontail_else.30413
	addi	r0 r2 1
	j	bfle_nontail_cont.30414
bfle_nontail_else.30413:
	addi	r0 r2 0
bfle_nontail_cont.30414:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30415
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
	j	beq_cont.30416
beq_else.30415:
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
beq_cont.30416:
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
	j	beq_cont.30412
beq_else.30411:
beq_cont.30412:
	addi	r0 r2 1
	lw	r30 r3 20
	add	r3 r2 r2
	j	pretrace_diffuse_rays.3140
pretrace_pixels.3143:
	addi	r0 r4 0
	sub	r4 r2 r25
	blez	r25 ble_tail_else.30417
	jr	r31
ble_tail_else.30417:
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
	mov.s f0 f19
	sw r31 r30 28
	jal min_caml_sqrtlib
	lw r30 r31 28
	mov.s f19 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sub.s	f0 f4 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.30419
	addi	r0 r2 0
	j	bfeq_nontail_cont.30420
bfeq_nontail_else.30419:
	addi	r0 r2 1
bfeq_nontail_cont.30420:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30421
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.30422
beq_else.30421:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f4 f0 f0
beq_cont.30422:
	addi	r0 r2 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f4
	mul.s	f4 f0 f4
	sll	r2 r2 2
	swoc1	f4 r1 r2
	addi	r0 r2 1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f4
	mul.s	f4 f0 f4
	sll	r2 r2 2
	swoc1	f4 r1 r2
	addi	r0 r2 2
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f4
	mul.s	f4 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	lw	r30 r31 4
	addi	r30 r30 -28
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
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
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
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	lw	r30 r3 8
	sll	r3 r4 2
	lw	r30 r5 4
	lwo	r5 r4 r4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r3 r4
	mov.s	f4 f1
	jal	trace_ray.3080
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 8
	sll	r1 r2 2
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
	blez	r25 ble_nontail_else.30423
	j	ble_nontail_cont.30424
ble_nontail_else.30423:
	lw	r2 r6 12
	sll	r4 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 0
	sw	r2 r30 28
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30425
	lw	r2 r6 24
	addi	r0 r7 0
	sll	r7 r7 2
	lwo	r6 r7 r6
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r7 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
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
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	sll	r6 r6 2
	lwo	r9 r6 r6
	sll	r4 r9 2
	lwo	r7 r9 r7
	sll	r4 r9 2
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
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r9 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r10 0
	sll	r10 r10 2
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
	sll	r1 r2 2
	lw	r30 r3 44
	lwo	r3 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lw	r30 r5 40
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
	blez	r25 bfle_nontail_else.30427
	addi	r0 r2 1
	j	bfle_nontail_cont.30428
bfle_nontail_else.30427:
	addi	r0 r2 0
bfle_nontail_cont.30428:
	addi	r0 r4 0
	sub	r2 r4 r25
	beq	r25 r0 beq_else.30429
	addi	r0 r1 119
	sll	r1 r1 2
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
	j	beq_cont.30430
beq_else.30429:
	sll	r1 r1 2
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
beq_cont.30430:
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
	sll	r3 r3 2
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
	j	beq_cont.30426
beq_else.30425:
beq_cont.30426:
	addi	r0 r2 1
	lw	r30 r1 28
	sw	r31 r30 48
	addi	r30 r30 52
	jal	pretrace_diffuse_rays.3140
	addi	r30 r30 -52
	lw	r30 r31 48
ble_nontail_cont.30424:
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r2
	addi	r0 r1 1
	lw	r30 r3 0
	add	r3 r1 r1
	addi	r0 r3 5
	sub	r3 r1 r25
	blez	r25 ble_nontail_else.30431
	mov	r3 r1
	j	ble_nontail_cont.30432
ble_nontail_else.30431:
	addi	r0 r3 5
	sub	r1 r3 r3
ble_nontail_cont.30432:
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
	blez	r25 ble_tail_else.30433
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
	blez	r25 ble_nontail_else.30434
	addi	r0 r6 0
	sub	r2 r6 r25
	blez	r25 ble_nontail_else.30436
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
	blez	r25 ble_nontail_else.30438
	addi	r0 r6 0
	sub	r1 r6 r25
	blez	r25 ble_nontail_else.30440
	addi	r0 r6 1
	j	ble_nontail_cont.30441
ble_nontail_else.30440:
	addi	r0 r6 0
ble_nontail_cont.30441:
	j	ble_nontail_cont.30439
ble_nontail_else.30438:
	addi	r0 r6 0
ble_nontail_cont.30439:
	j	ble_nontail_cont.30437
ble_nontail_else.30436:
	addi	r0 r6 0
ble_nontail_cont.30437:
	j	ble_nontail_cont.30435
ble_nontail_else.30434:
	addi	r0 r6 0
ble_nontail_cont.30435:
	addi	r0 r7 0
	sw	r5 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	sw	r4 r30 12
	sw	r1 r30 16
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30442
	addi	r0 r6 0
	sll	r1 r7 2
	lwo	r4 r7 r7
	addi	r0 r8 0
	lw	r7 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r8 r9 r25
	blez	r25 ble_nontail_else.30444
	j	ble_nontail_cont.30445
ble_nontail_else.30444:
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
	beq	r25 r0 beq_else.30446
	addi	r0 r8 0
	j	beq_cont.30447
beq_else.30446:
	sll	r1 r9 2
	lwo	r5 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30448
	addi	r0 r8 0
	j	beq_cont.30449
beq_else.30448:
	addi	r0 r9 1
	sub	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30450
	addi	r0 r8 0
	j	beq_cont.30451
beq_else.30450:
	addi	r0 r9 1
	add	r1 r9 r9
	sll	r9 r9 2
	lwo	r4 r9 r9
	lw	r9 r9 8
	sll	r6 r10 2
	lwo	r9 r10 r9
	sub	r9 r8 r25
	beq	r25 r0 beq_else.30452
	addi	r0 r8 0
	j	beq_cont.30453
beq_else.30452:
	addi	r0 r8 1
beq_cont.30453:
beq_cont.30451:
beq_cont.30449:
beq_cont.30447:
	addi	r0 r9 0
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30454
	lw	r7 r7 12
	sll	r6 r8 2
	lwo	r7 r8 r7
	addi	r0 r8 0
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30456
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	mov	r3 r4
	mov	r4 r5
	mov	r5 r6
	jal	calc_diffuse_using_5points.3105
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.30457
beq_else.30456:
beq_cont.30457:
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
	j	beq_cont.30455
beq_else.30454:
	sll	r1 r7 2
	lwo	r4 r7 r7
	lw	r7 r8 8
	addi	r0 r9 0
	sll	r6 r10 2
	lwo	r8 r10 r8
	sub	r9 r8 r25
	blez	r25 ble_nontail_else.30458
	j	ble_nontail_cont.30459
ble_nontail_else.30458:
	lw	r7 r8 12
	sll	r6 r9 2
	lwo	r8 r9 r8
	addi	r0 r9 0
	sw	r7 r30 20
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30460
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
	j	beq_cont.30461
beq_else.30460:
beq_cont.30461:
	addi	r0 r2 1
	lw	r30 r1 20
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30462
	j	ble_nontail_cont.30463
ble_nontail_else.30462:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30464
	sw	r31 r30 32
	addi	r30 r30 36
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.30465
beq_else.30464:
beq_cont.30465:
	addi	r0 r2 2
	lw	r30 r1 20
	sw	r31 r30 32
	addi	r30 r30 36
	jal	do_without_neighbors.3111
	addi	r30 r30 -36
	lw	r30 r31 32
ble_nontail_cont.30463:
ble_nontail_cont.30459:
beq_cont.30455:
ble_nontail_cont.30445:
	j	beq_cont.30443
beq_else.30442:
	sll	r1 r6 2
	lwo	r4 r6 r6
	addi	r0 r7 0
	lw	r6 r8 8
	addi	r0 r9 0
	sll	r7 r10 2
	lwo	r8 r10 r8
	sub	r9 r8 r25
	blez	r25 ble_nontail_else.30466
	j	ble_nontail_cont.30467
ble_nontail_else.30466:
	lw	r6 r8 12
	sll	r7 r9 2
	lwo	r8 r9 r8
	addi	r0 r9 0
	sw	r6 r30 32
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30468
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r7
	mov	r1 r6
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30469
beq_else.30468:
beq_cont.30469:
	addi	r0 r1 1
	lw	r30 r2 32
	lw	r2 r3 8
	addi	r0 r4 0
	sll	r1 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30470
	j	ble_nontail_cont.30471
ble_nontail_else.30470:
	lw	r2 r3 12
	sll	r1 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30472
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
	j	beq_cont.30473
beq_else.30472:
beq_cont.30473:
	addi	r0 r2 2
	lw	r30 r1 32
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30474
	j	ble_nontail_cont.30475
ble_nontail_else.30474:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30476
	sw	r31 r30 44
	addi	r30 r30 48
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -48
	lw	r30 r31 44
	j	beq_cont.30477
beq_else.30476:
beq_cont.30477:
	addi	r0 r2 3
	lw	r30 r1 32
	sw	r31 r30 44
	addi	r30 r30 48
	jal	do_without_neighbors.3111
	addi	r30 r30 -48
	lw	r30 r31 44
ble_nontail_cont.30475:
ble_nontail_cont.30471:
ble_nontail_cont.30467:
beq_cont.30443:
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
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
	blez	r25 ble_nontail_else.30478
	addi	r0 r1 255
	j	ble_nontail_cont.30479
ble_nontail_else.30478:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30480
	addi	r0 r1 0
	j	ble_nontail_cont.30481
ble_nontail_else.30480:
ble_nontail_cont.30481:
ble_nontail_cont.30479:
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
	blez	r25 ble_nontail_else.30482
	addi	r0 r1 255
	j	ble_nontail_cont.30483
ble_nontail_else.30482:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30484
	addi	r0 r1 0
	j	ble_nontail_cont.30485
ble_nontail_else.30484:
ble_nontail_cont.30485:
ble_nontail_cont.30483:
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
	blez	r25 ble_nontail_else.30486
	addi	r0 r1 255
	j	ble_nontail_cont.30487
ble_nontail_else.30486:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30488
	addi	r0 r1 0
	j	ble_nontail_cont.30489
ble_nontail_else.30488:
ble_nontail_cont.30489:
ble_nontail_cont.30487:
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
	blez	r25 ble_tail_else.30490
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
	blez	r25 ble_nontail_else.30491
	addi	r0 r2 0
	sub	r5 r2 r25
	blez	r25 ble_nontail_else.30493
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
	blez	r25 ble_nontail_else.30495
	addi	r0 r2 0
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.30497
	addi	r0 r2 1
	j	ble_nontail_cont.30498
ble_nontail_else.30497:
	addi	r0 r2 0
ble_nontail_cont.30498:
	j	ble_nontail_cont.30496
ble_nontail_else.30495:
	addi	r0 r2 0
ble_nontail_cont.30496:
	j	ble_nontail_cont.30494
ble_nontail_else.30493:
	addi	r0 r2 0
ble_nontail_cont.30494:
	j	ble_nontail_cont.30492
ble_nontail_else.30491:
	addi	r0 r2 0
ble_nontail_cont.30492:
	addi	r0 r3 0
	sw	r1 r30 44
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30499
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
	j	beq_cont.30500
beq_else.30499:
	sll	r1 r2 2
	lwo	r4 r2 r2
	addi	r0 r3 0
	lw	r2 r6 8
	addi	r0 r7 0
	sll	r3 r8 2
	lwo	r6 r8 r6
	sub	r7 r6 r25
	blez	r25 ble_nontail_else.30501
	j	ble_nontail_cont.30502
ble_nontail_else.30501:
	lw	r2 r6 12
	sll	r3 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 0
	sw	r2 r30 48
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30503
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
	j	beq_cont.30504
beq_else.30503:
beq_cont.30504:
	addi	r0 r2 1
	lw	r30 r1 48
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30505
	j	ble_nontail_cont.30506
ble_nontail_else.30505:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30507
	sw	r31 r30 60
	addi	r30 r30 64
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -64
	lw	r30 r31 60
	j	beq_cont.30508
beq_else.30507:
beq_cont.30508:
	addi	r0 r2 2
	lw	r30 r1 48
	sw	r31 r30 60
	addi	r30 r30 64
	jal	do_without_neighbors.3111
	addi	r30 r30 -64
	lw	r30 r31 60
ble_nontail_cont.30506:
ble_nontail_cont.30502:
beq_cont.30500:
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
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
	blez	r25 ble_nontail_else.30509
	addi	r0 r1 255
	j	ble_nontail_cont.30510
ble_nontail_else.30509:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30511
	addi	r0 r1 0
	j	ble_nontail_cont.30512
ble_nontail_else.30511:
ble_nontail_cont.30512:
ble_nontail_cont.30510:
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
	blez	r25 ble_nontail_else.30513
	addi	r0 r1 255
	j	ble_nontail_cont.30514
ble_nontail_else.30513:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30515
	addi	r0 r1 0
	j	ble_nontail_cont.30516
ble_nontail_else.30515:
ble_nontail_cont.30516:
ble_nontail_cont.30514:
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
	blez	r25 ble_nontail_else.30517
	addi	r0 r1 255
	j	ble_nontail_cont.30518
ble_nontail_else.30517:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30519
	addi	r0 r1 0
	j	ble_nontail_cont.30520
ble_nontail_else.30519:
ble_nontail_cont.30520:
ble_nontail_cont.30518:
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
ble_tail_else.30490:
	jr	r31
ble_tail_else.30433:
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
	blez	r25 ble_tail_else.30523
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
	blez	r25 ble_nontail_else.30524
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
	j	ble_nontail_cont.30525
ble_nontail_else.30524:
ble_nontail_cont.30525:
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
	blez	r25 ble_nontail_else.30526
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
	blez	r25 ble_nontail_else.30528
	addi	r0 r2 0
	sub	r5 r2 r25
	blez	r25 ble_nontail_else.30530
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
	blez	r25 ble_nontail_else.30532
	addi	r0 r2 0
	j	ble_nontail_cont.30533
ble_nontail_else.30532:
	addi	r0 r2 0
ble_nontail_cont.30533:
	j	ble_nontail_cont.30531
ble_nontail_else.30530:
	addi	r0 r2 0
ble_nontail_cont.30531:
	j	ble_nontail_cont.30529
ble_nontail_else.30528:
	addi	r0 r2 0
ble_nontail_cont.30529:
	addi	r0 r3 0
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30534
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
	j	beq_cont.30535
beq_else.30534:
	sll	r1 r1 2
	lwo	r4 r1 r1
	addi	r0 r2 0
	lw	r1 r3 8
	addi	r0 r6 0
	sll	r2 r7 2
	lwo	r3 r7 r3
	sub	r6 r3 r25
	blez	r25 ble_nontail_else.30536
	j	ble_nontail_cont.30537
ble_nontail_else.30536:
	lw	r1 r3 12
	sll	r2 r6 2
	lwo	r3 r6 r3
	addi	r0 r6 0
	sw	r1 r30 24
	sub	r3 r6 r25
	beq	r25 r0 beq_else.30538
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
	j	beq_cont.30539
beq_else.30538:
beq_cont.30539:
	addi	r0 r2 1
	lw	r30 r1 24
	lw	r1 r3 8
	addi	r0 r4 0
	sll	r2 r5 2
	lwo	r3 r5 r3
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30540
	j	ble_nontail_cont.30541
ble_nontail_else.30540:
	lw	r1 r3 12
	sll	r2 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30542
	sw	r31 r30 36
	addi	r30 r30 40
	jal	calc_diffuse_using_1point.3102
	addi	r30 r30 -40
	lw	r30 r31 36
	j	beq_cont.30543
beq_else.30542:
beq_cont.30543:
	addi	r0 r2 2
	lw	r30 r1 24
	sw	r31 r30 36
	addi	r30 r30 40
	jal	do_without_neighbors.3111
	addi	r30 r30 -40
	lw	r30 r31 36
ble_nontail_cont.30541:
ble_nontail_cont.30537:
beq_cont.30535:
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
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
	blez	r25 ble_nontail_else.30544
	addi	r0 r1 255
	j	ble_nontail_cont.30545
ble_nontail_else.30544:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30546
	addi	r0 r1 0
	j	ble_nontail_cont.30547
ble_nontail_else.30546:
ble_nontail_cont.30547:
ble_nontail_cont.30545:
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
	blez	r25 ble_nontail_else.30548
	addi	r0 r1 255
	j	ble_nontail_cont.30549
ble_nontail_else.30548:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30550
	addi	r0 r1 0
	j	ble_nontail_cont.30551
ble_nontail_else.30550:
ble_nontail_cont.30551:
ble_nontail_cont.30549:
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
	blez	r25 ble_nontail_else.30552
	addi	r0 r1 255
	j	ble_nontail_cont.30553
ble_nontail_else.30552:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30554
	addi	r0 r1 0
	j	ble_nontail_cont.30555
ble_nontail_else.30554:
ble_nontail_cont.30555:
ble_nontail_cont.30553:
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
	j	ble_nontail_cont.30527
ble_nontail_else.30526:
ble_nontail_cont.30527:
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r2
	addi	r0 r1 2
	lw	r30 r3 0
	add	r3 r1 r1
	addi	r0 r3 5
	sub	r3 r1 r25
	blez	r25 ble_nontail_else.30556
	j	ble_nontail_cont.30557
ble_nontail_else.30556:
	addi	r0 r3 5
	sub	r1 r3 r1
ble_nontail_cont.30557:
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
	blez	r25 ble_tail_else.30558
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
	blez	r25 ble_nontail_else.30559
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
	j	ble_nontail_cont.30560
ble_nontail_else.30559:
ble_nontail_cont.30560:
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
	blez	r25 ble_nontail_else.30561
	mov	r5 r2
	j	ble_nontail_cont.30562
ble_nontail_else.30561:
	addi	r0 r3 5
	sub	r2 r3 r5
ble_nontail_cont.30562:
	lw	r30 r2 4
	lw	r30 r3 8
	lw	r30 r4 16
	j	scan_line.3160
ble_tail_else.30558:
	jr	r31
ble_tail_else.30523:
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
	blez	r25 ble_tail_else.30565
	jr	r31
ble_tail_else.30565:
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
	blez	r25 ble_tail_else.30566
	mov	r1 r4
	jr	r31
ble_tail_else.30566:
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
	blez	r25 ble_tail_else.30567
	mov	r1 r4
	jr	r31
ble_tail_else.30567:
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
	blez	r25 ble_tail_else.30568
	mov	r1 r4
	jr	r31
ble_tail_else.30568:
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
	blez	r25 ble_tail_else.30569
	mul.s	f1 f1 f0
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f1
	add.s	f0 f1 f0
	mov.s f0 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f1
	mov.s f1 f19
	sw r31 r30 0
	jal min_caml_atanlib
	lw r30 r31 0
	mov.s f19 f1
	mul.s	f1 f2 f1
	mov.s f1 f19
	sw r31 r30 0
	jal min_caml_sinlib
	lw r30 r31 0
	mov.s f19 f4
	mov.s f1 f19
	sw r31 r30 0
	jal min_caml_coslib
	lw r30 r31 0
	mov.s f19 f1
	div.s	f4 f1 f1
	mul.s	f1 f0 f0
	addi	r0 r4 1
	add	r1 r4 r1
	mul.s	f0 f0 f1
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f4
	add.s	f1 f4 f1
	mov.s f1 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f4 f1 f4
	mov.s f4 f19
	sw r31 r30 0
	jal min_caml_atanlib
	lw r30 r31 0
	mov.s f19 f4
	mul.s	f4 f3 f4
	mov.s f4 f19
	sw r31 r30 0
	jal min_caml_sinlib
	lw r30 r31 0
	mov.s f19 f5
	mov.s f4 f19
	sw r31 r30 0
	jal min_caml_coslib
	lw r30 r31 0
	mov.s f19 f4
	div.s	f5 f4 f4
	mul.s	f4 f1 f1
	j	calc_dirvec.3180
ble_tail_else.30569:
	mul.s	f0 f0 f2
	mul.s	f1 f1 f3
	add.s	f2 f3 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	add.s	f2 f3 f2
	mov.s f2 f19
	sw r31 r30 0
	jal min_caml_sqrtlib
	lw r30 r31 0
	mov.s f19 f2
	div.s	f0 f2 f0
	div.s	f1 f2 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	div.s	f3 f2 f2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	sll	r3 r2 2
	lwo	r1 r2 r2
	lw	r2 r2 0
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f0 r2 r4
	addi	r0 r4 1
	sll	r4 r4 2
	swoc1	f1 r2 r4
	addi	r0 r4 2
	sll	r4 r4 2
	swoc1	f2 r2 r4
	addi	r0 r2 40
	add	r3 r2 r2
	sll	r2 r2 2
	lwo	r1 r2 r2
	lw	r2 r2 0
	neg.s	f1 f3
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f0 r2 r4
	addi	r0 r4 1
	sll	r4 r4 2
	swoc1	f2 r2 r4
	addi	r0 r4 2
	sll	r4 r4 2
	swoc1	f3 r2 r4
	addi	r0 r2 80
	add	r3 r2 r2
	sll	r2 r2 2
	lwo	r1 r2 r2
	lw	r2 r2 0
	neg.s	f0 f3
	neg.s	f1 f4
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f2 r2 r4
	addi	r0 r4 1
	sll	r4 r4 2
	swoc1	f3 r2 r4
	addi	r0 r4 2
	sll	r4 r4 2
	swoc1	f4 r2 r4
	addi	r0 r2 1
	add	r3 r2 r2
	sll	r2 r2 2
	lwo	r1 r2 r2
	lw	r2 r2 0
	neg.s	f0 f3
	neg.s	f1 f4
	neg.s	f2 f5
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f3 r2 r4
	addi	r0 r4 1
	sll	r4 r4 2
	swoc1	f4 r2 r4
	addi	r0 r4 2
	sll	r4 r4 2
	swoc1	f5 r2 r4
	addi	r0 r2 41
	add	r3 r2 r2
	sll	r2 r2 2
	lwo	r1 r2 r2
	lw	r2 r2 0
	neg.s	f0 f3
	neg.s	f2 f4
	addi	r0 r4 0
	sll	r4 r4 2
	swoc1	f3 r2 r4
	addi	r0 r4 1
	sll	r4 r4 2
	swoc1	f4 r2 r4
	addi	r0 r4 2
	sll	r4 r4 2
	swoc1	f1 r2 r4
	addi	r0 r2 81
	add	r3 r2 r2
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r1 r1 0
	neg.s	f2 f2
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r0 r2 1
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
	swoc1	f1 r1 r2
	jr	r31
calc_dirvecs.3188:
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.30571
	jr	r31
ble_tail_else.30571:
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
	blez	r25 ble_nontail_else.30573
	j	ble_nontail_cont.30574
ble_nontail_else.30573:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30574:
	addi	r0 r3 0
	sub	r3 r1 r25
	blez	r25 ble_tail_else.30575
	jr	r31
ble_tail_else.30575:
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
	blez	r25 ble_nontail_else.30577
	j	ble_nontail_cont.30578
ble_nontail_else.30577:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30578:
	lwc1	 r30 f0 4
	lw	r30 r3 8
	j	calc_dirvecs.3188
calc_dirvec_rows.3193:
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.30579
	jr	r31
ble_tail_else.30579:
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
	blez	r25 ble_nontail_else.30581
	j	ble_nontail_cont.30582
ble_nontail_else.30581:
	addi	r0 r4 5
	sub	r2 r4 r2
ble_nontail_cont.30582:
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
	blez	r25 ble_nontail_else.30583
	j	ble_nontail_cont.30584
ble_nontail_else.30583:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30584:
	addi	r0 r3 4
	lw	r30 r4 4
	add	r4 r3 r3
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.30585
	jr	r31
ble_tail_else.30585:
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
	blez	r25 ble_nontail_else.30587
	j	ble_nontail_cont.30588
ble_nontail_else.30587:
	addi	r0 r3 5
	sub	r2 r3 r2
ble_nontail_cont.30588:
	addi	r0 r3 4
	lw	r30 r4 24
	add	r4 r3 r3
	j	calc_dirvec_rows.3193
create_dirvec_elements.3199:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30589
	jr	r31
ble_tail_else.30589:
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
	blez	r25 ble_tail_else.30591
	jr	r31
ble_tail_else.30591:
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
	blez	r25 ble_tail_else.30593
	jr	r31
ble_tail_else.30593:
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
	blez	r25 ble_tail_else.30595
	jr	r31
ble_tail_else.30595:
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
	blez	r25 ble_tail_else.30597
	jr	r31
ble_tail_else.30597:
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
	blez	r25 ble_tail_else.30599
	jr	r31
ble_tail_else.30599:
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
	blez	r25 ble_tail_else.30601
	jr	r31
ble_tail_else.30601:
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
	blez	r25 ble_tail_else.30603
	jr	r31
ble_tail_else.30603:
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
	blez	r25 ble_tail_else.30605
	jr	r31
ble_tail_else.30605:
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
	blez	r25 ble_tail_else.30607
	jr	r31
ble_tail_else.30607:
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
	blez	r25 ble_tail_else.30609
	jr	r31
ble_tail_else.30609:
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
	blez	r25 ble_tail_else.30611
	jr	r31
ble_tail_else.30611:
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
	blez	r25 ble_tail_else.30613
	jr	r31
ble_tail_else.30613:
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
	blez	r25 ble_tail_else.30615
	jr	r31
ble_tail_else.30615:
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
	blez	r25 ble_nontail_else.30617
	j	ble_nontail_cont.30618
ble_nontail_else.30617:
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
	beq	r25 r0 beq_else.30619
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30621
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
	j	beq_cont.30622
beq_else.30621:
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
beq_cont.30622:
	j	beq_cont.30620
beq_else.30619:
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
beq_cont.30620:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 12
	sw	r31 r30 24
	addi	r30 r30 28
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -28
	lw	r30 r31 24
ble_nontail_cont.30618:
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30623
	jr	r31
ble_tail_else.30623:
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
	blez	r25 ble_tail_else.30625
	jr	r31
ble_tail_else.30625:
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
	blez	r25 ble_nontail_else.30627
	j	ble_nontail_cont.30628
ble_nontail_else.30627:
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
	beq	r25 r0 beq_else.30629
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30631
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
	j	beq_cont.30632
beq_else.30631:
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
beq_cont.30632:
	j	beq_cont.30630
beq_else.30629:
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
beq_cont.30630:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 32
	sw	r31 r30 44
	addi	r30 r30 48
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -48
	lw	r30 r31 44
ble_nontail_cont.30628:
	addi	r0 r1 1
	lw	r30 r2 28
	sub	r2 r1 r2
	lw	r30 r1 0
	j	init_dirvec_constants.3204
init_vecset_constants.3207:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.30633
	jr	r31
ble_tail_else.30633:
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
	blez	r25 ble_nontail_else.30635
	j	ble_nontail_cont.30636
ble_nontail_else.30635:
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
	beq	r25 r0 beq_else.30637
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30639
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
	j	beq_cont.30640
beq_else.30639:
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
beq_cont.30640:
	j	beq_cont.30638
beq_else.30637:
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
beq_cont.30638:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 8
	sw	r31 r30 20
	addi	r30 r30 24
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -24
	lw	r30 r31 20
ble_nontail_cont.30636:
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
	blez	r25 ble_nontail_else.30641
	j	ble_nontail_cont.30642
ble_nontail_else.30641:
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
	beq	r25 r0 beq_else.30643
	addi	r0 r8 2
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30645
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
	j	beq_cont.30646
beq_else.30645:
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
beq_cont.30646:
	j	beq_cont.30644
beq_else.30643:
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
beq_cont.30644:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 20
	sw	r31 r30 32
	addi	r30 r30 36
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -36
	lw	r30 r31 32
ble_nontail_cont.30642:
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
	blez	r25 ble_tail_else.30647
	jr	r31
ble_tail_else.30647:
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
	blez	r25 ble_nontail_else.30649
	j	ble_nontail_cont.30650
ble_nontail_else.30649:
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
	beq	r25 r0 beq_else.30651
	addi	r0 r8 2
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30653
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
	j	beq_cont.30654
beq_else.30653:
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
beq_cont.30654:
	j	beq_cont.30652
beq_else.30651:
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
beq_cont.30652:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 40
	sw	r31 r30 52
	addi	r30 r30 56
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -56
	lw	r30 r31 52
ble_nontail_cont.30650:
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
	blez	r25 ble_tail_else.30655
	jr	r31
ble_tail_else.30655:
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
	blez	r25 ble_nontail_else.30657
	j	ble_nontail_cont.30658
ble_nontail_else.30657:
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
	beq	r25 r0 beq_else.30659
	addi	r0 r9 2
	sub	r8 r9 r25
	beq	r25 r0 beq_else.30661
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
	j	beq_cont.30662
beq_else.30661:
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
beq_cont.30662:
	j	beq_cont.30660
beq_else.30659:
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
beq_cont.30660:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 60
	sw	r31 r30 72
	addi	r30 r30 76
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -76
	lw	r30 r31 72
ble_nontail_cont.30658:
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
	blez	r25 ble_tail_else.30663
	jr	r31
ble_tail_else.30663:
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
	blez	r25 ble_nontail_else.30665
	j	ble_nontail_cont.30666
ble_nontail_else.30665:
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
	beq	r25 r0 beq_else.30667
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30669
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
	j	beq_cont.30670
beq_else.30669:
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
beq_cont.30670:
	j	beq_cont.30668
beq_else.30667:
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
beq_cont.30668:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 36
	sw	r31 r30 48
	addi	r30 r30 52
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -52
	lw	r30 r31 48
ble_nontail_cont.30666:
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
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
	blez	r25 ble_nontail_else.30671
	j	ble_nontail_cont.30672
ble_nontail_else.30671:
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
	beq	r25 r0 beq_else.30673
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30675
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
	j	beq_cont.30676
beq_else.30675:
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
beq_cont.30676:
	j	beq_cont.30674
beq_else.30673:
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
beq_cont.30674:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 64
	sw	r31 r30 76
	addi	r30 r30 80
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -80
	lw	r30 r31 76
ble_nontail_cont.30672:
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
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
	blez	r25 ble_nontail_else.30677
	j	ble_nontail_cont.30678
ble_nontail_else.30677:
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
	beq	r25 r0 beq_else.30679
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30681
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
	j	beq_cont.30682
beq_else.30681:
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
beq_cont.30682:
	j	beq_cont.30680
beq_else.30679:
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
beq_cont.30680:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 92
	sw	r31 r30 104
	addi	r30 r30 108
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -108
	lw	r30 r31 104
ble_nontail_cont.30678:
	addi	r30 r30 104
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
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
	blez	r25 ble_nontail_else.30684
	j	ble_nontail_cont.30685
ble_nontail_else.30684:
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
	beq	r25 r0 beq_else.30686
	addi	r0 r7 2
	sub	r6 r7 r25
	beq	r25 r0 beq_else.30688
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
	j	beq_cont.30689
beq_else.30688:
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
beq_cont.30689:
	j	beq_cont.30687
beq_else.30686:
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
beq_cont.30687:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 28
	sw	r31 r30 40
	addi	r30 r30 44
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -44
	lw	r30 r31 40
ble_nontail_cont.30685:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
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
	blez	r25 ble_nontail_else.30691
	j	ble_nontail_cont.30692
ble_nontail_else.30691:
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
	blez	r25 ble_nontail_else.30693
	mov	r1 r4
	j	ble_nontail_cont.30694
ble_nontail_else.30693:
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
ble_nontail_cont.30694:
ble_nontail_cont.30692:
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
	blez	r25 ble_nontail_else.30695
	j	ble_nontail_cont.30696
ble_nontail_else.30695:
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
	blez	r25 ble_nontail_else.30697
	mov	r1 r4
	j	ble_nontail_cont.30698
ble_nontail_else.30697:
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
ble_nontail_cont.30698:
ble_nontail_cont.30696:
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
	blez	r25 ble_nontail_else.30699
	j	ble_nontail_cont.30700
ble_nontail_else.30699:
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
	blez	r25 ble_nontail_else.30701
	mov	r1 r4
	j	ble_nontail_cont.30702
ble_nontail_else.30701:
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
ble_nontail_cont.30702:
ble_nontail_cont.30700:
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
	mov.s f0 f19
	sw r31 r30 360
	jal min_caml_sinlib
	lw r30 r31 360
	mov.s f19 f1
	addi	r30 r30 360
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	lw	r30 r31 4
	addi	r30 r30 -360
	addi	r0 r2 1
	neg.s	f1 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	swc1	f0 r30 360
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
	mov.s f1 f19
	sw r31 r30 364
	jal min_caml_coslib
	lw r30 r31 364
	mov.s f19 f1
	mov.s f0 f19
	sw r31 r30 364
	jal min_caml_sinlib
	lw r30 r31 364
	mov.s f19 f2
	addi	r30 r30 364
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	lw	r30 r31 4
	addi	r30 r30 -364
	addi	r0 r2 0
	mul.s	f1 f2 f2
	sll	r2 r2 2
	swoc1	f2 r1 r2
	mov.s f0 f19
	sw r31 r30 364
	jal min_caml_coslib
	lw r30 r31 364
	mov.s f19 f0
	addi	r30 r30 364
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	lw	r30 r31 4
	addi	r30 r30 -364
	addi	r0 r2 2
	mul.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 364
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_beam
	lw	r30 r31 4
	addi	r30 r30 -364
	addi	r0 r2 0
	sw	r1 r30 364
	sw	r2 r30 368
	sw	r31 r30 372
	addi	r30 r30 376
	jal	min_caml_read_float
	addi	r30 r30 -376
	lw	r30 r31 372
	lw	r30 r1 368
	sll	r1 r1 2
	lw	r30 r2 364
	swoc1	f0 r2 r1
	addi	r0 r1 0
	sw	r1 r30 372
	sw	r31 r30 376
	addi	r30 r30 380
	jal	read_nth_object.2879
	addi	r30 r30 -380
	lw	r30 r31 376
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30703
	addi	r0 r1 1
	sw	r1 r30 376
	sw	r31 r30 380
	addi	r30 r30 384
	jal	read_nth_object.2879
	addi	r30 r30 -384
	lw	r30 r31 380
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30705
	addi	r0 r1 2
	sw	r1 r30 380
	sw	r31 r30 384
	addi	r30 r30 388
	jal	read_nth_object.2879
	addi	r30 r30 -388
	lw	r30 r31 384
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30707
	addi	r0 r1 3
	sw	r1 r30 384
	sw	r31 r30 388
	addi	r30 r30 392
	jal	read_nth_object.2879
	addi	r30 r30 -392
	lw	r30 r31 388
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30709
	addi	r0 r1 4
	sw	r1 r30 388
	sw	r31 r30 392
	addi	r30 r30 396
	jal	read_nth_object.2879
	addi	r30 r30 -396
	lw	r30 r31 392
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30711
	addi	r0 r1 5
	sw	r31 r30 392
	addi	r30 r30 396
	jal	read_object.2881
	addi	r30 r30 -396
	lw	r30 r31 392
	j	beq_cont.30712
beq_else.30711:
	addi	r30 r30 392
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -392
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 388
	swo	r3 r1 r2
beq_cont.30712:
	j	beq_cont.30710
beq_else.30709:
	addi	r30 r30 392
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -392
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 384
	swo	r3 r1 r2
beq_cont.30710:
	j	beq_cont.30708
beq_else.30707:
	addi	r30 r30 392
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -392
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 380
	swo	r3 r1 r2
beq_cont.30708:
	j	beq_cont.30706
beq_else.30705:
	addi	r30 r30 392
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -392
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 376
	swo	r3 r1 r2
beq_cont.30706:
	j	beq_cont.30704
beq_else.30703:
	addi	r30 r30 392
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -392
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 372
	swo	r3 r1 r2
beq_cont.30704:
	addi	r0 r1 0
	addi	r0 r2 0
	sw	r1 r30 392
	sw	r2 r30 396
	sw	r31 r30 400
	addi	r30 r30 404
	jal	min_caml_read_int
	addi	r30 r30 -404
	lw	r30 r31 400
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30713
	addi	r0 r2 1
	sw	r1 r30 400
	sw	r2 r30 404
	sw	r31 r30 408
	addi	r30 r30 412
	jal	min_caml_read_int
	addi	r30 r30 -412
	lw	r30 r31 408
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30715
	addi	r0 r2 2
	sw	r1 r30 408
	sw	r2 r30 412
	sw	r31 r30 416
	addi	r30 r30 420
	jal	min_caml_read_int
	addi	r30 r30 -420
	lw	r30 r31 416
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30717
	addi	r0 r2 3
	sw	r1 r30 416
	sw	r2 r30 420
	sw	r31 r30 424
	addi	r30 r30 428
	jal	min_caml_read_int
	addi	r30 r30 -428
	lw	r30 r31 424
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30719
	addi	r0 r2 4
	sw	r1 r30 424
	sw	r2 r30 428
	sw	r31 r30 432
	addi	r30 r30 436
	jal	min_caml_read_int
	addi	r30 r30 -436
	lw	r30 r31 432
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30721
	addi	r0 r2 5
	sw	r1 r30 432
	sw	r31 r30 436
	addi	r30 r30 440
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -440
	lw	r30 r31 436
	lw	r30 r2 428
	sll	r2 r2 2
	lw	r30 r3 432
	swo	r3 r1 r2
	j	beq_cont.30722
beq_else.30721:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 436
	addi	r30 r30 440
	jal	min_caml_create_array
	addi	r30 r30 -440
	lw	r30 r31 436
beq_cont.30722:
	lw	r30 r2 420
	sll	r2 r2 2
	lw	r30 r3 424
	swo	r3 r1 r2
	j	beq_cont.30720
beq_else.30719:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 436
	addi	r30 r30 440
	jal	min_caml_create_array
	addi	r30 r30 -440
	lw	r30 r31 436
beq_cont.30720:
	lw	r30 r2 412
	sll	r2 r2 2
	lw	r30 r3 416
	swo	r3 r1 r2
	j	beq_cont.30718
beq_else.30717:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 436
	addi	r30 r30 440
	jal	min_caml_create_array
	addi	r30 r30 -440
	lw	r30 r31 436
beq_cont.30718:
	lw	r30 r2 404
	sll	r2 r2 2
	lw	r30 r3 408
	swo	r3 r1 r2
	j	beq_cont.30716
beq_else.30715:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 436
	addi	r30 r30 440
	jal	min_caml_create_array
	addi	r30 r30 -440
	lw	r30 r31 436
beq_cont.30716:
	lw	r30 r2 396
	sll	r2 r2 2
	lw	r30 r3 400
	swo	r3 r1 r2
	j	beq_cont.30714
beq_else.30713:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 436
	addi	r30 r30 440
	jal	min_caml_create_array
	addi	r30 r30 -440
	lw	r30 r31 436
beq_cont.30714:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30723
	addi	r30 r30 436
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -436
	lw	r30 r3 392
	sll	r3 r3 2
	swo	r1 r2 r3
	addi	r0 r1 1
	addi	r0 r2 0
	sw	r1 r30 436
	sw	r2 r30 440
	sw	r31 r30 444
	addi	r30 r30 448
	jal	min_caml_read_int
	addi	r30 r30 -448
	lw	r30 r31 444
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30725
	addi	r0 r2 1
	sw	r1 r30 444
	sw	r2 r30 448
	sw	r31 r30 452
	addi	r30 r30 456
	jal	min_caml_read_int
	addi	r30 r30 -456
	lw	r30 r31 452
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30727
	addi	r0 r2 2
	sw	r1 r30 452
	sw	r2 r30 456
	sw	r31 r30 460
	addi	r30 r30 464
	jal	min_caml_read_int
	addi	r30 r30 -464
	lw	r30 r31 460
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30729
	addi	r0 r2 3
	sw	r1 r30 460
	sw	r2 r30 464
	sw	r31 r30 468
	addi	r30 r30 472
	jal	min_caml_read_int
	addi	r30 r30 -472
	lw	r30 r31 468
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30731
	addi	r0 r2 4
	sw	r1 r30 468
	sw	r31 r30 472
	addi	r30 r30 476
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -476
	lw	r30 r31 472
	lw	r30 r2 464
	sll	r2 r2 2
	lw	r30 r3 468
	swo	r3 r1 r2
	j	beq_cont.30732
beq_else.30731:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 472
	addi	r30 r30 476
	jal	min_caml_create_array
	addi	r30 r30 -476
	lw	r30 r31 472
beq_cont.30732:
	lw	r30 r2 456
	sll	r2 r2 2
	lw	r30 r3 460
	swo	r3 r1 r2
	j	beq_cont.30730
beq_else.30729:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 472
	addi	r30 r30 476
	jal	min_caml_create_array
	addi	r30 r30 -476
	lw	r30 r31 472
beq_cont.30730:
	lw	r30 r2 448
	sll	r2 r2 2
	lw	r30 r3 452
	swo	r3 r1 r2
	j	beq_cont.30728
beq_else.30727:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 472
	addi	r30 r30 476
	jal	min_caml_create_array
	addi	r30 r30 -476
	lw	r30 r31 472
beq_cont.30728:
	lw	r30 r2 440
	sll	r2 r2 2
	lw	r30 r3 444
	swo	r3 r1 r2
	j	beq_cont.30726
beq_else.30725:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 472
	addi	r30 r30 476
	jal	min_caml_create_array
	addi	r30 r30 -476
	lw	r30 r31 472
beq_cont.30726:
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_else.30733
	addi	r30 r30 472
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -472
	lw	r30 r3 436
	sll	r3 r3 2
	swo	r1 r2 r3
	addi	r0 r1 2
	sw	r31 r30 472
	addi	r30 r30 476
	jal	read_and_network.2889
	addi	r30 r30 -476
	lw	r30 r31 472
	j	beq_cont.30734
beq_else.30733:
beq_cont.30734:
	j	beq_cont.30724
beq_else.30723:
beq_cont.30724:
	addi	r30 r30 472
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	lw	r30 r31 4
	addi	r30 r30 -472
	addi	r0 r2 0
	addi	r0 r3 0
	addi	r0 r4 0
	sw	r1 r30 472
	sw	r2 r30 476
	sw	r3 r30 480
	sw	r4 r30 484
	sw	r31 r30 488
	addi	r30 r30 492
	jal	min_caml_read_int
	addi	r30 r30 -492
	lw	r30 r31 488
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30735
	addi	r0 r2 1
	sw	r1 r30 488
	sw	r2 r30 492
	sw	r31 r30 496
	addi	r30 r30 500
	jal	min_caml_read_int
	addi	r30 r30 -500
	lw	r30 r31 496
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30737
	addi	r0 r2 2
	sw	r1 r30 496
	sw	r2 r30 500
	sw	r31 r30 504
	addi	r30 r30 508
	jal	min_caml_read_int
	addi	r30 r30 -508
	lw	r30 r31 504
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30739
	addi	r0 r2 3
	sw	r1 r30 504
	sw	r2 r30 508
	sw	r31 r30 512
	addi	r30 r30 516
	jal	min_caml_read_int
	addi	r30 r30 -516
	lw	r30 r31 512
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30741
	addi	r0 r2 4
	sw	r1 r30 512
	sw	r2 r30 516
	sw	r31 r30 520
	addi	r30 r30 524
	jal	min_caml_read_int
	addi	r30 r30 -524
	lw	r30 r31 520
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30743
	addi	r0 r2 5
	sw	r1 r30 520
	sw	r31 r30 524
	addi	r30 r30 528
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -528
	lw	r30 r31 524
	lw	r30 r2 516
	sll	r2 r2 2
	lw	r30 r3 520
	swo	r3 r1 r2
	j	beq_cont.30744
beq_else.30743:
	addi	r0 r1 5
	addi	r0 r2 -1
	sw	r31 r30 524
	addi	r30 r30 528
	jal	min_caml_create_array
	addi	r30 r30 -528
	lw	r30 r31 524
beq_cont.30744:
	lw	r30 r2 508
	sll	r2 r2 2
	lw	r30 r3 512
	swo	r3 r1 r2
	j	beq_cont.30742
beq_else.30741:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 524
	addi	r30 r30 528
	jal	min_caml_create_array
	addi	r30 r30 -528
	lw	r30 r31 524
beq_cont.30742:
	lw	r30 r2 500
	sll	r2 r2 2
	lw	r30 r3 504
	swo	r3 r1 r2
	j	beq_cont.30740
beq_else.30739:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 524
	addi	r30 r30 528
	jal	min_caml_create_array
	addi	r30 r30 -528
	lw	r30 r31 524
beq_cont.30740:
	lw	r30 r2 492
	sll	r2 r2 2
	lw	r30 r3 496
	swo	r3 r1 r2
	j	beq_cont.30738
beq_else.30737:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 524
	addi	r30 r30 528
	jal	min_caml_create_array
	addi	r30 r30 -528
	lw	r30 r31 524
beq_cont.30738:
	lw	r30 r2 484
	sll	r2 r2 2
	lw	r30 r3 488
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.30736
beq_else.30735:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 524
	addi	r30 r30 528
	jal	min_caml_create_array
	addi	r30 r30 -528
	lw	r30 r31 524
	mov	r2 r1
beq_cont.30736:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30745
	addi	r0 r1 1
	addi	r0 r3 0
	sw	r2 r30 524
	sw	r1 r30 528
	sw	r3 r30 532
	sw	r31 r30 536
	addi	r30 r30 540
	jal	min_caml_read_int
	addi	r30 r30 -540
	lw	r30 r31 536
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30747
	addi	r0 r2 1
	sw	r1 r30 536
	sw	r2 r30 540
	sw	r31 r30 544
	addi	r30 r30 548
	jal	min_caml_read_int
	addi	r30 r30 -548
	lw	r30 r31 544
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30749
	addi	r0 r2 2
	sw	r1 r30 544
	sw	r2 r30 548
	sw	r31 r30 552
	addi	r30 r30 556
	jal	min_caml_read_int
	addi	r30 r30 -556
	lw	r30 r31 552
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30751
	addi	r0 r2 3
	sw	r1 r30 552
	sw	r2 r30 556
	sw	r31 r30 560
	addi	r30 r30 564
	jal	min_caml_read_int
	addi	r30 r30 -564
	lw	r30 r31 560
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.30753
	addi	r0 r2 4
	sw	r1 r30 560
	sw	r31 r30 564
	addi	r30 r30 568
	mov	r1 r2
	jal	read_net_item.2885
	addi	r30 r30 -568
	lw	r30 r31 564
	lw	r30 r2 556
	sll	r2 r2 2
	lw	r30 r3 560
	swo	r3 r1 r2
	j	beq_cont.30754
beq_else.30753:
	addi	r0 r1 4
	addi	r0 r2 -1
	sw	r31 r30 564
	addi	r30 r30 568
	jal	min_caml_create_array
	addi	r30 r30 -568
	lw	r30 r31 564
beq_cont.30754:
	lw	r30 r2 548
	sll	r2 r2 2
	lw	r30 r3 552
	swo	r3 r1 r2
	j	beq_cont.30752
beq_else.30751:
	addi	r0 r1 3
	addi	r0 r2 -1
	sw	r31 r30 564
	addi	r30 r30 568
	jal	min_caml_create_array
	addi	r30 r30 -568
	lw	r30 r31 564
beq_cont.30752:
	lw	r30 r2 540
	sll	r2 r2 2
	lw	r30 r3 544
	swo	r3 r1 r2
	j	beq_cont.30750
beq_else.30749:
	addi	r0 r1 2
	addi	r0 r2 -1
	sw	r31 r30 564
	addi	r30 r30 568
	jal	min_caml_create_array
	addi	r30 r30 -568
	lw	r30 r31 564
beq_cont.30750:
	lw	r30 r2 532
	sll	r2 r2 2
	lw	r30 r3 536
	swo	r3 r1 r2
	mov	r2 r1
	j	beq_cont.30748
beq_else.30747:
	addi	r0 r1 1
	addi	r0 r2 -1
	sw	r31 r30 564
	addi	r30 r30 568
	jal	min_caml_create_array
	addi	r30 r30 -568
	lw	r30 r31 564
	mov	r2 r1
beq_cont.30748:
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_else.30755
	addi	r0 r1 2
	sw	r2 r30 564
	sw	r31 r30 568
	addi	r30 r30 572
	jal	read_or_network.2887
	addi	r30 r30 -572
	lw	r30 r31 568
	lw	r30 r2 528
	sll	r2 r2 2
	lw	r30 r3 564
	swo	r3 r1 r2
	j	beq_cont.30756
beq_else.30755:
	addi	r0 r1 2
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_create_array
	addi	r30 r30 -572
	lw	r30 r31 568
beq_cont.30756:
	lw	r30 r2 480
	sll	r2 r2 2
	lw	r30 r3 524
	swo	r3 r1 r2
	j	beq_cont.30746
beq_else.30745:
	addi	r0 r1 1
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_create_array
	addi	r30 r30 -572
	lw	r30 r31 568
beq_cont.30746:
	lw	r30 r2 476
	sll	r2 r2 2
	lw	r30 r3 472
	swo	r1 r3 r2
	addi	r0 r1 80
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_print_char
	addi	r30 r30 -572
	lw	r30 r31 568
	addi	r0 r1 51
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_print_char
	addi	r30 r30 -572
	lw	r30 r31 568
	addi	r0 r1 10
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_print_char
	addi	r30 r30 -572
	lw	r30 r31 568
	addi	r30 r30 568
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	lw	r30 r31 4
	addi	r30 r30 -568
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_print_int
	addi	r30 r30 -572
	lw	r30 r31 568
	addi	r0 r1 32
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_print_char
	addi	r30 r30 -572
	lw	r30 r31 568
	addi	r30 r30 568
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	lw	r30 r31 4
	addi	r30 r30 -568
	addi	r0 r2 1
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_print_int
	addi	r30 r30 -572
	lw	r30 r31 568
	addi	r0 r1 32
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_print_char
	addi	r30 r30 -572
	lw	r30 r31 568
	addi	r0 r1 255
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_print_int
	addi	r30 r30 -572
	lw	r30 r31 568
	addi	r0 r1 10
	sw	r31 r30 568
	addi	r30 r30 572
	jal	min_caml_print_char
	addi	r30 r30 -572
	lw	r30 r31 568
	addi	r0 r1 4
	addi	r30 r30 568
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -568
	addi	r0 r3 120
	addi	r0 r4 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 568
	sw	r1 r30 572
	sw	r3 r30 576
	sw	r31 r30 580
	addi	r30 r30 584
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -584
	lw	r30 r31 580
	mov	r2 r1
	addi	r30 r30 580
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -580
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r1 r3 r1
	sw	r2 r30 580
	sw	r31 r30 584
	addi	r30 r30 588
	jal	min_caml_create_array
	addi	r30 r30 -588
	lw	r30 r31 584
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 580
	sw	r1 r2 0
	lw	r30 r1 576
	sw	r31 r30 584
	addi	r30 r30 588
	jal	min_caml_create_array
	addi	r30 r30 -588
	lw	r30 r31 584
	lw	r30 r2 572
	sll	r2 r3 2
	lw	r30 r4 568
	swo	r1 r4 r3
	addi	r30 r30 584
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	lw	r30 r31 4
	addi	r30 r30 -584
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 118
	addi	r0 r3 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 584
	sw	r2 r30 588
	sw	r31 r30 592
	addi	r30 r30 596
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -596
	lw	r30 r31 592
	mov	r2 r1
	addi	r30 r30 592
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -592
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r1 r3 r1
	sw	r2 r30 592
	sw	r31 r30 596
	addi	r30 r30 600
	jal	min_caml_create_array
	addi	r30 r30 -600
	lw	r30 r31 596
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 592
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 588
	sll	r2 r2 2
	lw	r30 r3 584
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 596
	sw	r31 r30 600
	addi	r30 r30 604
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -604
	lw	r30 r31 600
	mov	r2 r1
	addi	r30 r30 600
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
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
	lw	r30 r3 584
	swo	r1 r3 r2
	addi	r0 r1 116
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
	lw	r30 r3 584
	swo	r1 r3 r2
	addi	r0 r1 115
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
	lw	r30 r3 584
	swo	r1 r3 r2
	addi	r0 r1 114
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
	lw	r30 r3 584
	swo	r1 r3 r2
	addi	r0 r2 113
	sw	r31 r30 628
	addi	r30 r30 632
	mov	r1 r3
	jal	create_dirvec_elements.3199
	addi	r30 r30 -632
	lw	r30 r31 628
	addi	r0 r1 3
	addi	r30 r30 628
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -628
	addi	r0 r3 120
	addi	r0 r4 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 628
	sw	r1 r30 632
	sw	r3 r30 636
	sw	r31 r30 640
	addi	r30 r30 644
	mov	r1 r4
	jal	min_caml_create_float_array
	addi	r30 r30 -644
	lw	r30 r31 640
	mov	r2 r1
	addi	r30 r30 640
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -640
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r1 r3 r1
	sw	r2 r30 640
	sw	r31 r30 644
	addi	r30 r30 648
	jal	min_caml_create_array
	addi	r30 r30 -648
	lw	r30 r31 644
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 640
	sw	r1 r2 0
	lw	r30 r1 636
	sw	r31 r30 644
	addi	r30 r30 648
	jal	min_caml_create_array
	addi	r30 r30 -648
	lw	r30 r31 644
	lw	r30 r2 632
	sll	r2 r3 2
	lw	r30 r4 628
	swo	r1 r4 r3
	addi	r30 r30 644
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	lw	r30 r31 4
	addi	r30 r30 -644
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 118
	addi	r0 r3 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 644
	sw	r2 r30 648
	sw	r31 r30 652
	addi	r30 r30 656
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -656
	lw	r30 r31 652
	mov	r2 r1
	addi	r30 r30 652
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -652
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r1 r3 r1
	sw	r2 r30 652
	sw	r31 r30 656
	addi	r30 r30 660
	jal	min_caml_create_array
	addi	r30 r30 -660
	lw	r30 r31 656
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 652
	sw	r1 r2 0
	mov	r1 r2
	lw	r30 r2 648
	sll	r2 r2 2
	lw	r30 r3 644
	swo	r1 r3 r2
	addi	r0 r1 117
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 656
	sw	r31 r30 660
	addi	r30 r30 664
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -664
	lw	r30 r31 660
	mov	r2 r1
	addi	r30 r30 660
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
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
	lw	r30 r3 644
	swo	r1 r3 r2
	addi	r0 r1 116
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
	lw	r30 r3 644
	swo	r1 r3 r2
	addi	r0 r1 115
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
	lw	r30 r3 644
	swo	r1 r3 r2
	addi	r0 r2 114
	sw	r31 r30 680
	addi	r30 r30 684
	mov	r1 r3
	jal	create_dirvec_elements.3199
	addi	r30 r30 -684
	lw	r30 r31 680
	addi	r0 r1 2
	sw	r31 r30 680
	addi	r30 r30 684
	jal	create_dirvecs.3202
	addi	r30 r30 -684
	lw	r30 r31 680
	addi	r0 r1 9
	addi	r0 r2 0
	addi	r0 r3 0
	sw	r31 r30 680
	addi	r30 r30 684
	jal	calc_dirvec_rows.3193
	addi	r30 r30 -684
	lw	r30 r31 680
	addi	r0 r1 4
	addi	r30 r30 680
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -680
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r2 119
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r30 r30 680
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -680
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	addi	r0 r4 0
	sw	r1 r30 680
	sub	r4 r3 r25
	blez	r25 ble_nontail_else.30757
	j	ble_nontail_cont.30758
ble_nontail_else.30757:
	addi	r30 r30 684
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -684
	sll	r3 r5 2
	lwo	r4 r5 r4
	lw	r2 r5 4
	lw	r2 r6 0
	lw	r4 r7 4
	addi	r0 r8 1
	sw	r2 r30 684
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30759
	addi	r0 r8 2
	sub	r7 r8 r25
	beq	r25 r0 beq_else.30761
	sw	r5 r30 688
	sw	r3 r30 692
	sw	r31 r30 696
	addi	r30 r30 700
	mov	r2 r4
	mov	r1 r6
	jal	setup_second_table.2983
	addi	r30 r30 -700
	lw	r30 r31 696
	lw	r30 r2 692
	sll	r2 r3 2
	lw	r30 r4 688
	swo	r1 r4 r3
	j	beq_cont.30762
beq_else.30761:
	sw	r5 r30 688
	sw	r3 r30 692
	sw	r31 r30 696
	addi	r30 r30 700
	mov	r2 r4
	mov	r1 r6
	jal	setup_surface_table.2980
	addi	r30 r30 -700
	lw	r30 r31 696
	lw	r30 r2 692
	sll	r2 r3 2
	lw	r30 r4 688
	swo	r1 r4 r3
beq_cont.30762:
	j	beq_cont.30760
beq_else.30759:
	sw	r5 r30 688
	sw	r3 r30 692
	sw	r31 r30 696
	addi	r30 r30 700
	mov	r2 r4
	mov	r1 r6
	jal	setup_rect_table.2977
	addi	r30 r30 -700
	lw	r30 r31 696
	lw	r30 r2 692
	sll	r2 r3 2
	lw	r30 r4 688
	swo	r1 r4 r3
beq_cont.30760:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 684
	sw	r31 r30 696
	addi	r30 r30 700
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -700
	lw	r30 r31 696
ble_nontail_cont.30758:
	addi	r0 r2 118
	lw	r30 r1 680
	sw	r31 r30 696
	addi	r30 r30 700
	jal	init_dirvec_constants.3204
	addi	r30 r30 -700
	lw	r30 r31 696
	addi	r0 r1 3
	addi	r30 r30 696
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -696
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r2 119
	sw	r31 r30 696
	addi	r30 r30 700
	jal	init_dirvec_constants.3204
	addi	r30 r30 -700
	lw	r30 r31 696
	addi	r0 r1 2
	sw	r31 r30 696
	addi	r30 r30 700
	jal	init_vecset_constants.3207
	addi	r30 r30 -700
	lw	r30 r31 696
	addi	r30 r30 696
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	lw	r30 r31 4
	addi	r30 r30 -696
	lw	r1 r1 0
	addi	r30 r30 696
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -696
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
	addi	r30 r30 696
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	lw	r30 r31 4
	addi	r30 r30 -696
	addi	r30 r30 696
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -696
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 1
	sub	r2 r3 r2
	sw	r31 r30 696
	addi	r30 r30 700
	jal	iter_setup_dirvec_constants.2986
	addi	r30 r30 -700
	lw	r30 r31 696
	addi	r30 r30 696
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	lw	r30 r31 4
	addi	r30 r30 -696
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r1
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.30763
	j	ble_nontail_cont.30764
ble_nontail_else.30763:
	addi	r30 r30 696
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -696
	sll	r1 r3 2
	lwo	r2 r3 r2
	lw	r2 r3 8
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30765
	j	beq_cont.30766
beq_else.30765:
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
	blez	r25 bfle_nontail_else.30767
	addi	r0 r3 1
	j	bfle_nontail_cont.30768
bfle_nontail_else.30767:
	addi	r0 r3 0
bfle_nontail_cont.30768:
	addi	r0 r4 0
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30769
	lw	r2 r3 4
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30771
	addi	r0 r4 2
	sub	r3 r4 r25
	beq	r25 r0 beq_else.30773
	j	beq_cont.30774
beq_else.30773:
	sw	r31 r30 696
	addi	r30 r30 700
	jal	setup_surface_reflection.3221
	addi	r30 r30 -700
	lw	r30 r31 696
beq_cont.30774:
	j	beq_cont.30772
beq_else.30771:
	sw	r31 r30 696
	addi	r30 r30 700
	jal	setup_rect_reflection.3218
	addi	r30 r30 -700
	lw	r30 r31 696
beq_cont.30772:
	j	beq_cont.30770
beq_else.30769:
beq_cont.30770:
beq_cont.30766:
ble_nontail_cont.30764:
	addi	r0 r1 0
	addi	r0 r2 0
	addi	r30 r30 696
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -696
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	addi	r30 r30 696
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -696
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r3 r4 r3
	sub	r1 r3 r1
	sw	r2 r30 696
	swc1	f0 r30 700
	sw	r31 r30 704
	addi	r30 r30 708
	jal	min_caml_float_of_int
	addi	r30 r30 -708
	lw	r30 r31 704
	lwc1	 r30 f1 700
	mul.s	f1 f0 f0
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f1
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	add.s	f1 f2 f1
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	mul.s	f0 f2 f2
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f2 f3 f2
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mul.s	f0 f3 f0
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r2
	lw	r30 r1 240
	lw	r30 r3 696
	sw	r31 r30 704
	addi	r30 r30 708
	mov.s	f2 f31
	mov.s	f0 f2
	mov.s	f1 f0
	mov.s	f31 f1
	jal	pretrace_pixels.3143
	addi	r30 r30 -708
	lw	r30 r31 704
	addi	r0 r2 0
	addi	r0 r1 2
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r3 r4 r3
	sub	r3 r2 r25
	blez	r25 ble_tail_else.30775
	addi	r30 r30 704
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -704
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 1
	sub	r3 r4 r3
	sw	r2 r30 704
	sub	r3 r2 r25
	blez	r25 ble_nontail_else.30776
	addi	r0 r3 1
	addi	r30 r30 708
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -708
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	addi	r30 r30 708
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -708
	addi	r0 r5 1
	sll	r5 r5 2
	lwo	r4 r5 r4
	sub	r3 r4 r3
	sw	r1 r30 708
	swc1	f0 r30 712
	sw	r31 r30 716
	addi	r30 r30 720
	mov	r1 r3
	jal	min_caml_float_of_int
	addi	r30 r30 -720
	lw	r30 r31 716
	lwc1	 r30 f1 712
	mul.s	f1 f0 f0
	addi	r30 r30 716
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	lw	r30 r31 4
	addi	r30 r30 -716
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f1
	addi	r30 r30 716
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	lw	r30 r31 4
	addi	r30 r30 -716
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	add.s	f1 f2 f1
	addi	r30 r30 716
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	lw	r30 r31 4
	addi	r30 r30 -716
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	mul.s	f0 f2 f2
	addi	r30 r30 716
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	lw	r30 r31 4
	addi	r30 r30 -716
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f2 f3 f2
	addi	r30 r30 716
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	lw	r30 r31 4
	addi	r30 r30 -716
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mul.s	f0 f3 f0
	addi	r30 r30 716
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	lw	r30 r31 4
	addi	r30 r30 -716
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r30 r30 716
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	lw	r30 r31 4
	addi	r30 r30 -716
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r2
	lw	r30 r1 356
	lw	r30 r3 708
	sw	r31 r30 716
	addi	r30 r30 720
	mov.s	f2 f31
	mov.s	f0 f2
	mov.s	f1 f0
	mov.s	f31 f1
	jal	pretrace_pixels.3143
	addi	r30 r30 -720
	lw	r30 r31 716
	j	ble_nontail_cont.30777
ble_nontail_else.30776:
ble_nontail_cont.30777:
	addi	r0 r1 0
	lw	r30 r2 704
	lw	r30 r3 124
	lw	r30 r4 240
	lw	r30 r5 356
	sw	r31 r30 716
	addi	r30 r30 720
	jal	scan_pixel.3154
	addi	r30 r30 -720
	lw	r30 r31 716
	addi	r0 r1 1
	addi	r0 r5 4
	lw	r30 r2 240
	lw	r30 r3 356
	lw	r30 r4 124
	j	scan_line.3160
ble_tail_else.30775:
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
