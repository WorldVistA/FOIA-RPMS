RACTTK14 ; ;07/06/13
 D DE G BEGIN
DE S DIE="^RADPT(D0,""DT"",D1,""P"",",DIC=DIE,DP=70.03,DL=3,DIEL=2,DU="" K DG,DE,DB Q:$O(^RADPT(D0,"DT",D1,"P",DA,""))=""
 I $D(^(0)) S %Z=^(0) S %=$P(%Z,U,3) S:%]"" DE(10)=% S %=$P(%Z,U,28) S:%]"" DE(1)=%,DE(7)=%
 K %Z Q
 ;
W W !?DL+DL-2,DLB_": "
 Q
O D W W Y W:$X>45 !?9
 I $L(Y)>19,'DV,DV'["I",(DV["F"!(DV["K")) G RW^DIR2
 W:Y]"" "// " I 'DV,DV["I",$D(DE(DQ))#2 S X="" W "  (No Editing)" Q
TR R X:DTIME E  S (DTOUT,X)=U W $C(7)
 Q
A K DQ(DQ) S DQ=DQ+1
B G @DQ
RE G PR:$D(DE(DQ)) D W,TR
N I X="" G NKEY:$D(^DD("KEY","F",DP,DIFLD)),A:DV'["R",X:'DV,X:D'>0,A
RD G QS:X?."?" I X["^" D D G ^DIE17
 I X="@" D D G Z^DIE2
 I X=" ",DV["d",DV'["P",$D(^DISV(DUZ,"DIE",DLB)) S X=^(DLB) I DV'["D",DV'["S" W "  "_X
T G M^DIE17:DV,^DIE3:DV["V",P:DV'["S" X:$D(^DD(DP,DIFLD,12.1)) ^(12.1) I X?.ANP D SET I 'DDER X:$D(DIC("S")) DIC("S") I  W:'$D(DB(DQ)) "  "_% G V
 K DDER G X
P I DV["P" S DIC=U_DU,DIC(0)=$E("EN",$D(DB(DQ))+1)_"M"_$E("L",DV'["'") S:DIC(0)["L" DLAYGO=+$P(DV,"P",2) G:DV["*" AST^DIED D NOSCR^DIED S X=+Y,DIC=DIE G X:X<0
 G V:DV'["N" D D I $L($P(X,"."))>24 K X G Z
 I $P(DQ(DQ),U,5)'["$",X?.1"-".N.1".".N,$P(DQ(DQ),U,5,99)["+X'=X" S X=+X
V D @("X"_DQ) K YS
Z K DIC("S"),DLAYGO I $D(X),X'=U D:$G(DE(DW,"INDEX")) SAVEVALS G:'$$KEYCHK UNIQFERR^DIE17 S DG(DW)=X S:DV["d" ^DISV(DUZ,"DIE",DLB)=X G A
X W:'$D(ZTQUEUED) $C(7),"??" I $D(DB(DQ)) G Z^DIE17
 S X="?BAD"
QS S DZ=X D D,QQ^DIEQ G B
D S D=DIFLD,DQ(DQ)=DLB_U_DV_U_DU_U_DW_U_$P($T(@("X"_DQ))," ",2,99) Q
Y I '$D(DE(DQ)) D O G RD:"@"'[X,A:DV'["R"&(X="@"),X:X="@" S X=Y G N
PR S DG=DV,Y=DE(DQ),X=DU I $D(DQ(DQ,2)) X DQ(DQ,2) G RP
R I DG["P",@("$D(^"_X_"0))") S X=+$P(^(0),U,2) G RP:'$D(^(Y,0)) S Y=$P(^(0),U),X=$P(^DD(X,.01,0),U,3),DG=$P(^(0),U,2) G R
 I DG["V",+Y,$P(Y,";",2)["(",$D(@(U_$P(Y,";",2)_"0)")) S X=+$P(^(0),U,2) G RP:'$D(^(+Y,0)) S Y=$P(^(0),U) I $D(^DD(+X,.01,0)) S DG=$P(^(0),U,2),X=$P(^(0),U,3) G R
 X:DG["D" ^DD("DD") I DG["S" S %=$P($P(";"_X,";"_Y_":",2),";") S:%]"" Y=%
RP D O I X="" S X=DE(DQ) G A:'DV,A:DC<2,N^DIE17
I I DV'["I",DV'["#" G RD
 D E^DIE0 G RD:$D(X),PR
 Q
SET N DIR S DIR(0)="SV"_$E("o",$D(DB(DQ)))_U_DU,DIR("V")=1
 I $D(DB(DQ)),'$D(DIQUIET) N DIQUIET S DIQUIET=1
 D ^DIR I 'DDER S %=Y(0),X=Y
 Q
SAVEVALS S @DIEZTMP@("V",DP,DIIENS,DIFLD,"O")=$G(DE(DQ)) S:$D(^("F"))[0 ^("F")=$G(DE(DQ))
 I $D(DE(DW,"4/")) S @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")=""
 E  K @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")
 Q
NKEY W:'$D(ZTQUEUED) "??  Required key field" S X="?BAD" G QS
KEYCHK() Q:$G(DE(DW,"KEY"))="" 1 Q @DE(DW,"KEY")
BEGIN S DNM="RACTTK14",DQ=1
1 S DW="0;28",DV="P70.2'",DU="",DLB="NUCLEAR MED DATA",DIFLD=500
 S DE(DW)="C1^RACTTK14"
 S DU="RADPTN("
 S X=RAIEN702
 S Y=X
 S X=Y,DB(DQ)=1,DE(DW,"4/")="" G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD:X="@",Z
C1 G C1S:$D(DE(1))[0 K DB
 S X=DE(1),DIC=DIE
 X "Q:$D(RAIEN702)  N DA,DIK S DA=X,DIK=""^RADPTN("" D ^DIK"
C1S S X="" G:DG(DQ)=X C1F1 K DB
 S X=DG(DQ),DIC=DIE
 ;
C1F1 Q
X1 Q
2 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=2 S I(2,0)=D2 S I(1,0)=D1 S I(0,0)=D0 S Y(1)=$S($D(^RADPT(D0,"DT",D1,"P",D2,0)):^(0),1:"") S X=$P(Y(1),U,28),X=X S D(0)=+X S X=$S(D(0)>0:D(0),1:"")
 S DGO="^RACTTK15",DC="^70.2^RADPTN(" G DIEZ^DIE0
R2 D DE G A
 ;
3 S DQ=4 ;@75
4 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=4 D X4 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X4 S:'$D(RAIEN702) Y="@80"
 Q
5 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=5 D X5 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X5 S:$O(^RADPTN(+$G(RAIEN702),"NUC",0)) Y="@80"
 Q
6 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=6 D X6 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X6 K RAIEN702
 Q
7 D:$D(DG)>9 F^DIE17,DE S DQ=7,DW="0;28",DV="P70.2'",DU="",DLB="NUCLEAR MED DATA",DIFLD=500
 S DE(DW)="C7^RACTTK14"
 S DU="RADPTN("
 S Y="@"
 S X=Y,DB(DQ)=1 G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD
C7 G C7S:$D(DE(7))[0 K DB
 S X=DE(7),DIC=DIE
 X "Q:$D(RAIEN702)  N DA,DIK S DA=X,DIK=""^RADPTN("" D ^DIK"
C7S S X="" G:DG(DQ)=X C7F1 K DB
 S X=DG(DQ),DIC=DIE
 ;
C7F1 Q
X7 Q
8 S DQ=9 ;@80
9 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=9 D X9 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X9 K RA65
 Q
10 D:$D(DG)>9 F^DIE17,DE S DQ=10,DW="0;3",DV="R*P72'X",DU="",DLB="EXAM STATUS",DIFLD=3
 S DE(DW)="C10^RACTTK14"
 S DU="RA(72,"
 S X=$P(RANEXT,"^")
 S Y=X
 S X=Y,DB(DQ)=1 G:X="" N^DIE17:DV,A I $D(DE(DQ)),DV["I"!(DV["#") D E^DIE0 G A:'$D(X)
 G RD
C10 G C10S:$D(DE(10))[0 K DB
 S X=DE(10),DIC=DIE
 K ^RADPT("AE",+$P($G(^RADPT(DA(2),"DT",DA(1),"P",DA,0)),U),DA(2),DA(1),DA)
 S X=DE(10),DIC=DIE
 K ^RADPT("AS",$E(X,1,30),DA(2),DA(1),DA)
C10S S X="" G:DG(DQ)=X C10F1 K DB
 S X=DG(DQ),DIC=DIE
 N RA,RAIMGTY S RA(0)=$G(^RADPT(DA(2),"DT",DA(1),0)),RAIMGTY=$P($G(^RA(79.2,+$P(RA(0),U,2),0)),U) I RAIMGTY]"" X:('$D(^RA(72,"AA",RAIMGTY,9,X)))&('$D(^RA(72,"AA",RAIMGTY,0,X))) ^DD(70.03,3,9.2)
 S X=DG(DQ),DIC=DIE
 N RA,RAIMGTY S RA(0)=$G(^RADPT(DA(2),"DT",DA(1),0)),RAIMGTY=+$P(RA(0),U,2),RAIMGTY=$P($G(^RA(79.2,RAIMGTY,0)),U) I RAIMGTY]"" S:('$D(^RA(72,"AA",RAIMGTY,9,X)))&('$D(^RA(72,"AA",RAIMGTY,0,X))) ^RADPT("AS",$E(X,1,30),DA(2),DA(1),DA)=""
C10F1 Q
X10 S DIC("S")="N RAIMGTY S RAIMGTY=+$P($G(^RADPT(DA(2),""DT"",DA(1),0)),U,2) I $P(^RA(72,+Y,0),U,7)=RAIMGTY" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X D ^RASTREQ:'$D(RAOVER)&($D(X))
 Q
 ;
11 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=11 D X11 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X11 S RA70033=X
 Q
12 G 1^DIE17