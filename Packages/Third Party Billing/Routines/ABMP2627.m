ABMP2627 ; IHS/SD/SDR - 3P BILLING 2.6 Patch 27 POST INSTALL ;  
 ;;2.6;IHS Third Party Billing;**27**;NOV 12, 2009;Build 486
 ;
 ;IHS/SD/SDR 2.6*27 CR8894 Clean up of fee tables to use new method of storing entries
 ;1  UPDATED
 ;11 SURGICAL (CPT CODE)
 ;13 HCPCS CODE
 ;15 RADIOLOGY (CPT CODE)
 ;17 LABORATORY (CPT CODE)
 ;19 MEDICAL (CPT CODE)
 ;21 DENTAL (ADA CODE)
 ;23 ANESTHESIA (CPT CODE)
 ;25 DRUG
 ;31 REVENUE CODE
 ;32 CHARGE MASTER
 ;
POST ;EP
 K ^ABMFTWC  ;this is the fee table working copy, used to save/merge CPTs and then put back into 3P Fee Table (^ABMDFEE)
 D OOO  ;place add/edit fee options out of order for now
 M ^ABMFTMP("ABM-FT")=^ABMDFEE  ;backup of complete 3P Fee Table file
 D FTLST  ;returns ABM("FTLST",ABMFT); find all fee tables currently being reference in 3P Parameters and 3P Insurer file
 D SKIPFT  ;mark fee tables SKIPPED if they aren't on above list
 ;loop thru list and try to fix each fee table
 S ABMFT=0
 F  S ABMFT=$O(ABM("FTLST",ABMFT)) Q:'ABMFT  D
 .K ^ABMDFEE(ABMFT,"C")  ;kill this xref right away; broken pointers can't be fixed but will be re-indexed after process
 .D PROCESS
 D REINDEX  ;re-index all fee tables when done, even though they may not be complete just yet
 D COMPLETE  ;check if any fee tables are completely done and mark them so
 D FTCHK^ABMCUFE  ;checks if all fee tables are complete; if so, activates/deactivates menu accordingly
 D BMES^XPDUTL("Use the CUFE option to review any fees that need user intervention")
 Q
OOO ;
 ;this tag will mark the following options out of order until the P27 CLEANUP is populated COMPLETED or SKIPPED for
 ;   all fee tables
 ;EDFE Fee Schedule Maintenance [ABMD TM FEE MAINT]
 ;DTFE Transfer Drug Prices from Drug File [ABMD TM FEE DRUG]
 ;FIFE Import Foreign Fee Schedule [ABMD TM FEE FOREIGN]
 ;IDFE Increase/Decrease Fee Schedule [ABMD TM FEE PERCENT]
 ;
 F ABMA="ABMD TM FEE MAINT","ABMD TM FEE DRUG","ABMD TM FEE FOREIGN","ABMD TM FEE PERCENT" D
 .S DA=$O(^DIC(19,"B",ABMA,0))
 .S DIE="^DIC(19,"
 .S DR="2////USE 'CUFE' TO CLEANUP FEE TABLE AND REACTIVATE"
 .D ^DIE
 ;
 ;This section will only apply to test sites that install the patch multiple times; if this isn't done the CUFE option could be out of order
 S DA=$O(^DIC(19,"B","ABMD TM CLEANUP FEE TABLE",0))
 S DIE="^DIC(19,"
 S DR="2////@"
 D ^DIE
 Q
