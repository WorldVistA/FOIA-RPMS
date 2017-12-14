BUDHUTL3 ;IHS/CMI/LAB - UDS REPORT PROCESS;
 ;;13.0;IHS/RPMS UNIFORM DATA SYSTEM;;OCT 12, 2018;Build 90
EVIDHEPB(P,EDATE) ;
 ;is there HEP B evidence
 ;V POV OR PROBLEM LIST
 NEW X,Y,Z,G,T,S,D,E,R,L,J,ME
 I $$PLTAXND^BUDHDU(P,"BGP IPC HEP B DXS",EDATE,0) Q 1
 I $$IPLSNOND^BUDHDU(P,"T6B IMM EVIDENCE HEP B",EDATE,0) Q 1
 I $$LASTDX^BUDHUTL1(P,"BGP IPC HEP B DXS",$$DOB^AUPNPAT(P),EDATE) Q 1
 ;NOW V POV SNOMED
 ;NOW SNOMED USING ASNC
 S T=$O(^BUDHTSSC("B","T6B IMM EVIDENCE HEP B",0))
 S G=""
 S S=0 F  S S=$O(^BUDHTSSC(T,13,"B",S)) Q:S=""!(G)  D
 .Q:'$D(^AUPNVPOV("ASNC",P,S))
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 I G Q 1
 ;lab tests?
 Q ""  ;NOT SURE YET
DIS(P,EDATE) ;EP
 NEW X,Y,Z,G,T,S,D,E,R,L,J,ME
 I $$PLTAXND^BUDHDU(P,"BGP IPC IMMUNE DISORDERS DXS",EDATE,0) Q 1
 I $$IPLSNOND^BUDHDU(P,"T6B IMM CONTRA IMMUNE SYSTEM",EDATE,0) Q 1
 I $$LASTDX^BUDHUTL1(P,"BGP IPC IMMUNE DISORDERS DXS",$$DOB^AUPNPAT(P),EDATE) Q 1
 ;NOW V POV SNOMED
 ;NOW SNOMED USING ASNC
 S T=$O(^BUDHTSSC("B","T6B IMM CONTRA IMMUNE SYSTEM",0))
 S G=""
 S S=0 F  S S=$O(^BUDHTSSC(T,13,"B",S)) Q:S=""!(G)  D
 .Q:'$D(^AUPNVPOV("ASNC",P,S))
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 Q G
HIV(P,EDATE) ;EP
 NEW X,Y,Z,G,T,S,D,E,R,L,J,ME
 I $$PLTAXND^BUDHDU(P,"BGP IPC HIV DXS",EDATE,0) Q 1
 I $$IPLSNOND^BUDHDU(P,"T6B IMM CONTRA HIV",EDATE,0) Q 1
 I $$LASTDX^BUDHUTL1(P,"BGP IPC HIV DXS",$$DOB^AUPNPAT(P),EDATE) Q 1
 ;NOW V POV SNOMED
 ;NOW SNOMED USING ASNC
 S T=$O(^BUDHTSSC("B","T6B IMM CONTRA HIV",0))
 S G=""
 S S=0 F  S S=$O(^BUDHTSSC(T,13,"B",S)) Q:S=""!(G)  D
 .Q:'$D(^AUPNVPOV("ASNC",P,S))
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 Q G
MNLHT(P,EDATE) ;EP
 NEW X,Y,Z,G,T,S,D,E,R,L,J,ME
 I $$PLTAXND^BUDHDU(P,"BGP IPC LYMPHATIC CANCER DXS",EDATE,0) Q 1
 I $$IPLSNOND^BUDHDU(P,"PXRM BGP IPC LYMPH CANCER",EDATE,0) Q 1
 I $$LASTDX^BUDHUTL1(P,"BGP IPC LYMPHATIC CANCER DXS",$$DOB^AUPNPAT(P),EDATE) Q 1
 ;NOW V POV SNOMED
 ;NOW SNOMED USING ASNC
 S T=$O(^BUDHTSSC("B","PXRM BGP IPC LYMPH CANCER",0))
 S G=""
 S S=0 F  S S=$O(^BUDHTSSC(T,13,"B",S)) Q:S=""!(G)  D
 .Q:'$D(^AUPNVPOV("ASNC",P,S))
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 Q G
ANSNROTA(P,EDATE) ;
 ;V POV OR PROBLEM LIST
 NEW X,Y,Z,G,T,S,D,I
 S (X,Y,I)=0
 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  D
 .Q:'$D(^AUPNPROB(X,0))
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .I $P(^AUPNPROB(X,0),U,13),$P(^AUPNPROB(X,0),U,13)>EDATE Q  ;if there is a doo and it is after report period skip
 .I $P(^AUPNPROB(X,0),U,13)="",$P(^AUPNPROB(X,0),U,8)>EDATE Q  ;entered after report period, skip
 .S S=$$VAL^XBDIQ1(9000011,X,80001)
 .I S=428331000124103 S I=1 Q
 .Q
 I I Q I
 ;NOW V POV SNOMED
 ;NOW SNOMED USING ASNC
 S G="",I=""
 S S="" F  S S=$O(^AUPNVPOV("ASNC",P,S)) Q:S=""!(G)  D
 .S I=0
 .I S=428331000124103 S I=1
 .Q:'I
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 I G Q G
 ;REFUSAL FILE
 S I="" F  S I=$O(^AUPNPREF("AA",P,9002318.4,I)) Q:I=""!(G)  D
 .I I'=428331000124103 Q   ;IF IT'S SNOMED, MUST BE THAT ONE
 .S ID=0 F  S ID=$O(^AUPNPREF("AA",P,9002318.4,I,ID)) Q:ID=""!(G)  D
 ..S D=9999999-$P(ID,".") ;ID
 ..Q:D>EDATE
 ..S G=1
 Q G
