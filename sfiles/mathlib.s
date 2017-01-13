min_caml_fequal:
fequal.106:
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_tail_else.324
	addi	r0 r1 0
	jr	r31
bfeq_tail_else.324:
	addi	r0 r1 1
	jr	r31
min_caml_fless:
fless.109:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.325
	addi	r0 r1 1
	jr	r31
bfle_tail_else.325:
	addi	r0 r1 0
	jr	r31
min_caml_fispos:
fispos.112:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.326
	addi	r0 r1 1
	jr	r31
bfle_tail_else.326:
	addi	r0 r1 0
	jr	r31
min_caml_fisneg:
fisneg.114:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.327
	addi	r0 r1 1
	jr	r31
bfle_tail_else.327:
	addi	r0 r1 0
	jr	r31
min_caml_fiszero:
fiszero.116:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_tail_else.328
	addi	r0 r1 0
	jr	r31
bfeq_tail_else.328:
	addi	r0 r1 1
	jr	r31
min_caml_fhalf:
fhalf.118:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	jr	r31
min_caml_fsqr:
fsqr.120:
	mul.s	f0 f0 f0
	jr	r31
sqrt_sub.122:
	addi	r0 r2 100
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.329
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
	jal	fless.109
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.330
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 0
	lwc1	 r30 f2 8
	j	sqrt_sub.122
beq_tail_else.330:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 8
	lwc1	 r30 f2 4
	j	sqrt_sub.122
beq_tail_else.329:
	mov.s	f1 f0
	jr	r31
min_caml_fsqrt:
sqrt.127:
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 24330
	ori	r24 r24 50979
	mtc1	r24 f2
	j	sqrt_sub.122
floor_sub.129:
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.331
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
	jal	fless.109
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.332
	lwc1	 r30 f0 12
	lw	r30 r1 0
	lw	r30 r2 8
	j	floor_sub.129
beq_tail_else.332:
	lwc1	 r30 f0 12
	lw	r30 r1 8
	lw	r30 r2 4
	j	floor_sub.129
beq_tail_else.331:
	j	min_caml_float_of_int
min_caml_floor:
floor.133:
	lui	r1 32767
	ori r1 r1 65535
	lui	r1 32768
	ori r1 r1 1
	addi	r0 r1 1
	lui	r1 32768
	ori r1 r1 0
	addi	r0 r2 2
	div	r1 r2 r1
	lui	r2 32767
	ori r2 r2 65535
	addi	r0 r3 2
	div	r2 r3 r2
	j	floor_sub.129
fact.135:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.333
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_float_of_int
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	fact.135
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	mul.s	f1 f0 f0
	jr	r31
beq_tail_else.333:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
normalize.137:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	mul.s	f1 f2 f2
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f3 f1 f3
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f3 f1
	jal	fless.109
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.334
	lwc1	 r30 f0 0
	lwc1	 r30 f1 8
	add.s	f1 f0 f0
	lwc1	 r30 f1 4
	j	normalize.137
beq_tail_else.334:
	lwc1	 r30 f0 8
	lwc1	 r30 f1 4
	sw	r31 r30 12
	addi	r30 r30 16
	jal	fless.109
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.335
	lwc1	 r30 f0 8
	jr	r31
beq_tail_else.335:
	lwc1	 r30 f0 0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lwc1	 r30 f1 4
	j	normalize.137
cos_coe.140:
	addi	r0 r2 2
	div	r1 r2 r2
	addi	r0 r3 2
	mult	r2 r3 r2
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.336
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
beq_tail_else.336:
	addi	r0 r2 2
	div	r1 r2 r2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	fact.135
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	div.s	f1 f0 f0
	addi	r0 r1 2
	lw	r30 r2 0
	div	r2 r1 r1
	addi	r0 r3 2
	mult	r1 r3 r1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.337
	j	min_caml_fneg
beq_tail_else.337:
	jr	r31
cos_sub.142:
	mul.s	f1 f0 f1
	swc1	f0 r30 0
	sw	r1 r30 4
	swc1	f1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	cos_coe.140
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	add.s	f1 f0 f0
	addi	r0 r1 0
	lw	r30 r2 4
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.338
	addi	r0 r1 1
	sub	r2 r1 r1
	lwc1	 r30 f1 0
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	cos_sub.142
beq_tail_else.338:
	jr	r31
min_caml_cos:
cos.146:
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	sw	r31 r30 0
	addi	r30 r30 4
	jal	normalize.137
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 20
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	j	cos_sub.142
sin_coe.148:
	addi	r0 r2 2
	div	r1 r2 r2
	addi	r0 r3 2
	mult	r2 r3 r2
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.339
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 0
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	fact.135
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	div.s	f1 f0 f0
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	addi	r0 r2 2
	div	r1 r2 r1
	addi	r0 r2 2
	div	r1 r2 r2
	addi	r0 r3 2
	mult	r2 r3 r2
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.340
	j	min_caml_fneg
beq_tail_else.340:
	jr	r31
beq_tail_else.339:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
sin_sub.150:
	mul.s	f1 f0 f1
	swc1	f0 r30 0
	sw	r1 r30 4
	swc1	f1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	sin_coe.148
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	add.s	f1 f0 f0
	addi	r0 r1 0
	lw	r30 r2 4
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.341
	addi	r0 r1 1
	sub	r2 r1 r1
	lwc1	 r30 f1 0
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	sin_sub.150
beq_tail_else.341:
	jr	r31
min_caml_sin:
sin.154:
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	sw	r31 r30 0
	addi	r30 r30 4
	jal	normalize.137
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 20
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	j	sin_sub.150
atan_sub.156:
	addi	r0 r2 100
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.342
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
	jal	sin.154
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	cos.146
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	div.s	f1 f0 f0
	lwc1	 r30 f1 12
	sw	r31 r30 24
	addi	r30 r30 28
	jal	fless.109
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.343
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 16
	lwc1	 r30 f2 0
	j	atan_sub.156
beq_tail_else.343:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 4
	lwc1	 r30 f2 16
	j	atan_sub.156
beq_tail_else.342:
	mov.s	f1 f0
	jr	r31
min_caml_atan:
atan.161:
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
	j	atan_sub.156
