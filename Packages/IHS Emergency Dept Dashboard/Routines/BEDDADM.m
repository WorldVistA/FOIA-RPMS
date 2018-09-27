BEDDADM ;GDIT/HS/BEE-BEDD Admit Utility Routine ; 08 Nov 2011  12:00 PM
 ;;2.0;BEDD DASHBOARD;**2**;Jun 04, 2014;Build 26
 ;
 Q
 ;
GCLINIC(DFN) ;Return the visit clinic
 ;
 NEW CL,VIEN,DEF
 ;
 S DEF=$$GET1^DIQ(40.7,"30,",1,"I")
 ;
 I +$G(DFN)=0 Q DEF
 ;
 ;Get the visit
 S VIEN=$$GET1^DIQ(9009081,DFN_",",1.1,"I") I '+VIEN Q DEF
 ;
 ;Get the clinic
 S CL=$$GET1^DIQ(9000010,VIEN_",",.08,"I") I '+CL Q DEF
 Q $$GET1^DIQ(40.7,CL_",",1,"I")
 ;
CLIN(CIEN) ;Return the clinic mnemonic
 Q
ADATE(X)  ;EP - Convert user entered admit date/time to correct format
 ;
 NEW %DT,Y,%,NOW
 ;
 ;Get current date/time
 D
 . NEW X
 . D NOW^%DTC
 . S NOW=%
 ;
 S X=$TR(X," ","@")
 ;
 S:$E(X)="N" X="NOW"
 S %DT="T" D ^%DT
 S:Y=-1 Y=""
 ;
 ;Flag future date/time
 I Y>NOW Q "-1"
 ;
 ;Return converted date/time
 Q $$FMTE^BEDDUTIL(Y)
 ;
BLDVTYP(MYVTP) ;EP - Build Acuity MYVTP array
 ;
 ; Input:
 ; None
 ;
 ; Output:
 ; MYVTP array of ^AMER(3) VISIT TYPE entries
 ;
 ;Error Trap
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BEDDADM D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 NEW VTIEN,CNT,VIEN,VTYP
 K MYTRG
 S VTIEN=$O(^AMER(2,"B","VISIT TYPE","")) Q:VTIEN=""
 S CNT=0,VIEN="" F  S VIEN=$O(^AMER(3,"AC",VTIEN,VIEN)) Q:'VIEN  D
 . S VTYP=$$GET1^DIQ(9009083,VIEN_",",.01,"E") Q:VTYP=""
 . S CNT=CNT+1
 . S MYVTP(CNT)=VIEN_"^"_VTYP
 Q
 ;
DEFVTYP() ;EP - Locate Default "UNSCHEDULED" visit type
 Q $O(^AMER(3,"B","UNSCHEDULED",""))
 ;
BLDTFRM(MYTFRM) ;EP - Build Acuity MYTFRM array
 ;
 ; Input:
 ; None
 ;
 ; Output:
 ; MYTFRM array of ^AMER(3) VISIT TYPE entries
 ;
 ;Error Trap
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BEDDADM D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 NEW CNT,TIEN,TFRM
 K MYTFRM
 S CNT=0,TFRM="" F  S TFRM=$O(^AMER(2.1,"B",TFRM)) Q:TFRM=""  D
 . S TIEN=$O(^AMER(2.1,"B",TFRM,"")) Q:TIEN=""
 . S CNT=CNT+1
 . S MYTFRM(CNT)=TIEN_"^"_TFRM
 Q
 ;
BLDMTRN(MYMTRN) ;EP - Build MYMTRN array
 ;
 ; Input:
 ; None
 ;
 ; Output:
 ; MYMTRN array of ^AMER(3) TRANSFER DETAILS entries
 ;
 ;Error Trap
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BEDDADM D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 NEW MTIEN,CNT,MIEN,MTRN
 K MYMTRN
 S MTIEN=$O(^AMER(2,"B","TRANSFER DETAILS","")) Q:MTIEN=""
 S CNT=0,MIEN="" F  S MIEN=$O(^AMER(3,"AC",MTIEN,MIEN)) Q:'MIEN  D
 . S MTRN=$$GET1^DIQ(9009083,MIEN_",",.01,"E") Q:MTRN=""
 . S CNT=CNT+1
 . S MYMTRN(CNT)=MIEN_"^"_MTRN
 Q
 ;
