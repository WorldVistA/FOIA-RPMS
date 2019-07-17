BDMDG14 ; IHS/CMI/LAB -IHS -CUMULATIVE REPORT 14 Oct 2014 9:54 AM ; 
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**12**;JUN 14, 2007;Build 51
 ;
 ;
DURDM(P,R,EDATE) ;EP
 NEW DATE,EARLY
 S DATE="",EARLY=9999999
 I $G(R) S DATE=$$CMSFDX^BDMDC13(P,R,"ID")
 I DATE S EARLY=DATE  ;Q ($$FMDIFF^XLFDT(EDATE,DATE,1)\365)
 S DATE=$$PLDMDOO^BDMDC13(P,"I")
 I DATE,DATE<EARLY S EARLY=DATE
 I EARLY=9999999 S EARLY=""
 ;I EARLY>EDATE S EARLY=""
 I EARLY="" Q ""
 I 'EARLY Q ""
 S EARLY=$$DI^BDMDC16(EARLY)
 ;W !,$$HRN^AUPNPAT(P,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2))),"^",EARLY,"^",$$D(EARLY),"^",($$FMDIFF^XLFDT(EDATE,EARLY,1)\365)
 Q ($$FMDIFF^XLFDT(EDATE,EARLY,1)\365.25)
D(D) ;EP
 I $G(D)="" Q ""
 Q $S($E(D,4,5)="00":"07",1:$E(D,4,5))_"/"_$S($E(D,6,7)="00":"01",1:$E(D,6,7))_"/"_$E(D,2,3)
DI(D) ;EP
 I $G(D)="" Q ""
 Q $E(D,1,3)_$S($E(D,4,5)="00":"07",1:$E(D,4,5))_$S($E(D,6,7)="00":"01",1:$E(D,6,7))
 ;
SOB(BDMPD,BMI,D) ;EP severly obese
 I $G(BMI)="" Q ""
 I +BMI'<40 Q 1
 Q 0
OB(BDMPD,BMI,D) ;EP obese
 I $G(BMI)="" Q ""
 I +BMI'<30 Q 1
 Q 0
OW(BDMPD,BMI,D) ;EP overweight
 I $G(BMI)="" Q ""
 I $G(BMI)<25 Q ""
 I BMI<30 Q 1
 Q ""
CUML ;EP
 Q:'$D(BDMCUML)
 ;print aggregate audit
 ;
 ;
PRINT ;
 ;S BDMPG=0
 S BDMQUIT=0
 D HEADER
 D PRINT1 ;print each indicator
 D EXIT
 Q
 ;
PRINT1 ;
 I BDMNOGO D
 .W !!,"*** NOTE:  ",BDMNOGO," Patients were not included in this report because their",!,"date of onset was after the Audit period end date.",!
 W !,$P(BDMCUML(10),U),!?3,"Male",?49,$$C($P(BDMCUML(10),U,4)),?61,$$C($P(BDMCUML(10),U,2)),?73,$$P($P(BDMCUML(10),U,2),$P(BDMCUML(10),U,4))
 W !?3,"Female",?49,$$C($P(BDMCUML(10),U,3)),?61,$$C($P(BDMCUML(10),U,2)),?73,$$P($P(BDMCUML(10),U,2),$P(BDMCUML(10),U,3))
 ;W !?3,"Unknown",?49,$$C($P(BDMCUML(10),U,5)),?61,$$C($P(BDMCUML(10),U,2)),?73,$$P($P(BDMCUML(10),U,2),$P(BDMCUML(10),U,5))
 I $Y>(BDMIOSL-7) D HEADER Q:BDMQUIT
 W !!,"Age" S V=$G(BDMCUML(20))
 ;S V="^4567^1234^345^987^12000"
 W !?3,"<20 years",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?3,"20-44 years",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 W !?3,"45-64 years",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5))
 W !?3,">=65 years",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,6))
TYPE ;
 I $Y>(BDMIOSL-6) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(25))
 W !!,$P(V,U)
 W !?3,"Type 1",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?3,"Type 2",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
