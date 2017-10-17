BQI26POS ;GDHS/HCS/ALA-iCare Version 2.6 PostInstall ; 28 Oct 2016  3:01 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;;
 ;
EN ;EP
 ;Set the version number
 NEW DA
 S DA=$O(^BQI(90508,0))
 S BQIUPD(90508,DA_",",.08)="2.6.0.8"
 S BQIUPD(90508,DA_",",.09)="2.6.0.8"
 D FILE^DIE("","BQIUPD","ERROR")
 K BQIUPD
 ;
 NEW IEN
 S IEN=$O(^DIC(19.1,"B","BQIZCMED",""))
 I IEN'="" S BQIUPD(19.1,IEN_",",.02)="iCare Case Management Editor"
 D FILE^DIE("","BQIUPD","ERROR")
 ;
 ; Set BTPWRPC and BUSARPC into BQIRPC
 NEW IEN,DA,X,DIC,Y
 S DA(1)=$$FIND1^DIC(19,"","B","BQIRPC","","","ERROR"),DIC="^DIC(19,"_DA(1)_",10,",DIC(0)="LMNZ"
 I $G(^DIC(19,DA(1),10,0))="" S ^DIC(19,DA(1),10,0)="^19.01IP^^"
 S X="BTPWRPC"
 D ^DIC I +Y<1 K DO,DD D FILE^DICN
 NEW IEN,DA,X,DIC,Y
 S DA(1)=$$FIND1^DIC(19,"","B","BQIRPC","","","ERROR"),DIC="^DIC(19,"_DA(1)_",10,",DIC(0)="LMNZ"
 I $G(^DIC(19,DA(1),10,0))="" S ^DIC(19,DA(1),10,0)="^19.01IP^^"
 S X="BUSARPC"
 D ^DIC I +Y<1 K DO,DD D FILE^DICN
 ;
 NEW BQIDA
 S BQIDA=1 D LTAX^BQITAXXU
 D ^BQIULAY
 S $P(^BQI(90506.5,24,10,14,0),"^",9)=""
 ;
 D ^BQIBTX
 ;
CM ; Update Care Mgmt
 K ^BQI(90506.5,24,10,"C","TB Quantiferon",14)
 S ^BQI(90506.5,24,10,14,0)="EY_14^3^TB Lab^^D^O^^A^"
 S ^BQI(90506.5,24,10,14,2)="D TB^BQICMUTL"
 S ^BQI(90506.5,24,10,14,4,0)="^^2^2^3160913^"
 S ^BQI(90506.5,24,10,14,4,1,0)="Most recent TB blood lab test or refusal from taxonomy BQI TB "
 S ^BQI(90506.5,24,10,14,4,2,0)="QUANTIFERON LOINC or BQI TB QUANTIFERON TEST."
 S ^BQI(90506.5,24,10,"B","EY_14",14)=""
 S ^BQI(90506.5,24,10,"C","TB Lab",14)=""
 ;
 D ^BQIUSRC
 S BQIDA=1 D LTAX^BQITAXXU
 ; Set up DX tags
 D JBAD^BQITASK4
 ;
 ; Update treatment prompts in APCHSURV
 D ^BQITRUPD
 NEW NAME,TEXT
 S NAME="Missing ASCVD Risk" D
 . S TEXT(1)="Denominator:  All patients."
 . S TEXT(2)="Numerator: Patient has an ACC 10 Year ASCVD Risk Calculation recorded in "
 . S TEXT(3)="the V Measurement file."
 . D DESC^BQITRUPD(NAME,.TEXT)
 ;
GLS ;Update glossary
 NEW GN,GNM,GSN,BQIUPD
 S GN=0
 F  S GN=$O(^BQI(90509.9,GN)) Q:'GN  D
 . S GNM=$P(^BQI(90509.9,GN,0),U,1)
 . S GSN=$O(^BQI(90508.2,"B",GNM,"")) Q:GSN=""
 . S BQIUPD(90508.2,GSN_",",1)="@"
 . D FILE^DIE("","BQIUPD","ERROR")
 . M ^BQI(90508.2,GSN,1)=^BQI(90509.9,GN,1)
 ;
 ; Set up POVs and SNOMED Subsets
 D JBB^BQINIGH3("POV")
 D JBB^BQINIGH3("SNO")
 ;
DM ; Redo Dm Audit
 NEW PRVY,DN
 S PRVY=$P($G(^BQI(90508,1,"DM")),U,1)
 I PRVY=2017 D
 . S DN=$O(^BQI(90506.1,"B","DM_ACAR",""))
 . I $P($G(^BQI(90506.1,DN,3)),U,5)'="" Q
 . S $P(^BQI(90508,1,"DM"),U,1)=2016 D EN^BQIRGDMA
 ;
MEAS ; Check the pointer to the Measurement file
 NEW N,COD,PAR
 S N=0
 F  S N=$O(^BQI(90507.2,N)) Q:'N  D
 . S COD=$P(^BQI(90507.2,N,0),"^",2),PAR=$P(^(0),"^",5)
 . S IEN=$O(^AUTTMSR("B",COD,""))
 . I IEN'="",$P(^BQI(90507.2,N,0),"^",3)'=IEN S BQIUPD(90507.2,N_",",.03)=IEN
 . I IEN="",PAR'="" D
 .. S COD=$P(^BQI(90507.2,PAR,0),"^",2),IEN=$O(^AUTTMSR("B",COD,""))
 .. I IEN'="",$P(^BQI(90507.2,N,0),"^",3)'=IEN S BQIUPD(90507.2,N_",",.03)=IEN
 I $D(BQIUPD) D FILE^DIE("","BQIUPD","ERROR")
 ;
NLAY ;EP - Update default templates
 NEW DZZ,LOG
 S DZZ=0
 F  S DZZ=$O(^BQICARE(DZZ)) Q:'DZZ  D
 . I DZZ=.5 Q
 . S LOG=$P(^BQICARE(DZZ,0),"^",6) I $E(LOG,1,3)<316 Q
 . D DEF^BQIULAY1("Q",DZZ)
 . D DEF^BQIULAY1("P",DZZ)
 . D DEF^BQIULAY1("DX",DZZ)
 Q
