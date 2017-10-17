BSTSDSP ;GDIT/HSCD/BEE-Display BSTS information ; 27 Mar 2015  11:35 AM
 ;;2.0;IHS STANDARD TERMINOLOGY;**1**;Dec 01, 2016;Build 36
 ;
DSP(SERV) ; EP
 ;
 I $G(SERV)="" Q
 ;
 NEW DIR,X,Y,DTOUT,DUOUT,POP,PRCDT,ERRDT,DIRUT,DIROUT,ANS
 ;
 ;Clear screen
DSP1 W:$G(IOF)]"" @IOF
 ;
 W "BSTS REPORTING"
 W !!,"Select the information to display",!
 S DIR(0)="LO^1:6"
 S DIR("A")="Select number or return to quit"
 S DIR("A",1)="1.  Current BSTS status display"
 S DIR("A",2)="2.  BSTS codeset versions"
 S DIR("A",3)="3.  Current BSTS processing queue"
 S DIR("A",4)="4.  BSTS process history"
 S DIR("A",5)="5.  BSTS error listing"
 S DIR("A",6)="6.  All of the above information"
 S DIR("A",7)=" "
 D ^DIR
 I Y="" Q
 I $G(DTOUT)!$G(DUOUT)!$G(DIRUT)!$G(DIROUT) Q
 S ANS=+Y
 ;
 ;Prompt for process history days
 I (ANS=4)!(ANS=6) S PRCDT=$$DATE("completed processes from date") Q:'PRCDT
 ;
 ;Prompt for error listing days
 I (ANS=5)!(ANS=6) S ERRDT=$$DATE("error listing from date") Q:'ERRDT
 ;
 ;Get maximum errors to display
 I (ANS=5)!(ANS=6) S ERMAX=$$EMAX() Q:'ERMAX
 ;
 ;Get device
 S POP="" D ^%ZIS I POP Q
 U IO
 ;
 NEW BSTSRPT
 ;
 ;Current BSTS status display
 I (ANS=1)!(ANS=6) D SET(SERV,.BSTSRPT)
 ;
 ;Current codeset versions
 I (ANS=2)!(ANS=6) D VRSN(.BSTSRPT)
 ;
 ;Current processing queue
 I (ANS=3)!(ANS=6) D QUEUE(.BSTSRPT)
 ;
 ;Process history
 I (ANS=4)!(ANS=6) D HIST(.BSTSRPT,PRCDT)
 ;
 ;Error listing
 I (ANS=5)!(ANS=6) D ELIST(.BSTSRPT,ERRDT,SERV,ERMAX)
 ;
 S CT=+$O(BSTSRPT(""),-1)
 S CT=CT+1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)="<END OF REPORT>"
 ;
 ;Display the report
 D EN^DDIOL(.BSTSRPT)
 ;
 ;Close the device
 D ^%ZISC
 ;
 I $D(IOST),IOST["C-",'$D(DIRUT),'$D(DTOUT) D
 . NEW DIR,X,Y
 . W ! S DIR(0)="E",DIR("A")="Press 'Return to continue'" D ^DIR
 ;
 G DSP1
 ;
VRSN(BSTSRPT) ;Display current codeset version information
 ;
 NEW CT,CODE,IEN,SPACE
 ;
 S $P(SPACE," ",80)=" "
 ;
 ;Get latest entry
 S CT=+$O(BSTSRPT(""),-1)
 ;
 S:CT=0 CT=1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)="Current BSTS Codeset Version Information:"
 S CT=CT+1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT,"F")="!?0",BSTSRPT(CT)=$E(SPACE,1,6)_$E(SPACE,1,20)_$E("CURRENT"_SPACE,1,12)_$E("COMPLETED"_SPACE,1,14)_$E("SUBSET"_SPACE,1,12)
 S CT=CT+1,BSTSRPT(CT,"F")="!?0",BSTSRPT(CT)=$E("CODE"_SPACE,1,6)_$E("CODESET"_SPACE,1,20)_$E("VERSION"_SPACE,1,12)_$E("CHECKS"_SPACE,1,14)_$E("RUN"_SPACE,1,12)
 ;
 S CODE="" F  S CODE=$O(^BSTS(9002318.1,"B",CODE)) Q:CODE=""  D
 . S IEN="" F  S IEN=$O(^BSTS(9002318.1,"B",CODE,IEN)) Q:IEN=""  D
 .. NEW NAME,CVRSN,LVCHK,LSCHK
 .. ;
 .. S NAME=$$GET1^DIQ(9002318.1,IEN_",",.02) Q:NAME=""
 .. S CVRSN=$$GET1^DIQ(9002318.1,IEN_",",.04)
 .. S LVCHK=$$GET1^DIQ(9002318.1,IEN_",",.05,"I") S:LVCHK]"" LVCHK=$$FMTE^XLFDT(LVCHK,"2ZD")
 .. S LSCHK=$$GET1^DIQ(9002318.1,IEN_",",.1,"I") S:LSCHK]"" LSCHK=$$FMTE^XLFDT(LSCHK,"2ZD")
 .. ;
 .. S CT=CT+1,BSTSRPT(CT,"F")="!?0",BSTSRPT(CT)=$E(CODE_SPACE,1,6)_$E(NAME_SPACE,1,20)_$E(CVRSN_SPACE,1,12)_$E(LVCHK_SPACE,1,14)_$E(LSCHK_SPACE,1,12)
 ;
 Q
 ;
