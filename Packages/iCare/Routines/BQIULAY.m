BQIULAY ;GDHD/HS/ALA-Update Layout ; 15 Jun 2016  2:23 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;
LAY ; Add new patient entries to 90506.1
 NEW BI,BJ,BK,BN,BQIUPD,ERROR,IEN,ND,NDATA,TEXT,VAL,TTEXT,BJJ
 F BI=1:1 S TEXT=$P($T(ARR+BI),";;",2) Q:TEXT=""  D
 . F BJ=1:1:$L(TEXT,"~") D
 .. S NDATA=$P(TEXT,"~",BJ)
 .. S ND=$P(NDATA,"|",1),VAL=$P(NDATA,"|",2)
 .. I ND=0 D
 ... NEW DIC,X,Y
 ... S DIC(0)="LQZ",DIC="^BQI(90506.1,",X=$P(VAL,U,1)
 ... D ^DIC
 ... S IEN=+Y
 ... I IEN=-1 K DO,DD D FILE^DICN S IEN=+Y
 .. I ND=1 S BQIUPD(90506.1,IEN_",",1)=VAL Q
 .. I ND=5 S BQIUPD(90506.1,IEN_",",5)=VAL Q
 .. F BK=1:1:$L(VAL,"^") D
 ... S BN=$O(^DD(90506.1,"GL",ND,BK,"")) I BN="" Q
 ... I $P(VAL,"^",BK)'="" S BQIUPD(90506.1,IEN_",",BN)=$P(VAL,"^",BK) Q
 ... I $P(VAL,"^",BK)="" S BQIUPD(90506.1,IEN_",",BN)="@"
 ... ;
 ... S TTEXT=$T(TIP+BI) Q:TTEXT=" Q"  D
 .... S TTEXT=$P(TTEXT,";;",2) I TTEXT="" Q
 .... F BJJ=1:1:$L(TTEXT,"~") D
 ..... S NDATA=$P(TTEXT,"~",BJJ) I NDATA="" Q
 ..... S ^BQI(90506.1,IEN,4,BJJ,0)=NDATA
 ..... S ^BQI(90506.1,IEN,4,0)="^^"_BJJ_"^"_BJJ
 . D FILE^DIE("","BQIUPD","ERROR")
 ;
 ; Re-Index File
 K ^BQI(90506.1,"AC"),^BQI(90506.1,"AD")
 NEW DIK
 S DIK="^BQI(90506.1,",DIK(1)=3.01
 D ENALL^DIK
 ;
 Q
 ;
TIP ;  Tooltips
 ;;
 ;;
 ;;Events are categorized into Breast; Cervical; Colon; and Skeletal.~
 ;;
 ;;The date the event was performed.  Access the visit by clicking on the~link.~
 ;;Events are procedures, exams or tests that have been documented in RPMS.~Events are predefined. See the CMET Glossary for a list of events.~
 ;;This is the definition of the event expanded for display only.~
 ;;This is an expanded view of the result value.~
 ;;
 ;;
 ;;Access available results by clicking on the link.~
 ;;
 ;;Statuses include Pending, Tracked, or Not Tracked.~
 ;;The advanced directives that the patient has on file in RPMS.~
 ;;Number of no show appointments for the past 12 months.~
 ;;Number of patient cancelled appointments for the past 12 months.~
 ;;
 ;;The most recent ADD or ADHD diagnosis.~
 ;;
 ;;
 ;;This is the last recorded Dental visit information for this patient.~
 ;;
 ;;
 ;;If patient was screened for infant feeding choice at the age of 1 year ~(350-394 days).~
 ;;If the patient was screened for infant feeding choice at the age of two ~months (45-89 days).~
 ;;If the patient was screened for infant feeding choice at the age of six ~months (165-209 days).~
 ;;If patient was screened for infant feeding choice at the age of nine ~months (255-299 days).~
 ;;The last recorded Infant Feeding result.~
 ;;If a lead blood test has been performed. Lab test should be in taxonomy ~BQI BLOOD LEAD TESTS.~
 ;;
 ;;The most recent HEARING measurement or most recent NEWBORN HEARING SCREEN ~(LEFT), NEWBORN HEARING SCREEN (RIGHT) or AUDITORY EVOKED POTENTIAL exam.~
 ;;The most recent EYE EXAM - GENERAL exam.~
 ;;The last three visits where a Purpose of Visit had a SNOMED concept ID ~from the SNOMED subset PXRM BQI WELL CHILD VISIT.~
 ;;The definitive delivery date of this patient.~
 ;;The estimate date of delivery based on EDD (LMP), EDD (ULTRASOUND), EDD ~(CLINICAL PARAMETERS) or EDD (METHOD UNKNOWN).~
 ;;If the event was entered from Add Manual Event and the user entered a ~finding value.~
 ;;If the user entered the event with Add Manual Event and entered a ~Findings comment.~
 ;;The most recent ASQ measurements for this patient.~
 Q
 ;
