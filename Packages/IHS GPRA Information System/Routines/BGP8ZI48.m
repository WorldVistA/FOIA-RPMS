BGP8ZI48 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,55887-0160-60 ",.01)
 ;;55887-0160-60
 ;;9002226.02101,"869,55887-0160-60 ",.02)
 ;;55887-0160-60
 ;;9002226.02101,"869,55887-0160-90 ",.01)
 ;;55887-0160-90
 ;;9002226.02101,"869,55887-0160-90 ",.02)
 ;;55887-0160-90
 ;;9002226.02101,"869,55887-0168-30 ",.01)
 ;;55887-0168-30
 ;;9002226.02101,"869,55887-0168-30 ",.02)
 ;;55887-0168-30
 ;;9002226.02101,"869,55887-0168-60 ",.01)
 ;;55887-0168-60
 ;;9002226.02101,"869,55887-0168-60 ",.02)
 ;;55887-0168-60
 ;;9002226.02101,"869,55887-0168-90 ",.01)
 ;;55887-0168-90
 ;;9002226.02101,"869,55887-0168-90 ",.02)
 ;;55887-0168-90
 ;;9002226.02101,"869,55887-0193-90 ",.01)
 ;;55887-0193-90
 ;;9002226.02101,"869,55887-0193-90 ",.02)
 ;;55887-0193-90
 ;;9002226.02101,"869,55887-0237-30 ",.01)
 ;;55887-0237-30
 ;;9002226.02101,"869,55887-0237-30 ",.02)
 ;;55887-0237-30
 ;;9002226.02101,"869,55887-0237-60 ",.01)
 ;;55887-0237-60
 ;;9002226.02101,"869,55887-0237-60 ",.02)
 ;;55887-0237-60
 ;;9002226.02101,"869,55887-0237-86 ",.01)
 ;;55887-0237-86
 ;;9002226.02101,"869,55887-0237-86 ",.02)
 ;;55887-0237-86
 ;;9002226.02101,"869,55887-0237-90 ",.01)
 ;;55887-0237-90
 ;;9002226.02101,"869,55887-0237-90 ",.02)
 ;;55887-0237-90
 ;;9002226.02101,"869,55887-0256-20 ",.01)
 ;;55887-0256-20
 ;;9002226.02101,"869,55887-0256-20 ",.02)
 ;;55887-0256-20
 ;;9002226.02101,"869,55887-0260-90 ",.01)
 ;;55887-0260-90
 ;;9002226.02101,"869,55887-0260-90 ",.02)
 ;;55887-0260-90
 ;;9002226.02101,"869,55887-0261-01 ",.01)
 ;;55887-0261-01
 ;;9002226.02101,"869,55887-0261-01 ",.02)
 ;;55887-0261-01
 ;;9002226.02101,"869,55887-0261-90 ",.01)
 ;;55887-0261-90
 ;;9002226.02101,"869,55887-0261-90 ",.02)
 ;;55887-0261-90
 ;;9002226.02101,"869,55887-0283-30 ",.01)
 ;;55887-0283-30
 ;;9002226.02101,"869,55887-0283-30 ",.02)
 ;;55887-0283-30
 ;;9002226.02101,"869,55887-0283-60 ",.01)
 ;;55887-0283-60
 ;;9002226.02101,"869,55887-0283-60 ",.02)
 ;;55887-0283-60
 ;;9002226.02101,"869,55887-0283-90 ",.01)
 ;;55887-0283-90
 ;;9002226.02101,"869,55887-0283-90 ",.02)
 ;;55887-0283-90
 ;;9002226.02101,"869,55887-0284-30 ",.01)
 ;;55887-0284-30
 ;;9002226.02101,"869,55887-0284-30 ",.02)
 ;;55887-0284-30
 ;;9002226.02101,"869,55887-0284-60 ",.01)
 ;;55887-0284-60
 ;;9002226.02101,"869,55887-0284-60 ",.02)
 ;;55887-0284-60
 ;;9002226.02101,"869,55887-0284-90 ",.01)
 ;;55887-0284-90
 ;;9002226.02101,"869,55887-0284-90 ",.02)
 ;;55887-0284-90
 ;;9002226.02101,"869,55887-0288-30 ",.01)
 ;;55887-0288-30
 ;;9002226.02101,"869,55887-0288-30 ",.02)
 ;;55887-0288-30
 ;;9002226.02101,"869,55887-0289-30 ",.01)
 ;;55887-0289-30
 ;;9002226.02101,"869,55887-0289-30 ",.02)
 ;;55887-0289-30
 ;;9002226.02101,"869,55887-0289-60 ",.01)
 ;;55887-0289-60
 ;;9002226.02101,"869,55887-0289-60 ",.02)
 ;;55887-0289-60
 ;;9002226.02101,"869,55887-0356-30 ",.01)
 ;;55887-0356-30
 ;;9002226.02101,"869,55887-0356-30 ",.02)
 ;;55887-0356-30
 ;;9002226.02101,"869,55887-0356-60 ",.01)
 ;;55887-0356-60
 ;;9002226.02101,"869,55887-0356-60 ",.02)
 ;;55887-0356-60
 ;;9002226.02101,"869,55887-0394-90 ",.01)
 ;;55887-0394-90
 ;;9002226.02101,"869,55887-0394-90 ",.02)
 ;;55887-0394-90
 ;;9002226.02101,"869,55887-0398-60 ",.01)
 ;;55887-0398-60
 ;;9002226.02101,"869,55887-0398-60 ",.02)
 ;;55887-0398-60
 ;;9002226.02101,"869,55887-0433-30 ",.01)
 ;;55887-0433-30
 ;;9002226.02101,"869,55887-0433-30 ",.02)
 ;;55887-0433-30
 ;;9002226.02101,"869,55887-0439-30 ",.01)
 ;;55887-0439-30
 ;;9002226.02101,"869,55887-0439-30 ",.02)
 ;;55887-0439-30
 ;;9002226.02101,"869,55887-0439-60 ",.01)
 ;;55887-0439-60
 ;;9002226.02101,"869,55887-0439-60 ",.02)
 ;;55887-0439-60
 ;;9002226.02101,"869,55887-0439-92 ",.01)
 ;;55887-0439-92
 ;;9002226.02101,"869,55887-0439-92 ",.02)
 ;;55887-0439-92
 ;;9002226.02101,"869,55887-0458-60 ",.01)
 ;;55887-0458-60
 ;;9002226.02101,"869,55887-0458-60 ",.02)
 ;;55887-0458-60
 ;;9002226.02101,"869,55887-0458-90 ",.01)
 ;;55887-0458-90
 ;;9002226.02101,"869,55887-0458-90 ",.02)
 ;;55887-0458-90
 ;;9002226.02101,"869,55887-0490-30 ",.01)
 ;;55887-0490-30
 ;;9002226.02101,"869,55887-0490-30 ",.02)
 ;;55887-0490-30
 ;;9002226.02101,"869,55887-0490-60 ",.01)
 ;;55887-0490-60
 ;;9002226.02101,"869,55887-0490-60 ",.02)
 ;;55887-0490-60
 ;;9002226.02101,"869,55887-0490-82 ",.01)
 ;;55887-0490-82
 ;;9002226.02101,"869,55887-0490-82 ",.02)
 ;;55887-0490-82
 ;;9002226.02101,"869,55887-0490-90 ",.01)
 ;;55887-0490-90
 ;;9002226.02101,"869,55887-0490-90 ",.02)
 ;;55887-0490-90
 ;;9002226.02101,"869,55887-0496-30 ",.01)
 ;;55887-0496-30
 ;;9002226.02101,"869,55887-0496-30 ",.02)
 ;;55887-0496-30
 ;;9002226.02101,"869,55887-0496-90 ",.01)
 ;;55887-0496-90
 ;;9002226.02101,"869,55887-0496-90 ",.02)
 ;;55887-0496-90
 ;;9002226.02101,"869,55887-0498-30 ",.01)
 ;;55887-0498-30
 ;;9002226.02101,"869,55887-0498-30 ",.02)
 ;;55887-0498-30
 ;;9002226.02101,"869,55887-0498-60 ",.01)
 ;;55887-0498-60
 ;;9002226.02101,"869,55887-0498-60 ",.02)
 ;;55887-0498-60
 ;;9002226.02101,"869,55887-0502-60 ",.01)
 ;;55887-0502-60
 ;;9002226.02101,"869,55887-0502-60 ",.02)
 ;;55887-0502-60
 ;;9002226.02101,"869,55887-0511-20 ",.01)
 ;;55887-0511-20
 ;;9002226.02101,"869,55887-0511-20 ",.02)
 ;;55887-0511-20
 ;;9002226.02101,"869,55887-0511-30 ",.01)
 ;;55887-0511-30
 ;;9002226.02101,"869,55887-0511-30 ",.02)
 ;;55887-0511-30
 ;;9002226.02101,"869,55887-0511-60 ",.01)
 ;;55887-0511-60
 ;;9002226.02101,"869,55887-0511-60 ",.02)
 ;;55887-0511-60
 ;;9002226.02101,"869,55887-0511-82 ",.01)
 ;;55887-0511-82
 ;;9002226.02101,"869,55887-0511-82 ",.02)
 ;;55887-0511-82
 ;;9002226.02101,"869,55887-0511-90 ",.01)
 ;;55887-0511-90
 ;;9002226.02101,"869,55887-0511-90 ",.02)
 ;;55887-0511-90
 ;;9002226.02101,"869,55887-0518-15 ",.01)
 ;;55887-0518-15
 ;;9002226.02101,"869,55887-0518-15 ",.02)
 ;;55887-0518-15
 ;;9002226.02101,"869,55887-0518-30 ",.01)
 ;;55887-0518-30
 ;;9002226.02101,"869,55887-0518-30 ",.02)
 ;;55887-0518-30
 ;;9002226.02101,"869,55887-0518-90 ",.01)
 ;;55887-0518-90
 ;;9002226.02101,"869,55887-0518-90 ",.02)
 ;;55887-0518-90
 ;;9002226.02101,"869,55887-0549-90 ",.01)
 ;;55887-0549-90
 ;;9002226.02101,"869,55887-0549-90 ",.02)
 ;;55887-0549-90
 ;;9002226.02101,"869,55887-0570-40 ",.01)
 ;;55887-0570-40
 ;;9002226.02101,"869,55887-0570-40 ",.02)
 ;;55887-0570-40
 ;;9002226.02101,"869,55887-0570-92 ",.01)
 ;;55887-0570-92
 ;;9002226.02101,"869,55887-0570-92 ",.02)
 ;;55887-0570-92
 ;;9002226.02101,"869,55887-0572-14 ",.01)
 ;;55887-0572-14
 ;;9002226.02101,"869,55887-0572-14 ",.02)
 ;;55887-0572-14
 ;;9002226.02101,"869,55887-0572-90 ",.01)
 ;;55887-0572-90
 ;;9002226.02101,"869,55887-0572-90 ",.02)
 ;;55887-0572-90
 ;;9002226.02101,"869,55887-0650-90 ",.01)
 ;;55887-0650-90
 ;;9002226.02101,"869,55887-0650-90 ",.02)
 ;;55887-0650-90
 ;;9002226.02101,"869,55887-0650-92 ",.01)
 ;;55887-0650-92
 ;;9002226.02101,"869,55887-0650-92 ",.02)
 ;;55887-0650-92
 ;;9002226.02101,"869,55887-0661-60 ",.01)
 ;;55887-0661-60
 ;;9002226.02101,"869,55887-0661-60 ",.02)
 ;;55887-0661-60
 ;;9002226.02101,"869,55887-0661-90 ",.01)
 ;;55887-0661-90
 ;;9002226.02101,"869,55887-0661-90 ",.02)
 ;;55887-0661-90
 ;;9002226.02101,"869,55887-0662-30 ",.01)
 ;;55887-0662-30
 ;;9002226.02101,"869,55887-0662-30 ",.02)
 ;;55887-0662-30
 ;;9002226.02101,"869,55887-0662-60 ",.01)
 ;;55887-0662-60
 ;;9002226.02101,"869,55887-0662-60 ",.02)
 ;;55887-0662-60
 ;;9002226.02101,"869,55887-0663-30 ",.01)
 ;;55887-0663-30
 ;;9002226.02101,"869,55887-0663-30 ",.02)
 ;;55887-0663-30
 ;;9002226.02101,"869,55887-0663-60 ",.01)
 ;;55887-0663-60
 ;;9002226.02101,"869,55887-0663-60 ",.02)
 ;;55887-0663-60
 ;;9002226.02101,"869,55887-0663-90 ",.01)
 ;;55887-0663-90
 ;;9002226.02101,"869,55887-0663-90 ",.02)
 ;;55887-0663-90
 ;;9002226.02101,"869,55887-0745-50 ",.01)
 ;;55887-0745-50
 ;;9002226.02101,"869,55887-0745-50 ",.02)
 ;;55887-0745-50
 ;;9002226.02101,"869,55887-0871-30 ",.01)
 ;;55887-0871-30
 ;;9002226.02101,"869,55887-0871-30 ",.02)
 ;;55887-0871-30
 ;;9002226.02101,"869,55887-0925-30 ",.01)
 ;;55887-0925-30
 ;;9002226.02101,"869,55887-0925-30 ",.02)
 ;;55887-0925-30
 ;;9002226.02101,"869,57237-0007-05 ",.01)
 ;;57237-0007-05
 ;;9002226.02101,"869,57237-0007-05 ",.02)
 ;;57237-0007-05
 ;;9002226.02101,"869,57237-0007-30 ",.01)
 ;;57237-0007-30
 ;;9002226.02101,"869,57237-0007-30 ",.02)
 ;;57237-0007-30
 ;;9002226.02101,"869,57237-0008-05 ",.01)
 ;;57237-0008-05
 ;;9002226.02101,"869,57237-0008-05 ",.02)
 ;;57237-0008-05
 ;;9002226.02101,"869,57237-0008-30 ",.01)
 ;;57237-0008-30
 ;;9002226.02101,"869,57237-0008-30 ",.02)
 ;;57237-0008-30
 ;;9002226.02101,"869,57237-0009-05 ",.01)
 ;;57237-0009-05
 ;;9002226.02101,"869,57237-0009-05 ",.02)
 ;;57237-0009-05
 ;;9002226.02101,"869,57237-0009-30 ",.01)
 ;;57237-0009-30
 ;;9002226.02101,"869,57237-0009-30 ",.02)
 ;;57237-0009-30
 ;;9002226.02101,"869,57237-0010-05 ",.01)
 ;;57237-0010-05
 ;;9002226.02101,"869,57237-0010-05 ",.02)
 ;;57237-0010-05
 ;;9002226.02101,"869,57237-0010-30 ",.01)
 ;;57237-0010-30
 ;;9002226.02101,"869,57237-0010-30 ",.02)
 ;;57237-0010-30
 ;;9002226.02101,"869,57237-0011-06 ",.01)
 ;;57237-0011-06
 ;;9002226.02101,"869,57237-0011-06 ",.02)
 ;;57237-0011-06
 ;;9002226.02101,"869,57237-0012-06 ",.01)
 ;;57237-0012-06
 ;;9002226.02101,"869,57237-0012-06 ",.02)
 ;;57237-0012-06
 ;;9002226.02101,"869,57237-0013-06 ",.01)
 ;;57237-0013-06
 ;;9002226.02101,"869,57237-0013-06 ",.02)
 ;;57237-0013-06
 ;;9002226.02101,"869,57237-0017-60 ",.01)
 ;;57237-0017-60
 ;;9002226.02101,"869,57237-0017-60 ",.02)
 ;;57237-0017-60
 ;;9002226.02101,"869,57237-0018-30 ",.01)
 ;;57237-0018-30
 ;;9002226.02101,"869,57237-0018-30 ",.02)
 ;;57237-0018-30
 ;;9002226.02101,"869,57237-0018-90 ",.01)
 ;;57237-0018-90
 ;;9002226.02101,"869,57237-0018-90 ",.02)
 ;;57237-0018-90
 ;;9002226.02101,"869,57237-0018-99 ",.01)
 ;;57237-0018-99
 ;;9002226.02101,"869,57237-0018-99 ",.02)
 ;;57237-0018-99
 ;;9002226.02101,"869,57237-0019-30 ",.01)
 ;;57237-0019-30
 ;;9002226.02101,"869,57237-0019-30 ",.02)
 ;;57237-0019-30
 ;;9002226.02101,"869,57237-0019-90 ",.01)
 ;;57237-0019-90
 ;;9002226.02101,"869,57237-0019-90 ",.02)
 ;;57237-0019-90
 ;;9002226.02101,"869,57237-0019-99 ",.01)
 ;;57237-0019-99
 ;;9002226.02101,"869,57237-0019-99 ",.02)
 ;;57237-0019-99
 ;;9002226.02101,"869,57237-0172-01 ",.01)
 ;;57237-0172-01
 ;;9002226.02101,"869,57237-0172-01 ",.02)
 ;;57237-0172-01
 ;;9002226.02101,"869,57237-0172-90 ",.01)
 ;;57237-0172-90
 ;;9002226.02101,"869,57237-0172-90 ",.02)
 ;;57237-0172-90
 ;;9002226.02101,"869,57237-0173-01 ",.01)
 ;;57237-0173-01
 ;;9002226.02101,"869,57237-0173-01 ",.02)
 ;;57237-0173-01
 ;;9002226.02101,"869,57237-0173-90 ",.01)
 ;;57237-0173-90
 ;;9002226.02101,"869,57237-0173-90 ",.02)
 ;;57237-0173-90
 ;;9002226.02101,"869,57237-0174-01 ",.01)
 ;;57237-0174-01
 ;;9002226.02101,"869,57237-0174-01 ",.02)
 ;;57237-0174-01
 ;;9002226.02101,"869,57237-0174-90 ",.01)
 ;;57237-0174-90
 ;;9002226.02101,"869,57237-0174-90 ",.02)
 ;;57237-0174-90
 ;;9002226.02101,"869,57237-0175-01 ",.01)
 ;;57237-0175-01
 ;;9002226.02101,"869,57237-0175-01 ",.02)
 ;;57237-0175-01
 ;;9002226.02101,"869,57237-0175-90 ",.01)
 ;;57237-0175-90
 ;;9002226.02101,"869,57237-0175-90 ",.02)
 ;;57237-0175-90
 ;;9002226.02101,"869,57237-0176-01 ",.01)
 ;;57237-0176-01
 ;;9002226.02101,"869,57237-0176-01 ",.02)
 ;;57237-0176-01
 ;;9002226.02101,"869,57237-0176-90 ",.01)
 ;;57237-0176-90
 ;;9002226.02101,"869,57237-0176-90 ",.02)
 ;;57237-0176-90
 ;;9002226.02101,"869,57664-0357-88 ",.01)
 ;;57664-0357-88
 ;;9002226.02101,"869,57664-0357-88 ",.02)
 ;;57664-0357-88