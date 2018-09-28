BDPAMA ;IHS/CMI/LAB - ASSIGN MESSAGE AGENT ; 05 Jun 2018  11:09 AM
 ;;2.0;IHS PCC SUITE;**10,21**;MAY 14, 2009;Build 34
 ;
 ; Subscripted BDPREC is EXTERNAL form.
 ;   BDPREC("PAT NAME")=patient name
 ;   BDPREC("PROV TYPE")=Provider Category Type
 ;   BDPDFN=patient ien
 ;   BDPRDATE=date in internal FileMan form
 ;   BDPRIEN=Designated Provider ien
 ;
START ;
 ;
 D INFORM ;Data Entry Explanation
 ;
 D MAIN Q:BDPQ  D HDR^BDP
 D EOJ
 Q
 ;
MAIN ;
 S BDPQ=0,BDPYI=0
 D OLDPROV ;              get Old Existing Provider
 Q:BDPQ
 D COUNT
 Q:BDPQ  ;Quit No Records for this Provider
 ;D ASK
 ;Q:BDPQ
 S DIC="^BDPTCAT(",X="MESSAGE AGENT",DIC(0)="MQ" D ^DIC K DIC
 I Y=-1 W !!,"can't find message agent category" Q
 S BDPTYPE=+Y
 D MA
 I BDPQ=1 G MAIN
 ;
 D ASKGO ;                  add new Designated Provider record
 S BDPQ=0
 Q
 ;
OLDPROV ; GET OLD EXISTING PROVIDER
 ;
 S BDPOPROV="",BDPQ=0
 W !!,"Select the Provider for whose patients you want to assign a message agent."
 S DIC("A")="Select Provider: ",DIC="^VA(200,",DIC(0)="AEMQ" D ^DIC K DIC,DA S:$D(DUOUT) DIRUT=1,BDPQ=1
 I +Y<1 S BDPQ=1 Q
 Q:$D(DIRUT)
 S BDPOPROV=+Y,BDPOPRVP=$P(Y,U,2)
 S BDPOPRVP=$P(^VA(200,BDPOPROV,0),U,1) ;Provider Print Name
 S BDPQ=0
 Q
 ;
COUNT ;Count of # Patients for this Old Provider
 S BDPI="",BDPQ=0,BDPYI=0
 F  S BDPI=$O(^BDPRECN("AC",BDPOPROV,BDPI)) Q:BDPI=""  S BDPYI=BDPYI+1
 W !!?10,"There are ",BDPYI," patients currently assigned to this Provider."
 I BDPYI=0 S BDPQ=1 ;More than one patient exists for Provider
 K BDPI,BDPYI
 W !
 W !
 Q
 ;
 ;
ASK ;Ask to Continue
 S BDPQ=0
 W !! S DIR(0)="Y",DIR("A")="Do you want to continue changing the Designated Provider for each Patient?",DIR("B")="Y" K DA D ^DIR K DIR
 I $D(DIRUT) S BDPQ=1 Q
 I 'Y S BDPQ=1 Q
 Q
 ;
 ;
TYPE ; GET CATEGORY TYPE FOR DESIGNATED PROVIDER
 W !
 S BDPQ=1
 S DIR(0)="90360.1,.01",DIR("B")="DPCP" K DA D ^DIR K DIR
 Q:$D(DIRUT)
 S BDPTYPE=+Y,BDPREC("PROV TYPE")=Y(0)
 I $P(^BDPTCAT(BDPTYPE,0),U,1)="MESSAGE AGENT",'$D(^BDPMSGA("B",BDPPROV)) D  G TYPE
 .W !!,"The provider you selected is not listed as a Message Agent, he/she must "
 .W !,"be added to the Message Agent List using the option on the Manager's "
 .W !,"Menu before they can be assigned as a message agent.",!
 I $P(^BDPTCAT(BDPTYPE,0),U,1)="MESSAGE AGENT",$P($G(^BDPMSGA(BDPPROV,0)),U,3) D  G TYPE
 .W !!,"The provider you selected has been inactivated as a message agent, he/she"
 .W !," must be reactivated using the option on the Manager's Menu before they can "
 .W !,"be assigned as a message agent.",!
 ;
 S BDPQ=0
 Q
