write_header.195:
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
	addi	r0 r1 100
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
	addi	r0 r1 100
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
write_rgb.198:
	lw	r29 r2 4
	addi	r0 r3 3
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.480
	addi	r0 r3 4
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.482
	addi	r0 r3 5
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.484
	addi	r0 r3 7
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.486
	addi	r0 r3 9
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.488
	addi	r0 r3 12
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.490
	addi	r0 r3 15
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.492
	addi	r0 r3 20
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.494
	addi	r0 r3 25
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.496
	addi	r0 r3 35
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.498
	addi	r0 r3 45
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.500
	addi	r0 r3 60
	sub	r1 r3 r25
	blez	r25 ble_nontail_else.502
	addi	r0 r1 0
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	j	ble_nontail_cont.503
ble_nontail_else.502:
	addi	r0 r1 0
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 127
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.503:
	j	ble_nontail_cont.501
ble_nontail_else.500:
	addi	r0 r1 0
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.501:
	j	ble_nontail_cont.499
ble_nontail_else.498:
	addi	r0 r1 0
	addi	r0 r3 127
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.499:
	j	ble_nontail_cont.497
ble_nontail_else.496:
	addi	r0 r1 0
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.497:
	j	ble_nontail_cont.495
ble_nontail_else.494:
	addi	r0 r1 0
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 127
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.495:
	j	ble_nontail_cont.493
ble_nontail_else.492:
	addi	r0 r1 0
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.493:
	j	ble_nontail_cont.491
ble_nontail_else.490:
	addi	r0 r1 0
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 127
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.491:
	j	ble_nontail_cont.489
ble_nontail_else.488:
	addi	r0 r1 0
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.489:
	j	ble_nontail_cont.487
ble_nontail_else.486:
	addi	r0 r1 0
	addi	r0 r3 127
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.487:
	j	ble_nontail_cont.485
ble_nontail_else.484:
	addi	r0 r1 0
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.485:
	j	ble_nontail_cont.483
ble_nontail_else.482:
	addi	r0 r1 0
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 127
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.483:
	j	ble_nontail_cont.481
ble_nontail_else.480:
	addi	r0 r1 0
	addi	r0 r3 255
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 1
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
	addi	r0 r1 2
	addi	r0 r3 0
	sll	r1 r1 2
	swo	r3 r2 r1
ble_nontail_cont.481:
	addi	r0 r1 32
	sw	r2 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_print_char
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_print_int
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r1 32
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_print_char
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_print_int
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r1 32
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_print_char
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 0
	lwo	r2 r1 r1
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_print_int
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r1 10
	j	min_caml_print_char
iloop.218:
	lw	r29 r2 4
	addi	r0 r3 256
	sub	r3 r1 r25
	blez	r25 ble_tail_else.504
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
	blez	r25 bfle_tail_else.505
	mov	r29 r2
	lw	r29 r23 0
	sll	r23 r23 2
	j r23
bfle_tail_else.505:
	addi	r0 r2 1
	add	r1 r2 r1
	mov.s	f5 f1
	mov.s	f4 f0
	lw	r29 r23 0
	sll	r23 r23 2
	j r23
ble_tail_else.504:
	addi	r0 r1 256
	mov	r29 r2
	lw	r29 r23 0
	sll	r23 r23 2
	j r23
xloop.206:
	lw	r29 r3 4
	addi	r0 r4 100
	sub	r4 r1 r25
	blez	r25 ble_tail_else.506
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
	lui	r24 16968
	ori	r24 r24 0
	mtc1	r24 f1
	lwc1	 r30 f2 16
	div.s	f2 f1 f1
	lui	r24 16320
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f2
	lui	r24 16968
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f3
	mov	r29 r27
	addi	r27 r27 8
	addi	r0 r1 iloop.218
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
ble_tail_else.506:
	jr	r31
yloop.200:
	lw	r29 r2 4
	addi	r0 r3 100
	sub	r3 r1 r25
	blez	r25 ble_tail_else.508
	mov	r3 r27
	addi	r27 r27 8
	addi	r0 r4 xloop.206
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
ble_tail_else.508:
	jr	r31
_min_caml_start:
	lui	r27 32
	addi	r0 r1 3
	addi	r0 r2 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_array
	addi	r30 r30 -4
	lw	r30 r31 0
	mov	r2 r27
	addi	r27 r27 8
	addi	r0 r3 write_rgb.198
	sw	r3 r2 0
	sw	r1 r2 4
	mov	r1 r27
	addi	r27 r27 8
	addi	r0 r3 yloop.200
	sw	r3 r1 0
	sw	r2 r1 4
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	write_header.195
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
