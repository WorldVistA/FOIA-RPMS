BGP8ZK3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"462,16729-0119-15 ",.01)
 ;;16729-0119-15
 ;;9002226.02101,"462,16729-0119-15 ",.02)
 ;;16729-0119-15
 ;;9002226.02101,"462,16729-0119-17 ",.01)
 ;;16729-0119-17
 ;;9002226.02101,"462,16729-0119-17 ",.02)
 ;;16729-0119-17
 ;;9002226.02101,"462,27241-0015-31 ",.01)
 ;;27241-0015-31
 ;;9002226.02101,"462,27241-0015-31 ",.02)
 ;;27241-0015-31
 ;;9002226.02101,"462,27241-0016-03 ",.01)
 ;;27241-0016-03
 ;;9002226.02101,"462,27241-0016-03 ",.02)
 ;;27241-0016-03
 ;;9002226.02101,"462,27241-0016-09 ",.01)
 ;;27241-0016-09
 ;;9002226.02101,"462,27241-0016-09 ",.02)
 ;;27241-0016-09
 ;;9002226.02101,"462,27241-0017-03 ",.01)
 ;;27241-0017-03
 ;;9002226.02101,"462,27241-0017-03 ",.02)
 ;;27241-0017-03
 ;;9002226.02101,"462,27241-0017-09 ",.01)
 ;;27241-0017-09
 ;;9002226.02101,"462,27241-0017-09 ",.02)
 ;;27241-0017-09
 ;;9002226.02101,"462,27241-0018-03 ",.01)
 ;;27241-0018-03
 ;;9002226.02101,"462,27241-0018-03 ",.02)
 ;;27241-0018-03
 ;;9002226.02101,"462,27241-0018-09 ",.01)
 ;;27241-0018-09
 ;;9002226.02101,"462,27241-0018-09 ",.02)
 ;;27241-0018-09
 ;;9002226.02101,"462,27241-0018-90 ",.01)
 ;;27241-0018-90
 ;;9002226.02101,"462,27241-0018-90 ",.02)
 ;;27241-0018-90
 ;;9002226.02101,"462,29300-0220-10 ",.01)
 ;;29300-0220-10
 ;;9002226.02101,"462,29300-0220-10 ",.02)
 ;;29300-0220-10
 ;;9002226.02101,"462,29300-0220-13 ",.01)
 ;;29300-0220-13
 ;;9002226.02101,"462,29300-0220-13 ",.02)
 ;;29300-0220-13
 ;;9002226.02101,"462,29300-0220-19 ",.01)
 ;;29300-0220-19
 ;;9002226.02101,"462,29300-0220-19 ",.02)
 ;;29300-0220-19
 ;;9002226.02101,"462,31722-0726-10 ",.01)
 ;;31722-0726-10
 ;;9002226.02101,"462,31722-0726-10 ",.02)
 ;;31722-0726-10
 ;;9002226.02101,"462,31722-0726-30 ",.01)
 ;;31722-0726-30
 ;;9002226.02101,"462,31722-0726-30 ",.02)
 ;;31722-0726-30
 ;;9002226.02101,"462,31722-0726-90 ",.01)
 ;;31722-0726-90
 ;;9002226.02101,"462,31722-0726-90 ",.02)
 ;;31722-0726-90
 ;;9002226.02101,"462,31722-0727-30 ",.01)
 ;;31722-0727-30
 ;;9002226.02101,"462,31722-0727-30 ",.02)
 ;;31722-0727-30
 ;;9002226.02101,"462,31722-0727-90 ",.01)
 ;;31722-0727-90
 ;;9002226.02101,"462,31722-0727-90 ",.02)
 ;;31722-0727-90
 ;;9002226.02101,"462,31722-0728-30 ",.01)
 ;;31722-0728-30
 ;;9002226.02101,"462,31722-0728-30 ",.02)
 ;;31722-0728-30
 ;;9002226.02101,"462,31722-0728-90 ",.01)
 ;;31722-0728-90
 ;;9002226.02101,"462,31722-0728-90 ",.02)
 ;;31722-0728-90
 ;;9002226.02101,"462,33342-0102-07 ",.01)
 ;;33342-0102-07
 ;;9002226.02101,"462,33342-0102-07 ",.02)
 ;;33342-0102-07
 ;;9002226.02101,"462,33342-0102-10 ",.01)
 ;;33342-0102-10
 ;;9002226.02101,"462,33342-0102-10 ",.02)
 ;;33342-0102-10
 ;;9002226.02101,"462,33342-0102-15 ",.01)
 ;;33342-0102-15
 ;;9002226.02101,"462,33342-0102-15 ",.02)
 ;;33342-0102-15
 ;;9002226.02101,"462,33342-0111-07 ",.01)
 ;;33342-0111-07
 ;;9002226.02101,"462,33342-0111-07 ",.02)
 ;;33342-0111-07
 ;;9002226.02101,"462,33342-0111-10 ",.01)
 ;;33342-0111-10
 ;;9002226.02101,"462,33342-0111-10 ",.02)
 ;;33342-0111-10
 ;;9002226.02101,"462,42291-0621-10 ",.01)
 ;;42291-0621-10
 ;;9002226.02101,"462,42291-0621-10 ",.02)
 ;;42291-0621-10
 ;;9002226.02101,"462,42291-0621-30 ",.01)
 ;;42291-0621-30
 ;;9002226.02101,"462,42291-0621-30 ",.02)
 ;;42291-0621-30
 ;;9002226.02101,"462,42291-0621-55 ",.01)
 ;;42291-0621-55
 ;;9002226.02101,"462,42291-0621-55 ",.02)
 ;;42291-0621-55
 ;;9002226.02101,"462,42291-0621-90 ",.01)
 ;;42291-0621-90
 ;;9002226.02101,"462,42291-0621-90 ",.02)
 ;;42291-0621-90
 ;;9002226.02101,"462,42291-0622-10 ",.01)
 ;;42291-0622-10
 ;;9002226.02101,"462,42291-0622-10 ",.02)
 ;;42291-0622-10
 ;;9002226.02101,"462,42291-0622-30 ",.01)
 ;;42291-0622-30
 ;;9002226.02101,"462,42291-0622-30 ",.02)
 ;;42291-0622-30
 ;;9002226.02101,"462,42291-0622-90 ",.01)
 ;;42291-0622-90
 ;;9002226.02101,"462,42291-0622-90 ",.02)
 ;;42291-0622-90
 ;;9002226.02101,"462,42291-0623-10 ",.01)
 ;;42291-0623-10
 ;;9002226.02101,"462,42291-0623-10 ",.02)
 ;;42291-0623-10
 ;;9002226.02101,"462,42291-0623-30 ",.01)
 ;;42291-0623-30
 ;;9002226.02101,"462,42291-0623-30 ",.02)
 ;;42291-0623-30
 ;;9002226.02101,"462,42291-0623-90 ",.01)
 ;;42291-0623-90
 ;;9002226.02101,"462,42291-0623-90 ",.02)
 ;;42291-0623-90
 ;;9002226.02101,"462,43063-0380-15 ",.01)
 ;;43063-0380-15
 ;;9002226.02101,"462,43063-0380-15 ",.02)
 ;;43063-0380-15
 ;;9002226.02101,"462,43063-0380-30 ",.01)
 ;;43063-0380-30
 ;;9002226.02101,"462,43063-0380-30 ",.02)
 ;;43063-0380-30
 ;;9002226.02101,"462,43063-0381-21 ",.01)
 ;;43063-0381-21
 ;;9002226.02101,"462,43063-0381-21 ",.02)
 ;;43063-0381-21
 ;;9002226.02101,"462,43063-0381-30 ",.01)
 ;;43063-0381-30
 ;;9002226.02101,"462,43063-0381-30 ",.02)
 ;;43063-0381-30
 ;;9002226.02101,"462,49884-0010-02 ",.01)
 ;;49884-0010-02
 ;;9002226.02101,"462,49884-0010-02 ",.02)
 ;;49884-0010-02
 ;;9002226.02101,"462,49884-0011-02 ",.01)
 ;;49884-0011-02
 ;;9002226.02101,"462,49884-0011-02 ",.02)
 ;;49884-0011-02
 ;;9002226.02101,"462,49884-0303-02 ",.01)
 ;;49884-0303-02
 ;;9002226.02101,"462,49884-0303-02 ",.02)
 ;;49884-0303-02
 ;;9002226.02101,"462,49884-0304-02 ",.01)
 ;;49884-0304-02
 ;;9002226.02101,"462,49884-0304-02 ",.02)
 ;;49884-0304-02
 ;;9002226.02101,"462,49884-0549-02 ",.01)
 ;;49884-0549-02
 ;;9002226.02101,"462,49884-0549-02 ",.02)
 ;;49884-0549-02
 ;;9002226.02101,"462,49884-0554-02 ",.01)
 ;;49884-0554-02
 ;;9002226.02101,"462,49884-0554-02 ",.02)
 ;;49884-0554-02
 ;;9002226.02101,"462,49884-0589-02 ",.01)
 ;;49884-0589-02
 ;;9002226.02101,"462,49884-0589-02 ",.02)
 ;;49884-0589-02
 ;;9002226.02101,"462,49884-0590-02 ",.01)
 ;;49884-0590-02
 ;;9002226.02101,"462,49884-0590-02 ",.02)
 ;;49884-0590-02
 ;;9002226.02101,"462,49999-0533-30 ",.01)
 ;;49999-0533-30
 ;;9002226.02101,"462,49999-0533-30 ",.02)
 ;;49999-0533-30
 ;;9002226.02101,"462,49999-0533-90 ",.01)
 ;;49999-0533-90
 ;;9002226.02101,"462,49999-0533-90 ",.02)
 ;;49999-0533-90
 ;;9002226.02101,"462,49999-0884-30 ",.01)
 ;;49999-0884-30
 ;;9002226.02101,"462,49999-0884-30 ",.02)
 ;;49999-0884-30
 ;;9002226.02101,"462,49999-0884-90 ",.01)
 ;;49999-0884-90
 ;;9002226.02101,"462,49999-0884-90 ",.02)
 ;;49999-0884-90
 ;;9002226.02101,"462,49999-0952-30 ",.01)
 ;;49999-0952-30
 ;;9002226.02101,"462,49999-0952-30 ",.02)
 ;;49999-0952-30
 ;;9002226.02101,"462,50268-0573-15 ",.01)
 ;;50268-0573-15
 ;;9002226.02101,"462,50268-0573-15 ",.02)
 ;;50268-0573-15
 ;;9002226.02101,"462,50268-0574-15 ",.01)
 ;;50268-0574-15
 ;;9002226.02101,"462,50268-0574-15 ",.02)
 ;;50268-0574-15
 ;;9002226.02101,"462,50268-0575-15 ",.01)
 ;;50268-0575-15
 ;;9002226.02101,"462,50268-0575-15 ",.02)
 ;;50268-0575-15
 ;;9002226.02101,"462,51079-0223-01 ",.01)
 ;;51079-0223-01
 ;;9002226.02101,"462,51079-0223-01 ",.02)
 ;;51079-0223-01
 ;;9002226.02101,"462,51079-0223-20 ",.01)
 ;;51079-0223-20
 ;;9002226.02101,"462,51079-0223-20 ",.02)
 ;;51079-0223-20
 ;;9002226.02101,"462,52343-0037-30 ",.01)
 ;;52343-0037-30
 ;;9002226.02101,"462,52343-0037-30 ",.02)
 ;;52343-0037-30
 ;;9002226.02101,"462,52343-0037-90 ",.01)
 ;;52343-0037-90
 ;;9002226.02101,"462,52343-0037-90 ",.02)
 ;;52343-0037-90
 ;;9002226.02101,"462,52343-0037-99 ",.01)
 ;;52343-0037-99
 ;;9002226.02101,"462,52343-0037-99 ",.02)
 ;;52343-0037-99
 ;;9002226.02101,"462,54458-0890-10 ",.01)
 ;;54458-0890-10
 ;;9002226.02101,"462,54458-0890-10 ",.02)
 ;;54458-0890-10
 ;;9002226.02101,"462,54569-4605-00 ",.01)
 ;;54569-4605-00
 ;;9002226.02101,"462,54569-4605-00 ",.02)
 ;;54569-4605-00
 ;;9002226.02101,"462,54569-4736-00 ",.01)
 ;;54569-4736-00
 ;;9002226.02101,"462,54569-4736-00 ",.02)
 ;;54569-4736-00
 ;;9002226.02101,"462,54569-5167-00 ",.01)
 ;;54569-5167-00
 ;;9002226.02101,"462,54569-5167-00 ",.02)
 ;;54569-5167-00
 ;;9002226.02101,"462,54569-6321-00 ",.01)
 ;;54569-6321-00
 ;;9002226.02101,"462,54569-6321-00 ",.02)
 ;;54569-6321-00
 ;;9002226.02101,"462,54569-6348-00 ",.01)
 ;;54569-6348-00
 ;;9002226.02101,"462,54569-6348-00 ",.02)
 ;;54569-6348-00
 ;;9002226.02101,"462,54868-3283-00 ",.01)
 ;;54868-3283-00
 ;;9002226.02101,"462,54868-3283-00 ",.02)
 ;;54868-3283-00
 ;;9002226.02101,"462,54868-3283-01 ",.01)
 ;;54868-3283-01
 ;;9002226.02101,"462,54868-3283-01 ",.02)
 ;;54868-3283-01
 ;;9002226.02101,"462,54868-3283-02 ",.01)
 ;;54868-3283-02
 ;;9002226.02101,"462,54868-3283-02 ",.02)
 ;;54868-3283-02
 ;;9002226.02101,"462,54868-4630-00 ",.01)
 ;;54868-4630-00
 ;;9002226.02101,"462,54868-4630-00 ",.02)
 ;;54868-4630-00
 ;;9002226.02101,"462,54868-4847-00 ",.01)
 ;;54868-4847-00
 ;;9002226.02101,"462,54868-4847-00 ",.02)
 ;;54868-4847-00
 ;;9002226.02101,"462,55111-0593-30 ",.01)
 ;;55111-0593-30
 ;;9002226.02101,"462,55111-0593-30 ",.02)
 ;;55111-0593-30
 ;;9002226.02101,"462,55111-0593-90 ",.01)
 ;;55111-0593-90
 ;;9002226.02101,"462,55111-0593-90 ",.02)
 ;;55111-0593-90
 ;;9002226.02101,"462,55111-0594-30 ",.01)
 ;;55111-0594-30
 ;;9002226.02101,"462,55111-0594-30 ",.02)
 ;;55111-0594-30
 ;;9002226.02101,"462,55111-0594-90 ",.01)
 ;;55111-0594-90
 ;;9002226.02101,"462,55111-0594-90 ",.02)
 ;;55111-0594-90
 ;;9002226.02101,"462,55111-0625-60 ",.01)
 ;;55111-0625-60
 ;;9002226.02101,"462,55111-0625-60 ",.02)
 ;;55111-0625-60
 ;;9002226.02101,"462,55111-0626-60 ",.01)
 ;;55111-0626-60
 ;;9002226.02101,"462,55111-0626-60 ",.02)
 ;;55111-0626-60
 ;;9002226.02101,"462,55111-0725-10 ",.01)
 ;;55111-0725-10
 ;;9002226.02101,"462,55111-0725-10 ",.02)
 ;;55111-0725-10
 ;;9002226.02101,"462,55111-0725-30 ",.01)
 ;;55111-0725-30
 ;;9002226.02101,"462,55111-0725-30 ",.02)
 ;;55111-0725-30
 ;;9002226.02101,"462,55111-0725-90 ",.01)
 ;;55111-0725-90
 ;;9002226.02101,"462,55111-0725-90 ",.02)
 ;;55111-0725-90
 ;;9002226.02101,"462,55111-0725-94 ",.01)
 ;;55111-0725-94
 ;;9002226.02101,"462,55111-0725-94 ",.02)
 ;;55111-0725-94
 ;;9002226.02101,"462,55111-0763-03 ",.01)
 ;;55111-0763-03
 ;;9002226.02101,"462,55111-0763-03 ",.02)
 ;;55111-0763-03
 ;;9002226.02101,"462,55289-0961-15 ",.01)
 ;;55289-0961-15
 ;;9002226.02101,"462,55289-0961-15 ",.02)
 ;;55289-0961-15
 ;;9002226.02101,"462,55289-0961-30 ",.01)
 ;;55289-0961-30
 ;;9002226.02101,"462,55289-0961-30 ",.02)
 ;;55289-0961-30
 ;;9002226.02101,"462,55289-0989-21 ",.01)
 ;;55289-0989-21
 ;;9002226.02101,"462,55289-0989-21 ",.02)
 ;;55289-0989-21
 ;;9002226.02101,"462,55289-0989-30 ",.01)
 ;;55289-0989-30
 ;;9002226.02101,"462,55289-0989-30 ",.02)
 ;;55289-0989-30
 ;;9002226.02101,"462,55289-0990-21 ",.01)
 ;;55289-0990-21
 ;;9002226.02101,"462,55289-0990-21 ",.02)
 ;;55289-0990-21
 ;;9002226.02101,"462,55289-0990-30 ",.01)
 ;;55289-0990-30
 ;;9002226.02101,"462,55289-0990-30 ",.02)
 ;;55289-0990-30
 ;;9002226.02101,"462,55887-0120-90 ",.01)
 ;;55887-0120-90
 ;;9002226.02101,"462,55887-0120-90 ",.02)
 ;;55887-0120-90
 ;;9002226.02101,"462,57237-0212-30 ",.01)
 ;;57237-0212-30
 ;;9002226.02101,"462,57237-0212-30 ",.02)
 ;;57237-0212-30
 ;;9002226.02101,"462,57237-0212-90 ",.01)
 ;;57237-0212-90
 ;;9002226.02101,"462,57237-0212-90 ",.02)
 ;;57237-0212-90
 ;;9002226.02101,"462,57237-0213-30 ",.01)
 ;;57237-0213-30
 ;;9002226.02101,"462,57237-0213-30 ",.02)
 ;;57237-0213-30
 ;;9002226.02101,"462,57237-0213-90 ",.01)
 ;;57237-0213-90
 ;;9002226.02101,"462,57237-0213-90 ",.02)
 ;;57237-0213-90
 ;;9002226.02101,"462,57237-0255-30 ",.01)
 ;;57237-0255-30
 ;;9002226.02101,"462,57237-0255-30 ",.02)
 ;;57237-0255-30
 ;;9002226.02101,"462,57237-0255-90 ",.01)
 ;;57237-0255-90
 ;;9002226.02101,"462,57237-0255-90 ",.02)
 ;;57237-0255-90
 ;;9002226.02101,"462,58864-0658-30 ",.01)
 ;;58864-0658-30
 ;;9002226.02101,"462,58864-0658-30 ",.02)
 ;;58864-0658-30