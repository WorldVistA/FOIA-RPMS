BGP8ZH48 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,52959-0702-21 ",.02)
 ;;52959-0702-21
 ;;9002226.02101,"868,52959-0702-30 ",.01)
 ;;52959-0702-30
 ;;9002226.02101,"868,52959-0702-30 ",.02)
 ;;52959-0702-30
 ;;9002226.02101,"868,52959-0702-40 ",.01)
 ;;52959-0702-40
 ;;9002226.02101,"868,52959-0702-40 ",.02)
 ;;52959-0702-40
 ;;9002226.02101,"868,52959-0707-10 ",.01)
 ;;52959-0707-10
 ;;9002226.02101,"868,52959-0707-10 ",.02)
 ;;52959-0707-10
 ;;9002226.02101,"868,52959-0707-14 ",.01)
 ;;52959-0707-14
 ;;9002226.02101,"868,52959-0707-14 ",.02)
 ;;52959-0707-14
 ;;9002226.02101,"868,52959-0707-15 ",.01)
 ;;52959-0707-15
 ;;9002226.02101,"868,52959-0707-15 ",.02)
 ;;52959-0707-15
 ;;9002226.02101,"868,52959-0707-20 ",.01)
 ;;52959-0707-20
 ;;9002226.02101,"868,52959-0707-20 ",.02)
 ;;52959-0707-20
 ;;9002226.02101,"868,52959-0707-30 ",.01)
 ;;52959-0707-30
 ;;9002226.02101,"868,52959-0707-30 ",.02)
 ;;52959-0707-30
 ;;9002226.02101,"868,52959-0707-60 ",.01)
 ;;52959-0707-60
 ;;9002226.02101,"868,52959-0707-60 ",.02)
 ;;52959-0707-60
 ;;9002226.02101,"868,52959-0730-00 ",.01)
 ;;52959-0730-00
 ;;9002226.02101,"868,52959-0730-00 ",.02)
 ;;52959-0730-00
 ;;9002226.02101,"868,52959-0730-04 ",.01)
 ;;52959-0730-04
 ;;9002226.02101,"868,52959-0730-04 ",.02)
 ;;52959-0730-04
 ;;9002226.02101,"868,52959-0730-06 ",.01)
 ;;52959-0730-06
 ;;9002226.02101,"868,52959-0730-06 ",.02)
 ;;52959-0730-06
 ;;9002226.02101,"868,52959-0730-10 ",.01)
 ;;52959-0730-10
 ;;9002226.02101,"868,52959-0730-10 ",.02)
 ;;52959-0730-10
 ;;9002226.02101,"868,52959-0730-14 ",.01)
 ;;52959-0730-14
 ;;9002226.02101,"868,52959-0730-14 ",.02)
 ;;52959-0730-14
 ;;9002226.02101,"868,52959-0730-15 ",.01)
 ;;52959-0730-15
 ;;9002226.02101,"868,52959-0730-15 ",.02)
 ;;52959-0730-15
 ;;9002226.02101,"868,52959-0730-20 ",.01)
 ;;52959-0730-20
 ;;9002226.02101,"868,52959-0730-20 ",.02)
 ;;52959-0730-20
 ;;9002226.02101,"868,52959-0730-21 ",.01)
 ;;52959-0730-21
 ;;9002226.02101,"868,52959-0730-21 ",.02)
 ;;52959-0730-21
 ;;9002226.02101,"868,52959-0730-28 ",.01)
 ;;52959-0730-28
 ;;9002226.02101,"868,52959-0730-28 ",.02)
 ;;52959-0730-28
 ;;9002226.02101,"868,52959-0730-30 ",.01)
 ;;52959-0730-30
 ;;9002226.02101,"868,52959-0730-30 ",.02)
 ;;52959-0730-30
 ;;9002226.02101,"868,52959-0730-60 ",.01)
 ;;52959-0730-60
 ;;9002226.02101,"868,52959-0730-60 ",.02)
 ;;52959-0730-60
 ;;9002226.02101,"868,52959-0734-14 ",.01)
 ;;52959-0734-14
 ;;9002226.02101,"868,52959-0734-14 ",.02)
 ;;52959-0734-14
 ;;9002226.02101,"868,52959-0734-20 ",.01)
 ;;52959-0734-20
 ;;9002226.02101,"868,52959-0734-20 ",.02)
 ;;52959-0734-20
 ;;9002226.02101,"868,52959-0734-30 ",.01)
 ;;52959-0734-30
 ;;9002226.02101,"868,52959-0734-30 ",.02)
 ;;52959-0734-30
 ;;9002226.02101,"868,52959-0734-60 ",.01)
 ;;52959-0734-60
 ;;9002226.02101,"868,52959-0734-60 ",.02)
 ;;52959-0734-60
 ;;9002226.02101,"868,52959-0739-06 ",.01)
 ;;52959-0739-06
 ;;9002226.02101,"868,52959-0739-06 ",.02)
 ;;52959-0739-06
 ;;9002226.02101,"868,52959-0739-10 ",.01)
 ;;52959-0739-10
 ;;9002226.02101,"868,52959-0739-10 ",.02)
 ;;52959-0739-10
 ;;9002226.02101,"868,52959-0739-14 ",.01)
 ;;52959-0739-14
 ;;9002226.02101,"868,52959-0739-14 ",.02)
 ;;52959-0739-14
 ;;9002226.02101,"868,52959-0739-20 ",.01)
 ;;52959-0739-20
 ;;9002226.02101,"868,52959-0739-20 ",.02)
 ;;52959-0739-20
 ;;9002226.02101,"868,52959-0744-20 ",.01)
 ;;52959-0744-20
 ;;9002226.02101,"868,52959-0744-20 ",.02)
 ;;52959-0744-20
 ;;9002226.02101,"868,52959-0744-30 ",.01)
 ;;52959-0744-30
 ;;9002226.02101,"868,52959-0744-30 ",.02)
 ;;52959-0744-30
 ;;9002226.02101,"868,52959-0744-40 ",.01)
 ;;52959-0744-40
 ;;9002226.02101,"868,52959-0744-40 ",.02)
 ;;52959-0744-40
 ;;9002226.02101,"868,52959-0744-42 ",.01)
 ;;52959-0744-42
 ;;9002226.02101,"868,52959-0744-42 ",.02)
 ;;52959-0744-42
 ;;9002226.02101,"868,52959-0765-01 ",.01)
 ;;52959-0765-01
 ;;9002226.02101,"868,52959-0765-01 ",.02)
 ;;52959-0765-01
 ;;9002226.02101,"868,52959-0765-02 ",.01)
 ;;52959-0765-02
 ;;9002226.02101,"868,52959-0765-02 ",.02)
 ;;52959-0765-02
 ;;9002226.02101,"868,52959-0766-03 ",.01)
 ;;52959-0766-03
 ;;9002226.02101,"868,52959-0766-03 ",.02)
 ;;52959-0766-03
 ;;9002226.02101,"868,52959-0766-05 ",.01)
 ;;52959-0766-05
 ;;9002226.02101,"868,52959-0766-05 ",.02)
 ;;52959-0766-05
 ;;9002226.02101,"868,52959-0766-07 ",.01)
 ;;52959-0766-07
 ;;9002226.02101,"868,52959-0766-07 ",.02)
 ;;52959-0766-07
 ;;9002226.02101,"868,52959-0782-10 ",.01)
 ;;52959-0782-10
 ;;9002226.02101,"868,52959-0782-10 ",.02)
 ;;52959-0782-10
 ;;9002226.02101,"868,52959-0782-20 ",.01)
 ;;52959-0782-20
 ;;9002226.02101,"868,52959-0782-20 ",.02)
 ;;52959-0782-20
 ;;9002226.02101,"868,52959-0784-04 ",.01)
 ;;52959-0784-04
 ;;9002226.02101,"868,52959-0784-04 ",.02)
 ;;52959-0784-04
 ;;9002226.02101,"868,52959-0784-16 ",.01)
 ;;52959-0784-16
 ;;9002226.02101,"868,52959-0784-16 ",.02)
 ;;52959-0784-16
 ;;9002226.02101,"868,52959-0784-21 ",.01)
 ;;52959-0784-21
 ;;9002226.02101,"868,52959-0784-21 ",.02)
 ;;52959-0784-21
 ;;9002226.02101,"868,52959-0784-28 ",.01)
 ;;52959-0784-28
 ;;9002226.02101,"868,52959-0784-28 ",.02)
 ;;52959-0784-28
 ;;9002226.02101,"868,52959-0784-30 ",.01)
 ;;52959-0784-30
 ;;9002226.02101,"868,52959-0784-30 ",.02)
 ;;52959-0784-30
 ;;9002226.02101,"868,52959-0784-40 ",.01)
 ;;52959-0784-40
 ;;9002226.02101,"868,52959-0784-40 ",.02)
 ;;52959-0784-40
 ;;9002226.02101,"868,52959-0796-10 ",.01)
 ;;52959-0796-10
 ;;9002226.02101,"868,52959-0796-10 ",.02)
 ;;52959-0796-10
 ;;9002226.02101,"868,52959-0816-20 ",.01)
 ;;52959-0816-20
 ;;9002226.02101,"868,52959-0816-20 ",.02)
 ;;52959-0816-20
 ;;9002226.02101,"868,52959-0816-28 ",.01)
 ;;52959-0816-28
 ;;9002226.02101,"868,52959-0816-28 ",.02)
 ;;52959-0816-28
 ;;9002226.02101,"868,52959-0816-30 ",.01)
 ;;52959-0816-30
 ;;9002226.02101,"868,52959-0816-30 ",.02)
 ;;52959-0816-30
 ;;9002226.02101,"868,52959-0836-10 ",.01)
 ;;52959-0836-10
 ;;9002226.02101,"868,52959-0836-10 ",.02)
 ;;52959-0836-10
 ;;9002226.02101,"868,52959-0836-14 ",.01)
 ;;52959-0836-14
 ;;9002226.02101,"868,52959-0836-14 ",.02)
 ;;52959-0836-14
 ;;9002226.02101,"868,52959-0836-20 ",.01)
 ;;52959-0836-20
 ;;9002226.02101,"868,52959-0836-20 ",.02)
 ;;52959-0836-20
 ;;9002226.02101,"868,52959-0836-60 ",.01)
 ;;52959-0836-60
 ;;9002226.02101,"868,52959-0836-60 ",.02)
 ;;52959-0836-60
 ;;9002226.02101,"868,52959-0838-06 ",.01)
 ;;52959-0838-06
 ;;9002226.02101,"868,52959-0838-06 ",.02)
 ;;52959-0838-06
 ;;9002226.02101,"868,52959-0843-01 ",.01)
 ;;52959-0843-01
 ;;9002226.02101,"868,52959-0843-01 ",.02)
 ;;52959-0843-01
 ;;9002226.02101,"868,52959-0932-30 ",.01)
 ;;52959-0932-30
 ;;9002226.02101,"868,52959-0932-30 ",.02)
 ;;52959-0932-30
 ;;9002226.02101,"868,52959-0939-20 ",.01)
 ;;52959-0939-20
 ;;9002226.02101,"868,52959-0939-20 ",.02)
 ;;52959-0939-20
 ;;9002226.02101,"868,52959-0939-30 ",.01)
 ;;52959-0939-30
 ;;9002226.02101,"868,52959-0939-30 ",.02)
 ;;52959-0939-30
 ;;9002226.02101,"868,52959-1055-00 ",.01)
 ;;52959-1055-00
 ;;9002226.02101,"868,52959-1055-00 ",.02)
 ;;52959-1055-00
 ;;9002226.02101,"868,52959-1055-01 ",.01)
 ;;52959-1055-01
 ;;9002226.02101,"868,52959-1055-01 ",.02)
 ;;52959-1055-01
 ;;9002226.02101,"868,52959-1425-03 ",.01)
 ;;52959-1425-03
 ;;9002226.02101,"868,52959-1425-03 ",.02)
 ;;52959-1425-03
 ;;9002226.02101,"868,52959-1452-01 ",.01)
 ;;52959-1452-01
 ;;9002226.02101,"868,52959-1452-01 ",.02)
 ;;52959-1452-01
 ;;9002226.02101,"868,52959-1452-02 ",.01)
 ;;52959-1452-02
 ;;9002226.02101,"868,52959-1452-02 ",.02)
 ;;52959-1452-02
 ;;9002226.02101,"868,52959-1462-00 ",.01)
 ;;52959-1462-00
 ;;9002226.02101,"868,52959-1462-00 ",.02)
 ;;52959-1462-00
 ;;9002226.02101,"868,53489-0118-02 ",.01)
 ;;53489-0118-02
 ;;9002226.02101,"868,53489-0118-02 ",.02)
 ;;53489-0118-02
 ;;9002226.02101,"868,53489-0118-05 ",.01)
 ;;53489-0118-05
 ;;9002226.02101,"868,53489-0118-05 ",.02)
 ;;53489-0118-05
 ;;9002226.02101,"868,53489-0119-02 ",.01)
 ;;53489-0119-02
 ;;9002226.02101,"868,53489-0119-02 ",.02)
 ;;53489-0119-02
 ;;9002226.02101,"868,53489-0119-05 ",.01)
 ;;53489-0119-05
 ;;9002226.02101,"868,53489-0119-05 ",.02)
 ;;53489-0119-05
 ;;9002226.02101,"868,53489-0120-02 ",.01)
 ;;53489-0120-02
 ;;9002226.02101,"868,53489-0120-02 ",.02)
 ;;53489-0120-02
 ;;9002226.02101,"868,53489-0120-05 ",.01)
 ;;53489-0120-05
 ;;9002226.02101,"868,53489-0120-05 ",.02)
 ;;53489-0120-05
 ;;9002226.02101,"868,53489-0145-01 ",.01)
 ;;53489-0145-01
 ;;9002226.02101,"868,53489-0145-01 ",.02)
 ;;53489-0145-01
 ;;9002226.02101,"868,53489-0145-05 ",.01)
 ;;53489-0145-05
 ;;9002226.02101,"868,53489-0145-05 ",.02)
 ;;53489-0145-05
 ;;9002226.02101,"868,53489-0146-01 ",.01)
 ;;53489-0146-01
 ;;9002226.02101,"868,53489-0146-01 ",.02)
 ;;53489-0146-01
 ;;9002226.02101,"868,53489-0146-05 ",.01)
 ;;53489-0146-05
 ;;9002226.02101,"868,53489-0146-05 ",.02)
 ;;53489-0146-05
 ;;9002226.02101,"868,53489-0647-01 ",.01)
 ;;53489-0647-01
 ;;9002226.02101,"868,53489-0647-01 ",.02)
 ;;53489-0647-01
 ;;9002226.02101,"868,53746-0271-01 ",.01)
 ;;53746-0271-01
 ;;9002226.02101,"868,53746-0271-01 ",.02)
 ;;53746-0271-01
 ;;9002226.02101,"868,53746-0271-05 ",.01)
 ;;53746-0271-05
 ;;9002226.02101,"868,53746-0271-05 ",.02)
 ;;53746-0271-05
 ;;9002226.02101,"868,53746-0272-01 ",.01)
 ;;53746-0272-01
 ;;9002226.02101,"868,53746-0272-01 ",.02)
 ;;53746-0272-01
 ;;9002226.02101,"868,53746-0272-05 ",.01)
 ;;53746-0272-05
 ;;9002226.02101,"868,53746-0272-05 ",.02)
 ;;53746-0272-05
 ;;9002226.02101,"868,54348-0575-02 ",.01)
 ;;54348-0575-02
 ;;9002226.02101,"868,54348-0575-02 ",.02)
 ;;54348-0575-02
 ;;9002226.02101,"868,54348-0854-04 ",.01)
 ;;54348-0854-04
 ;;9002226.02101,"868,54348-0854-04 ",.02)
 ;;54348-0854-04
 ;;9002226.02101,"868,54531-0100-01 ",.01)
 ;;54531-0100-01
 ;;9002226.02101,"868,54531-0100-01 ",.02)
 ;;54531-0100-01
 ;;9002226.02101,"868,54569-0075-00 ",.01)
 ;;54569-0075-00
 ;;9002226.02101,"868,54569-0075-00 ",.02)
 ;;54569-0075-00
 ;;9002226.02101,"868,54569-0075-01 ",.01)
 ;;54569-0075-01
 ;;9002226.02101,"868,54569-0075-01 ",.02)
 ;;54569-0075-01
 ;;9002226.02101,"868,54569-0075-02 ",.01)
 ;;54569-0075-02
 ;;9002226.02101,"868,54569-0075-02 ",.02)
 ;;54569-0075-02
 ;;9002226.02101,"868,54569-0075-03 ",.01)
 ;;54569-0075-03
 ;;9002226.02101,"868,54569-0075-03 ",.02)
 ;;54569-0075-03
 ;;9002226.02101,"868,54569-0075-05 ",.01)
 ;;54569-0075-05
 ;;9002226.02101,"868,54569-0075-05 ",.02)
 ;;54569-0075-05
 ;;9002226.02101,"868,54569-0075-07 ",.01)
 ;;54569-0075-07
 ;;9002226.02101,"868,54569-0075-07 ",.02)
 ;;54569-0075-07
 ;;9002226.02101,"868,54569-0075-09 ",.01)
 ;;54569-0075-09
 ;;9002226.02101,"868,54569-0075-09 ",.02)
 ;;54569-0075-09
 ;;9002226.02101,"868,54569-0118-00 ",.01)
 ;;54569-0118-00
 ;;9002226.02101,"868,54569-0118-00 ",.02)
 ;;54569-0118-00
 ;;9002226.02101,"868,54569-0118-01 ",.01)
 ;;54569-0118-01
 ;;9002226.02101,"868,54569-0118-01 ",.02)
 ;;54569-0118-01
 ;;9002226.02101,"868,54569-0118-02 ",.01)
 ;;54569-0118-02
 ;;9002226.02101,"868,54569-0118-02 ",.02)
 ;;54569-0118-02
 ;;9002226.02101,"868,54569-0118-03 ",.01)
 ;;54569-0118-03
 ;;9002226.02101,"868,54569-0118-03 ",.02)
 ;;54569-0118-03
 ;;9002226.02101,"868,54569-0118-05 ",.01)
 ;;54569-0118-05
 ;;9002226.02101,"868,54569-0118-05 ",.02)
 ;;54569-0118-05
 ;;9002226.02101,"868,54569-0118-06 ",.01)
 ;;54569-0118-06
 ;;9002226.02101,"868,54569-0118-06 ",.02)
 ;;54569-0118-06
 ;;9002226.02101,"868,54569-0118-08 ",.01)
 ;;54569-0118-08
 ;;9002226.02101,"868,54569-0118-08 ",.02)
 ;;54569-0118-08
 ;;9002226.02101,"868,54569-0118-09 ",.01)
 ;;54569-0118-09