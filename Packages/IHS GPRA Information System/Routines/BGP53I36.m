BGP53I36 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"734,23490-6448-06 ",.02)
 ;;23490-6448-06
 ;;9002226.02101,"734,23490-6448-07 ",.01)
 ;;23490-6448-07
 ;;9002226.02101,"734,23490-6448-07 ",.02)
 ;;23490-6448-07
 ;;9002226.02101,"734,23490-6448-08 ",.01)
 ;;23490-6448-08
 ;;9002226.02101,"734,23490-6448-08 ",.02)
 ;;23490-6448-08
 ;;9002226.02101,"734,23490-6448-09 ",.01)
 ;;23490-6448-09
 ;;9002226.02101,"734,23490-6448-09 ",.02)
 ;;23490-6448-09
 ;;9002226.02101,"734,23490-6449-01 ",.01)
 ;;23490-6449-01
 ;;9002226.02101,"734,23490-6449-01 ",.02)
 ;;23490-6449-01
 ;;9002226.02101,"734,23490-6449-02 ",.01)
 ;;23490-6449-02
 ;;9002226.02101,"734,23490-6449-02 ",.02)
 ;;23490-6449-02
 ;;9002226.02101,"734,23490-6449-03 ",.01)
 ;;23490-6449-03
 ;;9002226.02101,"734,23490-6449-03 ",.02)
 ;;23490-6449-03
 ;;9002226.02101,"734,23490-6449-04 ",.01)
 ;;23490-6449-04
 ;;9002226.02101,"734,23490-6449-04 ",.02)
 ;;23490-6449-04
 ;;9002226.02101,"734,23490-6449-05 ",.01)
 ;;23490-6449-05
 ;;9002226.02101,"734,23490-6449-05 ",.02)
 ;;23490-6449-05
 ;;9002226.02101,"734,23490-6904-01 ",.01)
 ;;23490-6904-01
 ;;9002226.02101,"734,23490-6904-01 ",.02)
 ;;23490-6904-01
 ;;9002226.02101,"734,23490-6905-00 ",.01)
 ;;23490-6905-00
 ;;9002226.02101,"734,23490-6905-00 ",.02)
 ;;23490-6905-00
 ;;9002226.02101,"734,23490-6905-01 ",.01)
 ;;23490-6905-01
 ;;9002226.02101,"734,23490-6905-01 ",.02)
 ;;23490-6905-01
 ;;9002226.02101,"734,23490-6905-02 ",.01)
 ;;23490-6905-02
 ;;9002226.02101,"734,23490-6905-02 ",.02)
 ;;23490-6905-02
 ;;9002226.02101,"734,23490-6940-00 ",.01)
 ;;23490-6940-00
 ;;9002226.02101,"734,23490-6940-00 ",.02)
 ;;23490-6940-00
 ;;9002226.02101,"734,23490-6940-01 ",.01)
 ;;23490-6940-01
 ;;9002226.02101,"734,23490-6940-01 ",.02)
 ;;23490-6940-01
 ;;9002226.02101,"734,23490-6940-02 ",.01)
 ;;23490-6940-02
 ;;9002226.02101,"734,23490-6940-02 ",.02)
 ;;23490-6940-02
 ;;9002226.02101,"734,23490-6940-03 ",.01)
 ;;23490-6940-03
 ;;9002226.02101,"734,23490-6940-03 ",.02)
 ;;23490-6940-03
 ;;9002226.02101,"734,23490-6977-01 ",.01)
 ;;23490-6977-01
 ;;9002226.02101,"734,23490-6977-01 ",.02)
 ;;23490-6977-01
 ;;9002226.02101,"734,23490-6979-00 ",.01)
 ;;23490-6979-00
 ;;9002226.02101,"734,23490-6979-00 ",.02)
 ;;23490-6979-00
 ;;9002226.02101,"734,23490-6979-01 ",.01)
 ;;23490-6979-01
 ;;9002226.02101,"734,23490-6979-01 ",.02)
 ;;23490-6979-01
 ;;9002226.02101,"734,23490-7012-00 ",.01)
 ;;23490-7012-00
 ;;9002226.02101,"734,23490-7012-00 ",.02)
 ;;23490-7012-00
 ;;9002226.02101,"734,23490-7032-02 ",.01)
 ;;23490-7032-02
 ;;9002226.02101,"734,23490-7032-02 ",.02)
 ;;23490-7032-02
 ;;9002226.02101,"734,23490-7075-08 ",.01)
 ;;23490-7075-08
 ;;9002226.02101,"734,23490-7075-08 ",.02)
 ;;23490-7075-08
 ;;9002226.02101,"734,23490-7220-03 ",.01)
 ;;23490-7220-03
 ;;9002226.02101,"734,23490-7220-03 ",.02)
 ;;23490-7220-03
 ;;9002226.02101,"734,23490-7311-01 ",.01)
 ;;23490-7311-01
 ;;9002226.02101,"734,23490-7311-01 ",.02)
 ;;23490-7311-01
 ;;9002226.02101,"734,23490-7312-01 ",.01)
 ;;23490-7312-01
 ;;9002226.02101,"734,23490-7312-01 ",.02)
 ;;23490-7312-01
 ;;9002226.02101,"734,23490-7585-01 ",.01)
 ;;23490-7585-01
 ;;9002226.02101,"734,23490-7585-01 ",.02)
 ;;23490-7585-01
 ;;9002226.02101,"734,23490-7585-02 ",.01)
 ;;23490-7585-02
 ;;9002226.02101,"734,23490-7585-02 ",.02)
 ;;23490-7585-02
 ;;9002226.02101,"734,23490-7585-03 ",.01)
 ;;23490-7585-03
 ;;9002226.02101,"734,23490-7585-03 ",.02)
 ;;23490-7585-03
 ;;9002226.02101,"734,23490-7664-01 ",.01)
 ;;23490-7664-01
 ;;9002226.02101,"734,23490-7664-01 ",.02)
 ;;23490-7664-01
 ;;9002226.02101,"734,23490-7758-01 ",.01)
 ;;23490-7758-01
 ;;9002226.02101,"734,23490-7758-01 ",.02)
 ;;23490-7758-01
 ;;9002226.02101,"734,23490-7760-01 ",.01)
 ;;23490-7760-01
 ;;9002226.02101,"734,23490-7760-01 ",.02)
 ;;23490-7760-01
 ;;9002226.02101,"734,23490-7760-02 ",.01)
 ;;23490-7760-02
 ;;9002226.02101,"734,23490-7760-02 ",.02)
 ;;23490-7760-02
 ;;9002226.02101,"734,23490-7843-01 ",.01)
 ;;23490-7843-01
 ;;9002226.02101,"734,23490-7843-01 ",.02)
 ;;23490-7843-01
 ;;9002226.02101,"734,23490-7843-02 ",.01)
 ;;23490-7843-02
 ;;9002226.02101,"734,23490-7843-02 ",.02)
 ;;23490-7843-02
 ;;9002226.02101,"734,23490-7843-07 ",.01)
 ;;23490-7843-07
 ;;9002226.02101,"734,23490-7843-07 ",.02)
 ;;23490-7843-07
 ;;9002226.02101,"734,23490-7950-00 ",.01)
 ;;23490-7950-00
 ;;9002226.02101,"734,23490-7950-00 ",.02)
 ;;23490-7950-00
 ;;9002226.02101,"734,23490-7950-02 ",.01)
 ;;23490-7950-02
 ;;9002226.02101,"734,23490-7950-02 ",.02)
 ;;23490-7950-02
 ;;9002226.02101,"734,23490-7961-01 ",.01)
 ;;23490-7961-01
 ;;9002226.02101,"734,23490-7961-01 ",.02)
 ;;23490-7961-01
 ;;9002226.02101,"734,23490-7961-02 ",.01)
 ;;23490-7961-02
 ;;9002226.02101,"734,23490-7961-02 ",.02)
 ;;23490-7961-02
 ;;9002226.02101,"734,23490-7961-03 ",.01)
 ;;23490-7961-03
 ;;9002226.02101,"734,23490-7961-03 ",.02)
 ;;23490-7961-03
 ;;9002226.02101,"734,23490-9260-00 ",.01)
 ;;23490-9260-00
 ;;9002226.02101,"734,23490-9260-00 ",.02)
 ;;23490-9260-00
 ;;9002226.02101,"734,23490-9260-01 ",.01)
 ;;23490-9260-01
 ;;9002226.02101,"734,23490-9260-01 ",.02)
 ;;23490-9260-01
 ;;9002226.02101,"734,23490-9260-03 ",.01)
 ;;23490-9260-03
 ;;9002226.02101,"734,23490-9260-03 ",.02)
 ;;23490-9260-03
 ;;9002226.02101,"734,23490-9260-05 ",.01)
 ;;23490-9260-05
 ;;9002226.02101,"734,23490-9260-05 ",.02)
 ;;23490-9260-05
 ;;9002226.02101,"734,23490-9367-01 ",.01)
 ;;23490-9367-01
 ;;9002226.02101,"734,23490-9367-01 ",.02)
 ;;23490-9367-01
 ;;9002226.02101,"734,23490-9367-02 ",.01)
 ;;23490-9367-02
 ;;9002226.02101,"734,23490-9367-02 ",.02)
 ;;23490-9367-02
 ;;9002226.02101,"734,24200-0602-04 ",.01)
 ;;24200-0602-04
 ;;9002226.02101,"734,24200-0602-04 ",.02)
 ;;24200-0602-04
 ;;9002226.02101,"734,24200-0603-69 ",.01)
 ;;24200-0603-69
 ;;9002226.02101,"734,24200-0603-69 ",.02)
 ;;24200-0603-69
 ;;9002226.02101,"734,24200-0604-04 ",.01)
 ;;24200-0604-04
 ;;9002226.02101,"734,24200-0604-04 ",.02)
 ;;24200-0604-04
 ;;9002226.02101,"734,24200-0605-50 ",.01)
 ;;24200-0605-50
 ;;9002226.02101,"734,24200-0605-50 ",.02)
 ;;24200-0605-50
 ;;9002226.02101,"734,24200-0605-60 ",.01)
 ;;24200-0605-60
 ;;9002226.02101,"734,24200-0605-60 ",.02)
 ;;24200-0605-60
 ;;9002226.02101,"734,24200-0630-03 ",.01)
 ;;24200-0630-03
 ;;9002226.02101,"734,24200-0630-03 ",.02)
 ;;24200-0630-03
 ;;9002226.02101,"734,24200-0631-03 ",.01)
 ;;24200-0631-03
 ;;9002226.02101,"734,24200-0631-03 ",.02)
 ;;24200-0631-03
 ;;9002226.02101,"734,24338-0100-13 ",.01)
 ;;24338-0100-13
 ;;9002226.02101,"734,24338-0100-13 ",.02)
 ;;24338-0100-13
 ;;9002226.02101,"734,24338-0102-13 ",.01)
 ;;24338-0102-13
 ;;9002226.02101,"734,24338-0102-13 ",.02)
 ;;24338-0102-13
 ;;9002226.02101,"734,24338-0104-13 ",.01)
 ;;24338-0104-13
 ;;9002226.02101,"734,24338-0104-13 ",.02)
 ;;24338-0104-13
 ;;9002226.02101,"734,24338-0106-20 ",.01)
 ;;24338-0106-20
 ;;9002226.02101,"734,24338-0106-20 ",.02)
 ;;24338-0106-20
 ;;9002226.02101,"734,24338-0110-13 ",.01)
 ;;24338-0110-13
 ;;9002226.02101,"734,24338-0110-13 ",.02)
 ;;24338-0110-13
 ;;9002226.02101,"734,24338-0112-60 ",.01)
 ;;24338-0112-60
 ;;9002226.02101,"734,24338-0112-60 ",.02)
 ;;24338-0112-60
 ;;9002226.02101,"734,24338-0114-13 ",.01)
 ;;24338-0114-13
 ;;9002226.02101,"734,24338-0114-13 ",.02)
 ;;24338-0114-13
 ;;9002226.02101,"734,24338-0120-13 ",.01)
 ;;24338-0120-13
 ;;9002226.02101,"734,24338-0120-13 ",.02)
 ;;24338-0120-13
 ;;9002226.02101,"734,24338-0122-13 ",.01)
 ;;24338-0122-13
 ;;9002226.02101,"734,24338-0122-13 ",.02)
 ;;24338-0122-13
 ;;9002226.02101,"734,24338-0124-13 ",.01)
 ;;24338-0124-13
 ;;9002226.02101,"734,24338-0124-13 ",.02)
 ;;24338-0124-13
 ;;9002226.02101,"734,24338-0126-13 ",.01)
 ;;24338-0126-13
 ;;9002226.02101,"734,24338-0126-13 ",.02)
 ;;24338-0126-13
 ;;9002226.02101,"734,24338-0130-13 ",.01)
 ;;24338-0130-13
 ;;9002226.02101,"734,24338-0130-13 ",.02)
 ;;24338-0130-13
 ;;9002226.02101,"734,24338-0132-13 ",.01)
 ;;24338-0132-13
 ;;9002226.02101,"734,24338-0132-13 ",.02)
 ;;24338-0132-13
 ;;9002226.02101,"734,24338-0134-02 ",.01)
 ;;24338-0134-02
 ;;9002226.02101,"734,24338-0134-02 ",.02)
 ;;24338-0134-02
 ;;9002226.02101,"734,24338-0136-10 ",.01)
 ;;24338-0136-10
 ;;9002226.02101,"734,24338-0136-10 ",.02)
 ;;24338-0136-10
 ;;9002226.02101,"734,24486-0801-20 ",.01)
 ;;24486-0801-20
 ;;9002226.02101,"734,24486-0801-20 ",.02)
 ;;24486-0801-20
 ;;9002226.02101,"734,24486-0802-20 ",.01)
 ;;24486-0802-20
 ;;9002226.02101,"734,24486-0802-20 ",.02)
 ;;24486-0802-20
 ;;9002226.02101,"734,24658-0220-05 ",.01)
 ;;24658-0220-05
 ;;9002226.02101,"734,24658-0220-05 ",.02)
 ;;24658-0220-05
 ;;9002226.02101,"734,24658-0220-20 ",.01)
 ;;24658-0220-20
 ;;9002226.02101,"734,24658-0220-20 ",.02)
 ;;24658-0220-20
 ;;9002226.02101,"734,24658-0225-20 ",.01)
 ;;24658-0225-20
 ;;9002226.02101,"734,24658-0225-20 ",.02)
 ;;24658-0225-20
 ;;9002226.02101,"734,24658-0250-01 ",.01)
 ;;24658-0250-01
 ;;9002226.02101,"734,24658-0250-01 ",.02)
 ;;24658-0250-01
 ;;9002226.02101,"734,24658-0250-05 ",.01)
 ;;24658-0250-05
 ;;9002226.02101,"734,24658-0250-05 ",.02)
 ;;24658-0250-05
 ;;9002226.02101,"734,24658-0250-11 ",.01)
 ;;24658-0250-11
 ;;9002226.02101,"734,24658-0250-11 ",.02)
 ;;24658-0250-11
 ;;9002226.02101,"734,24658-0250-20 ",.01)
 ;;24658-0250-20
 ;;9002226.02101,"734,24658-0250-20 ",.02)
 ;;24658-0250-20
 ;;9002226.02101,"734,24658-0250-60 ",.01)
 ;;24658-0250-60
 ;;9002226.02101,"734,24658-0250-60 ",.02)
 ;;24658-0250-60
 ;;9002226.02101,"734,24658-0312-01 ",.01)
 ;;24658-0312-01
 ;;9002226.02101,"734,24658-0312-01 ",.02)
 ;;24658-0312-01
 ;;9002226.02101,"734,24658-0312-05 ",.01)
 ;;24658-0312-05
 ;;9002226.02101,"734,24658-0312-05 ",.02)
 ;;24658-0312-05
 ;;9002226.02101,"734,24658-0312-20 ",.01)
 ;;24658-0312-20
 ;;9002226.02101,"734,24658-0312-20 ",.02)
 ;;24658-0312-20
 ;;9002226.02101,"734,24987-0352-10 ",.01)
 ;;24987-0352-10
 ;;9002226.02101,"734,24987-0352-10 ",.02)
 ;;24987-0352-10
 ;;9002226.02101,"734,24987-0352-20 ",.01)
 ;;24987-0352-20
 ;;9002226.02101,"734,24987-0352-20 ",.02)
 ;;24987-0352-20
 ;;9002226.02101,"734,24987-0352-30 ",.01)
 ;;24987-0352-30
 ;;9002226.02101,"734,24987-0352-30 ",.02)
 ;;24987-0352-30
 ;;9002226.02101,"734,24987-0354-10 ",.01)
 ;;24987-0354-10
 ;;9002226.02101,"734,24987-0354-10 ",.02)
 ;;24987-0354-10
 ;;9002226.02101,"734,24987-0354-20 ",.01)
 ;;24987-0354-20
 ;;9002226.02101,"734,24987-0354-20 ",.02)
 ;;24987-0354-20
 ;;9002226.02101,"734,24987-0354-30 ",.01)
 ;;24987-0354-30
 ;;9002226.02101,"734,24987-0354-30 ",.02)
 ;;24987-0354-30
 ;;9002226.02101,"734,24987-0400-00 ",.01)
 ;;24987-0400-00
 ;;9002226.02101,"734,24987-0400-00 ",.02)
 ;;24987-0400-00
 ;;9002226.02101,"734,24987-0425-00 ",.01)
 ;;24987-0425-00
 ;;9002226.02101,"734,24987-0425-00 ",.02)
 ;;24987-0425-00
 ;;9002226.02101,"734,24987-0436-00 ",.01)
 ;;24987-0436-00
 ;;9002226.02101,"734,24987-0436-00 ",.02)
 ;;24987-0436-00
 ;;9002226.02101,"734,24987-0437-00 ",.01)
 ;;24987-0437-00
 ;;9002226.02101,"734,24987-0437-00 ",.02)
 ;;24987-0437-00
 ;;9002226.02101,"734,25020-1115-06 ",.01)
 ;;25020-1115-06
 ;;9002226.02101,"734,25020-1115-06 ",.02)
 ;;25020-1115-06
 ;;9002226.02101,"734,25021-0013-99 ",.01)
 ;;25021-0013-99
 ;;9002226.02101,"734,25021-0013-99 ",.02)
 ;;25021-0013-99
 ;;9002226.02101,"734,25021-0100-10 ",.01)
 ;;25021-0100-10
 ;;9002226.02101,"734,25021-0100-10 ",.02)
 ;;25021-0100-10
 ;;9002226.02101,"734,25021-0101-10 ",.01)
 ;;25021-0101-10
 ;;9002226.02101,"734,25021-0101-10 ",.02)
 ;;25021-0101-10
 ;;9002226.02101,"734,25021-0102-99 ",.01)
 ;;25021-0102-99
 ;;9002226.02101,"734,25021-0102-99 ",.02)
 ;;25021-0102-99
 ;;9002226.02101,"734,25021-0103-99 ",.01)
 ;;25021-0103-99
 ;;9002226.02101,"734,25021-0103-99 ",.02)
 ;;25021-0103-99
 ;;9002226.02101,"734,25021-0104-10 ",.01)
 ;;25021-0104-10
 ;;9002226.02101,"734,25021-0104-10 ",.02)
 ;;25021-0104-10
 ;;9002226.02101,"734,25021-0105-10 ",.01)
 ;;25021-0105-10
 ;;9002226.02101,"734,25021-0105-10 ",.02)
 ;;25021-0105-10
 ;;9002226.02101,"734,25021-0106-10 ",.01)
 ;;25021-0106-10
 ;;9002226.02101,"734,25021-0106-10 ",.02)
 ;;25021-0106-10
 ;;9002226.02101,"734,25021-0107-20 ",.01)
 ;;25021-0107-20
 ;;9002226.02101,"734,25021-0107-20 ",.02)
 ;;25021-0107-20
 ;;9002226.02101,"734,25021-0108-99 ",.01)
 ;;25021-0108-99
 ;;9002226.02101,"734,25021-0108-99 ",.02)
 ;;25021-0108-99
 ;;9002226.02101,"734,25021-0112-10 ",.01)
 ;;25021-0112-10
 ;;9002226.02101,"734,25021-0112-10 ",.02)
 ;;25021-0112-10
 ;;9002226.02101,"734,25021-0114-82 ",.01)
 ;;25021-0114-82
 ;;9002226.02101,"734,25021-0114-82 ",.02)
 ;;25021-0114-82
 ;;9002226.02101,"734,25021-0114-87 ",.01)
 ;;25021-0114-87
 ;;9002226.02101,"734,25021-0114-87 ",.02)
 ;;25021-0114-87
 ;;9002226.02101,"734,25021-0115-02 ",.01)
 ;;25021-0115-02
 ;;9002226.02101,"734,25021-0115-02 ",.02)
 ;;25021-0115-02
 ;;9002226.02101,"734,25021-0115-04 ",.01)
 ;;25021-0115-04
 ;;9002226.02101,"734,25021-0115-04 ",.02)
 ;;25021-0115-04
 ;;9002226.02101,"734,25021-0115-06 ",.01)
 ;;25021-0115-06
 ;;9002226.02101,"734,25021-0115-06 ",.02)
 ;;25021-0115-06
 ;;9002226.02101,"734,25021-0115-51 ",.01)
 ;;25021-0115-51
 ;;9002226.02101,"734,25021-0115-51 ",.02)
 ;;25021-0115-51
 ;;9002226.02101,"734,25021-0118-10 ",.01)
 ;;25021-0118-10
 ;;9002226.02101,"734,25021-0118-10 ",.02)
 ;;25021-0118-10
 ;;9002226.02101,"734,25021-0119-20 ",.01)
 ;;25021-0119-20