BGP2VF11 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 08, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"59762-4802-06 ")
 ;;1347
 ;;21,"59762-4900-01 ")
 ;;4291
 ;;21,"59762-4900-02 ")
 ;;4292
 ;;21,"59762-4900-03 ")
 ;;4293
 ;;21,"59762-4900-04 ")
 ;;4294
 ;;21,"59762-4900-05 ")
 ;;4295
 ;;21,"59762-4910-01 ")
 ;;4028
 ;;21,"59762-4910-02 ")
 ;;4029
 ;;21,"59762-4910-03 ")
 ;;4030
 ;;21,"59762-4910-04 ")
 ;;4031
 ;;21,"59762-4910-05 ")
 ;;4032
 ;;21,"59762-4940-01 ")
 ;;4073
 ;;21,"59762-4960-01 ")
 ;;4150
 ;;21,"59772-3171-01 ")
 ;;4511
 ;;21,"60258-0830-08 ")
 ;;1082
 ;;21,"60429-0016-12 ")
 ;;316
 ;;21,"60429-0016-18 ")
 ;;317
 ;;21,"60429-0016-30 ")
 ;;318
 ;;21,"60429-0016-60 ")
 ;;319
 ;;21,"60429-0016-90 ")
 ;;320
 ;;21,"60429-0017-30 ")
 ;;435
 ;;21,"60429-0173-01 ")
 ;;1060
 ;;21,"60429-0173-10 ")
 ;;1061
 ;;21,"60429-0173-30 ")
 ;;1062
 ;;21,"60429-0174-01 ")
 ;;1205
 ;;21,"60429-0174-10 ")
 ;;1206
 ;;21,"60429-0174-30 ")
 ;;1207
 ;;21,"60429-0175-01 ")
 ;;1348
 ;;21,"60429-0175-10 ")
 ;;1349
 ;;21,"60429-0175-30 ")
 ;;1350
 ;;21,"60429-0187-01 ")
 ;;4667
 ;;21,"60429-0187-05 ")
 ;;4668
 ;;21,"60429-0188-01 ")
 ;;4420
 ;;21,"60429-0188-05 ")
 ;;4421
 ;;21,"60429-0188-90 ")
 ;;4422
 ;;21,"60429-0230-01 ")
 ;;4512
 ;;21,"60429-0230-05 ")
 ;;4513
 ;;21,"60429-0230-30 ")
 ;;4514
 ;;21,"60429-0230-90 ")
 ;;4515
 ;;21,"60429-0287-30 ")
 ;;1387
 ;;21,"60429-0288-30 ")
 ;;1408
 ;;21,"60429-0718-18 ")
 ;;2114
 ;;21,"60429-0718-30 ")
 ;;2115
 ;;21,"60429-0718-60 ")
 ;;2116
 ;;21,"60429-0718-90 ")
 ;;2117
 ;;21,"60429-0719-18 ")
 ;;2353
 ;;21,"60429-0719-30 ")
 ;;2354
 ;;21,"60429-0719-60 ")
 ;;2355
 ;;21,"60429-0719-90 ")
 ;;2356
 ;;21,"60429-0734-05 ")
 ;;3429
 ;;21,"60429-0734-30 ")
 ;;3430
 ;;21,"60429-0734-90 ")
 ;;3431
 ;;21,"60429-0735-01 ")
 ;;3618
 ;;21,"60429-0735-05 ")
 ;;3619
 ;;21,"60429-0735-30 ")
 ;;3620
 ;;21,"60429-0735-90 ")
 ;;3621
 ;;21,"60429-0736-05 ")
 ;;3733
 ;;21,"60429-0736-30 ")
 ;;3734
 ;;21,"60429-0736-90 ")
 ;;3735
 ;;21,"60429-0737-05 ")
 ;;3823
 ;;21,"60429-0737-15 ")
 ;;3824
 ;;21,"60429-0737-30 ")
 ;;3825
 ;;21,"60429-0737-45 ")
 ;;3826
 ;;21,"60429-0737-90 ")
 ;;3827
 ;;21,"60429-0746-01 ")
 ;;965
 ;;21,"60429-0747-01 ")
 ;;622
 ;;21,"60429-0758-01 ")
 ;;2566
 ;;21,"60429-0759-01 ")
 ;;2582
 ;;21,"60429-0759-30 ")
 ;;2583
 ;;21,"60429-0759-90 ")
 ;;2584
 ;;21,"60429-0760-01 ")
 ;;2551
 ;;21,"60429-0760-30 ")
 ;;2552
 ;;21,"60429-0760-90 ")
 ;;2553
 ;;21,"60429-0930-01 ")
 ;;4516
 ;;21,"60429-0930-05 ")
 ;;4517
 ;;21,"60429-0930-30 ")
 ;;4518
 ;;21,"60429-0930-90 ")
 ;;4519
 ;;21,"60429-0946-01 ")
 ;;966
 ;;21,"60429-0946-05 ")
 ;;967
 ;;21,"60429-0947-01 ")
 ;;623
 ;;21,"60429-0947-05 ")
 ;;624
 ;;21,"60429-0987-01 ")
 ;;4669
 ;;21,"60429-0987-05 ")
 ;;4670
 ;;21,"60429-0987-30 ")
 ;;4671
 ;;21,"60429-0987-60 ")
 ;;4672
 ;;21,"60429-0987-90 ")
 ;;4673
 ;;21,"60429-0988-01 ")
 ;;4423
 ;;21,"60429-0988-05 ")
 ;;4424
 ;;21,"60429-0988-30 ")
 ;;4425
 ;;21,"60432-0162-04 ")
 ;;2446
 ;;21,"60432-0651-04 ")
 ;;1611
 ;;21,"60505-0083-01 ")
 ;;3622
 ;;21,"60505-0083-02 ")
 ;;3623
 ;;21,"60505-0083-04 ")
 ;;3624
 ;;21,"60505-0084-01 ")
 ;;3736
 ;;21,"60505-0084-02 ")
 ;;3737
 ;;21,"60505-0084-04 ")
 ;;3738
 ;;21,"60505-0097-01 ")
 ;;3432
 ;;21,"60505-0097-02 ")
 ;;3433
 ;;21,"60505-0097-04 ")
 ;;3434
 ;;21,"60505-0101-01 ")
 ;;3828
 ;;21,"60505-0101-02 ")
 ;;3829
 ;;21,"60505-0101-04 ")
 ;;3830
 ;;21,"60505-0157-01 ")
 ;;625
 ;;21,"60505-0157-05 ")
 ;;626
 ;;21,"60505-0157-09 ")
 ;;627
 ;;21,"60505-0158-01 ")
 ;;968
 ;;21,"60505-0158-05 ")
 ;;969
 ;;21,"60505-0158-09 ")
 ;;970
 ;;21,"60505-0164-01 ")
 ;;2567
 ;;21,"60505-0165-01 ")
 ;;2585
 ;;21,"60505-0166-01 ")
 ;;2554
 ;;21,"60505-0180-03 ")
 ;;4151
 ;;21,"60505-0180-08 ")
 ;;4152
 ;;21,"60505-0181-03 ")
 ;;4296
 ;;21,"60505-0181-08 ")
 ;;4297
 ;;21,"60505-0182-03 ")
 ;;4033
 ;;21,"60505-0182-08 ")
 ;;4034
 ;;21,"60505-0247-01 ")
 ;;2807
 ;;21,"60505-0247-08 ")
 ;;2808
 ;;21,"60505-0248-01 ")
 ;;2910
 ;;21,"60505-0248-08 ")
 ;;2911
 ;;21,"60505-0249-01 ")
 ;;2997
 ;;21,"60505-0249-08 ")
 ;;2998
 ;;21,"60505-0352-01 ")
 ;;2447
 ;;21,"60505-0374-01 ")
 ;;3461
 ;;21,"60505-0402-05 ")
 ;;3462
 ;;21,"60505-2518-01 ")
 ;;1063
 ;;21,"60505-2518-03 ")
 ;;1064
 ;;21,"60505-2518-04 ")
 ;;1065
 ;;21,"60505-2518-08 ")
 ;;1066
 ;;21,"60505-2519-01 ")
 ;;1208
 ;;21,"60505-2519-03 ")
 ;;1209
 ;;21,"60505-2519-04 ")
 ;;1210
 ;;21,"60505-2519-08 ")
 ;;1211
 ;;21,"60505-2520-01 ")
 ;;1351
 ;;21,"60505-2520-03 ")
 ;;1352
 ;;21,"60505-2520-04 ")
 ;;1353
 ;;21,"60505-2520-08 ")
 ;;1354
 ;;21,"60505-2653-00 ")
 ;;4674
 ;;21,"60505-2653-01 ")
 ;;4675
 ;;21,"60505-2653-05 ")
 ;;4676
 ;;21,"60505-2654-00 ")
 ;;4426
 ;;21,"60505-2654-01 ")
 ;;4427
 ;;21,"60505-2654-05 ")
 ;;4428
 ;;21,"60505-2655-01 ")
 ;;4520
 ;;21,"60505-2655-05 ")
 ;;4521
 ;;21,"60505-2659-01 ")
 ;;4558
 ;;21,"60505-3663-03 ")
 ;;3435
 ;;21,"60505-3664-03 ")
 ;;3625
 ;;21,"60505-3665-03 ")
 ;;3739
 ;;21,"60505-3666-03 ")
 ;;3831
 ;;21,"60505-3668-03 ")
 ;;3486
 ;;21,"60505-3669-03 ")
 ;;3684
 ;;21,"60505-3670-03 ")
 ;;3768
 ;;21,"60505-3673-03 ")
 ;;3487
 ;;21,"60505-3674-03 ")
 ;;3685
 ;;21,"60505-3675-03 ")
 ;;3769
 ;;21,"60505-3778-03 ")
 ;;4892
 ;;21,"60505-3778-09 ")
 ;;4893
 ;;21,"60505-3779-03 ")
 ;;5066
 ;;21,"60505-3779-09 ")
 ;;5067
 ;;21,"60505-3780-03 ")
 ;;4792
 ;;21,"60505-3780-09 ")
 ;;4793
 ;;21,"60760-0212-15 ")
 ;;89
 ;;21,"60760-0212-30 ")
 ;;90
 ;;21,"60760-0221-30 ")
 ;;494
 ;;21,"60760-0367-30 ")
 ;;321
 ;;21,"60760-0367-60 ")
 ;;322
 ;;21,"60760-0434-30 ")
 ;;4429
 ;;21,"60760-0434-60 ")
 ;;4430
 ;;21,"60760-0440-30 ")
 ;;4677
 ;;21,"60760-0440-60 ")
 ;;4678
 ;;21,"60760-0508-30 ")
 ;;3161
 ;;21,"60760-0508-60 ")
 ;;3162
 ;;21,"60760-0647-30 ")
 ;;2357
 ;;21,"60760-0811-30 ")
 ;;3268
 ;;21,"60760-0811-60 ")
 ;;3269
 ;;21,"61392-0025-45 ")
 ;;2611
 ;;21,"61392-0025-54 ")
 ;;2612
 ;;21,"61392-0025-56 ")
 ;;2613
 ;;21,"61392-0025-91 ")
 ;;2614
 ;;21,"61392-0026-45 ")
 ;;2654
 ;;21,"61392-0026-54 ")
 ;;2655
 ;;21,"61392-0026-56 ")
 ;;2656
 ;;21,"61392-0026-91 ")
 ;;2657
 ;;21,"61392-0027-45 ")
 ;;2697
 ;;21,"61392-0027-54 ")
 ;;2698
 ;;21,"61392-0027-56 ")
 ;;2699
 ;;21,"61392-0027-91 ")
 ;;2700
 ;;21,"61392-0071-30 ")
 ;;522
 ;;21,"61392-0071-31 ")
 ;;523
 ;;21,"61392-0071-32 ")
 ;;524
 ;;21,"61392-0071-39 ")
 ;;525
 ;;21,"61392-0071-45 ")
 ;;526
 ;;21,"61392-0071-51 ")
 ;;527
 ;;21,"61392-0071-54 ")
 ;;528
 ;;21,"61392-0071-60 ")
 ;;529
 ;;21,"61392-0071-90 ")
 ;;530
 ;;21,"61392-0071-91 ")
 ;;531
 ;;21,"61392-0072-30 ")
 ;;540
 ;;21,"61392-0072-31 ")
 ;;541
 ;;21,"61392-0072-32 ")
 ;;542
 ;;21,"61392-0072-39 ")
 ;;543
 ;;21,"61392-0072-45 ")
 ;;544
 ;;21,"61392-0072-51 ")
 ;;545
 ;;21,"61392-0072-54 ")
 ;;546
 ;;21,"61392-0072-60 ")
 ;;547
 ;;21,"61392-0072-90 ")
 ;;548
 ;;21,"61392-0072-91 ")
 ;;549
 ;;21,"61392-0140-34 ")
 ;;323
 ;;21,"61392-0140-45 ")
 ;;324
 ;;21,"61392-0140-56 ")
 ;;325
 ;;21,"61392-0140-91 ")
 ;;326
 ;;21,"61392-0141-45 ")
 ;;436
 ;;21,"61392-0141-56 ")
 ;;437
 ;;21,"61392-0141-91 ")
 ;;438
 ;;21,"61392-0143-34 ")
 ;;91
 ;;21,"61392-0143-45 ")
 ;;92
 ;;21,"61392-0143-56 ")
 ;;93
 ;;21,"61392-0143-91 ")
 ;;94
 ;;21,"61392-0153-31 ")
 ;;166
 ;;21,"61392-0153-32 ")
 ;;167
 ;;21,"61392-0153-39 ")
 ;;168
 ;;21,"61392-0153-45 ")
 ;;169
 ;;21,"61392-0153-54 ")
 ;;170
 ;;21,"61392-0153-56 ")
 ;;171
 ;;21,"61392-0153-91 ")
 ;;172
 ;;21,"61392-0234-30 ")
 ;;2118
 ;;21,"61392-0234-51 ")
 ;;2119
 ;;21,"61392-0234-54 ")
 ;;2120
 ;;21,"61392-0234-56 ")
 ;;2121
 ;;21,"61392-0234-60 ")
 ;;2122
 ;;21,"61392-0234-90 ")
 ;;2123
 ;;21,"61392-0234-91 ")
 ;;2124
 ;;21,"61392-0235-15 ")
 ;;2358
 ;;21,"61392-0235-30 ")
 ;;2359
 ;;21,"61392-0235-45 ")
 ;;2360
 ;;21,"61392-0235-51 ")
 ;;2361
 ;;21,"61392-0235-54 ")
 ;;2362
 ;;21,"61392-0235-56 ")
 ;;2363
 ;;21,"61392-0235-60 ")
 ;;2364
 ;;21,"61392-0235-90 ")
 ;;2365
 ;;21,"61392-0235-91 ")
 ;;2366
 ;;21,"61392-0361-45 ")
 ;;3163
 ;;21,"61392-0361-56 ")
 ;;3164
 ;;21,"61392-0361-91 ")
 ;;3165
 ;;21,"61392-0364-45 ")
 ;;3270
 ;;21,"61392-0364-56 ")
 ;;3271
 ;;21,"61392-0364-91 ")
 ;;3272
 ;;21,"61392-0367-45 ")
 ;;3330
 ;;21,"61392-0367-56 ")
 ;;3331
 ;;21,"61392-0367-91 ")
 ;;3332
 ;;21,"61392-0370-45 ")
 ;;3367
 ;;21,"61392-0370-54 ")
 ;;3368
 ;;21,"61392-0370-56 ")
 ;;3369
 ;;21,"61392-0370-91 ")
 ;;3370
 ;;21,"61392-0487-45 ")
 ;;4679
 ;;21,"61392-0487-56 ")
 ;;4680
 ;;21,"61392-0487-91 ")
 ;;4681
 ;;21,"61392-0490-15 ")
 ;;4431
 ;;21,"61392-0490-45 ")
 ;;4432
 ;;21,"61392-0490-56 ")
 ;;4433
 ;;21,"61392-0490-91 ")
 ;;4434
 ;;21,"61392-0491-30 ")
 ;;4522
 ;;21,"61392-0491-31 ")
 ;;4523
 ;;21,"61392-0491-32 ")
 ;;4524
 ;;21,"61392-0491-39 ")
 ;;4525
 ;;21,"61392-0491-45 ")
 ;;4526
 ;;21,"61392-0491-51 ")
 ;;4527
 ;;21,"61392-0491-54 ")
 ;;4528
 ;;21,"61392-0491-60 ")
 ;;4529
 ;;21,"61392-0491-90 ")
 ;;4530
 ;;21,"61392-0491-91 ")
 ;;4531
 ;;21,"61392-0726-32 ")
 ;;1599
 ;;21,"61392-0726-45 ")
 ;;1600
 ;;21,"61392-0726-51 ")
 ;;1601
 ;;21,"61392-0726-54 ")
 ;;1602
 ;;21,"61392-0726-91 ")
 ;;1603
 ;;21,"61392-0727-31 ")
 ;;1699
 ;;21,"61392-0727-32 ")
 ;;1700
 ;;21,"61392-0727-45 ")
 ;;1701
 ;;21,"61392-0727-51 ")
 ;;1702
 ;;21,"61392-0727-54 ")
 ;;1703
 ;;21,"61392-0727-90 ")
 ;;1704
 ;;21,"61392-0727-91 ")
 ;;1705
 ;;21,"61392-0728-45 ")
 ;;1777
 ;;21,"61392-0728-51 ")
 ;;1778
 ;;21,"61392-0728-54 ")
 ;;1779
 ;;21,"61392-0728-91 ")
 ;;1780
 ;;21,"61392-0729-30 ")
 ;;1822
 ;;21,"61392-0729-32 ")
 ;;1823
 ;;21,"61392-0729-45 ")
 ;;1824
 ;;21,"61392-0729-51 ")
 ;;1825
 ;;21,"61392-0729-54 ")
 ;;1826
 ;;21,"61392-0729-60 ")
 ;;1827
 ;;21,"61392-0729-91 ")
 ;;1828
 ;;21,"61392-0730-30 ")
 ;;1632
 ;;21,"61392-0730-31 ")
 ;;1633
 ;;21,"61392-0730-32 ")
 ;;1634
 ;;21,"61392-0730-39 ")
 ;;1635
 ;;21,"61392-0730-45 ")
 ;;1636
 ;;21,"61392-0730-51 ")
 ;;1637
 ;;21,"61392-0730-60 ")
 ;;1638
 ;;21,"61392-0730-90 ")
 ;;1639
 ;;21,"61392-0730-91 ")
 ;;1640
 ;;21,"62037-0539-05 ")
 ;;2367
 ;;21,"62037-0539-10 ")
 ;;2368
 ;;21,"62037-0753-10 ")
 ;;2809
 ;;21,"62037-0753-30 ")
 ;;2810
 ;;21,"62037-0754-10 ")
 ;;2912
 ;;21,"62037-0754-30 ")
 ;;2913
 ;;21,"62037-0755-10 ")
 ;;2999
 ;;21,"62037-0755-30 ")
 ;;3000
 ;;21,"62037-0845-30 ")
 ;;3436
 ;;21,"62037-0846-01 ")
 ;;3626
 ;;21,"62037-0846-10 ")
 ;;3627
 ;;21,"62037-0846-30 ")
 ;;3628
 ;;21,"62037-0847-30 ")
 ;;3740
 ;;21,"62037-0848-30 ")
 ;;3832
 ;;21,"62559-0158-01 ")
 ;;2568
 ;;21,"62559-0159-01 ")
 ;;2586
 ;;21,"62559-0160-01 ")
 ;;2555
 ;;21,"62584-0556-01 ")
 ;;2811
 ;;21,"62584-0556-11 ")
 ;;2812
 ;;21,"62584-0556-85 ")
 ;;2813
 ;;21,"62584-0557-01 ")
 ;;2914
 ;;21,"62584-0557-11 ")
 ;;2915
 ;;21,"62584-0686-01 ")
 ;;1604
 ;;21,"62584-0686-11 ")
 ;;1605
 ;;21,"62584-0687-01 ")
 ;;1706
 ;;21,"62584-0687-11 ")
 ;;1707
 ;;21,"62584-0688-01 ")
 ;;1781
 ;;21,"62584-0688-11 ")
 ;;1782
 ;;21,"62584-0750-01 ")
 ;;2658
 ;;21,"62584-0750-11 ")
 ;;2659
 ;;21,"62584-0751-01 ")
 ;;2701
 ;;21,"62584-0751-11 ")
 ;;2702
 ;;21,"63304-0164-30 ")
 ;;4153
 ;;21,"63304-0165-01 ")
 ;;4298
 ;;21,"63304-0165-05 ")
 ;;4299
 ;;21,"63304-0165-30 ")
 ;;4300
 ;;21,"63304-0166-01 ")
 ;;4035
 ;;21,"63304-0166-05 ")
 ;;4036
 ;;21,"63304-0166-30 ")
 ;;4037
 ;;21,"63304-0202-01 ")
 ;;3187
 ;;21,"63304-0632-01 ")
 ;;2501
 ;;21,"63304-0632-30 ")
 ;;2502
 ;;21,"63304-0632-90 ")
 ;;2503
 ;;21,"63304-0686-30 ")
 ;;2125
 ;;21,"63304-0686-90 ")
 ;;2126
 ;;21,"63304-0687-30 ")
 ;;2369
 ;;21,"63304-0687-90 ")
 ;;2370
 ;;21,"63304-0840-05 ")
 ;;4074
 ;;21,"63629-1318-01 ")
 ;;1212
 ;;21,"63629-1368-01 ")
 ;;439
 ;;21,"63629-1369-01 ")
 ;;327
 ;;21,"63629-1510-01 ")
 ;;2703
 ;;21,"63629-1513-01 ")
 ;;4682
 ;;21,"63629-1513-02 ")
 ;;4683
 ;;21,"63629-1513-03 ")
 ;;4684
 ;;21,"63629-1609-01 ")
 ;;2127
 ;;21,"63629-1609-02 ")
 ;;2128
 ;;21,"63629-1610-01 ")
 ;;2371
 ;;21,"63629-1610-02 ")
 ;;2372
 ;;21,"63629-1610-03 ")
 ;;2373
 ;;21,"63629-1610-04 ")
 ;;2374
 ;;21,"63629-1840-01 ")
 ;;3629
 ;;21,"63629-2642-01 ")
 ;;628
 ;;21,"63629-2833-02 ")
 ;;3273
 ;;21,"63629-2833-04 ")
 ;;3274
 ;;21,"63629-2867-01 ")
 ;;4532
 ;;21,"63629-2867-02 ")
 ;;4533
 ;;21,"63629-2867-03 ")
 ;;4534
 ;;21,"63629-2981-01 ")
 ;;1995
 ;;21,"63629-3204-01 ")
 ;;3166
 ;;21,"63629-3205-01 ")
 ;;3437
 ;;21,"63629-3210-01 ")
 ;;4435
 ;;21,"63629-3210-02 ")
 ;;4436
 ;;21,"63629-3221-01 ")
 ;;1606
 ;;21,"63629-3289-01 ")
 ;;4038
 ;;21,"63629-3309-01 ")
 ;;4301
 ;;21,"63629-3313-01 ")
 ;;4154
 ;;21,"63629-3340-01 ")
 ;;1917
 ;;21,"63672-2010-01 ")
 ;;3860
 ;;21,"63672-2020-01 ")
 ;;3862
 ;;21,"63672-2030-01 ")
 ;;3864
 ;;21,"63672-2040-01 ")
 ;;3866