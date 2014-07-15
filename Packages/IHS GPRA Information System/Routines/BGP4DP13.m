BGP4DP13 ; IHS/CMI/LAB - print ind 19 AGE DIST ;
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;
 ;
I1AGE ;EP  special age tallies
 Q:$G(BGPSUMON)
 Q:BGPINDJ="I"
 S BGPHD1="ACTIVE CLINICAL TOBACCO USERS/IN CESSATION",BGPHD2="AC Tob Users/in Cess"
 D:'$G(BGPSUMON) HEADER^BGP4DPH Q:BGPQUIT  W !,^BGPINDJ(BGPIC,53,1,0) W:$D(^BGPINDJ(BGPIC,53,2,0)) !,^BGPINDJ(BGPIC,53,2,0)  D H4^BGP4DPH
 K BGPDAC,BGPDAP,BGPDAB S (C,D,E,F,G)=0 F BGPX="114.4.1","114.4.2","114.4.3" D I1AGE1,I1AGE2,I1AGE4
 D I1AGEP
 Q:BGPQUIT
 S BGPHD1="MALE ACTIVE CLINICAL TOBACCO USERS/IN CESSATION",BGPHD2="Male AC Tob Users/in Cess"
 D:'$G(BGPSUMON) HEADER^BGP4DPH Q:BGPQUIT  W !,^BGPINDJ(BGPIC,53,1,0) W:$D(^BGPINDJ(BGPIC,53,2,0)) !,^BGPINDJ(BGPIC,53,2,0)  D H4^BGP4DPH
 K BGPDAC,BGPDAP,BGPDAB S (D,C,E,F,G)=0 F BGPX="114.5.1","114.5.2","114.5.3" D I1AGE1,I1AGE2,I1AGE4
 D I1AGEP
 Q:BGPQUIT
FEM ;
 S BGPHD1="FEMALE ACTIVE CLINICAL TOBACCO USERS/IN CESSATION",BGPHD2="Female AC Tob Users/in Cess"
 D:'$G(BGPSUMON) HEADER^BGP4DPH Q:BGPQUIT  W !,^BGPINDJ(BGPIC,53,1,0) W:$D(^BGPINDJ(BGPIC,53,2,0)) !,^BGPINDJ(BGPIC,53,2,0)  D H4^BGP4DPH
 K BGPDAC,BGPDAP,BGPDAB S (C,D,E,F,G)=0 F BGPX="114.6.1","114.6.2","114.6.3" D I1AGE1,I1AGE2,I1AGE4
 D I1AGEP
 Q
