ATXXB185 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,B5080ZZ ",.02)
 ;;B5080ZZ 
 ;;9002226.02101,"1804,B5080ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B5081ZZ ",.01)
 ;;B5081ZZ 
 ;;9002226.02101,"1804,B5081ZZ ",.02)
 ;;B5081ZZ 
 ;;9002226.02101,"1804,B5081ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B508YZZ ",.01)
 ;;B508YZZ 
 ;;9002226.02101,"1804,B508YZZ ",.02)
 ;;B508YZZ 
 ;;9002226.02101,"1804,B508YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B5090ZZ ",.01)
 ;;B5090ZZ 
 ;;9002226.02101,"1804,B5090ZZ ",.02)
 ;;B5090ZZ 
 ;;9002226.02101,"1804,B5090ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B5091ZZ ",.01)
 ;;B5091ZZ 
 ;;9002226.02101,"1804,B5091ZZ ",.02)
 ;;B5091ZZ 
 ;;9002226.02101,"1804,B5091ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B509YZZ ",.01)
 ;;B509YZZ 
 ;;9002226.02101,"1804,B509YZZ ",.02)
 ;;B509YZZ 
 ;;9002226.02101,"1804,B509YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50B0ZZ ",.01)
 ;;B50B0ZZ 
 ;;9002226.02101,"1804,B50B0ZZ ",.02)
 ;;B50B0ZZ 
 ;;9002226.02101,"1804,B50B0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50B1ZZ ",.01)
 ;;B50B1ZZ 
 ;;9002226.02101,"1804,B50B1ZZ ",.02)
 ;;B50B1ZZ 
 ;;9002226.02101,"1804,B50B1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50BYZZ ",.01)
 ;;B50BYZZ 
 ;;9002226.02101,"1804,B50BYZZ ",.02)
 ;;B50BYZZ 
 ;;9002226.02101,"1804,B50BYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50C0ZZ ",.01)
 ;;B50C0ZZ 
 ;;9002226.02101,"1804,B50C0ZZ ",.02)
 ;;B50C0ZZ 
 ;;9002226.02101,"1804,B50C0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50C1ZZ ",.01)
 ;;B50C1ZZ 
 ;;9002226.02101,"1804,B50C1ZZ ",.02)
 ;;B50C1ZZ 
 ;;9002226.02101,"1804,B50C1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50CYZZ ",.01)
 ;;B50CYZZ 
 ;;9002226.02101,"1804,B50CYZZ ",.02)
 ;;B50CYZZ 
 ;;9002226.02101,"1804,B50CYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50D0ZZ ",.01)
 ;;B50D0ZZ 
 ;;9002226.02101,"1804,B50D0ZZ ",.02)
 ;;B50D0ZZ 
 ;;9002226.02101,"1804,B50D0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50D1ZZ ",.01)
 ;;B50D1ZZ 
 ;;9002226.02101,"1804,B50D1ZZ ",.02)
 ;;B50D1ZZ 
 ;;9002226.02101,"1804,B50D1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50DYZZ ",.01)
 ;;B50DYZZ 
 ;;9002226.02101,"1804,B50DYZZ ",.02)
 ;;B50DYZZ 
 ;;9002226.02101,"1804,B50DYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50F0ZZ ",.01)
 ;;B50F0ZZ 
 ;;9002226.02101,"1804,B50F0ZZ ",.02)
 ;;B50F0ZZ 
 ;;9002226.02101,"1804,B50F0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50F1ZZ ",.01)
 ;;B50F1ZZ 
 ;;9002226.02101,"1804,B50F1ZZ ",.02)
 ;;B50F1ZZ 
 ;;9002226.02101,"1804,B50F1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50FYZZ ",.01)
 ;;B50FYZZ 
 ;;9002226.02101,"1804,B50FYZZ ",.02)
 ;;B50FYZZ 
 ;;9002226.02101,"1804,B50FYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50G0ZZ ",.01)
 ;;B50G0ZZ 
 ;;9002226.02101,"1804,B50G0ZZ ",.02)
 ;;B50G0ZZ 
 ;;9002226.02101,"1804,B50G0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50G1ZZ ",.01)
 ;;B50G1ZZ 
 ;;9002226.02101,"1804,B50G1ZZ ",.02)
 ;;B50G1ZZ 
 ;;9002226.02101,"1804,B50G1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50GYZZ ",.01)
 ;;B50GYZZ 
 ;;9002226.02101,"1804,B50GYZZ ",.02)
 ;;B50GYZZ 
 ;;9002226.02101,"1804,B50GYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50H0ZZ ",.01)
 ;;B50H0ZZ 
 ;;9002226.02101,"1804,B50H0ZZ ",.02)
 ;;B50H0ZZ 
 ;;9002226.02101,"1804,B50H0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50H1ZZ ",.01)
 ;;B50H1ZZ 
 ;;9002226.02101,"1804,B50H1ZZ ",.02)
 ;;B50H1ZZ 
 ;;9002226.02101,"1804,B50H1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50HYZZ ",.01)
 ;;B50HYZZ 
 ;;9002226.02101,"1804,B50HYZZ ",.02)
 ;;B50HYZZ 
 ;;9002226.02101,"1804,B50HYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50J0ZZ ",.01)
 ;;B50J0ZZ 
 ;;9002226.02101,"1804,B50J0ZZ ",.02)
 ;;B50J0ZZ 
 ;;9002226.02101,"1804,B50J0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50J1ZZ ",.01)
 ;;B50J1ZZ 
 ;;9002226.02101,"1804,B50J1ZZ ",.02)
 ;;B50J1ZZ 
 ;;9002226.02101,"1804,B50J1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50JYZZ ",.01)
 ;;B50JYZZ 
 ;;9002226.02101,"1804,B50JYZZ ",.02)
 ;;B50JYZZ 
 ;;9002226.02101,"1804,B50JYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50K0ZZ ",.01)
 ;;B50K0ZZ 
 ;;9002226.02101,"1804,B50K0ZZ ",.02)
 ;;B50K0ZZ 
 ;;9002226.02101,"1804,B50K0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50K1ZZ ",.01)
 ;;B50K1ZZ 
 ;;9002226.02101,"1804,B50K1ZZ ",.02)
 ;;B50K1ZZ 
 ;;9002226.02101,"1804,B50K1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50KYZZ ",.01)
 ;;B50KYZZ 
 ;;9002226.02101,"1804,B50KYZZ ",.02)
 ;;B50KYZZ 
 ;;9002226.02101,"1804,B50KYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50L0ZZ ",.01)
 ;;B50L0ZZ 
 ;;9002226.02101,"1804,B50L0ZZ ",.02)
 ;;B50L0ZZ 
 ;;9002226.02101,"1804,B50L0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50L1ZZ ",.01)
 ;;B50L1ZZ 
 ;;9002226.02101,"1804,B50L1ZZ ",.02)
 ;;B50L1ZZ 
 ;;9002226.02101,"1804,B50L1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50LYZZ ",.01)
 ;;B50LYZZ 
 ;;9002226.02101,"1804,B50LYZZ ",.02)
 ;;B50LYZZ 
 ;;9002226.02101,"1804,B50LYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50M0ZZ ",.01)
 ;;B50M0ZZ 
 ;;9002226.02101,"1804,B50M0ZZ ",.02)
 ;;B50M0ZZ 
 ;;9002226.02101,"1804,B50M0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50M1ZZ ",.01)
 ;;B50M1ZZ 
 ;;9002226.02101,"1804,B50M1ZZ ",.02)
 ;;B50M1ZZ 
 ;;9002226.02101,"1804,B50M1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50MYZZ ",.01)
 ;;B50MYZZ 
 ;;9002226.02101,"1804,B50MYZZ ",.02)
 ;;B50MYZZ 
 ;;9002226.02101,"1804,B50MYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50N0ZZ ",.01)
 ;;B50N0ZZ 
 ;;9002226.02101,"1804,B50N0ZZ ",.02)
 ;;B50N0ZZ 
 ;;9002226.02101,"1804,B50N0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50N1ZZ ",.01)
 ;;B50N1ZZ 
 ;;9002226.02101,"1804,B50N1ZZ ",.02)
 ;;B50N1ZZ 
 ;;9002226.02101,"1804,B50N1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50NYZZ ",.01)
 ;;B50NYZZ 
 ;;9002226.02101,"1804,B50NYZZ ",.02)
 ;;B50NYZZ 
 ;;9002226.02101,"1804,B50NYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50P0ZZ ",.01)
 ;;B50P0ZZ 
 ;;9002226.02101,"1804,B50P0ZZ ",.02)
 ;;B50P0ZZ 
 ;;9002226.02101,"1804,B50P0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50P1ZZ ",.01)
 ;;B50P1ZZ 
 ;;9002226.02101,"1804,B50P1ZZ ",.02)
 ;;B50P1ZZ 
 ;;9002226.02101,"1804,B50P1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50PYZZ ",.01)
 ;;B50PYZZ 
 ;;9002226.02101,"1804,B50PYZZ ",.02)
 ;;B50PYZZ 
 ;;9002226.02101,"1804,B50PYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50Q0ZZ ",.01)
 ;;B50Q0ZZ 
 ;;9002226.02101,"1804,B50Q0ZZ ",.02)
 ;;B50Q0ZZ 
 ;;9002226.02101,"1804,B50Q0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50Q1ZZ ",.01)
 ;;B50Q1ZZ 
 ;;9002226.02101,"1804,B50Q1ZZ ",.02)
 ;;B50Q1ZZ 
 ;;9002226.02101,"1804,B50Q1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50QYZZ ",.01)
 ;;B50QYZZ 
 ;;9002226.02101,"1804,B50QYZZ ",.02)
 ;;B50QYZZ 
 ;;9002226.02101,"1804,B50QYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50R0ZZ ",.01)
 ;;B50R0ZZ 
 ;;9002226.02101,"1804,B50R0ZZ ",.02)
 ;;B50R0ZZ 
 ;;9002226.02101,"1804,B50R0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50R1ZZ ",.01)
 ;;B50R1ZZ 
 ;;9002226.02101,"1804,B50R1ZZ ",.02)
 ;;B50R1ZZ 
 ;;9002226.02101,"1804,B50R1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50RYZZ ",.01)
 ;;B50RYZZ 
 ;;9002226.02101,"1804,B50RYZZ ",.02)
 ;;B50RYZZ 
 ;;9002226.02101,"1804,B50RYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50S0ZZ ",.01)
 ;;B50S0ZZ 
 ;;9002226.02101,"1804,B50S0ZZ ",.02)
 ;;B50S0ZZ 
 ;;9002226.02101,"1804,B50S0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50S1ZZ ",.01)
 ;;B50S1ZZ 
 ;;9002226.02101,"1804,B50S1ZZ ",.02)
 ;;B50S1ZZ 
 ;;9002226.02101,"1804,B50S1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50SYZZ ",.01)
 ;;B50SYZZ 
 ;;9002226.02101,"1804,B50SYZZ ",.02)
 ;;B50SYZZ 
 ;;9002226.02101,"1804,B50SYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50T0ZZ ",.01)
 ;;B50T0ZZ 
 ;;9002226.02101,"1804,B50T0ZZ ",.02)
 ;;B50T0ZZ 
 ;;9002226.02101,"1804,B50T0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50T1ZZ ",.01)
 ;;B50T1ZZ 
 ;;9002226.02101,"1804,B50T1ZZ ",.02)
 ;;B50T1ZZ 
 ;;9002226.02101,"1804,B50T1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50TYZZ ",.01)
 ;;B50TYZZ 
 ;;9002226.02101,"1804,B50TYZZ ",.02)
 ;;B50TYZZ 
 ;;9002226.02101,"1804,B50TYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50V0ZZ ",.01)
 ;;B50V0ZZ 
 ;;9002226.02101,"1804,B50V0ZZ ",.02)
 ;;B50V0ZZ 
 ;;9002226.02101,"1804,B50V0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50V1ZZ ",.01)
 ;;B50V1ZZ 
 ;;9002226.02101,"1804,B50V1ZZ ",.02)
 ;;B50V1ZZ 
 ;;9002226.02101,"1804,B50V1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50VYZZ ",.01)
 ;;B50VYZZ 
 ;;9002226.02101,"1804,B50VYZZ ",.02)
 ;;B50VYZZ 
 ;;9002226.02101,"1804,B50VYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50W0ZZ ",.01)
 ;;B50W0ZZ 
 ;;9002226.02101,"1804,B50W0ZZ ",.02)
 ;;B50W0ZZ 
 ;;9002226.02101,"1804,B50W0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50W1ZZ ",.01)
 ;;B50W1ZZ 
 ;;9002226.02101,"1804,B50W1ZZ ",.02)
 ;;B50W1ZZ 
 ;;9002226.02101,"1804,B50W1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B50WYZZ ",.01)
 ;;B50WYZZ 
 ;;9002226.02101,"1804,B50WYZZ ",.02)
 ;;B50WYZZ 
 ;;9002226.02101,"1804,B50WYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B5100ZA ",.01)
 ;;B5100ZA 
 ;;9002226.02101,"1804,B5100ZA ",.02)
 ;;B5100ZA 
 ;;9002226.02101,"1804,B5100ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B5100ZZ ",.01)
 ;;B5100ZZ 
 ;;9002226.02101,"1804,B5100ZZ ",.02)
 ;;B5100ZZ 
 ;;9002226.02101,"1804,B5100ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B5101ZA ",.01)
 ;;B5101ZA 
 ;;9002226.02101,"1804,B5101ZA ",.02)
 ;;B5101ZA 
 ;;9002226.02101,"1804,B5101ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B5101ZZ ",.01)
 ;;B5101ZZ 
 ;;9002226.02101,"1804,B5101ZZ ",.02)
 ;;B5101ZZ 
 ;;9002226.02101,"1804,B5101ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B510YZA ",.01)
 ;;B510YZA 
 ;;9002226.02101,"1804,B510YZA ",.02)
 ;;B510YZA 
 ;;9002226.02101,"1804,B510YZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B510YZZ ",.01)
 ;;B510YZZ 
 ;;9002226.02101,"1804,B510YZZ ",.02)
 ;;B510YZZ 
 ;;9002226.02101,"1804,B510YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B510ZZA ",.01)
 ;;B510ZZA 
 ;;9002226.02101,"1804,B510ZZA ",.02)
 ;;B510ZZA 
 ;;9002226.02101,"1804,B510ZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B510ZZZ ",.01)
 ;;B510ZZZ 
 ;;9002226.02101,"1804,B510ZZZ ",.02)
 ;;B510ZZZ 
 ;;9002226.02101,"1804,B510ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B5110ZA ",.01)
 ;;B5110ZA 
 ;;9002226.02101,"1804,B5110ZA ",.02)
 ;;B5110ZA 
 ;;9002226.02101,"1804,B5110ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B5110ZZ ",.01)
 ;;B5110ZZ 
 ;;9002226.02101,"1804,B5110ZZ ",.02)
 ;;B5110ZZ 
 ;;9002226.02101,"1804,B5110ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B5111ZA ",.01)
 ;;B5111ZA 
 ;;9002226.02101,"1804,B5111ZA ",.02)
 ;;B5111ZA 
 ;;9002226.02101,"1804,B5111ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B5111ZZ ",.01)
 ;;B5111ZZ 
 ;;9002226.02101,"1804,B5111ZZ ",.02)
 ;;B5111ZZ 
 ;;9002226.02101,"1804,B5111ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B511YZA ",.01)
 ;;B511YZA 
 ;;9002226.02101,"1804,B511YZA ",.02)
 ;;B511YZA 
 ;;9002226.02101,"1804,B511YZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B511YZZ ",.01)
 ;;B511YZZ 
 ;;9002226.02101,"1804,B511YZZ ",.02)
 ;;B511YZZ 
 ;;9002226.02101,"1804,B511YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B511ZZA ",.01)
 ;;B511ZZA 
 ;;9002226.02101,"1804,B511ZZA ",.02)
 ;;B511ZZA 
 ;;9002226.02101,"1804,B511ZZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B511ZZZ ",.01)
 ;;B511ZZZ 
 ;;9002226.02101,"1804,B511ZZZ ",.02)
 ;;B511ZZZ 
 ;;9002226.02101,"1804,B511ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B5120ZA ",.01)
 ;;B5120ZA 
 ;;9002226.02101,"1804,B5120ZA ",.02)
 ;;B5120ZA 
 ;;9002226.02101,"1804,B5120ZA ",.03)
 ;;31
 ;;9002226.02101,"1804,B5120ZZ ",.01)
 ;;B5120ZZ 
 ;;9002226.02101,"1804,B5120ZZ ",.02)
 ;;B5120ZZ 
 ;;9002226.02101,"1804,B5120ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B5121ZA ",.01)
 ;;B5121ZA 
 ;;9002226.02101,"1804,B5121ZA ",.02)
 ;;B5121ZA 