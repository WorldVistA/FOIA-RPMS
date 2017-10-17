ABMDREEX ; IHS/SD/SDR - Re-Create batch of Selected Bills ;    
 ;;2.6;IHS Third Party Billing System;**2,3,4,6,10,14,21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR 2.6*2-FIXPMS10005 New routine
 ;IHS/SD/SDR 2.6*3-RPMS10005#2 mods to make Submission date of 3P Tx status file work correctly
 ;IHS/SD/SDR 2.6*3-FIXPMS10005 mods to create 1 file for each 1000 bills
 ;IHS/SD/SDR 2.6*4-NOHEAT if create and re-export are done on same day it will have duplicates
 ;IHS/SD/SDR 2.6*6-HEAT28632 <SUBSCR>CHECKBAL+17^ABMDREEX error when parent/satellite present
 ;IHS/SD/SDR 2.6*14-HEAT136160 re-wrote to sort by ins/vloc/vtyp/expmode.  Wasn't creating enough files.  Didn't label all
 ;   changes because there were so many.
 ;IHS/SD/SDR 2.6*21 - Split routine to ABMDREX1.
 ;IHS/SD/SDR 2.6*21 HEAT207484 Made change to stop error <UNDEF>EXPMODE+66^ABMDREEX when no bills meet selected criteria
 ;
EN K ABMT,ABMREX,ABMP,ABMY
 K ^TMP($J,"ABM-D"),^TMP($J,"ABM-D-DUP"),^TMP($J,"D")  ;abm*2.6*4 NOHEAT
 S ABMREX("XMIT")=0
 S ABMT("TOT")="0^0^0"
 W !!,"Re-Print Bills for:"
 K DIR
 S DIR(0)="SO^1:SELECTIVE BILL(S) (Type in the Bills to be included in this                     export.  Grouped by Insurer and Export Mode)"
 S DIR(0)=DIR(0)_";2:FOR 277 - Response of not received for insurance company                        (INACTIVE AT THIS TIME)"
 S DIR(0)=DIR(0)_";3:UNPAID BILLS for an insurer - bill should not have posted                       transactions and should be the original bill amount."
 S DIR("A")="Select Desired Option"
 D ^DIR
 K DIR
 G XIT:$D(DIRUT)!$D(DIROUT),SEL:Y=1,UNPD:Y=3
277 ;
 W !!!,"INACTIVE AT THIS TIME; functionality will be available in a future patch" H 2 W !
 G EN
SEL ;
 W !!
 K DIC
 S DIC="^ABMDBILL(DUZ(2),"
 S DIC(0)="QZEAM"
 S ABMT=$G(ABMT)+1
 S ABM("E")=$E(ABMT,$L(ABMT))
 S DIC("A")="Select "_ABMT_$S(ABMT>3&(ABMT<21):"th",ABM("E")=1:"st",ABM("E")=2:"nd",ABM("E")=3:"rd",1:"th")_" BILL to Re-Print: "
 ;start new abm*2.6*3 FIXPMS10005
 S DIC("S")="I $P(^(0),U)'=+^(0),""BTCP""[$P(^(0),""^"",4),$P(^ABMDEXP($P(^(0),""^"",6),0),U)[""837"",($$CHECKBAL^ABMDREEX(Y)=1)"
 S:ABMT>1 DIC("S")=DIC("S")_",$P(ABMT(""FORM""),""^"",1)[$P(^(0),""^"",6),($$CHECKBAL^ABMDREEX(Y)=1),(ABMT(""INS"")=$P(^(0),""^"",8)),($P(^(0),U,7)=ABMT(""VTYP""))"
 ;end new FIXPMS10005
 D BENT^ABMDBDIC
 G XIT:$D(DUOUT)!$D(DTOUT)
 I '$G(ABMP("BDFN")) G ZIS:ABMT>1,XIT
 I '$G(ABMP("BDFN")) S ABMT=ABMT-1 G SEL
 S ABMY(ABMP("BDFN"))=""
 G SEL:ABMT>1
 S ABMT("EXP")=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),0),U,6)
 S ABMT("INS")=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),0),U,8)
 S ABMT("VTYP")=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),0)),U,7)  ;abm*2.6*3
 S ABMT("FORM")=ABMT("EXP")_"^"_$P($G(^ABMDEXP(ABMT("EXP"),0)),U)
 G SEL
