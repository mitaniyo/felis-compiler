sqrt_sub.147:
	addi	r0 r18 30
	sub	r16 r18 r25
	beq	r25 r0 beq_tail_else.405
	add.s	f20 f21 f22
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f23
	div.s	f22 f23 f22
	mul.s	f22 f22 f23
	sub.s	f23 f19 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.406
	addi	r0 r18 1
	add	r16 r18 r16
	mov.s	f22 f21
	j	sqrt_sub.147
bfle_tail_else.406:
	addi	r0 r18 1
	add	r16 r18 r16
	mov.s	f22 f20
	j	sqrt_sub.147
beq_tail_else.405:
	addi	r0 r16 1
	sub	r17 r16 r25
	beq	r25 r0 beq_tail_else.407
	mov.s	f20 f19
	jr	r31
beq_tail_else.407:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f19
	div.s	f19 f20 f19
	jr	r31
min_caml_sqrtlib:
sqrtlib.153:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f20
	sub.s	f19 f20 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.408
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f20
	div.s	f20 f19 f19
	addi	r0 r16 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f20
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f21
	addi	r0 r17 1
	j	sqrt_sub.147
bfle_tail_else.408:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f20
	sub.s	f19 f20 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_tail_else.409
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f20
	sub.s	f19 f20 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.410
	addi	r0 r16 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f20
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f21
	addi	r0 r17 0
	j	sqrt_sub.147
bfle_tail_else.410:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f20
	sub.s	f19 f20 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_tail_else.411
	jr	r31
bfeq_tail_else.411:
	jr	r31
bfeq_tail_else.409:
	jr	r31
sin2.155:
	mul.s	f19 f19 f21
	lui	r24 41751
	ori	r24 r24 42202
	mtc1	r24 f22
	mul.s	f22 f21 f22
	lui	r24 10058
	ori	r24 r24 38460
	mtc1	r24 f23
	add.s	f22 f23 f22
	mul.s	f22 f21 f22
	lui	r24 43863
	ori	r24 r24 16287
	mtc1	r24 f23
	add.s	f22 f23 f22
	mul.s	f22 f21 f22
	lui	r24 12080
	ori	r24 r24 37425
	mtc1	r24 f23
	add.s	f22 f23 f22
	mul.s	f22 f21 f22
	lui	r24 45783
	ori	r24 r24 12843
	mtc1	r24 f23
	add.s	f22 f23 f22
	mul.s	f22 f21 f22
	lui	r24 13880
	ori	r24 r24 61213
	mtc1	r24 f23
	add.s	f22 f23 f22
	mul.s	f22 f21 f22
	lui	r24 47440
	ori	r24 r24 3329
	mtc1	r24 f23
	add.s	f22 f23 f22
	mul.s	f22 f21 f22
	lui	r24 15368
	ori	r24 r24 34953
	mtc1	r24 f23
	add.s	f22 f23 f22
	mul.s	f22 f21 f22
	lui	r24 48682
	ori	r24 r24 43691
	mtc1	r24 f23
	add.s	f22 f23 f22
	mul.s	f22 f21 f21
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f22
	add.s	f21 f22 f21
	mul.s	f21 f19 f19
	mul.s	f19 f20 f19
	jr	r31
cos2.158:
	mul.s	f19 f19 f19
	lui	r24 8434
	ori	r24 r24 41309
	mtc1	r24 f21
	mul.s	f21 f19 f21
	lui	r24 42292
	ori	r24 r24 5059
	mtc1	r24 f22
	add.s	f21 f22 f21
	mul.s	f21 f19 f21
	lui	r24 10583
	ori	r24 r24 16287
	mtc1	r24 f22
	add.s	f21 f22 f21
	mul.s	f21 f19 f21
	lui	r24 44361
	ori	r24 r24 52133
	mtc1	r24 f22
	add.s	f21 f22 f21
	mul.s	f21 f19 f21
	lui	r24 12559
	ori	r24 r24 30407
	mtc1	r24 f22
	add.s	f21 f22 f21
	mul.s	f21 f19 f21
	lui	r24 46227
	ori	r24 r24 62078
	mtc1	r24 f22
	add.s	f21 f22 f21
	mul.s	f21 f19 f21
	lui	r24 14288
	ori	r24 r24 3329
	mtc1	r24 f22
	add.s	f21 f22 f21
	mul.s	f21 f19 f21
	lui	r24 47798
	ori	r24 r24 2913
	mtc1	r24 f22
	add.s	f21 f22 f21
	mul.s	f21 f19 f21
	lui	r24 15658
	ori	r24 r24 43691
	mtc1	r24 f22
	add.s	f21 f22 f21
	mul.s	f21 f19 f21
	lui	r24 48896
	ori	r24 r24 0
	mtc1	r24 f22
	add.s	f21 f22 f21
	mul.s	f21 f19 f19
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f21
	add.s	f19 f21 f19
	mul.s	f19 f20 f19
	jr	r31
