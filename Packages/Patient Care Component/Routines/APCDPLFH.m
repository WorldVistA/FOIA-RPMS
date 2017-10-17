APCDPLFH ;IHS/CMI/LAB - UPDATE ICD CODE FROM BSTS ; 31 Jan 2017  8:51 AM
 ;;2.0;IHS PCC SUITE;**11,15,19**;MAY 14, 2009;Build 5
 ;; ;
 ;
 W !!,"This option is used to update the diagnosis on Problem List"
 W !,"and family history entries when you first switch to ICD-10 from ICD-9",!,"or when a DTS upgrade with updated mappings is received.",!!
 S APCDIMP=$$IMP^AUPNSICD(DT)
 W !!,"Your system's ICD files are set to ",$S(APCDIMP=30:"ICD10",1:"ICD9")," when this runs it will ",!,"put ",$S(APCDIMP=30:"ICD10",1:"ICD9")," codes as the diagnosis on the Problem and Family History entries.",!!
 S DIR(0)="Y",DIR("A")="Do you wish to continue",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
 I 'Y Q
 ;S XBRP="",XBRC="QUEUE^APCDPLFH",XBNS="APCD*",XBRX="XIT^APCDPLFH"
 ;D ^XBDBQUE
 W !!,"Hold on..this may take a few minutes.."
 D QUEUE
 D XIT
 Q
XIT ;
 D EN^XBVK("APCD")
 Q
QUEUE ;EP
 S APCDIMP=$$IMP^AUPNSICD(DT)
 I '$D(ZTQUEUED) W !,"Looping through Problem entries....."
 S APCDX=0,APCDCNT=0
 F  S APCDX=$O(^AUPNPROB(APCDX)) Q:APCDX'=+APCDX  D
 .S APCDCNT=APCDCNT+1
 .I '$D(ZTQUEUED) W:'(APCDCNT#1000) "."
 .Q:'$D(^AUPNPROB(APCDX,0))
 .S APCDCI=$P($G(^AUPNPROB(APCDX,800)),U)  ;only snomed coded problems
 .Q:APCDCI=""
 .Q:$P(^AUPNPROB(APCDX,0),U,12)="D"  ;SKIP DELETED PROBLEMS
 .S APCDICDS=$P($$CONC^AUPNSICD(APCDCI_"^^"_DT_"^1^^PRB="_APCDX),U,5)  ;ALL ICD CODES CURRENT FROM BSTS
 .S APCDO01=$P(^AUPNPROB(APCDX,0),U,1)  ;old .01
 .S APCD001E=$$VAL^XBDIQ1(9000011,APCDX,.01) ;old .01 external value (code)
 .S APCDOA=""  ;old additional, ":" delimited
 .S X=0 F  S X=$O(^AUPNPROB(APCDX,12,X)) Q:X'=+X  D
 ..S Y=$P($G(^AUPNPROB(APCDX,12,X,0)),U)
 ..Q:'Y
 ..I APCDIMP=30 S Y=$P($$ICDDX^ICDEX(Y,,,"I"),U,2)
 ..I APCDIMP=1 S Y=$P($$ICDDX^ICDCODE(Y),U,2)
 ..S APCDOA=APCDOA_$S(APCDOA]"":":",1:"")_Y
 .S APCDOLDT=APCD001E_$S(APCDOA]"":";",1:"")_$TR(APCDOA,":",";")   ;all current codes formatted like return from BSTS with ";"
 .Q:APCDICDS=APCDOLDT  ;nothing changed so don't bother updating anything
 .;
 .;update PROBLEM entry and the change log
 .S APCDN01=$P(APCDICDS,";")  ;new .01 code
 .I APCDIMP=30 S APCDN01=+$$CODEABA^ICDEX(APCDN01,80,30) ;new .01 internal
 .I APCDIMP=1 S APCDN01=+$$CODEN^ICDCODE(APCDN01,80)  ;new .01 internal icd9
 .I 'APCDN01 G ADDL  ;no valid new .01 value go do additional and skip .01
 .I APCDN01=-1 G ADDL  ;Can't change it if it isn't in file 80
 .I APCDN01=APCDO01 G ADDL  ;.01 new and old are the same so no need to update .01 but go check additional codes
 .;now set AUPNPROB
 .K DIE,DA,DR S DA=APCDX,DR=".01////"_APCDN01,DIE="^AUPNPROB(" D ^DIE K DIE,DA,DR
ADDL .;ADDITIONAL MULTIPLE
 .K APCDNA
 .S APCDNA=$P(APCDICDS,";",2,999)  ;new addtional codes
 .I APCDNA=$P(APCDOLDT,";",2,999) G LOG  ;additional codes did not change by order or value
 .;DELETE OUT OLD ADDITIONAL MULTIPLE
 .S APCDZ=0 F  S APCDZ=$O(^AUPNPROB(APCDX,12,APCDZ)) Q:APCDZ'=+APCDZ  D
 ..S DIE="^AUPNPROB("_APCDX_",12,",DA=APCDZ,DA(1)=APCDX,DR=".01///@" D ^DIE K DIE,DA,DR
 .;SET new 12 NODES
 .S APCDFNUM=9000011.12
 .S APCDNODE=12,APCDE=""
 .F APCDZ=1:1 S APCDY=$P(APCDNA,";",APCDZ) Q:APCDY=""  D
 ..I APCDIMP=30 S APCDP=+$$CODEABA^ICDEX(APCDY,80,30)
 ..I APCDIMP=1 S APCDP=+$$CODEN^ICDCODE(APCDY,80)
 ..Q:'APCDP
 ..Q:APCDP=-1
 ..K APCDFDA
 ..S APCDFDA(APCDFNUM,"+2,"_APCDX_",",.01)=APCDP
 ..D UPDATE^DIE("","APCDFDA","","ERR")
 ..I $G(ERR("DIERR",1)) D SETE
