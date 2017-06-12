BGP53I12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55289-0390-28 ")
 ;;4269
 ;;21,"55289-0390-79 ")
 ;;4270
 ;;21,"55289-0393-02 ")
 ;;4271
 ;;21,"55289-0394-05 ")
 ;;4272
 ;;21,"55289-0394-07 ")
 ;;4273
 ;;21,"55289-0405-14 ")
 ;;4274
 ;;21,"55289-0405-20 ")
 ;;4275
 ;;21,"55289-0426-21 ")
 ;;4276
 ;;21,"55289-0441-04 ")
 ;;4277
 ;;21,"55289-0441-15 ")
 ;;4278
 ;;21,"55289-0441-17 ")
 ;;4279
 ;;21,"55289-0441-20 ")
 ;;4280
 ;;21,"55289-0441-28 ")
 ;;4281
 ;;21,"55289-0441-30 ")
 ;;4282
 ;;21,"55289-0441-40 ")
 ;;4283
 ;;21,"55289-0441-42 ")
 ;;4284
 ;;21,"55289-0441-56 ")
 ;;4285
 ;;21,"55289-0441-80 ")
 ;;4286
 ;;21,"55289-0441-97 ")
 ;;4287
 ;;21,"55289-0446-01 ")
 ;;4288
 ;;21,"55289-0446-10 ")
 ;;4289
 ;;21,"55289-0446-12 ")
 ;;4290
 ;;21,"55289-0446-14 ")
 ;;4291
 ;;21,"55289-0446-16 ")
 ;;4292
 ;;21,"55289-0446-20 ")
 ;;4293
 ;;21,"55289-0446-28 ")
 ;;4294
 ;;21,"55289-0446-30 ")
 ;;4295
 ;;21,"55289-0446-40 ")
 ;;4296
 ;;21,"55289-0446-56 ")
 ;;4297
 ;;21,"55289-0446-60 ")
 ;;4298
 ;;21,"55289-0457-10 ")
 ;;4299
 ;;21,"55289-0457-20 ")
 ;;4300
 ;;21,"55289-0459-06 ")
 ;;4301
 ;;21,"55289-0459-10 ")
 ;;4302
 ;;21,"55289-0459-12 ")
 ;;4303
 ;;21,"55289-0459-14 ")
 ;;4304
 ;;21,"55289-0502-16 ")
 ;;4305
 ;;21,"55289-0502-30 ")
 ;;4306
 ;;21,"55289-0502-60 ")
 ;;4307
 ;;21,"55289-0525-21 ")
 ;;4308
 ;;21,"55289-0525-30 ")
 ;;4309
 ;;21,"55289-0525-40 ")
 ;;4310
 ;;21,"55289-0525-42 ")
 ;;4311
 ;;21,"55289-0525-63 ")
 ;;4312
 ;;21,"55289-0542-10 ")
 ;;4313
 ;;21,"55289-0589-14 ")
 ;;4314
 ;;21,"55289-0589-20 ")
 ;;4315
 ;;21,"55289-0592-10 ")
 ;;4316
 ;;21,"55289-0592-20 ")
 ;;4317
 ;;21,"55289-0592-28 ")
 ;;4318
 ;;21,"55289-0592-40 ")
 ;;4319
 ;;21,"55289-0592-97 ")
 ;;4320
 ;;21,"55289-0612-28 ")
 ;;4321
 ;;21,"55289-0612-30 ")
 ;;4322
 ;;21,"55289-0645-20 ")
 ;;4323
 ;;21,"55289-0645-28 ")
 ;;4324
 ;;21,"55289-0645-30 ")
 ;;4325
 ;;21,"55289-0645-40 ")
 ;;4326
 ;;21,"55289-0645-56 ")
 ;;4327
 ;;21,"55289-0645-80 ")
 ;;4328
 ;;21,"55289-0705-02 ")
 ;;4329
 ;;21,"55289-0705-06 ")
 ;;4330
 ;;21,"55289-0705-15 ")
 ;;4331
 ;;21,"55289-0705-16 ")
 ;;4332
 ;;21,"55289-0705-20 ")
 ;;4333
 ;;21,"55289-0705-28 ")
 ;;4334
 ;;21,"55289-0705-30 ")
 ;;4335
 ;;21,"55289-0705-40 ")
 ;;4336
 ;;21,"55289-0705-56 ")
 ;;4337
 ;;21,"55289-0707-20 ")
 ;;4338
 ;;21,"55289-0707-28 ")
 ;;4339
 ;;21,"55289-0711-07 ")
 ;;4340
 ;;21,"55289-0711-10 ")
 ;;4341
 ;;21,"55289-0711-14 ")
 ;;4342
 ;;21,"55289-0717-10 ")
 ;;4343
 ;;21,"55289-0746-06 ")
 ;;4344
 ;;21,"55289-0746-10 ")
 ;;4345
 ;;21,"55289-0749-30 ")
 ;;4346
 ;;21,"55289-0767-14 ")
 ;;4347
 ;;21,"55289-0767-20 ")
 ;;4348
 ;;21,"55289-0767-21 ")
 ;;4349
 ;;21,"55289-0767-28 ")
 ;;4350
 ;;21,"55289-0767-30 ")
 ;;4351
 ;;21,"55289-0821-03 ")
 ;;4352
 ;;21,"55289-0821-06 ")
 ;;4353
 ;;21,"55289-0821-10 ")
 ;;4354
 ;;21,"55289-0821-14 ")
 ;;4355
 ;;21,"55289-0821-20 ")
 ;;4356
 ;;21,"55289-0821-30 ")
 ;;4357
 ;;21,"55289-0821-40 ")
 ;;4358
 ;;21,"55289-0821-50 ")
 ;;4359
 ;;21,"55289-0821-79 ")
 ;;4360
 ;;21,"55289-0823-06 ")
 ;;4361
 ;;21,"55289-0823-12 ")
 ;;4362
 ;;21,"55289-0823-14 ")
 ;;4363
 ;;21,"55289-0823-20 ")
 ;;4364
 ;;21,"55289-0826-10 ")
 ;;4365
 ;;21,"55289-0826-20 ")
 ;;4366
 ;;21,"55289-0831-20 ")
 ;;4367
 ;;21,"55289-0841-03 ")
 ;;4368
 ;;21,"55289-0841-10 ")
 ;;4369
 ;;21,"55289-0845-06 ")
 ;;4370
 ;;21,"55289-0845-20 ")
 ;;4371
 ;;21,"55289-0845-21 ")
 ;;4372
 ;;21,"55289-0845-30 ")
 ;;4373
 ;;21,"55289-0866-01 ")
 ;;4374
 ;;21,"55289-0866-02 ")
 ;;4375
 ;;21,"55289-0866-04 ")
 ;;4376
 ;;21,"55289-0866-06 ")
 ;;4377
 ;;21,"55289-0866-08 ")
 ;;4378
 ;;21,"55289-0866-10 ")
 ;;4379
 ;;21,"55289-0866-14 ")
 ;;4380
 ;;21,"55289-0866-20 ")
 ;;4381
 ;;21,"55289-0866-28 ")
 ;;4382
 ;;21,"55289-0866-30 ")
 ;;4383
 ;;21,"55289-0866-60 ")
 ;;4384
 ;;21,"55289-0866-74 ")
 ;;4385
 ;;21,"55289-0866-85 ")
 ;;4386
 ;;21,"55289-0866-86 ")
 ;;4387
 ;;21,"55289-0866-87 ")
 ;;4388
 ;;21,"55289-0866-90 ")
 ;;4389
 ;;21,"55289-0866-93 ")
 ;;4390
 ;;21,"55289-0866-98 ")
 ;;4391
 ;;21,"55289-0885-08 ")
 ;;4392
 ;;21,"55289-0890-20 ")
 ;;4393
 ;;21,"55289-0890-30 ")
 ;;4394
 ;;21,"55289-0890-40 ")
 ;;4395
 ;;21,"55289-0890-56 ")
 ;;4396
 ;;21,"55289-0890-90 ")
 ;;4397
 ;;21,"55289-0904-79 ")
 ;;4398
 ;;21,"55289-0909-10 ")
 ;;4399
 ;;21,"55289-0909-14 ")
 ;;4400
 ;;21,"55289-0909-20 ")
 ;;4401
 ;;21,"55289-0909-28 ")
 ;;4402
 ;;21,"55289-0915-06 ")
 ;;4403
 ;;21,"55289-0915-15 ")
 ;;4404
 ;;21,"55289-0915-24 ")
 ;;4405
 ;;21,"55289-0915-30 ")
 ;;4406
 ;;21,"55289-0954-79 ")
 ;;4407
 ;;21,"55289-0964-04 ")
 ;;4408
 ;;21,"55289-0964-14 ")
 ;;4409
 ;;21,"55390-0109-01 ")
 ;;4410
 ;;21,"55390-0110-10 ")
 ;;4411
 ;;21,"55390-0309-10 ")
 ;;4412
 ;;21,"55390-0310-10 ")
 ;;4413
 ;;21,"55390-0311-10 ")
 ;;4414
 ;;21,"55390-0312-10 ")
 ;;4415
 ;;21,"55390-0316-01 ")
 ;;4416
 ;;21,"55868-5487-01 ")
 ;;4417
 ;;21,"55887-0071-60 ")
 ;;4418
 ;;21,"55887-0181-15 ")
 ;;4419
 ;;21,"55887-0215-01 ")
 ;;4420
 ;;21,"55887-0216-20 ")
 ;;4421
 ;;21,"55887-0218-01 ")
 ;;4422
 ;;21,"55887-0292-10 ")
 ;;4423
 ;;21,"55887-0292-20 ")
 ;;4424
 ;;21,"55887-0292-28 ")
 ;;4425
 ;;21,"55887-0292-30 ")
 ;;4426
 ;;21,"55887-0306-01 ")
 ;;4427
 ;;21,"55887-0311-15 ")
 ;;4428
 ;;21,"55887-0311-30 ")
 ;;4429
 ;;21,"55887-0320-30 ")
 ;;4430
 ;;21,"55887-0320-60 ")
 ;;4431
 ;;21,"55887-0332-30 ")
 ;;4432
 ;;21,"55887-0378-06 ")
 ;;4433
 ;;21,"55887-0378-15 ")
 ;;4434
 ;;21,"55887-0378-21 ")
 ;;4435
 ;;21,"55887-0378-28 ")
 ;;4436
 ;;21,"55887-0378-30 ")
 ;;4437
 ;;21,"55887-0378-40 ")
 ;;4438
 ;;21,"55887-0378-42 ")
 ;;4439
 ;;21,"55887-0388-03 ")
 ;;4440
 ;;21,"55887-0419-20 ")
 ;;4441
 ;;21,"55887-0419-30 ")
 ;;4442
 ;;21,"55887-0463-21 ")
 ;;4443
 ;;21,"55887-0463-28 ")
 ;;4444
 ;;21,"55887-0492-07 ")
 ;;4445
 ;;21,"55887-0584-01 ")
 ;;4446
 ;;21,"55887-0584-08 ")
 ;;4447
 ;;21,"55887-0584-15 ")
 ;;4448
 ;;21,"55887-0584-21 ")
 ;;4449
 ;;21,"55887-0584-25 ")
 ;;4450
 ;;21,"55887-0584-28 ")
 ;;4451
 ;;21,"55887-0584-42 ")
 ;;4452
 ;;21,"55887-0584-60 ")
 ;;4453
 ;;21,"55887-0584-71 ")
 ;;4454
 ;;21,"55887-0586-20 ")
 ;;4455
 ;;21,"55887-0586-28 ")
 ;;4456
 ;;21,"55887-0586-30 ")
 ;;4457
 ;;21,"55887-0586-60 ")
 ;;4458
 ;;21,"55887-0586-90 ")
 ;;4459
 ;;21,"55887-0611-01 ")
 ;;4460
 ;;21,"55887-0611-15 ")
 ;;4461
 ;;21,"55887-0611-16 ")
 ;;4462
 ;;21,"55887-0611-40 ")
 ;;4463
 ;;21,"55887-0611-60 ")
 ;;4464
 ;;21,"55887-0622-09 ")
 ;;4465
 ;;21,"55887-0622-20 ")
 ;;4466
 ;;21,"55887-0622-21 ")
 ;;4467
 ;;21,"55887-0622-30 ")
 ;;4468
 ;;21,"55887-0622-40 ")
 ;;4469
 ;;21,"55887-0629-14 ")
 ;;4470
 ;;21,"55887-0642-05 ")
 ;;4471
 ;;21,"55887-0652-14 ")
 ;;4472
 ;;21,"55887-0659-14 ")
 ;;4473
 ;;21,"55887-0659-30 ")
 ;;4474
 ;;21,"55887-0704-14 ")
 ;;4475
 ;;21,"55887-0704-20 ")
 ;;4476
 ;;21,"55887-0704-28 ")
 ;;4477
 ;;21,"55887-0746-20 ")
 ;;4478
 ;;21,"55887-0746-56 ")
 ;;4479
 ;;21,"55887-0761-02 ")
 ;;4480
 ;;21,"55887-0764-75 ")
 ;;4481
 ;;21,"55887-0768-14 ")
 ;;4482
 ;;21,"55887-0768-20 ")
 ;;4483
 ;;21,"55887-0768-28 ")
 ;;4484
 ;;21,"55887-0768-30 ")
 ;;4485
 ;;21,"55887-0768-32 ")
 ;;4486
 ;;21,"55887-0785-04 ")
 ;;4487
 ;;21,"55887-0785-30 ")
 ;;4488
 ;;21,"55887-0786-30 ")
 ;;4489
 ;;21,"55887-0787-20 ")
 ;;4490
 ;;21,"55887-0787-40 ")
 ;;4491
 ;;21,"55887-0790-15 ")
 ;;4492
 ;;21,"55887-0790-20 ")
 ;;4493
 ;;21,"55887-0790-30 ")
 ;;4494
 ;;21,"55887-0810-07 ")
 ;;4495
 ;;21,"55887-0810-10 ")
 ;;4496
 ;;21,"55887-0813-30 ")
 ;;4497
 ;;21,"55887-0814-01 ")
 ;;4498
 ;;21,"55887-0814-14 ")
 ;;4499
 ;;21,"55887-0823-14 ")
 ;;4500
 ;;21,"55887-0830-20 ")
 ;;4501
 ;;21,"55887-0830-28 ")
 ;;4502
 ;;21,"55887-0830-30 ")
 ;;4503
 ;;21,"55887-0830-40 ")
 ;;4504
 ;;21,"55887-0837-30 ")
 ;;4505
 ;;21,"55887-0849-20 ")
 ;;4506
 ;;21,"55887-0849-21 ")
 ;;4507
 ;;21,"55887-0849-28 ")
 ;;4508
 ;;21,"55887-0849-30 ")
 ;;4509
 ;;21,"55887-0849-40 ")
 ;;4510
 ;;21,"55887-0858-14 ")
 ;;4511
 ;;21,"55887-0858-20 ")
 ;;4512
 ;;21,"55887-0889-21 ")
 ;;4513
 ;;21,"55887-0893-24 ")
 ;;4514
 ;;21,"55887-0904-06 ")
 ;;4515
 ;;21,"55887-0904-10 ")
 ;;4516
 ;;21,"55887-0904-14 ")
 ;;4517
 ;;21,"55887-0904-20 ")
 ;;4518
 ;;21,"55887-0904-30 ")
 ;;4519
 ;;21,"55887-0904-60 ")
 ;;4520
 ;;21,"55887-0924-20 ")
 ;;4521
 ;;21,"55887-0924-28 ")
 ;;4522
 ;;21,"55887-0924-60 ")
 ;;4523
 ;;21,"55887-0930-28 ")
 ;;4524
 ;;21,"55887-0958-01 ")
 ;;4525
 ;;21,"55887-0958-05 ")
 ;;4526
 ;;21,"55887-0958-08 ")
 ;;4527
 ;;21,"55887-0958-09 ")
 ;;4528
 ;;21,"55887-0958-60 ")
 ;;4529
 ;;21,"55887-0958-90 ")
 ;;4530
 ;;21,"55887-0980-21 ")
 ;;4531
 ;;21,"55887-0980-28 ")
 ;;4532
 ;;21,"55887-0980-40 ")
 ;;4533
 ;;21,"55887-0982-01 ")
 ;;4534
 ;;21,"55887-0982-04 ")
 ;;4535
 ;;21,"55887-0982-09 ")
 ;;4536
 ;;21,"55887-0982-82 ")
 ;;4537
 ;;21,"55887-0983-01 ")
 ;;4538
 ;;21,"55887-0983-15 ")
 ;;4539
 ;;21,"55887-0983-40 ")
 ;;4540
 ;;21,"55887-0983-42 ")
 ;;4541
 ;;21,"55887-0983-60 ")
 ;;4542
 ;;21,"55887-0991-28 ")
 ;;4543
 ;;21,"55887-0993-09 ")
 ;;4544
 ;;21,"55887-0993-14 ")
 ;;4545
 ;;21,"55887-0993-15 ")
 ;;4546
 ;;21,"55887-0993-20 ")
 ;;4547
 ;;21,"55887-0993-42 ")
 ;;4548
 ;;21,"55953-0251-80 ")
 ;;4549
 ;;21,"55953-0253-80 ")
 ;;4550
 ;;21,"57237-0028-01 ")
 ;;4551
 ;;21,"57237-0029-01 ")
 ;;4552
 ;;21,"57237-0030-01 ")
 ;;4553
 ;;21,"57237-0030-05 ")
 ;;4554
 ;;21,"57237-0031-01 ")
 ;;4555
 ;;21,"57237-0031-05 ")
 ;;4556
 ;;21,"57237-0032-01 ")
 ;;4557
 ;;21,"57237-0032-75 ")
 ;;4558
 ;;21,"57237-0033-01 ")
 ;;4559
 ;;21,"57237-0033-75 ")
 ;;4560
 ;;21,"57237-0034-01 ")
 ;;4561
 ;;21,"57237-0034-50 ")
 ;;4562
 ;;21,"57237-0034-75 ")
 ;;4563
 ;;21,"57237-0035-01 ")
 ;;4564
 ;;21,"57237-0035-50 ")
 ;;4565
 ;;21,"57237-0035-75 ")
 ;;4566
 ;;21,"57237-0036-01 ")
 ;;4567
 ;;21,"57237-0037-01 ")
 ;;4568
 ;;21,"57237-0037-50 ")
 ;;4569
 ;;21,"57237-0040-01 ")
 ;;4570
 ;;21,"57237-0040-99 ")
 ;;4571
 ;;21,"57237-0041-01 ")
 ;;4572
 ;;21,"57237-0041-05 ")
 ;;4573
 ;;21,"57237-0041-99 ")
 ;;4574
 ;;21,"57237-0044-60 ")
 ;;4575
 ;;21,"57237-0045-60 ")
 ;;4576
 ;;21,"57237-0058-20 ")
 ;;4577
 ;;21,"57237-0058-60 ")
 ;;4578
 ;;21,"57237-0059-20 ")
 ;;4579
 ;;21,"57237-0059-60 ")
 ;;4580
 ;;21,"57664-0851-88 ")
 ;;4581
 ;;21,"57664-0852-88 ")
 ;;4582
 ;;21,"57664-0853-85 ")
 ;;4583
 ;;21,"57866-0106-01 ")
 ;;4584
 ;;21,"57866-0106-02 ")
 ;;4585
 ;;21,"57866-0117-01 ")
 ;;4586
 ;;21,"57866-0117-03 ")
 ;;4587
 ;;21,"57866-0117-04 ")
 ;;4588
 ;;21,"57866-0117-05 ")
 ;;4589
 ;;21,"57866-0117-06 ")
 ;;4590
 ;;21,"57866-0155-00 ")
 ;;4591
 ;;21,"57866-0155-05 ")
 ;;4592
 ;;21,"57866-0340-01 ")
 ;;4593
 ;;21,"57866-0340-02 ")
 ;;4594
 ;;21,"57866-0340-05 ")
 ;;4595
 ;;21,"57866-0341-02 ")
 ;;4596
 ;;21,"57866-0341-04 ")
 ;;4597
 ;;21,"57866-0343-01 ")
 ;;4598
 ;;21,"57866-1094-02 ")
 ;;4599
 ;;21,"57866-3129-01 ")
 ;;4600
 ;;21,"57866-3135-01 ")
 ;;4601
 ;;21,"57866-3136-01 ")
 ;;4602
 ;;21,"57866-3148-02 ")
 ;;4603
 ;;21,"57866-3613-02 ")
 ;;4604
 ;;21,"57866-3614-01 ")
 ;;4605
 ;;21,"57866-4356-01 ")
 ;;4606
 ;;21,"57866-4693-01 ")
 ;;4607
 ;;21,"57866-4693-02 ")
 ;;4608
 ;;21,"57866-4693-04 ")
 ;;4609
 ;;21,"57866-4693-06 ")
 ;;4610
 ;;21,"57866-6041-01 ")
 ;;4611
 ;;21,"57866-6041-02 ")
 ;;4612
 ;;21,"57866-6041-03 ")
 ;;4613
 ;;21,"57866-6041-04 ")
 ;;4614
 ;;21,"57866-6041-05 ")
 ;;4615
 ;;21,"57866-6041-08 ")
 ;;4616
 ;;21,"57866-7216-01 ")
 ;;4617
 ;;21,"57866-7216-02 ")
 ;;4618
 ;;21,"57866-7216-03 ")
 ;;4619
 ;;21,"57866-7216-04 ")
 ;;4620
 ;;21,"57866-7216-07 ")
 ;;4621
 ;;21,"57866-7216-08 ")
 ;;4622
 ;;21,"57866-7218-01 ")
 ;;4623
 ;;21,"57866-7218-02 ")
 ;;4624
 ;;21,"57866-8205-01 ")
 ;;4625
 ;;21,"57866-8205-02 ")
 ;;4626
 ;;21,"58016-0075-30 ")
 ;;4627
 ;;21,"58016-0086-30 ")
 ;;4628
 ;;21,"58016-0101-00 ")
 ;;4629
 ;;21,"58016-0101-08 ")
 ;;4630
 ;;21,"58016-0101-10 ")
 ;;4631
 ;;21,"58016-0101-12 ")
 ;;4632
 ;;21,"58016-0101-14 ")
 ;;4633
 ;;21,"58016-0101-20 ")
 ;;4634
 ;;21,"58016-0101-24 ")
 ;;4635
 ;;21,"58016-0101-28 ")
 ;;4636
 ;;21,"58016-0101-30 ")
 ;;4637
 ;;21,"58016-0101-40 ")
 ;;4638
 ;;21,"58016-0101-60 ")
 ;;4639
 ;;21,"58016-0101-90 ")
 ;;4640
 ;;21,"58016-0102-00 ")
 ;;4641
 ;;21,"58016-0102-20 ")
 ;;4642
 ;;21,"58016-0102-30 ")
 ;;4643
 ;;21,"58016-0102-60 ")
 ;;4644
 ;;21,"58016-0102-90 ")
 ;;4645
 ;;21,"58016-0103-00 ")
 ;;4646
 ;;21,"58016-0103-09 ")
 ;;4647
 ;;21,"58016-0103-12 ")
 ;;4648
 ;;21,"58016-0103-15 ")
 ;;4649
 ;;21,"58016-0103-18 ")
 ;;4650
 ;;21,"58016-0103-20 ")
 ;;4651
 ;;21,"58016-0103-21 ")
 ;;4652
 ;;21,"58016-0103-24 ")
 ;;4653
 ;;21,"58016-0103-30 ")
 ;;4654