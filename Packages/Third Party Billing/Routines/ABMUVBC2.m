ABMUVBC2 ; IHS/SD/SDR - 3PB/UFMS View Batch option   
 ;;2.6;IHS Third Party Billing;**1,3,9,11,21**;NOV 12, 2009;Build 379
 ; View Batch
 ;IHS/SD/SDR v2.6 p1 NO HEAT - Added totals for cash. sessions
 ;IHS/SD/SDR 2.6 p9 HEAT28995 - added screen so only exports from current DUZ(2) display
 ;IHS/SD/SDR v2.6 p11 added V to list of codes
 ;IHS/SD/SDR 2.6*21 split from ABMUVBCH
 ;IHS/SD/SDR 2.6*21 HEAT129446 - Made change so insurer type would show correctly on report; was blank because of code
 ;   change made in p11.
 ;
SET ;SET UP SOME THINGS
 ;ABME("BDATE") = Batch export date
 ;ABME("FNAME") = File Name
 S ABMSAV=ABMSUMDT  ;save original option
 K Y,DIRUT,DIROUT,DTOUT,DUOUT
 S ABMSUMDT=$S(ABMSUMDT="X"!(ABMSUMDT="D"):"D",1:"S")  ;change option back for summary
 F  S ABMP("XMIT")=$O(^ABMUTXMT(ABMP("XMIT"))) Q:'+ABMP("XMIT")!(ABMP("XMIT")>ABME("XMITE"))  D  Q:(IOST["C")&(($G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 .S Y=$P(^ABMUTXMT(ABMP("XMIT"),0),U)
 .D DD^%DT
 .S ABME("BDATE")=Y
 .S ABME("FNAME")=$P($G(^ABMUTXMT(ABMP("XMIT"),0)),U,2)
 .S ABME("LOC")=$P($G(^ABMUTXMT(ABMP("XMIT"),0)),U,4)
 .S ABME("TOT")=0
 .S ABME("STOT")=0
 .S ABME("CNT")=0
 .S $P(ABME("-"),"-",81)=""
 .S $P(ABME("EQ"),"=",81)=""
 .I "PXG"[ABMSAV D  ;print reconcile page before summary
 ..D LOOP^ABMUVBCR(ABMP("XMIT"),ABME("LOC"))
 ..S ABME("PG")=0  ;reset page cntr
 .F ABMI=1,2 D
 ..S ABMUS=0
 ..F  S ABMUS=$O(^ABMUTXMT(ABMP("XMIT"),ABMI,ABMUS)) Q:+ABMUS=0  D
 ...S ABMUSR=$G(^ABMUTXMT(ABMP("XMIT"),ABMI,ABMUS,0))
 ...Q:+ABMUSR=0
 ...S ABMSDT=0
 ...F  S ABMSDT=$O(^ABMUTXMT(ABMP("XMIT"),ABMI,ABMUSR,2,ABMSDT)) Q:+ABMSDT=0  D
 ....S ABMLOOP=$S(ABMI=1:10,1:20)
 ....S ABM0=$G(^ABMUCASH(ABME("LOC"),ABMLOOP,ABMUSR,20,ABMSDT,0))
 ....S ABMSTR=$P(ABM0,U,4)_U_$P(ABM0,U,3)  ;SESSION STATUS^SIGN OUT DATE
 ....S ABMUSER=$S(ABMLOOP=20:"POS",1:ABMUSR)  ;SUB "POS" FOR USER IEN 
 ....S ABMC(ABMSDT,ABMUSER,ABMSDT)=ABMSTR  ;Create local ABMC array
 .D HD^ABMUVBCH
 .D:ABMSAV'="G" LOOP^ABMUVBCH Q:(IOST["C")&(($G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 .D:ABMSAV="G" GLOOP^ABMUVBCH,GRANDTOT^ABMUVBCH Q:(IOST["C")&(($G(Y)=0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 Q
LOOP ; Loop through bills of specified batch to gather data and print report
 S ABMSDT=0
 F  S ABMSDT=$O(ABMC(ABMSDT)) Q:+ABMSDT=0  D
 .S ABMUSER=""
 .F  S ABMUSER=$O(ABMC(ABMSDT,ABMUSER)) Q:ABMUSER=""  D
 ..S ABMLOOP=$S(+ABMUSER'=0:1,1:2)
 ..S ABMUS=ABMUSER
 ..I ABMUS="POS" S ABMUS=1
 ..W !!,"SESSION ID: ",ABMSDT
 ..;start old abm*2.6*1
 ..;W:ABMUS'=1 ?30,"BILLER: ",$P($P($G(^VA(200,ABMUS,0)),U),",")_","_$E($P($P($G(^VA(200,ABMUS,0)),U),",",2),1),!
 ..;W:ABMUS=1 ?30,"BILLER: POS CLAIMS",!
 ..;end old start new
 ..W:ABMUS'=1 ?30,"BILLER: ",$P($P($G(^VA(200,ABMUS,0)),U),",")_","_$E($P($P($G(^VA(200,ABMUS,0)),U),",",2),1)
 ..W:ABMUS=1 ?30,"BILLER: POS CLAIMS"
 ..;end new
 ..;start new abm*2.6*1 NOHEAT
 ..D TOTAL^ABMUVBC1
 ..W ?55,"TOTAL: ",$J($FN(ABME("TAMT"),",",2),10)
 ..;end new NOHEAT
 ..S ABMBA=0,ABMEXCNT=0,ABMEXAMT=0
 ..F  S ABMBA=$O(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMUS,2,ABMSDT,11,ABMBA)) Q:+ABMBA=0  D   Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 ...S ABMBAOUT=$P($G(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMUS,2,ABMSDT,11,ABMBA,0)),U)
 ...K ABME(ABMBAOUT)
 ...S ABMBIEN=0
 ...;W !?2,$P($T(@ABMBAOUT^ABMUCASH),";;",2)  ;abm*2.6*21 IHS/SD/SDR HEAT129446
 ...W !?2,$$INSTYP^ABMUCASH(ABMBAOUT)  ;abm*2.6*21 IHS/SD/SDR HEAT129446
 ...F  S ABMBIEN=$O(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMUS,2,ABMSDT,11,ABMBA,2,ABMBIEN)) Q:+ABMBIEN=0  D  Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 ....I ABMSUMDT="D" D DTAIL^ABMUVBCH
 ....I ABMSUMDT="S" D SUMMARY^ABMUVBCH
 ....Q:((IOST["C")&(+$G(Y)=0))!$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 ...I ABMSUMDT="S" D
 ....W ?35,+$G(ABME(ABMBAOUT)),$S(+$G(ABME(ABMBAOUT))=1:" bill",1:" bills")
 ....W ?50,$J($FN(ABME(ABMBAOUT,"AMT"),",",2),10)
 ...;start new abm*2.6*1 NOHEAT
 ...I ABMSUMDT="D" D
 ....W !?68,"----------"
 ....W !?68,$J($FN(ABME(ABMBAOUT,"AMT"),",",2),10)
 ...;end new NOHEAT
 ..I +$G(ABMEXCNT)'=0 D
 ...W !?26,+$G(ABMEXCNT)," excluded "_$S(+$G(ABMEXCNT)=1:"bill",1:"bills"),?45,$J($FN(ABMEXAMT,",",2),10),!
 W !!,$$EN^ABMVDF("HIN"),"TOTAL BILLS FOR THIS EXPORT: ",$$EN^ABMVDF("HIF"),?35,ABME("CNT")_$S(ABME("CNT")=1:" bill",1:" bills"),?$S(ABMSUMDT="S":50,1:69),$J($FN(ABME("TOT"),",",2),10)
 S ABME("TOT")=0
 Q
GLOOP ;Loop thru bills of specified batch to gather data and print report
 K ABMT
 S ABMEXCNT=0,ABMEXAMT=0
 K ABMBAT  ;abm*2.6*3
 F ABMLOOP=1,2 D  Q:(IOST["C")&(($G(Y)<0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 .S ABMU=0
 .F  S ABMU=$O(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMU)) Q:+ABMU=0  D  Q:(IOST["C")&(($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 ..S ABMUS=$G(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMU,0))
 ..Q:+ABMUS=0
 ..S ABMDT=0
 ..F  S ABMDT=$O(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMUS,2,ABMDT)) Q:+ABMDT=0  D  Q:(IOST["C")&(($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)))
 ...S ABMBA=0
 ...F  S ABMBA=$O(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMUS,2,ABMDT,11,ABMBA)) Q:+ABMBA=0  D   Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 ....S ABMBAOUT=$P($G(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMUS,2,ABMDT,11,ABMBA,0)),U)
 ....;S ABMBAOUT=$P($T(@ABMBAOUT),";;",2)  ;abm*2.6*21 IHS/SD/SDR HEAT279161
 ....S ABMBAOUT=$$INSTYP^ABMUCASH(ABMBAOUT)  ;abm*2.6*21 IHS/SD/SDR HEAT279161
 ....S ABMBIEN=0
 ....F  S ABMBIEN=$O(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMUS,2,ABMDT,11,ABMBA,2,ABMBIEN)) Q:+ABMBIEN=0  D  Q:$D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT)
 .....K ABMDUZ2,ABMBDFN
 .....S ABMDUZ2=$P($G(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMUS,2,ABMDT,11,ABMBA,2,ABMBIEN,0)),U,2)
 .....S ABMBDFN=$P($G(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMUS,2,ABMDT,11,ABMBA,2,ABMBIEN,0)),U,3)
 .....S ABMT(ABMDUZ2,ABMBAOUT)=+$G(ABMT(ABMDUZ2,ABMBAOUT))+1  ;cnt b.a. bills for location
 .....;start new abm*2.6*3 NOHEAT
 .....S ABMBAT(ABMBAOUT,"CNT")=+$G(ABMBAT(ABMBAOUT,"CNT"))+1  ;cnt b.a. tot
 .....S ABMBAT(ABMBAOUT,"AMT")=+$G(ABMBAT(ABMBAOUT,"AMT"))+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))  ;cnt b.a. total amt
 .....;end new abm*2.6*3
 .....S ABMT(ABMDUZ2,ABMBAOUT,"AMT")=+$G(ABMT(ABMDUZ2,ABMBAOUT,"AMT"))+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))  ;cnt bill amt
 .....S ABM(ABMDUZ2,"CNT")=+$G(ABM(ABMDUZ2,"CNT"))+1  ;cnt bills for loc
 .....S ABM("CNT")=+$G(ABM("CNT"))+1  ;cnt total bills
 .....S ABM(ABMDUZ2,"TOT")=+$G(ABM(ABMDUZ2,"TOT"))+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))  ;cnt amt for location
 .....S ABM("TOT")=+$G(ABM("TOT"))+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))  ;cnt tot bill amt
 .....I $P($G(^ABMUTXMT(ABMP("XMIT"),ABMLOOP,ABMUS,2,ABMDT,11,ABMBA,2,ABMBIEN,0)),U,5)=1 D  ;excluded bills
 ......S ABMT(ABMDUZ2,ABMBAOUT,"ECNT")=+$G(ABMT(ABMDUZ2,ABMBAOUT,"ECNT"))+1  ;cnt excluded by loc/Budget act.
 ......S ABMT(ABMDUZ2,ABMBAOUT,"EAMT")=+$G(ABMT(ABMDUZ2,ABMBAOUT,"EAMT"))+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))  ;excl. amt
 ......;start new abm*2.6*3 NOHEAT
 ......S ABMBAT(ABMBAOUT,"ECNT")=+$G(ABMBAT(ABMBAOUT,"ECNT"))+1  ;cnt b.a. E-total
 ......S ABMBAT(ABMBAOUT,"EAMT")=+$G(ABMBAT(ABMBAOUT,"ETOT"))+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))  ;cnt b.a. total E-amt
 ......;end new abm*2.6*3
 ......S ABMEXCNT=+$G(ABMEXCNT)+1
 ......S ABMEXAMT=+$G(ABMEXAMT)+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))
 .....S ABMU(ABMDT,ABMUS)=""
 Q
