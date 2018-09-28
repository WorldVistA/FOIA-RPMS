BGP85S ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 26, 2018;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;;BGP IPC HPV LOINC CODES
 ;
 ; This routine loads Taxonomy BGP IPC HPV LOINC CODES
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
 ;;21,"21440-3 ")
 ;;1
 ;;21,"30167-1 ")
 ;;2
 ;;21,"38372-9 ")
 ;;3
 ;;21,"49896-4 ")
 ;;4
 ;;21,"59263-4 ")
 ;;5
 ;;21,"59264-2 ")
 ;;6
 ;;21,"59420-0 ")
 ;;7
 ;;21,"69002-4 ")
 ;;8
 ;;21,"71431-1 ")
 ;;9
 ;;21,"75406-9 ")
 ;;10
 ;;21,"77379-6 ")
 ;;11
 ;;21,"77399-4 ")
 ;;12
 ;;21,"77400-0 ")
 ;;13
 ;;9002226,2289,.01)
 ;;BGP IPC HPV LOINC CODES
 ;;9002226,2289,.02)
 ;;@
 ;;9002226,2289,.04)
 ;;n
 ;;9002226,2289,.06)
 ;;@
 ;;9002226,2289,.08)
 ;;@
 ;;9002226,2289,.09)
 ;;3120906
 ;;9002226,2289,.11)
 ;;@
 ;;9002226,2289,.12)
 ;;@
 ;;9002226,2289,.13)
 ;;1
 ;;9002226,2289,.14)
 ;;FIHS
 ;;9002226,2289,.15)
 ;;95.3
 ;;9002226,2289,.16)
 ;;@
 ;;9002226,2289,.17)
 ;;@
 ;;9002226,2289,.22)
 ;;1
 ;;9002226,2289,3101)
 ;;@
 ;;9002226.02101,"2289,21440-3 ",.01)
 ;;21440-3
 ;;9002226.02101,"2289,21440-3 ",.02)
 ;;21440-3
 ;;9002226.02101,"2289,30167-1 ",.01)
 ;;30167-1
 ;;9002226.02101,"2289,30167-1 ",.02)
 ;;30167-1
 ;;9002226.02101,"2289,38372-9 ",.01)
 ;;38372-9
 ;;9002226.02101,"2289,38372-9 ",.02)
 ;;38372-9
 ;;9002226.02101,"2289,49896-4 ",.01)
 ;;49896-4
 ;;9002226.02101,"2289,49896-4 ",.02)
 ;;49896-4
 ;;9002226.02101,"2289,59263-4 ",.01)
 ;;59263-4
 ;;9002226.02101,"2289,59263-4 ",.02)
 ;;59263-4
 ;;9002226.02101,"2289,59264-2 ",.01)
 ;;59264-2
 ;;9002226.02101,"2289,59264-2 ",.02)
 ;;59264-2
 ;;9002226.02101,"2289,59420-0 ",.01)
 ;;59420-0
 ;;9002226.02101,"2289,59420-0 ",.02)
 ;;59420-0
 ;;9002226.02101,"2289,69002-4 ",.01)
 ;;69002-4
 ;;9002226.02101,"2289,69002-4 ",.02)
 ;;69002-4
 ;;9002226.02101,"2289,71431-1 ",.01)
 ;;71431-1
 ;;9002226.02101,"2289,71431-1 ",.02)
 ;;71431-1
 ;;9002226.02101,"2289,75406-9 ",.01)
 ;;75406-9
 ;;9002226.02101,"2289,75406-9 ",.02)
 ;;75406-9
 ;;9002226.02101,"2289,77379-6 ",.01)
 ;;77379-6
 ;;9002226.02101,"2289,77379-6 ",.02)
 ;;77379-6
 ;;9002226.02101,"2289,77399-4 ",.01)
 ;;77399-4
 ;;9002226.02101,"2289,77399-4 ",.02)
 ;;77399-4
 ;;9002226.02101,"2289,77400-0 ",.01)
 ;;77400-0
 ;;9002226.02101,"2289,77400-0 ",.02)
 ;;77400-0
 ;
OTHER ; OTHER ROUTINES
 Q