I1AGE1 ;
 ;gather up all #'s
 S C=C+1
 S BGPF=BGPX_"A" S BGPPC=$O(^BGPINDJC("OR",BGPF,0))
 S BGPDF=$P(^BGPINDJC(BGPPC,0),U,8)
 S BGPNP=$P(^DD(90552.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U)=$$V^BGP4DP1C(1,BGPRPT,N,P)
 S $P(BGPDAP(C),U)=$$V^BGP4DP1C(2,BGPRPT,N,P)
 S $P(BGPDAB(C),U)=$$V^BGP4DP1C(3,BGPRPT,N,P)
 ;set 2nd piece to numerator and 3rd to %
 S BGPNF=$P(^BGPINDJC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90552.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(C),U,2)=$$V^BGP4DP1C(1,BGPRPT,N,P),$P(BGPDAC(C),U,3)=$S($P(BGPDAC(C),U,1):($P(BGPDAC(C),U,2)/$P(BGPDAC(C),U)*100),1:"")
 S $P(BGPDAP(C),U,2)=$$V^BGP4DP1C(2,BGPRPT,N,P),$P(BGPDAP(C),U,3)=$S($P(BGPDAP(C),U,1):($P(BGPDAP(C),U,2)/$P(BGPDAP(C),U)*100),1:"")
 S $P(BGPDAB(C),U,2)=$$V^BGP4DP1C(3,BGPRPT,N,P),$P(BGPDAB(C),U,3)=$S($P(BGPDAB(C),U,1):($P(BGPDAB(C),U,2)/$P(BGPDAB(C),U)*100),1:"")
 Q
I1AGE2 ;
 S D=D+1
 S BGPF=BGPX_"B" S BGPPC=$O(^BGPINDJC("OR",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPINDJC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90552.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(D),U,4)=$$V^BGP4DP1C(1,BGPRPT,N,P),$P(BGPDAC(D),U,5)=$S($P(BGPDAC(D),U,1):($P(BGPDAC(D),U,4)/$P(BGPDAC(D),U)*100),1:"")
 S $P(BGPDAP(D),U,4)=$$V^BGP4DP1C(2,BGPRPT,N,P),$P(BGPDAP(D),U,5)=$S($P(BGPDAP(D),U,1):($P(BGPDAP(D),U,4)/$P(BGPDAP(D),U)*100),1:"")
 S $P(BGPDAB(D),U,4)=$$V^BGP4DP1C(3,BGPRPT,N,P),$P(BGPDAB(D),U,5)=$S($P(BGPDAB(D),U,1):($P(BGPDAB(D),U,4)/$P(BGPDAB(D),U)*100),1:"")
 Q
I1AGE3 ;
 Q
 S E=E+1
 S BGPF=BGPX_"C" S BGPPC=$O(^BGPINDJC("OR",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPINDJC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90552.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(E),U,6)=$$V^BGP4DP1C(1,BGPRPT,N,P),$P(BGPDAC(E),U,7)=$S($P(BGPDAC(E),U,1):($P(BGPDAC(E),U,6)/$P(BGPDAC(E),U)*100),1:"")
 S $P(BGPDAP(E),U,6)=$$V^BGP4DP1C(2,BGPRPT,N,P),$P(BGPDAP(E),U,7)=$S($P(BGPDAP(E),U,1):($P(BGPDAP(E),U,6)/$P(BGPDAP(E),U)*100),1:"")
 S $P(BGPDAB(E),U,6)=$$V^BGP4DP1C(3,BGPRPT,N,P),$P(BGPDAB(E),U,7)=$S($P(BGPDAB(E),U,1):($P(BGPDAB(E),U,6)/$P(BGPDAB(E),U)*100),1:"")
 Q
I1AGE4 ;
 S F=F+1
 S BGPF=BGPX_"C" S BGPPC=$O(^BGPINDJC("OR",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPINDJC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90552.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(F),U,8)=$$V^BGP4DP1C(1,BGPRPT,N,P),$P(BGPDAC(F),U,9)=$S($P(BGPDAC(F),U,1):($P(BGPDAC(F),U,8)/$P(BGPDAC(F),U)*100),1:"")
 S $P(BGPDAP(F),U,8)=$$V^BGP4DP1C(2,BGPRPT,N,P),$P(BGPDAP(F),U,9)=$S($P(BGPDAP(F),U,1):($P(BGPDAP(F),U,8)/$P(BGPDAP(F),U)*100),1:"")
 S $P(BGPDAB(F),U,8)=$$V^BGP4DP1C(3,BGPRPT,N,P),$P(BGPDAB(F),U,9)=$S($P(BGPDAB(F),U,1):($P(BGPDAB(F),U,8)/$P(BGPDAB(F),U)*100),1:"")
 Q
I1AGE5 ;
 S G=G+1
 S BGPF=BGPX_"E" S BGPPC=$O(^BGPINDJC("OR",BGPF,0))
 ;set 4th piece to numerator and 5th to %
 S BGPNF=$P(^BGPINDJC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90552.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(G),U,10)=$$V^BGP4DP1C(1,BGPRPT,N,P),$P(BGPDAC(G),U,11)=$S($P(BGPDAC(G),U,1):($P(BGPDAC(G),U,10)/$P(BGPDAC(G),U)*100),1:"")
 S $P(BGPDAP(G),U,10)=$$V^BGP4DP1C(2,BGPRPT,N,P),$P(BGPDAP(G),U,11)=$S($P(BGPDAP(G),U,1):($P(BGPDAP(G),U,10)/$P(BGPDAP(G),U)*100),1:"")
 S $P(BGPDAB(G),U,10)=$$V^BGP4DP1C(3,BGPRPT,N,P),$P(BGPDAB(G),U,11)=$S($P(BGPDAB(G),U,1):($P(BGPDAB(G),U,10)/$P(BGPDAB(G),U)*100),1:"")
 Q
I1AGEP ;
 W !,"CURRENT REPORT PERIOD"
 W !,BGPHD2
 S T=33 F X=1:1:3 S V=$P(BGPDAC(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !!,"# w/tobacco cessation counseling",!?2,"or RX for cessation aid-",!?2,"No Refusals"
 S T=33 F X=1:1:3 S V=$P(BGPDAC(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ tobacco cessation counseling",!?2,"or Rx for cessation aid-",!?2,"No Refusals"
 S T=32 F X=1:1:3 S V=$P(BGPDAC(X),U,3) W ?T,$J(V,6,1) S T=T+12
 W !!,"# who quit"
 S T=33 F X=1:1:3 S V=$P(BGPDAC(X),U,4) W ?T,$$C(V,0,6) S T=T+12
 W !,"% who quit"
 S T=32 F X=1:1:3 S V=$P(BGPDAC(X),U,5) W ?T,$J(V,6,1) S T=T+12
 ;W !!,"A. # in cessation who quit"
 ;S T=33 F X=1:1:3 S V=$P(BGPDAC(X),U,6) W ?T,$$C(V,0,6) S T=T+12
 ;W !,"A. % in cessation who quit"
 ;S T=32 F X=1:1:3 S V=$P(BGPDAC(X),U,7) W ?T,$J(V,6,1) S T=T+12
 W !!,"# w/tobacco cessation counseling,",!?2,"Rx for cessation aid or quit-",!?2,"No Refusals"
 S T=33 F X=1:1:3 S V=$P(BGPDAC(X),U,8) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ tobacco cessation counseling,",!?2,"Rx for cessation aid or quit-",!?2,"No Refusals"
 S T=32 F X=1:1:3 S V=$P(BGPDAC(X),U,9) W ?T,$J(V,6,1) S T=T+12
PR ; 
 D:'$G(BGPSUMON) HEADER^BGP4DPH Q:BGPQUIT  W !,^BGPINDJ(BGPIC,53,1,0) W:$D(^BGPINDJ(BGPIC,53,2,0)) !,^BGPINDJ(BGPIC,53,2,0) D H4^BGP4DPH
 W !,"PREVIOUS YEAR PERIOD"
 W !,BGPHD2
 S T=33 F X=1:1:3 S V=$P(BGPDAP(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !!,"# w/tobacco cessation counseling",!?2,"or RX for cessation aid-",!?2,"No Refusals"
 S T=33 F X=1:1:3 S V=$P(BGPDAP(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ tobacco cessation counseling",!?2,"or Rx for cessation aid-",!?2,"No Refusals"
 S T=32 F X=1:1:3 S V=$P(BGPDAP(X),U,3) W ?T,$J(V,6,1) S T=T+12
 W !!,"# who quit"
 S T=33 F X=1:1:3 S V=$P(BGPDAP(X),U,4) W ?T,$$C(V,0,6) S T=T+12
 W !,"% who quit"
 S T=32 F X=1:1:3 S V=$P(BGPDAP(X),U,5) W ?T,$J(V,6,1) S T=T+12
 ;W !!,"A. # in cessation who quit"
 ;S T=33 F X=1:1:3 S V=$P(BGPDAP(X),U,6) W ?T,$$C(V,0,6) S T=T+12
 ;W !,"A. % in cessation who quit"
 ;S T=32 F X=1:1:3 S V=$P(BGPDAP(X),U,7) W ?T,$J(V,6,1) S T=T+12
 W !!,"# w/tobacco cessation counseling,",!?2,"Rx for cessation aid or quit-",!?2,"No Refusals"
 S T=33 F X=1:1:3 S V=$P(BGPDAP(X),U,8) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ tobacco cessation counseling,",!?2,"Rx for cessation aid or quit-",!?2,"No Refusals"
 S T=32 F X=1:1:3 S V=$P(BGPDAP(X),U,9) W ?T,$J(V,6,1) S T=T+12
 ;percentage changes
 W !!,"CHANGE FROM PREV YR %"
 W !,"w/tobacco cessation counseling",!?2,"or RX for cessation aid-",!?2,"No Refusals"
 S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAP(X),U,3) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 W !,"# who quit"
 S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAP(X),U,5) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 ;W !,"A. # in cessation who quit"
 ;S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,7),O=$P(BGPDAP(X),U,7) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 W !,"# w/tobacco cessation",!?2,"counseling, Rx for cessation aid or quit-",!?2,"No Refusals"
 S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,9),O=$P(BGPDAP(X),U,9) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
BL ;
 D:'$G(BGPSUMON) HEADER^BGP4DPH Q:BGPQUIT  W !,^BGPINDJ(BGPIC,53,1,0) W:$D(^BGPINDJ(BGPIC,53,2,0)) !,^BGPINDJ(BGPIC,53,2,0) D H4^BGP4DPH
 W !,"BASELINE REPORT PERIOD"
 W !,BGPHD2
 S T=33 F X=1:1:3 S V=$P(BGPDAB(X),U) W ?T,$$C(V,0,6) S T=T+12
 W !!,"# w/tobacco cessation counseling",!?2,"or RX for cessation aid-",!?2,"No Refusals"
 S T=33 F X=1:1:3 S V=$P(BGPDAB(X),U,2) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ tobacco cessation counseling",!?2,"or Rx for cessation aid-",!?2,"No Refusals"
 S T=32 F X=1:1:3 S V=$P(BGPDAB(X),U,3) W ?T,$J(V,6,1) S T=T+12
 W !!,"# who quit"
 S T=33 F X=1:1:3 S V=$P(BGPDAB(X),U,4) W ?T,$$C(V,0,6) S T=T+12
 W !,"% who quit"
 S T=32 F X=1:1:3 S V=$P(BGPDAB(X),U,5) W ?T,$J(V,6,1) S T=T+12
 ;W !!,"A. # in cessation who quit"
 ;S T=33 F X=1:1:3 S V=$P(BGPDAB(X),U,6) W ?T,$$C(V,0,6) S T=T+12
 ;W !,"A. % in cessation who quit"
 ;S T=32 F X=1:1:3 S V=$P(BGPDAB(X),U,7) W ?T,$J(V,6,1) S T=T+12
 W !!,"# w/tobacco cessation counseling,",!?2,"Rx for cessation aid or quit-",!?2,"No Refusals"
 S T=33 F X=1:1:3 S V=$P(BGPDAB(X),U,8) W ?T,$$C(V,0,6) S T=T+12
 W !,"% w/ tobacco cessation counseling,",!?2,"Rx for cessation aid or quit-",!?2,"No Refusals"
 S T=32 F X=1:1:3 S V=$P(BGPDAB(X),U,9) W ?T,$J(V,6,1) S T=T+12
 ;percentage changes
 W !!,"CHANGE FROM BASE YR %"
 W !,"w/tobacco cessation counseling",!?2,"or RX for cessation aid-",!?2,"No Refusals"
 S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,3),O=$P(BGPDAB(X),U,3) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 W !,"# who quit"
 S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,5),O=$P(BGPDAB(X),U,5) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 ;W !,"A. # in cessation who quit"
 ;S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,7),O=$P(BGPDAB(X),U,7) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 W !,"# w/tobacco cessation",!?2,"counseling, Rx for cessation aid or quit-",!?2,"No Refusals"
 S T=32 F X=1:1:3 S N=$P(BGPDAC(X),U,9),O=$P(BGPDAB(X),U,9) W ?T,$J($FN((N-O),"+,",1),6) S T=T+12
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X