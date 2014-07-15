BARDMLPR ;IHS/OIT/FCJ - REPRINT DEBT MANAGEMENT PRINT LETTERS
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**22,23**;OCT 26, 2005;Build 38
 ;New routine 5-12-2011 for Debt Letter Management
 ;
 ;Routine to RE PRINT BATCHES OR letters
 ;P.OTT JAN 2013 ADDING SORTING
 ;      MAY 2013 CHANGE STATUS TO 'PAID'
 ;8/16/2013 P.OTT PTR->PRT
 ;8/28/2013 P.OTT AVOID <SUBSCR> IN LET2+1
 ;JULY 2013 P.OTT HEAT118656 BELCOURT: SKIP UNDEF ENTRY IN ^BARBL
 ;9/26/2013 P.OTT added sorting by cycle
ST S BARRPT="R"
 D TSTPRT
 G:$D(DUOUT) XIT
 D RRDT^BARDMU
 S BARLTY=$$DIR^XBDIR("S^L:LETTER;B:BATCH")
 G:$D(DUOUT) XIT
 D @BARLTY
 G:BARQ XIT
 W !
 D ^%ZIS
 U IO
 D VAR
 D LET
 D XIT
 Q
XIT ;
 I $D(IO("S")) S IOP="`"_IOS D ^%ZIS
 E  D ^%ZISC
XIT2 ;
 K BARCYL,CY,BARCYCLE,BARCT,DA,X,Z,DIC,BARL,I,I1
 K BARERRT,BARERRCT,AGE
 Q
TSTPRT ;EP
 D PAR^BARDMU ;GET PARAMETERS (INCL. BARPSRT)
 S Y=$$DIR^XBDIR("Y","Do you wish to print a test letter","N")
 Q:+Y<1
 D ^%ZIS
 U IO
 Q:$D(DUOUT)
 D VAR,VARSET
 D NOW^%DTC
 S Y=$P(%,".") X ^DD("DD") S BARDTP=Y
 ;D DD^%DT S BARDTP=Y
 S CY=1,BARDACG="AUTNINS(",BARL="CYCLE 1"
 S BARDM("INS_NM")="TEST INSURANCE"
 S BARDM("INS_STR")="1234 STREET"
 S BARDM("INS_CTY")="Portland"
 S BARDM("INS_ST")=38
 S BARDM("INS_ZP")=97204
 S BARPAT="TEST PATIENT",BARBILN=1234,BARAMTO=0
 S BARDM("DOS")=""
 S BARDOB="",BARNPIF="1234567890",BARNPIP="0987654321"
 S BARPBDT="N"
 D PRINT^BARDMLP1
 D ^%ZISC
 G TSTPRT
 Q
VAR ;SET LET VARIABLES
 S BARLEN="" F I=1:1:30 S BARLEN=BARLEN_" "
 S BARPAR1=^BAR(90052.06,BARPIEN,DUZ(2),18)
 S BARAD1=$P(BARPAR1,U),BARAD2=$P(BARPAR1,U,2),BARCTY=$P(BARPAR1,U,3),BARST=$P(BARPAR1,U,4),BARZP=$P(BARPAR1,U,5),BARPH=$P(BARPAR1,U,6)
 S BARPMX=$P(BARPAR1,U,8),BARMRGT=$P(BARPAR1,U,9),BARMRGL=$P(BARPAR1,U,10)
 S BARSG=$P(BARPAR,U,13),BARSG1=$P(BARPAR,U,14),BARSG2=$P(BARPAR,U,15)
 S C=1 F I=5:2:11 S BARPCP(C)=$P(BARPAR,U,I),C=C+1
 S BARNPI=$P(BARPAR,3),BARLDOB=$P(BARPAR,4)
 S:BARMRGT="" BARMRGT=5
 S:BARMRGL="" BARMRGL=3
 S BARFAC=$$VAL^XBDIQ1(9999999.06,DUZ(2),.01)
 K BARPAR,BARPAR1
 Q
