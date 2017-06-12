ATXDAG ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI CYCLOSPORIASIS DXS
 ;
 ; This routine loads Taxonomy BQI CYCLOSPORIASIS DXS
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
 ;;21,"007.5 ")
 ;;1
 ;;21,"A07.4 ")
 ;;2
 ;;9002226,1822,.01)
 ;;BQI CYCLOSPORIASIS DXS
 ;;9002226,1822,.02)
 ;;Cyclosporiasis
 ;;9002226,1822,.04)
 ;;n
 ;;9002226,1822,.06)
 ;;@
 ;;9002226,1822,.08)
 ;;0
 ;;9002226,1822,.09)
 ;;3140312
 ;;9002226,1822,.11)
 ;;@
 ;;9002226,1822,.12)
 ;;31
 ;;9002226,1822,.13)
 ;;1
 ;;9002226,1822,.14)
 ;;@
 ;;9002226,1822,.15)
 ;;80
 ;;9002226,1822,.16)
 ;;@
 ;;9002226,1822,.17)
 ;;@
 ;;9002226,1822,3101)
 ;;@
 ;;9002226.01101,"1822,1",.01)
 ;;CDC Nationally Notificable Disease
 ;;9002226.02101,"1822,007.5 ",.01)
 ;;007.5
 ;;9002226.02101,"1822,007.5 ",.02)
 ;;007.5
 ;;9002226.02101,"1822,007.5 ",.03)
 ;;1
 ;;9002226.02101,"1822,A07.4 ",.01)
 ;;A07.4 
 ;;9002226.02101,"1822,A07.4 ",.02)
 ;;A07.4 
 ;;9002226.02101,"1822,A07.4 ",.03)
 ;;30
 ;;9002226.04101,"1822,1",.01)
 ;;BQI
 ;;9002226.05101,"1822,1",.01)
 ;;CYCLOSPORIASIS
 ;
OTHER ; OTHER ROUTINES
 Q