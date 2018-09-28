BGP8ULF ; IHS/CMI/LAB - UPLOAD AREA FILES ; 27 Jul 2018  11:10 AM
 ;;18.1;IHS CLINICAL REPORTING;**1**;MAY 25, 2018;Build 65
 ;
 ;
 W:$D(IOF) @IOF
 W !,"This option is used to upload a SU's 2018 CRS data.",!,"You must specify the directory in which the CRS 2018 data file resides",!,"and then enter the filename of the data.",!
FILE ;
 D HOME^%ZIS
DIR ;
 K DIR
 S BGPDIR=""
 S DIR(0)="FO^3:50",DIR("A")="Enter directory path (i.e. /usr/spool/uucppublic/)" K DA D ^DIR K DIR
 I $D(DIRUT) W !!,"Directory not entered!!  Bye." G EOJ
 I Y="" W !!,"Directory not entered!! Bye." G EOJ
 S BGPDIR=Y
FILENAME ;
 W !!
 S BGPFILE=""
 S DIR(0)="FO^2:30",DIR("A")="Enter filename w /ext (i.e. BG"_$$FV^BGP8BAN()_"101201.5)" K DA D ^DIR K DIR
 G:$D(DIRUT) DIR
 I Y="" G DIR
 S BGPJFN="BG"_$$FV^BGP8BAN()
 I $E($$UP^XLFSTR(Y),1,5)'=BGPJFN W !!,"Filename must begin with BG"_$$FV^BGP8BAN() G FILENAME
 S BGPFILE=Y
 W !,"Directory=",BGPDIR,"  ","File=",BGPFILE
 D READF
 G FILENAME
READF ;EP read file
 NEW Y,X,I,BGPC
 S BGPC=1
 S Y=$$OPEN^%ZISH(BGPDIR,BGPFILE,"R")
 I Y W !,*7,"CANNOT OPEN (OR ACCESS) FILE '",BGPDIR,BGPFILE,"'." G EOJ
 KILL ^TMP("BGPUPL",$J)
 F I=1:1 U IO R X:DTIME S X=$$STRIP(X) Q:X=""  S ^TMP("BGPUPL",$J,BGPC,0)=X,BGPC=BGPC+1 Q:$$STATUS^%ZISH=-1
 D ^%ZISC
 W !!,"All done reading file",!
