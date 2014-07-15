BGP28V ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED DC DXS
 ;
 ; This routine loads Taxonomy BGP PED DC DXS
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
 ;;21,"521.0 ")
 ;;1
 ;;9002226,1582,.01)
 ;;BGP PED DC DXS
 ;;9002226,1582,.02)
 ;;@
 ;;9002226,1582,.04)
 ;;@
 ;;9002226,1582,.06)
 ;;@
 ;;9002226,1582,.08)
 ;;0
 ;;9002226,1582,.09)
 ;;3120219
 ;;9002226,1582,.11)
 ;;@
 ;;9002226,1582,.12)
 ;;31
 ;;9002226,1582,.13)
 ;;1
 ;;9002226,1582,.14)
 ;;@
 ;;9002226,1582,.15)
 ;;80
 ;;9002226,1582,.16)
 ;;@
 ;;9002226,1582,.17)
 ;;@
 ;;9002226,1582,3101)
 ;;@
 ;;9002226.02101,"1582,521.0 ",.01)
 ;;521.0 
 ;;9002226.02101,"1582,521.0 ",.02)
 ;;521.09 
 ;
OTHER ; OTHER ROUTINES
 Q