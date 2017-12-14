BLRRLU ;cmi/anch/maw - BLR Reference Lab Utilities ; 02-Nov-2015 13:43 ; MAW
 ;;5.2;IHS LABORATORY;**1027,1035,1037,1040**;NOV 01, 1997;Build 5
 ;;5.2;LR;**1021**;Jul 27, 2006
 ;
 ;
 ;
 ;this routine will be used for items related to the reference lab
 ;project
 ;
 Q
 ;
SITE ;EP - setup the site parameters in BLR MASTER CONTROL
 ;and BLR REFERENCE LAB
 W !,"Now setting up reference lab parameters.."
 S DIC="^BLRRL(",DIC(0)="AEMQZ"
 S DIC("A")="Setup Parameters for which Reference Lab: "
 D ^DIC
 S BLRRL=+Y
 Q:'BLRRL
 S BLRRLE=$P($G(^BLRRL(BLRRL,0)),U)
 ;S DIE=DIC,DA=BLRRL,DR=".02:.07;.09;.11;1:4;6;7;20"  ;cmi/maw 4/3/2008 not used anymore now in BLR MASTER CONTROL
 ;D ^DIE  ;cmi/maw 4/3/2008 not used anymore now in BLR MASTER CONTROL
 K DIE,DR,DIC,DA
 I +$G(^BLRSITE(DUZ(2),BLRRL)) D COPY(BLRRL)
 W !!,"Now setting up GIS HL7 Message Parameters.."
 S BLRMSG=$O(^INTHL7M("B","HL IHS LAB O01 "_BLRRLE,0))
 Q:'BLRMSG
 S DIE="^INTHL7M(",DA=BLRMSG,DR="7.01:7.04"
 D ^DIE
 K DIE,DR,DA
 S DIC="^BLRSITE(",DIC(0)="AEMQZ"
 S DIC("A")="Add this Reference Lab to which Site: "
 D ^DIC
 Q:Y<0
 S DIE=DIC,DA=+Y,DR="3001////"_BLRRL_";3002:3023;3032;3044;3100;3200"  ;cmi/maw 4/3/2008 setup parameters in BLR MASTER CONTROL file
 D ^DIE
 K DIC,DIE,DR,DA
 W !!,"Now setting up Lab HL7 Message Parameter File.."
 I $O(^LAHM(62.48,"B",BLRRLE,0)) D
 . K DD,DO,DIC
 . S BLRHM=$O(^LAHM(62.48,"B",BLRRLE,0))
 . I 'BLRHM W !!,"Error creating entry in LAHM(62.48" Q
 . S DA(1)=BLRHM
 . S DIC="^LAHM(62.48,"_DA(1)_",90,",DIC(0)="L"
 . S DIC("P")=$P(^DD(62.48,90,0),U,2)
 . S BLRRID=$P($G(^INTHL7M(BLRMSG,7)),U,4)_$P($G(^INTHL7M(BLRMSG,7)),U,2)
 . S X=BLRRID
 . D FILE^DICN
 . I '+$G(Y) W !!,"Error creating entry in LAHM(62.48" Q
 . S DIE="^LAHM(62.48,",DA=BLRHM,DR="2///A"
 . D ^DIE
 W !!,"Now activating Reference Lab Interface.."
 D COMPILE^BHLU(BLRMSG)
 Q
 ;
EMC ;-- edit the master control file
 K DIE,DR,DA
 S DIC="^BLRSITE(",DIC(0)="AEMQZ"
 S DIC("A")="Edit which Reference Lab Site: "
 D ^DIC
 Q:Y<0
 S DIE=DIC,DA=+Y,DR="3001:3021;3100;3200"  ;cmi/maw 12/8/2008 setup parameters in BLR MASTER CONTROL file
 D ^DIE
 K DIC,DIE,DR,DA
 Q
 ;
COPY(RL) ;-- copy existing BLRRL settings to BLRSITE
 I $P($G(^BLRSITE(DUZ(2),"RL")),U,18)="" D
 . W !,"Now copying existing settings in BLR REFERENCE LAB file to each division in the BLR MASTER CONTROL FILE"
 N BLREXP
 Q
 ;
HOLD ;-- hold or release labs to pcc
 S BLRRL=$P($G(^BLRSITE(DUZ(2),0)),U)
 S DIE="^BLRRL(",DA=BLRRL,DR=11
 D ^DIE
 I $P($G(^BLRRL(BLRRL,0)),U,11) S BLRHOLD=1
 D JOB^BLRPARAM
 Q
 ;