LOG .;update my log if either .01 or addiitional multiple changed
 .K DIC,DD,D0,DO,DO
 .S DIADD=1,DLAYGO=9001040.1,DIC(0)="L",DIC="^APCDPLMD("
 .S X=DT,DIC("DR")=".02////"_APCDX_";.03////"_APCDO01_";.04////"_APCDN01_";.05////"_APCDOA_";.06////"_$TR(APCDNA,";",":")_";.07////9000011;.08////"_APCDCI
 .D FILE^DICN
 .K DIC,DIADD,DLAYGO
 .S APCDLOGE=+Y
FH ;
 I '$D(ZTQUEUED) W !,"Now looping through Family History entries.."
 S APCDX=0,APCDCNT=0
 F  S APCDX=$O(^AUPNFH(APCDX)) Q:APCDX'=+APCDX  D
 .S APCDCNT=APCDCNT+1
 .I '$D(ZTQUEUED) W:'(APCDCNT#1000) "."
 .Q:'$D(^AUPNFH(APCDX,0))
 .S APCDCI=$P($G(^AUPNFH(APCDX,0)),U,13)  ;only snomed coded fh ENTRIES
 .Q:APCDCI=""
 .S APCDICDS=$P($$CONC^AUPNSICD(APCDCI_"^^"_DT_"^1^^FH="_APCDX),U,5)  ;ALL ICD CODES
 .S APCDO01=$P(^AUPNFH(APCDX,0),U,1)
 .S APCD001E=$$VAL^XBDIQ1(9000014,APCDX,.01)  ;EXTERNAL #.01
 .S APCDOA=""
 .S X=0 F  S X=$O(^AUPNFH(APCDX,11,X)) Q:X'=+X  D
 ..S Y=$P($G(^AUPNFH(APCDX,11,X,0)),U)
 ..Q:'Y
 ..I APCDIMP=30 S Y=$P($$ICDDX^ICDEX(Y,,,"I"),U,2)
 ..I APCDIMP=1 S Y=$P($$ICDDX^ICDCODE(Y),U,2)
 ..S APCDOA=APCDOA_$S(APCDOA]"":":",1:"")_Y
 .S APCDOLDT=APCD001E_$S(APCDOA]"":";",1:"")_$TR(APCDOA,":",";")   ;all current codes
 .Q:APCDICDS=APCDOLDT  ;NOTHING CHANGED SO DON'T UPDATE ANYTHING
 .;update fh entry and the log
 .S APCDN01=$P(APCDICDS,";")
 .I APCDIMP=30 S APCDN01=+$$CODEABA^ICDEX(APCDN01,80,30)
 .I APCDIMP=1 S APCDN01=+$$CODEN^ICDCODE(APCDN01,80)
 .I 'APCDN01 G ADDLFH  ;no valid new .01 value go do additional and skip .01
 .I APCDN01=-1 G ADDLFH  ;Can't change it if it isn't in file 80
 .I APCDN01=APCDO01 G ADDLFH  ;.01 new and old are the same so no need to update .01 but go check additional codes
 .;now set AUPNFH .01
 .K DIE,DA,DR S DA=APCDX,DR=".01////"_APCDN01,DIE="^AUPNFH(" D ^DIE K DIE,DA,DR
ADDLFH .;
 .K APCDNA
 .S APCDNA=$P(APCDICDS,";",2,999)
 .I APCDNA=$P(APCDOLDT,";",2,999) G LOGFH  ;additional codes did not change by order or value
 .S APCDZ=0 F  S APCDZ=$O(^AUPNFH(APCDX,11,APCDZ)) Q:APCDZ'=+APCDZ  D
 ..S DIE="^AUPNFH("_APCDX_",11,",DA=APCDZ,DA(1)=APCDX,DR=".01///@" D ^DIE K DIE,DA,DR
 .;SET 11 NODES
 .S APCDFNUM=9000014.11
 .F APCDZ=1:1 S APCDY=$P(APCDNA,";",APCDZ) Q:APCDY=""  D
 ..I APCDIMP=30 S APCDP=+$$CODEABA^ICDEX(APCDY,80,30)
 ..I APCDIMP=1 S APCDP=+$$CODEN^ICDCODE(APCDY,80)
 ..Q:'APCDP
 ..Q:APCDP=-1
 ..K APCDFDA
 ..S APCDFDA(APCDFNUM,"+2,"_APCDX_",",.01)=APCDP
 ..D UPDATE^DIE("","APCDFDA","","ERR")
 ..I $G(ERR("DIERR",1)) D SETE
LOGFH .;update log for FH
 .K DIC,DD,D0,DO,DO
 .S DIADD=1,DLAYGO=9001040.1,DIC(0)="L",DIC="^APCDPLMD("
 .S X=DT,DIC("DR")=".02////"_APCDX_";.03////"_APCDO01_";.04////"_APCDN01_";.05////"_APCDOA_";.06////"_$TR(APCDNA,";",":")_";.07////9000014;.08////"_APCDCI
 .D FILE^DICN
 .K DIC,DIADD,DLAYGO
 .S APCDLOGE=+Y
 Q
SETE ;
 S DA=APCDLOGE,DIE="^APCDPLMD(",DR="1///"_ERR("DIERR",1)
 Q
