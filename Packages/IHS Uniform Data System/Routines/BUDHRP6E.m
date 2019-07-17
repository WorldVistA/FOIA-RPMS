BUDHRP6E ; IHS/CMI/LAB - UDS REPORT TABLE 6B ;
 ;;13.0;IHS/RPMS UNIFORM DATA SYSTEM;;OCT 12, 2018;Build 90
 ;
REST6B ;EP
 I $Y>(IOSL-13) D HEADER^BUDHRPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION E - WEIGHT ASSESSMENT AND COUNSELING FOR NUTRITION AND PHYSICAL"),!,$$CTR("ACTIVITY OF CHILDREN AND ADOLESCENTS"),!
 D LINE
 W "WEIGHT ASSESSMENT",?23,"|",?45,"|",?65,"|",?67,"NUMBER OF",!
 W "AND COUNSELING FOR",?23,"|",?45,"|",?65,"|",?67,"PATIENTS WITH",!
 W "NUTRITION AND",?23,"|",?26,"TOTAL PATIENTS",?45,"|",?47,"NUMBER CHARTS",?65,"|",?67,"COUNSELING",!
 W "PHYSICAL ACTIVITY",?23,"|",?26,"AGED 3 THROUGH ",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"AND BMI",!
 W "OF CHILDREN AND",?23,"|",?26,"17",?45,"|",?47,"TOTAL",?65,"|",?67,"DOCUMENTED",!
 W "ADOLESCENTS"
 W "",?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"12",?5,"MEASURE: ",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of",?23,"|",?45,"|",?65,"|",!
 W ?5,"patients 3-17 ",?23,"|",?45,"|",?65,"|",!
 W ?5,"years of age with",?23,"|",?45,"|",?65,"|",!
 W ?5,"a BMI percentile",?23,"|",?45,"|",?65,"|",!
 W ?5,"and counseling on ",?23,"|",?45,"|",?65,"|",!
 W ?5,"nutrition and ",?23,"|",?30,$$C($G(BUDSECTE("PTS"))),?45,"|",?50,$$C($G(BUDSECTE("PTS"))),?65,"|",?70,$$C($G(BUDSECTE("AWT"))),!
 W ?5,"physical activity",?23,"|",?45,"|",?65,"|",!
 W ?5,"documented",?23,"|",?45,"|",?65,"|",!
 D LINE
 ;F
 I $Y>(IOSL-13) D HEADER^BUDHRPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION F - PREVENTATIVE CARE AND SCREENING: BODY MASS INDEX (BMI)"),!,$$CTR("SCREENING AND FOLLOW-UP PLAN",80),!
 D LINE
 W ?23,"|",?45,"|",?65,"|",?67,"NUMBER OF",!
 W ?23,"|",?45,"|",?65,"|",?67,"PATIENTS WITH",!
 W ?23,"|",?45,"|",?65,"|",?67,"BMI CHARTED",!
 W ?23,"|",?45,"|",?65,"|",?67,"AND FOLLOW-UP",!
 W "PREVENTATIVE CARE AND",?23,"|",?26,"TOTAL PATIENTS",?45,"|",?47,"NUMBER CHARTS",?65,"|",?67,"PLAN DOCU-",!
 W "SCREENING: BODY MASS",?23,"|",?26,"AGED 18 AND",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"MENTED AS",!
 W "INDEX (BMI) SCREENING",?23,"|",?26,"OLDER",?45,"|",?47,"TOTAL",?65,"|",?67,"APPROPRIATE",!
 W "AND FOLLOW-UP",?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"13",?5,"MEASURE: ",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of ",?23,"|",?45,"|",?65,"|",!
 W ?5,"patients 18 years",?23,"|",?45,"|",?65,"|",!
 W ?5,"of age and older  ",?23,"|",?30,$$C($G(BUDSECTF("PTS"))),?45,"|",?50,$$C($G(BUDSECTF("PTS"))),?65,"|",?70,$$C($G(BUDSECTF("PLAN"))),!
 W ?5,"with (1) BMI ",?23,"|",?45,"|",?65,"|",!
 W ?5,"documented and (2)",?23,"|",?45,"|",?65,"|",!
 W ?5,"follow-up plan ",?23,"|",?45,"|",?65,"|",!
 W ?5,"documented if BMI ",?23,"|",?45,"|",?65,"|",!
 W ?5,"is outside normal",?23,"|",?45,"|",?65,"|",!
 W ?5,"parameters",?23,"|",?45,"|",?65,"|",!
 D LINE