QUEUE(BSTSRPT) ;Display processing queue
 ;
 NEW IEN,CT,SPACE,QIEN,ZT1,ZTS,TFND
 ;
 S $P(SPACE," ",80)=" "
 ;
 ;Get latest entry
 S CT=+$O(BSTSRPT(""),-1)
 ;
 S:CT=0 CT=1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)="Current BSTS Processing Queue:"
 S CT=CT+1,BSTSRPT(CT)=" "
 ;
 ;Check if entry present
 I '$O(^XTMP("BSTSPROCQ",0)) D
 . S CT=CT+1,BSTSRPT(CT)="No entries currently scheduled to run"
 . S CT=CT+1,BSTSRPT(CT)=" "
 ;
 ;Output Header
 I $O(^XTMP("BSTSPROCQ",0)) D
 . S CT=CT+1,BSTSRPT(CT)=$E("UPDATE TASK"_SPACE,1,25)_$E("SCHEDULED"_SPACE,1,16)_$E("STARTED"_SPACE,1,16)
 . ;
 . ;Loop through entries
 . S QIEN=0 F  S QIEN=$O(^XTMP("BSTSPROCQ",QIEN)) Q:'QIEN  D
 .. ;
 .. ;Process each entry
 .. D PRCENTRY(.BSTSRPT,QIEN,"")
 ;
 S:CT=0 CT=1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)="Scheduled TaskMan BSTS processes:"
 S CT=CT+1,BSTSRPT(CT)="(It is normal for a process to be scheduled to run more than once)"
 S CT=CT+1,BSTSRPT(CT)=" "
 ;
 ;Get Taskman Processes
 S TFND="",ZT1=$$H3^%ZTM($H) F  S ZT1=$O(^%ZTSCH(ZT1)) Q:'ZT1  D
 . S ZTS=0 F  S ZTS=$O(^%ZTSCH(ZT1,ZTS)) Q:'ZTS  D
 .. ;
 .. NEW TASKND,SCHDT,RUNDT
 .. ;
 .. ;Get the task
 .. S TASKND=$G(^%ZTSK(ZTS,0)) Q:TASKND=""
 .. I $P(TASKND,U,2)'="BSTSVOFL",$P(TASKND,U,2)'="BSTSVOF1",$P(TASKND,U,2)'="BSTSVRSN" Q
 .. ;
 .. ;Output Header
 .. I 'TFND S CT=CT+1,BSTSRPT(CT)=$E("TASKMAN TASK"_SPACE,1,25)_$E("SCHEDULED"_SPACE,1,16)_$E("RUN AT"_SPACE,1,16)
 .. ;
 .. S SCHDT=$$HTFM^XLFDT($P(TASKND,U,5))
 .. S RUNDT=$$HTFM^XLFDT($P(TASKND,U,6))
 .. S TFND=1
 .. ;
 .. S CT=CT+1,BSTSRPT(CT)=$E($P(TASKND,U)_"^"_$P(TASKND,U,2)_SPACE,1,25)_$E($$FMTE^XLFDT(SCHDT,"2ZM")_SPACE,1,16)_$E($$FMTE^XLFDT(RUNDT,"2ZM")_SPACE,1,16)
 ;
 I 'TFND D
 . S CT=CT+1,BSTSRPT(CT)="No scheduled TaskMan tasks"
 ;
 Q
 ;
