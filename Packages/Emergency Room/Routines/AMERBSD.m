AMERBSD ;GDIT/HS/BEE - AMER - BSD Appointment Scheduling/Clinic and HL set ; 07 Oct 2013  11:33 AM
 ;;3.0;ER VISIT SYSTEM;**10**;MAR 03, 2009;Build 23
 ;
CKHLOC(VIEN,ECLIN) ;Handle possible hospital location changes
 ;
 ;If the patient changed to a new ER Clinic, update PCC with the new information.  They may
 ;also need a new appointment created so they can be looked up from that location.
 ;
 ;Make call using: S ERR=$$CKHLOC^AMERBSD(VIEN,ECLIN)
 ;
 ;Input variables:
 ;VIEN - Visit IEN
 ;ECLIN - ER Clinic IEN (Pointer to ER OPTIONS)
 ;
 ;Output: error status and message
 ; 0 or null - Success
 ; 1^Error message  - Failure
 ;
 NEW BSDATA,%,NAPT,ERR,CLHL,NCLN,NHLOC,OHLOC,HLUPD,EXEC,X,Y
 ;
 ;Input validation
 I '$G(VIEN) Q 1_U_"Missing VIEN"
 I '$D(^AUPNVSIT(VIEN,0)) Q 1_U_"Visit not found"
 I '$G(ECLIN) Q 1_U_"Missing ER Clinic"
 I '$D(^AMER(3,ECLIN,0)) Q 1_U_"ER Clinic not found in ER OPTIONS"
 I '$D(^VA(200,+$G(DUZ),0)) Q 1_U_"User Who Canceled Appt Error: "_$G(DUZ)
 ;
 ;Get patient
 S BSDATA("PAT")=$$GET1^DIQ(9000010,VIEN_",",.05,"I")
 I '$D(^DPT(+$G(BSDATA("PAT")),0)) Q 1_U_"Patient not on file: "_$G(BSDATA("PAT"))
 ;
 ;Retrieve original (current) hospital location
 S OHLOC=$$GET1^DIQ(9000010,VIEN_",",.22,"I")
 ;
 ;Retrieve new clinic code and hospital location
 S CLHL=$$GCLIN(ECLIN)
 S NCLN=$P(CLHL,U)
 S NHLOC=$P(CLHL,U,2)
 ;
 ;First update the PCC clinic and hospital location
 S HLUPD(9000010,VIEN_",",.08)=$S(NCLN]"":NCLN,1:"@")
 S HLUPD(9000010,VIEN_",",.22)=$S(NHLOC]"":NHLOC,1:"@")
 D FILE^DIE("","HLUPD","ERROR")
 ;
 ;If hospital location has not changed - quit
 I NHLOC=OHLOC Q 0
 ;
 ;Since hospital location has changed - MAY need to create a new appointment for that location
 ;Call BSD routine if delivered. Otherwise use AMER version
 S X="BSDAPIER" X ^%ZOSF("TEST") I $T S EXEC="S ERR=$$ERAPT^BSDAPIER(VIEN,NHLOC)" X EXEC Q ERR
 S ERR=$$ERAPT(VIEN,NHLOC)
 ;
 Q ERR
 ;
