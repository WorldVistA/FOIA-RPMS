BUDE1O ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON OCT 09, 2017 ;
 ;;12.0;IHS/RPMS UNIFORM DATA SYSTEM;;NOV 22, 2017;Build 75
 ;;BUD 17 T6A LINE 14
 ;
 ; This routine loads Taxonomy BUD 17 T6A LINE 14
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
 ;;21,"T33.011A ")
 ;;1
 ;;21,"T67.0XXA ")
 ;;2
 ;;9002226,654,.01)
 ;;BUD 17 T6A LINE 14
 ;;9002226,654,.02)
 ;;@
 ;;9002226,654,.04)
 ;;@
 ;;9002226,654,.06)
 ;;@
 ;;9002226,654,.08)
 ;;0
 ;;9002226,654,.09)
 ;;3171009
 ;;9002226,654,.11)
 ;;@
 ;;9002226,654,.12)
 ;;31
 ;;9002226,654,.13)
 ;;1
 ;;9002226,654,.14)
 ;;@
 ;;9002226,654,.15)
 ;;80
 ;;9002226,654,.16)
 ;;@
 ;;9002226,654,.17)
 ;;@
 ;;9002226,654,.22)
 ;;@
 ;;9002226,654,3101)
 ;;@
 ;;9002226.02101,"654,T33.011A ",.01)
 ;;T33.011A 
 ;;9002226.02101,"654,T33.011A ",.02)
 ;;T34.99XS 
 ;;9002226.02101,"654,T33.011A ",.03)
 ;;30
 ;;9002226.02101,"654,T67.0XXA ",.01)
 ;;T67.0XXA 
 ;;9002226.02101,"654,T67.0XXA ",.02)
 ;;T69.9XXS 
 ;;9002226.02101,"654,T67.0XXA ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q