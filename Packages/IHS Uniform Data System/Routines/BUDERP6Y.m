BUDERP6Y ;IHS/CMI/LAB - UDS REPORT T6B;
 ;;12.0;IHS/RPMS UNIFORM DATA SYSTEM;;NOV 22, 2017;Build 75
 ;
 ;
 ;
HEPB(P,BDATE,EDATE) ;EP
 ;check for a contraindication from DOB to 2nd birthday
 NEW G,X,N,BUDZ,T,%,E,Y,Z,BUDG,BUDD,BUDX,BUDHEPB,BUDVS,TIEN,CTR,VDATE,VIEN
 S G=""
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(G)  D
 .;Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after 2ND birthday
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .Q:'$$ANAREACT^BUDERP6C(X)  ;quit if anaphylactic is not a reaction/sign/symptom
 .I N["BAKER'S YEAST"!(N["BAKERS YEAST")!(N["YEAST") S G="1^HEP B: CONTRA "_$$DATE^BUDEUTL1($P($P($G(^GMR(120.8,X,0)),U,4),"."))_"  Allergy Tracking: "_N
 I G]"" Q G
 S BUDZ=0,X="",T=$O(^BUDETSSC("B","T6B IMM HEP B CODES",0))
 F  S BUDZ=$O(^BUDETSSC(T,15,"B",BUDZ)) Q:BUDZ=""!(X]"")  S X=$$ANCONT^BUDERP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^HEP B: CONTRA IMM package "_$$DATE^BUDEUTL1($P(X,U))_" "_$P(X,U,2)
 ;V11.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDETSSC("B","T6B IMM CONTRA HEP B",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Z,T)) S G="1^HEP B: CONTRA DX "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDETSSC("AS",S,T)) S G="1^HEP B: CONTRA DX "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM CONTRA HEP B",EDATE,0) I X Q "1^HEP B: CONTRA DX "_$P(X,U,2)_" on Problem List"
 ;999.4 THING
 S X=$$CONTRA^BUDERP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDETSSC("B","T6B IMM HEP B CODES",0)),"HEP B")
 I X]"" Q X
 ;now check for evidence of disease
HEPBEVID ;
 ;V11.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDETSSC("B","T6B IMM EVIDENCE HEP B",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Z,T)) S G="1^HEP B: Evidence "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U)) Q
 .S S=$$VAL^XBDIQ1(9000010.07,Y,.01) I S]"",$D(^BUDETSSC("AS",S,T)) S G="1^HEP B: Evidence "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM EVIDENCE HEP B",EDATE,0) I X Q "1^HEP B: Evidence: "_$P(X,U,2)_" on Problem List"
 K BUDD,BUDG,BUDX
 K BUDHEPB
HEPBIMM ;get all immunizations
 S BUDHEPB=0
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")  ;all visits in 42 days to end
 S TIEN=$O(^BUDETSSC("B","T6B IMM HEP B CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .S X=0 F  S X=$O(^AUPNVIMM("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVIMM(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.11,X,.01)
 ..S Y=+$P($G(^AUTTIMM(Y,0)),U,3)
 ..Q:'Y
 ..I $D(^BUDETSSC(TIEN,15,"B",Y)) S BUDHEPB(VDATE)="CVX "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDHEPB(VDATE)="CPT "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDHEPB(VDATE)="CPT/TRAN "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDETSSC("AP",Y,TIEN)) S BUDHEPB(VDATE)="PROC "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AS",Y,TIEN)) S BUDHEPB(VDATE)="SNOMED "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 S (X,Y)="",C=0 F  S X=$O(BUDHEPB(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDHEPB(X) Q
 .S Y=X
 ;now count them and see if there are 3 of them
 S BUDHEPB=0,X=0 F  S X=$O(BUDHEPB(X)) Q:X'=+X  S BUDHEPB=BUDHEPB+1
 I BUDHEPB>2 S Y="1^HEP B: total #: "_BUDHEPB,X="" F  S X=$O(BUDHEPB(X)) Q:X'=+X  S Y=Y_"  "_BUDHEPB(X)
 I BUDHEPB>2 Q Y
 Q "0^"_(3-BUDHEPB)_" HEP B"
HIB(P,BDATE,EDATE) ;EP
 ;check for a contraindication from DOB to 2nd birthday
 NEW BUDZ,X,T,BUDG,G,S,Z,BUDD,BUDX,BUDHIB,BUDVS,TIEN,CTR,VIEN,VDATE,Y
 ;now check for evidence of disease
 S BUDZ=0,X="",T=$O(^BUDETSSC("B","T6B IMM HIB CODES",0))
 F  S BUDZ=$O(^BUDETSSC(T,15,"B",BUDZ)) Q:BUDZ=""!(X]"")  S X=$$ANCONT^BUDERP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^HIB: CONTRA IMM package "_$$DATE^BUDEUTL1($P(X,U))_" "_$P(X,U,2)
 ;V11.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDETSSC("B","T6B IMM CONTRA HIB",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Z,T)) S G="1^HIB: CONTRA DX "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDETSSC("AS",S,T)) S G="1^HIB: CONTRA DX "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM CONTRA HIB",EDATE,0) I X Q "1^HIB: CONTRA DX "_$P(X,U,2)_" on Problem List"
 ;999.4 THING
 S X=$$CONTRA^BUDERP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDETSSC("B","T6B IMM HIB CODES",0)),"HIB")
 I X]"" Q X
 ;now check for evidence of disease
