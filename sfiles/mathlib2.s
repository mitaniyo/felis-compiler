floor_sub2.141:
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1105
	add	r1 r2 r3
	addi	r0 r4 2
	div	r3 r4 r3
	add.s	f1 f2 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f3 f4 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1106
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1107
	add	r1 r3 r2
	addi	r0 r4 2
	div	r2 r4 r2
	add.s	f1 f3 f2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f2 f4 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1108
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1109
	add	r1 r2 r3
	addi	r0 r4 2
	div	r3 r4 r3
	add.s	f1 f2 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f3 f4 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1110
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1111
	add	r1 r3 r2
	addi	r0 r4 2
	div	r2 r4 r2
	add.s	f1 f3 f2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f2 f4 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1112
	j	floor_sub2.141
bfle_tail_else.1112:
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.141
beq_tail_else.1111:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1110:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1113
	add	r3 r2 r1
	addi	r0 r4 2
	div	r1 r4 r1
	add.s	f3 f2 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f1 f4 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1114
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.141
bfle_tail_else.1114:
	j	floor_sub2.141
beq_tail_else.1113:
	mov.s	f3 f0
	jr	r31
beq_tail_else.1109:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1108:
	sub	r3 r2 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1115
	add	r2 r3 r1
	addi	r0 r4 2
	div	r1 r4 r1
	add.s	f2 f3 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f1 f4 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1116
	sub	r1 r2 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1117
	add	r2 r1 r3
	addi	r0 r4 2
	div	r3 r4 r3
	add.s	f2 f1 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f3 f4 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1118
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.141
bfle_tail_else.1118:
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.141
beq_tail_else.1117:
	mov.s	f2 f0
	jr	r31
bfle_tail_else.1116:
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1119
	add	r1 r3 r2
	addi	r0 r4 2
	div	r2 r4 r2
	add.s	f1 f3 f2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f2 f4 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1120
	j	floor_sub2.141
bfle_tail_else.1120:
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.141
beq_tail_else.1119:
	mov.s	f1 f0
	jr	r31
beq_tail_else.1115:
	mov.s	f2 f0
	jr	r31
beq_tail_else.1107:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1106:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1121
	add	r3 r2 r1
	addi	r0 r4 2
	div	r1 r4 r1
	add.s	f3 f2 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f1 f4 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1122
	sub	r1 r3 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1123
	add	r3 r1 r2
	addi	r0 r4 2
	div	r2 r4 r2
	add.s	f3 f1 f2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f2 f4 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1124
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1125
	add	r3 r2 r1
	addi	r0 r4 2
	div	r1 r4 r1
	add.s	f3 f2 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f1 f4 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1126
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.141
bfle_tail_else.1126:
	j	floor_sub2.141
beq_tail_else.1125:
	mov.s	f3 f0
	jr	r31
bfle_tail_else.1124:
	sub	r1 r2 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1127
	add	r2 r1 r3
	addi	r0 r4 2
	div	r3 r4 r3
	add.s	f2 f1 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f3 f4 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1128
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.141
bfle_tail_else.1128:
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.141
beq_tail_else.1127:
	mov.s	f2 f0
	jr	r31
beq_tail_else.1123:
	mov.s	f3 f0
	jr	r31
bfle_tail_else.1122:
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1129
	add	r1 r2 r3
	addi	r0 r4 2
	div	r3 r4 r3
	add.s	f1 f2 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f3 f4 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1130
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1131
	add	r1 r3 r2
	addi	r0 r4 2
	div	r2 r4 r2
	add.s	f1 f3 f2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f2 f4 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1132
	j	floor_sub2.141
bfle_tail_else.1132:
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.141
beq_tail_else.1131:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1130:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1133
	add	r3 r2 r1
	addi	r0 r4 2
	div	r1 r4 r1
	add.s	f3 f2 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f1 f4 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1134
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.141
bfle_tail_else.1134:
	j	floor_sub2.141
