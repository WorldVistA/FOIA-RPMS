AMERPCC  ; IHS/OIT/SCR - PRIMARY ROUTINE FOR PCC VISIT CREATION AND EDITING 
 ;;3.0;ER VISIT SYSTEM;**1,2,5,6,8,10**;MAR 03, 2009;Build 23
 ;
 ; PCC vists are created with a call that includes an interface to the scheduling package
 ; IF a 
 ;   clinic code has been set up in ERS that identifies the Emergency 
 ;   Clinic for the user's current logon location (DUZ(2)) has been identified
 ;   this visit is scheduled and can be "viewed" through EHR
 ;
 ; ELSE
 ;   the visit is created and updated entirely through the ERS interface and is not "viewable" to EHR
 ;
 ;AMER*3.0*6;Turned off all V POV updates
 ;
 ; CURRENTLY: Only V POV and V PROVIDER support is provided by the ERS interface
 ; 
VISIT(AMERPAT,AMERDATE) ; EP from AMER1 when patient is admitted W/O PIMS interface CHEKIN^AMERBSDU 
 ; If site has indicated a CLINIC in paramaters, a scheduled walk-in visit is created
 ;   and a PCC VISIT record is created by PIMS SCHEDULING (BSDU) pacage
 ; If not a PCC VISIT record created by ERS PACKAGE
 ; 1. Look for VISIT created at checkin
 ; 2. Create a VISIT if none exists for this patient on this date from this location
 ; 3. Return VISIT IEN if successful, 0 otherwise
 N IN,AMERVSIT,OUT,X,AMERVDR,AMEROPT,CLIN,HLOC
 ;
 ;GDIT/HS/BEE 05/10/2018;CR#10213 - AMER*3.0*10 - Pull default ER clinic and use
 S CLIN=$$GET1^DIQ(9009082.5,DUZ(2)_",",.06,"I")
 ;
 ;If no clinic, get first one with a 30 mnemonic
 I CLIN="" S CLIN=$O(^AMER(3,"B",30,""))
 ;
 S CLIN=$$GCLIN^AMERBSD(CLIN)
 S HLOC=$P(CLIN,U,2),CLIN=$P(CLIN,U)
 ;
 I HLOC="" D  Q ""
 . W !,"SITE PARAMETERS have not been set up in the ERS PARAMETER option"
 . W !,"No entry for EMERGENCY MEDICINE could be located"
 ;
 ;Set up for BSD
 S IN("HOS LOC")=HLOC
 S IN("CLINIC CODE")=CLIN
 ;
 ;End of CR#10213 Changes
 ;
 S (AMERVSIT,AMERVDR)=""
 S IN("PAT")=AMERPAT
 S IN("VISIT DATE")=AMERDATE
 S IN("SITE")=$G(DUZ(2))
 ;To determine "visit type" for this visit, look in "PCC MASTER CONTROL" file
 ;get the "type of visit" that is set there
 S IN("VISIT TYPE")=$P($G(^APCCCTRL(DUZ(2),0)),U,4)
 S IN("USR")=DUZ
 ;GDIT/HS/BEE 05/10/2018;CR#10213 - AMER*3.0*10 - Now being set above
 ;S IN("HOS LOC")=$G(^AMER(2.5,DUZ(2),"SD"))
 S:IN("HOS LOC")'="" IN("APPT DATE")=AMERDATE  ; Setting IN("APPT DATE") will create an appoinment for this time
 S IN("SRV CAT")="A"  ; ER VISITS are "ambulatory"
 S IN("TIME RANGE")=3  ; Only find a visit for a time that is close to time or ER VISIT
 ;
 D GETVISIT^APCDAPI4(.IN,.OUT)
 I $P(OUT(0),U,1)=0 D
 .D EN^DDIOL("NO VISIT FOUND OR CREATED!!!","","!!")
 .S AMERVSIT=-1_"^"_$P(OUT(0),U,2)
 .Q
 Q:+AMERVSIT<0 AMERVSIT
 S AMERTEMP=0
 I $P(OUT(0),U,1)>1 D
 .F  S AMERTEMP=$O(OUT(AMERTEMP)) Q:AMERTEMP=""  D
 ..D EN^DDIOL("Multiple VISIT matches FOUND: "_AMERTEMP,"","!!")
 ..S AMERVSIT=AMERTEMP
 ..Q
 .Q
 I $P(OUT(0),U,1)=1 S AMERVSIT=$O(OUT(AMERTEMP))
 ; IF "Option use to create" is blank (no PIMS interface) update it with DIE call
 I AMERVSIT>0 D
 .Q:$$GETVOPTN^AMERVSIT(AMERVSIT)'=""
 .S AMEROPT=$$GETOPIEN^AMERVSIT("AMER IHS PCC LINK")
 .S:+AMEROPT>0 AMERVDR=".24///"_+AMEROPT
 .D:AMERVDR'="" VSITDIE^AMERVSIT(AMERVSIT,AMERVDR)
 .Q
 Q AMERVSIT
 ;
