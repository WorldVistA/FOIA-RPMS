BQIRGPD ;GDHD/HCS/ALA-Pediatrics ; 14 Dec 2016  2:13 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;;
 ;
LAB ;EP - Pull out pediatric lab tests
 NEW LRES,RES
 S LRES=$$ITM^BQICMUTL("",BQDFN,FREF,RREF,ITM,TAX,.TREF)
 I $P(LRES,U,1)=0 S RESULT=0 Q
 S RES=$P(LRES,U,7) I RES="" S RES=$P(LRES,U,6)
 S RESULT=1_U_$P(LRES,U,2)_U_RES
 Q
 ;
LBT ;EP - Set up lab tests
 NEW TAX,TREF
 S TAX="BQI PEDIATRIC LAB TESTS"
 S TREF=$NA(^TMP("BQIRGPD",$J)) K @TREF
 D BLD^BQITUTL(TAX,.TREF,"L")
 ; Clean up labs
 NEW DA,IENS,CIEN,COD
 S CIEN=$O(^BQI(90506.5,"B","Pediatric","")) I CIEN="" Q
 S COD=$P(^BQI(90506.5,CIEN,0),"^",2)
 S DA=0,DA(1)=CIEN
 F  S DA=$O(^BQI(90506.5,CIEN,10,DA)) Q:'DA  D
 . S IENS=$$IENS^DILF(.DA)
 . S BQIUPD(90506.51,IENS,.09)=1
 I $D(BQIUPD) D FILE^DIE("","BQIUPD","ERROR")
 ;
 ; Set up lab tests
 NEW BN,CT,CD,DA,IENS,DIC,DESC,PNL,DLAYGO,DIC,X,Y,NM,NAME
 S BN=0
 F  S BN=$O(@TREF@(BN)) Q:'BN  D
 . S NM=$P(^LAB(60,BN,.1),U,1),NAME=$P(^LAB(60,BN,0),"^",1)
 . S PNL=0 I $O(^LAB(60,BN,2,0))'="" S PNL=1
 . S IEN=$O(^BQI(90506.5,CIEN,10,"C",NM,""))
 . I IEN'="" D
 .. S DA(1)=CIEN,DA=IEN,IENS=$$IENS^DILF(.DA)
 .. S BQIUPD(90506.51,IENS,.09)="@"
 .. D FILE^DIE("","BQIUPD","ERROR")
 .. I PNL S DESC(1)="Most recent "_NAME_" panel from V Lab is displayed."
 .. I 'PNL S DESC(1)="Most recent "_NAME_" lab test from V Lab is displayed."
 .. D WP^DIE(90506.51,IENS,4,"","DESC")
 . I IEN="" D
 .. S CT=$P($G(^BQI(90506.5,CIEN,10,0)),U,3),CT=CT+1
 .. S CD=COD_"_"_$E("0000",$L(CT),2)_CT
 .. S DA(1)=CIEN,X=CD,DIC="^BQI(90506.5,"_DA(1)_",10,",DIC(0)="L",DLAYGO=90506.51
 .. K DO,DD D FILE^DICN S DA=+Y
 .. S IENS=$$IENS^DILF(.DA)
 .. S BQIUPD(90506.51,IENS,.02)=3,BQIUPD(90506.51,IENS,.03)=NM
 .. S BQIUPD(90506.51,IENS,.04)=BN,BQIUPD(90506.51,IENS,.05)="B"
 .. S BQIUPD(90506.51,IENS,.06)="O",BQIUPD(90506.51,IENS,.08)="A"
 .. S BQIUPD(90506.51,IENS,1)="D LAB^BQIRGPD"
 .. D FILE^DIE("","BQIUPD","ERROR")
 .. I PNL S DESC(1)="Most recent "_NAME_" panel from V Lab is displayed."
 .. I 'PNL S DESC(1)="Most recent "_NAME_" lab test from V Lab is displayed."
 .. D WP^DIE(90506.51,IENS,4,"","DESC")
 K @TREF
 Q
