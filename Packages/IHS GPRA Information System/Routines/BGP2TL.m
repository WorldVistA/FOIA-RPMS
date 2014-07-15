BGP2TL ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 27, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP HEDIS ARB NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ARB NDC
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
 ;;21,"00006-0717-01 ")
 ;;276
 ;;21,"00006-0717-28 ")
 ;;277
 ;;21,"00006-0717-31 ")
 ;;278
 ;;21,"00006-0717-54 ")
 ;;279
 ;;21,"00006-0717-82 ")
 ;;280
 ;;21,"00006-0717-86 ")
 ;;281
 ;;21,"00006-0745-01 ")
 ;;268
 ;;21,"00006-0745-28 ")
 ;;269
 ;;21,"00006-0745-31 ")
 ;;270
 ;;21,"00006-0745-54 ")
 ;;271
 ;;21,"00006-0745-82 ")
 ;;272
 ;;21,"00006-0745-86 ")
 ;;273
 ;;21,"00006-0747-01 ")
 ;;290
 ;;21,"00006-0747-28 ")
 ;;291
 ;;21,"00006-0747-31 ")
 ;;292
 ;;21,"00006-0747-54 ")
 ;;293
 ;;21,"00006-0747-81 ")
 ;;294
 ;;21,"00006-0747-82 ")
 ;;295
 ;;21,"00006-0951-01 ")
 ;;446
 ;;21,"00006-0951-28 ")
 ;;447
 ;;21,"00006-0951-54 ")
 ;;448
 ;;21,"00006-0951-82 ")
 ;;449
 ;;21,"00006-0951-87 ")
 ;;450
 ;;21,"00006-0952-01 ")
 ;;493
 ;;21,"00006-0952-28 ")
 ;;494
 ;;21,"00006-0952-31 ")
 ;;495
 ;;21,"00006-0952-54 ")
 ;;496
 ;;21,"00006-0952-82 ")
 ;;497
 ;;21,"00006-0952-87 ")
 ;;498
 ;;21,"00006-0960-01 ")
 ;;395
 ;;21,"00006-0960-28 ")
 ;;396
 ;;21,"00006-0960-31 ")
 ;;397
 ;;21,"00006-0960-54 ")
 ;;398
 ;;21,"00006-0960-82 ")
 ;;399
 ;;21,"00006-0960-86 ")
 ;;400
 ;;21,"00054-0123-22 ")
 ;;451
 ;;21,"00054-0124-22 ")
 ;;499
 ;;21,"00054-0125-22 ")
 ;;401
 ;;21,"00054-0126-22 ")
 ;;216
 ;;21,"00054-0127-22 ")
 ;;243
 ;;21,"00054-0277-22 ")
 ;;192
 ;;21,"00074-3015-11 ")
 ;;317
 ;;21,"00074-3020-11 ")
 ;;322
 ;;21,"00074-3025-11 ")
 ;;166
 ;;21,"00074-3040-11 ")
 ;;173
 ;;21,"00078-0314-06 ")
 ;;121
 ;;21,"00078-0314-33 ")
 ;;122
 ;;21,"00078-0314-34 ")
 ;;123
 ;;21,"00078-0314-61 ")
 ;;124
 ;;21,"00078-0315-06 ")
 ;;72
 ;;21,"00078-0315-15 ")
 ;;73
 ;;21,"00078-0315-17 ")
 ;;74
 ;;21,"00078-0315-34 ")
 ;;75
 ;;21,"00078-0315-61 ")
 ;;76
 ;;21,"00078-0315-67 ")
 ;;77
 ;;21,"00078-0358-06 ")
 ;;648
 ;;21,"00078-0358-33 ")
 ;;649
 ;;21,"00078-0358-34 ")
 ;;650
 ;;21,"00078-0358-61 ")
 ;;651
 ;;21,"00078-0359-06 ")
 ;;610
 ;;21,"00078-0359-17 ")
 ;;611
 ;;21,"00078-0359-34 ")
 ;;612
 ;;21,"00078-0359-61 ")
 ;;613
 ;;21,"00078-0360-06 ")
 ;;632
 ;;21,"00078-0360-11 ")
 ;;633
 ;;21,"00078-0360-34 ")
 ;;634
 ;;21,"00078-0383-06 ")
 ;;142
 ;;21,"00078-0383-15 ")
 ;;143
 ;;21,"00078-0383-17 ")
 ;;144
 ;;21,"00078-0383-34 ")
 ;;145
 ;;21,"00078-0383-61 ")
 ;;146
 ;;21,"00078-0383-67 ")
 ;;147
 ;;21,"00078-0423-06 ")
 ;;643
 ;;21,"00078-0423-15 ")
 ;;644
 ;;21,"00078-0423-61 ")
 ;;645
 ;;21,"00078-0471-11 ")
 ;;115
 ;;21,"00078-0471-15 ")
 ;;116
 ;;21,"00078-0471-34 ")
 ;;117
 ;;21,"00078-0471-67 ")
 ;;118
 ;;21,"00078-0472-11 ")
 ;;160
 ;;21,"00078-0472-15 ")
 ;;161
 ;;21,"00078-0472-34 ")
 ;;162
 ;;21,"00078-0472-67 ")
 ;;163
 ;;21,"00078-0488-15 ")
 ;;183
 ;;21,"00078-0489-15 ")
 ;;178
 ;;21,"00078-0490-15 ")
 ;;185
 ;;21,"00078-0491-15 ")
 ;;180
 ;;21,"00078-0559-15 ")
 ;;190
 ;;21,"00078-0560-15 ")
 ;;191
 ;;21,"00078-0561-15 ")
 ;;187
 ;;21,"00078-0562-15 ")
 ;;188
 ;;21,"00078-0563-15 ")
 ;;189
 ;;21,"00078-0572-15 ")
 ;;341
 ;;21,"00078-0574-15 ")
 ;;342
 ;;21,"00078-0610-15 ")
 ;;1
 ;;21,"00078-0611-15 ")
 ;;4
 ;;21,"00078-0612-15 ")
 ;;5
 ;;21,"00078-0613-15 ")
 ;;2
 ;;21,"00078-0614-15 ")
 ;;3
 ;;21,"00087-2771-31 ")
 ;;391
 ;;21,"00087-2771-32 ")
 ;;392
 ;;21,"00087-2772-15 ")
 ;;343
 ;;21,"00087-2772-31 ")
 ;;344
 ;;21,"00087-2772-32 ")
 ;;345
 ;;21,"00087-2772-35 ")
 ;;346
 ;;21,"00087-2773-15 ")
 ;;370
 ;;21,"00087-2773-31 ")
 ;;371
 ;;21,"00087-2773-32 ")
 ;;372
 ;;21,"00087-2775-31 ")
 ;;17
 ;;21,"00087-2775-32 ")
 ;;18
 ;;21,"00087-2776-31 ")
 ;;24
 ;;21,"00087-2776-32 ")
 ;;25
 ;;21,"00087-2788-31 ")
 ;;32
 ;;21,"00087-2788-32 ")
 ;;33
 ;;21,"00087-2875-31 ")
 ;;19
 ;;21,"00087-2875-32 ")
 ;;20
 ;;21,"00087-2876-31 ")
 ;;26
 ;;21,"00087-2876-32 ")
 ;;27
 ;;21,"00093-7364-10 ")
 ;;452
 ;;21,"00093-7364-98 ")
 ;;453
 ;;21,"00093-7365-10 ")
 ;;500
 ;;21,"00093-7365-56 ")
 ;;501
 ;;21,"00093-7365-98 ")
 ;;502
 ;;21,"00093-7366-10 ")
 ;;402
 ;;21,"00093-7366-56 ")
 ;;403
 ;;21,"00093-7366-98 ")
 ;;404
 ;;21,"00093-7367-10 ")
 ;;217
 ;;21,"00093-7367-56 ")
 ;;218
 ;;21,"00093-7367-98 ")
 ;;219
 ;;21,"00093-7368-10 ")
 ;;244
 ;;21,"00093-7368-56 ")
 ;;245
 ;;21,"00093-7368-98 ")
 ;;246
 ;;21,"00093-7369-10 ")
 ;;193
 ;;21,"00093-7369-56 ")
 ;;194
 ;;21,"00093-7369-98 ")
 ;;195
 ;;21,"00182-0322-54 ")
 ;;9
 ;;21,"00186-0004-31 ")
 ;;90
 ;;21,"00186-0008-31 ")
 ;;92
 ;;21,"00186-0016-28 ")
 ;;81
 ;;21,"00186-0016-31 ")
 ;;82
 ;;21,"00186-0016-54 ")
 ;;83
 ;;21,"00186-0032-28 ")
 ;;86
 ;;21,"00186-0032-31 ")
 ;;87
 ;;21,"00186-0032-54 ")
 ;;88
 ;;21,"00186-0162-28 ")
 ;;6
 ;;21,"00186-0162-54 ")
 ;;7
 ;;21,"00186-0322-28 ")
 ;;10
 ;;21,"00186-0322-54 ")
 ;;11
 ;;21,"00186-0324-54 ")
 ;;16
 ;;21,"00245-0193-01 ")
 ;;454
 ;;21,"00245-0193-10 ")
 ;;455
 ;;21,"00245-0193-30 ")
 ;;456
 ;;21,"00245-0193-90 ")
 ;;457
 ;;21,"00245-0194-01 ")
 ;;503
 ;;21,"00245-0194-10 ")
 ;;504
 ;;21,"00245-0194-30 ")
 ;;505
 ;;21,"00245-0194-90 ")
 ;;506
 ;;21,"00245-0195-01 ")
 ;;405
 ;;21,"00245-0195-10 ")
 ;;406
 ;;21,"00245-0195-30 ")
 ;;407
 ;;21,"00245-0195-90 ")
 ;;408
 ;;21,"00247-1962-00 ")
 ;;652
 ;;21,"00247-1962-30 ")
 ;;653
 ;;21,"00247-2257-90 ")
 ;;614
 ;;21,"00247-2285-30 ")
 ;;589
 ;;21,"00247-2285-60 ")
 ;;590
 ;;21,"00247-2285-90 ")
 ;;591
 ;;21,"00247-2286-30 ")
 ;;554
 ;;21,"00247-2286-60 ")
 ;;555
 ;;21,"00247-2286-90 ")
 ;;556
 ;;21,"00247-2287-30 ")
 ;;572
 ;;21,"00247-2287-60 ")
 ;;573
 ;;21,"00247-2287-90 ")
 ;;574
 ;;21,"00247-2335-30 ")
 ;;458
 ;;21,"00247-2335-60 ")
 ;;459
 ;;21,"00247-2335-90 ")
 ;;460
 ;;21,"00378-1419-10 ")
 ;;196
 ;;21,"00378-1419-77 ")
 ;;197
 ;;21,"00591-3745-10 ")
 ;;461
 ;;21,"00591-3745-19 ")
 ;;462
 ;;21,"00591-3746-10 ")
 ;;507
 ;;21,"00591-3746-19 ")
 ;;508
 ;;21,"00591-3746-30 ")
 ;;509
 ;;21,"00591-3747-10 ")
 ;;409
 ;;21,"00591-3747-19 ")
 ;;410
 ;;21,"00591-3747-30 ")
 ;;411
 ;;21,"00597-0039-28 ")
 ;;594
 ;;21,"00597-0039-37 ")
 ;;595
 ;;21,"00597-0040-28 ")
 ;;597
 ;;21,"00597-0040-37 ")
 ;;598
 ;;21,"00597-0041-28 ")
 ;;606
 ;;21,"00597-0041-37 ")
 ;;607
 ;;21,"00597-0042-28 ")
 ;;313
 ;;21,"00597-0042-37 ")
 ;;314
 ;;21,"00597-0043-37 ")
 ;;302
 ;;21,"00597-0044-28 ")
 ;;306
 ;;21,"00597-0044-37 ")
 ;;307
 ;;21,"00597-0124-37 ")
 ;;339
 ;;21,"00597-0125-37 ")
 ;;337
 ;;21,"00597-0126-37 ")
 ;;340
 ;;21,"00597-0127-37 ")
 ;;338
 ;;21,"00781-5204-10 ")
 ;;198
 ;;21,"00781-5204-31 ")
 ;;199
 ;;21,"00781-5204-92 ")
 ;;200
 ;;21,"00781-5206-10 ")
 ;;220
 ;;21,"00781-5206-31 ")
 ;;221
 ;;21,"00781-5206-92 ")
 ;;222
 ;;21,"00781-5207-10 ")
 ;;247
 ;;21,"00781-5207-31 ")
 ;;248
 ;;21,"00781-5207-92 ")
 ;;249
 ;;21,"00781-5700-10 ")
 ;;463
 ;;21,"00781-5700-92 ")
 ;;464
 ;;21,"00781-5701-10 ")
 ;;510
 ;;21,"00781-5701-31 ")
 ;;511
 ;;21,"00781-5701-92 ")
 ;;512
 ;;21,"00781-5702-10 ")
 ;;412
 ;;21,"00781-5702-31 ")
 ;;413
 ;;21,"00781-5702-92 ")
 ;;414
 ;;21,"00781-5805-10 ")
 ;;465
 ;;21,"00781-5805-92 ")
 ;;466
 ;;21,"00781-5806-10 ")
 ;;513
 ;;21,"00781-5806-31 ")
 ;;514
 ;;21,"00781-5806-92 ")
 ;;515
 ;;21,"00781-5807-10 ")
 ;;415
 ;;21,"00781-5807-31 ")
 ;;416
 ;;21,"00781-5807-92 ")
 ;;417
 ;;21,"00781-5816-10 ")
 ;;223
 ;;21,"00781-5816-31 ")
 ;;224
 ;;21,"00781-5816-92 ")
 ;;225
 ;;21,"00781-5817-10 ")
 ;;201
 ;;21,"00781-5817-31 ")
 ;;202
 ;;21,"00781-5817-92 ")
 ;;203
 ;;21,"00781-5818-10 ")
 ;;250
 ;;21,"00781-5818-31 ")
 ;;251
 ;;21,"00781-5818-92 ")
 ;;252
 ;;21,"12280-0005-90 ")
 ;;467
 ;;21,"12280-0008-90 ")
 ;;615
 ;;21,"12280-0009-90 ")
 ;;148
 ;;21,"12280-0063-30 ")
 ;;347
 ;;21,"12280-0063-90 ")
 ;;348
 ;;21,"12280-0066-30 ")
 ;;418
 ;;21,"12280-0067-15 ")
 ;;78
 ;;21,"12280-0067-30 ")
 ;;79
 ;;21,"12280-0067-90 ")
 ;;80
 ;;21,"12280-0168-30 ")
 ;;575
 ;;21,"12280-0168-90 ")
 ;;576
 ;;21,"12280-0369-30 ")
 ;;373
 ;;21,"12280-0369-90 ")
 ;;374
 ;;21,"12280-0370-30 ")
 ;;21
 ;;21,"12280-0370-90 ")
 ;;22
 ;;21,"12280-0371-30 ")
 ;;28
 ;;21,"12280-0371-90 ")
 ;;29
 ;;21,"12280-0375-30 ")
 ;;557
 ;;21,"12280-0375-90 ")
 ;;558
 ;;21,"12280-0378-90 ")
 ;;635
 ;;21,"12280-0380-30 ")
 ;;282
 ;;21,"12280-0380-90 ")
 ;;283
 ;;21,"12280-0382-30 ")
 ;;303
 ;;21,"12280-0383-30 ")
 ;;308
 ;;21,"13411-0106-01 ")
 ;;349
 ;;21,"13411-0106-03 ")
 ;;350
 ;;21,"13411-0106-06 ")
 ;;351
 ;;21,"13411-0106-09 ")
 ;;352
 ;;21,"13411-0106-15 ")
 ;;353
 ;;21,"13411-0107-01 ")
 ;;375
 ;;21,"13411-0107-03 ")
 ;;376
 ;;21,"13411-0107-06 ")
 ;;377
 ;;21,"13411-0107-09 ")
 ;;378
 ;;21,"13411-0107-15 ")
 ;;379
 ;;21,"13411-0142-01 ")
 ;;654
 ;;21,"13411-0142-02 ")
 ;;655
 ;;21,"13411-0142-03 ")
 ;;656
 ;;21,"13411-0142-06 ")
 ;;657
 ;;21,"13411-0142-09 ")
 ;;658
 ;;21,"13411-0143-01 ")
 ;;616
 ;;21,"13411-0143-02 ")
 ;;617
 ;;21,"13411-0143-03 ")
 ;;618
 ;;21,"13411-0143-06 ")
 ;;619
 ;;21,"13411-0143-09 ")
 ;;620
 ;;21,"13411-0144-01 ")
 ;;125
 ;;21,"13411-0144-02 ")
 ;;126
 ;;21,"13411-0144-03 ")
 ;;127
 ;;21,"13411-0144-06 ")
 ;;128
 ;;21,"13411-0144-09 ")
 ;;129
 ;;21,"13411-0145-01 ")
 ;;96
 ;;21,"13411-0145-02 ")
 ;;97
 ;;21,"13411-0145-03 ")
 ;;98
 ;;21,"13411-0145-06 ")
 ;;99
 ;;21,"13411-0145-09 ")
 ;;100
 ;;21,"13411-0156-01 ")
 ;;149
 ;;21,"13411-0156-02 ")
 ;;150
 ;;21,"13411-0156-03 ")
 ;;151
 ;;21,"13411-0156-06 ")
 ;;152
 ;;21,"13411-0156-09 ")
 ;;153
 ;;21,"13668-0113-10 ")
 ;;468
 ;;21,"13668-0113-90 ")
 ;;469
 ;;21,"13668-0114-10 ")
 ;;516
 ;;21,"13668-0114-30 ")
 ;;517
 ;;21,"13668-0114-90 ")
 ;;518
 ;;21,"13668-0115-10 ")
 ;;419
 ;;21,"13668-0115-30 ")
 ;;420
 ;;21,"13668-0115-90 ")
 ;;421
 ;;21,"13668-0116-10 ")
 ;;226
 ;;21,"13668-0116-30 ")
 ;;227
 ;;21,"13668-0116-90 ")
 ;;228
 ;;21,"13668-0117-10 ")
 ;;204
 ;;21,"13668-0117-30 ")
 ;;205
 ;;21,"13668-0117-90 ")
 ;;206
 ;;21,"13668-0118-10 ")
 ;;253
 ;;21,"13668-0118-30 ")
 ;;254
 ;;21,"13668-0118-90 ")
 ;;255
 ;;21,"16590-0063-30 ")
 ;;470
 ;;21,"16714-0224-01 ")
 ;;207
 ;;21,"16714-0224-02 ")
 ;;208
 ;;21,"16714-0225-01 ")
 ;;256
 ;;21,"16714-0225-02 ")
 ;;257
 ;;21,"16714-0225-04 ")
 ;;258
 ;;21,"16714-0226-01 ")
 ;;229
 ;;21,"16714-0226-02 ")
 ;;230
 ;;21,"16714-0226-04 ")
 ;;231
 ;;21,"16714-0581-02 ")
 ;;471
 ;;21,"16714-0581-03 ")
 ;;472
 ;;21,"16714-0582-01 ")
 ;;519
 ;;21,"16714-0582-02 ")
 ;;520
 ;;21,"16714-0582-03 ")
 ;;521
 ;;21,"16714-0583-01 ")
 ;;422
 ;;21,"16714-0583-02 ")
 ;;423
 ;;21,"16714-0583-03 ")
 ;;424
 ;;21,"35356-0060-30 ")
 ;;154
 ;;21,"35356-0101-90 ")
 ;;636
 ;;21,"35356-0131-30 ")
 ;;380
 ;;21,"35356-0216-30 ")
 ;;577
 ;;21,"35356-0216-90 ")
 ;;578
 ;;21,"35356-0256-30 ")
 ;;50
 ;;21,"35356-0257-30 ")
 ;;56
 ;;21,"35356-0258-30 ")
 ;;63
 ;;21,"35356-0258-90 ")
 ;;64
 ;;21,"35356-0287-30 ")
 ;;592
 ;;21,"35356-0293-90 ")
 ;;119
 ;;21,"35356-0294-90 ")
 ;;164
 ;;21,"35356-0295-30 ")
 ;;596
 ;;21,"35356-0296-30 ")
 ;;599
 ;;21,"35356-0297-30 ")
 ;;304
 ;;21,"35356-0298-30 ")
 ;;608
 ;;21,"35356-0299-30 ")
 ;;309
 ;;21,"35356-0300-30 ")
 ;;315
 ;;21,"35356-0428-30 ")
 ;;354
 ;;21,"43353-0459-45 ")
 ;;425
 ;;21,"49999-0305-30 ")
 ;;84
 ;;21,"49999-0543-30 ")
 ;;646
 ;;21,"49999-0815-30 ")
 ;;559
 ;;21,"49999-0815-90 ")
 ;;560
 ;;21,"49999-0877-00 ")
 ;;621
 ;;21,"49999-0877-30 ")
 ;;622
 ;;21,"49999-0877-90 ")
 ;;623
 ;;21,"49999-0878-00 ")
 ;;659
 ;;21,"49999-0878-30 ")
 ;;660
 ;;21,"49999-0878-90 ")
 ;;661
 ;;21,"49999-0879-00 ")
 ;;155
 ;;21,"49999-0879-30 ")
 ;;156
 ;;21,"49999-0880-30 ")
 ;;130
 ;;21,"49999-0880-90 ")
 ;;131
 ;;21,"49999-0940-30 ")
 ;;522
 ;;21,"49999-0940-90 ")
 ;;523
 ;;21,"49999-0943-00 ")
 ;;101
 ;;21,"49999-0943-90 ")
 ;;102
 ;;21,"49999-0988-30 ")
 ;;89
 ;;21,"49999-0991-90 ")
 ;;426
 ;;21,"51079-0750-01 ")
 ;;473
 ;;21,"51079-0750-20 ")
 ;;474
 ;;21,"51079-0751-01 ")
 ;;524
 ;;21,"51079-0751-20 ")
 ;;525
 ;;21,"51079-0752-01 ")
 ;;427
 ;;21,"51079-0752-20 ")
 ;;428
 ;;21,"51079-0757-01 ")
 ;;232
 ;;21,"51079-0757-20 ")
 ;;233
 ;;21,"52959-0756-30 ")
 ;;662
 ;;21,"54569-4437-00 ")
 ;;475
 ;;21,"54569-4438-00 ")
 ;;526
 ;;21,"54569-4572-00 ")
 ;;355
 ;;21,"54569-4698-00 ")
 ;;624
 ;;21,"54569-4714-00 ")
 ;;85
 ;;21,"54569-4719-00 ")
 ;;93
 ;;21,"54569-4719-01 ")
 ;;94
 ;;21,"54569-4722-00 ")
 ;;284
 ;;21,"54569-4722-01 ")
 ;;285
 ;;21,"54569-4766-00 ")
 ;;132
 ;;21,"54569-4767-00 ")
 ;;103
 ;;21,"54569-4895-00 ")
 ;;381
 ;;21,"54569-5361-00 ")
 ;;663
 ;;21,"54569-5362-00 ")
 ;;625
 ;;21,"54569-5606-00 ")
 ;;561
 ;
OTHER ; OTHER ROUTINES
 D ^BGP2TL2
 D ^BGP2TL3
 D ^BGP2TL4
 D ^BGP2TL5
 D ^BGP2TL6
 D ^BGP2TL7
 D ^BGP2TL8
 Q