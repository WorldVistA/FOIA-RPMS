BGP82P28 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1224,68462-0195-05 ",.01)
 ;;68462-0195-05
 ;;9002226.02101,"1224,68462-0195-05 ",.02)
 ;;68462-0195-05
 ;;9002226.02101,"1224,68462-0195-90 ",.01)
 ;;68462-0195-90
 ;;9002226.02101,"1224,68462-0195-90 ",.02)
 ;;68462-0195-90
 ;;9002226.02101,"1224,68462-0196-05 ",.01)
 ;;68462-0196-05
 ;;9002226.02101,"1224,68462-0196-05 ",.02)
 ;;68462-0196-05
 ;;9002226.02101,"1224,68462-0196-90 ",.01)
 ;;68462-0196-90
 ;;9002226.02101,"1224,68462-0196-90 ",.02)
 ;;68462-0196-90
 ;;9002226.02101,"1224,68462-0197-05 ",.01)
 ;;68462-0197-05
 ;;9002226.02101,"1224,68462-0197-05 ",.02)
 ;;68462-0197-05
 ;;9002226.02101,"1224,68462-0197-90 ",.01)
 ;;68462-0197-90
 ;;9002226.02101,"1224,68462-0197-90 ",.02)
 ;;68462-0197-90
 ;;9002226.02101,"1224,68462-0198-05 ",.01)
 ;;68462-0198-05
 ;;9002226.02101,"1224,68462-0198-05 ",.02)
 ;;68462-0198-05
 ;;9002226.02101,"1224,68462-0198-90 ",.01)
 ;;68462-0198-90
 ;;9002226.02101,"1224,68462-0198-90 ",.02)
 ;;68462-0198-90
 ;;9002226.02101,"1224,68462-0261-90 ",.01)
 ;;68462-0261-90
 ;;9002226.02101,"1224,68462-0261-90 ",.02)
 ;;68462-0261-90
 ;;9002226.02101,"1224,68462-0262-90 ",.01)
 ;;68462-0262-90
 ;;9002226.02101,"1224,68462-0262-90 ",.02)
 ;;68462-0262-90
 ;;9002226.02101,"1224,68462-0263-90 ",.01)
 ;;68462-0263-90
 ;;9002226.02101,"1224,68462-0263-90 ",.02)
 ;;68462-0263-90
 ;;9002226.02101,"1224,68462-0264-30 ",.01)
 ;;68462-0264-30
 ;;9002226.02101,"1224,68462-0264-30 ",.02)
 ;;68462-0264-30
 ;;9002226.02101,"1224,68645-0261-54 ",.01)
 ;;68645-0261-54
 ;;9002226.02101,"1224,68645-0261-54 ",.02)
 ;;68645-0261-54
 ;;9002226.02101,"1224,68645-0262-54 ",.01)
 ;;68645-0262-54
 ;;9002226.02101,"1224,68645-0262-54 ",.02)
 ;;68645-0262-54
 ;;9002226.02101,"1224,68645-0263-54 ",.01)
 ;;68645-0263-54
 ;;9002226.02101,"1224,68645-0263-54 ",.02)
 ;;68645-0263-54
 ;;9002226.02101,"1224,68645-0402-70 ",.01)
 ;;68645-0402-70
 ;;9002226.02101,"1224,68645-0402-70 ",.02)
 ;;68645-0402-70
 ;;9002226.02101,"1224,68645-0403-70 ",.01)
 ;;68645-0403-70
 ;;9002226.02101,"1224,68645-0403-70 ",.02)
 ;;68645-0403-70
 ;;9002226.02101,"1224,68645-0417-54 ",.01)
 ;;68645-0417-54
 ;;9002226.02101,"1224,68645-0417-54 ",.02)
 ;;68645-0417-54
 ;;9002226.02101,"1224,68645-0418-54 ",.01)
 ;;68645-0418-54
 ;;9002226.02101,"1224,68645-0418-54 ",.02)
 ;;68645-0418-54
 ;;9002226.02101,"1224,68645-0458-54 ",.01)
 ;;68645-0458-54
 ;;9002226.02101,"1224,68645-0458-54 ",.02)
 ;;68645-0458-54
 ;;9002226.02101,"1224,68645-0458-70 ",.01)
 ;;68645-0458-70
 ;;9002226.02101,"1224,68645-0458-70 ",.02)
 ;;68645-0458-70
 ;;9002226.02101,"1224,68645-0459-54 ",.01)
 ;;68645-0459-54
 ;;9002226.02101,"1224,68645-0459-54 ",.02)
 ;;68645-0459-54
 ;;9002226.02101,"1224,68645-0459-70 ",.01)
 ;;68645-0459-70
 ;;9002226.02101,"1224,68645-0459-70 ",.02)
 ;;68645-0459-70
 ;;9002226.02101,"1224,68645-0460-54 ",.01)
 ;;68645-0460-54
 ;;9002226.02101,"1224,68645-0460-54 ",.02)
 ;;68645-0460-54
 ;;9002226.02101,"1224,68645-0461-54 ",.01)
 ;;68645-0461-54
 ;;9002226.02101,"1224,68645-0461-54 ",.02)
 ;;68645-0461-54
 ;;9002226.02101,"1224,68645-0470-54 ",.01)
 ;;68645-0470-54
 ;;9002226.02101,"1224,68645-0470-54 ",.02)
 ;;68645-0470-54
 ;;9002226.02101,"1224,68645-0471-54 ",.01)
 ;;68645-0471-54
 ;;9002226.02101,"1224,68645-0471-54 ",.02)
 ;;68645-0471-54
 ;;9002226.02101,"1224,68645-0472-54 ",.01)
 ;;68645-0472-54
 ;;9002226.02101,"1224,68645-0472-54 ",.02)
 ;;68645-0472-54
 ;;9002226.02101,"1224,68645-0480-54 ",.01)
 ;;68645-0480-54
 ;;9002226.02101,"1224,68645-0480-54 ",.02)
 ;;68645-0480-54
 ;;9002226.02101,"1224,68645-0480-70 ",.01)
 ;;68645-0480-70
 ;;9002226.02101,"1224,68645-0480-70 ",.02)
 ;;68645-0480-70
 ;;9002226.02101,"1224,68645-0481-54 ",.01)
 ;;68645-0481-54
 ;;9002226.02101,"1224,68645-0481-54 ",.02)
 ;;68645-0481-54
 ;;9002226.02101,"1224,68645-0481-70 ",.01)
 ;;68645-0481-70
 ;;9002226.02101,"1224,68645-0481-70 ",.02)
 ;;68645-0481-70
 ;;9002226.02101,"1224,68645-0482-54 ",.01)
 ;;68645-0482-54
 ;;9002226.02101,"1224,68645-0482-54 ",.02)
 ;;68645-0482-54
 ;;9002226.02101,"1224,68645-0483-54 ",.01)
 ;;68645-0483-54
 ;;9002226.02101,"1224,68645-0483-54 ",.02)
 ;;68645-0483-54
 ;;9002226.02101,"1224,68645-0495-54 ",.01)
 ;;68645-0495-54
 ;;9002226.02101,"1224,68645-0495-54 ",.02)
 ;;68645-0495-54
 ;;9002226.02101,"1224,68645-0527-54 ",.01)
 ;;68645-0527-54
 ;;9002226.02101,"1224,68645-0527-54 ",.02)
 ;;68645-0527-54
 ;;9002226.02101,"1224,68788-0074-03 ",.01)
 ;;68788-0074-03
 ;;9002226.02101,"1224,68788-0074-03 ",.02)
 ;;68788-0074-03
 ;;9002226.02101,"1224,68788-6321-02 ",.01)
 ;;68788-6321-02
 ;;9002226.02101,"1224,68788-6321-02 ",.02)
 ;;68788-6321-02
 ;;9002226.02101,"1224,68788-6321-03 ",.01)
 ;;68788-6321-03
 ;;9002226.02101,"1224,68788-6321-03 ",.02)
 ;;68788-6321-03
 ;;9002226.02101,"1224,68788-6321-06 ",.01)
 ;;68788-6321-06
 ;;9002226.02101,"1224,68788-6321-06 ",.02)
 ;;68788-6321-06
 ;;9002226.02101,"1224,68788-6321-09 ",.01)
 ;;68788-6321-09
 ;;9002226.02101,"1224,68788-6321-09 ",.02)
 ;;68788-6321-09
 ;;9002226.02101,"1224,68788-6327-03 ",.01)
 ;;68788-6327-03
 ;;9002226.02101,"1224,68788-6327-03 ",.02)
 ;;68788-6327-03
 ;;9002226.02101,"1224,68788-6327-06 ",.01)
 ;;68788-6327-06
 ;;9002226.02101,"1224,68788-6327-06 ",.02)
 ;;68788-6327-06
 ;;9002226.02101,"1224,68788-6327-09 ",.01)
 ;;68788-6327-09
 ;;9002226.02101,"1224,68788-6327-09 ",.02)
 ;;68788-6327-09
 ;;9002226.02101,"1224,68788-6331-01 ",.01)
 ;;68788-6331-01
 ;;9002226.02101,"1224,68788-6331-01 ",.02)
 ;;68788-6331-01
 ;;9002226.02101,"1224,68788-6331-03 ",.01)
 ;;68788-6331-03
 ;;9002226.02101,"1224,68788-6331-03 ",.02)
 ;;68788-6331-03
 ;;9002226.02101,"1224,68788-6331-06 ",.01)
 ;;68788-6331-06
 ;;9002226.02101,"1224,68788-6331-06 ",.02)
 ;;68788-6331-06
 ;;9002226.02101,"1224,68788-6331-09 ",.01)
 ;;68788-6331-09
 ;;9002226.02101,"1224,68788-6331-09 ",.02)
 ;;68788-6331-09
 ;;9002226.02101,"1224,68788-6341-01 ",.01)
 ;;68788-6341-01
 ;;9002226.02101,"1224,68788-6341-01 ",.02)
 ;;68788-6341-01
 ;;9002226.02101,"1224,68788-6341-03 ",.01)
 ;;68788-6341-03
 ;;9002226.02101,"1224,68788-6341-03 ",.02)
 ;;68788-6341-03
 ;;9002226.02101,"1224,68788-6341-06 ",.01)
 ;;68788-6341-06
 ;;9002226.02101,"1224,68788-6341-06 ",.02)
 ;;68788-6341-06
 ;;9002226.02101,"1224,68788-6341-09 ",.01)
 ;;68788-6341-09
 ;;9002226.02101,"1224,68788-6341-09 ",.02)
 ;;68788-6341-09
 ;;9002226.02101,"1224,68788-6398-01 ",.01)
 ;;68788-6398-01
 ;;9002226.02101,"1224,68788-6398-01 ",.02)
 ;;68788-6398-01
 ;;9002226.02101,"1224,68788-6398-02 ",.01)
 ;;68788-6398-02
 ;;9002226.02101,"1224,68788-6398-02 ",.02)
 ;;68788-6398-02
 ;;9002226.02101,"1224,68788-6398-03 ",.01)
 ;;68788-6398-03
 ;;9002226.02101,"1224,68788-6398-03 ",.02)
 ;;68788-6398-03
 ;;9002226.02101,"1224,68788-6398-06 ",.01)
 ;;68788-6398-06
 ;;9002226.02101,"1224,68788-6398-06 ",.02)
 ;;68788-6398-06
 ;;9002226.02101,"1224,68788-6398-08 ",.01)
 ;;68788-6398-08
 ;;9002226.02101,"1224,68788-6398-08 ",.02)
 ;;68788-6398-08
 ;;9002226.02101,"1224,68788-6398-09 ",.01)
 ;;68788-6398-09
 ;;9002226.02101,"1224,68788-6398-09 ",.02)
 ;;68788-6398-09
 ;;9002226.02101,"1224,68788-6449-03 ",.01)
 ;;68788-6449-03
 ;;9002226.02101,"1224,68788-6449-03 ",.02)
 ;;68788-6449-03
 ;;9002226.02101,"1224,68788-6449-06 ",.01)
 ;;68788-6449-06
 ;;9002226.02101,"1224,68788-6449-06 ",.02)
 ;;68788-6449-06
 ;;9002226.02101,"1224,68788-6449-09 ",.01)
 ;;68788-6449-09
 ;;9002226.02101,"1224,68788-6449-09 ",.02)
 ;;68788-6449-09
 ;;9002226.02101,"1224,68788-6815-02 ",.01)
 ;;68788-6815-02
 ;;9002226.02101,"1224,68788-6815-02 ",.02)
 ;;68788-6815-02
 ;;9002226.02101,"1224,68788-6815-03 ",.01)
 ;;68788-6815-03
 ;;9002226.02101,"1224,68788-6815-03 ",.02)
 ;;68788-6815-03
 ;;9002226.02101,"1224,68788-6815-06 ",.01)
 ;;68788-6815-06
 ;;9002226.02101,"1224,68788-6815-06 ",.02)
 ;;68788-6815-06
 ;;9002226.02101,"1224,68788-6815-09 ",.01)
 ;;68788-6815-09
 ;;9002226.02101,"1224,68788-6815-09 ",.02)
 ;;68788-6815-09
 ;;9002226.02101,"1224,68788-6823-02 ",.01)
 ;;68788-6823-02
 ;;9002226.02101,"1224,68788-6823-02 ",.02)
 ;;68788-6823-02
 ;;9002226.02101,"1224,68788-6823-03 ",.01)
 ;;68788-6823-03
 ;;9002226.02101,"1224,68788-6823-03 ",.02)
 ;;68788-6823-03
 ;;9002226.02101,"1224,68788-6823-06 ",.01)
 ;;68788-6823-06
 ;;9002226.02101,"1224,68788-6823-06 ",.02)
 ;;68788-6823-06
 ;;9002226.02101,"1224,68788-6823-09 ",.01)
 ;;68788-6823-09
 ;;9002226.02101,"1224,68788-6823-09 ",.02)
 ;;68788-6823-09
 ;;9002226.02101,"1224,68788-6828-03 ",.01)
 ;;68788-6828-03
 ;;9002226.02101,"1224,68788-6828-03 ",.02)
 ;;68788-6828-03
 ;;9002226.02101,"1224,68788-6828-06 ",.01)
 ;;68788-6828-06
 ;;9002226.02101,"1224,68788-6828-06 ",.02)
 ;;68788-6828-06
 ;;9002226.02101,"1224,68788-6828-09 ",.01)
 ;;68788-6828-09
 ;;9002226.02101,"1224,68788-6828-09 ",.02)
 ;;68788-6828-09
 ;;9002226.02101,"1224,68788-6955-02 ",.01)
 ;;68788-6955-02
 ;;9002226.02101,"1224,68788-6955-02 ",.02)
 ;;68788-6955-02
 ;;9002226.02101,"1224,68788-6955-03 ",.01)
 ;;68788-6955-03
 ;;9002226.02101,"1224,68788-6955-03 ",.02)
 ;;68788-6955-03
 ;;9002226.02101,"1224,68788-6955-06 ",.01)
 ;;68788-6955-06
 ;;9002226.02101,"1224,68788-6955-06 ",.02)
 ;;68788-6955-06
 ;;9002226.02101,"1224,68788-6955-09 ",.01)
 ;;68788-6955-09
 ;;9002226.02101,"1224,68788-6955-09 ",.02)
 ;;68788-6955-09
 ;;9002226.02101,"1224,68788-8991-01 ",.01)
 ;;68788-8991-01
 ;;9002226.02101,"1224,68788-8991-01 ",.02)
 ;;68788-8991-01
 ;;9002226.02101,"1224,68788-8991-03 ",.01)
 ;;68788-8991-03
 ;;9002226.02101,"1224,68788-8991-03 ",.02)
 ;;68788-8991-03
 ;;9002226.02101,"1224,68788-8991-06 ",.01)
 ;;68788-8991-06
 ;;9002226.02101,"1224,68788-8991-06 ",.02)
 ;;68788-8991-06
 ;;9002226.02101,"1224,68788-8991-09 ",.01)
 ;;68788-8991-09
 ;;9002226.02101,"1224,68788-8991-09 ",.02)
 ;;68788-8991-09
 ;;9002226.02101,"1224,68788-9182-03 ",.01)
 ;;68788-9182-03
 ;;9002226.02101,"1224,68788-9182-03 ",.02)
 ;;68788-9182-03
 ;;9002226.02101,"1224,68788-9556-03 ",.01)
 ;;68788-9556-03
 ;;9002226.02101,"1224,68788-9556-03 ",.02)
 ;;68788-9556-03
 ;;9002226.02101,"1224,68788-9668-03 ",.01)
 ;;68788-9668-03
 ;;9002226.02101,"1224,68788-9668-03 ",.02)
 ;;68788-9668-03
 ;;9002226.02101,"1224,68788-9683-03 ",.01)
 ;;68788-9683-03
 ;;9002226.02101,"1224,68788-9683-03 ",.02)
 ;;68788-9683-03
 ;;9002226.02101,"1224,68788-9835-03 ",.01)
 ;;68788-9835-03
 ;;9002226.02101,"1224,68788-9835-03 ",.02)
 ;;68788-9835-03
 ;;9002226.02101,"1224,68788-9836-03 ",.01)
 ;;68788-9836-03
 ;;9002226.02101,"1224,68788-9836-03 ",.02)
 ;;68788-9836-03
 ;;9002226.02101,"1224,68788-9868-03 ",.01)
 ;;68788-9868-03
 ;;9002226.02101,"1224,68788-9868-03 ",.02)
 ;;68788-9868-03
 ;;9002226.02101,"1224,68788-9869-03 ",.01)
 ;;68788-9869-03
 ;;9002226.02101,"1224,68788-9869-03 ",.02)
 ;;68788-9869-03
 ;;9002226.02101,"1224,69097-0897-05 ",.01)
 ;;69097-0897-05
 ;;9002226.02101,"1224,69097-0897-05 ",.02)
 ;;69097-0897-05
 ;;9002226.02101,"1224,69097-0897-15 ",.01)
 ;;69097-0897-15
 ;;9002226.02101,"1224,69097-0897-15 ",.02)
 ;;69097-0897-15
 ;;9002226.02101,"1224,69097-0898-05 ",.01)
 ;;69097-0898-05
 ;;9002226.02101,"1224,69097-0898-05 ",.02)
 ;;69097-0898-05
 ;;9002226.02101,"1224,69097-0898-12 ",.01)
 ;;69097-0898-12
 ;;9002226.02101,"1224,69097-0898-12 ",.02)
 ;;69097-0898-12
 ;;9002226.02101,"1224,69097-0899-05 ",.01)
 ;;69097-0899-05
 ;;9002226.02101,"1224,69097-0899-05 ",.02)
 ;;69097-0899-05
 ;;9002226.02101,"1224,69097-0899-15 ",.01)
 ;;69097-0899-15
 ;;9002226.02101,"1224,69097-0899-15 ",.02)
 ;;69097-0899-15
 ;;9002226.02101,"1224,69097-0911-05 ",.01)
 ;;69097-0911-05