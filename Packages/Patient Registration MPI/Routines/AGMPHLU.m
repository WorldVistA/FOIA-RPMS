AGMPHLU ; IHS/SD/TPF - MPI HLO MSG UTILITIES ; 12/15/2007
 ;;7.2;IHS PATIENT REGISTRATION;**1,3,5,6**;MAY 20, 2010;Build 23
 Q
 ;
DIRCON ;EP - SEND A DIRECT CONNECT VQQ-Q02
 ; 09/06/2017 - GCD - CR 7693 - Disabled VQQ messages because they are buggy and not needed.
 W !!,"THIS OPTION HAS BEEN DISABLED" Q
 W !!,"ENTER PATIENT YOU WISH TO QUERY THE MPI FOR:"
 W !
 D PTLK^AG
 Q:'$D(DFN)
 I $$DEMOPAT(DFN) W !!,"Demo patients may not be uploaded to the MPI." G DIRCON  ; 9/13/2017 - GCD - CR 7713 - Don't upload demo patients.
 D CREATMSG^AGMPIHLO(DFN,"VTQ",,.SUCCESS)
 I SUCCESS D  Q
 .W !!,"Query message "_$G(SUCCESS)_" has been sent to the MPI"
 W !,"Unable to query patient "_$P(^DPT(DFN,0),U)_" on MPI"
 Q
 ;
A28 ;EP - SEND A A28 ADD A PATIENT
 W !!,"ENTER PATIENT YOU WISH TO ADD TO THE MPI:"
 D PTLK^AG
 Q:'$D(DFN)
 I $$DEMOPAT(DFN) W !!,"Demo patients may not be uploaded to the MPI." G A28  ; 9/13/2017 - GCD - CR 7713 - Don't upload demo patients.
 D CREATMSG^AGMPIHLO(DFN,"A28",,.SUCCESS)
 I SUCCESS D  Q
 .W !!,"A28 Message "_SUCCESS_" has been sent to add patient "_$P(^DPT(DFN,0),U)_" to the MPI." H 2
 .;05/29/2013 - KJH - TFS8109 - This was causing an extra message to be sent to EDR.
 .;S X="AG REGISTER A PATIENT",DIC=101,INDA=DFN
 .;D EN^XQOR
 W !,"Unable to create A28 to add patient "_$P(^DPT(DFN,0),U)_" to MPI"
 Q
 ;
A08 ;EP - SEND AN A08 UPDATE
 W !!,"EXAMPLE OF AN A08 UPDATE"
 D PTLK^AG
 Q:'$D(DFN)
 I $$DEMOPAT(DFN) W !!,"Demo patients may not be uploaded to the MPI." G A08  ; 9/13/2017 - GCD - CR 7713 - Don't upload demo patients.
 D CREATMSG^AGMPIHLO(DFN,"A08","",.SUCCESS)
 I SUCCESS D  Q
 .W !!,"A08 Message "_SUCCESS_" has been sent to update patient "_$P(^DPT(DFN,0),U)_" on the MPI." H 2
 .;05/29/2013 - KJH - TFS8109 - This was causing an extra message to be sent to EDR.
 .;S X="AG UPDATE A PATIENT",DIC=101,INDA=DFN
 .;D EN^XQOR
 W !,"Unable to create A08 to update patient "_$P(^DPT(DFN,0),U)_" on MPI"
 Q
 ;
