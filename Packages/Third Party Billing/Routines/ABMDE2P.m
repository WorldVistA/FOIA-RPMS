ABMDE2P ; IHS/ASDST/DMJ - Edit Page 2 - PICK PAYER ; 
 ;;2.6;IHS 3P BILLING SYSTEM;**6,24**;NOV 12, 2009;Build 429
 ;
 ; IHS/SD/SDR - v2.5 p8 - task 8
 ;    Added code for replacement insurer
 ;
 ;IHS/SD/SDR v2.5 p9 - IM13815 - change bill type when different insurer is picked
 ;
 ;IHS/SD/SDR 2.6*6 NOHEAT allow a 10th insurer to be selected; if 10th was selected it was putting 1st
 ;IHS/SD/SDR 2.6*24 CR9823 Added code to update fees if an insurer is Picked that has a different fee table setup than the one on the claim originally
 ; *********************************************************************
 ;
P1 ; Pick Insurer
 W !
 I $E(Y,2)>0&($E(Y,2)<(ABMZ("NUM")+1)) S Y=$E(Y,2) G P2
 I ABMZ("NUM")=1 S Y=1 G P2
 K DIR
 S DIR(0)="NO^1:"_ABMZ("NUM")_":0"
 S DIR("?")="Enter the Sequence Number of "_ABMZ("ITEM")_" to BILL"
 S DIR("A")="Sequence Number of "_ABMZ("ITEM")_" to BILL"
 D ^DIR
 K DIR
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!(Y'>0)
 ;
P2 ;
 Q:'$D(ABMZ(Y))
 ;S ABM("ANS")=$E(Y)  ;abm*2.6*6 NOHEAT
 S ABM("ANS")=+$G(Y)  ;abm*2.6*6 NOHEAT
 I $P(ABMZ(ABM("ANS")),U,4)="U" D  Q
 . W !!,*7,$P(ABMZ(ABM("ANS")),U)," is Designated as UNBILLABLE!",!
 . D PAZ
 I '$D(ABMZ("UNBILL",ABM("ANS"))) G PA
 W !!,$P(ABMZ(ABM("ANS")),U)," has Already been Billed!"
 W !
 K DIR
 S DIR(0)="YO"
 S DIR("A")="Do you wish to bill "_$P(ABMZ(ABM("ANS")),U,1)_" Again"
 D ^DIR
 K DIR
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!(Y'=1)
 ;
PA ;
 I $P(^ABMDCLM(DUZ(2),ABMP("CDFN"),0),U,8)]"" D
 .W !!,$P(^AUTNINS($P(^ABMDCLM(DUZ(2),ABMP("CDFN"),0),U,8),0),U)
 .W " is Currently the Billing Source!"
 W !
 K DIR
 S DIR(0)="YO"
 S DIR("A")="Do you wish to bill "_$P(ABMZ(ABM("ANS")),U,1)
 D ^DIR
 K DIR
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!(Y'=1)
 ;
P3 ;
 N ABMVIST,ABMMODE
 S ABMP("INS")=$P(ABMZ(ABM("ANS")),U,2)
 S DA=ABMP("CDFN")
 S DIE="^ABMDCLM(DUZ(2),"
 S ABMVIST=$P(^ABMDCLM(DUZ(2),DA,0),U,7)
 S ABMMODE=$P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMVIST,0)),U,4)
 S DR=".08////"_ABMP("INS")_$S(ABMMODE:";.14///"_ABMMODE,1:"")
 S ABMP("BTYP")=$S($P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),U,11)'="":$P($G(^ABMDCODE($P(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0),U,11),0)),U),1:ABMP("VTYP"))
 S DR=DR_";.12////"_ABMP("BTYP")
 D ^DIE
 K DR
 K ^ABMDCLM(DUZ(2),DA,13,"C")
 S ABMP("C0")=^ABMDCLM(DUZ(2),ABMP("CDFN"),0)
 S ABMX("INS")=$P(ABMZ(ABM("ANS")),"^",3)
 D COV^ABMDE2X5
 K ABMX
 S Y="",ABM("T")=""
 I ABMZ("UNBILL") D
 .F ABM("I")=1:1 S ABM("T")=$O(ABMZ("UNBILL",ABM("T"))) Q:'ABM("T")  D
 ..I ABM("T")'=ABM("ANS") D
 ...S Y=$S(Y]"":Y_","_ABM("T"),1:ABM("T"))
 S Y=$S(Y]"":Y_","_ABM("ANS"),1:ABM("ANS"))
 F ABM("I")=1:1 S ABM("T")=$O(ABMZ(ABM("T"))) Q:'ABM("T")  D
 .I ABM("T")'=ABM("ANS") D
 ..I '$D(ABMZ("UNBILL",ABM("T"))) D
 ...S Y=Y_","_ABM("T")
 S DA(1)=ABMP("CDFN")
 S DIE="^ABMDCLM(DUZ(2),"_DA(1)_","_ABMZ("SUB")_","
 I ABM("I")'=1 D
 .K ABMX
 .F ABMX=1:1 S ABMX("Y")=$P(Y,",",ABMX) Q:ABMX("Y")=""  Q:+ABMX("Y")'>0!(ABMX("Y")'<(ABMZ("NUM")+1))  D
 ..S:'$D(ABMX(ABMX("Y"))) ABMX(ABMX("Y"))=ABMX
 I ABM("I")'=1 D
 .F ABMX=1:1:ABMZ("NUM") D
 ..S DA=$P(ABMZ(ABMX),U,3)
 ..S DR=".02////"_$S($D(ABMX(ABMX)):ABMX(ABMX),1:ABMX)
 ..D ^DIE
 S DA(1)=ABMP("CDFN")
 S DA=$P(ABMZ(ABM("ANS")),U,3)
 S DIE="^ABMDCLM(DUZ(2),"_DA(1)_","_ABMZ("SUB")_","
 S DR=".03///I"
 D ^DIE
 K DR
 S DA(1)=ABMP("CDFN")
 S DIE="^ABMDCLM(DUZ(2),"_DA(1)_",13,"
 S DR=".03///P"
 S DA=0
 F  S DA=$O(^ABMDCLM(DUZ(2),ABMP("CDFN"),13,DA)) Q:'DA  D
 .I "CU"'[$P(^ABMDCLM(DUZ(2),ABMP("CDFN"),13,DA,0),U,3) D
 .. I DA'=$P(ABMZ(ABM("ANS")),U,3) D ^DIE
 S ABMPS("FEE")=ABMP("FEE")  ;abm*2.6*24 IHS/SD/SDR CR9823
 D TPICHECK^ABMDE1
 ;start new abm*2.6*24 IHS/SD/SDR CR9823