PURGE ; EP -- purge entries in storage directory
 S BLRRL=$P($G(^BLRSITE(DUZ(2),0)),U)
 I '$G(BLRRL),'$D(ZTQUEUED) D  Q
 . W !!,"No reference lab defined in BLR MASTER CONTROL file"
 S BLRSDIR=$P($G(^BLRRL(BLRRL,0)),U,9)
 S BLRSFL=$P($G(^BLRRL(BLRRL,0)),U,7)
 I $G(BLRSDIR)="",'$D(ZTQUEUED) D  Q
 . W !!,"No storage directory to remove files from"
 S BLRDAYS=$P($G(^BLRRL(BLRRL,0)),U,12)
 I 'BLSDAYS S BLSDAYS=90
 S BLRT=$$BLST(DT,BLSDAYS)
 S BLRTE=$$FMTE^XLFDT(BLST)
 S BLRCDA=0
 W !,"Now cleaning up import/export log file entries older than "_BLRTE
 F  S BLRCDA=$O(^BLRRLG("BDT",BLRCDA)) Q:'BLRCDA!(BLRCDA>BLRT)  D
 . S BLRCIEN=0
 . F  S BLRCIEN=$O(^BLRRLG("BDT",BLRCDA,BLRCIEN)) Q:'BLRCIEN  D
 .. W "."
 .. S BLRFILES(BLRCIEN)=$P($G(^BLRRLG(BLRCIEN,0)),U)
 .. S DIK="^BLRRLG(",DA=BLRCIEN D ^DIK
 W !!,"Now cleaning up host files older than "_BLRTE
 S BLRFLST=$$LIST^%ZISH(BLRSDIR,BLRSFL_"*",.BLRFILES)
 I '$O(BLRFILES("")) D  Q
 . Q:$D(ZTQUEUED)
 . W !!,"No host files to remove"
 S BLRFDA=0 F  S BLRFDA=$O(BLRFILES(BLRFDA)) Q:'BLRFDA  D
 . S BLRFNM=$G(BLRFILES(BLRFDA))
 . I '$D(ZTQUEUED) D
 .. W !,"Removing export file "_BLRFNM_" in directory "_BLRSDIR
 . ;cmi/maw orig
 . ;S BLROS=$P($G(^AUTTSITE(1,0)),U,21)
 . ;I BLROS=1 S X=$$JOBWAIT^%HOSTCMD("rm "_BLRSDIR_BLRFNM)
 . ;I BLROS=2 S X=$ZOS(2,BLRSDIR_BLRFNM)
 . S BLRDMSG=$$DEL^%ZISH(BLRSDIR,BLRFNM)  ;cmi/maw new 4/16/03
 . I '$D(ZTQUEUED) D
 .. W !,"File "_BLRFNM_" removed"
 Q
 ;
PURGESM ;-- purge the shipping manifest over time
 N BLRDAYS,BLRSTART
 I '$D(ZTQUEUED) D  Q:'$G(BLRDAYS)
 . K DIR
 . S DIR(0)="N^1:365",DIR("A")="Purge Shipping Manifests older than how many days "
 . S DIR("B")=90
 . D ^DIR
 . I $D(DIRUT) K Y
 . S BLRDAYS=+$G(Y)
 I '$G(BLRDAYS) S BLRDAYS=90
 S X1=DT,X2=-BLRDAYS
 D C^%DTC
 S BLRSTART=X
 I $P($G(^BLRSITE(DUZ(2),"RL")),U,22) D PURGELSM(BLRSTART) Q
 N BLRRLDA
 S BLRRLDA=0 F  S BLRRLDA=$O(^BLRSHPM(BLRRLDA)) Q:'BLRRLDA  D
 . Q:$P($G(^BLRSHPM(BLRRLDA,0)),U,3)>BLRSTART
 . Q:$P($G(^BLRSHPM(BLRRLDA,11,0)),U,5)>BLRSTART
 . S DIK="^BLRSHPM(",DA=BLRRLDA  D ^DIK
 ;S BLRRLDA=0 F  S BLRRLDA=$O(^BLRSHPM("ADT",BLRRLDA)) Q:'BLRRLDA!(BLRRLDA>BLRSTART)  D
 ;. N BLRRLIEN
 ;. S BLRRLIEN=0 F  S BLRRLIEN=$O(^BLRSHPM("ADT",BLRRLDA,BLRRLIEN)) Q:'BLRRLIEN  D
 ;.. S DIK="^BLRSHPM(",DA=BLRRLIEN D ^DIK
 Q
 ;
