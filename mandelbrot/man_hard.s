write_header.183:
	addi	r0 r1 80
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 51
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 10
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 400
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_int
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 32
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 400
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_int
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 32
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 255
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_int
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 10
	j	min_caml_print_char
write.242:
	swc1	f2 r30 0
	swc1	f1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_int_of_float
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f0 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_int_of_float
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f0 0
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_int_of_float
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 32
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	min_caml_print_char
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 8
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_print_int
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 32
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_print_char
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_print_int
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 32
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_print_char
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_print_int
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 10
	j	min_caml_print_char
write_rgb.186:
	lw	r29 r2 4
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_float_of_int
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 4
	lwo	r2 r1 r1
	lw	r30 r3 0
	sub	r3 r1 r25
	blez	r25 ble_tail_else.549
	addi	r0 r1 1
	sll	r1 r1 2
	lwo	r2 r1 r1
	sub	r3 r1 r25
	blez	r25 ble_tail_else.550
	addi	r0 r1 2
	sll	r1 r1 2
	lwo	r2 r1 r1
	sub	r3 r1 r25
	blez	r25 ble_tail_else.551
	addi	r0 r1 3
	sll	r1 r1 2
	lwo	r2 r1 r1
	sub	r3 r1 r25
	blez	r25 ble_tail_else.552
	addi	r0 r1 4
	sll	r1 r1 2
	lwo	r2 r1 r1
	sub	r3 r1 r25
	blez	r25 ble_tail_else.553
	addi	r0 r1 5
	sll	r1 r1 2
	lwo	r2 r1 r1
	sub	r3 r1 r25
	blez	r25 ble_tail_else.554
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	j	write.242
ble_tail_else.554:
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lwo	r2 r1 r1
	sub	r3 r1 r1
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 4
	lwo	r2 r1 r1
	addi	r0 r3 4
	sll	r3 r3 2
	lwo	r2 r3 r2
	sub	r1 r2 r1
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_float_of_int
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	div.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f2
	j	write.242
ble_tail_else.553:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	addi	r0 r1 4
	sll	r1 r1 2
	lwo	r2 r1 r1
	sub	r1 r3 r1
	swc1	f0 r30 16
	swc1	f1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_float_of_int
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	mul.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 4
	lwo	r2 r1 r1
	addi	r0 r3 3
	sll	r3 r3 2
	lwo	r2 r3 r2
	sub	r1 r2 r1
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_float_of_int
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	div.s	f1 f0 f1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f2
	lwc1	 r30 f0 16
	j	write.242
ble_tail_else.552:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f2
	addi	r0 r1 2
	sll	r1 r1 2
	lwo	r2 r1 r1
	sub	r3 r1 r1
	swc1	f1 r30 28
	swc1	f0 r30 32
	swc1	f2 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_float_of_int
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	mul.s	f1 f0 f0
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 4
	lwo	r2 r1 r1
	addi	r0 r3 2
	sll	r3 r3 2
	lwo	r2 r3 r2
	sub	r1 r2 r1
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_float_of_int
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	div.s	f1 f0 f2
	lwc1	 r30 f0 32
	lwc1	 r30 f1 28
	j	write.242
ble_tail_else.551:
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lwo	r2 r1 r1
	sub	r1 r3 r1
	swc1	f0 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_float_of_int
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 44
	mul.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwo	r2 r1 r1
	addi	r0 r3 1
	sll	r3 r3 2
	lwo	r2 r3 r2
	sub	r1 r2 r1
	swc1	f0 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_float_of_int
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 48
	div.s	f1 f0 f0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	j	write.242
ble_tail_else.550:
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	sub	r3 r1 r1
	swc1	f0 r30 52
	swc1	f1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_float_of_int
	addi	r30 r30 -64
	lw	r30 r31 60
	lwc1	 r30 f1 56
	mul.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwo	r2 r1 r1
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	sub	r1 r2 r1
	swc1	f0 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_float_of_int
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 60
	div.s	f1 f0 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	lwc1	 r30 f0 52
	j	write.242