FTLST ;EP
 D BMES^XPDUTL("Looking for active fee schedules...")
 K ABM("FTLST")
 ;find all 3P Parameter fee tables
 S ABMDUZ=0
 F  S ABMDUZ=$O(^ABMDPARM(ABMDUZ)) Q:'ABMDUZ  D
 .S ABMIEN=0
 .F  S ABMIEN=$O(^ABMDPARM(ABMDUZ,ABMIEN)) Q:'ABMIEN  D  ;this really should be '1' all the time, but just in case we'll loop thru them
 ..S ABMFT=$P($G(^ABMDPARM(ABMDUZ,ABMIEN,0)),U,9)
 ..I ABMFT="" Q  ;no fee table entered
 ..I $G(^ABMDFEE(ABMFT,0))="" Q  ;there no fee table with that number
 ..S ABM("FTLST",ABMFT)=1
 ;find all 3P Insurer entries
 S ABMDUZ=0
 F  S ABMDUZ=$O(^ABMNINS(ABMDUZ)) Q:'ABMDUZ  D  ;looping thru just in case different from 3P Parm
 .S ABMIEN=0
 .F  S ABMIEN=$O(^ABMNINS(ABMDUZ,ABMIEN)) Q:'ABMIEN  D
 ..S ABMVT=0
 ..F  S ABMVT=$O(^ABMNINS(ABMDUZ,ABMIEN,1,ABMVT)) Q:'ABMVT  D
 ...S ABMFT=$P($G(^ABMNINS(ABMDUZ,ABMIEN,1,ABMVT,0)),U,5)
 ...I ABMFT="" Q  ;no fee table entered
 ...I $G(^ABMDFEE(ABMFT,0))="" Q  ;there no fee table with that number
 ...S ABM("FTLST",ABMFT)=1
 Q
SKIPFT ;EP
 D BMES^XPDUTL("SKIPPED (OLD) inactive fee schedules...")
 S ABMF=0
 F  S ABMF=$O(^ABMDFEE(ABMF)) Q:'ABMF  D
 .I +$G(ABM("FTLST",ABMF))=1 Q  ;don't label fee tables that are on list (active)
 .I $G(^ABMDFEE(ABMF,0))="" Q  ;this is an insurer/parameter reference to a fee table that doesn't exist
 .S DIE="^ABMDFEE("
 .S DA=ABMF
 .S DR=".06////S"
 .D ^DIE
 Q
