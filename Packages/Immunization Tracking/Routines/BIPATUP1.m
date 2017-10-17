BIPATUP1 ;IHS/CMI/MWR - UPDATE PATIENT DATA; DEC 15, 2011
 ;;8.5;IMMUNIZATION;**14**;AUG 01,2017
 ;;* MICHAEL REMILLARD, DDS * CIMARRON MEDICAL INFORMATICS, FOR IHS *
 ;;  UPDATE PATIENT DATA, IMM FORECAST IN ^BIPDUE(.
 ;;  PATCH 8: Extensive changes to accommodate new TCH Forecaster   LDFORC+0
 ;;  PATCH 9: Numerous changes to accomodate new Heb B High Risk  IHSPOST+0
 ;;  PATCH 10: Recognize both TCH incoming 33 PNEUMO-PS or 133 PCV-13. DDUE2+56
 ;;  PATCH 12: If Dose Override is Invalid (1-4) forecast Pneumo.  IHSPOST+30
 ;;  PATCH 13: Do not forecast Flu before local Flu Season Start Date.  DDUE2+46
 ;;  PATCH 14: Mods to add IHS Forecast Addendum to TCH Report.  LDFORC+0, IHSPOST+0
 ;;            Only CVX 33 should satisfy Pneumo High Risk. IHSPOST+39
 ;
 ;
 ;********** PATCH 14, v8.5, AUG 01,2017, IHS/CMI/MWR
 ;---> IHS Forecast Addendum to TCH Report.
 ;----------
LDFORC(BIDFN,BIFORC,BIHX,BIFDT,BIDUZ2,BINF,BIPDSS,BIADDND) ;EP
 ;---> Load Immserve Data (Immunizations Due) into ^BIPDUE(.
 ;---> Parameters:
 ;     1 - BIDFN  (req) Patient IEN.
 ;     2 - BIFORC (req) String containing Patient's Imms Due.
 ;     3 - BIHX   (req) String containing Patient's Imm History.
 ;     4 - BIFDT  (opt) Forecast Date (date used for forecast).
 ;     5 - BIDUZ2 (opt) User's DUZ(2) indicating site parameters.
 ;     6 - BINF   (opt) Array of Vaccine Grp IEN'S that should not be forecast.
 ;     7 - BIPDSS (ret) Returned string of V IMM IEN's that are
 ;                      Problem Doses, according to ImmServe.
 ;     8 - BIADDND(ret) IHS forecasting addendum (to be added to TCH Report).
 ;
 Q:'$G(BIDFN)  Q:$G(BIFORC)=""  Q:$G(BIHX)=""
 ;---> If no Forecast Date passed, set it equal to today.
 S:'$G(BIFDT) BIFDT=DT S:'$D(BINF) BINF=""
 ;
 ;---> First clear out any previously set Immunizations Due and
 ;---> any Forecasting Errors for this patient.
 D KILLDUE^BIPATUP2(BIDFN)
 ;
 ;---> If no BIDUZ2, try DUZ(2); otherwise, defaults will be used.
 S:'$G(BIDUZ2) BIDUZ2=$G(DUZ(2))
 ;
 ;********** PATCH 8, v8.5, MAR 15,2014, IHS/CMI/MWR
 ;---> Check for any input doses that TCH identified as problems.
 ;---> Build and return a string of "V IMM IEN_%_CVX" problem doses,
 ;---> as identified in the TCH Input Doses segment.
 D DPROBS^BIPATUP2(BIFORC,.BIPDSS)
 ;**********
 ;
 ;---> Seed BITCHAF to collect
 N BITCHAF S BITCHAF=""
 ;
 ;---> Parse Doses Due from Forecaster string (BIFORC), perform any
 ;---> necessary translations, and set as due in patient global ^BIPDUE(.
 D DDUE(BIFORC,BIHX,.BINF,BIDUZ2,BIFDT,.BITCHAF)
 ;
 ;---> After loading (SETDUE) TCH forecast, perform any follow-up forecasting
 ;---> needed for High Risk, "Post-forecast".
 D IHSPOST(BIDFN,BIHX,BIFDT,BIDUZ2,.BINF,BITCHAF,.BIADDND)
 ;
 Q
 ;
 ;
 ;----------
DDUE(BIFORC,BIHX,BINF,BIDUZ2,BIFDT,BITCHAF) ;EP
 ;---> Parse Doses Due from Immserve string (BIFORC), perform any
 ;---> necessary translations, and set as due in patient global ^BIPDUE.
 ;---> Parameters:
 ;     1 - BIFORC  (req) Forecast string coming back from TCH.
 ;     2 - BIHX    (req) String containing Patient's Imm History.
 ;     3 - BINF    (opt) Array of Vaccine Grp IEN'S that should not be forecast.
 ;     4 - BIDUZ2  (opt) User's DUZ(2) indicating site parameters.
 ;     5 - BIFDT   (opt) Forecast Date (date used for forecast).
 ;     6 - BITCHAF (ret) [1=TCH Already Forecast Pneumo (33), [2=HepB(45), [3=HepA(85).
 ;
 ;********** PATCH 8, v8.5, MAR 15,2014, IHS/CMI/MWR
 ;---> Changes to accommodate new TCH Forecaster parsing.
 N BIFORC1,BIDOSE,N
 S BIFORC1=$P(BIFORC,"~~~",3)
 ;
 F N=1:1 S BIDOSE=$P(BIFORC1,"|||",N) Q:(BIDOSE="")  D
 .D DDUE2(BIDOSE,BIHX,.BINF,.BIPC,BIDUZ2,BIFDT,.BITCHAF)
 Q
 ;
 ;
 ;----------
DDUE2(BIDOSE,BIHX,BINF,BIPC,BIDUZ2,BIFDT,BITCHAF) ;EP
 ;---> Parse Doses Due (see linelabel DDUE above).
 ;---> Parameters: See DDUE immediately above!
 ;
 ;********** PATCH 8, v8.5, MAR 15,2014, IHS/CMI/MWR
 ;---> Many changes below to accommodate new TCH Forecaster.
 ;
 ;---> Uncomment next line to see raw Doses Due:
 ;W !!!,BIDOSE R ZZZ
 ;
 N A,BI,D,X S X=BIDOSE
 ;---> A=CVX Code
 S A=$P(X,U,1)
 ;
 ;---> "PAST"=Past Due Indicator
 S BI("PAST")=$P(X,U,3)
 ;
 ;---> Get Fileman formats of due dates.
 ;---> "MIN"=Minimum Date Due
 S BI("MIN")=$$TCHFMDT^BIUTL5($P(X,U,4)) S:('BI("MIN")) BI("MIN")=""
 ;
 ;---> "REC"=Recommended Date Due
 S BI("REC")=$$TCHFMDT^BIUTL5($P(X,U,5)) S:('BI("REC")) BI("REC")=""
 ;
 ;---> "EXC"=Exceeds Date Due
 S BI("EXC")=$$TCHFMDT^BIUTL5($P(X,U,6)) S:('BI("EXC")) BI("EXC")=""
 ;
 ;---> Determine whether to set Recommended Age or Minimum Accepted Age
 ;---> based on Site Parameter.
 S BI("DUE")=BI("REC")
 I $$MINAGE^BIUTL2($G(BIDUZ2))=1 S BI("DUE")=BI("MIN")
 ;
 ;---> If this dose is past due (BI("PAST")=1), D(2) will stuff DATE PAST DUE;
 ;---> Otherwise, D(1) will stuff RECOMMENDED DATE DUE.
 S (D(1),D(2))="" D
 .I BI("PAST") S D(2)=BI("EXC") Q
 .S D(1)=BI("DUE")
 ;
 ;---> *** TRANSLATIONS OF INCOMING IMMSERVE VACCINES:
 ;--->     -------------------------------------------
 Q:A=""
 ;
 ;---> Check to see if Site specified do not forecast this Vaccine Group.
 Q:$D(BINF($$HL7TX^BIUTL2(A,1)))
 ;
 ;
 ;********** PATCH 13, v8.5, AUG 01,2016, IHS/CMI/MWR
 ;---> Do not forecast Flu (CVX 88) before local Flu Season Start Date, regardless of
 ;---> Min vs. Rec site parameter #8.
 I A=88,$E($G(BIFDT),4,5)>6 Q:(BIFDT<($E(BIFDT,1,3)_$TR($P($$FLUDATS^BIUTL8(BIDUZ2),"%"),"/")))
 ;**********
 ;
 ;---> Add this Immunization Due.
 D SETDUE^BIPATUP2(BIDFN_U_$$HL7TX^BIUTL2(A)_U_U_D(1)_U_D(2))
 ;
 ;********** PATCH 14, v8.5, AUG 01,2017, IHS/CMI/MWR
 ;---> Use BITCHAF to track TCH forecasting of Pneumo, Hep A and Hep B.
 ;
 ;---> Pneumo 33 OR 133 was forecast by TCH.
 I (A=33)!(A=133) S BITCHAF=BITCHAF_1
 ;---> Hep B was forecast by TCH.
 I A=45 S BITCHAF=BITCHAF_2
 ;---> Hep A was forecast by TCH.
 I A=85 S BITCHAF=BITCHAF_3
 ;
 Q
 ;
 ;
 ;********** PATCH 14, v8.5, AUG 01,2017, IHS/CMI/MWR
 ;---> Extensive changes.
 ;----------
IHSPOST(BIDFN,BIHX,BIFDT,BIDUZ2,BINF,BITCHAF,BIADDND) ;EP
 ;---> Post forecast; after loading  TCH forecast, perform any follow-up forecasting
 ;---> needed for High Risk.
 ;---> Parameters:
 ;     1 - BIDFN   (req) Patient IEN.
 ;     2 - BIHX    (req) String containing Patient's Imm History.
 ;     3 - BIFDT   (req) Forecast Date (date used for forecast).
 ;     4 - BIDUZ2  (req) User's DUZ(2) for High Risk Site Parameter.
 ;     5 - BINF    (opt) Array of Vaccine Grp IEN'S that should not be forecast.
 ;     6 - BIADDND (ret) IHS forecasting addendum (to be added to TCH Report).
 ;
 ;---> Loop through History string, gathering previous Influenzas and Pneumos.
 ;
 N BIDOSE,BIFLU,BIHX1,I,X,Y
 S BIHX1=$P(BIHX,"~~~",2)
 ;
 ;---> Loop through RPMS Input String History, collecting for prior Pneumo.
 ;---> Store in BIFLU by HL7 Code, inverse date.
 ;F I=1:1:Y D
 F I=1:1  S BIDOSE=$P(BIHX1,"|||",I) Q:BIDOSE=""  D
 .;
 .;---> For this Immunization, set A=CVX Code, D=Date.
 .N A,D S A=$P(BIDOSE,U,2),D=$P(BIDOSE,U,3)
 .;
 .;---> Quit if Dose Override is Invalid (1-4).
 .I $P(BIDOSE,U,4),$P(BIDOSE,U,4)<9 Q
 .;
 .;---> If this is Hep B or Hep A,
 .;---> translate and store it in local array BIFLU(CVX,Inverse Fm date).
 .;---> (Pneumo (33,100,109,133,152) not translated.)
 .;
 .;---> Collect Hep B CVX's.
 .S:((A=8)!(A=42)!(A=44)!(A=43)!(A=43)!(A=51)!(A=102)) A=45
 .S:((A=104)!(A=110)!(A=132)!(A=146)) A=45
 .;
 .;---> Collect Hep A CVX's.
 .S:((A=31)!(A=52)!(A=83)!(A=84)!(A=104)!(A=169)) A=85
 .;
 .;---> Save any Pneumo, Hep B, or Hep A.
 .D:((A=33)!(A=100)!(A=109)!(A=133)!(A=152)!(A=45)!(A=85))
 ..S BIFLU(A,9999999-$$TCHFMDT^BIUTL5(D))=""
 ;
 ;
 ;---> Check for THIS PATIENT: forced Pneumo or Disregard all Risk Factors.
 ;---> BIFFLU: 0=Normal, 1=not used, 2=Force Pneumo, 3=not used, 4=Disregard Risk Factors.
 S BIFFLU=$$INFL^BIUTL11(BIDFN)
 ;---> Quit (don't check Risk Factors) if BIFFLU=4, Disregard Risk Factors for this patient.
 Q:BIFFLU=4
 ;
 ;---> Quit if SITE PARAMETER says NOT to include any Risk Factors in forecast (returns 0).
 N BIRISK S BIRISK=$$RISKP^BIUTL2(BIDUZ2)
 Q:'BIRISK
 ;
 S:'$G(BIFDT) BIFDT=$G(DT)
 ;
 ;---> Set Patient Age in years for this Forecast Date.
 N BIAGE S BIAGE=$$AGE^BIUTL1(BIDFN,1,BIFDT)
 ;
 ;---> No High Risk computation under 19 years.
 Q:(BIAGE<19)
 ;
 ;
 ;---> * * * Forecast Pneumo for High Risk if needed. * * *
 D
 .;---> Quit if CVX 33 is in the history (satisfies both Early Pneumo and High Risk.)
 .Q:($D(BIFLU(33)))
 .;
 .;---> Quit if TCH already forecast Pneumo (33).
 .Q:(BITCHAF[1)
 .;---> Quit if Site Parameter does not include Pneumo.
 .Q:(BIRISK'[1)
 .;---> Check if Site Parameter includes Smoking (includes 9).
 .N BIRISKF,BISMKR S BISMKR=$S(BIRISK[9:1,1:0)
 .;---> Check for High Risk.
 .D RISKP^BIDX(BIDFN,BIFDT,BIAGE,BISMKR,.BIRISKF)
 .;
 .;---> Set Early Forecast or High Risk if needed.
 .D IHSPNEU^BIPATUP3(BIDFN,.BIFLU,BIFFLU,.BINF,BIFDT,BIAGE,BIDUZ2,BIRISKF,.BIADDND)
 ;
 ;
 ;---> * * * Forecast Hep B for Diabetes if needed. * * *
 D
 .;---> Quit if Hep B (45) is in the history, ever received a Hep B.
 .Q:($D(BIFLU(45)))
 .;---> Quit if TCH already forecast Hep B (45).
 .Q:(BITCHAF[2)
 .;---> Quit if Site Parameter does not include Hep B for Diabetes.
 .Q:(BIRISK'[2)
 .;---> Quit if this Pt Age is older than 60 yrs, regardless of risk.
 .Q:(BIAGE>59)
 .;---> Check for High Risk.
 .N BIRISKF
 .D RISKB^BIDX(BIDFN,BIFDT,BIAGE,.BIRISKF)
 .Q:'BIRISKF
 .;---> Set Early Forecast or High Risk if needed.
 .D IHSHEPB^BIPATUP3(BIDFN,.BINF,BIFDT,1,.BIADDND)
 .S BITCHAF=BITCHAF_2
 ;
 ;
 ;--->  * * * Forecast Hep A & B for CLD/HepC if needed. * * *
 D
 .;---> Quit if Hep A (85) and Hep B (45) are BOTH in the history.
 .Q:($D(BIFLU(85))&$D(BIFLU(45)))
 .;---> Quit if Site Parameter does not include Hep A&B for CLD/HepC.
 .Q:(BIRISK'[3)
 .;
 .;---> Check for High Risk.
 .N BIRISKF
 .D RISKAB^BIDX(BIDFN,BIFDT,.BIRISKF)
 .Q:'BIRISKF
 .;
 .;---> If TCH did NOT already forecast Hep B (45), forecast Hep B for CLD/HepC.
 .I ('$D(BIFLU(45)))&(BITCHAF'[2) D IHSHEPB^BIPATUP3(BIDFN,.BINF,BIFDT,2,.BIADDND)
 .;
 .;---> If TCH did NOT already forecast Hep A (85), forecast Hep A for CLD/HepC.
 .I ('$D(BIFLU(85)))&(BITCHAF'[3) D IHSHEPA^BIPATUP3(BIDFN,.BINF,BIFDT,,.BIADDND)
 ;
 Q
