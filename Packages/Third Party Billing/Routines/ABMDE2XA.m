ABMDE2XA ; IHS/SD/SDR - PAGE 2 - INSURER data chk - cont ;  
 ;;2.6;IHS 3P BILLING SYSTEM;**11,21,26**;NOV 12, 2009;Build 440
 ;
 ;IHS/SD/SDR V2.5 P2 4/17/02 -  NOIS NEA-0401-180046 Modified to print coverage type on insurer view option in claim generator
 ;IHS/SD/SDR v2.5 p3 3/4/03 - NDA-0203-180075 Modified to quit if there are no eligibility dates for RR
 ;IHS/SD/SDR v2.5 p8 IM15314/IM15448 <UNDEF>PRVT+18^ABMDE2XA
 ;IHS/SD/SDR v2.5 p9 IM16155 Patient's ID number instead of policy holder number
 ;IHS/SD/SDR v2.5 p9 IM18938 Added code to get RATE CODE
 ;IHS/SD/SDR v2.5 p9 IM19449 Commented out line to fix policy holder from being date on page 2 of CE
 ;IHS/SD/SDR v2.5 p10 IM20165 Policy number missing on page 2 for PI
 ;
 ;IHS/SD/SDR 2.6*21 HEAT266450 - Made change to claim editor warning #66.  Now it will also
 ;   check the VA Patient file for the gender if the active insurer is Medicare or Medicaid.
 ;IHS/SD/SDR 2.6*21 VMBP RQMT_109 - Added code for new VAMB Eligible file
 ;IHS/SD/SDR 2.6*26 CR9265 Made changes to ABMV("X1") for Medicare/RR HICN number to use AUPN API to get either the MBI or use old code to get HIC.
 ;
 ; *********************************************************************
 ;
