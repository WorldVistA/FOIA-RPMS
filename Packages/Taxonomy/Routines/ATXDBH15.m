ATXDBH15 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 20, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1959,O26.853 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.859 ",.01)
 ;;O26.859 
 ;;9002226.02101,"1959,O26.859 ",.02)
 ;;O26.859 
 ;;9002226.02101,"1959,O26.859 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.86 ",.01)
 ;;O26.86 
 ;;9002226.02101,"1959,O26.86 ",.02)
 ;;O26.86 
 ;;9002226.02101,"1959,O26.86 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.872 ",.01)
 ;;O26.872 
 ;;9002226.02101,"1959,O26.872 ",.02)
 ;;O26.872 
 ;;9002226.02101,"1959,O26.872 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.873 ",.01)
 ;;O26.873 
 ;;9002226.02101,"1959,O26.873 ",.02)
 ;;O26.873 
 ;;9002226.02101,"1959,O26.873 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.879 ",.01)
 ;;O26.879 
 ;;9002226.02101,"1959,O26.879 ",.02)
 ;;O26.879 
 ;;9002226.02101,"1959,O26.879 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.891 ",.01)
 ;;O26.891 
 ;;9002226.02101,"1959,O26.891 ",.02)
 ;;O26.891 
 ;;9002226.02101,"1959,O26.891 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.892 ",.01)
 ;;O26.892 
 ;;9002226.02101,"1959,O26.892 ",.02)
 ;;O26.892 
 ;;9002226.02101,"1959,O26.892 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.893 ",.01)
 ;;O26.893 
 ;;9002226.02101,"1959,O26.893 ",.02)
 ;;O26.893 
 ;;9002226.02101,"1959,O26.893 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.899 ",.01)
 ;;O26.899 
 ;;9002226.02101,"1959,O26.899 ",.02)
 ;;O26.899 
 ;;9002226.02101,"1959,O26.899 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.90 ",.01)
 ;;O26.90 
 ;;9002226.02101,"1959,O26.90 ",.02)
 ;;O26.90 
 ;;9002226.02101,"1959,O26.90 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.91 ",.01)
 ;;O26.91 
 ;;9002226.02101,"1959,O26.91 ",.02)
 ;;O26.91 
 ;;9002226.02101,"1959,O26.91 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.92 ",.01)
 ;;O26.92 
 ;;9002226.02101,"1959,O26.92 ",.02)
 ;;O26.92 
 ;;9002226.02101,"1959,O26.92 ",.03)
 ;;30
 ;;9002226.02101,"1959,O26.93 ",.01)
 ;;O26.93 
 ;;9002226.02101,"1959,O26.93 ",.02)
 ;;O26.93 
 ;;9002226.02101,"1959,O26.93 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.011 ",.01)
 ;;O29.011 
 ;;9002226.02101,"1959,O29.011 ",.02)
 ;;O29.011 
 ;;9002226.02101,"1959,O29.011 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.012 ",.01)
 ;;O29.012 
 ;;9002226.02101,"1959,O29.012 ",.02)
 ;;O29.012 
 ;;9002226.02101,"1959,O29.012 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.013 ",.01)
 ;;O29.013 
 ;;9002226.02101,"1959,O29.013 ",.02)
 ;;O29.013 
 ;;9002226.02101,"1959,O29.013 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.019 ",.01)
 ;;O29.019 
 ;;9002226.02101,"1959,O29.019 ",.02)
 ;;O29.019 
 ;;9002226.02101,"1959,O29.019 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.021 ",.01)
 ;;O29.021 
 ;;9002226.02101,"1959,O29.021 ",.02)
 ;;O29.021 
 ;;9002226.02101,"1959,O29.021 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.022 ",.01)
 ;;O29.022 
 ;;9002226.02101,"1959,O29.022 ",.02)
 ;;O29.022 
 ;;9002226.02101,"1959,O29.022 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.023 ",.01)
 ;;O29.023 
 ;;9002226.02101,"1959,O29.023 ",.02)
 ;;O29.023 
 ;;9002226.02101,"1959,O29.023 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.029 ",.01)
 ;;O29.029 
 ;;9002226.02101,"1959,O29.029 ",.02)
 ;;O29.029 
 ;;9002226.02101,"1959,O29.029 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.091 ",.01)
 ;;O29.091 
 ;;9002226.02101,"1959,O29.091 ",.02)
 ;;O29.091 
 ;;9002226.02101,"1959,O29.091 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.092 ",.01)
 ;;O29.092 
 ;;9002226.02101,"1959,O29.092 ",.02)
 ;;O29.092 
 ;;9002226.02101,"1959,O29.092 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.093 ",.01)
 ;;O29.093 
 ;;9002226.02101,"1959,O29.093 ",.02)
 ;;O29.093 
 ;;9002226.02101,"1959,O29.093 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.099 ",.01)
 ;;O29.099 
 ;;9002226.02101,"1959,O29.099 ",.02)
 ;;O29.099 
 ;;9002226.02101,"1959,O29.099 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.111 ",.01)
 ;;O29.111 
 ;;9002226.02101,"1959,O29.111 ",.02)
 ;;O29.111 
 ;;9002226.02101,"1959,O29.111 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.112 ",.01)
 ;;O29.112 
 ;;9002226.02101,"1959,O29.112 ",.02)
 ;;O29.112 
 ;;9002226.02101,"1959,O29.112 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.113 ",.01)
 ;;O29.113 
 ;;9002226.02101,"1959,O29.113 ",.02)
 ;;O29.113 
 ;;9002226.02101,"1959,O29.113 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.119 ",.01)
 ;;O29.119 
 ;;9002226.02101,"1959,O29.119 ",.02)
 ;;O29.119 
 ;;9002226.02101,"1959,O29.119 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.121 ",.01)
 ;;O29.121 
 ;;9002226.02101,"1959,O29.121 ",.02)
 ;;O29.121 
 ;;9002226.02101,"1959,O29.121 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.122 ",.01)
 ;;O29.122 
 ;;9002226.02101,"1959,O29.122 ",.02)
 ;;O29.122 
 ;;9002226.02101,"1959,O29.122 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.123 ",.01)
 ;;O29.123 
 ;;9002226.02101,"1959,O29.123 ",.02)
 ;;O29.123 
 ;;9002226.02101,"1959,O29.123 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.129 ",.01)
 ;;O29.129 
 ;;9002226.02101,"1959,O29.129 ",.02)
 ;;O29.129 
 ;;9002226.02101,"1959,O29.129 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.191 ",.01)
 ;;O29.191 
 ;;9002226.02101,"1959,O29.191 ",.02)
 ;;O29.191 
 ;;9002226.02101,"1959,O29.191 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.192 ",.01)
 ;;O29.192 
 ;;9002226.02101,"1959,O29.192 ",.02)
 ;;O29.192 
 ;;9002226.02101,"1959,O29.192 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.193 ",.01)
 ;;O29.193 
 ;;9002226.02101,"1959,O29.193 ",.02)
 ;;O29.193 
 ;;9002226.02101,"1959,O29.193 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.199 ",.01)
 ;;O29.199 
 ;;9002226.02101,"1959,O29.199 ",.02)
 ;;O29.199 
 ;;9002226.02101,"1959,O29.199 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.211 ",.01)
 ;;O29.211 
 ;;9002226.02101,"1959,O29.211 ",.02)
 ;;O29.211 
 ;;9002226.02101,"1959,O29.211 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.212 ",.01)
 ;;O29.212 
 ;;9002226.02101,"1959,O29.212 ",.02)
 ;;O29.212 
 ;;9002226.02101,"1959,O29.212 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.213 ",.01)
 ;;O29.213 
 ;;9002226.02101,"1959,O29.213 ",.02)
 ;;O29.213 
 ;;9002226.02101,"1959,O29.213 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.219 ",.01)
 ;;O29.219 
 ;;9002226.02101,"1959,O29.219 ",.02)
 ;;O29.219 
 ;;9002226.02101,"1959,O29.219 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.291 ",.01)
 ;;O29.291 
 ;;9002226.02101,"1959,O29.291 ",.02)
 ;;O29.291 
 ;;9002226.02101,"1959,O29.291 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.292 ",.01)
 ;;O29.292 
 ;;9002226.02101,"1959,O29.292 ",.02)
 ;;O29.292 
 ;;9002226.02101,"1959,O29.292 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.293 ",.01)
 ;;O29.293 
 ;;9002226.02101,"1959,O29.293 ",.02)
 ;;O29.293 
 ;;9002226.02101,"1959,O29.293 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.299 ",.01)
 ;;O29.299 
 ;;9002226.02101,"1959,O29.299 ",.02)
 ;;O29.299 
 ;;9002226.02101,"1959,O29.299 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.3X1 ",.01)
 ;;O29.3X1 
 ;;9002226.02101,"1959,O29.3X1 ",.02)
 ;;O29.3X1 
 ;;9002226.02101,"1959,O29.3X1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.3X2 ",.01)
 ;;O29.3X2 
 ;;9002226.02101,"1959,O29.3X2 ",.02)
 ;;O29.3X2 
 ;;9002226.02101,"1959,O29.3X2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.3X3 ",.01)
 ;;O29.3X3 
 ;;9002226.02101,"1959,O29.3X3 ",.02)
 ;;O29.3X3 
 ;;9002226.02101,"1959,O29.3X3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.3X9 ",.01)
 ;;O29.3X9 
 ;;9002226.02101,"1959,O29.3X9 ",.02)
 ;;O29.3X9 
 ;;9002226.02101,"1959,O29.3X9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.40 ",.01)
 ;;O29.40 
 ;;9002226.02101,"1959,O29.40 ",.02)
 ;;O29.40 
 ;;9002226.02101,"1959,O29.40 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.41 ",.01)
 ;;O29.41 
 ;;9002226.02101,"1959,O29.41 ",.02)
 ;;O29.41 
 ;;9002226.02101,"1959,O29.41 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.42 ",.01)
 ;;O29.42 
 ;;9002226.02101,"1959,O29.42 ",.02)
 ;;O29.42 
 ;;9002226.02101,"1959,O29.42 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.43 ",.01)
 ;;O29.43 
 ;;9002226.02101,"1959,O29.43 ",.02)
 ;;O29.43 
 ;;9002226.02101,"1959,O29.43 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.5X1 ",.01)
 ;;O29.5X1 
 ;;9002226.02101,"1959,O29.5X1 ",.02)
 ;;O29.5X1 
 ;;9002226.02101,"1959,O29.5X1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.5X2 ",.01)
 ;;O29.5X2 
 ;;9002226.02101,"1959,O29.5X2 ",.02)
 ;;O29.5X2 
 ;;9002226.02101,"1959,O29.5X2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.5X3 ",.01)
 ;;O29.5X3 
 ;;9002226.02101,"1959,O29.5X3 ",.02)
 ;;O29.5X3 
 ;;9002226.02101,"1959,O29.5X3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.5X9 ",.01)
 ;;O29.5X9 
 ;;9002226.02101,"1959,O29.5X9 ",.02)
 ;;O29.5X9 
 ;;9002226.02101,"1959,O29.5X9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.60 ",.01)
 ;;O29.60 
 ;;9002226.02101,"1959,O29.60 ",.02)
 ;;O29.60 
 ;;9002226.02101,"1959,O29.60 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.61 ",.01)
 ;;O29.61 
 ;;9002226.02101,"1959,O29.61 ",.02)
 ;;O29.61 
 ;;9002226.02101,"1959,O29.61 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.62 ",.01)
 ;;O29.62 
 ;;9002226.02101,"1959,O29.62 ",.02)
 ;;O29.62 
 ;;9002226.02101,"1959,O29.62 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.63 ",.01)
 ;;O29.63 
 ;;9002226.02101,"1959,O29.63 ",.02)
 ;;O29.63 
 ;;9002226.02101,"1959,O29.63 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.8X1 ",.01)
 ;;O29.8X1 
 ;;9002226.02101,"1959,O29.8X1 ",.02)
 ;;O29.8X1 
 ;;9002226.02101,"1959,O29.8X1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.8X2 ",.01)
 ;;O29.8X2 
 ;;9002226.02101,"1959,O29.8X2 ",.02)
 ;;O29.8X2 
 ;;9002226.02101,"1959,O29.8X2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.8X3 ",.01)
 ;;O29.8X3 
 ;;9002226.02101,"1959,O29.8X3 ",.02)
 ;;O29.8X3 
 ;;9002226.02101,"1959,O29.8X3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.8X9 ",.01)
 ;;O29.8X9 
 ;;9002226.02101,"1959,O29.8X9 ",.02)
 ;;O29.8X9 
 ;;9002226.02101,"1959,O29.8X9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.90 ",.01)
 ;;O29.90 
 ;;9002226.02101,"1959,O29.90 ",.02)
 ;;O29.90 
 ;;9002226.02101,"1959,O29.90 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.91 ",.01)
 ;;O29.91 
 ;;9002226.02101,"1959,O29.91 ",.02)
 ;;O29.91 
 ;;9002226.02101,"1959,O29.91 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.92 ",.01)
 ;;O29.92 
 ;;9002226.02101,"1959,O29.92 ",.02)
 ;;O29.92 
 ;;9002226.02101,"1959,O29.92 ",.03)
 ;;30
 ;;9002226.02101,"1959,O29.93 ",.01)
 ;;O29.93 
 ;;9002226.02101,"1959,O29.93 ",.02)
 ;;O29.93 
 ;;9002226.02101,"1959,O29.93 ",.03)
 ;;30
 ;;9002226.02101,"1959,O30.001 ",.01)
 ;;O30.001 
 ;;9002226.02101,"1959,O30.001 ",.02)
 ;;O30.001 
 ;;9002226.02101,"1959,O30.001 ",.03)
 ;;30
 ;;9002226.02101,"1959,O30.002 ",.01)
 ;;O30.002 
 ;;9002226.02101,"1959,O30.002 ",.02)
 ;;O30.002 
 ;;9002226.02101,"1959,O30.002 ",.03)
 ;;30
 ;;9002226.02101,"1959,O30.003 ",.01)
 ;;O30.003 
 ;;9002226.02101,"1959,O30.003 ",.02)
 ;;O30.003 
 ;;9002226.02101,"1959,O30.003 ",.03)
 ;;30
 ;;9002226.02101,"1959,O30.009 ",.01)
 ;;O30.009 
 ;;9002226.02101,"1959,O30.009 ",.02)
 ;;O30.009 
 ;;9002226.02101,"1959,O30.009 ",.03)
 ;;30
 ;;9002226.02101,"1959,O30.011 ",.01)
 ;;O30.011 
 ;;9002226.02101,"1959,O30.011 ",.02)
 ;;O30.011 
 ;;9002226.02101,"1959,O30.011 ",.03)
 ;;30
 ;;9002226.02101,"1959,O30.012 ",.01)
 ;;O30.012 
 ;;9002226.02101,"1959,O30.012 ",.02)
 ;;O30.012 
 ;;9002226.02101,"1959,O30.012 ",.03)
 ;;30
 ;;9002226.02101,"1959,O30.013 ",.01)
 ;;O30.013 
 ;;9002226.02101,"1959,O30.013 ",.02)
 ;;O30.013 
 ;;9002226.02101,"1959,O30.013 ",.03)
 ;;30
 ;;9002226.02101,"1959,O30.019 ",.01)
 ;;O30.019 
 ;;9002226.02101,"1959,O30.019 ",.02)
 ;;O30.019 
 ;;9002226.02101,"1959,O30.019 ",.03)
 ;;30
 ;;9002226.02101,"1959,O30.031 ",.01)
 ;;O30.031 
 ;;9002226.02101,"1959,O30.031 ",.02)
 ;;O30.031 
 ;;9002226.02101,"1959,O30.031 ",.03)
 ;;30
 ;;9002226.02101,"1959,O30.032 ",.01)
 ;;O30.032 