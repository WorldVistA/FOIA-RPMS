BARDYSCL ; IHS/SD/TPF - DAYS IN A/R REPORT MAIN DRIVER ; 
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**16,28**;OCT 26, 2005;Build 92
 ;IHS/SD/SDR - 1.8*27 - CR8345 HEAT 224215 - Added prompt for comma-delimited file. Added prompt for summary or detail (new).
 ;IHS/DIT/CPC - 1.8*28 - CR8345 - Changed delimited file format, added spreadsheet XML option
 ;
 Q
START ;
 K BARY,BAR
 D:'$D(BARUSR) INIT^BARUTL         ; Setup basic A/R variables
 S BARP("RTN")="BARDYSCL"           ; Routine used to get data
 S BAR("PRIVACY")=1                ; Privacy act applies
 S BAR("LOC")=$$GET1^DIQ(90052.06,DUZ(2),16)   ; BILLING or VISIT
 I BAR("LOC")="" S BAR("LOC")="VISIT"
 S BARMENU="Days in AR"  ;This is overwritten in BARRSEL
 S BAR("OPT")="DAYS" ;This is overwritten in BARRSEL
 S:'$G(XQY0) XQY0="BAR RPT DAYS IN AR^Days in AR^^R^^^^^^^^^^1^1"
SEL ;
 K DTOUT,DIRUT,DUOUT
 D ^BARRSEL                        ; Select exclusion parameters
 I $D(DTOUT)!$D(DUOUT)!$D(DIRUT) Q
 I $D(BARY("RTYP")) S BAR("HD",0)=BARY("RTYP","NM")_" "_BARMENU
 E  S BAR("HD",0)=BARMENU
 S BARY("STCR")=5                   ;allow all allowance categories
 ;start new bar*1.8*28 IHS/SD/SDR HEAT224215
 W !
 D ^XBFMK
 S DIR(0)="S^S:SUMMARY;D:DETAIL"
 S DIR("A")="SUMMARY OR DETAIL REPORT"
 S DIR("B")="SUMMARY"
 D ^DIR
 I $D(DTOUT)!$D(DUOUT)!$D(DIRUT) Q
 S BARY("SUMORDET")=Y
 I BARY("SUMORDET")="D" D
 .K DIR
 .S DIR(0)="S^D:DELIMITED;X:XML"
 .S DIR("A")="Please select DELIMITED file or a spreadsheet XML file"
 .S DIR("B")="DELIMITED"
 .D ^DIR
 .I $D(DTOUT)!$D(DUOUT)!$D(DIRUT) G SEL
 .S BARY("CSV")=Y
 .I BARY("CSV")="X" K BARY("CSV") S BARY("XML")=1
 .W !!,"NOTE: the DETAIL should be written to a HFS host file. ",!
 .W:$D(BARY("XML")) "The report is in spreadsheet XML format so please use an xml ",!
 .W:$D(BARY("XML")) "suffix on the file name.",!
 .W:$D(BARY("XML")) "i.e. 'c:\temp\daysreport.xml'",!!
 .D:$D(BARY("XML")) PAZ^BARRUTL
 ;
 I BARY("SUMORDET")="S" D
 .D ^XBFMK
 .S DIR(0)="Y"
 .S DIR("?")="  YES should be written to a host file (HFS) and import into excel"
 .S DIR("?",1)="  NO will print to a 132-column printer"
 .S DIR("A")="DELIMITED"
 .S DIR("B")="NO"
 .D ^DIR
 .I $D(DTOUT)!$D(DUOUT)!$D(DIRUT) Q
 .S BARY("COMMADELIM")=Y
 ;end new bar*1.8*28 IHS/SD/SDR HEAT224215
 D ^BARRHD                         ; Report header
 S BARQ("RC")="COMPUTE^BARDYSCL"    ; Compute routine
 S BARQ("RP")="PRINT^BARDYSCL"
 ;I XQY0["Days to Bill by Visit Range of Approved Bills" D
 ;.S BARQ("RP")="PRINTAPP^BARDYSPR"      ; Print routine
 ;E  S BARQ("RP")="PRINTVIS^BARDYSPR"
 S BARQ("NS")="BAR"                ; Namespace for variables
 S BARQ("RX")="POUT^BARRUTL"       ; Clean-up routine
 ;D ^BARDBQUE                       ; Double queuing
 S %ZIS="QM"
 D ^%ZIS Q:POP
 I $D(IO("Q")) D  Q
 .S ZTRTN="COMPUTE^BARDYSCL",ZTDESC=XQY0
 .S ZTSAVE("BAR*")=""
 .D ^%ZTLOAD
 .I $D(ZTSK)[0 W !!?5,"Report Cancelled!"
 .E  W !!?5,"Report queued to run on ",ZTSK," #"
 .D HOME^%ZIS
 .K IO("Q")
 D COMPUTE
 Q
PRINT ;
 Q
COMPUTE ;
 U IO
 ;search by visit date range
 I BARY("DT")="V" D BYVISIT^BARDYSVS(BARY("DT",1),BARY("DT",2)) Q
 ;SEARCH BY APPROVAL DATE RANGE
 I BARY("DT")="A" D BYAPPDT^BARDYSAP(BARY("DT",1),BARY("DT",2)) Q
 ;SEARCH BY EXPORT NUMBER FIELD .17 DATE RANGE ?
 ;I BARY("DT")="X" S TOTVSIT=$$EXPRANG(BARY("DT",1),BARY("DT",2)) Q
 Q
