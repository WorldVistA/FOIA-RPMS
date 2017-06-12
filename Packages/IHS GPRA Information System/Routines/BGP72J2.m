BGP72J2 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63739-0125-10 ")
 ;;340
 ;;21,"63739-0231-10 ")
 ;;341
 ;;21,"63874-0213-01 ")
 ;;342
 ;;21,"63874-0213-05 ")
 ;;343
 ;;21,"63874-0213-12 ")
 ;;344
 ;;21,"63874-0213-15 ")
 ;;345
 ;;21,"63874-0213-20 ")
 ;;346
 ;;21,"63874-0213-30 ")
 ;;347
 ;;21,"63874-0213-40 ")
 ;;348
 ;;21,"63874-0213-60 ")
 ;;349
 ;;21,"63874-0214-01 ")
 ;;350
 ;;21,"63874-0214-06 ")
 ;;351
 ;;21,"63874-0214-09 ")
 ;;352
 ;;21,"63874-0214-10 ")
 ;;353
 ;;21,"63874-0214-12 ")
 ;;354
 ;;21,"63874-0214-14 ")
 ;;355
 ;;21,"63874-0214-15 ")
 ;;356
 ;;21,"63874-0214-20 ")
 ;;357
 ;;21,"63874-0214-21 ")
 ;;358
 ;;21,"63874-0214-24 ")
 ;;359
 ;;21,"63874-0214-30 ")
 ;;360
 ;;21,"63874-0214-60 ")
 ;;361
 ;;21,"63874-0281-01 ")
 ;;362
 ;;21,"63874-0281-04 ")
 ;;363
 ;;21,"63874-0281-05 ")
 ;;364
 ;;21,"63874-0281-10 ")
 ;;365
 ;;21,"63874-0281-15 ")
 ;;366
 ;;21,"63874-0281-20 ")
 ;;367
 ;;21,"63874-0281-30 ")
 ;;368
 ;;21,"63874-0281-50 ")
 ;;369
 ;;21,"63874-0281-60 ")
 ;;370
 ;;21,"63874-0281-72 ")
 ;;371
 ;;21,"63874-0281-74 ")
 ;;372
 ;;21,"63874-0281-77 ")
 ;;373
 ;;21,"63874-0281-90 ")
 ;;374
 ;;21,"63874-0292-01 ")
 ;;375
 ;;21,"63874-0292-04 ")
 ;;376
 ;;21,"63874-0292-10 ")
 ;;377
 ;;21,"63874-0292-12 ")
 ;;378
 ;;21,"63874-0292-15 ")
 ;;379
 ;;21,"63874-0292-20 ")
 ;;380
 ;;21,"63874-0292-30 ")
 ;;381
 ;;21,"63874-0292-60 ")
 ;;382
 ;;21,"63874-0292-74 ")
 ;;383
 ;;21,"63874-0292-90 ")
 ;;384
 ;;21,"63874-0713-01 ")
 ;;385
 ;;21,"63874-0713-04 ")
 ;;386
 ;;21,"63874-0713-12 ")
 ;;387
 ;;21,"63874-0713-15 ")
 ;;388
 ;;21,"63874-0713-20 ")
 ;;389
 ;;21,"63874-0713-30 ")
 ;;390
 ;;21,"63874-0713-40 ")
 ;;391
 ;;21,"63874-0713-60 ")
 ;;392
 ;;21,"63874-0713-74 ")
 ;;393
 ;;21,"63874-0713-90 ")
 ;;394
 ;;21,"63874-0808-12 ")
 ;;395
 ;;21,"63874-0808-15 ")
 ;;396
 ;;21,"63874-0808-20 ")
 ;;397
 ;;21,"63874-0808-30 ")
 ;;398
 ;;21,"66116-0467-30 ")
 ;;399
 ;;21,"66267-0321-10 ")
 ;;400
 ;;21,"66267-0321-28 ")
 ;;401
 ;;21,"66267-0321-30 ")
 ;;402
 ;;21,"66267-0321-60 ")
 ;;403
 ;;21,"66267-0331-15 ")
 ;;404
 ;;21,"66267-0331-30 ")
 ;;405
 ;;21,"66267-0331-45 ")
 ;;406
 ;;21,"66267-0331-60 ")
 ;;407
 ;;21,"66267-0415-30 ")
 ;;408
 ;;21,"66267-0415-60 ")
 ;;409
 ;;21,"66267-0492-30 ")
 ;;410
 ;;21,"67544-0022-30 ")
 ;;411
 ;;21,"67544-0038-10 ")
 ;;412
 ;;21,"67544-0038-14 ")
 ;;413
 ;;21,"67544-0038-15 ")
 ;;414
 ;;21,"67544-0038-20 ")
 ;;415
 ;;21,"67544-0038-28 ")
 ;;416
 ;;21,"67544-0038-30 ")
 ;;417
 ;;21,"67544-0038-45 ")
 ;;418
 ;;21,"67544-0038-53 ")
 ;;419
 ;;21,"67544-0038-60 ")
 ;;420
 ;;21,"67544-0039-15 ")
 ;;421
 ;;21,"67544-0039-20 ")
 ;;422
 ;;21,"67544-0039-30 ")
 ;;423
 ;;21,"67544-0039-53 ")
 ;;424
 ;;21,"67544-0039-60 ")
 ;;425
 ;;21,"67544-0045-30 ")
 ;;426
 ;;21,"67544-0045-53 ")
 ;;427
 ;;21,"67544-0045-60 ")
 ;;428
 ;;21,"67544-0127-15 ")
 ;;429
 ;;21,"67544-0127-20 ")
 ;;430
 ;;21,"67544-0127-30 ")
 ;;431
 ;;21,"67544-0127-53 ")
 ;;432
 ;;21,"67544-0127-60 ")
 ;;433
 ;;21,"67544-0136-10 ")
 ;;434
 ;;21,"67544-0136-14 ")
 ;;435
 ;;21,"67544-0136-15 ")
 ;;436
 ;;21,"67544-0136-20 ")
 ;;437
 ;;21,"67544-0136-28 ")
 ;;438
 ;;21,"67544-0136-30 ")
 ;;439
 ;;21,"67544-0136-45 ")
 ;;440
 ;;21,"67544-0136-53 ")
 ;;441
 ;;21,"67544-0136-60 ")
 ;;442
 ;;21,"67544-0217-10 ")
 ;;443
 ;;21,"67544-0217-14 ")
 ;;444
 ;;21,"67544-0217-15 ")
 ;;445
 ;;21,"67544-0217-20 ")
 ;;446
 ;;21,"67544-0217-30 ")
 ;;447
 ;;21,"67544-0217-45 ")
 ;;448
 ;;21,"67544-0217-53 ")
 ;;449
 ;;21,"67544-0217-60 ")
 ;;450
 ;;21,"67544-0287-10 ")
 ;;451
 ;;21,"67544-0287-15 ")
 ;;452
 ;;21,"67544-0287-20 ")
 ;;453
 ;;21,"67544-0287-28 ")
 ;;454
 ;;21,"67544-0287-30 ")
 ;;455
 ;;21,"67544-0287-53 ")
 ;;456
 ;;21,"67544-0287-59 ")
 ;;457
 ;;21,"67544-0287-60 ")
 ;;458
 ;;21,"67544-0373-10 ")
 ;;459
 ;;21,"67544-0373-15 ")
 ;;460
 ;;21,"67544-0373-20 ")
 ;;461
 ;;21,"67544-0373-28 ")
 ;;462
 ;;21,"67544-0373-30 ")
 ;;463
 ;;21,"67544-0373-53 ")
 ;;464
 ;;21,"67544-0373-59 ")
 ;;465
 ;;21,"67544-0373-60 ")
 ;;466
 ;;21,"67544-0725-30 ")
 ;;467
 ;;21,"67544-0725-53 ")
 ;;468
 ;;21,"67544-0752-30 ")
 ;;469
 ;;21,"67544-0785-30 ")
 ;;470
 ;;21,"67877-0146-01 ")
 ;;471
 ;;21,"67877-0146-05 ")
 ;;472
 ;;21,"67877-0147-01 ")
 ;;473
 ;;21,"67877-0147-05 ")
 ;;474
 ;;21,"67877-0148-01 ")
 ;;475
 ;;21,"67877-0149-30 ")
 ;;476
 ;;21,"68071-0220-20 ")
 ;;477
 ;;21,"68071-0220-30 ")
 ;;478
 ;;21,"68084-0549-11 ")
 ;;479
 ;;21,"68084-0549-21 ")
 ;;480
 ;;21,"68788-9864-03 ")
 ;;481
 ;;21,"68788-9865-06 ")
 ;;482
 ;;21,"69874-0322-10 ")
 ;;483
 ;;21,"76218-0405-01 ")
 ;;484
 ;;9002226,1921,.01)
 ;;BGP PQA BENZODIAZ NDC
 ;;9002226,1921,.02)
 ;;@
 ;;9002226,1921,.04)
 ;;n
 ;;9002226,1921,.06)
 ;;@
 ;;9002226,1921,.08)
 ;;@
 ;;9002226,1921,.09)
 ;;3160811
 ;;9002226,1921,.11)
 ;;@
 ;;9002226,1921,.12)
 ;;@
 ;;9002226,1921,.13)
 ;;1
 ;;9002226,1921,.14)
 ;;@
 ;;9002226,1921,.15)
 ;;50.67
 ;;9002226,1921,.16)
 ;;@
 ;;9002226,1921,.17)
 ;;@
 ;;9002226,1921,.22)
 ;;1
 ;;9002226,1921,3101)
 ;;@
 ;;9002226.02101,"1921,00009-0017-55 ",.01)
 ;;00009-0017-55
 ;;9002226.02101,"1921,00009-0017-55 ",.02)
 ;;00009-0017-55
 ;;9002226.02101,"1921,00009-0017-58 ",.01)
 ;;00009-0017-58
 ;;9002226.02101,"1921,00009-0017-58 ",.02)
 ;;00009-0017-58
 ;;9002226.02101,"1921,00009-0017-59 ",.01)
 ;;00009-0017-59
 ;;9002226.02101,"1921,00009-0017-59 ",.02)
 ;;00009-0017-59
 ;;9002226.02101,"1921,00054-4858-51 ",.01)
 ;;00054-4858-51
 ;;9002226.02101,"1921,00054-4858-51 ",.02)
 ;;00054-4858-51
 ;;9002226.02101,"1921,00054-4859-29 ",.01)
 ;;00054-4859-29
 ;;9002226.02101,"1921,00054-4859-29 ",.02)
 ;;00054-4859-29
 ;;9002226.02101,"1921,00054-4859-51 ",.01)
 ;;00054-4859-51
 ;;9002226.02101,"1921,00054-4859-51 ",.02)
 ;;00054-4859-51
 ;;9002226.02101,"1921,00054-8858-25 ",.01)
 ;;00054-8858-25
 ;;9002226.02101,"1921,00054-8858-25 ",.02)
 ;;00054-8858-25
 ;;9002226.02101,"1921,00054-8859-25 ",.01)
 ;;00054-8859-25
 ;;9002226.02101,"1921,00054-8859-25 ",.02)
 ;;00054-8859-25
 ;;9002226.02101,"1921,00093-0129-01 ",.01)
 ;;00093-0129-01
 ;;9002226.02101,"1921,00093-0129-01 ",.02)
 ;;00093-0129-01
 ;;9002226.02101,"1921,00093-0130-01 ",.01)
 ;;00093-0130-01
 ;;9002226.02101,"1921,00093-0130-01 ",.02)
 ;;00093-0130-01
 ;;9002226.02101,"1921,00143-3367-01 ",.01)
 ;;00143-3367-01
 ;;9002226.02101,"1921,00143-3367-01 ",.02)
 ;;00143-3367-01
 ;;9002226.02101,"1921,00143-3367-05 ",.01)
 ;;00143-3367-05
 ;;9002226.02101,"1921,00143-3367-05 ",.02)
 ;;00143-3367-05
 ;;9002226.02101,"1921,00143-3370-01 ",.01)
 ;;00143-3370-01
 ;;9002226.02101,"1921,00143-3370-01 ",.02)
 ;;00143-3370-01
 ;;9002226.02101,"1921,00143-3370-05 ",.01)
 ;;00143-3370-05
 ;;9002226.02101,"1921,00143-3370-05 ",.02)
 ;;00143-3370-05
 ;;9002226.02101,"1921,00228-2076-10 ",.01)
 ;;00228-2076-10
 ;;9002226.02101,"1921,00228-2076-10 ",.02)
 ;;00228-2076-10
 ;;9002226.02101,"1921,00228-2076-50 ",.01)
 ;;00228-2076-50
 ;;9002226.02101,"1921,00228-2076-50 ",.02)
 ;;00228-2076-50
 ;;9002226.02101,"1921,00228-2077-10 ",.01)
 ;;00228-2077-10
 ;;9002226.02101,"1921,00228-2077-10 ",.02)
 ;;00228-2077-10
 ;;9002226.02101,"1921,00228-2077-50 ",.01)
 ;;00228-2077-50
 ;;9002226.02101,"1921,00228-2077-50 ",.02)
 ;;00228-2077-50
 ;;9002226.02101,"1921,00378-3110-01 ",.01)
 ;;00378-3110-01
 ;;9002226.02101,"1921,00378-3110-01 ",.02)
 ;;00378-3110-01
 ;;9002226.02101,"1921,00378-3120-93 ",.01)
 ;;00378-3120-93
 ;;9002226.02101,"1921,00378-3120-93 ",.02)
 ;;00378-3120-93
 ;;9002226.02101,"1921,00378-4010-01 ",.01)
 ;;00378-4010-01
 ;;9002226.02101,"1921,00378-4010-01 ",.02)
 ;;00378-4010-01
 ;;9002226.02101,"1921,00378-4010-05 ",.01)
 ;;00378-4010-05
 ;;9002226.02101,"1921,00378-4010-05 ",.02)
 ;;00378-4010-05
 ;;9002226.02101,"1921,00378-4010-77 ",.01)
 ;;00378-4010-77
 ;;9002226.02101,"1921,00378-4010-77 ",.02)
 ;;00378-4010-77
 ;;9002226.02101,"1921,00378-4415-01 ",.01)
 ;;00378-4415-01
 ;;9002226.02101,"1921,00378-4415-01 ",.02)
 ;;00378-4415-01
 ;;9002226.02101,"1921,00378-4430-01 ",.01)
 ;;00378-4430-01
 ;;9002226.02101,"1921,00378-4430-01 ",.02)
 ;;00378-4430-01
 ;;9002226.02101,"1921,00378-5050-01 ",.01)
 ;;00378-5050-01
 ;;9002226.02101,"1921,00378-5050-01 ",.02)
 ;;00378-5050-01
 ;;9002226.02101,"1921,00378-5050-05 ",.01)
 ;;00378-5050-05
 ;;9002226.02101,"1921,00378-5050-05 ",.02)
 ;;00378-5050-05
 ;;9002226.02101,"1921,00378-5050-77 ",.01)
 ;;00378-5050-77
 ;;9002226.02101,"1921,00378-5050-77 ",.02)
 ;;00378-5050-77
 ;;9002226.02101,"1921,00406-9914-03 ",.01)
 ;;00406-9914-03
 ;;9002226.02101,"1921,00406-9914-03 ",.02)
 ;;00406-9914-03
 ;;9002226.02101,"1921,00406-9915-01 ",.01)
 ;;00406-9915-01
 ;;9002226.02101,"1921,00406-9915-01 ",.02)
 ;;00406-9915-01
 ;;9002226.02101,"1921,00406-9915-03 ",.01)
 ;;00406-9915-03
 ;;9002226.02101,"1921,00406-9915-03 ",.02)
 ;;00406-9915-03
 ;;9002226.02101,"1921,00406-9916-01 ",.01)
 ;;00406-9916-01
 ;;9002226.02101,"1921,00406-9916-01 ",.02)
 ;;00406-9916-01
 ;;9002226.02101,"1921,00406-9917-01 ",.01)
 ;;00406-9917-01
 ;;9002226.02101,"1921,00406-9917-01 ",.02)
 ;;00406-9917-01
 ;;9002226.02101,"1921,00406-9959-03 ",.01)
 ;;00406-9959-03
 ;;9002226.02101,"1921,00406-9959-03 ",.02)
 ;;00406-9959-03
 ;;9002226.02101,"1921,00406-9960-01 ",.01)
 ;;00406-9960-01
 ;;9002226.02101,"1921,00406-9960-01 ",.02)
 ;;00406-9960-01
 ;;9002226.02101,"1921,00440-0146-01 ",.01)
 ;;00440-0146-01
 ;;9002226.02101,"1921,00440-0146-01 ",.02)
 ;;00440-0146-01
 ;;9002226.02101,"1921,00440-0146-05 ",.01)
 ;;00440-0146-05
 ;;9002226.02101,"1921,00440-0146-05 ",.02)
 ;;00440-0146-05
 ;;9002226.02101,"1921,00440-0147-01 ",.01)
 ;;00440-0147-01
 ;;9002226.02101,"1921,00440-0147-01 ",.02)
 ;;00440-0147-01
 ;;9002226.02101,"1921,00440-0147-05 ",.01)
 ;;00440-0147-05
 ;;9002226.02101,"1921,00440-0147-05 ",.02)
 ;;00440-0147-05
 ;;9002226.02101,"1921,00440-0148-01 ",.01)
 ;;00440-0148-01
 ;;9002226.02101,"1921,00440-0148-01 ",.02)
 ;;00440-0148-01
 ;;9002226.02101,"1921,00440-0149-30 ",.01)
 ;;00440-0149-30
 ;;9002226.02101,"1921,00440-0149-30 ",.02)
 ;;00440-0149-30
 ;;9002226.02101,"1921,00440-7516-30 ",.01)
 ;;00440-7516-30
 ;;9002226.02101,"1921,00440-7516-30 ",.02)
 ;;00440-7516-30
 ;;9002226.02101,"1921,00440-7530-30 ",.01)
 ;;00440-7530-30
 ;;9002226.02101,"1921,00440-7530-30 ",.02)
 ;;00440-7530-30
 ;;9002226.02101,"1921,00440-7531-30 ",.01)
 ;;00440-7531-30
 ;;9002226.02101,"1921,00440-7531-30 ",.02)
 ;;00440-7531-30
 ;;9002226.02101,"1921,00440-7531-60 ",.01)
 ;;00440-7531-60
 ;;9002226.02101,"1921,00440-7531-60 ",.02)
 ;;00440-7531-60
 ;;9002226.02101,"1921,00440-8475-14 ",.01)
 ;;00440-8475-14
 ;;9002226.02101,"1921,00440-8475-14 ",.02)
 ;;00440-8475-14
 ;;9002226.02101,"1921,00440-8475-15 ",.01)
 ;;00440-8475-15
 ;;9002226.02101,"1921,00440-8475-15 ",.02)
 ;;00440-8475-15
 ;;9002226.02101,"1921,00440-8475-30 ",.01)
 ;;00440-8475-30
 ;;9002226.02101,"1921,00440-8475-30 ",.02)
 ;;00440-8475-30
 ;;9002226.02101,"1921,00440-8476-14 ",.01)
 ;;00440-8476-14
 ;;9002226.02101,"1921,00440-8476-14 ",.02)
 ;;00440-8476-14
 ;;9002226.02101,"1921,00440-8476-15 ",.01)
 ;;00440-8476-15
 ;;9002226.02101,"1921,00440-8476-15 ",.02)
 ;;00440-8476-15
 ;;9002226.02101,"1921,00440-8476-30 ",.01)
 ;;00440-8476-30