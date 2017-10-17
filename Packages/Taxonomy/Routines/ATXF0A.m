ATXF0A ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUN 29, 2017;
 ;;5.1;TAXONOMY;**23**;FEB 04, 1997;Build 39
 ;;BGP BIPOLAR DEPRESSION DXS
 ;
 ; This routine loads Taxonomy BGP BIPOLAR DEPRESSION DXS
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
 ;;21,"290.13 ")
 ;;1
 ;;21,"290.21 ")
 ;;2
 ;;21,"290.43 ")
 ;;3
 ;;21,"296.20 ")
 ;;4
 ;;21,"296.52 ")
 ;;5
 ;;21,"296.80 ")
 ;;6
 ;;21,"296.82 ")
 ;;7
 ;;21,"298.0 ")
 ;;8
 ;;21,"300.4 ")
 ;;9
 ;;21,"301.12 ")
 ;;10
 ;;21,"309.0 ")
 ;;11
 ;;21,"309.28 ")
 ;;12
 ;;21,"311. ")
 ;;13
 ;;21,"F01.51 ")
 ;;14
 ;;21,"F31.11 ")
 ;;15
 ;;21,"F31.73 ")
 ;;16
 ;;21,"F31.9 ")
 ;;17
 ;;21,"F33.42 ")
 ;;18
 ;;21,"F33.9 ")
 ;;19
 ;;21,"F34.1 ")
 ;;20
 ;;21,"F43.21 ")
 ;;21
 ;;21,"F43.23 ")
 ;;22
 ;;9002226,2164,.01)
 ;;BGP BIPOLAR DEPRESSION DXS
 ;;9002226,2164,.02)
 ;;BIPOLAR DXS (CRS)
 ;;9002226,2164,.04)
 ;;n
 ;;9002226,2164,.06)
 ;;@
 ;;9002226,2164,.08)
 ;;0
 ;;9002226,2164,.09)
 ;;3170626
 ;;9002226,2164,.11)
 ;;@
 ;;9002226,2164,.12)
 ;;31
 ;;9002226,2164,.13)
 ;;1
 ;;9002226,2164,.14)
 ;;@
 ;;9002226,2164,.15)
 ;;80
 ;;9002226,2164,.16)
 ;;@
 ;;9002226,2164,.17)
 ;;@
 ;;9002226,2164,.22)
 ;;1
 ;;9002226,2164,3101)
 ;;@
 ;;9002226.02101,"2164,290.13 ",.01)
 ;;290.13 
 ;;9002226.02101,"2164,290.13 ",.02)
 ;;290.13 
 ;;9002226.02101,"2164,290.13 ",.03)
 ;;1
 ;;9002226.02101,"2164,290.21 ",.01)
 ;;290.21 
 ;;9002226.02101,"2164,290.21 ",.02)
 ;;290.21 
 ;;9002226.02101,"2164,290.21 ",.03)
 ;;1
 ;;9002226.02101,"2164,290.43 ",.01)
 ;;290.43 
 ;;9002226.02101,"2164,290.43 ",.02)
 ;;290.43 
 ;;9002226.02101,"2164,290.43 ",.03)
 ;;1
 ;;9002226.02101,"2164,296.20 ",.01)
 ;;296.20 
 ;;9002226.02101,"2164,296.20 ",.02)
 ;;296.46 
 ;;9002226.02101,"2164,296.20 ",.03)
 ;;1
 ;;9002226.02101,"2164,296.52 ",.01)
 ;;296.52 
 ;;9002226.02101,"2164,296.52 ",.02)
 ;;296.52 
 ;;9002226.02101,"2164,296.52 ",.03)
 ;;1
 ;;9002226.02101,"2164,296.80 ",.01)
 ;;296.80 
 ;;9002226.02101,"2164,296.80 ",.02)
 ;;296.80 
 ;;9002226.02101,"2164,296.80 ",.03)
 ;;1
 ;;9002226.02101,"2164,296.82 ",.01)
 ;;296.82 
 ;;9002226.02101,"2164,296.82 ",.02)
 ;;296.82 
 ;;9002226.02101,"2164,296.82 ",.03)
 ;;1
 ;;9002226.02101,"2164,298.0 ",.01)
 ;;298.0 
 ;;9002226.02101,"2164,298.0 ",.02)
 ;;298.0 
 ;;9002226.02101,"2164,298.0 ",.03)
 ;;1
 ;;9002226.02101,"2164,300.4 ",.01)
 ;;300.4 
 ;;9002226.02101,"2164,300.4 ",.02)
 ;;300.4 
 ;;9002226.02101,"2164,300.4 ",.03)
 ;;1
 ;;9002226.02101,"2164,301.12 ",.01)
 ;;301.12 
 ;;9002226.02101,"2164,301.12 ",.02)
 ;;301.12 
 ;;9002226.02101,"2164,301.12 ",.03)
 ;;1
 ;;9002226.02101,"2164,309.0 ",.01)
 ;;309.0 
 ;;9002226.02101,"2164,309.0 ",.02)
 ;;309.1 
 ;;9002226.02101,"2164,309.0 ",.03)
 ;;1
 ;;9002226.02101,"2164,309.28 ",.01)
 ;;309.28 
 ;;9002226.02101,"2164,309.28 ",.02)
 ;;309.28 
 ;;9002226.02101,"2164,309.28 ",.03)
 ;;1
 ;;9002226.02101,"2164,311. ",.01)
 ;;311. 
 ;;9002226.02101,"2164,311. ",.02)
 ;;311. 
 ;;9002226.02101,"2164,311. ",.03)
 ;;1
 ;;9002226.02101,"2164,F01.51 ",.01)
 ;;F01.51 
 ;;9002226.02101,"2164,F01.51 ",.02)
 ;;F01.51 
 ;;9002226.02101,"2164,F01.51 ",.03)
 ;;30
 ;;9002226.02101,"2164,F31.11 ",.01)
 ;;F31.11 
 ;;9002226.02101,"2164,F31.11 ",.02)
 ;;F31.2 
 ;;9002226.02101,"2164,F31.11 ",.03)
 ;;30
 ;;9002226.02101,"2164,F31.73 ",.01)
 ;;F31.73 
 ;;9002226.02101,"2164,F31.73 ",.02)
 ;;F31.74 
 ;;9002226.02101,"2164,F31.73 ",.03)
 ;;30
 ;;9002226.02101,"2164,F31.9 ",.01)
 ;;F31.9 
 ;;9002226.02101,"2164,F31.9 ",.02)
 ;;F33.3 
 ;;9002226.02101,"2164,F31.9 ",.03)
 ;;30
 ;;9002226.02101,"2164,F33.42 ",.01)
 ;;F33.42 
 ;;9002226.02101,"2164,F33.42 ",.02)
 ;;F33.42 
 ;;9002226.02101,"2164,F33.42 ",.03)
 ;;30
 ;;9002226.02101,"2164,F33.9 ",.01)
 ;;F33.9 
 ;;9002226.02101,"2164,F33.9 ",.02)
 ;;F33.9 
 ;;9002226.02101,"2164,F33.9 ",.03)
 ;;30
 ;;9002226.02101,"2164,F34.1 ",.01)
 ;;F34.1 
 ;;9002226.02101,"2164,F34.1 ",.02)
 ;;F34.1 
 ;;9002226.02101,"2164,F34.1 ",.03)
 ;;30
 ;;9002226.02101,"2164,F43.21 ",.01)
 ;;F43.21 
 ;;9002226.02101,"2164,F43.21 ",.02)
 ;;F43.21 
 ;;9002226.02101,"2164,F43.21 ",.03)
 ;;30
 ;;9002226.02101,"2164,F43.23 ",.01)
 ;;F43.23 
 ;;9002226.02101,"2164,F43.23 ",.02)
 ;;F43.23 
 ;;9002226.02101,"2164,F43.23 ",.03)
 ;;30
 ;;9002226.04101,"2164,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q