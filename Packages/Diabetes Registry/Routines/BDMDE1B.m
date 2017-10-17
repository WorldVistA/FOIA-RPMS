BDMDE1B ; IHS/CMI/LAB - get dm audit values ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**10**;JUN 14, 2007;Build 12
 ;
TD(P,EDATE) ;EP
 ;
 NEW BDM1
 S BDM1=$$TD^BDMS9B3(P,$$DOB^AUPNPAT(P),EDATE)
 NEW D,X S D=$P(BDM1,"  ",2),X=""
 I D]"" NEW X S X=D D ^%DT S X=$$DATE^BDMS9B1(Y)
 I $E(BDM1)="Y" Q "1  "_$P(BDM1,"  ",1)_"  "_X
 I $E(BDM1)="N" Q "2  "_$P(BDM1,"  ",1)_"  "_X
 I $E(BDM1)="R" Q "3  "_$P(BDM1,"  ",1)_"  "_X
 Q ""
TDAP(P,BDMSED,F) ;EP
 NEW BDMY,X,E,B,%DT,Y,TDD
 S TDD=$$LASTTDAP(P,BDMSED)
 I TDD Q "1  Yes  "_$S($G(F)="A":$$DATE^BDMS9B1(TDD),1:$$DATE^BDMS9B1(TDD))
 S R="",G="" F R=115 Q:R=""!(G)  D
 .S G=$$REFUSAL^BDMDE17(P,9999999.14,$O(^AUTTIMM("C",R,0)),$$FMADD^XLFDT(DT,-365),DT,"R")
 I G Q "3  Refused "_$P(G,U,3)
 ;; BI REFUSALS
 S G="" F Z=115 Q:G  S X=0,Y=$O(^AUTTIMM("C",Z,0)) I Y F  S X=$O(^BIPC("AC",P,Y,X)) Q:X'=+X!(G)  D
 .S R=$P(^BIPC(X,0),U,3)
 .Q:R=""
 .Q:'$D(^BICONT(R,0))
 .Q:$P(^BICONT(R,0),U,1)'["Refusal"
 .S D=$P(^BIPC(X,0),U,4)
 .Q:D=""
 .Q:D<$$FMADD^XLFDT(DT,-365)
 .S G=1_U_D
 I G Q "3  Refused "_$S($G(F)="A":$$DATE^BDMS9B1($P(G,U,2)),1:$$DATE^BDMS9B1($P(G,U,2)))
 Q "2  No  "_$S($G(F)="A":$$DATE^BDMS9B1(TDD),1:$$DATE^BDMS9B1(TDD))
LASTTDAP(BDMPDFN,BDMED) ;PEP - date of last TD
 ; 
 I $G(BDMPDFN)="" Q ""
 S BDMBD=$$DOB^AUPNPAT(BDMPDFN)
 I $G(BDMED)="" S BDMED=DT
 NEW BDMLAST,BDMVAL,BDMX,R,X,Y,V,E,T,G,BDMY,BDMF
 S BDMLAST=""
 S BDMVAL=$$LASTITEM^APCLAPIU(BDMPDFN,"115","IMMUNIZATION",$S($P(BDMLAST,U)]"":$P(BDMLAST,U),1:BDMBD),BDMED,"A")
 S BDMF=$$LASTCPTI^BDMSMU2(BDMPDFN,90715,BDMBD,BDMED)
 I BDMF,$P(BDMF,U,3)>$P(BDMVAL,U,1) Q $P(BDMF,U,3)
 Q $P(BDMVAL,U,1)
