BGP8ZI70 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,69097-0823-12 ",.01)
 ;;69097-0823-12
 ;;9002226.02101,"869,69097-0823-12 ",.02)
 ;;69097-0823-12
 ;;9002226.02101,"869,69097-0824-07 ",.01)
 ;;69097-0824-07
 ;;9002226.02101,"869,69097-0824-07 ",.02)
 ;;69097-0824-07
 ;;9002226.02101,"869,69097-0824-12 ",.01)
 ;;69097-0824-12
 ;;9002226.02101,"869,69097-0824-12 ",.02)
 ;;69097-0824-12
 ;;9002226.02101,"869,69097-0833-02 ",.01)
 ;;69097-0833-02
 ;;9002226.02101,"869,69097-0833-02 ",.02)
 ;;69097-0833-02
 ;;9002226.02101,"869,69097-0833-05 ",.01)
 ;;69097-0833-05
 ;;9002226.02101,"869,69097-0833-05 ",.02)
 ;;69097-0833-05
 ;;9002226.02101,"869,69097-0833-12 ",.01)
 ;;69097-0833-12
 ;;9002226.02101,"869,69097-0833-12 ",.02)
 ;;69097-0833-12
 ;;9002226.02101,"869,69097-0834-02 ",.01)
 ;;69097-0834-02
 ;;9002226.02101,"869,69097-0834-02 ",.02)
 ;;69097-0834-02
 ;;9002226.02101,"869,69097-0834-12 ",.01)
 ;;69097-0834-12
 ;;9002226.02101,"869,69097-0834-12 ",.02)
 ;;69097-0834-12
 ;;9002226.02101,"869,69097-0835-02 ",.01)
 ;;69097-0835-02
 ;;9002226.02101,"869,69097-0835-02 ",.02)
 ;;69097-0835-02
 ;;9002226.02101,"869,69097-0835-12 ",.01)
 ;;69097-0835-12
 ;;9002226.02101,"869,69097-0835-12 ",.02)
 ;;69097-0835-12
 ;;9002226.02101,"869,69097-0847-05 ",.01)
 ;;69097-0847-05
 ;;9002226.02101,"869,69097-0847-05 ",.02)
 ;;69097-0847-05
 ;;9002226.02101,"869,69097-0848-05 ",.01)
 ;;69097-0848-05
 ;;9002226.02101,"869,69097-0848-05 ",.02)
 ;;69097-0848-05
 ;;9002226.02101,"869,69097-0849-05 ",.01)
 ;;69097-0849-05
 ;;9002226.02101,"869,69097-0849-05 ",.02)
 ;;69097-0849-05
 ;;9002226.02101,"869,69097-0875-02 ",.01)
 ;;69097-0875-02
 ;;9002226.02101,"869,69097-0875-02 ",.02)
 ;;69097-0875-02
 ;;9002226.02101,"869,69097-0875-05 ",.01)
 ;;69097-0875-05
 ;;9002226.02101,"869,69097-0875-05 ",.02)
 ;;69097-0875-05
 ;;9002226.02101,"869,69097-0875-12 ",.01)
 ;;69097-0875-12
 ;;9002226.02101,"869,69097-0875-12 ",.02)
 ;;69097-0875-12
 ;;9002226.02101,"869,69097-0876-02 ",.01)
 ;;69097-0876-02
 ;;9002226.02101,"869,69097-0876-02 ",.02)
 ;;69097-0876-02
 ;;9002226.02101,"869,69097-0876-12 ",.01)
 ;;69097-0876-12
 ;;9002226.02101,"869,69097-0876-12 ",.02)
 ;;69097-0876-12
 ;;9002226.02101,"869,69097-0877-03 ",.01)
 ;;69097-0877-03
 ;;9002226.02101,"869,69097-0877-03 ",.02)
 ;;69097-0877-03
 ;;9002226.02101,"869,69097-0877-07 ",.01)
 ;;69097-0877-07
 ;;9002226.02101,"869,69097-0877-07 ",.02)
 ;;69097-0877-07
 ;;9002226.02101,"869,69097-0877-12 ",.01)
 ;;69097-0877-12
 ;;9002226.02101,"869,69097-0877-12 ",.02)
 ;;69097-0877-12
 ;;9002226.02101,"869,69097-0878-03 ",.01)
 ;;69097-0878-03
 ;;9002226.02101,"869,69097-0878-03 ",.02)
 ;;69097-0878-03
 ;;9002226.02101,"869,69097-0878-07 ",.01)
 ;;69097-0878-07
 ;;9002226.02101,"869,69097-0878-07 ",.02)
 ;;69097-0878-07
 ;;9002226.02101,"869,69097-0878-12 ",.01)
 ;;69097-0878-12
 ;;9002226.02101,"869,69097-0878-12 ",.02)
 ;;69097-0878-12
 ;;9002226.02101,"869,69097-0879-03 ",.01)
 ;;69097-0879-03
 ;;9002226.02101,"869,69097-0879-03 ",.02)
 ;;69097-0879-03
 ;;9002226.02101,"869,69097-0879-07 ",.01)
 ;;69097-0879-07
 ;;9002226.02101,"869,69097-0879-07 ",.02)
 ;;69097-0879-07
 ;;9002226.02101,"869,69238-1053-01 ",.01)
 ;;69238-1053-01
 ;;9002226.02101,"869,69238-1053-01 ",.02)
 ;;69238-1053-01
 ;;9002226.02101,"869,69238-1053-03 ",.01)
 ;;69238-1053-03
 ;;9002226.02101,"869,69238-1053-03 ",.02)
 ;;69238-1053-03
 ;;9002226.02101,"869,69238-1055-01 ",.01)
 ;;69238-1055-01
 ;;9002226.02101,"869,69238-1055-01 ",.02)
 ;;69238-1055-01
 ;;9002226.02101,"869,69238-1057-01 ",.01)
 ;;69238-1057-01
 ;;9002226.02101,"869,69238-1057-01 ",.02)
 ;;69238-1057-01
 ;;9002226.02101,"869,69238-1059-01 ",.01)
 ;;69238-1059-01
 ;;9002226.02101,"869,69238-1059-01 ",.02)
 ;;69238-1059-01
 ;;9002226.02101,"869,69238-1061-01 ",.01)
 ;;69238-1061-01
 ;;9002226.02101,"869,69238-1061-01 ",.02)
 ;;69238-1061-01
 ;;9002226.02101,"869,69238-1063-02 ",.01)
 ;;69238-1063-02
 ;;9002226.02101,"869,69238-1063-02 ",.02)
 ;;69238-1063-02
 ;;9002226.02101,"869,69315-0133-01 ",.01)
 ;;69315-0133-01
 ;;9002226.02101,"869,69315-0133-01 ",.02)
 ;;69315-0133-01
 ;;9002226.02101,"869,69315-0133-10 ",.01)
 ;;69315-0133-10
 ;;9002226.02101,"869,69315-0133-10 ",.02)
 ;;69315-0133-10
 ;;9002226.02101,"869,69315-0134-01 ",.01)
 ;;69315-0134-01
 ;;9002226.02101,"869,69315-0134-01 ",.02)
 ;;69315-0134-01
 ;;9002226.02101,"869,69315-0134-10 ",.01)
 ;;69315-0134-10
 ;;9002226.02101,"869,69315-0134-10 ",.02)
 ;;69315-0134-10
 ;;9002226.02101,"869,69315-0135-01 ",.01)
 ;;69315-0135-01
 ;;9002226.02101,"869,69315-0135-01 ",.02)
 ;;69315-0135-01
 ;;9002226.02101,"869,69315-0135-10 ",.01)
 ;;69315-0135-10
 ;;9002226.02101,"869,69315-0135-10 ",.02)
 ;;69315-0135-10
 ;;9002226.02101,"869,69874-0422-10 ",.01)
 ;;69874-0422-10
 ;;9002226.02101,"869,69874-0422-10 ",.02)
 ;;69874-0422-10
 ;;9002226.02101,"869,69874-0500-10 ",.01)
 ;;69874-0500-10
 ;;9002226.02101,"869,69874-0500-10 ",.02)
 ;;69874-0500-10
 ;;9002226.02101,"869,76282-0206-01 ",.01)
 ;;76282-0206-01
 ;;9002226.02101,"869,76282-0206-01 ",.02)
 ;;76282-0206-01
 ;;9002226.02101,"869,76282-0206-05 ",.01)
 ;;76282-0206-05
 ;;9002226.02101,"869,76282-0206-05 ",.02)
 ;;76282-0206-05
 ;;9002226.02101,"869,76282-0206-10 ",.01)
 ;;76282-0206-10
 ;;9002226.02101,"869,76282-0206-10 ",.02)
 ;;76282-0206-10
 ;;9002226.02101,"869,76282-0207-01 ",.01)
 ;;76282-0207-01
 ;;9002226.02101,"869,76282-0207-01 ",.02)
 ;;76282-0207-01
 ;;9002226.02101,"869,76282-0207-05 ",.01)
 ;;76282-0207-05
 ;;9002226.02101,"869,76282-0207-05 ",.02)
 ;;76282-0207-05
 ;;9002226.02101,"869,76282-0207-10 ",.01)
 ;;76282-0207-10
 ;;9002226.02101,"869,76282-0207-10 ",.02)
 ;;76282-0207-10
 ;;9002226.02101,"869,76282-0207-30 ",.01)
 ;;76282-0207-30
 ;;9002226.02101,"869,76282-0207-30 ",.02)
 ;;76282-0207-30
 ;;9002226.02101,"869,76282-0208-01 ",.01)
 ;;76282-0208-01
 ;;9002226.02101,"869,76282-0208-01 ",.02)
 ;;76282-0208-01
 ;;9002226.02101,"869,76282-0208-05 ",.01)
 ;;76282-0208-05
 ;;9002226.02101,"869,76282-0208-05 ",.02)
 ;;76282-0208-05
 ;;9002226.02101,"869,76282-0208-10 ",.01)
 ;;76282-0208-10
 ;;9002226.02101,"869,76282-0208-10 ",.02)
 ;;76282-0208-10
 ;;9002226.02101,"869,76282-0208-30 ",.01)
 ;;76282-0208-30
 ;;9002226.02101,"869,76282-0208-30 ",.02)
 ;;76282-0208-30
 ;;9002226.02101,"869,76282-0212-01 ",.01)
 ;;76282-0212-01
 ;;9002226.02101,"869,76282-0212-01 ",.02)
 ;;76282-0212-01
 ;;9002226.02101,"869,76282-0212-05 ",.01)
 ;;76282-0212-05
 ;;9002226.02101,"869,76282-0212-05 ",.02)
 ;;76282-0212-05
 ;;9002226.02101,"869,76282-0212-30 ",.01)
 ;;76282-0212-30
 ;;9002226.02101,"869,76282-0212-30 ",.02)
 ;;76282-0212-30
 ;;9002226.02101,"869,76282-0212-90 ",.01)
 ;;76282-0212-90
 ;;9002226.02101,"869,76282-0212-90 ",.02)
 ;;76282-0212-90
 ;;9002226.02101,"869,76282-0213-01 ",.01)
 ;;76282-0213-01
 ;;9002226.02101,"869,76282-0213-01 ",.02)
 ;;76282-0213-01
 ;;9002226.02101,"869,76282-0213-05 ",.01)
 ;;76282-0213-05
 ;;9002226.02101,"869,76282-0213-05 ",.02)
 ;;76282-0213-05
 ;;9002226.02101,"869,76282-0213-18 ",.01)
 ;;76282-0213-18
 ;;9002226.02101,"869,76282-0213-18 ",.02)
 ;;76282-0213-18
 ;;9002226.02101,"869,76282-0213-30 ",.01)
 ;;76282-0213-30
 ;;9002226.02101,"869,76282-0213-30 ",.02)
 ;;76282-0213-30
 ;;9002226.02101,"869,76282-0213-90 ",.01)
 ;;76282-0213-90
 ;;9002226.02101,"869,76282-0213-90 ",.02)
 ;;76282-0213-90
 ;;9002226.02101,"869,76282-0214-01 ",.01)
 ;;76282-0214-01
 ;;9002226.02101,"869,76282-0214-01 ",.02)
 ;;76282-0214-01
 ;;9002226.02101,"869,76282-0214-05 ",.01)
 ;;76282-0214-05
 ;;9002226.02101,"869,76282-0214-05 ",.02)
 ;;76282-0214-05
 ;;9002226.02101,"869,76282-0214-30 ",.01)
 ;;76282-0214-30
 ;;9002226.02101,"869,76282-0214-30 ",.02)
 ;;76282-0214-30
 ;;9002226.02101,"869,76282-0214-90 ",.01)
 ;;76282-0214-90
 ;;9002226.02101,"869,76282-0214-90 ",.02)
 ;;76282-0214-90
 ;;9002226.02101,"869,76282-0249-10 ",.01)
 ;;76282-0249-10
 ;;9002226.02101,"869,76282-0249-10 ",.02)
 ;;76282-0249-10
 ;;9002226.02101,"869,76282-0249-30 ",.01)
 ;;76282-0249-30
 ;;9002226.02101,"869,76282-0249-30 ",.02)
 ;;76282-0249-30
 ;;9002226.02101,"869,76282-0249-90 ",.01)
 ;;76282-0249-90
 ;;9002226.02101,"869,76282-0249-90 ",.02)
 ;;76282-0249-90
 ;;9002226.02101,"869,76282-0250-10 ",.01)
 ;;76282-0250-10
 ;;9002226.02101,"869,76282-0250-10 ",.02)
 ;;76282-0250-10
 ;;9002226.02101,"869,76282-0250-30 ",.01)
 ;;76282-0250-30
 ;;9002226.02101,"869,76282-0250-30 ",.02)
 ;;76282-0250-30
 ;;9002226.02101,"869,76282-0250-90 ",.01)
 ;;76282-0250-90
 ;;9002226.02101,"869,76282-0250-90 ",.02)
 ;;76282-0250-90
 ;;9002226.02101,"869,76282-0251-10 ",.01)
 ;;76282-0251-10
 ;;9002226.02101,"869,76282-0251-10 ",.02)
 ;;76282-0251-10
 ;;9002226.02101,"869,76282-0251-90 ",.01)
 ;;76282-0251-90
 ;;9002226.02101,"869,76282-0251-90 ",.02)
 ;;76282-0251-90
 ;;9002226.04101,"869,1",.01)
 ;;APSA
 ;;9002226.04101,"869,2",.01)
 ;;BGP