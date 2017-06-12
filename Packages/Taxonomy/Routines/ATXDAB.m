ATXDAB ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI BOTULISM DXS
 ;
 ; This routine loads Taxonomy BQI BOTULISM DXS
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
 ;;21,"005.1 ")
 ;;1
 ;;21,"A05.1 ")
 ;;2
 ;;9002226,1815,.01)
 ;;BQI BOTULISM DXS
 ;;9002226,1815,.02)
 ;;CDC NND BOTULISM
 ;;9002226,1815,.04)
 ;;n
 ;;9002226,1815,.06)
 ;;@
 ;;9002226,1815,.08)
 ;;0
 ;;9002226,1815,.09)
 ;;3140311
 ;;9002226,1815,.11)
 ;;@
 ;;9002226,1815,.12)
 ;;31
 ;;9002226,1815,.13)
 ;;1
 ;;9002226,1815,.14)
 ;;@
 ;;9002226,1815,.15)
 ;;80
 ;;9002226,1815,.16)
 ;;@
 ;;9002226,1815,.17)
 ;;@
 ;;9002226,1815,3101)
 ;;@
 ;;9002226.01101,"1815,1",.01)
 ;;CDC Nationally Notificable Disease
 ;;9002226.02101,"1815,005.1 ",.01)
 ;;005.1
 ;;9002226.02101,"1815,005.1 ",.02)
 ;;005.1
 ;;9002226.02101,"1815,005.1 ",.03)
 ;;1
 ;;9002226.02101,"1815,A05.1 ",.01)
 ;;A05.1 
 ;;9002226.02101,"1815,A05.1 ",.02)
 ;;A05.1 
 ;;9002226.02101,"1815,A05.1 ",.03)
 ;;30
 ;;9002226.04101,"1815,1",.01)
 ;;BQI
 ;;9002226.05101,"1815,1",.01)
 ;;BOTULISM
 ;
OTHER ; OTHER ROUTINES
 Q