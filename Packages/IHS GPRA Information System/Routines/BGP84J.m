BGP84J ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 13, 2018;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;;BGP IPC PREVCARE IND COUN CPTS
 ;
 ; This routine loads Taxonomy BGP IPC PREVCARE IND COUN CPTS
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
 ;;21,"99401 ")
 ;;1
 ;;9002226,2254,.01)
 ;;BGP IPC PREVCARE IND COUN CPTS
 ;;9002226,2254,.02)
 ;;@
 ;;9002226,2254,.04)
 ;;n
 ;;9002226,2254,.06)
 ;;@
 ;;9002226,2254,.08)
 ;;0
 ;;9002226,2254,.09)
 ;;3180213
 ;;9002226,2254,.11)
 ;;@
 ;;9002226,2254,.12)
 ;;455
 ;;9002226,2254,.13)
 ;;1
 ;;9002226,2254,.14)
 ;;@
 ;;9002226,2254,.15)
 ;;81
 ;;9002226,2254,.16)
 ;;@
 ;;9002226,2254,.17)
 ;;@
 ;;9002226,2254,.22)
 ;;1
 ;;9002226,2254,3101)
 ;;@
 ;;9002226.02101,"2254,99401 ",.01)
 ;;99401 
 ;;9002226.02101,"2254,99401 ",.02)
 ;;99404 
 ;
OTHER ; OTHER ROUTINES
 Q