G1 ;G
 I $Y>(IOSL-13) D HEADER^BUDHRPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION G - PREVENTATIVE CARE AND SCREENING: TOBACCO USE: SCREENING"),!,$$CTR("AND CESSATION INTERVENTION"),!
 D LINE
 W ?23,"|",?45,"|",?65,"|",?67,"NUMBER OF",!
 W "PREVENTATIVE CARE",?23,"|",?26,"",?45,"|",?47,"NUMBER CHARTS",?65,"|",?67,"PATIENTS",!
 W "AND SCREENING: ",?23,"|",?26,"TOTAL PATIENTS",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"ASSESSED FOR",!
 W "TOBACCO USE: SCREENING",?23,"|",?26,"AGED 18 AND",?45,"|",?47,"TOTAL",?65,"|",?67,"TOBACCO USE",!
 W "AND CESSATION",?23,"|",?26,"OLDER",?45,"|",?65,"|",?67,"AND PROVIDED",!
 W "INTERVENTION",?23,"|",?45,"|",?65,"|",?67,"INTERVENTION",!
 W ?23,"|",?45,"|",?65,"|",?67,"IF A TOBACCO",!
 W ?23,"|",?45,"|",?65,"|",?67,"USER",!
 W "",?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"14a",?5,"MEASURE:",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of",?23,"|",?45,"|",?65,"|",!
 W ?5,"patients 18 years",?23,"|",?45,"|",?65,"|",!
 W ?5,"of age and older",?23,"|",?45,"|",?65,"|",!
 W ?5,"who (1) were",?23,"|",?45,"|",?65,"|",!
 W ?5,"screened for",?23,"|",?45,"|",?65,"|",!
 W ?5,"tobacco use one",?23,"|",?45,"|",?65,"|",!
 W ?5,"or more times ",?23,"|",?45,"|",?65,"|",!
 W ?5,"within 24 months,",?23,"|",?45,"|",?65,"|",!
 W ?5,"and (2) if ",?23,"|",?45,"|",?65,"|",!
 W ?5,"identified to be ",?23,"|",?30,$$C($G(BUDSECG1("PTS"))),?45,"|",?50,$$C($G(BUDSECG1("PTS"))),?65,"|",?70,$$C($G(BUDSECG1("ABM"))),!
 W ?5,"a tobacco user ",?23,"|",?45,"|",?65,"|",!
 W ?5,"received cessation",?23,"|",?45,"|",?65,"|",!
 W ?5,"counseling",?23,"|",?45,"|",?65,"|",!
 W ?5,"intervention",?23,"|",?45,"|",?65,"|",!
 D LINE
