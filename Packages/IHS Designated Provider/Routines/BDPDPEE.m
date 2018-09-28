BDPDPEE ; IHS/CMI/TMJ - UPDATE USING LISTMAN ; 
 ;;2.0;IHS PCC SUITE;**2,10,20,21**;MAY 14, 2009;Build 34
 ;
 ;
START ;
 NEW BDPX,BDPY,BDPR0,DFN,AUPNPAT,AUPNDOB,AUPNDOD,AUPNDAYS,AUPNSEX,BDPV,BDPBD,BDPED
 NEW D,R
 K BDPV
 W:$D(IOF) @IOF
 W $$CTR("View/Update Designated Provider List",80)
PROV ;
 D ^XBFMK
 S BDPDP=""
 W !! S DIC("A")="Enter Designated Provider Name: ",DIC="^VA(200,",DIC(0)="AEMQ" D ^DIC K DIC,DA,DR,DLAYGO,DIADD
 I Y<0 W !,"No Provider Selected." Q
 S BDPPIEN=+Y
 S X=$$CHKPROV(BDPPIEN) I X Q
 D EN
END ;
 D EOJ
 K BDPP,BDPQUIT,BDPW
 Q
 ;
CHKPROV(PROV) ;
 NEW X,Y,BDPQ,BDPG
 S BDPQ=0,BDPG=0
 S X=$$VAL^XBDIQ1(200,PROV,53.4) I X]"" D
 .W !!,"Please Note:  This provider was inactivated on ",X,!
 .S BDPG=1
 I '$D(^VA(200,"AK.PROVIDER",$P($G(^VA(200,PROV,0)),U),PROV)) D
 .W !!,"Please Note:  This person does not have the PROVIDER key and therefore",!,"should not be used as the designated primary care provider.",!
 .S BDPG=1
 I 'BDPG Q 0
 NEW DIR
 S DIR(0)="Y",DIR("A")="Do you wish to continue with the update",DIR("B")="Y" KILL DA D ^DIR KILL DIR
 W !
 I 'Y Q 1
 Q 0
PPEP(BDPPIEN) ;PEP - entry point to view/update one provider's panel
 I '$G(BDPPIEN) Q
 D EN
 Q
EN ;EP -- main entry point for BDP UPDATE PATIENT DATA
 D EN^VALM("BDP DESG PROVIDER UPDATE")
 K BDPCASE,BDPX,BDPD,BDPRCNT,BDPLINE,BDPCDATE
 Q
 ;
HDR ; -- header code
 S VALMHDR(1)=$TR($J(" ",80)," ","-")
 S VALMHDR(2)="Patients with Designated Provider: "_$P(^VA(200,BDPPIEN,0),U)
 S VALMHDR(3)="*I or *D denotes patient is Inactive or Deceased"
 S VALMHDR(4)=$TR($J(" ",80)," ","-")
 S VALMHDR(5)="#      HRN    PATIENT NAME            DOB      SEX LAST VISIT   PROV TYPE"
 Q
 ;
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
INIT ; -- init variables and list array
 S VALMSG="?? for more actions  + next screen  - prev screen"
 D GATHER ;gather up all records for display
 S VALMCNT=BDPLINE
 Q
 ;
