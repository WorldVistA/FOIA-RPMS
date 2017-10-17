BSTSSTA ;GDIT/HSCD/ALA-Check status of a Web Service ; 27 Mar 2015  11:35 AM
 ;;2.0;IHS STANDARD TERMINOLOGY;**1**;Dec 01, 2016;Build 36
 ;
EN ; EP
 ; Select an existing web service and run sample calls for testing
 ;
 NEW DIC,Y,DIR,QUIT,DEBUG,SR,RES,IADT,SCNT,RESULT,DLAYGO,CT,%H
 NEW DIROUT,DIRUT,DTOUT,DUOUT,STS,SERV,SDATA,DTSON,BSTUP,%I,ERROR
 ;
 ;First Select the web service
SRV ;EP
 W !!
 S DIC="^BSTS(9002318.2,",DIC(0)="AEMNZ"
 S DLAYGO=9002318.2 D ^DIC S SERV=+Y
 I SERV=-1 Q
 ;
 ;Check if active
 S IADT=$$GET1^DIQ(9002318.2,SERV_",",".1","I")
 I IADT]"",IADT<DT W !!,"This Web Service is not Active",! H 2 G SRV
 ;
DSP ;EP - Display information
 ;
 NEW BSTSRPT
 ;
 ;Retrieve status information
 D STATUS(SERV,.BSTSRPT)
 ;
 ;Write formfeed
 I $G(IOF)]"" W @IOF
 ;
 D EN^DDIOL(.BSTSRPT)
 K BSTSRPT
 ;
 NEW DIR,X,Y,ANS
 S DIR(0)="LO^1:5"
 S DIR("A")="Select number or return to quit"
 S DIR("A",1)=" "
 S DIR("A",2)="1.  Refresh Current information"
 S DIR("A",3)="2.  Check DTS and Enable if Available"
 S DIR("A",4)="3.  Turn off the DTS Link"
 S DIR("A",5)="4.  Edit Server Settings"
 S DIR("A",6)="5.  Other Options..."
 S DIR("A",7)=" "
 D ^DIR
 I Y="" G SRV
 I $G(DTOUT)!$G(DUOUT)!$G(DIROUT)!$G(DIRUT) G SRV
 S ANS=+Y
 ;
 ;Refresh Display
 I ANS=1 G DSP
 ;
 ;Check Link and Enable
 I ANS=2 D  G DSP
 . NEW SDATA,DTSON
 . S SDATA=^BSTS(9002318.2,SERV,0)
 . S DTSON=$P(SDATA,"^",13)
 . I DTSON="" D CHK Q
 . S BSTUP(9002318.2,SERV_",",.13)="@"
 . S BSTUP(9002318.2,SERV_",",3)="@"
 . D FILE^DIE("","BSTUP","ERROR")
 . D ELOG^BSTSVOFL($$GET1^DIQ(200,DUZ_",",".01","E")_" turned on DTS link from BSTS STS option")
 . D CHK
 ;
 ;Turn off the DTS Link
 I ANS=3 D  G DSP
 . NEW DIR,X,Y,DTOUT,DUOUT,DIROUT,DIRUT
 . S DIR("A")="Turn off the DTS link until"
 . S DIR("A",1)="Enter a date and time more than 10 mins in the future. "
 . S DIR("A",2)="    [Current date and time is "_$$FMTE^XLFDT($$NOW^XLFDT())_"]"
 . S DIR(0)="D^"_$$FMADD^XLFDT($$NOW^XLFDT(),"","",10)_":"_$$FMADD^XLFDT(DT,7)_".2359:ERTX"
 . D ^DIR I $G(DTOUT)!$G(DUOUT)!$G(DIROUT)!$G(DIRUT) Q
 . S BSTUP(9002318.2,SERV_",",.13)=Y
 . D FILE^DIE("","BSTUP","ERROR")
 . D ELOG^BSTSVOFL($$GET1^DIQ(200,DUZ_",",".01","E")_" turned off DTS link from BSTS STS option")
 ;
 ;Edit Server Settings
 I ANS=4 D  G DSP
 . NEW DIE,DA,DR
 . S DIE="^BSTS(9002318.2,",DA=SERV,DR=".14;.12;.15;.05;.16"
 . D ^DIE
 ;
 ;Other Options
 I ANS=5 D DSP1
 ;
 G DSP
 ;
 ;Prompt for other option
