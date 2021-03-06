APCPAH ; IHS/TUCSON/LAB - create INPATIENT SYSTEM record AUGUST 14, 1992 ; [ 04/04/02 8:35 PM ]
 ;;2.0;IHS PCC DATA EXTRACTION SYSTEM;**6**;APR 03, 1998
 I APCPV("CHART")=999999 S APCPE("ERROR")="E603" D COUNT^APCPDR2 Q
 I APCPV("LOC DFN")'=DUZ(2) S APCPE("ERROR")="E335" D COUNT^APCPDR2,EOJ Q
 D ^APCPDRPP
 I $D(APCPE) D COUNT^APCPDR2,EOJ Q
 D ^APCPHOSP
 I $D(APCPE("ERROR")) D COUNT^APCPDR2,EOJ Q
 D SETVARS
 I $D(APCPE("ERROR")) D COUNT^APCPDR2,EOJ Q
 D ^APCPHPRV
 I $D(APCPE("ERROR")) D COUNT^APCPDR2,EOJ Q
 D ^APCPHPOV
 I $D(APCPE("ERROR")) D COUNT^APCPDR2,EOJ Q
 D ^APCPHOP
 I $D(APCPE("ERROR")) D COUNT^APCPDR2,EOJ Q
 D ^APCPHTX
EOJ ;
 K I
 K APCPHDX1,APCPHDX2,APCPHDX3,APCPHDX4,APCPHDX5,APCPHDX6,APCPHHA1,APCPHHA2,APCPHHA3,APCPHHA4,APCPHHA5,APCPHHA6,APCPODX1,APCPODX2,APCPODX3,APCPOIN1,APCPOIN2,APCPOIN3,APCPHOP1,APCPHOP2,APCPHOP3,APCPH,APCPT
 Q
SETVARS ; set standard variables for record
 S APCPH("ADM DATE")=$E(APCPV("V DATE"),4,5)_$E(APCPV("V DATE"),6,7)_$E(APCPV("V DATE"),2,3)
 S APCPH("DIS DATE")=$E(APCPV("DISCHARGE DATE"),4,5)_$E(APCPV("DISCHARGE DATE"),6,7)_$E(APCPV("DISCHARGE DATE"),2,3)
 S APCPH("SSN")=$P(^DPT(AUPNPAT,0),U,9)
 S APCPH("DOB")=$E(AUPNDOB,4,5)_$E(AUPNDOB,6,7)_$E(AUPNDOB,2,3)
 S APCPH("SEX")=$S(AUPNSEX="F":2,AUPNSEX="M":1,1:"")
BEN ; 
 S X=$P(^AUPNPAT(AUPNPAT,11),U,11) I X="" S APCPE("ERROR")="E613" Q
 I '$D(^AUTTBEN(X,0)) S APCPE("ERROR")="E614" Q
 S APCPH("BEN")=$P(^AUTTBEN(X,0),U,2)
ADMTYPE ; Admission Type-CP 51 
 S X=$P(^AUPNVINP(APCPH("VINP PTR"),0),U,7) I X="" S APCPE("ERROR")="E031" Q
 I $P(^DD(9000010.02,.07,0),U,2)[42.1 S APCPH("ADM TYPE")=$$VAL^XBDIQ1(42.1,X,9999999.01)
 I $P(^DD(9000010.02,.07,0),U,2)[405.1 S APCPH("ADM TYPE")=$$VAL^XBDIQ1(405.1,X,9999999.1)
 I APCPH("ADM TYPE")="" S APCPE("ERROR")="E031" Q
DISP ; Disposition Type-CP 60 
 S X=$P(^AUPNVINP(APCPH("VINP PTR"),0),U,6) I X="" S APCPE("ERROR")="E034" Q
 I $P(^DD(9000010.02,.06,0),U,2)[42.2 S APCPH("DISP")=$$VAL^XBDIQ1(42.2,X,9999999.01)
 I $P(^DD(9000010.02,.06,0),U,2)[405.1 S APCPH("DISP")=$$VAL^XBDIQ1(405.1,X,9999999.1)
 I $L(APCPH("DISP"))'=1 S APCPE("ERROR")="E037" Q
 ;
CONSULTS ; 
 S APCPH("CON")=$P(^AUPNVINP(APCPH("VINP PTR"),0),U,8) I APCPH("CON")="" S APCPH("CON")="00" G DAY
 S:$L(APCPH("CON"))=1 APCPH("CON")=0_APCPH("CON")
DAY S APCPH("DAYS")=""
 S X1=APCPV("DISCHARGE DATE"),X2=APCPV("V DATE") D ^%DTC S APCPH("DAYS")=X S:APCPH("DAYS")=0 APCPH("DAYS")=1
UCAUS ; 
 ;CHANGED APCPH(ICD TO APCPT(ICD BELOW PATCH APCP*1.51*1
 I APCPH("DISP")<4 S APCPH("CAUSE")="     " Q
 I '$D(^AUPNPAT(AUPNPAT,11)) S APCPE("ERROR")="E602" Q
 S APCPT("ICD PTR")=$P(^AUPNPAT(AUPNPAT,11),U,14) I APCPT("ICD PTR")="" S APCPE("ERROR")="E030" Q
 S APCPH("LC")="",APCPT("ICD")=$P(^ICD9(APCPT("ICD PTR"),0),U)
 I $E(APCPT("ICD"))="." S APCPT("ICD")=$E(APCPT("ICD"),2,99)
 D ^APCPCICD
 Q:$D(APCPE("ERROR"))
 S APCPT("ICD")=$P(APCPT("ICD"),".")_$P(APCPT("ICD"),".",2),APCPH("L")=$L(APCPT("ICD"))+1 F I=APCPH("L"):1:5 S APCPT("ICD")=APCPT("ICD")_" "
 S APCPH("CAUSE")=APCPT("ICD")
 Q
