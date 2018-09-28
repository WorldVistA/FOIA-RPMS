BARRASM2 ; IHS/SD/LSL - Age Summary Report by Fiscal Year ; 09/15/2008
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**7,28**;OCT 26, 2005;Build 92
 ;New routine MRS:BAR*1.8*7 TO131 REQ_2
 ;IHS/SD/AML 1.8*28 CR8351 HEAT296731 Changed USM UAGE call to use 3P Approval Date, not Billed Date
 ;IHS/SD/SDR 1.8*28 CR8350 HEAT295594 Changed prompt for FY to prompt for a range of FYs and print as one report.
 ;   Thanks to Jonathan Hubbard, Portland, for the code.  Note, it is not the original code he provided.  Had to
 ;   modify some to allow for prompts not being answered, and to allow a single FY to still be selected.
 ;IHS/SD/AML 1.8*28 CR8351 HEAT296731 Made change so last day of fiscal year will be included by making end date 0930.999999
 Q
 ; *********************************************************************
EN ; EP
 K BARY,BAR
 D:'$D(BARUSR) INIT^BARUTL   ;Set up basic A/R Variables
 N BARA
 ;S BARA=$$GETFY  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 D GETFY  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 ;Q:BARA=0                  ;Returns string  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 Q:Y=""  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 I $D(DTOUT)!$D(DUOUT)!$D(DIROUT) Q  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 ;S BARP("UAGE")=BARA        ;Save FY range  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 ;D EN^BARRASM  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 ;start new bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 S BAR("LOC")=$$GET1^DIQ(90052.06,DUZ(2),16)   ; BILLING or VISIT
 I BAR("LOC")="" S BAR("LOC")="VISIT"
 D ASK^BARRASMA
 W !!,"This report is designed to be session logged or sent to a ",!     ;IHS/DIT/CPC - 20180502 CR8350
 W "host file server device with no pauses between reports or full",!   ;IHS/DIT/CPC - 20180502 CR8350
 W "screens of information so please take appropriate steps to ",!    ;IHS/DIT/CPC - 20180502 CR8350
 W "allow viewing of the entire report.",!    ;IHS/DIT/CPC - 20180502 CR8350
 D EOP^BARUTL(0) ;-PAUSE IHS/DIT/CPC - 20180502 CR8350
 I $D(DTOUT)!$D(DUOUT)!$D(DIROUT) Q  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 M BARTBARY=BARY
 M BARTBAR=BAR
 D ^%ZIS
 Q:POP
 U IO
 ;S IOSL=999999  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594 ;IHS/DIT/CPC - 20180502 CR8350
 ;
 S BARI=0
 F  S BARI=$O(BARA(BARI)) Q:'BARI  D
 .Q:BARI=""
 .S BARA=BARA(BARI)
 .S BARP("UAGE")=BARA          ;Save FY range
 .D:'$D(BARUSR) INIT^BARUTL           ;Set up basic A/R Variables
 .S BARP("RTN")="BARRASM"             ;Routine used to gather data
 .S BAR("PRIVACY")=1                  ;Privacy act applies (used BARRHD)
 .S BAR("LOC")=$$GET1^DIQ(90052.06,DUZ(2),16)   ; BILLING or VISIT
 .I BAR("LOC")="" S BAR("LOC")="VISIT"
 .;I '$D(BARA) D ASK^BARRASMA          ;Ask all question but only if not USM report  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 .I $D(DTOUT)!$D(DUOUT)!$D(DIROUT) Q
 .K BAR("LINE")   ;IHS/DIT/CPC - 20180502 CR8350
 .S $P(BAR("LINE"),"-",10)=""  ;IHS/DIT/CPC - 20180502 CR8350
 .W !!,BAR("LINE")_"Searching FY "_$P(BARP("UAGE"),U)_" "_BAR("LINE"),!!   ;IHS/DIT/CPC - 20180502 CR8350
 .D SETHDR^BARRASM                    ;Build header array
 .D COMPUTE^BARRASM      ;Build tmp global with data
 .D PRINT^BARRASMB       ;Print reports from tmp global
 .M BARY=BARTBARY
 .M BAR=BARTBAR
 D ^%ZISC,HOME^%ZIS
 ;end new bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 Q
 ; *********************************************************************
