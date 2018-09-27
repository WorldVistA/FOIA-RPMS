ABME5SV2 ; IHS/ASDST/DMJ - 837 SV2 Segment 
 ;;2.6;IHS Third Party Billing System;**6,8,9,10,20,23,25**;NOV 12, 2009;Build 444
 ;Transaction Set Header
 ;IHS/SD/SDR - 2.6*20 - HEAT262141 - Made units print 1 and nothing in SV02 for AZ Medicaid visit type 997 pharmacy
 ;IHS/SD/SDR 2.6*23 HEAT347035 Changed how it was getting rev code to use actual piece, not subscript; also changed format of $0 for Medi-Cal;
 ;   Also made units 0 if Medi-Cal and the charges is 0.
 ;IHS/SD/SDR 2.6*25 CR10016 Made it so flat rate only prints on first line if AZ Medicaid and visit type 997
 ;
EP ;EP
 K ABMREC("SV2"),ABMR("SV2")
 S ABME("RTYPE")="SV2"
 D LOOP
 K ABME
 Q
LOOP ;LOOP HERE
 F I=10:10:110 D
 .D @I
 .I $D(^ABMEXLM("AA",+$G(ABMP("INS")),+$G(ABMP("EXP")),ABME("RTYPE"),I)) D @(^(I))
 .I $G(ABMREC("SV2"))'="" S ABMREC("SV2")=ABMREC("SV2")_"*"
 .S ABMREC("SV2")=$G(ABMREC("SV2"))_ABMR("SV2",I)
 Q
10 ;segment
 S ABMR("SV2",10)="SV2"
 Q
20 ;SV201 - Product/Service ID
 ; Revenue code
 ;S ABMR("SV2",20)=$P($G(^AUTTREVN(ABMI,0)),U)  ;abm*2.6*23 IHS/SD/SDR HEAT347035
 S ABMR("SV2",20)=$P($G(^AUTTREVN($P(ABMRV(ABMI,ABMJ,ABMK),U),0)),U)  ;abm*2.6*23 IHS/SD/SDR HEAT347035
 ;S ABMR("SV2",20)=$$FMT^ABMERUTL(ABMR("SV2",20),"4NR")  ;abm*2.6*23 IHS/SD/SDR HEAT347035
 I +$G(ABMR("SV2",20))'=0 S ABMR("SV2",20)=$$FMT^ABMERUTL(ABMR("SV2",20),"4NR")  ;abm*2.6*23 IHS/SD/SDR HEAT347035
 Q
30 ;SV202 - Composite Medical Procedure Identifier
 ;SV202-1 Product Service ID Qualifier
 ;SV202-2 Product Service ID (Procedure Code)
 S ABMR("SV2",30)=""
 I $P(ABMRV(ABMI,ABMJ,ABMK),U,2)'="" D
 .S ABMR("SV2",30)="HC"
 .S $P(ABMR("SV2",30),":",2)=$P(ABMRV(ABMI,ABMJ,ABMK),U,2)
 .;modifiers
 .N I,J
 .S J=2
 .F I=3,4,12,13 D
 ..Q:$P(ABMRV(ABMI,ABMJ,ABMK),U,I)=""
 ..S J=J+1
 ..S $P(ABMR("SV2",30),":",J)=$P(ABMRV(ABMI,ABMJ,ABMK),U,I)
 .;SV202-7 Description (Not used)
 I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,39)'="" S $P(ABMR("SV2",30),":",7)=$P($G(ABMRV(ABMI,ABMJ,ABMK)),U,39)  ;abm*2.6*9 NARR
 I $$RCID^ABMERUTL(ABMP("INS"))=99999,(ABMP("VTYP")=997) S ABMR("SV2",30)=""  ;abm*2.6*20 IHS/SD/SDR HEAT262141
 Q
40 ;SV203 - Monetary Amount (Charges)
 S ABMR("SV2",40)=$P(ABMRV(ABMI,ABMJ,ABMK),U,6)
 ;start new code abm*2.6*10 COB billing
 I ABMPSQ'=1,$D(ABMP("FLAT")) D
 .I ($$RCID^ABMERUTL(ABMP("INS"))=99999&(ABMP("VTYP")=997)) Q  ;abm*2.6*25 IHS/SD/SDR CR10016
 .I ABMPSQ'=1,(+$P(ABMB2,U,3)'=0) S ABMR("SV2",40)=$P(ABMB2,U,3)
 .I ABMPSQ'=1,(+$P(ABMB2,U,7)>+$P(ABMB2,U,3)) S ABMR("SV2",40)=+$P(ABMB2,U,7)
 ;end new code COB billing
 I (($$RCID^ABMUTLP(ABMP("INS"))["61044")&(+$G(ABMR("SV2",40))=0)) Q  ;don't format for Medi-Cal when amount is $0  ;abm*2.6*23 IHS/SD/SDR HEAT347035
 S ABMR("SV2",40)=$$TRIM^ABMUTLP($J(ABMR("SV2",40),0,2),"L","0")
 Q
50 ;SV204 - Unit or Basis for Measurement Code
 S ABMR("SV2",50)="UN"
 I ABMP("ITYPE")="P",((ABMI>"0100")&(ABMI<"0229")) S ABMR("SV2",50)="DA"
 Q
60 ;SV205 - Quantity
 S ABMR("SV2",60)=$P(ABMRV(ABMI,ABMJ,ABMK),U,5)
 I $$RCID^ABMERUTL(ABMP("INS"))=99999,(ABMP("VTYP")=997) S ABMR("SV2",60)=1  ;abm*2.6*20 IHS/SD/SDR HEAT262141
 I (($$RCID^ABMUTLP(ABMP("INS"))["61044")&(+$G(ABMR("SV2",40))=0)) S ABMR("SV2",60)=0  ;make unit zero if charges is zero and Medi-Cal  ;abm*2.6*23 IHS/SD/SDR HEAT347035
 Q
70 ;SV206 - Unit Rate
 S ABMR("SV2",70)=""
 Q
80 ;SV207 - Monetary Amount (Non covered charges)
 S ABMR("SV2",80)=""
 Q
90 ;SV208 - Yes/No Condition or Response Code (Not used)
 S ABMR("SV2",90)=""
 Q
100 ;SV209 - Nursing Home Residential Status Code (Not used)
 S ABMR("SV2",100)=""
 Q
110 ;SV210 - Leve of Care Code (Not used)
 S ABMR("SV2",110)=""
 Q
