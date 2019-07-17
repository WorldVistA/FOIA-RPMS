BDMDG1A ; IHS/CMI/LAB -IHS -CUMULATIVE REPORT 14 Dec 2016 11:59 AM ; 
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**12**;JUN 14, 2007;Build 51
 ;
EXAMS ;
 I $Y>(BDMIOSL-7) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(120)) W !!,$P(V,U) ;,?69,"(% refused)"
 W !?3,"Foot exam - comprehensive",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3)) ;,?71,"( ",$$P($P(V,U,2),$P(V,U,6))," )"
 W !?3,"Eye exam - dilated or retinal imaging",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4)) ;,?71,"( ",$$P($P(V,U,2),$P(V,U,7))," )"
 W !?3,"Dental exam",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5)) ;,?71,"( ",$$P($P(V,U,2),$P(V,U,8))," )"
 ;
EDUC ;
 I $Y>(BDMIOSL-8) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(130)) W !!,$P(V,U) ;,?69,"(% refused)"
 W !?3,"Nutrition - by any provider (RD and/or other)",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3)) ;,?71,"( ",$$P($P(V,U,2),$P(V,U,7))," )"
 W !?3,"Nutrition - by RD",?49,$$C($P(V,U,10)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,10)) ;,?71,"( ",$$P($P(V,U,2),$P(V,U,7))," )"
 W !?3,"Physical activity",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4)) ;,?71,"( ",$$P($P(V,U,2),$P(V,U,8))," )"
 W !?3,"Other diabetes education",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5)) ;,?71,"( ",$$P($P(V,U,2),$P(V,U,9))," )"
 W !?3,"----------------------------------"
 W !?3,"Any of above",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,6))
IMM ;
 I $Y>(BDMIOSL-7) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(140)) W !!,$P(V,U)
 W !?3,"Influenza vaccine during Audit period",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?6,"Refused - Influenza vaccine",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,6))
 W !?3,"Pneumococcal vaccine - ever",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 W !?6,"Refused - Pneumococcal",?49,$$C($P(V,U,7)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,7))
 W !?3,"Td/Tdap/DTap/DT - past 10 years",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5))
 W !?6,"Refused - Td/Tdap/DTap/DT",?49,$$C($P(V,U,8)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,8))
 W !?3,"Tdap - ever",?49,$$C($P(V,U,12)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,12))
 W !?6,"Refused - Tdap",?49,$$C($P(V,U,13)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,13))
 S C=$P(V,U,2)-$P(V,U,11)
 W !?3,"Hepatitis B complete series - ever",?49,$$C($P(V,U,9)),?61,$$C(C),?73,$$P(C,$P(V,U,9))
 W !?6,"Refused - Hepatitis B",?49,$$C($P(V,U,10)),?61,$$C(C),?73,$$P(C,$P(V,U,10))
 W !?6,"Immune - Hepatitis B",?49,$$C($P(V,U,11)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,11))
DEP ;
 I $Y>(BDMIOSL-6) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(300)) W !!,"Depression an Active Problem"
 W !?3,"Yes",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 S Z=$P(V,U,2)-$P(V,U,3)
 W !?3,"No",?49,$$C(Z),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),Z)
 ;screening
 I $Y>(BDMIOSL-8) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(301))
 W !!?3,"In patients without active depression, screened for depression "
 W !?3,"during Audit period:"
 W !?6,"Screened",?49,$$C($P(V,U,3)),?61,$$C(Z),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?6,"Not screened",?49,$$C($P(V,U,4)),?61,$$C(Z),?73,$$P($P(V,U,2),$P(V,U,4))
 ;
LIPID ;
 I $Y>(BDMIOSL-2) D HEADER Q:BDMQUIT
 W !!,"Lipid Evaluation - Note these results are presented as population level CVD"
 W !,"risk markers and should not be considered treatment targets for individual"
 W !,"patients."
 ;
LDL ;
 I $Y>(BDMIOSL-9) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(190))
 S T=$P(V,U,3)+$P(V,U,4)+$P(V,U,5)+$P(V,U,6)
 W !!?3,"LDL cholesterol",?49,$$C(T),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),T)
 W !?6,"LDL <100 mg/dl",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?6,"LDL 100-189 mg/dl",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 W !?6,"LDL >=190",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,6))
 W !?6,"Not tested or no valid result",?49,$$C($P(V,U,7)+$P(V,U,8)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,7)+$P(V,U,8))
