BDMDEXB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 19, 2016 ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**10**;JUN 14, 2007;Build 12
 ;;DM AUDIT DENTAL EXAM CPTS
 ;
 ; This routine loads Taxonomy DM AUDIT DENTAL EXAM CPTS
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
 ;;21,"D0110 ")
 ;;1
 ;;21,"D0415 ")
 ;;2
 ;;21,"D9970 ")
 ;;3
 ;;21,"D9999 ")
 ;;4
 ;;9002226,2079,.01)
 ;;DM AUDIT DENTAL EXAM CPTS
 ;;9002226,2079,.02)
 ;;@
 ;;9002226,2079,.04)
 ;;n
 ;;9002226,2079,.06)
 ;;@
 ;;9002226,2079,.08)
 ;;0
 ;;9002226,2079,.09)
 ;;3161219
 ;;9002226,2079,.11)
 ;;@
 ;;9002226,2079,.12)
 ;;455
 ;;9002226,2079,.13)
 ;;1
 ;;9002226,2079,.14)
 ;;@
 ;;9002226,2079,.15)
 ;;81
 ;;9002226,2079,.16)
 ;;@
 ;;9002226,2079,.17)
 ;;@
 ;;9002226,2079,.22)
 ;;1
 ;;9002226,2079,3101)
 ;;@
 ;;9002226.02101,"2079,D0110 ",.01)
 ;;D0110 
 ;;9002226.02101,"2079,D0110 ",.02)
 ;;D0390 
 ;;9002226.02101,"2079,D0415 ",.01)
 ;;D0415 
 ;;9002226.02101,"2079,D0415 ",.02)
 ;;D9952 
 ;;9002226.02101,"2079,D9970 ",.01)
 ;;D9970 
 ;;9002226.02101,"2079,D9970 ",.02)
 ;;D9974 
 ;;9002226.02101,"2079,D9999 ",.01)
 ;;D9999 
 ;;9002226.02101,"2079,D9999 ",.02)
 ;;D9999 
 ;
OTHER ; OTHER ROUTINES
 Q