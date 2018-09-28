BGP85A ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 22, 2018;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;;BGP IPC HIB CPT CODES
 ;
 ; This routine loads Taxonomy BGP IPC HIB CPT CODES
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
 ;;21,"90644 ")
 ;;1
 ;;21,"90698 ")
 ;;2
 ;;21,"90721 ")
 ;;3
 ;;21,"90748 ")
 ;;4
 ;;9002226,2271,.01)
 ;;BGP IPC HIB CPT CODES
 ;;9002226,2271,.02)
 ;;@
 ;;9002226,2271,.04)
 ;;n
 ;;9002226,2271,.06)
 ;;@
 ;;9002226,2271,.08)
 ;;@
 ;;9002226,2271,.09)
 ;;3180222
 ;;9002226,2271,.11)
 ;;@
 ;;9002226,2271,.12)
 ;;455
 ;;9002226,2271,.13)
 ;;1
 ;;9002226,2271,.14)
 ;;@
 ;;9002226,2271,.15)
 ;;81
 ;;9002226,2271,.16)
 ;;@
 ;;9002226,2271,.17)
 ;;@
 ;;9002226,2271,.22)
 ;;1
 ;;9002226,2271,3101)
 ;;@
 ;;9002226.02101,"2271,90644 ",.01)
 ;;90644 
 ;;9002226.02101,"2271,90644 ",.02)
 ;;90648 
 ;;9002226.02101,"2271,90698 ",.01)
 ;;90698 
 ;;9002226.02101,"2271,90698 ",.02)
 ;;90698 
 ;;9002226.02101,"2271,90721 ",.01)
 ;;90721 
 ;;9002226.02101,"2271,90721 ",.02)
 ;;90721 
 ;;9002226.02101,"2271,90748 ",.01)
 ;;90748 
 ;;9002226.02101,"2271,90748 ",.02)
 ;;90748 
 ;
OTHER ; OTHER ROUTINES
 Q