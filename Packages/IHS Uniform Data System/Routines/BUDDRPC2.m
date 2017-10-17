BUDDRPC2 ; IHS/CMI/LAB - UDS TABLE 6 01 Dec 2016 6:10 PM ; 
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
 ;
DENT(BUDV) ;EP - when only ADA and CPT codes that are not wildcards (*)
 S V=0,G="" F  S V=$O(^AUPNVDEN("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVDEN(V,0)),U)
 .Q:'A
 .S A=$P($G(^AUTTADA(A,0)),U)
 .Q:A=""
 .I $D(^BUDDTSC(BUDY,12,"B",A)) S G=A
 .Q
 I G]"" Q G
 S G="" S X=0 F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$$VAL^XBDIQ1(9000010.18,X,.01)
 .I $D(^BUDDTSC(BUDY,8,"B",Z)) S G=Z
 .Q
 Q G
L26B(BUDV) ;EP
 S G="" S X=0 F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$$VAL^XBDIQ1(9000010.18,X,.01)
 .I $D(^BUDDTSC(BUDY,8,"B",Z)) S G=Z
 .Q
 I G]"" Q G
 S X=0 F  S X=$O(^AUPNVPED("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$P($G(^AUPNVPED(X,0)),U)
 .Q:Z=""
 .Q:'$D(^AUTTEDT(Z,0))
 .S Z=$P(^AUTTEDT(Z,0),U,2)
 .I $D(^BUDDTSC(BUDY,10,"B",Z)) S G=Z
 Q G
L26C(BUDV) ;EP
 ;I $$CLINIC^APCLV(BUDV,"C")=94 Q "CLINIC 94"
 S G="" S X=0 F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$$VAL^XBDIQ1(9000010.18,X,.01)
 .I $D(^BUDDTSC(BUDY,8,"B",Z)) S G=Z
 .Q
 I G]"" Q G
 S X=0 F  S X=$O(^AUPNVPED("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$P($G(^AUPNVPED(X,0)),U)
 .Q:Z=""
 .Q:'$D(^AUTTEDT(Z,0))
 .S Z=$P(^AUTTEDT(Z,0),U,2)
 .I $P(Z,"-",1)="TO" S G=Z Q
 .I $P(Z,"-",2)="TO" S G=Z Q
 .I $P(Z,"-",2)="SHS" S G=Z Q
 .I $E($P(Z,"-",1),1,3)="F17" S G=Z Q
 I G]"" Q G
 S C=$$CLINIC^APCLV(BUDV,"C")
 I C,$D(^BUDDTSC(BUDY,11,"B",C)) Q "CLIN "_C
 ;S X=0 F  S X=$O(^AUPNVPOV("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 ;.S Z=$$VAL^XBDIQ1(9000010.07,X,.01)
 ;.I Z="305.1" S G="305.1"
 Q G
L32(BUDV) ;EP
 S V=0,G="" F  S V=$O(^AUPNVDEN("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVDEN(V,0)),U)
 .Q:'A
 .S A=$P($G(^AUTTADA(A,0)),U)
 .Q:A=""
 .I $E(A,1,2)=21!($E(A,1,2)=22)!($E(A,1,2)=23)!($E(A,1,2)=24)!($E(A,1,2)=25)!($E(A,1,2)=26)!($E(A,1,2)=27)!($E(A,1,2)=28)!($E(A,1,2)=29) S G=A
 .Q
 I G]"" Q G
 S G="" S X=0 F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$$VAL^XBDIQ1(9000010.18,X,.01)
 .I $E(Z,1,3)="D21"!($E(Z,1,3)="D22")!($E(Z,1,3)="D23")!($E(Z,1,3)="D24")!($E(Z,1,3)="D25")!($E(Z,1,3)="D26")!($E(Z,1,3)="D27")!($E(Z,1,3)="D28")!($E(Z,1,3)="D29") S G=Z
 .Q
 Q G
L34(BUDV) ;EP
 S V=0,G="" F  S V=$O(^AUPNVDEN("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$P($G(^AUPNVDEN(V,0)),U)
 .Q:'A
 .S A=$P($G(^AUTTADA(A,0)),U)
 .Q:A=""
 .I $E(A)=3!($E(A)=4)!($E(A)=5)!($E(A)=6)!($E(A)=8) S G=A
 .Q
 I G]"" Q G
 S V=0,G="" F  S V=$O(^AUPNVCPT("AD",BUDV,V)) Q:V'=+V!(G]"")  D
 .S A=$$VAL^XBDIQ1(9000010.18,V,.01)
 .I $E(A,1,2)="D3"!($E(A,1,2)="D4")!($E(A,1,2)="D5")!($E(A,1,2)="D6")!($E(A,1,2)="D8") S G=A
 .Q
 Q G
L26(BUDV) ;EP
 I $$AGE^AUPNPAT($P(^AUPNVSIT(BUDV,0),U,5),BUDCCAD)>11 Q ""
 S C=$$CLINIC^APCLV(BUDV,"C")
 I C,$D(^BUDDTSC(BUDY,11,"B",C)) Q "CLIN "_C
 S G="" I T S X=0 F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$P(^AUPNVCPT(X,0),U),Z=$P($$CPT^ICPTCOD(Z),U,2)
 .I $D(^BUDDTSC(BUDY,8,"B",Z)) S G=Z Q
 Q G
L26A(BUDV) ;EP
 ;age 9-72 months
 S G=""
 S A=$$AGE^BUDDUTL2(DFN,2,$$VD^APCLV(BUDV))
 I A<9 Q G
 I A>72 Q G
 S G="" S X=0 F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$$VAL^XBDIQ1(9000010.18,X,.01)
 .I $D(^BUDDTSC(BUDY,8,"B",Z)) S G=Z
 .Q
 Q G
L26D(BUDV) ;EP
 S G=""
 S G="" S X=0 F  S X=$O(^AUPNVCPT("AD",BUDV,X)) Q:X'=+X!(G]"")  D
 .S Z=$$VAL^XBDIQ1(9000010.18,X,.01)
 .I $D(^BUDDTSC(BUDY,8,"B",Z)) S G=Z
 .Q
 Q G
T4 ;EP
 D HI
 D INS
 D MIGRANT
 D HOMELESS
 D SCHOOL
 D VET
 Q
SHI(V,LV) ;
 S BUDT4V(V)=BUDT4V(V)+1
 S BUDT4V(6)=BUDT4V(6)+1
 I $G(BUDT4IPP) D
 .S ^XTMP("BUDDRPT1",BUDJ,BUDH,"T4IPPL",$G(V),$G(LV),BUDCCOM,BUDSEX,BUDAGE,DFN)=$G(LV)
 Q
HI ;
 S (BUDNIH,BUDTHI,BUDTHIP)=""
 S BUDTHIP=$$VALI^XBDIQ1(9000001,DFN,8701)
 I BUDTHIP="" S BUDTHIP="Y"
 S BUDNIH=+$$VAL^XBDIQ1(9000001,DFN,.35)
 I 'BUDNIH D SHI(5,"Unknown") Q  ;can't calculate, no number is household
 S BUDTHI=$$VAL^XBDIQ1(9000001,DFN,.36)
 I 'BUDTHI D SHI(5,"Unknown") Q
 I $E(BUDTHI)="0" D SHI(5,"Unknown") Q
 I BUDTHIP="M" S BUDTHI=BUDTHI*12
 I BUDTHIP="W" S BUDTHI=BUDTHI*52
 I BUDTHIP="B" S BUDTHI=BUDTHI*26
 S X=$O(^BUDDIL("B",BUDNIH,0))
 S P="",T=""
 S S=$$VAL^XBDIQ1(9999999.06,BUDSITE,.16)
 I S]"" D  G N
 .I T="ALASKA" S P=3 Q
 .I T="HAWAII" S P=4 Q
 .S P=2
 S P=2
 ;
N ;
 S Y=$P(^BUDDIL(X,0),U,P)
 S Z=BUDTHI/Y
 S Z=Z*100
 I Z>200 D SHI(4,"Over 200%") Q
 I Z>150.9999999 D SHI(3,"151-200%") Q
 I Z>100.9999999 D SHI(2,"101-150%") Q
 D SHI(1,"100% and below")
 Q
INS ;EP
 S BUDHAS=0
 S BUDHAS=$$PI(DFN,$$VD^APCLV(BUDLASTV))
 I BUDHAS=1 D TINS(BUDAGE,11) Q
 S BUDHAS=$$MCR(DFN,$$VD^APCLV(BUDLASTV))
 I BUDHAS=1 D  Q
 .D TINS(BUDAGE,9)
 .I $$MCD(DFN,$$VD^APCLV(BUDLASTV),"D") D TINS(BUDAGE,"8.9") Q
 .I $$MCD(DFN,$$VD^APCLV(BUDLASTV),"K") D TINS(BUDAGE,"8.9") Q
 ;S BUDHAS=$$OPI(DFN,$$VD^APCLV(BUDLASTV),"W")
 ;I BUDHAS=1 D TINS(BUDAGE,"10a") Q
 S BUDHAS=$$RR^AUPNPAT(DFN,$$VD^APCLV(BUDLASTV))
 I BUDHAS=1 D TINS(BUDAGE,"10a") Q
 S BUDHAS=$$OPI(DFN,$$VD^APCLV(BUDLASTV))
 I BUDHAS=1 D TINS(BUDAGE,"10a") Q
 S BUDHAS=$$OPIC(DFN,$$VD^APCLV(BUDLASTV),"K")
 I BUDHAS=1 D TINS(BUDAGE,"10b") Q
 S BUDHAS=$$MCD(DFN,$$VD^APCLV(BUDLASTV),"D")
 I BUDHAS=1 D TINS(BUDAGE,"8a") Q
 S BUDHAS=$$MCD(DFN,$$VD^APCLV(BUDLASTV),"K")
 I BUDHAS=1 D TINS(BUDAGE,"8b") Q
 ;now check workman's comp and 3rd party liability
 S BUDHAS=$$WC(DFN,BUDBD,BUDED)
 I BUDHAS=1 D TINS(BUDAGE,"11") Q
 S BUDHAS=$$TPL(DFN,BUDBD,BUDED)
 I BUDHAS=1 D TINS(BUDAGE,"10a") Q
 ;now check guarantor file
 ;S BUDHAS=$$GUAR(DFN,BUDBD,BUDED)
 ;I BUDHAS=1 D TINS(BUDAGE,"7") Q
 D TINS(BUDAGE,7)
 Q
GUAR(P,BD,ED) ;guarantor
 NEW X,Y,Z,A
 S A=0,Y=0,A=0
 S X=0 F  S X=$O(^AUPNGUAR(P,1,X)) Q:X'=+X  D
 .S Y=0 F  S Y=$O(^AUPNGUAR(P,1,X,11,Y)) Q:Y'=+Y  D
 ..I $P(^AUPNGUAR(P,1,X,11,Y,0),U,1)]"",$P(^(0),U,1)>ED Q
 ..I $P(^AUPNGUAR(P,1,X,11,Y,0),U,2)]"",$P(^(0),U,2)<BD Q
 ..S A=1
 Q A
 ;
WC(P,BD,ED) ;EP - workman's comp goes in line 11 per Duane
 NEW X,Y,Z,SD
 ;find an injury in date range
 I '$D(^AUPNWC(P,0)) Q ""
 S SD=$$FMADD^XLFDT(BD,-1)
 ;
 S Y=0  ;no wc
 F  S SD=$O(^AUPNWC(P,11,"B",SD)) Q:SD'=+SD!(SD>ED)  D
 .Q:SD>ED
 .Q:SD<BD
 .S X=0 F  S X=$O(^AUPNWC(P,11,"B",SD,X)) Q:X'=+X  D
 ..I $P(^AUPNWC(P,11,X,0),U,12)]"",$P(^AUPNWC(P,11,X,0),U,12)>ED Q
 ..I $P(^AUPNWC(P,11,X,0),U,13)]"",$P(^AUPNWC(P,11,X,0),U,13)<BD Q
 ..S Y=1
 Q Y
 ;
TPL(P,BD,ED) ;EP - workman's comp goes in line 11 per Duane
 NEW X,Y,Z,SD
 ;find an injury in date range
 S SD=$$FMADD^XLFDT(BD,-1)
 S Y=0  ;no wc
 F  S SD=$O(^AUPNTPL(P,1,"B",SD)) Q:SD'=+SD!(SD>ED)  D
 .S X=0 F  S X=$O(^AUPNTPL(P,1,"B",SD,X)) Q:X'=+X  D
 ..I $P(^AUPNTPL(P,1,X,0),U,4)]"",$P(^AUPNTPL(P,1,X,0),U,4)>ED Q
 ..I $P(^AUPNTPL(P,1,X,0),U,5)]"",$P(^AUPNTPL(P,1,X,0),U,5)<BD Q
 ..S Y=1
 Q Y
 ;
