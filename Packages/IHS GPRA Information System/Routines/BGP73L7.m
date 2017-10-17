BGP73L7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,00186-0016-28 ",.02)
 ;;00186-0016-28
 ;;9002226.02101,"873,00186-0016-31 ",.01)
 ;;00186-0016-31
 ;;9002226.02101,"873,00186-0016-31 ",.02)
 ;;00186-0016-31
 ;;9002226.02101,"873,00186-0016-54 ",.01)
 ;;00186-0016-54
 ;;9002226.02101,"873,00186-0016-54 ",.02)
 ;;00186-0016-54
 ;;9002226.02101,"873,00186-0032-28 ",.01)
 ;;00186-0032-28
 ;;9002226.02101,"873,00186-0032-28 ",.02)
 ;;00186-0032-28
 ;;9002226.02101,"873,00186-0032-31 ",.01)
 ;;00186-0032-31
 ;;9002226.02101,"873,00186-0032-31 ",.02)
 ;;00186-0032-31
 ;;9002226.02101,"873,00186-0032-54 ",.01)
 ;;00186-0032-54
 ;;9002226.02101,"873,00186-0032-54 ",.02)
 ;;00186-0032-54
 ;;9002226.02101,"873,00186-0162-28 ",.01)
 ;;00186-0162-28
 ;;9002226.02101,"873,00186-0162-28 ",.02)
 ;;00186-0162-28
 ;;9002226.02101,"873,00186-0162-54 ",.01)
 ;;00186-0162-54
 ;;9002226.02101,"873,00186-0162-54 ",.02)
 ;;00186-0162-54
 ;;9002226.02101,"873,00186-0322-28 ",.01)
 ;;00186-0322-28
 ;;9002226.02101,"873,00186-0322-28 ",.02)
 ;;00186-0322-28
 ;;9002226.02101,"873,00186-0322-54 ",.01)
 ;;00186-0322-54
 ;;9002226.02101,"873,00186-0322-54 ",.02)
 ;;00186-0322-54
 ;;9002226.02101,"873,00186-0324-54 ",.01)
 ;;00186-0324-54
 ;;9002226.02101,"873,00186-0324-54 ",.02)
 ;;00186-0324-54
 ;;9002226.02101,"873,00245-0193-01 ",.01)
 ;;00245-0193-01
 ;;9002226.02101,"873,00245-0193-01 ",.02)
 ;;00245-0193-01
 ;;9002226.02101,"873,00245-0193-10 ",.01)
 ;;00245-0193-10
 ;;9002226.02101,"873,00245-0193-10 ",.02)
 ;;00245-0193-10
 ;;9002226.02101,"873,00245-0193-30 ",.01)
 ;;00245-0193-30
 ;;9002226.02101,"873,00245-0193-30 ",.02)
 ;;00245-0193-30
 ;;9002226.02101,"873,00245-0193-90 ",.01)
 ;;00245-0193-90
 ;;9002226.02101,"873,00245-0193-90 ",.02)
 ;;00245-0193-90
 ;;9002226.02101,"873,00245-0194-01 ",.01)
 ;;00245-0194-01
 ;;9002226.02101,"873,00245-0194-01 ",.02)
 ;;00245-0194-01
 ;;9002226.02101,"873,00245-0194-10 ",.01)
 ;;00245-0194-10
 ;;9002226.02101,"873,00245-0194-10 ",.02)
 ;;00245-0194-10
 ;;9002226.02101,"873,00245-0194-30 ",.01)
 ;;00245-0194-30
 ;;9002226.02101,"873,00245-0194-30 ",.02)
 ;;00245-0194-30
 ;;9002226.02101,"873,00245-0194-90 ",.01)
 ;;00245-0194-90
 ;;9002226.02101,"873,00245-0194-90 ",.02)
 ;;00245-0194-90
 ;;9002226.02101,"873,00245-0195-01 ",.01)
 ;;00245-0195-01
 ;;9002226.02101,"873,00245-0195-01 ",.02)
 ;;00245-0195-01
 ;;9002226.02101,"873,00245-0195-10 ",.01)
 ;;00245-0195-10
 ;;9002226.02101,"873,00245-0195-10 ",.02)
 ;;00245-0195-10
 ;;9002226.02101,"873,00245-0195-30 ",.01)
 ;;00245-0195-30
 ;;9002226.02101,"873,00245-0195-30 ",.02)
 ;;00245-0195-30
 ;;9002226.02101,"873,00245-0195-90 ",.01)
 ;;00245-0195-90
 ;;9002226.02101,"873,00245-0195-90 ",.02)
 ;;00245-0195-90
 ;;9002226.02101,"873,00247-1962-00 ",.01)
 ;;00247-1962-00
 ;;9002226.02101,"873,00247-1962-00 ",.02)
 ;;00247-1962-00
 ;;9002226.02101,"873,00247-1962-30 ",.01)
 ;;00247-1962-30
 ;;9002226.02101,"873,00247-1962-30 ",.02)
 ;;00247-1962-30
 ;;9002226.02101,"873,00247-2257-90 ",.01)
 ;;00247-2257-90
 ;;9002226.02101,"873,00247-2257-90 ",.02)
 ;;00247-2257-90
 ;;9002226.02101,"873,00247-2285-30 ",.01)
 ;;00247-2285-30
 ;;9002226.02101,"873,00247-2285-30 ",.02)
 ;;00247-2285-30
 ;;9002226.02101,"873,00247-2285-60 ",.01)
 ;;00247-2285-60
 ;;9002226.02101,"873,00247-2285-60 ",.02)
 ;;00247-2285-60
 ;;9002226.02101,"873,00247-2285-90 ",.01)
 ;;00247-2285-90
 ;;9002226.02101,"873,00247-2285-90 ",.02)
 ;;00247-2285-90
 ;;9002226.02101,"873,00247-2286-30 ",.01)
 ;;00247-2286-30
 ;;9002226.02101,"873,00247-2286-30 ",.02)
 ;;00247-2286-30
 ;;9002226.02101,"873,00247-2286-60 ",.01)
 ;;00247-2286-60
 ;;9002226.02101,"873,00247-2286-60 ",.02)
 ;;00247-2286-60
 ;;9002226.02101,"873,00247-2286-90 ",.01)
 ;;00247-2286-90
 ;;9002226.02101,"873,00247-2286-90 ",.02)
 ;;00247-2286-90
 ;;9002226.02101,"873,00247-2287-30 ",.01)
 ;;00247-2287-30
 ;;9002226.02101,"873,00247-2287-30 ",.02)
 ;;00247-2287-30
 ;;9002226.02101,"873,00247-2287-60 ",.01)
 ;;00247-2287-60
 ;;9002226.02101,"873,00247-2287-60 ",.02)
 ;;00247-2287-60
 ;;9002226.02101,"873,00247-2287-90 ",.01)
 ;;00247-2287-90
 ;;9002226.02101,"873,00247-2287-90 ",.02)
 ;;00247-2287-90
 ;;9002226.02101,"873,00247-2335-30 ",.01)
 ;;00247-2335-30
 ;;9002226.02101,"873,00247-2335-30 ",.02)
 ;;00247-2335-30
 ;;9002226.02101,"873,00247-2335-60 ",.01)
 ;;00247-2335-60
 ;;9002226.02101,"873,00247-2335-60 ",.02)
 ;;00247-2335-60
 ;;9002226.02101,"873,00247-2335-90 ",.01)
 ;;00247-2335-90
 ;;9002226.02101,"873,00247-2335-90 ",.02)
 ;;00247-2335-90
 ;;9002226.02101,"873,00378-1075-93 ",.01)
 ;;00378-1075-93
 ;;9002226.02101,"873,00378-1075-93 ",.02)
 ;;00378-1075-93
 ;;9002226.02101,"873,00378-1076-93 ",.01)
 ;;00378-1076-93
 ;;9002226.02101,"873,00378-1076-93 ",.02)
 ;;00378-1076-93
 ;;9002226.02101,"873,00378-1077-93 ",.01)
 ;;00378-1077-93
 ;;9002226.02101,"873,00378-1077-93 ",.02)
 ;;00378-1077-93
 ;;9002226.02101,"873,00378-1078-93 ",.01)
 ;;00378-1078-93
 ;;9002226.02101,"873,00378-1078-93 ",.02)
 ;;00378-1078-93
 ;;9002226.02101,"873,00378-1418-77 ",.01)
 ;;00378-1418-77
 ;;9002226.02101,"873,00378-1418-77 ",.02)
 ;;00378-1418-77
 ;;9002226.02101,"873,00378-1418-93 ",.01)
 ;;00378-1418-93
 ;;9002226.02101,"873,00378-1418-93 ",.02)
 ;;00378-1418-93
 ;;9002226.02101,"873,00378-1419-10 ",.01)
 ;;00378-1419-10
 ;;9002226.02101,"873,00378-1419-10 ",.02)
 ;;00378-1419-10
 ;;9002226.02101,"873,00378-1419-77 ",.01)
 ;;00378-1419-77
 ;;9002226.02101,"873,00378-1419-77 ",.02)
 ;;00378-1419-77
 ;;9002226.02101,"873,00378-1419-93 ",.01)
 ;;00378-1419-93
 ;;9002226.02101,"873,00378-1419-93 ",.02)
 ;;00378-1419-93
 ;;9002226.02101,"873,00378-1420-77 ",.01)
 ;;00378-1420-77
 ;;9002226.02101,"873,00378-1420-77 ",.02)
 ;;00378-1420-77
 ;;9002226.02101,"873,00378-1420-93 ",.01)
 ;;00378-1420-93
 ;;9002226.02101,"873,00378-1420-93 ",.02)
 ;;00378-1420-93
 ;;9002226.02101,"873,00378-1721-93 ",.01)
 ;;00378-1721-93
 ;;9002226.02101,"873,00378-1721-93 ",.02)
 ;;00378-1721-93
 ;;9002226.02101,"873,00378-1722-93 ",.01)
 ;;00378-1722-93
 ;;9002226.02101,"873,00378-1722-93 ",.02)
 ;;00378-1722-93
 ;;9002226.02101,"873,00378-1723-93 ",.01)
 ;;00378-1723-93
 ;;9002226.02101,"873,00378-1723-93 ",.02)
 ;;00378-1723-93
 ;;9002226.02101,"873,00378-1724-93 ",.01)
 ;;00378-1724-93
 ;;9002226.02101,"873,00378-1724-93 ",.02)
 ;;00378-1724-93
 ;;9002226.02101,"873,00378-2022-05 ",.01)
 ;;00378-2022-05
 ;;9002226.02101,"873,00378-2022-05 ",.02)
 ;;00378-2022-05
 ;;9002226.02101,"873,00378-2022-77 ",.01)
 ;;00378-2022-77
 ;;9002226.02101,"873,00378-2022-77 ",.02)
 ;;00378-2022-77
 ;;9002226.02101,"873,00378-2023-05 ",.01)
 ;;00378-2023-05
 ;;9002226.02101,"873,00378-2023-05 ",.02)
 ;;00378-2023-05
 ;;9002226.02101,"873,00378-2023-77 ",.01)
 ;;00378-2023-77
 ;;9002226.02101,"873,00378-2023-77 ",.02)
 ;;00378-2023-77
 ;;9002226.02101,"873,00378-2023-93 ",.01)
 ;;00378-2023-93
 ;;9002226.02101,"873,00378-2023-93 ",.02)
 ;;00378-2023-93
 ;;9002226.02101,"873,00378-2024-05 ",.01)
 ;;00378-2024-05
 ;;9002226.02101,"873,00378-2024-05 ",.02)
 ;;00378-2024-05
 ;;9002226.02101,"873,00378-2024-77 ",.01)
 ;;00378-2024-77
 ;;9002226.02101,"873,00378-2024-77 ",.02)
 ;;00378-2024-77
 ;;9002226.02101,"873,00378-2024-93 ",.01)
 ;;00378-2024-93
 ;;9002226.02101,"873,00378-2024-93 ",.02)
 ;;00378-2024-93
 ;;9002226.02101,"873,00378-2901-77 ",.01)
 ;;00378-2901-77
 ;;9002226.02101,"873,00378-2901-77 ",.02)
 ;;00378-2901-77
 ;;9002226.02101,"873,00378-2901-93 ",.01)
 ;;00378-2901-93
 ;;9002226.02101,"873,00378-2901-93 ",.02)
 ;;00378-2901-93
 ;;9002226.02101,"873,00378-2902-77 ",.01)
 ;;00378-2902-77
 ;;9002226.02101,"873,00378-2902-77 ",.02)
 ;;00378-2902-77
 ;;9002226.02101,"873,00378-2902-93 ",.01)
 ;;00378-2902-93
 ;;9002226.02101,"873,00378-2902-93 ",.02)
 ;;00378-2902-93
 ;;9002226.02101,"873,00378-2903-77 ",.01)
 ;;00378-2903-77
 ;;9002226.02101,"873,00378-2903-77 ",.02)
 ;;00378-2903-77
 ;;9002226.02101,"873,00378-2903-93 ",.01)
 ;;00378-2903-93
 ;;9002226.02101,"873,00378-2903-93 ",.02)
 ;;00378-2903-93
 ;;9002226.02101,"873,00378-2920-77 ",.01)
 ;;00378-2920-77
 ;;9002226.02101,"873,00378-2920-77 ",.02)
 ;;00378-2920-77
 ;;9002226.02101,"873,00378-2920-93 ",.01)
 ;;00378-2920-93
 ;;9002226.02101,"873,00378-2920-93 ",.02)
 ;;00378-2920-93
 ;;9002226.02101,"873,00378-2921-77 ",.01)
 ;;00378-2921-77
 ;;9002226.02101,"873,00378-2921-77 ",.02)
 ;;00378-2921-77
 ;;9002226.02101,"873,00378-2921-93 ",.01)
 ;;00378-2921-93
 ;;9002226.02101,"873,00378-2921-93 ",.02)
 ;;00378-2921-93
 ;;9002226.02101,"873,00378-2922-77 ",.01)
 ;;00378-2922-77
 ;;9002226.02101,"873,00378-2922-77 ",.02)
 ;;00378-2922-77
 ;;9002226.02101,"873,00378-2922-93 ",.01)
 ;;00378-2922-93
 ;;9002226.02101,"873,00378-2922-93 ",.02)
 ;;00378-2922-93
 ;;9002226.02101,"873,00378-3001-05 ",.01)
 ;;00378-3001-05
 ;;9002226.02101,"873,00378-3001-05 ",.02)
 ;;00378-3001-05
 ;;9002226.02101,"873,00378-3001-77 ",.01)
 ;;00378-3001-77
 ;;9002226.02101,"873,00378-3001-77 ",.02)
 ;;00378-3001-77
 ;;9002226.02101,"873,00378-3002-05 ",.01)
 ;;00378-3002-05
 ;;9002226.02101,"873,00378-3002-05 ",.02)
 ;;00378-3002-05
 ;;9002226.02101,"873,00378-3002-77 ",.01)
 ;;00378-3002-77
 ;;9002226.02101,"873,00378-3002-77 ",.02)
 ;;00378-3002-77
 ;;9002226.02101,"873,00378-3003-05 ",.01)
 ;;00378-3003-05
 ;;9002226.02101,"873,00378-3003-05 ",.02)
 ;;00378-3003-05
 ;;9002226.02101,"873,00378-3003-77 ",.01)
 ;;00378-3003-77
 ;;9002226.02101,"873,00378-3003-77 ",.02)
 ;;00378-3003-77
 ;;9002226.02101,"873,00378-3033-77 ",.01)
 ;;00378-3033-77
 ;;9002226.02101,"873,00378-3033-77 ",.02)
 ;;00378-3033-77
 ;;9002226.02101,"873,00378-3033-93 ",.01)
 ;;00378-3033-93
 ;;9002226.02101,"873,00378-3033-93 ",.02)
 ;;00378-3033-93
 ;;9002226.02101,"873,00378-3034-77 ",.01)
 ;;00378-3034-77
 ;;9002226.02101,"873,00378-3034-77 ",.02)
 ;;00378-3034-77
 ;;9002226.02101,"873,00378-3034-93 ",.01)
 ;;00378-3034-93
 ;;9002226.02101,"873,00378-3034-93 ",.02)
 ;;00378-3034-93
 ;;9002226.02101,"873,00378-4041-77 ",.01)
 ;;00378-4041-77
 ;;9002226.02101,"873,00378-4041-77 ",.02)
 ;;00378-4041-77
 ;;9002226.02101,"873,00378-4042-77 ",.01)
 ;;00378-4042-77
 ;;9002226.02101,"873,00378-4042-77 ",.02)
 ;;00378-4042-77
 ;;9002226.02101,"873,00378-4042-93 ",.01)
 ;;00378-4042-93
 ;;9002226.02101,"873,00378-4042-93 ",.02)
 ;;00378-4042-93
 ;;9002226.02101,"873,00378-4043-77 ",.01)
 ;;00378-4043-77
 ;;9002226.02101,"873,00378-4043-77 ",.02)
 ;;00378-4043-77
 ;;9002226.02101,"873,00378-4043-93 ",.01)
 ;;00378-4043-93
 ;;9002226.02101,"873,00378-4043-93 ",.02)
 ;;00378-4043-93
 ;;9002226.02101,"873,00378-5807-93 ",.01)
 ;;00378-5807-93
 ;;9002226.02101,"873,00378-5807-93 ",.02)
 ;;00378-5807-93
 ;;9002226.02101,"873,00378-5813-77 ",.01)
 ;;00378-5813-77
 ;;9002226.02101,"873,00378-5813-77 ",.02)
 ;;00378-5813-77
 ;;9002226.02101,"873,00378-5814-77 ",.01)
 ;;00378-5814-77
 ;;9002226.02101,"873,00378-5814-77 ",.02)
 ;;00378-5814-77
 ;;9002226.02101,"873,00378-5815-77 ",.01)
 ;;00378-5815-77
 ;;9002226.02101,"873,00378-5815-77 ",.02)
 ;;00378-5815-77
 ;;9002226.02101,"873,00378-6321-05 ",.01)
 ;;00378-6321-05
 ;;9002226.02101,"873,00378-6321-05 ",.02)
 ;;00378-6321-05
 ;;9002226.02101,"873,00378-6321-77 ",.01)
 ;;00378-6321-77
 ;;9002226.02101,"873,00378-6321-77 ",.02)
 ;;00378-6321-77
 ;;9002226.02101,"873,00378-6322-05 ",.01)
 ;;00378-6322-05
 ;;9002226.02101,"873,00378-6322-05 ",.02)
 ;;00378-6322-05
 ;;9002226.02101,"873,00378-6322-77 ",.01)
 ;;00378-6322-77
 ;;9002226.02101,"873,00378-6322-77 ",.02)
 ;;00378-6322-77
 ;;9002226.02101,"873,00378-6323-05 ",.01)
 ;;00378-6323-05