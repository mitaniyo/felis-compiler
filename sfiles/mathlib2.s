floor_sub2.197:
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1267
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
	blez	r25 bfle_tail_else.1268
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1269
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
	blez	r25 bfle_tail_else.1270
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1271
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
	blez	r25 bfle_tail_else.1272
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1273
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
	blez	r25 bfle_tail_else.1274
	j	floor_sub2.197
bfle_tail_else.1274:
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.197
beq_tail_else.1273:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1272:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1275
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
	blez	r25 bfle_tail_else.1276
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.197
bfle_tail_else.1276:
	j	floor_sub2.197
beq_tail_else.1275:
	mov.s	f3 f0
	jr	r31
beq_tail_else.1271:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1270:
	sub	r3 r2 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1277
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
	blez	r25 bfle_tail_else.1278
	sub	r1 r2 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1279
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
	blez	r25 bfle_tail_else.1280
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.197
bfle_tail_else.1280:
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.197
beq_tail_else.1279:
	mov.s	f2 f0
	jr	r31
bfle_tail_else.1278:
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1281
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
	blez	r25 bfle_tail_else.1282
	j	floor_sub2.197
bfle_tail_else.1282:
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.197
beq_tail_else.1281:
	mov.s	f1 f0
	jr	r31
beq_tail_else.1277:
	mov.s	f2 f0
	jr	r31
beq_tail_else.1269:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1268:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1283
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
	blez	r25 bfle_tail_else.1284
	sub	r1 r3 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1285
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
	blez	r25 bfle_tail_else.1286
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1287
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
	blez	r25 bfle_tail_else.1288
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.197
bfle_tail_else.1288:
	j	floor_sub2.197
beq_tail_else.1287:
	mov.s	f3 f0
	jr	r31
bfle_tail_else.1286:
	sub	r1 r2 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1289
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
	blez	r25 bfle_tail_else.1290
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.197
bfle_tail_else.1290:
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.197
beq_tail_else.1289:
	mov.s	f2 f0
	jr	r31
beq_tail_else.1285:
	mov.s	f3 f0
	jr	r31
bfle_tail_else.1284:
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1291
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
	blez	r25 bfle_tail_else.1292
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1293
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
	blez	r25 bfle_tail_else.1294
	j	floor_sub2.197
bfle_tail_else.1294:
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.197
beq_tail_else.1293:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1292:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1295
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
	blez	r25 bfle_tail_else.1296
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.197
bfle_tail_else.1296:
	j	floor_sub2.197
beq_tail_else.1295:
	mov.s	f3 f0
	jr	r31
beq_tail_else.1291:
	mov.s	f1 f0
	jr	r31
beq_tail_else.1283:
	mov.s	f3 f0
	jr	r31
beq_tail_else.1267:
	mov.s	f1 f0
	jr	r31
min_caml_floor:
floor.203:
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
	blez	r25 bfle_tail_else.1297
	jr	r31
bfle_tail_else.1297:
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1298
	jr	r31
bfle_tail_else.1298:
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
	blez	r25 bfle_tail_else.1299
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1300
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
	blez	r25 bfle_tail_else.1301
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1302
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
	blez	r25 bfle_tail_else.1303
	mov	r2 r3
	mov.s	f3 f2
	j	floor_sub2.197
bfle_tail_else.1303:
	mov	r1 r3
	mov.s	f3 f1
	j	floor_sub2.197
beq_tail_else.1302:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1301:
	sub	r3 r2 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1304
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
	blez	r25 bfle_tail_else.1305
	mov	r28 r2
	mov	r2 r1
	mov	r1 r28
	mov.s	f2 f31
	mov.s	f1 f2
	mov.s	f31 f1
	j	floor_sub2.197
bfle_tail_else.1305:
	mov	r2 r3
	mov.s	f3 f2
	j	floor_sub2.197
beq_tail_else.1304:
	mov.s	f2 f0
	jr	r31
beq_tail_else.1300:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1299:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1306
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
	blez	r25 bfle_tail_else.1307
	sub	r1 r3 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1308
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
	blez	r25 bfle_tail_else.1309
	mov	r1 r3
	mov.s	f3 f1
	j	floor_sub2.197
bfle_tail_else.1309:
	mov	r28 r2
	mov	r2 r1
	mov	r1 r28
	mov.s	f2 f31
	mov.s	f1 f2
	mov.s	f31 f1
	j	floor_sub2.197
