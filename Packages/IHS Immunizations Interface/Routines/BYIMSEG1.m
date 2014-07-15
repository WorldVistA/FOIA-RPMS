BYIMSEG1 ;IHS/CIM/THL - IMMUNIZATION DATA INTERCHANGE;
 ;;2.0;BYIM IMMUNIZATION DATA EXCHANGE INTERFACE;**3,4**;NOV 01, 2013;Build 189
 ;
 ;this routine will contain code to supplement fields in the
 ;HL7 segments
 ;
IN1MCARE ;MEDICARE IN1 SEGMENTS
 D IN117
 Q
 ;-----
IN117 ;
 S X="SEL^SELF^HL70063"
 S INA("IN117")=X
 S INA("IN117",1)=X
 S INA("IN117",INDA)=X
 S INA("IN117",INDA,1)=X
 S INA("IN117",9000003,INDA)=X
 S INA("IN117",9000003,INDA,1)=X
 Q
OBXCE ;EP;
 D VSET^BYIMSEGS(INDA)
 D OBXCE1
 D OBXCE2
 D OBXCE3
 D OBXCE4
 D OBXCE5
 D OBXCE11
 D OBXCE14
 D OBXCE17
 Q
 ;-----
OBXCE1 ;subid
 S INA("OBXCE1",INDA)="1"
 Q
 ;-----
OBXCE2 ;vt
 S INA("OBXCE2",INDA)="CE"
 Q
 ;-----
OBXCE3 ;od
 S INA("OBXCE3",INDA)="64994-7"_CS_"funding eligibility for immunization"_CS_"LN"
 Q
 ;-----
OBXCE4 ;osid
 S INA("OBXCE4",INDA)="1"
 Q
 ;-----
OBXCE5 ;ov
 S INA("OBXCE5",INDA)=$$IVFC^BYIMIMM3(INDA)
 Q
 ;-----
OBXCE11 ;abn
 S INA("OBXCE11",INDA)="F"
 Q
 ;-----
OBXCE14 ;edt
 S INA("OBXCE14",INDA)=""
 N X
 S X=$P(X12,U)
 S:'X X=$P(V0,U)
 Q:'X
 S INA("OBXCE14",INDA)=$E($$TIMEIO^INHUT10(X),1,8)
 Q
 ;-----
OBXCE17 ;METHOD OF CAPTURE
 S INA("OBXCE17",INDA)="VXC40"_CS_"per immunization"_CS_"CDCPHINVS"
OBXCEEND Q
 ;-----
 ;-----
OBXPR ;EP;VIS PRESENTED
 D VSET^BYIMSEGS(INDA)
 D OBXPR1
 D OBXPR2
 D OBXPR3
 D OBXPR4
 D OBXPR5
 Q
 ;-----
OBXPR1 ;subid
 S INA("OBXPR1",INDA)="4"
 Q
 ;-----
OBXPR2 ;vt
 S INA("OBXPR2",INDA)="TS"
 Q
 ;-----
OBXPR3 ;od
 S INA("OBXPR3",INDA)="29769-7"_CS_"Date vaccine information statement presented"_CS_"LN"
 Q
 ;-----
OBXPR4 ;osid
 S INA("OBXPR4",INDA)="2"
 Q
 ;-----
OBXPR5 ;ov
 N X
 S X=""
 S INA("OBXPR5",INDA)=""
 S X=$P(V0,".")
 S:X X=X+17000000
 S INA("OBXPR5",INDA)=X
OBXPREND Q
 ;-----
 ;-----
OBXPB ;EP;VIS PUBLISHED
 D VSET^BYIMSEGS(INDA)
 D OBXPB1
 D OBXPB2
 D OBXPB3
 D OBXPB4
 D OBXPB5
 Q
 ;-----
OBXPB1 ;subid
 S INA("OBXPB1",INDA)="3"
 Q
 ;-----
OBXPB2 ;vt
 S INA("OBXPB2",INDA)="TS"
 Q
 ;-----
OBXPB3 ;od
 S INA("OBXPB3",INDA)="29768-9"_CS_"Date vaccine information statement published"_CS_"LN"
 Q
 ;-----
OBXPB4 ;osid
 S INA("OBXPB4",INDA)="2"
 Q
 ;-----
OBXPB5 ;ov
 N X,Y,Z
 S PUB=""
 S INA("OBXPB5",INDA)=""
 D PUB(X0)
 S:$L(PUB)=7 INA("OBXPB5",INDA)=PUB+17000000
OBXPBEND Q
 ;-----
 ;-----
REFUSAL(DFN,UIF) ;EP;TO CREATE REFUSAL RELATED SEGMENTS
 ;DFN   = PATIENT DFN
 ;UIF   = IEN FOR ^INTHU
 Q:'$G(DFN)!'$G(UIF)
 D R1(DFN,UIF)
 D V1(DFN,UIF)
 D COMP(DFN,UIF)
 Q
 ;-----
