BGP53J52 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"798,63874-0775-20 ",.01)
 ;;63874-0775-20
 ;;9002226.02101,"798,63874-0775-20 ",.02)
 ;;63874-0775-20
 ;;9002226.02101,"798,63874-0775-30 ",.01)
 ;;63874-0775-30
 ;;9002226.02101,"798,63874-0775-30 ",.02)
 ;;63874-0775-30
 ;;9002226.02101,"798,63874-0780-20 ",.01)
 ;;63874-0780-20
 ;;9002226.02101,"798,63874-0780-20 ",.02)
 ;;63874-0780-20
 ;;9002226.02101,"798,63874-0828-01 ",.01)
 ;;63874-0828-01
 ;;9002226.02101,"798,63874-0828-01 ",.02)
 ;;63874-0828-01
 ;;9002226.02101,"798,63874-0828-04 ",.01)
 ;;63874-0828-04
 ;;9002226.02101,"798,63874-0828-04 ",.02)
 ;;63874-0828-04
 ;;9002226.02101,"798,63874-0828-14 ",.01)
 ;;63874-0828-14
 ;;9002226.02101,"798,63874-0828-14 ",.02)
 ;;63874-0828-14
 ;;9002226.02101,"798,63874-0828-20 ",.01)
 ;;63874-0828-20
 ;;9002226.02101,"798,63874-0828-20 ",.02)
 ;;63874-0828-20
 ;;9002226.02101,"798,63874-0828-21 ",.01)
 ;;63874-0828-21
 ;;9002226.02101,"798,63874-0828-21 ",.02)
 ;;63874-0828-21
 ;;9002226.02101,"798,63874-0828-28 ",.01)
 ;;63874-0828-28
 ;;9002226.02101,"798,63874-0828-28 ",.02)
 ;;63874-0828-28
 ;;9002226.02101,"798,63874-0828-30 ",.01)
 ;;63874-0828-30
 ;;9002226.02101,"798,63874-0828-30 ",.02)
 ;;63874-0828-30
 ;;9002226.02101,"798,63874-0828-60 ",.01)
 ;;63874-0828-60
 ;;9002226.02101,"798,63874-0828-60 ",.02)
 ;;63874-0828-60
 ;;9002226.02101,"798,63874-0828-90 ",.01)
 ;;63874-0828-90
 ;;9002226.02101,"798,63874-0828-90 ",.02)
 ;;63874-0828-90
 ;;9002226.02101,"798,63874-0829-01 ",.01)
 ;;63874-0829-01
 ;;9002226.02101,"798,63874-0829-01 ",.02)
 ;;63874-0829-01
 ;;9002226.02101,"798,63874-0829-10 ",.01)
 ;;63874-0829-10
 ;;9002226.02101,"798,63874-0829-10 ",.02)
 ;;63874-0829-10
 ;;9002226.02101,"798,63874-0829-14 ",.01)
 ;;63874-0829-14
 ;;9002226.02101,"798,63874-0829-14 ",.02)
 ;;63874-0829-14
 ;;9002226.02101,"798,63874-0829-15 ",.01)
 ;;63874-0829-15
 ;;9002226.02101,"798,63874-0829-15 ",.02)
 ;;63874-0829-15
 ;;9002226.02101,"798,63874-0829-20 ",.01)
 ;;63874-0829-20
 ;;9002226.02101,"798,63874-0829-20 ",.02)
 ;;63874-0829-20
 ;;9002226.02101,"798,63874-0829-28 ",.01)
 ;;63874-0829-28
 ;;9002226.02101,"798,63874-0829-28 ",.02)
 ;;63874-0829-28
 ;;9002226.02101,"798,63874-0829-30 ",.01)
 ;;63874-0829-30
 ;;9002226.02101,"798,63874-0829-30 ",.02)
 ;;63874-0829-30
 ;;9002226.02101,"798,63874-0829-42 ",.01)
 ;;63874-0829-42
 ;;9002226.02101,"798,63874-0829-42 ",.02)
 ;;63874-0829-42
 ;;9002226.02101,"798,63874-0829-50 ",.01)
 ;;63874-0829-50
 ;;9002226.02101,"798,63874-0829-50 ",.02)
 ;;63874-0829-50
 ;;9002226.02101,"798,63874-0829-60 ",.01)
 ;;63874-0829-60
 ;;9002226.02101,"798,63874-0829-60 ",.02)
 ;;63874-0829-60
 ;;9002226.02101,"798,63874-0926-01 ",.01)
 ;;63874-0926-01
 ;;9002226.02101,"798,63874-0926-01 ",.02)
 ;;63874-0926-01
 ;;9002226.02101,"798,63874-0926-04 ",.01)
 ;;63874-0926-04
 ;;9002226.02101,"798,63874-0926-04 ",.02)
 ;;63874-0926-04
 ;;9002226.02101,"798,63874-0926-10 ",.01)
 ;;63874-0926-10
 ;;9002226.02101,"798,63874-0926-10 ",.02)
 ;;63874-0926-10
 ;;9002226.02101,"798,63874-0926-28 ",.01)
 ;;63874-0926-28
 ;;9002226.02101,"798,63874-0926-28 ",.02)
 ;;63874-0926-28
 ;;9002226.02101,"798,63874-0926-30 ",.01)
 ;;63874-0926-30
 ;;9002226.02101,"798,63874-0926-30 ",.02)
 ;;63874-0926-30
 ;;9002226.02101,"798,63874-0926-60 ",.01)
 ;;63874-0926-60
 ;;9002226.02101,"798,63874-0926-60 ",.02)
 ;;63874-0926-60
 ;;9002226.02101,"798,63874-0926-90 ",.01)
 ;;63874-0926-90
 ;;9002226.02101,"798,63874-0926-90 ",.02)
 ;;63874-0926-90
 ;;9002226.02101,"798,63874-1003-03 ",.01)
 ;;63874-1003-03
 ;;9002226.02101,"798,63874-1003-03 ",.02)
 ;;63874-1003-03
 ;;9002226.02101,"798,63874-1009-01 ",.01)
 ;;63874-1009-01
 ;;9002226.02101,"798,63874-1009-01 ",.02)
 ;;63874-1009-01
 ;;9002226.02101,"798,63874-1009-03 ",.01)
 ;;63874-1009-03
 ;;9002226.02101,"798,63874-1009-03 ",.02)
 ;;63874-1009-03
 ;;9002226.02101,"798,63874-1009-06 ",.01)
 ;;63874-1009-06
 ;;9002226.02101,"798,63874-1009-06 ",.02)
 ;;63874-1009-06
 ;;9002226.02101,"798,63874-1009-09 ",.01)
 ;;63874-1009-09
 ;;9002226.02101,"798,63874-1009-09 ",.02)
 ;;63874-1009-09
 ;;9002226.02101,"798,63874-1020-03 ",.01)
 ;;63874-1020-03
 ;;9002226.02101,"798,63874-1020-03 ",.02)
 ;;63874-1020-03
 ;;9002226.02101,"798,63874-1033-01 ",.01)
 ;;63874-1033-01
 ;;9002226.02101,"798,63874-1033-01 ",.02)
 ;;63874-1033-01
 ;;9002226.02101,"798,63874-1033-03 ",.01)
 ;;63874-1033-03
 ;;9002226.02101,"798,63874-1033-03 ",.02)
 ;;63874-1033-03
 ;;9002226.02101,"798,63874-1033-04 ",.01)
 ;;63874-1033-04
 ;;9002226.02101,"798,63874-1033-04 ",.02)
 ;;63874-1033-04
 ;;9002226.02101,"798,63874-1033-06 ",.01)
 ;;63874-1033-06
 ;;9002226.02101,"798,63874-1033-06 ",.02)
 ;;63874-1033-06
 ;;9002226.02101,"798,63874-1053-01 ",.01)
 ;;63874-1053-01
 ;;9002226.02101,"798,63874-1053-01 ",.02)
 ;;63874-1053-01
 ;;9002226.02101,"798,63874-1053-02 ",.01)
 ;;63874-1053-02
 ;;9002226.02101,"798,63874-1053-02 ",.02)
 ;;63874-1053-02
 ;;9002226.02101,"798,63874-1053-03 ",.01)
 ;;63874-1053-03
 ;;9002226.02101,"798,63874-1053-03 ",.02)
 ;;63874-1053-03
 ;;9002226.02101,"798,63874-1053-04 ",.01)
 ;;63874-1053-04
 ;;9002226.02101,"798,63874-1053-04 ",.02)
 ;;63874-1053-04
 ;;9002226.02101,"798,63874-1053-05 ",.01)
 ;;63874-1053-05
 ;;9002226.02101,"798,63874-1053-05 ",.02)
 ;;63874-1053-05
 ;;9002226.02101,"798,63874-1053-06 ",.01)
 ;;63874-1053-06
 ;;9002226.02101,"798,63874-1053-06 ",.02)
 ;;63874-1053-06
 ;;9002226.02101,"798,63874-1053-08 ",.01)
 ;;63874-1053-08
 ;;9002226.02101,"798,63874-1053-08 ",.02)
 ;;63874-1053-08
 ;;9002226.02101,"798,63874-1053-09 ",.01)
 ;;63874-1053-09
 ;;9002226.02101,"798,63874-1053-09 ",.02)
 ;;63874-1053-09
 ;;9002226.02101,"798,63874-1079-06 ",.01)
 ;;63874-1079-06
 ;;9002226.02101,"798,63874-1079-06 ",.02)
 ;;63874-1079-06
 ;;9002226.02101,"798,63874-1080-03 ",.01)
 ;;63874-1080-03
 ;;9002226.02101,"798,63874-1080-03 ",.02)
 ;;63874-1080-03
 ;;9002226.02101,"798,63874-1080-06 ",.01)
 ;;63874-1080-06
 ;;9002226.02101,"798,63874-1080-06 ",.02)
 ;;63874-1080-06
 ;;9002226.02101,"798,63874-1081-01 ",.01)
 ;;63874-1081-01
 ;;9002226.02101,"798,63874-1081-01 ",.02)
 ;;63874-1081-01
 ;;9002226.02101,"798,63874-1097-03 ",.01)
 ;;63874-1097-03
 ;;9002226.02101,"798,63874-1097-03 ",.02)
 ;;63874-1097-03
 ;;9002226.02101,"798,63874-1098-03 ",.01)
 ;;63874-1098-03
 ;;9002226.02101,"798,63874-1098-03 ",.02)
 ;;63874-1098-03
 ;;9002226.02101,"798,63874-1113-03 ",.01)
 ;;63874-1113-03
 ;;9002226.02101,"798,63874-1113-03 ",.02)
 ;;63874-1113-03
 ;;9002226.02101,"798,63874-1113-06 ",.01)
 ;;63874-1113-06
 ;;9002226.02101,"798,63874-1113-06 ",.02)
 ;;63874-1113-06
 ;;9002226.02101,"798,63874-1125-06 ",.01)
 ;;63874-1125-06
 ;;9002226.02101,"798,63874-1125-06 ",.02)
 ;;63874-1125-06
 ;;9002226.02101,"798,63874-1130-06 ",.01)
 ;;63874-1130-06
 ;;9002226.02101,"798,63874-1130-06 ",.02)
 ;;63874-1130-06
 ;;9002226.02101,"798,63874-1146-06 ",.01)
 ;;63874-1146-06
 ;;9002226.02101,"798,63874-1146-06 ",.02)
 ;;63874-1146-06
 ;;9002226.02101,"798,63874-1151-03 ",.01)
 ;;63874-1151-03
 ;;9002226.02101,"798,63874-1151-03 ",.02)
 ;;63874-1151-03
 ;;9002226.02101,"798,63874-1155-03 ",.01)
 ;;63874-1155-03
 ;;9002226.02101,"798,63874-1155-03 ",.02)
 ;;63874-1155-03
 ;;9002226.02101,"798,63874-1157-03 ",.01)
 ;;63874-1157-03
 ;;9002226.02101,"798,63874-1157-03 ",.02)
 ;;63874-1157-03
 ;;9002226.02101,"798,63874-1158-03 ",.01)
 ;;63874-1158-03
 ;;9002226.02101,"798,63874-1158-03 ",.02)
 ;;63874-1158-03
 ;;9002226.02101,"798,63874-1253-03 ",.01)
 ;;63874-1253-03
 ;;9002226.02101,"798,63874-1253-03 ",.02)
 ;;63874-1253-03
 ;;9002226.02101,"798,64125-0133-01 ",.01)
 ;;64125-0133-01
 ;;9002226.02101,"798,64125-0133-01 ",.02)
 ;;64125-0133-01
 ;;9002226.02101,"798,64125-0133-10 ",.01)
 ;;64125-0133-10
 ;;9002226.02101,"798,64125-0133-10 ",.02)
 ;;64125-0133-10
 ;;9002226.02101,"798,64125-0134-01 ",.01)
 ;;64125-0134-01
 ;;9002226.02101,"798,64125-0134-01 ",.02)
 ;;64125-0134-01
 ;;9002226.02101,"798,64125-0134-10 ",.01)
 ;;64125-0134-10
 ;;9002226.02101,"798,64125-0134-10 ",.02)
 ;;64125-0134-10
 ;;9002226.02101,"798,64125-0135-01 ",.01)
 ;;64125-0135-01
 ;;9002226.02101,"798,64125-0135-01 ",.02)
 ;;64125-0135-01
 ;;9002226.02101,"798,64125-0135-10 ",.01)
 ;;64125-0135-10
 ;;9002226.02101,"798,64125-0135-10 ",.02)
 ;;64125-0135-10
 ;;9002226.02101,"798,64455-0730-30 ",.01)
 ;;64455-0730-30
 ;;9002226.02101,"798,64455-0730-30 ",.02)
 ;;64455-0730-30
 ;;9002226.02101,"798,64455-0730-90 ",.01)
 ;;64455-0730-90
 ;;9002226.02101,"798,64455-0730-90 ",.02)
 ;;64455-0730-90
 ;;9002226.02101,"798,64455-0731-30 ",.01)
 ;;64455-0731-30
 ;;9002226.02101,"798,64455-0731-30 ",.02)
 ;;64455-0731-30
 ;;9002226.02101,"798,64679-0101-02 ",.01)
 ;;64679-0101-02
 ;;9002226.02101,"798,64679-0101-02 ",.02)
 ;;64679-0101-02
 ;;9002226.02101,"798,64679-0101-03 ",.01)
 ;;64679-0101-03
 ;;9002226.02101,"798,64679-0101-03 ",.02)
 ;;64679-0101-03
 ;;9002226.02101,"798,64679-0102-01 ",.01)
 ;;64679-0102-01
 ;;9002226.02101,"798,64679-0102-01 ",.02)
 ;;64679-0102-01
 ;;9002226.02101,"798,64679-0102-02 ",.01)
 ;;64679-0102-02
 ;;9002226.02101,"798,64679-0102-02 ",.02)
 ;;64679-0102-02
 ;;9002226.02101,"798,64679-0105-02 ",.01)
 ;;64679-0105-02
 ;;9002226.02101,"798,64679-0105-02 ",.02)
 ;;64679-0105-02
 ;;9002226.02101,"798,64679-0105-03 ",.01)
 ;;64679-0105-03
 ;;9002226.02101,"798,64679-0105-03 ",.02)
 ;;64679-0105-03
 ;;9002226.02101,"798,64679-0105-04 ",.01)
 ;;64679-0105-04
 ;;9002226.02101,"798,64679-0105-04 ",.02)
 ;;64679-0105-04
 ;;9002226.02101,"798,64679-0107-02 ",.01)
 ;;64679-0107-02
 ;;9002226.02101,"798,64679-0107-02 ",.02)
 ;;64679-0107-02
 ;;9002226.02101,"798,64679-0107-03 ",.01)
 ;;64679-0107-03
 ;;9002226.02101,"798,64679-0107-03 ",.02)
 ;;64679-0107-03
 ;;9002226.02101,"798,64679-0716-01 ",.01)
 ;;64679-0716-01
 ;;9002226.02101,"798,64679-0716-01 ",.02)
 ;;64679-0716-01
 ;;9002226.02101,"798,64679-0716-04 ",.01)
 ;;64679-0716-04
 ;;9002226.02101,"798,64679-0716-04 ",.02)
 ;;64679-0716-04
 ;;9002226.02101,"798,64679-0716-05 ",.01)
 ;;64679-0716-05
 ;;9002226.02101,"798,64679-0716-05 ",.02)
 ;;64679-0716-05
 ;;9002226.02101,"798,64679-0717-01 ",.01)
 ;;64679-0717-01
 ;;9002226.02101,"798,64679-0717-01 ",.02)
 ;;64679-0717-01
 ;;9002226.02101,"798,64679-0717-04 ",.01)
 ;;64679-0717-04
 ;;9002226.02101,"798,64679-0717-04 ",.02)
 ;;64679-0717-04
 ;;9002226.02101,"798,64679-0718-01 ",.01)
 ;;64679-0718-01
 ;;9002226.02101,"798,64679-0718-01 ",.02)
 ;;64679-0718-01
 ;;9002226.02101,"798,64679-0718-04 ",.01)
 ;;64679-0718-04
 ;;9002226.02101,"798,64679-0718-04 ",.02)
 ;;64679-0718-04
 ;;9002226.02101,"798,64679-0718-05 ",.01)
 ;;64679-0718-05
 ;;9002226.02101,"798,64679-0718-05 ",.02)
 ;;64679-0718-05
 ;;9002226.02101,"798,64679-0752-01 ",.01)
 ;;64679-0752-01
 ;;9002226.02101,"798,64679-0752-01 ",.02)
 ;;64679-0752-01
 ;;9002226.02101,"798,64679-0752-04 ",.01)
 ;;64679-0752-04
 ;;9002226.02101,"798,64679-0752-04 ",.02)
 ;;64679-0752-04
 ;;9002226.02101,"798,64679-0752-07 ",.01)
 ;;64679-0752-07
 ;;9002226.02101,"798,64679-0752-07 ",.02)
 ;;64679-0752-07
 ;;9002226.02101,"798,64679-0753-01 ",.01)
 ;;64679-0753-01
 ;;9002226.02101,"798,64679-0753-01 ",.02)
 ;;64679-0753-01
 ;;9002226.02101,"798,64679-0753-04 ",.01)
 ;;64679-0753-04
 ;;9002226.02101,"798,64679-0753-04 ",.02)
 ;;64679-0753-04
 ;;9002226.02101,"798,64679-0753-07 ",.01)
 ;;64679-0753-07
 ;;9002226.02101,"798,64679-0753-07 ",.02)
 ;;64679-0753-07
 ;;9002226.02101,"798,64720-0170-03 ",.01)
 ;;64720-0170-03
 ;;9002226.02101,"798,64720-0170-03 ",.02)
 ;;64720-0170-03
 ;;9002226.02101,"798,64720-0170-10 ",.01)
 ;;64720-0170-10
 ;;9002226.02101,"798,64720-0170-10 ",.02)
 ;;64720-0170-10
 ;;9002226.02101,"798,64720-0171-03 ",.01)
 ;;64720-0171-03
 ;;9002226.02101,"798,64720-0171-03 ",.02)
 ;;64720-0171-03
 ;;9002226.02101,"798,64720-0171-10 ",.01)
 ;;64720-0171-10
 ;;9002226.02101,"798,64720-0171-10 ",.02)
 ;;64720-0171-10
 ;;9002226.02101,"798,64720-0171-11 ",.01)
 ;;64720-0171-11
 ;;9002226.02101,"798,64720-0171-11 ",.02)
 ;;64720-0171-11
 ;;9002226.02101,"798,64720-0172-03 ",.01)
 ;;64720-0172-03
 ;;9002226.02101,"798,64720-0172-03 ",.02)
 ;;64720-0172-03
 ;;9002226.02101,"798,64720-0172-10 ",.01)
 ;;64720-0172-10
 ;;9002226.02101,"798,64720-0172-10 ",.02)
 ;;64720-0172-10
 ;;9002226.02101,"798,64720-0172-11 ",.01)
 ;;64720-0172-11
 ;;9002226.02101,"798,64720-0172-11 ",.02)
 ;;64720-0172-11
 ;;9002226.02101,"798,64764-0550-30 ",.01)
 ;;64764-0550-30
 ;;9002226.02101,"798,64764-0550-30 ",.02)
 ;;64764-0550-30
 ;;9002226.02101,"798,64764-0560-30 ",.01)
 ;;64764-0560-30
 ;;9002226.02101,"798,64764-0560-30 ",.02)
 ;;64764-0560-30
 ;;9002226.02101,"798,64764-0580-30 ",.01)
 ;;64764-0580-30
 ;;9002226.02101,"798,64764-0580-30 ",.02)
 ;;64764-0580-30
 ;;9002226.02101,"798,64980-0158-01 ",.01)
 ;;64980-0158-01
 ;;9002226.02101,"798,64980-0158-01 ",.02)
 ;;64980-0158-01
 ;;9002226.02101,"798,64980-0159-01 ",.01)
 ;;64980-0159-01
 ;;9002226.02101,"798,64980-0159-01 ",.02)
 ;;64980-0159-01
 ;;9002226.02101,"798,64980-0183-01 ",.01)
 ;;64980-0183-01
 ;;9002226.02101,"798,64980-0183-01 ",.02)
 ;;64980-0183-01
 ;;9002226.02101,"798,65084-0414-13 ",.01)
 ;;65084-0414-13
 ;;9002226.02101,"798,65084-0414-13 ",.02)
 ;;65084-0414-13
 ;;9002226.02101,"798,65162-0052-03 ",.01)
 ;;65162-0052-03
 ;;9002226.02101,"798,65162-0052-03 ",.02)
 ;;65162-0052-03