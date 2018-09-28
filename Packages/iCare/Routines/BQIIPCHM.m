BQIIPCHM ;GDIT/HCSD/ALA-IPC Medical Home ; 12 Jul 2017  11:17 AM
 ;;2.7;ICARE MANAGEMENT SYSTEM;**1**;Dec 19, 2017;Build 12
 ;;
 ;
EN ; Set medical home up
 I $G(^BQI(90508,1,"GPRA"))'=2018 Q
 NEW TEXT,BQIUPD,ERROR,BI,BJ,HELP,IEN,X
 NEW BI,BJ,BK,BN,BQIUPD,ERROR,IEN,ND,NDATA,TEXT,VAL
 S ^BQI(90508,1,22,4,0)="IPCMH",^BQI(90508,1,22,"B","IPCMH",4)=""
 S ^BQI(90508,1,22,0)="^90508.022^3^3"
 S ^BQI(90508,1,22,4,1,0)="^^90508.221I^25^20"
 ;
 F BI=1:1 S TEXT=$T(ARR+BI) Q:TEXT=" Q"  D
 . S TEXT=$P(TEXT,";;",2) I TEXT="" Q
 . S NDATA=$P(TEXT,"~",1)
 . S ND=$P(NDATA,"|",1),VAL=$P(NDATA,"|",2)
 . I ND'=0 Q
 . I VAL="" Q
 . S CODE=$P(VAL,"^",1)
 . ;I $P(^BQI(90508,1,22,2,1,BI,ND),"^",1)=CODE Q
 . D UPD
 ;
 ;Check bundles
 F BI=1:1 S TEXT=$T(BUN+BI) Q:TEXT=" Q"  D
 . K ^BQI(90508,1,22,4,1,BI,2)
 . S TEXT=$P(TEXT,";;",2) I TEXT="" Q
 . F BJ=1:1:$L(TEXT,"~") D
 .. S NDATA=$P(TEXT,"~",BJ) I NDATA="" Q
 .. S ^BQI(90508,1,22,4,1,BI,2,BJ,0)=NDATA
 . S ^BQI(90508,1,22,4,1,BI,2,0)="^90508.2212^"_BJ_"^"_BJ
 ;
 ; Check that measure is marked for IPC
 F BI=1:1 S TEXT=$T(MEAS+BI) Q:TEXT=" Q"  D
 . S TEXT=$P(TEXT,";;",2) I TEXT="" Q
 . S CODE=$P(TEXT,"|",1),ID=$P(TEXT,"|",2)
 . K NCODE,IEN
 . S IEN=$O(^BGPINDRC("C",ID,"")) I IEN="" Q
 . I IEN'=$P(CODE,"_",2) D
 .. S NCODE="2018_"_IEN
 . I $P($G(^BGPINDRC(IEN,17)),"^",7)'=1 S $P(^BGPINDRC(IEN,17),"^",7)=1
 . I $G(NCODE)'="" D
 .. S NN=$O(^BQI(90508,1,22,4,1,"B",CODE,"")) I NN="" Q
 .. S ^BQI(90508,1,22,4,1,"B",NCODE,NN)="" K ^BQI(90508,1,22,4,1,"B",CODE)
 .. S $P(^BQI(90508,1,22,4,1,NN,0),"^",1)=NCODE
 ;
 NEW DIK,DA
 S DIK="^BQI(90508,",DA=1
 D IXALL^DIK
 Q
 ;
UPD ; Update values
 NEW BJ,NDATA,VAL,OCODE,FC,PRV,IIEN
 F BJ=1:1:$L(TEXT,"~") D
 . S NDATA=$P(TEXT,"~",BJ)
 . S ND=$P(NDATA,"|",1),VAL=$P(NDATA,"|",2)
 . I VAL="" Q
 . S ^BQI(90508,1,22,4,1,BI,ND)=VAL
 ;
 S TEXT=$T(TIP+BI) D
 . S TEXT=$P(TEXT,";;",2) I TEXT="" Q
 . F BJ=1:1:$L(TEXT,"~") D
 .. S NDATA=$P(TEXT,"~",BJ) I NDATA="" Q
 .. S ^BQI(90508,1,22,4,1,BI,3,BJ,0)=NDATA
 . S ^BQI(90508,1,22,4,1,BI,3,0)="^90508.2213^"_BJ_"^"_BJ
 ;
 Q
 ;