beq_tail_else.1308:
	mov.s	f3 f0
	jr	r31
bfle_tail_else.1307:
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1310
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
	blez	r25 bfle_tail_else.1311
	mov	r2 r3
	mov.s	f3 f2
	j	floor_sub2.197
bfle_tail_else.1311:
	mov	r1 r3
	mov.s	f3 f1
	j	floor_sub2.197
beq_tail_else.1310:
	mov.s	f1 f0
	jr	r31
beq_tail_else.1306:
	mov.s	f3 f0
	jr	r31
min_caml_int_of_float:
int_of_float.205:
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
	blez	r25 bfle_nontail_else.1312
	j	bfle_nontail_cont.1313
bfle_nontail_else.1312:
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1314
	j	bfle_nontail_cont.1315
bfle_nontail_else.1314:
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
	blez	r25 bfle_nontail_else.1316
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_else.1318
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
	blez	r25 bfle_nontail_else.1320
	sw	r31 r30 0
	addi	r30 r30 4
	jal	floor_sub2.197
	addi	r30 r30 -4
	lw	r30 r31 0
	j	bfle_nontail_cont.1321
bfle_nontail_else.1320:
	sw	r31 r30 0
	addi	r30 r30 4
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	jal	floor_sub2.197
	addi	r30 r30 -4
	lw	r30 r31 0
bfle_nontail_cont.1321:
	j	beq_cont.1319
beq_else.1318:
	mov.s	f1 f0
beq_cont.1319:
	j	bfle_nontail_cont.1317
bfle_nontail_else.1316:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_else.1322
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
	blez	r25 bfle_nontail_else.1324
	sw	r31 r30 0
	addi	r30 r30 4
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	jal	floor_sub2.197
	addi	r30 r30 -4
	lw	r30 r31 0
	j	bfle_nontail_cont.1325
bfle_nontail_else.1324:
	sw	r31 r30 0
	addi	r30 r30 4
	jal	floor_sub2.197
	addi	r30 r30 -4
	lw	r30 r31 0
bfle_nontail_cont.1325:
	j	beq_cont.1323
beq_else.1322:
	mov.s	f3 f0
beq_cont.1323:
bfle_nontail_cont.1317:
bfle_nontail_cont.1315:
bfle_nontail_cont.1313:
	j	min_caml_floor_retint
normalize.207:
	neg.s	f1 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1326
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
	blez	r25 bfle_nontail_else.1327
	mov.s	f3 f0
	j	bfle_nontail_cont.1328
bfle_nontail_else.1327:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1329
	mov.s	f3 f0
	j	bfle_nontail_cont.1330
bfle_nontail_else.1329:
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
	blez	r25 bfle_nontail_else.1331
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	mov.s	f6 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.197
	addi	r30 r30 -16
	lw	r30 r31 12
	j	bfle_nontail_cont.1332
bfle_nontail_else.1331:
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	mov.s	f4 f2
	mov.s	f6 f1
	mov.s	f3 f0
	jal	floor_sub2.197
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1332:
bfle_nontail_cont.1330:
bfle_nontail_cont.1328:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1333
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
	blez	r25 bfle_tail_else.1334
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
	blez	r25 bfle_nontail_else.1335
	mov.s	f3 f0
	j	bfle_nontail_cont.1336
bfle_nontail_else.1335:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1337
	mov.s	f3 f0
	j	bfle_nontail_cont.1338
bfle_nontail_else.1337:
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
	jal	floor_sub2.197
	addi	r30 r30 -20
	lw	r30 r31 16
bfle_nontail_cont.1338:
bfle_nontail_cont.1336:
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_floor_retint
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1339
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
	j	normalize.207
ble_tail_else.1339:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 12
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.207
bfle_tail_else.1334:
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1340
	jr	r31
bfle_tail_else.1340:
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
	blez	r25 bfle_nontail_else.1341
	mov.s	f3 f0
	j	bfle_nontail_cont.1342
bfle_nontail_else.1341:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1343
	mov.s	f3 f0
	j	bfle_nontail_cont.1344
bfle_nontail_else.1343:
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
	jal	floor_sub2.197
	addi	r30 r30 -20
	lw	r30 r31 16
bfle_nontail_cont.1344:
bfle_nontail_cont.1342:
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_floor_retint
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1345
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
	j	normalize.207
