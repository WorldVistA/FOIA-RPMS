ATXFBE15 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2018;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"2209,0GB60ZZ ",.01)
 ;;0GB60ZZ 
 ;;9002226.02101,"2209,0GB60ZZ ",.02)
 ;;0GB60ZZ 
 ;;9002226.02101,"2209,0GB60ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB63ZX ",.01)
 ;;0GB63ZX 
 ;;9002226.02101,"2209,0GB63ZX ",.02)
 ;;0GB63ZX 
 ;;9002226.02101,"2209,0GB63ZX ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB63ZZ ",.01)
 ;;0GB63ZZ 
 ;;9002226.02101,"2209,0GB63ZZ ",.02)
 ;;0GB63ZZ 
 ;;9002226.02101,"2209,0GB63ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB64ZX ",.01)
 ;;0GB64ZX 
 ;;9002226.02101,"2209,0GB64ZX ",.02)
 ;;0GB64ZX 
 ;;9002226.02101,"2209,0GB64ZX ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB64ZZ ",.01)
 ;;0GB64ZZ 
 ;;9002226.02101,"2209,0GB64ZZ ",.02)
 ;;0GB64ZZ 
 ;;9002226.02101,"2209,0GB64ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB70ZX ",.01)
 ;;0GB70ZX 
 ;;9002226.02101,"2209,0GB70ZX ",.02)
 ;;0GB70ZX 
 ;;9002226.02101,"2209,0GB70ZX ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB70ZZ ",.01)
 ;;0GB70ZZ 
 ;;9002226.02101,"2209,0GB70ZZ ",.02)
 ;;0GB70ZZ 
 ;;9002226.02101,"2209,0GB70ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB73ZX ",.01)
 ;;0GB73ZX 
 ;;9002226.02101,"2209,0GB73ZX ",.02)
 ;;0GB73ZX 
 ;;9002226.02101,"2209,0GB73ZX ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB73ZZ ",.01)
 ;;0GB73ZZ 
 ;;9002226.02101,"2209,0GB73ZZ ",.02)
 ;;0GB73ZZ 
 ;;9002226.02101,"2209,0GB73ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB74ZX ",.01)
 ;;0GB74ZX 
 ;;9002226.02101,"2209,0GB74ZX ",.02)
 ;;0GB74ZX 
 ;;9002226.02101,"2209,0GB74ZX ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB74ZZ ",.01)
 ;;0GB74ZZ 
 ;;9002226.02101,"2209,0GB74ZZ ",.02)
 ;;0GB74ZZ 
 ;;9002226.02101,"2209,0GB74ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB80ZX ",.01)
 ;;0GB80ZX 
 ;;9002226.02101,"2209,0GB80ZX ",.02)
 ;;0GB80ZX 
 ;;9002226.02101,"2209,0GB80ZX ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB80ZZ ",.01)
 ;;0GB80ZZ 
 ;;9002226.02101,"2209,0GB80ZZ ",.02)
 ;;0GB80ZZ 
 ;;9002226.02101,"2209,0GB80ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB83ZX ",.01)
 ;;0GB83ZX 
 ;;9002226.02101,"2209,0GB83ZX ",.02)
 ;;0GB83ZX 
 ;;9002226.02101,"2209,0GB83ZX ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB83ZZ ",.01)
 ;;0GB83ZZ 
 ;;9002226.02101,"2209,0GB83ZZ ",.02)
 ;;0GB83ZZ 
 ;;9002226.02101,"2209,0GB83ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB84ZX ",.01)
 ;;0GB84ZX 
 ;;9002226.02101,"2209,0GB84ZX ",.02)
 ;;0GB84ZX 
 ;;9002226.02101,"2209,0GB84ZX ",.03)
 ;;31
 ;;9002226.02101,"2209,0GB84ZZ ",.01)
 ;;0GB84ZZ 
 ;;9002226.02101,"2209,0GB84ZZ ",.02)
 ;;0GB84ZZ 
 ;;9002226.02101,"2209,0GB84ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GC60ZZ ",.01)
 ;;0GC60ZZ 
 ;;9002226.02101,"2209,0GC60ZZ ",.02)
 ;;0GC60ZZ 
 ;;9002226.02101,"2209,0GC60ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GC63ZZ ",.01)
 ;;0GC63ZZ 
 ;;9002226.02101,"2209,0GC63ZZ ",.02)
 ;;0GC63ZZ 
 ;;9002226.02101,"2209,0GC63ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GC64ZZ ",.01)
 ;;0GC64ZZ 
 ;;9002226.02101,"2209,0GC64ZZ ",.02)
 ;;0GC64ZZ 
 ;;9002226.02101,"2209,0GC64ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GC70ZZ ",.01)
 ;;0GC70ZZ 
 ;;9002226.02101,"2209,0GC70ZZ ",.02)
 ;;0GC70ZZ 
 ;;9002226.02101,"2209,0GC70ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GC73ZZ ",.01)
 ;;0GC73ZZ 
 ;;9002226.02101,"2209,0GC73ZZ ",.02)
 ;;0GC73ZZ 
 ;;9002226.02101,"2209,0GC73ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GC74ZZ ",.01)
 ;;0GC74ZZ 
 ;;9002226.02101,"2209,0GC74ZZ ",.02)
 ;;0GC74ZZ 
 ;;9002226.02101,"2209,0GC74ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GC80ZZ ",.01)
 ;;0GC80ZZ 
 ;;9002226.02101,"2209,0GC80ZZ ",.02)
 ;;0GC80ZZ 
 ;;9002226.02101,"2209,0GC80ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GC83ZZ ",.01)
 ;;0GC83ZZ 
 ;;9002226.02101,"2209,0GC83ZZ ",.02)
 ;;0GC83ZZ 
 ;;9002226.02101,"2209,0GC83ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GC84ZZ ",.01)
 ;;0GC84ZZ 
 ;;9002226.02101,"2209,0GC84ZZ ",.02)
 ;;0GC84ZZ 
 ;;9002226.02101,"2209,0GC84ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GN60ZZ ",.01)
 ;;0GN60ZZ 
 ;;9002226.02101,"2209,0GN60ZZ ",.02)
 ;;0GN60ZZ 
 ;;9002226.02101,"2209,0GN60ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GN63ZZ ",.01)
 ;;0GN63ZZ 
 ;;9002226.02101,"2209,0GN63ZZ ",.02)
 ;;0GN63ZZ 
 ;;9002226.02101,"2209,0GN63ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GN64ZZ ",.01)
 ;;0GN64ZZ 
 ;;9002226.02101,"2209,0GN64ZZ ",.02)
 ;;0GN64ZZ 
 ;;9002226.02101,"2209,0GN64ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GN70ZZ ",.01)
 ;;0GN70ZZ 
 ;;9002226.02101,"2209,0GN70ZZ ",.02)
 ;;0GN70ZZ 
 ;;9002226.02101,"2209,0GN70ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GN73ZZ ",.01)
 ;;0GN73ZZ 
 ;;9002226.02101,"2209,0GN73ZZ ",.02)
 ;;0GN73ZZ 
 ;;9002226.02101,"2209,0GN73ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GN74ZZ ",.01)
 ;;0GN74ZZ 
 ;;9002226.02101,"2209,0GN74ZZ ",.02)
 ;;0GN74ZZ 
 ;;9002226.02101,"2209,0GN74ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GN80ZZ ",.01)
 ;;0GN80ZZ 
 ;;9002226.02101,"2209,0GN80ZZ ",.02)
 ;;0GN80ZZ 
 ;;9002226.02101,"2209,0GN80ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GN83ZZ ",.01)
 ;;0GN83ZZ 
 ;;9002226.02101,"2209,0GN83ZZ ",.02)
 ;;0GN83ZZ 
 ;;9002226.02101,"2209,0GN83ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GN84ZZ ",.01)
 ;;0GN84ZZ 
 ;;9002226.02101,"2209,0GN84ZZ ",.02)
 ;;0GN84ZZ 
 ;;9002226.02101,"2209,0GN84ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GQ60ZZ ",.01)
 ;;0GQ60ZZ 
 ;;9002226.02101,"2209,0GQ60ZZ ",.02)
 ;;0GQ60ZZ 
 ;;9002226.02101,"2209,0GQ60ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GQ63ZZ ",.01)
 ;;0GQ63ZZ 
 ;;9002226.02101,"2209,0GQ63ZZ ",.02)
 ;;0GQ63ZZ 
 ;;9002226.02101,"2209,0GQ63ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GQ64ZZ ",.01)
 ;;0GQ64ZZ 
 ;;9002226.02101,"2209,0GQ64ZZ ",.02)
 ;;0GQ64ZZ 
 ;;9002226.02101,"2209,0GQ64ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GQ70ZZ ",.01)
 ;;0GQ70ZZ 
 ;;9002226.02101,"2209,0GQ70ZZ ",.02)
 ;;0GQ70ZZ 
 ;;9002226.02101,"2209,0GQ70ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GQ73ZZ ",.01)
 ;;0GQ73ZZ 
 ;;9002226.02101,"2209,0GQ73ZZ ",.02)
 ;;0GQ73ZZ 
 ;;9002226.02101,"2209,0GQ73ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GQ74ZZ ",.01)
 ;;0GQ74ZZ 
 ;;9002226.02101,"2209,0GQ74ZZ ",.02)
 ;;0GQ74ZZ 
 ;;9002226.02101,"2209,0GQ74ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GQ80ZZ ",.01)
 ;;0GQ80ZZ 
 ;;9002226.02101,"2209,0GQ80ZZ ",.02)
 ;;0GQ80ZZ 
 ;;9002226.02101,"2209,0GQ80ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GQ83ZZ ",.01)
 ;;0GQ83ZZ 
 ;;9002226.02101,"2209,0GQ83ZZ ",.02)
 ;;0GQ83ZZ 
 ;;9002226.02101,"2209,0GQ83ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GQ84ZZ ",.01)
 ;;0GQ84ZZ 
 ;;9002226.02101,"2209,0GQ84ZZ ",.02)
 ;;0GQ84ZZ 
 ;;9002226.02101,"2209,0GQ84ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GT60ZZ ",.01)
 ;;0GT60ZZ 
 ;;9002226.02101,"2209,0GT60ZZ ",.02)
 ;;0GT60ZZ 
 ;;9002226.02101,"2209,0GT60ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GT64ZZ ",.01)
 ;;0GT64ZZ 
 ;;9002226.02101,"2209,0GT64ZZ ",.02)
 ;;0GT64ZZ 
 ;;9002226.02101,"2209,0GT64ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GT70ZZ ",.01)
 ;;0GT70ZZ 
 ;;9002226.02101,"2209,0GT70ZZ ",.02)
 ;;0GT70ZZ 
 ;;9002226.02101,"2209,0GT70ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GT74ZZ ",.01)
 ;;0GT74ZZ 
 ;;9002226.02101,"2209,0GT74ZZ ",.02)
 ;;0GT74ZZ 
 ;;9002226.02101,"2209,0GT74ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GT80ZZ ",.01)
 ;;0GT80ZZ 
 ;;9002226.02101,"2209,0GT80ZZ ",.02)
 ;;0GT80ZZ 
 ;;9002226.02101,"2209,0GT80ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,0GT84ZZ ",.01)
 ;;0GT84ZZ 
 ;;9002226.02101,"2209,0GT84ZZ ",.02)
 ;;0GT84ZZ 
 ;;9002226.02101,"2209,0GT84ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,38.02 ",.01)
 ;;38.02 
 ;;9002226.02101,"2209,38.02 ",.02)
 ;;38.02 
 ;;9002226.02101,"2209,38.02 ",.03)
 ;;2
 ;;9002226.02101,"2209,38.12 ",.01)
 ;;38.12 
 ;;9002226.02101,"2209,38.12 ",.02)
 ;;38.12 
 ;;9002226.02101,"2209,38.12 ",.03)
 ;;2
 ;;9002226.02101,"2209,38.22 ",.01)
 ;;38.22 
 ;;9002226.02101,"2209,38.22 ",.02)
 ;;38.22 
 ;;9002226.02101,"2209,38.22 ",.03)
 ;;2
 ;;9002226.02101,"2209,38.30 ",.01)
 ;;38.30 
 ;;9002226.02101,"2209,38.30 ",.02)
 ;;38.32 
 ;;9002226.02101,"2209,38.30 ",.03)
 ;;2
 ;;9002226.02101,"2209,38.42 ",.01)
 ;;38.42 
 ;;9002226.02101,"2209,38.42 ",.02)
 ;;38.42 
 ;;9002226.02101,"2209,38.42 ",.03)
 ;;2
 ;;9002226.02101,"2209,39.22 ",.01)
 ;;39.22 
 ;;9002226.02101,"2209,39.22 ",.02)
 ;;39.22 
 ;;9002226.02101,"2209,39.22 ",.03)
 ;;2
 ;;9002226.02101,"2209,39.28 ",.01)
 ;;39.28 
 ;;9002226.02101,"2209,39.28 ",.02)
 ;;39.28 
 ;;9002226.02101,"2209,39.28 ",.03)
 ;;2
 ;;9002226.02101,"2209,88.41 ",.01)
 ;;88.41 
 ;;9002226.02101,"2209,88.41 ",.02)
 ;;88.41 
 ;;9002226.02101,"2209,88.41 ",.03)
 ;;2
 ;;9002226.02101,"2209,B3060ZZ ",.01)
 ;;B3060ZZ 
 ;;9002226.02101,"2209,B3060ZZ ",.02)
 ;;B306YZZ 
 ;;9002226.02101,"2209,B3060ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,B3070ZZ ",.01)
 ;;B3070ZZ 
 ;;9002226.02101,"2209,B3070ZZ ",.02)
 ;;B307YZZ 
 ;;9002226.02101,"2209,B3070ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,B3080ZZ ",.01)
 ;;B3080ZZ 
 ;;9002226.02101,"2209,B3080ZZ ",.02)
 ;;B308YZZ 
 ;;9002226.02101,"2209,B3080ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,B3160ZZ ",.01)
 ;;B3160ZZ 
 ;;9002226.02101,"2209,B3160ZZ ",.02)
 ;;B3160ZZ 
 ;;9002226.02101,"2209,B3160ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,B3161ZZ ",.01)
 ;;B3161ZZ 
 ;;9002226.02101,"2209,B3161ZZ ",.02)
 ;;B3161ZZ 
 ;;9002226.02101,"2209,B3161ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,B316YZZ ",.01)
 ;;B316YZZ 
 ;;9002226.02101,"2209,B316YZZ ",.02)
 ;;B316YZZ 
 ;;9002226.02101,"2209,B316YZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,B3170ZZ ",.01)
 ;;B3170ZZ 
 ;;9002226.02101,"2209,B3170ZZ ",.02)
 ;;B3170ZZ 
 ;;9002226.02101,"2209,B3170ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,B3171ZZ ",.01)
 ;;B3171ZZ 
 ;;9002226.02101,"2209,B3171ZZ ",.02)
 ;;B3171ZZ 
 ;;9002226.02101,"2209,B3171ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,B317YZZ ",.01)
 ;;B317YZZ 
 ;;9002226.02101,"2209,B317YZZ ",.02)
 ;;B317YZZ 
 ;;9002226.02101,"2209,B317YZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,B3180ZZ ",.01)
 ;;B3180ZZ 
 ;;9002226.02101,"2209,B3180ZZ ",.02)
 ;;B3180ZZ 
 ;;9002226.02101,"2209,B3180ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,B3181ZZ ",.01)
 ;;B3181ZZ 
 ;;9002226.02101,"2209,B3181ZZ ",.02)
 ;;B3181ZZ 
 ;;9002226.02101,"2209,B3181ZZ ",.03)
 ;;31
 ;;9002226.02101,"2209,B318YZZ ",.01)
 ;;B318YZZ 
 ;;9002226.02101,"2209,B318YZZ ",.02)
 ;;B318YZZ 
 ;;9002226.02101,"2209,B318YZZ ",.03)
 ;;31