TINS(A,P) ;
 I P="8.9" S $P(BUDT4V("9a"),U,$S(A<18:1,1:2))=$P(BUDT4V("9a"),U,$S(A<18:1,1:2))+1
 I P'=8.9 S $P(BUDT4V(P),U,$S(A<18:1,1:2))=$P(BUDT4V(P),U,$S(A<18:1,1:2))+1
 I P'=8.9 S $P(BUDT4V(12),U,$S(A<18:1,1:2))=$P(BUDT4V(12),U,$S(A<18:1,1:2))+1
 I P="8a"!(P="8b") S $P(BUDT4V(8),U,$S(A<18:1,1:2))=$P(BUDT4V(8),U,$S(A<18:1,1:2))+1
 I P="10a"!(P="10b") S $P(BUDT4V(10),U,$S(A<18:1,1:2))=$P(BUDT4V(10),U,$S(A<18:1,1:2))+1
 I $G(BUDT4PMI) D
 .I P=7 S T="None/Uninsured"
 .I P="8a" S T="Regular Medicaid (Title XIX)",P=8.1
 .I P="8b" S T="CHIP Medicaid",P=8.2
 .I P="9" S T="Medicare"
 .I P="10a" S T="Other Public Insurance Non-CHIP",P=10.1
 .I P="10b" S T="Other Public Insurance CHIP",P=10.2
 .I P="11" S T="Private Insurance"
 .I P="8.9" S T="Dually Eligible"
 .S ^XTMP("BUDDRPT1",BUDJ,BUDH,"T4PMIS",$G(P),$G(T),BUDAGE,BUDCCOM,BUDSEX,DFN)=""
 Q
 ;
