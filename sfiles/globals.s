min_caml_globals:
generate_n_objects:
addi r0 r1 1
addi r0 r2 0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_dummy
min_caml_load_n_objects:
lui r1 32
addi r1 r1 0
jr r31
generate_dummy:
addi r0 r1 1
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_objects_tmp
generate_objects_tmp:
addi r0 r1 0
sw r1 r27 0
addi r0 r1 0
sw r1 r27 4
addi r0 r1 0
sw r1 r27 8
addi r0 r1 0
sw r1 r27 12
lui r1 32
addi r1 r1 4
sw r1 r27 16
lui r1 32
addi r1 r1 4
sw r1 r27 20
addi r0 r1 0
sw r1 r27 24
lui r1 32
addi r1 r1 4
sw r1 r27 28
lui r1 32
addi r1 r1 4
sw r1 r27 32
lui r1 32
addi r1 r1 4
sw r1 r27 36
lui r1 32
addi r1 r1 4
sw r1 r27 40
j generate_objects
generate_objects:
addi r0 r1 60
lui r2 32
addi r2 r2 8
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_screen
min_caml_load_objects:
lui r1 32
addi r1 r1 52
jr r31
generate_screen:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_viewpoint
min_caml_load_screen:
lui r1 32
addi r1 r1 292
jr r31
generate_viewpoint:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_light
min_caml_load_viewpoint:
lui r1 32
addi r1 r1 304
jr r31
generate_light:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_beam
min_caml_load_light:
lui r1 32
addi r1 r1 316
jr r31
generate_beam:
addi r0 r1 1
lui r24 17279
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_and_net_tmp
min_caml_load_beam:
lui r1 32
addi r1 r1 328
jr r31
generate_and_net_tmp:
addi r0 r1 1
addi r0 r2 -1
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_and_net
generate_and_net:
addi r0 r1 50
lui r2 32
addi r2 r2 332
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_or_net_tmp
min_caml_load_and_net:
lui r1 32
addi r1 r1 336
jr r31
generate_or_net_tmp:
addi r0 r1 1
lui r2 32
addi r2 r2 336
lw r2 r2 0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_or_net
generate_or_net:
addi r0 r1 1
lui r24 0
addi r24 r24 11
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_solver_dist
min_caml_load_or_net:
lui r1 32
addi r1 r1 540
jr r31
generate_solver_dist:
addi r0 r1 1
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_intsec_rectside
min_caml_load_solver_dist:
lui r1 32
addi r1 r1 544
jr r31
generate_intsec_rectside:
addi r0 r1 1
addi r0 r2 0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_tmin
min_caml_load_intsec_rectside:
lui r1 32
addi r1 r1 548
jr r31
generate_tmin:
addi r0 r1 1
lui r24 20078
addi r24 r24 27432
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_intersection_point
min_caml_load_tmin:
lui r1 32
addi r1 r1 552
jr r31
generate_intersection_point:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_intersected_object_id
min_caml_load_intersection_point:
lui r1 32
addi r1 r1 556
jr r31
generate_intersected_object_id:
addi r0 r1 1
addi r0 r2 0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_nvector
min_caml_load_intersected_object_id:
lui r1 32
addi r1 r1 568
jr r31
generate_nvector:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_texture_color
min_caml_load_nvector:
lui r1 32
addi r1 r1 572
jr r31
generate_texture_color:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_diffuse_ray
min_caml_load_texture_color:
lui r1 32
addi r1 r1 584
jr r31
generate_diffuse_ray:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_rgb
min_caml_load_diffuse_ray:
lui r1 32
addi r1 r1 596
jr r31
generate_rgb:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_image_size
min_caml_load_rgb:
lui r1 32
addi r1 r1 608
jr r31
generate_image_size:
addi r0 r1 2
addi r0 r2 0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_image_center
min_caml_load_image_size:
lui r1 32
addi r1 r1 620
jr r31
generate_image_center:
addi r0 r1 2
addi r0 r2 0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_scan_pitch
min_caml_load_image_center:
lui r1 32
addi r1 r1 628
jr r31
generate_scan_pitch:
addi r0 r1 1
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_startp
min_caml_load_scan_pitch:
lui r1 32
addi r1 r1 636
jr r31
generate_startp:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_startp_fast
min_caml_load_startp:
lui r1 32
addi r1 r1 640
jr r31
generate_startp_fast:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_screenx_dir
min_caml_load_startp_fast:
lui r1 32
addi r1 r1 652
jr r31
generate_screenx_dir:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_screeny_dir
min_caml_load_screenx_dir:
lui r1 32
addi r1 r1 664
jr r31
generate_screeny_dir:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_screenz_dir
min_caml_load_screeny_dir:
lui r1 32
addi r1 r1 676
jr r31
generate_screenz_dir:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_ptrace_dirvec
min_caml_load_screenz_dir:
lui r1 32
addi r1 r1 688
jr r31
generate_ptrace_dirvec:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_dummyf
min_caml_load_ptrace_dirvec:
lui r1 32
addi r1 r1 700
jr r31
generate_dummyf:
addi r0 r1 1
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_dummyff
generate_dummyff:
addi r0 r1 1
lui r2 32
addi r2 r2 712
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_dummy_vs_tmp
generate_dummy_vs_tmp:
lui r1 32
addi r1 r1 712
sw r1 r27 0
lui r1 32
addi r1 r1 716
sw r1 r27 4
j generate_dummy_vs
generate_dummy_vs:
addi r0 r1 1
lui r2 32
addi r2 r2 720
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_dirvecs
generate_dirvecs:
addi r0 r1 5
lui r2 32
addi r2 r2 728
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_dummyf2
min_caml_load_dirvecs:
lui r1 32
addi r1 r1 732
jr r31
generate_dummyf2:
addi r0 r1 1
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_v3
generate_v3:
addi r0 r1 3
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_consts
generate_consts:
addi r0 r1 60
lui r2 32
addi r2 r2 752
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_light_dirvec
generate_light_dirvec:
lui r1 32
addi r1 r1 756
sw r1 r27 0
lui r1 32
addi r1 r1 768
sw r1 r27 4
j generate_dummyf3
min_caml_load_light_dirvec:
lui r1 32
addi r1 r1 1008
jr r31
generate_dummyf3:
addi r0 r1 1
lui r24 0
addi r24 r24 0
mtc1 r24 f0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_float_array
addi r30 r30 -4
lw r30 r31 0
j generate_dummyff3
generate_dummyff3:
addi r0 r1 1
lui r2 32
addi r2 r2 1016
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_dummydv
generate_dummydv:
lui r1 32
addi r1 r1 1016
sw r1 r27 0
lui r1 32
addi r1 r1 1020
sw r1 r27 4
j generate_reflections_tmp
generate_reflections_tmp:
addi r0 r1 0
sw r1 r27 0
lui r1 32
addi r1 r1 1024
sw r1 r27 4
lui r24 0
addi r24 r24 0
mtc1 r24 f0
swc1 f0 r27 8
j generate_reflections
generate_reflections:
addi r0 r1 180
lui r2 32
addi r2 r2 1032
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_n_reflections
min_caml_load_reflections:
lui r1 32
addi r1 r1 1044
jr r31
generate_n_reflections:
addi r0 r1 1
addi r0 r2 0
sw r31 r30 0
addi r30 r30 4
jal min_caml_create_array
addi r30 r30 -4
lw r30 r31 0
j generate_return
min_caml_load_n_reflections:
lui r1 32
addi r1 r1 1764
jr r31
generate_return:
jr r31
