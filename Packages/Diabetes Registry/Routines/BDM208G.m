BDM208G ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 23, 2014;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**8**;JUN 14, 2007;Build 53
 ;;DM AUDIT METABOLIC SYNDROME
 ;
 ; This routine loads Taxonomy DM AUDIT METABOLIC SYNDROME
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
 ;;21,"277.7 ")
 ;;1
 ;;9002226,1921,.01)
 ;;DM AUDIT METABOLIC SYNDROME
 ;;9002226,1921,.02)
 ;;@
 ;;9002226,1921,.04)
 ;;@
 ;;9002226,1921,.06)
 ;;@
 ;;9002226,1921,.08)
 ;;0
 ;;9002226,1921,.09)
 ;;3140916
 ;;9002226,1921,.11)
 ;;@
 ;;9002226,1921,.12)
 ;;31
 ;;9002226,1921,.13)
 ;;1
 ;;9002226,1921,.14)
 ;;@
 ;;9002226,1921,.15)
 ;;80
 ;;9002226,1921,.16)
 ;;@
 ;;9002226,1921,.17)
 ;;@
 ;;9002226,1921,3101)
 ;;@
 ;;9002226.02101,"1921,277.7 ",.01)
 ;;277.7 
 ;;9002226.02101,"1921,277.7 ",.02)
 ;;277.7 
 ;
OTHER ; OTHER ROUTINES
 Q