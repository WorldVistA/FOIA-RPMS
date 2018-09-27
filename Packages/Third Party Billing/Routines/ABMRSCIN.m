ABMRSCIN ; IHS/SD/SDR - Setup option to split claims in claim generator; 
 ;;2.6;IHS 3P BILLING SYSTEM;**22**;NOV 12, 2009;Build 418
 ;IHS/SD/SDR 2.6*22 HEAT335246 - New routine
 ;
 Q
START ;
 S ABMP("RTN")="ABMRSCIN"    ;Routine used to get data
 S ABMMENU="Split claim setup for claim generator"
SEL ;
 K ABMY,ABM
 K DTOUT,DIRUT,DUOUT,DIROUT
 I $D(ABMY("RTYP")) S ABM("HD",0)=ABMY("RTYP","NM")_" "_ABMMENU
 E  S ABM("HD",0)=ABMMENU
 W !!,"This option allows sites to have claims automatically split into"
 W !,"multiple claims for billing.  The split will occur when the claim"
 W !,"generator runs.  You can split each page of the claim editor into"
 W !,"a new claim, or you can split each individual charge into a new"
 W !,"claim.  The pages available for splitting are 8D Medications,"
 W !,"8E Laboratory, 8F Radiology, or 8H HCPCS."
 W !!,"NOTE:  This option does NOT split claims that have a Service"
 W !,"Category of Hospitalization (H) or In Hospital (I)."
 W !!,"For example, if you have an outpatient visit with three medications"
 W !,"and the setup is done so each charge is on its own claim, you will end"
 W !,"up with"
 W !,"4 claims --> 1 with the E&M code"
 W !,"         --> 3 with one medication each"
 W !!,"A different example, if you have an outpatient visit with four labs"
 W !,"and the setup is for a page to be on its own claim, you will end up with"
 W !,"2 claims --> 1 with the E&M code"
 W !,"         --> 1 with all four lab codes"
 W !!,"NOTE:  all prompts are required"
 W !
 S DIR(0)="Y",DIR("A")="Do you wish to continue" D ^DIR K DIR
 I 'Y Q  ;quit if they say NO
SEL2 ;EP
 D INS  ;select insurer(s)
 I +$G(ABMY("INS"))=0 Q  ;no insurer was selected
SEL3 ;EP
 D INSCHK  ;check if this insurer already has something setup and display if so.
 I +$G(ABMIFLG)=1 D  ;ABMIFLG means this insurer has something setup - display it
 .S ABMEFLG=1
 .I $P(Y,U,3)'=1 D  ;not a new entry; display what we found and ask add/term an existing entry
 ..S DIR(0)="S^A:ADD;T:TERMINATE"
 ..S DIR("A")="Add or Terminate Entry?"
 ..S DIR("B")="A"
 ..D ^DIR K DIR
 ..Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT)
 ..S ABMANS=Y
 ..I ((ABMANS="T")&(ABMICNT>1)) D  ;multiple entries - pick which one to end (that's the only edit option)
 ...D ^XBFMK
 ...S DIR(0)="NO^1:"_ABMICNT
 ...W !!
 ...S DIR("A",1)="Entries that are already terminated can't be terminated again"
 ...S DIR("A")="Terminate which entry?"
 ...D ^DIR
 ...Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT)
 ...Q:+Y<0
 ...S ABMENTR=+Y
 ...I +$P($G(^ABMNINS(DUZ(2),ABMY("INS"),6,ABMENTR,0)),U,4)'=0 W !!,"That entry has already been terminated and is therefore unselectable.",! H 1 K ABMANS S ABMEFLG=0
 ..Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT)
 ..I ABMICNT=1 S ABMENTR=1
 ..I $G(ABMANS)="T" D END
 Q:$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT)
 I +$G(ABMEFLG)=0&($G(ABMIFLG)=1) Q
 ;
 D PGS  ;what pages do you want to split (8D, 8E, 8F, 8H, 8Z)
 I '$D(ABMY("PGS")) Q  ;no pages were selected
 D PGCK  ;check if insurer/page combination already exists
 I ABMPGCK=1 D  G SEL2
 .W !!,"That insurer/page combination has already been setup."
 .W !,"If you need to change something you'll need to term the"
 .W !,"Existing setup and create a new entry."
 .H 1
 D SDT  ;select visit or approval date range
 I '$D(ABMY("DT",1)) Q  ;no dates were entered
 D SPLITHOW  ;split
 I '$D(ABMY("SPLITHOW")) Q  ;no split option was selected
 ;
 D DISPLAY
 ;
 W !!
 D ^XBFMK
 S DIR(0)="Y",DIR("A")="Do you wish to continue" D ^DIR K DIR
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 I 'Y G SEL2  ;start over if they say NO
 D SAVE  ;save what they setup
 Q
