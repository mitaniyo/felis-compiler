floor_sub2.231:
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1337
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
	blez	r25 bfle_tail_else.1338
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1339
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
	blez	r25 bfle_tail_else.1340
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1341
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
	blez	r25 bfle_tail_else.1342
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1343
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
	blez	r25 bfle_tail_else.1344
	j	floor_sub2.231
bfle_tail_else.1344:
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.231
beq_tail_else.1343:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1342:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1345
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
	blez	r25 bfle_tail_else.1346
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.231
bfle_tail_else.1346:
	j	floor_sub2.231
beq_tail_else.1345:
	mov.s	f3 f0
	jr	r31
beq_tail_else.1341:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1340:
	sub	r3 r2 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1347
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
	blez	r25 bfle_tail_else.1348
	sub	r1 r2 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1349
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
	blez	r25 bfle_tail_else.1350
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.231
bfle_tail_else.1350:
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.231
beq_tail_else.1349:
	mov.s	f2 f0
	jr	r31
bfle_tail_else.1348:
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1351
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
	blez	r25 bfle_tail_else.1352
	j	floor_sub2.231
bfle_tail_else.1352:
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.231
beq_tail_else.1351:
	mov.s	f1 f0
	jr	r31
beq_tail_else.1347:
	mov.s	f2 f0
	jr	r31
beq_tail_else.1339:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1338:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1353
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
	blez	r25 bfle_tail_else.1354
	sub	r1 r3 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1355
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
	blez	r25 bfle_tail_else.1356
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1357
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
	blez	r25 bfle_tail_else.1358
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.231
bfle_tail_else.1358:
	j	floor_sub2.231
beq_tail_else.1357:
	mov.s	f3 f0
	jr	r31
bfle_tail_else.1356:
	sub	r1 r2 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1359
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
	blez	r25 bfle_tail_else.1360
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.231
bfle_tail_else.1360:
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.231
beq_tail_else.1359:
	mov.s	f2 f0
	jr	r31
beq_tail_else.1355:
	mov.s	f3 f0
	jr	r31
bfle_tail_else.1354:
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1361
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
	blez	r25 bfle_tail_else.1362
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1363
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
	blez	r25 bfle_tail_else.1364
	j	floor_sub2.231
bfle_tail_else.1364:
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	j	floor_sub2.231
beq_tail_else.1363:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1362:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1365
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
	blez	r25 bfle_tail_else.1366
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	j	floor_sub2.231
bfle_tail_else.1366:
	j	floor_sub2.231
beq_tail_else.1365:
	mov.s	f3 f0
	jr	r31
beq_tail_else.1361:
	mov.s	f1 f0
	jr	r31
beq_tail_else.1353:
	mov.s	f3 f0
	jr	r31
beq_tail_else.1337:
	mov.s	f1 f0
	jr	r31
min_caml_floor:
floor.237:
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f2
	mtc1	r0 f1
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1367
	jr	r31
bfle_tail_else.1367:
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1368
	jr	r31
bfle_tail_else.1368:
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
	mtc1	r0 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f3
	mtc1	r0 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1369
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1370
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
	blez	r25 bfle_tail_else.1371
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1372
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
	blez	r25 bfle_tail_else.1373
	mov	r2 r3
	mov.s	f3 f2
	j	floor_sub2.231
bfle_tail_else.1373:
	mov	r1 r3
	mov.s	f3 f1
	j	floor_sub2.231
beq_tail_else.1372:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1371:
	sub	r3 r2 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1374
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
	blez	r25 bfle_tail_else.1375
	mov	r28 r2
	mov	r2 r1
	mov	r1 r28
	mov.s	f2 f31
	mov.s	f1 f2
	mov.s	f31 f1
	j	floor_sub2.231
bfle_tail_else.1375:
	mov	r2 r3
	mov.s	f3 f2
	j	floor_sub2.231
