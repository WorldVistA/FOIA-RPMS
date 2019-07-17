BUDHUPVL ;IHS/CMI/LAB - UPDATE VISIT LOCATIONS;
 ;;13.0;IHS/RPMS UNIFORM DATA SYSTEM;;OCT 12, 2018;Build 90
 ;
 ;
START ;update visit locations
 K BUDVL,BUDX,BUDY
 W:$D(IOF) @IOF W !!,"***  Update/Review UDS 2018 Site Parameters ***",!!
 W !!,"This option is used to set up your site's parameters for UDS reporting,"
 W !,"including entering your BPHC UDS id no. and defining visit locations"
 W !,"to be ","""","counted",""""," toward the report. ",""""
 W "A visit must take place in health "
 W !,"center sites or other locations that do not meet HRSA's site criteria, "
 W !,"such as hospitals, schools, nursing homes, homeless shelters, "
 W !,"or extended care facilities. Visits at these sites count when they "
 W !,"occur on a regularly scheduled basis at an approved site within"
 W !,"the health center's scope of project."""
 W !!,"Visits will not be counted toward the report if the visit location does not"
 W !,"match the locations on the UDS Visit Locations list."
 W !!,"Multiple site names can be designated with associated locations.  Each site name",!,"must have locations designated."
 W !!
 I $G(BUDDNT)=2 S DIR(0)="Y",DIR("A")="Do you want to add/edit another site",DIR("B")="N" KILL DA D ^DIR KILL DIR I Y'=1 D EOJ Q
 S DIC(0)="AEMLQ",DIC="^BUDHSITE(" D ^DIC
 I Y=-1 W !!,"No site selected" D EOJ Q
 S BUDSITE=+Y
 S DIE="^BUDHSITE(",DR=".02",DA=BUDSITE D ^DIE
 D ^XBFMK
 D EN
 S DIR(0)="Y",DIR("A")="Would you like to review/edit the insurance company overrides",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G PCOV
 I 'Y G PCOV
 I '$O(^BUDHSITE(BUDSITE,12,0)) W !,"There are currently no insurance overrides entered.",!
 I $O(^BUDHSITE(BUDSITE,12,0)) W !,"The following insurance overrides are currently entered:",!
 S X=0 F  S X=$O(^BUDHSITE(BUDSITE,12,X)) Q:X'=+X  D
 .W !?5,$P(^AUTNINS($P(^BUDHSITE(BUDSITE,12,X,0),U,1),0),U,1)
 .S Y=$P(^BUDHSITE(BUDSITE,12,X,0),U,2) W ?40,$S(Y="P":"PRIVATE INSURANCE",Y="MCR":"MEDICARE",Y="MCD":"MEDICAID",Y="NI":"NONE/UNINSURED",1:"")
 W ! S DA=BUDSITE,DR=1201,DIE="^BUDHSITE(" D ^DIE K DA,DR,DIE
PCOV ;PROVIDER CLASS OVERRIDE, ADDED V12 T3 FOR HUNTER HEALTH, THESE PROVIDER CLASSES DO NOT COUNT AS A "PROVIDER" FOR UDS VISITS
 W !!!,"Provider Class Exclusions from UDS visit definition."
 W !,"UDS definition of a Provider:"
 W !,"A provider is someone who assumes primary responsibility for assessing the"
 W !,"patient and documenting services in the patient's record. Providers include"
 W !,"only those who exercise independent judgment as to the services rendered to"
 W !,"the patient during a visit."
 W !!,"If there are provider class/disciplines that do not meet the above criteria"
 W !,"you may add them to the list below and any visit on which the primary provider"
 W !,"is of one of those disciplines/classes the visit will NOT be counted as a"
 W !,"UDS visit."
 W !!,"Note: Only exclude provider types who in your facility DO NOT exercise"
 W !,"independent judgment as to the services rendered to the patient during a visit."
 W !!
 S DIR(0)="Y",DIR("A")="Would you like to review/edit the provider class exclusions",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G N
 I 'Y G N
 I '$O(^BUDHSITE(BUDSITE,13,0)) W !,"There are currently no provider class exclusions entered.",!
 I $O(^BUDHSITE(BUDSITE,13,0)) W !,"The following provider class exclusions are currently entered:",!
 S X=0 F  S X=$O(^BUDHSITE(BUDSITE,13,X)) Q:X'=+X  D
 .W !?5,$P(^DIC(7,$P(^BUDHSITE(BUDSITE,13,X,0),U,1),0),U,1),"  ("_$P($G(^DIC(7,$P(^BUDHSITE(BUDSITE,13,X,0),U,1),9999999)),U,1),")"
 W ! S DA=BUDSITE,DR=1301,DIE="^BUDHSITE(" D ^DIE K DA,DR,DIE
