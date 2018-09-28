BARTRNS1 ; IHS/SD/SDR - Transaction Summary/Detail Report ; 03/10/2009
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**10,19,20,22,23,28**;OCT 26, 2005;Build 92
 ;IHS/SD/POT 1.8*23 HEAT74599 JUNE 2012 "No Billing Entity" & $T("No Billing Entity"
 ;IHS/SD/POT 1.8*23 MAR 2013 ADDED NEW VA billing
 ;IHS/SD/SDR 1.8*28 Updated p23 documentation
 ;IHS/SD/SDR,POT 1.8*28 CR8397 HEAT155084 (SDR) - Corrected column header from Adj Amt to Adj Cat.  Added column
 ;  for Adj Amt.  Added #DAYS (APPR.DT-ADJ.DT) (Header was printing without data).  Changed loop to
 ;  look thru transaction file, not bill file.
 ;  (POT) - ADD ADJ TYPE IEN TO THE DETAIL REPORT; FIX MISSING #OF DATES (#5PIECE)
 Q
COMPUTE ; EP
 S BAR("SUBR")="BAR-TRANS"
 K ^TMP($J,"BAR-TRANS")
 K ^TMP($J,"BAR-TRANST")
 I BAR("LOC")="BILLING" D LOOP Q
 S BARDUZ2=DUZ(2)
 S DUZ(2)=0
 S BARY("DT",3)=BARY("DT",2)+.99
 F  S DUZ(2)=$O(^BARBL(DUZ(2))) Q:'DUZ(2)  D LOOP
 S DUZ(2)=BARDUZ2
 Q
LOOP ;EP for Loop thru Bill File
 S BARP("DT")=BARY("DT",1)-1+.9  ;PKD 9/24/10 1.8*19 don't go back extra day
 ;PKD 1.8*19 BARY("DT",3) - corrected end date
 ;F  S BARP("DT")=$O(^BARBL(DUZ(2),"AG",BARP("DT"))) Q:'BARP("DT")!(BARP("DT")>BARY("DT",2))  D
 F  S BARP("DT")=$O(^BARBL(DUZ(2),"AG",BARP("DT"))) Q:'BARP("DT")!(BARP("DT")>BARY("DT",3))  D
 .S BARIEN=0
 .F  S BARIEN=$O(^BARBL(DUZ(2),"AG",BARP("DT"),BARIEN)) Q:'BARIEN  D
 ..;get bill info
 ..S BAR(0)=$G(^BARBL(DUZ(2),BARIEN,0))  ;A/R Bill 0 node
 ..S BAR(1)=$G(^BARBL(DUZ(2),BARIEN,1))  ;A/R Bill 1 node
 ..S BAR("LOC")=$P(BAR(1),U,8)  ;Visit loc (A/R Parent/Sat)
 ..S BAR("INS")=$P(BAR(0),U,3)  ;A/R Acct
 ..S BAR("DOS")=$P(BAR(1),U,2)  ;DOS Begin
 ..S BAR("APPDT")=$P(BAR(0),U,18)  ;3P Appr. date
 ..S BAR("BAMT")=$P(BAR(0),U,13)  ;total bill amt
 ..I BAR("INS")]"" D
 ...S D0=BAR("INS")
 ...S BAR("ITYP")=$$VALI^BARVPM(8)  ;Ins Typ
 ..;PKD 1.8*19 12/29/10 - shouldn't happen - no A/R acct for bill
 ..I BAR("INS")="" S BAR("INS")=0
 ..I $D(BARY("ITYP")),$G(BARY("ITYP"))'=BAR("ITYP") Q  ;look for specific ins typ
 ..I $D(BARY("LOC")),$G(BARY("LOC"))'=BAR("LOC") Q  ;look for specific loc and this isn't it
 ..I $D(BARY("ARACCT")),'$D(BARY("ARACCT",BAR("INS"))) Q  ;not the a/r acct we want
 ..;I $G(BAR("ITYP"))="" S BAR("BI")="No Billing Entity"  ;bar*1.8*20 pkd <undef> correction
 ..I $G(BAR("ITYP"))="" S BAR("ITYP")="No Billing Entity"  ;bar*1.8*20 pkd <undef> correction
 ..I BAR("ITYP")'="No Billing Entity" D
 ...S BAR("ALL")="O"  ;Other Allow Cat
 ...I BAR("ITYP")="G" S BAR("ALL")="O" Q
 ...I BAR("ITYP")="R"!(BAR("ITYP")="MD")!(BAR("ITYP")="MH") S BAR("ALL")="R" Q  ;Mcr Allow Cat
 ...I BAR("ITYP")="D" S BAR("ALL")="D" Q  ;Mcd Allow Cat
 ...I BAR("ITYP")="K" S BAR("ALL")="D" Q  ;CHIPS is lumped w/Mcd
 ...;PKD 1.8*19 "T"=3RD PARTY BILL -NO LONGER 'Private' per Adrian 12/29/10
 ...;I ",F,M,H,P,T,"[(","_BAR("ITYP")_",") S BAR("ALL")="P" Q  ;Pvt
 ...;start old bar*1.8*28 IHS/SD/POT CR8397 HEAT155084
 ...;I ",F,M,H,P,"[(","_BAR("ITYP")_",") S BAR("ALL")="P" Q  ;Pvt
 ...;I ",V,"[(","_BAR("ITYP")_",") S BAR("ALL")="V" Q  ;bar*1.8*23 IHS/SD/POT
 ...;end old start new bar*1.8*28 IHS/SD/POT CR8397 HEAT155084
 ...I ",R,MD,MH,MC,MMC,"[(","_BAR("ITYP")_",") S BAR("ALL")="R" Q  ;MCR
 ...I ",D,K,FPL,"[(","_BAR("ITYP")_",") S BAR("ALL")="D" Q  ;MCD
 ...I ",F,M,H,P,"[(","_BAR("ITYP")_",") S BAR("ALL")="P" Q  ;PVT
 ...I ",V,"[(","_BAR("ITYP")_",") S BAR("ALL")="V" Q  ;VA
 ...;end new bar*1.8*28 IHS/SD/POT CR8397 HEAT155084
 ..I $G(BAR("ALL"))=""  S BAR("ALL")="No Allowance Category"
 ..I $D(BARY("ALL")),(+BARY("ALL")=BARY("ALL")) S BARY("ALL")=$$CONVERT^BARRSL2(BARY("ALL"))
 ..I $D(BARY("ALL")),BARY("ALL")'=BAR("ALL") Q  ;Not chosen Allow Cat
 ..;
 ..S BARBILL=$P($G(^BARBL(DUZ(2),BARIEN,0)),U)
 ..I BARY("RTYP")=1 D
 ...S $P(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS")),U)=+$P($G(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"))),U)+1
 ...S $P(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS")),U,2)=+$P($G(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"))),U,2)+$G(BAR("BAMT"))
 ..;NEED TO ADD CHECK FOR INS TYPE
 ..D TRANS  ;trans info for bill
 Q
TRANS ;EP Loop thru Trans File
 S BARTR=0
 F  S BARTR=$O(^BARTR(DUZ(2),"AC",BARIEN,BARTR)) Q:'BARTR  D
 .;for checking Trans File data parms
 .S BARTR(0)=$G(^BARTR(DUZ(2),BARTR,0))  ;A/R Trans 0 node
 .S BARTR(1)=$G(^BARTR(DUZ(2),BARTR,1))  ;A/R Trans 1 node
 .S BARTR("TTYP")=$P(BARTR(1),U)  ;Trans type
 .S BARTR("ADJ CAT")=$P(BARTR(1),U,2)  ;Adj Cat
 .S BARTR("ADJ TYPE")=$$GET1^DIQ(90052.02,$P(BARTR(1),U,3),.01)  ;Adj Type
 .;PKD 1.8*19 include ADJ TYPE IEN on rpt -> BARTR("ADJ TYPIEN")
 .S BARTR("ADJ TYPIEN")=$P(BARTR(1),U,3)
 .S:BARTR("ADJ CAT")="" BARTR("ADJ CAT")="NULL"
 .;1.8*19 Use space if ADJ TYP IEN is null to prevent subscript error
 .;S:(BARTR("ADJ TYPE")="") BARTR("ADJ TYPE")="NULL"
 .I BARTR("ADJ TYPE")="" S BARTR("ADJ TYPE")="NULL",BARTR("ADJ TYPIEN")=" "
ADJTY .I $D(BARY("ADJ TYP")) Q:'$D(BARY("ADJ TYP",BARTR("ADJ TYPIEN")))  ;PKD 1.8*20 Check for Inclusion ADJ TYPE
 .S BARTR("DT")=$P(BARTR(0),U)  ;Trans date/time
 .S BARTR("TAMT")=$$GET1^DIQ(90050.03,BARTR,3.5)
 .S BARTR("INS")=$P(BAR(0),U,3)  ;A/R Acct
 .I BARTR("INS")]"" D
 ..S D0=BARTR("INS")
 ..S BARTR("ITYP")=$$VALI^BARVPM(8)  ;Ins Type
 .I BARY("RTYP")=1 D SUMMARY
 .I BARY("RTYP")=2 D DETAIL
 Q
