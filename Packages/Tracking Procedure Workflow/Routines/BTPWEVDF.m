BTPWEVDF ;GDHS/HCSD/ALA-Event Definition ; 08 Dec 2016  1:35 PM
 ;;1.2;CARE MANAGEMENT EVENT TRACKING;;Jul 07, 2017;Build 71
 ;
 ;
GET(DATA,FAKE) ;EP - BTPW DISPLAY EVENT DEF
 NEW UID,II
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BTPWEVDF",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BTPWEVDF D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 NEW PIEN,PRCNAM,CAT,VALUE,TY,TYPE,TAX,DEF,IEN,VAL,DATE,WHO
 S @DATA@(II)="I00010EVIEN^T00030EVNAME^T00030EVCAT^T00015EVTYPE^T00030EVVALUE^I00010IVALIEN^D00030EVMODDT^T00040EVMODBY"_$C(30)
 S PIEN=0
 F  S PIEN=$O(^BTPW(90621,PIEN)) Q:'PIEN  D
 . I $P(^BTPW(90621,PIEN,0),U,3)'="" Q
 . S PRCNAM=$P(^BTPW(90621,PIEN,0),U,1) I PRCNAM="N/A" Q
 . S CAT=$$GET1^DIQ(90621,PIEN_",",.1,"E")
 . S TY=$$GET1^DIQ(90621,PIEN_",",.12,"I") I TY="" Q
 . S DATE=$$FMTMDY^BQIUL1($$GET1^DIQ(90621,PIEN_",",.13,"I"))
 . S WHO=$$GET1^DIQ(90621,PIEN_",",.14,"E")
 . S VALUE=PIEN_U_PRCNAM_U_CAT_U
 . S TYPE=$$GET1^DIQ(90621.1,TY_",",.09,"E")
 . S IEN=$O(^BTPW(90621,PIEN,1,"C",TY,"")) I IEN="" Q
 . ;S VAL="",IVIEN="",II=II+1,@DATA@(II)=VALUE_TYPE_U_VAL_U_IVIEN_U_DATE_U_WHO_$C(30)
 . S VAL=$P(^BTPW(90621,PIEN,1,IEN,0),"^",5),IVIEN=$P(^(0),"^",6)
 . S II=II+1,@DATA@(II)=VALUE_TYPE_U_VAL_U_IVIEN_U_DATE_U_WHO_$C(30)
 ;
DONE ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(II),$D(DATA) S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
EEVT(DATA,EVIEN) ;EP - BTPW GET EVENT DEF DETAIL
 NEW UID,II
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BTPWEVDFD",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BTPWEVDF D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 NEW PIEN,PIEN,PRCNAM,CAT,VALUE,TY,TYPE,TAX,DEF,TAXP
 ;S @DATA@(II)="I00010EVIEN^T00030EVNAME^T00030EVCAT^T00015EVTYPE^T00030TAXONOMY^T00020TAXIEN^T00040EVVALUE^I00010HIDE_DVALUE"_$C(30)
 S @DATA@(II)="T00015EVTYPE^T00020TAXIEN"_$C(30)
 I $G(EVIEN)="" S PIEN=0 F  S PIEN=$O(^BTPW(90621,PIEN)) Q:'PIEN  D EVT(PIEN)
 I $G(EVIEN)'="" D EVT(EVIEN)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
EVT(PIEN) ;EP
 S PRCNAM=$P(^BTPW(90621,PIEN,0),U,1) I PRCNAM="N/A" Q
 S CAT=$$GET1^DIQ(90621,PIEN_",",.1,"E")
 S VALUE=PIEN_U_PRCNAM_U_CAT_U
 S N=0
 F  S N=$O(^BTPW(90621,PIEN,1,N)) Q:'N  D
 . S TY=$P(^BTPW(90621,PIEN,1,N,0),U,3),TAX=$P(^(0),U,1),DEF=$P(^(0),U,5),TAXP=$P(^(0),U,2)
 . I TY=6 Q
 . S LIEN=$P(^BTPW(90621,PIEN,1,N,0),U,6) I TY=3,LIEN'="" S DEF=$P(^LAB(60,LIEN,0),"^",1)
 . S TYPE=$$GET1^DIQ(90621.1,TY_",",.09,"E")
 . ;S II=II+1,@DATA@(II)=VALUE_TYPE_U_TAX_U_TAXP_U_DEF_U_LIEN_$C(30)
 . S II=II+1,@DATA@(II)=TYPE_U_TAXP_$C(30)
 Q
 ;