INS ;EP
 K ABMY("INS")
 W !!,"Insurers selected here MUST be the active insurer in order for claims/bills"
 W !,"to use this setup!",!
 D ^XBFMK
 S DIC="^AUTNINS("
 S DIC(0)="QEAMZ"
 D ^DIC
 Q:+Y<0
 ;check if the insurer they selected is merged
 I $$GET1^DIQ(9999999.18,+Y,".27","E")'="" D  Q:(+Y<1)!$D(DUOUT)!$D(DTOUT)!$D(DIROUT)!$D(DIRUT)
 .W !!!,"The insurer you selected has been merged into insurer "_$$GET1^DIQ(9999999.18,+Y,".27","E")
 .S ABMITMP=+Y
 .D ^XBFMK
 .S DIR(0)="Y",DIR("A")="Do you wish to continue" D ^DIR K DIR
 .Q:+Y<1
 .S Y=ABMITMP
 S ABMY("INS")=+Y
 Q:$$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,+ABMY("INS"),".211","I"),1,"I")'="R"  ;stop here if not Medicare FI insurer type
 W !!,"You selected a MEDICARE FI insurer type",!
 S DIR(0)="Y",DIR("A")="Do you really wish to continue" D ^DIR K DIR
 I 'Y Q  ;exit if they say NO, don't continue
 Q
INSCHK ;EP
 K ABMIFLG
 S ABMICNT=0
 Q:+$O(^ABMNINS(DUZ(2),ABMY("INS"),6,0))=0  ;quit because no entries exist
 S ABMIFLG=1
 W !!,"There is already data setup for that insurer:"
 W !!,"#",?4,"PAGE",?9,"START DT",?20,"SPLIT CLAIM HOW",?37,"END DATE",?50,"CREATED",?61,"BY",?68,"ENDED",?77,"BY"
 S ABMI=0
 F  S ABMI=$O(^ABMNINS(DUZ(2),ABMY("INS"),6,ABMI)) Q:'ABMI  D
 .S ABMREC=$G(^ABMNINS(DUZ(2),ABMY("INS"),6,ABMI,0))
 .S ABMPG=$P(ABMREC,U)  ;page to split
 .S ABMSDT=$P(ABMREC,U,2)  ;start date
 .S ABMSPLHW=$P(ABMREC,U,3)  ;split claim how
 .S ABMEDT=$P(ABMREC,U,4)  ;end date
 .S ABMCRDT=$P(ABMREC,U,5)  ;entry created on
 .S ABMCRU=$P(ABMREC,U,6)  ;entry created by
 .S ABMENDDT=$P(ABMREC,U,7)  ;end date was entered on
 .S ABMENDDU=$P(ABMREC,U,8)  ;entry created by
 .W !,ABMI,?5,ABMPG
 .W ?9,$$SDTO^ABMDUTL(ABMSDT)
 .W ?21,$S(ABMSPLHW=1:"1 Clm/CHRG",ABMSPLHW=2:"1 Clm/PAGE",1:"Don't split")
 .W:ABMEDT ?37,$$SDTO^ABMDUTL(ABMEDT)
 .;
 .W ?50,$$SDTO^ABMDUTL(ABMCRDT)
 .W ?61,$P($G(^VA(200,ABMCRU,0)),U,2)
 .W:ABMENDDT ?66,$$SDTO^ABMDUTL(ABMENDDT)
 .W:ABMENDDU ?77,$P($G(^VA(200,ABMENDDU,0)),U,2)
 .S ABMICNT=+$G(ABMICNT)+1
 W !
 Q
SDT ;EP
 W !,"Enter a start date.  The DOS on a claim will be compared to this date"
 W !,"to determine if it should be split or not.  Claims with a DOS prior"
 W !,"to this date will not split."
 S DIR("A")="Enter START date"
 S DIR(0)="DO^::EP"
 D ^DIR
 Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 S ABMY("DT",1)=Y
 Q
