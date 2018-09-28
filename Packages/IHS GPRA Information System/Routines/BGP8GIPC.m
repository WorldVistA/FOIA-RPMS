BGP8GIPC ; IHS/CMI/LAB - GUI COM REPORT ;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;
 ;
TESTIPC ;
 S ERR=""
 S BGPND(4)="",BGPND(3)=""
 S BGPLIST(3)=""
 D EP(.ERR,1,2522,"BGP 18.1 IPC REPORT",338,"S",.BGPND,1,3180000,3130000,1,"A",.BGPLIST,"","","B",$$NOW^XLFDT)
 W !,ERR
 Q
IPC(RETVAL,BGPSTR) ;ipc
 S X="MERR^BGP8GU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPJ,BGPDATA,BGPDA,P,BGPERR,BGPCT,BGPOT,BGPOPT,BGPRT,P,R,A,BGPFN,BGPCOMM
 N BGPTP,BGPQTR,BGPRDT,BGPRE,BGPBAS,BGPPATT,BGPLIST,BGPPRV,BGPPROV,BGPEXP,BGPIND,BGPLOG,BGPPDEF,BGPST
 S P="|",R="~",A="*"
 I $G(BGPSTR)="" D CATSTR^BGP8GR(.BGPSTR,.BGPSTR)
 S BGPI=0
 S BGPERR=""
 S BGPCT=$P($P(BGPSTR,P),R)
 I $P(BGPCT,R)'?.N S BGPCT=$O(^ATXAX("B",BGPCT,0))
 S BGPTP=$P(BGPSTR,P,2)
 S BGPQTR=$P(BGPSTR,P,3)
 S BGPRDT=$P(BGPSTR,P,4)
 S BGPRE=$P(BGPSTR,P,5)
 S BGPOPT="CRS 18.1 IPC REPORT"
 S BGPBAS=$P(BGPSTR,P,6)
 S BGPPATT=$P(BGPSTR,P,7)
 S BGPLIST=$P(BGPSTR,P,8)
 S BGPPRV=$P($P(BGPSTR,P,9),R)
 S BGPPROV=$P($P(BGPSTR,P,9),R,2)
 S BGPEXP=$P(BGPSTR,P,10)
 S BGPOT=$P(BGPSTR,P,11)
 S BGPINDI=$P(BGPSTR,P,13)
 S BGPLSTI=$P(BGPSTR,P,12)
 S BGPMFITI=$P(BGPSTR,P,14)
 S BGPFN=$P(BGPSTR,P,15)
 S BGPLOG=$P(BGPSTR,P,16)
 S BGPPDEF=$P(BGPSTR,P,17)
 S BGPST=$P(BGPSTR,P,18)
 N I
 F I=2:1 D  Q:$P(BGPLSTI,A,I)=""
 . Q:$P(BGPLSTI,A,I)=""
 . N BGPL
 . S BGPL=$P($P(BGPLSTI,A,I),R)
 . S BGPLIST(BGPL)=""
 N J
 F J=2:1 D  Q:$P(BGPINDI,A,J)=""
 . Q:$P(BGPINDI,A,J)=""
 . N BGPL
 . S BGPL=$P($P(BGPINDI,A,J),R)
 . S BGPIND(BGPL)=""
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00250DATA"_$C(30)
 D EP(.BGPERR,DUZ,DUZ(2),BGPOPT,BGPCT,BGPTP,.BGPIND,BGPQTR,BGPRE,BGPBAS,BGPPATT,BGPLIST,.BGPLIST,BGPPRV,BGPPROV,BGPEXP,BGPOT,BGPRDT,BGPMFITI,BGPFN,BGPLOG,BGPPDEF,BGPST)
 S BGPI=BGPI+1
 S ^BGPTMP($J,BGPI)=$G(BGPERR)_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 D EN^XBVK("BGP")
 Q
 ;
