ABMDREX1 ; IHS/SD/SDR - Re-Create batch of Selected Bills ;    
 ;;2.6;IHS Third Party Billing System;**2,3,4,6,10,14,21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR 2.6*21 - split routine from ABMDREEX
 ;IHS/SD/SDR 2.6*21 HEAT207484 Made change to stop error <UNDEF>EXPMODE+66^ABMDREEX when no bills meet selected criteria
 ;
ZIS ;EP
 ;start new abm*2.6*3
 S ABMBIEN=0,ABMDFLG=0
 F  S ABMBIEN=$O(^TMP($J,"ABM-D-DUP",ABMBIEN)) Q:(+$G(ABMBIEN)=0)  D
 .I $G(^TMP($J,"ABM-D-DUP",ABMBIEN))>1 S ABMDFLG=1
 I ABMDFLG=1 W !!?2,"Duplicate bills exist in this selection.  If re-exported the bill will only",!?2,"be included once."
 ;end new abm*2.6*3
 S DIR(0)="Y"
 S DIR("A",1)=""
 S DIR("A",2)=""
 I $G(ABMREX("SELINS"))'="" D
 .S DIR("A",3)="One file will be created for each visit location/visit type/export mode"
 .S DIR("A",4)="combination with a maximum of 1000 bills in each file"
 .S DIR("A",5)=""
 I $G(ABMREX("SELINS"))="" S DIR("A",3)="A file will be created for the bills selected",DIR("A",4)=""
 S DIR("A")="Proceed"
 S DIR("B")="YES"
 D ^DIR
 K DIR
 ;I Y'=1 K ABME Q  ;abm*2.6*3
 I Y'=1 D  Q:Y=1
 .W !!
 .K X,Y,DIR,DIE,DIC,DA
 .S DIR(0)="Y"
 .S DIR("A",1)="Your selection of bills will be lost."
 .S DIR("A")="Are you sure you wish to exit"
 .S DIR("B")="NO"
 .D ^DIR
 .K DIR
 ;
 ;selected bills-one filename
 I $G(ABMREX("SELINS"))="" D
 .S ABMEXP=ABMT("EXP")
 .S ABMREX("BILLSELECT")=1
 .;start new abm*2.6*3  ;abm*2.6*3 FIXPMS10005
 .S ABMY("TOT")=0
 .S ABMREX("BDFN")=0
 .F  S ABMREX("BDFN")=$O(ABMY(ABMREX("BDFN"))) Q:(+$G(ABMREX("BDFN"))=0)  D
 ..S ABMY("INS")=$P($G(^ABMDBILL(DUZ(2),ABMREX("BDFN"),0)),U,8)
 ..S ABMY("VTYP")=$P($G(^ABMDBILL(DUZ(2),ABMREX("BDFN"),0)),U,7)
 ..S ABMY("EXP")=$P($G(^ABMDBILL(DUZ(2),ABMREX("BDFN"),0)),U,6)
 ..S ABMY("LOC")=$P($G(^AUTTLOC(DUZ(2),0)),U,2)
 ..S ABMY("TOT")=+$G(ABMY("TOT"))+$P($G(^ABMDBILL(DUZ(2),ABMREX("BDFN"),2)),U)
 ..S ^TMP($J,"D",ABMY("INS"),ABMY("LOC"),ABMY("VTYP"),ABMY("EXP"),ABMREX("BDFN"))=""
 .;end new abm*2.6*3  ;abm*2.6*3 FIXPMS10005
 .D CREATEN^ABMDREEX
 .;
 ;exports selected - one filename for ea export
 I $G(ABMREX("SELINS"))'="" D
 .S ABMREX("BATCHSELECT")=1
 .;start new abm*2.6*3 FIXPMS10005
 .S ABMFCNT=1
 .S ABMY("INS")=0
 .F  S ABMY("INS")=$O(^TMP($J,"ABM-REEX",ABMY("INS"))) Q:'ABMY("INS")  D
 ..S ABMINS("IEN")=ABMY("INS")
 ..S ABMY("LOC")=0
 ..F  S ABMY("LOC")=$O(^TMP($J,"ABM-REEX",ABMY("INS"),ABMY("LOC"))) Q:'ABMY("LOC")  D
 ...S ABMY("LOC1")=$P($G(^AUTTLOC(ABMY("LOC"),0)),U,2)_"@"_ABMY("LOC")
 ...S ABMY("VTYP")=0
 ...F  S ABMY("VTYP")=$O(^TMP($J,"ABM-REEX",ABMY("INS"),ABMY("LOC"),ABMY("VTYP"))) Q:'ABMY("VTYP")  D
 ....S ABMY("EXP")=0
 ....F  S ABMY("EXP")=$O(^TMP($J,"ABM-REEX",ABMY("INS"),ABMY("LOC"),ABMY("VTYP"),ABMY("EXP"))) Q:'ABMY("EXP")  D
 .....S ABMEXP=ABMY("EXP")
 .....S ABMBDFN=0
 .....S ABMCNT=0
 .....S ABMY("TOT")=0
 .....F  S ABMBDFN=$O(^TMP($J,"ABM-REEX",ABMY("INS"),ABMY("LOC"),ABMY("VTYP"),ABMY("EXP"),ABMBDFN)) Q:'ABMBDFN  D
 ......S ABMCNT=+$G(ABMCNT)+1
 ......S ABMY("TOT")=+$G(ABMY("TOT"))+$P($G(^ABMDBILL(DUZ(2),ABMBDFN,2)),U)
 .....S ABMREX("CNTS",ABMY("EXP"),ABMCNT)=""
 .....W !!,"Creating file # ",ABMFCNT
 .....S ABMFCNT=+$G(ABMFCNT)+1
 .....M ^TMP($J,"D",ABMY("INS"),ABMY("LOC1"),ABMY("VTYP"),ABMY("EXP"))=^TMP($J,"ABM-REEX",ABMY("INS"),ABMY("LOC"),ABMY("VTYP"),ABMY("EXP"))
 .....W !,?15,$P(^ABMDEXP(ABMY("EXP"),0),U),?35,"VISIT TYPE: "_ABMY("VTYP"),?55,ABMCNT_" "_$S(ABMCNT=1:"Bill",1:"Bills"),?68,$J($FN(ABMY("TOT"),",",2),10)
 .....K ABMXMTDT  ;abm*2.6*3 5PMS10005#2
 .....D CREATEN^ABMDREEX
 .....K ^TMP($J,"D")
 .;end new abm*2.6*3 FIXPMS10005
 S DIR(0)="E"
 D ^DIR
 K DIR
 W !!
 Q
