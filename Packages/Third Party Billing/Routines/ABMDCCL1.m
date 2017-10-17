ABMDCCL1 ; IHS/ASDST/DMJ - Cancelled claims listing-80 Width ; 
 ;;2.6;IHS 3P BILLING SYSTEM;**21**;NOV 12, 2009;Build 379
 ;Original;TMD;
 ;
 ;IHS/SD/SDR - v2.5 p10 - IM20215 - HRN not printing on report
 ;
 ;IHS/SD/SDR 2.6*21 - HEAT140244 - Changed to print reason number on detail lines and
 ;  list of reasons with full descriptions at bottom of report.
 ;
PRINT ;EP for printing data
 K ABMRSN  ;abm*2.6*21 IHS/SD/SDR HEAT140244
 S ABM("PG")=0 D HDB
 S (ABM("CNT1"),ABM("CNT2"),ABM("CNT"),ABM("TOT1"),ABM("TOT2"),ABM("TOT"))=0,(ABM("CANC"),ABM("LOC"),ABM("VT"))=""
 S ABM("Z")="TMP(""ABM-CC"","_$J,ABM="^"_ABM("Z")_")" I '$D(@ABM) Q
 F  S ABM=$Q(@ABM) Q:ABM'[ABM("Z")  D  G:$D(DTOUT)!$D(DUOUT)!$D(DIROUT) XIT
 .I $Y>(IOSL-5) D HD Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)  D SUBHD W " (cont)"
 .S ABM("T")=$P(ABM,"ABM-CC",2),ABM("TXT")=$P($P(ABM("T"),",",3,99),"""",2),ABM("TXT")=+$P(ABM("T"),",",3)_U_ABM("TXT")
 .S ABM("PDFN")=$G(^ABMCCLMS(DUZ(2),$P(ABM("TXT"),U,5),0)) Q:ABM("PDFN")=""
 .I ABM("CANC")'=$P(ABM("TXT"),U) S ABM("CANC")="" D SUB,SUBHD S ABM("LOC")=""
 .I ABM("LOC")'=$P(ABM("TXT"),U,2) D SUB:ABM("LOC")]"" W:(ABM("LOC")'="") ! W !?3,"Visit Location: ",$P(^DIC(4,$P(ABM("PDFN"),U,3),0),U) S ABM("VT")=""
 .S ABM("CANC")=$P(ABM("TXT"),U)
 .S ABM("LOC")=$P(ABM("TXT"),U,2)
 .I ABM("VT")'=$P(ABM("TXT"),U,3) D SUB2:ABM("VT")]"" W:ABM("VT")]"" ! W !?7,$S(ABMY("SORT")="C":"    Clinic: "_$P(^DIC(40.7,$P(ABM("TXT"),U,3),0),U),1:"Visit Type: "_$P(^ABMDVTYP($P(ABM("TXT"),U,3),0),U))
 .S ABM("VT")=$P(ABM("TXT"),U,3)
 .W !
 .W $E($P(^DPT($P(ABM("PDFN"),U),0),U),1,16)  ;pat name
 .W ?18,$P($G(^AUPNPAT($P(ABM("PDFN"),U),41,$P(ABM("PDFN"),U,3),0)),U,2)  ;HRN
 .;W ?25,$E($P(^AUTNINS($P(ABM("PDFN"),U,8),0),U),1,12)  ;ins  ;abm*2.6*21 IHS/SD/SDR HEAT140244
 .W ?25,$E($P(^AUTNINS($P(ABM("PDFN"),U,8),0),U),1,24)  ;ins  ;abm*2.6*21 IHS/SD/SDR HEAT140244
 .;W ?39,$P(ABM("TXT"),U,5)  ;claim number  ;abm*2.6*21 IHS/SD/SDR HEAT140244
 .W ?54,$P(ABM("TXT"),U,5)  ;claim number  ;abm*2.6*21 IHS/SD/SDR HEAT140244
 .;W ?47,$$SDT^ABMDUTL($P($G(^ABMCCLMS(DUZ(2),$P(ABM("TXT"),U,5),0)),U,2))  ;visit date  ;abm*2.6*21 IHS/SD/SDR HEAT140244
 .W ?62,$$SDT^ABMDUTL($P($G(^ABMCCLMS(DUZ(2),$P(ABM("TXT"),U,5),0)),U,2))  ;visit date  ;abm*2.6*21 IHS/SD/SDR HEAT140244
 .;W ?59,$E($P($G(^ABMCCLMR($P($G(^ABMCCLMS(DUZ(2),$P(ABM("TXT"),U,5),1)),U,8),0)),U),1,18)  ;reason  ;abm*2.6*21 IHS/SD/SDR HEAT140244
 .W ?75,$P($G(^ABMCCLMS(DUZ(2),$P(ABM("TXT"),U,5),1)),U,8)  ;reason number  ;abm*2.6*21 IHS/SD/SDR HEAT140244
 .S ABMRSN($P($G(^ABMCCLMS(DUZ(2),$P(ABM("TXT"),U,5),1)),U,8))=+$G(ABMRSN($P($G(^ABMCCLMS(DUZ(2),$P(ABM("TXT"),U,5),1)),U,8)))+1  ;abm*2.6*21 IHS/SD/SDR HEAT140244
 .S ABM("CNT1")=ABM("CNT1")+1,ABM("CNT2")=ABM("CNT2")+1,ABM("CNT")=ABM("CNT")+1,ABM("TOT")=ABM("TOT")+ABM("T")
 .S ABM("TOT1")=ABM("TOT1")+ABM("T"),ABM("TOT2")=ABM("TOT2")+ABM("T")
 D SUB
 ;start new abm*2.6*21 IHS/SD/SDR HEAT140244
 W !!
 W ?3,"Reasons on report: "
 W !?6,"Rsn",?10,"Description",?57,"#times on report"
 S ABMR=0
 F  S ABMR=$O(ABMRSN(ABMR)) Q:'ABMR  D
 .W !?6,ABMR,?10,$P($G(^ABMCCLMR(ABMR,0)),U),?57,+$G(ABMRSN(ABMR))
 K ABMRSN
 ;end new abm*2.6*21 IHS/SD/SDR HEAT140244
 Q
 ;
HD D PAZ^ABMDRUTL Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
HDB S ABM("PG")=ABM("PG")+1,ABM("I")="" D WHD^ABMDRHD
 ;start old abm*2.6*21 IHS/SD/SDR HEAT140244
 ;W !?25,"Active",?39,"Claim",?50,"Visit"
 ;W !?2,"Patient",?18,"HRN",?25,"Insurer",?39,"Number",?50,"Date",?63,"Reason"
 ;end old start new abm*2.6*21 IHS/SD/SDR HEAT140244
 W !?25,"Active",?54,"Claim",?62,"Visit"
 W !?2,"Patient",?18,"HRN",?25,"Insurer",?54,"Number",?62,"Date",?75,"Rsn"
 ;end new abm*2.6*21 IHS/SD/SDR HEAT140244
 W !,"-------------------------------------------------------------------------------"
 Q
 ;
SUBHD ;
 W !!,"Cancelling Official: ",$P(^VA(200,$P($G(^ABMCCLMS(DUZ(2),$P(ABM("TXT"),U,5),1)),U,4),0),U)
 Q
 ;
SUB2 Q:'ABM("CNT2")
 W !?27,"------"
 W !?16,"Subcount:",?27,ABM("CNT2")
 S ABM("CNT2")=0,ABM("TOT2")=0,ABM("I")=""
 Q
 ;
SUB Q:'ABM("CNT1")  D SUB2:ABM("CNT1")'=ABM("CNT2")
 W !?27,"------"
 W !?19,"Count:",?27,ABM("CNT1")
 S ABM("CNT1")=0,ABM("TOT1")=0,ABM("CNT2")=0,ABM("TOT2")=0,ABM("I")=""
 Q
XIT ;EXIT POINT
 Q
