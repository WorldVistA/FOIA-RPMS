APCDAUTL ; IHS/CMI/LAB - misc calls from pcc data entry templates ;
 ;;2.0;IHS PCC SUITE;**22**;MAY 14, 2009;Build 6
 ;
 ;
ST(PATIENT,DATE,STDA) ;EP - called from APCD ST (ADD) template to find parent entry 
 NEW X,ERR,E,B,S,STIEN,TEST
 S STIEN=""
 ;when reading is entered
 ;set vars for data fetcher, find last skin test placed within
 ;30 days of date of visit, make sure that one does not have
 ;a reading already
ST1 ;
 Q:$G(DATE)=""
 Q:$G(PATIENT)=""
 Q:$G(STDA)=""
 S TEST=$P(^AUPNVSK(STDA,0),U)
 S B=$$FMTE^XLFDT(DATE,"1D")
 S E=$$FMADD^XLFDT(DATE,-30)
 S E=$$FMTE^XLFDT(E,"1D")
 S X=PATIENT_"^SKIN `"_TEST_";DURING "_E_"-"_B
 S ERR=$$START1^APCLDF(X,"S(")
 I ERR!('$D(S))!('$O(S(0))) Q STIEN
 S X=99999999 F  S X=$O(S(X),-1) Q:X=""!(STIEN)  I +$P(S(X),U,4)'=STDA,$P(^AUPNVSK(+$P(S(X),U,4),0),U,4)="",$P(^(0),U,5)="" S STIEN=+$P(S(X),U,4)
 Q STIEN
GET04 ;EP - called from APCD VDEL (ADD) and APCDVDEL (MOD) templates
 ;display list with reader call
 ;get subset
 D EN^XBNEW("GET040^APCDAUTL","APCDTDA;APCDTRET")
 W !
 Q
GET040 ;EP - called from xbnew
 W !!,"LABOR ESTABLISHED SNOMED CONCEPT ID"
 S IN="EHR LABOR ESTABLISHED"
 K LIST
 S X=$$SUBLST^BSTSAPI("LIST",IN)
 ;I '$O(LIST(0)) D SET04LST
 ;
GET041 S S="",APCDTRET=""
 D DISP  ;DISPLAY LIST AND GET VALUE
 I S="" W !,"A SNOMED CONCEPT ID is REQUIRED!" G GET041
 S APCDTRET=S
 Q
DISP ;
 W !!
 S X=0,C=0 F  S X=$O(LIST(X)) Q:X'=+X  S C=C+1 W ?2,X,") ",$P(LIST(X),U,1),?20,$P(LIST(X),U,3),!
 ;now get choice
 S DIR(0)="N^1:"_C_":0",DIR("A")="Please Choose a SNOMED CONCEPT ID from the list above" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) W !,"Choosing a SNOMED is required." G DISP
 S S=$P(LIST(+Y),U,1)
 Q
GET07 ;EP - called from APCD VDEL (ADD) and APCDVDEL (MOD) templates
 ;display list with reader call
 ;get subset
 D EN^XBNEW("GET070^APCDAUTL","APCDTDA;APCDTRET")
 W !
 Q
GET070 ;EP - called from xbnew
 W !!,"LABOR INDUCTION SNOMED CONCEPT ID"
 S IN="EHR LABOR INDUCTION TYPE"
 K LIST
 S X=$$SUBLST^BSTSAPI("LIST",IN)
 ;I '$O(LIST(0)) D SET07LST
 ;
GET071 S S="",APCDTRET=""
 D DISP  ;DISPLAY LIST AND GET VALUE
 I S="" W !,"A SNOMED CONCEPT ID is REQUIRED!" G GET071
 S APCDTRET=S
 Q
SET04LST ;
 S LIST(1)="20236002^^Labor established (finding)"
 S LIST(2)="289211007^^First stage of labor established (finding)"
 S LIST(3)="366325002^^Finding of progress of labor - first stage (finding)"
 S LIST(4)="6383007^^Premature labor (finding)"
 S LIST(5)="6893006^^First stage of labor (finding)"
 S LIST(6)="84457005^^Spontaneous onset of labor (finding)"
 Q
SET07LST ;
 S LIST(1)="177135005^^Oxytocin induction of labor (procedure)"
 S LIST(2)="177136006^^Prostaglandin induction of labor (procedure)"
 S LIST(3)="237002008^^Stimulation of labor (procedure)"
 S LIST(4)="288189000^^Induction of labor by intravenous injection (procedure)"
 S LIST(5)="288190009^^Induction of labor by intravenous drip (procedure)"
 S LIST(6)="308037008^^Syntocinon induction of labor (procedure)"
 S LIST(7)="31208007^^Medical induction of labor (procedure)"
 S LIST(8)="408816000^^Artificial rupture of membranes (procedure)"
 S LIST(9)="408818004^^Induction of labor by artificial rupture of membranes (procedure)"
 Q
