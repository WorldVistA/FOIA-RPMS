BGP2VN5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 08, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63874-0442-05 ")
 ;;1398
 ;;21,"63874-0442-09 ")
 ;;1399
 ;;21,"63874-0442-10 ")
 ;;1400
 ;;21,"63874-0442-14 ")
 ;;1401
 ;;21,"63874-0442-15 ")
 ;;1402
 ;;21,"63874-0442-20 ")
 ;;1403
 ;;21,"63874-0442-25 ")
 ;;1404
 ;;21,"63874-0442-28 ")
 ;;1405
 ;;21,"63874-0442-30 ")
 ;;1406
 ;;21,"63874-0442-40 ")
 ;;1407
 ;;21,"63874-0442-45 ")
 ;;1408
 ;;21,"63874-0442-60 ")
 ;;1409
 ;;21,"63874-0442-90 ")
 ;;1410
 ;;21,"63874-0707-12 ")
 ;;315
 ;;21,"63874-0707-48 ")
 ;;316
 ;;21,"63874-0711-12 ")
 ;;1491
 ;;21,"63874-0712-12 ")
 ;;1755
 ;;21,"63874-0718-12 ")
 ;;1045
 ;;21,"63874-0757-01 ")
 ;;1464
 ;;21,"63874-0757-04 ")
 ;;1465
 ;;21,"63874-0757-10 ")
 ;;1466
 ;;21,"63874-0757-15 ")
 ;;1467
 ;;21,"63874-0757-20 ")
 ;;1468
 ;;21,"63874-0757-21 ")
 ;;1469
 ;;21,"63874-0757-24 ")
 ;;1470
 ;;21,"63874-0757-28 ")
 ;;1471
 ;;21,"63874-0757-30 ")
 ;;1472
 ;;21,"63874-0757-60 ")
 ;;1473
 ;;21,"63874-0757-90 ")
 ;;1474
 ;;21,"64980-0123-01 ")
 ;;250
 ;;21,"64980-0123-10 ")
 ;;251
 ;;21,"64980-0504-48 ")
 ;;210
 ;;21,"65162-0156-10 ")
 ;;706
 ;;21,"65162-0156-11 ")
 ;;707
 ;;21,"65162-0516-10 ")
 ;;618
 ;;21,"65162-0516-11 ")
 ;;619
 ;;21,"65162-0518-10 ")
 ;;853
 ;;21,"65162-0518-11 ")
 ;;854
 ;;21,"65162-0521-10 ")
 ;;1687
 ;;21,"65162-0521-11 ")
 ;;1688
 ;;21,"65162-0522-10 ")
 ;;1721
 ;;21,"65162-0608-24 ")
 ;;101
 ;;21,"65162-0745-10 ")
 ;;1514
 ;;21,"65224-0545-01 ")
 ;;897
 ;;21,"66267-0080-15 ")
 ;;620
 ;;21,"66267-0080-20 ")
 ;;621
 ;;21,"66267-0080-30 ")
 ;;622
 ;;21,"66267-0080-60 ")
 ;;623
 ;;21,"66267-0081-15 ")
 ;;855
 ;;21,"66267-0081-20 ")
 ;;856
 ;;21,"66267-0081-30 ")
 ;;857
 ;;21,"66267-0081-60 ")
 ;;858
 ;;21,"66267-0112-15 ")
 ;;1010
 ;;21,"66267-0112-30 ")
 ;;1011
 ;;21,"66267-0112-60 ")
 ;;1012
 ;;21,"66267-0177-30 ")
 ;;1689
 ;;21,"66267-0813-04 ")
 ;;1690
 ;;21,"66267-0977-04 ")
 ;;424
 ;;21,"66336-0045-06 ")
 ;;859
 ;;21,"66336-0045-15 ")
 ;;860
 ;;21,"66336-0045-30 ")
 ;;861
 ;;21,"66336-0045-60 ")
 ;;862
 ;;21,"66336-0085-10 ")
 ;;1691
 ;;21,"66336-0085-12 ")
 ;;1692
 ;;21,"66336-0085-30 ")
 ;;1693
 ;;21,"66336-0086-15 ")
 ;;1206
 ;;21,"66336-0086-20 ")
 ;;1207
 ;;21,"66336-0086-30 ")
 ;;1208
 ;;21,"66336-0208-20 ")
 ;;1411
 ;;21,"66336-0208-30 ")
 ;;1412
 ;;21,"66336-0589-15 ")
 ;;624
 ;;21,"66336-0589-20 ")
 ;;625
 ;;21,"66336-0589-30 ")
 ;;626
 ;;21,"66336-0589-60 ")
 ;;627
 ;;21,"66336-0795-15 ")
 ;;1013
 ;;21,"66336-0796-30 ")
 ;;1292
 ;;21,"66336-0797-60 ")
 ;;1475
 ;;21,"66346-0121-65 ")
 ;;889
 ;;21,"66346-0191-65 ")
 ;;891
 ;;21,"66375-0107-02 ")
 ;;708
 ;;21,"66375-0108-02 ")
 ;;884
 ;;21,"66424-0020-01 ")
 ;;628
 ;;21,"66424-0020-10 ")
 ;;629
 ;;21,"66424-0021-01 ")
 ;;863
 ;;21,"66424-0021-10 ")
 ;;864
 ;;21,"66553-0010-01 ")
 ;;709
 ;;21,"66869-0107-10 ")
 ;;260
 ;;21,"66869-0154-10 ")
 ;;262
 ;;21,"66869-0407-10 ")
 ;;288
 ;;21,"66869-0426-10 ")
 ;;280
 ;;21,"67405-0575-10 ")
 ;;1014
 ;;21,"67405-0575-50 ")
 ;;1015
 ;;21,"67405-0575-96 ")
 ;;1016
 ;;21,"67405-0577-10 ")
 ;;1293
 ;;21,"67405-0577-50 ")
 ;;1294
 ;;21,"67405-0671-10 ")
 ;;1209
 ;;21,"67405-0671-50 ")
 ;;1210
 ;;21,"67405-0671-96 ")
 ;;1211
 ;;21,"67544-0791-30 ")
 ;;1413
 ;;21,"68025-0032-16 ")
 ;;277
 ;;21,"68032-0189-60 ")
 ;;711
 ;;21,"68032-0205-60 ")
 ;;904
 ;;21,"68047-0136-16 ")
 ;;278
 ;;21,"68047-0271-01 ")
 ;;281
 ;;21,"68084-0154-01 ")
 ;;1515
 ;;21,"68084-0154-11 ")
 ;;1516
 ;;21,"68084-0155-01 ")
 ;;1694
 ;;21,"68084-0155-11 ")
 ;;1695
 ;;21,"68084-0156-01 ")
 ;;1722
 ;;21,"68084-0253-01 ")
 ;;1017
 ;;21,"68084-0253-11 ")
 ;;1018
 ;;21,"68084-0254-01 ")
 ;;1212
 ;;21,"68084-0254-11 ")
 ;;1213
 ;;21,"68084-0255-01 ")
 ;;1295
 ;;21,"68084-0255-11 ")
 ;;1296
 ;;21,"68115-0116-00 ")
 ;;630
 ;;21,"68115-0116-10 ")
 ;;631
 ;;21,"68115-0116-12 ")
 ;;632
 ;;21,"68115-0116-15 ")
 ;;633
 ;;21,"68115-0116-20 ")
 ;;634
 ;;21,"68115-0116-24 ")
 ;;635
 ;;21,"68115-0116-30 ")
 ;;636
 ;;21,"68115-0116-60 ")
 ;;637
 ;;21,"68115-0117-06 ")
 ;;865
 ;;21,"68115-0117-15 ")
 ;;866
 ;;21,"68115-0117-20 ")
 ;;867
 ;;21,"68115-0117-30 ")
 ;;868
 ;;21,"68115-0174-00 ")
 ;;1019
 ;;21,"68115-0174-15 ")
 ;;1020
 ;;21,"68115-0174-30 ")
 ;;1021
 ;;21,"68115-0175-12 ")
 ;;1214
 ;;21,"68115-0175-15 ")
 ;;1215
 ;;21,"68115-0175-20 ")
 ;;1216
 ;;21,"68115-0175-30 ")
 ;;1217
 ;;21,"68115-0175-60 ")
 ;;1218
 ;;21,"68115-0176-00 ")
 ;;1297
 ;;21,"68115-0176-30 ")
 ;;1298
 ;;21,"68115-0177-00 ")
 ;;1414
 ;;21,"68115-0177-30 ")
 ;;1415
 ;;21,"68115-0177-60 ")
 ;;1416
 ;;21,"68115-0178-20 ")
 ;;1476
 ;;21,"68115-0178-60 ")
 ;;1299
 ;;21,"68115-0302-00 ")
 ;;1696
 ;;21,"68115-0302-04 ")
 ;;1697
 ;;21,"68115-0302-20 ")
 ;;1698
 ;;21,"68115-0302-30 ")
 ;;1699
 ;;21,"68115-0302-90 ")
 ;;1700
 ;;21,"68115-0900-04 ")
 ;;317
 ;;21,"68115-0915-04 ")
 ;;201
 ;;21,"68115-0976-04 ")
 ;;425
 ;;21,"68308-0122-04 ")
 ;;714
 ;;21,"68308-0126-04 ")
 ;;910
 ;;21,"68308-0130-04 ")
 ;;143
 ;;21,"68308-0134-04 ")
 ;;893
 ;;21,"68308-0140-04 ")
 ;;141
 ;;21,"68308-0180-10 ")
 ;;282
 ;;21,"68308-0526-60 ")
 ;;905
 ;;21,"68308-0737-16 ")
 ;;263
 ;;21,"68308-0755-60 ")
 ;;139
 ;;21,"68382-0040-01 ")
 ;;1517
 ;;21,"68382-0040-10 ")
 ;;1518
 ;;21,"68382-0041-01 ")
 ;;1701
 ;;21,"68382-0041-10 ")
 ;;1702
 ;;21,"68382-0042-01 ")
 ;;1723
 ;;21,"68382-0042-10 ")
 ;;1724
 ;;21,"68387-0468-30 ")
 ;;1477
 ;;21,"68387-0469-30 ")
 ;;1309
 ;;21,"68387-0536-30 ")
 ;;1703
 ;;21,"68387-0536-90 ")
 ;;1704
 ;;21,"68387-0541-30 ")
 ;;638
 ;;21,"68453-0145-04 ")
 ;;273
 ;;21,"68453-0145-16 ")
 ;;274
 ;;21,"68462-0360-01 ")
 ;;1022
 ;;21,"68462-0360-05 ")
 ;;1023
 ;;21,"68462-0361-01 ")
 ;;1219
 ;;21,"68462-0361-05 ")
 ;;1220
 ;;21,"68462-0362-01 ")
 ;;1300
 ;;21,"68462-0362-05 ")
 ;;1301
 ;;21,"70030-0462-62 ")
 ;;639
 ;;21,"70030-0479-62 ")
 ;;640
 ;;21,"74300-0001-33 ")
 ;;869
 ;;21,"74300-0003-66 ")
 ;;135
 ;;21,"74300-0003-67 ")
 ;;136
 ;;21,"74300-0006-10 ")
 ;;870
 ;;21,"74300-0006-11 ")
 ;;871
 ;;21,"75137-0004-93 ")
 ;;27
 ;;21,"75137-0004-95 ")
 ;;28
 ;;21,"75137-0004-97 ")
 ;;35
 ;;21,"75137-0212-03 ")
 ;;885
 ;;21,"75137-0212-12 ")
 ;;886
 ;;21,"75137-0904-92 ")
 ;;29
 ;;9002226,800,.01)
 ;;BGP HEDIS ANTIHISTAMINE NDC
 ;;9002226,800,.02)
 ;;@
 ;;9002226,800,.04)
 ;;n
 ;;9002226,800,.06)
 ;;@
 ;;9002226,800,.08)
 ;;@
 ;;9002226,800,.09)
 ;;@
 ;;9002226,800,.11)
 ;;@
 ;;9002226,800,.12)
 ;;@
 ;;9002226,800,.13)
 ;;1
 ;;9002226,800,.14)
 ;;@
 ;;9002226,800,.15)
 ;;@
 ;;9002226,800,.16)
 ;;@
 ;;9002226,800,.17)
 ;;@
 ;;9002226,800,3101)
 ;;@
 ;;9002226.02101,"800,00006-0062-68 ",.01)
 ;;00006-0062-68
 ;;9002226.02101,"800,00006-0062-68 ",.02)
 ;;00006-0062-68
 ;;9002226.02101,"800,00031-2247-13 ",.01)
 ;;00031-2247-13
 ;;9002226.02101,"800,00031-2247-13 ",.02)
 ;;00031-2247-13
 ;;9002226.02101,"800,00031-8698-12 ",.01)
 ;;00031-8698-12
 ;;9002226.02101,"800,00031-8698-12 ",.02)
 ;;00031-8698-12
 ;;9002226.02101,"800,00031-8698-13 ",.01)
 ;;00031-8698-13
 ;;9002226.02101,"800,00031-8698-13 ",.02)
 ;;00031-8698-13
 ;;9002226.02101,"800,00031-8701-12 ",.01)
 ;;00031-8701-12
 ;;9002226.02101,"800,00031-8701-12 ",.02)
 ;;00031-8701-12
 ;;9002226.02101,"800,00031-8715-12 ",.01)
 ;;00031-8715-12
 ;;9002226.02101,"800,00031-8715-12 ",.02)
 ;;00031-8715-12
 ;;9002226.02101,"800,00031-8735-12 ",.01)
 ;;00031-8735-12
 ;;9002226.02101,"800,00031-8735-12 ",.02)
 ;;00031-8735-12
 ;;9002226.02101,"800,00031-8735-18 ",.01)
 ;;00031-8735-18
 ;;9002226.02101,"800,00031-8735-18 ",.02)
 ;;00031-8735-18
 ;;9002226.02101,"800,00043-0460-08 ",.01)
 ;;00043-0460-08
 ;;9002226.02101,"800,00043-0460-08 ",.02)
 ;;00043-0460-08
 ;;9002226.02101,"800,00043-6204-04 ",.01)
 ;;00043-6204-04
 ;;9002226.02101,"800,00043-6204-04 ",.02)
 ;;00043-6204-04
 ;;9002226.02101,"800,00043-6204-08 ",.01)
 ;;00043-6204-08
 ;;9002226.02101,"800,00043-6204-08 ",.02)
 ;;00043-6204-08
 ;;9002226.02101,"800,00043-6256-06 ",.01)
 ;;00043-6256-06
 ;;9002226.02101,"800,00043-6256-06 ",.02)
 ;;00043-6256-06
 ;;9002226.02101,"800,00043-6265-08 ",.01)
 ;;00043-6265-08
 ;;9002226.02101,"800,00043-6265-08 ",.02)
 ;;00043-6265-08
 ;;9002226.02101,"800,00045-0180-18 ",.01)
 ;;00045-0180-18
 ;;9002226.02101,"800,00045-0180-18 ",.02)
 ;;00045-0180-18
 ;;9002226.02101,"800,00045-0182-10 ",.01)
 ;;00045-0182-10
 ;;9002226.02101,"800,00045-0182-10 ",.02)
 ;;00045-0182-10
 ;;9002226.02101,"800,00045-0211-48 ",.01)
 ;;00045-0211-48
 ;;9002226.02101,"800,00045-0211-48 ",.02)
 ;;00045-0211-48
 ;;9002226.02101,"800,00045-0244-20 ",.01)
 ;;00045-0244-20
 ;;9002226.02101,"800,00045-0244-20 ",.02)
 ;;00045-0244-20
 ;;9002226.02101,"800,00045-0244-40 ",.01)
 ;;00045-0244-40
 ;;9002226.02101,"800,00045-0244-40 ",.02)
 ;;00045-0244-40
 ;;9002226.02101,"800,00045-0244-80 ",.01)
 ;;00045-0244-80
 ;;9002226.02101,"800,00045-0244-80 ",.02)
 ;;00045-0244-80
 ;;9002226.02101,"800,00045-0482-20 ",.01)
 ;;00045-0482-20
 ;;9002226.02101,"800,00045-0482-20 ",.02)
 ;;00045-0482-20
 ;;9002226.02101,"800,00045-0482-35 ",.01)
 ;;00045-0482-35
 ;;9002226.02101,"800,00045-0482-35 ",.02)
 ;;00045-0482-35
 ;;9002226.02101,"800,00067-0246-17 ",.01)
 ;;00067-0246-17
 ;;9002226.02101,"800,00067-0246-17 ",.02)
 ;;00067-0246-17
 ;;9002226.02101,"800,00067-0297-24 ",.01)
 ;;00067-0297-24
 ;;9002226.02101,"800,00067-0297-24 ",.02)
 ;;00067-0297-24
 ;;9002226.02101,"800,00067-2053-08 ",.01)
 ;;00067-2053-08
 ;;9002226.02101,"800,00067-2053-08 ",.02)
 ;;00067-2053-08
 ;;9002226.02101,"800,00067-2053-24 ",.01)
 ;;00067-2053-24
 ;;9002226.02101,"800,00067-2053-24 ",.02)
 ;;00067-2053-24
 ;;9002226.02101,"800,00067-2053-50 ",.01)
 ;;00067-2053-50
 ;;9002226.02101,"800,00067-2053-50 ",.02)
 ;;00067-2053-50
 ;;9002226.02101,"800,00067-2053-91 ",.01)
 ;;00067-2053-91
 ;;9002226.02101,"800,00067-2053-91 ",.02)
 ;;00067-2053-91
 ;;9002226.02101,"800,00067-2055-24 ",.01)
 ;;00067-2055-24
 ;;9002226.02101,"800,00067-2055-24 ",.02)
 ;;00067-2055-24
 ;;9002226.02101,"800,00067-2055-50 ",.01)
 ;;00067-2055-50
 ;;9002226.02101,"800,00067-2055-50 ",.02)
 ;;00067-2055-50
 ;;9002226.02101,"800,00067-2055-91 ",.01)
 ;;00067-2055-91
 ;;9002226.02101,"800,00067-2055-91 ",.02)
 ;;00067-2055-91
 ;;9002226.02101,"800,00067-6147-12 ",.01)
 ;;00067-6147-12
 ;;9002226.02101,"800,00067-6147-12 ",.02)
 ;;00067-6147-12
 ;;9002226.02101,"800,00067-6149-14 ",.01)
 ;;00067-6149-14
 ;;9002226.02101,"800,00067-6149-14 ",.02)
 ;;00067-6149-14
 ;;9002226.02101,"800,00067-6149-16 ",.01)
 ;;00067-6149-16
 ;;9002226.02101,"800,00067-6149-16 ",.02)
 ;;00067-6149-16
 ;;9002226.02101,"800,00067-6180-20 ",.01)
 ;;00067-6180-20
 ;;9002226.02101,"800,00067-6180-20 ",.02)
 ;;00067-6180-20
 ;;9002226.02101,"800,00067-6344-04 ",.01)
 ;;00067-6344-04
 ;;9002226.02101,"800,00067-6344-04 ",.02)
 ;;00067-6344-04
 ;;9002226.02101,"800,00067-6344-08 ",.01)
 ;;00067-6344-08
 ;;9002226.02101,"800,00067-6344-08 ",.02)
 ;;00067-6344-08
 ;;9002226.02101,"800,00067-6354-14 ",.01)
 ;;00067-6354-14
 ;;9002226.02101,"800,00067-6354-14 ",.02)
 ;;00067-6354-14
 ;;9002226.02101,"800,00067-6356-14 ",.01)
 ;;00067-6356-14
 ;;9002226.02101,"800,00067-6356-14 ",.02)
 ;;00067-6356-14
 ;;9002226.02101,"800,00067-6383-14 ",.01)
 ;;00067-6383-14
 ;;9002226.02101,"800,00067-6383-14 ",.02)
 ;;00067-6383-14
 ;;9002226.02101,"800,00067-6405-20 ",.01)
 ;;00067-6405-20
 ;;9002226.02101,"800,00067-6405-20 ",.02)
 ;;00067-6405-20
 ;;9002226.02101,"800,00067-6405-80 ",.01)
 ;;00067-6405-80
 ;;9002226.02101,"800,00067-6405-80 ",.02)
 ;;00067-6405-80
 ;;9002226.02101,"800,00067-6407-08 ",.01)
 ;;00067-6407-08
 ;;9002226.02101,"800,00067-6407-08 ",.02)
 ;;00067-6407-08
 ;;9002226.02101,"800,00069-5410-66 ",.01)
 ;;00069-5410-66
 ;;9002226.02101,"800,00069-5410-66 ",.02)
 ;;00069-5410-66
 ;;9002226.02101,"800,00069-5420-66 ",.01)
 ;;00069-5420-66
 ;;9002226.02101,"800,00069-5420-66 ",.02)
 ;;00069-5420-66
 ;;9002226.02101,"800,00069-5440-93 ",.01)
 ;;00069-5440-93
 ;;9002226.02101,"800,00069-5440-93 ",.02)
 ;;00069-5440-93
 ;;9002226.02101,"800,00069-5440-97 ",.01)
 ;;00069-5440-97
 ;;9002226.02101,"800,00069-5440-97 ",.02)
 ;;00069-5440-97
 ;;9002226.02101,"800,00071-2333-17 ",.01)
 ;;00071-2333-17
 ;;9002226.02101,"800,00071-2333-17 ",.02)
 ;;00071-2333-17
 ;;9002226.02101,"800,00071-2555-17 ",.01)
 ;;00071-2555-17
 ;;9002226.02101,"800,00071-2555-17 ",.02)
 ;;00071-2555-17
 ;;9002226.02101,"800,00085-0268-05 ",.01)
 ;;00085-0268-05
 ;;9002226.02101,"800,00085-0268-05 ",.02)
 ;;00085-0268-05
 ;;9002226.02101,"800,00085-0820-03 ",.01)
 ;;00085-0820-03
 ;;9002226.02101,"800,00085-0820-03 ",.02)
 ;;00085-0820-03
 ;;9002226.02101,"800,00085-1117-01 ",.01)
 ;;00085-1117-01
 ;;9002226.02101,"800,00085-1117-01 ",.02)
 ;;00085-1117-01
 ;;9002226.02101,"800,00093-2929-01 ",.01)
 ;;00093-2929-01
 ;;9002226.02101,"800,00093-2929-01 ",.02)
 ;;00093-2929-01
 ;;9002226.02101,"800,00093-2929-10 ",.01)
 ;;00093-2929-10
 ;;9002226.02101,"800,00093-2929-10 ",.02)
 ;;00093-2929-10
 ;;9002226.02101,"800,00093-2929-93 ",.01)
 ;;00093-2929-93