N ;
 S BUDDNT=2
 G START
EN ; -- main entry point for BUD UPDATE VISIT LOCATIONS
 D EN^VALM("BUD 18 UPDATE VISIT LOCATIONS")
 K BUDVL,BUDX,BUDD,BUDRCNT,BUDLINE,BUDDN
 Q
 ;
HDR ; -- header code
 S VALMHDR(1)=$TR($J(" ",80)," ","-")
 S VALMHDR(2)="Site Name: "_$P(^DIC(4,BUDSITE,0),U)
 S VALMHDR(3)="Enter all locations to be included in the UDS report."
 S VALMHDR(4)=$TR($J(" ",80)," ","-")
 Q
 ;
GETPAT ;
 S DFN=""
 W:$D(IOF) @IOF
 S DFN=""
 S DIC="^BUDPAT(",DIC(0)="AEMQ" D ^DIC K DIC
 I Y<0 Q
 S DFN=+Y
 Q
INIT ; -- init variables and list array
 S VALMSG="?? for more actions  + next screen  - prev screen"
 D GATHER ;gather up all records for display
 Q
 ;
GATHER ;
 K BUDDISP,BUDSEL,BUDHIGH,BUDVL
 K BUDLIST
 S X=0 F  S X=$O(^BUDHSITE(BUDSITE,11,X)) Q:X'=+X  S BUDLIST($P(^DIC(4,$P(^BUDHSITE(BUDSITE,11,X,0),U),0),U),X)=X
 S BUDHIGH=0,X="" F  S X=$O(BUDLIST(X)) Q:X=""  S Y=0 F  S Y=$O(BUDLIST(X,Y)) Q:Y'=+Y  S BUDHIGH=BUDHIGH+1,BUDSEL(BUDHIGH)=BUDLIST(X,Y)
 S BUDCUT=((BUDHIGH/2)+1)\1
 S (C,I)=0,J=1,K=1 F  S I=$O(BUDSEL(I)) Q:I'=+I  D
 .S C=C+1,BUDVL(C,0)=I_") "_$P(^DIC(4,$P(^BUDHSITE(BUDSITE,11,BUDSEL(I),0),U),0),U) S BUDDISP(I)="",BUDVL("IDX",C,C)=BUDSEL(I)
 K BUDDISP
 S VALMCNT=C
 Q
ADD ;EP called from protocol to open a new case
 D FULL^VALM1
 ;W:$D(IOF) @IOF
 W !!
 K DIC S DIC(0)="AEMQ",DIC=9999999.06,DIC("A")="Enter Location Name:  " D ^DIC
 I Y=-1 Q
 S BUDLOC=+Y
 I $D(^BUDHSITE(BUDSITE,11,BUDLOC)) W !!,$P(^DIC(4,BUDLOC,0),U)," is already on the list." D RETURN,EXIT Q
 W !,"Adding UDS Visit Location..."
 D ^XBFMK
 S X="`"_BUDLOC,DIC="^BUDHSITE("_BUDSITE_",11,",DIC(0)="L",DIC("P")=$P(^DD(90669.901,1101,0),U,2),DA(1)=BUDSITE D ^DIC
 I Y=-1 W !!,"adding new location failed"
 D EXIT
 Q
