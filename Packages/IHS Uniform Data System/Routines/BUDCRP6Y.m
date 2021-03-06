BUDCRP6Y ; IHS/CMI/LAB - UDS REPORT PROCESSOR 01 Dec 2015 4:03 PM ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
 ;
 ;
HEP(P,BDATE,EDATE) ;EP
 ;check for a contraindication from DOB to 2nd birthday
 NEW X,G,N,BUDG,BUDX,BUDC,BUDOPV,BUDAPOV,C,BD,ED,V,Y,E
HEPCONT ;check allergy tracking
 S G=""
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(G)  D
 .;Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after 2ND birthday
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .Q:'$$ANAREACT^BUDCRP6C(X)  ;quit if anaphylactic is not a reaction/sign/symptom
 .I N["BAKER'S YEAST"!(N["BAKERS YEAST")!(N["YEAST") S G="1^HEP B Contraindiction: "_$$DATE^BUDCUTL1($P($P($G(^GMR(120.8,X,0)),U,4),"."))_"  Allergy Tracking: "_N
 I G]"" Q G
 ;now check immunization package
 F BUDZ=8,42,43,44,45,51,102,104,110,132,146 S X=$$ANCONT^BUDCRP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^HEP B Contraindication IM package: "_$$DATE^BUDCUTL1($P(X,U))_" "_$P(X,U,2)
 ;now check for evidence of disease
HEPEVID ;
 K BUDG S %=P_"^LAST DX [BGP HEP EVIDENCE;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "1^HEP B Evidence: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDCUTL1($P(BUDG(1),U))
 S X=$$PLTAX^BUDCDU(P,"BGP HEP EVIDENCE") I X Q "1^HEP B Evidence: Problem List "_$P(X,U,2)
 ;now get imms and see if there are 3
 K BUDC,BUDG,BUDX
 K BUDOPV,BUDAPOV
HEPIMM ;get all immunizations
 S C="8^42^43^44^45^51^102^104^110^132^146"
 K BUDX D GETIMMS^BUDCRP6C(P,BDATE,EDATE,C,.BUDX)
 ;now get cpt codes
 S X=0 F  S X=$O(BUDX(X)) Q:X'=+X  S BUDOPV(X)=BUDX(X),BUDAPOV(X)=BUDX(X)
 ;now get cpts
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) D
 ....I Y=90723!(Y=90731)!(Y=90740)!(Y=90744)!(Y=90745)!(Y=90747)!(Y=90748) S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,".")))
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y  S Y=$P($$CPT^ICPTCOD(Y),U,2) D
 ....I Y=90723!(Y=90731)!(Y=90740)!(Y=90744)!(Y=90745)!(Y=90747)!(Y=90748) S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,".")))
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 S (X,Y)="",C=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDOPV(X) Q
 .S Y=X
 ;now count them and see if there are 4 of them
 S BUDOPV=0,X=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S BUDOPV=BUDOPV+1
 I BUDOPV>2 S Y="1^HEP B: total #: "_BUDOPV,X="" F  S X=$O(BUDOPV(X)) Q:X'=+X  S Y=Y_"  "_BUDOPV(X)
 I BUDOPV>2 Q Y
 Q "0^"_(3-BUDOPV)_" HEP B"
 ;
HIB(P,BDATE,EDATE) ;EP
 ;check for a contraindication from DOB to 2nd birthday
 NEW X,G,N,BUDG,BUDX,BUDC,BUDOPV,BUDAPOV,C,BD,ED,V,Y,E
 ;now check for evidence of disease
 F BUDZ=17,22,46,47,48,49,50,51,102,120,132,146 S X=$$ANCONT^BUDCRP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^HIB Contraindication IM package: "_$$DATE^BUDCUTL1($P(X,U))_" "_$P(X,U,2)