PROC ;
 I $P(BGPFILE,".",2)["EL" D PROCEL Q
 I $P(BGPFILE,".",2)["PED" D PROCPED Q
 W !,"Processing",!
 S BGP0=$P($G(^TMP("BGPUPL",$J,1,0)),"|",9)
 S Q=""
 F X=1:1:9 I $P(BGP0,U,X)="" S Q=1
 I Q W !!,"File is corrupt, the site will need to re-run the report." K ^TMP("BGPUPL",$J) G EOJ
 S BGPG=$P($G(^TMP("BGPUPL",$J,1,0)),"|")
 F X=1:1:14,21,22 S Y="BGP"_X,@Y=$P(BGP0,U,X)
 I BGP21="" S BGP21=$$VER^BGP8BAN()
 ;find existing entry and if exists, delete it
 S (X,BGPOIEN)=0 F  S X=$O(^BGPGPDCR(X)) Q:X'=+X  D
 .I '$D(^BGPGPDCR(X,0)) K ^BGPGPDCR(X) Q
 .S Y=^BGPGPDCR(X,0)
 .Q:$P(Y,U)'=BGP1
 .Q:$P(Y,U,2)'=BGP2
 .Q:$P(Y,U,3)'=BGP3
 .Q:$P(Y,U,4)'=BGP4
 .Q:$P(Y,U,5)'=BGP5
 .Q:$P(Y,U,6)'=BGP6
 .Q:$P(Y,U,8)'=BGP8
 .Q:$P(Y,U,9)'=BGP9
 .Q:$P(Y,U,10)'=BGP10
 .Q:$P(Y,U,11)'=BGP11
 .Q:$P(Y,U,12)'=BGP12
 .Q:$P(Y,U,14)'=BGP14
 .Q:$P(Y,U,21)'=BGP21
 .Q:$P(Y,U,22)'=BGP22
 .S BGPOIEN=X
 D ^XBFMK
 I BGPOIEN S DA=BGPOIEN,DIK="^BGPGPDCR(" D ^DIK S DA=BGPOIEN,DIK="^BGPGPDPR(" D ^DIK S DA=BGPOIEN,DIK="^BGPGPDBR(" D ^DIK
 ;add entry
 L +^BGPGPDCR:10 I '$T W !!,"unable to lock global. TRY LATER" D EOJ Q
 L +^BGPGPDPR:10 I '$T W !!,"unable to lock global. TRY LATER" D EOJ Q
 L +^BGPGPDBR:10 I '$T W !!,"unable to lock global. TRY LATER" D EOJ Q
 D GETIEN^BGP8UTL
 I 'BGPIEN W !!,"error in file creation...call programmer." D EOJ Q
CY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90560.03,DIC="^BGPGPDCR(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 W !,"error uploading file......" H 4 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPGPDCR"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPGPDCR(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPGPDCR(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPGPDCR(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPGPDCR(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPGPDCR(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPGPDCR(" D IX1^DIK
PY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90560.04,DIC="^BGPGPDPR(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 W !,"error uploading file......" H 4 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPGPDPR"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPGPDPR(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPGPDPR(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPGPDPR(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPGPDPR(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPGPDPR(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPGPDPR(" D IX1^DIK
BY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90560.05,DIC="^BGPGPDBR(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 W !,"error uploading file......" H 4 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPGPDBR"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPGPDBR(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPGPDBR(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPGPDBR(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPGPDBR(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPGPDBR(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPGPDBR(" D IX1^DIK
 W !,"Data uploaded."
 D EOJ
 Q
EOJ ;EP
 L -^BGPGPDCR
 L -^BGPGPDPR
 L -^BGPGPDBR
 L -^BGPEDLCR
 L -^BGPEDLPR
 L -^BGPEDLBR
 L -^BGPPEDCR
 L -^BGPPEDPR
 L -^BGPPEDBR
 D EOP^BGP8DH
 K IOPAR
 D HOME^%ZIS
 K X,X1,X2,X3,X4,X5,X6
 K A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,V,W,X,Y,Z
 K N,N1,N2,N3,N4,N5,N6
 K DIC,DA,X,Y,%Y,%,BGPJ,BGPX,BGPTEXT,BGPLINE,BGP
 K BGP1,BGP2,BGP3,BGP4,BGP8,BGP8,BGP8,BGP8,BGP9,BGP10,BGP11,BGP12,BGP13,BGP14,BGP21
 Q
STRIP(Z) ;REMOVE CONTROLL CHARACTERS
 NEW I
 F I=1:1:$L(Z) I (32>$A($E(Z,I))) S Z=$E(Z,1,I-1)_""_$E(Z,I+1,999)
 Q Z
 ;
PROCEL ;
 W !,"Processing",!
 S BGP0=$P($G(^TMP("BGPUPL",$J,1,0)),"|",9)
 S BGPG=$P($G(^TMP("BGPUPL",$J,1,0)),"|")
 F X=1:1:14 S Y="BGP"_X,@Y=$P(BGP0,U,X)
 ;find existing entry and if exists, delete it
 S (X,BGPOIEN)=0 F  S X=$O(^BGPEDLCR(X)) Q:X'=+X  D
 .I '$D(^BGPEDLCR(X,0)) K ^BGPEDLCR(X) Q
 .S Y=^BGPEDLCR(X,0)
 .Q:$P(Y,U)'=BGP1
 .Q:$P(Y,U,2)'=BGP2
 .Q:$P(Y,U,3)'=BGP3
 .Q:$P(Y,U,4)'=BGP4
 .Q:$P(Y,U,5)'=BGP5
 .Q:$P(Y,U,6)'=BGP6
 .Q:$P(Y,U,8)'=BGP8
 .Q:$P(Y,U,9)'=BGP9
 .Q:$P(Y,U,10)'=BGP10
 .Q:$P(Y,U,11)'=BGP11
 .Q:$P(Y,U,12)'=BGP12
 .Q:$P(Y,U,14)'=BGP14
 .S BGPOIEN=X
 D ^XBFMK
 I BGPOIEN S DA=BGPOIEN,DIK="^BGPEDLCR(" D ^DIK S DA=BGPOIEN,DIK="^BGPEDLPR(" D ^DIK S DA=BGPOIEN,DIK="^BGPEDLBR(" D ^DIK
 ;add entry
 L +^BGPEDLCR:10 I '$T W !!,"unable to lock global. TRY LATER" D EOJ Q
 L +^BGPEDLPR:10 I '$T W !!,"unable to lock global. TRY LATER" D EOJ Q
 L +^BGPEDLBR:10 I '$T W !!,"unable to lock global. TRY LATER" D EOJ Q
 D GETIEN^BGP8EUTL
 I 'BGPIEN W !!,"error in file creation...call programmer." D EOJ Q
ELCY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90561.03,DIC="^BGPEDLCR(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 W !,"error uploading file......" H 4 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPEDLCR"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPEDLCR(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPEDLCR(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPEDLCR(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPEDLCR(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPEDLCR(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPEDLCR(" D IX1^DIK
ELPY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90561.04,DIC="^BGPEDLPR(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 W !,"error uploading file......" H 4 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPEDLPR"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPEDLPR(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPEDLPR(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPEDLPR(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPEDLPR(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPEDLPR(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPEDLPR(" D IX1^DIK
ELBY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90561.05,DIC="^BGPEDLBR(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 W !,"error uploading file......" H 4 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPEDLBR"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPEDLBR(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPEDLBR(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPEDLBR(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPEDLBR(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPEDLBR(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPEDLBR(" D IX1^DIK
 W !,"Data uploaded."
 D EOJ
 Q
 ;
PROCPED ;
 W !,"Processing",!
 S BGP0=$P($G(^TMP("BGPUPL",$J,1,0)),"|",9)
 S BGPG=$P($G(^TMP("BGPUPL",$J,1,0)),"|")
 F X=1:1:14 S Y="BGP"_X,@Y=$P(BGP0,U,X)
 ;find existing entry and if exists, delete it
 S (X,BGPOIEN)=0 F  S X=$O(^BGPPEDCR(X)) Q:X'=+X  D
 .I '$D(^BGPPEDCR(X,0)) K ^BGPPEDCR(X) Q
 .S Y=^BGPPEDCR(X,0)
 .Q:$P(Y,U)'=BGP1
 .Q:$P(Y,U,2)'=BGP2
 .Q:$P(Y,U,3)'=BGP3
 .Q:$P(Y,U,4)'=BGP4
 .Q:$P(Y,U,5)'=BGP5
 .Q:$P(Y,U,6)'=BGP6
 .Q:$P(Y,U,7)'=BGP7
 .Q:$P(Y,U,8)'=BGP8
 .Q:$P(Y,U,9)'=BGP9
 .Q:$P(Y,U,10)'=BGP10
 .Q:$P(Y,U,11)'=BGP11
 .Q:$P(Y,U,12)'=BGP12
 .S BGPOIEN=X
 D ^XBFMK
 I BGPOIEN S DA=BGPOIEN,DIK="^BGPPEDCR(" D ^DIK S DA=BGPOIEN,DIK="^BGPPEDPR(" D ^DIK S DA=BGPOIEN,DIK="^BGPPEDBR(" D ^DIK
 ;add entry
 L +^BGPPEDCR:10 I '$T W !!,"unable to lock global. TRY LATER" D EOJ Q
 L +^BGPPEDPR:10 I '$T W !!,"unable to lock global. TRY LATER" D EOJ Q
 L +^BGPPEDBR:10 I '$T W !!,"unable to lock global. TRY LATER" D EOJ Q
 D GETIEN^BGP8PUTL
 I 'BGPIEN W !!,"error in file creation...call programmer." D EOJ Q
PEDCY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90560.12,DIC="^BGPPEDCR(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 W !,"error uploading file......" H 4 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPPEDCR"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPPEDCR(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPPEDCR(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPPEDCR(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPPEDCR(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPPEDCR(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPPEDCR(" D IX1^DIK
PEDPY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90560.13,DIC="^BGPPEDPR(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 W !,"error uploading file......" H 4 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPPEDPR"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPPEDPR(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPPEDPR(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPPEDPR(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPPEDPR(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPPEDPR(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPPEDPR(" D IX1^DIK
PEDBY ;
 S DINUM=BGPIEN,X=$P(BGP0,U),DLAYGO=90560.14,DIC="^BGPPEDBR(",DIC(0)="L"
 K DD,D0,DO
 D FILE^DICN
 I Y=-1 W !,"error uploading file......" H 4 G EOJ
 S BGPIEN=+Y
 D ^XBFMK
 S X=0 F  S X=$O(^TMP("BGPUPL",$J,X)) Q:X'=+X  S V=^TMP("BGPUPL",$J,X,0) D
 .Q:$P(V,"|")'="BGPPEDBR"
 .S V=$P(V,"|",2,9999)
 .S N=$P(V,"|"),N2=$P(V,"|",2),N3=$P(V,"|",3),N4=$P(V,"|",4),N5=$P(V,"|",5),D=$P(V,"|",8)
 .I N5]"" S ^BGPPEDBR(BGPIEN,N,N2,N3,N4,N5)=D Q
 .I N4]"" S ^BGPPEDBR(BGPIEN,N,N2,N3,N4)=D Q
 .I N3]"" S ^BGPPEDBR(BGPIEN,N,N2,N3)=D Q
 .I N2]"" S ^BGPPEDBR(BGPIEN,N,N2)=D Q
 .I N]"" S ^BGPPEDBR(BGPIEN,N)=D
 .Q
 S DA=BGPIEN,DIK="^BGPPEDBR(" D IX1^DIK
 W !,"Data uploaded."
 D EOJ
 Q
