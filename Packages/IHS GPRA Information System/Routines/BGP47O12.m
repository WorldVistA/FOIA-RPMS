BGP47O12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"762,63629-3142-03 ",.01)
 ;;63629-3142-03
 ;;9002226.02101,"762,63629-3142-03 ",.02)
 ;;63629-3142-03
 ;;9002226.02101,"762,63629-3337-01 ",.01)
 ;;63629-3337-01
 ;;9002226.02101,"762,63629-3337-01 ",.02)
 ;;63629-3337-01
 ;;9002226.02101,"762,63629-3337-02 ",.01)
 ;;63629-3337-02
 ;;9002226.02101,"762,63629-3337-02 ",.02)
 ;;63629-3337-02
 ;;9002226.02101,"762,63629-3337-03 ",.01)
 ;;63629-3337-03
 ;;9002226.02101,"762,63629-3337-03 ",.02)
 ;;63629-3337-03
 ;;9002226.02101,"762,63629-3337-04 ",.01)
 ;;63629-3337-04
 ;;9002226.02101,"762,63629-3337-04 ",.02)
 ;;63629-3337-04
 ;;9002226.02101,"762,63629-3405-01 ",.01)
 ;;63629-3405-01
 ;;9002226.02101,"762,63629-3405-01 ",.02)
 ;;63629-3405-01
 ;;9002226.02101,"762,63629-3405-02 ",.01)
 ;;63629-3405-02
 ;;9002226.02101,"762,63629-3405-02 ",.02)
 ;;63629-3405-02
 ;;9002226.02101,"762,63629-3405-03 ",.01)
 ;;63629-3405-03
 ;;9002226.02101,"762,63629-3405-03 ",.02)
 ;;63629-3405-03
 ;;9002226.02101,"762,63629-3405-04 ",.01)
 ;;63629-3405-04
 ;;9002226.02101,"762,63629-3405-04 ",.02)
 ;;63629-3405-04
 ;;9002226.02101,"762,63629-3548-01 ",.01)
 ;;63629-3548-01
 ;;9002226.02101,"762,63629-3548-01 ",.02)
 ;;63629-3548-01
 ;;9002226.02101,"762,63629-3548-02 ",.01)
 ;;63629-3548-02
 ;;9002226.02101,"762,63629-3548-02 ",.02)
 ;;63629-3548-02
 ;;9002226.02101,"762,63629-3548-03 ",.01)
 ;;63629-3548-03
 ;;9002226.02101,"762,63629-3548-03 ",.02)
 ;;63629-3548-03
 ;;9002226.02101,"762,63629-3548-04 ",.01)
 ;;63629-3548-04
 ;;9002226.02101,"762,63629-3548-04 ",.02)
 ;;63629-3548-04
 ;;9002226.02101,"762,63629-3548-05 ",.01)
 ;;63629-3548-05
 ;;9002226.02101,"762,63629-3548-05 ",.02)
 ;;63629-3548-05
 ;;9002226.02101,"762,63629-3548-06 ",.01)
 ;;63629-3548-06
 ;;9002226.02101,"762,63629-3548-06 ",.02)
 ;;63629-3548-06
 ;;9002226.02101,"762,63629-3548-07 ",.01)
 ;;63629-3548-07
 ;;9002226.02101,"762,63629-3548-07 ",.02)
 ;;63629-3548-07
 ;;9002226.02101,"762,63629-3548-08 ",.01)
 ;;63629-3548-08
 ;;9002226.02101,"762,63629-3548-08 ",.02)
 ;;63629-3548-08
 ;;9002226.02101,"762,63629-3549-01 ",.01)
 ;;63629-3549-01
 ;;9002226.02101,"762,63629-3549-01 ",.02)
 ;;63629-3549-01
 ;;9002226.02101,"762,63629-3549-02 ",.01)
 ;;63629-3549-02
 ;;9002226.02101,"762,63629-3549-02 ",.02)
 ;;63629-3549-02
 ;;9002226.02101,"762,63629-3549-03 ",.01)
 ;;63629-3549-03
 ;;9002226.02101,"762,63629-3549-03 ",.02)
 ;;63629-3549-03
 ;;9002226.02101,"762,63629-3549-04 ",.01)
 ;;63629-3549-04
 ;;9002226.02101,"762,63629-3549-04 ",.02)
 ;;63629-3549-04
 ;;9002226.02101,"762,63629-3549-05 ",.01)
 ;;63629-3549-05
 ;;9002226.02101,"762,63629-3549-05 ",.02)
 ;;63629-3549-05
 ;;9002226.02101,"762,63629-3549-06 ",.01)
 ;;63629-3549-06
 ;;9002226.02101,"762,63629-3549-06 ",.02)
 ;;63629-3549-06
 ;;9002226.02101,"762,63629-3786-01 ",.01)
 ;;63629-3786-01
 ;;9002226.02101,"762,63629-3786-01 ",.02)
 ;;63629-3786-01
 ;;9002226.02101,"762,63629-3786-02 ",.01)
 ;;63629-3786-02
 ;;9002226.02101,"762,63629-3786-02 ",.02)
 ;;63629-3786-02
 ;;9002226.02101,"762,63629-3906-01 ",.01)
 ;;63629-3906-01
 ;;9002226.02101,"762,63629-3906-01 ",.02)
 ;;63629-3906-01
 ;;9002226.02101,"762,63629-3906-02 ",.01)
 ;;63629-3906-02
 ;;9002226.02101,"762,63629-3906-02 ",.02)
 ;;63629-3906-02
 ;;9002226.02101,"762,63629-3906-03 ",.01)
 ;;63629-3906-03
 ;;9002226.02101,"762,63629-3906-03 ",.02)
 ;;63629-3906-03
 ;;9002226.02101,"762,63629-4597-01 ",.01)
 ;;63629-4597-01
 ;;9002226.02101,"762,63629-4597-01 ",.02)
 ;;63629-4597-01
 ;;9002226.02101,"762,63672-3005-01 ",.01)
 ;;63672-3005-01
 ;;9002226.02101,"762,63672-3005-01 ",.02)
 ;;63672-3005-01
 ;;9002226.02101,"762,63672-3005-02 ",.01)
 ;;63672-3005-02
 ;;9002226.02101,"762,63672-3005-02 ",.02)
 ;;63672-3005-02
 ;;9002226.02101,"762,63672-3010-01 ",.01)
 ;;63672-3010-01
 ;;9002226.02101,"762,63672-3010-01 ",.02)
 ;;63672-3010-01
 ;;9002226.02101,"762,63672-3010-02 ",.01)
 ;;63672-3010-02
 ;;9002226.02101,"762,63672-3010-02 ",.02)
 ;;63672-3010-02
 ;;9002226.02101,"762,63739-0429-10 ",.01)
 ;;63739-0429-10
 ;;9002226.02101,"762,63739-0429-10 ",.02)
 ;;63739-0429-10
 ;;9002226.02101,"762,63739-0430-10 ",.01)
 ;;63739-0430-10
 ;;9002226.02101,"762,63739-0430-10 ",.02)
 ;;63739-0430-10
 ;;9002226.02101,"762,63739-0526-10 ",.01)
 ;;63739-0526-10
 ;;9002226.02101,"762,63739-0526-10 ",.02)
 ;;63739-0526-10
 ;;9002226.02101,"762,63874-0280-01 ",.01)
 ;;63874-0280-01
 ;;9002226.02101,"762,63874-0280-01 ",.02)
 ;;63874-0280-01
 ;;9002226.02101,"762,63874-0280-04 ",.01)
 ;;63874-0280-04
 ;;9002226.02101,"762,63874-0280-04 ",.02)
 ;;63874-0280-04
 ;;9002226.02101,"762,63874-0280-06 ",.01)
 ;;63874-0280-06
 ;;9002226.02101,"762,63874-0280-06 ",.02)
 ;;63874-0280-06
 ;;9002226.02101,"762,63874-0280-10 ",.01)
 ;;63874-0280-10
 ;;9002226.02101,"762,63874-0280-10 ",.02)
 ;;63874-0280-10
 ;;9002226.02101,"762,63874-0280-15 ",.01)
 ;;63874-0280-15
 ;;9002226.02101,"762,63874-0280-15 ",.02)
 ;;63874-0280-15
 ;;9002226.02101,"762,63874-0280-20 ",.01)
 ;;63874-0280-20
 ;;9002226.02101,"762,63874-0280-20 ",.02)
 ;;63874-0280-20
 ;;9002226.02101,"762,63874-0280-30 ",.01)
 ;;63874-0280-30
 ;;9002226.02101,"762,63874-0280-30 ",.02)
 ;;63874-0280-30
 ;;9002226.02101,"762,63874-0280-40 ",.01)
 ;;63874-0280-40
 ;;9002226.02101,"762,63874-0280-40 ",.02)
 ;;63874-0280-40
 ;;9002226.02101,"762,63874-0280-60 ",.01)
 ;;63874-0280-60
 ;;9002226.02101,"762,63874-0280-60 ",.02)
 ;;63874-0280-60
 ;;9002226.02101,"762,63874-0280-90 ",.01)
 ;;63874-0280-90
 ;;9002226.02101,"762,63874-0280-90 ",.02)
 ;;63874-0280-90
 ;;9002226.02101,"762,63874-0924-01 ",.01)
 ;;63874-0924-01
 ;;9002226.02101,"762,63874-0924-01 ",.02)
 ;;63874-0924-01
 ;;9002226.02101,"762,63874-0924-06 ",.01)
 ;;63874-0924-06
 ;;9002226.02101,"762,63874-0924-06 ",.02)
 ;;63874-0924-06
 ;;9002226.02101,"762,63874-0924-08 ",.01)
 ;;63874-0924-08
 ;;9002226.02101,"762,63874-0924-08 ",.02)
 ;;63874-0924-08
 ;;9002226.02101,"762,63874-0924-10 ",.01)
 ;;63874-0924-10
 ;;9002226.02101,"762,63874-0924-10 ",.02)
 ;;63874-0924-10
 ;;9002226.02101,"762,63874-0924-20 ",.01)
 ;;63874-0924-20
 ;;9002226.02101,"762,63874-0924-20 ",.02)
 ;;63874-0924-20
 ;;9002226.02101,"762,63874-0924-30 ",.01)
 ;;63874-0924-30
 ;;9002226.02101,"762,63874-0924-30 ",.02)
 ;;63874-0924-30
 ;;9002226.02101,"762,63874-0924-40 ",.01)
 ;;63874-0924-40
 ;;9002226.02101,"762,63874-0924-40 ",.02)
 ;;63874-0924-40
 ;;9002226.02101,"762,63874-0924-60 ",.01)
 ;;63874-0924-60
 ;;9002226.02101,"762,63874-0924-60 ",.02)
 ;;63874-0924-60
 ;;9002226.02101,"762,63874-0924-90 ",.01)
 ;;63874-0924-90
 ;;9002226.02101,"762,63874-0924-90 ",.02)
 ;;63874-0924-90
 ;;9002226.02101,"762,63874-1070-01 ",.01)
 ;;63874-1070-01
 ;;9002226.02101,"762,63874-1070-01 ",.02)
 ;;63874-1070-01
 ;;9002226.02101,"762,63874-1246-00 ",.01)
 ;;63874-1246-00
 ;;9002226.02101,"762,63874-1246-00 ",.02)
 ;;63874-1246-00
 ;;9002226.02101,"762,63874-1246-01 ",.01)
 ;;63874-1246-01
 ;;9002226.02101,"762,63874-1246-01 ",.02)
 ;;63874-1246-01
 ;;9002226.02101,"762,63874-1246-02 ",.01)
 ;;63874-1246-02
 ;;9002226.02101,"762,63874-1246-02 ",.02)
 ;;63874-1246-02
 ;;9002226.02101,"762,63874-1246-03 ",.01)
 ;;63874-1246-03
 ;;9002226.02101,"762,63874-1246-03 ",.02)
 ;;63874-1246-03
 ;;9002226.02101,"762,63874-1246-06 ",.01)
 ;;63874-1246-06
 ;;9002226.02101,"762,63874-1246-06 ",.02)
 ;;63874-1246-06
 ;;9002226.02101,"762,63874-1247-01 ",.01)
 ;;63874-1247-01
 ;;9002226.02101,"762,63874-1247-01 ",.02)
 ;;63874-1247-01
 ;;9002226.02101,"762,63874-1247-02 ",.01)
 ;;63874-1247-02
 ;;9002226.02101,"762,63874-1247-02 ",.02)
 ;;63874-1247-02
 ;;9002226.02101,"762,63874-1247-03 ",.01)
 ;;63874-1247-03
 ;;9002226.02101,"762,63874-1247-03 ",.02)
 ;;63874-1247-03
 ;;9002226.02101,"762,63874-1247-06 ",.01)
 ;;63874-1247-06
 ;;9002226.02101,"762,63874-1247-06 ",.02)
 ;;63874-1247-06
 ;;9002226.02101,"762,63874-1247-08 ",.01)
 ;;63874-1247-08
 ;;9002226.02101,"762,63874-1247-08 ",.02)
 ;;63874-1247-08
 ;;9002226.02101,"762,63874-1247-09 ",.01)
 ;;63874-1247-09
 ;;9002226.02101,"762,63874-1247-09 ",.02)
 ;;63874-1247-09
 ;;9002226.02101,"762,64679-0714-01 ",.01)
 ;;64679-0714-01
 ;;9002226.02101,"762,64679-0714-01 ",.02)
 ;;64679-0714-01
 ;;9002226.02101,"762,64679-0714-04 ",.01)
 ;;64679-0714-04
 ;;9002226.02101,"762,64679-0714-04 ",.02)
 ;;64679-0714-04
 ;;9002226.02101,"762,64679-0715-01 ",.01)
 ;;64679-0715-01
 ;;9002226.02101,"762,64679-0715-01 ",.02)
 ;;64679-0715-01
 ;;9002226.02101,"762,64679-0715-04 ",.01)
 ;;64679-0715-04
 ;;9002226.02101,"762,64679-0715-04 ",.02)
 ;;64679-0715-04
 ;;9002226.02101,"762,64720-0322-10 ",.01)
 ;;64720-0322-10
 ;;9002226.02101,"762,64720-0322-10 ",.02)
 ;;64720-0322-10
 ;;9002226.02101,"762,64720-0323-10 ",.01)
 ;;64720-0323-10
 ;;9002226.02101,"762,64720-0323-10 ",.02)
 ;;64720-0323-10
 ;;9002226.02101,"762,65862-0159-01 ",.01)
 ;;65862-0159-01
 ;;9002226.02101,"762,65862-0159-01 ",.02)
 ;;65862-0159-01
 ;;9002226.02101,"762,65862-0159-05 ",.01)
 ;;65862-0159-05
 ;;9002226.02101,"762,65862-0159-05 ",.02)
 ;;65862-0159-05
 ;;9002226.02101,"762,65862-0160-01 ",.01)
 ;;65862-0160-01
 ;;9002226.02101,"762,65862-0160-01 ",.02)
 ;;65862-0160-01
 ;;9002226.02101,"762,65862-0160-05 ",.01)
 ;;65862-0160-05
 ;;9002226.02101,"762,65862-0160-05 ",.02)
 ;;65862-0160-05
 ;;9002226.02101,"762,65862-0214-01 ",.01)
 ;;65862-0214-01
 ;;9002226.02101,"762,65862-0214-01 ",.02)
 ;;65862-0214-01
 ;;9002226.02101,"762,65862-0215-01 ",.01)
 ;;65862-0215-01
 ;;9002226.02101,"762,65862-0215-01 ",.02)
 ;;65862-0215-01
 ;;9002226.02101,"762,66116-0176-20 ",.01)
 ;;66116-0176-20
 ;;9002226.02101,"762,66116-0176-20 ",.02)
 ;;66116-0176-20
 ;;9002226.02101,"762,66267-0016-10 ",.01)
 ;;66267-0016-10
 ;;9002226.02101,"762,66267-0016-10 ",.02)
 ;;66267-0016-10
 ;;9002226.02101,"762,66267-0016-12 ",.01)
 ;;66267-0016-12
 ;;9002226.02101,"762,66267-0016-12 ",.02)
 ;;66267-0016-12
 ;;9002226.02101,"762,66267-0016-20 ",.01)
 ;;66267-0016-20
 ;;9002226.02101,"762,66267-0016-20 ",.02)
 ;;66267-0016-20
 ;;9002226.02101,"762,66267-0016-28 ",.01)
 ;;66267-0016-28
 ;;9002226.02101,"762,66267-0016-28 ",.02)
 ;;66267-0016-28
 ;;9002226.02101,"762,66267-0016-30 ",.01)
 ;;66267-0016-30
 ;;9002226.02101,"762,66267-0016-30 ",.02)
 ;;66267-0016-30
 ;;9002226.02101,"762,66267-0016-60 ",.01)
 ;;66267-0016-60
 ;;9002226.02101,"762,66267-0016-60 ",.02)
 ;;66267-0016-60
 ;;9002226.02101,"762,66267-0017-10 ",.01)
 ;;66267-0017-10
 ;;9002226.02101,"762,66267-0017-10 ",.02)
 ;;66267-0017-10
 ;;9002226.02101,"762,66267-0017-30 ",.01)
 ;;66267-0017-30
 ;;9002226.02101,"762,66267-0017-30 ",.02)
 ;;66267-0017-30
 ;;9002226.02101,"762,66267-0723-30 ",.01)
 ;;66267-0723-30
 ;;9002226.02101,"762,66267-0723-30 ",.02)
 ;;66267-0723-30
 ;;9002226.02101,"762,66336-0056-30 ",.01)
 ;;66336-0056-30
 ;;9002226.02101,"762,66336-0056-30 ",.02)
 ;;66336-0056-30
 ;;9002226.02101,"762,66336-0056-60 ",.01)
 ;;66336-0056-60
 ;;9002226.02101,"762,66336-0056-60 ",.02)
 ;;66336-0056-60
 ;;9002226.02101,"762,66336-0102-30 ",.01)
 ;;66336-0102-30
 ;;9002226.02101,"762,66336-0102-30 ",.02)
 ;;66336-0102-30
 ;;9002226.02101,"762,66336-0460-03 ",.01)
 ;;66336-0460-03
 ;;9002226.02101,"762,66336-0460-03 ",.02)
 ;;66336-0460-03
 ;;9002226.02101,"762,66336-0460-10 ",.01)
 ;;66336-0460-10
 ;;9002226.02101,"762,66336-0460-10 ",.02)
 ;;66336-0460-10
 ;;9002226.02101,"762,66336-0460-20 ",.01)
 ;;66336-0460-20
 ;;9002226.02101,"762,66336-0460-20 ",.02)
 ;;66336-0460-20
 ;;9002226.02101,"762,66336-0460-30 ",.01)
 ;;66336-0460-30
 ;;9002226.02101,"762,66336-0460-30 ",.02)
 ;;66336-0460-30
 ;;9002226.02101,"762,66336-0460-60 ",.01)
 ;;66336-0460-60
 ;;9002226.02101,"762,66336-0460-60 ",.02)
 ;;66336-0460-60
 ;;9002226.02101,"762,66336-0718-02 ",.01)
 ;;66336-0718-02
 ;;9002226.02101,"762,66336-0718-02 ",.02)
 ;;66336-0718-02
 ;;9002226.02101,"762,66336-0718-10 ",.01)
 ;;66336-0718-10
 ;;9002226.02101,"762,66336-0718-10 ",.02)
 ;;66336-0718-10
 ;;9002226.02101,"762,66336-0718-15 ",.01)
 ;;66336-0718-15
 ;;9002226.02101,"762,66336-0718-15 ",.02)
 ;;66336-0718-15
 ;;9002226.02101,"762,66336-0718-30 ",.01)
 ;;66336-0718-30
 ;;9002226.02101,"762,66336-0718-30 ",.02)
 ;;66336-0718-30
 ;;9002226.02101,"762,66336-0718-60 ",.01)
 ;;66336-0718-60
 ;;9002226.02101,"762,66336-0718-60 ",.02)
 ;;66336-0718-60
 ;;9002226.02101,"762,66336-0718-90 ",.01)
 ;;66336-0718-90
 ;;9002226.02101,"762,66336-0718-90 ",.02)
 ;;66336-0718-90
 ;;9002226.02101,"762,66336-0791-30 ",.01)
 ;;66336-0791-30
 ;;9002226.02101,"762,66336-0791-30 ",.02)
 ;;66336-0791-30
 ;;9002226.02101,"762,66336-0949-30 ",.01)
 ;;66336-0949-30
 ;;9002226.02101,"762,66336-0949-30 ",.02)
 ;;66336-0949-30
 ;;9002226.02101,"762,66993-0715-02 ",.01)
 ;;66993-0715-02
 ;;9002226.02101,"762,66993-0715-02 ",.02)
 ;;66993-0715-02
 ;;9002226.02101,"762,66993-0715-04 ",.01)
 ;;66993-0715-04
 ;;9002226.02101,"762,66993-0715-04 ",.02)
 ;;66993-0715-04
 ;;9002226.02101,"762,66993-0716-02 ",.01)
 ;;66993-0716-02
 ;;9002226.02101,"762,66993-0716-02 ",.02)
 ;;66993-0716-02
 ;;9002226.02101,"762,66993-0716-04 ",.01)
 ;;66993-0716-04
 ;;9002226.02101,"762,66993-0716-04 ",.02)
 ;;66993-0716-04
 ;;9002226.02101,"762,67253-0950-10 ",.01)
 ;;67253-0950-10
 ;;9002226.02101,"762,67253-0950-10 ",.02)
 ;;67253-0950-10
 ;;9002226.02101,"762,67253-0951-10 ",.01)
 ;;67253-0951-10
 ;;9002226.02101,"762,67253-0951-10 ",.02)
 ;;67253-0951-10