HIBEVID ;
 ;V10.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDCTSSC("B","EVIDENCE HIB",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Y=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDCTSSC("AD",Y,T)) S G="1^HIB Evidence "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDCUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDCDU(P,"EVIDENCE HIB") I X Q "1^HIB Evidence: "_$P(X,U,2)_" on Problem List"
 ;now get imms and see if there are 3
 K BUDC,BUDG,BUDX
 K BUDOPV,BUDAPOV
HIBIMM ;get all immunizations
 S C="17^22^46^47^48^49^50^51^102^120^132^146"
 K BUDX D GETIMMS^BUDCRP6C(P,BDATE,EDATE,C,.BUDX)
 ;now get cpt codes
 S X=0 F  S X=$O(BUDX(X)) Q:X'=+X  S BUDOPV(X)=BUDX(X),BUDAPOV(X)=BUDX(X)
 ;now get cpts
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90645!(Y=90646)!(Y=90647)!(Y=90648)!(Y=90698)!(Y=90720)!(Y=90721)!(Y=90737)!(Y=90748) D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,".")))
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y  S Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90645!(Y=90646)!(Y=90647)!(Y=90648)!(Y=90698)!(Y=90720)!(Y=90721)!(Y=90737)!(Y=90748) D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,".")))
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 S (X,Y)="",C=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDOPV(X) Q
 .S Y=X
 ;now count them and see if there are 3 of them
 S BUDOPV=0,X=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S BUDOPV=BUDOPV+1
 I BUDOPV>2 S Y="1^HIB: total #: "_BUDOPV,X="" F  S X=$O(BUDOPV(X)) Q:X'=+X  S Y=Y_"  "_BUDOPV(X)
 I BUDOPV>2 Q Y
 Q "0^"_BUDOPV_" HIB "_"(3 Recommended)"
 ;
VAR(P,BDATE,EDATE) ;EP
 ;first check for contraindications
VARC ;
 NEW BUDG,%,X,BUDZ,BUDC,BUDX,G,N,T,Y,E
 ;V10.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDCTSSC("B","CONTRA VARICELLA/MMR",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Y=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDCTSSC("AD",Y,T)) S G="1^VAR CONTRA DX "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDCUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDCDU(P,"CONTRA VARICELLA/MMR") I X Q "1^VAR CONTRA DX: "_$P(X,U,2)_" on Problem List"
 S G=""
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(G)  D
 .;Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after 2ND birthday
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .Q:'$$ANAREACT^BUDCRP6C(X)  ;quit if anaphylactic is not a reaction/sign/symptom
 .I N["NEOMYCIN" S G="1^VAR Contraindiction: "_$$DATE^BUDCUTL1($P($P($G(^GMR(120.8,X,0)),U,4),"."))_"  Allergy Tracking: "_N
 I G]"" Q G
 F BUDZ=21,94 S X=$$MMRCONT^BUDCRP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^Varicella Contraindication: "_$P(X,U,2)_" on "_$$DATE^BUDCUTL1($P(X,U,1))_" Immunization Package"
VAREVID ;
 ;any evidence of VAR?
 K BUDG S %=P_"^LAST DX [BGP VARICELLA EVIDENCE;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "1^Varicella Evidence: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDCUTL1($P(BUDG(1),U))
 S X=$$PLTAX^BUDCDU(P,"BGP VARICELLA EVIDENCE") I X Q "1^Varicella Evidence: Problem List "_$P(X,U,2)
VARI ;
 K BUDC,BUDG,BUDX
 S BUDVAR=""  ;set to null for all
 ;first gather up all cpt codes that relate in any way to dtap and store in ^TMP
 ;get all immunizations
 S C="21^94"
 K BUDX D GETIMMS^BUDCRP6C(P,BDATE,EDATE,C,.BUDX)  ;before 2nd birthday
 I $D(BUDX) S D=$O(BUDX(0)) Q "1^Varicella "_BUDX(D)  ;HAD 1 VAR
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..Q:'$D(^AUPNVCPT("AD",V))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) I Y="90710"!(Y="90716")!(Y=90396) S BUDVAR="Varicella CPT: "_Y_" on "_$$DATE^BUDCUTL1($P($P(^AUPNVSIT(V,0),U),"."))
 I BUDVAR]"" Q "1^"_BUDVAR
 ;
 Q "0^1 VAR"
 ;
