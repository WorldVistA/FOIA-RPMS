BGP47J25 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"618,54868-1323-08 ",.02)
 ;;54868-1323-08
 ;;9002226.02101,"618,54868-1323-09 ",.01)
 ;;54868-1323-09
 ;;9002226.02101,"618,54868-1323-09 ",.02)
 ;;54868-1323-09
 ;;9002226.02101,"618,54868-1332-01 ",.01)
 ;;54868-1332-01
 ;;9002226.02101,"618,54868-1332-01 ",.02)
 ;;54868-1332-01
 ;;9002226.02101,"618,54868-1332-02 ",.01)
 ;;54868-1332-02
 ;;9002226.02101,"618,54868-1332-02 ",.02)
 ;;54868-1332-02
 ;;9002226.02101,"618,54868-1332-03 ",.01)
 ;;54868-1332-03
 ;;9002226.02101,"618,54868-1332-03 ",.02)
 ;;54868-1332-03
 ;;9002226.02101,"618,54868-1332-04 ",.01)
 ;;54868-1332-04
 ;;9002226.02101,"618,54868-1332-04 ",.02)
 ;;54868-1332-04
 ;;9002226.02101,"618,54868-1332-05 ",.01)
 ;;54868-1332-05
 ;;9002226.02101,"618,54868-1332-05 ",.02)
 ;;54868-1332-05
 ;;9002226.02101,"618,54868-1332-06 ",.01)
 ;;54868-1332-06
 ;;9002226.02101,"618,54868-1332-06 ",.02)
 ;;54868-1332-06
 ;;9002226.02101,"618,54868-1332-07 ",.01)
 ;;54868-1332-07
 ;;9002226.02101,"618,54868-1332-07 ",.02)
 ;;54868-1332-07
 ;;9002226.02101,"618,54868-1406-01 ",.01)
 ;;54868-1406-01
 ;;9002226.02101,"618,54868-1406-01 ",.02)
 ;;54868-1406-01
 ;;9002226.02101,"618,54868-1455-03 ",.01)
 ;;54868-1455-03
 ;;9002226.02101,"618,54868-1455-03 ",.02)
 ;;54868-1455-03
 ;;9002226.02101,"618,54868-1611-01 ",.01)
 ;;54868-1611-01
 ;;9002226.02101,"618,54868-1611-01 ",.02)
 ;;54868-1611-01
 ;;9002226.02101,"618,54868-1613-00 ",.01)
 ;;54868-1613-00
 ;;9002226.02101,"618,54868-1613-00 ",.02)
 ;;54868-1613-00
 ;;9002226.02101,"618,54868-1613-01 ",.01)
 ;;54868-1613-01
 ;;9002226.02101,"618,54868-1613-01 ",.02)
 ;;54868-1613-01
 ;;9002226.02101,"618,54868-1613-02 ",.01)
 ;;54868-1613-02
 ;;9002226.02101,"618,54868-1613-02 ",.02)
 ;;54868-1613-02
 ;;9002226.02101,"618,54868-1613-03 ",.01)
 ;;54868-1613-03
 ;;9002226.02101,"618,54868-1613-03 ",.02)
 ;;54868-1613-03
 ;;9002226.02101,"618,54868-1804-00 ",.01)
 ;;54868-1804-00
 ;;9002226.02101,"618,54868-1804-00 ",.02)
 ;;54868-1804-00
 ;;9002226.02101,"618,54868-1804-01 ",.01)
 ;;54868-1804-01
 ;;9002226.02101,"618,54868-1804-01 ",.02)
 ;;54868-1804-01
 ;;9002226.02101,"618,54868-1804-02 ",.01)
 ;;54868-1804-02
 ;;9002226.02101,"618,54868-1804-02 ",.02)
 ;;54868-1804-02
 ;;9002226.02101,"618,54868-1804-04 ",.01)
 ;;54868-1804-04
 ;;9002226.02101,"618,54868-1804-04 ",.02)
 ;;54868-1804-04
 ;;9002226.02101,"618,54868-1804-05 ",.01)
 ;;54868-1804-05
 ;;9002226.02101,"618,54868-1804-05 ",.02)
 ;;54868-1804-05
 ;;9002226.02101,"618,54868-1854-00 ",.01)
 ;;54868-1854-00
 ;;9002226.02101,"618,54868-1854-00 ",.02)
 ;;54868-1854-00
 ;;9002226.02101,"618,54868-1854-01 ",.01)
 ;;54868-1854-01
 ;;9002226.02101,"618,54868-1854-01 ",.02)
 ;;54868-1854-01
 ;;9002226.02101,"618,54868-1854-02 ",.01)
 ;;54868-1854-02
 ;;9002226.02101,"618,54868-1854-02 ",.02)
 ;;54868-1854-02
 ;;9002226.02101,"618,54868-1854-03 ",.01)
 ;;54868-1854-03
 ;;9002226.02101,"618,54868-1854-03 ",.02)
 ;;54868-1854-03
 ;;9002226.02101,"618,54868-1854-04 ",.01)
 ;;54868-1854-04
 ;;9002226.02101,"618,54868-1854-04 ",.02)
 ;;54868-1854-04
 ;;9002226.02101,"618,54868-1867-00 ",.01)
 ;;54868-1867-00
 ;;9002226.02101,"618,54868-1867-00 ",.02)
 ;;54868-1867-00
 ;;9002226.02101,"618,54868-1932-00 ",.01)
 ;;54868-1932-00
 ;;9002226.02101,"618,54868-1932-00 ",.02)
 ;;54868-1932-00
 ;;9002226.02101,"618,54868-1932-01 ",.01)
 ;;54868-1932-01
 ;;9002226.02101,"618,54868-1932-01 ",.02)
 ;;54868-1932-01
 ;;9002226.02101,"618,54868-1932-02 ",.01)
 ;;54868-1932-02
 ;;9002226.02101,"618,54868-1932-02 ",.02)
 ;;54868-1932-02
 ;;9002226.02101,"618,54868-1933-00 ",.01)
 ;;54868-1933-00
 ;;9002226.02101,"618,54868-1933-00 ",.02)
 ;;54868-1933-00
 ;;9002226.02101,"618,54868-1933-01 ",.01)
 ;;54868-1933-01
 ;;9002226.02101,"618,54868-1933-01 ",.02)
 ;;54868-1933-01
 ;;9002226.02101,"618,54868-1933-02 ",.01)
 ;;54868-1933-02
 ;;9002226.02101,"618,54868-1933-02 ",.02)
 ;;54868-1933-02
 ;;9002226.02101,"618,54868-1958-01 ",.01)
 ;;54868-1958-01
 ;;9002226.02101,"618,54868-1958-01 ",.02)
 ;;54868-1958-01
 ;;9002226.02101,"618,54868-1979-00 ",.01)
 ;;54868-1979-00
 ;;9002226.02101,"618,54868-1979-00 ",.02)
 ;;54868-1979-00
 ;;9002226.02101,"618,54868-1990-00 ",.01)
 ;;54868-1990-00
 ;;9002226.02101,"618,54868-1990-00 ",.02)
 ;;54868-1990-00
 ;;9002226.02101,"618,54868-2032-00 ",.01)
 ;;54868-2032-00
 ;;9002226.02101,"618,54868-2032-00 ",.02)
 ;;54868-2032-00
 ;;9002226.02101,"618,54868-2088-00 ",.01)
 ;;54868-2088-00
 ;;9002226.02101,"618,54868-2088-00 ",.02)
 ;;54868-2088-00
 ;;9002226.02101,"618,54868-2292-00 ",.01)
 ;;54868-2292-00
 ;;9002226.02101,"618,54868-2292-00 ",.02)
 ;;54868-2292-00
 ;;9002226.02101,"618,54868-2292-02 ",.01)
 ;;54868-2292-02
 ;;9002226.02101,"618,54868-2292-02 ",.02)
 ;;54868-2292-02
 ;;9002226.02101,"618,54868-2301-00 ",.01)
 ;;54868-2301-00
 ;;9002226.02101,"618,54868-2301-00 ",.02)
 ;;54868-2301-00
 ;;9002226.02101,"618,54868-2301-02 ",.01)
 ;;54868-2301-02
 ;;9002226.02101,"618,54868-2301-02 ",.02)
 ;;54868-2301-02
 ;;9002226.02101,"618,54868-2340-02 ",.01)
 ;;54868-2340-02
 ;;9002226.02101,"618,54868-2340-02 ",.02)
 ;;54868-2340-02
 ;;9002226.02101,"618,54868-2340-03 ",.01)
 ;;54868-2340-03
 ;;9002226.02101,"618,54868-2340-03 ",.02)
 ;;54868-2340-03
 ;;9002226.02101,"618,54868-2695-00 ",.01)
 ;;54868-2695-00
 ;;9002226.02101,"618,54868-2695-00 ",.02)
 ;;54868-2695-00
 ;;9002226.02101,"618,54868-2844-00 ",.01)
 ;;54868-2844-00
 ;;9002226.02101,"618,54868-2844-00 ",.02)
 ;;54868-2844-00
 ;;9002226.02101,"618,54868-2844-01 ",.01)
 ;;54868-2844-01
 ;;9002226.02101,"618,54868-2844-01 ",.02)
 ;;54868-2844-01
 ;;9002226.02101,"618,54868-2874-01 ",.01)
 ;;54868-2874-01
 ;;9002226.02101,"618,54868-2874-01 ",.02)
 ;;54868-2874-01
 ;;9002226.02101,"618,54868-2892-00 ",.01)
 ;;54868-2892-00
 ;;9002226.02101,"618,54868-2892-00 ",.02)
 ;;54868-2892-00
 ;;9002226.02101,"618,54868-2892-02 ",.01)
 ;;54868-2892-02
 ;;9002226.02101,"618,54868-2892-02 ",.02)
 ;;54868-2892-02
 ;;9002226.02101,"618,54868-2892-03 ",.01)
 ;;54868-2892-03
 ;;9002226.02101,"618,54868-2892-03 ",.02)
 ;;54868-2892-03
 ;;9002226.02101,"618,54868-2892-04 ",.01)
 ;;54868-2892-04
 ;;9002226.02101,"618,54868-2892-04 ",.02)
 ;;54868-2892-04
 ;;9002226.02101,"618,54868-2892-05 ",.01)
 ;;54868-2892-05
 ;;9002226.02101,"618,54868-2892-05 ",.02)
 ;;54868-2892-05
 ;;9002226.02101,"618,54868-3007-00 ",.01)
 ;;54868-3007-00
 ;;9002226.02101,"618,54868-3007-00 ",.02)
 ;;54868-3007-00
 ;;9002226.02101,"618,54868-3007-01 ",.01)
 ;;54868-3007-01
 ;;9002226.02101,"618,54868-3007-01 ",.02)
 ;;54868-3007-01
 ;;9002226.02101,"618,54868-3935-00 ",.01)
 ;;54868-3935-00
 ;;9002226.02101,"618,54868-3935-00 ",.02)
 ;;54868-3935-00
 ;;9002226.02101,"618,54868-3935-01 ",.01)
 ;;54868-3935-01
 ;;9002226.02101,"618,54868-3935-01 ",.02)
 ;;54868-3935-01
 ;;9002226.02101,"618,54868-3989-00 ",.01)
 ;;54868-3989-00
 ;;9002226.02101,"618,54868-3989-00 ",.02)
 ;;54868-3989-00
 ;;9002226.02101,"618,54868-4021-00 ",.01)
 ;;54868-4021-00
 ;;9002226.02101,"618,54868-4021-00 ",.02)
 ;;54868-4021-00
 ;;9002226.02101,"618,54868-4109-00 ",.01)
 ;;54868-4109-00
 ;;9002226.02101,"618,54868-4109-00 ",.02)
 ;;54868-4109-00
 ;;9002226.02101,"618,54868-4136-02 ",.01)
 ;;54868-4136-02
 ;;9002226.02101,"618,54868-4136-02 ",.02)
 ;;54868-4136-02
 ;;9002226.02101,"618,54868-4336-00 ",.01)
 ;;54868-4336-00
 ;;9002226.02101,"618,54868-4336-00 ",.02)
 ;;54868-4336-00
 ;;9002226.02101,"618,54868-4336-01 ",.01)
 ;;54868-4336-01
 ;;9002226.02101,"618,54868-4336-01 ",.02)
 ;;54868-4336-01
 ;;9002226.02101,"618,54868-4338-00 ",.01)
 ;;54868-4338-00
 ;;9002226.02101,"618,54868-4338-00 ",.02)
 ;;54868-4338-00
 ;;9002226.02101,"618,54868-4686-00 ",.01)
 ;;54868-4686-00
 ;;9002226.02101,"618,54868-4686-00 ",.02)
 ;;54868-4686-00
 ;;9002226.02101,"618,54868-4727-00 ",.01)
 ;;54868-4727-00
 ;;9002226.02101,"618,54868-4727-00 ",.02)
 ;;54868-4727-00
 ;;9002226.02101,"618,54868-4794-00 ",.01)
 ;;54868-4794-00
 ;;9002226.02101,"618,54868-4794-00 ",.02)
 ;;54868-4794-00
 ;;9002226.02101,"618,54868-4794-01 ",.01)
 ;;54868-4794-01
 ;;9002226.02101,"618,54868-4794-01 ",.02)
 ;;54868-4794-01
 ;;9002226.02101,"618,54868-4794-02 ",.01)
 ;;54868-4794-02
 ;;9002226.02101,"618,54868-4794-02 ",.02)
 ;;54868-4794-02
 ;;9002226.02101,"618,54868-4962-00 ",.01)
 ;;54868-4962-00
 ;;9002226.02101,"618,54868-4962-00 ",.02)
 ;;54868-4962-00
 ;;9002226.02101,"618,54868-4962-01 ",.01)
 ;;54868-4962-01
 ;;9002226.02101,"618,54868-4962-01 ",.02)
 ;;54868-4962-01
 ;;9002226.02101,"618,54868-5017-00 ",.01)
 ;;54868-5017-00
 ;;9002226.02101,"618,54868-5017-00 ",.02)
 ;;54868-5017-00
 ;;9002226.02101,"618,54868-5086-00 ",.01)
 ;;54868-5086-00
 ;;9002226.02101,"618,54868-5086-00 ",.02)
 ;;54868-5086-00
 ;;9002226.02101,"618,54868-5086-01 ",.01)
 ;;54868-5086-01
 ;;9002226.02101,"618,54868-5086-01 ",.02)
 ;;54868-5086-01
 ;;9002226.02101,"618,54868-5094-00 ",.01)
 ;;54868-5094-00
 ;;9002226.02101,"618,54868-5094-00 ",.02)
 ;;54868-5094-00
 ;;9002226.02101,"618,54868-5094-01 ",.01)
 ;;54868-5094-01
 ;;9002226.02101,"618,54868-5094-01 ",.02)
 ;;54868-5094-01
 ;;9002226.02101,"618,54868-5121-00 ",.01)
 ;;54868-5121-00
 ;;9002226.02101,"618,54868-5121-00 ",.02)
 ;;54868-5121-00
 ;;9002226.02101,"618,54868-5121-01 ",.01)
 ;;54868-5121-01
 ;;9002226.02101,"618,54868-5121-01 ",.02)
 ;;54868-5121-01
 ;;9002226.02101,"618,54868-5121-02 ",.01)
 ;;54868-5121-02
 ;;9002226.02101,"618,54868-5121-02 ",.02)
 ;;54868-5121-02
 ;;9002226.02101,"618,54868-5121-03 ",.01)
 ;;54868-5121-03
 ;;9002226.02101,"618,54868-5121-03 ",.02)
 ;;54868-5121-03
 ;;9002226.02101,"618,54868-5121-04 ",.01)
 ;;54868-5121-04
 ;;9002226.02101,"618,54868-5121-04 ",.02)
 ;;54868-5121-04
 ;;9002226.02101,"618,54868-5149-00 ",.01)
 ;;54868-5149-00
 ;;9002226.02101,"618,54868-5149-00 ",.02)
 ;;54868-5149-00
 ;;9002226.02101,"618,54868-5149-01 ",.01)
 ;;54868-5149-01
 ;;9002226.02101,"618,54868-5149-01 ",.02)
 ;;54868-5149-01
 ;;9002226.02101,"618,54868-5151-00 ",.01)
 ;;54868-5151-00
 ;;9002226.02101,"618,54868-5151-00 ",.02)
 ;;54868-5151-00
 ;;9002226.02101,"618,54868-5151-01 ",.01)
 ;;54868-5151-01
 ;;9002226.02101,"618,54868-5151-01 ",.02)
 ;;54868-5151-01
 ;;9002226.02101,"618,54868-5151-02 ",.01)
 ;;54868-5151-02
 ;;9002226.02101,"618,54868-5151-02 ",.02)
 ;;54868-5151-02
 ;;9002226.02101,"618,54868-5151-03 ",.01)
 ;;54868-5151-03
 ;;9002226.02101,"618,54868-5151-03 ",.02)
 ;;54868-5151-03
 ;;9002226.02101,"618,54868-5151-04 ",.01)
 ;;54868-5151-04
 ;;9002226.02101,"618,54868-5151-04 ",.02)
 ;;54868-5151-04
 ;;9002226.02101,"618,54868-5151-05 ",.01)
 ;;54868-5151-05
 ;;9002226.02101,"618,54868-5151-05 ",.02)
 ;;54868-5151-05
 ;;9002226.02101,"618,54868-5176-00 ",.01)
 ;;54868-5176-00
 ;;9002226.02101,"618,54868-5176-00 ",.02)
 ;;54868-5176-00
 ;;9002226.02101,"618,54868-5220-00 ",.01)
 ;;54868-5220-00
 ;;9002226.02101,"618,54868-5220-00 ",.02)
 ;;54868-5220-00
 ;;9002226.02101,"618,54868-5221-00 ",.01)
 ;;54868-5221-00
 ;;9002226.02101,"618,54868-5221-00 ",.02)
 ;;54868-5221-00
 ;;9002226.02101,"618,54868-5252-00 ",.01)
 ;;54868-5252-00
 ;;9002226.02101,"618,54868-5252-00 ",.02)
 ;;54868-5252-00
 ;;9002226.02101,"618,54868-5491-00 ",.01)
 ;;54868-5491-00
 ;;9002226.02101,"618,54868-5491-00 ",.02)
 ;;54868-5491-00
 ;;9002226.02101,"618,54868-5491-01 ",.01)
 ;;54868-5491-01
 ;;9002226.02101,"618,54868-5491-01 ",.02)
 ;;54868-5491-01
 ;;9002226.02101,"618,54868-5599-00 ",.01)
 ;;54868-5599-00
 ;;9002226.02101,"618,54868-5599-00 ",.02)
 ;;54868-5599-00
 ;;9002226.02101,"618,54868-5599-01 ",.01)
 ;;54868-5599-01
 ;;9002226.02101,"618,54868-5599-01 ",.02)
 ;;54868-5599-01
 ;;9002226.02101,"618,54868-6011-00 ",.01)
 ;;54868-6011-00
 ;;9002226.02101,"618,54868-6011-00 ",.02)
 ;;54868-6011-00
 ;;9002226.02101,"618,54868-6196-00 ",.01)
 ;;54868-6196-00
 ;;9002226.02101,"618,54868-6196-00 ",.02)
 ;;54868-6196-00
 ;;9002226.02101,"618,55045-1124-00 ",.01)
 ;;55045-1124-00
 ;;9002226.02101,"618,55045-1124-00 ",.02)
 ;;55045-1124-00
 ;;9002226.02101,"618,55045-1124-01 ",.01)
 ;;55045-1124-01
 ;;9002226.02101,"618,55045-1124-01 ",.02)
 ;;55045-1124-01
 ;;9002226.02101,"618,55045-1124-05 ",.01)
 ;;55045-1124-05
 ;;9002226.02101,"618,55045-1124-05 ",.02)
 ;;55045-1124-05
 ;;9002226.02101,"618,55045-1124-08 ",.01)
 ;;55045-1124-08
 ;;9002226.02101,"618,55045-1124-08 ",.02)
 ;;55045-1124-08
 ;;9002226.02101,"618,55045-1248-02 ",.01)
 ;;55045-1248-02
 ;;9002226.02101,"618,55045-1248-02 ",.02)
 ;;55045-1248-02
 ;;9002226.02101,"618,55045-1248-08 ",.01)
 ;;55045-1248-08
 ;;9002226.02101,"618,55045-1248-08 ",.02)
 ;;55045-1248-08
 ;;9002226.02101,"618,55045-1250-02 ",.01)
 ;;55045-1250-02
 ;;9002226.02101,"618,55045-1250-02 ",.02)
 ;;55045-1250-02
 ;;9002226.02101,"618,55045-1250-04 ",.01)
 ;;55045-1250-04
 ;;9002226.02101,"618,55045-1250-04 ",.02)
 ;;55045-1250-04
 ;;9002226.02101,"618,55045-1252-02 ",.01)
 ;;55045-1252-02
 ;;9002226.02101,"618,55045-1252-02 ",.02)
 ;;55045-1252-02
 ;;9002226.02101,"618,55045-1266-08 ",.01)
 ;;55045-1266-08
 ;;9002226.02101,"618,55045-1266-08 ",.02)
 ;;55045-1266-08
 ;;9002226.02101,"618,55045-1266-09 ",.01)
 ;;55045-1266-09
 ;;9002226.02101,"618,55045-1266-09 ",.02)
 ;;55045-1266-09
 ;;9002226.02101,"618,55045-1279-08 ",.01)
 ;;55045-1279-08
 ;;9002226.02101,"618,55045-1279-08 ",.02)
 ;;55045-1279-08
 ;;9002226.02101,"618,55045-1288-07 ",.01)
 ;;55045-1288-07