H ;SECTION H
 I $Y>(IOSL-17) D HEADER^BUDHRPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION H - USE OF APPROPRIATE MEDICATIONS FOR ASTHMA"),!
 D LINE
 W ?23,"|",?26,"TOTAL PATIENTS",?45,"|",?65,"|",?67,"NUMBER OF",!
 W "",?23,"|",?26,"AGED 5 THROUGH 64",?45,"|",?47,"NUMBER CHARTS",?65,"|",?67,"PATIENTS WITH",!
 W "USE OF APPROPRIATE",?23,"|",?26,"WITH PERSISTENT",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"ACCEPTABLE",!
 W "MEDICATIONS FOR ",?23,"|",?26,"ASTHMA",?45,"|",?47,"TOTAL",?65,"|",?67,"PLAN",!
 W "ASTHMA",?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"16",?5,"MEASURE: ",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of",?23,"|",?45,"|",?65,"|",!
 W ?5,"patients 5",?23,"|",?45,"|",?65,"|",!
 W ?5,"through 64 years",?23,"|",?30,$$C($G(BUDSECTH("PTS"))),?45,"|",?50,$$C($G(BUDSECTH("PTS"))),?65,"|",?70,$$C($G(BUDSECTH("APT"))),!
 W ?5,"of age identified",?23,"|",?45,"|",?65,"|",!
 W ?5,"as having",?23,"|",?45,"|",?65,"|",!
 W ?5,"persistent asthma",?23,"|",?45,"|",?65,"|",!
 W ?5,"and were ",?23,"|",?45,"|",?65,"|",!
 W ?5,"appropriately ",?23,"|",?45,"|",?65,"|",!
 W ?5,"ordered ",?23,"|",?45,"|",?65,"|",!
 W ?5,"medication",?23,"|",?45,"|",?65,"|",!
 D LINE
I ;SECTION I
 I $Y>(IOSL-17) D HEADER^BUDHRPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION I - CORONARY ARTERY DISEASE (CAD): LIPID THERAPY"),!
 D LINE
 W "CORONARY ARTERY",?23,"|",?26,"TOTAL PATIENTS",?45,"|",?65,"|",?67,"NUMBER OF",!
 W "DISEASE (CAD):",?23,"|",?26,"AGED 18 AND OLDER",?45,"|",?47,"NUMBER CHARTS",?65,"|",?67,"PATIENTS ",!
 W "LIPID THERAPY",?23,"|",?26,"WITH CAD",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"PRESCRIBED",!
 W "",?23,"|",?26,"DIAGNOSIS",?45,"|",?47,"TOTAL",?65,"|",?67,"A LIPID LOW-",!
 W "",?23,"|",?26,"",?45,"|",?47,"",?65,"|",?67,"ERING THERAPY",!
 W "",?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"17",?5,"MEASURE:  ",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of",?23,"|",?45,"|",?65,"|",!
 W ?5,"patients 18 years",?23,"|",?45,"|",?65,"|",!
 W ?5,"of age and older",?23,"|",?30,$$C($G(BUDSECTI("PTS"))),?45,"|",?50,$$C($G(BUDSECTI("PTS"))),?65,"|",?70,$$C($G(BUDSECTI("CAD"))),!
 W ?5,"with diagnosis ",?23,"|",?45,"|",?65,"|",!
 W ?5,"of CAD who were ",?23,"|",?45,"|",?65,"|",!
 W ?5,"prescribed a",?23,"|",?45,"|",?65,"|",!
 W ?5,"lipid-lowering",?23,"|",?45,"|",?65,"|",!
 W ?5,"therapy",?23,"|",?45,"|",?65,"|",!
 D LINE