NEWBORN ;EP- called from APCD VDEL (ADD) AND APCD VDEL (MOD)
 D EN^XBNEW("NEWBORN1^APCDAUTL","APCDTDA")
 W !
 Q
NEWBORN1 ;
 ;display existing NEWBORN DATA
 W !!?2,"Newborn Data:"
 I '$O(^AUPNVDLV(APCDTDA,11,0)) S APCDC=0 W "  None recorded" G FM12
 D EN^DDIOL($$REPEAT^XLFSTR("-",75),"","!?1")
 K APCDCM S X=0,APCDC=0 F  S X=$O(^AUPNVDLV(APCDTDA,11,X)) Q:X'=+X  D
 .S APCDC=APCDC+1,APCDCM(APCDC)=X
 .W !?2,APCDC,")  ",$$GET1^DIQ(9000010.6411,X_","_APCDTDA,.01),"  ",$$GET1^DIQ(9000010.6411,X_","_APCDTDA,.05),"  ",$$GET1^DIQ(9000010.6411,X_","_APCDTDA,.06)
FM12 ;
 D EN^DDIOL("","","!")
 K DIR
 S DIR(0)="S^A:Add a Newborn Entry"_$S(APCDC:";E:Edit an Existing Newborn Entry;D:Delete a Newborn Entry",1:"")_";N:No Change"
 S DIR("A")="Which action",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT),$O(^AUPNVDLV(APCDTDA,11,0)) G FM13
 I $D(DIRUT),'$O(^AUPNVDLV(APCDTDA,11,0)) W !!,"At least one Newborn entry is required." G NEWBORN1
 I Y="N",$O(^AUPNVDLV(APCDTDA,11,0)) S APCDDONE=1 G FM13
 I Y="N",'$O(^AUPNVDLV(APCDTDA,11,0)) W !!,"At least one Newborn entry is required." G NEWBORN1
 S Y="FM"_Y
 D @Y
 G NEWBORN1
FM13 ; 
 K Y
 Q
 ;
FME ;
 D EN^DDIOL("","","!")
 K DIR
 S DIR(0)="N^1:"_APCDC_":0",DIR("A")="Edit Which One" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
FME1 ;EP
 K DIC,DA,DR
 S APCDTMDA=APCDCM(Y)
 S APCDTEGA=$$EGA(APCDTDA,APCDTMDA)
 I APCDTEGA="" W !!,"Note:  There are no EGA measurements on file between a day before",!,"and the delivery date. You will need to manually enter the EGA.",!
 I APCDTEGA]"" W !!,"NOTE:  EGA was ",$P(APCDTEGA,U,3)," on ",$$FMTE^XLFDT($P(APCDTEGA,U,1))
 S DA=APCDCM(Y),DR=".01;.03//"_APCDTEGA_";.05;.06",DA(1)=APCDTDA
 S DIE="^AUPNVDLV("_APCDTDA_",11,"
 D ^DIE
 F X=1:1:6 I $P(^AUPNVDLV(APCDTDA,11,DA,0),U,X)="" W !,"All data values are required.  Please update." G FME1
 K DIE
 Q
FMD ;
 D EN^DDIOL("","","!")
 K DIR
 S DIR(0)="N^1:"_APCDC_":0",DIR("A")="Delete Which One" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
 K DIC,DA,DR
 S DA=APCDCM(Y),DA(1)=APCDTDA,DIK="^AUPNVDLV("_APCDTDA_",11," D ^DIK K DA,DIK
 Q
FMA ;
 S DIR(0)="D^::ENPRTXS",DIR("A")="Enter NEWBORN Delivery Date/Time" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
 I Y="" Q
 I Y>$$NOW^XLFDT W !!,"Cannot be a date/time in the future." G FMA
 S X=Y
 S DIC(0)="L",DIC="^AUPNVDLV("_APCDTDA_",11,",DA(1)=APCDTDA,DIC("DR")=""  ;
 D FILE^DICN
 S APCDTMDA=+Y
 S APCDTEGA=$$EGA(APCDTDA,APCDTMDA)
 I APCDTEGA="" W !!,"Note:  There are no EGA measurements on file between a day before",!,"and the delivery date. You will need to manually enter the EGA.",!
 I APCDTEGA]"" W !!,"NOTE:  EGA was ",$P(APCDTEGA,U,3)," on ",$$FMTE^XLFDT($P(APCDTEGA,U,1)),!
FMA1 ;
 K DIC,DA,DR
 S DA=APCDTMDA,DR=".03//"_$P(APCDTEGA,U,3)_";.05;.06",DA(1)=APCDTDA
 S DIE="^AUPNVDLV("_APCDTDA_",11,"
 D ^DIE
 F X=1:1:6 I $P(^AUPNVDLV(APCDTDA,11,DA,0),U,X)="" W !,"All data values are required.  Please update." G FMA1
 K DIE
 Q
