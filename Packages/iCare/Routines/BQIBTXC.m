BQIBTXC ;GDHD/HCS/ALA-CREATED BY ^ATXSTX ON DEC 09, 2016;
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;;BQI PSA LOINC CODES
 ;
 ; This routine loads Taxonomy BQI PSA LOINC CODES
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
 ;;21,"10508-0 ")
 ;;2
 ;;21,"10886-0 ")
 ;;3
 ;;21,"12841-3 ")
 ;;4
 ;;21,"15323-9 ")
 ;;5
 ;;21,"15324-7 ")
 ;;6
 ;;21,"15325-4 ")
 ;;7
 ;;21,"19195-7 ")
 ;;8
 ;;21,"19197-3 ")
 ;;9
 ;;21,"19198-1 ")
 ;;10
 ;;21,"19199-9 ")
 ;;11
 ;;21,"19200-5 ")
 ;;12
 ;;21,"19201-3 ")
 ;;13
 ;;21,"19203-9 ")
 ;;14
 ;;21,"19204-7 ")
 ;;15
 ;;21,"19205-4 ")
 ;;16
 ;;21,"19206-2 ")
 ;;17
 ;;21,"2857-1 ")
 ;;1
 ;;21,"33667-7 ")
 ;;18
 ;;21,"34611-4 ")
 ;;19
 ;;21,"35741-8 ")
 ;;20
 ;;21,"47738-0 ")
 ;;21
 ;;21,"48167-1 ")
 ;;22
 ;;21,"53764-7 ")
 ;;23
 ;;21,"59221-2 ")
 ;;35
 ;;21,"59223-8 ")
 ;;24
 ;;21,"59224-6 ")
 ;;25
 ;;21,"59230-3 ")
 ;;26
 ;;21,"59231-1 ")
 ;;27
 ;;21,"59232-9 ")
 ;;28
 ;;21,"59235-2 ")
 ;;29
 ;;21,"59236-0 ")
 ;;30
 ;;21,"59237-8 ")
 ;;31
 ;;21,"59238-6 ")
 ;;32
 ;;21,"59239-4 ")
 ;;33
 ;;21,"72576-2 ")
 ;;34
 ;;9002226,2089,.01)
 ;;BQI PSA LOINC CODES
 ;;9002226,2089,.02)
 ;;Prostate Specific Antigen
 ;;9002226,2089,.04)
 ;;@
 ;;9002226,2089,.06)
 ;;@
 ;;9002226,2089,.08)
 ;;0
 ;;9002226,2089,.09)
 ;;3161017
 ;;9002226,2089,.11)
 ;;@
 ;;9002226,2089,.12)
 ;;@
 ;;9002226,2089,.13)
 ;;1
 ;;9002226,2089,.14)
 ;;FIHS
 ;;9002226,2089,.15)
 ;;95.3
 ;;9002226,2089,.16)
 ;;@
 ;;9002226,2089,.17)
 ;;@
 ;;9002226,2089,3101)
 ;;@
 ;;9002226.02101,"2089,10508-0 ",.01)
 ;;10508-0
 ;;9002226.02101,"2089,10508-0 ",.02)
 ;;10508-0
 ;;9002226.02101,"2089,10886-0 ",.01)
 ;;10886-0
 ;;9002226.02101,"2089,10886-0 ",.02)
 ;;10886-0
 ;;9002226.02101,"2089,12841-3 ",.01)
 ;;12841-3
 ;;9002226.02101,"2089,12841-3 ",.02)
 ;;12841-3
 ;;9002226.02101,"2089,15323-9 ",.01)
 ;;15323-9
 ;;9002226.02101,"2089,15323-9 ",.02)
 ;;15323-9
 ;;9002226.02101,"2089,15324-7 ",.01)
 ;;15324-7
 ;;9002226.02101,"2089,15324-7 ",.02)
 ;;15324-7
 ;;9002226.02101,"2089,15325-4 ",.01)
 ;;15325-4
 ;;9002226.02101,"2089,15325-4 ",.02)
 ;;15325-4
 ;;9002226.02101,"2089,19195-7 ",.01)
 ;;19195-7
 ;;9002226.02101,"2089,19195-7 ",.02)
 ;;19195-7
 ;;9002226.02101,"2089,19197-3 ",.01)
 ;;19197-3
 ;;9002226.02101,"2089,19197-3 ",.02)
 ;;19197-3
 ;;9002226.02101,"2089,19198-1 ",.01)
 ;;19198-1
 ;;9002226.02101,"2089,19198-1 ",.02)
 ;;19198-1
 ;;9002226.02101,"2089,19199-9 ",.01)
 ;;19199-9
 ;;9002226.02101,"2089,19199-9 ",.02)
 ;;19199-9
 ;;9002226.02101,"2089,19200-5 ",.01)
 ;;19200-5
 ;;9002226.02101,"2089,19200-5 ",.02)
 ;;19200-5
 ;;9002226.02101,"2089,19201-3 ",.01)
 ;;19201-3
 ;;9002226.02101,"2089,19201-3 ",.02)
 ;;19201-3
 ;;9002226.02101,"2089,19203-9 ",.01)
 ;;19203-9
 ;;9002226.02101,"2089,19203-9 ",.02)
 ;;19203-9
 ;;9002226.02101,"2089,19204-7 ",.01)
 ;;19204-7
 ;;9002226.02101,"2089,19204-7 ",.02)
 ;;19204-7
 ;;9002226.02101,"2089,19205-4 ",.01)
 ;;19205-4
 ;;9002226.02101,"2089,19205-4 ",.02)
 ;;19205-4
 ;;9002226.02101,"2089,19206-2 ",.01)
 ;;19206-2
 ;;9002226.02101,"2089,19206-2 ",.02)
 ;;19206-2
 ;;9002226.02101,"2089,2857-1 ",.01)
 ;;2857-1
 ;;9002226.02101,"2089,2857-1 ",.02)
 ;;2857-1
 ;;9002226.02101,"2089,33667-7 ",.01)
 ;;33667-7
 ;;9002226.02101,"2089,33667-7 ",.02)
 ;;33667-7
 ;;9002226.02101,"2089,34611-4 ",.01)
 ;;34611-4
 ;;9002226.02101,"2089,34611-4 ",.02)
 ;;34611-4
 ;;9002226.02101,"2089,35741-8 ",.01)
 ;;35741-8
 ;;9002226.02101,"2089,35741-8 ",.02)
 ;;35741-8
 ;;9002226.02101,"2089,47738-0 ",.01)
 ;;47738-0
 ;;9002226.02101,"2089,47738-0 ",.02)
 ;;47738-0
 ;;9002226.02101,"2089,48167-1 ",.01)
 ;;48167-1
 ;;9002226.02101,"2089,48167-1 ",.02)
 ;;48167-1
 ;;9002226.02101,"2089,53764-7 ",.01)
 ;;53764-7
 ;;9002226.02101,"2089,53764-7 ",.02)
 ;;53764-7
 ;;9002226.02101,"2089,59221-2 ",.01)
 ;;59221-2
 ;;9002226.02101,"2089,59221-2 ",.02)
 ;;59221-2
 ;;9002226.02101,"2089,59223-8 ",.01)
 ;;59223-8
 ;;9002226.02101,"2089,59223-8 ",.02)
 ;;59223-8
 ;;9002226.02101,"2089,59224-6 ",.01)
 ;;59224-6
 ;;9002226.02101,"2089,59224-6 ",.02)
 ;;59224-6
 ;;9002226.02101,"2089,59230-3 ",.01)
 ;;59230-3
 ;;9002226.02101,"2089,59230-3 ",.02)
 ;;59230-3
 ;;9002226.02101,"2089,59231-1 ",.01)
 ;;59231-1
 ;;9002226.02101,"2089,59231-1 ",.02)
 ;;59231-1
 ;;9002226.02101,"2089,59232-9 ",.01)
 ;;59232-9
 ;;9002226.02101,"2089,59232-9 ",.02)
 ;;59232-9
 ;;9002226.02101,"2089,59235-2 ",.01)
 ;;59235-2
 ;;9002226.02101,"2089,59235-2 ",.02)
 ;;59235-2
 ;;9002226.02101,"2089,59236-0 ",.01)
 ;;59236-0
 ;;9002226.02101,"2089,59236-0 ",.02)
 ;;59236-0
 ;;9002226.02101,"2089,59237-8 ",.01)
 ;;59237-8
 ;;9002226.02101,"2089,59237-8 ",.02)
 ;;59237-8
 ;;9002226.02101,"2089,59238-6 ",.01)
 ;;59238-6
 ;;9002226.02101,"2089,59238-6 ",.02)
 ;;59238-6
 ;;9002226.02101,"2089,59239-4 ",.01)
 ;;59239-4
 ;;9002226.02101,"2089,59239-4 ",.02)
 ;;59239-4
 ;;9002226.02101,"2089,72576-2 ",.01)
 ;;72576-2
 ;;9002226.02101,"2089,72576-2 ",.02)
 ;;72576-2
 ;;9002226.04101,"2089,1",.01)
 ;;BQI
 ;;9002226.05101,"2089,1",.01)
 ;;PROSTATE
 ;
OTHER ; OTHER ROUTINES
 Q