HIST(BSTSRPT,BDT) ;Display process history
 ;
 NEW IEN,CT,SPACE,PDATE,QIEN,FND
 ;
 S $P(SPACE," ",80)=" "
 ;
 ;Get latest entry
 S CT=+$O(BSTSRPT(""),-1)
 ;
 S:CT=0 CT=1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)="BSTS Processing History: "_$$FMTE^XLFDT(BDT,"2ZD")_" to present"
 S CT=CT+1,BSTSRPT(CT)=" "
 ;
 ;Check if entry present
 I '$D(^XTMP("BSTSPROCQ","PD")) D  Q
 . S CT=CT+1,BSTSRPT(CT)="No automatic BSTS tasks have been run"
 ;
 ;Output Header
 S CT=CT+1,BSTSRPT(CT)=$E("UPDATE"_SPACE,1,25)_$E("SCHEDULED"_SPACE,1,16)_$E("STARTED"_SPACE,1,16)_$E("COMPLETED"_SPACE,1,16)
 ;
 ;Loop through entries
 S PDATE="" F  S PDATE=$O(^XTMP("BSTSPROCQ","PD",PDATE),-1) Q:PDATE=""!(PDATE<BDT)  D
 . S QIEN="" F  S QIEN=$O(^XTMP("BSTSPROCQ","PD",PDATE,QIEN),-1) Q:'QIEN  D
 .. ;
 .. ;Process each entry
 .. D PRCENTRY(.BSTSRPT,QIEN,"P")
 ;
 ;Check if manual history entry present
 ;
 ;Output Header
 ;
 ;Loop through entries
 S (FND,PDATE)="" F  S PDATE=$O(^XTMP("BSTSPROCQ","M","D",PDATE),-1) Q:PDATE=""!(PDATE<BDT)  D
 . S QIEN="" F  S QIEN=$O(^XTMP("BSTSPROCQ","M","D",PDATE,QIEN),-1) Q:'QIEN  D
 .. ;
 .. NEW XDATE,MNODE,MUSER,MACT
 .. ;
 .. ;Process each entry
 .. S MNODE=$G(^XTMP("BSTSPROCQ","M",QIEN))
 .. S MUSER=$E($P(MNODE,U,2),1,25)
 .. S MACT=$E($P(MNODE,U,3),1,35)
 .. S XDATE=PDATE S:XDATE]"" XDATE=$$FMTE^XLFDT(XDATE,"2ZM")
 .. ;
 .. ;Display header
 .. I 'FND D
 ... S CT=CT+1,BSTSRPT(CT)=" "
 ... S CT=CT+1,BSTSRPT(CT)="Manual Processes"
 ... S CT=CT+1,BSTSRPT(CT)=" "
 ... S CT=CT+1,BSTSRPT(CT)=$E("STARTED"_SPACE,1,16)_$E("USER"_SPACE,1,25)_$E("ACTION"_SPACE,1,35)
 .. S CT=CT+1,BSTSRPT(CT)=$E(XDATE_SPACE,1,16)_$E(MUSER_SPACE,1,25)_$E(MACT_SPACE,1,35),FND=1
 ;
 Q
 ;
ELIST(BSTSRPT,BDT,SERV,ERMAX) ;Display error listing
 ;
 NEW IEN,CT,SPACE,PDATE,EIEN,MAX
 ;
 S $P(SPACE," ",80)=" ",MAX=1
 ;
 ;Get latest entry
 S CT=+$O(BSTSRPT(""),-1)
 ;
 S:CT=0 CT=1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)="BSTS error listing: "_$$FMTE^XLFDT(BDT,"2ZD")_" to present. Last "_ERMAX_" errors"
 S CT=CT+1,BSTSRPT(CT)=" "
 ;
 ;Check if entry present
 I '$D(^BSTS(9002318.2,SERV,5,"B")) D  Q
 . S CT=CT+1,BSTSRPT(CT)="No errors recorded during that specified time period"
 ;
 ;Output Header
 S CT=CT+1,BSTSRPT(CT)=$E("ERROR DATE"_SPACE,1,16)_$E("ERROR MESSAGE"_SPACE,1,25)
 ;
 ;Loop through entries
 S PDATE="" F  S PDATE=$O(^BSTS(9002318.2,SERV,5,"B",PDATE),-1) Q:PDATE=""!(PDATE<BDT)  D  Q:MAX'<ERMAX
 . S EIEN="" F  S EIEN=$O(^BSTS(9002318.2,SERV,5,"B",PDATE,EIEN),-1) Q:'EIEN  D  Q:MAX'<ERMAX
 .. ;
 .. NEW XDATE,DA,IENS,TMSG,TIME
 .. ;
 .. ;Process each entry
 .. S XDATE=PDATE S:XDATE]"" XDATE=$$FMTE^XLFDT(XDATE,"2ZM")
 .. S DA(1)=SERV,DA=EIEN,IENS=$$IENS^DILF(.DA)
 .. S TMSG=$$GET1^DIQ(9002318.25,IENS,".02","I")
 .. ;
 .. S CT=CT+1,BSTSRPT(CT)=$E(XDATE_SPACE,1,16)_$E(TMSG_SPACE,1,60)
 .. F  S TMSG=$E(TMSG,61,$L(TMSG)) Q:TMSG=""  D
 ... S CT=CT+1,BSTSRPT(CT,"F")="!?16"
 ... S BSTSRPT(CT)=$E(TMSG,1,60)
 ... S MAX=MAX+1
 ;
 Q
 ;
