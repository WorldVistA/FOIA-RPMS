BLRSHPM ;cmi/anch/maw - BLR Reference Lab Shipping Manifest Others ; 22-Apr-2016 15:14 ; MAW
 ;;5.2;IHS LABORATORY;**1027,1031,1033,1034,1036,1039,1040**;NOV 01, 1997;Build 5
 ;
 ;10/17/2005 cmi/anch/maw added reprint of shipping manifest
 ;3/28/2006 cmi/anch/maw added device close before print and before storing
 ;8/2/2006 cmi/anch/maw added telephone number for labcorp per DKR
 ;5/16/2007 cmi/anch/maw made changes to layout in WRTS
 ;12/12/2007 cmi/anch/maw split order comment print in WRTS
 ;2/4/2008 cmi/anch/maw added sort on UID and added home phone to manifest
 ;2/26/2008 cmi/anch/maw added lab reference number and shipping manifest custom header
 ;4/4/2008 cmi/anch/maw added dx and insurance info
 ;7/29/2008 cmi/anch/maw added lab shipping instructions
 ;8/28/2008 cmi/anch/maw added call to go to quest manifest
 ;10/1/2008 cmi/anch/maw masked all but 4 digits on SSN at labcorp request
 ;09/19/2013 msc/mkk - missing variables reset subroutine P1031FIX.
 ;
PRT(RE,CP) ;EP - print shipping manifest
 ;ihs/cmi/maw PATCH 1033 10/24/2013 added since LRUID is not there sometimes after patch 1031
 I $G(LRUID),'$G(RE) G:$D(^BLRSHPM("B",LRUID)) EOJ      ; Quit if Accession exists in ^BLRSHPM because it's already been printed
 ;
 I $G(LRUID) D P1031FIX   ; IHS/MSC/MKK - LR*5.2*1033/1034
 I $P($G(^BLRRL($P($G(^BLRSITE($S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),"RL")),U),0)),U)["LABCORP" D  Q  ;go to the Quest Manifest
 . D PRT^BLRSHPML(CP)
 Q:'$D(^TMP("BLRRL",$J))  ;don't print shipping manifest if no data
 W:'+$G(BLRAGUI) !!,"Now printing shipping manifest for this accession"
 D ^%ZISC  ;maw 3/28/2006
 I '$G(CP) S CP=1
 U $$DEV
 F I=1:1:CP D
 . D NEWPRT
 . I $G(CP)>1 W @IOF
 D ^%ZISC  ;maw 3/28/2006
 I I=1 D STOR(.BLRSHIEN,^TMP("BLRRL",$J,"COMMON","UID"))  ;store the shipping manifest as well as print
 D EOJ
 Q
 ;
NEWPRT  ;-- now want copies
 S BLRFAC=$$GET1^DIQ(9999999.06,$S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),.01)
 S BLRSTR=$$GET1^DIQ(9999999.06,$S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),.14)
 S BLRCTY=$$GET1^DIQ(9999999.06,$S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),.15)
 S BLRST=$$GET1^DIQ(9999999.06,$S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),.16)
 S BLRZIP=$$GET1^DIQ(9999999.06,$S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),.17)
 N BLRPH
 S BLRPH=$$GET1^DIQ(9999999.06,$S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),.13)
 S BLRCHT=$$HRN^AUPNPAT(^TMP("BLRRL",$J,"COMMON","PAT"),DUZ(2))
 S BLRURG=$P($G(^LAB(62.05,^TMP("BLRRL",$J,"COMMON","URG"),0)),U)
 S BLRPGC=$$GETPG
 S BLRNPG=1
 D ALL
 Q
 ;
ALL ;-- run all sub routines after initial vars
 D XHDR
 D PHDR
 D WRTS
 Q
 ;
