BUD2ZK ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 16, 2012;
 ;;8.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 03, 2014;Build 36
 ;;BUD CARDIAC SURGERY DXS
 ;
 ; This routine loads Taxonomy BUD CARDIAC SURGERY DXS
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
 ;;21,"V45.81 ")
 ;;1
 ;;9002226,1770,.01)
 ;;BUD CARDIAC SURGERY DXS
 ;;9002226,1770,.02)
 ;;@
 ;;9002226,1770,.04)
 ;;@
 ;;9002226,1770,.06)
 ;;@
 ;;9002226,1770,.08)
 ;;0
 ;;9002226,1770,.09)
 ;;3121115
 ;;9002226,1770,.11)
 ;;@
 ;;9002226,1770,.12)
 ;;31
 ;;9002226,1770,.13)
 ;;1
 ;;9002226,1770,.14)
 ;;@
 ;;9002226,1770,.15)
 ;;80
 ;;9002226,1770,.16)
 ;;@
 ;;9002226,1770,.17)
 ;;@
 ;;9002226,1770,3101)
 ;;@
 ;;9002226.02101,"1770,V45.81 ",.01)
 ;;V45.81 
 ;;9002226.02101,"1770,V45.81 ",.02)
 ;;V45.82 
 ;
OTHER ; OTHER ROUTINES
 Q