NEWFETBL ;
 ;if a fee table is setup for the insurer/visit type and it's not the one already defined
 S ABMFTST=0
 I +$P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),0)),U,5)'=0&(+$G(ABMPS("FEE"))'=+$P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),0)),U,5)) S ABMFTST=1
 I ABMFTST=0&(+$P($G(^ABMDPARM(DUZ(2),1,0)),U,9)'=0)&(+$G(ABMPS("FEE"))'=+$P($G(^ABMDPARM(DUZ(2),1,0)),U,9)) S ABMFTST=1
 I ABMFTST=1 D
 .W !!,$$EN^ABMVDF("HIN"),"**Note**",$$EN^ABMVDF("HIF")
 .W "  A different fee schedule (#"_ABMP("FEE")_") has been identified for this"
 .W !,"visit type ("_ABMP("VTYP")_").",!
 .D ^XBFMK
 .S DIR(0)="Y"
 .S DIR("A")="Do you wish to import those fees into this claim"
 .S DIR("B")="Yes"
 .D ^DIR
 .K DIR
 .Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 .I Y=0 W !!,"Fees will be left as is then.." H 1 Q  ;don't want to import; leave fees as is
 .S ABMI=19  ;skip everything prior to 21 (starting at 19)
 .F  S ABMI=$O(^ABMDCLM(DUZ(2),ABMP("CDFN"),ABMI)) Q:'ABMI!(ABMI>47)  D
 ..Q:ABMI=41  ;skip provider multiple
 ..S ABMTT=0
 ..F  S ABMTT=$O(^ABMDCLM(DUZ(2),ABMP("CDFN"),ABMI,ABMTT)) Q:'ABMTT  D
 ...I $P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),ABMI,ABMTT,0)),U,17)["|TC" Q  ;skip any entry that are from the V Trans Code file; these are from charge master and should be left alone
 ...K ABMT
 ...D ^XBFMK
 ...S DA(1)=ABMP("CDFN")
 ...S DA=ABMTT
 ...S DIE="^ABMDCLM("_DUZ(2)_","_DA(1)_","_ABMI_","
 ...S ABMT("CD")=$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),ABMI,ABMTT,0)),U)
 ...S ABMMLT=$S(ABMI=21:11,ABMI=23:25,ABMI=25:31,ABMI=27:19,ABMI=33:21,ABMI=35:15,ABMI=37:17,ABMI=39:23,ABMI=43:13,ABMI=45:32,ABMI=47:13,1:13)
 ...I ABMI=33 S ABMR("CODE")=$$GET1^DIQ(9999999.31,ABMT("CD"),".01","E"),ABMT("CD")="1"_ABMR("CODE")
 ...S ABMT("FEE")=+$$ONE^ABMFEAPI(ABMP("FEE"),ABMMLT,ABMT("CD"),ABMP("VDT"))
 ...I ABMI=21 S DR=".07"
 ...I "^23^27^35^37^39^43^47^"[("^"_ABMI_"^") S DR=".04"
 ...I ABMI=25 S DR=".03"
 ...I ABMI=33 S DR=".08"
 ...S DR=DR_"////"_+ABMT("FEE")
 ...D ^DIE
 .W !!,"Updates complete" H 1
 ;end new abm*2.6*24 IHS/SD/SDR CR9823
 Q
 ;
PAZ ;
 K DIR
 S DIR(0)="E"
 D ^DIR
 K DIRUT,DUOUT
 Q
