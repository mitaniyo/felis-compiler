f.12:
	addi	r0 r3 1000
	srl r22 r21 0
	andi r21 r21 1
	sll r21 r21 3
	or r22 r21 r22
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.36
	addi	r0 r3 1000
	srl r22 r21 0
	andi r21 r21 1
	sll r21 r21 3
	or r22 r21 r22
	addi	r0 r4 1
	srl r22 r21 0
	andi r21 r21 1
	sll r21 r21 4
	or r22 r21 r22
	add	r2 r4 r4
	sw	r2 r30 0
	srl r22 r21 2
	andi r21 r21 1
	sw	r21 r30 4
	sw	r1 r30 8
	srl r22 r21 1
	andi r21 r21 1
	sw	r21 r30 12
	sw	r31 r30 16
	addi	r0 r21 0
	sw	r21 r30 20
	addi	r30 r30 24
	mov	r2 r4
	srl r22 r21 4
	andi r21 r21 1
	sll r21 r21 2
	or r22 r21 r22
	mov	r1 r3
	srl r22 r21 3
	andi r21 r21 1
	sll r21 r21 1
	or r22 r21 r22
	jal	min_caml_create_array
	addi	r30 r30 -24
	lw	r30 r31 16
	lw	r30 r2 8
	lw	r30 r21 12
	sll r21 r21 2
	or r22 r21 r22
	sll	r2 r3 3
	srl r22 r21 2
	andi r21 r21 1
	sll r21 r21 3
	or r22 r21 r22
	addi	r3 r3 4
	andi r21 r21 1
	sll r21 r21 3
	or r22 r21 r22
	addi	r3 r3 4
	lwo	r1 r3 r21
	addi	r3 r3 -4
	lwo	r1 r3 r1
	sll r21 r21 1
	or r22 r21 r22
	addi	r0 r3 1
	srl r22 r21 0
	andi r21 r21 1
	sll r21 r21 3
	or r22 r21 r22
	add	r2 r3 r2
	addi	r0 r3 1
	srl r22 r21 0
	andi r21 r21 1
	sll r21 r21 3
	or r22 r21 r22
	lw	r30 r4 0
	lw	r30 r21 4
	sll r21 r21 4
	or r22 r21 r22
	add	r4 r3 r3
	sw	r1 r30 16
	srl r22 r21 1
	andi r21 r21 1
	sw	r21 r30 20
	sw	r31 r30 24
	addi	r0 r21 0
	sw	r21 r30 28
	addi	r30 r30 32
	mov	r1 r2
	srl r22 r21 2
	andi r21 r21 1
	sll r21 r21 1
	or r22 r21 r22
	mov	r2 r3
	srl r22 r21 3
	andi r21 r21 1
	sll r21 r21 2
	or r22 r21 r22
	jal	f.12
	addi	r30 r30 -32
	lw	r30 r31 24
	lw	r30 r2 16
	lw	r30 r21 20
	sll r21 r21 2
	or r22 r21 r22
	add	r2 r1 r1
	jr	r31
beq_tail_else.36:
	addi	r0 r1 0
	srl r22 r21 0
	andi r21 r21 1
	sll r21 r21 1
	or r22 r21 r22
	jr	r31
_min_caml_start:
	addi r0 r22 1
	sll r22 r22 27
	lui	r27 32
	lui	r27 32
	ori	r27 r27 4096
	addi	r0 r1 0
	srl r22 r21 0
	andi r21 r21 1
	sll r21 r21 1
	or r22 r21 r22
	addi	r0 r2 0
	srl r22 r21 0
	andi r21 r21 1
	sll r21 r21 2
	or r22 r21 r22
	sw	r31 r30 0
	addi	r0 r21 0
	sw	r21 r30 4
	addi	r30 r30 8
	jal	f.12
	addi	r30 r30 -8
	lw	r30 r31 0
	sw	r31 r30 0
	addi	r0 r21 0
	sw	r21 r30 4
	addi	r30 r30 8
	jal	min_caml_print_int
	addi	r30 r30 -8
	lw	r30 r31 0
halt
