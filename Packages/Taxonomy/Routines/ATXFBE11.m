ATXFBE11 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2018;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"2209,03LH4ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ0BZ ",.01)
 ;;03LJ0BZ 
 ;;9002226.02101,"2209,03LJ0BZ ",.02)
 ;;03LJ0BZ 
 ;;9002226.02101,"2209,03LJ0BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ0CZ ",.01)
 ;;03LJ0CZ 
 ;;9002226.02101,"2209,03LJ0CZ ",.02)
 ;;03LJ0CZ 
 ;;9002226.02101,"2209,03LJ0CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ0DZ ",.01)
 ;;03LJ0DZ 
 ;;9002226.02101,"2209,03LJ0DZ ",.02)
 ;;03LJ0DZ 
 ;;9002226.02101,"2209,03LJ0DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ0ZZ ",.01)
 ;;03LJ0ZZ 
 ;;9002226.02101,"2209,03LJ0ZZ ",.02)
 ;;03LJ0ZZ 
 ;;9002226.02101,"2209,03LJ0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ3BZ ",.01)
 ;;03LJ3BZ 
 ;;9002226.02101,"2209,03LJ3BZ ",.02)
 ;;03LJ3BZ 
 ;;9002226.02101,"2209,03LJ3BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ3CZ ",.01)
 ;;03LJ3CZ 
 ;;9002226.02101,"2209,03LJ3CZ ",.02)
 ;;03LJ3CZ 
 ;;9002226.02101,"2209,03LJ3CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ3DZ ",.01)
 ;;03LJ3DZ 
 ;;9002226.02101,"2209,03LJ3DZ ",.02)
 ;;03LJ3DZ 
 ;;9002226.02101,"2209,03LJ3DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ3ZZ ",.01)
 ;;03LJ3ZZ 
 ;;9002226.02101,"2209,03LJ3ZZ ",.02)
 ;;03LJ3ZZ 
 ;;9002226.02101,"2209,03LJ3ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ4BZ ",.01)
 ;;03LJ4BZ 
 ;;9002226.02101,"2209,03LJ4BZ ",.02)
 ;;03LJ4BZ 
 ;;9002226.02101,"2209,03LJ4BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ4CZ ",.01)
 ;;03LJ4CZ 
 ;;9002226.02101,"2209,03LJ4CZ ",.02)
 ;;03LJ4CZ 
 ;;9002226.02101,"2209,03LJ4CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ4DZ ",.01)
 ;;03LJ4DZ 
 ;;9002226.02101,"2209,03LJ4DZ ",.02)
 ;;03LJ4DZ 
 ;;9002226.02101,"2209,03LJ4DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LJ4ZZ ",.01)
 ;;03LJ4ZZ 
 ;;9002226.02101,"2209,03LJ4ZZ ",.02)
 ;;03LJ4ZZ 
 ;;9002226.02101,"2209,03LJ4ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK0BZ ",.01)
 ;;03LK0BZ 
 ;;9002226.02101,"2209,03LK0BZ ",.02)
 ;;03LK0BZ 
 ;;9002226.02101,"2209,03LK0BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK0CZ ",.01)
 ;;03LK0CZ 
 ;;9002226.02101,"2209,03LK0CZ ",.02)
 ;;03LK0CZ 
 ;;9002226.02101,"2209,03LK0CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK0DZ ",.01)
 ;;03LK0DZ 
 ;;9002226.02101,"2209,03LK0DZ ",.02)
 ;;03LK0DZ 
 ;;9002226.02101,"2209,03LK0DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK0ZZ ",.01)
 ;;03LK0ZZ 
 ;;9002226.02101,"2209,03LK0ZZ ",.02)
 ;;03LK0ZZ 
 ;;9002226.02101,"2209,03LK0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK3BZ ",.01)
 ;;03LK3BZ 
 ;;9002226.02101,"2209,03LK3BZ ",.02)
 ;;03LK3BZ 
 ;;9002226.02101,"2209,03LK3BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK3CZ ",.01)
 ;;03LK3CZ 
 ;;9002226.02101,"2209,03LK3CZ ",.02)
 ;;03LK3CZ 
 ;;9002226.02101,"2209,03LK3CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK3DZ ",.01)
 ;;03LK3DZ 
 ;;9002226.02101,"2209,03LK3DZ ",.02)
 ;;03LK3DZ 
 ;;9002226.02101,"2209,03LK3DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK3ZZ ",.01)
 ;;03LK3ZZ 
 ;;9002226.02101,"2209,03LK3ZZ ",.02)
 ;;03LK3ZZ 
 ;;9002226.02101,"2209,03LK3ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK4BZ ",.01)
 ;;03LK4BZ 
 ;;9002226.02101,"2209,03LK4BZ ",.02)
 ;;03LK4BZ 
 ;;9002226.02101,"2209,03LK4BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK4CZ ",.01)
 ;;03LK4CZ 
 ;;9002226.02101,"2209,03LK4CZ ",.02)
 ;;03LK4CZ 
 ;;9002226.02101,"2209,03LK4CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK4DZ ",.01)
 ;;03LK4DZ 
 ;;9002226.02101,"2209,03LK4DZ ",.02)
 ;;03LK4DZ 
 ;;9002226.02101,"2209,03LK4DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LK4ZZ ",.01)
 ;;03LK4ZZ 
 ;;9002226.02101,"2209,03LK4ZZ ",.02)
 ;;03LK4ZZ 
 ;;9002226.02101,"2209,03LK4ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL0BZ ",.01)
 ;;03LL0BZ 
 ;;9002226.02101,"2209,03LL0BZ ",.02)
 ;;03LL0BZ 
 ;;9002226.02101,"2209,03LL0BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL0CZ ",.01)
 ;;03LL0CZ 
 ;;9002226.02101,"2209,03LL0CZ ",.02)
 ;;03LL0CZ 
 ;;9002226.02101,"2209,03LL0CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL0DZ ",.01)
 ;;03LL0DZ 
 ;;9002226.02101,"2209,03LL0DZ ",.02)
 ;;03LL0DZ 
 ;;9002226.02101,"2209,03LL0DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL0ZZ ",.01)
 ;;03LL0ZZ 
 ;;9002226.02101,"2209,03LL0ZZ ",.02)
 ;;03LL0ZZ 
 ;;9002226.02101,"2209,03LL0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL3BZ ",.01)
 ;;03LL3BZ 
 ;;9002226.02101,"2209,03LL3BZ ",.02)
 ;;03LL3BZ 
 ;;9002226.02101,"2209,03LL3BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL3CZ ",.01)
 ;;03LL3CZ 
 ;;9002226.02101,"2209,03LL3CZ ",.02)
 ;;03LL3CZ 
 ;;9002226.02101,"2209,03LL3CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL3DZ ",.01)
 ;;03LL3DZ 
 ;;9002226.02101,"2209,03LL3DZ ",.02)
 ;;03LL3DZ 
 ;;9002226.02101,"2209,03LL3DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL3ZZ ",.01)
 ;;03LL3ZZ 
 ;;9002226.02101,"2209,03LL3ZZ ",.02)
 ;;03LL3ZZ 
 ;;9002226.02101,"2209,03LL3ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL4BZ ",.01)
 ;;03LL4BZ 
 ;;9002226.02101,"2209,03LL4BZ ",.02)
 ;;03LL4BZ 
 ;;9002226.02101,"2209,03LL4BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL4CZ ",.01)
 ;;03LL4CZ 
 ;;9002226.02101,"2209,03LL4CZ ",.02)
 ;;03LL4CZ 
 ;;9002226.02101,"2209,03LL4CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL4DZ ",.01)
 ;;03LL4DZ 
 ;;9002226.02101,"2209,03LL4DZ ",.02)
 ;;03LL4DZ 
 ;;9002226.02101,"2209,03LL4DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LL4ZZ ",.01)
 ;;03LL4ZZ 
 ;;9002226.02101,"2209,03LL4ZZ ",.02)
 ;;03LL4ZZ 
 ;;9002226.02101,"2209,03LL4ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM0BZ ",.01)
 ;;03LM0BZ 
 ;;9002226.02101,"2209,03LM0BZ ",.02)
 ;;03LM0BZ 
 ;;9002226.02101,"2209,03LM0BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM0CZ ",.01)
 ;;03LM0CZ 
 ;;9002226.02101,"2209,03LM0CZ ",.02)
 ;;03LM0CZ 
 ;;9002226.02101,"2209,03LM0CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM0DZ ",.01)
 ;;03LM0DZ 
 ;;9002226.02101,"2209,03LM0DZ ",.02)
 ;;03LM0DZ 
 ;;9002226.02101,"2209,03LM0DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM0ZZ ",.01)
 ;;03LM0ZZ 
 ;;9002226.02101,"2209,03LM0ZZ ",.02)
 ;;03LM0ZZ 
 ;;9002226.02101,"2209,03LM0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM3BZ ",.01)
 ;;03LM3BZ 
 ;;9002226.02101,"2209,03LM3BZ ",.02)
 ;;03LM3BZ 
 ;;9002226.02101,"2209,03LM3BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM3CZ ",.01)
 ;;03LM3CZ 
 ;;9002226.02101,"2209,03LM3CZ ",.02)
 ;;03LM3CZ 
 ;;9002226.02101,"2209,03LM3CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM3DZ ",.01)
 ;;03LM3DZ 
 ;;9002226.02101,"2209,03LM3DZ ",.02)
 ;;03LM3DZ 
 ;;9002226.02101,"2209,03LM3DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM3ZZ ",.01)
 ;;03LM3ZZ 
 ;;9002226.02101,"2209,03LM3ZZ ",.02)
 ;;03LM3ZZ 
 ;;9002226.02101,"2209,03LM3ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM4BZ ",.01)
 ;;03LM4BZ 
 ;;9002226.02101,"2209,03LM4BZ ",.02)
 ;;03LM4BZ 
 ;;9002226.02101,"2209,03LM4BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM4CZ ",.01)
 ;;03LM4CZ 
 ;;9002226.02101,"2209,03LM4CZ ",.02)
 ;;03LM4CZ 
 ;;9002226.02101,"2209,03LM4CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM4DZ ",.01)
 ;;03LM4DZ 
 ;;9002226.02101,"2209,03LM4DZ ",.02)
 ;;03LM4DZ 
 ;;9002226.02101,"2209,03LM4DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LM4ZZ ",.01)
 ;;03LM4ZZ 
 ;;9002226.02101,"2209,03LM4ZZ ",.02)
 ;;03LM4ZZ 
 ;;9002226.02101,"2209,03LM4ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN0BZ ",.01)
 ;;03LN0BZ 
 ;;9002226.02101,"2209,03LN0BZ ",.02)
 ;;03LN0BZ 
 ;;9002226.02101,"2209,03LN0BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN0CZ ",.01)
 ;;03LN0CZ 
 ;;9002226.02101,"2209,03LN0CZ ",.02)
 ;;03LN0CZ 
 ;;9002226.02101,"2209,03LN0CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN0DZ ",.01)
 ;;03LN0DZ 
 ;;9002226.02101,"2209,03LN0DZ ",.02)
 ;;03LN0DZ 
 ;;9002226.02101,"2209,03LN0DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN0ZZ ",.01)
 ;;03LN0ZZ 
 ;;9002226.02101,"2209,03LN0ZZ ",.02)
 ;;03LN0ZZ 
 ;;9002226.02101,"2209,03LN0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN3BZ ",.01)
 ;;03LN3BZ 
 ;;9002226.02101,"2209,03LN3BZ ",.02)
 ;;03LN3BZ 
 ;;9002226.02101,"2209,03LN3BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN3CZ ",.01)
 ;;03LN3CZ 
 ;;9002226.02101,"2209,03LN3CZ ",.02)
 ;;03LN3CZ 
 ;;9002226.02101,"2209,03LN3CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN3DZ ",.01)
 ;;03LN3DZ 
 ;;9002226.02101,"2209,03LN3DZ ",.02)
 ;;03LN3DZ 
 ;;9002226.02101,"2209,03LN3DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN3ZZ ",.01)
 ;;03LN3ZZ 
 ;;9002226.02101,"2209,03LN3ZZ ",.02)
 ;;03LN3ZZ 
 ;;9002226.02101,"2209,03LN3ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN4BZ ",.01)
 ;;03LN4BZ 
 ;;9002226.02101,"2209,03LN4BZ ",.02)
 ;;03LN4BZ 
 ;;9002226.02101,"2209,03LN4BZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN4CZ ",.01)
 ;;03LN4CZ 
 ;;9002226.02101,"2209,03LN4CZ ",.02)
 ;;03LN4CZ 
 ;;9002226.02101,"2209,03LN4CZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN4DZ ",.01)
 ;;03LN4DZ 
 ;;9002226.02101,"2209,03LN4DZ ",.02)
 ;;03LN4DZ 
 ;;9002226.02101,"2209,03LN4DZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03LN4ZZ ",.01)
 ;;03LN4ZZ 
 ;;9002226.02101,"2209,03LN4ZZ ",.02)
 ;;03LN4ZZ 
 ;;9002226.02101,"2209,03LN4ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NH0ZZ ",.01)
 ;;03NH0ZZ 
 ;;9002226.02101,"2209,03NH0ZZ ",.02)
 ;;03NH0ZZ 
 ;;9002226.02101,"2209,03NH0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NH3ZZ ",.01)
 ;;03NH3ZZ 
 ;;9002226.02101,"2209,03NH3ZZ ",.02)
 ;;03NH3ZZ 
 ;;9002226.02101,"2209,03NH3ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NH4ZZ ",.01)
 ;;03NH4ZZ 
 ;;9002226.02101,"2209,03NH4ZZ ",.02)
 ;;03NH4ZZ 
 ;;9002226.02101,"2209,03NH4ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NJ0ZZ ",.01)
 ;;03NJ0ZZ 
 ;;9002226.02101,"2209,03NJ0ZZ ",.02)
 ;;03NJ0ZZ 
 ;;9002226.02101,"2209,03NJ0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NJ3ZZ ",.01)
 ;;03NJ3ZZ 
 ;;9002226.02101,"2209,03NJ3ZZ ",.02)
 ;;03NJ3ZZ 
 ;;9002226.02101,"2209,03NJ3ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NJ4ZZ ",.01)
 ;;03NJ4ZZ 
 ;;9002226.02101,"2209,03NJ4ZZ ",.02)
 ;;03NJ4ZZ 
 ;;9002226.02101,"2209,03NJ4ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NK0ZZ ",.01)
 ;;03NK0ZZ 
 ;;9002226.02101,"2209,03NK0ZZ ",.02)
 ;;03NK0ZZ 
 ;;9002226.02101,"2209,03NK0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NK3ZZ ",.01)
 ;;03NK3ZZ 
 ;;9002226.02101,"2209,03NK3ZZ ",.02)
 ;;03NK3ZZ 
 ;;9002226.02101,"2209,03NK3ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NK4ZZ ",.01)
 ;;03NK4ZZ 
 ;;9002226.02101,"2209,03NK4ZZ ",.02)
 ;;03NK4ZZ 
 ;;9002226.02101,"2209,03NK4ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NL0ZZ ",.01)
 ;;03NL0ZZ 
 ;;9002226.02101,"2209,03NL0ZZ ",.02)
 ;;03NL0ZZ 
 ;;9002226.02101,"2209,03NL0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NL3ZZ ",.01)
 ;;03NL3ZZ 
 ;;9002226.02101,"2209,03NL3ZZ ",.02)
 ;;03NL3ZZ 
 ;;9002226.02101,"2209,03NL3ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NL4ZZ ",.01)
 ;;03NL4ZZ 
 ;;9002226.02101,"2209,03NL4ZZ ",.02)
 ;;03NL4ZZ 
 ;;9002226.02101,"2209,03NL4ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NM0ZZ ",.01)
 ;;03NM0ZZ 
 ;;9002226.02101,"2209,03NM0ZZ ",.02)
 ;;03NM0ZZ 
 ;;9002226.02101,"2209,03NM0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NM3ZZ ",.01)
 ;;03NM3ZZ 
 ;;9002226.02101,"2209,03NM3ZZ ",.02)
 ;;03NM3ZZ 
 ;;9002226.02101,"2209,03NM3ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NM4ZZ ",.01)
 ;;03NM4ZZ 
 ;;9002226.02101,"2209,03NM4ZZ ",.02)
 ;;03NM4ZZ 
 ;;9002226.02101,"2209,03NM4ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NN0ZZ ",.01)
 ;;03NN0ZZ 
 ;;9002226.02101,"2209,03NN0ZZ ",.02)
 ;;03NN0ZZ 
 ;;9002226.02101,"2209,03NN0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NN3ZZ ",.01)
 ;;03NN3ZZ 
 ;;9002226.02101,"2209,03NN3ZZ ",.02)
 ;;03NN3ZZ 
 ;;9002226.02101,"2209,03NN3ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,03NN4ZZ ",.01)
 ;;03NN4ZZ 
 ;;9002226.02101,"2209,03NN4ZZ ",.02)
 ;;03NN4ZZ 
 ;;9002226.02101,"2209,03NN4ZZ ",.03)
 ;;31