beq_tail_else.1374:
	mov.s	f2 f0
	jr	r31
beq_tail_else.1370:
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1369:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_tail_else.1376
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
	blez	r25 bfle_tail_else.1377
	sub	r1 r3 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_tail_else.1378
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
	blez	r25 bfle_tail_else.1379
	mov	r1 r3
	mov.s	f3 f1
	j	floor_sub2.231
bfle_tail_else.1379:
	mov	r28 r2
	mov	r2 r1
	mov	r1 r28
	mov.s	f2 f31
	mov.s	f1 f2
	mov.s	f31 f1
	j	floor_sub2.231
beq_tail_else.1378:
	mov.s	f3 f0
	jr	r31
bfle_tail_else.1377:
	sub	r2 r1 r3
	addi	r0 r4 1
	sub	r3 r4 r25
	beq	r25 r0 beq_tail_else.1380
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
	blez	r25 bfle_tail_else.1381
	mov	r2 r3
	mov.s	f3 f2
	j	floor_sub2.231
bfle_tail_else.1381:
	mov	r1 r3
	mov.s	f3 f1
	j	floor_sub2.231
beq_tail_else.1380:
	mov.s	f1 f0
	jr	r31
beq_tail_else.1376:
	mov.s	f3 f0
	jr	r31
min_caml_int_of_float:
int_of_float.239:
	lui	r24 16128
	ori	r24 r24 0
	mtc1	r24 f1
	add.s	f0 f1 f0
	lui	r2 128
	ori r2 r2 0
	lui	r24 19200
	ori	r24 r24 0
	mtc1	r24 f2
	mtc1	r0 f1
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1382
	j	bfle_nontail_cont.1383
bfle_nontail_else.1382:
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1384
	j	bfle_nontail_cont.1385
bfle_nontail_else.1384:
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
	mtc1	r0 f3
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f3
	mtc1	r0 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1386
	sub	r3 r1 r2
	addi	r0 r4 1
	sub	r2 r4 r25
	beq	r25 r0 beq_else.1388
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
	blez	r25 bfle_nontail_else.1390
	sw	r31 r30 0
	addi	r30 r30 4
	jal	floor_sub2.231
	addi	r30 r30 -4
	lw	r30 r31 0
	j	bfle_nontail_cont.1391
bfle_nontail_else.1390:
	sw	r31 r30 0
	addi	r30 r30 4
	mov	r1 r2
	mov	r2 r3
	mov.s	f2 f1
	mov.s	f3 f2
	jal	floor_sub2.231
	addi	r30 r30 -4
	lw	r30 r31 0
bfle_nontail_cont.1391:
	j	beq_cont.1389
beq_else.1388:
	mov.s	f1 f0
beq_cont.1389:
	j	bfle_nontail_cont.1387
bfle_nontail_else.1386:
	sub	r2 r3 r1
	addi	r0 r4 1
	sub	r1 r4 r25
	beq	r25 r0 beq_else.1392
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
	blez	r25 bfle_nontail_else.1394
	sw	r31 r30 0
	addi	r30 r30 4
	mov	r2 r1
	mov	r1 r3
	mov.s	f1 f2
	mov.s	f3 f1
	jal	floor_sub2.231
	addi	r30 r30 -4
	lw	r30 r31 0
	j	bfle_nontail_cont.1395
bfle_nontail_else.1394:
	sw	r31 r30 0
	addi	r30 r30 4
	jal	floor_sub2.231
	addi	r30 r30 -4
	lw	r30 r31 0
bfle_nontail_cont.1395:
	j	beq_cont.1393
beq_else.1392:
	mov.s	f3 f0
beq_cont.1393:
bfle_nontail_cont.1387:
bfle_nontail_cont.1385:
bfle_nontail_cont.1383:
	j	min_caml_floor_retint