MA ; GET MESSAGE
 S BDPPROV="",BDPQ=0
 S DIC("A")="Select Message Agent: ",DIC="^BDPMSGA(",DIC("S")="I '$P(^(0),U,3)",DIC(0)="AEMQ" D ^DIC K DIC,DA S:$D(DUOUT) DIRUT=1,BDPQ=1
 Q:$D(DIRUT)
 I +Y<1 S BDPQ=1 Q
 S BDPPROV=+Y,BDPRPROV=$P(Y,U,2)
 S BDPRPRVP=$P(^VA(200,BDPPROV,0),U,1) ;Provider Print Name
 S BDPQ=0
 Q
 ;
ASKGO ;Ask to continue
 ;
 W !!!,?8,"*****************************************************************",!
 W !!,?8,"Okay, you have selected Provider : ",BDPOPRVP,!
 W ?8,"Patients who have that provider assigned to them will be",!
 W ?8,"assigned Message Agent: ",$$VAL^XBDIQ1(200,BDPPROV,.01) W !!
 W !,?8,"*********************************************************************",!
 ;
 ;
 S DIR(0)="Y",DIR("A")="Do you wish to Continue to add the Message Agent to each patient",DIR("?")="Enter Y for Yes or N for NO",DIR("B")="N" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) S BDPQ=1 Q
 I Y=0 S BDPQ=1 Q
 ;
 ;
UPDATE ;Update Records
 ;
 S BDPIEN="" F  S BDPIEN=$O(^BDPRECN("AC",BDPOPROV,BDPIEN)) Q:BDPIEN'=+BDPIEN  D
 . Q:BDPIEN=""
 . ;S BDPTYPEM=$P($G(^BDPRECN(BDPIEN,0)),U) ;Type to Match On
 . ;Q:BDPTYPEM=""
 . ;Q:BDPTYPE=""
 . ;I BDPTYPE'=BDPTYPEM Q  ;Quit if No Match
 . S BDPPAT=$P($G(^BDPRECN(BDPIEN,0)),U,2) ;Patient
 . Q:BDPPAT=""
 . Q:BDPPROV=""  ;Quit if No New Provider
 . S X=$$CREATE(BDPPAT,BDPTYPE,BDPPROV) Q
 ;
 Q
 ;
CREATE(BDPDFN,BDPTYPE,BDPRPRVP) ;EP - Entry Point to Create
 ;
 N BDPRR,BDPLINKI,BDPLPROV,BDPRIEN,BDPLINKI
 ;
 S BDPQ=1
 S BDPLINKI=1  ;tell xrefs we are in bdp
 S BDPRPROV=$P($G(^VA(200,BDPRPRVP,0)),U) ;Provider Text Name
 S BDPRR=$O(^BDPRECN("AA",BDPDFN,BDPTYPE,""))  ;Check to see if this Patient already has Type
 I BDPRR="" D ADDNEW Q BDPQ  ;NONE OF THIS TYPE
 S BDPLPROV=$P($G(^BDPRECN(BDPRR,0)),U,3) ;Current Provider
 Q:BDPLPROV=BDPRPRVP 0  ;Quit if Same Provider Selected as Current
 S BDPRIEN=BDPRR D MOD Q 0
 Q 0
 ;