EP(BGPRET,BGPUSER,BGPDUZ2,BGPOPTN,BGPTAXI,BGPZZ,BGPIND,BGPQTR,BGPPER,BGPVDT,BGPBEN,BGPLSTT,BGPLIST,BGPLPRV,BGPLPROV,BGPEXPT,BGPROT,BGPRTIME,BGPMFITI,BGPFILE,BGPDNT,BGPGPDEF,BGPSEAT) ;EP - called from GUI to produce COM REPORT CI05-RPT-LOC-COM
 ; SEE ROUTINE BGP8DL if you have questions about any of these variables
 ;  BGPUSER - DUZ
 ;  BGPDUZ2 - DUZ(2)
 ;  BGPOPTN - OPTION NAME
 ;  BGPTAXI - IEN OF COMMUNITY TAXONOMY NAME
 ;  BGPINDG - "I"
 ;
 ;               Which set of Measures should be included in this report:
 ;
 ;  BGPIND - note:  THIS ARRAY IS ONLY REQUIRED IF BGPINDG="S"
 ;           array containing iens of the measures selected by the user
 ;           for example, BGPIND(3)=""
 ;                        BGPIND(6)="" if the user selected measures
 ;                        1 and 6 from the BGP 18 INDICATORS file.  When
 ;                        you present them to the user for selection use all of them
 ;                        in the file, do not screen out any of them.
 ;
 ;  BGPQTR - this is equal to 1,2,3,4 depending on how the user answers the following
 ;           DIR call:
 ;               Select one of the following:
 ;
 ;         1         January 1 - December 31
 ;         2         April 1 - March 31
 ;         3         July 1 - June 30
 ;         4         October 1 - September 30
 ;
 ;       Enter the date range for your report:
 ;
 ;  BGPPER - this is the year they select if they answered the above question
 ;           with a 1 through 4  e.g  305000 (fileman imprecise date for 2010)
 ;
 ;  BGPVDT - baseline year entered by user in internal fileman format, year only
 ;           e.g.  3010000
 ;
 ;  BGPBEN - 1 for Indians only, 2 for Not Indian, 3 for both (see reader call
 ;           at subroutine BEN in BGP8DL
 ;
 ;  BGPLSTT - this contains the answer to the following DIR call:
 ;          
 ;        Select one of the following:
 ;         P         Patient List by Provider
 ;         A         All Patients
 ;
 ;        Choose report type for the Lists: R//
 ;  BGPLIST (array) contains the iens of the measures they want a list for.
 ;        when you present the choices for lists only present the measures they pick
 ;        that are in array BGPIND (run report to see this)
 ;        e.g.  BGPLIST="A"
 ;              BGPLIST(3)=""
 ;
 ;  BGPLPRV - will equal ien of provider if they picked "P" above
 ;  BGPLPROV - will equal provider name if they picked "P" above
 ;
 ;  BGPROT - type of output  P for printed, D For Delimited, B for both
 ;  BGPRTIME - report will be queued automatically, this variable
 ;             contains the time it will run, internal fileman format
 ;             must be date and time
 ;
 ;  BGPRET - return value is ien^error message^export file name. a zero (0) is
 ;  passed as ien if error occurred, display the filename back to the user
 ;  if they chose to export to area
 ;
 ;create entry in gui output file
 ;queue report to run with/GUIR
 D EP1
 S Y=BGPRET
 ;D EN^XBVK("BGP") S:$D(ZTQUEUED) ZTREQ="@"
 S BGPRET=Y
 Q
EP1 ;
 S U="^"
 I $G(BGPUSER)="" S BGPRET=0_"^USER NOT PASSED" Q
 I $G(BGPDUZ2)="" S BGPRET=0_"^DUZ(2) NOT PASSED" Q
 I $G(BGPOPTN)="" S BGPRET=0_"^OPTION NAME NOT PASSED" Q
 ;I $G(BGPTAXI)="" S BGPRET=0_"^IEN OF COMMUNITY TAXONOMY NOT PASSED" Q
 ;I '$D(^ATXAX(BGPTAXI)) S BGPRET=0_"^INVALID COMMUNITY TAXONOMY IEN PASSED" Q
 ;I $G(BGPINDG)="" S BGPRET=0_"^INDICATOR TYPE NOT PASSED" Q
 ;I "I"'[BGPINDG S BGPRET=0_"^INDICATOR TYPE INVALID" Q
 I $G(BGPPER)="" S BGPRET=0_"^YEAR VARIABLE NOT PASSED" Q
 I $G(BGPQTR)="" S BGPRET=0_"^QUARTER/DATE TYPE NOT PASSED" Q
 I $G(BGPVDT)="" S BGPRET=0_"^BASELINE YEAR NOT PASSED" Q
 I $G(BGPBEN)="" S BGPRET=0_"^BENEFICIARY TYPE NOT PASSED" Q
 I "PDB"'[$G(BGPROT) S BGPRET=0_"^REPORT OUTPUT TYPE NOT PASSED" Q
 I $G(BGPLSTT)="" S BGPRET=0_"^LIST TYPE NOT PASSED" Q
 S BGPRTIME=$G(BGPRTIME)
 S BGPLIST=$G(BGPLSTT)
 S BGPALLPT=""
 I '$G(BGPBEN) S BGPBEN=$G(BGPPATT)
 I BGPGPDEF="O" S BGPCOMMI=$G(BGPTAXI),BGPTAXI=""
 I BGPGPDEF="A" S BGPALLPT=1,BGPTAXI="",BGPCOMMI="",BGPSEAT=""
 I BGPGPDEF="T" S BGPCOMMI="",BGPSEAT=""
 S BGPCOMMI=$G(BGPCOMMI)
 I $G(BGPLIST)="P",$G(BGPLPRV)="" S BGPRET=0_"^PROVIDER NOT PASSED FOR LIST TYPE P" Q
 ;S DUZ=BGPUSER
 I $G(BGPLPRV) S BGPLPROV=$P($G(^VA(200,BGPLPRV,0)),U)
 S DUZ(2)=BGPDUZ2
 S:'$D(DT) DT=$$DT^XLFDT
 D ^XBKVAR
 S BGPGUI=1
 S IOM=80,BGPIOSL=55
 S BGPRTYPE=2,BGPYRPTH="",BGPINDG="I"
 I BGPQTR=1 S BGPBD=$E(BGPPER,1,3)_"0101",BGPED=$E(BGPPER,1,3)_"1231"
 I BGPQTR=2 S BGPBD=($E(BGPPER,1,3)-1)_"0401",BGPED=$E(BGPPER,1,3)_"0331"
 I BGPQTR=3 S BGPBD=($E(BGPPER,1,3)-1)_"0701",BGPED=$E(BGPPER,1,3)_"0630"
 I BGPQTR=4 S BGPBD=($E(BGPPER,1,3)-1)_"1001",BGPED=$E(BGPPER,1,3)_"0930"
 I BGPQTR=5 D
 .S D=$$FMADD^XLFDT(BGPPER,1)
 .I $E(BGPPER,4,7)'=1231 S BGPBD=($E(BGPPER,1,3)-1)_$E(D,4,7),BGPED=BGPPER,BGPPER=$E(BGPED,1,3)_"0000"
 .I $E(BGPPER,4,7)=1231 S BGPBD=$E(BGPPER,1,3)_$E(D,4,7),BGPED=BGPPER,BGPPER=$E(BGPED,1,3)_"0000"
BY ;get baseline year
 S X=$E(BGPPER,1,3)-$E(BGPVDT,1,3)
 S X=X_"0000"
 S BGPBBD=BGPBD-X,BGPBBD=$E(BGPBBD,1,3)_$E(BGPBD,4,7)
 S BGPBED=BGPED-X,BGPBED=$E(BGPBED,1,3)_$E(BGPED,4,7)
 S BGPPBD=($E(BGPBD,1,3)-1)_$E(BGPBD,4,7)
 S BGPPED=($E(BGPED,1,3)-1)_$E(BGPED,4,7)
 S BGPHOME=$P($G(^BGPSITE(DUZ(2),0)),U,2)
 I $G(BGPTAXI) D
 . K BGPTAX S X=0
 . F  S X=$O(^ATXAX(BGPTAXI,21,X)) Q:'X  D
 .. S BGPTAX($P(^ATXAX(BGPTAXI,21,X,0),U))=""
 .. Q
 D REPORT^BGP8UTL
 I $G(BGPQUIT) S BGPRET=0_"^COULD NOT CREATE REPORT ENTRY" Q
 I BGPRPT="" S BGPRET=0_"^COULD NOT CREATE REPORT ENTRY" Q
 S BGPDELT=""
 ;create entry in GUI file
 D ^XBFMK
 S X=BGPFILE
 ;S X=BGPUSER_$$NOW^XLFDT
 S BGPGFNM=X   ;S X=BGPUSER_$$NOW^XLFDTS X=BGPUSER_$$NOW^XLFDT
 S DIC="^BGPGUIR(",DIC(0)="L",DIADD=1,DLAYGO=90560.19,DIC("DR")=".02////"_BGPUSER_";.03////"_$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT)_";.05///"_BGPOPTN_";.06///R;.07///"_$G(BGPROT)
 K DD,D0,DO D FILE^DICN K DLAYGO,DIADD,DD,D0,DO
 I Y=-1 S BGPRET=0_"^UNABLE TO CREATE ENTRY IN GUI OUTPUT FILE" Q
 S BGPGIEN=+Y
 ;SEND THE REPORT PROCESS OFF TO THE BACKGROUND USING TASKMAN CALL
 D TSKMN
 S BGPRET=BGPGIEN
 Q
 ;
