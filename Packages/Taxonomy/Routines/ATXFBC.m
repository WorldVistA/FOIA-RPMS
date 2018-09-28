ATXFBC ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 14, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;;BGP BILATERAL BLINDNESS DXS
 ;
 ; This routine loads Taxonomy BGP BILATERAL BLINDNESS DXS
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
 ;;21,"369.01 ")
 ;;1
 ;;21,"369.03 ")
 ;;2
 ;;21,"H54.0 ")
 ;;3
 ;;9002226,1464,.01)
 ;;BGP BILATERAL BLINDNESS DXS
 ;;9002226,1464,.02)
 ;;@
 ;;9002226,1464,.04)
 ;;n
 ;;9002226,1464,.06)
 ;;@
 ;;9002226,1464,.08)
 ;;0
 ;;9002226,1464,.09)
 ;;3171214
 ;;9002226,1464,.11)
 ;;@
 ;;9002226,1464,.12)
 ;;31
 ;;9002226,1464,.13)
 ;;1
 ;;9002226,1464,.14)
 ;;@
 ;;9002226,1464,.15)
 ;;80
 ;;9002226,1464,.16)
 ;;@
 ;;9002226,1464,.17)
 ;;@
 ;;9002226,1464,.22)
 ;;1
 ;;9002226,1464,3101)
 ;;@
 ;;9002226.02101,"1464,369.01 ",.01)
 ;;369.01 
 ;;9002226.02101,"1464,369.01 ",.02)
 ;;369.01 
 ;;9002226.02101,"1464,369.01 ",.03)
 ;;1
 ;;9002226.02101,"1464,369.03 ",.01)
 ;;369.03 
 ;;9002226.02101,"1464,369.03 ",.02)
 ;;369.04 
 ;;9002226.02101,"1464,369.03 ",.03)
 ;;1
 ;;9002226.02101,"1464,H54.0 ",.01)
 ;;H54.0 
 ;;9002226.02101,"1464,H54.0 ",.02)
 ;;H54.0X55 
 ;;9002226.02101,"1464,H54.0 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q