ble_tail_else.549:
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	j	write.242
iloop.206:
	lw	r29 r2 4
	addi	r0 r3 256
	sub	r3 r1 r25
	blez	r25 ble_tail_else.555
	mul.s	f0 f0 f4
	mul.s	f1 f1 f5
	sub.s	f4 f5 f4
	add.s	f4 f2 f4
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f5
	mul.s	f5 f0 f5
	mul.s	f5 f1 f5
	add.s	f5 f3 f5
	mul.s	f0 f0 f0
	mul.s	f1 f1 f1
	add.s	f0 f1 f0
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.556
	mov	r29 r2
	lw	r29 r23 0
	sll	r23 r23 2
	j r23
bfle_tail_else.556:
	addi	r0 r2 1
	add	r1 r2 r1
	mov.s	f5 f1
	mov.s	f4 f0
	lw	r29 r23 0
	sll	r23 r23 2
	j r23
ble_tail_else.555:
	addi	r0 r1 256
	mov	r29 r2
	lw	r29 r23 0
	sll	r23 r23 2
	j r23
xloop.194:
	lw	r29 r3 4
	addi	r0 r4 400
	sub	r4 r1 r25
	blez	r25 ble_tail_else.557
	sw	r29 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_float_of_int
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 12
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_float_of_int
	addi	r30 r30 -24
	lw	r30 r31 20
	lui	r24 17224
	ori	r24 r24 0
	mtc1	r24 f1
	lwc1	 r30 f2 16
	div.s	f2 f1 f1
	lui	r24 16320
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f2
	lui	r24 17224
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f3
	mov	r29 r27
	addi	r27 r27 8
	addi	r0 r1 iloop.206
	sw	r1 r29 0
	lw	r30 r1 8
	sw	r1 r29 4
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lw	r29 r23 0
	sw	r31 r30 20
	addi	r30 r30 24
	sll r23 r23 2
	jal	r23
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 12
	lw	r30 r29 0
	lw	r29 r23 0
	sll	r23 r23 2
	j r23
ble_tail_else.557:
	jr	r31
yloop.188:
	lw	r29 r2 4
	addi	r0 r3 400
	sub	r3 r1 r25
	blez	r25 ble_tail_else.559
	mov	r3 r27
	addi	r27 r27 8
	addi	r0 r4 xloop.194
	sw	r4 r3 0
	sw	r2 r3 4
	addi	r0 r2 0
	sw	r29 r30 0
	sw	r1 r30 4
	mov	r29 r3
	mov	r28 r2
	mov	r2 r1
	mov	r1 r28
	lw	r29 r23 0
	sw	r31 r30 8
	addi	r30 r30 12
	sll r23 r23 2
	jal	r23
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r29 0
	lw	r29 r23 0
	sll	r23 r23 2
	j r23
ble_tail_else.559:
	jr	r31
_min_caml_start:
	lui	r27 32
	addi	r0 r1 6
	addi	r0 r2 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_array
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r2 0
	addi	r0 r3 3
	sll	r2 r2 2
	swo	r3 r1 r2
	addi	r0 r2 1
	addi	r0 r3 8
	sll	r2 r2 2
	swo	r3 r1 r2
	addi	r0 r2 2
	addi	r0 r3 12
	sll	r2 r2 2
	swo	r3 r1 r2
	addi	r0 r2 3
	addi	r0 r3 16
	sll	r2 r2 2
	swo	r3 r1 r2
	addi	r0 r2 4
	addi	r0 r3 25
	sll	r2 r2 2
	swo	r3 r1 r2
	addi	r0 r2 5
	addi	r0 r3 100
	sll	r2 r2 2
	swo	r3 r1 r2
	mov	r2 r27
	addi	r27 r27 8
	addi	r0 r3 write_rgb.186
	sw	r3 r2 0
	sw	r1 r2 4
	mov	r1 r27
	addi	r27 r27 8
	addi	r0 r3 yloop.188
	sw	r3 r1 0
	sw	r2 r1 4
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	write_header.183
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r1 0
	lw	r30 r29 0
	lw	r29 r23 0
	sw	r31 r30 4
	addi	r30 r30 8
	sll r23 r23 2
	jal	r23
	addi	r30 r30 -8
	lw	r30 r31 4
halt