TSKMN ;
 S ZTIO=""
 K ZTSAVE S ZTSAVE("*")=""
 S ZTCPU=$G(IOCPU),ZTRTN="IPCRUN^BGP8GIPC",ZTDTH=$S(BGPRTIME]"":BGPRTIME,1:$$NOW^XLFDT),ZTDESC="GUI IPC REPORT 18.1" D ^%ZTLOAD
 D UPLOG^BGP8GUA(BGPGIEN,ZTSK)
 Q
IPCRUN ;
 D ^BGP8PC1
 K ^TMP($J,"BGPGUI")
 S IOM=80,BGPIOSL=55
 D GUIR^BGPXBLM("^BGP8DP","^TMP($J,""BGPGUI"",")
 ;cmi/anch/maw added 5/12/2009 for word output
 S X=0,C=0 F  S X=$O(^TMP($J,"BGPGUI",X)) Q:X'=+X  D
 . S C=C+1
 . N BGPDATA
 . S BGPDATA=$G(^TMP($J,"BGPGUI",X))
 . I BGPDATA="ZZZZZZZ" S BGPDATA=$C(12)
 . S ^BGPGUIR(BGPGIEN,11,C,0)=BGPDATA
 S ^BGPGUIR(BGPGIEN,11,0)="^90560.1911^"_C_"^"_C_"^"_DT
 K ^TMP($J,"BGPGUI")
 ;cmi/anch/maw end of mods
 D ENDLOG
 D XIT
 Q
 ;
XIT ;
 K ^TMP($J)
 D EN^XBVK("BGP") S:$D(ZTQUEUED) ZTREQ="@"
 K DIRUT,DUOUT,DIR,DOD
 K DIADD,DLAYGO
 D KILL^AUPNPAT
 K X,X1,X2,X3,X4,X5,X6
 K A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,V,W,X,Y,Z
 K N,N1,N2,N3,N4,N5,N6
 K BD,ED
 D KILL^AUPNPAT
 D ^XBFMK
 L -^BGPDATA
 Q
 ;
ENDLOG ;-- UPDATE LOG AT END
 S DIE="^BGPGUIR(",DA=BGPGIEN,DR=".04////"_$$NOW^XLFDT_";.06///C"
 D ^DIE
 K DIE,DR,DA
 Q