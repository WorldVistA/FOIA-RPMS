ATXFCD8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 18, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"2230,C93.01 ",.02)
 ;;C93.01 
 ;;9002226.02101,"2230,C93.01 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.02 ",.01)
 ;;C93.02 
 ;;9002226.02101,"2230,C93.02 ",.02)
 ;;C93.02 
 ;;9002226.02101,"2230,C93.02 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.10 ",.01)
 ;;C93.10 
 ;;9002226.02101,"2230,C93.10 ",.02)
 ;;C93.10 
 ;;9002226.02101,"2230,C93.10 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.11 ",.01)
 ;;C93.11 
 ;;9002226.02101,"2230,C93.11 ",.02)
 ;;C93.11 
 ;;9002226.02101,"2230,C93.11 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.12 ",.01)
 ;;C93.12 
 ;;9002226.02101,"2230,C93.12 ",.02)
 ;;C93.12 
 ;;9002226.02101,"2230,C93.12 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.30 ",.01)
 ;;C93.30 
 ;;9002226.02101,"2230,C93.30 ",.02)
 ;;C93.30 
 ;;9002226.02101,"2230,C93.30 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.31 ",.01)
 ;;C93.31 
 ;;9002226.02101,"2230,C93.31 ",.02)
 ;;C93.31 
 ;;9002226.02101,"2230,C93.31 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.32 ",.01)
 ;;C93.32 
 ;;9002226.02101,"2230,C93.32 ",.02)
 ;;C93.32 
 ;;9002226.02101,"2230,C93.32 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.90 ",.01)
 ;;C93.90 
 ;;9002226.02101,"2230,C93.90 ",.02)
 ;;C93.90 
 ;;9002226.02101,"2230,C93.90 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.91 ",.01)
 ;;C93.91 
 ;;9002226.02101,"2230,C93.91 ",.02)
 ;;C93.91 
 ;;9002226.02101,"2230,C93.91 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.92 ",.01)
 ;;C93.92 
 ;;9002226.02101,"2230,C93.92 ",.02)
 ;;C93.92 
 ;;9002226.02101,"2230,C93.92 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.Z0 ",.01)
 ;;C93.Z0 
 ;;9002226.02101,"2230,C93.Z0 ",.02)
 ;;C93.Z0 
 ;;9002226.02101,"2230,C93.Z0 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.Z1 ",.01)
 ;;C93.Z1 
 ;;9002226.02101,"2230,C93.Z1 ",.02)
 ;;C93.Z1 
 ;;9002226.02101,"2230,C93.Z1 ",.03)
 ;;30
 ;;9002226.02101,"2230,C93.Z2 ",.01)
 ;;C93.Z2 
 ;;9002226.02101,"2230,C93.Z2 ",.02)
 ;;C93.Z2 
 ;;9002226.02101,"2230,C93.Z2 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.00 ",.01)
 ;;C94.00 
 ;;9002226.02101,"2230,C94.00 ",.02)
 ;;C94.00 
 ;;9002226.02101,"2230,C94.00 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.01 ",.01)
 ;;C94.01 
 ;;9002226.02101,"2230,C94.01 ",.02)
 ;;C94.01 
 ;;9002226.02101,"2230,C94.01 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.02 ",.01)
 ;;C94.02 
 ;;9002226.02101,"2230,C94.02 ",.02)
 ;;C94.02 
 ;;9002226.02101,"2230,C94.02 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.20 ",.01)
 ;;C94.20 
 ;;9002226.02101,"2230,C94.20 ",.02)
 ;;C94.20 
 ;;9002226.02101,"2230,C94.20 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.21 ",.01)
 ;;C94.21 
 ;;9002226.02101,"2230,C94.21 ",.02)
 ;;C94.21 
 ;;9002226.02101,"2230,C94.21 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.22 ",.01)
 ;;C94.22 
 ;;9002226.02101,"2230,C94.22 ",.02)
 ;;C94.22 
 ;;9002226.02101,"2230,C94.22 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.30 ",.01)
 ;;C94.30 
 ;;9002226.02101,"2230,C94.30 ",.02)
 ;;C94.30 
 ;;9002226.02101,"2230,C94.30 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.31 ",.01)
 ;;C94.31 
 ;;9002226.02101,"2230,C94.31 ",.02)
 ;;C94.31 
 ;;9002226.02101,"2230,C94.31 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.32 ",.01)
 ;;C94.32 
 ;;9002226.02101,"2230,C94.32 ",.02)
 ;;C94.32 
 ;;9002226.02101,"2230,C94.32 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.80 ",.01)
 ;;C94.80 
 ;;9002226.02101,"2230,C94.80 ",.02)
 ;;C94.80 
 ;;9002226.02101,"2230,C94.80 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.81 ",.01)
 ;;C94.81 
 ;;9002226.02101,"2230,C94.81 ",.02)
 ;;C94.81 
 ;;9002226.02101,"2230,C94.81 ",.03)
 ;;30
 ;;9002226.02101,"2230,C94.82 ",.01)
 ;;C94.82 
 ;;9002226.02101,"2230,C94.82 ",.02)
 ;;C94.82 
 ;;9002226.02101,"2230,C94.82 ",.03)
 ;;30
 ;;9002226.02101,"2230,C95.00 ",.01)
 ;;C95.00 
 ;;9002226.02101,"2230,C95.00 ",.02)
 ;;C95.00 
 ;;9002226.02101,"2230,C95.00 ",.03)
 ;;30
 ;;9002226.02101,"2230,C95.01 ",.01)
 ;;C95.01 
 ;;9002226.02101,"2230,C95.01 ",.02)
 ;;C95.01 
 ;;9002226.02101,"2230,C95.01 ",.03)
 ;;30
 ;;9002226.02101,"2230,C95.02 ",.01)
 ;;C95.02 
 ;;9002226.02101,"2230,C95.02 ",.02)
 ;;C95.02 
 ;;9002226.02101,"2230,C95.02 ",.03)
 ;;30
 ;;9002226.02101,"2230,C95.10 ",.01)
 ;;C95.10 
 ;;9002226.02101,"2230,C95.10 ",.02)
 ;;C95.10 
 ;;9002226.02101,"2230,C95.10 ",.03)
 ;;30
 ;;9002226.02101,"2230,C95.11 ",.01)
 ;;C95.11 
 ;;9002226.02101,"2230,C95.11 ",.02)
 ;;C95.11 
 ;;9002226.02101,"2230,C95.11 ",.03)
 ;;30
 ;;9002226.02101,"2230,C95.12 ",.01)
 ;;C95.12 
 ;;9002226.02101,"2230,C95.12 ",.02)
 ;;C95.12 
 ;;9002226.02101,"2230,C95.12 ",.03)
 ;;30
 ;;9002226.02101,"2230,C95.90 ",.01)
 ;;C95.90 
 ;;9002226.02101,"2230,C95.90 ",.02)
 ;;C95.90 
 ;;9002226.02101,"2230,C95.90 ",.03)
 ;;30
 ;;9002226.02101,"2230,C95.91 ",.01)
 ;;C95.91 
 ;;9002226.02101,"2230,C95.91 ",.02)
 ;;C95.91 
 ;;9002226.02101,"2230,C95.91 ",.03)
 ;;30
 ;;9002226.02101,"2230,C95.92 ",.01)
 ;;C95.92 
 ;;9002226.02101,"2230,C95.92 ",.02)
 ;;C95.92 
 ;;9002226.02101,"2230,C95.92 ",.03)
 ;;30
 ;;9002226.02101,"2230,C96.0 ",.01)
 ;;C96.0 
 ;;9002226.02101,"2230,C96.0 ",.02)
 ;;C96.0 
 ;;9002226.02101,"2230,C96.0 ",.03)
 ;;30
 ;;9002226.02101,"2230,C96.2 ",.01)
 ;;C96.2 
 ;;9002226.02101,"2230,C96.2 ",.02)
 ;;C96.2 
 ;;9002226.02101,"2230,C96.2 ",.03)
 ;;30
 ;;9002226.02101,"2230,C96.4 ",.01)
 ;;C96.4 
 ;;9002226.02101,"2230,C96.4 ",.02)
 ;;C96.4 
 ;;9002226.02101,"2230,C96.4 ",.03)
 ;;30
 ;;9002226.02101,"2230,C96.5 ",.01)
 ;;C96.5 
 ;;9002226.02101,"2230,C96.5 ",.02)
 ;;C96.5 
 ;;9002226.02101,"2230,C96.5 ",.03)
 ;;30
 ;;9002226.02101,"2230,C96.6 ",.01)
 ;;C96.6 
 ;;9002226.02101,"2230,C96.6 ",.02)
 ;;C96.6 
 ;;9002226.02101,"2230,C96.6 ",.03)
 ;;30
 ;;9002226.02101,"2230,C96.9 ",.01)
 ;;C96.9 
 ;;9002226.02101,"2230,C96.9 ",.02)
 ;;C96.9 
 ;;9002226.02101,"2230,C96.9 ",.03)
 ;;30
 ;;9002226.02101,"2230,C96.A ",.01)
 ;;C96.A 
 ;;9002226.02101,"2230,C96.A ",.02)
 ;;C96.A 
 ;;9002226.02101,"2230,C96.A ",.03)
 ;;30
 ;;9002226.02101,"2230,C96.Z ",.01)
 ;;C96.Z 
 ;;9002226.02101,"2230,C96.Z ",.02)
 ;;C96.Z 
 ;;9002226.02101,"2230,C96.Z ",.03)
 ;;30