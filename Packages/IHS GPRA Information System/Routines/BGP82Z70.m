BGP82Z70 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"619,63874-0267-05 ",.02)
 ;;63874-0267-05
 ;;9002226.02101,"619,63874-0267-08 ",.01)
 ;;63874-0267-08
 ;;9002226.02101,"619,63874-0267-08 ",.02)
 ;;63874-0267-08
 ;;9002226.02101,"619,63874-0267-10 ",.01)
 ;;63874-0267-10
 ;;9002226.02101,"619,63874-0267-10 ",.02)
 ;;63874-0267-10
 ;;9002226.02101,"619,63874-0267-12 ",.01)
 ;;63874-0267-12
 ;;9002226.02101,"619,63874-0267-12 ",.02)
 ;;63874-0267-12
 ;;9002226.02101,"619,63874-0267-15 ",.01)
 ;;63874-0267-15
 ;;9002226.02101,"619,63874-0267-15 ",.02)
 ;;63874-0267-15
 ;;9002226.02101,"619,63874-0267-20 ",.01)
 ;;63874-0267-20
 ;;9002226.02101,"619,63874-0267-20 ",.02)
 ;;63874-0267-20
 ;;9002226.02101,"619,63874-0267-28 ",.01)
 ;;63874-0267-28
 ;;9002226.02101,"619,63874-0267-28 ",.02)
 ;;63874-0267-28
 ;;9002226.02101,"619,63874-0267-30 ",.01)
 ;;63874-0267-30
 ;;9002226.02101,"619,63874-0267-30 ",.02)
 ;;63874-0267-30
 ;;9002226.02101,"619,63874-0267-40 ",.01)
 ;;63874-0267-40
 ;;9002226.02101,"619,63874-0267-40 ",.02)
 ;;63874-0267-40
 ;;9002226.02101,"619,63874-0267-50 ",.01)
 ;;63874-0267-50
 ;;9002226.02101,"619,63874-0267-50 ",.02)
 ;;63874-0267-50
 ;;9002226.02101,"619,63874-0267-60 ",.01)
 ;;63874-0267-60
 ;;9002226.02101,"619,63874-0267-60 ",.02)
 ;;63874-0267-60
 ;;9002226.02101,"619,63874-0267-90 ",.01)
 ;;63874-0267-90
 ;;9002226.02101,"619,63874-0267-90 ",.02)
 ;;63874-0267-90
 ;;9002226.02101,"619,63874-0279-01 ",.01)
 ;;63874-0279-01
 ;;9002226.02101,"619,63874-0279-01 ",.02)
 ;;63874-0279-01
 ;;9002226.02101,"619,63874-0279-30 ",.01)
 ;;63874-0279-30
 ;;9002226.02101,"619,63874-0279-30 ",.02)
 ;;63874-0279-30
 ;;9002226.02101,"619,63874-0279-60 ",.01)
 ;;63874-0279-60
 ;;9002226.02101,"619,63874-0279-60 ",.02)
 ;;63874-0279-60
 ;;9002226.02101,"619,63874-0279-90 ",.01)
 ;;63874-0279-90
 ;;9002226.02101,"619,63874-0279-90 ",.02)
 ;;63874-0279-90
 ;;9002226.02101,"619,63874-0293-01 ",.01)
 ;;63874-0293-01
 ;;9002226.02101,"619,63874-0293-01 ",.02)
 ;;63874-0293-01
 ;;9002226.02101,"619,63874-0293-30 ",.01)
 ;;63874-0293-30
 ;;9002226.02101,"619,63874-0293-30 ",.02)
 ;;63874-0293-30
 ;;9002226.02101,"619,63874-0293-60 ",.01)
 ;;63874-0293-60
 ;;9002226.02101,"619,63874-0293-60 ",.02)
 ;;63874-0293-60
 ;;9002226.02101,"619,63874-0293-90 ",.01)
 ;;63874-0293-90
 ;;9002226.02101,"619,63874-0293-90 ",.02)
 ;;63874-0293-90
 ;;9002226.02101,"619,63874-0295-01 ",.01)
 ;;63874-0295-01
 ;;9002226.02101,"619,63874-0295-01 ",.02)
 ;;63874-0295-01
 ;;9002226.02101,"619,63874-0295-30 ",.01)
 ;;63874-0295-30
 ;;9002226.02101,"619,63874-0295-30 ",.02)
 ;;63874-0295-30
 ;;9002226.02101,"619,63874-0295-60 ",.01)
 ;;63874-0295-60
 ;;9002226.02101,"619,63874-0295-60 ",.02)
 ;;63874-0295-60
 ;;9002226.02101,"619,63874-0295-90 ",.01)
 ;;63874-0295-90
 ;;9002226.02101,"619,63874-0295-90 ",.02)
 ;;63874-0295-90
 ;;9002226.02101,"619,63874-0532-00 ",.01)
 ;;63874-0532-00
 ;;9002226.02101,"619,63874-0532-00 ",.02)
 ;;63874-0532-00
 ;;9002226.02101,"619,63874-0532-01 ",.01)
 ;;63874-0532-01
 ;;9002226.02101,"619,63874-0532-01 ",.02)
 ;;63874-0532-01
 ;;9002226.02101,"619,63874-0532-07 ",.01)
 ;;63874-0532-07
 ;;9002226.02101,"619,63874-0532-07 ",.02)
 ;;63874-0532-07
 ;;9002226.02101,"619,63874-0532-10 ",.01)
 ;;63874-0532-10
 ;;9002226.02101,"619,63874-0532-10 ",.02)
 ;;63874-0532-10
 ;;9002226.02101,"619,63874-0532-15 ",.01)
 ;;63874-0532-15
 ;;9002226.02101,"619,63874-0532-15 ",.02)
 ;;63874-0532-15
 ;;9002226.02101,"619,63874-0532-23 ",.01)
 ;;63874-0532-23
 ;;9002226.02101,"619,63874-0532-23 ",.02)
 ;;63874-0532-23
 ;;9002226.02101,"619,63874-0532-25 ",.01)
 ;;63874-0532-25
 ;;9002226.02101,"619,63874-0532-25 ",.02)
 ;;63874-0532-25
 ;;9002226.02101,"619,63874-0532-28 ",.01)
 ;;63874-0532-28
 ;;9002226.02101,"619,63874-0532-28 ",.02)
 ;;63874-0532-28
 ;;9002226.02101,"619,63874-0532-33 ",.01)
 ;;63874-0532-33
 ;;9002226.02101,"619,63874-0532-33 ",.02)
 ;;63874-0532-33
 ;;9002226.02101,"619,63874-0532-35 ",.01)
 ;;63874-0532-35
 ;;9002226.02101,"619,63874-0532-35 ",.02)
 ;;63874-0532-35
 ;;9002226.02101,"619,63874-0532-40 ",.01)
 ;;63874-0532-40
 ;;9002226.02101,"619,63874-0532-40 ",.02)
 ;;63874-0532-40
 ;;9002226.02101,"619,63874-0532-53 ",.01)
 ;;63874-0532-53
 ;;9002226.02101,"619,63874-0532-53 ",.02)
 ;;63874-0532-53
 ;;9002226.02101,"619,63874-0532-63 ",.01)
 ;;63874-0532-63
 ;;9002226.02101,"619,63874-0532-63 ",.02)
 ;;63874-0532-63
 ;;9002226.02101,"619,63874-0532-84 ",.01)
 ;;63874-0532-84
 ;;9002226.02101,"619,63874-0532-84 ",.02)
 ;;63874-0532-84
 ;;9002226.02101,"619,63874-0532-93 ",.01)
 ;;63874-0532-93
 ;;9002226.02101,"619,63874-0532-93 ",.02)
 ;;63874-0532-93
 ;;9002226.02101,"619,63874-0834-01 ",.01)
 ;;63874-0834-01
 ;;9002226.02101,"619,63874-0834-01 ",.02)
 ;;63874-0834-01
 ;;9002226.02101,"619,63874-0834-04 ",.01)
 ;;63874-0834-04
 ;;9002226.02101,"619,63874-0834-04 ",.02)
 ;;63874-0834-04
 ;;9002226.02101,"619,63874-0834-10 ",.01)
 ;;63874-0834-10
 ;;9002226.02101,"619,63874-0834-10 ",.02)
 ;;63874-0834-10
 ;;9002226.02101,"619,63874-0834-15 ",.01)
 ;;63874-0834-15
 ;;9002226.02101,"619,63874-0834-15 ",.02)
 ;;63874-0834-15
 ;;9002226.02101,"619,63874-0834-20 ",.01)
 ;;63874-0834-20
 ;;9002226.02101,"619,63874-0834-20 ",.02)
 ;;63874-0834-20
 ;;9002226.02101,"619,63874-0834-24 ",.01)
 ;;63874-0834-24
 ;;9002226.02101,"619,63874-0834-24 ",.02)
 ;;63874-0834-24
 ;;9002226.02101,"619,63874-0834-28 ",.01)
 ;;63874-0834-28
 ;;9002226.02101,"619,63874-0834-28 ",.02)
 ;;63874-0834-28
 ;;9002226.02101,"619,63874-0834-30 ",.01)
 ;;63874-0834-30
 ;;9002226.02101,"619,63874-0834-30 ",.02)
 ;;63874-0834-30
 ;;9002226.02101,"619,63874-0834-40 ",.01)
 ;;63874-0834-40
 ;;9002226.02101,"619,63874-0834-40 ",.02)
 ;;63874-0834-40
 ;;9002226.02101,"619,63874-0834-42 ",.01)
 ;;63874-0834-42
 ;;9002226.02101,"619,63874-0834-42 ",.02)
 ;;63874-0834-42
 ;;9002226.02101,"619,63874-0834-50 ",.01)
 ;;63874-0834-50
 ;;9002226.02101,"619,63874-0834-50 ",.02)
 ;;63874-0834-50
 ;;9002226.02101,"619,63874-0834-56 ",.01)
 ;;63874-0834-56
 ;;9002226.02101,"619,63874-0834-56 ",.02)
 ;;63874-0834-56
 ;;9002226.02101,"619,63874-0834-60 ",.01)
 ;;63874-0834-60
 ;;9002226.02101,"619,63874-0834-60 ",.02)
 ;;63874-0834-60
 ;;9002226.02101,"619,63874-0834-71 ",.01)
 ;;63874-0834-71
 ;;9002226.02101,"619,63874-0834-71 ",.02)
 ;;63874-0834-71
 ;;9002226.02101,"619,63874-0834-72 ",.01)
 ;;63874-0834-72
 ;;9002226.02101,"619,63874-0834-72 ",.02)
 ;;63874-0834-72
 ;;9002226.02101,"619,63874-0834-73 ",.01)
 ;;63874-0834-73
 ;;9002226.02101,"619,63874-0834-73 ",.02)
 ;;63874-0834-73
 ;;9002226.02101,"619,63874-0834-74 ",.01)
 ;;63874-0834-74
 ;;9002226.02101,"619,63874-0834-74 ",.02)
 ;;63874-0834-74
 ;;9002226.02101,"619,63874-0834-76 ",.01)
 ;;63874-0834-76
 ;;9002226.02101,"619,63874-0834-76 ",.02)
 ;;63874-0834-76
 ;;9002226.02101,"619,63874-0834-77 ",.01)
 ;;63874-0834-77
 ;;9002226.02101,"619,63874-0834-77 ",.02)
 ;;63874-0834-77
 ;;9002226.02101,"619,63874-0834-79 ",.01)
 ;;63874-0834-79
 ;;9002226.02101,"619,63874-0834-79 ",.02)
 ;;63874-0834-79
 ;;9002226.02101,"619,63874-0834-83 ",.01)
 ;;63874-0834-83
 ;;9002226.02101,"619,63874-0834-83 ",.02)
 ;;63874-0834-83
 ;;9002226.02101,"619,63874-0834-84 ",.01)
 ;;63874-0834-84
 ;;9002226.02101,"619,63874-0834-84 ",.02)
 ;;63874-0834-84
 ;;9002226.02101,"619,63874-0834-88 ",.01)
 ;;63874-0834-88
 ;;9002226.02101,"619,63874-0834-88 ",.02)
 ;;63874-0834-88
 ;;9002226.02101,"619,63874-0834-90 ",.01)
 ;;63874-0834-90
 ;;9002226.02101,"619,63874-0834-90 ",.02)
 ;;63874-0834-90
 ;;9002226.02101,"619,63874-0834-99 ",.01)
 ;;63874-0834-99
 ;;9002226.02101,"619,63874-0834-99 ",.02)
 ;;63874-0834-99
 ;;9002226.02101,"619,63874-0861-01 ",.01)
 ;;63874-0861-01
 ;;9002226.02101,"619,63874-0861-01 ",.02)
 ;;63874-0861-01
 ;;9002226.02101,"619,63874-0861-30 ",.01)
 ;;63874-0861-30
 ;;9002226.02101,"619,63874-0861-30 ",.02)
 ;;63874-0861-30
 ;;9002226.02101,"619,63874-0861-60 ",.01)
 ;;63874-0861-60
 ;;9002226.02101,"619,63874-0861-60 ",.02)
 ;;63874-0861-60
 ;;9002226.02101,"619,63874-0861-90 ",.01)
 ;;63874-0861-90
 ;;9002226.02101,"619,63874-0861-90 ",.02)
 ;;63874-0861-90
 ;;9002226.02101,"619,63874-1092-03 ",.01)
 ;;63874-1092-03
 ;;9002226.02101,"619,63874-1092-03 ",.02)
 ;;63874-1092-03
 ;;9002226.02101,"619,63874-1092-04 ",.01)
 ;;63874-1092-04
 ;;9002226.02101,"619,63874-1092-04 ",.02)
 ;;63874-1092-04
 ;;9002226.02101,"619,63874-1092-05 ",.01)
 ;;63874-1092-05
 ;;9002226.02101,"619,63874-1092-05 ",.02)
 ;;63874-1092-05
 ;;9002226.02101,"619,63874-1092-06 ",.01)
 ;;63874-1092-06
 ;;9002226.02101,"619,63874-1092-06 ",.02)
 ;;63874-1092-06
 ;;9002226.02101,"619,63874-1092-09 ",.01)
 ;;63874-1092-09
 ;;9002226.02101,"619,63874-1092-09 ",.02)
 ;;63874-1092-09
 ;;9002226.02101,"619,63874-1105-03 ",.01)
 ;;63874-1105-03
 ;;9002226.02101,"619,63874-1105-03 ",.02)
 ;;63874-1105-03
 ;;9002226.02101,"619,63874-1105-04 ",.01)
 ;;63874-1105-04
 ;;9002226.02101,"619,63874-1105-04 ",.02)
 ;;63874-1105-04
 ;;9002226.02101,"619,63874-1105-06 ",.01)
 ;;63874-1105-06
 ;;9002226.02101,"619,63874-1105-06 ",.02)
 ;;63874-1105-06
 ;;9002226.02101,"619,63874-1105-09 ",.01)
 ;;63874-1105-09
 ;;9002226.02101,"619,63874-1105-09 ",.02)
 ;;63874-1105-09
 ;;9002226.02101,"619,63874-1106-01 ",.01)
 ;;63874-1106-01
 ;;9002226.02101,"619,63874-1106-01 ",.02)
 ;;63874-1106-01
 ;;9002226.02101,"619,63874-1106-02 ",.01)
 ;;63874-1106-02
 ;;9002226.02101,"619,63874-1106-02 ",.02)
 ;;63874-1106-02
 ;;9002226.02101,"619,63874-1106-03 ",.01)
 ;;63874-1106-03
 ;;9002226.02101,"619,63874-1106-03 ",.02)
 ;;63874-1106-03
 ;;9002226.02101,"619,63874-1106-04 ",.01)
 ;;63874-1106-04
 ;;9002226.02101,"619,63874-1106-04 ",.02)
 ;;63874-1106-04
 ;;9002226.02101,"619,63874-1106-05 ",.01)
 ;;63874-1106-05
 ;;9002226.02101,"619,63874-1106-05 ",.02)
 ;;63874-1106-05
 ;;9002226.02101,"619,63874-1106-06 ",.01)
 ;;63874-1106-06
 ;;9002226.02101,"619,63874-1106-06 ",.02)
 ;;63874-1106-06
 ;;9002226.02101,"619,63874-1106-08 ",.01)
 ;;63874-1106-08
 ;;9002226.02101,"619,63874-1106-08 ",.02)
 ;;63874-1106-08
 ;;9002226.02101,"619,63874-1106-09 ",.01)
 ;;63874-1106-09
 ;;9002226.02101,"619,63874-1106-09 ",.02)
 ;;63874-1106-09
 ;;9002226.02101,"619,63874-1163-00 ",.01)
 ;;63874-1163-00
 ;;9002226.02101,"619,63874-1163-00 ",.02)
 ;;63874-1163-00
 ;;9002226.02101,"619,63874-1163-01 ",.01)
 ;;63874-1163-01
 ;;9002226.02101,"619,63874-1163-01 ",.02)
 ;;63874-1163-01
 ;;9002226.02101,"619,63874-1163-02 ",.01)
 ;;63874-1163-02
 ;;9002226.02101,"619,63874-1163-02 ",.02)
 ;;63874-1163-02
 ;;9002226.02101,"619,63874-1163-03 ",.01)
 ;;63874-1163-03
 ;;9002226.02101,"619,63874-1163-03 ",.02)
 ;;63874-1163-03
 ;;9002226.02101,"619,63874-1163-04 ",.01)
 ;;63874-1163-04
 ;;9002226.02101,"619,63874-1163-04 ",.02)
 ;;63874-1163-04
 ;;9002226.02101,"619,63874-1163-06 ",.01)
 ;;63874-1163-06
 ;;9002226.02101,"619,63874-1163-06 ",.02)
 ;;63874-1163-06
 ;;9002226.02101,"619,63874-1163-08 ",.01)
 ;;63874-1163-08
 ;;9002226.02101,"619,63874-1163-08 ",.02)
 ;;63874-1163-08
 ;;9002226.02101,"619,63874-1163-09 ",.01)
 ;;63874-1163-09
 ;;9002226.02101,"619,63874-1163-09 ",.02)
 ;;63874-1163-09
 ;;9002226.02101,"619,63874-1227-00 ",.01)
 ;;63874-1227-00
 ;;9002226.02101,"619,63874-1227-00 ",.02)
 ;;63874-1227-00
 ;;9002226.02101,"619,63874-1227-01 ",.01)
 ;;63874-1227-01
 ;;9002226.02101,"619,63874-1227-01 ",.02)
 ;;63874-1227-01
 ;;9002226.02101,"619,63874-1227-03 ",.01)
 ;;63874-1227-03
 ;;9002226.02101,"619,63874-1227-03 ",.02)
 ;;63874-1227-03
 ;;9002226.02101,"619,63874-1227-06 ",.01)
 ;;63874-1227-06