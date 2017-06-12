BJPN2P02 ;GDIT/HS/BEE-Prenatal Care Module 2.0 Patch 2 Post Install ; 08 May 2012  12:00 PM
 ;;2.0;PRENATAL CARE MODULE;**2**;Feb 24, 2015;Build 8
 ;
ENV ;EP - Environmental Checking Routine
 ;
 N VERSION,EXEC,BMWDT
 ;
 ;Check for Version 1.0
 I $$VERSION^XPDUTL("BJPN")<2 D BMES^XPDUTL("Version 2.0 of BJPN is required!") S XPDQUIT=2 Q
 ;
 Q
 ;
PST ;EP - Prenatal 2.0 Patch 2 Post Installation Code
 ;
 ;Set BSTSRPC into BJPNRPC
 NEW IEN,DA,X,DIC,BI,TEXT,PIEN,Y
 ;
 K DO,DD
 S DA(1)=$$FIND1^DIC(19,"","B","BJPNRPC","","","ERROR"),DIC="^DIC(19,"_DA(1)_",10,",DIC(0)="LMNZ"
 I $G(^DIC(19,DA(1),10,0))="" S ^DIC(19,DA(1),10,0)="^19.01IP^^"
 S X="BSTSRPC"
 D ^DIC I +Y<1 K DO,DD D FILE^DICN
 ;
 ; UPDATE THE VUECENTRIC REGISTERED OBJECTS FILE
 W !,"Registering the Vucentric Objects..."
 F BI=1:1 S TEXT=$P($T(OBJ+BI),";",3,99) Q:($P(TEXT,";")="END")  D
 .W !,$P(TEXT,";")
 . ;
 . NEW DIC,X,Y,OBJUPD,ERROR,WP8,WP9,WP10,OIEN
 . ;
 . ;PROGID (#.01)
 . S DIC="^CIAVOBJ(19930.2,",DIC(0)="LOX",X=$P(TEXT,";")
 . D ^DIC I +Y<0 Q
 . S OIEN=+Y
 . ;
 . ;NAME (#1)
 . S OBJUPD(19930.2,OIEN_",",1)=$P(TEXT,";",2)
 . ;
 . ;VERSION (#2)
 . S OBJUPD(19930.2,OIEN_",",2)=$P(TEXT,";",3)
 . ;
 . ;SOURCE (#3)
 . S OBJUPD(19930.2,OIEN_",",3)=$P(TEXT,";",4)
 . ;
 . ;SERIALIZABLE (#8)
 . S WP8(1)=$P(TEXT,";",5)
 . D WP^DIE(19930.2,OIEN_",",8,"","WP8")
 . ;
 . ;INITIALIZATION (#9)
 . S WP9(1)=$P(TEXT,";",6)
 . D WP^DIE(19930.2,OIEN_",",9,"","WP9")
 . ;
 . ;REQUIRED (#10)
 . S WP10(1)=$P(TEXT,";",7)
 . D WP^DIE(19930.2,OIEN_",",10,"","WP10")
 . ;
 . ;PROPEDIT (#11)
 . S OBJUPD(19930.2,OIEN_",",11)=$P(TEXT,";",8)
 . ;
 . ;MULTIPLE (#12)
 . S OBJUPD(19930.2,OIEN_",",12)=$P(TEXT,";",9)
 . ;
 . ;DISABLED (#13)
 . S OBJUPD(19930.2,OIEN_",",13)=$P(TEXT,";",10)
 . ;
 . ;ALLKEYS (#14)
 . S OBJUPD(19930.2,OIEN_",",14)=$P(TEXT,";",11)
 . ;
 . ;HIDDEN (#15)
 . S OBJUPD(19930.2,OIEN_",",15)=$P(TEXT,";",12)
 . ;
 . ;SIDEBYSIDE (#16)
 . S OBJUPD(19930.2,OIEN_",",16)=$P(TEXT,";",13)
 . ;
 . ;SERVICE (#17)
 . S OBJUPD(19930.2,OIEN_",",17)=$P(TEXT,";",14)
 . ;
 . ;REGRESS (#18)
 . S OBJUPD(19930.2,OIEN_",",18)=$P(TEXT,";",15)
 . ;
 . ;NOREGISTER (#19)
 . S OBJUPD(19930.2,OIEN_",",19)=$P(TEXT,";",16)
 . ;
 . ;DOTNET (#22)
 . S OBJUPD(19930.2,OIEN_",",22)=$P(TEXT,";",17)
 . ;
 . ;ALIAS (#23)
 . S OBJUPD(19930.2,OIEN_",",23)=$P(TEXT,";",18)
 . ;
 . ;TECHNICAL DESCRIPTION (#98)
 . S OBJUPD(19930.2,OIEN_",",98)=$P(TEXT,";",19)
 . ;
 . ;DESCRIPTION (#99)
 . S OBJUPD(19930.2,OIEN_",",99)=$P(TEXT,";",20)
 . ;
 . ;CLSID (#.5)
 . S OBJUPD(19930.2,OIEN_",",.5)=$P(TEXT,";",21)
 . ;
 . ;HEIGHT (#4)
 . S OBJUPD(19930.2,OIEN_",",4)=$P(TEXT,";",22)
 . ;
 . ;WIDTH (#5)
 . S OBJUPD(19930.2,OIEN_",",5)=$P(TEXT,";",23)
 . ;
 . ;Update entry
 .D FILE^DIE("","OBJUPD","ERROR")
 ;
XPST Q
 ;
 ;;File 19930.2 Field listing
 ;;PROGID;NAME;VRSN;SRC;SER;INI;REQ;PROP;MULT;DIS;ALLK;HIDD;SBYS;SERV;REG;NORG;DOTN;ALIA;TDES;DES;CLSID;HEIGHT;WIDTH
 ;;.01;1;2;3;8;9;10;11;12;13;14;15;16;17;18;19;22;23;98;99.5;4;5
OBJ ;;
 ;;FILE:INFRAGISTICS2.EXCEL.V10.3.DLL;Excel.v10.3;10.3.20103.1000;Infragistics2.Excel.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.WIN.ULTRAWINEDITORS.V10.3.DLL;UltraWinEditors.v10.3;10.3.20103.1000;Infragistics2.Win.UltraWinEditors.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INDIANHEALTHSERVICE.SNOMEDCTSEARCH.DLL;SNOMED CT Search;1.0.0.7;IndianHealthService.SNOMEDCTSearch.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.SHARED.V10.3.DLL;Shared.v10.3;10.3.20103.1000;Infragistics2.Shared.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.WIN.ULTRAWINTABCONTROL.V10.3.DLL;UltraWinTabControl.v10.3;10.3.20103.1000;Infragistics2.Win.UltraWinTabControl.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.WIN.MISC.V10.3.DLL;Misc.v10.3;10.3.20103.1000;Infragistics2.Win.Misc.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.WIN.ULTRAWINGRID.EXCELEXPORT.V10.3.DLL;ExcelExport.v10.3;10.3.20103.1000;Infragistics2.Win.UltraWinGrid.ExcelExport.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.WIN.ULTRAWINGRID.V10.3.DLL;UltraWinGrid.v10.3;10.3.20103.1000;Infragistics2.Win.UltraWinGrid.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.WIN.ULTRAWINPRINTPREVIEWDIALOG.V10.3.DLL;UltraWinPrintPreviewDialog.v10.3;10.3.20103.1000;Infragistics2.Win.UltraWinPrintPreviewDialog.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.WIN.ULTRAWINSTATUSBAR.V10.3.DLL;UltraWinStatusBar.v10.3;10.3.20103.1000;Infragistics2.Win.UltraWinStatusBar.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.WIN.ULTRAWINTOOLBARS.V10.3.DLL;UltraWinToolbars.v10.3;10.3.20103.1000;Infragistics2.Win.UltraWinToolbars.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.WIN.V10.3.DLL;Win.v10.3;10.3.20103.1000;Infragistics2.Win.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.WIN.ULTRAWINLISTBAR.V10.3.DLL;UltraWinListBar.v10.3;10.3.20103.1000;Infragistics2.Win.UltraWinListBar.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:INFRAGISTICS2.WIN.ULTRAWINLISTVIEW.V10.3.DLL;UltraWinListView.v10.3;10.3.20103.1000;Infragistics2.Win.UltraWinListView.v10.3.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:RICHTEXTBOXPRINTCONTROL.DLL;Rich Text Box Print Control;1.0.0.0;RichTextBoxPrintControl.dll;;;;0;0;0;0;1;0;0;0;;0;;;;;;
 ;;FILE:BEHPOVCVG.DLL;BEHPovCvg;1.0.5421.30512;BEHPovCvg.dll;;;;0;1;0;0;1;0;0;0;;0;;;;;;
 ;;IHS.PN.EHR.PRENATALPICKLIST.PRENATALPICKLISTCOMPONENT;Prenatal Pick List;2.0.2.0;IHS.PN.EHR.PrenatalPickList.dll;;;IHS.PN.EHR.PrenatalPickList.chm;0;1;0;0;0;0;0;0;;1;;;;{0A2C8481-DB1A-4D80-A8E0-CEBF70E6F705};300;600
 ;;IHS.PN.EHR.PRENATALPROBLEMLIST.PIPCOMPONENT;Pregnancy Issues and Problems List;2.0.2.0;IHS.PN.EHR.PrenatalProblemList.dll;;;IHS.PN.EHR.PrenatalProblemList.chm;0;1;0;0;0;0;0;0;;1;;;;{B5416178-ECD8-4515-A700-2980BCAA6CAA};300;640
 ;;END;
 ;;