DSP1 NEW DIR,X,Y,DTOUT,DUOUT,DIROUT,DIRUT,ANS
 W !!,"Other options menu"
 S DIR(0)="LO^1:6"
 S DIR("A")="Select number or return to quit"
 S DIR("A",1)=" "
 S DIR("A",2)="1.  Run daily update checks"
 S DIR("A",3)="2.  Kick off background process now"
 S DIR("A",4)="3.  Terminate current background process"
 S DIR("A",5)="4.  BSTS reporting..."
 S DIR("A",6)="5.  Retrieve Search History from DTS"
 S DIR("A",7)="6.  Retrieve Log History from DTS"
 S DIR("A",8)=" "
 D ^DIR
 I Y="" Q
 I $G(DTOUT)!$G(DUOUT)!$G(DIROUT)!$G(DIRUT) Q
 S ANS=+Y
 ;
 ;Run daily update checks
 I ANS=1 D  G DSP1
 . W !!,"Running update checks. This may take a minute or two"
 . D DAYCHK^BSTSVOF1(1) W !!,"Daily update checks completed" H 3
 ;
 ;Kick off a daily background process
 I ANS=2 D START G DSP1
 ;
 ;Terminate current background process
 I ANS=3 D STOP G DSP1
 ;
 ;BSTS Reporting
 I ANS=4 D DSP^BSTSDSP(SERV) G DSP1
 ;
 ;Retrieve search history
 I ANS=5 D SRSTRING G DSP1
 ;
 ;Retrieve log history
 I ANS=6 D LGHST^BSTSAPIL G DSP1
 ;
 Q
 ;
 ;Start a background process
START NEW RUN,TRY
 ;
 ;First see if a process is running
 S RUN="" D
 . L +^XTMP("BSTSPROCQ",1):1 E  S RUN=1 Q
 . L -^XTMP("BSTSPROCQ",1)
 . L +^BSTS(9002318.1,0):1 E  S RUN=1 Q
 . L -^BSTS(9002318.1,0)
 . L +^TMP("BSTSICD2SMD"):1 E  S RUN=1 Q
 . L -^TMP("BSTSICD2SMD")
 I RUN=1 W !!,"A background process is currently running" H 3 Q
 ;
 ;Job the process
 D JOBNOW^BSTSVOFL
 ;
 ;See if it started
 W !!,"Attempting to start the background process. This may take several minutes"
 S RUN="" F TRY=1:1:90 D  H 1 Q:RUN
 . ;
 . W "."
 . ;
 . ;See if started
 . L +^XTMP("BSTSPROCQ",1):1 E  S RUN=1 Q
 . L -^XTMP("BSTSPROCQ",1)
 ;
 ;Display status
 I RUN=1 W !!,"Background process has been started" H 3 Q
 E  D
 . W !!,"The background process has been queued but has either not started"
 . W !,"or ran so quickly that its status wasn't captured. Verify Taskman"
 . W !,"is running and run the BSTSMENU/STS option again in a few minutes to see if"
 . W !,"it has started or display a history of completed processes to see if it"
 . W !,"finished already."
 ;
 Q
 ;
 ;Terminate the current background process
