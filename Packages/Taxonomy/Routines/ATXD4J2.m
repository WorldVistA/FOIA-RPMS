ATXD4J2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 21, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"754,I60.21 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.22 ",.01)
 ;;I60.22 
 ;;9002226.02101,"754,I60.22 ",.02)
 ;;I60.22 
 ;;9002226.02101,"754,I60.22 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.30 ",.01)
 ;;I60.30 
 ;;9002226.02101,"754,I60.30 ",.02)
 ;;I60.30 
 ;;9002226.02101,"754,I60.30 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.31 ",.01)
 ;;I60.31 
 ;;9002226.02101,"754,I60.31 ",.02)
 ;;I60.31 
 ;;9002226.02101,"754,I60.31 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.32 ",.01)
 ;;I60.32 
 ;;9002226.02101,"754,I60.32 ",.02)
 ;;I60.32 
 ;;9002226.02101,"754,I60.32 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.4 ",.01)
 ;;I60.4 
 ;;9002226.02101,"754,I60.4 ",.02)
 ;;I60.4 
 ;;9002226.02101,"754,I60.4 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.50 ",.01)
 ;;I60.50 
 ;;9002226.02101,"754,I60.50 ",.02)
 ;;I60.50 
 ;;9002226.02101,"754,I60.50 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.51 ",.01)
 ;;I60.51 
 ;;9002226.02101,"754,I60.51 ",.02)
 ;;I60.51 
 ;;9002226.02101,"754,I60.51 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.52 ",.01)
 ;;I60.52 
 ;;9002226.02101,"754,I60.52 ",.02)
 ;;I60.52 
 ;;9002226.02101,"754,I60.52 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.6 ",.01)
 ;;I60.6 
 ;;9002226.02101,"754,I60.6 ",.02)
 ;;I60.6 
 ;;9002226.02101,"754,I60.6 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.7 ",.01)
 ;;I60.7 
 ;;9002226.02101,"754,I60.7 ",.02)
 ;;I60.7 
 ;;9002226.02101,"754,I60.7 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.8 ",.01)
 ;;I60.8 
 ;;9002226.02101,"754,I60.8 ",.02)
 ;;I60.8 
 ;;9002226.02101,"754,I60.8 ",.03)
 ;;30
 ;;9002226.02101,"754,I60.9 ",.01)
 ;;I60.9 
 ;;9002226.02101,"754,I60.9 ",.02)
 ;;I60.9 
 ;;9002226.02101,"754,I60.9 ",.03)
 ;;30
 ;;9002226.02101,"754,I62.00 ",.01)
 ;;I62.00 
 ;;9002226.02101,"754,I62.00 ",.02)
 ;;I62.00 
 ;;9002226.02101,"754,I62.00 ",.03)
 ;;30
 ;;9002226.02101,"754,I62.01 ",.01)
 ;;I62.01 
 ;;9002226.02101,"754,I62.01 ",.02)
 ;;I62.01 
 ;;9002226.02101,"754,I62.01 ",.03)
 ;;30
 ;;9002226.02101,"754,I62.02 ",.01)
 ;;I62.02 
 ;;9002226.02101,"754,I62.02 ",.02)
 ;;I62.02 
 ;;9002226.02101,"754,I62.02 ",.03)
 ;;30
 ;;9002226.02101,"754,I62.03 ",.01)
 ;;I62.03 
 ;;9002226.02101,"754,I62.03 ",.02)
 ;;I62.03 
 ;;9002226.02101,"754,I62.03 ",.03)
 ;;30
 ;;9002226.02101,"754,I62.1 ",.01)
 ;;I62.1 
 ;;9002226.02101,"754,I62.1 ",.02)
 ;;I62.1 
 ;;9002226.02101,"754,I62.1 ",.03)
 ;;30
 ;;9002226.02101,"754,I62.9 ",.01)
 ;;I62.9 
 ;;9002226.02101,"754,I62.9 ",.02)
 ;;I62.9 
 ;;9002226.02101,"754,I62.9 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.00 ",.01)
 ;;I63.00 
 ;;9002226.02101,"754,I63.00 ",.02)
 ;;I63.00 
 ;;9002226.02101,"754,I63.00 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.011 ",.01)
 ;;I63.011 
 ;;9002226.02101,"754,I63.011 ",.02)
 ;;I63.011 
 ;;9002226.02101,"754,I63.011 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.012 ",.01)
 ;;I63.012 
 ;;9002226.02101,"754,I63.012 ",.02)
 ;;I63.012 
 ;;9002226.02101,"754,I63.012 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.019 ",.01)
 ;;I63.019 
 ;;9002226.02101,"754,I63.019 ",.02)
 ;;I63.019 
 ;;9002226.02101,"754,I63.019 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.02 ",.01)
 ;;I63.02 
 ;;9002226.02101,"754,I63.02 ",.02)
 ;;I63.02 
 ;;9002226.02101,"754,I63.02 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.031 ",.01)
 ;;I63.031 
 ;;9002226.02101,"754,I63.031 ",.02)
 ;;I63.031 
 ;;9002226.02101,"754,I63.031 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.032 ",.01)
 ;;I63.032 
 ;;9002226.02101,"754,I63.032 ",.02)
 ;;I63.032 
 ;;9002226.02101,"754,I63.032 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.039 ",.01)
 ;;I63.039 
 ;;9002226.02101,"754,I63.039 ",.02)
 ;;I63.039 
 ;;9002226.02101,"754,I63.039 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.09 ",.01)
 ;;I63.09 
 ;;9002226.02101,"754,I63.09 ",.02)
 ;;I63.09 
 ;;9002226.02101,"754,I63.09 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.10 ",.01)
 ;;I63.10 
 ;;9002226.02101,"754,I63.10 ",.02)
 ;;I63.10 
 ;;9002226.02101,"754,I63.10 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.111 ",.01)
 ;;I63.111 
 ;;9002226.02101,"754,I63.111 ",.02)
 ;;I63.111 
 ;;9002226.02101,"754,I63.111 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.112 ",.01)
 ;;I63.112 
 ;;9002226.02101,"754,I63.112 ",.02)
 ;;I63.112 
 ;;9002226.02101,"754,I63.112 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.119 ",.01)
 ;;I63.119 
 ;;9002226.02101,"754,I63.119 ",.02)
 ;;I63.119 
 ;;9002226.02101,"754,I63.119 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.12 ",.01)
 ;;I63.12 
 ;;9002226.02101,"754,I63.12 ",.02)
 ;;I63.12 
 ;;9002226.02101,"754,I63.12 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.131 ",.01)
 ;;I63.131 
 ;;9002226.02101,"754,I63.131 ",.02)
 ;;I63.131 
 ;;9002226.02101,"754,I63.131 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.132 ",.01)
 ;;I63.132 
 ;;9002226.02101,"754,I63.132 ",.02)
 ;;I63.132 
 ;;9002226.02101,"754,I63.132 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.139 ",.01)
 ;;I63.139 
 ;;9002226.02101,"754,I63.139 ",.02)
 ;;I63.139 
 ;;9002226.02101,"754,I63.139 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.19 ",.01)
 ;;I63.19 
 ;;9002226.02101,"754,I63.19 ",.02)
 ;;I63.19 
 ;;9002226.02101,"754,I63.19 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.20 ",.01)
 ;;I63.20 
 ;;9002226.02101,"754,I63.20 ",.02)
 ;;I63.20 
 ;;9002226.02101,"754,I63.20 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.211 ",.01)
 ;;I63.211 
 ;;9002226.02101,"754,I63.211 ",.02)
 ;;I63.211 
 ;;9002226.02101,"754,I63.211 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.212 ",.01)
 ;;I63.212 
 ;;9002226.02101,"754,I63.212 ",.02)
 ;;I63.212 
 ;;9002226.02101,"754,I63.212 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.219 ",.01)
 ;;I63.219 
 ;;9002226.02101,"754,I63.219 ",.02)
 ;;I63.219 
 ;;9002226.02101,"754,I63.219 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.22 ",.01)
 ;;I63.22 
 ;;9002226.02101,"754,I63.22 ",.02)
 ;;I63.22 
 ;;9002226.02101,"754,I63.22 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.231 ",.01)
 ;;I63.231 
 ;;9002226.02101,"754,I63.231 ",.02)
 ;;I63.231 
 ;;9002226.02101,"754,I63.231 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.232 ",.01)
 ;;I63.232 
 ;;9002226.02101,"754,I63.232 ",.02)
 ;;I63.232 
 ;;9002226.02101,"754,I63.232 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.239 ",.01)
 ;;I63.239 
 ;;9002226.02101,"754,I63.239 ",.02)
 ;;I63.239 
 ;;9002226.02101,"754,I63.239 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.29 ",.01)
 ;;I63.29 
 ;;9002226.02101,"754,I63.29 ",.02)
 ;;I63.29 
 ;;9002226.02101,"754,I63.29 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.30 ",.01)
 ;;I63.30 
 ;;9002226.02101,"754,I63.30 ",.02)
 ;;I63.30 
 ;;9002226.02101,"754,I63.30 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.311 ",.01)
 ;;I63.311 
 ;;9002226.02101,"754,I63.311 ",.02)
 ;;I63.311 
 ;;9002226.02101,"754,I63.311 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.312 ",.01)
 ;;I63.312 
 ;;9002226.02101,"754,I63.312 ",.02)
 ;;I63.312 
 ;;9002226.02101,"754,I63.312 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.319 ",.01)
 ;;I63.319 
 ;;9002226.02101,"754,I63.319 ",.02)
 ;;I63.319 
 ;;9002226.02101,"754,I63.319 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.321 ",.01)
 ;;I63.321 
 ;;9002226.02101,"754,I63.321 ",.02)
 ;;I63.321 
 ;;9002226.02101,"754,I63.321 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.322 ",.01)
 ;;I63.322 
 ;;9002226.02101,"754,I63.322 ",.02)
 ;;I63.322 
 ;;9002226.02101,"754,I63.322 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.329 ",.01)
 ;;I63.329 
 ;;9002226.02101,"754,I63.329 ",.02)
 ;;I63.329 
 ;;9002226.02101,"754,I63.329 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.331 ",.01)
 ;;I63.331 
 ;;9002226.02101,"754,I63.331 ",.02)
 ;;I63.331 
 ;;9002226.02101,"754,I63.331 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.332 ",.01)
 ;;I63.332 
 ;;9002226.02101,"754,I63.332 ",.02)
 ;;I63.332 
 ;;9002226.02101,"754,I63.332 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.339 ",.01)
 ;;I63.339 
 ;;9002226.02101,"754,I63.339 ",.02)
 ;;I63.339 
 ;;9002226.02101,"754,I63.339 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.341 ",.01)
 ;;I63.341 
 ;;9002226.02101,"754,I63.341 ",.02)
 ;;I63.341 
 ;;9002226.02101,"754,I63.341 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.342 ",.01)
 ;;I63.342 
 ;;9002226.02101,"754,I63.342 ",.02)
 ;;I63.342 
 ;;9002226.02101,"754,I63.342 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.349 ",.01)
 ;;I63.349 
 ;;9002226.02101,"754,I63.349 ",.02)
 ;;I63.349 
 ;;9002226.02101,"754,I63.349 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.39 ",.01)
 ;;I63.39 
 ;;9002226.02101,"754,I63.39 ",.02)
 ;;I63.39 
 ;;9002226.02101,"754,I63.39 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.40 ",.01)
 ;;I63.40 
 ;;9002226.02101,"754,I63.40 ",.02)
 ;;I63.40 
 ;;9002226.02101,"754,I63.40 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.411 ",.01)
 ;;I63.411 
 ;;9002226.02101,"754,I63.411 ",.02)
 ;;I63.411 
 ;;9002226.02101,"754,I63.411 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.412 ",.01)
 ;;I63.412 
 ;;9002226.02101,"754,I63.412 ",.02)
 ;;I63.412 
 ;;9002226.02101,"754,I63.412 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.419 ",.01)
 ;;I63.419 
 ;;9002226.02101,"754,I63.419 ",.02)
 ;;I63.419 
 ;;9002226.02101,"754,I63.419 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.421 ",.01)
 ;;I63.421 
 ;;9002226.02101,"754,I63.421 ",.02)
 ;;I63.421 
 ;;9002226.02101,"754,I63.421 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.422 ",.01)
 ;;I63.422 
 ;;9002226.02101,"754,I63.422 ",.02)
 ;;I63.422 
 ;;9002226.02101,"754,I63.422 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.429 ",.01)
 ;;I63.429 
 ;;9002226.02101,"754,I63.429 ",.02)
 ;;I63.429 
 ;;9002226.02101,"754,I63.429 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.431 ",.01)
 ;;I63.431 
 ;;9002226.02101,"754,I63.431 ",.02)
 ;;I63.431 
 ;;9002226.02101,"754,I63.431 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.432 ",.01)
 ;;I63.432 
 ;;9002226.02101,"754,I63.432 ",.02)
 ;;I63.432 
 ;;9002226.02101,"754,I63.432 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.439 ",.01)
 ;;I63.439 
 ;;9002226.02101,"754,I63.439 ",.02)
 ;;I63.439 
 ;;9002226.02101,"754,I63.439 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.441 ",.01)
 ;;I63.441 
 ;;9002226.02101,"754,I63.441 ",.02)
 ;;I63.441 
 ;;9002226.02101,"754,I63.441 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.442 ",.01)
 ;;I63.442 
 ;;9002226.02101,"754,I63.442 ",.02)
 ;;I63.442 
 ;;9002226.02101,"754,I63.442 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.449 ",.01)
 ;;I63.449 
 ;;9002226.02101,"754,I63.449 ",.02)
 ;;I63.449 
 ;;9002226.02101,"754,I63.449 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.49 ",.01)
 ;;I63.49 
 ;;9002226.02101,"754,I63.49 ",.02)
 ;;I63.49 
 ;;9002226.02101,"754,I63.49 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.50 ",.01)
 ;;I63.50 
 ;;9002226.02101,"754,I63.50 ",.02)
 ;;I63.50 
 ;;9002226.02101,"754,I63.50 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.511 ",.01)
 ;;I63.511 
 ;;9002226.02101,"754,I63.511 ",.02)
 ;;I63.511 
 ;;9002226.02101,"754,I63.511 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.512 ",.01)
 ;;I63.512 
 ;;9002226.02101,"754,I63.512 ",.02)
 ;;I63.512 
 ;;9002226.02101,"754,I63.512 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.519 ",.01)
 ;;I63.519 
 ;;9002226.02101,"754,I63.519 ",.02)
 ;;I63.519 
 ;;9002226.02101,"754,I63.519 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.521 ",.01)
 ;;I63.521 
 ;;9002226.02101,"754,I63.521 ",.02)
 ;;I63.521 
 ;;9002226.02101,"754,I63.521 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.522 ",.01)
 ;;I63.522 
 ;;9002226.02101,"754,I63.522 ",.02)
 ;;I63.522 
 ;;9002226.02101,"754,I63.522 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.529 ",.01)
 ;;I63.529 
 ;;9002226.02101,"754,I63.529 ",.02)
 ;;I63.529 
 ;;9002226.02101,"754,I63.529 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.531 ",.01)
 ;;I63.531 
 ;;9002226.02101,"754,I63.531 ",.02)
 ;;I63.531 
 ;;9002226.02101,"754,I63.531 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.532 ",.01)
 ;;I63.532 
 ;;9002226.02101,"754,I63.532 ",.02)
 ;;I63.532 
 ;;9002226.02101,"754,I63.532 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.539 ",.01)
 ;;I63.539 
 ;;9002226.02101,"754,I63.539 ",.02)
 ;;I63.539 
 ;;9002226.02101,"754,I63.539 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.541 ",.01)
 ;;I63.541 
 ;;9002226.02101,"754,I63.541 ",.02)
 ;;I63.541 
 ;;9002226.02101,"754,I63.541 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.542 ",.01)
 ;;I63.542 
 ;;9002226.02101,"754,I63.542 ",.02)
 ;;I63.542 
 ;;9002226.02101,"754,I63.542 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.549 ",.01)
 ;;I63.549 
 ;;9002226.02101,"754,I63.549 ",.02)
 ;;I63.549 
 ;;9002226.02101,"754,I63.549 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.59 ",.01)
 ;;I63.59 
 ;;9002226.02101,"754,I63.59 ",.02)
 ;;I63.59 
 ;;9002226.02101,"754,I63.59 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.6 ",.01)
 ;;I63.6 
 ;;9002226.02101,"754,I63.6 ",.02)
 ;;I63.6 
 ;;9002226.02101,"754,I63.6 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.8 ",.01)
 ;;I63.8 
 ;;9002226.02101,"754,I63.8 ",.02)
 ;;I63.8 
 ;;9002226.02101,"754,I63.8 ",.03)
 ;;30
 ;;9002226.02101,"754,I63.9 ",.01)
 ;;I63.9 
 ;;9002226.02101,"754,I63.9 ",.02)
 ;;I63.9 
 ;;9002226.02101,"754,I63.9 ",.03)
 ;;30
 ;;9002226.02101,"754,I65.01 ",.01)
 ;;I65.01 
 ;;9002226.02101,"754,I65.01 ",.02)
 ;;I65.01 
 ;;9002226.02101,"754,I65.01 ",.03)
 ;;30
 ;;9002226.02101,"754,I65.02 ",.01)
 ;;I65.02 
 ;;9002226.02101,"754,I65.02 ",.02)
 ;;I65.02 
 ;;9002226.02101,"754,I65.02 ",.03)
 ;;30
 ;;9002226.02101,"754,I65.03 ",.01)
 ;;I65.03 
 ;;9002226.02101,"754,I65.03 ",.02)
 ;;I65.03 
 ;;9002226.02101,"754,I65.03 ",.03)
 ;;30
 ;;9002226.02101,"754,I65.09 ",.01)
 ;;I65.09 
 ;;9002226.02101,"754,I65.09 ",.02)
 ;;I65.09 