sin3.161:
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f21
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f22
	sub.s	f19 f22 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.412
	sub.s	f21 f19 f19
	j	sin3.161
bfle_tail_else.412:
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f21
	sub.s	f19 f21 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.413
	sub.s	f22 f19 f19
	j	cos2.158
bfle_tail_else.413:
	j	sin2.155
min_caml_sinlib:
sinlib.164:
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f20
	lui	r24 16585
	ori	r24 r24 4059
	mtc1	r24 f21
	div.s	f19 f21 f22
	cvt.w.s f22 f22
	cvt.s.w f22 f22
	lui	r24 49152
	ori	r24 r24 0
	mtc1	r24 f23
	sub.s	f23 f22 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.414
	mul.s	f22 f21 f20
	sub.s	f19 f20 f19
	j	sinlib.164
bfle_tail_else.414:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f23
	sub.s	f22 f23 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.415
	mul.s	f22 f21 f20
	sub.s	f19 f20 f19
	j	sinlib.164
bfle_tail_else.415:
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f22
	sub.s	f22 f19 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.416
	add.s	f19 f21 f19
	j	sinlib.164
bfle_tail_else.416:
	sub.s	f20 f19 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.417
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f20
	sub.s	f20 f19 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.418
	neg.s	f19 f19
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f20
	j	sin3.161
bfle_tail_else.418:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f20
	j	sin3.161
bfle_tail_else.417:
	sub.s	f19 f21 f19
	j	sinlib.164
cos3.166:
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f21
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f22
	sub.s	f19 f22 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.419
	sub.s	f21 f19 f19
	j	sin2.155
bfle_tail_else.419:
	j	cos2.158
min_caml_coslib:
coslib.169:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f20
	sub.s	f20 f19 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.420
	neg.s	f19 f19
	j	coslib.169
bfle_tail_else.420:
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f20
	lui	r24 16585
	ori	r24 r24 4059
	mtc1	r24 f21
	div.s	f19 f21 f22
	cvt.w.s f22 f22
	cvt.s.w f22 f22
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f23
	sub.s	f22 f23 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.421
	mul.s	f22 f21 f20
	sub.s	f19 f20 f19
	j	coslib.169
bfle_tail_else.421:
	sub.s	f19 f20 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.422
	sub.s	f19 f21 f19
	j	coslib.169
bfle_tail_else.422:
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f21
	sub.s	f19 f21 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.423
	sub.s	f20 f19 f19
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f20
	j	cos3.166
bfle_tail_else.423:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f20
	j	cos3.166
