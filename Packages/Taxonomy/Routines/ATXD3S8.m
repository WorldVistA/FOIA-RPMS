ATXD3S8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1011,O09.212 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.213 ",.01)
 ;;O09.213 
 ;;9002226.02101,"1011,O09.213 ",.02)
 ;;O09.213 
 ;;9002226.02101,"1011,O09.213 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.219 ",.01)
 ;;O09.219 
 ;;9002226.02101,"1011,O09.219 ",.02)
 ;;O09.219 
 ;;9002226.02101,"1011,O09.219 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.291 ",.01)
 ;;O09.291 
 ;;9002226.02101,"1011,O09.291 ",.02)
 ;;O09.291 
 ;;9002226.02101,"1011,O09.291 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.292 ",.01)
 ;;O09.292 
 ;;9002226.02101,"1011,O09.292 ",.02)
 ;;O09.292 
 ;;9002226.02101,"1011,O09.292 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.293 ",.01)
 ;;O09.293 
 ;;9002226.02101,"1011,O09.293 ",.02)
 ;;O09.293 
 ;;9002226.02101,"1011,O09.293 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.299 ",.01)
 ;;O09.299 
 ;;9002226.02101,"1011,O09.299 ",.02)
 ;;O09.299 
 ;;9002226.02101,"1011,O09.299 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.30 ",.01)
 ;;O09.30 
 ;;9002226.02101,"1011,O09.30 ",.02)
 ;;O09.30 
 ;;9002226.02101,"1011,O09.30 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.31 ",.01)
 ;;O09.31 
 ;;9002226.02101,"1011,O09.31 ",.02)
 ;;O09.31 
 ;;9002226.02101,"1011,O09.31 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.32 ",.01)
 ;;O09.32 
 ;;9002226.02101,"1011,O09.32 ",.02)
 ;;O09.32 
 ;;9002226.02101,"1011,O09.32 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.33 ",.01)
 ;;O09.33 
 ;;9002226.02101,"1011,O09.33 ",.02)
 ;;O09.33 
 ;;9002226.02101,"1011,O09.33 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.40 ",.01)
 ;;O09.40 
 ;;9002226.02101,"1011,O09.40 ",.02)
 ;;O09.40 
 ;;9002226.02101,"1011,O09.40 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.41 ",.01)
 ;;O09.41 
 ;;9002226.02101,"1011,O09.41 ",.02)
 ;;O09.41 
 ;;9002226.02101,"1011,O09.41 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.42 ",.01)
 ;;O09.42 
 ;;9002226.02101,"1011,O09.42 ",.02)
 ;;O09.42 
 ;;9002226.02101,"1011,O09.42 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.43 ",.01)
 ;;O09.43 
 ;;9002226.02101,"1011,O09.43 ",.02)
 ;;O09.43 
 ;;9002226.02101,"1011,O09.43 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.511 ",.01)
 ;;O09.511 
 ;;9002226.02101,"1011,O09.511 ",.02)
 ;;O09.511 
 ;;9002226.02101,"1011,O09.511 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.512 ",.01)
 ;;O09.512 
 ;;9002226.02101,"1011,O09.512 ",.02)
 ;;O09.512 
 ;;9002226.02101,"1011,O09.512 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.513 ",.01)
 ;;O09.513 
 ;;9002226.02101,"1011,O09.513 ",.02)
 ;;O09.513 
 ;;9002226.02101,"1011,O09.513 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.519 ",.01)
 ;;O09.519 
 ;;9002226.02101,"1011,O09.519 ",.02)
 ;;O09.519 
 ;;9002226.02101,"1011,O09.519 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.521 ",.01)
 ;;O09.521 
 ;;9002226.02101,"1011,O09.521 ",.02)
 ;;O09.521 
 ;;9002226.02101,"1011,O09.521 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.522 ",.01)
 ;;O09.522 
 ;;9002226.02101,"1011,O09.522 ",.02)
 ;;O09.522 
 ;;9002226.02101,"1011,O09.522 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.523 ",.01)
 ;;O09.523 
 ;;9002226.02101,"1011,O09.523 ",.02)
 ;;O09.523 
 ;;9002226.02101,"1011,O09.523 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.529 ",.01)
 ;;O09.529 
 ;;9002226.02101,"1011,O09.529 ",.02)
 ;;O09.529 
 ;;9002226.02101,"1011,O09.529 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.611 ",.01)
 ;;O09.611 
 ;;9002226.02101,"1011,O09.611 ",.02)
 ;;O09.611 
 ;;9002226.02101,"1011,O09.611 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.612 ",.01)
 ;;O09.612 
 ;;9002226.02101,"1011,O09.612 ",.02)
 ;;O09.612 
 ;;9002226.02101,"1011,O09.612 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.613 ",.01)
 ;;O09.613 
 ;;9002226.02101,"1011,O09.613 ",.02)
 ;;O09.613 
 ;;9002226.02101,"1011,O09.613 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.619 ",.01)
 ;;O09.619 
 ;;9002226.02101,"1011,O09.619 ",.02)
 ;;O09.619 
 ;;9002226.02101,"1011,O09.619 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.621 ",.01)
 ;;O09.621 
 ;;9002226.02101,"1011,O09.621 ",.02)
 ;;O09.621 
 ;;9002226.02101,"1011,O09.621 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.622 ",.01)
 ;;O09.622 
 ;;9002226.02101,"1011,O09.622 ",.02)
 ;;O09.622 
 ;;9002226.02101,"1011,O09.622 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.623 ",.01)
 ;;O09.623 
 ;;9002226.02101,"1011,O09.623 ",.02)
 ;;O09.623 
 ;;9002226.02101,"1011,O09.623 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.629 ",.01)
 ;;O09.629 
 ;;9002226.02101,"1011,O09.629 ",.02)
 ;;O09.629 
 ;;9002226.02101,"1011,O09.629 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.70 ",.01)
 ;;O09.70 
 ;;9002226.02101,"1011,O09.70 ",.02)
 ;;O09.70 
 ;;9002226.02101,"1011,O09.70 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.71 ",.01)
 ;;O09.71 
 ;;9002226.02101,"1011,O09.71 ",.02)
 ;;O09.71 
 ;;9002226.02101,"1011,O09.71 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.72 ",.01)
 ;;O09.72 
 ;;9002226.02101,"1011,O09.72 ",.02)
 ;;O09.72 
 ;;9002226.02101,"1011,O09.72 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.73 ",.01)
 ;;O09.73 
 ;;9002226.02101,"1011,O09.73 ",.02)
 ;;O09.73 
 ;;9002226.02101,"1011,O09.73 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.811 ",.01)
 ;;O09.811 
 ;;9002226.02101,"1011,O09.811 ",.02)
 ;;O09.811 
 ;;9002226.02101,"1011,O09.811 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.812 ",.01)
 ;;O09.812 
 ;;9002226.02101,"1011,O09.812 ",.02)
 ;;O09.812 
 ;;9002226.02101,"1011,O09.812 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.813 ",.01)
 ;;O09.813 
 ;;9002226.02101,"1011,O09.813 ",.02)
 ;;O09.813 
 ;;9002226.02101,"1011,O09.813 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.819 ",.01)
 ;;O09.819 
 ;;9002226.02101,"1011,O09.819 ",.02)
 ;;O09.819 
 ;;9002226.02101,"1011,O09.819 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.821 ",.01)
 ;;O09.821 
 ;;9002226.02101,"1011,O09.821 ",.02)
 ;;O09.821 
 ;;9002226.02101,"1011,O09.821 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.822 ",.01)
 ;;O09.822 
 ;;9002226.02101,"1011,O09.822 ",.02)
 ;;O09.822 
 ;;9002226.02101,"1011,O09.822 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.823 ",.01)
 ;;O09.823 
 ;;9002226.02101,"1011,O09.823 ",.02)
 ;;O09.823 
 ;;9002226.02101,"1011,O09.823 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.829 ",.01)
 ;;O09.829 
 ;;9002226.02101,"1011,O09.829 ",.02)
 ;;O09.829 
 ;;9002226.02101,"1011,O09.829 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.891 ",.01)
 ;;O09.891 
 ;;9002226.02101,"1011,O09.891 ",.02)
 ;;O09.891 
 ;;9002226.02101,"1011,O09.891 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.892 ",.01)
 ;;O09.892 
 ;;9002226.02101,"1011,O09.892 ",.02)
 ;;O09.892 
 ;;9002226.02101,"1011,O09.892 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.893 ",.01)
 ;;O09.893 
 ;;9002226.02101,"1011,O09.893 ",.02)
 ;;O09.893 
 ;;9002226.02101,"1011,O09.893 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.899 ",.01)
 ;;O09.899 
 ;;9002226.02101,"1011,O09.899 ",.02)
 ;;O09.899 
 ;;9002226.02101,"1011,O09.899 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.90 ",.01)
 ;;O09.90 
 ;;9002226.02101,"1011,O09.90 ",.02)
 ;;O09.90 
 ;;9002226.02101,"1011,O09.90 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.91 ",.01)
 ;;O09.91 
 ;;9002226.02101,"1011,O09.91 ",.02)
 ;;O09.91 
 ;;9002226.02101,"1011,O09.91 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.92 ",.01)
 ;;O09.92 
 ;;9002226.02101,"1011,O09.92 ",.02)
 ;;O09.92 
 ;;9002226.02101,"1011,O09.92 ",.03)
 ;;30
 ;;9002226.02101,"1011,O09.93 ",.01)
 ;;O09.93 
 ;;9002226.02101,"1011,O09.93 ",.02)
 ;;O09.93 
 ;;9002226.02101,"1011,O09.93 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.011 ",.01)
 ;;O10.011 
 ;;9002226.02101,"1011,O10.011 ",.02)
 ;;O10.011 
 ;;9002226.02101,"1011,O10.011 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.012 ",.01)
 ;;O10.012 
 ;;9002226.02101,"1011,O10.012 ",.02)
 ;;O10.012 
 ;;9002226.02101,"1011,O10.012 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.013 ",.01)
 ;;O10.013 
 ;;9002226.02101,"1011,O10.013 ",.02)
 ;;O10.013 
 ;;9002226.02101,"1011,O10.013 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.019 ",.01)
 ;;O10.019 
 ;;9002226.02101,"1011,O10.019 ",.02)
 ;;O10.019 
 ;;9002226.02101,"1011,O10.019 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.02 ",.01)
 ;;O10.02 
 ;;9002226.02101,"1011,O10.02 ",.02)
 ;;O10.02 
 ;;9002226.02101,"1011,O10.02 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.111 ",.01)
 ;;O10.111 
 ;;9002226.02101,"1011,O10.111 ",.02)
 ;;O10.111 
 ;;9002226.02101,"1011,O10.111 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.112 ",.01)
 ;;O10.112 
 ;;9002226.02101,"1011,O10.112 ",.02)
 ;;O10.112 
 ;;9002226.02101,"1011,O10.112 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.113 ",.01)
 ;;O10.113 
 ;;9002226.02101,"1011,O10.113 ",.02)
 ;;O10.113 
 ;;9002226.02101,"1011,O10.113 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.119 ",.01)
 ;;O10.119 
 ;;9002226.02101,"1011,O10.119 ",.02)
 ;;O10.119 
 ;;9002226.02101,"1011,O10.119 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.12 ",.01)
 ;;O10.12 
 ;;9002226.02101,"1011,O10.12 ",.02)
 ;;O10.12 
 ;;9002226.02101,"1011,O10.12 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.211 ",.01)
 ;;O10.211 
 ;;9002226.02101,"1011,O10.211 ",.02)
 ;;O10.211 
 ;;9002226.02101,"1011,O10.211 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.212 ",.01)
 ;;O10.212 
 ;;9002226.02101,"1011,O10.212 ",.02)
 ;;O10.212 
 ;;9002226.02101,"1011,O10.212 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.213 ",.01)
 ;;O10.213 
 ;;9002226.02101,"1011,O10.213 ",.02)
 ;;O10.213 
 ;;9002226.02101,"1011,O10.213 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.219 ",.01)
 ;;O10.219 
 ;;9002226.02101,"1011,O10.219 ",.02)
 ;;O10.219 
 ;;9002226.02101,"1011,O10.219 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.22 ",.01)
 ;;O10.22 
 ;;9002226.02101,"1011,O10.22 ",.02)
 ;;O10.22 
 ;;9002226.02101,"1011,O10.22 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.311 ",.01)
 ;;O10.311 
 ;;9002226.02101,"1011,O10.311 ",.02)
 ;;O10.311 
 ;;9002226.02101,"1011,O10.311 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.312 ",.01)
 ;;O10.312 
 ;;9002226.02101,"1011,O10.312 ",.02)
 ;;O10.312 
 ;;9002226.02101,"1011,O10.312 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.313 ",.01)
 ;;O10.313 
 ;;9002226.02101,"1011,O10.313 ",.02)
 ;;O10.313 
 ;;9002226.02101,"1011,O10.313 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.319 ",.01)
 ;;O10.319 
 ;;9002226.02101,"1011,O10.319 ",.02)
 ;;O10.319 
 ;;9002226.02101,"1011,O10.319 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.32 ",.01)
 ;;O10.32 
 ;;9002226.02101,"1011,O10.32 ",.02)
 ;;O10.32 
 ;;9002226.02101,"1011,O10.32 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.411 ",.01)
 ;;O10.411 
 ;;9002226.02101,"1011,O10.411 ",.02)
 ;;O10.411 
 ;;9002226.02101,"1011,O10.411 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.412 ",.01)
 ;;O10.412 
 ;;9002226.02101,"1011,O10.412 ",.02)
 ;;O10.412 
 ;;9002226.02101,"1011,O10.412 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.413 ",.01)
 ;;O10.413 
 ;;9002226.02101,"1011,O10.413 ",.02)
 ;;O10.413 
 ;;9002226.02101,"1011,O10.413 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.419 ",.01)
 ;;O10.419 
 ;;9002226.02101,"1011,O10.419 ",.02)
 ;;O10.419 
 ;;9002226.02101,"1011,O10.419 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.42 ",.01)
 ;;O10.42 
 ;;9002226.02101,"1011,O10.42 ",.02)
 ;;O10.42 
 ;;9002226.02101,"1011,O10.42 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.911 ",.01)
 ;;O10.911 
 ;;9002226.02101,"1011,O10.911 ",.02)
 ;;O10.911 
 ;;9002226.02101,"1011,O10.911 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.912 ",.01)
 ;;O10.912 
 ;;9002226.02101,"1011,O10.912 ",.02)
 ;;O10.912 
 ;;9002226.02101,"1011,O10.912 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.913 ",.01)
 ;;O10.913 
 ;;9002226.02101,"1011,O10.913 ",.02)
 ;;O10.913 
 ;;9002226.02101,"1011,O10.913 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.919 ",.01)
 ;;O10.919 
 ;;9002226.02101,"1011,O10.919 ",.02)
 ;;O10.919 
 ;;9002226.02101,"1011,O10.919 ",.03)
 ;;30
 ;;9002226.02101,"1011,O10.92 ",.01)
 ;;O10.92 
 ;;9002226.02101,"1011,O10.92 ",.02)
 ;;O10.92 
 ;;9002226.02101,"1011,O10.92 ",.03)
 ;;30
 ;;9002226.02101,"1011,O11.1 ",.01)
 ;;O11.1 
 ;;9002226.02101,"1011,O11.1 ",.02)
 ;;O11.1 
 ;;9002226.02101,"1011,O11.1 ",.03)
 ;;30
 ;;9002226.02101,"1011,O11.2 ",.01)
 ;;O11.2 
 ;;9002226.02101,"1011,O11.2 ",.02)
 ;;O11.2 
 ;;9002226.02101,"1011,O11.2 ",.03)
 ;;30
 ;;9002226.02101,"1011,O11.3 ",.01)
 ;;O11.3 
 ;;9002226.02101,"1011,O11.3 ",.02)
 ;;O11.3 
 ;;9002226.02101,"1011,O11.3 ",.03)
 ;;30
 ;;9002226.02101,"1011,O11.9 ",.01)
 ;;O11.9 
 ;;9002226.02101,"1011,O11.9 ",.02)
 ;;O11.9 
 ;;9002226.02101,"1011,O11.9 ",.03)
 ;;30
 ;;9002226.02101,"1011,O12.00 ",.01)
 ;;O12.00 
 ;;9002226.02101,"1011,O12.00 ",.02)
 ;;O12.00 
 ;;9002226.02101,"1011,O12.00 ",.03)
 ;;30
 ;;9002226.02101,"1011,O12.01 ",.01)
 ;;O12.01 
 ;;9002226.02101,"1011,O12.01 ",.02)
 ;;O12.01 
 ;;9002226.02101,"1011,O12.01 ",.03)
 ;;30
 ;;9002226.02101,"1011,O12.02 ",.01)
 ;;O12.02 
 ;;9002226.02101,"1011,O12.02 ",.02)
 ;;O12.02 
 ;;9002226.02101,"1011,O12.02 ",.03)
 ;;30
 ;;9002226.02101,"1011,O12.03 ",.01)
 ;;O12.03 
 ;;9002226.02101,"1011,O12.03 ",.02)
 ;;O12.03 
 ;;9002226.02101,"1011,O12.03 ",.03)
 ;;30
 ;;9002226.02101,"1011,O12.10 ",.01)
 ;;O12.10 
 ;;9002226.02101,"1011,O12.10 ",.02)
 ;;O12.10 
 ;;9002226.02101,"1011,O12.10 ",.03)
 ;;30
 ;;9002226.02101,"1011,O12.11 ",.01)
 ;;O12.11 
 ;;9002226.02101,"1011,O12.11 ",.02)
 ;;O12.11 
 ;;9002226.02101,"1011,O12.11 ",.03)
 ;;30
 ;;9002226.02101,"1011,O12.12 ",.01)
 ;;O12.12 
 ;;9002226.02101,"1011,O12.12 ",.02)
 ;;O12.12 
 ;;9002226.02101,"1011,O12.12 ",.03)
 ;;30
 ;;9002226.02101,"1011,O12.13 ",.01)
 ;;O12.13 