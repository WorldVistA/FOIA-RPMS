BUD2ZD8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 16, 2012;
 ;;8.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 03, 2014;Build 36
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1327,55567005413 ",.01)
 ;;55567005413
 ;;9002226.02101,"1327,55567005413 ",.02)
 ;;55567005413
 ;;9002226.02101,"1327,55567005418 ",.01)
 ;;55567005418
 ;;9002226.02101,"1327,55567005418 ",.02)
 ;;55567005418
 ;;9002226.02101,"1327,55567005425 ",.01)
 ;;55567005425
 ;;9002226.02101,"1327,55567005425 ",.02)
 ;;55567005425
 ;;9002226.02101,"1327,55670013113 ",.01)
 ;;55670013113
 ;;9002226.02101,"1327,55670013113 ",.02)
 ;;55670013113
 ;;9002226.02101,"1327,55670013199 ",.01)
 ;;55670013199
 ;;9002226.02101,"1327,55670013199 ",.02)
 ;;55670013199
 ;;9002226.02101,"1327,55670067613 ",.01)
 ;;55670067613
 ;;9002226.02101,"1327,55670067613 ",.02)
 ;;55670067613
 ;;9002226.02101,"1327,55670067699 ",.01)
 ;;55670067699
 ;;9002226.02101,"1327,55670067699 ",.02)
 ;;55670067699
 ;;9002226.02101,"1327,55887038630 ",.01)
 ;;55887038630
 ;;9002226.02101,"1327,55887038630 ",.02)
 ;;55887038630
 ;;9002226.02101,"1327,55887046630 ",.01)
 ;;55887046630
 ;;9002226.02101,"1327,55887046630 ",.02)
 ;;55887046630
 ;;9002226.02101,"1327,55887069001 ",.01)
 ;;55887069001
 ;;9002226.02101,"1327,55887069001 ",.02)
 ;;55887069001
 ;;9002226.02101,"1327,55910046768 ",.01)
 ;;55910046768
 ;;9002226.02101,"1327,55910046768 ",.02)
 ;;55910046768
 ;;9002226.02101,"1327,55966002809 ",.01)
 ;;55966002809
 ;;9002226.02101,"1327,55966002809 ",.02)
 ;;55966002809
 ;;9002226.02101,"1327,55966002820 ",.01)
 ;;55966002820
 ;;9002226.02101,"1327,55966002820 ",.02)
 ;;55966002820
 ;;9002226.02101,"1327,55966004501 ",.01)
 ;;55966004501
 ;;9002226.02101,"1327,55966004501 ",.02)
 ;;55966004501
 ;;9002226.02101,"1327,55966004509 ",.01)
 ;;55966004509
 ;;9002226.02101,"1327,55966004509 ",.02)
 ;;55966004509
 ;;9002226.02101,"1327,55966004801 ",.01)
 ;;55966004801
 ;;9002226.02101,"1327,55966004801 ",.02)
 ;;55966004801
 ;;9002226.02101,"1327,55966004805 ",.01)
 ;;55966004805
 ;;9002226.02101,"1327,55966004805 ",.02)
 ;;55966004805
 ;;9002226.02101,"1327,55966004809 ",.01)
 ;;55966004809
 ;;9002226.02101,"1327,55966004809 ",.02)
 ;;55966004809
 ;;9002226.02101,"1327,55966004810 ",.01)
 ;;55966004810
 ;;9002226.02101,"1327,55966004810 ",.02)
 ;;55966004810
 ;;9002226.02101,"1327,55966004815 ",.01)
 ;;55966004815
 ;;9002226.02101,"1327,55966004815 ",.02)
 ;;55966004815
 ;;9002226.02101,"1327,55966004837 ",.01)
 ;;55966004837
 ;;9002226.02101,"1327,55966004837 ",.02)
 ;;55966004837
 ;;9002226.02101,"1327,55966008903 ",.01)
 ;;55966008903
 ;;9002226.02101,"1327,55966008903 ",.02)
 ;;55966008903
 ;;9002226.02101,"1327,55966008909 ",.01)
 ;;55966008909
 ;;9002226.02101,"1327,55966008909 ",.02)
 ;;55966008909
 ;;9002226.02101,"1327,55966010706 ",.01)
 ;;55966010706
 ;;9002226.02101,"1327,55966010706 ",.02)
 ;;55966010706
 ;;9002226.02101,"1327,55966010709 ",.01)
 ;;55966010709
 ;;9002226.02101,"1327,55966010709 ",.02)
 ;;55966010709
 ;;9002226.02101,"1327,56062041678 ",.01)
 ;;56062041678
 ;;9002226.02101,"1327,56062041678 ",.02)
 ;;56062041678
 ;;9002226.02101,"1327,56062042902 ",.01)
 ;;56062042902
 ;;9002226.02101,"1327,56062042902 ",.02)
 ;;56062042902
 ;;9002226.02101,"1327,57394028652 ",.01)
 ;;57394028652
 ;;9002226.02101,"1327,57394028652 ",.02)
 ;;57394028652
 ;;9002226.02101,"1327,57394028662 ",.01)
 ;;57394028662
 ;;9002226.02101,"1327,57394028662 ",.02)
 ;;57394028662
 ;;9002226.02101,"1327,57480010601 ",.01)
 ;;57480010601
 ;;9002226.02101,"1327,57480010601 ",.02)
 ;;57480010601
 ;;9002226.02101,"1327,57480010606 ",.01)
 ;;57480010606
 ;;9002226.02101,"1327,57480010606 ",.02)
 ;;57480010606
 ;;9002226.02101,"1327,57561048002 ",.01)
 ;;57561048002
 ;;9002226.02101,"1327,57561048002 ",.02)
 ;;57561048002
 ;;9002226.02101,"1327,57664032706 ",.01)
 ;;57664032706
 ;;9002226.02101,"1327,57664032706 ",.02)
 ;;57664032706
 ;;9002226.02101,"1327,57664032713 ",.01)
 ;;57664032713
 ;;9002226.02101,"1327,57664032713 ",.02)
 ;;57664032713
 ;;9002226.02101,"1327,57664032783 ",.01)
 ;;57664032783
 ;;9002226.02101,"1327,57664032783 ",.02)
 ;;57664032783
 ;;9002226.02101,"1327,57866109003 ",.01)
 ;;57866109003
 ;;9002226.02101,"1327,57866109003 ",.02)
 ;;57866109003
 ;;9002226.02101,"1327,57866109103 ",.01)
 ;;57866109103
 ;;9002226.02101,"1327,57866109103 ",.02)
 ;;57866109103
 ;;9002226.02101,"1327,57896050001 ",.01)
 ;;57896050001
 ;;9002226.02101,"1327,57896050001 ",.02)
 ;;57896050001
 ;;9002226.02101,"1327,57896050010 ",.01)
 ;;57896050010
 ;;9002226.02101,"1327,57896050010 ",.02)
 ;;57896050010
 ;;9002226.02101,"1327,57896050101 ",.01)
 ;;57896050101
 ;;9002226.02101,"1327,57896050101 ",.02)
 ;;57896050101
 ;;9002226.02101,"1327,57896050110 ",.01)
 ;;57896050110
 ;;9002226.02101,"1327,57896050110 ",.02)
 ;;57896050110
 ;;9002226.02101,"1327,57896090101 ",.01)
 ;;57896090101
 ;;9002226.02101,"1327,57896090101 ",.02)
 ;;57896090101
 ;;9002226.02101,"1327,57896090110 ",.01)
 ;;57896090110
 ;;9002226.02101,"1327,57896090110 ",.02)
 ;;57896090110
 ;;9002226.02101,"1327,57896090125 ",.01)
 ;;57896090125
 ;;9002226.02101,"1327,57896090125 ",.02)
 ;;57896090125
 ;;9002226.02101,"1327,57896092101 ",.01)
 ;;57896092101
 ;;9002226.02101,"1327,57896092101 ",.02)
 ;;57896092101
 ;;9002226.02101,"1327,57896092110 ",.01)
 ;;57896092110
 ;;9002226.02101,"1327,57896092110 ",.02)
 ;;57896092110
 ;;9002226.02101,"1327,57896093101 ",.01)
 ;;57896093101
 ;;9002226.02101,"1327,57896093101 ",.02)
 ;;57896093101
 ;;9002226.02101,"1327,57896098101 ",.01)
 ;;57896098101
 ;;9002226.02101,"1327,57896098101 ",.02)
 ;;57896098101
 ;;9002226.02101,"1327,58005008051 ",.01)
 ;;58005008051
 ;;9002226.02101,"1327,58005008051 ",.02)
 ;;58005008051
 ;;9002226.02101,"1327,58005008075 ",.01)
 ;;58005008075
 ;;9002226.02101,"1327,58005008075 ",.02)
 ;;58005008075
 ;;9002226.02101,"1327,58005013103 ",.01)
 ;;58005013103
 ;;9002226.02101,"1327,58005013103 ",.02)
 ;;58005013103
 ;;9002226.02101,"1327,58005048002 ",.01)
 ;;58005048002
 ;;9002226.02101,"1327,58005048002 ",.02)
 ;;58005048002
 ;;9002226.02101,"1327,58016001401 ",.01)
 ;;58016001401
 ;;9002226.02101,"1327,58016001401 ",.02)
 ;;58016001401
 ;;9002226.02101,"1327,58016001402 ",.01)
 ;;58016001402
 ;;9002226.02101,"1327,58016001402 ",.02)
 ;;58016001402
 ;;9002226.02101,"1327,58016001403 ",.01)
 ;;58016001403
 ;;9002226.02101,"1327,58016001403 ",.02)
 ;;58016001403
 ;;9002226.02101,"1327,58016001404 ",.01)
 ;;58016001404
 ;;9002226.02101,"1327,58016001404 ",.02)
 ;;58016001404
 ;;9002226.02101,"1327,58016001405 ",.01)
 ;;58016001405
 ;;9002226.02101,"1327,58016001405 ",.02)
 ;;58016001405
 ;;9002226.02101,"1327,58016001406 ",.01)
 ;;58016001406
 ;;9002226.02101,"1327,58016001406 ",.02)
 ;;58016001406
 ;;9002226.02101,"1327,58016001407 ",.01)
 ;;58016001407
 ;;9002226.02101,"1327,58016001407 ",.02)
 ;;58016001407
 ;;9002226.02101,"1327,58016001408 ",.01)
 ;;58016001408
 ;;9002226.02101,"1327,58016001408 ",.02)
 ;;58016001408
 ;;9002226.02101,"1327,58016001409 ",.01)
 ;;58016001409
 ;;9002226.02101,"1327,58016001409 ",.02)
 ;;58016001409
 ;;9002226.02101,"1327,58016001410 ",.01)
 ;;58016001410
 ;;9002226.02101,"1327,58016001410 ",.02)
 ;;58016001410
 ;;9002226.02101,"1327,58016020700 ",.01)
 ;;58016020700
 ;;9002226.02101,"1327,58016020700 ",.02)
 ;;58016020700
 ;;9002226.02101,"1327,58016022500 ",.01)
 ;;58016022500
 ;;9002226.02101,"1327,58016022500 ",.02)
 ;;58016022500
 ;;9002226.02101,"1327,58016022520 ",.01)
 ;;58016022520
 ;;9002226.02101,"1327,58016022520 ",.02)
 ;;58016022520
 ;;9002226.02101,"1327,58016022530 ",.01)
 ;;58016022530
 ;;9002226.02101,"1327,58016022530 ",.02)
 ;;58016022530
 ;;9002226.02101,"1327,58016022560 ",.01)
 ;;58016022560
 ;;9002226.02101,"1327,58016022560 ",.02)
 ;;58016022560
 ;;9002226.02101,"1327,59088012059 ",.01)
 ;;59088012059
 ;;9002226.02101,"1327,59088012059 ",.02)
 ;;59088012059
 ;;9002226.02101,"1327,59618009915 ",.01)
 ;;59618009915
 ;;9002226.02101,"1327,59618009915 ",.02)
 ;;59618009915
 ;;9002226.02101,"1327,59779021807 ",.01)
 ;;59779021807
 ;;9002226.02101,"1327,59779021807 ",.02)
 ;;59779021807
 ;;9002226.02101,"1327,59779022712 ",.01)
 ;;59779022712
 ;;9002226.02101,"1327,59779022712 ",.02)
 ;;59779022712
 ;;9002226.02101,"1327,59779022713 ",.01)
 ;;59779022713
 ;;9002226.02101,"1327,59779022713 ",.02)
 ;;59779022713
 ;;9002226.02101,"1327,59779024916 ",.01)
 ;;59779024916
 ;;9002226.02101,"1327,59779024916 ",.02)
 ;;59779024916
 ;;9002226.02101,"1327,59779027408 ",.01)
 ;;59779027408
 ;;9002226.02101,"1327,59779027408 ",.02)
 ;;59779027408
 ;;9002226.02101,"1327,59779027468 ",.01)
 ;;59779027468
 ;;9002226.02101,"1327,59779027468 ",.02)
 ;;59779027468
 ;;9002226.02101,"1327,59779038912 ",.01)
 ;;59779038912
 ;;9002226.02101,"1327,59779038912 ",.02)
 ;;59779038912
 ;;9002226.02101,"1327,59779041405 ",.01)
 ;;59779041405
 ;;9002226.02101,"1327,59779041405 ",.02)
 ;;59779041405
 ;;9002226.02101,"1327,59779041407 ",.01)
 ;;59779041407
 ;;9002226.02101,"1327,59779041407 ",.02)
 ;;59779041407
 ;;9002226.02101,"1327,59779041412 ",.01)
 ;;59779041412
 ;;9002226.02101,"1327,59779041412 ",.02)
 ;;59779041412
 ;;9002226.02101,"1327,59779041417 ",.01)
 ;;59779041417
 ;;9002226.02101,"1327,59779041417 ",.02)
 ;;59779041417
 ;;9002226.02101,"1327,59779041432 ",.01)
 ;;59779041432
 ;;9002226.02101,"1327,59779041432 ",.02)
 ;;59779041432
 ;;9002226.02101,"1327,59779041678 ",.01)
 ;;59779041678
 ;;9002226.02101,"1327,59779041678 ",.02)
 ;;59779041678
 ;;9002226.02101,"1327,59779041687 ",.01)
 ;;59779041687
 ;;9002226.02101,"1327,59779041687 ",.02)
 ;;59779041687
 ;;9002226.02101,"1327,59779041690 ",.01)
 ;;59779041690
 ;;9002226.02101,"1327,59779041690 ",.02)
 ;;59779041690
 ;;9002226.02101,"1327,59779046708 ",.01)
 ;;59779046708
 ;;9002226.02101,"1327,59779046708 ",.02)
 ;;59779046708
 ;;9002226.02101,"1327,59779046768 ",.01)
 ;;59779046768
 ;;9002226.02101,"1327,59779046768 ",.02)
 ;;59779046768
 ;;9002226.02101,"1327,60429076405 ",.01)
 ;;60429076405
 ;;9002226.02101,"1327,60429076405 ",.02)
 ;;60429076405
 ;;9002226.02101,"1327,60429076430 ",.01)
 ;;60429076430
 ;;9002226.02101,"1327,60429076430 ",.02)
 ;;60429076430
 ;;9002226.02101,"1327,60429076460 ",.01)
 ;;60429076460
 ;;9002226.02101,"1327,60429076460 ",.02)
 ;;60429076460
 ;;9002226.02101,"1327,60505002702 ",.01)
 ;;60505002702
 ;;9002226.02101,"1327,60505002702 ",.02)
 ;;60505002702
 ;;9002226.02101,"1327,60505002704 ",.01)
 ;;60505002704
 ;;9002226.02101,"1327,60505002704 ",.02)
 ;;60505002704
 ;;9002226.02101,"1327,60505002707 ",.01)
 ;;60505002707
 ;;9002226.02101,"1327,60505002707 ",.02)
 ;;60505002707
 ;;9002226.02101,"1327,60505002709 ",.01)
 ;;60505002709
 ;;9002226.02101,"1327,60505002709 ",.02)
 ;;60505002709
 ;;9002226.02101,"1327,60505025301 ",.01)
 ;;60505025301
 ;;9002226.02101,"1327,60505025301 ",.02)
 ;;60505025301
 ;;9002226.02101,"1327,60505025302 ",.01)
 ;;60505025302
 ;;9002226.02101,"1327,60505025302 ",.02)
 ;;60505025302
 ;;9002226.02101,"1327,60505025303 ",.01)
 ;;60505025303
 ;;9002226.02101,"1327,60505025303 ",.02)
 ;;60505025303
 ;;9002226.02101,"1327,60505025304 ",.01)
 ;;60505025304
 ;;9002226.02101,"1327,60505025304 ",.02)
 ;;60505025304
 ;;9002226.02101,"1327,60809010855 ",.01)
 ;;60809010855
 ;;9002226.02101,"1327,60809010855 ",.02)
 ;;60809010855
 ;;9002226.02101,"1327,60809010872 ",.01)
 ;;60809010872
 ;;9002226.02101,"1327,60809010872 ",.02)
 ;;60809010872
 ;;9002226.02101,"1327,60814010901 ",.01)
 ;;60814010901
 ;;9002226.02101,"1327,60814010901 ",.02)
 ;;60814010901
 ;;9002226.02101,"1327,60814010910 ",.01)
 ;;60814010910
 ;;9002226.02101,"1327,60814010910 ",.02)
 ;;60814010910
 ;;9002226.02101,"1327,60814010999 ",.01)
 ;;60814010999
 ;;9002226.02101,"1327,60814010999 ",.02)
 ;;60814010999
 ;;9002226.02101,"1327,60814011010 ",.01)
 ;;60814011010
 ;;9002226.02101,"1327,60814011010 ",.02)
 ;;60814011010
 ;;9002226.02101,"1327,60814011025 ",.01)
 ;;60814011025
 ;;9002226.02101,"1327,60814011025 ",.02)
 ;;60814011025
 ;;9002226.02101,"1327,60814011110 ",.01)
 ;;60814011110
 ;;9002226.02101,"1327,60814011110 ",.02)
 ;;60814011110
 ;;9002226.02101,"1327,60814017536 ",.01)
 ;;60814017536
 ;;9002226.02101,"1327,60814017536 ",.02)
 ;;60814017536
 ;;9002226.02101,"1327,62107002507 ",.01)
 ;;62107002507
 ;;9002226.02101,"1327,62107002507 ",.02)
 ;;62107002507
 ;;9002226.02101,"1327,62107002532 ",.01)
 ;;62107002532
 ;;9002226.02101,"1327,62107002532 ",.02)
 ;;62107002532
 ;;9002226.02101,"1327,62107002636 ",.01)
 ;;62107002636
 ;;9002226.02101,"1327,62107002636 ",.02)
 ;;62107002636
 ;;9002226.02101,"1327,62107002726 ",.01)
 ;;62107002726
 ;;9002226.02101,"1327,62107002726 ",.02)
 ;;62107002726
 ;;9002226.02101,"1327,62107002732 ",.01)
 ;;62107002732
 ;;9002226.02101,"1327,62107002732 ",.02)
 ;;62107002732
 ;;9002226.02101,"1327,62211022050 ",.01)
 ;;62211022050
 ;;9002226.02101,"1327,62211022050 ",.02)
 ;;62211022050
 ;;9002226.02101,"1327,62211022099 ",.01)
 ;;62211022099
 ;;9002226.02101,"1327,62211022099 ",.02)
 ;;62211022099
 ;;9002226.02101,"1327,62211022540 ",.01)
 ;;62211022540
 ;;9002226.02101,"1327,62211022540 ",.02)
 ;;62211022540
 ;;9002226.02101,"1327,62211022599 ",.01)
 ;;62211022599
 ;;9002226.02101,"1327,62211022599 ",.02)
 ;;62211022599
 ;;9002226.02101,"1327,62211031201 ",.01)
 ;;62211031201
 ;;9002226.02101,"1327,62211031201 ",.02)
 ;;62211031201
 ;;9002226.02101,"1327,62211031299 ",.01)
 ;;62211031299