normalize.241:
	neg.s	f1 f3
	sub.s	f3 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1396
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 0
	swc1	f2 r30 4
	swc1	f0 r30 8
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1397
	mov.s	f3 f0
	j	bfle_nontail_cont.1398
bfle_nontail_else.1397:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1399
	mov.s	f3 f0
	j	bfle_nontail_cont.1400
bfle_nontail_else.1399:
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
	mtc1	r0 f6
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f6
	mtc1	r0 f6
	sub.s	f6 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1401
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r2 r3
	mov.s	f6 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.231
	addi	r30 r30 -16
	lw	r30 r31 12
	j	bfle_nontail_cont.1402
bfle_nontail_else.1401:
	sw	r31 r30 12
	addi	r30 r30 16
	mov	r1 r3
	mov.s	f4 f2
	mov.s	f6 f1
	mov.s	f3 f0
	jal	floor_sub2.231
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1402:
bfle_nontail_cont.1400:
bfle_nontail_cont.1398:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1403
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
	blez	r25 bfle_tail_else.1404
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f0 r30 12
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1405
	mov.s	f3 f0
	j	bfle_nontail_cont.1406
bfle_nontail_else.1405:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1407
	mov.s	f3 f0
	j	bfle_nontail_cont.1408
bfle_nontail_else.1407:
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
	jal	floor_sub2.231
	addi	r30 r30 -20
	lw	r30 r31 16
bfle_nontail_cont.1408:
bfle_nontail_cont.1406:
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_floor_retint
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1409
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
	j	normalize.241
ble_tail_else.1409:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 12
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.241
bfle_tail_else.1404:
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1410
	jr	r31
bfle_tail_else.1410:
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f0 r30 12
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1411
	mov.s	f3 f0
	j	bfle_nontail_cont.1412
bfle_nontail_else.1411:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1413
	mov.s	f3 f0
	j	bfle_nontail_cont.1414
bfle_nontail_else.1413:
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
	jal	floor_sub2.231
	addi	r30 r30 -20
	lw	r30 r31 16
bfle_nontail_cont.1414:
bfle_nontail_cont.1412:
	sw	r31 r30 16
	addi	r30 r30 20
	jal	min_caml_floor_retint
	addi	r30 r30 -20
	lw	r30 r31 16
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1415
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
	j	normalize.241
ble_tail_else.1415:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 12
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.241
ble_tail_else.1403:
	lwc1	 r30 f0 4
	lwc1	 r30 f1 8
	add.s	f1 f0 f1
	lwc1	 r30 f2 0
	neg.s	f2 f3
	sub.s	f3 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1416
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 16
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1417
	mov.s	f3 f0
	j	bfle_nontail_cont.1418
bfle_nontail_else.1417:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1419
	mov.s	f3 f0
	j	bfle_nontail_cont.1420
bfle_nontail_else.1419:
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
	jal	floor_sub2.231
	addi	r30 r30 -24
	lw	r30 r31 20
bfle_nontail_cont.1420:
bfle_nontail_cont.1418:
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_floor_retint
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1421
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
	j	normalize.241
ble_tail_else.1421:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 16
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.241
bfle_tail_else.1416:
	sub.s	f2 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1422
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1422:
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 16
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1423
	mov.s	f3 f0
	j	bfle_nontail_cont.1424
bfle_nontail_else.1423:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1425
	mov.s	f3 f0
	j	bfle_nontail_cont.1426
bfle_nontail_else.1425:
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
	jal	floor_sub2.231
	addi	r30 r30 -24
	lw	r30 r31 20
bfle_nontail_cont.1426:
bfle_nontail_cont.1424:
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_floor_retint
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1427
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
	j	normalize.241
ble_tail_else.1427:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 16
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.241
bfle_tail_else.1396:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1428
	jr	r31
