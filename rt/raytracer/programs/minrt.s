xor.2600:
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.8274
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8275
	addi	r0 r1 0
	jr	r31
beq_tail_else.8275:
	addi	r0 r1 1
	jr	r31
beq_tail_else.8274:
	mov	r1 r2
	jr	r31
sgn.2603:
	swc1	f0 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_fiszero
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8276
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
beq_tail_else.8276:
	lwc1	 r30 f0 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_fispos
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8277
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
beq_tail_else.8277:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
fneg_cond.2605:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8278
	jr	r31
beq_tail_else.8278:
	j	min_caml_fneg
add_mod5.2608:
	add	r1 r2 r1
	addi	r0 r2 5
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8279
	jr	r31
ble_tail_else.8279:
	addi	r0 r2 5
	sub	r1 r2 r1
	jr	r31
vecset.2611:
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
	swoc1	f2 r1 r2
	jr	r31
vecfill.2616:
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 1
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r2 2
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
vecbzero.2619:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	vecfill.2616
veccpy.2621:
	addi	r0 r3 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	jr	r31
vecunit_sgn.2629:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_fsqr
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	add.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	add.s	f1 f0 f0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_sqrt
	addi	r30 r30 -20
	lw	r30 r31 16
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_fiszero
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8283
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8284
beq_else.8283:
	addi	r0 r1 0
	lw	r30 r2 0
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8285
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 16
	div.s	f0 f1 f0
	j	beq_cont.8286
beq_else.8285:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 16
	div.s	f0 f1 f0
beq_cont.8286:
beq_cont.8284:
	addi	r0 r1 0
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r3 r1
	addi	r0 r1 1
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f1
	sll	r1 r1 2
	swoc1	f1 r3 r1
	addi	r0 r1 2
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	mul.s	f1 f0 f0
	sll	r1 r1 2
	swoc1	f0 r3 r1
	jr	r31
veciprod.2632:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	jr	r31
veciprod2.2635:
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mul.s	f3 f0 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mul.s	f3 f1 f1
	add.s	f0 f1 f0
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	jr	r31
vecaccum.2640:
	addi	r0 r3 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f2
	add.s	f1 f2 f1
	sll	r3 r3 2
	swoc1	f1 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f1
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f2
	mul.s	f0 f2 f0
	add.s	f1 f0 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	jr	r31
vecadd.2644:
	addi	r0 r3 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	add.s	f0 f1 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 1
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	add.s	f0 f1 f0
	sll	r3 r3 2
	swoc1	f0 r1 r3
	addi	r0 r3 2
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r1 r4 f0
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r2 r4 f1
	add.s	f0 f1 f0
	sll	r3 r2 2
	swoc1	f0 r1 r2
	jr	r31
vecscale.2650:
	addi	r0 r2 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	mul.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r0 r2 1
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	mul.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r0 r2 2
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f1
	mul.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
vecaccumv.2653:
	addi	r0 r4 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r5 1
	sll	r5 r5 2
	lwoc1	r3 r5 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r4 2
	swoc1	f0 r1 r4
	addi	r0 r4 2
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r1 r5 f0
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r2 r5 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r4 r2 2
	swoc1	f0 r1 r2
	jr	r31
o_texturetype.2657:
	lw	r1 r1 0
	jr	r31
o_form.2659:
	lw	r1 r1 4
	jr	r31
o_reflectiontype.2661:
	lw	r1 r1 8
	jr	r31
o_isinvert.2663:
	lw	r1 r1 24
	jr	r31
o_isrot.2665:
	lw	r1 r1 12
	jr	r31
o_param_a.2667:
	lw	r1 r1 16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_b.2669:
	lw	r1 r1 16
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_c.2671:
	lw	r1 r1 16
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_abc.2673:
	lw	r1 r1 16
	jr	r31
o_param_x.2675:
	lw	r1 r1 20
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_y.2677:
	lw	r1 r1 20
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_z.2679:
	lw	r1 r1 20
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_diffuse.2681:
	lw	r1 r1 28
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_hilight.2683:
	lw	r1 r1 28
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_color_red.2685:
	lw	r1 r1 32
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_color_green.2687:
	lw	r1 r1 32
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_color_blue.2689:
	lw	r1 r1 32
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_r1.2691:
	lw	r1 r1 36
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_r2.2693:
	lw	r1 r1 36
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_r3.2695:
	lw	r1 r1 36
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	jr	r31
o_param_ctbl.2697:
	lw	r1 r1 40
	jr	r31
p_rgb.2699:
	lw	r1 r1 0
	jr	r31
p_intersection_points.2701:
	lw	r1 r1 4
	jr	r31
p_surface_ids.2703:
	lw	r1 r1 8
	jr	r31
p_calc_diffuse.2705:
	lw	r1 r1 12
	jr	r31
p_energy.2707:
	lw	r1 r1 16
	jr	r31
p_received_ray_20percent.2709:
	lw	r1 r1 20
	jr	r31
p_group_id.2711:
	lw	r1 r1 24
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	jr	r31
p_set_group_id.2713:
	lw	r1 r1 24
	addi	r0 r3 0
	sll	r3 r3 2
	swo	r2 r1 r3
	jr	r31
p_nvectors.2716:
	lw	r1 r1 28
	jr	r31
d_vec.2718:
	lw	r1 r1 0
	jr	r31
d_const.2720:
	lw	r1 r1 4
	jr	r31
r_surface_id.2722:
	lw	r1 r1 0
	jr	r31
r_dvec.2724:
	lw	r1 r1 4
	jr	r31
r_bright.2726:
	lwc1	r1 f0 8
	jr	r31
rad.2728:
	lui	r24 15502
	ori	r24 r24 64053
	mtc1	r24 f1
	mul.s	f0 f1 f0
	jr	r31
read_screen_settings.2730:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_read_float
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	swoc1	f0 r2 r1
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 1
	sw	r1 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_read_float
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 12
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 2
	sw	r1 r30 16
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_read_float
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r1 20
	sll	r1 r1 2
	lw	r30 r2 16
	swoc1	f0 r2 r1
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_read_float
	addi	r30 r30 -28
	lw	r30 r31 24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	rad.2728
	addi	r30 r30 -28
	lw	r30 r31 24
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_cos
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -36
	lw	r30 r31 32
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_read_float
	addi	r30 r30 -40
	lw	r30 r31 36
	sw	r31 r30 36
	addi	r30 r30 40
	jal	rad.2728
	addi	r30 r30 -40
	lw	r30 r31 36
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_cos
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	lwc1	 r30 f1 28
	mul.s	f1 f0 f2
	lui	r24 17224
	ori	r24 r24 0
	mtc1	r24 f3
	mul.s	f2 f3 f2
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	lui	r24 49992
	ori	r24 r24 0
	mtc1	r24 f2
	lwc1	 r30 f3 32
	mul.s	f3 f2 f2
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 2
	lwc1	 r30 f2 40
	mul.s	f1 f2 f4
	lui	r24 17224
	ori	r24 r24 0
	mtc1	r24 f5
	mul.s	f4 f5 f4
	sll	r2 r2 2
	swoc1	f4 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	sll	r2 r2 2
	swoc1	f2 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f4
	sll	r2 r2 2
	swoc1	f4 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 2
	swc1	f0 r30 44
	sw	r1 r30 48
	sw	r2 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_fneg
	addi	r30 r30 -60
	lw	r30 r31 56
	lw	r30 r1 52
	sll	r1 r1 2
	lw	r30 r2 48
	swoc1	f0 r2 r1
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r0 r2 0
	lwc1	 r30 f0 32
	sw	r1 r30 56
	sw	r2 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_fneg
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 44
	mul.s	f0 f1 f0
	lw	r30 r1 60
	sll	r1 r1 2
	lw	r30 r2 56
	swoc1	f0 r2 r1
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r2 1
	lwc1	 r30 f0 28
	sw	r1 r30 64
	sw	r2 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	jal	min_caml_fneg
	addi	r30 r30 -76
	lw	r30 r31 72
	lw	r30 r1 68
	sll	r1 r1 2
	lw	r30 r2 64
	swoc1	f0 r2 r1
	addi	r30 r30 72
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -72
	addi	r0 r2 2
	lwc1	 r30 f0 32
	sw	r1 r30 72
	sw	r2 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	jal	min_caml_fneg
	addi	r30 r30 -84
	lw	r30 r31 80
	lwc1	 r30 f1 40
	mul.s	f0 f1 f0
	lw	r30 r1 76
	sll	r1 r1 2
	lw	r30 r2 72
	swoc1	f0 r2 r1
	addi	r30 r30 80
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -80
	addi	r0 r2 0
	addi	r30 r30 80
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -80
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	addi	r30 r30 80
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -80
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 80
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -80
	addi	r0 r2 1
	addi	r30 r30 80
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -80
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	addi	r30 r30 80
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -80
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 80
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -80
	addi	r0 r2 2
	addi	r30 r30 80
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screen
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -80
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	addi	r30 r30 80
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -80
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	sub.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
read_light.2732:
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_read_int
	addi	r30 r30 -4
	lw	r30 r31 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_read_float
	addi	r30 r30 -4
	lw	r30 r31 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	rad.2728
	addi	r30 r30 -4
	lw	r30 r31 0
	swc1	f0 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_sin
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -4
	addi	r0 r2 1
	sw	r1 r30 4
	sw	r2 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_fneg
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r1 8
	sll	r1 r1 2
	lw	r30 r2 4
	swoc1	f0 r2 r1
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_read_float
	addi	r30 r30 -16
	lw	r30 r31 12
	sw	r31 r30 12
	addi	r30 r30 16
	jal	rad.2728
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 0
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 0
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	lwc1	 r30 f0 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_cos
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 2
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_beam
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 0
	sw	r1 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_read_float
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	jr	r31
rotate_quadratic_matrix.2734:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_cos
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov.s	f1 f0
	jal	min_caml_sin
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	lwc1	 r30 f2 16
	mul.s	f2 f1 f3
	lwc1	 r30 f4 20
	lwc1	 r30 f5 12
	mul.s	f5 f4 f6
	mul.s	f6 f1 f6
	lwc1	 r30 f7 8
	mul.s	f7 f0 f8
	sub.s	f6 f8 f6
	mul.s	f7 f4 f8
	mul.s	f8 f1 f8
	mul.s	f5 f0 f9
	add.s	f8 f9 f8
	mul.s	f2 f0 f9
	mul.s	f5 f4 f10
	mul.s	f10 f0 f10
	mul.s	f7 f1 f11
	add.s	f10 f11 f10
	mul.s	f7 f4 f11
	mul.s	f11 f0 f0
	mul.s	f5 f1 f1
	sub.s	f0 f1 f0
	swc1	f0 r30 28
	swc1	f8 r30 32
	swc1	f10 r30 36
	swc1	f6 r30 40
	swc1	f9 r30 44
	swc1	f3 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov.s	f4 f0
	jal	min_caml_fneg
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 16
	lwc1	 r30 f2 12
	mul.s	f2 f1 f2
	lwc1	 r30 f3 8
	mul.s	f3 f1 f1
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f3
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f4
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f5
	addi	r0 r1 0
	lwc1	 r30 f6 48
	swc1	f1 r30 52
	swc1	f2 r30 56
	sw	r1 r30 60
	swc1	f5 r30 64
	swc1	f0 r30 68
	swc1	f4 r30 72
	swc1	f3 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	mov.s	f6 f0
	jal	min_caml_fsqr
	addi	r30 r30 -84
	lw	r30 r31 80
	lwc1	 r30 f1 76
	mul.s	f1 f0 f0
	lwc1	 r30 f2 44
	swc1	f0 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	mov.s	f2 f0
	jal	min_caml_fsqr
	addi	r30 r30 -88
	lw	r30 r31 84
	lwc1	 r30 f1 72
	mul.s	f1 f0 f0
	lwc1	 r30 f2 80
	add.s	f2 f0 f0
	lwc1	 r30 f2 68
	swc1	f0 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	mov.s	f2 f0
	jal	min_caml_fsqr
	addi	r30 r30 -92
	lw	r30 r31 88
	lwc1	 r30 f1 64
	mul.s	f1 f0 f0
	lwc1	 r30 f2 84
	add.s	f2 f0 f0
	lw	r30 r1 60
	sll	r1 r1 2
	lw	r30 r2 0
	swoc1	f0 r2 r1
	addi	r0 r1 1
	lwc1	 r30 f0 40
	sw	r1 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	jal	min_caml_fsqr
	addi	r30 r30 -96
	lw	r30 r31 92
	lwc1	 r30 f1 76
	mul.s	f1 f0 f0
	lwc1	 r30 f2 36
	swc1	f0 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	mov.s	f2 f0
	jal	min_caml_fsqr
	addi	r30 r30 -100
	lw	r30 r31 96
	lwc1	 r30 f1 72
	mul.s	f1 f0 f0
	lwc1	 r30 f2 92
	add.s	f2 f0 f0
	lwc1	 r30 f2 56
	swc1	f0 r30 96
	sw	r31 r30 100
	addi	r30 r30 104
	mov.s	f2 f0
	jal	min_caml_fsqr
	addi	r30 r30 -104
	lw	r30 r31 100
	lwc1	 r30 f1 64
	mul.s	f1 f0 f0
	lwc1	 r30 f2 96
	add.s	f2 f0 f0
	lw	r30 r1 88
	sll	r1 r1 2
	lw	r30 r2 0
	swoc1	f0 r2 r1
	addi	r0 r1 2
	lwc1	 r30 f0 32
	sw	r1 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	jal	min_caml_fsqr
	addi	r30 r30 -108
	lw	r30 r31 104
	lwc1	 r30 f1 76
	mul.s	f1 f0 f0
	lwc1	 r30 f2 28
	swc1	f0 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	mov.s	f2 f0
	jal	min_caml_fsqr
	addi	r30 r30 -112
	lw	r30 r31 108
	lwc1	 r30 f1 72
	mul.s	f1 f0 f0
	lwc1	 r30 f2 104
	add.s	f2 f0 f0
	lwc1	 r30 f2 52
	swc1	f0 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	mov.s	f2 f0
	jal	min_caml_fsqr
	addi	r30 r30 -116
	lw	r30 r31 112
	lwc1	 r30 f1 64
	mul.s	f1 f0 f0
	lwc1	 r30 f2 108
	add.s	f2 f0 f0
	lw	r30 r1 100
	sll	r1 r1 2
	lw	r30 r2 0
	swoc1	f0 r2 r1
	addi	r0 r1 0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f2 40
	lwc1	 r30 f3 76
	mul.s	f3 f2 f4
	lwc1	 r30 f5 32
	mul.s	f4 f5 f4
	lwc1	 r30 f6 36
	lwc1	 r30 f7 72
	mul.s	f7 f6 f8
	lwc1	 r30 f9 28
	mul.s	f8 f9 f8
	add.s	f4 f8 f4
	lwc1	 r30 f8 56
	mul.s	f1 f8 f10
	lwc1	 r30 f11 52
	mul.s	f10 f11 f10
	add.s	f4 f10 f4
	mul.s	f0 f4 f0
	sll	r1 r1 2
	lw	r30 r2 4
	swoc1	f0 r2 r1
	addi	r0 r1 1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f4 48
	mul.s	f3 f4 f10
	mul.s	f10 f5 f5
	lwc1	 r30 f10 44
	mul.s	f7 f10 f12
	mul.s	f12 f9 f9
	add.s	f5 f9 f5
	lwc1	 r30 f9 68
	mul.s	f1 f9 f12
	mul.s	f12 f11 f11
	add.s	f5 f11 f5
	mul.s	f0 f5 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
	addi	r0 r1 2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f0
	mul.s	f3 f4 f3
	mul.s	f3 f2 f2
	mul.s	f7 f10 f3
	mul.s	f3 f6 f3
	add.s	f2 f3 f2
	mul.s	f1 f9 f1
	mul.s	f1 f8 f1
	add.s	f2 f1 f1
	mul.s	f0 f1 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
	jr	r31
read_nth_object.2737:
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_read_int
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8296
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_read_int
	addi	r30 r30 -12
	lw	r30 r31 8
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_read_int
	addi	r30 r30 -16
	lw	r30 r31 12
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_read_int
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sw	r1 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_read_float
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_read_float
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r1 28
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_read_float
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 32
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_create_float_array
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sw	r1 r30 36
	sw	r2 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_read_float
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r1 40
	sll	r1 r1 2
	lw	r30 r2 36
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_read_float
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r1 44
	sll	r1 r1 2
	lw	r30 r2 36
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_read_float
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r1 48
	sll	r1 r1 2
	lw	r30 r2 36
	swoc1	f0 r2 r1
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_read_float
	addi	r30 r30 -56
	lw	r30 r31 52
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_fisneg
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 2
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -60
	lw	r30 r31 56
	addi	r0 r2 0
	sw	r1 r30 56
	sw	r2 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_read_float
	addi	r30 r30 -68
	lw	r30 r31 64
	lw	r30 r1 60
	sll	r1 r1 2
	lw	r30 r2 56
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_read_float
	addi	r30 r30 -72
	lw	r30 r31 68
	lw	r30 r1 64
	sll	r1 r1 2
	lw	r30 r2 56
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_create_float_array
	addi	r30 r30 -72
	lw	r30 r31 68
	addi	r0 r2 0
	sw	r1 r30 68
	sw	r2 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	jal	min_caml_read_float
	addi	r30 r30 -80
	lw	r30 r31 76
	lw	r30 r1 72
	sll	r1 r1 2
	lw	r30 r2 68
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	jal	min_caml_read_float
	addi	r30 r30 -84
	lw	r30 r31 80
	lw	r30 r1 76
	sll	r1 r1 2
	lw	r30 r2 68
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	jal	min_caml_read_float
	addi	r30 r30 -88
	lw	r30 r31 84
	lw	r30 r1 80
	sll	r1 r1 2
	lw	r30 r2 68
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 84
	addi	r30 r30 88
	jal	min_caml_create_float_array
	addi	r30 r30 -88
	lw	r30 r31 84
	addi	r0 r2 0
	lw	r30 r3 16
	sw	r1 r30 84
	sub	r3 r2 r25
	beq	r25 r0 beq_else.8297
	addi	r0 r2 0
	sw	r2 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	jal	min_caml_read_float
	addi	r30 r30 -96
	lw	r30 r31 92
	sw	r31 r30 92
	addi	r30 r30 96
	jal	rad.2728
	addi	r30 r30 -96
	lw	r30 r31 92
	lw	r30 r1 88
	sll	r1 r1 2
	lw	r30 r2 84
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sw	r1 r30 92
	sw	r31 r30 96
	addi	r30 r30 100
	jal	min_caml_read_float
	addi	r30 r30 -100
	lw	r30 r31 96
	sw	r31 r30 96
	addi	r30 r30 100
	jal	rad.2728
	addi	r30 r30 -100
	lw	r30 r31 96
	lw	r30 r1 92
	sll	r1 r1 2
	lw	r30 r2 84
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sw	r1 r30 96
	sw	r31 r30 100
	addi	r30 r30 104
	jal	min_caml_read_float
	addi	r30 r30 -104
	lw	r30 r31 100
	sw	r31 r30 100
	addi	r30 r30 104
	jal	rad.2728
	addi	r30 r30 -104
	lw	r30 r31 100
	lw	r30 r1 96
	sll	r1 r1 2
	lw	r30 r2 84
	swoc1	f0 r2 r1
	j	beq_cont.8298
