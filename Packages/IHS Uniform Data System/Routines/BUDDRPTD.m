BUDDRPTD ; IHS/CMI/LAB - UDS REPORT PROCESSOR 05 Oct 2016 5:03 PM ;
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
 ;
GETV ;EP - get all visits for this patient and tally in BUDTV
 ;^TMP($J,"VISITS") has all visits
 ;^TMP($J,"VISITSUDSPT") for visit list for table 3A
 ;^TMP($J,"VISITSTABLE5") has all visits to count on table 5
 ;^TMP($J,"VISITSTABLE6A") has all visits for tables 6a dxs and services
 K ^TMP($J)
 S BUDUDSPT=0 ;controls whether the patient qualifies as a UDS patient
 S BUDMEDV=0  ;controls whether the patient had a medical visit & how many
 S BUDMEDVI=""  ;contains the IEN of a medical visit
 S BUDLASTV=""  ;contains the IEN of their last visit (table 5 eligible)
 S BUDFRSTV=""  ;contains the IEN of their first visit (uds patient eligible)
 S A="^TMP($J,""VISITS"",",B=DFN_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BUDBD)_"-"_$$FMTE^XLFDT(BUDED),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"VISITS",1)) Q  ;no visits so not a patient
 ;loop and determine if they are a UDS patient
 S BUDX=0 F  S BUDX=$O(^TMP($J,"VISITS",BUDX)) Q:BUDX'=+BUDX  S BUDVSIT=$P(^TMP($J,"VISITS",BUDX),U,5) D
 .Q:'$D(^AUPNVSIT(BUDVSIT,0))
 .Q:'$P(^AUPNVSIT(BUDVSIT,0),U,9)  ;0 dependent entries, not a visit
 .Q:$P(^AUPNVSIT(BUDVSIT,0),U,11)  ;deleted visit
 .S BUDVLOC=$P(^AUPNVSIT(BUDVSIT,0),U,6)  ;must be to a location in the site parameter file
 .Q:BUDVLOC=""
 .Q:'$D(^BUDDSITE(BUDSITE,11,BUDVLOC))  ;not valid location
 .Q:"AHSORMI"'[$P(^AUPNVSIT(BUDVSIT,0),U,7)  ;ignore cr/telephone/ events
 .S BUDCLINC=$$CLINIC^APCLV(BUDVSIT,"C")
 .S BUDTIEN=$O(^BUDDCNTL("B","UDS PT/TABLE 5 CLINIC EXCL",0))
 .I BUDCLINC]"",$D(^BUDDCNTL(BUDTIEN,11,"B",BUDCLINC)) Q  ;don't count UDS PATIENT CLINIC EXCLUSIONS
 .S BUDPP=$$PRIMPROV^APCLV(BUDVSIT,"I")  ;IEN of primary provider
 .I 'BUDPP Q  ;no primary provider
 .S BUDPPD=$$PRIMPROV^APCLV(BUDVSIT,"D")
 .I BUDPPD="" Q  ;has to have a discipline
 .I '$D(^AUPNVPOV("AD",BUDVSIT)) Q  ;must have at least 1 pov to elimiate orphans
 .S BUDUDSPT=BUDUDSPT+1
 .S ^TMP($J,"VISITSUDSPT",BUDVSIT)=""  ;THIS IS THE LIST FOR PAT LISTS FOR 3A, 3B, ZIP, 4
 .I $$VD^APCLV(BUDLASTV)<$$VD^APCLV(BUDVSIT) S BUDLASTV=BUDVSIT
 .I $$VD^APCLV(BUDVSIT)>$$VD^APCLV(BUDFRSTV) S BUDFRSTV=BUDVSIT
 Q:'BUDUDSPT  ;QUIT IF THEY HAVE NO VISITS FOR PATIENT DEFINITION
