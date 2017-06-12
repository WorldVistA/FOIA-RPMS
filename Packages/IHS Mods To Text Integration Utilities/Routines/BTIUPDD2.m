BTIUPDD2 ; IHS/MSC/MGH - Problem Objects by entry date ;24-May-2016 08:55;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**1017**;MAR 20, 2013;Build 7
 ;
 Q
 ;
 ;
 ;Get the problems associated with this visit and only the latest or items updated during this visit
VST(DFN,TARGET,VIEN,CP,OB) ;Problems updated this visit
 N PROB,CNT,RET,I,VST
 S CNT=0,CP=$G(CP),OB=$G(OB)
 K @TARGET
 S VIEN=$G(VIEN)
 I VIEN'="" G GETPRB
 S VST=$$GETVAR^CIAVMEVT("ENCOUNTER.ID.ALTERNATEVISITID",,"CONTEXT.ENCOUNTER")
 I VST="" S @TARGET@(1,0)="Invalid visit" Q "~@"_$NA(@TARGET)
 S VIEN=+$$VSTR2VIS^BEHOENCX(DFN,VST) I VST<1 S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 D GETPRB
 I CNT=0 S @TARGET@(1,0)="No Problems used as POVs in this visit record"
 Q "~@"_$NA(@TARGET)
 ;
GETPRB ;Get problems to update
 N POV,PRIEN,PCNT,ARRAY
 S ARRAY=""
 I $G(VIEN)="" S @TARGET@(1,0)="Invalid visit" Q "~@"_$NA(@TARGET)
 S PCNT=0,PRIEN=0
 F  S PRIEN=$O(^AUPNPROB("AC",DFN,PRIEN)) Q:'PRIEN  D
 .;Check for which statuses to return
 .S STAT=$P($G(^AUPNPROB(PRIEN,0)),U,12)
 .Q:STAT="D"
 .I $D(^AUPNPROB(PRIEN,14,"B",VIEN)) D
 ..D GETDATA(.ARRAY,PRIEN,VIEN)
 ;IHS/MSC/MGH Patch 1014
 D ADDITMS(.ARRAY)
 Q
GETDATA(ARRAY,PRIEN,VIEN) ;Get data for a problem
 N NARR,STATUS,ICD
 Q:'+PRIEN
 S NARR=$$POV^BTIUPDD(VIEN,PRIEN)
 Q:$P(NARR,U,1)=""!($P(NARR,U,2)="")!($P(NARR,U,3)="")
 S ARRAY($P(NARR,U,2),$P(NARR,U,3),$P(NARR,U,1),PRIEN)=""
 Q
 ;S NARR=$$GET1^DIQ(9000010.07,POV,.04)
ADDITMS(ARRAY) ;Get items in order
 N STAT,NARR,PRIEN,ENTRY
 S STAT="" F  S STAT=$O(ARRAY(STAT)) Q:STAT=""  D
 .S ENTRY="" F  S ENTRY=$O(ARRAY(STAT,ENTRY)) Q:ENTRY=""  D
 ..S NARR="" F  S NARR=$O(ARRAY(STAT,ENTRY,NARR)) Q:NARR=""  D
 ...S PRIEN="" F  S PRIEN=$O(ARRAY(STAT,ENTRY,NARR,PRIEN)) Q:PRIEN=""  D
 ....S PCNT=PCNT+1
 ....D ADD($J(PCNT,2)_")"_NARR_" "_"("_STAT_")")
 ....D QUAL^BTIUPV1(PRIEN,.CNT)
 ....I CP=1 D
 .....D FINDCP^BTIUPV1(PRIEN,"G",.CNT)  ;Add goals
 .....D FINDCP^BTIUPV1(PRIEN,"P",.CNT)  ;Add care plans
 ....I CP=2 D
 .....D FINDCP(PRIEN,"G",.CNT)
 .....D FINDCP(PRIEN,"P",.CNT)
 ....D VIDT^BTIUPV1(PRIEN,VIEN,.CNT)   ;Visit instruction
 ....I +OB D VOB^BTIUPV2(DFN,PRIEN,VIEN,.CNT)  ;V OB notes
 ....D VTRDT^BTIUPV1(PRIEN,VIEN,.CNT)  ;V treatment/regimens
 ....D REFDT^BTIUPV1(PRIEN,VIEN,.CNT)  ;V REFERRALS
 ....D EDU^BTIUPV1(PRIEN,VIEN,.CNT)  ;V education by date
 Q