BLDTMOD(MYTMOD) ;EP - Build MYTMOD array
 ;
 ; Input:
 ; None
 ;
 ; Output:
 ; MYTMOD array of ^AMER(3) MODE OF TRANSPORT entries
 ;
 ;Error Trap
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BEDDADM D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 NEW MTIEN,CNT,MIEN,MTRN
 K MYTMOD
 S MTIEN=$O(^AMER(2,"B","MODE OF TRANSPORT","")) Q:MTIEN=""
 S CNT=0,MIEN="" F  S MIEN=$O(^AMER(3,"AC",MTIEN,MIEN)) Q:'MIEN  D
 . S MTRN=$$GET1^DIQ(9009083,MIEN_",",.01,"E") Q:MTRN=""
 . S CNT=CNT+1
 . S MYTMOD(CNT)=MIEN_"^"_MTRN
 Q
 ;
BLDACMP(MYACMP) ;EP - Build MYACMP array
 ;
 ; Input:
 ; None
 ;
 ; Output:
 ; MYACMP array of ^AMER(3) Ambulance Company entries
 ;
 ;Error Trap
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BEDDADM D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 NEW MTIEN,CNT,MIEN,MCMP
 K MYACMP
 S MTIEN=$O(^AMER(2,"B","AMBULANCE COMPANY","")) Q:MTIEN=""
 S CNT=0,MIEN="" F  S MIEN=$O(^AMER(3,"AC",MTIEN,MIEN)) Q:'MIEN  D
 . S MCMP=$$GET1^DIQ(9009083,MIEN_",",.01,"E") Q:MCMP=""
 . S CNT=CNT+1
 . S MYACMP(CNT)=MIEN_"^"_MCMP
 Q
 ;
DEFMTRN() ;EP - Locate Default "PRIVATE VEHICLE TRANSFER" trasnsport type
 Q $O(^AMER(3,"B","PRIVATE VEHICLE TRANSFER",""))
 ;
DEFTMOD() ;EP - Locate Default "PRIVATE VEHICLE TRANSFER" trasnsport type
 Q $O(^AMER(3,"B","PRIVATE VEHICLE/WALK IN",""))
 ;