MCD(P,D,T) ;EP - Is patient P medicaid eligible on date D.
 ; I = IEN.
 ; J = Node 11 IEN in ^AUPNMCD.
 I '$G(P) Q 0
 I '$G(D) Q 0
 S T=$G(T)
 NEW I,J,Y,Z,N
 S Y=0,U="^"
 I '$D(^DPT(P,0)) G MCDX
 I $P(^DPT(P,0),U,19) G MCDX
 I '$D(^AUPNPAT(P,0)) G MCDX
 I $D(^DPT(P,.35)),$P(^(.35),U)]"",$P(^(.35),U)<D G MCDX
 S I=0 F  S I=$O(^AUPNMCD("B",P,I)) Q:I'=+I  D
 .Q:'$D(^AUPNMCD(I,11))
 .S Z=$P(^AUPNMCD(I,0),U,2)
 .;get plan name/INSURER TYPE OF PLAN NAME
 .S N=$$VALI^XBDIQ1(9000004,I,.11)
 .I N S N=$$VALI^XBDIQ1(9999999.18,N,.21)
 .I T="K" Q:N'="K"
 .I T=""  Q:N="K"
 .S J=0 F  S J=$O(^AUPNMCD(I,11,J)) Q:J'=+J  D
 ..Q:J>D
 ..I $P(^AUPNMCD(I,11,J,0),U,2)]"",$P(^(0),U,2)<D Q
 ..S Y=1
 ..Q
 .Q
 ;
