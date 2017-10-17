BGP73G28 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,16590-0246-60 ",.02)
 ;;16590-0246-60
 ;;9002226.02101,"869,16590-0246-90 ",.01)
 ;;16590-0246-90
 ;;9002226.02101,"869,16590-0246-90 ",.02)
 ;;16590-0246-90
 ;;9002226.02101,"869,16590-0249-30 ",.01)
 ;;16590-0249-30
 ;;9002226.02101,"869,16590-0249-30 ",.02)
 ;;16590-0249-30
 ;;9002226.02101,"869,16590-0249-60 ",.01)
 ;;16590-0249-60
 ;;9002226.02101,"869,16590-0249-60 ",.02)
 ;;16590-0249-60
 ;;9002226.02101,"869,16590-0249-90 ",.01)
 ;;16590-0249-90
 ;;9002226.02101,"869,16590-0249-90 ",.02)
 ;;16590-0249-90
 ;;9002226.02101,"869,16590-0250-30 ",.01)
 ;;16590-0250-30
 ;;9002226.02101,"869,16590-0250-30 ",.02)
 ;;16590-0250-30
 ;;9002226.02101,"869,16590-0250-60 ",.01)
 ;;16590-0250-60
 ;;9002226.02101,"869,16590-0250-60 ",.02)
 ;;16590-0250-60
 ;;9002226.02101,"869,16590-0250-90 ",.01)
 ;;16590-0250-90
 ;;9002226.02101,"869,16590-0250-90 ",.02)
 ;;16590-0250-90
 ;;9002226.02101,"869,16590-0251-30 ",.01)
 ;;16590-0251-30
 ;;9002226.02101,"869,16590-0251-30 ",.02)
 ;;16590-0251-30
 ;;9002226.02101,"869,16590-0251-60 ",.01)
 ;;16590-0251-60
 ;;9002226.02101,"869,16590-0251-60 ",.02)
 ;;16590-0251-60
 ;;9002226.02101,"869,16590-0251-90 ",.01)
 ;;16590-0251-90
 ;;9002226.02101,"869,16590-0251-90 ",.02)
 ;;16590-0251-90
 ;;9002226.02101,"869,16590-0322-30 ",.01)
 ;;16590-0322-30
 ;;9002226.02101,"869,16590-0322-30 ",.02)
 ;;16590-0322-30
 ;;9002226.02101,"869,16590-0322-56 ",.01)
 ;;16590-0322-56
 ;;9002226.02101,"869,16590-0322-56 ",.02)
 ;;16590-0322-56
 ;;9002226.02101,"869,16590-0322-60 ",.01)
 ;;16590-0322-60
 ;;9002226.02101,"869,16590-0322-60 ",.02)
 ;;16590-0322-60
 ;;9002226.02101,"869,16590-0322-72 ",.01)
 ;;16590-0322-72
 ;;9002226.02101,"869,16590-0322-72 ",.02)
 ;;16590-0322-72
 ;;9002226.02101,"869,16590-0322-90 ",.01)
 ;;16590-0322-90
 ;;9002226.02101,"869,16590-0322-90 ",.02)
 ;;16590-0322-90
 ;;9002226.02101,"869,16590-0416-30 ",.01)
 ;;16590-0416-30
 ;;9002226.02101,"869,16590-0416-30 ",.02)
 ;;16590-0416-30
 ;;9002226.02101,"869,16590-0437-30 ",.01)
 ;;16590-0437-30
 ;;9002226.02101,"869,16590-0437-30 ",.02)
 ;;16590-0437-30
 ;;9002226.02101,"869,16590-0482-30 ",.01)
 ;;16590-0482-30
 ;;9002226.02101,"869,16590-0482-30 ",.02)
 ;;16590-0482-30
 ;;9002226.02101,"869,16590-0482-60 ",.01)
 ;;16590-0482-60
 ;;9002226.02101,"869,16590-0482-60 ",.02)
 ;;16590-0482-60
 ;;9002226.02101,"869,16590-0482-72 ",.01)
 ;;16590-0482-72
 ;;9002226.02101,"869,16590-0482-72 ",.02)
 ;;16590-0482-72
 ;;9002226.02101,"869,16590-0482-90 ",.01)
 ;;16590-0482-90
 ;;9002226.02101,"869,16590-0482-90 ",.02)
 ;;16590-0482-90
 ;;9002226.02101,"869,16590-0483-30 ",.01)
 ;;16590-0483-30
 ;;9002226.02101,"869,16590-0483-30 ",.02)
 ;;16590-0483-30
 ;;9002226.02101,"869,16590-0483-60 ",.01)
 ;;16590-0483-60
 ;;9002226.02101,"869,16590-0483-60 ",.02)
 ;;16590-0483-60
 ;;9002226.02101,"869,16590-0483-72 ",.01)
 ;;16590-0483-72
 ;;9002226.02101,"869,16590-0483-72 ",.02)
 ;;16590-0483-72
 ;;9002226.02101,"869,16590-0483-90 ",.01)
 ;;16590-0483-90
 ;;9002226.02101,"869,16590-0483-90 ",.02)
 ;;16590-0483-90
 ;;9002226.02101,"869,16590-0484-30 ",.01)
 ;;16590-0484-30
 ;;9002226.02101,"869,16590-0484-30 ",.02)
 ;;16590-0484-30
 ;;9002226.02101,"869,16590-0484-60 ",.01)
 ;;16590-0484-60
 ;;9002226.02101,"869,16590-0484-60 ",.02)
 ;;16590-0484-60
 ;;9002226.02101,"869,16590-0484-72 ",.01)
 ;;16590-0484-72
 ;;9002226.02101,"869,16590-0484-72 ",.02)
 ;;16590-0484-72
 ;;9002226.02101,"869,16590-0484-90 ",.01)
 ;;16590-0484-90
 ;;9002226.02101,"869,16590-0484-90 ",.02)
 ;;16590-0484-90
 ;;9002226.02101,"869,16590-0490-30 ",.01)
 ;;16590-0490-30
 ;;9002226.02101,"869,16590-0490-30 ",.02)
 ;;16590-0490-30
 ;;9002226.02101,"869,16590-0490-60 ",.01)
 ;;16590-0490-60
 ;;9002226.02101,"869,16590-0490-60 ",.02)
 ;;16590-0490-60
 ;;9002226.02101,"869,16590-0490-72 ",.01)
 ;;16590-0490-72
 ;;9002226.02101,"869,16590-0490-72 ",.02)
 ;;16590-0490-72
 ;;9002226.02101,"869,16590-0490-90 ",.01)
 ;;16590-0490-90
 ;;9002226.02101,"869,16590-0490-90 ",.02)
 ;;16590-0490-90
 ;;9002226.02101,"869,16590-0497-30 ",.01)
 ;;16590-0497-30
 ;;9002226.02101,"869,16590-0497-30 ",.02)
 ;;16590-0497-30
 ;;9002226.02101,"869,16590-0497-60 ",.01)
 ;;16590-0497-60
 ;;9002226.02101,"869,16590-0497-60 ",.02)
 ;;16590-0497-60
 ;;9002226.02101,"869,16590-0497-72 ",.01)
 ;;16590-0497-72
 ;;9002226.02101,"869,16590-0497-72 ",.02)
 ;;16590-0497-72
 ;;9002226.02101,"869,16590-0497-90 ",.01)
 ;;16590-0497-90
 ;;9002226.02101,"869,16590-0497-90 ",.02)
 ;;16590-0497-90
 ;;9002226.02101,"869,16590-0510-30 ",.01)
 ;;16590-0510-30
 ;;9002226.02101,"869,16590-0510-30 ",.02)
 ;;16590-0510-30
 ;;9002226.02101,"869,16590-0510-60 ",.01)
 ;;16590-0510-60
 ;;9002226.02101,"869,16590-0510-60 ",.02)
 ;;16590-0510-60
 ;;9002226.02101,"869,16590-0510-72 ",.01)
 ;;16590-0510-72
 ;;9002226.02101,"869,16590-0510-72 ",.02)
 ;;16590-0510-72
 ;;9002226.02101,"869,16590-0510-90 ",.01)
 ;;16590-0510-90
 ;;9002226.02101,"869,16590-0510-90 ",.02)
 ;;16590-0510-90
 ;;9002226.02101,"869,16590-0512-06 ",.01)
 ;;16590-0512-06
 ;;9002226.02101,"869,16590-0512-06 ",.02)
 ;;16590-0512-06
 ;;9002226.02101,"869,16590-0512-30 ",.01)
 ;;16590-0512-30
 ;;9002226.02101,"869,16590-0512-30 ",.02)
 ;;16590-0512-30
 ;;9002226.02101,"869,16590-0512-60 ",.01)
 ;;16590-0512-60
 ;;9002226.02101,"869,16590-0512-60 ",.02)
 ;;16590-0512-60
 ;;9002226.02101,"869,16590-0512-72 ",.01)
 ;;16590-0512-72
 ;;9002226.02101,"869,16590-0512-72 ",.02)
 ;;16590-0512-72
 ;;9002226.02101,"869,16590-0512-90 ",.01)
 ;;16590-0512-90
 ;;9002226.02101,"869,16590-0512-90 ",.02)
 ;;16590-0512-90
 ;;9002226.02101,"869,16590-0513-30 ",.01)
 ;;16590-0513-30
 ;;9002226.02101,"869,16590-0513-30 ",.02)
 ;;16590-0513-30
 ;;9002226.02101,"869,16590-0513-56 ",.01)
 ;;16590-0513-56
 ;;9002226.02101,"869,16590-0513-56 ",.02)
 ;;16590-0513-56
 ;;9002226.02101,"869,16590-0513-60 ",.01)
 ;;16590-0513-60
 ;;9002226.02101,"869,16590-0513-60 ",.02)
 ;;16590-0513-60
 ;;9002226.02101,"869,16590-0513-72 ",.01)
 ;;16590-0513-72
 ;;9002226.02101,"869,16590-0513-72 ",.02)
 ;;16590-0513-72
 ;;9002226.02101,"869,16590-0513-90 ",.01)
 ;;16590-0513-90
 ;;9002226.02101,"869,16590-0513-90 ",.02)
 ;;16590-0513-90
 ;;9002226.02101,"869,16590-0514-30 ",.01)
 ;;16590-0514-30
 ;;9002226.02101,"869,16590-0514-30 ",.02)
 ;;16590-0514-30
 ;;9002226.02101,"869,16590-0514-60 ",.01)
 ;;16590-0514-60
 ;;9002226.02101,"869,16590-0514-60 ",.02)
 ;;16590-0514-60
 ;;9002226.02101,"869,16590-0514-72 ",.01)
 ;;16590-0514-72
 ;;9002226.02101,"869,16590-0514-72 ",.02)
 ;;16590-0514-72
 ;;9002226.02101,"869,16590-0514-90 ",.01)
 ;;16590-0514-90
 ;;9002226.02101,"869,16590-0514-90 ",.02)
 ;;16590-0514-90
 ;;9002226.02101,"869,16590-0526-30 ",.01)
 ;;16590-0526-30
 ;;9002226.02101,"869,16590-0526-30 ",.02)
 ;;16590-0526-30
 ;;9002226.02101,"869,16590-0526-60 ",.01)
 ;;16590-0526-60
 ;;9002226.02101,"869,16590-0526-60 ",.02)
 ;;16590-0526-60
 ;;9002226.02101,"869,16590-0526-90 ",.01)
 ;;16590-0526-90
 ;;9002226.02101,"869,16590-0526-90 ",.02)
 ;;16590-0526-90
 ;;9002226.02101,"869,16590-0577-30 ",.01)
 ;;16590-0577-30
 ;;9002226.02101,"869,16590-0577-30 ",.02)
 ;;16590-0577-30
 ;;9002226.02101,"869,16714-0311-01 ",.01)
 ;;16714-0311-01
 ;;9002226.02101,"869,16714-0311-01 ",.02)
 ;;16714-0311-01
 ;;9002226.02101,"869,16714-0312-01 ",.01)
 ;;16714-0312-01
 ;;9002226.02101,"869,16714-0312-01 ",.02)
 ;;16714-0312-01
 ;;9002226.02101,"869,16714-0313-01 ",.01)
 ;;16714-0313-01
 ;;9002226.02101,"869,16714-0313-01 ",.02)
 ;;16714-0313-01
 ;;9002226.02101,"869,16714-0314-01 ",.01)
 ;;16714-0314-01
 ;;9002226.02101,"869,16714-0314-01 ",.02)
 ;;16714-0314-01
 ;;9002226.02101,"869,16714-0315-01 ",.01)
 ;;16714-0315-01
 ;;9002226.02101,"869,16714-0315-01 ",.02)
 ;;16714-0315-01
 ;;9002226.02101,"869,16714-0334-01 ",.01)
 ;;16714-0334-01
 ;;9002226.02101,"869,16714-0334-01 ",.02)
 ;;16714-0334-01
 ;;9002226.02101,"869,16714-0334-02 ",.01)
 ;;16714-0334-02
 ;;9002226.02101,"869,16714-0334-02 ",.02)
 ;;16714-0334-02
 ;;9002226.02101,"869,16714-0334-03 ",.01)
 ;;16714-0334-03
 ;;9002226.02101,"869,16714-0334-03 ",.02)
 ;;16714-0334-03
 ;;9002226.02101,"869,16714-0335-01 ",.01)
 ;;16714-0335-01
 ;;9002226.02101,"869,16714-0335-01 ",.02)
 ;;16714-0335-01
 ;;9002226.02101,"869,16714-0335-02 ",.01)
 ;;16714-0335-02
 ;;9002226.02101,"869,16714-0335-02 ",.02)
 ;;16714-0335-02
 ;;9002226.02101,"869,16714-0335-03 ",.01)
 ;;16714-0335-03
 ;;9002226.02101,"869,16714-0335-03 ",.02)
 ;;16714-0335-03
 ;;9002226.02101,"869,16714-0336-01 ",.01)
 ;;16714-0336-01
 ;;9002226.02101,"869,16714-0336-01 ",.02)
 ;;16714-0336-01
 ;;9002226.02101,"869,16714-0351-01 ",.01)
 ;;16714-0351-01
 ;;9002226.02101,"869,16714-0351-01 ",.02)
 ;;16714-0351-01
 ;;9002226.02101,"869,16714-0351-02 ",.01)
 ;;16714-0351-02
 ;;9002226.02101,"869,16714-0351-02 ",.02)
 ;;16714-0351-02
 ;;9002226.02101,"869,16714-0351-03 ",.01)
 ;;16714-0351-03
 ;;9002226.02101,"869,16714-0351-03 ",.02)
 ;;16714-0351-03
 ;;9002226.02101,"869,16714-0352-01 ",.01)
 ;;16714-0352-01
 ;;9002226.02101,"869,16714-0352-01 ",.02)
 ;;16714-0352-01
 ;;9002226.02101,"869,16714-0352-02 ",.01)
 ;;16714-0352-02
 ;;9002226.02101,"869,16714-0352-02 ",.02)
 ;;16714-0352-02
 ;;9002226.02101,"869,16714-0352-03 ",.01)
 ;;16714-0352-03
 ;;9002226.02101,"869,16714-0352-03 ",.02)
 ;;16714-0352-03
 ;;9002226.02101,"869,16714-0353-01 ",.01)
 ;;16714-0353-01
 ;;9002226.02101,"869,16714-0353-01 ",.02)
 ;;16714-0353-01
 ;;9002226.02101,"869,16714-0353-02 ",.01)
 ;;16714-0353-02
 ;;9002226.02101,"869,16714-0353-02 ",.02)
 ;;16714-0353-02
 ;;9002226.02101,"869,16714-0353-03 ",.01)
 ;;16714-0353-03
 ;;9002226.02101,"869,16714-0353-03 ",.02)
 ;;16714-0353-03
 ;;9002226.02101,"869,16714-0353-04 ",.01)
 ;;16714-0353-04
 ;;9002226.02101,"869,16714-0353-04 ",.02)
 ;;16714-0353-04
 ;;9002226.02101,"869,16714-0446-01 ",.01)
 ;;16714-0446-01
 ;;9002226.02101,"869,16714-0446-01 ",.02)
 ;;16714-0446-01
 ;;9002226.02101,"869,16714-0446-02 ",.01)
 ;;16714-0446-02
 ;;9002226.02101,"869,16714-0446-02 ",.02)
 ;;16714-0446-02
 ;;9002226.02101,"869,16714-0447-01 ",.01)
 ;;16714-0447-01
 ;;9002226.02101,"869,16714-0447-01 ",.02)
 ;;16714-0447-01
 ;;9002226.02101,"869,16714-0447-02 ",.01)
 ;;16714-0447-02
 ;;9002226.02101,"869,16714-0447-02 ",.02)
 ;;16714-0447-02
 ;;9002226.02101,"869,16714-0448-01 ",.01)
 ;;16714-0448-01
 ;;9002226.02101,"869,16714-0448-01 ",.02)
 ;;16714-0448-01
 ;;9002226.02101,"869,16714-0448-02 ",.01)
 ;;16714-0448-02
 ;;9002226.02101,"869,16714-0448-02 ",.02)
 ;;16714-0448-02
 ;;9002226.02101,"869,16714-0449-01 ",.01)
 ;;16714-0449-01
 ;;9002226.02101,"869,16714-0449-01 ",.02)
 ;;16714-0449-01
 ;;9002226.02101,"869,16714-0450-01 ",.01)
 ;;16714-0450-01
 ;;9002226.02101,"869,16714-0450-01 ",.02)
 ;;16714-0450-01
 ;;9002226.02101,"869,16714-0451-01 ",.01)
 ;;16714-0451-01
 ;;9002226.02101,"869,16714-0451-01 ",.02)
 ;;16714-0451-01
 ;;9002226.02101,"869,16714-0601-01 ",.01)
 ;;16714-0601-01
 ;;9002226.02101,"869,16714-0601-01 ",.02)
 ;;16714-0601-01
 ;;9002226.02101,"869,16714-0601-02 ",.01)
 ;;16714-0601-02
 ;;9002226.02101,"869,16714-0601-02 ",.02)
 ;;16714-0601-02
 ;;9002226.02101,"869,16714-0611-01 ",.01)
 ;;16714-0611-01
 ;;9002226.02101,"869,16714-0611-01 ",.02)
 ;;16714-0611-01
 ;;9002226.02101,"869,16714-0611-04 ",.01)
 ;;16714-0611-04
 ;;9002226.02101,"869,16714-0611-04 ",.02)
 ;;16714-0611-04
 ;;9002226.02101,"869,16714-0611-05 ",.01)
 ;;16714-0611-05
 ;;9002226.02101,"869,16714-0611-05 ",.02)
 ;;16714-0611-05
 ;;9002226.02101,"869,16714-0611-06 ",.01)
 ;;16714-0611-06