HIBEVID ;
 ;V11.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDETSSC("B","T6B IMM EVIDENCE HIB",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Z,T)) S G="1^HIB: Evidence "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U)) Q
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDETSSC("AS",S,T)) S BUDG="1^HIB: Evidence "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U)) Q
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM EVIDENCE HIB",EDATE,0) I X Q "1^HIB: Evidence "_$P(X,U,2)_" on Problem List"
 K BUDD,BUDG,BUDX
 K BUDHIB
HIBIMM ;get all immunizations
 S BUDHIB=0
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")  ;all visits in 42 days to end
 S TIEN=$O(^BUDETSSC("B","T6B IMM HIB CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .S X=0 F  S X=$O(^AUPNVIMM("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVIMM(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.11,X,.01)
 ..S Y=+$P($G(^AUTTIMM(Y,0)),U,3)
 ..Q:'Y
 ..I $D(^BUDETSSC(TIEN,15,"B",Y)) S BUDHIB(VDATE)="CVX "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDHIB(VDATE)="CPT "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDHIB(VDATE)="CPT/TRAN "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDETSSC("AP",Y,TIEN)) S BUDHIB(VDATE)="PROC "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AS",Y,TIEN)) S BUDHIB(VDATE)="SNOMED "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 S (X,Y)="",C=0 F  S X=$O(BUDHIB(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDHIB(X) Q
 .S Y=X
 ;now count them and see if there are 3 of them
 S BUDHIB=0,X=0 F  S X=$O(BUDHIB(X)) Q:X'=+X  S BUDHIB=BUDHIB+1
 I BUDHIB>2 S Y="1^HIB: total #: "_BUDHIB,X="" F  S X=$O(BUDHIB(X)) Q:X'=+X  S Y=Y_"  "_BUDHIB(X)
 I BUDHIB>2 Q Y
 Q "0^"_(3-BUDHIB)_" HIB (3 recommended)"
VAR(P,BDATE,EDATE) ;EP
 ;first check for contraindications
VARC ;
 NEW BUDG,%,E,T,X,G,Y,Z,BUDZ,BUDVAR,BUDVS,TIEN,CTR,VIEN,VDATE
 ;V10.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDETSSC("B","T6B IMM CONTRA VARICELLA/MMR",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Z,T)) S G="1^Varicella: CONTRA DX "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDETSSC("AS",S,T)) S G="1^Varicella: CONTRA DX "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM CONTRA VARICELLA/MMR",EDATE,0) I X Q "1^Varicella: CONTRA DX "_$P(X,U,2)_" on Problem List"
 S G=""
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(G)  D
 .;Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after 2ND birthday
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .Q:'$$ANAREACT^BUDERP6C(X)  ;quit if anaphylactic is not a reaction/sign/symptom
 .I N["NEOMYCIN" S G="1^Varicella: CONTRA "_$$DATE^BUDEUTL1($P($P($G(^GMR(120.8,X,0)),U,4),"."))_"  Allergy Tracking: "_N
 I G]"" Q G
 F BUDZ=21,94 S X=$$MMRCONT^BUDERP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^Varicella: CONTRA "_$P(X,U,2)_" on "_$$DATE^BUDEUTL1($P(X,U,1))_" Immunization Package"
 S X=$$CONTRA^BUDERP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDETSSC("B","T6B IMM VARICELLA CODES",0)),"VAR")
 I X]"" Q X