SCID(P,EDATE) ;EP
 NEW X,Y,Z,G,T,S,D,E,R,L,J,ME
 I $$PLTAXND^BUDHDU(P,"BGP IPC SCID DXS",EDATE,0) Q 1
 I $$IPLSNOND^BUDHDU(P,"T6B IMM CONTRA SCID",EDATE,0) Q 1
 I $$LASTDX^BUDHUTL1(P,"BGP IPC SCID DXS",$$DOB^AUPNPAT(P),EDATE) Q 1
 ;NOW V POV SNOMED
 ;NOW SNOMED USING ASNC
 S T=$O(^BUDHTSSC("B","T6B IMM CONTRA SCID",0))
 S G=""
 S S=0 F  S S=$O(^BUDHTSSC(T,13,"B",S)) Q:S=""!(G)  D
 .Q:'$D(^AUPNVPOV("ASNC",P,S))
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 Q G
INTUSS(P,EDATE) ;EP
 NEW X,Y,Z,G,T,S,D,E,R,L,J,ME
 I $$PLTAXND^BUDHDU(P,"BGP IPC INTUSSUSCEPTION DXS",EDATE,0) Q 1
 I $$IPLSNOND^BUDHDU(P,"T6B IMM CONTRA INTUSS",EDATE,0) Q 1
 I $$LASTDX^BUDHUTL1(P,"BGP IPC INTUSSUSCEPTION DXS",$$DOB^AUPNPAT(P),EDATE) Q 1
 ;NOW V POV SNOMED
 ;NOW SNOMED USING ASNC
 S T=$O(^BUDHTSSC("B","T6B IMM CONTRA INTUSS",0))
 S G=""
 S S=0 F  S S=$O(^BUDHTSSC(T,13,"B",S)) Q:S=""!(G)  D
 .Q:'$D(^AUPNVPOV("ASNC",P,S))
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..S G=1
 Q G
