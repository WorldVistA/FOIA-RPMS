BUD2ZC ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 16, 2012;
 ;;8.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 03, 2014;Build 36
 ;;BUD CAD CPTS
 ;
 ; This routine loads Taxonomy BUD CAD CPTS
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
 ;;21,"33140 ")
 ;;1
 ;;21,"33510 ")
 ;;2
 ;;21,"33521 ")
 ;;3
 ;;21,"33533 ")
 ;;4
 ;;21,"92980 ")
 ;;5
 ;;21,"92995 ")
 ;;6
 ;;9002226,1760,.01)
 ;;BUD CAD CPTS
 ;;9002226,1760,.02)
 ;;@
 ;;9002226,1760,.04)
 ;;@
 ;;9002226,1760,.06)
 ;;@
 ;;9002226,1760,.08)
 ;;0
 ;;9002226,1760,.09)
 ;;3121031
 ;;9002226,1760,.11)
 ;;@
 ;;9002226,1760,.12)
 ;;455
 ;;9002226,1760,.13)
 ;;1
 ;;9002226,1760,.14)
 ;;@
 ;;9002226,1760,.15)
 ;;81
 ;;9002226,1760,.16)
 ;;@
 ;;9002226,1760,.17)
 ;;@
 ;;9002226,1760,3101)
 ;;@
 ;;9002226.02101,"1760,33140 ",.01)
 ;;33140 
 ;;9002226.02101,"1760,33140 ",.02)
 ;;33140 
 ;;9002226.02101,"1760,33510 ",.01)
 ;;33510 
 ;;9002226.02101,"1760,33510 ",.02)
 ;;33519 
 ;;9002226.02101,"1760,33521 ",.01)
 ;;33521 
 ;;9002226.02101,"1760,33521 ",.02)
 ;;33523 
 ;;9002226.02101,"1760,33533 ",.01)
 ;;33533 
 ;;9002226.02101,"1760,33533 ",.02)
 ;;33536 
 ;;9002226.02101,"1760,92980 ",.01)
 ;;92980 
 ;;9002226.02101,"1760,92980 ",.02)
 ;;92984 
 ;;9002226.02101,"1760,92995 ",.01)
 ;;92995 
 ;;9002226.02101,"1760,92995 ",.02)
 ;;92996 
 ;
OTHER ; OTHER ROUTINES
 Q