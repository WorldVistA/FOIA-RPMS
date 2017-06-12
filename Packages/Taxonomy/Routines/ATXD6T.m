ATXD6T ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BKM TRICHOMONIASIS DXS
 ;
 ; This routine loads Taxonomy BKM TRICHOMONIASIS DXS
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
 ;;21,"131.0 ")
 ;;1
 ;;21,"A59.00 ")
 ;;2
 ;;21,"A59.01 ")
 ;;3
 ;;21,"A59.02 ")
 ;;4
 ;;21,"A59.03 ")
 ;;5
 ;;21,"A59.09 ")
 ;;6
 ;;21,"A59.8 ")
 ;;7
 ;;21,"A59.9 ")
 ;;8
 ;;9002226,474,.01)
 ;;BKM TRICHOMONIASIS DXS
 ;;9002226,474,.02)
 ;;Trichomoniasis
 ;;9002226,474,.04)
 ;;@
 ;;9002226,474,.06)
 ;;@
 ;;9002226,474,.08)
 ;;0
 ;;9002226,474,.09)
 ;;3130122
 ;;9002226,474,.11)
 ;;@
 ;;9002226,474,.12)
 ;;31
 ;;9002226,474,.13)
 ;;1
 ;;9002226,474,.14)
 ;;@
 ;;9002226,474,.15)
 ;;80
 ;;9002226,474,.16)
 ;;@
 ;;9002226,474,.17)
 ;;@
 ;;9002226,474,3101)
 ;;@
 ;;9002226.02101,"474,131.0 ",.01)
 ;;131.0
 ;;9002226.02101,"474,131.0 ",.02)
 ;;131.9
 ;;9002226.02101,"474,131.0 ",.03)
 ;;1
 ;;9002226.02101,"474,A59.00 ",.01)
 ;;A59.00
 ;;9002226.02101,"474,A59.00 ",.02)
 ;;A59.00
 ;;9002226.02101,"474,A59.00 ",.03)
 ;;30
 ;;9002226.02101,"474,A59.01 ",.01)
 ;;A59.01
 ;;9002226.02101,"474,A59.01 ",.02)
 ;;A59.01
 ;;9002226.02101,"474,A59.01 ",.03)
 ;;30
 ;;9002226.02101,"474,A59.02 ",.01)
 ;;A59.02
 ;;9002226.02101,"474,A59.02 ",.02)
 ;;A59.02
 ;;9002226.02101,"474,A59.02 ",.03)
 ;;30
 ;;9002226.02101,"474,A59.03 ",.01)
 ;;A59.03
 ;;9002226.02101,"474,A59.03 ",.02)
 ;;A59.03
 ;;9002226.02101,"474,A59.03 ",.03)
 ;;30
 ;;9002226.02101,"474,A59.09 ",.01)
 ;;A59.09
 ;;9002226.02101,"474,A59.09 ",.02)
 ;;A59.09
 ;;9002226.02101,"474,A59.09 ",.03)
 ;;30
 ;;9002226.02101,"474,A59.8 ",.01)
 ;;A59.8
 ;;9002226.02101,"474,A59.8 ",.02)
 ;;A59.8
 ;;9002226.02101,"474,A59.8 ",.03)
 ;;30
 ;;9002226.02101,"474,A59.9 ",.01)
 ;;A59.9
 ;;9002226.02101,"474,A59.9 ",.02)
 ;;A59.9
 ;;9002226.02101,"474,A59.9 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q