J ;J
 I $Y>(IOSL-20) D HEADER^BUDHRPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION J - ISCHEMIC VASCULAR DISEASE (IVD): ASPIRIN OR ANOTHER ANTIPLATELET"),!
 D LINE
 W "ISCHEMIC VASCULAR",?23,"|",?25,"TOTAL PATIENTS AGED",?45,"|",?65,"|",?67,"NUMBER OF",!
 W "DISEASE (IVD):",?23,"|",?25,"18 AND OLDER WITH",?45,"|",?47,"CHARTS",?65,"|",?67,"PATIENTS ",!
 W "USE OF ASPIRIN OR",?23,"|",?25,"IVD DIAGNOSIS",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"WITH DOCU-",!
 W "ANOTHER",?23,"|",?25,"OR AMI, CABG, OR",?45,"|",?47,"TOTAL",?65,"|",?67,"MENTATION OF ",!
 W "ANTIPLATELET",?23,"|",?25,"PCI PROCEDURE",?45,"|",?47,"",?65,"|",?67,"ASPIRIN OR",!
 W "",?23,"|",?25,"",?45,"|",?47,"",?65,"|",?67,"OTHER",!
 W "",?23,"|",?25,"",?45,"|",?47,"",?65,"|",?67,"ANTI-",!
 W "",?23,"|",?25,"",?45,"|",?47,"",?65,"|",?67,"PLATELET",!
 W "",?23,"|",?25,"",?45,"|",?47,"",?65,"|",?67,"THERAPY",!
 W "",?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"18",?5,"MEASURE: ",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of",?23,"|",?45,"|",?65,"|",!
 W ?5,"patients 18 years",?23,"|",?45,"|",?65,"|",!
 W ?5,"of age and older",?23,"|",?30,$$C($G(BUDSECTJ("PTS"))),?45,"|",?50,$$C($G(BUDSECTJ("PTS"))),?65,"|",?70,$$C($G(BUDSECTJ("IVD"))),!
 W ?5,"with a diagnosis of",?23,"|",?45,"|",?65,"|",!
 W ?5,"IVD or AMI, CABG,",?23,"|",?45,"|",?65,"|",!
 W ?5,"or PCI procedure ",?23,"|",?45,"|",?65,"|",!
 W ?5,"with aspirin or",?23,"|",?45,"|",?65,"|",!
 W ?5,"another",?23,"|",?45,"|",?65,"|",!
 W ?5,"antiplatelet ",?23,"|",?45,"|",?65,"|",!
 ;W ?5,"therapy",?23,"|",?45,"|",?65,"|",!
 D LINE
K ;I
 I $Y>(IOSL-20) D HEADER^BUDHRPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION K - COLORECTAL CANCER SCREENING"),!
 D LINE
 W ?23,"|",?26,"TOTAL PATIENTS AGED",?45,"|",?65,"|",?67,"NUMBER OF",!
 W "",?23,"|",?26,"50 THROUGH 75",?45,"|",?47,"CHARTS",?65,"|",?67,"PATIENTS WITH",!
 W "COLORECTAL CANCER",?23,"|",?26,"",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"APPROPRIATE",!
 W "SCREENING",?23,"|",?26,"",?45,"|",?47,"TOTAL",?65,"|",?67,"SCREENING FOR",!
 W "",?23,"|",?26,"",?45,"|",?47,"",?65,"|",?67,"COLORECTAL",!
 W "",?23,"|",?26,"",?45,"|",?47,"",?65,"|",?67,"CANCER",!
 W "",?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"19",?5,"MEASURE: ",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of",?23,"|",?45,"|",?65,"|",!
 W ?5,"patients 50",?23,"|",?45,"|",?65,"|",!
 W ?5,"through 75 years",?23,"|",?45,"|",?65,"|",!
 W ?5,"of age who had",?23,"|",?45,"|",?65,"|",!
 W ?5,"appropriate",?23,"|",?45,"|",?65,"|",!
 W ?5,"screening for",?23,"|",?45,"|",?65,"|",!
 W ?5,"colorectal cancer",?23,"|"
 W ?30,$$C($G(BUDSECTK("PTS"))),?45,"|",?50,$$C($G(BUDSECTK("PTS"))),?65,"|",?70,$$C($G(BUDSECTK("CRC"))),!
 D LINE
