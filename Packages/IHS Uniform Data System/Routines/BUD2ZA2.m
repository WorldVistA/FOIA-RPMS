BUD2ZA2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 16, 2012;
 ;;8.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 03, 2014;Build 36
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00536555405 ")
 ;;416
 ;;21,"00536555408 ")
 ;;417
 ;;21,"00536566805 ")
 ;;418
 ;;21,"00536566808 ")
 ;;419
 ;;21,"00536573308 ")
 ;;420
 ;;21,"00536573324 ")
 ;;421
 ;;21,"00536703001 ")
 ;;422
 ;;21,"00536703301 ")
 ;;423
 ;;21,"00536703801 ")
 ;;424
 ;;21,"00591045405 ")
 ;;425
 ;;21,"00591045460 ")
 ;;426
 ;;21,"00591510301 ")
 ;;427
 ;;21,"00591510303 ")
 ;;428
 ;;21,"00591510304 ")
 ;;429
 ;;21,"00591541001 ")
 ;;430
 ;;21,"00591541004 ")
 ;;431
 ;;21,"00603293221 ")
 ;;432
 ;;21,"00603375020 ")
 ;;433
 ;;21,"00603375028 ")
 ;;434
 ;;21,"00603473521 ")
 ;;435
 ;;21,"00603473632 ")
 ;;436
 ;;21,"00615051101 ")
 ;;437
 ;;21,"00615051110 ")
 ;;438
 ;;21,"00615051113 ")
 ;;439
 ;;21,"00615051401 ")
 ;;440
 ;;21,"00615051410 ")
 ;;441
 ;;21,"00615051413 ")
 ;;442
 ;;21,"00615355913 ")
 ;;443
 ;;21,"00615355931 ")
 ;;444
 ;;21,"00615355939 ")
 ;;445
 ;;21,"00615355943 ")
 ;;446
 ;;21,"00615355953 ")
 ;;447
 ;;21,"00615355963 ")
 ;;448
 ;;21,"00615355965 ")
 ;;449
 ;;21,"00615558931 ")
 ;;450
 ;;21,"00615558939 ")
 ;;451
 ;;21,"00615568839 ")
 ;;452
 ;;21,"00615655139 ")
 ;;453
 ;;21,"00615657939 ")
 ;;454
 ;;21,"00615658039 ")
 ;;455
 ;;21,"00615658139 ")
 ;;456
 ;;21,"00615658739 ")
 ;;457
 ;;21,"00615658839 ")
 ;;458
 ;;21,"00615659039 ")
 ;;459
 ;;21,"00677008810 ")
 ;;460
 ;;21,"00677008910 ")
 ;;461
 ;;21,"00677042401 ")
 ;;462
 ;;21,"00677042501 ")
 ;;463
 ;;21,"00677042505 ")
 ;;464
 ;;21,"00677111101 ")
 ;;465
 ;;21,"00677112601 ")
 ;;466
 ;;21,"00677147306 ")
 ;;467
 ;;21,"00719123410 ")
 ;;468
 ;;21,"00761004920 ")
 ;;469
 ;;21,"00761023920 ")
 ;;470
 ;;21,"00761067720 ")
 ;;471
 ;;21,"00779068725 ")
 ;;472
 ;;21,"00779068730 ")
 ;;473
 ;;21,"00781105605 ")
 ;;474
 ;;21,"00781105660 ")
 ;;475
 ;;21,"00781111601 ")
 ;;476
 ;;21,"00781111610 ")
 ;;477
 ;;21,"00781117201 ")
 ;;478
 ;;21,"00781117210 ")
 ;;479
 ;;21,"00781121010 ")
 ;;480
 ;;21,"00781121013 ")
 ;;481
 ;;21,"00781121060 ")
 ;;482
 ;;21,"00781121310 ")
 ;;483
 ;;21,"00781121313 ")
 ;;484
 ;;21,"00781121360 ")
 ;;485
 ;;21,"00781132305 ")
 ;;486
 ;;21,"00781132313 ")
 ;;487
 ;;21,"00781132360 ")
 ;;488
 ;;21,"00781214901 ")
 ;;489
 ;;21,"00781215901 ")
 ;;490
 ;;21,"00781260001 ")
 ;;491
 ;;21,"00781260010 ")
 ;;492
 ;;21,"00781507031 ")
 ;;493
 ;;21,"00781507092 ")
 ;;494
 ;;21,"00781507131 ")
 ;;495
 ;;21,"00781507192 ")
 ;;496
 ;;21,"00781507231 ")
 ;;497
 ;;21,"00781507292 ")
 ;;498
 ;;21,"00781507331 ")
 ;;499
 ;;21,"00781507392 ")
 ;;500
 ;;21,"00781507431 ")
 ;;501
 ;;21,"00781507492 ")
 ;;502
 ;;21,"00814528014 ")
 ;;503
 ;;21,"00814528214 ")
 ;;504
 ;;21,"00814531020 ")
 ;;505
 ;;21,"00814531030 ")
 ;;506
 ;;21,"00814531330 ")
 ;;507
 ;;21,"00814531630 ")
 ;;508
 ;;21,"00814531914 ")
 ;;509
 ;;21,"00832041300 ")
 ;;510
 ;;21,"00839143106 ")
 ;;511
 ;;21,"00839143206 ")
 ;;512
 ;;21,"00839143216 ")
 ;;513
 ;;21,"00839524106 ")
 ;;514
 ;;21,"00839610306 ")
 ;;515
 ;;21,"00839610316 ")
 ;;516
 ;;21,"00839645806 ")
 ;;517
 ;;21,"00839645816 ")
 ;;518
 ;;21,"00839722806 ")
 ;;519
 ;;21,"00839754606 ")
 ;;520
 ;;21,"00839778705 ")
 ;;521
 ;;21,"00839778712 ")
 ;;522
 ;;21,"00855061030 ")
 ;;523
 ;;21,"00855061130 ")
 ;;524
 ;;21,"00879008201 ")
 ;;525
 ;;21,"00879008210 ")
 ;;526
 ;;21,"00879008251 ")
 ;;527
 ;;21,"00892000101 ")
 ;;528
 ;;21,"00892000105 ")
 ;;529
 ;;21,"00892000110 ")
 ;;530
 ;;21,"00904062860 ")
 ;;531
 ;;21,"00904062880 ")
 ;;532
 ;;21,"00904062970 ")
 ;;533
 ;;21,"00904062980 ")
 ;;534
 ;;21,"00904063160 ")
 ;;535
 ;;21,"00904063180 ")
 ;;536
 ;;21,"00904063360 ")
 ;;537
 ;;21,"00904227060 ")
 ;;538
 ;;21,"00904227080 ")
 ;;539
 ;;21,"00904227160 ")
 ;;540
 ;;21,"00904227172 ")
 ;;541
 ;;21,"00904227180 ")
 ;;542
 ;;21,"00904291660 ")
 ;;543
 ;;21,"00904434260 ")
 ;;544
 ;;21,"00904434270 ")
 ;;545
 ;;21,"00904434760 ")
 ;;546
 ;;21,"00904523442 ")
 ;;547
 ;;21,"00904523452 ")
 ;;548
 ;;21,"00904523542 ")
 ;;549
 ;;21,"00904523552 ")
 ;;550
 ;;21,"00904537940 ")
 ;;551
 ;;21,"00904537952 ")
 ;;552
 ;;21,"00904537960 ")
 ;;553
 ;;21,"00904537961 ")
 ;;554
 ;;21,"00904558152 ")
 ;;555
 ;;21,"00904558161 ")
 ;;556
 ;;21,"00904558252 ")
 ;;557
 ;;21,"00904558261 ")
 ;;558
 ;;21,"00904558352 ")
 ;;559
 ;;21,"00904558361 ")
 ;;560
 ;;21,"00904580061 ")
 ;;561
 ;;21,"00904580161 ")
 ;;562
 ;;21,"00904580261 ")
 ;;563
 ;;21,"00904598840 ")
 ;;564
 ;;21,"00904598852 ")
 ;;565
 ;;21,"00904598861 ")
 ;;566
 ;;21,"00904773240 ")
 ;;567
 ;;21,"00904773252 ")
 ;;568
 ;;21,"06059800701 ")
 ;;569
 ;;21,"10135018601 ")
 ;;570
 ;;21,"10135018610 ")
 ;;571
 ;;21,"10135018801 ")
 ;;572
 ;;21,"10135018901 ")
 ;;573
 ;;21,"10135019199 ")
 ;;574
 ;;21,"10135019201 ")
 ;;575
 ;;21,"10135019210 ")
 ;;576
 ;;21,"10135050805 ")
 ;;577
 ;;21,"10135050890 ")
 ;;578
 ;;21,"10135050905 ")
 ;;579
 ;;21,"10135050930 ")
 ;;580
 ;;21,"10135050990 ")
 ;;581
 ;;21,"10135051005 ")
 ;;582
 ;;21,"10135051030 ")
 ;;583
 ;;21,"10135051090 ")
 ;;584
 ;;21,"10135051105 ")
 ;;585
 ;;21,"10135051130 ")
 ;;586
 ;;21,"10135051190 ")
 ;;587
 ;;21,"10135051205 ")
 ;;588
 ;;21,"10135051230 ")
 ;;589
 ;;21,"10135051290 ")
 ;;590
 ;;21,"10267005300 ")
 ;;591
 ;;21,"10432003801 ")
 ;;592
 ;;21,"10432013301 ")
 ;;593
 ;;21,"10432030201 ")
 ;;594
 ;;21,"10544015230 ")
 ;;595
 ;;21,"11014050520 ")
 ;;596
 ;;21,"11383012323 ")
 ;;597
 ;;21,"11383014711 ")
 ;;598
 ;;21,"11694074201 ")
 ;;599
 ;;21,"11694086101 ")
 ;;600
 ;;21,"11694086104 ")
 ;;601
 ;;21,"11694088101 ")
 ;;602
 ;;21,"11819011395 ")
 ;;603
 ;;21,"11819013030 ")
 ;;604
 ;;21,"11819013530 ")
 ;;605
 ;;21,"11819013590 ")
 ;;606
 ;;21,"11819025630 ")
 ;;607
 ;;21,"11819025645 ")
 ;;608
 ;;21,"11819025690 ")
 ;;609
 ;;21,"11845005781 ")
 ;;610
 ;;21,"11845008825 ")
 ;;611
 ;;21,"11845009401 ")
 ;;612
 ;;21,"11845057701 ")
 ;;613
 ;;21,"11845057801 ")
 ;;614
 ;;21,"11845074201 ")
 ;;615
 ;;21,"11845094101 ")
 ;;616
 ;;21,"11845095201 ")
 ;;617
 ;;21,"11845107501 ")
 ;;618
 ;;21,"12280010860 ")
 ;;619
 ;;21,"12634033001 ")
 ;;620
 ;;21,"12634033210 ")
 ;;621
 ;;21,"12634033301 ")
 ;;622
 ;;21,"12634071501 ")
 ;;623
 ;;21,"12634071505 ")
 ;;624
 ;;21,"12634082390 ")
 ;;625
 ;;21,"13411016703 ")
 ;;626
 ;;21,"13411016710 ")
 ;;627
 ;;21,"13411054403 ")
 ;;628
 ;;21,"13411054503 ")
 ;;629
 ;;21,"13411054603 ")
 ;;630
 ;;21,"14508011513 ")
 ;;631
 ;;21,"14508011518 ")
 ;;632
 ;;21,"14508011586 ")
 ;;633
 ;;21,"14550051401 ")
 ;;634
 ;;21,"14550051404 ")
 ;;635
 ;;21,"14550051501 ")
 ;;636
 ;;21,"14550051504 ")
 ;;637
 ;;21,"14550051601 ")
 ;;638
 ;;21,"14550051604 ")
 ;;639
 ;;21,"16252050530 ")
 ;;640
 ;;21,"16252050550 ")
 ;;641
 ;;21,"16252050590 ")
 ;;642
 ;;21,"16252050600 ")
 ;;643
 ;;21,"16252050630 ")
 ;;644
 ;;21,"16252050650 ")
 ;;645
 ;;21,"16252050690 ")
 ;;646
 ;;21,"16252050700 ")
 ;;647
 ;;21,"16252050730 ")
 ;;648
 ;;21,"16252050750 ")
 ;;649
 ;;21,"16252050790 ")
 ;;650
 ;;21,"16252050800 ")
 ;;651
 ;;21,"16252050830 ")
 ;;652
 ;;21,"16252050850 ")
 ;;653
 ;;21,"16252050890 ")
 ;;654
 ;;21,"16252050900 ")
 ;;655
 ;;21,"16252050930 ")
 ;;656
 ;;21,"16252050950 ")
 ;;657
 ;;21,"16252050990 ")
 ;;658
 ;;21,"16364000410 ")
 ;;659
 ;;21,"16364000412 ")
 ;;660
 ;;21,"16364000415 ")
 ;;661
 ;;21,"16364000417 ")
 ;;662
 ;;21,"16364000510 ")
 ;;663
 ;;21,"16364000512 ")
 ;;664
 ;;21,"16364000515 ")
 ;;665
 ;;21,"16364000517 ")
 ;;666
 ;;21,"16364000610 ")
 ;;667
 ;;21,"16364000612 ")
 ;;668
 ;;21,"16364000615 ")
 ;;669
 ;;21,"16364000617 ")
 ;;670
 ;;21,"16364000710 ")
 ;;671
 ;;21,"16364000712 ")
 ;;672
 ;;21,"16364000715 ")
 ;;673
 ;;21,"16364000717 ")
 ;;674
 ;;21,"16563002901 ")
 ;;675
 ;;21,"16590043130 ")
 ;;676
 ;;21,"16590072690 ")
 ;;677
 ;;21,"16714010101 ")
 ;;678
 ;;21,"16714010102 ")
 ;;679
 ;;21,"16714010103 ")
 ;;680
 ;;21,"16714010104 ")
 ;;681
 ;;21,"16714010105 ")
 ;;682
 ;;21,"16714068101 ")
 ;;683
 ;;21,"16714068102 ")
 ;;684
 ;;21,"16714068201 ")
 ;;685
 ;;21,"16714068202 ")
 ;;686
 ;;21,"16714068203 ")
 ;;687
 ;;21,"16714068301 ")
 ;;688
 ;;21,"16714068302 ")
 ;;689
 ;;21,"16714068303 ")
 ;;690
 ;;21,"16714068401 ")
 ;;691
 ;;21,"16714068402 ")
 ;;692
 ;;21,"16714068403 ")
 ;;693
 ;;21,"16714068501 ")
 ;;694
 ;;21,"16714068502 ")
 ;;695
 ;;21,"16714068503 ")
 ;;696
 ;;21,"16729000410 ")
 ;;697
 ;;21,"16729000412 ")
 ;;698
 ;;21,"16729000415 ")
 ;;699
 ;;21,"16729000417 ")
 ;;700
 ;;21,"16729000510 ")
 ;;701
 ;;21,"16729000512 ")
 ;;702
 ;;21,"16729000515 ")
 ;;703
 ;;21,"16729000517 ")
 ;;704
 ;;21,"16729000610 ")
 ;;705
 ;;21,"16729000612 ")
 ;;706
 ;;21,"16729000615 ")
 ;;707
 ;;21,"16729000617 ")
 ;;708
 ;;21,"16729000710 ")
 ;;709
 ;;21,"16729000712 ")
 ;;710
 ;;21,"16729000715 ")
 ;;711
 ;;21,"16729000717 ")
 ;;712
 ;;21,"17236041801 ")
 ;;713
 ;;21,"17236041810 ")
 ;;714
 ;;21,"17236042001 ")
 ;;715
 ;;21,"17236042010 ")
 ;;716
 ;;21,"17236042101 ")
 ;;717
 ;;21,"17236042110 ")
 ;;718
 ;;21,"17856005302 ")
 ;;719
 ;;21,"17856019902 ")
 ;;720
 ;;21,"17856078902 ")
 ;;721
 ;;21,"17856079302 ")
 ;;722
 ;;21,"21695053430 ")
 ;;723
 ;;21,"21695053530 ")
 ;;724
 ;;21,"21695073230 ")
 ;;725
 ;;21,"21695073260 ")
 ;;726
 ;;21,"21695073930 ")
 ;;727
 ;;21,"21695074130 ")
 ;;728
 ;;21,"21695074190 ")
 ;;729
 ;;21,"21695074230 ")
 ;;730
 ;;21,"23490063200 ")
 ;;731
 ;;21,"23490063203 ")
 ;;732
 ;;21,"23490063205 ")
 ;;733
 ;;21,"23490063206 ")
 ;;734
 ;;21,"23490063209 ")
 ;;735
 ;;21,"23490562601 ")
 ;;736
 ;;21,"23490562602 ")
 ;;737
 ;;21,"23490583802 ")
 ;;738
 ;;21,"23490583806 ")
 ;;739
 ;;21,"23490583809 ")
 ;;740
 ;;21,"23490583900 ")
 ;;741
 ;;21,"23490583901 ")
 ;;742
 ;;21,"23490584001 ")
 ;;743
 ;;21,"23490584002 ")
 ;;744
 ;;21,"23490935303 ")
 ;;745
 ;;21,"23490935306 ")
 ;;746
 ;;21,"23490935309 ")
 ;;747
 ;;21,"23490935403 ")
 ;;748
 ;;21,"23490935406 ")
 ;;749
 ;;21,"23490935409 ")
 ;;750
 ;;21,"23490935503 ")
 ;;751
 ;;21,"23490935506 ")
 ;;752
 ;;21,"23490935509 ")
 ;;753
 ;;21,"23490935603 ")
 ;;754
 ;;21,"23490935606 ")
 ;;755
 ;;21,"23490935609 ")
 ;;756
 ;;21,"23490935703 ")
 ;;757
 ;;21,"23490935706 ")
 ;;758
 ;;21,"23490935709 ")
 ;;759
 ;;21,"23629005901 ")
 ;;760
 ;;21,"24236008602 ")
 ;;761
 ;;21,"24236015602 ")
 ;;762
 ;;21,"24236021002 ")
 ;;763
 ;;21,"24236022902 ")
 ;;764
 ;;21,"24236030502 ")
 ;;765
 ;;21,"24236037202 ")
 ;;766
 ;;21,"24236038402 ")
 ;;767
 ;;21,"24236050002 ")
 ;;768
 ;;21,"24236059102 ")
 ;;769
 ;;21,"24236064002 ")
 ;;770
 ;;21,"24236064402 ")
 ;;771
 ;;21,"24236067702 ")
 ;;772
 ;;21,"24236069502 ")
 ;;773
 ;;21,"24236072402 ")
 ;;774
 ;;21,"24236074502 ")
 ;;775
 ;;21,"24236075602 ")
 ;;776
 ;;21,"24236093702 ")
 ;;777
 ;;21,"24385073478 ")
 ;;778
 ;;21,"24385083978 ")
 ;;779
 ;;21,"24658013005 ")
 ;;780
 ;;21,"24658013018 ")
 ;;781
 ;;21,"24658013060 ")
 ;;782
 ;;21,"24658021010 ")
 ;;783
 ;;21,"24658021030 ")
 ;;784
 ;;21,"24658021045 ")
 ;;785
 ;;21,"24658021090 ")
 ;;786
 ;;21,"24658021110 ")
 ;;787
 ;;21,"24658021130 ")
 ;;788
 ;;21,"24658021145 ")
 ;;789
 ;;21,"24658021190 ")
 ;;790
 ;;21,"24658021210 ")
 ;;791
 ;;21,"24658021230 ")
 ;;792
 ;;21,"24658021245 ")
 ;;793
 ;;21,"24658021290 ")
 ;;794
 ;;21,"24658021310 ")
 ;;795
 ;;21,"24658021330 ")
 ;;796
 ;;21,"24658021345 ")
 ;;797
 ;;21,"24658021390 ")
 ;;798
 ;;21,"24658021410 ")
 ;;799
 ;;21,"24658021430 ")
 ;;800
 ;;21,"24658021445 ")
 ;;801
 ;;21,"24658021490 ")
 ;;802
 ;;21,"26053006401 ")
 ;;803
 ;;21,"26053006501 ")
 ;;804
 ;;21,"26053006601 ")
 ;;805
 ;;21,"26053017701 ")
 ;;806
 ;;21,"26053018301 ")
 ;;807
 ;;21,"26053031001 ")
 ;;808
 ;;21,"26053031201 ")
 ;;809
 ;;21,"26053041501 ")
 ;;810
 ;;21,"30768000061 ")
 ;;811
 ;;21,"31722022505 ")
 ;;812
 ;;21,"31722022560 ")
 ;;813
 ;;21,"33358015530 ")
 ;;814
 ;;21,"33358022330 ")
 ;;815
 ;;21,"33358022500 ")
 ;;816
 ;;21,"33358022530 ")
 ;;817
 ;;21,"33358022560 ")
 ;;818
 ;;21,"33358022630 ")
 ;;819
 ;;21,"33358043130 ")
 ;;820
 ;;21,"37205007878 ")
 ;;821
 ;;21,"38245026679 ")
 ;;822
 ;;21,"38245026680 ")
 ;;823
 ;;21,"38245030028 ")
 ;;824
 ;;21,"38245030080 ")
 ;;825
 ;;21,"39686001423 ")
 ;;826
 ;;21,"42043017009 ")
 ;;827
 ;;21,"42043017109 ")
 ;;828
 ;;21,"43063000801 ")
 ;;829
 ;;21,"43063008030 ")
 ;;830
 ;;21,"43063008090 ")
 ;;831
 ;;21,"43292012356 ")
 ;;832
 ;;21,"43292022328 ")
 ;;833
 ;;21,"43292055740 ")
 ;;834