bfle_tail_else.1428:
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 0
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
	lui	r3 256
	ori r3 r3 0
	addi	r0 r3 1
	addi	r0 r3 0
	addi	r0 r4 2
	div	r3 r4 r3
	mtc1	r0 f6
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f6
	mtc1	r0 f6
	sub.s	f6 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1433
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r2 r3
	mov.s	f6 f2
	mov.s	f5 f1
	mov.s	f3 f0
	jal	floor_sub2.231
	addi	r30 r30 -24
	lw	r30 r31 20
	j	bfle_nontail_cont.1434
bfle_nontail_else.1433:
	sw	r31 r30 20
	addi	r30 r30 24
	mov	r1 r3
	mov.s	f4 f2
	mov.s	f6 f1
	mov.s	f3 f0
	jal	floor_sub2.231
	addi	r30 r30 -24
	lw	r30 r31 20
bfle_nontail_cont.1434:
bfle_nontail_cont.1432:
bfle_nontail_cont.1430:
	sw	r31 r30 20
	addi	r30 r30 24
	jal	min_caml_floor_retint
	addi	r30 r30 -24
	lw	r30 r31 20
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1435
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
	blez	r25 bfle_tail_else.1436
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f0 r30 20
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1437
	mov.s	f3 f0
	j	bfle_nontail_cont.1438
bfle_nontail_else.1437:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1439
	mov.s	f3 f0
	j	bfle_nontail_cont.1440
bfle_nontail_else.1439:
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
	jal	floor_sub2.231
	addi	r30 r30 -28
	lw	r30 r31 24
bfle_nontail_cont.1440:
bfle_nontail_cont.1438:
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_floor_retint
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1441
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
	j	normalize.241
ble_tail_else.1441:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 20
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.241
bfle_tail_else.1436:
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1442
	jr	r31
bfle_tail_else.1442:
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f0 r30 20
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1443
	mov.s	f3 f0
	j	bfle_nontail_cont.1444
bfle_nontail_else.1443:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1445
	mov.s	f3 f0
	j	bfle_nontail_cont.1446
bfle_nontail_else.1445:
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
	jal	floor_sub2.231
	addi	r30 r30 -28
	lw	r30 r31 24
bfle_nontail_cont.1446:
bfle_nontail_cont.1444:
	sw	r31 r30 24
	addi	r30 r30 28
	jal	min_caml_floor_retint
	addi	r30 r30 -28
	lw	r30 r31 24
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1447
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
	j	normalize.241
ble_tail_else.1447:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 20
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.241
ble_tail_else.1435:
	lwc1	 r30 f0 4
	lwc1	 r30 f1 8
	sub.s	f1 f0 f1
	lwc1	 r30 f2 0
	neg.s	f2 f3
	sub.s	f3 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1448
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 24
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1449
	mov.s	f3 f0
	j	bfle_nontail_cont.1450
bfle_nontail_else.1449:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1451
	mov.s	f3 f0
	j	bfle_nontail_cont.1452
bfle_nontail_else.1451:
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
	jal	floor_sub2.231
	addi	r30 r30 -32
	lw	r30 r31 28
bfle_nontail_cont.1452:
bfle_nontail_cont.1450:
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_floor_retint
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_tail_else.1453
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
	j	normalize.241
ble_tail_else.1453:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 24
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.241
bfle_tail_else.1448:
	sub.s	f2 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1454
	mov.s	f1 f0
	jr	r31
bfle_tail_else.1454:
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f1 r30 24
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1455
	mov.s	f3 f0
	j	bfle_nontail_cont.1456
bfle_nontail_else.1455:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1457
	mov.s	f3 f0
	j	bfle_nontail_cont.1458
bfle_nontail_else.1457:
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
	jal	floor_sub2.231
	addi	r30 r30 -32
	lw	r30 r31 28
bfle_nontail_cont.1458:
bfle_nontail_cont.1456:
	sw	r31 r30 28
	addi	r30 r30 32
	jal	min_caml_floor_retint
	addi	r30 r30 -32
	lw	r30 r31 28
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_tail_else.1459
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
	j	normalize.241
