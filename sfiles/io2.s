min_caml_print_char:
	out r1
	jr r31

min_caml_print_int:
	addi r1 r25 0
	addi r0 r2 10
	addi r0 r3 1
	bgez r25 _io_print_int_get_num_digits
	sub r0 r1 r1
	addi r0 r4 45
	out r4
	j min_caml_print_int
_io_print_int_get_num_digits:
	sub r1 r2 r25
	bltz r25 _io_print_int_loop
	multi r2 r2 10
	addi r3 r3 1
	j _io_print_int_get_num_digits
_io_print_int_loop:
	addi r3 r25 0
	beq r25 r0 _io_print_int_return
	divi r2 r2 10
	addi r3 r3 -1
	div r1 r2 r4
	mult r2 r4 r5
	sub r1 r5 r1
	addi r4 r4 48
	out r4
	j _io_print_int_loop
_io_print_int_return:
	jr r31

min_caml_read_int:
addi r0 r1 0
addi r0 r2 0
addi r0 r3 0
addi r0 r4 0
in r1
in r2
in r3
in r4
sll r2 r2 8
sll r3 r3 16
sll r4 r4 24
add r1 r2 r1
add r1 r3 r1
add r1 r4 r1
jr r31

min_caml_read_float:
addi r0 r1 0
addi r0 r2 0
addi r0 r3 0
addi r0 r4 0
in r1
in r2
in r3
in r4
sll r2 r2 8
sll r3 r3 16
sll r4 r4 24
add r1 r2 r1
add r1 r3 r1
add r1 r4 r1
mtc1 r1 f0
jr r31
