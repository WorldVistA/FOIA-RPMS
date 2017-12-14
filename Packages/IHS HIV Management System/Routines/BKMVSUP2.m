BKMVSUP2 ;PRXM/HC/WOM - Continuation of BKMVSUP, HIV SUPPLEMENT; 10 Jun 2005  12:33 PM
 ;;2.2;HIV MANAGEMENT SYSTEM;;Apr 01, 2015;Build 40
 Q
 ; Beginning of Immunizations
IMM(DFN) ; EP - Retrieve HAART Appropriate and Compliance Data
 I LNCNT>(MAXCT-2) D NEWPG^BKMVSUP
 D UPD^BKMVSUP
 S LINE=" LAST DOCUMENTED IMMUNIZATIONS: " D UPD^BKMVSUP,BLANK^BKMVSUP(1)
 D IMFIND(DFN)
 D BLANK^BKMVSUP(1)
 I LNCNT>(MAXCT-4) D NEWPG^BKMVSUP
 N BKMIEN1,BKMIEN2,B1,HAAR,HAART,HAARS,HAARDT,BKMIENS,BKMDT,OK
 S HAART="",BKMIEN1="B"
 S LINE=" RECENT MEDICATIONS (past 4 months): " D UPD^BKMVSUP,BLANK^BKMVSUP(1)
 S LINE=" ARV Status: " D UPD^BKMVSUP
 ; Build HAAR array to capture HAART Appropriate and Compliance Data
 F  S BKMIEN1=$O(^BKM(90451,BKMIEN,1,BKMIEN1),-1) Q:'BKMIEN1  D
 . S BKMDT=$$FMADD^XLFDT(DT,-122) ;Look at last 4 months
 . F  S BKMDT=$O(^BKM(90451,BKMIEN,1,BKMIEN1,40,"B",BKMDT)) Q:'BKMDT  D
 .. S BKMIEN2="" F  S BKMIEN2=$O(^BKM(90451,BKMIEN,1,BKMIEN1,40,"B",BKMDT,BKMIEN2)) Q:'BKMIEN2  D
 ... S HAART=HAART+1
 ... D GETS^DIQ(90451.03,BKMIEN2_","_BKMIEN1_","_BKMIEN_",",".01;1;2;3","IE","HAAR("_HAART_")")
 ... ; Confirm that there is something to be printed
 ... S OK=0 D  Q:'OK
 .... I $G(HAAR(HAART,90451.03,BKMIEN2_","_BKMIEN1_","_BKMIEN_",",1,"I"))]"" S OK=1 Q
 .... I $G(HAAR(HAART,90451.03,BKMIEN2_","_BKMIEN1_","_BKMIEN_",",2,"E"))]"" S OK=1 Q
 .... I $G(HAAR(HAART,90451.03,BKMIEN2_","_BKMIEN1_","_BKMIEN_",",3,"E"))]"" S OK=1 Q
 ... S HAARS(HAAR(HAART,90451.03,BKMIEN2_","_BKMIEN1_","_BKMIEN_",",.01,"I"),HAART,BKMIEN2_","_BKMIEN1_","_BKMIEN_",")=""
 ; Sort data by appropriate date and print in reverse date order
 I $D(HAARS) D  K HAARS
 . S HAARDT=""
 . F  S HAARDT=$O(HAARS(HAARDT),-1) Q:HAARDT=""  D
 .. S HAART=""
 .. F  S HAART=$O(HAARS(HAARDT,HAART)) Q:HAART=""  D
 ... S BKMIENS=""
 ... F  S BKMIENS=$O(HAARS(HAARDT,HAART,BKMIENS)) Q:BKMIENS=""  D
 .... I LNCNT>(MAXCT-2) D NEWPG^BKMVSUP
 .... S LINE="   ARV Appropriate: "_$$FMTE^XLFDT(HAARDT,"5Z")_"  "
 .... S LINE=LINE_HAAR(HAART,90451.03,BKMIENS,1,"E")_"  "_HAAR(HAART,90451.03,BKMIENS,2,"E") D UPD^BKMVSUP
 .... S LINE="   Comment: "_HAAR(HAART,90451.03,BKMIENS,3,"I") D UPD^BKMVSUP
 I $D(HAAR) D BLANK^BKMVSUP(1)
 S BKMIEN1="B"
 F  S BKMIEN1=$O(^BKM(90451,BKMIEN,1,BKMIEN1),-1) Q:'BKMIEN1  D
 . S BKMDT=$$FMADD^XLFDT(DT,-183) ;Look at last 6 months
 . F  S BKMDT=$O(^BKM(90451,BKMIEN,1,BKMIEN1,50,"B",BKMDT)) Q:'BKMDT  D
 .. S BKMIEN2="" F  S BKMIEN2=$O(^BKM(90451,BKMIEN,1,BKMIEN1,50,"B",BKMDT,BKMIEN2)) Q:'BKMIEN2  D
 ... S HAART=HAART+1
 ... D GETS^DIQ(90451.07,BKMIEN2_","_BKMIEN1_","_BKMIEN_",",".01;1;2","IE","HAAR("_HAART_")")
 ... ; Confirm that there is something to be printed
 ... S OK=0 D  Q:'OK
 .... I $G(HAAR(HAART,90451.07,BKMIEN2_","_BKMIEN1_","_BKMIEN_",",1,"E"))]"" S OK=1 Q
 .... I $G(HAAR(HAART,90451.07,BKMIEN2_","_BKMIEN1_","_BKMIEN_",",2,"I"))]"" S OK=1 Q
 ... S HAARS(HAAR(HAART,90451.07,BKMIEN2_","_BKMIEN1_","_BKMIEN_",",.01,"I"),HAART,BKMIEN2_","_BKMIEN1_","_BKMIEN_",")=""
 ; Sort data by appropriate date and print in reverse date order
 I $D(HAARS) D  K HAARS
 . S HAARDT=""
 . F  S HAARDT=$O(HAARS(HAARDT),-1) Q:HAARDT=""  D
 .. S HAART=""
 .. F  S HAART=$O(HAARS(HAARDT,HAART)) Q:HAART=""  D
 ... S BKMIENS=""
 ... F  S BKMIENS=$O(HAARS(HAARDT,HAART,BKMIENS)) Q:BKMIENS=""  D
 .... I LNCNT>(MAXCT-2) D NEWPG^BKMVSUP
 .... S LINE="   ARV Adherence: "_$$FMTE^XLFDT(HAARDT,"5Z")_"  "_HAAR(HAART,90451.07,BKMIENS,1,"E")
 .... D UPD^BKMVSUP
 .... S LINE="   Comment: "_HAAR(HAART,90451.07,BKMIENS,2,"I") D UPD^BKMVSUP
 I '$D(HAAR) D
 . I LNCNT>(MAXCT-2) D NEWPG^BKMVSUP
 . D UPD^BKMVSUP S LINE="   ARV Appropriate:" D UPD^BKMVSUP
 . S LINE="   ARV Adherence:"
 K HAAR
 D UPD^BKMVSUP,BLANK^BKMVSUP(1)
 I LNCNT>MAXCT D NEWPG^BKMVSUP
 Q
