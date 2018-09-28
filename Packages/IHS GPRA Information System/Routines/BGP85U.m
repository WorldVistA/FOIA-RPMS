BGP85U ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 26, 2018;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;;BGP IPC MAMMOGRAM CPTS
 ;
 ; This routine loads Taxonomy BGP IPC MAMMOGRAM CPTS
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
 ;;21,"77052 ")
 ;;1
 ;;21,"77065 ")
 ;;2
 ;;21,"G0202 ")
 ;;3
 ;;21,"G0204 ")
 ;;4
 ;;21,"G0206 ")
 ;;5
 ;;9002226,2291,.01)
 ;;BGP IPC MAMMOGRAM CPTS
 ;;9002226,2291,.02)
 ;;@
 ;;9002226,2291,.04)
 ;;n
 ;;9002226,2291,.06)
 ;;@
 ;;9002226,2291,.08)
 ;;@
 ;;9002226,2291,.09)
 ;;3180226
 ;;9002226,2291,.11)
 ;;@
 ;;9002226,2291,.12)
 ;;455
 ;;9002226,2291,.13)
 ;;1
 ;;9002226,2291,.14)
 ;;@
 ;;9002226,2291,.15)
 ;;81
 ;;9002226,2291,.16)
 ;;@
 ;;9002226,2291,.17)
 ;;@
 ;;9002226,2291,.22)
 ;;1
 ;;9002226,2291,3101)
 ;;@
 ;;9002226.02101,"2291,77052 ",.01)
 ;;77052 
 ;;9002226.02101,"2291,77052 ",.02)
 ;;77059 
 ;;9002226.02101,"2291,77065 ",.01)
 ;;77065 
 ;;9002226.02101,"2291,77065 ",.02)
 ;;77067 
 ;;9002226.02101,"2291,G0202 ",.01)
 ;;G0202 
 ;;9002226.02101,"2291,G0202 ",.02)
 ;;G0202 
 ;;9002226.02101,"2291,G0204 ",.01)
 ;;G0204 
 ;;9002226.02101,"2291,G0204 ",.02)
 ;;G0204 
 ;;9002226.02101,"2291,G0206 ",.01)
 ;;G0206 
 ;;9002226.02101,"2291,G0206 ",.02)
 ;;G0206 
 ;
OTHER ; OTHER ROUTINES
 Q