ble_tail_else.1459:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 24
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	j	normalize.241
sin2.245:
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
	blez	r25 bfle_tail_else.1460
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1460:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1461
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1461:
	jr	r31
min_caml_cos:
cos.247:
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
	blez	r25 bfle_nontail_else.1462
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f2 r30 4
	swc1	f0 r30 8
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1464
	mov.s	f3 f0
	j	bfle_nontail_cont.1465
bfle_nontail_else.1464:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1466
	mov.s	f3 f0
	j	bfle_nontail_cont.1467
bfle_nontail_else.1466:
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
	jal	floor_sub2.231
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1467:
bfle_nontail_cont.1465:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.1468
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
	jal	normalize.241
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1469
ble_nontail_else.1468:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.241
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1469:
	j	bfle_nontail_cont.1463
bfle_nontail_else.1462:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1470
	j	bfle_nontail_cont.1471
bfle_nontail_else.1470:
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f2 r30 4
	swc1	f0 r30 8
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1472
	mov.s	f3 f0
	j	bfle_nontail_cont.1473
bfle_nontail_else.1472:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1474
	mov.s	f3 f0
	j	bfle_nontail_cont.1475
bfle_nontail_else.1474:
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
	jal	floor_sub2.231
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1475:
bfle_nontail_cont.1473:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.1476
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
	jal	normalize.241
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1477
ble_nontail_else.1476:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.241
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1477:
bfle_nontail_cont.1471:
bfle_nontail_cont.1463:
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1478
	neg.s	f0 f0
	j	bfle_nontail_cont.1479
bfle_nontail_else.1478:
bfle_nontail_cont.1479:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1480
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	j	bfle_nontail_cont.1481
bfle_nontail_else.1480:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
bfle_nontail_cont.1481:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1482
	lwc1	 r30 f2 0
	sub.s	f2 f0 f0
	j	bfle_nontail_cont.1483
bfle_nontail_else.1482:
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
	blez	r25 bfle_nontail_else.1484
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f2 f0 f0
	j	bfle_nontail_cont.1485
bfle_nontail_else.1484:
bfle_nontail_cont.1485:
bfle_nontail_cont.1483:
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1486
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
	jal	sin2.245
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	mul.s	f0 f1 f0
	jr	r31
bfle_tail_else.1486:
	mul.s	f0 f0 f0
	mul.s	f0 f0 f2
	mtc1	r0 f3
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
	blez	r25 bfle_tail_else.1487
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1487:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1488
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1488:
	jr	r31
min_caml_sin:
sin.249:
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
	blez	r25 bfle_nontail_else.1489
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f2 r30 4
	swc1	f0 r30 8
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1491
	mov.s	f3 f0
	j	bfle_nontail_cont.1492
bfle_nontail_else.1491:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1493
	mov.s	f3 f0
	j	bfle_nontail_cont.1494
bfle_nontail_else.1493:
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
	jal	floor_sub2.231
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1494:
bfle_nontail_cont.1492:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	addi	r0 r2 -10
	sub	r2 r1 r25
	blez	r25 ble_nontail_else.1495
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
	jal	normalize.241
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1496
ble_nontail_else.1495:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	add.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.241
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1496:
	j	bfle_nontail_cont.1490
bfle_nontail_else.1489:
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1497
	j	bfle_nontail_cont.1498
bfle_nontail_else.1497:
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
	mtc1	r0 f5
	lui	r24 51968
	ori	r24 r24 0
	mtc1	r24 f5
	swc1	f2 r30 4
	swc1	f0 r30 8
	sub.s	f5 f3 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1499
	mov.s	f3 f0
	j	bfle_nontail_cont.1500
bfle_nontail_else.1499:
	sub.s	f3 f4 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1501
	mov.s	f3 f0
	j	bfle_nontail_cont.1502
bfle_nontail_else.1501:
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
	jal	floor_sub2.231
	addi	r30 r30 -16
	lw	r30 r31 12