PROCESS ;EP
 D BMES^XPDUTL("Reviewing fee schedule #"_ABMFT_" entries...")
 S ABMF("FTEDT")=$P($G(^ABMDFEE(ABMFT,0)),U,5)  ;fee table effective date
 F ABMMLT=11,13,15,17,19,23 D  ;only CPT multiples
 .K ^ABMDFEE(ABMFT,ABMMLT,-1)  ;there are a few -1s that should be removed
 .D MES^XPDUTL($S(ABMMLT=11:"Surgical",ABMMLT=13:"HCPCS",ABMMLT=15:"Radiology",ABMMLT=17:"Laboratory",ABMMLT=19:"Medical",ABMMLT=23:"Anesthesia",1:"")_"...")
 .S ABMF("IEN")=0
 .F  S ABMF("IEN")=$O(^ABMDFEE(ABMFT,ABMMLT,ABMF("IEN"))) Q:'ABMF("IEN")  D
 ..I $G(^ABMDFEE(ABMFT,ABMMLT,ABMF("IEN"),0))="" K ^ABMDFEE(ABMFT,ABMMLT,ABMF("IEN")) Q  ;there's no zero node so entry is incomplete
 ..I $D(^ABMDFEE(ABMFT,ABMMLT,ABMF("IEN"),1))<1 K ABMDFEE(ABMFT,ABMMLT,ABMF("IEN")) Q  ;there aren't any effective dates associated with CPT so entry is incomplete - skip it
 ..S ABMF("CPT")=$P($G(^ABMDFEE(ABMFT,ABMMLT,ABMF("IEN"),0)),U)  ;this is the CPT pointer or maybe a CPT code
 ..I (($G(ABMF("CPT"))'="")&($G(^ICPT(ABMF("CPT"),0))="")) S ABMF("CPT")=$O(^ICPT("B",ABMF("IEN"),0))
 ..I ABMF("CPT")="" S ABMF("CPT")=$O(^ICPT("B",ABMF("IEN"),0))  ;it's a CPT; lookup CPT to get IEN
 ..I ABMF("CPT")="" K ^ABMDFEE(ABMFT,ABMMLT,ABMF("IEN")) Q  ;there's no pointer, remove entry and quit
 ..I (($G(^ICPT(ABMF("CPT"),0))="")&($G(^ICPT(ABMF("IEN"),0))="")) K ^ABMDFEE(ABMFT,ABMMLT,ABMF("IEN")) Q  ;the pointer is bad, there's no CPT at that pointer
 ..;S ABMF("CPT")=$S(($P($G(^ICPT(ABMF("IEN"),0)),U)'=""):$P($G(^ICPT(ABMF("IEN"),0)),U),1:$P($G(^ICPT(ABMF("CPT"),0)),U))  ;actual CPT code
 ..S ABMACPT=$$ACTIVCPT(ABMF("CPT"))
 ..S ABMF("DCPT")=ABMACPT  ;CPT data
 ..I ($P(ABMF("DCPT"),U)<1) K ^ABMDFEE(ABMFT,ABMMLT,ABMF("IEN")) Q  ;no such CPT so this will contain '-1^NO SUCH ENTRY' or if inactive will contain '0'
 ..S $P(^ABMDFEE(ABMFT,ABMMLT,ABMF("IEN"),0),U)=ABMF("CPT")  ;this is the CPT IEN of whatever entry was found for the CPT
 ..S ABMF("DCPT")=$$DINUM^ABMFOFS($P(ABMF("DCPT"),U,2))  ;DINUM CPT for fee table
 ..S ABMF("DCCNT")=+$G(^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT")))+1  ;increment counter
 ..M ^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),ABMF("DCCNT"))=^ABMDFEE(ABMFT,ABMMLT,ABMF("IEN"))  ;merge whole entry into wc global
 ..S ^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"))=ABMF("DCCNT")  ;DINUM CPT counter
 .K ^ABMDFEE(ABMFT,ABMMLT)  ;remove entire multiple
 .S ^ABMDFEE(ABMFT,ABMMLT,0)="^9002274.01"_ABMMLT_"P^^"  ;reset subfile zero node
 ;
 ;
 ;now look thru working copy global and put back as many entries as I can without intervention
 ;anything left in ABMFTWC after this code will need user intervention using the CUFE option
 S ABMMLT=0
 F  S ABMMLT=$O(^ABMFTWC(ABMFT,ABMMLT)) Q:'ABMMLT  D
 .S ABMF("DCPT")=0
 .F  S ABMF("DCPT")=$O(^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"))) Q:'ABMF("DCPT")  D
 ..;the CPT was only found once - put back in fee table and stop
 ..I $G(^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT")))=1 D
 ...S ABMF("CPT")=$P(^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),1,0),U)
 ...;S $P(^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),1,0),U)=$P($$ACTIVCPT(ABMF("CPT")),U)  ;make .01 field active CPT pointer
 ...D MERGE
 ..;if it gets here there are multiple entries for the same CPT; check if dates are same but fees different - that's an issue
 ..K ABMF("FEECK")
 ..S ABMFEEC=0
 ..S ABMF("DCCNT")=0
 ..F  S ABMF("DCCNT")=$O(^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),ABMF("DCCNT"))) Q:'ABMF("DCCNT")  D
 ...;
 ...S ABMF("CPTEDIEN")=0
 ...F  S ABMF("CPTEDIEN")=$O(^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),ABMF("DCCNT"),1,ABMF("CPTEDIEN"))) Q:'ABMF("CPTEDIEN")  D
 ....S ABMF("FEEREC")=$G(^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),ABMF("DCCNT"),1,ABMF("CPTEDIEN"),0))
 ....S ABMF("FEEDT")=$P(ABMF("FEEREC"),U)  ;fee eff dt
 ....S ABMF("FEE")=$P(ABMF("FEEREC"),U,2)  ;fee
 ....I ($D(ABMF("FEECK",ABMF("FEEDT")))>0)&($G(ABMF("FEECK",ABMF("FEEDT")))'=ABMF("FEE")) D  Q  ;if I find an eff dt with a different fee
 .....S ^ABMFTWC(ABMFT,"FIX",ABMMLT,ABMF("DCPT"))=1  ;what CPT needs intervention
 .....S ABMFEEC=1
 ....S ABMF("FEECK",ABMF("FEEDT"))=ABMF("FEE")  ;add to array if it wasn't there already
 ..;
 ..I ABMFEEC=1 S ^ABMFTWC(ABMFT,"FIX",ABMMLT)=+$G(^ABMFTWC(ABMFT,"FIX",ABMMLT))+1  ;count how many need user intervention
 ..I +$G(^ABMFTWC(ABMFT,"FIX",ABMMLT,ABMF("DCPT")))'=0 Q  ;stop here if user intervention needed for CPT
 ..D MERGE  ;merge entries back into fee table
 Q
 ;
ACTIVCPT(ABMCPT) ;EP
 S ABMF("CPTEDT")=""
 I ($G(ABMF("DCPT"))'="")&($G(ABMFT)'="") S ABMF("CPTEDT")=$P($G(^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),1,1,1,0)),U)
 I ABMF("CPTEDT")="" S ABMF("CPTEDT")=$P($G(^ABMDFEE(ABMFT,0)),U,5)  ;CPT effective date
 I ABMF("CPTEDT")="" S ABMF("CPTEDT")=ABMF("FTEDT")  ;if no CPT eff date use fee table eff date
 I ABMF("CPTEDT")="" S ABMF("CPTEDT")=DT  ;use today if there's still no eff date
 S ABMACPT=$$CPT^ABMCVAPI(ABMCPT,ABMF("CPTEDT"))
 I ABMACPT=0 S ABMACPT=$$CPT^ABMCVAPI(ABMCPT,DT)  ;try again with today's date
 Q ABMACPT
 ;
