BGP51O ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP HEDIS SKL MUSCLE RELAX NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS SKL MUSCLE RELAX NDC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00037-2001-01 ")
 ;;494
 ;;21,"00037-2250-10 ")
 ;;14
 ;;21,"00037-2250-30 ")
 ;;15
 ;;21,"00045-0325-60 ")
 ;;708
 ;;21,"00091-7429-63 ")
 ;;1897
 ;;21,"00091-7449-63 ")
 ;;2195
 ;;21,"00115-2011-01 ")
 ;;2304
 ;;21,"00115-2011-02 ")
 ;;2305
 ;;21,"00143-1176-01 ")
 ;;16
 ;;21,"00143-1176-05 ")
 ;;17
 ;;21,"00143-1176-10 ")
 ;;18
 ;;21,"00143-1290-01 ")
 ;;1675
 ;;21,"00143-1290-05 ")
 ;;1676
 ;;21,"00143-1292-01 ")
 ;;2138
 ;;21,"00143-1292-05 ")
 ;;2139
 ;;21,"00143-9749-01 ")
 ;;19
 ;;21,"00143-9749-05 ")
 ;;20
 ;;21,"00143-9749-10 ")
 ;;21
 ;;21,"00179-0057-30 ")
 ;;1339
 ;;21,"00185-0022-01 ")
 ;;2306
 ;;21,"00185-0022-10 ")
 ;;2307
 ;;21,"00185-0448-01 ")
 ;;1426
 ;;21,"00185-0448-10 ")
 ;;1427
 ;;21,"00185-0713-01 ")
 ;;2362
 ;;21,"00185-0713-05 ")
 ;;2363
 ;;21,"00185-0714-01 ")
 ;;2369
 ;;21,"00185-0724-01 ")
 ;;498
 ;;21,"00185-0724-05 ")
 ;;499
 ;;21,"00185-0749-01 ")
 ;;521
 ;;21,"00378-0751-01 ")
 ;;1335
 ;;21,"00378-0751-05 ")
 ;;1336
 ;;21,"00378-0751-10 ")
 ;;1337
 ;;21,"00378-0751-93 ")
 ;;1338
 ;;21,"00378-0761-01 ")
 ;;910
 ;;21,"00378-0771-01 ")
 ;;858
 ;;21,"00378-0771-05 ")
 ;;859
 ;;21,"00378-0771-93 ")
 ;;860
 ;;21,"00378-8815-91 ")
 ;;1389
 ;;21,"00378-8816-91 ")
 ;;1411
 ;;21,"00440-1350-09 ")
 ;;1293
 ;;21,"00440-1740-40 ")
 ;;1710
 ;;21,"00440-7238-04 ")
 ;;198
 ;;21,"00440-7238-20 ")
 ;;199
 ;;21,"00440-7238-30 ")
 ;;200
 ;;21,"00440-7238-40 ")
 ;;201
 ;;21,"00440-7238-90 ")
 ;;202
 ;;21,"00440-7238-91 ")
 ;;203
 ;;21,"00440-7239-20 ")
 ;;495
 ;;21,"00440-7239-40 ")
 ;;496
 ;;21,"00440-7270-10 ")
 ;;540
 ;;21,"00440-7270-20 ")
 ;;541
 ;;21,"00440-7270-28 ")
 ;;542
 ;;21,"00440-7270-30 ")
 ;;543
 ;;21,"00440-7270-40 ")
 ;;544
 ;;21,"00440-7350-02 ")
 ;;1294
 ;;21,"00440-7350-03 ")
 ;;1295
 ;;21,"00440-7350-04 ")
 ;;1296
 ;;21,"00440-7350-06 ")
 ;;1297
 ;;21,"00440-7350-09 ")
 ;;1298
 ;;21,"00440-7350-10 ")
 ;;1299
 ;;21,"00440-7350-12 ")
 ;;1300
 ;;21,"00440-7350-15 ")
 ;;1301
 ;;21,"00440-7350-21 ")
 ;;1302
 ;;21,"00440-7350-30 ")
 ;;1303
 ;;21,"00440-7350-60 ")
 ;;1304
 ;;21,"00440-7350-81 ")
 ;;1305
 ;;21,"00440-7350-85 ")
 ;;1306
 ;;21,"00440-7350-89 ")
 ;;1307
 ;;21,"00440-7350-90 ")
 ;;1308
 ;;21,"00440-7740-10 ")
 ;;1713
 ;;21,"00440-7740-12 ")
 ;;1714
 ;;21,"00440-7740-20 ")
 ;;1715
 ;;21,"00440-7740-24 ")
 ;;1716
 ;;21,"00440-7740-28 ")
 ;;1717
 ;;21,"00440-7740-40 ")
 ;;1718
 ;;21,"00440-7740-60 ")
 ;;1719
 ;;21,"00440-7740-81 ")
 ;;1720
 ;;21,"00440-7740-85 ")
 ;;1721
 ;;21,"00440-7740-89 ")
 ;;1722
 ;;21,"00440-7740-90 ")
 ;;1723
 ;;21,"00440-7740-91 ")
 ;;1724
 ;;21,"00440-7740-92 ")
 ;;1725
 ;;21,"00440-7741-04 ")
 ;;2099
 ;;21,"00440-7741-06 ")
 ;;2100
 ;;21,"00440-7741-20 ")
 ;;2101
 ;;21,"00440-7741-30 ")
 ;;2102
 ;;21,"00440-7741-40 ")
 ;;2103
 ;;21,"00440-7741-90 ")
 ;;2104
 ;;21,"00440-7741-92 ")
 ;;2105
 ;;21,"00440-7874-28 ")
 ;;2370
 ;;21,"00440-7880-14 ")
 ;;2339
 ;;21,"00440-7880-20 ")
 ;;2340
 ;;21,"00440-7880-28 ")
 ;;2341
 ;;21,"00440-7880-40 ")
 ;;2342
 ;;21,"00440-7880-60 ")
 ;;2343
 ;;21,"00527-1152-01 ")
 ;;2106
 ;;21,"00527-1152-05 ")
 ;;2107
 ;;21,"00527-1302-01 ")
 ;;1711
 ;;21,"00527-1302-05 ")
 ;;1712
 ;;21,"00555-0585-02 ")
 ;;549
 ;;21,"00555-0585-04 ")
 ;;550
 ;;21,"00591-2520-01 ")
 ;;547
 ;;21,"00591-2520-05 ")
 ;;548
 ;;21,"00591-3222-02 ")
 ;;2207
 ;;21,"00591-3222-47 ")
 ;;2208
 ;;21,"00591-3256-01 ")
 ;;829
 ;;21,"00591-3968-01 ")
 ;;545
 ;;21,"00591-3968-05 ")
 ;;546
 ;;21,"00591-5381-01 ")
 ;;1729
 ;;21,"00591-5381-05 ")
 ;;1730
 ;;21,"00591-5382-01 ")
 ;;2093
 ;;21,"00591-5382-05 ")
 ;;2094
 ;;21,"00591-5513-01 ")
 ;;195
 ;;21,"00591-5513-05 ")
 ;;196
 ;;21,"00591-5513-10 ")
 ;;197
 ;;21,"00591-5658-01 ")
 ;;1281
 ;;21,"00591-5658-05 ")
 ;;1282
 ;;21,"00591-5658-10 ")
 ;;1283
 ;;21,"00603-2582-21 ")
 ;;190
 ;;21,"00603-2582-28 ")
 ;;191
 ;;21,"00603-2582-32 ")
 ;;192
 ;;21,"00603-3078-21 ")
 ;;827
 ;;21,"00603-3078-28 ")
 ;;828
 ;;21,"00603-3079-02 ")
 ;;1284
 ;;21,"00603-3079-03 ")
 ;;1285
 ;;21,"00603-3079-04 ")
 ;;1286
 ;;21,"00603-3079-21 ")
 ;;1287
 ;;21,"00603-3079-28 ")
 ;;1288
 ;;21,"00603-3079-32 ")
 ;;1289
 ;;21,"00603-3079-34 ")
 ;;1290
 ;;21,"00603-4485-21 ")
 ;;1727
 ;;21,"00603-4485-28 ")
 ;;1728
 ;;21,"00603-4486-21 ")
 ;;2095
 ;;21,"00603-4486-28 ")
 ;;2096
 ;;21,"00603-4486-32 ")
 ;;2097
 ;;21,"00641-6103-01 ")
 ;;2201
 ;;21,"00641-6103-25 ")
 ;;2202
 ;;21,"00781-1324-01 ")
 ;;1291
 ;;21,"00781-1324-10 ")
 ;;1292
 ;;21,"00781-1750-01 ")
 ;;2098
 ;;21,"00781-1760-01 ")
 ;;1726
 ;;21,"00781-5005-01 ")
 ;;193
 ;;21,"00781-5005-05 ")
 ;;194
 ;;21,"00781-5032-01 ")
 ;;712
 ;;21,"00781-5032-10 ")
 ;;826
 ;;21,"00904-2364-40 ")
 ;;1708
 ;;21,"00904-2364-60 ")
 ;;1709
 ;;21,"00904-2365-40 ")
 ;;2108
 ;;21,"00904-2365-60 ")
 ;;2109
 ;;21,"00904-5238-60 ")
 ;;2361
 ;;21,"00904-7809-60 ")
 ;;1234
 ;;21,"00904-7809-61 ")
 ;;1235
 ;;21,"10135-0506-01 ")
 ;;831
 ;;21,"10135-0507-01 ")
 ;;1231
 ;;21,"10135-0507-05 ")
 ;;1232
 ;;21,"10135-0507-10 ")
 ;;1233
 ;;21,"10139-0230-02 ")
 ;;2209
 ;;21,"10139-0230-10 ")
 ;;2210
 ;;21,"10544-0002-20 ")
 ;;1434
 ;;21,"10544-0033-30 ")
 ;;235
 ;;21,"10544-0072-02 ")
 ;;1236
 ;;21,"10544-0072-10 ")
 ;;1237
 ;;21,"10544-0072-14 ")
 ;;1238
 ;;21,"10544-0072-15 ")
 ;;1239
 ;;21,"10544-0072-20 ")
 ;;1240
 ;;21,"10544-0072-21 ")
 ;;1241
 ;;21,"10544-0072-30 ")
 ;;1242
 ;;21,"10544-0072-45 ")
 ;;1243
 ;;21,"10544-0072-60 ")
 ;;1244
 ;;21,"10544-0072-84 ")
 ;;1245
 ;;21,"10544-0072-90 ")
 ;;1246
 ;;21,"10544-0132-30 ")
 ;;234
 ;;21,"10544-0159-09 ")
 ;;1247
 ;;21,"10544-0159-15 ")
 ;;1248
 ;;21,"10544-0159-20 ")
 ;;1249
 ;;21,"10544-0159-30 ")
 ;;1250
 ;;21,"10544-0259-20 ")
 ;;2119
 ;;21,"10544-0283-20 ")
 ;;2338
 ;;21,"10544-0321-30 ")
 ;;2110
 ;;21,"10544-0321-40 ")
 ;;2111
 ;;21,"10544-0321-60 ")
 ;;2112
 ;;21,"10544-0321-81 ")
 ;;2113
 ;;21,"10544-0464-00 ")
 ;;2114
 ;;21,"10544-0464-02 ")
 ;;2115
 ;;21,"10544-0464-30 ")
 ;;2116
 ;;21,"10544-0464-60 ")
 ;;2117
 ;;21,"10544-0464-90 ")
 ;;2118
 ;;21,"10544-0524-20 ")
 ;;1631
 ;;21,"10544-0773-18 ")
 ;;1703
 ;;21,"10544-0773-20 ")
 ;;1704
 ;;21,"10544-0773-30 ")
 ;;1705
 ;;21,"10544-0773-60 ")
 ;;1706
 ;;21,"10544-0773-90 ")
 ;;1707
 ;;21,"10702-0006-01 ")
 ;;832
 ;;21,"10702-0006-03 ")
 ;;833
 ;;21,"10702-0006-10 ")
 ;;834
 ;;21,"10702-0006-50 ")
 ;;835
 ;;21,"10702-0007-01 ")
 ;;1220
 ;;21,"10702-0007-03 ")
 ;;1221
 ;;21,"10702-0007-05 ")
 ;;1222
 ;;21,"10702-0007-10 ")
 ;;1223
 ;;21,"10702-0007-50 ")
 ;;1224
 ;;21,"12634-0437-12 ")
 ;;330
 ;;21,"12634-0437-60 ")
 ;;331
 ;;21,"12634-0437-71 ")
 ;;332
 ;;21,"12634-0437-90 ")
 ;;333
 ;;21,"12634-0528-00 ")
 ;;972
 ;;21,"12634-0528-45 ")
 ;;973
 ;;21,"12634-0528-60 ")
 ;;974
 ;;21,"12634-0528-71 ")
 ;;975
 ;;21,"12634-0528-81 ")
 ;;976
 ;;21,"12634-0528-85 ")
 ;;977
 ;;21,"12634-0528-90 ")
 ;;978
 ;;21,"12634-0836-71 ")
 ;;1943
 ;;21,"12634-0836-90 ")
 ;;1944
 ;;21,"16590-0039-07 ")
 ;;317
 ;;21,"16590-0039-20 ")
 ;;318
 ;;21,"16590-0039-28 ")
 ;;319
 ;;21,"16590-0039-30 ")
 ;;320
 ;;21,"16590-0039-40 ")
 ;;321
 ;;21,"16590-0039-45 ")
 ;;322
 ;;21,"16590-0039-56 ")
 ;;323
 ;;21,"16590-0039-60 ")
 ;;324
 ;;21,"16590-0039-62 ")
 ;;325
 ;;21,"16590-0039-72 ")
 ;;326
 ;;21,"16590-0039-73 ")
 ;;327
 ;;21,"16590-0039-82 ")
 ;;328
 ;;21,"16590-0039-90 ")
 ;;329
 ;;21,"16590-0065-10 ")
 ;;955
 ;;21,"16590-0065-15 ")
 ;;956
 ;;21,"16590-0065-20 ")
 ;;957
 ;;21,"16590-0065-21 ")
 ;;958
 ;;21,"16590-0065-28 ")
 ;;959
 ;;21,"16590-0065-30 ")
 ;;960
 ;;21,"16590-0065-40 ")
 ;;961
 ;;21,"16590-0065-45 ")
 ;;962
 ;;21,"16590-0065-50 ")
 ;;963
 ;;21,"16590-0065-56 ")
 ;;964
 ;;21,"16590-0065-60 ")
 ;;965
 ;;21,"16590-0065-62 ")
 ;;966
 ;;21,"16590-0065-72 ")
 ;;967
 ;;21,"16590-0065-73 ")
 ;;968
 ;;21,"16590-0065-82 ")
 ;;969
 ;;21,"16590-0065-86 ")
 ;;970
 ;;21,"16590-0065-90 ")
 ;;971
 ;;21,"16590-0095-30 ")
 ;;713
 ;;21,"16590-0095-60 ")
 ;;714
 ;;21,"16590-0147-28 ")
 ;;1804
 ;;21,"16590-0147-30 ")
 ;;1805
 ;;21,"16590-0147-40 ")
 ;;1806
 ;;21,"16590-0147-45 ")
 ;;1807
 ;;21,"16590-0147-56 ")
 ;;1808
 ;;21,"16590-0147-60 ")
 ;;1809
 ;;21,"16590-0147-62 ")
 ;;1810
 ;;21,"16590-0147-72 ")
 ;;1811
 ;;21,"16590-0147-73 ")
 ;;1812
 ;;21,"16590-0147-82 ")
 ;;1813
 ;;21,"16590-0147-90 ")
 ;;1814
 ;;21,"16590-0148-20 ")
 ;;1929
 ;;21,"16590-0148-28 ")
 ;;1930
 ;;21,"16590-0148-30 ")
 ;;1931
 ;;21,"16590-0148-40 ")
 ;;1932
 ;;21,"16590-0148-45 ")
 ;;1933
 ;;21,"16590-0148-56 ")
 ;;1934
 ;;21,"16590-0148-60 ")
 ;;1935
 ;;21,"16590-0148-62 ")
 ;;1936
 ;;21,"16590-0148-72 ")
 ;;1937
 ;;21,"16590-0148-73 ")
 ;;1938
 ;;21,"16590-0148-82 ")
 ;;1939
 ;;21,"16590-0148-83 ")
 ;;1940
 ;;21,"16590-0148-84 ")
 ;;1941
 ;;21,"16590-0148-90 ")
 ;;1942
 ;;21,"16590-0177-14 ")
 ;;2219
 ;;21,"16590-0177-20 ")
 ;;2220
 ;;21,"16590-0177-30 ")
 ;;2221
 ;;21,"16590-0177-60 ")
 ;;2222
 ;;21,"16590-0177-71 ")
 ;;2223
 ;;21,"16590-0177-72 ")
 ;;2224
 ;;21,"16590-0177-90 ")
 ;;2225
 ;;21,"16590-0207-20 ")
 ;;1573
 ;;21,"16590-0207-28 ")
 ;;1574
 ;;21,"16590-0207-30 ")
 ;;1575
 ;;21,"16590-0207-40 ")
 ;;1576
 ;;21,"16590-0207-56 ")
 ;;1577
 ;;21,"16590-0207-60 ")
 ;;1578
 ;;21,"16590-0207-62 ")
 ;;1579
 ;;21,"16590-0207-71 ")
 ;;1580
 ;;21,"16590-0207-72 ")
 ;;1581
 ;;21,"16590-0207-90 ")
 ;;1582
 ;;21,"16590-0346-20 ")
 ;;1474
 ;;21,"16590-0346-28 ")
 ;;1475
 ;;21,"16590-0346-30 ")
 ;;1476
 ;;21,"16590-0346-40 ")
 ;;1477
 ;;21,"16590-0346-56 ")
 ;;1478
 ;;21,"16590-0346-60 ")
 ;;1479
 ;;21,"16590-0346-62 ")
 ;;1480
 ;;21,"16590-0346-71 ")
 ;;1481
 ;;21,"16590-0346-72 ")
 ;;1482
 ;;21,"16590-0346-73 ")
 ;;1483
 ;;21,"16590-0346-84 ")
 ;;1484
 ;;21,"16590-0346-86 ")
 ;;1485
 ;;21,"16590-0346-90 ")
 ;;1486
 ;;21,"16590-0478-20 ")
 ;;606
 ;;21,"16590-0478-28 ")
 ;;607
 ;;21,"16590-0478-30 ")
 ;;608
 ;;21,"16590-0478-40 ")
 ;;609
 ;;21,"16590-0478-56 ")
 ;;610
 ;;21,"16590-0478-60 ")
 ;;611
 ;;21,"16590-0478-62 ")
 ;;612
 ;;21,"16590-0478-71 ")
 ;;613
 ;;21,"16590-0478-72 ")
 ;;614
 ;;21,"16590-0478-73 ")
 ;;615
 ;;21,"16590-0478-90 ")
 ;;616
 ;;21,"16590-0544-15 ")
 ;;715
 ;;21,"16590-0544-20 ")
 ;;716
 ;;21,"16590-0544-21 ")
 ;;717
 ;;21,"16590-0544-28 ")
 ;;718
 ;;21,"16590-0544-30 ")
 ;;719
 ;;21,"16590-0544-40 ")
 ;;720
 ;;21,"16590-0544-45 ")
 ;;721
 ;;21,"16590-0544-56 ")
 ;;722
 ;;21,"16590-0544-60 ")
 ;;723
 ;;21,"16590-0544-62 ")
 ;;724
 ;;21,"16590-0544-72 ")
 ;;725
 ;;21,"16590-0544-73 ")
 ;;726
 ;;21,"16590-0544-82 ")
 ;;727
 ;;21,"16590-0544-90 ")
 ;;728
 ;;21,"16590-0568-30 ")
 ;;489
 ;;21,"16590-0568-60 ")
 ;;490
 ;;21,"16590-0596-10 ")
 ;;1399
 ;;21,"16590-0596-15 ")
 ;;1400
 ;;21,"16590-0596-28 ")
 ;;1401
 ;;21,"16590-0596-30 ")
 ;;1402
 ;;21,"16590-0596-60 ")
 ;;1403
 ;;21,"16590-0596-90 ")
 ;;1404
 ;;21,"16590-0656-56 ")
 ;;939
 ;;21,"16590-0656-62 ")
 ;;1383
 ;;21,"16590-0656-90 ")
 ;;1384
 ;;21,"16590-0699-28 ")
 ;;932
 ;;21,"16590-0699-30 ")
 ;;933
 ;;21,"16590-0699-60 ")
 ;;934
 ;;21,"16590-0699-90 ")
 ;;935
 ;;21,"16590-0755-30 ")
 ;;7
 ;;21,"16590-0755-40 ")
 ;;8
 ;;21,"16590-0755-60 ")
 ;;9
 ;;21,"16590-0755-72 ")
 ;;10
 ;;21,"16590-0755-90 ")
 ;;11
 ;;21,"16590-0810-30 ")
 ;;1416
 ;;21,"17478-0538-02 ")
 ;;2206
 ;;21,"21695-0021-07 ")
 ;;306
 ;;21,"21695-0021-12 ")
 ;;307
 ;;21,"21695-0021-15 ")
 ;;308
 ;;21,"21695-0021-20 ")
 ;;309
 ;;21,"21695-0021-21 ")
 ;;310
 ;;21,"21695-0021-30 ")
 ;;311
 ;;21,"21695-0021-42 ")
 ;;312
 ;;21,"21695-0021-45 ")
 ;;313
 ;;21,"21695-0021-60 ")
 ;;314
 ;;21,"21695-0021-72 ")
 ;;315
 ;;21,"21695-0021-90 ")
 ;;316
 ;;21,"21695-0036-15 ")
 ;;729
 ;;21,"21695-0036-20 ")
 ;;730
 ;;21,"21695-0036-30 ")
 ;;731
 ;;21,"21695-0036-60 ")
 ;;732
 ;;21,"21695-0036-72 ")
 ;;733
 ;;21,"21695-0036-78 ")
 ;;734
 ;;21,"21695-0036-90 ")
 ;;735
 ;;21,"21695-0037-00 ")
 ;;940
 ;;21,"21695-0037-10 ")
 ;;941
 ;;21,"21695-0037-12 ")
 ;;942
 ;;21,"21695-0037-14 ")
 ;;943
 ;;21,"21695-0037-15 ")
 ;;944
 ;;21,"21695-0037-20 ")
 ;;945
 ;;21,"21695-0037-21 ")
 ;;946
 ;;21,"21695-0037-28 ")
 ;;947
 ;;21,"21695-0037-30 ")
 ;;948
 ;;21,"21695-0037-40 ")
 ;;949
 ;;21,"21695-0037-45 ")
 ;;950
 ;;21,"21695-0037-60 ")
 ;;951
 ;;21,"21695-0037-72 ")
 ;;952
 ;;21,"21695-0037-78 ")
 ;;953
 ;;21,"21695-0037-90 ")
 ;;954
 ;;21,"21695-0078-07 ")
 ;;1797
 ;;21,"21695-0078-14 ")
 ;;1798
 ;;21,"21695-0078-20 ")
 ;;1799
 ;
OTHER ; OTHER ROUTINES
 D ^BGP51O10
 D ^BGP51O11
 D ^BGP51O12
 D ^BGP51O13
 D ^BGP51O14
 D ^BGP51O15
 D ^BGP51O16
 D ^BGP51O17
 D ^BGP51O18
 D ^BGP51O19
 D ^BGP51O2
 D ^BGP51O20
 D ^BGP51O21
 D ^BGP51O22
 D ^BGP51O23
 D ^BGP51O24
 D ^BGP51O25
 D ^BGP51O26
 D ^BGP51O27
 D ^BGP51O28
 D ^BGP51O3
 D ^BGP51O4
 D ^BGP51O5
 D ^BGP51O6
 D ^BGP51O7
 D ^BGP51O8
 D ^BGP51O9
 Q