STOR(BLRSHIEN,ACC) ;-- this will store the shipping manifest
 Q:$D(^BLRSHPM("B",ACC))  ; Skip if already stored
 N BLRFDA,BLRIENS,BLRERR
 S BLRIENS=""
 S BLRFDA(9009026.2,"+1,",.01)=ACC
 S BLRFDA(9009026.2,"+1,",.02)=DUZ
 S BLRFDA(9009026.2,"+1,",.03)=DT
 D UPDATE^DIE("","BLRFDA","BLRIENS","BLRERR(1)")
 I $D(BLRERR(1)) S BLRSHIEN=0 Q
 S BLRSHIEN=+BLRIENS(1)
 K ^TMP($J,"BLRSHPM")  ;cmi/anch/maw 4/4/2006
 D GUIR^XBLM("ALL^BLRSHPM","^TMP($J,""BLRSHPM"",")
 N X
 S X=0,C=0 F  S X=$O(^TMP($J,"BLRSHPM",X)) Q:X'=+X  D
 . S ^BLRSHPM(BLRSHIEN,11,X,0)=^TMP($J,"BLRSHPM",X),C=C+1
 S ^BLRSHPM(BLRSHIEN,11,0)="^^"_C_"^"_C_"^"_DT_"^"
 S DA=BLRSHIEN,DIK="^BLRSHPM(" D IX1^DIK
 Q
 ;
SPHDR ;-- sub patient header
 Q:'$P($G(^BLRSITE(DUZ(2),"RLA")),U,17)
PHDR ;-- write the common stuff to the device
 W !!,"ORDER (Control): "_^TMP("BLRRL",$J,"COMMON","ORD")
 W ?30,"ORDER DATE: "_$$FMTE^XLFDT(^TMP("BLRRL",$J,"COMMON","ODT"))
 W ?60,"MID: "_$$MID(+$G(BHLMSG))
 W !,"PATIENT: "_$P($G(^DPT(^TMP("BLRRL",$J,"COMMON","PAT"),0)),U)
 W ?30,"CHART (Patient ID): "_$$LZERO(BLRCHT,6),?60,"PHONE: "_$S($P($G(^BLRSITE(DUZ(2),"RL")),U,17):$P($G(^DPT(^TMP("BLRRL",$J,"COMMON","PAT"),.13)),U),1:"")  ;cmi/maw 2/4/2008 added home phone
 ; W !,"SEX: "_$G(SEX),?10,"DOB: "_$G(DOB),?30,"SSN: "_$S($P($G(^DPT(^TMP("BLRRL",$J,"COMMON","PAT"),0)),U,9)]"":"XXX-XX-"_$E($P($G(^DPT(^TMP("BLRRL",$J,"COMMON","PAT"),0)),U,9),6,9),1:"NOT ON FILE")  ;cmi/maw 10/1/08 mask ssn
 ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1031
 ;       DOB must be in human-readable format
 W !,"SEX: "_$G(SEX),?10,"DOB: "_$S(+$G(DOB)>1950101:$$FMTE^XLFDT(DOB),1:$G(DOB))
 W ?30,"SSN: "_$S($P($G(^DPT(^TMP("BLRRL",$J,"COMMON","PAT"),0)),U,9)]"":"XXX-XX-"_$E($P($G(^DPT(^TMP("BLRRL",$J,"COMMON","PAT"),0)),U,9),6,9),1:"NOT ON FILE")
 ; ----- END IHS/MSC/MKK - LR*5.2*1031
 ;W !,"LOCATION: "_^TMP("BLRRL",$J,"COMMON","LOC"),?55,"Bill Type: Client" cmi/maw 10/31/07 orig line
 W !,"LOCATION: "_^TMP("BLRRL",$J,"COMMON","LOC")
 W ?30,"BILL TYPE: "_$S($E($G(^TMP("BLRRL",$J,"COMMON","BILL TYPE")),1,1)="T":$G(^TMP("BLRRL",$J,"COMMON","INSTYP")),$E($G(^TMP("BLRRL",$J,"COMMON","BILL TYPE")),1,1)="P":"Patient",1:"Client")  ;cmi/maw 10/31/07 new line
 ;cmi/maw 2/29/2008 added UPIN/NPI print based on site parameter
 W !,"PRACTITIONER: "_$P(^TMP("BLRRL",$J,"COMMON","ORDPNM"),U)_", "_$P(^TMP("BLRRL",$J,"COMMON","ORDPNM"),U,2)
 W ?55,$S($P($G(^BLRSITE($S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),"RL")),U,19)="N":"NPI: "_$G(^TMP("BLRRL",$J,"COMMON","ORDPNPI")),1:"UPIN: "_$G(^TMP("BLRRL",$J,"COMMON","ORDPUPIN")))
 W !,"LAB ARRIVAL (COLLECTION DATE/TIME): "_$$FMTE^XLFDT(^TMP("BLRRL",$J,"COMMON","CDT"))
 Q
 ;
 ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1033
