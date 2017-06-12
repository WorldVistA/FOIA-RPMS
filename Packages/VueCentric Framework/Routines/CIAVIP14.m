CIAVIP14 ;MSC/IND/PLS - EHR v1.1p14 Inits;23-Apr-2015 10:40;PLS
 ;;1.1;VUECENTRIC FRAMEWORK;;23-Oct-2006
 ;;Copyright 2000-2013, Medsphere Systems Corporation
 ;=================================================================
EC ;EP - Environment check
 Q
PRE ;EP - Preinit
 D DELUSES("BEHLAB.LABVIEW","BEHREMOTEVIEWS.REMOTESITES")
 D DELUSES("BEHREPORTS.REPORTS","BEHREMOTEVIEWS.REMOTESITES")
 Q
POST ;EP - Postinit
 N VER,FDA,PID,IEN,X,TYPE
 D BMES^XPDUTL("Updating version numbers...")
 F VER=0:1 S X=$P($T(VER+VER),";;",2) Q:'$L(X)  D
 .S PID=$$PRGID^CIAVMCFG($P(X,";"))
 .S:PID FDA(19930.2,PID_",",2)=$P(X,";",2),FDA(19930.2,PID_",",7)=$P(X,";",3)
 D:$D(FDA) FILE^DIE(,"FDA")
 W !!!
 I $L($$GETLOGIN^CIAVUTIL),$$ASK^CIAU("Do you want to enable EHR logins","Y") D
 .D SDABORT^CIAVUTIL(,1),BMES^XPDUTL("Application logins have been enabled.")
 D UPDCHM
 Q
 ;Register RPCs to context
REGRPC ;EP-
 I $$REGRPC^CIAURPC("MAGJ USER2","CIAV VUECENTRIC")
 I $$REGRPC^CIAURPC("MAGG CPRS RAD EXAM","CIAV VUECENTRIC")
 I $$REGRPC^CIAURPC("MAG3 CPRS TIU NOTE","CIAV VUECENTRIC")
 Q
 ; Attach Event Protocols to Event Types
EVTPRTL(TYPE) ;
 N EVTNM,PRT,EVT,FDA
 S EVTNM="CIAV "_TYPE_" EVENT"
 S EVT=$$EVENTIEN^CIANBEVT(TYPE)
 Q:'EVT
 S PRT=$$FIND1^DIC(101,,,EVTNM)
 Q:'PRT
 S FDA(19941.21,EVT_",",7)=PRT
 D FILE^DIE(,"FDA")
 Q
 ; Delete a USES item
DELUSES(PARENT,ITM) ;EP-
 N PID,ITMIEN,FDA
 S PID=$$PRGID^CIAVMCFG(PARENT)
 I PID D
 .S ITMIEN=$$FIND1^DIC(19930.221,","_PID_",","B",ITM)
 .I ITMIEN D
 ..S FDA(19930.221,ITMIEN_","_PID_",",.01)="@"
 ..D FILE^DIE(,"FDA")
 Q
 ;
UPDCHM ;EP-
 N CHM,PID
 F CHM=0:1 S X=$P($T(CHM+CHM),";;",2) Q:'$L(X)  D
 .S PID=$$PRGID^CIAVMCFG($P(X,";"))
 .D AECHM(PID,$P(X,";",2,99))
 W !!
 Q
 ;
AECHM(PID,VAL) ;EP-
 N LN,FN,IDX,TXT,ARY,CNT,IENS
 S FN=$P(VAL,";"),CNT=0
 S LN=0 F  S LN=$O(^CIAVOBJ(19930.2,PID,6,LN)) Q:'LN  D  Q:$G(IDX)
 .S TXT=^CIAVOBJ(19930.2,PID,6,LN,0)
 .S ARY(LN,0)=TXT,CNT=CNT+1
 .I $$UP^XLFSTR(TXT)[$$UP^XLFSTR($P(VAL,";")) S IDX=LN
 I $G(IDX) D
 .S ^CIAVOBJ(19930.2,PID,6,IDX,0)=VAL
 E  D
 .S ARY($S('CNT:1,1:CNT+1),0)=VAL
 .S IENS=PID_","
 .S FDA(19930.2,IENS,10)="ARY"
 .D FILE^DIE(,"FDA")
 Q
 ; Rename .01 field of BEH Measurement file
BEHMSR(X,Y) ;
 N IEN,FDA
 S IEN=$O(^BEHOVM(90460.01,"B",X,0))
 Q:'IEN
 S FDA(90460.01,IEN_",",.01)=Y
 D FILE^DIE(,"FDA")
 Q
VER ;;BEHPHARMED.PHARMED;1.0.4.7;4C9E9C487DC1637F923B8519A8B1C5F4
 ;;CSS_PATIENT.PATIENT;4.3.5.4;A08D750BF9A10CE27BCFC542E2483C64
 ;;BEHINFOBTNSVC.INFOBTNSVC;1.1.5380.15214;EE7DC6A75B4D7526235247E804526F0A
 ;;BEHCIR.CIRCTRL;1.0.5422.27406;DB505009F85DA63D68CF886B6821F1D3
 ;;BEHCOMMUNITYINFO.COMMUNITYINFO;1.1.5116.17967;C57D13F1D7714C3444B0870329B666FD
 ;;BEHRXGENERATORSERVICE.RXGENERATOR;1.0.5590.26810;F9EA68A9BC55D9283922B13F54A41194
 ;;BEHCHARTREVIEW.CHARTREVIEW;1.0.5483.25703;23C820723BD8772BA4F360B44DBB4A94
 ;;BEHCCDA.CCDACTRL;1.0.5589.30731;5FA2D4F6C461279270CF18632A2B4D92
 ;;BEHREPORTS.REPORTS;20.1.3.3;CE80BF62EEF0F60F88F21AFA866D155B
 ;;VCQUICKNOTE.QUICKNOTE;1.1.3.4;A28BB46564AF3D4E513B9D468BB6D8B0
 ;;BEHREMOTEVIEWS.REMOTESITES;4.2.1.4;4EB67E0EB501C63E966933C36A996E70
 ;;BEHPCP.PCP;1.1.5533.24507;0D6428CE7A8CA1FF5FD7549C0DF76390
 ;;IHS.IMAGINGVIEWER;1.0.5546.21933;392FB39D7D4F6C9599849F7C82179972
 ;;CSS_ENCOUNTER.ENCOUNTER;4.3.6.2;B5D7DD29F75F74B76BC3C8401D2920A5
 ;;
CHM ;;BEHPHARMED.PHARMED;BEHPharmEd.chm;2014.5.19.134416;8148DCB506ECB006DB87CFEC4D0B2ECC
 ;;BEHVISITS.VISITS;BEHVisits.chm;2014.6.6.141512;E4E67ECB9D38CE8A8100FFB26BA55799
 ;;BEHCIR.CIRCTRL;BEHCIR.chm;2014.9.15.172150;BF33E1B3D35AE2723469B65A358A2518
 ;;BEHORDERS.ORDERENTRY;BEHOrders.chm;2014.8.5.155734;D43C0906AF5F3AD18C47917330B0EC50
 ;;BEHCHARTREVIEW.CHARTREVIEW;BEHChartReview.chm;2014.8.5.155032;9823632A301A0224375005FC0B257A9F
 ;;BEHMEDS.MEDMANAGEMENT;BEHMeds.chm;2014.11.25.185022;C2062EF8C006912DAEE93741F88DD14C
 ;;BEHLAB.LABVIEW;BEHLab.chm;2014.11.24.203438;F9F5535E9134CEE0E78727C9585FDB25
 ;;