beq_else.8297:
beq_cont.8298:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8299
	lw	r30 r1 52
	j	beq_cont.8300
beq_else.8299:
	addi	r0 r1 1
beq_cont.8300:
	addi	r0 r3 4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -108
	lw	r30 r31 104
	mov	r2 r27
	addi	r27 r27 48
	sw	r1 r2 40
	lw	r30 r1 84
	sw	r1 r2 36
	lw	r30 r3 68
	sw	r3 r2 32
	lw	r30 r3 56
	sw	r3 r2 28
	lw	r30 r3 100
	sw	r3 r2 24
	lw	r30 r3 36
	sw	r3 r2 20
	lw	r30 r3 20
	sw	r3 r2 16
	lw	r30 r4 16
	sw	r4 r2 12
	lw	r30 r5 12
	sw	r5 r2 8
	lw	r30 r5 8
	sw	r5 r2 4
	lw	r30 r6 4
	sw	r6 r2 0
	addi	r30 r30 104
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -104
	lw	r30 r7 0
	sll	r7 r7 2
	swo	r2 r6 r7
	addi	r0 r2 3
	sub	r5 r2 r25
	beq	r25 r0 beq_else.8301
	addi	r0 r2 2
	sub	r5 r2 r25
	beq	r25 r0 beq_else.8303
	j	beq_cont.8304
beq_else.8303:
	addi	r0 r2 0
	lw	r30 r5 52
	sub	r5 r2 r25
	beq	r25 r0 beq_else.8305
	addi	r0 r2 0
	j	beq_cont.8306
beq_else.8305:
	addi	r0 r2 1
beq_cont.8306:
	sw	r31 r30 104
	addi	r30 r30 108
	mov	r1 r3
	jal	vecunit_sgn.2629
	addi	r30 r30 -108
	lw	r30 r31 104
beq_cont.8304:
	j	beq_cont.8302
beq_else.8301:
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r3 r2 f0
	addi	r0 r2 0
	sw	r2 r30 104
	swc1	f0 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	jal	min_caml_fiszero
	addi	r30 r30 -116
	lw	r30 r31 112
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8307
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8308
beq_else.8307:
	lwc1	 r30 f0 108
	sw	r31 r30 112
	addi	r30 r30 116
	jal	sgn.2603
	addi	r30 r30 -116
	lw	r30 r31 112
	lwc1	 r30 f1 108
	swc1	f0 r30 112
	sw	r31 r30 116
	addi	r30 r30 120
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -120
	lw	r30 r31 116
	lwc1	 r30 f1 112
	div.s	f1 f0 f0
beq_cont.8308:
	lw	r30 r1 104
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f0
	addi	r0 r1 1
	sw	r1 r30 116
	swc1	f0 r30 120
	sw	r31 r30 124
	addi	r30 r30 128
	jal	min_caml_fiszero
	addi	r30 r30 -128
	lw	r30 r31 124
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8309
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8310
beq_else.8309:
	lwc1	 r30 f0 120
	sw	r31 r30 124
	addi	r30 r30 128
	jal	sgn.2603
	addi	r30 r30 -128
	lw	r30 r31 124
	lwc1	 r30 f1 120
	swc1	f0 r30 124
	sw	r31 r30 128
	addi	r30 r30 132
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -132
	lw	r30 r31 128
	lwc1	 r30 f1 124
	div.s	f1 f0 f0
beq_cont.8310:
	lw	r30 r1 116
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f0
	addi	r0 r1 2
	sw	r1 r30 128
	swc1	f0 r30 132
	sw	r31 r30 136
	addi	r30 r30 140
	jal	min_caml_fiszero
	addi	r30 r30 -140
	lw	r30 r31 136
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8311
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8312
beq_else.8311:
	lwc1	 r30 f0 132
	sw	r31 r30 136
	addi	r30 r30 140
	jal	sgn.2603
	addi	r30 r30 -140
	lw	r30 r31 136
	lwc1	 r30 f1 132
	swc1	f0 r30 136
	sw	r31 r30 140
	addi	r30 r30 144
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -144
	lw	r30 r31 140
	lwc1	 r30 f1 136
	div.s	f1 f0 f0
beq_cont.8312:
	lw	r30 r1 128
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
beq_cont.8302:
	addi	r0 r1 0
	lw	r30 r2 16
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8313
	lw	r30 r1 20
	lw	r30 r2 84
	sw	r31 r30 140
	addi	r30 r30 144
	jal	rotate_quadratic_matrix.2734
	addi	r30 r30 -144
	lw	r30 r31 140
	j	beq_cont.8314
beq_else.8313:
beq_cont.8314:
	addi	r0 r1 1
	jr	r31
beq_tail_else.8296:
	addi	r0 r1 0
	jr	r31
read_object.2739:
	addi	r0 r2 60
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8315
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	read_nth_object.2737
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8316
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r1
	j	read_object.2739
beq_tail_else.8316:
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -4
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r3 r1 r2
	jr	r31
ble_tail_else.8315:
	jr	r31
read_all_object.2741:
	addi	r0 r1 0
	j	read_object.2739
read_net_item.2743:
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_read_int
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 -1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8319
	addi	r0 r2 1
	lw	r30 r3 0
	add	r3 r2 r2
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r2
	jal	read_net_item.2743
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	swo	r3 r1 r2
	jr	r31
beq_tail_else.8319:
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r1
	addi	r0 r2 -1
	j	min_caml_create_array
read_or_network.2745:
	addi	r0 r2 0
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	mov	r1 r2
	jal	read_net_item.2743
	addi	r30 r30 -8
	lw	r30 r31 4
	mov	r2 r1
	addi	r0 r1 0
	sll	r1 r1 2
	lwo	r2 r1 r1
	addi	r0 r3 -1
	sub	r1 r3 r25
	beq	r25 r0 beq_tail_else.8320
	addi	r0 r1 1
	lw	r30 r3 0
	add	r3 r1 r1
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	read_or_network.2745
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	swo	r3 r1 r2
	jr	r31
beq_tail_else.8320:
	addi	r0 r1 1
	lw	r30 r3 0
	add	r3 r1 r1
	j	min_caml_create_array
read_and_network.2747:
	addi	r0 r2 0
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	mov	r1 r2
	jal	read_net_item.2743
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r2
	addi	r0 r3 -1
	sub	r2 r3 r25
	beq	r25 r0 beq_tail_else.8321
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -4
	lw	r30 r3 0
	sll	r3 r4 2
	swo	r1 r2 r4
	addi	r0 r1 1
	add	r3 r1 r1
	j	read_and_network.2747
beq_tail_else.8321:
	jr	r31
read_parameter.2749:
	sw	r31 r30 0
	addi	r30 r30 4
	jal	read_screen_settings.2730
	addi	r30 r30 -4
	lw	r30 r31 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	read_light.2732
	addi	r30 r30 -4
	lw	r30 r31 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	read_all_object.2741
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	read_and_network.2747
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	addi	r0 r3 0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	read_or_network.2745
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r1 r3 r2
	jr	r31
solver_rect_surface.2751:
	sll	r3 r6 2
	lwoc1	r2 r6 f3
	swc1	f2 r30 0
	sw	r5 r30 4
	swc1	f1 r30 8
	sw	r4 r30 12
	swc1	f0 r30 16
	sw	r2 r30 20
	sw	r3 r30 24
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov.s	f3 f0
	jal	min_caml_fiszero
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8324
	addi	r0 r1 0
	jr	r31
beq_tail_else.8324:
	lw	r30 r1 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_abc.2673
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 28
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r2
	jal	o_isinvert.2663
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r2 24
	sll	r2 r3 2
	lw	r30 r4 20
	lwoc1	r4 r3 f0
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_fisneg
	addi	r30 r30 -44
	lw	r30 r31 40
	mov	r2 r1
	lw	r30 r1 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	xor.2600
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 24
	sll	r2 r3 2
	lw	r30 r4 32
	lwoc1	r4 r3 f0
	sw	r31 r30 40
	addi	r30 r30 44
	jal	fneg_cond.2605
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 16
	sub.s	f0 f1 f0
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	lwoc1	r2 r1 f1
	div.s	f0 f1 f0
	lw	r30 r1 12
	sll	r1 r3 2
	lwoc1	r2 r3 f1
	mul.s	f0 f1 f1
	lwc1	 r30 f2 8
	add.s	f1 f2 f1
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov.s	f1 f0
	jal	min_caml_fabs
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r1 12
	sll	r1 r1 2
	lw	r30 r2 32
	lwoc1	r2 r1 f1
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_fless
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8325
	lw	r30 r1 4
	sll	r1 r2 2
	lw	r30 r3 20
	lwoc1	r3 r2 f0
	lwc1	 r30 f1 40
	mul.s	f1 f0 f0
	lwc1	 r30 f2 0
	add.s	f0 f2 f0
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_fabs
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r1 4
	sll	r1 r1 2
	lw	r30 r2 32
	lwoc1	r2 r1 f1
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_fless
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8326
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 40
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.8326:
	addi	r0 r1 0
	jr	r31
beq_tail_else.8325:
	addi	r0 r1 0
	jr	r31
solver_rect.2760:
	addi	r0 r3 0
	addi	r0 r4 1
	addi	r0 r5 2
	swc1	f0 r30 0
	swc1	f2 r30 4
	swc1	f1 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	solver_rect_surface.2751
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8327
	addi	r0 r1 1
	jr	r31
beq_tail_else.8327:
	addi	r0 r3 1
	addi	r0 r4 2
	addi	r0 r5 0
	lwc1	 r30 f0 8
	lwc1	 r30 f1 4
	lwc1	 r30 f2 0
	lw	r30 r1 16
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	solver_rect_surface.2751
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8328
	addi	r0 r1 2
	jr	r31
beq_tail_else.8328:
	addi	r0 r3 2
	addi	r0 r4 0
	addi	r0 r5 1
	lwc1	 r30 f0 4
	lwc1	 r30 f1 0
	lwc1	 r30 f2 8
	lw	r30 r1 16
	lw	r30 r2 12
	sw	r31 r30 20
	addi	r30 r30 24
	jal	solver_rect_surface.2751
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8329
	addi	r0 r1 3
	jr	r31
beq_tail_else.8329:
	addi	r0 r1 0
	jr	r31
solver_surface.2766:
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_abc.2673
	addi	r30 r30 -20
	lw	r30 r31 16
	mov	r2 r1
	lw	r30 r1 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	veciprod.2632
	addi	r30 r30 -24
	lw	r30 r31 20
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_fispos
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8330
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	lwc1	 r30 f0 8
	lwc1	 r30 f1 4
	lwc1	 r30 f2 0
	lw	r30 r3 16
	sw	r1 r30 24
	sw	r2 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r3
	jal	veciprod2.2635
	addi	r30 r30 -36
	lw	r30 r31 32
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_fneg
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 20
	div.s	f0 f1 f0
	lw	r30 r1 28
	sll	r1 r1 2
	lw	r30 r2 24
	swoc1	f0 r2 r1
	addi	r0 r1 1
	jr	r31
beq_tail_else.8330:
	addi	r0 r1 0
	jr	r31
quadratic.2772:
	swc1	f0 r30 0
	swc1	f2 r30 4
	swc1	f1 r30 8
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_fsqr
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 12
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	o_param_a.2667
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	lwc1	 r30 f1 8
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r1 12
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_param_b.2669
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	lwc1	 r30 f1 20
	add.s	f1 f0 f0
	lwc1	 r30 f1 4
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r1 12
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_param_c.2671
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	mul.s	f1 f0 f0
	lwc1	 r30 f1 28
	add.s	f1 f0 f0
	lw	r30 r1 12
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_isrot.2665
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8331
	lwc1	 r30 f0 4
	lwc1	 r30 f1 8
	mul.s	f1 f0 f2
	lw	r30 r1 12
	swc1	f2 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	o_param_r1.2691
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	mul.s	f1 f0 f0
	lwc1	 r30 f1 36
	add.s	f1 f0 f0
	lwc1	 r30 f1 0
	lwc1	 r30 f2 4
	mul.s	f2 f1 f2
	lw	r30 r1 12
	swc1	f0 r30 44
	swc1	f2 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	o_param_r2.2693
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 48
	mul.s	f1 f0 f0
	lwc1	 r30 f1 44
	add.s	f1 f0 f0
	lwc1	 r30 f1 8
	lwc1	 r30 f2 0
	mul.s	f2 f1 f1
	lw	r30 r1 12
	swc1	f0 r30 52
	swc1	f1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	o_param_r3.2695
	addi	r30 r30 -64
	lw	r30 r31 60
	lwc1	 r30 f1 56
	mul.s	f1 f0 f0
	lwc1	 r30 f1 52
	add.s	f1 f0 f0
	jr	r31
beq_tail_else.8331:
	lwc1	 r30 f0 36
	jr	r31
bilinear.2777:
	mul.s	f0 f3 f6
	swc1	f3 r30 0
	swc1	f0 r30 4
	swc1	f5 r30 8
	swc1	f2 r30 12
	sw	r1 r30 16
	swc1	f4 r30 20
	swc1	f1 r30 24
	swc1	f6 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_a.2667
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	mul.s	f1 f0 f0
	lwc1	 r30 f1 20
	lwc1	 r30 f2 24
	mul.s	f2 f1 f3
	lw	r30 r1 16
	swc1	f0 r30 32
	swc1	f3 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_param_b.2669
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	mul.s	f1 f0 f0
	lwc1	 r30 f1 32
	add.s	f1 f0 f0
	lwc1	 r30 f1 8
	lwc1	 r30 f2 12
	mul.s	f2 f1 f3
	lw	r30 r1 16
	swc1	f0 r30 40
	swc1	f3 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	o_param_c.2671
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 44
	mul.s	f1 f0 f0
	lwc1	 r30 f1 40
	add.s	f1 f0 f0
	lw	r30 r1 16
	swc1	f0 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	o_isrot.2665
	addi	r30 r30 -56
	lw	r30 r31 52
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8332
	lwc1	 r30 f0 20
	lwc1	 r30 f1 12
	mul.s	f1 f0 f2
	lwc1	 r30 f3 8
	lwc1	 r30 f4 24
	mul.s	f4 f3 f5
	add.s	f2 f5 f2
	lw	r30 r1 16
	swc1	f2 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	o_param_r1.2691
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 52
	mul.s	f1 f0 f0
	lwc1	 r30 f1 8
	lwc1	 r30 f2 4
	mul.s	f2 f1 f1
	lwc1	 r30 f3 0
	lwc1	 r30 f4 12
	mul.s	f4 f3 f4
	add.s	f1 f4 f1
	lw	r30 r1 16
	swc1	f0 r30 56
	swc1	f1 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	o_param_r2.2693
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 60
	mul.s	f1 f0 f0
	lwc1	 r30 f1 56
	add.s	f1 f0 f0
	lwc1	 r30 f1 20
	lwc1	 r30 f2 4
	mul.s	f2 f1 f1
	lwc1	 r30 f2 0
	lwc1	 r30 f3 24
	mul.s	f3 f2 f2
	add.s	f1 f2 f1
	lw	r30 r1 16
	swc1	f0 r30 64
	swc1	f1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	jal	o_param_r3.2695
	addi	r30 r30 -76
	lw	r30 r31 72
	lwc1	 r30 f1 68
	mul.s	f1 f0 f0
	lwc1	 r30 f1 64
	add.s	f1 f0 f0
	sw	r31 r30 72
	addi	r30 r30 76
	jal	min_caml_fhalf
	addi	r30 r30 -76
	lw	r30 r31 72
	lwc1	 r30 f1 48
	add.s	f1 f0 f0
	jr	r31
beq_tail_else.8332:
	lwc1	 r30 f0 48
	jr	r31
solver_second.2785:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r2 r3 f4
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r2 r3 f5
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	sw	r1 r30 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f5 f2
	mov.s	f4 f1
	mov.s	f3 f0
	jal	quadratic.2772
	addi	r30 r30 -24
	lw	r30 r31 20
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_fiszero
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8333
	addi	r0 r1 0
	jr	r31
beq_tail_else.8333:
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 16
	lwoc1	r2 r1 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f1
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	lwc1	 r30 f3 8
	lwc1	 r30 f4 4
	lwc1	 r30 f5 0
	lw	r30 r1 12
	sw	r31 r30 24
	addi	r30 r30 28
	jal	bilinear.2777
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 8
	lwc1	 r30 f2 4
	lwc1	 r30 f3 0
	lw	r30 r1 12
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov.s	f1 f0
	mov.s	f2 f1
	mov.s	f3 f2
	jal	quadratic.2772
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 12
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_form.2659
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 3
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8334
	lwc1	 r30 f0 28
	j	beq_cont.8335
beq_else.8334:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
beq_cont.8335:
	lwc1	 r30 f1 24
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	lwc1	 r30 f2 20
	mul.s	f2 f1 f1
	sub.s	f0 f1 f0
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_fispos
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8336
	lwc1	 r30 f0 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_sqrt
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r1 12
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	o_isinvert.2663
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8337
	lwc1	 r30 f0 40
	j	beq_cont.8338
beq_else.8337:
	lwc1	 r30 f0 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_fneg
	addi	r30 r30 -48
	lw	r30 r31 44