SAVEADM(BEDD,DUZ) ;Admit/update patient visit
 ;
 NEW X,AMERUP,DFN,AMERTIME,AGCHART,AMERPCC,TRANSYN,TRNFRM,TRNMOD,TRNATT,PCMP
 NEW VTYPE,AMEANS,ACOMP,ABILL,ANUMB,ACTION,BIEN,EXEC,CLINIC
 ;
 ;Make sure initial variables are set
 S X="S:$G(U)="""" U=""^""" X X
 S X="S:$G(DT)="""" DT=$$DT^XLFDT" X X
 ;
 ;Set up DUZ
 D DUZ^XUP(DUZ)
 ;
 ;Update visit entries
 S DFN=$G(BEDD("tPatientDFN")) I DFN="" Q "-1^Could not locate patient DFN"
 ;
 ;New visit
 I +$G(BEDD("tNewVisit"))=0 S AMERPCC=$$NADM(.BEDD) I +AMERPCC=-1 Q AMERPCC
 ;
 ;Existing visit
 I +$G(BEDD("tNewVisit"))=1 S AMERPCC=$$GET1^DIQ(9009081,DFN_",",1.1,"I")
 ;
 ;Admit Date/Time
 S AMERTIME=$$DATE^BEDDUTIU($G(BEDD("tAdmitDtTm")))
 S AMERUP(9009081,DFN_",",1)=AMERTIME
 ;
 ;Presenting complaint
 S PCMP=$G(BEDD("tPCmp"))
 S PCMP=$TR(PCMP,$C(10)," ")  ;Convert linefeed to space
 S AMERUP(9009081,DFN_",",23)=$S(PCMP]"":PCMP,1:"@")
 S AMERUP(9000010,AMERPCC_",",1401)=$S(PCMP]"":PCMP,1:"@")
 ;
 ;Clinic
 S CLINIC=$G(BEDD("tClinic"))
 S:CLINIC]"" AMERUP(9000010,AMERPCC_",",.08)=$O(^DIC(40.7,"C",CLINIC,""))
 S:CLINIC="" AMERUP(9000010,AMERPCC_",",.08)="@"
 ;
 ;Date of Birth
 S AMERUP(9009081,DFN_",",.02)=$$GET1^DIQ(2,DFN_",",.03,"I")
 ;
 ;Chart
 S AGCHART="00000"_$P($G(^AUPNPAT(DFN,41,DUZ(2),0)),U,2)
 S AGCHART=$E(AGCHART,$L(AGCHART)-5,$L(AGCHART))
 S AMERUP(9009081,DFN_",",.03)=$S(AGCHART="":"",1:AGCHART)
 ;
 ;Sex
 S AMERUP(9009081,DFN_",",.05)=$$GET1^DIQ(2,DFN_",",".02","I")
 ;
 ;Visit Type
 S VTYPE=$G(BEDD("tVisitType"))
 S AMERUP(9009081,DFN_",",3)=$S(VTYPE="":"@",1:VTYPE)
 ;
 ;PCC Visit
 S AMERUP(9009081,DFN_",",1.1)=AMERPCC
 ;
 ;Transfer YN
 S TRANSYN=$G(BEDD("tTransferYN"))
 S AMERUP(9009081,DFN_",",2.1)=$S(TRANSYN="":"@",1:TRANSYN)
 ;
 ;Transfer From
 S TRNFRM=$G(BEDD("tTransferFrom"))
 S AMERUP(9009081,DFN_",",2.2)=$S(TRNFRM="":"@",1:TRNFRM)
 ;
 ;Transfer Mode
 S TRNMOD=$G(BEDD("tModeTransport"))
 S AMERUP(9009081,DFN_",",2.3)=$S(TRNMOD="":"@",1:TRNMOD)
 ;
 ;Transfer Attendant
 S TRNATT=$G(BEDD("tAttendantYN"))
 S AMERUP(9009081,DFN_",",2.4)=$S(TRNATT="":"@",1:TRNATT)
 ;
 ;Data Enterer
 S AMERUP(9009081,DFN_",",10)=DUZ
 ;
 ;Arrival Means
 S AMEANS=$G(BEDD("tArrivalMeans"))
 S AMERUP(9009081,DFN_",",6)=$S(AMEANS]"":AMEANS,1:"@")
 ;
 ;Ambulance Company
 S ACOMP=$G(BEDD("tAmbulanceCompany"))
 S AMERUP(9009081,DFN_",",15)=$S(ACOMP]"":ACOMP,1:"@")
 ;
 ;Ambulance Billing Number
 S ABILL=$G(BEDD("tBillingNumber"))
 S AMERUP(9009081,DFN_",",13)=$S(ABILL]"":ABILL,1:"@")
 ;
 ;Ambulance Number
 S ANUMB=$G(BEDD("tAmbulanceNumber"))
 S AMERUP(9009081,DFN_",",12)=$S(ANUMB]"":ANUMB,1:"@")
 ;
 ;Save the entry
 D FILE^DIE("","AMERUP","ERROR")
 ;
 ;Admit to Dashboard if new
 S BIEN=""
 I +$G(BEDD("tNewVisit"))=0 S BIEN=$$NEW(DFN,AMERPCC) I BIEN=0 Q "-1^Could not admit to dashboard"
 ;
 ;Get BEDD ObjectID if existing
 I +$G(BEDD("tNewVisit")) D
 . NEW EXEC
 . S EXEC="S BIEN=$O(^BEDD.EDVISITI(""ADIdx"",AMERPCC,""""))" X EXEC
 ;
 ;Create/update V EMERGENCY VISIT RECORD entry
 D VER^AMERVER(DFN,AMERPCC)
 ;
 ;Log to BUSA
 ;
 ;New visit
 I +$G(BEDD("tNewVisit"))=0 D LOG^BEDDUTIU(DUZ,"P","A","BEDDAdmit.csp","BEDD: Admitted patient to ER",DFN) I 1
 E  D LOG^BEDDUTIU(DUZ,"P","E","BEDDAdmit.csp","BEDD: Updated existing ER visit admission information",DFN)
 ;
 Q BIEN
 ;
