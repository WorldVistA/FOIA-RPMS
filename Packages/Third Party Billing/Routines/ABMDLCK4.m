ABMDLCK4 ; IHS/SD/SDR - check visit for elig - PART 4 ;   
 ;;2.6;IHS Third Party Billing System;**21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR - 2.6*21 - VMBP RQMT_90 - new routine
 ; *********************************************************************
7 ;EP - VMBP Elig Chk
 S ABM("TYP")="P"
 S ABM("PRI")=5
 ;After setting priority we check VAMB eligibility file
 S ABM("VACHK")=1 D 5^ABMDLCK2  ;check AUPNPRVT for VA entries
 S ABM("TYP")="V"
 S ABM("PRI")=5
 D PRIO^ABMDLCK2
 Q:'$D(^AUPNVAMB(DFN,0))
 D FIND^DIC(9999999.18,"","@;.01;.211","CP","V","*",,"I $$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,Y,"".211"",""I""),1,""I"")=""V""","","ABMIL")
 I +$O(ABMIL("DILIST",0))=0 S ABME(252)="" Q
 S ABM("INS")=$P($G(^AUPNVAMB(DFN,0)),U,2)
 K ABM("REC")
 I '+$O(^AUPNVAMB(DFN,11,0)) D  Q
 .D CHK^ABMDLCK1
 .I $G(ABM("XIT")) D UNCHK^ABMDLCK2
 ;Node 11 has eligibility dates
 S ABMELGDT=0
 S ABM("MDFN")=0
 F  S ABM("MDFN")=$O(^AUPNVAMB(DFN,11,ABM("MDFN"))) Q:'ABM("MDFN")  D 73
 I 'ABMELGDT D  Q
 .I '$D(ABML(ABM("PRI"),ABM("INS"))) D
 ..I '$D(ABML(99,ABM("INS"))) D
 ...S $P(ABML(99,ABM("INS")),U)=$G(DFN)
 ...S $P(ABML(99,ABM("INS")),U,2)=$G(ABM("MDFN"))
 ...S $P(ABML(99,ABM("INS")),U,3)="M"
 ..S $P(ABML(99,ABM("INS")),U,6)=63
 E  I $D(ABML(ABM("PRI"),ABM("INS"))),ABM("PRI")<97 D
 .K ABML(99,ABM("INS"))
 K COV
 I $G(ABM("XIT")) D UNCHK^ABMDLCK2 Q
 I $G(ABM("XIT"))="A" K ABML(ABM("PRI"),ABM("INS"),"COV",ABM("CV"))
 Q
 ;
73 ;
 S ABM("REC")=^AUPNVAMB(DFN,11,ABM("MDFN"),0)
 I $P(ABM("REC"),U,1)>$P($S(ABMDISDT:ABMDISDT,1:ABMVDT),".",1) Q
 I $P(ABM("REC"),U,2)]"" Q:$P(ABM("REC"),U,2)<$P(ABMVDT,".",1)
 S ABMELGDT=1
 S COV=$P(ABM("REC"),U,3)
 ;For A or B get ien from ^AUTTPIC file
 I COV]"" S ABM("COV")=$O(^AUTTPIC("AC",ABM("INS"),COV,""))
 E  S ABM("COV")=""
 D CHK^ABMDLCK1
 Q
