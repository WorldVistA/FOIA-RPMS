BGP24U ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED PVD DXS
 ;
 ; This routine loads Taxonomy BGP PED PVD DXS
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
 ;;21,"250.70 ")
 ;;1
 ;;21,"443.0 ")
 ;;2
 ;;9002226,1684,.01)
 ;;BGP PED PVD DXS
 ;;9002226,1684,.02)
 ;;@
 ;;9002226,1684,.04)
 ;;@
 ;;9002226,1684,.06)
 ;;@
 ;;9002226,1684,.08)
 ;;0
 ;;9002226,1684,.09)
 ;;3120219
 ;;9002226,1684,.11)
 ;;@
 ;;9002226,1684,.12)
 ;;31
 ;;9002226,1684,.13)
 ;;1
 ;;9002226,1684,.14)
 ;;@
 ;;9002226,1684,.15)
 ;;80
 ;;9002226,1684,.16)
 ;;@
 ;;9002226,1684,.17)
 ;;@
 ;;9002226,1684,3101)
 ;;@
 ;;9002226.02101,"1684,250.70 ",.01)
 ;;250.70 
 ;;9002226.02101,"1684,250.70 ",.02)
 ;;250.73 
 ;;9002226.02101,"1684,443.0 ",.01)
 ;;443.0 
 ;;9002226.02101,"1684,443.0 ",.02)
 ;;443.9 
 ;
OTHER ; OTHER ROUTINES
 Q