BAR50R02 ;IHS/DIT/CPC - 20171031 A/R ERA CORRECTED INFORMATION NOTICE
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**27**;NOV 30, 2017;Build 12
 ;
 ;
 ;
 ; IHS/DIT/CPC New Medicare Card Initiative CR09273 11/3/2017 - BAR*1.8*27
 ;
 ;
 ;
MENUHDR ;
 D ^BARBAN
 W !!
 W "This report will provide a list of corrected patient and/or insured",!
 W "information that is sent back in an ERA file from the payer. This report",!
 W "is informational only; there will be no changes made by this option to",!
 W "the patient/insured information in Patient Registration. Changes to",!
 W "Patient Registration data must be made manually.",!!
 W "Information reported on the RPMS line is pulled from RPMS Accounts",!
 W "Receivable. If an ERA claim cannot be matched to an RPMS Bill, there will",!
 W "not be a BILL# listed for the patient. Instead, the BILL(s) field will",!
 W "display the ERA claim number(s) along with "_""""_"BILL NOT FOUND IN RPMS"_"""",!
 W "(for example: 12345A-BILL NOT FOUND IN RPMS).",!!
 W "Information reported on the ERA line is pulled from the ERA file.",!
 Q
CENTER(TEXT,LNWDTH,LFILL,RFILL,CTRTXT) ;
 ;TEXT = TEXT TO CENTER
 ;LNWDTH = NUMBER OF CHARACTERS AVAILABLE IN LINE (DEFAULT 80)
 ;LFILL = CHARACTER TO PAD LEFT 
 ;RFILL = CHARACTER TO PAD RIGHT
 ;CTRTXT = ARRAY WITH CENTERED LINES - PASS BY REFERENCE
 Q:$L(TEXT)<1
 S:$G(LNWDTH)']"0" LNWDTH=80
 S CENTER=LNWDTH\2
 S K=($L(TEXT)\LNWDTH)+1
 F I=1:1:K D
 .I $L(TEXT)>LNWDTH D
 ..S J=$S($L(TEXT)\2>LNWDTH:CENTER,1:$L(TEXT)\2)
 ..F  Q:J>LNWDTH  D
 ...I $E(TEXT,J)=" " S CTRTXT(I)=$E(TEXT,1,J-1),TEXT=$E(TEXT,J+1,$L(TEXT)),J=LNWDTH
 ...S J=J+1
 .E  S CTRTXT(I)=TEXT
 S I=0 F  S I=$O(CTRTXT(I)) Q:I=""  D
 .S FILLTXT=""
 .F J=1:1:CENTER-($L(CTRTXT(I))\2) S FILLTXT=FILLTXT_LFILL
 .S CTRTXT(I)=FILLTXT_CTRTXT(I)
 .S FILLTXT=""
 .F J=1:1:LNWDTH-$L(CTRTXT(I)) S FILLTXT=FILLTXT_RFILL
 .S CTRTXT(I)=CTRTXT(I)_FILLTXT
 K I,J,K,FILLTXT,CENTER
 Q
