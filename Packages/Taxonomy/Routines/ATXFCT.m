ATXFCT ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 19, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;;BGP TIA DXS
 ;
 ; This routine loads Taxonomy BGP TIA DXS
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
 ;;21,"433.01 ")
 ;;1
 ;;21,"433.11 ")
 ;;2
 ;;21,"433.21 ")
 ;;3
 ;;21,"433.31 ")
 ;;4
 ;;21,"433.81 ")
 ;;5
 ;;21,"433.91 ")
 ;;6
 ;;21,"434.01 ")
 ;;7
 ;;21,"434.11 ")
 ;;8
 ;;21,"434.91 ")
 ;;9
 ;;21,"437.1 ")
 ;;10
 ;;21,"438.0 ")
 ;;11
 ;;21,"G45.0 ")
 ;;12
 ;;21,"G45.8 ")
 ;;13
 ;;21,"I63.00 ")
 ;;14
 ;;21,"I69.00 ")
 ;;15
 ;;21,"V12.54 ")
 ;;16
 ;;21,"Z86.73 ")
 ;;17
 ;;9002226,817,.01)
 ;;BGP TIA DXS
 ;;9002226,817,.02)
 ;;@
 ;;9002226,817,.04)
 ;;n
 ;;9002226,817,.06)
 ;;@
 ;;9002226,817,.08)
 ;;0
 ;;9002226,817,.09)
 ;;3130516
 ;;9002226,817,.11)
 ;;@
 ;;9002226,817,.12)
 ;;31
 ;;9002226,817,.13)
 ;;1
 ;;9002226,817,.14)
 ;;@
 ;;9002226,817,.15)
 ;;80
 ;;9002226,817,.16)
 ;;@
 ;;9002226,817,.17)
 ;;@
 ;;9002226,817,.22)
 ;;1
 ;;9002226,817,3101)
 ;;@
 ;;9002226.02101,"817,433.01 ",.01)
 ;;433.01 
 ;;9002226.02101,"817,433.01 ",.02)
 ;;433.01 
 ;;9002226.02101,"817,433.01 ",.03)
 ;;1
 ;;9002226.02101,"817,433.11 ",.01)
 ;;433.11 
 ;;9002226.02101,"817,433.11 ",.02)
 ;;433.11 
 ;;9002226.02101,"817,433.11 ",.03)
 ;;1
 ;;9002226.02101,"817,433.21 ",.01)
 ;;433.21 
 ;;9002226.02101,"817,433.21 ",.02)
 ;;433.21 
 ;;9002226.02101,"817,433.21 ",.03)
 ;;1
 ;;9002226.02101,"817,433.31 ",.01)
 ;;433.31 
 ;;9002226.02101,"817,433.31 ",.02)
 ;;433.31 
 ;;9002226.02101,"817,433.31 ",.03)
 ;;1
 ;;9002226.02101,"817,433.81 ",.01)
 ;;433.81 
 ;;9002226.02101,"817,433.81 ",.02)
 ;;433.81 
 ;;9002226.02101,"817,433.81 ",.03)
 ;;1
 ;;9002226.02101,"817,433.91 ",.01)
 ;;433.91 
 ;;9002226.02101,"817,433.91 ",.02)
 ;;433.91 
 ;;9002226.02101,"817,433.91 ",.03)
 ;;1
 ;;9002226.02101,"817,434.01 ",.01)
 ;;434.01 
 ;;9002226.02101,"817,434.01 ",.02)
 ;;434.01 
 ;;9002226.02101,"817,434.01 ",.03)
 ;;1
 ;;9002226.02101,"817,434.11 ",.01)
 ;;434.11 
 ;;9002226.02101,"817,434.11 ",.02)
 ;;434.11 
 ;;9002226.02101,"817,434.11 ",.03)
 ;;1
 ;;9002226.02101,"817,434.91 ",.01)
 ;;434.91 
 ;;9002226.02101,"817,434.91 ",.02)
 ;;436. 
 ;;9002226.02101,"817,434.91 ",.03)
 ;;1
 ;;9002226.02101,"817,437.1 ",.01)
 ;;437.1 
 ;;9002226.02101,"817,437.1 ",.02)
 ;;437.1 
 ;;9002226.02101,"817,437.1 ",.03)
 ;;1
 ;;9002226.02101,"817,438.0 ",.01)
 ;;438.0 
 ;;9002226.02101,"817,438.0 ",.02)
 ;;438.9 
 ;;9002226.02101,"817,438.0 ",.03)
 ;;1
 ;;9002226.02101,"817,G45.0 ",.01)
 ;;G45.0 
 ;;9002226.02101,"817,G45.0 ",.02)
 ;;G45.2 
 ;;9002226.02101,"817,G45.0 ",.03)
 ;;30
 ;;9002226.02101,"817,G45.8 ",.01)
 ;;G45.8 
 ;;9002226.02101,"817,G45.8 ",.02)
 ;;G46.8 
 ;;9002226.02101,"817,G45.8 ",.03)
 ;;30
 ;;9002226.02101,"817,I63.00 ",.01)
 ;;I63.00 
 ;;9002226.02101,"817,I63.00 ",.02)
 ;;I63.9 
 ;;9002226.02101,"817,I63.00 ",.03)
 ;;30
 ;;9002226.02101,"817,I69.00 ",.01)
 ;;I69.00 
 ;;9002226.02101,"817,I69.00 ",.02)
 ;;I69.998 
 ;;9002226.02101,"817,I69.00 ",.03)
 ;;30
 ;;9002226.02101,"817,V12.54 ",.01)
 ;;V12.54 
 ;;9002226.02101,"817,V12.54 ",.02)
 ;;V12.54 
 ;;9002226.02101,"817,V12.54 ",.03)
 ;;1
 ;;9002226.02101,"817,Z86.73 ",.01)
 ;;Z86.73 
 ;;9002226.02101,"817,Z86.73 ",.02)
 ;;Z86.73 
 ;;9002226.02101,"817,Z86.73 ",.03)
 ;;30
 ;;9002226.04101,"817,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q