ble_tail_else.1345:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 12
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.207
ble_tail_else.1333:
	lwc1	 r30 f0 4
	lwc1	 r30 f1 8
	add.s	f1 f0 f1
	lwc1	 r30 f2 0
	neg.s	f2 f3
	sub.s	f3 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1346
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
	blez	r25 bfle_nontail_else.1347
	mov.s	f3 f0
	j	bfle_nontail_cont.1348
bfle_nontail_else.1347:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1349
	mov.s	f3 f0
	j	bfle_nontail_cont.1350
bfle_nontail_else.1349:
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
	jal	floor_sub2.197
	addi	r30 r30 -24
	lw	r30 r31 20
bfle_nontail_cont.1350:
bfle_nontail_cont.1348:
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_floor_retint
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1351
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
	j	normalize.207
ble_tail_else.1351:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 16
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.207
bfle_tail_else.1346:
	sub.s	f2 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1352
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1352:
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
	blez	r25 bfle_nontail_else.1353
	mov.s	f3 f0
	j	bfle_nontail_cont.1354
bfle_nontail_else.1353:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1355
	mov.s	f3 f0
	j	bfle_nontail_cont.1356
bfle_nontail_else.1355:
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
	jal	floor_sub2.197
	addi	r30 r30 -24
	lw	r30 r31 20
bfle_nontail_cont.1356:
bfle_nontail_cont.1354:
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_floor_retint
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1357
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
	j	normalize.207
ble_tail_else.1357:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 16
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.207
bfle_tail_else.1326:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1358
	jr	r31
bfle_tail_else.1358:
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
	blez	r25 bfle_nontail_else.1359
	mov.s	f3 f0
	j	bfle_nontail_cont.1360
bfle_nontail_else.1359:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1361
	mov.s	f3 f0
	j	bfle_nontail_cont.1362
bfle_nontail_else.1361:
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
	blez	r25 bfle_nontail_else.1363
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	mov.s	f6 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.197
	addi	r30 r30 -24
	lw	r30 r31 20
	j	bfle_nontail_cont.1364
bfle_nontail_else.1363:
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	mov.s	f4 f2
	mov.s	f6 f1
	mov.s	f3 f0
	jal	floor_sub2.197
	addi	r30 r30 -24
	lw	r30 r31 20
bfle_nontail_cont.1364:
bfle_nontail_cont.1362:
bfle_nontail_cont.1360:
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_floor_retint
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1365
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
	blez	r25 bfle_tail_else.1366
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
	blez	r25 bfle_nontail_else.1367
	mov.s	f3 f0
	j	bfle_nontail_cont.1368
bfle_nontail_else.1367:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1369
	mov.s	f3 f0
	j	bfle_nontail_cont.1370
bfle_nontail_else.1369:
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
	jal	floor_sub2.197
	addi	r30 r30 -28
	lw	r30 r31 24
bfle_nontail_cont.1370:
bfle_nontail_cont.1368:
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_floor_retint
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1371
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
	j	normalize.207
ble_tail_else.1371:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 20
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.207
bfle_tail_else.1366:
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1372
	jr	r31
bfle_tail_else.1372:
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
	blez	r25 bfle_nontail_else.1373
	mov.s	f3 f0
	j	bfle_nontail_cont.1374
bfle_nontail_else.1373:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1375
	mov.s	f3 f0
	j	bfle_nontail_cont.1376
bfle_nontail_else.1375:
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
	jal	floor_sub2.197
	addi	r30 r30 -28
	lw	r30 r31 24
bfle_nontail_cont.1376:
bfle_nontail_cont.1374:
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_floor_retint
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1377
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
	j	normalize.207
ble_tail_else.1377:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 20
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.207
ble_tail_else.1365:
	lwc1	 r30 f0 4
	lwc1	 r30 f1 8
	sub.s	f1 f0 f1
	lwc1	 r30 f2 0
	neg.s	f2 f3
	sub.s	f3 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1378
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
	blez	r25 bfle_nontail_else.1379
	mov.s	f3 f0
	j	bfle_nontail_cont.1380
bfle_nontail_else.1379:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1381
	mov.s	f3 f0
	j	bfle_nontail_cont.1382
bfle_nontail_else.1381:
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
	jal	floor_sub2.197
	addi	r30 r30 -32
	lw	r30 r31 28