ARR ; Array
 ;;0|BQRACE^^Race^^^^^T00030BQRACE~1|S VAL=$$RC^BQIPTDMG(DFN)~3|1^^Demographics^O^37~5|
 ;;0|BQETH^^Ethnicity^^^^^T00030BQETH~1|S VAL=$$ET^BQIPTDMG(DFN)~3|1^^Demographics^O^38~5|
 ;;0|BTPWQCAT^^Category^^^^^T00040BTPWQCAT~1|S VAL=$$GET1^DIQ(90629,QIEN_",",.01,"I") S:VAL]"" VAL=$$CAT^BTPWPDSP(VAL)~3|19^^^D^^1^^^1~5|
 ;;0|BTPWQCOM^^Event Community^^^^^T00030BTPWQCOM^^1^3100101~1|S VAL=$$GET1^DIQ(90629,QIEN_",",.16,"E") S:VAL="" VAL=$$GET1^DIQ(9000001,DFN_",",1117,"E")~3|19^^^O^7~5|
 ;;0|BTPWQEDT^^Event Date^^^^^D00015BTPWQEDT~1|NEW Y S Y=$$GET1^DIQ(90629,QIEN_",",.03,"I"),VAL=$$FMTE^BQIUL1(Y)~3|19^^^D^9^2^^D^~5|
 ;;0|BTPWQENM^^Event Name^^^^^T00060BTPWQENM~1|S VAL=$$GET1^DIQ(90629,QIEN_",",.01,"E")~3|19^^^D^8~5|
 ;;0|BTPWQEXEV^^Expanded Event^^^^^T01024BTPWQEXEV^^^^^^^125~1|S VAL=$$EXEV^BTPWPTRG(QIEN)~3|19^^^D^10~5|
 ;;0|BTPWQEXRES^^Expanded Result^^^^^T01024BTPWQEXRES^^^^^^^125~1|S VAL=$P($$QLNK^BTPWPTRG(QIEN,.06),$C(28),4)~3|19^^^D^12~5|
 ;;0|BTPWQLDT^^Last Modified Date/Time^^^^^D00030BTPWQLDT^^^^^^^125~1|S VAL=$$FMTE^BQIUL1($$GET1^DIQ(90629,QIEN_",",.11,"I"))~3|19^^^D^15~5|
 ;;0|BTPWQLMB^^Last Modified By^^^^^T00030BTPWQLMB~1|S VAL=$$GET1^DIQ(90629,QIEN_",",.12,"E")~3|19^^^D^16~5|
 ;;0|BTPWQRES^^Result^^^^^T01024BTPWQRES~1|S VAL=$$QLNK^BTPWPTRG(QIEN,.06)~3|19^^^D^11~5|
 ;;0|BTPWQSCM^^Status Comments^^^^^T04096BTPWQSCM~1|S VAL=$$SCOMM^BTPWPDS1(QIEN)~3|19^^^D^14~5|
 ;;0|BTPWQSTS^^Status^^^^^T00020BTPWQSTS~1|S VAL=$$GET1^DIQ(90629,QIEN_",",.08,"E")~3|19^^^D^13~5|
 ;;0|ADVD^^Advanced Directives^^^^^T00060ADVD~1|S VAL=$$ADVD^BQIRGHQC(DFN)~3|1^^Other Patient Data^O^77~5|"
 ;;0|CTNS^^Number of No Shows^^^^^T00010CTNS~1|S VAL=$$NSC^BQIUL2(DFN,"T-12M","NS")~3|1^^Visit Related^O^50~5|
 ;;0|CTPC^^Number of Patient Cancels^^^^^T00010CTPC~1|S VAL=$$NSC^BQIUL2(DFN,"T-12M","PC")~3|1^^Visit Related^O^51~5|
 ;;0|P_ACT^^Activity Level^^^^^T00030P_ACT~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^1~5|S VAL=$$HF^BQICMUT1(DFN,1,"ACTIVITY LEVEL")
 ;;0|P_ADHD^^ADD/ADHD Dx^^^^^T00016P_ADHD~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^O^14~5|S VAL=$$ADHD^BQICMUT2(DFN)
 ;;0|P_BMI^^BMI^^^^^T00005P_BMI~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^4~5|S VAL=$$MEAS^BQICMUT2(DFN,"BMI")
 ;;0|P_BMIP^^BMI Percentile^^^^^T00005P_BMIP~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^5~5|S VAL=$$MEAS^BQICMUT2(DFN,"BMIP")
 ;;0|P_DENT^^Last Dental Visit^^^^^D00015P_DENT~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^13~5|S VAL=$$DENT^BQICMUT2(DFN)
 ;;0|P_HC^^Head Circumference^^^^^T00005P_HC~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^6~5|S VAL=$$MEAS^BQICMUT2(DFN,"HC")
 ;;0|P_HT^^Height^^^^^T00010P_HT~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^3~5|S VAL=$$MEAS^BQICMUT2(DFN,"HT")
 ;;0|P_INF12^^Infant Feeding 1yr^^^^^T00003P_INF12~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^11~5|S VAL=$$INF^BQICMUT2(DFN,"12 MOS",1)
 ;;0|P_INF2^^Infant Feeding 2mos^^^^^T00003P_INF2~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^8~5|S VAL=$$INF^BQICMUT2(DFN,"2 MOS",1)
 ;;0|P_INF6^^Infant Feeding 6mos^^^^^T00003P_INF6~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^9~5|S VAL=$$INF^BQICMUT2(DFN,"6 MOS",1)
 ;;0|P_INF9^^Infant Feeding 9mos^^^^^T00003P_INF9~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^10~5|S VAL=$$INF^BQICMUT2(DFN,"9 MOS",1)
 ;;0|P_INFL^^Last Infant Feeding^^^^^T00050P_INFL~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^7~5|S VAL=$$INF^BQICMUT2(DFN,"")
 ;;0|P_LEAD^^Lead Screening^^^^^T00030P_LEAD~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^12~5|S VAL=$$LEAD^BQICMUT2(DFN)
 ;;0|P_WT^^Weight^^^^^T00005P_WT~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^D^2~5|S VAL=$$MEAS^BQICMUT2(DFN,"WT")
 ;;0|P_HEAR^^Last Hearing Screening^^^^^T00030P_HEAR~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^O^15~5|S VAL=$$HEAR^BQICMUT2(DFN)
 ;;0|P_VIS^^Last Vision Screening^^^^^T00030P_VIS~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^O^16~5|S VAL=$$VIS^BQICMUT2(DFN)
 ;;0|P_WELL^^Last 3 Well Child Visits^^^^^T01024P_WELL~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^O^17~5|S VAL=$$WELL^BQICMUT2(DFN,3)
 ;;0|PGEDD^99^Definitive Delivery Date^^^^^D00015PGEDD~1|S VAL=$$EDD^BQIRGPG(DFN)~3|36^^^R^2~5|
 ;;0|PGESDD^^Estimated Delivery Date^^^^^D00015PGESDD~1|S VAL=$$EEDD^BQIRGPG(DFN)~3|36^^^O^6~5|
 ;;0|BTPWQFND^^Findings^^^^^T00070BTPWQFND~1|S VAL=$$GET1^DIQ(90629,QIEN_",",1.02,"E")~3|19^^^O^17~5|
 ;;0|BTPWQFCM^^Findings Comment^^^^^T01024BTPWQFCM~1|S VAL=$$FCOMM^BTPWPTRG(QIEN)~3|19^^^O^18~5|
 ;;0|P_ASQ^^Last ASQ^^^^^T01024P_ASQ~1|S VAL=$$DSP^BQIRGASU(DFN,STVW)~3|9^^^O^18~5|S VAL=$$ASQ^BQICMUT2(DFN)
 Q
