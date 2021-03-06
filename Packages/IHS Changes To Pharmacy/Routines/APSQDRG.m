APSQDRG ;IHS/ASDS/JCM/ENM/POC - ORDER ENTRY DRUG SELECTION  
 ;;6.0;IHS PHARMACY MODIFICATIONS;**3**;FEB 20, 2001
 ;;6.0;OUTPATIENT PHARMACY;**40,131**;09/03/97
 ;----------------------------------------------------------
START ;
 S (PSONEW("DFLG"),PSONEW("FIELD"),PSODRG("QFLG"))=0
 D SELECT ; Select Drug
 I $G(PSORX("EDIT"))]"",'PSONEW("FIELD") D TRADE
 G:PSONEW("DFLG")!(PSODRG("QFLG")) END
 D SET ; Set various drug information
 ;D POST I PSORX("DFLG") S PSONEW("DFLG")=1 K:'$G(PSORX("EDIT")) PSORX("DFLG") ; Do any post selection action
 D POST ;I PSORX("DFLG") S PSONEW("DFLG")=1 K:'$G(PSORX("EDIT")) PSORX("DFLG") ; Do any post selection action DONT WANT TO GET RID OF DELETE FLAG YET IHS/OKCAO/POC
END D EOJ
 Q
 ;------------------------------------------------------------
 ;
SELECT ;
 K DIC,X,Y
 S DIC="^PSDRUG(",DIC(0)="ZM",X="`"_APSPDIEN
 D ^DIC
 I Y<0 S STOP=1 Q
 K PSOY S PSOY=Y,PSOY(0)=Y(0)
 S X="APSQMAN" X ^%ZOSF("TEST") D:$T ^APSQMAN ;IHS/OKCAO/POC 3/30/98 
 S X="APSQMAN" X ^%ZOSF("TEST") D:'$T ^APSPMAN ;IHS/OKCAO/POC 3/30/98
 ;D ^APSPMAN ;IHS/DSD/ENM MANUFACTURER CALL 1-6-95
 ;D ^APSQMAN
 ;I $P(PSOY(0),"^")="OTHER DRUG"!($P(PSOY(0),"^")="OUTSIDE DRUG") D TRADE ;IHS/OKCAO/POC DELETE THIS FOR NOW
SELECTX K X,Y,DTOUT,DUOUT
 Q
 ;
TRADE ;
 K DIR,DIC,DA,X,Y
 S DIR(0)="52,6.5" D ^DIR K DIR,DIC
 I $D(DIRUT) S:$D(DUOUT)!$D(DTOUT)&('$D(PSORX("EDIT"))) PSONEW("DFLG")=1 G TRADEX
 S PSODRUG("TRADE NAME")=Y
TRADEX K DIRUT,DTOUT,DUOUT,X,Y
 Q
 ;
SET ;
 S PSODRUG("IEN")=+PSOY,PSODRUG("VA CLASS")=$P(PSOY(0),"^",2)
 S PSODRUG("NAME")=$P(PSOY(0),"^")
 S PSODRUG("NDF")=$S($G(^PSDRUG(+PSOY,"ND"))]"":+^("ND")_"A"_$P(^("ND"),"^",3),1:0)
 S PSODRUG("MAXDOSE")=$P(PSOY(0),"^",4),PSODRUG("DEA")=$P(PSOY(0),"^",3)
 S PSODRUG("CLN")=$S($D(^PSDRUG(+PSOY,"ND")):+$P(^("ND"),"^",6),1:0)
 S PSODRUG("SIG")=$P(PSOY(0),"^",5)
 S PSODRUG("NDC")=$P($G(^PSDRUG(+PSOY,2)),"^",4)
 S PSODRUG("STKLVL")=$G(^PSDRUG(+PSOY,660.1))
 G:$G(^PSDRUG(+PSOY,660))']"" SETX
 S PSOX1=$G(^PSDRUG(+PSOY,660))
 S PSODRUG("COST")=$P($G(PSOX1),"^",6)
 S PSODRUG("UNIT")=$P($G(PSOX1),"^",8)
 ;S PSODRUG("EXPIRATION DATE")=$P($G(PSOX1),"^",9)
SETX K PSOX1,PSOY
 Q
 ;
POST ;
 S PSORX("DFLG")=0
 ;I $G(DUZ("AG"))="I" D ^PSODRG99 ; IHS specific call
 D ^PSODRDUP ; Set PSORX("DFLG")=1 if process to stop
 ;D ^AZODRDUP ;ADDED FOR OUTSIDE DUPS IHS/OKCAO/POC
 S X="APSQDRDU" X ^%ZOSF("TEST") D:$T ^APSQDRDU ;IHS/OKCAO/POC 3/30/98
 Q:$G(PSORX("DFLG"))
 ;D ^PSODGDGI D:$G(PSORX("INTERVENE"))]"" ^PSORXI G:PSORX("DFLG") POSTX
 D ^PSODGDGI G:PSORX("DFLG") POSTX ;IHS/OKCAO/POC 12/3/97 MULTIPLE INTERVENS
 ;D ^AZODGDGI G:PSORX("DFLG") POSTX ;ADDED FOR OUTSIDE RXS IHS/OKCAO/POC
 S X="APSQDGDG" X ^%ZOSF("TEST") D:$T ^APSQDGDG ;IHS/OKCAO/POC 3/30/98
 K PSORX("INTERVENE") ;ADDED TO NOT CAUSE A PROBLEM BELOW IHS/OKCAO/POC
 S X="APSQALLE" X ^%ZOSF("TEST") D:$T EN^APSQALLE D:$G(PSORX("INTERVENE"))]"" ^PSORXI G:PSORX("DFLG") POSTX ;ADDED FOR ALLERGY CHECK IHS/OKCAO/POC 11/17/97
 D:$P($G(^PSDRUG(PSODRUG("IEN"),"CLOZ1")),"^")]"" CLOZ G:PSORX("DFLG") POSTX
 ; Do ^allergy check
 ;D ^PSODRDUP ; Set PSORX("DFLG")=1 if process to stop
 ; ^Do any other action revolving around the drug selection
POSTX ;
 K PSORX("INTERVENE")
 Q
 ;
EOJ ;
 K PSODRG
 Q
 ;
CLOZ ;
 S ANQRTN=$P(^PSDRUG(PSODRUG("IEN"),"CLOZ1"),"^"),ANQX=0
 S P(5)=PSODRUG("IEN"),DFN=PSODFN,X=ANQRTN
 X ^%ZOSF("TEST") I  D @("^"_ANQRTN) S:$G(ANQX) PSORX("DFLG")=1
 K P(5),ANQRTN,ANQX,X
 Q
