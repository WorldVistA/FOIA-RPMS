BGP8ZH65 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,63874-0114-21 ",.02)
 ;;63874-0114-21
 ;;9002226.02101,"868,63874-0114-24 ",.01)
 ;;63874-0114-24
 ;;9002226.02101,"868,63874-0114-24 ",.02)
 ;;63874-0114-24
 ;;9002226.02101,"868,63874-0114-25 ",.01)
 ;;63874-0114-25
 ;;9002226.02101,"868,63874-0114-25 ",.02)
 ;;63874-0114-25
 ;;9002226.02101,"868,63874-0114-28 ",.01)
 ;;63874-0114-28
 ;;9002226.02101,"868,63874-0114-28 ",.02)
 ;;63874-0114-28
 ;;9002226.02101,"868,63874-0114-30 ",.01)
 ;;63874-0114-30
 ;;9002226.02101,"868,63874-0114-30 ",.02)
 ;;63874-0114-30
 ;;9002226.02101,"868,63874-0114-40 ",.01)
 ;;63874-0114-40
 ;;9002226.02101,"868,63874-0114-40 ",.02)
 ;;63874-0114-40
 ;;9002226.02101,"868,63874-0114-50 ",.01)
 ;;63874-0114-50
 ;;9002226.02101,"868,63874-0114-50 ",.02)
 ;;63874-0114-50
 ;;9002226.02101,"868,63874-0118-01 ",.01)
 ;;63874-0118-01
 ;;9002226.02101,"868,63874-0118-01 ",.02)
 ;;63874-0118-01
 ;;9002226.02101,"868,63874-0118-03 ",.01)
 ;;63874-0118-03
 ;;9002226.02101,"868,63874-0118-03 ",.02)
 ;;63874-0118-03
 ;;9002226.02101,"868,63874-0118-06 ",.01)
 ;;63874-0118-06
 ;;9002226.02101,"868,63874-0118-06 ",.02)
 ;;63874-0118-06
 ;;9002226.02101,"868,63874-0118-07 ",.01)
 ;;63874-0118-07
 ;;9002226.02101,"868,63874-0118-07 ",.02)
 ;;63874-0118-07
 ;;9002226.02101,"868,63874-0118-10 ",.01)
 ;;63874-0118-10
 ;;9002226.02101,"868,63874-0118-10 ",.02)
 ;;63874-0118-10
 ;;9002226.02101,"868,63874-0118-12 ",.01)
 ;;63874-0118-12
 ;;9002226.02101,"868,63874-0118-12 ",.02)
 ;;63874-0118-12
 ;;9002226.02101,"868,63874-0118-14 ",.01)
 ;;63874-0118-14
 ;;9002226.02101,"868,63874-0118-14 ",.02)
 ;;63874-0118-14
 ;;9002226.02101,"868,63874-0118-15 ",.01)
 ;;63874-0118-15
 ;;9002226.02101,"868,63874-0118-15 ",.02)
 ;;63874-0118-15
 ;;9002226.02101,"868,63874-0118-18 ",.01)
 ;;63874-0118-18
 ;;9002226.02101,"868,63874-0118-18 ",.02)
 ;;63874-0118-18
 ;;9002226.02101,"868,63874-0118-20 ",.01)
 ;;63874-0118-20
 ;;9002226.02101,"868,63874-0118-20 ",.02)
 ;;63874-0118-20
 ;;9002226.02101,"868,63874-0118-21 ",.01)
 ;;63874-0118-21
 ;;9002226.02101,"868,63874-0118-21 ",.02)
 ;;63874-0118-21
 ;;9002226.02101,"868,63874-0118-24 ",.01)
 ;;63874-0118-24
 ;;9002226.02101,"868,63874-0118-24 ",.02)
 ;;63874-0118-24
 ;;9002226.02101,"868,63874-0118-28 ",.01)
 ;;63874-0118-28
 ;;9002226.02101,"868,63874-0118-28 ",.02)
 ;;63874-0118-28
 ;;9002226.02101,"868,63874-0118-30 ",.01)
 ;;63874-0118-30
 ;;9002226.02101,"868,63874-0118-30 ",.02)
 ;;63874-0118-30
 ;;9002226.02101,"868,63874-0118-40 ",.01)
 ;;63874-0118-40
 ;;9002226.02101,"868,63874-0118-40 ",.02)
 ;;63874-0118-40
 ;;9002226.02101,"868,63874-0118-50 ",.01)
 ;;63874-0118-50
 ;;9002226.02101,"868,63874-0118-50 ",.02)
 ;;63874-0118-50
 ;;9002226.02101,"868,63874-0118-60 ",.01)
 ;;63874-0118-60
 ;;9002226.02101,"868,63874-0118-60 ",.02)
 ;;63874-0118-60
 ;;9002226.02101,"868,63874-0119-01 ",.01)
 ;;63874-0119-01
 ;;9002226.02101,"868,63874-0119-01 ",.02)
 ;;63874-0119-01
 ;;9002226.02101,"868,63874-0119-21 ",.01)
 ;;63874-0119-21
 ;;9002226.02101,"868,63874-0119-21 ",.02)
 ;;63874-0119-21
 ;;9002226.02101,"868,63874-0119-30 ",.01)
 ;;63874-0119-30
 ;;9002226.02101,"868,63874-0119-30 ",.02)
 ;;63874-0119-30
 ;;9002226.02101,"868,63874-0120-01 ",.01)
 ;;63874-0120-01
 ;;9002226.02101,"868,63874-0120-01 ",.02)
 ;;63874-0120-01
 ;;9002226.02101,"868,63874-0120-12 ",.01)
 ;;63874-0120-12
 ;;9002226.02101,"868,63874-0120-12 ",.02)
 ;;63874-0120-12
 ;;9002226.02101,"868,63874-0120-20 ",.01)
 ;;63874-0120-20
 ;;9002226.02101,"868,63874-0120-20 ",.02)
 ;;63874-0120-20
 ;;9002226.02101,"868,63874-0120-30 ",.01)
 ;;63874-0120-30
 ;;9002226.02101,"868,63874-0120-30 ",.02)
 ;;63874-0120-30
 ;;9002226.02101,"868,63874-0123-01 ",.01)
 ;;63874-0123-01
 ;;9002226.02101,"868,63874-0123-01 ",.02)
 ;;63874-0123-01
 ;;9002226.02101,"868,63874-0123-12 ",.01)
 ;;63874-0123-12
 ;;9002226.02101,"868,63874-0123-12 ",.02)
 ;;63874-0123-12
 ;;9002226.02101,"868,63874-0123-14 ",.01)
 ;;63874-0123-14
 ;;9002226.02101,"868,63874-0123-14 ",.02)
 ;;63874-0123-14
 ;;9002226.02101,"868,63874-0123-15 ",.01)
 ;;63874-0123-15
 ;;9002226.02101,"868,63874-0123-15 ",.02)
 ;;63874-0123-15
 ;;9002226.02101,"868,63874-0123-20 ",.01)
 ;;63874-0123-20
 ;;9002226.02101,"868,63874-0123-20 ",.02)
 ;;63874-0123-20
 ;;9002226.02101,"868,63874-0123-21 ",.01)
 ;;63874-0123-21
 ;;9002226.02101,"868,63874-0123-21 ",.02)
 ;;63874-0123-21
 ;;9002226.02101,"868,63874-0123-24 ",.01)
 ;;63874-0123-24
 ;;9002226.02101,"868,63874-0123-24 ",.02)
 ;;63874-0123-24
 ;;9002226.02101,"868,63874-0123-28 ",.01)
 ;;63874-0123-28
 ;;9002226.02101,"868,63874-0123-28 ",.02)
 ;;63874-0123-28
 ;;9002226.02101,"868,63874-0123-30 ",.01)
 ;;63874-0123-30
 ;;9002226.02101,"868,63874-0123-30 ",.02)
 ;;63874-0123-30
 ;;9002226.02101,"868,63874-0123-40 ",.01)
 ;;63874-0123-40
 ;;9002226.02101,"868,63874-0123-40 ",.02)
 ;;63874-0123-40
 ;;9002226.02101,"868,63874-0123-50 ",.01)
 ;;63874-0123-50
 ;;9002226.02101,"868,63874-0123-50 ",.02)
 ;;63874-0123-50
 ;;9002226.02101,"868,63874-0123-60 ",.01)
 ;;63874-0123-60
 ;;9002226.02101,"868,63874-0123-60 ",.02)
 ;;63874-0123-60
 ;;9002226.02101,"868,63874-0125-01 ",.01)
 ;;63874-0125-01
 ;;9002226.02101,"868,63874-0125-01 ",.02)
 ;;63874-0125-01
 ;;9002226.02101,"868,63874-0125-02 ",.01)
 ;;63874-0125-02
 ;;9002226.02101,"868,63874-0125-02 ",.02)
 ;;63874-0125-02
 ;;9002226.02101,"868,63874-0125-10 ",.01)
 ;;63874-0125-10
 ;;9002226.02101,"868,63874-0125-10 ",.02)
 ;;63874-0125-10
 ;;9002226.02101,"868,63874-0125-14 ",.01)
 ;;63874-0125-14
 ;;9002226.02101,"868,63874-0125-14 ",.02)
 ;;63874-0125-14
 ;;9002226.02101,"868,63874-0125-15 ",.01)
 ;;63874-0125-15
 ;;9002226.02101,"868,63874-0125-15 ",.02)
 ;;63874-0125-15
 ;;9002226.02101,"868,63874-0125-20 ",.01)
 ;;63874-0125-20
 ;;9002226.02101,"868,63874-0125-20 ",.02)
 ;;63874-0125-20
 ;;9002226.02101,"868,63874-0125-21 ",.01)
 ;;63874-0125-21
 ;;9002226.02101,"868,63874-0125-21 ",.02)
 ;;63874-0125-21
 ;;9002226.02101,"868,63874-0125-24 ",.01)
 ;;63874-0125-24
 ;;9002226.02101,"868,63874-0125-24 ",.02)
 ;;63874-0125-24
 ;;9002226.02101,"868,63874-0125-28 ",.01)
 ;;63874-0125-28
 ;;9002226.02101,"868,63874-0125-28 ",.02)
 ;;63874-0125-28
 ;;9002226.02101,"868,63874-0125-30 ",.01)
 ;;63874-0125-30
 ;;9002226.02101,"868,63874-0125-30 ",.02)
 ;;63874-0125-30
 ;;9002226.02101,"868,63874-0125-40 ",.01)
 ;;63874-0125-40
 ;;9002226.02101,"868,63874-0125-40 ",.02)
 ;;63874-0125-40
 ;;9002226.02101,"868,63874-0125-60 ",.01)
 ;;63874-0125-60
 ;;9002226.02101,"868,63874-0125-60 ",.02)
 ;;63874-0125-60
 ;;9002226.02101,"868,63874-0125-80 ",.01)
 ;;63874-0125-80
 ;;9002226.02101,"868,63874-0125-80 ",.02)
 ;;63874-0125-80
 ;;9002226.02101,"868,63874-0127-01 ",.01)
 ;;63874-0127-01
 ;;9002226.02101,"868,63874-0127-01 ",.02)
 ;;63874-0127-01
 ;;9002226.02101,"868,63874-0127-05 ",.01)
 ;;63874-0127-05
 ;;9002226.02101,"868,63874-0127-05 ",.02)
 ;;63874-0127-05
 ;;9002226.02101,"868,63874-0127-18 ",.01)
 ;;63874-0127-18
 ;;9002226.02101,"868,63874-0127-18 ",.02)
 ;;63874-0127-18
 ;;9002226.02101,"868,63874-0127-20 ",.01)
 ;;63874-0127-20
 ;;9002226.02101,"868,63874-0127-20 ",.02)
 ;;63874-0127-20
 ;;9002226.02101,"868,63874-0127-21 ",.01)
 ;;63874-0127-21
 ;;9002226.02101,"868,63874-0127-21 ",.02)
 ;;63874-0127-21
 ;;9002226.02101,"868,63874-0127-28 ",.01)
 ;;63874-0127-28
 ;;9002226.02101,"868,63874-0127-28 ",.02)
 ;;63874-0127-28
 ;;9002226.02101,"868,63874-0127-30 ",.01)
 ;;63874-0127-30
 ;;9002226.02101,"868,63874-0127-30 ",.02)
 ;;63874-0127-30
 ;;9002226.02101,"868,63874-0127-40 ",.01)
 ;;63874-0127-40
 ;;9002226.02101,"868,63874-0127-40 ",.02)
 ;;63874-0127-40
 ;;9002226.02101,"868,63874-0127-42 ",.01)
 ;;63874-0127-42
 ;;9002226.02101,"868,63874-0127-42 ",.02)
 ;;63874-0127-42
 ;;9002226.02101,"868,63874-0143-10 ",.01)
 ;;63874-0143-10
 ;;9002226.02101,"868,63874-0143-10 ",.02)
 ;;63874-0143-10
 ;;9002226.02101,"868,63874-0143-15 ",.01)
 ;;63874-0143-15
 ;;9002226.02101,"868,63874-0143-15 ",.02)
 ;;63874-0143-15
 ;;9002226.02101,"868,63874-0143-80 ",.01)
 ;;63874-0143-80
 ;;9002226.02101,"868,63874-0143-80 ",.02)
 ;;63874-0143-80
 ;;9002226.02101,"868,63874-0144-10 ",.01)
 ;;63874-0144-10
 ;;9002226.02101,"868,63874-0144-10 ",.02)
 ;;63874-0144-10
 ;;9002226.02101,"868,63874-0144-15 ",.01)
 ;;63874-0144-15
 ;;9002226.02101,"868,63874-0144-15 ",.02)
 ;;63874-0144-15
 ;;9002226.02101,"868,63874-0146-10 ",.01)
 ;;63874-0146-10
 ;;9002226.02101,"868,63874-0146-10 ",.02)
 ;;63874-0146-10
 ;;9002226.02101,"868,63874-0146-15 ",.01)
 ;;63874-0146-15
 ;;9002226.02101,"868,63874-0146-15 ",.02)
 ;;63874-0146-15
 ;;9002226.02101,"868,63874-0146-20 ",.01)
 ;;63874-0146-20
 ;;9002226.02101,"868,63874-0146-20 ",.02)
 ;;63874-0146-20
 ;;9002226.02101,"868,63874-0150-10 ",.01)
 ;;63874-0150-10
 ;;9002226.02101,"868,63874-0150-10 ",.02)
 ;;63874-0150-10
 ;;9002226.02101,"868,63874-0150-20 ",.01)
 ;;63874-0150-20
 ;;9002226.02101,"868,63874-0150-20 ",.02)
 ;;63874-0150-20
 ;;9002226.02101,"868,63874-0155-10 ",.01)
 ;;63874-0155-10
 ;;9002226.02101,"868,63874-0155-10 ",.02)
 ;;63874-0155-10
 ;;9002226.02101,"868,63874-0155-20 ",.01)
 ;;63874-0155-20
 ;;9002226.02101,"868,63874-0155-20 ",.02)
 ;;63874-0155-20
 ;;9002226.02101,"868,63874-0156-10 ",.01)
 ;;63874-0156-10
 ;;9002226.02101,"868,63874-0156-10 ",.02)
 ;;63874-0156-10
 ;;9002226.02101,"868,63874-0156-15 ",.01)
 ;;63874-0156-15
 ;;9002226.02101,"868,63874-0156-15 ",.02)
 ;;63874-0156-15
 ;;9002226.02101,"868,63874-0156-20 ",.01)
 ;;63874-0156-20
 ;;9002226.02101,"868,63874-0156-20 ",.02)
 ;;63874-0156-20
 ;;9002226.02101,"868,63874-0159-10 ",.01)
 ;;63874-0159-10
 ;;9002226.02101,"868,63874-0159-10 ",.02)
 ;;63874-0159-10
 ;;9002226.02101,"868,63874-0159-20 ",.01)
 ;;63874-0159-20
 ;;9002226.02101,"868,63874-0159-20 ",.02)
 ;;63874-0159-20
 ;;9002226.02101,"868,63874-0160-10 ",.01)
 ;;63874-0160-10
 ;;9002226.02101,"868,63874-0160-10 ",.02)
 ;;63874-0160-10
 ;;9002226.02101,"868,63874-0160-20 ",.01)
 ;;63874-0160-20
 ;;9002226.02101,"868,63874-0160-20 ",.02)
 ;;63874-0160-20
 ;;9002226.02101,"868,63874-0160-48 ",.01)
 ;;63874-0160-48
 ;;9002226.02101,"868,63874-0160-48 ",.02)
 ;;63874-0160-48
 ;;9002226.02101,"868,63874-0166-10 ",.01)
 ;;63874-0166-10
 ;;9002226.02101,"868,63874-0166-10 ",.02)
 ;;63874-0166-10
 ;;9002226.02101,"868,63874-0166-20 ",.01)
 ;;63874-0166-20
 ;;9002226.02101,"868,63874-0166-20 ",.02)
 ;;63874-0166-20
 ;;9002226.02101,"868,63874-0170-10 ",.01)
 ;;63874-0170-10
 ;;9002226.02101,"868,63874-0170-10 ",.02)
 ;;63874-0170-10
 ;;9002226.02101,"868,63874-0170-20 ",.01)
 ;;63874-0170-20
 ;;9002226.02101,"868,63874-0170-20 ",.02)
 ;;63874-0170-20
 ;;9002226.02101,"868,63874-0232-01 ",.01)
 ;;63874-0232-01
 ;;9002226.02101,"868,63874-0232-01 ",.02)
 ;;63874-0232-01
 ;;9002226.02101,"868,63874-0232-02 ",.01)
 ;;63874-0232-02
 ;;9002226.02101,"868,63874-0232-02 ",.02)
 ;;63874-0232-02
 ;;9002226.02101,"868,63874-0232-03 ",.01)
 ;;63874-0232-03
 ;;9002226.02101,"868,63874-0232-03 ",.02)
 ;;63874-0232-03
 ;;9002226.02101,"868,63874-0232-10 ",.01)
 ;;63874-0232-10
 ;;9002226.02101,"868,63874-0232-10 ",.02)
 ;;63874-0232-10
 ;;9002226.02101,"868,63874-0232-12 ",.01)
 ;;63874-0232-12
 ;;9002226.02101,"868,63874-0232-12 ",.02)
 ;;63874-0232-12
 ;;9002226.02101,"868,63874-0232-16 ",.01)
 ;;63874-0232-16
 ;;9002226.02101,"868,63874-0232-16 ",.02)
 ;;63874-0232-16
 ;;9002226.02101,"868,63874-0232-20 ",.01)
 ;;63874-0232-20
 ;;9002226.02101,"868,63874-0232-20 ",.02)
 ;;63874-0232-20
 ;;9002226.02101,"868,63874-0232-21 ",.01)
 ;;63874-0232-21