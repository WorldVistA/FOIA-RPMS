ATXFDD ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 29, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;;BGP LEFT EYE ENUCLEATION PROCS
 ;
 ; This routine loads Taxonomy BGP LEFT EYE ENUCLEATION PROCS
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"08B10ZX ")
 ;;1
 ;;9002226,2249,.01)
 ;;BGP LEFT EYE ENUCLEATION PROCS
 ;;9002226,2249,.02)
 ;;@
 ;;9002226,2249,.04)
 ;;n
 ;;9002226,2249,.06)
 ;;@
 ;;9002226,2249,.08)
 ;;@
 ;;9002226,2249,.09)
 ;;3171229
 ;;9002226,2249,.11)
 ;;@
 ;;9002226,2249,.12)
 ;;255
 ;;9002226,2249,.13)
 ;;1
 ;;9002226,2249,.14)
 ;;@
 ;;9002226,2249,.15)
 ;;80.1
 ;;9002226,2249,.16)
 ;;@
 ;;9002226,2249,.17)
 ;;@
 ;;9002226,2249,.22)
 ;;1
 ;;9002226,2249,3101)
 ;;@
 ;;9002226.02101,"2249,08B10ZX ",.01)
 ;;08B10ZX 
 ;;9002226.02101,"2249,08B10ZX ",.02)
 ;;08B1XZZ 
 ;;9002226.02101,"2249,08B10ZX ",.03)
 ;;31
 ;
OTHER ; OTHER ROUTINES
 Q