DMDUR ;
 I $Y>(BDMIOSL-6) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(30)) W !!,$P(V,U)
 W !?3,"<1 year",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,6))
 W !?3,"<10 years",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?3,">=10 years",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 W !?3,"Diagnosis date not recorded",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5))
 ;weight control
WTCNTL ;
 I $Y>(BDMIOSL-8) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(40)) W !!,$P(V,U)
 W !?3,"Normal (BMI<25.0)",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,6))
 W !?3,"Overweight (BMI 25.0-29.9)",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?3,"Obese (BMI >=30.0)",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 W !?3,"Height or weight missing",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5))
 W !?3,"----------------------------------"
 W !?3,"Severely obese (BMI >=40.0)",?49,$$C($P(V,U,7)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,7))
BSC ;
 I $Y>(BDMIOSL-10) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(50)) W !!,$P(V,U)
 W !?3,"A1C <7.0",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?3,"A1C 7.0-7.9",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 W !?3,"A1C 8.0-8.9",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5))
 W !?3,"A1C 9.0-9.9",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,6))
 W !?3,"A1C 10.0-10.9",?49,$$C($P(V,U,7)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,7))
 W !?3,"A1C >=11.0",?49,$$C($P(V,U,8)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,8))
 W !!?3,"Not tested or no valid result",?49,$$C($P(V,U,9)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,9))
 W !?3,"----------------------------------"
 W !?3,"A1C <8.0",?49,$$C($P(V,U,11)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,11))
 W !?3,"A1C >9.0",?49,$$C($P(V,U,12)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,12))
BPC ;
 I $Y>(BDMIOSL-9) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(60)) W !!,$P(V,U)
 S T=$P(V,U,5)+$P(V,U,4)+$P(V,U,3)
 W !?3,"<140/<90",?49,$$C(T),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),T)
 W !?3,"140/90 - <160/<100",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,6))
 W !?3,"160/100 or higher",?49,$$C($P(V,U,7)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,7))
 W !?3,"BP category undetermined",?49,$$C($P(V,U,8)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,8))
 W !?3,"----------------------------------"
 W !?3,"If age >=60 years, <150/<90",?49,$$C($P(V,U,10)),?61,$$C($P(V,U,9)),?73,$$P($P(V,U,9),$P(V,U,10))
 ;
HTN ;
 I $Y>(BDMIOSL-7) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(410))
 W !!,"Hypertension"
 W !?3,"Diagnosed ever",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?6,"Diagnosed hypertension and mean BP <140/<90",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,3)),?73,$$P($P(V,U,3),$P(V,U,4))
 W !?6,"Diagnosed hypertension and ACE inhibitor",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,3)),?73,$$P($P(V,U,3),$P(V,U,5))
 W !?9,"or ARB prescribed."
TOBSCR ;
 I $Y>(BDMIOSL-9) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(65)) W !!,"Tobacco and Nicotine Use",!?3,$P(V,U)
 W !?6,"Screened",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?6,"Not screened",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
TOB ;
 I $Y>(BDMIOSL-9) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(80)) W !!?3,$P(V,U)
 W !?6,"Current tobacco user",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?9,"In current users, counseled?"
 W !?12,"Yes",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,3)),?73,$$P($P(V,U,3),$P(V,U,4))
 W !?12,"No",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,3)),?73,$$P($P(V,U,3),$P(V,U,5))
 W !?6,"Not a current tobacco user",?49,$$C($P(V,U,7)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,7))
 W !?6,"Tobacco use not documented",?49,$$C($P(V,U,8)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,8))
ENDS ;
 I $Y>(BDMIOSL-7) D HEADER Q:BDMQUIT
 S V=BDMCUML(69)
 W !!,"Electronic nicotine delivery system (ENDS) "
 W !,"use screening during Audit period"
 W !?6,"Screened",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?6,"Not screened",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 W !,"ENDS use status"
 W !?6,"Current ENDS user",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5))
 W !?6,"Not a current ENDS user",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,6))
 W !?6,"ENDS use not documented",?49,$$C($P(V,U,7)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,7))
 W !,"----------------------------------"
 W !,"Current user of both tobacco and ENDS",?49,$$C($P(V,U,8)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,8))
 W !,"Current user of tobacco and/or ENDS",?49,$$C($P(V,U,9)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,9))
