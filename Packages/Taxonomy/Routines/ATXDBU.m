ATXDBU ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 01, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI EXERCISE COUNSELING DXS
 ;
 ; This routine loads Taxonomy BQI EXERCISE COUNSELING DXS
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
 ;;21,"V65.41 ")
 ;;1
 ;;9002226,1894,.01)
 ;;BQI EXERCISE COUNSELING DXS
 ;;9002226,1894,.02)
 ;;Exercise Counseling
 ;;9002226,1894,.04)
 ;;n
 ;;9002226,1894,.06)
 ;;@
 ;;9002226,1894,.08)
 ;;0
 ;;9002226,1894,.09)
 ;;3140318
 ;;9002226,1894,.11)
 ;;@
 ;;9002226,1894,.12)
 ;;31
 ;;9002226,1894,.13)
 ;;1
 ;;9002226,1894,.14)
 ;;@
 ;;9002226,1894,.15)
 ;;80
 ;;9002226,1894,.16)
 ;;@
 ;;9002226,1894,.17)
 ;;@
 ;;9002226,1894,3101)
 ;;@
 ;;9002226.01101,"1894,1",.01)
 ;;Used by CVD Best Practice prompts.
 ;;9002226.02101,"1894,V65.41 ",.01)
 ;;V65.41
 ;;9002226.02101,"1894,V65.41 ",.02)
 ;;V65.41
 ;;9002226.02101,"1894,V65.41 ",.03)
 ;;1
 ;;9002226.04101,"1894,1",.01)
 ;;BQI
 ;;9002226.05101,"1894,1",.01)
 ;;EXERCISE
 ;
OTHER ; OTHER ROUTINES
 Q