T5 ;now get visits for table 5 1 per provider type per day
 S BUDX=0 F  S BUDX=$O(^TMP($J,"VISITS",BUDX)) Q:BUDX'=+BUDX  S BUDVSIT=$P(^TMP($J,"VISITS",BUDX),U,5) D
 .Q:'$D(^AUPNVSIT(BUDVSIT,0))
 .Q:'$P(^AUPNVSIT(BUDVSIT,0),U,9)  ;0 dependent entries, not a visit
 .Q:$P(^AUPNVSIT(BUDVSIT,0),U,11)  ;deleted visit
 .S BUDVLOC=$P(^AUPNVSIT(BUDVSIT,0),U,6)  ;must be to a location int he site parameter file
 .Q:BUDVLOC=""
 .Q:'$D(^BUDDSITE(BUDSITE,11,BUDVLOC))  ;not valid location
 .Q:"AHSORMI"'[$P(^AUPNVSIT(BUDVSIT,0),U,7)  ;ignore cr/telephone
 .Q:'$D(^AUPNVPOV("AD",BUDVSIT))
 .S BUDCLINC=$$CLINIC^APCLV(BUDVSIT,"C")
 .S BUDTIEN=$O(^BUDDCNTL("B","UDS PT/TABLE 5 CLINIC EXCL",0))
 .I BUDCLINC]"",$D(^BUDDCNTL(BUDTIEN,11,"B",BUDCLINC)) Q  ;don't count excluded clinics
 .S BUDPP=$$PRIMPROV^APCLV(BUDVSIT,"I")  ;IEN of primary provider
 .I 'BUDPP Q  ;no primary provider
 .S BUDVDATE=$$VD^APCLV(BUDVSIT)
 .S BUDPPD=$$PRIMPROV^APCLV(BUDVSIT,"D") ;primary provider discipline
 .I BUDPPD="" Q  ;no discipline to check so can't count this visit
MEDC .;NOW CHECK FOR MEDICAL CARE, CAN ONLY HAVE 1 PER LOCATION OF ENCOUNTER
 .S S=0
 .S BUDTIEN=$O(^BUDDCNTL("B","MEDICAL CARE LINE NUMBERS",0))
 .I $E($$VAL^XBDIQ1(9000010,BUDVSIT,.06),1,3)="CHS",BUDPPD=15 S BUDLINE=2 G MEDC1
 .S BUDY=$O(^BUDDTFIV("C",BUDPPD,0)) I BUDY="" S BUDLINE=35 G MEDC1
 .S BUDLINE=$O(^BUDDTFIV("AA",BUDPPD,""))