MERGE ;EP
 ;the next two lines are the zero nodes for the CPT and for effective date
 M ^ABMDFEE(ABMFT,ABMMLT,ABMF("DCPT"),0)=^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),1,0)
 M ^ABMDFEE(ABMFT,ABMMLT,ABMF("DCPT"),1,0)=^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),1,1,0)
 ;
 S ABMF("DCCNT")=0
 F  S ABMF("DCCNT")=$O(^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),ABMF("DCCNT"))) Q:'ABMF("DCCNT")  D
 .S ABMF("CPTEDIEN")=0
 .S ABMF("NEWCPTEDIEN")=1
 .F  S ABMF("CPTEDIEN")=$O(^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),ABMF("DCCNT"),1,ABMF("CPTEDIEN"))) Q:'ABMF("CPTEDIEN")  D
 ..M ^ABMDFEE(ABMFT,ABMMLT,ABMF("DCPT"),1,ABMF("NEWCPTEDIEN"),0)=^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"),ABMF("DCCNT"),1,ABMF("CPTEDIEN"),0)
 ..S ABMF("NEWCPTEDIEN")=+$G(ABMF("NEWCPTEDIEN"))+1
 D DELWCE
 Q
DELWCE ;
 K ^ABMFTWC(ABMFT,ABMMLT,ABMF("DCPT"))  ;remove entry from working copy file after all entries have been merged
 Q
 ;
REINDEX ;EP -re-index everything when done
 D BMES^XPDUTL("Reindexing fee schedules...")
 D ^XBFMK
 S ABMT("FT")=0
 F  S ABMT("FT")=$O(^ABMDFEE(ABMT("FT"))) Q:'ABMT("FT")  D
 .S DIK="^ABMDFEE("
 .S DA=ABMT("FT")
 .D IX^DIK
 Q
 ;
COMPLETE ;EP-mark any that are complete
 ;ABM("FTLST",ABMF)
 S ABMF=0
 F  S ABMF=$O(ABM("FTLST",ABMF)) Q:'ABMF  D
 .I $D(^ABMFTWC(ABMF)) Q  ;skip anything that is still in working copy global
 .S DIE="^ABMDFEE("
 .S DA=ABMF
 .S DR=".06////C"
 .D ^DIE
 Q
