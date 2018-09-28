BARMAWO7 ; IHS/SD/LSL - Automatic Write-off (con't) ;
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**1,2,21,24,28**;OCT 26, 2005;Build 92
 ;
 ;IHS/ASDS/LSL - 06/15/2001 - V1.5 Patch 1 - NOIS HQW-0601-100051 Modifying BARMAWO to extend the expiration date resulted in 
 ;     the routine being too large.  Created this routine to break up BARMAWO.
 ;IHS/ASDS/LSL - 09/07/01 - V1.5 Patch 2 - Modified to accomodate finance changes as documented in BARMAWO
 ;
 ;IHS/SD/LSL - 07/24/02 - V1.7 - NOIS CMA-0702-110082 Resolve <UNDEF>WRITEOFF+17^BARMAWO1
 ;IHS/SD/LSL - 11/26/02 - V1.7 - NOIS QAA-1200-130051 Quit if error in getting A/R Transaction
 ;IHS/SD/LSL - 12/06/02 - V1.7 - NOIS NHA-0601-180049 Find 3P bill correctly.
 ;     
 ;IHS/SD/PKD - 03/28/11 - 1.8*21 Manilaq, Alaska write-offs through 1/1/09 has been approved
 ; 	  Heat 19931.  Modify to allow Date Range to be entered regardless of Parameter file.  Called from BARMAWO6 after asking paramters
 ;IHS/SD/POT 1/2/2014 HEAT147266 fixed start / end dates
 ;IHS/SD/SDR 1.8*28 CR8349 HEAT293633 - Changed hardcoded adjustment category 3 to use variable instead so user's answer is used.  Also
 ;   added transaction IEN to output for user.  Made sure all bills reviewed are captured in some sense, whether as written off, or
 ;   by what reason they were skipped.
 ;
 Q
 ; **********
LOOPDUZ ; EP
 ; Loop A/R Bill File by DUZ(2)
 S BARDUZ=0
 F  S BARDUZ=$O(^BARBL(BARDUZ)) Q:'+BARDUZ  D LOOPDT
 Q
 ; **********
LOOPDT ;
 ; Loop A/R Bill File by date of service
 S BARVISIT=BARDOS1-0.00001 ;BAR*1.8*24
 ;F  S BARVISIT=$O(^BARBL(BARDUZ,"E",BARVISIT)) Q:'+BARVISIT!(BARVISIT>BARDOS2)  D LOOPBIL  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 F  S BARVISIT=$O(^BARBL(BARDUZ,BAR("DTYP"),BARVISIT)) Q:'+BARVISIT!(BARVISIT>BARDOS2)  D LOOPBIL  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 Q
 ; **********
LOOPBIL ;
 ; Loop bills for date of service
 S BARBL2=0
 ;F  S BARBL2=$O(^BARBL(BARDUZ,"E",BARVISIT,BARBL2)) Q:'+BARBL2  D WRITEOFF  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 F  S BARBL2=$O(^BARBL(BARDUZ,BAR("DTYP"),BARVISIT,BARBL2)) Q:'+BARBL2  D WRITEOFF  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 Q
 ; **********
WRITEOFF         ;
 ;Write off bills that meet criteria
 Q:'$D(^BARBL(BARDUZ,BARBL2))  ;No bill data
 S BAR(0)=$G(^BARBL(BARDUZ,BARBL2,0))  ;A/R Bill 0 node
 S BAR(1)=$G(^BARBL(BARDUZ,BARBL2,1))  ;A/R Bill 0 node
 S BARBAL=$P(BAR(0),U,15)   ;Bill Balance
 S BARAMT=$P(BAR(0),U,13)   ;Billed Amount
 S BARVSTL=$P(BAR(1),U,8)   ;Visit location
 S BARDOSE=$P(BAR(1),U,3)   ;1;3 DOS END
 ;I BARDOSE>BARDOS2 Q  ;P.OTT 1/2/2004  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633 ;removed - if the begin date is in range it should adjust bill, no matter the end date
 ;Q if A/R account is not on bill
 ;I $P(BAR(0),U,3)="" S ^BARTMP("BARAWO",BARDUZ,DT,DUZ,"NO A/R ACCT",BARBL2)="" Q  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I $P(BAR(0),U,3)="" S ^BARTMP("BARAWO",BARDUZ,DT,DUZ,"NO A/R ACCT",BARBL2)=$P(BAR(0),U) Q  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;Q if visit location not in list
 ;I $D(BAR("LOC")),'$D(BAR("LOC",BARVSTL)) Q  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I $D(BAR("LOC")),'$D(BAR("LOC",BARVSTL)) S ^BARTMP("BARAWO",BARDUZ,DT,DUZ,"NOT VLOC",BARBL2)=$P(BAR(0),U) Q  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633 - capture not visit loc
 ;Q if A/R account not in list
 ;I $D(BAR("ACCT")),'$D(BAR("ACCT",$P(BAR(0),U,3))) Q  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I $D(BAR("ACCT")),'$D(BAR("ACCT",$P(BAR(0),U,3))) S ^BARTMP("BARAWO",BARDUZ,DT,DUZ,"NOT ACCT",BARBL2)=$P(BAR(0),U) Q  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633 - capture not A/R Account
 S BARACT=$P(BAR(0),U,3)  ;A/R Account
 S D0=BARACT  ;BAR*1.8*2
 S BARITYP=$$VALI^BARVPM(8)  ;GET INTERNAL CODE INSTEAD OF 'STANDS FOR'
 ;IHS/SD/PKD 1.8*manilaq Allow Non-Bens to be written off
 ;Q:BARITYP="N"
 ;I 'BENPLUS Q:BARITYP="N"  ;BENPLUS=0 IF ONLY NON-BEN IN WRITEOFF  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I 'BENPLUS,BARITYP="N" S ^BARTMP("BARAWO",BARDUZ,DT,DUZ,"NON-BEN",BARBL2)=$P(BAR(0),U) Q  ;BENPLUS=0 IF ONLY NON-BEN IN WRITEOFF  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
BEN  ;
 I BARBAL'>0 D  Q  ;Don't want 0 or credit bal
 .;S ^BARTMP("BARAWO",BARDUZ,DT,DUZ,"CREDIT",BARBL2)=""  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 .S ^BARTMP("BARAWO",BARDUZ,DT,DUZ,"CREDIT",BARBL2)=$P(BAR(0),U)  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;IHS/SD/PKD 5/12/11 removed the $20,000 ceiling on write-off
 ;I BARAMT>20000 D  Q    ;May only write-off $20,000
 ;.S ^BARTMP("BARAWO",BARDUZ,DT,DUZ,"TOO HIGH",BARBL2)=""
 S DUZ(2)=BARDUZ
 S BARTRIEN=$$NEW^BARTR  ;Create new transaction
 I BARTRIEN<1 D MSG^BARTR(BARBL2) Q
 S DA=BARTRIEN
 S DIE=90050.03
 S DR="2////^S X=BARBAL"  ;Credit ($$$)
 S DR=DR_";4////^S X=BARBL2"  ;A/R Bill
 S DR=DR_";5////^S X=$P(BAR(1),U)"  ;A/R Patient
 S DR=DR_";6////^S X=$P(BAR(0),U,3)"  ;A/R Account
 S DR=DR_";8////^S X=DUZ(2)"  ;Parent Location
 ;S DR=DR_";9////^S X=DUZ(2)"  ;Parent ASUFAC  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633 removed; we don't populate normally and this is wrong; it's the IEN, not ASUFAC
 S DR=DR_";10////^S X=BARSECT"  ;A/R Section
 S DR=DR_";11////^S X=$P(BAR(1),U,8)"  ;Visit location
 S DR=DR_";12////^S X=DT"  ;Date
 S DR=DR_";13////^S X=DUZ"  ;A/R Entry by
 S DR=DR_";101////43"  ;Transaction type (Adj)
 ;S DR=DR_";102////3"  ;Adj Category (Write off)  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 S DR=DR_";102////^S X=BARCAT"  ;Adj Category (Write off)  ;change from hardcoded 3 to user's answer to prompt  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 S DR=DR_";103////^S X=ADJTYPE"  ;Adj Type (Auto write off)
 I BARUXMIT'=1 S DR=DR_";112////I"  ;ignore transaction if user said no, don't send  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 S DIDEL=90050
 D ^DIE  ;Populate transaction file
 K DIDEL,DIE,DA,DR
 D TR^BARTDO(BARTRIEN)  ;Post from Trans to files
 K BARBL
 S BARCNT=BARCNT+1
 ;W !,$P(BAR(0),U),?25," for ",$J($FN(BARBAL,",",2),10)," written off."  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !,$P(BAR(0),U),?25," for ",$J($FN(BARBAL,",",2),10)," with trans ",BARTRIEN  ;write trans to screen  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 S ^BARTMP("BARAWO",BARDUZ,DT,DUZ,"WRITEOFF DONE",BARBL2)=$P(BAR(0),U)  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;D ROLLBILL    ;Roll info to 3PB  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I BARRBACK=1 D ROLLBILL    ;Roll info to 3PB to user answered YES to rollback  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 Q
 ; **********
ROLLBILL ;
 ; For bills written off, update Payment multiple in 3P and mark bill
 ; complete in 3PB.  Also mark bill as rolled in A/R
 S BARBLDA=BARBL2
 D SETVAR^BARROLL                       ; Set A/R vars to roll to 3PB
 S ROLL=0  ;BAR*1.8*1 UFMS WRITE-OFF
 D ROLL
 Q:'ROLL  ;BAR*1.8*1 UFMS WRITE-OFF
 D SETBLRL^BARROLL                      ; Mark bill as rolled
 Q
 ; **********
ROLL ;EP
 ; Changed code NHA-0601-180049 V1.6 Patch 4
 ; Roll A/R vars to 3PB
 K DIE,DA,DR
 S BAR("3P BILL LOC")=$$FIND3PB^BARUTL(DUZ(2),BARBLDA)
 S DUZO2=DUZ(2)
 S DUZ(2)=$P(BAR("3P BILL LOC"),",")
 S Y=$P(BAR("3P BILL LOC"),",",2)
 ;BEGIN  ;IF CAN'T FIND 3P BILL INFO SKIP ROLL OVER BAR*1.8*1
 I DUZ(2)=""!(Y="") S ROLL=0,DUZ(2)=DUZO2 Q
 S ROLL=1
 ;END
 S Y=Y_"^"_DUZ(2)
 S DIC=$$DIC^XBDIQ1(9002274.4)
 S BARGBL=DIC_+Y_")"
 I $D(@BARGBL) D ROLLTPB                ; Roll to 3PB
 S DUZ(2)=DUZO2
 Q
 ; **********
ROLLTPB ;
 ; File A/R data in payment mult of 3PB
 M ABM=BARSUM
 S X=Y
 ;S Z=BAR3PNM   ;IM18173 BAR*1.8*1
 S ABMP("BDFN")=+X                      ; IEN to 3PB BILL
 S ABMP("BILL")=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),0),"^",1)  ; Bill #
 I 'ABMP("BDFN") Q
 ; File A/R data in payment multiple of 3P BILL and complete bill
 D FILE^ABMAROLL
 Q
 ;moved CONTINUE tag from BARMAWO6 to here due to routine size
