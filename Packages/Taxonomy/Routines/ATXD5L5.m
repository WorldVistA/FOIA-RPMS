ATXD5L5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"165,W18.39XD ",.03)
 ;;30
 ;;9002226.02101,"165,W18.39XS ",.01)
 ;;W18.39XS 
 ;;9002226.02101,"165,W18.39XS ",.02)
 ;;W18.39XS 
 ;;9002226.02101,"165,W18.39XS ",.03)
 ;;30
 ;;9002226.02101,"165,W19.XXXA ",.01)
 ;;W19.XXXA 
 ;;9002226.02101,"165,W19.XXXA ",.02)
 ;;W19.XXXA 
 ;;9002226.02101,"165,W19.XXXA ",.03)
 ;;30
 ;;9002226.02101,"165,W19.XXXD ",.01)
 ;;W19.XXXD 
 ;;9002226.02101,"165,W19.XXXD ",.02)
 ;;W19.XXXD 
 ;;9002226.02101,"165,W19.XXXD ",.03)
 ;;30
 ;;9002226.02101,"165,W19.XXXS ",.01)
 ;;W19.XXXS 
 ;;9002226.02101,"165,W19.XXXS ",.02)
 ;;W19.XXXS 
 ;;9002226.02101,"165,W19.XXXS ",.03)
 ;;30
 ;;9002226.04101,"165,1",.01)
 ;;APCL