beq_tail_else.1133:
	mov.s	f3 f0
	jr	r31
beq_tail_else.1129:
	mov.s	f1 f0
	jr	r31
beq_tail_else.1121:
	mov.s	f3 f0
	jr	r31
beq_tail_else.1105:
	mov.s	f1 f0
	jr	r31
min_caml_floor:
floor.147:
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1135
	jr	r31
bfle_tail_else.1135:
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1136
	jr	r31
bfle_tail_else.1136:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r3 256
	ori r3 r3 0
	addi	r0 r3 1
	addi	r0 r3 0
	addi	r0 r4 2
	div	r3 r4 r3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1137
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1138
	add	r1 r3 r2
	addi	r0 r4 2
	div	r2 r4 r2
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 51840
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1139
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1140
	add	r1 r2 r3
	addi	r0 r4 2
	div	r3 r4 r3
	lui	r24 52032
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 51904
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1141
	mov	r2 r3
	mov.s	f3 f2
	j	floor_sub2.141
bfle_tail_else.1141:
	mov	r1 r3
	mov.s	f3 f1
	j	floor_sub2.141
beq_tail_else.1140:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1139:
	sub	r3 r2 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1142
	add	r2 r3 r1
	addi	r0 r4 2
	div	r1 r4 r1
	lui	r24 51840
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 51712
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1143
	mov	r28 r2
	mov	r2 r1
	mov	r1 r28
	mov.s	f2 f31
	mov.s	f1 f2
	mov.s	f31 f1
	j	floor_sub2.141
bfle_tail_else.1143:
	mov	r2 r3
	mov.s	f3 f2
	j	floor_sub2.141
beq_tail_else.1142:
	mov.s	f2 f0
	jr	r31
beq_tail_else.1138:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1137:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1144
	add	r3 r2 r1
	addi	r0 r4 2
	div	r1 r4 r1
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 19072
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1145
	sub	r1 r3 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1146
	add	r3 r1 r2
	addi	r0 r4 2
	div	r2 r4 r2
	lui	r24 19072
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 18944
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1147
	mov	r1 r3
	mov.s	f3 f1
	j	floor_sub2.141
bfle_tail_else.1147:
	mov	r28 r2
	mov	r2 r1
	mov	r1 r28
	mov.s	f2 f31
	mov.s	f1 f2
	mov.s	f31 f1
	j	floor_sub2.141
beq_tail_else.1146:
	mov.s	f3 f0
	jr	r31
bfle_tail_else.1145:
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1148
	add	r1 r2 r3
	addi	r0 r4 2
	div	r3 r4 r3
	lui	r24 19264
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 19136
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1149
	mov	r2 r3
	mov.s	f3 f2
	j	floor_sub2.141
bfle_tail_else.1149:
	mov	r1 r3
	mov.s	f3 f1
	j	floor_sub2.141
beq_tail_else.1148:
	mov.s	f1 f0
	jr	r31
beq_tail_else.1144:
	mov.s	f3 f0
	jr	r31
min_caml_int_of_float:
int_of_float.149:
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	add.s	f0 f1 f0
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1150
	j	bfle_nontail_cont.1151
bfle_nontail_else.1150:
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1152
	j	bfle_nontail_cont.1153
bfle_nontail_else.1152:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r3 256
	ori r3 r3 0
	addi	r0 r3 1
	addi	r0 r3 0
	addi	r0 r4 2
	div	r3 r4 r3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1154
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_else.1156
	add	r1 r3 r2
	addi	r0 r4 2
	div	r2 r4 r2
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 51840
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1158
	sw	r31 r30 0
	addi	r30 r30 4
	jal	floor_sub2.141
	addi	r30 r30 -4
	lw	r30 r31 0
	j	bfle_nontail_cont.1159
bfle_nontail_else.1158:
	sw	r31 r30 0
	addi	r30 r30 4
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	jal	floor_sub2.141
	addi	r30 r30 -4
	lw	r30 r31 0
