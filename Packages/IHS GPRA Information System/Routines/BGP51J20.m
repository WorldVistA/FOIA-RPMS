BGP51J20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"730,54569-0175-00 ",.02)
 ;;54569-0175-00
 ;;9002226.02101,"730,54569-0175-01 ",.01)
 ;;54569-0175-01
 ;;9002226.02101,"730,54569-0175-01 ",.02)
 ;;54569-0175-01
 ;;9002226.02101,"730,54569-0175-02 ",.01)
 ;;54569-0175-02
 ;;9002226.02101,"730,54569-0175-02 ",.02)
 ;;54569-0175-02
 ;;9002226.02101,"730,54569-0175-04 ",.01)
 ;;54569-0175-04
 ;;9002226.02101,"730,54569-0175-04 ",.02)
 ;;54569-0175-04
 ;;9002226.02101,"730,54569-0175-08 ",.01)
 ;;54569-0175-08
 ;;9002226.02101,"730,54569-0175-08 ",.02)
 ;;54569-0175-08
 ;;9002226.02101,"730,54569-0194-00 ",.01)
 ;;54569-0194-00
 ;;9002226.02101,"730,54569-0194-00 ",.02)
 ;;54569-0194-00
 ;;9002226.02101,"730,54569-0339-04 ",.01)
 ;;54569-0339-04
 ;;9002226.02101,"730,54569-0339-04 ",.02)
 ;;54569-0339-04
 ;;9002226.02101,"730,54569-1519-00 ",.01)
 ;;54569-1519-00
 ;;9002226.02101,"730,54569-1519-00 ",.02)
 ;;54569-1519-00
 ;;9002226.02101,"730,54569-1519-01 ",.01)
 ;;54569-1519-01
 ;;9002226.02101,"730,54569-1519-01 ",.02)
 ;;54569-1519-01
 ;;9002226.02101,"730,54569-1519-02 ",.01)
 ;;54569-1519-02
 ;;9002226.02101,"730,54569-1519-02 ",.02)
 ;;54569-1519-02
 ;;9002226.02101,"730,54569-1519-05 ",.01)
 ;;54569-1519-05
 ;;9002226.02101,"730,54569-1519-05 ",.02)
 ;;54569-1519-05
 ;;9002226.02101,"730,54569-1696-01 ",.01)
 ;;54569-1696-01
 ;;9002226.02101,"730,54569-1696-01 ",.02)
 ;;54569-1696-01
 ;;9002226.02101,"730,54569-2146-01 ",.01)
 ;;54569-2146-01
 ;;9002226.02101,"730,54569-2146-01 ",.02)
 ;;54569-2146-01
 ;;9002226.02101,"730,54569-2146-02 ",.01)
 ;;54569-2146-02
 ;;9002226.02101,"730,54569-2146-02 ",.02)
 ;;54569-2146-02
 ;;9002226.02101,"730,54569-2538-00 ",.01)
 ;;54569-2538-00
 ;;9002226.02101,"730,54569-2538-00 ",.02)
 ;;54569-2538-00
 ;;9002226.02101,"730,54569-2538-03 ",.01)
 ;;54569-2538-03
 ;;9002226.02101,"730,54569-2538-03 ",.02)
 ;;54569-2538-03
 ;;9002226.02101,"730,54569-2538-05 ",.01)
 ;;54569-2538-05
 ;;9002226.02101,"730,54569-2538-05 ",.02)
 ;;54569-2538-05
 ;;9002226.02101,"730,54569-3441-00 ",.01)
 ;;54569-3441-00
 ;;9002226.02101,"730,54569-3441-00 ",.02)
 ;;54569-3441-00
 ;;9002226.02101,"730,54569-3827-03 ",.01)
 ;;54569-3827-03
 ;;9002226.02101,"730,54569-3827-03 ",.02)
 ;;54569-3827-03
 ;;9002226.02101,"730,54569-3828-01 ",.01)
 ;;54569-3828-01
 ;;9002226.02101,"730,54569-3828-01 ",.02)
 ;;54569-3828-01
 ;;9002226.02101,"730,54569-4837-00 ",.01)
 ;;54569-4837-00
 ;;9002226.02101,"730,54569-4837-00 ",.02)
 ;;54569-4837-00
 ;;9002226.02101,"730,54569-4935-00 ",.01)
 ;;54569-4935-00
 ;;9002226.02101,"730,54569-4935-00 ",.02)
 ;;54569-4935-00
 ;;9002226.02101,"730,54569-5684-00 ",.01)
 ;;54569-5684-00
 ;;9002226.02101,"730,54569-5684-00 ",.02)
 ;;54569-5684-00
 ;;9002226.02101,"730,54569-5696-00 ",.01)
 ;;54569-5696-00
 ;;9002226.02101,"730,54569-5696-00 ",.02)
 ;;54569-5696-00
 ;;9002226.02101,"730,54569-5760-00 ",.01)
 ;;54569-5760-00
 ;;9002226.02101,"730,54569-5760-00 ",.02)
 ;;54569-5760-00
 ;;9002226.02101,"730,54569-5760-01 ",.01)
 ;;54569-5760-01
 ;;9002226.02101,"730,54569-5760-01 ",.02)
 ;;54569-5760-01
 ;;9002226.02101,"730,54569-5906-00 ",.01)
 ;;54569-5906-00
 ;;9002226.02101,"730,54569-5906-00 ",.02)
 ;;54569-5906-00
 ;;9002226.02101,"730,54569-5906-01 ",.01)
 ;;54569-5906-01
 ;;9002226.02101,"730,54569-5906-01 ",.02)
 ;;54569-5906-01
 ;;9002226.02101,"730,54569-5906-02 ",.01)
 ;;54569-5906-02
 ;;9002226.02101,"730,54569-5906-02 ",.02)
 ;;54569-5906-02
 ;;9002226.02101,"730,54569-5906-03 ",.01)
 ;;54569-5906-03
 ;;9002226.02101,"730,54569-5906-03 ",.02)
 ;;54569-5906-03
 ;;9002226.02101,"730,54569-5906-04 ",.01)
 ;;54569-5906-04
 ;;9002226.02101,"730,54569-5906-04 ",.02)
 ;;54569-5906-04
 ;;9002226.02101,"730,54569-5907-00 ",.01)
 ;;54569-5907-00
 ;;9002226.02101,"730,54569-5907-00 ",.02)
 ;;54569-5907-00
 ;;9002226.02101,"730,54569-5907-01 ",.01)
 ;;54569-5907-01
 ;;9002226.02101,"730,54569-5907-01 ",.02)
 ;;54569-5907-01
 ;;9002226.02101,"730,54569-6118-00 ",.01)
 ;;54569-6118-00
 ;;9002226.02101,"730,54569-6118-00 ",.02)
 ;;54569-6118-00
 ;;9002226.02101,"730,54569-6118-01 ",.01)
 ;;54569-6118-01
 ;;9002226.02101,"730,54569-6118-01 ",.02)
 ;;54569-6118-01
 ;;9002226.02101,"730,54569-6231-00 ",.01)
 ;;54569-6231-00
 ;;9002226.02101,"730,54569-6231-00 ",.02)
 ;;54569-6231-00
 ;;9002226.02101,"730,54569-6231-01 ",.01)
 ;;54569-6231-01
 ;;9002226.02101,"730,54569-6231-01 ",.02)
 ;;54569-6231-01
 ;;9002226.02101,"730,54569-6378-00 ",.01)
 ;;54569-6378-00
 ;;9002226.02101,"730,54569-6378-00 ",.02)
 ;;54569-6378-00
 ;;9002226.02101,"730,54738-0912-01 ",.01)
 ;;54738-0912-01
 ;;9002226.02101,"730,54738-0912-01 ",.02)
 ;;54738-0912-01
 ;;9002226.02101,"730,54738-0913-01 ",.01)
 ;;54738-0913-01
 ;;9002226.02101,"730,54738-0913-01 ",.02)
 ;;54738-0913-01
 ;;9002226.02101,"730,54738-0914-01 ",.01)
 ;;54738-0914-01
 ;;9002226.02101,"730,54738-0914-01 ",.02)
 ;;54738-0914-01
 ;;9002226.02101,"730,54838-0512-40 ",.01)
 ;;54838-0512-40
 ;;9002226.02101,"730,54838-0512-40 ",.02)
 ;;54838-0512-40
 ;;9002226.02101,"730,54868-0031-00 ",.01)
 ;;54868-0031-00
 ;;9002226.02101,"730,54868-0031-00 ",.02)
 ;;54868-0031-00
 ;;9002226.02101,"730,54868-0031-01 ",.01)
 ;;54868-0031-01
 ;;9002226.02101,"730,54868-0031-01 ",.02)
 ;;54868-0031-01
 ;;9002226.02101,"730,54868-0031-02 ",.01)
 ;;54868-0031-02
 ;;9002226.02101,"730,54868-0031-02 ",.02)
 ;;54868-0031-02
 ;;9002226.02101,"730,54868-0031-03 ",.01)
 ;;54868-0031-03
 ;;9002226.02101,"730,54868-0031-03 ",.02)
 ;;54868-0031-03
 ;;9002226.02101,"730,54868-0031-04 ",.01)
 ;;54868-0031-04
 ;;9002226.02101,"730,54868-0031-04 ",.02)
 ;;54868-0031-04
 ;;9002226.02101,"730,54868-0062-00 ",.01)
 ;;54868-0062-00
 ;;9002226.02101,"730,54868-0062-00 ",.02)
 ;;54868-0062-00
 ;;9002226.02101,"730,54868-0062-02 ",.01)
 ;;54868-0062-02
 ;;9002226.02101,"730,54868-0062-02 ",.02)
 ;;54868-0062-02
 ;;9002226.02101,"730,54868-0062-04 ",.01)
 ;;54868-0062-04
 ;;9002226.02101,"730,54868-0062-04 ",.02)
 ;;54868-0062-04
 ;;9002226.02101,"730,54868-0064-02 ",.01)
 ;;54868-0064-02
 ;;9002226.02101,"730,54868-0064-02 ",.02)
 ;;54868-0064-02
 ;;9002226.02101,"730,54868-0064-05 ",.01)
 ;;54868-0064-05
 ;;9002226.02101,"730,54868-0064-05 ",.02)
 ;;54868-0064-05
 ;;9002226.02101,"730,54868-0064-06 ",.01)
 ;;54868-0064-06
 ;;9002226.02101,"730,54868-0064-06 ",.02)
 ;;54868-0064-06
 ;;9002226.02101,"730,54868-0064-07 ",.01)
 ;;54868-0064-07
 ;;9002226.02101,"730,54868-0064-07 ",.02)
 ;;54868-0064-07
 ;;9002226.02101,"730,54868-0065-00 ",.01)
 ;;54868-0065-00
 ;;9002226.02101,"730,54868-0065-00 ",.02)
 ;;54868-0065-00
 ;;9002226.02101,"730,54868-0065-02 ",.01)
 ;;54868-0065-02
 ;;9002226.02101,"730,54868-0065-02 ",.02)
 ;;54868-0065-02
 ;;9002226.02101,"730,54868-0065-03 ",.01)
 ;;54868-0065-03
 ;;9002226.02101,"730,54868-0065-03 ",.02)
 ;;54868-0065-03
 ;;9002226.02101,"730,54868-0065-04 ",.01)
 ;;54868-0065-04
 ;;9002226.02101,"730,54868-0065-04 ",.02)
 ;;54868-0065-04
 ;;9002226.02101,"730,54868-0065-05 ",.01)
 ;;54868-0065-05
 ;;9002226.02101,"730,54868-0065-05 ",.02)
 ;;54868-0065-05
 ;;9002226.02101,"730,54868-0065-08 ",.01)
 ;;54868-0065-08
 ;;9002226.02101,"730,54868-0065-08 ",.02)
 ;;54868-0065-08
 ;;9002226.02101,"730,54868-0066-02 ",.01)
 ;;54868-0066-02
 ;;9002226.02101,"730,54868-0066-02 ",.02)
 ;;54868-0066-02
 ;;9002226.02101,"730,54868-0066-05 ",.01)
 ;;54868-0066-05
 ;;9002226.02101,"730,54868-0066-05 ",.02)
 ;;54868-0066-05
 ;;9002226.02101,"730,54868-0066-06 ",.01)
 ;;54868-0066-06
 ;;9002226.02101,"730,54868-0066-06 ",.02)
 ;;54868-0066-06
 ;;9002226.02101,"730,54868-0066-07 ",.01)
 ;;54868-0066-07
 ;;9002226.02101,"730,54868-0066-07 ",.02)
 ;;54868-0066-07
 ;;9002226.02101,"730,54868-0845-00 ",.01)
 ;;54868-0845-00
 ;;9002226.02101,"730,54868-0845-00 ",.02)
 ;;54868-0845-00
 ;;9002226.02101,"730,54868-0845-01 ",.01)
 ;;54868-0845-01
 ;;9002226.02101,"730,54868-0845-01 ",.02)
 ;;54868-0845-01
 ;;9002226.02101,"730,54868-0845-02 ",.01)
 ;;54868-0845-02
 ;;9002226.02101,"730,54868-0845-02 ",.02)
 ;;54868-0845-02
 ;;9002226.02101,"730,54868-0845-03 ",.01)
 ;;54868-0845-03
 ;;9002226.02101,"730,54868-0845-03 ",.02)
 ;;54868-0845-03
 ;;9002226.02101,"730,54868-0846-00 ",.01)
 ;;54868-0846-00
 ;;9002226.02101,"730,54868-0846-00 ",.02)
 ;;54868-0846-00
 ;;9002226.02101,"730,54868-0846-01 ",.01)
 ;;54868-0846-01
 ;;9002226.02101,"730,54868-0846-01 ",.02)
 ;;54868-0846-01
 ;;9002226.02101,"730,54868-0846-02 ",.01)
 ;;54868-0846-02
 ;;9002226.02101,"730,54868-0846-02 ",.02)
 ;;54868-0846-02
 ;;9002226.02101,"730,54868-0846-03 ",.01)
 ;;54868-0846-03
 ;;9002226.02101,"730,54868-0846-03 ",.02)
 ;;54868-0846-03
 ;;9002226.02101,"730,54868-0846-04 ",.01)
 ;;54868-0846-04
 ;;9002226.02101,"730,54868-0846-04 ",.02)
 ;;54868-0846-04
 ;;9002226.02101,"730,54868-0846-05 ",.01)
 ;;54868-0846-05
 ;;9002226.02101,"730,54868-0846-05 ",.02)
 ;;54868-0846-05
 ;;9002226.02101,"730,54868-0846-06 ",.01)
 ;;54868-0846-06
 ;;9002226.02101,"730,54868-0846-06 ",.02)
 ;;54868-0846-06
 ;;9002226.02101,"730,54868-0899-00 ",.01)
 ;;54868-0899-00
 ;;9002226.02101,"730,54868-0899-00 ",.02)
 ;;54868-0899-00
 ;;9002226.02101,"730,54868-0899-01 ",.01)
 ;;54868-0899-01
 ;;9002226.02101,"730,54868-0899-01 ",.02)
 ;;54868-0899-01
 ;;9002226.02101,"730,54868-1036-00 ",.01)
 ;;54868-1036-00
 ;;9002226.02101,"730,54868-1036-00 ",.02)
 ;;54868-1036-00
 ;;9002226.02101,"730,54868-1036-01 ",.01)
 ;;54868-1036-01
 ;;9002226.02101,"730,54868-1036-01 ",.02)
 ;;54868-1036-01
 ;;9002226.02101,"730,54868-1036-02 ",.01)
 ;;54868-1036-02
 ;;9002226.02101,"730,54868-1036-02 ",.02)
 ;;54868-1036-02
 ;;9002226.02101,"730,54868-1036-03 ",.01)
 ;;54868-1036-03
 ;;9002226.02101,"730,54868-1036-03 ",.02)
 ;;54868-1036-03
 ;;9002226.02101,"730,54868-1036-04 ",.01)
 ;;54868-1036-04
 ;;9002226.02101,"730,54868-1036-04 ",.02)
 ;;54868-1036-04
 ;;9002226.02101,"730,54868-1036-05 ",.01)
 ;;54868-1036-05
 ;;9002226.02101,"730,54868-1036-05 ",.02)
 ;;54868-1036-05
 ;;9002226.02101,"730,54868-1036-06 ",.01)
 ;;54868-1036-06
 ;;9002226.02101,"730,54868-1036-06 ",.02)
 ;;54868-1036-06
 ;;9002226.02101,"730,54868-1036-07 ",.01)
 ;;54868-1036-07
 ;;9002226.02101,"730,54868-1036-07 ",.02)
 ;;54868-1036-07
 ;;9002226.02101,"730,54868-1036-08 ",.01)
 ;;54868-1036-08
 ;;9002226.02101,"730,54868-1036-08 ",.02)
 ;;54868-1036-08
 ;;9002226.02101,"730,54868-1037-01 ",.01)
 ;;54868-1037-01
 ;;9002226.02101,"730,54868-1037-01 ",.02)
 ;;54868-1037-01
 ;;9002226.02101,"730,54868-1037-03 ",.01)
 ;;54868-1037-03
 ;;9002226.02101,"730,54868-1037-03 ",.02)
 ;;54868-1037-03
 ;;9002226.02101,"730,54868-1037-04 ",.01)
 ;;54868-1037-04
 ;;9002226.02101,"730,54868-1037-04 ",.02)
 ;;54868-1037-04
 ;;9002226.02101,"730,54868-1037-05 ",.01)
 ;;54868-1037-05
 ;;9002226.02101,"730,54868-1037-05 ",.02)
 ;;54868-1037-05
 ;;9002226.02101,"730,54868-1053-00 ",.01)
 ;;54868-1053-00
 ;;9002226.02101,"730,54868-1053-00 ",.02)
 ;;54868-1053-00
 ;;9002226.02101,"730,54868-1053-01 ",.01)
 ;;54868-1053-01
 ;;9002226.02101,"730,54868-1053-01 ",.02)
 ;;54868-1053-01
 ;;9002226.02101,"730,54868-1053-02 ",.01)
 ;;54868-1053-02
 ;;9002226.02101,"730,54868-1053-02 ",.02)
 ;;54868-1053-02
 ;;9002226.02101,"730,54868-1053-04 ",.01)
 ;;54868-1053-04
 ;;9002226.02101,"730,54868-1053-04 ",.02)
 ;;54868-1053-04
 ;;9002226.02101,"730,54868-1053-05 ",.01)
 ;;54868-1053-05
 ;;9002226.02101,"730,54868-1053-05 ",.02)
 ;;54868-1053-05
 ;;9002226.02101,"730,54868-1075-00 ",.01)
 ;;54868-1075-00
 ;;9002226.02101,"730,54868-1075-00 ",.02)
 ;;54868-1075-00
 ;;9002226.02101,"730,54868-1075-01 ",.01)
 ;;54868-1075-01
 ;;9002226.02101,"730,54868-1075-01 ",.02)
 ;;54868-1075-01
 ;;9002226.02101,"730,54868-1075-02 ",.01)
 ;;54868-1075-02
 ;;9002226.02101,"730,54868-1075-02 ",.02)
 ;;54868-1075-02
 ;;9002226.02101,"730,54868-1075-03 ",.01)
 ;;54868-1075-03
 ;;9002226.02101,"730,54868-1075-03 ",.02)
 ;;54868-1075-03
 ;;9002226.02101,"730,54868-1075-04 ",.01)
 ;;54868-1075-04
 ;;9002226.02101,"730,54868-1075-04 ",.02)
 ;;54868-1075-04
 ;;9002226.02101,"730,54868-1109-00 ",.01)
 ;;54868-1109-00
 ;;9002226.02101,"730,54868-1109-00 ",.02)
 ;;54868-1109-00
 ;;9002226.02101,"730,54868-1219-01 ",.01)
 ;;54868-1219-01
 ;;9002226.02101,"730,54868-1219-01 ",.02)
 ;;54868-1219-01
 ;;9002226.02101,"730,54868-1219-02 ",.01)
 ;;54868-1219-02
 ;;9002226.02101,"730,54868-1219-02 ",.02)
 ;;54868-1219-02
 ;;9002226.02101,"730,54868-1219-03 ",.01)
 ;;54868-1219-03
 ;;9002226.02101,"730,54868-1219-03 ",.02)
 ;;54868-1219-03
 ;;9002226.02101,"730,54868-1219-04 ",.01)
 ;;54868-1219-04
 ;;9002226.02101,"730,54868-1219-04 ",.02)
 ;;54868-1219-04
 ;;9002226.02101,"730,54868-1237-01 ",.01)
 ;;54868-1237-01
 ;;9002226.02101,"730,54868-1237-01 ",.02)
 ;;54868-1237-01
 ;;9002226.02101,"730,54868-1254-00 ",.01)
 ;;54868-1254-00
 ;;9002226.02101,"730,54868-1254-00 ",.02)
 ;;54868-1254-00
 ;;9002226.02101,"730,54868-1344-00 ",.01)
 ;;54868-1344-00
 ;;9002226.02101,"730,54868-1344-00 ",.02)
 ;;54868-1344-00
 ;;9002226.02101,"730,54868-1344-02 ",.01)
 ;;54868-1344-02
 ;;9002226.02101,"730,54868-1344-02 ",.02)
 ;;54868-1344-02
 ;;9002226.02101,"730,54868-1344-03 ",.01)
 ;;54868-1344-03
 ;;9002226.02101,"730,54868-1344-03 ",.02)
 ;;54868-1344-03
 ;;9002226.02101,"730,54868-1344-04 ",.01)
 ;;54868-1344-04
 ;;9002226.02101,"730,54868-1344-04 ",.02)
 ;;54868-1344-04
 ;;9002226.02101,"730,54868-1447-00 ",.01)
 ;;54868-1447-00