min_caml_fequal:
fequal.150:
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_tail_else.438
	addi	r0 r1 0
	jr	r31
bfeq_tail_else.438:
	addi	r0 r1 1
	jr	r31
min_caml_fless:
fless.153:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.439
	addi	r0 r1 1
	jr	r31
bfle_tail_else.439:
	addi	r0 r1 0
	jr	r31
min_caml_fispos:
fispos.156:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.440
	addi	r0 r1 1
	jr	r31
bfle_tail_else.440:
	addi	r0 r1 0
	jr	r31
min_caml_fisneg:
fisneg.158:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.441
	addi	r0 r1 1
	jr	r31
bfle_tail_else.441:
	addi	r0 r1 0
	jr	r31
min_caml_fiszero:
fiszero.160:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_tail_else.442
	addi	r0 r1 0
	jr	r31
bfeq_tail_else.442:
	addi	r0 r1 1
	jr	r31
min_caml_fhalf:
fhalf.162:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	jr	r31
min_caml_fsqr:
fsqr.164:
	mul.s	f0 f0 f0
	jr	r31
sqrt_sub.166:
	addi	r0 r2 100
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.443
	add.s	f1 f2 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f3 f4 f3
	mul.s	f3 f3 f4
	swc1	f1 r30 0
	swc1	f2 r30 4
	swc1	f3 r30 8
	swc1	f0 r30 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f4 f1
	jal	fless.153
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.444
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 0
	lwc1	 r30 f2 8
	j	sqrt_sub.166
beq_tail_else.444:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 8
	lwc1	 r30 f2 4
	j	sqrt_sub.166
beq_tail_else.443:
	mov.s	f1 f0
	jr	r31
min_caml_sqrt:
sqrt.171:
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 24330
	ori	r24 r24 50979
	mtc1	r24 f2
	j	sqrt_sub.166
floor_sub.173:
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.445
	add	r1 r2 r3
	addi	r0 r4 2
	div	r3 r4 r3
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r3 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r3
	jal	min_caml_float_of_int
	addi	r30 r30 -20
	lw	r30 r31 16
	mov.s	f0 f1
	lwc1	 r30 f0 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	fless.153
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.446
	lwc1	 r30 f0 12
	lw	r30 r1 0
	lw	r30 r2 8
	j	floor_sub.173
beq_tail_else.446:
	lwc1	 r30 f0 12
	lw	r30 r1 8
	lw	r30 r2 4
	j	floor_sub.173
beq_tail_else.445:
	j	min_caml_float_of_int
min_caml_floor:
floor.177:
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.447
	jr	r31
bfle_tail_else.447:
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.448
	jr	r31
bfle_tail_else.448:
	lui	r1 65408
	ori r1 r1 0
	j	floor_sub.173
min_caml_int_of_float:
int_of_float.179:
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	add.s	f0 f1 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	floor.177
	addi	r30 r30 -4
	lw	r30 r31 0
	j	min_caml_int_of_float_primitive
normalize.181:
	neg.s	f1 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.449
	div.s	f0 f2 f3
	swc1	f1 r30 0
	swc1	f2 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f3 f0
	jal	int_of_float.179
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.450
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
	j	normalize.181
ble_tail_else.450:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.181
bfle_tail_else.449:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.451
	jr	r31
bfle_tail_else.451:
	div.s	f0 f2 f3
	swc1	f1 r30 0
	swc1	f2 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f3 f0
	jal	int_of_float.179
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.452
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
	j	normalize.181
ble_tail_else.452:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.181
sin2.185:
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
cos.187:
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
	jal	normalize.181
	addi	r30 r30 -8
	lw	r30 r31 4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.453
	neg.s	f0 f0
	j	bfle_nontail_cont.454
bfle_nontail_else.453:
bfle_nontail_cont.454:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.455
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	j	bfle_nontail_cont.456
bfle_nontail_else.455:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
bfle_nontail_cont.456:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.457
	lwc1	 r30 f2 0
	sub.s	f2 f0 f0
	j	bfle_nontail_cont.458
bfle_nontail_else.457:
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
	blez	r25 bfle_nontail_else.459
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f2 f0 f0
	j	bfle_nontail_cont.460
bfle_nontail_else.459:
bfle_nontail_cont.460:
bfle_nontail_cont.458:
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.461
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
	jal	sin2.185
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	mul.s	f0 f1 f0
	jr	r31
bfle_tail_else.461:
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
sin.189:
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
	jal	normalize.181
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
	blez	r25 bfle_nontail_else.462
	lwc1	 r30 f1 0
	sub.s	f1 f0 f0
	j	bfle_nontail_cont.463
bfle_nontail_else.462:
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
	blez	r25 bfle_nontail_else.464
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f1 f0 f0
	j	bfle_nontail_cont.465
bfle_nontail_else.464:
bfle_nontail_cont.465:
bfle_nontail_cont.463:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.466
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	j	bfle_nontail_cont.467
bfle_nontail_else.466:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
bfle_nontail_cont.467:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.468
	neg.s	f0 f0
	j	bfle_nontail_cont.469
bfle_nontail_else.468:
bfle_nontail_cont.469:
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.470
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
	jal	cos.187
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	mul.s	f0 f1 f0
	jr	r31
bfle_tail_else.470:
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
atan_sub.191:
	addi	r0 r2 100
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.471
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
	jal	sin.189
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	cos.187
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	div.s	f1 f0 f0
	lwc1	 r30 f1 12
	sw	r31 r30 24
	addi	r30 r30 28
	jal	fless.153
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.472
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 16
	lwc1	 r30 f2 0
	j	atan_sub.191
beq_tail_else.472:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 4
	lwc1	 r30 f2 16
	j	atan_sub.191
beq_tail_else.471:
	mov.s	f1 f0
	jr	r31
min_caml_atan:
atan.196:
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
	swc1	f0 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov.s	f1 f0
	jal	min_caml_fneg
	addi	r30 r30 -12
	lw	r30 r31 8
	mov.s	f0 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	lwc1	 r30 f0 0
	lw	r30 r1 4
	j	atan_sub.191