MCDX ;
 Q Y
PI(P,D) ;EP - Is patient P private insurance eligible on date D. 1= yes, 0=no.
 G PI^BUDDRPC3
OPIC(P,D,T) ;EP - Is patient P private insurance eligible on date D. 1= yes, 0=no.
 G OPIC^BUDDRPC3
 ;
OPI(P,D,T) ;EP - Is patient P private insurance eligible on date D. 1= yes, 0=no.
 G OPI^BUDDRPC3
 ;
MCR(P,D) ;EP - Is patient P medicare eligible on date D.  1 = yes, 0 = no.
 ; I = IEN in ^AUPNMCR multiple.
 I '$G(P) Q 0
 I '$G(D) Q 0
 NEW I,Y
 S Y=0,U="^"
 I '$D(^DPT(P,0)) G MCRX
 I $P(^DPT(P,0),U,19) G MCRX
 I '$D(^AUPNPAT(P,0)) G MCRX
 I '$D(^AUPNMCR(P,11)) G MCRX
 I $D(^DPT(P,.35)),$P(^(.35),U)]"",$P(^(.35),U)<D G MCRX
 S I=0
 F  S I=$O(^AUPNMCR(P,11,I)) Q:I'=+I  D
 . Q:$P(^AUPNMCR(P,11,I,0),U)>D
 . I $P(^AUPNMCR(P,11,I,0),U,2)]"",$P(^(0),U,2)<D Q
 . S Y=1
 .Q
