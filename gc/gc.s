min_caml__gc:
# r1 := current reg_sp
addi r25 r1 0
# reg_hp is already changed to new one
# for i = 0 to reg_sp
# reg_sp = r30
addi r0 r2 0
gc_root_loop:
sub r30 r2 r25
beq r25 r0 gc_return
lw r2 r3 4
# 0 -> this is not heap address
beq r3 r0 gc_next_root_loop
lw r2 r3 0
# heap address
# if least two bits are 00, this is already copied
andi r3 r25 3
beq r25 r0 restore_copied_address
# this value is not copied
# allocate the same size of memory to new heap
