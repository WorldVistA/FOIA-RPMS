BGP8ZH23 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,00247-0639-21 ",.02)
 ;;00247-0639-21
 ;;9002226.02101,"868,00247-0639-24 ",.01)
 ;;00247-0639-24
 ;;9002226.02101,"868,00247-0639-24 ",.02)
 ;;00247-0639-24
 ;;9002226.02101,"868,00247-0639-28 ",.01)
 ;;00247-0639-28
 ;;9002226.02101,"868,00247-0639-28 ",.02)
 ;;00247-0639-28
 ;;9002226.02101,"868,00247-0639-42 ",.01)
 ;;00247-0639-42
 ;;9002226.02101,"868,00247-0639-42 ",.02)
 ;;00247-0639-42
 ;;9002226.02101,"868,00247-0639-50 ",.01)
 ;;00247-0639-50
 ;;9002226.02101,"868,00247-0639-50 ",.02)
 ;;00247-0639-50
 ;;9002226.02101,"868,00247-0639-56 ",.01)
 ;;00247-0639-56
 ;;9002226.02101,"868,00247-0639-56 ",.02)
 ;;00247-0639-56
 ;;9002226.02101,"868,00247-0639-60 ",.01)
 ;;00247-0639-60
 ;;9002226.02101,"868,00247-0639-60 ",.02)
 ;;00247-0639-60
 ;;9002226.02101,"868,00247-0639-80 ",.01)
 ;;00247-0639-80
 ;;9002226.02101,"868,00247-0639-80 ",.02)
 ;;00247-0639-80
 ;;9002226.02101,"868,00247-0645-06 ",.01)
 ;;00247-0645-06
 ;;9002226.02101,"868,00247-0645-06 ",.02)
 ;;00247-0645-06
 ;;9002226.02101,"868,00247-0645-20 ",.01)
 ;;00247-0645-20
 ;;9002226.02101,"868,00247-0645-20 ",.02)
 ;;00247-0645-20
 ;;9002226.02101,"868,00247-0645-28 ",.01)
 ;;00247-0645-28
 ;;9002226.02101,"868,00247-0645-28 ",.02)
 ;;00247-0645-28
 ;;9002226.02101,"868,00247-0645-30 ",.01)
 ;;00247-0645-30
 ;;9002226.02101,"868,00247-0645-30 ",.02)
 ;;00247-0645-30
 ;;9002226.02101,"868,00247-0784-01 ",.01)
 ;;00247-0784-01
 ;;9002226.02101,"868,00247-0784-01 ",.02)
 ;;00247-0784-01
 ;;9002226.02101,"868,00247-0784-02 ",.01)
 ;;00247-0784-02
 ;;9002226.02101,"868,00247-0784-02 ",.02)
 ;;00247-0784-02
 ;;9002226.02101,"868,00247-0784-03 ",.01)
 ;;00247-0784-03
 ;;9002226.02101,"868,00247-0784-03 ",.02)
 ;;00247-0784-03
 ;;9002226.02101,"868,00247-0784-08 ",.01)
 ;;00247-0784-08
 ;;9002226.02101,"868,00247-0784-08 ",.02)
 ;;00247-0784-08
 ;;9002226.02101,"868,00247-0784-18 ",.01)
 ;;00247-0784-18
 ;;9002226.02101,"868,00247-0784-18 ",.02)
 ;;00247-0784-18
 ;;9002226.02101,"868,00247-0784-24 ",.01)
 ;;00247-0784-24
 ;;9002226.02101,"868,00247-0784-24 ",.02)
 ;;00247-0784-24
 ;;9002226.02101,"868,00247-0784-28 ",.01)
 ;;00247-0784-28
 ;;9002226.02101,"868,00247-0784-28 ",.02)
 ;;00247-0784-28
 ;;9002226.02101,"868,00247-0812-01 ",.01)
 ;;00247-0812-01
 ;;9002226.02101,"868,00247-0812-01 ",.02)
 ;;00247-0812-01
 ;;9002226.02101,"868,00247-0928-01 ",.01)
 ;;00247-0928-01
 ;;9002226.02101,"868,00247-0928-01 ",.02)
 ;;00247-0928-01
 ;;9002226.02101,"868,00247-0928-02 ",.01)
 ;;00247-0928-02
 ;;9002226.02101,"868,00247-0928-02 ",.02)
 ;;00247-0928-02
 ;;9002226.02101,"868,00247-0940-15 ",.01)
 ;;00247-0940-15
 ;;9002226.02101,"868,00247-0940-15 ",.02)
 ;;00247-0940-15
 ;;9002226.02101,"868,00247-0941-01 ",.01)
 ;;00247-0941-01
 ;;9002226.02101,"868,00247-0941-01 ",.02)
 ;;00247-0941-01
 ;;9002226.02101,"868,00247-0942-00 ",.01)
 ;;00247-0942-00
 ;;9002226.02101,"868,00247-0942-00 ",.02)
 ;;00247-0942-00
 ;;9002226.02101,"868,00247-0942-50 ",.01)
 ;;00247-0942-50
 ;;9002226.02101,"868,00247-0942-50 ",.02)
 ;;00247-0942-50
 ;;9002226.02101,"868,00247-0942-75 ",.01)
 ;;00247-0942-75
 ;;9002226.02101,"868,00247-0942-75 ",.02)
 ;;00247-0942-75
 ;;9002226.02101,"868,00247-0949-00 ",.01)
 ;;00247-0949-00
 ;;9002226.02101,"868,00247-0949-00 ",.02)
 ;;00247-0949-00
 ;;9002226.02101,"868,00247-0949-78 ",.01)
 ;;00247-0949-78
 ;;9002226.02101,"868,00247-0949-78 ",.02)
 ;;00247-0949-78
 ;;9002226.02101,"868,00247-0949-79 ",.01)
 ;;00247-0949-79
 ;;9002226.02101,"868,00247-0949-79 ",.02)
 ;;00247-0949-79
 ;;9002226.02101,"868,00247-1009-00 ",.01)
 ;;00247-1009-00
 ;;9002226.02101,"868,00247-1009-00 ",.02)
 ;;00247-1009-00
 ;;9002226.02101,"868,00247-1009-02 ",.01)
 ;;00247-1009-02
 ;;9002226.02101,"868,00247-1009-02 ",.02)
 ;;00247-1009-02
 ;;9002226.02101,"868,00247-1009-03 ",.01)
 ;;00247-1009-03
 ;;9002226.02101,"868,00247-1009-03 ",.02)
 ;;00247-1009-03
 ;;9002226.02101,"868,00247-1009-06 ",.01)
 ;;00247-1009-06
 ;;9002226.02101,"868,00247-1009-06 ",.02)
 ;;00247-1009-06
 ;;9002226.02101,"868,00247-1009-30 ",.01)
 ;;00247-1009-30
 ;;9002226.02101,"868,00247-1009-30 ",.02)
 ;;00247-1009-30
 ;;9002226.02101,"868,00247-1261-00 ",.01)
 ;;00247-1261-00
 ;;9002226.02101,"868,00247-1261-00 ",.02)
 ;;00247-1261-00
 ;;9002226.02101,"868,00247-1261-50 ",.01)
 ;;00247-1261-50
 ;;9002226.02101,"868,00247-1261-50 ",.02)
 ;;00247-1261-50
 ;;9002226.02101,"868,00247-1261-79 ",.01)
 ;;00247-1261-79
 ;;9002226.02101,"868,00247-1261-79 ",.02)
 ;;00247-1261-79
 ;;9002226.02101,"868,00247-1288-03 ",.01)
 ;;00247-1288-03
 ;;9002226.02101,"868,00247-1288-03 ",.02)
 ;;00247-1288-03
 ;;9002226.02101,"868,00247-1333-20 ",.01)
 ;;00247-1333-20
 ;;9002226.02101,"868,00247-1333-20 ",.02)
 ;;00247-1333-20
 ;;9002226.02101,"868,00247-1383-00 ",.01)
 ;;00247-1383-00
 ;;9002226.02101,"868,00247-1383-00 ",.02)
 ;;00247-1383-00
 ;;9002226.02101,"868,00247-1383-50 ",.01)
 ;;00247-1383-50
 ;;9002226.02101,"868,00247-1383-50 ",.02)
 ;;00247-1383-50
 ;;9002226.02101,"868,00247-1386-00 ",.01)
 ;;00247-1386-00
 ;;9002226.02101,"868,00247-1386-00 ",.02)
 ;;00247-1386-00
 ;;9002226.02101,"868,00247-1386-50 ",.01)
 ;;00247-1386-50
 ;;9002226.02101,"868,00247-1386-50 ",.02)
 ;;00247-1386-50
 ;;9002226.02101,"868,00247-1468-02 ",.01)
 ;;00247-1468-02
 ;;9002226.02101,"868,00247-1468-02 ",.02)
 ;;00247-1468-02
 ;;9002226.02101,"868,00247-1468-04 ",.01)
 ;;00247-1468-04
 ;;9002226.02101,"868,00247-1468-04 ",.02)
 ;;00247-1468-04
 ;;9002226.02101,"868,00247-1468-10 ",.01)
 ;;00247-1468-10
 ;;9002226.02101,"868,00247-1468-10 ",.02)
 ;;00247-1468-10
 ;;9002226.02101,"868,00247-1468-14 ",.01)
 ;;00247-1468-14
 ;;9002226.02101,"868,00247-1468-14 ",.02)
 ;;00247-1468-14
 ;;9002226.02101,"868,00247-1468-20 ",.01)
 ;;00247-1468-20
 ;;9002226.02101,"868,00247-1468-20 ",.02)
 ;;00247-1468-20
 ;;9002226.02101,"868,00247-1518-05 ",.01)
 ;;00247-1518-05
 ;;9002226.02101,"868,00247-1518-05 ",.02)
 ;;00247-1518-05
 ;;9002226.02101,"868,00247-1518-50 ",.01)
 ;;00247-1518-50
 ;;9002226.02101,"868,00247-1518-50 ",.02)
 ;;00247-1518-50
 ;;9002226.02101,"868,00247-1524-06 ",.01)
 ;;00247-1524-06
 ;;9002226.02101,"868,00247-1524-06 ",.02)
 ;;00247-1524-06
 ;;9002226.02101,"868,00247-1623-00 ",.01)
 ;;00247-1623-00
 ;;9002226.02101,"868,00247-1623-00 ",.02)
 ;;00247-1623-00
 ;;9002226.02101,"868,00247-1623-50 ",.01)
 ;;00247-1623-50
 ;;9002226.02101,"868,00247-1623-50 ",.02)
 ;;00247-1623-50
 ;;9002226.02101,"868,00247-1666-30 ",.01)
 ;;00247-1666-30
 ;;9002226.02101,"868,00247-1666-30 ",.02)
 ;;00247-1666-30
 ;;9002226.02101,"868,00247-1669-30 ",.01)
 ;;00247-1669-30
 ;;9002226.02101,"868,00247-1669-30 ",.02)
 ;;00247-1669-30
 ;;9002226.02101,"868,00247-1707-02 ",.01)
 ;;00247-1707-02
 ;;9002226.02101,"868,00247-1707-02 ",.02)
 ;;00247-1707-02
 ;;9002226.02101,"868,00247-1707-07 ",.01)
 ;;00247-1707-07
 ;;9002226.02101,"868,00247-1707-07 ",.02)
 ;;00247-1707-07
 ;;9002226.02101,"868,00247-1707-10 ",.01)
 ;;00247-1707-10
 ;;9002226.02101,"868,00247-1707-10 ",.02)
 ;;00247-1707-10
 ;;9002226.02101,"868,00247-1707-20 ",.01)
 ;;00247-1707-20
 ;;9002226.02101,"868,00247-1707-20 ",.02)
 ;;00247-1707-20
 ;;9002226.02101,"868,00247-1707-50 ",.01)
 ;;00247-1707-50
 ;;9002226.02101,"868,00247-1707-50 ",.02)
 ;;00247-1707-50
 ;;9002226.02101,"868,00247-1708-01 ",.01)
 ;;00247-1708-01
 ;;9002226.02101,"868,00247-1708-01 ",.02)
 ;;00247-1708-01
 ;;9002226.02101,"868,00247-1708-07 ",.01)
 ;;00247-1708-07
 ;;9002226.02101,"868,00247-1708-07 ",.02)
 ;;00247-1708-07
 ;;9002226.02101,"868,00247-1708-10 ",.01)
 ;;00247-1708-10
 ;;9002226.02101,"868,00247-1708-10 ",.02)
 ;;00247-1708-10
 ;;9002226.02101,"868,00247-1708-14 ",.01)
 ;;00247-1708-14
 ;;9002226.02101,"868,00247-1708-14 ",.02)
 ;;00247-1708-14
 ;;9002226.02101,"868,00247-1708-20 ",.01)
 ;;00247-1708-20
 ;;9002226.02101,"868,00247-1708-20 ",.02)
 ;;00247-1708-20
 ;;9002226.02101,"868,00247-1708-50 ",.01)
 ;;00247-1708-50
 ;;9002226.02101,"868,00247-1708-50 ",.02)
 ;;00247-1708-50
 ;;9002226.02101,"868,00247-1729-00 ",.01)
 ;;00247-1729-00
 ;;9002226.02101,"868,00247-1729-00 ",.02)
 ;;00247-1729-00
 ;;9002226.02101,"868,00247-1729-79 ",.01)
 ;;00247-1729-79
 ;;9002226.02101,"868,00247-1729-79 ",.02)
 ;;00247-1729-79
 ;;9002226.02101,"868,00247-1951-20 ",.01)
 ;;00247-1951-20
 ;;9002226.02101,"868,00247-1951-20 ",.02)
 ;;00247-1951-20
 ;;9002226.02101,"868,00247-1963-02 ",.01)
 ;;00247-1963-02
 ;;9002226.02101,"868,00247-1963-02 ",.02)
 ;;00247-1963-02
 ;;9002226.02101,"868,00247-1963-10 ",.01)
 ;;00247-1963-10
 ;;9002226.02101,"868,00247-1963-10 ",.02)
 ;;00247-1963-10
 ;;9002226.02101,"868,00247-1963-20 ",.01)
 ;;00247-1963-20
 ;;9002226.02101,"868,00247-1963-20 ",.02)
 ;;00247-1963-20
 ;;9002226.02101,"868,00247-1977-00 ",.01)
 ;;00247-1977-00
 ;;9002226.02101,"868,00247-1977-00 ",.02)
 ;;00247-1977-00
 ;;9002226.02101,"868,00247-1990-02 ",.01)
 ;;00247-1990-02
 ;;9002226.02101,"868,00247-1990-02 ",.02)
 ;;00247-1990-02
 ;;9002226.02101,"868,00247-1990-03 ",.01)
 ;;00247-1990-03
 ;;9002226.02101,"868,00247-1990-03 ",.02)
 ;;00247-1990-03
 ;;9002226.02101,"868,00247-1990-04 ",.01)
 ;;00247-1990-04
 ;;9002226.02101,"868,00247-1990-04 ",.02)
 ;;00247-1990-04
 ;;9002226.02101,"868,00247-1990-09 ",.01)
 ;;00247-1990-09
 ;;9002226.02101,"868,00247-1990-09 ",.02)
 ;;00247-1990-09
 ;;9002226.02101,"868,00247-1990-12 ",.01)
 ;;00247-1990-12
 ;;9002226.02101,"868,00247-1990-12 ",.02)
 ;;00247-1990-12
 ;;9002226.02101,"868,00247-1990-15 ",.01)
 ;;00247-1990-15
 ;;9002226.02101,"868,00247-1990-15 ",.02)
 ;;00247-1990-15
 ;;9002226.02101,"868,00247-1990-20 ",.01)
 ;;00247-1990-20
 ;;9002226.02101,"868,00247-1990-20 ",.02)
 ;;00247-1990-20
 ;;9002226.02101,"868,00247-1990-21 ",.01)
 ;;00247-1990-21
 ;;9002226.02101,"868,00247-1990-21 ",.02)
 ;;00247-1990-21
 ;;9002226.02101,"868,00247-1990-30 ",.01)
 ;;00247-1990-30
 ;;9002226.02101,"868,00247-1990-30 ",.02)
 ;;00247-1990-30
 ;;9002226.02101,"868,00247-1991-00 ",.01)
 ;;00247-1991-00
 ;;9002226.02101,"868,00247-1991-00 ",.02)
 ;;00247-1991-00
 ;;9002226.02101,"868,00247-1991-02 ",.01)
 ;;00247-1991-02
 ;;9002226.02101,"868,00247-1991-02 ",.02)
 ;;00247-1991-02
 ;;9002226.02101,"868,00247-1991-04 ",.01)
 ;;00247-1991-04
 ;;9002226.02101,"868,00247-1991-04 ",.02)
 ;;00247-1991-04
 ;;9002226.02101,"868,00247-1991-06 ",.01)
 ;;00247-1991-06
 ;;9002226.02101,"868,00247-1991-06 ",.02)
 ;;00247-1991-06
 ;;9002226.02101,"868,00247-1991-14 ",.01)
 ;;00247-1991-14
 ;;9002226.02101,"868,00247-1991-14 ",.02)
 ;;00247-1991-14
 ;;9002226.02101,"868,00247-1991-20 ",.01)
 ;;00247-1991-20
 ;;9002226.02101,"868,00247-1991-20 ",.02)
 ;;00247-1991-20
 ;;9002226.02101,"868,00247-2018-00 ",.01)
 ;;00247-2018-00
 ;;9002226.02101,"868,00247-2018-00 ",.02)
 ;;00247-2018-00
 ;;9002226.02101,"868,00247-2018-50 ",.01)
 ;;00247-2018-50
 ;;9002226.02101,"868,00247-2018-50 ",.02)
 ;;00247-2018-50
 ;;9002226.02101,"868,00247-2018-75 ",.01)
 ;;00247-2018-75
 ;;9002226.02101,"868,00247-2018-75 ",.02)
 ;;00247-2018-75
 ;;9002226.02101,"868,00247-2042-00 ",.01)
 ;;00247-2042-00
 ;;9002226.02101,"868,00247-2042-00 ",.02)
 ;;00247-2042-00
 ;;9002226.02101,"868,00247-2042-01 ",.01)
 ;;00247-2042-01
 ;;9002226.02101,"868,00247-2042-01 ",.02)
 ;;00247-2042-01
 ;;9002226.02101,"868,00247-2042-02 ",.01)
 ;;00247-2042-02
 ;;9002226.02101,"868,00247-2042-02 ",.02)
 ;;00247-2042-02
 ;;9002226.02101,"868,00247-2042-03 ",.01)
 ;;00247-2042-03
 ;;9002226.02101,"868,00247-2042-03 ",.02)
 ;;00247-2042-03
 ;;9002226.02101,"868,00247-2042-04 ",.01)
 ;;00247-2042-04