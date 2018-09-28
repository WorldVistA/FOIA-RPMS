BUDE1I ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON OCT 09, 2017 ;
 ;;12.0;IHS/RPMS UNIFORM DATA SYSTEM;;NOV 22, 2017;Build 75
 ;;BUD 17 T6A LINE 8
 ;
 ; This routine loads Taxonomy BUD 17 T6A LINE 8
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
 ;;21,"C53.0 ")
 ;;1
 ;;21,"C79.82 ")
 ;;2
 ;;21,"D06.0 ")
 ;;3
 ;;21,"R87.610 ")
 ;;4
 ;;21,"R87.810 ")
 ;;5
 ;;21,"R87.820 ")
 ;;6
 ;;9002226,646,.01)
 ;;BUD 17 T6A LINE 8
 ;;9002226,646,.02)
 ;;@
 ;;9002226,646,.04)
 ;;@
 ;;9002226,646,.06)
 ;;@
 ;;9002226,646,.08)
 ;;0
 ;;9002226,646,.09)
 ;;3171009
 ;;9002226,646,.11)
 ;;@
 ;;9002226,646,.12)
 ;;31
 ;;9002226,646,.13)
 ;;1
 ;;9002226,646,.14)
 ;;@
 ;;9002226,646,.15)
 ;;80
 ;;9002226,646,.16)
 ;;@
 ;;9002226,646,.17)
 ;;@
 ;;9002226,646,.22)
 ;;@
 ;;9002226,646,3101)
 ;;@
 ;;9002226.02101,"646,C53.0 ",.01)
 ;;C53.0 
 ;;9002226.02101,"646,C53.0 ",.02)
 ;;C53.9 
 ;;9002226.02101,"646,C53.0 ",.03)
 ;;30
 ;;9002226.02101,"646,C79.82 ",.01)
 ;;C79.82 
 ;;9002226.02101,"646,C79.82 ",.02)
 ;;C79.82 
 ;;9002226.02101,"646,C79.82 ",.03)
 ;;30
 ;;9002226.02101,"646,D06.0 ",.01)
 ;;D06.0 
 ;;9002226.02101,"646,D06.0 ",.02)
 ;;D06.9 
 ;;9002226.02101,"646,D06.0 ",.03)
 ;;30
 ;;9002226.02101,"646,R87.610 ",.01)
 ;;R87.610 
 ;;9002226.02101,"646,R87.610 ",.02)
 ;;R87.619 
 ;;9002226.02101,"646,R87.610 ",.03)
 ;;30
 ;;9002226.02101,"646,R87.810 ",.01)
 ;;R87.810 
 ;;9002226.02101,"646,R87.810 ",.02)
 ;;R87.810 
 ;;9002226.02101,"646,R87.810 ",.03)
 ;;30
 ;;9002226.02101,"646,R87.820 ",.01)
 ;;R87.820 
 ;;9002226.02101,"646,R87.820 ",.02)
 ;;R87.820 
 ;;9002226.02101,"646,R87.820 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q