ABMCUFE ; IHS/SD/SDR - 3P BILLING 2.6 P27 CUFE Option to cleanup fee tables ;  
 ;;2.6;IHS Third Party Billing;**27**;NOV 12, 2009;Build 486
 ;
 S ABMFTOK=0
 D FTCHK  ;if all fee tables are complete or skipped exit option
 I ABMFTOK=0 D  Q
 .W !!,"All fee tables are COMPLETE or SKIPPED (OLD) so no further action is necessary"
 ;
 W !!,"This menu option will have you select a fee table from a list of tables owned"
 W !,"by the facility logged into.  It will go through every CPT entry in the selected"
 W !,"fee table and will:"
 W !?2,"- delete incomplete entries (where there is no effective date and no amount)"
 W !?2,"- File the entries back so there is only one entry for each CPT code in",!?4,"each fee table"
 W !!,"There *could* be instances where user intervention is needed to determine which"
 W !,"charge amount should be used when two entries are present for the same CPT with"
 W !,"the same effective date but different amounts.  The user will be prompted with"
 W !,"all the information and be asked to select which entry is correct before"
 W !,"continuing."
 D PAZ^ABMDRUTL
START ;EP
 D FTSEL  ;list fee tables and select one
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 L +^ABMFTWC(ABMFT):3 I '$T W *7,!!,"Fee schedule is being updated by another user..." D PAZ^ABMDRUTL G START
 F  D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 .D MLTSEL  ;display categories that need fixing and have them select one
 .Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 .D EDIT  ;this will go through the entries one at a time and have the user select the correct date/fee
 L -(^ABMFTWC(ABMFT))
 D FIXCHK  ;are there any other entries that need review; if not, mark fee table as complete
 D FTCHK  ;check at end to see if all fee tables are complete
 Q
 ;
FTCHK ;EP
 D BMES^XPDUTL("Checking fee table status...")
 S ABMFT=0
 S ABMFTOK=0
 F  S ABMFT=$O(^ABMDFEE(ABMFT)) Q:'ABMFT  D
 .I $P($G(^ABMDFEE(ABMFT,0)),U,6)="" S ABMFTOK=1
 I ABMFTOK=1 D MES^XPDUTL("There are fee tables that need review") Q  ;there's at least one to review
 D MES^XPDUTL("All fee tables complete.")
 D ^XBFMK
 S DA=$O(^DIC(19,"B","ABMD TM CLEANUP FEE TABLE",0))
 S DR="2////All fee tables reviewed - no action needed"
 S DIE="^DIC(19,"
 D ^DIE
 D ^XBFMK
 F ABMA="ABMD TM FEE MAINT","ABMD TM FEE DRUG","ABMD TM FEE FOREIGN","ABMD TM FEE PERCENT" D
 .S DA=$O(^DIC(19,"B",ABMA,0))
 .S DIE="^DIC(19,"
 .S DR="2////@"
 .D ^DIE
 K ^ABMFTMP("ABM-FT")  ;back up of fee table not needed anymore; was creating at install of abm*2.6*27
 Q
 ;
FIXCHK ;EP
 I $D(^ABMFTWC(ABMFT)) Q  ;there's still data to be reviewed
 D ^XBFMK
 S DIE="^ABMDFEE("
 S DA=ABMFT
 S DR=".06////C"
 D ^DIE
 Q
 ;
