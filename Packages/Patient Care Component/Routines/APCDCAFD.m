APCDCAFD ; IHS/CMI/LAB - ;
 ;;2.0;IHS PCC SUITE;**2,7,11,15,16**;MAY 14, 2009;Build 9
 ;
START ;
 D XIT
 I '$D(IOF) D HOME^%ZIS
 D TERM^VALM0
 W @(IOF),!!
 D INFORM
 I $P(^APCCCTRL(DUZ(2),0),U,12)="" W !!,"The EHR/PCC Coding Audit Start Date has not been set",!,"in the PCC Master Control file." D  D XIT Q
 .W !,"Please see your Clinical Coordinator or PCC Manager."
 .S DIR(0)="E",DIR("A")="Press Enter" KILL DA D ^DIR KILL DIR
 .Q
DATES ;
 W !!,"You should limit your date range to no more than 7 days.  Viewing more"
 W !,"than 7 days worth of visits may take a while to process."
 K APCDED,APCDBD
 K DIR S DIR(0)="DO^::EXP",DIR("A")="Enter Beginning Visit Date"
 D ^DIR G:Y<1 XIT S APCDBD=Y
 I APCDBD<$P($G(^APCCCTRL(DUZ(2),0)),U,12) D  G DATES
 .W !!,"That date is before the EHR/PCC Coding Start Date."
 .W !,"Please enter a date on or after "_$$FMTE^XLFDT($P(^APCCCTRL(DUZ(2),0),U,12))
 K DIR S DIR(0)="DO^:DT:EXP",DIR("A")="Enter Ending Visit Date"
 D ^DIR G:Y<1 XIT  S APCDED=Y
 ;
 I APCDED<APCDBD D  G DATES
 . W !!,$C(7),"Sorry, Ending Date MUST not be earlier than Beginning Date."
 I $$FMDIFF^XLFDT(APCDED,APCDBD)>7 S APCDQ=0 D  I APCDQ G DATES
 . W !,"You have selected a ",$$FMDIFF^XLFDT(APCDED,APCDBD)," date range.  Depending on the number of visits per"
 . W !,"day at your facility it may take a while to gather up and process that many",!,"visits."
 . S DIR(0)="Y",DIR("A")="Do you wish to continue with this date range",DIR("B")="Y" KILL DA D ^DIR KILL DIR
 . I $D(DIRUT) S APCDQ=1
 . I 'Y S APCDQ=1
 . Q
 S APCDSD=$$FMADD^XLFDT(APCDBD,-1)_".9999"
 ;
FAC ;
 K APCDQ
 W !!,$G(IORVON)_"Please enter which FACILITY visits will be included in the list."_$G(IORVOFF),!
 S APCDLOCT=""
 K APCDLOCS
 S DIR(0)="S^A:ALL Locations/Facilities;S:Selected set or Taxonomy of Locations;O:ONE Location/Facility",DIR("A")="Include Visits to Which Location/Facilities",DIR("B")="A"
 S DIR("A")="Enter a code indicating what LOCATIONS/FACILITIES are of interest",DIR("B")="A" K DA D ^DIR K DIR,DA
 G:$D(DIRUT) DATES
 S APCDLOCT=Y
 I APCDLOCT="A" G CLINIC
 D @(APCDLOCT_"LOC")
 G:$D(APCDQ) FAC
CLINIC ;
 K APCDQ
 W !!,$G(IORVON)_"Please enter which CLINIC (IHS clinic codes) visits will be included",!,"in the list."_$G(IORVOFF),!
 S APCDCLNT=""
 K APCDCLNS
 K DIR S DIR(0)="S^A:ALL Clinics;S:Selected set or Taxonomy of Clinics;O:ONE Clinic;X:No Clinic Assigned",DIR("A")="Include Visits to Which Clinics",DIR("B")="A"
 S DIR("A")="Enter a code indicating what CLINICS (IHS clinic code) are of interest",DIR("B")="A" K DA D ^DIR K DIR,DA
 G:$D(DIRUT) FAC
 S APCDCLNT=Y
 I APCDCLNT="A" G HOSPLOC
 I APCDCLNT="X" G HOSPLOC
 D @(APCDCLNT_"CLN")
 G:$D(APCDQ) CLINIC
