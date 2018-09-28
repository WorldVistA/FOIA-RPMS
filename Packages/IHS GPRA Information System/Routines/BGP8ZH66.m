BGP8ZH66 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,63874-0232-21 ",.02)
 ;;63874-0232-21
 ;;9002226.02101,"868,63874-0232-24 ",.01)
 ;;63874-0232-24
 ;;9002226.02101,"868,63874-0232-24 ",.02)
 ;;63874-0232-24
 ;;9002226.02101,"868,63874-0232-28 ",.01)
 ;;63874-0232-28
 ;;9002226.02101,"868,63874-0232-28 ",.02)
 ;;63874-0232-28
 ;;9002226.02101,"868,63874-0232-30 ",.01)
 ;;63874-0232-30
 ;;9002226.02101,"868,63874-0232-30 ",.02)
 ;;63874-0232-30
 ;;9002226.02101,"868,63874-0232-40 ",.01)
 ;;63874-0232-40
 ;;9002226.02101,"868,63874-0232-40 ",.02)
 ;;63874-0232-40
 ;;9002226.02101,"868,63874-0232-50 ",.01)
 ;;63874-0232-50
 ;;9002226.02101,"868,63874-0232-50 ",.02)
 ;;63874-0232-50
 ;;9002226.02101,"868,63874-0233-01 ",.01)
 ;;63874-0233-01
 ;;9002226.02101,"868,63874-0233-01 ",.02)
 ;;63874-0233-01
 ;;9002226.02101,"868,63874-0233-02 ",.01)
 ;;63874-0233-02
 ;;9002226.02101,"868,63874-0233-02 ",.02)
 ;;63874-0233-02
 ;;9002226.02101,"868,63874-0233-06 ",.01)
 ;;63874-0233-06
 ;;9002226.02101,"868,63874-0233-06 ",.02)
 ;;63874-0233-06
 ;;9002226.02101,"868,63874-0233-10 ",.01)
 ;;63874-0233-10
 ;;9002226.02101,"868,63874-0233-10 ",.02)
 ;;63874-0233-10
 ;;9002226.02101,"868,63874-0233-12 ",.01)
 ;;63874-0233-12
 ;;9002226.02101,"868,63874-0233-12 ",.02)
 ;;63874-0233-12
 ;;9002226.02101,"868,63874-0233-15 ",.01)
 ;;63874-0233-15
 ;;9002226.02101,"868,63874-0233-15 ",.02)
 ;;63874-0233-15
 ;;9002226.02101,"868,63874-0233-16 ",.01)
 ;;63874-0233-16
 ;;9002226.02101,"868,63874-0233-16 ",.02)
 ;;63874-0233-16
 ;;9002226.02101,"868,63874-0233-20 ",.01)
 ;;63874-0233-20
 ;;9002226.02101,"868,63874-0233-20 ",.02)
 ;;63874-0233-20
 ;;9002226.02101,"868,63874-0233-24 ",.01)
 ;;63874-0233-24
 ;;9002226.02101,"868,63874-0233-24 ",.02)
 ;;63874-0233-24
 ;;9002226.02101,"868,63874-0233-28 ",.01)
 ;;63874-0233-28
 ;;9002226.02101,"868,63874-0233-28 ",.02)
 ;;63874-0233-28
 ;;9002226.02101,"868,63874-0233-30 ",.01)
 ;;63874-0233-30
 ;;9002226.02101,"868,63874-0233-30 ",.02)
 ;;63874-0233-30
 ;;9002226.02101,"868,63874-0233-36 ",.01)
 ;;63874-0233-36
 ;;9002226.02101,"868,63874-0233-36 ",.02)
 ;;63874-0233-36
 ;;9002226.02101,"868,63874-0233-40 ",.01)
 ;;63874-0233-40
 ;;9002226.02101,"868,63874-0233-40 ",.02)
 ;;63874-0233-40
 ;;9002226.02101,"868,63874-0233-50 ",.01)
 ;;63874-0233-50
 ;;9002226.02101,"868,63874-0233-50 ",.02)
 ;;63874-0233-50
 ;;9002226.02101,"868,63874-0233-60 ",.01)
 ;;63874-0233-60
 ;;9002226.02101,"868,63874-0233-60 ",.02)
 ;;63874-0233-60
 ;;9002226.02101,"868,63874-0235-01 ",.01)
 ;;63874-0235-01
 ;;9002226.02101,"868,63874-0235-01 ",.02)
 ;;63874-0235-01
 ;;9002226.02101,"868,63874-0235-04 ",.01)
 ;;63874-0235-04
 ;;9002226.02101,"868,63874-0235-04 ",.02)
 ;;63874-0235-04
 ;;9002226.02101,"868,63874-0235-10 ",.01)
 ;;63874-0235-10
 ;;9002226.02101,"868,63874-0235-10 ",.02)
 ;;63874-0235-10
 ;;9002226.02101,"868,63874-0235-12 ",.01)
 ;;63874-0235-12
 ;;9002226.02101,"868,63874-0235-12 ",.02)
 ;;63874-0235-12
 ;;9002226.02101,"868,63874-0235-15 ",.01)
 ;;63874-0235-15
 ;;9002226.02101,"868,63874-0235-15 ",.02)
 ;;63874-0235-15
 ;;9002226.02101,"868,63874-0235-16 ",.01)
 ;;63874-0235-16
 ;;9002226.02101,"868,63874-0235-16 ",.02)
 ;;63874-0235-16
 ;;9002226.02101,"868,63874-0235-20 ",.01)
 ;;63874-0235-20
 ;;9002226.02101,"868,63874-0235-20 ",.02)
 ;;63874-0235-20
 ;;9002226.02101,"868,63874-0235-21 ",.01)
 ;;63874-0235-21
 ;;9002226.02101,"868,63874-0235-21 ",.02)
 ;;63874-0235-21
 ;;9002226.02101,"868,63874-0235-28 ",.01)
 ;;63874-0235-28
 ;;9002226.02101,"868,63874-0235-28 ",.02)
 ;;63874-0235-28
 ;;9002226.02101,"868,63874-0235-30 ",.01)
 ;;63874-0235-30
 ;;9002226.02101,"868,63874-0235-30 ",.02)
 ;;63874-0235-30
 ;;9002226.02101,"868,63874-0235-40 ",.01)
 ;;63874-0235-40
 ;;9002226.02101,"868,63874-0235-40 ",.02)
 ;;63874-0235-40
 ;;9002226.02101,"868,63874-0235-56 ",.01)
 ;;63874-0235-56
 ;;9002226.02101,"868,63874-0235-56 ",.02)
 ;;63874-0235-56
 ;;9002226.02101,"868,63874-0235-80 ",.01)
 ;;63874-0235-80
 ;;9002226.02101,"868,63874-0235-80 ",.02)
 ;;63874-0235-80
 ;;9002226.02101,"868,63874-0237-05 ",.01)
 ;;63874-0237-05
 ;;9002226.02101,"868,63874-0237-05 ",.02)
 ;;63874-0237-05
 ;;9002226.02101,"868,63874-0237-50 ",.01)
 ;;63874-0237-50
 ;;9002226.02101,"868,63874-0237-50 ",.02)
 ;;63874-0237-50
 ;;9002226.02101,"868,63874-0239-20 ",.01)
 ;;63874-0239-20
 ;;9002226.02101,"868,63874-0239-20 ",.02)
 ;;63874-0239-20
 ;;9002226.02101,"868,63874-0239-30 ",.01)
 ;;63874-0239-30
 ;;9002226.02101,"868,63874-0239-30 ",.02)
 ;;63874-0239-30
 ;;9002226.02101,"868,63874-0241-15 ",.01)
 ;;63874-0241-15
 ;;9002226.02101,"868,63874-0241-15 ",.02)
 ;;63874-0241-15
 ;;9002226.02101,"868,63874-0241-20 ",.01)
 ;;63874-0241-20
 ;;9002226.02101,"868,63874-0241-20 ",.02)
 ;;63874-0241-20
 ;;9002226.02101,"868,63874-0241-30 ",.01)
 ;;63874-0241-30
 ;;9002226.02101,"868,63874-0241-30 ",.02)
 ;;63874-0241-30
 ;;9002226.02101,"868,63874-0241-50 ",.01)
 ;;63874-0241-50
 ;;9002226.02101,"868,63874-0241-50 ",.02)
 ;;63874-0241-50
 ;;9002226.02101,"868,63874-0241-60 ",.01)
 ;;63874-0241-60
 ;;9002226.02101,"868,63874-0241-60 ",.02)
 ;;63874-0241-60
 ;;9002226.02101,"868,63874-0246-00 ",.01)
 ;;63874-0246-00
 ;;9002226.02101,"868,63874-0246-00 ",.02)
 ;;63874-0246-00
 ;;9002226.02101,"868,63874-0246-04 ",.01)
 ;;63874-0246-04
 ;;9002226.02101,"868,63874-0246-04 ",.02)
 ;;63874-0246-04
 ;;9002226.02101,"868,63874-0246-06 ",.01)
 ;;63874-0246-06
 ;;9002226.02101,"868,63874-0246-06 ",.02)
 ;;63874-0246-06
 ;;9002226.02101,"868,63874-0246-10 ",.01)
 ;;63874-0246-10
 ;;9002226.02101,"868,63874-0246-10 ",.02)
 ;;63874-0246-10
 ;;9002226.02101,"868,63874-0246-15 ",.01)
 ;;63874-0246-15
 ;;9002226.02101,"868,63874-0246-15 ",.02)
 ;;63874-0246-15
 ;;9002226.02101,"868,63874-0523-01 ",.01)
 ;;63874-0523-01
 ;;9002226.02101,"868,63874-0523-01 ",.02)
 ;;63874-0523-01
 ;;9002226.02101,"868,63874-0523-03 ",.01)
 ;;63874-0523-03
 ;;9002226.02101,"868,63874-0523-03 ",.02)
 ;;63874-0523-03
 ;;9002226.02101,"868,63874-0523-05 ",.01)
 ;;63874-0523-05
 ;;9002226.02101,"868,63874-0523-05 ",.02)
 ;;63874-0523-05
 ;;9002226.02101,"868,63874-0523-06 ",.01)
 ;;63874-0523-06
 ;;9002226.02101,"868,63874-0523-06 ",.02)
 ;;63874-0523-06
 ;;9002226.02101,"868,63874-0523-07 ",.01)
 ;;63874-0523-07
 ;;9002226.02101,"868,63874-0523-07 ",.02)
 ;;63874-0523-07
 ;;9002226.02101,"868,63874-0523-10 ",.01)
 ;;63874-0523-10
 ;;9002226.02101,"868,63874-0523-10 ",.02)
 ;;63874-0523-10
 ;;9002226.02101,"868,63874-0523-14 ",.01)
 ;;63874-0523-14
 ;;9002226.02101,"868,63874-0523-14 ",.02)
 ;;63874-0523-14
 ;;9002226.02101,"868,63874-0523-20 ",.01)
 ;;63874-0523-20
 ;;9002226.02101,"868,63874-0523-20 ",.02)
 ;;63874-0523-20
 ;;9002226.02101,"868,63874-0523-30 ",.01)
 ;;63874-0523-30
 ;;9002226.02101,"868,63874-0523-30 ",.02)
 ;;63874-0523-30
 ;;9002226.02101,"868,63874-0533-01 ",.01)
 ;;63874-0533-01
 ;;9002226.02101,"868,63874-0533-01 ",.02)
 ;;63874-0533-01
 ;;9002226.02101,"868,63874-0533-04 ",.01)
 ;;63874-0533-04
 ;;9002226.02101,"868,63874-0533-04 ",.02)
 ;;63874-0533-04
 ;;9002226.02101,"868,63874-0533-10 ",.01)
 ;;63874-0533-10
 ;;9002226.02101,"868,63874-0533-10 ",.02)
 ;;63874-0533-10
 ;;9002226.02101,"868,63874-0533-12 ",.01)
 ;;63874-0533-12
 ;;9002226.02101,"868,63874-0533-12 ",.02)
 ;;63874-0533-12
 ;;9002226.02101,"868,63874-0533-14 ",.01)
 ;;63874-0533-14
 ;;9002226.02101,"868,63874-0533-14 ",.02)
 ;;63874-0533-14
 ;;9002226.02101,"868,63874-0533-15 ",.01)
 ;;63874-0533-15
 ;;9002226.02101,"868,63874-0533-15 ",.02)
 ;;63874-0533-15
 ;;9002226.02101,"868,63874-0533-20 ",.01)
 ;;63874-0533-20
 ;;9002226.02101,"868,63874-0533-20 ",.02)
 ;;63874-0533-20
 ;;9002226.02101,"868,63874-0533-25 ",.01)
 ;;63874-0533-25
 ;;9002226.02101,"868,63874-0533-25 ",.02)
 ;;63874-0533-25
 ;;9002226.02101,"868,63874-0533-28 ",.01)
 ;;63874-0533-28
 ;;9002226.02101,"868,63874-0533-28 ",.02)
 ;;63874-0533-28
 ;;9002226.02101,"868,63874-0533-30 ",.01)
 ;;63874-0533-30
 ;;9002226.02101,"868,63874-0533-30 ",.02)
 ;;63874-0533-30
 ;;9002226.02101,"868,63874-0533-40 ",.01)
 ;;63874-0533-40
 ;;9002226.02101,"868,63874-0533-40 ",.02)
 ;;63874-0533-40
 ;;9002226.02101,"868,63874-0533-60 ",.01)
 ;;63874-0533-60
 ;;9002226.02101,"868,63874-0533-60 ",.02)
 ;;63874-0533-60
 ;;9002226.02101,"868,63874-0533-72 ",.01)
 ;;63874-0533-72
 ;;9002226.02101,"868,63874-0533-72 ",.02)
 ;;63874-0533-72
 ;;9002226.02101,"868,63874-0533-74 ",.01)
 ;;63874-0533-74
 ;;9002226.02101,"868,63874-0533-74 ",.02)
 ;;63874-0533-74
 ;;9002226.02101,"868,63874-0533-77 ",.01)
 ;;63874-0533-77
 ;;9002226.02101,"868,63874-0533-77 ",.02)
 ;;63874-0533-77
 ;;9002226.02101,"868,63874-0533-90 ",.01)
 ;;63874-0533-90
 ;;9002226.02101,"868,63874-0533-90 ",.02)
 ;;63874-0533-90
 ;;9002226.02101,"868,63874-1086-06 ",.01)
 ;;63874-1086-06
 ;;9002226.02101,"868,63874-1086-06 ",.02)
 ;;63874-1086-06
 ;;9002226.02101,"868,63874-1112-02 ",.01)
 ;;63874-1112-02
 ;;9002226.02101,"868,63874-1112-02 ",.02)
 ;;63874-1112-02
 ;;9002226.02101,"868,64038-0033-01 ",.01)
 ;;64038-0033-01
 ;;9002226.02101,"868,64038-0033-01 ",.02)
 ;;64038-0033-01
 ;;9002226.02101,"868,64038-0033-40 ",.01)
 ;;64038-0033-40
 ;;9002226.02101,"868,64038-0033-40 ",.02)
 ;;64038-0033-40
 ;;9002226.02101,"868,64376-0130-01 ",.01)
 ;;64376-0130-01
 ;;9002226.02101,"868,64376-0130-01 ",.02)
 ;;64376-0130-01
 ;;9002226.02101,"868,64376-0130-55 ",.01)
 ;;64376-0130-55
 ;;9002226.02101,"868,64376-0130-55 ",.02)
 ;;64376-0130-55
 ;;9002226.02101,"868,64376-0131-01 ",.01)
 ;;64376-0131-01
 ;;9002226.02101,"868,64376-0131-01 ",.02)
 ;;64376-0131-01
 ;;9002226.02101,"868,64376-0131-51 ",.01)
 ;;64376-0131-51
 ;;9002226.02101,"868,64376-0131-51 ",.02)
 ;;64376-0131-51
 ;;9002226.02101,"868,64376-0131-55 ",.01)
 ;;64376-0131-55
 ;;9002226.02101,"868,64376-0131-55 ",.02)
 ;;64376-0131-55
 ;;9002226.02101,"868,64376-0132-01 ",.01)
 ;;64376-0132-01
 ;;9002226.02101,"868,64376-0132-01 ",.02)
 ;;64376-0132-01
 ;;9002226.02101,"868,64376-0132-22 ",.01)
 ;;64376-0132-22
 ;;9002226.02101,"868,64376-0132-22 ",.02)
 ;;64376-0132-22
 ;;9002226.02101,"868,64376-0132-55 ",.01)
 ;;64376-0132-55
 ;;9002226.02101,"868,64376-0132-55 ",.02)
 ;;64376-0132-55
 ;;9002226.02101,"868,64679-0544-02 ",.01)
 ;;64679-0544-02
 ;;9002226.02101,"868,64679-0544-02 ",.02)
 ;;64679-0544-02
 ;;9002226.02101,"868,64679-0544-03 ",.01)
 ;;64679-0544-03
 ;;9002226.02101,"868,64679-0544-03 ",.02)
 ;;64679-0544-03
 ;;9002226.02101,"868,64679-0545-02 ",.01)
 ;;64679-0545-02
 ;;9002226.02101,"868,64679-0545-02 ",.02)
 ;;64679-0545-02
 ;;9002226.02101,"868,64679-0545-03 ",.01)
 ;;64679-0545-03
 ;;9002226.02101,"868,64679-0545-03 ",.02)
 ;;64679-0545-03
 ;;9002226.02101,"868,64679-0547-01 ",.01)
 ;;64679-0547-01
 ;;9002226.02101,"868,64679-0547-01 ",.02)
 ;;64679-0547-01
 ;;9002226.02101,"868,64679-0547-02 ",.01)
 ;;64679-0547-02
 ;;9002226.02101,"868,64679-0547-02 ",.02)
 ;;64679-0547-02
 ;;9002226.02101,"868,64679-0547-03 ",.01)
 ;;64679-0547-03
 ;;9002226.02101,"868,64679-0547-03 ",.02)
 ;;64679-0547-03
 ;;9002226.02101,"868,64679-0701-01 ",.01)
 ;;64679-0701-01
 ;;9002226.02101,"868,64679-0701-01 ",.02)
 ;;64679-0701-01
 ;;9002226.02101,"868,64679-0701-02 ",.01)
 ;;64679-0701-02
 ;;9002226.02101,"868,64679-0701-02 ",.02)
 ;;64679-0701-02
 ;;9002226.02101,"868,64679-0701-03 ",.01)
 ;;64679-0701-03
 ;;9002226.02101,"868,64679-0701-03 ",.02)
 ;;64679-0701-03
 ;;9002226.02101,"868,64679-0702-01 ",.01)
 ;;64679-0702-01
 ;;9002226.02101,"868,64679-0702-01 ",.02)
 ;;64679-0702-01
 ;;9002226.02101,"868,64679-0702-02 ",.01)
 ;;64679-0702-02