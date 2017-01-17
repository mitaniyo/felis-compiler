sqrt_sub.147:
	addi	r0 r2 30
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.397
	add.s	f1 f2 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f3 f4 f3
	mul.s	f3 f3 f4
	sub.s	f4 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.398
	addi	r0 r2 1
	add	r1 r2 r1
	mov.s	f3 f2
	j	sqrt_sub.147
bfle_tail_else.398:
	addi	r0 r2 1
	add	r1 r2 r1
	mov.s	f3 f1
	j	sqrt_sub.147
beq_tail_else.397:
	mov.s	f1 f0
	jr	r31
min_caml_sqrt:
sqrt.152:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.399
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	div.s	f2 f0 f0
	swc1	f1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	sqrt.152
	addi	r30 r30 -8
	lw	r30 r31 4
	lwc1	 r30 f1 0
	div.s	f1 f0 f0
	jr	r31
bfle_tail_else.399:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_tail_else.400
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.401
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	j	sqrt_sub.147
bfle_tail_else.401:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_tail_else.402
	jr	r31
bfeq_tail_else.402:
	jr	r31
bfeq_tail_else.400:
	jr	r31
min_caml_int_of_float:
int_of_float.154:
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	add.s	f0 f1 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_floor
	addi	r30 r30 -4
	lw	r30 r31 0
	j	min_caml_floor_retint
normalize.156:
	neg.s	f1 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.403
	div.s	f0 f2 f3
	swc1	f1 r30 0
	swc1	f2 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f3 f0
	jal	int_of_float.154
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.404
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	j	normalize.156
ble_tail_else.404:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.156
bfle_tail_else.403:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.405
	jr	r31
bfle_tail_else.405:
	div.s	f0 f2 f3
	swc1	f1 r30 0
	swc1	f2 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f3 f0
	jal	int_of_float.154
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.406
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	j	normalize.156
ble_tail_else.406:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.156
sin2.160:
	mul.s	f0 f0 f1
	lui	r24 41751
	ori	r24 r24 42202
	mtc1	r24 f2
	mul.s	f2 f1 f2
	lui	r24 10058
	ori	r24 r24 38460
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 43863
	ori	r24 r24 16287
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 12080
	ori	r24 r24 37425
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 45783
	ori	r24 r24 12843
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 13880
	ori	r24 r24 61213
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 47440
	ori	r24 r24 3329
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 15368
	ori	r24 r24 34953
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 48682
	ori	r24 r24 43691
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	add.s	f1 f2 f1
	mul.s	f1 f0 f0
	jr	r31
min_caml_cos:
cos.162:
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16585
	ori	r24 r24 4059
	mtc1	r24 f2
	swc1	f1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	normalize.156
	addi	r30 r30 -8
	lw	r30 r31 4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.407
	neg.s	f0 f0
	j	bfle_nontail_cont.408
bfle_nontail_else.407:
bfle_nontail_cont.408:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.409
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	j	bfle_nontail_cont.410
bfle_nontail_else.409:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
bfle_nontail_cont.410:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.411
	lwc1	 r30 f2 0
	sub.s	f2 f0 f0
	j	bfle_nontail_cont.412
bfle_nontail_else.411:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	lui	r24 49097
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.413
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f2 f0 f0
	j	bfle_nontail_cont.414
bfle_nontail_else.413:
bfle_nontail_cont.414:
bfle_nontail_cont.412:
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.415
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f2 f0 f0
	swc1	f1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	sin2.160
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	mul.s	f0 f1 f0
	jr	r31
bfle_tail_else.415:
	mul.s	f0 f0 f0
	lui	r24 8434
	ori	r24 r24 41309
	mtc1	r24 f2
	mul.s	f2 f0 f2
	lui	r24 42292
	ori	r24 r24 5059
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 10583
	ori	r24 r24 16287
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 44361
	ori	r24 r24 52133
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 12559
	ori	r24 r24 30407
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 46227
	ori	r24 r24 62078
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 14288
	ori	r24 r24 3329
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 47798
	ori	r24 r24 2913
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 15658
	ori	r24 r24 43691
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 48896
	ori	r24 r24 0
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	add.s	f0 f2 f0
	mul.s	f0 f1 f0
	jr	r31
min_caml_sin:
sin.164:
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16585
	ori	r24 r24 4059
	mtc1	r24 f2
	swc1	f1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	normalize.156
	addi	r30 r30 -8
	lw	r30 r31 4
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.416
	lwc1	 r30 f1 0
	sub.s	f1 f0 f0
	j	bfle_nontail_cont.417
bfle_nontail_else.416:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	lui	r24 49097
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.418
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f1 f0 f0
	j	bfle_nontail_cont.419
bfle_nontail_else.418:
bfle_nontail_cont.419:
bfle_nontail_cont.417:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.420
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	j	bfle_nontail_cont.421
bfle_nontail_else.420:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
bfle_nontail_cont.421:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.422
	neg.s	f0 f0
	j	bfle_nontail_cont.423
bfle_nontail_else.422:
bfle_nontail_cont.423:
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.424
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f2 f0 f0
	swc1	f1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	cos.162
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	mul.s	f0 f1 f0
	jr	r31
bfle_tail_else.424:
	mul.s	f0 f0 f2
	lui	r24 41751
	ori	r24 r24 42202
	mtc1	r24 f3
	mul.s	f3 f2 f3
	lui	r24 10058
	ori	r24 r24 38460
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 43863
	ori	r24 r24 16287
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 12080
	ori	r24 r24 37425
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 45783
	ori	r24 r24 12843
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 13880
	ori	r24 r24 61213
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 47440
	ori	r24 r24 3329
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 15368
	ori	r24 r24 34953
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 48682
	ori	r24 r24 43691
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f0
	mul.s	f0 f1 f0
	jr	r31
atan_sub.166:
	addi	r0 r2 30
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.425
	add.s	f1 f2 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f3 f4 f3
	swc1	f2 r30 0
	swc1	f1 r30 4
	sw	r1 r30 8
	swc1	f0 r30 12
	swc1	f3 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f3 f0
	jal	sin.164
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	cos.162
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	div.s	f1 f0 f0
	lwc1	 r30 f1 12
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.426
	addi	r0 r1 1
	j	bfle_nontail_cont.427
bfle_nontail_else.426:
	addi	r0 r1 0
bfle_nontail_cont.427:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.428
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lwc1	 r30 f0 16
	lwc1	 r30 f2 0
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.166
beq_tail_else.428:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lwc1	 r30 f0 4
	lwc1	 r30 f2 16
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.166
beq_tail_else.425:
	mov.s	f1 f0
	jr	r31
min_caml_atan:
atan.171:
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	addi	r0 r1 0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	lui	r24 49097
	ori	r24 r24 4059
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	j	atan_sub.166