IMFIND(DFN) ; Return recent immunizations in ^TMP("BKMSUPP",$J,1)
 N BKMIM,IMARR,IMIEN
 D PNE(DFN)
 D FLU(DFN)
 D HEPA(DFN)
 D HEPB(DFN)
 D CMV(DFN)
 D TET(DFN)
 Q
PNE(DFN) ; Retrieve Pneumococcal taxonomies (IZ.6)
 S LINE=" Pneumococcal: "
 K BKMT("PNE")
 S GLOBAL="BKMT(""PNE"",VSTDT,TEST,""CPT"")"
 D CPTTAX^BKMIXX(DFN,"BGP PNEUMO IZ CPTS","","",GLOBAL)
 S GLOBAL="BKMT(""PNE"",VSTDT,TEST,""ICD"")"
 D ICDTAX^BKMIXX1(DFN,"BQI PNEUMO IZ DXS","","",GLOBAL)
 S GLOBAL="BKMT(""PNE"",VSTDT,TEST,""PROC"")"
 D PRCTAX^BKMIXX1(DFN,"BQI PNEUMO IZ PROCEDURES","","",GLOBAL)
 S GLOBAL="BKMT(""PNE"",VSTDT,TEST,""CVX"")"
 D CVXTAX^BKMIXX1(DFN,"BKM PNEUMO IZ CVX CODES","","",GLOBAL) ;***
 I $D(BKMT("PNE")) D LTAXPRT^BKMVSUP1("PNE",1) K BKMT("PNE") D UPD^BKMVSUP:LINE'="" Q
 ; Check refusals
 D REFUSAL^BKMIXX2(DFN,9999999.14,"BKM PNEUMO IZ CVX CODES","","",GLOBAL)
 ; Print results
 D LTAXPRT^BKMVSUP1("PNE",1,1,1)
 K BKMT("PNE")
 I LINE'="" D UPD^BKMVSUP
 Q
