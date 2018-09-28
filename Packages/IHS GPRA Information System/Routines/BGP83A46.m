BGP83A46 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1828,68788-9430-02 ",.01)
 ;;68788-9430-02
 ;;9002226.02101,"1828,68788-9430-02 ",.02)
 ;;68788-9430-02
 ;;9002226.02101,"1828,68788-9430-03 ",.01)
 ;;68788-9430-03
 ;;9002226.02101,"1828,68788-9430-03 ",.02)
 ;;68788-9430-03
 ;;9002226.02101,"1828,68788-9430-06 ",.01)
 ;;68788-9430-06
 ;;9002226.02101,"1828,68788-9430-06 ",.02)
 ;;68788-9430-06
 ;;9002226.02101,"1828,68788-9430-09 ",.01)
 ;;68788-9430-09
 ;;9002226.02101,"1828,68788-9430-09 ",.02)
 ;;68788-9430-09
 ;;9002226.02101,"1828,68788-9495-06 ",.01)
 ;;68788-9495-06
 ;;9002226.02101,"1828,68788-9495-06 ",.02)
 ;;68788-9495-06
 ;;9002226.02101,"1828,68788-9495-09 ",.01)
 ;;68788-9495-09
 ;;9002226.02101,"1828,68788-9495-09 ",.02)
 ;;68788-9495-09
 ;;9002226.02101,"1828,68788-9864-03 ",.01)
 ;;68788-9864-03
 ;;9002226.02101,"1828,68788-9864-03 ",.02)
 ;;68788-9864-03
 ;;9002226.02101,"1828,68788-9865-06 ",.01)
 ;;68788-9865-06
 ;;9002226.02101,"1828,68788-9865-06 ",.02)
 ;;68788-9865-06
 ;;9002226.02101,"1828,68788-9936-06 ",.01)
 ;;68788-9936-06
 ;;9002226.02101,"1828,68788-9936-06 ",.02)
 ;;68788-9936-06
 ;;9002226.02101,"1828,68788-9936-08 ",.01)
 ;;68788-9936-08
 ;;9002226.02101,"1828,68788-9936-08 ",.02)
 ;;68788-9936-08
 ;;9002226.02101,"1828,68788-9937-03 ",.01)
 ;;68788-9937-03
 ;;9002226.02101,"1828,68788-9937-03 ",.02)
 ;;68788-9937-03
 ;;9002226.02101,"1828,68788-9940-03 ",.01)
 ;;68788-9940-03
 ;;9002226.02101,"1828,68788-9940-03 ",.02)
 ;;68788-9940-03
 ;;9002226.02101,"1828,68788-9940-06 ",.01)
 ;;68788-9940-06
 ;;9002226.02101,"1828,68788-9940-06 ",.02)
 ;;68788-9940-06
 ;;9002226.02101,"1828,68788-9941-03 ",.01)
 ;;68788-9941-03
 ;;9002226.02101,"1828,68788-9941-03 ",.02)
 ;;68788-9941-03
 ;;9002226.02101,"1828,68788-9941-06 ",.01)
 ;;68788-9941-06
 ;;9002226.02101,"1828,68788-9941-06 ",.02)
 ;;68788-9941-06
 ;;9002226.02101,"1828,68788-9952-09 ",.01)
 ;;68788-9952-09
 ;;9002226.02101,"1828,68788-9952-09 ",.02)
 ;;68788-9952-09
 ;;9002226.02101,"1828,68788-9953-03 ",.01)
 ;;68788-9953-03
 ;;9002226.02101,"1828,68788-9953-03 ",.02)
 ;;68788-9953-03
 ;;9002226.02101,"1828,68788-9953-06 ",.01)
 ;;68788-9953-06
 ;;9002226.02101,"1828,68788-9953-06 ",.02)
 ;;68788-9953-06
 ;;9002226.02101,"1828,68788-9953-09 ",.01)
 ;;68788-9953-09
 ;;9002226.02101,"1828,68788-9953-09 ",.02)
 ;;68788-9953-09
 ;;9002226.02101,"1828,68788-9954-03 ",.01)
 ;;68788-9954-03
 ;;9002226.02101,"1828,68788-9954-03 ",.02)
 ;;68788-9954-03
 ;;9002226.02101,"1828,68788-9954-09 ",.01)
 ;;68788-9954-09
 ;;9002226.02101,"1828,68788-9954-09 ",.02)
 ;;68788-9954-09
 ;;9002226.02101,"1828,69315-0904-01 ",.01)
 ;;69315-0904-01
 ;;9002226.02101,"1828,69315-0904-01 ",.02)
 ;;69315-0904-01
 ;;9002226.02101,"1828,69315-0904-05 ",.01)
 ;;69315-0904-05
 ;;9002226.02101,"1828,69315-0904-05 ",.02)
 ;;69315-0904-05
 ;;9002226.02101,"1828,69315-0904-10 ",.01)
 ;;69315-0904-10
 ;;9002226.02101,"1828,69315-0904-10 ",.02)
 ;;69315-0904-10
 ;;9002226.02101,"1828,69315-0905-01 ",.01)
 ;;69315-0905-01
 ;;9002226.02101,"1828,69315-0905-01 ",.02)
 ;;69315-0905-01
 ;;9002226.02101,"1828,69315-0905-05 ",.01)
 ;;69315-0905-05
 ;;9002226.02101,"1828,69315-0905-05 ",.02)
 ;;69315-0905-05
 ;;9002226.02101,"1828,69315-0905-10 ",.01)
 ;;69315-0905-10
 ;;9002226.02101,"1828,69315-0905-10 ",.02)
 ;;69315-0905-10
 ;;9002226.02101,"1828,69315-0906-01 ",.01)
 ;;69315-0906-01
 ;;9002226.02101,"1828,69315-0906-01 ",.02)
 ;;69315-0906-01
 ;;9002226.02101,"1828,69315-0906-05 ",.01)
 ;;69315-0906-05
 ;;9002226.02101,"1828,69315-0906-05 ",.02)
 ;;69315-0906-05
 ;;9002226.02101,"1828,69315-0906-10 ",.01)
 ;;69315-0906-10
 ;;9002226.02101,"1828,69315-0906-10 ",.02)
 ;;69315-0906-10
 ;;9002226.02101,"1828,69452-0110-20 ",.01)
 ;;69452-0110-20
 ;;9002226.02101,"1828,69452-0110-20 ",.02)
 ;;69452-0110-20
 ;;9002226.02101,"1828,69452-0110-30 ",.01)
 ;;69452-0110-30
 ;;9002226.02101,"1828,69452-0110-30 ",.02)
 ;;69452-0110-30
 ;;9002226.02101,"1828,69452-0110-32 ",.01)
 ;;69452-0110-32
 ;;9002226.02101,"1828,69452-0110-32 ",.02)
 ;;69452-0110-32
 ;;9002226.02101,"1828,69452-0111-20 ",.01)
 ;;69452-0111-20
 ;;9002226.02101,"1828,69452-0111-20 ",.02)
 ;;69452-0111-20
 ;;9002226.02101,"1828,69452-0111-30 ",.01)
 ;;69452-0111-30
 ;;9002226.02101,"1828,69452-0111-30 ",.02)
 ;;69452-0111-30
 ;;9002226.02101,"1828,69452-0111-32 ",.01)
 ;;69452-0111-32
 ;;9002226.02101,"1828,69452-0111-32 ",.02)
 ;;69452-0111-32
 ;;9002226.02101,"1828,69452-0112-20 ",.01)
 ;;69452-0112-20
 ;;9002226.02101,"1828,69452-0112-20 ",.02)
 ;;69452-0112-20
 ;;9002226.02101,"1828,69452-0112-30 ",.01)
 ;;69452-0112-30
 ;;9002226.02101,"1828,69452-0112-30 ",.02)
 ;;69452-0112-30
 ;;9002226.02101,"1828,69452-0112-32 ",.01)
 ;;69452-0112-32
 ;;9002226.02101,"1828,69452-0112-32 ",.02)
 ;;69452-0112-32
 ;;9002226.02101,"1828,69452-0113-20 ",.01)
 ;;69452-0113-20
 ;;9002226.02101,"1828,69452-0113-20 ",.02)
 ;;69452-0113-20
 ;;9002226.02101,"1828,69452-0113-30 ",.01)
 ;;69452-0113-30
 ;;9002226.02101,"1828,69452-0113-30 ",.02)
 ;;69452-0113-30
 ;;9002226.02101,"1828,69874-0322-10 ",.01)
 ;;69874-0322-10
 ;;9002226.02101,"1828,69874-0322-10 ",.02)
 ;;69874-0322-10
 ;;9002226.02101,"1828,76218-0405-01 ",.01)
 ;;76218-0405-01
 ;;9002226.02101,"1828,76218-0405-01 ",.02)
 ;;76218-0405-01
 ;;9002226.02101,"1828,76439-0302-10 ",.01)
 ;;76439-0302-10
 ;;9002226.02101,"1828,76439-0302-10 ",.02)
 ;;76439-0302-10