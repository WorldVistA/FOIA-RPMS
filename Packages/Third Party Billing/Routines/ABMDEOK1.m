ABMDEOK1 ; IHS/SD/SDR - Charge Print Order Screen
 ;;2.6;IHS 3P BILLING SYSTEM;**23**;NOV 12, 2009;Build 427
 ;
 ;IHS/SD/SDR 2.6*23 CR9730 New Routine. Added call for new charge print order screen where user can sequence how charges print on claim.
 ;
 ; *********************************************************************
 ;
PRTORD ;EP
 K ABMANS
 S ABMCMPLT=0  ;flag that they are done
 S ABMOUT=0
 K ABMP("CHGS"),ABMT
 F  D  Q:ABMCMPLT=1!(+$G(ABMOUT)=1)
 .S ABMOUT=0
 .D COMPILE
 .I $O(ABMP("CHGS",99999),-1)=1 S ABMOUT=1 Q  ;there's only one line item so don't do this page
 .S ABMCMPLT=0  ;reset before asking the user anything
 .I '$D(ABMP("CHGS")) Q  ;start over because there was a problem with the print order and it was removed
 .D HDR
 .D DISPLAY
 .D PROMPT  ;ask print order
 .I +$G(ABMOUT)=1 Q  ;user typed '^' at prompt
 .I +$G(ABMCFLG)=1 Q  ;something was wrong with answer at prompt; start over
 .W $$EN^ABMVDF("IOF")
 .D REARRANG  ;put lines in new order
 ;
 I +$G(ABMOUT)=0 D PAZ^ABMDRUTL
 Q
COMPILE ;EP
 K ABMT("CK")  ;this will be used to verify everything is selected for print order
 S ABMLCNT=0
 S ABMTCNT=0
 F ABMI=21:2:47 D
 .D DATACHK
 .Q:ABMQUIT=1
 .S ABMJ=0
 .F  S ABMJ=$O(^ABMDCLM(DUZ(2),ABMP("CDFN"),ABMI,ABMJ)) Q:'ABMJ  D
 ..S ABMLCNT=+$G(ABMLCNT)+1
 ..S ABMTCNT=+$G(ABMTCNT)+1
 ..D GATHER
 I $O(ABMT("CK",99999),-1)'=ABMTCNT D DELETE S ABMPOFLG=0 K ABMP("CHGS")
 D RESORT
 ;D DATACHK
 Q
