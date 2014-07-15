BGP2VV2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54569-3292-01 ")
 ;;247
 ;;21,"54569-3292-02 ")
 ;;248
 ;;21,"54569-3292-04 ")
 ;;249
 ;;21,"54569-3292-05 ")
 ;;250
 ;;21,"54569-5082-01 ")
 ;;251
 ;;21,"54569-5772-01 ")
 ;;613
 ;;21,"54868-0616-00 ")
 ;;558
 ;;21,"54868-0676-00 ")
 ;;252
 ;;21,"54868-0676-02 ")
 ;;253
 ;;21,"54868-0676-03 ")
 ;;254
 ;;21,"54868-0676-63 ")
 ;;255
 ;;21,"54868-1071-00 ")
 ;;532
 ;;21,"54868-1071-01 ")
 ;;533
 ;;21,"54868-1071-02 ")
 ;;534
 ;;21,"54868-1071-03 ")
 ;;535
 ;;21,"54868-1233-01 ")
 ;;536
 ;;21,"54868-1233-02 ")
 ;;537
 ;;21,"54868-1233-03 ")
 ;;538
 ;;21,"54868-1465-01 ")
 ;;614
 ;;21,"54868-1466-00 ")
 ;;720
 ;;21,"54868-1466-01 ")
 ;;721
 ;;21,"54868-1466-02 ")
 ;;722
 ;;21,"54868-1466-03 ")
 ;;723
 ;;21,"54868-1467-01 ")
 ;;453
 ;;21,"54868-1467-02 ")
 ;;454
 ;;21,"54868-2530-00 ")
 ;;667
 ;;21,"54868-3230-01 ")
 ;;559
 ;;21,"54868-3610-00 ")
 ;;506
 ;;21,"54868-3646-00 ")
 ;;33
 ;;21,"54868-4751-00 ")
 ;;507
 ;;21,"54868-4751-01 ")
 ;;508
 ;;21,"54868-4788-00 ")
 ;;615
 ;;21,"54868-4788-01 ")
 ;;616
 ;;21,"54868-5147-00 ")
 ;;61
 ;;21,"54868-5151-00 ")
 ;;570
 ;;21,"54868-5151-01 ")
 ;;571
 ;;21,"54868-5151-02 ")
 ;;572
 ;;21,"54868-5151-03 ")
 ;;573
 ;;21,"54868-5151-04 ")
 ;;574
 ;;21,"54868-5517-00 ")
 ;;62
 ;;21,"54868-5744-00 ")
 ;;763
 ;;21,"54868-5808-00 ")
 ;;560
 ;;21,"55045-1127-00 ")
 ;;256
 ;;21,"55045-1127-02 ")
 ;;257
 ;;21,"55045-1127-03 ")
 ;;258
 ;;21,"55045-1127-08 ")
 ;;259
 ;;21,"55045-1127-09 ")
 ;;260
 ;;21,"55045-1599-00 ")
 ;;724
 ;;21,"55045-1599-01 ")
 ;;725
 ;;21,"55045-1599-03 ")
 ;;726
 ;;21,"55045-1599-04 ")
 ;;727
 ;;21,"55045-1599-05 ")
 ;;728
 ;;21,"55045-1599-06 ")
 ;;729
 ;;21,"55045-1599-07 ")
 ;;730
 ;;21,"55045-1599-08 ")
 ;;731
 ;;21,"55045-1599-09 ")
 ;;732
 ;;21,"55045-2038-03 ")
 ;;617
 ;;21,"55045-2999-00 ")
 ;;261
 ;;21,"55045-2999-02 ")
 ;;262
 ;;21,"55045-2999-03 ")
 ;;263
 ;;21,"55045-2999-04 ")
 ;;264
 ;;21,"55045-2999-05 ")
 ;;265
 ;;21,"55045-2999-07 ")
 ;;266
 ;;21,"55045-2999-08 ")
 ;;267
 ;;21,"55045-2999-09 ")
 ;;268
 ;;21,"55045-3037-08 ")
 ;;7
 ;;21,"55045-3095-00 ")
 ;;269
 ;;21,"55045-3095-01 ")
 ;;270
 ;;21,"55045-3095-09 ")
 ;;271
 ;;21,"55045-3099-00 ")
 ;;618
 ;;21,"55045-3099-01 ")
 ;;619
 ;;21,"55045-3099-03 ")
 ;;620
 ;;21,"55045-3099-04 ")
 ;;621
 ;;21,"55045-3099-05 ")
 ;;622
 ;;21,"55045-3099-07 ")
 ;;623
 ;;21,"55045-3099-08 ")
 ;;624
 ;;21,"55045-3099-09 ")
 ;;625
 ;;21,"55045-3335-00 ")
 ;;63
 ;;21,"55045-3335-01 ")
 ;;64
 ;;21,"55045-3377-00 ")
 ;;272
 ;;21,"55045-3377-01 ")
 ;;273
 ;;21,"55045-3377-03 ")
 ;;274
 ;;21,"55045-3377-04 ")
 ;;275
 ;;21,"55045-3377-05 ")
 ;;276
 ;;21,"55045-3377-09 ")
 ;;277
 ;;21,"55045-3419-00 ")
 ;;55
 ;;21,"55289-0184-20 ")
 ;;626
 ;;21,"55289-0231-04 ")
 ;;278
 ;;21,"55289-0231-08 ")
 ;;279
 ;;21,"55289-0231-12 ")
 ;;280
 ;;21,"55289-0231-16 ")
 ;;281
 ;;21,"55289-0231-40 ")
 ;;282
 ;;21,"55289-0321-30 ")
 ;;34
 ;;21,"55289-0324-12 ")
 ;;733
 ;;21,"55289-0324-16 ")
 ;;734
 ;;21,"55289-0324-60 ")
 ;;735
 ;;21,"55289-0852-10 ")
 ;;283
 ;;21,"55289-0852-12 ")
 ;;284
 ;;21,"55289-0852-20 ")
 ;;285
 ;;21,"55289-0889-15 ")
 ;;8
 ;;21,"55887-0051-30 ")
 ;;539
 ;;21,"55887-0064-04 ")
 ;;575
 ;;21,"55887-0171-01 ")
 ;;627
 ;;21,"55887-0171-30 ")
 ;;628
 ;;21,"55887-0171-60 ")
 ;;629
 ;;21,"55887-0171-83 ")
 ;;630
 ;;21,"55887-0171-84 ")
 ;;631
 ;;21,"55887-0171-86 ")
 ;;632
 ;;21,"55887-0171-90 ")
 ;;633
 ;;21,"55887-0446-01 ")
 ;;736
 ;;21,"55887-0446-30 ")
 ;;737
 ;;21,"55887-0446-40 ")
 ;;738
 ;;21,"55887-0943-01 ")
 ;;286
 ;;21,"55887-0943-10 ")
 ;;287
 ;;21,"55887-0943-12 ")
 ;;288
 ;;21,"55887-0943-14 ")
 ;;289
 ;;21,"55887-0943-15 ")
 ;;290
 ;;21,"55887-0943-20 ")
 ;;291
 ;;21,"55887-0943-24 ")
 ;;292
 ;;21,"55887-0943-25 ")
 ;;293
 ;;21,"55887-0943-30 ")
 ;;294
 ;;21,"55887-0943-40 ")
 ;;295
 ;;21,"55887-0943-50 ")
 ;;296
 ;;21,"55887-0943-60 ")
 ;;297
 ;;21,"55887-0943-82 ")
 ;;298
 ;;21,"55887-0943-90 ")
 ;;299
 ;;21,"57664-0467-08 ")
 ;;540
 ;;21,"57664-0471-08 ")
 ;;495
 ;;21,"57866-4360-01 ")
 ;;455
 ;;21,"57866-4360-02 ")
 ;;456
 ;;21,"57866-4360-03 ")
 ;;457
 ;;21,"57866-4360-04 ")
 ;;458
 ;;21,"57866-4361-01 ")
 ;;300
 ;;21,"57866-4361-02 ")
 ;;301
 ;;21,"57866-4361-03 ")
 ;;302
 ;;21,"57866-4361-04 ")
 ;;303
 ;;21,"57866-4361-05 ")
 ;;304
 ;;21,"57866-4361-06 ")
 ;;305
 ;;21,"57866-4361-09 ")
 ;;306
 ;;21,"58016-0056-00 ")
 ;;307
 ;;21,"58016-0056-30 ")
 ;;308
 ;;21,"58016-0056-60 ")
 ;;309
 ;;21,"58016-0056-90 ")
 ;;310
 ;;21,"58016-0150-00 ")
 ;;65
 ;;21,"58016-0150-30 ")
 ;;66
 ;;21,"58016-0150-60 ")
 ;;67
 ;;21,"58016-0150-90 ")
 ;;68
 ;;21,"58016-0212-00 ")
 ;;311
 ;;21,"58016-0212-02 ")
 ;;312
 ;;21,"58016-0212-03 ")
 ;;313
 ;;21,"58016-0212-08 ")
 ;;314
 ;;21,"58016-0212-10 ")
 ;;315
 ;;21,"58016-0212-12 ")
 ;;316
 ;;21,"58016-0212-14 ")
 ;;317
 ;;21,"58016-0212-15 ")
 ;;318
 ;;21,"58016-0212-16 ")
 ;;319
 ;;21,"58016-0212-18 ")
 ;;320
 ;;21,"58016-0212-20 ")
 ;;321
 ;;21,"58016-0212-21 ")
 ;;322
 ;;21,"58016-0212-24 ")
 ;;323
 ;;21,"58016-0212-28 ")
 ;;324
 ;;21,"58016-0212-30 ")
 ;;325
 ;;21,"58016-0212-36 ")
 ;;326
 ;;21,"58016-0212-40 ")
 ;;327
 ;;21,"58016-0212-42 ")
 ;;328
 ;;21,"58016-0212-45 ")
 ;;329
 ;;21,"58016-0212-50 ")
 ;;330
 ;;21,"58016-0212-56 ")
 ;;331
 ;;21,"58016-0212-60 ")
 ;;332
 ;;21,"58016-0212-73 ")
 ;;333
 ;;21,"58016-0212-80 ")
 ;;334
 ;;21,"58016-0212-84 ")
 ;;335
 ;;21,"58016-0212-89 ")
 ;;336
 ;;21,"58016-0212-90 ")
 ;;337
 ;;21,"58016-0212-92 ")
 ;;338
 ;;21,"58016-0212-99 ")
 ;;339
 ;;21,"58016-0214-00 ")
 ;;739
 ;;21,"58016-0214-02 ")
 ;;740
 ;;21,"58016-0214-30 ")
 ;;741
 ;;21,"58016-0214-60 ")
 ;;742
 ;;21,"58016-0214-90 ")
 ;;743
 ;;21,"58016-0215-00 ")
 ;;459
 ;;21,"58016-0215-02 ")
 ;;460
 ;;21,"58016-0215-12 ")
 ;;461
 ;;21,"58016-0215-15 ")
 ;;462
 ;;21,"58016-0215-20 ")
 ;;463
 ;;21,"58016-0215-28 ")
 ;;464
 ;;21,"58016-0215-30 ")
 ;;465
 ;;21,"58016-0215-56 ")
 ;;466
 ;;21,"58016-0215-60 ")
 ;;467
 ;;21,"58016-0279-00 ")
 ;;35
 ;;21,"58016-0279-02 ")
 ;;36
 ;;21,"58016-0279-10 ")
 ;;37
 ;;21,"58016-0279-12 ")
 ;;38
 ;;21,"58016-0279-15 ")
 ;;39
 ;;21,"58016-0279-20 ")
 ;;40
 ;;21,"58016-0279-25 ")
 ;;41
 ;;21,"58016-0279-30 ")
 ;;42
 ;;21,"58016-0279-40 ")
 ;;43
 ;;21,"58016-0279-50 ")
 ;;44
 ;;21,"58016-0279-60 ")
 ;;45
 ;;21,"58016-0279-70 ")
 ;;46
 ;;21,"58016-0279-80 ")
 ;;47
 ;;21,"58016-0279-90 ")
 ;;48
 ;;21,"58016-0392-00 ")
 ;;634
 ;;21,"58016-0392-10 ")
 ;;635
 ;;21,"58016-0392-12 ")
 ;;636
 ;;21,"58016-0392-20 ")
 ;;637
 ;;21,"58016-0392-30 ")
 ;;638
 ;;21,"58016-0392-40 ")
 ;;639
 ;;21,"58016-0392-60 ")
 ;;640
 ;;21,"58016-0461-00 ")
 ;;9
 ;;21,"58016-0461-20 ")
 ;;10
 ;;21,"58016-0461-30 ")
 ;;11
 ;;21,"58016-0461-60 ")
 ;;12
 ;;21,"58016-0461-90 ")
 ;;13
 ;;21,"58177-0027-04 ")
 ;;576
 ;;21,"58864-0428-20 ")
 ;;340
 ;;21,"60429-0534-01 ")
 ;;541
 ;;21,"60429-0535-01 ")
 ;;496
 ;;21,"60429-0570-01 ")
 ;;641
 ;;21,"60760-0890-15 ")
 ;;341
 ;;21,"60760-0890-30 ")
 ;;342
 ;;21,"60760-0890-60 ")
 ;;343
 ;;21,"61392-0446-10 ")
 ;;344
 ;;21,"61392-0446-15 ")
 ;;345
 ;;21,"61392-0446-45 ")
 ;;346
 ;;21,"61392-0446-56 ")
 ;;347
 ;;21,"61451-5015-07 ")
 ;;471
 ;;21,"61451-5016-07 ")
 ;;473
 ;;21,"61553-0170-41 ")
 ;;477
 ;;21,"61553-0172-48 ")
 ;;478
 ;;21,"61553-0173-48 ")
 ;;479
 ;;21,"61553-0611-75 ")
 ;;480
 ;;21,"61553-0676-44 ")
 ;;481
 ;;21,"61553-0841-48 ")
 ;;482
 ;;21,"63629-1344-01 ")
 ;;348
 ;;21,"63629-1344-02 ")
 ;;349
 ;;21,"63629-1344-03 ")
 ;;350
 ;;21,"63629-1344-04 ")
 ;;351
 ;;21,"63629-1344-05 ")
 ;;352
 ;;21,"63629-1344-06 ")
 ;;353
 ;;21,"63629-1344-07 ")
 ;;354
 ;;21,"63629-1344-08 ")
 ;;355
 ;;21,"63629-1344-09 ")
 ;;356
 ;;21,"63629-1359-01 ")
 ;;744
 ;;21,"63629-1359-02 ")
 ;;745
 ;;21,"63629-1359-03 ")
 ;;746
 ;;21,"63629-3206-01 ")
 ;;642
 ;;21,"63739-0215-01 ")
 ;;357
 ;;21,"63739-0215-03 ")
 ;;358
 ;;21,"63739-0215-10 ")
 ;;359
 ;;21,"63739-0215-15 ")
 ;;360
 ;;21,"63874-0201-01 ")
 ;;361
 ;;21,"63874-0201-03 ")
 ;;362
 ;;21,"63874-0201-04 ")
 ;;363
 ;;21,"63874-0201-05 ")
 ;;364
 ;;21,"63874-0201-08 ")
 ;;365
 ;;21,"63874-0201-10 ")
 ;;366
 ;;21,"63874-0201-12 ")
 ;;367
 ;;21,"63874-0201-14 ")
 ;;368
 ;;21,"63874-0201-15 ")
 ;;369
 ;;21,"63874-0201-16 ")
 ;;370
 ;;21,"63874-0201-18 ")
 ;;371
 ;;21,"63874-0201-20 ")
 ;;372
 ;;21,"63874-0201-21 ")
 ;;373
 ;;21,"63874-0201-24 ")
 ;;374
 ;;21,"63874-0201-25 ")
 ;;375
 ;;21,"63874-0201-28 ")
 ;;376
 ;;21,"63874-0201-30 ")
 ;;377
 ;;21,"63874-0201-35 ")
 ;;378
 ;;21,"63874-0201-36 ")
 ;;379
 ;;21,"63874-0201-40 ")
 ;;380
 ;;21,"63874-0201-42 ")
 ;;381
 ;;21,"63874-0201-45 ")
 ;;382
 ;;21,"63874-0201-48 ")
 ;;383
 ;;21,"63874-0201-50 ")
 ;;384
 ;;21,"63874-0201-56 ")
 ;;385
 ;;21,"63874-0201-60 ")
 ;;386
 ;;21,"63874-0201-71 ")
 ;;387
 ;;21,"63874-0201-72 ")
 ;;388
 ;;21,"63874-0201-74 ")
 ;;389
 ;;21,"63874-0201-77 ")
 ;;390
 ;;21,"63874-0201-80 ")
 ;;391
 ;;21,"63874-0201-84 ")
 ;;392
 ;;21,"63874-0201-90 ")
 ;;393
 ;;21,"63874-0212-20 ")
 ;;394
 ;;21,"63874-0212-30 ")
 ;;395
 ;;21,"63874-0215-12 ")
 ;;747
 ;;21,"63874-0215-30 ")
 ;;748
 ;;21,"63874-0215-50 ")
 ;;749
 ;;21,"63874-0215-60 ")
 ;;750
 ;;21,"63874-0220-01 ")
 ;;643
 ;;21,"63874-0220-03 ")
 ;;644
 ;;21,"63874-0220-04 ")
 ;;645
 ;;21,"63874-0220-10 ")
 ;;646
 ;;21,"63874-0220-12 ")
 ;;647
 ;;21,"63874-0220-15 ")
 ;;648
 ;;21,"63874-0220-20 ")
 ;;649
 ;;21,"63874-0220-30 ")
 ;;650
 ;;21,"63874-0220-35 ")
 ;;651
 ;;21,"63874-0220-40 ")
 ;;652
 ;;21,"63874-0220-60 ")
 ;;653
 ;;21,"63874-0220-90 ")
 ;;654
 ;;21,"66267-0178-06 ")
 ;;396
 ;;21,"66267-0178-12 ")
 ;;397
 ;;21,"66267-0178-15 ")
 ;;398
 ;;21,"66267-0178-20 ")
 ;;399
 ;;21,"66267-0178-30 ")
 ;;400
 ;;21,"66267-0178-40 ")
 ;;401
 ;;21,"66267-0178-50 ")
 ;;402
 ;;21,"66267-0178-60 ")
 ;;403
 ;;21,"66267-0178-90 ")
 ;;404
 ;;21,"66267-0178-91 ")
 ;;405
 ;;21,"66267-0179-12 ")
 ;;751
 ;;21,"66267-0179-20 ")
 ;;752
 ;;21,"66267-0179-30 ")
 ;;753
 ;;21,"66267-0487-30 ")
 ;;655
 ;;21,"66267-0487-40 ")
 ;;656
 ;;21,"66336-0416-30 ")
 ;;577
 ;;21,"66336-0610-20 ")
 ;;406
 ;;21,"66336-0610-30 ")
 ;;407
 ;;21,"66336-0628-10 ")
 ;;408
 ;;21,"66336-0628-12 ")
 ;;409
 ;;21,"66336-0628-15 ")
 ;;410
 ;;21,"66336-0628-16 ")
 ;;411
 ;;21,"66336-0628-20 ")
 ;;412
 ;;21,"66336-0628-30 ")
 ;;413
 ;;21,"66336-0628-60 ")
 ;;414
 ;;21,"66479-0510-10 ")
 ;;754
 ;;21,"66479-0512-10 ")
 ;;764
 ;;21,"66479-0513-10 ")
 ;;69
 ;;21,"66479-0514-10 ")
 ;;58
 ;;21,"66479-0515-10 ")
 ;;415
 ;;21,"66479-0515-50 ")
 ;;416
 ;;21,"66591-0612-41 ")
 ;;468
 ;;21,"66591-0631-41 ")
 ;;765
 ;;21,"66591-0641-41 ")
 ;;417
 ;;21,"66591-0641-51 ")
 ;;418
 ;;21,"67544-0033-30 ")
 ;;419
 ;;21,"67544-0131-30 ")
 ;;755
 ;;21,"67544-0138-30 ")
 ;;420
 ;;21,"67544-0151-30 ")
 ;;421
 ;;21,"67544-0396-30 ")
 ;;756
 ;;21,"67544-0497-30 ")
 ;;422
 ;;21,"68071-0760-30 ")
 ;;542
 ;;21,"68084-0393-01 ")
 ;;423
 ;;21,"68115-0305-00 ")
 ;;424
 ;;21,"68115-0305-20 ")
 ;;425
 ;;21,"68115-0305-25 ")
 ;;426
 ;;21,"68115-0305-30 ")
 ;;427
 ;;21,"68115-0305-40 ")
 ;;428
 ;;21,"68115-0305-60 ")
 ;;429
 ;;21,"68115-0305-90 ")
 ;;430
 ;;21,"68115-0305-99 ")
 ;;431
 ;;21,"68115-0306-12 ")
 ;;757
 ;;21,"68115-0306-30 ")
 ;;758
 ;;21,"68115-0306-60 ")
 ;;759
 ;;21,"68115-0462-30 ")
 ;;657
 ;;21,"68115-0462-60 ")
 ;;658
 ;;21,"68115-0605-00 ")
 ;;659
 ;;21,"68115-0743-00 ")
 ;;469
 ;;21,"68115-0815-00 ")
 ;;49
 ;;21,"68387-0100-01 ")
 ;;432
 ;;21,"68387-0100-12 ")
 ;;433
 ;;21,"68387-0100-15 ")
 ;;434
 ;;21,"68387-0100-30 ")
 ;;435
 ;;21,"68387-0100-40 ")
 ;;436
 ;;21,"68387-0100-50 ")
 ;;437
 ;;21,"68387-0100-60 ")
 ;;438
 ;;21,"68387-0100-90 ")
 ;;439
 ;;21,"68387-0531-12 ")
 ;;660
 ;;21,"68387-0531-60 ")
 ;;661
 ;;9002226,736,.01)
 ;;BGP HEDIS NARCOTIC NDC
 ;;9002226,736,.02)
 ;;@
 ;;9002226,736,.04)
 ;;n
 ;;9002226,736,.06)
 ;;@
 ;;9002226,736,.08)
 ;;@
 ;;9002226,736,.09)
 ;;3120312
 ;;9002226,736,.11)
 ;;@
 ;;9002226,736,.12)
 ;;@
 ;;9002226,736,.13)
 ;;1
 ;;9002226,736,.14)
 ;;@
 ;;9002226,736,.15)
 ;;@
 ;;9002226,736,.16)
 ;;@
 ;;9002226,736,.17)
 ;;@
 ;;9002226,736,3101)
 ;;@
 ;;9002226.02101,"736,00002-0353-02 ",.01)
 ;;00002-0353-02
 ;;9002226.02101,"736,00002-0353-02 ",.02)
 ;;00002-0353-02
 ;;9002226.02101,"736,00002-0353-03 ",.01)
 ;;00002-0353-03
 ;;9002226.02101,"736,00002-0353-03 ",.02)
 ;;00002-0353-03
 ;;9002226.02101,"736,00002-0353-33 ",.01)
 ;;00002-0353-33
 ;;9002226.02101,"736,00002-0353-33 ",.02)
 ;;00002-0353-33
 ;;9002226.02101,"736,00002-0803-02 ",.01)
 ;;00002-0803-02