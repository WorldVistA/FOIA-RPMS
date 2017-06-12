ATXD2C ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP EMPHYSEMA DXS
 ;
 ; This routine loads Taxonomy BGP EMPHYSEMA DXS
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
 ;;21,"492.0 ")
 ;;1
 ;;21,"518.1 ")
 ;;2
 ;;21,"J43.0 ")
 ;;3
 ;;21,"J43.1 ")
 ;;4
 ;;21,"J43.2 ")
 ;;5
 ;;21,"J43.8 ")
 ;;6
 ;;21,"J43.9 ")
 ;;7
 ;;21,"J68.4 ")
 ;;8
 ;;21,"J68.8 ")
 ;;9
 ;;21,"J98.2 ")
 ;;10
 ;;21,"J98.3 ")
 ;;11
 ;;9002226,363,.01)
 ;;BGP EMPHYSEMA DXS
 ;;9002226,363,.02)
 ;;@
 ;;9002226,363,.04)
 ;;n
 ;;9002226,363,.06)
 ;;@
 ;;9002226,363,.08)
 ;;0
 ;;9002226,363,.09)
 ;;3130515
 ;;9002226,363,.11)
 ;;@
 ;;9002226,363,.12)
 ;;31
 ;;9002226,363,.13)
 ;;1
 ;;9002226,363,.14)
 ;;@
 ;;9002226,363,.15)
 ;;80
 ;;9002226,363,.16)
 ;;@
 ;;9002226,363,.17)
 ;;@
 ;;9002226,363,3101)
 ;;@
 ;;9002226.02101,"363,492.0 ",.01)
 ;;492.0 
 ;;9002226.02101,"363,492.0 ",.02)
 ;;492.8 
 ;;9002226.02101,"363,492.0 ",.03)
 ;;1
 ;;9002226.02101,"363,518.1 ",.01)
 ;;518.1 
 ;;9002226.02101,"363,518.1 ",.02)
 ;;518.2 
 ;;9002226.02101,"363,518.1 ",.03)
 ;;1
 ;;9002226.02101,"363,J43.0 ",.01)
 ;;J43.0
 ;;9002226.02101,"363,J43.0 ",.02)
 ;;J43.0
 ;;9002226.02101,"363,J43.0 ",.03)
 ;;30
 ;;9002226.02101,"363,J43.1 ",.01)
 ;;J43.1
 ;;9002226.02101,"363,J43.1 ",.02)
 ;;J43.1
 ;;9002226.02101,"363,J43.1 ",.03)
 ;;30
 ;;9002226.02101,"363,J43.2 ",.01)
 ;;J43.2
 ;;9002226.02101,"363,J43.2 ",.02)
 ;;J43.2
 ;;9002226.02101,"363,J43.2 ",.03)
 ;;30
 ;;9002226.02101,"363,J43.8 ",.01)
 ;;J43.8
 ;;9002226.02101,"363,J43.8 ",.02)
 ;;J43.8
 ;;9002226.02101,"363,J43.8 ",.03)
 ;;30
 ;;9002226.02101,"363,J43.9 ",.01)
 ;;J43.9
 ;;9002226.02101,"363,J43.9 ",.02)
 ;;J43.9
 ;;9002226.02101,"363,J43.9 ",.03)
 ;;30
 ;;9002226.02101,"363,J68.4 ",.01)
 ;;J68.4
 ;;9002226.02101,"363,J68.4 ",.02)
 ;;J68.4
 ;;9002226.02101,"363,J68.4 ",.03)
 ;;30
 ;;9002226.02101,"363,J68.8 ",.01)
 ;;J68.8
 ;;9002226.02101,"363,J68.8 ",.02)
 ;;J68.8
 ;;9002226.02101,"363,J68.8 ",.03)
 ;;30
 ;;9002226.02101,"363,J98.2 ",.01)
 ;;J98.2
 ;;9002226.02101,"363,J98.2 ",.02)
 ;;J98.2
 ;;9002226.02101,"363,J98.2 ",.03)
 ;;30
 ;;9002226.02101,"363,J98.3 ",.01)
 ;;J98.3
 ;;9002226.02101,"363,J98.3 ",.02)
 ;;J98.3
 ;;9002226.02101,"363,J98.3 ",.03)
 ;;30
 ;;9002226.04101,"363,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q