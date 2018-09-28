BGP8PC7 ; IHS/CMI/LAB - measure I2 ; 02 Feb 2018  11:25 AM
 ;;18.1;IHS CLINICAL REPORTING;**1**;MAY 25, 2018;Build 65
 ;
ADZ ;EP
 K BGPSTOP
 S (BGPN1,BGPN2,BGPN3,BGPD1)=0
 S (BGPTDAP,BGPMEN)=""
 ;GET THE PATIENT'S 13th BIRTHDAY
 I 'BGPIPCUP S BGPSTOP=1 Q
 S A=$$YBD(DFN,13)
 I A>BGPEDATE S BGPSTOP=1 Q  ;turned 13 YEARS after end date of report period
 I A<BGPBDATE S BGPSTOP=1 Q  ;turned 13 before report period
 ;
 ;
 S BGPMEN=$$MEN(DFN)
 I $P(BGPMEN,U,1)=2 S BGPSTOP=1 G EXIT  ;contra to meningococcal
 I $P(BGPMEN,U,1)=1 S BGPN1=1
 ;
 S BGPTDAP=$$TDAP(DFN)
 I $P(BGPTDAP,U,1)=2 S BGPSTOP=1,BGPN1=0 G EXIT
 I $P(BGPTDAP,U,1)=1 S BGPN2=1
 ;
 S BGPD1=1
 I BGPN1,BGPN2 S BGPN3=1
 ;
 I BGPN3 S V="" F X="BGPTDAP","BGPMEN" S:V]"" V=V_"; " S V=V_$P(@X,U,2)
 I BGPN3 S V="*** "_V
 I 'BGPN3 S V="" F X="BGPTDAP","BGPMEN" I $P(@X,U,1) S:V]"" V=V_"; " S V=V_$P(@X,U,2)
 I 'BGPN3,V]"" S V="HAS: "_V
 I 'BGPN3 S N="" F X="BGPTDAP","BGPMEN" I '$P(@X,U,1) S:N]"" N=N_"; " S N=N_$E(X,4,8)
 I 'BGPN3 S V=V_" NEEDS: "_N
 S BGPVALUE=""
 S BGPVALUE="IPCUP|||"_V   ;hit denominator
EXIT K BGPDV,BGPDTAP,BGPMEN,V,N,A
 Q
