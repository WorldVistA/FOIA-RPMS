BUDE1R ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON OCT 10, 2017 ;
 ;;12.0;IHS/RPMS UNIFORM DATA SYSTEM;;NOV 22, 2017;Build 75
 ;;BUD 17 T6A LINE 16
 ;
 ; This routine loads Taxonomy BUD 17 T6A LINE 16
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
 ;;21,"A33. ")
 ;;1
 ;;21,"P22.1 ")
 ;;2
 ;;21,"P29.30 ")
 ;;3
 ;;21,"P55.0 ")
 ;;4
 ;;21,"R78.81 ")
 ;;5
 ;;9002226,736,.01)
 ;;BUD 17 T6A LINE 16
 ;;9002226,736,.02)
 ;;@
 ;;9002226,736,.04)
 ;;@
 ;;9002226,736,.06)
 ;;@
 ;;9002226,736,.08)
 ;;0
 ;;9002226,736,.09)
 ;;3171010
 ;;9002226,736,.11)
 ;;@
 ;;9002226,736,.12)
 ;;31
 ;;9002226,736,.13)
 ;;1
 ;;9002226,736,.14)
 ;;@
 ;;9002226,736,.15)
 ;;80
 ;;9002226,736,.16)
 ;;@
 ;;9002226,736,.17)
 ;;@
 ;;9002226,736,.22)
 ;;@
 ;;9002226,736,3101)
 ;;@
 ;;9002226.02101,"736,A33. ",.01)
 ;;A33. 
 ;;9002226.02101,"736,A33. ",.02)
 ;;A33. 
 ;;9002226.02101,"736,A33. ",.03)
 ;;30
 ;;9002226.02101,"736,P22.1 ",.01)
 ;;P22.1 
 ;;9002226.02101,"736,P22.1 ",.02)
 ;;P29.2 
 ;;9002226.02101,"736,P22.1 ",.03)
 ;;30
 ;;9002226.02101,"736,P29.30 ",.01)
 ;;P29.30 
 ;;9002226.02101,"736,P29.30 ",.02)
 ;;P39.9 
 ;;9002226.02101,"736,P29.30 ",.03)
 ;;30
 ;;9002226.02101,"736,P55.0 ",.01)
 ;;P55.0 
 ;;9002226.02101,"736,P55.0 ",.02)
 ;;P96.9 
 ;;9002226.02101,"736,P55.0 ",.03)
 ;;30
 ;;9002226.02101,"736,R78.81 ",.01)
 ;;R78.81 
 ;;9002226.02101,"736,R78.81 ",.02)
 ;;R78.89 
 ;;9002226.02101,"736,R78.81 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q