BGP8ZX11 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"872,00185-0048-01 ",.02)
 ;;00185-0048-01
 ;;9002226.02101,"872,00185-0048-05 ",.01)
 ;;00185-0048-05
 ;;9002226.02101,"872,00185-0048-05 ",.02)
 ;;00185-0048-05
 ;;9002226.02101,"872,00185-0053-01 ",.01)
 ;;00185-0053-01
 ;;9002226.02101,"872,00185-0053-01 ",.02)
 ;;00185-0053-01
 ;;9002226.02101,"872,00185-0053-05 ",.01)
 ;;00185-0053-05
 ;;9002226.02101,"872,00185-0053-05 ",.02)
 ;;00185-0053-05
 ;;9002226.02101,"872,00185-0101-01 ",.01)
 ;;00185-0101-01
 ;;9002226.02101,"872,00185-0101-01 ",.02)
 ;;00185-0101-01
 ;;9002226.02101,"872,00185-0101-10 ",.01)
 ;;00185-0101-10
 ;;9002226.02101,"872,00185-0101-10 ",.02)
 ;;00185-0101-10
 ;;9002226.02101,"872,00185-0101-33 ",.01)
 ;;00185-0101-33
 ;;9002226.02101,"872,00185-0101-33 ",.02)
 ;;00185-0101-33
 ;;9002226.02101,"872,00185-0102-01 ",.01)
 ;;00185-0102-01
 ;;9002226.02101,"872,00185-0102-01 ",.02)
 ;;00185-0102-01
 ;;9002226.02101,"872,00185-0102-10 ",.01)
 ;;00185-0102-10
 ;;9002226.02101,"872,00185-0102-10 ",.02)
 ;;00185-0102-10
 ;;9002226.02101,"872,00185-0103-01 ",.01)
 ;;00185-0103-01
 ;;9002226.02101,"872,00185-0103-01 ",.02)
 ;;00185-0103-01
 ;;9002226.02101,"872,00185-0103-10 ",.01)
 ;;00185-0103-10
 ;;9002226.02101,"872,00185-0103-10 ",.02)
 ;;00185-0103-10
 ;;9002226.02101,"872,00185-0104-01 ",.01)
 ;;00185-0104-01
 ;;9002226.02101,"872,00185-0104-01 ",.02)
 ;;00185-0104-01
 ;;9002226.02101,"872,00185-0104-10 ",.01)
 ;;00185-0104-10
 ;;9002226.02101,"872,00185-0104-10 ",.02)
 ;;00185-0104-10
 ;;9002226.02101,"872,00185-0124-01 ",.01)
 ;;00185-0124-01
 ;;9002226.02101,"872,00185-0124-01 ",.02)
 ;;00185-0124-01
 ;;9002226.02101,"872,00185-0152-01 ",.01)
 ;;00185-0152-01
 ;;9002226.02101,"872,00185-0152-01 ",.02)
 ;;00185-0152-01
 ;;9002226.02101,"872,00185-0152-10 ",.01)
 ;;00185-0152-10
 ;;9002226.02101,"872,00185-0152-10 ",.02)
 ;;00185-0152-10
 ;;9002226.02101,"872,00185-0173-01 ",.01)
 ;;00185-0173-01
 ;;9002226.02101,"872,00185-0173-01 ",.02)
 ;;00185-0173-01
 ;;9002226.02101,"872,00185-0173-10 ",.01)
 ;;00185-0173-10
 ;;9002226.02101,"872,00185-0173-10 ",.02)
 ;;00185-0173-10
 ;;9002226.02101,"872,00185-0204-01 ",.01)
 ;;00185-0204-01
 ;;9002226.02101,"872,00185-0204-01 ",.02)
 ;;00185-0204-01
 ;;9002226.02101,"872,00185-0211-01 ",.01)
 ;;00185-0211-01
 ;;9002226.02101,"872,00185-0211-01 ",.02)
 ;;00185-0211-01
 ;;9002226.02101,"872,00185-0236-01 ",.01)
 ;;00185-0236-01
 ;;9002226.02101,"872,00185-0236-01 ",.02)
 ;;00185-0236-01
 ;;9002226.02101,"872,00185-0277-01 ",.01)
 ;;00185-0277-01
 ;;9002226.02101,"872,00185-0277-01 ",.02)
 ;;00185-0277-01
 ;;9002226.02101,"872,00185-0325-01 ",.01)
 ;;00185-0325-01
 ;;9002226.02101,"872,00185-0325-01 ",.02)
 ;;00185-0325-01
 ;;9002226.02101,"872,00185-0341-01 ",.01)
 ;;00185-0341-01
 ;;9002226.02101,"872,00185-0341-01 ",.02)
 ;;00185-0341-01
 ;;9002226.02101,"872,00185-0342-01 ",.01)
 ;;00185-0342-01
 ;;9002226.02101,"872,00185-0342-01 ",.02)
 ;;00185-0342-01
 ;;9002226.02101,"872,00185-0505-01 ",.01)
 ;;00185-0505-01
 ;;9002226.02101,"872,00185-0505-01 ",.02)
 ;;00185-0505-01
 ;;9002226.02101,"872,00185-0505-05 ",.01)
 ;;00185-0505-05
 ;;9002226.02101,"872,00185-0505-05 ",.02)
 ;;00185-0505-05
 ;;9002226.02101,"872,00185-0602-01 ",.01)
 ;;00185-0602-01
 ;;9002226.02101,"872,00185-0602-01 ",.02)
 ;;00185-0602-01
 ;;9002226.02101,"872,00185-0602-10 ",.01)
 ;;00185-0602-10
 ;;9002226.02101,"872,00185-0602-10 ",.02)
 ;;00185-0602-10
 ;;9002226.02101,"872,00185-0605-01 ",.01)
 ;;00185-0605-01
 ;;9002226.02101,"872,00185-0605-01 ",.02)
 ;;00185-0605-01
 ;;9002226.02101,"872,00185-0610-01 ",.01)
 ;;00185-0610-01
 ;;9002226.02101,"872,00185-0610-01 ",.02)
 ;;00185-0610-01
 ;;9002226.02101,"872,00185-0610-10 ",.01)
 ;;00185-0610-10
 ;;9002226.02101,"872,00185-0610-10 ",.02)
 ;;00185-0610-10
 ;;9002226.02101,"872,00185-0620-01 ",.01)
 ;;00185-0620-01
 ;;9002226.02101,"872,00185-0620-01 ",.02)
 ;;00185-0620-01
 ;;9002226.02101,"872,00185-0620-10 ",.01)
 ;;00185-0620-10
 ;;9002226.02101,"872,00185-0620-10 ",.02)
 ;;00185-0620-10
 ;;9002226.02101,"872,00185-0630-01 ",.01)
 ;;00185-0630-01
 ;;9002226.02101,"872,00185-0630-01 ",.02)
 ;;00185-0630-01
 ;;9002226.02101,"872,00185-0630-10 ",.01)
 ;;00185-0630-10
 ;;9002226.02101,"872,00185-0630-10 ",.02)
 ;;00185-0630-10
 ;;9002226.02101,"872,00185-0640-01 ",.01)
 ;;00185-0640-01
 ;;9002226.02101,"872,00185-0640-01 ",.02)
 ;;00185-0640-01
 ;;9002226.02101,"872,00185-0640-10 ",.01)
 ;;00185-0640-10
 ;;9002226.02101,"872,00185-0640-10 ",.02)
 ;;00185-0640-10
 ;;9002226.02101,"872,00185-0820-01 ",.01)
 ;;00185-0820-01
 ;;9002226.02101,"872,00185-0820-01 ",.02)
 ;;00185-0820-01
 ;;9002226.02101,"872,00185-0820-05 ",.01)
 ;;00185-0820-05
 ;;9002226.02101,"872,00185-0820-05 ",.02)
 ;;00185-0820-05
 ;;9002226.02101,"872,00185-5400-01 ",.01)
 ;;00185-5400-01
 ;;9002226.02101,"872,00185-5400-01 ",.02)
 ;;00185-5400-01
 ;;9002226.02101,"872,00185-5400-10 ",.01)
 ;;00185-5400-10
 ;;9002226.02101,"872,00185-5400-10 ",.02)
 ;;00185-5400-10
 ;;9002226.02101,"872,00185-7100-01 ",.01)
 ;;00185-7100-01
 ;;9002226.02101,"872,00185-7100-01 ",.02)
 ;;00185-7100-01
 ;;9002226.02101,"872,00185-7100-10 ",.01)
 ;;00185-7100-10
 ;;9002226.02101,"872,00185-7100-10 ",.02)
 ;;00185-7100-10
 ;;9002226.02101,"872,00187-0140-30 ",.01)
 ;;00187-0140-30
 ;;9002226.02101,"872,00187-0140-30 ",.02)
 ;;00187-0140-30
 ;;9002226.02101,"872,00187-0140-90 ",.01)
 ;;00187-0140-90
 ;;9002226.02101,"872,00187-0140-90 ",.02)
 ;;00187-0140-90
 ;;9002226.02101,"872,00187-0141-30 ",.01)
 ;;00187-0141-30
 ;;9002226.02101,"872,00187-0141-30 ",.02)
 ;;00187-0141-30
 ;;9002226.02101,"872,00187-0141-90 ",.01)
 ;;00187-0141-90
 ;;9002226.02101,"872,00187-0141-90 ",.02)
 ;;00187-0141-90
 ;;9002226.02101,"872,00187-0142-10 ",.01)
 ;;00187-0142-10
 ;;9002226.02101,"872,00187-0142-10 ",.02)
 ;;00187-0142-10
 ;;9002226.02101,"872,00187-0142-30 ",.01)
 ;;00187-0142-30
 ;;9002226.02101,"872,00187-0142-30 ",.02)
 ;;00187-0142-30
 ;;9002226.02101,"872,00187-0142-90 ",.01)
 ;;00187-0142-90
 ;;9002226.02101,"872,00187-0142-90 ",.02)
 ;;00187-0142-90
 ;;9002226.02101,"872,00187-0143-10 ",.01)
 ;;00187-0143-10
 ;;9002226.02101,"872,00187-0143-10 ",.02)
 ;;00187-0143-10
 ;;9002226.02101,"872,00187-0143-30 ",.01)
 ;;00187-0143-30
 ;;9002226.02101,"872,00187-0143-30 ",.02)
 ;;00187-0143-30
 ;;9002226.02101,"872,00187-0143-90 ",.01)
 ;;00187-0143-90
 ;;9002226.02101,"872,00187-0143-90 ",.02)
 ;;00187-0143-90
 ;;9002226.02101,"872,00187-0146-01 ",.01)
 ;;00187-0146-01
 ;;9002226.02101,"872,00187-0146-01 ",.02)
 ;;00187-0146-01
 ;;9002226.02101,"872,00228-2695-11 ",.01)
 ;;00228-2695-11
 ;;9002226.02101,"872,00228-2695-11 ",.02)
 ;;00228-2695-11
 ;;9002226.02101,"872,00228-2695-50 ",.01)
 ;;00228-2695-50
 ;;9002226.02101,"872,00228-2695-50 ",.02)
 ;;00228-2695-50
 ;;9002226.02101,"872,00228-2696-11 ",.01)
 ;;00228-2696-11
 ;;9002226.02101,"872,00228-2696-11 ",.02)
 ;;00228-2696-11
 ;;9002226.02101,"872,00228-2696-50 ",.01)
 ;;00228-2696-50
 ;;9002226.02101,"872,00228-2696-50 ",.02)
 ;;00228-2696-50
 ;;9002226.02101,"872,00228-2697-11 ",.01)
 ;;00228-2697-11
 ;;9002226.02101,"872,00228-2697-11 ",.02)
 ;;00228-2697-11
 ;;9002226.02101,"872,00228-2697-50 ",.01)
 ;;00228-2697-50
 ;;9002226.02101,"872,00228-2697-50 ",.02)
 ;;00228-2697-50
 ;;9002226.02101,"872,00247-0578-02 ",.01)
 ;;00247-0578-02
 ;;9002226.02101,"872,00247-0578-02 ",.02)
 ;;00247-0578-02
 ;;9002226.02101,"872,00247-0578-03 ",.01)
 ;;00247-0578-03
 ;;9002226.02101,"872,00247-0578-03 ",.02)
 ;;00247-0578-03
 ;;9002226.02101,"872,00247-0578-30 ",.01)
 ;;00247-0578-30
 ;;9002226.02101,"872,00247-0578-30 ",.02)
 ;;00247-0578-30
 ;;9002226.02101,"872,00247-0578-45 ",.01)
 ;;00247-0578-45
 ;;9002226.02101,"872,00247-0578-45 ",.02)
 ;;00247-0578-45
 ;;9002226.02101,"872,00247-0579-03 ",.01)
 ;;00247-0579-03
 ;;9002226.02101,"872,00247-0579-03 ",.02)
 ;;00247-0579-03
 ;;9002226.02101,"872,00247-0579-30 ",.01)
 ;;00247-0579-30
 ;;9002226.02101,"872,00247-0579-30 ",.02)
 ;;00247-0579-30
 ;;9002226.02101,"872,00247-1023-59 ",.01)
 ;;00247-1023-59
 ;;9002226.02101,"872,00247-1023-59 ",.02)
 ;;00247-1023-59
 ;;9002226.02101,"872,00247-1023-77 ",.01)
 ;;00247-1023-77
 ;;9002226.02101,"872,00247-1023-77 ",.02)
 ;;00247-1023-77
 ;;9002226.02101,"872,00247-1023-79 ",.01)
 ;;00247-1023-79
 ;;9002226.02101,"872,00247-1023-79 ",.02)
 ;;00247-1023-79
 ;;9002226.02101,"872,00247-1023-95 ",.01)
 ;;00247-1023-95
 ;;9002226.02101,"872,00247-1023-95 ",.02)
 ;;00247-1023-95
 ;;9002226.02101,"872,00247-1091-03 ",.01)
 ;;00247-1091-03
 ;;9002226.02101,"872,00247-1091-03 ",.02)
 ;;00247-1091-03
 ;;9002226.02101,"872,00247-1124-30 ",.01)
 ;;00247-1124-30
 ;;9002226.02101,"872,00247-1124-30 ",.02)
 ;;00247-1124-30
 ;;9002226.02101,"872,00247-1125-10 ",.01)
 ;;00247-1125-10
 ;;9002226.02101,"872,00247-1125-10 ",.02)
 ;;00247-1125-10
 ;;9002226.02101,"872,00247-1125-30 ",.01)
 ;;00247-1125-30
 ;;9002226.02101,"872,00247-1125-30 ",.02)
 ;;00247-1125-30
 ;;9002226.02101,"872,00247-1125-60 ",.01)
 ;;00247-1125-60
 ;;9002226.02101,"872,00247-1125-60 ",.02)
 ;;00247-1125-60
 ;;9002226.02101,"872,00247-1126-10 ",.01)
 ;;00247-1126-10
 ;;9002226.02101,"872,00247-1126-10 ",.02)
 ;;00247-1126-10
 ;;9002226.02101,"872,00247-1126-30 ",.01)
 ;;00247-1126-30
 ;;9002226.02101,"872,00247-1126-30 ",.02)
 ;;00247-1126-30
 ;;9002226.02101,"872,00247-1126-60 ",.01)
 ;;00247-1126-60
 ;;9002226.02101,"872,00247-1126-60 ",.02)
 ;;00247-1126-60
 ;;9002226.02101,"872,00247-1127-10 ",.01)
 ;;00247-1127-10
 ;;9002226.02101,"872,00247-1127-10 ",.02)
 ;;00247-1127-10
 ;;9002226.02101,"872,00247-1127-30 ",.01)
 ;;00247-1127-30
 ;;9002226.02101,"872,00247-1127-30 ",.02)
 ;;00247-1127-30
 ;;9002226.02101,"872,00247-1148-10 ",.01)
 ;;00247-1148-10
 ;;9002226.02101,"872,00247-1148-10 ",.02)
 ;;00247-1148-10
 ;;9002226.02101,"872,00247-1277-00 ",.01)
 ;;00247-1277-00
 ;;9002226.02101,"872,00247-1277-00 ",.02)
 ;;00247-1277-00
 ;;9002226.02101,"872,00247-1380-14 ",.01)
 ;;00247-1380-14
 ;;9002226.02101,"872,00247-1380-14 ",.02)
 ;;00247-1380-14
 ;;9002226.02101,"872,00247-1439-04 ",.01)
 ;;00247-1439-04
 ;;9002226.02101,"872,00247-1439-04 ",.02)
 ;;00247-1439-04
 ;;9002226.02101,"872,00247-1440-04 ",.01)
 ;;00247-1440-04
 ;;9002226.02101,"872,00247-1440-04 ",.02)
 ;;00247-1440-04
 ;;9002226.02101,"872,00247-1525-30 ",.01)
 ;;00247-1525-30
 ;;9002226.02101,"872,00247-1525-30 ",.02)
 ;;00247-1525-30
 ;;9002226.02101,"872,00247-1525-59 ",.01)
 ;;00247-1525-59
 ;;9002226.02101,"872,00247-1525-59 ",.02)
 ;;00247-1525-59
 ;;9002226.02101,"872,00247-1525-90 ",.01)
 ;;00247-1525-90
 ;;9002226.02101,"872,00247-1525-90 ",.02)
 ;;00247-1525-90
 ;;9002226.02101,"872,00247-1635-30 ",.01)
 ;;00247-1635-30
 ;;9002226.02101,"872,00247-1635-30 ",.02)
 ;;00247-1635-30
 ;;9002226.02101,"872,00247-1636-00 ",.01)
 ;;00247-1636-00
 ;;9002226.02101,"872,00247-1636-00 ",.02)
 ;;00247-1636-00
 ;;9002226.02101,"872,00247-1636-01 ",.01)
 ;;00247-1636-01
 ;;9002226.02101,"872,00247-1636-01 ",.02)
 ;;00247-1636-01
 ;;9002226.02101,"872,00247-1636-14 ",.01)
 ;;00247-1636-14
 ;;9002226.02101,"872,00247-1636-14 ",.02)
 ;;00247-1636-14
 ;;9002226.02101,"872,00247-1636-30 ",.01)
 ;;00247-1636-30
 ;;9002226.02101,"872,00247-1636-30 ",.02)
 ;;00247-1636-30
 ;;9002226.02101,"872,00247-1636-60 ",.01)
 ;;00247-1636-60
 ;;9002226.02101,"872,00247-1636-60 ",.02)
 ;;00247-1636-60
 ;;9002226.02101,"872,00247-1636-90 ",.01)
 ;;00247-1636-90
 ;;9002226.02101,"872,00247-1636-90 ",.02)
 ;;00247-1636-90
 ;;9002226.02101,"872,00247-1636-99 ",.01)
 ;;00247-1636-99