HDL ;
 I $Y>(BDMIOSL-8) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(195))
 S T=$P(V,U,2)+$P(V,U,6)  ;TOTAL PTS
 S S=$P(V,U,3)+$P(V,U,4)+$P(V,U,7)+$P(V,U,8)
 W !!?3,"HDL cholesterol",?49,$$C(S),?61,$$C(T),?73,$$P(T,S)
 W !?6,"In females"
 W !?9,"HDL <50 mg/dl",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?9,"HDL >=50 mg/dl",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 W !?9,"Not tested or no valid result",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5))
 W !!?6,"In males"
 W !?9,"HDL <40 mg/dl",?49,$$C($P(V,U,7)),?61,$$C($P(V,U,6)),?73,$$P($P(V,U,6),$P(V,U,7))
 W !?9,"HDL >=40 mg/dl",?49,$$C($P(V,U,8)),?61,$$C($P(V,U,6)),?73,$$P($P(V,U,6),$P(V,U,8))
 W !?9,"Not tested or no valid result",?49,$$C($P(V,U,9)),?61,$$C($P(V,U,6)),?73,$$P($P(V,U,6),$P(V,U,9))
TRIG ;
 I $Y>(BDMIOSL-7) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(200))
 S T=$P(V,U,3)+$P(V,U,4)+$P(V,U,8)+$P(V,U,9)
 W !!?3,"Triglycerides [1]",?49,$$C(T),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),T)
 W !?6,"Trig <150 mg/dl",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?6,"Trig 150-499 mg/dl",?49,$$C($P(V,U,8)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,8))
 W !?6,"Trig 500-999 mg/dl",?49,$$C($P(V,U,9)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,9))
 W !?6,"Trig >=1000 mg/dl",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 W !?6,"Not tested or no valid result",?49,$$C($P(V,U,5)+$P(V,U,7)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5)+$P(V,U,7))
 ;
GFR ;
 I $Y>(BDMIOSL-9) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(175)) S T=$P(V,U,5)
 W !!,"Kidney Evaluation"
 W !?3,"eGFR to assess kidney function",?49,$$C($P(V,U,5)),?61,$$C($P(BDMCUML(175),U,2)),?73,$$P($P(BDMCUML(175),U,2),$P(V,U,5)),!?3,"(In age >=18 years)"
 W !,?6,"eGFR >=60 ml/min",?49,$$C($P(V,U,6)),?61,$$C($P(BDMCUML(175),U,2)),?73,$$P($P(BDMCUML(175),U,2),$P(V,U,6))
 W !,?6,"eGFR 30-59 ml/min",?49,$$C($P(V,U,7)),?61,$$C($P(BDMCUML(175),U,2)),?73,$$P($P(BDMCUML(175),U,2),$P(V,U,7))
 W !,?6,"eGFR 15-29 ml/min",?49,$$C($P(V,U,8)),?61,$$C($P(BDMCUML(175),U,2)),?73,$$P($P(BDMCUML(175),U,2),$P(V,U,8))
 W !,?6,"eGFR < 15 ml/min",?49,$$C($P(V,U,9)),?61,$$C($P(BDMCUML(175),U,2)),?73,$$P($P(BDMCUML(175),U,2),$P(V,U,9))
 W !,?6,"eGFR Not tested or no valid result",?49,$$C($P(V,U,10)),?61,$$C($P(BDMCUML(175),U,2)),?73,$$P($P(BDMCUML(175),U,2),$P(V,U,10))
URIN ;
 I $Y>(BDMIOSL-15) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(145))
 W !!?3,"Urine Albumin:Creatinine Ratio (UACR) "
 W !?3,"to assess kidney damage",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?6,"Urine albumin excretion - normal: <30 mg/g",?49,$$C($P(V,U,12)),?61,$$C($P(V,U,3)),?73,$$P($P(V,U,3),$P(V,U,12))
 W !?6,"Urine albumin excretion increased:",!?9,"30-300 mg/g",?49,$$C($P(V,U,13)),?61,$$C($P(V,U,3)),?73,$$P($P(V,U,3),$P(V,U,13))
 W !?9,">300 mg/g",?49,$$C($P(V,U,14)),?61,$$C($P(V,U,3)),?73,$$P($P(V,U,3),$P(V,U,14))
 W !?6,"Not tested or no valid result",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 I $Y>(BDMIOSL-4) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(270))
 W !!?3,"In patients age >=18 years, eGFR and UACR",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 ;