GATHER ;
 K ^TMP("BDPDPEE",$J),^TMP($J,"BDPDPEE")
 S BDPD=0 F  S BDPD=$O(^BDPRECN("AC",BDPPIEN,BDPD)) Q:BDPD'=+BDPD  S ^TMP($J,"BDPDPEE",$P(^DPT($P(^BDPRECN(BDPD,0),U,2),0),U),BDPD)=""
 S BDPRCNT=0,BDPLINE=0
 S BDPNAME=0 F  S BDPNAME=$O(^TMP($J,"BDPDPEE",BDPNAME)) Q:BDPNAME=""  D
 .S BDPX=0 F  S BDPX=$O(^TMP($J,"BDPDPEE",BDPNAME,BDPX)) Q:BDPX'=+BDPX  D
 ..S BDPRCNT=BDPRCNT+1,BDPLINE=BDPLINE+1,Y=BDPRCNT
 ..S BDPD=$P(^BDPRECN(BDPX,0),U,2)
 ..I $$DOD^AUPNPAT(BDPD)]"" S Y=Y_" *D"
 ..E  I $P($G(^AUPNPAT(BDPD,41,DUZ(2),0)),U,3)]"" S Y=Y_" *I"
 ..S $E(Y,8)=$$HRN^AUPNPAT(BDPD,DUZ(2)),$E(Y,15)=$E($P(^DPT(BDPD,0),U),1,20),$E(Y,39)=$$DATE^BDPLMDSP($$DOB^AUPNPAT(BDPD)),$E(Y,48)=$P(^DPT(BDPD,0),U,2),$E(Y,52)=$$DATE^BDPLMDSP($$LASTVD^APCLV1(BDPD))
 ..S $E(Y,62)=$$VAL^XBDIQ1(90360.1,BDPX,.01)
 ..S ^TMP("BDPDPEE",$J,BDPLINE,0)=Y,^TMP("BDPDPEE",$J,"IDX",BDPLINE,BDPRCNT)=BDPX
 Q  ;new 
 ;
CHG ;EP - Called from Protocol to change from One Provider to Another
 ;
 D FULL^VALM1
 S DIR(0)="LO^:",DIR("A")="Change which selected item" K DA D ^DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No items selected." G EXIT
 I $D(DIRUT) W !,"No Item selected." G EXIT
 S BDPANS=Y ;Selected Items
 W ! S DIC("A")="Enter New Designated Provider Name: ",DIC="^VA(200,",DIC(0)="AEMQ",DIC("B")=$P(^VA(200,DUZ,0),U)
 D ^DIC K DIC,DA,DR,DLAYGO,DIADD
 I Y<0 W !,"No Provider Selected." D PAUSE G EXIT
 S BDPPROV=+Y
 S X=$$CHKPROV(BDPPROV) I X G EXIT
 S BDPC="" F BDPI=1:1 S BDPC=$P(BDPANS,",",BDPI) Q:BDPC=""  S BDPR=^TMP("BDPDPEE",$J,"IDX",BDPC,BDPC) D
 . I '$D(^BDPRECN(BDPR,0)) Q
 . S BDPPAT=$P(^BDPRECN(BDPR,0),U,2)
 . S BDPTYPE=$P(^BDPRECN(BDPR,0),U) ; TYPE
 . I $$GET1^DIQ(90360.3,BDPTYPE,.01)="MESSAGE AGENT",'$D(^BDPMSGA("B",BDPPROV)) W !!,"Cannot assign as Message Agent (not in message agent file)-RECORD ",BDPC D PAUSE^BDP Q
 . I $$GET1^DIQ(90360.3,BDPTYPE,.01)="MESSAGE AGENT",$P($G(^BDPMSGA(BDPPROV,0)),U,3) W !!,"Cannot assign as Message Agent (inactive message agent)-RECORD ",BDPC D PAUSE^BDP Q
 . S X=$$CREATE^BDPAMA(BDPPAT,BDPTYPE,BDPPROV)
 W !,"Changed the selected Providers",!
 D EXIT
 Q
RMDP ;EP - called from protocol to remove multiple DP entries
 S DIR(0)="LO^:",DIR("A")="Remove which selected item" K DA D ^DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No items selected." G EXIT
 I $D(DIRUT) W !,"No Item selected." G EXIT
 S BDPANS=Y,BDPC="" F BDPI=1:1 S BDPC=$P(BDPANS,",",BDPI) Q:BDPC=""  S BDPR=^TMP("BDPDPEE",$J,"IDX",BDPC,BDPC) D
 . I '$D(^BDPRECN(BDPR,0)) Q
 . S BDPPAT=$P(^BDPRECN(BDPR,0),U,2)
 . S BDPTYPE=$P(^BDPRECN(BDPR,0),U) ; TYPE
 . D DELETE^BDPPASS
 ;D FULL^VALM1
 ;W !,"Removing ",$P(^VA(200,BDPPIEN,0),U)," as the ",$$VAL^XBDIQ1(90360.1,BDPR,.01)," provider for ",!,$P(^DPT(BDPPAT,0),U)," ..."
 ;D DELETE^BDPPASS
 W !,"Removed the selected Providers",!
 D EXIT
 Q
