BDMDG1P ; IHS/CMI/LAB - 2019 DIABETES AUDIT PRINT 15 Dec 2016 3:05 PM ; 
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**12**;JUN 14, 2007;Build 51
 ;
 ;
 S BDMQUIT=0,BDMPG=0,BDMIOSL=$S($G(BDMGUI):57,1:IOSL)
 I BDMPREP=3 G CUML
 I BDMPREP=5 G CUML
 ;print ind audits first
 S BDMPD=0,BDMGUIC=0 F  S BDMPD=$O(^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD)) Q:BDMPD'=+BDMPD!(BDMQUIT)  D
 .I $G(BDMGUI),BDMGUIC W !,"ZZZZZZZ",!  ;maw
 .I BDMGUIC W:$D(IOF) @IOF
 .S BDMGUIC=1
 .S BDMPG=BDMPG+1 W:$G(BDMGUI) !! W $$CTR("Individual Diabetes Audit, 2019       DATE AUDIT RUN: "_$$DATE^BDMS9B1(DT)_"  Page: "_BDMPG,80)
 .W !!,"Audit Period Ending Date: ",$$DATE^BDMS9B1(BDMRED),?40,"Facility Name: ",$E($P(^DIC(4,$S($G(BDMDUZ2):BDMDUZ2,1:DUZ(2)),0),U),1,24)
 .W !,"Reviewer initials: ",$$I(14),?40,"Community: ",$$I(122)
 .W !,"State of Residence: ",$P($$I(121),U)
 .W !,$S($G(BDMPPN):"Name: "_$P($G(^DPT(BDMPD,0)),U),1:"") S J=$S($G(BDMPPN):$L($P(^DPT(BDMPD,0),U))+10,1:0)
 .W ?J,"Chart #: ",$$I(16),"    DOB: ",$$DATE^BDMS9B1($$DOB^AUPNPAT(BDMPD)),"    Sex: ",$$I(20)
 .W !,"Primary Care Provider:  ",$$I(15)
 .W !!,"Date of Diabetes Diagnosis:"
 .W !?2,"DM Reg: ",$S($$I(22)]"":$$I(22),1:"<not documented>"),"  Problem List: ",$S($$I(23)]"":$$I(23),1:"<not documented>"),"  1st PCC DX: ",$$I(21)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .I $$I(26.5)]"" W !,$$I(26.5),!,$$I(26.6)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !,"DM Type: ",$$I(29)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?2,"DM Register: ",$S($$I(24)]"":$$I(24),1:"<not documented>"),"  Problem List: ",$S($$I(25)]"":$$I(25),1:"<not documented>"),"  PCC POV's: ",$$I(26)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !!,"Tobacco/Nicotine Use"
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?2,"Screened for tobacco use (during Audit period): " S %=$$I(215) W $S($P(%,U,1)=3:"2  No",1:"1  Yes") ;_" "_$P($P(%,U,2),"  ",2,999)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?2,"Tobacco use status (most recent): ",!?10,$P($$I(27),U,2)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?4,"If 'Current user', tobacco cessation counseling received ",!?4,"(during Audit period): " W $$I(28)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !!?2,"Electronic Nicotine Delivery Systems (ENDS)"
 .W !?4,"Screened for ENDS use (during Audit period): " S Y=$P($$I(31),U,1) W:$E(Y)=1 !?10 W Y,"  ",$S(Y=1:"Yes",1:"No")," ",$P($$I(31),U,3)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?4,"ENDS use status (most recent): " S Y=$P($$I(33),U,1) W $S(Y=1:"1  Current user",Y=2:"2  Not a current user",Y=3:"3  Not Documented",1:"")," ",$P($$I(33),U,3)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !!,"Vital Statistics"
 .S X=$$I(30)
 .W !!?2,"Height (last ever): ",X  ;$J($P(X," "),2,0)_" "_$P(X," ",2,99)  ;ROUND HT KS 1208 2 DECIMALS THROUGHOUT 2019 PER K SHEFF
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .S %=$P($$I(32)," ",1) I %]"" S %=$$STRIP^XLFSTR($J(%,4,0)," ")
 .W !?2,"Weight (last in audit period): ",%," ",$P($$I(32)," ",2,99),"     BMI: ",$$I(112)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !!?2,"Hypertension (documented diagnosis ever): ",$$I(34)
 .I $Y>(BDMIOSL-3) D PAGE Q:BDMQUIT
 .W !?2,"Blood pressure (last 3 during Audit period): ",?47,$P($$I(36),";",1)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?47,$P($$I(36),";",2)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?47,$P($$I(36),";",3)
 .I $Y>(BDMIOSL-5) D PAGE Q:BDMQUIT
 .W !!,"Examinations (during Audit period)"
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?2,"Foot (comprehensive or 'complete'): ",?38,$$I(38)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?2,"Eye (dilated or retinal imaging): " W ?38,$$I(40)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?2,"Dental: ",?38,$$I(42)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !!,"Mental Health"
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?2,"Depression an active problem:  ",$$I(200)
 .I $Y>(BDMIOSL-2) D PAGE Q:BDMQUIT
 .W !?2,"If 'No', screened for depression (during Audit period): " W:$E($$I(210))=1 !?10 W $$I(210)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !!,"Education (during Audit period)"
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?2,"Nutrition: ",?36,$P($$I(44),U) I $P($$I(44),U,2)]"" W !?10,$P($$I(44),U,2)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?2,"Physical activity: ",?36,$$I(46)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !?2,"Other diabetes: ",?36,$$I(48)
 .I $Y>(BDMIOSL-14) D PAGE Q:BDMQUIT
 .W !!,"Diabetes Therapy "
 .W "All prescribed (as of the end of the Audit period):"
 .W !?3,$$I(51),?6,"1 None of the following"
 .W !?3,$$I(52),?6,"2 Insulin"
 .W !?3,$$I(54),?6,"3 Metformin [Glucophage, others]"
 .W !?3,$$I(53),?6,"4 Sulfonylurea [glyburide, glipizide, others]"
 .W !?3,$$I(59),?6,"5 DPP4 inhibitor [Sitagliptin (Januvia), Saxagliptin (Onglyza), ",!?8,"Linagliptin (Tradjenta), Alogliptin (Nesina)]"
 .W !?3,$$I(100),?6,"6 GLP-1 agonist [Exenatide (Byetta, Bydureon), Liraglutide ",!?8,"(Victoza), Albiglutide (Tanzeum), Dulaglutide (Trulicity)",!?8,"Lixisenatide (Adlyxin), Semaglutide (Ozempic)]"
 .W !?3,$P($$I(103),U),?6,"7 SGLT-2 inhibitor [Canagliflozin (Invokana), ",!?8,"Dapagliflozin (Farxiga), Empagliflozin (Jardiance),",!?8,"Ertugliflozin (Steglatro)]"
 .W !?3,$$I(56),?6,"8 Pioglitazone [Actos] or rosiglitazone [Avandia]"
 .W !?3,$$I(55),?6,"9 Acarbose [Precose] or miglitol [Glyset]"
 .W !?3,$$I(98),?6,"10 Repaglinide [Prandin] or Nateglinide [Starlix]"
 .W !?3,$P($$I(99),U),?6,"11 Amylin analog [Symlin]"
 .W !?3,$P($$I(101),U),?6,"12 Bromocriptine [Cycloset]"
 .W !?3,$P($$I(102),U),?6,"13 Colesevelam [Welchol]"
 .I $Y>(BDMIOSL-2) D PAGE Q:BDMQUIT
 .W !!,"ACE Inhibitor or ARB",!,"Prescribed (as of the end of the Audit period): " W:$E($$I(60),1)=1 !?10 W $$I(60)
 .I $Y>(IOSL-6) D PAGE Q:BDMQUIT
 .W !!?2,"Commonly prescribed medications include: "
 .W !?4,"ACE Inhibitors: Lisinopril (Prinivil, Zestril), Enalapril (Vasotec, Epaned),"
 .W !?6,"Fosinopril (Monopril), Ramipril (Altace), Benazepril (Lotensin)"
 .W !?4,"ARBs: Losartan (Cozaar), Telmisartan (Micardis), Irbesartan (Avapro),"
 .W !?6,"Olmesartan (Benicar), Valsartan (Diovan, Prexxartan)"
 .I $Y>(BDMIOSL-2) D PAGE Q:BDMQUIT
 .W !!,"Aspirin or Other Antiplatelet/Anticoagulant Therapy"
 .W !,"Prescribed (as of the end of the Audit period):",!?10,$$I(62)
 .I $Y>(IOSL-6) D PAGE Q:BDMQUIT
 .W !!?2,"Commonly prescribed medications include:"
 .W !?4,"Anticoagulants: Warfarin (Coumadin), Rivaroxaban (Xarelto), Apixaban (Eliquis),"
 .W !?6,"Dabigatran (Pradaxa)"
 .W !?4,"Antiplatelets: Clopidogrel (Plavix), Ticagrelor (Brilinta), "
 .W !?6,"Prasugrel (Effient), Cilostazol (Pletal)"
 .I $Y>(BDMIOSL-2) D PAGE Q:BDMQUIT
 .W !!,"Statin Therapy"
 .W !?2,"Prescribed (as of the end of the Audit period): " W:$E($$I(300))=1 !?10 W $$I(300)
 .W !!,"Cardiovascular Disease (CVD)"
 .W !?2,"Diagnosed (ever):   ",$$I(116)
 .I $Y>(BDMIOSL-6) D PAGE Q:BDMQUIT
 .W !!,"Tuberculosis (TB) "
 .I $Y>(BDMIOSL-2) D PAGE Q:BDMQUIT
 .W !?2,"TB test done (ever): ",$P($$I(70),"||",1)
 .I $Y>(BDMIOSL-2) D PAGE Q:BDMQUIT
 .W !?2,"TB test result: ",$P($$I(70),"||",2)
 .I $Y>(BDMIOSL-2) D PAGE Q:BDMQUIT
 .W !?4,"If result 'Positive', isoniazid treatment complete: ",?33,$P($$I(72),U),"  ",$P($$I(72),U,2)
 .I $Y>(BDMIOSL-2) D PAGE Q:BDMQUIT
 .W !?4,"If result 'Negative', test date: ",?33,$$DATE^BDMS9B1($$I(114))
 .I $Y>(BDMIOSL-7) D PAGE Q:BDMQUIT
 .W !!,"Hepatitis C (HCV)"
 .W !?2,"HCV diagnosed (ever): ",$$I(222)
 .I $E($$I(222))'=1 W !?4,"If 'No', screened for HCV at least once (ever): " W:$E($$I(223))=1 !?10 W $$I(223)
 .I $Y>(BDMIOSL-3) D PAGE Q:BDMQUIT
 .W !!,"Retinopathy"
 .W !?2,"Diagnosed (ever): ",$$I(224)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !!,"Amputation"
 .W !?2,"Lower extremity (ever), any type (e.g., toe, partial foot, above or ",!?2,"below knee): ",$$I(230)
 .I $Y>(BDMIOSL-6) D PAGE Q:BDMQUIT
 .W !!,"Immunizations"
 .I $Y>(BDMIOSL-1) D PAGE Q:BDMQUIT
 .W !?2,"Influenza vaccine (during Audit period): ",?45,$$I(64)
 .I $Y>(BDMIOSL-1) D PAGE Q:BDMQUIT
 .W !?2,"Pneumococcal vaccine (ever): ",?45,$$I(66)
 .I $Y>(BDMIOSL-1) D PAGE Q:BDMQUIT
 .W !?2,"Td, Tdap, DTaP, or DT (in past 10 years): ",?45,$$I(68)
 .I $Y>(BDMIOSL-1) D PAGE Q:BDMQUIT
 .W !?2,"Tdap (ever): ",?45,$$I(216)
 .I $Y>(BDMIOSL-1) D PAGE Q:BDMQUIT
 .W !?2,"Hepatitis B complete series (ever):  ",?45,$$I(115)
 .I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .W !!,"Laboratory Data (most recent result during Audit period)"
 .I $Y>(BDMIOSL-1) D PAGE Q:BDMQUIT
 .W !?2,"A1C: ",?28,$P($$I(78),U,2),?43,$$DATE^BDMS9B1($P($$I(78),U,1)),?60,$E($$VAL^XBDIQ1(9000010.09,+$P($$I(78),U,4),.01),1,19)
 .W !?2,"Total Cholesterol: ",?28,$P($$I(86),U,1),?43,$P($$I(86),U,2),?60,$E($P($$I(86),U,3),1,19)
 .I $Y>(BDMIOSL-1) D PAGE Q:BDMQUIT
 .W !?2,"HDL Cholesterol: ",?28,$P($$I(89),U,1),?43,$P($$I(89),U,2),?60,$E($P($$I(89),U,3),1,19)
 .I $Y>(BDMIOSL-1) D PAGE Q:BDMQUIT
 .W !?2,"LDL Cholesterol: ",?28,$P($$I(88),U,1),?43,$P($$I(88),U,2),?60,$E($P($$I(88),U,3),1,19)
 .;I $Y>(BDMIOSL-4) D PAGE Q:BDMQUIT
 .;W !?2,"Non-HDL Cholesterol: ",?28,$P($$I(117),U,1),?43,$P($$I(117),U,2),?60,$E($P($$I(117),U,3),1,19) ;,?43,$P($$I(90),U,2),?60,$E($P($$I(90),U,3),1,19)
 .I $Y>(BDMIOSL-1) D PAGE Q:BDMQUIT
 .W !?2,"Triglycerides: ",?28,$P($$I(90),U,1),?43,$P($$I(90),U,2),?60,$E($P($$I(90),U,3),1,19)
 .I $Y>(BDMIOSL-1) D PAGE Q:BDMQUIT
 .W !?2,"Serum Creatinine: ",?28,$P($$I(84),U,1),?43,$P($$I(84),U,2),?60,$E($P($$I(84),U,3),1,19)
 .I $Y>(BDMIOSL-1) D PAGE Q:BDMQUIT
 .W !?2,"eGFR: ",?28,$P($$I(79),U,2),?43,$P($$I(79),U,3),?60,$P($$I(79),U,4)
 .;I $Y>(BDMIOSL-5) D PAGE Q:BDMQUIT
 .;W !!,"Urine Protein Testing during audit period"
 .S BDMUTT=$P($$I(92),U,5)
 .;W !!,"Quantitative Urine Albumin:Creatinine Ratio (UACR) performed? ",$S(BDMUTT=1:"Yes",1:"No")  ;ihs/cmi/maw TODO not sure if this is the correct logic
 .I $Y>(BDMIOSL-2) D PAGE Q:BDMQUIT
 .W !?2,"Quantitative Urine ",!?4,"Albumin: Creatinine ",!?4,"Ratio UACR value: " I BDMUTT=1 W ?28,$P($$I(92),U,2)_" "_$P($$I(92),U,12),?43,$P($$I(92),U,3),?55,$E($P($$I(92),U,4),1,19)
 .I $Y>(BDMIOSL-5) D PAGE Q:BDMQUIT
 .W !!,"COMBINED: Meets ALL: A1C <8.0, statin prescribed, mean BP <140/<90"
 .I $$AGE^AUPNPAT(BDMPD,BDMADAT)<40!($E($G(^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,300)))=3) W !?5,"This is only calculated for patients 40 years of age and older without,",!,"a statin allegry or intolerance." I 1
 .E  W !?5,$P($$I(118),U,1) ;,?43,$P($$I(90),U,2),?60,$E($P($$I(90),U,3),1,19
 .I $Y>(BDMIOSL-2) D PAGE Q:BDMQUIT
 .G:$$AGE^AUPNPAT(BDMPD,BDMADAT)<18 N1
 .W !!,"Has e-GFR and UACR: ",$P($$I(119),U,1)
 .I '$G(BDMGUI) I $Y>(BDMIOSL-6) D PAGE Q:BDMQUIT
N1 .W !!,"Local Questions ",$$LOCN^BDMDG10(BDMPD,BDMDMRG)
 .W !!?2,"Select one:"
 .W !?2,"Text: ",$$LOCT^BDMDG10(BDMPD,BDMDMRG)
 .I $E(IOST,1,2)'="P-" W !! S DIR(0)="E" D ^DIR K DIR
CUML ;
 I BDMPREP=4!(BDMPREP=3) D CUML^BDMDG14
 I BDMPREP=5 D SDPI16^BDMDG1U
 I BDMPREP=6 D QUALCHK^BDMDG1V
DONE ;
 K ^TMP($J)
 K ^XTMP("BDMTAX",BDMJOB,BDMBTH)
 K ^XTMP("BDMDM19",BDMJOB,BDMBTH),BDMJOB,BDMBTH
 Q
I(I) ;
 Q $G(^XTMP("BDMDM19",BDMJOB,BDMBTH,"AUDIT",BDMPD,I))
 ;
PAGE ;
 Q:$G(BDMDSP)
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BDMQUIT=1 Q
 I BDMPG W:$D(IOF) @IOF
 I $G(BDMGUI),BDMGUIC,'$G(BDMDSP) W !,"ZZZZZZZ",!  ;maw
 I $G(BDMGUI) W !!
 S BDMPG=BDMPG+1
 W $$CTR("ASSESSMENT OF DIABETES CARE, 2019         DATE AUDIT RUN: "_$$DATE^BDMS9B1(DT)_"  Page: "_BDMPG,80)
 W !,"Audit Period Ending Date: ",$$DATE^BDMS9B1(BDMRED)
 W !,$S($G(BDMPPN):"NAME: "_$P($G(^DPT(BDMPD,0)),U),1:"") S J=$S($G(BDMPPN):$L($P(^DPT(BDMPD,0),U))+10,1:0)
 W ?J,"CHART #: ",$$I(16),"    DOB: ",$$I(18),"    SEX: ",$$I(20)
 W !,$$REPEAT^XLFSTR("-",79)
 Q
 ;
ACPCOQ() ;-- return none if no UACR, UPCR, Quant
 I $P($$I(91),U)="X" Q ""
 I $P($$I(93),U)="X" Q ""
 I $P($$I(95),U)="X" Q ""
 Q "X"
 ;
ACPCRES() ;-- return result from UACR UPCR
 I $P($$I(91),U)="X" Q $P($$I(91),U,2)
 I $P($$I(93),U)="X" Q $P($$I(93),U,2)
 Q ""
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
QUANCHK() ;--check quantitative
 I $P($$I(91),U)]"" Q ""
 I $P($$I(93),U)]"" Q ""
 Q $$I(95)
 ;