VISITMSG ;EP - CREATE A NEW A01 OR A03
 W !!,"CREATE A VISIT HL7 MESSAGE"
 D PTLK^AG
 Q:'$D(DFN)
 I $$DEMOPAT(DFN) W !!,"Demo patients may not be uploaded to the MPI." G VISITMSG  ; 9/13/2017 - GCD - CR 7713 - Don't upload demo patients.
 K DIR
 S DIR(0)="SO^A:ADMISSION;D:DISCHARGE;CIN:CHECK-IN;COUT:CHECK-OUT"
 D ^DIR
 Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!(Y="")
 ;CHECK IN - CHECK OUT
 I Y="CIN"!(Y="COUT") D  Q  Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!(Y="")
 .S EVENT=$S(Y="CIN":4,1:5)
 .K DIR
 .S DIR(0)="D^::RE"
 .S DIR("A")="ENTER CHECK-"_$S(Y="CIN":"IN",1:"OUT")_" DATE"
 .D ^DIR
 .D NOW^%DTC S NOW=%
 .Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!(Y="")
 .S DATE=Y
 .D CREATE^AGMPHL01(EVENT,DFN,DATE,.SUCCESS)
 .I SUCCESS D  Q
 ..W !!,$S(EVENT=1:"A01",1:"A03")_" Message IEN "_SUCCESS_" has been sent to update patient"
 ..W !,$P(^DPT(DFN,0),U)_" last treated date on the MPI." H 2
 .W !,"Unable to create "_$S(EVENT=1:"A01",1:"A03")_" to update patient "_$P(^DPT(DFN,0),U)_" on MPI"
 ;
 ;ADMISSION - DISCHARGE
 S TYPE=$S(Y="A":1,1:3)
 K DIR
 S DIR(0)="D^::RE"
 S DIR("A")="ENTER MOVEMENT DATE"
 D ^DIR
 D NOW^%DTC S NOW=%
 Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!(Y="")
 S DATETIME="T"_Y
 D CREATE^AGMPHL03(DFN,TYPE,DATETIME,.SUCCESS)
 I SUCCESS D  Q
 .W !!,$S(TYPE=1:"A01",1:"A03")_" Message IEN "_SUCCESS_" has been sent to update patient"
 .W !,$P(^DPT(DFN,0),U)_" last treated date on the MPI." H 2
 W !,"Unable to create "_$S(TYPE=1:"A01",1:"A03")_" to update patient "_$P(^DPT(DFN,0),U)_" on MPI"
 Q
 ;
A40 ;EP - SEND A40 MERGE FROM/TO
 N DFN1,DFN2,MRGDIR,NAME1,NAME2
PT1 ;ASK FOR FROM PATIENT
 ; AG*7.2*5/CR 7718 - Overhauled this entire section because normal patient lookups don't work on merged patients.
 W !,"ENTER PATIENT TO KEEP:"
 S DIC="^VA(15,",DIC(0)="AEMQ",DIC("A")="Select PATIENT NAME: " D ^DIC
 Q:Y=-1
 S IEN=$P(Y,"^")
 S MRGDIR=$$GET1^DIQ(15,IEN_",",.04,"I")  ; 1=.01->.02, 2=.02->.01
 S DFN1=$P($$GET1^DIQ(15,IEN_",",$S(MRGDIR=1:.01,1:.02),"I"),";")  ; From patient
 S DFN2=$P($$GET1^DIQ(15,IEN_",",$S(MRGDIR=1:.02,1:.01),"I"),";")  ; To patient
 I $$DEMOPAT(DFN1)!$$DEMOPAT(DFN2) W !!,"Demo patients may not be uploaded to the MPI." G PT1  ; 9/13/2017 - GCD - CR 7713 - Don't upload demo patients.
 I $G(^DPT(DFN1,-9))'=DFN2 D  G PT1  ; AG*7.2*5/CR 7718 - Corrected condition -- now checks that patient was merged into DFN2.
 .W !,"THIS PATIENT HAS NOT BEEN MERGED TO FIRST PATIENT SUCCESSFULLY!"
 .K DIR
 .S DIR(0)="E"
 .D ^DIR
 S NAME1=$P($G(^DPT(DFN1,0)),U)  ; ^DIQ doesn't work on merged patients
 S NAME2=$$GET1^DIQ(2,DFN2_",",.01,"I")
 W !
 K DIR
 S DIR(0)="Y",DIR("A")="Send A40 for "_NAME1_" merged into "_NAME2,DIR("B")="Yes"
 D ^DIR
 I Y="^" Q
 I 'Y W ! G PT1
 D CREATMSG^AGMPIHLO(DFN2,"A40",DFN1,.SUCCESS)
 I SUCCESS D  Q
 .W !!,"A40 Message "_SUCCESS_" has been sent to merge patient"
 .W !,$P(^DPT(DFN1,0),U)_" to patient "_$P(^DPT(DFN2,0),U) H 2
 W !,"Unable to merge "_$P(^DPT(DFN1,0),U)_" to patient "_$P(^DPT(DFN2,0),U)_" on MPI" H 2
 Q
 ;
