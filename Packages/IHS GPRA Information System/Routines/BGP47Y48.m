BGP47Y48 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,59762-2273-03 ",.01)
 ;;59762-2273-03
 ;;9002226.02101,"1729,59762-2273-03 ",.02)
 ;;59762-2273-03
 ;;9002226.02101,"1729,59762-2273-07 ",.01)
 ;;59762-2273-07
 ;;9002226.02101,"1729,59762-2273-07 ",.02)
 ;;59762-2273-07
 ;;9002226.02101,"1729,59762-2274-01 ",.01)
 ;;59762-2274-01
 ;;9002226.02101,"1729,59762-2274-01 ",.02)
 ;;59762-2274-01
 ;;9002226.02101,"1729,59762-2274-03 ",.01)
 ;;59762-2274-03
 ;;9002226.02101,"1729,59762-2274-03 ",.02)
 ;;59762-2274-03
 ;;9002226.02101,"1729,59762-2274-07 ",.01)
 ;;59762-2274-07
 ;;9002226.02101,"1729,59762-2274-07 ",.02)
 ;;59762-2274-07
 ;;9002226.02101,"1729,59762-2275-01 ",.01)
 ;;59762-2275-01
 ;;9002226.02101,"1729,59762-2275-01 ",.02)
 ;;59762-2275-01
 ;;9002226.02101,"1729,59762-2275-03 ",.01)
 ;;59762-2275-03
 ;;9002226.02101,"1729,59762-2275-03 ",.02)
 ;;59762-2275-03
 ;;9002226.02101,"1729,59762-2275-07 ",.01)
 ;;59762-2275-07
 ;;9002226.02101,"1729,59762-2275-07 ",.02)
 ;;59762-2275-07
 ;;9002226.02101,"1729,59762-3146-01 ",.01)
 ;;59762-3146-01
 ;;9002226.02101,"1729,59762-3146-01 ",.02)
 ;;59762-3146-01
 ;;9002226.02101,"1729,59762-3146-02 ",.01)
 ;;59762-3146-02
 ;;9002226.02101,"1729,59762-3146-02 ",.02)
 ;;59762-3146-02
 ;;9002226.02101,"1729,59762-3147-01 ",.01)
 ;;59762-3147-01
 ;;9002226.02101,"1729,59762-3147-01 ",.02)
 ;;59762-3147-01
 ;;9002226.02101,"1729,59762-3147-02 ",.01)
 ;;59762-3147-02
 ;;9002226.02101,"1729,59762-3147-02 ",.02)
 ;;59762-3147-02
 ;;9002226.02101,"1729,59762-3148-01 ",.01)
 ;;59762-3148-01
 ;;9002226.02101,"1729,59762-3148-01 ",.02)
 ;;59762-3148-01
 ;;9002226.02101,"1729,59762-3148-02 ",.01)
 ;;59762-3148-02
 ;;9002226.02101,"1729,59762-3148-02 ",.02)
 ;;59762-3148-02
 ;;9002226.02101,"1729,59762-3294-01 ",.01)
 ;;59762-3294-01
 ;;9002226.02101,"1729,59762-3294-01 ",.02)
 ;;59762-3294-01
 ;;9002226.02101,"1729,59762-3294-02 ",.01)
 ;;59762-3294-02
 ;;9002226.02101,"1729,59762-3294-02 ",.02)
 ;;59762-3294-02
 ;;9002226.02101,"1729,59762-3294-03 ",.01)
 ;;59762-3294-03
 ;;9002226.02101,"1729,59762-3294-03 ",.02)
 ;;59762-3294-03
 ;;9002226.02101,"1729,59762-3294-04 ",.01)
 ;;59762-3294-04
 ;;9002226.02101,"1729,59762-3294-04 ",.02)
 ;;59762-3294-04
 ;;9002226.02101,"1729,59762-3295-01 ",.01)
 ;;59762-3295-01
 ;;9002226.02101,"1729,59762-3295-01 ",.02)
 ;;59762-3295-01
 ;;9002226.02101,"1729,59762-3295-02 ",.01)
 ;;59762-3295-02
 ;;9002226.02101,"1729,59762-3295-02 ",.02)
 ;;59762-3295-02
 ;;9002226.02101,"1729,59762-3295-03 ",.01)
 ;;59762-3295-03
 ;;9002226.02101,"1729,59762-3295-03 ",.02)
 ;;59762-3295-03
 ;;9002226.02101,"1729,59762-3295-04 ",.01)
 ;;59762-3295-04
 ;;9002226.02101,"1729,59762-3295-04 ",.02)
 ;;59762-3295-04
 ;;9002226.02101,"1729,59762-5019-01 ",.01)
 ;;59762-5019-01
 ;;9002226.02101,"1729,59762-5019-01 ",.02)
 ;;59762-5019-01
 ;;9002226.02101,"1729,59762-5020-01 ",.01)
 ;;59762-5020-01
 ;;9002226.02101,"1729,59762-5020-01 ",.02)
 ;;59762-5020-01
 ;;9002226.02101,"1729,59762-5021-01 ",.01)
 ;;59762-5021-01
 ;;9002226.02101,"1729,59762-5021-01 ",.02)
 ;;59762-5021-01
 ;;9002226.02101,"1729,59762-5022-01 ",.01)
 ;;59762-5022-01
 ;;9002226.02101,"1729,59762-5022-01 ",.02)
 ;;59762-5022-01
 ;;9002226.02101,"1729,59762-5250-01 ",.01)
 ;;59762-5250-01
 ;;9002226.02101,"1729,59762-5250-01 ",.02)
 ;;59762-5250-01
 ;;9002226.02101,"1729,59762-5250-04 ",.01)
 ;;59762-5250-04
 ;;9002226.02101,"1729,59762-5250-04 ",.02)
 ;;59762-5250-04
 ;;9002226.02101,"1729,59762-5251-01 ",.01)
 ;;59762-5251-01
 ;;9002226.02101,"1729,59762-5251-01 ",.02)
 ;;59762-5251-01
 ;;9002226.02101,"1729,59762-5251-04 ",.01)
 ;;59762-5251-04
 ;;9002226.02101,"1729,59762-5251-04 ",.02)
 ;;59762-5251-04
 ;;9002226.02101,"1729,59772-5160-05 ",.01)
 ;;59772-5160-05
 ;;9002226.02101,"1729,59772-5160-05 ",.02)
 ;;59772-5160-05
 ;;9002226.02101,"1729,59772-5161-05 ",.01)
 ;;59772-5161-05
 ;;9002226.02101,"1729,59772-5161-05 ",.02)
 ;;59772-5161-05
 ;;9002226.02101,"1729,59772-5162-05 ",.01)
 ;;59772-5162-05
 ;;9002226.02101,"1729,59772-5162-05 ",.02)
 ;;59772-5162-05
 ;;9002226.02101,"1729,59772-5163-05 ",.01)
 ;;59772-5163-05
 ;;9002226.02101,"1729,59772-5163-05 ",.02)
 ;;59772-5163-05
 ;;9002226.02101,"1729,59772-7045-01 ",.01)
 ;;59772-7045-01
 ;;9002226.02101,"1729,59772-7045-01 ",.02)
 ;;59772-7045-01
 ;;9002226.02101,"1729,59772-7045-03 ",.01)
 ;;59772-7045-03
 ;;9002226.02101,"1729,59772-7045-03 ",.02)
 ;;59772-7045-03
 ;;9002226.02101,"1729,59772-7046-01 ",.01)
 ;;59772-7046-01
 ;;9002226.02101,"1729,59772-7046-01 ",.02)
 ;;59772-7046-01
 ;;9002226.02101,"1729,59772-7046-03 ",.01)
 ;;59772-7046-03
 ;;9002226.02101,"1729,59772-7046-03 ",.02)
 ;;59772-7046-03
 ;;9002226.02101,"1729,59772-7047-01 ",.01)
 ;;59772-7047-01
 ;;9002226.02101,"1729,59772-7047-01 ",.02)
 ;;59772-7047-01
 ;;9002226.02101,"1729,59772-7047-03 ",.01)
 ;;59772-7047-03
 ;;9002226.02101,"1729,59772-7047-03 ",.02)
 ;;59772-7047-03
 ;;9002226.02101,"1729,59772-7048-01 ",.01)
 ;;59772-7048-01
 ;;9002226.02101,"1729,59772-7048-01 ",.02)
 ;;59772-7048-01
 ;;9002226.02101,"1729,59930-1655-01 ",.01)
 ;;59930-1655-01
 ;;9002226.02101,"1729,59930-1655-01 ",.02)
 ;;59930-1655-01
 ;;9002226.02101,"1729,59930-1655-02 ",.01)
 ;;59930-1655-02
 ;;9002226.02101,"1729,59930-1655-02 ",.02)
 ;;59930-1655-02
 ;;9002226.02101,"1729,59930-1655-03 ",.01)
 ;;59930-1655-03
 ;;9002226.02101,"1729,59930-1655-03 ",.02)
 ;;59930-1655-03
 ;;9002226.02101,"1729,59930-1656-01 ",.01)
 ;;59930-1656-01
 ;;9002226.02101,"1729,59930-1656-01 ",.02)
 ;;59930-1656-01
 ;;9002226.02101,"1729,59930-1656-02 ",.01)
 ;;59930-1656-02
 ;;9002226.02101,"1729,59930-1656-02 ",.02)
 ;;59930-1656-02
 ;;9002226.02101,"1729,59930-1656-03 ",.01)
 ;;59930-1656-03
 ;;9002226.02101,"1729,59930-1656-03 ",.02)
 ;;59930-1656-03
 ;;9002226.02101,"1729,59930-1657-01 ",.01)
 ;;59930-1657-01
 ;;9002226.02101,"1729,59930-1657-01 ",.02)
 ;;59930-1657-01
 ;;9002226.02101,"1729,59930-1657-02 ",.01)
 ;;59930-1657-02
 ;;9002226.02101,"1729,59930-1657-02 ",.02)
 ;;59930-1657-02
 ;;9002226.02101,"1729,59930-1657-03 ",.01)
 ;;59930-1657-03
 ;;9002226.02101,"1729,59930-1657-03 ",.02)
 ;;59930-1657-03
 ;;9002226.02101,"1729,59930-1658-01 ",.01)
 ;;59930-1658-01
 ;;9002226.02101,"1729,59930-1658-01 ",.02)
 ;;59930-1658-01
 ;;9002226.02101,"1729,60346-0534-30 ",.01)
 ;;60346-0534-30
 ;;9002226.02101,"1729,60346-0534-30 ",.02)
 ;;60346-0534-30
 ;;9002226.02101,"1729,60346-0595-30 ",.01)
 ;;60346-0595-30
 ;;9002226.02101,"1729,60346-0595-30 ",.02)
 ;;60346-0595-30
 ;;9002226.02101,"1729,60346-0612-30 ",.01)
 ;;60346-0612-30
 ;;9002226.02101,"1729,60346-0612-30 ",.02)
 ;;60346-0612-30
 ;;9002226.02101,"1729,60346-0612-90 ",.01)
 ;;60346-0612-90
 ;;9002226.02101,"1729,60346-0612-90 ",.02)
 ;;60346-0612-90
 ;;9002226.02101,"1729,60346-0618-30 ",.01)
 ;;60346-0618-30
 ;;9002226.02101,"1729,60346-0618-30 ",.02)
 ;;60346-0618-30
 ;;9002226.02101,"1729,60346-0778-30 ",.01)
 ;;60346-0778-30
 ;;9002226.02101,"1729,60346-0778-30 ",.02)
 ;;60346-0778-30
 ;;9002226.02101,"1729,60346-0778-90 ",.01)
 ;;60346-0778-90
 ;;9002226.02101,"1729,60346-0778-90 ",.02)
 ;;60346-0778-90
 ;;9002226.02101,"1729,60346-0868-30 ",.01)
 ;;60346-0868-30
 ;;9002226.02101,"1729,60346-0868-30 ",.02)
 ;;60346-0868-30
 ;;9002226.02101,"1729,60346-0871-03 ",.01)
 ;;60346-0871-03
 ;;9002226.02101,"1729,60346-0871-03 ",.02)
 ;;60346-0871-03
 ;;9002226.02101,"1729,60346-0871-30 ",.01)
 ;;60346-0871-30
 ;;9002226.02101,"1729,60346-0871-30 ",.02)
 ;;60346-0871-30
 ;;9002226.02101,"1729,60346-0901-30 ",.01)
 ;;60346-0901-30
 ;;9002226.02101,"1729,60346-0901-30 ",.02)
 ;;60346-0901-30
 ;;9002226.02101,"1729,60346-0972-08 ",.01)
 ;;60346-0972-08
 ;;9002226.02101,"1729,60346-0972-08 ",.02)
 ;;60346-0972-08
 ;;9002226.02101,"1729,60346-0972-30 ",.01)
 ;;60346-0972-30
 ;;9002226.02101,"1729,60346-0972-30 ",.02)
 ;;60346-0972-30
 ;;9002226.02101,"1729,60346-0984-30 ",.01)
 ;;60346-0984-30
 ;;9002226.02101,"1729,60346-0984-30 ",.02)
 ;;60346-0984-30
 ;;9002226.02101,"1729,60346-0984-60 ",.01)
 ;;60346-0984-60
 ;;9002226.02101,"1729,60346-0984-60 ",.02)
 ;;60346-0984-60
 ;;9002226.02101,"1729,60429-0029-01 ",.01)
 ;;60429-0029-01
 ;;9002226.02101,"1729,60429-0029-01 ",.02)
 ;;60429-0029-01
 ;;9002226.02101,"1729,60429-0029-10 ",.01)
 ;;60429-0029-10
 ;;9002226.02101,"1729,60429-0029-10 ",.02)
 ;;60429-0029-10
 ;;9002226.02101,"1729,60429-0029-90 ",.01)
 ;;60429-0029-90
 ;;9002226.02101,"1729,60429-0029-90 ",.02)
 ;;60429-0029-90
 ;;9002226.02101,"1729,60429-0030-01 ",.01)
 ;;60429-0030-01
 ;;9002226.02101,"1729,60429-0030-01 ",.02)
 ;;60429-0030-01
 ;;9002226.02101,"1729,60429-0030-10 ",.01)
 ;;60429-0030-10
 ;;9002226.02101,"1729,60429-0030-10 ",.02)
 ;;60429-0030-10
 ;;9002226.02101,"1729,60429-0030-12 ",.01)
 ;;60429-0030-12
 ;;9002226.02101,"1729,60429-0030-12 ",.02)
 ;;60429-0030-12
 ;;9002226.02101,"1729,60429-0030-27 ",.01)
 ;;60429-0030-27
 ;;9002226.02101,"1729,60429-0030-27 ",.02)
 ;;60429-0030-27
 ;;9002226.02101,"1729,60429-0030-60 ",.01)
 ;;60429-0030-60
 ;;9002226.02101,"1729,60429-0030-60 ",.02)
 ;;60429-0030-60
 ;;9002226.02101,"1729,60429-0030-90 ",.01)
 ;;60429-0030-90
 ;;9002226.02101,"1729,60429-0030-90 ",.02)
 ;;60429-0030-90
 ;;9002226.02101,"1729,60429-0031-01 ",.01)
 ;;60429-0031-01
 ;;9002226.02101,"1729,60429-0031-01 ",.02)
 ;;60429-0031-01
 ;;9002226.02101,"1729,60429-0031-10 ",.01)
 ;;60429-0031-10
 ;;9002226.02101,"1729,60429-0031-10 ",.02)
 ;;60429-0031-10
 ;;9002226.02101,"1729,60429-0031-12 ",.01)
 ;;60429-0031-12
 ;;9002226.02101,"1729,60429-0031-12 ",.02)
 ;;60429-0031-12
 ;;9002226.02101,"1729,60429-0031-27 ",.01)
 ;;60429-0031-27
 ;;9002226.02101,"1729,60429-0031-27 ",.02)
 ;;60429-0031-27
 ;;9002226.02101,"1729,60429-0031-30 ",.01)
 ;;60429-0031-30
 ;;9002226.02101,"1729,60429-0031-30 ",.02)
 ;;60429-0031-30
 ;;9002226.02101,"1729,60429-0031-60 ",.01)
 ;;60429-0031-60
 ;;9002226.02101,"1729,60429-0031-60 ",.02)
 ;;60429-0031-60
 ;;9002226.02101,"1729,60429-0031-90 ",.01)
 ;;60429-0031-90
 ;;9002226.02101,"1729,60429-0031-90 ",.02)
 ;;60429-0031-90
 ;;9002226.02101,"1729,60429-0038-01 ",.01)
 ;;60429-0038-01
 ;;9002226.02101,"1729,60429-0038-01 ",.02)
 ;;60429-0038-01
 ;;9002226.02101,"1729,60429-0039-01 ",.01)
 ;;60429-0039-01
 ;;9002226.02101,"1729,60429-0039-01 ",.02)
 ;;60429-0039-01
 ;;9002226.02101,"1729,60429-0039-10 ",.01)
 ;;60429-0039-10
 ;;9002226.02101,"1729,60429-0039-10 ",.02)
 ;;60429-0039-10
 ;;9002226.02101,"1729,60429-0040-01 ",.01)
 ;;60429-0040-01
 ;;9002226.02101,"1729,60429-0040-01 ",.02)
 ;;60429-0040-01
 ;;9002226.02101,"1729,60429-0040-10 ",.01)
 ;;60429-0040-10
 ;;9002226.02101,"1729,60429-0040-10 ",.02)
 ;;60429-0040-10
 ;;9002226.02101,"1729,60429-0041-01 ",.01)
 ;;60429-0041-01
 ;;9002226.02101,"1729,60429-0041-01 ",.02)
 ;;60429-0041-01
 ;;9002226.02101,"1729,60429-0041-10 ",.01)
 ;;60429-0041-10
 ;;9002226.02101,"1729,60429-0041-10 ",.02)
 ;;60429-0041-10
 ;;9002226.02101,"1729,60429-0044-01 ",.01)
 ;;60429-0044-01
 ;;9002226.02101,"1729,60429-0044-01 ",.02)
 ;;60429-0044-01
 ;;9002226.02101,"1729,60429-0044-10 ",.01)
 ;;60429-0044-10
 ;;9002226.02101,"1729,60429-0044-10 ",.02)
 ;;60429-0044-10
 ;;9002226.02101,"1729,60429-0045-01 ",.01)
 ;;60429-0045-01
 ;;9002226.02101,"1729,60429-0045-01 ",.02)
 ;;60429-0045-01
 ;;9002226.02101,"1729,60429-0045-10 ",.01)
 ;;60429-0045-10
 ;;9002226.02101,"1729,60429-0045-10 ",.02)
 ;;60429-0045-10
 ;;9002226.02101,"1729,60429-0045-90 ",.01)
 ;;60429-0045-90
 ;;9002226.02101,"1729,60429-0045-90 ",.02)
 ;;60429-0045-90
 ;;9002226.02101,"1729,60429-0046-01 ",.01)
 ;;60429-0046-01
 ;;9002226.02101,"1729,60429-0046-01 ",.02)
 ;;60429-0046-01
 ;;9002226.02101,"1729,60429-0046-10 ",.01)
 ;;60429-0046-10
 ;;9002226.02101,"1729,60429-0046-10 ",.02)
 ;;60429-0046-10
 ;;9002226.02101,"1729,60429-0071-01 ",.01)
 ;;60429-0071-01
 ;;9002226.02101,"1729,60429-0071-01 ",.02)
 ;;60429-0071-01
 ;;9002226.02101,"1729,60429-0071-05 ",.01)
 ;;60429-0071-05
 ;;9002226.02101,"1729,60429-0071-05 ",.02)
 ;;60429-0071-05
 ;;9002226.02101,"1729,60429-0071-10 ",.01)
 ;;60429-0071-10
 ;;9002226.02101,"1729,60429-0071-10 ",.02)
 ;;60429-0071-10
 ;;9002226.02101,"1729,60429-0071-27 ",.01)
 ;;60429-0071-27
 ;;9002226.02101,"1729,60429-0071-27 ",.02)
 ;;60429-0071-27
 ;;9002226.02101,"1729,60429-0071-30 ",.01)
 ;;60429-0071-30
 ;;9002226.02101,"1729,60429-0071-30 ",.02)
 ;;60429-0071-30
 ;;9002226.02101,"1729,60429-0071-60 ",.01)
 ;;60429-0071-60
 ;;9002226.02101,"1729,60429-0071-60 ",.02)
 ;;60429-0071-60
 ;;9002226.02101,"1729,60429-0071-90 ",.01)
 ;;60429-0071-90
 ;;9002226.02101,"1729,60429-0071-90 ",.02)
 ;;60429-0071-90
 ;;9002226.02101,"1729,60429-0072-01 ",.01)
 ;;60429-0072-01
 ;;9002226.02101,"1729,60429-0072-01 ",.02)
 ;;60429-0072-01
 ;;9002226.02101,"1729,60429-0072-05 ",.01)
 ;;60429-0072-05
 ;;9002226.02101,"1729,60429-0072-05 ",.02)
 ;;60429-0072-05
 ;;9002226.02101,"1729,60429-0072-10 ",.01)
 ;;60429-0072-10
 ;;9002226.02101,"1729,60429-0072-10 ",.02)
 ;;60429-0072-10
 ;;9002226.02101,"1729,60429-0072-27 ",.01)
 ;;60429-0072-27
 ;;9002226.02101,"1729,60429-0072-27 ",.02)
 ;;60429-0072-27
 ;;9002226.02101,"1729,60429-0072-30 ",.01)
 ;;60429-0072-30
 ;;9002226.02101,"1729,60429-0072-30 ",.02)
 ;;60429-0072-30
 ;;9002226.02101,"1729,60429-0072-60 ",.01)
 ;;60429-0072-60
 ;;9002226.02101,"1729,60429-0072-60 ",.02)
 ;;60429-0072-60
 ;;9002226.02101,"1729,60429-0072-90 ",.01)
 ;;60429-0072-90