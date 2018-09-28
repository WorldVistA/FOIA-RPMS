BUDERP6H ;IHS/CMI/LAB - UDS REPORT PROCESS;
 ;;12.0;IHS/RPMS UNIFORM DATA SYSTEM;;NOV 22, 2017;Build 75
 ;
 ;
HEPA(P,BDATE,EDATE) ;EP
 ;first check for contraindications
HEPAC ;
 NEW T,X,BUDZ,BUDG,%,E,G,Y,Z,BUDHEPA,BUDVS,TIEN,CTR,VIEN,VDATE
 S T=$O(^BUDETSSC("B","T6B IMM CONTRA HEP A",0)),X=""
 S BUDZ=0 F  S BUDZ=$O(^BUDETSSC(T,15,"B",BUDZ)) Q:BUDZ=""!(X]"")  S X=$$ANCONT^BUDERP6C(P,BUDZ,EDATE)
 I X]"" Q "1^HEP A: CONTRA IMM package "_$$DATE^BUDEUTL1($P(X,U))_" "_$P(X,U,2)
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDETSSC("B","T6B IMM CONTRA HEP A",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Z,T)) S G="1^HEP A: CONTRA DX "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDETSSC("AS",S,T)) S G="1^HEP A: CONTRA DX "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM CONTRA HEP A",EDATE,0) I X Q "1^HEP A CONTRA DX: "_$P(X,U,2)_" on Problem List"
 S X=$$CONTRA^BUDERP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDETSSC("B","T6B IMM HEP A CODES",0)),"HEP A")
 I X]"" Q X
HEPAEVID ;
 ;any evidence of HEPA?
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDETSSC("B","T6B IMM EVIDENCE HEP A",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Z,T)) S G="1^HEP A: Evidence "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U)) Q
 .S S=$$VAL^XBDIQ1(9000010.07,Y,.01) I S]"",$D(^BUDETSSC("AS",S,T)) S G="1^HEP A: Evidence "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM EVIDENCE HEP A",EDATE,0) I X Q "1^HEP A: Evidence: "_$P(X,U,2)_" on Problem List"
HEPAI ;
 S BUDHEPA=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")  ;all visits in 42 days to end
 S TIEN=$O(^BUDETSSC("B","T6B IMM HEP A CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .S X=0 F  S X=$O(^AUPNVIMM("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVIMM(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.11,X,.01)
 ..S Y=+$P($G(^AUTTIMM(Y,0)),U,3)
 ..Q:'Y
 ..I $D(^BUDETSSC(TIEN,15,"B",Y)) S BUDHEPA="CVX "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDHEPA="CPT "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDHEPA="CPT/TRAN "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDETSSC("AP",Y,TIEN)) S BUDHEPA="PROC "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AS",Y,TIEN)) S BUDHEPA="SNOMED "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 I BUDHEPA]"" Q "1^HEP A: "_BUDHEPA
 ;
 Q "0^1 HEP A"
 ;
FLU(P,BDATE,EDATE) ;EP
 NEW BUDD,BUDG,BUDX,T,X,Y,Z,BUDZ,G,S,BUDFLU,BUDVS,TIEN,CTR,VIEN,VDATE,C
 S T=$O(^BUDETSSC("B","T6B IMM INFLUENZA CODES",0)),X=""
 S BUDZ=0 F  S BUDZ=$O(^BUDETSSC(T,15,"B",BUDZ)) Q:BUDZ=""!(X]"")  S X=$$ROTACONT^BUDERP6W(P,BUDZ,EDATE)
 I X]"" Q "1^Influenza: CONTRA IMM package "_$$DATE^BUDEUTL1($P(X,U))_" "_$P(X,U,2)
 S BUDZ=0 F  S BUDZ=$O(^BUDETSSC(T,15,"B",BUDZ)) Q:BUDZ=""!(X]"")  S X=$$EGGCONT^BUDERP6C(P,BUDZ,EDATE)
 I X]"" Q "1^Influenza: CONTRA IMM package "_$$DATE^BUDEUTL1($P(X,U))_" "_$P(X,U,2)
 S T=$O(^BUDETSSC("B","T6B IMM CONTRA INFLUENZA",0))
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Z,T)) S G="1^Influenza: CONTRA DX "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDETSSC("AS",S,T)) S G="1^Influenza: CONTRA DX "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM CONTRA INFLUENZA,EDATE,0") I X Q "1^Influenza: CONTRA DX "_$P(X,U,2)_" on Problem List"
 S X=$$CONTRA^BUDERP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDETSSC("B","T6B IMM INFLUENZA CODES",0)),"INFLUENZA")
 I X]"" Q X
 K BUDFLU