FLU(DFN) ; Retrieve Influenza taxonomies (IZ.5)
 S LINE=" Influenza: "
 K BKMT("FLU")
 S GLOBAL="BKMT(""FLU"",VSTDT,TEST,""CPT"")"
 D CPTTAX^BKMIXX(DFN,"BGP CPT FLU","","",GLOBAL)
 S GLOBAL="BKMT(""FLU"",VSTDT,TEST,""ICD"")"
 D ICDTAX^BKMIXX1(DFN,"BQI FLU IZ DXS","","",GLOBAL)
 S GLOBAL="BKMT(""FLU"",VSTDT,TEST,""PROC"")"
 D PRCTAX^BKMIXX1(DFN,"BQI FLU IZ PROCEDURES","","",GLOBAL)
 S GLOBAL="BKMT(""FLU"",VSTDT,TEST,""CVX"")"
 D CVXTAX^BKMIXX1(DFN,"BGP FLU IZ CVX CODES","","",GLOBAL)
 I $D(BKMT("FLU")) D LTAXPRT^BKMVSUP1("FLU",1) K BKMT("FLU") D UPD^BKMVSUP:LINE'="" Q
 ; Check refusals
 D REFUSAL^BKMIXX2(DFN,9999999.14,"BGP FLU IZ CVX CODES","","",GLOBAL)
 ; Print results
 D LTAXPRT^BKMVSUP1("FLU",1,1,1)
 K BKMT("FLU")
 I LINE'="" D UPD^BKMVSUP
 Q
HEPA(DFN) ; Retrieve Hepatitis A taxonomies (IZ.3)
 S LINE=" Hepatitis A (last 2): "
 ;S LINE=$$LINE^BKMVSUP(LINE,"Dx Date: ",24)
 K BKMT("HEPADX") N HEPDT
 S GLOBAL="BKMT(""HEPADX"",VSTDT,TEST,""ICD"")"
 D ICDTAX^BKMIXX1(DFN,"BKM HEP A DXS","","",GLOBAL)
 D PRBTAX^BKMIXX(DFN,"BKM HEP A DXS","","",GLOBAL)
 I $D(BKMT("HEPADX")) D  K BKMT("HEPADX")
 . S HEPDT=$O(BKMT("HEPADX",""),-1)
 . I HEPDT S LINE=LINE_$$FMTE^XLFDT(HEPDT\1,"5Z")_"  "
 . S LINE=LINE_$P(@$Q(BKMT("HEPADX")),U,2)
 K BKMT("HEPA")
 S GLOBAL="BKMT(""HEPA"",VSTDT,TEST,""CPT"")"
 D CPTTAX^BKMIXX(DFN,"BKM HEP A IZ CPTS","","",GLOBAL)
 S GLOBAL="BKMT(""HEPA"",VSTDT,TEST,""CVX"")"
 D CVXTAX^BKMIXX1(DFN,"BKM HEP A IZ CVX CODES","","",GLOBAL)
 I $D(BKMT("HEPA")) D LTAXPRT^BKMVSUP1("HEPA",2,"","","","",1,"Dx Date: ") K BKMT("HEPA") D UPD^BKMVSUP:LINE'="" Q
 ; Check refusals
 D REFUSAL^BKMIXX2(DFN,9999999.14,"BKM HEP A IZ CVX CODES","","",GLOBAL)
 ; Print results
 D LTAXPRT^BKMVSUP1("HEPA",2,1,1,,,,"Dx Date: ")
 K BKMT("HEPA")
 I LINE=" Hepatitis A (last 2): " S LINE=$$LINE^BKMVSUP(LINE,"Dx Date: ",24)
 I LINE'="" D UPD^BKMVSUP
 Q
