BUDHRPTE ;IHS/CMI/LAB - UDS REPORT PROCESS;
 ;;13.0;IHS/RPMS UNIFORM DATA SYSTEM;;OCT 12, 2018;Build 90
 ;
 ;
PROC ;EP - called from xbdbque
 S BUDJ=$J,BUDH=$H
 K ^TMP($J)
 ;SET DIAG LIST FOR TABLE 6A
 K ^BUDHTSC("AC")
 S BUD1=0 F  S BUD1=$O(^BUDHTSC(BUD1)) Q:BUD1'=+BUD1  D
 .S T=$P($G(^BUDHTSC(BUD1,0)),U,4)
 .Q:T=""
 .K ^BUDHTSC(BUD1,7)
 .K BUDTAX
 .D BLDTAX^ATXAPI(T,"BUDTAX",$O(^ATXAX("B",T,0)),"")
 .S X=0,C=0 F  S X=$O(BUDTAX(X)) Q:X'=+X  D
 ..S C=C+1
 ..S ^BUDHTSC(BUD1,7,C,0)=$P(BUDTAX(X),U,1)_U_X_U_$P(BUDTAX(X),U,3)
 .S ^BUDHTSC(BUD1,7,0)="^90669.9077^"_C_"^"_C
 .S DIK="^BUDHTSC(",DA=BUD1 D IX1^DIK
 S ^XTMP("BUDHRPT1",0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^"_"UDS REPORT"
 S ^XTMP("BUDHRP6B",0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^UDS TABLE 6B LISTS"
 S ^XTMP("BUDHRP7",0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^BUD TABLE 7 LISTS"
 S ^XTMP("BUDARP9DEL",0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^BUD TABLE 9 DELIMINTED FILE"
 ;TABLE 3A
 K BUDTOT F X=1:1:39 S $P(BUDTOT("M"),U,X)=0,$P(BUDTOT("F"),U,X)=0,$P(BUDTOT("ALL"),U,X)=0,BUDTOT("U")=0  ;3A
 S BUD019("M")="",BUD019("F")="",BUD019("ALL")=""
 ;TABLE 5
 F X=1:1:6 S BUDTAB5(X)="0^0"
 F X=7:1:38 S BUDTAB5(X)="0^0"
 F X="9A","9B","20A","20A1","20A2","20B","20C","22A","22B","22C","22D","29A","10A","27a","27b","30A","30B","30C","17a","29a","27c","29b" S BUDTAB5(X)="0^0"
 ;TABLE 3B
 K BUDRACET
 ;S BUDRACET(LINE)=LINE NUMBER^LABEL^HISP/LATINO^NOT HISPANIC^UNREP^TOTAL^LINE LABEL 2^LINE LABEL 3"
 S BUDRACET(1)="1.^Asian^0^0^0^0"
 S BUDRACET("2A")="2a.^Native Hawaiian^0^0^0^0"
 S BUDRACET("2B")="2b.^Other Pacific^0^0^0^0^Islander"
 S BUDRACET(2)="2.^Total Native^0^0^0^0^Hawaiian/Other Pacific ^Islander (Sum Lines ^2a+2b)"
 S BUDRACET(3)="3.^Black/African^0^0^0^0^American"
 S BUDRACET(4)="4.^American Indian/^0^0^0^0^Alaska Native"
 S BUDRACET(5)="5.^White^0^0^0^0"
 S BUDRACET(6)="6.^More than one^0^0^0^0^race"
 S BUDRACET(7)="7.^Unreported/^0^0^0^0^Refused to report^race"
 S BUDRACET(8)="8.^Total Patients^0^0^0^0^(Sum Lines 1+2^+ 3 to 7)"
 K BUDLANG
 S BUDLANG(12)="12.^Patients Best Served in a Language Other Than^0^English"
 ;SEXUAL ORIENTATION
 S BUDSOT(13)="13.^Lesbian or Gay^0^0^0^0"
 S BUDSOT(14)="14.^Straight (not lesbian or gay)^0^0^0^0^"
 S BUDSOT(15)="15.^Bisexual^0^0^0^0^"
 S BUDSOT(16)="16.^Something else^0^0^0^0^"
 S BUDSOT(17)="17.^Don't know^0^0^0^0^"
 S BUDSOT(18)="18.^Chose not to disclose^0^0^0^0^"
 S BUDSOT(19)="19.^Total Patients ^0^0^0^0^(Sum Lines 13 to 18)"
 ;GENDER IDENTITY
 S BUDGIDT(20)="20.^Male^0^0^0^0"
 S BUDGIDT(21)="21.^Female^0^0^0^0^"
 S BUDGIDT(22)="22.^Transgender Male/^0^0^0^0^Female-to-Male"
 S BUDGIDT(23)="23.^Transgender Female/^0^0^0^0^Male-to-Female"
 S BUDGIDT(24)="24.^Other^0^0^0^0^"
 S BUDGIDT(25)="25.^Chose not to disclose^0^0^0^0^"
 S BUDGIDT(26)="26.^Total Patients ^0^0^0^0^(Sum Lines 20 to 25)"
 ;TABLE 6
 F X=1:1:26 S $P(BUDT6("V"),U,X)=0,$P(BUDT6("P"),U,X)=0
 ;TABLE 4
 K BUDT4V
 F X=1:1:6 S BUDT4V(X)=0
 F X=7,"8a","8b",8,9,"9a","10a","10b",10,11,12 S BUDT4V(X)="0^0"
 F X=14:1:26 S BUDT4V(X)=0
 ;TABLE 9 DELIMITED
 S BUDT9C=0
 ;TABLE 9D
 K BUDT9TC
 F X=1,"2a","2b",3,4,"5a","5b",6,7,"8a","8b",9,10,"11a","11b",12,13,14 S BUDT9(X)="0^0"  ;COLUMN A & B
 Q
PT ;EP
 S (BUDROT,BUDDELT,BUDDELF)=""
 W !!,"Please choose an output type.  For an explanation of the delimited",!,"file please see the user manual.",!
 S DIR(0)="S^P:Print Report on Printer or Screen;D:Create Delimited output file (for use in Excel)",DIR("A")="Select an Output Option",DIR("B")="P" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) Q
 S BUDROT=Y
 Q:BUDROT="P"
 S BUDDELF="",BUDDELT=""
 W !!,"You have selected to create a delimited output file.  You can have this",!,"output file created as a text file in the pub directory, ",!,"OR you can have the delimited output display on your screen so that"
 W !,"you can do a file capture.  Keep in mind that if you choose to",!,"do a screen capture you CANNOT Queue your report to run in the background!!",!!
 S DIR(0)="S^S:SCREEN - delimited output will display on screen for capture;F:FILE - delimited output will be written to an output file",DIR("A")="Select output type",DIR("B")="S" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G PT
 S BUDDELT=Y
 Q:BUDDELT="S"
PT1 S DIR(0)="F^1:40",DIR("A")="Enter a filename for the delimited output (no more than 40 characters)" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G PT
 I Y["/" W !!!,"Your filename cannot contain a '/'." H 2 G PT1
 S BUDDELF=Y
 W !!,"When the report is finished your delimited output will be found in the",!,$$GETDEDIR()," directory."
 Q
GETDEDIR() ;EP - get default directory
 NEW D
 S D=""
 S D=$P($G(^AUTTSITE(1,1)),"^",2)
 I D]"" Q D
 S D=$P($G(^XTV(8989.3,1,"DEV")),"^",1)
 I D]"" Q D
 I $P(^AUTTSITE(1,0),U,21)=1 S D="/usr/spool/uucppublic/"
 Q D
SEXOR ;EP
 ;SEXUAL ORIENTATION IS NOT CAPTURED AS OF V11 SO ALL GO IN DON'T KNOW LLINE 17
 S $P(BUDSOT(17),U,3)=$P(BUDSOT(17),U,3)+1
 S $P(BUDSOT(19),U,3)=$P(BUDSOT(19),U,3)+1
 Q
GENDIDEN ;EP
 ;GENDER IDENTITY IS NOT CAPTURED AS OF V11 SO ALL GO IN OTHER LINE 24
 S $P(BUDGIDT(24),U,3)=$P(BUDGIDT(24),U,3)+1
 S $P(BUDGIDT(26),U,3)=$P(BUDGIDT(26),U,3)+1
 Q
T5DH ;EP
 D S(""),S(""),S("")
 D S("***** SENSITIVE INFORMATION *****")
 D S($P(^VA(200,DUZ,0),U,2)_"       "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***")
 D S("Patient List for Table 5 Columns B & C, By Service Category")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",BUDBEN=4:"Homeless",1:"") D S(X)
 D S(" ")
 D S("List of all patients, sorted by defined Service Categories.  Displays")
 D S("community, gender, age and visit data, including Provider codes.")
 D S("* (R) - denotes the value was obtained from the Race field")
 D S("  (C) - denotes the value was obtained from the Classification/Beneficiary field")
 D S("Age on the patient list is calculated as of June 30.")
 D S("")
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^RACE*^VISIT DATE^PROV TYPE^PROV CD^SRV^CLINIC^LOCATION")
 Q
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
 Q
DEP2HD ;
 D S(),S(),S()
 D S("***** SENSITIVE INFORMATION *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS) "_$$VER^BUDHBAN()_"  ***")
 D S("Patient List for Table 6B, Section M")
 D S("Patients not Screened for Depression or w/o follow up")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",BUDBEN=4:"Homeless",1:"") D S(X)
 D HT6B^BUDHDU("DEP2")
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^Depression Scrn: Date/Result^Follow-up Plan: Date")
 Q