CKD ;
 I $Y>(BDMIOSL-14) D HEADER Q:BDMQUIT
 S V=BDMCUML(400)
 W !!,"Chronic Kidney Disease (CKD) (In age >=18 years)"
 W !?3,"CKD [2]",?49,$$C($P(V,U,14)),?61,$$C($P(V,U,13)),?73,$$P($P(V,U,13),$P(V,U,14))
 W !?6,"CKD [2] and mean BP <140/<90",?49,$$C($P(V,U,15)),?61,$$C($P(V,U,14)),?73,$$P($P(V,U,14),$P(V,U,15))
 W !?6,"CKD [2] and ACE Inhibitor or ARB prescribed",?49,$$C($P(V,U,16)),?61,$$C($P(V,U,14)),?73,$$P($P(V,U,14),$P(V,U,16))
GU ;
 I $Y>(BDMIOSL-8) D HEADER Q:BDMQUIT
 W !!?3,"CKD Stage"
 W !?6,"Normal: eGFR >=60 ml/min",?49,$$C($P(V,U,18)),?61,$$C($P(V,U,13)),?73,$$P($P(V,U,13),$P(V,U,18)),!?9,"and UACR <30 mg/g"
 W !?6,"Stages 1 and 2: eGFR >=60 ml/min",?49,$$C($P(V,U,19)),?61,$$C($P(V,U,13)),?73,$$P($P(V,U,13),$P(V,U,19)),!?9,"and UACR >=30 mg/g"
 W !?6,"Stage 3: eGFR 30-59 ml/min",?49,$$C($P(V,U,20)),?61,$$C($P(V,U,13)),?73,$$P($P(V,U,13),$P(V,U,20))
 W !?6,"Stage 4: eGFR 15-29 ml/min",?49,$$C($P(V,U,21)),?61,$$C($P(V,U,13)),?73,$$P($P(V,U,13),$P(V,U,21))
 W !?6,"Stage 5: eGFR <15 ml/min",?49,$$C($P(V,U,22)),?61,$$C($P(V,U,13)),?73,$$P($P(V,U,13),$P(V,U,22))
 W !?6,"Undetermined",?49,$$C($P(V,U,23)),?61,$$C($P(V,U,13)),?73,$$P($P(V,U,13),$P(V,U,23))
TBC ;
 I $Y>(BDMIOSL-10) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(70)) W !!,$P(V,U)
 W !?3,"TB Test done ever (skin or blood)",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?6,"If test done, skin test",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,3)),?73,$$P($P(V,U,3),$P(V,U,4))
 W !?6,"If test done, blood test",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,3)),?73,$$P($P(V,U,3),$P(V,U,5))
 W !?3,"If TB test done, positive result",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,3)),?73,$$P($P(V,U,3),$P(V,U,6))
 W !?3,"If positive TB test, treatment",?49,$$C($P(V,U,7)),?61,$$C($P(V,U,6)),?73,$$P($P(V,U,6),$P(V,U,7)),!?6,"completed"
 W !?3,"If negative TB test, test done after",?49,$$C($P(V,U,8)),?61,$$C($P(V,U,9)),?73,$$P($P(V,U,9),$P(V,U,8)),!?6,"diabetes diagnosis"
 ;
HEPC ;P11
 I $Y>(BDMIOSL-8) D HEADER Q:BDMQUIT
 S V=BDMCUML(400)
 W !!,"Hepatitis C (HCV)"
 W !,?3,"Diagnosed HCV ever",?49,$$C($P(V,U,35)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,35))
 W !,?3,"If not diagnosed"
 W !?6,"Screened ever",?49,$$C($P(V,U,37)),?61,$$C($P(V,U,40)),?73,$$P($P(V,U,40),$P(V,U,37))
 W !?6,"If born 1945-1965, screened ever",?49,$$C($P(V,U,39)),?61,$$C($P(V,U,36)),?73,$$P($P(V,U,36),$P(V,U,39))
COMBINED ;
 I $Y>(BDMIOSL-8) D HEADER Q:BDMQUIT
 S V=$G(BDMCUML(260)) W !!,$P(V,U)
 W !?3,"Patients age >= 40 years meeting ALL of the ",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?3,"following criteria:  A1C <8.0, Statin prescribed*, ",!?3,"and mean BP <140/<90"
 W !?3,"*Excludes patients with a statin allergy, intolerance, or contraindication"
 ;
