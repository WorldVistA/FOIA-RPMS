ATXFCC ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 18, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;;BGP IPC LT MASTECTOMY DXS
 ;
 ; This routine loads Taxonomy BGP IPC LT MASTECTOMY DXS
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
 ;;21,"Z90.12 ")
 ;;1
 ;;9002226,2229,.01)
 ;;BGP IPC LT MASTECTOMY DXS
 ;;9002226,2229,.02)
 ;;@
 ;;9002226,2229,.04)
 ;;n
 ;;9002226,2229,.06)
 ;;@
 ;;9002226,2229,.08)
 ;;@
 ;;9002226,2229,.09)
 ;;3171218
 ;;9002226,2229,.11)
 ;;@
 ;;9002226,2229,.12)
 ;;31
 ;;9002226,2229,.13)
 ;;1
 ;;9002226,2229,.14)
 ;;@
 ;;9002226,2229,.15)
 ;;80
 ;;9002226,2229,.16)
 ;;@
 ;;9002226,2229,.17)
 ;;@
 ;;9002226,2229,.22)
 ;;1
 ;;9002226,2229,3101)
 ;;@
 ;;9002226.02101,"2229,Z90.12 ",.01)
 ;;Z90.12 
 ;;9002226.02101,"2229,Z90.12 ",.02)
 ;;Z90.12 
 ;;9002226.02101,"2229,Z90.12 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q