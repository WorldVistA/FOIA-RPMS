BDMDGZD ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 18, 2018;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**12**;JUN 14, 2007;Build 51
 ;;BGP DM BTK AMP CTS
 ;
 ; This routine loads Taxonomy BGP DM BTK AMP CTS
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
 ;;21,"27880 ")
 ;;1
 ;;21,"28800 ")
 ;;2
 ;;9002226,2397,.01)
 ;;BGP DM BTK AMP CTS
 ;;9002226,2397,.02)
 ;;@
 ;;9002226,2397,.04)
 ;;n
 ;;9002226,2397,.06)
 ;;@
 ;;9002226,2397,.08)
 ;;0
 ;;9002226,2397,.09)
 ;;3181017
 ;;9002226,2397,.11)
 ;;@
 ;;9002226,2397,.12)
 ;;455
 ;;9002226,2397,.13)
 ;;1
 ;;9002226,2397,.14)
 ;;@
 ;;9002226,2397,.15)
 ;;81
 ;;9002226,2397,.16)
 ;;@
 ;;9002226,2397,.17)
 ;;@
 ;;9002226,2397,.22)
 ;;1
 ;;9002226,2397,3101)
 ;;@
 ;;9002226.02101,"2397,27880 ",.01)
 ;;27880 
 ;;9002226.02101,"2397,27880 ",.02)
 ;;27889 
 ;;9002226.02101,"2397,28800 ",.01)
 ;;28800 
 ;;9002226.02101,"2397,28800 ",.02)
 ;;28825 
 ;
OTHER ; OTHER ROUTINES
 Q