PURGELSM(START) ;-- purge the ledi shipping manifest over time
 N BLRDA,BLRIDT,BLRIEN,BLRST,BLRPRG
 S BLRDA=0 F  S BLRDA=$O(^LAHM(62.8,"B",BLRDA)) Q:BLRDA=""  D
 . S BLRIDT=$P(BLRDA,"-",2)
 . S BLRIDT=$$HL7TFM^XLFDT(BLRIDT)
 . Q:BLRIDT>START
 . S BLRIEN=0 F  S BLRIEN=$O(^LAHM(62.8,"B",BLRDA,BLRIEN)) Q:'BLRIEN  D
 .. S BLRPRG=0
 .. I $P($G(^LAHM(62.8,BLRIEN,0)),U,3)=0 S BLRPRG=1
 .. I $P($G(^LAHM(62.8,BLRIEN,0)),U,3)=4 S BLRPRG=1
 .. I $G(BLRPRG)=1 S DIK="^LAHM(62.8,",DA=BLRIEN D ^DIK
 Q
 ;
LOG(FNM,TYP,USER)  ;EP - log the entry
 I $O(^BLRRLG("B",FNM,0)) D  Q BLRLGI
 . S BLRLGI=$O(^BLRRLG("B",FNM,0))
 . S DIE="^BLRRLG(",DA=BLRLGI,DR=".04////"_$$NOW_";.05////"_USER
 . D ^DIE
 . K DIE
 . Q
 K DD,DO,DIC
 S DIC="^BLRRLG(",DIC(0)="L"
 S DIC("DR")=".02////"_$$NOW_";.03///"_TYP_";.05////"_USER
 S X=FNM
 D FILE^DICN
 K DIC
 Q +Y
 ;
LOGM(FNM,ENT)       ; EP -- log the entry in the universal interface file
 S BLRLGI=$O(^BLRRLG("B",FNM,0))
 I 'BLRLGI Q ""
 I $G(ENT),'$O(ENT("")) D  Q BLRLLGI
 . K DD,DO,DIC
 . S DA(1)=BLRLGI
 . S DIC="^BLRRLG("_DA(1)_",1,",X=$G(ENT),DIC(0)="L"
 . S DIC("P")=$P(^DD(9009026.1,1,0),U,2)
 . D FILE^DICN
 . S BLRLLGI=+Y
 S BLRLDA=0 F  S BLRLDA=$O(ENT(BLRLDA)) Q:'BLRLDA  D
 . K DD,DO,DIC
 . S DA(1)=BLRLGI
 . S DIC="^BLRRLG("_DA(1)_",1,",X=BLRLDA,DIC(0)="L"
 . S DIC("P")=$P(^DD(9009026.1,1,0),U,2)
 . D FILE^DICN
 . S BLRLLGI=+Y
 Q $G(BLRLLGI)
 ;
NOW() ;-- get now
 D NOW^%DTC
 Q %
 ;
XREF ;-- reindex the UPIN index if not existent
 Q:$O(^VA(200,"AUPIN",0))
 W !,"Reindexing UPIN cross reference, stand by..."
 S DIK="^VA(200,",DIK(1)="9999999.08^UPIN"
 D ENALL^DIK
 Q
 ;
BLST(DT,DAYS) ;-- return day to purge by
 S X1=DT,X2=-DAYS D C^%DTC
 Q X
 ;
PORD ;-- purge the BLR REFERENCE LAB ORDER ACCESSION file
 N PASK
 S PASK=$$PASK
 Q:'$G(PASK)
 D PRG(PASK)
 K DIK,DA
 Q
 ;
PASK() ;-- ask the purge date
 K %DT
 S %DT="AE",%DT("A")="Purge entries before which date? "
 D ^%DT
 I Y=-1 Q 0
 Q +Y
 Q
 ;
PRG(PSK) ;-- purge entries before this date
 N PDA,PIEN
 S PDA=0 F  S PDA=$O(^BLRRLO("ACC",PDA)) Q:'PDA  D
 . S PIEN=0 F  S PIEN=$O(^BLRRLO("ACC",PDA,PIEN)) Q:'PIEN  D
 .. I $$BEFORE(PDA,PSK) D
 ... I '$D(ZTQUEUED) W "."
 ... S DIK="^BLRRLO(",DA=PIEN D ^DIK
 Q
 ;
BEFORE(PD,PS) ;-- is the accession before the purge date
 N RT,AA,AD,AN,OD
 S RT=$Q(^LRO(68,"C",PD))
 S AA=$QS(RT,4)
 S AD=$QS(RT,5)
 S AN=$QS(RT,6)
 S OD=$P($G(^LRO(68,AA,1,AD,1,AN,0)),U,4)
 Q $S((OD<PS):1,1:0)
 Q
 ;
QPASK ;-- queueable pask
 N PASK
 S PASK=$$BLST(DT,90)
 D PRG(PASK)
 K DIK,DA
 Q
 ;