beq_cont.8338:
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	lwc1	 r30 f1 24
	sub.s	f0 f1 f0
	lwc1	 r30 f1 20
	div.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.8336:
	addi	r0 r1 0
	jr	r31
solver.2791:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r1 2
	lwo	r4 r1 r1
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_x.2675
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f1
	lw	r30 r1 4
	swc1	f0 r30 16
	swc1	f1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	o_param_y.2677
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	sub.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f1
	lw	r30 r1 4
	swc1	f0 r30 24
	swc1	f1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_z.2679
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
	lw	r30 r1 4
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_form.2659
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8339
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8340
	lwc1	 r30 f0 16
	lwc1	 r30 f1 24
	lwc1	 r30 f2 32
	lw	r30 r1 4
	lw	r30 r2 0
	j	solver_second.2785
beq_tail_else.8340:
	lwc1	 r30 f0 16
	lwc1	 r30 f1 24
	lwc1	 r30 f2 32
	lw	r30 r1 4
	lw	r30 r2 0
	j	solver_surface.2766
beq_tail_else.8339:
	lwc1	 r30 f0 16
	lwc1	 r30 f1 24
	lwc1	 r30 f2 32
	lw	r30 r1 4
	lw	r30 r2 0
	j	solver_rect.2760
solver_rect_fast.2795:
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f3
	sub.s	f3 f0 f3
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f4
	mul.s	f3 f4 f3
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r2 r4 f4
	mul.s	f3 f4 f4
	add.s	f4 f1 f4
	swc1	f0 r30 0
	swc1	f1 r30 4
	sw	r3 r30 8
	swc1	f2 r30 12
	swc1	f3 r30 16
	sw	r2 r30 20
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov.s	f4 f0
	jal	min_caml_fabs
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 24
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_b.2669
	addi	r30 r30 -36
	lw	r30 r31 32
	mov.s	f0 f1
	lwc1	 r30 f0 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_fless
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8341
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 20
	lwoc1	r2 r1 f0
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	lwc1	 r30 f2 12
	add.s	f0 f2 f0
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_fabs
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r1 24
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_param_c.2671
	addi	r30 r30 -40
	lw	r30 r31 36
	mov.s	f0 f1
	lwc1	 r30 f0 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_fless
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8343
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_fiszero
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8345
	addi	r0 r1 0
	j	beq_cont.8346
beq_else.8345:
	addi	r0 r1 1
beq_cont.8346:
	j	beq_cont.8344
beq_else.8343:
	addi	r0 r1 0
beq_cont.8344:
	j	beq_cont.8342
beq_else.8341:
	addi	r0 r1 0
beq_cont.8342:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8347
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 16
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.8347:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f0
	lwc1	 r30 f1 4
	sub.s	f0 f1 f0
	addi	r0 r1 3
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	mul.s	f0 f2 f0
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r3 20
	lwoc1	r3 r1 f2
	mul.s	f0 f2 f2
	lwc1	 r30 f3 0
	add.s	f2 f3 f2
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov.s	f2 f0
	jal	min_caml_fabs
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r1 24
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	o_param_a.2667
	addi	r30 r30 -48
	lw	r30 r31 44
	mov.s	f0 f1
	lwc1	 r30 f0 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_fless
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8348
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 20
	lwoc1	r2 r1 f0
	lwc1	 r30 f1 36
	mul.s	f1 f0 f0
	lwc1	 r30 f2 12
	add.s	f0 f2 f0
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_fabs
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r1 24
	swc1	f0 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	o_param_c.2671
	addi	r30 r30 -52
	lw	r30 r31 48
	mov.s	f0 f1
	lwc1	 r30 f0 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_fless
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8350
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f0
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_fiszero
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8352
	addi	r0 r1 0
	j	beq_cont.8353
beq_else.8352:
	addi	r0 r1 1
beq_cont.8353:
	j	beq_cont.8351
beq_else.8350:
	addi	r0 r1 0
beq_cont.8351:
	j	beq_cont.8349
beq_else.8348:
	addi	r0 r1 0
beq_cont.8349:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8354
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 36
	swoc1	f0 r1 r2
	addi	r0 r1 2
	jr	r31
beq_tail_else.8354:
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f0
	lwc1	 r30 f1 12
	sub.s	f0 f1 f0
	addi	r0 r1 5
	sll	r1 r1 2
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r3 20
	lwoc1	r3 r1 f1
	mul.s	f0 f1 f1
	lwc1	 r30 f2 0
	add.s	f1 f2 f1
	swc1	f0 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	mov.s	f1 f0
	jal	min_caml_fabs
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r1 24
	swc1	f0 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	o_param_a.2667
	addi	r30 r30 -60
	lw	r30 r31 56
	mov.s	f0 f1
	lwc1	 r30 f0 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_fless
	addi	r30 r30 -60
	lw	r30 r31 56
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8355
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 20
	lwoc1	r2 r1 f0
	lwc1	 r30 f1 48
	mul.s	f1 f0 f0
	lwc1	 r30 f2 4
	add.s	f0 f2 f0
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_fabs
	addi	r30 r30 -60
	lw	r30 r31 56
	lw	r30 r1 24
	swc1	f0 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	o_param_b.2669
	addi	r30 r30 -64
	lw	r30 r31 60
	mov.s	f0 f1
	lwc1	 r30 f0 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_fless
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8357
	addi	r0 r1 5
	sll	r1 r1 2
	lw	r30 r2 8
	lwoc1	r2 r1 f0
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_fiszero
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8359
	addi	r0 r1 0
	j	beq_cont.8360
beq_else.8359:
	addi	r0 r1 1
beq_cont.8360:
	j	beq_cont.8358
beq_else.8357:
	addi	r0 r1 0
beq_cont.8358:
	j	beq_cont.8356
beq_else.8355:
	addi	r0 r1 0
beq_cont.8356:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8361
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -60
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 48
	swoc1	f0 r1 r2
	addi	r0 r1 3
	jr	r31
beq_tail_else.8361:
	addi	r0 r1 0
	jr	r31
solver_surface_fast.2802:
	addi	r0 r1 0
	sll	r1 r1 2
	lwoc1	r2 r1 f3
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f3 f0
	jal	min_caml_fisneg
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8362
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	addi	r0 r3 1
	sll	r3 r3 2
	lw	r30 r4 12
	lwoc1	r4 r3 f0
	lwc1	 r30 f1 8
	mul.s	f0 f1 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r4 r3 f1
	lwc1	 r30 f2 4
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r3 3
	sll	r3 r3 2
	lwoc1	r4 r3 f1
	lwc1	 r30 f2 0
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.8362:
	addi	r0 r1 0
	jr	r31
solver_second_fast.2808:
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f3
	swc1	f3 r30 0
	sw	r1 r30 4
	swc1	f2 r30 8
	swc1	f1 r30 12
	swc1	f0 r30 16
	sw	r2 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f3 f0
	jal	min_caml_fiszero
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8363
	addi	r0 r1 0
	jr	r31
beq_tail_else.8363:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 20
	lwoc1	r2 r1 f0
	lwc1	 r30 f1 16
	mul.s	f0 f1 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	lwc1	 r30 f3 12
	mul.s	f2 f3 f2
	add.s	f0 f2 f0
	addi	r0 r1 3
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	lwc1	 r30 f4 8
	mul.s	f2 f4 f2
	add.s	f0 f2 f0
	lw	r30 r1 4
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov.s	f4 f2
	mov.s	f1 f0
	mov.s	f3 f1
	jal	quadratic.2772
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 4
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_form.2659
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 3
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8364
	lwc1	 r30 f0 28
	j	beq_cont.8365
beq_else.8364:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
beq_cont.8365:
	lwc1	 r30 f1 24
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	lwc1	 r30 f2 0
	mul.s	f2 f1 f1
	sub.s	f0 f1 f0
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_fispos
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8366
	lw	r30 r1 4
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_isinvert.2663
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8367
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	lwc1	 r30 f0 36
	sw	r1 r30 40
	sw	r2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_sqrt
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 24
	add.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 20
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 44
	sll	r1 r1 2
	lw	r30 r2 40
	swoc1	f0 r2 r1
	j	beq_cont.8368
beq_else.8367:
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 0
	lwc1	 r30 f0 36
	sw	r1 r30 48
	sw	r2 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_sqrt
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 24
	sub.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 20
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 52
	sll	r1 r1 2
	lw	r30 r2 48
	swoc1	f0 r2 r1
beq_cont.8368:
	addi	r0 r1 1
	jr	r31
beq_tail_else.8366:
	addi	r0 r1 0
	jr	r31
solver_fast.2814:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r5 2
	lwo	r4 r5 r4
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r3 r5 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r4 r30 8
	sw	r3 r30 12
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r4
	jal	o_param_x.2675
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	sub.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 12
	lwoc1	r2 r1 f1
	lw	r30 r1 8
	swc1	f0 r30 20
	swc1	f1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_param_y.2677
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	sub.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 12
	lwoc1	r2 r1 f1
	lw	r30 r1 8
	swc1	f0 r30 28
	swc1	f1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_param_z.2679
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	sub.s	f1 f0 f0
	lw	r30 r1 4
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	d_const.2720
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 8
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r2
	jal	o_form.2659
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8369
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8370
	lwc1	 r30 f0 20
	lwc1	 r30 f1 28
	lwc1	 r30 f2 36
	lw	r30 r1 8
	lw	r30 r2 40
	j	solver_second_fast.2808
beq_tail_else.8370:
	lwc1	 r30 f0 20
	lwc1	 r30 f1 28
	lwc1	 r30 f2 36
	lw	r30 r1 8
	lw	r30 r2 40
	j	solver_surface_fast.2802
beq_tail_else.8369:
	lw	r30 r1 4
	sw	r31 r30 44
	addi	r30 r30 48
	jal	d_vec.2718
	addi	r30 r30 -48
	lw	r30 r31 44
	mov	r2 r1
	lwc1	 r30 f0 20
	lwc1	 r30 f1 28
	lwc1	 r30 f2 36
	lw	r30 r1 8
	lw	r30 r3 40
	j	solver_rect_fast.2795
solver_surface_fast2.2818:
	addi	r0 r1 0
	sll	r1 r1 2
	lwoc1	r2 r1 f0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_fisneg
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8371
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 0
	addi	r0 r3 0
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f0
	addi	r0 r3 3
	sll	r3 r3 2
	lw	r30 r4 0
	lwoc1	r4 r3 f1
	mul.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r0 r1 1
	jr	r31
beq_tail_else.8371:
	addi	r0 r1 0
	jr	r31
solver_second_fast2.2825:
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r2 r4 f3
	sw	r1 r30 0
	swc1	f3 r30 4
	sw	r3 r30 8
	swc1	f2 r30 12
	swc1	f1 r30 16
	swc1	f0 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov.s	f3 f0
	jal	min_caml_fiszero
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8372
	addi	r0 r1 0
	jr	r31
beq_tail_else.8372:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 24
	lwoc1	r2 r1 f0
	lwc1	 r30 f1 20
	mul.s	f0 f1 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f1
	lwc1	 r30 f2 16
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r1 3
	sll	r1 r1 2
	lwoc1	r2 r1 f1
	lwc1	 r30 f2 12
	mul.s	f1 f2 f1
	add.s	f0 f1 f0
	addi	r0 r1 3
	sll	r1 r1 2
	lw	r30 r3 8
	lwoc1	r3 r1 f1
	swc1	f0 r30 28
	swc1	f1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_fsqr
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	lwc1	 r30 f2 4
	mul.s	f2 f1 f1
	sub.s	f0 f1 f0
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_fispos
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8373
	lw	r30 r1 0
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_isinvert.2663
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8374
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	lwc1	 r30 f0 36
	sw	r1 r30 40
	sw	r2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_sqrt
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 28
	add.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 24
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 44
	sll	r1 r1 2
	lw	r30 r2 40
	swoc1	f0 r2 r1
	j	beq_cont.8375
beq_else.8374:
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 0
	lwc1	 r30 f0 36
	sw	r1 r30 48
	sw	r2 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_sqrt
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
	addi	r0 r1 4
	sll	r1 r1 2
	lw	r30 r2 24
	lwoc1	r2 r1 f1
	mul.s	f0 f1 f0
	lw	r30 r1 52
	sll	r1 r1 2
	lw	r30 r2 48
	swoc1	f0 r2 r1
beq_cont.8375:
	addi	r0 r1 1
	jr	r31
beq_tail_else.8373:
	addi	r0 r1 0
	jr	r31
solver_fast2.2832:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r4 2
	lwo	r3 r4 r3
	sw	r3 r30 0
	sw	r1 r30 4
	sw	r2 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	jal	o_param_ctbl.2697
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	lw	r30 r2 8
	sw	r1 r30 12
	swc1	f2 r30 16
	swc1	f1 r30 20
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	d_const.2720
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 4
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	jal	o_form.2659
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8376
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8377
	lwc1	 r30 f0 24
	lwc1	 r30 f1 20
	lwc1	 r30 f2 16
	lw	r30 r1 0
	lw	r30 r2 28
	lw	r30 r3 12
	j	solver_second_fast2.2825
beq_tail_else.8377:
	lwc1	 r30 f0 24
	lwc1	 r30 f1 20
	lwc1	 r30 f2 16
	lw	r30 r1 0
	lw	r30 r2 28
	lw	r30 r3 12
	j	solver_surface_fast2.2818
beq_tail_else.8376:
	lw	r30 r1 8
	sw	r31 r30 32
	addi	r30 r30 36
	jal	d_vec.2718
	addi	r30 r30 -36
	lw	r30 r31 32
	mov	r2 r1
	lwc1	 r30 f0 24
	lwc1	 r30 f1 20
	lwc1	 r30 f2 16
	lw	r30 r1 0
	lw	r30 r3 28
	j	solver_rect_fast.2795
setup_rect_table.2835:
	addi	r0 r3 6
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_fiszero
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8378
	addi	r0 r1 1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	j	beq_cont.8379
beq_else.8378:
	addi	r0 r1 0
	lw	r30 r2 0
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	o_isinvert.2663
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_fisneg
	addi	r30 r30 -24
	lw	r30 r31 20
	mov	r2 r1
	lw	r30 r1 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	xor.2600
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	jal	o_param_a.2667
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r1 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	fneg_cond.2605
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r1 12
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r3 0
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f1
	div.s	f0 f1 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
beq_cont.8379:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r3 4
	lwoc1	r3 r1 f0
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_fiszero
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8380
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	j	beq_cont.8381
beq_else.8380:
	addi	r0 r1 2
	lw	r30 r2 0
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	o_isinvert.2663
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 1
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	min_caml_fisneg
	addi	r30 r30 -36
	lw	r30 r31 32
	mov	r2 r1
	lw	r30 r1 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	xor.2600
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 0
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r2
	jal	o_param_b.2669
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	fneg_cond.2605
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r3 1
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f1
	div.s	f0 f1 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
beq_cont.8381:
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r3 4
	lwoc1	r3 r1 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_fiszero
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8382
	addi	r0 r1 5
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	j	beq_cont.8383
beq_else.8382:
	addi	r0 r1 4
	lw	r30 r2 0
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r2
	jal	o_isinvert.2663
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 2
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_fisneg
	addi	r30 r30 -48
	lw	r30 r31 44
	mov	r2 r1
	lw	r30 r1 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	xor.2600
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r2 0
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r2
	jal	o_param_c.2671
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r1 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	fneg_cond.2605
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r1 36
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 5
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r0 r3 2
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f1
	div.s	f0 f1 f0
	sll	r1 r1 2
	swoc1	f0 r2 r1
beq_cont.8383:
	mov	r1 r2
	jr	r31
setup_surface_table.2838:
	addi	r0 r3 4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	lw	r30 r2 0
	sw	r1 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	o_param_a.2667
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	mul.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 16
	swc1	f1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	o_param_b.2669
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	mul.s	f1 f0 f0
	lwc1	 r30 f1 16
	add.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 24
	swc1	f1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_c.2671
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	mul.s	f1 f0 f0
	lwc1	 r30 f1 24
	add.s	f1 f0 f0
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_fispos
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8384
	addi	r0 r1 0
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 32
	div.s	f0 f1 f0
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 1
	lw	r30 r3 0
	sw	r1 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r1 r3
	jal	o_param_a.2667
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 32
	div.s	f0 f1 f0
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_fneg
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r1 36
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 2
	lw	r30 r3 0
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r3
	jal	o_param_b.2669
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 32
	div.s	f0 f1 f0
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_fneg
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r1 40
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 3
	lw	r30 r3 0
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r3
	jal	o_param_c.2671
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 32
	div.s	f0 f1 f0
	sw	r31 r30 48
	addi	r30 r30 52
	jal	min_caml_fneg
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r1 44
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	j	beq_cont.8385
beq_else.8384:
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
beq_cont.8385:
	mov	r1 r2
	jr	r31