HEPB(DFN) ; Retrieve Hepatitis B taxonomies (IZ.4)
 D BLANK^BKMVSUP(1)
 S LINE=" Hepatitis B (last 3): "
 K BKMT("HEPBDX") N HEPDT
 S GLOBAL="BKMT(""HEPBDX"",VSTDT,TEST,""ICD"")"
 D ICDTAX^BKMIXX1(DFN,"BKM HEP B DXS","","",GLOBAL)
 D PRBTAX^BKMIXX(DFN,"BKM HEP B DXS","","",GLOBAL)
 I $D(BKMT("HEPBDX")) D  K BKMT("HEPBDX")
 . S HEPDT=$O(BKMT("HEPBDX",""),-1)
 . I HEPDT S LINE=LINE_$$FMTE^XLFDT(HEPDT\1,"5Z")_"  " ;W $$FMTE^XLFDT(HEPDT\1,"5Z"),"  "
 . S LINE=LINE_$P(@$Q(BKMT("HEPBDX")),U,2)
 K BKMT("HEPB")
 S GLOBAL="BKMT(""HEPB"",VSTDT,TEST,""CPT"")"
 D CPTTAX^BKMIXX(DFN,"BKM HEP B IZ CPTS","","",GLOBAL)
 S GLOBAL="BKMT(""HEPB"",VSTDT,TEST,""CVX"")"
 D CVXTAX^BKMIXX1(DFN,"BKM HEP B IZ CVX CODES","","",GLOBAL)
 I $D(BKMT("HEPB")) D LTAXPRT^BKMVSUP1("HEPB",3,"","","","",1,"Dx Date: ") K BKMT("HEPB") D UPD^BKMVSUP:LINE'="" Q
 ; Check refusals
 D REFUSAL^BKMIXX2(DFN,9999999.14,"BKM HEP B IZ CVX CODES","","",GLOBAL)
 ; Print results
 D LTAXPRT^BKMVSUP1("HEPB",3,1,1,,,,"Dx Date: ")
 K BKMT("HEPB")
 I LINE=" Hepatitis B (last 3): " S LINE=$$LINE^BKMVSUP(LINE,"Dx Date: ",24)
 I LINE'="" D UPD^BKMVSUP
 Q
CMV(DFN) ; Retrieve CMV(IgG) taxonomies (T.6)
 ; Disabled as per IHS
 Q
 D BLANK^BKMVSUP(1)
 S LINE=" CMV (IgG): "
 K BKMT("CMV")
 S GLOBAL="BKMT(""CMV"",VSTDT,TEST,""CPT"")"
 D CPTTAX^BKMIXX(DFN,"BKM CMV IZ CPTS","","",GLOBAL)
 S GLOBAL="BKMT(""CMV"",VSTDT,TEST,""CVX"")"
 D CVXTAX^BKMIXX1(DFN,"BKM CMV IZ CVX CODES","","",GLOBAL)
 I $D(BKMT("CMV")) D LTAXPRT^BKMVSUP1("CMV",1) K BKMT("CMV") D UPD^BKMVSUP:LINE'="" Q
 ; Check refusals
 D REFUSAL^BKMIXX2(DFN,9999999.14,"BKM CMV IZ CVX CODES","","",GLOBAL)
 ; Print results
 D LTAXPRT^BKMVSUP1("CMV",1,1,1)
 K BKMT("CMV")
 I LINE'="" D UPD^BKMVSUP
 Q