CONTINUE ;
 ;Display choices to user; ask if they wish to continue. 
 ;Tell them bills written off will scroll on screen if they wish to
 ;capture.
 W !!!!!  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I $G(BARDOS("E"))="" W !,"Quitting - no date entered" Q
 ;W "You have chosen to write off bills meeting the above criteria"  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W "You have chosen to write off bills meeting the following criteria:",!  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;W !,"for dates of service from ",BARDOS1("E")," to ",BARDOS2("E") ;;P.OTT 1/2/2014  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !,"for "_$S(BAR("DTYP")="AG":"Approval Dates",1:"Dates of Service")_": ",?25,BARDOS1("E")," to ",BARDOS2("E")  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;W !!,"for the following Locations: "  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !,"for Locations: "  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;I '$D(BAR("LOC")) W ?40,"ALL"  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I '$D(BAR("LOC")) W ?25,"ALL"  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I $D(BAR("LOC")) D
 .S BARTMP=0
 .F  S BARTMP=$O(BAR("LOC",BARTMP)) Q:'+BARTMP  D
 ..;W ?40,$P(^DIC(4,BARTMP,0),U),!  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ..W ?25,$P(^DIC(4,BARTMP,0),U),!  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;W !,"for the following A/R accounts: "  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !,"for A/R accounts: "  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;I '$D(BAR("ACCT")) W ?40,"ALL" I 'BENPLUS W " BENEFICIARY"  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I '$D(BAR("ACCT")) W ?25,"ALL" I 'BENPLUS W " BENEFICIARY"  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I $D(BAR("ACCT")) D
 .S BARTMP=0
 .F  S BARTMP=$O(BAR("ACCT",BARTMP)) Q:'+BARTMP  D
 ..;W ?40,$$VAL^XBDIQ1(90050.02,BARTMP,.01),!  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ..W ?25,$$VAL^XBDIQ1(90050.02,BARTMP,.01),!  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;start old bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;W !,"The Transaction Type will be: Adjustment (43)"
 ;W !,"The Adjustment Category will be:  ",BARY("ADJ CAT",BARCAT)," (",(BARCAT),")"
 ;W !,"The Adjustment Type will be:  ",BARY("ADJ TYP",ADJTYPE)," (",(ADJTYPE),")",!!
 ;end old start new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !?3,"Transaction Type: Adjustment (43)"  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !,"Adjustment Category: ",BARY("ADJ CAT",BARCAT)," (",(BARCAT),")"
 W !?4,"Adjustment Type: ",BARY("ADJ TYP",ADJTYPE)," (",(ADJTYPE),")"
 W !!,"Bills will "_$S(BARRBACK'=1:"*NOT* ",1:"")_"be rolled back to TPB."
 W:+$G(UFMSESID) !!,"Transactions will be in SESSION: ",NEWUSRNM_"  "_NEWSESS_"   STATUS: ",$$CURSTAT^BARUFUT(NEWDUZ,NEWSESS,"E")
 W !,"Transactions will "_$S(BARUXMIT'=1:"*NOT* ",1:"")_"be sent to UFMS."
 ;end new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !!,"The bill number and amount written off will scroll by on the screen."
 W !,"If you wish to capture this information, please turn on Screen Capture.",!
 ;
 K DIR
 S DIR(0)="Y"
 S DIR("A")="Continue"
 S DIR("B")="No"
 D ^DIR
 K DIR
 S:Y=1 BARCONT=1
 Q
