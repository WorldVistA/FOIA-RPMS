BGP8DP1N ; IHS/CMI/LAB - print ind 1 12 Nov 2010 7:38 AM ;
 ;;18.1;IHS CLINICAL REPORTING;;MAY 25, 2018;Build 66
 ;
 ;mta age dist x 2
I1AGE ;EP  special age tallies
 Q:$G(BGPSUMON)
 Q:BGPRTYPE'=4
 I BGPINDG'="S",BGPINDG'="A" Q
 S BGPHD1="Active Clinical Pts 5+ w/Persistent Asthma and LABA Rx",BGPHD2="Active Clinical Pts 5+ w/ Persistent",BGPHD3=" Asthma and LABA Rx"
 K BGPDAC,BGPDAP,BGPDAB
 S (BGPX,BGPDD)=0 F BGPXX=2 D I1AGE1
 D I1AGEP
 Q
I1AGE1 ;
 ;
 I BGPXX=2 S BGPP1=2,BGPP2=3
 S BGPZ="A",BGPX=1 D AGES
 S BGPZ="B",BGPX=2 D AGES
 S BGPZ="C",BGPX=3 D AGES
 S BGPZ="D",BGPX=4 D AGES
 Q
AGES ;
 S BGPF="MTA.C."_BGPXX_BGPZ S BGPPC=$O(^BGPINDRC("C",BGPF,0))
 D
 .S BGPDF=$P(^BGPINDRC(BGPPC,0),U,8)
 .S BGPNP=$P(^DD(90560.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 .S $P(BGPDAC(BGPX),U)=$$V^BGP8DP1C(1,BGPRPT,N,P)
 .S $P(BGPDAP(BGPX),U)=$$V^BGP8DP1C(2,BGPRPT,N,P)
 .S $P(BGPDAB(BGPX),U)=$$V^BGP8DP1C(3,BGPRPT,N,P)
 ;set 2nd piece to numerator and 3rd to %
 S J=$P(BGPF,".",3)
 S Q=1
 S BGPNF=$P(^BGPINDRC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90560.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(BGPX),U,BGPP1)=$$V^BGP8DP1C(1,BGPRPT,N,P),$P(BGPDAC(BGPX),U,BGPP2)=$S($P(BGPDAC(BGPX),U,Q):($P(BGPDAC(BGPX),U,BGPP1)/$P(BGPDAC(BGPX),U,Q)*100),1:"")
 S $P(BGPDAP(BGPX),U,BGPP1)=$$V^BGP8DP1C(2,BGPRPT,N,P),$P(BGPDAP(BGPX),U,BGPP2)=$S($P(BGPDAP(BGPX),U,Q):($P(BGPDAP(BGPX),U,BGPP1)/$P(BGPDAP(BGPX),U,Q)*100),1:"")
 S $P(BGPDAB(BGPX),U,BGPP1)=$$V^BGP8DP1C(3,BGPRPT,N,P),$P(BGPDAB(BGPX),U,BGPP2)=$S($P(BGPDAB(BGPX),U,Q):($P(BGPDAB(BGPX),U,BGPP1)/$P(BGPDAB(BGPX),U,Q)*100),1:"")
 Q
I1AGEP ;
 S BGPYSTP=1
 I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP8DPH Q:BGPQUIT  D W^BGP8DP(^BGPINDR(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDR(BGPIC,53,2,0)) W^BGP8DP(^BGPINDR(BGPIC,53,2,0),0,1,BGPPTYPE) D AH
 I BGPPTYPE'="P" D W^BGP8DP("",0,2,BGPPTYPE) D AH
 D W^BGP8DP("CURRENT REPORT PERIOD",0,1,BGPPTYPE)
 D W^BGP8DP($S(BGPPTYPE="P":BGPHD2,1:BGPHD1),0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP8DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAC" D I1AGEP1
 ;I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP8DPH Q:BGPQUIT  D W^BGP8DP(^BGPINDR(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDR(BGPIC,53,2,0)) W^BGP8DP(^BGPINDR(BGPIC,53,2,0),0,1,BGPPTYPE) D AH
 D W^BGP8DP("",0,2,BGPPTYPE) D AH
 D W^BGP8DP("PREVIOUS REPORT PERIOD",0,1,BGPPTYPE)
 D W^BGP8DP($S(BGPPTYPE="P":BGPHD2,1:BGPHD1),0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP8DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAP" D I1AGEP1
 ;I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP8DPH Q:BGPQUIT  D W^BGP8DP(^BGPINDR(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDR(BGPIC,53,2,0)) W^BGP8DP(^BGPINDR(BGPIC,53,2,0),0,1,BGPPTYPE) D AH
 D W^BGP8DP("",0,2,BGPPTYPE) D AH
 D W^BGP8DP("BASELINE REPORT PERIOD",0,1,BGPPTYPE)
 D W^BGP8DP($S(BGPPTYPE="P":BGPHD2,1:BGPHD1),0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP8DP(BGPHD3,0,1,BGPPTYPE)
 S BGPARR="BGPDAB" D I1AGEP1
 Q
I1AGEP1 ;
 S T=30 F X=1:1:4 S V=$P(@BGPARR@(X),U) D W^BGP8DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+11
 I BGPPTYPE="D" D W^BGP8DP("# w/o 2+ Inhaled Steroid Rx",0,2,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP8DP("# w/o 2+ Inhaled",0,2,BGPPTYPE),W^BGP8DP(" Steroid Rx",0,1,BGPPTYPE)
 S T=31 F X=1:1:4 S V=$P(@BGPARR@(X),U,2) D W^BGP8DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+11
 I BGPPTYPE="D" D W^BGP8DP("% w/o 2+ Inhaled Steroid Rx",0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP8DP("% w/o 2+ Inhaled",0,1,BGPPTYPE),W^BGP8DP(" Steroid Rx",0,1,BGPPTYPE)
 S T=30 F X=1:1:4 S V=$P(@BGPARR@(X),U,3) D W^BGP8DP($S(BGPPTYPE="P":$J(V,6,1),1:$$SB($J(V,6,1))),0,0,BGPPTYPE,X+1,T) S T=T+11
 I BGPARR="BGPDAP"!(BGPARR="BGPDAB") D
 .D W^BGP8DP("CHANGE FROM "_$S(BGPARR="BGPDAP":"PREVIOUS YR %",1:"BASELINE YR %"),0,2,BGPPTYPE)
 .I BGPPTYPE="P" D W^BGP8DP("# w/o 2+ Inhaled",0,1,BGPPTYPE) S L=" Steroid Rx",P=3 D PBY
 .I BGPPTYPE="D" S L="# w/o 2+ Inhaled Steroid Rx",P=3 D PBY
 Q
PBY ;
 D W^BGP8DP(L,0,1,BGPPTYPE)
 S T=30 F X=1:1:4 S N=$P(BGPDAC(X),U,P),O=$P(@BGPARR@(X),U,3) S:N="" N=0 S:O="" O=0 S Y=$S(BGPPTYPE="P":$J($FN((N-O),"+,",1),6),1:$$SB($J((N-O),6,1))) D W^BGP8DP(Y,0,0,BGPPTYPE,X+1,T) S T=T+11
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
AH ;EP
 Q:$G(BGPSUMON)
 D W^BGP8DP(BGPHD1,1,2,BGPPTYPE)
 D W^BGP8DP(" 5-14",0,1,BGPPTYPE,2,34)
 D W^BGP8DP("15-34",0,0,BGPPTYPE,3,45)
 D W^BGP8DP("35-64",0,0,BGPPTYPE,4,56)
 D W^BGP8DP("65+",0,0,BGPPTYPE,5,67)
 Q
SB(X) ;EP - Strip
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X