BGP83A2 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00603-2129-21 ")
 ;;340
 ;;21,"00603-2129-28 ")
 ;;341
 ;;21,"00603-2129-32 ")
 ;;342
 ;;21,"00603-2130-21 ")
 ;;343
 ;;21,"00603-2130-28 ")
 ;;344
 ;;21,"00603-2948-02 ")
 ;;345
 ;;21,"00603-2948-13 ")
 ;;346
 ;;21,"00603-2948-16 ")
 ;;347
 ;;21,"00603-2948-20 ")
 ;;348
 ;;21,"00603-2948-21 ")
 ;;349
 ;;21,"00603-2948-22 ")
 ;;350
 ;;21,"00603-2948-26 ")
 ;;351
 ;;21,"00603-2948-28 ")
 ;;352
 ;;21,"00603-2948-32 ")
 ;;353
 ;;21,"00603-2948-60 ")
 ;;354
 ;;21,"00603-2949-02 ")
 ;;355
 ;;21,"00603-2949-13 ")
 ;;356
 ;;21,"00603-2949-16 ")
 ;;357
 ;;21,"00603-2949-20 ")
 ;;358
 ;;21,"00603-2949-21 ")
 ;;359
 ;;21,"00603-2949-22 ")
 ;;360
 ;;21,"00603-2949-28 ")
 ;;361
 ;;21,"00603-2949-32 ")
 ;;362
 ;;21,"00603-2949-60 ")
 ;;363
 ;;21,"00603-2950-02 ")
 ;;364
 ;;21,"00603-2950-16 ")
 ;;365
 ;;21,"00603-2950-20 ")
 ;;366
 ;;21,"00603-2950-21 ")
 ;;367
 ;;21,"00603-2950-28 ")
 ;;368
 ;;21,"00603-3213-16 ")
 ;;369
 ;;21,"00603-3213-20 ")
 ;;370
 ;;21,"00603-3213-21 ")
 ;;371
 ;;21,"00603-3213-28 ")
 ;;372
 ;;21,"00603-3214-02 ")
 ;;373
 ;;21,"00603-3214-16 ")
 ;;374
 ;;21,"00603-3214-20 ")
 ;;375
 ;;21,"00603-3214-21 ")
 ;;376
 ;;21,"00603-3214-22 ")
 ;;377
 ;;21,"00603-3214-28 ")
 ;;378
 ;;21,"00603-3214-32 ")
 ;;379
 ;;21,"00603-3215-02 ")
 ;;380
 ;;21,"00603-3215-16 ")
 ;;381
 ;;21,"00603-3215-20 ")
 ;;382
 ;;21,"00603-3215-21 ")
 ;;383
 ;;21,"00603-3215-22 ")
 ;;384
 ;;21,"00603-3215-28 ")
 ;;385
 ;;21,"00603-3215-32 ")
 ;;386
 ;;21,"00603-4246-21 ")
 ;;387
 ;;21,"00603-4246-28 ")
 ;;388
 ;;21,"00603-4246-32 ")
 ;;389
 ;;21,"00603-4247-21 ")
 ;;390
 ;;21,"00603-4247-28 ")
 ;;391
 ;;21,"00603-4247-32 ")
 ;;392
 ;;21,"00603-4248-21 ")
 ;;393
 ;;21,"00603-4248-28 ")
 ;;394
 ;;21,"00603-4248-32 ")
 ;;395
 ;;21,"00603-5891-21 ")
 ;;396
 ;;21,"00603-5892-21 ")
 ;;397
 ;;21,"00603-5892-28 ")
 ;;398
 ;;21,"00603-5893-16 ")
 ;;399
 ;;21,"00603-5894-21 ")
 ;;400
 ;;21,"00603-5894-28 ")
 ;;401
 ;;21,"00781-1061-01 ")
 ;;402
 ;;21,"00781-1061-05 ")
 ;;403
 ;;21,"00781-1061-10 ")
 ;;404
 ;;21,"00781-1077-01 ")
 ;;405
 ;;21,"00781-1077-05 ")
 ;;406
 ;;21,"00781-1077-10 ")
 ;;407
 ;;21,"00781-1079-01 ")
 ;;408
 ;;21,"00781-1079-05 ")
 ;;409
 ;;21,"00781-1079-10 ")
 ;;410
 ;;21,"00781-1089-01 ")
 ;;411
 ;;21,"00781-1089-05 ")
 ;;412
 ;;21,"00781-2201-01 ")
 ;;413
 ;;21,"00781-2201-05 ")
 ;;414
 ;;21,"00781-2202-01 ")
 ;;415
 ;;21,"00781-2202-05 ")
 ;;416
 ;;21,"00781-2809-01 ")
 ;;417
 ;;21,"00781-2810-01 ")
 ;;418
 ;;21,"00781-2811-01 ")
 ;;419
 ;;21,"00781-5371-01 ")
 ;;420
 ;;21,"00781-5371-05 ")
 ;;421
 ;;21,"00781-5377-01 ")
 ;;422
 ;;21,"00781-5377-05 ")
 ;;423
 ;;21,"00781-5379-01 ")
 ;;424
 ;;21,"00781-5379-05 ")
 ;;425
 ;;21,"00781-5404-01 ")
 ;;426
 ;;21,"00781-5404-05 ")
 ;;427
 ;;21,"00781-5406-01 ")
 ;;428
 ;;21,"00781-5406-05 ")
 ;;429
 ;;21,"00781-5408-01 ")
 ;;430
 ;;21,"00781-5408-05 ")
 ;;431
 ;;21,"00832-0900-15 ")
 ;;432
 ;;21,"00832-0901-15 ")
 ;;433
 ;;21,"00832-0902-15 ")
 ;;434
 ;;21,"00832-0910-15 ")
 ;;435
 ;;21,"00832-0911-15 ")
 ;;436
 ;;21,"00832-0912-15 ")
 ;;437
 ;;21,"00904-1500-61 ")
 ;;438
 ;;21,"00904-5858-61 ")
 ;;439
 ;;21,"00904-5859-61 ")
 ;;440
 ;;21,"00904-5860-61 ")
 ;;441
 ;;21,"00904-5880-61 ")
 ;;442
 ;;21,"00904-5881-61 ")
 ;;443
 ;;21,"00904-5980-61 ")
 ;;444
 ;;21,"00904-5981-61 ")
 ;;445
 ;;21,"00904-5982-61 ")
 ;;446
 ;;21,"00904-6007-40 ")
 ;;447
 ;;21,"00904-6007-60 ")
 ;;448
 ;;21,"00904-6007-61 ")
 ;;449
 ;;21,"00904-6008-60 ")
 ;;450
 ;;21,"00904-6008-61 ")
 ;;451
 ;;21,"00904-6009-60 ")
 ;;452
 ;;21,"00904-6009-61 ")
 ;;453
 ;;21,"00904-6101-61 ")
 ;;454
 ;;21,"00904-6102-61 ")
 ;;455
 ;;21,"00904-6103-61 ")
 ;;456
 ;;21,"00904-6436-04 ")
 ;;457
 ;;21,"00904-6436-60 ")
 ;;458
 ;;21,"10135-0622-01 ")
 ;;459
 ;;21,"10544-0029-30 ")
 ;;460
 ;;21,"10544-0054-30 ")
 ;;461
 ;;21,"10544-0104-30 ")
 ;;462
 ;;21,"10544-0106-30 ")
 ;;463
 ;;21,"10544-0107-30 ")
 ;;464
 ;;21,"10544-0155-30 ")
 ;;465
 ;;21,"10544-0155-60 ")
 ;;466
 ;;21,"10544-0155-90 ")
 ;;467
 ;;21,"10544-0161-30 ")
 ;;468
 ;;21,"10544-0161-60 ")
 ;;469
 ;;21,"10544-0244-30 ")
 ;;470
 ;;21,"16590-0005-15 ")
 ;;471
 ;;21,"16590-0005-20 ")
 ;;472
 ;;21,"16590-0005-30 ")
 ;;473
 ;;21,"16590-0005-60 ")
 ;;474
 ;;21,"16590-0005-72 ")
 ;;475
 ;;21,"16590-0005-90 ")
 ;;476
 ;;21,"16590-0006-15 ")
 ;;477
 ;;21,"16590-0006-28 ")
 ;;478
 ;;21,"16590-0006-30 ")
 ;;479
 ;;21,"16590-0006-60 ")
 ;;480
 ;;21,"16590-0006-72 ")
 ;;481
 ;;21,"16590-0006-90 ")
 ;;482
 ;;21,"16590-0058-28 ")
 ;;483
 ;;21,"16590-0058-30 ")
 ;;484
 ;;21,"16590-0058-56 ")
 ;;485
 ;;21,"16590-0058-60 ")
 ;;486
 ;;21,"16590-0058-72 ")
 ;;487
 ;;21,"16590-0058-90 ")
 ;;488
 ;;21,"16590-0059-28 ")
 ;;489
 ;;21,"16590-0059-30 ")
 ;;490
 ;;21,"16590-0059-45 ")
 ;;491
 ;;21,"16590-0059-56 ")
 ;;492
 ;;21,"16590-0059-60 ")
 ;;493
 ;;21,"16590-0059-72 ")
 ;;494
 ;;21,"16590-0059-90 ")
 ;;495
 ;;21,"16590-0069-30 ")
 ;;496
 ;;21,"16590-0069-60 ")
 ;;497
 ;;21,"16590-0069-90 ")
 ;;498
 ;;21,"16590-0070-02 ")
 ;;499
 ;;21,"16590-0070-03 ")
 ;;500
 ;;21,"16590-0070-15 ")
 ;;501
 ;;21,"16590-0070-20 ")
 ;;502
 ;;21,"16590-0070-30 ")
 ;;503
 ;;21,"16590-0070-45 ")
 ;;504
 ;;21,"16590-0070-60 ")
 ;;505
 ;;21,"16590-0070-72 ")
 ;;506
 ;;21,"16590-0070-75 ")
 ;;507
 ;;21,"16590-0070-90 ")
 ;;508
 ;;21,"16590-0071-04 ")
 ;;509
 ;;21,"16590-0071-10 ")
 ;;510
 ;;21,"16590-0071-15 ")
 ;;511
 ;;21,"16590-0071-20 ")
 ;;512
 ;;21,"16590-0071-28 ")
 ;;513
 ;;21,"16590-0071-30 ")
 ;;514
 ;;21,"16590-0071-45 ")
 ;;515
 ;;21,"16590-0071-56 ")
 ;;516
 ;;21,"16590-0071-60 ")
 ;;517
 ;;21,"16590-0071-62 ")
 ;;518
 ;;21,"16590-0071-72 ")
 ;;519
 ;;21,"16590-0071-75 ")
 ;;520
 ;;21,"16590-0071-90 ")
 ;;521
 ;;21,"16590-0143-15 ")
 ;;522
 ;;21,"16590-0143-30 ")
 ;;523
 ;;21,"16590-0143-60 ")
 ;;524
 ;;21,"16590-0143-72 ")
 ;;525
 ;;21,"16590-0143-90 ")
 ;;526
 ;;21,"16590-0214-28 ")
 ;;527
 ;;21,"16590-0214-30 ")
 ;;528
 ;;21,"16590-0214-45 ")
 ;;529
 ;;21,"16590-0214-60 ")
 ;;530
 ;;21,"16590-0214-90 ")
 ;;531
 ;;21,"16590-0236-30 ")
 ;;532
 ;;21,"16590-0236-60 ")
 ;;533
 ;;21,"16590-0236-90 ")
 ;;534
 ;;21,"16590-0304-90 ")
 ;;535
 ;;21,"16590-0447-30 ")
 ;;536
 ;;21,"16590-0447-60 ")
 ;;537
 ;;21,"16590-0447-90 ")
 ;;538
 ;;21,"16590-0481-28 ")
 ;;539
 ;;21,"16590-0481-30 ")
 ;;540
 ;;21,"16590-0481-45 ")
 ;;541
 ;;21,"16590-0481-60 ")
 ;;542
 ;;21,"16590-0481-75 ")
 ;;543
 ;;21,"16590-0481-90 ")
 ;;544
 ;;21,"16590-0584-15 ")
 ;;545
 ;;21,"16590-0584-30 ")
 ;;546
 ;;21,"16590-0584-60 ")
 ;;547
 ;;21,"16590-0584-72 ")
 ;;548
 ;;21,"16590-0584-90 ")
 ;;549
 ;;21,"16590-0588-30 ")
 ;;550
 ;;21,"16590-0588-60 ")
 ;;551
 ;;21,"16590-0588-72 ")
 ;;552
 ;;21,"16590-0588-90 ")
 ;;553
 ;;21,"16590-0813-72 ")
 ;;554
 ;;21,"16590-0935-28 ")
 ;;555
 ;;21,"16590-0937-60 ")
 ;;556
 ;;21,"16590-0938-72 ")
 ;;557
 ;;21,"16714-0469-01 ")
 ;;558
 ;;21,"16714-0469-02 ")
 ;;559
 ;;21,"16714-0470-01 ")
 ;;560
 ;;21,"16714-0470-02 ")
 ;;561
 ;;21,"16714-0471-01 ")
 ;;562
 ;;21,"16714-0471-02 ")
 ;;563
 ;;21,"16729-0136-00 ")
 ;;564
 ;;21,"16729-0136-16 ")
 ;;565
 ;;21,"16729-0137-00 ")
 ;;566
 ;;21,"16729-0137-16 ")
 ;;567
 ;;21,"16729-0138-00 ")
 ;;568
 ;;21,"16729-0138-16 ")
 ;;569
 ;;21,"17856-3566-02 ")
 ;;570
 ;;21,"17856-3566-03 ")
 ;;571
 ;;21,"18860-0322-01 ")
 ;;572
 ;;21,"18860-0323-01 ")
 ;;573
 ;;21,"18860-0324-01 ")
 ;;574
 ;;21,"21695-0220-30 ")
 ;;575
 ;;21,"21695-0238-00 ")
 ;;576
 ;;21,"21695-0238-15 ")
 ;;577
 ;;21,"21695-0238-30 ")
 ;;578
 ;;21,"21695-0238-60 ")
 ;;579
 ;;21,"21695-0238-90 ")
 ;;580
 ;;21,"21695-0239-03 ")
 ;;581
 ;;21,"21695-0239-15 ")
 ;;582
 ;;21,"21695-0239-30 ")
 ;;583
 ;;21,"21695-0239-60 ")
 ;;584
 ;;21,"21695-0239-90 ")
 ;;585
 ;;21,"21695-0240-03 ")
 ;;586
 ;;21,"21695-0240-30 ")
 ;;587
 ;;21,"21695-0240-60 ")
 ;;588
 ;;21,"21695-0247-30 ")
 ;;589
 ;;21,"21695-0247-60 ")
 ;;590
 ;;21,"21695-0247-90 ")
 ;;591
 ;;21,"21695-0248-00 ")
 ;;592
 ;;21,"21695-0248-15 ")
 ;;593
 ;;21,"21695-0248-30 ")
 ;;594
 ;;21,"21695-0248-60 ")
 ;;595
 ;;21,"21695-0249-30 ")
 ;;596
 ;;21,"21695-0249-45 ")
 ;;597
 ;;21,"21695-0249-60 ")
 ;;598
 ;;21,"21695-0250-30 ")
 ;;599
 ;;21,"21695-0250-60 ")
 ;;600
 ;;21,"21695-0260-00 ")
 ;;601
 ;;21,"21695-0260-30 ")
 ;;602
 ;;21,"21695-0260-60 ")
 ;;603
 ;;21,"21695-0260-72 ")
 ;;604
 ;;21,"21695-0260-90 ")
 ;;605
 ;;21,"21695-0261-00 ")
 ;;606
 ;;21,"21695-0261-30 ")
 ;;607
 ;;21,"21695-0261-60 ")
 ;;608
 ;;21,"21695-0261-72 ")
 ;;609
 ;;21,"21695-0261-90 ")
 ;;610
 ;;21,"21695-0262-60 ")
 ;;611
 ;;21,"21695-0263-30 ")
 ;;612
 ;;21,"21695-0263-90 ")
 ;;613
 ;;21,"21695-0264-02 ")
 ;;614
 ;;21,"21695-0264-10 ")
 ;;615
 ;;21,"21695-0264-12 ")
 ;;616
 ;;21,"21695-0264-15 ")
 ;;617
 ;;21,"21695-0264-20 ")
 ;;618
 ;;21,"21695-0264-30 ")
 ;;619
 ;;21,"21695-0264-45 ")
 ;;620
 ;;21,"21695-0264-60 ")
 ;;621
 ;;21,"21695-0264-90 ")
 ;;622
 ;;21,"21695-0265-05 ")
 ;;623
 ;;21,"21695-0265-15 ")
 ;;624
 ;;21,"21695-0265-30 ")
 ;;625
 ;;21,"21695-0265-60 ")
 ;;626
 ;;21,"21695-0265-90 ")
 ;;627
 ;;21,"21695-0282-30 ")
 ;;628
 ;;21,"21695-0282-60 ")
 ;;629
 ;;21,"21695-0282-78 ")
 ;;630
 ;;21,"21695-0283-30 ")
 ;;631
 ;;21,"21695-0283-90 ")
 ;;632
 ;;21,"21695-0284-00 ")
 ;;633
 ;;21,"21695-0284-10 ")
 ;;634
 ;;21,"21695-0303-10 ")
 ;;635
 ;;21,"21695-0303-30 ")
 ;;636
 ;;21,"21695-0363-30 ")
 ;;637
 ;;21,"21695-0433-60 ")
 ;;638
 ;;21,"21695-0434-60 ")
 ;;639
 ;;21,"21695-0602-60 ")
 ;;640
 ;;21,"21695-0603-60 ")
 ;;641
 ;;21,"21695-0604-60 ")
 ;;642
 ;;21,"21695-0605-60 ")
 ;;643
 ;;21,"33261-0004-02 ")
 ;;644
 ;;21,"33261-0004-07 ")
 ;;645
 ;;21,"33261-0004-10 ")
 ;;646
 ;;21,"33261-0004-14 ")
 ;;647
 ;;21,"33261-0004-20 ")
 ;;648
 ;;21,"33261-0004-21 ")
 ;;649
 ;;21,"33261-0004-28 ")
 ;;650
 ;;21,"33261-0004-30 ")
 ;;651
 ;;21,"33261-0004-40 ")
 ;;652
 ;;21,"33261-0004-60 ")
 ;;653
 ;;21,"33261-0004-90 ")
 ;;654
 ;;21,"33261-0005-00 ")
 ;;655
 ;;21,"33261-0005-02 ")
 ;;656
 ;;21,"33261-0005-06 ")
 ;;657
 ;;21,"33261-0005-15 ")
 ;;658
 ;;21,"33261-0005-30 ")
 ;;659
 ;;21,"33261-0005-60 ")
 ;;660
 ;;21,"33261-0005-90 ")
 ;;661
 ;;21,"33261-0029-00 ")
 ;;662
 ;;21,"33261-0029-02 ")
 ;;663
 ;;21,"33261-0029-03 ")
 ;;664
 ;;21,"33261-0029-07 ")
 ;;665
 ;;21,"33261-0029-14 ")
 ;;666
 ;;21,"33261-0029-20 ")
 ;;667
 ;;21,"33261-0029-21 ")
 ;;668
 ;;21,"33261-0029-28 ")
 ;;669
 ;;21,"33261-0029-30 ")
 ;;670
 ;;21,"33261-0029-40 ")
 ;;671
 ;;21,"33261-0029-60 ")
 ;;672
 ;;21,"33261-0029-90 ")
 ;;673
 ;;21,"33261-0034-02 ")
 ;;674
 ;;21,"33261-0034-07 ")
 ;;675
 ;;21,"33261-0034-14 ")
 ;;676
 ;;21,"33261-0034-20 ")
 ;;677
 ;;21,"33261-0034-21 ")
 ;;678
 ;;21,"33261-0034-28 ")
 ;;679
 ;;21,"33261-0034-29 ")
 ;;680
 ;;21,"33261-0034-30 ")
 ;;681