L ;
 I $Y>(IOSL-23) D HEADER^BUDHRPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION L - HIV LINKAGE TO CARE"),!
 D LINE
 W ?23,"|",?26,"TOTAL",?45,"|",?65,"|",?67,"NUMBER OF",!
 W "HIV LINKAGE",?23,"|",?26,"PATIENTS FIRST",?45,"|",?47,"CHARTS",?65,"|",?67,"PATIENTS ",!
 W "TO CARE",?23,"|",?26,"DIAGNOSED",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"SEEN WITHIN",!
 W "",?23,"|",?26,"WITH HIV",?45,"|",?47,"TOTAL",?65,"|",?67,"90 DAYS OF",!
 W "",?23,"|",?26,"",?45,"|",?47,"",?65,"|",?67,"FIRST ",!
 W "",?23,"|",?26,"",?45,"|",?47,"",?65,"|",?67,"DIAGNOSIS",!
 W "",?23,"|",?26,"",?45,"|",?47,"",?65,"|",?67,"OF HIV",!
 W "",?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"20",?5,"MEASURE: ",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of",?23,"|",?45,"|",?65,"|",!
 W ?5,"patients whose",?23,"|",?45,"|",?65,"|",!
 W ?5,"first ever HIV",?23,"|",?45,"|",?65,"|",!
 W ?5,"diagnosis was",?23,"|",?45,"|",?65,"|",!
 W ?5,"made by health",?23,"|",?45,"|",?65,"|",!
 W ?5,"center staff",?23,"|",?45,"|",?65,"|",!
 W ?5,"between October",?23,"|",?45,"|",?65,"|",!
 W ?5,"1 of the prior",?23,"|"
 W ?30,$$C($G(BUDSECTL("PTS"))),?45,"|",?50,$$C($G(BUDSECTL("PTS"))),?65,"|",?70,$$C($G(BUDSECTL("HIV"))),!
 W ?5,"year and Sept-",?23,"|",?45,"|",?65,"|",!
 W ?5,"ember 30 of the",?23,"|",?45,"|",?65,"|",!
 W ?5,"measurement",?23,"|",?45,"|",?65,"|",!
 W ?5,"year and who ",?23,"|",?45,"|",?65,"|",!
 W ?5,"were seen for",?23,"|",?45,"|",?65,"|",!
 W ?5,"follow-up",?23,"|",?45,"|",?65,"|",!
 W ?5,"treatment within",?23,"|",?45,"|",?65,"|",!
 W ?5,"90 days of that",?23,"|",?45,"|",?65,"|",!
 W ?5,"first-ever",?23,"|",?45,"|",?65,"|",!
 W ?5,"diagnosis",?23,"|",?45,"|",?65,"|",!
 D LINE
M ;
 I $Y>(IOSL-23) D HEADER^BUDHRPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION M - PREVENTATIVE CARE: SCREENING FOR DEPRESSION "),!,$$CTR("AND FOLLOW-UP PLAN"),!
 D LINE
 W "PREVENTATIVE",?23,"|",?26,"",?45,"|",?65,"|",?67,"NUMBER OF",!
 W "CARE: SCREENING",?23,"|",?26,"",?45,"|",?65,"|",?67,"PATIENTS",!
 W "FOR",?23,"|",?26,"",?45,"|",?47,"CHARTS",?65,"|",?67,"SCREENED FOR",!
 W "DEPRESSION",?23,"|",?26,"TOTAL PATIENTS",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"DEPRESSION",!
 W "AND FOLLOW-UP",?23,"|",?26,"AGED 12 AND",?45,"|",?47,"TOTAL",?65,"|",?67,"AND FOLLOW-UP",!
 W "PLAN",?23,"|",?26,"OLDER",?45,"|",?47,"",?65,"|",?67,"PLAN",!
 W "",?23,"|",?26,"",?45,"|",?47,"",?65,"|",?67,"DOCUMENTED AS",!
 W "",?23,"|",?26,"",?45,"|",?47,"",?65,"|",?67,"APPROPRIATE",!
 W "",?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"21",?5,"MEASURE: ",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of",?23,"|",?45,"|",?65,"|",!
 W ?5,"patients 12 years",?23,"|",?45,"|",?65,"|",!
 W ?5,"of age and older",?23,"|",?45,"|",?65,"|",!
 W ?5,"who were (1) ",?23,"|",?45,"|",?65,"|",!
 W ?5,"screened for ",?23,"|",?45,"|",?65,"|",!
 W ?5,"depression with a ",?23,"|",?45,"|",?65,"|",!
 W ?5,"standardized tool",?23,"|"
 W ?30,$$C($G(BUDSECTM("PTS"))),?45,"|",?50,$$C($G(BUDSECTM("PTS"))),?65,"|",?70,$$C($G(BUDSECTM("DEP"))),!
 W ?5,"and, if screening",?23,"|",?45,"|",?65,"|",!
 W ?5,"was positive, (2)",?23,"|",?45,"|",?65,"|",!
 W ?5,"had a follow-up",?23,"|",?45,"|",?65,"|",!
 W ?5,"plan documented",?23,"|",?45,"|",?65,"|",!
 D LINE
