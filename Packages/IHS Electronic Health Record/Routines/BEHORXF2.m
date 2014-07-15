BEHORXF2 ;MSC/IND/PLS -  XML Support for Pharmacy Rx Gen service ;24-Jul-2013 15:13;PLS
 ;;1.1;BEH COMPONENTS;**009009,009010**;Sep 18, 2007
 ;=================================================================
 ; RPC: BEHORXF2 DRUGTXT
 ; Returns data from 51.7 associated with drug
 ;
DRUGTXT(DATA,DRG) ;EP-
 S DATA=$NA(^TMP("PSSDIN",$J))
 D EN^PSSDIN(,DRG)
 Q
GETALG(DFN) ;EP Get allergy data
 N ALG,GMRAL,BEHI,BEHY
 S ALG=""
 D EN1^GMRADPT
 I $D(GMRAL)'>9 D
 . I $D(GMRAL),GMRAL=0 S ALG="Patient has answered NKA"
 . E  S ALG="No Allergy Assessment"
 S BEHI=0,BEHY=""
 F  S BEHI=$O(GMRAL(BEHI)) Q:+BEHI'>0  D
 . N X,Y,BEHX
 . S BEHX=$P($G(GMRAL(BEHI)),U,2)
 . S BEHY=$$APPEND(BEHX,BEHY,250)
 . I BEHY=BEHX
 . S ALG=BEHY
 Q ALG
APPEND(X,Y,LEN) ; Append ", "_X to Y, unless Y would excede LEN
 Q $S('$L(Y):X,($L(Y_$C(44)_" "_X)'>LEN):Y_$C(44)_" "_X,1:X)
WEIGHT(DFN) ;Get latest weight
 N MSR,VMSR,OUT
 S (WT,OUT)=""
 S VMSR=$$VMSR^BEHOVM
 S MSR="WT"
 D QRYGMR:'VMSR,QRYMSR:VMSR
 S WT=$P(OUT,U,1)
 Q WT
HT(DFN) ;Get latest height
 N MSR,VMSR,OUT
 S (HT,OUT)=""
 S VMSR=$$VMSR^BEHOVM
 S MSR="HT"
 D QRYGMR:'VMSR,QRYMSR:VMSR
 S HT=$P(OUT,U,1)
 Q HT
BMI(DFN) ; Get latest BMI
 N BMI,HT,WT,WTDT,X,HTDT,OUT
 S (BMI,OUT)=""
 S VMSR=$$VMSR^BEHOVM
 S MSR="WT"
 D QRYGMR:'VMSR,QRYMSR:VMSR
 S WT=$P(OUT,U,2),WTDT=$P(OUT,U,3)
 I '+WT  G END
 S MSR="HT"
 D QRYGMR:'VMSR,QRYMSR:VMSR
 S HT=$P(OUT,U,2),HTDT=$P(OUT,U,3)
 I '+HT G END
 S BMI=""
 S WT=WT*.45359,HT=HT*.0254,HT=HT*HT,BMI=+$J(WT/HT,0,2)
 S OUT="BMI: "_BMI_" on  "_$$FMTDATE^BGOUTL(WTDT)
END Q OUT
QRYMSR ; Get data from V file
 N VDT,IEN,FOUND,DATE,VALUE,MSR2
 S OUT="",VDT=0
 S FOUND=0,MSR2=0
 S MSR2=$O(^AUTTMSR("B",MSR,MSR2))
 Q:'+MSR2
 F  S VDT=$O(^AUPNVMSR("AA",DFN,MSR2,VDT))  Q:('VDT)!(+FOUND)  D
 .S IEN=0
 .F  S IEN=$O(^AUPNVMSR("AA",DFN,MSR2,VDT,IEN)) Q:'IEN!(+FOUND)  D
 ..K BEH D ENP^XBDIQ1(9000010.01,IEN,".03;.04;2;1201","BEH(","I")
 ..Q:BEH(2,"I")=1
 ..S FOUND=1
 ..S DATE=$S($G(BEH(1201,"I"))]"":+BEH(1201,"I"),1:(9999999-VDT))
 ..I MSR="HT" S Y=$G(BEH(.04)),Y=$J(Y,5,2)_" in ["_$J((Y*2.54),5,2)_" cm]",VALUE=Y
 ..I MSR="WT" S Y=$G(BEH(.04)),Y=$J(Y,5,2)_" lb ["_$J((Y*.454),5,2)_" kg]",VALUE=Y
 ..S OUT=MSR_": "_VALUE_" on "_$$FMTDATE^BGOUTL(DATE)_U_$G(BEH(.04))_U_DATE
 Q
