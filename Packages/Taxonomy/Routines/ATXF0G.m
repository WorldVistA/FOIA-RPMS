ATXF0G ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUN 29, 2017;
 ;;5.1;TAXONOMY;**23**;FEB 04, 1997;Build 39
 ;;BGP IMMUNODEFICIENCY DXS
 ;
 ; This routine loads Taxonomy BGP IMMUNODEFICIENCY DXS
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
 ;;21,"279.00 ")
 ;;1
 ;;21,"D80.0 ")
 ;;2
 ;;21,"D81.89 ")
 ;;3
 ;;21,"D89.3 ")
 ;;4
 ;;21,"D89.810 ")
 ;;5
 ;;9002226,487,.01)
 ;;BGP IMMUNODEFICIENCY DXS
 ;;9002226,487,.02)
 ;;@
 ;;9002226,487,.04)
 ;;n
 ;;9002226,487,.06)
 ;;@
 ;;9002226,487,.08)
 ;;0
 ;;9002226,487,.09)
 ;;3170626
 ;;9002226,487,.11)
 ;;@
 ;;9002226,487,.12)
 ;;31
 ;;9002226,487,.13)
 ;;1
 ;;9002226,487,.14)
 ;;@
 ;;9002226,487,.15)
 ;;80
 ;;9002226,487,.16)
 ;;@
 ;;9002226,487,.17)
 ;;@
 ;;9002226,487,.22)
 ;;1
 ;;9002226,487,3101)
 ;;@
 ;;9002226.02101,"487,279.00 ",.01)
 ;;279.00 
 ;;9002226.02101,"487,279.00 ",.02)
 ;;279.9 
 ;;9002226.02101,"487,279.00 ",.03)
 ;;1
 ;;9002226.02101,"487,D80.0 ",.01)
 ;;D80.0 
 ;;9002226.02101,"487,D80.0 ",.02)
 ;;D81.7 
 ;;9002226.02101,"487,D80.0 ",.03)
 ;;30
 ;;9002226.02101,"487,D81.89 ",.01)
 ;;D81.89 
 ;;9002226.02101,"487,D81.89 ",.02)
 ;;D84.9 
 ;;9002226.02101,"487,D81.89 ",.03)
 ;;30
 ;;9002226.02101,"487,D89.3 ",.01)
 ;;D89.3 
 ;;9002226.02101,"487,D89.3 ",.02)
 ;;D89.3 
 ;;9002226.02101,"487,D89.3 ",.03)
 ;;30
 ;;9002226.02101,"487,D89.810 ",.01)
 ;;D89.810 
 ;;9002226.02101,"487,D89.810 ",.02)
 ;;D89.9 
 ;;9002226.02101,"487,D89.810 ",.03)
 ;;30
 ;;9002226.04101,"487,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q