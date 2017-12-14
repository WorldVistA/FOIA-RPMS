BDMDG10 ; IHS/CMI/LAB -IHS -GETS DATA FOR DIABETES QA REPORT 19 Dec 2016 1:31 PM ; 17 Jan 2019  1:34 PM
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**12**;JUN 14, 2007;Build 51
 ;
 ;
EN ; - ENTRY POINT - from ^BDMASK
 ;D UNFOLDTX^BDMUTL(2019)  ;cmi/maw 05/14/2014 patch 8 lets store all tax up front for checking call
 D BUILDSML^BDMUTL(2019)
 K ^BDMDATA("BDMEPI",$J)
 S ^XTMP("BDMDM19",0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^DM AUDIT 2019"
 S ^XTMP("BDMDM19 ERRORS",0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^DM AUDIT 2019 DATA QUALITY CHECK"
 S BDMEPIN=0,BDMECNT=0
 I BDMTYPE="E" G EAUDIT
 S BDMPD=0 F  S BDMPD=$O(^XTMP("BDMDM19",BDMJOB,BDMBTH,"PATS",BDMPD)) Q:'BDMPD  D
 .I BDMTYPE'="P" I $$DEMO^BDMUTL(BDMPD,$G(BDMDEMO)) Q
 .I BDMPREP=2 D EPIREC Q
 .I BDMPREP=6 D EPICHK^BDMDG1J Q
 .D GATHER
 I BDMPREP=2 D WRITEF^BDMDG1 Q
 I BDMPREP=3!(BDMPREP=4) D CUML^BDMDG15
 I BDMPREP=5 D SDPI16^BDMDG1R
 Q
S(P,I,V) ;
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",P,I)=V
 Q
REC(DFN,BDMRTYP,BDMRBD,BDMRED,BDMED,BDMDMRG,BDMBDAT) ;EP - called to send back a visit record as
 NEW BDMX,BDMREC
 S BDMREC=""
 S BDMRTYP("IEN")=$O(^BDMRECD("B",BDMRTYP,0))
 I 'BDMRTYP("IEN") Q BDMREC
PROC ;
 S BDMEPIX=0
 F  S BDMEPIX=$O(^BDMRECD(BDMRTYP("IEN"),11,"AC",BDMEPIX)) Q:BDMEPIX'=+BDMEPIX!(BDMREC=-1)  S BDMTTT=$O(^BDMRECD(BDMRTYP("IEN"),11,"AC",BDMEPIX,0))  D
 .S X="" X:$D(^BDMRECD(BDMRTYP("IEN"),11,BDMTTT,11)) ^BDMRECD(BDMRTYP("IEN"),11,BDMTTT,11)
 .I X="" S X=" "
 .S $P(BDMREC,U,$P(^BDMRECD(BDMRTYP("IEN"),11,BDMTTT,0),U,2))=X  ;I DUZ=2881 W !,BDMTTT,?5,$P(^BDMRECD(BDMRTYP("IEN"),11,BDMTTT,0),U),?40,X
 ;W !!,BDMREC
 Q BDMREC
EPIREC ;create epi info record in ^BDMDATA("BDMEPI",$J,n)
 ;skip this patient if dodx is greater than the audit date
 S X=$$DODX^BDMDG16(BDMPD,BDMDMRG,"I")
 I X>BDMADAT Q
 S BDMEPIR="",BDMTHER=""
 S BDMEPIR=$$REC(BDMPD,"DM AUDIT 2019 EXPORT RECORD",BDMRBD,BDMRED,BDMADAT,BDMDMRG,BDMBDAT),BDMEPIN=BDMEPIN+1,^BDMDATA("BDMEPI",$J,BDMEPIN)=BDMEPIR
 Q
GATHER ;gather data for 1 patient
 S BDMER=0
HEADER ; Set node with report header info
 ;set report dates
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,1)=BDMRBD_" - "_BDMRED
 ;set audit date to DT
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,2)=$$FMTE^XLFDT(DT)
 ;reviewer
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,14)=$P(^VA(200,DUZ,0),U,2)  ;reviewer initials
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,122)=$$COMM(BDMPD)
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,121)=$S($P($G(^DPT(BDMPD,.11)),U,5):$P($G(^DIC(5,$P(^DPT(BDMPD,.11),U,5),0)),U,2),1:"")  ;state of residence
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,15)=$$VAL^XBDIQ1(9000001,BDMPD,.14)  ;primary care provider
DEMO ;pat demographics
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,16)=$$HRN^AUPNPAT(BDMPD,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)))  ;hrn
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,18)=$$DOB^AUPNPAT(BDMPD,"E")  ;dob
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,20)=$$VAL^XBDIQ1(2,BDMPD,.02)  ;sex
DXDT ;dates of and dm dxs
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,22)=$S(BDMDMRG:$$CMSFDX^BDMDG13(BDMPD,BDMDMRG,"D"),1:"")
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,24)=$S(BDMDMRG:$$CMSFDX^BDMDG13(BDMPD,BDMDMRG,"DX"),1:"")
 S ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,23)=$$PLDMDOO^BDMDG13(BDMPD)
 D S(BDMPD,25,$$PLDMDXS^BDMDG13(BDMPD))
 D S(BDMPD,21,$$FRSTDMDX^BDMDG13(BDMPD))
 D S(BDMPD,26,$$LASTDMDX^BDMDG13(BDMPD,BDMRED))
 I $$DODX^BDMDG16(BDMPD,BDMDMRG,"I")>BDMADAT D S(BDMPD,26.5,"*** Patient's Date of Onset is after the audit date.") D
 .D S(BDMPD,26.6,"**** This patient will not be included in the cumulative audit.")
 S BDMTYDM="" D TYPEDM,S(BDMPD,29,BDMTYDM)
 D S(BDMPD,27,$$TOBACCO^BDMDG1T(BDMPD,$$DOB^AUPNPAT(BDMPD),BDMADAT))
 D S(BDMPD,215,$$TOBACCO^BDMDG1T(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,28,$$CESS^BDMDG11(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,31,$$ENDS^BDMDG1T(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,33,$$LASTENDS^BDMDG1T(BDMPD,$$DOB^AUPNPAT(BDMPD),BDMADAT))
 ;
VITAL ;
 D S(BDMPD,30,$$LASTHT^BDMDG13(BDMPD,BDMRED))
 D S(BDMPD,32,$$LASTWT^BDMDG13(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,112,$$BMI^BDMDG18(BDMPD,BDMRBD,BDMRED))
 ;htn dx
 D S(BDMPD,34,$$HTNDX^BDMDG13(BDMPD,BDMADAT))
 ;last 3 BPs
 D S(BDMPD,36,$$BPS^BDMDG13(BDMPD,BDMRBD,BDMRED))
EXAMS ;
 D S(BDMPD,38,$$DFE^BDMDG17(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,40,$$EYE^BDMDG17(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,42,$$DENTAL^BDMDG17(BDMPD,BDMBDAT,BDMADAT))
MH ;MH
 D S(BDMPD,200,$$DEPDX^BDMDG12(BDMPD,BDMBDAT,BDMADAT))
 S BDMDGP=$E($G(^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,200)))
 D S(BDMPD,210,$S(BDMDGP="1":"",1:$$DEPSCR^BDMDG12(BDMPD,BDMBDAT,BDMADAT)))
 ;EDUC
 D S(BDMPD,44,$$DIETEDUC^BDMDG17(BDMPD,BDMRBD,BDMRED))
 D S(BDMPD,46,$$EXEDUC^BDMDG17(BDMPD,BDMRBD,BDMRED))
 D S(BDMPD,48,$$OTHEDUC^BDMDG17(BDMPD,BDMRBD,BDMRED))
THERAPY ;
 S BDM6MBD=$$FMADD^XLFDT(BDMADAT,-(6*31)) ;,BDM6MBD=$$FMTE^XLFDT(BDM6MBD)
 D S(BDMPD,52,$$INSULIN^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 D S(BDMPD,53,$$SULF^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 D S(BDMPD,98,$$SULFLIKE^BDMDG12(BDMPD,BDM6MBD,BDMRED))  ;REPAG
 D S(BDMPD,54,$$MET^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 D S(BDMPD,55,$$ACAR^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 D S(BDMPD,56,$$TROG^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 ;D S(BDMPD,58,$$INCR^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 D S(BDMPD,59,$$DPP4^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 D S(BDMPD,99,$$AMYLIN^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 D S(BDMPD,100,$$GLP1^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 D S(BDMPD,101,$$BROM^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 D S(BDMPD,102,$$COLE^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 D S(BDMPD,103,$$SGLT2^BDMDG12(BDMPD,BDM6MBD,BDMRED))
 S Z="" F X=52:1:56,59,98,99,100,101,102,103 I $E($G(^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,X)))="X" S Z=1  ;ANY MED AT ALL?
 ;S Y=$$REFMED^BDMDG12(BDMPD,BDMRBD,BDMRED) S Y=$S(Z:"",Y="":"",1:"X"_U_$P(Y,U,2)) D S(BDMPD,57,Y)  ;REFUSAL OF A MED
 S Y="" F X=52:1:56,59,98,99,100,101,102,103 I $E($G(^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,X)))="X" S Y=1  ;cmi/maw 6/17/2014 per gary
 D S(BDMPD,51,$S(Y:"",1:"X"))
 D S(BDMPD,60,$$ACE^BDMDG16(BDMPD,BDM6MBD,BDMADAT))
 D S(BDMPD,62,$$ASPIRIN^BDMDG16(BDMPD,BDM6MBD,BDMADAT))
 D S(BDMPD,300,$$STATIN^BDMDG16(BDMPD,BDM6MBD,BDMADAT))
 D S(BDMPD,116,$$CVD^BDMDG12(BDMPD,BDMADAT))
 ;
PPD ;
 D S(BDMPD,70,$$PPD^BDMDG18(BDMPD,BDMADAT))
 D S(BDMPD,114,$$LASTNP^BDMDG18(BDMPD,BDMADAT))
 D S(BDMPD,72,$$TBTX^BDMDG12(BDMPD))
HEPC ;
 D S(BDMPD,222,$$HEPCDX^BDMDG1D(BDMPD,BDMADAT))
 D S(BDMPD,223,$$HEPSCR^BDMDG1D(BDMPD,BDMADAT))
 D S(BDMPD,224,$$DMRETDX^BDMDG1D(BDMPD,BDMADAT))
 ;amputation new in dm19
 D S(BDMPD,230,$$LEAMP^BDMDG1D(BDMPD,BDMADAT))
 ;
IMM ;
 D S(BDMPD,64,$$FLU^BDMDG13(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,66,$$PNEU^BDMDG13(BDMPD,BDMADAT))
 D S(BDMPD,68,$$TD^BDMDG1B(BDMPD,BDMADAT))
 D S(BDMPD,216,$$TDAP^BDMDG1B(BDMPD,BDMADAT))
 D S(BDMPD,115,$$HEP^BDMDG13(BDMPD,BDMADAT))
LABS ;
 D S(BDMPD,78,$$HGBA1C^BDMDG18(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,79,$$GFR^BDMDG1C(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,84,$$CREAT^BDMDG18(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,86,$$CHOL^BDMDG18(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,88,$$LDL^BDMDG18(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,89,$$HDL^BDMDG18(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,90,$$TRIG^BDMDG18(BDMPD,BDMBDAT,BDMADAT))
 ;D S(BDMPD,117,$$NONHDL^BDMDG1C(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,92,$$URIN^BDMDG18(BDMPD,BDMBDAT,BDMADAT))
 D S(BDMPD,118,$$COMBINED^BDMDG1C(BDMPD,BDMBDAT,BDMADAT,BDM6MBD))
 D S(BDMPD,119,$$EGFRUACR^BDMDG1C(BDMPD,BDMBDAT,BDMADAT))
 ;
 Q
TYPEDM ;return type of DM in BDMTYDM
 NEW X
 I ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,24)="NIDDM" S BDMTYDM="2  Type 2" Q
 I ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,24)="TYPE II" S BDMTYDM="2  Type 2" Q
 I ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,24)[2 S BDMTYDM="2  Type 2" Q
 I ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,24)="IDDM" S BDMTYDM="1  Type 1" Q
 I ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,24)[1 S BDMTYDM="1  Type 1" Q
 I ^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,24)="TYPE I" S BDMTYDM="1  Type 1" Q
 S X=^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,25)
 F I=1:1 S C=$P(X,";",I) Q:C=""!(BDMTYDM]"")  S J=$P($$CODEN^BDMUTL(C,80),"~") I J>0,$$ICD^BDMUTL(J,"DM AUDIT TYPE II DXS",9) S BDMTYDM="2  Type 2"
 Q:BDMTYDM]""
 F I=1:1 S C=$P(X,";",I) Q:C=""!(BDMTYDM]"")  S J=$P($$CODEN^BDMUTL(C,80),"~") I J>0,$$ICD^BDMUTL(J,"DM AUDIT TYPE I DXS",9) S BDMTYDM="1  Type 1"
 Q:BDMTYDM]""
 S X=^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,26)
 I X[2 S BDMTYDM="2  Type 2" Q
 I X[1 S BDMTYDM="1  Type 1" Q
 Q
DATE(D) ;EP
 I $G(D)="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_(1700+($E(D,1,3)))
TRIBE(P) ;EP
 I '$G(P) Q ""
 I '$D(^AUPNPAT(P,11)) Q ""
 Q $$TRIBE^AUPNPAT(P,"C")_"^"_$$TRIBE^AUPNPAT(P,"E")
COMM(P) ;EP
 I '$G(P) Q ""
 I '$D(^AUPNPAT(P,11)) Q ""
 Q $$COMMRES^AUPNPAT(P,"E")
EAUDIT ;EP
 ;D UNFOLDTX^BDMUTL(2017)  ;cmi/maw 05/14/2014 patch 8 lets store all tax up front for checking call
 K ^BDMDATA("BDMEPI",$J)
 S ^XTMP("BDMDM19",0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^DM AUDIT 2019"
 S BDMEPIN=0
 S BDMBEGD=$$FMADD^XLFDT(BDMADAT,-365)
 S BDM3YE=$$FMADD^XLFDT(BDMADAT,-1096)
 I BDMACTI=1 D
 .S BDMEAUT=0 F  S BDMEAUT=$O(^ACM(41,"B",BDMDMRG,BDMEAUT)) Q:BDMEAUT'=+BDMEAUT  D
 ..I $P($G(^ACM(41,BDMEAUT,"DT")),U,1)'="A" Q
 ..S BDMPD=$P(^ACM(41,BDMEAUT,0),U,2)
 ..Q:$$DEMO^BDMUTL(BDMPD,$G(BDMDEMO))
 ..S BDMX=$$ACTDMPT^BDMDG1G(BDMPD,BDMBEGD,BDMADAT,BDMTAXI,BDMBEN,BDM3YE)
 ..I 'BDMX Q  ;not active diabetic
 ..I BDMPREG,$$PREG^BDMDG1B(P,BDMBDAT,BDMADAT,1,1) Q
 ..I BDMPREP=2 D EPIREC Q
 ..I BDMPREP=7 D EPICHK^BDMDG1J Q
 ..D GATHER
 .Q
 I BDMACTI=0 S BDMPD=0 F  S BDMPD=$O(^AUPNPAT(BDMPD)) Q:'BDMPD  D
 .Q:$$DEMO^BDMUTL(BDMPD,$G(BDMDEMO))
 .S BDMX=$$ACTDMPT^BDMDG1G(BDMPD,BDMBEGD,BDMADAT,BDMTAXI,BDMBEN,BDM3YE)
 .I 'BDMX Q  ;not active diabetic
 .I BDMACTI,'$$ACTONREG(BDMPD,BDMDMRG) Q
 .I BDMPREG,$$PREG^BDMDG1B(P,BDMBDAT,BDMADAT,1,1) Q
 .I BDMPREP=2 D EPIREC Q
 .I BDMPREP=6 D EPICHK^BDMDG1J Q
 .D GATHER
 I BDMPREP=2 D WRITEF^BDMDG1 Q
 I BDMPREP=3!(BDMPREP=4) D CUML^BDMDG15
 I BDMPREP=5 D SDPI16^BDMDG1R
 Q
ACTONREG(P,R) ;
 I $G(R)="" Q ""
 I $G(P)="" Q ""
 I '$D(^ACM(41,"AC",P,R)) Q 0
 S X=^ACM(41,"AC",P,R)
 I $P($G(^ACM(41,X,"DT")),U,1)'="A" Q 0
 Q 1
 ;
LOCN(P,R) ;EP
 I $G(R)="" Q ""
 I $G(P)="" Q ""
 I '$D(^ACM(41,"AC",P,R)) Q ""
 S X=^ACM(41,"AC",P,R)
 I 'X Q ""
 Q $$VAL^XBDIQ1(9002241,X,1101)
 ;
LOCT(P,R) ;EP
 I $G(R)="" Q ""
 I $G(P)="" Q ""
 I '$D(^ACM(41,"AC",P,R)) Q ""
 S X=^ACM(41,"AC",P,R)
 I 'X Q ""
 Q $$VAL^XBDIQ1(9002241,X,1102)
 ;