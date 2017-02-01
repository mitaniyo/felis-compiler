min_caml_create_array:
# save r2 and call gc
addi r0 r21 0
sw r1 r30 0
sw r21 r30 4
srl r22 r21 2
andi r21 r21 1
sw r2 r30 8
sw r21 r30 12
addi r0 r21 0
sw r31 r30 16
sw r21 r30 20
addi r30 r30 24
sll r1 r1 3
addi r1 r1 4
jal min_caml__gc
addi r30 r30 -24
lw r30 r31 16
lw r30 r2 8
lw r30 r1 0
# reg_type : r22
andi r22 r3 1
sll r1 r4 3
addi r4 r4 3
sw r4 r27 0
addi r4 r4 1
addi r0 r5 4
create_array_loop:
swo r2 r27 r5
addi r5 r5 4
swo r3 r27 r5
addi r5 r5 4
sub r5 r4 r25
beq r25 r0 create_array_return
j create_array_loop

create_array_return:
add r27 r4 r27
jr r31

min_caml_create_float_array:
# save f0 and call gc
sw r1 r30 0
addi r0 r21 0
sw r21 r30 4
swc1 f0 r30 8
addi r0 r21 2
sw r21 r30 12
sw r31 r30 16
addi r0 r21 0
sw r21 r30 20
addi r30 r30 24
sll r1 r1 3
addi r1 r1 4
jal min_caml__gc
addi r30 r30 -24
lw r30 r31 16
lwc1 r30 f0 8
lw r1 r30 0
addi r0 r3 2
sll r1 r4 3
addi r4 r4 3
sw r4 r27 0
addi r4 r4 1
addi r0 r5 4
create_float_array_loop:
swoc1 f0 r27 r5
addi r5 r5 4
swo r3 r27 r5
addi r5 r5 4
sub r5 r4 r25
beq r25 r0 create_float_array_return
j create_float_array_loop

create_float_array_return:
add r27 r4 r27
jr r31
