BGP53J36 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"798,54868-4159-02 ",.01)
 ;;54868-4159-02
 ;;9002226.02101,"798,54868-4159-02 ",.02)
 ;;54868-4159-02
 ;;9002226.02101,"798,54868-4159-03 ",.01)
 ;;54868-4159-03
 ;;9002226.02101,"798,54868-4159-03 ",.02)
 ;;54868-4159-03
 ;;9002226.02101,"798,54868-4159-04 ",.01)
 ;;54868-4159-04
 ;;9002226.02101,"798,54868-4159-04 ",.02)
 ;;54868-4159-04
 ;;9002226.02101,"798,54868-4226-00 ",.01)
 ;;54868-4226-00
 ;;9002226.02101,"798,54868-4226-00 ",.02)
 ;;54868-4226-00
 ;;9002226.02101,"798,54868-4226-01 ",.01)
 ;;54868-4226-01
 ;;9002226.02101,"798,54868-4226-01 ",.02)
 ;;54868-4226-01
 ;;9002226.02101,"798,54868-4252-00 ",.01)
 ;;54868-4252-00
 ;;9002226.02101,"798,54868-4252-00 ",.02)
 ;;54868-4252-00
 ;;9002226.02101,"798,54868-4252-01 ",.01)
 ;;54868-4252-01
 ;;9002226.02101,"798,54868-4252-01 ",.02)
 ;;54868-4252-01
 ;;9002226.02101,"798,54868-4252-02 ",.01)
 ;;54868-4252-02
 ;;9002226.02101,"798,54868-4252-02 ",.02)
 ;;54868-4252-02
 ;;9002226.02101,"798,54868-4252-03 ",.01)
 ;;54868-4252-03
 ;;9002226.02101,"798,54868-4252-03 ",.02)
 ;;54868-4252-03
 ;;9002226.02101,"798,54868-4252-04 ",.01)
 ;;54868-4252-04
 ;;9002226.02101,"798,54868-4252-04 ",.02)
 ;;54868-4252-04
 ;;9002226.02101,"798,54868-4253-00 ",.01)
 ;;54868-4253-00
 ;;9002226.02101,"798,54868-4253-00 ",.02)
 ;;54868-4253-00
 ;;9002226.02101,"798,54868-4253-01 ",.01)
 ;;54868-4253-01
 ;;9002226.02101,"798,54868-4253-01 ",.02)
 ;;54868-4253-01
 ;;9002226.02101,"798,54868-4253-02 ",.01)
 ;;54868-4253-02
 ;;9002226.02101,"798,54868-4253-02 ",.02)
 ;;54868-4253-02
 ;;9002226.02101,"798,54868-4253-03 ",.01)
 ;;54868-4253-03
 ;;9002226.02101,"798,54868-4253-03 ",.02)
 ;;54868-4253-03
 ;;9002226.02101,"798,54868-4372-00 ",.01)
 ;;54868-4372-00
 ;;9002226.02101,"798,54868-4372-00 ",.02)
 ;;54868-4372-00
 ;;9002226.02101,"798,54868-4372-01 ",.01)
 ;;54868-4372-01
 ;;9002226.02101,"798,54868-4372-01 ",.02)
 ;;54868-4372-01
 ;;9002226.02101,"798,54868-4372-02 ",.01)
 ;;54868-4372-02
 ;;9002226.02101,"798,54868-4372-02 ",.02)
 ;;54868-4372-02
 ;;9002226.02101,"798,54868-4394-00 ",.01)
 ;;54868-4394-00
 ;;9002226.02101,"798,54868-4394-00 ",.02)
 ;;54868-4394-00
 ;;9002226.02101,"798,54868-4504-00 ",.01)
 ;;54868-4504-00
 ;;9002226.02101,"798,54868-4504-00 ",.02)
 ;;54868-4504-00
 ;;9002226.02101,"798,54868-4504-01 ",.01)
 ;;54868-4504-01
 ;;9002226.02101,"798,54868-4504-01 ",.02)
 ;;54868-4504-01
 ;;9002226.02101,"798,54868-4537-00 ",.01)
 ;;54868-4537-00
 ;;9002226.02101,"798,54868-4537-00 ",.02)
 ;;54868-4537-00
 ;;9002226.02101,"798,54868-4537-01 ",.01)
 ;;54868-4537-01
 ;;9002226.02101,"798,54868-4537-01 ",.02)
 ;;54868-4537-01
 ;;9002226.02101,"798,54868-4537-02 ",.01)
 ;;54868-4537-02
 ;;9002226.02101,"798,54868-4537-02 ",.02)
 ;;54868-4537-02
 ;;9002226.02101,"798,54868-4537-03 ",.01)
 ;;54868-4537-03
 ;;9002226.02101,"798,54868-4537-03 ",.02)
 ;;54868-4537-03
 ;;9002226.02101,"798,54868-4550-00 ",.01)
 ;;54868-4550-00
 ;;9002226.02101,"798,54868-4550-00 ",.02)
 ;;54868-4550-00
 ;;9002226.02101,"798,54868-4550-01 ",.01)
 ;;54868-4550-01
 ;;9002226.02101,"798,54868-4550-01 ",.02)
 ;;54868-4550-01
 ;;9002226.02101,"798,54868-4550-02 ",.01)
 ;;54868-4550-02
 ;;9002226.02101,"798,54868-4550-02 ",.02)
 ;;54868-4550-02
 ;;9002226.02101,"798,54868-4560-00 ",.01)
 ;;54868-4560-00
 ;;9002226.02101,"798,54868-4560-00 ",.02)
 ;;54868-4560-00
 ;;9002226.02101,"798,54868-4560-01 ",.01)
 ;;54868-4560-01
 ;;9002226.02101,"798,54868-4560-01 ",.02)
 ;;54868-4560-01
 ;;9002226.02101,"798,54868-4562-00 ",.01)
 ;;54868-4562-00
 ;;9002226.02101,"798,54868-4562-00 ",.02)
 ;;54868-4562-00
 ;;9002226.02101,"798,54868-4700-00 ",.01)
 ;;54868-4700-00
 ;;9002226.02101,"798,54868-4700-00 ",.02)
 ;;54868-4700-00
 ;;9002226.02101,"798,54868-4700-01 ",.01)
 ;;54868-4700-01
 ;;9002226.02101,"798,54868-4700-01 ",.02)
 ;;54868-4700-01
 ;;9002226.02101,"798,54868-4700-02 ",.01)
 ;;54868-4700-02
 ;;9002226.02101,"798,54868-4700-02 ",.02)
 ;;54868-4700-02
 ;;9002226.02101,"798,54868-4700-03 ",.01)
 ;;54868-4700-03
 ;;9002226.02101,"798,54868-4700-03 ",.02)
 ;;54868-4700-03
 ;;9002226.02101,"798,54868-4700-04 ",.01)
 ;;54868-4700-04
 ;;9002226.02101,"798,54868-4700-04 ",.02)
 ;;54868-4700-04
 ;;9002226.02101,"798,54868-4700-05 ",.01)
 ;;54868-4700-05
 ;;9002226.02101,"798,54868-4700-05 ",.02)
 ;;54868-4700-05
 ;;9002226.02101,"798,54868-4700-06 ",.01)
 ;;54868-4700-06
 ;;9002226.02101,"798,54868-4700-06 ",.02)
 ;;54868-4700-06
 ;;9002226.02101,"798,54868-4775-00 ",.01)
 ;;54868-4775-00
 ;;9002226.02101,"798,54868-4775-00 ",.02)
 ;;54868-4775-00
 ;;9002226.02101,"798,54868-4775-01 ",.01)
 ;;54868-4775-01
 ;;9002226.02101,"798,54868-4775-01 ",.02)
 ;;54868-4775-01
 ;;9002226.02101,"798,54868-4775-02 ",.01)
 ;;54868-4775-02
 ;;9002226.02101,"798,54868-4775-02 ",.02)
 ;;54868-4775-02
 ;;9002226.02101,"798,54868-4775-03 ",.01)
 ;;54868-4775-03
 ;;9002226.02101,"798,54868-4775-03 ",.02)
 ;;54868-4775-03
 ;;9002226.02101,"798,54868-4791-00 ",.01)
 ;;54868-4791-00
 ;;9002226.02101,"798,54868-4791-00 ",.02)
 ;;54868-4791-00
 ;;9002226.02101,"798,54868-4817-00 ",.01)
 ;;54868-4817-00
 ;;9002226.02101,"798,54868-4817-00 ",.02)
 ;;54868-4817-00
 ;;9002226.02101,"798,54868-4817-01 ",.01)
 ;;54868-4817-01
 ;;9002226.02101,"798,54868-4817-01 ",.02)
 ;;54868-4817-01
 ;;9002226.02101,"798,54868-4848-00 ",.01)
 ;;54868-4848-00
 ;;9002226.02101,"798,54868-4848-00 ",.02)
 ;;54868-4848-00
 ;;9002226.02101,"798,54868-4892-00 ",.01)
 ;;54868-4892-00
 ;;9002226.02101,"798,54868-4892-00 ",.02)
 ;;54868-4892-00
 ;;9002226.02101,"798,54868-4892-01 ",.01)
 ;;54868-4892-01
 ;;9002226.02101,"798,54868-4892-01 ",.02)
 ;;54868-4892-01
 ;;9002226.02101,"798,54868-4935-00 ",.01)
 ;;54868-4935-00
 ;;9002226.02101,"798,54868-4935-00 ",.02)
 ;;54868-4935-00
 ;;9002226.02101,"798,54868-4937-00 ",.01)
 ;;54868-4937-00
 ;;9002226.02101,"798,54868-4937-00 ",.02)
 ;;54868-4937-00
 ;;9002226.02101,"798,54868-4937-01 ",.01)
 ;;54868-4937-01
 ;;9002226.02101,"798,54868-4937-01 ",.02)
 ;;54868-4937-01
 ;;9002226.02101,"798,54868-4937-02 ",.01)
 ;;54868-4937-02
 ;;9002226.02101,"798,54868-4937-02 ",.02)
 ;;54868-4937-02
 ;;9002226.02101,"798,54868-4937-03 ",.01)
 ;;54868-4937-03
 ;;9002226.02101,"798,54868-4937-03 ",.02)
 ;;54868-4937-03
 ;;9002226.02101,"798,54868-4938-00 ",.01)
 ;;54868-4938-00
 ;;9002226.02101,"798,54868-4938-00 ",.02)
 ;;54868-4938-00
 ;;9002226.02101,"798,54868-4985-00 ",.01)
 ;;54868-4985-00
 ;;9002226.02101,"798,54868-4985-00 ",.02)
 ;;54868-4985-00
 ;;9002226.02101,"798,54868-4985-01 ",.01)
 ;;54868-4985-01
 ;;9002226.02101,"798,54868-4985-01 ",.02)
 ;;54868-4985-01
 ;;9002226.02101,"798,54868-5080-00 ",.01)
 ;;54868-5080-00
 ;;9002226.02101,"798,54868-5080-00 ",.02)
 ;;54868-5080-00
 ;;9002226.02101,"798,54868-5178-00 ",.01)
 ;;54868-5178-00
 ;;9002226.02101,"798,54868-5178-00 ",.02)
 ;;54868-5178-00
 ;;9002226.02101,"798,54868-5178-01 ",.01)
 ;;54868-5178-01
 ;;9002226.02101,"798,54868-5178-01 ",.02)
 ;;54868-5178-01
 ;;9002226.02101,"798,54868-5178-03 ",.01)
 ;;54868-5178-03
 ;;9002226.02101,"798,54868-5178-03 ",.02)
 ;;54868-5178-03
 ;;9002226.02101,"798,54868-5192-00 ",.01)
 ;;54868-5192-00
 ;;9002226.02101,"798,54868-5192-00 ",.02)
 ;;54868-5192-00
 ;;9002226.02101,"798,54868-5215-00 ",.01)
 ;;54868-5215-00
 ;;9002226.02101,"798,54868-5215-00 ",.02)
 ;;54868-5215-00
 ;;9002226.02101,"798,54868-5215-01 ",.01)
 ;;54868-5215-01
 ;;9002226.02101,"798,54868-5215-01 ",.02)
 ;;54868-5215-01
 ;;9002226.02101,"798,54868-5215-02 ",.01)
 ;;54868-5215-02
 ;;9002226.02101,"798,54868-5215-02 ",.02)
 ;;54868-5215-02
 ;;9002226.02101,"798,54868-5275-00 ",.01)
 ;;54868-5275-00
 ;;9002226.02101,"798,54868-5275-00 ",.02)
 ;;54868-5275-00
 ;;9002226.02101,"798,54868-5275-02 ",.01)
 ;;54868-5275-02
 ;;9002226.02101,"798,54868-5275-02 ",.02)
 ;;54868-5275-02
 ;;9002226.02101,"798,54868-5315-00 ",.01)
 ;;54868-5315-00
 ;;9002226.02101,"798,54868-5315-00 ",.02)
 ;;54868-5315-00
 ;;9002226.02101,"798,54868-5347-00 ",.01)
 ;;54868-5347-00
 ;;9002226.02101,"798,54868-5347-00 ",.02)
 ;;54868-5347-00
 ;;9002226.02101,"798,54868-5365-00 ",.01)
 ;;54868-5365-00
 ;;9002226.02101,"798,54868-5365-00 ",.02)
 ;;54868-5365-00
 ;;9002226.02101,"798,54868-5448-00 ",.01)
 ;;54868-5448-00
 ;;9002226.02101,"798,54868-5448-00 ",.02)
 ;;54868-5448-00
 ;;9002226.02101,"798,54868-5562-00 ",.01)
 ;;54868-5562-00
 ;;9002226.02101,"798,54868-5562-00 ",.02)
 ;;54868-5562-00
 ;;9002226.02101,"798,54868-5638-00 ",.01)
 ;;54868-5638-00
 ;;9002226.02101,"798,54868-5638-00 ",.02)
 ;;54868-5638-00
 ;;9002226.02101,"798,54868-5638-01 ",.01)
 ;;54868-5638-01
 ;;9002226.02101,"798,54868-5638-01 ",.02)
 ;;54868-5638-01
 ;;9002226.02101,"798,54868-5638-02 ",.01)
 ;;54868-5638-02
 ;;9002226.02101,"798,54868-5638-02 ",.02)
 ;;54868-5638-02
 ;;9002226.02101,"798,54868-5638-03 ",.01)
 ;;54868-5638-03
 ;;9002226.02101,"798,54868-5638-03 ",.02)
 ;;54868-5638-03
 ;;9002226.02101,"798,54868-5638-04 ",.01)
 ;;54868-5638-04
 ;;9002226.02101,"798,54868-5638-04 ",.02)
 ;;54868-5638-04
 ;;9002226.02101,"798,54868-5638-05 ",.01)
 ;;54868-5638-05
 ;;9002226.02101,"798,54868-5638-05 ",.02)
 ;;54868-5638-05
 ;;9002226.02101,"798,54868-5638-06 ",.01)
 ;;54868-5638-06
 ;;9002226.02101,"798,54868-5638-06 ",.02)
 ;;54868-5638-06
 ;;9002226.02101,"798,54868-5639-00 ",.01)
 ;;54868-5639-00
 ;;9002226.02101,"798,54868-5639-00 ",.02)
 ;;54868-5639-00
 ;;9002226.02101,"798,54868-5639-01 ",.01)
 ;;54868-5639-01
 ;;9002226.02101,"798,54868-5639-01 ",.02)
 ;;54868-5639-01
 ;;9002226.02101,"798,54868-5639-02 ",.01)
 ;;54868-5639-02
 ;;9002226.02101,"798,54868-5639-02 ",.02)
 ;;54868-5639-02
 ;;9002226.02101,"798,54868-5639-03 ",.01)
 ;;54868-5639-03
 ;;9002226.02101,"798,54868-5639-03 ",.02)
 ;;54868-5639-03
 ;;9002226.02101,"798,54868-5658-00 ",.01)
 ;;54868-5658-00
 ;;9002226.02101,"798,54868-5658-00 ",.02)
 ;;54868-5658-00
 ;;9002226.02101,"798,54868-5663-00 ",.01)
 ;;54868-5663-00
 ;;9002226.02101,"798,54868-5663-00 ",.02)
 ;;54868-5663-00
 ;;9002226.02101,"798,54868-5663-01 ",.01)
 ;;54868-5663-01
 ;;9002226.02101,"798,54868-5663-01 ",.02)
 ;;54868-5663-01
 ;;9002226.02101,"798,54868-5663-02 ",.01)
 ;;54868-5663-02
 ;;9002226.02101,"798,54868-5663-02 ",.02)
 ;;54868-5663-02
 ;;9002226.02101,"798,54868-5736-00 ",.01)
 ;;54868-5736-00
 ;;9002226.02101,"798,54868-5736-00 ",.02)
 ;;54868-5736-00
 ;;9002226.02101,"798,54868-5736-01 ",.01)
 ;;54868-5736-01
 ;;9002226.02101,"798,54868-5736-01 ",.02)
 ;;54868-5736-01
 ;;9002226.02101,"798,54868-5754-00 ",.01)
 ;;54868-5754-00
 ;;9002226.02101,"798,54868-5754-00 ",.02)
 ;;54868-5754-00
 ;;9002226.02101,"798,54868-5754-01 ",.01)
 ;;54868-5754-01
 ;;9002226.02101,"798,54868-5754-01 ",.02)
 ;;54868-5754-01
 ;;9002226.02101,"798,54868-5754-02 ",.01)
 ;;54868-5754-02
 ;;9002226.02101,"798,54868-5754-02 ",.02)
 ;;54868-5754-02
 ;;9002226.02101,"798,54868-5812-00 ",.01)
 ;;54868-5812-00
 ;;9002226.02101,"798,54868-5812-00 ",.02)
 ;;54868-5812-00
 ;;9002226.02101,"798,54868-5927-00 ",.01)
 ;;54868-5927-00
 ;;9002226.02101,"798,54868-5927-00 ",.02)
 ;;54868-5927-00
 ;;9002226.02101,"798,54868-5951-00 ",.01)
 ;;54868-5951-00
 ;;9002226.02101,"798,54868-5951-00 ",.02)
 ;;54868-5951-00
 ;;9002226.02101,"798,55045-1463-00 ",.01)
 ;;55045-1463-00
 ;;9002226.02101,"798,55045-1463-00 ",.02)
 ;;55045-1463-00
 ;;9002226.02101,"798,55045-1463-01 ",.01)
 ;;55045-1463-01
 ;;9002226.02101,"798,55045-1463-01 ",.02)
 ;;55045-1463-01
 ;;9002226.02101,"798,55045-1463-02 ",.01)
 ;;55045-1463-02
 ;;9002226.02101,"798,55045-1463-02 ",.02)
 ;;55045-1463-02
 ;;9002226.02101,"798,55045-1463-03 ",.01)
 ;;55045-1463-03
 ;;9002226.02101,"798,55045-1463-03 ",.02)
 ;;55045-1463-03
 ;;9002226.02101,"798,55045-1463-04 ",.01)
 ;;55045-1463-04
 ;;9002226.02101,"798,55045-1463-04 ",.02)
 ;;55045-1463-04
 ;;9002226.02101,"798,55045-1463-06 ",.01)
 ;;55045-1463-06
 ;;9002226.02101,"798,55045-1463-06 ",.02)
 ;;55045-1463-06
 ;;9002226.02101,"798,55045-1463-07 ",.01)
 ;;55045-1463-07
 ;;9002226.02101,"798,55045-1463-07 ",.02)
 ;;55045-1463-07
 ;;9002226.02101,"798,55045-1463-08 ",.01)
 ;;55045-1463-08
 ;;9002226.02101,"798,55045-1463-08 ",.02)
 ;;55045-1463-08
 ;;9002226.02101,"798,55045-1463-09 ",.01)
 ;;55045-1463-09
 ;;9002226.02101,"798,55045-1463-09 ",.02)
 ;;55045-1463-09
 ;;9002226.02101,"798,55045-1592-00 ",.01)
 ;;55045-1592-00
 ;;9002226.02101,"798,55045-1592-00 ",.02)
 ;;55045-1592-00
 ;;9002226.02101,"798,55045-1592-01 ",.01)
 ;;55045-1592-01
 ;;9002226.02101,"798,55045-1592-01 ",.02)
 ;;55045-1592-01
 ;;9002226.02101,"798,55045-1592-05 ",.01)
 ;;55045-1592-05
 ;;9002226.02101,"798,55045-1592-05 ",.02)
 ;;55045-1592-05
 ;;9002226.02101,"798,55045-1592-06 ",.01)
 ;;55045-1592-06
 ;;9002226.02101,"798,55045-1592-06 ",.02)
 ;;55045-1592-06
 ;;9002226.02101,"798,55045-1592-08 ",.01)
 ;;55045-1592-08
 ;;9002226.02101,"798,55045-1592-08 ",.02)
 ;;55045-1592-08
 ;;9002226.02101,"798,55045-1592-09 ",.01)
 ;;55045-1592-09
 ;;9002226.02101,"798,55045-1592-09 ",.02)
 ;;55045-1592-09
 ;;9002226.02101,"798,55045-1682-00 ",.01)
 ;;55045-1682-00
 ;;9002226.02101,"798,55045-1682-00 ",.02)
 ;;55045-1682-00
 ;;9002226.02101,"798,55045-1682-01 ",.01)
 ;;55045-1682-01
 ;;9002226.02101,"798,55045-1682-01 ",.02)
 ;;55045-1682-01
 ;;9002226.02101,"798,55045-1682-02 ",.01)
 ;;55045-1682-02
 ;;9002226.02101,"798,55045-1682-02 ",.02)
 ;;55045-1682-02