TET(DFN) ; Retrieve Tetanus taxonomies (IZ.7)
 S LINE=" Tetanus: "
 K BKMT("TET")
 S GLOBAL="BKMT(""TET"",VSTDT,TEST,""CPT"")"
 D CPTTAX^BKMIXX(DFN,"BKM TETANUS IZ CPTS","","",GLOBAL)
 S GLOBAL="BKMT(""TET"",VSTDT,TEST,""ICD"")"
 D ICDTAX^BKMIXX1(DFN,"BKM TETANUS IZ DXS","","",GLOBAL)
 S GLOBAL="BKMT(""TET"",VSTDT,TEST,""PROC"")"
 D PRCTAX^BKMIXX1(DFN,"BKM TETANUS IZ PROCEDURES","","",GLOBAL)
 S GLOBAL="BKMT(""TET"",VSTDT,TEST,""CVX"")"
 D CVXTAX^BKMIXX1(DFN,"BKM TETANUS IZ CVX CODES","","",GLOBAL)
 I $D(BKMT("TET")) D LTAXPRT^BKMVSUP1("TET",1) K BKMT("TET") D UPD^BKMVSUP:LINE'="" Q
 ; Check refusals
 D REFUSAL^BKMIXX2(DFN,9999999.14,"BKM TETANUS IZ CVX CODES","","",GLOBAL)
 ; Print results
 D LTAXPRT^BKMVSUP1("CMV",1,1,1)
 K BKMT("TET")
 I LINE'="" D UPD^BKMVSUP
 Q
SCREENS(DFN) ; EP - Get screens from taxonomies
 ; Several calls below used to use $H-360.
 ; Replaced with BKMCKDT (FileMan format date).
 N BKMCKDT,CODETP
 S BKMCKDT=$$FMADD^XLFDT(DT,-360)
 ; Variable MAXCT is set by PRINT^BKMVSUP
 D UPD^BKMVSUP
 I LNCNT>(MAXCT-2) D NEWPG^BKMVSUP
 D UPD^BKMVSUP S LINE=" IN THE PAST 12 MONTHS:" D UPD^BKMVSUP
 N GLOBAL1,GLOBAL2,GLOBAL3,CODE,Y,BKMDT,CD,BHP ;K ^TMP("BKMSUPP",$J)
DEP ; Depression Screening (S.2)
 K BKMT("DSC")
 S GLOBAL1="BKMT(""DSC"",DFN,VSTDT,TEST,""POV"")"
 S GLOBAL2="BKMT(""DSC"",DFN,VSTDT,TEST,""EX"")",CODETP=""
 S GLOBAL3="BKMT(""DSC"",DFN,VSTDT,TEST,""BHS"")"
 D ICDTAX^BKMIXX1(DFN,"BGP MOOD DISORDERS","",BKMCKDT,GLOBAL1) ; Requested by IHS as part of S.2
 D ICDTAX^BKMIXX1(DFN,"BQI DEPRESSION SCREEN DXS","",BKMCKDT,GLOBAL1)
 ;D POVTAX^BKMIXX2(DFN,"V79.0","",BKMCKDT,GLOBAL1) ; Requested by IHS as part of S.2
 ;SNOMED
 D EXAMTAX^BKMIXX1(DFN,"36","",BKMCKDT,GLOBAL2) ; Requested by IHS as part of S.2
 F CD=14.1 S BHP(CD)=""
 D BHPRBTAX^BKMIXX2(DFN,.BHP,"",BKMCKDT,GLOBAL3)
 S BKMDT=$O(BKMT("DSC",DFN,""),-1),Y=BKMDT,Y=$$FMTE^XLFDT(Y,"5Z")
 S CODE="" S:BKMDT'="" CODE=$O(BKMT("DSC",DFN,BKMDT,""))
 I CODE'="" D
 . S CODETP=$O(BKMT("DSC",DFN,BKMDT,CODE,""))
 . S CODE=$P(BKMT("DSC",DFN,BKMDT,CODE,CODETP),U,2),CODETP=CODETP_": "
 S LINE=" Depression Screening: ",LINE=$$LINE^BKMVSUP(LINE,"Date: ",24)_$P(Y,"@")
 S LINE=$$LINE^BKMVSUP(LINE,CODETP_$E(CODE,1,30),42) D UPD^BKMVSUP
 I LNCNT>MAXCT D NEWPG^BKMVSUP
 K BKMT("DSC")
 ;
