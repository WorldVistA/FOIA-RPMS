BGP8CTS ;IHS/CMI/LAB - display ind lists;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;; ;
EP ;EP - CALLED FROM OPTION
 I BGPRPTTT="E" S BGPRPTT2="ELDER REPORT",BGPRPTT1=4
 I BGPRPTTT="N" S BGPRPTT2="NATIONAL GPRA REPORT",BGPRPTT1=1
 I BGPRPTTT="A" S BGPRPTT2="ALL CRS REPORTS",BGPRPTT1=9
 I BGPRPTTT="I" S BGPRPTT2="IPC",BGPRPTT1=8
 I BGPRPTTT="O" S BGPRPTT2="OTHER NATIONAL MEASURES",BGPRPTT1=7
 D EN
 Q
EOJ ;EP
 D EN^XBVK("BGP")
 Q
 ;; ;
EN ;EP -- main entry point for 
 D EN^VALM("BGP 18 CRS TAXONOMY UPDATE")
 D CLEAR^VALM1
 D FULL^VALM1
 W:$D(IOF) @IOF
 D EOJ
 Q
 ;
PAUSE ;EP
 Q:$E(IOST)'="C"!(IO'=IO(0))
 W ! S DIR(0)="EO",DIR("A")="Press enter to continue...." D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
HDR ; -- header code
 S VALMHDR(1)="TAXONOMIES TO SUPPORT 2018 "_BGPRPTT2_" REPORTING"
 Q
 ;