PGS ;
 S ABMSTRG=""
 K ABMY("PGS")
 S DIR(0)="SO^8D:MEDICATIONS;8E:LABORATORY;8F:RADIOLOGY;8H:HCPCS"
 S DIR("A")="Move Which Section(s)? "
 D ^DIR
 Q:'Y
 S ABMY("PGS")="^"_Y_"^"
 Q
PGCK ;EP
 S ABMPGCK=0
 S ABMY("PGCK")=$TR(ABMY("PGS"),"^")
 S ABMICK=0
 F  S ABMICK=$O(^ABMNINS(DUZ(2),ABMY("INS"),6,"B",ABMY("PGCK"),ABMICK)) Q:'ABMICK  D
 .Q:$P($G(^ABMNINS(DUZ(2),ABMY("INS"),6,ABMICK,0)),U,4)'=""  ;there's an end date on it
 .S ABMPGCK=1
 Q
SPLITHOW ;EP
 K ABMY("SPLITHOW")
 S DIR(0)="SO^C:Yes, 1 Claim for each CHARGE;P:Yes, 1 Claim for each PAGE;N:No, don't split the claim"
 S DIR("A")="Split the claim? "
 S DIR("B")="N"
 D ^DIR
 Q:$G(Y)=""
 Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 S ABMY("SPLITHOW")=$S(Y="C":1,Y="P":2,1:0)
 Q
DISPLAY ;EP
 W !!,"You selected: "
 W !?11,"Insurer: ",$P($G(^AUTNINS(ABMY("INS"),0)),U)
 W !?8,"Start Date: ",$$SDT^ABMDUTL(ABMY("DT",1))
 W !?8,"Split page: ",$TR(ABMY("PGS"),"^","")_" "_$S(ABMY("PGS")["8D":"MEDICATIONS",ABMY("PGS")["8E":"LABORATORY",ABMY("PGS")["8F":"RADIOLOGY",ABMY("PGS")["8H":"HCPCS",1:"")
 W !?3,"Split claim how: "_$S(ABMY("SPLITHOW")=1:"1 Claim for each CHARGE",ABMY("SPLITHOW")=2:"1 Claim for each PAGE",1:"No, don't split the claim")
 Q
SAVE ;EP
 W !!,"Saving setup.."
 K DIC,DIE,DA,DR,X,Y
 S DA(1)=ABMY("INS")
 S X=$TR(ABMY("PGS"),"^")
 S DIC="^ABMNINS("_DUZ(2)_","_DA(1)_",6,"
 S DIC("P")=$P(^DD(9002274.09,6,0),U,2)
 S DIC(0)="LX"
 S DIC("DR")=".02////"_ABMY("DT",1)  ;start date for this split entry
 S DIC("DR")=DIC("DR")_";.03///"_ABMY("SPLITHOW")  ;1 chg/clm or 1 pg/clm
 S DIC("DR")=DIC("DR")_";.05///NOW"  ;entry created date
 S DIC("DR")=DIC("DR")_";.06////"_DUZ  ;who created
 K DD,DO
 D FILE^DICN
 I Y<0 W !!,"Entry not saved."
 D PAZ^ABMDRUTL
 Q
END ;EP
 S ABMEFLG=0
 K DIC,DIE,DIR,DA,DR,X,Y
 S DIR(0)="DO^"_$P($G(^ABMNINS(DUZ(2),ABMY("INS"),6,ABMENTR,0)),U,2)
 S DIR("A",1)="End date must be ON or AFTER the start date for this entry"
 S DIR("A")="END DATE"
 D ^DIR
 I $D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT) Q
 I +Y<1
 S ABMEDT=+Y  ;end date
 K DIC,DIE,DIR,DA,DR,X,Y
 S DIR(0)="Y"
 S DIR("A")="Are you sure you wish to terminate this entry"
 S DIR("B")="N"
 D ^DIR
 I +Y<1 W !!,"Entry not terminated." H 1 Q
 ;
 ;save entry
 W !!,"Saving setup.."
 S DA(1)=ABMY("INS")
 S DA=ABMENTR
 S DIE="^ABMNINS("_DUZ(2)_","_DA(1)_",6,"
 S DR=".04////"_ABMEDT  ;end date
 S DR=DR_";.07///NOW;.08////"_DUZ  ;end date entered on and by whom
 D ^DIE
 D PAZ^ABMDRUTL
 Q
