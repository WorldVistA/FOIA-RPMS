ATXDBH2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 20, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"O09.829 ")
 ;;419
 ;;21,"O09.891 ")
 ;;420
 ;;21,"O09.892 ")
 ;;421
 ;;21,"O09.893 ")
 ;;422
 ;;21,"O09.899 ")
 ;;423
 ;;21,"O09.90 ")
 ;;424
 ;;21,"O09.91 ")
 ;;425
 ;;21,"O09.92 ")
 ;;426
 ;;21,"O09.93 ")
 ;;427
 ;;21,"O10.011 ")
 ;;428
 ;;21,"O10.012 ")
 ;;429
 ;;21,"O10.013 ")
 ;;430
 ;;21,"O10.02 ")
 ;;431
 ;;21,"O10.111 ")
 ;;432
 ;;21,"O10.112 ")
 ;;433
 ;;21,"O10.113 ")
 ;;434
 ;;21,"O10.119 ")
 ;;435
 ;;21,"O10.12 ")
 ;;436
 ;;21,"O10.13 ")
 ;;437
 ;;21,"O10.211 ")
 ;;438
 ;;21,"O10.212 ")
 ;;439
 ;;21,"O10.213 ")
 ;;440
 ;;21,"O10.219 ")
 ;;441
 ;;21,"O10.22 ")
 ;;442
 ;;21,"O10.23 ")
 ;;443
 ;;21,"O10.311 ")
 ;;444
 ;;21,"O10.312 ")
 ;;445
 ;;21,"O10.313 ")
 ;;446
 ;;21,"O10.319 ")
 ;;447
 ;;21,"O10.32 ")
 ;;448
 ;;21,"O10.33 ")
 ;;449
 ;;21,"O10.411 ")
 ;;450
 ;;21,"O10.412 ")
 ;;451
 ;;21,"O10.413 ")
 ;;452
 ;;21,"O10.419 ")
 ;;453
 ;;21,"O10.42 ")
 ;;454
 ;;21,"O10.43 ")
 ;;455
 ;;21,"O10.911 ")
 ;;456
 ;;21,"O10.912 ")
 ;;457
 ;;21,"O10.913 ")
 ;;458
 ;;21,"O10.92 ")
 ;;459
 ;;21,"O10.93 ")
 ;;460
 ;;21,"O11.1 ")
 ;;461
 ;;21,"O11.2 ")
 ;;462
 ;;21,"O11.3 ")
 ;;463
 ;;21,"O11.9 ")
 ;;464
 ;;21,"O12.00 ")
 ;;465
 ;;21,"O12.01 ")
 ;;466
 ;;21,"O12.02 ")
 ;;467
 ;;21,"O12.03 ")
 ;;468
 ;;21,"O12.10 ")
 ;;469
 ;;21,"O12.11 ")
 ;;470
 ;;21,"O12.12 ")
 ;;471
 ;;21,"O12.13 ")
 ;;472
 ;;21,"O12.20 ")
 ;;473
 ;;21,"O12.21 ")
 ;;474
 ;;21,"O12.22 ")
 ;;475
 ;;21,"O12.23 ")
 ;;476
 ;;21,"O13.1 ")
 ;;477
 ;;21,"O13.2 ")
 ;;478
 ;;21,"O13.3 ")
 ;;479
 ;;21,"O13.9 ")
 ;;480
 ;;21,"O14.00 ")
 ;;481
 ;;21,"O14.02 ")
 ;;482
 ;;21,"O14.03 ")
 ;;483
 ;;21,"O14.10 ")
 ;;484
 ;;21,"O14.12 ")
 ;;485
 ;;21,"O14.13 ")
 ;;486
 ;;21,"O14.20 ")
 ;;487
 ;;21,"O14.22 ")
 ;;488
 ;;21,"O14.23 ")
 ;;489
 ;;21,"O14.90 ")
 ;;490
 ;;21,"O14.92 ")
 ;;491
 ;;21,"O14.93 ")
 ;;492
 ;;21,"O15.00 ")
 ;;493
 ;;21,"O15.02 ")
 ;;494
 ;;21,"O15.03 ")
 ;;495
 ;;21,"O15.1 ")
 ;;496
 ;;21,"O15.2 ")
 ;;497
 ;;21,"O15.9 ")
 ;;498
 ;;21,"O16.1 ")
 ;;499
 ;;21,"O16.2 ")
 ;;500
 ;;21,"O16.3 ")
 ;;501
 ;;21,"O16.9 ")
 ;;502
 ;;21,"O20.0 ")
 ;;503
 ;;21,"O20.8 ")
 ;;504
 ;;21,"O20.9 ")
 ;;505
 ;;21,"O21.0 ")
 ;;506
 ;;21,"O21.1 ")
 ;;507
 ;;21,"O21.2 ")
 ;;508
 ;;21,"O21.8 ")
 ;;509
 ;;21,"O21.9 ")
 ;;510
 ;;21,"O22.00 ")
 ;;511
 ;;21,"O22.01 ")
 ;;512
 ;;21,"O22.02 ")
 ;;513
 ;;21,"O22.03 ")
 ;;514
 ;;21,"O22.10 ")
 ;;515
 ;;21,"O22.11 ")
 ;;516
 ;;21,"O22.12 ")
 ;;517
 ;;21,"O22.13 ")
 ;;518
 ;;21,"O22.20 ")
 ;;519
 ;;21,"O22.21 ")
 ;;520
 ;;21,"O22.22 ")
 ;;521
 ;;21,"O22.23 ")
 ;;522
 ;;21,"O22.30 ")
 ;;523
 ;;21,"O22.31 ")
 ;;524
 ;;21,"O22.32 ")
 ;;525
 ;;21,"O22.33 ")
 ;;526
 ;;21,"O22.40 ")
 ;;527
 ;;21,"O22.41 ")
 ;;528
 ;;21,"O22.42 ")
 ;;529
 ;;21,"O22.43 ")
 ;;530
 ;;21,"O22.50 ")
 ;;531
 ;;21,"O22.51 ")
 ;;532
 ;;21,"O22.52 ")
 ;;533
 ;;21,"O22.53 ")
 ;;534
 ;;21,"O22.8X1 ")
 ;;535
 ;;21,"O22.8X2 ")
 ;;536
 ;;21,"O22.8X3 ")
 ;;537
 ;;21,"O22.8X9 ")
 ;;538
 ;;21,"O22.90 ")
 ;;539
 ;;21,"O22.91 ")
 ;;540
 ;;21,"O22.92 ")
 ;;541
 ;;21,"O22.93 ")
 ;;542
 ;;21,"O23.00 ")
 ;;543
 ;;21,"O23.01 ")
 ;;544
 ;;21,"O23.02 ")
 ;;545
 ;;21,"O23.03 ")
 ;;546
 ;;21,"O23.10 ")
 ;;547
 ;;21,"O23.11 ")
 ;;548
 ;;21,"O23.12 ")
 ;;549
 ;;21,"O23.13 ")
 ;;550
 ;;21,"O23.20 ")
 ;;551
 ;;21,"O23.21 ")
 ;;552
 ;;21,"O23.22 ")
 ;;553
 ;;21,"O23.23 ")
 ;;554
 ;;21,"O23.30 ")
 ;;555
 ;;21,"O23.31 ")
 ;;556
 ;;21,"O23.32 ")
 ;;557
 ;;21,"O23.33 ")
 ;;558
 ;;21,"O23.40 ")
 ;;559
 ;;21,"O23.41 ")
 ;;560
 ;;21,"O23.42 ")
 ;;561
 ;;21,"O23.43 ")
 ;;562
 ;;21,"O23.511 ")
 ;;563
 ;;21,"O23.512 ")
 ;;564
 ;;21,"O23.513 ")
 ;;565
 ;;21,"O23.519 ")
 ;;566
 ;;21,"O23.521 ")
 ;;567
 ;;21,"O23.522 ")
 ;;568
 ;;21,"O23.523 ")
 ;;569
 ;;21,"O23.529 ")
 ;;570
 ;;21,"O23.591 ")
 ;;571
 ;;21,"O23.592 ")
 ;;572
 ;;21,"O23.593 ")
 ;;573
 ;;21,"O23.599 ")
 ;;574
 ;;21,"O23.90 ")
 ;;575
 ;;21,"O23.91 ")
 ;;576
 ;;21,"O23.92 ")
 ;;577
 ;;21,"O23.93 ")
 ;;578
 ;;21,"O24.011 ")
 ;;579
 ;;21,"O24.012 ")
 ;;580
 ;;21,"O24.013 ")
 ;;581
 ;;21,"O24.019 ")
 ;;582
 ;;21,"O24.02 ")
 ;;583
 ;;21,"O24.03 ")
 ;;584
 ;;21,"O24.111 ")
 ;;585
 ;;21,"O24.112 ")
 ;;586
 ;;21,"O24.113 ")
 ;;587
 ;;21,"O24.119 ")
 ;;588
 ;;21,"O24.12 ")
 ;;589
 ;;21,"O24.13 ")
 ;;590
 ;;21,"O24.311 ")
 ;;591
 ;;21,"O24.312 ")
 ;;592
 ;;21,"O24.313 ")
 ;;593
 ;;21,"O24.319 ")
 ;;594
 ;;21,"O24.32 ")
 ;;595
 ;;21,"O24.33 ")
 ;;596
 ;;21,"O24.410 ")
 ;;597
 ;;21,"O24.414 ")
 ;;598
 ;;21,"O24.419 ")
 ;;599
 ;;21,"O24.420 ")
 ;;600
 ;;21,"O24.424 ")
 ;;601
 ;;21,"O24.429 ")
 ;;602
 ;;21,"O24.430 ")
 ;;603
 ;;21,"O24.434 ")
 ;;604
 ;;21,"O24.439 ")
 ;;605
 ;;21,"O24.811 ")
 ;;606
 ;;21,"O24.812 ")
 ;;607
 ;;21,"O24.813 ")
 ;;608
 ;;21,"O24.819 ")
 ;;609
 ;;21,"O24.82 ")
 ;;610
 ;;21,"O24.83 ")
 ;;611
 ;;21,"O24.911 ")
 ;;612
 ;;21,"O24.912 ")
 ;;613
 ;;21,"O24.913 ")
 ;;614
 ;;21,"O24.919 ")
 ;;615
 ;;21,"O24.92 ")
 ;;616
 ;;21,"O24.93 ")
 ;;617
 ;;21,"O25.10 ")
 ;;618
 ;;21,"O25.11 ")
 ;;619
 ;;21,"O25.12 ")
 ;;620
 ;;21,"O25.13 ")
 ;;621
 ;;21,"O25.2 ")
 ;;622
 ;;21,"O25.3 ")
 ;;623
 ;;21,"O26.00 ")
 ;;624
 ;;21,"O26.01 ")
 ;;625
 ;;21,"O26.02 ")
 ;;626
 ;;21,"O26.03 ")
 ;;627
 ;;21,"O26.10 ")
 ;;628
 ;;21,"O26.11 ")
 ;;629
 ;;21,"O26.12 ")
 ;;630
 ;;21,"O26.13 ")
 ;;631
 ;;21,"O26.20 ")
 ;;632
 ;;21,"O26.21 ")
 ;;633
 ;;21,"O26.22 ")
 ;;634
 ;;21,"O26.23 ")
 ;;635
 ;;21,"O26.30 ")
 ;;636
 ;;21,"O26.31 ")
 ;;637
 ;;21,"O26.32 ")
 ;;638
 ;;21,"O26.33 ")
 ;;639
 ;;21,"O26.40 ")
 ;;640
 ;;21,"O26.41 ")
 ;;641
 ;;21,"O26.42 ")
 ;;642
 ;;21,"O26.43 ")
 ;;643
 ;;21,"O26.50 ")
 ;;644
 ;;21,"O26.51 ")
 ;;645
 ;;21,"O26.52 ")
 ;;646
 ;;21,"O26.53 ")
 ;;647
 ;;21,"O26.611 ")
 ;;648
 ;;21,"O26.612 ")
 ;;649
 ;;21,"O26.613 ")
 ;;650
 ;;21,"O26.619 ")
 ;;651
 ;;21,"O26.62 ")
 ;;652
 ;;21,"O26.63 ")
 ;;653
 ;;21,"O26.711 ")
 ;;654
 ;;21,"O26.712 ")
 ;;655
 ;;21,"O26.713 ")
 ;;656
 ;;21,"O26.719 ")
 ;;657
 ;;21,"O26.72 ")
 ;;658
 ;;21,"O26.73 ")
 ;;659
 ;;21,"O26.811 ")
 ;;660
 ;;21,"O26.812 ")
 ;;661
 ;;21,"O26.813 ")
 ;;662
 ;;21,"O26.819 ")
 ;;663
 ;;21,"O26.821 ")
 ;;664
 ;;21,"O26.822 ")
 ;;665
 ;;21,"O26.823 ")
 ;;666
 ;;21,"O26.829 ")
 ;;667
 ;;21,"O26.831 ")
 ;;668
 ;;21,"O26.832 ")
 ;;669
 ;;21,"O26.833 ")
 ;;670
 ;;21,"O26.839 ")
 ;;671
 ;;21,"O26.841 ")
 ;;672
 ;;21,"O26.842 ")
 ;;673
 ;;21,"O26.843 ")
 ;;674
 ;;21,"O26.849 ")
 ;;675
 ;;21,"O26.851 ")
 ;;676
 ;;21,"O26.852 ")
 ;;677
 ;;21,"O26.853 ")
 ;;678
 ;;21,"O26.859 ")
 ;;679
 ;;21,"O26.86 ")
 ;;680
 ;;21,"O26.872 ")
 ;;681
 ;;21,"O26.873 ")
 ;;682
 ;;21,"O26.879 ")
 ;;683
 ;;21,"O26.891 ")
 ;;684
 ;;21,"O26.892 ")
 ;;685
 ;;21,"O26.893 ")
 ;;686
 ;;21,"O26.899 ")
 ;;687
 ;;21,"O26.90 ")
 ;;688
 ;;21,"O26.91 ")
 ;;689
 ;;21,"O26.92 ")
 ;;690
 ;;21,"O26.93 ")
 ;;691
 ;;21,"O29.011 ")
 ;;692
 ;;21,"O29.012 ")
 ;;693
 ;;21,"O29.013 ")
 ;;694
 ;;21,"O29.019 ")
 ;;695
 ;;21,"O29.021 ")
 ;;696
 ;;21,"O29.022 ")
 ;;697
 ;;21,"O29.023 ")
 ;;698
 ;;21,"O29.029 ")
 ;;699
 ;;21,"O29.091 ")
 ;;700
 ;;21,"O29.092 ")
 ;;701
 ;;21,"O29.093 ")
 ;;702
 ;;21,"O29.099 ")
 ;;703
 ;;21,"O29.111 ")
 ;;704
 ;;21,"O29.112 ")
 ;;705
 ;;21,"O29.113 ")
 ;;706
 ;;21,"O29.119 ")
 ;;707
 ;;21,"O29.121 ")
 ;;708
 ;;21,"O29.122 ")
 ;;709
 ;;21,"O29.123 ")
 ;;710
 ;;21,"O29.129 ")
 ;;711
 ;;21,"O29.191 ")
 ;;712
 ;;21,"O29.192 ")
 ;;713
 ;;21,"O29.193 ")
 ;;714
 ;;21,"O29.199 ")
 ;;715
 ;;21,"O29.211 ")
 ;;716
 ;;21,"O29.212 ")
 ;;717
 ;;21,"O29.213 ")
 ;;718
 ;;21,"O29.219 ")
 ;;719
 ;;21,"O29.291 ")
 ;;720
 ;;21,"O29.292 ")
 ;;721
 ;;21,"O29.293 ")
 ;;722
 ;;21,"O29.299 ")
 ;;723
 ;;21,"O29.3X1 ")
 ;;724
 ;;21,"O29.3X2 ")
 ;;725
 ;;21,"O29.3X3 ")
 ;;726
 ;;21,"O29.3X9 ")
 ;;727
 ;;21,"O29.40 ")
 ;;728
 ;;21,"O29.41 ")
 ;;729
 ;;21,"O29.42 ")
 ;;730
 ;;21,"O29.43 ")
 ;;731
 ;;21,"O29.5X1 ")
 ;;732
 ;;21,"O29.5X2 ")
 ;;733
 ;;21,"O29.5X3 ")
 ;;734
 ;;21,"O29.5X9 ")
 ;;735
 ;;21,"O29.60 ")
 ;;736
 ;;21,"O29.61 ")
 ;;737
 ;;21,"O29.62 ")
 ;;738
 ;;21,"O29.63 ")
 ;;739
 ;;21,"O29.8X1 ")
 ;;740
 ;;21,"O29.8X2 ")
 ;;741
 ;;21,"O29.8X3 ")
 ;;742
 ;;21,"O29.8X9 ")
 ;;743
 ;;21,"O29.90 ")
 ;;744
 ;;21,"O29.91 ")
 ;;745
 ;;21,"O29.92 ")
 ;;746
 ;;21,"O29.93 ")
 ;;747
 ;;21,"O30.001 ")
 ;;748
 ;;21,"O30.002 ")
 ;;749
 ;;21,"O30.003 ")
 ;;750
 ;;21,"O30.009 ")
 ;;751
 ;;21,"O30.011 ")
 ;;752
 ;;21,"O30.012 ")
 ;;753
 ;;21,"O30.013 ")
 ;;754
 ;;21,"O30.019 ")
 ;;755
 ;;21,"O30.031 ")
 ;;756
 ;;21,"O30.032 ")
 ;;757
 ;;21,"O30.033 ")
 ;;758
 ;;21,"O30.039 ")
 ;;759
 ;;21,"O30.041 ")
 ;;760
 ;;21,"O30.042 ")
 ;;761
 ;;21,"O30.043 ")
 ;;762
 ;;21,"O30.049 ")
 ;;763
 ;;21,"O30.091 ")
 ;;764
 ;;21,"O30.092 ")
 ;;765
 ;;21,"O30.093 ")
 ;;766
 ;;21,"O30.099 ")
 ;;767
 ;;21,"O30.101 ")
 ;;768
 ;;21,"O30.102 ")
 ;;769
 ;;21,"O30.103 ")
 ;;770
 ;;21,"O30.109 ")
 ;;771
 ;;21,"O30.111 ")
 ;;772
 ;;21,"O30.112 ")
 ;;773
 ;;21,"O30.113 ")
 ;;774
 ;;21,"O30.119 ")
 ;;775
 ;;21,"O30.121 ")
 ;;776
 ;;21,"O30.122 ")
 ;;777
 ;;21,"O30.123 ")
 ;;778
 ;;21,"O30.129 ")
 ;;779
 ;;21,"O30.191 ")
 ;;780
 ;;21,"O30.192 ")
 ;;781
 ;;21,"O30.193 ")
 ;;782
 ;;21,"O30.199 ")
 ;;783
 ;;21,"O30.201 ")
 ;;784
 ;;21,"O30.202 ")
 ;;785
 ;;21,"O30.203 ")
 ;;786
 ;;21,"O30.209 ")
 ;;787
 ;;21,"O30.211 ")
 ;;788
 ;;21,"O30.212 ")
 ;;789
 ;;21,"O30.213 ")
 ;;790
 ;;21,"O30.219 ")
 ;;791
 ;;21,"O30.221 ")
 ;;792
 ;;21,"O30.222 ")
 ;;793
 ;;21,"O30.223 ")
 ;;794
 ;;21,"O30.229 ")
 ;;795
 ;;21,"O30.291 ")
 ;;796
 ;;21,"O30.292 ")
 ;;797
 ;;21,"O30.293 ")
 ;;798
 ;;21,"O30.299 ")
 ;;799
 ;;21,"O30.801 ")
 ;;800
 ;;21,"O30.802 ")
 ;;801
 ;;21,"O30.803 ")
 ;;802
 ;;21,"O30.809 ")
 ;;803
 ;;21,"O30.811 ")
 ;;804
 ;;21,"O30.812 ")
 ;;805
 ;;21,"O30.813 ")
 ;;806
 ;;21,"O30.819 ")
 ;;807
 ;;21,"O30.821 ")
 ;;808
 ;;21,"O30.822 ")
 ;;809
 ;;21,"O30.823 ")
 ;;810
 ;;21,"O30.829 ")
 ;;811
 ;;21,"O30.891 ")
 ;;812
 ;;21,"O30.892 ")
 ;;813
 ;;21,"O30.893 ")
 ;;814
 ;;21,"O30.899 ")
 ;;815
 ;;21,"O30.90 ")
 ;;816
 ;;21,"O30.91 ")
 ;;817
 ;;21,"O30.92 ")
 ;;818
 ;;21,"O30.93 ")
 ;;819
 ;;21,"O31.00X0 ")
 ;;820
 ;;21,"O31.00X1 ")
 ;;821
 ;;21,"O31.00X2 ")
 ;;822
 ;;21,"O31.00X3 ")
 ;;823
 ;;21,"O31.00X4 ")
 ;;824
 ;;21,"O31.00X5 ")
 ;;825
 ;;21,"O31.00X9 ")
 ;;826
 ;;21,"O31.01X0 ")
 ;;827
 ;;21,"O31.01X1 ")
 ;;828
 ;;21,"O31.01X2 ")
 ;;829
 ;;21,"O31.01X3 ")
 ;;830
 ;;21,"O31.01X4 ")
 ;;831
 ;;21,"O31.01X5 ")
 ;;832
 ;;21,"O31.01X9 ")
 ;;833