IPV ; Intimate Partner/Domestic Violence Screening
 N SEX
 K BKMT("VSC")
 S SEX=$$GET1^DIQ(2,DFN,.02,"I"),CODETP=""
 I SEX="M" D
 . S LINE=" IPV/DV Screening: Not Applicable"
 I SEX'="M" D
 . S GLOBAL1="BKMT(""VSC"",DFN,VSTDT,TEST,""POV"")"
 . S GLOBAL2="BKMT(""VSC"",DFN,VSTDT,TEST,""PED"")"
 . S GLOBAL3="BKMT(""VSC"",DFN,VSTDT,TEST,""EX"")"
 . D ICDTAX^BKMIXX1(DFN,"BGP IPV/DV COUNSELING ICDS","",BKMCKDT,GLOBAL1)
 . D ICDTAX^BKMIXX1(DFN,"BGP DV DXS","",BKMCKDT,GLOBAL1)
 . D PTEDTAX^BKMIXX(DFN,"DV-,-DV","",BKMCKDT,GLOBAL2) ; Domestic Violence
 . D EXAMTAX^BKMIXX1(DFN,"34","",BKMCKDT,GLOBAL3)
 . S BKMDT=$O(BKMT("VSC",DFN,""),-1),Y=BKMDT,Y=$$FMTE^XLFDT(Y,"5Z")
 . S CODE="" S:BKMDT'="" CODE=$O(BKMT("VSC",DFN,BKMDT,""))
 . I CODE'="" D
 .. S CODETP=$O(BKMT("VSC",DFN,BKMDT,CODE,""))
 .. S CODE=$P(BKMT("VSC",DFN,BKMDT,CODE,CODETP),U,2),CODETP=CODETP_": "
 . S LINE=" IPV/DV Screening: ",LINE=$$LINE^BKMVSUP(LINE,"Date: ",24)_$P(Y,"@")
 . S LINE=$$LINE^BKMVSUP(LINE,CODETP_$E(CODE,1,30),42)
 D UPD^BKMVSUP
 K BKMT("VSC")
 I LNCNT>MAXCT D NEWPG^BKMVSUP