EGA(APCDI,APCDM) ;
 ;get admission date, delivery date
 NEW DELV,BD,ED
 S DELV=$P($P(^AUPNVDLV(APCDI,11,APCDM,0),U,1),".")
 S BD=$$FMADD^XLFDT(DELV,-1)
 S ED=DELV
 ;get LAST EGA in bd to ed
 S P=$P(^AUPNVDLV(APCDI,0),U,2)
 S C=$$LASTITEM^APCLAPIU(P,"EGA","MEASUREMENT",BD,ED,"A")
 I C="" Q ""
 Q C
GET04E ;EP - called from APCD VDEL (ADD) and APCDVDEL (MOD) templates
 ;display list with reader call
 ;get subset
 D EN^XBNEW("GET040E^APCDAUTL","APCDTDA;APCDTRET")
 W !
 Q
GET040E ;EP - called from xbnew
 W !!,"LABOR ESTABLISHED SNOMED CONCEPT ID"
 S IN="EHR LABOR ESTABLISHED"
 K LIST
 S X=$$SUBLST^BSTSAPI("LIST",IN)
 ;I '$O(LIST(0)) D SET04LST
 ;DISPLAY LIST
 W !!
 S X=0,C=0 F  S X=$O(LIST(X)) Q:X'=+X  S C=C+1 W ?2,X,") ",$P(LIST(X),U,1),?20,$P(LIST(X),U,3),!
 ;I $$VAL^XBDIQ1(9000010.64,APCDTDA,.04)="" G GET041E
 W !,"LABOR ESTABLISHED SNOMED CONCEPT ID: ",$$VAL^XBDIQ1(9000010.64,APCDTDA,.04),!
 S DIR(0)="Y",DIR("A")="Do you wish to change the SNOMED code",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I 'Y S APCDTRET=$$VAL^XBDIQ1(9000010.64,APCDTDA,.04) Q
 I $D(DIRUT) S APCDTRET=$$VAL^XBDIQ1(9000010.64,APCDTDA,.04) Q
 ;
GET041E S S="",APCDTRET=""
 D DISP  ;DISPLAY LIST AND GET VALUE
 I S="" W !,"A SNOMED CONCEPT ID is REQUIRED!" G GET041E
 S APCDTRET=S
 Q
GET07E ;EP - called from APCD VDEL (ADD) and APCDVDEL (MOD) templates
 ;display list with reader call
 ;get subset
 D EN^XBNEW("GET070E^APCDAUTL","APCDTDA;APCDTRET")
 W !
 Q
GET070E ;EP - called from xbnew
 W !!,"LABOR INDUCTION SNOMED CONCEPT ID"
 S IN="EHR LABOR INDUCTION TYPE"
 K LIST
 S X=$$SUBLST^BSTSAPI("LIST",IN)
 ;I '$O(LIST(0)) D SET07LST
 ;DISPLAY LIST
 W !!
 I $$VAL^XBDIQ1(9000010.64,APCDTDA,.07)]"" S X=0,C=0 F  S X=$O(LIST(X)) Q:X'=+X  S C=C+1 W ?2,X,") ",$P(LIST(X),U,1),?20,$P(LIST(X),U,3),!
 I $$VAL^XBDIQ1(9000010.64,APCDTDA,.07)="" G GET071E
 W !,"LABOR INDUCTION SNOMED CONCEPT ID: ",$$VAL^XBDIQ1(9000010.64,APCDTDA,.07),!
 S DIR(0)="Y",DIR("A")="Do you wish to change the SNOMED code",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I 'Y S APCDTRET=$$VAL^XBDIQ1(9000010.64,APCDTDA,.07) Q
 I $D(DIRUT) S APCDTRET=$$VAL^XBDIQ1(9000010.64,APCDTDA,.07) Q
 ;
GET071E S S="",APCDTRET=""
 D DISP  ;DISPLAY LIST AND GET VALUE
 I S="" W !,"A SNOMED CONCEPT ID is REQUIRED!" G GET071E
 S APCDTRET=S
 Q
GLDT ;EP - called from input template
 D EN^XBNEW("GLDT1^APCDAUTL","APCDTDA;APCDTDDT")
 W !
 Q
GLDT1 ;
 S APCDTDDT=""
 S DIR(0)="DO^::ENPRTXS",DIR("A")="Labor Established (Date/Time)",DIR("?")="Response must be a date/time, cannot be a date/time in the future." KILL DA D ^DIR
 KILL DIR
 I $D(DIRUT) Q
 I Y>$$NOW^XLFDT W !!,"Response must be a date/time, cannot be a date/time in the future." G GLDT1
 S APCDTDDT=Y
 Q
