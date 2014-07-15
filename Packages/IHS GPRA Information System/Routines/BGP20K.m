BGP20K ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED HEAT DXS
 ;
 ; This routine loads Taxonomy BGP PED HEAT DXS
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
 ;;21,"992.0 ")
 ;;1
 ;;9002226,1622,.01)
 ;;BGP PED HEAT DXS
 ;;9002226,1622,.02)
 ;;@
 ;;9002226,1622,.04)
 ;;@
 ;;9002226,1622,.06)
 ;;@
 ;;9002226,1622,.08)
 ;;0
 ;;9002226,1622,.09)
 ;;3120219
 ;;9002226,1622,.11)
 ;;@
 ;;9002226,1622,.12)
 ;;31
 ;;9002226,1622,.13)
 ;;1
 ;;9002226,1622,.14)
 ;;@
 ;;9002226,1622,.15)
 ;;80
 ;;9002226,1622,.16)
 ;;@
 ;;9002226,1622,.17)
 ;;@
 ;;9002226,1622,3101)
 ;;@
 ;;9002226.02101,"1622,992.0 ",.01)
 ;;992.0 
 ;;9002226.02101,"1622,992.0 ",.02)
 ;;992.0 
 ;
OTHER ; OTHER ROUTINES
 Q