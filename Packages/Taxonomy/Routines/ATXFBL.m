ATXFBL ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 15, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;;BGP IPC BIPOLAR DIAG DXS
 ;
 ; This routine loads Taxonomy BGP IPC BIPOLAR DIAG DXS
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
 ;;21,"296.00 ")
 ;;1
 ;;21,"296.40 ")
 ;;2
 ;;21,"296.52 ")
 ;;3
 ;;21,"296.60 ")
 ;;4
 ;;21,"F31.10 ")
 ;;5
 ;;21,"F31.11 ")
 ;;6
 ;;21,"F31.12 ")
 ;;7
 ;;21,"F31.13 ")
 ;;8
 ;;21,"F31.2 ")
 ;;9
 ;;21,"F31.30 ")
 ;;10
 ;;21,"F31.31 ")
 ;;11
 ;;21,"F31.32 ")
 ;;12
 ;;21,"F31.4 ")
 ;;13
 ;;21,"F31.5 ")
 ;;14
 ;;21,"F31.60 ")
 ;;15
 ;;21,"F31.61 ")
 ;;16
 ;;21,"F31.62 ")
 ;;17
 ;;21,"F31.63 ")
 ;;18
 ;;21,"F31.64 ")
 ;;19
 ;;21,"F31.70 ")
 ;;20
 ;;21,"F31.71 ")
 ;;21
 ;;21,"F31.72 ")
 ;;22
 ;;21,"F31.73 ")
 ;;23
 ;;21,"F31.74 ")
 ;;24
 ;;21,"F31.75 ")
 ;;25
 ;;21,"F31.76 ")
 ;;26
 ;;21,"F31.77 ")
 ;;27
 ;;21,"F31.78 ")
 ;;28
 ;;21,"F31.81 ")
 ;;29
 ;;21,"F31.89 ")
 ;;30
 ;;21,"F31.9 ")
 ;;31
 ;;9002226,2213,.01)
 ;;BGP IPC BIPOLAR DIAG DXS
 ;;9002226,2213,.02)
 ;;@
 ;;9002226,2213,.04)
 ;;n
 ;;9002226,2213,.06)
 ;;@
 ;;9002226,2213,.08)
 ;;@
 ;;9002226,2213,.09)
 ;;3171215
 ;;9002226,2213,.11)
 ;;@
 ;;9002226,2213,.12)
 ;;31
 ;;9002226,2213,.13)
 ;;1
 ;;9002226,2213,.14)
 ;;@
 ;;9002226,2213,.15)
 ;;80
 ;;9002226,2213,.16)
 ;;@
 ;;9002226,2213,.17)
 ;;@
 ;;9002226,2213,.22)
 ;;1
 ;;9002226,2213,3101)
 ;;@
 ;;9002226.02101,"2213,296.00 ",.01)
 ;;296.00 
 ;;9002226.02101,"2213,296.00 ",.02)
 ;;296.06 
 ;;9002226.02101,"2213,296.00 ",.03)
 ;;1
 ;;9002226.02101,"2213,296.40 ",.01)
 ;;296.40 
 ;;9002226.02101,"2213,296.40 ",.02)
 ;;296.46 
 ;;9002226.02101,"2213,296.40 ",.03)
 ;;1
 ;;9002226.02101,"2213,296.52 ",.01)
 ;;296.52 
 ;;9002226.02101,"2213,296.52 ",.02)
 ;;296.52 
 ;;9002226.02101,"2213,296.52 ",.03)
 ;;1
 ;;9002226.02101,"2213,296.60 ",.01)
 ;;296.60 
 ;;9002226.02101,"2213,296.60 ",.02)
 ;;296.80 
 ;;9002226.02101,"2213,296.60 ",.03)
 ;;1
 ;;9002226.02101,"2213,F31.10 ",.01)
 ;;F31.10 
 ;;9002226.02101,"2213,F31.10 ",.02)
 ;;F31.10 
 ;;9002226.02101,"2213,F31.10 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.11 ",.01)
 ;;F31.11 
 ;;9002226.02101,"2213,F31.11 ",.02)
 ;;F31.11 
 ;;9002226.02101,"2213,F31.11 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.12 ",.01)
 ;;F31.12 
 ;;9002226.02101,"2213,F31.12 ",.02)
 ;;F31.12 
 ;;9002226.02101,"2213,F31.12 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.13 ",.01)
 ;;F31.13 
 ;;9002226.02101,"2213,F31.13 ",.02)
 ;;F31.13 
 ;;9002226.02101,"2213,F31.13 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.2 ",.01)
 ;;F31.2 
 ;;9002226.02101,"2213,F31.2 ",.02)
 ;;F31.2 
 ;;9002226.02101,"2213,F31.2 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.30 ",.01)
 ;;F31.30 
 ;;9002226.02101,"2213,F31.30 ",.02)
 ;;F31.30 
 ;;9002226.02101,"2213,F31.30 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.31 ",.01)
 ;;F31.31 
 ;;9002226.02101,"2213,F31.31 ",.02)
 ;;F31.31 
 ;;9002226.02101,"2213,F31.31 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.32 ",.01)
 ;;F31.32 
 ;;9002226.02101,"2213,F31.32 ",.02)
 ;;F31.32 
 ;;9002226.02101,"2213,F31.32 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.4 ",.01)
 ;;F31.4 
 ;;9002226.02101,"2213,F31.4 ",.02)
 ;;F31.4 
 ;;9002226.02101,"2213,F31.4 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.5 ",.01)
 ;;F31.5 
 ;;9002226.02101,"2213,F31.5 ",.02)
 ;;F31.5 
 ;;9002226.02101,"2213,F31.5 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.60 ",.01)
 ;;F31.60 
 ;;9002226.02101,"2213,F31.60 ",.02)
 ;;F31.60 
 ;;9002226.02101,"2213,F31.60 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.61 ",.01)
 ;;F31.61 
 ;;9002226.02101,"2213,F31.61 ",.02)
 ;;F31.61 
 ;;9002226.02101,"2213,F31.61 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.62 ",.01)
 ;;F31.62 
 ;;9002226.02101,"2213,F31.62 ",.02)
 ;;F31.62 
 ;;9002226.02101,"2213,F31.62 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.63 ",.01)
 ;;F31.63 
 ;;9002226.02101,"2213,F31.63 ",.02)
 ;;F31.63 
 ;;9002226.02101,"2213,F31.63 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.64 ",.01)
 ;;F31.64 
 ;;9002226.02101,"2213,F31.64 ",.02)
 ;;F31.64 
 ;;9002226.02101,"2213,F31.64 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.70 ",.01)
 ;;F31.70 
 ;;9002226.02101,"2213,F31.70 ",.02)
 ;;F31.70 
 ;;9002226.02101,"2213,F31.70 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.71 ",.01)
 ;;F31.71 
 ;;9002226.02101,"2213,F31.71 ",.02)
 ;;F31.71 
 ;;9002226.02101,"2213,F31.71 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.72 ",.01)
 ;;F31.72 
 ;;9002226.02101,"2213,F31.72 ",.02)
 ;;F31.72 
 ;;9002226.02101,"2213,F31.72 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.73 ",.01)
 ;;F31.73 
 ;;9002226.02101,"2213,F31.73 ",.02)
 ;;F31.73 
 ;;9002226.02101,"2213,F31.73 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.74 ",.01)
 ;;F31.74 
 ;;9002226.02101,"2213,F31.74 ",.02)
 ;;F31.74 
 ;;9002226.02101,"2213,F31.74 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.75 ",.01)
 ;;F31.75 
 ;;9002226.02101,"2213,F31.75 ",.02)
 ;;F31.75 
 ;;9002226.02101,"2213,F31.75 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.76 ",.01)
 ;;F31.76 
 ;;9002226.02101,"2213,F31.76 ",.02)
 ;;F31.76 
 ;;9002226.02101,"2213,F31.76 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.77 ",.01)
 ;;F31.77 
 ;;9002226.02101,"2213,F31.77 ",.02)
 ;;F31.77 
 ;;9002226.02101,"2213,F31.77 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.78 ",.01)
 ;;F31.78 
 ;;9002226.02101,"2213,F31.78 ",.02)
 ;;F31.78 
 ;;9002226.02101,"2213,F31.78 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.81 ",.01)
 ;;F31.81 
 ;;9002226.02101,"2213,F31.81 ",.02)
 ;;F31.81 
 ;;9002226.02101,"2213,F31.81 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.89 ",.01)
 ;;F31.89 
 ;;9002226.02101,"2213,F31.89 ",.02)
 ;;F31.89 
 ;;9002226.02101,"2213,F31.89 ",.03)
 ;;30
 ;;9002226.02101,"2213,F31.9 ",.01)
 ;;F31.9 
 ;;9002226.02101,"2213,F31.9 ",.02)
 ;;F31.9 
 ;;9002226.02101,"2213,F31.9 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q