INIT ;EP -- init variables and list array
 I '$G(BGPRPTT1) S BGPRPTT1=9
 K BGPTAX S BGPHIGH="",C=0,J=0
 S BGPT="" F  S BGPT=$O(^BGPTAXR("B",BGPT)) Q:BGPT=""  D
 .S BGPY=$O(^BGPTAXR("B",BGPT,0))
 .Q:$P(^BGPTAXR(BGPY,0),U,4)'=1
 .I BGPRPTT1=9 Q:'$O(^BGPTAXR(BGPY,12,0))
 .I BGPRPTT1'=9,'$D(^BGPTAXR(BGPY,12,"B",BGPRPTT1)) Q
 .S BGPTYPE=$P(^BGPTAXR(BGPY,0),U,2),BGPDESC=$G(^BGPTAXR(BGPY,11,1,0)),BGPEDIT=$P(^BGPTAXR(BGPY,0),U,4),J=J+1
 .I BGPTYPE'="L" D  Q:'I
 ..S I=$O(^ATXAX("B",BGPT,0))
 .I BGPTYPE="L" D  Q:'I
 ..S I=$O(^ATXLAB("B",BGPT,0))
 .S BGPTAX(J,0)=J_")  "_BGPT ;,$E(BGPTAX(J,0),38)=$S(BGPEDIT:"***",1:"") ;,$E(BGPTAX(J,0),70)=$S('BGPEDIT:"VIEW ONLY/UNEDITABLE",1:"")
 .S $E(BGPTAX(J,0),38)=$$VAL^XBDIQ1(90560.08,BGPY,.02)
 .S $E(BGPTAX(J,0),50)=BGPDESC
 .S BGPTAX("IDX",J,J)=I_U_$S(BGPTYPE'="L":"T",1:"L")_U_BGPY
 .S C=C+1
 .Q
 S (VALMCNT,BGPHIGH)=C
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 Q
 ;
EXPND ; -- expand code
 Q
 ;
BACK ;go back to listman
 D TERM^VALM0
 S VALMBCK="R"
 D INIT
 D HDR
 K DIR
 K X,Y,Z,I
 Q
 ;
ADD ;EP - add an item to the selected list - called from a protocol
 D FULL^VALM1
 W !
 I '$D(^XUSEC("BGPZ TAXONOMY EDIT",DUZ)) W !!,"You do not have the security access to edit a taxonomy.",!,"Please see your supervisor or program manager.",! D PAUSE G ADDX
 S DIR(0)="NO^1:"_BGPHIGH,DIR("A")="Which Taxonomy"
 D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No taxonomy selected." G ADDX
 I $D(DIRUT) W !,"No taxonomy selected." G ADDX
 S BGPTAXI=$P(BGPTAX("IDX",Y,Y),U,1),BGPTAXR=$P(BGPTAX("IDX",Y,Y),U,2),BGPTAXN=$P(BGPTAX("IDX",Y,Y),U,3),BGPEDIT=$P(^BGPTAXR(BGPTAXN,0),U,4)
 I BGPTAXR="L" S BGPTAXN=$P(^ATXLAB(BGPTAXI,0),U)
 I BGPTAXR="T" S BGPTAXN=$P(^ATXAX(BGPTAXI,0),U)
 I BGPTAXR="L",$P(^ATXLAB(BGPTAXI,0),U,22)!('BGPEDIT) W !!,"The ",$P(^ATXLAB(BGPTAXI,0),U)," is VIEW ONLY.",!,"You can not update it." D PAUSE G ADDX
 I BGPTAXR="T",$P(^ATXAX(BGPTAXI,0),U,22)!('BGPEDIT) W !!,"The ",$P(^ATXAX(BGPTAXI,0),U)," is VIEW ONLY.",!,"You can not update it." D PAUSE G ADDX
 D FULL^VALM1 W:$D(IOF) @IOF
 D EP^BGP8CTL(BGPTAXI)
ADDX ;
 D BACK
 Q
DISP ;EP
 W !
 S DIR(0)="NO^1:"_BGPHIGH,DIR("A")="Which Taxonomy"
 D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No taxonomy selected." G DISPX
 I $D(DIRUT) W !,"No taxonomy selected." G DISPX
 S BGPFIEN=$P(BGPTAX("IDX",Y,Y),U,3)
 S BGPSEL=Y
 S BGPTIEN=$P(BGPTAX("IDX",Y,Y),U,1)
 S BGPTYPE=$P(BGPTAX("IDX",Y,Y),U,2)
 S BGPFIEN=$P(BGPTAX("IDX",Y,Y),U,3)
 D FULL^VALM1 W:$D(IOF) @IOF
 D EP^BGP8XTV1(BGPTIEN,BGPTYPE,BGPFIEN)
DISPX ;
 D BACK
 Q
DISP1 ;EP - add an item to the selected list - called from a protocol
 W !
 S DIR(0)="NO^1:"_BGPHIGH,DIR("A")="Which Taxonomy"
 D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I Y="" W !,"No taxonomy selected." G DISPX
 I $D(DIRUT) W !,"No taxonomy selected." G DISPX
 D FULL^VALM1 W:$D(IOF) @IOF
 S BGPTAXI=$P(BGPTAX("IDX",Y,Y),U,1),BGPTAXR=$P(BGPTAX("IDX",Y,Y),U,2)
 W !!!,$S(BGPTAXR="L":$P(^ATXLAB(BGPTAXI,0),U),1:$P(^ATXAX(BGPTAXI,0),U))
 W !!,"Items currently defined to this taxonomy:"
 I BGPTAXR="L" S X=0 F  S X=$O(^ATXLAB(BGPTAXI,21,"B",X)) Q:X=""  D
 .S Y=$P($G(^LAB(60,X,0)),U) W !?5,Y
 I BGPTAXR="T",'$P(^ATXAX(BGPTAXI,0),U,13) S X=0 F  S X=$O(^ATXAX(BGPTAXI,21,"B",X)) Q:X=""  D
 .W !?5,$$VAL^XBDIQ1($P(^ATXAX(BGPTAXI,0),U,15),X,.01)
 I BGPTAXR="T",$P(^ATXAX(BGPTAXI,0),U,13) S X=0 F  S X=$O(^ATXAX(BGPTAXI,21,"B",X)) Q:X=""  D
 .S H=0 F  S H=$O(^ATXAX(BGPTAXI,21,"B",X,H)) Q:H=""  D
 ..W !?5,$P(^ATXAX(BGPTAXI,21,H,0),U)_"-"_$P(^ATXAX(BGPTAXI,21,H,0),U,2)
 W !!
 K DIR S DIR(0)="E",DIR("A")="Press enter to continue" D ^DIR K DIR
DISP1X ;
 D BACK
 Q
