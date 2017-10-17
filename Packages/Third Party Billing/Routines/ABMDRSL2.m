ABMDRSL2 ; IHS/ASDST/DMJ - Selective Report Parameters-PART 3 ;
 ;;2.6;IHS 3P BILLING SYSTEM;**14,21**;NOV 12, 2009;Build 379
 ;Original;TMD;
 ;
 ; IHS/SD/SDR - v2.5 p8 - task 12
 ;   Added code so only brief and statistical will be asked
 ;   for pending report
 ;
 ; IHS/SD/SDR - v2.6 CSV
 ;IHS/SD/SDR - 2.6*14 - ICD10 009 - Updated reports to look for ICD10 codes
 ;IHS/SD/SDR - 2.6*14 - HEAT165197 (CR3109) - Added code for $$NUM to validate alphanumeric values
 ;IHS/SD/SDR - 2.6*21 - HEAT140244 - Made change so extended report will print for cancelled claims report
 ;IHS/SD/SDR - 2.6*21 - HEAT214020 - Updated prompts for ICD-9 codes to actually say ICD-9, not just ICD
 ;IHS/SD/SDR - 2.6*21 - HEAT241429 - Added prompt for PRINTER vs COMMA-DELIMITED
 ;
PTYP ;EP
 K DIR
 S DIR(0)="SO^1:INDIAN BENEFICIARY PATIENTS;2:NON-BENEFICIARY PATIENTS"
 S DIR("A")="Select the PATIENT ELIGIBILITY STATUS"
 S DIR("?")="Selection of an Eligibility Status will restrict the report to only those visits in which the patient is of the type designated."
 D ^DIR
 K DIR
 Q:$D(DIRUT)
 S ABMY("PTYP")=Y
 S ABMY("PTYP","NM")=Y(0)
 Q
 ;
RTYP ;EP
 K DIR
 S DIR(0)="SO^1:BRIEF LISTING (80 Width);2:EXTENDED LISTING (132 Width);3:STATISTICAL SUMMARY ONLY"_$S($D(ABM("COST")):";4:ITEMIZED COST REPORT",1:"")
 I $G(ABM("REASON"))="PEND" S DIR(0)="SO^1:BRIEF LISTING (80 Width);2:STATISTICAL SUMMARY ONLY"
 S DIR("A")="Select TYPE of LISTING to Display"
 D ^DIR
 K DIR
 Q:$D(DIRUT)
 S ABM("RTYP")=Y
 S ABM("RTYP","NM")=Y(0)
 K ABM(132)
 ;I $D(ABM("REASON")),(Y=2) S (Y,ABM("RTYP"))=3 ;abm*2.6*21 IHS/SD/SDR HEAT140244
 I $D(ABM("REASON")),$G(ABM("REASON"))="PEND",(Y=2) S (Y,ABM("RTYP"))=3 ;abm*2.6*21 IHS/SD/SDR HEAT140244
 I Y=2 S ABM(132)="" Q
 I Y>2,+$G(ABMP("TYP"))'=0 S ABM(132)=""
 Q
 ;
DX ;EP
 ;start old code abm*2.6*14 ICD10 009
 ;K DIR,ABMY("DX")
 ;W !!,"ENTRY of ICD DIAGNOSIS RANGE:",!,"============================="
 ;end old code start new code ICD10 009
 K ABMY("DX"),ABM("DX")
 D ^XBFMK
 W !!,"ENTRY of ICD DIAGNOSIS RANGE:",!,"============================="
 I '$D(^DIC(9.8,"B","ICDEX")) D DLOW Q  ;if ICD-10 codes aren't present
 S DIR(0)="S^9:ICD-9;10:ICD-10;B:Both coding versions"
 S DIR("A")="Select ICD Version "
 D ^DIR
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 S ABMY("DXANS")=Y
 ;if 9 or both
 I ABMY("DXANS")'=10 D ^XBFMK,DLOW
 ;if 10 or both
 I ABMY("DXANS")'=9 D ^XBFMK,DLOW10
 Q
 ;end new code ICD10 009
 ;
