BGP48F6 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"67544-0857-15 ")
 ;;1868
 ;;21,"67544-0857-45 ")
 ;;1869
 ;;21,"67544-0857-60 ")
 ;;1870
 ;;21,"67544-1001-30 ")
 ;;1249
 ;;21,"67544-1001-60 ")
 ;;1250
 ;;21,"67544-1003-15 ")
 ;;1965
 ;;21,"67544-1003-45 ")
 ;;1966
 ;;21,"67544-1003-53 ")
 ;;1967
 ;;21,"67544-1029-99 ")
 ;;420
 ;;21,"67544-1030-99 ")
 ;;414
 ;;21,"67544-1032-15 ")
 ;;865
 ;;21,"67544-1032-45 ")
 ;;866
 ;;21,"67544-1032-82 ")
 ;;867
 ;;21,"67544-1032-99 ")
 ;;868
 ;;21,"67544-1078-30 ")
 ;;1791
 ;;21,"67544-1254-15 ")
 ;;1654
 ;;21,"67544-1254-45 ")
 ;;1655
 ;;21,"67544-1255-15 ")
 ;;1859
 ;;21,"67544-1255-30 ")
 ;;1860
 ;;21,"67544-1255-45 ")
 ;;1861
 ;;21,"67544-1255-60 ")
 ;;1862
 ;;21,"67544-1256-15 ")
 ;;1467
 ;;21,"67544-1256-30 ")
 ;;1468
 ;;21,"67544-1256-45 ")
 ;;1469
 ;;21,"67544-1257-45 ")
 ;;1308
 ;;21,"67544-1257-60 ")
 ;;1309
 ;;21,"68071-0154-30 ")
 ;;178
 ;;21,"68071-0263-30 ")
 ;;862
 ;;21,"68071-0310-30 ")
 ;;285
 ;;21,"68071-0399-30 ")
 ;;67
 ;;21,"68071-0433-30 ")
 ;;831
 ;;21,"68071-0699-30 ")
 ;;1472
 ;;21,"68071-0716-30 ")
 ;;1317
 ;;21,"68071-0784-30 ")
 ;;789
 ;;21,"68071-0914-30 ")
 ;;54
 ;;21,"68071-0915-30 ")
 ;;151
 ;;21,"68071-0916-30 ")
 ;;249
 ;;21,"68084-0097-01 ")
 ;;63
 ;;21,"68084-0097-11 ")
 ;;64
 ;;21,"68084-0098-01 ")
 ;;162
 ;;21,"68084-0098-11 ")
 ;;163
 ;;21,"68084-0099-01 ")
 ;;260
 ;;21,"68084-0099-11 ")
 ;;261
 ;;21,"68084-0133-01 ")
 ;;669
 ;;21,"68084-0133-11 ")
 ;;670
 ;;21,"68084-0161-01 ")
 ;;1230
 ;;21,"68084-0161-11 ")
 ;;1231
 ;;21,"68084-0163-01 ")
 ;;1475
 ;;21,"68084-0163-11 ")
 ;;1476
 ;;21,"68084-0165-01 ")
 ;;1863
 ;;21,"68084-0165-11 ")
 ;;1864
 ;;21,"68084-0186-01 ")
 ;;942
 ;;21,"68084-0186-11 ")
 ;;943
 ;;21,"68084-0187-01 ")
 ;;1048
 ;;21,"68084-0187-11 ")
 ;;1049
 ;;21,"68084-0188-01 ")
 ;;1160
 ;;21,"68084-0188-11 ")
 ;;1161
 ;;21,"68084-0500-01 ")
 ;;937
 ;;21,"68084-0500-11 ")
 ;;938
 ;;21,"68084-0501-01 ")
 ;;1039
 ;;21,"68084-0501-11 ")
 ;;1040
 ;;21,"68084-0502-01 ")
 ;;1153
 ;;21,"68084-0502-11 ")
 ;;1154
 ;;21,"68084-0510-01 ")
 ;;1225
 ;;21,"68084-0510-11 ")
 ;;1226
 ;;21,"68084-0511-01 ")
 ;;1325
 ;;21,"68084-0511-11 ")
 ;;1326
 ;;21,"68084-0512-01 ")
 ;;1501
 ;;21,"68084-0512-11 ")
 ;;1502
 ;;21,"68084-0513-01 ")
 ;;1689
 ;;21,"68084-0513-11 ")
 ;;1690
 ;;21,"68084-0514-01 ")
 ;;1876
 ;;21,"68084-0514-11 ")
 ;;1877
 ;;21,"68084-0558-01 ")
 ;;433
 ;;21,"68084-0558-11 ")
 ;;425
 ;;21,"68084-0559-01 ")
 ;;625
 ;;21,"68084-0559-11 ")
 ;;626
 ;;21,"68084-0560-01 ")
 ;;648
 ;;21,"68084-0560-11 ")
 ;;643
 ;;21,"68084-0564-01 ")
 ;;60
 ;;21,"68084-0564-11 ")
 ;;43
 ;;21,"68084-0565-01 ")
 ;;142
 ;;21,"68084-0565-11 ")
 ;;143
 ;;21,"68084-0589-01 ")
 ;;234
 ;;21,"68084-0589-11 ")
 ;;235
 ;;21,"68084-0590-25 ")
 ;;306
 ;;21,"68084-0590-95 ")
 ;;305
 ;;21,"68115-0218-30 ")
 ;;453
 ;;21,"68115-0219-30 ")
 ;;592
 ;;21,"68115-0219-60 ")
 ;;593
 ;;21,"68115-0494-30 ")
 ;;201
 ;;21,"68115-0494-60 ")
 ;;202
 ;;21,"68115-0658-00 ")
 ;;667
 ;;21,"68115-0658-60 ")
 ;;668
 ;;21,"68115-0664-90 ")
 ;;1061
 ;;21,"68115-0668-15 ")
 ;;262
 ;;21,"68115-0668-30 ")
 ;;263
 ;;21,"68115-0668-90 ")
 ;;264
 ;;21,"68115-0672-30 ")
 ;;1651
 ;;21,"68115-0720-30 ")
 ;;1454
 ;;21,"68115-0759-30 ")
 ;;2002
 ;;21,"68115-0777-30 ")
 ;;1848
 ;;21,"68115-0777-90 ")
 ;;1849
 ;;21,"68115-0800-90 ")
 ;;164
 ;;21,"68115-0836-30 ")
 ;;77
 ;;21,"68115-0836-90 ")
 ;;78
 ;;21,"68180-0467-01 ")
 ;;434
 ;;21,"68180-0467-03 ")
 ;;435
 ;;21,"68180-0467-07 ")
 ;;436
 ;;21,"68180-0468-01 ")
 ;;609
 ;;21,"68180-0468-03 ")
 ;;610
 ;;21,"68180-0468-05 ")
 ;;611
 ;;21,"68180-0468-07 ")
 ;;612
 ;;21,"68180-0469-01 ")
 ;;644
 ;;21,"68180-0469-03 ")
 ;;645
 ;;21,"68180-0469-05 ")
 ;;646
 ;;21,"68180-0469-07 ")
 ;;647
 ;;21,"68180-0478-01 ")
 ;;1330
 ;;21,"68180-0478-02 ")
 ;;1331
 ;;21,"68180-0478-03 ")
 ;;1332
 ;;21,"68180-0479-01 ")
 ;;1491
 ;;21,"68180-0479-02 ")
 ;;1492
 ;;21,"68180-0479-03 ")
 ;;1493
 ;;21,"68180-0480-01 ")
 ;;1694
 ;;21,"68180-0480-02 ")
 ;;1695
 ;;21,"68180-0480-03 ")
 ;;1696
 ;;21,"68180-0481-01 ")
 ;;1879
 ;;21,"68180-0481-02 ")
 ;;1880
 ;;21,"68180-0481-03 ")
 ;;1881
 ;;21,"68180-0482-06 ")
 ;;1223
 ;;21,"68180-0482-09 ")
 ;;1224
 ;;21,"68180-0485-02 ")
 ;;940
 ;;21,"68180-0485-09 ")
 ;;941
 ;;21,"68180-0486-02 ")
 ;;1045
 ;;21,"68180-0486-09 ")
 ;;1046
 ;;21,"68180-0487-02 ")
 ;;1155
 ;;21,"68180-0487-09 ")
 ;;1156
 ;;21,"68180-0488-02 ")
 ;;1221
 ;;21,"68180-0488-09 ")
 ;;1222
 ;;21,"68258-1040-01 ")
 ;;168
 ;;21,"68258-1057-01 ")
 ;;595
 ;;21,"68258-6000-03 ")
 ;;87
 ;;21,"68258-6000-09 ")
 ;;88
 ;;21,"68258-6001-03 ")
 ;;176
 ;;21,"68258-6001-09 ")
 ;;177
 ;;21,"68258-6002-03 ")
 ;;283
 ;;21,"68258-6002-09 ")
 ;;284
 ;;21,"68258-6009-03 ")
 ;;1419
 ;;21,"68258-6009-09 ")
 ;;1420
 ;;21,"68258-6013-03 ")
 ;;1206
 ;;21,"68258-6013-09 ")
 ;;1207
 ;;21,"68258-6016-03 ")
 ;;800
 ;;21,"68258-6017-03 ")
 ;;799
 ;;21,"68258-6041-03 ")
 ;;55
 ;;21,"68258-6042-03 ")
 ;;153
 ;;21,"68258-6043-03 ")
 ;;246
 ;;21,"68258-6043-09 ")
 ;;247
 ;;21,"68258-6044-03 ")
 ;;345
 ;;21,"68258-6044-09 ")
 ;;346
 ;;21,"68258-6049-03 ")
 ;;948
 ;;21,"68258-6050-03 ")
 ;;1232
 ;;21,"68258-6970-03 ")
 ;;2055
 ;;21,"68258-6983-03 ")
 ;;882
 ;;21,"68258-6984-03 ")
 ;;2088
 ;;21,"68258-6985-09 ")
 ;;1262
 ;;21,"68258-6992-09 ")
 ;;40
 ;;21,"68258-6993-09 ")
 ;;139
 ;;21,"68258-9001-01 ")
 ;;381
 ;;21,"68258-9128-01 ")
 ;;888
 ;;21,"68258-9154-01 ")
 ;;304
 ;;21,"68382-0065-05 ")
 ;;1236
 ;;21,"68382-0065-06 ")
 ;;1237
 ;;21,"68382-0065-10 ")
 ;;1238
 ;;21,"68382-0065-14 ")
 ;;1239
 ;;21,"68382-0065-16 ")
 ;;1240
 ;;21,"68382-0066-05 ")
 ;;1423
 ;;21,"68382-0066-06 ")
 ;;1424
 ;;21,"68382-0066-10 ")
 ;;1425
 ;;21,"68382-0066-14 ")
 ;;1426
 ;;21,"68382-0066-16 ")
 ;;1427
 ;;21,"68382-0066-24 ")
 ;;1428
 ;;21,"68382-0067-05 ")
 ;;1607
 ;;21,"68382-0067-06 ")
 ;;1608
 ;;21,"68382-0067-10 ")
 ;;1609
 ;;21,"68382-0067-14 ")
 ;;1610
 ;;21,"68382-0067-16 ")
 ;;1611
 ;;21,"68382-0067-24 ")
 ;;1612
 ;;21,"68382-0068-05 ")
 ;;1807
 ;;21,"68382-0068-06 ")
 ;;1808
 ;;21,"68382-0068-10 ")
 ;;1809
 ;;21,"68382-0068-14 ")
 ;;1810
 ;;21,"68382-0068-16 ")
 ;;1811
 ;;21,"68382-0068-40 ")
 ;;1812
 ;;21,"68382-0069-05 ")
 ;;1973
 ;;21,"68382-0069-06 ")
 ;;1974
 ;;21,"68382-0069-10 ")
 ;;1975
 ;;21,"68382-0069-14 ")
 ;;1976
 ;;21,"68382-0069-16 ")
 ;;1977
 ;;21,"68382-0070-05 ")
 ;;901
 ;;21,"68382-0070-16 ")
 ;;902
 ;;21,"68382-0071-05 ")
 ;;976
 ;;21,"68382-0071-16 ")
 ;;977
 ;;21,"68382-0072-05 ")
 ;;1082
 ;;21,"68382-0072-16 ")
 ;;1083
 ;;21,"68382-0073-05 ")
 ;;1208
 ;;21,"68382-0073-16 ")
 ;;1209
 ;;21,"68462-0195-05 ")
 ;;897
 ;;21,"68462-0195-90 ")
 ;;898
 ;;21,"68462-0196-05 ")
 ;;978
 ;;21,"68462-0196-90 ")
 ;;979
 ;;21,"68462-0197-05 ")
 ;;1084
 ;;21,"68462-0197-90 ")
 ;;1085
 ;;21,"68462-0198-05 ")
 ;;1204
 ;;21,"68462-0198-90 ")
 ;;1205
 ;;21,"68645-0261-54 ")
 ;;1494
 ;;21,"68645-0262-54 ")
 ;;1693
 ;;21,"68645-0263-54 ")
 ;;1882
 ;;21,"68645-0402-70 ")
 ;;61
 ;;21,"68645-0403-70 ")
 ;;161
 ;;21,"68645-0417-54 ")
 ;;259
 ;;21,"68645-0418-54 ")
 ;;357
 ;;21,"68645-0458-70 ")
 ;;56
 ;;21,"68645-0459-70 ")
 ;;152
 ;;21,"68645-0460-54 ")
 ;;248
 ;;21,"68645-0461-54 ")
 ;;344
 ;;21,"68645-0470-54 ")
 ;;1471
 ;;21,"68645-0471-54 ")
 ;;1670
 ;;21,"68645-0472-54 ")
 ;;1856
 ;;9002226,1201,.01)
 ;;BGP PQA STATIN NDC
 ;;9002226,1201,.02)
 ;;@
 ;;9002226,1201,.04)
 ;;n
 ;;9002226,1201,.06)
 ;;@
 ;;9002226,1201,.08)
 ;;@
 ;;9002226,1201,.09)
 ;;3140317
 ;;9002226,1201,.11)
 ;;@
 ;;9002226,1201,.12)
 ;;@
 ;;9002226,1201,.13)
 ;;1
 ;;9002226,1201,.14)
 ;;@
 ;;9002226,1201,.15)
 ;;@
 ;;9002226,1201,.16)
 ;;@
 ;;9002226,1201,.17)
 ;;@
 ;;9002226,1201,3101)
 ;;@
 ;;9002226.02101,"1201,00002-4770-90 ",.01)
 ;;00002-4770-90
 ;;9002226.02101,"1201,00002-4770-90 ",.02)
 ;;00002-4770-90
 ;;9002226.02101,"1201,00002-4771-90 ",.01)
 ;;00002-4771-90
 ;;9002226.02101,"1201,00002-4771-90 ",.02)
 ;;00002-4771-90
 ;;9002226.02101,"1201,00002-4772-90 ",.01)
 ;;00002-4772-90
 ;;9002226.02101,"1201,00002-4772-90 ",.02)
 ;;00002-4772-90
 ;;9002226.02101,"1201,00003-5154-05 ",.01)
 ;;00003-5154-05
 ;;9002226.02101,"1201,00003-5154-05 ",.02)
 ;;00003-5154-05
 ;;9002226.02101,"1201,00003-5168-11 ",.01)
 ;;00003-5168-11
 ;;9002226.02101,"1201,00003-5168-11 ",.02)
 ;;00003-5168-11
 ;;9002226.02101,"1201,00003-5169-11 ",.01)
 ;;00003-5169-11
 ;;9002226.02101,"1201,00003-5169-11 ",.02)
 ;;00003-5169-11
 ;;9002226.02101,"1201,00003-5173-11 ",.01)
 ;;00003-5173-11
 ;;9002226.02101,"1201,00003-5173-11 ",.02)
 ;;00003-5173-11
 ;;9002226.02101,"1201,00003-5174-11 ",.01)
 ;;00003-5174-11
 ;;9002226.02101,"1201,00003-5174-11 ",.02)
 ;;00003-5174-11
 ;;9002226.02101,"1201,00003-5178-05 ",.01)
 ;;00003-5178-05
 ;;9002226.02101,"1201,00003-5178-05 ",.02)
 ;;00003-5178-05
 ;;9002226.02101,"1201,00003-5178-06 ",.01)
 ;;00003-5178-06
 ;;9002226.02101,"1201,00003-5178-06 ",.02)
 ;;00003-5178-06
 ;;9002226.02101,"1201,00003-5178-75 ",.01)
 ;;00003-5178-75
 ;;9002226.02101,"1201,00003-5178-75 ",.02)
 ;;00003-5178-75
 ;;9002226.02101,"1201,00003-5183-11 ",.01)
 ;;00003-5183-11
 ;;9002226.02101,"1201,00003-5183-11 ",.02)
 ;;00003-5183-11
 ;;9002226.02101,"1201,00003-5184-11 ",.01)
 ;;00003-5184-11
 ;;9002226.02101,"1201,00003-5184-11 ",.02)
 ;;00003-5184-11
 ;;9002226.02101,"1201,00003-5194-10 ",.01)
 ;;00003-5194-10
 ;;9002226.02101,"1201,00003-5194-10 ",.02)
 ;;00003-5194-10
 ;;9002226.02101,"1201,00003-5194-33 ",.01)
 ;;00003-5194-33
 ;;9002226.02101,"1201,00003-5194-33 ",.02)
 ;;00003-5194-33
 ;;9002226.02101,"1201,00003-5195-10 ",.01)
 ;;00003-5195-10
 ;;9002226.02101,"1201,00003-5195-10 ",.02)
 ;;00003-5195-10
 ;;9002226.02101,"1201,00003-5195-33 ",.01)
 ;;00003-5195-33
 ;;9002226.02101,"1201,00003-5195-33 ",.02)
 ;;00003-5195-33
 ;;9002226.02101,"1201,00006-0533-31 ",.01)
 ;;00006-0533-31
 ;;9002226.02101,"1201,00006-0533-31 ",.02)
 ;;00006-0533-31
 ;;9002226.02101,"1201,00006-0533-54 ",.01)
 ;;00006-0533-54
 ;;9002226.02101,"1201,00006-0533-54 ",.02)
 ;;00006-0533-54
 ;;9002226.02101,"1201,00006-0535-31 ",.01)
 ;;00006-0535-31
 ;;9002226.02101,"1201,00006-0535-31 ",.02)
 ;;00006-0535-31
 ;;9002226.02101,"1201,00006-0535-54 ",.01)
 ;;00006-0535-54
 ;;9002226.02101,"1201,00006-0535-54 ",.02)
 ;;00006-0535-54
 ;;9002226.02101,"1201,00006-0537-31 ",.01)
 ;;00006-0537-31
 ;;9002226.02101,"1201,00006-0537-31 ",.02)
 ;;00006-0537-31
 ;;9002226.02101,"1201,00006-0537-54 ",.01)
 ;;00006-0537-54
 ;;9002226.02101,"1201,00006-0537-54 ",.02)
 ;;00006-0537-54
 ;;9002226.02101,"1201,00006-0543-28 ",.01)
 ;;00006-0543-28
 ;;9002226.02101,"1201,00006-0543-28 ",.02)
 ;;00006-0543-28
 ;;9002226.02101,"1201,00006-0543-31 ",.01)
 ;;00006-0543-31
 ;;9002226.02101,"1201,00006-0543-31 ",.02)
 ;;00006-0543-31
 ;;9002226.02101,"1201,00006-0543-54 ",.01)
 ;;00006-0543-54
 ;;9002226.02101,"1201,00006-0543-54 ",.02)
 ;;00006-0543-54
 ;;9002226.02101,"1201,00006-0543-61 ",.01)
 ;;00006-0543-61
 ;;9002226.02101,"1201,00006-0543-61 ",.02)
 ;;00006-0543-61
 ;;9002226.02101,"1201,00006-0543-82 ",.01)
 ;;00006-0543-82
 ;;9002226.02101,"1201,00006-0543-82 ",.02)
 ;;00006-0543-82
 ;;9002226.02101,"1201,00006-0726-28 ",.01)
 ;;00006-0726-28
 ;;9002226.02101,"1201,00006-0726-28 ",.02)
 ;;00006-0726-28
 ;;9002226.02101,"1201,00006-0726-31 ",.01)
 ;;00006-0726-31
 ;;9002226.02101,"1201,00006-0726-31 ",.02)
 ;;00006-0726-31
 ;;9002226.02101,"1201,00006-0726-54 ",.01)
 ;;00006-0726-54
 ;;9002226.02101,"1201,00006-0726-54 ",.02)
 ;;00006-0726-54
 ;;9002226.02101,"1201,00006-0726-61 ",.01)
 ;;00006-0726-61
 ;;9002226.02101,"1201,00006-0726-61 ",.02)
 ;;00006-0726-61
 ;;9002226.02101,"1201,00006-0726-82 ",.01)
 ;;00006-0726-82
 ;;9002226.02101,"1201,00006-0726-82 ",.02)
 ;;00006-0726-82
 ;;9002226.02101,"1201,00006-0730-61 ",.01)
 ;;00006-0730-61
 ;;9002226.02101,"1201,00006-0730-61 ",.02)
 ;;00006-0730-61
 ;;9002226.02101,"1201,00006-0731-28 ",.01)
 ;;00006-0731-28
 ;;9002226.02101,"1201,00006-0731-28 ",.02)
 ;;00006-0731-28
 ;;9002226.02101,"1201,00006-0731-61 ",.01)
 ;;00006-0731-61
 ;;9002226.02101,"1201,00006-0731-61 ",.02)
 ;;00006-0731-61
 ;;9002226.02101,"1201,00006-0731-82 ",.01)
 ;;00006-0731-82
 ;;9002226.02101,"1201,00006-0731-82 ",.02)
 ;;00006-0731-82
 ;;9002226.02101,"1201,00006-0731-87 ",.01)
 ;;00006-0731-87
 ;;9002226.02101,"1201,00006-0731-87 ",.02)
 ;;00006-0731-87
 ;;9002226.02101,"1201,00006-0731-94 ",.01)
 ;;00006-0731-94
 ;;9002226.02101,"1201,00006-0731-94 ",.02)
 ;;00006-0731-94
 ;;9002226.02101,"1201,00006-0732-61 ",.01)
 ;;00006-0732-61
 ;;9002226.02101,"1201,00006-0732-61 ",.02)
 ;;00006-0732-61
 ;;9002226.02101,"1201,00006-0732-82 ",.01)
 ;;00006-0732-82
 ;;9002226.02101,"1201,00006-0732-82 ",.02)
 ;;00006-0732-82
 ;;9002226.02101,"1201,00006-0732-87 ",.01)
 ;;00006-0732-87
 ;;9002226.02101,"1201,00006-0732-87 ",.02)
 ;;00006-0732-87