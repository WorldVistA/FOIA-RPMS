BGP29N ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED ENU DXS
 ;
 ; This routine loads Taxonomy BGP PED ENU DXS
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
 ;;21,"307.6 ")
 ;;1
 ;;21,"788.3 ")
 ;;2
 ;;9002226,1600,.01)
 ;;BGP PED ENU DXS
 ;;9002226,1600,.02)
 ;;@
 ;;9002226,1600,.04)
 ;;@
 ;;9002226,1600,.06)
 ;;@
 ;;9002226,1600,.08)
 ;;0
 ;;9002226,1600,.09)
 ;;3120219
 ;;9002226,1600,.11)
 ;;@
 ;;9002226,1600,.12)
 ;;31
 ;;9002226,1600,.13)
 ;;1
 ;;9002226,1600,.14)
 ;;@
 ;;9002226,1600,.15)
 ;;80
 ;;9002226,1600,.16)
 ;;@
 ;;9002226,1600,.17)
 ;;@
 ;;9002226,1600,3101)
 ;;@
 ;;9002226.02101,"1600,307.6 ",.01)
 ;;307.6 
 ;;9002226.02101,"1600,307.6 ",.02)
 ;;307.6 
 ;;9002226.02101,"1600,788.3 ",.01)
 ;;788.3 
 ;;9002226.02101,"1600,788.3 ",.02)
 ;;788.39 
 ;
OTHER ; OTHER ROUTINES
 Q