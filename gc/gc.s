min_caml__gc:
lui r2 40
ori r2 r2 4096
sub r27 r2 r25
# if r25 <= 0 then smaller heap now
blez r25 gc_smaller_heap
# gc_larger_heap
lui r3 48 # heap bound
ori r3 r3 4096
sub r3 r27 r4
subi r4 r25 r1
# if r25 < 0 need gc
# if >= 0 do not need gc
bgez r25 gc_notneed
lui r25 32
ori r25 r25 4096
j gc_doall

gc_smaller_heap:
lui r3 40 # heap bound
ori r3 r3 4096
sub r3 r27 r4
subi r4 r25 r1
# if r25 < 0 need gc
# if >= 0 do not need gc
bgez r25 gc_notneed
lui r25 40
ori r25 r25 4096
j gc_doall

gc_notneed:
jr r31

gc_doall:
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
addi r0 r6 4
gc_copyall_loop:
# check type of mem[r3 + r6]
addi r6 r6 4
lwo r3 r6 r7
# r7 = 0 -> int, 1 -> adr, 2 -> float
beq r7 r0 gc_copy_int
addi r7 r7 -1
beq r7 r0 gc_copy_adr
addi r7 r7 -1
beq r7 r0 gc_copy_float

gc_copyall_nextloop:
addi r6 r6 8
sub r6 r5 r25
beq r25 r0 gc_copyall_return
j gc_copyall_loop

gc_copyall_return:
jr r31

gc_copy_int:
# from r3 + r6 to r4 + r6
lw r3 r7 0
sw r7 r4 0
lw r3 r7 4
sw r7 r4 4
j gc_copyall_nextloop

gc_copy_float:
lwc1 r3 f31 0
swc1 f31 r4 0
lw r3 r7 4
sw r7 r4 4
j gc_copyall_nextloop

gc_copy_adr:
lw r3 r7 0
# check if r7 is copied
lw r7 r8 0
andi r8 r9 3
# if r9 = 0 then this address is copied
beq r9 r0 gc_adr_copied
sw r8 r27 0
sw r27 r7 0
# save variables and call copyall
sw r3 r30 0
sw r4 r30 4
sw r5 r30 8
sw r6 r30 12
# from r7 to reg_hp
# sz = r8 + 1
addi r8 r5 1
addi r7 r3 0
addi r27 r4 0
add r27 r5 r27
sw r31 r30 16
addi r30 r30 20
jal gc_copyall
addi r30 r30 -20
lw r30 r31 16
lw r30 r6 12
lw r30 r5 8
lw r30 r4 4
lw r30 r3 0
j gc_copyall_nextloop

gc_adr_copied:
sw r8 r4 0
lw r3 r7 4
sw r7 r4 4
j gc_copyall_nextloop
