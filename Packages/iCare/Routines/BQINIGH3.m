BQINIGH3 ;GDIT/HS/ALA-Nightly job continued ; 26 Apr 2013  11:07 AM
 ;;2.7;ICARE MANAGEMENT SYSTEM;;Dec 19, 2017;Build 23
 ;
JBC ;EP - Check on MU jobs
 NEW ZTSK,NJOB,YJOB,NXDT
 S NJOB=$P($G(^BQI(90508,1,12)),U,5)
 S YJOB=$P($G(^BQI(90508,1,12)),U,6)
 ;
 ; check on ninety day job
 I NJOB'="" D
 . S ZTSK=NJOB D STAT^%ZTLOAD
 . I $G(ZTSK(2))'="Active: Pending" D
 .. I $G(ZTSK(2))="Active: Running" Q
 .. I $G(ZTSK(2))="Inactive: Finished" S $P(^BQI(90508,1,12),U,5)="" D  Q
 ... D JBD
 ... D NJB
 .. I $G(ZTSK(2))="Inactive: Interrupted"!($G(ZTSK(2))="Undefined") D
 ... I $P($G(^BQI(90508,1,12)),U,3)=0 D JBD,NJB Q
 ... S ZTDTH=$$FMADD^XLFDT($$NOW^XLFDT(),,,3)
 ... S ZTDESC="MU CQ Continue Compile",ZTRTN="NIN^BQITASK6",ZTIO=""
 ... D ^%ZTLOAD
 ... S BQIUPD(90508,"1,",12.05)=ZTSK
 ... D FILE^DIE("","BQIUPD","ERROR")
 ;
 I YJOB'="" D
 . S ZTSK=YJOB D STAT^%ZTLOAD
 . I $G(ZTSK(2))'="Active: Pending" D
 .. I $G(ZTSK(2))="Active: Running" Q
 .. I $G(ZTSK(2))="Inactive: Finished" S $P(^BQI(90508,1,12),U,6)="" D  Q
 ... D JBDY
 ... D NJBY
 .. I $G(ZTSK(2))="Inactive: Interrupted"!($G(ZTSK(2))="Undefined") D
 ... I $P($G(^BQI(90508,1,12)),U,4)=0 D JBDY,NJBY Q
 ... S ZTDTH=$$FMADD^XLFDT($$NOW^XLFDT(),,,3)
 ... S ZTDESC="MU Performance Continue Monthly Compile",ZTRTN="NIN^BQITASK7",ZTIO=""
 ... D ^%ZTLOAD
 ... S BQIUPD(90508,"1,",12.06)=ZTSK
 ... D FILE^DIE("","BQIUPD","ERROR")
 ; If job does not have a task number, quit
 I NJOB="" D JBD,NJB
 I YJOB="" D JBDY,NJBY
 Q
 ;
JBD ;EP - Job date
 NEW BMDT
 S BMDT=$P(^BQI(90508,1,12),U,9),BMDT=$$FMADD^XLFDT(BMDT,1)
 I $D(^XTMP("BQIMMON",BMDT)) K ^XTMP("BQIMMON",BMDT)
 I $O(^XTMP("BQIMMON",""),-1)="" K ^XTMP("BQIMMON") Q
 Q
 ;
JBDY ;EP
 NEW BMDT
 S BMDT=$P(^BQI(90508,1,9),U,2),BMDT=$$FMADD^XLFDT(BMDT,1)
 I $D(^XTMP("BQIMMONP",BMDT)) K ^XTMP("BQIMMONP",BMDT)
 I $O(^XTMP("BQIMMONP",""),-1)="" K ^XTMP("BQIMMONP") Q
 Q
 ;
NJB ;EP - Next job
 I $P($G(^BQI(90508,1,12)),U,3)=0 D
 . ; Get next date to process
 . S NXDT=$O(^XTMP("BQIMMON",""),-1) I 'NXDT Q
 . D CQ^BQIMUMON(NXDT)
 Q
 ;
NJBY ;EP
 I $P($G(^BQI(90508,1,12)),U,4)=0 D
 . ; Get next date to process
 . S NXDT=$O(^XTMP("BQIMMONP",""),-1) I 'NXDT Q
 . D PF^BQIMUMON(NXDT)
 Q
 ;