MCD ;EP - Entry Point for setting MCD Info
 S $P(ABMV("X1"),U,4)=$P(ABMX("REC"),U,3)
 I '+$O(^AUPNMCD(ABMX(2),11,0)) S ABME(103)=""
 I $D(^AUPNMCD(ABMX(2),21)) D
 .S:$P(^AUPNMCD(ABMX(2),21),U)]"" $P(ABMV("X1"),U,5)=$P(^AUPNMCD(ABMX(2),21),U)
 .S:$P(^AUPNMCD(ABMX(2),21),U,2)]"" $P(ABMV("X1"),U,6)=$P(^AUPNMCD(ABMX(2),21),U,2)
 ;I $P($G(^AUPNMCD(ABMX(2),0)),U,7)=""!($P($G(^AUPNMCD(ABMX(2),0)),U,7)="U") S ABME(66)=""  ;abm*2.6*11 MU2 gender  ;abm*2.6*21 IHS/SD/SDR HEAT266450 update gender check
 I ($P($G(^AUPNMCD(ABMX(2),0)),U,7)=""!($P($G(^AUPNMCD(ABMX(2),0)),U,7)="U"))&($$GET1^DIQ(2,ABMP("PDFN"),".02","I")="U"!($$GET1^DIQ(2,ABMP("PDFN"),".02","I")="")) S ABME(66)=""  ;abm*2.6*21 IHS/SD/SDR HEAT266450 update gender check
 S ABMLDT=9999999
 K ABMP("COV")
 F  S ABMLDT=$O(^AUPNMCD(ABMX(2),11,ABMLDT),-1) Q:'ABMLDT  D
 .Q:$P($G(^AUPNMCD(ABMX(2),11,ABMLDT,0)),U)>ABMP("VDT")
 .Q:($P($G(^AUPNMCD(ABMX(2),11,ABMLDT,0)),U,2)'="")&($P($G(^AUPNMCD(ABMX(2),11,ABMLDT,0)),U,2)<ABMP("VDT"))
 .S ABMPCOV=$P($G(^AUPNMCD(ABMX(2),11,ABMLDT,0)),U,3)
 .I ABMPCOV="" S ABMPCOV="NONE"
 .Q:$D(ABMP("COV",ABMPCOV))
 .S (ABMCOVT,ABMP("COV",ABMPCOV))=$P($G(^AUPNMCD(ABMX(2),11,ABMLDT,0)),U)_U_$P($G(^AUPNMCD(ABMX(2),11,ABMLDT,0)),U,2)
 K ABMLDT,ABMESDT,ABMCOVT,ABMEEDT
 S $P(ABMV("X1"),U,13)=$P($G(^AUPNMCD(ABMX(2),0)),U,11)  ;rate code
 K ABMLDT,ABMESDT,ABMEEDT,ABMCOVT
 Q
 ;
 ; *********************************************************************
PRVT ;EP - Entry Point for setting PI Info
 I '$D(^AUPNPRVT(ABMX(2),11,ABMX(1),0)) Q
 Q:$P($G(^AUPNPRVT(ABMX(2),11,ABMX(1),0)),U)=""
 S ABMX("REC")=^AUPNPRVT(ABMX(2),11,ABMX(1),0)
 I $P(ABMX("REC"),U,6)="" S ABME(103)=""
 I $P(ABMX("REC"),U,8)]"" D
 .S $P(ABMV("X1"),U,4)=$P($G(^AUPN3PPH($P(ABMX("REC"),U,8),0)),U,4)
 .S $P(ABMV("X2"),U,1)=$P(ABMX("REC"),U,8)
 .S $P(ABMV("X2"),U,2)=$P(ABMX("REC"),U,5)
 S:$P(ABMV("X2"),U,1)="" ABME(65)=""
 S:$P(ABMV("X2"),U,2)="" ABME(67)=""
 S:$P(ABMX("REC"),U,11)]"" $P(ABMV("X1"),U,6)=$P(ABMX("REC"),U,11)
 S ABMPH=$P(ABMX("REC"),U,8)
 I ABMPH'="" S ABMCOVT=$P($G(^AUPN3PPH(ABMPH,0)),U,5)
 ;start new code abm*2.6*11 MU2 gender
 I ABMPH'="" D
 .I $P($G(^AUPN3PPH(ABMPH,0)),U,8)=""!($P($G(^AUPN3PPH(ABMPH,0)),U,8)="U") S ABME(66)=""
 ;end new code MU2 gender
 I ABMPH'=""
 K ABMP("COV")
 S:$G(ABMCOVT)'="" ABMP("COV",$P($G(^AUTTPIC(ABMCOVT,0)),U))=$P($G(ABMX("REC")),U,6)_U_$P($G(ABMX("REC")),U,7)
 S $P(ABMV("X1"),U,10)=$P($G(ABMX("REC")),U,6)
 S $P(ABMV("X1"),U,11)=$P($G(ABMX("REC")),U,7)
 S $P(ABMV("X1"),U,12)=$S($P($G(^AUPNPRVT(ABMX(2),11,ABMX(1),2)),U)'="":$P(^AUPNPRVT(ABMX(2),11,ABMX(1),2),U),+$P($G(^AUPNPRVT(ABMX(2),11,ABMX(1),0)),U,8)'=0:$P($G(^AUPN3PPH($P(^AUPNPRVT(ABMX(2),11,ABMX(1),0),U,8),0)),U,4),1:"")
 K ABMPH,ABMCOVT
 Q
 ;
 ; *********************************************************************
