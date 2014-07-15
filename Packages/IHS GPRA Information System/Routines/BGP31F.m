BGP31F ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 27, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;;BGP HYSTERECTOMY DXS
 ;
 ; This routine loads Taxonomy BGP HYSTERECTOMY DXS
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
 ;;21,"618.5 ")
 ;;1
 ;;21,"V76.47 ")
 ;;2
 ;;21,"V88.01 ")
 ;;3
 ;;21,"V88.03 ")
 ;;4
 ;;9002226,886,.01)
 ;;BGP HYSTERECTOMY DXS
 ;;9002226,886,.02)
 ;;@
 ;;9002226,886,.04)
 ;;@
 ;;9002226,886,.06)
 ;;@
 ;;9002226,886,.08)
 ;;0
 ;;9002226,886,.09)
 ;;3120827
 ;;9002226,886,.11)
 ;;@
 ;;9002226,886,.12)
 ;;31
 ;;9002226,886,.13)
 ;;1
 ;;9002226,886,.14)
 ;;@
 ;;9002226,886,.15)
 ;;80
 ;;9002226,886,.16)
 ;;@
 ;;9002226,886,.17)
 ;;@
 ;;9002226,886,3101)
 ;;@
 ;;9002226.02101,"886,618.5 ",.01)
 ;;618.5 
 ;;9002226.02101,"886,618.5 ",.02)
 ;;618.5 
 ;;9002226.02101,"886,V76.47 ",.01)
 ;;V76.47 
 ;;9002226.02101,"886,V76.47 ",.02)
 ;;V76.47 
 ;;9002226.02101,"886,V88.01 ",.01)
 ;;V88.01 
 ;;9002226.02101,"886,V88.01 ",.02)
 ;;V88.01 
 ;;9002226.02101,"886,V88.03 ",.01)
 ;;V88.03 
 ;;9002226.02101,"886,V88.03 ",.02)
 ;;V88.03 
 ;
OTHER ; OTHER ROUTINES
 Q