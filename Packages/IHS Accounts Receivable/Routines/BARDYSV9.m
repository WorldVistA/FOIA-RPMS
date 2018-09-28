BARDYSV9 ; IHS/DIT/CPC - DAYS TO COLLECTION detail print ; 04/26/2018
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26,2005;Build 92
 ;IHS/DIT/CPC - 1.8*28 - HEAT224215 - New routine to print Spreadsheet XML detail report
 ;
 Q
 ;
ROWTOCOL(VISITIEN,BARREC)  ;Scans global created by Days report and creates appropriate number of column headers
 ;Piece 1 = Column Name
 ;Piece 2 = Data element
 ;Piece 3 = format code:  N=Number, S=String, D=Date
 ;Piece 4 = StyleID 
 S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,1)="VISIT IEN"_U_$P(BARREC,U,1)_U_"N"
 S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,2)="MONTH YEAR"_U_$P(BARREC,U,2)_U_"D"_U_"s63"
 S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,3)="VISIT LOC"_U_$P(BARREC,U,3)_U_"S"
 S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,4)="VISIT ADMIT DATE"_U_$P(BARREC,U,4)_U_"D"_U_"s62"
 S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,5)="DATE CREATED PCC"_U_$P(BARREC,U,5)_U_"D"_U_"s62"
 S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,6)="CREATED NUM DAYS"_U_$P(BARREC,U,6)_U_"N"
 S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,7)="DATE REVIEWED"_U_$P(BARREC,U,7)_U_"D"_U_"s62"
 S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,8)="REVIEWED NUM DAYS"_U_$P(BARREC,U,8)_U_"N"
 S BARBILLS=$P(BARREC,U,9),I=""
 F I=1:1:$L(BARBILLS,"~") D
 .S BARBILL=$P(BARBILLS,"~",I)
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+9)="BILL NUM "_I_U_$P(BARBILL,";",1)_U_"S"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+10)="APPROVAL DATE "_I_U_$P(BARBILL,";",2)_U_"D"_U_"s62"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+11)="APPROVAL NUM DAYS "_I_U_$P(BARBILL,";",3)_U_"N"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+12)="EXPORT DATE "_I_U_$P(BARBILL,";",4)_U_"D"_U_"s62"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+13)="EXPORT NUM DAYS "_I_U_$P(BARBILL,";",5)_U_"N"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+14)="FINALIZED BATCH DATE "_I_U_$P(BARBILL,";",6)_U_"D"_U_"s62"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+15)="FINALIZED NUM DAYS "_I_U_$P(BARBILL,";",7)_U_"N"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+16)="FIRST TRANS DATE "_I_U_$P(BARBILL,";",8)_U_"D"_U_"s62"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+17)="FIRST TRANS NUM DAYS "_I_U_$P(BARBILL,";",9)_U_"N"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+18)="LAST TRANS DATE "_I_U_$P(BARBILL,";",10)_U_"D"_U_"s62"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+19)="LAST TRANS NUM DAYS "_I_U_$P(BARBILL,";",11)_U_"N"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+20)="PROVIDER "_I_U_$P(BARBILL,";",12)_U_"S"
 .S ^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN,100*I+21)="BILLED AMOUNT "_I_U_$P(BARBILL,";",13)_U_"N"
 Q
PRTXML ;Walks through data and outputs data elements
 S GLOBAL="",VISITIEN=0,PIECE=2,C=","
 D XCELHDR
 D XCELCHDR
 F  S VISITIEN=$O(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",VISITIEN)) Q:+VISITIEN=0  D
 .S GLOBAL="^XTMP("_""""_"BARDYSVS"_""""_C_$J_C_""""_"DAYS TO COL VISIT"_""""_C_""""_"DET"_""""_C_""""_"COL"_""""_")"
 .D XCELROW(GLOBAL,VISITIEN,2,3,4)
 D XCELFTR
 Q
