BGP82S5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1227,50111-0459-03 ",.02)
 ;;50111-0459-03
 ;;9002226.02101,"1227,50111-0482-01 ",.01)
 ;;50111-0482-01
 ;;9002226.02101,"1227,50111-0482-01 ",.02)
 ;;50111-0482-01
 ;;9002226.02101,"1227,50111-0482-02 ",.01)
 ;;50111-0482-02
 ;;9002226.02101,"1227,50111-0482-02 ",.02)
 ;;50111-0482-02
 ;;9002226.02101,"1227,50111-0482-03 ",.01)
 ;;50111-0482-03
 ;;9002226.02101,"1227,50111-0482-03 ",.02)
 ;;50111-0482-03
 ;;9002226.02101,"1227,50111-0483-01 ",.01)
 ;;50111-0483-01
 ;;9002226.02101,"1227,50111-0483-01 ",.02)
 ;;50111-0483-01
 ;;9002226.02101,"1227,50111-0483-02 ",.01)
 ;;50111-0483-02
 ;;9002226.02101,"1227,50111-0483-02 ",.02)
 ;;50111-0483-02
 ;;9002226.02101,"1227,50111-0518-01 ",.01)
 ;;50111-0518-01
 ;;9002226.02101,"1227,50111-0518-01 ",.02)
 ;;50111-0518-01
 ;;9002226.02101,"1227,50268-0573-11 ",.01)
 ;;50268-0573-11
 ;;9002226.02101,"1227,50268-0573-11 ",.02)
 ;;50268-0573-11
 ;;9002226.02101,"1227,50268-0573-15 ",.01)
 ;;50268-0573-15
 ;;9002226.02101,"1227,50268-0573-15 ",.02)
 ;;50268-0573-15
 ;;9002226.02101,"1227,50268-0574-11 ",.01)
 ;;50268-0574-11
 ;;9002226.02101,"1227,50268-0574-11 ",.02)
 ;;50268-0574-11
 ;;9002226.02101,"1227,50268-0574-15 ",.01)
 ;;50268-0574-15
 ;;9002226.02101,"1227,50268-0574-15 ",.02)
 ;;50268-0574-15
 ;;9002226.02101,"1227,50268-0575-11 ",.01)
 ;;50268-0575-11
 ;;9002226.02101,"1227,50268-0575-11 ",.02)
 ;;50268-0575-11
 ;;9002226.02101,"1227,50268-0575-15 ",.01)
 ;;50268-0575-15
 ;;9002226.02101,"1227,50268-0575-15 ",.02)
 ;;50268-0575-15
 ;;9002226.02101,"1227,50474-0100-01 ",.01)
 ;;50474-0100-01
 ;;9002226.02101,"1227,50474-0100-01 ",.02)
 ;;50474-0100-01
 ;;9002226.02101,"1227,50474-0200-01 ",.01)
 ;;50474-0200-01
 ;;9002226.02101,"1227,50474-0200-01 ",.02)
 ;;50474-0200-01
 ;;9002226.02101,"1227,50474-0200-50 ",.01)
 ;;50474-0200-50
 ;;9002226.02101,"1227,50474-0200-50 ",.02)
 ;;50474-0200-50
 ;;9002226.02101,"1227,50474-0300-01 ",.01)
 ;;50474-0300-01
 ;;9002226.02101,"1227,50474-0300-01 ",.02)
 ;;50474-0300-01
 ;;9002226.02101,"1227,50474-0300-50 ",.01)
 ;;50474-0300-50
 ;;9002226.02101,"1227,50474-0300-50 ",.02)
 ;;50474-0300-50
 ;;9002226.02101,"1227,50474-0400-01 ",.01)
 ;;50474-0400-01
 ;;9002226.02101,"1227,50474-0400-01 ",.02)
 ;;50474-0400-01
 ;;9002226.02101,"1227,51079-0223-01 ",.01)
 ;;51079-0223-01
 ;;9002226.02101,"1227,51079-0223-01 ",.02)
 ;;51079-0223-01
 ;;9002226.02101,"1227,51079-0223-20 ",.01)
 ;;51079-0223-20
 ;;9002226.02101,"1227,51079-0223-20 ",.02)
 ;;51079-0223-20
 ;;9002226.02101,"1227,52244-0100-10 ",.01)
 ;;52244-0100-10
 ;;9002226.02101,"1227,52244-0100-10 ",.02)
 ;;52244-0100-10
 ;;9002226.02101,"1227,52244-0200-10 ",.01)
 ;;52244-0200-10
 ;;9002226.02101,"1227,52244-0200-10 ",.02)
 ;;52244-0200-10
 ;;9002226.02101,"1227,52244-0300-10 ",.01)
 ;;52244-0300-10
 ;;9002226.02101,"1227,52244-0300-10 ",.02)
 ;;52244-0300-10
 ;;9002226.02101,"1227,52244-0400-10 ",.01)
 ;;52244-0400-10
 ;;9002226.02101,"1227,52244-0400-10 ",.02)
 ;;52244-0400-10
 ;;9002226.02101,"1227,52343-0037-30 ",.01)
 ;;52343-0037-30
 ;;9002226.02101,"1227,52343-0037-30 ",.02)
 ;;52343-0037-30
 ;;9002226.02101,"1227,52343-0037-90 ",.01)
 ;;52343-0037-90
 ;;9002226.02101,"1227,52343-0037-90 ",.02)
 ;;52343-0037-90
 ;;9002226.02101,"1227,52343-0037-99 ",.01)
 ;;52343-0037-99
 ;;9002226.02101,"1227,52343-0037-99 ",.02)
 ;;52343-0037-99
 ;;9002226.02101,"1227,54458-0890-10 ",.01)
 ;;54458-0890-10
 ;;9002226.02101,"1227,54458-0890-10 ",.02)
 ;;54458-0890-10
 ;;9002226.02101,"1227,54569-2483-01 ",.01)
 ;;54569-2483-01
 ;;9002226.02101,"1227,54569-2483-01 ",.02)
 ;;54569-2483-01
 ;;9002226.02101,"1227,54569-2483-02 ",.01)
 ;;54569-2483-02
 ;;9002226.02101,"1227,54569-2483-02 ",.02)
 ;;54569-2483-02
 ;;9002226.02101,"1227,54569-4605-00 ",.01)
 ;;54569-4605-00
 ;;9002226.02101,"1227,54569-4605-00 ",.02)
 ;;54569-4605-00
 ;;9002226.02101,"1227,54569-4605-01 ",.01)
 ;;54569-4605-01
 ;;9002226.02101,"1227,54569-4605-01 ",.02)
 ;;54569-4605-01
 ;;9002226.02101,"1227,54569-4736-00 ",.01)
 ;;54569-4736-00
 ;;9002226.02101,"1227,54569-4736-00 ",.02)
 ;;54569-4736-00
 ;;9002226.02101,"1227,54569-4867-00 ",.01)
 ;;54569-4867-00
 ;;9002226.02101,"1227,54569-4867-00 ",.02)
 ;;54569-4867-00
 ;;9002226.02101,"1227,54569-5241-00 ",.01)
 ;;54569-5241-00
 ;;9002226.02101,"1227,54569-5241-00 ",.02)
 ;;54569-5241-00
 ;;9002226.02101,"1227,54569-5242-00 ",.01)
 ;;54569-5242-00
 ;;9002226.02101,"1227,54569-5242-00 ",.02)
 ;;54569-5242-00
 ;;9002226.02101,"1227,54569-5243-00 ",.01)
 ;;54569-5243-00
 ;;9002226.02101,"1227,54569-5243-00 ",.02)
 ;;54569-5243-00
 ;;9002226.02101,"1227,54569-5663-00 ",.01)
 ;;54569-5663-00
 ;;9002226.02101,"1227,54569-5663-00 ",.02)
 ;;54569-5663-00
 ;;9002226.02101,"1227,54569-5671-00 ",.01)
 ;;54569-5671-00
 ;;9002226.02101,"1227,54569-5671-00 ",.02)
 ;;54569-5671-00
 ;;9002226.02101,"1227,54569-5702-00 ",.01)
 ;;54569-5702-00
 ;;9002226.02101,"1227,54569-5702-00 ",.02)
 ;;54569-5702-00
 ;;9002226.02101,"1227,54569-5928-00 ",.01)
 ;;54569-5928-00
 ;;9002226.02101,"1227,54569-5928-00 ",.02)
 ;;54569-5928-00
 ;;9002226.02101,"1227,54569-6265-00 ",.01)
 ;;54569-6265-00
 ;;9002226.02101,"1227,54569-6265-00 ",.02)
 ;;54569-6265-00
 ;;9002226.02101,"1227,54569-6266-00 ",.01)
 ;;54569-6266-00
 ;;9002226.02101,"1227,54569-6266-00 ",.02)
 ;;54569-6266-00
 ;;9002226.02101,"1227,54569-6321-00 ",.01)
 ;;54569-6321-00
 ;;9002226.02101,"1227,54569-6321-00 ",.02)
 ;;54569-6321-00
 ;;9002226.02101,"1227,54569-6348-00 ",.01)
 ;;54569-6348-00
 ;;9002226.02101,"1227,54569-6348-00 ",.02)
 ;;54569-6348-00
 ;;9002226.02101,"1227,54569-6348-01 ",.01)
 ;;54569-6348-01
 ;;9002226.02101,"1227,54569-6348-01 ",.02)
 ;;54569-6348-01
 ;;9002226.02101,"1227,54569-6349-00 ",.01)
 ;;54569-6349-00
 ;;9002226.02101,"1227,54569-6349-00 ",.02)
 ;;54569-6349-00
 ;;9002226.02101,"1227,54569-6349-01 ",.01)
 ;;54569-6349-01
 ;;9002226.02101,"1227,54569-6349-01 ",.02)
 ;;54569-6349-01
 ;;9002226.02101,"1227,54569-6390-00 ",.01)
 ;;54569-6390-00
 ;;9002226.02101,"1227,54569-6390-00 ",.02)
 ;;54569-6390-00
 ;;9002226.02101,"1227,54569-6430-00 ",.01)
 ;;54569-6430-00
 ;;9002226.02101,"1227,54569-6430-00 ",.02)
 ;;54569-6430-00
 ;;9002226.02101,"1227,54569-6430-01 ",.01)
 ;;54569-6430-01
 ;;9002226.02101,"1227,54569-6430-01 ",.02)
 ;;54569-6430-01
 ;;9002226.02101,"1227,54569-6466-00 ",.01)
 ;;54569-6466-00
 ;;9002226.02101,"1227,54569-6466-00 ",.02)
 ;;54569-6466-00
 ;;9002226.02101,"1227,54569-6611-00 ",.01)
 ;;54569-6611-00
 ;;9002226.02101,"1227,54569-6611-00 ",.02)
 ;;54569-6611-00
 ;;9002226.02101,"1227,54569-6612-00 ",.01)
 ;;54569-6612-00
 ;;9002226.02101,"1227,54569-6612-00 ",.02)
 ;;54569-6612-00
 ;;9002226.02101,"1227,54569-6665-00 ",.01)
 ;;54569-6665-00
 ;;9002226.02101,"1227,54569-6665-00 ",.02)
 ;;54569-6665-00
 ;;9002226.02101,"1227,54868-0028-01 ",.01)
 ;;54868-0028-01
 ;;9002226.02101,"1227,54868-0028-01 ",.02)
 ;;54868-0028-01
 ;;9002226.02101,"1227,54868-0028-02 ",.01)
 ;;54868-0028-02
 ;;9002226.02101,"1227,54868-0028-02 ",.02)
 ;;54868-0028-02
 ;;9002226.02101,"1227,54868-0028-06 ",.01)
 ;;54868-0028-06
 ;;9002226.02101,"1227,54868-0028-06 ",.02)
 ;;54868-0028-06
 ;;9002226.02101,"1227,54868-0029-02 ",.01)
 ;;54868-0029-02
 ;;9002226.02101,"1227,54868-0029-02 ",.02)
 ;;54868-0029-02
 ;;9002226.02101,"1227,54868-0029-05 ",.01)
 ;;54868-0029-05
 ;;9002226.02101,"1227,54868-0029-05 ",.02)
 ;;54868-0029-05
 ;;9002226.02101,"1227,54868-0029-06 ",.01)
 ;;54868-0029-06
 ;;9002226.02101,"1227,54868-0029-06 ",.02)
 ;;54868-0029-06
 ;;9002226.02101,"1227,54868-0029-07 ",.01)
 ;;54868-0029-07
 ;;9002226.02101,"1227,54868-0029-07 ",.02)
 ;;54868-0029-07
 ;;9002226.02101,"1227,54868-1461-01 ",.01)
 ;;54868-1461-01
 ;;9002226.02101,"1227,54868-1461-01 ",.02)
 ;;54868-1461-01
 ;;9002226.02101,"1227,54868-1461-02 ",.01)
 ;;54868-1461-02
 ;;9002226.02101,"1227,54868-1461-02 ",.02)
 ;;54868-1461-02
 ;;9002226.02101,"1227,54868-3283-01 ",.01)
 ;;54868-3283-01
 ;;9002226.02101,"1227,54868-3283-01 ",.02)
 ;;54868-3283-01
 ;;9002226.02101,"1227,54868-3283-02 ",.01)
 ;;54868-3283-02
 ;;9002226.02101,"1227,54868-3283-02 ",.02)
 ;;54868-3283-02
 ;;9002226.02101,"1227,54868-4481-00 ",.01)
 ;;54868-4481-00
 ;;9002226.02101,"1227,54868-4481-00 ",.02)
 ;;54868-4481-00
 ;;9002226.02101,"1227,54868-4516-00 ",.01)
 ;;54868-4516-00
 ;;9002226.02101,"1227,54868-4516-00 ",.02)
 ;;54868-4516-00
 ;;9002226.02101,"1227,54868-4517-00 ",.01)
 ;;54868-4517-00
 ;;9002226.02101,"1227,54868-4517-00 ",.02)
 ;;54868-4517-00
 ;;9002226.02101,"1227,54868-4518-00 ",.01)
 ;;54868-4518-00
 ;;9002226.02101,"1227,54868-4518-00 ",.02)
 ;;54868-4518-00
 ;;9002226.02101,"1227,54868-4630-00 ",.01)
 ;;54868-4630-00
 ;;9002226.02101,"1227,54868-4630-00 ",.02)
 ;;54868-4630-00
 ;;9002226.02101,"1227,54868-4847-00 ",.01)
 ;;54868-4847-00
 ;;9002226.02101,"1227,54868-4847-00 ",.02)
 ;;54868-4847-00
 ;;9002226.02101,"1227,54868-4972-01 ",.01)
 ;;54868-4972-01
 ;;9002226.02101,"1227,54868-4972-01 ",.02)
 ;;54868-4972-01
 ;;9002226.02101,"1227,54868-5362-00 ",.01)
 ;;54868-5362-00
 ;;9002226.02101,"1227,54868-5362-00 ",.02)
 ;;54868-5362-00
 ;;9002226.02101,"1227,54868-5547-00 ",.01)
 ;;54868-5547-00
 ;;9002226.02101,"1227,54868-5547-00 ",.02)
 ;;54868-5547-00
 ;;9002226.02101,"1227,54868-5547-01 ",.01)
 ;;54868-5547-01
 ;;9002226.02101,"1227,54868-5547-01 ",.02)
 ;;54868-5547-01
 ;;9002226.02101,"1227,54868-5547-02 ",.01)
 ;;54868-5547-02
 ;;9002226.02101,"1227,54868-5547-02 ",.02)
 ;;54868-5547-02
 ;;9002226.02101,"1227,54868-5637-00 ",.01)
 ;;54868-5637-00
 ;;9002226.02101,"1227,54868-5637-00 ",.02)
 ;;54868-5637-00
 ;;9002226.02101,"1227,54868-5844-00 ",.01)
 ;;54868-5844-00
 ;;9002226.02101,"1227,54868-5844-00 ",.02)
 ;;54868-5844-00
 ;;9002226.02101,"1227,54868-5857-01 ",.01)
 ;;54868-5857-01
 ;;9002226.02101,"1227,54868-5857-01 ",.02)
 ;;54868-5857-01
 ;;9002226.02101,"1227,54868-5858-01 ",.01)
 ;;54868-5858-01
 ;;9002226.02101,"1227,54868-5858-01 ",.02)
 ;;54868-5858-01
 ;;9002226.02101,"1227,54868-5936-00 ",.01)
 ;;54868-5936-00
 ;;9002226.02101,"1227,54868-5936-00 ",.02)
 ;;54868-5936-00
 ;;9002226.02101,"1227,54868-5937-00 ",.01)
 ;;54868-5937-00
 ;;9002226.02101,"1227,54868-5937-00 ",.02)
 ;;54868-5937-00
 ;;9002226.02101,"1227,54868-5989-00 ",.01)
 ;;54868-5989-00
 ;;9002226.02101,"1227,54868-5989-00 ",.02)
 ;;54868-5989-00
 ;;9002226.02101,"1227,54868-5990-00 ",.01)
 ;;54868-5990-00
 ;;9002226.02101,"1227,54868-5990-00 ",.02)
 ;;54868-5990-00
 ;;9002226.02101,"1227,54868-5995-00 ",.01)
 ;;54868-5995-00
 ;;9002226.02101,"1227,54868-5995-00 ",.02)
 ;;54868-5995-00
 ;;9002226.02101,"1227,54868-6361-00 ",.01)
 ;;54868-6361-00
 ;;9002226.02101,"1227,54868-6361-00 ",.02)
 ;;54868-6361-00
 ;;9002226.02101,"1227,55111-0593-30 ",.01)
 ;;55111-0593-30
 ;;9002226.02101,"1227,55111-0593-30 ",.02)
 ;;55111-0593-30
 ;;9002226.02101,"1227,55111-0593-90 ",.01)
 ;;55111-0593-90
 ;;9002226.02101,"1227,55111-0593-90 ",.02)
 ;;55111-0593-90
 ;;9002226.02101,"1227,55111-0594-30 ",.01)
 ;;55111-0594-30
 ;;9002226.02101,"1227,55111-0594-30 ",.02)
 ;;55111-0594-30
 ;;9002226.02101,"1227,55111-0594-90 ",.01)
 ;;55111-0594-90
 ;;9002226.02101,"1227,55111-0594-90 ",.02)
 ;;55111-0594-90
 ;;9002226.02101,"1227,55111-0625-60 ",.01)
 ;;55111-0625-60
 ;;9002226.02101,"1227,55111-0625-60 ",.02)
 ;;55111-0625-60
 ;;9002226.02101,"1227,55111-0626-60 ",.01)
 ;;55111-0626-60
 ;;9002226.02101,"1227,55111-0626-60 ",.02)
 ;;55111-0626-60
 ;;9002226.02101,"1227,55111-0725-10 ",.01)
 ;;55111-0725-10
 ;;9002226.02101,"1227,55111-0725-10 ",.02)
 ;;55111-0725-10