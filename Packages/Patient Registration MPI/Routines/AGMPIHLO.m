AGMPIHLO ;IHS/SD/TPF - Patient Registration MPI HLO Interface ALL HLO MESSAGES
 ;;7.2;IHS PATIENT REGISTRATION;**1,3,5,6**;MAY 20, 2010;Build 23
 ;BADEHL1 was used as a template for this routine
 Q
 ;FOR PATIENT MERGE A40
 ;^TMP("XDRFROM",$J,TOMIEN,FROMIEN,FROMIEN_GLOBROOT,TOIEN_GLOBROOT)=FILE
 ;^TMP("XDRFROM",2804,6364,1991,"6364;DPT(","1991;DPT(")=2
 ;BPMRY = "^TMP(""XDRFROM"",$J)"
NEWMSG(BPMRY) ;EP - FOR PATIENT MERGE
 N AGMPIFR,AGMPITO
 S AGMPITO=$O(@BPMRY@(0))
 I '$G(AGMPITO) S A40ERR=1 D NOTIF(AGMPITO,"Unable to build HL7 message. ERR:A40: NO TO DFN FOR A40 EVENT") Q
 I '$D(^DPT(AGMPITO,0)) S A40ERR=1 D NOTIF(AGMPITO,"Unable to build HL7 message. ERR:A40: NO DPT ENTRY FOR DFN "_AGMPITO) Q
 ;
 S AGMPIFR=$O(@BPMRY@(AGMPITO,0))
 I '$G(AGMPIFR) S A40ERR=1 D NOTIF(AGMPIFR,"Unable to build HL7 message. ERR:A40: NO DFN2 FOR A40 EVENT") Q
 I '$D(^DPT(AGMPIFR,0)) S A40ERR=1 D NOTIF(AGMPIFR,"Unable to build HL7 message. ERR:A40: NO DPT ENTRY FOR DFN2 "_AGMPIFR) Q
 D CREATMSG(AGMPIFR,"A40",AGMPITO,.SUCCESS)
 Q
 ;
 ;BUILD OUTBOUND MESSAGES
 ;SEND VTQ TO GET THE OLD VA NON-STANDARD MESSAGE
 ;SEND VQQ TO GET A REGULAR HL7 MESSAGE
