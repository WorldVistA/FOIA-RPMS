ATXFCG ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 19, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;;BGP IPC MUMPS DXS
 ;
 ; This routine loads Taxonomy BGP IPC MUMPS DXS
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
 ;;21,"B26.0 ")
 ;;1
 ;;9002226,2233,.01)
 ;;BGP IPC MUMPS DXS
 ;;9002226,2233,.02)
 ;;@
 ;;9002226,2233,.04)
 ;;n
 ;;9002226,2233,.06)
 ;;@
 ;;9002226,2233,.08)
 ;;@
 ;;9002226,2233,.09)
 ;;3171219
 ;;9002226,2233,.11)
 ;;@
 ;;9002226,2233,.12)
 ;;31
 ;;9002226,2233,.13)
 ;;1
 ;;9002226,2233,.14)
 ;;@
 ;;9002226,2233,.15)
 ;;80
 ;;9002226,2233,.16)
 ;;@
 ;;9002226,2233,.17)
 ;;@
 ;;9002226,2233,.22)
 ;;1
 ;;9002226,2233,3101)
 ;;@
 ;;9002226.02101,"2233,B26.0 ",.01)
 ;;B26.0 
 ;;9002226.02101,"2233,B26.0 ",.02)
 ;;B26.9 
 ;;9002226.02101,"2233,B26.0 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q