TX ;
 I $Y>(BDMIOSL-30) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(90)) W !!,$P(V,U)
NUMMEDS ;
 I $Y>(BDMIOSL-10) D HEADER Q:BDMQUIT
 W !!?3,"Number of diabetes meds currently prescribed"
 W !?6,"None",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?6,"One medication",?49,$$C($P(V,U,17)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,17))
 W !?6,"Two medications",?49,$$C($P(V,U,18)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,18))
 W !?6,"Three medications",?49,$$C($P(V,U,19)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,19))
 W !?6,"Four or more medications",?49,$$C($P(V,U,20)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,20))
 ;
 W !!?3,"Diabetes meds currently prescribed, alone or in combination"
 W !!?6,"Insulin",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 W !!?6,"Metformin [Glucophage, others]",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5))
 W !!?6,"Sulfonylurea [glyburide, glipizide, ",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,6)),!?6,"others]"
 W !!?6,"DPP4 inhibitor [Sitagliptin (Januvia),",?49,$$C($P(V,U,7)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,7)),!?6,"Saxagliptin (Onglyza), Linagliptin ",!?6,"(Tradjenta), Alogliptin (Nesina)]"
 W !!?6,"GLP-1 agonist [Exenatide (Byetta, ",?49,$$C($P(V,U,8)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,8)),!?6,"Bydureon), Liraglutide (Victoza), Albiglutide",!?6,"(Tanzeum), Dulaglutide (Trulicity), "
 W !?6,"Lixisenatide (Adlyxin), Semaglutide (Ozempic)]"
 W !!?6,"SGLT-2 inhibitor [Canagliflozin,",?49,$$C($P(V,U,9)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,9)),!?6,"(Invokana), Dapagliflozin (Farxiga),",!?6,"Empagliflozin (Jardiance), ",!?6,"Ertugliflozin (Steglatro)]"
 W !!?6,"Pioglitazone [Actos] or rosiglitazone",?49,$$C($P(V,U,10)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,10)),!?6,"[Avandia]"
 W !!?6,"Acarbose [Precose] or miglitol [Glyset]",?49,$$C($P(V,U,11)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,11))
 W !!?6,"Repaglinide [Prandin] or Nateglinide ",?49,$$C($P(V,U,12)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,12)),!?6,"[Starlix]"
 W !!?6,"Amylin analog [Symlin]",?49,$$C($P(V,U,14)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,14))
 W !!?6,"Bromocriptine [Cycloset]",?49,$$C($P(V,U,15)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,15))
 W !!?6,"Colesevelam [Welchol]",?49,$$C($P(V,U,16)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,16))
STATIN ;
 I $Y>(BDMIOSL-18) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(115)) W !!,$P(V,U)
 W !?3,"Yes*",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,4)),?73,$$P($P(V,U,4),$P(V,U,6))
 W !?3,"Allergy, intolerance, or contraindication",?49,$$C($P(V,U,7)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,7))
 W !!?3,"In patients with diagnosed CVD "
 W !?6,"Yes*",?49,$$C($P(V,U,22)),?61,$$C($P(V,U,21)),?73,$$P($P(V,U,21),$P(V,U,22))
 W !?6,"Allergy, intolerance, or contraindication",?49,$$C($P(V,U,17)),?61,$$C($P(V,U,16)),?73,$$P($P(V,U,16),$P(V,U,17))
 W !!?3,"In patients age 40-75 years "
 W !?6,"Yes*",?49,$$C($P(V,U,19)),?61,$$C($P(V,U,8)),?73,$$P($P(V,U,8),$P(V,U,19))
 W !?6,"Allergy, intolerance, or contraindication",?49,$$C($P(V,U,20)),?61,$$C($P(V,U,23)),?73,$$P($P(V,U,23),$P(V,U,20))
 W !!?3,"In patients with diagnosed CVD and/or age 40-75 years"
 W !?6,"Yes*",?49,$$C($P(V,U,26)),?61,$$C($P(V,U,25)),?73,$$P($P(V,U,25),$P(V,U,26))
 W !?6,"Allergy, intolerance, or contraindication",?49,$$C($P(V,U,27)),?61,$$C($P(V,U,24)),?73,$$P($P(V,U,24),$P(V,U,27))
 W !!?2,"*Excludes patients with an allergy, intolerance, or contraindication."
