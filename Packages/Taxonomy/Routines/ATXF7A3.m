ATXF7A3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 27, 2017;
 ;;5.1;TAXONOMY;**20**;FEB 04, 1997;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"2154,K76.5 ",.02)
 ;;K76.5 
 ;;9002226.02101,"2154,K76.5 ",.03)
 ;;30
 ;;9002226.02101,"2154,K76.6 ",.01)
 ;;K76.6 
 ;;9002226.02101,"2154,K76.6 ",.02)
 ;;K76.6 
 ;;9002226.02101,"2154,K76.6 ",.03)
 ;;30
 ;;9002226.02101,"2154,K76.7 ",.01)
 ;;K76.7 
 ;;9002226.02101,"2154,K76.7 ",.02)
 ;;K76.7 
 ;;9002226.02101,"2154,K76.7 ",.03)
 ;;30
 ;;9002226.02101,"2154,K76.81 ",.01)
 ;;K76.81 
 ;;9002226.02101,"2154,K76.81 ",.02)
 ;;K76.81 
 ;;9002226.02101,"2154,K76.81 ",.03)
 ;;30
 ;;9002226.02101,"2154,K76.9 ",.01)
 ;;K76.9 
 ;;9002226.02101,"2154,K76.9 ",.02)
 ;;K76.9 
 ;;9002226.02101,"2154,K76.9 ",.03)
 ;;30
 ;;9002226.02101,"2154,K83.0 ",.01)
 ;;K83.0 
 ;;9002226.02101,"2154,K83.0 ",.02)
 ;;K83.0 
 ;;9002226.02101,"2154,K83.0 ",.03)
 ;;30
 ;;9002226.02101,"2154,R18.0 ",.01)
 ;;R18.0 
 ;;9002226.02101,"2154,R18.0 ",.02)
 ;;R18.0 
 ;;9002226.02101,"2154,R18.0 ",.03)
 ;;30
 ;;9002226.02101,"2154,R18.8 ",.01)
 ;;R18.8 
 ;;9002226.02101,"2154,R18.8 ",.02)
 ;;R18.8 
 ;;9002226.02101,"2154,R18.8 ",.03)
 ;;30
 ;;9002226.02101,"2154,T86.40 ",.01)
 ;;T86.40 
 ;;9002226.02101,"2154,T86.40 ",.02)
 ;;T86.40 
 ;;9002226.02101,"2154,T86.40 ",.03)
 ;;30
 ;;9002226.02101,"2154,T86.41 ",.01)
 ;;T86.41 
 ;;9002226.02101,"2154,T86.41 ",.02)
 ;;T86.41 
 ;;9002226.02101,"2154,T86.41 ",.03)
 ;;30
 ;;9002226.02101,"2154,T86.42 ",.01)
 ;;T86.42 
 ;;9002226.02101,"2154,T86.42 ",.02)
 ;;T86.42 
 ;;9002226.02101,"2154,T86.42 ",.03)
 ;;30
 ;;9002226.02101,"2154,T86.43 ",.01)
 ;;T86.43 
 ;;9002226.02101,"2154,T86.43 ",.02)
 ;;T86.43 
 ;;9002226.02101,"2154,T86.43 ",.03)
 ;;30
 ;;9002226.02101,"2154,T86.49 ",.01)
 ;;T86.49 
 ;;9002226.02101,"2154,T86.49 ",.02)
 ;;T86.49 
 ;;9002226.02101,"2154,T86.49 ",.03)
 ;;30
 ;;9002226.02101,"2154,V02.61 ",.01)
 ;;V02.61 
 ;;9002226.02101,"2154,V02.61 ",.02)
 ;;V02.61 
 ;;9002226.02101,"2154,V02.61 ",.03)
 ;;1
 ;;9002226.02101,"2154,V02.62 ",.01)
 ;;V02.62 
 ;;9002226.02101,"2154,V02.62 ",.02)
 ;;V02.62 
 ;;9002226.02101,"2154,V02.62 ",.03)
 ;;1
 ;;9002226.02101,"2154,Z22.52 ",.01)
 ;;Z22.52 
 ;;9002226.02101,"2154,Z22.52 ",.02)
 ;;Z22.52 
 ;;9002226.02101,"2154,Z22.52 ",.03)
 ;;30