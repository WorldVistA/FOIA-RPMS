ATXFBE2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2018;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"037N4E6 ")
 ;;406
 ;;21,"037N4EZ ")
 ;;407
 ;;21,"037N4F6 ")
 ;;408
 ;;21,"037N4FZ ")
 ;;409
 ;;21,"037N4G6 ")
 ;;410
 ;;21,"037N4GZ ")
 ;;411
 ;;21,"037N4Z6 ")
 ;;412
 ;;21,"037N4ZZ ")
 ;;413
 ;;21,"039H00Z ")
 ;;414
 ;;21,"039H0ZX ")
 ;;415
 ;;21,"039H0ZZ ")
 ;;416
 ;;21,"039H30Z ")
 ;;417
 ;;21,"039H3ZX ")
 ;;418
 ;;21,"039H3ZZ ")
 ;;419
 ;;21,"039H40Z ")
 ;;420
 ;;21,"039H4ZX ")
 ;;421
 ;;21,"039H4ZZ ")
 ;;422
 ;;21,"039J00Z ")
 ;;423
 ;;21,"039J0ZX ")
 ;;424
 ;;21,"039J0ZZ ")
 ;;425
 ;;21,"039J30Z ")
 ;;426
 ;;21,"039J3ZX ")
 ;;427
 ;;21,"039J3ZZ ")
 ;;428
 ;;21,"039J40Z ")
 ;;429
 ;;21,"039J4ZX ")
 ;;430
 ;;21,"039J4ZZ ")
 ;;431
 ;;21,"039K00Z ")
 ;;432
 ;;21,"039K0ZX ")
 ;;433
 ;;21,"039K0ZZ ")
 ;;434
 ;;21,"039K30Z ")
 ;;435
 ;;21,"039K3ZX ")
 ;;436
 ;;21,"039K3ZZ ")
 ;;437
 ;;21,"039K40Z ")
 ;;438
 ;;21,"039K4ZX ")
 ;;439
 ;;21,"039K4ZZ ")
 ;;440
 ;;21,"039L00Z ")
 ;;441
 ;;21,"039L0ZX ")
 ;;442
 ;;21,"039L0ZZ ")
 ;;443
 ;;21,"039L30Z ")
 ;;444
 ;;21,"039L3ZX ")
 ;;445
 ;;21,"039L3ZZ ")
 ;;446
 ;;21,"039L40Z ")
 ;;447
 ;;21,"039L4ZX ")
 ;;448
 ;;21,"039L4ZZ ")
 ;;449
 ;;21,"039M00Z ")
 ;;450
 ;;21,"039M0ZX ")
 ;;451
 ;;21,"039M0ZZ ")
 ;;452
 ;;21,"039M30Z ")
 ;;453
 ;;21,"039M3ZX ")
 ;;454
 ;;21,"039M3ZZ ")
 ;;455
 ;;21,"039M40Z ")
 ;;456
 ;;21,"039M4ZX ")
 ;;457
 ;;21,"039M4ZZ ")
 ;;458
 ;;21,"039N00Z ")
 ;;459
 ;;21,"039N0ZX ")
 ;;460
 ;;21,"039N0ZZ ")
 ;;461
 ;;21,"039N30Z ")
 ;;462
 ;;21,"039N3ZX ")
 ;;463
 ;;21,"039N3ZZ ")
 ;;464
 ;;21,"039N40Z ")
 ;;465
 ;;21,"039N4ZX ")
 ;;466
 ;;21,"039N4ZZ ")
 ;;467
 ;;21,"03BH0ZX ")
 ;;468
 ;;21,"03BH0ZZ ")
 ;;469
 ;;21,"03BH3ZX ")
 ;;470
 ;;21,"03BH3ZZ ")
 ;;471
 ;;21,"03BH4ZX ")
 ;;472
 ;;21,"03BH4ZZ ")
 ;;473
 ;;21,"03BJ0ZX ")
 ;;474
 ;;21,"03BJ0ZZ ")
 ;;475
 ;;21,"03BJ3ZX ")
 ;;476
 ;;21,"03BJ3ZZ ")
 ;;477
 ;;21,"03BJ4ZX ")
 ;;478
 ;;21,"03BJ4ZZ ")
 ;;479
 ;;21,"03BK0ZX ")
 ;;480
 ;;21,"03BK0ZZ ")
 ;;481
 ;;21,"03BK3ZX ")
 ;;482
 ;;21,"03BK3ZZ ")
 ;;483
 ;;21,"03BK4ZX ")
 ;;484
 ;;21,"03BK4ZZ ")
 ;;485
 ;;21,"03BL0ZX ")
 ;;486
 ;;21,"03BL0ZZ ")
 ;;487
 ;;21,"03BL3ZX ")
 ;;488
 ;;21,"03BL3ZZ ")
 ;;489
 ;;21,"03BL4ZX ")
 ;;490
 ;;21,"03BL4ZZ ")
 ;;491
 ;;21,"03BM0ZX ")
 ;;492
 ;;21,"03BM0ZZ ")
 ;;493
 ;;21,"03BM3ZX ")
 ;;494
 ;;21,"03BM3ZZ ")
 ;;495
 ;;21,"03BM4ZX ")
 ;;496
 ;;21,"03BM4ZZ ")
 ;;497
 ;;21,"03BN0ZX ")
 ;;498
 ;;21,"03BN0ZZ ")
 ;;499
 ;;21,"03BN3ZX ")
 ;;500
 ;;21,"03BN3ZZ ")
 ;;501
 ;;21,"03BN4ZX ")
 ;;502
 ;;21,"03BN4ZZ ")
 ;;503
 ;;21,"03CH0Z6 ")
 ;;504
 ;;21,"03CH0ZZ ")
 ;;505
 ;;21,"03CH3Z6 ")
 ;;506
 ;;21,"03CH3ZZ ")
 ;;507
 ;;21,"03CH4Z6 ")
 ;;508
 ;;21,"03CH4ZZ ")
 ;;509
 ;;21,"03CJ0Z6 ")
 ;;510
 ;;21,"03CJ0ZZ ")
 ;;511
 ;;21,"03CJ3Z6 ")
 ;;512
 ;;21,"03CJ3ZZ ")
 ;;513
 ;;21,"03CJ4Z6 ")
 ;;514
 ;;21,"03CJ4ZZ ")
 ;;515
 ;;21,"03CK0Z6 ")
 ;;516
 ;;21,"03CK0ZZ ")
 ;;517
 ;;21,"03CK3Z6 ")
 ;;518
 ;;21,"03CK3ZZ ")
 ;;519
 ;;21,"03CK4Z6 ")
 ;;520
 ;;21,"03CK4ZZ ")
 ;;521
 ;;21,"03CL0Z6 ")
 ;;522
 ;;21,"03CL0ZZ ")
 ;;523
 ;;21,"03CL3Z6 ")
 ;;524
 ;;21,"03CL3ZZ ")
 ;;525
 ;;21,"03CL4Z6 ")
 ;;526
 ;;21,"03CL4ZZ ")
 ;;527
 ;;21,"03CM0Z6 ")
 ;;528
 ;;21,"03CM0ZZ ")
 ;;529
 ;;21,"03CM3Z6 ")
 ;;530
 ;;21,"03CM3ZZ ")
 ;;531
 ;;21,"03CM4Z6 ")
 ;;532
 ;;21,"03CM4ZZ ")
 ;;533
 ;;21,"03CN0Z6 ")
 ;;534
 ;;21,"03CN0ZZ ")
 ;;535
 ;;21,"03CN3Z6 ")
 ;;536
 ;;21,"03CN3ZZ ")
 ;;537
 ;;21,"03CN4Z6 ")
 ;;538
 ;;21,"03CN4ZZ ")
 ;;539
 ;;21,"03HH03Z ")
 ;;540
 ;;21,"03HH0DZ ")
 ;;541
 ;;21,"03HH33Z ")
 ;;542
 ;;21,"03HH3DZ ")
 ;;543
 ;;21,"03HH43Z ")
 ;;544
 ;;21,"03HH4DZ ")
 ;;545
 ;;21,"03HJ03Z ")
 ;;546
 ;;21,"03HJ0DZ ")
 ;;547
 ;;21,"03HJ33Z ")
 ;;548
 ;;21,"03HJ3DZ ")
 ;;549
 ;;21,"03HJ43Z ")
 ;;550
 ;;21,"03HJ4DZ ")
 ;;551
 ;;21,"03HK03Z ")
 ;;552
 ;;21,"03HK0DZ ")
 ;;553
 ;;21,"03HK0MZ ")
 ;;554
 ;;21,"03HK33Z ")
 ;;555
 ;;21,"03HK3DZ ")
 ;;556
 ;;21,"03HK3MZ ")
 ;;557
 ;;21,"03HK43Z ")
 ;;558
 ;;21,"03HK4DZ ")
 ;;559
 ;;21,"03HK4MZ ")
 ;;560
 ;;21,"03HL03Z ")
 ;;561
 ;;21,"03HL0DZ ")
 ;;562
 ;;21,"03HL0MZ ")
 ;;563
 ;;21,"03HL33Z ")
 ;;564
 ;;21,"03HL3DZ ")
 ;;565
 ;;21,"03HL3MZ ")
 ;;566
 ;;21,"03HL43Z ")
 ;;567
 ;;21,"03HL4DZ ")
 ;;568
 ;;21,"03HL4MZ ")
 ;;569
 ;;21,"03HM03Z ")
 ;;570
 ;;21,"03HM0DZ ")
 ;;571
 ;;21,"03HM33Z ")
 ;;572
 ;;21,"03HM3DZ ")
 ;;573
 ;;21,"03HM43Z ")
 ;;574
 ;;21,"03HM4DZ ")
 ;;575
 ;;21,"03HN03Z ")
 ;;576
 ;;21,"03HN0DZ ")
 ;;577
 ;;21,"03HN33Z ")
 ;;578
 ;;21,"03HN3DZ ")
 ;;579
 ;;21,"03HN43Z ")
 ;;580
 ;;21,"03HN4DZ ")
 ;;581
 ;;21,"03LH0BZ ")
 ;;582
 ;;21,"03LH0CZ ")
 ;;583
 ;;21,"03LH0DZ ")
 ;;584
 ;;21,"03LH0ZZ ")
 ;;585
 ;;21,"03LH3BZ ")
 ;;586
 ;;21,"03LH3CZ ")
 ;;587
 ;;21,"03LH3DZ ")
 ;;588
 ;;21,"03LH3ZZ ")
 ;;589
 ;;21,"03LH4BZ ")
 ;;590
 ;;21,"03LH4CZ ")
 ;;591
 ;;21,"03LH4DZ ")
 ;;592
 ;;21,"03LH4ZZ ")
 ;;593
 ;;21,"03LJ0BZ ")
 ;;594
 ;;21,"03LJ0CZ ")
 ;;595
 ;;21,"03LJ0DZ ")
 ;;596
 ;;21,"03LJ0ZZ ")
 ;;597
 ;;21,"03LJ3BZ ")
 ;;598
 ;;21,"03LJ3CZ ")
 ;;599
 ;;21,"03LJ3DZ ")
 ;;600
 ;;21,"03LJ3ZZ ")
 ;;601
 ;;21,"03LJ4BZ ")
 ;;602
 ;;21,"03LJ4CZ ")
 ;;603
 ;;21,"03LJ4DZ ")
 ;;604
 ;;21,"03LJ4ZZ ")
 ;;605
 ;;21,"03LK0BZ ")
 ;;606
 ;;21,"03LK0CZ ")
 ;;607
 ;;21,"03LK0DZ ")
 ;;608
 ;;21,"03LK0ZZ ")
 ;;609
 ;;21,"03LK3BZ ")
 ;;610
 ;;21,"03LK3CZ ")
 ;;611
 ;;21,"03LK3DZ ")
 ;;612
 ;;21,"03LK3ZZ ")
 ;;613
 ;;21,"03LK4BZ ")
 ;;614
 ;;21,"03LK4CZ ")
 ;;615
 ;;21,"03LK4DZ ")
 ;;616
 ;;21,"03LK4ZZ ")
 ;;617
 ;;21,"03LL0BZ ")
 ;;618
 ;;21,"03LL0CZ ")
 ;;619
 ;;21,"03LL0DZ ")
 ;;620
 ;;21,"03LL0ZZ ")
 ;;621
 ;;21,"03LL3BZ ")
 ;;622
 ;;21,"03LL3CZ ")
 ;;623
 ;;21,"03LL3DZ ")
 ;;624
 ;;21,"03LL3ZZ ")
 ;;625
 ;;21,"03LL4BZ ")
 ;;626
 ;;21,"03LL4CZ ")
 ;;627
 ;;21,"03LL4DZ ")
 ;;628
 ;;21,"03LL4ZZ ")
 ;;629
 ;;21,"03LM0BZ ")
 ;;630
 ;;21,"03LM0CZ ")
 ;;631
 ;;21,"03LM0DZ ")
 ;;632
 ;;21,"03LM0ZZ ")
 ;;633
 ;;21,"03LM3BZ ")
 ;;634
 ;;21,"03LM3CZ ")
 ;;635
 ;;21,"03LM3DZ ")
 ;;636
 ;;21,"03LM3ZZ ")
 ;;637
 ;;21,"03LM4BZ ")
 ;;638
 ;;21,"03LM4CZ ")
 ;;639
 ;;21,"03LM4DZ ")
 ;;640
 ;;21,"03LM4ZZ ")
 ;;641
 ;;21,"03LN0BZ ")
 ;;642
 ;;21,"03LN0CZ ")
 ;;643
 ;;21,"03LN0DZ ")
 ;;644
 ;;21,"03LN0ZZ ")
 ;;645
 ;;21,"03LN3BZ ")
 ;;646
 ;;21,"03LN3CZ ")
 ;;647
 ;;21,"03LN3DZ ")
 ;;648
 ;;21,"03LN3ZZ ")
 ;;649
 ;;21,"03LN4BZ ")
 ;;650
 ;;21,"03LN4CZ ")
 ;;651
 ;;21,"03LN4DZ ")
 ;;652
 ;;21,"03LN4ZZ ")
 ;;653
 ;;21,"03NH0ZZ ")
 ;;654
 ;;21,"03NH3ZZ ")
 ;;655
 ;;21,"03NH4ZZ ")
 ;;656
 ;;21,"03NJ0ZZ ")
 ;;657
 ;;21,"03NJ3ZZ ")
 ;;658
 ;;21,"03NJ4ZZ ")
 ;;659
 ;;21,"03NK0ZZ ")
 ;;660
 ;;21,"03NK3ZZ ")
 ;;661
 ;;21,"03NK4ZZ ")
 ;;662
 ;;21,"03NL0ZZ ")
 ;;663
 ;;21,"03NL3ZZ ")
 ;;664
 ;;21,"03NL4ZZ ")
 ;;665
 ;;21,"03NM0ZZ ")
 ;;666
 ;;21,"03NM3ZZ ")
 ;;667
 ;;21,"03NM4ZZ ")
 ;;668
 ;;21,"03NN0ZZ ")
 ;;669
 ;;21,"03NN3ZZ ")
 ;;670
 ;;21,"03NN4ZZ ")
 ;;671
 ;;21,"03QH0ZZ ")
 ;;672
 ;;21,"03QH3ZZ ")
 ;;673
 ;;21,"03QH4ZZ ")
 ;;674
 ;;21,"03QJ0ZZ ")
 ;;675
 ;;21,"03QJ3ZZ ")
 ;;676
 ;;21,"03QJ4ZZ ")
 ;;677
 ;;21,"03QK0ZZ ")
 ;;678
 ;;21,"03QK3ZZ ")
 ;;679
 ;;21,"03QK4ZZ ")
 ;;680
 ;;21,"03QL0ZZ ")
 ;;681
 ;;21,"03QL3ZZ ")
 ;;682
 ;;21,"03QL4ZZ ")
 ;;683
 ;;21,"03QM0ZZ ")
 ;;684
 ;;21,"03QM3ZZ ")
 ;;685
 ;;21,"03QM4ZZ ")
 ;;686
 ;;21,"03QN0ZZ ")
 ;;687
 ;;21,"03QN3ZZ ")
 ;;688
 ;;21,"03QN4ZZ ")
 ;;689
 ;;21,"03RH07Z ")
 ;;690
 ;;21,"03RH0JZ ")
 ;;691
 ;;21,"03RH0KZ ")
 ;;692
 ;;21,"03RH47Z ")
 ;;693
 ;;21,"03RH4JZ ")
 ;;694
 ;;21,"03RH4KZ ")
 ;;695
 ;;21,"03RJ07Z ")
 ;;696
 ;;21,"03RJ0JZ ")
 ;;697
 ;;21,"03RJ0KZ ")
 ;;698
 ;;21,"03RJ47Z ")
 ;;699
 ;;21,"03RJ4JZ ")
 ;;700
 ;;21,"03RJ4KZ ")
 ;;701
 ;;21,"03RK07Z ")
 ;;702
 ;;21,"03RK0JZ ")
 ;;703
 ;;21,"03RK0KZ ")
 ;;704
 ;;21,"03RK47Z ")
 ;;705
 ;;21,"03RK4JZ ")
 ;;706
 ;;21,"03RK4KZ ")
 ;;707
 ;;21,"03RL07Z ")
 ;;708
 ;;21,"03RL0JZ ")
 ;;709
 ;;21,"03RL0KZ ")
 ;;710
 ;;21,"03RL47Z ")
 ;;711
 ;;21,"03RL4JZ ")
 ;;712
 ;;21,"03RL4KZ ")
 ;;713
 ;;21,"03RM07Z ")
 ;;714
 ;;21,"03RM0JZ ")
 ;;715
 ;;21,"03RM0KZ ")
 ;;716
 ;;21,"03RM47Z ")
 ;;717
 ;;21,"03RM4JZ ")
 ;;718
 ;;21,"03RM4KZ ")
 ;;719
 ;;21,"03RN07Z ")
 ;;720
 ;;21,"03RN0JZ ")
 ;;721
 ;;21,"03RN0KZ ")
 ;;722
 ;;21,"03RN47Z ")
 ;;723
 ;;21,"03RN4JZ ")
 ;;724
 ;;21,"03RN4KZ ")
 ;;725
 ;;21,"03SH0ZZ ")
 ;;726
 ;;21,"03SH3ZZ ")
 ;;727
 ;;21,"03SH4ZZ ")
 ;;728
 ;;21,"03SJ0ZZ ")
 ;;729
 ;;21,"03SJ3ZZ ")
 ;;730
 ;;21,"03SJ4ZZ ")
 ;;731
 ;;21,"03SK0ZZ ")
 ;;732
 ;;21,"03SK3ZZ ")
 ;;733
 ;;21,"03SK4ZZ ")
 ;;734
 ;;21,"03SL0ZZ ")
 ;;735
 ;;21,"03SL3ZZ ")
 ;;736
 ;;21,"03SL4ZZ ")
 ;;737
 ;;21,"03SM0ZZ ")
 ;;738
 ;;21,"03SM3ZZ ")
 ;;739
 ;;21,"03SM4ZZ ")
 ;;740
 ;;21,"03SN0ZZ ")
 ;;741
 ;;21,"03SN3ZZ ")
 ;;742
 ;;21,"03SN4ZZ ")
 ;;743
 ;;21,"03UH07Z ")
 ;;744
 ;;21,"03UH0JZ ")
 ;;745
 ;;21,"03UH0KZ ")
 ;;746
 ;;21,"03UH37Z ")
 ;;747
 ;;21,"03UH3JZ ")
 ;;748
 ;;21,"03UH3KZ ")
 ;;749
 ;;21,"03UH47Z ")
 ;;750
 ;;21,"03UH4JZ ")
 ;;751
 ;;21,"03UH4KZ ")
 ;;752
 ;;21,"03UJ07Z ")
 ;;753
 ;;21,"03UJ0JZ ")
 ;;754
 ;;21,"03UJ0KZ ")
 ;;755
 ;;21,"03UJ37Z ")
 ;;756
 ;;21,"03UJ3JZ ")
 ;;757
 ;;21,"03UJ3KZ ")
 ;;758
 ;;21,"03UJ47Z ")
 ;;759
 ;;21,"03UJ4JZ ")
 ;;760
 ;;21,"03UJ4KZ ")
 ;;761
 ;;21,"03UK07Z ")
 ;;762
 ;;21,"03UK0JZ ")
 ;;763
 ;;21,"03UK0KZ ")
 ;;764
 ;;21,"03UK37Z ")
 ;;765
 ;;21,"03UK3JZ ")
 ;;766
 ;;21,"03UK3KZ ")
 ;;767
 ;;21,"03UK47Z ")
 ;;768
 ;;21,"03UK4JZ ")
 ;;769
 ;;21,"03UK4KZ ")
 ;;770
 ;;21,"03UL07Z ")
 ;;771
 ;;21,"03UL0JZ ")
 ;;772
 ;;21,"03UL0KZ ")
 ;;773
 ;;21,"03UL37Z ")
 ;;774
 ;;21,"03UL3JZ ")
 ;;775
 ;;21,"03UL3KZ ")
 ;;776
 ;;21,"03UL47Z ")
 ;;777
 ;;21,"03UL4JZ ")
 ;;778
 ;;21,"03UL4KZ ")
 ;;779
 ;;21,"03UM07Z ")
 ;;780
 ;;21,"03UM0JZ ")
 ;;781
 ;;21,"03UM0KZ ")
 ;;782
 ;;21,"03UM37Z ")
 ;;783
 ;;21,"03UM3JZ ")
 ;;784
 ;;21,"03UM3KZ ")
 ;;785
 ;;21,"03UM47Z ")
 ;;786
 ;;21,"03UM4JZ ")
 ;;787
 ;;21,"03UM4KZ ")
 ;;788
 ;;21,"03UN07Z ")
 ;;789
 ;;21,"03UN0JZ ")
 ;;790
 ;;21,"03UN0KZ ")
 ;;791
 ;;21,"03UN37Z ")
 ;;792
 ;;21,"03UN3JZ ")
 ;;793
 ;;21,"03UN3KZ ")
 ;;794
 ;;21,"03UN47Z ")
 ;;795
 ;;21,"03UN4JZ ")
 ;;796
 ;;21,"03UN4KZ ")
 ;;797
 ;;21,"03VH0BZ ")
 ;;798
 ;;21,"03VH0CZ ")
 ;;799
 ;;21,"03VH0DZ ")
 ;;800
 ;;21,"03VH0ZZ ")
 ;;801
 ;;21,"03VH3BZ ")
 ;;802
 ;;21,"03VH3CZ ")
 ;;803
 ;;21,"03VH3DZ ")
 ;;804
 ;;21,"03VH3ZZ ")
 ;;805
 ;;21,"03VH4BZ ")
 ;;806
 ;;21,"03VH4CZ ")
 ;;807
 ;;21,"03VH4DZ ")
 ;;808
 ;;21,"03VH4ZZ ")
 ;;809
 ;;21,"03VJ0BZ ")
 ;;810
 ;;21,"03VJ0CZ ")
 ;;811
 ;;21,"03VJ0DZ ")
 ;;812
 ;;21,"03VJ0ZZ ")
 ;;813
 ;;21,"03VJ3BZ ")
 ;;814