QRYGMR ;Get data from GMR file
 N VDT,IEN,FOUND,DATE,VALUE,MSR2
 S OUT="",VDT=0
 S FOUND=0,MSR2=0
 S MSR2=$O(^GMRD(120.51,"C",MSR,MSR2))
 Q:'+MSR2
 F  S IEN=$O(^GMR(120.5,"AA",DFN,MSR2,VDT)) Q:('VDT)!(+FOUND)  D
 .S IEN=0
 .F  S IEN=$O(^GMR(120.5,"AA",DFN,MSR2,VDT,IEN)) Q:'IEN!(+FOUND)  D
 ..K BEH D ENP^XBDIQ1(120.5,IEN,".01;1.2;2","BEH(","I")
 ..Q:BEH(2,"I")=1
 ..S FOUND=1
 ..S DATE=$G(BEH(.01,"I"))
 ..I MSR="HT" S Y=$G(BEH(1.2)),Y=$J(Y,5,2)_" in ["_$J((Y*2.54),5,2)_" cm]",VALUE=Y
 ..I MSR="WT" S Y=$G(BEH(1.2)),Y=$J(Y,5,2)_" lb ["_$J((Y*.454),5,2)_" kg]",VALUE=Y
 ..S OUT=MSR_": "_VALUE_" on "_$$FMTDATE^BGOUTL(DATE)_U_$G(BEH(1.2))_U_DATE
 Q
 ;Get RxNorm for order
RXNORM(POF) ;
 N RXNORM,DIEN,NDC
 S RXNORM=""
 S DIEN=$$GET1^DIQ(52.41,POF,11,"I")
 I +DIEN D
 .S NDC=$TR($P($G(^PSDRUG(DIEN,2)),U,4),"-","")
 .Q:'$L(NDC)
 .S RXNORM=+$O(^C0CRXN(176.002,"NDC",NDC,0))
 .S RXNORM=$$GET1^DIQ(176.002,RXNORM,.01)
 Q RXNORM
 ;Get patient data
BLDPT(DFN,RX) ;
 N SSN
 S RX=$G(RX)
 I RX'="" D ADD($$TAG^BEHORXF1("PatientHRN",2,$$HRN^AUPNPAT3(DFN,$$GET1^DIQ(59,$$GET1^DIQ(52,RX,20,"I"),100,"I"))))
 I RX="" D ADD($$TAG^BEHORXF1("PatientHRN",2,$$HRN^AUPNPAT3(DFN,DUZ(2))))
 D ADD($$TAG^BEHORXF1("PatientDOB",2,$$FMTE^XLFDT($$GET1^DIQ(2,DFN,.03,"I"),9)))
 D ADD($$TAG^BEHORXF1("PatientGender",2,$$GET1^DIQ(2,DFN,.02)))
 D ADD($$TAG^BEHORXF1("PatientPhone",2,$$GET1^DIQ(2,DFN,.131)))
 S SSN=$$GET1^DIQ(2,DFN,.09)
 D ADD($$TAG^BEHORXF1("PatientLastFour",2,$$FMTSSN^APSPFUNC(SSN)))
 Q
 ; Build nodes for patient address
BLDPTADD(DFN) ;
 D ADD($$TAG^BEHORXF1("PatientAddress1",2,$$GET1^DIQ(2,DFN,.111)))
 D ADD($$TAG^BEHORXF1("PatientAddress2",2,$$GET1^DIQ(2,DFN,.112)))
 D ADD($$TAG^BEHORXF1("PatientAddress3",2,$$GET1^DIQ(2,DFN,.113)))
 D ADD($$TAG^BEHORXF1("PatientCity",2,$$GET1^DIQ(2,DFN,.114)))
 D ADD($$TAG^BEHORXF1("PatientState",2,$$GET1^DIQ(2,DFN,.115)))
 D ADD($$TAG^BEHORXF1("PatientZipCode",2,$$GET1^DIQ(2,DFN,.116)))
 Q
PROV(PRVIEN,ORD) ;
 N X
 D ADD($$TAG^BEHORXF1("ProviderDEA",2,$$DEAVAUS^APSPFUNC(PRVIEN)))
 ;D ADD($$TAG^BEHORXF1("ProvIEN",2,PRVIEN))
 D ADD($$TAG^BEHORXF1("ProviderPhone",2,$$PRVINFO(PRVIEN,.132)))
 D ADD($$TAG^BEHORXF1("ProviderFax",2,$$PRVINFO(PRVIEN,.136)))
 ;D ADD($$TAG^BEHORXF1("ProviderESig",2,$S($L($$PRVINFO(PRVIEN,20.4)):"Electronic Signature on File",1:"")))
 S X=$$PRVINFO(PRVIEN,20.2)
 D ADD($$TAG^BEHORXF1("ProviderESig",2,$S($L(X):"/ES/ "_X,1:"")))
 D ADD($$TAG^BEHORXF1("ProviderESigTitle",2,$$PRVINFO(PRVIEN,20.3)))
 D ADD($$TAG^BEHORXF1("ProviderNPI",2,$$PRVINFO(PRVIEN,41.99)))
 Q
 ;Get patient data
DATA(DFN) ;
 D ADD($$TAG^BEHORXF1("Allergies",2,$$GETALG^BEHORXF2(DFN)))
 D ADD($$TAG^BEHORXF1("Weight",2,$$WEIGHT^BEHORXF2(DFN)))
 D ADD($$TAG^BEHORXF1("Height",2,$$HT^BEHORXF2(DFN)))
 D ADD($$TAG^BEHORXF1("BMI",2,$$BMI^BEHORXF2(DFN)))
 Q
 ; Add data to array
ADD(VAL) ;EP-
 S CNT=CNT+1
 S @DATA@(CNT)=VAL
 Q
 ; Returns Provider information
PRVINFO(USR,FLD,FLG) ;EP-
 S FLG=$G(FLG,"E")
 Q $$GET1^DIQ(200,USR,FLD,FLG)