EXISTING(AMERDFN) ; EP FROM TRGSET^AMERD
 ; RETURNS VISIT IEN for patient that has not yet been discharged
 N IN,OUT,DIC,Y,AMERTEMP,AMERVSIT
 S DIC="^AMERADM(",X=AMERDFN,DIC(0)="NXZ"
 D ^DIC
 K DIC
 I Y<0 Q -1
 S AMERVSIT=$P($G(^AMERADM(AMERDFN,0)),U,3)
 Q AMERVSIT
SCHEDULD(AMERPAT,AMERDATE,AMERSCHD) ; EP from ERCHCKIN^AMERBDSU
 ; Called when user has selected to check-in ER patient for scheduled visit
 ; INPUT: AMERPAT - ien of PATIENT
 ;        AMERDATE - the date and time of ER ADMISSION
 ;        AMERSCHD - the date and time of scheduled ER APPOINTMENT
 ;
 ; Return VISIT IEN if check-in is successful, 0 otherwise
 ;
 N IN,AMERVSIT,OUT,X,AMERDIFF
 S AMERVSIT=""
 S AMERDIFF=AMERDATE-AMERSCHD
 I AMERDIFF<0 S AMERDIFF=+AMERDIFF
 S IN("PAT")=AMERPAT
 S IN("VISIT DATE")=AMERDATE
 S IN("SITE")=$G(DUZ(2))
 ;know the appointment date and want to check-in for this visit
 S IN("APPT DATE")=AMERSCHD
 ; To determine "visit type" for this visit, look in the "PCC MASTER CONTROL" file
 ; and get the "type of visit" that is set there
 S IN("VISIT TYPE")=$P($G(^APCCCTRL(DUZ(2),0)),U,4)
 S IN("USR")=DUZ
 S IN("HOS LOC")=$G(^AMER(2.5,DUZ(2),"SD"))
 S IN("SRV CAT")="A"  ; ER VISITS are "ambulatory"
 S IN("TIME RANGE")=AMERDIFF+10  ; LOOK FOR A VISIT AROUND DIFFERENCE BETWEEN SCHEDULED AND VISIT TIME
 D GETVISIT^APCDAPI4(.IN,.OUT)
 I $P(OUT(0),U,1)=0 D
 .D EN^DDIOL("NO VISIT FOUND OR CREATED!!!","","!!")
 .S AMERVSIT=-1_"^"_$P(OUT(0),U,2)
 .Q
 Q:+AMERVSIT<0 AMERVSIT
 S AMERTEMP=0
 I $P(OUT(0),U,1)>1 D
 .F  S AMERTEMP=$O(OUT(AMERTEMP)) Q:AMERTEMP=""  D
 ..D EN^DDIOL("Multiple VISIT matches FOUND: "_AMERTEMP,"","!!")
 ..S AMERVSIT=AMERTEMP
 ..Q
 .Q
 I $P(OUT(0),U,1)=1 S AMERVSIT=$O(OUT(AMERTEMP))
 Q AMERVSIT
 ;