setup_second_table.2841:
	addi	r0 r3 5
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	lw	r30 r2 0
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	quadratic.2772
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 12
	swc1	f1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	o_param_a.2667
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_fneg
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 20
	swc1	f1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_param_b.2669
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_fneg
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 28
	swc1	f1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_param_c.2671
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	mul.s	f1 f0 f0
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_fneg
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 8
	lwc1	 r30 f1 12
	swoc1	f1 r2 r1
	lw	r30 r1 0
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_isrot.2665
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8386
	addi	r0 r1 1
	addi	r0 r2 2
	sll	r2 r2 2
	lw	r30 r3 4
	lwoc1	r3 r2 f0
	lw	r30 r2 0
	sw	r1 r30 40
	swc1	f0 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r2
	jal	o_param_r2.2693
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 44
	mul.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 48
	swc1	f1 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	o_param_r3.2695
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 52
	mul.s	f1 f0 f0
	lwc1	 r30 f1 48
	add.s	f1 f0 f0
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_fhalf
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 20
	sub.s	f1 f0 f0
	lw	r30 r1 40
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 2
	addi	r0 r3 2
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f0
	lw	r30 r3 0
	sw	r1 r30 56
	swc1	f0 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	mov	r1 r3
	jal	o_param_r1.2691
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 60
	mul.s	f1 f0 f0
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 64
	swc1	f1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	jal	o_param_r3.2695
	addi	r30 r30 -76
	lw	r30 r31 72
	lwc1	 r30 f1 68
	mul.s	f1 f0 f0
	lwc1	 r30 f1 64
	add.s	f1 f0 f0
	sw	r31 r30 72
	addi	r30 r30 76
	jal	min_caml_fhalf
	addi	r30 r30 -76
	lw	r30 r31 72
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
	lw	r30 r1 56
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	addi	r0 r1 3
	addi	r0 r3 1
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f0
	lw	r30 r3 0
	sw	r1 r30 72
	swc1	f0 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	mov	r1 r3
	jal	o_param_r1.2691
	addi	r30 r30 -84
	lw	r30 r31 80
	lwc1	 r30 f1 76
	mul.s	f1 f0 f0
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 4
	lwoc1	r2 r1 f1
	lw	r30 r1 0
	swc1	f0 r30 80
	swc1	f1 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	jal	o_param_r2.2693
	addi	r30 r30 -92
	lw	r30 r31 88
	lwc1	 r30 f1 84
	mul.s	f1 f0 f0
	lwc1	 r30 f1 80
	add.s	f1 f0 f0
	sw	r31 r30 88
	addi	r30 r30 92
	jal	min_caml_fhalf
	addi	r30 r30 -92
	lw	r30 r31 88
	lwc1	 r30 f1 36
	sub.s	f1 f0 f0
	lw	r30 r1 72
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	j	beq_cont.8387
beq_else.8386:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 8
	lwc1	 r30 f0 20
	swoc1	f0 r2 r1
	addi	r0 r1 2
	sll	r1 r1 2
	lwc1	 r30 f0 28
	swoc1	f0 r2 r1
	addi	r0 r1 3
	sll	r1 r1 2
	lwc1	 r30 f0 36
	swoc1	f0 r2 r1
beq_cont.8387:
	lwc1	 r30 f0 12
	sw	r31 r30 88
	addi	r30 r30 92
	jal	min_caml_fiszero
	addi	r30 r30 -92
	lw	r30 r31 88
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8388
	j	beq_cont.8389
beq_else.8388:
	addi	r0 r1 4
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 12
	div.s	f0 f1 f0
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
beq_cont.8389:
	lw	r30 r1 8
	jr	r31
iter_setup_dirvec_constants.2844:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.8390
	jr	r31
ble_tail_else.8390:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r2 r4 2
	lwo	r3 r4 r3
	sw	r2 r30 0
	sw	r3 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	d_const.2720
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 8
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	d_vec.2718
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 4
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	o_form.2659
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8392
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8394
	lw	r30 r1 16
	lw	r30 r2 4
	sw	r31 r30 20
	addi	r30 r30 24
	jal	setup_second_table.2841
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 12
	swo	r1 r4 r3
	j	beq_cont.8395
beq_else.8394:
	lw	r30 r1 16
	lw	r30 r2 4
	sw	r31 r30 20
	addi	r30 r30 24
	jal	setup_surface_table.2838
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 12
	swo	r1 r4 r3
beq_cont.8395:
	j	beq_cont.8393
beq_else.8392:
	lw	r30 r1 16
	lw	r30 r2 4
	sw	r31 r30 20
	addi	r30 r30 24
	jal	setup_rect_table.2835
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 12
	swo	r1 r4 r3
beq_cont.8393:
	addi	r0 r1 1
	sub	r2 r1 r2
	lw	r30 r1 8
	j	iter_setup_dirvec_constants.2844
setup_dirvec_constants.2847:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 1
	sub	r2 r3 r2
	j	iter_setup_dirvec_constants.2844
setup_startp_constants.2849:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.8396
	jr	r31
ble_tail_else.8396:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r2 r4 2
	lwo	r3 r4 r3
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	jal	o_param_ctbl.2697
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 8
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	o_form.2659
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	addi	r0 r3 0
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f0
	lw	r30 r3 8
	sw	r1 r30 16
	sw	r2 r30 20
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r3
	jal	o_param_x.2675
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	sub.s	f1 f0 f0
	lw	r30 r1 20
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	addi	r0 r1 1
	addi	r0 r3 1
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f0
	lw	r30 r3 8
	sw	r1 r30 28
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r3
	jal	o_param_y.2677
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	sub.s	f1 f0 f0
	lw	r30 r1 28
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	addi	r0 r1 2
	addi	r0 r3 2
	sll	r3 r3 2
	lw	r30 r4 4
	lwoc1	r4 r3 f0
	lw	r30 r3 8
	sw	r1 r30 36
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r3
	jal	o_param_z.2679
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	sub.s	f1 f0 f0
	lw	r30 r1 36
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	addi	r0 r1 2
	lw	r30 r3 16
	sub	r3 r1 r25
	beq	r25 r0 beq_else.8398
	addi	r0 r1 2
	sub	r3 r1 r25
	blez	r25 ble_nontail_else.8400
	addi	r0 r1 0
	sll	r1 r1 2
	lwoc1	r2 r1 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f1
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	lw	r30 r1 8
	sw	r31 r30 44
	addi	r30 r30 48
	jal	quadratic.2772
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r1 3
	addi	r0 r2 3
	lw	r30 r3 16
	sub	r3 r2 r25
	beq	r25 r0 beq_else.8402
	j	beq_cont.8403
beq_else.8402:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f0
beq_cont.8403:
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	j	ble_nontail_cont.8401
ble_nontail_else.8400:
ble_nontail_cont.8401:
	j	beq_cont.8399
beq_else.8398:
	addi	r0 r1 3
	lw	r30 r3 8
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r3
	jal	o_param_abc.2673
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 12
	lwoc1	r3 r2 f0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r3 r2 f1
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r3 r2 f2
	sw	r31 r30 48
	addi	r30 r30 52
	jal	veciprod2.2635
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r1 44
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
beq_cont.8399:
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r2
	lw	r30 r1 4
	j	setup_startp_constants.2849
setup_startp.2852:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	mov	r28 r2
	mov	r2 r1
	mov	r1 r28
	jal	veccpy.2621
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -4
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r2
	lw	r30 r1 0
	j	setup_startp_constants.2849
is_rect_outside.2854:
	swc1	f2 r30 0
	swc1	f1 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_fabs
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r1 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_a.2667
	addi	r30 r30 -20
	lw	r30 r31 16
	mov.s	f0 f1
	lwc1	 r30 f0 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_fless
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8404
	lwc1	 r30 f0 4
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_fabs
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 8
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	o_param_b.2669
	addi	r30 r30 -24
	lw	r30 r31 20
	mov.s	f0 f1
	lwc1	 r30 f0 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_fless
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8406
	lwc1	 r30 f0 0
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_fabs
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 8
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	o_param_c.2671
	addi	r30 r30 -28
	lw	r30 r31 24
	mov.s	f0 f1
	lwc1	 r30 f0 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_fless
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.8407
beq_else.8406:
	addi	r0 r1 0
beq_cont.8407:
	j	beq_cont.8405
beq_else.8404:
	addi	r0 r1 0
beq_cont.8405:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8408
	lw	r30 r1 8
	j	o_isinvert.2663
beq_tail_else.8408:
	lw	r30 r1 8
	sw	r31 r30 24
	addi	r30 r30 28
	jal	o_isinvert.2663
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8409
	addi	r0 r1 0
	jr	r31
beq_tail_else.8409:
	addi	r0 r1 1
	jr	r31
is_plane_outside.2859:
	sw	r1 r30 0
	swc1	f2 r30 4
	swc1	f1 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_abc.2673
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f0 12
	lwc1	 r30 f1 8
	lwc1	 r30 f2 4
	sw	r31 r30 16
	addi	r30 r30 20
	jal	veciprod2.2635
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 0
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	o_isinvert.2663
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f0 16
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_fisneg
	addi	r30 r30 -28
	lw	r30 r31 24
	mov	r2 r1
	lw	r30 r1 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	xor.2600
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8410
	addi	r0 r1 0
	jr	r31
beq_tail_else.8410:
	addi	r0 r1 1
	jr	r31
is_second_outside.2864:
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	quadratic.2772
	addi	r30 r30 -8
	lw	r30 r31 4
	lw	r30 r1 0
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	o_form.2659
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 3
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8411
	lwc1	 r30 f0 4
	j	beq_cont.8412
beq_else.8411:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 4
	sub.s	f1 f0 f0
beq_cont.8412:
	lw	r30 r1 0
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	o_isinvert.2663
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f0 8
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_fisneg
	addi	r30 r30 -20
	lw	r30 r31 16
	mov	r2 r1
	lw	r30 r1 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	xor.2600
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8413
	addi	r0 r1 0
	jr	r31
beq_tail_else.8413:
	addi	r0 r1 1
	jr	r31
is_outside.2869:
	swc1	f2 r30 0
	swc1	f1 r30 4
	sw	r1 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_x.2675
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	lw	r30 r1 8
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	o_param_y.2677
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 4
	sub.s	f1 f0 f0
	lw	r30 r1 8
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	o_param_z.2679
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 0
	sub.s	f1 f0 f0
	lw	r30 r1 8
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_form.2659
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8414
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8415
	lwc1	 r30 f0 16
	lwc1	 r30 f1 20
	lwc1	 r30 f2 24
	lw	r30 r1 8
	j	is_second_outside.2864
beq_tail_else.8415:
	lwc1	 r30 f0 16
	lwc1	 r30 f1 20
	lwc1	 r30 f2 24
	lw	r30 r1 8
	j	is_plane_outside.2859
beq_tail_else.8414:
	lwc1	 r30 f0 16
	lwc1	 r30 f1 20
	lwc1	 r30 f2 24
	lw	r30 r1 8
	j	is_rect_outside.2854
check_all_inside.2874:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.8416
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r3 r3 2
	lwo	r4 r3 r3
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	is_outside.2869
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8417
	addi	r0 r1 0
	jr	r31
beq_tail_else.8417:
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lwc1	 r30 f0 8
	lwc1	 r30 f1 4
	lwc1	 r30 f2 0
	lw	r30 r2 12
	j	check_all_inside.2874
beq_tail_else.8416:
	addi	r0 r1 1
	jr	r31
shadow_check_and_group.2880:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.8418
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r4
	mov	r1 r3
	mov	r3 r5
	jal	solver_fast.2814
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	addi	r0 r2 0
	swc1	f0 r30 12
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8419
	lui	r24 48716
	ori	r24 r24 52429
	mtc1	r24 f1
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_fless
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.8420
beq_else.8419:
	addi	r0 r1 0
beq_cont.8420:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8421
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f0
	lwc1	 r30 f1 12
	add.s	f1 f0 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f1 f0 f1
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	add.s	f1 f2 f1
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	mul.s	f2 f0 f2
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f2 f3 f2
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mul.s	f3 f0 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r0 r1 0
	lw	r30 r2 0
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f2 f31
	mov.s	f0 f2
	mov.s	f1 f0
	mov.s	f31 f1
	jal	check_all_inside.2874
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8422
	addi	r0 r1 1
	jr	r31
beq_tail_else.8422:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_and_group.2880
beq_tail_else.8421:
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	lw	r30 r2 8
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_isinvert.2663
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8423
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_and_group.2880
beq_tail_else.8423:
	addi	r0 r1 0
	jr	r31
beq_tail_else.8418:
	addi	r0 r1 0
	jr	r31
shadow_check_one_or_group.2883:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 -1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.8424
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r3 r3 2
	lwo	r4 r3 r3
	addi	r0 r4 0
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r2 r3
	mov	r1 r4
	jal	shadow_check_and_group.2880
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8425
	addi	r0 r1 1
	jr	r31
beq_tail_else.8425:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	lw	r30 r2 0
	j	shadow_check_one_or_group.2883
beq_tail_else.8424:
	addi	r0 r1 0
	jr	r31
shadow_check_one_or_matrix.2886:
	sll	r1 r3 2
	lwo	r2 r3 r3
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.8426
	addi	r0 r5 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r4 r5 r25
	beq	r25 r0 beq_else.8427
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r3 r6
	mov	r2 r5
	mov	r1 r4
	jal	solver_fast.2814
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8429
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f1
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_fless
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8431
	addi	r0 r1 1
	lw	r30 r2 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_group.2883
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8433
	addi	r0 r1 1
	j	beq_cont.8434
beq_else.8433:
	addi	r0 r1 0
beq_cont.8434:
	j	beq_cont.8432
beq_else.8431:
	addi	r0 r1 0
beq_cont.8432:
	j	beq_cont.8430
beq_else.8429:
	addi	r0 r1 0
beq_cont.8430:
	j	beq_cont.8428
beq_else.8427:
	addi	r0 r1 1
beq_cont.8428:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8435
	addi	r0 r1 1
	lw	r30 r2 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_group.2883
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8436
	addi	r0 r1 1
	jr	r31
beq_tail_else.8436:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.2886
beq_tail_else.8435:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	j	shadow_check_one_or_matrix.2886
beq_tail_else.8426:
	addi	r0 r1 0
	jr	r31
solve_each_element.2889:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.8437
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r4 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r4
	mov	r3 r5
	jal	solver.2791
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8438
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 16
	swc1	f1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_fless
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8439
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	lwc1	 r30 f0 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_fless
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8441
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f0
	lwc1	 r30 f1 20
	add.s	f1 f0 f0
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	mul.s	f1 f0 f1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f2
	add.s	f1 f2 f1
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	mul.s	f2 f0 f2
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f3
	add.s	f2 f3 f2
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f3
	mul.s	f3 f0 f3
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 2
	sll	r3 r3 2
	lwoc1	r1 r3 f4
	add.s	f3 f4 f3
	addi	r0 r1 0
	lw	r30 r3 4
	swc1	f3 r30 24
	swc1	f2 r30 28
	swc1	f1 r30 32
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r3
	mov.s	f1 f0
	mov.s	f2 f1
	mov.s	f3 f2
	jal	check_all_inside.2874
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8443
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 36
	swoc1	f0 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	lwc1	 r30 f0 32
	lwc1	 r30 f1 28
	lwc1	 r30 f2 24
	sw	r31 r30 40
	addi	r30 r30 44
	jal	vecset.2611
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 12
	swo	r3 r1 r2
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	j	beq_cont.8444
beq_else.8443:
beq_cont.8444:
	j	beq_cont.8442
beq_else.8441:
beq_cont.8442:
	j	beq_cont.8440
beq_else.8439:
beq_cont.8440:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element.2889
beq_tail_else.8438:
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	lw	r30 r2 12
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_isinvert.2663
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8445
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element.2889
beq_tail_else.8445:
	jr	r31
beq_tail_else.8437:
	jr	r31
solve_one_or_network.2893:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.8448
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r4 r4 2
	lwo	r5 r4 r4
	addi	r0 r5 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r4
	mov	r1 r5
	jal	solve_each_element.2889
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_one_or_network.2893
beq_tail_else.8448:
	jr	r31
trace_or_matrix.2897:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.8450
	addi	r0 r6 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r5 r6 r25
	beq	r25 r0 beq_else.8451
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sw	r4 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r5
	mov	r3 r6
	jal	solver.2791
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8453
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_fless
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8455
	addi	r0 r1 1
	lw	r30 r2 12
	lw	r30 r3 0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	solve_one_or_network.2893
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.8456
beq_else.8455:
beq_cont.8456:
	j	beq_cont.8454
beq_else.8453:
beq_cont.8454:
	j	beq_cont.8452
beq_else.8451:
	addi	r0 r5 1
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r4
	mov	r1 r5
	jal	solve_one_or_network.2893
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.8452:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_or_matrix.2897
beq_tail_else.8450:
	jr	r31
judge_intersection.2901:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	lui	r24 20078
	ori	r24 r24 27432
	mtc1	r24 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r2 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	sw	r31 r30 0
	addi	r30 r30 4
	mov	r28 r3
	mov	r3 r1
	mov	r1 r2
	mov	r2 r28
	jal	trace_or_matrix.2897
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	swc1	f1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_fless
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8458
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	lwc1	 r30 f0 0
	j	min_caml_fless
beq_tail_else.8458:
	addi	r0 r1 0
	jr	r31
solve_each_element_fast.2903:
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	jal	d_vec.2718
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 8
	sll	r2 r3 2
	lw	r30 r4 4
	lwo	r4 r3 r3
	addi	r0 r5 -1
	sub	r3 r5 r25
	beq	r25 r0 beq_tail_else.8459
	lw	r30 r5 0
	sw	r1 r30 12
	sw	r3 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r5
	mov	r1 r3
	jal	solver_fast2.2832
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8460
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 20
	swc1	f1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_fless
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8461
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	lwc1	 r30 f0 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_fless
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8463
	lui	r24 15395
	ori	r24 r24 55050
	mtc1	r24 f0
	lwc1	 r30 f1 24
	add.s	f1 f0 f0
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 12
	lwoc1	r2 r1 f1
	mul.s	f1 f0 f1
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r1 r3 f2
	add.s	f1 f2 f1
	addi	r0 r1 1
	sll	r1 r1 2
	lwoc1	r2 r1 f2
	mul.s	f2 f0 f2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r3 1
	sll	r3 r3 2
	lwoc1	r1 r3 f3
	add.s	f2 f3 f2
	addi	r0 r1 2
	sll	r1 r1 2
	lwoc1	r2 r1 f3
	mul.s	f3 f0 f3
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp_fast
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f4
	add.s	f3 f4 f3
	addi	r0 r1 0
	lw	r30 r2 4
	swc1	f3 r30 28
	swc1	f2 r30 32
	swc1	f1 r30 36
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov.s	f1 f0
	mov.s	f2 f1
	mov.s	f3 f2
	jal	check_all_inside.2874
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8465
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 40
	swoc1	f0 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	lwc1	 r30 f0 36
	lwc1	 r30 f1 32
	lwc1	 r30 f2 28
	sw	r31 r30 44
	addi	r30 r30 48
	jal	vecset.2611
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 16
	swo	r3 r1 r2
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	addi	r0 r2 0
	sll	r2 r2 2
	lw	r30 r3 20
	swo	r3 r1 r2
	j	beq_cont.8466
beq_else.8465:
beq_cont.8466:
	j	beq_cont.8464
beq_else.8463:
beq_cont.8464:
	j	beq_cont.8462
