BGO11P22 ;GDIT/HCSD/ALA-Post-install routine ; 08 May 2017  8:21 AM
 ;;1.1;BGO COMPONENTS;**1,2,3,5,6,8,11,12,13,22**;Mar 20, 2007;Build 2
 ;
POS ;EP - Post-install
 NEW DIC,X,DA,BGOUPD,BGOWP
 S DIC(0)="LNZ",DIC="^XTV(8989.51,",X="BGO PAT EDU MAX ENTRIES"
 D ^DIC
 I +Y=-1 K DO,DD D FILE^DICN
 S DA=+Y I DA=-1 Q
 S BGOUPD(8989.51,DA_",",.02)="Maximum Pt Education records to pull"
 S BGOUPD(8989.51,DA_",",.03)=0
 S BGOUPD(8989.51,DA_",",.05)="Maximum Entries"
 S BGOUPD(8989.51,DA_",",.06)=0
 S BGOUPD(8989.51,DA_",",1.1)="N"
 S BGOUPD(8989.51,DA_",",1.2)="100:2000"
 S BGOUPD(8989.51,DA_",",1.3)="Maximum Entries (100-2000) to pull for Pt Educ"
 D FILE^DIE("","BGOUPD","ERROR")
 ;
 S BGOWP(1)="The maximum number of Patient Education records to pull for loading in EHR."
 D WP^DIE(8989.51,DA_",",20,"","BGOWP","ERROR")
 ;
 S ^XTV(8989.51,DA,30,0)="^8989.513I^1^1"
 S ^XTV(8989.51,DA,30,1,0)="100^4.2"
 S ^XTV(8989.51,DA,30,"AG","DIC(4.2,",1)=""
 S ^XTV(8989.51,DA,30,"B",100,1)=""
 Q