PNEU(P,BDATE,EDATE) ;EP
 NEW X,G,N,BUDG,BUDX,BUDC,BUDOPV,BUDAPOV,C,BD,ED,V,Y,E
 ;now get imms and see if there are 4
 K BUDC,BUDG,BUDX
 F BUDZ=33,100,109,133,152 S X=$$ANCONT^BUDCRP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^Pneumovax Contraindication IM package: "_$$DATE^BUDCUTL1($P(X,U))_" "_$P(X,U,2)
 K BUDOPV,BUDAPOV
PNEUIMM ;get all immunizations
 S C="33^100^109^133^152"
 K BUDX D GETIMMS^BUDCRP6C(P,BDATE,EDATE,C,.BUDX)
 ;now get cpt codes
 S X=0 F  S X=$O(BUDX(X)) Q:X'=+X  S BUDOPV(X)=BUDX(X),BUDAPOV(X)=BUDX(X)
 ;now get cpts
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90669!(Y=90670) D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,".")))
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y  S Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90669!(Y=90670) D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,".")))
 ;now check to see if they are all spaced 10 days apart, if not, kill off the odd ones
 S (X,Y)="",C=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDOPV(X) Q
 .S Y=X
 ;now count them and see if there are 4 of them
 S BUDOPV=0,X=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S BUDOPV=BUDOPV+1
 I BUDOPV>3 S Y="1^Pneumovax: total #: "_BUDOPV,X="" F  S X=$O(BUDOPV(X)) Q:X'=+X  S Y=Y_"  "_BUDOPV(X)
 I BUDOPV>3 Q Y
 NEW X
 S X=4-BUDOPV
 Q "0^"_X_" PNEUMO"
 ;
HEPA(P,BDATE,EDATE) ;EP
 NEW X,G,N,BUDG,BUDX,BUDC,BUDOPV,BUDAPOV,C,BD,ED,V,Y,E
 ;now get imms and see if there are 4
 K BUDC,BUDG,BUDX
 F BUDZ=31,83,84,85 S X=$$ANCONT^BUDCRP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^HEP A Contraindication IM package: "_$$DATE^BUDCUTL1($P(X,U))_" "_$P(X,U,2)
HEPAEVID ;
 ;any evidence of HEPA?
 K BUDG S %=P_"^LAST DX [BGP HEPATITIS A EVIDENCE;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 I $D(BUDG(1)) Q "1^HEP A Evidence: "_$P(BUDG(1),U,2)_" on "_$$DATE^BUDCUTL1($P(BUDG(1),U))
 S X=$$PLTAX^BUDCDU(P,"BGP HEPATITIS A EVIDENCE") I X Q "1^HEP A Evidence: Problem List "_$P(X,U,2)
 K BUDOPV,BUDAPOV
HEPAIMM ;get all immunizations
 S C="31^83^84^85"
 K BUDX D GETIMMS^BUDCRP6C(P,BDATE,EDATE,C,.BUDX)
 ;now get cpt codes
 S X=0 F  S X=$O(BUDX(X)) Q:X'=+X  S BUDOPV(X)=BUDX(X),BUDAPOV(X)=BUDX(X)
 ;now get cpts
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90633!(Y=90634)!(Y=90730) D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,".")))
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y  S Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90633!(Y=90634)!(Y=90730) D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,".")))
 S (X,Y)="",C=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDOPV(X) Q
 .S Y=X
 ;now count them and see if there are 4 of them
 S BUDOPV=0,X=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S BUDOPV=BUDOPV+1
 I BUDOPV>1 S Y="1^HEP A: total #: "_BUDOPV,X="" F  S X=$O(BUDOPV(X)) Q:X'=+X  S Y=Y_"  "_BUDOPV(X)
 I BUDOPV>1 Q Y
 NEW X
 S X=2-BUDOPV
 Q "0^"_X_" HEP A"
 ;
