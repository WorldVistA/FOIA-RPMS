ATXDBH12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 20, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1959,O10.211 ",.02)
 ;;O10.211 
 ;;9002226.02101,"1959,O10.211 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.212 ",.01)
 ;;O10.212 
 ;;9002226.02101,"1959,O10.212 ",.02)
 ;;O10.212 
 ;;9002226.02101,"1959,O10.212 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.213 ",.01)
 ;;O10.213 
 ;;9002226.02101,"1959,O10.213 ",.02)
 ;;O10.213 
 ;;9002226.02101,"1959,O10.213 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.219 ",.01)
 ;;O10.219 
 ;;9002226.02101,"1959,O10.219 ",.02)
 ;;O10.219 
 ;;9002226.02101,"1959,O10.219 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.22 ",.01)
 ;;O10.22 
 ;;9002226.02101,"1959,O10.22 ",.02)
 ;;O10.22 
 ;;9002226.02101,"1959,O10.22 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.23 ",.01)
 ;;O10.23 
 ;;9002226.02101,"1959,O10.23 ",.02)
 ;;O10.23 
 ;;9002226.02101,"1959,O10.23 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.311 ",.01)
 ;;O10.311 
 ;;9002226.02101,"1959,O10.311 ",.02)
 ;;O10.311 
 ;;9002226.02101,"1959,O10.311 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.312 ",.01)
 ;;O10.312 
 ;;9002226.02101,"1959,O10.312 ",.02)
 ;;O10.312 
 ;;9002226.02101,"1959,O10.312 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.313 ",.01)
 ;;O10.313 
 ;;9002226.02101,"1959,O10.313 ",.02)
 ;;O10.313 
 ;;9002226.02101,"1959,O10.313 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.319 ",.01)
 ;;O10.319 
 ;;9002226.02101,"1959,O10.319 ",.02)
 ;;O10.319 
 ;;9002226.02101,"1959,O10.319 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.32 ",.01)
 ;;O10.32 
 ;;9002226.02101,"1959,O10.32 ",.02)
 ;;O10.32 
 ;;9002226.02101,"1959,O10.32 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.33 ",.01)
 ;;O10.33 
 ;;9002226.02101,"1959,O10.33 ",.02)
 ;;O10.33 
 ;;9002226.02101,"1959,O10.33 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.411 ",.01)
 ;;O10.411 
 ;;9002226.02101,"1959,O10.411 ",.02)
 ;;O10.411 
 ;;9002226.02101,"1959,O10.411 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.412 ",.01)
 ;;O10.412 
 ;;9002226.02101,"1959,O10.412 ",.02)
 ;;O10.412 
 ;;9002226.02101,"1959,O10.412 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.413 ",.01)
 ;;O10.413 
 ;;9002226.02101,"1959,O10.413 ",.02)
 ;;O10.413 
 ;;9002226.02101,"1959,O10.413 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.419 ",.01)
 ;;O10.419 
 ;;9002226.02101,"1959,O10.419 ",.02)
 ;;O10.419 
 ;;9002226.02101,"1959,O10.419 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.42 ",.01)
 ;;O10.42 
 ;;9002226.02101,"1959,O10.42 ",.02)
 ;;O10.42 
 ;;9002226.02101,"1959,O10.42 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.43 ",.01)
 ;;O10.43 
 ;;9002226.02101,"1959,O10.43 ",.02)
 ;;O10.43 
 ;;9002226.02101,"1959,O10.43 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.911 ",.01)
 ;;O10.911 
 ;;9002226.02101,"1959,O10.911 ",.02)
 ;;O10.911 
 ;;9002226.02101,"1959,O10.911 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.912 ",.01)
 ;;O10.912 
 ;;9002226.02101,"1959,O10.912 ",.02)
 ;;O10.912 
 ;;9002226.02101,"1959,O10.912 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.913 ",.01)
 ;;O10.913 
 ;;9002226.02101,"1959,O10.913 ",.02)
 ;;O10.913 
 ;;9002226.02101,"1959,O10.913 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.92 ",.01)
 ;;O10.92 
 ;;9002226.02101,"1959,O10.92 ",.02)
 ;;O10.92 
 ;;9002226.02101,"1959,O10.92 ",.03)
 ;;30
 ;;9002226.02101,"1959,O10.93 ",.01)
 ;;O10.93 
 ;;9002226.02101,"1959,O10.93 ",.02)
 ;;O10.93 
 ;;9002226.02101,"1959,O10.93 ",.03)
 ;;30
 ;;9002226.02101,"1959,O11.1 ",.01)
 ;;O11.1 
 ;;9002226.02101,"1959,O11.1 ",.02)
 ;;O11.1 
 ;;9002226.02101,"1959,O11.1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O11.2 ",.01)
 ;;O11.2 
 ;;9002226.02101,"1959,O11.2 ",.02)
 ;;O11.2 
 ;;9002226.02101,"1959,O11.2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O11.3 ",.01)
 ;;O11.3 
 ;;9002226.02101,"1959,O11.3 ",.02)
 ;;O11.3 
 ;;9002226.02101,"1959,O11.3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O11.9 ",.01)
 ;;O11.9 
 ;;9002226.02101,"1959,O11.9 ",.02)
 ;;O11.9 
 ;;9002226.02101,"1959,O11.9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.00 ",.01)
 ;;O12.00 
 ;;9002226.02101,"1959,O12.00 ",.02)
 ;;O12.00 
 ;;9002226.02101,"1959,O12.00 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.01 ",.01)
 ;;O12.01 
 ;;9002226.02101,"1959,O12.01 ",.02)
 ;;O12.01 
 ;;9002226.02101,"1959,O12.01 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.02 ",.01)
 ;;O12.02 
 ;;9002226.02101,"1959,O12.02 ",.02)
 ;;O12.02 
 ;;9002226.02101,"1959,O12.02 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.03 ",.01)
 ;;O12.03 
 ;;9002226.02101,"1959,O12.03 ",.02)
 ;;O12.03 
 ;;9002226.02101,"1959,O12.03 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.10 ",.01)
 ;;O12.10 
 ;;9002226.02101,"1959,O12.10 ",.02)
 ;;O12.10 
 ;;9002226.02101,"1959,O12.10 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.11 ",.01)
 ;;O12.11 
 ;;9002226.02101,"1959,O12.11 ",.02)
 ;;O12.11 
 ;;9002226.02101,"1959,O12.11 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.12 ",.01)
 ;;O12.12 
 ;;9002226.02101,"1959,O12.12 ",.02)
 ;;O12.12 
 ;;9002226.02101,"1959,O12.12 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.13 ",.01)
 ;;O12.13 
 ;;9002226.02101,"1959,O12.13 ",.02)
 ;;O12.13 
 ;;9002226.02101,"1959,O12.13 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.20 ",.01)
 ;;O12.20 
 ;;9002226.02101,"1959,O12.20 ",.02)
 ;;O12.20 
 ;;9002226.02101,"1959,O12.20 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.21 ",.01)
 ;;O12.21 
 ;;9002226.02101,"1959,O12.21 ",.02)
 ;;O12.21 
 ;;9002226.02101,"1959,O12.21 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.22 ",.01)
 ;;O12.22 
 ;;9002226.02101,"1959,O12.22 ",.02)
 ;;O12.22 
 ;;9002226.02101,"1959,O12.22 ",.03)
 ;;30
 ;;9002226.02101,"1959,O12.23 ",.01)
 ;;O12.23 
 ;;9002226.02101,"1959,O12.23 ",.02)
 ;;O12.23 
 ;;9002226.02101,"1959,O12.23 ",.03)
 ;;30
 ;;9002226.02101,"1959,O13.1 ",.01)
 ;;O13.1 
 ;;9002226.02101,"1959,O13.1 ",.02)
 ;;O13.1 
 ;;9002226.02101,"1959,O13.1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O13.2 ",.01)
 ;;O13.2 
 ;;9002226.02101,"1959,O13.2 ",.02)
 ;;O13.2 
 ;;9002226.02101,"1959,O13.2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O13.3 ",.01)
 ;;O13.3 
 ;;9002226.02101,"1959,O13.3 ",.02)
 ;;O13.3 
 ;;9002226.02101,"1959,O13.3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O13.9 ",.01)
 ;;O13.9 
 ;;9002226.02101,"1959,O13.9 ",.02)
 ;;O13.9 
 ;;9002226.02101,"1959,O13.9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.00 ",.01)
 ;;O14.00 
 ;;9002226.02101,"1959,O14.00 ",.02)
 ;;O14.00 
 ;;9002226.02101,"1959,O14.00 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.02 ",.01)
 ;;O14.02 
 ;;9002226.02101,"1959,O14.02 ",.02)
 ;;O14.02 
 ;;9002226.02101,"1959,O14.02 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.03 ",.01)
 ;;O14.03 
 ;;9002226.02101,"1959,O14.03 ",.02)
 ;;O14.03 
 ;;9002226.02101,"1959,O14.03 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.10 ",.01)
 ;;O14.10 
 ;;9002226.02101,"1959,O14.10 ",.02)
 ;;O14.10 
 ;;9002226.02101,"1959,O14.10 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.12 ",.01)
 ;;O14.12 
 ;;9002226.02101,"1959,O14.12 ",.02)
 ;;O14.12 
 ;;9002226.02101,"1959,O14.12 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.13 ",.01)
 ;;O14.13 
 ;;9002226.02101,"1959,O14.13 ",.02)
 ;;O14.13 
 ;;9002226.02101,"1959,O14.13 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.20 ",.01)
 ;;O14.20 
 ;;9002226.02101,"1959,O14.20 ",.02)
 ;;O14.20 
 ;;9002226.02101,"1959,O14.20 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.22 ",.01)
 ;;O14.22 
 ;;9002226.02101,"1959,O14.22 ",.02)
 ;;O14.22 
 ;;9002226.02101,"1959,O14.22 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.23 ",.01)
 ;;O14.23 
 ;;9002226.02101,"1959,O14.23 ",.02)
 ;;O14.23 
 ;;9002226.02101,"1959,O14.23 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.90 ",.01)
 ;;O14.90 
 ;;9002226.02101,"1959,O14.90 ",.02)
 ;;O14.90 
 ;;9002226.02101,"1959,O14.90 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.92 ",.01)
 ;;O14.92 
 ;;9002226.02101,"1959,O14.92 ",.02)
 ;;O14.92 
 ;;9002226.02101,"1959,O14.92 ",.03)
 ;;30
 ;;9002226.02101,"1959,O14.93 ",.01)
 ;;O14.93 
 ;;9002226.02101,"1959,O14.93 ",.02)
 ;;O14.93 
 ;;9002226.02101,"1959,O14.93 ",.03)
 ;;30
 ;;9002226.02101,"1959,O15.00 ",.01)
 ;;O15.00 
 ;;9002226.02101,"1959,O15.00 ",.02)
 ;;O15.00 
 ;;9002226.02101,"1959,O15.00 ",.03)
 ;;30
 ;;9002226.02101,"1959,O15.02 ",.01)
 ;;O15.02 
 ;;9002226.02101,"1959,O15.02 ",.02)
 ;;O15.02 
 ;;9002226.02101,"1959,O15.02 ",.03)
 ;;30
 ;;9002226.02101,"1959,O15.03 ",.01)
 ;;O15.03 
 ;;9002226.02101,"1959,O15.03 ",.02)
 ;;O15.03 
 ;;9002226.02101,"1959,O15.03 ",.03)
 ;;30
 ;;9002226.02101,"1959,O15.1 ",.01)
 ;;O15.1 
 ;;9002226.02101,"1959,O15.1 ",.02)
 ;;O15.1 
 ;;9002226.02101,"1959,O15.1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O15.2 ",.01)
 ;;O15.2 
 ;;9002226.02101,"1959,O15.2 ",.02)
 ;;O15.2 
 ;;9002226.02101,"1959,O15.2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O15.9 ",.01)
 ;;O15.9 
 ;;9002226.02101,"1959,O15.9 ",.02)
 ;;O15.9 
 ;;9002226.02101,"1959,O15.9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O16.1 ",.01)
 ;;O16.1 
 ;;9002226.02101,"1959,O16.1 ",.02)
 ;;O16.1 
 ;;9002226.02101,"1959,O16.1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O16.2 ",.01)
 ;;O16.2 
 ;;9002226.02101,"1959,O16.2 ",.02)
 ;;O16.2 
 ;;9002226.02101,"1959,O16.2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O16.3 ",.01)
 ;;O16.3 
 ;;9002226.02101,"1959,O16.3 ",.02)
 ;;O16.3 
 ;;9002226.02101,"1959,O16.3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O16.9 ",.01)
 ;;O16.9 
 ;;9002226.02101,"1959,O16.9 ",.02)
 ;;O16.9 
 ;;9002226.02101,"1959,O16.9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O20.0 ",.01)
 ;;O20.0 
 ;;9002226.02101,"1959,O20.0 ",.02)
 ;;O20.0 
 ;;9002226.02101,"1959,O20.0 ",.03)
 ;;30
 ;;9002226.02101,"1959,O20.8 ",.01)
 ;;O20.8 
 ;;9002226.02101,"1959,O20.8 ",.02)
 ;;O20.8 
 ;;9002226.02101,"1959,O20.8 ",.03)
 ;;30
 ;;9002226.02101,"1959,O20.9 ",.01)
 ;;O20.9 
 ;;9002226.02101,"1959,O20.9 ",.02)
 ;;O20.9 
 ;;9002226.02101,"1959,O20.9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O21.0 ",.01)
 ;;O21.0 
 ;;9002226.02101,"1959,O21.0 ",.02)
 ;;O21.0 
 ;;9002226.02101,"1959,O21.0 ",.03)
 ;;30
 ;;9002226.02101,"1959,O21.1 ",.01)
 ;;O21.1 
 ;;9002226.02101,"1959,O21.1 ",.02)
 ;;O21.1 
 ;;9002226.02101,"1959,O21.1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O21.2 ",.01)
 ;;O21.2 
 ;;9002226.02101,"1959,O21.2 ",.02)
 ;;O21.2 
 ;;9002226.02101,"1959,O21.2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O21.8 ",.01)
 ;;O21.8 
 ;;9002226.02101,"1959,O21.8 ",.02)
 ;;O21.8 
 ;;9002226.02101,"1959,O21.8 ",.03)
 ;;30
 ;;9002226.02101,"1959,O21.9 ",.01)
 ;;O21.9 
 ;;9002226.02101,"1959,O21.9 ",.02)
 ;;O21.9 
 ;;9002226.02101,"1959,O21.9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O22.00 ",.01)
 ;;O22.00 
 ;;9002226.02101,"1959,O22.00 ",.02)
 ;;O22.00 
 ;;9002226.02101,"1959,O22.00 ",.03)
 ;;30
 ;;9002226.02101,"1959,O22.01 ",.01)
 ;;O22.01 
 ;;9002226.02101,"1959,O22.01 ",.02)
 ;;O22.01 
 ;;9002226.02101,"1959,O22.01 ",.03)
 ;;30
 ;;9002226.02101,"1959,O22.02 ",.01)
 ;;O22.02 
 ;;9002226.02101,"1959,O22.02 ",.02)
 ;;O22.02 
 ;;9002226.02101,"1959,O22.02 ",.03)
 ;;30
 ;;9002226.02101,"1959,O22.03 ",.01)
 ;;O22.03 
 ;;9002226.02101,"1959,O22.03 ",.02)
 ;;O22.03 
 ;;9002226.02101,"1959,O22.03 ",.03)
 ;;30
 ;;9002226.02101,"1959,O22.10 ",.01)
 ;;O22.10 
 ;;9002226.02101,"1959,O22.10 ",.02)
 ;;O22.10 
 ;;9002226.02101,"1959,O22.10 ",.03)
 ;;30
 ;;9002226.02101,"1959,O22.11 ",.01)
 ;;O22.11 
 ;;9002226.02101,"1959,O22.11 ",.02)
 ;;O22.11 
 ;;9002226.02101,"1959,O22.11 ",.03)
 ;;30
 ;;9002226.02101,"1959,O22.12 ",.01)
 ;;O22.12 
 ;;9002226.02101,"1959,O22.12 ",.02)
 ;;O22.12 
 ;;9002226.02101,"1959,O22.12 ",.03)
 ;;30
 ;;9002226.02101,"1959,O22.13 ",.01)
 ;;O22.13 
 ;;9002226.02101,"1959,O22.13 ",.02)
 ;;O22.13 
 ;;9002226.02101,"1959,O22.13 ",.03)
 ;;30
 ;;9002226.02101,"1959,O22.20 ",.01)
 ;;O22.20 