bfle_nontail_cont.1159:
	j	beq_cont.1157
beq_else.1156:
	mov.s	f1 f0
beq_cont.1157:
	j	bfle_nontail_cont.1155
bfle_nontail_else.1154:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_else.1160
	add	r3 r2 r1
	addi	r0 r4 2
	div	r1 r4 r1
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 19072
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1162
	sw	r31 r30 0
	addi	r30 r30 4
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	jal	floor_sub2.141
	addi	r30 r30 -4
	lw	r30 r31 0
	j	bfle_nontail_cont.1163
bfle_nontail_else.1162:
	sw	r31 r30 0
	addi	r30 r30 4
	jal	floor_sub2.141
	addi	r30 r30 -4
	lw	r30 r31 0
bfle_nontail_cont.1163:
	j	beq_cont.1161
beq_else.1160:
	mov.s	f3 f0
beq_cont.1161:
bfle_nontail_cont.1155:
bfle_nontail_cont.1153:
bfle_nontail_cont.1151:
	j	min_caml_floor_retint
normalize.151:
	neg.s	f1 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1164
	div.s	f0 f2 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 0
	swc1	f2 r30 4
	swc1	f0 r30 8
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1165
	mov.s	f3 f0
	j	bfle_nontail_cont.1166
bfle_nontail_else.1165:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1167
	mov.s	f3 f0
	j	bfle_nontail_cont.1168
bfle_nontail_else.1167:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r3 256
	ori r3 r3 0
	addi	r0 r3 1
	addi	r0 r3 0
	addi	r0 r4 2
	div	r3 r4 r3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f6
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f6
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f6
	sub.s	f6 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1169
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	mov.s	f6 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -16
	lw	r30 r31 12
	j	bfle_nontail_cont.1170
bfle_nontail_else.1169:
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	mov.s	f4 f2
	mov.s	f6 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1170:
bfle_nontail_cont.1168:
bfle_nontail_cont.1166:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1171
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f1 4
	mul.s	f1 f0 f0
	lwc1	 r30 f2 8
	sub.s	f2 f0 f0
	lwc1	 r30 f2 0
	neg.s	f2 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1172
	div.s	f0 f1 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f0 r30 12
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1173
	mov.s	f3 f0
	j	bfle_nontail_cont.1174
bfle_nontail_else.1173:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1175
	mov.s	f3 f0
	j	bfle_nontail_cont.1176
bfle_nontail_else.1175:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -20
	lw	r30 r31 16
bfle_nontail_cont.1176:
bfle_nontail_cont.1174:
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_floor_retint
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1177
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_float_of_int
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	j	normalize.151
ble_tail_else.1177:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 12
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.151
bfle_tail_else.1172:
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1178
	jr	r31
bfle_tail_else.1178:
	div.s	f0 f1 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f0 r30 12
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1179
	mov.s	f3 f0
	j	bfle_nontail_cont.1180
bfle_nontail_else.1179:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1181
	mov.s	f3 f0
	j	bfle_nontail_cont.1182
bfle_nontail_else.1181:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -20
	lw	r30 r31 16
bfle_nontail_cont.1182:
bfle_nontail_cont.1180:
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_floor_retint
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1183
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_float_of_int
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	j	normalize.151
ble_tail_else.1183:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 12
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.151
ble_tail_else.1171:
	lwc1	 r30 f0 4
	lwc1	 r30 f1 8
	add.s	f1 f0 f1
	lwc1	 r30 f2 0
	neg.s	f2 f3
	sub.s	f3 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1184
	div.s	f1 f0 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 16
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1185
	mov.s	f3 f0
	j	bfle_nontail_cont.1186
bfle_nontail_else.1185:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1187
	mov.s	f3 f0
	j	bfle_nontail_cont.1188
bfle_nontail_else.1187:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -24
	lw	r30 r31 20
