BGP8ZI46 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,55045-2224-07 ",.01)
 ;;55045-2224-07
 ;;9002226.02101,"869,55045-2224-07 ",.02)
 ;;55045-2224-07
 ;;9002226.02101,"869,55045-2224-08 ",.01)
 ;;55045-2224-08
 ;;9002226.02101,"869,55045-2224-08 ",.02)
 ;;55045-2224-08
 ;;9002226.02101,"869,55045-2509-00 ",.01)
 ;;55045-2509-00
 ;;9002226.02101,"869,55045-2509-00 ",.02)
 ;;55045-2509-00
 ;;9002226.02101,"869,55045-2509-01 ",.01)
 ;;55045-2509-01
 ;;9002226.02101,"869,55045-2509-01 ",.02)
 ;;55045-2509-01
 ;;9002226.02101,"869,55045-2509-06 ",.01)
 ;;55045-2509-06
 ;;9002226.02101,"869,55045-2509-06 ",.02)
 ;;55045-2509-06
 ;;9002226.02101,"869,55045-2509-08 ",.01)
 ;;55045-2509-08
 ;;9002226.02101,"869,55045-2509-08 ",.02)
 ;;55045-2509-08
 ;;9002226.02101,"869,55045-2509-09 ",.01)
 ;;55045-2509-09
 ;;9002226.02101,"869,55045-2509-09 ",.02)
 ;;55045-2509-09
 ;;9002226.02101,"869,55045-2546-08 ",.01)
 ;;55045-2546-08
 ;;9002226.02101,"869,55045-2546-08 ",.02)
 ;;55045-2546-08
 ;;9002226.02101,"869,55045-2631-08 ",.01)
 ;;55045-2631-08
 ;;9002226.02101,"869,55045-2631-08 ",.02)
 ;;55045-2631-08
 ;;9002226.02101,"869,55045-2705-00 ",.01)
 ;;55045-2705-00
 ;;9002226.02101,"869,55045-2705-00 ",.02)
 ;;55045-2705-00
 ;;9002226.02101,"869,55045-2706-09 ",.01)
 ;;55045-2706-09
 ;;9002226.02101,"869,55045-2706-09 ",.02)
 ;;55045-2706-09
 ;;9002226.02101,"869,55045-2907-00 ",.01)
 ;;55045-2907-00
 ;;9002226.02101,"869,55045-2907-00 ",.02)
 ;;55045-2907-00
 ;;9002226.02101,"869,55045-2907-02 ",.01)
 ;;55045-2907-02
 ;;9002226.02101,"869,55045-2907-02 ",.02)
 ;;55045-2907-02
 ;;9002226.02101,"869,55045-2907-06 ",.01)
 ;;55045-2907-06
 ;;9002226.02101,"869,55045-2907-06 ",.02)
 ;;55045-2907-06
 ;;9002226.02101,"869,55045-2907-08 ",.01)
 ;;55045-2907-08
 ;;9002226.02101,"869,55045-2907-08 ",.02)
 ;;55045-2907-08
 ;;9002226.02101,"869,55045-2907-09 ",.01)
 ;;55045-2907-09
 ;;9002226.02101,"869,55045-2907-09 ",.02)
 ;;55045-2907-09
 ;;9002226.02101,"869,55045-2908-00 ",.01)
 ;;55045-2908-00
 ;;9002226.02101,"869,55045-2908-00 ",.02)
 ;;55045-2908-00
 ;;9002226.02101,"869,55045-2908-02 ",.01)
 ;;55045-2908-02
 ;;9002226.02101,"869,55045-2908-02 ",.02)
 ;;55045-2908-02
 ;;9002226.02101,"869,55045-2908-06 ",.01)
 ;;55045-2908-06
 ;;9002226.02101,"869,55045-2908-06 ",.02)
 ;;55045-2908-06
 ;;9002226.02101,"869,55045-2908-08 ",.01)
 ;;55045-2908-08
 ;;9002226.02101,"869,55045-2908-08 ",.02)
 ;;55045-2908-08
 ;;9002226.02101,"869,55045-2908-09 ",.01)
 ;;55045-2908-09
 ;;9002226.02101,"869,55045-2908-09 ",.02)
 ;;55045-2908-09
 ;;9002226.02101,"869,55045-2934-00 ",.01)
 ;;55045-2934-00
 ;;9002226.02101,"869,55045-2934-00 ",.02)
 ;;55045-2934-00
 ;;9002226.02101,"869,55045-2934-08 ",.01)
 ;;55045-2934-08
 ;;9002226.02101,"869,55045-2934-08 ",.02)
 ;;55045-2934-08
 ;;9002226.02101,"869,55045-2985-00 ",.01)
 ;;55045-2985-00
 ;;9002226.02101,"869,55045-2985-00 ",.02)
 ;;55045-2985-00
 ;;9002226.02101,"869,55045-2985-08 ",.01)
 ;;55045-2985-08
 ;;9002226.02101,"869,55045-2985-08 ",.02)
 ;;55045-2985-08
 ;;9002226.02101,"869,55045-3137-08 ",.01)
 ;;55045-3137-08
 ;;9002226.02101,"869,55045-3137-08 ",.02)
 ;;55045-3137-08
 ;;9002226.02101,"869,55045-3171-08 ",.01)
 ;;55045-3171-08
 ;;9002226.02101,"869,55045-3171-08 ",.02)
 ;;55045-3171-08
 ;;9002226.02101,"869,55045-3172-08 ",.01)
 ;;55045-3172-08
 ;;9002226.02101,"869,55045-3172-08 ",.02)
 ;;55045-3172-08
 ;;9002226.02101,"869,55045-3172-09 ",.01)
 ;;55045-3172-09
 ;;9002226.02101,"869,55045-3172-09 ",.02)
 ;;55045-3172-09
 ;;9002226.02101,"869,55045-3195-06 ",.01)
 ;;55045-3195-06
 ;;9002226.02101,"869,55045-3195-06 ",.02)
 ;;55045-3195-06
 ;;9002226.02101,"869,55045-3195-08 ",.01)
 ;;55045-3195-08
 ;;9002226.02101,"869,55045-3195-08 ",.02)
 ;;55045-3195-08
 ;;9002226.02101,"869,55045-3196-06 ",.01)
 ;;55045-3196-06
 ;;9002226.02101,"869,55045-3196-06 ",.02)
 ;;55045-3196-06
 ;;9002226.02101,"869,55045-3196-08 ",.01)
 ;;55045-3196-08
 ;;9002226.02101,"869,55045-3196-08 ",.02)
 ;;55045-3196-08
 ;;9002226.02101,"869,55045-3196-09 ",.01)
 ;;55045-3196-09
 ;;9002226.02101,"869,55045-3196-09 ",.02)
 ;;55045-3196-09
 ;;9002226.02101,"869,55045-3197-06 ",.01)
 ;;55045-3197-06
 ;;9002226.02101,"869,55045-3197-06 ",.02)
 ;;55045-3197-06
 ;;9002226.02101,"869,55045-3341-06 ",.01)
 ;;55045-3341-06
 ;;9002226.02101,"869,55045-3341-06 ",.02)
 ;;55045-3341-06
 ;;9002226.02101,"869,55045-3341-08 ",.01)
 ;;55045-3341-08
 ;;9002226.02101,"869,55045-3341-08 ",.02)
 ;;55045-3341-08
 ;;9002226.02101,"869,55045-3368-08 ",.01)
 ;;55045-3368-08
 ;;9002226.02101,"869,55045-3368-08 ",.02)
 ;;55045-3368-08
 ;;9002226.02101,"869,55045-3386-08 ",.01)
 ;;55045-3386-08
 ;;9002226.02101,"869,55045-3386-08 ",.02)
 ;;55045-3386-08
 ;;9002226.02101,"869,55045-3423-01 ",.01)
 ;;55045-3423-01
 ;;9002226.02101,"869,55045-3423-01 ",.02)
 ;;55045-3423-01
 ;;9002226.02101,"869,55045-3423-02 ",.01)
 ;;55045-3423-02
 ;;9002226.02101,"869,55045-3423-02 ",.02)
 ;;55045-3423-02
 ;;9002226.02101,"869,55045-3424-00 ",.01)
 ;;55045-3424-00
 ;;9002226.02101,"869,55045-3424-00 ",.02)
 ;;55045-3424-00
 ;;9002226.02101,"869,55045-3424-08 ",.01)
 ;;55045-3424-08
 ;;9002226.02101,"869,55045-3424-08 ",.02)
 ;;55045-3424-08
 ;;9002226.02101,"869,55045-3562-01 ",.01)
 ;;55045-3562-01
 ;;9002226.02101,"869,55045-3562-01 ",.02)
 ;;55045-3562-01
 ;;9002226.02101,"869,55045-3566-01 ",.01)
 ;;55045-3566-01
 ;;9002226.02101,"869,55045-3566-01 ",.02)
 ;;55045-3566-01
 ;;9002226.02101,"869,55045-3697-03 ",.01)
 ;;55045-3697-03
 ;;9002226.02101,"869,55045-3697-03 ",.02)
 ;;55045-3697-03
 ;;9002226.02101,"869,55045-3757-08 ",.01)
 ;;55045-3757-08
 ;;9002226.02101,"869,55045-3757-08 ",.02)
 ;;55045-3757-08
 ;;9002226.02101,"869,55045-3766-08 ",.01)
 ;;55045-3766-08
 ;;9002226.02101,"869,55045-3766-08 ",.02)
 ;;55045-3766-08
 ;;9002226.02101,"869,55045-3799-01 ",.01)
 ;;55045-3799-01
 ;;9002226.02101,"869,55045-3799-01 ",.02)
 ;;55045-3799-01
 ;;9002226.02101,"869,55111-0142-60 ",.01)
 ;;55111-0142-60
 ;;9002226.02101,"869,55111-0142-60 ",.02)
 ;;55111-0142-60
 ;;9002226.02101,"869,55111-0147-01 ",.01)
 ;;55111-0147-01
 ;;9002226.02101,"869,55111-0147-01 ",.02)
 ;;55111-0147-01
 ;;9002226.02101,"869,55111-0148-01 ",.01)
 ;;55111-0148-01
 ;;9002226.02101,"869,55111-0148-01 ",.02)
 ;;55111-0148-01
 ;;9002226.02101,"869,55111-0148-10 ",.01)
 ;;55111-0148-10
 ;;9002226.02101,"869,55111-0148-10 ",.02)
 ;;55111-0148-10
 ;;9002226.02101,"869,55111-0149-01 ",.01)
 ;;55111-0149-01
 ;;9002226.02101,"869,55111-0149-01 ",.02)
 ;;55111-0149-01
 ;;9002226.02101,"869,55111-0149-30 ",.01)
 ;;55111-0149-30
 ;;9002226.02101,"869,55111-0149-30 ",.02)
 ;;55111-0149-30
 ;;9002226.02101,"869,55111-0150-01 ",.01)
 ;;55111-0150-01
 ;;9002226.02101,"869,55111-0150-01 ",.02)
 ;;55111-0150-01
 ;;9002226.02101,"869,55111-0150-10 ",.01)
 ;;55111-0150-10
 ;;9002226.02101,"869,55111-0150-10 ",.02)
 ;;55111-0150-10
 ;;9002226.02101,"869,55111-0150-30 ",.01)
 ;;55111-0150-30
 ;;9002226.02101,"869,55111-0150-30 ",.02)
 ;;55111-0150-30
 ;;9002226.02101,"869,55111-0284-48 ",.01)
 ;;55111-0284-48
 ;;9002226.02101,"869,55111-0284-48 ",.02)
 ;;55111-0284-48
 ;;9002226.02101,"869,55111-0342-01 ",.01)
 ;;55111-0342-01
 ;;9002226.02101,"869,55111-0342-01 ",.02)
 ;;55111-0342-01
 ;;9002226.02101,"869,55111-0342-05 ",.01)
 ;;55111-0342-05
 ;;9002226.02101,"869,55111-0342-05 ",.02)
 ;;55111-0342-05
 ;;9002226.02101,"869,55111-0342-30 ",.01)
 ;;55111-0342-30
 ;;9002226.02101,"869,55111-0342-30 ",.02)
 ;;55111-0342-30
 ;;9002226.02101,"869,55111-0343-01 ",.01)
 ;;55111-0343-01
 ;;9002226.02101,"869,55111-0343-01 ",.02)
 ;;55111-0343-01
 ;;9002226.02101,"869,55111-0343-05 ",.01)
 ;;55111-0343-05
 ;;9002226.02101,"869,55111-0343-05 ",.02)
 ;;55111-0343-05
 ;;9002226.02101,"869,55111-0343-30 ",.01)
 ;;55111-0343-30
 ;;9002226.02101,"869,55111-0343-30 ",.02)
 ;;55111-0343-30
 ;;9002226.02101,"869,55111-0344-01 ",.01)
 ;;55111-0344-01
 ;;9002226.02101,"869,55111-0344-01 ",.02)
 ;;55111-0344-01
 ;;9002226.02101,"869,55111-0344-05 ",.01)
 ;;55111-0344-05
 ;;9002226.02101,"869,55111-0344-05 ",.02)
 ;;55111-0344-05
 ;;9002226.02101,"869,55111-0344-30 ",.01)
 ;;55111-0344-30
 ;;9002226.02101,"869,55111-0344-30 ",.02)
 ;;55111-0344-30
 ;;9002226.02101,"869,55111-0453-05 ",.01)
 ;;55111-0453-05
 ;;9002226.02101,"869,55111-0453-05 ",.02)
 ;;55111-0453-05
 ;;9002226.02101,"869,55111-0453-30 ",.01)
 ;;55111-0453-30
 ;;9002226.02101,"869,55111-0453-30 ",.02)
 ;;55111-0453-30
 ;;9002226.02101,"869,55111-0453-90 ",.01)
 ;;55111-0453-90
 ;;9002226.02101,"869,55111-0453-90 ",.02)
 ;;55111-0453-90
 ;;9002226.02101,"869,55111-0454-05 ",.01)
 ;;55111-0454-05
 ;;9002226.02101,"869,55111-0454-05 ",.02)
 ;;55111-0454-05
 ;;9002226.02101,"869,55111-0454-30 ",.01)
 ;;55111-0454-30
 ;;9002226.02101,"869,55111-0454-30 ",.02)
 ;;55111-0454-30
 ;;9002226.02101,"869,55111-0454-90 ",.01)
 ;;55111-0454-90
 ;;9002226.02101,"869,55111-0454-90 ",.02)
 ;;55111-0454-90
 ;;9002226.02101,"869,55111-0455-05 ",.01)
 ;;55111-0455-05
 ;;9002226.02101,"869,55111-0455-05 ",.02)
 ;;55111-0455-05
 ;;9002226.02101,"869,55111-0455-30 ",.01)
 ;;55111-0455-30
 ;;9002226.02101,"869,55111-0455-30 ",.02)
 ;;55111-0455-30
 ;;9002226.02101,"869,55111-0455-90 ",.01)
 ;;55111-0455-90
 ;;9002226.02101,"869,55111-0455-90 ",.02)
 ;;55111-0455-90
 ;;9002226.02101,"869,55111-0545-90 ",.01)
 ;;55111-0545-90
 ;;9002226.02101,"869,55111-0545-90 ",.02)
 ;;55111-0545-90
 ;;9002226.02101,"869,55111-0546-05 ",.01)
 ;;55111-0546-05
 ;;9002226.02101,"869,55111-0546-05 ",.02)
 ;;55111-0546-05
 ;;9002226.02101,"869,55111-0546-90 ",.01)
 ;;55111-0546-90
 ;;9002226.02101,"869,55111-0546-90 ",.02)
 ;;55111-0546-90
 ;;9002226.02101,"869,55111-0547-90 ",.01)
 ;;55111-0547-90
 ;;9002226.02101,"869,55111-0547-90 ",.02)
 ;;55111-0547-90
 ;;9002226.02101,"869,55111-0548-05 ",.01)
 ;;55111-0548-05
 ;;9002226.02101,"869,55111-0548-05 ",.02)
 ;;55111-0548-05
 ;;9002226.02101,"869,55111-0548-90 ",.01)
 ;;55111-0548-90
 ;;9002226.02101,"869,55111-0548-90 ",.02)
 ;;55111-0548-90
 ;;9002226.02101,"869,55111-0549-90 ",.01)
 ;;55111-0549-90
 ;;9002226.02101,"869,55111-0549-90 ",.02)
 ;;55111-0549-90
 ;;9002226.02101,"869,55111-0608-60 ",.01)
 ;;55111-0608-60
 ;;9002226.02101,"869,55111-0608-60 ",.02)
 ;;55111-0608-60
 ;;9002226.02101,"869,55111-0609-30 ",.01)
 ;;55111-0609-30
 ;;9002226.02101,"869,55111-0609-30 ",.02)
 ;;55111-0609-30
 ;;9002226.02101,"869,55111-0609-90 ",.01)
 ;;55111-0609-90
 ;;9002226.02101,"869,55111-0609-90 ",.02)
 ;;55111-0609-90
 ;;9002226.02101,"869,55111-0610-10 ",.01)
 ;;55111-0610-10
 ;;9002226.02101,"869,55111-0610-10 ",.02)
 ;;55111-0610-10
 ;;9002226.02101,"869,55111-0610-30 ",.01)
 ;;55111-0610-30
 ;;9002226.02101,"869,55111-0610-30 ",.02)
 ;;55111-0610-30
 ;;9002226.02101,"869,55154-6673-04 ",.01)
 ;;55154-6673-04
 ;;9002226.02101,"869,55154-6673-04 ",.02)
 ;;55154-6673-04
 ;;9002226.02101,"869,55154-6673-07 ",.01)
 ;;55154-6673-07
 ;;9002226.02101,"869,55154-6673-07 ",.02)
 ;;55154-6673-07
 ;;9002226.02101,"869,55289-0016-30 ",.01)
 ;;55289-0016-30
 ;;9002226.02101,"869,55289-0016-30 ",.02)
 ;;55289-0016-30
 ;;9002226.02101,"869,55289-0016-60 ",.01)
 ;;55289-0016-60
 ;;9002226.02101,"869,55289-0016-60 ",.02)
 ;;55289-0016-60
 ;;9002226.02101,"869,55289-0018-01 ",.01)
 ;;55289-0018-01
 ;;9002226.02101,"869,55289-0018-01 ",.02)
 ;;55289-0018-01
 ;;9002226.02101,"869,55289-0018-30 ",.01)
 ;;55289-0018-30
 ;;9002226.02101,"869,55289-0018-30 ",.02)
 ;;55289-0018-30
 ;;9002226.02101,"869,55289-0028-21 ",.01)
 ;;55289-0028-21
 ;;9002226.02101,"869,55289-0028-21 ",.02)
 ;;55289-0028-21