FLU(P,BDATE,EDATE) ;EP
 NEW X,G,N,BUDG,BUDX,BUDC,BUDOPV,BUDAPOV,C,BD,ED,V,Y,E
 ;now get imms and see if there are 4
 K BUDC,BUDG,BUDX
 F BUDZ=15,16,88,111,135,140,141,144 S X=$$ROTACONT^BUDCRP6W(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^Influenza Contraindication IM package: "_$$DATE^BUDCUTL1($P(X,U))_" "_$P(X,U,2)
 F BUDZ=15,16,88,111,135,140,141,144 S X=$$EGGCONT^BUDCRP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^Influenza Contraindication IM package: "_$$DATE^BUDCUTL1($P(X,U))_" "_$P(X,U,2)
 S X=$$LASTDX^BUDCUTL1(P,"BUD ROTA CONTRA DXS",$$DOB^AUPNPAT(P),EDATE)
 I X]"" Q "1^Influenza Contraindication: "_$P(X,U,2)_" on "_$$DATE^BUDCUTL1($P(X,U,3))
 S X=$$PLTAX^BUDCDU(P,"BUD ROTA CONTRA DXS") I X Q "1^Influenza Contraindication: "_$P(X,U,2)_" on Problem List"
 K BUDOPV,BUDAPOV
FLUIMM ;get all immunizations
 S C="15^16^88^111^135^140^141^144"
 K BUDX D GETIMMS^BUDCRP6C(P,BDATE,EDATE,C,.BUDX)
 ;now get cpt codes
 S X=0 F  S X=$O(BUDX(X)) Q:X'=+X  S BUDOPV(X)=BUDX(X),BUDAPOV(X)=BUDX(X)
 ;now get cpts
 S ED=9999999-EDATE,BD=9999999-BDATE,G=0
 F  S ED=$O(^AUPNVSIT("AA",P,ED)) Q:ED=""!($P(ED,".")>BD)  D
 .S V=0 F  S V=$O(^AUPNVSIT("AA",P,ED,V)) Q:V'=+V  D
 ..Q:'$D(^AUPNVSIT(V,0))
 ..S X=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVCPT(X,0),U),Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90654!(Y=90655)!(Y=90657)!(Y=90660)!(Y=90661)!(Y=90662) D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,".")))
 ..S X=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 ...S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y  S Y=$P($$CPT^ICPTCOD(Y),U,2) I Y=90654!(Y=90655)!(Y=90657)!(Y=90660)!(Y=90661)!(Y=90662) D
 ....S BUDOPV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="CPT: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,".")))
 ..S X=0 F  S X=$O(^AUPNVPRC("AD",V,X)) Q:X'=+X  D
 ...S Y=$$VAL^XBDIQ1(9000010.08,X,.01) I Y=99.52 D
 ....S BUDOPV(9999999-$P(ED,"."))="PROCEDURE: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,"."))),BUDAPOV(9999999-$P(ED,"."))="PROCEDURE: "_Y_" on "_$$DATE^BUDCUTL1((9999999-$P(ED,".")))
 S (X,Y)="",C=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BUDOPV(X) Q
 .S Y=X
 ;now count them and see if there are 4 of them
 S BUDOPV=0,X=0 F  S X=$O(BUDOPV(X)) Q:X'=+X  S BUDOPV=BUDOPV+1
 I BUDOPV>1 S Y="1^Influenza: total #: "_BUDOPV,X="" F  S X=$O(BUDOPV(X)) Q:X'=+X  S Y=Y_"  "_BUDOPV(X)
 I BUDOPV>1 Q Y
 NEW X
 S X=2-BUDOPV
 Q "0^"_X_" Influenza"
 ;
