BUDE1A ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 19, 2017 ;
 ;;12.0;IHS/RPMS UNIFORM DATA SYSTEM;;NOV 22, 2017;Build 75
 ;;BUD 17 T6A LINE 1-2
 ;
 ; This routine loads Taxonomy BUD 17 T6A LINE 1-2
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
 ;;21,"B20. ")
 ;;1
 ;;21,"B97.35 ")
 ;;2
 ;;21,"O98.711 ")
 ;;3
 ;;21,"Z21. ")
 ;;4
 ;;9002226,2173,.01)
 ;;BUD 17 T6A LINE 1-2
 ;;9002226,2173,.02)
 ;;@
 ;;9002226,2173,.04)
 ;;n
 ;;9002226,2173,.06)
 ;;@
 ;;9002226,2173,.08)
 ;;0
 ;;9002226,2173,.09)
 ;;3170919
 ;;9002226,2173,.11)
 ;;@
 ;;9002226,2173,.12)
 ;;31
 ;;9002226,2173,.13)
 ;;1
 ;;9002226,2173,.14)
 ;;@
 ;;9002226,2173,.15)
 ;;80
 ;;9002226,2173,.16)
 ;;@
 ;;9002226,2173,.17)
 ;;@
 ;;9002226,2173,.22)
 ;;1
 ;;9002226,2173,3101)
 ;;@
 ;;9002226.02101,"2173,B20. ",.01)
 ;;B20. 
 ;;9002226.02101,"2173,B20. ",.02)
 ;;B20. 
 ;;9002226.02101,"2173,B20. ",.03)
 ;;30
 ;;9002226.02101,"2173,B97.35 ",.01)
 ;;B97.35 
 ;;9002226.02101,"2173,B97.35 ",.02)
 ;;B97.35 
 ;;9002226.02101,"2173,B97.35 ",.03)
 ;;30
 ;;9002226.02101,"2173,O98.711 ",.01)
 ;;O98.711 
 ;;9002226.02101,"2173,O98.711 ",.02)
 ;;O98.73 
 ;;9002226.02101,"2173,O98.711 ",.03)
 ;;30
 ;;9002226.02101,"2173,Z21. ",.01)
 ;;Z21. 
 ;;9002226.02101,"2173,Z21. ",.02)
 ;;Z21. 
 ;;9002226.02101,"2173,Z21. ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q