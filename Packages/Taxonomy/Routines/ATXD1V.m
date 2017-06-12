ATXD1V ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP COLO DXS
 ;
 ; This routine loads Taxonomy BGP COLO DXS
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
 ;;21,"V76.51 ")
 ;;1
 ;;21,"Z12.11 ")
 ;;2
 ;;9002226,984,.01)
 ;;BGP COLO DXS
 ;;9002226,984,.02)
 ;;@
 ;;9002226,984,.04)
 ;;n
 ;;9002226,984,.06)
 ;;@
 ;;9002226,984,.08)
 ;;0
 ;;9002226,984,.09)
 ;;3121002
 ;;9002226,984,.11)
 ;;@
 ;;9002226,984,.12)
 ;;31
 ;;9002226,984,.13)
 ;;1
 ;;9002226,984,.14)
 ;;@
 ;;9002226,984,.15)
 ;;80
 ;;9002226,984,.16)
 ;;@
 ;;9002226,984,.17)
 ;;@
 ;;9002226,984,3101)
 ;;@
 ;;9002226.02101,"984,V76.51 ",.01)
 ;;V76.51 
 ;;9002226.02101,"984,V76.51 ",.02)
 ;;V76.51 
 ;;9002226.02101,"984,V76.51 ",.03)
 ;;1
 ;;9002226.02101,"984,Z12.11 ",.01)
 ;;Z12.11 
 ;;9002226.02101,"984,Z12.11 ",.02)
 ;;Z12.11 
 ;;9002226.02101,"984,Z12.11 ",.03)
 ;;30
 ;;9002226.04101,"984,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q