XCELHDR ;Excel XML Header
 W "<?xml version="_""""_"1.0"_""""_"encoding="_""""_"utf-8"_""""_" ?>",!
 W "<?mso-application progid="_""""_"Excel.Sheet"_""""_" ?>",!
 W "<Workbook xmlns="_""""_"urn:schemas-microsoft-com:office:spreadsheet"_"""",!
 W "          xmlns:o="_""""_"urn:schemas-microsoft-com:office:office"_"""",!
 W "          xmlns:x="_""""_"urn:schemas-microsoft-com:office:excel"_"""",!
 W "          xmlns:rs="_""""_"urn:schemas-microsoft-com:rowset"_""""_" xmlns:z="_""""_"#RowsetSchema"_"""",!
 W "          xmlns:ss="_""""_"urn:schemas-microsoft-com:office:spreadsheet"_"""",!
 W "          xmlns:html="_""""_"http://www.w3.org/TR/REC-html40"_""""_">",!
 W " <DocumentProperties xmlns="_""""_"urn:schemas-microsoft-com:office:office"_""""_">",!
 W " <Author>"_$P(^VA(200,DUZ,0),U,1)_"</Author>",!
 W " <LastAuthor>"_$P(^VA(200,DUZ,0),U,1)_"</LastAuthor>",!
 D NOW^%DTC
 W " <Created>"_$$XDT^BARDUTL(%)_"</Created>",!
 W " <Version>15.00</Version>",!
 W "</DocumentProperties>",!
 W "<OfficeDocumentSettings xmlns="_""""_"urn:schemas-microsoft-com:office:office"_""""_">",!
 W " <AllowPNG/>",!
 W "</OfficeDocumentSettings>",!
 W "<Styles>",!                   ;Identifies Style types being utilized in document 
 W " <Style ss:ID="_""""_"Default"_""""_" ss:Name="_""""_"Normal"_""""_">",!
 W "  <Alignment ss:Vertical="_""""_"Bottom"_""""_"/>",!
 W "  <Borders/>",!
 W "  <Font ss:FontName="_""""_"Calibri"_""""_" x:Family="_""""_"Swiss"_""""_" ss:Size="_""""_"11"_""""_" ss:Color="_""""_"#000000"_""""_"/>",!
 W "  <Interior/>",!
 W "  <NumberFormat/>",!
 W "  <Protection/>",!
 W " </Style>",!
 W " <Style ss:ID="_""""_"s62"_""""_">",!
 W "  <NumberFormat ss:Format="_""""_"Short Date"_""""_"/>",!
 W " </Style>",!
 W " <Style ss:ID="_""""_"s63"_""""_">",!
 W "  <NumberFormat ss:Format="_""""_"mmm\-y"_""""_"/>",!
 W " </Style>",!
 W " <Style ss:ID="_""""_"s64"_""""_">",!
 W "  <NumberFormat ss:Format="_""""_"m/d/yy\ h:mm;@"_""""_"/>",!
 W " </Style>",!
 W " <Style ss:ID="_""""_"s66"_""""_">",!
 W "  <Alignment ss:Horizontal="_""""_"Center"_""""_" ss:Vertical="_""""_"Bottom"_""""_"/>",!
 W " </Style>",!
 W "</Styles>",!
 W "<Worksheet ss:Name="_""""_"DAYS Report Data"_""""_">",!
 W " <Table x:FullColumns="_""""_"1"_""""_"  x:FullRows="_""""_"1"_""""_" ss:DefaultRowHeight="_""""_"15"_""""_">",!
 W " <Column ss:Width="_""""_"46.5"_""""_"/>",!            ;May need to make dynamic, static for now
 W " <Column ss:Width="_""""_"66.75"_""""_"/>",!
 W " <Column ss:Width="_""""_"66"_""""_"/>",!
 W " <Column ss:Width="_""""_"88.5"_""""_"/>",!
 W " <Column ss:Width="_""""_"94.5"_""""_"/>",!
 W " <Column ss:Width="_""""_"99.75"_""""_"/>",!
 W " <Column ss:Width="_""""_"80.25"_""""_"/>",!
 W " <Column ss:Width="_""""_"106.5"_""""_"/>",!
 W " <Column ss:Width="_""""_"56.25"_""""_"/>",!
 W " <Column ss:Width="_""""_"90.75"_""""_"/>",!
 W " <Column ss:Width="_""""_"117"_""""_"/>",!
 W " <Column ss:Width="_""""_"75.75"_""""_"/>",!
 W " <Column ss:Width="_""""_"102"_""""_"/>",!
 W " <Column ss:Width="_""""_"121.5"_""""_"/>",!
 W " <Column ss:Width="_""""_"114"_""""_"/>",!
 W " <Column ss:Width="_""""_"98.25"_""""_"/>",!
 W " <Column ss:Width="_""""_"124.5"_""""_"/>",!
 W " <Column ss:Width="_""""_"95.25"_""""_"/>",!
 W " <Column ss:Width="_""""_"121.5"_""""_"/>",!
 W " <Column ss:Width="_""""_"143.25"_""""_"/>",!
 W " <Column ss:Width="_""""_"88.5"_""""_"/>",!
 W " <Column ss:Width="_""""_"56.25"_""""_"/>",!
 W " <Column ss:Width="_""""_"90.75"_""""_"/>",!
 W " <Column ss:Width="_""""_"117"_""""_"/>",!
 W " <Column ss:Width="_""""_"75.75"_""""_"/>",!
 W " <Column ss:Width="_""""_"102"_""""_"/>",!
 W " <Column ss:Width="_""""_"121.5"_""""_"/>",!
 W " <Column ss:Width="_""""_"114"_""""_"/>",!
 W " <Column ss:Width="_""""_"98.25"_""""_"/>",!
 W " <Column ss:Width="_""""_"124.5"_""""_"/>",!
 W " <Column ss:Width="_""""_"95.25"_""""_"/>",!
 W " <Column ss:Width="_""""_"121.5"_""""_"/>",!
 W " <Column ss:Width="_""""_"114.75"_""""_"/>",!
 W " <Column ss:Width="_""""_"88.5"_""""_"/>",!
 Q
