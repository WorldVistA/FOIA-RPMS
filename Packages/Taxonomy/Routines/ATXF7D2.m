ATXF7D2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 27, 2017;
 ;;5.1;TAXONOMY;**20**;FEB 04, 1997;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"118,E10.3492 ",.02)
 ;;E10.3492 
 ;;9002226.02101,"118,E10.3492 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3493 ",.01)
 ;;E10.3493 
 ;;9002226.02101,"118,E10.3493 ",.02)
 ;;E10.3493 
 ;;9002226.02101,"118,E10.3493 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3499 ",.01)
 ;;E10.3499 
 ;;9002226.02101,"118,E10.3499 ",.02)
 ;;E10.3499 
 ;;9002226.02101,"118,E10.3499 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.351 ",.01)
 ;;E10.351 
 ;;9002226.02101,"118,E10.351 ",.02)
 ;;E10.351 
 ;;9002226.02101,"118,E10.351 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3511 ",.01)
 ;;E10.3511 
 ;;9002226.02101,"118,E10.3511 ",.02)
 ;;E10.3511 
 ;;9002226.02101,"118,E10.3511 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3512 ",.01)
 ;;E10.3512 
 ;;9002226.02101,"118,E10.3512 ",.02)
 ;;E10.3512 
 ;;9002226.02101,"118,E10.3512 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3513 ",.01)
 ;;E10.3513 
 ;;9002226.02101,"118,E10.3513 ",.02)
 ;;E10.3513 
 ;;9002226.02101,"118,E10.3513 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3519 ",.01)
 ;;E10.3519 
 ;;9002226.02101,"118,E10.3519 ",.02)
 ;;E10.3519 
 ;;9002226.02101,"118,E10.3519 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3521 ",.01)
 ;;E10.3521 
 ;;9002226.02101,"118,E10.3521 ",.02)
 ;;E10.3521 
 ;;9002226.02101,"118,E10.3521 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3522 ",.01)
 ;;E10.3522 
 ;;9002226.02101,"118,E10.3522 ",.02)
 ;;E10.3522 
 ;;9002226.02101,"118,E10.3522 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3523 ",.01)
 ;;E10.3523 
 ;;9002226.02101,"118,E10.3523 ",.02)
 ;;E10.3523 
 ;;9002226.02101,"118,E10.3523 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3529 ",.01)
 ;;E10.3529 
 ;;9002226.02101,"118,E10.3529 ",.02)
 ;;E10.3529 
 ;;9002226.02101,"118,E10.3529 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3531 ",.01)
 ;;E10.3531 
 ;;9002226.02101,"118,E10.3531 ",.02)
 ;;E10.3531 
 ;;9002226.02101,"118,E10.3531 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3532 ",.01)
 ;;E10.3532 
 ;;9002226.02101,"118,E10.3532 ",.02)
 ;;E10.3532 
 ;;9002226.02101,"118,E10.3532 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3533 ",.01)
 ;;E10.3533 
 ;;9002226.02101,"118,E10.3533 ",.02)
 ;;E10.3533 
 ;;9002226.02101,"118,E10.3533 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3539 ",.01)
 ;;E10.3539 
 ;;9002226.02101,"118,E10.3539 ",.02)
 ;;E10.3539 
 ;;9002226.02101,"118,E10.3539 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3541 ",.01)
 ;;E10.3541 
 ;;9002226.02101,"118,E10.3541 ",.02)
 ;;E10.3541 
 ;;9002226.02101,"118,E10.3541 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3542 ",.01)
 ;;E10.3542 
 ;;9002226.02101,"118,E10.3542 ",.02)
 ;;E10.3542 
 ;;9002226.02101,"118,E10.3542 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3543 ",.01)
 ;;E10.3543 
 ;;9002226.02101,"118,E10.3543 ",.02)
 ;;E10.3543 
 ;;9002226.02101,"118,E10.3543 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3549 ",.01)
 ;;E10.3549 
 ;;9002226.02101,"118,E10.3549 ",.02)
 ;;E10.3549 
 ;;9002226.02101,"118,E10.3549 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3551 ",.01)
 ;;E10.3551 
 ;;9002226.02101,"118,E10.3551 ",.02)
 ;;E10.3551 
 ;;9002226.02101,"118,E10.3551 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3552 ",.01)
 ;;E10.3552 
 ;;9002226.02101,"118,E10.3552 ",.02)
 ;;E10.3552 
 ;;9002226.02101,"118,E10.3552 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3553 ",.01)
 ;;E10.3553 
 ;;9002226.02101,"118,E10.3553 ",.02)
 ;;E10.3553 
 ;;9002226.02101,"118,E10.3553 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3559 ",.01)
 ;;E10.3559 
 ;;9002226.02101,"118,E10.3559 ",.02)
 ;;E10.3559 
 ;;9002226.02101,"118,E10.3559 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.359 ",.01)
 ;;E10.359 
 ;;9002226.02101,"118,E10.359 ",.02)
 ;;E10.359 
 ;;9002226.02101,"118,E10.359 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3591 ",.01)
 ;;E10.3591 
 ;;9002226.02101,"118,E10.3591 ",.02)
 ;;E10.3591 
 ;;9002226.02101,"118,E10.3591 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3592 ",.01)
 ;;E10.3592 
 ;;9002226.02101,"118,E10.3592 ",.02)
 ;;E10.3592 
 ;;9002226.02101,"118,E10.3592 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3593 ",.01)
 ;;E10.3593 
 ;;9002226.02101,"118,E10.3593 ",.02)
 ;;E10.3593 
 ;;9002226.02101,"118,E10.3593 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.3599 ",.01)
 ;;E10.3599 
 ;;9002226.02101,"118,E10.3599 ",.02)
 ;;E10.3599 
 ;;9002226.02101,"118,E10.3599 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.36 ",.01)
 ;;E10.36 
 ;;9002226.02101,"118,E10.36 ",.02)
 ;;E10.36 
 ;;9002226.02101,"118,E10.36 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.37X1 ",.01)
 ;;E10.37X1 
 ;;9002226.02101,"118,E10.37X1 ",.02)
 ;;E10.37X1 
 ;;9002226.02101,"118,E10.37X1 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.37X2 ",.01)
 ;;E10.37X2 
 ;;9002226.02101,"118,E10.37X2 ",.02)
 ;;E10.37X2 
 ;;9002226.02101,"118,E10.37X2 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.37X3 ",.01)
 ;;E10.37X3 
 ;;9002226.02101,"118,E10.37X3 ",.02)
 ;;E10.37X3 
 ;;9002226.02101,"118,E10.37X3 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.37X9 ",.01)
 ;;E10.37X9 
 ;;9002226.02101,"118,E10.37X9 ",.02)
 ;;E10.37X9 
 ;;9002226.02101,"118,E10.37X9 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.39 ",.01)
 ;;E10.39 
 ;;9002226.02101,"118,E10.39 ",.02)
 ;;E10.39 
 ;;9002226.02101,"118,E10.39 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.40 ",.01)
 ;;E10.40 
 ;;9002226.02101,"118,E10.40 ",.02)
 ;;E10.40 
 ;;9002226.02101,"118,E10.40 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.41 ",.01)
 ;;E10.41 
 ;;9002226.02101,"118,E10.41 ",.02)
 ;;E10.41 
 ;;9002226.02101,"118,E10.41 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.42 ",.01)
 ;;E10.42 
 ;;9002226.02101,"118,E10.42 ",.02)
 ;;E10.42 
 ;;9002226.02101,"118,E10.42 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.43 ",.01)
 ;;E10.43 
 ;;9002226.02101,"118,E10.43 ",.02)
 ;;E10.43 
 ;;9002226.02101,"118,E10.43 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.44 ",.01)
 ;;E10.44 
 ;;9002226.02101,"118,E10.44 ",.02)
 ;;E10.44 
 ;;9002226.02101,"118,E10.44 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.49 ",.01)
 ;;E10.49 
 ;;9002226.02101,"118,E10.49 ",.02)
 ;;E10.49 
 ;;9002226.02101,"118,E10.49 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.51 ",.01)
 ;;E10.51 
 ;;9002226.02101,"118,E10.51 ",.02)
 ;;E10.51 
 ;;9002226.02101,"118,E10.51 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.52 ",.01)
 ;;E10.52 
 ;;9002226.02101,"118,E10.52 ",.02)
 ;;E10.52 
 ;;9002226.02101,"118,E10.52 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.59 ",.01)
 ;;E10.59 
 ;;9002226.02101,"118,E10.59 ",.02)
 ;;E10.59 
 ;;9002226.02101,"118,E10.59 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.610 ",.01)
 ;;E10.610 
 ;;9002226.02101,"118,E10.610 ",.02)
 ;;E10.610 
 ;;9002226.02101,"118,E10.610 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.618 ",.01)
 ;;E10.618 
 ;;9002226.02101,"118,E10.618 ",.02)
 ;;E10.618 
 ;;9002226.02101,"118,E10.618 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.620 ",.01)
 ;;E10.620 
 ;;9002226.02101,"118,E10.620 ",.02)
 ;;E10.620 
 ;;9002226.02101,"118,E10.620 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.621 ",.01)
 ;;E10.621 
 ;;9002226.02101,"118,E10.621 ",.02)
 ;;E10.621 
 ;;9002226.02101,"118,E10.621 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.622 ",.01)
 ;;E10.622 
 ;;9002226.02101,"118,E10.622 ",.02)
 ;;E10.622 
 ;;9002226.02101,"118,E10.622 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.628 ",.01)
 ;;E10.628 
 ;;9002226.02101,"118,E10.628 ",.02)
 ;;E10.628 
 ;;9002226.02101,"118,E10.628 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.630 ",.01)
 ;;E10.630 
 ;;9002226.02101,"118,E10.630 ",.02)
 ;;E10.630 
 ;;9002226.02101,"118,E10.630 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.638 ",.01)
 ;;E10.638 
 ;;9002226.02101,"118,E10.638 ",.02)
 ;;E10.638 
 ;;9002226.02101,"118,E10.638 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.641 ",.01)
 ;;E10.641 
 ;;9002226.02101,"118,E10.641 ",.02)
 ;;E10.641 
 ;;9002226.02101,"118,E10.641 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.649 ",.01)
 ;;E10.649 
 ;;9002226.02101,"118,E10.649 ",.02)
 ;;E10.649 
 ;;9002226.02101,"118,E10.649 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.65 ",.01)
 ;;E10.65 
 ;;9002226.02101,"118,E10.65 ",.02)
 ;;E10.65 
 ;;9002226.02101,"118,E10.65 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.69 ",.01)
 ;;E10.69 
 ;;9002226.02101,"118,E10.69 ",.02)
 ;;E10.69 
 ;;9002226.02101,"118,E10.69 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.8 ",.01)
 ;;E10.8 
 ;;9002226.02101,"118,E10.8 ",.02)
 ;;E10.8 
 ;;9002226.02101,"118,E10.8 ",.03)
 ;;30
 ;;9002226.02101,"118,E10.9 ",.01)
 ;;E10.9 
 ;;9002226.02101,"118,E10.9 ",.02)
 ;;E10.9 
 ;;9002226.02101,"118,E10.9 ",.03)
 ;;30
 ;;9002226.04101,"118,1",.01)
 ;;APCL
 ;;9002226.04101,"118,2",.01)
 ;;BDM