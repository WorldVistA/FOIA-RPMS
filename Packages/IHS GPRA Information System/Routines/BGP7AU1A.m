BGP7AU1A ; IHS/CMI/LAB - BUILD CRS* FILES ;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
DESC ;----- ROUTINE DESCRIPTION
 ;;
 ;;This routine creates the 5 CRS* files from data uploaded
 ;;from the sites contained in the BGP 11 DATA CURRENT, BGP
 ;;11 DATA BASELINE and BGP 11 DATA PREVIOUS files.
 ;;$$END 
 N I,X F I=1:1 S X=$P($T(DESC+I),";;",2) Q:X["$$END"  D EN^DDIOL(X)
 Q
 ;
EN(BGPBEGDT,BGPENDDT,BGPEND,BGPAUF) ;EP
 ;EP -- MAIN ENTRY POINT
 ;
 ;      INPUT:
 ;      BGPBEGDT  =  BEGIN DATE OF BGP 11 DATA FILE ENTRIES
 ;
 N BGPPTYPE,BGPRTYPE,BGPBD,BGPED,BGPPBD,BGPPED,BGPBBD,BGPBED,BGPDELT
 N BGPNODEL,BGPAREAA,BGPEXCEL,BGPRPT,BGPROT,BGPINDG,BGPUF,BGPSUL,BGPF
 N BGPNOW,BGPASUF,X,BGPC
 ;
 D ^XBKVAR
 D HOME^%ZIS
 ;
 ;SET SOME VARIABLES NEEDED BY THE BGP* ROUTINES:
 S (BGPPTYPE,BGPRTYPE,BGPBD,BGPED,BGPIC,BGPPBD,BGPPED,BGPBBD,BGPBED,BGPDELT)=""
 S BGPNODEL=1 ;USED IN BGP7PARP SO IT WON'T DO SAVEDEL^BGP7PDL
 S BGPAREAA=1
 S BGPEXCEL=1
 S BGPRPT=0
 S BGPROT="D"
 S BGPINDG="G"
 S BGPUF=$P($G(^BGPGP1PM(1,1)),U)
 Q:BGPUF']""
 ;
 D SUL(BGPBEGDT,.BGPEND,.BGPSUL)
 Q:'$D(BGPSUL)
 S BGPC=0,X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  S BGPC=BGPC+1
 S BGPEND=BGPEND+17000000
 ;
 S BGPNOW=$$NOW^XLFDT()
 S BGPNOW=$P(BGPNOW,".")_"."_$$RZERO^BGP7UTL($P(BGPNOW,".",2),6)
 ;
 S BGPASUF=$P(^AUTTLOC(DUZ(2),0),U,10)
 ;
 S X=0 F  S X=$O(^BGPINDG("GPRA",1,X)) Q:X'=+X  S BGPIND(X)=""
 ;
 S X=".TXT"
 S (BGPAUF(1),BGPFGNT1)="BGPGP"_BGPEND_"CRSGPRANT1"_X
 S (BGPAUF(2),BGPFGNT2)="BGPGP"_BGPEND_"CRSGPRANT2"_X
 S (BGPAUF(3),BGPFGNT3)="BGPGP"_BGPEND_"CRSGPRANT3"_X
 S (BGPAUF(4),BGPFGNT4)="BGPGP"_BGPEND_"CRSGPRANT4"_X
 S (BGPAUF(5),BGPFGNT5)="BGPGP"_BGPEND_"CRSGPRANT5"_X
 S (BGPAUF(6),BGPFDEV1)="BGPGP"_BGPEND_"CRSGPRADEVNT1"_X
 S (BGPAUF(7),BGPFDEV2)="BGPGP"_BGPEND_"CRSGPRADEVNT2"_X
 S (BGPAUF(8),BGPFDEV3)="BGPGP"_BGPEND_"CRSGPRADEVNT3"_X
 S (BGPAUF(9),BGPFDEV4)="BGPGP"_BGPEND_"CRSGPRADEVNT4"_X
 ;
 S BGPAUEX=1
 D SETEXCEL^BGP7DP
 D PRINT^BGP7PARP
 D GNT1^BGP7UTL
 S X=".TXT"
 ;now do it again with different filenames
 K BGPEI,BGPEI2,BGPEIDV1,BGPEIDV2,BGPEIDV3,BGPONN1,BGPONN2,BGPONN3,BGPONN4,BGPONN5
 S BGPFGNT1="CRSGPRANT1"_$P(^AUTTLOC(DUZ(2),0),U,10)_BGPEND_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 S BGPFGNT2="CRSGPRANT2"_$P(^AUTTLOC(DUZ(2),0),U,10)_BGPEND_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 S BGPFGNT3="CRSGPRANT3"_$P(^AUTTLOC(DUZ(2),0),U,10)_BGPEND_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 S BGPFGNT4="CRSGPRANT4"_$P(^AUTTLOC(DUZ(2),0),U,10)_BGPEND_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 S BGPFDEV1="CRSGPRADEVNT1"_$P(^AUTTLOC(DUZ(2),0),U,10)_BGPEND_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 S BGPFDEV2="CRSGPRADEVNT2"_$P(^AUTTLOC(DUZ(2),0),U,10)_BGPEND_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 S BGPFDEV3="CRSGPRADEVNT3"_$P(^AUTTLOC(DUZ(2),0),U,10)_BGPEND_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 S BGPFDEV4="CRSGPRADEVNT4"_$P(^AUTTLOC(DUZ(2),0),U,10)_BGPEND_$$D^BGP7UTL(BGPNOW)_"_"_$$LZERO^BGP7UTL(BGPC,6)_".TXT"
 ;
 S BGPAUEX=1
 D SETEXCEL^BGP7DP
 D PRINT^BGP7PARP
 D GNT1^BGP7UTL
 D KILL
 Q
SUL(BGPBEGDT,BGPEND,BGPSUL) ;
 ;----- RETURNS BGPSUL ARRAY CONTAINING ENTRIES FROM 
 ;      BGP 11 DATA FILE CONTAINING THE BEGINNING DATE
 ;      
 ;      INPUT:
 ;      BGPBEGDT  =  BEGIN DATE
 ;
 N BGPD0
 ;
 S BGPD0=0
 F  S BGPD0=$O(^BGPGPDCG("B",BGPBEGDT,BGPD0)) Q:'BGPD0  D
 . S BGPSUL(BGPD0)=""
 . S BGPEND=$P($G(^BGPGPDCG(BGPD0,0)),U,2)
 Q
KILL ;KILL VARIABLES SET BY BGP* ROUTINES
 ;
 K A,B,BGPA,BGPBLD,BGPBLN,BGPBLP,BGPC,BGPCHSN,BGPCHSO,BGPCYD
 K BGPCYN,BGPCYP,BGPDAB,BGPDAC,BGPDAP,BGPDENP,BGPDF,BGPEC
 K BGPGPG,BGPHD1,BGPHD2,BGPHPG,BGPIC,BGPIFTR,BGPIIDEL,BGPIND
 K BGPIOSL,BGPLCNT,BGPNF,BGPNODE,BGPNP,BGPONN1,BGPONN2,BGPONN3
 K BGPONN4,BGPORDP,BGPORDP1,BGPORDSE,BGPORXX,BGPP,BGPPC,BGPPC1
 K BGPPC2,BGPPP1,BGPPRD,BGPPRN,BGPPRP,BGPQHDR,BGPQUIT,BGPSDPD
 K BGPURBN,BGPURBO,BGPX,BGPX1,BGPXN,BGPXX,BGPXY,BGPY,BGPZ,C,D,E
 K F,G,H,I,L,N,O,P,V,Y
 Q
