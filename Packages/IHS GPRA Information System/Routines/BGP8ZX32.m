BGP8ZX32 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"872,66685-0703-01 ",.02)
 ;;66685-0703-01
 ;;9002226.02101,"872,66685-0703-02 ",.01)
 ;;66685-0703-02
 ;;9002226.02101,"872,66685-0703-02 ",.02)
 ;;66685-0703-02
 ;;9002226.02101,"872,66685-0703-03 ",.01)
 ;;66685-0703-03
 ;;9002226.02101,"872,66685-0703-03 ",.02)
 ;;66685-0703-03
 ;;9002226.02101,"872,66685-0704-01 ",.01)
 ;;66685-0704-01
 ;;9002226.02101,"872,66685-0704-01 ",.02)
 ;;66685-0704-01
 ;;9002226.02101,"872,66685-0704-02 ",.01)
 ;;66685-0704-02
 ;;9002226.02101,"872,66685-0704-02 ",.02)
 ;;66685-0704-02
 ;;9002226.02101,"872,66685-0704-03 ",.01)
 ;;66685-0704-03
 ;;9002226.02101,"872,66685-0704-03 ",.02)
 ;;66685-0704-03
 ;;9002226.02101,"872,66685-0705-01 ",.01)
 ;;66685-0705-01
 ;;9002226.02101,"872,66685-0705-01 ",.02)
 ;;66685-0705-01
 ;;9002226.02101,"872,66685-0705-02 ",.01)
 ;;66685-0705-02
 ;;9002226.02101,"872,66685-0705-02 ",.02)
 ;;66685-0705-02
 ;;9002226.02101,"872,66685-0706-01 ",.01)
 ;;66685-0706-01
 ;;9002226.02101,"872,66685-0706-01 ",.02)
 ;;66685-0706-01
 ;;9002226.02101,"872,66685-0706-03 ",.01)
 ;;66685-0706-03
 ;;9002226.02101,"872,66685-0706-03 ",.02)
 ;;66685-0706-03
 ;;9002226.02101,"872,66685-0706-04 ",.01)
 ;;66685-0706-04
 ;;9002226.02101,"872,66685-0706-04 ",.02)
 ;;66685-0706-04
 ;;9002226.02101,"872,67253-0106-10 ",.01)
 ;;67253-0106-10
 ;;9002226.02101,"872,67253-0106-10 ",.02)
 ;;67253-0106-10
 ;;9002226.02101,"872,67253-0107-10 ",.01)
 ;;67253-0107-10
 ;;9002226.02101,"872,67253-0107-10 ",.02)
 ;;67253-0107-10
 ;;9002226.02101,"872,67253-0671-10 ",.01)
 ;;67253-0671-10
 ;;9002226.02101,"872,67253-0671-10 ",.02)
 ;;67253-0671-10
 ;;9002226.02101,"872,67253-0672-10 ",.01)
 ;;67253-0672-10
 ;;9002226.02101,"872,67253-0672-10 ",.02)
 ;;67253-0672-10
 ;;9002226.02101,"872,67253-0672-11 ",.01)
 ;;67253-0672-11
 ;;9002226.02101,"872,67253-0672-11 ",.02)
 ;;67253-0672-11
 ;;9002226.02101,"872,67253-0673-10 ",.01)
 ;;67253-0673-10
 ;;9002226.02101,"872,67253-0673-10 ",.02)
 ;;67253-0673-10
 ;;9002226.02101,"872,67253-0673-11 ",.01)
 ;;67253-0673-11
 ;;9002226.02101,"872,67253-0673-11 ",.02)
 ;;67253-0673-11
 ;;9002226.02101,"872,67253-0674-10 ",.01)
 ;;67253-0674-10
 ;;9002226.02101,"872,67253-0674-10 ",.02)
 ;;67253-0674-10
 ;;9002226.02101,"872,67253-0674-11 ",.01)
 ;;67253-0674-11
 ;;9002226.02101,"872,67253-0674-11 ",.02)
 ;;67253-0674-11
 ;;9002226.02101,"872,67544-0062-30 ",.01)
 ;;67544-0062-30
 ;;9002226.02101,"872,67544-0062-30 ",.02)
 ;;67544-0062-30
 ;;9002226.02101,"872,67544-0128-15 ",.01)
 ;;67544-0128-15
 ;;9002226.02101,"872,67544-0128-15 ",.02)
 ;;67544-0128-15
 ;;9002226.02101,"872,67544-0134-15 ",.01)
 ;;67544-0134-15
 ;;9002226.02101,"872,67544-0134-15 ",.02)
 ;;67544-0134-15
 ;;9002226.02101,"872,67544-0148-15 ",.01)
 ;;67544-0148-15
 ;;9002226.02101,"872,67544-0148-15 ",.02)
 ;;67544-0148-15
 ;;9002226.02101,"872,67544-0159-15 ",.01)
 ;;67544-0159-15
 ;;9002226.02101,"872,67544-0159-15 ",.02)
 ;;67544-0159-15
 ;;9002226.02101,"872,67544-0173-30 ",.01)
 ;;67544-0173-30
 ;;9002226.02101,"872,67544-0173-30 ",.02)
 ;;67544-0173-30
 ;;9002226.02101,"872,67544-0174-30 ",.01)
 ;;67544-0174-30
 ;;9002226.02101,"872,67544-0174-30 ",.02)
 ;;67544-0174-30
 ;;9002226.02101,"872,67544-0219-15 ",.01)
 ;;67544-0219-15
 ;;9002226.02101,"872,67544-0219-15 ",.02)
 ;;67544-0219-15
 ;;9002226.02101,"872,67544-0306-30 ",.01)
 ;;67544-0306-30
 ;;9002226.02101,"872,67544-0306-30 ",.02)
 ;;67544-0306-30
 ;;9002226.02101,"872,67544-0311-30 ",.01)
 ;;67544-0311-30
 ;;9002226.02101,"872,67544-0311-30 ",.02)
 ;;67544-0311-30
 ;;9002226.02101,"872,67544-0322-15 ",.01)
 ;;67544-0322-15
 ;;9002226.02101,"872,67544-0322-15 ",.02)
 ;;67544-0322-15
 ;;9002226.02101,"872,67544-0350-80 ",.01)
 ;;67544-0350-80
 ;;9002226.02101,"872,67544-0350-80 ",.02)
 ;;67544-0350-80
 ;;9002226.02101,"872,67544-0377-60 ",.01)
 ;;67544-0377-60
 ;;9002226.02101,"872,67544-0377-60 ",.02)
 ;;67544-0377-60
 ;;9002226.02101,"872,67544-0380-30 ",.01)
 ;;67544-0380-30
 ;;9002226.02101,"872,67544-0380-30 ",.02)
 ;;67544-0380-30
 ;;9002226.02101,"872,67544-0418-60 ",.01)
 ;;67544-0418-60
 ;;9002226.02101,"872,67544-0418-60 ",.02)
 ;;67544-0418-60
 ;;9002226.02101,"872,67544-0431-15 ",.01)
 ;;67544-0431-15
 ;;9002226.02101,"872,67544-0431-15 ",.02)
 ;;67544-0431-15
 ;;9002226.02101,"872,67544-0454-15 ",.01)
 ;;67544-0454-15
 ;;9002226.02101,"872,67544-0454-15 ",.02)
 ;;67544-0454-15
 ;;9002226.02101,"872,67544-0489-15 ",.01)
 ;;67544-0489-15
 ;;9002226.02101,"872,67544-0489-15 ",.02)
 ;;67544-0489-15
 ;;9002226.02101,"872,67544-0997-30 ",.01)
 ;;67544-0997-30
 ;;9002226.02101,"872,67544-0997-30 ",.02)
 ;;67544-0997-30
 ;;9002226.02101,"872,67544-0999-60 ",.01)
 ;;67544-0999-60
 ;;9002226.02101,"872,67544-0999-60 ",.02)
 ;;67544-0999-60
 ;;9002226.02101,"872,67801-0340-03 ",.01)
 ;;67801-0340-03
 ;;9002226.02101,"872,67801-0340-03 ",.02)
 ;;67801-0340-03
 ;;9002226.02101,"872,67801-0342-03 ",.01)
 ;;67801-0342-03
 ;;9002226.02101,"872,67801-0342-03 ",.02)
 ;;67801-0342-03
 ;;9002226.02101,"872,67801-0343-03 ",.01)
 ;;67801-0343-03
 ;;9002226.02101,"872,67801-0343-03 ",.02)
 ;;67801-0343-03
 ;;9002226.02101,"872,67801-0441-03 ",.01)
 ;;67801-0441-03
 ;;9002226.02101,"872,67801-0441-03 ",.02)
 ;;67801-0441-03
 ;;9002226.02101,"872,68001-0130-00 ",.01)
 ;;68001-0130-00
 ;;9002226.02101,"872,68001-0130-00 ",.02)
 ;;68001-0130-00
 ;;9002226.02101,"872,68001-0131-00 ",.01)
 ;;68001-0131-00
 ;;9002226.02101,"872,68001-0131-00 ",.02)
 ;;68001-0131-00
 ;;9002226.02101,"872,68001-0132-00 ",.01)
 ;;68001-0132-00
 ;;9002226.02101,"872,68001-0132-00 ",.02)
 ;;68001-0132-00
 ;;9002226.02101,"872,68001-0133-00 ",.01)
 ;;68001-0133-00
 ;;9002226.02101,"872,68001-0133-00 ",.02)
 ;;68001-0133-00
 ;;9002226.02101,"872,68001-0134-00 ",.01)
 ;;68001-0134-00
 ;;9002226.02101,"872,68001-0134-00 ",.02)
 ;;68001-0134-00
 ;;9002226.02101,"872,68001-0135-00 ",.01)
 ;;68001-0135-00
 ;;9002226.02101,"872,68001-0135-00 ",.02)
 ;;68001-0135-00
 ;;9002226.02101,"872,68001-0140-04 ",.01)
 ;;68001-0140-04
 ;;9002226.02101,"872,68001-0140-04 ",.02)
 ;;68001-0140-04
 ;;9002226.02101,"872,68001-0141-00 ",.01)
 ;;68001-0141-00
 ;;9002226.02101,"872,68001-0141-00 ",.02)
 ;;68001-0141-00
 ;;9002226.02101,"872,68001-0141-03 ",.01)
 ;;68001-0141-03
 ;;9002226.02101,"872,68001-0141-03 ",.02)
 ;;68001-0141-03
 ;;9002226.02101,"872,68001-0142-00 ",.01)
 ;;68001-0142-00
 ;;9002226.02101,"872,68001-0142-00 ",.02)
 ;;68001-0142-00
 ;;9002226.02101,"872,68001-0142-03 ",.01)
 ;;68001-0142-03
 ;;9002226.02101,"872,68001-0142-03 ",.02)
 ;;68001-0142-03
 ;;9002226.02101,"872,68001-0143-00 ",.01)
 ;;68001-0143-00
 ;;9002226.02101,"872,68001-0143-00 ",.02)
 ;;68001-0143-00
 ;;9002226.02101,"872,68001-0143-03 ",.01)
 ;;68001-0143-03
 ;;9002226.02101,"872,68001-0143-03 ",.02)
 ;;68001-0143-03
 ;;9002226.02101,"872,68001-0186-05 ",.01)
 ;;68001-0186-05
 ;;9002226.02101,"872,68001-0186-05 ",.02)
 ;;68001-0186-05
 ;;9002226.02101,"872,68001-0187-05 ",.01)
 ;;68001-0187-05
 ;;9002226.02101,"872,68001-0187-05 ",.02)
 ;;68001-0187-05
 ;;9002226.02101,"872,68001-0188-05 ",.01)
 ;;68001-0188-05
 ;;9002226.02101,"872,68001-0188-05 ",.02)
 ;;68001-0188-05
 ;;9002226.02101,"872,68001-0189-05 ",.01)
 ;;68001-0189-05
 ;;9002226.02101,"872,68001-0189-05 ",.02)
 ;;68001-0189-05
 ;;9002226.02101,"872,68001-0207-00 ",.01)
 ;;68001-0207-00
 ;;9002226.02101,"872,68001-0207-00 ",.02)
 ;;68001-0207-00
 ;;9002226.02101,"872,68001-0207-08 ",.01)
 ;;68001-0207-08
 ;;9002226.02101,"872,68001-0207-08 ",.02)
 ;;68001-0207-08
 ;;9002226.02101,"872,68001-0208-00 ",.01)
 ;;68001-0208-00
 ;;9002226.02101,"872,68001-0208-00 ",.02)
 ;;68001-0208-00
 ;;9002226.02101,"872,68001-0208-08 ",.01)
 ;;68001-0208-08
 ;;9002226.02101,"872,68001-0208-08 ",.02)
 ;;68001-0208-08
 ;;9002226.02101,"872,68001-0209-00 ",.01)
 ;;68001-0209-00
 ;;9002226.02101,"872,68001-0209-00 ",.02)
 ;;68001-0209-00
 ;;9002226.02101,"872,68001-0209-08 ",.01)
 ;;68001-0209-08
 ;;9002226.02101,"872,68001-0209-08 ",.02)
 ;;68001-0209-08
 ;;9002226.02101,"872,68001-0210-00 ",.01)
 ;;68001-0210-00
 ;;9002226.02101,"872,68001-0210-00 ",.02)
 ;;68001-0210-00
 ;;9002226.02101,"872,68001-0210-08 ",.01)
 ;;68001-0210-08
 ;;9002226.02101,"872,68001-0210-08 ",.02)
 ;;68001-0210-08
 ;;9002226.02101,"872,68001-0211-00 ",.01)
 ;;68001-0211-00
 ;;9002226.02101,"872,68001-0211-00 ",.02)
 ;;68001-0211-00
 ;;9002226.02101,"872,68001-0211-08 ",.01)
 ;;68001-0211-08
 ;;9002226.02101,"872,68001-0211-08 ",.02)
 ;;68001-0211-08
 ;;9002226.02101,"872,68001-0212-00 ",.01)
 ;;68001-0212-00
 ;;9002226.02101,"872,68001-0212-00 ",.02)
 ;;68001-0212-00
 ;;9002226.02101,"872,68001-0260-05 ",.01)
 ;;68001-0260-05
 ;;9002226.02101,"872,68001-0260-05 ",.02)
 ;;68001-0260-05
 ;;9002226.02101,"872,68001-0268-00 ",.01)
 ;;68001-0268-00
 ;;9002226.02101,"872,68001-0268-00 ",.02)
 ;;68001-0268-00
 ;;9002226.02101,"872,68001-0268-08 ",.01)
 ;;68001-0268-08
 ;;9002226.02101,"872,68001-0268-08 ",.02)
 ;;68001-0268-08
 ;;9002226.02101,"872,68001-0269-00 ",.01)
 ;;68001-0269-00
 ;;9002226.02101,"872,68001-0269-00 ",.02)
 ;;68001-0269-00
 ;;9002226.02101,"872,68001-0269-08 ",.01)
 ;;68001-0269-08
 ;;9002226.02101,"872,68001-0269-08 ",.02)
 ;;68001-0269-08
 ;;9002226.02101,"872,68001-0270-00 ",.01)
 ;;68001-0270-00
 ;;9002226.02101,"872,68001-0270-00 ",.02)
 ;;68001-0270-00
 ;;9002226.02101,"872,68001-0271-00 ",.01)
 ;;68001-0271-00
 ;;9002226.02101,"872,68001-0271-00 ",.02)
 ;;68001-0271-00
 ;;9002226.02101,"872,68001-0271-08 ",.01)
 ;;68001-0271-08
 ;;9002226.02101,"872,68001-0271-08 ",.02)
 ;;68001-0271-08
 ;;9002226.02101,"872,68001-0272-00 ",.01)
 ;;68001-0272-00
 ;;9002226.02101,"872,68001-0272-00 ",.02)
 ;;68001-0272-00
 ;;9002226.02101,"872,68001-0272-08 ",.01)
 ;;68001-0272-08
 ;;9002226.02101,"872,68001-0272-08 ",.02)
 ;;68001-0272-08
 ;;9002226.02101,"872,68084-0058-01 ",.01)
 ;;68084-0058-01
 ;;9002226.02101,"872,68084-0058-01 ",.02)
 ;;68084-0058-01
 ;;9002226.02101,"872,68084-0060-01 ",.01)
 ;;68084-0060-01
 ;;9002226.02101,"872,68084-0060-01 ",.02)
 ;;68084-0060-01
 ;;9002226.02101,"872,68084-0060-11 ",.01)
 ;;68084-0060-11
 ;;9002226.02101,"872,68084-0060-11 ",.02)
 ;;68084-0060-11
 ;;9002226.02101,"872,68084-0061-01 ",.01)
 ;;68084-0061-01
 ;;9002226.02101,"872,68084-0061-01 ",.02)
 ;;68084-0061-01
 ;;9002226.02101,"872,68084-0061-11 ",.01)
 ;;68084-0061-11
 ;;9002226.02101,"872,68084-0061-11 ",.02)
 ;;68084-0061-11
 ;;9002226.02101,"872,68084-0062-01 ",.01)
 ;;68084-0062-01
 ;;9002226.02101,"872,68084-0062-01 ",.02)
 ;;68084-0062-01
 ;;9002226.02101,"872,68084-0062-11 ",.01)
 ;;68084-0062-11
 ;;9002226.02101,"872,68084-0062-11 ",.02)
 ;;68084-0062-11
 ;;9002226.02101,"872,68084-0064-01 ",.01)
 ;;68084-0064-01
 ;;9002226.02101,"872,68084-0064-01 ",.02)
 ;;68084-0064-01
 ;;9002226.02101,"872,68084-0064-11 ",.01)
 ;;68084-0064-11
 ;;9002226.02101,"872,68084-0064-11 ",.02)
 ;;68084-0064-11
 ;;9002226.02101,"872,68084-0196-01 ",.01)
 ;;68084-0196-01
 ;;9002226.02101,"872,68084-0196-01 ",.02)
 ;;68084-0196-01
 ;;9002226.02101,"872,68084-0196-11 ",.01)
 ;;68084-0196-11
 ;;9002226.02101,"872,68084-0196-11 ",.02)
 ;;68084-0196-11
 ;;9002226.02101,"872,68084-0197-01 ",.01)
 ;;68084-0197-01
 ;;9002226.02101,"872,68084-0197-01 ",.02)
 ;;68084-0197-01
 ;;9002226.02101,"872,68084-0198-01 ",.01)
 ;;68084-0198-01
 ;;9002226.02101,"872,68084-0198-01 ",.02)
 ;;68084-0198-01
 ;;9002226.02101,"872,68084-0198-11 ",.01)
 ;;68084-0198-11
 ;;9002226.02101,"872,68084-0198-11 ",.02)
 ;;68084-0198-11
 ;;9002226.02101,"872,68084-0199-01 ",.01)
 ;;68084-0199-01