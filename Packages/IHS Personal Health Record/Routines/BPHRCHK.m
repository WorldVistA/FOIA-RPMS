BPHRCHK ;GDIT/HS/ALA-PHR System Check ; 16 Feb 2018  11:42 AM
 ;;2.1;IHS PERSONAL HEALTH RECORD;**2**;Apr 01, 2014;Build 4
 ;
EN ;EP - Check PHR connection with a patient
 NEW QFLG,RESULT,DFN,BPHREUID
 S QFLG=0 D LIP Q:QFLG
 I $P($G(^AUTTLOC(DUZ(2),21)),"^",5)="" D EN^DDIOL("Location "_$P(^DIC(4,DUZ(2),0),"^",1)_" does not have DIRECT email address.","","!!") Q
 D PAT(.RESULT,"","","")
 I $P($G(RESULT),"^",10)'="" D EN^DDIOL($P(RESULT,"^",10),"","!!") Q
 I $P($G(RESULT),"^",1)=0 D EN^DDIOL("Patient is not signed up for PHR.","","!!") Q
 I $P($G(RESULT),"^",1)=-1 D EN^DDIOL("Error occurred, please check error log.","","!!") Q
 ;accessed PHR (0=No, 1=Yes)^last date^used secure messaging (0=No, 1=Yes)^last date^direct address
 I $P($G(RESULT),"^",3)=1 D EN^DDIOL("Patient last accessed PHR on "_$$FMTE^XLFDT($P($G(RESULT),"^",4)),"","!!")
 I $P($G(RESULT),"^",7)'="" D EN^DDIOL("Patient has a DIRECT email address","","!!")
 Q
 ;
EN1 ;EP - Check a patient
 NEW QFLG,RESULT,DFN,BPHREUID,RANGE
 S QFLG=0 D LIP Q:QFLG
 I $P($G(^AUTTLOC(DUZ(2),21)),"^",5)="" D EN^DDIOL("Location does not have DIRECT email address.","","!!") Q
 ;Select provider
 S QFLG=0 D PROV Q:QFLG
 ;
 ;Select date range
 S QFLG=0,RANGE="" D DAT Q:QFLG
 I $G(BDT)'="",$G(EDT)'="" D
 . S RANGE=$$FMTE^XLFDT(BDT)_"-"_$$FMTE^XLFDT(EDT)_" "
 . D EN^DDIOL("Report Calendar Year is "_RANGE,"","!?5")
 ;
 ;Select patient
 D PAT(.RESULT,BDT,EDT,PROV)
 I $P($G(RESULT),"^",10)'="" D EN^DDIOL($P(RESULT,"^",10),"","!!") Q
 I $P($G(RESULT),"^",1)=0 D EN^DDIOL("Patient is not signed up for PHR.","","!!?5") Q
 I $P($G(RESULT),"^",1)=-1 D EN^DDIOL("Error occurred, please check error log.","","!!?5") Q
 ;accessed PHR (0=No, 1=Yes)^last date^used secure messaging (0=No, 1=Yes)^last date^direct address
 I $P($G(RESULT),"^",3)=1 D EN^DDIOL("Patient last accessed PHR during Calendar Year "_$$FMTE^XLFDT($P($G(RESULT),"^",4)),"","!!?5")
 I $P($G(RESULT),"^",7)'="" D EN^DDIOL("Patient has a DIRECT email address","","!!?5")
 I $P($G(RESULT),"^",6)'="" D EN^DDIOL("Patient's last DIRECT message during Calendar Year was "_$$FMTE^XLFDT($P($G(RESULT),"^",6)),"","!!?5")
 I $P($G(RESULT),"^",6)="" D
 . D EN^DDIOL("Patient does not have a record of a DIRECT message.","","!!?5")
 D EN^DDIOL("Patient's Message Agents for Calendar Year "_RANGE_"are: ","","!!?5") D AGNT(DFN)
 Q
 ;
LIP ;EN - Is this a Test or Production system
 NEW PROD
 S PROD=$$PROD^XUPROD()
 ; PROD=0 is a test system, PROD=1 is a production system
 I 'PROD D
 . NEW DIR,X,Y,DIRUT,DUOUT,DTOUT,DIROUT
 . S DIR("A")="This system has been designated as a TEST system. Is this correct",DIR(0)="Y"
 . D ^DIR
 . I Y'=1 D EN^DDIOL("Please contact the IHS HELP desk for this issue.","","!!") S QFLG=1
 I PROD D
 . NEW DIR,X,Y,DIRUT,DUOUT,DTOUT,DIROUT
 . S DIR("A")="This system has been designated as a PRODUCTION system. Is this correct",DIR(0)="Y"
 . D ^DIR
 . I Y'=1 D EN^DDIOL("Please contact the IHS HELP desk for this issue.","","!!") S QFLG=1
 Q
 ;