ANFU(P,BDATE,EDATE) ;EP
 NEW A,B,C,X,Y,Z,T,V,R,G,BUDV,BUDMEDS1,T1
 ;is there a dx
 S X=$$LASTDX^BUDHUTL1(P,"BGP IPC ABOVE NORMAL FU DXS",BDATE,EDATE) I X Q "DX: "_$P(X,U,2)_U_$P(X,U,3)
 ;now check cpts
 S T=$O(^ATXAX("B","BGP IPC ABOVE NORMAL FU CPTS",0))
 I T D  I X]"" Q "CPT: "_$P(X,U,2)_U_$P(X,U,1)
 .S X=$$CPT^BUDHDU(P,BDATE,EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BUDHDU(P,BDATE,EDATE,T,5)
 I X Q X
 ;HOW ABOUT REFERRALS BETWEEN BDATE AND EDATE
 ;GET ALL VISITS
 K BUDV
 S G=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDV")
 S G=""
 S T=$O(^BUDHTSSC("B","PXRM BGP IPC WT ASMT REFER",0))
 S T1=$O(^BUDHTSSC("B","PXRM BGP IPC OVERWEIGHT",0))
 S X=0 F  S X=$O(BUDV(X)) Q:X'=+X!(G)  S Y=$P(BUDV(X),U,5) D
 .Q:'$D(^AUPNVREF("AD",Y))
 .S Z=0 F  S Z=$O(^AUPNVREF("AD",Y,Z)) Q:Z'=+Z!(G)  D
 ..S S=$P($G(^AUPNVREF(Z,0)),U,1) Q:S=""
 ..Q:'$D(^BUDHTSSC(T,13,"B",S))
 ..;NOW GO GET SNOMED REASON
 ..S R=$P($G(^AUPNVREF(Z,0)),U,6)
 ..Q:'R
 ..Q:'$D(^BMCREF(R,0))
 ..S A=0,G="" F  S A=$O(^BMCREF(R,22,"B",A)) Q:A=""!(G)  I $D(^BUDHTSSC(T1,13,"B",A)) S G="Refer: "_S_"/"_A_U_$$VD^APCLV(Y)
 I G]"" Q G
 S G=""
 NEW BUDMEDS1
 D GETMEDS^BUDHUTL2(P,BDATE,EDATE,"BGP IPC ABOVE NORMAL MEDS","",,,.BUDMEDS1,"BGP IPC ABOVE NORMAL RXNORM")
 S X=0,T=0,W="" F  S X=$O(BUDMEDS1(X)) Q:X'=+X!(G]"")  D
 .S Y=$P(BUDMEDS1(X),U,4)  ;vmed ien
 .S V=$P(BUDMEDS1(X),U,5)
 .Q:'$D(^AUPNVMED(Y,0))
 .Q:$$UP^XLFSTR($P($G(^AUPNVMED(Y,11)),U))["RETURNED TO STOCK"
 .S D=$P(^AUPNVMED(Y,0),U,1)  ;drug ien
 .;DAYS SUPPLY MUST BE >0
 .S E=$P(^AUPNVMED(Y,0),U,8) ;date discontinued
 .S S=$P(^AUPNVMED(Y,0),U,7) ;DAYS SUPPLY
 .Q:'S
 .I E,E'>$P(BUDMEDS1(X),U,1) Q  ;at least one day
 .S G="Med "_$$VAL^XBDIQ1(9000010.14,Y,.01)_U_$$VD^APCLV(V)
 I G]"" Q G
 ;NOW V POV FOR SNOMED
 ;NOW SNOMED USING ASNC
 S T=$O(^BUDHTSSC("B","PXRM BGP IPC ABOVE NORM",0))
 S S=0 F  S S=$O(^BUDHTSSC(T,13,"B",S)) Q:S=""!(G)  D
 .Q:'$D(^AUPNVPOV("ASNC",P,S))
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..Q:Y<BDATE
 ..S G="SNOMED: "_S_U_D
 I G]"" Q G
 NEW BUDVS,TIEN,CTR,VIEN,VDATE,X,Y,Z,S,T,BUDPL,C
 S BUDPL=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")
 S TIEN=$O(^BUDHTSSC("B","T6B ADULTWT OVERWT PLAN CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .S C=$$CLINIC^APCLV(VIEN,"C") I C]"",$D(^BUDHTSSC(TIEN,17,"B",C)) S BUDPL="Clinic "_C_U_VDATE Q
 .S X=0 F  S X=$O(^AUPNVPED("AD",VIEN,X)) Q:X'=+X!(BUDPL]"")  D
 ..Q:'$D(^AUPNVPED(X,0))
 ..S T=$$VALI^XBDIQ1(9000010.16,X,.01)
 ..Q:'$D(^AUTTEDT(T,0))
 ..S T=$P(^AUTTEDT(T,0),U,2)
 ..I $P(T,"-",2)="EX"!($P(T,"-",2)="LA")!($P(T,"-",2)="N")!($P(T,"-",2)="DT")!($P(T,"-",2)="MNT") S BUDPL=T_U_VDATE Q
 ..I $P(T,"-",1)="OBS"!($P(T,"-",1)="Z71.3") S BUDPL=T_U_VDATE Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X!(BUDPL]"")  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDHTSSC("AC",Y,TIEN)) S BUDPL="CPT: "_Y_U_VDATE Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X!(BUDPL]"")  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDHTSSC("AC",Y,TIEN)) S BUDPL="CPT/TRAN: "_Y_U_VDATE Q
 .;SNOMED
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X!(BUDPL]"")  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..I Y]"",$D(^BUDHTSSC("AS",Y,TIEN)) S BUDPL="SNOMED: "_Y_U_VDATE Q
 ..S Y=$$VALI^XBDIQ1(9000010.07,X,.01) I $D(^BUDHTSSC("AD",Y,TIEN)) S BUDPL="DX "_$$VAL^XBDIQ1(9000010.07,X,.01)_U_VDATE Q
 .;PROVIDER CODES
 .S X=0 F  S X=$O(^AUPNVPRV("AD",VIEN,X)) Q:X'=+X!(BUDPL]"")  D
 ..Q:'$D(^AUPNVPRV(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.06,X,.01)
 ..Q:Y=""
 ..S Y=$$PROVCLSC^XBFUNC1(Y)
 ..Q:Y=""
 ..I $D(^BUDHTSSC(TIEN,16,"B",Y)) S BUDPL="Prv: "_Y_U_VDATE Q
 I BUDPL]"" Q BUDPL
 ;CHECK PROBLEM LIST FOR SNOMED
 S X=$$PLCL^BUDHDU(P,"T6B ADULTWT PLAN CODES",EDATE,0,BDATE) I X Q "PROBLEM SNOMED "_$P(X,U,2)
 Q ""
