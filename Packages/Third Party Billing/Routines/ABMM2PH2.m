ABMM2PH2 ;IHS/SD/SDR - MU Patient Volume Hospital Report ;
 ;;2.6;IHS 3P BILLING SYSTEM;**11**;NOV 12, 2009;Build 133
 ;
CALC ;EP
 S ABMCFLG=0
 S ABMSDT=0
 F  S ABMSDT=$O(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT)) Q:'ABMSDT  D  Q:ABMCFLG
 .I ABMY("90")'="A"&(ABMY("SDT")'=ABMSDT) Q  ;only calculate whole year for automated
 .I (ABMY("90")="A")&($E(ABMSDT,4,7)>0703) Q  ;after 7/3 it won't be 90 days anymore
 .S ABMPD=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,"CHIP"))
 .S ABMZPD=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,"CHIP"))
 .S ABMENR=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,"CHIP"))
 .S ^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMSDT)=+ABMPD+ABMZPD+ABMENR
 .S ABMTPRCT=$J((+ABMPD+ABMZPD+ABMENR)/(+$G(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT)))*100,0,1)
 .S ^XTMP("ABM-PVH2",$J,"LOC PERCENT",ABMSDT)=ABMTPRCT
 .I '$D(^XTMP("ABM-PVH2",$J,"LOC TOP")) S ^XTMP("ABM-PVH2",$J,"LOC TOP")=ABMTPRCT_"^"_ABMSDT
 .I +$P($G(^XTMP("ABM-PVH2",$J,"LOC TOP")),U)<ABMTPRCT S ^XTMP("ABM-PVH2",$J,"LOC TOP")=ABMTPRCT_"^"_ABMSDT
 .; 
 .S ABMLOC=0
 .F  S ABMLOC=$O(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT,ABMLOC)) Q:'ABMLOC  D  Q:ABMCFLG
 ..S ABMPD=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,ABMLOC,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,ABMLOC,"CHIP"))
 ..S ABMZPD=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,ABMLOC,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,ABMLOC,"CHIP"))
 ..S ABMENR=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,ABMLOC,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,ABMLOC,"CHIP"))
 ..S ^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMSDT,ABMLOC)=+ABMPD+ABMZPD+ABMENR
 ..I (ABMPD+ABMZPD+ABMENR)=0 S ^XTMP("ABM-PVH2",$J,"LOC PERCENT",ABMSDT,ABMLOC)=0 Q
 ..S ABMPERCT=$J((+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMSDT,ABMLOC))/(+$G(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT,ABMLOC))))*100,0,1)
 ..S ^XTMP("ABM-PVH2",$J,"LOC PERCENT",ABMSDT,ABMLOC)=ABMPERCT
 ..I '$D(^XTMP("ABM-PVH2",$J,"LOC TOP",ABMLOC)) S ^XTMP("ABM-PVH2",$J,"LOC TOP",ABMLOC)=ABMPERCT_"^"_ABMSDT
 ..I +$P($G(^XTMP("ABM-PVH2",$J,"LOC TOP",ABMLOC)),U)<ABMPERCT S ^XTMP("ABM-PVH2",$J,"LOC TOP",ABMLOC)=ABMPERCT_"^"_ABMSDT
 ..I ABMPERCT>9.99,$G(ABMY("A90"))="F" S ABMCFLG=1
 Q
ENROLL ;EP
 K ABMBILLN,ABMTRAMT,ABMDX
 S ABMEFLG=1
 S ABMVDFN=0
 F  S ABMVDFN=$O(^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)) Q:'ABMVDFN  D
 .Q:(+$G(^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN))=1)  ;bill was found for visit
 .S ABMPT=$$GET1^DIQ(9000010,ABMVDFN,".05","I")
 .I $D(^AUPNVINP("AD",ABMVDFN)) D  ;this Visit is linked to V Hosp entry
 ..S ABMVIEN=$O(^AUPNVINP("AD",ABMVDFN,0))
 ..S (ABMP("VDT"),ABMVDT,ABMSDT)=$P($$GET1^DIQ(9000010.02,ABMVIEN,".01","I"),".")
 .I '$D(^AUPNVINP("AD",ABMVDFN)) D
 ..S (ABMP("VDT"),ABMVDT,ABMSDT)=$P($$GET1^DIQ(9000010,ABMVDFN,".01","I"),".")
 .S ABMVLOC=$$GET1^DIQ(9000010,ABMVDFN,".06","I")
 .S ABML=""
 .D ELG^ABMDLCK(ABMVDFN,.ABML,ABMPT,ABMVDT)
 .K ABMINS,ABMOINS,ABMARACT,ABMARIEN
 .S ABMPRI=0
 .S ABMVSTF=0
 .F  S ABMPRI=$O(ABML(ABMPRI)) Q:'ABMPRI  D  Q:ABMVSTF
 ..S ABMIEN=0
 ..F  S ABMIEN=$O(ABML(ABMPRI,ABMIEN)) Q:'ABMIEN  D  Q:ABMVSTF
 ...K ABMITYP
 ...S ABMP("MDFN")=+$P(ABML(ABMPRI,ABMIEN),U)
 ...I (ABMP("MDFN")=0) Q
 ...;S ABMITYP=$$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,+ABMIEN,".211","I"),1,"I")
 ...;I +$P($G(^AUPNMCD(ABMP("MDFN"),0)),U,10)'=0 S ABMITYP=$$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,+$P($G(^AUPNMCD(ABMP("MDFN"),0)),U,10),".211","I"),1,"I")
 ...S ABMITYP=$P(ABML(ABMPRI,ABMIEN),U,3)
 ...I ABMITYP'="D"&(ABMITYP'="K")!(ABMITYP="P"&('$D(ABMI("INS",ABMIEN)))) Q  ;only Medicaid and Kidscare insurer types
 ...S ABMGRP=$S(ABMITYP="D":"MCD",ABMITYP="K":"CHIP",(ABMITYP="P"&($D(ABMI("INS",ABMIEN)))):"K",1:"OTHR")
 ...S ABMESDT=$P(ABML(ABMPRI,ABMIEN),U,2)
 ...Q:ABMESDT=""
 ...S ABMEEDT=$P($G(^AUPNMCD(ABMP("MDFN"),11,ABMESDT,0)),U,2)
 ...I ABMVDT<ABMESDT!(+ABMEEDT'=0&(ABMVDT>ABMEEDT)) Q
 ...S ABMVSTF=1
 ..Q:'ABMVSTF
 ..D CALCDTS^ABMM2PV1
 ..S ABMDTFLG=0
 ..S ABMP("BDT")=ABMP("BSDT")
 ..F  D  Q:ABMDTFLG=1
 ...I ABMP("VDT")<ABMP("BSDT") Q  ;visit is before 90-day window
 ...S ^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMVLOC,ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMVLOC,ABMGRP))+1
 ...S ^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMGRP))+1
 ...S ^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMGRP))+1
 ...S ^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMVLOC,ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMVLOC,ABMGRP))+1
 ...S ^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMGRP,ABMVLOC)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMGRP,ABMVLOC))+1
 ...S ^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)=1
 ...D PTDATA^ABMM2PVH
 ...S X1=ABMP("BDT")
 ...S X2=1
 ...D C^%DTC
 ...I X>ABMP("BEDT") S ABMDTFLG=1 Q
 ...S ABMP("BDT")=X
 Q