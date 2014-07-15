BGP25B ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP OSTEOPOROSIS SCRN DXS
 ;
 ; This routine loads Taxonomy BGP OSTEOPOROSIS SCRN DXS
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
 ;;21,"V82.81 ")
 ;;1
 ;;9002226,1492,.01)
 ;;BGP OSTEOPOROSIS SCRN DXS
 ;;9002226,1492,.02)
 ;;@
 ;;9002226,1492,.04)
 ;;@
 ;;9002226,1492,.06)
 ;;@
 ;;9002226,1492,.08)
 ;;0
 ;;9002226,1492,.09)
 ;;3120215
 ;;9002226,1492,.11)
 ;;@
 ;;9002226,1492,.12)
 ;;31
 ;;9002226,1492,.13)
 ;;1
 ;;9002226,1492,.14)
 ;;@
 ;;9002226,1492,.15)
 ;;80
 ;;9002226,1492,.16)
 ;;@
 ;;9002226,1492,.17)
 ;;@
 ;;9002226,1492,3101)
 ;;@
 ;;9002226.02101,"1492,V82.81 ",.01)
 ;;V82.81 
 ;;9002226.02101,"1492,V82.81 ",.02)
 ;;V82.81 
 ;
OTHER ; OTHER ROUTINES
 Q