bfle_nontail_cont.1382:
bfle_nontail_cont.1380:
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_floor_retint
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1383
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
	j	normalize.207
ble_tail_else.1383:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 24
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.207
bfle_tail_else.1378:
	sub.s	f2 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1384
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1384:
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
	blez	r25 bfle_nontail_else.1385
	mov.s	f3 f0
	j	bfle_nontail_cont.1386
bfle_nontail_else.1385:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1387
	mov.s	f3 f0
	j	bfle_nontail_cont.1388
bfle_nontail_else.1387:
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
	jal	floor_sub2.197
	addi	r30 r30 -32
	lw	r30 r31 28
bfle_nontail_cont.1388:
bfle_nontail_cont.1386:
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_floor_retint
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1389
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
	j	normalize.207
ble_tail_else.1389:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 24
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.207
sin2.211:
	mul.s	f0 f0 f1
	mul.s	f1 f1 f2
	lui	r24 32769
	ori	r24 r24 5826
	mtc1	r24 f3
	mul.s	f3 f2 f3
	lui	r24 34593
	ori	r24 r24 42647
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 37096
	ori	r24 r24 54670
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 39483
	ori	r24 r24 3489
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 41751
	ori	r24 r24 42202
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 43863
	ori	r24 r24 16287
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 45783
	ori	r24 r24 12843
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 47440
	ori	r24 r24 3329
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 48682
	ori	r24 r24 43691
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r24 540
	ori	r24 r24 52567
	mtc1	r24 f4
	mul.s	f4 f2 f4
	lui	r24 3090
	ori	r24 r24 53196
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 5535
	ori	r24 r24 40551
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 7864
	ori	r24 r24 56440
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 10058
	ori	r24 r24 38460
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 12080
	ori	r24 r24 37425
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 13880
	ori	r24 r24 61213
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 15368
	ori	r24 r24 34953
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f2 f4 f2
	mul.s	f3 f1 f1
	add.s	f2 f1 f1
	mul.s	f0 f1 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1390
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1390:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1391
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1391:
	jr	r31
min_caml_cos:
cos.213:
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
	blez	r25 bfle_nontail_else.1392
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
	blez	r25 bfle_nontail_else.1394
	mov.s	f3 f0
	j	bfle_nontail_cont.1395
bfle_nontail_else.1394:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1396
	mov.s	f3 f0
	j	bfle_nontail_cont.1397
bfle_nontail_else.1396:
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
	jal	floor_sub2.197
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1397:
bfle_nontail_cont.1395:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.1398
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
	jal	normalize.207
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1399
ble_nontail_else.1398:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.207
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1399:
	j	bfle_nontail_cont.1393
bfle_nontail_else.1392:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1400
	j	bfle_nontail_cont.1401
bfle_nontail_else.1400:
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
	blez	r25 bfle_nontail_else.1402
	mov.s	f3 f0
	j	bfle_nontail_cont.1403
bfle_nontail_else.1402:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1404
	mov.s	f3 f0
	j	bfle_nontail_cont.1405
bfle_nontail_else.1404:
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
	jal	floor_sub2.197
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1405:
bfle_nontail_cont.1403:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.1406
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
	jal	normalize.207
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1407
ble_nontail_else.1406:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.207
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1407:
bfle_nontail_cont.1401:
bfle_nontail_cont.1393:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1408
	neg.s	f0 f0
	j	bfle_nontail_cont.1409
bfle_nontail_else.1408:
bfle_nontail_cont.1409:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1410
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	j	bfle_nontail_cont.1411
bfle_nontail_else.1410:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
bfle_nontail_cont.1411:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1412
	lwc1	 r30 f2 0
	sub.s	f2 f0 f0
	j	bfle_nontail_cont.1413
bfle_nontail_else.1412:
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
	blez	r25 bfle_nontail_else.1414
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f2 f0 f0
	j	bfle_nontail_cont.1415
bfle_nontail_else.1414:
bfle_nontail_cont.1415:
bfle_nontail_cont.1413:
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1416
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
	jal	sin2.211
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	mul.s	f0 f1 f0
	jr	r31
