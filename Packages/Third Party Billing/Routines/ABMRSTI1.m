ABMRSTI1 ; IHS/SD/SDR - Split Claim Billing (part 2); 
 ;;2.6;IHS 3P BILLING SYSTEM;**22**;NOV 12, 2009;Build 418
 ;IHS/SD/SDR 2.6*22 HEAT335246 - New routine
 ;
 Q
SPLTCHK ;EP
 ;build list of visits associated with this claim
 S ABMVDFN=0
 S ABMCDFN=ABMP("CDFN")
 F  S ABMVDFN=$O(^ABMDCLM(DUZ(2),ABMCDFN,11,ABMVDFN)) Q:'ABMVDFN  D
 .S ABMCSTAT=$S($P($G(^ABMDCLM(DUZ(2),ABMCDFN,0)),U,22)'="":$P($G(^ABMDCLM(DUZ(2),ABMCDFN,0)),U,22),1:"O")  ;default to original if no split status
 .S ABMP(ABMCSTAT,ABMVDFN)=""
 .D BLDLST(ABMCSTAT)
 ;now go look for other claims with these same visits too
 S ABMVDFN=0
 F  S ABMVDFN=$O(ABMP(ABMCSTAT,ABMVDFN)) Q:'ABMVDFN  D
 .S ABMCDFN=0
 .F  S ABMCDFN=$O(^ABMDCLM(DUZ(2),"AV",ABMVDFN,ABMCDFN)) Q:'ABMCDFN  D
 ..I ABMP("CDFN")=ABMCDFN Q  ;skip this entry, it's the claim we started with
 ..S ABMCSTAT=$S($P($G(^ABMDCLM(DUZ(2),ABMCDFN,0)),U,22)'="":$P($G(^ABMDCLM(DUZ(2),ABMCDFN,0)),U,22),1:"O")  ;default to original if no split status
 ..D BLDLST(ABMCSTAT)
 Q
BLDLST(ABMS) ;EP
 F ABMJ=23,35,37,43 D
 .S ABMJI=0
 .F  S ABMJI=$O(^ABMDCLM(DUZ(2),ABMCDFN,ABMJ,ABMJI)) Q:'ABMJI  D
 ..S ABMCODE=$P($G(^ABMDCLM(DUZ(2),ABMCDFN,ABMJ,ABMJI,0)),U)
 ..I ABMJ=23 D
 ...S ABMCODE=$S($P($G(^ABMDCLM(DUZ(2),ABMCDFN,ABMJ,ABMJI,0)),U,6)'="":$P(^(0),U,6),$P($G(^ABMDCLM(DUZ(2),ABMCDFN,ABMJ,ABMJI,0)),U,22):$$GET1^DIQ(52,$P($G(^ABMDCLM(DUZ(2),ABMCDFN,ABMJ,ABMJI,0)),U,22),".01","E"),1:ABMJI_"NORX#")  ;RX#
 ...S ABMDESC=$$GET1^DIQ(50,$P($G(^ABMDCLM(DUZ(2),ABMCDFN,ABMJ,ABMJI,0)),U),".01","E")
 ..I ABMJ'=23 D
 ...S ABMCODE=$P($$CPT^ABMCVAPI($P($G(^ABMDCLM(DUZ(2),ABMCDFN,ABMJ,ABMJI,0)),U),$P($G(^ABMDCLM(DUZ(2),ABMCDFN,0)),U,2)),U,2)
 ...S ABMDESC=$P($$CPT^ABMCVAPI(ABMCODE,$P($G(^ABMDCLM(DUZ(2),ABMCDFN,0)),U,2)),U,3)
 ..S ABMMULT=$S(ABMJ=23:"8D",ABMJ=35:"8F",ABMJ=37:"8E",ABMJ="43":"8H",1:"8H")
 ..S ABMCK(ABMS,ABMCDFN,ABMMULT,ABMJI,ABMCODE)=ABMDESC
 Q
VSTDISP ;EP
 W !
 F I=1:1:80 W "="
 W !,"Visit Info:",!
 W "PG (IEN)",?15,"REF#",?40,"DESCRIPTION",!
 F I=1:1:80 W "-"
 S ABMPGE=""
 F  S ABMPGE=$O(ABMP("VDETAIL",ABMPGE)) Q:$G(ABMPGE)=""  D
 .S ABMVFILE=""
 .F  S ABMVFILE=$O(ABMP("VDETAIL",ABMPGE,ABMVFILE)) Q:$G(ABMVFILE)=""  D
 ..S ABMVIEN=0
 ..F  S ABMVIEN=$O(ABMP("VDETAIL",ABMPGE,ABMVFILE,ABMVIEN)) Q:'ABMVIEN  D
 ...W !,ABMPGE_" ("_ABMVIEN_")"
 ...;
 ...I ABMVFILE["VRAD" D
 ....S ABMREC=$$GET1^DIQ(81,$$GET1^DIQ(71,$P(@ABMVFILE@(ABMVIEN,0),U),"9","E"),".01","E")
 ....S ABMREC=ABMREC_U_$$GET1^DIQ(71,$P(@ABMVFILE@(ABMVIEN,0),U),".01","E")
 ...;
 ...I ABMVFILE["VMED" D
 ....S ABMR("X")=$O(^PSRX("APCC",ABMVIEN,""))
 ....I ABMR("X")'="" D
 .....S ABMR("RX")=$P($G(^PSRX(ABMR("X"),0)),U)
 .....S ABMR2=$G(^PSRX(ABMR("X"),2))
 .....S ABMR("RTS")=$P(ABMR2,"^",15)
 ....I ABMR("X")="" S ABMR("RX")=$S($P($G(@ABMVFILE@(ABMVIEN,11)),U,2):$P($G(@ABMVFILE@(ABMVIEN,11)),U,2),1:"NO RX")
 ....S ABMREC=$S($P(@ABMVFILE@(ABMVIEN,0),U,8)'="":"(dd)",$G(ABMR("RTS"))'="":"(rts)",1:"")_ABMR("RX")  ;rx#
 ....S ABMNDC=$S($$GET1^DIQ(50,$P(@ABMVFILE@(ABMVIEN,0),U),"31","E")'="":$$GET1^DIQ(50,$P(@ABMVFILE@(ABMVIEN,0),U),"31","E"),1:"")
 ....S ABMREC=ABMREC_U_$S(ABMNDC'="":ABMNDC_" ",1:"")_$$GET1^DIQ(50,$P(@ABMVFILE@(ABMVIEN,0),U),".01","E")
 ...;
 ...I ABMVFILE["VLAB" D
 ....S ABMREC=$P($P($G(@ABMVFILE@(ABMVIEN,14)),U,2),"|")
 ....I ABMREC="" S ABMREC="NOCPT"
 ....S ABMREC=ABMREC_U_$E($$GET1^DIQ(60,$P(@ABMVFILE@(ABMVIEN,0),U),".01","E"),1,30)
 ...;
 ...I ABMVFILE["VCPT" D
 ....S ABMREC=$$GET1^DIQ(81,$P(@ABMVFILE@(ABMVIEN,0),U),".01","E")
 ....S ABMREC=ABMREC_U_$E($P($$CPT^ABMCVAPI($P(@ABMVFILE@(ABMVIEN,0),U),$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,2)),U,3),1,60)
 ...;
 ...W ?15,$P(ABMREC,U)  ;cpt/rx#
 ...W ?29,$E($P(ABMREC,U,2),1,50)  ;description
 Q
CLMDISP ;EP
 W !!
 F I=1:1:80 W "="
 W !,"Claims:"
 W !,"O/S",?6,"CLM#",?18,"PG",?21,"REF#",?35,"DESC",!
 F I=1:1:80 W "-"
 S ABMS=""
 F  S ABMS=$O(ABMCK(ABMS)) Q:$G(ABMS)=""  D
 .S ABMCDFN=0
 .F  S ABMCDFN=$O(ABMCK(ABMS,ABMCDFN)) Q:'ABMCDFN  D
 ..W !,$S(ABMS="O":"Orig",1:"Splt"),?6,ABMCDFN
 ..S ABMJ=""
 ..F  S ABMJ=$O(ABMCK(ABMS,ABMCDFN,ABMJ)) Q:$G(ABMJ)=""  D
 ...S ABMJI=0
 ...F  S ABMJI=$O(ABMCK(ABMS,ABMCDFN,ABMJ,ABMJI)) Q:'ABMJI  D
 ....S ABMCODE=""
 ....F  S ABMCODE=$O(ABMCK(ABMS,ABMCDFN,ABMJ,ABMJI,ABMCODE)) Q:$G(ABMCODE)=""  D
 .....W ?18,ABMJ,?21,$S(ABMCODE["NORX":"NO RX",1:ABMCODE),?33,$G(ABMCK(ABMS,ABMCDFN,ABMJ,ABMJI,ABMCODE)),!
 Q