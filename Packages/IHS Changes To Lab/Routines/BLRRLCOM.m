BLRRLCOM ; cmi/anch/maw - BLR Get Order Comments for HL7 Order Message ;01 MAY 2013  1300;SAT
 ;;5.2;LR;**1021,1030,1031**;Nov 1, 1997
 ;;1.0;BLR REFERENCE LAB;;MAR 14, 2005
 ;
 ;this routine will look up the test ien, ref lab and ask
 ;the appropriate order comments, it will then return an array
 ;with the appropriate result code and value to be stuffed into
 ;the order's OBX segment
 ;
COM(TIEN,LEDI)          ; EP -- check to see if there are any comments
 I $G(BLRPHASE)'="A",'$G(LEDI) Q ""  ;added check of LEDI for backward compatibility
 S BLRCRL=$P($G(^BLRSITE(DUZ(2),"RL")),U)
 I '$G(BLRCRL) Q "No Reference Lab Defined"
 S BLRRIEN=$O(^BLRRL("ALP",TIEN,BLRCRL,0))
 I '$G(BLRRIEN) Q "No Matching Reference Lab Test"
 I '$D(^BLRRL(BLRCRL,1,BLRRIEN,1,0)) Q "No comments for test"
 N TN S TN=$P($G(^LAB(60,TIEN,0)),U,1)
 S BLRCN=0
 NEW NOWTIME
 S NOWTIME=$H
 S ^XTMP("BLRRLCOM",NOWTIME,"001 TIEN:")=$G(TIEN)
 S ^XTMP("BLRRLCOM",NOWTIME,"002 LEDI:")=$G(LEDI)
 S ^XTMP("BLRRLCOM",NOWTIME,"003 BLRCRL:")=$G(BLRCRL)
 S ^XTMP("BLRRLCOM",NOWTIME,"004 BLRRIEN:")=$G(BLRRIEN)
 ; 
 S BLRRC=0 F  S BLRRC=$O(^BLRRL(BLRCRL,1,BLRRIEN,1,BLRRC)) Q:'BLRRC  D
 . S BLRCN=BLRCN+1
 . S BLRTPC=$G(^BLRRL(BLRCRL,1,BLRRIEN,1,BLRRC,0))
 . S BLRTP=$O(^BLRRL("BRES",BLRTPC,BLRCRL,0))
 . S ^XTMP("BLRRLCOM",NOWTIME,"004 BLRRC:")=$G(BLRRC)
 . S ^XTMP("BLRRLCOM",NOWTIME,"004 BLRCN:")=$G(BLRCN)
 . S ^XTMP("BLRRLCOM",NOWTIME,"005 BLRTP:")=$G(BLRTP)
 . Q:'BLRTP
 . S BLRRTI=$P($G(^BLRRL(BLRCRL,1,BLRTP,0)),U,7)
 . S BLRRSC=$P($G(^BLRRL(BLRCRL,1,BLRTP,0)),U,4)
 . S ^XTMP("BLRRLCOM",NOWTIME,"006 BLRCN:",BLRCN,"01 BLRRTI:")=$G(BLRRTI)
 . S ^XTMP("BLRRLCOM",NOWTIME,"006 BLRCN:",BLRCN,"02 BLRRSC:")=$G(BLRRSC)
 . ; S BLRRES=$$ASK(BLRRTI,BLRTP,BLRRSC)
 . ; S BLRRES=$S(+$G(ORWCLVER):BLRRSC_U_BLRRTI_U,1:$$ASK(BLRRTI,BLRTP,BLRRSC))   ; LR*5.2*1031 -- IHS/MSC/MKK - if LAB ACCESSIONING GUI, then DO NOT ask Ref Lab AOE questions: only store the AOE questions
 . S:+$G(BLRAGUI) BLRRES=$$GUI(BLRAOE,TIEN,BLRRTI,BLRRSC,TN)   ; LR*5.2*1031 -- IHS/MSC/SAT - if LAB ACCESSIONING GUI, then DO NOT ask Ref Lab AOE questions: only store the AOE questions and passed in answers
 . S:'+$G(BLRAGUI) BLRRES=$$ASK(BLRRTI,BLRTP,BLRRSC)         ; LR*5.2*1031 -- IHS/MSC/SAT
 . S ^XTMP("BLRRLCOM",NOWTIME,"006 BLRCN:",BLRCN,"03 BLRRES:")=$G(BLRRES)
 . I $G(BLRRES)]"" S BLRRLC(TIEN,BLRCN)=$G(BLRRES)
 Q $G(BLRRLC)
 ;
ASK(RTI,RTP,RSC)       ; EP -- ask the comment question and get the result
 ; RTI = Prompt
 ; RTP = 
 ; RSC = Result code
 N DIR
 S DIR(0)="FO",DIR("A")=RTI
 D ^DIR
 S BLRANS=Y
 Q RSC_U_RTI_U_BLRANS
 ;
GUI(BLRAOE,TIEN,RTI,RSC,TN) ;
 N BLRANS,BLRCNT
 Q:$G(TIEN)=""
 S BLRANS=""
 S BLRRET=""
 ;BLRAOE = <question prompt> ^ <result code> ^ <free-text answer> ^ <test name>
 F BLRCNT=1:1:$L(BLRAOE,"|") D  Q:BLRANS'=""
 .I $P($P(BLRAOE,"|",BLRCNT),U,4)=TN D
 ..I $P($P(BLRAOE,"|",BLRCNT),U,1)=RTI D
 ...S BLRANS=$P($P(BLRAOE,"|",BLRCNT),U,3)
 Q RSC_U_RTI_U_BLRANS