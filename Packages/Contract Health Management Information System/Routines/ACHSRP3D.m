ACHSRP3D ; IHS/ITSC/PMF - PRINT CHS (57 - DENTAL) FORMS ;
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**13,27**;JUN 11,2001;Build 43
 ;ACHS*3.1*13 11/22/06 IHS/OIT/FCJ PRT POLICY # & COV FR CORRECT FILES
 ;ACHS*3.1*27 12/12/17 IHS.OIT.FCJ NEW MBI AND TEST FOR COV TYPE AND DATES
 ;
 S ACHSSF="",LS=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,"T",ACHSTIEN,0)),U,6),ACHSLCA=$P($G(^(0)),U,7),ACHSTYPE=$P($G(^(0)),U,2)
 S:LS ACHSSF="S"_LS
 S:ACHSLCA ACHSSF="C"_ACHSLCA
 I ACHSTYPE="S" S E(11)=E(7),X=$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,"T",ACHSTIEN,0)),U),E(7)=$E(X,4,5)_"-"_$E(X,6,7)_"-"_$E(X,2,3)
 D KILLNULS^ACHSRP3
TESTPRNT ;EP.
 F I=1:1:ACHSTOPM W !
FACHRN ;
 W !
 W:$D(A(1)) ?ACHSTAB,$E(A(1),1,28)
FROMTO ;
 W:$D(C(4)) ?ACHSTAB+38,C(4)
PONUM ;
 W ?ACHSTAB+54,$S($$PARM^ACHS(2,20)="Y":$S(ACHSTYPV=1:323,ACHSTYPV=2:324,1:325),1:""),?ACHSTAB+62,"0",ACHSORDN,ACHSSF
NAME ;
 W !
 W:$D(A(2)) ?ACHSTAB,A(2)
DCR ;
 I $$PARM^ACHS(2,18)="Y" W ?ACHSTAB+67,"(",ACHSDCR,")"
PTADRS ;
 W !
 W:$D(A(3)) ?ACHSTAB,A(3)
SIG ;
 W ?ACHSTAB+37,ACHSSIG
DT ;
 W ?ACHSTAB+64,E(7)
DOBSEX ;
 W !?ACHSTAB
 W:$D(A(4)) A(4)
COMCODE ;
 W:$D(A(5)) "   ",A(5)
ORDOFF ;
 W !?ACHSTAB+37,$E(B(1),1,25)
SUCODE ;
 W ?ACHSTAB+64,B(4)
AGESEX ;
 W !?ACHSTAB+2
 W:$D(A(4)) $E(A(4),1,8),?ACHSTAB+26,$E(A(4),11)
ORDADRS ;
 W:$D(B(3)) ?ACHSTAB+37,B(3)
DEST ;
 W:$D(D(5)) ?ACHSTAB+64,D(5)
SSV ;
 W !
 I $G(DFN) S X=$$SSV^ACHSTX3(DFN) I "PVX"[X W ?ACHSTAB+11,X
SSN ;
 W !?ACHSTAB+11
 W:$D(A(11)) A(11)
PROV ;
 W ?ACHSTAB+37,$E(D(1),1,23)
PTYPE ;
 I $$PARM^ACHS(2,17)="Y",$D(D(7)) W $S($X<60:" ",1:""),D(7)
EIN ;
 I $D(D(4)) S D(4)=$P(D(4)," ",1) W ?ACHSTAB+62,D(4)
PADRS ;
 W:$D(D(2)) !?ACHSTAB+48,$E(D(2),1,30)
 W:$D(D(3)) !?ACHSTAB+48,$E(D(3),1,30)
CANOBJ ;
 W !?10,$S('$D(ACHSTPRT):$G(F(7))_"  "_$G(F(9))_" SCC: "_$G(F(8)),1:"J123456  99.9Z")
DESC ;
 W !
 W:$D(A(7)) ?ACHSTAB,A(7)
CONTNO ;
 W !
 W:$D(F(6)) ?19,F(6)
OBLGAMT ;
 W ?ACHSTAB+38,E(9)
 I $D(ACHSTPRT) G END
REFTYPE ;
 W !!!!!!
 S ACHSLREF=$E($P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,"T",ACHSTIEN,0)),U,11)_$P($G(^ACHSF(DUZ(2),"D",ACHSDIEN,3)),U,10))
 I $L(ACHSLREF) F I=3:1:7 W !?ACHSTAB+18,$P($T(@ACHSLREF),";",I)
 I ACHSTYPE="C"!(ACHSTYPE="S") W !!!!!!! D CSUPLA^ACHSRP3 G END
 F  Q:$Y=44  W !