beq_else.8461:
beq_cont.8462:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element_fast.2903
beq_tail_else.8460:
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -44
	lw	r30 r2 16
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r31 r30 44
	addi	r30 r30 48
	jal	o_isinvert.2663
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8467
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_each_element_fast.2903
beq_tail_else.8467:
	jr	r31
beq_tail_else.8459:
	jr	r31
solve_one_or_network_fast.2907:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 -1
	sub	r4 r5 r25
	beq	r25 r0 beq_tail_else.8470
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_and_net
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r4 r4 2
	lwo	r5 r4 r4
	addi	r0 r5 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r4
	mov	r1 r5
	jal	solve_each_element_fast.2903
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	solve_one_or_network_fast.2907
beq_tail_else.8470:
	jr	r31
trace_or_matrix_fast.2911:
	sll	r1 r4 2
	lwo	r2 r4 r4
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r5
	addi	r0 r6 -1
	sub	r5 r6 r25
	beq	r25 r0 beq_tail_else.8472
	addi	r0 r6 99
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r5 r6 r25
	beq	r25 r0 beq_else.8473
	sw	r4 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	mov	r1 r5
	jal	solver_fast2.2832
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8475
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_solver_dist
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_fless
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8477
	addi	r0 r1 1
	lw	r30 r2 12
	lw	r30 r3 0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	solve_one_or_network_fast.2907
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.8478
beq_else.8477:
beq_cont.8478:
	j	beq_cont.8476
beq_else.8475:
beq_cont.8476:
	j	beq_cont.8474
beq_else.8473:
	addi	r0 r5 1
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r4
	mov	r1 r5
	jal	solve_one_or_network_fast.2907
	addi	r30 r30 -20
	lw	r30 r31 16
beq_cont.8474:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_or_matrix_fast.2911
beq_tail_else.8472:
	jr	r31
judge_intersection_fast.2915:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	lui	r24 20078
	ori	r24 r24 27432
	mtc1	r24 f0
	sll	r3 r3 2
	swoc1	f0 r2 r3
	addi	r0 r2 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	sw	r31 r30 0
	addi	r30 r30 4
	mov	r28 r3
	mov	r3 r1
	mov	r1 r2
	mov	r2 r28
	jal	trace_or_matrix_fast.2911
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	lui	r24 48588
	ori	r24 r24 52429
	mtc1	r24 f0
	swc1	f1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_fless
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8480
	lui	r24 19646
	ori	r24 r24 48160
	mtc1	r24 f1
	lwc1	 r30 f0 0
	j	min_caml_fless
beq_tail_else.8480:
	addi	r0 r1 0
	jr	r31
get_nvector_rect.2917:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	vecbzero.2619
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 1
	lw	r30 r3 4
	sub	r3 r2 r2
	addi	r0 r4 1
	sub	r3 r4 r3
	sll	r3 r3 2
	lw	r30 r4 0
	lwoc1	r4 r3 f0
	sw	r1 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	sgn.2603
	addi	r30 r30 -20
	lw	r30 r31 16
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_fneg
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 12
	sll	r1 r1 2
	lw	r30 r2 8
	swoc1	f0 r2 r1
	jr	r31
get_nvector_plane.2919:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r3 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	o_param_a.2667
	addi	r30 r30 -16
	lw	r30 r31 12
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_fneg
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r1 8
	sll	r1 r1 2
	lw	r30 r2 4
	swoc1	f0 r2 r1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	lw	r30 r3 0
	sw	r1 r30 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	o_param_b.2669
	addi	r30 r30 -24
	lw	r30 r31 20
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_fneg
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 16
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 2
	lw	r30 r3 0
	sw	r1 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r3
	jal	o_param_c.2671
	addi	r30 r30 -32
	lw	r30 r31 28
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_fneg
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	jr	r31
get_nvector_second.2921:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f0
	sw	r1 r30 0
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	o_param_x.2675
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	sub.s	f1 f0 f0
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	lw	r30 r1 0
	swc1	f0 r30 8
	swc1	f1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	o_param_y.2677
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	lw	r30 r1 0
	swc1	f0 r30 16
	swc1	f1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	o_param_z.2679
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	sub.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	o_param_a.2667
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_b.2669
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	o_param_c.2671
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_isrot.2665
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8483
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 0
	lw	r30 r3 0
	sw	r1 r30 40
	sw	r2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r3
	jal	o_param_r3.2695
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	o_param_r2.2693
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	lwc1	 r30 f2 48
	add.s	f2 f0 f0
	sw	r31 r30 52
	addi	r30 r30 56
	jal	min_caml_fhalf
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 28
	add.s	f1 f0 f0
	lw	r30 r1 44
	sll	r1 r1 2
	lw	r30 r2 40
	swoc1	f0 r2 r1
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r2 1
	lw	r30 r3 0
	sw	r1 r30 52
	sw	r2 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov	r1 r3
	jal	o_param_r3.2695
	addi	r30 r30 -64
	lw	r30 r31 60
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	o_param_r1.2691
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	lwc1	 r30 f1 60
	add.s	f1 f0 f0
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_fhalf
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 32
	add.s	f1 f0 f0
	lw	r30 r1 56
	sll	r1 r1 2
	lw	r30 r2 52
	swoc1	f0 r2 r1
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r2 2
	lw	r30 r3 0
	sw	r1 r30 64
	sw	r2 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	mov	r1 r3
	jal	o_param_r2.2693
	addi	r30 r30 -76
	lw	r30 r31 72
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	lw	r30 r1 0
	swc1	f0 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	jal	o_param_r1.2691
	addi	r30 r30 -80
	lw	r30 r31 76
	lwc1	 r30 f1 16
	mul.s	f1 f0 f0
	lwc1	 r30 f1 72
	add.s	f1 f0 f0
	sw	r31 r30 76
	addi	r30 r30 80
	jal	min_caml_fhalf
	addi	r30 r30 -80
	lw	r30 r31 76
	lwc1	 r30 f1 36
	add.s	f1 f0 f0
	lw	r30 r1 68
	sll	r1 r1 2
	lw	r30 r2 64
	swoc1	f0 r2 r1
	j	beq_cont.8484
beq_else.8483:
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -76
	addi	r0 r2 0
	sll	r2 r2 2
	lwc1	 r30 f0 28
	swoc1	f0 r1 r2
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -76
	addi	r0 r2 1
	sll	r2 r2 2
	lwc1	 r30 f0 32
	swoc1	f0 r1 r2
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -76
	addi	r0 r2 2
	sll	r2 r2 2
	lwc1	 r30 f0 36
	swoc1	f0 r1 r2
beq_cont.8484:
	addi	r30 r30 76
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -76
	lw	r30 r2 0
	sw	r1 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	mov	r1 r2
	jal	o_isinvert.2663
	addi	r30 r30 -84
	lw	r30 r31 80
	mov	r2 r1
	lw	r30 r1 76
	j	vecunit_sgn.2629
get_nvector.2923:
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	o_form.2659
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8485
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8486
	lw	r30 r1 0
	j	get_nvector_second.2921
beq_tail_else.8486:
	lw	r30 r1 0
	j	get_nvector_plane.2919
beq_tail_else.8485:
	lw	r30 r1 4
	j	get_nvector_rect.2917
utexture.2926:
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	o_texturetype.2657
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r3 0
	lw	r30 r4 4
	sw	r1 r30 8
	sw	r2 r30 12
	sw	r3 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r4
	jal	o_color_red.2685
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r1 16
	sll	r1 r1 2
	lw	r30 r2 12
	swoc1	f0 r2 r1
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 1
	lw	r30 r3 4
	sw	r1 r30 20
	sw	r2 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r3
	jal	o_color_green.2687
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 20
	swoc1	f0 r2 r1
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 2
	lw	r30 r3 4
	sw	r1 r30 28
	sw	r2 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r3
	jal	o_color_blue.2689
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 32
	sll	r1 r1 2
	lw	r30 r2 28
	swoc1	f0 r2 r1
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8487
	addi	r0 r1 2
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8488
	addi	r0 r1 3
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8489
	addi	r0 r1 4
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8490
	jr	r31
beq_tail_else.8490:
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f0
	lw	r30 r1 4
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_param_x.2675
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	sub.s	f1 f0 f0
	lw	r30 r1 4
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	o_param_a.2667
	addi	r30 r30 -48
	lw	r30 r31 44
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_sqrt
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	mul.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	lw	r30 r1 4
	swc1	f0 r30 44
	swc1	f1 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	o_param_z.2679
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 48
	sub.s	f1 f0 f0
	lw	r30 r1 4
	swc1	f0 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	o_param_c.2671
	addi	r30 r30 -60
	lw	r30 r31 56
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_sqrt
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 52
	mul.s	f1 f0 f0
	lwc1	 r30 f1 44
	swc1	f0 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -64
	lw	r30 r31 60
	lwc1	 r30 f1 56
	swc1	f0 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 60
	add.s	f1 f0 f0
	lwc1	 r30 f1 44
	swc1	f0 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	mov.s	f1 f0
	jal	min_caml_fabs
	addi	r30 r30 -72
	lw	r30 r31 68
	lui	r24 14545
	ori	r24 r24 46871
	mtc1	r24 f1
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_fless
	addi	r30 r30 -72
	lw	r30 r31 68
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8492
	lui	r24 16752
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8493
beq_else.8492:
	lwc1	 r30 f0 44
	lwc1	 r30 f1 56
	div.s	f1 f0 f0
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_fabs
	addi	r30 r30 -72
	lw	r30 r31 68
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_atan
	addi	r30 r30 -72
	lw	r30 r31 68
	lui	r24 16880
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	div.s	f0 f1 f0
beq_cont.8493:
	swc1	f0 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	jal	min_caml_floor
	addi	r30 r30 -76
	lw	r30 r31 72
	lwc1	 r30 f1 68
	sub.s	f1 f0 f0
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	lw	r30 r1 4
	swc1	f0 r30 72
	swc1	f1 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	jal	o_param_y.2677
	addi	r30 r30 -84
	lw	r30 r31 80
	lwc1	 r30 f1 76
	sub.s	f1 f0 f0
	lw	r30 r1 4
	swc1	f0 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	jal	o_param_b.2669
	addi	r30 r30 -88
	lw	r30 r31 84
	sw	r31 r30 84
	addi	r30 r30 88
	jal	min_caml_sqrt
	addi	r30 r30 -88
	lw	r30 r31 84
	lwc1	 r30 f1 80
	mul.s	f1 f0 f0
	lwc1	 r30 f1 64
	swc1	f0 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	mov.s	f1 f0
	jal	min_caml_fabs
	addi	r30 r30 -92
	lw	r30 r31 88
	lui	r24 14545
	ori	r24 r24 46871
	mtc1	r24 f1
	sw	r31 r30 88
	addi	r30 r30 92
	jal	min_caml_fless
	addi	r30 r30 -92
	lw	r30 r31 88
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8494
	lui	r24 16752
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8495
beq_else.8494:
	lwc1	 r30 f0 64
	lwc1	 r30 f1 84
	div.s	f1 f0 f0
	sw	r31 r30 88
	addi	r30 r30 92
	jal	min_caml_fabs
	addi	r30 r30 -92
	lw	r30 r31 88
	sw	r31 r30 88
	addi	r30 r30 92
	jal	min_caml_atan
	addi	r30 r30 -92
	lw	r30 r31 88
	lui	r24 16880
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	div.s	f0 f1 f0
beq_cont.8495:
	swc1	f0 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	jal	min_caml_floor
	addi	r30 r30 -96
	lw	r30 r31 92
	lwc1	 r30 f1 88
	sub.s	f1 f0 f0
	lui	r24 15897
	ori	r24 r24 39322
	mtc1	r24 f1
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f2
	lwc1	 r30 f3 72
	sub.s	f2 f3 f2
	swc1	f0 r30 92
	swc1	f1 r30 96
	sw	r31 r30 100
	addi	r30 r30 104
	mov.s	f2 f0
	jal	min_caml_fsqr
	addi	r30 r30 -104
	lw	r30 r31 100
	lwc1	 r30 f1 96
	sub.s	f1 f0 f0
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	lwc1	 r30 f2 92
	sub.s	f1 f2 f1
	swc1	f0 r30 100
	sw	r31 r30 104
	addi	r30 r30 108
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -108
	lw	r30 r31 104
	lwc1	 r30 f1 100
	sub.s	f1 f0 f0
	swc1	f0 r30 104
	sw	r31 r30 108
	addi	r30 r30 112
	jal	min_caml_fisneg
	addi	r30 r30 -112
	lw	r30 r31 108
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8496
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8497
beq_else.8496:
	lwc1	 r30 f0 104
beq_cont.8497:
	addi	r30 r30 108
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -108
	addi	r0 r2 2
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f1 f0 f0
	lui	r24 16025
	ori	r24 r24 39322
	mtc1	r24 f1
	div.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.8489:
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f0
	lw	r30 r1 4
	swc1	f0 r30 108
	sw	r31 r30 112
	addi	r30 r30 116
	jal	o_param_x.2675
	addi	r30 r30 -116
	lw	r30 r31 112
	lwc1	 r30 f1 108
	sub.s	f1 f0 f0
	addi	r0 r1 2
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f1
	lw	r30 r1 4
	swc1	f0 r30 112
	swc1	f1 r30 116
	sw	r31 r30 120
	addi	r30 r30 124
	jal	o_param_z.2679
	addi	r30 r30 -124
	lw	r30 r31 120
	lwc1	 r30 f1 116
	sub.s	f1 f0 f0
	lwc1	 r30 f1 112
	swc1	f0 r30 120
	sw	r31 r30 124
	addi	r30 r30 128
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -128
	lw	r30 r31 124
	lwc1	 r30 f1 120
	swc1	f0 r30 124
	sw	r31 r30 128
	addi	r30 r30 132
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -132
	lw	r30 r31 128
	lwc1	 r30 f1 124
	add.s	f1 f0 f0
	sw	r31 r30 128
	addi	r30 r30 132
	jal	min_caml_sqrt
	addi	r30 r30 -132
	lw	r30 r31 128
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f0 f1 f0
	swc1	f0 r30 128
	sw	r31 r30 132
	addi	r30 r30 136
	jal	min_caml_floor
	addi	r30 r30 -136
	lw	r30 r31 132
	lwc1	 r30 f1 128
	sub.s	f1 f0 f0
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	mul.s	f0 f1 f0
	sw	r31 r30 132
	addi	r30 r30 136
	jal	min_caml_cos
	addi	r30 r30 -136
	lw	r30 r31 132
	sw	r31 r30 132
	addi	r30 r30 136
	jal	min_caml_fsqr
	addi	r30 r30 -136
	lw	r30 r31 132
	addi	r30 r30 132
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -132
	addi	r0 r2 1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 132
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -132
	addi	r0 r2 2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.8488:
	addi	r0 r1 1
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f0
	lui	r24 16000
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	sw	r31 r30 132
	addi	r30 r30 136
	jal	min_caml_sin
	addi	r30 r30 -136
	lw	r30 r31 132
	sw	r31 r30 132
	addi	r30 r30 136
	jal	min_caml_fsqr
	addi	r30 r30 -136
	lw	r30 r31 132
	addi	r30 r30 132
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -132
	addi	r0 r2 0
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 132
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -132
	addi	r0 r2 1
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f0
	mul.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.8487:
	addi	r0 r1 0
	sll	r1 r1 2
	lw	r30 r2 0
	lwoc1	r2 r1 f0
	lw	r30 r1 4
	swc1	f0 r30 132
	sw	r31 r30 136
	addi	r30 r30 140
	jal	o_param_x.2675
	addi	r30 r30 -140
	lw	r30 r31 136
	lwc1	 r30 f1 132
	sub.s	f1 f0 f0
	lui	r24 15692
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f1
	swc1	f0 r30 136
	sw	r31 r30 140
	addi	r30 r30 144
	mov.s	f1 f0
	jal	min_caml_floor
	addi	r30 r30 -144
	lw	r30 r31 140
	lui	r24 16800
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 136
	sub.s	f1 f0 f0
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	sw	r31 r30 140
	addi	r30 r30 144
	jal	min_caml_fless
	addi	r30 r30 -144
	lw	r30 r31 140
	addi	r0 r2 2
	sll	r2 r2 2
	lw	r30 r3 0
	lwoc1	r3 r2 f0
	lw	r30 r2 4
	sw	r1 r30 140
	swc1	f0 r30 144
	sw	r31 r30 148
	addi	r30 r30 152
	mov	r1 r2
	jal	o_param_z.2679
	addi	r30 r30 -152
	lw	r30 r31 148
	lwc1	 r30 f1 144
	sub.s	f1 f0 f0
	lui	r24 15692
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f1
	swc1	f0 r30 148
	sw	r31 r30 152
	addi	r30 r30 156
	mov.s	f1 f0
	jal	min_caml_floor
	addi	r30 r30 -156
	lw	r30 r31 152
	lui	r24 16800
	ori	r24 r24 0
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 148
	sub.s	f1 f0 f0
	lui	r24 16672
	ori	r24 r24 0
	mtc1	r24 f1
	sw	r31 r30 152
	addi	r30 r30 156
	jal	min_caml_fless
	addi	r30 r30 -156
	lw	r30 r31 152
	addi	r30 r30 152
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -152
	addi	r0 r3 1
	addi	r0 r4 0
	lw	r30 r5 140
	sub	r5 r4 r25
	beq	r25 r0 beq_else.8501
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.8503
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8504
beq_else.8503:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.8504:
	j	beq_cont.8502
beq_else.8501:
	addi	r0 r4 0
	sub	r1 r4 r25
	beq	r25 r0 beq_else.8505
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	j	beq_cont.8506
beq_else.8505:
	lui	r24 17279
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.8506:
beq_cont.8502:
	sll	r3 r1 2
	swoc1	f0 r2 r1
	jr	r31
add_light.2929:
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_fispos
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8508
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	lwc1	 r30 f0 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	vecaccum.2640
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.8509
beq_else.8508:
beq_cont.8509:
	lwc1	 r30 f0 4
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_fispos
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8510
	lwc1	 r30 f0 4
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_fsqr
	addi	r30 r30 -16
	lw	r30 r31 12
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_fsqr
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 0
	mul.s	f0 f1 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.8510:
	jr	r31
trace_reflections.2933:
	addi	r0 r3 0
	sub	r3 r1 r25
	blez	r25 ble_tail_else.8513
	jr	r31
