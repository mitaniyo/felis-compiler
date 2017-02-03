_min_caml_start:
	addi r0 r22 1
	sll r22 r22 27
	lui	r27 32
	lui	r27 32
	ori	r27 r27 4096
	addi	r0 r1 10
	srl r22 r21 0
	andi r21 r21 1
	addi r0 r26 1
	sll r26 r26 1
	addi r26 r26 1
	sub r0 r26 r26
	and r22 r26 r22
	sll r21 r21 1
	or r22 r21 r22
	addi	r0 r2 20
	srl r22 r21 0
	andi r21 r21 1
	addi r0 r26 1
	sll r26 r26 2
	addi r26 r26 1
	sub r0 r26 r26
	and r22 r26 r22
	sll r21 r21 2
	or r22 r21 r22
	sw	r31 r30 0
	addi	r0 r21 0
	sw	r21 r30 4
	addi	r30 r30 8
	jal	min_caml_create_array
	addi	r30 r30 -8
	lw	r30 r31 0
	mov	r2 r1
	srl r22 r21 1
	andi r21 r21 1
	addi r0 r26 1
	sll r26 r26 2
	addi r26 r26 1
	sub r0 r26 r26
	and r22 r26 r22
	sll r21 r21 2
	or r22 r21 r22
	addi	r0 r1 30
	srl r22 r21 0
	andi r21 r21 1
	addi r0 r26 1
	sll r26 r26 1
	addi r26 r26 1
	sub r0 r26 r26
	and r22 r26 r22
	sll r21 r21 1
	or r22 r21 r22
	sw	r31 r30 0
	addi	r0 r21 0
	sw	r21 r30 4
	addi	r30 r30 8
	jal	min_caml_create_array
	addi	r30 r30 -8
	lw	r30 r31 0
halt
