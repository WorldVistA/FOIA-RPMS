BGP62Y11 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"52959-0657-03 ")
 ;;2596
 ;;21,"52959-0657-06 ")
 ;;2597
 ;;21,"52959-0660-20 ")
 ;;1662
 ;;21,"52959-0660-30 ")
 ;;1663
 ;;21,"52959-0661-20 ")
 ;;740
 ;;21,"52959-0661-30 ")
 ;;741
 ;;21,"52959-0690-03 ")
 ;;4804
 ;;21,"52959-0690-05 ")
 ;;4805
 ;;21,"52959-0690-07 ")
 ;;4806
 ;;21,"52959-0690-14 ")
 ;;4807
 ;;21,"52959-0690-30 ")
 ;;4808
 ;;21,"52959-0702-04 ")
 ;;1102
 ;;21,"52959-0702-09 ")
 ;;1103
 ;;21,"52959-0702-12 ")
 ;;1104
 ;;21,"52959-0702-14 ")
 ;;1105
 ;;21,"52959-0702-15 ")
 ;;1106
 ;;21,"52959-0702-20 ")
 ;;1107
 ;;21,"52959-0702-21 ")
 ;;1108
 ;;21,"52959-0702-30 ")
 ;;1109
 ;;21,"52959-0702-40 ")
 ;;1110
 ;;21,"52959-0707-10 ")
 ;;1252
 ;;21,"52959-0707-14 ")
 ;;1253
 ;;21,"52959-0707-15 ")
 ;;1254
 ;;21,"52959-0707-20 ")
 ;;1255
 ;;21,"52959-0707-30 ")
 ;;1256
 ;;21,"52959-0707-60 ")
 ;;1257
 ;;21,"52959-0730-00 ")
 ;;4477
 ;;21,"52959-0730-04 ")
 ;;4478
 ;;21,"52959-0730-06 ")
 ;;4479
 ;;21,"52959-0730-10 ")
 ;;4480
 ;;21,"52959-0730-14 ")
 ;;4481
 ;;21,"52959-0730-15 ")
 ;;4482
 ;;21,"52959-0730-20 ")
 ;;4483
 ;;21,"52959-0730-21 ")
 ;;4484
 ;;21,"52959-0730-28 ")
 ;;4485
 ;;21,"52959-0730-30 ")
 ;;4486
 ;;21,"52959-0730-60 ")
 ;;4487
 ;;21,"52959-0734-14 ")
 ;;4709
 ;;21,"52959-0734-20 ")
 ;;4710
 ;;21,"52959-0734-30 ")
 ;;4711
 ;;21,"52959-0734-60 ")
 ;;4712
 ;;21,"52959-0739-06 ")
 ;;4227
 ;;21,"52959-0739-10 ")
 ;;4228
 ;;21,"52959-0739-14 ")
 ;;4229
 ;;21,"52959-0739-20 ")
 ;;4230
 ;;21,"52959-0744-20 ")
 ;;2290
 ;;21,"52959-0744-30 ")
 ;;2291
 ;;21,"52959-0744-40 ")
 ;;2292
 ;;21,"52959-0744-42 ")
 ;;2293
 ;;21,"52959-0765-01 ")
 ;;3727
 ;;21,"52959-0765-02 ")
 ;;3728
 ;;21,"52959-0766-03 ")
 ;;5548
 ;;21,"52959-0766-05 ")
 ;;5549
 ;;21,"52959-0766-07 ")
 ;;5550
 ;;21,"52959-0782-10 ")
 ;;4978
 ;;21,"52959-0782-20 ")
 ;;4979
 ;;21,"52959-0784-04 ")
 ;;2447
 ;;21,"52959-0784-16 ")
 ;;2448
 ;;21,"52959-0784-21 ")
 ;;2449
 ;;21,"52959-0784-28 ")
 ;;2450
 ;;21,"52959-0784-30 ")
 ;;2451
 ;;21,"52959-0784-40 ")
 ;;2452
 ;;21,"52959-0793-28 ")
 ;;908
 ;;21,"52959-0793-40 ")
 ;;909
 ;;21,"52959-0796-10 ")
 ;;7069
 ;;21,"52959-0816-20 ")
 ;;3317
 ;;21,"52959-0816-28 ")
 ;;3318
 ;;21,"52959-0816-30 ")
 ;;3319
 ;;21,"52959-0836-10 ")
 ;;2972
 ;;21,"52959-0836-14 ")
 ;;2973
 ;;21,"52959-0836-20 ")
 ;;2974
 ;;21,"52959-0836-60 ")
 ;;2975
 ;;21,"52959-0838-06 ")
 ;;2681
 ;;21,"52959-0843-01 ")
 ;;153
 ;;21,"52959-0855-07 ")
 ;;4668
 ;;21,"52959-0927-03 ")
 ;;2808
 ;;21,"52959-0932-30 ")
 ;;2598
 ;;21,"52959-0939-20 ")
 ;;5467
 ;;21,"52959-0939-30 ")
 ;;5468
 ;;21,"52959-1012-00 ")
 ;;994
 ;;21,"52959-1012-01 ")
 ;;995
 ;;21,"52959-1023-01 ")
 ;;5551
 ;;21,"52959-1023-03 ")
 ;;5552
 ;;21,"52959-1023-05 ")
 ;;5553
 ;;21,"52959-1023-07 ")
 ;;5554
 ;;21,"52959-1023-09 ")
 ;;5555
 ;;21,"52959-1029-00 ")
 ;;1788
 ;;21,"52959-1029-01 ")
 ;;1789
 ;;21,"52959-1055-00 ")
 ;;3504
 ;;21,"52959-1055-01 ")
 ;;3505
 ;;21,"52959-1172-01 ")
 ;;3729
 ;;21,"52959-1172-02 ")
 ;;3730
 ;;21,"52959-1399-03 ")
 ;;5176
 ;;21,"52959-1425-03 ")
 ;;834
 ;;21,"52959-1452-01 ")
 ;;3393
 ;;21,"52959-1452-02 ")
 ;;3394
 ;;21,"52959-1453-02 ")
 ;;1564
 ;;21,"52959-1462-00 ")
 ;;3608
 ;;21,"52959-1463-03 ")
 ;;405
 ;;21,"53489-0118-02 ")
 ;;6312
 ;;21,"53489-0118-05 ")
 ;;6313
 ;;21,"53489-0119-02 ")
 ;;6011
 ;;21,"53489-0119-05 ")
 ;;6012
 ;;21,"53489-0120-02 ")
 ;;6177
 ;;21,"53489-0120-05 ")
 ;;6178
 ;;21,"53489-0145-01 ")
 ;;5591
 ;;21,"53489-0145-05 ")
 ;;5592
 ;;21,"53489-0146-01 ")
 ;;5739
 ;;21,"53489-0146-05 ")
 ;;5740
 ;;21,"53489-0647-01 ")
 ;;5916
 ;;21,"53746-0271-01 ")
 ;;5593
 ;;21,"53746-0271-05 ")
 ;;5594
 ;;21,"53746-0272-01 ")
 ;;5741
 ;;21,"53746-0272-05 ")
 ;;5742
 ;;21,"53808-0222-01 ")
 ;;1966
 ;;21,"53808-0223-01 ")
 ;;4488
 ;;21,"53808-0239-01 ")
 ;;6013
 ;;21,"53808-0240-01 ")
 ;;6014
 ;;21,"53808-0341-01 ")
 ;;1111
 ;;21,"53808-0349-01 ")
 ;;4489
 ;;21,"53808-0740-01 ")
 ;;1258
 ;;21,"53808-0962-01 ")
 ;;6015
 ;;21,"54348-0575-02 ")
 ;;6016
 ;;21,"54348-0854-04 ")
 ;;2682
 ;;21,"54531-0100-01 ")
 ;;5904
 ;;21,"54569-0075-00 ")
 ;;5743
 ;;21,"54569-0075-01 ")
 ;;5744
 ;;21,"54569-0075-02 ")
 ;;5745
 ;;21,"54569-0075-03 ")
 ;;5746
 ;;21,"54569-0075-05 ")
 ;;5747
 ;;21,"54569-0075-07 ")
 ;;5748
 ;;21,"54569-0075-09 ")
 ;;5749
 ;;21,"54569-0109-00 ")
 ;;1406
 ;;21,"54569-0110-02 ")
 ;;1398
 ;;21,"54569-0110-04 ")
 ;;1399
 ;;21,"54569-0118-00 ")
 ;;6179
 ;;21,"54569-0118-01 ")
 ;;6180
 ;;21,"54569-0118-02 ")
 ;;6181
 ;;21,"54569-0118-03 ")
 ;;6182
 ;;21,"54569-0118-05 ")
 ;;6183
 ;;21,"54569-0118-06 ")
 ;;6184
 ;;21,"54569-0118-08 ")
 ;;6185
 ;;21,"54569-0118-09 ")
 ;;6186
 ;;21,"54569-0120-00 ")
 ;;996
 ;;21,"54569-0126-00 ")
 ;;3374
 ;;21,"54569-0127-00 ")
 ;;3438
 ;;21,"54569-0127-02 ")
 ;;3439
 ;;21,"54569-0127-03 ")
 ;;3440
 ;;21,"54569-0127-05 ")
 ;;3441
 ;;21,"54569-0128-00 ")
 ;;3375
 ;;21,"54569-0132-00 ")
 ;;3506
 ;;21,"54569-0134-00 ")
 ;;3491
 ;;21,"54569-0135-00 ")
 ;;3492
 ;;21,"54569-0136-01 ")
 ;;1112
 ;;21,"54569-0147-01 ")
 ;;6314
 ;;21,"54569-0147-02 ")
 ;;6315
 ;;21,"54569-0147-04 ")
 ;;6316
 ;;21,"54569-0157-02 ")
 ;;3253
 ;;21,"54569-0179-00 ")
 ;;5556
 ;;21,"54569-0269-00 ")
 ;;5595
 ;;21,"54569-0304-02 ")
 ;;1664
 ;;21,"54569-0304-03 ")
 ;;1665
 ;;21,"54569-0304-04 ")
 ;;1666
 ;;21,"54569-0304-05 ")
 ;;1667
 ;;21,"54569-0304-06 ")
 ;;1668
 ;;21,"54569-0304-08 ")
 ;;1669
 ;;21,"54569-0305-00 ")
 ;;1967
 ;;21,"54569-0305-01 ")
 ;;1968
 ;;21,"54569-0305-02 ")
 ;;1969
 ;;21,"54569-0305-03 ")
 ;;1970
 ;;21,"54569-0305-05 ")
 ;;1971
 ;;21,"54569-0305-06 ")
 ;;1972
 ;;21,"54569-0305-07 ")
 ;;1973
 ;;21,"54569-0305-08 ")
 ;;1974
 ;;21,"54569-0306-00 ")
 ;;2294
 ;;21,"54569-0306-01 ")
 ;;2295
 ;;21,"54569-0384-00 ")
 ;;3927
 ;;21,"54569-0384-01 ")
 ;;3928
 ;;21,"54569-0384-04 ")
 ;;3929
 ;;21,"54569-0384-05 ")
 ;;3930
 ;;21,"54569-1019-00 ")
 ;;923
 ;;21,"54569-1023-00 ")
 ;;1565
 ;;21,"54569-1024-00 ")
 ;;1790
 ;;21,"54569-1025-00 ")
 ;;1791
 ;;21,"54569-1026-00 ")
 ;;3560
 ;;21,"54569-1377-00 ")
 ;;6919
 ;;21,"54569-1648-03 ")
 ;;4231
 ;;21,"54569-1648-05 ")
 ;;4232
 ;;21,"54569-1648-07 ")
 ;;4233
 ;;21,"54569-1719-00 ")
 ;;794
 ;;21,"54569-1719-02 ")
 ;;795
 ;;21,"54569-1723-00 ")
 ;;4490
 ;;21,"54569-1723-01 ")
 ;;4491
 ;;21,"54569-1723-02 ")
 ;;4492
 ;;21,"54569-1723-03 ")
 ;;4493
 ;;21,"54569-1723-04 ")
 ;;4494
 ;;21,"54569-1723-05 ")
 ;;4495
 ;;21,"54569-1723-08 ")
 ;;4496
 ;;21,"54569-1723-09 ")
 ;;4497
 ;;21,"54569-1792-03 ")
 ;;5382
 ;;21,"54569-1802-01 ")
 ;;6799
 ;;21,"54569-1840-00 ")
 ;;6017
 ;;21,"54569-1840-01 ")
 ;;6018
 ;;21,"54569-1840-03 ")
 ;;6019
 ;;21,"54569-1840-04 ")
 ;;6020
 ;;21,"54569-1840-07 ")
 ;;6021
 ;;21,"54569-1889-00 ")
 ;;4000
 ;;21,"54569-1889-01 ")
 ;;4001
 ;;21,"54569-1889-04 ")
 ;;4002
 ;;21,"54569-1959-00 ")
 ;;1113
 ;;21,"54569-1959-03 ")
 ;;1114
 ;;21,"54569-1959-04 ")
 ;;1115
 ;;21,"54569-1959-05 ")
 ;;1116
 ;;21,"54569-1959-06 ")
 ;;1117
 ;;21,"54569-1959-08 ")
 ;;1118
 ;;21,"54569-2000-00 ")
 ;;3561
 ;;21,"54569-2187-00 ")
 ;;3395
 ;;21,"54569-2199-00 ")
 ;;3201
 ;;21,"54569-2199-01 ")
 ;;3202
 ;;21,"54569-2199-03 ")
 ;;3203
 ;;21,"54569-2279-03 ")
 ;;6625
 ;;21,"54569-2279-07 ")
 ;;6626
 ;;21,"54569-2281-00 ")
 ;;3063
 ;;21,"54569-2281-01 ")
 ;;3064
 ;;21,"54569-2281-02 ")
 ;;3065
 ;;21,"54569-2281-03 ")
 ;;3066
 ;;21,"54569-2281-04 ")
 ;;3067
 ;;21,"54569-2433-00 ")
 ;;3137
 ;;21,"54569-2433-02 ")
 ;;3138
 ;;21,"54569-2488-00 ")
 ;;4713
 ;;21,"54569-2488-01 ")
 ;;4714
 ;;21,"54569-2488-03 ")
 ;;4715
 ;;21,"54569-2502-00 ")
 ;;3320
 ;;21,"54569-2502-01 ")
 ;;3321
 ;;21,"54569-2502-03 ")
 ;;3322
 ;;21,"54569-2502-05 ")
 ;;3323
 ;;21,"54569-2502-06 ")
 ;;3324
 ;;21,"54569-2508-00 ")
 ;;3285
 ;;21,"54569-2508-01 ")
 ;;3286
 ;;21,"54569-2508-02 ")
 ;;3287
 ;;21,"54569-2508-03 ")
 ;;3288
 ;;21,"54569-2508-04 ")
 ;;3289
 ;;21,"54569-2702-08 ")
 ;;3650
 ;;21,"54569-2719-00 ")
 ;;7046
 ;;21,"54569-2821-00 ")
 ;;3396
 ;;21,"54569-2928-00 ")
 ;;116
 ;;21,"54569-2930-00 ")
 ;;117
 ;;21,"54569-2931-00 ")
 ;;406
 ;;21,"54569-2933-00 ")
 ;;3731
 ;;21,"54569-2935-00 ")
 ;;3732
 ;;21,"54569-2952-01 ")
 ;;3362
 ;;21,"54569-2953-00 ")
 ;;118
 ;;21,"54569-2954-00 ")
 ;;407
 ;;21,"54569-2986-00 ")
 ;;5750
 ;;21,"54569-2986-04 ")
 ;;5751
 ;;21,"54569-2986-05 ")
 ;;5752
 ;;21,"54569-3057-00 ")
 ;;3397
 ;;21,"54569-3074-01 ")
 ;;6187
 ;;21,"54569-3074-02 ")
 ;;6188
 ;;21,"54569-3074-05 ")
 ;;6189
 ;;21,"54569-3074-06 ")
 ;;6190
 ;;21,"54569-3074-07 ")
 ;;6191
 ;;21,"54569-3074-08 ")
 ;;6192
 ;;21,"54569-3153-00 ")
 ;;2141
 ;;21,"54569-3153-02 ")
 ;;2142
 ;;21,"54569-3153-03 ")
 ;;2143
 ;;21,"54569-3162-00 ")
 ;;1541
 ;;21,"54569-3315-00 ")
 ;;6627
 ;;21,"54569-3324-03 ")
 ;;1975
 ;;21,"54569-3439-00 ")
 ;;2976
 ;;21,"54569-3439-01 ")
 ;;2977
 ;;21,"54569-3439-03 ")
 ;;2978
 ;;21,"54569-3439-04 ")
 ;;2979
 ;;21,"54569-3456-00 ")
 ;;2296
 ;;21,"54569-3456-01 ")
 ;;2297
 ;;21,"54569-3456-02 ")
 ;;2298
 ;;21,"54569-3456-03 ")
 ;;2299
 ;;21,"54569-3456-04 ")
 ;;2300
 ;;21,"54569-3456-06 ")
 ;;2301
 ;;21,"54569-3477-00 ")
 ;;6800
 ;;21,"54569-3479-00 ")
 ;;6920
 ;;21,"54569-3503-01 ")
 ;;3816
 ;;21,"54569-3531-02 ")
 ;;3442
 ;;21,"54569-3556-01 ")
 ;;2900
 ;;21,"54569-3563-00 ")
 ;;3097
 ;;21,"54569-3563-01 ")
 ;;3098
 ;;21,"54569-3563-02 ")
 ;;3099
 ;;21,"54569-3563-03 ")
 ;;3100
 ;;21,"54569-3563-04 ")
 ;;3101
 ;;21,"54569-3563-05 ")
 ;;3102
 ;;21,"54569-3689-00 ")
 ;;333
 ;;21,"54569-3689-01 ")
 ;;334
 ;;21,"54569-3689-02 ")
 ;;335
 ;;21,"54569-3689-03 ")
 ;;336
 ;;21,"54569-3689-04 ")
 ;;337
 ;;21,"54569-3689-05 ")
 ;;338
 ;;21,"54569-3689-06 ")
 ;;339
 ;;21,"54569-3876-00 ")
 ;;230
 ;;21,"54569-3896-00 ")
 ;;2874
 ;;21,"54569-3897-00 ")
 ;;2925
 ;;21,"54569-3986-01 ")
 ;;231
 ;;21,"54569-4003-00 ")
 ;;5557
 ;;21,"54569-4003-01 ")
 ;;5558
 ;;21,"54569-4003-02 ")
 ;;5559
 ;;21,"54569-4005-00 ")
 ;;5560
 ;;21,"54569-4005-01 ")
 ;;5561
 ;;21,"54569-4230-00 ")
 ;;2599
 ;;21,"54569-4231-00 ")
 ;;2600
 ;;21,"54569-4232-00 ")
 ;;2562
 ;;21,"54569-4270-00 ")
 ;;2875
 ;;21,"54569-4271-00 ")
 ;;2926
 ;;21,"54569-4294-00 ")
 ;;1317
 ;;21,"54569-4311-00 ")
 ;;5190
 ;;21,"54569-4391-00 ")
 ;;1463
 ;;21,"54569-4391-01 ")
 ;;1464
 ;;21,"54569-4391-02 ")
 ;;1465
 ;;21,"54569-4391-03 ")
 ;;1466
 ;;21,"54569-4391-04 ")
 ;;1467
 ;;21,"54569-4417-00 ")
 ;;2601
 ;;21,"54569-4489-00 ")
 ;;4907
 ;;21,"54569-4489-01 ")
 ;;4908
 ;;21,"54569-4489-02 ")
 ;;4909
 ;;21,"54569-4489-03 ")
 ;;4910
 ;;21,"54569-4489-04 ")
 ;;4911
 ;;21,"54569-4497-00 ")
 ;;2683
 ;;21,"54569-4522-00 ")
 ;;2684
 ;;21,"54569-4522-01 ")
 ;;2685
 ;;21,"54569-4522-02 ")
 ;;2686
 ;;21,"54569-4551-01 ")
 ;;7105
 ;;21,"54569-4567-00 ")
 ;;2548
 ;;21,"54569-4647-00 ")
 ;;6520
 ;;21,"54569-4689-00 ")
 ;;6443
 ;;21,"54569-4712-00 ")
 ;;6521
 ;;21,"54569-4713-00 ")
 ;;6444