bfle_tail_else.1416:
	mul.s	f0 f0 f0
	mul.s	f0 f0 f2
	lui	r24 32768
	ori	r24 r24 0
	mtc1	r24 f3
	mul.s	f3 f2 f3
	lui	r24 1185
	ori	r24 r24 42673
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 3717
	ori	r24 r24 3153
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 6137
	ori	r24 r24 26497
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 8434
	ori	r24 r24 41309
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 10583
	ori	r24 r24 16287
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 12559
	ori	r24 r24 30407
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 14288
	ori	r24 r24 3329
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 15658
	ori	r24 r24 43691
	mtc1	r24 f4
	add.s	f3 f4 f3
	mul.s	f3 f2 f3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f3 f4 f3
	lui	r24 32805
	ori	r24 r24 1489
	mtc1	r24 f4
	mul.s	f4 f2 f4
	lui	r24 35228
	ori	r24 r24 39266
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 37700
	ori	r24 r24 29744
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 40070
	ori	r24 r24 29131
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 42292
	ori	r24 r24 5059
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 44361
	ori	r24 r24 52133
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 46227
	ori	r24 r24 62078
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f4
	lui	r24 47798
	ori	r24 r24 2913
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f2 f2
	lui	r24 48896
	ori	r24 r24 0
	mtc1	r24 f4
	add.s	f2 f4 f2
	mul.s	f2 f0 f0
	add.s	f3 f0 f0
	mul.s	f0 f1 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1417
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1417:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1418
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1418:
	jr	r31
min_caml_sin:
sin.215:
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
	blez	r25 bfle_nontail_else.1419
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
	blez	r25 bfle_nontail_else.1421
	mov.s	f3 f0
	j	bfle_nontail_cont.1422
bfle_nontail_else.1421:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1423
	mov.s	f3 f0
	j	bfle_nontail_cont.1424
bfle_nontail_else.1423:
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
	jal	floor_sub2.197
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1424:
bfle_nontail_cont.1422:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.1425
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
	jal	normalize.207
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1426
ble_nontail_else.1425:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.207
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1426:
	j	bfle_nontail_cont.1420
bfle_nontail_else.1419:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1427
	j	bfle_nontail_cont.1428
bfle_nontail_else.1427:
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
	blez	r25 bfle_nontail_else.1429
	mov.s	f3 f0
	j	bfle_nontail_cont.1430
bfle_nontail_else.1429:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1431
	mov.s	f3 f0
	j	bfle_nontail_cont.1432
bfle_nontail_else.1431:
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
	jal	floor_sub2.197
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1432:
bfle_nontail_cont.1430:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.1433
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
	jal	normalize.207
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1434
ble_nontail_else.1433:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.207
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1434:
bfle_nontail_cont.1428:
bfle_nontail_cont.1420:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1435
	lwc1	 r30 f1 0
	sub.s	f1 f0 f0
	j	bfle_nontail_cont.1436
bfle_nontail_else.1435:
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
	blez	r25 bfle_nontail_else.1437
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f1 f0 f0
	j	bfle_nontail_cont.1438
bfle_nontail_else.1437:
bfle_nontail_cont.1438:
bfle_nontail_cont.1436:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1439
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	j	bfle_nontail_cont.1440
bfle_nontail_else.1439:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
bfle_nontail_cont.1440:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1441
	neg.s	f0 f0
	j	bfle_nontail_cont.1442
bfle_nontail_else.1441:
bfle_nontail_cont.1442:
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1443
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
	jal	cos.213
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	mul.s	f0 f1 f0
	jr	r31