BLFU(P,BDATE,EDATE) ;EP
 NEW A,B,C,X,Y,Z,T,V,G,BUDV,BUDMEDS1
 ;is there a dx
 S X=$$LASTDX^BUDHUTL1(P,"BGP IPC BELOW NORMAL FU DXS",BDATE,EDATE) I X]"" Q "DX: "_$P(X,U,2)
 ;now check cpts
 S T=$O(^ATXAX("B","BGP IPC BELOW NORMAL FU CPTS",0))
 I T D  I X]"" Q "CPT: "_$P(X,U,2)_U_$P(X,U,1)
 .S X=$$CPT^BUDHDU(P,BDATE,EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BUDHDU(P,BDATE,EDATE,T,5)
 I X]"" Q X
 ;HOW ABOUT REFERRALS BETWEEN BDATE AND EDATE
 ;GET ALL VISITS
 K BUDV
 S G=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDV")
 S T=$O(^BUDHTSSC("B","PXRM BGP IPC WT ASMT REFER",0))
 S T1=$O(^BUDHTSSC("B","PXRM BGP IPC UNDERWEIGHT",0))
 S X=0 F  S X=$O(BUDV(X)) Q:X'=+X!(G)  S Y=$P(BUDV(X),U,5) D
 .Q:'$D(^AUPNVREF("AD",Y))
 .S Z=0 F  S Z=$O(^AUPNVREF("AD",Y,Z)) Q:Z'=+Z!(G)  D
 ..S S=$P($G(^AUPNVREF(Z,0)),U,1) Q:S=""
 ..Q:'$D(^BUDHTSSC(T,13,"B",S))
 ..;NOW GO GET SNOMED REASON
 ..S R=$P($G(^AUPNVREF(Z,0)),U,6)
 ..Q:'R
 ..Q:'$D(^BMCREF(R,0))
 ..S A=0,G="" F  S A=$O(^BMCREF(R,22,"B",A)) Q:A=""!(G)  I $D(^BUDHTSSC(T1,13,"B",A)) S G="Refer: "_S_"/"_A_U_$$VD^APCLV(Y)
 I G]"" Q G
 ;NOW MEDS
 S G=""
 D GETMEDS^BUDHUTL2(P,BDATE,EDATE,"BGP IPC BELOW NORMAL MEDS","",,,.BUDMEDS1,"BGP IPC BELOW NORMAL RXNORM")
 S X=0,T=0,W="" F  S X=$O(BUDMEDS1(X)) Q:X'=+X!(G)  D
 .S Y=$P(BUDMEDS1(X),U,4)  ;vmed ien
 .S V=$P(BUDMEDS1(X),U,5)
 .Q:'$D(^AUPNVMED(Y,0))
 .Q:$$UP^XLFSTR($P($G(^AUPNVMED(Y,11)),U))["RETURNED TO STOCK"
 .S D=$P(^AUPNVMED(Y,0),U,1)  ;drug ien
 .;DAYS SUPPLY MUST BE >0
 .S E=$P(^AUPNVMED(Y,0),U,8) ;date discontinued
 .S S=$P(^AUPNVMED(Y,0),U,7) ;DAYS SUPPLY
 .Q:'S
 .I E,E'>$P(BUDMEDS1(X),U,1) Q  ;at least one day
 .S G="Med "_$$VAL^XBDIQ1(9000010.14,Y,.01)_U_$$VD^APCLV(V)
 I G]"" Q G
 ;NOW V POV FOR SNOMED
 ;NOW SNOMED USING ASNC
 S T=$O(^BUDHTSSC("B","PXRM BGP IPC BELOW NORM",0))
 S G=""
 S S=0 F  S S=$O(^BUDHTSSC(T,13,"B",S)) Q:S=""!(G)  D
 .Q:'$D(^AUPNVPOV("ASNC",P,S))
 .S D=0 F  S D=$O(^AUPNVPOV("ASNC",P,S,D)) Q:D=""!(G)  D
 ..S Y=9999999-D
 ..Q:Y>EDATE
 ..Q:Y<BDATE
 ..S G="SNOMED: "_S_U_D
 I G]"" Q G
 NEW BUDVS,TIEN,CTR,VIEN,VDATE,X,Y,Z,S,T,BUDPL,C
 S BUDPL=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")
 S TIEN=$O(^BUDHTSSC("B","T6B ADULTWT OVERWT PLAN CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .;S C=$$CLINIC^APCLV(VIEN,"C") I C]"",$D(^BUDHTSSC(TIEN,17,"B",C)) S BUDPL="Clinic "_C_U_VDATE Q
 .S X=0 F  S X=$O(^AUPNVPED("AD",VIEN,X)) Q:X'=+X!(BUDPL]"")  D
 ..Q:'$D(^AUPNVPED(X,0))
 ..S T=$$VALI^XBDIQ1(9000010.16,X,.01)
 ..Q:'$D(^AUTTEDT(T,0))
 ..S T=$P(^AUTTEDT(T,0),U,2)
 ..I $P(T,"-",2)="EX"!($P(T,"-",2)="LA")!($P(T,"-",2)="N")!($P(T,"-",2)="DT")!($P(T,"-",2)="MNT") S BUDPL=T_U_VDATE Q
 ..I $P(T,"-",1)="Z71.3" S BUDPL=T_U_VDATE Q
 .;PROVIDER CODES
 .S X=0 F  S X=$O(^AUPNVPRV("AD",VIEN,X)) Q:X'=+X!(BUDPL]"")  D
 ..Q:'$D(^AUPNVPRV(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.06,X,.01)
 ..Q:Y=""
 ..S Y=$$PROVCLSC^XBFUNC1(Y)
 ..Q:Y=""
 ..I $D(^BUDHTSSC(TIEN,16,"B",Y)) S BUDPL="Prv: "_Y_U_VDATE Q
 I BUDPL]"" Q BUDPL
 Q ""