GETFY ;FIND FISCAL YEAR FOR REPORT  ;removed function  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 ;N BARA,BARFY,BARBEG,BAREND,BARZ  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 K BARA,BARFY,BARBEG,BAREND,BARZ  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 S BARA=$$FISCAL^XBDT()              ;GET CURRENT FISCAL YEAR
 S BARFY=$P(BARA,U)
 D ^XBFMK                            ;KILL FM VARIABLES
 ;S DIR(0)="FOU^4:4^K:$$UPC^BARUTL(X)'?1""BULK""&($$UPC^BARUTL(X)'?1""FY""2N) X"  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 S DIR(0)="FOU^4:9^K:$$UPC^BARUTL(X)'?1""BULK""&($$UPC^BARUTL(X)'?1""FY""2N)&($$UPC^BARUTL(X)'?1""FY""2N1""-FY""2N) X"  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 ;S DIR("S")="I $$UPC^BARUTL(X)?1""BULK""!($$UPC^BARUTL(X)?1""FY""2N)"
 ;S DIR("?",1)="BULK is limited to Billed Dates before 10/1/2008 and"
 ;S DIR("?",2)="corresponds to the BULK Invoices in UFMS"
 ;S DIR("?",3)="FY## allows you to enter a specific Fiscal Year"
 ;S DIR("?",4)="Type in FY followed by the two digit year"
 S DIR("A")="Enter FISCAL YEAR for the Report"
 ;start old bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 ;S DIR("A",1)="Enter BULK for Billed Date prior to 10/1/2008"
 ;S DIR("A",2)="Enter FYnn for specific Fiscal Year e.g. FY"_$E(BARFY,3,4)
 ;S DIR("A",3)=""
 ;S DIR("B")="BULK"
 ;end old start new bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 S DIR("A",1)="BULK for Billed Date prior to 10/1/2008 will run automatically."
 S DIR("A",2)="Enter FYnn-FYnn for a range of Fiscal Years e.g. FY09-FY12 "
 S DIR("A",3)=""
 S DIR("B")="FY08-FY"_$E(BARFY,3,4)
 ;end new bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 W !!
 D ^DIR
 ;I $D(DIRUT)!$D(DUOUT)!$D(DTOUT)!(Y="") Q 0  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 I $D(DIRUT)!$D(DUOUT)!$D(DTOUT)!(Y="") Q  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 I $L(Y)=4 S (BARSFY,BAREFY)=$E(Y,3,4) ;if only one FY selected  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 S:Y["-" BARSFY=$E(Y,3,4),BAREFY=$E(Y,8,9)  ;range start and end FYs  ;bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 ;start old bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 ;S BARZ=$$UPC^BARUTL(Y)
 ;I BARZ="BULK" D  Q BARA
 ;.S BARA=BARZ_"^2571001^3081001"           ;Everything prior to Go Live date
 ;S BARZ=$E(BARZ,3,4)
 ;I BARZ=$E(BARFY,3,4) Q BARA                ;Current Fiscal Year
 ;S BARFY=$S(BARZ<40:(20_BARZ),1:(19_BARZ))  ;Change to 4 digits
 ;S BARA=BARFY_U_(BARFY-1700-1)_"1001"_U_(BARFY-1700)_"0930"  ;Build DT-type string
 ;Q BARA
 ;end old start new bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 F BARCFY=BARSFY:1:BAREFY  D
 .S BARZ=BARCFY
 .S:$L(BARZ)=1 BARZ="0"_BARZ
 .S BARFY=$S(BARZ<40:(20_BARZ),1:(19_BARZ))  ;Change to 4 digits
 .S BARA(BARCFY)=BARFY_U_(BARFY-1700-1)_"1001"_U_(BARFY-1700)_"0930.999999"  ;Build DT-type string  ;bar*1.8*28 IHS/SD/AML CR8351 HEAT296731
 .S:$P(BARA(BARCFY),U,1)=$P(BARA,U) BARA(BARCFY)=BARA
 ;end new bar*1.8*28 IHS/SD/SDR CR8350 HEAT295594
 ;
UAGE(BAR) ;EP; EXTRINSIC FUNCTION
 ; Enters with BAR=DA of A/R Bill fille
 ;             BARP("UAGE")=Fiscal year string
 I 'BAR Q 0
 N BARBEG,BAREND,BAR0
 S BARBEG=$P(BARP("UAGE"),U,2)
 S BAREND=$P(BARP("UAGE"),U,3)
 ;S BAR0=$P($G(^BARBL(DUZ(2),BAR,0)),U,7)  ;BILLED DATE  ;bar*1.8*28 IHS/SD/AML CR8351 HEAT296731
 S BAR0=$P($G(^BARBL(DUZ(2),BAR,0)),U,18)  ;3P APPROVE DATE  ;bar*1.8*28 IHS/SD/AML CR8351 HEAT296731
 I BAR0="" Q 0                    ;No bill
 I BAR0<BARBEG!(BAR0>BAREND) Q 0  ;Not within Fiscal Year range
 Q 1
