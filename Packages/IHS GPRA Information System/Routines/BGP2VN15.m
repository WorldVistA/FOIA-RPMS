BGP2VN15 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 08, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"800,54868-0229-04 ",.02)
 ;;54868-0229-04
 ;;9002226.02101,"800,54868-0263-00 ",.01)
 ;;54868-0263-00
 ;;9002226.02101,"800,54868-0263-00 ",.02)
 ;;54868-0263-00
 ;;9002226.02101,"800,54868-0263-01 ",.01)
 ;;54868-0263-01
 ;;9002226.02101,"800,54868-0263-01 ",.02)
 ;;54868-0263-01
 ;;9002226.02101,"800,54868-1029-00 ",.01)
 ;;54868-1029-00
 ;;9002226.02101,"800,54868-1029-00 ",.02)
 ;;54868-1029-00
 ;;9002226.02101,"800,54868-1029-01 ",.01)
 ;;54868-1029-01
 ;;9002226.02101,"800,54868-1029-01 ",.02)
 ;;54868-1029-01
 ;;9002226.02101,"800,54868-1029-02 ",.01)
 ;;54868-1029-02
 ;;9002226.02101,"800,54868-1029-02 ",.02)
 ;;54868-1029-02
 ;;9002226.02101,"800,54868-1050-00 ",.01)
 ;;54868-1050-00
 ;;9002226.02101,"800,54868-1050-00 ",.02)
 ;;54868-1050-00
 ;;9002226.02101,"800,54868-1050-01 ",.01)
 ;;54868-1050-01
 ;;9002226.02101,"800,54868-1050-01 ",.02)
 ;;54868-1050-01
 ;;9002226.02101,"800,54868-1050-03 ",.01)
 ;;54868-1050-03
 ;;9002226.02101,"800,54868-1050-03 ",.02)
 ;;54868-1050-03
 ;;9002226.02101,"800,54868-1050-04 ",.01)
 ;;54868-1050-04
 ;;9002226.02101,"800,54868-1050-04 ",.02)
 ;;54868-1050-04
 ;;9002226.02101,"800,54868-1050-05 ",.01)
 ;;54868-1050-05
 ;;9002226.02101,"800,54868-1050-05 ",.02)
 ;;54868-1050-05
 ;;9002226.02101,"800,54868-1227-00 ",.01)
 ;;54868-1227-00
 ;;9002226.02101,"800,54868-1227-00 ",.02)
 ;;54868-1227-00
 ;;9002226.02101,"800,54868-1227-02 ",.01)
 ;;54868-1227-02
 ;;9002226.02101,"800,54868-1227-02 ",.02)
 ;;54868-1227-02
 ;;9002226.02101,"800,54868-1323-00 ",.01)
 ;;54868-1323-00
 ;;9002226.02101,"800,54868-1323-00 ",.02)
 ;;54868-1323-00
 ;;9002226.02101,"800,54868-1323-01 ",.01)
 ;;54868-1323-01
 ;;9002226.02101,"800,54868-1323-01 ",.02)
 ;;54868-1323-01
 ;;9002226.02101,"800,54868-1323-02 ",.01)
 ;;54868-1323-02
 ;;9002226.02101,"800,54868-1323-02 ",.02)
 ;;54868-1323-02
 ;;9002226.02101,"800,54868-1323-04 ",.01)
 ;;54868-1323-04
 ;;9002226.02101,"800,54868-1323-04 ",.02)
 ;;54868-1323-04
 ;;9002226.02101,"800,54868-1323-05 ",.01)
 ;;54868-1323-05
 ;;9002226.02101,"800,54868-1323-05 ",.02)
 ;;54868-1323-05
 ;;9002226.02101,"800,54868-1323-06 ",.01)
 ;;54868-1323-06
 ;;9002226.02101,"800,54868-1323-06 ",.02)
 ;;54868-1323-06
 ;;9002226.02101,"800,54868-1332-01 ",.01)
 ;;54868-1332-01
 ;;9002226.02101,"800,54868-1332-01 ",.02)
 ;;54868-1332-01
 ;;9002226.02101,"800,54868-1332-02 ",.01)
 ;;54868-1332-02
 ;;9002226.02101,"800,54868-1332-02 ",.02)
 ;;54868-1332-02
 ;;9002226.02101,"800,54868-1332-03 ",.01)
 ;;54868-1332-03
 ;;9002226.02101,"800,54868-1332-03 ",.02)
 ;;54868-1332-03
 ;;9002226.02101,"800,54868-1332-04 ",.01)
 ;;54868-1332-04
 ;;9002226.02101,"800,54868-1332-04 ",.02)
 ;;54868-1332-04
 ;;9002226.02101,"800,54868-1332-05 ",.01)
 ;;54868-1332-05
 ;;9002226.02101,"800,54868-1332-05 ",.02)
 ;;54868-1332-05
 ;;9002226.02101,"800,54868-1332-06 ",.01)
 ;;54868-1332-06
 ;;9002226.02101,"800,54868-1332-06 ",.02)
 ;;54868-1332-06
 ;;9002226.02101,"800,54868-1332-07 ",.01)
 ;;54868-1332-07
 ;;9002226.02101,"800,54868-1332-07 ",.02)
 ;;54868-1332-07
 ;;9002226.02101,"800,54868-1804-00 ",.01)
 ;;54868-1804-00
 ;;9002226.02101,"800,54868-1804-00 ",.02)
 ;;54868-1804-00
 ;;9002226.02101,"800,54868-1804-02 ",.01)
 ;;54868-1804-02
 ;;9002226.02101,"800,54868-1804-02 ",.02)
 ;;54868-1804-02
 ;;9002226.02101,"800,54868-1804-04 ",.01)
 ;;54868-1804-04
 ;;9002226.02101,"800,54868-1804-04 ",.02)
 ;;54868-1804-04
 ;;9002226.02101,"800,54868-1854-00 ",.01)
 ;;54868-1854-00
 ;;9002226.02101,"800,54868-1854-00 ",.02)
 ;;54868-1854-00
 ;;9002226.02101,"800,54868-1854-01 ",.01)
 ;;54868-1854-01
 ;;9002226.02101,"800,54868-1854-01 ",.02)
 ;;54868-1854-01
 ;;9002226.02101,"800,54868-1854-03 ",.01)
 ;;54868-1854-03
 ;;9002226.02101,"800,54868-1854-03 ",.02)
 ;;54868-1854-03
 ;;9002226.02101,"800,54868-1854-04 ",.01)
 ;;54868-1854-04
 ;;9002226.02101,"800,54868-1854-04 ",.02)
 ;;54868-1854-04
 ;;9002226.02101,"800,54868-1867-00 ",.01)
 ;;54868-1867-00
 ;;9002226.02101,"800,54868-1867-00 ",.02)
 ;;54868-1867-00
 ;;9002226.02101,"800,54868-1990-00 ",.01)
 ;;54868-1990-00
 ;;9002226.02101,"800,54868-1990-00 ",.02)
 ;;54868-1990-00
 ;;9002226.02101,"800,54868-1990-01 ",.01)
 ;;54868-1990-01
 ;;9002226.02101,"800,54868-1990-01 ",.02)
 ;;54868-1990-01
 ;;9002226.02101,"800,54868-2032-00 ",.01)
 ;;54868-2032-00
 ;;9002226.02101,"800,54868-2032-00 ",.02)
 ;;54868-2032-00
 ;;9002226.02101,"800,54868-2844-00 ",.01)
 ;;54868-2844-00
 ;;9002226.02101,"800,54868-2844-00 ",.02)
 ;;54868-2844-00
 ;;9002226.02101,"800,54868-2892-00 ",.01)
 ;;54868-2892-00
 ;;9002226.02101,"800,54868-2892-00 ",.02)
 ;;54868-2892-00
 ;;9002226.02101,"800,54868-2892-02 ",.01)
 ;;54868-2892-02
 ;;9002226.02101,"800,54868-2892-02 ",.02)
 ;;54868-2892-02
 ;;9002226.02101,"800,54868-2892-03 ",.01)
 ;;54868-2892-03
 ;;9002226.02101,"800,54868-2892-03 ",.02)
 ;;54868-2892-03
 ;;9002226.02101,"800,54868-2892-04 ",.01)
 ;;54868-2892-04
 ;;9002226.02101,"800,54868-2892-04 ",.02)
 ;;54868-2892-04
 ;;9002226.02101,"800,54868-3935-00 ",.01)
 ;;54868-3935-00
 ;;9002226.02101,"800,54868-3935-00 ",.02)
 ;;54868-3935-00
 ;;9002226.02101,"800,54868-3935-01 ",.01)
 ;;54868-3935-01
 ;;9002226.02101,"800,54868-3935-01 ",.02)
 ;;54868-3935-01
 ;;9002226.02101,"800,54868-4108-00 ",.01)
 ;;54868-4108-00
 ;;9002226.02101,"800,54868-4108-00 ",.02)
 ;;54868-4108-00
 ;;9002226.02101,"800,54868-4109-00 ",.01)
 ;;54868-4109-00
 ;;9002226.02101,"800,54868-4109-00 ",.02)
 ;;54868-4109-00
 ;;9002226.02101,"800,54868-4336-00 ",.01)
 ;;54868-4336-00
 ;;9002226.02101,"800,54868-4336-00 ",.02)
 ;;54868-4336-00
 ;;9002226.02101,"800,54868-4338-00 ",.01)
 ;;54868-4338-00
 ;;9002226.02101,"800,54868-4338-00 ",.02)
 ;;54868-4338-00
 ;;9002226.02101,"800,54868-5121-00 ",.01)
 ;;54868-5121-00
 ;;9002226.02101,"800,54868-5121-00 ",.02)
 ;;54868-5121-00
 ;;9002226.02101,"800,55045-1124-00 ",.01)
 ;;55045-1124-00
 ;;9002226.02101,"800,55045-1124-00 ",.02)
 ;;55045-1124-00
 ;;9002226.02101,"800,55045-1124-01 ",.01)
 ;;55045-1124-01
 ;;9002226.02101,"800,55045-1124-01 ",.02)
 ;;55045-1124-01
 ;;9002226.02101,"800,55045-1124-02 ",.01)
 ;;55045-1124-02
 ;;9002226.02101,"800,55045-1124-02 ",.02)
 ;;55045-1124-02
 ;;9002226.02101,"800,55045-1124-03 ",.01)
 ;;55045-1124-03
 ;;9002226.02101,"800,55045-1124-03 ",.02)
 ;;55045-1124-03
 ;;9002226.02101,"800,55045-1124-04 ",.01)
 ;;55045-1124-04
 ;;9002226.02101,"800,55045-1124-04 ",.02)
 ;;55045-1124-04
 ;;9002226.02101,"800,55045-1124-05 ",.01)
 ;;55045-1124-05
 ;;9002226.02101,"800,55045-1124-05 ",.02)
 ;;55045-1124-05
 ;;9002226.02101,"800,55045-1124-06 ",.01)
 ;;55045-1124-06
 ;;9002226.02101,"800,55045-1124-06 ",.02)
 ;;55045-1124-06
 ;;9002226.02101,"800,55045-1124-07 ",.01)
 ;;55045-1124-07
 ;;9002226.02101,"800,55045-1124-07 ",.02)
 ;;55045-1124-07
 ;;9002226.02101,"800,55045-1124-08 ",.01)
 ;;55045-1124-08
 ;;9002226.02101,"800,55045-1124-08 ",.02)
 ;;55045-1124-08
 ;;9002226.02101,"800,55045-1124-09 ",.01)
 ;;55045-1124-09
 ;;9002226.02101,"800,55045-1124-09 ",.02)
 ;;55045-1124-09
 ;;9002226.02101,"800,55045-1125-00 ",.01)
 ;;55045-1125-00
 ;;9002226.02101,"800,55045-1125-00 ",.02)
 ;;55045-1125-00
 ;;9002226.02101,"800,55045-1125-01 ",.01)
 ;;55045-1125-01
 ;;9002226.02101,"800,55045-1125-01 ",.02)
 ;;55045-1125-01
 ;;9002226.02101,"800,55045-1125-02 ",.01)
 ;;55045-1125-02
 ;;9002226.02101,"800,55045-1125-02 ",.02)
 ;;55045-1125-02
 ;;9002226.02101,"800,55045-1125-03 ",.01)
 ;;55045-1125-03
 ;;9002226.02101,"800,55045-1125-03 ",.02)
 ;;55045-1125-03
 ;;9002226.02101,"800,55045-1125-04 ",.01)
 ;;55045-1125-04
 ;;9002226.02101,"800,55045-1125-04 ",.02)
 ;;55045-1125-04
 ;;9002226.02101,"800,55045-1125-05 ",.01)
 ;;55045-1125-05
 ;;9002226.02101,"800,55045-1125-05 ",.02)
 ;;55045-1125-05
 ;;9002226.02101,"800,55045-1125-06 ",.01)
 ;;55045-1125-06
 ;;9002226.02101,"800,55045-1125-06 ",.02)
 ;;55045-1125-06
 ;;9002226.02101,"800,55045-1125-08 ",.01)
 ;;55045-1125-08
 ;;9002226.02101,"800,55045-1125-08 ",.02)
 ;;55045-1125-08
 ;;9002226.02101,"800,55045-1125-09 ",.01)
 ;;55045-1125-09
 ;;9002226.02101,"800,55045-1125-09 ",.02)
 ;;55045-1125-09
 ;;9002226.02101,"800,55045-1252-02 ",.01)
 ;;55045-1252-02
 ;;9002226.02101,"800,55045-1252-02 ",.02)
 ;;55045-1252-02
 ;;9002226.02101,"800,55045-1266-08 ",.01)
 ;;55045-1266-08
 ;;9002226.02101,"800,55045-1266-08 ",.02)
 ;;55045-1266-08
 ;;9002226.02101,"800,55045-1446-05 ",.01)
 ;;55045-1446-05
 ;;9002226.02101,"800,55045-1446-05 ",.02)
 ;;55045-1446-05
 ;;9002226.02101,"800,55045-1446-07 ",.01)
 ;;55045-1446-07
 ;;9002226.02101,"800,55045-1446-07 ",.02)
 ;;55045-1446-07
 ;;9002226.02101,"800,55045-1446-08 ",.01)
 ;;55045-1446-08
 ;;9002226.02101,"800,55045-1446-08 ",.02)
 ;;55045-1446-08
 ;;9002226.02101,"800,55045-1596-00 ",.01)
 ;;55045-1596-00
 ;;9002226.02101,"800,55045-1596-00 ",.02)
 ;;55045-1596-00
 ;;9002226.02101,"800,55045-1596-01 ",.01)
 ;;55045-1596-01
 ;;9002226.02101,"800,55045-1596-01 ",.02)
 ;;55045-1596-01
 ;;9002226.02101,"800,55045-1596-02 ",.01)
 ;;55045-1596-02
 ;;9002226.02101,"800,55045-1596-02 ",.02)
 ;;55045-1596-02
 ;;9002226.02101,"800,55045-1596-03 ",.01)
 ;;55045-1596-03
 ;;9002226.02101,"800,55045-1596-03 ",.02)
 ;;55045-1596-03
 ;;9002226.02101,"800,55045-1596-04 ",.01)
 ;;55045-1596-04
 ;;9002226.02101,"800,55045-1596-04 ",.02)
 ;;55045-1596-04
 ;;9002226.02101,"800,55045-1596-05 ",.01)
 ;;55045-1596-05
 ;;9002226.02101,"800,55045-1596-05 ",.02)
 ;;55045-1596-05
 ;;9002226.02101,"800,55045-1596-06 ",.01)
 ;;55045-1596-06
 ;;9002226.02101,"800,55045-1596-06 ",.02)
 ;;55045-1596-06
 ;;9002226.02101,"800,55045-1596-08 ",.01)
 ;;55045-1596-08
 ;;9002226.02101,"800,55045-1596-08 ",.02)
 ;;55045-1596-08
 ;;9002226.02101,"800,55045-1596-09 ",.01)
 ;;55045-1596-09
 ;;9002226.02101,"800,55045-1596-09 ",.02)
 ;;55045-1596-09
 ;;9002226.02101,"800,55045-1643-09 ",.01)
 ;;55045-1643-09
 ;;9002226.02101,"800,55045-1643-09 ",.02)
 ;;55045-1643-09
 ;;9002226.02101,"800,55045-1661-00 ",.01)
 ;;55045-1661-00
 ;;9002226.02101,"800,55045-1661-00 ",.02)
 ;;55045-1661-00
 ;;9002226.02101,"800,55045-1661-01 ",.01)
 ;;55045-1661-01
 ;;9002226.02101,"800,55045-1661-01 ",.02)
 ;;55045-1661-01
 ;;9002226.02101,"800,55045-1661-02 ",.01)
 ;;55045-1661-02
 ;;9002226.02101,"800,55045-1661-02 ",.02)
 ;;55045-1661-02
 ;;9002226.02101,"800,55045-1661-03 ",.01)
 ;;55045-1661-03
 ;;9002226.02101,"800,55045-1661-03 ",.02)
 ;;55045-1661-03
 ;;9002226.02101,"800,55045-1661-06 ",.01)
 ;;55045-1661-06
 ;;9002226.02101,"800,55045-1661-06 ",.02)
 ;;55045-1661-06
 ;;9002226.02101,"800,55045-1661-08 ",.01)
 ;;55045-1661-08
 ;;9002226.02101,"800,55045-1661-08 ",.02)
 ;;55045-1661-08
 ;;9002226.02101,"800,55045-1687-02 ",.01)
 ;;55045-1687-02
 ;;9002226.02101,"800,55045-1687-02 ",.02)
 ;;55045-1687-02
 ;;9002226.02101,"800,55045-1699-02 ",.01)
 ;;55045-1699-02
 ;;9002226.02101,"800,55045-1699-02 ",.02)
 ;;55045-1699-02
 ;;9002226.02101,"800,55045-1805-08 ",.01)
 ;;55045-1805-08
 ;;9002226.02101,"800,55045-1805-08 ",.02)
 ;;55045-1805-08
 ;;9002226.02101,"800,55045-2195-02 ",.01)
 ;;55045-2195-02
 ;;9002226.02101,"800,55045-2195-02 ",.02)
 ;;55045-2195-02
 ;;9002226.02101,"800,55045-2195-04 ",.01)
 ;;55045-2195-04
 ;;9002226.02101,"800,55045-2195-04 ",.02)
 ;;55045-2195-04
 ;;9002226.02101,"800,55045-2195-05 ",.01)
 ;;55045-2195-05
 ;;9002226.02101,"800,55045-2195-05 ",.02)
 ;;55045-2195-05
 ;;9002226.02101,"800,55045-2195-06 ",.01)
 ;;55045-2195-06
 ;;9002226.02101,"800,55045-2195-06 ",.02)
 ;;55045-2195-06
 ;;9002226.02101,"800,55045-2195-07 ",.01)
 ;;55045-2195-07
 ;;9002226.02101,"800,55045-2195-07 ",.02)
 ;;55045-2195-07
 ;;9002226.02101,"800,55045-2195-08 ",.01)
 ;;55045-2195-08
 ;;9002226.02101,"800,55045-2195-08 ",.02)
 ;;55045-2195-08
 ;;9002226.02101,"800,55045-2195-09 ",.01)
 ;;55045-2195-09
 ;;9002226.02101,"800,55045-2195-09 ",.02)
 ;;55045-2195-09
 ;;9002226.02101,"800,55289-0089-20 ",.01)
 ;;55289-0089-20
 ;;9002226.02101,"800,55289-0089-20 ",.02)
 ;;55289-0089-20
 ;;9002226.02101,"800,55289-0089-30 ",.01)
 ;;55289-0089-30
 ;;9002226.02101,"800,55289-0089-30 ",.02)
 ;;55289-0089-30
 ;;9002226.02101,"800,55289-0100-01 ",.01)
 ;;55289-0100-01
 ;;9002226.02101,"800,55289-0100-01 ",.02)
 ;;55289-0100-01
 ;;9002226.02101,"800,55289-0100-10 ",.01)
 ;;55289-0100-10
 ;;9002226.02101,"800,55289-0100-10 ",.02)
 ;;55289-0100-10
 ;;9002226.02101,"800,55289-0100-15 ",.01)
 ;;55289-0100-15
 ;;9002226.02101,"800,55289-0100-15 ",.02)
 ;;55289-0100-15
 ;;9002226.02101,"800,55289-0100-20 ",.01)
 ;;55289-0100-20
 ;;9002226.02101,"800,55289-0100-20 ",.02)
 ;;55289-0100-20
 ;;9002226.02101,"800,55289-0100-30 ",.01)
 ;;55289-0100-30
 ;;9002226.02101,"800,55289-0100-30 ",.02)
 ;;55289-0100-30
 ;;9002226.02101,"800,55289-0100-40 ",.01)
 ;;55289-0100-40
 ;;9002226.02101,"800,55289-0100-40 ",.02)
 ;;55289-0100-40
 ;;9002226.02101,"800,55289-0138-01 ",.01)
 ;;55289-0138-01
 ;;9002226.02101,"800,55289-0138-01 ",.02)
 ;;55289-0138-01
 ;;9002226.02101,"800,55289-0138-12 ",.01)
 ;;55289-0138-12
 ;;9002226.02101,"800,55289-0138-12 ",.02)
 ;;55289-0138-12
 ;;9002226.02101,"800,55289-0138-17 ",.01)
 ;;55289-0138-17
 ;;9002226.02101,"800,55289-0138-17 ",.02)
 ;;55289-0138-17
 ;;9002226.02101,"800,55289-0138-20 ",.01)
 ;;55289-0138-20
 ;;9002226.02101,"800,55289-0138-20 ",.02)
 ;;55289-0138-20
 ;;9002226.02101,"800,55289-0138-25 ",.01)
 ;;55289-0138-25