APCDVDEL ; IHS/CMI/LAB - VISIT DELETE ;
 ;;2.0;IHS PCC SUITE;**10**;MAY 14, 2009;Build 88
 ;
 D GETPAT
 I APCDPAT="" W !!,"No PATIENT selected!" D EOJ Q
 D GETVISIT
 I APCDVSIT="" W !!,"No VISIT selected!" D EOJ Q
 D DSPLY
 I $D(^AUPNVNOT("AD",APCDVSIT)) W !!,"This visit has a TIU Note attached to it.  You cannot delete it.",! D PAUSE^APCDALV1 S APCDQ=1 Q
 I $D(^AUPNVREF("AD",APCDVSIT)) W !!,"This visit has a V Referral attached to it.  You cannot delete it.",! D PAUSE^APCDALV1 S APCDQ=1 Q  ;ADDED TO PREVENT DELETING A VISIT WITH V REFERRAL (IF NOT A DEMO PATIENT)
 W !!,"THE ABOVE VISIT AND RELATED V FILE ENTRIES WILL BE REMOVED FOREVER !!!"
 D DELETE
 D EOJ
 Q
 ;
GETPAT ; GET PATIENT
 W !
 S APCDPAT=""
 S DIC="^AUPNPAT(",DIC(0)="AEMQ" D ^DIC K DIC
 Q:Y<0
 S APCDPAT=+Y
 Q
 ;
GETVISIT ;
 S APCDLOOK="",APCDVSIT=""
 K APCDVLK
 D ^APCDVLK
 K APCDLOOK
 Q
 ;
DSPLY ;
 S APCDVDSP=APCDVSIT D ^APCDVDSP
 Q
 ;
DELETE ; DELETE VISIT AND RELATED V FILES
 W !,"Sure you want to delete" S %=2 D YN^DICN S %Y=$E(%Y)
 Q:%Y="^"
 Q:"Nn"[%Y
 S DIE="^AUPNVSIT(",DA=APCDVSIT,DR=2201 D ^DIE K DA,DIE,DR
 I $P($G(^AUPNVSIT(APCDVSIT,22)),U)="" S DA=APCDVSIT,DIE="^AUPNVSIT(",DR="2201///NO RESPONSE FROM OPERATOR" D ^DIE K DA,DIE,DR
 ;UPDATE DELETE LOG
 D UPDLOG(APCDVSIT)
 S APCDVDLT=APCDVSIT D ^APCDVDLT
 Q
 ;
EOJ ; EOJ HOUSE KEEPING
 K %,%DT,%X,%Y,C,DIYS,X,Y
 K APCDCAT,APCDCLN,APCDDATE,APCDLOC,APCDPAT,APCDTYPE,APCDVSIT
 Q
 ;
UPDLOG(F,T) ;EP - CALLED TO UPDATE DELETE LOG
 S T=$G(T)
 D EN^XBNEW("UPDLOG1^APCDVDEL","F;T")
 Q
UPDLOG1 ;
 I '$G(F) Q
 I '$D(^AUPNVSIT(F,0)) Q
 I $D(^APCDVDEL("B",F)) S DIE="^APCDVDEL(",DA=$O(^APCDVDEL("B",F,0)),DR=".02///"_$$NOW^XLFDT_";.05////"_DUZ_";.04////"_$G(T) S:$G(T) DR=DR_";.03///"_$$NOW^XLFDT D ^DIE K DIE,DA,DR Q
 S X=F,DIC="^APCDVDEL(",DIC(0)="L",DIADD=1,DLAYGO=9001003.92,DIC("DR")=".02///"_$$NOW^XLFDT_";.05////"_DUZ_";.04////"_$G(T) S:$G(T) DIC("DR")=DIC("DR")_";.03///"_$$NOW^XLFDT K DD,DO,D0 D FILE^DICN
 K DIC,DR,DIADD,DLAYGO,X
 Q