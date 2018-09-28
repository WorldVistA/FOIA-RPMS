BQIULAY ;GDHD/HS/ALA-Update Layout ; 15 Jun 2016  2:23 PM
 ;;2.7;ICARE MANAGEMENT SYSTEM;**1**;Dec 19, 2017;Build 12
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
 ;;The visit that meets the IPC Influenza Immunization Status encounter ~criteria.~
 ;;The last office visit per IPC requirements which is usually a visit CPT ~code.~
 ;;IPC Office Visit for Depression remission.  Must have a PHQ9 score ~greater than 9.~
 ;;If patient was not 13 years old during the report period, patient is N/A. ~Otherwise patient should have had immunization during the date range ~listed.~
 Q
 ;
ARR ; Array
 ;;0|IPCFOV^^IPC Flu Office Visit^^^^^T00015IPCFOV~1|S VAL=$$FLV^BQIIPUT1(DFN)~3|1^^Visit Related^O^79~5|
 ;;0|IPCLOV^^IPC Last Office Visit^^^^^T00015IPCLOV~1|S VAL=$$OFV^BQIIPUT1(DFN)~3|1^^Visit Related^O^78~5|
 ;;0|IPCPSV^^IPC Depress Office Visit^^^^^T00015IPCPSV~1|S VAL=$$PSV^BQIIPUT1(DFN)~3|1^^Visit Related^O^80~5|
 ;;0|IPCADZ^^IPC Adolescent Qualify Dates^^^^^T00025IPCADZ~1|S VAL=$$ADZ^BQIIPUT1(DFN)~3|1^^Visit Related^O^81~5|
 Q