MFNMFK ;EP - PROCESS MFN MESSAGE AND CREATE A MFK RESPONSE
 K DIR,DIC,DA,DIE,DIR
 W !!
 S DIC(0)="AQEM"
 S DIC("S")="I $G(^HLB(Y,2))[""MFN"""
 S DIC="^HLB("
 D ^DIC
 Q:Y<0
 D PROC^AGMPHMFN(+Y,.SUCCESS)
 K DIR,DIC,DA,DIE,DIR
 I SUCCESS D  Q
 .W !!,"MFK Message "_SUCCESS_" has been sent to the MPI" H 2
 W !,"Unable to create MFK message." H 2
 Q
 ;
RESEND ;EP - RESEND MESSAGE(S)
RSAGAIN ;EP
 N FRMSGIEN,TOMSGIEN,DIC,DT,NEWIEN,ERROR,Y
 N MPIDIREC,TOTEVENT,GRDTOTAL,ERRORS
FROM ;EP - ASK FROM
 S (MPIDIREC,TOTEVENT,GRDTOTAL,ERRORS)=0
 W !!
 S DIC=778
 S DIC(0)="AEQM"
 S DIC("A")="SELECT FROM MESSAGE: "
 ;S DIC("W")="W $P(^(0),U,20)_""**""_$P($G(^HLA($P(^(0),U,2),0)),U,4)"
 S DIC("W")="W $P($G(^(0)),U,5)_""**""_$P($G(^HLA($P(^(0),U,2),0)),U,4)"
 S DIC("S")="I $P($G(^(0)),U,4)=""O"",($P($G(^(0)),U,20)'=""SU""),($P($G(^(0)),U,5)=""MPI"")"
 D ^DIC
 Q:Y<0
 S FRMSGIEN=+Y