bfle_nontail_cont.1502:
bfle_nontail_cont.1500:
	sw	r31 r30 12
	addi	r30 r30 16
	jal	min_caml_floor_retint
	addi	r30 r30 -16
	lw	r30 r31 12
	addi	r0 r2 10
	sub	r1 r2 r25
	blez	r25 ble_nontail_else.1503
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
	jal	normalize.241
	addi	r30 r30 -16
	lw	r30 r31 12
	j	ble_nontail_cont.1504
ble_nontail_else.1503:
	lwc1	 r30 f2 4
	lwc1	 r30 f0 8
	sub.s	f0 f2 f0
	lwc1	 r30 f1 0
	sw	r31 r30 12
	addi	r30 r30 16
	jal	normalize.241
	addi	r30 r30 -16
	lw	r30 r31 12
ble_nontail_cont.1504:
bfle_nontail_cont.1498:
bfle_nontail_cont.1490:
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f1
	lui	r24 16329
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f0 f1 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1505
	lwc1	 r30 f1 0
	sub.s	f1 f0 f0
	j	bfle_nontail_cont.1506
bfle_nontail_else.1505:
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
	blez	r25 bfle_nontail_else.1507
	lui	r24 49225
	ori	r24 r24 4059
	mtc1	r24 f1
	sub.s	f1 f0 f0
	j	bfle_nontail_cont.1508
bfle_nontail_else.1507:
bfle_nontail_cont.1508:
bfle_nontail_cont.1506:
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1509
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	j	bfle_nontail_cont.1510
bfle_nontail_else.1509:
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f1
bfle_nontail_cont.1510:
	mtc1	r0 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1511
	neg.s	f0 f0
	j	bfle_nontail_cont.1512
bfle_nontail_else.1511:
bfle_nontail_cont.1512:
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f2
	lui	r24 16201
	ori	r24 r24 4059
	mtc1	r24 f2
	sub.s	f0 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1513
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
	jal	cos.247
	addi	r30 r30 -20
	lw	r30 r31 16
	lwc1	 r30 f1 12
	mul.s	f0 f1 f0
	jr	r31
bfle_tail_else.1513:
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
	blez	r25 bfle_tail_else.1514
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1514:
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1515
	lui	r24 49024
	ori	r24 r24 0
	mtc1	r24 f0
	jr	r31
bfle_tail_else.1515:
	jr	r31
kernel_atan.251:
	mul.s	f0 f0 f1
	mul.s	f0 f1 f2
	mul.s	f1 f2 f3
	mul.s	f1 f3 f4
	mul.s	f1 f4 f5
	mul.s	f1 f5 f6
	mul.s	f1 f6 f1
	lui	r24 16042
	ori	r24 r24 43679
	mtc1	r24 f7
	mul.s	f7 f2 f2
	sub.s	f0 f2 f0
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f2
	mul.s	f2 f3 f2
	add.s	f0 f2 f0
	lui	r24 15890
	ori	r24 r24 18725
	mtc1	r24 f2
	mul.s	f2 f4 f2
	sub.s	f0 f2 f0
	lui	r24 15843
	ori	r24 r24 36408
	mtc1	r24 f2
	mul.s	f2 f5 f2
	add.s	f0 f2 f0
	lui	r24 15799
	ori	r24 r24 54894
	mtc1	r24 f2
	mul.s	f2 f6 f2
	sub.s	f0 f2 f0
	lui	r24 15733
	ori	r24 r24 59333
	mtc1	r24 f2
	mul.s	f2 f1 f1
	add.s	f0 f1 f0
	jr	r31
min_caml_atan:
atan.253:
	abs.s	f0 f1
	lui	r24 16096
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1516
	mtc1	r0 f1
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_nontail_else.1517
	neg.s	f0 f1
	j	bfle_nontail_cont.1518
