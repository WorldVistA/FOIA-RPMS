BGP9OXB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP OSTEO SCREEN CPTS
 ;
 ; This routine loads Taxonomy BGP OSTEO SCREEN CPTS
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
 ;;21,"76070 ")
 ;;1
 ;;21,"76071 ")
 ;;2
 ;;21,"76977 ")
 ;;3
 ;;21,"77078 ")
 ;;4
 ;;21,"77079 ")
 ;;5
 ;;21,"G0130 ")
 ;;6
 ;;9002226,524,.01)
 ;;BGP OSTEO SCREEN CPTS
 ;;9002226,524,.02)
 ;;@
 ;;9002226,524,.04)
 ;;n
 ;;9002226,524,.06)
 ;;@
 ;;9002226,524,.08)
 ;;0
 ;;9002226,524,.09)
 ;;3070703
 ;;9002226,524,.11)
 ;;@
 ;;9002226,524,.12)
 ;;455
 ;;9002226,524,.13)
 ;;1
 ;;9002226,524,.14)
 ;;@
 ;;9002226,524,.15)
 ;;81
 ;;9002226,524,.16)
 ;;@
 ;;9002226,524,.17)
 ;;@
 ;;9002226,524,3101)
 ;;@
 ;;9002226.02101,"524,76070 ",.01)
 ;;76070 
 ;;9002226.02101,"524,76070 ",.02)
 ;;76070 
 ;;9002226.02101,"524,76071 ",.01)
 ;;76071 
 ;;9002226.02101,"524,76071 ",.02)
 ;;76076 
 ;;9002226.02101,"524,76977 ",.01)
 ;;76977 
 ;;9002226.02101,"524,76977 ",.02)
 ;;76977 
 ;;9002226.02101,"524,77078 ",.01)
 ;;77078 
 ;;9002226.02101,"524,77078 ",.02)
 ;;77078 
 ;;9002226.02101,"524,77079 ",.01)
 ;;77079 
 ;;9002226.02101,"524,77079 ",.02)
 ;;77081 
 ;;9002226.02101,"524,G0130 ",.01)
 ;;G0130 
 ;;9002226.02101,"524,G0130 ",.02)
 ;;G0130 
 ;
OTHER ; OTHER ROUTINES
 Q