TO ;EP - ASK TO
 S DIC=778
 S DIC(0)="AEQM"
 S DIC("A")="SELECT TO MESSAGE: "
 S DIC("B")=FRMSGIEN
 ;S DIC("W")="W $P(^(0),U,20)_""**""_$P($G(^HLA($P(^(0),U,2),0)),U,4)"
 S DIC("W")="W $P($G(^(0)),U,5)_""**""_$P($G(^HLA($P(^(0),U,2),0)),U,4)"
 S DIC("S")="I $P($G(^(0)),U,4)=""O"",($P($G(^(0)),U,20)'=""SU""),$P($G(^(0)),U,5)=""MPI"""
 D ^DIC
 Q:Y<0
 S TOMSGIEN=+Y
 I FRMSGIEN>TOMSGIEN D  G FROM
 .W !,"FROM MSG ID CAN NOT BE GREATER THAN THE TO MSG ID" H 2
 S MSGIEN=FRMSGIEN-.01
 F  S MSGIEN=$O(^HLB(MSGIEN)) Q:MSGIEN>TOMSGIEN  D
 .S LINK=$P($G(^HLB(MSGIEN,0)),U,5)
 .Q:LINK'="MPI"
 .S DIREC=$P($G(^HLB(MSGIEN,0)),U,4)
 .Q:DIREC'="O"
 .S COMSTAT=$P($G(^HLB(MSGIEN,0)),U,20)
 .Q:COMSTAT="SU"
 .;B "S+"
 .S EVENT=$P($P($G(^HLB(MSGIEN,2)),U,4),"~",2)
 .; 05/24/2013 - KJH - TFS8008 - Remove extraneous locks on the HLO globals.
 .S NEWIEN=$$RESEND^HLOAPI3(MSGIEN,.ERROR)
 .;B "S+"
 .D PARSE^AGMPIACK(.DATA,NEWIEN,.HLMSTATE)
 .S DFN=$G(DATA(2,4,3,1,1))
 .S GRDTOTAL=GRDTOTAL+1
 .I '$D(ERROR) D
 ..W !,"MESSAGE RESENT, NEW NUMBER: "_NEWIEN
 ..W !?17,"OLD NUMBER: ",MSGIEN
 ..D NOW^%DTC S Y=% X ^DD("DD") W !,"SENT AT ",Y
 ..S TOTEVENT(EVENT)=$G(TOTEVENT(EVENT))+1
 .E  D  Q
 ..S ERRORS(ERROR)=$G(ERRORS(ERROR))+1
 ;.05/29/2013 - KJH - TFS8109 - Since this is a 'resend', we do not need to kick off these protocols again.
 ;.IF NO ERROR KICK PROTOCOL OFF
 ;.I EVENT="A28" D  Q
 ;..S X="AG REGISTER A PATIENT",DIC=101,INDA=DFN
 ;..D EN^XQOR
 ;.I EVENT="A08" D
 ;..S X="AG UPDATE A PATIENT",DIC=101,INDA=DFN
 ;..D EN^XQOR
 W !!,"TOTAL MESSAGES PROCESSED: ",GRDTOTAL
 S ERROR=""
 F  S ERROR=$O(ERRORS(ERROR)) Q:ERROR=""  D
 .W !,ERRORS(ERROR)," ",ERROR
 S EVENT=""
 F  S EVENT=$O(TOTEVENT(EVENT)) Q:EVENT=""  D
 .W !,TOTEVENT(EVENT)," ",EVENT
 G RSAGAIN
 Q
 ;
CONDT(DATE) ;EP - CONVERT FM DATE INTO 2009-04-14 00:00:00
 N NEWDATE,TIME
 S TIME=$P(DATE,".",2)
 S DATE=$P(DATE,".")
 S TIME="."_$$FILLSTR^AGMPIHL1(TIME,6,"L",0)
 S DATE=DATE_TIME
 S NEWDATE=(1700+$E(DATE,1,3))
 S DATE=$TR(DATE,"."," ") S DATE=$E(DATE,4,14),NEWDATE=NEWDATE_DATE
 S NEWDATE=$E(NEWDATE,1,4)_"-"_$E(NEWDATE,5,6)_"-"_$E(NEWDATE,7,8)_" "_$E(NEWDATE,10,11)_":"_$E(NEWDATE,12,13)_":"_$E(NEWDATE,14,15)
 Q NEWDATE
 ;
DEMOPAT(DFN) ;EP - Check whether a patient is a demo patient and we are in a production environment.
 ; This is a demo patient if any one of the following criteria is true:
 ; a) TEST PATIENT INDICATOR (file 2, field 0.6) is set
 ; b) First five digits of the SSN are 0
 ; c) Patient's name matches 1"DEMO,PAT".E
 ; d) Patient's name matches 1"DEMO,GIMC".E
 Q:$G(DFN)="" 0
 Q:'$$PROD^XUPROD() 0  ; We only care about demo patients in production environments.
 N NODE,NAME
 S NODE=$G(^DPT(DFN,0))
 I $P(NODE,U,21) Q 1
 I $E($P(NODE,U,9),1,5)="00000" Q 1
 S NAME=$P(NODE,U)
 I NAME?1"DEMO,PAT".E Q 1
 I NAME?1"DEMO,GIMC".E Q 1
 Q 0