UNPD ;UN-PAID BILLS
 W !!
 K DIR
 S DIR(0)="PO^9999999.18:EQM"
 S DIR("A")="Select Insurer"
 D ^DIR
 K DIR
 G XIT:$D(DIRUT)!$D(DIROUT)
 S ABMREX("SELINS")=+Y
BEGDT K DIR
 S DIR(0)="DO"
 S DIR("A")="Select Beginning Export Date"
 D ^DIR
 K DIR
 ;G XIT:$D(DIRUT)!$D(DIROUT)  ;abm*2.6*3 NOHEAT
 I $D(DIRUT) K ABMREX("SELINS") G UNPD  ;abm*2.6*3 NOHEAT
 G XIT:$D(DIROUT)  ;abm*2.6*3 NOHEAT
 S ABMREX("BEGDT")=+Y
ENDDT K DIR
 S DIR(0)="DO"
 S DIR("A")="Select Ending Export Date"
 D ^DIR
 K DIR
 ;G XIT:$D(DIRUT)!$D(DIROUT)  ;abm*2.6*3 NOHEAT
 I $D(DIRUT) K ABMREX("BEGDT") G BEGDT  ;abm*2.6*3 NOHEAT
 G XIT:$D(DIROUT)  ;abm*2.6*3 NOHEAT
 S ABMREX("ENDDT")=+Y