FINDCP(PRIEN,TYPE,CNT) ;Find a care plan for today Patch 1013
 N INVDT,INVDT2,SIGNDT,ARRDT,STATUS,EDATE,IEN,NODE,PRV,PRVNM,INVDT,CPIEN,CVTDT,SIGN,NODE,Z,DONE,SIEN,PCNT,ARRAY
 S DONE=0,PCNT=0,ARRAY=""
 S INVDT="" S INVDT=$O(^AUPNCPL("APDT",PRIEN,TYPE,INVDT))
 Q:INVDT=""
 S CVTDT=9999999-INVDT
 Q:$P(CVTDT,".",1)'=DT
 S CPIEN="" F  S CPIEN=$O(^AUPNCPL("APDT",PRIEN,TYPE,INVDT,CPIEN)) Q:CPIEN=""  D
 .S SIEN=$C(0) S SIEN=$O(^AUPNCPL(CPIEN,11,SIEN),-1)
 .S STATUS=$P($G(^AUPNCPL(CPIEN,11,SIEN,0)),U,1)
 .Q:STATUS'="A"
 .S INVDT2=9999999-$P($G(^AUPNCPL(CPIEN,0)),U,5)
 .S ARRAY(INVDT2,CPIEN)=""
 Q:$D(ARRAY)<10
 S ARRDT="" F  S ARRDT=$O(ARRAY(ARRDT)) Q:'+ARRDT  D
 .S CPIEN="" F  S CPIEN=$O(ARRAY(ARRDT,CPIEN)) Q:'+CPIEN  D
 ..I PCNT=0 S PCNT=1 D
 ...I TYPE="P" D ADD("   -CARE PLANS:")
 ...I TYPE="G" D ADD("   -GOALS:")
 ..S NODE=$G(^AUPNCPL(CPIEN,0))
 ..S PRV=$$GET1^DIQ(9000092,CPIEN,.03,"I")
 ..S PRVNM=$$GET1^DIQ(9000092,CPIEN,.03)
 ..S SIGNDT=$$GET1^DIQ(9000092,CPIEN,.08,"I")
 ..S SIGNDT=$$FMTE^XLFDT($P(SIGNDT,".",1),5)
 ..S SIGN=$$GET1^DIQ(9000092,CPIEN,.07)
 ..S EDATE=$$GET1^DIQ(9000092,CPIEN,.05)
 ..Q:SIGN=""&(PRV'=DUZ)
 ..D TEXT^BTIUPV1(TYPE,CPIEN)
 Q
 ;
POV(VIEN,PRIEN) ;Check to see if POV narrative is different from problem narrative
 ;IHS/MSC/MGH added normal/abnormal qualifier
 N POV,POVIEN,MATCH,PRIM,NORM,STR,ENTER
 S MATCH=0,POV=""
 S POVIEN="",STR=""
 F  S POVIEN=$O(^AUPNVPOV("AD",VIEN,POVIEN)) Q:POVIEN=""!(MATCH=1)  D
 .I $P($G(^AUPNVPOV(POVIEN,0)),U,16)=PRIEN S MATCH=1
 .S POV=$$GET1^DIQ(9000010.07,POVIEN,.04)
 .S PRIM=$$GET1^DIQ(9000010.07,POVIEN,.12,"I")
 .S NORM=$$GET1^DIQ(9000010.07,POVIEN,.29,"E")
 .S ENTER=$$GET1^DIQ(9000010.07,POVIEN,1216,"I")
 .I NORM="" S STR=POV_U_PRIM
 .I NORM'="" S STR=POV_";"_NORM_U_PRIM
 .S STR=STR_U_ENTER
 Q STR
ADD(DATA) ;add to list
 S CNT=CNT+1
 S @TARGET@(CNT,0)=DATA
 Q
TMPGBL(X) ;EP
 K ^TMP("BGOPRDD",$J) Q $NA(^($J))