NADM(BEDD) ;Create new ER ADMISSION and VISIT records
 ;
 NEW AMERDFN,DIC,X,Y,DINUM,AMERTIME,AMERPCC,ERR
 ;
 ;Create ER ADMISSION entry
 S AMERDFN=$G(BEDD("tPatientDFN")) I AMERDFN="" Q "-1^No DFN found"
 ;
 ;Check to make sure we don't have an entry and create one if needed
 S ERR="" I '$D(^AMERADM(AMERDFN)) D  Q:ERR]"" ERR
 . S DIC="^AMERADM(",DIC(0)="L",X=AMERDFN,DINUM=X
 . K DD,DO
 . D FILE^DICN K DIC I Y=-1 S ERR="-1^Could not create ER ADMISSION record"
 ;
 ;Get visit date/time
 S AMERTIME=$$DATE^BEDDUTIU($G(BEDD("tAdmitDtTm")))
 ;
 ;Try to find a visit in the entry
 S AMERPCC=$$GET1^DIQ(9009081,AMERDFN_",",1.1,"I") I +AMERPCC Q AMERPCC
 ;
 ;Create VISIT entry
 S AMERPCC=$$VISIT^BEDDPCC(AMERDFN,AMERTIME,.BEDD)
 ;
 Q AMERPCC
 ;
NEW(AMERDFN,VIEN) ; EP - Add New
 ;
 NEW EXEC
 ;
 ;Lock global
 S EXEC="L +^BEDD.EDVISIT(0):45" X EXEC I $T=0 Q 0
 ;
 NEW EDOBJ,STATUS,ID
 ;
 S ID=""
 S EXEC="S EDOBJ=##CLASS(BEDD.EDVISIT).%New()" X EXEC
 S EXEC="S EDOBJ.PtDFN=AMERDFN" X EXEC
 S EXEC="S EDOBJ.VIEN=VIEN" X EXEC
 S EXEC="S EDOBJ.DCFlag=0" X EXEC
 S EXEC="S EDOBJ.PtStatV=1" X EXEC
 S EXEC="S EDOBJ.DCDtH=""""" X EXEC
 S EXEC="S STATUS=EDOBJ.%Save()" X EXEC I STATUS'=1 S ID=0 G XNEW
 S EXEC="S ID=EDOBJ.%Id()" X EXEC
 S EDOBJ=""
 ;
 ;Unlock global
XNEW S EXEC="L -^BEDD.EDVISIT(0)" X EXEC
 Q ID
 ;
 ;Retrieve printer IEN
DVIEN(PRINTER) ;Return the IEN associated with the printer
 ;
 I $G(PRINTER)="" Q ""
 Q $O(^%ZIS(1,"B",PRINTER,""))
 ;
DVLIST(DVLIST) ;
 ;
 NEW X,CNT,PRT,CNT,IEN
 ;
 ;Make sure initial variables are set
 S X="S:$G(U)="""" U=""^""" X X
 S X="S:$G(DT)="""" DT=$$DT^XLFDT" X X
 ;
 S CNT=0
 ;
 S PRT="" F  S PRT=$O(^%ZIS(1,"B",PRT)) Q:PRT=""  D
 . Q:$E(PRT,1,4)="NULL"
 . ;
 . S IEN="" F  S IEN=$O(^%ZIS(1,"B",PRT,IEN)) Q:'IEN  D
 .. ;
 .. NEW XSTYPE,XTYPE,X0,XOSD,X
 .. ;
 .. ;Printers only
 .. S XSTYPE=+$G(^%ZIS(1,IEN,"SUBTYPE"))
 .. Q:$E($G(^%ZIS(2,XSTYPE,0)))'="P"
 .. ;
 .. ;Type
 .. S XTYPE=$P($G(^%ZIS(1,IEN,"TYPE")),U)
 .. Q:"^TRM^HG^CHAN^OTH^"'[(U_XTYPE_U)
 .. ;
 .. ;Queuing allowed
 .. S X0=$G(^%ZIS(1,IEN,0))
 .. Q:$P(X0,U,2)="0"!($P(X0,U,12)=2)
 .. ;
 .. ;Out of Service
 .. S XOSD=+$G(^%ZIS(1,IEN,90))
 .. I XOSD,XOSD'>DT Q  ; Out of Service
 .. ;
 .. ;Printer
 .. S X=$P(X0,U) Q:X=""
 .. Q:$E(X,1,4)="NULL"
 .. ;
 .. S CNT=CNT+1,DVLIST(CNT)=IEN_U_X
 ;
 Q
 ;
ERR ;
 D ^%ZTER
 Q
