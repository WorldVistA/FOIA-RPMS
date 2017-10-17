BQIPTHLP ;GDHS/HCD/ALA-Patient Help Text ; 16 Nov 2016  1:40 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;;
 ;
EN(DATA,CODE) ;EP -- BQI GET PATIENT HELP TEXT
 ; Input
 ;   CODE - A field CODE if wanting the help text for a specific patient field
 ;         otherwise if it is null, then retrieves the help text for all patient fields
 ; 
 NEW UID,II,RIEN
 ;
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIPTHLP",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIPTHLP D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S CODE=$G(CODE,"")
 ;
 S @DATA@(II)="T00015CODE^T00050DISPLAY_NAME^T01024REPORT_TEXT"_$C(30)
 ;
 I CODE="" D
 . S RIEN=""
 . F  S RIEN=$O(^BQI(90506.1,"AC","D",RIEN)) Q:RIEN=""  D
 .. S CODE=$P(^BQI(90506.1,RIEN,0),"^",1) D GETDATA(RIEN)
 ;
 I CODE'="" D
 . S RIEN=$O(^BQI(90506.1,"B",CODE,"")) I RIEN="" Q
 . D GETDATA(RIEN)
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
GETDATA(RIEN) ;EP - Get the help text
 NEW VHELP,NAME,VN
 I $$GET1^DIQ(90506.1,RIEN_",",.1,"I")=1 Q
 S NAME=$P(^BQI(90506.1,RIEN,0),U,3)
 S VHELP="",VN=0
 F  S VN=$O(^BQI(90506.1,RIEN,4,VN)) Q:'VN  D
 . S VHELP=VHELP_^BQI(90506.1,RIEN,4,VN,0)_$C(10)
 S VHELP=$$TKO^BQIUL1(VHELP,$C(10))
 I $G(AVHELP)'="" S VHELP=AVHELP
 ;
 S II=II+1,@DATA@(II)=CODE_U_NAME_U_VHELP_$C(30)
 Q
