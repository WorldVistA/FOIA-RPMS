BQI26P1 ;GDIT/HCSD/ALA-Version 2.6 Patch 1 ; 04 Aug 2017  12:54 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;**1**;Jul 07, 2017;Build 2
 ;
PRE ;EP
 Q
 ;
POS ;EP
 NEW DA
 S DA=$O(^BGPINDGC("C","002.B.3",0))
 I DA S ZZ("2017_"_DA)="",DIE="^BGPINDGC(",DR=".15////# w/ A1c >9 and <12" D ^DIE K DIE,DA,DR
 S DA=$O(^BGPINDGC("C","002.B.6",0))
 I DA S ZZ("2017_"_DA)="",DIE="^BGPINDGC(",DR=".15////# w/ A1c >=8 and <=9" D ^DIE K DIE,DA,DR
 S DA=$O(^BGPINDGC("C","002.B.8",0))
 I DA S ZZ("2017_"_DA)="",DIE="^BGPINDGC(",DR=".15////# w/ A1c > 9" D ^DIE K DIE,DA,DR
 S DA=$O(^BGPINDGC("C","EO.ST.1",0))
 I DA S ZZ("2017_"_DA)="",DIE="^BGPINDGC(",DR=".15////# w/ Anticoagulant Rx" D ^DIE K DIE,DA,DR
 S DA=$O(^BGPINDGC("C","A.L.1",0))
 I DA S ZZ("2017_"_DA)="",DIE="^BGPINDGC(",DR=".15////# w/ Depression Screening or;.16////Mood Disorder-No Refusals (GPRA)" D ^DIE K DIE,DA,DR
 S DA=$O(^BGPINDGC("C","G.K.1",0))
 I DA S ZZ("2017_"_DA)="",DIE="^BGPINDGC(",DR=".15////# w/ Alcohol Screening/Dx/Proc;.16////-No Refusals or Pt Ed" D ^DIE K DIE,DA,DR
 Q