PREG(P,BDATE,EDATE,NORXCHR,NORX,CPBD,CPED) ;EP
 I $P(^DPT(P,0),U,2)'="F" Q ""
 NEW B,E,A,CNT,BDMD,BDMG,X,Y,BDMDX,C,D,G,T,%,CTR,VIEN,DXT,PXT,CPTT,BDMV,H
 I '$G(FORM) S FORM=""
 I $G(CPBD)="" S CPBD=BDATE
 I $G(CPED)="" S CPED=EDATE
 S A=""
 I $P($G(^AUPNREP(P,11)),U,1)="Y" D  I A S BDMD=B G MA
 .S B=$P($G(^AUPNREP(P,11)),U,2) Q:B=""
 .Q:B<CPBD
 .Q:B>CPED
 .S A=1
 .Q
 S BDMD=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BDMV")
 I '$D(BDMV) G PROB
 S B=0,CNT=0,BDMD=""  ;if there is one before time frame set this to 1
 S NORXCHR=$G(NORXCHR)
 S NORX=$G(NORX)
 K BDMG
 S DXT="BGP PREGNANCY DIAGNOSES 2"
 S PXT="BGP PREGNANCY ICD PROCEDURES"
 S CPTT="BGP PREGNANCY CPT CODES"
 ;CHECK DX, PROCS, CPTS for 2 separate visits
 S B=0,CTR=0 F  S CTR=$O(BDMV(CTR)) Q:CTR'=+CTR  D
 .;get visit into VIEN
 .S VIEN=$P(BDMV(CTR),U,5)
 .S D=$$VD^APCLV(VIEN)
 .S C=$$CLINIC^APCLV(VIEN,"C")
 .I NORXCHR,C=39 Q
 .I NORX,C=39 Q
 .S C=$$PRIMPROV^APCLV(VIEN,"D")
 .I NORXCHR,C=53 Q  ;no chr as primary provider
 .;now check for dx
 .S Y=0,H="" F  S Y=$O(^AUPNVPOV("AD",VIEN,Y)) Q:Y'=+Y  D
 ..S %=+^AUPNVPOV(Y,0)
 ..I $$ICD^BDMUTL(%,DXT,9) S BDMDX(D)="",CNT=CNT+1,H=1 I D>$$FMADD^XLFDT(EDATE,-365) S B=1
 .Q:H
 .;NOW GO THROUGH CPTS
 .S Y=0,H="" F  S Y=$O(^AUPNVCPT("AD",VIEN,Y)) Q:Y'=+Y  D
 ..S %=+^AUPNVCPT(Y,0)
 ..I $$ICD^BDMUTL(%,CPTT,1) I '$D(BDMDX(D)) S BDMDX(D)="",CNT=CNT+1,H=1 I D>$$FMADD^XLFDT(EDATE,-365) S B=1
 .Q:H
 .;NOW PROCEDURES
 .S Y=0,H="" F  S Y=$O(^AUPNVPRC("AD",VIEN,Y)) Q:Y'=+Y  D
 ..S %=+^AUPNVPRC(Y,0)
 ..I $$ICD^BDMUTL(%,PXT,0) I '$D(BDMDX(D)) S BDMDX(D)="",CNT=CNT+1,H=1 I D>$$FMADD^XLFDT(EDATE,-365) S B=1
 .Q:H
 .Q
 I CNT>1,B D  G MA
 .;SET BDMD TO SECOND VISIT DATE
 .S X=0,C=0 F  S X=$O(BDMDX(X)) Q:X'=+X!(C>1)  S C=C+1 I C=2 S BDMD=X
 ;
