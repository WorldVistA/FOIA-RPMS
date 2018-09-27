BQIIPCHM ;GDIT/HCSD/ALA-IPC Medical Home ; 12 Jul 2017  11:17 AM
 ;;2.7;ICARE MANAGEMENT SYSTEM;;Dec 19, 2017;Build 23
 ;;
 ;
EN ; Set medical home up
 I $G(^BQI(90508,1,"GPRA"))'=2018 Q
 NEW TEXT,BQIUPD,ERROR,BI,BJ,HELP,IEN,X
 NEW BI,BJ,BK,BN,BQIUPD,ERROR,IEN,ND,NDATA,TEXT,VAL
 S ^BQI(90508,1,22,3,0)="IPCMH",^BQI(90508,1,22,"B","IPCMH",3)=""
 S ^BQI(90508,1,22,0)="^90508.022^3^3"
 S ^BQI(90508,1,22,3,1,0)="^90508.221I^13^13"
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
 . K ^BQI(90508,1,22,3,1,BI,2)
 . S TEXT=$P(TEXT,";;",2) I TEXT="" Q
 . F BJ=1:1:$L(TEXT,"~") D
 .. S NDATA=$P(TEXT,"~",BJ) I NDATA="" Q
 .. S ^BQI(90508,1,22,3,1,BI,2,BJ,0)=NDATA
 . S ^BQI(90508,1,22,3,1,BI,2,0)="^90508.2212^"_BJ_"^"_BJ
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
 .. S NN=$O(^BQI(90508,1,22,3,1,"B",CODE,"")) I NN="" Q
 .. S ^BQI(90508,1,22,3,1,"B",NCODE,NN)="" K ^BQI(90508,1,22,3,1,"B",CODE)
 .. S $P(^BQI(90508,1,22,3,1,NN,0),"^",1)=NCODE
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
 . S ^BQI(90508,1,22,3,1,BI,ND)=VAL
 ;
 S TEXT=$T(TIP+BI) D
 . S TEXT=$P(TEXT,";;",2) I TEXT="" Q
 . F BJ=1:1:$L(TEXT,"~") D
 .. S NDATA=$P(TEXT,"~",BJ) I NDATA="" Q
 .. S ^BQI(90508,1,22,3,1,BI,3,BJ,0)=NDATA
 . S ^BQI(90508,1,22,3,1,BI,3,0)="^90508.2213^"_BJ_"^"_BJ
 ;
 Q
 ;
MEAS ;
 ;;2018_3255|026.U.1
 ;;2018_2023|027.B.19
 ;;2018_2584|028.A.23
 ;;2018_2857|025.S.1
 ;;2018_60|DM.1.1
 ;;2018_84|002.B.8
 ;;2018_2648|MHBP.A.1
 ;;2018_2558|MTA.B.1
 ;;2018_2559|MTA.B.2
 ;;2018_2159|CHS.F.1
 ;;2018_2673|WCC.A.3
 ;;2018_2674|WCC.A.4
 ;;2018_2872|B.M.1
 ;;2018_209|008.A.1
 ;;2018_2731|007.D.2
 ;;2018_3196|A.O.1
 ;;2018_489|A.C.3
 Q
 ;
ARR ;  Measure definition
 ;;0|IPC_CCPR^R^23^Continuity of Care Primary Provider^^20^^^^^^^A~1|D EN^BQIIPCCP($G(BQDATE),$G(BQFROM),$G(BQTHRU))
 ;;0|IPC_PEMP^R^23^% of Pts Empanelled to a Primary Care Provider^^19^^^^^^^A~1|D EN^BQIIPEMP($G(BQDATE),$G(BQFROM),$G(BQTHRU))
 ;;0|2018_3255^G^19^Adult Composite Immunization^^3~1|
 ;;0|2018_2023^G^19^Childhood Immunization Status^^1~1|
 ;;0|2018_2584^G^19^Adolescents Immunization Status^^2~1|
 ;;0|IPC_FLU^R^19^Influenza Immunization Status^B^4~1|D EN^BQIIPBNL(CRN,MSN,$G(BQDATE),CODE,$G(BQFROM),$G(BQTHRU))
 ;;0|2018_60^G^20^Diabetes Comprehensive Care^^5~1|
 ;;0|2018_84^G^20^A1C Control > 9^^6~1|
 ;;0|2018_2648^G^20^BP Control^^7~1|
 ;;0|IPC_ASTH^R^20^Asthma Control - Pharmacologic Therapy for Persistent Asthma^B^8~1|D EN^BQIIPBNL(CRN,MSN,$G(BQDATE),CODE,$G(BQFROM),$G(BQTHRU))
 ;;0|2018_2159^G^20^Body Mass Index (BMI) Screening^^9~1|
 ;;0|IPC_WGTA^R^20^Weight Assessment/Counseling Children/Adolescents^B^10~1|D EN^BQIIPBNL(CRN,MSN,$G(BQDATE),CODE,$G(BQFROM),$G(BQTHRU))
 ;;0|2018_2872^G^21^Colorectal Cancer Screening^^12~1|
 ;;0|2018_209^G^21^Breast Cancer Screening^^13~1|
 ;;0|2018_2731^G^21^Cervical Cancer Screening^^14~1|
 ;;0|IPC_DEP^R^22^Screening for Clinical Depression^B^16~1|D EN^BQIIPBNL(CRN,MSN,$G(BQDATE),CODE,$G(BQFROM),$G(BQTHRU))
 ;;0|IPC_CCTM^R^23^Continuity of care to a Designated Care Team^^21^^^^^^^A^T~1|D EN^BQIIPCCT($G(BQDATE),$G(BQFROM),$G(BQTHRU))
 Q
 ;
BUN ; Bundles
 ;;
 ;;
 ;;
 ;;
 ;;
 ;;2018_2404~2018_2857~
 ;;
 ;;
 ;;
 ;;2018_2558~2018_2559~
 ;;
 ;;2018_2673~2018_2674~
 ;;
 ;;
 ;;
 ;;2018_3196~2018_489~
 ;;
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
 ;;
 ;;% of visits among patients empaneled to a Designated Primary Care ~Provider (DPCP) seen by a member of the care team but not the patient's ~DPCP.~
 Q
