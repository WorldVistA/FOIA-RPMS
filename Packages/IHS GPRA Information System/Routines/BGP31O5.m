BGP31O5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 29, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"726,54092-0519-02 ",.02)
 ;;54092-0519-02
 ;;9002226.02101,"726,54348-0101-30 ",.01)
 ;;54348-0101-30
 ;;9002226.02101,"726,54348-0101-30 ",.02)
 ;;54348-0101-30
 ;;9002226.02101,"726,54348-0102-30 ",.01)
 ;;54348-0102-30
 ;;9002226.02101,"726,54348-0102-30 ",.02)
 ;;54348-0102-30
 ;;9002226.02101,"726,54348-0107-12 ",.01)
 ;;54348-0107-12
 ;;9002226.02101,"726,54348-0107-12 ",.02)
 ;;54348-0107-12
 ;;9002226.02101,"726,54569-0483-00 ",.01)
 ;;54569-0483-00
 ;;9002226.02101,"726,54569-0483-00 ",.02)
 ;;54569-0483-00
 ;;9002226.02101,"726,54569-0483-01 ",.01)
 ;;54569-0483-01
 ;;9002226.02101,"726,54569-0483-01 ",.02)
 ;;54569-0483-01
 ;;9002226.02101,"726,54569-0483-03 ",.01)
 ;;54569-0483-03
 ;;9002226.02101,"726,54569-0483-03 ",.02)
 ;;54569-0483-03
 ;;9002226.02101,"726,54569-0483-04 ",.01)
 ;;54569-0483-04
 ;;9002226.02101,"726,54569-0483-04 ",.02)
 ;;54569-0483-04
 ;;9002226.02101,"726,54569-0483-05 ",.01)
 ;;54569-0483-05
 ;;9002226.02101,"726,54569-0483-05 ",.02)
 ;;54569-0483-05
 ;;9002226.02101,"726,54569-0484-00 ",.01)
 ;;54569-0484-00
 ;;9002226.02101,"726,54569-0484-00 ",.02)
 ;;54569-0484-00
 ;;9002226.02101,"726,54569-0484-01 ",.01)
 ;;54569-0484-01
 ;;9002226.02101,"726,54569-0484-01 ",.02)
 ;;54569-0484-01
 ;;9002226.02101,"726,54569-0484-03 ",.01)
 ;;54569-0484-03
 ;;9002226.02101,"726,54569-0484-03 ",.02)
 ;;54569-0484-03
 ;;9002226.02101,"726,54569-0508-00 ",.01)
 ;;54569-0508-00
 ;;9002226.02101,"726,54569-0508-00 ",.02)
 ;;54569-0508-00
 ;;9002226.02101,"726,54569-0508-01 ",.01)
 ;;54569-0508-01
 ;;9002226.02101,"726,54569-0508-01 ",.02)
 ;;54569-0508-01
 ;;9002226.02101,"726,54569-0510-00 ",.01)
 ;;54569-0510-00
 ;;9002226.02101,"726,54569-0510-00 ",.02)
 ;;54569-0510-00
 ;;9002226.02101,"726,54569-0513-01 ",.01)
 ;;54569-0513-01
 ;;9002226.02101,"726,54569-0513-01 ",.02)
 ;;54569-0513-01
 ;;9002226.02101,"726,54569-0597-00 ",.01)
 ;;54569-0597-00
 ;;9002226.02101,"726,54569-0597-00 ",.02)
 ;;54569-0597-00
 ;;9002226.02101,"726,54569-0643-04 ",.01)
 ;;54569-0643-04
 ;;9002226.02101,"726,54569-0643-04 ",.02)
 ;;54569-0643-04
 ;;9002226.02101,"726,54569-0643-06 ",.01)
 ;;54569-0643-06
 ;;9002226.02101,"726,54569-0643-06 ",.02)
 ;;54569-0643-06
 ;;9002226.02101,"726,54569-1523-00 ",.01)
 ;;54569-1523-00
 ;;9002226.02101,"726,54569-1523-00 ",.02)
 ;;54569-1523-00
 ;;9002226.02101,"726,54569-1523-01 ",.01)
 ;;54569-1523-01
 ;;9002226.02101,"726,54569-1523-01 ",.02)
 ;;54569-1523-01
 ;;9002226.02101,"726,54569-3121-00 ",.01)
 ;;54569-3121-00
 ;;9002226.02101,"726,54569-3121-00 ",.02)
 ;;54569-3121-00
 ;;9002226.02101,"726,54569-3121-01 ",.01)
 ;;54569-3121-01
 ;;9002226.02101,"726,54569-3121-01 ",.02)
 ;;54569-3121-01
 ;;9002226.02101,"726,54569-3121-02 ",.01)
 ;;54569-3121-02
 ;;9002226.02101,"726,54569-3121-02 ",.02)
 ;;54569-3121-02
 ;;9002226.02101,"726,54569-3121-03 ",.01)
 ;;54569-3121-03
 ;;9002226.02101,"726,54569-3121-03 ",.02)
 ;;54569-3121-03
 ;;9002226.02101,"726,54569-3121-04 ",.01)
 ;;54569-3121-04
 ;;9002226.02101,"726,54569-3121-04 ",.02)
 ;;54569-3121-04
 ;;9002226.02101,"726,54569-3121-05 ",.01)
 ;;54569-3121-05
 ;;9002226.02101,"726,54569-3121-05 ",.02)
 ;;54569-3121-05
 ;;9002226.02101,"726,54569-3122-02 ",.01)
 ;;54569-3122-02
 ;;9002226.02101,"726,54569-3122-02 ",.02)
 ;;54569-3122-02
 ;;9002226.02101,"726,54569-3265-01 ",.01)
 ;;54569-3265-01
 ;;9002226.02101,"726,54569-3265-01 ",.02)
 ;;54569-3265-01
 ;;9002226.02101,"726,54569-5758-00 ",.01)
 ;;54569-5758-00
 ;;9002226.02101,"726,54569-5758-00 ",.02)
 ;;54569-5758-00
 ;;9002226.02101,"726,54569-5758-01 ",.01)
 ;;54569-5758-01
 ;;9002226.02101,"726,54569-5758-01 ",.02)
 ;;54569-5758-01
 ;;9002226.02101,"726,54868-0050-01 ",.01)
 ;;54868-0050-01
 ;;9002226.02101,"726,54868-0050-01 ",.02)
 ;;54868-0050-01
 ;;9002226.02101,"726,54868-0050-02 ",.01)
 ;;54868-0050-02
 ;;9002226.02101,"726,54868-0050-02 ",.02)
 ;;54868-0050-02
 ;;9002226.02101,"726,54868-0050-03 ",.01)
 ;;54868-0050-03
 ;;9002226.02101,"726,54868-0050-03 ",.02)
 ;;54868-0050-03
 ;;9002226.02101,"726,54868-0050-04 ",.01)
 ;;54868-0050-04
 ;;9002226.02101,"726,54868-0050-04 ",.02)
 ;;54868-0050-04
 ;;9002226.02101,"726,54868-0055-00 ",.01)
 ;;54868-0055-00
 ;;9002226.02101,"726,54868-0055-00 ",.02)
 ;;54868-0055-00
 ;;9002226.02101,"726,54868-0055-02 ",.01)
 ;;54868-0055-02
 ;;9002226.02101,"726,54868-0055-02 ",.02)
 ;;54868-0055-02
 ;;9002226.02101,"726,54868-0683-01 ",.01)
 ;;54868-0683-01
 ;;9002226.02101,"726,54868-0683-01 ",.02)
 ;;54868-0683-01
 ;;9002226.02101,"726,54868-0683-02 ",.01)
 ;;54868-0683-02
 ;;9002226.02101,"726,54868-0683-02 ",.02)
 ;;54868-0683-02
 ;;9002226.02101,"726,54868-0683-04 ",.01)
 ;;54868-0683-04
 ;;9002226.02101,"726,54868-0683-04 ",.02)
 ;;54868-0683-04
 ;;9002226.02101,"726,54868-0692-00 ",.01)
 ;;54868-0692-00
 ;;9002226.02101,"726,54868-0692-00 ",.02)
 ;;54868-0692-00
 ;;9002226.02101,"726,54868-0790-02 ",.01)
 ;;54868-0790-02
 ;;9002226.02101,"726,54868-0790-02 ",.02)
 ;;54868-0790-02
 ;;9002226.02101,"726,54868-0790-03 ",.01)
 ;;54868-0790-03
 ;;9002226.02101,"726,54868-0790-03 ",.02)
 ;;54868-0790-03
 ;;9002226.02101,"726,54868-0790-05 ",.01)
 ;;54868-0790-05
 ;;9002226.02101,"726,54868-0790-05 ",.02)
 ;;54868-0790-05
 ;;9002226.02101,"726,54868-0930-01 ",.01)
 ;;54868-0930-01
 ;;9002226.02101,"726,54868-0930-01 ",.02)
 ;;54868-0930-01
 ;;9002226.02101,"726,54868-1310-01 ",.01)
 ;;54868-1310-01
 ;;9002226.02101,"726,54868-1310-01 ",.02)
 ;;54868-1310-01
 ;;9002226.02101,"726,54868-1326-00 ",.01)
 ;;54868-1326-00
 ;;9002226.02101,"726,54868-1326-00 ",.02)
 ;;54868-1326-00
 ;;9002226.02101,"726,54868-1326-02 ",.01)
 ;;54868-1326-02
 ;;9002226.02101,"726,54868-1326-02 ",.02)
 ;;54868-1326-02
 ;;9002226.02101,"726,54868-1326-03 ",.01)
 ;;54868-1326-03
 ;;9002226.02101,"726,54868-1326-03 ",.02)
 ;;54868-1326-03
 ;;9002226.02101,"726,54868-1326-04 ",.01)
 ;;54868-1326-04
 ;;9002226.02101,"726,54868-1326-04 ",.02)
 ;;54868-1326-04
 ;;9002226.02101,"726,54868-1326-05 ",.01)
 ;;54868-1326-05
 ;;9002226.02101,"726,54868-1326-05 ",.02)
 ;;54868-1326-05
 ;;9002226.02101,"726,54868-1326-06 ",.01)
 ;;54868-1326-06
 ;;9002226.02101,"726,54868-1326-06 ",.02)
 ;;54868-1326-06
 ;;9002226.02101,"726,54868-1326-07 ",.01)
 ;;54868-1326-07
 ;;9002226.02101,"726,54868-1326-07 ",.02)
 ;;54868-1326-07
 ;;9002226.02101,"726,54868-1328-00 ",.01)
 ;;54868-1328-00
 ;;9002226.02101,"726,54868-1328-00 ",.02)
 ;;54868-1328-00
 ;;9002226.02101,"726,54868-1328-01 ",.01)
 ;;54868-1328-01
 ;;9002226.02101,"726,54868-1328-01 ",.02)
 ;;54868-1328-01
 ;;9002226.02101,"726,54868-1328-02 ",.01)
 ;;54868-1328-02
 ;;9002226.02101,"726,54868-1328-02 ",.02)
 ;;54868-1328-02
 ;;9002226.02101,"726,54868-1328-03 ",.01)
 ;;54868-1328-03
 ;;9002226.02101,"726,54868-1328-03 ",.02)
 ;;54868-1328-03
 ;;9002226.02101,"726,54868-1521-00 ",.01)
 ;;54868-1521-00
 ;;9002226.02101,"726,54868-1521-00 ",.02)
 ;;54868-1521-00
 ;;9002226.02101,"726,54868-1521-02 ",.01)
 ;;54868-1521-02
 ;;9002226.02101,"726,54868-1521-02 ",.02)
 ;;54868-1521-02
 ;;9002226.02101,"726,54868-1993-00 ",.01)
 ;;54868-1993-00
 ;;9002226.02101,"726,54868-1993-00 ",.02)
 ;;54868-1993-00
 ;;9002226.02101,"726,54868-2134-01 ",.01)
 ;;54868-2134-01
 ;;9002226.02101,"726,54868-2134-01 ",.02)
 ;;54868-2134-01
 ;;9002226.02101,"726,54868-2134-02 ",.01)
 ;;54868-2134-02
 ;;9002226.02101,"726,54868-2134-02 ",.02)
 ;;54868-2134-02
 ;;9002226.02101,"726,54868-2134-03 ",.01)
 ;;54868-2134-03
 ;;9002226.02101,"726,54868-2134-03 ",.02)
 ;;54868-2134-03
 ;;9002226.02101,"726,54868-2160-00 ",.01)
 ;;54868-2160-00
 ;;9002226.02101,"726,54868-2160-00 ",.02)
 ;;54868-2160-00
 ;;9002226.02101,"726,54868-2160-01 ",.01)
 ;;54868-2160-01
 ;;9002226.02101,"726,54868-2160-01 ",.02)
 ;;54868-2160-01
 ;;9002226.02101,"726,54868-2160-02 ",.01)
 ;;54868-2160-02
 ;;9002226.02101,"726,54868-2160-02 ",.02)
 ;;54868-2160-02
 ;;9002226.02101,"726,54868-2160-03 ",.01)
 ;;54868-2160-03
 ;;9002226.02101,"726,54868-2160-03 ",.02)
 ;;54868-2160-03
 ;;9002226.02101,"726,54868-2181-00 ",.01)
 ;;54868-2181-00
 ;;9002226.02101,"726,54868-2181-00 ",.02)
 ;;54868-2181-00
 ;;9002226.02101,"726,54868-3816-00 ",.01)
 ;;54868-3816-00
 ;;9002226.02101,"726,54868-3816-00 ",.02)
 ;;54868-3816-00
 ;;9002226.02101,"726,54868-4876-00 ",.01)
 ;;54868-4876-00
 ;;9002226.02101,"726,54868-4876-00 ",.02)
 ;;54868-4876-00
 ;;9002226.02101,"726,54868-4876-01 ",.01)
 ;;54868-4876-01
 ;;9002226.02101,"726,54868-4876-01 ",.02)
 ;;54868-4876-01
 ;;9002226.02101,"726,54868-4876-02 ",.01)
 ;;54868-4876-02
 ;;9002226.02101,"726,54868-4876-02 ",.02)
 ;;54868-4876-02
 ;;9002226.02101,"726,55045-1631-09 ",.01)
 ;;55045-1631-09
 ;;9002226.02101,"726,55045-1631-09 ",.02)
 ;;55045-1631-09
 ;;9002226.02101,"726,55045-1756-08 ",.01)
 ;;55045-1756-08
 ;;9002226.02101,"726,55045-1756-08 ",.02)
 ;;55045-1756-08
 ;;9002226.02101,"726,55045-1903-01 ",.01)
 ;;55045-1903-01
 ;;9002226.02101,"726,55045-1903-01 ",.02)
 ;;55045-1903-01
 ;;9002226.02101,"726,55045-1903-03 ",.01)
 ;;55045-1903-03
 ;;9002226.02101,"726,55045-1903-03 ",.02)
 ;;55045-1903-03
 ;;9002226.02101,"726,55045-1903-04 ",.01)
 ;;55045-1903-04
 ;;9002226.02101,"726,55045-1903-04 ",.02)
 ;;55045-1903-04
 ;;9002226.02101,"726,55045-1942-01 ",.01)
 ;;55045-1942-01
 ;;9002226.02101,"726,55045-1942-01 ",.02)
 ;;55045-1942-01
 ;;9002226.02101,"726,55045-2106-00 ",.01)
 ;;55045-2106-00
 ;;9002226.02101,"726,55045-2106-00 ",.02)
 ;;55045-2106-00
 ;;9002226.02101,"726,55045-2106-08 ",.01)
 ;;55045-2106-08
 ;;9002226.02101,"726,55045-2106-08 ",.02)
 ;;55045-2106-08
 ;;9002226.02101,"726,55045-2106-09 ",.01)
 ;;55045-2106-09
 ;;9002226.02101,"726,55045-2106-09 ",.02)
 ;;55045-2106-09
 ;;9002226.02101,"726,55045-2130-08 ",.01)
 ;;55045-2130-08
 ;;9002226.02101,"726,55045-2130-08 ",.02)
 ;;55045-2130-08
 ;;9002226.02101,"726,55048-0208-30 ",.01)
 ;;55048-0208-30
 ;;9002226.02101,"726,55048-0208-30 ",.02)
 ;;55048-0208-30
 ;;9002226.02101,"726,55048-0209-30 ",.01)
 ;;55048-0209-30
 ;;9002226.02101,"726,55048-0209-30 ",.02)
 ;;55048-0209-30
 ;;9002226.02101,"726,55289-0002-01 ",.01)
 ;;55289-0002-01
 ;;9002226.02101,"726,55289-0002-01 ",.02)
 ;;55289-0002-01
 ;;9002226.02101,"726,55289-0002-30 ",.01)
 ;;55289-0002-30
 ;;9002226.02101,"726,55289-0002-30 ",.02)
 ;;55289-0002-30
 ;;9002226.02101,"726,55289-0077-01 ",.01)
 ;;55289-0077-01
 ;;9002226.02101,"726,55289-0077-01 ",.02)
 ;;55289-0077-01
 ;;9002226.02101,"726,55289-0098-01 ",.01)
 ;;55289-0098-01
 ;;9002226.02101,"726,55289-0098-01 ",.02)
 ;;55289-0098-01
 ;;9002226.02101,"726,55289-0098-30 ",.01)
 ;;55289-0098-30
 ;;9002226.02101,"726,55289-0098-30 ",.02)
 ;;55289-0098-30
 ;;9002226.02101,"726,55289-0098-60 ",.01)
 ;;55289-0098-60
 ;;9002226.02101,"726,55289-0098-60 ",.02)
 ;;55289-0098-60
 ;;9002226.02101,"726,55289-0098-97 ",.01)
 ;;55289-0098-97
 ;;9002226.02101,"726,55289-0098-97 ",.02)
 ;;55289-0098-97
 ;;9002226.02101,"726,55289-0290-30 ",.01)
 ;;55289-0290-30
 ;;9002226.02101,"726,55289-0290-30 ",.02)
 ;;55289-0290-30
 ;;9002226.02101,"726,55289-0290-50 ",.01)
 ;;55289-0290-50
 ;;9002226.02101,"726,55289-0290-50 ",.02)
 ;;55289-0290-50
 ;;9002226.02101,"726,55289-0361-01 ",.01)
 ;;55289-0361-01
 ;;9002226.02101,"726,55289-0361-01 ",.02)
 ;;55289-0361-01
 ;;9002226.02101,"726,55289-0626-01 ",.01)
 ;;55289-0626-01
 ;;9002226.02101,"726,55289-0626-01 ",.02)
 ;;55289-0626-01
 ;;9002226.02101,"726,55289-0626-03 ",.01)
 ;;55289-0626-03
 ;;9002226.02101,"726,55289-0626-03 ",.02)
 ;;55289-0626-03
 ;;9002226.02101,"726,55289-0626-14 ",.01)
 ;;55289-0626-14
 ;;9002226.02101,"726,55289-0626-14 ",.02)
 ;;55289-0626-14
 ;;9002226.02101,"726,55289-0626-30 ",.01)
 ;;55289-0626-30
 ;;9002226.02101,"726,55289-0626-30 ",.02)
 ;;55289-0626-30
 ;;9002226.02101,"726,55289-0626-60 ",.01)
 ;;55289-0626-60
 ;;9002226.02101,"726,55289-0626-60 ",.02)
 ;;55289-0626-60
 ;;9002226.02101,"726,55289-0626-97 ",.01)
 ;;55289-0626-97
 ;;9002226.02101,"726,55289-0626-97 ",.02)
 ;;55289-0626-97
 ;;9002226.02101,"726,55289-0734-01 ",.01)
 ;;55289-0734-01
 ;;9002226.02101,"726,55289-0734-01 ",.02)
 ;;55289-0734-01
 ;;9002226.02101,"726,55289-0734-30 ",.01)
 ;;55289-0734-30
 ;;9002226.02101,"726,55289-0734-30 ",.02)
 ;;55289-0734-30
 ;;9002226.02101,"726,55289-0734-97 ",.01)
 ;;55289-0734-97
 ;;9002226.02101,"726,55289-0734-97 ",.02)
 ;;55289-0734-97
 ;;9002226.02101,"726,55289-0907-08 ",.01)
 ;;55289-0907-08
 ;;9002226.02101,"726,55289-0907-08 ",.02)
 ;;55289-0907-08
 ;;9002226.02101,"726,55289-0907-30 ",.01)
 ;;55289-0907-30
 ;;9002226.02101,"726,55289-0907-30 ",.02)
 ;;55289-0907-30
 ;;9002226.02101,"726,55289-0907-79 ",.01)
 ;;55289-0907-79
 ;;9002226.02101,"726,55289-0907-79 ",.02)
 ;;55289-0907-79
 ;;9002226.02101,"726,55289-0907-97 ",.01)
 ;;55289-0907-97
 ;;9002226.02101,"726,55289-0907-97 ",.02)
 ;;55289-0907-97
 ;;9002226.02101,"726,55289-0927-01 ",.01)
 ;;55289-0927-01
 ;;9002226.02101,"726,55289-0927-01 ",.02)
 ;;55289-0927-01
 ;;9002226.02101,"726,55289-0927-30 ",.01)
 ;;55289-0927-30
 ;;9002226.02101,"726,55289-0927-30 ",.02)
 ;;55289-0927-30
 ;;9002226.02101,"726,55289-0927-97 ",.01)
 ;;55289-0927-97
 ;;9002226.02101,"726,55289-0927-97 ",.02)
 ;;55289-0927-97
 ;;9002226.02101,"726,55887-0262-30 ",.01)
 ;;55887-0262-30
 ;;9002226.02101,"726,55887-0262-30 ",.02)
 ;;55887-0262-30
 ;;9002226.02101,"726,55887-0262-60 ",.01)
 ;;55887-0262-60