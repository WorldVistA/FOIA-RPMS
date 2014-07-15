BUD2ZH ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 16, 2012;
 ;;8.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 03, 2014;Build 36
 ;;BUD COLORECTAL CANCER DXS
 ;
 ; This routine loads Taxonomy BUD COLORECTAL CANCER DXS
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
 ;;21,"153.0 ")
 ;;1
 ;;21,"197.5 ")
 ;;2
 ;;21,"V10.05 ")
 ;;3
 ;;9002226,1767,.01)
 ;;BUD COLORECTAL CANCER DXS
 ;;9002226,1767,.02)
 ;;@
 ;;9002226,1767,.04)
 ;;@
 ;;9002226,1767,.06)
 ;;@
 ;;9002226,1767,.08)
 ;;0
 ;;9002226,1767,.09)
 ;;3121106
 ;;9002226,1767,.11)
 ;;@
 ;;9002226,1767,.12)
 ;;31
 ;;9002226,1767,.13)
 ;;1
 ;;9002226,1767,.14)
 ;;@
 ;;9002226,1767,.15)
 ;;80
 ;;9002226,1767,.16)
 ;;@
 ;;9002226,1767,.17)
 ;;@
 ;;9002226,1767,3101)
 ;;@
 ;;9002226.02101,"1767,153.0 ",.01)
 ;;153.0 
 ;;9002226.02101,"1767,153.0 ",.02)
 ;;154.1 
 ;;9002226.02101,"1767,197.5 ",.01)
 ;;197.5 
 ;;9002226.02101,"1767,197.5 ",.02)
 ;;197.5 
 ;;9002226.02101,"1767,V10.05 ",.01)
 ;;V10.05 
 ;;9002226.02101,"1767,V10.05 ",.02)
 ;;V10.05 
 ;
OTHER ; OTHER ROUTINES
 Q