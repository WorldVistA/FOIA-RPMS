BGP62K ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP UNI LEFT MASTECTOMY PROCS
 ;
 ; This routine loads Taxonomy BGP UNI LEFT MASTECTOMY PROCS
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
 ;;21,"07T60ZZ ")
 ;;1
 ;;21,"07T90ZZ ")
 ;;3
 ;;21,"0HBU0ZZ ")
 ;;4
 ;;21,"0HCU0ZZ ")
 ;;5
 ;;21,"0HTU0ZZ ")
 ;;6
 ;;9002226,646,.01)
 ;;BGP UNI LEFT MASTECTOMY PROCS
 ;;9002226,646,.02)
 ;;@
 ;;9002226,646,.04)
 ;;n
 ;;9002226,646,.06)
 ;;@
 ;;9002226,646,.08)
 ;;0
 ;;9002226,646,.09)
 ;;3160105
 ;;9002226,646,.11)
 ;;@
 ;;9002226,646,.12)
 ;;255
 ;;9002226,646,.13)
 ;;1
 ;;9002226,646,.14)
 ;;@
 ;;9002226,646,.15)
 ;;80.1
 ;;9002226,646,.16)
 ;;@
 ;;9002226,646,.17)
 ;;@
 ;;9002226,646,3101)
 ;;@
 ;;9002226.02101,"646,07T60ZZ ",.01)
 ;;07T60ZZ 
 ;;9002226.02101,"646,07T60ZZ ",.02)
 ;;07T60ZZ 
 ;;9002226.02101,"646,07T60ZZ ",.03)
 ;;31
 ;;9002226.02101,"646,07T90ZZ ",.01)
 ;;07T90ZZ 
 ;;9002226.02101,"646,07T90ZZ ",.02)
 ;;07T90ZZ 
 ;;9002226.02101,"646,07T90ZZ ",.03)
 ;;31
 ;;9002226.02101,"646,0HBU0ZZ ",.01)
 ;;0HBU0ZZ 
 ;;9002226.02101,"646,0HBU0ZZ ",.02)
 ;;0HBU0ZZ 
 ;;9002226.02101,"646,0HBU0ZZ ",.03)
 ;;31
 ;;9002226.02101,"646,0HCU0ZZ ",.01)
 ;;0HCU0ZZ 
 ;;9002226.02101,"646,0HCU0ZZ ",.02)
 ;;0HCU0ZZ 
 ;;9002226.02101,"646,0HCU0ZZ ",.03)
 ;;31
 ;;9002226.02101,"646,0HTU0ZZ ",.01)
 ;;0HTU0ZZ 
 ;;9002226.02101,"646,0HTU0ZZ ",.02)
 ;;0HTU0ZZ 
 ;;9002226.02101,"646,0HTU0ZZ ",.03)
 ;;31
 ;
OTHER ; OTHER ROUTINES
 Q