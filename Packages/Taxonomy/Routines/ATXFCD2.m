ATXFCD2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 18, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"C91.51 ")
 ;;427
 ;;21,"C91.52 ")
 ;;428
 ;;21,"C91.60 ")
 ;;429
 ;;21,"C91.61 ")
 ;;430
 ;;21,"C91.62 ")
 ;;431
 ;;21,"C91.90 ")
 ;;432
 ;;21,"C91.91 ")
 ;;433
 ;;21,"C91.92 ")
 ;;434
 ;;21,"C91.A0 ")
 ;;435
 ;;21,"C91.A1 ")
 ;;436
 ;;21,"C91.A2 ")
 ;;437
 ;;21,"C91.Z0 ")
 ;;438
 ;;21,"C91.Z1 ")
 ;;439
 ;;21,"C91.Z2 ")
 ;;440
 ;;21,"C92.00 ")
 ;;441
 ;;21,"C92.01 ")
 ;;442
 ;;21,"C92.02 ")
 ;;443
 ;;21,"C92.10 ")
 ;;444
 ;;21,"C92.11 ")
 ;;445
 ;;21,"C92.12 ")
 ;;446
 ;;21,"C92.20 ")
 ;;447
 ;;21,"C92.21 ")
 ;;448
 ;;21,"C92.22 ")
 ;;449
 ;;21,"C92.30 ")
 ;;450
 ;;21,"C92.31 ")
 ;;451
 ;;21,"C92.32 ")
 ;;452
 ;;21,"C92.40 ")
 ;;453
 ;;21,"C92.41 ")
 ;;454
 ;;21,"C92.42 ")
 ;;455
 ;;21,"C92.50 ")
 ;;456
 ;;21,"C92.51 ")
 ;;457
 ;;21,"C92.52 ")
 ;;458
 ;;21,"C92.60 ")
 ;;459
 ;;21,"C92.61 ")
 ;;460
 ;;21,"C92.62 ")
 ;;461
 ;;21,"C92.90 ")
 ;;462
 ;;21,"C92.91 ")
 ;;463
 ;;21,"C92.92 ")
 ;;464
 ;;21,"C92.A0 ")
 ;;465
 ;;21,"C92.A1 ")
 ;;466
 ;;21,"C92.A2 ")
 ;;467
 ;;21,"C92.Z0 ")
 ;;468
 ;;21,"C92.Z1 ")
 ;;469
 ;;21,"C92.Z2 ")
 ;;470
 ;;21,"C93.00 ")
 ;;471
 ;;21,"C93.01 ")
 ;;472
 ;;21,"C93.02 ")
 ;;473
 ;;21,"C93.10 ")
 ;;474
 ;;21,"C93.11 ")
 ;;475
 ;;21,"C93.12 ")
 ;;476
 ;;21,"C93.30 ")
 ;;477
 ;;21,"C93.31 ")
 ;;478
 ;;21,"C93.32 ")
 ;;479
 ;;21,"C93.90 ")
 ;;480
 ;;21,"C93.91 ")
 ;;481
 ;;21,"C93.92 ")
 ;;482
 ;;21,"C93.Z0 ")
 ;;483
 ;;21,"C93.Z1 ")
 ;;484
 ;;21,"C93.Z2 ")
 ;;485
 ;;21,"C94.00 ")
 ;;486
 ;;21,"C94.01 ")
 ;;487
 ;;21,"C94.02 ")
 ;;488
 ;;21,"C94.20 ")
 ;;489
 ;;21,"C94.21 ")
 ;;490
 ;;21,"C94.22 ")
 ;;491
 ;;21,"C94.30 ")
 ;;492
 ;;21,"C94.31 ")
 ;;493
 ;;21,"C94.32 ")
 ;;494
 ;;21,"C94.80 ")
 ;;495
 ;;21,"C94.81 ")
 ;;496
 ;;21,"C94.82 ")
 ;;497
 ;;21,"C95.00 ")
 ;;498
 ;;21,"C95.01 ")
 ;;499
 ;;21,"C95.02 ")
 ;;500
 ;;21,"C95.10 ")
 ;;501
 ;;21,"C95.11 ")
 ;;502
 ;;21,"C95.12 ")
 ;;503
 ;;21,"C95.90 ")
 ;;504
 ;;21,"C95.91 ")
 ;;505
 ;;21,"C95.92 ")
 ;;506
 ;;21,"C96.0 ")
 ;;507
 ;;21,"C96.2 ")
 ;;508
 ;;21,"C96.4 ")
 ;;509
 ;;21,"C96.5 ")
 ;;510
 ;;21,"C96.6 ")
 ;;511
 ;;21,"C96.9 ")
 ;;512
 ;;21,"C96.A ")
 ;;513
 ;;21,"C96.Z ")
 ;;514
 ;;9002226,2230,.01)
 ;;BGP IPC LYMPHATIC CANCER DXS
 ;;9002226,2230,.02)
 ;;@
 ;;9002226,2230,.04)
 ;;n
 ;;9002226,2230,.06)
 ;;@
 ;;9002226,2230,.08)
 ;;@
 ;;9002226,2230,.09)
 ;;3171218
 ;;9002226,2230,.11)
 ;;@
 ;;9002226,2230,.12)
 ;;31
 ;;9002226,2230,.13)
 ;;1
 ;;9002226,2230,.14)
 ;;@
 ;;9002226,2230,.15)
 ;;80
 ;;9002226,2230,.16)
 ;;@
 ;;9002226,2230,.17)
 ;;@
 ;;9002226,2230,.22)
 ;;1
 ;;9002226,2230,3101)
 ;;@
 ;;9002226.02101,"2230,C22.0 ",.01)
 ;;C22.0 
 ;;9002226.02101,"2230,C22.0 ",.02)
 ;;C22.0 
 ;;9002226.02101,"2230,C22.0 ",.03)
 ;;30
 ;;9002226.02101,"2230,C22.1 ",.01)
 ;;C22.1 
 ;;9002226.02101,"2230,C22.1 ",.02)
 ;;C22.1 
 ;;9002226.02101,"2230,C22.1 ",.03)
 ;;30
 ;;9002226.02101,"2230,C22.2 ",.01)
 ;;C22.2 
 ;;9002226.02101,"2230,C22.2 ",.02)
 ;;C22.2 
 ;;9002226.02101,"2230,C22.2 ",.03)
 ;;30
 ;;9002226.02101,"2230,C22.3 ",.01)
 ;;C22.3 
 ;;9002226.02101,"2230,C22.3 ",.02)
 ;;C22.3 
 ;;9002226.02101,"2230,C22.3 ",.03)
 ;;30
 ;;9002226.02101,"2230,C22.4 ",.01)
 ;;C22.4 
 ;;9002226.02101,"2230,C22.4 ",.02)
 ;;C22.4 
 ;;9002226.02101,"2230,C22.4 ",.03)
 ;;30
 ;;9002226.02101,"2230,C22.7 ",.01)
 ;;C22.7 
 ;;9002226.02101,"2230,C22.7 ",.02)
 ;;C22.7 
 ;;9002226.02101,"2230,C22.7 ",.03)
 ;;30
 ;;9002226.02101,"2230,C22.8 ",.01)
 ;;C22.8 
 ;;9002226.02101,"2230,C22.8 ",.02)
 ;;C22.8 
 ;;9002226.02101,"2230,C22.8 ",.03)
 ;;30
 ;;9002226.02101,"2230,C22.9 ",.01)
 ;;C22.9 
 ;;9002226.02101,"2230,C22.9 ",.02)
 ;;C22.9 
 ;;9002226.02101,"2230,C22.9 ",.03)
 ;;30
 ;;9002226.02101,"2230,C23. ",.01)
 ;;C23. 
 ;;9002226.02101,"2230,C23. ",.02)
 ;;C23. 
 ;;9002226.02101,"2230,C23. ",.03)
 ;;30
 ;;9002226.02101,"2230,C24.0 ",.01)
 ;;C24.0 
 ;;9002226.02101,"2230,C24.0 ",.02)
 ;;C24.0 
 ;;9002226.02101,"2230,C24.0 ",.03)
 ;;30
 ;;9002226.02101,"2230,C24.1 ",.01)
 ;;C24.1 
 ;;9002226.02101,"2230,C24.1 ",.02)
 ;;C24.1 
 ;;9002226.02101,"2230,C24.1 ",.03)
 ;;30
 ;;9002226.02101,"2230,C24.8 ",.01)
 ;;C24.8 
 ;;9002226.02101,"2230,C24.8 ",.02)
 ;;C24.8 
 ;;9002226.02101,"2230,C24.8 ",.03)
 ;;30
 ;;9002226.02101,"2230,C24.9 ",.01)
 ;;C24.9 
 ;;9002226.02101,"2230,C24.9 ",.02)
 ;;C24.9 
 ;;9002226.02101,"2230,C24.9 ",.03)
 ;;30
 ;;9002226.02101,"2230,C25.0 ",.01)
 ;;C25.0 
 ;;9002226.02101,"2230,C25.0 ",.02)
 ;;C25.0 
 ;;9002226.02101,"2230,C25.0 ",.03)
 ;;30
 ;;9002226.02101,"2230,C25.1 ",.01)
 ;;C25.1 
 ;;9002226.02101,"2230,C25.1 ",.02)
 ;;C25.1 
 ;;9002226.02101,"2230,C25.1 ",.03)
 ;;30
 ;;9002226.02101,"2230,C25.2 ",.01)
 ;;C25.2 
 ;;9002226.02101,"2230,C25.2 ",.02)
 ;;C25.2 
 ;;9002226.02101,"2230,C25.2 ",.03)
 ;;30
 ;;9002226.02101,"2230,C25.3 ",.01)
 ;;C25.3 
 ;;9002226.02101,"2230,C25.3 ",.02)
 ;;C25.3 
 ;;9002226.02101,"2230,C25.3 ",.03)
 ;;30
 ;;9002226.02101,"2230,C25.4 ",.01)
 ;;C25.4 
 ;;9002226.02101,"2230,C25.4 ",.02)
 ;;C25.4 
 ;;9002226.02101,"2230,C25.4 ",.03)
 ;;30
 ;;9002226.02101,"2230,C25.7 ",.01)
 ;;C25.7 
 ;;9002226.02101,"2230,C25.7 ",.02)
 ;;C25.7 
 ;;9002226.02101,"2230,C25.7 ",.03)
 ;;30
 ;;9002226.02101,"2230,C25.8 ",.01)
 ;;C25.8 
 ;;9002226.02101,"2230,C25.8 ",.02)
 ;;C25.8 
 ;;9002226.02101,"2230,C25.8 ",.03)
 ;;30
 ;;9002226.02101,"2230,C25.9 ",.01)
 ;;C25.9 
 ;;9002226.02101,"2230,C25.9 ",.02)
 ;;C25.9 
 ;;9002226.02101,"2230,C25.9 ",.03)
 ;;30
 ;;9002226.02101,"2230,C46.0 ",.01)
 ;;C46.0 
 ;;9002226.02101,"2230,C46.0 ",.02)
 ;;C46.0 
 ;;9002226.02101,"2230,C46.0 ",.03)
 ;;30
 ;;9002226.02101,"2230,C46.1 ",.01)
 ;;C46.1 
 ;;9002226.02101,"2230,C46.1 ",.02)
 ;;C46.1 
 ;;9002226.02101,"2230,C46.1 ",.03)
 ;;30
 ;;9002226.02101,"2230,C46.2 ",.01)
 ;;C46.2 
 ;;9002226.02101,"2230,C46.2 ",.02)
 ;;C46.2 
 ;;9002226.02101,"2230,C46.2 ",.03)
 ;;30
 ;;9002226.02101,"2230,C46.3 ",.01)
 ;;C46.3 
 ;;9002226.02101,"2230,C46.3 ",.02)
 ;;C46.3 
 ;;9002226.02101,"2230,C46.3 ",.03)
 ;;30
 ;;9002226.02101,"2230,C46.4 ",.01)
 ;;C46.4 
 ;;9002226.02101,"2230,C46.4 ",.02)
 ;;C46.4 
 ;;9002226.02101,"2230,C46.4 ",.03)
 ;;30
 ;;9002226.02101,"2230,C46.50 ",.01)
 ;;C46.50 
 ;;9002226.02101,"2230,C46.50 ",.02)
 ;;C46.50 
 ;;9002226.02101,"2230,C46.50 ",.03)
 ;;30
 ;;9002226.02101,"2230,C46.51 ",.01)
 ;;C46.51 
 ;;9002226.02101,"2230,C46.51 ",.02)
 ;;C46.51 
 ;;9002226.02101,"2230,C46.51 ",.03)
 ;;30
 ;;9002226.02101,"2230,C46.52 ",.01)
 ;;C46.52 
 ;;9002226.02101,"2230,C46.52 ",.02)
 ;;C46.52 
 ;;9002226.02101,"2230,C46.52 ",.03)
 ;;30
 ;;9002226.02101,"2230,C46.7 ",.01)
 ;;C46.7 
 ;;9002226.02101,"2230,C46.7 ",.02)
 ;;C46.7 
 ;;9002226.02101,"2230,C46.7 ",.03)
 ;;30
 ;;9002226.02101,"2230,C46.9 ",.01)
 ;;C46.9 
 ;;9002226.02101,"2230,C46.9 ",.02)
 ;;C46.9 
 ;;9002226.02101,"2230,C46.9 ",.03)
 ;;30
 ;;9002226.02101,"2230,C7B.01 ",.01)
 ;;C7B.01 
 ;;9002226.02101,"2230,C7B.01 ",.02)
 ;;C7B.01 
 ;;9002226.02101,"2230,C7B.01 ",.03)
 ;;30
 ;;9002226.02101,"2230,C7B.02 ",.01)
 ;;C7B.02 
 ;;9002226.02101,"2230,C7B.02 ",.02)
 ;;C7B.02 
 ;;9002226.02101,"2230,C7B.02 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.00 ",.01)
 ;;C81.00 
 ;;9002226.02101,"2230,C81.00 ",.02)
 ;;C81.00 
 ;;9002226.02101,"2230,C81.00 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.01 ",.01)
 ;;C81.01 
 ;;9002226.02101,"2230,C81.01 ",.02)
 ;;C81.01 
 ;;9002226.02101,"2230,C81.01 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.02 ",.01)
 ;;C81.02 
 ;;9002226.02101,"2230,C81.02 ",.02)
 ;;C81.02 
 ;;9002226.02101,"2230,C81.02 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.03 ",.01)
 ;;C81.03 
 ;;9002226.02101,"2230,C81.03 ",.02)
 ;;C81.03 
 ;;9002226.02101,"2230,C81.03 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.04 ",.01)
 ;;C81.04 
 ;;9002226.02101,"2230,C81.04 ",.02)
 ;;C81.04 
 ;;9002226.02101,"2230,C81.04 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.05 ",.01)
 ;;C81.05 
 ;;9002226.02101,"2230,C81.05 ",.02)
 ;;C81.05 
 ;;9002226.02101,"2230,C81.05 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.06 ",.01)
 ;;C81.06 
 ;;9002226.02101,"2230,C81.06 ",.02)
 ;;C81.06 
 ;;9002226.02101,"2230,C81.06 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.07 ",.01)
 ;;C81.07 
 ;;9002226.02101,"2230,C81.07 ",.02)
 ;;C81.07 
 ;;9002226.02101,"2230,C81.07 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.08 ",.01)
 ;;C81.08 
 ;;9002226.02101,"2230,C81.08 ",.02)
 ;;C81.08 
 ;;9002226.02101,"2230,C81.08 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.09 ",.01)
 ;;C81.09 
 ;;9002226.02101,"2230,C81.09 ",.02)
 ;;C81.09 
 ;;9002226.02101,"2230,C81.09 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.10 ",.01)
 ;;C81.10 
 ;;9002226.02101,"2230,C81.10 ",.02)
 ;;C81.10 
 ;;9002226.02101,"2230,C81.10 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.11 ",.01)
 ;;C81.11 
 ;;9002226.02101,"2230,C81.11 ",.02)
 ;;C81.11 
 ;;9002226.02101,"2230,C81.11 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.12 ",.01)
 ;;C81.12 
 ;;9002226.02101,"2230,C81.12 ",.02)
 ;;C81.12 
 ;;9002226.02101,"2230,C81.12 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.13 ",.01)
 ;;C81.13 
 ;;9002226.02101,"2230,C81.13 ",.02)
 ;;C81.13 
 ;;9002226.02101,"2230,C81.13 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.14 ",.01)
 ;;C81.14 
 ;;9002226.02101,"2230,C81.14 ",.02)
 ;;C81.14 
 ;;9002226.02101,"2230,C81.14 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.15 ",.01)
 ;;C81.15 
 ;;9002226.02101,"2230,C81.15 ",.02)
 ;;C81.15 
 ;;9002226.02101,"2230,C81.15 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.16 ",.01)
 ;;C81.16 
 ;;9002226.02101,"2230,C81.16 ",.02)
 ;;C81.16 
 ;;9002226.02101,"2230,C81.16 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.17 ",.01)
 ;;C81.17 
 ;;9002226.02101,"2230,C81.17 ",.02)
 ;;C81.17 
 ;;9002226.02101,"2230,C81.17 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.18 ",.01)
 ;;C81.18 
 ;;9002226.02101,"2230,C81.18 ",.02)
 ;;C81.18 
 ;;9002226.02101,"2230,C81.18 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.19 ",.01)
 ;;C81.19 
 ;;9002226.02101,"2230,C81.19 ",.02)
 ;;C81.19 
 ;;9002226.02101,"2230,C81.19 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.20 ",.01)
 ;;C81.20 
 ;;9002226.02101,"2230,C81.20 ",.02)
 ;;C81.20 
 ;;9002226.02101,"2230,C81.20 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.21 ",.01)
 ;;C81.21 
 ;;9002226.02101,"2230,C81.21 ",.02)
 ;;C81.21 
 ;;9002226.02101,"2230,C81.21 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.22 ",.01)
 ;;C81.22 
 ;;9002226.02101,"2230,C81.22 ",.02)
 ;;C81.22 
 ;;9002226.02101,"2230,C81.22 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.23 ",.01)
 ;;C81.23 
 ;;9002226.02101,"2230,C81.23 ",.02)
 ;;C81.23 
 ;;9002226.02101,"2230,C81.23 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.24 ",.01)
 ;;C81.24 
 ;;9002226.02101,"2230,C81.24 ",.02)
 ;;C81.24 
 ;;9002226.02101,"2230,C81.24 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.25 ",.01)
 ;;C81.25 
 ;;9002226.02101,"2230,C81.25 ",.02)
 ;;C81.25 
 ;;9002226.02101,"2230,C81.25 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.26 ",.01)
 ;;C81.26 
 ;;9002226.02101,"2230,C81.26 ",.02)
 ;;C81.26 
 ;;9002226.02101,"2230,C81.26 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.27 ",.01)
 ;;C81.27 
 ;;9002226.02101,"2230,C81.27 ",.02)
 ;;C81.27 
 ;;9002226.02101,"2230,C81.27 ",.03)
 ;;30
 ;;9002226.02101,"2230,C81.28 ",.01)
 ;;C81.28 
 ;;9002226.02101,"2230,C81.28 ",.02)
 ;;C81.28 