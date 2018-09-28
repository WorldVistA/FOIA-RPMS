BGP82J9 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1220,00093-7030-98 ",.01)
 ;;00093-7030-98
 ;;9002226.02101,"1220,00093-7030-98 ",.02)
 ;;00093-7030-98
 ;;9002226.02101,"1220,00093-7037-56 ",.01)
 ;;00093-7037-56
 ;;9002226.02101,"1220,00093-7037-56 ",.02)
 ;;00093-7037-56
 ;;9002226.02101,"1220,00093-7037-98 ",.01)
 ;;00093-7037-98
 ;;9002226.02101,"1220,00093-7037-98 ",.02)
 ;;00093-7037-98
 ;;9002226.02101,"1220,00093-7038-56 ",.01)
 ;;00093-7038-56
 ;;9002226.02101,"1220,00093-7038-56 ",.02)
 ;;00093-7038-56
 ;;9002226.02101,"1220,00093-7038-98 ",.01)
 ;;00093-7038-98
 ;;9002226.02101,"1220,00093-7038-98 ",.02)
 ;;00093-7038-98
 ;;9002226.02101,"1220,00093-7167-55 ",.01)
 ;;00093-7167-55
 ;;9002226.02101,"1220,00093-7167-55 ",.02)
 ;;00093-7167-55
 ;;9002226.02101,"1220,00093-7167-98 ",.01)
 ;;00093-7167-98
 ;;9002226.02101,"1220,00093-7167-98 ",.02)
 ;;00093-7167-98
 ;;9002226.02101,"1220,00093-7168-98 ",.01)
 ;;00093-7168-98
 ;;9002226.02101,"1220,00093-7168-98 ",.02)
 ;;00093-7168-98
 ;;9002226.02101,"1220,00093-7370-01 ",.01)
 ;;00093-7370-01
 ;;9002226.02101,"1220,00093-7370-01 ",.02)
 ;;00093-7370-01
 ;;9002226.02101,"1220,00093-7371-01 ",.01)
 ;;00093-7371-01
 ;;9002226.02101,"1220,00093-7371-01 ",.02)
 ;;00093-7371-01
 ;;9002226.02101,"1220,00093-7371-10 ",.01)
 ;;00093-7371-10
 ;;9002226.02101,"1220,00093-7371-10 ",.02)
 ;;00093-7371-10
 ;;9002226.02101,"1220,00093-7372-01 ",.01)
 ;;00093-7372-01
 ;;9002226.02101,"1220,00093-7372-01 ",.02)
 ;;00093-7372-01
 ;;9002226.02101,"1220,00093-7372-10 ",.01)
 ;;00093-7372-10
 ;;9002226.02101,"1220,00093-7372-10 ",.02)
 ;;00093-7372-10
 ;;9002226.02101,"1220,00093-7373-01 ",.01)
 ;;00093-7373-01
 ;;9002226.02101,"1220,00093-7373-01 ",.02)
 ;;00093-7373-01
 ;;9002226.02101,"1220,00093-7373-10 ",.01)
 ;;00093-7373-10
 ;;9002226.02101,"1220,00093-7373-10 ",.02)
 ;;00093-7373-10
 ;;9002226.02101,"1220,00093-7670-01 ",.01)
 ;;00093-7670-01
 ;;9002226.02101,"1220,00093-7670-01 ",.02)
 ;;00093-7670-01
 ;;9002226.02101,"1220,00093-7671-01 ",.01)
 ;;00093-7671-01
 ;;9002226.02101,"1220,00093-7671-01 ",.02)
 ;;00093-7671-01
 ;;9002226.02101,"1220,00093-7690-56 ",.01)
 ;;00093-7690-56
 ;;9002226.02101,"1220,00093-7690-56 ",.02)
 ;;00093-7690-56
 ;;9002226.02101,"1220,00093-7690-98 ",.01)
 ;;00093-7690-98
 ;;9002226.02101,"1220,00093-7690-98 ",.02)
 ;;00093-7690-98
 ;;9002226.02101,"1220,00093-7691-56 ",.01)
 ;;00093-7691-56
 ;;9002226.02101,"1220,00093-7691-56 ",.02)
 ;;00093-7691-56
 ;;9002226.02101,"1220,00093-7691-98 ",.01)
 ;;00093-7691-98
 ;;9002226.02101,"1220,00093-7691-98 ",.02)
 ;;00093-7691-98
 ;;9002226.02101,"1220,00093-7692-56 ",.01)
 ;;00093-7692-56
 ;;9002226.02101,"1220,00093-7692-56 ",.02)
 ;;00093-7692-56
 ;;9002226.02101,"1220,00093-7692-98 ",.01)
 ;;00093-7692-98
 ;;9002226.02101,"1220,00093-7692-98 ",.02)
 ;;00093-7692-98
 ;;9002226.02101,"1220,00093-7693-56 ",.01)
 ;;00093-7693-56
 ;;9002226.02101,"1220,00093-7693-56 ",.02)
 ;;00093-7693-56
 ;;9002226.02101,"1220,00093-7693-98 ",.01)
 ;;00093-7693-98
 ;;9002226.02101,"1220,00093-7693-98 ",.02)
 ;;00093-7693-98
 ;;9002226.02101,"1220,00093-7807-56 ",.01)
 ;;00093-7807-56
 ;;9002226.02101,"1220,00093-7807-56 ",.02)
 ;;00093-7807-56
 ;;9002226.02101,"1220,00093-7807-98 ",.01)
 ;;00093-7807-98
 ;;9002226.02101,"1220,00093-7807-98 ",.02)
 ;;00093-7807-98
 ;;9002226.02101,"1220,00093-7809-56 ",.01)
 ;;00093-7809-56
 ;;9002226.02101,"1220,00093-7809-56 ",.02)
 ;;00093-7809-56
 ;;9002226.02101,"1220,00093-7809-98 ",.01)
 ;;00093-7809-98
 ;;9002226.02101,"1220,00093-7809-98 ",.02)
 ;;00093-7809-98
 ;;9002226.02101,"1220,00093-7810-56 ",.01)
 ;;00093-7810-56
 ;;9002226.02101,"1220,00093-7810-56 ",.02)
 ;;00093-7810-56
 ;;9002226.02101,"1220,00093-7810-98 ",.01)
 ;;00093-7810-98
 ;;9002226.02101,"1220,00093-7810-98 ",.02)
 ;;00093-7810-98
 ;;9002226.02101,"1220,00143-9959-09 ",.01)
 ;;00143-9959-09
 ;;9002226.02101,"1220,00143-9959-09 ",.02)
 ;;00143-9959-09
 ;;9002226.02101,"1220,00143-9960-09 ",.01)
 ;;00143-9960-09
 ;;9002226.02101,"1220,00143-9960-09 ",.02)
 ;;00143-9960-09
 ;;9002226.02101,"1220,00143-9961-09 ",.01)
 ;;00143-9961-09
 ;;9002226.02101,"1220,00143-9961-09 ",.02)
 ;;00143-9961-09
 ;;9002226.02101,"1220,00187-0771-47 ",.01)
 ;;00187-0771-47
 ;;9002226.02101,"1220,00187-0771-47 ",.02)
 ;;00187-0771-47
 ;;9002226.02101,"1220,00187-0772-47 ",.01)
 ;;00187-0772-47
 ;;9002226.02101,"1220,00187-0772-47 ",.02)
 ;;00187-0772-47
 ;;9002226.02101,"1220,00187-0792-47 ",.01)
 ;;00187-0792-47
 ;;9002226.02101,"1220,00187-0792-47 ",.02)
 ;;00187-0792-47
 ;;9002226.02101,"1220,00187-0795-30 ",.01)
 ;;00187-0795-30
 ;;9002226.02101,"1220,00187-0795-30 ",.02)
 ;;00187-0795-30
 ;;9002226.02101,"1220,00187-0795-42 ",.01)
 ;;00187-0795-42
 ;;9002226.02101,"1220,00187-0795-42 ",.02)
 ;;00187-0795-42
 ;;9002226.02101,"1220,00187-0796-30 ",.01)
 ;;00187-0796-30
 ;;9002226.02101,"1220,00187-0796-30 ",.02)
 ;;00187-0796-30
 ;;9002226.02101,"1220,00187-0796-42 ",.01)
 ;;00187-0796-42
 ;;9002226.02101,"1220,00187-0796-42 ",.02)
 ;;00187-0796-42
 ;;9002226.02101,"1220,00187-0797-30 ",.01)
 ;;00187-0797-30
 ;;9002226.02101,"1220,00187-0797-30 ",.02)
 ;;00187-0797-30
 ;;9002226.02101,"1220,00187-0797-42 ",.01)
 ;;00187-0797-42
 ;;9002226.02101,"1220,00187-0797-42 ",.02)
 ;;00187-0797-42
 ;;9002226.02101,"1220,00187-0798-30 ",.01)
 ;;00187-0798-30
 ;;9002226.02101,"1220,00187-0798-30 ",.02)
 ;;00187-0798-30
 ;;9002226.02101,"1220,00187-0798-42 ",.01)
 ;;00187-0798-42
 ;;9002226.02101,"1220,00187-0798-42 ",.02)
 ;;00187-0798-42
 ;;9002226.02101,"1220,00187-0799-42 ",.01)
 ;;00187-0799-42
 ;;9002226.02101,"1220,00187-0799-42 ",.02)
 ;;00187-0799-42
 ;;9002226.02101,"1220,00187-2045-30 ",.01)
 ;;00187-2045-30
 ;;9002226.02101,"1220,00187-2045-30 ",.02)
 ;;00187-2045-30
 ;;9002226.02101,"1220,00187-2045-90 ",.01)
 ;;00187-2045-90
 ;;9002226.02101,"1220,00187-2045-90 ",.02)
 ;;00187-2045-90
 ;;9002226.02101,"1220,00187-2046-30 ",.01)
 ;;00187-2046-30
 ;;9002226.02101,"1220,00187-2046-30 ",.02)
 ;;00187-2046-30
 ;;9002226.02101,"1220,00187-2046-90 ",.01)
 ;;00187-2046-90
 ;;9002226.02101,"1220,00187-2046-90 ",.02)
 ;;00187-2046-90
 ;;9002226.02101,"1220,00187-2047-30 ",.01)
 ;;00187-2047-30
 ;;9002226.02101,"1220,00187-2047-30 ",.02)
 ;;00187-2047-30
 ;;9002226.02101,"1220,00187-2047-90 ",.01)
 ;;00187-2047-90
 ;;9002226.02101,"1220,00187-2047-90 ",.02)
 ;;00187-2047-90
 ;;9002226.02101,"1220,00187-2048-30 ",.01)
 ;;00187-2048-30
 ;;9002226.02101,"1220,00187-2048-30 ",.02)
 ;;00187-2048-30
 ;;9002226.02101,"1220,00187-2048-90 ",.01)
 ;;00187-2048-90
 ;;9002226.02101,"1220,00187-2048-90 ",.02)
 ;;00187-2048-90
 ;;9002226.02101,"1220,00187-2049-30 ",.01)
 ;;00187-2049-30
 ;;9002226.02101,"1220,00187-2049-30 ",.02)
 ;;00187-2049-30
 ;;9002226.02101,"1220,00187-2049-90 ",.01)
 ;;00187-2049-90
 ;;9002226.02101,"1220,00187-2049-90 ",.02)
 ;;00187-2049-90
 ;;9002226.02101,"1220,00187-2050-30 ",.01)
 ;;00187-2050-30
 ;;9002226.02101,"1220,00187-2050-30 ",.02)
 ;;00187-2050-30
 ;;9002226.02101,"1220,00187-2050-90 ",.01)
 ;;00187-2050-90
 ;;9002226.02101,"1220,00187-2050-90 ",.02)
 ;;00187-2050-90
 ;;9002226.02101,"1220,00187-2612-30 ",.01)
 ;;00187-2612-30
 ;;9002226.02101,"1220,00187-2612-30 ",.02)
 ;;00187-2612-30
 ;;9002226.02101,"1220,00187-2612-90 ",.01)
 ;;00187-2612-90
 ;;9002226.02101,"1220,00187-2612-90 ",.02)
 ;;00187-2612-90
 ;;9002226.02101,"1220,00187-2613-30 ",.01)
 ;;00187-2613-30
 ;;9002226.02101,"1220,00187-2613-30 ",.02)
 ;;00187-2613-30
 ;;9002226.02101,"1220,00187-2613-90 ",.01)
 ;;00187-2613-90
 ;;9002226.02101,"1220,00187-2613-90 ",.02)
 ;;00187-2613-90
 ;;9002226.02101,"1220,00187-2614-30 ",.01)
 ;;00187-2614-30
 ;;9002226.02101,"1220,00187-2614-30 ",.02)
 ;;00187-2614-30
 ;;9002226.02101,"1220,00187-2614-90 ",.01)
 ;;00187-2614-90
 ;;9002226.02101,"1220,00187-2614-90 ",.02)
 ;;00187-2614-90
 ;;9002226.02101,"1220,00187-2615-30 ",.01)
 ;;00187-2615-30
 ;;9002226.02101,"1220,00187-2615-30 ",.02)
 ;;00187-2615-30
 ;;9002226.02101,"1220,00187-2615-90 ",.01)
 ;;00187-2615-90
 ;;9002226.02101,"1220,00187-2615-90 ",.02)
 ;;00187-2615-90
 ;;9002226.02101,"1220,00187-2616-30 ",.01)
 ;;00187-2616-30
 ;;9002226.02101,"1220,00187-2616-30 ",.02)
 ;;00187-2616-30
 ;;9002226.02101,"1220,00187-2616-90 ",.01)
 ;;00187-2616-90
 ;;9002226.02101,"1220,00187-2616-90 ",.02)
 ;;00187-2616-90
 ;;9002226.02101,"1220,00187-2617-30 ",.01)
 ;;00187-2617-30
 ;;9002226.02101,"1220,00187-2617-30 ",.02)
 ;;00187-2617-30
 ;;9002226.02101,"1220,00187-2617-90 ",.01)
 ;;00187-2617-90
 ;;9002226.02101,"1220,00187-2617-90 ",.02)
 ;;00187-2617-90
 ;;9002226.02101,"1220,00228-1112-03 ",.01)
 ;;00228-1112-03
 ;;9002226.02101,"1220,00228-1112-03 ",.02)
 ;;00228-1112-03
 ;;9002226.02101,"1220,00228-1112-09 ",.01)
 ;;00228-1112-09
 ;;9002226.02101,"1220,00228-1112-09 ",.02)
 ;;00228-1112-09
 ;;9002226.02101,"1220,00228-1113-03 ",.01)
 ;;00228-1113-03
 ;;9002226.02101,"1220,00228-1113-03 ",.02)
 ;;00228-1113-03
 ;;9002226.02101,"1220,00228-1113-09 ",.01)
 ;;00228-1113-09
 ;;9002226.02101,"1220,00228-1113-09 ",.02)
 ;;00228-1113-09
 ;;9002226.02101,"1220,00228-1114-03 ",.01)
 ;;00228-1114-03
 ;;9002226.02101,"1220,00228-1114-03 ",.02)
 ;;00228-1114-03
 ;;9002226.02101,"1220,00228-1114-09 ",.01)
 ;;00228-1114-09
 ;;9002226.02101,"1220,00228-1114-09 ",.02)
 ;;00228-1114-09
 ;;9002226.02101,"1220,00228-1115-03 ",.01)
 ;;00228-1115-03
 ;;9002226.02101,"1220,00228-1115-03 ",.02)
 ;;00228-1115-03
 ;;9002226.02101,"1220,00228-1115-09 ",.01)
 ;;00228-1115-09
 ;;9002226.02101,"1220,00228-1115-09 ",.02)
 ;;00228-1115-09
 ;;9002226.02101,"1220,00228-1116-03 ",.01)
 ;;00228-1116-03
 ;;9002226.02101,"1220,00228-1116-03 ",.02)
 ;;00228-1116-03
 ;;9002226.02101,"1220,00228-1116-09 ",.01)
 ;;00228-1116-09
 ;;9002226.02101,"1220,00228-1116-09 ",.02)
 ;;00228-1116-09
 ;;9002226.02101,"1220,00228-1117-03 ",.01)
 ;;00228-1117-03
 ;;9002226.02101,"1220,00228-1117-03 ",.02)
 ;;00228-1117-03
 ;;9002226.02101,"1220,00228-1117-09 ",.01)
 ;;00228-1117-09
 ;;9002226.02101,"1220,00228-1117-09 ",.02)
 ;;00228-1117-09
 ;;9002226.02101,"1220,00228-2577-03 ",.01)
 ;;00228-2577-03
 ;;9002226.02101,"1220,00228-2577-03 ",.02)
 ;;00228-2577-03
 ;;9002226.02101,"1220,00228-2577-09 ",.01)
 ;;00228-2577-09
 ;;9002226.02101,"1220,00228-2577-09 ",.02)
 ;;00228-2577-09
 ;;9002226.02101,"1220,00228-2577-50 ",.01)
 ;;00228-2577-50
 ;;9002226.02101,"1220,00228-2577-50 ",.02)
 ;;00228-2577-50
 ;;9002226.02101,"1220,00228-2578-03 ",.01)
 ;;00228-2578-03
 ;;9002226.02101,"1220,00228-2578-03 ",.02)
 ;;00228-2578-03
 ;;9002226.02101,"1220,00228-2578-09 ",.01)
 ;;00228-2578-09
 ;;9002226.02101,"1220,00228-2578-09 ",.02)
 ;;00228-2578-09
 ;;9002226.02101,"1220,00228-2578-50 ",.01)
 ;;00228-2578-50
 ;;9002226.02101,"1220,00228-2578-50 ",.02)
 ;;00228-2578-50
 ;;9002226.02101,"1220,00228-2588-03 ",.01)
 ;;00228-2588-03
 ;;9002226.02101,"1220,00228-2588-03 ",.02)
 ;;00228-2588-03
 ;;9002226.02101,"1220,00228-2588-09 ",.01)
 ;;00228-2588-09
 ;;9002226.02101,"1220,00228-2588-09 ",.02)
 ;;00228-2588-09
 ;;9002226.02101,"1220,00228-2588-50 ",.01)
 ;;00228-2588-50
 ;;9002226.02101,"1220,00228-2588-50 ",.02)
 ;;00228-2588-50
 ;;9002226.02101,"1220,00228-2918-03 ",.01)
 ;;00228-2918-03
 ;;9002226.02101,"1220,00228-2918-03 ",.02)
 ;;00228-2918-03
 ;;9002226.02101,"1220,00228-2918-09 ",.01)
 ;;00228-2918-09
 ;;9002226.02101,"1220,00228-2918-09 ",.02)
 ;;00228-2918-09
 ;;9002226.02101,"1220,00378-0023-01 ",.01)
 ;;00378-0023-01
 ;;9002226.02101,"1220,00378-0023-01 ",.02)
 ;;00378-0023-01
 ;;9002226.02101,"1220,00378-0023-05 ",.01)
 ;;00378-0023-05