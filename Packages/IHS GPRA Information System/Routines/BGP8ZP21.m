BGP8ZP21 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1795,54868-0229-02 ",.02)
 ;;54868-0229-02
 ;;9002226.02101,"1795,54868-0229-03 ",.01)
 ;;54868-0229-03
 ;;9002226.02101,"1795,54868-0229-03 ",.02)
 ;;54868-0229-03
 ;;9002226.02101,"1795,54868-0229-04 ",.01)
 ;;54868-0229-04
 ;;9002226.02101,"1795,54868-0229-04 ",.02)
 ;;54868-0229-04
 ;;9002226.02101,"1795,54868-0229-05 ",.01)
 ;;54868-0229-05
 ;;9002226.02101,"1795,54868-0229-05 ",.02)
 ;;54868-0229-05
 ;;9002226.02101,"1795,54868-0229-06 ",.01)
 ;;54868-0229-06
 ;;9002226.02101,"1795,54868-0229-06 ",.02)
 ;;54868-0229-06
 ;;9002226.02101,"1795,54868-0263-00 ",.01)
 ;;54868-0263-00
 ;;9002226.02101,"1795,54868-0263-00 ",.02)
 ;;54868-0263-00
 ;;9002226.02101,"1795,54868-0263-01 ",.01)
 ;;54868-0263-01
 ;;9002226.02101,"1795,54868-0263-01 ",.02)
 ;;54868-0263-01
 ;;9002226.02101,"1795,54868-0427-00 ",.01)
 ;;54868-0427-00
 ;;9002226.02101,"1795,54868-0427-00 ",.02)
 ;;54868-0427-00
 ;;9002226.02101,"1795,54868-0427-01 ",.01)
 ;;54868-0427-01
 ;;9002226.02101,"1795,54868-0427-01 ",.02)
 ;;54868-0427-01
 ;;9002226.02101,"1795,54868-0427-02 ",.01)
 ;;54868-0427-02
 ;;9002226.02101,"1795,54868-0427-02 ",.02)
 ;;54868-0427-02
 ;;9002226.02101,"1795,54868-0427-03 ",.01)
 ;;54868-0427-03
 ;;9002226.02101,"1795,54868-0427-03 ",.02)
 ;;54868-0427-03
 ;;9002226.02101,"1795,54868-0427-04 ",.01)
 ;;54868-0427-04
 ;;9002226.02101,"1795,54868-0427-04 ",.02)
 ;;54868-0427-04
 ;;9002226.02101,"1795,54868-0427-05 ",.01)
 ;;54868-0427-05
 ;;9002226.02101,"1795,54868-0427-05 ",.02)
 ;;54868-0427-05
 ;;9002226.02101,"1795,54868-0534-02 ",.01)
 ;;54868-0534-02
 ;;9002226.02101,"1795,54868-0534-02 ",.02)
 ;;54868-0534-02
 ;;9002226.02101,"1795,54868-0601-00 ",.01)
 ;;54868-0601-00
 ;;9002226.02101,"1795,54868-0601-00 ",.02)
 ;;54868-0601-00
 ;;9002226.02101,"1795,54868-0601-01 ",.01)
 ;;54868-0601-01
 ;;9002226.02101,"1795,54868-0601-01 ",.02)
 ;;54868-0601-01
 ;;9002226.02101,"1795,54868-0601-02 ",.01)
 ;;54868-0601-02
 ;;9002226.02101,"1795,54868-0601-02 ",.02)
 ;;54868-0601-02
 ;;9002226.02101,"1795,54868-0601-03 ",.01)
 ;;54868-0601-03
 ;;9002226.02101,"1795,54868-0601-03 ",.02)
 ;;54868-0601-03
 ;;9002226.02101,"1795,54868-0740-02 ",.01)
 ;;54868-0740-02
 ;;9002226.02101,"1795,54868-0740-02 ",.02)
 ;;54868-0740-02
 ;;9002226.02101,"1795,54868-0818-00 ",.01)
 ;;54868-0818-00
 ;;9002226.02101,"1795,54868-0818-00 ",.02)
 ;;54868-0818-00
 ;;9002226.02101,"1795,54868-0818-01 ",.01)
 ;;54868-0818-01
 ;;9002226.02101,"1795,54868-0818-01 ",.02)
 ;;54868-0818-01
 ;;9002226.02101,"1795,54868-0818-03 ",.01)
 ;;54868-0818-03
 ;;9002226.02101,"1795,54868-0818-03 ",.02)
 ;;54868-0818-03
 ;;9002226.02101,"1795,54868-0818-05 ",.01)
 ;;54868-0818-05
 ;;9002226.02101,"1795,54868-0818-05 ",.02)
 ;;54868-0818-05
 ;;9002226.02101,"1795,54868-0818-07 ",.01)
 ;;54868-0818-07
 ;;9002226.02101,"1795,54868-0818-07 ",.02)
 ;;54868-0818-07
 ;;9002226.02101,"1795,54868-0818-08 ",.01)
 ;;54868-0818-08
 ;;9002226.02101,"1795,54868-0818-08 ",.02)
 ;;54868-0818-08
 ;;9002226.02101,"1795,54868-1029-00 ",.01)
 ;;54868-1029-00
 ;;9002226.02101,"1795,54868-1029-00 ",.02)
 ;;54868-1029-00
 ;;9002226.02101,"1795,54868-1029-01 ",.01)
 ;;54868-1029-01
 ;;9002226.02101,"1795,54868-1029-01 ",.02)
 ;;54868-1029-01
 ;;9002226.02101,"1795,54868-1029-02 ",.01)
 ;;54868-1029-02
 ;;9002226.02101,"1795,54868-1029-02 ",.02)
 ;;54868-1029-02
 ;;9002226.02101,"1795,54868-1237-01 ",.01)
 ;;54868-1237-01
 ;;9002226.02101,"1795,54868-1237-01 ",.02)
 ;;54868-1237-01
 ;;9002226.02101,"1795,54868-1323-00 ",.01)
 ;;54868-1323-00
 ;;9002226.02101,"1795,54868-1323-00 ",.02)
 ;;54868-1323-00
 ;;9002226.02101,"1795,54868-1323-01 ",.01)
 ;;54868-1323-01
 ;;9002226.02101,"1795,54868-1323-01 ",.02)
 ;;54868-1323-01
 ;;9002226.02101,"1795,54868-1323-02 ",.01)
 ;;54868-1323-02
 ;;9002226.02101,"1795,54868-1323-02 ",.02)
 ;;54868-1323-02
 ;;9002226.02101,"1795,54868-1323-04 ",.01)
 ;;54868-1323-04
 ;;9002226.02101,"1795,54868-1323-04 ",.02)
 ;;54868-1323-04
 ;;9002226.02101,"1795,54868-1323-05 ",.01)
 ;;54868-1323-05
 ;;9002226.02101,"1795,54868-1323-05 ",.02)
 ;;54868-1323-05
 ;;9002226.02101,"1795,54868-1323-06 ",.01)
 ;;54868-1323-06
 ;;9002226.02101,"1795,54868-1323-06 ",.02)
 ;;54868-1323-06
 ;;9002226.02101,"1795,54868-1323-07 ",.01)
 ;;54868-1323-07
 ;;9002226.02101,"1795,54868-1323-07 ",.02)
 ;;54868-1323-07
 ;;9002226.02101,"1795,54868-1323-08 ",.01)
 ;;54868-1323-08
 ;;9002226.02101,"1795,54868-1323-08 ",.02)
 ;;54868-1323-08
 ;;9002226.02101,"1795,54868-1323-09 ",.01)
 ;;54868-1323-09
 ;;9002226.02101,"1795,54868-1323-09 ",.02)
 ;;54868-1323-09
 ;;9002226.02101,"1795,54868-1332-03 ",.01)
 ;;54868-1332-03
 ;;9002226.02101,"1795,54868-1332-03 ",.02)
 ;;54868-1332-03
 ;;9002226.02101,"1795,54868-1332-04 ",.01)
 ;;54868-1332-04
 ;;9002226.02101,"1795,54868-1332-04 ",.02)
 ;;54868-1332-04
 ;;9002226.02101,"1795,54868-1332-05 ",.01)
 ;;54868-1332-05
 ;;9002226.02101,"1795,54868-1332-05 ",.02)
 ;;54868-1332-05
 ;;9002226.02101,"1795,54868-1332-06 ",.01)
 ;;54868-1332-06
 ;;9002226.02101,"1795,54868-1332-06 ",.02)
 ;;54868-1332-06
 ;;9002226.02101,"1795,54868-1332-07 ",.01)
 ;;54868-1332-07
 ;;9002226.02101,"1795,54868-1332-07 ",.02)
 ;;54868-1332-07
 ;;9002226.02101,"1795,54868-1613-00 ",.01)
 ;;54868-1613-00
 ;;9002226.02101,"1795,54868-1613-00 ",.02)
 ;;54868-1613-00
 ;;9002226.02101,"1795,54868-1613-01 ",.01)
 ;;54868-1613-01
 ;;9002226.02101,"1795,54868-1613-01 ",.02)
 ;;54868-1613-01
 ;;9002226.02101,"1795,54868-1613-02 ",.01)
 ;;54868-1613-02
 ;;9002226.02101,"1795,54868-1613-02 ",.02)
 ;;54868-1613-02
 ;;9002226.02101,"1795,54868-1613-03 ",.01)
 ;;54868-1613-03
 ;;9002226.02101,"1795,54868-1613-03 ",.02)
 ;;54868-1613-03
 ;;9002226.02101,"1795,54868-1804-02 ",.01)
 ;;54868-1804-02
 ;;9002226.02101,"1795,54868-1804-02 ",.02)
 ;;54868-1804-02
 ;;9002226.02101,"1795,54868-1804-04 ",.01)
 ;;54868-1804-04
 ;;9002226.02101,"1795,54868-1804-04 ",.02)
 ;;54868-1804-04
 ;;9002226.02101,"1795,54868-1804-05 ",.01)
 ;;54868-1804-05
 ;;9002226.02101,"1795,54868-1804-05 ",.02)
 ;;54868-1804-05
 ;;9002226.02101,"1795,54868-1854-00 ",.01)
 ;;54868-1854-00
 ;;9002226.02101,"1795,54868-1854-00 ",.02)
 ;;54868-1854-00
 ;;9002226.02101,"1795,54868-1854-01 ",.01)
 ;;54868-1854-01
 ;;9002226.02101,"1795,54868-1854-01 ",.02)
 ;;54868-1854-01
 ;;9002226.02101,"1795,54868-1854-03 ",.01)
 ;;54868-1854-03
 ;;9002226.02101,"1795,54868-1854-03 ",.02)
 ;;54868-1854-03
 ;;9002226.02101,"1795,54868-1867-00 ",.01)
 ;;54868-1867-00
 ;;9002226.02101,"1795,54868-1867-00 ",.02)
 ;;54868-1867-00
 ;;9002226.02101,"1795,54868-1990-00 ",.01)
 ;;54868-1990-00
 ;;9002226.02101,"1795,54868-1990-00 ",.02)
 ;;54868-1990-00
 ;;9002226.02101,"1795,54868-2032-00 ",.01)
 ;;54868-2032-00
 ;;9002226.02101,"1795,54868-2032-00 ",.02)
 ;;54868-2032-00
 ;;9002226.02101,"1795,54868-2088-00 ",.01)
 ;;54868-2088-00
 ;;9002226.02101,"1795,54868-2088-00 ",.02)
 ;;54868-2088-00
 ;;9002226.02101,"1795,54868-2209-00 ",.01)
 ;;54868-2209-00
 ;;9002226.02101,"1795,54868-2209-00 ",.02)
 ;;54868-2209-00
 ;;9002226.02101,"1795,54868-2209-02 ",.01)
 ;;54868-2209-02
 ;;9002226.02101,"1795,54868-2209-02 ",.02)
 ;;54868-2209-02
 ;;9002226.02101,"1795,54868-2209-03 ",.01)
 ;;54868-2209-03
 ;;9002226.02101,"1795,54868-2209-03 ",.02)
 ;;54868-2209-03
 ;;9002226.02101,"1795,54868-2209-04 ",.01)
 ;;54868-2209-04
 ;;9002226.02101,"1795,54868-2209-04 ",.02)
 ;;54868-2209-04
 ;;9002226.02101,"1795,54868-2209-05 ",.01)
 ;;54868-2209-05
 ;;9002226.02101,"1795,54868-2209-05 ",.02)
 ;;54868-2209-05
 ;;9002226.02101,"1795,54868-2209-06 ",.01)
 ;;54868-2209-06
 ;;9002226.02101,"1795,54868-2209-06 ",.02)
 ;;54868-2209-06
 ;;9002226.02101,"1795,54868-2209-07 ",.01)
 ;;54868-2209-07
 ;;9002226.02101,"1795,54868-2209-07 ",.02)
 ;;54868-2209-07
 ;;9002226.02101,"1795,54868-2292-00 ",.01)
 ;;54868-2292-00
 ;;9002226.02101,"1795,54868-2292-00 ",.02)
 ;;54868-2292-00
 ;;9002226.02101,"1795,54868-2292-02 ",.01)
 ;;54868-2292-02
 ;;9002226.02101,"1795,54868-2292-02 ",.02)
 ;;54868-2292-02
 ;;9002226.02101,"1795,54868-2301-00 ",.01)
 ;;54868-2301-00
 ;;9002226.02101,"1795,54868-2301-00 ",.02)
 ;;54868-2301-00
 ;;9002226.02101,"1795,54868-2301-02 ",.01)
 ;;54868-2301-02
 ;;9002226.02101,"1795,54868-2301-02 ",.02)
 ;;54868-2301-02
 ;;9002226.02101,"1795,54868-2340-02 ",.01)
 ;;54868-2340-02
 ;;9002226.02101,"1795,54868-2340-02 ",.02)
 ;;54868-2340-02
 ;;9002226.02101,"1795,54868-2340-03 ",.01)
 ;;54868-2340-03
 ;;9002226.02101,"1795,54868-2340-03 ",.02)
 ;;54868-2340-03
 ;;9002226.02101,"1795,54868-2803-00 ",.01)
 ;;54868-2803-00
 ;;9002226.02101,"1795,54868-2803-00 ",.02)
 ;;54868-2803-00
 ;;9002226.02101,"1795,54868-2803-01 ",.01)
 ;;54868-2803-01
 ;;9002226.02101,"1795,54868-2803-01 ",.02)
 ;;54868-2803-01
 ;;9002226.02101,"1795,54868-2844-00 ",.01)
 ;;54868-2844-00
 ;;9002226.02101,"1795,54868-2844-00 ",.02)
 ;;54868-2844-00
 ;;9002226.02101,"1795,54868-2844-01 ",.01)
 ;;54868-2844-01
 ;;9002226.02101,"1795,54868-2844-01 ",.02)
 ;;54868-2844-01
 ;;9002226.02101,"1795,54868-2892-00 ",.01)
 ;;54868-2892-00
 ;;9002226.02101,"1795,54868-2892-00 ",.02)
 ;;54868-2892-00
 ;;9002226.02101,"1795,54868-2892-03 ",.01)
 ;;54868-2892-03
 ;;9002226.02101,"1795,54868-2892-03 ",.02)
 ;;54868-2892-03
 ;;9002226.02101,"1795,54868-2892-04 ",.01)
 ;;54868-2892-04
 ;;9002226.02101,"1795,54868-2892-04 ",.02)
 ;;54868-2892-04
 ;;9002226.02101,"1795,54868-2892-05 ",.01)
 ;;54868-2892-05
 ;;9002226.02101,"1795,54868-2892-05 ",.02)
 ;;54868-2892-05
 ;;9002226.02101,"1795,54868-3007-00 ",.01)
 ;;54868-3007-00
 ;;9002226.02101,"1795,54868-3007-00 ",.02)
 ;;54868-3007-00
 ;;9002226.02101,"1795,54868-3007-01 ",.01)
 ;;54868-3007-01
 ;;9002226.02101,"1795,54868-3007-01 ",.02)
 ;;54868-3007-01
 ;;9002226.02101,"1795,54868-3116-00 ",.01)
 ;;54868-3116-00
 ;;9002226.02101,"1795,54868-3116-00 ",.02)
 ;;54868-3116-00
 ;;9002226.02101,"1795,54868-3451-00 ",.01)
 ;;54868-3451-00
 ;;9002226.02101,"1795,54868-3451-00 ",.02)
 ;;54868-3451-00
 ;;9002226.02101,"1795,54868-3510-00 ",.01)
 ;;54868-3510-00
 ;;9002226.02101,"1795,54868-3510-00 ",.02)
 ;;54868-3510-00
 ;;9002226.02101,"1795,54868-3510-01 ",.01)
 ;;54868-3510-01
 ;;9002226.02101,"1795,54868-3510-01 ",.02)
 ;;54868-3510-01
 ;;9002226.02101,"1795,54868-3893-00 ",.01)
 ;;54868-3893-00
 ;;9002226.02101,"1795,54868-3893-00 ",.02)
 ;;54868-3893-00
 ;;9002226.02101,"1795,54868-3935-00 ",.01)
 ;;54868-3935-00
 ;;9002226.02101,"1795,54868-3935-00 ",.02)
 ;;54868-3935-00
 ;;9002226.02101,"1795,54868-4021-00 ",.01)
 ;;54868-4021-00
 ;;9002226.02101,"1795,54868-4021-00 ",.02)
 ;;54868-4021-00
 ;;9002226.02101,"1795,54868-4336-00 ",.01)
 ;;54868-4336-00
 ;;9002226.02101,"1795,54868-4336-00 ",.02)
 ;;54868-4336-00
 ;;9002226.02101,"1795,54868-4336-01 ",.01)
 ;;54868-4336-01
 ;;9002226.02101,"1795,54868-4336-01 ",.02)
 ;;54868-4336-01
 ;;9002226.02101,"1795,54868-4338-00 ",.01)
 ;;54868-4338-00
 ;;9002226.02101,"1795,54868-4338-00 ",.02)
 ;;54868-4338-00
 ;;9002226.02101,"1795,54868-4686-00 ",.01)
 ;;54868-4686-00
 ;;9002226.02101,"1795,54868-4686-00 ",.02)
 ;;54868-4686-00
 ;;9002226.02101,"1795,54868-4794-00 ",.01)
 ;;54868-4794-00
 ;;9002226.02101,"1795,54868-4794-00 ",.02)
 ;;54868-4794-00
 ;;9002226.02101,"1795,54868-4794-01 ",.01)
 ;;54868-4794-01
 ;;9002226.02101,"1795,54868-4794-01 ",.02)
 ;;54868-4794-01
 ;;9002226.02101,"1795,54868-4794-02 ",.01)
 ;;54868-4794-02
 ;;9002226.02101,"1795,54868-4794-02 ",.02)
 ;;54868-4794-02
 ;;9002226.02101,"1795,54868-5121-00 ",.01)
 ;;54868-5121-00
 ;;9002226.02101,"1795,54868-5121-00 ",.02)
 ;;54868-5121-00