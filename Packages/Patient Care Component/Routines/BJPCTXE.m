BJPCTXE ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2008;
 ;;1.0;IHS PCC SUITE;**1**;MAR 14, 2008
 ;;BGP TOBACCO USE CPTS
 ;
 ; This routine loads Taxonomy BGP TOBACCO USE CPTS
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
 ;;21,"1034F ")
 ;;1
 ;;9002226,1084,.01)
 ;;BGP TOBACCO USE CPTS
 ;;9002226,1084,.02)
 ;;@
 ;;9002226,1084,.04)
 ;;@
 ;;9002226,1084,.06)
 ;;@
 ;;9002226,1084,.08)
 ;;0
 ;;9002226,1084,.09)
 ;;3080224
 ;;9002226,1084,.11)
 ;;@
 ;;9002226,1084,.12)
 ;;455
 ;;9002226,1084,.13)
 ;;1
 ;;9002226,1084,.14)
 ;;@
 ;;9002226,1084,.15)
 ;;81
 ;;9002226,1084,.16)
 ;;@
 ;;9002226,1084,.17)
 ;;@
 ;;9002226,1084,3101)
 ;;@
 ;;9002226.02101,"1084,1034F ",.01)
 ;;1034F 
 ;;9002226.02101,"1084,1034F ",.02)
 ;;1036F 
 ;
OTHER ; OTHER ROUTINES
 Q