bfle_nontail_cont.1188:
bfle_nontail_cont.1186:
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_floor_retint
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1189
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_float_of_int
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 16
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	j	normalize.151
ble_tail_else.1189:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 16
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.151
bfle_tail_else.1184:
	sub.s	f2 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1190
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1190:
	div.s	f1 f0 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 16
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1191
	mov.s	f3 f0
	j	bfle_nontail_cont.1192
bfle_nontail_else.1191:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1193
	mov.s	f3 f0
	j	bfle_nontail_cont.1194
bfle_nontail_else.1193:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -24
	lw	r30 r31 20
bfle_nontail_cont.1194:
bfle_nontail_cont.1192:
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_floor_retint
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1195
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_float_of_int
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 16
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	j	normalize.151
ble_tail_else.1195:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 16
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.151
bfle_tail_else.1164:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1196
	jr	r31
bfle_tail_else.1196:
	div.s	f0 f2 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 0
	swc1	f2 r30 4
	swc1	f0 r30 8
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1197
	mov.s	f3 f0
	j	bfle_nontail_cont.1198
bfle_nontail_else.1197:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1199
	mov.s	f3 f0
	j	bfle_nontail_cont.1200
bfle_nontail_else.1199:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r3 256
	ori r3 r3 0
	addi	r0 r3 1
	addi	r0 r3 0
	addi	r0 r4 2
	div	r3 r4 r3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f6
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f6
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f6
	sub.s	f6 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1201
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	mov.s	f6 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -24
	lw	r30 r31 20
	j	bfle_nontail_cont.1202
bfle_nontail_else.1201:
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	mov.s	f4 f2
	mov.s	f6 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -24
	lw	r30 r31 20
bfle_nontail_cont.1202:
bfle_nontail_cont.1200:
bfle_nontail_cont.1198:
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_floor_retint
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1203
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_float_of_int
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 4
	mul.s	f1 f0 f0
	lwc1	 r30 f2 8
	sub.s	f2 f0 f0
	lwc1	 r30 f2 0
	neg.s	f2 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1204
	div.s	f0 f1 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f0 r30 20
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1205
	mov.s	f3 f0
	j	bfle_nontail_cont.1206
bfle_nontail_else.1205:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1207
	mov.s	f3 f0
	j	bfle_nontail_cont.1208
bfle_nontail_else.1207:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -28
	lw	r30 r31 24
bfle_nontail_cont.1208:
bfle_nontail_cont.1206:
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_floor_retint
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1209
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_float_of_int
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 20
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	j	normalize.151
ble_tail_else.1209:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 20
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.151
bfle_tail_else.1204:
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1210
	jr	r31
bfle_tail_else.1210:
	div.s	f0 f1 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f0 r30 20
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1211
	mov.s	f3 f0
	j	bfle_nontail_cont.1212
bfle_nontail_else.1211:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1213
	mov.s	f3 f0
	j	bfle_nontail_cont.1214
bfle_nontail_else.1213:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -28
	lw	r30 r31 24
bfle_nontail_cont.1214:
bfle_nontail_cont.1212:
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_floor_retint
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1215
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_float_of_int
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 20
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	j	normalize.151
ble_tail_else.1215:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 20
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.151
ble_tail_else.1203:
	lwc1	 r30 f0 4
	lwc1	 r30 f1 8
	sub.s	f1 f0 f1
	lwc1	 r30 f2 0
	neg.s	f2 f3
	sub.s	f3 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1216
	div.s	f1 f0 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 24
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1217
	mov.s	f3 f0
	j	bfle_nontail_cont.1218
bfle_nontail_else.1217:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1219
	mov.s	f3 f0
	j	bfle_nontail_cont.1220
bfle_nontail_else.1219:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 28
	addi	r30 r30 32
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -32
	lw	r30 r31 28
