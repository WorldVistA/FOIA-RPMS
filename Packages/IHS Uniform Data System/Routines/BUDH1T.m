BUDH1T ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUN 18, 2018;
 ;;13.0;IHS/RPMS UNIFORM DATA SYSTEM;;OCT 12, 2018;Build 90
 ;;BUD 18 T6A LINE 18
 ;
 ; This routine loads Taxonomy BUD 18 T6A LINE 18
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
 ;;21,"F10.10 ")
 ;;1
 ;;21,"G62.1 ")
 ;;2
 ;;21,"O99.310 ")
 ;;3
 ;;9002226,2352,.01)
 ;;BUD 18 T6A LINE 18
 ;;9002226,2352,.02)
 ;;@
 ;;9002226,2352,.04)
 ;;@
 ;;9002226,2352,.06)
 ;;@
 ;;9002226,2352,.08)
 ;;0
 ;;9002226,2352,.09)
 ;;3171010
 ;;9002226,2352,.11)
 ;;@
 ;;9002226,2352,.12)
 ;;31
 ;;9002226,2352,.13)
 ;;1
 ;;9002226,2352,.14)
 ;;@
 ;;9002226,2352,.15)
 ;;80
 ;;9002226,2352,.16)
 ;;@
 ;;9002226,2352,.17)
 ;;@
 ;;9002226,2352,.22)
 ;;0
 ;;9002226,2352,3101)
 ;;@
 ;;9002226.02101,"2352,F10.10 ",.01)
 ;;F10.10 
 ;;9002226.02101,"2352,F10.10 ",.02)
 ;;F10.99 
 ;;9002226.02101,"2352,F10.10 ",.03)
 ;;30
 ;;9002226.02101,"2352,G62.1 ",.01)
 ;;G62.1 
 ;;9002226.02101,"2352,G62.1 ",.02)
 ;;G62.1 
 ;;9002226.02101,"2352,G62.1 ",.03)
 ;;30
 ;;9002226.02101,"2352,O99.310 ",.01)
 ;;O99.310 
 ;;9002226.02101,"2352,O99.310 ",.02)
 ;;O99.315 
 ;;9002226.02101,"2352,O99.310 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q