MCRX ;
 I Y Q Y
 ;now check Private insurance for MD, MH, R, M
 I '$D(^AUPNPRVT(P,11)) G MCRPIX
 I $D(^DPT(P,.35)),$P(^(.35),U)]"",$P(^(.35),U)<D G MCRPIX
 S I=0,G=0
 F  S I=$O(^AUPNPRVT(P,11,I)) Q:I'=+I  D
 . Q:$P(^AUPNPRVT(P,11,I,0),U)=""
 . S X=$P(^AUPNPRVT(P,11,I,0),U) Q:X=""
 . I $P($G(^AUTNINS(X,2)),U,1)="MC" S G=1
 . I $P($G(^AUTNINS(X,2)),U,1)="MMC" S G=1
 . I $P($G(^AUTNINS(X,2)),U,1)="MD" S G=1
 . I $P($G(^AUTNINS(X,2)),U,1)="MH" S G=1
 . I $P($G(^AUTNINS(X,2)),U,1)="R" S G=1
 . I 'G Q
 . Q:$P(^AUPNPRVT(P,11,I,0),U,6)>D
 . I $P(^AUPNPRVT(P,11,I,0),U,7)]"",$P(^(0),U,7)<D Q
 . S Y=1
 .Q
MCRPIX ;
 Q Y
MIGRANT ;
 S M=$$MIG(DFN,$$VD^APCLV(BUDLASTV))
 Q:M=""
 I $P(M,U,1)="M" S BUDT4V(14)=BUDT4V(14)+1,BUDT4V(16)=BUDT4V(16)+1 D
 .Q:'$G(BUDT4CHA)
 .S T="Migratory" S ^XTMP("BUDDRPT1",BUDJ,BUDH,"T4CHAR",14,T,BUDCCOM,BUDSEX,BUDAGE,DFN)=""
 I $P(M,U,1)="S" S BUDT4V(15)=BUDT4V(15)+1,BUDT4V(16)=BUDT4V(16)+1 D
 .Q:'$G(BUDT4CHA)
 .S T="Seasonal"
 .S ^XTMP("BUDDRPT1",BUDJ,BUDH,"T4CHAR",15,T,BUDCCOM,BUDSEX,BUDAGE,DFN)=""
 Q