HOSPLOC ;
 K APCDQ
 W !!,$G(IORVON)_"Please enter which HOSPITAL LOCATIONS will be included in the list."_$G(IORVOFF),!
 S APCDHLT=""
 K APCDHLS
 S DIR(0)="S^A:ALL Hospital Locations;S:Selected set of Hospital Locations;O:ONE Hospital Location",DIR("A")="Include Visits to Which Hospital Locations",DIR("B")="A"
 S DIR("A")="Enter a code indicating what HOSPITAL LOCATIONS are of interest",DIR("B")="A" K DA D ^DIR K DIR,DA
 G:$D(DIRUT) CLINIC
 S APCDHLT=Y
 I APCDHLT="A" G PRIMPROV
 D @(APCDHLT_"HL")
 G:$D(APCDQ) HOSPLOC
PRIMPROV ;
 K APCDQ
 W !!,$G(IORVON)_"Please enter the Providers whose visits you want to display",!,"This will screen on the primary provider on the visit."_$G(IORVOFF),!
 S APCDPRVT=""
 K APCDPRVS
 S DIR(0)="S^A:ALL Providers;S:Selected set or Taxonomy of Providers;O:ONE Provider;X:No Visit Primary Provider Assigned",DIR("A")="Include Visits to Which Providers",DIR("B")="A"
 S DIR("A")="Enter a code indicating which providers are of interest",DIR("B")="A" K DA D ^DIR K DIR,DA
 G:$D(DIRUT) HOSPLOC
 S APCDPRVT=Y
 I APCDPRVT="A" G STATUS
 I APCDPRVT="X" G STATUS
 D @(APCDPRVT_"PRV")
 G:$D(APCDQ) PRIMPROV
STATUS ;
 ;K APCDQ
 ;W !!,"You can choose to display visits with a particular chart audit status: Reviewed",!,"or Incomplete.",!
 ;S APCDCAST=""
 ;K APCDCASS
STATUS1 ;
 ;S DIR(0)="9000010.45,.04O",DIR("A")="Include Visits with which Chart Audit Status",DIR("B")="I" KILL DA D ^DIR KILL DIR
 ;I $D(DIRUT) G CDR
 ;I Y="" G CDR
 ;S APCDCASS(Y)=""
CDR ;
 K APCDQ
 W !!,"A chart deficiency reason may have been previously entered for a visit."
 W !,"If you wish to display only visits whose LAST chart deficiency reason matches"
 W !,"one or more that you select, please enter them.",!
 S APCDCDRT=""
 K APCDCDRS
 S DIR(0)="S^D:Do NOT screen on Chart Deficiency Reason;S:Screen on Chart Deficiency Reason",DIR("A")="Include Visits to Which Hospital Locations",DIR("B")="A"
 S DIR("A")="Select visits based on chart deficiency reason",DIR("B")="D" K DA D ^DIR K DIR,DA
 G:$D(DIRUT) STATUS
 S APCDCDRT=Y
 I APCDCDRT="D" G DEMO
 D @(APCDCDRT_"CDR")
 G:$D(APCDQ) CDR
DEMO ;
 D DEMOCHK^APCLUTL(.APCDDEMO)
 I APCDDEMO=-1 G CDR