GETTYPE ;
 S APCHSTYP=""
 S X="",DIC(0)="AEMQL",DIC="^APCHSCTL(" D ^DIC K DIC,DA
 I Y=-1 W !!,"NO TYPE SELECTED.",!! Q
 S APCHSTYP=+Y
 Q
HS ;EP called from protocol to generate hs
 S DFN=""
 S DIC="^AUPNPAT(",DIC(0)="AEMQ" D ^DIC K DIC,DA,DR,DLAYGO,DIADD
 I Y<0 W !,"No Patient Selected." Q
 S DFN=+Y
 S Y=DFN D ^AUPNPAT
 D GETTYPE
 I '$G(APCHSTYP) D EN^XBVK("APCH"),PAUSE,EXIT Q
 S APCHSPAT=DFN
 S %="PCC Health Summary for "_$P(^DPT(APCHSPAT,0),U)
 D VIEWR^XBLM("EN^APCHS",%)
 D EN^XBVK("APCH") K AMCHDAYS,AMCHDOB,%
 D EXIT
 Q
ADDDP ;EP called from protocol to open a new case
 D FULL^VALM1
 W:$D(IOF) @IOF
 S BDPPAT=""
 S DIC="^AUPNPAT(",DIC(0)="AEMQ" D ^DIC K DIC,DA,DR,DLAYGO,DIADD
 I Y<0 W !,"No Patient Selected." Q
 S BDPPAT=+Y
ADDDP1 S BDPTYPE=""
 K DIR S DIR(0)="90360.1,.01",DIR("A")="Enter the Type of Designated Provider" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) W !!,"TYPE not entered." D PAUSE,EXIT Q
 S BDPTYPE=+Y
 I $D(^BDPRECN("AA",BDPPAT,BDPTYPE)) S X=$O(^BDPRECN("AA",BDPPAT,BDPTYPE,0)) I $P($G(^BDPRECN(X,0)),U,3)'="" D  I BDPQ D PAUSE,EXIT Q
 .W !!,"This patient already has provider ",$P(^VA(200,$P($G(^BDPRECN(X,0)),U,3),0),U)," assigned for category ",!?5,$P(^BDPTCAT(BDPTYPE,0),U)
 .K DIR
 .S BDPQ=""
 .S DIR(0)="Y",DIR("A")="Do you want to change the provider to "_$P(^VA(200,BDPPIEN,0),U,1),DIR("B")="Y" KILL DA D ^DIR KILL DIR
 .I 'Y S BDPQ=1 Q
 I $P(^BDPTCAT(BDPTYPE,0),U,1)="MESSAGE AGENT",'$D(^BDPMSGA("B",BDPPIEN)) D  G ADDDP1
 .W !!,"This person is not listed as a Message Agent, they must be added to the Message"
 .W !,"Agent List using the option on the Manager's Menu before they can be "
 .W !,"assigned as a message agent.",!
 I $P(^BDPTCAT(BDPTYPE,0),U,1)="MESSAGE AGENT",$P($G(^BDPMSGA(BDPPIEN,0)),U,3) D  G ADDDP1
 .W !!,"This person been inactivated as a message agent, they must be reactivated"
 .W !,"using the option on the Manager's Menu before they can be assigned"
 .W !,"as a message agent.",!
 S X=$$CREATE^BDPAMA(BDPPAT,BDPTYPE,BDPPIEN)
 D EXIT
 Q
 ;