MCR ;
 ;ACHS*3.1*27 REWROTE SECTION FOR MBI
 G NO3:'$D(A(9)),MCD:'$D(^AUPNMCR(DFN,0))
 ;NEW MBI AND CHECK FOR "D" COVERAGE AND ELIG DATES
 S ACHSMBI=$$GETMBI^AUPNMBI(DFN,DT,0)
 I +ACHSMBI<1 S ACHSMBI=$P(^AUPNMCR(DFN,0),U,3) I $P(^(0),U,4),$D(^AUTTMCS($P(^(0),U,4),0)) S ACHSMBI=ACHSMBI_$P(^(0),U)
 ;GO THRU 'MEDICARE ELIGIBLE' FILE BUT ONLY PRINTING 1
 S I=0,JJ=0
 F  S I=$O(^AUPNMCR(DFN,11,I)) Q:+I=0  D  Q:JJ=1
 .Q:ACHSEDOS<$P($G(^AUPNMCR(DFN,11,I,0)),U)
 .I $P($G(^AUPNMCR(DFN,11,I,0)),U,2)'="" Q:ACHSEDOS>$P($G(^AUPNMCR(DFN,11,I,0)),U,2)
 .S JJ=1
 .W !?ACHSTAB+15,"MCR:"
 .I $P($G(^AUPNMCR(DFN,11,I,0)),U,3)?1"D" W $P($G(^AUPNMCR(DFN,11,I,0)),U,6)     ;'COVERAGE TYPE'
 .E  W ACHSMBI
 .W ":",$P($G(^AUPNMCR(DFN,11,I,0)),U,3)          ;'COVERAGE TYPE'
 .W ":",$E($P($G(^AUPNMCR(DFN,11,I,0)),U),2,7)     ;'ELIG. DATE'
 .W ":",$E($P($G(^AUPNMCR(DFN,11,I,0)),U,2),2,7)     ;'ELIG. END DATE'
 ;
 ;G NO3:'$D(A(9)),MCD:'$D(^AUPNMCR(DFN,0)),MCD:'$P(^(0),U,3)
 ;W !?ACHSTAB+15,"MCR:",$P($G(^AUPNMCR(DFN,0)),U,3) I $P(^(0),U,4),$D(^AUTTMCS($P(^AUPNMCR(DFN,0),U,4),0)) W $P(^(0),U)
 ;*********LOOP THRU MEDCARE ELIGIBLE FILE
 ;S JJ=0
 ;F I=0:0 S I=$O(^AUPNMCR(DFN,11,I)) Q:+I'=I  S:I>JJ JJ=I
 ;I JJ W ":",$P(^AUPNMCR(DFN,11,JJ,0),U,3),":",$E($P(^(0),U),2,7),":",$E($P(^(0),U,2),2,7)
MCD ;
 ;ACHS*3.1*27 MULT CHANGES TO TEST FOR ELIG DATE
 G RRE:'$D(^AUPNMCD("B",DFN))
 F R=0:0 S R=$O(^AUPNMCD("B",DFN,R)) Q:'R  S X=R
 S JJ=0
 F I=0:0 S I=$O(^AUPNMCD(X,11,I)) Q:+I'=I  D  Q:JJ=1
 .Q:ACHSEDOS<$P(^AUPNMCD(X,11,I,0),U)
 .I $P(^AUPNMCD(X,11,I,0),U,2)="" S JJ=1 Q
 .I ACHSEDOS>$P(^AUPNMCD(X,11,I,0),U,2) Q
 .S JJ=1
 I JJ D
 .W !?ACHSTAB+$S($Y=45:15,1:0),"MCD:",$P(^AUPNMCD(X,0),U,3) I $P(^(0),U,4),$D(^DIC(5,$P(^(0),U,4),0)) W $P(^(0),U,2)
 .W ":",$P(^AUPNMCD(X,11,I,0),U,3),":",$E($P(^(0),U),2,7),":",$E($P(^(0),U,2),2,7)