ERAPT(VIEN,HLOC) ;EP - Handle ER (AMER/BEDD) Hospital Location Change
 ;
 ;Check for, and create if necessary an appointment for specified visit and location
 ;
 ;Input variables:
 ;VIEN - Visit IEN
 ;HLOC - Hospital Location (Pointer to file 44)
 ;
 ;Output: error status and message
 ; 0 or null - Success
 ; 1^Error message  - Failure
 ;
 NEW BSDATA,%,NAPT,ERR,AIEN,BSDVSTN
 ;
 ;Input validation
 I '$G(VIEN) Q 1_U_"Missing VIEN"
 I '$D(^AUPNVSIT(VIEN,0)) Q 1_U_"Visit not found"
 I '$G(HLOC) Q 1_U_"Missing Hospital Location"
 I '$D(^SC(HLOC,0)) Q 1_U_"Hospital Location not found"
 I '$D(^VA(200,+$G(DUZ),0)) Q 1_U_"User Who Canceled Appt Error: "_$G(DUZ)
 ;
 ;Get patient
 S BSDATA("PAT")=$$GET1^DIQ(9000010,VIEN_",",.05,"I")
 I '$D(^DPT(+$G(BSDATA("PAT")),0)) Q 1_U_"Patient not on file: "_$G(BSDATA("PAT"))
 ;
 ;Get admit date/time
 S BSDATA("ADT")=$E($$GET1^DIQ(9000010,VIEN_",",.01,"I"),1,12)
 ;
 ;Set other required fields
 S BSDATA("APPT DATE")=BSDATA("ADT")
 S BSDATA("CLINIC CODE")=$$GET1^DIQ(44,HLOC_",",8,"I")
 S BSDATA("CLN")=HLOC
 S BSDATA("HOS LOC")=HLOC
 S BSDATA("LEN")=15
 S BSDATA("SITE")=DUZ(2)
 S BSDATA("SRV CAT")="I"
 S BSDATA("TIME RANGE")=0
 S BSDATA("TYP")=4
 S BSDATA("USR")=DUZ
 S BSDATA("VISIT DATE")=$$GET1^DIQ(9000010,VIEN_",",.01,"I")
 S BSDATA("VISIT TYPE")="I"
 ;
 ;First look for existing appointment clinic/date/patient
 S AIEN=$$SCIEN^BSDU2(BSDATA("PAT"),BSDATA("CLN"),BSDATA("ADT"))
 ;
 ;If existing found, update file 2 and quit
 I AIEN S ERR=$$UPDT2(.BSDATA,VIEN,0) Q ERR
 ;
 ;New appointment needed - Create it
 S ERR=$$MAKE(.BSDATA,VIEN) Q:ERR ERR
 ;
 ;Set variables used by checkin call
 S BSDATA("CDT")=BSDATA("ADT")
 S BSDATA("CC")=$G(BSDATA("CLINIC CODE"))
 S BSDATA("PRV")=""
 S BSDATA("VIEN")=VIEN
 ;
 ;Check in appt
 S ERR=$$CHECKIN(.BSDATA) Q:ERR ERR
 ;
 Q 0
 ;
UPDT2(BSDR,VIEN,SKP21) ;Update file 2 appointment entry to point to existing matching appointment
 ;
 NEW ERR,DA,IENS,DPTUPD,OE,OEIEN
 ;
 ;Verify appointment entry exists in DPT
 I '$D(^DPT(BSDR("PAT"),"S",BSDR("ADT"),0)) Q "1^Could not locate DPT appointment"
 ;
 ;Locate outpatient encounter entry
 S (OE,OEIEN)="" F  S OE=$O(^SCE("AVSIT",VIEN,OE)) Q:'OE  D  Q:OEIEN
 . ;
 . ;Check date
 . I $$GET1^DIQ(409.68,OE_",",.01,"I")'=BSDR("ADT") Q
 . ;
 . ;Check location
 . I $$GET1^DIQ(409.68,OE_",",.04,"I")'=BSDR("HOS LOC") Q
 . ;
 . ;Found match
 . S OEIEN=OE
 ;
 ;If appointment for clinic exists but cannot locate SCE pointer - quit
 I '$G(SKP21),'OEIEN Q "1^Could not locate SCE pointer"
 ;
 ;Update CLINIC and OUTPATIENT ENCOUNTER fields
 S DA(1)=BSDR("PAT"),DA=BSDR("ADT"),IENS=$$IENS^DILF(.DA)
 S DPTUPD(2.98,IENS,.01)=BSDR("CLN")
 S DPTUPD(2.98,IENS,21)=$S(OEIEN]"":OEIEN,1:"@")
 S ERR=0 D UPDATE^DIE("","DPTUPD","ERR")
 I $G(ERR(1))]"" S ERR=ERR(1)
 ;
 Q ERR
 ;
