BGP82J10 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1220,00378-0023-05 ",.02)
 ;;00378-0023-05
 ;;9002226.02101,"1220,00378-0045-01 ",.01)
 ;;00378-0045-01
 ;;9002226.02101,"1220,00378-0045-01 ",.02)
 ;;00378-0045-01
 ;;9002226.02101,"1220,00378-0045-05 ",.01)
 ;;00378-0045-05
 ;;9002226.02101,"1220,00378-0045-05 ",.02)
 ;;00378-0045-05
 ;;9002226.02101,"1220,00378-0135-01 ",.01)
 ;;00378-0135-01
 ;;9002226.02101,"1220,00378-0135-01 ",.02)
 ;;00378-0135-01
 ;;9002226.02101,"1220,00378-0135-05 ",.01)
 ;;00378-0135-05
 ;;9002226.02101,"1220,00378-0135-05 ",.02)
 ;;00378-0135-05
 ;;9002226.02101,"1220,00378-0353-01 ",.01)
 ;;00378-0353-01
 ;;9002226.02101,"1220,00378-0353-01 ",.02)
 ;;00378-0353-01
 ;;9002226.02101,"1220,00378-0353-10 ",.01)
 ;;00378-0353-10
 ;;9002226.02101,"1220,00378-0353-10 ",.02)
 ;;00378-0353-10
 ;;9002226.02101,"1220,00378-0360-01 ",.01)
 ;;00378-0360-01
 ;;9002226.02101,"1220,00378-0360-01 ",.02)
 ;;00378-0360-01
 ;;9002226.02101,"1220,00378-0360-10 ",.01)
 ;;00378-0360-10
 ;;9002226.02101,"1220,00378-0360-10 ",.02)
 ;;00378-0360-10
 ;;9002226.02101,"1220,00378-0390-01 ",.01)
 ;;00378-0390-01
 ;;9002226.02101,"1220,00378-0390-01 ",.02)
 ;;00378-0390-01
 ;;9002226.02101,"1220,00378-0480-01 ",.01)
 ;;00378-0480-01
 ;;9002226.02101,"1220,00378-0480-01 ",.02)
 ;;00378-0480-01
 ;;9002226.02101,"1220,00378-0480-30 ",.01)
 ;;00378-0480-30
 ;;9002226.02101,"1220,00378-0480-30 ",.02)
 ;;00378-0480-30
 ;;9002226.02101,"1220,00378-0481-01 ",.01)
 ;;00378-0481-01
 ;;9002226.02101,"1220,00378-0481-01 ",.02)
 ;;00378-0481-01
 ;;9002226.02101,"1220,00378-0481-30 ",.01)
 ;;00378-0481-30
 ;;9002226.02101,"1220,00378-0481-30 ",.02)
 ;;00378-0481-30
 ;;9002226.02101,"1220,00378-0494-01 ",.01)
 ;;00378-0494-01
 ;;9002226.02101,"1220,00378-0494-01 ",.02)
 ;;00378-0494-01
 ;;9002226.02101,"1220,00378-0512-01 ",.01)
 ;;00378-0512-01
 ;;9002226.02101,"1220,00378-0512-01 ",.02)
 ;;00378-0512-01
 ;;9002226.02101,"1220,00378-0525-01 ",.01)
 ;;00378-0525-01
 ;;9002226.02101,"1220,00378-0525-01 ",.02)
 ;;00378-0525-01
 ;;9002226.02101,"1220,00378-0772-01 ",.01)
 ;;00378-0772-01
 ;;9002226.02101,"1220,00378-0772-01 ",.02)
 ;;00378-0772-01
 ;;9002226.02101,"1220,00378-0772-05 ",.01)
 ;;00378-0772-05
 ;;9002226.02101,"1220,00378-0772-05 ",.02)
 ;;00378-0772-05
 ;;9002226.02101,"1220,00378-1020-05 ",.01)
 ;;00378-1020-05
 ;;9002226.02101,"1220,00378-1020-05 ",.02)
 ;;00378-1020-05
 ;;9002226.02101,"1220,00378-1020-77 ",.01)
 ;;00378-1020-77
 ;;9002226.02101,"1220,00378-1020-77 ",.02)
 ;;00378-1020-77
 ;;9002226.02101,"1220,00378-1075-93 ",.01)
 ;;00378-1075-93
 ;;9002226.02101,"1220,00378-1075-93 ",.02)
 ;;00378-1075-93
 ;;9002226.02101,"1220,00378-1076-93 ",.01)
 ;;00378-1076-93
 ;;9002226.02101,"1220,00378-1076-93 ",.02)
 ;;00378-1076-93
 ;;9002226.02101,"1220,00378-1077-93 ",.01)
 ;;00378-1077-93
 ;;9002226.02101,"1220,00378-1077-93 ",.02)
 ;;00378-1077-93
 ;;9002226.02101,"1220,00378-1078-93 ",.01)
 ;;00378-1078-93
 ;;9002226.02101,"1220,00378-1078-93 ",.02)
 ;;00378-1078-93
 ;;9002226.02101,"1220,00378-1411-01 ",.01)
 ;;00378-1411-01
 ;;9002226.02101,"1220,00378-1411-01 ",.02)
 ;;00378-1411-01
 ;;9002226.02101,"1220,00378-1411-05 ",.01)
 ;;00378-1411-05
 ;;9002226.02101,"1220,00378-1411-05 ",.02)
 ;;00378-1411-05
 ;;9002226.02101,"1220,00378-1411-77 ",.01)
 ;;00378-1411-77
 ;;9002226.02101,"1220,00378-1411-77 ",.02)
 ;;00378-1411-77
 ;;9002226.02101,"1220,00378-1430-05 ",.01)
 ;;00378-1430-05
 ;;9002226.02101,"1220,00378-1430-05 ",.02)
 ;;00378-1430-05
 ;;9002226.02101,"1220,00378-1430-77 ",.01)
 ;;00378-1430-77
 ;;9002226.02101,"1220,00378-1430-77 ",.02)
 ;;00378-1430-77
 ;;9002226.02101,"1220,00378-1721-93 ",.01)
 ;;00378-1721-93
 ;;9002226.02101,"1220,00378-1721-93 ",.02)
 ;;00378-1721-93
 ;;9002226.02101,"1220,00378-1722-93 ",.01)
 ;;00378-1722-93
 ;;9002226.02101,"1220,00378-1722-93 ",.02)
 ;;00378-1722-93
 ;;9002226.02101,"1220,00378-1723-93 ",.01)
 ;;00378-1723-93
 ;;9002226.02101,"1220,00378-1723-93 ",.02)
 ;;00378-1723-93
 ;;9002226.02101,"1220,00378-1724-93 ",.01)
 ;;00378-1724-93
 ;;9002226.02101,"1220,00378-1724-93 ",.02)
 ;;00378-1724-93
 ;;9002226.02101,"1220,00378-2096-01 ",.01)
 ;;00378-2096-01
 ;;9002226.02101,"1220,00378-2096-01 ",.02)
 ;;00378-2096-01
 ;;9002226.02101,"1220,00378-2097-01 ",.01)
 ;;00378-2097-01
 ;;9002226.02101,"1220,00378-2097-01 ",.02)
 ;;00378-2097-01
 ;;9002226.02101,"1220,00378-2098-01 ",.01)
 ;;00378-2098-01
 ;;9002226.02101,"1220,00378-2098-01 ",.02)
 ;;00378-2098-01
 ;;9002226.02101,"1220,00378-2099-01 ",.01)
 ;;00378-2099-01
 ;;9002226.02101,"1220,00378-2099-01 ",.02)
 ;;00378-2099-01
 ;;9002226.02101,"1220,00378-2120-01 ",.01)
 ;;00378-2120-01
 ;;9002226.02101,"1220,00378-2120-01 ",.02)
 ;;00378-2120-01
 ;;9002226.02101,"1220,00378-2180-01 ",.01)
 ;;00378-2180-01
 ;;9002226.02101,"1220,00378-2180-01 ",.02)
 ;;00378-2180-01
 ;;9002226.02101,"1220,00378-2180-05 ",.01)
 ;;00378-2180-05
 ;;9002226.02101,"1220,00378-2180-05 ",.02)
 ;;00378-2180-05
 ;;9002226.02101,"1220,00378-2222-01 ",.01)
 ;;00378-2222-01
 ;;9002226.02101,"1220,00378-2222-01 ",.02)
 ;;00378-2222-01
 ;;9002226.02101,"1220,00378-2223-01 ",.01)
 ;;00378-2223-01
 ;;9002226.02101,"1220,00378-2223-01 ",.02)
 ;;00378-2223-01
 ;;9002226.02101,"1220,00378-2224-01 ",.01)
 ;;00378-2224-01
 ;;9002226.02101,"1220,00378-2224-01 ",.02)
 ;;00378-2224-01
 ;;9002226.02101,"1220,00378-4510-93 ",.01)
 ;;00378-4510-93
 ;;9002226.02101,"1220,00378-4510-93 ",.02)
 ;;00378-4510-93
 ;;9002226.02101,"1220,00378-4511-93 ",.01)
 ;;00378-4511-93
 ;;9002226.02101,"1220,00378-4511-93 ",.02)
 ;;00378-4511-93
 ;;9002226.02101,"1220,00378-4512-93 ",.01)
 ;;00378-4512-93
 ;;9002226.02101,"1220,00378-4512-93 ",.02)
 ;;00378-4512-93
 ;;9002226.02101,"1220,00378-4513-05 ",.01)
 ;;00378-4513-05
 ;;9002226.02101,"1220,00378-4513-05 ",.02)
 ;;00378-4513-05
 ;;9002226.02101,"1220,00378-4513-93 ",.01)
 ;;00378-4513-93
 ;;9002226.02101,"1220,00378-4513-93 ",.02)
 ;;00378-4513-93
 ;;9002226.02101,"1220,00378-4514-05 ",.01)
 ;;00378-4514-05
 ;;9002226.02101,"1220,00378-4514-05 ",.02)
 ;;00378-4514-05
 ;;9002226.02101,"1220,00378-4514-93 ",.01)
 ;;00378-4514-93
 ;;9002226.02101,"1220,00378-4514-93 ",.02)
 ;;00378-4514-93
 ;;9002226.02101,"1220,00378-4515-05 ",.01)
 ;;00378-4515-05
 ;;9002226.02101,"1220,00378-4515-05 ",.02)
 ;;00378-4515-05
 ;;9002226.02101,"1220,00378-4515-93 ",.01)
 ;;00378-4515-93
 ;;9002226.02101,"1220,00378-4515-93 ",.02)
 ;;00378-4515-93
 ;;9002226.02101,"1220,00378-4516-93 ",.01)
 ;;00378-4516-93
 ;;9002226.02101,"1220,00378-4516-93 ",.02)
 ;;00378-4516-93
 ;;9002226.02101,"1220,00378-4517-05 ",.01)
 ;;00378-4517-05
 ;;9002226.02101,"1220,00378-4517-05 ",.02)
 ;;00378-4517-05
 ;;9002226.02101,"1220,00378-4517-93 ",.01)
 ;;00378-4517-93
 ;;9002226.02101,"1220,00378-4517-93 ",.02)
 ;;00378-4517-93
 ;;9002226.02101,"1220,00378-4518-05 ",.01)
 ;;00378-4518-05
 ;;9002226.02101,"1220,00378-4518-05 ",.02)
 ;;00378-4518-05
 ;;9002226.02101,"1220,00378-4518-93 ",.01)
 ;;00378-4518-93
 ;;9002226.02101,"1220,00378-4518-93 ",.02)
 ;;00378-4518-93
 ;;9002226.02101,"1220,00378-4519-05 ",.01)
 ;;00378-4519-05
 ;;9002226.02101,"1220,00378-4519-05 ",.02)
 ;;00378-4519-05
 ;;9002226.02101,"1220,00378-4519-93 ",.01)
 ;;00378-4519-93
 ;;9002226.02101,"1220,00378-4519-93 ",.02)
 ;;00378-4519-93
 ;;9002226.02101,"1220,00378-4520-93 ",.01)
 ;;00378-4520-93
 ;;9002226.02101,"1220,00378-4520-93 ",.02)
 ;;00378-4520-93
 ;;9002226.02101,"1220,00378-5011-01 ",.01)
 ;;00378-5011-01
 ;;9002226.02101,"1220,00378-5011-01 ",.02)
 ;;00378-5011-01
 ;;9002226.02101,"1220,00378-5011-05 ",.01)
 ;;00378-5011-05
 ;;9002226.02101,"1220,00378-5011-05 ",.02)
 ;;00378-5011-05
 ;;9002226.02101,"1220,00378-5012-01 ",.01)
 ;;00378-5012-01
 ;;9002226.02101,"1220,00378-5012-01 ",.02)
 ;;00378-5012-01
 ;;9002226.02101,"1220,00378-5012-05 ",.01)
 ;;00378-5012-05
 ;;9002226.02101,"1220,00378-5012-05 ",.02)
 ;;00378-5012-05
 ;;9002226.02101,"1220,00378-5013-01 ",.01)
 ;;00378-5013-01
 ;;9002226.02101,"1220,00378-5013-01 ",.02)
 ;;00378-5013-01
 ;;9002226.02101,"1220,00378-5013-05 ",.01)
 ;;00378-5013-05
 ;;9002226.02101,"1220,00378-5013-05 ",.02)
 ;;00378-5013-05
 ;;9002226.02101,"1220,00378-5208-05 ",.01)
 ;;00378-5208-05
 ;;9002226.02101,"1220,00378-5208-05 ",.02)
 ;;00378-5208-05
 ;;9002226.02101,"1220,00378-5208-77 ",.01)
 ;;00378-5208-77
 ;;9002226.02101,"1220,00378-5208-77 ",.02)
 ;;00378-5208-77
 ;;9002226.02101,"1220,00378-5209-05 ",.01)
 ;;00378-5209-05
 ;;9002226.02101,"1220,00378-5209-05 ",.02)
 ;;00378-5209-05
 ;;9002226.02101,"1220,00378-5209-77 ",.01)
 ;;00378-5209-77
 ;;9002226.02101,"1220,00378-5209-77 ",.02)
 ;;00378-5209-77
 ;;9002226.02101,"1220,00378-5210-05 ",.01)
 ;;00378-5210-05
 ;;9002226.02101,"1220,00378-5210-05 ",.02)
 ;;00378-5210-05
 ;;9002226.02101,"1220,00378-5210-77 ",.01)
 ;;00378-5210-77
 ;;9002226.02101,"1220,00378-5210-77 ",.02)
 ;;00378-5210-77
 ;;9002226.02101,"1220,00378-5220-01 ",.01)
 ;;00378-5220-01
 ;;9002226.02101,"1220,00378-5220-01 ",.02)
 ;;00378-5220-01
 ;;9002226.02101,"1220,00378-5220-05 ",.01)
 ;;00378-5220-05
 ;;9002226.02101,"1220,00378-5220-05 ",.02)
 ;;00378-5220-05
 ;;9002226.02101,"1220,00378-5280-01 ",.01)
 ;;00378-5280-01
 ;;9002226.02101,"1220,00378-5280-01 ",.02)
 ;;00378-5280-01
 ;;9002226.02101,"1220,00378-5280-05 ",.01)
 ;;00378-5280-05
 ;;9002226.02101,"1220,00378-5280-05 ",.02)
 ;;00378-5280-05
 ;;9002226.02101,"1220,00378-5340-01 ",.01)
 ;;00378-5340-01
 ;;9002226.02101,"1220,00378-5340-01 ",.02)
 ;;00378-5340-01
 ;;9002226.02101,"1220,00378-5340-05 ",.01)
 ;;00378-5340-05
 ;;9002226.02101,"1220,00378-5340-05 ",.02)
 ;;00378-5340-05
 ;;9002226.02101,"1220,00378-6060-01 ",.01)
 ;;00378-6060-01
 ;;9002226.02101,"1220,00378-6060-01 ",.02)
 ;;00378-6060-01
 ;;9002226.02101,"1220,00378-6090-01 ",.01)
 ;;00378-6090-01
 ;;9002226.02101,"1220,00378-6090-01 ",.02)
 ;;00378-6090-01
 ;;9002226.02101,"1220,00378-6120-01 ",.01)
 ;;00378-6120-01
 ;;9002226.02101,"1220,00378-6120-01 ",.02)
 ;;00378-6120-01
 ;;9002226.02101,"1220,00378-6161-77 ",.01)
 ;;00378-6161-77
 ;;9002226.02101,"1220,00378-6161-77 ",.02)
 ;;00378-6161-77
 ;;9002226.02101,"1220,00378-6161-93 ",.01)
 ;;00378-6161-93
 ;;9002226.02101,"1220,00378-6161-93 ",.02)
 ;;00378-6161-93
 ;;9002226.02101,"1220,00378-6162-77 ",.01)
 ;;00378-6162-77
 ;;9002226.02101,"1220,00378-6162-77 ",.02)
 ;;00378-6162-77
 ;;9002226.02101,"1220,00378-6163-77 ",.01)
 ;;00378-6163-77
 ;;9002226.02101,"1220,00378-6163-77 ",.02)
 ;;00378-6163-77
 ;;9002226.02101,"1220,00378-6164-05 ",.01)
 ;;00378-6164-05
 ;;9002226.02101,"1220,00378-6164-05 ",.02)
 ;;00378-6164-05
 ;;9002226.02101,"1220,00378-6164-77 ",.01)
 ;;00378-6164-77
 ;;9002226.02101,"1220,00378-6164-77 ",.02)
 ;;00378-6164-77
 ;;9002226.02101,"1220,00378-6164-93 ",.01)
 ;;00378-6164-93
 ;;9002226.02101,"1220,00378-6164-93 ",.02)
 ;;00378-6164-93
 ;;9002226.02101,"1220,00378-6165-77 ",.01)
 ;;00378-6165-77
 ;;9002226.02101,"1220,00378-6165-77 ",.02)
 ;;00378-6165-77
 ;;9002226.02101,"1220,00378-6165-93 ",.01)
 ;;00378-6165-93
 ;;9002226.02101,"1220,00378-6165-93 ",.02)
 ;;00378-6165-93
 ;;9002226.02101,"1220,00378-6166-05 ",.01)
 ;;00378-6166-05
 ;;9002226.02101,"1220,00378-6166-05 ",.02)
 ;;00378-6166-05
 ;;9002226.02101,"1220,00378-6166-77 ",.01)
 ;;00378-6166-77
 ;;9002226.02101,"1220,00378-6166-77 ",.02)
 ;;00378-6166-77
 ;;9002226.02101,"1220,00378-6166-93 ",.01)
 ;;00378-6166-93
 ;;9002226.02101,"1220,00378-6166-93 ",.02)
 ;;00378-6166-93
 ;;9002226.02101,"1220,00378-6167-77 ",.01)
 ;;00378-6167-77
 ;;9002226.02101,"1220,00378-6167-77 ",.02)
 ;;00378-6167-77