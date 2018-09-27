APCDDDPE ; IHS/CMI/LAB - delete dupe pt ed
 ;;2.0;IHS PCC SUITE;**20**;MAY 14, 2009;Build 25
 ;; ;
 W !!,"Looking for visits with Duplicate Patient Education Topics"
 W !!,"Please enter a starting visit date to look for visits with duplicate"
 W !,"V Patient Education entries.  The issue with duplicate education "
 W !,"started sometime in 2015 so you might want to start with 01/01/2015.",!!
 K APCDPESD
 S DIR(0)="D^:DT:EP",DIR("A")="Enter starting visit date for search" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) D EOJ Q
 S APCDPESD=Y
 S APCDPESD=$$FMADD^XLFDT(APCDPESD,-1)_".9999"
 S APCDPEV=0,APCDC=0
 S APCDMAX=0,APCDTOT=0
 K APCDIWTQ
 ;GET STARTING DATE
 F  S APCDPESD=$O(^AUPNVSIT("B",APCDPESD)) Q:APCDPESD=""!($G(APCDIWTQ))  D CHK
 Q
CHK ;
 S APCDPEV=0 F  S APCDPEV=$O(^AUPNVSIT("B",APCDPESD,APCDPEV)) Q:APCDPEV'=+APCDPEV!($G(APCDIWTQ))  D
 .Q:'$D(^AUPNVPED("AD",APCDPEV))  ;no patient ed
 .Q:'$D(^AUPNVSIT(APCDPEV,0))  ;bad xref
 .Q:$P(^AUPNVSIT(APCDPEV,0),U,7)="H"  ;no hospital
 .Q:$P(^AUPNVSIT(APCDPEV,0),U,7)="I"
 .S APCDX=0,APCDC=0,APCDZU=0
 .K APCDZPED,APCDZDUP
 .F  S APCDX=$O(^AUPNVPED("AD",APCDPEV,APCDX)) Q:APCDX'=+APCDX  D
 ..S Y=$$VALI^XBDIQ1(9000010.16,APCDX,.01)  ;INTERNAL OF TOPIC
 ..S P=$$VALI^XBDIQ1(9000010.16,APCDX,.05)  ;INTERNAL OF EDUCATION PROVIDER
 ..I 'P S P=$$VALI^XBDIQ1(9000010.16,APCDX,1204)  ;INTERNAL OF ENCOUNTER PROVIDER
 ..I 'P Q  ;no provider, not created by EHR so skip it
 ..I $D(APCDZPED(Y,P)) S APCDZDUP(APCDX)="IEN: "_APCDX_U_$$VAL^XBDIQ1(9000010.16,APCDX,.01)_U_Y_$$VAL^XBDIQ1(9000010.16,APCDX,1204)_U_P S $P(APCDZPED(Y,P),U,10)=$P(APCDZPED(Y,P),U,10)+1 Q
 ..S APCDZU=APCDZU+1,APCDZPED(Y,P)="IEN: "_APCDX_"  "_$$VAL^XBDIQ1(9000010.16,APCDX,.01)_"  "_$$VAL^XBDIQ1(9000010.16,APCDX,1204) Q
 .I '$D(APCDZDUP) Q  ;NO DUPES
 .W !!,$$FMTE^XLFDT($$VD^APCLV(APCDPEV)),"  HRN: ",$$HRN^AUPNPAT($P(^AUPNVSIT(APCDPEV,0),U,5),DUZ(2)),"  ",$$CLINIC^APCLV(APCDPEV,"E"),"  ",$$PRIMPROV^APCLV(APCDPEV,"N")
 .W !,"There are ",APCDZU," unique topic/provider codes on this visit:"
 .S X=0 F  S X=$O(APCDZPED(X)) Q:X'=+X  S P=0 F  S P=$O(APCDZPED(X,P)) Q:P'=+P  D
 ..W !,$P(APCDZPED(X,P),U,1)," (# of duplicates: "_+$P(APCDZPED(X,P),U,10)_")"
 ..Q
 .S DIR(0)="Y",DIR("A")="Would you like to display the visit",DIR("B")="N" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) K APCDZPED,APCDZDUP G DEL
 .I Y S APCDVSIT=APCDPEV D EN^APCDVD K APCDVSIT
DEL .;
 .W !! K DIR S DIR(0)="Y",DIR("A")="Would you like to delete the duplicates",DIR("B")="N" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) G MORE
 .I 'Y G MORE
 .;
 .S APCDX=0 F  S APCDX=$O(APCDZDUP(APCDX)) Q:APCDX'=+APCDX  D
 ..;set log
 ..M ^APCDVPED(APCDX)=^AUPNVPED(APCDX)
 ..S DA=APCDX,DIK="^APCDVPED(" D IX^DIK K DIK,DA
 ..S DA=APCDX,DIK="^AUPNVPED(" D ^DIK K DA,DIK  ;delete v patient ed
 .S DIR(0)="Y",DIR("A")="Deletion complete, would you like to re-display the visit",DIR("B")="N" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) G MORE
 .I 'Y G MORE
 .S APCDVSIT=APCDPEV D EN^APCDVD K APCDVSIT
MORE .;CONTINUE TO FIND MORE?
 .W !! S DIR(0)="Y",DIR("A")="Continue to find more",DIR("B")="Y" KILL DA D ^DIR KILL DIR
 .I $D(DIRUT) S APCDIWTQ=1 Q
 .I 'Y S APCDIWTQ=1
 Q
EOJ ;
 D EN^XBVK("APCD")
 Q