bfle_nontail_cont.1220:
bfle_nontail_cont.1218:
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_floor_retint
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1221
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_float_of_int
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 24
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	j	normalize.151
ble_tail_else.1221:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 24
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.151
bfle_tail_else.1216:
	sub.s	f2 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1222
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1222:
	div.s	f1 f0 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 24
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1223
	mov.s	f3 f0
	j	bfle_nontail_cont.1224
bfle_nontail_else.1223:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1225
	mov.s	f3 f0
	j	bfle_nontail_cont.1226
bfle_nontail_else.1225:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 28
	addi	r30 r30 32
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -32
	lw	r30 r31 28
bfle_nontail_cont.1226:
bfle_nontail_cont.1224:
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_floor_retint
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1227
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_float_of_int
	addi	r30 r30 -32
	lw	r30 r31 28
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 24
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	j	normalize.151
ble_tail_else.1227:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 24
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.151
sin2.155:
	mul.s	f0 f0 f1
	lui	r24 41751
	ori	r24 r24 42202
	mtc1	r24 f2
	mul.s	f2 f1 f2
	lui	r24 10058
	ori	r24 r24 38460
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 43863
	ori	r24 r24 16287
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 12080
	ori	r24 r24 37425
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 45783
	ori	r24 r24 12843
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 13880
	ori	r24 r24 61213
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 47440
	ori	r24 r24 3329
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 15368
	ori	r24 r24 34953
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f2
	lui	r24 48682
	ori	r24 r24 43691
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f1 f1
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	add.s	f1 f2 f1
	mul.s	f1 f0 f0
	jr	r31
min_caml_cos:
cos.157:
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16585
	ori	r24 r24 4059
	mtc1	r24 f2
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f3
	swc1	f1 r30 0
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1228
	div.s	f0 f2 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f2 r30 4
	swc1	f0 r30 8
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1230
	mov.s	f3 f0
	j	bfle_nontail_cont.1231
bfle_nontail_else.1230:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1232
	mov.s	f3 f0
	j	bfle_nontail_cont.1233
bfle_nontail_else.1232:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1233:
bfle_nontail_cont.1231:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.1234
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.151
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1235
ble_nontail_else.1234:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.151
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1235:
	j	bfle_nontail_cont.1229
bfle_nontail_else.1228:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1236
	j	bfle_nontail_cont.1237
bfle_nontail_else.1236:
	div.s	f0 f2 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f2 r30 4
	swc1	f0 r30 8
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1238
	mov.s	f3 f0
	j	bfle_nontail_cont.1239
bfle_nontail_else.1238:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1240
	mov.s	f3 f0
	j	bfle_nontail_cont.1241
bfle_nontail_else.1240:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1241:
bfle_nontail_cont.1239:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.1242
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.151
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1243
ble_nontail_else.1242:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.151
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1243:
bfle_nontail_cont.1237:
bfle_nontail_cont.1229:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1244
	neg.s	f0 f0
	j	bfle_nontail_cont.1245
bfle_nontail_else.1244:
bfle_nontail_cont.1245:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1246
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	j	bfle_nontail_cont.1247
bfle_nontail_else.1246:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
bfle_nontail_cont.1247:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1248
	lwc1	 r30 f2 0
	sub.s	f2 f0 f0
	j	bfle_nontail_cont.1249
bfle_nontail_else.1248:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	lui	r24 49097
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1250
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f2 f0 f0
	j	bfle_nontail_cont.1251
bfle_nontail_else.1250:
bfle_nontail_cont.1251:
bfle_nontail_cont.1249:
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1252
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f2 f0 f0
	mul.s	f0 f0 f2
	lui	r24 41751
	ori	r24 r24 42202
	mtc1	r24 f3
	mul.s	f3 f2 f3
	lui	r24 10058
	ori	r24 r24 38460
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 43863
	ori	r24 r24 16287
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 12080
	ori	r24 r24 37425
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 45783
	ori	r24 r24 12843
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 13880
	ori	r24 r24 61213
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 47440
	ori	r24 r24 3329
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 15368
	ori	r24 r24 34953
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 48682
	ori	r24 r24 43691
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f0
	mul.s	f0 f1 f0
	jr	r31
