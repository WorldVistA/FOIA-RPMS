BTPWCE ;GDIT/HCSD/ALA-CREATED BY ^ATXSTX ON APR 10, 2018;
 ;;1.2;CARE MANAGEMENT EVENT TRACKING;**1**;JUL 07,2017;Build 5
 ;;BTPW ENDOMETRIAL BX CPTS
 ;
 ; This routine loads Taxonomy BTPW ENDOMETRIAL BX CPTS
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
 ;;21,"58100 ")
 ;;1
 ;;21,"58110 ")
 ;;2
 ;;21,"58558 ")
 ;;3
 ;;21,"G9618 ")
 ;;4
 ;;21,"G9822 ")
 ;;5
 ;;21,"G9823 ")
 ;;6
 ;;21,"G9824 ")
 ;;7
 ;;9002226,834,.01)
 ;;BTPW ENDOMETRIAL BX CPTS
 ;;9002226,834,.02)
 ;;@
 ;;9002226,834,.04)
 ;;n
 ;;9002226,834,.06)
 ;;@
 ;;9002226,834,.08)
 ;;@
 ;;9002226,834,.09)
 ;;3060516
 ;;9002226,834,.11)
 ;;@
 ;;9002226,834,.12)
 ;;455
 ;;9002226,834,.13)
 ;;1
 ;;9002226,834,.14)
 ;;@
 ;;9002226,834,.15)
 ;;81
 ;;9002226,834,.16)
 ;;@
 ;;9002226,834,.17)
 ;;@
 ;;9002226,834,3101)
 ;;@
 ;;9002226.02101,"834,58100 ",.01)
 ;;58100 
 ;;9002226.02101,"834,58100 ",.02)
 ;;58100 
 ;;9002226.02101,"834,58110 ",.01)
 ;;58110 
 ;;9002226.02101,"834,58110 ",.02)
 ;;58110 
 ;;9002226.02101,"834,58558 ",.01)
 ;;58558 
 ;;9002226.02101,"834,58558 ",.02)
 ;;58558 
 ;;9002226.02101,"834,G9618 ",.01)
 ;;G9618
 ;;9002226.02101,"834,G9618 ",.02)
 ;;G9618
 ;;9002226.02101,"834,G9822 ",.01)
 ;;G9822
 ;;9002226.02101,"834,G9822 ",.02)
 ;;G9822
 ;;9002226.02101,"834,G9823 ",.01)
 ;;G9823
 ;;9002226.02101,"834,G9823 ",.02)
 ;;G9823
 ;;9002226.02101,"834,G9824 ",.01)
 ;;G9824
 ;;9002226.02101,"834,G9824 ",.02)
 ;;G9824
 ;
OTHER ; OTHER ROUTINES
 Q