DATACHK; EP
 S ABMQUIT=0
 I ABMI=41 S ABMQUIT=1  ;skip provider multiple
 I ((ABMP("VTYP")=998)&("^23^33^35^37^43^"'[("^"_ABMI_"^"))) S ABMQUIT=1 Q  ;dental charges only
 I ((ABMP("VTYP")=997)&("^23^43^"'[("^"_ABMI_"^"))) S ABMQUIT=1 Q  ;pharmacy charges only
 I ((ABMP("VTYP")=996)&("^37^"'[("^"_ABMI_"^"))) S ABMQUIT=1 Q  ;laboratory charges only
 I ((ABMP("VTYP")=995)&("^35^"'[("^"_ABMI_"^"))) S ABMQUIT=1 Q  ;radiology charges only
 I (($P($G(^DIC(40.7,ABMP("CLN"),0)),U,2)="A3")&("^47^"'[("^"_ABMI_"^"))) S ABMQUIT=1 Q  ;ambulance charges only
 I (($P($G(^DIC(40.7,ABMP("CLN"),0)),U,2)'="A3")&("^47^"[("^"_ABMI_"^"))) S ABMQUIT=1 Q  ;skip ambulance charges
 Q
GATHER ;EP
 S ABMREC=$G(^ABMDCLM(DUZ(2),ABMP("CDFN"),ABMI,ABMJ,0))
 ;revenue code
 I ABMI=21 S ABMRC=$P(ABMREC,U,3)
 I ABMI=25 S ABMRC=$P(ABMREC,U)
 I ABMI=45 S ABMRC=$P(ABMREC,U,5)
 I (ABMI'=21&(ABMI'=25)&(ABMI'=45)) S ABMRC=$P(ABMREC,U,2)
 ;check if print order has been done before; if so, use it for ABMLCNT
 I ((ABMI=23)&(+$P(ABMREC,U,30)'=0)) S ABMLCNT=+$P(ABMREC,U,30),ABMPOFLG=1
 I ((ABMI'=23)&(+$P(ABMREC,U,23)'=0)) S ABMLCNT=+$P(ABMREC,U,23),ABMPOFLG=1
 ;
 S ABMP("CHGS",ABMRC,ABMLCNT)=ABMI_U_ABMJ  ;mult and IEN of entry
 S $P(ABMP("CHGS",ABMRC,ABMLCNT),U,3)=ABMRC  ;rev code
 ;service code
 S ABMCODE=$S(ABMI=25:$P(ABMREC,U,7),1:$P(ABMREC,U))  ;service code (CPT or med or whatever)
 I ABMI=23 S ABMSCODE=$$GET1^DIQ(50,ABMCODE,31,"E")
 I ABMI=33 S ABMSCODE=$$GET1^DIQ(9999999.31,ABMCODE,".01","E")
 I ABMI'=23&(ABMI'=33) S ABMSCODE=$$GET1^DIQ(81,ABMCODE,".01","E")
 I ABMI=25,+ABMSCODE=0 S ABMSCODE="*NO CPT*"
 I ABMI=45 S ABMSCODE=$P($G(^ABMCM(+ABMREC,0)),U)
 I "^27^43^47"[("^"_ABMI_"^") S ABMM1=$P(ABMREC,U,5),ABMM2=$P(ABMREC,U,8),ABMM3=$P(ABMREC,U,9)
 S (ABMM1,ABMM2,ABMM3)=""
 I ABMI=21 S ABMM1=$P(ABMREC,U,9),ABMM2=$P(ABMREC,U,11),ABMM3=$P(ABMREC,U,12)
 I ABMI=23 S ABMM1=$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),ABMI,ABMJ,2)),U,3),ABMM2=$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),ABMI,ABMJ,2)),U,4),ABMM3=$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),ABMI,ABMJ,2)),U,5)
 I ABMI=35 S ABMM1=$P(ABMREC,U,5),ABMM2=$P(ABMREC,U,6),ABMM3=$P(ABMREC,U,7)
 I ABMI=37 S ABMM1=$P(ABMREC,U,6),ABMM2=$P(ABMREC,U,7),ABMM3=$P(ABMREC,U,8)
 I ABMI=39 S ABMM1=$P(ABMREC,U,6),ABMM2=$P(ABMREC,U,14),ABMM3=$P(ABMREC,U,19)
 I ABMI=21 S ABMM1=$P(ABMREC,U,9),ABMM2=$P(ABMREC,U,11),ABMM3=$P(ABMREC,U,12)
 S ABMSCODE=ABMSCODE_$S(ABMM1'="":"-"_ABMM1,1:"")_$S(ABMM2'="":"-"_ABMM2,1:"")_$S(ABMM3'="":"-"_ABMM3,1:"")
 S $P(ABMP("CHGS",ABMRC,ABMLCNT),U,4)=ABMSCODE
 ;
 S ABMCHRG=($S(ABMI=21:$P(ABMREC,U,7),ABMI=25:$P(ABMREC,U,3),ABMI=33:$P(ABMREC,U,8),1:$P(ABMREC,U,4)))  ;charge amount
 S ABMUNTS=$S(ABMI=21:$P(ABMREC,U,13),ABMI=25:$P(ABMREC,U,2),ABMI=33:$P(ABMREC,U,9),1:$P(ABMREC,U,3))
 S $P(ABMP("CHGS",ABMRC,ABMLCNT),U,6)=ABMUNTS*ABMCHRG  ;total charges
 I ABMI=23 S $P(ABMP("CHGS",ABMRC,ABMLCNT),U,6)=$P(ABMP("CHGS",ABMRC,ABMLCNT),U,6)+$P(ABMREC,U,5)
 S $P(ABMP("CHGS",ABMRC,ABMLCNT),U,5)=$S(+$P(ABMP("CHGS",ABMRC,ABMLCNT),U,6)'=0:ABMUNTS,1:0)  ;units
 ;dos
 I "^27^33^39^43^47^"[("^"_ABMI_"^") S ABMDOS=$P(ABMREC,U,7)
 I "^21^37^"[("^"_ABMI_"^") S ABMDOS=$P(ABMREC,U,5)
 I ABMI=23 S ABMDOS=$P(ABMREC,U,14)
 I ABMI=25 S ABMDOS=$P(ABMREC,U,4)
 I ABMI=35 S ABMDOS=$P(ABMREC,U,9)
 I ABMI=45 S ABMDOS=$P(ABMREC,U,2)
 I +$G(ABMDOS)=0 S ABMDOS=$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),7)),U)  ;default to service date from
 S $P(ABMP("CHGS",ABMRC,ABMLCNT),U,7)=ABMDOS
 S ABMT("CK",ABMLCNT)=0  ;this will be used to verify that they selected all the lines
 Q
RESORT ;
 S ABMRC=0,ABMJ=1
 F  S ABMRC=$O(ABMP("CHGS",ABMRC)) Q:'ABMRC  D
 .S ABMI=0
 .F  S ABMI=$O(ABMP("CHGS",ABMRC,ABMI)) Q:'ABMI  D
 ..S ABMT("CHGS",$S(+$G(ABMPOFLG)=1:ABMI,1:ABMJ))=$G(ABMP("CHGS",ABMRC,ABMI))
 ..S ABMJ=+$G(ABMJ)+1
 K ABMP("CHGS")
 M ABMP("CHGS")=ABMT("CHGS")
 Q
PROMPT ;EP
 S ABMDFLG=0
 D ^XBFMK
 S DIR(0)="FO"
 S DIR("A")="Select printing order"
 S DIR("?")="Enter all line numbers, separated by commas, in the desired print order"
 D ^DIR K DIR
 I X="^" S ABMOUT=1 Q  ;exit completely if user typed '^'
 Q:$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 I $D(DIRUT) D  ;user just typed <return> without selecting - use numerical order
 .S ABMDFLG=1
 .S ABMC1=0
 .F  S ABMC1=$O(ABMP("CHGS",ABMC1)) Q:'ABMC1  S Y=$S(Y="":ABMC1,1:Y_","_ABMC1)
 .S ABMCMPLT=1
 S ABMANS=Y
 K Y
 S ABMCFLG=0
 I +$G(ABMANS)=0 S ABMCFLG=1 Q  ;there is something non-numeric to start with
 F ABMI=1:1:($L(ABMANS,",")) D
 .S ABMTEST=+$P(ABMANS,",",ABMI)
 .I ABMTEST=0 S ABMCFLG=1 Q  ;not numeric or nothing there
 .I ABMTEST'?1.3N S ABMCFLG=1  ;must be 1-3 numbers
 .I '$D(ABMP("CHGS",ABMTEST)) S ABMCFLG=1  ;not a number in the list of charges
 .S ABMT("CK",ABMTEST)=+$G(ABMT("CK",ABMTEST))+1  ;accounted for in selection
 .I +$G(ABMCFLG)=1 Q  ;don't record the entry
 I ABMCFLG=1 Q
 D DATACHK2,DATACHK3
 I ABMCFLG=0 S ABMCMPLT=1
 Q
DATACHK ;EP
 S ABMC1=0
 S ABMCFLG=0
 S ABMC2=0
 F  S ABMC2=$O(ABMP("CHGS",ABMC2)) Q:'ABMC2  D
 .S ABMC3=0
 .F  S ABMC3=$O(ABMP("CHGS",ABMC2,ABMC3)) Q:'ABMC3  D
 ..I ABMC3'=(ABMC1+1) S ABMCFLG=1
 ..S ABMC1=+$G(ABMC1)+1
 Q
DATACHK2 ;EP
 ;verifies every number is accounted for in sequence
 S ABMC1=0
 S ABMANS1=","_ABMANS_","
 F  S ABMC1=$O(ABMP("CHGS",ABMC1)) Q:'ABMC1  D
 .I ABMANS1'[(","_ABMC1_",") S ABMCFLG=1  ;not an answer selected
 Q
DATACHK3 ;EP
 S ABMC2=0
 F  S ABMC2=$O(ABMT("CK",ABMC2)) Q:'ABMC2  D
 .I +$G(ABMT("CK",ABMC2))=0 S ABMCFLG=1  ;there's a line that wasn't sequenced
 .I +$G(ABMT("CK",ABMC2))>1 S ABMCFLG=1  ;line was selected more than once
 I +$G(ABMCFLG)=1 D DELETE K ABMP("CHGS")  ;there's a bad entry, delete them all
 Q
ADD ;EP
 F ABMI=1:1:($L(ABMANS,",")) D
 .D ^XBFMK
 .S DA(1)=ABMP("CDFN")
 .S ABMREC=$G(ABMP("CHGS",ABMI))
 .S ABMMULT=$P(ABMREC,U)
 .S DA=$P(ABMREC,U,2)
 .S DIE="^ABMDCLM("_DUZ(2)_","_DA(1)_","_ABMMULT_","
 .S DR=$S(ABMMULT=23:".3",1:".23")_"////"_ABMI
 .D ^DIE
 Q
DELETE ;EP
 S ABMLCNT=0
 F  S ABMLCNT=$O(^ABMDCLM(DUZ(2),ABMP("CDFN"),"PO",ABMLCNT)) Q:'ABMLCNT  D
 .S ABMI=0
 .F  S ABMI=$O(^ABMDCLM(DUZ(2),ABMP("CDFN"),"PO",ABMLCNT,ABMI)) Q:'ABMI  D
 ..S ABMJ=0
 ..F  S ABMJ=$O(^ABMDCLM(DUZ(2),ABMP("CDFN"),"PO",ABMLCNT,ABMI,ABMJ)) Q:'ABMJ  D
 ...D ^XBFMK
 ...S DA(1)=ABMP("CDFN")
 ...S ABMMULT=ABMI
 ...S DA=ABMJ
 ...S DIE="^ABMDCLM("_DUZ(2)_","_DA(1)_","_ABMMULT_","
 ...S DR=$S(ABMI=23:".3",1:".23")_"////@"
 ...D ^DIE
 Q
HDR ;EP
 W $$EN^ABMVDF("IOF")
 W !
 D CENTER^ABMUCUTL("* * * CHARGE PRINT ORDER SCREEN * * *")
 W !!,"Complete list of charges on claim for "_$$GET1^DIQ(9999999.18,ABMP("INS"),".01","E")_":",!!
 W !?5,"Revenue",?31,"Serv",?70,"Total",!
 W ?5,"Code Description",?28,"PG",?31,"Code",?54,"DOS",?63,"Units",?70,"Charges",!
 F I=1:1:80 W "-"
 W !
 Q
DISPLAY ;EP
 S ABMLCNT=0
 F  S ABMLCNT=$O(ABMP("CHGS",ABMLCNT)) Q:'ABMLCNT  D
 .S ABMREC=$G(ABMP("CHGS",ABMLCNT))
 .W !?1,$J(ABMLCNT,3)_". "_$P(ABMREC,U,3)_" "_$E($$GET1^DIQ(9999999.72,$P(ABMREC,U,3),"1","E"),1,10)  ;rev code and desc
 .S ABMI=$P(ABMREC,U)
 .S ABMPG="8"_$S(ABMI=21:"B",ABMI=23:"D",ABMI=25:"C",ABMI=27:"A",ABMI=35:"E",ABMI=37:"F",ABMI=43:"H",ABMI=45:"I",ABMI=47:"K",1:"")
 .I ABMI=33 S ABMPG="6"
 .W ?28,ABMPG  ;claim editor page
 .W ?31,$P(ABMREC,U,4)  ;service code
 .W ?54,$$SDTO^ABMDUTL($P(ABMREC,U,7))  ;DOS
 .W ?63,$P(ABMREC,U,5)  ;units
 .W ?69,"$"_$J($FN(($P(ABMREC,U,5)*$P(ABMREC,U,6)),",",2),10)  ;total charges
 I +$G(ABMDFLG)=1 W !!,"Nothing was selected so it will default to display on screen"
 I +$G(ABMPOFLG) W !!,"THIS DISPLAY REFLECTS A PRINT ORDER THAT'S ALREADY BEEN DONE, but can be", !," changed if necessary"
 I +$G(ABMCFLG)&($G(ABMANS)'="") W !!?3,"THERE IS AN ISSUE with the print order selected.  You entered:",!?3,ABMANS,!!?3,"Please try again."
 I +$G(ABMCFLG)&($G(ABMANS)="") W !!?3,"THERE IS AN ISSUE with the print order selected.  Please try again."
 I +$G(ABMANS)=0 W !!,"NOTE: all lines must be included in the printing order and separated by commas.",!?6,"(i.e., 2,1,4,3)"
 Q
REARRANG ;EP
 M ABMTEMP("CHGS")=ABMP("CHGS")
 K ABMP("CHGS")
 F ABMI=1:1:($L(ABMANS,",")) D
 .S ABMLN=+$P(ABMANS,",",ABMI)
 .S ABMP("CHGS",ABMI)=$G(ABMTEMP("CHGS",ABMLN))
 K ABMTEMP
 K ABMCFLG,ABMPOFLG,ABMDFLG
 W !!, "This is the print order you selected:",!
 D DISPLAY
 D ^XBFMK
 S DIR(0)="Y"
 S DIR("A")="Is this the correct order"
 D ^DIR K DIR
 Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 I Y<1 S ABMCMPLT=0 Q
 W !!?3,"Saving print order"
 D ADD
 S ABMCMPLT=1
 Q