MEN(P) ;
 NEW A11,A13,X,Y,Z,TCVX,TCPT,C,BGPIMMS,D,V,BGPZ
 S TCVX=$O(^ATXAX("B","BGP MENINGOCOCCAL CVX CODES",0))
 S TCPT=$O(^ATXAX("B","BGP CPT MENINGOCOCCAL",0))
 S A13=$$YBD(P,13)
 S A11=$$YBD(P,11)
 S X=0 F  S X=$O(^AUPNVIMM("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVIMM(X,0))  ;happens
 .S Y=$P(^AUPNVIMM(X,0),U)
 .Q:'Y  ;happens too
 .S I=$P($G(^AUTTIMM(Y,0)),U,3)  ;get HL7/CVX code
 .Q:'$D(^ATXAX(TCVX,21,"B",I))  ;not a DTAP
 .S D=$P($P($G(^AUPNVIMM(X,12)),U,1),".")
 .I D="" S V=$P(^AUPNVIMM(X,0),U,3) I V S D=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .Q:D<A11
 .Q:D>A13
 .S BGPIMMS(D)=Y
 .Q
 ;go through and set into array if 1 days apart
 S X="",Y="",C=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BGPIMMS(X) Q
 .S Y=X
 ;see if there is 1 of them, if there are quit
 S BGPIMMS=0,X=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S BGPIMMS=BGPIMMS+1
 I BGPIMMS>0 Q 1_U_"1 MENINGOCOCCAL"
 ;now get cpts
 S G="",X=0
 F  S X=$O(^AUPNVCPT("AC",P,X)) Q:X=""  D
 .Q:'$D(^AUPNVCPT(X,0))
 .S Y=$P(^AUPNVCPT(X,0),U)
 .Q:'$$ICD^BGP8UTL2(Y,TCPT,1)  ;not a dtap cpt
 .S V=$P(^AUPNVCPT(X,0),U,3) Q:'V
 .S D=$$VD^APCLV(V)
 .Q:D<A11
 .Q:D>A13
 .S BGPIMMS(D)=""
 ;get tran codes
 S X=0 F  S X=$O(^AUPNVTC("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVTC(X,0))
 .S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y
 .Q:'$$ICD^BGP8UTL2(Y,TCPT,1)
 .S V=$P(^AUPNVTC(X,0),U,3) Q:'V
 .S D=$$VD^APCLV(V)
 .Q:D<A11
 .Q:D>A13
 .S BGPIMMS(D)=""
 ;
 ;go through and set into array if 1 days apart
 S X="",Y="",C=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<1 K BGPIMMS(X) Q
 .S Y=X
 ;see if there are 4 of them, if there are quit
 S BGPIMMS=0,X=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S BGPIMMS=BGPIMMS+1
 I BGPIMMS>0 Q 1_U_"1 MENINGOCOCCAL"
 ;NOW CHECK FOR CONTRAINDICATION
 ;IMM PKG ANAPHYLACTIS
 S BGPZ=0
 F  S BGPZ=$O(^ATXAX(TCVX,21,"B",BGPZ)) Q:BGPZ=""!(X]"")  D
 .S X=$$ANCONT^BGP8D31(P,BGPZ,A13)
 I X]"" Q 2_U_"CONTRA"
 Q ""
YBD(P,A) ;
 NEW B,M,D,Y
 S B=$$DOB^AUPNPAT(P)  ;DOB
 S M=$E(B,4,5)
 S D=$E(B,6,7)
 S Y=$E(B,1,3),Y=Y+A
 Q Y_M_D
TDAP(P) ;
 NEW A10,A13,X,Y,Z,TCVX,TCPT,C,BGPIMMS,D,V,BGPZ
 S TCVX=$O(^ATXAX("B","BGP IPC TDAP CVX CODES",0))
 S TCPT=$O(^ATXAX("B","BGP CPT TDAP/TD",0))
 S A13=$$YBD(P,13)
 S A10=$$YBD(P,10)
 S X=0 F  S X=$O(^AUPNVIMM("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVIMM(X,0))  ;happens
 .S Y=$P(^AUPNVIMM(X,0),U)
 .Q:'Y  ;happens too
 .S I=$P($G(^AUTTIMM(Y,0)),U,3)  ;get HL7/CVX code
 .Q:'$D(^ATXAX(TCVX,21,"B",I))  ;not a DTAP
 .S D=$P($P($G(^AUPNVIMM(X,12)),U,1),".")
 .I D="" S V=$P(^AUPNVIMM(X,0),U,3) I V S D=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .Q:D<A10
 .Q:D>A13
 .S BGPIMMS(D)=Y
 .Q
 ;go through and set into array if 1 days apart
 S X="",Y="",C=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BGPIMMS(X) Q
 .S Y=X
 ;see if there is 1 of them, if there are quit
 S BGPIMMS=0,X=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S BGPIMMS=BGPIMMS+1
 I BGPIMMS>0 Q 1_U_"1 TDAP/TD"
 ;TD CVX CODES
 S TCVX=$O(^ATXAX("B","BGP IPC TD CVX CODES",0))
 S TCPT=$O(^ATXAX("B","BGP CPT TDAP/TD",0))
 S X=0 F  S X=$O(^AUPNVIMM("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVIMM(X,0))  ;happens
 .S Y=$P(^AUPNVIMM(X,0),U)
 .Q:'Y  ;happens too
 .S I=$P($G(^AUTTIMM(Y,0)),U,3)  ;get HL7/CVX code
 .Q:'$D(^ATXAX(TCVX,21,"B",I))  ;not a DTAP
 .S D=$P($P($G(^AUPNVIMM(X,12)),U,1),".")
 .I D="" S V=$P(^AUPNVIMM(X,0),U,3) I V S D=$P($P($G(^AUPNVSIT(V,0)),U),".")
 .Q:D<A10
 .Q:D>A13
 .S BGPIMMS(D)=Y
 .Q
 ;go through and set into array if 1 days apart
 S X="",Y="",C=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<11 K BGPIMMS(X) Q
 .S Y=X
 ;see if there is 1 of them, if there are quit
 S BGPIMMS=0,X=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S BGPIMMS=BGPIMMS+1
 I BGPIMMS>0 Q 1_U_"1 TDAP/TD"
 ;now get cpts
 S G="",X=0
 F  S X=$O(^AUPNVCPT("AC",P,X)) Q:X=""  D
 .Q:'$D(^AUPNVCPT(X,0))
 .S Y=$P(^AUPNVCPT(X,0),U)
 .Q:'$$ICD^BGP8UTL2(Y,TCPT,1)  ;not a dtap cpt
 .S V=$P(^AUPNVCPT(X,0),U,3) Q:'V
 .S D=$$VD^APCLV(V)
 .Q:D<A10
 .Q:D>A13
 .S BGPIMMS(D)=""
 ;get tran codes
 S X=0 F  S X=$O(^AUPNVTC("AC",P,X)) Q:X'=+X  D
 .Q:'$D(^AUPNVTC(X,0))
 .S Y=$P(^AUPNVTC(X,0),U,7) Q:'Y
 .Q:'$$ICD^BGP8UTL2(Y,TCPT,1)
 .S V=$P(^AUPNVTC(X,0),U,3) Q:'V
 .S D=$$VD^APCLV(V)
 .Q:D<A10
 .Q:D>A13
 .S BGPIMMS(D)=""
 ;
 ;go through and set into array if 1 days apart
 S X="",Y="",C=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S C=C+1 D
 .I C=1 S Y=X Q
 .I $$FMDIFF^XLFDT(X,Y)<1 K BGPIMMS(X) Q
 .S Y=X
 ;see if there are 4 of them, if there are quit
 S BGPIMMS=0,X=0 F  S X=$O(BGPIMMS(X)) Q:X'=+X  S BGPIMMS=BGPIMMS+1
 I BGPIMMS>0 Q 1_U_"1 TDAP/TD"
DIP ;NOW CHECK FOR 1 DIP AND ONE TET
 NEW BGPDIP,BGPTET
 S BGPDIP=$$LASTDX^BGP8UTL1(P,"BGP DIPHTHERIA IZ DXS",A10,A13)
 I 'BGPDIP S E=+$$CODEN^ICPTCOD(90719),BGPDIP=$$CPTI^BGP8DU(P,A10,A13,E)
 I 'BGPDIP G DTAPCON ; NO DIP SO DON'T BOTHER WITH TETANUS
TET ;
 S BGPTET=$$LASTITEM^BGP8DU(P,A10,A13,"IMMUNIZATION","35")
 I 'BGPTET S BGPTET=$$LASTITEM^BGP8DU(P,A10,A13,"IMMUNIZATION","112")
 I 'BGPTET S BGPTET=$$LASTDX^BGP8UTL1(P,"BGP TETANUS TOXOID IZ DXS",A10,A13)
 I 'BGPTET S E=+$$CODEN^ICPTCOD(90703),BGPTET=$$CPTI^BGP8DU(P,A10,A13,E)
 I 'BGPTET G DTAPCON ; NO TET SO DON'T BOTHER WITH TETANUS
 Q 1_U_"1 TDAP/TD"
DTAPCON ;NOW CHECK FOR CONTRAINDICATION
 ;IMM PKG ANAPHYLACTIS
 S BGPZ=0
 S TCVX=$O(^ATXAX("B","BGP IPC TDAP CVX CODES",0))
 F  S BGPZ=$O(^ATXAX(TCVX,21,"B",BGPZ)) Q:BGPZ=""!(X]"")  D
 .S X=$$ANCONT^BGP8D31(P,BGPZ,A13)
 I X]"" Q 2_U_"CONTRA TDAP/TD"
 S BGPZ=0
 S TCVX=$O(^ATXAX("B","BGP IPC TD CVX CODES",0))
 F  S BGPZ=$O(^ATXAX(TCVX,21,"B",BGPZ)) Q:BGPZ=""!(X]"")  D
 .S X=$$ANCONT^BGP8D31(P,BGPZ,A13)
 I X]"" Q 2_U_"CONTRA TDAP/TD"
 F BGPZ=35,112 S X=$$ANCONT^BGP8D31(P,BGPZ,A13) Q:X]""
 I X]"" Q 2_U_"CONTRA TDAP/TD"
 Q ""
