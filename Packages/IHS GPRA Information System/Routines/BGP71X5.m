BGP71X5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1222,00173-0841-13 ",.02)
 ;;00173-0841-13
 ;;9002226.02101,"1222,00173-0842-13 ",.01)
 ;;00173-0842-13
 ;;9002226.02101,"1222,00173-0842-13 ",.02)
 ;;00173-0842-13
 ;;9002226.02101,"1222,00173-0843-13 ",.01)
 ;;00173-0843-13
 ;;9002226.02101,"1222,00173-0843-13 ",.02)
 ;;00173-0843-13
 ;;9002226.02101,"1222,00173-0844-13 ",.01)
 ;;00173-0844-13
 ;;9002226.02101,"1222,00173-0844-13 ",.02)
 ;;00173-0844-13
 ;;9002226.02101,"1222,00173-0845-13 ",.01)
 ;;00173-0845-13
 ;;9002226.02101,"1222,00173-0845-13 ",.02)
 ;;00173-0845-13
 ;;9002226.02101,"1222,00182-2646-89 ",.01)
 ;;00182-2646-89
 ;;9002226.02101,"1222,00182-2646-89 ",.02)
 ;;00182-2646-89
 ;;9002226.02101,"1222,00228-2751-11 ",.01)
 ;;00228-2751-11
 ;;9002226.02101,"1222,00228-2751-11 ",.02)
 ;;00228-2751-11
 ;;9002226.02101,"1222,00228-2751-50 ",.01)
 ;;00228-2751-50
 ;;9002226.02101,"1222,00228-2751-50 ",.02)
 ;;00228-2751-50
 ;;9002226.02101,"1222,00228-2752-11 ",.01)
 ;;00228-2752-11
 ;;9002226.02101,"1222,00228-2752-11 ",.02)
 ;;00228-2752-11
 ;;9002226.02101,"1222,00228-2752-50 ",.01)
 ;;00228-2752-50
 ;;9002226.02101,"1222,00228-2752-50 ",.02)
 ;;00228-2752-50
 ;;9002226.02101,"1222,00228-2753-11 ",.01)
 ;;00228-2753-11
 ;;9002226.02101,"1222,00228-2753-11 ",.02)
 ;;00228-2753-11
 ;;9002226.02101,"1222,00228-2753-50 ",.01)
 ;;00228-2753-50
 ;;9002226.02101,"1222,00228-2753-50 ",.02)
 ;;00228-2753-50
 ;;9002226.02101,"1222,00228-2898-03 ",.01)
 ;;00228-2898-03
 ;;9002226.02101,"1222,00228-2898-03 ",.02)
 ;;00228-2898-03
 ;;9002226.02101,"1222,00228-2899-96 ",.01)
 ;;00228-2899-96
 ;;9002226.02101,"1222,00228-2899-96 ",.02)
 ;;00228-2899-96
 ;;9002226.02101,"1222,00228-2900-96 ",.01)
 ;;00228-2900-96
 ;;9002226.02101,"1222,00228-2900-96 ",.02)
 ;;00228-2900-96
 ;;9002226.02101,"1222,00378-0197-01 ",.01)
 ;;00378-0197-01
 ;;9002226.02101,"1222,00378-0197-01 ",.02)
 ;;00378-0197-01
 ;;9002226.02101,"1222,00378-0210-01 ",.01)
 ;;00378-0210-01
 ;;9002226.02101,"1222,00378-0210-01 ",.02)
 ;;00378-0210-01
 ;;9002226.02101,"1222,00378-0215-01 ",.01)
 ;;00378-0215-01
 ;;9002226.02101,"1222,00378-0215-01 ",.02)
 ;;00378-0215-01
 ;;9002226.02101,"1222,00378-0215-05 ",.01)
 ;;00378-0215-05
 ;;9002226.02101,"1222,00378-0215-05 ",.02)
 ;;00378-0215-05
 ;;9002226.02101,"1222,00378-0217-01 ",.01)
 ;;00378-0217-01
 ;;9002226.02101,"1222,00378-0217-01 ",.02)
 ;;00378-0217-01
 ;;9002226.02101,"1222,00378-0340-93 ",.01)
 ;;00378-0340-93
 ;;9002226.02101,"1222,00378-0340-93 ",.02)
 ;;00378-0340-93
 ;;9002226.02101,"1222,00378-0342-01 ",.01)
 ;;00378-0342-01
 ;;9002226.02101,"1222,00378-0342-01 ",.02)
 ;;00378-0342-01
 ;;9002226.02101,"1222,00378-0342-10 ",.01)
 ;;00378-0342-10
 ;;9002226.02101,"1222,00378-0342-10 ",.02)
 ;;00378-0342-10
 ;;9002226.02101,"1222,00378-0431-01 ",.01)
 ;;00378-0431-01
 ;;9002226.02101,"1222,00378-0431-01 ",.02)
 ;;00378-0431-01
 ;;9002226.02101,"1222,00378-0431-10 ",.01)
 ;;00378-0431-10
 ;;9002226.02101,"1222,00378-0431-10 ",.02)
 ;;00378-0431-10
 ;;9002226.02101,"1222,00378-0551-01 ",.01)
 ;;00378-0551-01
 ;;9002226.02101,"1222,00378-0551-01 ",.02)
 ;;00378-0551-01
 ;;9002226.02101,"1222,00378-1105-01 ",.01)
 ;;00378-1105-01
 ;;9002226.02101,"1222,00378-1105-01 ",.02)
 ;;00378-1105-01
 ;;9002226.02101,"1222,00378-1105-05 ",.01)
 ;;00378-1105-05
 ;;9002226.02101,"1222,00378-1105-05 ",.02)
 ;;00378-1105-05
 ;;9002226.02101,"1222,00378-1110-01 ",.01)
 ;;00378-1110-01
 ;;9002226.02101,"1222,00378-1110-01 ",.02)
 ;;00378-1110-01
 ;;9002226.02101,"1222,00378-1110-05 ",.01)
 ;;00378-1110-05
 ;;9002226.02101,"1222,00378-1110-05 ",.02)
 ;;00378-1110-05
 ;;9002226.02101,"1222,00378-1113-01 ",.01)
 ;;00378-1113-01
 ;;9002226.02101,"1222,00378-1113-01 ",.02)
 ;;00378-1113-01
 ;;9002226.02101,"1222,00378-1125-01 ",.01)
 ;;00378-1125-01
 ;;9002226.02101,"1222,00378-1125-01 ",.02)
 ;;00378-1125-01
 ;;9002226.02101,"1222,00378-1125-10 ",.01)
 ;;00378-1125-10
 ;;9002226.02101,"1222,00378-1125-10 ",.02)
 ;;00378-1125-10
 ;;9002226.02101,"1222,00378-1142-01 ",.01)
 ;;00378-1142-01
 ;;9002226.02101,"1222,00378-1142-01 ",.02)
 ;;00378-1142-01
 ;;9002226.02101,"1222,00378-3131-01 ",.01)
 ;;00378-3131-01
 ;;9002226.02101,"1222,00378-3131-01 ",.02)
 ;;00378-3131-01
 ;;9002226.02101,"1222,00378-3132-01 ",.01)
 ;;00378-3132-01
 ;;9002226.02101,"1222,00378-3132-01 ",.02)
 ;;00378-3132-01
 ;;9002226.02101,"1222,00378-3133-01 ",.01)
 ;;00378-3133-01
 ;;9002226.02101,"1222,00378-3133-01 ",.02)
 ;;00378-3133-01
 ;;9002226.02101,"1222,00378-4011-01 ",.01)
 ;;00378-4011-01
 ;;9002226.02101,"1222,00378-4011-01 ",.02)
 ;;00378-4011-01
 ;;9002226.02101,"1222,00378-4012-01 ",.01)
 ;;00378-4012-01
 ;;9002226.02101,"1222,00378-4012-01 ",.02)
 ;;00378-4012-01
 ;;9002226.02101,"1222,00378-4013-01 ",.01)
 ;;00378-4013-01
 ;;9002226.02101,"1222,00378-4013-01 ",.02)
 ;;00378-4013-01
 ;;9002226.02101,"1222,00440-7565-14 ",.01)
 ;;00440-7565-14
 ;;9002226.02101,"1222,00440-7565-14 ",.02)
 ;;00440-7565-14
 ;;9002226.02101,"1222,00440-7565-30 ",.01)
 ;;00440-7565-30
 ;;9002226.02101,"1222,00440-7565-30 ",.02)
 ;;00440-7565-30
 ;;9002226.02101,"1222,00440-7565-60 ",.01)
 ;;00440-7565-60
 ;;9002226.02101,"1222,00440-7565-60 ",.02)
 ;;00440-7565-60
 ;;9002226.02101,"1222,00440-7565-90 ",.01)
 ;;00440-7565-90
 ;;9002226.02101,"1222,00440-7565-90 ",.02)
 ;;00440-7565-90
 ;;9002226.02101,"1222,00440-7566-30 ",.01)
 ;;00440-7566-30
 ;;9002226.02101,"1222,00440-7566-30 ",.02)
 ;;00440-7566-30
 ;;9002226.02101,"1222,00440-7566-60 ",.01)
 ;;00440-7566-60
 ;;9002226.02101,"1222,00440-7566-60 ",.02)
 ;;00440-7566-60
 ;;9002226.02101,"1222,00440-7566-90 ",.01)
 ;;00440-7566-90
 ;;9002226.02101,"1222,00440-7566-90 ",.02)
 ;;00440-7566-90
 ;;9002226.02101,"1222,00440-7566-91 ",.01)
 ;;00440-7566-91
 ;;9002226.02101,"1222,00440-7566-91 ",.02)
 ;;00440-7566-91
 ;;9002226.02101,"1222,00440-7566-92 ",.01)
 ;;00440-7566-92
 ;;9002226.02101,"1222,00440-7566-92 ",.02)
 ;;00440-7566-92
 ;;9002226.02101,"1222,00440-7568-90 ",.01)
 ;;00440-7568-90
 ;;9002226.02101,"1222,00440-7568-90 ",.02)
 ;;00440-7568-90
 ;;9002226.02101,"1222,00440-7568-92 ",.01)
 ;;00440-7568-92
 ;;9002226.02101,"1222,00440-7568-92 ",.02)
 ;;00440-7568-92
 ;;9002226.02101,"1222,00440-7569-90 ",.01)
 ;;00440-7569-90
 ;;9002226.02101,"1222,00440-7569-90 ",.02)
 ;;00440-7569-90
 ;;9002226.02101,"1222,00440-7569-92 ",.01)
 ;;00440-7569-92
 ;;9002226.02101,"1222,00440-7569-92 ",.02)
 ;;00440-7569-92
 ;;9002226.02101,"1222,00440-7570-20 ",.01)
 ;;00440-7570-20
 ;;9002226.02101,"1222,00440-7570-20 ",.02)
 ;;00440-7570-20
 ;;9002226.02101,"1222,00440-7571-14 ",.01)
 ;;00440-7571-14
 ;;9002226.02101,"1222,00440-7571-14 ",.02)
 ;;00440-7571-14
 ;;9002226.02101,"1222,00440-7571-30 ",.01)
 ;;00440-7571-30
 ;;9002226.02101,"1222,00440-7571-30 ",.02)
 ;;00440-7571-30
 ;;9002226.02101,"1222,00440-7571-60 ",.01)
 ;;00440-7571-60
 ;;9002226.02101,"1222,00440-7571-60 ",.02)
 ;;00440-7571-60
 ;;9002226.02101,"1222,00440-7571-90 ",.01)
 ;;00440-7571-90
 ;;9002226.02101,"1222,00440-7571-90 ",.02)
 ;;00440-7571-90
 ;;9002226.02101,"1222,00440-7571-91 ",.01)
 ;;00440-7571-91
 ;;9002226.02101,"1222,00440-7571-91 ",.02)
 ;;00440-7571-91
 ;;9002226.02101,"1222,00440-7571-92 ",.01)
 ;;00440-7571-92
 ;;9002226.02101,"1222,00440-7571-92 ",.02)
 ;;00440-7571-92
 ;;9002226.02101,"1222,00440-7571-94 ",.01)
 ;;00440-7571-94
 ;;9002226.02101,"1222,00440-7571-94 ",.02)
 ;;00440-7571-94
 ;;9002226.02101,"1222,00440-7571-95 ",.01)
 ;;00440-7571-95
 ;;9002226.02101,"1222,00440-7571-95 ",.02)
 ;;00440-7571-95
 ;;9002226.02101,"1222,00440-7585-90 ",.01)
 ;;00440-7585-90
 ;;9002226.02101,"1222,00440-7585-90 ",.02)
 ;;00440-7585-90
 ;;9002226.02101,"1222,00440-7587-90 ",.01)
 ;;00440-7587-90
 ;;9002226.02101,"1222,00440-7587-90 ",.02)
 ;;00440-7587-90
 ;;9002226.02101,"1222,00440-7589-90 ",.01)
 ;;00440-7589-90
 ;;9002226.02101,"1222,00440-7589-90 ",.02)
 ;;00440-7589-90
 ;;9002226.02101,"1222,00440-7589-95 ",.01)
 ;;00440-7589-95
 ;;9002226.02101,"1222,00440-7589-95 ",.02)
 ;;00440-7589-95
 ;;9002226.02101,"1222,00591-0460-01 ",.01)
 ;;00591-0460-01
 ;;9002226.02101,"1222,00591-0460-01 ",.02)
 ;;00591-0460-01
 ;;9002226.02101,"1222,00591-0460-05 ",.01)
 ;;00591-0460-05
 ;;9002226.02101,"1222,00591-0460-05 ",.02)
 ;;00591-0460-05
 ;;9002226.02101,"1222,00591-0460-10 ",.01)
 ;;00591-0460-10
 ;;9002226.02101,"1222,00591-0460-10 ",.02)
 ;;00591-0460-10
 ;;9002226.02101,"1222,00591-0461-01 ",.01)
 ;;00591-0461-01
 ;;9002226.02101,"1222,00591-0461-01 ",.02)
 ;;00591-0461-01
 ;;9002226.02101,"1222,00591-0461-05 ",.01)
 ;;00591-0461-05
 ;;9002226.02101,"1222,00591-0461-05 ",.02)
 ;;00591-0461-05
 ;;9002226.02101,"1222,00591-0461-10 ",.01)
 ;;00591-0461-10
 ;;9002226.02101,"1222,00591-0461-10 ",.02)
 ;;00591-0461-10
 ;;9002226.02101,"1222,00591-0844-01 ",.01)
 ;;00591-0844-01
 ;;9002226.02101,"1222,00591-0844-01 ",.02)
 ;;00591-0844-01
 ;;9002226.02101,"1222,00591-0844-10 ",.01)
 ;;00591-0844-10
 ;;9002226.02101,"1222,00591-0844-10 ",.02)
 ;;00591-0844-10
 ;;9002226.02101,"1222,00591-0844-15 ",.01)
 ;;00591-0844-15
 ;;9002226.02101,"1222,00591-0844-15 ",.02)
 ;;00591-0844-15
 ;;9002226.02101,"1222,00591-0845-01 ",.01)
 ;;00591-0845-01
 ;;9002226.02101,"1222,00591-0845-01 ",.02)
 ;;00591-0845-01
 ;;9002226.02101,"1222,00591-0845-10 ",.01)
 ;;00591-0845-10
 ;;9002226.02101,"1222,00591-0845-10 ",.02)
 ;;00591-0845-10
 ;;9002226.02101,"1222,00591-0845-15 ",.01)
 ;;00591-0845-15
 ;;9002226.02101,"1222,00591-0845-15 ",.02)
 ;;00591-0845-15
 ;;9002226.02101,"1222,00591-0900-30 ",.01)
 ;;00591-0900-30
 ;;9002226.02101,"1222,00591-0900-30 ",.02)
 ;;00591-0900-30
 ;;9002226.02101,"1222,00603-3744-21 ",.01)
 ;;00603-3744-21
 ;;9002226.02101,"1222,00603-3744-21 ",.02)
 ;;00603-3744-21
 ;;9002226.02101,"1222,00603-3744-28 ",.01)
 ;;00603-3744-28
 ;;9002226.02101,"1222,00603-3744-28 ",.02)
 ;;00603-3744-28
 ;;9002226.02101,"1222,00603-3745-21 ",.01)
 ;;00603-3745-21
 ;;9002226.02101,"1222,00603-3745-21 ",.02)
 ;;00603-3745-21
 ;;9002226.02101,"1222,00603-3745-28 ",.01)
 ;;00603-3745-28
 ;;9002226.02101,"1222,00603-3745-28 ",.02)
 ;;00603-3745-28
 ;;9002226.02101,"1222,00603-3746-21 ",.01)
 ;;00603-3746-21
 ;;9002226.02101,"1222,00603-3746-21 ",.02)
 ;;00603-3746-21
 ;;9002226.02101,"1222,00603-3746-28 ",.01)
 ;;00603-3746-28
 ;;9002226.02101,"1222,00603-3746-28 ",.02)
 ;;00603-3746-28
 ;;9002226.02101,"1222,00781-1452-01 ",.01)
 ;;00781-1452-01
 ;;9002226.02101,"1222,00781-1452-01 ",.02)
 ;;00781-1452-01
 ;;9002226.02101,"1222,00781-1452-10 ",.01)
 ;;00781-1452-10
 ;;9002226.02101,"1222,00781-1452-10 ",.02)
 ;;00781-1452-10
 ;;9002226.02101,"1222,00781-1453-01 ",.01)
 ;;00781-1453-01
 ;;9002226.02101,"1222,00781-1453-01 ",.02)
 ;;00781-1453-01
 ;;9002226.02101,"1222,00781-1453-10 ",.01)
 ;;00781-1453-10
 ;;9002226.02101,"1222,00781-1453-10 ",.02)
 ;;00781-1453-10
 ;;9002226.02101,"1222,00781-5634-31 ",.01)
 ;;00781-5634-31
 ;;9002226.02101,"1222,00781-5634-31 ",.02)
 ;;00781-5634-31
 ;;9002226.02101,"1222,00781-5635-31 ",.01)
 ;;00781-5635-31
 ;;9002226.02101,"1222,00781-5635-31 ",.02)
 ;;00781-5635-31
 ;;9002226.02101,"1222,00832-0491-10 ",.01)
 ;;00832-0491-10
 ;;9002226.02101,"1222,00832-0491-10 ",.02)
 ;;00832-0491-10
 ;;9002226.02101,"1222,00832-0491-11 ",.01)
 ;;00832-0491-11
 ;;9002226.02101,"1222,00832-0491-11 ",.02)
 ;;00832-0491-11
 ;;9002226.02101,"1222,00832-0492-10 ",.01)
 ;;00832-0492-10
 ;;9002226.02101,"1222,00832-0492-10 ",.02)
 ;;00832-0492-10
 ;;9002226.02101,"1222,00832-0492-11 ",.01)
 ;;00832-0492-11
 ;;9002226.02101,"1222,00832-0492-11 ",.02)
 ;;00832-0492-11