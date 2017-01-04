fless.21:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.67
	addi	r0 r1 1
	jr	r31
bfle_nontail_else.67:
	addi	r0 r1 0
	jr	r31
sqrt_sub.34:
	addi	r0 r2 100
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.68
	add.s	f1 f2 f3
	lui	r24 16384
	addi	r24 r24 0
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
	jal	fless.21
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.69
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 0
	lwc1	 r30 f2 8
	j	sqrt_sub.34
beq_tail_else.69:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 8
	lwc1	 r30 f2 4
	j	sqrt_sub.34
beq_tail_else.68:
	mov.s	f1 f0
	jr	r31
sqrt.39:
	addi	r0 r1 0
	lui	r24 0
	addi	r24 r24 0
	mtc1	r24 f1
	lui	r24 24330
	addi	r24 r24 50979
	mtc1	r24 f2
	j	sqrt_sub.34
_min_caml_start:
	lui	r27 32
	lui	r24 16256
	addi	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	sqrt.39
	addi	r30 r30 -4
	lw	r30 r31 0
halt