RRE ;
 ;ACHS*3.1*27 REWROTE SECTION FOR MBI
 G PVT:'$D(^AUPNRRE(DFN,0))
 S JJ=0
 F I=0:0 S I=$O(^AUPNRRE(DFN,11,I)) Q:+I'=I  D  Q:JJ=1
 .Q:ACHSEDOS<$P(^AUPNRRE(DFN,11,I,0),U)
 .I $P(^AUPNRRE(DFN,11,I,0),U,2)="" S JJ=1 Q
 .I ACHSEDOS>$P(^AUPNRRE(DFN,11,I,0),U,2) Q
 .S JJ=1
 G PVT:JJ=0
 W:$Y=44 !
 ;W ?$S($Y=45:ACHSTAB+15,$X'>ACHSTAB:ACHSTAB,1:$X+5),"RRR:" W:$P(^AUPNRRE(DFN,0),U,3) $P(^AUTTRRP($P(^(0),U,3),0),U) W $P(^AUPNRRE(DFN,0),U,4)
 S ACHSMBI=$$GETMBI^AUPNMBI(DFN,DT,0)
 I +ACHSMBI<1 D
 .S ACHSMBI=""
 .S:$P($G(^AUPNRRE(DFN,0)),U,3)'="" ACHSMBI=$P(^AUTTRRP($P(^AUPNRRE(DFN,0),U,3),0),U)
 .S ACHSMBI=ACHSMBI_$P($G(^AUPNRRE(DFN,0)),U,4)  ;PRNT PREFIX FOR OLD NUMBER
 W ?$S($Y=45:ACHSTAB+15,$X'>ACHSTAB:ACHSTAB,1:$X+5),"RRR:",ACHSMBI
 S JJ=0
 F  S JJ=$O(^AUPNRRE(DFN,11,JJ)) Q:JJ'?1N.N  D
 . W ":",$P(^AUPNRRE(DFN,11,JJ,0),U,3),":",$E($P(^(0),U),2,7),":",$E($P(^(0),U,2),2,7)
 .Q
 W !
PVT ;*******LOOP THRU PRIVATE INSURANCE ELIGIBLE FILE
 G NO3:'$D(^AUPNPRVT(DFN,11)),NO3:'$O(^(11,0))
 W:$Y=44 !
 S I=0
 ;ACHS*3.1*27 MULT CHANGES TO TEST FOR ELIG DATES
 F  S I=$O(^AUPNPRVT(DFN,11,I)) Q:I'?1N.N  D
 .S I2=^AUPNPRVT(DFN,11,I,0)
 .Q:ACHSEDOS<$P(I2,U,6)
 .I $P(I2,U,7)'="" Q:ACHSEDOS>($P(I2,U,7))
 .W ?ACHSTAB+$S($Y=45:15,1:0),$E($P(^AUTNINS($P(I2,U),0),U),1,8),":"
 .I I2,$D(^AUPN3PPH($P(I2,U,8),0)) D
 ..W $P(^AUPN3PPH($P(I2,U,8),0),U,4),":"
 ..I $P(^AUPN3PPH($P(I2,U,8),0),U,5) W $P(^AUTTPIC($P(^AUPN3PPH($P(I2,U,8),0),U,5),0),U)
 .W ":",$E($P(I2,U,6),2,7),":",$E($P(I2,U,7),2,7),"  " W:$X>50 !
 ;
NO3 ;
 W:$Y=44 !?ACHSTAB+15,"THIRD PARTY RESOURCES: NONE"
END ;
 W @IOF
 K ACHSLREF
 Q
 ;
G ;;GENERAL REFERRAL: Before providing services other than;examination, radiographs, or emergency services, this;claim form must be returned for predetermination.
E ;;SPECIFIC REFERRAL, TYPE E:  Emergency examination and;treatment not to exceed above obligation.  Services;limited to Levels I-III of the IHS Schedule of Oral;Health Services.
B ;;SPECIFIC REFERRAL, TYPE B:  Examination and treatment;limited to Levels I-III of the IHS Schedule of Oral;Health Services.  Treatment plans exceeding $300 must;be returned for predetermination.
S ;;SPECIFIC REFERRAL, TYPE S:  Specialty Services:  Services;limited to *_____________, not to exceed above obligation.;;*In the above blank, give a brief description of the;services ordered, including ADA code(s), if possible.
L ;;REFERRAL TYPE L:  Authorization for dental laboratory;services for fabrication of _________________________.
