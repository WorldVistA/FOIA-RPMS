ATXFCJ5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 19, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"2236,O10.911 ",.03)
 ;;30
 ;;9002226.02101,"2236,O10.912 ",.01)
 ;;O10.912 
 ;;9002226.02101,"2236,O10.912 ",.02)
 ;;O10.912 
 ;;9002226.02101,"2236,O10.912 ",.03)
 ;;30
 ;;9002226.02101,"2236,O10.913 ",.01)
 ;;O10.913 
 ;;9002226.02101,"2236,O10.913 ",.02)
 ;;O10.913 
 ;;9002226.02101,"2236,O10.913 ",.03)
 ;;30
 ;;9002226.02101,"2236,O10.919 ",.01)
 ;;O10.919 
 ;;9002226.02101,"2236,O10.919 ",.02)
 ;;O10.919 
 ;;9002226.02101,"2236,O10.919 ",.03)
 ;;30
 ;;9002226.02101,"2236,O10.92 ",.01)
 ;;O10.92 
 ;;9002226.02101,"2236,O10.92 ",.02)
 ;;O10.92 
 ;;9002226.02101,"2236,O10.92 ",.03)
 ;;30
 ;;9002226.02101,"2236,O10.93 ",.01)
 ;;O10.93 
 ;;9002226.02101,"2236,O10.93 ",.02)
 ;;O10.93 
 ;;9002226.02101,"2236,O10.93 ",.03)
 ;;30
 ;;9002226.02101,"2236,O11.1 ",.01)
 ;;O11.1 
 ;;9002226.02101,"2236,O11.1 ",.02)
 ;;O11.1 
 ;;9002226.02101,"2236,O11.1 ",.03)
 ;;30
 ;;9002226.02101,"2236,O11.2 ",.01)
 ;;O11.2 
 ;;9002226.02101,"2236,O11.2 ",.02)
 ;;O11.2 
 ;;9002226.02101,"2236,O11.2 ",.03)
 ;;30
 ;;9002226.02101,"2236,O11.3 ",.01)
 ;;O11.3 
 ;;9002226.02101,"2236,O11.3 ",.02)
 ;;O11.3 
 ;;9002226.02101,"2236,O11.3 ",.03)
 ;;30
 ;;9002226.02101,"2236,O11.4 ",.01)
 ;;O11.4 
 ;;9002226.02101,"2236,O11.4 ",.02)
 ;;O11.4 
 ;;9002226.02101,"2236,O11.4 ",.03)
 ;;30
 ;;9002226.02101,"2236,O11.5 ",.01)
 ;;O11.5 
 ;;9002226.02101,"2236,O11.5 ",.02)
 ;;O11.5 
 ;;9002226.02101,"2236,O11.5 ",.03)
 ;;30
 ;;9002226.02101,"2236,O11.9 ",.01)
 ;;O11.9 
 ;;9002226.02101,"2236,O11.9 ",.02)
 ;;O11.9 
 ;;9002226.02101,"2236,O11.9 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.00 ",.01)
 ;;O12.00 
 ;;9002226.02101,"2236,O12.00 ",.02)
 ;;O12.00 
 ;;9002226.02101,"2236,O12.00 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.01 ",.01)
 ;;O12.01 
 ;;9002226.02101,"2236,O12.01 ",.02)
 ;;O12.01 
 ;;9002226.02101,"2236,O12.01 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.02 ",.01)
 ;;O12.02 
 ;;9002226.02101,"2236,O12.02 ",.02)
 ;;O12.02 
 ;;9002226.02101,"2236,O12.02 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.03 ",.01)
 ;;O12.03 
 ;;9002226.02101,"2236,O12.03 ",.02)
 ;;O12.03 
 ;;9002226.02101,"2236,O12.03 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.04 ",.01)
 ;;O12.04 
 ;;9002226.02101,"2236,O12.04 ",.02)
 ;;O12.04 
 ;;9002226.02101,"2236,O12.04 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.05 ",.01)
 ;;O12.05 
 ;;9002226.02101,"2236,O12.05 ",.02)
 ;;O12.05 
 ;;9002226.02101,"2236,O12.05 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.10 ",.01)
 ;;O12.10 
 ;;9002226.02101,"2236,O12.10 ",.02)
 ;;O12.10 
 ;;9002226.02101,"2236,O12.10 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.11 ",.01)
 ;;O12.11 
 ;;9002226.02101,"2236,O12.11 ",.02)
 ;;O12.11 
 ;;9002226.02101,"2236,O12.11 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.12 ",.01)
 ;;O12.12 
 ;;9002226.02101,"2236,O12.12 ",.02)
 ;;O12.12 
 ;;9002226.02101,"2236,O12.12 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.13 ",.01)
 ;;O12.13 
 ;;9002226.02101,"2236,O12.13 ",.02)
 ;;O12.13 
 ;;9002226.02101,"2236,O12.13 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.20 ",.01)
 ;;O12.20 
 ;;9002226.02101,"2236,O12.20 ",.02)
 ;;O12.20 
 ;;9002226.02101,"2236,O12.20 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.21 ",.01)
 ;;O12.21 
 ;;9002226.02101,"2236,O12.21 ",.02)
 ;;O12.21 
 ;;9002226.02101,"2236,O12.21 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.22 ",.01)
 ;;O12.22 
 ;;9002226.02101,"2236,O12.22 ",.02)
 ;;O12.22 
 ;;9002226.02101,"2236,O12.22 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.23 ",.01)
 ;;O12.23 
 ;;9002226.02101,"2236,O12.23 ",.02)
 ;;O12.23 
 ;;9002226.02101,"2236,O12.23 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.24 ",.01)
 ;;O12.24 
 ;;9002226.02101,"2236,O12.24 ",.02)
 ;;O12.24 
 ;;9002226.02101,"2236,O12.24 ",.03)
 ;;30
 ;;9002226.02101,"2236,O12.25 ",.01)
 ;;O12.25 
 ;;9002226.02101,"2236,O12.25 ",.02)
 ;;O12.25 
 ;;9002226.02101,"2236,O12.25 ",.03)
 ;;30
 ;;9002226.02101,"2236,O13.1 ",.01)
 ;;O13.1 
 ;;9002226.02101,"2236,O13.1 ",.02)
 ;;O13.1 
 ;;9002226.02101,"2236,O13.1 ",.03)
 ;;30
 ;;9002226.02101,"2236,O13.2 ",.01)
 ;;O13.2 
 ;;9002226.02101,"2236,O13.2 ",.02)
 ;;O13.2 
 ;;9002226.02101,"2236,O13.2 ",.03)
 ;;30
 ;;9002226.02101,"2236,O13.3 ",.01)
 ;;O13.3 
 ;;9002226.02101,"2236,O13.3 ",.02)
 ;;O13.3 
 ;;9002226.02101,"2236,O13.3 ",.03)
 ;;30
 ;;9002226.02101,"2236,O13.4 ",.01)
 ;;O13.4 
 ;;9002226.02101,"2236,O13.4 ",.02)
 ;;O13.4 
 ;;9002226.02101,"2236,O13.4 ",.03)
 ;;30
 ;;9002226.02101,"2236,O13.5 ",.01)
 ;;O13.5 
 ;;9002226.02101,"2236,O13.5 ",.02)
 ;;O13.5 
 ;;9002226.02101,"2236,O13.5 ",.03)
 ;;30
 ;;9002226.02101,"2236,O13.9 ",.01)
 ;;O13.9 
 ;;9002226.02101,"2236,O13.9 ",.02)
 ;;O13.9 
 ;;9002226.02101,"2236,O13.9 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.00 ",.01)
 ;;O14.00 
 ;;9002226.02101,"2236,O14.00 ",.02)
 ;;O14.00 
 ;;9002226.02101,"2236,O14.00 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.02 ",.01)
 ;;O14.02 
 ;;9002226.02101,"2236,O14.02 ",.02)
 ;;O14.02 
 ;;9002226.02101,"2236,O14.02 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.03 ",.01)
 ;;O14.03 
 ;;9002226.02101,"2236,O14.03 ",.02)
 ;;O14.03 
 ;;9002226.02101,"2236,O14.03 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.04 ",.01)
 ;;O14.04 
 ;;9002226.02101,"2236,O14.04 ",.02)
 ;;O14.04 
 ;;9002226.02101,"2236,O14.04 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.05 ",.01)
 ;;O14.05 
 ;;9002226.02101,"2236,O14.05 ",.02)
 ;;O14.05 
 ;;9002226.02101,"2236,O14.05 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.10 ",.01)
 ;;O14.10 
 ;;9002226.02101,"2236,O14.10 ",.02)
 ;;O14.10 
 ;;9002226.02101,"2236,O14.10 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.12 ",.01)
 ;;O14.12 
 ;;9002226.02101,"2236,O14.12 ",.02)
 ;;O14.12 
 ;;9002226.02101,"2236,O14.12 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.13 ",.01)
 ;;O14.13 
 ;;9002226.02101,"2236,O14.13 ",.02)
 ;;O14.13 
 ;;9002226.02101,"2236,O14.13 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.14 ",.01)
 ;;O14.14 
 ;;9002226.02101,"2236,O14.14 ",.02)
 ;;O14.14 
 ;;9002226.02101,"2236,O14.14 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.15 ",.01)
 ;;O14.15 
 ;;9002226.02101,"2236,O14.15 ",.02)
 ;;O14.15 
 ;;9002226.02101,"2236,O14.15 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.20 ",.01)
 ;;O14.20 
 ;;9002226.02101,"2236,O14.20 ",.02)
 ;;O14.20 
 ;;9002226.02101,"2236,O14.20 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.22 ",.01)
 ;;O14.22 
 ;;9002226.02101,"2236,O14.22 ",.02)
 ;;O14.22 
 ;;9002226.02101,"2236,O14.22 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.23 ",.01)
 ;;O14.23 
 ;;9002226.02101,"2236,O14.23 ",.02)
 ;;O14.23 
 ;;9002226.02101,"2236,O14.23 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.24 ",.01)
 ;;O14.24 
 ;;9002226.02101,"2236,O14.24 ",.02)
 ;;O14.24 
 ;;9002226.02101,"2236,O14.24 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.25 ",.01)
 ;;O14.25 
 ;;9002226.02101,"2236,O14.25 ",.02)
 ;;O14.25 
 ;;9002226.02101,"2236,O14.25 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.90 ",.01)
 ;;O14.90 
 ;;9002226.02101,"2236,O14.90 ",.02)
 ;;O14.90 
 ;;9002226.02101,"2236,O14.90 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.92 ",.01)
 ;;O14.92 
 ;;9002226.02101,"2236,O14.92 ",.02)
 ;;O14.92 
 ;;9002226.02101,"2236,O14.92 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.93 ",.01)
 ;;O14.93 
 ;;9002226.02101,"2236,O14.93 ",.02)
 ;;O14.93 
 ;;9002226.02101,"2236,O14.93 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.94 ",.01)
 ;;O14.94 
 ;;9002226.02101,"2236,O14.94 ",.02)
 ;;O14.94 
 ;;9002226.02101,"2236,O14.94 ",.03)
 ;;30
 ;;9002226.02101,"2236,O14.95 ",.01)
 ;;O14.95 
 ;;9002226.02101,"2236,O14.95 ",.02)
 ;;O14.95 
 ;;9002226.02101,"2236,O14.95 ",.03)
 ;;30
 ;;9002226.02101,"2236,O15.02 ",.01)
 ;;O15.02 
 ;;9002226.02101,"2236,O15.02 ",.02)
 ;;O15.02 
 ;;9002226.02101,"2236,O15.02 ",.03)
 ;;30
 ;;9002226.02101,"2236,O15.03 ",.01)
 ;;O15.03 
 ;;9002226.02101,"2236,O15.03 ",.02)
 ;;O15.03 
 ;;9002226.02101,"2236,O15.03 ",.03)
 ;;30
 ;;9002226.02101,"2236,O15.1 ",.01)
 ;;O15.1 
 ;;9002226.02101,"2236,O15.1 ",.02)
 ;;O15.1 
 ;;9002226.02101,"2236,O15.1 ",.03)
 ;;30
 ;;9002226.02101,"2236,O15.2 ",.01)
 ;;O15.2 
 ;;9002226.02101,"2236,O15.2 ",.02)
 ;;O15.2 
 ;;9002226.02101,"2236,O15.2 ",.03)
 ;;30
 ;;9002226.02101,"2236,O16.1 ",.01)
 ;;O16.1 
 ;;9002226.02101,"2236,O16.1 ",.02)
 ;;O16.1 
 ;;9002226.02101,"2236,O16.1 ",.03)
 ;;30
 ;;9002226.02101,"2236,O16.2 ",.01)
 ;;O16.2 
 ;;9002226.02101,"2236,O16.2 ",.02)
 ;;O16.2 
 ;;9002226.02101,"2236,O16.2 ",.03)
 ;;30
 ;;9002226.02101,"2236,O16.3 ",.01)
 ;;O16.3 
 ;;9002226.02101,"2236,O16.3 ",.02)
 ;;O16.3 
 ;;9002226.02101,"2236,O16.3 ",.03)
 ;;30
 ;;9002226.02101,"2236,O16.4 ",.01)
 ;;O16.4 
 ;;9002226.02101,"2236,O16.4 ",.02)
 ;;O16.4 
 ;;9002226.02101,"2236,O16.4 ",.03)
 ;;30
 ;;9002226.02101,"2236,O16.5 ",.01)
 ;;O16.5 
 ;;9002226.02101,"2236,O16.5 ",.02)
 ;;O16.5 
 ;;9002226.02101,"2236,O16.5 ",.03)
 ;;30
 ;;9002226.02101,"2236,O16.9 ",.01)
 ;;O16.9 
 ;;9002226.02101,"2236,O16.9 ",.02)
 ;;O16.9 
 ;;9002226.02101,"2236,O16.9 ",.03)
 ;;30
 ;;9002226.02101,"2236,O20.0 ",.01)
 ;;O20.0 
 ;;9002226.02101,"2236,O20.0 ",.02)
 ;;O20.0 
 ;;9002226.02101,"2236,O20.0 ",.03)
 ;;30
 ;;9002226.02101,"2236,O20.8 ",.01)
 ;;O20.8 
 ;;9002226.02101,"2236,O20.8 ",.02)
 ;;O20.8 
 ;;9002226.02101,"2236,O20.8 ",.03)
 ;;30
 ;;9002226.02101,"2236,O20.9 ",.01)
 ;;O20.9 
 ;;9002226.02101,"2236,O20.9 ",.02)
 ;;O20.9 
 ;;9002226.02101,"2236,O20.9 ",.03)
 ;;30
 ;;9002226.02101,"2236,O21.0 ",.01)
 ;;O21.0 
 ;;9002226.02101,"2236,O21.0 ",.02)
 ;;O21.0 
 ;;9002226.02101,"2236,O21.0 ",.03)
 ;;30
 ;;9002226.02101,"2236,O21.2 ",.01)
 ;;O21.2 
 ;;9002226.02101,"2236,O21.2 ",.02)
 ;;O21.2 
 ;;9002226.02101,"2236,O21.2 ",.03)
 ;;30
 ;;9002226.02101,"2236,O21.8 ",.01)
 ;;O21.8 
 ;;9002226.02101,"2236,O21.8 ",.02)
 ;;O21.8 
 ;;9002226.02101,"2236,O21.8 ",.03)
 ;;30
 ;;9002226.02101,"2236,O21.9 ",.01)
 ;;O21.9 
 ;;9002226.02101,"2236,O21.9 ",.02)
 ;;O21.9 
 ;;9002226.02101,"2236,O21.9 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.00 ",.01)
 ;;O22.00 
 ;;9002226.02101,"2236,O22.00 ",.02)
 ;;O22.00 
 ;;9002226.02101,"2236,O22.00 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.01 ",.01)
 ;;O22.01 
 ;;9002226.02101,"2236,O22.01 ",.02)
 ;;O22.01 
 ;;9002226.02101,"2236,O22.01 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.02 ",.01)
 ;;O22.02 
 ;;9002226.02101,"2236,O22.02 ",.02)
 ;;O22.02 
 ;;9002226.02101,"2236,O22.02 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.03 ",.01)
 ;;O22.03 
 ;;9002226.02101,"2236,O22.03 ",.02)
 ;;O22.03 
 ;;9002226.02101,"2236,O22.03 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.10 ",.01)
 ;;O22.10 
 ;;9002226.02101,"2236,O22.10 ",.02)
 ;;O22.10 
 ;;9002226.02101,"2236,O22.10 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.11 ",.01)
 ;;O22.11 
 ;;9002226.02101,"2236,O22.11 ",.02)
 ;;O22.11 
 ;;9002226.02101,"2236,O22.11 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.12 ",.01)
 ;;O22.12 
 ;;9002226.02101,"2236,O22.12 ",.02)
 ;;O22.12 
 ;;9002226.02101,"2236,O22.12 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.13 ",.01)
 ;;O22.13 
 ;;9002226.02101,"2236,O22.13 ",.02)
 ;;O22.13 
 ;;9002226.02101,"2236,O22.13 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.20 ",.01)
 ;;O22.20 
 ;;9002226.02101,"2236,O22.20 ",.02)
 ;;O22.20 
 ;;9002226.02101,"2236,O22.20 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.21 ",.01)
 ;;O22.21 
 ;;9002226.02101,"2236,O22.21 ",.02)
 ;;O22.21 
 ;;9002226.02101,"2236,O22.21 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.22 ",.01)
 ;;O22.22 
 ;;9002226.02101,"2236,O22.22 ",.02)
 ;;O22.22 
 ;;9002226.02101,"2236,O22.22 ",.03)
 ;;30
 ;;9002226.02101,"2236,O22.23 ",.01)
 ;;O22.23 