ADDNEW ;Add a new Record
 K DIC S DIC="^BDPRECN(",DIC(0)="L",DLAYGO=90360.1,DIC("DR")=".02////"_BDPDFN,X=BDPTYPE
 D FILE^BDPFMC
 K DIC,DLAYGO,DIADD
 I Y<0 W !,"Error creating DESIGNATED PROVIDER.",!,"Notify programmer.",! D EOP^BDP Q
 ;
 S BDPRIEN=+Y
 ;S X="`"_BDPRPRVP,DIC="^BDPRECN("_BDPRIEN_",1,",DA(1)=BDPRIEN,DIC(0)="L",DIC("P")=$P(^DD(90360.1,.06,0),U,2) D ^DIC K DIC,DA,DR,Y,X,DIADD,DLAYGO D ^XBFMK
 S X="`"_BDPRPRVP,DIC="^BDPRECN("_BDPRIEN_",1,",DA(1)=BDPRIEN,DIC(0)="L",DIC("P")=$P(^DD(90360.1,.06,0),U,2),DIC("DR")=".04////"_DT D ^DIC K DIC,DA,DR,Y,X,DIADD,DLAYGO D ^XBFMK  ;IHS/CMI/LAB - PATCH 21 ADDED SETTING OF .04 EFFECTIVE DATE
 S BDPQ=0
 K BDPLINKI
 Q
 ;
MOD ;Modify an Existing Provider Type for this Patient
 S BDPLINKI=1
 ;S X="`"_BDPRPRVP,DIC="^BDPRECN("_BDPRIEN_",1,",DA(1)=BDPRIEN,DIC(0)="L",DIC("P")=$P(^DD(90360.1,.06,0),U,2) D ^DIC K DIC,DA,DR,Y,X,DIADD,DLAYGO D ^XBFMK
 ;FIND THE LAST MULTIPLE AND SET .05 EQUAL TO DT, .02 AND .03
 S Z=0,X=0 F  S X=$O(^BDPRECN(BDPRIEN,1,X)) Q:X'=+X  S Z=X
 I Z,$P(^BDPRECN(BDPRIEN,1,Z,0),U,5)="" S DIE="^BDPRECN("_BDPRIEN_",1,",DA(1)=BDPRIEN,DA=Z,DR=".02////"_DUZ_";.03////"_DT_";.05////"_DT D ^DIE K DIE,DR,DA,DINUM,X,Y,Z
 ;now add new one
 S DIADD=1,X="`"_BDPRPRVP,DIC="^BDPRECN("_BDPRIEN_",1,",DA(1)=BDPRIEN,DIC(0)="L",DIC("P")=$P(^DD(90360.1,.06,0),U,2),DIC("DR")=".04////"_DT D ^DIC K DIC,DIADD,DR
 I Y=-1 S BDPQ=0 Q
 K DIC,DA,DR,Y,X,DIADD,DLAYGO D ^XBFMK   ;IHS/CIM/LAB - ADDED SETTING OF .04 EFFECTIVE DATE PATCH 21
 ;
 S DIE="^BDPRECN(",DA=BDPRIEN,DR=".03///`"_BDPRPRVP_";.04////"_DUZ_";.05////"_DT D ^DIE,^XBFMK
 S BDPQ=0
 K BDPLINKI
 Q
 ;
MSGEND ;End of Add Message
 W !!!!,"Okay - I have changed all Patient Records - as follows: ",! D  Q
 .W !,"Patients that had: ",BDPOPRVP," assigned to them.",!
 . W "Have been assigned Message Agent:"_BDPRPRVP W !
 . D PAUSE^BDP
 S BDPQ=0
 Q
 ;
 ;
EOJ ; END OF JOB
 D ^BDPKILL
 Q
 ;
INFORM ;Data Entry Explanation
 ;
 W !,?3,"This option is used to assign a Message Agent to any patient who"
 W !,"has a particular provider assigned to them.  For example, if you want"
 W !,"to assign message agent Mary Smith, RN to all of Dr. Miller's patients"
 W !,"you can do so with this option."
 W !!!,"PLEASE NOTE:  If the patient already has a message agent assigned"
 W !,"this option will replace that message agent with the new one you are"
 W !,"assigning.",!
 Q