ble_tail_else.8513:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r4 2
	lwo	r3 r4 r3
	sw	r1 r30 0
	swc1	f1 r30 4
	sw	r2 r30 8
	swc1	f0 r30 12
	sw	r3 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	r_dvec.2724
	addi	r30 r30 -24
	lw	r30 r31 20
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	judge_intersection_fast.2915
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8515
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 4
	mult	r1 r2 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 16
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	r_surface_id.2722
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 24
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8517
	j	beq_cont.8518
beq_else.8517:
	addi	r0 r1 0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	sw	r31 r30 28
	addi	r30 r30 32
	jal	shadow_check_one_or_matrix.2886
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8519
	j	beq_cont.8520
beq_else.8519:
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	lw	r30 r2 20
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	jal	d_vec.2718
	addi	r30 r30 -36
	lw	r30 r31 32
	mov	r2 r1
	lw	r30 r1 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	veciprod.2632
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r1 16
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	r_bright.2726
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 12
	mul.s	f0 f1 f2
	lwc1	 r30 f3 32
	mul.s	f2 f3 f2
	lw	r30 r1 20
	swc1	f2 r30 36
	swc1	f0 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	jal	d_vec.2718
	addi	r30 r30 -48
	lw	r30 r31 44
	mov	r2 r1
	lw	r30 r1 8
	sw	r31 r30 44
	addi	r30 r30 48
	jal	veciprod.2632
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	mul.s	f1 f0 f1
	lwc1	 r30 f0 36
	lwc1	 r30 f2 4
	sw	r31 r30 44
	addi	r30 r30 48
	jal	add_light.2929
	addi	r30 r30 -48
	lw	r30 r31 44
beq_cont.8520:
beq_cont.8518:
	j	beq_cont.8516
beq_else.8515:
beq_cont.8516:
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	lwc1	 r30 f0 12
	lwc1	 r30 f1 4
	lw	r30 r2 8
	j	trace_reflections.2933
trace_ray.2938:
	addi	r0 r4 4
	sub	r1 r4 r25
	blez	r25 ble_tail_else.8521
	jr	r31
ble_tail_else.8521:
	swc1	f1 r30 0
	sw	r3 r30 4
	swc1	f0 r30 8
	sw	r1 r30 12
	sw	r2 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	p_surface_ids.2703
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	jal	judge_intersection.2901
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8523
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sll	r1 r3 2
	lwo	r2 r3 r2
	sw	r1 r30 24
	sw	r2 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r2
	jal	o_reflectiontype.2661
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 28
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r2
	jal	o_diffuse.2681
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 8
	mul.s	f0 f1 f0
	lw	r30 r1 28
	lw	r30 r2 16
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	get_nvector.2923
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sw	r31 r30 40
	addi	r30 r30 44
	jal	veccpy.2621
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	lw	r30 r1 28
	sw	r31 r30 40
	addi	r30 r30 44
	jal	utexture.2926
	addi	r30 r30 -44
	lw	r30 r31 40
	addi	r0 r1 4
	lw	r30 r2 24
	mult	r2 r1 r1
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intsec_rectside
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	add	r1 r2 r1
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 20
	swo	r1 r4 r3
	lw	r30 r1 4
	sw	r31 r30 40
	addi	r30 r30 44
	jal	p_intersection_points.2701
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 12
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -40
	sw	r31 r30 40
	addi	r30 r30 44
	mov	r2 r3
	jal	veccpy.2621
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r1 4
	sw	r31 r30 40
	addi	r30 r30 44
	jal	p_calc_diffuse.2705
	addi	r30 r30 -44
	lw	r30 r31 40
	lw	r30 r2 28
	sw	r1 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov	r1 r2
	jal	o_diffuse.2681
	addi	r30 r30 -48
	lw	r30 r31 44
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	sw	r31 r30 44
	addi	r30 r30 48
	jal	min_caml_fless
	addi	r30 r30 -48
	lw	r30 r31 44
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8524
	addi	r0 r1 0
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 40
	swo	r1 r4 r3
	j	beq_cont.8525
beq_else.8524:
	addi	r0 r1 1
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 40
	swo	r1 r4 r3
	lw	r30 r1 4
	sw	r31 r30 44
	addi	r30 r30 48
	jal	p_energy.2707
	addi	r30 r30 -48
	lw	r30 r31 44
	lw	r30 r2 12
	sll	r2 r3 2
	lwo	r1 r3 r3
	addi	r30 r30 44
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -44
	sw	r1 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r4
	mov	r1 r3
	jal	veccpy.2621
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r1 12
	sll	r1 r2 2
	lw	r30 r3 44
	lwo	r3 r2 r2
	lui	r24 15232
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 36
	mul.s	f0 f1 f0
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r1 r2
	jal	vecscale.2650
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r1 4
	sw	r31 r30 48
	addi	r30 r30 52
	jal	p_nvectors.2716
	addi	r30 r30 -52
	lw	r30 r31 48
	lw	r30 r2 12
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	sw	r31 r30 48
	addi	r30 r30 52
	mov	r2 r3
	jal	veccpy.2621
	addi	r30 r30 -52
	lw	r30 r31 48
beq_cont.8525:
	lui	r24 49152
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -48
	lw	r30 r1 16
	swc1	f0 r30 48
	sw	r31 r30 52
	addi	r30 r30 56
	jal	veciprod.2632
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 48
	mul.s	f1 f0 f0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	lw	r30 r1 16
	sw	r31 r30 52
	addi	r30 r30 56
	jal	vecaccum.2640
	addi	r30 r30 -56
	lw	r30 r31 52
	lw	r30 r1 28
	sw	r31 r30 52
	addi	r30 r30 56
	jal	o_hilight.2683
	addi	r30 r30 -56
	lw	r30 r31 52
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	addi	r0 r1 0
	addi	r30 r30 52
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -52
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	swc1	f0 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	jal	shadow_check_one_or_matrix.2886
	addi	r30 r30 -60
	lw	r30 r31 56
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8526
	j	beq_cont.8527
beq_else.8526:
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -56
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	sw	r31 r30 56
	addi	r30 r30 60
	jal	veciprod.2632
	addi	r30 r30 -60
	lw	r30 r31 56
	sw	r31 r30 56
	addi	r30 r30 60
	jal	min_caml_fneg
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f1 36
	mul.s	f0 f1 f0
	addi	r30 r30 56
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -56
	lw	r30 r1 16
	swc1	f0 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	veciprod.2632
	addi	r30 r30 -64
	lw	r30 r31 60
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_fneg
	addi	r30 r30 -64
	lw	r30 r31 60
	mov.s	f0 f1
	lwc1	 r30 f0 56
	lwc1	 r30 f2 52
	sw	r31 r30 60
	addi	r30 r30 64
	jal	add_light.2929
	addi	r30 r30 -64
	lw	r30 r31 60
beq_cont.8527:
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -60
	sw	r31 r30 60
	addi	r30 r30 64
	jal	setup_startp.2852
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r30 r30 60
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -60
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r1
	lwc1	 r30 f0 36
	lwc1	 r30 f1 52
	lw	r30 r2 16
	sw	r31 r30 60
	addi	r30 r30 64
	jal	trace_reflections.2933
	addi	r30 r30 -64
	lw	r30 r31 60
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f0
	lwc1	 r30 f1 8
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_fless
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8528
	addi	r0 r1 4
	lw	r30 r2 12
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.8529
	addi	r0 r1 1
	add	r2 r1 r1
	addi	r0 r3 -1
	sll	r1 r1 2
	lw	r30 r4 20
	swo	r3 r4 r1
	j	ble_nontail_cont.8530
ble_nontail_else.8529:
ble_nontail_cont.8530:
	addi	r0 r1 2
	lw	r30 r3 32
	sub	r3 r1 r25
	beq	r25 r0 beq_tail_else.8531
	jr	r31
beq_tail_else.8531:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	lw	r30 r1 28
	swc1	f0 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	o_diffuse.2681
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 60
	sub.s	f1 f0 f0
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	addi	r0 r1 1
	lw	r30 r2 12
	add	r2 r1 r1
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_tmin
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -64
	addi	r0 r3 0
	sll	r3 r3 2
	lwoc1	r2 r3 f1
	lwc1	 r30 f2 0
	add.s	f2 f1 f1
	lw	r30 r2 16
	lw	r30 r3 4
	j	trace_ray.2938
beq_tail_else.8528:
	jr	r31
beq_tail_else.8523:
	addi	r0 r1 -1
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 20
	swo	r1 r4 r3
	addi	r0 r1 0
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8534
	addi	r30 r30 64
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -64
	lw	r30 r1 16
	sw	r31 r30 64
	addi	r30 r30 68
	jal	veciprod.2632
	addi	r30 r30 -68
	lw	r30 r31 64
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_fneg
	addi	r30 r30 -68
	lw	r30 r31 64
	swc1	f0 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_fispos
	addi	r30 r30 -72
	lw	r30 r31 68
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8535
	lwc1	 r30 f0 64
	sw	r31 r30 68
	addi	r30 r30 72
	jal	min_caml_fsqr
	addi	r30 r30 -72
	lw	r30 r31 68
	lwc1	 r30 f1 64
	mul.s	f0 f1 f0
	lwc1	 r30 f1 8
	mul.s	f0 f1 f0
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_beam
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f0
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r2 0
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r2 1
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r2 2
	addi	r30 r30 68
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -68
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	add.s	f1 f0 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	jr	r31
beq_tail_else.8535:
	jr	r31
beq_tail_else.8534:
	jr	r31
trace_diffuse_ray.2944:
	swc1	f0 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	judge_intersection_fast.2915
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8539
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersected_object_id
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	d_vec.2718
	addi	r30 r30 -16
	lw	r30 r31 12
	mov	r2 r1
	lw	r30 r1 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	get_nvector.2923
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_intersection_point
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	lw	r30 r1 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	utexture.2926
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_or_net
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	sw	r31 r30 12
	addi	r30 r30 16
	jal	shadow_check_one_or_matrix.2886
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8540
	jr	r31
beq_tail_else.8540:
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_nvector
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	sw	r31 r30 12
	addi	r30 r30 16
	jal	veciprod.2632
	addi	r30 r30 -16
	lw	r30 r31 12
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_fneg
	addi	r30 r30 -16
	lw	r30 r31 12
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_fispos
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8542
	lwc1	 r30 f0 12
	j	beq_cont.8543
beq_else.8542:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
beq_cont.8543:
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	lwc1	 r30 f1 0
	mul.s	f1 f0 f0
	lw	r30 r2 8
	sw	r1 r30 16
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	jal	o_diffuse.2681
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	mul.s	f1 f0 f0
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_texture_color
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	lw	r30 r1 16
	j	vecaccum.2640
beq_tail_else.8539:
	jr	r31
iter_trace_diffuse_rays.2947:
	addi	r0 r5 0
	sub	r5 r4 r25
	blez	r25 ble_tail_else.8545
	jr	r31
ble_tail_else.8545:
	sll	r4 r5 2
	lwo	r1 r5 r5
	sw	r3 r30 0
	sw	r1 r30 4
	sw	r4 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r5
	jal	d_vec.2718
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	veciprod.2632
	addi	r30 r30 -20
	lw	r30 r31 16
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_fisneg
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8547
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r3 4
	lwo	r3 r1 r1
	lui	r24 49942
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 16
	div.s	f1 f0 f0
	sw	r31 r30 20
	addi	r30 r30 24
	jal	trace_diffuse_ray.2944
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.8548
beq_else.8547:
	lw	r30 r1 8
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	lui	r24 17174
	ori	r24 r24 0
	mtc1	r24 f0
	lwc1	 r30 f1 16
	div.s	f1 f0 f0
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	trace_diffuse_ray.2944
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.8548:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r4
	lw	r30 r1 4
	lw	r30 r2 12
	lw	r30 r3 0
	j	iter_trace_diffuse_rays.2947
trace_diffuse_rays.2952:
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	jal	setup_startp.2852
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r4 118
	lw	r30 r1 8
	lw	r30 r2 4
	lw	r30 r3 0
	j	iter_trace_diffuse_rays.2947
trace_diffuse_ray_80percent.2956:
	addi	r0 r4 0
	sw	r3 r30 0
	sw	r2 r30 4
	sw	r1 r30 8
	sub	r1 r4 r25
	beq	r25 r0 beq_else.8549
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r4
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r4
	jal	trace_diffuse_rays.2952
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.8550
beq_else.8549:
beq_cont.8550:
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8551
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 1
	sll	r3 r3 2
	lwo	r1 r3 r1
	lw	r30 r3 4
	lw	r30 r4 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	mov	r3 r4
	jal	trace_diffuse_rays.2952
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.8552
beq_else.8551:
beq_cont.8552:
	addi	r0 r1 2
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8553
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 2
	sll	r3 r3 2
	lwo	r1 r3 r1
	lw	r30 r3 4
	lw	r30 r4 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	mov	r3 r4
	jal	trace_diffuse_rays.2952
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.8554
beq_else.8553:
beq_cont.8554:
	addi	r0 r1 3
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_else.8555
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r3 3
	sll	r3 r3 2
	lwo	r1 r3 r1
	lw	r30 r3 4
	lw	r30 r4 0
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	mov	r3 r4
	jal	trace_diffuse_rays.2952
	addi	r30 r30 -16
	lw	r30 r31 12
	j	beq_cont.8556
beq_else.8555:
beq_cont.8556:
	addi	r0 r1 4
	lw	r30 r2 8
	sub	r2 r1 r25
	beq	r25 r0 beq_tail_else.8557
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 4
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 4
	lw	r30 r3 0
	j	trace_diffuse_rays.2952
beq_tail_else.8557:
	jr	r31
calc_diffuse_using_1point.2960:
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	p_received_ray_20percent.2709
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	p_nvectors.2716
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 4
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	p_intersection_points.2701
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 4
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	p_energy.2707
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -20
	lw	r30 r3 0
	sll	r3 r4 2
	lw	r30 r5 8
	lwo	r5 r4 r4
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	mov	r2 r4
	jal	veccpy.2621
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r1 4
	sw	r31 r30 24
	addi	r30 r30 28
	jal	p_group_id.2711
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 12
	lwo	r4 r3 r3
	sll	r2 r4 2
	lw	r30 r5 16
	lwo	r5 r4 r4
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r3
	mov	r3 r4
	jal	trace_diffuse_ray_80percent.2956
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	lw	r30 r2 0
	sll	r2 r2 2
	lw	r30 r3 20
	lwo	r3 r2 r2
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	j	vecaccumv.2653
calc_diffuse_using_5points.2963:
	sll	r1 r6 2
	lwo	r2 r6 r2
	sw	r5 r30 0
	sw	r4 r30 4
	sw	r3 r30 8
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	p_received_ray_20percent.2709
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 1
	lw	r30 r3 12
	sub	r3 r2 r2
	sll	r2 r2 2
	lw	r30 r4 8
	lwo	r4 r2 r2
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	p_received_ray_20percent.2709
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 8
	lwo	r4 r3 r3
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r3
	jal	p_received_ray_20percent.2709
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 1
	lw	r30 r3 12
	add	r3 r2 r2
	sll	r2 r2 2
	lw	r30 r4 8
	lwo	r4 r2 r2
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	p_received_ray_20percent.2709
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r2 12
	sll	r2 r3 2
	lw	r30 r4 4
	lwo	r4 r3 r3
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r3
	jal	p_received_ray_20percent.2709
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -32
	lw	r30 r3 0
	sll	r3 r4 2
	lw	r30 r5 16
	lwo	r5 r4 r4
	sw	r1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r1 r2
	mov	r2 r4
	jal	veccpy.2621
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 20
	lwo	r4 r3 r3
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r3
	jal	vecadd.2644
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 24
	lwo	r4 r3 r3
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r3
	jal	vecadd.2644
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 28
	lwo	r4 r3 r3
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r3
	jal	vecadd.2644
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r2 0
	sll	r2 r3 2
	lw	r30 r4 32
	lwo	r4 r3 r3
	sw	r31 r30 36
	addi	r30 r30 40
	mov	r2 r3
	jal	vecadd.2644
	addi	r30 r30 -40
	lw	r30 r31 36
	lw	r30 r1 12
	sll	r1 r1 2
	lw	r30 r2 8
	lwo	r2 r1 r1
	sw	r31 r30 36
	addi	r30 r30 40
	jal	p_energy.2707
	addi	r30 r30 -40
	lw	r30 r31 36
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	lw	r30 r3 0
	sll	r3 r3 2
	lwo	r1 r3 r1
	addi	r30 r30 36
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -36
	mov	r28 r2
	mov	r2 r1
	mov	r1 r28
	j	vecaccumv.2653
do_without_neighbors.2969:
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.8559
	jr	r31
ble_tail_else.8559:
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	p_surface_ids.2703
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	lw	r30 r3 4
	sll	r3 r4 2
	lwo	r1 r4 r1
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8561
	jr	r31
ble_tail_else.8561:
	lw	r30 r1 0
	sw	r31 r30 8
	addi	r30 r30 12
	jal	p_calc_diffuse.2705
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8563
	lw	r30 r1 0
	sw	r31 r30 8
	addi	r30 r30 12
	jal	calc_diffuse_using_1point.2960
	addi	r30 r30 -12
	lw	r30 r31 8
	j	beq_cont.8564
beq_else.8563:
beq_cont.8564:
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r2
	lw	r30 r1 0
	j	do_without_neighbors.2969
neighbors_exist.2972:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 1
	sll	r4 r4 2
	lwo	r3 r4 r3
	addi	r0 r4 1
	add	r2 r4 r4
	sub	r3 r4 r25
	blez	r25 ble_tail_else.8565
	addi	r0 r3 0
	sub	r2 r3 r25
	blez	r25 ble_tail_else.8566
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 1
	add	r1 r3 r3
	sub	r2 r3 r25
	blez	r25 ble_tail_else.8567
	addi	r0 r2 0
	sub	r1 r2 r25
	blez	r25 ble_tail_else.8568
	addi	r0 r1 1
	jr	r31
ble_tail_else.8568:
	addi	r0 r1 0
	jr	r31
ble_tail_else.8567:
	addi	r0 r1 0
	jr	r31
ble_tail_else.8566:
	addi	r0 r1 0
	jr	r31
ble_tail_else.8565:
	addi	r0 r1 0
	jr	r31
