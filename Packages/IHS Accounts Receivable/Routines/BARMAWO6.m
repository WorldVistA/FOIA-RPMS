BARMAWO6 ; IHS/SD/LSL - Automatic Write Off for Manilac ;
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**22,24,28**;OCT 26, 2005;Build 92
 ;IHS/ASDS/LSL-12/11/00 - Routine created
 ;     This routine is intended to be used to clean up A/R on dates of service prior to 06/30/00.  It is intended
 ;     to be a one time option.  It may not be used after 07/01/01.
 ;     All bills for up to and including the DOS specified for the A/R Accounts specified will be written off to a special code if
 ;     The amount billed is not greater than 20,000, the date of service is before 06/30/2000, and there is not a credit balance.
 ;
 ;IHS/ASDS/LSL-01/22/01 Modified to mark bill complete in 3PB and populate payment mult.
 ;IHS/ASDS/LSL-01/23/01 Modified to allow write off by visit location
 ;IHS/ASDS/LSL-06/15/01 V1.5 Patch 1 - NOIS HQW-0601-100051 Extend expiration date to 12/31/2001.
 ;IHS/ASDS/LSL-09/07/01 V1.5 Patch 2 Modified to include finance specifications; DOS must be at least 3 years old
 ;   Don't allow write-off of non-bens; Option expires by parameter or default to 10/15/01
 ;   One time only?????
 ;
 ;IHS/SD/PKD-03/28/11 1.8 Manilaq, Alaska write-offs through 1/1/09 has been approved
 ;  Heat 19931.  Modify to allow Date Range to be entered regardless of Parameter file
 ;  From: Glen Fowler [mailto:glen.fowler@maniilaq.org] 
 ;Sent: Thursday, December 16, 2010 1:41 PM
 ;  Subject: RE: A/R request [19931]
 ; Currently, we are working aged Medicare claims, as the 12/31/10 deadline to submit claims (10-1-08 to 12/31/09) will deny on timely filing limits.  
 ; Subsequently, we will be ready to run the AWO the first of the year.  Need new WriteOff code ...
 ;
 ;IHS/SD/POT 1/2/2014 HEAT147266 fixed start / end dates
 ;IHS/SD/SDR 1.8*28 CR8349 HEAT293633 - Fixed date on summary line at end.  BAREXPDT is no longer defined (code was commented out at some point).
 ;   Also fixed end date check to be inclusive of last day.  Cleaned up messages to user to make them clearer.  Added code to ask if they want to adjust
 ;   based on DOS or Approval Date.  Added code for Approval Date.
 ; *****************
 Q
 ;