VARSET ;RESET VARS
 S BARMIN=0
 S (BARDM("INS"),BARDM("MEMBER"),BARDM("POL_HOLDER_IEN"),BARDM("POL_HOLDER"),BARDM("POL_NUM"),BARDM("POL_DOB"),BARDM("INS_TX"))=""
 Q
L ;SELECT LETTER
 D SEL^BARDMU
 Q:BARQ=1
 ;TEST FOR CYCLE...
 I '$D(^BARDM(DUZ(2),BARDM,100)) D LERR D  Q  ;P.OTT
 S BARCYL=0,BARCT=0
 F  S BARCYL=$O(^BARDM(DUZ(2),BARDM,100,BARCYL)) Q:BARCYL'?1N.N  D
 .I $P(^BARDM(DUZ(2),BARDM,100,BARCYL,0),U,3)="P" S BARCT=BARCT+1,BARDM(BARCT)=BARDM_U_BARCYL_U_^BARDM(DUZ(2),BARDM,100,BARCYL,0)
 I BARCT=0 D LERR Q
 W !?5,"Select Letter for Bill : "
 F I=1:1:BARCT W !?10,I_". ",$P(BARDM(I),U,3)," Letter"
 I BARCT>1 S I=BARCT+1,BARDM(I)="A" W !?10,I,". All Letters"
 I BARCT>3 S I=I+1,BARDM(I)=3 W !?10,I,". Letters 1-3"
 W !
 S BARCYL=$$DIR^XBDIR("N^1:"_I)
 I $D(DUOUT) S BARQ=1 Q
 Q
B ;SELECT BATCH
 S (BARQ,BARREQ)=0
 S DIC="^BARDMLG("_DUZ(2)_","
 S DIC("A")="Enter the Debt Management Batch Date: "
 S DIC(0)="AEQ"
 D ^DIC
 I +Y<1 S BARQ=1 Q
 S BARBAT=+Y
 S BARCT=0,BARCYL=0
 F  S BARCYL=$O(^BARDMLG(DUZ(2),BARBAT,100,BARCYL)) Q:BARCYL'?1N.N  D
 .S BARCT=BARCT+1,BARDM(BARCT)=BARCYL_U_^BARDMLG(DUZ(2),BARBAT,100,BARCYL,0)
 I BARCT=0 D LERR Q
 W !?5,"Select Cycle for Batch:"
 F I=1:1:BARCT W !?10,I_". ",$P(BARDM(I),U,2)," - Total Letters = ",$P(BARDM(I),U,3)
 I BARCT>1 S I=BARCT+1,BARDM(I)="A" W !?10,I,". All Letters"
 S BARCYL=$$DIR^XBDIR("N^1:"_I)
 I $D(DUOUT) S BARQ=1 Q
 Q
LET ;BEGIN PRINT LETTERS
 K ^TMP("BARDMERR",$J)
 S BARQ=0
 I BARLTY="L" D
 . I BARDM(BARCYL)="A" F CY=1:1:BARCYL-1 D LETS
 . I BARDM(BARCYL)'="A" I BARDM(BARCYL)=3 F CY=1:1:3 D LETS
 . I BARQ QUIT
 . S CY=BARCYL D LETS
 . Q
 I BARLTY="B" D
 . S CY=0
 . I BARDM(BARCYL)="A" F CY=1:1:BARCYL-1 D LETB
 . I BARDM(BARCYL)'="A" S CY=BARCYL D LETB
 . Q
 ;SORT BY <NIL>,P(OLICY HOLDER), I(NSURANCE NAME), C(ycle)
 IF BARPSRT="" D SORT0 Q
 IF $E(BARPSRT)="P" D SORT1 Q
 IF $E(BARPSRT)="I" D SORT2 Q
 IF $E(BARPSRT)="C" D SORT3 Q
 Q
 ;
