BGOPROB3 ; IHS/BAO/TMD - Delete PROBLEMS ;15-Jun-2016 18:46;PLS
 ;;1.1;BGO COMPONENTS;*20**;Mar 20, 2007;Build 3
 ; Delete a problem entry
 ;  PRIEN = Problem IEN ^ TYPE ^ DELETE REASON ^ OTHER^PROB ID
DEL(RET,PRIEN) ;EP
 N FPIEN,FPNUM,ZN,REASON,CMMT,IENS,IEN2,FDA
 D CHK^BGOPROB2(.RET,PRIEN)
 Q:+RET<0
 I $P(PRIEN,U,2)="P"&(+$P(PRIEN,U,5)>8999) D
 .S PRIEN=$P(PRIEN,U,1)
 .S FPNUM=9000013
 .S RET=$$DELETE^BGOUTL(FPNUM,PRIEN)
 E  D
 .S IENS=$P(PRIEN,U,1)
 .S REASON=$P(PRIEN,U,3),CMMT=$P(PRIEN,U,4)
 .S ZN=$G(^AUPNPROB(IENS,0)),RET=""
 .Q:ZN=""
 .S FPIEN=$$FNDFP(IENS,.FPNUM)
 .S FNUM=$$FNUM
 .S IEN2=IENS_","
 .S FDA=$NA(FDA(FNUM,IEN2))
 .S @FDA@(.12)="D"
 .S @FDA@(2.01)=DUZ
 .S @FDA@(2.02)=$$NOW^XLFDT()
 .S @FDA@(2.03)=REASON
 .S @FDA@(2.04)=CMMT
 .S RET=$$UPDATE^BGOUTL(.FDA,,.IEN)
 .;S RET=$$DELETE^BGOUTL("^AUPNPROB(",PRIEN)
 .I 'RET D EVT^BGOPROB(IENS,2,ZN)
 .I 'RET,FPIEN S RET=$$DELETE^BGOUTL(FPNUM,FPIEN)
 Q
FNDFP(PRIEN,FNUM) ;EP-
 N DFN,CLASS,DIEN,NIEN,DMOD,GBL,IEN,RET,X
 S X=$G(^AUPNPROB(PRIEN,0)),DIEN=+X,DFN=$P(X,U,2),DMOD=$P(X,U,3),CLASS=$P(X,U,4),NIEN=$P(X,U,5)
 S FNUM=$S(CLASS="P":9000013,1:0)
 Q:'FNUM ""
 S GBL=$$ROOT^DILFD(FNUM,,1)
 Q:'$L(GBL) ""  ;P8
 S IEN=0,RET=""
 F  S IEN=$O(@GBL@("AC",DFN,IEN)) Q:'IEN  D  Q:RET
 .S X=$G(@GBL@(IEN,0))
 .I +X=DIEN,$P(X,U,2)=DFN,$P(X,U,3)\1=DMOD,$P(X,U,4)=NIEN S RET=IEN
 Q RET
 ; Return file number
FNUM() Q 9000011