PAT(RESULT,BDT,EDT,PROV) ;EP - Patient lookup
 D GETPAT^APCDDMUP
 I $G(DFN)="" D EN^DDIOL("No patient selected.","","!!") Q
 S BPHREUID=$P($G(^DPT(DFN,"MPI")),U,1)
 I BPHREUID="" D EN^DDIOL("Patient does not have an MPI EUID","","!!") Q
 D PHR^BPHRMUPM(DFN,$G(BDT),$G(EDT),.RESULT,$G(PROV))
 Q
 ;
DAT ; EP - Date range
 NEW DIR,Y,X
 S BDT="",EDT=""
 K DIR W ! S DIR(0)="DO^::EXP",DIR("A")="Enter Beginning Date"
 D ^DIR I $D(DIRUT) S QFLG=1 Q
 I Y<0 S QFLG=1 Q
 I Y>DT W !!,"Future dates not allowed." G DAT
 S BDT=Y
 K DIR S DIR(0)="DO^:DT:EXP",DIR("A")="Enter Ending Date"
 D ^DIR G:Y<1 DAT
 S EDT=Y
 I EDT<BDT D  G DAT
 . D EN^DDIOL("Sorry, Ending Date MUST not be earlier than Beginning Date.","","!!?7")
 S BDT=$E(BDT,1,3)_"0101",EDT=$E(BDT,1,3)_"1231"
 Q
 ;
PROV ; EP - Select provider
 NEW DIC,D,Y
 D EN^DDIOL("Enter the name of the provider.","","!!")
 S DIC="^VA(200,",DIC(0)="AEMQ",D="AK.PROVIDER",DIC("A")="Enter PROVIDER NAME: " D MIX^DIC1 K DIC,D
 I Y<0 S QFLG=1 Q
 S PROV=+Y
 Q
 ;
AGNT(DFN) ;EP = Messaging Agent for Patient
 NEW BDPCAT,BDPIEN,MSA,BPA,AGN,ADR,BPDATA,NBP,OK,LBP,CURR,CDT,QL
 S ADDR=""
 S BDPCAT=$$FIND1^DIC(90360.3,,"X","MESSAGE AGENT")
 I BDPCAT="" Q ADDR
 S BDPIEN=$O(^BDPRECN("AA",DFN,BDPCAT,""))
 I BDPIEN="" Q ADDR
 ;
 I $P(^BDPRECN(BDPIEN,0),"^",3)=""  D EN^DDIOL("No Current Message Agent","","!?7")
 S BPA=0
 F  S BPA=$O(^BDPRECN(BDPIEN,1,BPA)) Q:'BPA  D
 . S BPDATA=^BDPRECN(BDPIEN,1,BPA,0)
 . S MSA=$P(^BDPRECN(BDPIEN,1,BPA,0),"^",1)
 . S AGN(BPA)=MSA_"^"_$P(BPDATA,"^",3),LBP=BPA
 . ; Check the next agent in the history
 . S NBP=$O(^BDPRECN(BDPIEN,1,BPA)) I 'NBP D  Q
 .. S QL=0 D CMA
 .. I 'QL S $P(AGN(BPA),"^",3)=DT Q
 .. I QL S $P(AGN(BPA),"^",3)=CDT
 . S $P(AGN(BPA),"^",3)=$P(^BDPRECN(BDPIEN,1,NBP,0),"^",3)
 ;
 I CURR'="",$P(^BDPRECN(BDPIEN,1,LBP,0),"^",1)'=CURR D
 . S AGN(LBP+1)=CURR_"^"_CDT_"^"_DT
 ;
 S MS="" F  S MS=$O(AGN(MS)) Q:MS=""  D
 . S OK=0
 . I EDT<$P(AGN(MS),"^",2)!(BDT>$P(AGN(MS),"^",3)) Q
 . I BDT'<$P(AGN(MS),"^",2),BDT'>$P(AGN(MS),"^",3) S OK=1
 . I EDT'<$P(AGN(MS),"^",2),EDT'>$P(AGN(MS),"^",3) S OK=1
 . ;
 . I BDT'>$P(AGN(MS),"^",2),EDT'<$P(AGN(MS),"^",2) S OK=1
 . I BDT'>$P(AGN(MS),"^",3),EDT'<$P(AGN(MS),"^",3) S OK=1
 . ;
 . I OK D
 .. S MSA=$P(AGN(MS),"^",1)
 .. S ADR=$$LOW^XLFSTR($P($G(^BDPMSGA(MSA,0)),"^",2))
 .. I ADR'["direct" Q
 .. D EN^DDIOL(ADR_" "_$$FMTE^XLFDT($P(AGN(MS),"^",2))_" - "_$$FMTE^XLFDT($P(AGN(MS),"^",3)),"","!?7")
 Q
 ;
CMA ;EP - Check for current messaging agent
 S CURR=$P(^BDPRECN(BDPIEN,0),"^",3),CDT=$P(^(0),"^",5)
 I CURR="" Q
 ; If the current provider is matching the last provider in the history
 I $P(^BDPRECN(BDPIEN,1,LBP,0),"^",1)=CURR Q
 S QL=1
 Q