ALC ; Alcohol Screening (S.1)
 K BKMT("ASC")
 N GLOBAL1,GLOBAL2,GLOBAL3,GLOBAL4,GLOBAL5,GLOBAL6,GLOBAL7,GLOBAL8
 N CD,BHP,MSR
 S GLOBAL1="BKMT(""ASC"",DFN,VSTDT,TEST,""POV"")",CODETP=""
 S GLOBAL2="BKMT(""ASC"",DFN,VSTDT,TEST,""HF"")"
 S GLOBAL3="BKMT(""ASC"",DFN,VSTDT,TEST,""PED"")"
 S GLOBAL4="BKMT(""ASC"",DFN,VSTDT,TEST,""EX"")"
 S GLOBAL5="BKMT(""ASC"",DFN,VSTDT,TEST,""CPT"")"
 S GLOBAL6="BKMT(""ASC"",DFN,VSTDT,TEST,""PRC"")"
 S GLOBAL7="BKMT(""ASC"",DFN,VSTDT,TEST,""BHP"")"
 S GLOBAL8="BKMT(""ASC"",DFN,VSTDT,TEST,""MSR"")"
 D ICDTAX^BKMIXX1(DFN,"BQI ALCOHOL SCREEN DXS","",BKMCKDT,GLOBAL1)
 D ICDTAX^BKMIXX1(DFN,"BGP ALCOHOL DXS","",BKMCKDT,GLOBAL1)
 D CPTTAX^BKMIXX(DFN,"BGP ALCOHOL SCREENING CPTS","",BKMCKDT,GLOBAL5)
 ;D PRCTAX^BKMIXX1(DFN,"BGP ALCOHOL PROCEDURES","",BKMCKDT,GLOBAL6)
 D PRCTAX^BKMIXX1(DFN,"BQI ALCOHOL PROCEDURES","",BKMCKDT,GLOBAL6)
 D HFTAX^BKMIXX(DFN,"BGP ALCOHOL HLTH FACTOR","",BKMCKDT,GLOBAL2)
 D PTEDTAX^BKMIXX(DFN,"CD-,-CD,AOD-,-AOD","",BKMCKDT,GLOBAL3) ; Alcohol
 D EXAMTAX^BKMIXX1(DFN,"35","",BKMCKDT,GLOBAL4)
 F CD=29.1,10,27,29 S BHP(CD)=""
 D BHPTAX^BKMIXX2(DFN,.BHP,"",BKMCKDT,GLOBAL7)
 F CD="AUDT","AUDC","CRFT" S MSR(CD)=""
 D MSRTAX^BKMIXX2(DFN,.MSR,"",BKMCKDT,GLOBAL8)
 S BKMDT=$O(BKMT("ASC",DFN,""),-1),Y=BKMDT,Y=$$FMTE^XLFDT(Y,"5Z")
 S CODE="" S:BKMDT'="" CODE=$O(BKMT("ASC",DFN,BKMDT,""))
 I CODE'="" D
 . S CODETP=$O(BKMT("ASC",DFN,BKMDT,CODE,""))
 . S CODE=$P(BKMT("ASC",DFN,BKMDT,CODE,CODETP),U,2),CODETP=CODETP_": "
 S LINE=" Alcohol Screening: ",LINE=$$LINE^BKMVSUP(LINE,"Date: ",24)_$P(Y,"@")
 S LINE=$$LINE^BKMVSUP(LINE,CODETP_$E(CODE,1,30),42) D UPD^BKMVSUP
 K BKMT("ASC")
 I LNCNT>MAXCT D NEWPG^BKMVSUP
 Q
HTWT(DFN) ; EP - HEIGHT/WEIGHT
 Q:'$D(^AUPNVMSR("AC",DFN)) "^"
 N HT,WT,TYP
 S (HT,WT)=""
 S TYP=$$FIND1^DIC(9999999.07,,"X","HT")
 I TYP S HT=$$MSRVAL(TYP)
 S TYP=$$FIND1^DIC(9999999.07,,"X","WT")
 I TYP S WT=$$MSRVAL(TYP)
 Q HT_"^"_WT
 ;
MSRVAL(TYP) ; Return most recent value based on type of measurement passed
 N VAL,BKMIDT,BKMIM,DT,QFL,MVAL
 S VAL="",QFL=0
 S BKMIDT=$O(^AUPNVMSR("AA",DFN,TYP,"")) I BKMIDT="" Q "^"
 S BKMIM="",MVAL="^"
 F  S BKMIM=$O(^AUPNVMSR("AA",DFN,TYP,BKMIDT,"")) Q:BKMIM=""!(QFL)  D
 . S TYP=$P($G(^AUPNVMSR(BKMIM,0)),U,4)
 . I $P($G(^AUPNVMSR(BKMIM,2)),U,1)=1 Q
 . S MVAL=TYP_"^"_$$FMTE^XLFDT(9999999-BKMIDT,"5Z"),QFL=1
 Q MVAL
 ;
XIT ; QUIT POINT
 Q