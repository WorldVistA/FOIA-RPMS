ATXD5G2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"T49.93XD ")
 ;;457
 ;;21,"T49.93XS ")
 ;;458
 ;;21,"T50.0X3A ")
 ;;459
 ;;21,"T50.0X3D ")
 ;;460
 ;;21,"T50.0X3S ")
 ;;461
 ;;21,"T50.1X3A ")
 ;;462
 ;;21,"T50.1X3D ")
 ;;463
 ;;21,"T50.1X3S ")
 ;;464
 ;;21,"T50.2X3A ")
 ;;465
 ;;21,"T50.2X3D ")
 ;;466
 ;;21,"T50.2X3S ")
 ;;467
 ;;21,"T50.3X3A ")
 ;;468
 ;;21,"T50.3X3D ")
 ;;469
 ;;21,"T50.3X3S ")
 ;;470
 ;;21,"T50.4X3A ")
 ;;471
 ;;21,"T50.4X3D ")
 ;;472
 ;;21,"T50.4X3S ")
 ;;473
 ;;21,"T50.5X3A ")
 ;;474
 ;;21,"T50.5X3D ")
 ;;475
 ;;21,"T50.5X3S ")
 ;;476
 ;;21,"T50.6X3A ")
 ;;477
 ;;21,"T50.6X3D ")
 ;;478
 ;;21,"T50.6X3S ")
 ;;479
 ;;21,"T50.7X3A ")
 ;;480
 ;;21,"T50.7X3D ")
 ;;481
 ;;21,"T50.7X3S ")
 ;;482
 ;;21,"T50.8X3A ")
 ;;483
 ;;21,"T50.8X3D ")
 ;;484
 ;;21,"T50.8X3S ")
 ;;485
 ;;21,"T50.903A ")
 ;;486
 ;;21,"T50.903D ")
 ;;487
 ;;21,"T50.903S ")
 ;;488
 ;;21,"T50.993A ")
 ;;489
 ;;21,"T50.993D ")
 ;;490
 ;;21,"T50.993S ")
 ;;491
 ;;21,"T50.A13A ")
 ;;492
 ;;21,"T50.A13D ")
 ;;493
 ;;21,"T50.A13S ")
 ;;494
 ;;21,"T50.A23A ")
 ;;495
 ;;21,"T50.A23D ")
 ;;496
 ;;21,"T50.A23S ")
 ;;497
 ;;21,"T50.A93A ")
 ;;498
 ;;21,"T50.A93D ")
 ;;499
 ;;21,"T50.A93S ")
 ;;500
 ;;21,"T50.B13A ")
 ;;501
 ;;21,"T50.B13D ")
 ;;502
 ;;21,"T50.B13S ")
 ;;503
 ;;21,"T50.B93A ")
 ;;504
 ;;21,"T50.B93D ")
 ;;505
 ;;21,"T50.B93S ")
 ;;506
 ;;21,"T50.Z13A ")
 ;;507
 ;;21,"T50.Z13D ")
 ;;508
 ;;21,"T50.Z13S ")
 ;;509
 ;;21,"T50.Z93A ")
 ;;510
 ;;21,"T50.Z93D ")
 ;;511
 ;;21,"T50.Z93S ")
 ;;512
 ;;21,"T51.0X3A ")
 ;;513
 ;;21,"T51.0X3D ")
 ;;514
 ;;21,"T51.0X3S ")
 ;;515
 ;;21,"T51.1X3A ")
 ;;516
 ;;21,"T51.1X3D ")
 ;;517
 ;;21,"T51.1X3S ")
 ;;518
 ;;21,"T51.2X3A ")
 ;;519
 ;;21,"T51.2X3D ")
 ;;520
 ;;21,"T51.2X3S ")
 ;;521
 ;;21,"T51.3X3A ")
 ;;522
 ;;21,"T51.3X3D ")
 ;;523
 ;;21,"T51.3X3S ")
 ;;524
 ;;21,"T51.8X3A ")
 ;;525
 ;;21,"T51.8X3D ")
 ;;526
 ;;21,"T51.8X3S ")
 ;;527
 ;;21,"T51.93XA ")
 ;;528
 ;;21,"T51.93XD ")
 ;;529
 ;;21,"T51.93XS ")
 ;;530
 ;;21,"T52.0X3A ")
 ;;531
 ;;21,"T52.0X3D ")
 ;;532
 ;;21,"T52.0X3S ")
 ;;533
 ;;21,"T52.1X3A ")
 ;;534
 ;;21,"T52.1X3D ")
 ;;535
 ;;21,"T52.1X3S ")
 ;;536
 ;;21,"T52.2X3A ")
 ;;537
 ;;21,"T52.2X3D ")
 ;;538
 ;;21,"T52.2X3S ")
 ;;539
 ;;21,"T52.3X3A ")
 ;;540
 ;;21,"T52.3X3D ")
 ;;541
 ;;21,"T52.3X3S ")
 ;;542
 ;;21,"T52.4X3A ")
 ;;543
 ;;21,"T52.4X3D ")
 ;;544
 ;;21,"T52.4X3S ")
 ;;545
 ;;21,"T52.8X3A ")
 ;;546
 ;;21,"T52.8X3D ")
 ;;547
 ;;21,"T52.8X3S ")
 ;;548
 ;;21,"T52.93XA ")
 ;;549
 ;;21,"T52.93XD ")
 ;;550
 ;;21,"T52.93XS ")
 ;;551
 ;;21,"T53.0X3A ")
 ;;552
 ;;21,"T53.0X3D ")
 ;;553
 ;;21,"T53.0X3S ")
 ;;554
 ;;21,"T53.1X3A ")
 ;;555
 ;;21,"T53.1X3D ")
 ;;556
 ;;21,"T53.1X3S ")
 ;;557
 ;;21,"T53.2X3A ")
 ;;558
 ;;21,"T53.2X3D ")
 ;;559
 ;;21,"T53.2X3S ")
 ;;560
 ;;21,"T53.3X3A ")
 ;;561
 ;;21,"T53.3X3D ")
 ;;562
 ;;21,"T53.3X3S ")
 ;;563
 ;;21,"T53.4X3A ")
 ;;564
 ;;21,"T53.4X3D ")
 ;;565
 ;;21,"T53.4X3S ")
 ;;566
 ;;21,"T53.5X3A ")
 ;;567
 ;;21,"T53.5X3D ")
 ;;568
 ;;21,"T53.5X3S ")
 ;;569
 ;;21,"T53.6X3A ")
 ;;570
 ;;21,"T53.6X3D ")
 ;;571
 ;;21,"T53.6X3S ")
 ;;572
 ;;21,"T53.7X3A ")
 ;;573
 ;;21,"T53.7X3D ")
 ;;574
 ;;21,"T53.7X3S ")
 ;;575
 ;;21,"T53.93XA ")
 ;;576
 ;;21,"T53.93XD ")
 ;;577
 ;;21,"T53.93XS ")
 ;;578
 ;;21,"T54.0X3A ")
 ;;579
 ;;21,"T54.0X3D ")
 ;;580
 ;;21,"T54.0X3S ")
 ;;581
 ;;21,"T54.1X3A ")
 ;;582
 ;;21,"T54.1X3D ")
 ;;583
 ;;21,"T54.1X3S ")
 ;;584
 ;;21,"T54.2X3A ")
 ;;585
 ;;21,"T54.2X3D ")
 ;;586
 ;;21,"T54.2X3S ")
 ;;587
 ;;21,"T54.3X3A ")
 ;;588
 ;;21,"T54.3X3D ")
 ;;589
 ;;21,"T54.3X3S ")
 ;;590
 ;;21,"T54.93XA ")
 ;;591
 ;;21,"T54.93XD ")
 ;;592
 ;;21,"T54.93XS ")
 ;;593
 ;;21,"T55.0X3A ")
 ;;594
 ;;21,"T55.0X3D ")
 ;;595
 ;;21,"T55.0X3S ")
 ;;596
 ;;21,"T55.1X3A ")
 ;;597
 ;;21,"T55.1X3D ")
 ;;598
 ;;21,"T55.1X3S ")
 ;;599
 ;;21,"T56.0X3A ")
 ;;600
 ;;21,"T56.0X3D ")
 ;;601
 ;;21,"T56.0X3S ")
 ;;602
 ;;21,"T56.1X3A ")
 ;;603
 ;;21,"T56.1X3D ")
 ;;604
 ;;21,"T56.1X3S ")
 ;;605
 ;;21,"T56.2X3A ")
 ;;606
 ;;21,"T56.2X3D ")
 ;;607
 ;;21,"T56.2X3S ")
 ;;608
 ;;21,"T56.3X3A ")
 ;;609
 ;;21,"T56.3X3D ")
 ;;610
 ;;21,"T56.3X3S ")
 ;;611
 ;;21,"T56.4X3A ")
 ;;612
 ;;21,"T56.4X3D ")
 ;;613
 ;;21,"T56.4X3S ")
 ;;614
 ;;21,"T56.5X3A ")
 ;;615
 ;;21,"T56.5X3D ")
 ;;616
 ;;21,"T56.5X3S ")
 ;;617
 ;;21,"T56.6X3A ")
 ;;618
 ;;21,"T56.6X3D ")
 ;;619
 ;;21,"T56.6X3S ")
 ;;620
 ;;21,"T56.7X3A ")
 ;;621
 ;;21,"T56.7X3D ")
 ;;622
 ;;21,"T56.7X3S ")
 ;;623
 ;;21,"T56.813A ")
 ;;624
 ;;21,"T56.813D ")
 ;;625
 ;;21,"T56.813S ")
 ;;626
 ;;21,"T56.893A ")
 ;;627
 ;;21,"T56.893D ")
 ;;628
 ;;21,"T56.893S ")
 ;;629
 ;;21,"T56.93XA ")
 ;;630
 ;;21,"T56.93XD ")
 ;;631
 ;;21,"T56.93XS ")
 ;;632
 ;;21,"T57.0X3A ")
 ;;633
 ;;21,"T57.0X3D ")
 ;;634
 ;;21,"T57.0X3S ")
 ;;635
 ;;21,"T57.1X3A ")
 ;;636
 ;;21,"T57.1X3D ")
 ;;637
 ;;21,"T57.1X3S ")
 ;;638
 ;;21,"T57.2X3A ")
 ;;639
 ;;21,"T57.2X3D ")
 ;;640
 ;;21,"T57.2X3S ")
 ;;641
 ;;21,"T57.3X3A ")
 ;;642
 ;;21,"T57.3X3D ")
 ;;643
 ;;21,"T57.3X3S ")
 ;;644
 ;;21,"T57.8X3A ")
 ;;645
 ;;21,"T57.8X3D ")
 ;;646
 ;;21,"T57.8X3S ")
 ;;647
 ;;21,"T57.93XA ")
 ;;648
 ;;21,"T57.93XD ")
 ;;649
 ;;21,"T57.93XS ")
 ;;650
 ;;21,"T58.03XA ")
 ;;651
 ;;21,"T58.03XD ")
 ;;652
 ;;21,"T58.03XS ")
 ;;653
 ;;21,"T58.13XA ")
 ;;654
 ;;21,"T58.13XD ")
 ;;655
 ;;21,"T58.13XS ")
 ;;656
 ;;21,"T58.2X3A ")
 ;;657
 ;;21,"T58.2X3D ")
 ;;658
 ;;21,"T58.2X3S ")
 ;;659
 ;;21,"T58.8X3A ")
 ;;660
 ;;21,"T58.8X3D ")
 ;;661
 ;;21,"T58.8X3S ")
 ;;662
 ;;21,"T58.93XA ")
 ;;663
 ;;21,"T58.93XD ")
 ;;664
 ;;21,"T58.93XS ")
 ;;665
 ;;21,"T59.0X3A ")
 ;;666
 ;;21,"T59.0X3D ")
 ;;667
 ;;21,"T59.0X3S ")
 ;;668
 ;;21,"T59.1X3A ")
 ;;669
 ;;21,"T59.1X3D ")
 ;;670
 ;;21,"T59.1X3S ")
 ;;671
 ;;21,"T59.2X3A ")
 ;;672
 ;;21,"T59.2X3D ")
 ;;673
 ;;21,"T59.2X3S ")
 ;;674
 ;;21,"T59.3X3A ")
 ;;675
 ;;21,"T59.3X3D ")
 ;;676
 ;;21,"T59.3X3S ")
 ;;677
 ;;21,"T59.4X3A ")
 ;;678
 ;;21,"T59.4X3D ")
 ;;679
 ;;21,"T59.4X3S ")
 ;;680
 ;;21,"T59.5X3A ")
 ;;681
 ;;21,"T59.5X3D ")
 ;;682
 ;;21,"T59.5X3S ")
 ;;683
 ;;21,"T59.6X3A ")
 ;;684
 ;;21,"T59.6X3D ")
 ;;685
 ;;21,"T59.6X3S ")
 ;;686
 ;;21,"T59.7X3A ")
 ;;687
 ;;21,"T59.7X3D ")
 ;;688
 ;;21,"T59.7X3S ")
 ;;689
 ;;21,"T59.813A ")
 ;;690
 ;;21,"T59.813D ")
 ;;691
 ;;21,"T59.813S ")
 ;;692
 ;;21,"T59.893A ")
 ;;693
 ;;21,"T59.893D ")
 ;;694
 ;;21,"T59.893S ")
 ;;695
 ;;21,"T59.93XA ")
 ;;696
 ;;21,"T59.93XD ")
 ;;697
 ;;21,"T59.93XS ")
 ;;698
 ;;21,"T60.0X3A ")
 ;;699
 ;;21,"T60.0X3D ")
 ;;700
 ;;21,"T60.0X3S ")
 ;;701
 ;;21,"T60.1X3A ")
 ;;702
 ;;21,"T60.1X3D ")
 ;;703
 ;;21,"T60.1X3S ")
 ;;704
 ;;21,"T60.2X3A ")
 ;;705
 ;;21,"T60.2X3D ")
 ;;706
 ;;21,"T60.2X3S ")
 ;;707
 ;;21,"T60.3X3A ")
 ;;708
 ;;21,"T60.3X3D ")
 ;;709
 ;;21,"T60.3X3S ")
 ;;710
 ;;21,"T60.4X3A ")
 ;;711
 ;;21,"T60.4X3D ")
 ;;712
 ;;21,"T60.4X3S ")
 ;;713
 ;;21,"T60.8X3A ")
 ;;714
 ;;21,"T60.8X3D ")
 ;;715
 ;;21,"T60.8X3S ")
 ;;716
 ;;21,"T60.93XA ")
 ;;717
 ;;21,"T60.93XD ")
 ;;718
 ;;21,"T60.93XS ")
 ;;719
 ;;21,"T61.03XA ")
 ;;720
 ;;21,"T61.03XD ")
 ;;721
 ;;21,"T61.03XS ")
 ;;722
 ;;21,"T61.13XA ")
 ;;723
 ;;21,"T61.13XD ")
 ;;724
 ;;21,"T61.13XS ")
 ;;725
 ;;21,"T61.773A ")
 ;;726
 ;;21,"T61.773D ")
 ;;727
 ;;21,"T61.773S ")
 ;;728
 ;;21,"T61.783A ")
 ;;729
 ;;21,"T61.783D ")
 ;;730
 ;;21,"T61.783S ")
 ;;731
 ;;21,"T61.8X3A ")
 ;;732
 ;;21,"T61.8X3D ")
 ;;733
 ;;21,"T61.8X3S ")
 ;;734
 ;;21,"T61.93XA ")
 ;;735
 ;;21,"T61.93XD ")
 ;;736
 ;;21,"T61.93XS ")
 ;;737
 ;;21,"T62.0X3A ")
 ;;738
 ;;21,"T62.0X3D ")
 ;;739
 ;;21,"T62.0X3S ")
 ;;740
 ;;21,"T62.1X3A ")
 ;;741
 ;;21,"T62.1X3D ")
 ;;742
 ;;21,"T62.1X3S ")
 ;;743
 ;;21,"T62.2X3A ")
 ;;744
 ;;21,"T62.2X3D ")
 ;;745
 ;;21,"T62.2X3S ")
 ;;746
 ;;21,"T62.8X3A ")
 ;;747
 ;;21,"T62.8X3D ")
 ;;748
 ;;21,"T62.8X3S ")
 ;;749
 ;;21,"T62.93XA ")
 ;;750
 ;;21,"T62.93XD ")
 ;;751
 ;;21,"T62.93XS ")
 ;;752
 ;;21,"T63.003A ")
 ;;753
 ;;21,"T63.003D ")
 ;;754
 ;;21,"T63.003S ")
 ;;755
 ;;21,"T63.013A ")
 ;;756
 ;;21,"T63.013D ")
 ;;757
 ;;21,"T63.013S ")
 ;;758
 ;;21,"T63.023A ")
 ;;759
 ;;21,"T63.023D ")
 ;;760
 ;;21,"T63.023S ")
 ;;761
 ;;21,"T63.033A ")
 ;;762
 ;;21,"T63.033D ")
 ;;763
 ;;21,"T63.033S ")
 ;;764
 ;;21,"T63.043A ")
 ;;765
 ;;21,"T63.043D ")
 ;;766
 ;;21,"T63.043S ")
 ;;767
 ;;21,"T63.063A ")
 ;;768
 ;;21,"T63.063D ")
 ;;769
 ;;21,"T63.063S ")
 ;;770
 ;;21,"T63.073A ")
 ;;771
 ;;21,"T63.073D ")
 ;;772
 ;;21,"T63.073S ")
 ;;773
 ;;21,"T63.083A ")
 ;;774
 ;;21,"T63.083D ")
 ;;775
 ;;21,"T63.083S ")
 ;;776
 ;;21,"T63.093A ")
 ;;777
 ;;21,"T63.093D ")
 ;;778
 ;;21,"T63.093S ")
 ;;779
 ;;21,"T63.113A ")
 ;;780
 ;;21,"T63.113D ")
 ;;781
 ;;21,"T63.113S ")
 ;;782
 ;;21,"T63.123A ")
 ;;783
 ;;21,"T63.123D ")
 ;;784
 ;;21,"T63.123S ")
 ;;785
 ;;21,"T63.193A ")
 ;;786
 ;;21,"T63.193D ")
 ;;787
 ;;21,"T63.193S ")
 ;;788
 ;;21,"T63.2X3A ")
 ;;789
 ;;21,"T63.2X3D ")
 ;;790
 ;;21,"T63.2X3S ")
 ;;791
 ;;21,"T63.303A ")
 ;;792
 ;;21,"T63.303D ")
 ;;793
 ;;21,"T63.303S ")
 ;;794
 ;;21,"T63.313A ")
 ;;795
 ;;21,"T63.313D ")
 ;;796
 ;;21,"T63.313S ")
 ;;797
 ;;21,"T63.323A ")
 ;;798
 ;;21,"T63.323D ")
 ;;799
 ;;21,"T63.323S ")
 ;;800
 ;;21,"T63.333A ")
 ;;801
 ;;21,"T63.333D ")
 ;;802
 ;;21,"T63.333S ")
 ;;803
 ;;21,"T63.393A ")
 ;;804
 ;;21,"T63.393D ")
 ;;805
 ;;21,"T63.393S ")
 ;;806
 ;;21,"T63.413A ")
 ;;807
 ;;21,"T63.413D ")
 ;;808
 ;;21,"T63.413S ")
 ;;809
 ;;21,"T63.423A ")
 ;;810
 ;;21,"T63.423D ")
 ;;811
 ;;21,"T63.423S ")
 ;;812
 ;;21,"T63.433A ")
 ;;813
 ;;21,"T63.433D ")
 ;;814
 ;;21,"T63.433S ")
 ;;815
 ;;21,"T63.443A ")
 ;;816
 ;;21,"T63.443D ")
 ;;817
 ;;21,"T63.443S ")
 ;;818
 ;;21,"T63.453A ")
 ;;819
 ;;21,"T63.453D ")
 ;;820
 ;;21,"T63.453S ")
 ;;821
 ;;21,"T63.463A ")
 ;;822
 ;;21,"T63.463D ")
 ;;823
 ;;21,"T63.463S ")
 ;;824
 ;;21,"T63.483A ")
 ;;825
 ;;21,"T63.483D ")
 ;;826
 ;;21,"T63.483S ")
 ;;827
 ;;21,"T63.513A ")
 ;;828
 ;;21,"T63.513D ")
 ;;829
 ;;21,"T63.513S ")
 ;;830
 ;;21,"T63.593A ")
 ;;831
 ;;21,"T63.593D ")
 ;;832
 ;;21,"T63.593S ")
 ;;833
 ;;21,"T63.613A ")
 ;;834
 ;;21,"T63.613D ")
 ;;835
 ;;21,"T63.613S ")
 ;;836
 ;;21,"T63.623A ")
 ;;837
 ;;21,"T63.623D ")
 ;;838
 ;;21,"T63.623S ")
 ;;839
 ;;21,"T63.633A ")
 ;;840
 ;;21,"T63.633D ")
 ;;841
 ;;21,"T63.633S ")
 ;;842
 ;;21,"T63.693A ")
 ;;843
 ;;21,"T63.693D ")
 ;;844
 ;;21,"T63.693S ")
 ;;845
 ;;21,"T63.713A ")
 ;;846
 ;;21,"T63.713D ")
 ;;847
 ;;21,"T63.713S ")
 ;;848
 ;;21,"T63.793A ")
 ;;849
 ;;21,"T63.793D ")
 ;;850
 ;;21,"T63.793S ")
 ;;851
 ;;21,"T63.813A ")
 ;;852
 ;;21,"T63.813D ")
 ;;853
 ;;21,"T63.813S ")
 ;;854
 ;;21,"T63.823A ")
 ;;855
 ;;21,"T63.823D ")
 ;;856
 ;;21,"T63.823S ")
 ;;857
 ;;21,"T63.833A ")
 ;;858
 ;;21,"T63.833D ")
 ;;859
 ;;21,"T63.833S ")
 ;;860
 ;;21,"T63.893A ")
 ;;861
 ;;21,"T63.893D ")
 ;;862
 ;;21,"T63.893S ")
 ;;863
 ;;21,"T63.93XA ")
 ;;864
 ;;21,"T63.93XD ")
 ;;865
 ;;21,"T63.93XS ")
 ;;866
 ;;21,"T64.03XA ")
 ;;867
 ;;21,"T64.03XD ")
 ;;868
 ;;21,"T64.03XS ")
 ;;869
 ;;21,"T64.83XA ")
 ;;870
 ;;21,"T64.83XD ")
 ;;871
 ;;21,"T64.83XS ")
 ;;872
 ;;21,"T65.0X3A ")
 ;;873
 ;;21,"T65.0X3D ")
 ;;874
 ;;21,"T65.0X3S ")
 ;;875
 ;;21,"T65.1X3A ")
 ;;876
 ;;21,"T65.1X3D ")
 ;;877
 ;;21,"T65.1X3S ")
 ;;878
 ;;21,"T65.213A ")
 ;;879
 ;;21,"T65.213D ")
 ;;880
 ;;21,"T65.213S ")
 ;;881
 ;;21,"T65.223A ")
 ;;882
 ;;21,"T65.223D ")
 ;;883
 ;;21,"T65.223S ")
 ;;884
 ;;21,"T65.293A ")
 ;;885
 ;;21,"T65.293D ")
 ;;886
 ;;21,"T65.293S ")
 ;;887
 ;;21,"T65.3X3A ")
 ;;888
 ;;21,"T65.3X3D ")
 ;;889
 ;;21,"T65.3X3S ")
 ;;890
 ;;21,"T65.4X3A ")
 ;;891
 ;;21,"T65.4X3D ")
 ;;892
 ;;21,"T65.4X3S ")
 ;;893
 ;;21,"T65.5X3A ")
 ;;894
 ;;21,"T65.5X3D ")
 ;;895
 ;;21,"T65.5X3S ")
 ;;896
 ;;21,"T65.6X3A ")
 ;;897
 ;;21,"T65.6X3D ")
 ;;898
 ;;21,"T65.6X3S ")
 ;;899
 ;;21,"T65.813A ")
 ;;900
 ;;21,"T65.813D ")
 ;;901
 ;;21,"T65.813S ")
 ;;902
 ;;21,"T65.823A ")
 ;;903
 ;;21,"T65.823D ")
 ;;904
 ;;21,"T65.823S ")
 ;;905
 ;;21,"T65.833A ")
 ;;906
 ;;21,"T65.833D ")
 ;;907
 ;;21,"T65.833S ")
 ;;908
 ;;21,"T65.893A ")
 ;;909
 ;;21,"T65.893D ")
 ;;910
 ;;21,"T65.893S ")
 ;;911
 ;;21,"T65.93XA ")
 ;;912
 ;;21,"T65.93XD ")
 ;;913
 ;;21,"T65.93XS ")
 ;;914