EN ;EP
 W !!,"This option was updated in bar*1.8*22 to remove the date check."
 W !,"It will now run for ANY date and should be used with EXTREME"
 W !,"caution and only by OIT."
 ;start new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !!,"You should use D ^%GO to backup globals ^BARBL, ^BARTR, and"
 W !,"^ABMDBILL prior to running as a precaution."
 W !!,"Users should be off the system when running.  :)"
 W !!
 D PAZ
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 ;end new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;
 S BARHOLD=DUZ(2)
 S (BARCONT,BARCNT)=0
 S BARSECT=$$GET1^DIQ(200,DUZ,29,"I")  ;Serv/Sect from NEW PERSON
 ;
 W !," This menu is meant to be used as a Write-off tool. "
 W !!," The user is asked for: "
 W !,"  *A locally added Adjustment Type code for Auto Write-off, IEN or Full Name of"
 W !,"    Write-off Code"
 W !,"  *Inclusion of Non-Beneficiaries or not, "
 W !,"  *A list of visit locations (or all),"
 W !,"  *An inclusive Date Range of Bills to be written off,"
 W !,"  *A list of A/R Accounts (or all). "
 ;start old bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;W !!," The account balance of each bill found with a DOS up to and including the "
 ;W !," end date, will be written off to the Adjustment Code entered, if the following"
 ;W !," conditions are met:"
 ;end old start new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !!," The account balance of each bill found within the specified date range will "
 W !," be written off to the Adjustment Code entered if the following conditions"
 W !," are met:"
 ;end new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;
 ;W !!?5,"1.  The DOS on the bill is within date range entered"  ;BAR*1.8*Manilac ;BAR*1.8*28 CR8349 IHS/SD/SDR HEAT 293633
 W !!?5,"1.  The DOS or Approval ddate on the bill is within date range entered." ;BAR*1.8*28 CR8349 IHS/SD/SDR HEAT 293633
 W !?5,"2.  The A/R Account tied to the bill is in the list specified, "
 W !?5,"3.  The account is NON-BENEFICIARY or BENEFICARY, as selected."
 W !?5,"4.  There is a positive balance left on the bill"
 W !?5,"5.  The Visit Location tied to the bill is in the list specified"
 ;
 S QUIT=0
 W !
 ;IHS/SD/PKD 4/5/11 Manilaq wants to write off Non-Ben as well as BEN
 ;
 S ADJTYP=0 D ADJCAT
 I QUIT D XIT Q
 S (BARQUIT,BENPLUS)=0
 D ASKBEN
 I BARQUIT D XIT Q
 D ASKLOC                                 ;Ask visit location list
 I '+BARLOC D XIT Q
 D ASKDTYP ;ask Date Type ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT 293633
 D ASKDOS                                 ;Ask Date of Service
 Q:'$D(BARDOS)!($G(BARDOS("E"))="")  ;Quit if invalid date entered
 D ASKACCT                                ;Ask A/R Account List
 I '+BARACCT D XIT Q
 D ASKRBACK  ;ask rollback y/n  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 D ASKSESS  ;ask if ufms session for trans  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 D CONTINUE^BARMAWO7  ;Display;ask continue
 I '+BARCONT D XIT Q  ;Don't continue
 ;start new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I +$G(NEWDUZ)'=0 D
 .S BARHDUZ=DUZ
 .S DUZ=NEWDUZ
 ;end new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;
 D LOOPDUZ^BARMAWO7  ;1.8*Manilac PKD 3/28/11
 ;BAR*1.8*Manilac
 ;W !!!,$G(BARCNT)," Bills written off to Auto Write-off ",$G(BAREXPDT)  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;start new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !!!,$G(BARCNT)," Bills written off to Auto Write-off ",$$SDT^BARDUTL(DT),!!  ;display today for when write-off was done
 I +$G(UFMSESID)'=0 D
 .S ERATSTA=0
 .S CHOICE=1
 .S LIST(1)=DUZ_U_UFMSESID
 .D DISPLAYT^BARUFLOG(DUZ,UFMSESID,"VIEW",ERATSTA)
 .S X=$$SETSESS^BARUFUT(DUZ,UFMSESID,"RC")  ;reconcile session
 .S DUZ=BARHDUZ
 ;end new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 D XIT
 Q
 ;*****************
 ;
ASKLOC ;
 ;Ask list of visit locs
 K DIC,X,Y
 S BARLOC=1
 S DIC="^BAR(90052.05,DUZ(2),"
 S DIC(0)="ZAEMQ"
 S DIC("A")="Select LOCATION: ALL// "
 F  D  Q:+Y<0
 .I $D(BAR("LOC")) S DIC("A")="Select Another LOCATION: "
 .D ^DIC
 .Q:+Y<0
 .S BAR("LOC",+Y)=$P(Y,U,2)
 I '$D(BAR("LOC")) D
 .I $D(DUOUT) S BARLOC=0 Q
 .W "ALL"
 K DIC
 W !
 Q
 ;*****************
 ;start new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
ASKDTYP ;EP
 S DIR(0)="S^D:Date of Service;A:Approval Date"
 D ^DIR
 I Y="D" S BAR("DTYP")="E"  ;DOS x-ref
 I Y="A" S BAR("DTYP")="AG"  ;Approval Date x-ref
 Q
 ;end new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;
ASKDOS ;
DATE ; don't force dates 3 years into past  
 ;IHS/SD/PKD 3/28/11 1.8*Manilac
 ;Select date range
 S BARDOS=$$DATE^BARDUTL(1)
 I BARDOS<1 Q
 ;P.OTT 1/2/2014 start new code BAR*1.8*24
 S BARDOS1=BARDOS S Y=BARDOS
 D DD^%DT
 S BARDOS1("E")=Y  ;External start Date
 ;end new code BAR*1.8*24
 ;S BARDOS2=$$DATE^BARDUTL(2)  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 S BARDOS2=$$DATE^BARDUTL(2)_.999999  ;be sure to include last day in write-off with .999999  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 I BARDOS2<1 W ! G DATE
 I BARDOS2<BARDOS D  G DATE
 .W *7
 .W !!,"The END date must not be before the START date.",!
 ;S Y=BARDOS2 ;BAR*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 S Y=$P(BARDOS2,".") ;don't display .999999 when displaying selected date to user  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 ;IHS/SD/TPF 7/29/2011 TOOK OUT RESTRICTION PER MALINAC REQUEST.
 ;I Y>3100100 W *7," Date later than 12/31/2009 is not acceptable at this time" G DATE  ;bar*1.8*22 HEAT53513
 D DD^%DT
 S BARDOS("E")=Y  ;External End Date
 S BARDOS2("E")=Y  ;External End Date ;P.OTT 1/2/2014
 Q
 ;*****************
 ;