P1031FIX ; EP - Forcefully reset AGE, DOB, ORDNUM, and SEX variables
 NEW ALLGOOD,DFN,LRAA,LRAD,LRAN,LRAS,LRDFN,LRIDT,LRSS,ORDNUM
 ;
 ; Check to see if all variables okay
 S ALLGOOD=1
 S:$G(SEX)="" ALLGOOD=0
 S:+$G(DOB)<1 ALLGOOD=0
 S:+$G(AGE)<1 ALLGOOD=0
 S:+$G(BLRRL("ORD"))<1 ALLGOOD=0
 S:+$G(^TMP("BLRRL",$J,"COMMON","ORD"))<1 ALLGOOD=0
 Q:ALLGOOD    ; All variables set - just return
 ; 
 D RETACCV^BLRUTIL4(LRUID,.LRAA,.LRAD,.LRAN,.LRDFN,.LRSS,.LRIDT,.LRAS)
 Q:LRAA<1!(LRAD<1)!(LRAN<1)!(LRDFN<1)            ; If any Accession variables null, then exit
 ;
 Q:$$GET1^DIQ(63,LRDFN,"PARENT FILE","I")'=2     ; If data not from VA PATIENT file, then exit
 ;
 S DFN=$$GET1^DIQ(63,LRDFN,"NAME","I")           ; Get Patient IEN from Lab Data (#63) File
 ; Set AGE, DOB & SEX (if missing) from VA Patient (#2) File
 S:$G(SEX)="" SEX=$$SEX^AUPNPAT(DFN)
 S:+$G(DOB)<1 DOB=$$DOB^AUPNPAT(DFN)
 S:+$G(AGE)<1 AGE=$$AGE^AUPNPAT(DFN)
 ;
 ; Get Order # from Accession (#68) File
 S ORDNUM=+$$GET1^DIQ(68.02,LRAN_","_LRAD_","_LRAA_",","ORDER #")
 Q:ORDNUM<1   ; If order # is zero, can't reset, so just return
 ;
 ; Set Order number (if missing)
 S:+$G(BLRRL("ORD"))<1 BLRRL("ORD")=ORDNUM
 S:+$G(^TMP("BLRRL",$J,"COMMON","ORD"))<1 ^TMP("BLRRL",$J,"COMMON","ORD")=ORDNUM
 Q
 ; ----- END IHS/MSC/MKK - LR*5.2*1033
 ;
WRTS ;-- write the output to the device
 N BLRDA,BLRIEN
 S BLRDA=0 F  S BLRDA=$O(^TMP("BLRRL",$J,BLRDA)) Q:BLRDA=""  D
 . Q:BLRDA="COMMON"
 . S BLRSAMP=$P($G(^LAB(62,^TMP("BLRRL",$J,BLRDA,"SAMP"),0)),U)
 . ;I $Y+($$CHKOEQ(BLRDA))>IOSL D XHDR Q:$D(DIRUT)  ; p1039 ,PHDR Q:$G(DIRUT)
 . I $Y+($$CHKOEQ(BLRDA))>IOSL D XHDR,SPHDR Q:$D(DIRUT)  ; p1039 ,PHDR Q:$G(DIRUT) p1040 added SPHDR
 . I $Y+2>IOSL D XHDR,SPHDR Q:$D(DIRUT)  ;p1039 ,PHDR Q:$G(DIRUT)
 . W !!!,"TEST NAME: "_$P(^TMP("BLRRL",$J,BLRDA,"TCNM"),U,2)_" ("_$P(^TMP("BLRRL",$J,BLRDA,"TCNM"),U)_")"
 . W ?45,"SAMPLE: "_BLRSAMP
 . W !,"SOURCE: "_^TMP("BLRRL",$J,BLRDA,"SRC")
 . W ?45,"ACCESSION (Lab Ref#): "_^TMP("BLRRL",$J,BLRDA,"UID")
 . W !,?45,"URGENCY: "_BLRURG
 . W !,"LAB PROCESSING INSTR: "_$$LABINST(BLRDA,^TMP("BLRRL",$J,BLRDA,"SAMP"))
 . I $O(^TMP("BLRRL",$J,BLRDA,"COMMENT",0)) D
 .. W !!,"ORDER ENTRY QUESTIONS: "
 .. N BLRODA
 .. S BLRODA=0 F  S BLRODA=$O(^TMP("BLRRL",$J,BLRDA,"COMMENT",BLRODA)) Q:'BLRODA  D
 ... S ORDC=$G(^TMP("BLRRL",$J,BLRDA,"COMMENT",BLRODA))
 ... W !,?5,$P(ORDC,U,2),!,?5,$P(ORDC,U,3)  ;cmi/maw 12/12/2007 split line here
 . I $O(LRTCOM(BLRDA,0)) D
 .. W !!,"COMMENTS: "
 .. N BLRUDA
 .. S BLRUDA=0 F  S BLRUDA=$O(LRTCOM(BLRDA,BLRUDA)) Q:'BLRUDA  D
 ... Q:$G(LRTCOM(BLRDA,BLRUDA))["For Test"  ;filter
 ... W !,?5,$TR($G(LRTCOM(BLRDA,BLRUDA)),"~")
 . D DX(BLRDA)
 . D INS(BLRDA)
 W !!
 Q
 ;
DX(BDA) ;-- if insurance info print DX
 Q:'$G(BDA)
 Q:'$D(^TMP("BLRRL",$J,"COMMON","DX"))
 W !,"DIAGNOSIS"
 W !,"Diagnosis: ",?25,"DX Description: "
 N DXDA,ORD,ORDI,DXDATA,DXSTR,UID
 S UID=^TMP("BLRRL",$J,BLRDA,"UID")
 I '$G(UID) S UID=LRUID
 S ORD=$O(^BLRRLO("ACC",UID,0))
 S ORDI=0 F  S ORDI=$O(^BLRRLO(ORD,1,ORDI)) Q:'ORDI  D
 . S DXDATA=$P($G(^BLRRLO(ORD,1,ORDI,0)),U)
 . S DXSTR=$S($D(^ICDS(0)):$$ICDDX^ICDEX(DXDATA,DT),1:$$ICDDX^ICDCODE(DXDATA,DT))
 . W !,$P(DXSTR,U,2),?25,$P(DXSTR,U,4)
 Q
 ;
INS(BDA) ;-- if insurance info print insurance
 Q:'$G(BDA)
 Q:'$D(^TMP("BLRRL",$J,"COMMON","INSE"))
 W !!,"INSURANCE"
 W !,"Insurer ID: "_$G(^TMP("BLRRL",$J,BDA,"INSID")),?40,"Insured Name: "_$E($G(^TMP("BLRRL",$J,BDA,"INSNOIE")),1,26)
 W ?68,"Rel: "_$G(^TMP("BLRRL",$J,BDA,"INSRELE"))
 W !,"Insurer Name: ",$E($G(^TMP("BLRRL",$J,BDA,"INSCNME")),1,30),?40,"Insured Add: "_$P($G(^TMP("BLRRL",$J,BDA,"PATADDE")),"~")
 W !,"Insurer Add: ",?54,$P($G(^TMP("BLRRL",$J,BDA,"PATADDE")),"~",2)
 W !,$P($G(^TMP("BLRRL",$J,BDA,"INSADDE")),"~"),?40,"Guarantor: "_$E($G(^TMP("BLRRL",$J,BDA,"GT1NME")),1,25)
 W !,$P($G(^TMP("BLRRL",$J,BDA,"INSADDE")),"~",2),?40,"Guar Add: "_$P($G(^TMP("BLRRL",$J,BDA,"GT1ADDE")),"~")
 W !,"Insurer Group: "_$G(^TMP("BLRRL",$J,BDA,"INSGRP")),?50,$P($G(^TMP("BLRRL",$J,BDA,"GT1ADDE")),"~",2)
 W !,"Insured ID: "_$G(^TMP("BLRRL",$J,BDA,"INSPOL")),?40,"Guarantor Phone: "_$G(^TMP("BLRRL",$J,BDA,"GT1PHO"))
 W !
 N I
 F I=1:1:80 W "-"  ;write hyphens to separate
 Q
 ;
LABINST(TST,SAMP) ;-- get the lab processing instructions
 I '$G(SAMP) Q ""
 N IDA,INST,SAMPI
 I '$D(^LAB(60,TST,3,"B",SAMP)) Q ""
 S SAMPI=$O(^LAB(60,TST,3,"B",SAMP,0))
 I '$G(SAMPI) Q ""
 S INST=""
 S IDA=0 F  S IDA=$O(^LAB(60,TST,3,SAMPI,2,IDA)) Q:'IDA  D
 . S INST=INST_" "_$G(^LAB(60,TST,3,SAMPI,2,IDA,0))
 Q INST
 ;
CHKOEQ(CDA) ;-- check the number of order entry questions to determine lines left
 N BLRLN
 S BLRLN=3
 N BLRCDA,BLRCNT
 S BLRCNT=0
 S BLRCDA=0 F  S BLRCDA=$O(^TMP("BLRRL",$J,CDA,"COMMENT",BLRCDA)) Q:'BLRCDA  D
 . S BLRCNT=BLRCNT+1
 Q $G(BLRLN)+(+$G(BLRCNT))
 ;
GETPG() ;-- lets try and get a page count
 S BLRHDC=8
 S BLRPDC=7
 S BLRWTC=8
 N BLRNDA,BLRNCNT,BLRNIEN,BLRCMCNT,BLRNACC,BLRDXCNT
 S BLRNDA=0,BLRNCNT=0,BLRCMCNT=0,BLRNACC=0,BLRDXCNT=0
 F  S BLRNDA=$O(^TMP("BLRRL",$J,BLRNDA)) Q:'BLRNDA  D
 . S BLRNACC=BLRNACC+1
 . S BLRDXCNT=BLRDXCNT+$$GETDXCNT(BLRNDA)
 . S BLRNIEN=0 F  S BLRNIEN=$O(^TMP("BLRRL",$J,BLRNDA,"COMMENT",BLRNIEN)) Q:'BLRNIEN  D
 .. S BLRCMCNT=BLRCMCNT+1
 S BLRNACC=(BLRWTC*BLRNACC)
 S BLRNCNT=(BLRHDC+BLRPDC+BLRNACC+(+$G(BLRCMCNT)))
 N BLRINSCN,BLRSECC
 I $D(^TMP("BLRRL",$J,"COMMON","INSE")) D
 . S BLRINSCN=11
 S BLRNCNT=BLRNCNT+(+$G(BLRDXCNT)+(+$G(BLRINSCN)))
 S BLRPG=(BLRNCNT/(IOSL-2))
 S BLRPGP=$P(BLRPG,".")
 S BLRPGE=$P(BLRPG,".",2)
 I BLRPGE>0 S BLRPGP=BLRPGP+1
 Q BLRPGP
 ;
GETDXCNT(BDA) ;-- get number of dx to display
 N DXCNT,ORD,ORDI,DXDATA,DXSTR,UID
 S DXCNT=0
 S UID=^TMP("BLRRL",$J,BDA,"UID")
 I '$G(UID) S UID=LRUID
 S ORD=$O(^BLRRLO("ACC",UID,0))
 S ORDI=0 F  S ORDI=$O(^BLRRLO(ORD,1,ORDI)) Q:'ORDI  D
 . S DXCNT=DXCNT+1
 Q DXCNT
 ;
WRT(SDA) ;-- write the output to the device
 S BLRSAMP=$P($G(^LAB(62,RL(SDA,"SAMP"),0)),U)
 W !,"ORDER (CTRL): "_RL("ORD")
 W ?40,"ACCESSION: "_RL(SDA,"ACC")
 W !,"PATIENT: "_$P($G(^DPT(RL("PAT"),0)),U)
 ; W ?40,"SEX: "_$G(SEX),?50,"DOB: "_$G(DOB)
 W ?40,"SEX: "_$G(SEX),?50,"DOB: "_$S(+$G(DOB)>1950101:$$FMTE^XLFDT(DOB),1:$G(DOB)) ; IHS/MSC/MKK - LR*5.2*1031
 W !,"CHART (PATIENT ID): "_BLRCHT
 W !,"LOCATION: "_RL("LOC"),?40,"ORDER DATE: "_$$FMTE^XLFDT(RL("ODT"))
 W !,"PRACTITIONER: "_RL("ORDPNM"),?55,"UPIN: "_$G(RL("ORDPUPIN"))
 W !,"LAB ARRIVAL (COLLECTION DATE): "_$$FMTE^XLFDT(RL("CDT"))
 W ?55,"SAMPLE: "_BLRSAMP
 W !,"TEST NAME: "_$P(RL(SDA,"TCNM"),U,2)_" ("_$P(RL(SDA,"TCNM"),U)_")"
 W ?55,"URGENCY: "_BLRURG
 I $O(RL(SDA,"COMMENT",0)) D
 . W !!,"ORDER ENTRY QUESTIONS: "
 . S BLRODA=0 F  S BLRODA=$O(RL(SDA,"COMMENT",BLRODA)) Q:'BLRODA  D
 .. S ORDC=$G(RL(SDA,"COMMENT",BLRODA))
 .. W !,$P(ORDC,U),?15,$P(ORDC,U,2),?65,$P(ORDC,U,3)
 W !!
 Q
 ;
HDR ;-- this is the header
 K DIR I $E(IOST,1)="C" S DIR(0)="E" D ^DIR I Y<1 S DIRUT=1 Q
XHDR W @IOF
 W !,?28,"INDIAN HEALTH SERVICE EREQ",?65,"PAGE: "_BLRNPG  ;_" of "_BLRPGC 1040
 W !!,"REF LAB NAME: "_$S($P($G(^BLRSITE(DUZ(2),"RL")),U,20)]"":$P(^BLRSITE(DUZ(2),"RL"),U,20),1:$P($G(^BLRRL(^TMP("BLRRL",$J,"COMMON","RL"),0)),U))  ;cmi/maw 2/28/2008 added for custon header on ship manifest.
 W ?40,"CLIENT #: "_^TMP("BLRRL",$J,"COMMON","CLIENT")
 W !
 W !,"FACILITY: "_BLRFAC,?40,$$FMTE^XLFDT($$NOW)
 W !,"ADDRESS: "_BLRSTR_", "_BLRCTY_", "_$$ST(BLRST)_" "_BLRZIP_"  PHONE: "_$G(BLRPH)
 W !
 F BLRI=1:1:80 W "="
 W !
 S BLRNPG=BLRNPG+1   ;cmi/flag/maw increment current page
 Q
 ;
MID(MSG) ;-- get message id
 I 'MSG Q ""
 S MIEN=$O(^INTHU("AT",MSG,0))
 I 'MIEN Q ""
 Q $P($G(^INTHU(MIEN,0)),U,5)_" ("_MIEN_")"
 ;
EOJ ;-- kill vars and quit     
 D ^%ZISC
 K ^TMP("BLRRL",$J)
 K ^TMP($J,"BLRSHPM")  ;cmi/anch/maw 4/4/2006
 K BLRODA,DIRUT,ORDC,BLRSDA,MIEN,MSG,BLRRLCNT,BLRRLASK,BLRRLCLT,BLRRLCLA,BLRRLBTP,BLRDX,BLRDXCNT
 Q
 ;
DEV() ;-- device handler
 ;S DEV=$S($G(^TMP("BLRRL",$J,"COMMON","RL")):$P($G(^BLRRL(^TMP("BLRRL",$J,"COMMON","RL"),0)),U,14),1:"")  ;reference lab file
 S DEV=$S($P($G(^BLRSITE($S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),"RL")),U,2)]"":$P($G(^BLRSITE(DUZ(2),"RL")),U,2),1:"")  ;blr master control file
 I DEV D  Q IO
 . S IOP="`"_DEV
 . D ^%ZIS
 D ^%ZIS
 Q IO
 ;