ADDALL ;EP
 ;add all locations for this su
 D FULL^VALM1
 W !!,"Hold on while I gather up all of ",$$VAL^XBDIQ1(9999999.06,BUDSITE,.05),"'s locations and add them...."
 NEW SU
 S SU=$P(^AUTTLOC(BUDSITE,0),U,5)
 S BUDX=0 F  S BUDX=$O(^AUTTLOC(BUDX)) Q:BUDX'=+BUDX  I $P(^AUTTLOC(BUDX,0),U,5)=SU D
 .I $D(^BUDHSITE(BUDSITE,11,BUDX)) W !,$P(^DIC(4,BUDX,0),U),"     --already on list" Q
 .D ^XBFMK
 .S X="`"_BUDX,DIC="^BUDHSITE("_BUDSITE_",11,",DIC(0)="L",DIC("P")=$P(^DD(90669.901,1101,0),U,2),DA(1)=BUDSITE D ^DIC K DIC,DA,DR,DIADD,DLAYGO,DD,D0,DO,X
 .W !,$P(^DIC(4,BUDX,0),U)
 .I Y=-1 W !!,"     --failed to be added" Q
 .W "   added"
 .Q
 D PAUSE
 D EXIT
 Q
EDIT ;
 W ! S DIR(0)="LO^1:"_BUDHIGH,DIR("A")="Which item(s)" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No items selected." D EXIT Q
 I $D(DIRUT) W !,"No items selected." D EXIT Q
 D FULL^VALM1
 S BUDANS=Y,BUDD="" F BUDI=1:1 S BUDD=$P(BUDANS,",",BUDI) Q:BUDD=""  S X=BUDVL("IDX",BUDD,BUDD) K ^BUDHSITE(BUDSITE,11,X,0),^BUDHSITE(BUDSITE,11,"B",X,X) W !,$P(^DIC(4,X,0),U)," removed from list"
 S DA=BUDSITE,DIK="^BUDHSITE(" D EN^DIK
 D ^XBFMK
 D PAUSE
 D EXIT
 Q
RETURN ;EP; -- ask user to press ENTER
 Q:IOST'["C-"
 NEW Y S Y=$$READ("E","Press ENTER to continue") D ^XBCLS Q
READ(TYPE,PROMPT,DEFAULT,HELP,SCREEN,DIRA) ;EP; calls reader, returns response
 NEW DIR,X,Y
 S DIR(0)=TYPE
 I $D(SCREEN) S DIR("S")=SCREEN
 I $G(PROMPT)]"" S DIR("A")=PROMPT
 I $G(DEFAULT)]"" S DIR("B")=DEFAULT
 I $D(HELP) S DIR("?")=HELP
 I $D(DIRA(1)) S Y=0 F  S Y=$O(DIRA(Y)) Q:Y=""  S DIR("A",Y)=DIRA(Y)
 D ^DIR
 Q Y
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 K BUDX,BUDVL,BUDPC,BUDR1,BUDY
 D TERM^VALM0
 S VALMBCK="R"
 D GATHER
 D HDR
 K X,Y,Z,I
 Q
PAUSE ;EP
 S DIR(0)="EO",DIR("A")="Press enter to continue...." D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
EOJ ;
 K DDSFILE,DIPGM,Y
 K X,Y,%,DR,DDS,DA,DIC
 D EN^XBVK("BUD")
 D:$D(VALMWD) CLEAR^VALM1
 K VALM,VALMHDR,VALMKEY,VALMMENU,VALMSGR,VALMUP,VALMWD,VALMLST,VALMVAR,VALMLFT,VALMBCK,VALMCC,VALMAR,VALMBG,VALMCAP,VALMCOFF,VALMCNT,VALMCON,VALMON,VALMEVL,VALMIOXY
 Q
 ;
EXPND ; -- expand code
 Q
 ;
