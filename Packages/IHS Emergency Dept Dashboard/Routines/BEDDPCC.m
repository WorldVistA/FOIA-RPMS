BEDDPCC ;GDIT/HS/BEE-BEDD Admit - Create a Visit ; 08 Nov 2011  12:00 PM
 ;;2.0;BEDD DASHBOARD;**2,3**;Jun 04, 2014;Build 12
 ;
 ;GDIT/HS/BEE 05/10/2018;CR#10213 - BEDD*2.0*3 - Allow different hospital locations
 ;
 ;Derived from AMERPCC
 ;
VISIT(AMERPAT,AMERTIME,BEDD) ; EP from NADM^BEDDADM when patient is admitted W/O PIMS interface CHEKIN^AMERBSDU 
 ;
 NEW AMERVSIT
 ;
 ;GDIT/HS/BEE 05/10/2018;CR#10213 - BEDD*2.0*3 - Allow different hospital locations
 ;S AMERVSIT=$$AMVISIT(AMERPAT,AMERTIME) I +AMERVSIT'>0 Q "-1^"_$P(AMERVSIT,U,2)
 S AMERVSIT=$$AMVISIT(AMERPAT,AMERTIME,.BEDD) I +AMERVSIT'>0 Q "-1^"_$P(AMERVSIT,U,2)
 ;
 Q AMERVSIT
 ;
 ;GDIT/HS/BEE 05/10/2018;CR#10213 - BEDD*2.0*3 - Allow different hospital locations
 ;AMVISIT(AMERPAT,AMERDATE) ; 
AMVISIT(AMERPAT,AMERDATE,BEDD) ; 
 ;
 ;NEW IN,AMERVSIT,OUT,X,AMERVDR,AMEROPT,AMERTEMP,BEDDADM
 NEW IN,AMERVSIT,OUT,X,AMERVDR,AMEROPT,AMERTEMP,BEDDADM,CLIN,ICLIN,ICPREF
 ;
 S (AMERVSIT,AMERVDR)=""
 ;
 S IN("PAT")=AMERPAT
 S IN("VISIT DATE")=AMERDATE
 S IN("SITE")=$G(DUZ(2))
 ;
 ; To determine "visit type" for this visit, look in the "PCC MASTER CONTROL" file
 ; and get the "type of visit" that is set there
 S IN("VISIT TYPE")=$P($G(^APCCCTRL(DUZ(2),0)),U,4)
 S IN("USR")=DUZ
 ;
 ;GDIT/HS/BEE 05/10/2018;CR#10213 - BEDD*2.0*3 - Allow different hospital locations
 ;S IN("HOS LOC")=$G(^AMER(2.5,DUZ(2),"SD"))
 S CLIN=$G(BEDD("tClinic")) I CLIN]"" D
 . NEW DA,IENS
 . S ICLIN=$O(^AMER(3,"B",CLIN,"")) Q:ICLIN=""
 . S ICPREF=$O(^AMER(2.5,DUZ(2),8,"B",ICLIN,"")) Q:ICPREF=""
 . S DA(1)=DUZ(2),DA=ICPREF,IENS=$$IENS^DILF(.DA)
 . S IN("HOS LOC")=$$GET1^DIQ(9009082.58,IENS,".02","I")
 S:$G(IN("HOS LOC"))="" IN("HOS LOC")=$G(^AMER(2.5,DUZ(2),"SD"))
 ;
 S:IN("HOS LOC")'="" IN("APPT DATE")=AMERDATE  ; Setting IN("APPT DATE") will create an appoinment for this time
 S IN("SRV CAT")="A"  ; ER VISITS are "ambulatory"
 S IN("TIME RANGE")=3  ; Only find a visit for a time that is close to time or ER VISIT
 S BEDDADM=1
 D GETVISIT^APCDAPI4(.IN,.OUT)
 ;
 ;No visit returned
 I $P(OUT(0),U,1)=0 Q "-1^"_$P(OUT(0),U,2)
 Q:+AMERVSIT<0 AMERVSIT
 ;
 ;Multiple results returned
 S AMERTEMP=0
 I $P(OUT(0),U,1)>1 D
 .F  S AMERTEMP=$O(OUT(AMERTEMP)) Q:AMERTEMP=""  D
 ..S AMERVSIT=AMERTEMP
 ;
 ;Only one result returned
 I $P(OUT(0),U,1)=1 S AMERVSIT=$O(OUT(AMERTEMP))
 ;
 ;If "Option use to create" is blank (no PIMS interface) update it with a DIE call...
 I AMERVSIT>0 D
 .Q:$$GETVOPTN^AMERVSIT(AMERVSIT)'=""
 .S AMEROPT=$$GETOPIEN^AMERVSIT("AMER IHS PCC LINK")
 .S:+AMEROPT>0 AMERVDR=".24///"_+AMEROPT
 .D:AMERVDR'="" VSITDIE^AMERVSIT(AMERVSIT,AMERVDR)
 ;
 Q AMERVSIT
