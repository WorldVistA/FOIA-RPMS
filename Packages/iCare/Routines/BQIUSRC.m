BQIUSRC ;GDHD/HS/ALA-Update Source ; 15 Jun 2016  2:21 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;
SRC ;EP - Add a source
 NEW BI,BJ,BK,BN,BQIUPD,ERROR,IEN,ND,NDATA,TEXT,VAL,TTEXT,BJJ
 F BI=1:1 S TEXT=$T(NUM+BI) Q:TEXT=" Q"  D
 . S CIEN=$P(TEXT,";;",2)
 . S TEXT=$P($T(ARR+BI),";;",2) Q:TEXT=""
 . F BJ=1:1:$L(TEXT,"%") D
 .. S NDATA=$P(TEXT,"%",BJ) I NDATA="" Q
 .. S ND=$P(NDATA,"|",1),VAL=$P(NDATA,"|",2)
 .. S ^BQI(90506.5,CIEN,ND)=VAL
 ;
 ; Do multiple fields (categories, clinical groups, layout items and tooltips)
 NEW CAT,LAY,REC,CIEN,DATA,CLIN,TEXT,TN,TIP,NDATA
 F BI=1:1 S CAT=$T(CAT+BI) Q:CAT=" Q"  D
 . S TEXT=$P(CAT,";;",2)
 . S REC=$P(TEXT,"\",1),DATA=$P(TEXT,"\",2)
 . S CIEN=$P(REC,":",1),TN=$P(REC,":",2)
 . S ^BQI(90506.5,CIEN,5,0)="^90506.55^"_TN_"^"_TN
 . S ^BQI(90506.5,CIEN,5,TN,0)=DATA
 F BI=1:1 S CLIN=$T(CLIN+BI) Q:CLIN=" Q"  D
 . S TEXT=$P(CLIN,";;",2)
 . S REC=$P(TEXT,"\",1),DATA=$P(TEXT,"\",2)
 . S CIEN=$P(REC,":",1),TN=$P(REC,":",2)
 . S ^BQI(90506.5,CIEN,6,0)="^90506.65^"_TN_"^"_TN
 . S ^BQI(90506.5,CIEN,6,TN,0)=DATA
 F BI=1:1 S LAY=$T(LAY+BI) Q:LAY=" Q"  D
 . S TEXT=$P(LAY,";;",2)
 . S REC=$P(TEXT,"\",1),DATA=$P(TEXT,"\",2)
 . S CIEN=$P(REC,":",1),TN=$P(REC,":",2)
 . S ^BQI(90506.5,CIEN,10,0)="^90506.51I^"_TN_"^"_TN
 . F BJ=1:1:$L(DATA,"~") D
 .. S NDATA=$P(DATA,"~",BJ)
 .. S ND=$P(NDATA,"|",1),VAL=$P(NDATA,"|",2)
 .. S ^BQI(90506.5,CIEN,10,TN,ND)=VAL
 F BI=1:1 S TIP=$T(TIP+BI) Q:TIP=" Q"  D
 . S TEXT=$P(TIP,";;",2)
 . S REC=$P(TEXT,"\",1),DATA=$P(TEXT,"\",2)
 . S CIEN=$P(REC,":",1),TN=$P(REC,":",2)
 . F BJ=1:1:$L(DATA,"~") D
 .. S NDATA=$P(DATA,"~",BJ)
 .. S ^BQI(90506.5,CIEN,10,TN,4,0)="^^"_BJ_"^"_BJ_"^"_DT
 .. S ^BQI(90506.5,CIEN,10,TN,4,BJ,0)=NDATA
 ;
 ; Re-Index File
 S DIK="^BQI(90506.5,"
 F DA=9,41,43,44,45,19,21,20 D IX^DIK
 Q
 ;
NUM ;EP - Number of new sources
 ;;41
 ;;9
 ;;43
 ;;44
 ;;45
 ;;19
 ;;21
 ;;20
 Q
 ;
ARR ;EP - Array
 ;;0|Men's Health^MH^^^^^^^^1
 ;;0|Pediatric^P^^1^^^^^Pediatric Default^^^^^1^^1^^1%1|%2|Pediatric^Care Mgmt - Pediatric^^90505.1231^90505.3231%3|%4|BQI GET CARE MGMT VIEW~~~Pediatric
 ;;0|Vision^V^^1^^^^^Vision Default^1^^^^1
 ;;0|POVs^DX^^^^^^^POVs Default^^^^1^^1^^POV%1|%2|POVs^Definition Details - POVs^^90505.1231^90505.3231%3|%4|BQI GET CARE MGMT VIEW~~~POVs
 ;;0|Measurements^MS^^^^^^^Measurements Default^^^^1^^1^^MEAS%1|%2|Measurements^Definition Details - Measurements^^90505.1231^90505.3231%3|%4|BQI GET CARE MGMT VIEW~~~Measurements
 ;;0|Events^Q^^^^^^^Events Default%1|%2|Events^CMET - Events^^90505.1231^90505.3231%3|BQI GET CARE MGMT LIST~Patient"" + (char)29 + ""Events%4|BQI GET CMET VIEW~~~Events
 ;;0|Followup Events^N^^^^^^^Followup Events Default%1|%2|Follow-up Events^CMET - Follow-up Events^^90505.1231^90505.3231%3|BQI GET CARE MGMT LIST~Patient"" + (char)29 + ""Followup Events%4|BQI GET CMET VIEW~~~Followup Events
 ;;0|Tracked Events^T^^^^^^^Tracked Events Default%1|%2|Tracked Events^CMET - Tracked Events^^90505.1231^90505.3231%3|BQI GET CARE MGMT LIST~Patient"" +(char)29 + ""Tracked Events%4|BQI GET CMET VIEW~~~Tracked Events
 Q
 ;
CAT ;EP - Any Categories
 Q
 ;
CLIN ;EP - Any Clinical Groups
 Q
 ;
LAY ;EP - Any layout items
 ;;44:1\0|DX_001^^Date^^D^D^^A~1|D DEF^BQICMUT1("DX",RIEN,"DATE",.RESULT)
 ;;44:2\0|DX_002^^Purpose of Visit^^R^D~1|D DEF^BQICMUT1("DX",RIEN,".01",.RESULT)
 ;;44:3\0|DX_003^^Primary/Secondary^^R^D~1|D DEF^BQICMUT1("DX",RIEN,"PRIM",.RESULT)
 ;;44:4\0|DX_004^^First/Revisit^^R^D~1|D DEF^BQICMUT1("DX",RIEN,".08",.RESULT)
 ;;44:5\0|DX_005^^Encounter Provider^^R^D~1|D DEF^BQICMUT1("DX",RIEN,"PBY",.RESULT)
 ;;44:6\0|DX_006^^Modifier^^R^O~1|D DEF^BQICMUT1("DX",RIEN,".06",.RESULT)
 ;;44:7\0|DX_007^^Cause of DX^^R^O~1|D DEF^BQICMUT1("DX",RIEN,".07",.RESULT)
 ;;44:8\0|DX_008^^External Cause^^R^O~1|D DEF^BQICMUT1("DX",RIEN,".09",.RESULT)
 ;;44:9\0|DX_009^^Place of Accident^^R^O~1|D DEF^BQICMUT1("DX",RIEN,".11",.RESULT)
 ;;44:10\0|DX_010^^Place of Occurrence^^R^O~1|D DEF^BQICMUT1("DX",RIEN,".21",.RESULT)
 ;;44:11\0|DX_011^^Present on Admission^^R^O~1|D DEF^BQICMUT1("DX",RIEN,".22",.RESULT)
 ;;44:12\0|DX_012^^SNOMED Description^^R^D~1|D DEF^BQICMUT1("DX",RIEN,"1101.019",.RESULT)
 ;;44:13\0|DX_013^^Laterality Qualifier^^R^O~1|D DEF^BQICMUT1("DX",RIEN,"1104",.RESULT)
 ;;44:14\0|DX_014^^Date Entered^^D^O~1|D DEF^BQICMUT1("DX",RIEN,"1216",.RESULT)
 ;;44:15\0|DX_015^^Entered By^^R^O~1|D DEF^BQICMUT1("DX",RIEN,"1217",.RESULT)
 ;;44:16\0|DX_016^^Last Modified^^D^O~1|D DEF^BQICMUT1("DX",RIEN,"1218",.RESULT)
 ;;44:17\0|DX_017^^Modified By^^R^O~1|D DEF^BQICMUT1("DX",RIEN,"1219",.RESULT)
 ;;44:18\0|DX_018^^Provider Narrative^^R^D~1|D DEF^BQICMUT1("DX",RIEN,".04",.RESULT)
 ;;44:19\0|DX_019^^SNOMED Concept ID^^R^D~1|D DEF^BQICMUT1("DX",RIEN,"1101",.RESULT)
 ;;45:1\0|MS_001^^Date^^D^D^^A~1|D DEF^BQICMUT1("MS",RIEN,"DATE",.RESULT)
 ;;45:2\0|MS_002^^Measurement^^R^D~1|D DEF^BQICMUT1("MS",RIEN,".01",.RESULT)
 ;;45:3\0|MS_003^^Result^^R^D~1|D DEF^BQICMUT1("MS",RIEN,".04",.RESULT)
 ;;45:4\0|MS_004^^Entered By^^R^O~1|D DEF^BQICMUT1("MS",RIEN,"BY",.RESULT)
 ;;45:5\0|MS_005^^Encounter Provider^^R^O~1|D DEF^BQICMUT1("MS",RIEN,"PBY",.RESULT)
 ;;45:6\0|MS_006^^Date/Time Last Modified^^D^O^^S~1|D DEF^BQICMUT1("MS",RIEN,"1218",.RESULT)
 ;;45:7\0|MS_007^^Percentile^^R^O~1|D DEF^BQICMUT1("MS",RIEN,".05",.RESULT)
 ;;45:8\0|MS_008^^VC/VU Numerator^^R^O~1|D DEF^BQICMUT1("MS",RIEN,".06",.RESULT)
 ;;45:9\0|MS_009^^Supplemental O2^^R^O~1|D DEF^BQICMUT1("MS",RIEN,"1.4",.RESULT)
 ;;45:10\0|MS_010^^Modified By^^R^O~1|D DEF^BQICMUT1("MS",RIEN,"MBY",.RESULT)
 Q
 ;
TIP ;EP - Tooltips
 Q