EXPMODE D ^XBFMK
 S DIC(0)="AEBNQ"
 S DIC="^ABMDEXP("
 S DIC("S")="I $P($G(^ABMDEXP(Y,0)),U)[""837"""
 S DIC("A")="Select Export Mode (leave blank for ALL): "
 D ^DIC
 ;G XIT:$D(DIRUT)!$D(DIROUT)  ;abm*2.6*3 NOHEAT
 G XIT:(X["^^")  ;abm*2.6*3 NOHEAT
 I $D(DUOUT) K ABMREX("ENDDT") G ENDDT  ;abm*2.6*3 NOHEAT
 S ABMREX("SELEXP")=$S(+Y>0:+Y,1:"")  ;they can select all exp modes by leaving prompt blank
 I (ABMREX("BEGDT")>(ABMREX("ENDDT"))) W !!,"Beginning Export Date must be before Ending Export Date" H 1 G UNPD
 ;
 S ABMBDT=(ABMREX("BEGDT")-.5)
 S ABMEDT=(ABMREX("ENDDT")+.999999)
 S (ABMBCNT,ABMTAMT)=0  ;abm*2.6*21 IHS/SD/SDR HEAT207484
 ;start old HEAT136160
 ;S ABMBCNT=0,ABMTAMT=0
 ;S ABMFCNT=1  ;file cnt  ;abm*2.6*3 FIXPMS10005
 ;F  S ABMBDT=$O(^ABMDTXST(DUZ(2),"B",ABMBDT)) Q:(+ABMBDT=0!(ABMBDT>ABMEDT))  D
 ;.S ABMIEN=0
 ;.F  S ABMIEN=$O(^ABMDTXST(DUZ(2),"B",ABMBDT,ABMIEN)) Q:+ABMIEN=0  D
 ;..I $P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,4)'=ABMREX("SELINS") Q  ;not our ins
 ;..I ABMREX("SELEXP")'="",($P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,2)'=(ABMREX("SELEXP"))) Q  ;they selected one & this isn't it
 ;..I ABMREX("SELEXP")="",($P($G(^ABMDEXP($P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,2),0)),U)'[("837")) Q  ;they didn't answer so deflt to all 837s
 ;..S ABMBIEN=0
 ;..S ABMFBCNT=0  ;cnt bills in file ;abm*2.6*3 FIXPMS10005
 ;..F  S ABMBIEN=$O(^ABMDTXST(DUZ(2),ABMIEN,2,ABMBIEN)) Q:+ABMBIEN=0  D
 ;...I $P($G(^ABMDBILL(DUZ(2),ABMBIEN,0)),U,4)="X" Q  ;skip cancelled bills
 ;...S ABMBALCK=$$CHECKBAL(ABMBIEN)
 ;...I ABMBALCK=0 Q  ;has been posted to
 ;...;cnt tot bills & amt
 ;...S ABMBCNT=+$G(ABMBCNT)+1
 ;...S ABMTAMT=+$G(ABMTAMT)+($P($G(^ABMDBILL(DUZ(2),ABMBIEN,2)),U))
 ;...;cnt bills not cancelled or posted to in export
 ;...S ABMREX("CNTS",$P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,2),ABMIEN)=+$G(ABMREX("CNTS",$P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,2),ABMIEN))+1
 ;...S $P(ABMREX("CNTS",$P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,2),ABMIEN),U,2)=+$P($G(ABMREX("CNTS",$P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,2),ABMIEN)),U,2)+($P($G(^ABMDBILL(DUZ(2),ABMBIEN,2)),U))
 ;...S ABMREX("EXPS",$P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,2),ABMIEN)=""  ;capture what export IENs to do
 ;...;start new abm*2.6*3 FIXPMS10005
 ;...S ^TMP($J,"ABM-D",ABMFCNT,$P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,2),ABMIEN,ABMBIEN)=""
 ;...S ^TMP($J,"ABM-D-DUP",ABMBIEN)=+$G(^TMP($J,"ABM-D-DUP",ABMBIEN))+1  ;cnt # of times bill in select exports  ;abm*2.6*3
 ;...S ABMFBCNT=+$G(ABMFBCNT)+1
 ;...I ABMFBCNT>1000 S ABMFCNT=+$G(ABMFCNT)+1,ABMFBCNT=0
 ;...;end new abm*2.6*3 FIXPMS10005
 ;end old start new HEAT136160
 F  S ABMBDT=$O(^ABMDTXST(DUZ(2),"B",ABMBDT)) Q:(+ABMBDT=0!(ABMBDT>ABMEDT))  D
 .S ABMIEN=0
 .F  S ABMIEN=$O(^ABMDTXST(DUZ(2),"B",ABMBDT,ABMIEN)) Q:+ABMIEN=0  D
 ..I $P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,4)'=ABMREX("SELINS") Q  ;not our ins
 ..I ABMREX("SELEXP")'="",($P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,2)'=(ABMREX("SELEXP"))) Q  ;they selected one & this isn't it
 ..I ABMREX("SELEXP")="",($P($G(^ABMDEXP($P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U,2),0)),U)'[("837")) Q  ;they didn't answer so deflt to all 837s
 ..S ABMBIEN=0
 ..S ABMFBCNT=0
 ..F  S ABMBIEN=$O(^ABMDTXST(DUZ(2),ABMIEN,2,ABMBIEN)) Q:+ABMBIEN=0  D
 ...I $P($G(^ABMDBILL(DUZ(2),ABMBIEN,0)),U,4)="X" Q  ;skip cancelled bills
 ...S ABMBALCK=$$CHECKBAL(ABMBIEN)
 ...I ABMBALCK=0 Q  ;has been posted to
 ...S ABMVLOC=$P($G(^ABMDBILL(DUZ(2),ABMBIEN,0)),U,3)
 ...S ABMVTYP=$P($G(^ABMDBILL(DUZ(2),ABMBIEN,0)),U,7)
 ...S ABMEXP=$P($G(^ABMDBILL(DUZ(2),ABMBIEN,0)),U,6)
 ...S ABMINS=$P($G(^ABMDBILL(DUZ(2),ABMBIEN,0)),U,8)
 ...S ^TMP($J,"ABM-REEX",ABMINS,ABMVLOC,ABMVTYP,ABMEXP,ABMBIEN)=""  ;use this for export
 ...S ABMBCNT=+$G(ABMBCNT)+1
 ...S ABMTAMT=+$G(ABMTAMT)+$P($G(^ABMDBILL(DUZ(2),ABMBIEN,2)),U)  ;total bill cnt, amt
 ...S ABMREX("CNTS",ABMEXP,ABMIEN)=+$G(ABMREX("CNTS",ABMEXP,ABMIEN))+1
 ...S $P(ABMREX("CNTS",ABMEXP,ABMIEN),U,2)=+$P(ABMREX("CNTS",ABMEXP,ABMIEN),U,2)+$P($G(^ABMDBILL(DUZ(2),ABMBIEN,2)),U)
 ...S ^TMP($J,"ABM-D-DUP",ABMBIEN)=+$G(^TMP($J,"ABM-D-DUP",ABMBIEN))+1
 ;end new HEAT136160
 I ABMBCNT=0 W !!,"No Bills were found that meet the selected criteria" H 3 Q  ;abm*2.6*21 IHS/SD/SDR HEAT207484
 W !!,"A total of "_ABMBCNT_" "_$S(ABMBCNT=1:"bill ",1:"bills ")_"for $"_$J(ABMTAMT,1,2)_" have been located."
 I ABMBCNT>0 D
 .W !?8,"Export mode",?25,"Export Dt/Tm",?50,"#Bills",?60,"Total Amt"
 .S ABMREX("EXP")=0,ABMECNT=0
 .F  S ABMREX("EXP")=$O(ABMREX("CNTS",ABMREX("EXP"))) Q:($G(ABMREX("EXP"))="")  D
 ..S ABMIEN=0
 ..F  S ABMIEN=$O(ABMREX("CNTS",ABMREX("EXP"),ABMIEN)) Q:($G(ABMIEN)="")  D
 ...S ABMECNT=+$G(ABMECNT)+1
 ...W !,?1,ABMECNT,?8,$P(^ABMDEXP(ABMREX("EXP"),0),U),?25,$$CDT^ABMDUTL($P($G(^ABMDTXST(DUZ(2),ABMIEN,0)),U)),?50,+$G(ABMREX("CNTS",ABMREX("EXP"),ABMIEN)),?60,$J(+$P($G(ABMREX("CNTS",ABMREX("EXP"),ABMIEN)),U,2),1,2)