PRCENTRY(BSTSRPT,QIEN,TYPE) ;Format one BSTS task entry
 ;
 S TYPE=$G(TYPE)
 ;
 NEW SPACE,ENTRY,UPDATE,START,SCHED,END
 ;
 S $P(SPACE," ",80)=" "
 ;
 ;Pull entry information
 I $G(TYPE)'="P" M ENTRY=^XTMP("BSTSPROCQ",QIEN)  ;Queued entry
 E  M ENTRY=^XTMP("BSTSPROCQ","P",QIEN)  ;Completed entry
 ;
 S UPDATE=$G(ENTRY("RTN")) I $TR(UPDATE," ")="" Q
 S SCHED=$G(ENTRY("SCHED")) S:SCHED]"" SCHED=$$FMTE^XLFDT(SCHED,"2ZM")
 S START=$G(ENTRY("START")) S:START]"" START=$$FMTE^XLFDT(START,"2ZM")
 S END=$G(ENTRY("END")) S:END]"" END=$$FMTE^XLFDT(END,"2ZM")
 ;
 S CT=CT+1,BSTSRPT(CT)=$E(UPDATE_SPACE,1,25)_$E(SCHED_SPACE,1,16)_$E(START_SPACE,1,16)_$S(END]"":$E(END_SPACE,1,16),1:"")
 Q
 ;
DATE(PROMPT,DEF,FDT) ;Prompt for from date
 ;
 I $G(PROMPT)="" Q ""
 S DEF=$G(DEF)
 S FDT=$G(FDT)
 ;
 NEW DIR,DTOUT,DUOUT,DIRUT,DIROUT,X,Y
 ;
DT1 W !
 S DIR(0)="D^:"_DT_"^"
 S DIR("A")="Display "_PROMPT_": "
 I DEF]"" S DIR("B")=DEF
 E  S DIR("B")="T-7"
 D ^DIR
 I Y="" Q ""
 I $G(DTOUT)!$G(DUOUT)!$G(DIRUT)!$G(DIROUT) Q ""
 ;
 ;Check for future dates
 I FDT]"",Y<FDT W !!,"<TO Date Must Be After From Date>" H 3 G DT1
 ;
 Q Y
 ;
EMAX() ;Prompt for maximum errors to display
 ;
 NEW DIR,DTOUT,DUOUT,DIRUT,DIROUT,X,Y
 ;
 W !
 S DIR(0)="N^1:9999:4"
 S DIR("A")="Maximum number of errors to return: "
 S DIR("B")="25"
 D ^DIR
 I Y="" Q ""
 I $G(DTOUT)!$G(DUOUT)!$G(DIRUT)!$G(DIROUT) Q ""
 ;
 Q Y
 ;
