BQIGPRA6 ;GDIT/HS/ALA-Update all patients for selected measures ; 26 Sep 2012  9:59 AM
 ;;2.7;ICARE MANAGEMENT SYSTEM;**1**;Dec 19, 2017;Build 12
 ;
 Q
 ;
EN ;EP 
 ;Description
 ;  Find GPRA for a single measure or a list of measures for all patients
 ;Input
 ;  MLIST = List of CRS Measures
 ;
 NEW UID,II,BQIGREF,BQIDATA,BQIROU,BGPIND,BGPBD,BGPED,BGPBBD,BGPBED,X,DFN
 NEW BGPPBD,BGPPED,BGPPER,BGPQTR,BGPRTYPE,BGPRPT,BGP3YE,BGPP3YE,BGPB3YE
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIGPRA6 D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S BQIGREF=$NA(^TMP("BQIGPRA",UID))
 S BQIDATA=$NA(^BQIPAT)
 K @BQIGREF
 ; Set the DATE/TIME GPRA STARTED field
 NEW DA
 S DA=$O(^BQI(90508,0)) I 'DA Q
 S BQIUPD(90508,DA_",",4.04)=$$NOW^XLFDT()
 S BQIUPD(90508,DA_",",4.06)=1
 S BQIUPD(90508,DA_",",24.05)=$G(ZTSK)
 D FILE^DIE("","BQIUPD")
 K BQIUPD
 ;
 ;  Initialize data
 D INP^BQINIGHT
 ;  If the routine is not defined, quit
 I $G(BQIROU)="" Q
 ;
 ;  If the tag is not defined, quit
 I $T(@("BQI^"_BQIROU))="" Q
 ;
 ;  Initialize GPRA variables
 NEW VER,BQX,XN
 S VER=$$VERSION^XPDUTL("BGP")
 ;
 I VER>7.0 D
 . S BQX=""
 . F  S BQX=$O(^BQI(90506.1,"AC","G",BQX)) Q:BQX=""  D
 .. I $P(^BQI(90506.1,BQX,0),U,10)=1 Q
 .. S X=$P(^BQI(90506.1,BQX,0),U,1),XN=$P(X,"_",2)
 .. S X=$P($G(@BQIMEASG@(XN,0)),U,1) I X'="" S BGPIND(X)=""
 ;
 S DFN=0
 F  S DFN=$O(^BQIPAT(DFN)) Q:'DFN  D FND
 ;
 ; Set the DATE/TIME GPRA STOPPED
 NEW DA
 S DA=$O(^BQI(90508,0)) I 'DA Q
 S BQIUPD(90508,DA_",",4.05)=$$NOW^XLFDT()
 S BQIUPD(90508,DA_",",4.06)="@"
 S BQIUPD(90508,DA_",",24.05)="@"
 D FILE^DIE("","BQIUPD","ERROR")
 K BQIUPD
 Q
 ;
FND ;EP
 ; If patient is deceased, don't calculate
 I $P($G(^DPT(DFN,.35)),U,1)'="" Q
 ; If patient has no active HRNs, quit
 I '$$HRN^BQIUL1(DFN) Q
 ; If patient has no visit in last 3 years, quit
 I '$$VTHR^BQIUL1(DFN) Q
 ;
 D INP^BQINIGHT
 I $G(BQIROU)="" Q
 ;
 I $T(@("BQI^"_BQIROU))="" Q
 ;
 NEW VER,BQX,XN,SIND,IND,MEAS,MCT,CT,GPMEAS
 S VER=$$VERSION^XPDUTL("BGP")
 ;
 I VER>7.0 D
 . ;  initialize the summary indicators for the patient
 . S CT=0,SIND=""
 . F  S SIND=$O(^BQI(90506.1,"AC","G",SIND)) Q:SIND=""  D
 .. I $P(^BQI(90506.1,SIND,0),U,10)=1 Q
 .. S CT=CT+1,BQX=$P(^BQI(90506.1,SIND,0),U,1)
 .. S @BQIDATA@(DFN,30,CT,0)=BQX
 .. S @BQIDATA@(DFN,30,"B",BQX,CT)=""
 .. S ^BQIPAT("AC",BQX,DFN,CT)=""
 ;
 ; Define the time frame for the patient
 S BGPBD=$$DATE^BQIUL1("T-12M"),BGPED=DT
 S BGPBBD="300"_$E(BGPBD,4,7),BGPBED="300"_$E(BGPED,4,7)
 S BGPPBD=$$DATE^BQIUL1("T-24M"),BGPPED=$$DATE^BQIUL1("T-12M")
 S BGPPER=$E($$DT^XLFDT(),1,3)_"0000"
 S BGPQTR=$S(BGPBD>($E(BGPBD,1,3)_"0101")&(BGPBD<($E(BGPBD,1,3)_"0331")):1,BGPBD>($E(BGPBD,1,3)_"0401")&(BGPBD<($E(BGPBD,1,3)_"0630")):2,BGPBD>($E(BGPBD,1,3)_"0701")&(BGPBD<($E(BGPBD,1,3)_"0930")):3,1:4)
 S BGPRTYPE=4,BGPRPT=4
 S BGP3YE=$$FMADD^XLFDT(BGPED,-1096)
 S BGPP3YE=$$FMADD^XLFDT(BGPPED,-1096)
 S BGPB3YE=$$FMADD^XLFDT(BGPBED,-1096)
 ;
 S BQIPUP(90507.5,DFN_",",.02)=BQIYR
 S BQIPUP(90507.5,DFN_",",.03)=BGPBD
 S BQIPUP(90507.5,DFN_",",.04)=BGPED
 S BQIPUP(90507.5,DFN_",",.05)=$$NOW^XLFDT()
 D FILE^DIE("","BQIPUP","ERROR")
 K BQIPUP
 ; Setup taxonomies
 I VER>14.1 D
 . I $T(UNFOLDTX^BGP8UTL2)="" Q
 . D UNFOLDTX^BGP8UTL2
 ;
 D @("BQI^"_BQIROU_"(DFN,.BQIGREF)")
 ;
 K ^XTMP("BGP15TAX",$J),^XTMP("BGPSNOMEDSUBSET",$J)
 ;
 ;  if the patient doesn't already exist in the iCare Patient file, quit
 I $G(^BQIPAT(DFN,0))="" Q
 ;
 ; if the patient doesn't meet the GPRA logic for these measures, quit
 I '$D(@BQIGREF@(DFN)) Q
 ;
 S IND=0
 F  S IND=$O(@BQIGREF@(DFN,IND)) Q:IND=""  D
 . S MEAS=0
 . F  S MEAS=$O(@BQIGREF@(DFN,IND,MEAS)) Q:MEAS=""  D
 .. S GPMEAS=BQIYR_"_"_MEAS
 .. S MCT=$O(^BQIPAT(DFN,30,"B",GPMEAS,"")) I MCT="" Q
 .. S $P(@BQIDATA@(DFN,30,MCT,0),U,2)=$P(@BQIGREF@(DFN,IND),U,2)
 .. S $P(@BQIDATA@(DFN,30,MCT,0),U,3)=$P(@BQIGREF@(DFN,IND,MEAS),U,2)
 .. S $P(@BQIDATA@(DFN,30,MCT,0),U,4)=$P(@BQIGREF@(DFN,IND,MEAS),U,3)
 ;
 ;  Create cross-references
 K @BQIGREF
 ;
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 Q
