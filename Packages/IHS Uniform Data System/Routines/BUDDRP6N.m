BUDDRP6N ; IHS/CMI/LAB - UDS REPORT ;
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
K ;EP ;CRC
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 S BUD50RB=($E(BUDBD,1,3)-50)_"1231"
 S BUD75RB=($E(BUDBD,1,3)-75)_"0101"
 Q:BUDDOB<BUD75RB
 Q:BUDDOB>BUD50RB
 Q:BUDMEDV<1
 Q:$$CRC(DFN,BUDED)
 S BUDDRCT=$$SCREEN(DFN,,BUDED)
 I BUDDRCT]"" S BUDSECTK("CRC")=$G(BUDSECTK("CRC"))+1
 S BUDDRCL=""
 S BUDSECTK("PTS")=$G(BUDSECTK("PTS"))+1 D
 .I $G(BUDDRC2L) D
 ..I BUDDRCT="" D LAST S ^XTMP("BUDDRP6B",BUDJ,BUDH,"CRC2",BUDAGE,$P(^DPT(DFN,0),U),BUDCCOM,DFN)=$P(BUDDRCL,U)
 .I $G(BUDDRC1L) D
 ..I BUDDRCT]"" S ^XTMP("BUDDRP6B",BUDJ,BUDH,"CRC1",BUDAGE,$P(^DPT(DFN,0),U),BUDCCOM,DFN)=$P(BUDDRCT,U)
 Q
LAST ;
 NEW LAST,COLO,SIG,FOBT
 S BUDDRCL=""
 S COLO=$$COLO(DFN,$$DOB^AUPNPAT(DFN),BUDED)
 S BUDDRCL=COLO
 S SIG=$$SIG(DFN,$$DOB^AUPNPAT(DFN),BUDED)
 I $P(SIG,U,2)>$P(BUDDRCL,U,2) S BUDDRCL=SIG
 S FOBT=$$FOB(DFN,$$DOB^AUPNPAT(DFN),BUDED)
 I $P(FOBT,U,2)>$P(BUDDRCL,U,2) S BUDDRCL=FOBT
 Q
SCREEN(P,BDATE,EDATE) ;
 NEW BUDDOLO,BUDSIG,BUDFOB
 S BUDDOLO=$$COLO(DFN,,EDATE)
 I BUDDOLO]"" Q BUDDOLO
 S BUDSIG=$$SIG(DFN,,EDATE)
 I BUDSIG]"" Q BUDSIG
 S BUDFOB=$$FOB(P,,EDATE)
 I BUDFOB]"" Q BUDFOB
 Q ""
