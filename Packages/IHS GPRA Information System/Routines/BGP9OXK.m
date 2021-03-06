BGP9OXK ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP PHARYNGITIS DXS
 ;
 ; This routine loads Taxonomy BGP PHARYNGITIS DXS
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
 ;;21,"034.0 ")
 ;;1
 ;;21,"462. ")
 ;;2
 ;;9002226,555,.01)
 ;;BGP PHARYNGITIS DXS
 ;;9002226,555,.02)
 ;;@
 ;;9002226,555,.04)
 ;;n
 ;;9002226,555,.06)
 ;;@
 ;;9002226,555,.08)
 ;;0
 ;;9002226,555,.09)
 ;;3051213
 ;;9002226,555,.11)
 ;;@
 ;;9002226,555,.12)
 ;;31
 ;;9002226,555,.13)
 ;;1
 ;;9002226,555,.14)
 ;;@
 ;;9002226,555,.15)
 ;;80
 ;;9002226,555,.16)
 ;;@
 ;;9002226,555,.17)
 ;;@
 ;;9002226,555,3101)
 ;;@
 ;;9002226.02101,"555,034.0 ",.01)
 ;;034.0 
 ;;9002226.02101,"555,034.0 ",.02)
 ;;034.0 
 ;;9002226.02101,"555,462. ",.01)
 ;;462. 
 ;;9002226.02101,"555,462. ",.02)
 ;;463. 
 ;
OTHER ; OTHER ROUTINES
 Q