R1(DFN,UIF) ;EP;FIND PATIENT RELATED REFUSALS
 ;DFN   = PATIENT DFN
 ;UIF   = IEN FOR ^INTHU
 N X,Y,Z
 S INDA=$O(INA("ORC1",9999999999),-1)
 S X=0
 F  S X=$O(^AUPNPREF("AC",DFN,X)) Q:'X  S X0=$G(^AUPNPREF(X,0)) D:+X0=3
 .Q:$D(^BYIMEXP("REF",X))
 .S INDA=INDA+1
 .S Y="ORC|RE||9999^CDC|CR|"
 .S LCT=+$O(^INTHU(UIF,3,9999999999),-1)+1
 .S ^INTHU(UIF,3,LCT,0)=Y
 .S V0=$P(X0,U,3)
 .N CS
 .S CS=U
 .D RXA3^BYIMSEGS
 .S Z=$G(^AUTTIMM(+$P(X0,U,6),0))
 .D RXA5^BYIMSEGS
 .S Z=$S($P($G(^DPT(DFN,0)),U,3)<(DT-180000):"03^Patient decision",1:"00^Parental decision")_CS_"NIP002"
 .S LCT=+$O(^INTHU(UIF,3,9999999999),-1)+1
 .S ^INTHU(UIF,3,LCT,0)="RXA|0|1|"_INA("RXA3",INDA)_"||"_INA("RXA5",INDA)_"|999||||||||||||"_Z_"||RE|CR|"
 .S:'$G(BYIMMU2) ^BYIMEXP("REF",X)=DT
 Q ""
 ;-----
V1(DFN,UIF) ;EP;DETERMINE VARICELLA EXPOSURE
 ;DFN   = PATIENT DFN
 ;UIF   = IEN FOR ^INTHU
 Q:'$D(^BIPC("B",+DFN))
 N VDAT,BIX,LCT,ORC,RXA,OBX
 S VDAT=""
 S BIX=0
 F  S BIX=$O(^BIPC("B",DFN,BIX)) Q:'BIX  D:$P($G(^BIPC(BIX,0)),U,3)=12
 .S:'$G(^BYIMEXP("HXV",BIX)) VDAT=$P(^BIPC(BIX,0),U,4)
 .S:'$G(BYIMMU2) ^BYIMEXP("HXV",BIX)=VDAT
 Q:$L(VDAT)'=7
 S LCT=+$O(^INTHU(UIF,3,9999999999),-1)+1
 S VDAT=VDAT+17000000
 S ORC="ORC|RE||9999^CDC|CR|"
 S RXA="RXA|0|1|"_VDAT_"|"_VDAT_"|998^No vaccine administered^CVX|999|"
 S $P(RXA,"|",21)="NA|CR|"
 S OBX="OBX|1|CE|59784-9^Disease with presumed immunity ^LN|1|38907003^Varicella infection^SCT||||||F|CR|"
 S ^INTHU(UIF,3,LCT,0)=ORC
 S LCT=+$O(^INTHU(UIF,3,9999999999),-1)+1
 S ^INTHU(UIF,3,LCT,0)=RXA
 S LCT=+$O(^INTHU(UIF,3,9999999999),-1)+1
 S ^INTHU(UIF,3,LCT,0)=OBX
 Q
 ;-----
COMP(DFN,UIF) ;EP;REFORMAT MESSAGE PRIOR TO TRANSMISSION
 ;DFN   = PATIENT DFN
 ;UIF   = IEN FOR ^INTHU
 N X,Y,Z,CNT
 K ^BYIMTMP("UIF",UIF)
 S CNT=0
 S XX=0
 F  S XX=$O(^INTHU(UIF,3,XX)) Q:'XX  S X=^(XX,0) D
 .S CNT=$O(^BYIMTMP("UIF",UIF,3,9999999999),-1)+1
 .S ^BYIMTMP("UIF",UIF,3,CNT,0)=X
 .Q:X'["ORC|"!($E(X,1,4)'?3U1"|")
 .D NORC(UIF)
 .D EVAL(UIF)
 K ^INTHU(UIF,3)
 S X=0
 F  S X=$O(^BYIMTMP("UIF",UIF,3,X)) Q:'X  S Y=^(X,0) S:Y]"" ^INTHU(UIF,3,X,0)=Y
 K ^BYIMTMP("UIF",UIF)
 Q
 ;-----
 ;-----
NORC(UIF) ;FIND NEXT ORC
 N X,Y,Z
 S J=XX+1
 S X=XX
 F  S X=$O(^INTHU(UIF,3,X)) Q:'X  I ^(X,0)["ORC|" S XX=X-1 Q
 S:J>XX XX=$O(^INTHU(UIF,3,9999999999),-1)
 Q
 ;-----
