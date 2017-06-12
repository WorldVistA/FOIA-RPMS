ATXDAI ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI GIARDIA DXS
 ;
 ; This routine loads Taxonomy BQI GIARDIA DXS
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
 ;;21,"007.1 ")
 ;;1
 ;;21,"A07.1 ")
 ;;2
 ;;9002226,1832,.01)
 ;;BQI GIARDIA DXS
 ;;9002226,1832,.02)
 ;;Giardia
 ;;9002226,1832,.04)
 ;;n
 ;;9002226,1832,.06)
 ;;@
 ;;9002226,1832,.08)
 ;;0
 ;;9002226,1832,.09)
 ;;3140312
 ;;9002226,1832,.11)
 ;;@
 ;;9002226,1832,.12)
 ;;31
 ;;9002226,1832,.13)
 ;;1
 ;;9002226,1832,.14)
 ;;@
 ;;9002226,1832,.15)
 ;;80
 ;;9002226,1832,.16)
 ;;@
 ;;9002226,1832,.17)
 ;;@
 ;;9002226,1832,3101)
 ;;@
 ;;9002226.01101,"1832,1",.01)
 ;;CDC Nationally Notificable Disease
 ;;9002226.02101,"1832,007.1 ",.01)
 ;;007.1
 ;;9002226.02101,"1832,007.1 ",.02)
 ;;007.1
 ;;9002226.02101,"1832,007.1 ",.03)
 ;;1
 ;;9002226.02101,"1832,A07.1 ",.01)
 ;;A07.1 
 ;;9002226.02101,"1832,A07.1 ",.02)
 ;;A07.1 
 ;;9002226.02101,"1832,A07.1 ",.03)
 ;;30
 ;;9002226.04101,"1832,1",.01)
 ;;BQI
 ;;9002226.05101,"1832,1",.01)
 ;;GIARDIA
 ;
OTHER ; OTHER ROUTINES
 Q