BTPWPFNC ;VNGT/HS/ALA-Correct deleted/merged visits ; 11 Oct 2010  9:45 AM
 ;;1.2;CARE MANAGEMENT EVENT TRACKING;**1**;JUL 07,2017;Build 5
 ;
 ;
EN ; Entry point
 NEW QIEN,DATA,FILE,FLD,VISIT,RIEN,RFIL,TRIEN,FLD,GLOB,RVIS
 NEW ACCN,VDATE,NVIS
 S QIEN=0
 F  S QIEN=$O(^BTPWQ(QIEN)) Q:'QIEN  D
 . S DATA=^BTPWQ(QIEN,0)
 . S VISIT=$P(DATA,U,4),RIEN=$P(DATA,U,5),RFIL=$P(DATA,U,6)
 . S TRIEN=$P(DATA,U,14),WHIEN=$P(DATA,U,9)
 . I VISIT="~" Q
 . I RFIL=""!(RFIL="~") Q
 . S FILE=$P(^BTPW(90621.1,RFIL,0),U,2),FLD=$P(^BTPW(90621.1,RFIL,0),U,3)
 . I FLD'=.01 Q
 . I FILE=9000010.09 D
 .. S ACCN=$P(DATA,U,15) I ACCN'="" Q
 .. S ACCN=$P($G(^AUPNVLAB(RIEN,0)),U,6) I ACCN="" Q
 .. S BTPWUPD(90629,QIEN_",",.15)=ACCN
 . S GLOB=$$ROOT^DILFD(FILE,"",1)
 . S RVIS=$P($G(@GLOB@(RIEN,0)),U,3)
 . I RVIS=VISIT Q
 . I $P($G(^AUPNVSIT(VISIT,0)),U,9)=0 D
 .. S NVIS=$P($G(^AUPNVSIT(VISIT,0)),U,37)
 .. ; If MERGED TO is defined, set new value
 .. I NVIS'="" D  Q
 ... K VDATE
 ... S BTPWUPD(90629,QIEN_",",.04)=NVIS
 ... I $P(^AUPNVSIT(VISIT,0),U,1)\1'=$P(^AUPNVSIT(NVIS,0),U,1)\1 S VDATE=$P(^AUPNVSIT(NVIS,0),U,1)\1
 ... I $G(VDATE)'="" S BTPWUPD(90629,QIEN_",",.03)=VDATE
 ... I TRIEN'="" S BTPWUPD(90620,TRIEN_",",.04)=NVIS I $G(VDATE)'="" S BTPWUPD(90620,TRIEN_",",.03)=VDATE
 ... I WHIEN'="",$P($G(^BWPCD(WHIEN,"PCC")),U,2)=RIEN S BTPWUPD(9002086.1,WHIEN_",",5.01)=NVIS
 .. I $P(^BTPWQ(QIEN,0),U,2)=$P($G(@GLOB@(RIEN,0)),U,2),TRIEN="" S BTPWUPD(90629,QIEN_",",.01)="@"
 .. ; No merged visit found so visit is deleted
 .. I NVIS="" D
 ... ; If status is pending, delete
 ... S STAT=$P(DATA,U,8) I STAT="P" D  Q
 .... NEW DIK,DA
 .... S DIK="^BTPWQ(",DA=QIEN D ^DIK
 ... ; If status is tracked and tracked event is open, close it, if closed, add comment
 ... I STAT="T" D
 .... I $P($G(^BTPWP(TRIEN,1)),U,1)="O" D
 ..... D CLOSE^BTPWPEVO(.DATA,TRIEN,4,"Associated PCC visit was deleted.")
 .... I $P($G(^BTPWP(TRIEN,1)),U,1)="C" D
 ..... NEW COM
 ..... S COM(1)="Associated PCC visit was deleted."
 ..... D WLOG^BTPWHIST(.COM,"90620:3",TRIEN_",",$G(DUZ),$G(DTTM),"Add Comment")
 ... S BTPWUPD(90629,QIEN_",",.01)="@"
 . I $D(BTPWUPD) D FILE^DIE("","BTPWUPD","ERROR")
 Q
