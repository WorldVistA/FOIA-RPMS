BGP7D91 ; IHS/CMI/LAB - calc measures 29 Apr 2010 7:38 PM 14 Nov 2006 5:02 PM 12 Nov 2009 11:03 AM 07 Apr 2010 7:00 AM ;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
EOST ;
 NEW BGPOXV,BGPD,BGPN
 K BGPOXV
 I 'BGPACTUP S BGPSTOP=1 Q  ;no active user pop
 I BGPAGEB<18 S BGPSTOP=1 Q  ;don't process this measure, pt under 18
 S BGPD1=0
 S BGPN1=0,BGPVALUE=""
 S BGPTIA=$$TIAFIB(DFN,$$DOB^AUPNPAT(DFN),BGPEDATE)  ;RETURN DATE OF DX
 I 'BGPTIA Q  ;no tia dx ever
 ;now evaluate result
 S BGPD1=1
 S BGPTHER=$$ANTICOAG(DFN,BGPBDATE,BGPEDATE)  ;DATE DRUG
 I BGPTHER]"" S BGPN1=1
 ;
 S BGPVALUE="UP"_"|||"_"DX: "_$$DATE^BGP7UTL(BGPTIA)_" THERAPY: "_$S(BGPTHER]"":BGPTHER,1:"None")
 Q
 ;
TIAFIB(P,BDATE,EDATE) ;EP
 NEW A,X,V,BGPG,G,C,T,B,E,BGPX,BGPV,BGPD
 K BGPR,BGPG,BGPX
 S BGPR="",BGPR(0)=""
 S X=P_"^ALL DX [BGP TIA DXS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,"BGPG(")
 I '$D(BGPG(1)) Q ""  ;NO TIA
 ;now go through and get rid of H and CHS
 S X=0,G=0 F  S X=$O(BGPG(X)) Q:X'=+X!(G)  D
 .S V=$P(BGPG(X),U,5)  ;visit ien
 .;is there a atrial fib on this visit
 .S Y=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y  D
 ..S C=$P($G(^AUPNVPOV(Y,0)),U)
 ..Q:C=""
 ..I $$ICD^BGP7UTL2(C,$O(^ATXAX("B","BGP ATRIAL FIBRILLATION DXS",0)),9) S G=$$VD^APCLV(V)
 I 'G Q "" ;;NO DX
 Q G
ANTICOAG(P,BDATE,EDATE) ;EP - was there ANTICOAG
 NEW BGPD,X,N,E,Y,T,D,C,BGPLT,L,J,BGPG,S
 K BGPG S Y="BGPG(",X=P_"^ALL MED;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 S X=0,G="" F  S X=$O(BGPG(X)) Q:X'=+X!(G]"")  D
 .S N=+$P(BGPG(X),U,4)  ;ien of v med
 .S C=$$ANTIDRUG(N)  ;not one of the drugs
 .Q:'$P(C,U)
 .;c=1^category of drug
 .;I $P(^AUPNVMED(N,0),U,8)]"",$P(^AUPNVMED(N,0),U,8)'>EDATE Q  ;discontinued before discharge date
 .;S S=$P(^AUPNVMED(N,0),U,7)
 .;I $P($P(^AUPNVSIT($P(^AUPNVMED(N,0),U,3),0),U),".")=EDATE S G=$$DATE^BGP7UTL(EDATE)_" MET: "_$P(C,U,2)_"^1"  ;PRESCRIBED ON DISCHARGE DATE
 .;S V=$P(^AUPNVMED(N,0),U,3)
 .;S V=$P($P(^AUPNVSIT(V,0),U),".")
 .;I $$FMADD^XLFDT(V,S)<EDATE Q  ;not valid through discharge date
 .S G=$$DATE^BGP7UTL($P(BGPG(X),U,1))_" "_$P(C,U,2)
 I G]"" Q G
 Q ""
 ;
ANTIDRUG(N) ;
 NEW G,T,I
 I '$D(^AUPNVMED(N,0)) Q 0
 I $$UP^XLFSTR($P($G(^AUPNVMED(N,11)),U))["RETURNED TO STOCK" Q 0
 S I=$P($G(^AUPNVMED(N,0)),U)
 I 'I Q 0
 S G=0
 S T=$O(^ATXAX("B","DM AUDIT ASPIRIN DRUGS",0))
 I T,$D(^ATXAX(T,21,"B",I)) Q "1^ASA"
 S T=$O(^ATXAX("B","BGP CMS WARFARIN MEDS",0))
 I T,$D(^ATXAX(T,21,"B",I)) Q "1^WARF"
 S T=$O(^ATXAX("B","BGP ANTI-PLATELET DRUGS",0))
 I T,$D(^ATXAX(T,21,"B",I)) Q "1^ANTI-PLT"
 S G=$P(^PSDRUG(I,0),U,2)
 I G="BL700" Q "1^ANTI-PLT"
 I $P(^PSDRUG(I,0),U)["WARFARIN" Q "1^WARF"
 I $$VAPI^BGP7D81(I,$O(^ATXAX("B","BGP CMS WARFARIN VAPI",0))) Q "1^WARF"
 Q ""
