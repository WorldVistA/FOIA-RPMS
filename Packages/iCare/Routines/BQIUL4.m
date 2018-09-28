BQIUL4 ;GDHS/HCD/ALA-Miscellaneous BQI utilities ; 21 Jul 2016  8:41 AM
 ;;2.7;ICARE MANAGEMENT SYSTEM;**1**;Dec 19, 2017;Build 12
 ;
 ;
NNAD(DFN,NUM) ;EP -- Get patient's next appt date
 ;Input
 ;  DFN - Patient internal entry number
 ;  NUM - Number of appts
 NEW NAPTM,CNT
 S NAPTM=$$NOW^XLFDT(),RESULT="",CNT=0
 F  S NAPTM=$O(^DPT(DFN,"S",NAPTM)) Q:NAPTM=""  D
 . I $P(^DPT(DFN,"S",NAPTM,0),"^",2)'="" Q
 . S CNT=CNT+1 I CNT>NUM Q
 . S RESULT=RESULT_$$FMTMDY^BQIUL1(NAPTM\1)_$C(13)_$C(10)
 Q $$TKO^BQIUL1(RESULT,$C(13)_$C(10))
 ;
NNAPT(DFN,NUM) ;EP -- Get patient's next appt
 ;Input
 ;  DFN - Patient internal entry number
 NEW NAPTM
 S NAPTM=$$NOW^XLFDT()
 Q $O(^DPT(DFN,"S",NAPTM))
 ;
NNAC(DFN,NUM) ;EP -- Get patient's next appt date's clinic
 ;Input
 ;  DFN - Patient internal entry number
 ;
 NEW NAPTM,IENS,DA,NAN,CSTCD,CST,CNT
 S NAPTM=$$NOW^XLFDT(),RESULT="",CNT=0
 F  S NAPTM=$O(^DPT(DFN,"S",NAPTM)) Q:NAPTM=""  D
 . I $P(^DPT(DFN,"S",NAPTM,0),"^",2)'="" Q
 . S CNT=CNT+1 I CNT>NUM Q
 . S DA(1)=DFN,DA=NAPTM,IENS=$$IENS^DILF(.DA)
 . S NAN=$$GET1^DIQ(2.98,IENS,.01,"I")
 . I NAN="" Q
 . S CST=$$GET1^DIQ(44,NAN_",",8,"I"),CSTCD=""
 . I CST'="" S CSTCD=$$GET1^DIQ(40.7,CST_",",1,"E")
 . S RESULT=RESULT_$$GET1^DIQ(2.98,IENS,.01,"E")_" "_CSTCD_$C(13)_$C(10)
 Q $$TKO^BQIUL1(RESULT,$C(13)_$C(10))
 ;
NNAPV(DFN,NUM) ;EP -- Get patient's next appt provider
 ;Input
 ;  DFN - Patient internal entry number
 ;
 NEW NAPTM,IENS,DA,NAN,CSTCD,CST,PRNAME,PRNM,PRN
 S NAPTM=$$NOW^XLFDT(),RESULT="",CNT=0
 F  S NAPTM=$O(^DPT(DFN,"S",NAPTM)) Q:NAPTM=""  D
 . I $P(^DPT(DFN,"S",NAPTM,0),"^",2)'="" Q
 . S CNT=CNT+1 I CNT>NUM Q
 . S DA(1)=DFN,DA=NAPTM,IENS=$$IENS^DILF(.DA)
 . S NAN=$$GET1^DIQ(2.98,IENS,.01,"I")
 . I NAN="" Q
 . S PRNAME=$$GET1^DIQ(44,NAN_",",16,"E")
 . I PRNAME="" D
 .. S PRN=0
 .. F  S PRN=$O(^SC(NAN,"PR",PRN)) Q:'PRN  D
 ... I $P($G(^SC(NAN,"PR",PRN,0)),U,2)=1 D
 .... S PRNM=$P($G(^SC(NAN,"PR",PRN,0)),U,1)
 .... S PRNAME=$$GET1^DIQ(200,PRNM_",",.01,"E")
 . S RESULT=RESULT_PRNAME_$C(13)_$C(10)
 Q $$TKO^BQIUL1(RESULT,$C(13)_$C(10))
 ;