DLOW ;
 S DIR(0)="PO^80:QEAM"
 I $D(^DIC(9.8,"B","ICDEX")) S DIR("S")="I $P($$DX^ABMCVAPI(+Y,""""),U,20)=1"  ;abm*2.6*14 ICD10 009 and update API call
 ;S DIR("A")="Low ICD Code"  ;abm*2.6*21 IHS/SD/SDR HEAT214020
 S DIR("A")="Low ICD-9 Code"  ;abm*2.6*21 IHS/SD/SDR HEAT214020
 D ^DIR
 K DIR
 Q:$D(DIRUT)
 G DLOW:+Y<1
 ;S ABMY("DX",1)=$P($$DX^ABMCVAPI(+Y,""),U,2)  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 S ABM("DX",1)=$P($$DX^ABMCVAPI(+Y,""),U,2)  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 S ABMY("DX",1)=$$NUM^ABMCVAPI($P($$DX^ABMCVAPI(+Y,""),U,2))  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 ;
DHI ;
 S DIR(0)="PO^80:QEAM"
 I $D(^DIC(9.8,"B","ICDEX")) S DIR("S")="I $P($$DX^ABMCVAPI(Y,""""),U,20)=1"  ;abm*2.6*14 ICD10 009 and update API call
 ;S DIR("A")="High ICD Code"  ;abm*2.6*21 IHS/SD/SDR HEAT214020
 S DIR("A")="High ICD-9 Code"  ;abm*2.6*21 IHS/SD/SDR HEAT214020
 D ^DIR
 K DIR
 G DX:$D(DIRUT)
 G DHI:+Y<1
 ;S ABMY("DX",2)=$P($$DX^ABMCVAPI(+Y,""),U,2)  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 S ABM("DX",2)=$P($$DX^ABMCVAPI(+Y,""),U,2)  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 S ABMY("DX",2)=$$NUM^ABMCVAPI($P($$DX^ABMCVAPI(+Y,""),U,2))  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 I ABMY("DX",1)>ABMY("DX",2)!('+ABMY("DX",1)&($E(ABMY("DX",1),2,9)>$E(ABMY("DX",2),2,9))) W !!,*7,"INPUT ERROR: Low Diagnosis is Greater than than the High, TRY AGAIN!",!! G DX
 W !
 S DIR(0)="S^A:ALL DIAGNOSIS;P:PRIMARY DIAGNOSIS ONLY"
 S DIR("B")="A"
 S DIR("A")="For each visit, Check [A]ll Diagnosis or just the [P]rimary"
 S DIR("?")="Enter either 'A' to have ALL of the Diagnosis checked for consistency with the range specified, or 'P' for checking just the Primary Diagnosis."
 D ^DIR
 Q:$D(DIRUT)
 S:Y="A" ABMY("DX","ALL")=""
 Q
 ;
 ;start new code abm*2.6*14 ICD10 009
DLOW10 ;
 S DIR(0)="PO^80:QEAM"
 S DIR("S")="I $P($$DX^ABMCVAPI(+Y),U,20)=30"
 S DIR("A")="Low ICD-10 Code"
 D ^DIR
 K DIR
 Q:$D(DIRUT)
 G DLOW10:+Y<1
 ;S ABMY("DX",3)=$P($$DX^ABMCVAPI(+Y,""),U,2)  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 S ABM("DX",3)=$P($$DX^ABMCVAPI(+Y,""),U,2)  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 S ABMY("DX",3)=$$NUM^ABMCVAPI($P($$DX^ABMCVAPI(+Y,""),U,2))  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 ;
DHI10 ;
 S DIR(0)="PO^80:QEAM"
 S DIR("S")="I $P($$DX^ABMCVAPI(+Y),U,20)=30"
 S DIR("A")="High ICD-10 Code"
 D ^DIR
 K DIR
 G DX:$D(DIRUT)
 G DHI10:+Y<1
 ;S ABMY("DX",4)=$P($$DX^ABMCVAPI(+Y,""),U,2)  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 S ABM("DX",4)=$P($$DX^ABMCVAPI(+Y,""),U,2)  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 S ABMY("DX",4)=$$NUM^ABMCVAPI($P($$DX^ABMCVAPI(+Y,""),U,2))  ;CSV-c  ;abm*2.6*14 HEAT165197 (CR3109)
 ;I ABMY("DX",3)>ABMY("DX",4)!('+ABMY("DX",3)&($E(ABMY("DX",3),2,9)>$E(ABMY("DX",4),2,9))) W !!,*7,"INPUT ERROR: Low Diagnosis is Greater than than the High, TRY AGAIN!",!! G DX  ;abm*2.6*14
 I ABMY("DX",3)>ABMY("DX",4) W !!,*7,"INPUT ERROR: Low Diagnosis is Greater than than the High, TRY AGAIN!",!! G DX  ;abm*2.6*14
 W !
 S DIR(0)="S^A:ALL DIAGNOSIS;P:PRIMARY DIAGNOSIS ONLY"
 S DIR("B")="A"
 S DIR("A")="For each visit, Check [A]ll Diagnosis or just the [P]rimary"
 S DIR("?")="Enter either 'A' to have ALL of the Diagnosis checked for consistency with the range specified, or 'P' for checking just the Primary Diagnosis."
 D ^DIR
 Q:$D(DIRUT)
 S:Y="A" ABMY("DX10","ALL")=""
 Q
 ;end new code ICD10 009
 ;
PX ;EP
 K DIR,ABMY("PX")
 W !!,"ENTRY of CPT PROCEDURE RANGE:",!,"============================="
 ;
PLOW ;
 S DIR(0)="PO^81:QEAM"
 S DIR("A")="Low CPT Code"
 D ^DIR
 K DIR
 Q:$D(DIRUT)
 G PLOW:+Y<1
 S ABMY("PX",1)=$P($$CPT^ABMCVAPI(+Y,""),U,2)  ;CSV-c
 ;
PHI ;
 S DIR(0)="PO^81:QEAM"
 S DIR("A")="High CPT Code"
 D ^DIR
 K DIR
 G PX:$D(DIRUT)
 G PHI:+Y<1
 S ABMY("PX",2)=$P($$CPT^ABMCVAPI(+Y,""),U,2)  ;CSV-c
 I ABMY("PX",1)>ABMY("PX",2) W !!,*7,"INPUT ERROR: Low CPT Code is Greater than than the High, TRY AGAIN!",!! G PX
 Q
 ;
 ;start new abm*2.6*21 IHS/SD/SDR HEAT241429
RFOR ;EP
 K DIR
 S DIR(0)="SO^1:Printer;2:Comma-Delimited (for Excel Importing)"
 S DIR("A")="Select TYPE of Output"
 D ^DIR
 K DIR
 Q:$D(DIRUT)
 S ABM("RFOR")=Y
 S ABM("RFOR","NM")=Y(0)
 I ABM("RFOR")=1 Q  ;stop here if printer
 ;ask path and filename
 K DIR
 S DIR(0)="F"
 S DIR("A")="Path"
 D ^DIR
 K DIR
 Q:$D(DIRUT)
 S ABM("RPATH")=Y
 K DIR
 S DIR(0)="F"
 S DIR("A")="Filename"
 D ^DIR
 K DIR
 Q:$D(DIRUT)
 S ABM("RFN")=Y
 Q
 ;end new abm*2.6*21 IHS/SD/SDR HEAT241429