CREATMSG(DFN,EVNTTYPE,DFN2,SUCCESS) ;EP - START FOR MOST PAT REG TRIGGERS
 ;S AGMPSTOP=1
 ; 9/07/2017 - GCD - CR 7693 - Disabled VQQ messages.
 I $G(EVNTTYPE)="VTQ"!($G(EVNTTYPE)="VQQ") S SUCCESS=0 Q
 ;MODIFIED  11/28/2016 - SWH
 I '($G(AGMPCHKFLG)),$G(^AGMPCHK(0)),'($G(^AGMPCHK(DUZ(2),1))="VALID") D  Q  ; CHECK TO SEE IF WE HAVE THE GLOBAL BUILT AND IF THE SITE CAN TRIGGER MESSAGES.
 .S SUCCESS=0
 .I '($G(^AGMPCHK(DUZ(2)))) D NOTIF("","Site "_DUZ(2)_"isn't defined within the ^AGMPCHK global.")  Q
 .I '($G(DFN2)) S DFN2=""
 .D UPDMSGQ^AGMPCHK(DFN,DFN2,EVNTTYPE,DUZ(2))
 .I '($G(ZTQUEUED)) W !,"Site "_DUZ(2)_" / "_$G(^AGMPCHK(DUZ(2)))_" is disabled in ^AGMPCHK, the message was not sent!"
 .I $D(^AGMPCHK(DUZ(2),"NT")) D
 ..I (+($P(^AGMPCHK(DUZ(2),"NT"),",")))=(+($p($H,","))) S TCHCK=((+($P($H,",",2)))-(+($P(^AGMPCHK(DUZ(2),"NT"),",",2))))
 ..I '((+($P(^AGMPCHK(DUZ(2),"NT"),",")))=(+($p($H,",")))) S TCHCK=3600
 ..I TCHCK>3599 D
 ...D NOTIF("","The "_DUZ(2)_" / "_$G(^AGMPCHK(DUZ(2),1))_" site is disabled.")
 ...S ^AGMPCHK(DUZ(2),"NT")=$H
 ;
 I $G(AGMPSTOP) S SUCCESS=1 Q
 ; 9/13/2017 - GCD - CR 7713 - Don't upload demo patients.
 I $$DEMOPAT^AGMPHLU($G(DFN)) S SUCCESS=0 Q
 I $G(DFN2)'="",$$DEMOPAT^AGMPHLU(DFN2) S SUCCESS=0 Q
 N A40ERR
 S SUCCESS=1
 S A40ERR=0
 I $G(EVNTTYPE)="A40" D  Q:$G(A40ERR)
 .I '$G(DFN2) S A40ERR=1 D NOTIF(DFN,"Unable to build HL7 message. ERR:A40: NO DFN2 FOR A40 EVENT")
 .I '$G(DFN) S A40ERR=1 D NOTIF(DFN,"Unable to build HL7 message. ERR:A40: NO DFN FOR A40 EVENT")
 .I '$D(^DPT(DFN2,0)) S A40ERR=1 D NOTIF(DFN,"Unable to build HL7 message. ERR:A40: NO DPT ENTRY FOR DFN2 "_DFN2)
 .I '$D(^DPT(DFN,0)) S A40ERR=1 D NOTIF(DFN,"Unable to build HL7 message. ERR:A40: NO DPT ENTRY FOR DFN "_DFN)
 N HLPM,HLST,ARY,HLQ,APPARMS,HLPM,HLMSGIEN,HLECH,HLFS,ERR,WHO
 N LN,HL1,HRCN,FLD,LP,X,LN
 S LN=0
 ;
 I EVNTTYPE="VQQ" D
 .W !," THIS IS BOMBING OUT ENSEMBLE"
 .W !,"WE WANT TO SEND A NORMAL MESSAGE WHEN DOING VQQ"
 .W !,"OR CHANGE THE VTQ EVENT INTO A REGULAR MESSAGE"
 I EVNTTYPE'="VTQ",(EVNTTYPE'="M05") D
 .S HLPM("MESSAGE TYPE")="ADT"
 .S HLPM("EVENT")=EVNTTYPE
 E  I EVNTTYPE="M05" D
 .S HLPM("MESSAGE TYPE")="MFK"
 .S HLPM("EVENT")=EVNTTYPE
 E  D
 .S HLPM("MESSAGE TYPE")="VQQ"
 .S HLPM("EVENT")="Q02"
 ;
 S HLPM("VERSION")=2.4
 S HLPM("FIELD SEPARATOR")="^"
 S HLPM("ENCODING CHARACTERS")="~|\&"
 I '$$NEWMSG^HLOAPI(.HLPM,.HLST,.ERR) D  Q
 .D NOTIF(DFN,"Unable to build HL7 message."_$S($D(ERR):" ERR:"_$G(ERR),1:""))
 S HLFS=HLPM("FIELD SEPARATOR")
 S HLECH=HLPM("ENCODING CHARACTERS")
 S HL1("ECH")=HLECH
 S COMP=$E(HL1("ECH"))
 S SUBCOMP=$E(HL1("ECH"),4)
 S HL1("FS")=HLFS
 S HL1("Q")=""
 S HL1("VER")=HLPM("VERSION")
 ;Create segments
 ;
 ;THIS CREATES THE 'ODD' NON-STANDARD HL7 VA QUERY MESSAGE
 ;I EVNTTYPE="VTQ" D  Q
 ;.D VTQ^AGMPIHL1(DFN)
 ;.I '$D(ERR) D RDF^AGMPIHL1(DFN)
 ;.I '$D(ERR) D DOSEND
 ;
 ;
 I EVNTTYPE="M05" D  Q
 .N SEG,TAG
 .S SEG=""
 .F  S SEG=$O(MFK(SEG)) Q:'SEG  D  Q:$D(ERR)
 ..S TAG=$G(MFK(SEG,1,1,1,1))
 ..Q:TAG="ZET"
 ..I TAG'="" S TAG=TAG_"("_SEG_")"
 ..E  S TAG="MFA("_SEG_")"
 ..D @TAG
 ..I $D(ERR) D NOTIF(DFN,$P(TAG,"(")_"segment could not be created") Q
 .D DOSEND
 ;
 ;REGULAR MESSSAGES
 D EVN(EVNTTYPE)
 I '$D(ERR) D PID^AGMPIHL1(DFN)
 I '$D(ERR),(EVNTTYPE="A08")!(EVNTTYPE="A01")!(EVNTTYPE="A03") D PD1(DFN)
 I '$D(ERR),(EVNTTYPE="A08")!(EVNTTYPE="A01")!(EVNTTYPE="A03") D
 .D PV1(DFN)
 .;I '$D(ERR),(EVNTTYPE'="A01"),(EVNTTYPE'="A03") D OBX(DFN)
 ;
 I '$D(ERR),($G(EVNTTYPE)'="A40") D ZPD^AGMPIHL1(DFN)  ;RPMS SPECIFIC DATA
 ;
 I '$D(ERR),($G(EVNTTYPE)="A40") D MRG^AGMPIHL1(DFN2) ; DO A40 MERGE SEGMENT
 I '$D(ERR),(EVNTTYPE="A28") D NK1(DFN)
 ;