VAREVID ;
 ;any evidence of VAR?
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDETSSC("B","T6B IMM EVIDENCE VARICELLA",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Y=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Y,T)) S G="1^Varicella: Evidence "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U)) Q
 .S S=$$VAL^XBDIQ1(9000010.07,Y,.01) I S]"",$D(^BUDETSSC("AS",S,T)) S G="1^Varicella: Evidence "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM EVIDENCE VARICELLA",EDATE,0) I X Q "1^Varicella: Evidence "_$P(X,U,2)_" on Problem List"
VARI ;
 S BUDVAR=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")  ;all visits in 42 days to end
 S TIEN=$O(^BUDETSSC("B","T6B IMM VARICELLA CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .S X=0 F  S X=$O(^AUPNVIMM("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVIMM(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.11,X,.01)
 ..S Y=+$P($G(^AUTTIMM(Y,0)),U,3)
 ..Q:'Y
 ..I $D(^BUDETSSC(TIEN,15,"B",Y)) S BUDVAR="CVX "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDVAR="CPT "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDVAR="CPT/TRAN "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDETSSC("AP",Y,TIEN)) S BUDVAR="PROC "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AS",Y,TIEN)) S BUDVAR="SNOMED: "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 I BUDVAR]"" Q "1^VAR "_BUDVAR
 ;
 Q "0^1 VAR"
 ;
PNEU(P,BDATE,EDATE) ;EP
 NEW BUDD,BUDG,BUDX,BUDZ,X,Y,G,Z,BUDPNEU,BUCDV,TIEN,CTR,VIEN,VDATE,C,BUDVS
 F BUDZ=33,100,109,133,152 S X=$$ANCONT^BUDERP6C(P,BUDZ,EDATE)
 I X]"" Q "1^PNEUMO: CONTRA IMM package: "_$$DATE^BUDEUTL1($P(X,U))_" "_$P(X,U,2)
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDETSSC("B","T6B IMM CONTRA PNEUMO",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Z,T)) S G="1^PNEUMO: CONTRA DX "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDETSSC("AS",S,T)) S G="1^PNEUMO: CONTRA DX "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM CONTRA PNEUMO",EDATE,0) I X Q "1^PNEUMO: CONTRA DX "_$P(X,U,2)_" on Problem List"
 S X=$$CONTRA^BUDERP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDETSSC("B","T6B IMM PNEUMO CODES",0)),"PNEUMO")
 I X]"" Q X
PNEUIMM ;get all immunizations
 S BUDPNEU=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")  ;all visits in 42 days to end
 S TIEN=$O(^BUDETSSC("B","T6B IMM PNEUMO CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .S X=0 F  S X=$O(^AUPNVIMM("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVIMM(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.11,X,.01)
 ..S Y=+$P($G(^AUTTIMM(Y,0)),U,3)
 ..Q:'Y
 ..I $D(^BUDETSSC(TIEN,15,"B",Y)) S BUDPNEU(VDATE)="CVX "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDPNEU(VDATE)="CPT "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDPNEU(VDATE)="CPT/TRAN "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDETSSC("AP",Y,TIEN)) S BUDPNEU(VDATE)="PROC "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AS",Y,TIEN)) S BUDPNEU(VDATE)="SNOMED "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 S (X,Y)="",C=0 F  S X=$O(BUDPNEU(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDPNEU(X) Q
 .S Y=X
 ;now count them and see if there are 4 of them
 S BUDPNEU=0,X=0 F  S X=$O(BUDPNEU(X)) Q:X'=+X  S BUDPNEU=BUDPNEU+1
 I BUDPNEU>3 S Y="1^PNEUMO: total #: "_BUDPNEU,X="" F  S X=$O(BUDPNEU(X)) Q:X'=+X  S Y=Y_"  "_BUDPNEU(X)
 I BUDPNEU>3 Q Y
 S X=4-BUDPNEU
 Q "0^"_X_" PNEUMO"
