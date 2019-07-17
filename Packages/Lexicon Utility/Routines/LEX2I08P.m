LEX2I08P ;IHS/OIT/FCJ - LEXICON UTILITY PATCH 1008
 ;;2.0;LEXICON UTILITY;**1008**;Sep 23, 1996;Build 3
 ;=================================================================
 ;Original routine from LEX2I02P
 ;VA patch numbers are not being updated in package file because this patch is a data only patch.
 ;
POST ;EP FROM KERNAL
 ;
 D MAIL
 D HIST
 Q
MAIL ;
 D BMES^XPDUTL("BEGIN Delivering MailMan message to select users.")
 NEW DIFROM,XMSUB,XMDUZ,XMTEXT,XMY
 KILL ^TMP("LEX1008",$J)
 D RSLT(" --- LEX v 2.0 Patch 1008, has been installed into this namespace ---")
 F %=1:1 D RSLT($P($T(GREET+%),";",3)) Q:$P($T(GREET+%+1),";",3)="###"
 S %=0
 F  S %=$O(^XTMP("XPDI",XPDA,"BLD",XPDBLD,1,%)) Q:'%   D RSLT(^(%,0))
 S XMSUB=$P($P($T(+1),";",2)," ",3,99),XMDUZ=$S($G(DUZ):DUZ,1:.5),XMTEXT="^TMP(""LEX1008"",$J,",XMY(1)="",XMY(DUZ)=""
 F %="LEXZMENU","XUMGR","XUPROG","XUPROGMODE" D SINGLE(%)
 D ^XMD
 KILL ^TMP("LEX1008",$J)
 D MES^XPDUTL("END Delivering MailMan message to select users.")
 Q
 ;
RSLT(%) S ^(0)=$G(^TMP("LEX1008",$J,0))+1,^(^(0))=%
 Q
 ;
SINGLE(K) ; Get holders of a key
 NEW Y
 S Y=0
 Q:'$D(^XUSEC(K))
 F  S Y=$O(^XUSEC(K,Y)) Q:'Y  S XMY(Y)=""
 Q
 ;
GREET ;;To add to mail message.
 ;;  
 ;;Routines and/or data dictionaries on your RPMS system have been updated.
 ;;  
 ;;You are receiving this message because of the RPMS
 ;;security keys that you hold.  This is for your information.
 ;;Do not respond to this message.
 ;;  
 ;;Questions about this patch may be directed to
 ;;the Help Desk, refer to patch "LEX*2.1*1008".
 ;;  
 ;;###;NOTE: This line end of text.
 ;
HIST ;PATCH HISTORY UPDATE
 D MES^XPDUTL("Begin adding patches to package file.")
 S DDLM=";;",DLM="|",TAG="LEX"
 S PKGNM="LEXICON UTILITY"
 I '$D(^DIC(9.4,"B",PKGNM)) D MES^XPDUTL("Problem with package name.") Q
 S PKGIEN=$O(^DIC(9.4,"B",PKGNM,0))
 F I=1:1  D  Q:TEXT["END"
 .S TEXT=$T(@TAG+I) Q:TEXT["END"
 .S DATA=$P(TEXT,DDLM,2)
 .S VERSION=$P(DATA,DLM,2),PATCH=$P(DATA,DLM,3)
 .S VSB=$O(^DIC(9.4,PKGIEN,22,"B",VERSION,0))
 .Q:'VSB
 .K FDA
 .; Do not update if the patch is already in the patch history
 .Q:$D(^DIC(9.4,PKGIEN,22,VSB,"PAH","B",PATCH))
 .S FDA(9.4901,"+1,"_VSB_","_PKGIEN_",",.01)=$G(PATCH)
 .S FDA(9.4901,"+1,"_VSB_","_PKGIEN_",",.02)=DT
 .S FDA(9.4901,"+1,"_VSB_","_PKGIEN_",",.03)=DUZ
 .D UPDATE^DIE(,"FDA")
 .D:$G(DIERR)'="" MES^XPDUTL("Error adding patch "_PATCH_" to package file.")
 D MES^XPDUTL("Completed adding patches to package file.")
 Q
 ;;;;FORMAT - Package name|Version|Patch|Sequence
LEX ;
 ;;LEXICON UTILITY|2.0|1004
 ;;LEXICON UTILITY|2.0|1005
 ;;LEXICON UTILITY|2.0|1006
 ;;LEXICON UTILITY|2.0|1007
 ;END
