BGP3GUA ; IHS/CMI/LAB - BGP Gui Utilities 10/29/2004 3:28:39 PM 19 Sep 2005 5:28 PM 27 Apr 2010 10:28 PM ;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
 ;
DEBUG(RETVAL,BGPSTR) ;run the debugger
 D DEBUG^%Serenji("LABTAXC^BGP3GU(.RETVAL,.BGPSTR)")
 Q
 ;
GETPAT(BGPRET,BGPSTR) ;-- return patient in ADO table
 S X="MERR^BGPGU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPERR,BGPUIEN,P
 S P="|"
 K ^BGPTMP($J)
 S BGPRET="^BGPTMP("_$J_")"
 S BGPI=0
 S BGPERR=""
 S ^BGPTMP($J,BGPI)="T00010IEN^T00030PATIENTNAME^T00015DOB^T00001SEX^T00007CHART^T00009SSN^T00010REG^T00030LAST UPDATE^T00030CLASSBEN^T00010AGE"_$C(30)
 S BGPPAT=$P(BGPSTR,P,2)
 S BGPMT=$P(BGPSTR,P,3)
 S BGPNPAT=$P(BGPSTR,P,4)
 I BGPMT="ALL" S BGPMT=9999999
 S BGPMT=(BGPMT-1)
 I BGPPAT?9N D
 . S BGPPIEN=$$PATSSN(BGPPAT)
 I BGPPAT?1.6N D
 . S BGPPIEN=$$PATCHT(.BGPPIEN,BGPPAT)
 I BGPPAT?1.2N1"/"1.2N1"/"4N D
 . S X=BGPPAT D ^%DT S BGPPAT=Y
 . S BGPPIEN=$$PATDOB(.BGPPIEN,BGPPAT)
 I '$G(BGPPIEN) D PATNAM(.BGPPIEN,BGPPAT,BGPNPAT)
 I $G(BGPPIEN),'$G(BGPPATS) D PATADO(.BGPPIEN)
 S ^BGPTMP($J,BGPI+1)=$C(31)_$G(BGPERR)
 K BGPPAT,BGPPIEN,BGPCNT,BGPDA,BGPIEN,BGPPATE,BGPNM,BGPDB,BGPSX,BGPCT,BGPSSN
 K BGPPATS
 Q
 ;
PATSSN(PAT) ;-- look up by ssn
 S BGPPIEN=$O(^DPT("SSN",PAT,0))
 S BGPPIEN(1)=BGPPIEN
 Q $G(BGPPIEN)
 ;
PATCHT(BGPPIEN,PAT) ;-- lookup by chart
 N BGPCNT
 S BGPCNT=0,BGPPATE=0,BGPMCNT=0
 S BGPDA=(PAT-1) F  S BGPDA=$O(^AUPNPAT("D",BGPDA)) Q:'BGPDA!(BGPDA>PAT)!(BGPCNT>BGPMT)  D
 . S BGPIEN=0 F  S BGPIEN=$O(^AUPNPAT("D",BGPDA,BGPIEN)) Q:'BGPIEN  D
 .. I $O(^AUPNPAT("D",BGPDA,BGPIEN,0))=DUZ(2) S BGPPIEN=BGPIEN
 .. Q:'$G(BGPPIEN)
 .. ;
 .. S BGPCNT=BGPCNT+1
 .. S:'$D(BGPPIEN(BGPCNT)) BGPPIEN(BGPCNT)=0
 .. S BGPPIEN(BGPCNT)=BGPPIEN
 Q $G(BGPPIEN)
 ;
PATDOB(BGPPATE,PAT) ;-- lookup by DOB
 N BGPCNT
 S BGPCNT=0,BGPPATE=0
 S BGPDOB=PAT-1 F  S BGPDOB=$O(^DPT("ADOB",BGPDOB)) Q:'BGPDOB!(BGPDOB'=+PAT)!(BGPCNT>BGPMT)  D
 . S BGPIEN=0 F  S BGPIEN=$O(^DPT("ADOB",BGPDOB,BGPIEN)) Q:'BGPIEN  D
 .. S:'$D(BGPPATE(BGPCNT)) BGPPATE(BGPCNT)=0
 .. S BGPCNT=BGPCNT+1,BGPPATE=1
 .. S BGPPATE(BGPCNT)=BGPIEN
 S BGPPATE=BGPCNT
 Q $G(BGPPATE)
 ;