STOP NEW TRY,STOP,RUN
 ;
 ;First see if a process is running
 S RUN="" D
 . L +^XTMP("BSTSPROCQ",1):1 E  S RUN=1 Q
 . L -^XTMP("BSTSPROCQ",1)
 . L +^BSTS(9002318.1,0):1 E  S RUN=1 Q
 . L -^BSTS(9002318.1,0)
 . L +^TMP("BSTSICD2SMD"):1 E  S RUN=1 Q
 . L -^TMP("BSTSICD2SMD")
 I RUN="" W !!,"No background process is currently running" H 3 Q
 ;
 ;Set flag to stop the process
 S ^XTMP("BSTSLCMP","QUIT")=1
 S ^XTMP("BSTSPROCQ","QUIT")=1
 ;
 ;Check if process stopped
 W !!,"Attempting to stop the process"
 ;
 S STOP="" F TRY=1:1:90 D  H 1 Q:STOP
 . ;
 . W "."
 . ;
 . ;Attempt to grab possible process lock1
 . L +^XTMP("BSTSPROCQ",1):1 E  Q
 . L -^XTMP("BSTSPROCQ",1)
 . ;
 . ;Attempt to grab possible process lock2
 . L +^BSTS(9002318.1,0):1 E  Q
 . L -^BSTS(9002318.1,0)
 . ;
 . ;Attempt to grab possible process lock3
 . L +^TMP("BSTSICD2SMD"):1 E  Q
 . L -^TMP("BSTSICD2SMD")
 . ;
 . ;No process running
 . S STOP=1
 . ;
 . ;Reset quit flag
 . K ^XTMP("BSTSLCMP","QUIT")
 . K ^XTMP("BSTSPROCQ","QUIT")
 ;
 ;Display status
 I STOP W !!,"Background process has been terminated"
 E  D
 . W !!,"Background process is still running but has been queued to stop."
 . W !,"Please wait for several minutes and run the STS option to check if the process has been stopped."
 ;
 Q
 ;
CHK ;EP - Check the server status
 NEW STS,BSTUP
 S STS=$$CALL^BSTSTST(SERV,"COMMON COLD","")
 Q
 ;
FRMT(VALUE) ;EP - Format the data
 S VALUE=$E(" ",$L(VALUE))_VALUE
 Q VALUE
 ;
STATUS(SERV,BSTSRPT) ;Set up Server Status Display
 ;
 I '+$G(SERV) Q
 ;
 NEW SDATA,DTSON,CT
 ;
 S SDATA=^BSTS(9002318.2,SERV,0)
 S DTSON=$P(SDATA,"^",13)
 I DTSON="" D
 . D CHK
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
 S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="CHECK FOR CONNECTION AFTER: "
 S CT=CT+1,BSTSRPT(CT,"F")="?35",BSTSRPT(CT)=$S($P(SDATA,"^",14)="":"60 minutes (default)",1:$$FRMT($P(SDATA,"^",14))_" minutes")
 S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="CONNECTION TIMEOUT OVERRIDE: "
 S CT=CT+1,BSTSRPT(CT,"F")="?35",BSTSRPT(CT)=$S($P(SDATA,"^",12)="":" 2 seconds (default)",1:$$FRMT($P(SDATA,"^",12))_" seconds")
 S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="MAXIMUM REMOTE SEARCH TIME: "
 S CT=CT+1,BSTSRPT(CT,"F")="?35",BSTSRPT(CT)=$S($P(SDATA,"^",15)="":"60 seconds (default)",1:$$FRMT($P(SDATA,"^",15))_" seconds")
 S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="TIMEOUT OVERRIDE: "
 S CT=CT+1,BSTSRPT(CT,"F")="?35",BSTSRPT(CT)=$S($P(SDATA,"^",5)="":"60 seconds (default)",1:$$FRMT($P(SDATA,"^",5))_" seconds")
 S CT=CT+1,BSTSRPT(CT,"F")="!?5",BSTSRPT(CT)="ENABLE SEARCH LOGGING: "
 S CT=CT+1,BSTSRPT(CT,"F")="?35",BSTSRPT(CT)=$S($P(SDATA,"^",16):"YES",1:"NO")
 ;
 Q
 ;