FLUIMM ;get all immunizations
 S BUDFLU=0
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")  ;all visits in 42 days to end
 S TIEN=$O(^BUDETSSC("B","T6B IMM INFLUENZA CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .S X=0 F  S X=$O(^AUPNVIMM("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVIMM(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.11,X,.01)
 ..S Y=+$P($G(^AUTTIMM(Y,0)),U,3)
 ..Q:'Y
 ..I $D(^BUDETSSC(TIEN,15,"B",Y)) S BUDFLU(VDATE)="CVX "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDFLU(VDATE)="CPT "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN)) S BUDFLU(VDATE)="CPT/TRAN "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDETSSC("AP",Y,TIEN)) S BUDFLU(VDATE)="PROC "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AS",Y,TIEN)) S BUDFLU(VDATE)="SNOMED "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 S (X,Y)="",C=0 F  S X=$O(BUDFLU(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDFLU(X) Q
 .S Y=X
 ;now count them and see if there are 4 of them
 S BUDFLU=0,X=0 F  S X=$O(BUDFLU(X)) Q:X'=+X  S BUDFLU=BUDFLU+1
 I BUDFLU>1 S Y="1^Influenza: total #: "_BUDFLU,X="" F  S X=$O(BUDFLU(X)) Q:X'=+X  S Y=Y_"  "_BUDFLU(X)
 I BUDFLU>1 Q Y
 S X=2-BUDFLU
 Q "0^"_X_" Influenza"
 ;
ROTA(P,BDATE,EDATE) ;EP
 NEW BUDD,BUDG,BUDX,T,BUDZ,X,Y,Z,G,%,E,BUDROT2,BUDROT3,BUDVS,TIEN2,TIEN3,CTR,VIEN,VDATE
 K BUDD,BUDG,BUDX
 S T=$O(^BUDETSSC("B","T6B IMM ROTAVIRUS 2 DOSE CODES",0)),X=""
 S BUDZ=0 F  S BUDZ=$O(^BUDETSSC(T,15,"B",BUDZ)) Q:BUDZ=""!(X]"")  S X=$$ANCONT^BUDERP6C(P,BUDZ,EDATE)
 I X]"" Q "1^Rotavirus: CONTRA IMM package "_$$DATE^BUDEUTL1($P(X,U))_" "_$P(X,U,2)
 S T=$O(^BUDETSSC("B","T6B IMM ROTAVIRUS 3 DOSE CODES",0))
 S BUDZ=0 F  S BUDZ=$O(^BUDETSSC(T,15,"B",BUDZ)) Q:BUDZ=""!(X]"")  S X=$$ANCONT^BUDERP6C(P,BUDZ,EDATE)
 I X]"" Q "1^Rotavirus: CONTRA IMM package "_$$DATE^BUDEUTL1($P(X,U))_" "_$P(X,U,2)
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDETSSC("B","T6B IMM CONTRA ROTAVIRUS",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Z,T)) S G="1^Rotavirus: CONTRA DX "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDETSSC("AS",S,T)) S G="1^Rotavirus: CONTRA DX "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM CONTRA ROTAVIRUS",EDATE,0) I X Q "1^Rotavirus: CONTRA DX "_$P(X,U,2)_" on Problem List"
 S X=$$CONTRA^BUDERP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDETSSC("B","T6B IMM ROTAVIRUS 2 DOSE CODES",0)),"ROTAVIRUS 2")
 I X]"" Q X
 S X=$$CONTRA^BUDERP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDETSSC("B","T6B IMM ROTAVIRUS 3 DOSE CODES",0)),"ROTAVIRUS 3")
 I X]"" Q X