PROB ;
 I '$G(B) Q ""  ;no pregnancy visit during time period  ;-Lori fix in 09
 S T=$O(^ATXAX("B","BGP PREGNANCY DIAGNOSES 2",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^BDMUTL(Y,T,9)
 .S G=$P(^AUPNPROB(X,0),U,8)
 .Q
 I G=0,BDMD="" Q 0
 S BDMD=G
MA ;now check for abortion or miscarriage
 K BDMG S Y="BDMG(" S X=P_"^LAST DX [BGP MISCARRIAGE/ABORTION DXS;DURING "_$$FMTE^XLFDT(BDMD)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BDMG(1)) Q 0  ;HAD MIS/AB
 S BDMG=$$LASTPRCT^BDMAPIU(P,BDATE,EDATE,"BGP ABORTION PROCEDURES","A")
 I BDMG Q 0
 S T=$O(^ATXAX("B","BGP MISCARRIAGE/ABORTION DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:$P(^AUPNPROB(X,0),U,8)<BDMD
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^BDMUTL(Y,T,9)
 .S G=1
 .Q
 I G Q 0
 ;now check CPTs for Abortion and Miscarriage
 S T=$O(^ATXAX("B","BGP CPT ABORTION",0))
 S %=$$CPT^BDMDEDU(P,BDMD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT MISCARRIAGE",0))
 S %=$$CPT^BDMDEDU(P,BDMD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT ABORTION",0))
 S %=$$TRAN^BDMDEDU(P,BDMD,EDATE,T,3)
 I %]"" Q 0
 S T=$O(^ATXAX("B","BGP CPT MISCARRIAGE",0))
 S %=$$TRAN^BDMDEDU(P,BDMD,EDATE,T,3)
 I %]"" Q 0
 I FORM="" Q 1
 Q 1_U_$$DATE^BDMS9B1(BDMD)
PREGX(P,BDATE,EDATE,NORXCHR,NORX,RPBD) ;EP
 NEW BDMDX,B,CNT,BDMD,BDMG,Y,X,D,C,T,G,%
 I $P(^DPT(P,0),U,2)'="F" Q ""
 S B=0,CNT=0,BDMD=""  ;if there is one before time frame set this to 1
 S NORXCHR=$G(NORXCHR)
 S NORX=$G(NORX)
 K BDMG
 S Y="BDMG("
 S X=P_"^ALL DX [BGP PREGNANCY DIAGNOSES 2;DURING "_$$DATE^BDMS9B1(BDATE)_"-"_$$DATE^BDMS9B1(EDATE) S E=$$START1^APCLDF(X,Y)
 ;now reorder by date of diagnosis and eliminate all chr and rx if necessary
 I '$D(BDMG) G PROB  ;no diagnoses
 S B=0,X=0 F  S X=$O(BDMG(X)) Q:X'=+X  D
 .;get date
 .S D=$P(BDMG(X),U,1)
 .S C=$$CLINIC^APCLV($P(BDMG(X),U,5),"C")
 .I NORXCHR,C=39 Q
 .I NORX,C=39 Q
 .S C=$$PRIMPROV^APCLV($P(BDMG(X),U,5),"D")
 .I NORXCHR,C=53 Q  ;no chr as primary provider
 .S BDMDX(D)="",CNT=CNT+1 I CNT=2 S BDMD=D
 .Q
 I CNT>1 Q 1
PROBX ;
 I '$G(B) Q ""  ;no pregnancy visit during time period  ;-Lori fix in 09
 S T=$O(^ATXAX("B","BGP PREGNANCY DIAGNOSES 2",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^BDMUTL(Y,"BGP PREGNANCY DIAGNOSES 2",9)
 .S G=$P(^AUPNPROB(X,0),U,8)
 .Q
 I G Q 1
 Q 0
STATE(P) ;EP - STATE OF PATIENT1)
 I '$G(P) Q ""
 NEW X,C
 S X=$$GET1^DIQ(2,P,.115,"I")
 I 'X Q ""
 I +$$GET1^DIQ(5,X,2)>69 Q ""
 Q $$GET1^DIQ(5,X,1)
CESS ;EP - find any cessation hf in 12 months before 
 I '$G(P) Q ""
 I $P($$TOBACCO^BDMDE1T(P,$$DOB^AUPNPAT(P),EDATE),U,1)'=1 Q ""
 NEW BDM,E,X,G,T,O,D,H,C,Q,BDMLPED,SN,SNY
 S BDMLPED=""
 K BDM
 S T=$O(^ATXAX("B","DM AUDIT CESSATION HLTH FACTOR",0))
 S (H,D)=0 S O=""
 S H=0 F  S H=$O(^AUPNVHF("AA",P,H)) Q:H'=+H!(O]"")  D
 .S G=0
 .I $D(^ATXAX(T,21,"AA",H)) S G=1
 .I $P(^AUTTHF(H,0),U,1)["CESSATION",$$VAL^XBDIQ1(9999999.64,H,.03)["TOBACCO" S G=1
 .Q:'G
 .S D="" F  S D=$O(^AUPNVHF("AA",P,H,D)) Q:D'=+D!(BDMLPED]"")  D
 ..Q:(9999999-D)>EDATE  ;after time frame
 ..Q:(9999999-D)<BDATE  ;before time frame
 ..S BDMLPED=(9999999-D)_U_$P(^AUTTHF(H,0),U)
 .Q
 NEW BDMALLED,X,Y,%,T,G,A,B,E,Z,BDMMEDS1,Q,SN,SN1,SN2,SN3
 K BDMALLED
 S Y="BDMALLED("
 S X=P_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S %="",SNY=$O(^BDMSNME("B",2017,0)),SN=$O(^BDMSNME(SNY,11,"B","TOBACCO CESSATION PATIENT ED",0))
 S SN1=$O(^BDMSNME(SNY,11,"B","PXRM BGP TOBACCO SMOKER",0))
 S SN2=$O(^BDMSNME(SNY,11,"B","PXRM BGP TOBACCO SMOKELESS",0))
 S SN3=$O(^BDMSNME(SNY,11,"B","PXRM BGP QUIT TOBACCO",0))
 I $D(BDMALLED(1)) S %="" D  I %]"" S BDMLPED=%
 .S (X,D)=0,T="" F  S X=$O(BDMALLED(X)) Q:X'=+X  D
 ..S T=$P(^AUPNVPED(+$P(BDMALLED(X),U,4),0),U)
 ..Q:'T
 ..Q:'$D(^AUTTEDT(T,0))
 ..S T=$P(^AUTTEDT(T,0),U,2)
 ..I $P(T,"-")="TO",$P(BDMLPED,U)<$P(BDMALLED(X),U) S %=$P(BDMALLED(X),U)_U_T Q
 ..I $P(T,"-",2)="TO",$P(BDMLPED,U)<$P(BDMALLED(X),U) S %=$P(BDMALLED(X),U)_U_T Q
 ..I $P(T,"-",2)="SHS",$P(BDMLPED,U)<$P(BDMALLED(X),U) S %=$P(BDMALLED(X),U)_U_T Q
 ..;make the call here to the BGP SMOKING DXS taxonomy
 ..;p8 ICD-10
 ..N CODE
 ..S CODE=$P($$CODEN^BDMUTL($P(T,"-",1),80),"~")
 ..I CODE>0 D
 ...N TAX
 ...S TAX=$O(^ATXAX("B","BGP TOBACCO USER DXS",0))
 ...I $$ICD^BDMUTL(CODE,"BGP TOBACCO USER DXS",9),$P(BDMLPED,U)<$P(BDMALLED(X),U) S %=$P(BDMALLED(X),U)_U_T Q
 ..I $P(T,"-",1)="D1320"!($P(T,"-")="99406")!($P(T,"-")="99407")!($P(T,"-")="G0375")!($P(T,"-")="G0376")!($P(T,"-")="4000F")!($P(T,"-")="G8402")!($P(T,"-")="G8453"),$P(BDMLPED,U)<$P(BDMALLED(X),U) S %=$P(BDMALLED(X),U)_U_T Q
 ..I $P(T,"-")]"",$D(^BDMSNME(SNY,11,SN,11,"B",$P(T,"-"))),$P(BDMLPED,U)<$P(BDMALLED(X),U) S %=$P(BDMALLED(X),U)_U_T Q
 ..I $P(T,"-")]"",$D(^BDMSNME(SNY,11,SN1,11,"B",$P(T,"-"))),$P(BDMLPED,U)<$P(BDMALLED(X),U) S %=$P(BDMALLED(X),U)_U_T Q
 ..I $P(T,"-")]"",$D(^BDMSNME(SNY,11,SN2,11,"B",$P(T,"-"))),$P(BDMLPED,U)<$P(BDMALLED(X),U) S %=$P(BDMALLED(X),U)_U_T Q
 ..I $P(T,"-")]"",$D(^BDMSNME(SNY,11,SN3,11,"B",$P(T,"-"))),$P(BDMLPED,U)<$P(BDMALLED(X),U) S %=$P(BDMALLED(X),U)_U_T Q
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 S X=0,G="" F  S X=$O(^TMP($J,"A",X)) Q:X'=+X  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .S B=$$CLINIC^APCLV(V,"C")
 .I B=94,$P(BDMLPED,U)<$P($P(^AUPNVSIT(V,0),U),".") S BDMLPED=$P($P(^AUPNVSIT(V,0),U),".")_U_"Clinic 94" Q
 .S Z=0 F  S Z=$O(^AUPNVDEN("AD",V,Z)) Q:Z'=+Z!(G)  S B=$P($G(^AUPNVDEN(Z,0)),U) I B S B=$P($G(^AUTTADA(B,0)),U) I B=1320,$P(BDMLPED,U)<$P($P(^AUPNVSIT(V,0),U),".") S BDMLPED=$P($P(^AUPNVSIT(V,0),U),".")_U_"ADA 1320" Q
 .Q
 ;I BDMLPED]"" Q "1  Yes  "_$$DATE^BDMS9B1($P(BDMLPED,U,1))_"  "_$P(BDMLPED,U,2)
 S G=$$CPTI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("D1320")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"CPT D1320"
 S G=$$TRANI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("D1320")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"TRAN D1320"
 S G=$$CPTI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD(99406)) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"CPT 99406"
 S G=$$TRANI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD(99406)) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"TRAN 99406"
 S G=$$CPTI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD(99407)) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"CPT 99407"
 S G=$$TRANI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD(99407)) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"TRAN 99407"
 S G=$$CPTI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("G0375")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"CPT G0375"
 S G=$$CPTI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("G0376")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"CPT G0376"
 S G=$$CPTI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("4000F")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"CPT 4000F"
 S G=$$TRANI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("G0375")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"TRAN G0375"
 S G=$$TRANI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("G0376")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"TRAN G0376"
 S G=$$TRANI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("4000F")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"TRAN 4000F"
 S G=$$CPTI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("4001F")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"CESSATION MED - CPT 4001F"
 S G=$$TRANI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("4001F")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"TRAN 4001F"
 S G=$$CPTI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("G8402")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"CPT G8402"
 S G=$$TRANI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("G8402")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"TRAN G8402"
 S G=$$CPTI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("G8453")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"CPT G8453"
 S G=$$TRANI^BDMDEDU(P,BDATE,EDATE,+$$CODEN^ICPTCOD("G8453")) I G,$P(BDMLPED,U)<$P(G,U,2) S BDMLPED=$P(G,U,2)_U_"TRAN G8453"
 I BDMLPED]"" Q "1  Yes "_$$DATE^BDMS9B1($P(BDMLPED,U,1))_" "_$P(BDMLPED,U,2)
 ;now check meds
 K BDMMEDS1
 D GETMEDS^BDMDEDU(P,BDATE,EDATE,,,,,.BDMMEDS1)
 S T=$O(^ATXAX("B","BGP CMS SMOKING CESSATION MEDS",0))
 S T1=$O(^ATXAX("B","BGP CMS SMOKING CESSATION NDC",0))
 S (X,G,M,E)=0,D="" F  S X=$O(BDMMEDS1(X)) Q:X'=+X  S V=$P(BDMMEDS1(X),U,5),Y=+$P(BDMMEDS1(X),U,4) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:$$UP^XLFSTR($P($G(^AUPNVMED(Y,11)),U))["RETURNED TO STOCK"  ;new in v11.0
 .S Z=$P($G(^AUPNVMED(Y,0)),U) ;get drug ien
 .Q:'Z
 .S N=$P($G(^PSDRUG(Z,0)),U)
 .I $D(^ATXAX(T,21,"B",Z))!(N["NICOTINE TRANS")!(N["NICOTINE PATCH")!(N["NICOTINE POLACRILEX")!(N["NICOTINE INHALER")!(N["NICOTINE NASAL SPRAY") D
 ..I $P(BDMLPED,U)<$P($P(^AUPNVSIT(V,0),U),".") S BDMLPED=$P($P(^AUPNVSIT(V,0),U),".")_U_"CESSATION MED - "_N
 .S C=$P($G(^PSDRUG(Z,2)),U,4)
 .I C]"",$D(^ATXAX(T1,21,"B",C)) I $P(BDMLPED,U)<$P($P(^AUPNVSIT(V,0),U),".") S BDMLPED=$P($P(^AUPNVSIT(V,0),U),".")_U_"CESSATION MED - "_N
 I BDMLPED]"" Q "1  Yes "_$$DATE^BDMS9B1($P(BDMLPED,U,1))_" "_$P(BDMLPED,U,2)
PEDREF ; REFUSALS REMOVED 2017 AUDIT
 Q "2  No"