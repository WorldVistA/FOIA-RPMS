BGP51X5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1202,54569-5643-00 ",.02)
 ;;54569-5643-00
 ;;9002226.02101,"1202,54569-5656-00 ",.01)
 ;;54569-5656-00
 ;;9002226.02101,"1202,54569-5656-00 ",.02)
 ;;54569-5656-00
 ;;9002226.02101,"1202,54569-5664-00 ",.01)
 ;;54569-5664-00
 ;;9002226.02101,"1202,54569-5664-00 ",.02)
 ;;54569-5664-00
 ;;9002226.02101,"1202,54569-5719-00 ",.01)
 ;;54569-5719-00
 ;;9002226.02101,"1202,54569-5719-00 ",.02)
 ;;54569-5719-00
 ;;9002226.02101,"1202,54569-5752-00 ",.01)
 ;;54569-5752-00
 ;;9002226.02101,"1202,54569-5752-00 ",.02)
 ;;54569-5752-00
 ;;9002226.02101,"1202,54569-5752-01 ",.01)
 ;;54569-5752-01
 ;;9002226.02101,"1202,54569-5752-01 ",.02)
 ;;54569-5752-01
 ;;9002226.02101,"1202,54569-5752-02 ",.01)
 ;;54569-5752-02
 ;;9002226.02101,"1202,54569-5752-02 ",.02)
 ;;54569-5752-02
 ;;9002226.02101,"1202,54569-5781-00 ",.01)
 ;;54569-5781-00
 ;;9002226.02101,"1202,54569-5781-00 ",.02)
 ;;54569-5781-00
 ;;9002226.02101,"1202,54569-5805-00 ",.01)
 ;;54569-5805-00
 ;;9002226.02101,"1202,54569-5805-00 ",.02)
 ;;54569-5805-00
 ;;9002226.02101,"1202,54569-5864-00 ",.01)
 ;;54569-5864-00
 ;;9002226.02101,"1202,54569-5864-00 ",.02)
 ;;54569-5864-00
 ;;9002226.02101,"1202,54569-6034-00 ",.01)
 ;;54569-6034-00
 ;;9002226.02101,"1202,54569-6034-00 ",.02)
 ;;54569-6034-00
 ;;9002226.02101,"1202,54569-6034-01 ",.01)
 ;;54569-6034-01
 ;;9002226.02101,"1202,54569-6034-01 ",.02)
 ;;54569-6034-01
 ;;9002226.02101,"1202,54569-6086-00 ",.01)
 ;;54569-6086-00
 ;;9002226.02101,"1202,54569-6086-00 ",.02)
 ;;54569-6086-00
 ;;9002226.02101,"1202,54569-6102-00 ",.01)
 ;;54569-6102-00
 ;;9002226.02101,"1202,54569-6102-00 ",.02)
 ;;54569-6102-00
 ;;9002226.02101,"1202,54569-6122-00 ",.01)
 ;;54569-6122-00
 ;;9002226.02101,"1202,54569-6122-00 ",.02)
 ;;54569-6122-00
 ;;9002226.02101,"1202,54569-6123-00 ",.01)
 ;;54569-6123-00
 ;;9002226.02101,"1202,54569-6123-00 ",.02)
 ;;54569-6123-00
 ;;9002226.02101,"1202,54569-6143-00 ",.01)
 ;;54569-6143-00
 ;;9002226.02101,"1202,54569-6143-00 ",.02)
 ;;54569-6143-00
 ;;9002226.02101,"1202,54569-6159-00 ",.01)
 ;;54569-6159-00
 ;;9002226.02101,"1202,54569-6159-00 ",.02)
 ;;54569-6159-00
 ;;9002226.02101,"1202,54569-6170-00 ",.01)
 ;;54569-6170-00
 ;;9002226.02101,"1202,54569-6170-00 ",.02)
 ;;54569-6170-00
 ;;9002226.02101,"1202,54569-6170-01 ",.01)
 ;;54569-6170-01
 ;;9002226.02101,"1202,54569-6170-01 ",.02)
 ;;54569-6170-01
 ;;9002226.02101,"1202,54569-6171-00 ",.01)
 ;;54569-6171-00
 ;;9002226.02101,"1202,54569-6171-00 ",.02)
 ;;54569-6171-00
 ;;9002226.02101,"1202,54569-6199-00 ",.01)
 ;;54569-6199-00
 ;;9002226.02101,"1202,54569-6199-00 ",.02)
 ;;54569-6199-00
 ;;9002226.02101,"1202,54569-6206-00 ",.01)
 ;;54569-6206-00
 ;;9002226.02101,"1202,54569-6206-00 ",.02)
 ;;54569-6206-00
 ;;9002226.02101,"1202,54569-6214-00 ",.01)
 ;;54569-6214-00
 ;;9002226.02101,"1202,54569-6214-00 ",.02)
 ;;54569-6214-00
 ;;9002226.02101,"1202,54569-6230-00 ",.01)
 ;;54569-6230-00
 ;;9002226.02101,"1202,54569-6230-00 ",.02)
 ;;54569-6230-00
 ;;9002226.02101,"1202,54569-6236-00 ",.01)
 ;;54569-6236-00
 ;;9002226.02101,"1202,54569-6236-00 ",.02)
 ;;54569-6236-00
 ;;9002226.02101,"1202,54569-6270-00 ",.01)
 ;;54569-6270-00
 ;;9002226.02101,"1202,54569-6270-00 ",.02)
 ;;54569-6270-00
 ;;9002226.02101,"1202,54569-6351-00 ",.01)
 ;;54569-6351-00
 ;;9002226.02101,"1202,54569-6351-00 ",.02)
 ;;54569-6351-00
 ;;9002226.02101,"1202,54569-6352-00 ",.01)
 ;;54569-6352-00
 ;;9002226.02101,"1202,54569-6352-00 ",.02)
 ;;54569-6352-00
 ;;9002226.02101,"1202,54569-6366-00 ",.01)
 ;;54569-6366-00
 ;;9002226.02101,"1202,54569-6366-00 ",.02)
 ;;54569-6366-00
 ;;9002226.02101,"1202,54569-6403-00 ",.01)
 ;;54569-6403-00
 ;;9002226.02101,"1202,54569-6403-00 ",.02)
 ;;54569-6403-00
 ;;9002226.02101,"1202,54569-6419-00 ",.01)
 ;;54569-6419-00
 ;;9002226.02101,"1202,54569-6419-00 ",.02)
 ;;54569-6419-00
 ;;9002226.02101,"1202,54569-6484-00 ",.01)
 ;;54569-6484-00
 ;;9002226.02101,"1202,54569-6484-00 ",.02)
 ;;54569-6484-00
 ;;9002226.02101,"1202,54569-6484-01 ",.01)
 ;;54569-6484-01
 ;;9002226.02101,"1202,54569-6484-01 ",.02)
 ;;54569-6484-01
 ;;9002226.02101,"1202,54569-8620-00 ",.01)
 ;;54569-8620-00
 ;;9002226.02101,"1202,54569-8620-00 ",.02)
 ;;54569-8620-00
 ;;9002226.02101,"1202,54868-0117-00 ",.01)
 ;;54868-0117-00
 ;;9002226.02101,"1202,54868-0117-00 ",.02)
 ;;54868-0117-00
 ;;9002226.02101,"1202,54868-1974-00 ",.01)
 ;;54868-1974-00
 ;;9002226.02101,"1202,54868-1974-00 ",.02)
 ;;54868-1974-00
 ;;9002226.02101,"1202,54868-1974-02 ",.01)
 ;;54868-1974-02
 ;;9002226.02101,"1202,54868-1974-02 ",.02)
 ;;54868-1974-02
 ;;9002226.02101,"1202,54868-1974-03 ",.01)
 ;;54868-1974-03
 ;;9002226.02101,"1202,54868-1974-03 ",.02)
 ;;54868-1974-03
 ;;9002226.02101,"1202,54868-3352-00 ",.01)
 ;;54868-3352-00
 ;;9002226.02101,"1202,54868-3352-00 ",.02)
 ;;54868-3352-00
 ;;9002226.02101,"1202,54868-3352-01 ",.01)
 ;;54868-3352-01
 ;;9002226.02101,"1202,54868-3352-01 ",.02)
 ;;54868-3352-01
 ;;9002226.02101,"1202,54868-3353-00 ",.01)
 ;;54868-3353-00
 ;;9002226.02101,"1202,54868-3353-00 ",.02)
 ;;54868-3353-00
 ;;9002226.02101,"1202,54868-3360-00 ",.01)
 ;;54868-3360-00
 ;;9002226.02101,"1202,54868-3360-00 ",.02)
 ;;54868-3360-00
 ;;9002226.02101,"1202,54868-3448-00 ",.01)
 ;;54868-3448-00
 ;;9002226.02101,"1202,54868-3448-00 ",.02)
 ;;54868-3448-00
 ;;9002226.02101,"1202,54868-3693-00 ",.01)
 ;;54868-3693-00
 ;;9002226.02101,"1202,54868-3693-00 ",.02)
 ;;54868-3693-00
 ;;9002226.02101,"1202,54868-3693-02 ",.01)
 ;;54868-3693-02
 ;;9002226.02101,"1202,54868-3693-02 ",.02)
 ;;54868-3693-02
 ;;9002226.02101,"1202,54868-3699-00 ",.01)
 ;;54868-3699-00
 ;;9002226.02101,"1202,54868-3699-00 ",.02)
 ;;54868-3699-00
 ;;9002226.02101,"1202,54868-3699-01 ",.01)
 ;;54868-3699-01
 ;;9002226.02101,"1202,54868-3699-01 ",.02)
 ;;54868-3699-01
 ;;9002226.02101,"1202,54868-3699-02 ",.01)
 ;;54868-3699-02
 ;;9002226.02101,"1202,54868-3699-02 ",.02)
 ;;54868-3699-02
 ;;9002226.02101,"1202,54868-3782-03 ",.01)
 ;;54868-3782-03
 ;;9002226.02101,"1202,54868-3782-03 ",.02)
 ;;54868-3782-03
 ;;9002226.02101,"1202,54868-3844-00 ",.01)
 ;;54868-3844-00
 ;;9002226.02101,"1202,54868-3844-00 ",.02)
 ;;54868-3844-00
 ;;9002226.02101,"1202,54868-3844-01 ",.01)
 ;;54868-3844-01
 ;;9002226.02101,"1202,54868-3844-01 ",.02)
 ;;54868-3844-01
 ;;9002226.02101,"1202,54868-3947-00 ",.01)
 ;;54868-3947-00
 ;;9002226.02101,"1202,54868-3947-00 ",.02)
 ;;54868-3947-00
 ;;9002226.02101,"1202,54868-4520-00 ",.01)
 ;;54868-4520-00
 ;;9002226.02101,"1202,54868-4520-00 ",.02)
 ;;54868-4520-00
 ;;9002226.02101,"1202,54868-4522-00 ",.01)
 ;;54868-4522-00
 ;;9002226.02101,"1202,54868-4522-00 ",.02)
 ;;54868-4522-00
 ;;9002226.02101,"1202,54868-4522-01 ",.01)
 ;;54868-4522-01
 ;;9002226.02101,"1202,54868-4522-01 ",.02)
 ;;54868-4522-01
 ;;9002226.02101,"1202,54868-4666-00 ",.01)
 ;;54868-4666-00
 ;;9002226.02101,"1202,54868-4666-00 ",.02)
 ;;54868-4666-00
 ;;9002226.02101,"1202,54868-4668-00 ",.01)
 ;;54868-4668-00
 ;;9002226.02101,"1202,54868-4668-00 ",.02)
 ;;54868-4668-00
 ;;9002226.02101,"1202,54868-4669-00 ",.01)
 ;;54868-4669-00
 ;;9002226.02101,"1202,54868-4669-00 ",.02)
 ;;54868-4669-00
 ;;9002226.02101,"1202,54868-4853-00 ",.01)
 ;;54868-4853-00
 ;;9002226.02101,"1202,54868-4853-00 ",.02)
 ;;54868-4853-00
 ;;9002226.02101,"1202,54868-4854-00 ",.01)
 ;;54868-4854-00
 ;;9002226.02101,"1202,54868-4854-00 ",.02)
 ;;54868-4854-00
 ;;9002226.02101,"1202,54868-4857-00 ",.01)
 ;;54868-4857-00
 ;;9002226.02101,"1202,54868-4857-00 ",.02)
 ;;54868-4857-00
 ;;9002226.02101,"1202,54868-5141-00 ",.01)
 ;;54868-5141-00
 ;;9002226.02101,"1202,54868-5141-00 ",.02)
 ;;54868-5141-00
 ;;9002226.02101,"1202,54868-5416-00 ",.01)
 ;;54868-5416-00
 ;;9002226.02101,"1202,54868-5416-00 ",.02)
 ;;54868-5416-00
 ;;9002226.02101,"1202,54868-5464-00 ",.01)
 ;;54868-5464-00
 ;;9002226.02101,"1202,54868-5464-00 ",.02)
 ;;54868-5464-00
 ;;9002226.02101,"1202,54868-5566-00 ",.01)
 ;;54868-5566-00
 ;;9002226.02101,"1202,54868-5566-00 ",.02)
 ;;54868-5566-00
 ;;9002226.02101,"1202,54868-5595-00 ",.01)
 ;;54868-5595-00
 ;;9002226.02101,"1202,54868-5595-00 ",.02)
 ;;54868-5595-00
 ;;9002226.02101,"1202,54868-5600-00 ",.01)
 ;;54868-5600-00
 ;;9002226.02101,"1202,54868-5600-00 ",.02)
 ;;54868-5600-00
 ;;9002226.02101,"1202,54868-5643-00 ",.01)
 ;;54868-5643-00
 ;;9002226.02101,"1202,54868-5643-00 ",.02)
 ;;54868-5643-00
 ;;9002226.02101,"1202,54868-5809-00 ",.01)
 ;;54868-5809-00
 ;;9002226.02101,"1202,54868-5809-00 ",.02)
 ;;54868-5809-00
 ;;9002226.02101,"1202,54868-5838-00 ",.01)
 ;;54868-5838-00
 ;;9002226.02101,"1202,54868-5838-00 ",.02)
 ;;54868-5838-00
 ;;9002226.02101,"1202,54868-5864-00 ",.01)
 ;;54868-5864-00
 ;;9002226.02101,"1202,54868-5864-00 ",.02)
 ;;54868-5864-00
 ;;9002226.02101,"1202,54868-5969-00 ",.01)
 ;;54868-5969-00
 ;;9002226.02101,"1202,54868-5969-00 ",.02)
 ;;54868-5969-00
 ;;9002226.02101,"1202,54868-6360-00 ",.01)
 ;;54868-6360-00
 ;;9002226.02101,"1202,54868-6360-00 ",.02)
 ;;54868-6360-00
 ;;9002226.02101,"1202,54868-6368-00 ",.01)
 ;;54868-6368-00
 ;;9002226.02101,"1202,54868-6368-00 ",.02)
 ;;54868-6368-00
 ;;9002226.02101,"1202,54868-6369-00 ",.01)
 ;;54868-6369-00
 ;;9002226.02101,"1202,54868-6369-00 ",.02)
 ;;54868-6369-00
 ;;9002226.02101,"1202,54868-6370-00 ",.01)
 ;;54868-6370-00
 ;;9002226.02101,"1202,54868-6370-00 ",.02)
 ;;54868-6370-00
 ;;9002226.02101,"1202,54868-6371-00 ",.01)
 ;;54868-6371-00
 ;;9002226.02101,"1202,54868-6371-00 ",.02)
 ;;54868-6371-00
 ;;9002226.02101,"1202,55045-2856-06 ",.01)
 ;;55045-2856-06
 ;;9002226.02101,"1202,55045-2856-06 ",.02)
 ;;55045-2856-06
 ;;9002226.02101,"1202,55045-3481-03 ",.01)
 ;;55045-3481-03
 ;;9002226.02101,"1202,55045-3481-03 ",.02)
 ;;55045-3481-03
 ;;9002226.02101,"1202,55045-3482-01 ",.01)
 ;;55045-3482-01
 ;;9002226.02101,"1202,55045-3482-01 ",.02)
 ;;55045-3482-01
 ;;9002226.02101,"1202,55045-3549-01 ",.01)
 ;;55045-3549-01
 ;;9002226.02101,"1202,55045-3549-01 ",.02)
 ;;55045-3549-01
 ;;9002226.02101,"1202,55289-0389-04 ",.01)
 ;;55289-0389-04
 ;;9002226.02101,"1202,55289-0389-04 ",.02)
 ;;55289-0389-04
 ;;9002226.02101,"1202,55289-0389-06 ",.01)
 ;;55289-0389-06
 ;;9002226.02101,"1202,55289-0389-06 ",.02)
 ;;55289-0389-06
 ;;9002226.02101,"1202,55289-0389-14 ",.01)
 ;;55289-0389-14
 ;;9002226.02101,"1202,55289-0389-14 ",.02)
 ;;55289-0389-14
 ;;9002226.02101,"1202,55289-0389-20 ",.01)
 ;;55289-0389-20
 ;;9002226.02101,"1202,55289-0389-20 ",.02)
 ;;55289-0389-20
 ;;9002226.02101,"1202,55289-0392-03 ",.01)
 ;;55289-0392-03
 ;;9002226.02101,"1202,55289-0392-03 ",.02)
 ;;55289-0392-03
 ;;9002226.02101,"1202,55289-0477-27 ",.01)
 ;;55289-0477-27
 ;;9002226.02101,"1202,55289-0477-27 ",.02)
 ;;55289-0477-27
 ;;9002226.02101,"1202,55289-0947-12 ",.01)
 ;;55289-0947-12
 ;;9002226.02101,"1202,55289-0947-12 ",.02)
 ;;55289-0947-12
 ;;9002226.02101,"1202,55700-0096-04 ",.01)
 ;;55700-0096-04
 ;;9002226.02101,"1202,55700-0096-04 ",.02)
 ;;55700-0096-04
 ;;9002226.02101,"1202,58016-0455-00 ",.01)
 ;;58016-0455-00
 ;;9002226.02101,"1202,58016-0455-00 ",.02)
 ;;58016-0455-00
 ;;9002226.02101,"1202,58016-0455-02 ",.01)
 ;;58016-0455-02
 ;;9002226.02101,"1202,58016-0455-02 ",.02)
 ;;58016-0455-02
 ;;9002226.02101,"1202,58016-0455-30 ",.01)
 ;;58016-0455-30
 ;;9002226.02101,"1202,58016-0455-30 ",.02)
 ;;58016-0455-30
 ;;9002226.02101,"1202,58016-0455-60 ",.01)
 ;;58016-0455-60
 ;;9002226.02101,"1202,58016-0455-60 ",.02)
 ;;58016-0455-60
 ;;9002226.02101,"1202,58016-0455-90 ",.01)
 ;;58016-0455-90
 ;;9002226.02101,"1202,58016-0455-90 ",.02)
 ;;58016-0455-90
 ;;9002226.02101,"1202,58016-0689-00 ",.01)
 ;;58016-0689-00
 ;;9002226.02101,"1202,58016-0689-00 ",.02)
 ;;58016-0689-00
 ;;9002226.02101,"1202,58016-0689-30 ",.01)
 ;;58016-0689-30
 ;;9002226.02101,"1202,58016-0689-30 ",.02)
 ;;58016-0689-30
 ;;9002226.02101,"1202,58016-0689-60 ",.01)
 ;;58016-0689-60
 ;;9002226.02101,"1202,58016-0689-60 ",.02)
 ;;58016-0689-60
 ;;9002226.02101,"1202,58016-0689-90 ",.01)
 ;;58016-0689-90
 ;;9002226.02101,"1202,58016-0689-90 ",.02)
 ;;58016-0689-90
 ;;9002226.02101,"1202,58016-0690-00 ",.01)
 ;;58016-0690-00
 ;;9002226.02101,"1202,58016-0690-00 ",.02)
 ;;58016-0690-00
 ;;9002226.02101,"1202,58016-0690-18 ",.01)
 ;;58016-0690-18
 ;;9002226.02101,"1202,58016-0690-18 ",.02)
 ;;58016-0690-18
 ;;9002226.02101,"1202,58016-0690-30 ",.01)
 ;;58016-0690-30
 ;;9002226.02101,"1202,58016-0690-30 ",.02)
 ;;58016-0690-30
 ;;9002226.02101,"1202,58016-0690-60 ",.01)
 ;;58016-0690-60
 ;;9002226.02101,"1202,58016-0690-60 ",.02)
 ;;58016-0690-60
 ;;9002226.02101,"1202,58016-0690-90 ",.01)
 ;;58016-0690-90
 ;;9002226.02101,"1202,58016-0690-90 ",.02)
 ;;58016-0690-90
 ;;9002226.02101,"1202,58016-0698-00 ",.01)
 ;;58016-0698-00
 ;;9002226.02101,"1202,58016-0698-00 ",.02)
 ;;58016-0698-00
 ;;9002226.02101,"1202,58016-0698-30 ",.01)
 ;;58016-0698-30
 ;;9002226.02101,"1202,58016-0698-30 ",.02)
 ;;58016-0698-30
 ;;9002226.02101,"1202,58016-0698-60 ",.01)
 ;;58016-0698-60
 ;;9002226.02101,"1202,58016-0698-60 ",.02)
 ;;58016-0698-60
 ;;9002226.02101,"1202,58016-0698-90 ",.01)
 ;;58016-0698-90
 ;;9002226.02101,"1202,58016-0698-90 ",.02)
 ;;58016-0698-90
 ;;9002226.02101,"1202,58016-0699-00 ",.01)
 ;;58016-0699-00
 ;;9002226.02101,"1202,58016-0699-00 ",.02)
 ;;58016-0699-00
 ;;9002226.02101,"1202,58016-0699-30 ",.01)
 ;;58016-0699-30
 ;;9002226.02101,"1202,58016-0699-30 ",.02)
 ;;58016-0699-30