FTSEL ;EP
 W $$EN^ABMVDF("IOF")
 D ^XBFMK
 W !?1,"FT",?5,"Owner",?20,"Title",?67,"Status"
 S ABMFT=0
 S ABMLST=""
 F  S ABMFT=$O(^ABMDFEE(ABMFT)) Q:'ABMFT  D
 .W !,ABMFT
 .S ABM("REC")=$G(^ABMDFEE(ABMFT,0))
 .S ABMOWN=$S(+$P(ABM("REC"),U,4)'=0:$P($G(^AUTTLOC(+$P(ABM("REC"),U,4),0)),U,2),1:"<NO OWNER>")
 .S ABMTITLE=$S(($P(ABM("REC"),U,2)'=""):$P(ABM("REC"),U,2),1:"<NO TITLE>")
 .S ABMST=$P(ABM("REC"),U,6)
 .S ABMST=$S(ABMST="C":"Complete",ABMST="S":"Skipped (Old)",1:"REVIEW")
 .W ?5,ABMOWN,?20,ABMTITLE,?67,ABMST
 .S ABMTITLE=$TR(ABMTITLE,":;")
 .S ABMLST=$S(($G(ABMLST)=""):ABMFT_":"_ABMTITLE_" ("_ABMST_")",1:ABMLST_";"_ABMFT_":"_ABMTITLE_" ("_ABMST_")")
 S DIR("A",1)="  "
 S DIR(0)="SAO^"_ABMLST
 S DIR("A")="Which fee table would you like to review? "
 D ^DIR
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 S ABMFT=+Y
 I $P($G(^ABMDFEE(ABMFT,0)),U,6)="C" W !!!!,"This fee schedule is already complete.  Please select another." D PAZ^ABMDRUTL G FTSEL
 I ($P($G(^ABMDFEE(ABMFT,0)),U,4)'=DUZ(2)) W !!!!,"This fee schedule is owned by another facility.  Please select another." D PAZ^ABMDRUTL G FTSEL
 S ABMF("FTEDT")=$P($G(^ABMDFEE(ABMFT,0)),U,5)  ;fee table effective date
 Q
MLTSEL ;EP
 I '$D(^ABMFTWC(ABMFT)) S DUOUT="" Q  ;no data in working global for fee table; this happens when it loops back after reviewing the last section
 W $$EN^ABMVDF("IOF")
 W !!,"Fee Table "_ABMFT_": "_$P($G(^ABMDFEE(ABMFT,0)),U,2)_":",!
 D ^XBFMK
 S ABMLST=""
 S ABMMLT=0
 F  S ABMMLT=$O(^ABMFTWC(ABMFT,"FIX",ABMMLT)) Q:'ABMMLT  D
 .I ($G(^ABMFTWC(ABMFT,"FIX",ABMMLT))<1) K ^ABMFTWC(ABMFT,"FIX",ABMMLT) Q  ;if there ends up an erroneous entry, kill it and quit
 .W !,"("_ABMMLT_") "
 .S ABMMLTN=$S(ABMMLT=11:"Surgical",ABMMLT=13:"HCPCS",ABMMLT=15:"Radiology",ABMMLT=17:"Laboratory",ABMMLT=19:"Medical",ABMMLT=23:"Anesthesia",1:"")
 .W ABMMLTN
 .W ?17,$$FMT^ABMERUTL($G(^ABMFTWC(ABMFT,"FIX",ABMMLT)),"5R")_" "_$S($G(^ABMFTWC(ABMFT,"FIX",ABMMLT))=1:"entry",1:"entries")
 .S ABMLST=$S(($G(ABMLST)=""):ABMMLT_":"_ABMMLTN,1:ABMLST_";"_ABMMLT_":"_ABMMLTN)
 S DIR("A",1)="  "
 S DIR(0)="SAO^"_ABMLST
 S DIR("A")="Which category within Fee Table #"_ABMFT_" would you like to review/correct? "
 D ^DIR
 Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 S ABMMLT=Y
 .S ABMMLTN=$S(ABMMLT=11:"Surgical",ABMMLT=13:"HCPCS",ABMMLT=15:"Radiology",ABMMLT=17:"Laboratory",ABMMLT=19:"Medical",ABMMLT=23:"Anesthesia",1:"")
 Q
EDIT ;EP
 S ABMENTRY=0
 K ABM
 S ABM("DCPT")=0
 S ABM("MLTTOT")=+$G(^ABMFTWC(ABMFT,"FIX",ABMMLT))
 F  S ABM("DCPT")=$O(^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"))) Q:'ABM("DCPT")  D  Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 .S ABMENTRY=+$G(ABMENTRY)+1
 .S ABMHDR="Fee Table "_ABMFT_", "_ABMMLT_" "_ABMMLTN_" - entry "_ABMENTRY_" of "_ABM("MLTTOT")
 .S ABMHDR1="#  CPT   (IEN)          Effective Date        Charge Amount"
 .W !!,ABMHDR,!!,ABMHDR1
 .S ABM("CPTCNT")=0
 .S ABM("CNTSV")=0
 .F  S ABM("CPTCNT")=$O(^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"),ABM("CPTCNT"))) Q:'ABM("CPTCNT")  D
 ..S ABM("CNTSV")=+$G(ABM("CNTSV"))+1
 ..S ABM("IEN")=$P($G(^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"),ABM("CPTCNT"),0)),U)
 ..W !,ABM("CPTCNT"),?3,ABM("DCPT")_" ("_ABM("IEN")_")"
 ..;
 ..D WRTLINES
 .D ^XBFMK
 .S DIR(0)="NO^1:"_ABM("CNTSV")
 .S DIR("A",1)=""
 .S DIR("A")="Which entry is correct? "
 .D ^DIR
 .Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 .S ABM("CPTCNT")=+Y
 .;
 .W !!,"For CPT "_ABM("DCPT")_" you selected ...",!
 .D WRTLINES
 .D ^XBFMK
 .S DIR(0)="Y"
 .S DIR("A")="Are you sure"
 .S DIR("B")="NO"
 .D ^DIR K DIR
 .Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)!$D(DIRUT)
 .Q:Y'=1
 .;
 .W !!,"Ok, filing CPT "_ABM("DCPT")
 .D REMOVE  ;remove all other entries from ^ABMFTWC except the selected one
 .D MERGE  ;merge the one entry into the fee table and remove from ^ABMFTWC; also updates FIX counter
 Q
WRTLINES ;EP
 S ABM("WCIEN")=0
 F  S ABM("WCIEN")=$O(^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"),ABM("CPTCNT"),1,ABM("WCIEN"))) Q:'ABM("WCIEN")  D
 .W ?23,$$SDT^ABMDUTL($P($G(^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"),ABM("CPTCNT"),1,ABM("WCIEN"),0)),U))
 .W ?45,"$"_$J($FN($P($G(^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"),ABM("CPTCNT"),1,ABM("WCIEN"),0)),U,2),",",2),10),!
 Q
REMOVE ;EP
 S ABMT=0
 F  S ABMT=$O(^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"),ABMT)) Q:'ABMT  D
 .I ABM("CPTCNT")=ABMT Q  ;this is the entry we want
 .K ^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"),ABMT)
 Q
MERGE ;EP
 S ^ABMFTWC(ABMFT,"FIX",ABMMLT)=+$G(^ABMFTWC(ABMFT,"FIX",ABMMLT))-1  ;decrease counter
 S ABMF("IEN")=ABM("CPTCNT")
 S $P(^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"),ABM("CPTCNT"),0),U)=+$$ACTIVCPT^ABMP2627(ABM("DCPT"))
 ;
 M ^ABMDFEE(ABMFT,ABMMLT,ABM("DCPT"),0)=^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"),ABM("CPTCNT"),0)
 S ABMMDT=0
 F  S ABMMDT=$O(^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"),ABM("CPTCNT"),ABMMDT)) Q:'ABMMDT  D
 .M ^ABMDFEE(ABMFT,ABMMLT,ABM("DCPT"),ABMMDT)=^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"),ABM("CPTCNT"),ABMMDT)
 ;
 K ^ABMFTWC(ABMFT,ABMMLT,ABM("DCPT"))
 K ^ABMFTWC(ABMFT,"FIX",ABMMLT,ABM("DCPT"))
 I $G(^ABMFTWC(ABMFT,"FIX",ABMMLT))=0 K ^ABMFTWC(ABMFT,"FIX",ABMMLT)
 ;
 ;re-index 3P Fee Table CPT entry
 D ^XBFMK
 S DA(1)=ABMFT
 S DIK="^ABMDFEE("_DA(1)_","_ABMMLT_","
 S DA=ABM("DCPT")
 D IX^DIK
 ;
 ;populate date and who picked entry
 D ^XBFMK
 S DA(1)=ABMFT
 S DA=ABM("DCPT")
 S DIE="^ABMDFEE("_DA(1)_","_ABMMLT_","
 S DR=".05///NOW;.06////"_DUZ
 D ^DIE
 Q
