BARTRNS2 ; IHS/SD/SDR - Transaction Summary/Detail Report ; 03/10/2009
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ;IHS/SD/POT - 1.8*28 - CR8397 HEAT155084 - NEW ROUTINE CLONED FROM BARTRNS1; CALLED FROM BARTRNT
 ;IHS/SD/SDR - 1.8*28 - CR8397 HEAT155084 Corrected column header from Adj Amt to Adj Cat.  Added column  for Adj Amt.
 ;    Added #DAYS (APPR.DT-ADJ.DT) (Header was printing without data).  Changed loop to look thru transaction file, not bill file.
 ;
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
 F  S BARP("DT")=$O(^BARTR(DUZ(2),"B",BARP("DT"))) Q:'BARP("DT")!(BARP("DT")>BARY("DT",3))  D
 .S BARTR=BARP("DT")  ;A/R Trans IEN
 .S BARIEN=$P($G(^BARTR(DUZ(2),BARP("DT"),0)),U,4)  ;A/R Bill IEN
 .Q:+BARIEN=0  ;transaction not associated with A/R Bill
 .;get bill info
 .S BAR(0)=$G(^BARBL(DUZ(2),BARIEN,0))  ;A/R Bill 0 node
 .S BAR(1)=$G(^BARBL(DUZ(2),BARIEN,1))  ;A/R Bill 1 node
 .S BAR("LOC")=$P(BAR(1),U,8)  ;Visit loc (A/R Parent/Sat)
 .S BAR("INS")=$P(BAR(0),U,3)  ;A/R Acct
 .S BAR("DOS")=$P(BAR(1),U,2)  ;DOS Begin
 .S BAR("APPDT")=$P(BAR(0),U,18)  ;3P Appr. date
 .S BAR("BAMT")=$P(BAR(0),U,13)  ;total bill amt
 .I BAR("INS")]"" D
 ..S D0=BAR("INS")
 ..S BAR("ITYP")=$$VALI^BARVPM(8)  ;Ins Type CODE
 .I BAR("INS")="" S BAR("INS")=0
 .I $D(BARY("ITYP")),$G(BARY("ITYP"))'=BAR("ITYP") Q  ;look for specific ins typ
 .I $D(BARY("LOC")),$G(BARY("LOC"))'=BAR("LOC") Q  ;look for specific loc and this isn't it
 .I $D(BARY("ARACCT")),'$D(BARY("ARACCT",BAR("INS"))) Q  ;not the a/r acct we want
 .I $G(BAR("ITYP"))="" S BAR("ITYP")="No Billing Entity"  ;bar*1.8*20 pkd <undef> correction
 .I BAR("ITYP")'="No Billing Entity" D
 ..S BAR("ALL")="O"  ;Other Allow Cat
 ..I ",R,MD,MH,MC,MMC"[(","_BAR("ITYP")_",") S BAR("ALL")="R" Q  ;MCR
 ..I ",D,K,FPL,"[(","_BAR("ITYP")_",") S BAR("ALL")="D" Q        ;MCD
 ..I ",F,M,H,P,"[(","_BAR("ITYP")_",") S BAR("ALL")="P" Q        ;PVT
 ..I ",V,"[(","_BAR("ITYP")_",") S BAR("ALL")="V" Q
 .I $G(BAR("ALL"))=""  S BAR("ALL")="No Allowance Category"
 .I $D(BARY("ALL")),(+BARY("ALL")=BARY("ALL")) S BARY("ALL")=$$CONVERT^BARRSL2(BARY("ALL"))
 .I $D(BARY("ALL")),BARY("ALL")'=BAR("ALL") Q  ;Not chosen Allow Cat
 .;
 .S BARBILL=$P($G(^BARBL(DUZ(2),BARIEN,0)),U)
 .I BAR("LOC")="" D  S BAR("LOC")="????"
 .I BARY("RTYP")=1 D
 ..S $P(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS")),U)=+$P($G(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"))),U)+1
 ..S $P(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS")),U,2)=+$P($G(^TMP($J,"BAR-TRANST",BAR("LOC"),BAR("ITYP"),BAR("INS"))),U,2)+$G(BAR("BAMT"))
 .;NEED TO ADD CHECK FOR INS TYPE
 .D TRANS^BARTRNS3  ;trans info for bill
 Q
 ;EOR - IHS/DIT/CPC 1.8*28