SORT0 S CY=0
 F BARCYCLE="CYCLE 1","CYCLE 2","CYCLE 3","CYCLE 4" D
 . S CY=CY+1,BARDMINS="" F  S BARDMINS=$O(^TMP("BARDMERR",$J,"PRT",BARCYCLE,BARDMINS)) Q:'BARDMINS  D
 . . S BARDM=0 F  S BARDM=$O(^TMP("BARDMERR",$J,"PRT",BARCYCLE,BARDMINS,BARDM)) Q:'BARDM  D
 . . .S BARDMC=0 F  S BARDMC=$O(^TMP("BARDMERR",$J,"PRT",BARCYCLE,BARDMINS,BARDM,BARDMC)) Q:'BARDMC  D ONEDM
 Q
SORT1 NEW BARSORT ;
 S BARSORT="" F  S BARSORT=$O(^TMP("BARDMERR",$J,"POLHNAME",BARSORT)) Q:BARSORT=""  D
 . S CY=0 F BARCYCLE="CYCLE 1","CYCLE 2","CYCLE 3","CYCLE 4" D
 . . S CY=CY+1,BARDMINS="" F  S BARDMINS=$O(^TMP("BARDMERR",$J,"POLHNAME",BARSORT,BARCYCLE,BARDMINS)) Q:'BARDMINS  D
 . . . S BARDM=0 F  S BARDM=$O(^TMP("BARDMERR",$J,"POLHNAME",BARSORT,BARCYCLE,BARDMINS,BARDM)) Q:'BARDM  D
 . . . . S BARDMC=0 F  S BARDMC=$O(^TMP("BARDMERR",$J,"POLHNAME",BARSORT,BARCYCLE,BARDMINS,BARDM,BARDMC)) Q:'BARDMC  D ONEDM
 Q
SORT2 NEW BARSORT ;
 S BARSORT="" F  S BARSORT=$O(^TMP("BARDMERR",$J,"INSNAME",BARSORT)) Q:BARSORT=""  D
 . S CY=0 F BARCYCLE="CYCLE 1","CYCLE 2","CYCLE 3","CYCLE 4" D
 . . S CY=CY+1,BARDMINS="" F  S BARDMINS=$O(^TMP("BARDMERR",$J,"INSNAME",BARSORT,BARCYCLE,BARDMINS)) Q:'BARDMINS  D
 . . . S BARDM=0 F  S BARDM=$O(^TMP("BARDMERR",$J,"INSNAME",BARSORT,BARCYCLE,BARDMINS,BARDM)) Q:'BARDM  D
 . . . . S BARDMC=0 F  S BARDMC=$O(^TMP("BARDMERR",$J,"INSNAME",BARSORT,BARCYCLE,BARDMINS,BARDM,BARDMC)) Q:'BARDMC  D ONEDM
 Q
 ;
 ;S ^TMP("BARDMERR",$J,"CYCLE",BARCYCLE,BARSORT1,BARDMINS,BARSORT2,BARDM,BARDMC)=""
 ;
SORT3 NEW BARSORT1,BARSORT2
 S CY=0
 F BARCYCLE="CYCLE 1","CYCLE 2","CYCLE 3","CYCLE 4" D
 . S CY=CY+1,BARSORT1="" F  S BARSORT1=$O(^TMP("BARDMERR",$J,"CYCLE",BARCYCLE,BARSORT1)) Q:BARSORT1=""  D	
 . . S BARDMINS="" F  S BARDMINS=$O(^TMP("BARDMERR",$J,"CYCLE",BARCYCLE,BARSORT1,BARDMINS)) Q:'BARDMINS  D
 . . . S BARSORT2="" F  S BARSORT2=$O(^TMP("BARDMERR",$J,"CYCLE",BARCYCLE,BARSORT1,BARDMINS,BARSORT2)) Q:BARSORT2=""  D	
 . . . . S BARDM=0 F  S BARDM=$O(^TMP("BARDMERR",$J,"CYCLE",BARCYCLE,BARSORT1,BARDMINS,BARSORT2,BARDM)) Q:'BARDM  D
 . . . . . S BARDMC=0 F  S BARDMC=$O(^TMP("BARDMERR",$J,"CYCLE",BARCYCLE,BARSORT1,BARDMINS,BARSORT2,BARDM,BARDMC)) Q:'BARDMC  D ONEDM
 Q