FINDVSIT(AMERDA)  ; EP FROM AMEREDTA,AMERVSIT,AMERSAV
 ; AMERDA-VISIT IEN FOR THIS ER VISIT
 ;
 ; RETURNS VISIT IEN for patient that has been discharged from ER IF SUCCESSFUL
 ;   -1 IF NOT
 N IN,OUT,DIC,Y,AMERTEMP,AMERVSIT
 N AMERDFN,AMERDR
 S AMERVSIT=$P($G(^AMERVSIT(AMERDA,0)),U,3)
 I AMERVSIT="" S AMERVSIT=-1
 Q AMERVSIT
 ;
VPROVTRG(AMERDFN,AMERPCC)  ; EP From TRGSET^AMERD
 ; Updates VISIT information when entered through TRI option before discharge
 ; Update CLINIC code if needed in VISIT entry
 ; and add ADMITTING providers to V PROVIDER before discharge
 ; AMERDFN:patient ien
 ; AMERPCC:VISIT ien
 N AMERPROV,AMERPIEN,AMERTIME,DIC,Y,AMERVVAL,AMERCLNC,AMERVDR
 S AMERVDR=""
 ; UPDATE PRESENTING COMPLAINT IF IT IS NOT THE SAME AS WHAT IS ALREADY IN VISIT FILE
 S DIC="^AMERADM(",X=AMERDFN,DIC(0)="NXZ"
 D ^DIC
 K DIC
 Q:Y<0
 S AMERVVAL=$G(^AUPNVSIT(AMERPCC,14))
 S AMERCOMP=$P($G(Y(0)),U,10) ; PRESENTING COMPLAINT
 I AMERVVAL'=AMERCOMP S AMERVDR="1401///"_AMERCOMP
 ;GDIT/HS/BEE 05/10/2018;CR#10213 - AMER*3.0*10 - Clinic (and Location) now set in AMER2A
 ;UPDATE CLINIC IF IT IS NOT THE SAME AS WHAT IS ALREADY THERE
 ;S AMERVVAL=$P($G(^AUPNVSIT(AMERPCC,0)),U,8)
 ;S:AMERVVAL>0 AMERVVAL=$P($G(^DIC(40.7,AMERVVAL,0)),U,1)
 ;S AMERCLNC=$P($G(^TMP("AMER",$J,2,20)),U,2)
 ;I (AMERCLNC'="URGENT CARE") S AMERCLNC="EMERGENCY MEDICINE"
 ;I AMERVVAL'=AMERCLNC S AMERVDR=$S(AMERVDR'="":AMERVDR_";",1:""),AMERVDR=AMERVDR_".08///"_AMERCLNC
 ; NOW ADD V PROVIDER INFO
 S AMERPIEN=$P($G(Y(0)),U,19)  ; TRIAGE NURSE
 S AMERTIME=$P($G(Y(0)),U,21)  ; TRIAGE TIME
 I AMERTIME="" S AMERTIME=$P($G(Y(0)),U,2)  ; Use admission time if not supplied
 ;IHS/OIT/SCR 12/16/08 - IF THE PROVIDER THAT WE ARE ABOUT TO ADD IS ALREADY ASSOCIATED TO THE VISIT THROUGH EHR, DON'T ADD AGAIN
 I '$$PRVTHERE^AMERPCC1(AMERPIEN,AMERPCC) D
 .I $$ADDPRV^AMERPCC1(AMERPCC,AMERPIEN,AMERTIME,AMERDFN,"S","")<1 D EN^DDIOL("UNABLE TO ADD V PROVIDER FOR TRIAGE NURSE","","!!") ; TRIAGE NURSE
 .Q
 ; IF CLINIC OR PRESENTING COMPLAINT HAS BEEN MODIFIED, UPDATE IT THROUGH DIE
 D:AMERVDR'="" VSITDIE^AMERVSIT(AMERPCC,AMERVDR)
 Q