bfle_tail_else.1443:
	mul.s	f0 f0 f2
	mul.s	f2 f2 f3
	lui	r24 32769
	ori	r24 r24 5826
	mtc1	r24 f4
	mul.s	f4 f3 f4
	lui	r24 34593
	ori	r24 r24 42647
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f3 f4
	lui	r24 37096
	ori	r24 r24 54670
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f3 f4
	lui	r24 39483
	ori	r24 r24 3489
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f3 f4
	lui	r24 41751
	ori	r24 r24 42202
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f3 f4
	lui	r24 43863
	ori	r24 r24 16287
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f3 f4
	lui	r24 45783
	ori	r24 r24 12843
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f3 f4
	lui	r24 47440
	ori	r24 r24 3329
	mtc1	r24 f5
	add.s	f4 f5 f4
	mul.s	f4 f3 f4
	lui	r24 48682
	ori	r24 r24 43691
	mtc1	r24 f5
	add.s	f4 f5 f4
	lui	r24 540
	ori	r24 r24 52567
	mtc1	r24 f5
	mul.s	f5 f3 f5
	lui	r24 3090
	ori	r24 r24 53196
	mtc1	r24 f6
	add.s	f5 f6 f5
	mul.s	f5 f3 f5
	lui	r24 5535
	ori	r24 r24 40551
	mtc1	r24 f6
	add.s	f5 f6 f5
	mul.s	f5 f3 f5
	lui	r24 7864
	ori	r24 r24 56440
	mtc1	r24 f6
	add.s	f5 f6 f5
	mul.s	f5 f3 f5
	lui	r24 10058
	ori	r24 r24 38460
	mtc1	r24 f6
	add.s	f5 f6 f5
	mul.s	f5 f3 f5
	lui	r24 12080
	ori	r24 r24 37425
	mtc1	r24 f6
	add.s	f5 f6 f5
	mul.s	f5 f3 f5
	lui	r24 13880
	ori	r24 r24 61213
	mtc1	r24 f6
	add.s	f5 f6 f5
	mul.s	f5 f3 f5
	lui	r24 15368
	ori	r24 r24 34953
	mtc1	r24 f6
	add.s	f5 f6 f5
	mul.s	f5 f3 f3
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f5
	add.s	f3 f5 f3
	mul.s	f4 f2 f2
	add.s	f3 f2 f2
	mul.s	f0 f2 f0
	mul.s	f0 f1 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1444
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1444:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1445
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1445:
	jr	r31
atan_sub.217:
	addi	r0 r2 30
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1446
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
	jal	sin.215
	addi	r30 r30 -24
	lw	r30 r31 20
	lwc1	 r30 f1 16
	swc1	f0 r30 20
	sw	r31 r30 24
	addi	r30 r30 28
	mov.s	f1 f0
	jal	cos.213
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
	blez	r25 bfle_nontail_else.1447
	addi	r0 r1 1
	j	bfle_nontail_cont.1448
bfle_nontail_else.1447:
	addi	r0 r1 0
bfle_nontail_cont.1448:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1449
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	addi	r0 r2 30
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1450
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
	jal	sin.215
	addi	r30 r30 -36
	lw	r30 r31 32
	lwc1	 r30 f1 28
	swc1	f0 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov.s	f1 f0
	jal	cos.213
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
	blez	r25 bfle_nontail_else.1451
	addi	r0 r1 1
	j	bfle_nontail_cont.1452
bfle_nontail_else.1451:
	addi	r0 r1 0
bfle_nontail_cont.1452:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1453
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	lwc1	 r30 f0 28
	lwc1	 r30 f2 0
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.217
beq_tail_else.1453:
	addi	r0 r1 1
	lw	r30 r2 24
	add	r2 r1 r1
	lwc1	 r30 f0 16
	lwc1	 r30 f2 28
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.217
beq_tail_else.1450:
	lwc1	 r30 f0 0
	jr	r31
beq_tail_else.1449:
	addi	r0 r1 1
	lw	r30 r2 8
	add	r2 r1 r1
	addi	r0 r2 30
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1454
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
	jal	sin.215
	addi	r30 r30 -48
	lw	r30 r31 44
	lwc1	 r30 f1 40
	swc1	f0 r30 44
	sw	r31 r30 48
	addi	r30 r30 52
	mov.s	f1 f0
	jal	cos.213
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
	blez	r25 bfle_nontail_else.1455
	addi	r0 r1 1
	j	bfle_nontail_cont.1456
bfle_nontail_else.1455:
	addi	r0 r1 0
bfle_nontail_cont.1456:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1457
	addi	r0 r1 1
	lw	r30 r2 36
	add	r2 r1 r1
	lwc1	 r30 f0 40
	lwc1	 r30 f2 16
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.217
beq_tail_else.1457:
	addi	r0 r1 1
	lw	r30 r2 36
	add	r2 r1 r1
	lwc1	 r30 f0 4
	lwc1	 r30 f2 40
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.217
beq_tail_else.1454:
	lwc1	 r30 f0 16
	jr	r31
beq_tail_else.1446:
	mov.s	f2 f0
	jr	r31