PROCESS ;
 W:$D(IOF) @IOF W !!
 W !!,"I will display visits that meet the following criteria:"
 W !!,"VISIT DATES: ",$$FMTE^XLFDT(APCDBD)," to ",$$FMTE^XLFDT(APCDED)
 ;W !,"SERVICE CATEGORY: A, O, S, C, T, M"
 W !,"SERVICE CATEGORY:  "
 S X=$P(^DD(9000010,.07,0),U,3),D=""
 F Y=1:1 S J=$P(X,";",Y) Q:J=""  D
 .S C=$P(J,":")
 .Q:'$$SCW^APCDCAF(C)
 .S:D]"" D=D_", "
 .S D=D_C
 W D
 W !,"VISIT TYPE:  NOT Contract"
 W !,"Visits with at least one POV."
 W !!,"LOCATION OF ENCOUNTER: " D
 .I '$D(APCDLOCS) W "All" Q
 .S Y=0,C=0 F  S Y=$O(APCDLOCS(Y)) Q:Y'=+Y  S C=C+1 W:C>1 ";" W ?24,$E($P(^DIC(4,Y,0),U),1,15)
 W !!,"CLINICS: " D
 .I APCDCLNT="X" W "Visits with no Clinic Assigned" Q
 .I '$D(APCDCLNS) W "All" Q
 .S Y=0,C=0 F  S Y=$O(APCDCLNS(Y)) Q:Y'=+Y  S C=C+1 W:C>1 ";" W ?24,$E($P(^DIC(40.7,Y,0),U),1,15)
 W !!,"HOSPITAL LOCATIONS: " D
 .I '$D(APCDHLS) W "All" Q
 .S Y=0,C=0 F  S Y=$O(APCDHLS(Y)) Q:Y'=+Y  S C=C+1 W:C>1 ";" W ?24,$E($P(^SC(Y,0),U),1,15)
 W !!,"PRIMARY PROVIDER ON VISIT: " D
 .I APCDPRVT="X" W "No Visit Primary Provider Assigned" Q
 .I '$D(APCDPRV) W "All" Q
 .S Y=0,C=0 F  S Y=$O(APCDPRVS(Y)) Q:Y'=+Y  S C=C+1 W:C>1 ";" W ?24,$E($P(^VA(200,Y,0),U),1,15)
 ;W !!,"CHART AUDIT STATUS: " D
 ;.I '$D(APCDCASS) W "All" Q
 ;.S Y=0,C=0 F  S Y=$O(APCDCASS(Y)) Q:Y'=+Y  S C=C+1 W:C>1 ";" W ?24,$$EXTSET^XBFUNC(9000010.45,Y,.04)
 W !!,"CHART DEFICIENCY REASONS: " D
 .I '$D(APCDCDRS) W "All (includes visits with no chart deficiency reason entered)" Q
 .S Y=0,C=0 F  S Y=$O(APCDCDRS(Y)) Q:Y'=+Y  S C=C+1 W:C>1 ";" W ?24,$E($P(^AUTTCDR(Y,0),U),1,15)
CONT ;
 S DIR(0)="Y",DIR("A")="Do you wish to continue",DIR("B")="Y" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G XIT
 I 'Y G XIT
 W !!,"Please note:  On the list of visits that will be displayed"
 W !,"there is a column labeled 'INS', in this column M stands for"
 W !,"Medicare, C stands for Medicaid and P stands for Private"
 W !,"Insurance.  This does not mean the visit is billable, it just"
 W !,"is an indication of whether or not the patient has a policy on"
 W !,"file that is currently active.",!
SORT ;how to sort list of visits
VA S APCDSORT=""
 S DIR(0)="S^N:Patient Name;H:HRN;D:Date of Visit;T:Terminal Digit of HRN;S:Service Category;L:Location of Encounter;C:Clinic;O:Hospital Location;P:Primary Provider"
 S DIR(0)=DIR(0)_";A:Chart Audit Status;I:Has Medicare/Medicaid or PI"
 S DIR("A")="How would you like the list of visits sorted",DIR("B")="H" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G XIT
 S APCDSORT=Y
PROC1 ; call listmanager
 D EN^APCDCAF
 D XIT
 Q
XIT ;
 K DIR
 D EN^APCDEKL
 D EN2^APCDEKL
 D EN^XBVK("APCD")  ;clean up APCD variables
 D ^XBFMK  ;clean up fileman variables
 D KILL^AUPNPAT  ;clean up AUPN
 D EN^XBVK("AMQQ")  ;clean up after qman
 Q
 ;
PROC ;EP - called from xbdbque
 Q
D(D) ;
 I $G(D)="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_$E(D,2,3)
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 S DIR("A")="End of report.  Press Enter",DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
INFORM ;inform user what this report is all about
 W $$LOC,$$CTR("PCC/EHR CODING AUDIT")
 W !,"This list can be used to audit visits that are created by EHR users."
 W !,"The visits displayed in the list are those with an INCOMPLETE or blank"
 W !,"chart audit status.  This list can be sorted by date, primary provider"
 W !,"clinic code, hospital location (scheduling clinic), and facility."
 W !,"Once the visit has been reviewed, the review status can be set as reviewed/"
 W !,"complete or incomplete. All visits set as reviewed/complete will be passed"
 W !,"to the IHS/RPMS billing package."
 W !,"Contract Health visits are excluded."
 W !,"Visits that do not have a provider (primary or secondary) are ",$S($P(^APCDSITE(DUZ(2),0),U,28):"included in ",1:"excluded from "),!,"the list."
 W !,"Visits with the following service categories are NOT included in the list:"
 W !?10,"- Event (Historical)"
 S X="" F  S X=$O(^APCDSITE(DUZ(2),13,"B",X)) Q:X=""  W !?10,"- ",$$EXTSET^XBFUNC(9000010,.07,X)
 W !,$G(IORVON)_"PLEASE NOTE:"_$G(IORVOFF)_"  A visit will NOT pass to Billing until it is marked"
 W !,"as reviewed/completed."
 Q
