BGP85Z ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 27, 2018;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;;BGP IPC SIG CPT CODES
 ;
 ; This routine loads Taxonomy BGP IPC SIG CPT CODES
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
 ;;21,"45330 ")
 ;;1
 ;;21,"45349 ")
 ;;2
 ;;21,"45350 ")
 ;;3
 ;;21,"G0104 ")
 ;;4
 ;;9002226,2296,.01)
 ;;BGP IPC SIG CPT CODES
 ;;9002226,2296,.02)
 ;;@
 ;;9002226,2296,.04)
 ;;@
 ;;9002226,2296,.06)
 ;;@
 ;;9002226,2296,.08)
 ;;0
 ;;9002226,2296,.09)
 ;;3170725
 ;;9002226,2296,.11)
 ;;@
 ;;9002226,2296,.12)
 ;;455
 ;;9002226,2296,.13)
 ;;1
 ;;9002226,2296,.14)
 ;;@
 ;;9002226,2296,.15)
 ;;81
 ;;9002226,2296,.16)
 ;;@
 ;;9002226,2296,.17)
 ;;@
 ;;9002226,2296,.22)
 ;;1
 ;;9002226,2296,3101)
 ;;@
 ;;9002226.02101,"2296,45330 ",.01)
 ;;45330 
 ;;9002226.02101,"2296,45330 ",.02)
 ;;45347 
 ;;9002226.02101,"2296,45349 ",.01)
 ;;45349 
 ;;9002226.02101,"2296,45349 ",.02)
 ;;45349 
 ;;9002226.02101,"2296,45350 ",.01)
 ;;45350 
 ;;9002226.02101,"2296,45350 ",.02)
 ;;45350 
 ;;9002226.02101,"2296,G0104 ",.01)
 ;;G0104 
 ;;9002226.02101,"2296,G0104 ",.02)
 ;;G0104 
 ;
OTHER ; OTHER ROUTINES
 Q