ZIS ;EP
 D ZIS^ABMDREX1  ;abm*2.6*20 IHS/SD/SDR split routine due to size
OUT ;
 D ^%ZISC
 ;
XIT ;
 K ^TMP($J,"D"),^TMP($J,"ABM-D")  ;abm*2.6*3
 K ABMP,ABMY,DIQ,ABMT,ABMREX
 Q
CHECKBAL(ABMBIEN) ;
 S ABMBALCK=0
 S ABMHOLD=DUZ(2)
 S BARSAT=$P($G(^ABMDBILL(DUZ(2),ABMBIEN,0)),U,3)  ;Satellite=3P Visit loc
 S ABMP("DOS")=$P($G(^ABMDBILL(DUZ(2),ABMBIEN,7)),U)
 S BARPAR=0  ;Parent
 ; check site active at DOS to ensure bill added to correct site
 S DA=0
 F  S DA=$O(^BAR(90052.06,DA)) Q:DA'>0  D  Q:BARPAR
 .Q:'$D(^BAR(90052.06,DA,DA))  ;Pos Parent UNDEF Site Parm
 .Q:'$D(^BAR(90052.05,DA,BARSAT))  ;Sat UNDEF Par/Sat
 .Q:+$P($G(^BAR(90052.05,DA,BARSAT,0)),U,5)  ;Par/Sat not usable
 .;Q if sat NOT active at DOS
 .I ABMP("DOS")<$P($G(^BAR(90052.05,DA,BARSAT,0)),U,6) Q
 .;Q if sat became NOT active before DOS
 .I $P($G(^BAR(90052.05,DA,BARSAT,0)),U,7),(ABMP("DOS")>$P($G(^BAR(90052.05,DA,BARSAT,0)),U,7)) Q
 .S BARPAR=$S(BARSAT:$P($G(^BAR(90052.05,DA,BARSAT,0)),U,3),1:"")
 I 'BARPAR Q ABMBALCK  ;No parent defined for satellite
 S DUZ(2)=BARPAR
 S ABMARBIL=$O(^BARBL(DUZ(2),"B",$P($G(^ABMDBILL(ABMHOLD,ABMBIEN,0)),U)))
 S ABMARIEN=$O(^BARBL(DUZ(2),"B",ABMARBIL,0))
 Q:'ABMARIEN ABMBALCK
 S ABMARBAL=$$GET1^DIQ(90050.01,ABMARIEN,15)
 I ABMARBAL'=($P($G(^ABMDBILL(ABMHOLD,ABMBIEN,2)),U)) S ABMBALCK=0
 I ABMARBAL=($P($G(^ABMDBILL(ABMHOLD,ABMBIEN,2)),U)) S ABMBALCK=1
 S DUZ(2)=ABMHOLD
 Q ABMBALCK