LETS ;SET CYCLES TO SINGLE LETTERS
 S BARQ=1
 S BARCYCLE=$P(BARDM(CY),U,3),BARDMC=$P(BARDM(CY),U,2),BARDM=$P(BARDM(CY),U)
 I BARDMC="" Q  ;AVOID <SUBSCR> IN LET2+1
 I BARDM="" Q
 D LET2(BARCYCLE,BARDM,BARDMC) ;P.OTT
 Q
LETB ;SET CYCLES TO PRINT BATCHES
 S BARB=0,BARCT=0
 F  S BARB=$O(^BARDMLG(DUZ(2),BARBAT,100,$P(BARDM(CY),U),10,BARB)) Q:BARB'?1N.N  D
 .S BARDM=$P(^BARDMLG(DUZ(2),BARBAT,100,$P(BARDM(CY),U),10,BARB,0),U)
 .S BARCYCLE=$P(BARDM(CY),U,2)
 .S BARDMC=0,BARDMC=$O(^BARDM(DUZ(2),BARDM,100,"B",BARCYCLE,BARDMC))
 .I BARDMC="" Q  ;AVOID <SUBSCR> IN LET2+1
 .I BARDM="" Q
 .D LET2(BARCYCLE,BARDM,BARDMC) ;P.OTT
 Q
 ;
LET2(BARCYCLE,BARDM,BARDMC) ;
 S Y=$P(^BARDM(DUZ(2),BARDM,100,BARDMC,0),U,5) D DD^%DT S BARDTP=Y
 S BARDM("DOS")=""
 S X=$P(^BARDM(DUZ(2),BARDM,100,BARDMC,0),U,6),X2="2$" D COMMA^%DTC S BARAMTO="$"_$P(X,"$",2)
 S BARBIEN=$P(^BARDM(DUZ(2),BARDM,0),U)
 I '$D(^BARBL(DUZ(2),BARBIEN,0)) D  Q  ;HEAT118656 BELCOURT P.OTT
 . I $P($G(^VA(200,DUZ,0)),U,4)'="@" Q
 	. W !,"MISSING DATA IN ^BARBL(",DUZ(2),",",BARBIEN
 S BARBILN=$$VAL^XBDIQ1(90053.05,BARDM,.01)
 S BARDAC=$P(^BARBL(DUZ(2),BARBIEN,0),U,3),BARDBDT=$P(^(0),U,7),BARD3P=$P(^(0),U,17)
 S BARD3PD=$P($G(^BARBL(DUZ(2),BARBIEN,0)),U,22)
 S BARDM("DOS")=$$VAL^XBDIQ1(90050.01,BARBIEN,102)
 D INSTYP^BARDMU
 S BARDI=$$VAL^XBDIQ1(90050.02,BARDAC,.01)
 I $P(^BARBL(DUZ(2),BARBIEN,0),U,15)'>0 D
 . W !,"Cycle: ",BARCYCLE," Bill status of ",$P(^BARBL(DUZ(2),BARBIEN,0),U,1)," changed." ;P.OTT
 . W !,"This reprint will keep the original status." ;
 D POLCHK
 S BARSEQ=$G(^TMP("BARDMERR",$J))+1,^TMP("BARDMERR",$J)=BARSEQ
 S BARDMINS=1 ;*************************************************
 I BARPSRT="" S ^TMP("BARDMERR",$J,"PRT",BARCYCLE,BARDMINS,BARDM,BARDMC)="" ;8/16/2013 P.OTT PTR->PRT
 I $E(BARPSRT)="P" D  ;POLICYHOLDER,CYCLE,INS
 . S BARSORT=BARDM("POL_HOLDER") I BARSORT="" S BARSORT=" "
 . S ^TMP("BARDMERR",$J,"POLHNAME",BARSORT,BARCYCLE,BARDMINS,BARDM,BARDMC)=""
 I $E(BARPSRT)="I" D  ;INSNAME,CYCLE
 . S BARSORT=BARDM("INS_NM") I BARSORT="" S BARSORT=" "
 . S ^TMP("BARDMERR",$J,"INSNAME",BARSORT,BARCYCLE,BARDMINS,BARDM,BARDMC)=""
 I $E(BARPSRT)="C" D  ;CYCLE;INS,POLICYHOLDER
 . S BARSORT1=BARDM("INS_NM") I BARSORT1="" S BARSORT1=" "
 . S BARSORT2=BARDM("POL_HOLDER") I BARSORT2="" S BARSORT2=" "
 . S ^TMP("BARDMERR",$J,"CYCLE",BARCYCLE,BARSORT1,BARDMINS,BARSORT2,BARDM,BARDMC)=""
 Q
