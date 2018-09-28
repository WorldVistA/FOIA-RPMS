BARDYSVA ; IHS/DIT/CPC - DAYS TO COLLECTION detail print ; 04/26/2018
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26,2005;Build 92
 ;IHS/DIT/CPC - 1.8*28 - HEAT224215 - New routine to print Spreadsheet XML detail report
 ;
 Q
 ;
PRTCSV ;Walks through data and outputs data elements
 S GLOBAL="",VISITIEN=0,PIECE=2,C=","
 D CSVCHDR
 F  S VISITIEN=$O(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN)) Q:+VISITIEN=0  D
 .S GLOBAL="^XTMP("_""""_"BARDYSVS"_""""_C_$J_C_""""_"DAYS TO COL VISIT"_""""_C_""""_"DET"_""""_C_""""_"COL"_""""_")"
 .D CSVROW(GLOBAL,VISITIEN,2)
 Q
CSVCHDR  ;Generate Column Headers 
 K COLHDR
 D CSVBANNR
 S I=""
 F  S I=$O(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",I)) Q:I=""  D
 .S J=""
 .F  S J=$O(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",I,J)) Q:J=""  S COLHDR(J)=$P(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",I,J),U,1)
 S I="",J=0
 F  S I=$O(COLHDR(I)) Q:I=""  D
 .S J=J+1
 .W """"_COLHDR(I)_"""",U
 W !
 Q
 ;
CSVROW(GLOBAL,ROW,PIECE) ;Generate Excel Delimited Row
 ;Example data - ^XTMP("BARDYSVS",4252,"DAYS TO COL VISIT","DET","COL",1495550,120) = "PROVIDER 1^DYER,ROBIN MARGARET^D^s65"
 ;Example GLOBAL - ^XTMP("BARDYSVS",4252,"DAYS TO COL VISIT","DET","COL")
 ;Example ROW - 149550
 ;Example PIECE - 2 
 S BARCOL=0
 S J=""
 F  S J=$O(@GLOBAL@(ROW,J)) Q:J=""  D
 .W $P(@GLOBAL@(ROW,J),U,PIECE)_U
 W !
 Q
CSVBANNR ; PRINTS THE REPORT BANNER
 S BAR("PG")=""
 S BAR("HD",0)=""
 S BAR("LOC")=""
 S BAR("OPT")="BAR RPT DAYS IN AR"
 D HD^BARRHD
 D NOW^%DTC
 S Y=%
 X ^DD("DD")
 D WRAP($P(Y,":",1,2))
 D WRAP("WARNING: Confidential Patient Information, Privacy Act Applies")
 K BAR("LINE")
 S $P(BAR("LINE"),"=",70)=""
 D WRAP(BAR("LINE"))
 D WRAP(BAR("HD",0))
 S BAR("TMPLVL")=0
 F  S BAR("TMPLVL")=$O(BAR("HD",BAR("TMPLVL"))) Q:'BAR("TMPLVL")&(BAR("TMPLVL")'=0)  D:$G(BAR("HD",BAR("TMPLVL")))]"" WRAP(BAR("HD",BAR("TMPLVL")))
 D WRAP(BAR("LINE"))
 K BAR("LINE")
 Q
WRAP(X) ;Method
 W """"_X_"""",!
 Q
