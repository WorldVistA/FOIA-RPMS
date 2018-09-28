BGP8ZI26 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,13107-0001-30 ",.01)
 ;;13107-0001-30
 ;;9002226.02101,"869,13107-0001-30 ",.02)
 ;;13107-0001-30
 ;;9002226.02101,"869,13107-0003-05 ",.01)
 ;;13107-0003-05
 ;;9002226.02101,"869,13107-0003-05 ",.02)
 ;;13107-0003-05
 ;;9002226.02101,"869,13107-0003-30 ",.01)
 ;;13107-0003-30
 ;;9002226.02101,"869,13107-0003-30 ",.02)
 ;;13107-0003-30
 ;;9002226.02101,"869,13107-0003-34 ",.01)
 ;;13107-0003-34
 ;;9002226.02101,"869,13107-0003-34 ",.02)
 ;;13107-0003-34
 ;;9002226.02101,"869,13107-0005-01 ",.01)
 ;;13107-0005-01
 ;;9002226.02101,"869,13107-0005-01 ",.02)
 ;;13107-0005-01
 ;;9002226.02101,"869,13107-0005-05 ",.01)
 ;;13107-0005-05
 ;;9002226.02101,"869,13107-0005-05 ",.02)
 ;;13107-0005-05
 ;;9002226.02101,"869,13107-0006-01 ",.01)
 ;;13107-0006-01
 ;;9002226.02101,"869,13107-0006-01 ",.02)
 ;;13107-0006-01
 ;;9002226.02101,"869,13107-0006-05 ",.01)
 ;;13107-0006-05
 ;;9002226.02101,"869,13107-0006-05 ",.02)
 ;;13107-0006-05
 ;;9002226.02101,"869,13107-0007-01 ",.01)
 ;;13107-0007-01
 ;;9002226.02101,"869,13107-0007-01 ",.02)
 ;;13107-0007-01
 ;;9002226.02101,"869,13107-0007-05 ",.01)
 ;;13107-0007-05
 ;;9002226.02101,"869,13107-0007-05 ",.02)
 ;;13107-0007-05
 ;;9002226.02101,"869,13107-0031-05 ",.01)
 ;;13107-0031-05
 ;;9002226.02101,"869,13107-0031-05 ",.02)
 ;;13107-0031-05
 ;;9002226.02101,"869,13107-0031-30 ",.01)
 ;;13107-0031-30
 ;;9002226.02101,"869,13107-0031-30 ",.02)
 ;;13107-0031-30
 ;;9002226.02101,"869,13107-0031-34 ",.01)
 ;;13107-0031-34
 ;;9002226.02101,"869,13107-0031-34 ",.02)
 ;;13107-0031-34
 ;;9002226.02101,"869,13107-0032-05 ",.01)
 ;;13107-0032-05
 ;;9002226.02101,"869,13107-0032-05 ",.02)
 ;;13107-0032-05
 ;;9002226.02101,"869,13107-0032-34 ",.01)
 ;;13107-0032-34
 ;;9002226.02101,"869,13107-0032-34 ",.02)
 ;;13107-0032-34
 ;;9002226.02101,"869,13107-0154-05 ",.01)
 ;;13107-0154-05
 ;;9002226.02101,"869,13107-0154-05 ",.02)
 ;;13107-0154-05
 ;;9002226.02101,"869,13107-0154-30 ",.01)
 ;;13107-0154-30
 ;;9002226.02101,"869,13107-0154-30 ",.02)
 ;;13107-0154-30
 ;;9002226.02101,"869,13107-0154-90 ",.01)
 ;;13107-0154-90
 ;;9002226.02101,"869,13107-0154-90 ",.02)
 ;;13107-0154-90
 ;;9002226.02101,"869,13107-0155-05 ",.01)
 ;;13107-0155-05
 ;;9002226.02101,"869,13107-0155-05 ",.02)
 ;;13107-0155-05
 ;;9002226.02101,"869,13107-0155-30 ",.01)
 ;;13107-0155-30
 ;;9002226.02101,"869,13107-0155-30 ",.02)
 ;;13107-0155-30
 ;;9002226.02101,"869,13107-0155-90 ",.01)
 ;;13107-0155-90
 ;;9002226.02101,"869,13107-0155-90 ",.02)
 ;;13107-0155-90
 ;;9002226.02101,"869,13107-0155-99 ",.01)
 ;;13107-0155-99
 ;;9002226.02101,"869,13107-0155-99 ",.02)
 ;;13107-0155-99
 ;;9002226.02101,"869,13107-0156-05 ",.01)
 ;;13107-0156-05
 ;;9002226.02101,"869,13107-0156-05 ",.02)
 ;;13107-0156-05
 ;;9002226.02101,"869,13107-0156-30 ",.01)
 ;;13107-0156-30
 ;;9002226.02101,"869,13107-0156-30 ",.02)
 ;;13107-0156-30
 ;;9002226.02101,"869,13107-0156-90 ",.01)
 ;;13107-0156-90
 ;;9002226.02101,"869,13107-0156-90 ",.02)
 ;;13107-0156-90
 ;;9002226.02101,"869,13107-0156-99 ",.01)
 ;;13107-0156-99
 ;;9002226.02101,"869,13107-0156-99 ",.02)
 ;;13107-0156-99
 ;;9002226.02101,"869,13107-0157-05 ",.01)
 ;;13107-0157-05
 ;;9002226.02101,"869,13107-0157-05 ",.02)
 ;;13107-0157-05
 ;;9002226.02101,"869,13107-0157-30 ",.01)
 ;;13107-0157-30
 ;;9002226.02101,"869,13107-0157-30 ",.02)
 ;;13107-0157-30
 ;;9002226.02101,"869,13107-0157-90 ",.01)
 ;;13107-0157-90
 ;;9002226.02101,"869,13107-0157-90 ",.02)
 ;;13107-0157-90
 ;;9002226.02101,"869,13107-0157-99 ",.01)
 ;;13107-0157-99
 ;;9002226.02101,"869,13107-0157-99 ",.02)
 ;;13107-0157-99
 ;;9002226.02101,"869,13411-0100-03 ",.01)
 ;;13411-0100-03
 ;;9002226.02101,"869,13411-0100-03 ",.02)
 ;;13411-0100-03
 ;;9002226.02101,"869,13411-0109-01 ",.01)
 ;;13411-0109-01
 ;;9002226.02101,"869,13411-0109-01 ",.02)
 ;;13411-0109-01
 ;;9002226.02101,"869,13411-0109-06 ",.01)
 ;;13411-0109-06
 ;;9002226.02101,"869,13411-0109-06 ",.02)
 ;;13411-0109-06
 ;;9002226.02101,"869,13411-0109-09 ",.01)
 ;;13411-0109-09
 ;;9002226.02101,"869,13411-0109-09 ",.02)
 ;;13411-0109-09
 ;;9002226.02101,"869,13411-0109-10 ",.01)
 ;;13411-0109-10
 ;;9002226.02101,"869,13411-0109-10 ",.02)
 ;;13411-0109-10
 ;;9002226.02101,"869,13411-0110-01 ",.01)
 ;;13411-0110-01
 ;;9002226.02101,"869,13411-0110-01 ",.02)
 ;;13411-0110-01
 ;;9002226.02101,"869,13411-0110-03 ",.01)
 ;;13411-0110-03
 ;;9002226.02101,"869,13411-0110-03 ",.02)
 ;;13411-0110-03
 ;;9002226.02101,"869,13411-0110-06 ",.01)
 ;;13411-0110-06
 ;;9002226.02101,"869,13411-0110-06 ",.02)
 ;;13411-0110-06
 ;;9002226.02101,"869,13411-0110-09 ",.01)
 ;;13411-0110-09
 ;;9002226.02101,"869,13411-0110-09 ",.02)
 ;;13411-0110-09
 ;;9002226.02101,"869,13411-0110-10 ",.01)
 ;;13411-0110-10
 ;;9002226.02101,"869,13411-0110-10 ",.02)
 ;;13411-0110-10
 ;;9002226.02101,"869,13411-0152-01 ",.01)
 ;;13411-0152-01
 ;;9002226.02101,"869,13411-0152-01 ",.02)
 ;;13411-0152-01
 ;;9002226.02101,"869,13411-0152-03 ",.01)
 ;;13411-0152-03
 ;;9002226.02101,"869,13411-0152-03 ",.02)
 ;;13411-0152-03
 ;;9002226.02101,"869,13411-0152-06 ",.01)
 ;;13411-0152-06
 ;;9002226.02101,"869,13411-0152-06 ",.02)
 ;;13411-0152-06
 ;;9002226.02101,"869,13411-0152-09 ",.01)
 ;;13411-0152-09
 ;;9002226.02101,"869,13411-0152-09 ",.02)
 ;;13411-0152-09
 ;;9002226.02101,"869,13411-0152-15 ",.01)
 ;;13411-0152-15
 ;;9002226.02101,"869,13411-0152-15 ",.02)
 ;;13411-0152-15
 ;;9002226.02101,"869,13411-0153-01 ",.01)
 ;;13411-0153-01
 ;;9002226.02101,"869,13411-0153-01 ",.02)
 ;;13411-0153-01
 ;;9002226.02101,"869,13411-0153-03 ",.01)
 ;;13411-0153-03
 ;;9002226.02101,"869,13411-0153-03 ",.02)
 ;;13411-0153-03
 ;;9002226.02101,"869,13411-0153-06 ",.01)
 ;;13411-0153-06
 ;;9002226.02101,"869,13411-0153-06 ",.02)
 ;;13411-0153-06
 ;;9002226.02101,"869,13411-0153-09 ",.01)
 ;;13411-0153-09
 ;;9002226.02101,"869,13411-0153-09 ",.02)
 ;;13411-0153-09
 ;;9002226.02101,"869,13411-0153-15 ",.01)
 ;;13411-0153-15
 ;;9002226.02101,"869,13411-0153-15 ",.02)
 ;;13411-0153-15
 ;;9002226.02101,"869,13411-0172-01 ",.01)
 ;;13411-0172-01
 ;;9002226.02101,"869,13411-0172-01 ",.02)
 ;;13411-0172-01
 ;;9002226.02101,"869,13411-0172-03 ",.01)
 ;;13411-0172-03
 ;;9002226.02101,"869,13411-0172-03 ",.02)
 ;;13411-0172-03
 ;;9002226.02101,"869,13411-0172-06 ",.01)
 ;;13411-0172-06
 ;;9002226.02101,"869,13411-0172-06 ",.02)
 ;;13411-0172-06
 ;;9002226.02101,"869,13411-0172-09 ",.01)
 ;;13411-0172-09
 ;;9002226.02101,"869,13411-0172-09 ",.02)
 ;;13411-0172-09
 ;;9002226.02101,"869,13411-0172-10 ",.01)
 ;;13411-0172-10
 ;;9002226.02101,"869,13411-0172-10 ",.02)
 ;;13411-0172-10
 ;;9002226.02101,"869,13411-0173-01 ",.01)
 ;;13411-0173-01
 ;;9002226.02101,"869,13411-0173-01 ",.02)
 ;;13411-0173-01
 ;;9002226.02101,"869,13411-0173-03 ",.01)
 ;;13411-0173-03
 ;;9002226.02101,"869,13411-0173-03 ",.02)
 ;;13411-0173-03
 ;;9002226.02101,"869,13411-0173-06 ",.01)
 ;;13411-0173-06
 ;;9002226.02101,"869,13411-0173-06 ",.02)
 ;;13411-0173-06
 ;;9002226.02101,"869,13411-0173-09 ",.01)
 ;;13411-0173-09
 ;;9002226.02101,"869,13411-0173-09 ",.02)
 ;;13411-0173-09
 ;;9002226.02101,"869,13411-0173-10 ",.01)
 ;;13411-0173-10
 ;;9002226.02101,"869,13411-0173-10 ",.02)
 ;;13411-0173-10
 ;;9002226.02101,"869,13668-0004-01 ",.01)
 ;;13668-0004-01
 ;;9002226.02101,"869,13668-0004-01 ",.02)
 ;;13668-0004-01
 ;;9002226.02101,"869,13668-0004-05 ",.01)
 ;;13668-0004-05
 ;;9002226.02101,"869,13668-0004-05 ",.02)
 ;;13668-0004-05
 ;;9002226.02101,"869,13668-0004-10 ",.01)
 ;;13668-0004-10
 ;;9002226.02101,"869,13668-0004-10 ",.02)
 ;;13668-0004-10
 ;;9002226.02101,"869,13668-0004-30 ",.01)
 ;;13668-0004-30
 ;;9002226.02101,"869,13668-0004-30 ",.02)
 ;;13668-0004-30
 ;;9002226.02101,"869,13668-0004-50 ",.01)
 ;;13668-0004-50
 ;;9002226.02101,"869,13668-0004-50 ",.02)
 ;;13668-0004-50
 ;;9002226.02101,"869,13668-0004-90 ",.01)
 ;;13668-0004-90
 ;;9002226.02101,"869,13668-0004-90 ",.02)
 ;;13668-0004-90
 ;;9002226.02101,"869,13668-0005-01 ",.01)
 ;;13668-0005-01
 ;;9002226.02101,"869,13668-0005-01 ",.02)
 ;;13668-0005-01
 ;;9002226.02101,"869,13668-0005-05 ",.01)
 ;;13668-0005-05
 ;;9002226.02101,"869,13668-0005-05 ",.02)
 ;;13668-0005-05
 ;;9002226.02101,"869,13668-0005-10 ",.01)
 ;;13668-0005-10
 ;;9002226.02101,"869,13668-0005-10 ",.02)
 ;;13668-0005-10
 ;;9002226.02101,"869,13668-0005-30 ",.01)
 ;;13668-0005-30
 ;;9002226.02101,"869,13668-0005-30 ",.02)
 ;;13668-0005-30
 ;;9002226.02101,"869,13668-0005-50 ",.01)
 ;;13668-0005-50
 ;;9002226.02101,"869,13668-0005-50 ",.02)
 ;;13668-0005-50
 ;;9002226.02101,"869,13668-0005-90 ",.01)
 ;;13668-0005-90
 ;;9002226.02101,"869,13668-0005-90 ",.02)
 ;;13668-0005-90
 ;;9002226.02101,"869,13668-0006-01 ",.01)
 ;;13668-0006-01
 ;;9002226.02101,"869,13668-0006-01 ",.02)
 ;;13668-0006-01
 ;;9002226.02101,"869,13668-0006-05 ",.01)
 ;;13668-0006-05
 ;;9002226.02101,"869,13668-0006-05 ",.02)
 ;;13668-0006-05
 ;;9002226.02101,"869,13668-0006-10 ",.01)
 ;;13668-0006-10
 ;;9002226.02101,"869,13668-0006-10 ",.02)
 ;;13668-0006-10
 ;;9002226.02101,"869,13668-0006-30 ",.01)
 ;;13668-0006-30
 ;;9002226.02101,"869,13668-0006-30 ",.02)
 ;;13668-0006-30
 ;;9002226.02101,"869,13668-0006-50 ",.01)
 ;;13668-0006-50
 ;;9002226.02101,"869,13668-0006-50 ",.02)
 ;;13668-0006-50
 ;;9002226.02101,"869,13668-0006-90 ",.01)
 ;;13668-0006-90
 ;;9002226.02101,"869,13668-0006-90 ",.02)
 ;;13668-0006-90
 ;;9002226.02101,"869,13668-0009-01 ",.01)
 ;;13668-0009-01
 ;;9002226.02101,"869,13668-0009-01 ",.02)
 ;;13668-0009-01
 ;;9002226.02101,"869,13668-0009-05 ",.01)
 ;;13668-0009-05
 ;;9002226.02101,"869,13668-0009-05 ",.02)
 ;;13668-0009-05
 ;;9002226.02101,"869,13668-0009-09 ",.01)
 ;;13668-0009-09
 ;;9002226.02101,"869,13668-0009-09 ",.02)
 ;;13668-0009-09
 ;;9002226.02101,"869,13668-0009-30 ",.01)
 ;;13668-0009-30
 ;;9002226.02101,"869,13668-0009-30 ",.02)
 ;;13668-0009-30
 ;;9002226.02101,"869,13668-0009-74 ",.01)
 ;;13668-0009-74
 ;;9002226.02101,"869,13668-0009-74 ",.02)
 ;;13668-0009-74
 ;;9002226.02101,"869,13668-0010-01 ",.01)
 ;;13668-0010-01
 ;;9002226.02101,"869,13668-0010-01 ",.02)
 ;;13668-0010-01
 ;;9002226.02101,"869,13668-0010-05 ",.01)
 ;;13668-0010-05
 ;;9002226.02101,"869,13668-0010-05 ",.02)
 ;;13668-0010-05
 ;;9002226.02101,"869,13668-0010-06 ",.01)
 ;;13668-0010-06
 ;;9002226.02101,"869,13668-0010-06 ",.02)
 ;;13668-0010-06
 ;;9002226.02101,"869,13668-0010-30 ",.01)
 ;;13668-0010-30
 ;;9002226.02101,"869,13668-0010-30 ",.02)
 ;;13668-0010-30
 ;;9002226.02101,"869,13668-0010-74 ",.01)
 ;;13668-0010-74
 ;;9002226.02101,"869,13668-0010-74 ",.02)
 ;;13668-0010-74
 ;;9002226.02101,"869,13668-0011-01 ",.01)
 ;;13668-0011-01
 ;;9002226.02101,"869,13668-0011-01 ",.02)
 ;;13668-0011-01
 ;;9002226.02101,"869,13668-0011-05 ",.01)
 ;;13668-0011-05
 ;;9002226.02101,"869,13668-0011-05 ",.02)
 ;;13668-0011-05
 ;;9002226.02101,"869,13668-0011-08 ",.01)
 ;;13668-0011-08
 ;;9002226.02101,"869,13668-0011-08 ",.02)
 ;;13668-0011-08
 ;;9002226.02101,"869,13668-0011-30 ",.01)
 ;;13668-0011-30
 ;;9002226.02101,"869,13668-0011-30 ",.02)
 ;;13668-0011-30
 ;;9002226.02101,"869,13668-0011-74 ",.01)
 ;;13668-0011-74
 ;;9002226.02101,"869,13668-0011-74 ",.02)
 ;;13668-0011-74
 ;;9002226.02101,"869,13668-0018-01 ",.01)
 ;;13668-0018-01
 ;;9002226.02101,"869,13668-0018-01 ",.02)
 ;;13668-0018-01
 ;;9002226.02101,"869,13668-0018-05 ",.01)
 ;;13668-0018-05
 ;;9002226.02101,"869,13668-0018-05 ",.02)
 ;;13668-0018-05
 ;;9002226.02101,"869,13668-0018-30 ",.01)
 ;;13668-0018-30
 ;;9002226.02101,"869,13668-0018-30 ",.02)
 ;;13668-0018-30