XCELFTR ;Excel XML footer
 W "  </Table>",!
 W "  <WorksheetOptions xmlns="_""""_"urn:schemas-microsoft-com:office:excel"_""""_">",!
 W "   <Unsynced/>",!
 W "   <Selected/>",!
 W "   <FreezePanes/>",!
 W "   <FrozenNoSplit/>",!
 W "   <SplitHorizontal>8</SplitHorizontal>",!
 W "   <TopRowBottomPane>8</TopRowBottomPane>",!
 W "   <SplitVertical>1</SplitVertical>",!
 W "   <LeftColumnRightPane>1</LeftColumnRightPane>",!
 W "   <ActivePane>0</ActivePane>",!
 W "   <Panes>",!
 W "    <Pane>",!
 W "     <Number>3</Number>",!
 W "    </Pane>",!
 W "    <Pane>",!
 W "     <Number>1</Number>",!
 W "    </Pane>",!
 W "    <Pane>",!
 W "     <Number>2</Number>",!
 W "    </Pane>",!
 W "    <Pane>",!
 W "     <Number>0</Number>",!
 W "    </Pane>",!
 W "   </Panes>",!
 W "   <ProtectObjects>False</ProtectObjects>",!
 W "   <ProtectScenarios>False</ProtectScenarios>",!
 W "  </WorksheetOptions>",!
 W " </Worksheet>",!
 W "</Workbook>",!
 Q
XCELCHDR  ;Generate Column Headers 
 K COLHDR
 D XCELBANR
 S I=""
 F  S I=$O(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",I)) Q:I=""  D
 .S J=""
 .F  S J=$O(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",I,J)) Q:J=""  S COLHDR(J)=$P(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET","COL",I,J),U,1)
 W "<Row ss:AutoFitHeight="_""""_"0"_""""_">",!
 S I="",J=0
 F  S I=$O(COLHDR(I)) Q:I=""  D
 .S J=J+1
 .W "<Cell ss:Index="_""""_J_""""_"><Data ss:Type="_""""_"String"_""""_">"
 .W COLHDR(I)
 .W "</Data></Cell>",!
 W "</Row>",!
 Q
 ;
XCELROW(GLOBAL,ROW,PIECE,FORMAT,STYLE) ;Generate Excel XML Row
 ;Example data - ^XTMP("BARDYSVS",4252,"DAYS TO COL VISIT","DET","COL",1495550,120) = "PROVIDER 1^DYER,ROBIN MARGARET^D^s65"
 ;Example GLOBAL - ^XTMP("BARDYSVS",4252,"DAYS TO COL VISIT","DET","COL") - PASS BY REFERENCE
 ;Example ROW - 149550
 ;Example PIECE - 2 
 ;Example FORMAT - 3
 ;Example Style - 4
 S BARCOL=0
 W "<Row ss:AutoFitHeight="_""""_"0"_""""_">",!
 S J=""
 F  S J=$O(@GLOBAL@(ROW,J)) Q:J=""  D
 .S BARCOL=BARCOL+1
 .I $P(@GLOBAL@(ROW,J),U,PIECE)=0!($P(@GLOBAL@(ROW,J),U,PIECE)="") Q
 .W "<Cell ss:Index="_""""_BARCOL_""""
 .I $P(@GLOBAL@(ROW,J),U,STYLE)'="" W " ss:StyleID="_""""_$P(@GLOBAL@(ROW,J),U,STYLE)_""""
 .W "><Data ss:Type="
 .W $S($P(@GLOBAL@(ROW,J),U,FORMAT)="N":""""_"Number"_"""",$P(@GLOBAL@(ROW,J),U,FORMAT)="D":""""_"DateTime"_"""",1:""""_"String"_"""")_">"
 .W $P(@GLOBAL@(ROW,J),U,PIECE)
 .W "</Data></Cell>",!
 W "</Row>",!
 Q
XCELBANR ; PRINTS THE REPORT BANNER
 S BAR("PG")=""
 S BAR("HD",0)=""
 S BAR("LOC")=""
 S BAR("OPT")="BAR RPT DAYS IN AR"
 D HD^BARRHD
 D NOW^%DTC
 S Y=%
 X ^DD("DD")
 D STYLE66($P(Y,":",1,2))
 D STYLE66("WARNING: Confidential Patient Information, Privacy Act Applies")
 K BAR("LINE")
 S $P(BAR("LINE"),"=",70)=""
 D STYLE66(BAR("LINE"))
 D STYLE66(BAR("HD",0))
 S BAR("TMPLVL")=0
 F  S BAR("TMPLVL")=$O(BAR("HD",BAR("TMPLVL"))) Q:'BAR("TMPLVL")&(BAR("TMPLVL")'=0)  D:$G(BAR("HD",BAR("TMPLVL")))]"" STYLE66(BAR("HD",BAR("TMPLVL")))
 D STYLE66(BAR("LINE"))
 K BAR("LINE")
 Q
STYLE66(X) ;Method to format/output merged cells
 W "<Row ss:AutoFitHeight="_""""_"0"_""""_">"
 W " <Cell ss:MergeAcross="_""""_"10"_""""_" ss:StyleID="_""""_"s66"_""""_"><Data ss:Type="_""""_"String"_""""_">"
 W X
 W "</Data></Cell>",!
 W "</Row>",!
 Q