MEDC1 .S S=0
 .I $D(^BUDDCNTL(BUDTIEN,11,"B",BUDLINE)) D
 ..S D=$P($G(^TMP($J,"MEDCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already have a medical care visit on this date
 ..S ^TMP($J,"MEDCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 ..S BUDMEDV=BUDMEDV+1,BUDMEDVI=BUDVSIT
 .Q:S  ;don't count this one, already counted one medical
DENT .;NOW CHECK FOR DENTAL CARE
 .S S=0
 .S BUDTIEN=$O(^BUDDCNTL("B","DENTAL LINE NUMBERS",0))
 .S S=0
 .I $D(^BUDDCNTL(BUDTIEN,11,"B",BUDLINE)) D
 ..S D=$P($G(^TMP($J,"DENTCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already have a DENTAL care visit on this date
 ..S ^TMP($J,"DENTCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S  ;don't count this one, already counted one DENTAL
MH .;NOW CHECK FOR MH CARE
 .S S=0
 .S BUDTIEN=$O(^BUDDCNTL("B","MENTAL HEALTH LINE NUMBERS",0))
 .S P=$$PRIMPOV^APCLV(BUDVSIT,"C")
 .I $E(P,1,3)=303!($E(P,1,3)="304")!($E(P,1,3)="305") G SUB
 .S S=0
 .I $D(^BUDDCNTL(BUDTIEN,11,"B",BUDLINE)) D
 ..S D=$P($G(^TMP($J,"MHCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already have a MH care visit on this date
 ..S ^TMP($J,"MHCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S  ;don't count this one, already counted one MH
SUB .;
 .S S=0
 .S BUDTIEN=$O(^BUDDCNTL("B","SUBSTANCE LINE NUMBERS",0))
 .S S=0
 .I $D(^BUDDCNTL(BUDTIEN,11,"B",BUDLINE)) D
 ..S D=$P($G(^TMP($J,"SUBCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already have a SUB care visit on this date
 ..S ^TMP($J,"SUBCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S  ;don't count this one, already counted one SUBSTANCE
VISION .;
 .S S=0
 .S BUDTIEN=$O(^BUDDCNTL("B","VISION LINE NUMBERS",0))
 .S S=0
 .I $D(^BUDDCNTL(BUDTIEN,11,"B",BUDLINE)) D
 ..S D=$P($G(^TMP($J,"VISIONCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already have a VISION care visit on this date
 ..S ^TMP($J,"VISIONCARE",DFN,BUDVDATE,BUDVLOC,BUDTIEN)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S  ;don't count this one, already counted one VISION
OTH .;can have only 1 in each category
 .S BUDTIEN=$O(^BUDDTFIV("B",22,0))
 .S S=0
 .I $D(^BUDDTFIV(BUDTIEN,11,"B",BUDPPD)) D
 ..S D=$P($G(^TMP($J,"OTHSERV",DFN,BUDVDATE,BUDVLOC,BUDPPD)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q
 ..S ^TMP($J,"OTHSERV",DFN,BUDVDATE,BUDVLOC,BUDPPD)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S
ENAB .;NOW CHECK FOR ENABLING
 .S S=0
 .S BUDTIEN=$O(^BUDDCNTL("B","ENABLING LINE NUMBERS",0))
 .I $D(^BUDDCNTL(BUDTIEN,11,"B",BUDLINE)) D
 ..S D=$P($G(^TMP($J,"ENABCARE",DFN,BUDVDATE,BUDVLOC,BUDPPD)),U,1)
 ..I D]"",D'>$P(^AUPNVSIT(BUDVSIT,0),U) S S=1 Q  ;already have a ENABLING care visit on this date
 ..S ^TMP($J,"ENABCARE",DFN,BUDVDATE,BUDVLOC,BUDPPD)=$P(^AUPNVSIT(BUDVSIT,0),U)_U_BUDVSIT
 .Q:S   ;don't count this one, already counted onE ENABLING
SET .;
 .S ^TMP($J,"VISITSTABLE5",BUDVSIT)=""  ;USED IN TABLE 5
 ;NOW TABLE 6A
A6 S BUDX=0 F  S BUDX=$O(^TMP($J,"VISITS",BUDX)) Q:BUDX'=+BUDX  S BUDVSIT=$P(^TMP($J,"VISITS",BUDX),U,5) D
 .Q:'$D(^AUPNVSIT(BUDVSIT,0))
 .Q:'$P(^AUPNVSIT(BUDVSIT,0),U,9)  ;0 dependent entries, not a visit
 .Q:$P(^AUPNVSIT(BUDVSIT,0),U,11)  ;deleted visit
 .S BUDVLOC=$P(^AUPNVSIT(BUDVSIT,0),U,6)  ;must be to a location int he site parameter file
 .Q:BUDVLOC=""
 .Q:'$D(^BUDDSITE(BUDSITE,11,BUDVLOC))  ;not valid location
 .Q:"AHSORMI"'[$P(^AUPNVSIT(BUDVSIT,0),U,7)  ;ignore cr/telephone/events
 .S BUDCLINC=$$CLINIC^APCLV(BUDVSIT,"C")
 .S BUDTIEN=$O(^BUDDCNTL("B","TABLE 6A CLINIC EXCLUSIONS",0))
 .I BUDCLINC]"",$D(^BUDDCNTL(BUDTIEN,11,"B",BUDCLINC)) Q  ;don't count excluded clinics
 .;S BUDP=$$PRIMPROV^APCLV(BUDVSIT) Q:'BUDP  ;no primary provider - WHAT ABOUT ORPHANS FOR LAB/RAD/IMM
 .;COUNT ONLY 1 INPATIENT VISIT PER DAY
 .I $P(^AUPNVSIT(BUDVSIT,0),U,7)="H",$D(^TMP($J,"H",DFN,$$VD^APCLV(BUDVSIT))) Q
 .I $P(^AUPNVSIT(BUDVSIT,0),U,7)="H" S ^TMP($J,"H",DFN,$$VD^APCLV(BUDVSIT))=""
 .S ^TMP($J,"VISITSTABLE6A",BUDVSIT)=""
 ;now get all mamms and paps in date range and count as orphans if at this facility and no mam on that date in pcc
 S T="MAMMOGRAM SCREENING",T=$O(^BWPN("B",T,0))
 S T1="MAMMOGRAM DX BILAT",T1=$O(^BWPN("B",T1,0))
 S T2="MAMMOGRAM DX UNILAT",T2=$O(^BWPN("B",T2,0))
 D
 .S (G,V)=0 F  S V=$O(^BWPCD("C",DFN,V)) Q:V=""  D
 ..Q:'$D(^BWPCD(V,0))
 ..S D=$P(^BWPCD(V,0),U,12)
 ..S J=$P(^BWPCD(V,0),U,4) I J=T!(J=T1)!(J=T2) D  Q
 ...Q:D<BUDBD
 ...Q:D>BUDED
 ...S L=$P(^BWPCD(V,0),U,10)
 ...Q:L=""
 ...Q:'$D(^BUDDSITE(BUDSITE,11,L))  ;not valid location
 ...Q:$P($G(^BWPCD(V,"PCC")),U,1)]""  ;already in pcc
 ...S ^TMP($J,"MAMMS",V)="WH "_$$VAL^XBDIQ1(9002086.1,V,.04)_U_$$FMTE^XLFDT(D)
 .Q
 S T="PAP SMEAR",T=$O(^BWPN("B",T,0))
 D
 .S (G,V)=0 F  S V=$O(^BWPCD("C",DFN,V)) Q:V=""  D
 ..Q:'$D(^BWPCD(V,0))
 ..S D=$P(^BWPCD(V,0),U,12)
 ..S J=$P(^BWPCD(V,0),U,4) I J=T D  Q
 ...Q:D<BUDBD
 ...Q:D>BUDED
 ...S L=$P(^BWPCD(V,0),U,10)
 ...Q:L=""
 ...Q:'$D(^BUDDSITE(BUDSITE,11,L))  ;not valid location
 ...Q:$P($G(^BWPCD(V,"PCC")),U,1)]""  ;already in pcc
 ...S ^TMP($J,"PAPS",V)="WH "_$$VAL^XBDIQ1(9002086.1,V,.04)_U_$$FMTE^XLFDT(D)
 .Q
 Q
TZH ;EP
 Q:BUDROT="D"
 G:'BUDGPG TZH1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
TZH1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS)  ***",80)
 W !,$$CTR("Patient List: Patient by Zip Code/Insurance",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 W !,"List of all patients with one or more visits during the calendar year."
 I BUDP=0 W !,"Zip code is from patient registration."
 I BUDP=0 W !!,"NOTE:  Patients with a zip code included in the Other Zip Codes category"
 I BUDP=0 W !,"have their zip code value followed by a ""","*",""" (e.g. 87015*)."
 W !!,"PATIENT NAME",?24,"HRN",?36,"COMMUNITY",?50,"SEX",?55,"ZIP CODE",?65,"INS"
 W !?5,"VISIT DATE",?25,"PROV TYPE",?41,"SRV",?45,"CLINIC",?62,"LOCATION"
 S BUDP=1
 W !,$TR($J("",80)," ","-")
 Q
CTR(X,Y) ;EP
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;
WDEL ;EP - write out delimited file 9d
 ;call xbgsave to create output file
 S XBGL="BUDDATA"
 L +^BUDDATA:300 E  W:'$D(ZTQUEUED) "Unable to lock global" Q
 K ^TMP($J,"SUMMARYDEL")
 K ^BUDDATA ;global for saving
 S X="DATE^BILL (A/R)^TRANSACTION TYPE^CREDIT^DEBIT^PRIME BILL AMOUNT^PAYMENT^ADJUSTMENT^ADJUSTMENT CATEGORY^ADJUSTMENT TYPE^A/R ACCOUNT^PATIENT (A/R)^VISIT LOCATION^CLINIC TYPE^DOS BEGIN^BILL TYPE^PRIMARY PROVIDER^"
 S X=X_"HRN^DOB^COMMUNITY"
 S ^BUDDATA(1)=X
 S D=0,C=1 F  S D=$O(^XTMP("BUDARP9DEL",BUDJ,BUDH,D)) Q:D'=+D  D
 .S X=0 F  S X=$O(^XTMP("BUDARP9DEL",BUDJ,BUDH,D,X)) Q:X'=+X  D
 ..S C=C+1 S ^BUDDATA(C)=^XTMP("BUDARP9DEL",BUDJ,BUDH,D,X)
 S XBFLT=1,XBFN=BUDFILE_".txt",XBMED="F",XBTLE="UDS TABLE 9D DELIMITED",XBQ="N",XBF=0
 D ^XBGSAVE
 K XBFLT,XBFN,XBMED,XBTLE,XBE,XBF
 L -^BUDDATA
 K ^BUDDATA ;export global
 Q
LOTE(P,V) ;
 ;if prim lang=other than english
 ;interpreter = yes AND
 ;preferred = other than english
 NEW X,%,Y,D,L,PL,IR,RL
 S D=$$VD^APCLV(V)
 S %=0,X=0 S (Y,L,PL,IR,RL)=""
 F  S X=$O(^AUPNPAT(P,86,"B",X)) Q:X'=+X!(X>D)  S Y=0 F  S Y=$O(^AUPNPAT(P,86,"B",X,Y)) Q:Y'=+Y  S L=Y  ;get last one
 I 'L Q 0  ;no data recorded
 I $P($G(^AUPNPAT(P,86,L,0)),U,3)'="Y" Q 0  ;INTERPRETER NOT REQUIRED SO DON'T COUNT
 S PL=$P($G(^AUPNPAT(P,86,L,0)),U,1)
 I 'PL Q 0  ;NO PRIM LANG
 I $$VAL^XBDIQ1(9999999.99,PL,.01)="ENGLISH" Q 0
 S PL=$P($G(^AUPNPAT(P,86,L,0)),U,4)
 I 'PL Q 0  ;NO PREF LANG
 I $$VAL^XBDIQ1(9999999.99,PL,.04)="ENGLISH" Q 0
 Q 1
TZHD ;EP
 D S("***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS)  ***")
 D S("Patient List: Patient by Zip Code/Insurance")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D S(" ")
 D S("List of all patients with one or more visits during the calendar year.")
 D S("Zip code is from patient registration.")
 D S("NOTE:  Patients with a zip code included in the Other Zip Codes category")
 S X="have their zip code value followed by a '*' (e.g. 87015*)." D S(X)
 D S(" "),S("PATIENT NAME^HRN^COMMUNITY^SEX^ZIP CODE^INSURANCE^VISIT DATE^PROV TYPE^SRV^CLINIC^LOCATION")
 Q
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
 Q
SAVEDEL ;EP
 I BUDDELT="S" D SCREEN Q
 ;call xbgsave to create output file
 S XBGL="BUDDATA"
 L +^BUDDATA:300 E  W:'$D(ZTQUEUED) "Unable to lock global" Q
 K ^TMP($J,"SUMMARYDEL")
 K ^BUDDATA ;global for saving
 S X=0,C=0 F  S X=$O(^TMP($J,"BUDDEL",X)) Q:X'=+X  S C=C+1 S ^BUDDATA(C)=^TMP($J,"BUDDEL",X)
 D
 .S XBFLT=1,XBFN=BUDDELF_".txt",XBMED="F",XBTLE="UDS DELIMITED OUTPUT",XBQ="N",XBF=0
 .D ^XBGSAVE
 .K XBFLT,XBFN,XBMED,XBTLE,XBE,XBF
 L -^BUDDATA
 K ^BUDDATA ;export global
 K ^TMP($J,"BUDDEL")
 Q
 ;
SCREEN ;
 S X=0 F  S X=$O(^TMP($J,"BUDDEL",X)) Q:X'=+X  W !,^TMP($J,"BUDDEL",X)
 Q
T6DH ;EP
 D S(""),S(""),S("")
 D S("***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****")
 D S($P(^VA(200,DUZ,0),U,2)_"       "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS)  ***")
 D S("Patient List for Table 6A, By Diagnosis Category")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D S(" ")
 D S("List of all patients, sorted by diagnosis and tests/screening")
 D S("categories.  Displays community, gender, age and visit data, and codes.")
 D S("* (R) - denotes the value was obtained from the Race field")
 D S("  (C) - denotes the value was obtained from the Classification/Beneficiary field")
 ;D S("Age is calculated as of June 30.")
 D S("")
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^RACE*^VISIT DATE^VALUE^SRV^CLINIC^LOCATION")
 Q