bfle_tail_else.1252:
	mul.s	f0 f0 f0
	lui	r24 8434
	ori	r24 r24 41309
	mtc1	r24 f2
	mul.s	f2 f0 f2
	lui	r24 42292
	ori	r24 r24 5059
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 10583
	ori	r24 r24 16287
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 44361
	ori	r24 r24 52133
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 12559
	ori	r24 r24 30407
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 46227
	ori	r24 r24 62078
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 14288
	ori	r24 r24 3329
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 47798
	ori	r24 r24 2913
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 15658
	ori	r24 r24 43691
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f2
	lui	r24 48896
	ori	r24 r24 0
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	add.s	f0 f2 f0
	mul.s	f0 f1 f0
	jr	r31
min_caml_sin:
sin.159:
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16585
	ori	r24 r24 4059
	mtc1	r24 f2
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f3
	swc1	f1 r30 0
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1253
	div.s	f0 f2 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f2 r30 4
	swc1	f0 r30 8
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1255
	mov.s	f3 f0
	j	bfle_nontail_cont.1256
bfle_nontail_else.1255:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1257
	mov.s	f3 f0
	j	bfle_nontail_cont.1258
bfle_nontail_else.1257:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1258:
bfle_nontail_cont.1256:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.1259
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.151
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1260
ble_nontail_else.1259:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.151
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1260:
	j	bfle_nontail_cont.1254
bfle_nontail_else.1253:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1261
	j	bfle_nontail_cont.1262
bfle_nontail_else.1261:
	div.s	f0 f2 f3
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f4
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f2 r30 4
	swc1	f0 r30 8
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1263
	mov.s	f3 f0
	j	bfle_nontail_cont.1264
bfle_nontail_else.1263:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1265
	mov.s	f3 f0
	j	bfle_nontail_cont.1266
bfle_nontail_else.1265:
	lui	r1 65408
	ori r1 r1 0
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	sw	r31 r30 12
	addi	r30 r30 16
	mov.s	f4 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.141
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1266:
bfle_nontail_cont.1264:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.1267
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_float_of_int
	addi	r30 r30 -16
	lw	r30 r31 12
	lwc1	 r30 f2 4
	mul.s	f2 f0 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.151
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1268
ble_nontail_else.1267:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.151
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1268:
bfle_nontail_cont.1262:
bfle_nontail_cont.1254:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1269
	lwc1	 r30 f1 0
	sub.s	f1 f0 f0
	j	bfle_nontail_cont.1270
bfle_nontail_else.1269:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	lui	r24 49097
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1271
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f1 f0 f0
	j	bfle_nontail_cont.1272
bfle_nontail_else.1271:
bfle_nontail_cont.1272:
bfle_nontail_cont.1270:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1273
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	j	bfle_nontail_cont.1274
bfle_nontail_else.1273:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
bfle_nontail_cont.1274:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1275
	neg.s	f0 f0
	j	bfle_nontail_cont.1276
bfle_nontail_else.1275:
bfle_nontail_cont.1276:
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1277
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f2 f0 f0
	swc1	f1 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	jal	cos.157
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	mul.s	f0 f1 f0
	jr	r31
bfle_tail_else.1277:
	mul.s	f0 f0 f2
	lui	r24 41751
	ori	r24 r24 42202
	mtc1	r24 f3
	mul.s	f3 f2 f3
	lui	r24 10058
	ori	r24 r24 38460
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 43863
	ori	r24 r24 16287
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 12080
	ori	r24 r24 37425
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 45783
	ori	r24 r24 12843
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 13880
	ori	r24 r24 61213
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 47440
	ori	r24 r24 3329
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 15368
	ori	r24 r24 34953
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 48682
	ori	r24 r24 43691
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	add.s	f2 f3 f2
	mul.s	f2 f0 f0
	mul.s	f0 f1 f0
	jr	r31