IJB(IPDATE) ;EP - IPC Job check
 NEW ZTSK,IJOB
 S IJOB=$P($G(^BQI(90508,1,11)),U,4)
 ; If IPC job is blank set up task
 I IJOB="" D INJ Q
 ;
 ; check on IPC monthly job
 I IJOB'="" D
 . S ZTSK=IJOB D STAT^%ZTLOAD
 . I $G(ZTSK(2))'["Pending" D
 .. I $G(ZTSK(2))["Running" Q
 .. I $G(ZTSK(2))["Finished" S $P(^BQI(90508,1,11),U,4)="" Q
 .. I $G(ZTSK(2))["Undefined" D  Q
 ... I $P($G(^BQI(90508,1,11)),U,3)="",'$D(^%ZTSK(ZTSK)) S $P(^BQI(90508,1,11),U,4)="" Q
 ... I $P($G(^BQI(90508,1,11)),U,3)'="" S IPDATE=$P($G(^BQI(90508,1,11)),U,5) D INJ
 .. I $G(ZTSK(2))["Inactive"!($G(ZTSK(2))["Interrupted") D
 ... S IPDATE=$P($G(^BQI(90508,1,11)),U,5) D INJ
 Q
 ;
INJ ;EP - New IPC job
 NEW ZTDTH,ZTDESC,ZTRTN,ZTIO,ZTSAVE,BQIUPD
 S ZTDTH=$$FMADD^XLFDT($$NOW^XLFDT(),,,3)
 S ZTDESC="IPC Monthly Compile",ZTRTN="EN^BQIIPMNU",ZTIO="",ZTSAVE("BQDATE")=$G(IPDATE)
 D ^%ZTLOAD
 S BQIUPD(90508,"1,",11.04)=ZTSK
 D FILE^DIE("","BQIUPD","ERROR")
 Q
 ;
POV ;EP - Set up POV table
 NEW DN,CD,NN,CNT
 K ^XTMP("BQIPOV")
 S ^XTMP("BQIPOV",0)=$$FMADD^XLFDT(DT,7)_U_DT_U_"POV Table Values"
 S DN=0,II=0
 F  S DN=$O(^AUPNVPOV("B",DN)) Q:DN=""  D
 . I $G(^ICD9(DN,0))="" Q
 . S NN="",CNT=0 F  S NN=$O(^AUPNVPOV("B",DN,NN)) Q:NN=""  D
 .. NEW VIS
 .. S VIS=$P(^AUPNVPOV(NN,0),"^",3) I VIS="" Q
 .. Q:"DXCT"[$P(^AUPNVSIT(VIS,0),U,7)
 .. S CNT=CNT+1
 . S II=II+1,^XTMP("BQIPOV",II)=DN_U_$$VST^ICDCODE(DN,"",80)_U_$$CODEC^ICDCODE(DN,80)_U_CNT
 . S ^XTMP("BQIPOV","Z",CNT,DN)=$$VST^ICDCODE(DN,"",80)_U_$$CODEC^ICDCODE(DN,80)
 Q
 ;
SNO ;EP - Set up SNOMED table
 D SN^BQISNOMS
 Q
 ;
JBB(TYP) ;EP - Job off counts
 NEW ZTDTH,ZTDESC,ZTRTN,ZTIO,ZTSAVE,BQIUPD
 S ZTDTH=$$FMADD^XLFDT($$NOW^XLFDT(),,,3)
 S ZTDESC="Count Compile",ZTRTN=TYP_"^BQINIGH3",ZTIO=""
 D ^%ZTLOAD
 Q
 ;
WK ;EP - Weekly IPC job
 NEW ZTDTH,ZTDESC,ZTRTN,ZTIO,ZTSAVE,BQIUPD
 S ZTDTH=$$FMADD^XLFDT($$NOW^XLFDT(),,,3)
 S ZTDESC="IPC Weekly Compile",ZTRTN="EN^BQIIPWKL",ZTIO=""
 D ^%ZTLOAD
 S BQIUPD(90508,"1,",11.06)=ZTSK
 D FILE^DIE("","BQIUPD","ERROR")
 Q
