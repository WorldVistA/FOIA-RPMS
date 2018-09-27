BUDERPP1 ;IHS/CMI/LAB - UDS PRINT TAB 1-6A;
 ;;12.0;IHS/RPMS UNIFORM DATA SYSTEM;;NOV 22, 2017;Build 75
T6 ;EP
 S BUDPG=0,BUDQUIT="",BUDFNP=1,BUDTYPE="D"
 D HEADER^BUDERPTP Q:BUDQUIT  D T6SH
 K BUDFNP
 S BUDORD=0 F  S BUDORD=$O(^BUDETSC("B",BUDORD)) Q:BUDORD'=+BUDORD!(BUDORD>30)!(BUDQUIT)  D PRN
 D HEADER^BUDERPTP Q:BUDQUIT  D T6SH1
 S BUDORD=30,BUDTYPE="S" F  S BUDORD=$O(^BUDETSC("B",BUDORD)) Q:BUDORD'=+BUDORD!(BUDQUIT)  D PRN
 Q
PRN ;
 D
 .S BUDY=0 F  S BUDY=$O(^BUDETSC("B",BUDORD,BUDY)) Q:BUDY'=+BUDY!(BUDQUIT)  D
 ..;gather all lines into an array
 ..K BUDARR
 ..S BUDHD=$P(^BUDETSC(BUDY,0),U,2)
 ..S (X,C,M)=0 F  S X=$O(^BUDETSC(BUDY,2,X)) Q:X'=+X  S C=C+1,$P(BUDARR(C),U,2)=$P(^BUDETSC(BUDY,2,X,0),U,1),M=C
 ..S (X,C)=0 F  S X=$O(^BUDETSC(BUDY,3,X)) Q:X'=+X  S C=C+1,$P(BUDARR(C),U,3)=$P(^BUDETSC(BUDY,3,X,0),U,1) S:C>M M=C
 ..S (X,C)=0 F  S X=$O(^BUDETSC(BUDY,4,X)) Q:X'=+X  S C=C+1,$P(BUDARR(C),U,4)=$P(^BUDETSC(BUDY,4,X,0),U,1) S:C>M M=C
 ..S M=M\2 S:M=0 M=1
 ..S $P(BUDARR(1),U,1)=$P(^BUDETSC(BUDY,0),U,3)
 ..S $P(BUDARR(1),U,5)=$$C($P(BUDT6("V"),U,BUDORD))
 ..S $P(BUDARR(1),U,6)=$$C($P(BUDT6("P"),U,BUDORD))
 ..I $Y>(IOSL-6) D HEADER^BUDERPTP Q:BUDQUIT  D:BUDTYPE="D" T6SH D:BUDTYPE="S" T6SH1
 ..I BUDHD W !,$P(BUDARR(1),U,1),!,BUD80L Q
 ..S BUDL=0 F  S BUDL=$O(BUDARR(BUDL)) Q:BUDL'=+BUDL!(BUDQUIT)  D
 ...W !,$P(BUDARR(BUDL),U,1),?5,$P(BUDARR(BUDL),U,2),?28,$P(BUDARR(BUDL),U,4)
 ...W ?59,$P(BUDARR(BUDL),U,5),?71,$P(BUDARR(BUDL),U,6)
 ..W !,BUD80L
 ;
 W !
 Q
T6SH ;
 W !,$$CTR("TABLE 6A-",80),!
 W $$CTR("SELECTED DIAGNOSES AND SERVICES RENDERED",80)
 W !,$TR($J("",80)," ","-")
 W !,?56,"Number of",?70,"Number of"
 W !,?28,"Applicable",?56,"Visits by",?70,"Patients"
 W !?28,"ICD-10-CM",?56,"Diagnosis",?70,"with"
 W !?28,"Code",?56,"regardless",?70,"Diagnosis"
 W !?56,"of primacy",?70,"regardless"
 W !?70,"of primacy"
 I BUDTYPE="D" W !,"Diagnostic Category",?58,"(A)",?74,"(B)"
 I BUDTYPE="S" W !,"Service Category",?59,"(A)",?76,"(B)"
 W !,$TR($J("",80)," ","-"),!
 Q
T6SH1 ;
 W !,$$CTR("TABLE 6A-",80),!
 W $$CTR("SELECTED DIAGNOSES AND SERVICES RENDERED",80)
 W !,$TR($J("",80)," ","-")
 W !,?30,"Applicable",?42,"",?58,"Number of",?70,"Number of"
 W !?30,"ICD-10-CM Code",?58,"Visits",?70,"patients"
 W !?30,"or CPT-4/II",?42,""
 W !?30,"Code",?42,""
 I BUDTYPE="D" W !,"Diagnostic Category",?60,"(A)",?73,"(B)"
 I BUDTYPE="S" W !,"Service Category",?60,"(A)",?75,"(B)"
 W !,$TR($J("",80)," ","-"),!
 Q
C(X) ;
 S X2=0,X3=8
 D COMMA^%DTC
 Q X
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