MAKE(BSDR,VIEN) ;Existing Visit changing ER Hospital Location - Make a new appointment
 ;
 ;Adapted from BSDAPI
 ;
 ; Make call using: S ERR=$$MAKE(.ARRAY)
 ;
 ; Input Array -
 ; BSDR("PAT") = ien of patient in file 2
 ; BSDR("CLN") = ien of clinic in file 44
 ; BSDR("TYP") = 3 for scheduled appts, 4 for walkins
 ; BSDR("ADT") = appointment date and time
 ; BSDR("LEN") = appointment length in minutes (5-120)
 ; BSDR("USR") = user who made appt
 ;
 ;Output: error status and message
 ;   = 0 or null:  everything okay
 ;   = 1^message:  error and reason
 ;
 NEW BSDXERR,Y,ERR
 ;
 ;Check if appointment present for that time in file 2, if so update it
 ;If not present, add appt to file 2 and appt dt/time to 9000010
 I $D(^DPT(BSDR("PAT"),"S",BSDR("ADT"),0)) S ERR=$$UPDT2(.BSDR,VIEN,1) I 1 Q:ERR ERR
 E  D  I $G(BSDXERR(1)) Q 1_U_"FileMan add to DPT error: Patient="_BSDR("PAT")_" Appt="_BSDR("ADT")
 . N BSDXFDA,BSDXIENS,BSDXMSG
 . S BSDXIENS="?+2,"_BSDR("PAT")_","
 . S BSDXIENS(2)=BSDR("ADT")
 . S BSDXFDA(2.98,BSDXIENS,.01)=BSDR("CLN")
 . S BSDXFDA(2.98,BSDXIENS,"9")=BSDR("TYP")
 . S BSDXFDA(2.98,BSDXIENS,"9.5")=9
 . S BSDXFDA(2.98,BSDXIENS,"20")=$$NOW^XLFDT
 . S BSDXFDA(9000010,VIEN_",",.26)=BSDR("ADT")
 . D UPDATE^DIE("","BSDXFDA","BSDXIENS","BSDXERR(1)")
 ;
 ;Add new appt to file 44
 I '$D(^SC(BSDR("CLN"),"S",0)) S ^SC(BSDR("CLN"),"S",0)="^44.001DA^^"
 I '$D(^SC(BSDR("CLN"),"S",BSDR("ADT"),0)) D  I Y<1 Q 1_U_"Error adding date to file 44: Clinic="_BSDR("CLN")_" Date="_BSDR("ADT")
 . NEW DIC,DA,X,DINUM,DLAYGO
 . S DIC="^SC("_BSDR("CLN")_",""S"",",DA(1)=BSDR("CLN"),(X,DINUM)=BSDR("ADT")
 . S DIC("P")="44.001DA",DIC(0)="L",DLAYGO=44.001
 . S Y=1 I '$D(@(DIC_X_")")) K DO,DD D FILE^DICN
 ;
 ;Add remaining fields to appt in 44
 D
 . NEW DIC,DA,X,Y,DLAYGO,DINUM
 . S DIC="^SC("_BSDR("CLN")_",""S"","_BSDR("ADT")_",1,"
 . S DA(2)=BSDR("CLN"),DA(1)=BSDR("ADT"),X=BSDR("PAT")
 . S DIC("DR")="1///"_BSDR("LEN")_";7////"_BSDR("USR")_";8////"_$$NOW^XLFDT
 . S DIC("P")="44.003PA",DIC(0)="L",DLAYGO=44.003
 . K DO,DD D FILE^DICN
 ;
 ;Call event driver
 D
 . NEW DFN,SDT,SDCL,SDDA,SDMODE
 . S DFN=BSDR("PAT"),SDT=BSDR("ADT"),SDCL=BSDR("CLN"),SDMODE=2
 . S SDDA=$$SCIEN^BSDU2(BSDR("PAT"),BSDR("CLN"),BSDR("ADT"))
 . D MAKE^SDAMEVT(DFN,SDT,SDCL,SDDA,SDMODE)
 ;
 Q 0
 ;
