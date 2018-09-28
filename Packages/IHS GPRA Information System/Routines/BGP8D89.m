BGP8D89 ; IHS/CMI/LAB - measure C 03 Jul 2010 7:05 AM ;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;
PRIMMED ;
 ;
 S (BGPD1,BGPN1)=0
 I 'BGPACTCL S BGPSTOP=1 Q  ;not active clinical pt
 I BGPAGEB<18 S BGPSTOP=1 Q  ;only 18 and older
 ;bgpd1 = TOTAL # OF PRESCRIPTIONS
 ;bgpn1 = # returned to stock
 S (BGPD1,BGPN1)=0
 NEW BGPP,IFN,D,FD,SD,FDS,R
 S SD=$$FMADD^XLFDT(BGPBDATE,-180)
 K ^TMP($J,"A")
 NEW A,B,E,Z,X,D,V,Y,G,M,T,T1
 K BGPMEDS1
 D GETMEDS^BGP8UTL2(DFN,SD,BGPEDATE,,,,,.BGPMEDS1)
 I '$D(BGPMEDS1) Q  ;
 S BGPVALUE="",BGPDX="",BGPNX=""
 ;loop through prescription file and get all chronic meds (defined by taxonomy), array by fill date
 S BGPP=0
 F  S BGPP=$O(BGPMEDS1(BGPP)) Q:BGPP=""  D
 .S M=$P(BGPMEDS1(BGPP),U,4)
 .S D=$P(^AUPNVMED(M,0),U,1)
 .S P=$S($D(^PSRX("APCC",M)):$O(^(M,0)),1:0)
 .I 'P K BGPMEDS1(BGPP) Q  ;NO PRESCRIPTION
 .I '$D(^PSRX(P,0)) K BGPMEDS1(BGPP) Q  ;NO PRESCRIPTION
 .I $P($G(^PSRX(P,"STA")),"^")=13 K BGPMEDS1(BGPP) Q  ;deleted
 .I $E($P(^PSRX(P,0),U,1))="X" K BGPMEDS1(BGPP) Q
 .;get order number and skip if not electronic
 .S O=$P($G(^PSRX(P,"OR1")),U,2)  ;order number
 .I 'O K BGPMEDS1(BGPP) Q
 .S B=$P($G(^OR(100,O,8,1,0)),U,12)
 .I B="" K BGPMEDS1(BGPP) Q  ;Q:B=""
 .I B'=8 K BGPMEDS1(BGPP) Q   ;must be electronic
 .S FD=$$VD^APCLV($P(BGPMEDS1(BGPP),U,5))
 .I FD>BGPEDATE K BGPMEDS1(BGPP) Q
 .I FD<BGPBDATE K BGPMEDS1(BGPP) Q
 .I '$$CHRONIC(D) K BGPMEDS1(BGPP) Q  ;must be from one of these taxonomies
 .;was that another V MED in previous 180 days.
 .K BGPG
 .S %=DFN_"^LAST MED `"_D_";DURING "_$$FMADD^XLFDT(FD,-180)_"-"_$$FMADD^XLFDT(FD,-1),E=$$START1^APCLDF(%,"BGPG(")
 .I $D(BGPG(1)) K BGPMEDS1(BGPP) Q  ;had one 180 prior
 .S BGPD1=BGPD1+1
 .I BGPDX]"" S BGPDX=BGPDX_"; "
 .S BGPDX=BGPDX_BGPD1_") "_$$DATE^BGP8UTL(FD)_" "_$$VAL^XBDIQ1(50,D,.01)
 .I $$UP^XLFSTR($P($G(^AUPNVMED(M,11)),U))["RETURNED TO STOCK" S BGPN1=BGPN1+1 D  Q
 ..I BGPNX]"" S BGPNX=BGPNX_"; "
 ..S BGPNX=BGPNX_BGPD1_") "_$$DATE^BGP8UTL(FD)_" "_$$VAL^XBDIQ1(50,D,.01)_"-RTS"
 S BGPVALUE="AC "_BGPDX_"|||"_BGPNX
 K BGPMEDS1
 Q
NDC(A,B) ;
 ;a is drug ien
 ;b is taxonomy ien
 NEW BGPNDC
 S BGPNDC=$P($G(^PSDRUG(A,2)),U,4)
 I BGPNDC]"",B,$D(^ATXAX(B,21,"B",BGPNDC)) Q 1
 Q 0
CHRONIC(D) ;
 I '$G(D) Q 0
 NEW TM,TN
 S TM=$O(^ATXAX("B","BGP PQA ASTHMA INHALE STER MED",0))
 S TN=$O(^ATXAX("B","BGP PQA ASTHMA INHALE STER NDC",0))
 I $D(^ATXAX(TM,21,"B",D))!($$NDC(D,TN)) Q 1
 S TM=$O(^ATXAX("B","BGP PQA COPD MEDS",0))
 S TN=$O(^ATXAX("B","BGP PQA COPD NDC",0))
 I $D(^ATXAX(TM,21,"B",D))!($$NDC(D,TN)) Q 1
 S TM=$O(^ATXAX("B","BGP PQA DIABETES ALL CLASS",0))
 S TN=$O(^ATXAX("B","BGP PQA DIABETES ALL CLASS NDC",0))
 I $D(^ATXAX(TM,21,"B",D))!($$NDC(D,TN)) Q 1
 S TM=$O(^ATXAX("B","BGP PQA RASA MEDS",0))
 S TN=$O(^ATXAX("B","BGP PQA RASA NDC",0))
 I $D(^ATXAX(TM,21,"B",D))!($$NDC(D,TN)) Q 1
 S TM=$O(^ATXAX("B","BGP PQA STATIN MEDS",0))
 S TN=$O(^ATXAX("B","BGP PQA STATIN NDC",0))
 I $D(^ATXAX(TM,21,"B",D))!($$NDC(D,TN)) Q 1
 Q 0
