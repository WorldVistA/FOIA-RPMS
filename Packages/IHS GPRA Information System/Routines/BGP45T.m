BGP45T ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 26, 2013;
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;;BGP RA GLUCOCORTICOIDS VAPI
 ;
 ; This routine loads Taxonomy BGP RA GLUCOCORTICOIDS VAPI
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"B0168 ")
 ;;26
 ;;21,"D0042 ")
 ;;1
 ;;21,"D0044 ")
 ;;2
 ;;21,"D0045 ")
 ;;3
 ;;21,"D0046 ")
 ;;4
 ;;21,"D0047 ")
 ;;5
 ;;21,"D0048 ")
 ;;6
 ;;21,"H0059 ")
 ;;25
 ;;21,"M0070 ")
 ;;7
 ;;21,"M0071 ")
 ;;8
 ;;21,"M0198 ")
 ;;9
 ;;21,"M0200 ")
 ;;10
 ;;21,"M0249 ")
 ;;11
 ;;21,"P0109 ")
 ;;12
 ;;21,"P0110 ")
 ;;13
 ;;21,"P0111 ")
 ;;14
 ;;21,"P0112 ")
 ;;15
 ;;21,"P0114 ")
 ;;16
 ;;21,"P0115 ")
 ;;17
 ;;21,"P0375 ")
 ;;18
 ;;21,"P0723 ")
 ;;19
 ;;21,"P0724 ")
 ;;20
 ;;21,"P0725 ")
 ;;21
 ;;21,"P0840 ")
 ;;22
 ;;21,"P0885 ")
 ;;23
 ;;21,"P0952 ")
 ;;24
 ;;9002226,1835,.01)
 ;;BGP RA GLUCOCORTICOIDS VAPI
 ;;9002226,1835,.02)
 ;;@
 ;;9002226,1835,.04)
 ;;@
 ;;9002226,1835,.06)
 ;;@
 ;;9002226,1835,.08)
 ;;@
 ;;9002226,1835,.09)
 ;;3130926
 ;;9002226,1835,.11)
 ;;@
 ;;9002226,1835,.12)
 ;;@
 ;;9002226,1835,.13)
 ;;1
 ;;9002226,1835,.14)
 ;;@
 ;;9002226,1835,.15)
 ;;50.68
 ;;9002226,1835,.16)
 ;;@
 ;;9002226,1835,.17)
 ;;@
 ;;9002226,1835,3101)
 ;;@
 ;;9002226.02101,"1835,B0168 ",.01)
 ;;B0168
 ;;9002226.02101,"1835,B0168 ",.02)
 ;;B0168
 ;;9002226.02101,"1835,D0042 ",.01)
 ;;D0042
 ;;9002226.02101,"1835,D0042 ",.02)
 ;;D0042
 ;;9002226.02101,"1835,D0044 ",.01)
 ;;D0044
 ;;9002226.02101,"1835,D0044 ",.02)
 ;;D0044
 ;;9002226.02101,"1835,D0045 ",.01)
 ;;D0045
 ;;9002226.02101,"1835,D0045 ",.02)
 ;;D0045
 ;;9002226.02101,"1835,D0046 ",.01)
 ;;D0046
 ;;9002226.02101,"1835,D0046 ",.02)
 ;;D0046
 ;;9002226.02101,"1835,D0047 ",.01)
 ;;D0047
 ;;9002226.02101,"1835,D0047 ",.02)
 ;;D0047
 ;;9002226.02101,"1835,D0048 ",.01)
 ;;D0048
 ;;9002226.02101,"1835,D0048 ",.02)
 ;;D0048
 ;;9002226.02101,"1835,H0059 ",.01)
 ;;H0059
 ;;9002226.02101,"1835,H0059 ",.02)
 ;;H0059
 ;;9002226.02101,"1835,M0070 ",.01)
 ;;M0070
 ;;9002226.02101,"1835,M0070 ",.02)
 ;;M0070
 ;;9002226.02101,"1835,M0071 ",.01)
 ;;M0071
 ;;9002226.02101,"1835,M0071 ",.02)
 ;;M0071
 ;;9002226.02101,"1835,M0198 ",.01)
 ;;M0198
 ;;9002226.02101,"1835,M0198 ",.02)
 ;;M0198
 ;;9002226.02101,"1835,M0200 ",.01)
 ;;M0200
 ;;9002226.02101,"1835,M0200 ",.02)
 ;;M0200
 ;;9002226.02101,"1835,M0249 ",.01)
 ;;M0249
 ;;9002226.02101,"1835,M0249 ",.02)
 ;;M0249
 ;;9002226.02101,"1835,P0109 ",.01)
 ;;P0109
 ;;9002226.02101,"1835,P0109 ",.02)
 ;;P0109
 ;;9002226.02101,"1835,P0110 ",.01)
 ;;P0110
 ;;9002226.02101,"1835,P0110 ",.02)
 ;;P0110
 ;;9002226.02101,"1835,P0111 ",.01)
 ;;P0111
 ;;9002226.02101,"1835,P0111 ",.02)
 ;;P0111
 ;;9002226.02101,"1835,P0112 ",.01)
 ;;P0112
 ;;9002226.02101,"1835,P0112 ",.02)
 ;;P0112
 ;;9002226.02101,"1835,P0114 ",.01)
 ;;P0114
 ;;9002226.02101,"1835,P0114 ",.02)
 ;;P0114
 ;;9002226.02101,"1835,P0115 ",.01)
 ;;P0115
 ;;9002226.02101,"1835,P0115 ",.02)
 ;;P0115
 ;;9002226.02101,"1835,P0375 ",.01)
 ;;P0375
 ;;9002226.02101,"1835,P0375 ",.02)
 ;;P0375
 ;;9002226.02101,"1835,P0723 ",.01)
 ;;P0723
 ;;9002226.02101,"1835,P0723 ",.02)
 ;;P0723
 ;;9002226.02101,"1835,P0724 ",.01)
 ;;P0724
 ;;9002226.02101,"1835,P0724 ",.02)
 ;;P0724
 ;;9002226.02101,"1835,P0725 ",.01)
 ;;P0725
 ;;9002226.02101,"1835,P0725 ",.02)
 ;;P0725
 ;;9002226.02101,"1835,P0840 ",.01)
 ;;P0840
 ;;9002226.02101,"1835,P0840 ",.02)
 ;;P0840
 ;;9002226.02101,"1835,P0885 ",.01)
 ;;P0885
 ;;9002226.02101,"1835,P0885 ",.02)
 ;;P0885
 ;;9002226.02101,"1835,P0952 ",.01)
 ;;P0952
 ;;9002226.02101,"1835,P0952 ",.02)
 ;;P0952
 ;
OTHER ; OTHER ROUTINES
 Q