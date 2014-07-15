BGP31ND ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 05, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1721,58016-0886-90 ",.01)
 ;;58016-0886-90
 ;;9002226.02101,"1721,58016-0886-90 ",.02)
 ;;58016-0886-90
 ;;9002226.02101,"1721,58864-0323-14 ",.01)
 ;;58864-0323-14
 ;;9002226.02101,"1721,58864-0323-14 ",.02)
 ;;58864-0323-14
 ;;9002226.02101,"1721,58864-0371-14 ",.01)
 ;;58864-0371-14
 ;;9002226.02101,"1721,58864-0371-14 ",.02)
 ;;58864-0371-14
 ;;9002226.02101,"1721,58864-0371-20 ",.01)
 ;;58864-0371-20
 ;;9002226.02101,"1721,58864-0371-20 ",.02)
 ;;58864-0371-20
 ;;9002226.02101,"1721,58864-0371-28 ",.01)
 ;;58864-0371-28
 ;;9002226.02101,"1721,58864-0371-28 ",.02)
 ;;58864-0371-28
 ;;9002226.02101,"1721,58864-0371-30 ",.01)
 ;;58864-0371-30
 ;;9002226.02101,"1721,58864-0371-30 ",.02)
 ;;58864-0371-30
 ;;9002226.02101,"1721,58864-0651-14 ",.01)
 ;;58864-0651-14
 ;;9002226.02101,"1721,58864-0651-14 ",.02)
 ;;58864-0651-14
 ;;9002226.02101,"1721,59630-0450-08 ",.01)
 ;;59630-0450-08
 ;;9002226.02101,"1721,59630-0450-08 ",.02)
 ;;59630-0450-08
 ;;9002226.02101,"1721,59630-0450-16 ",.01)
 ;;59630-0450-16
 ;;9002226.02101,"1721,59630-0450-16 ",.02)
 ;;59630-0450-16
 ;;9002226.02101,"1721,60346-0289-10 ",.01)
 ;;60346-0289-10
 ;;9002226.02101,"1721,60346-0289-10 ",.02)
 ;;60346-0289-10
 ;;9002226.02101,"1721,60346-0289-14 ",.01)
 ;;60346-0289-14
 ;;9002226.02101,"1721,60346-0289-14 ",.02)
 ;;60346-0289-14
 ;;9002226.02101,"1721,60346-0289-20 ",.01)
 ;;60346-0289-20
 ;;9002226.02101,"1721,60346-0289-20 ",.02)
 ;;60346-0289-20
 ;;9002226.02101,"1721,60346-0289-28 ",.01)
 ;;60346-0289-28
 ;;9002226.02101,"1721,60346-0289-28 ",.02)
 ;;60346-0289-28
 ;;9002226.02101,"1721,60346-0318-28 ",.01)
 ;;60346-0318-28
 ;;9002226.02101,"1721,60346-0318-28 ",.02)
 ;;60346-0318-28
 ;;9002226.02101,"1721,60346-0318-40 ",.01)
 ;;60346-0318-40
 ;;9002226.02101,"1721,60346-0318-40 ",.02)
 ;;60346-0318-40
 ;;9002226.02101,"1721,60346-0616-20 ",.01)
 ;;60346-0616-20
 ;;9002226.02101,"1721,60346-0616-20 ",.02)
 ;;60346-0616-20
 ;;9002226.02101,"1721,60346-0616-28 ",.01)
 ;;60346-0616-28
 ;;9002226.02101,"1721,60346-0616-28 ",.02)
 ;;60346-0616-28
 ;;9002226.02101,"1721,60346-0616-40 ",.01)
 ;;60346-0616-40
 ;;9002226.02101,"1721,60346-0616-40 ",.02)
 ;;60346-0616-40
 ;;9002226.02101,"1721,60346-0651-28 ",.01)
 ;;60346-0651-28
 ;;9002226.02101,"1721,60346-0651-28 ",.02)
 ;;60346-0651-28
 ;;9002226.02101,"1721,60346-0651-40 ",.01)
 ;;60346-0651-40
 ;;9002226.02101,"1721,60346-0651-40 ",.02)
 ;;60346-0651-40
 ;;9002226.02101,"1721,63304-0518-01 ",.01)
 ;;63304-0518-01
 ;;9002226.02101,"1721,63304-0518-01 ",.02)
 ;;63304-0518-01
 ;;9002226.02101,"1721,63629-1459-01 ",.01)
 ;;63629-1459-01
 ;;9002226.02101,"1721,63629-1459-01 ",.02)
 ;;63629-1459-01
 ;;9002226.02101,"1721,63629-1459-02 ",.01)
 ;;63629-1459-02
 ;;9002226.02101,"1721,63629-1459-02 ",.02)
 ;;63629-1459-02
 ;;9002226.02101,"1721,63629-1459-03 ",.01)
 ;;63629-1459-03
 ;;9002226.02101,"1721,63629-1459-03 ",.02)
 ;;63629-1459-03
 ;;9002226.02101,"1721,63629-1459-04 ",.01)
 ;;63629-1459-04
 ;;9002226.02101,"1721,63629-1459-04 ",.02)
 ;;63629-1459-04
 ;;9002226.02101,"1721,63629-1459-05 ",.01)
 ;;63629-1459-05
 ;;9002226.02101,"1721,63629-1459-05 ",.02)
 ;;63629-1459-05
 ;;9002226.02101,"1721,63629-1459-06 ",.01)
 ;;63629-1459-06
 ;;9002226.02101,"1721,63629-1459-06 ",.02)
 ;;63629-1459-06
 ;;9002226.02101,"1721,63629-1748-01 ",.01)
 ;;63629-1748-01
 ;;9002226.02101,"1721,63629-1748-01 ",.02)
 ;;63629-1748-01
 ;;9002226.02101,"1721,63629-1748-02 ",.01)
 ;;63629-1748-02
 ;;9002226.02101,"1721,63629-1748-02 ",.02)
 ;;63629-1748-02
 ;;9002226.02101,"1721,63629-1748-03 ",.01)
 ;;63629-1748-03
 ;;9002226.02101,"1721,63629-1748-03 ",.02)
 ;;63629-1748-03
 ;;9002226.02101,"1721,63739-0188-02 ",.01)
 ;;63739-0188-02
 ;;9002226.02101,"1721,63739-0188-02 ",.02)
 ;;63739-0188-02
 ;;9002226.02101,"1721,65162-0689-88 ",.01)
 ;;65162-0689-88
 ;;9002226.02101,"1721,65162-0689-88 ",.02)
 ;;65162-0689-88
 ;;9002226.02101,"1721,66116-0208-30 ",.01)
 ;;66116-0208-30
 ;;9002226.02101,"1721,66116-0208-30 ",.02)
 ;;66116-0208-30
 ;;9002226.02101,"1721,66116-0217-10 ",.01)
 ;;66116-0217-10
 ;;9002226.02101,"1721,66116-0217-10 ",.02)
 ;;66116-0217-10
 ;;9002226.02101,"1721,66116-0217-14 ",.01)
 ;;66116-0217-14
 ;;9002226.02101,"1721,66116-0217-14 ",.02)
 ;;66116-0217-14
 ;;9002226.02101,"1721,66116-0217-30 ",.01)
 ;;66116-0217-30
 ;;9002226.02101,"1721,66116-0217-30 ",.02)
 ;;66116-0217-30
 ;;9002226.02101,"1721,66116-0250-30 ",.01)
 ;;66116-0250-30
 ;;9002226.02101,"1721,66116-0250-30 ",.02)
 ;;66116-0250-30
 ;;9002226.02101,"1721,66116-0462-20 ",.01)
 ;;66116-0462-20
 ;;9002226.02101,"1721,66116-0462-20 ",.02)
 ;;66116-0462-20
 ;;9002226.02101,"1721,66267-0156-14 ",.01)
 ;;66267-0156-14
 ;;9002226.02101,"1721,66267-0156-14 ",.02)
 ;;66267-0156-14
 ;;9002226.02101,"1721,66267-0156-28 ",.01)
 ;;66267-0156-28
 ;;9002226.02101,"1721,66267-0156-28 ",.02)
 ;;66267-0156-28
 ;;9002226.02101,"1721,66267-0156-40 ",.01)
 ;;66267-0156-40
 ;;9002226.02101,"1721,66267-0156-40 ",.02)
 ;;66267-0156-40
 ;;9002226.02101,"1721,66336-0008-14 ",.01)
 ;;66336-0008-14
 ;;9002226.02101,"1721,66336-0008-14 ",.02)
 ;;66336-0008-14
 ;;9002226.02101,"1721,66336-0008-28 ",.01)
 ;;66336-0008-28
 ;;9002226.02101,"1721,66336-0008-28 ",.02)
 ;;66336-0008-28
 ;;9002226.02101,"1721,66336-0289-14 ",.01)
 ;;66336-0289-14
 ;;9002226.02101,"1721,66336-0289-14 ",.02)
 ;;66336-0289-14
 ;;9002226.02101,"1721,66336-0289-20 ",.01)
 ;;66336-0289-20
 ;;9002226.02101,"1721,66336-0289-20 ",.02)
 ;;66336-0289-20
 ;;9002226.02101,"1721,66336-0590-14 ",.01)
 ;;66336-0590-14
 ;;9002226.02101,"1721,66336-0590-14 ",.02)
 ;;66336-0590-14
 ;;9002226.02101,"1721,66336-0590-20 ",.01)
 ;;66336-0590-20
 ;;9002226.02101,"1721,66336-0590-20 ",.02)
 ;;66336-0590-20
 ;;9002226.02101,"1721,66993-0471-73 ",.01)
 ;;66993-0471-73
 ;;9002226.02101,"1721,66993-0471-73 ",.02)
 ;;66993-0471-73
 ;;9002226.02101,"1721,68084-0446-01 ",.01)
 ;;68084-0446-01
 ;;9002226.02101,"1721,68084-0446-01 ",.02)
 ;;68084-0446-01
 ;;9002226.02101,"1721,68084-0446-11 ",.01)
 ;;68084-0446-11
 ;;9002226.02101,"1721,68084-0446-11 ",.02)
 ;;68084-0446-11
 ;;9002226.02101,"1721,68115-0220-06 ",.01)
 ;;68115-0220-06
 ;;9002226.02101,"1721,68115-0220-06 ",.02)
 ;;68115-0220-06
 ;;9002226.02101,"1721,68115-0220-14 ",.01)
 ;;68115-0220-14
 ;;9002226.02101,"1721,68115-0220-14 ",.02)
 ;;68115-0220-14
 ;;9002226.02101,"1721,68115-0220-20 ",.01)
 ;;68115-0220-20
 ;;9002226.02101,"1721,68115-0220-20 ",.02)
 ;;68115-0220-20
 ;;9002226.02101,"1721,68115-0258-28 ",.01)
 ;;68115-0258-28
 ;;9002226.02101,"1721,68115-0258-28 ",.02)
 ;;68115-0258-28
 ;;9002226.02101,"1721,68115-0259-28 ",.01)
 ;;68115-0259-28
 ;;9002226.02101,"1721,68115-0259-28 ",.02)
 ;;68115-0259-28