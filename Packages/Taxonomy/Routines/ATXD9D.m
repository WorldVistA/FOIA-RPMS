ATXD9D ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 13, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;APCH BREAST EXAM DXS
 ;
 ; This routine loads Taxonomy APCH BREAST EXAM DXS
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
 ;;21,"V76.10 ")
 ;;1
 ;;21,"V76.12 ")
 ;;2
 ;;21,"Z12.39 ")
 ;;3
 ;;9002226,1741,.01)
 ;;APCH BREAST EXAM DXS
 ;;9002226,1741,.02)
 ;;@
 ;;9002226,1741,.04)
 ;;@
 ;;9002226,1741,.06)
 ;;@
 ;;9002226,1741,.08)
 ;;0
 ;;9002226,1741,.09)
 ;;3131113
 ;;9002226,1741,.11)
 ;;@
 ;;9002226,1741,.12)
 ;;31
 ;;9002226,1741,.13)
 ;;1
 ;;9002226,1741,.14)
 ;;@
 ;;9002226,1741,.15)
 ;;80
 ;;9002226,1741,.16)
 ;;@
 ;;9002226,1741,.17)
 ;;@
 ;;9002226,1741,3101)
 ;;@
 ;;9002226.02101,"1741,V76.10 ",.01)
 ;;V76.10 
 ;;9002226.02101,"1741,V76.10 ",.02)
 ;;V76.10 
 ;;9002226.02101,"1741,V76.10 ",.03)
 ;;1
 ;;9002226.02101,"1741,V76.12 ",.01)
 ;;V76.12 
 ;;9002226.02101,"1741,V76.12 ",.02)
 ;;V76.19 
 ;;9002226.02101,"1741,V76.12 ",.03)
 ;;1
 ;;9002226.02101,"1741,Z12.39 ",.01)
 ;;Z12.39 
 ;;9002226.02101,"1741,Z12.39 ",.02)
 ;;Z12.39 
 ;;9002226.02101,"1741,Z12.39 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q