UPD(DATA,EVIEN,PARMS) ;EP -- BTPW UPDATE EVENT DEF DETAIL
 ; Updates the event definition detail
 ;  Input
 ;     EVIEN - Event IEN
 ;     PARMS - Parameters 
 ;             EVTYPE  - PCC File type
 ;             IVALIEN - IEN of Event default value
 ;
 NEW UID,II,NAME,VALUE,PDATA,LIST,BN,BTIEN,DA,IENS,BTFILN,RESULT
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BTPWUEVT",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BTPWEVDF D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S @DATA@(II)="I00010RESULT^T001024ERROR"_$C(30)
 ;
 S PARMS=$G(PARMS,"")
 I PARMS="" D
 . S LIST="",BN=""
 . F  S BN=$O(PARMS(BN)) Q:BN=""  S LIST=LIST_PARMS(BN)
 . K PARMS
 . S PARMS=LIST
 . K LIST
 ;
 F BQ=1:1:$L(PARMS,$C(28)) D  Q:$G(BMXSEC)'=""
 . S PDATA=$P(PARMS,$C(28),BQ) Q:PDATA=""
 . S NAME=$P(PDATA,"=",1),VALUE=$P(PDATA,"=",2,99)
 . S @NAME=VALUE
 ;
 ;S TREF="BTPWTAX" K @TREF
 ;I $$EVNN(EVTYPE)=3 D
 ;. D BLD^BQITUTL(TAXONOMY,.TREF,"L")
 ;E  D BLD^BQITUTL(TAXONOMY,.TREF)
 ;S DVALUE=$P(@TREF@(EVVALUE),U,1)
 S BTIEN=$$EVNN(EVTYPE),BTFILN=$P(^BTPW(90621.1,BTIEN,0),U,8)
 S VALUE=$$GET1^DIQ(BTFILN,IVALIEN_",",.01,"E")
 S DA=$O(^BTPW(90621,EVIEN,1,"C",BTIEN,"")),DA(1)=EVIEN
 S IENS=$$IENS^DILF(.DA)
 S BTPWUPD(90621.01,IENS,.05)=VALUE,BTPWUPD(90621.01,IENS,.06)=IVALIEN
 S BTPWUPD(90621,EVIEN_",",.12)=BTIEN,BTPWUPD(90621,EVIEN_",",.14)=DUZ,BTPWUPD(90621,EVIEN_",",.13)=$$NOW^XLFDT()
 D FILE^DIE("","BTPWUPD","ERROR")
 ;
 S RESULT=1_U
 I $D(ERROR)>0 S RESULT=-1_U
 K ERROR
 I $D(BTPWDTA)>0 D FILE^DIE("","BTPWDTA","ERROR")
 I $D(ERROR)>0 S RESULT=-1_U_$G(ERROR("DIERR",1,"TEXT",1))
 I $P(RESULT,U,1)'=-1 S RESULT=1_U
 S II=II+1,@DATA@(II)=RESULT_$C(30)
 K EVIEN,PARMS,IVALIEN,EVTYPE,NAME
 Q
 ;
EVNN(EVTY) ;EP - Event type (PCC File)
 NEW EVTIEN
 S EVTIEN=$O(^BTPW(90621.1,"D",EVTY,""))
 Q EVTIEN
 ;
EVNX(PIEN,EVTY) ;EP - Event's taxonomy entry
 I EVTY'?.N S EVTY=$$EVNN(EVTY) I EVTY="" Q ""
 S IEN=$O(^BTPW(90621,PIEN,1,"C",EVTY,""))
 Q IEN
 ;
ARL ;EP - testing
 S N=0
 F  S N=$O(^BTPW(90621,N)) Q:'N  D
 . S T=0
 . F  S T=$O(^BTPW(90621,N,1,T)) Q:'+T  D
 .. S TY=$P(^BTPW(90621,N,1,T,0),U,3),TAX=$P(^(0),U,1),DEF=$P(^(0),U,5),TAXP=$P(^(0),U,2)
 .. I TY=1!(TY=6) Q
 .. S LIEN=$P(^BTPW(90621,N,1,T,0),U,6)
 .. I LIEN'="" Q
 .. I DEF="" Q
 .. S TREF="ARLIS" K @TREF
 .. I TAXP["LAB" D BLD^BQITUTL(TAX,.TREF,"L")
 .. E  D BLD^BQITUTL(TAX,.TREF)
 .. S F="",DVAL=""
 .. F  S F=$O(@TREF@(F)) Q:F=""  I $P(@TREF@(F),U,1)=DEF S DVAL=F
 .. S $P(^BTPW(90621,N,1,T,0),U,6)=DVAL