BGP86B ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 27, 2018;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;;BGP IPC CT COLONOGRAPHY CPTS
 ;
 ; This routine loads Taxonomy BGP IPC CT COLONOGRAPHY CPTS
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
 ;;21,"74261 ")
 ;;1
 ;;9002226,2298,.01)
 ;;BGP IPC CT COLONOGRAPHY CPTS
 ;;9002226,2298,.02)
 ;;@
 ;;9002226,2298,.04)
 ;;@
 ;;9002226,2298,.06)
 ;;@
 ;;9002226,2298,.08)
 ;;0
 ;;9002226,2298,.09)
 ;;3170725
 ;;9002226,2298,.11)
 ;;@
 ;;9002226,2298,.12)
 ;;455
 ;;9002226,2298,.13)
 ;;1
 ;;9002226,2298,.14)
 ;;@
 ;;9002226,2298,.15)
 ;;81
 ;;9002226,2298,.16)
 ;;@
 ;;9002226,2298,.17)
 ;;@
 ;;9002226,2298,.22)
 ;;1
 ;;9002226,2298,3101)
 ;;@
 ;;9002226.02101,"2298,74261 ",.01)
 ;;74261 
 ;;9002226.02101,"2298,74261 ",.02)
 ;;74263 
 ;
OTHER ; OTHER ROUTINES
 Q