OLOC ;EP - one location
 S DIC="^AUTTLOC(",DIC(0)="AEMQ",DIC("A")="Which LOCATION: " D ^DIC K DIC
 I Y=-1 S APCDQ="" Q
 S APCDLOCS(+Y)=""
 Q
SLOC ;EP - taxonomy of locations
 S X="LOCATION OF ENCOUNTER",DIC="^AMQQ(5,",DIC(0)="FM",DIC("S")="I $P(^(0),U,14)" D ^DIC K DIC,DA I Y=-1 W "OOPS - QMAN NOT CURRENT - QUITTING" G XIT
 D PEP^AMQQGTX0(+Y,"APCDLOCS(")
 I '$D(APCDLOCS) S APCDQ="" Q
 I $D(APCDLOCS("*")) S APCDLOCT="A" K APCDLOCS W !!,"**** all locations will be included ****",! Q
 Q
 ;
OCLN ;EP - one clinic
 S DIC="^DIC(40.7,",DIC(0)="AEMQ",DIC("A")="Which CLINIC: " D ^DIC K DIC
 I Y=-1 S APCDQ="" Q
 S APCDCLNS(+Y)=""
 Q
SCLN ;EP - taxonomy of clinics
 S X="CLINIC",DIC="^AMQQ(5,",DIC(0)="FM",DIC("S")="I $P(^(0),U,14)" D ^DIC K DIC,DA I Y=-1 W "OOPS - QMAN NOT CURRENT - QUITTING" G XIT
 D PEP^AMQQGTX0(+Y,"APCDCLNS(")
 I '$D(APCDCLNS) S APCDQ="" Q
 I $D(APCDCLNS("*")) S APCDCLNT="A" K APCDCLNS W !!,"**** all CLINICS will be included ****",! Q
 Q
 ;
OHL ;one hosp location
 S DIC="^SC(",DIC(0)="AEMQ",DIC("A")="Which HOSPITAL LOCATION: " D ^DIC K DIC
 I Y=-1 S APCDQ="" Q
 S APCDHLS(+Y)=""
 Q
SHL ;selected hospital locations
 S DIC="^SC(",DIC(0)="AEMQ",DIC("A")="Which HOSPITAL LOCATION: " D ^DIC K DIC
 I X="" Q
 I Y=-1 S APCDQ="" Q
 S APCDHLS(+Y)=""
 G SHL
 Q
OPRV ;one clinic
 S DIC="^VA(200,",DIC(0)="AEMQ",DIC("A")="Which PROVIDER: " D ^DIC K DIC
 I Y=-1 S APCDQ="" Q
 S APCDPRVS(+Y)=""
 Q
SPRV ;taxonomy of PROVIDERS
 S X="PRIMARY PROVIDER",DIC="^AMQQ(5,",DIC(0)="FM",DIC("S")="I $P(^(0),U,14)" D ^DIC K DIC,DA I Y=-1 W "OOPS - QMAN NOT CURRENT - QUITTING" G XIT
 D PEP^AMQQGTX0(+Y,"APCDPRVS(")
 I '$D(APCDPRVS) S APCDQ="" Q
 I $D(APCDPRVS("*")) S APCDPRVT="A" K APCDPRVS W !!,"**** all PROVIDERS will be included ****",! Q
 Q
 ;
SCDR ;selected CHART DEF REASONS
 S DIC="^AUTTCDR(",DIC(0)="AEMQ",DIC("A")="Which CHART DEFICIENCY REASON: " D ^DIC K DIC
 I X="" Q
 I Y=-1 S APCDQ="" Q
 S APCDCDRS(+Y)=""
 G SCDR
 Q