DOSEND ;EP
 I '$D(ERR) D
 .; Define sending and receiving parameters
 .;SEE PG71 HLO TECH MANUAL FOR SOME OF THESE PARAMETERS
 .S APPARMS("SENDING APPLICATION")="RPMS-MPI"
 .S APPARMS("ACCEPT ACK TYPE")="AL"  ;Commit ACK type
 .I EVNTTYPE="A28" D
 ..S APPARMS("APP ACK RESPONSE")="RES^AGMPHIACK"
 ..S APPARMS("ACCEPT ACK RESPONSE")="RES^AGMPHIACK"
 .E  D
 ..S APPARMS("APP ACK RESPONSE")="AACK^AGMPIHLO"  ;Callback when 'application ACK' is received
 ..S APPARMS("ACCEPT ACK RESPONSE")="CACK^AGMPIHLO"  ;Callback when 'commit ACK' is received
 .S APPARMS("APP ACK TYPE")="NE"  ;(FIELD 16) Application ACK type ;TPF - CHANGED TO THIS BECAUSE OF "SE" ERROR
 .S APPARMS("QUEUE")="MPI RPMS"   ;Incoming QUEUE
 .S APPARMS("RECEIVING APPLICATION")="MPI RPMS"
 .S WHO("RECEIVING APPLICATION")="MPI"  ;THIS DOES OVERRIDE LINE ABOVE MSH-5
 .S WHO("FACILITY LINK NAME")="MPI"
 .S WHO("STATION NUMBER")="8990"  ;IHS/SD/TPF MPI TEST SET MSH-6 RECEIVING FACILITY (MPI SERVER)
 .S WHO("IE LINK NAME")="MPI"  ;FOR HLO TESTING
 .S APPARMS("SENDING FACILITY")=$$GET1^DIQ(4,DUZ(2)_",",99,"E")
 .S WHO("SENDING FACILITY")=$$GET1^DIQ(4,DUZ(2)_",",99,"E")
 .;S WHO("PORT")=5200   ; THIS SETS THE PORT WE ARE SENDING FROM THIS IS ALSO SET BY THE MPI HL LOGICAL LINK
 .S WHO("STATION")=$$GET1^DIQ(4,DUZ(2)_",",99,"E")
 .S HLST("SYSTEM","PORT")=$$GET1^DIQ(9009061,DUZ(2)_",",2203)  ;LOCAL LISTENER PORT FOR MPI FIELD
 .S HLST("SYSTEM","STATION")=$$GET1^DIQ(4,DUZ(2)_",",99,"E")
 .;MPI HAS BEEN ASSIGNED PORTS BETWEEN 5200:5299 TO USE
 .;5200 FOR TEST SENDER 5201 FOR TEST LISTENER
 .;5202 FOR PRD SENDER  5203 FOR PRD LISTENER
 .I HLST("SYSTEM","PORT")="" D  Q
 ..S SUCCESS=0
 ..D NOTIF(DFN,"LISTENER PORT NULL IN REG. PARAMETER FILE")
 .I HLST("SYSTEM","STATION")="" D  Q
 ..S SUCCESS=0
 ..D NOTIF(DFN,"STATION NUMBER NULL IN FILE 4 ")
 .; 05/24/2013 - KJH - TFS8008 - Remove extraneous locks on the HLO globals.
 .S SUCCESS=$$SENDONE^HLOAPI1(.HLST,.APPARMS,.WHO,.ERR)
 .;I EVNTTYPE="A40" D NOTIF(DFN,"AN A40 MESSAGE HAS BEEN CREATED "_SUCCESS)  ; AG*7.2*5/CR 7718 - NOTIF sets SUCCESS to 0 and we don't need this call.
 .I 'SUCCESS D
 ..D NOTIF(DFN,"Unable to create HL7 message."_$S($D(ERR):" ERR:"_$G(ERR),1:""))
 I $D(ERR) D
 .I ERR[("NOT DEFINED IN PID^AGMPIHL1") S SUCCESS=1_U_ERR Q  ;THIS IS A TIMING ISSUE THAT SEEMS TO RESOLVE ITSELF FOR A08
 .S SUCCESS=0
 .D NOTIF($G(DFN),"Unable to send HL7 message."_$S($D(ERR):" ERR:"_$G(ERR),1:""))
 Q
 ;THIS IS FOR HLO APP USE. NOT BEING USED HOWEVER
AACK ; EP - Application ACK callback - called when AA, AE or AR is received.
 N DATA,AACK,XQAID,XQDATA,XQA,XQAMSG,MSGID
 Q:'$G(HLMSGIEN)
 S MSGID=$P($G(^HLB(+HLMSGIEN,0)),U)
 S AACK=$G(^HLB(HLMSGIEN,4))
 I $P(AACK,U,3)'["|AA|" D
 .S XQAMSG="AGMPI message "_MSGID_" did not receive a correct application ack."
 .S XQAID="AGMPI,"_MSGID_","_50
 .S XQDATA=$P(AACK,U,3)
 .S XQA("G.AGMPI MPI")=""
 .D SETUP^XQALERT
 Q
 ;THIS IS FOR HLO APP USE. NOT BEING USED HOWEVER
CACK ; EP - Commit ACK callback - called when CA, CE or CR is received.
 N CACK,XQAID,XQAMSG,XQA,XQDATA,MSGID
 S MSGID=$P($G(^HLB(+HLMSGIEN,0)),U)
 S CACK=$G(^HLB(HLMSGIEN,4))
 I $P(CACK,U,3)'["|CA|" D
 .S XQAMSG="AGMPI message "_MSGID_" did not receive a correct commit acknowledgement."
 .S XQAID="AGMPI,"_MSGID_","_50
 .S XQDATA=$P(CACK,U,3)
 .S XQA("G.AGMPI MPI")=""
 .D SETUP^XQALERT
 Q
 ;
 ; Send Notification to group
 ; Input: DFN = Patient
 ;        MSG = Main message
NOTIF(DFN,MSG) ;EP
 N PNAM,PVDIEN,RET,X,SAVE
 N XQA,XQAID,XQADATA,XQAMSG
 S SUCCESS=0
 S PNAM=""
 S:$G(DFN)'="" PNAM=$P($G(^DPT(DFN,0)),U)
 I $L(PNAM)>15 S PNAM=$E(PNAM,1,15)
 S XQAMSG=PNAM_" "
 S XQAMSG=XQAMSG_$G(MSG)
 S XQAID="ADEN,"_DFN_","_50
 S XQDATA="DFN="_DFN
 S XQA("G.AGMP MPI")=""
 D SETUP^XQALERT
 ;Save the DFN in a parameter for correction
 S X=$$GET^XPAR("ALL","AGMP MPI TOTAL ERRORS",1,"E")
 S X=X+1
 S SAVE=DFN_" "_MSG
 D EN^XPAR("SYS","AGMP MPI ERROR PTS",X,SAVE)
 D EN^XPAR("SYS","AGMP EDR TOTAL ERRORS",1,X)
 Q
 ;
ERR ;
 Q
 ;
EVN(EVNTTYPE) ;Create the EVN segment
 N %,X,FLD,VAL
 D NOW^%DTC
 S X=$$HLDATE^HLFNC(%,"TS")
 S FACNAME=$$GET1^DIQ(9999999.06,DUZ(2)_",",.01,"E")
 ;GOT DATA FROM OLD V1.6 BLDEVT^VAFCQRY2
 S USERNAME=DUZ
 S USERNAME=$$GET1^DIQ(200,+USERNAME_",",.01)
 S USERNAME=$$HLNAME^HLFNC(USERNAME,HL1("ECH"))
 ;SET(SEG,VALUE,FIELD,COMP,SUBCOMP,REP)
 D MYSET(.ARY,"EVN",0)
 D MYSET(.ARY,$S(EVNTTYPE="A01":"A1",EVNTTYPE="A03":"A2",1:EVNTTYPE),1,1,1,1)  ;A1 AND A2 MATCH UP TO ENTRIES IN THE 'ADT/HL7 EVENT REASON' FILE
 D MYSET(.ARY,DUZ,5,1,1,1)
 D MYSET(.ARY,$P(USERNAME,COMP),5,1,2,1)
 D MYSET(.ARY,$P(USERNAME,COMP,2),5,1,3,1)
 D MYSET(.ARY,"USIHS",5,1,9,1)
 D MYSET(.ARY,"0363",5,1,9,3)
 D MYSET(.ARY,"L",5,1,10,1)
 D MYSET(.ARY,"NI",5,1,13,1)
 D MYSET(.ARY,"IHS FACILITY ID -"_FACNAME,5,1,14,1)
 D MYSET(.ARY,$P($$SITE^VASITE,"^",3),5,1,14,2)
 D MYSET(.ARY,"L",5,1,14,3)
 D MYSET(.ARY,$P($$SITE^VASITE,"^",3),7,1,1,1)
 S X=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 I $D(ERR) D NOTIF(DFN,"EVT segment could not be created")
 Q
 ;
PD1(DFN) ;EP
 Q:'$G(DFN)
 N PD1
 S VAFCMN=$$MPINODE^AGMPIPID(DFN)
 S CMOR=$P(VAFCMN,"^",3)
 I CMOR'="" S SITE=$$NS^XUAF4(CMOR)
 E  S SITE=""
 ;
 D MYSET(.ARY,"PD1",0)
 D MYSET(.ARY,$P(SITE,U),3,1,1,1)
 D MYSET(.ARY,$P(SITE,U),3,1,1,1)
 D MYSET(.ARY,"D",3,1,2,1)
 D MYSET(.ARY,$P(SITE,"^",2),3,1,3,1)
 S PD1=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 I $D(ERR) D NOTIF(DFN,ERR)
 Q
 ;
PV1(DFN) ;EP - PATIENT VISIT
 Q:'$G(DFN)
 N PV1
 ;
 D MYSET(.ARY,"PV1",0)
 D MYSET(.ARY,1,1,1,1,1)
 D MYSET(.ARY,$G(SDT),44,1,1,1)
 S PV1=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 I $D(ERR) D NOTIF(DFN,ERR)
 Q
 ;
OBX(DFN) ;EP - OBSERVATION/RESULT
 Q:'$G(DFN)
 N OBX
 ;
 D MYSET(.ARY,"OBX",0)
 D MYSET(.ARY,1,1,1,1,1)
 S OBX=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 I $D(ERR) D NOTIF(DFN,ERR)
 Q
 ;
 ;NOT USED; MAY USE IN FUTURE
NK1(DFN) ;EP
 Q
 N ADDR,NK1,NODE,PHONE,DGNAME,FLD,K,CNT,SHIP,REL,HLQ
 S CNT=0
 S HLQ=HL1("Q")
 F K="EC","NOK" D
 .I K="EC" S NODE=$G(^DPT(DFN,.33))
 .I K="NOK" S NODE=$G(^DPT(DFN,.21))
 .Q:NODE=""
 .S CNT=CNT+1
 .D MYSET(.ARY,"NK1",0)
 .D MYSET(.ARY,CNT,1)
 .S DGNAME("FILE")=2,DGNAME("IENS")=DFN
 .S DGNAME("FIELD")=$S(K="NOK":.211,K="EC":.331)
 .;Name of next of kin
 .S FLD=$$HLNAME^XLFNAME(.DGNAME,"","^")
 .F LP=1:1:$L(FLD,$E(HLECH)) S VAL=$P(FLD,$E(HLECH),LP) D
 ..D MYSET(.ARY,VAL,2,LP)
 .;Relationship
 .S SHIP=$S(K="EC":$P($G(^AUPNPAT(DFN,31)),U,2),K="NOK":$P($G(^AUPNPAT(DFN,28)),U,2))
 .I SHIP'="" D
 ..S X=$P($G(^AUTTRLSH(SHIP,0)),U,2)_"^"_$P($G(^AUTTRLSH(SHIP,0)),U,1)_"^UB-92"
 ..F LP=1:1:$L(X,$E(HLECH)) S VAL=$P(X,$E(HLECH),LP) D
 ...D MYSET(.ARY,VAL,3,LP)
 .S ADDR=$$ADDR^VAFHLFNC($P(NODE,U,3,8))
 .F LP=1:1:$L(ADDR,$E(HLECH)) S VAL=$P(ADDR,$E(HLECH),LP) D
 ..D MYSET(.ARY,VAL,4,LP)   ;Address
 .S PHONE=$$HLPHONE^HLFNC($P(NODE,U,9))
 .I $L(PHONE) D
 ..D MYSET(.ARY,PHONE,5)    ;Home phone
 ..D MYSET(.ARY,"PRN",5,2)
 ..D MYSET(.ARY,"PH",5,3)
 .S PHONE=$$HLPHONE^HLFNC($P(NODE,U,11))
 .I $L(PHONE) D
 ..D MYSET(.ARY,PHONE,6)  ;Work phone
 ..D MYSET(.ARY,"WPH",6,2)
 ..D MYSET(.ARY,"PH",6,3)
 .D MYSET(.ARY,K,7)
 .D MYSET(.ARY,$S(K="EC":"Emergency Contact",K="NOK":"Next of Kin",1:""),7,2)
 .S NK1=$$ADDSEG^HLOAPI(.HLST,.ARY,.ERR)
 .I $D(ERR) D NOTIF(DFN,ERR)
 Q
 ;
MFI(SEG) ;EP - FOR MFK RESPONSE TO MFN
 N MFI
 D MYSET(.ARY,"MFI",0)
 I ($G(MFK(SEG,2,1,1,1))="")!($G(MFK(SEG,4,1,1,1))="")!($G(MFK(SEG,7,1,1,1))="") S ERR=1 Q
 D MYSET(.ARY,MFK(SEG,2,1,1,1),1,1,1,1)
 D MYSET(.ARY,MFK(SEG,4,1,1,1),3,1,1,1)
 D MYSET(.ARY,MFK(SEG,7,1,1,1),6,1,1,1)
 ;D MYSET(.ARY,MFK(SEG,8,1,2,1),7,1,2,1)
 S MFI=$$ADDSEG^HLOAPI(.HLST,.ARY)
 Q
 ;
MFA(SEG) ;EP - FOR MFK RESPONSE TO MFN
 N MFA,MFASEG
 S MFASEG=SEG
 ;S MFASEG=SEG+.5
 D MYSET(.ARY,"MFA",0)
 D MYSET(.ARY,$P(MFK(MFASEG),HL1("FS"),2),1)
 D MYSET(.ARY,$P(MFK(MFASEG),HL1("FS"),3),2)
 D MYSET(.ARY,$P(MFK(MFASEG),HL1("FS"),4),3)
 D MYSET(.ARY,$P(MFK(MFASEG),HL1("FS"),5),4)
 S MFA=$$ADDSEG^HLOAPI(.HLST,.ARY)
 Q
 ;
MFE(SEG) ;EP - FOR MFK RESPONSE TO MFN
 N MFE
 D MYSET(.ARY,"MFE",0)
 I ($G(MFK(SEG,2,1,1,1))="")!($G(MFK(SEG,3,1,1,1))="")!($G(MFK(SEG,4,1,1,1))="")!($G(MFK(SEG,5,1,1,1))="") S ERR=1 Q
 I ($G(MFK(SEG,5,1,2,1))="")!($G(MFK(SEG,5,1,4,1))="")!($G(MFK(SEG,5,1,5,1))="") S ERR=1 Q
 D MYSET(.ARY,MFK(SEG,2,1,1,1),1,1,1,1)
 D MYSET(.ARY,MFK(SEG,3,1,1,1),2,1,1,1)
 D MYSET(.ARY,MFK(SEG,4,1,1,1),3,1,1,1)
 D MYSET(.ARY,MFK(SEG,5,1,1,1),4,1,1,1)
 D MYSET(.ARY,MFK(SEG,5,1,2,1),4,1,2,1)
 D MYSET(.ARY,MFK(SEG,5,1,4,1),4,1,4,1)
 D MYSET(.ARY,MFK(SEG,5,1,5,1),4,1,5,1)
 S MFE=$$ADDSEG^HLOAPI(.HLST,.ARY)
 Q
 ;SET(SEG,VALUE,FIELD,REP,COMP,SUBCOMP)
 ;THIS LOOKS MORE LIKE HOW THE ARRAY WILL APPEAR
 ;IT ALSO MATCHES THE AGMPPARS V1.6 MESSAGE PARSER'S GENERIC OUTPUT
MYSET(ARY,V,F,R,C,S) ;EP
 D SET^HLOAPI(.ARY,.V,.F,.C,.S,.R)
 Q