CHECKIN(BSDR) ;Add checkin info to appt
 ;
 ;Adapted from BSDAPI
 ;
 ; Make call by using:  S ERR=$$CHECKIN(.ARRAY)
 ;
 ; Input array -
 ;  BSDR("PAT") = ien of patient in file 2
 ;  BSDR("CLN") = ien of clinic in file 44
 ;  BSDR("ADT") = appt date/time
 ;  BSDR("CDT") = checkin date/time
 ;  BSDR("USR") = checkin user
 ;  BSDR("OPT") = option used to create visit (optional)
 ;  BSDR("VIEN") = visit IEN (sent if new visit is NOT to be created)
 ;
 ;  BSDR("CC")  = clinic code for creating visit - optional
 ;  BSDR("PRV") = visit provider - pointer to file 200
 ;
 ; Output value -
 ;              = 0 means everything worked
 ;              = 1^message means error with reason message
 ;
 NEW IEN,DIE,DA,DR,SDATA,DFN,SDT,SDCL,SDDA,SDCIHDL,Y
 ;
 ;Find appointment in file 44
 S IEN=$$SCIEN^BSDU2(BSDR("PAT"),BSDR("CLN"),BSDR("ADT"))
 I 'IEN Q 1_U_"Error trying to find appointment for checkin: Patient="_BSDR("PAT")_" Clinic="_BSDR("CLN")_" Appt="_BSDR("ADT")
 ;
 ;Track before status
 S DFN=BSDR("PAT"),SDT=BSDR("ADT"),SDCL=BSDR("CLN"),SDMODE=2,SDDA=IEN
 S SDCIHDL=$$HANDLE^SDAMEVT(1),SDATA=SDDA_U_DFN_U_SDT_U_SDCL
 D BEFORE^SDAMEVT(.SDATA,DFN,SDT,SDCL,SDDA,SDCIHDL)
 ;
 ;Set checkin
 S DIE="^SC("_BSDR("CLN")_",""S"","_BSDR("ADT")_",1,"
 S DA(2)=BSDR("CLN"),DA(1)=BSDR("ADT"),DA=IEN
 S DR="309///"_BSDR("CDT")_";302///`"_BSDR("USR")_";305///"_$$NOW^XLFDT
 D ^DIE
 ;
 ;Set after status
 S SDDA=$$SCIEN^BSDU2(BSDR("PAT"),BSDR("CLN"),BSDR("ADT"))
 S SDCIHDL=$$HANDLE^SDAMEVT(1),SDATA=SDDA_U_DFN_U_SDT_U_SDCL
 D AFTER^SDAMEVT(.SDATA,DFN,SDT,SDCL,SDDA,SDCIHDL)
 ;
 I $G(BSDR("VIEN")) S BSDVSTN=BSDR("VIEN")
 ;
 ; call event driver
 D EVT^SDAMEVT(.SDATA,4,SDMODE,SDCIHDL)
 ;
 Q 0
 ;
GCLIN(ECLIN) ;Return the clinic code and hospital location for the ER OPTION CIEN
 ;
 I '$G(ECLIN) Q ""
 ;
 NEW HLOC,ICPREF,CLIN
 ;
 S (CLIN,HLOC)=""
 ;
 ;Look for associated hospital location
 S ICPREF=$O(^AMER(2.5,DUZ(2),8,"B",ECLIN,"")) I ICPREF]"" D
 . NEW DA,IENS
 . S DA(1)=DUZ(2),DA=ICPREF,IENS=$$IENS^DILF(.DA)
 . S HLOC=$$GET1^DIQ(9009082.58,IENS,".02","I")
 ;
 ;If hospital location isn't set, pull from default
 I HLOC="" D
 . S HLOC=$G(^AMER(2.5,DUZ(2),"SD"))
 . S CLIN=$$GET1^DIQ(9009083,ECLIN_",",5,"I")
 . I CLIN]"" S CLIN=$O(^DIC(40.7,"C",CLIN,""))
 ;
 I HLOC="" D  Q ""
 . W !,"SITE PARAMETERS have not been set up in the ERS PARAMETER option"
 . W !,"No entry for EMERGENCY MEDICINE could be located"
 ;
 ;Get the clinic
 S:CLIN="" CLIN=$$GET1^DIQ(44,HLOC_",",8,"I")
 ;
 Q CLIN_U_HLOC
