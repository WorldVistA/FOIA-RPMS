ATXFCJ2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 19, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"O34.91 ")
 ;;417
 ;;21,"O34.92 ")
 ;;418
 ;;21,"O34.93 ")
 ;;419
 ;;21,"O35.7XX0 ")
 ;;420
 ;;21,"O35.7XX1 ")
 ;;421
 ;;21,"O35.7XX2 ")
 ;;422
 ;;21,"O35.7XX3 ")
 ;;423
 ;;21,"O35.7XX4 ")
 ;;424
 ;;21,"O35.7XX5 ")
 ;;425
 ;;21,"O35.7XX9 ")
 ;;426
 ;;21,"O35.8XX0 ")
 ;;427
 ;;21,"O35.8XX1 ")
 ;;428
 ;;21,"O35.8XX2 ")
 ;;429
 ;;21,"O35.8XX3 ")
 ;;430
 ;;21,"O35.8XX4 ")
 ;;431
 ;;21,"O35.8XX5 ")
 ;;432
 ;;21,"O35.8XX9 ")
 ;;433
 ;;21,"O36.0110 ")
 ;;434
 ;;21,"O36.0120 ")
 ;;435
 ;;21,"O36.0130 ")
 ;;436
 ;;21,"O36.0190 ")
 ;;437
 ;;21,"O36.0910 ")
 ;;438
 ;;21,"O36.0920 ")
 ;;439
 ;;21,"O36.0930 ")
 ;;440
 ;;21,"O36.0990 ")
 ;;441
 ;;21,"O36.1110 ")
 ;;442
 ;;21,"O36.1120 ")
 ;;443
 ;;21,"O36.1130 ")
 ;;444
 ;;21,"O36.1190 ")
 ;;445
 ;;21,"O36.1910 ")
 ;;446
 ;;21,"O36.1920 ")
 ;;447
 ;;21,"O36.1930 ")
 ;;448
 ;;21,"O36.1990 ")
 ;;449
 ;;21,"O36.5110 ")
 ;;450
 ;;21,"O36.5120 ")
 ;;451
 ;;21,"O36.5130 ")
 ;;452
 ;;21,"O36.5190 ")
 ;;453
 ;;21,"O36.5910 ")
 ;;454
 ;;21,"O36.5920 ")
 ;;455
 ;;21,"O36.5930 ")
 ;;456
 ;;21,"O36.5990 ")
 ;;457
 ;;21,"O36.8120 ")
 ;;458
 ;;21,"O36.8130 ")
 ;;459
 ;;21,"O36.8190 ")
 ;;460
 ;;21,"O36.8210 ")
 ;;461
 ;;21,"O36.8220 ")
 ;;462
 ;;21,"O36.8230 ")
 ;;463
 ;;21,"O36.8290 ")
 ;;464
 ;;21,"O36.8910 ")
 ;;465
 ;;21,"O36.8920 ")
 ;;466
 ;;21,"O36.8930 ")
 ;;467
 ;;21,"O36.8990 ")
 ;;468
 ;;21,"O41.1010 ")
 ;;469
 ;;21,"O41.1020 ")
 ;;470
 ;;21,"O41.1030 ")
 ;;471
 ;;21,"O41.1090 ")
 ;;472
 ;;21,"O41.1210 ")
 ;;473
 ;;21,"O41.1220 ")
 ;;474
 ;;21,"O41.1230 ")
 ;;475
 ;;21,"O41.1290 ")
 ;;476
 ;;21,"O41.1410 ")
 ;;477
 ;;21,"O41.1420 ")
 ;;478
 ;;21,"O41.1430 ")
 ;;479
 ;;21,"O41.1490 ")
 ;;480
 ;;21,"O42.00 ")
 ;;481
 ;;21,"O42.011 ")
 ;;482
 ;;21,"O42.012 ")
 ;;483
 ;;21,"O42.013 ")
 ;;484
 ;;21,"O42.02 ")
 ;;485
 ;;21,"O42.10 ")
 ;;486
 ;;21,"O42.111 ")
 ;;487
 ;;21,"O42.112 ")
 ;;488
 ;;21,"O42.113 ")
 ;;489
 ;;21,"O42.12 ")
 ;;490
 ;;21,"O43.011 ")
 ;;491
 ;;21,"O43.019 ")
 ;;492
 ;;21,"O43.101 ")
 ;;493
 ;;21,"O43.102 ")
 ;;494
 ;;21,"O43.103 ")
 ;;495
 ;;21,"O43.199 ")
 ;;496
 ;;21,"O43.211 ")
 ;;497
 ;;21,"O43.212 ")
 ;;498
 ;;21,"O43.213 ")
 ;;499
 ;;21,"O43.221 ")
 ;;500
 ;;21,"O43.222 ")
 ;;501
 ;;21,"O43.223 ")
 ;;502
 ;;21,"O43.231 ")
 ;;503
 ;;21,"O43.232 ")
 ;;504
 ;;21,"O43.233 ")
 ;;505
 ;;21,"O43.239 ")
 ;;506
 ;;21,"O43.811 ")
 ;;507
 ;;21,"O43.812 ")
 ;;508
 ;;21,"O43.813 ")
 ;;509
 ;;21,"O43.819 ")
 ;;510
 ;;21,"O43.91 ")
 ;;511
 ;;21,"O43.92 ")
 ;;512
 ;;21,"O43.93 ")
 ;;513
 ;;21,"O44.00 ")
 ;;514
 ;;21,"O44.01 ")
 ;;515
 ;;21,"O44.02 ")
 ;;516
 ;;21,"O44.03 ")
 ;;517
 ;;21,"O44.10 ")
 ;;518
 ;;21,"O44.11 ")
 ;;519
 ;;21,"O44.12 ")
 ;;520
 ;;21,"O44.13 ")
 ;;521
 ;;21,"O44.20 ")
 ;;522
 ;;21,"O44.21 ")
 ;;523
 ;;21,"O44.22 ")
 ;;524
 ;;21,"O44.23 ")
 ;;525
 ;;21,"O44.30 ")
 ;;526
 ;;21,"O44.31 ")
 ;;527
 ;;21,"O44.32 ")
 ;;528
 ;;21,"O44.33 ")
 ;;529
 ;;21,"O44.40 ")
 ;;530
 ;;21,"O44.41 ")
 ;;531
 ;;21,"O44.42 ")
 ;;532
 ;;21,"O44.43 ")
 ;;533
 ;;21,"O44.50 ")
 ;;534
 ;;21,"O44.51 ")
 ;;535
 ;;21,"O44.52 ")
 ;;536
 ;;21,"O44.53 ")
 ;;537
 ;;21,"O45.001 ")
 ;;538
 ;;21,"O45.002 ")
 ;;539
 ;;21,"O45.003 ")
 ;;540
 ;;21,"O45.011 ")
 ;;541
 ;;21,"O45.012 ")
 ;;542
 ;;21,"O45.013 ")
 ;;543
 ;;21,"O45.021 ")
 ;;544
 ;;21,"O45.022 ")
 ;;545
 ;;21,"O45.023 ")
 ;;546
 ;;21,"O45.091 ")
 ;;547
 ;;21,"O45.092 ")
 ;;548
 ;;21,"O45.093 ")
 ;;549
 ;;21,"O45.91 ")
 ;;550
 ;;21,"O45.92 ")
 ;;551
 ;;21,"O45.93 ")
 ;;552
 ;;21,"O46.001 ")
 ;;553
 ;;21,"O46.002 ")
 ;;554
 ;;21,"O46.003 ")
 ;;555
 ;;21,"O46.009 ")
 ;;556
 ;;21,"O46.011 ")
 ;;557
 ;;21,"O46.012 ")
 ;;558
 ;;21,"O46.013 ")
 ;;559
 ;;21,"O46.019 ")
 ;;560
 ;;21,"O46.021 ")
 ;;561
 ;;21,"O46.022 ")
 ;;562
 ;;21,"O46.023 ")
 ;;563
 ;;21,"O46.029 ")
 ;;564
 ;;21,"O46.091 ")
 ;;565
 ;;21,"O46.092 ")
 ;;566
 ;;21,"O46.093 ")
 ;;567
 ;;21,"O46.099 ")
 ;;568
 ;;21,"O46.90 ")
 ;;569
 ;;21,"O46.91 ")
 ;;570
 ;;21,"O46.92 ")
 ;;571
 ;;21,"O46.93 ")
 ;;572
 ;;21,"O47.00 ")
 ;;573
 ;;21,"O47.02 ")
 ;;574
 ;;21,"O47.03 ")
 ;;575
 ;;21,"O47.1 ")
 ;;576
 ;;21,"O47.9 ")
 ;;577
 ;;21,"O48.0 ")
 ;;578
 ;;21,"O48.1 ")
 ;;579
 ;;21,"O60.00 ")
 ;;580
 ;;21,"O60.02 ")
 ;;581
 ;;21,"O60.03 ")
 ;;582
 ;;21,"O61.0 ")
 ;;583
 ;;21,"O61.1 ")
 ;;584
 ;;21,"O61.9 ")
 ;;585
 ;;21,"O62.0 ")
 ;;586
 ;;21,"O62.1 ")
 ;;587
 ;;21,"O62.2 ")
 ;;588
 ;;21,"O62.3 ")
 ;;589
 ;;21,"O62.4 ")
 ;;590
 ;;21,"O62.9 ")
 ;;591
 ;;21,"O63.0 ")
 ;;592
 ;;21,"O63.1 ")
 ;;593
 ;;21,"O63.2 ")
 ;;594
 ;;21,"O63.9 ")
 ;;595
 ;;21,"O65.4 ")
 ;;596
 ;;21,"O65.5 ")
 ;;597
 ;;21,"O65.9 ")
 ;;598
 ;;21,"O66.0 ")
 ;;599
 ;;21,"O66.1 ")
 ;;600
 ;;21,"O66.40 ")
 ;;601
 ;;21,"O66.5 ")
 ;;602
 ;;21,"O66.8 ")
 ;;603
 ;;21,"O66.9 ")
 ;;604
 ;;21,"O67.0 ")
 ;;605
 ;;21,"O67.8 ")
 ;;606
 ;;21,"O67.9 ")
 ;;607
 ;;21,"O68. ")
 ;;608
 ;;21,"O70.0 ")
 ;;609
 ;;21,"O70.1 ")
 ;;610
 ;;21,"O70.20 ")
 ;;611
 ;;21,"O70.21 ")
 ;;612
 ;;21,"O70.22 ")
 ;;613
 ;;21,"O70.23 ")
 ;;614
 ;;21,"O70.3 ")
 ;;615
 ;;21,"O70.4 ")
 ;;616
 ;;21,"O70.9 ")
 ;;617
 ;;21,"O71.00 ")
 ;;618
 ;;21,"O71.02 ")
 ;;619
 ;;21,"O71.03 ")
 ;;620
 ;;21,"O71.1 ")
 ;;621
 ;;21,"O71.2 ")
 ;;622
 ;;21,"O71.3 ")
 ;;623
 ;;21,"O71.4 ")
 ;;624
 ;;21,"O71.5 ")
 ;;625
 ;;21,"O71.6 ")
 ;;626
 ;;21,"O71.7 ")
 ;;627
 ;;21,"O71.82 ")
 ;;628
 ;;21,"O71.89 ")
 ;;629
 ;;21,"O71.9 ")
 ;;630
 ;;21,"O72.0 ")
 ;;631
 ;;21,"O72.1 ")
 ;;632
 ;;21,"O72.2 ")
 ;;633
 ;;21,"O72.3 ")
 ;;634
 ;;21,"O73.0 ")
 ;;635
 ;;21,"O73.1 ")
 ;;636
 ;;21,"O74.1 ")
 ;;637
 ;;21,"O74.2 ")
 ;;638
 ;;21,"O74.3 ")
 ;;639
 ;;21,"O74.8 ")
 ;;640
 ;;21,"O74.9 ")
 ;;641
 ;;21,"O75.0 ")
 ;;642
 ;;21,"O75.1 ")
 ;;643
 ;;21,"O75.2 ")
 ;;644
 ;;21,"O75.3 ")
 ;;645
 ;;21,"O75.4 ")
 ;;646
 ;;21,"O75.5 ")
 ;;647
 ;;21,"O75.81 ")
 ;;648
 ;;21,"O75.89 ")
 ;;649
 ;;21,"O75.9 ")
 ;;650
 ;;21,"O76. ")
 ;;651
 ;;21,"O77.0 ")
 ;;652
 ;;21,"O80. ")
 ;;653
 ;;21,"O82. ")
 ;;654
 ;;21,"O85. ")
 ;;655
 ;;21,"O86.0 ")
 ;;656
 ;;21,"O86.11 ")
 ;;657
 ;;21,"O86.12 ")
 ;;658
 ;;21,"O86.13 ")
 ;;659
 ;;21,"O86.19 ")
 ;;660
 ;;21,"O86.20 ")
 ;;661
 ;;21,"O86.21 ")
 ;;662
 ;;21,"O86.22 ")
 ;;663
 ;;21,"O86.29 ")
 ;;664
 ;;21,"O86.4 ")
 ;;665
 ;;21,"O86.81 ")
 ;;666
 ;;21,"O86.89 ")
 ;;667
 ;;21,"O87.0 ")
 ;;668
 ;;21,"O87.1 ")
 ;;669
 ;;21,"O87.2 ")
 ;;670
 ;;21,"O87.3 ")
 ;;671
 ;;21,"O87.4 ")
 ;;672
 ;;21,"O87.8 ")
 ;;673
 ;;21,"O87.9 ")
 ;;674
 ;;21,"O88.011 ")
 ;;675
 ;;21,"O88.012 ")
 ;;676
 ;;21,"O88.013 ")
 ;;677
 ;;21,"O88.019 ")
 ;;678
 ;;21,"O88.02 ")
 ;;679
 ;;21,"O88.03 ")
 ;;680
 ;;21,"O88.111 ")
 ;;681
 ;;21,"O88.112 ")
 ;;682
 ;;21,"O88.113 ")
 ;;683
 ;;21,"O88.119 ")
 ;;684
 ;;21,"O88.12 ")
 ;;685
 ;;21,"O88.13 ")
 ;;686
 ;;21,"O88.211 ")
 ;;687
 ;;21,"O88.212 ")
 ;;688
 ;;21,"O88.213 ")
 ;;689
 ;;21,"O88.219 ")
 ;;690
 ;;21,"O88.22 ")
 ;;691
 ;;21,"O88.23 ")
 ;;692
 ;;21,"O88.311 ")
 ;;693
 ;;21,"O88.312 ")
 ;;694
 ;;21,"O88.313 ")
 ;;695
 ;;21,"O88.319 ")
 ;;696
 ;;21,"O88.32 ")
 ;;697
 ;;21,"O88.33 ")
 ;;698
 ;;21,"O88.811 ")
 ;;699
 ;;21,"O88.812 ")
 ;;700
 ;;21,"O88.813 ")
 ;;701
 ;;21,"O88.819 ")
 ;;702
 ;;21,"O88.82 ")
 ;;703
 ;;21,"O88.83 ")
 ;;704
 ;;21,"O89.09 ")
 ;;705
 ;;21,"O89.1 ")
 ;;706
 ;;21,"O89.2 ")
 ;;707
 ;;21,"O89.8 ")
 ;;708
 ;;21,"O89.9 ")
 ;;709
 ;;21,"O90.0 ")
 ;;710
 ;;21,"O90.1 ")
 ;;711
 ;;21,"O90.2 ")
 ;;712
 ;;21,"O90.3 ")
 ;;713
 ;;21,"O90.4 ")
 ;;714
 ;;21,"O90.5 ")
 ;;715
 ;;21,"O90.6 ")
 ;;716
 ;;21,"O90.81 ")
 ;;717
 ;;21,"O90.89 ")
 ;;718
 ;;21,"O90.9 ")
 ;;719
 ;;21,"O91.011 ")
 ;;720
 ;;21,"O91.012 ")
 ;;721
 ;;21,"O91.013 ")
 ;;722
 ;;21,"O91.019 ")
 ;;723
 ;;21,"O91.02 ")
 ;;724
 ;;21,"O91.111 ")
 ;;725
 ;;21,"O91.112 ")
 ;;726
 ;;21,"O91.113 ")
 ;;727
 ;;21,"O91.119 ")
 ;;728
 ;;21,"O91.12 ")
 ;;729
 ;;21,"O91.211 ")
 ;;730
 ;;21,"O91.212 ")
 ;;731
 ;;21,"O91.213 ")
 ;;732
 ;;21,"O91.219 ")
 ;;733
 ;;21,"O91.22 ")
 ;;734
 ;;21,"O91.23 ")
 ;;735
 ;;21,"O92.011 ")
 ;;736
 ;;21,"O92.012 ")
 ;;737
 ;;21,"O92.013 ")
 ;;738
 ;;21,"O92.019 ")
 ;;739
 ;;21,"O92.03 ")
 ;;740
 ;;21,"O92.111 ")
 ;;741
 ;;21,"O92.112 ")
 ;;742
 ;;21,"O92.113 ")
 ;;743
 ;;21,"O92.119 ")
 ;;744
 ;;21,"O92.13 ")
 ;;745
 ;;21,"O92.20 ")
 ;;746
 ;;21,"O92.29 ")
 ;;747
 ;;21,"O92.3 ")
 ;;748
 ;;21,"O92.5 ")
 ;;749
 ;;21,"O92.6 ")
 ;;750
 ;;21,"O92.70 ")
 ;;751
 ;;21,"O92.79 ")
 ;;752
 ;;21,"O94. ")
 ;;753
 ;;21,"O98.011 ")
 ;;754
 ;;21,"O98.012 ")
 ;;755
 ;;21,"O98.013 ")
 ;;756
 ;;21,"O98.019 ")
 ;;757
 ;;21,"O98.02 ")
 ;;758
 ;;21,"O98.03 ")
 ;;759
 ;;21,"O98.111 ")
 ;;760
 ;;21,"O98.112 ")
 ;;761
 ;;21,"O98.113 ")
 ;;762
 ;;21,"O98.119 ")
 ;;763
 ;;21,"O98.12 ")
 ;;764
 ;;21,"O98.13 ")
 ;;765
 ;;21,"O98.211 ")
 ;;766
 ;;21,"O98.212 ")
 ;;767
 ;;21,"O98.213 ")
 ;;768
 ;;21,"O98.219 ")
 ;;769
 ;;21,"O98.22 ")
 ;;770
 ;;21,"O98.23 ")
 ;;771
 ;;21,"O98.311 ")
 ;;772
 ;;21,"O98.312 ")
 ;;773
 ;;21,"O98.313 ")
 ;;774
 ;;21,"O98.319 ")
 ;;775
 ;;21,"O98.32 ")
 ;;776
 ;;21,"O98.33 ")
 ;;777
 ;;21,"O98.42 ")
 ;;778
 ;;21,"O98.43 ")
 ;;779
 ;;21,"O98.511 ")
 ;;780
 ;;21,"O98.512 ")
 ;;781
 ;;21,"O98.513 ")
 ;;782
 ;;21,"O98.519 ")
 ;;783
 ;;21,"O98.52 ")
 ;;784
 ;;21,"O98.53 ")
 ;;785
 ;;21,"O98.611 ")
 ;;786
 ;;21,"O98.612 ")
 ;;787
 ;;21,"O98.613 ")
 ;;788
 ;;21,"O98.619 ")
 ;;789
 ;;21,"O98.62 ")
 ;;790
 ;;21,"O98.63 ")
 ;;791
 ;;21,"O98.811 ")
 ;;792
 ;;21,"O98.812 ")
 ;;793
 ;;21,"O98.813 ")
 ;;794
 ;;21,"O98.819 ")
 ;;795
 ;;21,"O98.82 ")
 ;;796
 ;;21,"O98.83 ")
 ;;797
 ;;21,"O98.911 ")
 ;;798
 ;;21,"O98.912 ")
 ;;799
 ;;21,"O98.913 ")
 ;;800
 ;;21,"O98.919 ")
 ;;801
 ;;21,"O98.92 ")
 ;;802
 ;;21,"O98.93 ")
 ;;803
 ;;21,"O99.011 ")
 ;;804
 ;;21,"O99.012 ")
 ;;805
 ;;21,"O99.013 ")
 ;;806
 ;;21,"O99.019 ")
 ;;807
 ;;21,"O99.02 ")
 ;;808
 ;;21,"O99.03 ")
 ;;809
 ;;21,"O99.111 ")
 ;;810
 ;;21,"O99.112 ")
 ;;811
 ;;21,"O99.113 ")
 ;;812
 ;;21,"O99.119 ")
 ;;813
 ;;21,"O99.12 ")
 ;;814
 ;;21,"O99.13 ")
 ;;815
 ;;21,"O99.210 ")
 ;;816
 ;;21,"O99.211 ")
 ;;817
 ;;21,"O99.212 ")
 ;;818
 ;;21,"O99.213 ")
 ;;819
 ;;21,"O99.214 ")
 ;;820
 ;;21,"O99.215 ")
 ;;821
 ;;21,"O99.280 ")
 ;;822
 ;;21,"O99.281 ")
 ;;823
 ;;21,"O99.282 ")
 ;;824
 ;;21,"O99.283 ")
 ;;825
 ;;21,"O99.284 ")
 ;;826
 ;;21,"O99.285 ")
 ;;827
 ;;21,"O99.320 ")
 ;;828
 ;;21,"O99.321 ")
 ;;829
 ;;21,"O99.322 ")
 ;;830
 ;;21,"O99.323 ")
 ;;831
 ;;21,"O99.324 ")
 ;;832