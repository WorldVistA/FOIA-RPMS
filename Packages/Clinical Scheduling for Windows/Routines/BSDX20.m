BSDX20 ; IHS/OIT/HMW/MSC/SAT - WINDOWS SCHEDULING RPCS ;
 ;;3.0;IHS WINDOWS SCHEDULING;;DEC 09, 2010
 ;
 ;
DELRGID(BSDXY,BSDXIEN) ;EP
 ;Entry point for debugging
 ;
 ;D DEBUG^%Serenji("DELRGI^BSDX20(.BSDXY,BSDXIEN)")
 Q
 ;
DELRGI(BSDXY,BSDXIEN,BSDXIEN1) ;EP
 ;Deletes entry BSDXIEN1 from entry BSDXIEN in the RESOURCE GROUP file
 ;Return recordset containing error message or "" if no error
 ;Called by BSDX DELETE RES GROUP ITEM
 ;Test Line:
 ;D DELRU^BSDX18(.RES,99)
 ;
 N BSDXI,DIK,DA
 S BSDXI=0
 S BSDXY="^BSDXTMP("_$J_")"
 S ^BSDXTMP($J,0)="I00020RESOURCEGROUPID^I00020ERRORID"_$C(30)
 I '+BSDXIEN D ERR(BSDXI,BSDXIEN,70) Q
 I '+BSDXIEN1 D ERR(BSDXI,BSDXIEN,70) Q
 I '$D(^BSDXDEPT(BSDXIEN,1,BSDXIEN1,0)) D ERR(BSDXI,BSDXIEN,70) Q
 ;
 ;Delete entry BSDXIEN1
 S DIK="^BSDXDEPT("_BSDXIEN_",1,"
 S DA=BSDXIEN1,DA(1)=BSDXIEN
 D ^DIK
 ;
 S BSDXI=BSDXI+1
 S ^BSDXTMP($J,BSDXI)=BSDXIEN_"^"_"-1"_$C(30)_$C(31)
 Q
 ;
ADDRGID(BSDXY,BSDXIEN,BSDXIEN1) ;EP
 ;Entry point for debugging
 ;
 ;D DEBUG^%Serenji("ADDRGI^BSDX20(.BSDXY,BSDXIEN,BSDXIEN1)")
 Q
 ;
ADDRGI(BSDXY,BSDXIEN,BSDXIEN1) ;EP
 ;Adds RESOURCEID BSEDXIEN1 to RESOURCE GROUP entry BSDXIEN
 ;Return recordset containing added subentry number error message or "" if no error
 ;Called by BSDX ADD RES GROUP ITEM
 ;Test Line:
 ;D ADDRGI^BSDX20(.RES,1,1)
 ;
 N BSDXI,BSDXIENS,BSDXMSG,BSDXFDA
 S X="ETRAP^BSDX20",@^%ZOSF("TRAP")
 S BSDXI=0
 S BSDXY="^BSDXTMP("_$J_")"
 S ^BSDXTMP($J,0)="I00020RESOURCEGROUPITEMID^I00020ERRORID"_$C(30)
 I '+BSDXIEN D ERR(BSDXI,BSDXIEN,70) Q
 I '+BSDXIEN1 D ERR(BSDXI,BSDXIEN,70) Q
 I '$D(^BSDXDEPT(BSDXIEN,0)) D ERR(BSDXI,BSDXIEN,70) Q
 I '$D(^BSDXRES(BSDXIEN1,0)) D ERR(BSDXI,BSDXIEN1,70) Q
 I $D(^BSDXDEPT(BSDXIEN,1,"B",BSDXIEN1)) D ERR(BSDXI,0,0) Q
 ;^BSDXDEPT(3,1,"B",3,1)=
 ;
 S BSDXIENS="+1,"_BSDXIEN_","
 S BSDXFDA(9002018.21,BSDXIENS,.01)=BSDXIEN1 ;RESOURCEID
 K BSDXIEN
 D UPDATE^DIE("","BSDXFDA","BSDXIEN","BSDXMSG")
 S BSDXI=BSDXI+1
 S ^BSDXTMP($J,BSDXI)=+$G(BSDXIEN(1))_"^"_"-1"_$C(30)_$C(31)
 Q
 ;
ERR(BSDXI,BSDXID,BSDXERR) ;Error processing
 S BSDXI=BSDXI+1
 S ^BSDXTMP($J,BSDXI)=BSDXID_"^"_BSDXERR_$C(30)
 S BSDXI=BSDXI+1
 S ^BSDXTMP($J,BSDXI)=$C(31)
 Q
 ;
ETRAP ;EP Error trap entry
 I '$D(BSDXI) N BSDXI S BSDXI=999
 S BSDXI=BSDXI+1
 D ERR(BSDXI,99,70)
 Q