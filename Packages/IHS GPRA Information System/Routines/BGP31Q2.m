BGP31Q2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 29, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"43353-0617-07 ")
 ;;394
 ;;21,"43353-0617-10 ")
 ;;395
 ;;21,"43353-0617-14 ")
 ;;396
 ;;21,"43353-0617-15 ")
 ;;397
 ;;21,"43353-0617-20 ")
 ;;398
 ;;21,"43353-0617-25 ")
 ;;399
 ;;21,"43353-0617-28 ")
 ;;400
 ;;21,"43353-0617-30 ")
 ;;401
 ;;21,"43353-0617-40 ")
 ;;402
 ;;21,"43353-0617-45 ")
 ;;403
 ;;21,"43353-0617-53 ")
 ;;404
 ;;21,"43353-0617-59 ")
 ;;405
 ;;21,"43353-0617-60 ")
 ;;406
 ;;21,"43353-0620-07 ")
 ;;407
 ;;21,"43353-0620-10 ")
 ;;408
 ;;21,"43353-0620-14 ")
 ;;409
 ;;21,"43353-0620-15 ")
 ;;410
 ;;21,"43353-0620-20 ")
 ;;411
 ;;21,"43353-0620-28 ")
 ;;412
 ;;21,"43353-0620-30 ")
 ;;413
 ;;21,"43353-0620-45 ")
 ;;414
 ;;21,"43353-0620-59 ")
 ;;415
 ;;21,"43353-0620-60 ")
 ;;416
 ;;21,"43353-0669-07 ")
 ;;417
 ;;21,"43353-0669-10 ")
 ;;418
 ;;21,"43353-0669-14 ")
 ;;419
 ;;21,"43353-0669-15 ")
 ;;420
 ;;21,"43353-0669-20 ")
 ;;421
 ;;21,"43353-0669-45 ")
 ;;422
 ;;21,"43353-0669-53 ")
 ;;423
 ;;21,"43353-0669-59 ")
 ;;424
 ;;21,"43353-0669-60 ")
 ;;425
 ;;21,"43353-0670-07 ")
 ;;426
 ;;21,"43353-0670-10 ")
 ;;427
 ;;21,"43353-0670-14 ")
 ;;428
 ;;21,"43353-0670-15 ")
 ;;429
 ;;21,"43353-0670-20 ")
 ;;430
 ;;21,"43353-0670-21 ")
 ;;431
 ;;21,"43353-0670-25 ")
 ;;432
 ;;21,"43353-0670-28 ")
 ;;433
 ;;21,"43353-0670-30 ")
 ;;434
 ;;21,"43353-0670-40 ")
 ;;435
 ;;21,"43353-0670-45 ")
 ;;436
 ;;21,"43353-0670-53 ")
 ;;437
 ;;21,"43353-0670-59 ")
 ;;438
 ;;21,"43353-0670-60 ")
 ;;439
 ;;21,"43353-0670-62 ")
 ;;440
 ;;21,"43353-0727-30 ")
 ;;441
 ;;21,"43353-0743-30 ")
 ;;442
 ;;21,"43353-0743-60 ")
 ;;443
 ;;21,"47463-0012-28 ")
 ;;444
 ;;21,"47463-0012-30 ")
 ;;445
 ;;21,"47463-0012-60 ")
 ;;446
 ;;21,"47463-0012-90 ")
 ;;447
 ;;21,"47463-0396-28 ")
 ;;448
 ;;21,"47463-0396-30 ")
 ;;449
 ;;21,"47463-0824-30 ")
 ;;450
 ;;21,"47463-0824-60 ")
 ;;451
 ;;21,"47463-0824-71 ")
 ;;452
 ;;21,"47463-0824-90 ")
 ;;453
 ;;21,"47463-0825-06 ")
 ;;454
 ;;21,"47463-0825-30 ")
 ;;455
 ;;21,"47463-0825-71 ")
 ;;456
 ;;21,"47463-0825-90 ")
 ;;457
 ;;21,"47463-0827-30 ")
 ;;458
 ;;21,"47463-0854-30 ")
 ;;459
 ;;21,"49999-0037-00 ")
 ;;460
 ;;21,"49999-0037-10 ")
 ;;461
 ;;21,"49999-0037-15 ")
 ;;462
 ;;21,"49999-0037-20 ")
 ;;463
 ;;21,"49999-0037-30 ")
 ;;464
 ;;21,"49999-0037-60 ")
 ;;465
 ;;21,"49999-0037-90 ")
 ;;466
 ;;21,"49999-0453-15 ")
 ;;467
 ;;21,"49999-0453-30 ")
 ;;468
 ;;21,"49999-0604-15 ")
 ;;469
 ;;21,"49999-0604-30 ")
 ;;470
 ;;21,"49999-0604-60 ")
 ;;471
 ;;21,"49999-0737-00 ")
 ;;472
 ;;21,"49999-0737-14 ")
 ;;473
 ;;21,"49999-0737-15 ")
 ;;474
 ;;21,"49999-0737-30 ")
 ;;475
 ;;21,"49999-0737-60 ")
 ;;476
 ;;21,"49999-0737-90 ")
 ;;477
 ;;21,"49999-0763-00 ")
 ;;478
 ;;21,"49999-0763-30 ")
 ;;479
 ;;21,"49999-0764-30 ")
 ;;480
 ;;21,"49999-0764-60 ")
 ;;481
 ;;21,"49999-0778-30 ")
 ;;482
 ;;21,"49999-0779-15 ")
 ;;483
 ;;21,"49999-0779-30 ")
 ;;484
 ;;21,"49999-0931-00 ")
 ;;485
 ;;21,"49999-0931-02 ")
 ;;486
 ;;21,"49999-0931-15 ")
 ;;487
 ;;21,"49999-0931-30 ")
 ;;488
 ;;21,"49999-0931-60 ")
 ;;489
 ;;21,"49999-0932-00 ")
 ;;490
 ;;21,"49999-0932-30 ")
 ;;491
 ;;21,"49999-0932-60 ")
 ;;492
 ;;21,"50436-0193-01 ")
 ;;493
 ;;21,"50436-3026-01 ")
 ;;494
 ;;21,"50436-3030-01 ")
 ;;495
 ;;21,"50436-3402-01 ")
 ;;496
 ;;21,"51079-0724-01 ")
 ;;497
 ;;21,"51079-0724-20 ")
 ;;498
 ;;21,"51079-0725-01 ")
 ;;499
 ;;21,"51079-0725-20 ")
 ;;500
 ;;21,"52555-0791-01 ")
 ;;501
 ;;21,"52555-0791-05 ")
 ;;502
 ;;21,"52555-0792-01 ")
 ;;503
 ;;21,"52555-0792-05 ")
 ;;504
 ;;21,"52959-0362-10 ")
 ;;505
 ;;21,"52959-0362-15 ")
 ;;506
 ;;21,"52959-0362-20 ")
 ;;507
 ;;21,"52959-0362-30 ")
 ;;508
 ;;21,"52959-0362-60 ")
 ;;509
 ;;21,"52959-0363-10 ")
 ;;510
 ;;21,"52959-0363-15 ")
 ;;511
 ;;21,"52959-0363-20 ")
 ;;512
 ;;21,"52959-0363-21 ")
 ;;513
 ;;21,"52959-0363-25 ")
 ;;514
 ;;21,"52959-0363-30 ")
 ;;515
 ;;21,"52959-0363-60 ")
 ;;516
 ;;21,"52959-0727-00 ")
 ;;517
 ;;21,"52959-0727-10 ")
 ;;518
 ;;21,"52959-0727-30 ")
 ;;519
 ;;21,"52959-0852-00 ")
 ;;520
 ;;21,"52959-0852-10 ")
 ;;521
 ;;21,"52959-0852-12 ")
 ;;522
 ;;21,"52959-0852-30 ")
 ;;523
 ;;21,"52959-0852-60 ")
 ;;524
 ;;21,"52959-0870-30 ")
 ;;525
 ;;21,"52959-0879-02 ")
 ;;526
 ;;21,"52959-0879-10 ")
 ;;527
 ;;21,"52959-0879-14 ")
 ;;528
 ;;21,"52959-0879-15 ")
 ;;529
 ;;21,"52959-0879-20 ")
 ;;530
 ;;21,"52959-0879-28 ")
 ;;531
 ;;21,"52959-0879-30 ")
 ;;532
 ;;21,"52959-0879-60 ")
 ;;533
 ;;21,"52959-0879-90 ")
 ;;534
 ;;21,"52959-0880-00 ")
 ;;535
 ;;21,"52959-0880-02 ")
 ;;536
 ;;21,"52959-0880-10 ")
 ;;537
 ;;21,"52959-0880-14 ")
 ;;538
 ;;21,"52959-0880-15 ")
 ;;539
 ;;21,"52959-0880-20 ")
 ;;540
 ;;21,"52959-0880-28 ")
 ;;541
 ;;21,"52959-0880-30 ")
 ;;542
 ;;21,"52959-0880-60 ")
 ;;543
 ;;21,"52959-0880-90 ")
 ;;544
 ;;21,"52959-0881-30 ")
 ;;545
 ;;21,"52959-0919-00 ")
 ;;546
 ;;21,"52959-0919-30 ")
 ;;547
 ;;21,"52959-0919-60 ")
 ;;548
 ;;21,"52959-0957-30 ")
 ;;549
 ;;21,"52959-0971-30 ")
 ;;550
 ;;21,"53002-0502-05 ")
 ;;551
 ;;21,"53002-0502-10 ")
 ;;552
 ;;21,"53002-0502-20 ")
 ;;553
 ;;21,"53002-0502-30 ")
 ;;554
 ;;21,"53002-1292-01 ")
 ;;555
 ;;21,"53002-1292-02 ")
 ;;556
 ;;21,"53002-1292-03 ")
 ;;557
 ;;21,"53002-1594-01 ")
 ;;558
 ;;21,"53489-0600-01 ")
 ;;559
 ;;21,"53489-0600-10 ")
 ;;560
 ;;21,"53489-0601-01 ")
 ;;561
 ;;21,"53489-0601-10 ")
 ;;562
 ;;21,"54569-3827-00 ")
 ;;563
 ;;21,"54569-3827-01 ")
 ;;564
 ;;21,"54569-3827-02 ")
 ;;565
 ;;21,"54569-3827-03 ")
 ;;566
 ;;21,"54569-3828-00 ")
 ;;567
 ;;21,"54569-3828-01 ")
 ;;568
 ;;21,"54569-3828-02 ")
 ;;569
 ;;21,"54569-3828-03 ")
 ;;570
 ;;21,"54569-3828-04 ")
 ;;571
 ;;21,"54569-3828-05 ")
 ;;572
 ;;21,"54569-3828-08 ")
 ;;573
 ;;21,"54569-4836-00 ")
 ;;574
 ;;21,"54569-4837-00 ")
 ;;575
 ;;21,"54569-5684-00 ")
 ;;576
 ;;21,"54569-5695-00 ")
 ;;577
 ;;21,"54569-5696-00 ")
 ;;578
 ;;21,"54569-5760-00 ")
 ;;579
 ;;21,"54569-5760-01 ")
 ;;580
 ;;21,"54569-5906-00 ")
 ;;581
 ;;21,"54569-5906-01 ")
 ;;582
 ;;21,"54569-5906-02 ")
 ;;583
 ;;21,"54569-5907-00 ")
 ;;584
 ;;21,"54569-5907-01 ")
 ;;585
 ;;21,"54569-5907-02 ")
 ;;586
 ;;21,"54569-6118-00 ")
 ;;587
 ;;21,"54569-6118-01 ")
 ;;588
 ;;21,"54569-6231-00 ")
 ;;589
 ;;21,"54569-6231-01 ")
 ;;590
 ;;21,"54868-0845-00 ")
 ;;591
 ;;21,"54868-0845-01 ")
 ;;592
 ;;21,"54868-0845-02 ")
 ;;593
 ;;21,"54868-0845-03 ")
 ;;594
 ;;21,"54868-0846-00 ")
 ;;595
 ;;21,"54868-0846-01 ")
 ;;596
 ;;21,"54868-0846-02 ")
 ;;597
 ;;21,"54868-0846-03 ")
 ;;598
 ;;21,"54868-0846-04 ")
 ;;599
 ;;21,"54868-0846-05 ")
 ;;600
 ;;21,"54868-0846-06 ")
 ;;601
 ;;21,"54868-2642-00 ")
 ;;602
 ;;21,"54868-2642-01 ")
 ;;603
 ;;21,"54868-2642-02 ")
 ;;604
 ;;21,"54868-2642-03 ")
 ;;605
 ;;21,"54868-2642-04 ")
 ;;606
 ;;21,"54868-2643-00 ")
 ;;607
 ;;21,"54868-2643-01 ")
 ;;608
 ;;21,"54868-2643-02 ")
 ;;609
 ;;21,"54868-2643-04 ")
 ;;610
 ;;21,"54868-2643-05 ")
 ;;611
 ;;21,"54868-2643-06 ")
 ;;612
 ;;21,"54868-2643-07 ")
 ;;613
 ;;21,"54868-2643-08 ")
 ;;614
 ;;21,"54868-4431-00 ")
 ;;615
 ;;21,"54868-4431-01 ")
 ;;616
 ;;21,"54868-4431-02 ")
 ;;617
 ;;21,"54868-4431-03 ")
 ;;618
 ;;21,"54868-5139-00 ")
 ;;619
 ;;21,"54868-5139-01 ")
 ;;620
 ;;21,"54868-5273-00 ")
 ;;621
 ;;21,"54868-5273-01 ")
 ;;622
 ;;21,"54868-5273-02 ")
 ;;623
 ;;21,"54868-5394-00 ")
 ;;624
 ;;21,"54868-5394-01 ")
 ;;625
 ;;21,"54868-5394-02 ")
 ;;626
 ;;21,"54868-5394-03 ")
 ;;627
 ;;21,"54868-5426-00 ")
 ;;628
 ;;21,"54868-5426-01 ")
 ;;629
 ;;21,"54868-5426-02 ")
 ;;630
 ;;21,"54868-5426-03 ")
 ;;631
 ;;21,"54868-5426-04 ")
 ;;632
 ;;21,"54868-5439-00 ")
 ;;633
 ;;21,"54868-5439-01 ")
 ;;634
 ;;21,"54868-5461-00 ")
 ;;635
 ;;21,"54868-5461-01 ")
 ;;636
 ;;21,"54868-5461-02 ")
 ;;637
 ;;21,"54868-5461-03 ")
 ;;638
 ;;21,"54868-5908-00 ")
 ;;639
 ;;21,"54868-5908-01 ")
 ;;640
 ;;21,"54868-5909-00 ")
 ;;641
 ;;21,"54868-5909-01 ")
 ;;642
 ;;21,"54868-6189-00 ")
 ;;643
 ;;21,"54868-6189-01 ")
 ;;644
 ;;21,"54868-6215-00 ")
 ;;645
 ;;21,"54868-6215-01 ")
 ;;646
 ;;21,"54868-6215-02 ")
 ;;647
 ;;21,"54868-6215-03 ")
 ;;648
 ;;21,"55045-2271-00 ")
 ;;649
 ;;21,"55045-2271-01 ")
 ;;650
 ;;21,"55045-2271-02 ")
 ;;651
 ;;21,"55045-2271-06 ")
 ;;652
 ;;21,"55045-2271-07 ")
 ;;653
 ;;21,"55045-2271-08 ")
 ;;654
 ;;21,"55045-2271-09 ")
 ;;655
 ;;21,"55045-2812-06 ")
 ;;656
 ;;21,"55045-2812-07 ")
 ;;657
 ;;21,"55045-2812-08 ")
 ;;658
 ;;21,"55045-3034-07 ")
 ;;659
 ;;21,"55045-3302-08 ")
 ;;660
 ;;21,"55045-3438-08 ")
 ;;661
 ;;21,"55045-3461-08 ")
 ;;662
 ;;21,"55045-3462-08 ")
 ;;663
 ;;21,"55045-3633-01 ")
 ;;664
 ;;21,"55045-3633-02 ")
 ;;665
 ;;21,"55045-3811-01 ")
 ;;666
 ;;21,"55045-3811-02 ")
 ;;667
 ;;21,"55045-3811-03 ")
 ;;668
 ;;21,"55045-3811-06 ")
 ;;669
 ;;21,"55045-3812-01 ")
 ;;670
 ;;21,"55045-3812-03 ")
 ;;671
 ;;21,"55048-0012-28 ")
 ;;672
 ;;21,"55048-0012-30 ")
 ;;673
 ;;21,"55048-0012-60 ")
 ;;674
 ;;21,"55048-0012-90 ")
 ;;675
 ;;21,"55048-0396-28 ")
 ;;676
 ;;21,"55048-0396-30 ")
 ;;677
 ;;21,"55048-0824-30 ")
 ;;678
 ;;21,"55048-0824-60 ")
 ;;679
 ;;21,"55048-0824-71 ")
 ;;680
 ;;21,"55048-0824-90 ")
 ;;681
 ;;21,"55048-0825-06 ")
 ;;682
 ;;21,"55048-0825-30 ")
 ;;683
 ;;21,"55048-0825-71 ")
 ;;684
 ;;21,"55048-0825-90 ")
 ;;685
 ;;21,"55048-0827-30 ")
 ;;686
 ;;21,"55048-0854-30 ")
 ;;687
 ;;21,"55048-0881-30 ")
 ;;688
 ;;21,"55111-0478-01 ")
 ;;689
 ;;21,"55111-0478-05 ")
 ;;690
 ;;21,"55111-0479-01 ")
 ;;691
 ;;21,"55111-0479-05 ")
 ;;692
 ;;21,"55289-0014-30 ")
 ;;693
 ;;21,"55289-0205-30 ")
 ;;694
 ;;21,"55289-0399-03 ")
 ;;695
 ;;21,"55289-0399-10 ")
 ;;696
 ;;21,"55289-0399-14 ")
 ;;697
 ;;21,"55289-0399-30 ")
 ;;698
 ;;21,"55289-0399-60 ")
 ;;699
 ;;21,"55289-0399-90 ")
 ;;700
 ;;21,"55289-0419-01 ")
 ;;701
 ;;21,"55289-0419-06 ")
 ;;702
 ;;21,"55289-0419-10 ")
 ;;703
 ;;21,"55289-0419-14 ")
 ;;704
 ;;21,"55289-0419-15 ")
 ;;705
 ;;21,"55289-0419-21 ")
 ;;706
 ;;21,"55289-0419-30 ")
 ;;707
 ;;21,"55289-0419-60 ")
 ;;708
 ;;21,"55289-0572-30 ")
 ;;709
 ;;21,"55289-0729-06 ")
 ;;710
 ;;21,"55289-0729-12 ")
 ;;711
 ;;21,"55289-0729-30 ")
 ;;712
 ;;21,"55289-0792-06 ")
 ;;713
 ;;21,"55289-0792-10 ")
 ;;714
 ;;21,"55289-0792-12 ")
 ;;715
 ;;21,"55289-0792-20 ")
 ;;716
 ;;21,"55289-0792-30 ")
 ;;717
 ;;21,"55887-0123-05 ")
 ;;718
 ;;21,"55887-0123-07 ")
 ;;719
 ;;21,"55887-0123-10 ")
 ;;720
 ;;21,"55887-0123-15 ")
 ;;721
 ;;21,"55887-0123-30 ")
 ;;722
 ;;21,"55887-0123-60 ")
 ;;723
 ;;21,"55887-0123-90 ")
 ;;724
 ;;21,"55887-0124-05 ")
 ;;725
 ;;21,"55887-0124-30 ")
 ;;726
 ;;21,"55887-0124-60 ")
 ;;727
 ;;21,"55887-0514-20 ")
 ;;728
 ;;21,"55887-0514-30 ")
 ;;729
 ;;21,"55887-0514-60 ")
 ;;730
 ;;21,"55887-0514-90 ")
 ;;731
 ;;21,"55887-0806-10 ")
 ;;732
 ;;21,"55887-0806-20 ")
 ;;733
 ;;21,"55887-0806-30 ")
 ;;734
 ;;21,"55887-0806-60 ")
 ;;735
 ;;21,"55887-0806-82 ")
 ;;736
 ;;21,"55887-0806-90 ")
 ;;737
 ;;21,"57664-0515-13 ")
 ;;738
 ;;21,"57664-0515-18 ")
 ;;739
 ;;21,"57664-0515-88 ")
 ;;740
 ;;21,"57664-0516-13 ")
 ;;741
 ;;21,"57664-0516-18 ")
 ;;742
 ;;21,"57664-0516-88 ")
 ;;743
 ;;21,"57866-3026-01 ")
 ;;744
 ;;21,"57866-3051-01 ")
 ;;745
 ;;21,"57866-3052-01 ")
 ;;746
 ;;21,"57866-3155-01 ")
 ;;747
 ;;21,"57866-3402-01 ")
 ;;748
 ;;21,"57866-3402-02 ")
 ;;749
 ;;21,"57866-3403-01 ")
 ;;750
 ;;21,"57866-3403-03 ")
 ;;751
 ;;21,"57866-4355-01 ")
 ;;752
 ;;21,"58016-0040-00 ")
 ;;753
 ;;21,"58016-0040-30 ")
 ;;754
 ;;21,"58016-0040-60 ")
 ;;755
 ;;21,"58016-0040-90 ")
 ;;756
 ;;21,"58016-0292-00 ")
 ;;757
 ;;21,"58016-0292-30 ")
 ;;758
 ;;21,"58016-0292-60 ")
 ;;759
 ;;21,"58016-0292-90 ")
 ;;760
 ;;21,"58016-0341-00 ")
 ;;761
 ;;21,"58016-0341-10 ")
 ;;762
 ;;21,"58016-0341-20 ")
 ;;763
 ;;21,"58016-0341-30 ")
 ;;764
 ;;21,"58016-0341-40 ")
 ;;765
 ;;21,"58016-0341-60 ")
 ;;766
 ;;21,"58016-0341-90 ")
 ;;767
 ;;21,"58016-0342-00 ")
 ;;768
 ;;21,"58016-0342-10 ")
 ;;769
 ;;21,"58016-0342-20 ")
 ;;770
 ;;21,"58016-0342-30 ")
 ;;771
 ;;21,"58016-0342-40 ")
 ;;772
 ;;21,"58016-0342-60 ")
 ;;773
 ;;21,"58016-0342-90 ")
 ;;774
 ;;21,"58016-0596-00 ")
 ;;775
 ;;21,"58016-0596-30 ")
 ;;776
 ;;21,"58016-0596-60 ")
 ;;777
 ;;21,"58016-0596-90 ")
 ;;778
 ;;21,"58016-0863-00 ")
 ;;779
 ;;21,"58016-0863-30 ")
 ;;780
 ;;21,"58016-0863-60 ")
 ;;781
 ;;21,"58016-0863-90 ")
 ;;782
 ;;21,"58864-0700-15 ")
 ;;783
 ;;21,"58864-0891-06 ")
 ;;784
 ;;21,"59011-0255-30 ")
 ;;785
 ;;21,"59011-0256-30 ")
 ;;786
 ;;21,"59762-2630-01 ")
 ;;787
 ;;21,"59762-2630-04 ")
 ;;788
 ;;21,"59762-2631-01 ")
 ;;789