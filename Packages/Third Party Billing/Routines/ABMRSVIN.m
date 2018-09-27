ABMRSVIN ; IHS/SD/SDR - Display what insurers have split setup ;     
 ;;2.6;IHS 3P BILLING SYSTEM;**22**;NOV 12, 2009;Build 418
 ;
 ;IHS/SD/SDR 2.6*22 HEAT335246 New routine; displays what insurers have split setup
 ;
START ;EP
 W !!?3,"This option shows any/all split claim setup that has been done"
 W !?3,"for all insurers."
 D PAZ^ABMDRUTL
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 S ABMY("INS")=0
 D HDR
 F  S ABMY("INS")=$O(^ABMNINS(DUZ(2),ABMY("INS"))) Q:'ABMY("INS")  D
 .Q:+$O(^ABMNINS(DUZ(2),ABMY("INS"),6,0))=0  ;quit because no entries exist
 .W !,$E($P($G(^AUTNINS(ABMY("INS"),0)),U),1,17)
 .D PRINT
 D PAZ^ABMDRUTL
 Q
PRINT ;EP
 S ABMIFLG=1
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
 .W ?19,ABMPG  ;page to split
 .W ?23,$$SDTO^ABMDUTL(ABMSDT)  ;start date
 .W ?32,$S(ABMSPLHW=1:"1 Clm/CHRG",ABMSPLHW=2:"1 Clm/PAGE",1:"Don't splt")
 .W:ABMEDT ?44,$$SDTO^ABMDUTL(ABMEDT)  ;end date
 .;
 .W ?54,$$SDTO^ABMDUTL(ABMCRDT)  ;created date
 .W ?64,$P($G(^VA(200,ABMCRU,0)),U,2)  ;created by
 .W:ABMENDDT ?68,$$SDTO^ABMDUTL(ABMENDDT)  ;ended date entered
 .W:ABMENDDU ?77,$P($G(^VA(200,ABMENDDU,0)),U,2)  ;entered by
 .W !
 I $Y>(IOSL-5) D HDR Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)  W " (cont)"
 Q
HDR ;EP
 W $$EN^ABMVDF("IOF"),!
 W !,"INSURER",?19,"PG",?23,"START DT",?32,"SPLT CLM",?44,"END DATE",?54,"CREATED",?64,"BY",?69,"ENDED",?77,"BY"
 Q