N ;
 I $Y>(IOSL-23) D HEADER^BUDHRPTP Q:BUDQUIT  D T6BH
 W $$CTR("SECTION N - DENTAL SEALANTS FOR CHILDREN BETWEEN 6-9 YEARS"),!
 D LINE
 W "",?23,"|",?26,"TOTAL PATIENTS",?45,"|",?47,"CHARTS",?65,"|",?67,"NUMBER OF",!
 W "DENTAL SEALANTS",?23,"|",?26,"AGED 6 THROUGH",?45,"|",?47,"SAMPLED OR EHR",?65,"|",?67,"PATIENTS",!
 W "FOR CHILDREN",?23,"|",?26,"9 AT MODERATE",?45,"|",?47,"TOTAL",?65,"|",?67,"WITH",!
 W "BETWEEN 6-9",?23,"|",?26,"TO HIGH RISH",?45,"|",?47,"",?65,"|",?67,"SEALANTS",!
 W "YEARS",?23,"|",?26,"FOR CARIES",?45,"|",?47,"",?65,"|",?67,"TO FIRST",!
 W "",?23,"|",?26,"",?45,"|",?47,"",?65,"|",?67,"MOLARS",!
 W "",?23,"|",?30,"(a)",?45,"|",?50,"(b)",?65,"|",?70,"(c)",!
 D LINE3
 W ?1,"22",?5,"MEASURE: ",?23,"|",?45,"|",?65,"|",!
 W ?5,"Percentage of",?23,"|",?45,"|",?65,"|",!
 W ?5,"children 6 through",?23,"|",?45,"|",?65,"|",!
 W ?5,"9 years of age",?23,"|",?45,"|",?65,"|",!
 W ?5,"at moderate to",?23,"|",?45,"|",?65,"|",!
 W ?5,"high risk of",?23,"|",?45,"|",?65,"|",!
 W ?5,"caries who",?23,"|"
 W ?30,$$C($G(BUDSECTN("PTS"))),?45,"|",?50,$$C($G(BUDSECTN("PTS"))),?65,"|",?70,$$C($G(BUDSECTN("SEAL"))),!
 W ?5,"received a ",?23,"|",?45,"|",?65,"|",!
 W ?5,"sealant on a ",?23,"|",?45,"|",?65,"|",!
 W ?5,"first permanent",?23,"|",?45,"|",?65,"|",!
 W ?5,"molar",?23,"|",?45,"|",?65,"|",!
 D LINE
 Q
T6BH ;
 W !,$$CTR("TABLE 6B - QUALITY OF CARE MEASURES"),!,$$REPEAT^XLFSTR("_",79),!
 Q
LINE ;
 W $$REPEAT^XLFSTR("_",79),!
 Q
LINE1 ;
 W $$REPEAT^XLFSTR("_",45),"|",$$REPEAT^XLFSTR("_",33),!
 Q
LINE2 ;
 W $$REPEAT^XLFSTR("_",37),"|",$$REPEAT^XLFSTR("_",22),"|",$$REPEAT^XLFSTR("_",18),!
 Q
LINE3 ;
 W $$REPEAT^XLFSTR("_",23),"|",$$REPEAT^XLFSTR("_",21),"|",$$REPEAT^XLFSTR("_",19),"|",$$REPEAT^XLFSTR("_",13),!
 Q
CTR(X,Y) ;EP
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
C(X,Y) ;
 I $G(Y)=1,+X=0 Q ""
 I $G(Y)=2 Q "********"
 S X2=0,X3=8
 D COMMA^%DTC
 Q X