VISITIN(AMERDFN,AMERPCC)  ; EP From SAVE^AMER0
 ; Updates exisiting VISIT with admit information
 ; AMERDFN - PATIENT IEN TO IDENTIFY PATIENT IN ER ADMISSIONS FILE
 ; AMERPCC - PCC VISIT IEN FOR UPDATING VISIT FILE CHIEF COMPLAINT
 N DIC,Y,AMERCOMP,AMERVDR
 S DIC="^AMERADM(",X=AMERDFN,DIC(0)="NXZ"
 D ^DIC
 K DIC
 Q:Y<0
 ;AMER*3.0*8;Pull from new field
 ;S AMERCOMP=$P($G(Y(0)),U,10) ; PRESENTING COMPLAINT
 S AMERCOMP=$G(^AMERADM(AMERDFN,23)) ; PRESENTING COMPLAINT
 S AMERVDR="1401///"_AMERCOMP
 D VSITDIE^AMERVSIT(AMERPCC,AMERVDR)
 ;
 ;AMER*3*5;Added auditing call
 ;D LOG^AMERBUSA("P","E","AMERPCC","AMER: Updated ER visit presenting complaint ("_AMERDFN_")",AMERDFN)
 ;
 Q
SYNCHPCC(AMERDA) ; EP from UPDATE^AMERSAV, AMEREDPC, AND AMEREDTA
 ; This routine will:
 ; 0. Get the current patient DOB and chart number from patient reg APIs and use them to update the ER VISIT file if different
 ; 1. Identify an exisisting visit or make a new one
 ; 2. Update VISIT entry with 
 ;  2a."CHIEF COMPLAINT" if different from ER VISIT Presenting Complaint
 ;  2b."CHECKOUT DAY AND TIME" if different from ER VISIT departure time
 ;  2C."OPTION USED TO CREATE" to "AMER IHS PCC LINK" if empty
 ;
 ; 3. Look for V PROVIDER entries and be sure identified  "admitting" providers are in 
 ;   the ER VISIT file and that the times are the same
 ;    3a. Add admitting providers to V PROVIDER if they are not there
 ;    3b. Remove V PROVIDER entries if provider is not identified as admitting provider in ER VISIT file
 ;   3c. Modify V PROVIDER times if admitting provider time is not the same
 ; 
 ; 4. Add V PROVIDER entries for discharge providers and ER CONSULANTS
 ;AMER*3.0*6;No longer add V POV entries
 ; 5. Add V POV entries for each valid ICD9 DX code in ER VISIT
 ;
 ; RETURNS VISIT IEN IF SUCCESFUL, 0 IF NOT
 ;
 N AMERCLN,AMERPCC,AMRSTRG,AMERQUIT,AMERDATE,AMERDEPT,AMERPAT,AMERDOC
 N AMEREVAL,AMERVVAL,AMERETIM,AMERVTIM,AMERFND,AMERVIEN,AMERVDR,AMERNEW
 N AMERVOPT,AMERPNTR,AMERDR,AMERDOB,AMERHRN,AMERETIM,AMERVTIM
 Q:$G(^AMERVSIT(AMERDA,0))="" 0  ; DON'T TRY TO SYNCH A VISIT UP IF THE VISIT DOESN'T EXIST
 ; The value in the ER VISIT, the value in the VISIT file, the associated ER VISIT time and the associated VISIT time 
 S (AMERCLN,AMERDATE,AMERPAT,AMERVDR)=""
 S AMERDATE=$P($G(^AMERVSIT(AMERDA,0)),U,1) ; AMERDATE IS THE TIME OF VISIT
 I AMERDATE="" Q 0
 S AMERPAT=$P($G(^AMERVSIT(AMERDA,0)),U,2)  ; AMERPAT IS THE IEN OF PATIENT
 I AMERPAT="" Q 0
 ;IHS/OIT/SCR 01/09/09 - NOW LOOK AT PATIENT REG INFO AND UPDATE ERS IF NEEDED
 D SYNCHERP^AMERERS(AMERPAT,AMERDA)
 I $G(^AMERVSIT(AMERDA,6))'="" S AMERDEPT=$P(^AMERVSIT(AMERDA,6),U,2)
 S AMERPCC=$$FINDVSIT^AMERPCC(AMERDA)
 I AMERPCC<0 Q 0     ;IHS/OIT/SCR 05/07/09 patch 1
 ;
 ;GDIT/HS/BEE 05/10/2018;CR#10213 - AMER*3.0*10 - Sync clinic and hospital location 
 D SYNCCL^AMER2A(AMERDA,AMERPCC)
 ;
 ; Compare ER "Presenting Complaint" to VISIT "Chief Complaint"
 S AMEREVAL=$G(^AMERVSIT(AMERDA,1))
 S AMERVVAL=$G(^AUPNVSIT(AMERPCC,14))
 S AMERVVAL=$TR(AMERVVAL,";","~")  ;IHS/OIT/SCR 05/07/09 patch 1
 I AMERVVAL="" S AMERVDR=$S(AMERVDR'="":AMERVDR_";",1:""),AMERVDR=AMERVDR_"1401///"_AMEREVAL
 ELSE  I (AMEREVAL'=AMERVVAL) D
 .;IHS/OIT/SCR 12/18 - if the values are different, user needs to choose
 .D EN^DDIOL("**The value for CHIEF COMPLAINT in the PCC visit file is different from ERS PRESENTING COMPLAINT**","","!!?3")
 .D EN^DDIOL("PCC CHIEF COMPLAINT: "_$G(^AUPNVSIT(AMERPCC,14)),"","!?3")
 .D EN^DDIOL("ERS PRESENTING COMPLAINT: "_AMEREVAL,"","!?3")
 .S DIR(0)="SO^1:Correct PCC data using ERS data;2:Correct ERS data using PCC data"
 .S DIR("A")="Which would you like to do"
 .D ^DIR K DIR
 .S AMERANS=+Y
 .I Y=""!(Y="^")!(AMERANS=2) D
 ..;KEEP THE PCC VISIT INFO - PUT IT INTO THE AMER VISIT
 ..S AMERDR="1////"_AMERVVAL
 ..D DIE^AMEREDIT(AMERDA,AMERDR)
 ..Q
 .I AMERANS=1 D
 ..;UPDATE THE PCC VISIT
 ..S AMERVDR=$S(AMERVDR'="":AMERVDR_";",1:""),AMERVDR=AMERVDR_"1401///"_AMEREVAL
 ..Q
 .Q
 ; GET THE DEPARTURE OUT TIME FROM VISIT AND COMPARE TO CHECK OUT TIME IN ER VISIT
 S AMEREVAL=$P($G(^AMERVSIT(AMERDA,6)),U,2)  ; AMERDEPT IS DEPARTURE TIME
 S AMERVVAL=$P(^AUPNVSIT(AMERPCC,0),"^",18)  ;CHECKOUT TIME
 I (AMEREVAL'=AMERVVAL) D
  .I AMERVVAL'="" D
  ..;IHS/OIT/SCR 12/18 - if the values are different, user needs to choose
  ..S AMERVTIM=$$EDDISPL^AMEREDAU(AMERVVAL,"D")
  ..S AMERETIM=$$EDDISPL^AMEREDAU(AMEREVAL,"D")
  ..D EN^DDIOL("**The value for DEPARTURE DATE in the PCC visit file is different from ERS CHECKOUT DAY**","","!!?3")
  ..D EN^DDIOL("PCC VISIT DEPARTURE DATE: "_AMERVTIM,"","!?3")
  ..D EN^DDIOL("ERS CHECKOUT DATE: "_AMERETIM,"","!?3")
  ..S DIR(0)="SO^1:Correct PCC data using ERS data;2:Correct ERS data using PCC data"
  ..S DIR("A")="Which would you like to do"
  ..D ^DIR K DIR
  ..S AMERANS=+Y
  ..I Y=""!(Y="^")!(AMERANS=2) D
  ...;KEEP THE PCC VISIT INFO - PUT IT INTO THE AMER VISIT
  ...S AMERDR="6.2////"_AMERVVAL
  ...D DIE^AMEREDIT(AMERDA,AMERDR)
  ...Q
  ..I AMERANS=1 D
  ...;UPDATE THE PCC VISIT WITH WHAT USER JUST ENTERED
  ...S AMERVDR=$S(AMERVDR'="":AMERVDR_";",1:""),AMERVDR=AMERVDR_".18///"_AMEREVAL  ; patch 2
  ...Q
  ..Q
  .E  S AMERVDR=$S(AMERVDR'="":AMERVDR_";",1:""),AMERVDR=AMERVDR_".18////"_AMEREVAL
  .Q
 ; GET OPTION USED TO CREATE VISIT - IF NOT THERE, IDENTIFY "AMER IHS PCC LINK" OPTION
 S AMERVVAL=$P($G(^AUPNVSIT(AMERPCC,0)),U,24) ; IEN OF OPTION THAT CREATED VISIT
 I AMERVVAL="" S AMERVDR=$S(AMERVDR'="":AMERVDR_";",1:""),AMERVDR=AMERVDR_".24///"_$$GETOPIEN^AMERVSIT("AMER IHS PCC LINK")
 D:AMERVDR'="" VSITDIE^AMERVSIT(AMERPCC,AMERVDR) ; update VISIT file with identified changes
 K AMERVVAL,AMEREVAL,AMERVDR
 D SYNCHPRV^AMERPCC1(AMERDA,AMERPCC,AMERPAT)
 S AMERDOC=$P($G(^AMERVSIT(AMERDA,6)),U,3)
 ;
 ;AMER*3.0*6;No longer update V POV
 ;D SYNCHPOV^AMERPCC2(AMERDA,AMERPCC,AMERPAT,AMERDATE,AMERDOC,AMERCLN)
 Q
 ;
SAVPCCA(AMERPCC,AMERDFN) ; EP FROM AMER WHEN AN ADMISSION AND PCC VISIT HAS JUST BEEN CREATED
 ; UPDATES THE ER ADMISSION FILE WITH THE PCC VISIT IEN ASSOCIATED WITH IT
 ; INPUT AMERPCC - THE IEN OF THE PCC VISIT
 ;       AMERDFN - THE IEN OF THE PATIENT 
 N DIE,DA,DR
 S DR="1.1////"_AMERPCC
 S DIE="^AMERADM(",DA=AMERDFN
 L +^FILE(9009081):2
 I $T D
 .D ^DIE
 .L -^FILE(9009081)
 .Q
 E  D EN^DDIOL("Unable to update ER ADMISSION file","","!!")
 Q
SAVPCCO(AMERPCC,AMERDA) ; EP FROM AMER CHANGPAT^AMERVSIT
 ; WHEN AN ADMISSION AND PCC VISIT HAS JUST BEEN CREATED OR WHEN PATIENT IS BEING CHANGED AND A NEW PCC VISIT IS CREATED
 ; UPDATES THE ER ADMISSION FILE WITH THE PCC VISIT IEN ASSOCIATED TO IT
 ; INPUT AMERPCC - THE IEN OF THE PCC VISIT FILE ENTRY
 ;       AMERDATE - THE DATE/TIME OF ADMISSION
 N DIE,DA,DR
 S DR=".03////"_AMERPCC
 S DIE="^AMERVSIT(",DA=AMERDA
 L +^FILE(9009080):2
 I $T D
 .D ^DIE
 .L -^FILE(9009080)
 .Q
 E  D EN^DDIOL("Unable to update ER VISIT file","","!!")
 Q
