ABMDTIN2 ; IHS/SD/SDR - Maintenance of INSURER FILE part 3 ;   
 ;;2.6;IHS Third Party Billing;**6,9,10,21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR 2.6*21 Moved DISP tag from ABMDTIN1 to here due to routine size limit
DISP ;DISPLAY VISIT TYPE TABLE
 D VHDR^ABMDTIN1
 S DA=0 F  S DA=$O(^ABMNINS(DUZ(2),ABM("DFN"),1,DA)) Q:'DA  S ABM(0)=^(DA,0) D
 .I $Y+4>IOSL D
 ..S DIR(0)="E" D ^DIR K DIR
 ..D VHDR^ABMDTIN1
 .W !?1,DA,?7,$E($P($G(^ABMDVTYP(DA,0)),U),1,17)
 .I $P(ABM(0),U,7)="N" W ?27,"***** (UNBILLABLE) *****" Q
 .I $D(^ABMNINS(DUZ(2),ABM("DFN"),1,DA,12,0)) D
 ..S ABMMVTD=""
 ..F  S ABMMVTD=$O(^ABMNINS(DUZ(2),ABM("DFN"),1,DA,12,"B",ABMMVTD),-1) Q:ABMMVTD=""!($G(ABMVFLG)=1)  D
 ...S ABMVTI=""
 ...F  S ABMVTI=$O(^ABMNINS(DUZ(2),ABM("DFN"),1,DA,12,"B",ABMMVTD,ABMVTI)) Q:ABMVTI=""!($G(ABMVFLG)=1)  D
 ....I $P($G(^ABMNINS(DUZ(2),ABM("DFN"),1,DA,12,ABMVTI,0)),U,2)'="",$P($G(^ABMNINS(DUZ(2),ABM("DFN"),1,DA,12,ABMVTI,0)),U,2)<DT Q
 ....S ABMVFLG=1
 ....W ?27,"** Replace with: "
 ....W:$P($G(^ABMNINS(DUZ(2),ABM("DFN"),1,DA,12,ABMVTI,0)),U,3)'="" $P($G(^AUTNINS($P($G(^ABMNINS(DUZ(2),ABM("DFN"),1,DA,12,ABMVTI,0)),U,3),0)),U)
 ....W " **"
 .I $G(ABMVFLG)=1 K ABMVTI,ABMMVTD,ABMVFLG Q
 .S ABM("X")=$S($P(ABM(0),U,4):$P($G(^ABMDEXP($P(ABM(0),U,4),0)),U),DA=111:"UB-92",1:"HCFA-1500")
 .W ?26,$J("",9-$L(ABM("X"))\2)_ABM("X")
 .W ?40,$S($P(ABM(0),U,6)="Y":"YES",DA=999:"N/A",1:"NO"),?46,$P(ABM(0),U,5)
 .S ABM(1)=0 F ABM("I")=1:1 S ABM(1)=$O(^ABMNINS(DUZ(2),ABM("DFN"),1,DA,11,ABM(1))) Q:'ABM(1)  S ABM(10)=^(ABM(1),0) D
 ..W:ABM("I")>1 !
 ..W ?50,$$SDT^ABMDUTL(ABM(10))
 ..I $P(ABM(10),U,3)]"" W ?61,$$SDT^ABMDUTL($P(ABM(10),"^",3))
 ..W ?72,$J($P(ABM(10),U,2),7,2)
 Q
PROV2 ;
 W !!
 S ABMENTRY=0
 F  D  Q:+Y<0!(ABMENTRY=4)  ;ask for list of qualifiers
 .D ^XBFMK
 .S DA(1)=ABM("DFN")
 .S DIC="^ABMNINS("_DUZ(2)_","_DA(1)_",3.5,"
 .S DIC("P")=$P(^DD(9002274.09,3.5,0),U,2)
 .S DIC(0)="AEQLM"
 .S DIC("A")="Enter First 2310/2330/2440 Qualifier to use: "
 .I ABMENTRY'=0 S DIC("A")=$S(ABMENTRY=1:"Second",ABMENTRY=2:"Third",ABMENTRY=3:"Fourth",1:"")_" 2310/2330/2440 Qualifier to use: "
 .D ^DIC
 .Q:+Y<0
 .S ABMENTRY=+$G(ABMENTRY)+1
 .S ABMQ(ABMENTRY)=$P(Y,U,2)
 W !!,"Now set up your provider numbers for qualifiers..."
 D ^XBFMK
 F ABMX("I")=1:1:4 D
 .Q:$G(ABMQ(ABMX("I")))=""
 .W !!,"Providers for qualifier "_$G(ABMQ(ABMX("I")))
 .F  D  Q:+Y<0
 ..D ^XBFMK
 ..S DA(2)=ABM("DFN")
 ..S DA(1)=ABMX("I")
 ..S DIC="^ABMNINS("_DUZ(2)_","_DA(2)_",3.5,"_DA(1)_",1,"
 ..S DIC("P")=$P(^DD(9002274.0935,.02,0),U,2)
 ..S DIC(0)="AEQLM"
 ..S DIC("A")="Select Provider: "
 ..D ^DIC
 ..Q:+Y<0
 ..S:$G(ABMQ(ABMX("I")))="0B" ABMPRVN=$$SLN^ABMEEPRV($P(Y,U,2))
 ..S:$G(ABMQ(ABMX("I")))="1G" ABMPRVN=$$UPIN^ABMEEPRV($P(Y,U,2))
 ..S:$G(ABMQ(ABMX("I")))="G2" ABMPRVN=$$PI^ABMUTLF($P(Y,U,2))
 ..W !,"Number "_ABMPRVN_" will be used from the New Person file"
 D PAZ^ABMDRUTL
 Q
 ;start new code abm*2.6*9 HEAT57746
SERVLOC ;EP
 I +$P(ABM("0"),U,4)=0 Q  ;abm*2.6*10 HEAT76272
 I $P(^ABMDEXP($P(ABM("0"),U,4),0),U)'["5010" Q
 S DR="117Service Facility Location"
 D ^DIE
 Q
 ;end new code HEAT57746