SET(SERV,BSTSRPT) ;Return site/server settings
 ;
 I '+$G(SERV) Q
 ;
 NEW SDATA,DTSON,CT,FLD,SIEN
 ;
 S SDATA=^BSTS(9002318.2,SERV,0)
 S DTSON=$P(SDATA,"^",13)
 I DTSON="" D
 . D CHK^BSTSSTA
 . S SDATA=^BSTS(9002318.2,SERV,0)
 . S DTSON=$P(SDATA,"^",13)
 ;
 ;Get latest entry
 S CT=+$O(BSTSRPT(""),-1)
 ;
 S:CT=0 CT=1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(1)="Current Server Status:"
 S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="Web Service: "
 S CT=CT+1,BSTSRPT(CT,"F")="?25",BSTSRPT(CT)=$P(SDATA,"^",1)
 S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="Current Status: "
 S CT=CT+1,BSTSRPT(CT,"F")="?25",BSTSRPT(CT)=$S(DTSON="":"ONLINE",1:"OFFLINE")
 S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="Offline Until: "
 S CT=CT+1,BSTSRPT(CT,"F")="?25",BSTSRPT(CT)=$S(DTSON="":"N/A",1:$$FMTE^XLFDT(DTSON))
 S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="Last Error Message: "
 S CT=CT+1,BSTSRPT(CT,"F")="?25",BSTSRPT(CT)=$S(DTSON="":"N/A",1:$$GET1^DIQ(9002318.2,SERV_",",3,"E"))
 ;
 ;Check if any processes are running
 L +^BSTS(9002318.1,0):0 E  D
 . S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="Background process: "
 . S CT=CT+1,BSTSRPT(CT,"F")="?25",BSTSRPT(CT)=$P($G(^XTMP("BSTSLCMP",0)),U,3)
 . I $G(^XTMP("BSTSLCMP","STS"))]"" S CT=CT+1,BSTSRPT(CT,"F")="!?25",BSTSRPT(CT)=$G(^XTMP("BSTSLCMP","STS"))
 L -^BSTS(9002318.1,0)
 ;
 ;Check if Description Id Population Utility is running
 L +^XTMP("BSTSCFIX"):0 E  D
 . NEW RUN
 . S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="Background process: "
 . S CT=CT+1,BSTSRPT(CT,"F")="?25",BSTSRPT(CT)="Description Id Population Utility is running"
 . S RUN=$G(^XTMP("BSTSCFIX","RUN")) Q:RUN=""
 . I $G(^XTMP("BSTSCFIX",RUN,"STS"))]"" S CT=CT+1,BSTSRPT(CT,"F")="!?25",BSTSRPT(CT)=$G(^XTMP("BSTSCFIX",RUN,"STS"))
 L -^XTMP("BSTSCFIX")
 ;
 ;Check if ICD9 to SNOMED process is running
 L +^TMP("BSTSICD2SMD"):0 E  D
 . S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="Background process: "
 . S CT=CT+1,BSTSRPT(CT,"F")="?25",BSTSRPT(CT)="ICD9 to SNOMED process is running"
 L -^TMP("BSTSICD2SMD")
 ;
 ;Check if install conversion process is running
 L +^TMP("BSTSPBFH"):0 E  D
 . S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="Background process: "
 . S CT=CT+1,BSTSRPT(CT,"F")="?25",BSTSRPT(CT)="Installation conversion process is running"
 L -^TMP("BSTSPBFH")
 ;
 S CT=CT+1,BSTSRPT(CT,"F")="!!",BSTSRPT(CT)="Current Server Settings: "
 S CT=CT+1,BSTSRPT(CT)=" "
 ;
 ;Site Parameters
 S CT=CT+1,BSTSRPT(CT,"F")="!!",BSTSRPT(CT)="Site Parameters"
 S CT=CT+1,BSTSRPT(CT)=" "
 F FLD=.01,.02,.03 D
 . S CT=CT+1,BSTSRPT(CT,"F")="!?2",BSTSRPT(CT)=$P($G(^DD(9002318,FLD,0)),U)_": "
 . S CT=CT+1,BSTSRPT(CT,"F")="?32",BSTSRPT(CT)=$$GET1^DIQ(9002318,"1,",FLD,"E")
 S SIEN=0 F  S SIEN=$O(^BSTS(9002318,1,1,SIEN)) Q:'SIEN  D
 . F FLD=.01,.02,.03 D
 .. NEW IENS,DA
 .. S DA(1)=1,DA=SIEN,IENS=$$IENS^DILF(.DA)
 .. I FLD=.01 S CT=CT+1,BSTSRPT(CT)=" "
 .. S CT=CT+1,BSTSRPT(CT,"F")="!?2",BSTSRPT(CT)=$P($G(^DD(9002318.01,FLD,0)),U)_": "
 .. S CT=CT+1,BSTSRPT(CT,"F")="?32",BSTSRPT(CT)=$$GET1^DIQ(9002318.01,IENS,FLD,"E")
 ;
 ;Web Service
 S CT=CT+1,BSTSRPT(CT,"F")="!!",BSTSRPT(CT)="Selected Web Service"
 S CT=CT+1,BSTSRPT(CT)=" "
 F FLD=.01,.02,.03,.04,.05,.06,.07,.08,.09,.1,.11,.12,.13,.14,.15,2.01,4.01,4.02,4.03 D
 . S CT=CT+1,BSTSRPT(CT,"F")="!?2",BSTSRPT(CT)=$P($G(^DD(9002318.2,FLD,0)),U)_": "
 . S CT=CT+1,BSTSRPT(CT,"F")="?32",BSTSRPT(CT)=$$GET1^DIQ(9002318.2,SERV_",",FLD,"E")
 ;
 Q
