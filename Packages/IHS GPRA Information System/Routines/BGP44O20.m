BGP44O20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 11, 2013;
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,16714-0581-03 ",.02)
 ;;16714-0581-03
 ;;9002226.02101,"1729,16714-0582-01 ",.01)
 ;;16714-0582-01
 ;;9002226.02101,"1729,16714-0582-01 ",.02)
 ;;16714-0582-01
 ;;9002226.02101,"1729,16714-0582-02 ",.01)
 ;;16714-0582-02
 ;;9002226.02101,"1729,16714-0582-02 ",.02)
 ;;16714-0582-02
 ;;9002226.02101,"1729,16714-0582-03 ",.01)
 ;;16714-0582-03
 ;;9002226.02101,"1729,16714-0582-03 ",.02)
 ;;16714-0582-03
 ;;9002226.02101,"1729,16714-0583-01 ",.01)
 ;;16714-0583-01
 ;;9002226.02101,"1729,16714-0583-01 ",.02)
 ;;16714-0583-01
 ;;9002226.02101,"1729,16714-0583-02 ",.01)
 ;;16714-0583-02
 ;;9002226.02101,"1729,16714-0583-02 ",.02)
 ;;16714-0583-02
 ;;9002226.02101,"1729,16714-0583-03 ",.01)
 ;;16714-0583-03
 ;;9002226.02101,"1729,16714-0583-03 ",.02)
 ;;16714-0583-03
 ;;9002226.02101,"1729,21695-0326-30 ",.01)
 ;;21695-0326-30
 ;;9002226.02101,"1729,21695-0326-30 ",.02)
 ;;21695-0326-30
 ;;9002226.02101,"1729,21695-0326-60 ",.01)
 ;;21695-0326-60
 ;;9002226.02101,"1729,21695-0326-60 ",.02)
 ;;21695-0326-60
 ;;9002226.02101,"1729,21695-0326-90 ",.01)
 ;;21695-0326-90
 ;;9002226.02101,"1729,21695-0326-90 ",.02)
 ;;21695-0326-90
 ;;9002226.02101,"1729,21695-0327-30 ",.01)
 ;;21695-0327-30
 ;;9002226.02101,"1729,21695-0327-30 ",.02)
 ;;21695-0327-30
 ;;9002226.02101,"1729,21695-0327-60 ",.01)
 ;;21695-0327-60
 ;;9002226.02101,"1729,21695-0327-60 ",.02)
 ;;21695-0327-60
 ;;9002226.02101,"1729,21695-0327-90 ",.01)
 ;;21695-0327-90
 ;;9002226.02101,"1729,21695-0327-90 ",.02)
 ;;21695-0327-90
 ;;9002226.02101,"1729,21695-0328-30 ",.01)
 ;;21695-0328-30
 ;;9002226.02101,"1729,21695-0328-30 ",.02)
 ;;21695-0328-30
 ;;9002226.02101,"1729,21695-0328-90 ",.01)
 ;;21695-0328-90
 ;;9002226.02101,"1729,21695-0328-90 ",.02)
 ;;21695-0328-90
 ;;9002226.02101,"1729,21695-0329-30 ",.01)
 ;;21695-0329-30
 ;;9002226.02101,"1729,21695-0329-30 ",.02)
 ;;21695-0329-30
 ;;9002226.02101,"1729,21695-0329-78 ",.01)
 ;;21695-0329-78
 ;;9002226.02101,"1729,21695-0329-78 ",.02)
 ;;21695-0329-78
 ;;9002226.02101,"1729,21695-0329-90 ",.01)
 ;;21695-0329-90
 ;;9002226.02101,"1729,21695-0329-90 ",.02)
 ;;21695-0329-90
 ;;9002226.02101,"1729,21695-0330-20 ",.01)
 ;;21695-0330-20
 ;;9002226.02101,"1729,21695-0330-20 ",.02)
 ;;21695-0330-20
 ;;9002226.02101,"1729,21695-0330-30 ",.01)
 ;;21695-0330-30
 ;;9002226.02101,"1729,21695-0330-30 ",.02)
 ;;21695-0330-30
 ;;9002226.02101,"1729,21695-0330-60 ",.01)
 ;;21695-0330-60
 ;;9002226.02101,"1729,21695-0330-60 ",.02)
 ;;21695-0330-60
 ;;9002226.02101,"1729,21695-0330-90 ",.01)
 ;;21695-0330-90
 ;;9002226.02101,"1729,21695-0330-90 ",.02)
 ;;21695-0330-90
 ;;9002226.02101,"1729,21695-0331-30 ",.01)
 ;;21695-0331-30
 ;;9002226.02101,"1729,21695-0331-30 ",.02)
 ;;21695-0331-30
 ;;9002226.02101,"1729,21695-0331-40 ",.01)
 ;;21695-0331-40
 ;;9002226.02101,"1729,21695-0331-40 ",.02)
 ;;21695-0331-40
 ;;9002226.02101,"1729,21695-0331-60 ",.01)
 ;;21695-0331-60
 ;;9002226.02101,"1729,21695-0331-60 ",.02)
 ;;21695-0331-60
 ;;9002226.02101,"1729,21695-0331-90 ",.01)
 ;;21695-0331-90
 ;;9002226.02101,"1729,21695-0331-90 ",.02)
 ;;21695-0331-90
 ;;9002226.02101,"1729,21695-0345-30 ",.01)
 ;;21695-0345-30
 ;;9002226.02101,"1729,21695-0345-30 ",.02)
 ;;21695-0345-30
 ;;9002226.02101,"1729,21695-0345-90 ",.01)
 ;;21695-0345-90
 ;;9002226.02101,"1729,21695-0345-90 ",.02)
 ;;21695-0345-90
 ;;9002226.02101,"1729,21695-0393-30 ",.01)
 ;;21695-0393-30
 ;;9002226.02101,"1729,21695-0393-30 ",.02)
 ;;21695-0393-30
 ;;9002226.02101,"1729,21695-0394-30 ",.01)
 ;;21695-0394-30
 ;;9002226.02101,"1729,21695-0394-30 ",.02)
 ;;21695-0394-30
 ;;9002226.02101,"1729,21695-0477-30 ",.01)
 ;;21695-0477-30
 ;;9002226.02101,"1729,21695-0477-30 ",.02)
 ;;21695-0477-30
 ;;9002226.02101,"1729,21695-0477-78 ",.01)
 ;;21695-0477-78
 ;;9002226.02101,"1729,21695-0477-78 ",.02)
 ;;21695-0477-78
 ;;9002226.02101,"1729,21695-0478-30 ",.01)
 ;;21695-0478-30
 ;;9002226.02101,"1729,21695-0478-30 ",.02)
 ;;21695-0478-30
 ;;9002226.02101,"1729,21695-0487-30 ",.01)
 ;;21695-0487-30
 ;;9002226.02101,"1729,21695-0487-30 ",.02)
 ;;21695-0487-30
 ;;9002226.02101,"1729,21695-0487-90 ",.01)
 ;;21695-0487-90
 ;;9002226.02101,"1729,21695-0487-90 ",.02)
 ;;21695-0487-90
 ;;9002226.02101,"1729,21695-0488-30 ",.01)
 ;;21695-0488-30
 ;;9002226.02101,"1729,21695-0488-30 ",.02)
 ;;21695-0488-30
 ;;9002226.02101,"1729,21695-0488-60 ",.01)
 ;;21695-0488-60
 ;;9002226.02101,"1729,21695-0488-60 ",.02)
 ;;21695-0488-60
 ;;9002226.02101,"1729,21695-0488-90 ",.01)
 ;;21695-0488-90
 ;;9002226.02101,"1729,21695-0488-90 ",.02)
 ;;21695-0488-90
 ;;9002226.02101,"1729,21695-0489-30 ",.01)
 ;;21695-0489-30
 ;;9002226.02101,"1729,21695-0489-30 ",.02)
 ;;21695-0489-30
 ;;9002226.02101,"1729,21695-0489-90 ",.01)
 ;;21695-0489-90
 ;;9002226.02101,"1729,21695-0489-90 ",.02)
 ;;21695-0489-90
 ;;9002226.02101,"1729,21695-0612-90 ",.01)
 ;;21695-0612-90
 ;;9002226.02101,"1729,21695-0612-90 ",.02)
 ;;21695-0612-90
 ;;9002226.02101,"1729,21695-0687-30 ",.01)
 ;;21695-0687-30
 ;;9002226.02101,"1729,21695-0687-30 ",.02)
 ;;21695-0687-30
 ;;9002226.02101,"1729,21695-0714-30 ",.01)
 ;;21695-0714-30
 ;;9002226.02101,"1729,21695-0714-30 ",.02)
 ;;21695-0714-30
 ;;9002226.02101,"1729,21695-0714-90 ",.01)
 ;;21695-0714-90
 ;;9002226.02101,"1729,21695-0714-90 ",.02)
 ;;21695-0714-90
 ;;9002226.02101,"1729,21695-0717-30 ",.01)
 ;;21695-0717-30
 ;;9002226.02101,"1729,21695-0717-30 ",.02)
 ;;21695-0717-30
 ;;9002226.02101,"1729,21695-0717-45 ",.01)
 ;;21695-0717-45
 ;;9002226.02101,"1729,21695-0717-45 ",.02)
 ;;21695-0717-45
 ;;9002226.02101,"1729,21695-0717-90 ",.01)
 ;;21695-0717-90
 ;;9002226.02101,"1729,21695-0717-90 ",.02)
 ;;21695-0717-90
 ;;9002226.02101,"1729,21695-0733-30 ",.01)
 ;;21695-0733-30
 ;;9002226.02101,"1729,21695-0733-30 ",.02)
 ;;21695-0733-30
 ;;9002226.02101,"1729,21695-0734-30 ",.01)
 ;;21695-0734-30
 ;;9002226.02101,"1729,21695-0734-30 ",.02)
 ;;21695-0734-30
 ;;9002226.02101,"1729,21695-0734-60 ",.01)
 ;;21695-0734-60
 ;;9002226.02101,"1729,21695-0734-60 ",.02)
 ;;21695-0734-60
 ;;9002226.02101,"1729,21695-0734-90 ",.01)
 ;;21695-0734-90
 ;;9002226.02101,"1729,21695-0734-90 ",.02)
 ;;21695-0734-90
 ;;9002226.02101,"1729,21695-0735-30 ",.01)
 ;;21695-0735-30
 ;;9002226.02101,"1729,21695-0735-30 ",.02)
 ;;21695-0735-30
 ;;9002226.02101,"1729,21695-0735-60 ",.01)
 ;;21695-0735-60
 ;;9002226.02101,"1729,21695-0735-60 ",.02)
 ;;21695-0735-60
 ;;9002226.02101,"1729,21695-0735-90 ",.01)
 ;;21695-0735-90
 ;;9002226.02101,"1729,21695-0735-90 ",.02)
 ;;21695-0735-90
 ;;9002226.02101,"1729,21695-0780-30 ",.01)
 ;;21695-0780-30
 ;;9002226.02101,"1729,21695-0780-30 ",.02)
 ;;21695-0780-30
 ;;9002226.02101,"1729,21695-0788-90 ",.01)
 ;;21695-0788-90
 ;;9002226.02101,"1729,21695-0788-90 ",.02)
 ;;21695-0788-90
 ;;9002226.02101,"1729,21695-0821-30 ",.01)
 ;;21695-0821-30
 ;;9002226.02101,"1729,21695-0821-30 ",.02)
 ;;21695-0821-30
 ;;9002226.02101,"1729,21695-0821-90 ",.01)
 ;;21695-0821-90
 ;;9002226.02101,"1729,21695-0821-90 ",.02)
 ;;21695-0821-90
 ;;9002226.02101,"1729,21695-0822-30 ",.01)
 ;;21695-0822-30
 ;;9002226.02101,"1729,21695-0822-30 ",.02)
 ;;21695-0822-30
 ;;9002226.02101,"1729,21695-0822-60 ",.01)
 ;;21695-0822-60
 ;;9002226.02101,"1729,21695-0822-60 ",.02)
 ;;21695-0822-60
 ;;9002226.02101,"1729,21695-0822-78 ",.01)
 ;;21695-0822-78
 ;;9002226.02101,"1729,21695-0822-78 ",.02)
 ;;21695-0822-78
 ;;9002226.02101,"1729,21695-0822-90 ",.01)
 ;;21695-0822-90
 ;;9002226.02101,"1729,21695-0822-90 ",.02)
 ;;21695-0822-90
 ;;9002226.02101,"1729,21695-0823-30 ",.01)
 ;;21695-0823-30
 ;;9002226.02101,"1729,21695-0823-30 ",.02)
 ;;21695-0823-30
 ;;9002226.02101,"1729,21695-0823-60 ",.01)
 ;;21695-0823-60
 ;;9002226.02101,"1729,21695-0823-60 ",.02)
 ;;21695-0823-60
 ;;9002226.02101,"1729,21695-0831-30 ",.01)
 ;;21695-0831-30
 ;;9002226.02101,"1729,21695-0831-30 ",.02)
 ;;21695-0831-30
 ;;9002226.02101,"1729,21695-0831-90 ",.01)
 ;;21695-0831-90
 ;;9002226.02101,"1729,21695-0831-90 ",.02)
 ;;21695-0831-90
 ;;9002226.02101,"1729,21695-0866-90 ",.01)
 ;;21695-0866-90
 ;;9002226.02101,"1729,21695-0866-90 ",.02)
 ;;21695-0866-90
 ;;9002226.02101,"1729,21695-0877-30 ",.01)
 ;;21695-0877-30
 ;;9002226.02101,"1729,21695-0877-30 ",.02)
 ;;21695-0877-30
 ;;9002226.02101,"1729,21695-0877-90 ",.01)
 ;;21695-0877-90
 ;;9002226.02101,"1729,21695-0877-90 ",.02)
 ;;21695-0877-90
 ;;9002226.02101,"1729,21695-0916-30 ",.01)
 ;;21695-0916-30
 ;;9002226.02101,"1729,21695-0916-30 ",.02)
 ;;21695-0916-30
 ;;9002226.02101,"1729,21695-0916-90 ",.01)
 ;;21695-0916-90
 ;;9002226.02101,"1729,21695-0916-90 ",.02)
 ;;21695-0916-90
 ;;9002226.02101,"1729,21695-0917-90 ",.01)
 ;;21695-0917-90
 ;;9002226.02101,"1729,21695-0917-90 ",.02)
 ;;21695-0917-90
 ;;9002226.02101,"1729,21695-0918-90 ",.01)
 ;;21695-0918-90
 ;;9002226.02101,"1729,21695-0918-90 ",.02)
 ;;21695-0918-90
 ;;9002226.02101,"1729,21695-0919-90 ",.01)
 ;;21695-0919-90
 ;;9002226.02101,"1729,21695-0919-90 ",.02)
 ;;21695-0919-90
 ;;9002226.02101,"1729,21695-0966-30 ",.01)
 ;;21695-0966-30
 ;;9002226.02101,"1729,21695-0966-30 ",.02)
 ;;21695-0966-30
 ;;9002226.02101,"1729,21695-0989-30 ",.01)
 ;;21695-0989-30
 ;;9002226.02101,"1729,21695-0989-30 ",.02)
 ;;21695-0989-30
 ;;9002226.02101,"1729,23155-0060-01 ",.01)
 ;;23155-0060-01
 ;;9002226.02101,"1729,23155-0060-01 ",.02)
 ;;23155-0060-01
 ;;9002226.02101,"1729,23155-0061-01 ",.01)
 ;;23155-0061-01
 ;;9002226.02101,"1729,23155-0061-01 ",.02)
 ;;23155-0061-01
 ;;9002226.02101,"1729,23490-0107-03 ",.01)
 ;;23490-0107-03
 ;;9002226.02101,"1729,23490-0107-03 ",.02)
 ;;23490-0107-03
 ;;9002226.02101,"1729,23490-0108-03 ",.01)
 ;;23490-0108-03
 ;;9002226.02101,"1729,23490-0108-03 ",.02)
 ;;23490-0108-03
 ;;9002226.02101,"1729,23490-0109-09 ",.01)
 ;;23490-0109-09
 ;;9002226.02101,"1729,23490-0109-09 ",.02)
 ;;23490-0109-09
 ;;9002226.02101,"1729,23490-5118-01 ",.01)
 ;;23490-5118-01
 ;;9002226.02101,"1729,23490-5118-01 ",.02)
 ;;23490-5118-01
 ;;9002226.02101,"1729,23490-5119-01 ",.01)
 ;;23490-5119-01
 ;;9002226.02101,"1729,23490-5119-01 ",.02)
 ;;23490-5119-01
 ;;9002226.02101,"1729,23490-5119-02 ",.01)
 ;;23490-5119-02
 ;;9002226.02101,"1729,23490-5119-02 ",.02)
 ;;23490-5119-02
 ;;9002226.02101,"1729,23490-5120-03 ",.01)
 ;;23490-5120-03
 ;;9002226.02101,"1729,23490-5120-03 ",.02)
 ;;23490-5120-03
 ;;9002226.02101,"1729,23490-5120-09 ",.01)
 ;;23490-5120-09
 ;;9002226.02101,"1729,23490-5120-09 ",.02)
 ;;23490-5120-09
 ;;9002226.02101,"1729,23490-5121-01 ",.01)
 ;;23490-5121-01
 ;;9002226.02101,"1729,23490-5121-01 ",.02)
 ;;23490-5121-01
 ;;9002226.02101,"1729,23490-5191-01 ",.01)
 ;;23490-5191-01
 ;;9002226.02101,"1729,23490-5191-01 ",.02)
 ;;23490-5191-01
 ;;9002226.02101,"1729,23490-5192-01 ",.01)
 ;;23490-5192-01
 ;;9002226.02101,"1729,23490-5192-01 ",.02)
 ;;23490-5192-01
 ;;9002226.02101,"1729,23490-5193-01 ",.01)
 ;;23490-5193-01
 ;;9002226.02101,"1729,23490-5193-01 ",.02)
 ;;23490-5193-01
 ;;9002226.02101,"1729,23490-5193-02 ",.01)
 ;;23490-5193-02
 ;;9002226.02101,"1729,23490-5193-02 ",.02)
 ;;23490-5193-02
 ;;9002226.02101,"1729,23490-5193-03 ",.01)
 ;;23490-5193-03
 ;;9002226.02101,"1729,23490-5193-03 ",.02)
 ;;23490-5193-03
 ;;9002226.02101,"1729,23490-5194-00 ",.01)
 ;;23490-5194-00
 ;;9002226.02101,"1729,23490-5194-00 ",.02)
 ;;23490-5194-00
 ;;9002226.02101,"1729,23490-5194-01 ",.01)
 ;;23490-5194-01
 ;;9002226.02101,"1729,23490-5194-01 ",.02)
 ;;23490-5194-01
 ;;9002226.02101,"1729,23490-5194-02 ",.01)
 ;;23490-5194-02
 ;;9002226.02101,"1729,23490-5194-02 ",.02)
 ;;23490-5194-02
 ;;9002226.02101,"1729,23490-5491-01 ",.01)
 ;;23490-5491-01
 ;;9002226.02101,"1729,23490-5491-01 ",.02)
 ;;23490-5491-01
 ;;9002226.02101,"1729,23490-5491-02 ",.01)
 ;;23490-5491-02
 ;;9002226.02101,"1729,23490-5491-02 ",.02)
 ;;23490-5491-02
 ;;9002226.02101,"1729,23490-5491-08 ",.01)
 ;;23490-5491-08
 ;;9002226.02101,"1729,23490-5491-08 ",.02)
 ;;23490-5491-08
 ;;9002226.02101,"1729,23490-5491-09 ",.01)
 ;;23490-5491-09
 ;;9002226.02101,"1729,23490-5491-09 ",.02)
 ;;23490-5491-09
 ;;9002226.02101,"1729,23490-5492-01 ",.01)
 ;;23490-5492-01
 ;;9002226.02101,"1729,23490-5492-01 ",.02)
 ;;23490-5492-01
 ;;9002226.02101,"1729,23490-5492-02 ",.01)
 ;;23490-5492-02
 ;;9002226.02101,"1729,23490-5492-02 ",.02)
 ;;23490-5492-02
 ;;9002226.02101,"1729,23490-5494-01 ",.01)
 ;;23490-5494-01
 ;;9002226.02101,"1729,23490-5494-01 ",.02)
 ;;23490-5494-01
 ;;9002226.02101,"1729,23490-5494-02 ",.01)
 ;;23490-5494-02
 ;;9002226.02101,"1729,23490-5494-02 ",.02)
 ;;23490-5494-02
 ;;9002226.02101,"1729,23490-5815-00 ",.01)
 ;;23490-5815-00
 ;;9002226.02101,"1729,23490-5815-00 ",.02)
 ;;23490-5815-00
 ;;9002226.02101,"1729,23490-5815-01 ",.01)
 ;;23490-5815-01
 ;;9002226.02101,"1729,23490-5815-01 ",.02)
 ;;23490-5815-01
 ;;9002226.02101,"1729,23490-5815-06 ",.01)
 ;;23490-5815-06
 ;;9002226.02101,"1729,23490-5815-06 ",.02)
 ;;23490-5815-06
 ;;9002226.02101,"1729,23490-5815-09 ",.01)
 ;;23490-5815-09
 ;;9002226.02101,"1729,23490-5815-09 ",.02)
 ;;23490-5815-09
 ;;9002226.02101,"1729,23490-5816-01 ",.01)
 ;;23490-5816-01
 ;;9002226.02101,"1729,23490-5816-01 ",.02)
 ;;23490-5816-01
 ;;9002226.02101,"1729,23490-5816-02 ",.01)
 ;;23490-5816-02
 ;;9002226.02101,"1729,23490-5816-02 ",.02)
 ;;23490-5816-02
 ;;9002226.02101,"1729,23490-5816-06 ",.01)
 ;;23490-5816-06
 ;;9002226.02101,"1729,23490-5816-06 ",.02)
 ;;23490-5816-06