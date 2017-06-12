BGP63E2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00378-0723-01 ")
 ;;1013
 ;;21,"00378-1012-01 ")
 ;;1153
 ;;21,"00378-1075-93 ")
 ;;858
 ;;21,"00378-1076-93 ")
 ;;850
 ;;21,"00378-1077-93 ")
 ;;862
 ;;21,"00378-1078-93 ")
 ;;854
 ;;21,"00378-1418-77 ")
 ;;1391
 ;;21,"00378-1418-93 ")
 ;;1392
 ;;21,"00378-1419-10 ")
 ;;1344
 ;;21,"00378-1419-77 ")
 ;;1345
 ;;21,"00378-1419-93 ")
 ;;1346
 ;;21,"00378-1420-77 ")
 ;;1443
 ;;21,"00378-1420-93 ")
 ;;1444
 ;;21,"00378-1721-93 ")
 ;;889
 ;;21,"00378-1722-93 ")
 ;;869
 ;;21,"00378-1723-93 ")
 ;;898
 ;;21,"00378-1724-93 ")
 ;;879
 ;;21,"00378-2012-01 ")
 ;;1219
 ;;21,"00378-2022-05 ")
 ;;173
 ;;21,"00378-2022-77 ")
 ;;174
 ;;21,"00378-2023-05 ")
 ;;56
 ;;21,"00378-2023-77 ")
 ;;57
 ;;21,"00378-2023-93 ")
 ;;58
 ;;21,"00378-2024-05 ")
 ;;124
 ;;21,"00378-2024-77 ")
 ;;125
 ;;21,"00378-2024-93 ")
 ;;126
 ;;21,"00378-2025-01 ")
 ;;1283
 ;;21,"00378-2901-77 ")
 ;;1570
 ;;21,"00378-2901-93 ")
 ;;1571
 ;;21,"00378-2902-77 ")
 ;;1580
 ;;21,"00378-2902-93 ")
 ;;1581
 ;;21,"00378-2903-77 ")
 ;;1593
 ;;21,"00378-2903-93 ")
 ;;1594
 ;;21,"00378-2920-77 ")
 ;;461
 ;;21,"00378-2920-93 ")
 ;;462
 ;;21,"00378-2921-77 ")
 ;;471
 ;;21,"00378-2921-93 ")
 ;;472
 ;;21,"00378-2922-77 ")
 ;;488
 ;;21,"00378-2922-93 ")
 ;;489
 ;;21,"00378-3001-05 ")
 ;;976
 ;;21,"00378-3001-77 ")
 ;;977
 ;;21,"00378-3002-05 ")
 ;;984
 ;;21,"00378-3002-77 ")
 ;;985
 ;;21,"00378-3003-05 ")
 ;;993
 ;;21,"00378-3003-77 ")
 ;;994
 ;;21,"00378-3033-77 ")
 ;;1092
 ;;21,"00378-3033-93 ")
 ;;1093
 ;;21,"00378-3034-77 ")
 ;;1122
 ;;21,"00378-3034-93 ")
 ;;1123
 ;;21,"00378-4041-77 ")
 ;;283
 ;;21,"00378-4042-77 ")
 ;;348
 ;;21,"00378-4042-93 ")
 ;;349
 ;;21,"00378-4043-77 ")
 ;;208
 ;;21,"00378-4043-93 ")
 ;;209
 ;;21,"00378-4725-01 ")
 ;;970
 ;;21,"00378-4725-05 ")
 ;;971
 ;;21,"00378-4735-01 ")
 ;;912
 ;;21,"00378-4735-05 ")
 ;;913
 ;;21,"00378-4745-01 ")
 ;;928
 ;;21,"00378-4745-05 ")
 ;;929
 ;;21,"00378-4775-01 ")
 ;;950
 ;;21,"00378-4775-05 ")
 ;;951
 ;;21,"00378-5807-93 ")
 ;;567
 ;;21,"00378-5813-77 ")
 ;;589
 ;;21,"00378-5814-77 ")
 ;;505
 ;;21,"00378-5815-77 ")
 ;;541
 ;;21,"00378-6321-05 ")
 ;;1674
 ;;21,"00378-6321-77 ")
 ;;1675
 ;;21,"00378-6322-05 ")
 ;;1608
 ;;21,"00378-6322-77 ")
 ;;1609
 ;;21,"00378-6323-05 ")
 ;;1714
 ;;21,"00378-6323-77 ")
 ;;1715
 ;;21,"00378-6324-05 ")
 ;;1650
 ;;21,"00378-6324-77 ")
 ;;1651
 ;;21,"00378-6325-05 ")
 ;;1747
 ;;21,"00378-6325-77 ")
 ;;1748
 ;;21,"00378-6629-93 ")
 ;;41
 ;;21,"00378-6895-01 ")
 ;;736
 ;;21,"00378-6896-01 ")
 ;;753
 ;;21,"00378-6896-05 ")
 ;;754
 ;;21,"00378-6897-01 ")
 ;;785
 ;;21,"00378-6897-05 ")
 ;;786
 ;;21,"00378-6898-01 ")
 ;;692
 ;;21,"00378-6898-05 ")
 ;;693
 ;;21,"00378-6899-01 ")
 ;;825
 ;;21,"00378-6900-01 ")
 ;;722
 ;;21,"00490-0067-00 ")
 ;;1014
 ;;21,"00490-0067-30 ")
 ;;1015
 ;;21,"00490-0067-60 ")
 ;;1016
 ;;21,"00490-0067-90 ")
 ;;1017
 ;;21,"00490-7030-00 ")
 ;;1036
 ;;21,"00490-7030-30 ")
 ;;1037
 ;;21,"00490-7030-60 ")
 ;;1038
 ;;21,"00490-7030-90 ")
 ;;1039
 ;;21,"00574-0133-01 ")
 ;;1498
 ;;21,"00574-0134-01 ")
 ;;1491
 ;;21,"00574-0135-01 ")
 ;;1504
 ;;21,"00591-0860-01 ")
 ;;1154
 ;;21,"00591-0860-05 ")
 ;;1155
 ;;21,"00591-0861-01 ")
 ;;1220
 ;;21,"00591-0861-05 ")
 ;;1221
 ;;21,"00591-0862-01 ")
 ;;1284
 ;;21,"00591-0862-05 ")
 ;;1285
 ;;21,"00591-2167-19 ")
 ;;568
 ;;21,"00591-2167-30 ")
 ;;569
 ;;21,"00591-2168-10 ")
 ;;590
 ;;21,"00591-2168-19 ")
 ;;591
 ;;21,"00591-2169-10 ")
 ;;506
 ;;21,"00591-2169-19 ")
 ;;507
 ;;21,"00591-2170-05 ")
 ;;542
 ;;21,"00591-2170-19 ")
 ;;543
 ;;21,"00591-2315-10 ")
 ;;1676
 ;;21,"00591-2315-19 ")
 ;;1677
 ;;21,"00591-2316-10 ")
 ;;1610
 ;;21,"00591-2316-19 ")
 ;;1611
 ;;21,"00591-2317-10 ")
 ;;1716
 ;;21,"00591-2317-19 ")
 ;;1717
 ;;21,"00591-2318-19 ")
 ;;1652
 ;;21,"00591-2319-19 ")
 ;;1749
 ;;21,"00591-2782-19 ")
 ;;175
 ;;21,"00591-2782-30 ")
 ;;176
 ;;21,"00591-2783-19 ")
 ;;59
 ;;21,"00591-2783-30 ")
 ;;60
 ;;21,"00591-2784-19 ")
 ;;127
 ;;21,"00591-2784-30 ")
 ;;128
 ;;21,"00591-2785-19 ")
 ;;1094
 ;;21,"00591-2785-30 ")
 ;;1095
 ;;21,"00591-2786-19 ")
 ;;1124
 ;;21,"00591-2786-30 ")
 ;;1125
 ;;21,"00591-3292-15 ")
 ;;463
 ;;21,"00591-3293-15 ")
 ;;473
 ;;21,"00591-3294-15 ")
 ;;490
 ;;21,"00591-3745-10 ")
 ;;284
 ;;21,"00591-3745-19 ")
 ;;285
 ;;21,"00591-3746-10 ")
 ;;350
 ;;21,"00591-3746-19 ")
 ;;351
 ;;21,"00591-3746-30 ")
 ;;352
 ;;21,"00591-3747-10 ")
 ;;210
 ;;21,"00591-3747-19 ")
 ;;211
 ;;21,"00591-3747-30 ")
 ;;212
 ;;21,"00591-3757-01 ")
 ;;737
 ;;21,"00591-3758-01 ")
 ;;755
 ;;21,"00591-3758-05 ")
 ;;756
 ;;21,"00591-3759-01 ")
 ;;787
 ;;21,"00591-3759-05 ")
 ;;788
 ;;21,"00591-3760-01 ")
 ;;694
 ;;21,"00591-3760-05 ")
 ;;695
 ;;21,"00591-3761-01 ")
 ;;826
 ;;21,"00591-3762-01 ")
 ;;723
 ;;21,"00597-0039-37 ")
 ;;464
 ;;21,"00597-0040-37 ")
 ;;474
 ;;21,"00597-0041-37 ")
 ;;491
 ;;21,"00597-0042-37 ")
 ;;1595
 ;;21,"00597-0043-37 ")
 ;;1572
 ;;21,"00597-0044-37 ")
 ;;1582
 ;;21,"00597-0124-37 ")
 ;;859
 ;;21,"00597-0125-37 ")
 ;;851
 ;;21,"00597-0126-37 ")
 ;;863
 ;;21,"00597-0127-37 ")
 ;;855
 ;;21,"00603-4080-02 ")
 ;;177
 ;;21,"00603-4080-16 ")
 ;;178
 ;;21,"00603-4081-02 ")
 ;;61
 ;;21,"00603-4081-16 ")
 ;;62
 ;;21,"00603-4081-28 ")
 ;;63
 ;;21,"00603-4082-02 ")
 ;;129
 ;;21,"00603-4082-16 ")
 ;;130
 ;;21,"00603-4082-28 ")
 ;;131
 ;;21,"00603-4088-02 ")
 ;;1096
 ;;21,"00603-4088-16 ")
 ;;1097
 ;;21,"00603-4089-02 ")
 ;;1126
 ;;21,"00603-4089-16 ")
 ;;1127
 ;;21,"00603-4224-02 ")
 ;;286
 ;;21,"00603-4224-32 ")
 ;;287
 ;;21,"00603-4225-02 ")
 ;;353
 ;;21,"00603-4225-16 ")
 ;;354
 ;;21,"00603-4225-32 ")
 ;;355
 ;;21,"00603-4226-02 ")
 ;;213
 ;;21,"00603-4226-16 ")
 ;;214
 ;;21,"00603-4226-32 ")
 ;;215
 ;;21,"00603-4228-02 ")
 ;;1393
 ;;21,"00603-4228-16 ")
 ;;1394
 ;;21,"00603-4228-32 ")
 ;;1395
 ;;21,"00603-4229-02 ")
 ;;1347
 ;;21,"00603-4229-16 ")
 ;;1348
 ;;21,"00603-4229-32 ")
 ;;1349
 ;;21,"00603-4230-02 ")
 ;;1445
 ;;21,"00603-4230-16 ")
 ;;1446
 ;;21,"00603-4230-32 ")
 ;;1447
 ;;21,"00603-5914-16 ")
 ;;465
 ;;21,"00603-5915-16 ")
 ;;475
 ;;21,"00603-5916-16 ")
 ;;492
 ;;21,"00603-5926-16 ")
 ;;1573
 ;;21,"00603-5927-16 ")
 ;;1583
 ;;21,"00603-5928-16 ")
 ;;1596
 ;;21,"00603-6340-02 ")
 ;;570
 ;;21,"00603-6341-02 ")
 ;;592
 ;;21,"00603-6341-28 ")
 ;;593
 ;;21,"00603-6342-02 ")
 ;;508
 ;;21,"00603-6342-28 ")
 ;;509
 ;;21,"00603-6343-02 ")
 ;;544
 ;;21,"00603-6343-28 ")
 ;;545
 ;;21,"00603-6345-02 ")
 ;;1678
 ;;21,"00603-6345-28 ")
 ;;1679
 ;;21,"00603-6346-02 ")
 ;;1612
 ;;21,"00603-6346-28 ")
 ;;1613
 ;;21,"00603-6347-02 ")
 ;;1718
 ;;21,"00603-6347-28 ")
 ;;1719
 ;;21,"00603-6348-02 ")
 ;;1653
 ;;21,"00603-6348-28 ")
 ;;1654
 ;;21,"00603-6349-02 ")
 ;;1750
 ;;21,"00603-6349-28 ")
 ;;1751
 ;;21,"00781-2271-01 ")
 ;;738
 ;;21,"00781-2272-01 ")
 ;;757
 ;;21,"00781-2272-10 ")
 ;;758
 ;;21,"00781-2272-64 ")
 ;;759
 ;;21,"00781-2273-01 ")
 ;;789
 ;;21,"00781-2273-10 ")
 ;;790
 ;;21,"00781-2274-01 ")
 ;;696
 ;;21,"00781-2274-10 ")
 ;;697
 ;;21,"00781-2277-01 ")
 ;;827
 ;;21,"00781-2279-01 ")
 ;;724
 ;;21,"00781-5131-01 ")
 ;;972
 ;;21,"00781-5132-01 ")
 ;;914
 ;;21,"00781-5133-01 ")
 ;;930
 ;;21,"00781-5134-01 ")
 ;;952
 ;;21,"00781-5204-10 ")
 ;;1350
 ;;21,"00781-5204-31 ")
 ;;1351
 ;;21,"00781-5204-92 ")
 ;;1352
 ;;21,"00781-5206-10 ")
 ;;1396
 ;;21,"00781-5206-31 ")
 ;;1397
 ;;21,"00781-5206-92 ")
 ;;1398
 ;;21,"00781-5207-10 ")
 ;;1448
 ;;21,"00781-5207-31 ")
 ;;1449
 ;;21,"00781-5207-92 ")
 ;;1450
 ;;21,"00781-5372-64 ")
 ;;466
 ;;21,"00781-5374-64 ")
 ;;476
 ;;21,"00781-5378-64 ")
 ;;493
 ;;21,"00781-5607-31 ")
 ;;571
 ;;21,"00781-5608-92 ")
 ;;594
 ;;21,"00781-5618-92 ")
 ;;510
 ;;21,"00781-5619-92 ")
 ;;546
 ;;21,"00781-5700-10 ")
 ;;288
 ;;21,"00781-5700-92 ")
 ;;289
 ;;21,"00781-5701-10 ")
 ;;356
 ;;21,"00781-5701-31 ")
 ;;357
 ;;21,"00781-5701-92 ")
 ;;358
 ;;21,"00781-5702-10 ")
 ;;216
 ;;21,"00781-5702-31 ")
 ;;217
 ;;21,"00781-5702-92 ")
 ;;218
 ;;21,"00781-5756-31 ")
 ;;673
 ;;21,"00781-5760-31 ")
 ;;642
 ;;21,"00781-5771-31 ")
 ;;683
 ;;21,"00781-5787-31 ")
 ;;652
 ;;21,"00781-5794-31 ")
 ;;662
 ;;21,"00781-5805-10 ")
 ;;290
 ;;21,"00781-5805-92 ")
 ;;291
 ;;21,"00781-5806-10 ")
 ;;359
 ;;21,"00781-5806-31 ")
 ;;360
 ;;21,"00781-5806-92 ")
 ;;361
 ;;21,"00781-5807-10 ")
 ;;219
 ;;21,"00781-5807-31 ")
 ;;220
 ;;21,"00781-5807-92 ")
 ;;221
 ;;21,"00781-5816-10 ")
 ;;1399
 ;;21,"00781-5816-31 ")
 ;;1400
 ;;21,"00781-5816-92 ")
 ;;1401
 ;;21,"00781-5817-10 ")
 ;;1353
 ;;21,"00781-5817-31 ")
 ;;1354
 ;;21,"00781-5817-92 ")
 ;;1355
 ;;21,"00781-5818-10 ")
 ;;1451
 ;;21,"00781-5818-31 ")
 ;;1452
 ;;21,"00781-5818-92 ")
 ;;1453
 ;;21,"00781-5936-31 ")
 ;;27
 ;;21,"00781-5937-31 ")
 ;;32
 ;;21,"00781-5938-31 ")
 ;;8
 ;;21,"00781-5938-92 ")
 ;;9
 ;;21,"00781-5939-31 ")
 ;;19
 ;;21,"00781-5939-92 ")
 ;;20
 ;;21,"00781-5948-10 ")
 ;;1680
 ;;21,"00781-5948-92 ")
 ;;1681
 ;;21,"00781-5949-10 ")
 ;;1614
 ;;21,"00781-5949-64 ")
 ;;1615
 ;;21,"00781-5949-92 ")
 ;;1616
 ;;21,"00781-5950-10 ")
 ;;1720
 ;;21,"00781-5950-64 ")
 ;;1721
 ;;21,"00781-5950-92 ")
 ;;1722
 ;;21,"00781-5951-10 ")
 ;;1655
 ;;21,"00781-5951-64 ")
 ;;1656
 ;;21,"00781-5951-92 ")
 ;;1657
 ;;21,"00781-5952-10 ")
 ;;1752
 ;;21,"00781-5952-64 ")
 ;;1753
 ;;21,"00781-5952-92 ")
 ;;1754
 ;;21,"00832-0483-11 ")
 ;;915
 ;;21,"00832-0484-11 ")
 ;;931
 ;;21,"00832-0485-11 ")
 ;;953
 ;;21,"00904-6389-61 ")
 ;;222
 ;;21,"00904-6390-61 ")
 ;;362
 ;;21,"00904-6391-61 ")
 ;;292
 ;;21,"00955-1040-30 ")
 ;;179
 ;;21,"00955-1040-90 ")
 ;;180
 ;;21,"00955-1041-30 ")
 ;;64
 ;;21,"00955-1041-90 ")
 ;;65
 ;;21,"00955-1042-30 ")
 ;;132
 ;;21,"00955-1042-90 ")
 ;;133
 ;;21,"00955-1045-30 ")
 ;;1098
 ;;21,"00955-1045-90 ")
 ;;1099
 ;;21,"00955-1046-30 ")
 ;;1128
 ;;21,"00955-1046-90 ")
 ;;1129
 ;;21,"10544-0564-30 ")
 ;;1222
 ;;21,"12280-0383-30 ")
 ;;1584
 ;;21,"13411-0106-01 ")
 ;;66
 ;;21,"13411-0106-03 ")
 ;;67
 ;;21,"13411-0106-06 ")
 ;;68
 ;;21,"13411-0106-09 ")
 ;;69
 ;;21,"13411-0106-15 ")
 ;;70
 ;;21,"13411-0107-01 ")
 ;;134
 ;;21,"13411-0107-03 ")
 ;;135
 ;;21,"13411-0107-06 ")
 ;;136
 ;;21,"13411-0107-09 ")
 ;;137
 ;;21,"13411-0107-15 ")
 ;;138
 ;;21,"13411-0142-01 ")
 ;;595
 ;;21,"13411-0142-02 ")
 ;;596
 ;;21,"13411-0142-03 ")
 ;;597
 ;;21,"13411-0142-06 ")
 ;;598
 ;;21,"13411-0142-09 ")
 ;;599
 ;;21,"13411-0143-01 ")
 ;;511
 ;;21,"13411-0143-02 ")
 ;;512
 ;;21,"13411-0143-03 ")
 ;;513
 ;;21,"13411-0143-06 ")
 ;;514
 ;;21,"13411-0143-09 ")
 ;;515
 ;;21,"13411-0144-01 ")
 ;;1682
 ;;21,"13411-0144-02 ")
 ;;1683
 ;;21,"13411-0144-03 ")
 ;;1684
 ;;21,"13411-0144-06 ")
 ;;1685
 ;;21,"13411-0144-09 ")
 ;;1686
 ;;21,"13411-0145-01 ")
 ;;1617
 ;;21,"13411-0145-02 ")
 ;;1618
 ;;21,"13411-0145-03 ")
 ;;1619
 ;;21,"13411-0145-06 ")
 ;;1620
 ;;21,"13411-0145-09 ")
 ;;1621