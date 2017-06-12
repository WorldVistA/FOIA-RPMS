BGP51U3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1200,21695-0147-15 ",.01)
 ;;21695-0147-15
 ;;9002226.02101,"1200,21695-0147-15 ",.02)
 ;;21695-0147-15
 ;;9002226.02101,"1200,21695-0148-15 ",.01)
 ;;21695-0148-15
 ;;9002226.02101,"1200,21695-0148-15 ",.02)
 ;;21695-0148-15
 ;;9002226.02101,"1200,23490-0104-03 ",.01)
 ;;23490-0104-03
 ;;9002226.02101,"1200,23490-0104-03 ",.02)
 ;;23490-0104-03
 ;;9002226.02101,"1200,23490-0105-03 ",.01)
 ;;23490-0105-03
 ;;9002226.02101,"1200,23490-0105-03 ",.02)
 ;;23490-0105-03
 ;;9002226.02101,"1200,23490-0106-03 ",.01)
 ;;23490-0106-03
 ;;9002226.02101,"1200,23490-0106-03 ",.02)
 ;;23490-0106-03
 ;;9002226.02101,"1200,35356-0130-60 ",.01)
 ;;35356-0130-60
 ;;9002226.02101,"1200,35356-0130-60 ",.02)
 ;;35356-0130-60
 ;;9002226.02101,"1200,35356-0271-60 ",.01)
 ;;35356-0271-60
 ;;9002226.02101,"1200,35356-0271-60 ",.02)
 ;;35356-0271-60
 ;;9002226.02101,"1200,47463-0583-30 ",.01)
 ;;47463-0583-30
 ;;9002226.02101,"1200,47463-0583-30 ",.02)
 ;;47463-0583-30
 ;;9002226.02101,"1200,47463-0584-30 ",.01)
 ;;47463-0584-30
 ;;9002226.02101,"1200,47463-0584-30 ",.02)
 ;;47463-0584-30
 ;;9002226.02101,"1200,47463-0585-30 ",.01)
 ;;47463-0585-30
 ;;9002226.02101,"1200,47463-0585-30 ",.02)
 ;;47463-0585-30
 ;;9002226.02101,"1200,47463-0764-60 ",.01)
 ;;47463-0764-60
 ;;9002226.02101,"1200,47463-0764-60 ",.02)
 ;;47463-0764-60
 ;;9002226.02101,"1200,47463-0765-30 ",.01)
 ;;47463-0765-30
 ;;9002226.02101,"1200,47463-0765-30 ",.02)
 ;;47463-0765-30
 ;;9002226.02101,"1200,47463-0766-30 ",.01)
 ;;47463-0766-30
 ;;9002226.02101,"1200,47463-0766-30 ",.02)
 ;;47463-0766-30
 ;;9002226.02101,"1200,49999-0304-30 ",.01)
 ;;49999-0304-30
 ;;9002226.02101,"1200,49999-0304-30 ",.02)
 ;;49999-0304-30
 ;;9002226.02101,"1200,49999-0449-15 ",.01)
 ;;49999-0449-15
 ;;9002226.02101,"1200,49999-0449-15 ",.02)
 ;;49999-0449-15
 ;;9002226.02101,"1200,49999-0449-30 ",.01)
 ;;49999-0449-30
 ;;9002226.02101,"1200,49999-0449-30 ",.02)
 ;;49999-0449-30
 ;;9002226.02101,"1200,49999-0450-30 ",.01)
 ;;49999-0450-30
 ;;9002226.02101,"1200,49999-0450-30 ",.02)
 ;;49999-0450-30
 ;;9002226.02101,"1200,49999-0451-30 ",.01)
 ;;49999-0451-30
 ;;9002226.02101,"1200,49999-0451-30 ",.02)
 ;;49999-0451-30
 ;;9002226.02101,"1200,49999-0451-90 ",.01)
 ;;49999-0451-90
 ;;9002226.02101,"1200,49999-0451-90 ",.02)
 ;;49999-0451-90
 ;;9002226.02101,"1200,49999-0935-30 ",.01)
 ;;49999-0935-30
 ;;9002226.02101,"1200,49999-0935-30 ",.02)
 ;;49999-0935-30
 ;;9002226.02101,"1200,51079-0513-01 ",.01)
 ;;51079-0513-01
 ;;9002226.02101,"1200,51079-0513-01 ",.02)
 ;;51079-0513-01
 ;;9002226.02101,"1200,51079-0513-20 ",.01)
 ;;51079-0513-20
 ;;9002226.02101,"1200,51079-0513-20 ",.02)
 ;;51079-0513-20
 ;;9002226.02101,"1200,51079-0514-01 ",.01)
 ;;51079-0514-01
 ;;9002226.02101,"1200,51079-0514-01 ",.02)
 ;;51079-0514-01
 ;;9002226.02101,"1200,51079-0514-20 ",.01)
 ;;51079-0514-20
 ;;9002226.02101,"1200,51079-0514-20 ",.02)
 ;;51079-0514-20
 ;;9002226.02101,"1200,51079-0515-01 ",.01)
 ;;51079-0515-01
 ;;9002226.02101,"1200,51079-0515-01 ",.02)
 ;;51079-0515-01
 ;;9002226.02101,"1200,51079-0515-20 ",.01)
 ;;51079-0515-20
 ;;9002226.02101,"1200,51079-0515-20 ",.02)
 ;;51079-0515-20
 ;;9002226.02101,"1200,51138-0214-15 ",.01)
 ;;51138-0214-15
 ;;9002226.02101,"1200,51138-0214-15 ",.02)
 ;;51138-0214-15
 ;;9002226.02101,"1200,51138-0214-30 ",.01)
 ;;51138-0214-30
 ;;9002226.02101,"1200,51138-0214-30 ",.02)
 ;;51138-0214-30
 ;;9002226.02101,"1200,51138-0215-15 ",.01)
 ;;51138-0215-15
 ;;9002226.02101,"1200,51138-0215-15 ",.02)
 ;;51138-0215-15
 ;;9002226.02101,"1200,51138-0215-30 ",.01)
 ;;51138-0215-30
 ;;9002226.02101,"1200,51138-0215-30 ",.02)
 ;;51138-0215-30
 ;;9002226.02101,"1200,51138-0216-15 ",.01)
 ;;51138-0216-15
 ;;9002226.02101,"1200,51138-0216-15 ",.02)
 ;;51138-0216-15
 ;;9002226.02101,"1200,51138-0216-30 ",.01)
 ;;51138-0216-30
 ;;9002226.02101,"1200,51138-0216-30 ",.02)
 ;;51138-0216-30
 ;;9002226.02101,"1200,51138-0495-20 ",.01)
 ;;51138-0495-20
 ;;9002226.02101,"1200,51138-0495-20 ",.02)
 ;;51138-0495-20
 ;;9002226.02101,"1200,51138-0495-30 ",.01)
 ;;51138-0495-30
 ;;9002226.02101,"1200,51138-0495-30 ",.02)
 ;;51138-0495-30
 ;;9002226.02101,"1200,51138-0496-30 ",.01)
 ;;51138-0496-30
 ;;9002226.02101,"1200,51138-0496-30 ",.02)
 ;;51138-0496-30
 ;;9002226.02101,"1200,51138-0497-30 ",.01)
 ;;51138-0497-30
 ;;9002226.02101,"1200,51138-0497-30 ",.02)
 ;;51138-0497-30
 ;;9002226.02101,"1200,51138-0498-30 ",.01)
 ;;51138-0498-30
 ;;9002226.02101,"1200,51138-0498-30 ",.02)
 ;;51138-0498-30
 ;;9002226.02101,"1200,51138-0499-30 ",.01)
 ;;51138-0499-30
 ;;9002226.02101,"1200,51138-0499-30 ",.02)
 ;;51138-0499-30
 ;;9002226.02101,"1200,51138-0500-30 ",.01)
 ;;51138-0500-30
 ;;9002226.02101,"1200,51138-0500-30 ",.02)
 ;;51138-0500-30
 ;;9002226.02101,"1200,51138-0501-30 ",.01)
 ;;51138-0501-30
 ;;9002226.02101,"1200,51138-0501-30 ",.02)
 ;;51138-0501-30
 ;;9002226.02101,"1200,51991-0708-10 ",.01)
 ;;51991-0708-10
 ;;9002226.02101,"1200,51991-0708-10 ",.02)
 ;;51991-0708-10
 ;;9002226.02101,"1200,51991-0708-33 ",.01)
 ;;51991-0708-33
 ;;9002226.02101,"1200,51991-0708-33 ",.02)
 ;;51991-0708-33
 ;;9002226.02101,"1200,51991-0708-90 ",.01)
 ;;51991-0708-90
 ;;9002226.02101,"1200,51991-0708-90 ",.02)
 ;;51991-0708-90
 ;;9002226.02101,"1200,51991-0709-10 ",.01)
 ;;51991-0709-10
 ;;9002226.02101,"1200,51991-0709-10 ",.02)
 ;;51991-0709-10
 ;;9002226.02101,"1200,51991-0709-33 ",.01)
 ;;51991-0709-33
 ;;9002226.02101,"1200,51991-0709-33 ",.02)
 ;;51991-0709-33
 ;;9002226.02101,"1200,51991-0709-90 ",.01)
 ;;51991-0709-90
 ;;9002226.02101,"1200,51991-0709-90 ",.02)
 ;;51991-0709-90
 ;;9002226.02101,"1200,51991-0710-10 ",.01)
 ;;51991-0710-10
 ;;9002226.02101,"1200,51991-0710-10 ",.02)
 ;;51991-0710-10
 ;;9002226.02101,"1200,51991-0710-33 ",.01)
 ;;51991-0710-33
 ;;9002226.02101,"1200,51991-0710-33 ",.02)
 ;;51991-0710-33
 ;;9002226.02101,"1200,51991-0710-90 ",.01)
 ;;51991-0710-90
 ;;9002226.02101,"1200,51991-0710-90 ",.02)
 ;;51991-0710-90
 ;;9002226.02101,"1200,54569-4801-00 ",.01)
 ;;54569-4801-00
 ;;9002226.02101,"1200,54569-4801-00 ",.02)
 ;;54569-4801-00
 ;;9002226.02101,"1200,54569-4802-00 ",.01)
 ;;54569-4802-00
 ;;9002226.02101,"1200,54569-4802-00 ",.02)
 ;;54569-4802-00
 ;;9002226.02101,"1200,54569-4803-00 ",.01)
 ;;54569-4803-00
 ;;9002226.02101,"1200,54569-4803-00 ",.02)
 ;;54569-4803-00
 ;;9002226.02101,"1200,54569-4880-00 ",.01)
 ;;54569-4880-00
 ;;9002226.02101,"1200,54569-4880-00 ",.02)
 ;;54569-4880-00
 ;;9002226.02101,"1200,54569-4881-00 ",.01)
 ;;54569-4881-00
 ;;9002226.02101,"1200,54569-4881-00 ",.02)
 ;;54569-4881-00
 ;;9002226.02101,"1200,54569-4882-00 ",.01)
 ;;54569-4882-00
 ;;9002226.02101,"1200,54569-4882-00 ",.02)
 ;;54569-4882-00
 ;;9002226.02101,"1200,54569-5603-00 ",.01)
 ;;54569-5603-00
 ;;9002226.02101,"1200,54569-5603-00 ",.02)
 ;;54569-5603-00
 ;;9002226.02101,"1200,54569-6354-00 ",.01)
 ;;54569-6354-00
 ;;9002226.02101,"1200,54569-6354-00 ",.02)
 ;;54569-6354-00
 ;;9002226.02101,"1200,54569-6354-01 ",.01)
 ;;54569-6354-01
 ;;9002226.02101,"1200,54569-6354-01 ",.02)
 ;;54569-6354-01
 ;;9002226.02101,"1200,54569-6355-00 ",.01)
 ;;54569-6355-00
 ;;9002226.02101,"1200,54569-6355-00 ",.02)
 ;;54569-6355-00
 ;;9002226.02101,"1200,54569-6355-01 ",.01)
 ;;54569-6355-01
 ;;9002226.02101,"1200,54569-6355-01 ",.02)
 ;;54569-6355-01
 ;;9002226.02101,"1200,54569-6356-00 ",.01)
 ;;54569-6356-00
 ;;9002226.02101,"1200,54569-6356-00 ",.02)
 ;;54569-6356-00
 ;;9002226.02101,"1200,54569-6356-01 ",.01)
 ;;54569-6356-01
 ;;9002226.02101,"1200,54569-6356-01 ",.02)
 ;;54569-6356-01
 ;;9002226.02101,"1200,54868-4198-00 ",.01)
 ;;54868-4198-00
 ;;9002226.02101,"1200,54868-4198-00 ",.02)
 ;;54868-4198-00
 ;;9002226.02101,"1200,54868-4198-01 ",.01)
 ;;54868-4198-01
 ;;9002226.02101,"1200,54868-4198-01 ",.02)
 ;;54868-4198-01
 ;;9002226.02101,"1200,54868-4221-00 ",.01)
 ;;54868-4221-00
 ;;9002226.02101,"1200,54868-4221-00 ",.02)
 ;;54868-4221-00
 ;;9002226.02101,"1200,54868-4343-00 ",.01)
 ;;54868-4343-00
 ;;9002226.02101,"1200,54868-4343-00 ",.02)
 ;;54868-4343-00
 ;;9002226.02101,"1200,54868-4343-01 ",.01)
 ;;54868-4343-01
 ;;9002226.02101,"1200,54868-4343-01 ",.02)
 ;;54868-4343-01
 ;;9002226.02101,"1200,54868-4354-00 ",.01)
 ;;54868-4354-00
 ;;9002226.02101,"1200,54868-4354-00 ",.02)
 ;;54868-4354-00
 ;;9002226.02101,"1200,54868-4354-01 ",.01)
 ;;54868-4354-01
 ;;9002226.02101,"1200,54868-4354-01 ",.02)
 ;;54868-4354-01
 ;;9002226.02101,"1200,54868-4391-00 ",.01)
 ;;54868-4391-00
 ;;9002226.02101,"1200,54868-4391-00 ",.02)
 ;;54868-4391-00
 ;;9002226.02101,"1200,54868-4391-01 ",.01)
 ;;54868-4391-01
 ;;9002226.02101,"1200,54868-4391-01 ",.02)
 ;;54868-4391-01
 ;;9002226.02101,"1200,54868-4965-00 ",.01)
 ;;54868-4965-00
 ;;9002226.02101,"1200,54868-4965-00 ",.02)
 ;;54868-4965-00
 ;;9002226.02101,"1200,54868-4965-01 ",.01)
 ;;54868-4965-01
 ;;9002226.02101,"1200,54868-4965-01 ",.02)
 ;;54868-4965-01
 ;;9002226.02101,"1200,54868-4965-02 ",.01)
 ;;54868-4965-02
 ;;9002226.02101,"1200,54868-4965-02 ",.02)
 ;;54868-4965-02
 ;;9002226.02101,"1200,54868-5157-00 ",.01)
 ;;54868-5157-00
 ;;9002226.02101,"1200,54868-5157-00 ",.02)
 ;;54868-5157-00
 ;;9002226.02101,"1200,54868-5157-01 ",.01)
 ;;54868-5157-01
 ;;9002226.02101,"1200,54868-5157-01 ",.02)
 ;;54868-5157-01
 ;;9002226.02101,"1200,54868-5249-00 ",.01)
 ;;54868-5249-00
 ;;9002226.02101,"1200,54868-5249-00 ",.02)
 ;;54868-5249-00
 ;;9002226.02101,"1200,54868-5249-01 ",.01)
 ;;54868-5249-01
 ;;9002226.02101,"1200,54868-5249-01 ",.02)
 ;;54868-5249-01
 ;;9002226.02101,"1200,54868-5262-00 ",.01)
 ;;54868-5262-00
 ;;9002226.02101,"1200,54868-5262-00 ",.02)
 ;;54868-5262-00
 ;;9002226.02101,"1200,54868-5262-01 ",.01)
 ;;54868-5262-01
 ;;9002226.02101,"1200,54868-5262-01 ",.02)
 ;;54868-5262-01
 ;;9002226.02101,"1200,54868-5376-00 ",.01)
 ;;54868-5376-00
 ;;9002226.02101,"1200,54868-5376-00 ",.02)
 ;;54868-5376-00
 ;;9002226.02101,"1200,54868-5379-00 ",.01)
 ;;54868-5379-00
 ;;9002226.02101,"1200,54868-5379-00 ",.02)
 ;;54868-5379-00
 ;;9002226.02101,"1200,54868-5500-00 ",.01)
 ;;54868-5500-00
 ;;9002226.02101,"1200,54868-5500-00 ",.02)
 ;;54868-5500-00
 ;;9002226.02101,"1200,54868-5500-01 ",.01)
 ;;54868-5500-01
 ;;9002226.02101,"1200,54868-5500-01 ",.02)
 ;;54868-5500-01
 ;;9002226.02101,"1200,54868-5500-02 ",.01)
 ;;54868-5500-02
 ;;9002226.02101,"1200,54868-5500-02 ",.02)
 ;;54868-5500-02
 ;;9002226.02101,"1200,54868-5553-00 ",.01)
 ;;54868-5553-00
 ;;9002226.02101,"1200,54868-5553-00 ",.02)
 ;;54868-5553-00
 ;;9002226.02101,"1200,54868-5553-01 ",.01)
 ;;54868-5553-01
 ;;9002226.02101,"1200,54868-5553-01 ",.02)
 ;;54868-5553-01
 ;;9002226.02101,"1200,54868-5553-02 ",.01)
 ;;54868-5553-02
 ;;9002226.02101,"1200,54868-5553-02 ",.02)
 ;;54868-5553-02
 ;;9002226.02101,"1200,54868-5739-00 ",.01)
 ;;54868-5739-00
 ;;9002226.02101,"1200,54868-5739-00 ",.02)
 ;;54868-5739-00
 ;;9002226.02101,"1200,55048-0583-30 ",.01)
 ;;55048-0583-30
 ;;9002226.02101,"1200,55048-0583-30 ",.02)
 ;;55048-0583-30
 ;;9002226.02101,"1200,55048-0584-30 ",.01)
 ;;55048-0584-30
 ;;9002226.02101,"1200,55048-0584-30 ",.02)
 ;;55048-0584-30
 ;;9002226.02101,"1200,55048-0585-30 ",.01)
 ;;55048-0585-30
 ;;9002226.02101,"1200,55048-0585-30 ",.02)
 ;;55048-0585-30
 ;;9002226.02101,"1200,55048-0764-60 ",.01)
 ;;55048-0764-60
 ;;9002226.02101,"1200,55048-0764-60 ",.02)
 ;;55048-0764-60
 ;;9002226.02101,"1200,55048-0765-30 ",.01)
 ;;55048-0765-30
 ;;9002226.02101,"1200,55048-0765-30 ",.02)
 ;;55048-0765-30
 ;;9002226.02101,"1200,55048-0766-30 ",.01)
 ;;55048-0766-30
 ;;9002226.02101,"1200,55048-0766-30 ",.02)
 ;;55048-0766-30
 ;;9002226.02101,"1200,55289-0540-30 ",.01)
 ;;55289-0540-30
 ;;9002226.02101,"1200,55289-0540-30 ",.02)
 ;;55289-0540-30
 ;;9002226.02101,"1200,55289-0862-15 ",.01)
 ;;55289-0862-15
 ;;9002226.02101,"1200,55289-0862-15 ",.02)
 ;;55289-0862-15
 ;;9002226.02101,"1200,55289-0862-30 ",.01)
 ;;55289-0862-30
 ;;9002226.02101,"1200,55289-0862-30 ",.02)
 ;;55289-0862-30
 ;;9002226.02101,"1200,55289-0938-30 ",.01)
 ;;55289-0938-30
 ;;9002226.02101,"1200,55289-0938-30 ",.02)
 ;;55289-0938-30
 ;;9002226.02101,"1200,57866-0069-08 ",.01)
 ;;57866-0069-08
 ;;9002226.02101,"1200,57866-0069-08 ",.02)
 ;;57866-0069-08
 ;;9002226.02101,"1200,57866-0069-09 ",.01)
 ;;57866-0069-09
 ;;9002226.02101,"1200,57866-0069-09 ",.02)
 ;;57866-0069-09
 ;;9002226.02101,"1200,57866-1264-02 ",.01)
 ;;57866-1264-02
 ;;9002226.02101,"1200,57866-1264-02 ",.02)
 ;;57866-1264-02
 ;;9002226.02101,"1200,57866-1364-03 ",.01)
 ;;57866-1364-03
 ;;9002226.02101,"1200,57866-1364-03 ",.02)
 ;;57866-1364-03
 ;;9002226.02101,"1200,58016-0081-00 ",.01)
 ;;58016-0081-00
 ;;9002226.02101,"1200,58016-0081-00 ",.02)
 ;;58016-0081-00
 ;;9002226.02101,"1200,58016-0081-30 ",.01)
 ;;58016-0081-30
 ;;9002226.02101,"1200,58016-0081-30 ",.02)
 ;;58016-0081-30
 ;;9002226.02101,"1200,58016-0081-60 ",.01)
 ;;58016-0081-60
 ;;9002226.02101,"1200,58016-0081-60 ",.02)
 ;;58016-0081-60
 ;;9002226.02101,"1200,58016-0081-90 ",.01)
 ;;58016-0081-90
 ;;9002226.02101,"1200,58016-0081-90 ",.02)
 ;;58016-0081-90
 ;;9002226.02101,"1200,58016-0082-00 ",.01)
 ;;58016-0082-00
 ;;9002226.02101,"1200,58016-0082-00 ",.02)
 ;;58016-0082-00
 ;;9002226.02101,"1200,58016-0082-30 ",.01)
 ;;58016-0082-30
 ;;9002226.02101,"1200,58016-0082-30 ",.02)
 ;;58016-0082-30
 ;;9002226.02101,"1200,58016-0082-60 ",.01)
 ;;58016-0082-60