get_surface_id.2976:
	sw	r2 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	p_surface_ids.2703
	addi	r30 r30 -8
	lw	r30 r31 4
	lw	r30 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	jr	r31
neighbors_are_available.2979:
	sll	r1 r6 2
	lwo	r3 r6 r6
	sw	r3 r30 0
	sw	r4 r30 4
	sw	r5 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r5
	mov	r1 r6
	jal	get_surface_id.2976
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	sll	r2 r3 2
	lw	r30 r4 12
	lwo	r4 r3 r3
	lw	r30 r4 8
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r4
	mov	r1 r3
	jal	get_surface_id.2976
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8569
	addi	r0 r1 0
	jr	r31
beq_tail_else.8569:
	lw	r30 r1 16
	sll	r1 r3 2
	lw	r30 r4 4
	lwo	r4 r3 r3
	lw	r30 r4 8
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r4
	mov	r1 r3
	jal	get_surface_id.2976
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8570
	addi	r0 r1 0
	jr	r31
beq_tail_else.8570:
	addi	r0 r1 1
	lw	r30 r3 16
	sub	r3 r1 r1
	sll	r1 r1 2
	lw	r30 r4 0
	lwo	r4 r1 r1
	lw	r30 r5 8
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r5
	jal	get_surface_id.2976
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8571
	addi	r0 r1 0
	jr	r31
beq_tail_else.8571:
	addi	r0 r1 1
	lw	r30 r3 16
	add	r3 r1 r1
	sll	r1 r1 2
	lw	r30 r3 0
	lwo	r3 r1 r1
	lw	r30 r3 8
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r2 r3
	jal	get_surface_id.2976
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r2 20
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8572
	addi	r0 r1 0
	jr	r31
beq_tail_else.8572:
	addi	r0 r1 1
	jr	r31
try_exploit_neighbors.2985:
	sll	r1 r7 2
	lwo	r4 r7 r7
	addi	r0 r8 4
	sub	r6 r8 r25
	blez	r25 ble_tail_else.8573
	jr	r31
ble_tail_else.8573:
	addi	r0 r8 0
	sw	r2 r30 0
	sw	r7 r30 4
	sw	r6 r30 8
	sw	r5 r30 12
	sw	r4 r30 16
	sw	r3 r30 20
	sw	r1 r30 24
	sw	r8 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r2 r6
	mov	r1 r7
	jal	get_surface_id.2976
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r2 28
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8575
	jr	r31
ble_tail_else.8575:
	lw	r30 r1 24
	lw	r30 r2 20
	lw	r30 r3 16
	lw	r30 r4 12
	lw	r30 r5 8
	sw	r31 r30 32
	addi	r30 r30 36
	jal	neighbors_are_available.2979
	addi	r30 r30 -36
	lw	r30 r31 32
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8577
	lw	r30 r1 4
	sw	r31 r30 32
	addi	r30 r30 36
	jal	p_calc_diffuse.2705
	addi	r30 r30 -36
	lw	r30 r31 32
	lw	r30 r5 8
	sll	r5 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8578
	lw	r30 r1 24
	lw	r30 r2 20
	lw	r30 r3 16
	lw	r30 r4 12
	sw	r31 r30 32
	addi	r30 r30 36
	jal	calc_diffuse_using_5points.2963
	addi	r30 r30 -36
	lw	r30 r31 32
	j	beq_cont.8579
beq_else.8578:
beq_cont.8579:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r6
	lw	r30 r1 24
	lw	r30 r2 0
	lw	r30 r3 20
	lw	r30 r4 16
	lw	r30 r5 12
	j	try_exploit_neighbors.2985
beq_tail_else.8577:
	lw	r30 r1 24
	sll	r1 r1 2
	lw	r30 r2 16
	lwo	r2 r1 r1
	lw	r30 r2 8
	j	do_without_neighbors.2969
write_ppm_header.2992:
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
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
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
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 1
	sll	r2 r2 2
	lwo	r1 r2 r1
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
write_rgb_element.2994:
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_int_of_float
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r2 255
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.8580
	addi	r0 r1 255
	j	ble_nontail_cont.8581
ble_nontail_else.8580:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.8582
	addi	r0 r1 0
	j	ble_nontail_cont.8583
ble_nontail_else.8582:
ble_nontail_cont.8583:
ble_nontail_cont.8581:
	j	min_caml_print_int
write_rgb.2996:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	write_rgb_element.2994
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 32
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	write_rgb_element.2994
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 32
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_print_char
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	write_rgb_element.2994
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 10
	j	min_caml_print_char
pretrace_diffuse_rays.2998:
	addi	r0 r3 4
	sub	r2 r3 r25
	blez	r25 ble_tail_else.8584
	jr	r31
ble_tail_else.8584:
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	get_surface_id.2976
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8586
	jr	r31
ble_tail_else.8586:
	lw	r30 r1 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	p_calc_diffuse.2705
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 0
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r0 r3 0
	sub	r1 r3 r25
	beq	r25 r0 beq_else.8588
	lw	r30 r1 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	p_group_id.2711
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r30 r30 8
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -8
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	vecbzero.2619
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r1 4
	sw	r31 r30 12
	addi	r30 r30 16
	jal	p_nvectors.2716
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 4
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	p_intersection_points.2701
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	lw	r30 r3 8
	sll	r3 r3 2
	lwo	r2 r3 r2
	lw	r30 r3 0
	sll	r3 r4 2
	lw	r30 r5 12
	lwo	r5 r4 r4
	sll	r3 r5 2
	lwo	r1 r5 r1
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r3 r1
	mov	r1 r2
	mov	r2 r4
	jal	trace_diffuse_rays.2952
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 4
	sw	r31 r30 16
	addi	r30 r30 20
	jal	p_received_ray_20percent.2709
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 0
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_diffuse_ray
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -16
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r2 r3
	jal	veccpy.2621
	addi	r30 r30 -20
	lw	r30 r31 16
	j	beq_cont.8589
beq_else.8588:
beq_cont.8589:
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r2
	lw	r30 r1 4
	j	pretrace_diffuse_rays.2998
pretrace_pixels.3001:
	addi	r0 r4 0
	sub	r4 r2 r25
	blez	r25 ble_tail_else.8590
	jr	r31
ble_tail_else.8590:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwo	r4 r5 r4
	sub	r2 r4 r4
	sw	r3 r30 0
	sw	r1 r30 4
	sw	r2 r30 8
	swc1	f2 r30 12
	swc1	f1 r30 16
	swc1	f0 r30 20
	swc1	f3 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r4
	jal	min_caml_float_of_int
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f1 24
	mul.s	f1 f0 f0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f1
	lwc1	 r30 f2 20
	add.s	f1 f2 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 1
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 1
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f1
	lwc1	 r30 f3 16
	add.s	f1 f3 f1
	sll	r2 r2 2
	swoc1	f1 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenx_dir
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r4 2
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	mul.s	f0 f1 f0
	lwc1	 r30 f1 12
	add.s	f0 f1 f0
	sll	r2 r2 2
	swoc1	f0 r1 r2
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	sw	r31 r30 28
	addi	r30 r30 32
	jal	vecunit_sgn.2629
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	sw	r31 r30 28
	addi	r30 r30 32
	jal	vecbzero.2619
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_startp
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_viewpoint
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sw	r31 r30 28
	addi	r30 r30 32
	jal	veccpy.2621
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_ptrace_dirvec
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	lw	r30 r3 8
	sll	r3 r4 2
	lw	r30 r5 4
	lwo	r5 r4 r4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r3 r4
	jal	trace_ray.2938
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 8
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	jal	p_rgb.2699
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	sw	r31 r30 28
	addi	r30 r30 32
	jal	veccpy.2621
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 8
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	lw	r30 r4 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	mov	r2 r4
	jal	p_set_group_id.2713
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 8
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r1 r2
	mov	r2 r4
	jal	pretrace_diffuse_rays.2998
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 1
	lw	r30 r2 8
	sub	r2 r1 r1
	addi	r0 r2 1
	lw	r30 r3 0
	sw	r1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov	r1 r3
	jal	add_mod5.2608
	addi	r30 r30 -36
	lw	r30 r31 32
	mov	r3 r1
	lwc1	 r30 f0 20
	lwc1	 r30 f1 16
	lwc1	 r30 f2 12
	lw	r30 r1 4
	lw	r30 r2 28
	j	pretrace_pixels.3001
pretrace_line.3008:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 0
	sll	r5 r5 2
	lwoc1	r4 r5 f0
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r5 1
	sll	r5 r5 2
	lwo	r4 r5 r4
	sub	r2 r4 r2
	sw	r3 r30 0
	sw	r1 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	mul.s	f1 f0 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	mul.s	f0 f1 f1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	add.s	f1 f2 f1
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	mul.s	f0 f2 f2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f2 f3 f2
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screeny_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	mul.s	f0 f3 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_screenz_dir
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f3
	add.s	f0 f3 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r2
	lw	r30 r1 4
	lw	r30 r3 0
	mov.s	f2 f31
	mov.s	f0 f2
	mov.s	f1 f0
	mov.s	f31 f1
	j	pretrace_pixels.3001
scan_pixel.3012:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 0
	sll	r7 r7 2
	lwo	r6 r7 r6
	sub	r6 r1 r25
	blez	r25 ble_tail_else.8592
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_rgb
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r7 2
	lwo	r4 r7 r7
	sw	r3 r30 0
	sw	r4 r30 4
	sw	r5 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sw	r6 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r7
	jal	p_rgb.2699
	addi	r30 r30 -28
	lw	r30 r31 24
	mov	r2 r1
	lw	r30 r1 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	veccpy.2621
	addi	r30 r30 -28
	lw	r30 r31 24
	lw	r30 r1 16
	lw	r30 r2 12
	lw	r30 r3 8
	sw	r31 r30 24
	addi	r30 r30 28
	jal	neighbors_exist.2972
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.8593
	addi	r0 r6 0
	lw	r30 r1 16
	lw	r30 r2 12
	lw	r30 r3 0
	lw	r30 r4 4
	lw	r30 r5 8
	sw	r31 r30 24
	addi	r30 r30 28
	jal	try_exploit_neighbors.2985
	addi	r30 r30 -28
	lw	r30 r31 24
	j	beq_cont.8594
beq_else.8593:
	lw	r30 r1 16
	sll	r1 r2 2
	lw	r30 r3 4
	lwo	r3 r2 r2
	addi	r0 r4 0
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	mov	r2 r4
	jal	do_without_neighbors.2969
	addi	r30 r30 -28
	lw	r30 r31 24
beq_cont.8594:
	sw	r31 r30 24
	addi	r30 r30 28
	jal	write_rgb.2996
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lw	r30 r2 12
	lw	r30 r3 0
	lw	r30 r4 4
	lw	r30 r5 8
	j	scan_pixel.3012
ble_tail_else.8592:
	jr	r31
scan_line.3018:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 1
	sll	r7 r7 2
	lwo	r6 r7 r6
	sub	r6 r1 r25
	blez	r25 ble_tail_else.8596
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r6 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r7 1
	sll	r7 r7 2
	lwo	r6 r7 r6
	addi	r0 r7 1
	sub	r6 r7 r6
	sw	r5 r30 0
	sw	r4 r30 4
	sw	r3 r30 8
	sw	r2 r30 12
	sw	r1 r30 16
	sub	r6 r1 r25
	blez	r25 ble_nontail_else.8597
	addi	r0 r6 1
	add	r1 r6 r6
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r3 r5
	mov	r2 r6
	mov	r1 r4
	jal	pretrace_line.3008
	addi	r30 r30 -24
	lw	r30 r31 20
	j	ble_nontail_cont.8598
ble_nontail_else.8597:
ble_nontail_cont.8598:
	addi	r0 r1 0
	lw	r30 r2 16
	lw	r30 r3 12
	lw	r30 r4 8
	lw	r30 r5 4
	sw	r31 r30 20
	addi	r30 r30 24
	jal	scan_pixel.3012
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	addi	r0 r2 2
	lw	r30 r3 0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r3
	jal	add_mod5.2608
	addi	r30 r30 -28
	lw	r30 r31 24
	mov	r5 r1
	lw	r30 r1 20
	lw	r30 r2 8
	lw	r30 r3 4
	lw	r30 r4 12
	j	scan_line.3018
ble_tail_else.8596:
	jr	r31
create_float5x3array.3024:
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_float_array
	addi	r30 r30 -4
	lw	r30 r31 0
	mov	r2 r1
	addi	r0 r1 5
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_array
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r2 1
	addi	r0 r3 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	min_caml_create_float_array
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r1 r3 r2
	addi	r0 r1 2
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 8
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r1 r3 r2
	addi	r0 r1 3
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r2 12
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r1 r3 r2
	addi	r0 r1 4
	addi	r0 r2 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r2
	jal	min_caml_create_float_array
	addi	r30 r30 -24
	lw	r30 r31 20
	lw	r30 r2 16
	sll	r2 r2 2
	lw	r30 r3 0
	swo	r1 r3 r2
	mov	r1 r3
	jr	r31
create_pixel.3026:
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_float_array
	addi	r30 r30 -4
	lw	r30 r31 0
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	create_float5x3array.3024
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r2 5
	addi	r0 r3 0
	sw	r1 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 5
	addi	r0 r3 0
	sw	r1 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -16
	lw	r30 r31 12
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	create_float5x3array.3024
	addi	r30 r30 -20
	lw	r30 r31 16
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	create_float5x3array.3024
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 1
	addi	r0 r3 0
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	mov	r2 r3
	jal	min_caml_create_array
	addi	r30 r30 -28
	lw	r30 r31 24
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	create_float5x3array.3024
	addi	r30 r30 -32
	lw	r30 r31 28
	mov	r2 r27
	addi	r27 r27 32
	sw	r1 r2 28
	lw	r30 r1 24
	sw	r1 r2 24
	lw	r30 r1 20
	sw	r1 r2 20
	lw	r30 r1 16
	sw	r1 r2 16
	lw	r30 r1 12
	sw	r1 r2 12
	lw	r30 r1 8
	sw	r1 r2 8
	lw	r30 r1 4
	sw	r1 r2 4
	lw	r30 r1 0
	sw	r1 r2 0
	mov	r1 r2
	jr	r31
init_line_elements.3028:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.8600
	jr	r31
ble_tail_else.8600:
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	create_pixel.3026
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r2
	mov	r1 r4
	j	init_line_elements.3028
create_pixelline.3031:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	create_pixel.3026
	addi	r30 r30 -8
	lw	r30 r31 4
	mov	r2 r1
	lw	r30 r1 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_create_array
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r30 r30 4
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -4
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 2
	sub	r2 r3 r2
	j	init_line_elements.3028
tan.3033:
	swc1	f0 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_sin
	addi	r30 r30 -8
	lw	r30 r31 4
	lwc1	 r30 f1 0
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov.s	f1 f0
	jal	min_caml_cos
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	div.s	f1 f0 f0
	jr	r31
adjust_position.3035:
	mul.s	f0 f0 f0
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f2
	add.s	f0 f2 f0
	swc1	f1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_sqrt
	addi	r30 r30 -8
	lw	r30 r31 4
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	div.s	f1 f0 f1
	swc1	f0 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov.s	f1 f0
	jal	min_caml_atan
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 0
	mul.s	f0 f1 f0
	sw	r31 r30 8
	addi	r30 r30 12
	jal	tan.3033
	addi	r30 r30 -12
	lw	r30 r31 8
	lwc1	 r30 f1 4
	mul.s	f0 f1 f0
	jr	r31
calc_dirvec.3038:
	addi	r0 r4 5
	sub	r4 r1 r25
	blez	r25 ble_tail_else.8601
	swc1	f2 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	swc1	f3 r30 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f0
	mov.s	f2 f1
	jal	adjust_position.3035
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r1 1
	lw	r30 r2 16
	add	r2 r1 r1
	lwc1	 r30 f1 12
	swc1	f0 r30 20
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	adjust_position.3035
	addi	r30 r30 -32
	lw	r30 r31 28
	mov.s	f0 f1
	lwc1	 r30 f0 20
	lwc1	 r30 f2 0
	lwc1	 r30 f3 12
	lw	r30 r1 24
	lw	r30 r2 8
	lw	r30 r3 4
	j	calc_dirvec.3038