GATHER1 ;EP Called from Protocol to Resort List Display
 ;
 S BDPSANS=""
 ;
BDPASK ;Ask User Type of Sort
 ;
 S DIR(0)="S^1:PATIENT;2:CATEGORY",DIR("A")="Enter Type of Lister Display Sort: ",DIR("B")="PATIENT",DIR("?")="You must select a Sort Type from the List" KILL DA D ^DIR KILL DIR
 I Y<0 W !,"NO SORT SELECTED.",!! Q
 S BDPSANS=Y
 D EXIT
 Q
 ;
GATHER2 ;Resort by Provider
 ;
 K ^TMP("BDPDPEE",$J),^TMP($J,"BDPDPEE")
 S BDPD=0 F  S BDPD=$O(^BDPRECN("AC",BDPPIEN,BDPD)) Q:BDPD'=+BDPD  S ^TMP($J,"BDPDPEE",$P(^BDPRECN(BDPD,0),U),BDPD)=""
 S BDPRCNT=0,BDPLINE=0
 S BDPNAME=0 F  S BDPNAME=$O(^TMP($J,"BDPDPEE",BDPNAME)) Q:BDPNAME=""  D
 .S BDPX=0 F  S BDPX=$O(^TMP($J,"BDPDPEE",BDPNAME,BDPX)) Q:BDPX'=+BDPX  D
 ..S BDPRCNT=BDPRCNT+1,BDPLINE=BDPLINE+1,Y=BDPRCNT
 ..S BDPD=$P(^BDPRECN(BDPX,0),U,2)
 ..S $E(Y,8)=$$HRN^AUPNPAT(BDPD,DUZ(2)),$E(Y,15)=$E($P(^DPT(BDPD,0),U),1,20),$E(Y,39)=$$DATE^BDPLMDSP($$DOB^AUPNPAT(BDPD)),$E(Y,48)=$P(^DPT(BDPD,0),U,2),$E(Y,52)=$$DATE^BDPLMDSP($$LASTVD^APCLV1(BDPD))
 ..S $E(Y,62)=$$VAL^XBDIQ1(90360.1,BDPX,.01)
 ..S ^TMP("BDPDPEE",$J,BDPLINE,0)=Y,^TMP("BDPDPEE",$J,"IDX",BDPLINE,BDPRCNT)=BDPX
 Q  ;new 
HELP ;EP -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 K BDPX,BDPCASE,BDPPC,BDPR1,BDPPAT,DFN
 D TERM^VALM0
 S VALMBCK="R"
 I '$D(BDPSANS) D GATHER S VALMCNT=BDPLINE D HDR K X,Y,Z,I Q
 I BDPSANS=1 D GATHER S VALMCNT=BDPLINE D HDR K X,Y,Z,I Q
 I BDPSANS=2 D GATHER2 S VALMCNT=BDPLINE D HDR K X,Y,Z,I Q
 I BDPSANS="" D GATHER S VALMCNT=BDPLINE D HDR K X,Y,Z,I Q
PAUSE ;EP
 S DIR(0)="EO",DIR("A")="Press ENTER to continue...." D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
EOJ ;
 D EN^XBVK("BDP")
 K DFN
 K DDSFILE,DIPGM,Y
 K X,Y,%,DR,DDS,DA,DIC
 K BDPCASE,BDPX,BDPD,BDPRCNT,BDPLINE,BDPCDATE
 D:$D(VALMWD) CLEAR^VALM1
 K VALM,VALMHDR,VALMKEY,VALMMENU,VALMSGR,VALMUP,VALMWD,VALMLST,VALMVAR,VALMLFT,VALMBCK,VALMCC,VALMAR,VALMBG,VALMCAP,VALMCOFF,VALMCNT,VALMCON,VALMON,VALMEVL,VALMIOXY
 D KILL^AUPNPAT
 Q
 ;
EXPND ; -- expand code
 Q
 ;
