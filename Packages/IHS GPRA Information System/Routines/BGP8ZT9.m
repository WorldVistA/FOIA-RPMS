BGP8ZT9 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 13, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1800,54868-2642-02 ",.02)
 ;;54868-2642-02
 ;;9002226.02101,"1800,54868-2642-03 ",.01)
 ;;54868-2642-03
 ;;9002226.02101,"1800,54868-2642-03 ",.02)
 ;;54868-2642-03
 ;;9002226.02101,"1800,54868-2642-04 ",.01)
 ;;54868-2642-04
 ;;9002226.02101,"1800,54868-2642-04 ",.02)
 ;;54868-2642-04
 ;;9002226.02101,"1800,54868-2643-00 ",.01)
 ;;54868-2643-00
 ;;9002226.02101,"1800,54868-2643-00 ",.02)
 ;;54868-2643-00
 ;;9002226.02101,"1800,54868-2643-01 ",.01)
 ;;54868-2643-01
 ;;9002226.02101,"1800,54868-2643-01 ",.02)
 ;;54868-2643-01
 ;;9002226.02101,"1800,54868-2643-02 ",.01)
 ;;54868-2643-02
 ;;9002226.02101,"1800,54868-2643-02 ",.02)
 ;;54868-2643-02
 ;;9002226.02101,"1800,54868-2643-04 ",.01)
 ;;54868-2643-04
 ;;9002226.02101,"1800,54868-2643-04 ",.02)
 ;;54868-2643-04
 ;;9002226.02101,"1800,54868-2643-05 ",.01)
 ;;54868-2643-05
 ;;9002226.02101,"1800,54868-2643-05 ",.02)
 ;;54868-2643-05
 ;;9002226.02101,"1800,54868-2643-06 ",.01)
 ;;54868-2643-06
 ;;9002226.02101,"1800,54868-2643-06 ",.02)
 ;;54868-2643-06
 ;;9002226.02101,"1800,54868-2643-07 ",.01)
 ;;54868-2643-07
 ;;9002226.02101,"1800,54868-2643-07 ",.02)
 ;;54868-2643-07
 ;;9002226.02101,"1800,54868-2643-08 ",.01)
 ;;54868-2643-08
 ;;9002226.02101,"1800,54868-2643-08 ",.02)
 ;;54868-2643-08
 ;;9002226.02101,"1800,54868-4431-00 ",.01)
 ;;54868-4431-00
 ;;9002226.02101,"1800,54868-4431-00 ",.02)
 ;;54868-4431-00
 ;;9002226.02101,"1800,54868-4431-01 ",.01)
 ;;54868-4431-01
 ;;9002226.02101,"1800,54868-4431-01 ",.02)
 ;;54868-4431-01
 ;;9002226.02101,"1800,54868-4431-02 ",.01)
 ;;54868-4431-02
 ;;9002226.02101,"1800,54868-4431-02 ",.02)
 ;;54868-4431-02
 ;;9002226.02101,"1800,54868-4431-03 ",.01)
 ;;54868-4431-03
 ;;9002226.02101,"1800,54868-4431-03 ",.02)
 ;;54868-4431-03
 ;;9002226.02101,"1800,54868-5139-00 ",.01)
 ;;54868-5139-00
 ;;9002226.02101,"1800,54868-5139-00 ",.02)
 ;;54868-5139-00
 ;;9002226.02101,"1800,54868-5139-01 ",.01)
 ;;54868-5139-01
 ;;9002226.02101,"1800,54868-5139-01 ",.02)
 ;;54868-5139-01
 ;;9002226.02101,"1800,54868-5273-00 ",.01)
 ;;54868-5273-00
 ;;9002226.02101,"1800,54868-5273-00 ",.02)
 ;;54868-5273-00
 ;;9002226.02101,"1800,54868-5273-01 ",.01)
 ;;54868-5273-01
 ;;9002226.02101,"1800,54868-5273-01 ",.02)
 ;;54868-5273-01
 ;;9002226.02101,"1800,54868-5273-02 ",.01)
 ;;54868-5273-02
 ;;9002226.02101,"1800,54868-5273-02 ",.02)
 ;;54868-5273-02
 ;;9002226.02101,"1800,54868-5394-00 ",.01)
 ;;54868-5394-00
 ;;9002226.02101,"1800,54868-5394-00 ",.02)
 ;;54868-5394-00
 ;;9002226.02101,"1800,54868-5394-01 ",.01)
 ;;54868-5394-01
 ;;9002226.02101,"1800,54868-5394-01 ",.02)
 ;;54868-5394-01
 ;;9002226.02101,"1800,54868-5394-02 ",.01)
 ;;54868-5394-02
 ;;9002226.02101,"1800,54868-5394-02 ",.02)
 ;;54868-5394-02
 ;;9002226.02101,"1800,54868-5394-03 ",.01)
 ;;54868-5394-03
 ;;9002226.02101,"1800,54868-5394-03 ",.02)
 ;;54868-5394-03
 ;;9002226.02101,"1800,54868-5426-00 ",.01)
 ;;54868-5426-00
 ;;9002226.02101,"1800,54868-5426-00 ",.02)
 ;;54868-5426-00
 ;;9002226.02101,"1800,54868-5426-01 ",.01)
 ;;54868-5426-01
 ;;9002226.02101,"1800,54868-5426-01 ",.02)
 ;;54868-5426-01
 ;;9002226.02101,"1800,54868-5426-02 ",.01)
 ;;54868-5426-02
 ;;9002226.02101,"1800,54868-5426-02 ",.02)
 ;;54868-5426-02
 ;;9002226.02101,"1800,54868-5426-03 ",.01)
 ;;54868-5426-03
 ;;9002226.02101,"1800,54868-5426-03 ",.02)
 ;;54868-5426-03
 ;;9002226.02101,"1800,54868-5426-04 ",.01)
 ;;54868-5426-04
 ;;9002226.02101,"1800,54868-5426-04 ",.02)
 ;;54868-5426-04
 ;;9002226.02101,"1800,54868-5439-00 ",.01)
 ;;54868-5439-00
 ;;9002226.02101,"1800,54868-5439-00 ",.02)
 ;;54868-5439-00
 ;;9002226.02101,"1800,54868-5439-01 ",.01)
 ;;54868-5439-01
 ;;9002226.02101,"1800,54868-5439-01 ",.02)
 ;;54868-5439-01
 ;;9002226.02101,"1800,54868-5461-00 ",.01)
 ;;54868-5461-00
 ;;9002226.02101,"1800,54868-5461-00 ",.02)
 ;;54868-5461-00
 ;;9002226.02101,"1800,54868-5461-01 ",.01)
 ;;54868-5461-01
 ;;9002226.02101,"1800,54868-5461-01 ",.02)
 ;;54868-5461-01
 ;;9002226.02101,"1800,54868-5461-02 ",.01)
 ;;54868-5461-02
 ;;9002226.02101,"1800,54868-5461-02 ",.02)
 ;;54868-5461-02
 ;;9002226.02101,"1800,54868-5908-00 ",.01)
 ;;54868-5908-00
 ;;9002226.02101,"1800,54868-5908-00 ",.02)
 ;;54868-5908-00
 ;;9002226.02101,"1800,54868-5908-01 ",.01)
 ;;54868-5908-01
 ;;9002226.02101,"1800,54868-5908-01 ",.02)
 ;;54868-5908-01
 ;;9002226.02101,"1800,54868-5909-00 ",.01)
 ;;54868-5909-00
 ;;9002226.02101,"1800,54868-5909-00 ",.02)
 ;;54868-5909-00
 ;;9002226.02101,"1800,54868-5909-01 ",.01)
 ;;54868-5909-01
 ;;9002226.02101,"1800,54868-5909-01 ",.02)
 ;;54868-5909-01
 ;;9002226.02101,"1800,54868-6189-00 ",.01)
 ;;54868-6189-00
 ;;9002226.02101,"1800,54868-6189-00 ",.02)
 ;;54868-6189-00
 ;;9002226.02101,"1800,54868-6189-01 ",.01)
 ;;54868-6189-01
 ;;9002226.02101,"1800,54868-6189-01 ",.02)
 ;;54868-6189-01
 ;;9002226.02101,"1800,54868-6215-00 ",.01)
 ;;54868-6215-00
 ;;9002226.02101,"1800,54868-6215-00 ",.02)
 ;;54868-6215-00
 ;;9002226.02101,"1800,54868-6215-01 ",.01)
 ;;54868-6215-01
 ;;9002226.02101,"1800,54868-6215-01 ",.02)
 ;;54868-6215-01
 ;;9002226.02101,"1800,54868-6215-02 ",.01)
 ;;54868-6215-02
 ;;9002226.02101,"1800,54868-6215-02 ",.02)
 ;;54868-6215-02
 ;;9002226.02101,"1800,54868-6215-03 ",.01)
 ;;54868-6215-03
 ;;9002226.02101,"1800,54868-6215-03 ",.02)
 ;;54868-6215-03
 ;;9002226.02101,"1800,55111-0478-01 ",.01)
 ;;55111-0478-01
 ;;9002226.02101,"1800,55111-0478-01 ",.02)
 ;;55111-0478-01
 ;;9002226.02101,"1800,55111-0478-05 ",.01)
 ;;55111-0478-05
 ;;9002226.02101,"1800,55111-0478-05 ",.02)
 ;;55111-0478-05
 ;;9002226.02101,"1800,55111-0479-01 ",.01)
 ;;55111-0479-01
 ;;9002226.02101,"1800,55111-0479-01 ",.02)
 ;;55111-0479-01
 ;;9002226.02101,"1800,55111-0479-05 ",.01)
 ;;55111-0479-05
 ;;9002226.02101,"1800,55111-0479-05 ",.02)
 ;;55111-0479-05
 ;;9002226.02101,"1800,55111-0617-01 ",.01)
 ;;55111-0617-01
 ;;9002226.02101,"1800,55111-0617-01 ",.02)
 ;;55111-0617-01
 ;;9002226.02101,"1800,55111-0619-01 ",.01)
 ;;55111-0619-01
 ;;9002226.02101,"1800,55111-0619-01 ",.02)
 ;;55111-0619-01
 ;;9002226.02101,"1800,55111-0629-30 ",.01)
 ;;55111-0629-30
 ;;9002226.02101,"1800,55111-0629-30 ",.02)
 ;;55111-0629-30
 ;;9002226.02101,"1800,55289-0014-30 ",.01)
 ;;55289-0014-30
 ;;9002226.02101,"1800,55289-0014-30 ",.02)
 ;;55289-0014-30
 ;;9002226.02101,"1800,55289-0205-30 ",.01)
 ;;55289-0205-30
 ;;9002226.02101,"1800,55289-0205-30 ",.02)
 ;;55289-0205-30
 ;;9002226.02101,"1800,55289-0399-02 ",.01)
 ;;55289-0399-02
 ;;9002226.02101,"1800,55289-0399-02 ",.02)
 ;;55289-0399-02
 ;;9002226.02101,"1800,55289-0399-03 ",.01)
 ;;55289-0399-03
 ;;9002226.02101,"1800,55289-0399-03 ",.02)
 ;;55289-0399-03
 ;;9002226.02101,"1800,55289-0399-10 ",.01)
 ;;55289-0399-10
 ;;9002226.02101,"1800,55289-0399-10 ",.02)
 ;;55289-0399-10
 ;;9002226.02101,"1800,55289-0399-14 ",.01)
 ;;55289-0399-14
 ;;9002226.02101,"1800,55289-0399-14 ",.02)
 ;;55289-0399-14
 ;;9002226.02101,"1800,55289-0399-30 ",.01)
 ;;55289-0399-30
 ;;9002226.02101,"1800,55289-0399-30 ",.02)
 ;;55289-0399-30
 ;;9002226.02101,"1800,55289-0399-60 ",.01)
 ;;55289-0399-60
 ;;9002226.02101,"1800,55289-0399-60 ",.02)
 ;;55289-0399-60
 ;;9002226.02101,"1800,55289-0399-79 ",.01)
 ;;55289-0399-79
 ;;9002226.02101,"1800,55289-0399-79 ",.02)
 ;;55289-0399-79
 ;;9002226.02101,"1800,55289-0399-90 ",.01)
 ;;55289-0399-90
 ;;9002226.02101,"1800,55289-0399-90 ",.02)
 ;;55289-0399-90
 ;;9002226.02101,"1800,55289-0419-01 ",.01)
 ;;55289-0419-01
 ;;9002226.02101,"1800,55289-0419-01 ",.02)
 ;;55289-0419-01
 ;;9002226.02101,"1800,55289-0419-06 ",.01)
 ;;55289-0419-06
 ;;9002226.02101,"1800,55289-0419-06 ",.02)
 ;;55289-0419-06
 ;;9002226.02101,"1800,55289-0419-10 ",.01)
 ;;55289-0419-10
 ;;9002226.02101,"1800,55289-0419-10 ",.02)
 ;;55289-0419-10
 ;;9002226.02101,"1800,55289-0419-14 ",.01)
 ;;55289-0419-14
 ;;9002226.02101,"1800,55289-0419-14 ",.02)
 ;;55289-0419-14
 ;;9002226.02101,"1800,55289-0419-15 ",.01)
 ;;55289-0419-15
 ;;9002226.02101,"1800,55289-0419-15 ",.02)
 ;;55289-0419-15
 ;;9002226.02101,"1800,55289-0419-21 ",.01)
 ;;55289-0419-21
 ;;9002226.02101,"1800,55289-0419-21 ",.02)
 ;;55289-0419-21
 ;;9002226.02101,"1800,55289-0419-30 ",.01)
 ;;55289-0419-30
 ;;9002226.02101,"1800,55289-0419-30 ",.02)
 ;;55289-0419-30
 ;;9002226.02101,"1800,55289-0419-60 ",.01)
 ;;55289-0419-60
 ;;9002226.02101,"1800,55289-0419-60 ",.02)
 ;;55289-0419-60
 ;;9002226.02101,"1800,55289-0572-30 ",.01)
 ;;55289-0572-30
 ;;9002226.02101,"1800,55289-0572-30 ",.02)
 ;;55289-0572-30
 ;;9002226.02101,"1800,55289-0729-06 ",.01)
 ;;55289-0729-06
 ;;9002226.02101,"1800,55289-0729-06 ",.02)
 ;;55289-0729-06
 ;;9002226.02101,"1800,55289-0729-12 ",.01)
 ;;55289-0729-12
 ;;9002226.02101,"1800,55289-0729-12 ",.02)
 ;;55289-0729-12
 ;;9002226.02101,"1800,55289-0729-30 ",.01)
 ;;55289-0729-30
 ;;9002226.02101,"1800,55289-0729-30 ",.02)
 ;;55289-0729-30
 ;;9002226.02101,"1800,55289-0792-06 ",.01)
 ;;55289-0792-06
 ;;9002226.02101,"1800,55289-0792-06 ",.02)
 ;;55289-0792-06
 ;;9002226.02101,"1800,55289-0792-10 ",.01)
 ;;55289-0792-10
 ;;9002226.02101,"1800,55289-0792-10 ",.02)
 ;;55289-0792-10
 ;;9002226.02101,"1800,55289-0792-12 ",.01)
 ;;55289-0792-12
 ;;9002226.02101,"1800,55289-0792-12 ",.02)
 ;;55289-0792-12
 ;;9002226.02101,"1800,55289-0792-20 ",.01)
 ;;55289-0792-20
 ;;9002226.02101,"1800,55289-0792-20 ",.02)
 ;;55289-0792-20
 ;;9002226.02101,"1800,55289-0792-30 ",.01)
 ;;55289-0792-30
 ;;9002226.02101,"1800,55289-0792-30 ",.02)
 ;;55289-0792-30
 ;;9002226.02101,"1800,55700-0132-30 ",.01)
 ;;55700-0132-30
 ;;9002226.02101,"1800,55700-0132-30 ",.02)
 ;;55700-0132-30
 ;;9002226.02101,"1800,55700-0133-30 ",.01)
 ;;55700-0133-30
 ;;9002226.02101,"1800,55700-0133-30 ",.02)
 ;;55700-0133-30
 ;;9002226.02101,"1800,55700-0135-30 ",.01)
 ;;55700-0135-30
 ;;9002226.02101,"1800,55700-0135-30 ",.02)
 ;;55700-0135-30
 ;;9002226.02101,"1800,55700-0135-60 ",.01)
 ;;55700-0135-60
 ;;9002226.02101,"1800,55700-0135-60 ",.02)
 ;;55700-0135-60
 ;;9002226.02101,"1800,55700-0153-30 ",.01)
 ;;55700-0153-30
 ;;9002226.02101,"1800,55700-0153-30 ",.02)
 ;;55700-0153-30
 ;;9002226.02101,"1800,55700-0154-30 ",.01)
 ;;55700-0154-30
 ;;9002226.02101,"1800,55700-0154-30 ",.02)
 ;;55700-0154-30
 ;;9002226.02101,"1800,55700-0172-30 ",.01)
 ;;55700-0172-30
 ;;9002226.02101,"1800,55700-0172-30 ",.02)
 ;;55700-0172-30
 ;;9002226.02101,"1800,55700-0172-60 ",.01)
 ;;55700-0172-60
 ;;9002226.02101,"1800,55700-0172-60 ",.02)
 ;;55700-0172-60
 ;;9002226.02101,"1800,55700-0190-30 ",.01)
 ;;55700-0190-30
 ;;9002226.02101,"1800,55700-0190-30 ",.02)
 ;;55700-0190-30
 ;;9002226.02101,"1800,55700-0251-30 ",.01)
 ;;55700-0251-30
 ;;9002226.02101,"1800,55700-0251-30 ",.02)
 ;;55700-0251-30
 ;;9002226.02101,"1800,55700-0268-30 ",.01)
 ;;55700-0268-30
 ;;9002226.02101,"1800,55700-0268-30 ",.02)
 ;;55700-0268-30
 ;;9002226.02101,"1800,55700-0268-60 ",.01)
 ;;55700-0268-60
 ;;9002226.02101,"1800,55700-0268-60 ",.02)
 ;;55700-0268-60
 ;;9002226.02101,"1800,55700-0343-15 ",.01)
 ;;55700-0343-15
 ;;9002226.02101,"1800,55700-0343-15 ",.02)
 ;;55700-0343-15
 ;;9002226.02101,"1800,55700-0343-30 ",.01)
 ;;55700-0343-30
 ;;9002226.02101,"1800,55700-0343-30 ",.02)
 ;;55700-0343-30
 ;;9002226.02101,"1800,55700-0343-60 ",.01)
 ;;55700-0343-60
 ;;9002226.02101,"1800,55700-0343-60 ",.02)
 ;;55700-0343-60
 ;;9002226.02101,"1800,55700-0357-15 ",.01)
 ;;55700-0357-15
 ;;9002226.02101,"1800,55700-0357-15 ",.02)
 ;;55700-0357-15
 ;;9002226.02101,"1800,55700-0357-30 ",.01)
 ;;55700-0357-30
 ;;9002226.02101,"1800,55700-0357-30 ",.02)
 ;;55700-0357-30