SUMMARY ;left of the "=" - LOC^INS TYPE^INSURER
 ;right of the "=" - BILL COUNT^TOTAL BILL AMT^TOTAL PYMTS^ADJ TYPE^TOTAL ADJS
 ;***PKD 1.8*19 adding "ADJ TYPIEN" before ADJ TYPE for sort 
 ;***& splitting long lines for SAC and clarity in reading
 ;update: bill count; total bill amount ;total pymts
 ;1.8*19 Lines too long w/out change - Line body must not exceed 245 characters
 I BARTR("TTYP")=40 D
 .S $P(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS")),U,3)=+$P($G(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"))),U,3)+$G(BARTR("TAMT"))
 ;I BARTR("TTYP")=43 D  ;bar*1.8*20
 I BARTR("TTYP")=43!(BARTR("TTYP")=993) D  ;bar*1.8*20
 .I +$P($G(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"))),U,3)=0 S $P(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS")),U,3)=0
 .N NODE
 .;bar*1.8*22 SDR put back old NOHEAT
 .S NODE=$G(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"),"ADJS",BARTR("ADJ TYPIEN"),BARTR("ADJ TYPE")))  ;total adjs  bar*1.8*20
 .;S NODE=$G(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"),"ADJS",BARTR("ADJ TYPIEN")_" "_BARTR("ADJ TYPE")))  ;total adjs  bar*1.8*20
 .S $P(NODE,U)=$P(NODE,U)+$G(BARTR("TAMT"))
 .;bar*1.8*22 SDR put back old NOHEAT
 .S $P(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"),"ADJS",BARTR("ADJ TYPIEN"),BARTR("ADJ TYPE")),U)=NODE  ;bar*1.8*20
 .;S $P(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"),"ADJS",BARTR("ADJ TYPIEN")_" "_BARTR("ADJ TYPE")),U)=NODE  ;bar*1.8*20
 Q
 ;oldTag***  SUMMARY ;left of the "=" - LOC^INS TYPE^INSURER
 Q
 I BARTR("TTYP")=40 D
 .S $P(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS")),U,3)=+$P($G(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"))),U,3)+$G(BARTR("TAMT"))
 ;total adjs
 I BARTR("TTYP")=43 D
 .I +$P($G(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"))),U,3)=0 S $P(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS")),U,3)=0
 .S $P(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"),"ADJS",BARTR("ADJ TYPE")),U)=+$P($G(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"),"ADJS",BARTR("ADJ TYPE"))),U)+$G(BARTR("TAMT"))  ;total adjs
 Q
 ;