SRSTRING ;Return list of search strings
 ;
 NEW FRDT,TODT,ESERV,SRV,SIEN,SNUM,RNAME,EXEC,ENSPACE,BSTSWS,SERVERS
 NEW SPACE,STS,POP,CT,BSTSRPT,ICNT,SRMAX,SCNT
 ;
 S $P(SPACE," ",80)=" "
 ;
 W !!,"DISPLAY BSTS SEARCH STRINGS USED"
 ;
 ;Get From Date
 S FRDT=$$DATE^BSTSDSP("From Date","T-7") Q:'FRDT
 ;
 ;Get To Date
 S TODT=$$DATE^BSTSDSP("To Date","T",FRDT) Q:'TODT
 ;
 ;Get maximum search results to display
 S SRMAX=$$SMAX() Q:'SRMAX
 ;
 S ENSPACE=36
 ;
 ;Get the server information
 S ESERV=$$WSERVER^BSTSWSV(.SERVERS,"") Q:'ESERV
 S SRV=$O(SERVERS(0)) Q:'SRV
 M BSTSWS=SERVERS(SRV)
 ;
 ;Get the site
 S SIEN=$O(^AUTTSITE(0)) Q:'+SIEN
 S SNUM=$$GET1^DIQ(9999999.39,SIEN_",",.01,"I") Q:SNUM=""
 ;
 ;Get search results
 S BSTSWS("FRDT")=$P($$FMTE^BSTSUTIL(FRDT),":",1,2)_" 00:00"
 S BSTSWS("TODT")=$P($$FMTE^BSTSUTIL(TODT),":",1,2)_" 23:59"
 S BSTSWS("ENSPACE")=ENSPACE
 S BSTSWS("ESITE")=SNUM
 S BSTSWS("EPROD")=$$PROD^XUPROD()
 S RNAME="",EXEC="S RNAME=$"_"ZNSPACE" X EXEC
 S BSTSWS("RNAME")=RNAME
 ;
 ;Pull the search list
 S STS=$$SRCNT^BSTSCMCL(.BSTSWS,.RES)
 ;
 ;Get device
 W !
 S POP="" D ^%ZIS I POP Q
 U IO
 ;
 ;Display results
 S (SCNT,CT)=0,CT=CT+1,BSTSRPT(CT)="BSTS SEARCH HISTORY: "_$$FMTE^XLFDT(FRDT,"2ZD")_" TO "_$$FMTE^XLFDT(TODT,"2ZD")_" - "_SRMAX_" MOST FREQUENTLY USED"
 S CT=CT+1,BSTSRPT(CT)=" "
 S CT=CT+1,BSTSRPT(CT)=$E("SEARCH STRING"_SPACE,1,50)_$E("COUNT"_SPACE,1,8)
 S CT=CT+1,BSTSRPT(CT)=" "
 S ICNT="" F  S ICNT=$O(^TMP("BSTSCMCL",$J,ICNT)) Q:ICNT=""  D  I (SCNT+1)>SRMAX Q
 . ;
 . NEW NODE
 . ;
 . S NODE=$G(^TMP("BSTSCMCL",$J,ICNT))
 . S CT=CT+1,BSTSRPT(CT)=$E($P(NODE,U)_SPACE,1,50)_$E($P(NODE,U,2)_SPACE,1,8)
 . S SCNT=SCNT+1
 ;
 ;Check for no results
 I SCNT=0 D
 . S CT=CT+1,BSTSRPT(CT)="No results found.  This could be because SEARCH LOGGING is disabled or the"
 . S CT=CT+1,BSTSRPT(CT)="report date range is too far in the past and the search history has been"
 . S CT=CT+1,BSTSRPT(CT)="purged from the DTS server. *Note also that the current day's search"
 . S CT=CT+1,BSTSRPT(CT)="history does not get sent until later in the evening so it will not be"
 . S CT=CT+1,BSTSRPT(CT)="immediately available."
 ;
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
 Q
 ;
SMAX() ;Prompt for maximum search results to display
 ;
 NEW DIR,DTOUT,DUOUT,DIRUT,DIROUT,X,Y
 ;
 W !
 S DIR(0)="N^1:9999:4"
 S DIR("A")="Maximum number of results to return: "
 S DIR("B")="25"
 D ^DIR
 I Y="" Q ""
 I $G(DTOUT)!$G(DUOUT)!$G(DIRUT)!$G(DIROUT) Q ""
 ;
 Q Y
