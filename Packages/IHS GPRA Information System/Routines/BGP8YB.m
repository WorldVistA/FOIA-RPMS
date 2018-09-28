BGP8YB ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;;BGP PQA NON-INFUSED MS NDC
 ;
 ; This routine loads Taxonomy BGP PQA NON-INFUSED MS NDC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00074-0033-01 ")
 ;;1
 ;;21,"00078-0569-12 ")
 ;;2
 ;;21,"00078-0569-61 ")
 ;;3
 ;;21,"00078-0569-99 ")
 ;;4
 ;;21,"00078-0607-15 ")
 ;;5
 ;;21,"00078-0607-51 ")
 ;;6
 ;;21,"00078-0607-89 ")
 ;;7
 ;;21,"00781-3234-34 ")
 ;;8
 ;;21,"00781-3234-71 ")
 ;;9
 ;;21,"44087-0022-03 ")
 ;;10
 ;;21,"44087-0022-09 ")
 ;;11
 ;;21,"44087-0044-03 ")
 ;;12
 ;;21,"44087-0044-09 ")
 ;;13
 ;;21,"44087-0188-01 ")
 ;;14
 ;;21,"44087-3322-01 ")
 ;;15
 ;;21,"44087-3322-09 ")
 ;;16
 ;;21,"44087-3344-01 ")
 ;;17
 ;;21,"44087-3344-09 ")
 ;;18
 ;;21,"44087-8822-01 ")
 ;;19
 ;;21,"50419-0522-01 ")
 ;;20
 ;;21,"50419-0523-09 ")
 ;;21
 ;;21,"50419-0523-35 ")
 ;;22
 ;;21,"50419-0524-01 ")
 ;;23
 ;;21,"50419-0524-35 ")
 ;;24
 ;;21,"58468-0210-01 ")
 ;;25
 ;;21,"58468-0210-02 ")
 ;;26
 ;;21,"58468-0211-01 ")
 ;;27
 ;;21,"58468-0211-02 ")
 ;;28
 ;;21,"59627-0001-03 ")
 ;;29
 ;;21,"59627-0001-04 ")
 ;;30
 ;;21,"59627-0002-05 ")
 ;;31
 ;;21,"59627-0002-07 ")
 ;;32
 ;;21,"59627-0003-01 ")
 ;;33
 ;;21,"59627-0003-04 ")
 ;;34
 ;;21,"59627-0111-03 ")
 ;;35
 ;;21,"59627-0222-05 ")
 ;;36
 ;;21,"59627-0333-04 ")
 ;;37
 ;;21,"64406-0005-01 ")
 ;;38
 ;;21,"64406-0006-02 ")
 ;;39
 ;;21,"64406-0007-03 ")
 ;;40
 ;;21,"64406-0011-01 ")
 ;;41
 ;;21,"64406-0011-02 ")
 ;;42
 ;;21,"64406-0012-01 ")
 ;;43
 ;;21,"64406-0015-01 ")
 ;;44
 ;;21,"64406-0015-02 ")
 ;;45
 ;;21,"64406-0016-01 ")
 ;;46
 ;;21,"68546-0317-30 ")
 ;;47
 ;;21,"68546-0325-06 ")
 ;;48
 ;;21,"68546-0325-12 ")
 ;;49
 ;;9002226,2232,.01)
 ;;BGP PQA NON-INFUSED MS NDC
 ;;9002226,2232,.02)
 ;;@
 ;;9002226,2232,.04)
 ;;@
 ;;9002226,2232,.06)
 ;;@
 ;;9002226,2232,.08)
 ;;@
 ;;9002226,2232,.09)
 ;;3180122
 ;;9002226,2232,.11)
 ;;@
 ;;9002226,2232,.12)
 ;;@
 ;;9002226,2232,.13)
 ;;1
 ;;9002226,2232,.14)
 ;;@
 ;;9002226,2232,.15)
 ;;50.67
 ;;9002226,2232,.16)
 ;;@
 ;;9002226,2232,.17)
 ;;@
 ;;9002226,2232,.22)
 ;;@
 ;;9002226,2232,3101)
 ;;@
 ;;9002226.02101,"2232,00074-0033-01 ",.01)
 ;;00074-0033-01
 ;;9002226.02101,"2232,00074-0033-01 ",.02)
 ;;00074-0033-01
 ;;9002226.02101,"2232,00078-0569-12 ",.01)
 ;;00078-0569-12
 ;;9002226.02101,"2232,00078-0569-12 ",.02)
 ;;00078-0569-12
 ;;9002226.02101,"2232,00078-0569-61 ",.01)
 ;;00078-0569-61
 ;;9002226.02101,"2232,00078-0569-61 ",.02)
 ;;00078-0569-61
 ;;9002226.02101,"2232,00078-0569-99 ",.01)
 ;;00078-0569-99
 ;;9002226.02101,"2232,00078-0569-99 ",.02)
 ;;00078-0569-99
 ;;9002226.02101,"2232,00078-0607-15 ",.01)
 ;;00078-0607-15
 ;;9002226.02101,"2232,00078-0607-15 ",.02)
 ;;00078-0607-15
 ;;9002226.02101,"2232,00078-0607-51 ",.01)
 ;;00078-0607-51
 ;;9002226.02101,"2232,00078-0607-51 ",.02)
 ;;00078-0607-51
 ;;9002226.02101,"2232,00078-0607-89 ",.01)
 ;;00078-0607-89
 ;;9002226.02101,"2232,00078-0607-89 ",.02)
 ;;00078-0607-89
 ;;9002226.02101,"2232,00781-3234-34 ",.01)
 ;;00781-3234-34
 ;;9002226.02101,"2232,00781-3234-34 ",.02)
 ;;00781-3234-34
 ;;9002226.02101,"2232,00781-3234-71 ",.01)
 ;;00781-3234-71
 ;;9002226.02101,"2232,00781-3234-71 ",.02)
 ;;00781-3234-71
 ;;9002226.02101,"2232,44087-0022-03 ",.01)
 ;;44087-0022-03
 ;;9002226.02101,"2232,44087-0022-03 ",.02)
 ;;44087-0022-03
 ;;9002226.02101,"2232,44087-0022-09 ",.01)
 ;;44087-0022-09
 ;;9002226.02101,"2232,44087-0022-09 ",.02)
 ;;44087-0022-09
 ;;9002226.02101,"2232,44087-0044-03 ",.01)
 ;;44087-0044-03
 ;;9002226.02101,"2232,44087-0044-03 ",.02)
 ;;44087-0044-03
 ;;9002226.02101,"2232,44087-0044-09 ",.01)
 ;;44087-0044-09
 ;;9002226.02101,"2232,44087-0044-09 ",.02)
 ;;44087-0044-09
 ;;9002226.02101,"2232,44087-0188-01 ",.01)
 ;;44087-0188-01
 ;;9002226.02101,"2232,44087-0188-01 ",.02)
 ;;44087-0188-01
 ;;9002226.02101,"2232,44087-3322-01 ",.01)
 ;;44087-3322-01
 ;;9002226.02101,"2232,44087-3322-01 ",.02)
 ;;44087-3322-01
 ;;9002226.02101,"2232,44087-3322-09 ",.01)
 ;;44087-3322-09
 ;;9002226.02101,"2232,44087-3322-09 ",.02)
 ;;44087-3322-09
 ;;9002226.02101,"2232,44087-3344-01 ",.01)
 ;;44087-3344-01
 ;;9002226.02101,"2232,44087-3344-01 ",.02)
 ;;44087-3344-01
 ;;9002226.02101,"2232,44087-3344-09 ",.01)
 ;;44087-3344-09
 ;;9002226.02101,"2232,44087-3344-09 ",.02)
 ;;44087-3344-09
 ;;9002226.02101,"2232,44087-8822-01 ",.01)
 ;;44087-8822-01
 ;;9002226.02101,"2232,44087-8822-01 ",.02)
 ;;44087-8822-01
 ;;9002226.02101,"2232,50419-0522-01 ",.01)
 ;;50419-0522-01
 ;;9002226.02101,"2232,50419-0522-01 ",.02)
 ;;50419-0522-01
 ;;9002226.02101,"2232,50419-0523-09 ",.01)
 ;;50419-0523-09
 ;;9002226.02101,"2232,50419-0523-09 ",.02)
 ;;50419-0523-09
 ;;9002226.02101,"2232,50419-0523-35 ",.01)
 ;;50419-0523-35
 ;;9002226.02101,"2232,50419-0523-35 ",.02)
 ;;50419-0523-35
 ;;9002226.02101,"2232,50419-0524-01 ",.01)
 ;;50419-0524-01
 ;;9002226.02101,"2232,50419-0524-01 ",.02)
 ;;50419-0524-01
 ;;9002226.02101,"2232,50419-0524-35 ",.01)
 ;;50419-0524-35
 ;;9002226.02101,"2232,50419-0524-35 ",.02)
 ;;50419-0524-35
 ;;9002226.02101,"2232,58468-0210-01 ",.01)
 ;;58468-0210-01
 ;;9002226.02101,"2232,58468-0210-01 ",.02)
 ;;58468-0210-01
 ;;9002226.02101,"2232,58468-0210-02 ",.01)
 ;;58468-0210-02
 ;;9002226.02101,"2232,58468-0210-02 ",.02)
 ;;58468-0210-02
 ;;9002226.02101,"2232,58468-0211-01 ",.01)
 ;;58468-0211-01
 ;;9002226.02101,"2232,58468-0211-01 ",.02)
 ;;58468-0211-01
 ;;9002226.02101,"2232,58468-0211-02 ",.01)
 ;;58468-0211-02
 ;;9002226.02101,"2232,58468-0211-02 ",.02)
 ;;58468-0211-02
 ;;9002226.02101,"2232,59627-0001-03 ",.01)
 ;;59627-0001-03
 ;;9002226.02101,"2232,59627-0001-03 ",.02)
 ;;59627-0001-03
 ;;9002226.02101,"2232,59627-0001-04 ",.01)
 ;;59627-0001-04
 ;;9002226.02101,"2232,59627-0001-04 ",.02)
 ;;59627-0001-04
 ;;9002226.02101,"2232,59627-0002-05 ",.01)
 ;;59627-0002-05
 ;;9002226.02101,"2232,59627-0002-05 ",.02)
 ;;59627-0002-05
 ;;9002226.02101,"2232,59627-0002-07 ",.01)
 ;;59627-0002-07
 ;;9002226.02101,"2232,59627-0002-07 ",.02)
 ;;59627-0002-07
 ;;9002226.02101,"2232,59627-0003-01 ",.01)
 ;;59627-0003-01
 ;;9002226.02101,"2232,59627-0003-01 ",.02)
 ;;59627-0003-01
 ;;9002226.02101,"2232,59627-0003-04 ",.01)
 ;;59627-0003-04
 ;;9002226.02101,"2232,59627-0003-04 ",.02)
 ;;59627-0003-04
 ;;9002226.02101,"2232,59627-0111-03 ",.01)
 ;;59627-0111-03
 ;;9002226.02101,"2232,59627-0111-03 ",.02)
 ;;59627-0111-03
 ;;9002226.02101,"2232,59627-0222-05 ",.01)
 ;;59627-0222-05
 ;;9002226.02101,"2232,59627-0222-05 ",.02)
 ;;59627-0222-05
 ;;9002226.02101,"2232,59627-0333-04 ",.01)
 ;;59627-0333-04
 ;;9002226.02101,"2232,59627-0333-04 ",.02)
 ;;59627-0333-04
 ;;9002226.02101,"2232,64406-0005-01 ",.01)
 ;;64406-0005-01
 ;;9002226.02101,"2232,64406-0005-01 ",.02)
 ;;64406-0005-01
 ;;9002226.02101,"2232,64406-0006-02 ",.01)
 ;;64406-0006-02
 ;;9002226.02101,"2232,64406-0006-02 ",.02)
 ;;64406-0006-02
 ;;9002226.02101,"2232,64406-0007-03 ",.01)
 ;;64406-0007-03
 ;;9002226.02101,"2232,64406-0007-03 ",.02)
 ;;64406-0007-03
 ;;9002226.02101,"2232,64406-0011-01 ",.01)
 ;;64406-0011-01
 ;;9002226.02101,"2232,64406-0011-01 ",.02)
 ;;64406-0011-01
 ;;9002226.02101,"2232,64406-0011-02 ",.01)
 ;;64406-0011-02
 ;;9002226.02101,"2232,64406-0011-02 ",.02)
 ;;64406-0011-02
 ;;9002226.02101,"2232,64406-0012-01 ",.01)
 ;;64406-0012-01
 ;;9002226.02101,"2232,64406-0012-01 ",.02)
 ;;64406-0012-01
 ;;9002226.02101,"2232,64406-0015-01 ",.01)
 ;;64406-0015-01
 ;;9002226.02101,"2232,64406-0015-01 ",.02)
 ;;64406-0015-01
 ;;9002226.02101,"2232,64406-0015-02 ",.01)
 ;;64406-0015-02
 ;;9002226.02101,"2232,64406-0015-02 ",.02)
 ;;64406-0015-02
 ;;9002226.02101,"2232,64406-0016-01 ",.01)
 ;;64406-0016-01
 ;;9002226.02101,"2232,64406-0016-01 ",.02)
 ;;64406-0016-01
 ;;9002226.02101,"2232,68546-0317-30 ",.01)
 ;;68546-0317-30
 ;;9002226.02101,"2232,68546-0317-30 ",.02)
 ;;68546-0317-30
 ;;9002226.02101,"2232,68546-0325-06 ",.01)
 ;;68546-0325-06
 ;;9002226.02101,"2232,68546-0325-06 ",.02)
 ;;68546-0325-06
 ;;9002226.02101,"2232,68546-0325-12 ",.01)
 ;;68546-0325-12
 ;;9002226.02101,"2232,68546-0325-12 ",.02)
 ;;68546-0325-12
 ;
OTHER ; OTHER ROUTINES
 Q