LNAD(DFN,NUM) ;EP -- Get patient's last # appts date
 ;Input
 ;  DFN - Patient internal entry number
 ;  NUM - Number of appts
 NEW NAPTM,CNT,QFL
 S NAPTM=$$NOW^XLFDT(),RESULT="",CNT=0,QFL=0
 F  S NAPTM=$O(^DPT(DFN,"S",NAPTM),-1) Q:NAPTM=""  D  Q:QFL
 . I $P(^DPT(DFN,"S",NAPTM,0),"^",2)'="" Q
 . S CNT=CNT+1 I CNT>NUM S QFL=1 Q
 . S RESULT=RESULT_$$FMTMDY^BQIUL1(NAPTM\1)_$C(13)_$C(10)
 Q $$TKO^BQIUL1(RESULT,$C(13)_$C(10))
 ;
LNAC(DFN,NUM) ;EP -- Get patient's last # appt date's clinic
 ;Input
 ;  DFN - Patient internal entry number
 ;  NUM - Number of appts
 ;
 NEW NAPTM,IENS,DA,NAN,CSTCD,CST,CNT,QFL
 S NAPTM=$$NOW^XLFDT(),RESULT="",CNT=0,QFL=0
 F  S NAPTM=$O(^DPT(DFN,"S",NAPTM),-1) Q:NAPTM=""  D  Q:QFL
 . I $P(^DPT(DFN,"S",NAPTM,0),"^",2)'="" Q
 . S CNT=CNT+1 I CNT>NUM S QFL=1 Q
 . S DA(1)=DFN,DA=NAPTM,IENS=$$IENS^DILF(.DA)
 . S NAN=$$GET1^DIQ(2.98,IENS,.01,"I")
 . I NAN="" Q
 . S CST=$$GET1^DIQ(44,NAN_",",8,"I"),CSTCD=""
 . I CST'="" S CSTCD=$$GET1^DIQ(40.7,CST_",",1,"E")
 . S RESULT=RESULT_$$GET1^DIQ(2.98,IENS,.01,"E")_" "_CSTCD_$C(13)_$C(10)
 Q $$TKO^BQIUL1(RESULT,$C(13)_$C(10))
 ;
MADD(USR,PANEL,DFN) ;EP -- Get who added patient to panel date/time
 ;Input
 ;  DFN - Patient internal entry number
 ;  USR - User internal entry number
 ;  PANEL - Panel internal entry number
 NEW DA,IENS,WHO
 S WHO=""
 I $G(USR)="" Q WHO
 I $G(PANEL)="" Q WHO
 I $G(DFN)="" Q WHO
 S DA(2)=USR,DA(1)=PANEL,DA=DFN,IENS=$$IENS^DILF(.DA)
 S WHO=$$GET1^DIQ(90505.04,IENS,.03,"I")
 I WHO'="" S WHO=$P($G(^VA(200,WHO,0)),"^",1)
 Q WHO
 ;
LNVD(DFN,NUM) ;EP - Last # of visits' dates
 NEW RVDT
 S RESULT="",CNT=0,QFL=0,RVDT=""
 F  S RVDT=$O(^AUPNVSIT("AA",DFN,RVDT)) Q:RVDT=""!(QFL)  D
 . S VIEN=""
 . S VIEN=$O(^AUPNVSIT("AA",DFN,RVDT,VIEN),-1) Q:VIEN=""  D  Q:QFL
 .. S VSDTM=$P($G(^AUPNVSIT(VIEN,0)),"^",1)\1 I VSDTM=0 Q
 .. S CNT=CNT+1 I CNT>NUM S QFL=1 Q
 .. S RESULT=RESULT_$$FMTMDY^BQIUL1(VSDTM)_$C(13)_$C(10)
 Q $$TKO^BQIUL1(RESULT,$C(13)_$C(10))
 ;
LNVC(DFN,NUM) ;EP - Last # of visits' clinics
 NEW RVDT
 S RESULT="",CNT=0,QFL=0,RVDT=""
 F  S RVDT=$O(^AUPNVSIT("AA",DFN,RVDT)) Q:RVDT=""!(QFL)  D
 . S VIEN=""
 . S VIEN=$O(^AUPNVSIT("AA",DFN,RVDT,VIEN),-1) Q:VIEN=""  D  Q:QFL
 .. S VSDTM=$P($G(^AUPNVSIT(VIEN,0)),"^",1)\1 I VSDTM=0 Q
 .. S CNT=CNT+1 I CNT>NUM S QFL=1 Q
 . S RESULT=RESULT_$$GET1^DIQ(9000010,VIEN_",",.22,"E")_$C(13)_$C(10)
 Q $$TKO^BQIUL1(RESULT,$C(13)_$C(10))