CRC(P,EDATE) ;EP
 NEW BUDVS,TIEN,CTR,VIEN,VDATE,X,Y,Z,BUDTOB,BDATE
 S BDATE=$$DOB^AUPNPAT(P)
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")
 S BUDTOB=0
 S TIEN=$O(^BUDDTSSC("B","T6B CRC CANCER CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR!(BUDTOB)  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .;POV/SNOMED
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X!(BUDTOB)  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.07,X,.01) I $D(^BUDDTSSC("AD",Y,TIEN)) S BUDTOB=1 Q
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AS",Y,TIEN)) S BUDTOB=1 Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X!(BUDTOB)  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S BUDTOB=1 Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X!(BUDTOB)  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S BUDTOB=1 Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X!(BUDTOB)  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDDTSSC("AP",Y,TIEN)) S BUDTOB=1 Q
 I BUDTOB Q 1
 S Y=$$PLCL^BUDDDU(P,"T6B CRC CANCER CODES",EDATE,0)
 I Y Q 1
 Q ""
SIG(P,BDATE,EDATE) ;EP
 NEW BUDVS,TIEN,CTR,VIEN,VDATE,X,Y,Z,BUDTOB
 I $G(BDATE)="" S BDATE=$E(EDATE,1,3)-5_$E(EDATE,4,7)
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")
 S BUDTOB=""
 S TIEN=$O(^BUDDTSSC("B","T6B CRC FLEX SIG CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR!(BUDTOB]"")  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .;POV/SNOMED
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.07,X,.01) I $D(^BUDDTSSC("AD",Y,TIEN)) S BUDTOB="SIG: DX "_$$VAL^XBDIQ1(9000010.07,X,.01)_":"_$$DATE^BUDDDU(VDATE)_U_VDATE Q
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AS",Y,TIEN)) S BUDTOB="SIG: DX "_Y_":"_$$DATE^BUDDDU(VDATE)_U_VDATE Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S BUDTOB="SIG: CPT "_$$VAL^XBDIQ1(9000010.18,X,.01)_":"_$$DATE^BUDDDU(VDATE)_U_VDATE Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S BUDTOB="SIG: CPT "_Y_":"_$$DATE^BUDDDU(VDATE)_U_VDATE Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDDTSSC("AP",Y,TIEN)) S BUDTOB="SIG: PROC "_$$VAL^XBDIQ1(9000010.08,X,.01)_":"_$$DATE^BUDDDU(VDATE)_U_VDATE Q
 I BUDTOB]"" Q BUDTOB
 Q ""
COLO(P,BDATE,EDATE) ;EP
 NEW BUDVS,TIEN,CTR,VIEN,VDATE,X,Y,Z,BUDTOB
 I $G(BDATE)="" S BDATE=$E(EDATE,1,3)-10_$E(EDATE,4,7)
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")
 S BUDTOB=""
 S TIEN=$O(^BUDDTSSC("B","T6B CRC COLONOSCOPY CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR!(BUDTOB]"")  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .;POV/SNOMED
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.07,X,.01) I $D(^BUDDTSSC("AD",Y,TIEN)) S BUDTOB="COLO: DX "_$$VAL^XBDIQ1(9000010.07,X,.01)_":"_$$DATE^BUDDDU(VDATE)_U_VDATE Q
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AS",Y,TIEN)) S BUDTOB="COLO: DX "_Y_":"_$$DATE^BUDDDU(VDATE)_U_VDATE Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S BUDTOB="COLO: CPT "_$$VAL^XBDIQ1(9000010.18,X,.01)_":"_$$DATE^BUDDDU(VDATE)_U_VDATE Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S BUDTOB="COLO: CPT "_Y_":"_$$DATE^BUDDDU(VDATE)_U_VDATE Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X!(BUDTOB]"")  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDDTSSC("AP",Y,TIEN)) S BUDTOB="COLO: PROC "_$$VAL^XBDIQ1(9000010.08,X,.01)_":"_$$DATE^BUDDDU(VDATE)_U_VDATE Q
 I BUDTOB]"" Q BUDTOB
 Q ""
FOB(P,BDATE,EDATE) ;EP
 I $G(BDATE)="" S BDATE=$E(EDATE,1,3)-2_$E(EDATE,4,7)
 S BUDD="",BUDLFOB=""
 S T=$O(^ATXAX("B","BGP FOBT LOINC CODES",0))
 S BUDLT=$O(^ATXLAB("B","BGP GPRA FOB TESTS",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BUDD]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BUDD]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BUDD]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BUDLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BUDLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BUDD="FOB: Lab "_$$VAL^XBDIQ1(9000010.09,X,.01)_":"_$$DATE^BUDDDU(9999999-D)_U_(9999999-D) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S BUDD="FOB: LAB LOINC "_$$VAL^XBDIQ1(9000010.09,X,.01)_":"_$$DATE^BUDDDU(9999999-D)_U_(9999999-D) Q
 ...Q
 S BUDLFOB=BUDD
 S T=$O(^ATXAX("B","BUD FOBT CPTS",0))
 I T D  I X]"",$P(BUDLFOB,U,2)<$P(X,U,1) S BUDLFOB="FOB: CPT "_$P(X,"^",2)_":"_$$DATE^BUDDDU($P(X,U,1))_"^"_$P(X,U,1)
 .S X=$$CPT^BUDDDU(P,BDATE,EDATE,T,5) I X]"" Q
 Q BUDLFOB
 ;
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
 ;