bfle_nontail_else.1517:
	mov.s	f0 f1
bfle_nontail_cont.1518:
	mtc1	r0 f2
	sub.s	f2 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1519
	lui	r24 16412
	ori	r24 r24 0
	mtc1	r24 f0
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1520
	lui	r24 16457
	ori	r24 r24 4056
	mtc1	r24 f0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 16329
	ori	r24 r24 4056
	mtc1	r24 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	div.s	f2 f1 f1
	mul.s	f1 f1 f2
	mul.s	f1 f2 f3
	mul.s	f2 f3 f4
	mul.s	f2 f4 f5
	mul.s	f2 f5 f6
	mul.s	f2 f6 f7
	mul.s	f2 f7 f2
	lui	r24 16042
	ori	r24 r24 43679
	mtc1	r24 f8
	mul.s	f8 f3 f3
	sub.s	f1 f3 f1
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f3
	mul.s	f3 f4 f3
	add.s	f1 f3 f1
	lui	r24 15890
	ori	r24 r24 18725
	mtc1	r24 f3
	mul.s	f3 f5 f3
	sub.s	f1 f3 f1
	lui	r24 15843
	ori	r24 r24 36408
	mtc1	r24 f3
	mul.s	f3 f6 f3
	add.s	f1 f3 f1
	lui	r24 15799
	ori	r24 r24 54894
	mtc1	r24 f3
	mul.s	f3 f7 f3
	sub.s	f1 f3 f1
	lui	r24 15733
	ori	r24 r24 59333
	mtc1	r24 f3
	mul.s	f3 f2 f2
	add.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	jr	r31
bfle_tail_else.1520:
	lui	r24 16457
	ori	r24 r24 4056
	mtc1	r24 f0
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 16201
	ori	r24 r24 4056
	mtc1	r24 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	add.s	f1 f3 f1
	div.s	f2 f1 f1
	mul.s	f1 f1 f2
	mul.s	f1 f2 f3
	mul.s	f2 f3 f4
	mul.s	f2 f4 f5
	mul.s	f2 f5 f6
	mul.s	f2 f6 f7
	mul.s	f2 f7 f2
	lui	r24 16042
	ori	r24 r24 43679
	mtc1	r24 f8
	mul.s	f8 f3 f3
	sub.s	f1 f3 f1
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f3
	mul.s	f3 f4 f3
	add.s	f1 f3 f1
	lui	r24 15890
	ori	r24 r24 18725
	mtc1	r24 f3
	mul.s	f3 f5 f3
	sub.s	f1 f3 f1
	lui	r24 15843
	ori	r24 r24 36408
	mtc1	r24 f3
	mul.s	f3 f6 f3
	add.s	f1 f3 f1
	lui	r24 15799
	ori	r24 r24 54894
	mtc1	r24 f3
	mul.s	f3 f7 f3
	sub.s	f1 f3 f1
	lui	r24 15733
	ori	r24 r24 59333
	mtc1	r24 f3
	mul.s	f3 f2 f2
	add.s	f1 f2 f1
	add.s	f0 f1 f0
	neg.s	f0 f0
	jr	r31