ROTAEVID ;
 ;any evidence of ROTA?
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDETSSC("B","T6B IMM EVIDENCE ROTAVIRUS",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDETSSC("AD",Z,T)) S G="1^Rotavirus: Evidence "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U)) Q
 .S S=$$VAL^XBDIQ1(9000010.07,Y,.01) I S]"",$D(^BUDETSSC("AS",S,T)) S G="1^Rotavirus: Evidence "_S_" on "_$$DATE^BUDEUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDEDU(P,"T6B IMM EVIDENCE ROTAVIRUS",EDATE,0) I X Q "1^Rotavirus: Evidence "_$P(X,U,2)_" on Problem List"
ROTAIMM ;
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")  ;all visits in 42 days to end
 S TIEN2=$O(^BUDETSSC("B","T6B IMM ROTAVIRUS 2 DOSE CODES",0))
 S TIEN3=$O(^BUDETSSC("B","T6B IMM ROTAVIRUS 3 DOSE CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .S X=0 F  S X=$O(^AUPNVIMM("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVIMM(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.11,X,.01)
 ..S Y=+$P($G(^AUTTIMM(Y,0)),U,3)
 ..Q:'Y
 ..I $D(^BUDETSSC(TIEN2,15,"B",Y)) S BUDROT2(VDATE)="CVX "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 ..I $D(^BUDETSSC(TIEN3,15,"B",Y)) S BUDROT3(VDATE)="CVX "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN2)) S BUDROT2(VDATE)="CPT "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 ..I $D(^BUDETSSC("AC",Y,TIEN3)) S BUDROT3(VDATE)="CPT "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AC",Y,TIEN2)) S BUDROT2(VDATE)="CPT/TRAN "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 ..I $D(^BUDETSSC("AC",Y,TIEN3)) S BUDROT3(VDATE)="CPT/TRAN "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDETSSC("AP",Y,TIEN2)) S BUDROT2(VDATE)="PROC "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 ..I $D(^BUDETSSC("AP",Y,TIEN3)) S BUDROT3(VDATE)="PROC "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 .;V SNOM
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDETSSC("AS",Y,TIEN2)) S BUDROT2(VDATE)="SNOMED "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 ..I $D(^BUDETSSC("AS",Y,TIEN3)) S BUDROT3(VDATE)="SNOMED "_Y_" on "_$$DATE^BUDEUTL1(VDATE) Q
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 S (X,Y)="",C=0 F  S X=$O(BUDROT2(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDROT2(X) Q
 .S Y=X
 S (X,Y)="",C=0 F  S X=$O(BUDROT3(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDROT3(X) Q
 .S Y=X
 ;now count them and see if there are 3 of them
 S BUDROT2=0,X=0 F  S X=$O(BUDROT2(X)) Q:X'=+X  S BUDROT2=BUDROT2+1
 I BUDROT2>1 S Y="1^Rotavirus 2 Dose: total #: "_BUDROT2,X="" F  S X=$O(BUDROT2(X)) Q:X'=+X  S Y=Y_"  "_BUDROT2(X)
 I BUDROT2>1 Q Y
 S BUDROT3=0,X=0 F  S X=$O(BUDROT3(X)) Q:X'=+X  S BUDROT3=BUDROT3+1
 I BUDROT3>2 S Y="1^Rotavirus 3 Dose: total #: "_BUDROT3,X="" F  S X=$O(BUDROT3(X)) Q:X'=+X  S Y=Y_"  "_BUDROT3(X)
 I BUDROT3>2 Q Y
 ;now see if has 3 total
 K BUDROTA
 S X=0 F  S X=$O(BUDROT2(X)) Q:X'=+X  S BUDROTA(X)=BUDROT2(X)
 S X=0 F  S X=$O(BUDROT3(X)) Q:X'=+X  I '$D(BUDROTA(X)) S BUDROTA(X)=BUDROT3(X)
 ;see if 11 days apart
 S (X,Y)="",C=0 F  S X=$O(BUDROTA(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDROTA(X) Q
 .S Y=X
 S BUDROTA=0,X=0 F  S X=$O(BUDROTA(X)) Q:X'=+X  S BUDROTA=BUDROTA+1
 I BUDROTA>2 S Y="1^Rotavirus 3 Dose: total #: "_BUDROTA,X="" F  S X=$O(BUDROTA(X)) Q:X'=+X  S Y=Y_"  "_BUDROTA(X)
 I BUDROTA>2 Q Y
 Q "0^"_(2-BUDROT2)_" 2 Dose Rotavirus or "_(3-BUDROT3)_" 3 Dose Rotavirus"
 ;