HOMELESS ;
 S H=$$HOMEL(DFN,$$VD^APCLV(BUDLASTV))
 I H="" Q
 I $P(H,U,1)="H" S BUDT4V(17)=BUDT4V(17)+1,BUDT4V(23)=BUDT4V(23)+1,T="Homeless (Type: Homeless Shelter)",L=17
 I $P(H,U,1)="T" S BUDT4V(18)=BUDT4V(18)+1,BUDT4V(23)=BUDT4V(23)+1,T="Homeless (Type: Transitional)",L=18
 I $P(H,U,1)="D" S BUDT4V(19)=BUDT4V(19)+1,BUDT4V(23)=BUDT4V(23)+1,T="Homeless (Type: Doubling Up)",L=19
 I $P(H,U,1)="S" S BUDT4V(20)=BUDT4V(20)+1,BUDT4V(23)=BUDT4V(23)+1,T="Homeless (Type: Street)",L=20
 I $P(H,U,1)="O" S BUDT4V(21)=BUDT4V(21)+1,BUDT4V(23)=BUDT4V(23)+1,T="Homeless (Type: Other)",L=21
 I $P(H,U,1)="U" S BUDT4V(22)=BUDT4V(22)+1,BUDT4V(23)=BUDT4V(23)+1,T="Homeless (Type: Unknown)",L=22
 S ^XTMP("BUDDRPT1",BUDJ,BUDH,"T4CHAR",L,T,BUDCCOM,BUDSEX,BUDAGE,DFN)=""
 Q
VET ;
 S V=$$VALI^XBDIQ1(2,DFN,1901)
 I V="Y" S T="Veteran" S BUDT4V(25)=BUDT4V(25)+1,^XTMP("BUDDRPT1",BUDJ,BUDH,"T4CHAR",25,T,BUDCCOM,BUDSEX,BUDAGE,DFN)=""
 Q
SCHOOL ;IF ALL VISITS ARE CLINIC SCHOOL??
 ;if any visit from 356a is clinic school set to yes
 NEW X,V,Y,S
 S S=""
 S X=0 F  S X=$O(^TMP($J,"VISITSUDSPT",X)) Q:X'=+X  I $$CLINIC^APCLV(X,"C")=22 S S=1
 Q:S=""
 S BUDT4V(24)=$G(BUDT4V(24))+1
 S ^XTMP("BUDDRPT1",BUDJ,BUDH,"T4CHAR",24,"School Based Patient",BUDCCOM,BUDSEX,BUDAGE,DFN)=""
 Q
MIG(P,D) ;EP
 ;GET LAST VALUE WITH A YES BEFORE END OF TIME PERIOD
 I '$O(^AUPNPAT(P,84,0)) Q ""
 NEW X,Y,Z,L
 S L=""
 S X=0 F  S X=$O(^AUPNPAT(P,84,"B",X)) Q:X'=+X  D
 .Q:X>D  ;AFTER LAST VISIT
 .S Y=0 F  S Y=$O(^AUPNPAT(P,84,"B",X,Y)) Q:Y'=+Y  D
 ..I $P($G(^AUPNPAT(P,84,Y,0)),U,2)="" Q
 ..;I $P($G(^AUPNPAT(P,84,Y,0)),U,3)="" Q
 ..S L=Y
 I L="" Q ""
 I $P(^AUPNPAT(P,84,L,0),U,2)="N" Q ""
 Q $S($P(^AUPNPAT(P,84,L,0),U,3)]"":$P(^AUPNPAT(P,84,L,0),U,3),1:"")_"^"_$P(^AUPNPAT(P,84,L,0),U,1)
HOMEL(P,D) ;EP
 ;GET LAST VALUE WITH A YES BEFORE END OF TIME PERIOD
 I '$O(^AUPNPAT(P,85,0)) Q ""
 NEW X,Y,Z,L
 S L=""
 S X=0 F  S X=$O(^AUPNPAT(P,85,"B",X)) Q:X'=+X  D
 .Q:X>D
 .S Y=0 F  S Y=$O(^AUPNPAT(P,85,"B",X,Y)) Q:Y'=+Y  D
 ..I $P($G(^AUPNPAT(P,85,Y,0)),U,2)="" Q
 ..S L=Y
 I L="" Q ""
 I $P(^AUPNPAT(P,85,L,0),U,2)="N" Q ""
 Q $S($P(^AUPNPAT(P,85,L,0),U,3)]"":$P(^AUPNPAT(P,85,L,0),U,3),1:"U")_"^"_$P(^AUPNPAT(P,85,L,0),U,1)