MEAS ;
 ;;2018_3404|IPC.DMC.1
 ;;2018_3405|IPC.DMG.1
 ;;2018_3406|IPC.ADS.1
 ;;2018_3407|IPC.FLU.1
 ;;2018_3408|IPC.AIZ.1
 ;;2018_3409|IPC.CIZ.1
 ;;2018_3410|IPC.ADZ.1
 ;;2018_3411|IPC.ADZ.2
 ;;2018_3412|IPC.ADZ.3
 ;;2018_3413|IPC.CCS.1
 ;;2018_3414|IPC.BCS.1
 ;;2018_3415|IPC.CRC.1
 ;;2018_3416|IPC.DEP.1
 ;;2018_3417|IPC.DFU.1
 ;;2018_3418|IPC.DRM.1
 ;;2018_3419|IPC.BMI.1
 ;;2018_3420|IPC.WAC.1
 ;;2018_3421|IPC.WAC.2
 ;;2018_3422|IPC.WAC.3
 ;;2018_3423|IPC.CBP.1
 ;;2018_3424|IPC.MTA.1
 Q
 ;
ARR ;  Measure definition
 ;;0|IPC_CCPR^R^23^Continuity of Care Primary Provider^^23^^^^^^^A~1|D EN^BQIIPCCP($G(BQDATE),$G(BQFROM),$G(BQTHRU))
 ;;0|IPC_PEMP^R^23^% of Pts Empaneled to a Primary Care Provider^^22^^^^^^^A~1|D EN^BQIIPEMP($G(BQDATE),$G(BQFROM),$G(BQTHRU))
 ;;0|2018_3408^G^19^Adult Immunization Status^^5~1|
 ;;0|2018_3409^G^19^Childhood Immunization Status^^1~1|
 ;;0|2018_3410^G^19^Adolescents IZ: Meningococcal^^2~1|
 ;;0|2018_3407^G^19^Influenza Immunization Status^^6~1|
 ;;0|2018_3404^G^20^Diabetes Comprehensive Care^^7~1|
 ;;0|2018_3405^G^20^Diabetes: Glycemic Control^^8~1|
 ;;0|2018_3423^G^20^Controlling High Blood Pressure^^9~1|
 ;;0|2018_3424^G^20^Medication Therapy for Persons with Asthma^^10~1|
 ;;0|2018_3419^G^20^Body Mass Index (BMI) Screening/Followup^^11~1|
 ;;0|2018_3415^G^21^Colorectal Cancer Screening^^16~1|
 ;;0|2018_3414^G^21^Breast Cancer Screening^^17~1|
 ;;0|2018_3413^G^21^Cervical Cancer Screening^^18~1|
 ;;0|2018_3416^G^22^Depression Screening^^19~1|
 ;;0|IPC_CCTM^R^23^Continuity of care to a Designated Care Team^^24^^^^^^^A^T~1|D EN^BQIIPCCT($G(BQDATE),$G(BQFROM),$G(BQTHRU))
 ;;0|2018_3406^G^20^Dental Treatment^^15^^^^^~1|
 ;;0|2018_3420^G^20^Weight Assess/Counseling - BMI^^12^^^^^~1|
 ;;0|2018_3421^G^20^Weight Assess/Counseling - Nutrition^^13^^^^^~1|
 ;;0|2018_3422^G^20^Weight Assess/Counseling - Physical Activity^^14^^^^^~1|
 ;;0|2018_3411^G^19^Adolescents IZ: Tdap/TD^^3~1|
 ;;0|2018_3412^G^19^Adolescents IZ: Td/Tdap & Meningococcal^^4~1|
 ;;0|2018_3417^G^22^Depression Screening with Followup^^20~1|
 ;;0|2018_3418^G^22^Depression Remission (12 months)^^21~1|
 Q
 ;
BUN ; Bundles
 Q
 ;
TIP ;  Tooltips
 ;;Continuity of care to a Designated Primary Care Provider (DPCP) (MD, PA, ~NP, DO)~
 ;;Percentage of patients Empaneled to a Designated Primary Care Provider ~(DPCP)~
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;% of visits among patients empaneled to a Designated Primary Care ~Provider (DPCP) seen by a member of the care team but not the patient's ~DPCP.~
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;
 Q