COMOR ;
 I $Y>(BDMIOSL-11) D HEADER Q:BDMQUIT
 S V=BDMCUML(500)
 W !!,"Diabetes Related Conditions (In age >=18 years)"
 W !?3,"Severely obese (BMI >=40)",?49,$$C($P(V,U,5)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,5))
 W !?3,"Hypertension diagnosed ever",?49,$$C($P(V,U,6)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,6))
 W !?3,"Current tobacco user",?49,$$C($P(V,U,4)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,4))
 W !?3,"CVD diagnosed ever",?49,$$C($P(V,U,8)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,8))
 W !?3,"Retinopathy diagnosed ever",?49,$$C($P(V,U,38)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,38))
 W !?3,"Lower extremity amputation ever (any",?49,$$C($P(V,U,39)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,39)),!?6,"type (e.g., toe, partial foot, above",!?6,"or below knee)"
 W !?3,"Active Depression",?49,$$C($P(V,U,3)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,3))
 W !?3,"CKD stage 3-5",?49,$$C($P(V,U,22)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,22))
COM ;
 I $Y>(BDMIOSL-10) D HEADER Q:BDMQUIT
 W !!?3,"Number of diabetes related conditions"
 W !?6,"Diabetes only",?49,$$C($P(V,U,25)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,25))
 W !?6,"Diabetes plus:"
 W !?8,"One",?49,$$C($P(V,U,26)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,26))
 W !?8,"Two",?49,$$C($P(V,U,27)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,27))
 W !?8,"Three",?49,$$C($P(V,U,28)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,28))
 W !?8,"Four",?49,$$C($P(V,U,29)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,29))
 W !?8,"Five or more",?49,$$C($P(V,U,30)),?61,$$C($P(V,U,2)),?73,$$P($P(V,U,2),$P(V,U,30))
SDM ;
 I $Y>(BDMIOSL-4) D HEADER Q:BDMQUIT
 W !!,"Footnotes"
 W !?3,"[1] For triglycerides: >150 is a marker of CVD risk, not a treatment",!,"target; >1000 is a risk marker for pancreatitis."
 W !?3,"[2] Chronic Kidney Disease (CKD): eGFR <60 or UACR >=30"
 D HEADER Q:BDMQUIT
 W !!,"Abbreviations"
 W !?3,"A1C = hemoglobin A1c (HbA1c)"
 W !?3,"ACE inhibitor = angiotensin converting enzyme inhibitor"
 I $Y>(BDMIOSL-3) D HEADER Q:BDMQUIT
 W !?3,"ARB = angiotensin receptor blocker"
 W !?3,"BMI = body mass index"
 W !?3,"BP = blood pressure"
 I $Y>(BDMIOSL-3) D HEADER Q:BDMQUIT
 W !?3,"DT = diphtheria and tetanus"
 W !?3,"DTaP = diphtheria, tetanus, and pertussis"
 W !?3,"CKD = chronic kidney disease"
 I $Y>(BDMIOSL-3) D HEADER Q:BDMQUIT
 W !?3,"CVD = cardiovascular disease"
 W !?3,"eGFR = estimated glomerular filtration rate"
 W !?3,"ENDS = electronic nicotine delivery systems"
 I $Y>(BDMIOSL-3) D HEADER Q:BDMQUIT
 W !?3,"HCV = hepatitis C virus"
 W !?3,"HDL = high-density lipoprotein"
 W !?3,"LDL = low-density lipoprotein"
 I $Y>(BDMIOSL-3) D HEADER Q:BDMQUIT
 W !?3,"RD = registered dietitian"
 W !?3,"TB = tuberculosis"
 W !?3,"Td = tetanus and diphtheria"
 I $Y>(BDMIOSL-3) D HEADER Q:BDMQUIT
 W !?3,"Tdap = tetanus, diphtheria, and pertussis"
 W !?3,"Trig = triglycerides"
 W !?3,"UACR = urine albumin-to-creatinine ratio"
 Q
EXIT ;
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO",DIR("A")="End of report.  Press ENTER" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
CALC(N,O) ;ENTRY POINT
 ;O is old
 NEW Z
 I O=0!(N=0) Q "**"
 NEW X,X2,X3
 S X=N,X2=1,X3=0 D COMMA^%DTC S N=X
 S X=O,X2=1,X3=0 D COMMA^%DTC S O=X
 S Z=(((N-O)/O)*100),Z=$FN(Z,"+,",1)
 Q Z
P(D,N) ;return %
 I 'D Q ""
 I 'N Q "  0%"
 NEW X S X=N/D,X=X*100,X=$J(X,3,0)
 Q X_"%"
C(X,X2,X3) ;
 I '$G(X2) S X2=0
 I '$G(X3) S X3=6
 D COMMA^%DTC
 Q X
HEADER ;EP
 D HEADER^BDMDG14
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - 
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
