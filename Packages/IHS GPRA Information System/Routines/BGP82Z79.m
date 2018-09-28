BGP82Z79 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"619,68788-9125-06 ",.02)
 ;;68788-9125-06
 ;;9002226.02101,"619,68788-9125-09 ",.01)
 ;;68788-9125-09
 ;;9002226.02101,"619,68788-9125-09 ",.02)
 ;;68788-9125-09
 ;;9002226.02101,"619,68788-9137-02 ",.01)
 ;;68788-9137-02
 ;;9002226.02101,"619,68788-9137-02 ",.02)
 ;;68788-9137-02
 ;;9002226.02101,"619,68788-9137-03 ",.01)
 ;;68788-9137-03
 ;;9002226.02101,"619,68788-9137-03 ",.02)
 ;;68788-9137-03
 ;;9002226.02101,"619,68788-9137-06 ",.01)
 ;;68788-9137-06
 ;;9002226.02101,"619,68788-9137-06 ",.02)
 ;;68788-9137-06
 ;;9002226.02101,"619,68788-9137-09 ",.01)
 ;;68788-9137-09
 ;;9002226.02101,"619,68788-9137-09 ",.02)
 ;;68788-9137-09
 ;;9002226.02101,"619,68788-9141-03 ",.01)
 ;;68788-9141-03
 ;;9002226.02101,"619,68788-9141-03 ",.02)
 ;;68788-9141-03
 ;;9002226.02101,"619,68788-9141-06 ",.01)
 ;;68788-9141-06
 ;;9002226.02101,"619,68788-9141-06 ",.02)
 ;;68788-9141-06
 ;;9002226.02101,"619,68788-9141-08 ",.01)
 ;;68788-9141-08
 ;;9002226.02101,"619,68788-9141-08 ",.02)
 ;;68788-9141-08
 ;;9002226.02101,"619,68788-9141-09 ",.01)
 ;;68788-9141-09
 ;;9002226.02101,"619,68788-9141-09 ",.02)
 ;;68788-9141-09
 ;;9002226.02101,"619,68788-9250-01 ",.01)
 ;;68788-9250-01
 ;;9002226.02101,"619,68788-9250-01 ",.02)
 ;;68788-9250-01
 ;;9002226.02101,"619,68788-9250-02 ",.01)
 ;;68788-9250-02
 ;;9002226.02101,"619,68788-9250-02 ",.02)
 ;;68788-9250-02
 ;;9002226.02101,"619,68788-9250-03 ",.01)
 ;;68788-9250-03
 ;;9002226.02101,"619,68788-9250-03 ",.02)
 ;;68788-9250-03
 ;;9002226.02101,"619,68788-9250-04 ",.01)
 ;;68788-9250-04
 ;;9002226.02101,"619,68788-9250-04 ",.02)
 ;;68788-9250-04
 ;;9002226.02101,"619,68788-9250-05 ",.01)
 ;;68788-9250-05
 ;;9002226.02101,"619,68788-9250-05 ",.02)
 ;;68788-9250-05
 ;;9002226.02101,"619,68788-9250-06 ",.01)
 ;;68788-9250-06
 ;;9002226.02101,"619,68788-9250-06 ",.02)
 ;;68788-9250-06
 ;;9002226.02101,"619,68788-9250-08 ",.01)
 ;;68788-9250-08
 ;;9002226.02101,"619,68788-9250-08 ",.02)
 ;;68788-9250-08
 ;;9002226.02101,"619,68788-9250-09 ",.01)
 ;;68788-9250-09
 ;;9002226.02101,"619,68788-9250-09 ",.02)
 ;;68788-9250-09
 ;;9002226.02101,"619,68788-9413-03 ",.01)
 ;;68788-9413-03
 ;;9002226.02101,"619,68788-9413-03 ",.02)
 ;;68788-9413-03
 ;;9002226.02101,"619,68788-9413-06 ",.01)
 ;;68788-9413-06
 ;;9002226.02101,"619,68788-9413-06 ",.02)
 ;;68788-9413-06
 ;;9002226.02101,"619,68788-9413-08 ",.01)
 ;;68788-9413-08
 ;;9002226.02101,"619,68788-9413-08 ",.02)
 ;;68788-9413-08
 ;;9002226.02101,"619,68788-9413-09 ",.01)
 ;;68788-9413-09
 ;;9002226.02101,"619,68788-9413-09 ",.02)
 ;;68788-9413-09
 ;;9002226.02101,"619,68788-9506-03 ",.01)
 ;;68788-9506-03
 ;;9002226.02101,"619,68788-9506-03 ",.02)
 ;;68788-9506-03
 ;;9002226.02101,"619,68788-9506-06 ",.01)
 ;;68788-9506-06
 ;;9002226.02101,"619,68788-9506-06 ",.02)
 ;;68788-9506-06
 ;;9002226.02101,"619,68788-9736-01 ",.01)
 ;;68788-9736-01
 ;;9002226.02101,"619,68788-9736-01 ",.02)
 ;;68788-9736-01
 ;;9002226.02101,"619,68788-9736-02 ",.01)
 ;;68788-9736-02
 ;;9002226.02101,"619,68788-9736-02 ",.02)
 ;;68788-9736-02
 ;;9002226.02101,"619,68788-9736-03 ",.01)
 ;;68788-9736-03
 ;;9002226.02101,"619,68788-9736-03 ",.02)
 ;;68788-9736-03
 ;;9002226.02101,"619,68788-9736-06 ",.01)
 ;;68788-9736-06
 ;;9002226.02101,"619,68788-9736-06 ",.02)
 ;;68788-9736-06
 ;;9002226.02101,"619,68788-9736-09 ",.01)
 ;;68788-9736-09
 ;;9002226.02101,"619,68788-9736-09 ",.02)
 ;;68788-9736-09
 ;;9002226.02101,"619,68788-9784-03 ",.01)
 ;;68788-9784-03
 ;;9002226.02101,"619,68788-9784-03 ",.02)
 ;;68788-9784-03
 ;;9002226.02101,"619,68788-9784-06 ",.01)
 ;;68788-9784-06
 ;;9002226.02101,"619,68788-9784-06 ",.02)
 ;;68788-9784-06
 ;;9002226.02101,"619,68788-9895-01 ",.01)
 ;;68788-9895-01
 ;;9002226.02101,"619,68788-9895-01 ",.02)
 ;;68788-9895-01
 ;;9002226.02101,"619,68788-9968-01 ",.01)
 ;;68788-9968-01
 ;;9002226.02101,"619,68788-9968-01 ",.02)
 ;;68788-9968-01
 ;;9002226.02101,"619,68788-9968-02 ",.01)
 ;;68788-9968-02
 ;;9002226.02101,"619,68788-9968-02 ",.02)
 ;;68788-9968-02
 ;;9002226.02101,"619,68788-9968-03 ",.01)
 ;;68788-9968-03
 ;;9002226.02101,"619,68788-9968-03 ",.02)
 ;;68788-9968-03
 ;;9002226.02101,"619,68788-9968-04 ",.01)
 ;;68788-9968-04
 ;;9002226.02101,"619,68788-9968-04 ",.02)
 ;;68788-9968-04
 ;;9002226.02101,"619,68788-9968-05 ",.01)
 ;;68788-9968-05
 ;;9002226.02101,"619,68788-9968-05 ",.02)
 ;;68788-9968-05
 ;;9002226.02101,"619,68788-9968-06 ",.01)
 ;;68788-9968-06
 ;;9002226.02101,"619,68788-9968-06 ",.02)
 ;;68788-9968-06
 ;;9002226.02101,"619,68788-9968-09 ",.01)
 ;;68788-9968-09
 ;;9002226.02101,"619,68788-9968-09 ",.02)
 ;;68788-9968-09
 ;;9002226.02101,"619,69150-0020-10 ",.01)
 ;;69150-0020-10
 ;;9002226.02101,"619,69150-0020-10 ",.02)
 ;;69150-0020-10
 ;;9002226.02101,"619,69166-0523-04 ",.01)
 ;;69166-0523-04
 ;;9002226.02101,"619,69166-0523-04 ",.02)
 ;;69166-0523-04
 ;;9002226.02101,"619,69166-0523-16 ",.01)
 ;;69166-0523-16
 ;;9002226.02101,"619,69166-0523-16 ",.02)
 ;;69166-0523-16
 ;;9002226.02101,"619,69344-0111-11 ",.01)
 ;;69344-0111-11
 ;;9002226.02101,"619,69344-0111-11 ",.02)
 ;;69344-0111-11
 ;;9002226.02101,"619,69344-0113-11 ",.01)
 ;;69344-0113-11
 ;;9002226.02101,"619,69344-0113-11 ",.02)
 ;;69344-0113-11
 ;;9002226.02101,"619,69344-0211-11 ",.01)
 ;;69344-0211-11
 ;;9002226.02101,"619,69344-0211-11 ",.02)
 ;;69344-0211-11
 ;;9002226.02101,"619,69344-0213-11 ",.01)
 ;;69344-0213-11
 ;;9002226.02101,"619,69344-0213-11 ",.02)
 ;;69344-0213-11
 ;;9002226.02101,"619,69344-0311-11 ",.01)
 ;;69344-0311-11
 ;;9002226.02101,"619,69344-0311-11 ",.02)
 ;;69344-0311-11
 ;;9002226.02101,"619,69420-3002-01 ",.01)
 ;;69420-3002-01
 ;;9002226.02101,"619,69420-3002-01 ",.02)
 ;;69420-3002-01
 ;;9002226.02101,"619,69442-0480-01 ",.01)
 ;;69442-0480-01
 ;;9002226.02101,"619,69442-0480-01 ",.02)
 ;;69442-0480-01
 ;;9002226.02101,"619,69467-1001-01 ",.01)
 ;;69467-1001-01
 ;;9002226.02101,"619,69467-1001-01 ",.02)
 ;;69467-1001-01
 ;;9002226.02101,"619,69512-0627-10 ",.01)
 ;;69512-0627-10
 ;;9002226.02101,"619,69512-0627-10 ",.02)
 ;;69512-0627-10
 ;;9002226.02101,"619,69543-0136-10 ",.01)
 ;;69543-0136-10
 ;;9002226.02101,"619,69543-0136-10 ",.02)
 ;;69543-0136-10
 ;;9002226.02101,"619,69543-0136-11 ",.01)
 ;;69543-0136-11
 ;;9002226.02101,"619,69543-0136-11 ",.02)
 ;;69543-0136-11
 ;;9002226.02101,"619,69543-0136-50 ",.01)
 ;;69543-0136-50
 ;;9002226.02101,"619,69543-0136-50 ",.02)
 ;;69543-0136-50
 ;;9002226.02101,"619,70408-0185-31 ",.01)
 ;;70408-0185-31
 ;;9002226.02101,"619,70408-0185-31 ",.02)
 ;;70408-0185-31
 ;;9002226.02101,"619,70408-0185-34 ",.01)
 ;;70408-0185-34
 ;;9002226.02101,"619,70408-0185-34 ",.02)
 ;;70408-0185-34
 ;;9002226.02101,"619,70408-0358-31 ",.01)
 ;;70408-0358-31
 ;;9002226.02101,"619,70408-0358-31 ",.02)
 ;;70408-0358-31
 ;;9002226.02101,"619,70408-0358-35 ",.01)
 ;;70408-0358-35
 ;;9002226.02101,"619,70408-0358-35 ",.02)
 ;;70408-0358-35
 ;;9002226.02101,"619,70408-0359-31 ",.01)
 ;;70408-0359-31
 ;;9002226.02101,"619,70408-0359-31 ",.02)
 ;;70408-0359-31
 ;;9002226.02101,"619,70408-0359-35 ",.01)
 ;;70408-0359-35
 ;;9002226.02101,"619,70408-0359-35 ",.02)
 ;;70408-0359-35
 ;;9002226.02101,"619,76014-0001-25 ",.01)
 ;;76014-0001-25
 ;;9002226.02101,"619,76014-0001-25 ",.02)
 ;;76014-0001-25
 ;;9002226.02101,"619,76181-0001-25 ",.01)
 ;;76181-0001-25
 ;;9002226.02101,"619,76181-0001-25 ",.02)
 ;;76181-0001-25
 ;;9002226.02101,"619,76218-0708-01 ",.01)
 ;;76218-0708-01
 ;;9002226.02101,"619,76218-0708-01 ",.02)
 ;;76218-0708-01
 ;;9002226.02101,"619,76218-0708-05 ",.01)
 ;;76218-0708-05
 ;;9002226.02101,"619,76218-0708-05 ",.02)
 ;;76218-0708-05
 ;;9002226.02101,"619,76218-1828-01 ",.01)
 ;;76218-1828-01
 ;;9002226.02101,"619,76218-1828-01 ",.02)
 ;;76218-1828-01
 ;;9002226.02101,"619,76218-1828-05 ",.01)
 ;;76218-1828-05
 ;;9002226.02101,"619,76218-1828-05 ",.02)
 ;;76218-1828-05
 ;;9002226.02101,"619,76439-0136-10 ",.01)
 ;;76439-0136-10
 ;;9002226.02101,"619,76439-0136-10 ",.02)
 ;;76439-0136-10
 ;;9002226.02101,"619,76439-0136-11 ",.01)
 ;;76439-0136-11
 ;;9002226.02101,"619,76439-0136-11 ",.02)
 ;;76439-0136-11
 ;;9002226.02101,"619,76439-0136-50 ",.01)
 ;;76439-0136-50
 ;;9002226.02101,"619,76439-0136-50 ",.02)
 ;;76439-0136-50