CVD ;
 I $Y>(BDMIOSL-10) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(400))
 W !!,"Cardiovascular Disease (CVD)"
 W !?3,"CVD diagnosed ever",?49,$$C($P(V,U,8)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,8))
 W !?6,"CVD and mean BP <140/<90",?49,$$C($P(V,U,9)),?61,$$C($P(V,U,8)),?73,$$P($P(V,U,8),$P(V,U,9))
 W !?6,"CVD and not current tobacco user",?49,$$C($P(V,U,10)),?61,$$C($P(V,U,8)),?73,$$P($P(V,U,8),$P(V,U,10))
 W !?6,"CVD and aspirin or other",?49,$$C($P(V,U,12)),?61,$$C($P(V,U,8)),?73,$$P($P(V,U,8),$P(V,U,12)),!?9,"antiplatelet/anticoagulant therapy prescribed"
 W !?6,"CVD and statin prescribed*",?49,$$C($P(V,U,11)),?61,$$C($P(V,U,34)),?73,$$P($P(V,U,34),$P(V,U,11))
 W !?6,"*Excludes patients with an allergy, intolerance, or contraindication"
RETIN ;
 I $Y>(BDMIOSL-5) D HEADER Q:BDMQUIT
 S V=BDMCUML(400)
 W !!,"Retinopathy"
 W !?3,"Diagnosed ever",?49,$$C($P(V,U,38)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,38))
LEAMP ;
 I $Y>(BDMIOSL-5) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(117))
 W !!,$P(BDMCUML(117),U,1)
 W !?3,"Any type ever (e.g., toe, partial",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3)),!?3,"foot, above or below knee)"
 D ^BDMDG1A
 Q
EXIT ;
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO",DIR("A")="End of report.  Press ENTER" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
CALC(N,O) ;ENTRY POINT
 ;N is new
 ;O is old
 NEW Z
 I O=0!(N=0) Q "**"
 NEW X,X2,X3
 S X=N,X2=1,X3=0 D COMMA^%DTC S N=X
 S X=O,X2=1,X3=0 D COMMA^%DTC S O=X
 S Z=(((N-O)/O)*100),Z=$FN(Z,"+,",1)
 Q Z
P(D,N) ;return %
 I 'D Q ""
 I 'N Q "  0%"
 NEW X S X=N/D,X=X*100,X=$J(X,3,0)
 Q X_"%"
C(X,X2,X3) ;
 I '$G(X2) S X2=0
 I '$G(X3) S X3=6
 D COMMA^%DTC
 Q X
HEADER ;EP
 G:'BDMPG HEADER1
 W !
 K DIR I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BDMQUIT=1 Q
HEADER1 ;
 W:$D(IOF) @IOF S BDMPG=BDMPG+1
 I $G(BDMGUI),BDMPG'=1 W !,"ZZZZZZZ"
 I $G(BDMGUI) W !!
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BDMPG,!
 W !,$$CTR("IHS Diabetes Care and Outcomes Audit - RPMS Audit",80),!
 N BDMDHDR
 S BDMDHDR="Audit Report for 2019 (Audit Period "_$$DATE^BDMS9B1(BDMBDAT)_" to "_$$DATE^BDMS9B1(BDMADAT)_")"
 W $$CTR(BDMDHDR,80),!
 ;W $$CTR("AUDIT REPORT FOR 2019 (Audit Period "_$$DATE^BDMS9B1(BDMBDAT)_" to "_$$DATE^BDMS9B1(BDMADAT)_")"),!
 S X="Facility: "_$P(^DIC(4,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0),U) W $$CTR(X,80),!
 W $$CTR("Annual Audit",80),!
 S X=$P(BDMCUML(10),U,2)_" patients were audited" W $$CTR(X),!
 W $TR($J("",80)," ","-"),!
 W ?45,"# of ",?57,"#",?70,"Percent",!
 W ?45,"Patients",?57,"Considered",!
 W ?45,"(Numerator)",?57,"(Denominator)",!
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