MCR ;EP - Entry Point for setting MCR Info
 ;S $P(ABMV("X1"),U,4)=$P(ABMX("REC"),U,3)_$S($P(ABMX("REC"),U,4)]"":"-"_$P(^AUTTMCS($P(ABMX("REC"),U,4),0),U),1:"")  ;abm*2.6*26 IHS/SD/SDR CR9265
 ;start new abm*2.6*26 IHS/SD/SDR CR9265
 K ABMMBI
 S ABMMBI=""
 S ABMMBI=$$HISTMBI^AUPNMBI(ABMX(2),.ABMMBI)
 S ABMMBI=+$O(ABMMBI(999999999),-1)
 S:(ABMMBI'=0) $P(ABMV("X1"),U,4)=$P(ABMMBI(ABMMBI),U)
 I $P($G(ABMV("X1")),U,4)="" S $P(ABMV("X1"),U,4)=$P(ABMX("REC"),U,3)_$S($P(ABMX("REC"),U,4)]"":"-"_$P(^AUTTMCS($P(ABMX("REC"),U,4),0),U),1:"")
 ;end new abm*2.6*26 IHS/SD/SDR CR9265
 I '+$O(^AUPNMCR(ABMX(2),11,0)) S ABME(103)=""
 I $D(^AUPNMCR(ABMX(2),21)) D
 .S:$P(^AUPNMCR(ABMX(2),21),U)]"" $P(ABMV("X1"),U,5)=$P(^AUPNMCR(ABMX(2),21),U)
 .S:$P(^AUPNMCR(ABMX(2),21),U,2)]"" $P(ABMV("X1"),U,6)=$P(^AUPNMCR(ABMX(2),21),U,2)
 S ABMLDT=9999999
 K ABMP("COV")
 F  S ABMLDT=$O(^AUPNMCR(ABMX(2),11,ABMLDT),-1) Q:'ABMLDT  D
 .Q:$P($G(^AUPNMCR(ABMX(2),11,ABMLDT,0)),U)>ABMP("VDT")
 .Q:($P($G(^AUPNMCR(ABMX(2),11,ABMLDT,0)),U,2)'="")&($P($G(^AUPNMCR(ABMX(2),11,ABMLDT,0)),U,2)<ABMP("VDT"))
 .S ABMPCOV=$P($G(^AUPNMCR(ABMX(2),11,ABMLDT,0)),U,3)
 .Q:ABMPCOV=""
 .Q:$D(ABMP("COV",ABMPCOV))
 .S (ABMCOVT,ABMP("COV",ABMPCOV))=$P($G(^AUPNMCR(ABMX(2),11,ABMLDT,0)),U)_U_$P($G(^AUPNMCR(ABMX(2),11,ABMLDT,0)),U,2)
 .I $P($G(^AUPNMCR(ABMX(2),11,ABMLDT,0)),U,8)=""!($P($G(^AUPNMCR(ABMX(2),11,ABMLDT,0)),U,8)="U") S ABME(66)=""  ;abm*2.6*11 MU2 gender
 K ABMLDT,ABMESDT,ABMCOVT,ABMEEDT
 Q
 ;
 ; *********************************************************************
 ;start new abm*2.6*21 IHS/SD/SDR VMBP RQMT_109
VAMB ;EP - Entry Point for setting VAMB Info
 S $P(ABMV("X1"),U,4)=$P(ABMX("REC"),U,6)
 I '+$O(^AUPNVAMB(ABMX(2),11,0)) S ABME(103)=""
 I $P($G(^AUPNVAMB(ABMX(2),0)),U,8)=""!($P($G(^AUPNVAMB(ABMX(2),0)),U,8)="U") S ABME(66)=""  ;MU2 gender
 S ABMLDT=9999999
 K ABMP("COV")
 F  S ABMLDT=$O(^AUPNVAMB(ABMX(2),11,ABMLDT),-1) Q:'ABMLDT  D
 .Q:$P($G(^AUPNVAMB(ABMX(2),11,ABMLDT,0)),U)>ABMP("VDT")
 .Q:($P($G(^AUPNVAMB(ABMX(2),11,ABMLDT,0)),U,2)'="")&($P($G(^AUPNVAMB(ABMX(2),11,ABMLDT,0)),U,2)<ABMP("VDT"))
 .S ABMPCOV=$$GET1^DIQ(9999999.65,$P($G(^AUPNVAMB(ABMX(2),11,ABMLDT,0)),U,3),".01","E")
 .Q:ABMPCOV=""
 .Q:$D(ABMP("COV",ABMPCOV))
 .S (ABMCOVT,ABMP("COV",ABMPCOV))=$P($G(^AUPNVAMB(ABMX(2),11,ABMLDT,0)),U)_U_$P($G(^AUPNVAMB(ABMX(2),11,ABMLDT,0)),U,2)
 K ABMLDT,ABMESDT,ABMCOVT,ABMEEDT
 Q
 ;end new abm*2.6*21 IHS/SD/SDR VMBP RQMT_109
 ; *********************************************************************
RRE ;EP - Entry Point for setting RR Info
 ;I $P(ABMX("REC"),U,3)]"" S $P(ABMV("X1"),U,4)=$P(^AUTTRRP($P(ABMX("REC"),U,3),0),U)_$S($P(ABMX("REC"),U,4)]"":"-"_$P(ABMX("REC"),U,4),1:"")  ;abm*2.6*26 IHS/SD/SDR CR9265
 ;start new abm*2.6*26 IHS/SD/SDR CR9265
 K ABMMBI
 S ABMMBI=""
 S ABMMBI=$$HISTMBI^AUPNMBI(ABMX(2),.ABMMBI)
 S ABMMBI=+$O(ABMMBI(999999999),-1)
 S:(ABMMBI'=0) $P(ABMV("X1"),U,4)=$P(ABMMBI(ABMMBI),U)
 I $P($G(ABMV("X1")),U,4)="" I $P(ABMX("REC"),U,3)]"" S $P(ABMV("X1"),U,4)=$P(^AUTTRRP($P(ABMX("REC"),U,3),0),U)_$S($P(ABMX("REC"),U,4)]"":"-"_$P(ABMX("REC"),U,4),1:"")
 ;end new abm*2.6*26 IHS/SD/SDR CR9265
 I '+$O(^AUPNRRE(ABMX(2),11,0)) S ABME(103)=""
 I $D(^AUPNRRE(ABMX(2),21)) D
 .S:$P(^AUPNRRE(ABMX(2),21),U)]"" $P(ABMV("X1"),U,5)=$P(^AUPNRRE(ABMX(2),21),U)
 .S:$P(^AUPNRRE(ABMX(2),21),U,2)]"" $P(ABMV("X1"),U,6)=$P(^AUPNRRE(ABMX(2),21),U,2)
 S ABMLDT=9999999
 K ABMP("COV")
 F  S ABMLDT=$O(^AUPNRRE(ABMX(2),11,ABMLDT),-1) Q:'ABMLDT  D
 .Q:$P($G(^AUPNRRE(ABMX(2),11,ABMLDT,0)),U)>ABMP("VDT")
 .Q:($P($G(^AUPNRRE(ABMX(2),11,ABMLDT,0)),U,2)'="")&($P($G(^AUPNRRE(ABMX(2),11,ABMLDT,0)),U,2)<ABMP("VDT"))
 .S ABMPCOV=$P($G(^AUPNRRE(ABMX(2),11,ABMLDT,0)),U,3)
 .Q:$D(ABMP("COV",ABMPCOV))
 .S (ABMCOVT,ABMP("COV",ABMPCOV))=$P($G(^AUPNRRE(ABMX(2),11,ABMLDT,0)),U)_U_$P($G(^AUPNRRE(ABMX(2),11,ABMLDT,0)),U,2)
 .I $P($G(^AUPNRRE(ABMX(2),11,ABMLDT,0)),U,8)=""!($P($G(^AUPNRRE(ABMX(2),11,ABMLDT,0)),U,8)="U") S ABME(66)=""  ;abm*2.6*11 MU2 gender
 K ABMLDT,ABMESDT,ABMCOVT,ABMEED
 Q
 ;
 ; *********************************************************************
COV ;EP - Entry Point for setting Coverage Type Info
 Q
