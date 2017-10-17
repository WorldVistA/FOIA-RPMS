ATXF6E ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 20, 2016 ;
 ;;5.1;TAXONOMY;**19**;FEB 04, 1997;Build 32
 ;;BGP TOPICAL FLUORIDE DXS
 ;
 ; This routine loads Taxonomy BGP TOPICAL FLUORIDE DXS
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
 ;;21,"V07.31 ")
 ;;1
 ;;21,"Z29.3 ")
 ;;2
 ;;9002226,1794,.01)
 ;;BGP TOPICAL FLUORIDE DXS
 ;;9002226,1794,.02)
 ;;@
 ;;9002226,1794,.04)
 ;;n
 ;;9002226,1794,.06)
 ;;@
 ;;9002226,1794,.08)
 ;;@
 ;;9002226,1794,.09)
 ;;3120802
 ;;9002226,1794,.11)
 ;;@
 ;;9002226,1794,.12)
 ;;31
 ;;9002226,1794,.13)
 ;;1
 ;;9002226,1794,.14)
 ;;@
 ;;9002226,1794,.15)
 ;;80
 ;;9002226,1794,.16)
 ;;@
 ;;9002226,1794,.17)
 ;;@
 ;;9002226,1794,.22)
 ;;1
 ;;9002226,1794,3101)
 ;;@
 ;;9002226.02101,"1794,V07.31 ",.01)
 ;;V07.31 
 ;;9002226.02101,"1794,V07.31 ",.02)
 ;;V07.31 
 ;;9002226.02101,"1794,V07.31 ",.03)
 ;;1
 ;;9002226.02101,"1794,Z29.3 ",.01)
 ;;Z29.3
 ;;9002226.02101,"1794,Z29.3 ",.02)
 ;;Z29.3
 ;;9002226.02101,"1794,Z29.3 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q