EVAL(UIF) ;EVAL FOR MULTIPLE VACCINE RXA'S
 N X,Y,Z,HIST,CNT,RXA,CVX,CVXDA,NAM,OBXPR,OBXPU
 S OBXPR=""
 S OBXPU=""
 S HIST=0
 F J=J:1:XX D
 .S X=$G(^INTHU(UIF,3,J,0))
 .S CNT=$O(^BYIMTMP("UIF",UIF,3,9999999999),-1)+1
 .I 'HIST,X'["vaccine info" S ^BYIMTMP("UIF",UIF,3,CNT,0)=X
 .I HIST,"|MSH|PID|ORC|RXA|"[("|"_$E(X,1,3)_"|") D
 ..S:X'["|CR|" X=X_"|CR|"
 ..S ^BYIMTMP("UIF",UIF,3,CNT,0)=X
 .D:$E(X,1,4)="RXA|"
 ..S RXA=X
 ..S HIST=+$P(RXA,"|",10)
 .S:X["present" OBXPR=$G(^INTHU(UIF,3,J,0))
 .S:X["publish" OBXPU=$G(^INTHU(UIF,3,J,0))
 Q:$G(RXA)=""
 S CVX=+$P(RXA,"|",6)
 S CVXDA=+$O(^AUTTIMM("C",CVX,0))
 S X=$G(^AUTTIMM(CVXDA,0))
 S CMP=$P($G(^AUTTIMM(CVXDA,0)),U,21,26)
 I $L(CMP)>5 D E1(RXA,CMP) Q
 Q:$P(RXA,"|",19)]""!HIST
 S:$P($G(^BYIMNOS(CVXDA,0)),U,2) X=$G(^AUTTIMM(+$P(^(0),U,2),0))
 S NAM=$P(X,U)
 S CVX=+$P(X,U,3)
 S CVXDA=+$O(^AUTTIMM("C",CVX,0))
 S PUB=$P(X,U,13)
 S:'PUB PUB=$P($G(^BYIMNOS(CVXDA,0)),U,3)
 D:$G(OBXPU)]""
 .S $P(OBXPU,"|",6)=PUB+17000000
 .S:OBXPU'["|CR|" OBXPU=OBXPU_"|CR|"
 .S CNT=$O(^BYIMTMP("UIF",UIF,3,9999999999),-1)+1
 .S ^BYIMTMP("UIF",UIF,3,CNT,0)=OBXPU
 D:$G(OBXPR)]""
 .S:OBXPR'["|CR|" OBXPR=OBXPR_"|CR|"
 .S CNT=$O(^BYIMTMP("UIF",UIF,3,9999999999),-1)+1
 .S ^BYIMTMP("UIF",UIF,3,CNT,0)=OBXPR
 Q
 ;-----
E1(RXA,CMP) ;
 N J,K,L,X,Y,Z,XX
 S CNT=$O(^BYIMTMP("UIF",UIF,3,9999999999),-1)
 S X=$G(^BYIMTMP("UIF",UIF,3,CNT,0))
 I $E(X,1,9)="OBX|2|CE|" K ^BYIMTMP("UIF",UIF,3,CNT)
 S K=1
 S L=1
 F J=1:1:6 S X=$P(CMP,U,J) D:X
 .S:$P($G(^BYIMNOS(X,0)),U,2) X=$P(^(0),U,2),NOSPUB=$P(^(0),U,3)
 .S X=$G(^AUTTIMM(X,0))
 .S NAM=$P(X,U)
 .S CVX=$P(X,U,3)
 .S PUB=$P(X,U,13)
 .I 'PUB,NOSPUB S PUB=NOSPUB
 .S K=K+1
 .S L=L+1
 .S X="OBX|"_K_"|"
 .S $P(X,"|",3)="CE"
 .S $P(X,"|",4)="30956-7"_U_"vaccine type"_U_"LN"
 .S $P(X,"|",5)=L
 .S $P(X,"|",6)=(CVX_U_NAM_U_"CVX")
 .S $P(X,"|",12)="F"
 .S CNT=$O(^BYIMTMP("UIF",UIF,3,9999999999),-1)+1
 .S ^BYIMTMP("UIF",UIF,3,CNT,0)=X_"|CR|"
 .S K=K+1
 .S $P(OBXPU,"|",2)=K
 .S $P(OBXPU,"|",5)=L
 .S $P(OBXPU,"|",6)=PUB+17000000
 .S $P(OBXPU,"|",12)="F"
 .S CNT=$O(^BYIMTMP("UIF",UIF,3,9999999999),-1)+1
 .S ^BYIMTMP("UIF",UIF,3,CNT,0)=OBXPU
 .S K=K+1
 .S $P(OBXPR,"|",2)=K
 .S $P(OBXPR,"|",5)=L
 .S $P(OBXPR,"|",12)="F"
 .S CNT=$O(^BYIMTMP("UIF",UIF,3,9999999999),-1)+1
 .S ^BYIMTMP("UIF",UIF,3,CNT,0)=OBXPR
 Q
 ;-----
 ;-----
OBXTY ;EP;
 D VSET^BYIMSEGS(INDA)
 D OBXTY1
 D OBXTY2
 D OBXTY3
 D OBXTY4
 D OBXTY5
 D OBXTY11
 Q
 ;-----
OBXTY1 ;subid
 S INA("OBXTY1",INDA)="2"
 Q
 ;-----
OBXTY2 ;vt
 S INA("OBXTY2",INDA)="CE"
 Q
 ;-----
OBXTY3 ;od
 S INA("OBXTY3",INDA)="30956-7"_CS_"vaccine type"_CS_"LN"
 Q
 ;-----
OBXTY4 ;osid
 S INA("OBXTY4",INDA)="2"
 Q
 ;-----
OBXTY5 ;ov
 N X
 S CVX=$P(Z,U,3)
 S IDA=+$O(^AUTTIMM("C",+CVX,0))
 S:$P($G(^BYIMNOS(IDA,0)),U,2) IDA=$P(^(0),U,2)
 S X=$G(^AUTTIMM(IDA,0))
 S CVX=$P(X,U,3)
 S:$L(CVX)=1 CVX="0"_CVX
 S INA("OBXTY5",INDA)=CVX_CS_$P(X,U)_CS_"CVX"
 Q
 ;-----
OBXTY11 ;abn
 S INA("OBXTY11",INDA)="F"
 Q
 ;-----
OBXTYEND Q
 ;-----
 ;-----
QRF ;EP;main QRF routine driver
 S INA("INQWHICH")="ANY"
 D QRF1
 D QRF2
 D QRF3
 D QRF5
 Q
 ;-----
QRF1 ;
 S INA("QRF1")=$P($G(^DIC(4,+$G(DUZ(2)),0)),U)
 Q
QRF2 ;
 S INA("QRF2")=""
 Q
 ;-----
QRF3 ;
 ;S INA("INQEDTM")=$G(INA("QEDT"))
 S INA("QRF3")=""
 Q
 ;-----
QRF5 ;build the other query subject filter
 N BYIMDA,BYIMSSN,BYIMDOB,BYIMBST,BYIMBCN,BYIMMCN,BYIMMNM,BYIMMMN,BYIMMSSN,BYIMFNM
 S BYIMDA=$O(INA("QNM",0))
 Q:'BYIMDA
 N X,Y,Z,X0,X24
 S X0=$G(^DPT(BYIMDA,0))
 Q:X0=""
 S BYIMSSN=$TR($P(X0,U,9),"-")
 S BYIMDOB=$P(X0,U,3)+17000000
 S BYIMBST=$P($G(^DIC(5,+$P(X0,U,12),0)),U,2)
 S BYIMBCN=$P($G(^AUPNPAT(BYIMDA,11)),U,5)
 S BYIMMCN=""
 S BYIMMNM=""
 S BYIMMMN=""
 S BYIMMSSN=""
 S BYIMFNM=""
 S X24=$G(^DPT(BYIMDA,.24))
 S X=$P(X24,U,2)
 S:X]"" BYIMMNM=$$QRFNAME(X)
 S X=$P(X24,U,3)
 S:X]"" BYIMMMN=$$QRFNAME(X)
 S X=$P(X24,U)
 S:X]"" BYIMFNM=$$QRFNAME(X)
 S BYIMFSSN=""
 S INA("QRF5")=BYIMSSN_RS_BYIMDOB_RS_BYIMBST_RS_BYIMBCN_RS_BYIMMCN_RS_BYIMMNM_RS_BYIMMMN_RS_BYIMMSSN_RS_BYIMFNM_RS_BYIMFSSN
 Q
 ;-----
QRFNAME(NAME) ;FORMAT NAME
 Q:NAME="" ""
 S X=$P(NAME,",")_U_$P($P(NAME,",",2)," ")
 S:NAME[" " X=X_U_$P(NAME," ",2)
 Q X
QRFEND Q
 ;-----
 ;-----
FHS ;EP;
 Q
 ;-----
PUB(X0) ;FIND PUB DATE
 S IDA=+X0
 Q:'IDA
 S BYIMNOS=$G(^BYIMNOS(IDA,0))
 Q:'BYIMNOS
 S NOSDA=+$P(BYIMNOS,U,2)
 S NOSPUB=$P(BYIMNOS,U,3)
 S:NOSDA=IDA PUB=$P(X0,U,12)
 I 'PUB S PUB=$P($G(^AUTTIMM(NOSDA,0)),U,13)
 I 'PUB,NOSPUB S PUB=NOSPUB
 Q