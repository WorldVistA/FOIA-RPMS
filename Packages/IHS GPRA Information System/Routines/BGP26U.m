BGP26U ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP INJECTION ANTIBIOTIC PROCS
 ;
 ; This routine loads Taxonomy BGP INJECTION ANTIBIOTIC PROCS
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
 ;;21,"99.21 ")
 ;;1
 ;;9002226,1532,.01)
 ;;BGP INJECTION ANTIBIOTIC PROCS
 ;;9002226,1532,.02)
 ;;@
 ;;9002226,1532,.04)
 ;;@
 ;;9002226,1532,.06)
 ;;@
 ;;9002226,1532,.08)
 ;;0
 ;;9002226,1532,.09)
 ;;3120216
 ;;9002226,1532,.11)
 ;;@
 ;;9002226,1532,.12)
 ;;255
 ;;9002226,1532,.13)
 ;;1
 ;;9002226,1532,.14)
 ;;@
 ;;9002226,1532,.15)
 ;;80.1
 ;;9002226,1532,.16)
 ;;@
 ;;9002226,1532,.17)
 ;;@
 ;;9002226,1532,3101)
 ;;@
 ;;9002226.02101,"1532,99.21 ",.01)
 ;;99.21 
 ;;9002226.02101,"1532,99.21 ",.02)
 ;;99.21 
 ;
OTHER ; OTHER ROUTINES
 Q