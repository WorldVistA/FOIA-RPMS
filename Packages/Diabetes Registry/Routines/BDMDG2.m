BDMDG2 ; IHS/CMI/LAB - IHS Diabetes Audit 2019 ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**12**;JUN 14, 2007;Build 51
 ;
 ;W:$D(IOF) @IOF
REGASK ;
 W !,$$CTR("ASSESSMENT OF DIABETES CARE, 2019")
 W !,$$CTR("DIABETES E-AUDIT")
 W !!,"This option is used to run the 2019 Electronic Diabetes Audit for a"
 W !,"predefined set of patients.  The patients selected are 'Active Diabetic"
 W !,"Patients' as defined by the Clinical Reporting system (GPRA).  In "
 W !,"addition you can optionally only include the patient if they are an"
 W !,"active member of the Diabetes register."
 W !,"The definition used to select patients is the following:"
 W !?3,"1. Must reside in a community specified in the official GPRA "
 W !?6,"community taxonomy."
 W !?3,"2. Must be alive on the audit date."
 W !?3,"3. Indian/Alaska Natives Only - based on Classification of 01."
 W !?3,"4. Must have 2 visits to medical clinics in the 3 years prior to the"
 W !?6,"audit date. At least one visit must include: 01 General,"
 W !?6,"06 Diabetic, 10 GYN, 12 Immunization, 13 Internal Med,"
 W !?6,"20 Pediatrics, 24 Well Child, 28 Family Practice, 57 EPSDT,"
 W !?6,"70 Women's Health, 80 Urgent, 89 Evening."
 W !?3,"5. The patient must have been diagnosed with diabetes at"
 W !?6,"least 1 year prior to the audit date."
 W !?3,"6. The patient must have had at least 2 visits during the"
 W !?6,"year prior to the Audit date, AND 2 DM-related visits ever."
 W !
 K DIR S DIR(0)="E",DIR("A")="Please press enter to continue" D ^DIR K DIR
 W !!
COMM ;get gpra community taxonomy
 W !!,"Specify the community taxonomy to determine which patients will be",!,"included in the report.  You should have created this taxonomy using QMAN.",!
 K BDMTAX
 S BDMTAXI=""
 D ^XBFMK
 S DIC("S")="I $P(^(0),U,15)=9999999.05",DIC="^ATXAX(",DIC(0)="AEMQ",DIC("A")="Enter the Name of the Community Taxonomy: "
 S B=$P($G(^BGPSITE(DUZ(2),0)),U,5) I B S DIC("B")=$P(^ATXAX(B,0),U)
 D ^DIC K DIC
 I Y=-1 Q
 S BDMTAXI=+Y
COM1 S X=0
 F  S X=$O(^ATXAX(BDMTAXI,21,X)) Q:'X  D
 .S BDMTAX($P(^ATXAX(BDMTAXI,21,X,0),U))=""
 .Q
 I '$D(BDMTAX) W !!,"There are no communities in that taxonomy." G COMM
BEN ;
 S BDMBEN=1
ACT ;
 S BDMACTI=0 I BDMDMRG="" Q
 S DIR(0)="Y",DIR("A")="Include only ACTIVE members of the "_$P(^ACM(41.1,BDMDMRG,0),U)_" register",DIR("B")="N" KILL DA
 D ^DIR KILL DIR
 I $D(DIRUT) G COMM
 S BDMACTI=Y
PREG ;
 S BDMPREG="",BDMSTP=0
 S DIR(0)="S^I:Include Pregnant Patients;E:Exclude Pregnant Patients",DIR("A")="Select whether to include or exclude pregnant patients in the audit"
 S DIR("B")="E" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G ACT
 S BDMPREG=Y
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