atan_sub.161:
	addi	r0 r2 30
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1278
	add.s	f1 f2 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f3 f4 f3
	swc1	f2 r30 0
	swc1	f1 r30 4
	sw	r1 r30 8
	swc1	f0 r30 12
	swc1	f3 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f3 f0
	jal	sin.159
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	cos.157
	addi	r30 r30 -28
	lw	r30 r31 24
	lwc1	 r30 f1 20
	div.s	f1 f0 f0
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1279
	addi	r0 r1 1
	j	bfle_nontail_cont.1280
bfle_nontail_else.1279:
	addi	r0 r1 0
bfle_nontail_cont.1280:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1281
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	addi	r0 r2 30
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1282
	lwc1	 r30 f0 0
	lwc1	 r30 f2 16
	add.s	f2 f0 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f3 f4 f3
	sw	r1 r30 24
	swc1	f3 r30 28
	sw	r31 r30 32
	addi	r30 r30 36
	mov.s	f3 f0
	jal	sin.159
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov.s	f1 f0
	jal	cos.157
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	div.s	f1 f0 f0
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1283
	addi	r0 r1 1
	j	bfle_nontail_cont.1284
bfle_nontail_else.1283:
	addi	r0 r1 0
bfle_nontail_cont.1284:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1285
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	lwc1	 r30 f0 28
	lwc1	 r30 f2 0
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.161
beq_tail_else.1285:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	lwc1	 r30 f0 16
	lwc1	 r30 f2 28
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.161
beq_tail_else.1282:
	lwc1	 r30 f0 16
	jr	r31
beq_tail_else.1281:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	addi	r0 r2 30
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1286
	lwc1	 r30 f0 16
	lwc1	 r30 f2 4
	add.s	f2 f0 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f4
	div.s	f3 f4 f3
	sw	r1 r30 36
	swc1	f3 r30 40
	sw	r31 r30 44
	addi	r30 r30 48
	mov.s	f3 f0
	jal	sin.159
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	swc1	f0 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov.s	f1 f0
	jal	cos.157
	addi	r30 r30 -52
	lw	r30 r31 48
	lwc1	 r30 f1 44
	div.s	f1 f0 f0
	lwc1	 r30 f1 12
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1287
	addi	r0 r1 1
	j	bfle_nontail_cont.1288
bfle_nontail_else.1287:
	addi	r0 r1 0
bfle_nontail_cont.1288:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1289
	addi	r0 r1 1
	lw	r30 r2 36
	add	r2 r1 r1
	lwc1	 r30 f0 40
	lwc1	 r30 f2 16
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.161
beq_tail_else.1289:
	addi	r0 r1 1
	lw	r30 r2 36
	add	r2 r1 r1
	lwc1	 r30 f0 4
	lwc1	 r30 f2 40
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.161
beq_tail_else.1286:
	lwc1	 r30 f0 4
	jr	r31
beq_tail_else.1278:
	mov.s	f1 f0
	jr	r31
min_caml_atan:
atan.166:
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	addi	r0 r1 0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	lui	r24 49097
	ori	r24 r24 4059
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	addi	r0 r1 30
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f3
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	swc1	f3 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f3 f0
	jal	sin.159
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f0
	jal	cos.157
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	div.s	f1 f0 f0
	lwc1	 r30 f1 8
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1290
	addi	r0 r1 1
	j	bfle_nontail_cont.1291
bfle_nontail_else.1290:
	addi	r0 r1 0
bfle_nontail_cont.1291:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1292
	addi	r0 r1 1
	addi	r0 r1 1
	lwc1	 r30 f0 12
	lwc1	 r30 f2 0
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.161
beq_tail_else.1292:
	addi	r0 r1 1
	addi	r0 r1 1
	lwc1	 r30 f0 4
	lwc1	 r30 f2 12
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.161
