min_caml__gc:
# reg_sp = r30
# reg_hp = r27
addi r30 r1 0
# r1 <- reg_sp
addi r0 r2 0
# for r2 = 0 to reg_sp
gc_root_loop
sub r1 r2 r25
beq r25 r0 gc_return
# check the type of mem[r2]
lw r2 r3 4
# if r3 = 1 then mem[r2] is a heap address
addi r3 r25 -1
beq r25 r0 gc_call_copyall
# otherwise go to next loop
gc_next_root_loop:
addi r2 r2 8
j gc_root_loop

gc_return:
jr r31

gc_call_copyall:
# check if mem[mem[r2]] is copied
lw r2 r3 0
lw r3 r4 0
andi r4 r25 3
# if r25 = 0 then mem[r3] is copied
beq r25 r0 restore_copied_address
addi r27 r4 0
# r3 = mem[r2]
sw r27 r2 0
# size = r3 + 1
addi r3 r5 1
add r27 r5 r27
# mem[tmp2] = r3
sw r3 r4 0
sw r4 r2 0
# call copyall
sw r31 r30 0
addi r30 r30 4
jal gc_copyall
addi r30 r30 -4
lw r30 r31 0
j gc_next_root_loop

restore_copied_address:
sw r4 r2 0
j gc_next_root_loop

gc_copyall:
# r3 : from, r4 : to, r5 : sz
addi r0 r5 4


























min_caml__gc:
# r1 := current reg_sp
addi r30 r1 0
# reg_hp is already changed to new one
# reg_hp = r27
# for r2 = 0 to r1
addi r0 r2 0
gc_root_loop:
sub r1 r2 r25
beq r25 r0 gc_return
lw r2 r3 4
# 0 -> this is not heap address
beq r3 r0 gc_next_root_loop
lw r2 r3 0
# r3 := M[r2], root
# r1, r2 will not updated in dfs
sw r31 r30 0 # save link register
addi r30 r30 4 # do not manage stack type info during gc
jal gc_dfs
addi r30 r30 -4
lw r30 r31 0
gc_next_root_loop:
addi r2 r2 8
j gc_root_loop

gc_return:
jr r31

gc_copyall:
# r3 : address


gc_dfs:
# r3 : reachable address
lw r3 r4 4 # r4 := type of r3
# non address
andi r4 r25 1


andi r3 r25 3
beq r25 r0 restore_copied_address
# this value is not copied
# allocate the same size of memory to new heap
# size = r3 + 1
sw r3 r27 0
sw r27 r2 0
add r27 r3 r27
addi r27 r27 1
# copy each element