bfle_tail_else.1519:
	lui	r24 16412
	ori	r24 r24 0
	mtc1	r24 f0
	sub.s	f1 f0 f30
	mfc1	f30 r25
	blez	r25 bfle_tail_else.1521
	lui	r24 16457
	ori	r24 r24 4056
	mtc1	r24 f0
	lui	r24 16384
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 16329
	ori	r24 r24 4056
	mtc1	r24 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	div.s	f2 f1 f1
	mul.s	f1 f1 f2
	mul.s	f1 f2 f3
	mul.s	f2 f3 f4
	mul.s	f2 f4 f5
	mul.s	f2 f5 f6
	mul.s	f2 f6 f7
	mul.s	f2 f7 f2
	lui	r24 16042
	ori	r24 r24 43679
	mtc1	r24 f8
	mul.s	f8 f3 f3
	sub.s	f1 f3 f1
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f3
	mul.s	f3 f4 f3
	add.s	f1 f3 f1
	lui	r24 15890
	ori	r24 r24 18725
	mtc1	r24 f3
	mul.s	f3 f5 f3
	sub.s	f1 f3 f1
	lui	r24 15843
	ori	r24 r24 36408
	mtc1	r24 f3
	mul.s	f3 f6 f3
	add.s	f1 f3 f1
	lui	r24 15799
	ori	r24 r24 54894
	mtc1	r24 f3
	mul.s	f3 f7 f3
	sub.s	f1 f3 f1
	lui	r24 15733
	ori	r24 r24 59333
	mtc1	r24 f3
	mul.s	f3 f2 f2
	add.s	f1 f2 f1
	add.s	f0 f1 f0
	jr	r31
bfle_tail_else.1521:
	lui	r24 16457
	ori	r24 r24 4056
	mtc1	r24 f0
	lui	r24 16512
	ori	r24 r24 0
	mtc1	r24 f0
	lui	r24 16201
	ori	r24 r24 4056
	mtc1	r24 f0
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f2
	sub.s	f1 f2 f2
	lui	r24 16256
	ori	r24 r24 0
	mtc1	r24 f3
	add.s	f1 f3 f1
	div.s	f2 f1 f1
	mul.s	f1 f1 f2
	mul.s	f1 f2 f3
	mul.s	f2 f3 f4
	mul.s	f2 f4 f5
	mul.s	f2 f5 f6
	mul.s	f2 f6 f7
	mul.s	f2 f7 f2
	lui	r24 16042
	ori	r24 r24 43679
	mtc1	r24 f8
	mul.s	f8 f3 f3
	sub.s	f1 f3 f1
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f3
	mul.s	f3 f4 f3
	add.s	f1 f3 f1
	lui	r24 15890
	ori	r24 r24 18725
	mtc1	r24 f3
	mul.s	f3 f5 f3
	sub.s	f1 f3 f1
	lui	r24 15843
	ori	r24 r24 36408
	mtc1	r24 f3
	mul.s	f3 f6 f3
	add.s	f1 f3 f1
	lui	r24 15799
	ori	r24 r24 54894
	mtc1	r24 f3
	mul.s	f3 f7 f3
	sub.s	f1 f3 f1
	lui	r24 15733
	ori	r24 r24 59333
	mtc1	r24 f3
	mul.s	f3 f2 f2
	add.s	f1 f2 f1
	add.s	f0 f1 f0
	jr	r31
bfle_tail_else.1516:
	mul.s	f0 f0 f1
	mul.s	f0 f1 f2
	mul.s	f1 f2 f3
	mul.s	f1 f3 f4
	mul.s	f1 f4 f5
	mul.s	f1 f5 f6
	mul.s	f1 f6 f1
	lui	r24 16042
	ori	r24 r24 43679
	mtc1	r24 f7
	mul.s	f7 f2 f2
	sub.s	f0 f2 f0
	lui	r24 15948
	ori	r24 r24 52429
	mtc1	r24 f2
	mul.s	f2 f3 f2
	add.s	f0 f2 f0
	lui	r24 15890
	ori	r24 r24 18725
	mtc1	r24 f2
	mul.s	f2 f4 f2
	sub.s	f0 f2 f0
	lui	r24 15843
	ori	r24 r24 36408
	mtc1	r24 f2
	mul.s	f2 f5 f2
	add.s	f0 f2 f0
	lui	r24 15799
	ori	r24 r24 54894
	mtc1	r24 f2
	mul.s	f2 f6 f2
	sub.s	f0 f2 f0
	lui	r24 15733
	ori	r24 r24 59333
	mtc1	r24 f2
	mul.s	f2 f1 f1
	add.s	f0 f1 f0
	jr	r31