atan4.171:
	addi	r0 r18 30
	sub	r16 r18 r25
	beq	r25 r0 beq_tail_else.424
	add.s	f19 f20 f23
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f24
	div.s	f23 f24 f23
	mul.s	f23 f23 f24
	lui	r24 8434
	ori	r24 r24 41309
	mtc1	r24 f25
	mul.s	f25 f24 f25
	lui	r24 42292
	ori	r24 r24 5059
	mtc1	r24 f26
	add.s	f25 f26 f25
	mul.s	f25 f24 f25
	lui	r24 10583
	ori	r24 r24 16287
	mtc1	r24 f26
	add.s	f25 f26 f25
	mul.s	f25 f24 f25
	lui	r24 44361
	ori	r24 r24 52133
	mtc1	r24 f26
	add.s	f25 f26 f25
	mul.s	f25 f24 f25
	lui	r24 12559
	ori	r24 r24 30407
	mtc1	r24 f26
	add.s	f25 f26 f25
	mul.s	f25 f24 f25
	lui	r24 46227
	ori	r24 r24 62078
	mtc1	r24 f26
	add.s	f25 f26 f25
	mul.s	f25 f24 f25
	lui	r24 14288
	ori	r24 r24 3329
	mtc1	r24 f26
	add.s	f25 f26 f25
	mul.s	f25 f24 f25
	lui	r24 47798
	ori	r24 r24 2913
	mtc1	r24 f26
	add.s	f25 f26 f25
	mul.s	f25 f24 f25
	lui	r24 15658
	ori	r24 r24 43691
	mtc1	r24 f26
	add.s	f25 f26 f25
	mul.s	f25 f24 f25
	lui	r24 48896
	ori	r24 r24 0
	mtc1	r24 f26
	add.s	f25 f26 f25
	mul.s	f25 f24 f24
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f25
	add.s	f24 f25 f24
	mul.s	f23 f23 f25
	lui	r24 41751
	ori	r24 r24 42202
	mtc1	r24 f26
	mul.s	f26 f25 f26
	lui	r24 10058
	ori	r24 r24 38460
	mtc1	r24 f27
	add.s	f26 f27 f26
	mul.s	f26 f25 f26
	lui	r24 43863
	ori	r24 r24 16287
	mtc1	r24 f27
	add.s	f26 f27 f26
	mul.s	f26 f25 f26
	lui	r24 12080
	ori	r24 r24 37425
	mtc1	r24 f27
	add.s	f26 f27 f26
	mul.s	f26 f25 f26
	lui	r24 45783
	ori	r24 r24 12843
	mtc1	r24 f27
	add.s	f26 f27 f26
	mul.s	f26 f25 f26
	lui	r24 13880
	ori	r24 r24 61213
	mtc1	r24 f27
	add.s	f26 f27 f26
	mul.s	f26 f25 f26
	lui	r24 47440
	ori	r24 r24 3329
	mtc1	r24 f27
	add.s	f26 f27 f26
	mul.s	f26 f25 f26
	lui	r24 15368
	ori	r24 r24 34953
	mtc1	r24 f27
	add.s	f26 f27 f26
	mul.s	f26 f25 f26
	lui	r24 48682
	ori	r24 r24 43691
	mtc1	r24 f27
	add.s	f26 f27 f26
	mul.s	f26 f25 f25
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f26
	add.s	f25 f26 f25
	mul.s	f25 f23 f25
	div.s	f25 f24 f24
	sub.s	f24 f21 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.425
	addi	r0 r18 1
	add	r16 r18 r16
	mov.s	f23 f20
	j	atan4.171
bfle_tail_else.425:
	addi	r0 r18 1
	add	r16 r18 r16
	mov.s	f23 f19
	j	atan4.171
beq_tail_else.424:
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f20
	addi	r0 r16 0
	sub	r17 r16 r25
	beq	r25 r0 beq_else.426
	sub.s	f20 f19 f19
	j	beq_cont.427
beq_else.426:
beq_cont.427:
	mul.s	f19 f22 f19
	jr	r31
atan3.178:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f21
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f22
	addi	r0 r17 0
	mov	r22 r17
	mov	r17 r16
	mov	r16 r22
	mov.s	f22 f29
	mov.s	f20 f22
	mov.s	f29 f20
	mov.s	f21 f29
	mov.s	f19 f21
	mov.s	f29 f19
	j	atan4.171
atan2.182:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f21
	sub.s	f19 f21 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.428
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f21
	div.s	f21 f19 f19
	addi	r0 r16 1
	j	atan3.178
bfle_tail_else.428:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f21
	sub.s	f19 f21 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_tail_else.429
	addi	r0 r16 0
	j	atan3.178
bfeq_tail_else.429:
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f19
	mul.s	f20 f19 f19
	jr	r31
min_caml_atanlib:
atanlib.185:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f20
	sub.s	f20 f19 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.430
	neg.s	f19 f19
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f20
	j	atan2.182
bfle_tail_else.430:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f20
	j	atan2.182