CREATEN ;
 S ABMSEQ=1
 S ($P(ABMER(ABMSEQ),U,3),ABMP("EXP"))=ABMEXP
 ;S ABMLOC=$P($G(^AUTTLOC(DUZ(2),0)),U,2)  ;HEAT136160
 S ABMLOC=$P($G(^AUTTLOC(ABMY("LOC"),0)),U,2)  ;HEAT136160
 S ABMY("INS")=$S($G(ABMREX("SELINS")):ABMREX("SELINS"),1:ABMT("INS"))
 S ABMINS("IEN")=ABMY("INS")  ;ins
 S $P(ABMER(ABMSEQ),U)=ABMINS("IEN")  ;abm*2.6*3 FIXPMS10005
 S $P(ABMER(ABMSEQ),U,2)=ABMY("VTYP")  ;abm*2.6*3 FIXPMS10005
 S $P(ABMER(ABMSEQ),U,5)=ABMY("TOT")  ;abm*2.6*3 FIXPMS10005
 ;S ABMITYP=$P($G(^AUTNINS(ABMY("INS"),2)),U)  ;ins typ  ;abm*2.6*10 HEAT73780
 S ABMITYP=$$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,ABMY("INS"),".211","I"),1,"I")  ;ins typ  ;abm*2.6*10 HEAT73780
 ;# forms & tot chgs
 I $G(ABMP("SELINS"))="" S $P(ABMER(ABMSEQ),U,4)=+$G(ABMBCNT)
 I $G(ABMP("SELINS"))'="" S $P(ABMER(ABMSEQ),U,4)=+$G(ABMREX("CNTS",ABMEXP,ABMREX("EDFN")))
 ;start new abm*2.6*3 FIXPMS10005
 D FILE^ABMECS
 ;end new abm*2.6*3 FIXPMS10005
 Q
USEORIG ;
 S ABMP("XMIT")=ABMREX("EDFN")
 S ABMP("EXP")=$P(^ABMDTXST(DUZ(2),ABMP("XMIT"),0),"^",2)
 S ABMP("XRTN")=$P($G(^ABMDEXP(+ABMP("EXP"),0)),"^",4)
 S X=ABMP("XRTN")
 X ^%ZOSF("TEST")
 I '$T D  K ABMP Q
 .W !!,"Routine :",ABMP("XRTN")," not found.Cannot proceed.",!
 .S DIR(0)="E"
 .D ^DIR
 .K DIR
 D @("^"_ABMP("XRTN"))
 K ABMP
 Q
LISTBILL ;
 K ABMY
 S ABMT("BDFN")=0
 F  S ABMT("BDFN")=$O(^ABMDTXST(DUZ(2),ABMREX("EDFN"),2,ABMT("BDFN"))) Q:'ABMT("BDFN")  D
 .I $P($G(^ABMDBILL(DUZ(2),ABMT("BDFN"),0)),U,4)="X" Q  ;skip cancelled bills
 .S ABMBALCK=$$CHECKBAL(ABMT("BDFN"))
 .I ABMBALCK=0 Q
 .S ABMY(ABMT("BDFN"))=""
 Q
BILLSTAT(ABMLOC,ABMBDFN,ABMEXP,ABMSTAT,ABMGCN) ;
 N DIC,DIE,DIR,DA,X,Y,ABMP
 S ABMHOLD=DUZ(2)
 S DUZ(2)=ABMLOC
 S (DA(1),ABMREX("BDFN"))=ABMBDFN
 S DIC="^ABMDBILL(DUZ(2),"_DA(1)_",74,"
 S DIC("P")=$P(^DD(9002274.4,.175,0),U,2)
 S DIC(0)="L"
 S X=ABMEXP
 I $G(ABMREX("BILLSELECT"))'="" S ABMSTAT="F"
 I $G(ABMREX("BATCHSELECT"))'="" S ABMSTAT="S"
 I $G(ABMREX("RECREATE"))'="" S ABMSTAT="C"
 S DIC("DR")=".02////"_ABMSTAT_";.03////"_ABMGCN
 K DD,DO
 D FILE^DICN
 S DUZ(2)=ABMHOLD
 S X="A"  ;deflt bill status to approved
 N DA
 S DA=ABMBDFN
 Q
