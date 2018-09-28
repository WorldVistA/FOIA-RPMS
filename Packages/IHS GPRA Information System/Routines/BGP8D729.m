BGP8D729 ; IHS/CMI/LAB - measure AHR.A ;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;
 ;
CHD(P,BDATE,EDATE) ;EP
 ;first dx prior to report period
 ;at least 2 visits during report period
 ;at least 2 Chd dxs ever
 I '$$V2^BGP8D1(P,BDATE,EDATE) Q ""  ;not 2 visits during report period
 K ^TMP($J)
 ;check problem list for any not inactive/not deleted problems that have DOO prior to BDATE or date added prior to BDATE
 I $$CHDPL(P,BDATE,EDATE) Q 1  ;if on problem list don't bother with checking all the visits
 I '$$CHDV(P,$$DOB^AUPNPAT(P),$$FMADD^XLFDT(BDATE,-1),0,0) Q ""  ;first dx not prior to report period
 ;GET CHD DIAGNOSES AND SET BY VISIT
 I '$$CHDV(P,$$DOB^AUPNPAT(P),EDATE,1,1) Q ""  ;not two ever
 Q 1
CHDPL(P,BDATE,EDATE)  ;EP - is dx on problem list as not deleted/not inactive
  ;with DOO or date added prior to BDATE.
 NEW T,T1,T2,T3,SN1,SN2,SN3,SN4,T4,T5,SN5,SN6,SN7,SN8
 S T=$O(^ATXAX("B","BGP CHD DXS",0))
 S T1=$O(^ATXAX("B","BGP CABG DXS",0))
 S T2=$O(^ATXAX("B","BGP PCI DXS",0))
 S SN1="PXRM BGP CABG"
 S SN2="PXRM BGP PCI"
PL ;
 NEW X,Y,I,S
 S (X,Y,I)=0
 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(I)  D
 .Q:'$D(^AUPNPROB(X,0))
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .S Y=$P(^AUPNPROB(X,0),U)
 .I BDATE,$P(^AUPNPROB(X,0),U,13)>BDATE Q  ;if there is a doo and it is after report period skip
 .I $P(^AUPNPROB(X,0),U,13)="",BDATE,$P(^AUPNPROB(X,0),U,8)>BDATE Q  ;no doo, entered after report period, skip
 .S S=$$VAL^XBDIQ1(9000011,X,80001)
 .I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,SN1,S)) S I=1 Q
 .I S]"",$D(^XTMP("BGPSNOMEDSUBSET",$J,SN2,S)) S I=1 Q
 .I $$ICD^BGP8UTL2(Y,T,9) S I=1 Q  ;_U_"Problem List: "_$$VAL^XBDIQ1(9000011,X,.01)
 .I $$ICD^BGP8UTL2(Y,T1,9) S I=1 Q  ;_U_"Problem List: "_$$VAL^XBDIQ1(9000011,X,.01)
 .I $$ICD^BGP8UTL2(Y,T2,9) S I=1 Q  ;_U_"Problem List: "_$$VAL^XBDIQ1(9000011,X,.01)
 .Q
 Q I
CHDV(P,BDATE,EDATE,MIN,MINPROC) ;EP
 NEW A,B,E,T,X,G,V,Y,%,G,F,BGPG,BGPCNT,T1,BGPALL
 K BGPALL
 S BGPCNT=0
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S T=$O(^ATXAX("B","BGP CHD DXS",0))
 I 'T G CHDP
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(BGPCNT>MIN)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .;Q:"V"[$P(^AUPNVSIT(V,0),U,3)
 .Q:$P(^AUPNVSIT(V,0),U,6)=""
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(BGPCNT>MIN)  I $D(^AUPNVPOV(Y,0)) D
 ..S %=$P(^AUPNVPOV(Y,0),U)
 ..I $$ICD^BGP8UTL2(%,T,9) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 I BGPCNT>MIN Q 1
CHDP ;NOW CHECK FOR MINPROC
 ;S BGPCNT=0
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!(BGPCNT>MIN)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .;Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .;Q:"V"[$P(^AUPNVSIT(V,0),U,3)
 .Q:$P(^AUPNVSIT(V,0),U,6)=""
 .S T1=$O(^ATXAX("B","BGP PCI DXS",0))
 .S T2=$O(^ATXAX("B","BGP CABG DXS",0))
 .S (D,Y)=0 F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(BGPCNT>MINPROC)  I $D(^AUPNVPOV(Y,0)) D
 ..S %=$P(^AUPNVPOV(Y,0),U)
 ..;I $$ICD^BGP8UTL2(%,T,9) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP8UTL2(%,T1,9) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP8UTL2(%,T2,9) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 .;check for procedure in BGP CABG PROCS
 .S E=$O(^ATXAX("B","BGP CABG PROCS",0))
 .S F=$O(^ATXAX("B","BGP PCI CM PROCS",0))
 .S Y=0 F  S Y=$O(^AUPNVPRC("AD",V,Y)) Q:Y'=+Y!(BGPCNT>MINPROC)  D
 ..Q:'$D(^AUPNVPRC(Y,0))
 ..I $$ICD^BGP8UTL2($P(^AUPNVPRC(Y,0),U,1),E,0) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP8UTL2($P(^AUPNVPRC(Y,0),U,1),F,0) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1
 .;now check cpts
 .S E=$O(^ATXAX("B","BGP CABG CPTS",0))
 .S F=$O(^ATXAX("B","BGP PCI CPTS",0))
 .;S G=$O(^ATXAX("B","BGP PTCA CPTS",0))
 .S Y=0 F  S Y=$O(^AUPNVCPT("AD",V,Y)) Q:Y'=+Y!(BGPCNT>MINPROC)  D
 ..Q:'$D(^AUPNVCPT(Y,0))
 ..I $$ICD^BGP8UTL2($P(^AUPNVCPT(Y,0),U,1),E,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP8UTL2($P(^AUPNVCPT(Y,0),U,1),F,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..;I $$ICD^BGP8UTL2($P(^AUPNVCPT(Y,0),U,1),G,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 .;now check TRANS
 .S E=$O(^ATXAX("B","BGP CABG CPTS",0))
 .S F=$O(^ATXAX("B","BGP PCI CPTS",0))
 .;S G=$O(^ATXAX("B","BGP PTCA CPTS",0))
 .S Y=0 F  S Y=$O(^AUPNVTC("AD",V,Y)) Q:Y'=+Y!(BGPCNT>MINPROC)  D
 ..Q:'$D(^AUPNVTC(Y,0))
 ..S I=$P(^AUPNVTC(Y,0),U,7)
 ..Q:I=""
 ..I $$ICD^BGP8UTL2(I,E,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..I $$ICD^BGP8UTL2(I,F,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 ..;I $$ICD^BGP8UTL2(I,G,1) I '$D(BGPALL(V)) S BGPALL(V)="",BGPCNT=BGPCNT+1 Q
 .Q
 I BGPCNT>MIN Q 1
 Q ""