PATNAM(BGPPATE,PAT,NPAT) ;lookup by name
 S BGPCNT=0,BGPPATE=0
 N BGPLEN
 S BGPLEN=$L(PAT)
 S BGPNAM=PAT
 S BGPNAM=$$BEGIN(PAT)
 I $G(NPAT)]"" S BGPNAM=NPAT
 F  S BGPNAM=$O(^DPT("B",BGPNAM)) Q:BGPNAM=""!($E(BGPNAM,1,BGPLEN)'=PAT)!(BGPCNT>BGPMT)  D
 . S BGPIEN=0 F  S BGPIEN=$O(^DPT("B",BGPNAM,BGPIEN)) Q:'BGPIEN  D
 .. Q:$O(^DPT("B",BGPNAM,BGPIEN,0))  ;cmi/maw 4/25/2005 don't get aliases
 .. S BGPCNT=BGPCNT+1
 .. S:'$D(BGPPATE(BGPCNT)) BGPPATE(BGPCNT)=0
 .. S BGPPATE(BGPCNT)=BGPIEN
 S BGPPATE=BGPCNT
 Q $G(BGPPATE)
 ;
BEGIN(PT) ;-- get begin point
 N BGPPDA,BGPPIEN,BGPPCNT
 S BGPPCNT=0
 S BGPPDA=PT
 I $O(^DPT("B",BGPPDA,0)) D
 . S BGPPDA=$O(^DPT("B",BGPPDA),-1)
 F  S BGPPDA=$O(^DPT("B",BGPPDA)) Q
 I $G(BGPPDA)="" Q ""
 Q $O(^DPT("B",BGPPDA),-1)
 ;
PATADO(PIEN) ;-- ado return
 S BGPCNTR=0
 S BGPDA=0 F  S BGPDA=$O(PIEN(BGPDA)) Q:'BGPDA  D
 . S BGPCNTR=BGPCNTR+1
 . S BGPPI=$G(PIEN(BGPDA))
 . S BGPNM=$P($G(^DPT(BGPPI,0)),U)
 . S BGPDB=$$FMTE^XLFDT($P($G(^DPT(BGPPI,0)),U,3))
 . S BGPSX=$P($G(^DPT(BGPPI,0)),U,2)
 . S BGPCT=$$HRN^AUPNPAT(BGPPI,DUZ(2))
 . S BGPSSN=$P($G(^DPT(BGPPI,0)),U,9)
 . S BGPUPD=$P($G(^AUPNPAT(BGPPI,0)),U,3)  ;cmi/maw 5/17/2009 added last reg update
 . S BGPELG=$$GET1^DIQ(9000001,BGPPI,1111)  ;cmi/maw 5/17/2009 added class/ben for status bar
 . S BGPAGE=$$AGE^AUPNPAT(BGPPI,DT)
 . S BGPI=BGPI+1
 . S ^BGPTMP($J,BGPI)=BGPPI_U_BGPNM_U_BGPDB_U_BGPSX_U_BGPCT_U_BGPSSN_U_$G(BGPHD)_U_BGPUPD_U_BGPELG_U_BGPAGE_$C(30)
 Q
 ;
SELSP(RETVAL) ;-- return all sites in the site file for selection
 N BGPI
 S BGPI=0
 S RETVAL="^BGPTMP("_$J_")"
 K ^BGPTMP($J)
 S ^BGPTMP($J,BGPI)="T00050Site"_$C(30)
 N BGPDA
 S BGPDA=0 F  S BGPDA=$O(^BGPSITE("B",BGPDA)) Q:'BGPDA  D
 . N BGPSE
 . S BGPSE=$P($G(^DIC(4,BGPDA,0)),U)
 . S BGPI=BGPI+1
 . S ^BGPTMP($J,BGPI)=BGPSE_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 Q
 ;
DEMO(RETVAL,BGPSTR) ;-- cmi/maw 8.0 p2 get demo patients based on Search Template passed in
 N BGPI,BGPST,BGPSTI,P
 S P="|"
 S BGPI=0
 S BGPSTI=$P(BGPSTR,P)
 ;S BGPSTI=$O(^DIBT("B",BGPST,0))
 S RETVAL="^BGPTMP("_$J_")"
 K ^BGPTMP($J)
 S ^BGPTMP($J,BGPI)="T00010IEN^T00030PATIENTNAME^T00015DOB^T00001SEX^T00007CHART^T00009SSN^T00010REG^T00030LAST UPDATE^T00030CLASSBEN^T00010AGE"_$C(30)
 N BGPDA
 S BGPDA=0 F  S BGPDA=$O(^DIBT(BGPSTI,1,BGPDA)) Q:'BGPDA  D
 . N BGPNM,BGPDB,BGPSX,BGPCT,BGPSSN
 . S BGPI=BGPI+1
 . S BGPNM=$P($G(^DPT(BGPDA,0)),U)
 . S BGPDB=$$FMTE^XLFDT($P($G(^DPT(BGPDA,0)),U,3))
 . S BGPSX=$P($G(^DPT(BGPDA,0)),U,2)
 . S BGPCT=$$HRN^AUPNPAT(BGPDA,DUZ(2))
 . S BGPSSN=$P($G(^DPT(BGPDA,0)),U,9)
 . S ^BGPTMP($J,BGPI)=BGPDA_U_BGPNM_U_BGPDB_U_BGPSX_U_BGPCT_U_BGPSSN_U_U_U_U_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 Q
 ;
DEMOS(RETVAL,BGPSTR) ;-- cmi/maw 6/11/2010 8.0 p1 save demo template
 N P,R,BGPI,BGPST,BGPSTI,BGPPATS,BGPFDA,BGPERR,BGPIENS
 S P="|",R="~"
 S BGPI=0
 S RETVAL="^BGPTMP("_$J_")"
 S BGPST=$P(BGPSTR,P)
 S BGPPATS=$P(BGPSTR,P,2)
 S BGPSTI=$S($G(BGPST):BGPST,1:$O(^DIBT("B",BGPST,0)))
 S ^BGPTMP($J,BGPI)="T00001Error"_$C(30)
 S P="|"
 I $G(BGPSTI) D  Q
 . D CLNDEMO(BGPSTI)
 . N I
 . F I=1:1 D  Q:$P(BGPPATS,R,I)=""
 .. Q:$P(BGPPATS,R,I)=""
 .. N BGPPAT
 .. S BGPPAT=$P(BGPPATS,R,I)
 .. S ^DIBT(BGPSTI,1,BGPPAT)=""
 . S ^BGPTMP($J,BGPI+1)=$C(31)
 ;S BGPIENS=""
 ;S BGPFDA(.401,"+1,",.01)=BGPST
 ;D UPDATE^DIE("","BGPFDA","BGPIENS","BGPERR(1)")
 ;S BGPSTI=$G(BGPIENS(1))
 ;N I
 ;F I=1:1 D  Q:$P(BGPPATS,R,I)=""
 ;. Q:$P(BGPPATS,R,I)=""
 ;. N BGPPAT
 ;. S BGPPAT=$P(BGPPATS,R,I)
 ;. S ^DIBT(BGPSTI,1,BGPPAT)=""
 S ^BGPTMP($J,BGPI+1)=$C(31)
 Q
 ;
CLNDEMO(STI) ;-- cmi/maw 6/11/2010 8.0 p1 clean up demo template first
 N BGPDA
 S DA(1)=STI
 S DIK="^DIBT("_DA(1)_",1,"
 S BGPDA=0 F  S BGPDA=$O(^DIBT(STI,1,BGPDA)) Q:'BGPDA  D
 . S DA=BGPDA
 . D ^DIK
 K DIK
 Q
 ;
VC(RETVAL,BGPSTR) ;-- get version number to see if client matches
 N P
 S P="|"
 K ^BGPTMP($J)
 N BGPVER,BGPVERI,BGPVERIN,BGPPKG,BGPI,BGPPTCH,BGPPTCHI,BGPVERI
 S BGPI=0
 S BGPVERIN=$P(BGPSTR,P)
 ;S BGPVERIN=8.3
 S RETVAL="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00001VersionPresent"_$C(30)
 S BGPI=BGPI+1
 S BGPPKG=$O(^DIC(9.4,"C","BGP",0))
 I '$G(BGPPKG) D  Q
 . S ^BGPTMP($J,BGPI)=0_$C(30)
 . S ^BGPTMP($J,BGPI+1)=$C(31)
 S BGPVER=$G(^DIC(9.4,BGPPKG,"VERSION"))
 S BGPVERI=$O(^DIC(9.4,BGPPKG,22,"B",BGPVER,0))
 S BGPPTCH=$O(^DIC(9.4,BGPPKG,22,BGPVERI,"PAH","B",""),-1)
 I ($E(BGPVER,1,2)_BGPPTCH)=BGPVERIN D  Q
 . S ^BGPTMP($J,BGPI)=1_$C(30)
 . S ^BGPTMP($J,BGPI+1)=$C(31)
 ;S ^BGPTMP($J,BGPI)=0_$C(30)  ;remove the line below when done with testing and uncomment this one
 S ^BGPTMP($J,BGPI)=1_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 Q
 ;
DEMOCHK(RETVAL) ;-- check to see if the demo template exists
 N BGPI,BGPMSG
 S BGPI=0
 S RETVAL="^BGPTMP("_$J_")"
 K ^BGPTMP($J)
 S @RETVAL@(BGPI)="T00080Message"_$C(30)
 S BGPMSG=$$CHKDST^BGP3UTL2()
 I +$G(BGPMSG) D  Q
 . S BGPI=BGPI+1
 . ;S @RETVAL@(BGPI)=$C(30)
 . S @RETVAL@(BGPI+1)=$C(31)
 S BGPMSG=$P(BGPMSG,U,2)
 S BGPI=BGPI+1
 S @RETVAL@(BGPI)=BGPMSG_$C(30)
 S @RETVAL@(BGPI+1)=$C(31)
 Q
 ;
COMCHK(BGPRET,BGPSTR) ;EP
 S X="MERR^BGPGU",@^%ZOSF("TRAP") ; m error trap
 N P,BGPOPT,BGPI,T
 S P="|"
 S BGPI=0
 K ^BGPTMP($J)
 S BGPRET="^BGPTMP("_$J_")"
 S ^BGPTMP($J,BGPI)="T00200COMMUNITIES"_$C(30)
 S BGPI=0
 S T=$P(BGPSTR,P)
 K BGPC
 I '$G(T) Q 0
 I '$D(^ATXAX(T)) Q 0
 S X=0,G=0
 F  S X=$O(^ATXAX(T,21,X)) Q:'X  D
 .S C=$P(^ATXAX(T,21,X,0),U)
 .S BGPI=BGPI+1
 .I '$D(^AUTTCOM("B",C)) S ^BGPTMP($J,BGPI)="Warning "_C_" is in the taxonomy but not in the standard community table."_$C(30)
 S ^BGPTMP($J,BGPI+1)=$C(31)
 Q
 ;
LOGPAT(RETVAL,BGPSTR) ;-- log sensitive patient information
 S X="MERR^BGPGU",@^%ZOSF("TRAP") ; m error trap
 N BGPI,BGPERRR,BGPPAT,P,BGPFLAG,BGPDGMSG,BGPDGDA,RESULT
 S P="|"
 K ^BGPTMP($J)
 S RETVAL="^BGPTMP("_$J_")"
 S BGPI=0
 S BGPPAT=$P(BGPSTR,P)
 D DGSEC(.RESULT,BGPPAT,DUZ,0)  ;cmi/maw 3/4/2010 logging takes place in NOTICE^DGSEC4
 I $G(RESULT(1))=4 S BGPFLAG=1
 I $G(RESULT(1))=3 S BGPFLAG=1
 I '$G(BGPFLAG),$G(RESULT(1))'=0 D NOTICE^DGSEC4(.RESULT,BGPPAT,"BGPGRPC^Behavioral Health GUI",3)
 I $G(RESULT(1))=0,$$GET1^DIQ(43,1,9999999.01)="YES" D  ;ihs/cmi/maw 12/6/2010 added for track all
 . D NOTICE^DGSEC4(.RESULT,BGPPAT,"BGPGRPC^Behavioral Health GUI",$S($P($G(^DGSL(38.1,BGPPAT,0)),U,2):3,1:1))
 S @RETVAL@(BGPI)="T00001Return"_$C(30)
 S BGPI=BGPI+1
 S @RETVAL@(BGPI)=$G(RESULT)_$C(30)
 S @RETVAL@(BGPI+1)=$C(31)
 Q
 ;
DGSEC(RESULT,DFN,DUZ,DGMSG) ;EP -- mock the dgsec call but dont log, couldnt find a way to call PTSEC^DGSEC4 without logging
 S DGMSG=$G(DGMSG,1)
 I $$STATUS^BDGSPT2(DUZ,DFN,1)["RESTRICTED ACCESS" D  Q
 .S RESULT(1)=5 Q:DGMSG'=1
 .S RESULT(2)="Sorry, you are restricted from accessing this patient's record."
 .S RESULT(3)="If you have questions, please contact your HIM department."
 D OWNREC^DGSEC4(.RESULT,DFN,$G(DUZ),DGMSG)
 I RESULT(1)=1 S RESULT(1)=3 Q
 I RESULT(1)=2 S RESULT(1)=4 Q
 K RESULT
 D SENS^DGSEC4(.RESULT,DFN,$G(DUZ))
 Q
 ;