min_caml_atan:
atan.222:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1458
	neg.s	f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1459
	neg.s	f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1461
	neg.s	f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1463
	neg.s	f0 f0
	sw	r31 r30 0
	addi	r30 r30 4
	jal	atan.222
	addi	r30 r30 -4
	lw	r30 r31 0
	neg.s	f0 f0
	j	bfle_nontail_cont.1464
bfle_nontail_else.1463:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.1465
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	sw	r31 r30 0
	addi	r30 r30 4
	jal	atan_sub.217
	addi	r30 r30 -4
	lw	r30 r31 0
	j	bfeq_nontail_cont.1466
bfeq_nontail_else.1465:
bfeq_nontail_cont.1466:
bfle_nontail_cont.1464:
	neg.s	f0 f0
	j	bfle_nontail_cont.1462
bfle_nontail_else.1461:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.1467
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	addi	r0 r1 30
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f3
	swc1	f2 r30 0
	swc1	f1 r30 4
	swc1	f0 r30 8
	swc1	f3 r30 12
	sw	r31 r30 16
	addi	r30 r30 20
	mov.s	f3 f0
	jal	sin.215
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	swc1	f0 r30 16
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f0
	jal	cos.213
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
	blez	r25 bfle_nontail_else.1469
	addi	r0 r1 1
	j	bfle_nontail_cont.1470
bfle_nontail_else.1469:
	addi	r0 r1 0
bfle_nontail_cont.1470:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_else.1471
	addi	r0 r1 1
	addi	r0 r1 1
	lwc1	 r30 f0 12
	lwc1	 r30 f2 0
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	jal	atan_sub.217
	addi	r30 r30 -24
	lw	r30 r31 20
	j	beq_cont.1472
beq_else.1471:
	addi	r0 r1 1
	addi	r0 r1 1
	lwc1	 r30 f0 4
	lwc1	 r30 f2 12
	sw	r31 r30 20
	addi	r30 r30 24
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	jal	atan_sub.217
	addi	r30 r30 -24
	lw	r30 r31 20
beq_cont.1472:
	j	bfeq_nontail_cont.1468
bfeq_nontail_else.1467:
bfeq_nontail_cont.1468:
bfle_nontail_cont.1462:
	neg.s	f0 f0
	j	bfle_nontail_cont.1460
bfle_nontail_else.1459:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_nontail_else.1473
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	sw	r31 r30 20
	addi	r30 r30 24
	jal	atan_sub.217
	addi	r30 r30 -24
	lw	r30 r31 20
	j	bfeq_nontail_cont.1474
bfeq_nontail_else.1473:
bfeq_nontail_cont.1474:
bfle_nontail_cont.1460:
	neg.s	f0 f0
	jr	r31
bfle_tail_else.1458:
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	sll	r25 r25 1
	beq	r25 r0 bfeq_tail_else.1475
	lui	r24 16457
	ori	r24 r24 4059
	mtc1	r24 f1
	addi	r0 r1 0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	addi	r0 r1 30
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f3
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f3
	swc1	f2 r30 20
	swc1	f1 r30 24
	swc1	f0 r30 28
	swc1	f3 r30 32
	sw	r31 r30 36
	addi	r30 r30 40
	mov.s	f3 f0
	jal	sin.215
	addi	r30 r30 -40
	lw	r30 r31 36
	lwc1	 r30 f1 32
	swc1	f0 r30 36
	sw	r31 r30 40
	addi	r30 r30 44
	mov.s	f1 f0
	jal	cos.213
	addi	r30 r30 -44
	lw	r30 r31 40
	lwc1	 r30 f1 36
	div.s	f1 f0 f0
	lwc1	 r30 f1 28
	sub.s	f1 f0 f0
	lui	r24 0
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1476
	addi	r0 r1 1
	j	bfle_nontail_cont.1477
bfle_nontail_else.1476:
	addi	r0 r1 0
bfle_nontail_cont.1477:
	addi	r0 r2 0
	sub	r1 r2 r25
	beq	r25 r0 beq_tail_else.1478
	addi	r0 r1 1
	addi	r0 r1 1
	lwc1	 r30 f0 32
	lwc1	 r30 f2 20
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.217
beq_tail_else.1478:
	addi	r0 r1 1
	addi	r0 r1 1
	lwc1	 r30 f0 24
	lwc1	 r30 f2 32
	mov.s	f1 f31
	mov.s	f0 f1
	mov.s	f31 f0
	j	atan_sub.217
bfeq_tail_else.1475:
	jr	r31
