ATXFBQ5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 18, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"2218,E13.3553 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.3559 ",.01)
 ;;E13.3559 
 ;;9002226.02101,"2218,E13.3559 ",.02)
 ;;E13.3559 
 ;;9002226.02101,"2218,E13.3559 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.359 ",.01)
 ;;E13.359 
 ;;9002226.02101,"2218,E13.359 ",.02)
 ;;E13.359 
 ;;9002226.02101,"2218,E13.359 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.3591 ",.01)
 ;;E13.3591 
 ;;9002226.02101,"2218,E13.3591 ",.02)
 ;;E13.3591 
 ;;9002226.02101,"2218,E13.3591 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.3592 ",.01)
 ;;E13.3592 
 ;;9002226.02101,"2218,E13.3592 ",.02)
 ;;E13.3592 
 ;;9002226.02101,"2218,E13.3592 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.3593 ",.01)
 ;;E13.3593 
 ;;9002226.02101,"2218,E13.3593 ",.02)
 ;;E13.3593 
 ;;9002226.02101,"2218,E13.3593 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.3599 ",.01)
 ;;E13.3599 
 ;;9002226.02101,"2218,E13.3599 ",.02)
 ;;E13.3599 
 ;;9002226.02101,"2218,E13.3599 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.36 ",.01)
 ;;E13.36 
 ;;9002226.02101,"2218,E13.36 ",.02)
 ;;E13.36 
 ;;9002226.02101,"2218,E13.36 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.37X1 ",.01)
 ;;E13.37X1 
 ;;9002226.02101,"2218,E13.37X1 ",.02)
 ;;E13.37X1 
 ;;9002226.02101,"2218,E13.37X1 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.37X2 ",.01)
 ;;E13.37X2 
 ;;9002226.02101,"2218,E13.37X2 ",.02)
 ;;E13.37X2 
 ;;9002226.02101,"2218,E13.37X2 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.37X3 ",.01)
 ;;E13.37X3 
 ;;9002226.02101,"2218,E13.37X3 ",.02)
 ;;E13.37X3 
 ;;9002226.02101,"2218,E13.37X3 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.37X9 ",.01)
 ;;E13.37X9 
 ;;9002226.02101,"2218,E13.37X9 ",.02)
 ;;E13.37X9 
 ;;9002226.02101,"2218,E13.37X9 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.39 ",.01)
 ;;E13.39 
 ;;9002226.02101,"2218,E13.39 ",.02)
 ;;E13.39 
 ;;9002226.02101,"2218,E13.39 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.40 ",.01)
 ;;E13.40 
 ;;9002226.02101,"2218,E13.40 ",.02)
 ;;E13.40 
 ;;9002226.02101,"2218,E13.40 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.41 ",.01)
 ;;E13.41 
 ;;9002226.02101,"2218,E13.41 ",.02)
 ;;E13.41 
 ;;9002226.02101,"2218,E13.41 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.42 ",.01)
 ;;E13.42 
 ;;9002226.02101,"2218,E13.42 ",.02)
 ;;E13.42 
 ;;9002226.02101,"2218,E13.42 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.43 ",.01)
 ;;E13.43 
 ;;9002226.02101,"2218,E13.43 ",.02)
 ;;E13.43 
 ;;9002226.02101,"2218,E13.43 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.44 ",.01)
 ;;E13.44 
 ;;9002226.02101,"2218,E13.44 ",.02)
 ;;E13.44 
 ;;9002226.02101,"2218,E13.44 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.49 ",.01)
 ;;E13.49 
 ;;9002226.02101,"2218,E13.49 ",.02)
 ;;E13.49 
 ;;9002226.02101,"2218,E13.49 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.51 ",.01)
 ;;E13.51 
 ;;9002226.02101,"2218,E13.51 ",.02)
 ;;E13.51 
 ;;9002226.02101,"2218,E13.51 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.52 ",.01)
 ;;E13.52 
 ;;9002226.02101,"2218,E13.52 ",.02)
 ;;E13.52 
 ;;9002226.02101,"2218,E13.52 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.59 ",.01)
 ;;E13.59 
 ;;9002226.02101,"2218,E13.59 ",.02)
 ;;E13.59 
 ;;9002226.02101,"2218,E13.59 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.610 ",.01)
 ;;E13.610 
 ;;9002226.02101,"2218,E13.610 ",.02)
 ;;E13.610 
 ;;9002226.02101,"2218,E13.610 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.618 ",.01)
 ;;E13.618 
 ;;9002226.02101,"2218,E13.618 ",.02)
 ;;E13.618 
 ;;9002226.02101,"2218,E13.618 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.620 ",.01)
 ;;E13.620 
 ;;9002226.02101,"2218,E13.620 ",.02)
 ;;E13.620 
 ;;9002226.02101,"2218,E13.620 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.621 ",.01)
 ;;E13.621 
 ;;9002226.02101,"2218,E13.621 ",.02)
 ;;E13.621 
 ;;9002226.02101,"2218,E13.621 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.622 ",.01)
 ;;E13.622 
 ;;9002226.02101,"2218,E13.622 ",.02)
 ;;E13.622 
 ;;9002226.02101,"2218,E13.622 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.628 ",.01)
 ;;E13.628 
 ;;9002226.02101,"2218,E13.628 ",.02)
 ;;E13.628 
 ;;9002226.02101,"2218,E13.628 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.630 ",.01)
 ;;E13.630 
 ;;9002226.02101,"2218,E13.630 ",.02)
 ;;E13.630 
 ;;9002226.02101,"2218,E13.630 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.638 ",.01)
 ;;E13.638 
 ;;9002226.02101,"2218,E13.638 ",.02)
 ;;E13.638 
 ;;9002226.02101,"2218,E13.638 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.641 ",.01)
 ;;E13.641 
 ;;9002226.02101,"2218,E13.641 ",.02)
 ;;E13.641 
 ;;9002226.02101,"2218,E13.641 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.649 ",.01)
 ;;E13.649 
 ;;9002226.02101,"2218,E13.649 ",.02)
 ;;E13.649 
 ;;9002226.02101,"2218,E13.649 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.65 ",.01)
 ;;E13.65 
 ;;9002226.02101,"2218,E13.65 ",.02)
 ;;E13.65 
 ;;9002226.02101,"2218,E13.65 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.69 ",.01)
 ;;E13.69 
 ;;9002226.02101,"2218,E13.69 ",.02)
 ;;E13.69 
 ;;9002226.02101,"2218,E13.69 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.8 ",.01)
 ;;E13.8 
 ;;9002226.02101,"2218,E13.8 ",.02)
 ;;E13.8 
 ;;9002226.02101,"2218,E13.8 ",.03)
 ;;30
 ;;9002226.02101,"2218,E13.9 ",.01)
 ;;E13.9 
 ;;9002226.02101,"2218,E13.9 ",.02)
 ;;E13.9 
 ;;9002226.02101,"2218,E13.9 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.011 ",.01)
 ;;O24.011 
 ;;9002226.02101,"2218,O24.011 ",.02)
 ;;O24.011 
 ;;9002226.02101,"2218,O24.011 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.012 ",.01)
 ;;O24.012 
 ;;9002226.02101,"2218,O24.012 ",.02)
 ;;O24.012 
 ;;9002226.02101,"2218,O24.012 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.013 ",.01)
 ;;O24.013 
 ;;9002226.02101,"2218,O24.013 ",.02)
 ;;O24.013 
 ;;9002226.02101,"2218,O24.013 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.019 ",.01)
 ;;O24.019 
 ;;9002226.02101,"2218,O24.019 ",.02)
 ;;O24.019 
 ;;9002226.02101,"2218,O24.019 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.02 ",.01)
 ;;O24.02 
 ;;9002226.02101,"2218,O24.02 ",.02)
 ;;O24.02 
 ;;9002226.02101,"2218,O24.02 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.03 ",.01)
 ;;O24.03 
 ;;9002226.02101,"2218,O24.03 ",.02)
 ;;O24.03 
 ;;9002226.02101,"2218,O24.03 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.111 ",.01)
 ;;O24.111 
 ;;9002226.02101,"2218,O24.111 ",.02)
 ;;O24.111 
 ;;9002226.02101,"2218,O24.111 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.112 ",.01)
 ;;O24.112 
 ;;9002226.02101,"2218,O24.112 ",.02)
 ;;O24.112 
 ;;9002226.02101,"2218,O24.112 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.113 ",.01)
 ;;O24.113 
 ;;9002226.02101,"2218,O24.113 ",.02)
 ;;O24.113 
 ;;9002226.02101,"2218,O24.113 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.119 ",.01)
 ;;O24.119 
 ;;9002226.02101,"2218,O24.119 ",.02)
 ;;O24.119 
 ;;9002226.02101,"2218,O24.119 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.12 ",.01)
 ;;O24.12 
 ;;9002226.02101,"2218,O24.12 ",.02)
 ;;O24.12 
 ;;9002226.02101,"2218,O24.12 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.13 ",.01)
 ;;O24.13 
 ;;9002226.02101,"2218,O24.13 ",.02)
 ;;O24.13 
 ;;9002226.02101,"2218,O24.13 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.311 ",.01)
 ;;O24.311 
 ;;9002226.02101,"2218,O24.311 ",.02)
 ;;O24.311 
 ;;9002226.02101,"2218,O24.311 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.312 ",.01)
 ;;O24.312 
 ;;9002226.02101,"2218,O24.312 ",.02)
 ;;O24.312 
 ;;9002226.02101,"2218,O24.312 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.313 ",.01)
 ;;O24.313 
 ;;9002226.02101,"2218,O24.313 ",.02)
 ;;O24.313 
 ;;9002226.02101,"2218,O24.313 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.319 ",.01)
 ;;O24.319 
 ;;9002226.02101,"2218,O24.319 ",.02)
 ;;O24.319 
 ;;9002226.02101,"2218,O24.319 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.32 ",.01)
 ;;O24.32 
 ;;9002226.02101,"2218,O24.32 ",.02)
 ;;O24.32 
 ;;9002226.02101,"2218,O24.32 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.33 ",.01)
 ;;O24.33 
 ;;9002226.02101,"2218,O24.33 ",.02)
 ;;O24.33 
 ;;9002226.02101,"2218,O24.33 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.811 ",.01)
 ;;O24.811 
 ;;9002226.02101,"2218,O24.811 ",.02)
 ;;O24.811 
 ;;9002226.02101,"2218,O24.811 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.812 ",.01)
 ;;O24.812 
 ;;9002226.02101,"2218,O24.812 ",.02)
 ;;O24.812 
 ;;9002226.02101,"2218,O24.812 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.813 ",.01)
 ;;O24.813 
 ;;9002226.02101,"2218,O24.813 ",.02)
 ;;O24.813 
 ;;9002226.02101,"2218,O24.813 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.819 ",.01)
 ;;O24.819 
 ;;9002226.02101,"2218,O24.819 ",.02)
 ;;O24.819 
 ;;9002226.02101,"2218,O24.819 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.82 ",.01)
 ;;O24.82 
 ;;9002226.02101,"2218,O24.82 ",.02)
 ;;O24.82 
 ;;9002226.02101,"2218,O24.82 ",.03)
 ;;30
 ;;9002226.02101,"2218,O24.83 ",.01)
 ;;O24.83 
 ;;9002226.02101,"2218,O24.83 ",.02)
 ;;O24.83 
 ;;9002226.02101,"2218,O24.83 ",.03)
 ;;30