DETAIL ;left of the "=" - LOC^ALLOW CAT^INS TYPE^INSURER^BILL
 ;right of the "=" - DOS^APPROVAL DT^TOTAL BILL AMT^TOTAL PYMTS^# DAYS (DOS-APPR.DT)
 ; if adj
 ;right of the "=" - ADJ DT^ADJ TYPE^ADJ AMT^#DAYS (APPR.DT-ADJ.DT)
 S $P(^TMP($J,"BAR-TRANS",BAR("LOC"),BAR("ITYP"),BAR("INS"),BARBILL),U)=$$SDT^BARDUTL(BAR("DOS"))
 S $P(^TMP($J,"BAR-TRANS",BAR("LOC"),BAR("ITYP"),BAR("INS"),BARBILL),U,2)=$$CDT^BARDUTL(BAR("APPDT"))
 S $P(^TMP($J,"BAR-TRANS",BAR("LOC"),BAR("ITYP"),BAR("INS"),BARBILL),U,3)=BAR("BAMT")
 ;# of days between appr. date & DOS
 S X1=BAR("APPDT")
 S X2=BAR("DOS")
 D ^%DTC
 S $P(^TMP($J,"BAR-TRANS",BAR("LOC"),BAR("ITYP"),BAR("INS"),BARBILL),U,5)=X
 ;
 I BARTR("TTYP")=40 D
 .S $P(^TMP($J,"BAR-TRANS",BAR("LOC"),BAR("ITYP"),BAR("INS"),BARBILL),U,4)=$P(^TMP($J,"BAR-TRANS",BAR("LOC"),BAR("ITYP"),BAR("INS"),BARBILL),U,4)+BARTR("TAMT")
 ;I BARTR("TTYP")=43 D  ;bar*1.8*20
 I BARTR("TTYP")=43!(BARTR("TTYP")=993) D  ;bar*1.8*20
 .S BAR(BARBILL)=+$G(BAR(BARBILL))+1
 .;# of days between appr. date & adj date
 .S X1=+BARTR("DT")
 .S X2=BAR("APPDT")
 .D ^%DTC
 .;S $P(^TMP($J,"BAR-TRANS",BAR("LOC"),BAR("ITYP"),BAR("INS"),BARBILL,"ADJS",+$G(BAR(BARBILL))),U,4)=X  ;bar*1.8*20
 .;PKD 1.8*19 Add  "ADJ TYPIEN" to sort
 .N NODE
 .S $P(NODE,U)=$$CDT^BARDUTL(BARTR("DT"))
 .;S $P(NODE,U,2)=BARTR("ADJ TYPE")_" "_$J(BARTR("ADJ TYPIEN"),4) move to right side
 .;start old bar*1.*22 NOHEAT
 .;S $P(NODE,U,2)=$J(BARTR("ADJ TYPIEN"),4)_" "_BARTR("ADJ TYPE")
 .;S $P(NODE,U,3)=BARTR("TAMT")
 .;end old start new
 .S $P(NODE,U,2)=BARTR("ADJ TYPIEN")
 .S $P(NODE,U,3)=BARTR("ADJ TYPE")
 .S $P(NODE,U,4)=BARTR("TAMT")
 .;end new
 .S $P(NODE,U,5)=X ;ADDING MISSING DATE  ;bar*1.8*28 IHS/SD/POT CR8397 HEAT155084
 .S ^TMP($J,"BAR-TRANS",BAR("LOC"),BAR("ITYP"),BAR("INS"),BARBILL,"ADJS",+$G(BAR(BARBILL)))=NODE
 .;S $P(^TMP($J,"BAR-TRANS",BAR("LOC"),BAR("ITYP"),BAR("INS"),BARBILL,"ADJS",+$G(BAR(BARBILL))),U)=$$CDT^BARDUTL(BARTR("DT"))
 .;S $P(^TMP($J,"BAR-TRANS",BAR("LOC"),BAR("ITYP"),BAR("INS"),BARBILL,"ADJS",+$G(BAR(BARBILL))),U,2)=BARTR("ADJ TYPE")
 .;S $P(^TMP($J,"BAR-TRANS",BAR("LOC"),BAR("ITYP"),BAR("INS"),BARBILL,"ADJS",+$G(BAR(BARBILL))),U,3)=BARTR("TAMT")
 .; END 1.8*19
 Q
PRINT ;
 D PRINT^BARTRNS4  ;bar*1.8*28 IHS/SD/SDR split routine to BARTRNS4 due to size
 Q
 ;EOR - IHS/DIT/CPC 1.8*28