ble_tail_else.8601:
	sw	r3 r30 4
	sw	r2 r30 8
	swc1	f0 r30 28
	swc1	f1 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	jal	min_caml_fsqr
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov.s	f1 f0
	jal	min_caml_fsqr
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	add.s	f1 f0 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	add.s	f0 f1 f0
	sw	r31 r30 40
	addi	r30 r30 44
	jal	min_caml_sqrt
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 28
	div.s	f1 f0 f1
	lwc1	 r30 f2 32
	div.s	f2 f0 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	div.s	f3 f0 f0
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	lw	r30 r2 8
	sll	r2 r2 2
	lwo	r1 r2 r1
	lw	r30 r2 4
	sll	r2 r3 2
	lwo	r1 r3 r3
	sw	r1 r30 40
	swc1	f0 r30 44
	swc1	f2 r30 48
	swc1	f1 r30 52
	sw	r31 r30 56
	addi	r30 r30 60
	mov	r1 r3
	jal	d_vec.2718
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f0 52
	lwc1	 r30 f1 48
	lwc1	 r30 f2 44
	sw	r31 r30 56
	addi	r30 r30 60
	jal	vecset.2611
	addi	r30 r30 -60
	lw	r30 r31 56
	addi	r0 r1 40
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r3 40
	lwo	r3 r1 r1
	sw	r31 r30 56
	addi	r30 r30 60
	jal	d_vec.2718
	addi	r30 r30 -60
	lw	r30 r31 56
	lwc1	 r30 f0 48
	sw	r1 r30 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	min_caml_fneg
	addi	r30 r30 -64
	lw	r30 r31 60
	mov.s	f0 f2
	lwc1	 r30 f0 52
	lwc1	 r30 f1 44
	lw	r30 r1 56
	sw	r31 r30 60
	addi	r30 r30 64
	jal	vecset.2611
	addi	r30 r30 -64
	lw	r30 r31 60
	addi	r0 r1 80
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r3 40
	lwo	r3 r1 r1
	sw	r31 r30 60
	addi	r30 r30 64
	jal	d_vec.2718
	addi	r30 r30 -64
	lw	r30 r31 60
	lwc1	 r30 f0 52
	sw	r1 r30 60
	sw	r31 r30 64
	addi	r30 r30 68
	jal	min_caml_fneg
	addi	r30 r30 -68
	lw	r30 r31 64
	lwc1	 r30 f1 48
	swc1	f0 r30 64
	sw	r31 r30 68
	addi	r30 r30 72
	mov.s	f1 f0
	jal	min_caml_fneg
	addi	r30 r30 -72
	lw	r30 r31 68
	mov.s	f0 f2
	lwc1	 r30 f0 44
	lwc1	 r30 f1 64
	lw	r30 r1 60
	sw	r31 r30 68
	addi	r30 r30 72
	jal	vecset.2611
	addi	r30 r30 -72
	lw	r30 r31 68
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r3 40
	lwo	r3 r1 r1
	sw	r31 r30 68
	addi	r30 r30 72
	jal	d_vec.2718
	addi	r30 r30 -72
	lw	r30 r31 68
	lwc1	 r30 f0 52
	sw	r1 r30 68
	sw	r31 r30 72
	addi	r30 r30 76
	jal	min_caml_fneg
	addi	r30 r30 -76
	lw	r30 r31 72
	lwc1	 r30 f1 48
	swc1	f0 r30 72
	sw	r31 r30 76
	addi	r30 r30 80
	mov.s	f1 f0
	jal	min_caml_fneg
	addi	r30 r30 -80
	lw	r30 r31 76
	lwc1	 r30 f1 44
	swc1	f0 r30 76
	sw	r31 r30 80
	addi	r30 r30 84
	mov.s	f1 f0
	jal	min_caml_fneg
	addi	r30 r30 -84
	lw	r30 r31 80
	mov.s	f0 f2
	lwc1	 r30 f0 72
	lwc1	 r30 f1 76
	lw	r30 r1 68
	sw	r31 r30 80
	addi	r30 r30 84
	jal	vecset.2611
	addi	r30 r30 -84
	lw	r30 r31 80
	addi	r0 r1 41
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r3 40
	lwo	r3 r1 r1
	sw	r31 r30 80
	addi	r30 r30 84
	jal	d_vec.2718
	addi	r30 r30 -84
	lw	r30 r31 80
	lwc1	 r30 f0 52
	sw	r1 r30 80
	sw	r31 r30 84
	addi	r30 r30 88
	jal	min_caml_fneg
	addi	r30 r30 -88
	lw	r30 r31 84
	lwc1	 r30 f1 44
	swc1	f0 r30 84
	sw	r31 r30 88
	addi	r30 r30 92
	mov.s	f1 f0
	jal	min_caml_fneg
	addi	r30 r30 -92
	lw	r30 r31 88
	mov.s	f0 f1
	lwc1	 r30 f0 84
	lwc1	 r30 f2 48
	lw	r30 r1 80
	sw	r31 r30 88
	addi	r30 r30 92
	jal	vecset.2611
	addi	r30 r30 -92
	lw	r30 r31 88
	addi	r0 r1 81
	lw	r30 r2 4
	add	r2 r1 r1
	sll	r1 r1 2
	lw	r30 r2 40
	lwo	r2 r1 r1
	sw	r31 r30 88
	addi	r30 r30 92
	jal	d_vec.2718
	addi	r30 r30 -92
	lw	r30 r31 88
	lwc1	 r30 f0 44
	sw	r1 r30 88
	sw	r31 r30 92
	addi	r30 r30 96
	jal	min_caml_fneg
	addi	r30 r30 -96
	lw	r30 r31 92
	lwc1	 r30 f1 52
	lwc1	 r30 f2 48
	lw	r30 r1 88
	j	vecset.2611
calc_dirvecs.3046:
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.8602
	jr	r31
ble_tail_else.8602:
	sw	r1 r30 0
	swc1	f0 r30 4
	sw	r3 r30 8
	sw	r2 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_float_of_int
	addi	r30 r30 -20
	lw	r30 r31 16
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16230
	ori	r24 r24 26214
	mtc1	r24 f1
	sub.s	f0 f1 f2
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lwc1	 r30 f3 4
	lw	r30 r2 12
	lw	r30 r3 8
	sw	r31 r30 16
	addi	r30 r30 20
	jal	calc_dirvec.3038
	addi	r30 r30 -20
	lw	r30 r31 16
	lw	r30 r1 0
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_float_of_int
	addi	r30 r30 -20
	lw	r30 r31 16
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 15820
	ori	r24 r24 52429
	mtc1	r24 f1
	add.s	f0 f1 f2
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	addi	r0 r2 2
	lw	r30 r3 8
	add	r3 r2 r2
	lwc1	 r30 f3 4
	lw	r30 r4 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r3 r2
	mov	r2 r4
	jal	calc_dirvec.3038
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	addi	r0 r2 1
	lw	r30 r3 12
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	jal	add_mod5.2608
	addi	r30 r30 -24
	lw	r30 r31 20
	mov	r2 r1
	lwc1	 r30 f0 4
	lw	r30 r1 16
	lw	r30 r3 8
	j	calc_dirvecs.3046
calc_dirvec_rows.3051:
	addi	r0 r4 0
	sub	r4 r1 r25
	blez	r25 ble_tail_else.8604
	jr	r31
ble_tail_else.8604:
	sw	r1 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f1
	mul.s	f0 f1 f0
	lui	r24 16230
	ori	r24 r24 26214
	mtc1	r24 f1
	sub.s	f0 f1 f0
	addi	r0 r1 4
	lw	r30 r2 8
	lw	r30 r3 4
	sw	r31 r30 12
	addi	r30 r30 16
	jal	calc_dirvecs.3046
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	addi	r0 r2 2
	lw	r30 r3 8
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r3
	jal	add_mod5.2608
	addi	r30 r30 -20
	lw	r30 r31 16
	mov	r2 r1
	addi	r0 r1 4
	lw	r30 r3 4
	add	r3 r1 r3
	lw	r30 r1 12
	j	calc_dirvec_rows.3051
create_dirvec.3055:
	addi	r0 r1 3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	min_caml_create_float_array
	addi	r30 r30 -4
	lw	r30 r31 0
	mov	r2 r1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	sll	r3 r3 2
	lwo	r1 r3 r1
	sw	r2 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	jal	min_caml_create_array
	addi	r30 r30 -8
	lw	r30 r31 4
	mov	r2 r27
	addi	r27 r27 8
	sw	r1 r2 4
	lw	r30 r1 0
	sw	r1 r2 0
	mov	r1 r2
	jr	r31
create_dirvec_elements.3057:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.8606
	jr	r31
ble_tail_else.8606:
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	create_dirvec.3055
	addi	r30 r30 -12
	lw	r30 r31 8
	lw	r30 r2 4
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r0 r1 1
	sub	r2 r1 r2
	mov	r1 r4
	j	create_dirvec_elements.3057
create_dirvecs.3060:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8608
	jr	r31
ble_tail_else.8608:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 120
	sw	r2 r30 0
	sw	r1 r30 4
	sw	r3 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	create_dirvec.3055
	addi	r30 r30 -16
	lw	r30 r31 12
	mov	r2 r1
	lw	r30 r1 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_create_array
	addi	r30 r30 -16
	lw	r30 r31 12
	lw	r30 r2 4
	sll	r2 r3 2
	lw	r30 r4 0
	swo	r1 r4 r3
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	sll	r2 r3 2
	lwo	r1 r3 r1
	addi	r0 r3 118
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	jal	create_dirvec_elements.3057
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r1 1
	lw	r30 r2 4
	sub	r2 r1 r1
	j	create_dirvecs.3060
init_dirvec_constants.3062:
	addi	r0 r3 0
	sub	r3 r2 r25
	blez	r25 ble_tail_else.8610
	jr	r31
ble_tail_else.8610:
	sll	r2 r3 2
	lwo	r1 r3 r3
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r3
	jal	setup_dirvec_constants.2847
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r1 1
	lw	r30 r2 4
	sub	r2 r1 r2
	lw	r30 r1 0
	j	init_dirvec_constants.3062
init_vecset_constants.3065:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8612
	jr	r31
ble_tail_else.8612:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_dirvecs
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r3 2
	lwo	r2 r3 r2
	addi	r0 r3 119
	sw	r1 r30 0
	sw	r31 r30 4
	addi	r30 r30 8
	mov	r1 r2
	mov	r2 r3
	jal	init_dirvec_constants.3062
	addi	r30 r30 -8
	lw	r30 r31 4
	addi	r0 r1 1
	lw	r30 r2 0
	sub	r2 r1 r1
	j	init_vecset_constants.3065
init_dirvecs.3067:
	addi	r0 r1 4
	sw	r31 r30 0
	addi	r30 r30 4
	jal	create_dirvecs.3060
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 9
	addi	r0 r2 0
	addi	r0 r3 0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	calc_dirvec_rows.3051
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r1 4
	j	init_vecset_constants.3065
add_reflection.3069:
	sw	r1 r30 0
	sw	r2 r30 4
	swc1	f0 r30 8
	swc1	f3 r30 12
	swc1	f2 r30 16
	swc1	f1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	create_dirvec.3055
	addi	r30 r30 -28
	lw	r30 r31 24
	sw	r1 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	d_vec.2718
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f0 20
	lwc1	 r30 f1 16
	lwc1	 r30 f2 12
	sw	r31 r30 28
	addi	r30 r30 32
	jal	vecset.2611
	addi	r30 r30 -32
	lw	r30 r31 28
	lw	r30 r1 24
	sw	r31 r30 28
	addi	r30 r30 32
	jal	setup_dirvec_constants.2847
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	mov	r2 r27
	addi	r27 r27 16
	lwc1	 r30 f0 8
	swc1	f0 r2 8
	lw	r30 r3 24
	sw	r3 r2 4
	lw	r30 r3 4
	sw	r3 r2 0
	lw	r30 r3 0
	sll	r3 r3 2
	swo	r2 r1 r3
	jr	r31
setup_rect_reflection.3076:
	addi	r0 r3 4
	mult	r1 r3 r1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r3 r30 0
	sw	r1 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r2
	jal	o_diffuse.2681
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	addi	r30 r30 12
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -12
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f1 f0
	jal	min_caml_fneg
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f0
	jal	min_caml_fneg
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r30 r30 20
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -20
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	min_caml_fneg
	addi	r30 r30 -28
	lw	r30 r31 24
	mov.s	f0 f3
	addi	r0 r1 1
	lw	r30 r2 4
	add	r2 r1 r1
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r4 0
	sll	r4 r4 2
	lwoc1	r3 r4 f1
	lwc1	 r30 f0 12
	lwc1	 r30 f2 20
	lw	r30 r3 0
	swc1	f3 r30 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r1
	mov	r1 r3
	jal	add_reflection.3069
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 1
	lw	r30 r2 0
	add	r2 r1 r1
	addi	r0 r3 2
	lw	r30 r4 4
	add	r4 r3 r3
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r5 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r6 1
	sll	r6 r6 2
	lwoc1	r5 r6 f2
	lwc1	 r30 f0 12
	lwc1	 r30 f1 16
	lwc1	 r30 f3 24
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r3
	jal	add_reflection.3069
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r1 2
	lw	r30 r2 0
	add	r2 r1 r1
	addi	r0 r3 3
	lw	r30 r4 4
	add	r4 r3 r3
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r4 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r5 2
	sll	r5 r5 2
	lwoc1	r4 r5 f3
	lwc1	 r30 f0 12
	lwc1	 r30 f1 16
	lwc1	 r30 f2 20
	sw	r31 r30 28
	addi	r30 r30 32
	mov	r2 r3
	jal	add_reflection.3069
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r30 r30 28
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -28
	addi	r0 r2 0
	addi	r0 r3 3
	lw	r30 r4 0
	add	r4 r3 r3
	sll	r2 r2 2
	swo	r3 r1 r2
	jr	r31
setup_surface_reflection.3079:
	addi	r0 r3 4
	mult	r1 r3 r1
	addi	r0 r3 1
	add	r1 r3 r1
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	lwo	r3 r4 r3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r1 r30 0
	sw	r3 r30 4
	sw	r2 r30 8
	swc1	f0 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov	r1 r2
	jal	o_diffuse.2681
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	addi	r30 r30 16
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -16
	lw	r30 r2 8
	swc1	f0 r30 16
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov	r1 r2
	jal	o_param_abc.2673
	addi	r30 r30 -28
	lw	r30 r31 24
	mov	r2 r1
	lw	r30 r1 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	veciprod.2632
	addi	r30 r30 -28
	lw	r30 r31 24
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lw	r30 r1 8
	swc1	f0 r30 24
	swc1	f1 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	jal	o_param_a.2667
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	mul.s	f1 f0 f0
	lwc1	 r30 f1 24
	mul.s	f0 f1 f0
	addi	r30 r30 32
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -32
	addi	r0 r2 0
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	sub.s	f0 f2 f0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lw	r30 r1 8
	swc1	f0 r30 32
	swc1	f2 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	jal	o_param_b.2669
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	mul.s	f1 f0 f0
	lwc1	 r30 f1 24
	mul.s	f0 f1 f0
	addi	r30 r30 40
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -40
	addi	r0 r2 1
	sll	r2 r2 2
	lwoc1	r1 r2 f2
	sub.s	f0 f2 f0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lw	r30 r1 8
	swc1	f0 r30 40
	swc1	f2 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	jal	o_param_c.2671
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 44
	mul.s	f1 f0 f0
	lwc1	 r30 f1 24
	mul.s	f0 f1 f0
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 2
	sll	r2 r2 2
	lwoc1	r1 r2 f1
	sub.s	f0 f1 f3
	lwc1	 r30 f0 16
	lwc1	 r30 f1 32
	lwc1	 r30 f2 40
	lw	r30 r1 4
	lw	r30 r2 0
	sw	r31 r30 48
	addi	r30 r30 52
	jal	add_reflection.3069
	addi	r30 r30 -52
	lw	r30 r31 48
	addi	r30 r30 48
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_reflections
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -48
	addi	r0 r2 0
	addi	r0 r3 1
	lw	r30 r4 4
	add	r4 r3 r3
	sll	r2 r2 2
	swo	r3 r1 r2
	jr	r31
setup_reflections.3082:
	addi	r0 r2 0
	sub	r2 r1 r25
	blez	r25 ble_tail_else.8617
	jr	r31
ble_tail_else.8617:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_objects
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	sll	r1 r3 2
	lwo	r2 r3 r2
	sw	r1 r30 0
	sw	r2 r30 4
	sw	r31 r30 8
	addi	r30 r30 12
	mov	r1 r2
	jal	o_reflectiontype.2661
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8619
	jr	r31
beq_tail_else.8619:
	lw	r30 r1 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	o_diffuse.2681
	addi	r30 r30 -12
	lw	r30 r31 8
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sw	r31 r30 8
	addi	r30 r30 12
	jal	min_caml_fless
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8621
	lw	r30 r1 4
	sw	r31 r30 8
	addi	r30 r30 12
	jal	o_form.2659
	addi	r30 r30 -12
	lw	r30 r31 8
	addi	r0 r2 1
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8622
	addi	r0 r2 2
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.8623
	jr	r31
beq_tail_else.8623:
	lw	r30 r1 0
	lw	r30 r2 4
	j	setup_surface_reflection.3079
beq_tail_else.8622:
	lw	r30 r1 0
	lw	r30 r2 4
	j	setup_rect_reflection.3076
beq_tail_else.8621:
	jr	r31
rt.3084:
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	sll	r4 r4 2
	swo	r1 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_size
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 1
	sll	r4 r4 2
	swo	r2 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 0
	addi	r0 r5 2
	div	r1 r5 r5
	sll	r4 r4 2
	swo	r5 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_image_center
	mov	r3 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r4 1
	addi	r0 r5 2
	div	r2 r5 r2
	sll	r4 r4 2
	swo	r2 r3 r4
	addi	r30 r30 0
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_scan_pitch
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 0
	addi	r0 r3 0
	lui	r24 17152
	ori	r24 r24 0
	mtc1	r24 f0
	sw	r2 r30 0
	sw	r3 r30 4
	swc1	f0 r30 8
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 8
	div.s	f1 f0 f0
	lw	r30 r1 4
	sll	r1 r1 2
	lw	r30 r2 0
	swoc1	f0 r2 r1
	sw	r31 r30 12
	addi	r30 r30 16
	jal	create_pixelline.3031
	addi	r30 r30 -16
	lw	r30 r31 12
	sw	r1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	create_pixelline.3031
	addi	r30 r30 -20
	lw	r30 r31 16
	sw	r1 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	jal	create_pixelline.3031
	addi	r30 r30 -24
	lw	r30 r31 20
	sw	r1 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	jal	read_parameter.2749
	addi	r30 r30 -28
	lw	r30 r31 24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	write_ppm_header.2992
	addi	r30 r30 -28
	lw	r30 r31 24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	init_dirvecs.3067
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	d_vec.2718
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light
	mov	r2 r1
	lw	r30 r1 0
	lw	r30 r31 4
	addi	r30 r30 -24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	veccpy.2621
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_light_dirvec
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	sw	r31 r30 24
	addi	r30 r30 28
	jal	setup_dirvec_constants.2847
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r30 r30 24
	sw	r1 r30 0
	sw	r31 r30 4
	jal	min_caml_load_n_objects
	mov	r1 r1
	lw	r30 r31 4
	addi	r30 r30 -24
	addi	r0 r2 0
	sll	r2 r2 2
	lwo	r1 r2 r1
	addi	r0 r2 1
	sub	r1 r2 r1
	sw	r31 r30 24
	addi	r30 r30 28
	jal	setup_reflections.3082
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 0
	addi	r0 r3 0
	lw	r30 r1 16
	sw	r31 r30 24
	addi	r30 r30 28
	jal	pretrace_line.3008
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r1 0
	addi	r0 r5 2
	lw	r30 r2 12
	lw	r30 r3 16
	lw	r30 r4 20
	j	scan_line.3018
_min_caml_start:
	lui	r27 32
	addi	r0 r1 512
	addi	r0 r2 512
	sw	r31 r30 0
	addi	r30 r30 4
	jal	rt.3084
	addi	r30 r30 -4
	lw	r30 r31 0
	addi	r0 r0 0
halt