DEPLIST1 ;EP
 D EOJ
 S BUDDEP1L=1
 D DEP1
 G EN1^BUDDRP6B
DEPLIST2 ;EP
 D EOJ
 S BUDDEP2L=1
 D DEP2
 G EN1^BUDDRP6B
DEP1 ;EP
 D IN6B^BUDDDU("DEP1")
 Q
DEP1L ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D DEP1H Q:BUDQUIT
 I '$D(^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP1")) W:BUDROT="P" !!,"No patients to report." D:BUDROT="D" S() D:BUDROT="D" S("No patients to report.") Q
 D DEP1L1
 I BUDROT="P",$Y>(IOSL-3) D DEP1H Q:BUDQUIT
 I BUDROT="P" W !,"TOTAL PATIENTS WITH DEP SCRN & IF POSITIVE, FOLLOW-UP:  ",BUDTOT,!
 I BUDROT="D" D S(),S("TOTAL PATIENTS WITH DEP SCRN & IF POSITIVE, FOLLOW-UP:  "_BUDTOT)
 Q
DEP1L1 ;
 I BUDROT="P",$Y>(IOSL-7) D DEP1H Q:BUDQUIT
 S BUDAGE="" F  S BUDAGE=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP1",BUDAGE)) Q:BUDAGE=""!(BUDQUIT)  D
 .S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP1",BUDAGE,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ..S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP1",BUDAGE,BUDNAME,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP1",BUDAGE,BUDNAME,BUDCCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D DEP1H Q:BUDQUIT
 ....I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,25),?29,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?41,$E(BUDCCOM,1,25),?70,$P(^DPT(DFN,0),U,2),?75,BUDAGE,!
 ....S BUDTOT=BUDTOT+1
 ....S BUDALL=^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP1",BUDAGE,BUDNAME,BUDCCOM,DFN)
 ....S BUD1=$P(BUDALL,"|",1),BUD2=$P(BUDALL,"|",2)
 ....I BUD1]"",BUDROT="P" W ?5,$P(BUD1,U,2),": ",$P(BUD1,U,3),": ",$$FMTE^XLFDT($P(BUD1,U,1),5)
 ....I BUDROT="P" W ?35,"Follow-up: " I BUD2]"" W $P(BUD2,U,2),": ",$$FMTE^XLFDT($P(BUD2,U,1),5)
 ....I BUDROT="D" S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_BUDCCOM_U_$P(^DPT(DFN,0),U,2)_U_$$AGE^AUPNPAT(DFN,BUDCCAD) D
 .....I BUD1]"" S X=X_U_$P(BUD1,U,2)_": "_$P(BUD1,U,3)_": "_$$FMTE^XLFDT($P(BUD1,U,1),5)
 .....S X=X_U_"Follow-up: "
 .....I BUD2]"" S X=X_$P(BUD2,U,2)_": "_$$FMTE^XLFDT($P(BUD2,U,1),5)
 .....D S(X)
 Q
DEP1HD ;
 D S(),S(),S()
 D S("***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS)  ***")
 D S("Patient List for Table 6B, Section M")
 D S("Patients Screened for Depression and Followed Up if Appropriate")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D HT6B^BUDDDU("DEP1")
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^Depression Scrn: Date/Result^Follow-up Plan: Date")
 Q
DEP1H ;
 I BUDROT="D" D DEP1HD Q
 G:'BUDGPG DEP1H1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