ONEDM ;
 S Y=$P(^BARDM(DUZ(2),BARDM,100,BARDMC,0),U,5) D DD^%DT S BARDTP=Y
 S BARDM("DOS")=""
 S X=$P(^BARDM(DUZ(2),BARDM,100,BARDMC,0),U,6),X2="2$" D COMMA^%DTC S BARAMTO="$"_$P(X,"$",2)
 S BARBIEN=$P(^BARDM(DUZ(2),BARDM,0),U)
 I '$D(^BARBL(DUZ(2),BARBIEN,0)) D  Q  ;HEAT118656 BELCOURT P.OTT
 . I $P($G(^VA(200,DUZ,0)),U,4)'="@" Q
 	. W !,"MISSING DATA IN ^BARBL(",DUZ(2),",",BARBIEN
 S BARBILN=$$VAL^XBDIQ1(90053.05,BARDM,.01)
 S BARDAC=$P(^BARBL(DUZ(2),BARBIEN,0),U,3),BARDBDT=$P(^(0),U,7),BARD3P=$P(^(0),U,17)
 S BARD3PD=$P($G(^BARBL(DUZ(2),BARBIEN,0)),U,22)
 S BARDM("DOS")=$$VAL^XBDIQ1(90050.01,BARBIEN,102)
 D INSTYP^BARDMU
 D POLCHK
 D PRINT^BARDMLP1
 ;
 Q