ASKACCT ; 
 ;Ask for list of A/R Accounts
 K DIC,X,Y
 W !
 I 'BENPLUS W !,"Selecting ALL A/R accounts will Write off Only BENEFICIARY accounts"
 S BARACCT=1
 S DIC="^BARAC(DUZ(2),"
 S DIC(0)="AEMQ"
 S DIC("A")="Select A/R Account: ALL// "
 F  D  Q:+Y<0
 .I $D(BAR("ACCT")) S DIC("A")="Select Another A/R Account: "
 .D ^DIC
 .Q:+Y<0
 .S BAR("ACCTTYPE")=$$GET1^DIQ(90050.02,+Y,1.08)
 .;IHS/SD/PKD 4/5/11 1.8*MANILAQ 2 chgs:  
 .;1 - see if ok to include NONBEN's  (BENPLUS=1)
 .;2 - change to "NON-BEN" since that's what returned
 .;I BAR("ACCTTYPE")["NON-BENEFICIARY" D  Q
NON .I 'BENPLUS I BAR("ACCTTYPE")["NON-BEN" D  Q  ;BENPLUS=0 if ONLY NON-BEN
 ..W !,"Cannot use this option on Non-Beneficiaries",!
 .S BAR("ACCT",+Y)=$P(Y,U,2)
 I '$D(BAR("ACCT")) D
 .I $D(DUOUT) S BARACCT=0 Q
 .W "ALL"
 K DIC
 ;W !!! ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 Q
 ;*****************
 ;
ASKBEN  ;EP
 ;IHS/SD/PKD 1.8*Manilaq Allow Non-Bens to be written off
 W !,"   ***********   **************   ***************   *************************"
 W !,"Generally, this Write-Off should apply to BENEFICIARY patients ONLY."
 W !,"However, you may specify whether to include Non-Beneficiary patients as well."
 W !,"   ***********   **************   ***************   *************************",!
 K DIR
 S DIR(0)="Y"
 S DIR("A")="Include Non-Beneficiaries?"
 S DIR("B")="No"
 D ^DIR
 K DIR
 S (BARQUIT,BENPLUS)=0
 S:Y=1 BENPLUS=1  ;Include Non-Beneficiaries
 S:Y=U BARQUIT=1
 Q
PAZ ;EP to pause report
 I '$D(IO("Q")),$E(IOST)="C",'$D(IO("S")) D
 .F  W ! Q:$Y+3>IOSL
 .K DIR S DIR(0)="E" D ^DIR K DIR
 Q
 ;*****************
 ;
XIT ;
 ;Clean up
 S DUZ(2)=BARHOLD
 D ^BARVKL0                             ;Kill local variables
 Q
 ;
ADJTYPE  ;EP  IHS/SD/PKD 1.8*20 from BARTRANS
 ;Select ADJ TYPES 
 K BARY("ADJ TYP")
 K DIC
 S DIC=90052.02
 S DIC(0)="AEQX"
 W !
 S DIC("A")="Please select ADJUSTMENT TYPE: "
 D ^DIC
 I $G(DUOUT)=1 S QUIT=1 W !!,"      QUITTING" Q
 I Y<1 W !,"Required Input" G ADJTYPE
 S BARY("ADJ TYP",+Y)=$P(Y,U,2)
 I '$D(BARY("ADJ TYP")) W !,"Required Input" G ADJTYPE
 I $P(^BARTBL(+Y,0),U,3)'="WO" W !,"Please enter a valid Write-Off code" G ADJTYPE
 S ADJTYPE=+Y
 K DIC
 W !
 Q
ADJCAT ;choices
 K DIC,DIE,DR,DA
 S DIC(0)="AEZ"
 S DIC=90052.01
 ;W !!,"     Select WRITE-OFF (3) or NON-PAYMENT (4), please"  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 W !!,"     Select WRITE-OFF(3), NON-PAYMENT(4), or PAYMENT CREDIT(20) please"  ;include pymt credit as selectable option  ;bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
 S DIC("S")="I "",3,4,20,""[("",""_Y_"","")"
 S DIC("W")="N C,DINAME W ""  "" W ""   "",$P(^(0),U,2)"
 D ^DIC
 S BARCAT=""
 I $G(DUOUT)=1 S QUIT=1 W !!,"      QUITTING" Q
 I Y>0 S BARCAT=+Y,BARY("ADJ CAT",BARCAT)=Y(0)
 E  W !!,"Required field, Please select" G ADJCAT
ADJTYP K DIC,DIE,DR,DA
 S DIC(0)="AEQSZ"
 W !!,"     Now select an Adjustment Type Code",!
 S DIC=90052.02  ;^BARTBL - Adj Type Codes for NonPayment or WriteOff
 K ADJTYP S ADJTYP=","
 S TYP=0 F  S TYP=$O(^BARTBL("D",BARCAT,TYP)) Q:'TYP  S ADJTYP=ADJTYP_TYP_","
 N Q S Q=""""
 S DIC("S")="I "_Q_ADJTYP_Q_"[("",""_Y_"","")"
 S DIC("W")="N C,DINAME W ""  "" W ""   "",$P(^(0),U,2)"
 D ^DIC
 I $G(DUOUT)=1 S QUIT=1 W !!,"      QUITTING" Q
 I $P(Y(0),U,2)'=BARCAT W !!,*7,?10,"*** Problem w/ dictionary, this is not an AdjCat ",BARY("ADJ CAT",BARCAT) G ADJTYP
 K ADJTYP
 K DIC
 I +Y>0 S ADJTYPE=+Y
 E  G ADJTYP
 S BARY("ADJ TYP",ADJTYPE)=$P(^BARTBL(ADJTYPE,0),U,1)
 Q
 ;start new bar*1.8*28 CR8349 IHS/SD/SDR HEAT293633
ASKRBACK ;EP
 ;ask user if they wish to rollback bills after posting
 K DIR
 S DIR(0)="Y"
 S DIR("A")="Rollback bills after they have been written off"
 S DIR("B")="No"
 D ^DIR
 K DIR
 S (BARQUIT,BARRBACK)=0
 S:Y=1 BARRBACK=1
 S:Y=U BARQUIT=1
 Q
ASKSESS ;EP
 ;Open new cashiering session to capture trans; then ask user if they want to transmit/ignore them
 K UFMSESID
 S BARUXMIT=0
 S BARUSESS=0
 K DIR
 S DIR(0)="Y"
 S DIR("A")="Open cashiering session to capture transactions"
 S DIR("B")="Yes"
 D ^DIR
 K DIR
 S BARQUIT=0
 S:Y=1 BARUSESS=1
 S:Y=U BARQUIT=1
 Q:BARUSESS'=1
 ;
 S (NEWDUZ,NEWSESS,NEWUSRNM)=""
 S REJECT=0
 K DIC,DIR,DIE,DA,DR
 S DIC("A")="Open new cashiering session for user: "
 S DIC="^BARSESS("_DUZ(2)_","
 S DIC(0)="AEQML"
 D ^DIC
 I Y<0 S ESC=X Q
 S NEWDUZ=+Y
 K DIC,DIE,DR,DA,DIR
 D NOW^%DTC
 S SESSID=%
 S DA(1)=NEWDUZ
 S X=SESSID
 S DIC(0)="L"
 S DIC("P")=$P(^DD(90057,1101,0),U,2)
 S DIC="^BARSESS(DUZ(2),"_DA(1)_",11,"      D ^DIC
 I Y<0 W !!,"SESSION COULD NOT BE CREATED!!" H 2 G ASKSESS
 S NEWSESS=+Y
 S X=$$SETSESS^BARUFUT(NEWDUZ,$P(Y,U,2),"O")  ;SET OPEN STATUS
 I X=0 W !!,"STATUS COULD NOT BE SET!!" H 2 G ASKSESS
 S NEWUSRNM=$P($G(^VA(200,NEWDUZ,0)),U)
 W !!!,"A NEW SESSION HAS BEEN OPENED FOR "_NEWUSRNM_" TO BE USED FOR WRITEOFF TRANSACTIONS"
 W !!,"SESSION: ",NEWSESS,?30,"STATUS: ",$$CURSTAT^BARUFUT(NEWDUZ,NEWSESS,"E")
 W !
 S UFMSESID=NEWSESS
 ;
 K DIR
 S DIR(0)="Y"
 S DIR("A")="Should transactions be sent to UFMS"
 D ^DIR
 K DIR
 S (BARQUIT,BARUXMIT)=0
 S:Y=1 BARUXMIT=1
 S:Y=U BARQUIT=1
 Q
 ;EOR - IHS/DIT/CPC 1.8*28