ST(ST) ;-- get state abbreviation
 I ST="" Q ""
 S BST=$P($G(^DIC(5,ST,0)),U,2)
 Q BST
 ;
NOW() ;-- return now
 D NOW^%DTC
 Q %
 ;
LZERO(V,L) ;EP - left zero fill
 NEW %,I
 S %=$L(V),Z=L-% F I=1:1:Z S V="0"_V
 Q V
 ;
REP ;EP - lets reprint the shipping manifest
 I $P($G(^BLRRL($P($G(^BLRSITE($S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),"RL")),U),0)),U)["QUEST" D  Q  ;go to the Quest Manifest
 . D REP^BLRSHPMQ
 I $P($G(^BLRRL($P($G(^BLRSITE($S($G(BLRALTDZ):BLRALTDZ,1:DUZ(2)),"RL")),U),0)),U)["LABCORP" D  Q  ;go to the Quest Manifest
 . D REP^BLRSHPML
 D ASKS
 I '$G(BLRRIEN) K BLRRIEN Q
 D RPRT(BLRRIEN)
 D ^%ZISC
 K BLRRIEN
 Q
 ;
ASKS ;-- get the ien of the entry
 K DIR
 S DIR(0)="P^9009026.2",DIR("A")="Reprint for which Accession Number (UID) "
 D ^DIR
 Q:$D(DIRUT)
 S BLRRIEN=+Y
 Q
 ;
RPRT(RIEN) ;-- reprint
 U $$DEV
 N BLRDA
 S BLRDA=0 F  S BLRDA=$O(^BLRSHPM(RIEN,11,BLRDA)) Q:'BLRDA  D
 . W !,$G(^BLRSHPM(RIEN,11,BLRDA,0))
 Q
 ;
 ;
 ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1034
TOSCREEN ; EP - Reprint to the screen
 N BLRDA,BLRRIEN,RIEN
 D ASKS
 I '$G(BLRRIEN) K BLRRIEN Q
 ;
 D ^XBCLS
 S BLRDA=0 F  S BLRDA=$O(^BLRSHPM(BLRRIEN,11,BLRDA)) Q:BLRDA<1  D
 . W !,$G(^BLRSHPM(BLRRIEN,11,BLRDA,0))
 ;
 D PRESSKEY^BLRGMENU(9)
 Q
 ; ----- END IHS/MSC/MKK - LR*5.2*1034