POLCHK ;TEST FOR POLICY NO, POLICY HOLDER AND POLICY HOLDER DOB
 S BARMIN=0
 I BARDACG'="VA(" D
 .S BARDM("PAT_IEN")=$P(^BARBL(DUZ(2),BARBIEN,1),U)
 .S BARVLOC=$P($G(^ABMDBILL(BARD3PD,BARD3P,0)),U,3)
 .S BARHRN=$P($G(^AUPNPAT(BARDM("PAT_IEN"),41,BARVLOC,0)),U,2)
 .I BARHRN="" S BARHRN=$P($G(^AUPNPAT(BARDM("PAT_IEN"),41,DUZ(2),0)),U,2)
 .S BARPAT=$P(^DPT(BARDM("PAT_IEN"),0),U)
 .S BARDOB=$$GET1^DIQ(2,BARDM("PAT_IEN"),".03","E")
 .S BARNPIF=$P($$NPI^XUSNPI("Organization_ID",DUZ(2)),U)  ;bar*1.8*22
 .S BARNPIP=$S(+$$GET1^DIQ(90050.01,BARBIEN,113,"I")'=0:$P($$NPI^XUSNPI("Individual_ID",$$GET1^DIQ(90050.01,BARBIEN,113,"I")),U),1:"")
 D VARSET
 I BARDACG="AUTNINS(" D INSCHK
 I BARDACG="AUPNPAT(" D PATCHK
 I BARDACG="VA(" D PERCHK
 Q
INSCHK ;
 S BARDM("INS")=^AUTNINS(BARDACI,0)
 S BARDM("INS_NM")=$P(BARDM("INS"),U),BARDM("INS_STR")=$P(BARDM("INS"),U,2)
 S BARDM("INS_CTY")=$P(BARDM("INS"),U,3),BARDM("INS_ST")=$P(BARDM("INS"),U,4)
 S BARDM("INS_ZP")=$P(BARDM("INS"),U,5)
 S BARDM("INS_TX")=$P(BARDM("INS"),U,11)
 S BARTST=0
 I $D(^ABMDBILL(BARD3PD,BARD3P,13,"B",BARDACI)) D
 .S BARL="",BARL=$O(^ABMDBILL(BARD3PD,BARD3P,13,"B",BARDACI,BARL))
 .D INSCHK1
 Q:BARTST=1
 S BARL=0 F  S BARL=$O(^ABMDBILL(BARD3PD,BARD3P,13,BARL)) Q:BARL'?1N.N  I $P(^ABMDBILL(BARD3PD,BARD3P,13,BARL,0),U,2)=BARDACI D INSCHK1 Q
 Q
INSCHK1 ;
 I $P(^ABMDBILL(BARD3PD,BARD3P,13,BARL,0),U,4)'="" D MCR^BARDMRE Q
 I $P(^ABMDBILL(BARD3PD,BARD3P,13,BARL,0),U,5)'="" D RR^BARDMRE Q
 I $P(^ABMDBILL(BARD3PD,BARD3P,13,BARL,0),U,7)'="" D MCD^BARDMRE Q
 I $P(^ABMDBILL(BARD3PD,BARD3P,13,BARL,0),U,8)'="" D PRVT^BARDMRE Q
 Q
PATCHK ;
 S BARDM("INS_NM")=$P(BARPAT,",",2)_" "_$P(BARPAT,",",1)_" "_$P(BARPAT,",",3)
 S BARDM("INS_STR")=$$VAL^XBDIQ1(2,BARDM("PAT_IEN"),.111)
 S BARDM("INS_CTY")=$$VAL^XBDIQ1(2,BARDM("PAT_IEN"),.114)
 S BARDM("INS_ST")=$P(^DPT(BARDM("PAT_IEN"),.11),U,5)
 S BARDM("INS_ZP")=$$VAL^XBDIQ1(2,BARDM("PAT_IEN"),.116)
 ;**CHECK AND SET BARMIN FOR MINOR OR NOT
 S X1=$$VALI^XBDIQ1(90050.01,BARBIEN,102)
 S X2=$$VALI^XBDIQ1(2,BARDM("PAT_IEN"),.03)
 D ^%DTC S AGE=X\365.25 S:AGE>17 BARMIN=1
 Q
PERCHK ;
 S BARPAT=$$VAL^XBDIQ1(200,BARDACI,.01)
 S BARDM("INS_NM")=$P(BARPAT,",",2)_" "_$P(BARPAT,",",1)_" "_$P(BARPAT,",",3)
 S BARDM("INS_STR")=$$VAL^XBDIQ1(200,BARDACI,.111)
 S BARDM("INS_CTY")=$$VAL^XBDIQ1(200,BARDACI,.114)
 S BARDM("INS_ST")=$$VAL^XBDIQ1(200,BARDACI,.115)
 S BARDM("INS_ZP")=$$VAL^XBDIQ1(200,BARDACI,.116)
 Q
LERR ;
 W !,"Letters have not been printed for this Bill" S BARQ=1
 K DIC,DA,DR,DIR
 I IOST["C-",'$D(IO("S")) D  ;P.OTT: EXPECT I/O ONLY FROM TERMINAL (AVOID <READ> ERRORS)
 . S DIR(0)="E"
 . S DIR("A")="Enter RETURN to Continue"
 . D ^DIR
 Q
PAID(BARDM,BARDMC) ;SET THE PRINT QUEUED STATUS TO NOT QUEUED AND BILL STATUS TO PAID P.OTT MAY 2013
 S DIE="^BARDM("_DUZ(2)_","_BARDM_",100,",DA(1)=BARDM,DA=BARDMC
 S DR=".03///N"
 D ^DIE
 K DIE,DA,DR
 S DIE="^BARDM("_DUZ(2)_",",DA=BARDM,DR=".02///P"
 D ^DIE
 K DIE,DA,DR
 Q  ;EOR