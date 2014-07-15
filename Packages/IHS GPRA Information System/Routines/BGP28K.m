BGP28K ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED CF DXS
 ;
 ; This routine loads Taxonomy BGP PED CF DXS
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
 ;;21,"277.00 ")
 ;;1
 ;;9002226,1571,.01)
 ;;BGP PED CF DXS
 ;;9002226,1571,.02)
 ;;@
 ;;9002226,1571,.04)
 ;;@
 ;;9002226,1571,.06)
 ;;@
 ;;9002226,1571,.08)
 ;;0
 ;;9002226,1571,.09)
 ;;3120218
 ;;9002226,1571,.11)
 ;;@
 ;;9002226,1571,.12)
 ;;31
 ;;9002226,1571,.13)
 ;;1
 ;;9002226,1571,.14)
 ;;@
 ;;9002226,1571,.15)
 ;;80
 ;;9002226,1571,.16)
 ;;@
 ;;9002226,1571,.17)
 ;;@
 ;;9002226,1571,3101)
 ;;@
 ;;9002226.02101,"1571,277.00 ",.01)
 ;;277.00 
 ;;9002226.02101,"1571,277.00 ",.02)
 ;;277.09 
 ;
OTHER ; OTHER ROUTINES
 Q