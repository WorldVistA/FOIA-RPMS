BTPWPLN1 ;GDIT/HCS/ALA-Planned Events continuation ; 02 Mar 2017  8:17 AM
 ;;1.2;CARE MANAGEMENT EVENT TRACKING;;Jul 07, 2017;Build 71
 ;
 ;
SNG(CMIEN,COMM,RESULT) ; Get the basic record information for a single record
 ; The Planned Events Tab includes the following columns: Category, Patient Name, 
 ; HRN, DOB, Age, Sex, Community, Planned Event Name, Planned Event Date, Preceding Event (Y/N)
 N DFN,PNAM,PCOM,TDATA,PROC,PROCNM,CAT,HRN,DOB,AGE,SEX,PRVDT,DUEDT,PREV,PRVEVT,ORD,ORDYN,ORDNM,ORDDT
 S TDATA=$G(^BTPWP(CMIEN,0)),DFN=$P(TDATA,U,2),PCOM="",PNAM=$P(^DPT(DFN,0),"^")
 ;
 ;Community check
 S PCOM=$$GET1^DIQ(9000001,DFN_",",1117,"I")
 I COMM'="",PCOM'="",'$D(COMM(PCOM)) S RESULT="" Q
 I PCOM'="" S PCOM=$$GET1^DIQ(9000001,DFN_",",1117,"E")  ;Community
 ;
 S PROC=$P(TDATA,U),PROCNM=$P(^BTPW(90621,PROC,0),U)  ;Procedure/Name (Event)
 S CAT=$$CAT^BTPWPDSP(PROC)  ;Category
 S HRN=$TR($$HRNL^BQIULPT(DFN),";",$C(10))   ;HRN
 S DOB=$$FMTE^BQIUL1($$GET1^DIQ(2,DFN_",",.03,"I")) ;DOB
 S AGE=$$AGE^BQIAGE(DFN,,1)  ;Age
 S SEX=$$GET1^DIQ(2,DFN_",",.02,"I")  ;Sex
 S DUEDT=$$FMTE^BQIUL1($P(TDATA,U,13))  ;due by date
 S PREV=$P(TDATA,U,11)  ;Previous event
 S (PRVDT,PRVEVT)="" I PREV]"" S PRVDT=$$GET1^DIQ(90620,PREV_",",".03","I"),PRVDT=$$FMTE^BQIUL1(PRVDT),PRVEVT=$$GET1^DIQ(90620,PREV_",",".01","E") ;Prv DT
 S ORD=$$GET1^DIQ(90621,PROC_",",.11,"I")
 I ORD]"" S ORD=$$ORD^BTPWPPAT(DFN,ORD)
 S ORDYN=$S(ORD]"":"Y",1:"")
 S ORDNM=$P(ORD,U)
 S ORDDT=$$FMTE^BQIUL1($P(ORD,U,2))
 ;
 S RESULT=CMIEN_U_CAT_U_DFN_U_$$SENS^BQIULPT(DFN)_U_PNAM_U_HRN_U_DOB_U_AGE_U_SEX_U_$$CALR^BQIULPT(DFN)_U_PCOM_U_PROCNM_U_DUEDT_U_PRVDT_U_PREV_U_PRVEVT_U_ORDYN_U_ORDNM_U_ORDDT
 Q
