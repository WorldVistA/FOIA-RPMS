BSTSDTSC ;GDIT/HS/BEE-Standard Terminology DTS Calls/Processing ; 5 Nov 2012  9:53 AM
 ;;2.0;IHS STANDARD TERMINOLOGY;;Dec 01, 2016;Build 62
 ;
 Q
 ;
CLEAR(DTSNODE,NMID) ;EP - Clear out Custom Codeset Entries
 ;
 NEW DTSID,CONCEPT,DIEN,CIEN,TIEN,DA,DIK
 ;
 I $G(NMID)="" Q
 ;
 S DTSID=$P(DTSNODE,U) Q:DTSID=""
 S CONCEPT=$P(DTSNODE,U,2) Q:CONCEPT=""
 ;
 ;Look up the concepts pointed to (may be different)
 S DIEN=$O(^BSTS(9002318.4,"D",NMID,DTSID,""))
 S CIEN=$O(^BSTS(9002318.4,"C",NMID,CONCEPT,""))
 I CIEN=DIEN Q
 ;
 ;IENS are different so we need to get rid of both of them
 ;
 ;Get rid of the terms
 I DIEN]"" S TIEN="" F  S TIEN=$O(^BSTS(9002318.3,"C",NMID,DIEN,TIEN)) Q:TIEN=""  D
 . NEW DA,DIK
 . ;
 . S DA=TIEN,DIK="^BSTS(9002318.3," D ^DIK
 ;
 I CIEN]"" S TIEN="" F  S TIEN=$O(^BSTS(9002318.3,"C",NMID,CIEN,TIEN)) Q:TIEN=""  D
 . NEW DA,DIK
 . ;
 . S DA=TIEN,DIK="^BSTS(9002318.3," D ^DIK
 ;
 ;Get rid of the concepts
 I CIEN]"" S DA=CIEN,DIK="^BSTS(9002318.4," D ^DIK
 I DIEN]"" S DA=DIEN,DIK="^BSTS(9002318.4," D ^DIK
 ;
 Q