DEP1H1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS)  ***",80)
 W !,$$CTR("Patient List for Table 6B, Section M,",80),!,$$CTR("Patients Screened for Depression and Followed Up if Appropriate",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .D HT6B^BUDDDU("DEP1")
 W !!,"PATIENT NAME",?34,"HRN",?41,"COMMUNITY",?70,"SEX",?75,"AGE"
 W !?5,"Depression Scrn: Date/Result",?35,"Follow-up Plan: Date"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
DEP2 ;EP
 D IN6B^BUDDDU("DEP2")
 Q
DEP2L ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D DEP2H Q:BUDQUIT
 I '$D(^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP2")) W:BUDROT="P" !!,"No patients to report." D:BUDROT="D" S() D:BUDROT="D" S("No patients to report.") Q
 D DEP2L1
 I BUDROT="P",$Y>(IOSL-3) D DEP2H Q:BUDQUIT
 I BUDROT="P" W !,"TOTAL PATIENTS W/O DEP SCRN OR W/O FOLLOW-UP IF POSITIVE:  ",BUDTOT,!
 I BUDROT="D" D S(),S("TOTAL PATIENTS W/O DEP SCRN OR W/O FOLLOW-UP IF POSITIVE:  "_BUDTOT)
 Q
DEP2L1 ;
 I BUDROT="P",$Y>(IOSL-7) D DEP2H Q:BUDQUIT
 S BUDAGE="" F  S BUDAGE=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP2",BUDAGE)) Q:BUDAGE=""!(BUDQUIT)  D
 .S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP2",BUDAGE,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ..S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP2",BUDAGE,BUDNAME,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP2",BUDAGE,BUDNAME,BUDCCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D DEP2H Q:BUDQUIT
 ....I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,25),?29,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?41,$E(BUDCCOM,1,25),?70,$P(^DPT(DFN,0),U,2),?75,BUDAGE,!
 ....S BUDTOT=BUDTOT+1
 ....S BUDALL=^XTMP("BUDDRP6B",BUDJ,BUDH,"DEP2",BUDAGE,BUDNAME,BUDCCOM,DFN)
 ....S BUD1=$P(BUDALL,"|",1),BUD2=$P(BUDALL,"|",2)
 ....I BUD1]"" I BUDROT="P" W ?5,$P(BUD1,U,2),": ",$P(BUD1,U,3),": ",$$FMTE^XLFDT($P(BUD1,U,1),5)
 ....I BUDROT="P" W ?35,"Follow-up: " I BUD2]"" W $P(BUD2,U,2),": ",$$FMTE^XLFDT($P(BUD2,U,1),5)
 ....I BUDROT="D" S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_BUDCCOM_U_$P(^DPT(DFN,0),U,2)_U_$$AGE^AUPNPAT(DFN,BUDCCAD) D
 .....I BUD1]"" S X=X_U_$P(BUD1,U,2)_": "_$P(BUD1,U,3)_": "_$$FMTE^XLFDT($P(BUD1,U,1),5)
 .....I BUD1="" S X=X_U
 .....S X=X_U_"Follow-up: "
 .....I BUD2]"" S X=X_$P(BUD2,U,2)_": "_$$FMTE^XLFDT($P(BUD2,U,1),5)
 .....D S(X)
 Q
DEP2HD ;
 D DEP2HD^BUDDRPTE
 Q
DEP2H ;
 I BUDROT="D" D DEP2HD Q
 G:'BUDGPG DEP2H1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
DEP2H1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS)  ***",80)
 W !,$$CTR("Patient List for Table 6B, Section M,",80),!,$$CTR("Patients not Screened for Depression or w/o Follow-up",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .D HT6B^BUDDDU("DEP2")
 W !!,"PATIENT NAME",?34,"HRN",?41,"COMMUNITY",?70,"SEX",?75,"AGE"
 W !?5,"Depression Scrn: Date/Result",?35,"Follow-up Plan: Date"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
 Q
CTR(X,Y) ;
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
EOJ ;
 D EN^XBVK("BUD")
 Q