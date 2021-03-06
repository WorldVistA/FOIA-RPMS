GMRVGR7 ;HIRMFO/YH-VITALS GRAPH KYOCERA DEFINE MACRO FOR PULSE OX./CG/CVP ;5/1/97
 ;;4.0;Vitals/Measurements;**1**;Apr 25, 1997
EN1 ;CONTINUATION OF GMRVGR3
POXD W !,"MCRO POXD;" S J=14.9 D WRTEXT^GMRVBP2
 W !,"ENDM;"
POXL ;PULSE OX. L/MIN
 W !,"MCRO POXL;" S J=15.3 D WRTEXT^GMRVBP2
 W !,"ENDM;"
POXP ;PULSE OX. %
 W !,"MCRO POXP;" S J=15.7 D WRTEXT^GMRVBP2
 W !,"ENDM;"
POXM W !,"MCRO POXM;" S J=16.1 D WRTEXT^GMRVBP2
 W !,"ENDM;"
CG ;CIRCUMFERENCE/GIRTH
 W !,"MCRO CG;" S J=19.7 D WRTEXT^GMRVBP2
 W !,"ENDM;"
 W !,"MCRO CG2;" S J=20.1 D WRTEXT^GMRVBP2
 W !,"ENDM;"
CVPH2O W !,"MCRO H2O;" S J=20.5 D WRTEXT^GMRVBP2
 W !,"ENDM;"
CVPHG W !,"MCRO HG;" S J=20.9 D WRTEXT^GMRVBP2
 W !,"ENDM;"
 Q
HT ;SET MACRO FOR BODY MASS INDEX AND HT
 W !,"MCRO BMI;" S J=18.5 D WRTEXT^GMRVBP2
 W !,"ENDM;"
 W !,"MCRO HT;" S J=18.9 D WRTEXT^GMRVBP2
 W !,"ENDM;"
HTCM W !,"MCRO HTCM;" S J=19.3 D WRTEXT^GMRVBP2
 W !,"ENDM;"
TEMPG W !,"MCRO TMPG; MAP %1, %2; DAP 1.8, %3; DAP 3.4, %4; DAP 5, %5; DAP 6.6, %6; DAP 8.2, %7; DAP 9.8, %8; DAP 11.4, %9;"
 W !,"DAP 13, %10; DAP 14.6, %11;"
 W !,"ENDM;" Q
