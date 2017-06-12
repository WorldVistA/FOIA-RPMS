ATXD1J ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP AMI DXS PAMT
 ;
 ; This routine loads Taxonomy BGP AMI DXS PAMT
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
 ;;21,"410.0 ")
 ;;1
 ;;21,"412. ")
 ;;2
 ;;21,"I21.01 ")
 ;;3
 ;;21,"I21.02 ")
 ;;4
 ;;21,"I21.09 ")
 ;;5
 ;;21,"I21.11 ")
 ;;6
 ;;21,"I21.19 ")
 ;;7
 ;;21,"I21.21 ")
 ;;8
 ;;21,"I21.29 ")
 ;;9
 ;;21,"I21.3 ")
 ;;10
 ;;21,"I21.4 ")
 ;;11
 ;;21,"I22.0 ")
 ;;12
 ;;21,"I22.1 ")
 ;;13
 ;;21,"I22.2 ")
 ;;14
 ;;21,"I22.8 ")
 ;;15
 ;;21,"I22.9 ")
 ;;16
 ;;9002226,716,.01)
 ;;BGP AMI DXS PAMT
 ;;9002226,716,.02)
 ;;@
 ;;9002226,716,.04)
 ;;n
 ;;9002226,716,.06)
 ;;@
 ;;9002226,716,.08)
 ;;0
 ;;9002226,716,.09)
 ;;3130515
 ;;9002226,716,.11)
 ;;@
 ;;9002226,716,.12)
 ;;31
 ;;9002226,716,.13)
 ;;1
 ;;9002226,716,.14)
 ;;@
 ;;9002226,716,.15)
 ;;80
 ;;9002226,716,.16)
 ;;@
 ;;9002226,716,.17)
 ;;@
 ;;9002226,716,3101)
 ;;@
 ;;9002226.02101,"716,410.0 ",.01)
 ;;410.0 
 ;;9002226.02101,"716,410.0 ",.02)
 ;;410.92 
 ;;9002226.02101,"716,410.0 ",.03)
 ;;1
 ;;9002226.02101,"716,412. ",.01)
 ;;412. 
 ;;9002226.02101,"716,412. ",.02)
 ;;412. 
 ;;9002226.02101,"716,412. ",.03)
 ;;1
 ;;9002226.02101,"716,I21.01 ",.01)
 ;;I21.01
 ;;9002226.02101,"716,I21.01 ",.02)
 ;;I21.01
 ;;9002226.02101,"716,I21.01 ",.03)
 ;;30
 ;;9002226.02101,"716,I21.02 ",.01)
 ;;I21.02
 ;;9002226.02101,"716,I21.02 ",.02)
 ;;I21.02
 ;;9002226.02101,"716,I21.02 ",.03)
 ;;30
 ;;9002226.02101,"716,I21.09 ",.01)
 ;;I21.09
 ;;9002226.02101,"716,I21.09 ",.02)
 ;;I21.09
 ;;9002226.02101,"716,I21.09 ",.03)
 ;;30
 ;;9002226.02101,"716,I21.11 ",.01)
 ;;I21.11
 ;;9002226.02101,"716,I21.11 ",.02)
 ;;I21.11
 ;;9002226.02101,"716,I21.11 ",.03)
 ;;30
 ;;9002226.02101,"716,I21.19 ",.01)
 ;;I21.19
 ;;9002226.02101,"716,I21.19 ",.02)
 ;;I21.19
 ;;9002226.02101,"716,I21.19 ",.03)
 ;;30
 ;;9002226.02101,"716,I21.21 ",.01)
 ;;I21.21
 ;;9002226.02101,"716,I21.21 ",.02)
 ;;I21.21
 ;;9002226.02101,"716,I21.21 ",.03)
 ;;30
 ;;9002226.02101,"716,I21.29 ",.01)
 ;;I21.29
 ;;9002226.02101,"716,I21.29 ",.02)
 ;;I21.29
 ;;9002226.02101,"716,I21.29 ",.03)
 ;;30
 ;;9002226.02101,"716,I21.3 ",.01)
 ;;I21.3
 ;;9002226.02101,"716,I21.3 ",.02)
 ;;I21.3
 ;;9002226.02101,"716,I21.3 ",.03)
 ;;30
 ;;9002226.02101,"716,I21.4 ",.01)
 ;;I21.4
 ;;9002226.02101,"716,I21.4 ",.02)
 ;;I21.4
 ;;9002226.02101,"716,I21.4 ",.03)
 ;;30
 ;;9002226.02101,"716,I22.0 ",.01)
 ;;I22.0
 ;;9002226.02101,"716,I22.0 ",.02)
 ;;I22.0
 ;;9002226.02101,"716,I22.0 ",.03)
 ;;30
 ;;9002226.02101,"716,I22.1 ",.01)
 ;;I22.1
 ;;9002226.02101,"716,I22.1 ",.02)
 ;;I22.1
 ;;9002226.02101,"716,I22.1 ",.03)
 ;;30
 ;;9002226.02101,"716,I22.2 ",.01)
 ;;I22.2
 ;;9002226.02101,"716,I22.2 ",.02)
 ;;I22.2
 ;;9002226.02101,"716,I22.2 ",.03)
 ;;30
 ;;9002226.02101,"716,I22.8 ",.01)
 ;;I22.8
 ;;9002226.02101,"716,I22.8 ",.02)
 ;;I22.8
 ;;9002226.02101,"716,I22.8 ",.03)
 ;;30
 ;;9002226.02101,"716,I22.9 ",.01)
 ;;I22.9
 ;;9002226.02101,"716,I22.9 ",.02)
 ;;I22.9
 ;;9002226.02101,"716,I22.9 ",.03)
 ;;30
 ;;9002226.04101,"716,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q