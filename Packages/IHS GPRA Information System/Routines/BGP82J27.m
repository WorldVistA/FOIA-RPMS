BGP82J27 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1220,63629-1561-04 ",.01)
 ;;63629-1561-04
 ;;9002226.02101,"1220,63629-1561-04 ",.02)
 ;;63629-1561-04
 ;;9002226.02101,"1220,63629-1561-05 ",.01)
 ;;63629-1561-05
 ;;9002226.02101,"1220,63629-1561-05 ",.02)
 ;;63629-1561-05
 ;;9002226.02101,"1220,63629-1565-01 ",.01)
 ;;63629-1565-01
 ;;9002226.02101,"1220,63629-1565-01 ",.02)
 ;;63629-1565-01
 ;;9002226.02101,"1220,63629-1565-02 ",.01)
 ;;63629-1565-02
 ;;9002226.02101,"1220,63629-1565-02 ",.02)
 ;;63629-1565-02
 ;;9002226.02101,"1220,63629-1565-03 ",.01)
 ;;63629-1565-03
 ;;9002226.02101,"1220,63629-1565-03 ",.02)
 ;;63629-1565-03
 ;;9002226.02101,"1220,63629-1566-01 ",.01)
 ;;63629-1566-01
 ;;9002226.02101,"1220,63629-1566-01 ",.02)
 ;;63629-1566-01
 ;;9002226.02101,"1220,63629-1566-02 ",.01)
 ;;63629-1566-02
 ;;9002226.02101,"1220,63629-1566-02 ",.02)
 ;;63629-1566-02
 ;;9002226.02101,"1220,63629-1566-03 ",.01)
 ;;63629-1566-03
 ;;9002226.02101,"1220,63629-1566-03 ",.02)
 ;;63629-1566-03
 ;;9002226.02101,"1220,63629-1566-04 ",.01)
 ;;63629-1566-04
 ;;9002226.02101,"1220,63629-1566-04 ",.02)
 ;;63629-1566-04
 ;;9002226.02101,"1220,63629-1566-05 ",.01)
 ;;63629-1566-05
 ;;9002226.02101,"1220,63629-1566-05 ",.02)
 ;;63629-1566-05
 ;;9002226.02101,"1220,63629-1597-01 ",.01)
 ;;63629-1597-01
 ;;9002226.02101,"1220,63629-1597-01 ",.02)
 ;;63629-1597-01
 ;;9002226.02101,"1220,63629-3052-01 ",.01)
 ;;63629-3052-01
 ;;9002226.02101,"1220,63629-3052-01 ",.02)
 ;;63629-3052-01
 ;;9002226.02101,"1220,63629-3052-02 ",.01)
 ;;63629-3052-02
 ;;9002226.02101,"1220,63629-3052-02 ",.02)
 ;;63629-3052-02
 ;;9002226.02101,"1220,63629-3052-03 ",.01)
 ;;63629-3052-03
 ;;9002226.02101,"1220,63629-3052-03 ",.02)
 ;;63629-3052-03
 ;;9002226.02101,"1220,63629-3564-01 ",.01)
 ;;63629-3564-01
 ;;9002226.02101,"1220,63629-3564-01 ",.02)
 ;;63629-3564-01
 ;;9002226.02101,"1220,63629-3649-01 ",.01)
 ;;63629-3649-01
 ;;9002226.02101,"1220,63629-3649-01 ",.02)
 ;;63629-3649-01
 ;;9002226.02101,"1220,63629-3678-01 ",.01)
 ;;63629-3678-01
 ;;9002226.02101,"1220,63629-3678-01 ",.02)
 ;;63629-3678-01
 ;;9002226.02101,"1220,63629-3750-01 ",.01)
 ;;63629-3750-01
 ;;9002226.02101,"1220,63629-3750-01 ",.02)
 ;;63629-3750-01
 ;;9002226.02101,"1220,63629-4073-01 ",.01)
 ;;63629-4073-01
 ;;9002226.02101,"1220,63629-4073-01 ",.02)
 ;;63629-4073-01
 ;;9002226.02101,"1220,63629-4089-01 ",.01)
 ;;63629-4089-01
 ;;9002226.02101,"1220,63629-4089-01 ",.02)
 ;;63629-4089-01
 ;;9002226.02101,"1220,63629-4337-01 ",.01)
 ;;63629-4337-01
 ;;9002226.02101,"1220,63629-4337-01 ",.02)
 ;;63629-4337-01
 ;;9002226.02101,"1220,63629-4717-01 ",.01)
 ;;63629-4717-01
 ;;9002226.02101,"1220,63629-4717-01 ",.02)
 ;;63629-4717-01
 ;;9002226.02101,"1220,63739-0079-10 ",.01)
 ;;63739-0079-10
 ;;9002226.02101,"1220,63739-0079-10 ",.02)
 ;;63739-0079-10
 ;;9002226.02101,"1220,63739-0080-10 ",.01)
 ;;63739-0080-10
 ;;9002226.02101,"1220,63739-0080-10 ",.02)
 ;;63739-0080-10
 ;;9002226.02101,"1220,63739-0283-10 ",.01)
 ;;63739-0283-10
 ;;9002226.02101,"1220,63739-0283-10 ",.02)
 ;;63739-0283-10
 ;;9002226.02101,"1220,63739-0283-31 ",.01)
 ;;63739-0283-31
 ;;9002226.02101,"1220,63739-0283-31 ",.02)
 ;;63739-0283-31
 ;;9002226.02101,"1220,63739-0284-10 ",.01)
 ;;63739-0284-10
 ;;9002226.02101,"1220,63739-0284-10 ",.02)
 ;;63739-0284-10
 ;;9002226.02101,"1220,63739-0284-31 ",.01)
 ;;63739-0284-31
 ;;9002226.02101,"1220,63739-0284-31 ",.02)
 ;;63739-0284-31
 ;;9002226.02101,"1220,63739-0285-10 ",.01)
 ;;63739-0285-10
 ;;9002226.02101,"1220,63739-0285-10 ",.02)
 ;;63739-0285-10
 ;;9002226.02101,"1220,63739-0285-31 ",.01)
 ;;63739-0285-31
 ;;9002226.02101,"1220,63739-0285-31 ",.02)
 ;;63739-0285-31
 ;;9002226.02101,"1220,63739-0631-10 ",.01)
 ;;63739-0631-10
 ;;9002226.02101,"1220,63739-0631-10 ",.02)
 ;;63739-0631-10
 ;;9002226.02101,"1220,64455-0771-55 ",.01)
 ;;64455-0771-55
 ;;9002226.02101,"1220,64455-0771-55 ",.02)
 ;;64455-0771-55
 ;;9002226.02101,"1220,64455-0796-50 ",.01)
 ;;64455-0796-50
 ;;9002226.02101,"1220,64455-0796-50 ",.02)
 ;;64455-0796-50
 ;;9002226.02101,"1220,64679-0421-01 ",.01)
 ;;64679-0421-01
 ;;9002226.02101,"1220,64679-0421-01 ",.02)
 ;;64679-0421-01
 ;;9002226.02101,"1220,64679-0422-01 ",.01)
 ;;64679-0422-01
 ;;9002226.02101,"1220,64679-0422-01 ",.02)
 ;;64679-0422-01
 ;;9002226.02101,"1220,64679-0422-02 ",.01)
 ;;64679-0422-02
 ;;9002226.02101,"1220,64679-0422-02 ",.02)
 ;;64679-0422-02
 ;;9002226.02101,"1220,64679-0423-01 ",.01)
 ;;64679-0423-01
 ;;9002226.02101,"1220,64679-0423-01 ",.02)
 ;;64679-0423-01
 ;;9002226.02101,"1220,64679-0423-02 ",.01)
 ;;64679-0423-02
 ;;9002226.02101,"1220,64679-0423-02 ",.02)
 ;;64679-0423-02
 ;;9002226.02101,"1220,65084-0412-18 ",.01)
 ;;65084-0412-18
 ;;9002226.02101,"1220,65084-0412-18 ",.02)
 ;;65084-0412-18
 ;;9002226.02101,"1220,65162-0006-09 ",.01)
 ;;65162-0006-09
 ;;9002226.02101,"1220,65162-0006-09 ",.02)
 ;;65162-0006-09
 ;;9002226.02101,"1220,65162-0006-50 ",.01)
 ;;65162-0006-50
 ;;9002226.02101,"1220,65162-0006-50 ",.02)
 ;;65162-0006-50
 ;;9002226.02101,"1220,65162-0007-09 ",.01)
 ;;65162-0007-09
 ;;9002226.02101,"1220,65162-0007-09 ",.02)
 ;;65162-0007-09
 ;;9002226.02101,"1220,65162-0007-50 ",.01)
 ;;65162-0007-50
 ;;9002226.02101,"1220,65162-0007-50 ",.02)
 ;;65162-0007-50
 ;;9002226.02101,"1220,65162-0008-09 ",.01)
 ;;65162-0008-09
 ;;9002226.02101,"1220,65162-0008-09 ",.02)
 ;;65162-0008-09
 ;;9002226.02101,"1220,65162-0008-50 ",.01)
 ;;65162-0008-50
 ;;9002226.02101,"1220,65162-0008-50 ",.02)
 ;;65162-0008-50
 ;;9002226.02101,"1220,65243-0028-09 ",.01)
 ;;65243-0028-09
 ;;9002226.02101,"1220,65243-0028-09 ",.02)
 ;;65243-0028-09
 ;;9002226.02101,"1220,65243-0054-09 ",.01)
 ;;65243-0054-09
 ;;9002226.02101,"1220,65243-0054-09 ",.02)
 ;;65243-0054-09
 ;;9002226.02101,"1220,65243-0111-09 ",.01)
 ;;65243-0111-09
 ;;9002226.02101,"1220,65243-0111-09 ",.02)
 ;;65243-0111-09
 ;;9002226.02101,"1220,65243-0260-09 ",.01)
 ;;65243-0260-09
 ;;9002226.02101,"1220,65243-0260-09 ",.02)
 ;;65243-0260-09
 ;;9002226.02101,"1220,65243-0311-09 ",.01)
 ;;65243-0311-09
 ;;9002226.02101,"1220,65243-0311-09 ",.02)
 ;;65243-0311-09
 ;;9002226.02101,"1220,65243-0312-09 ",.01)
 ;;65243-0312-09
 ;;9002226.02101,"1220,65243-0312-09 ",.02)
 ;;65243-0312-09
 ;;9002226.02101,"1220,65243-0312-18 ",.01)
 ;;65243-0312-18
 ;;9002226.02101,"1220,65243-0312-18 ",.02)
 ;;65243-0312-18
 ;;9002226.02101,"1220,65243-0317-09 ",.01)
 ;;65243-0317-09
 ;;9002226.02101,"1220,65243-0317-09 ",.02)
 ;;65243-0317-09
 ;;9002226.02101,"1220,65243-0318-09 ",.01)
 ;;65243-0318-09
 ;;9002226.02101,"1220,65243-0318-09 ",.02)
 ;;65243-0318-09
 ;;9002226.02101,"1220,65597-0110-30 ",.01)
 ;;65597-0110-30
 ;;9002226.02101,"1220,65597-0110-30 ",.02)
 ;;65597-0110-30
 ;;9002226.02101,"1220,65597-0110-90 ",.01)
 ;;65597-0110-90
 ;;9002226.02101,"1220,65597-0110-90 ",.02)
 ;;65597-0110-90
 ;;9002226.02101,"1220,65597-0111-30 ",.01)
 ;;65597-0111-30
 ;;9002226.02101,"1220,65597-0111-30 ",.02)
 ;;65597-0111-30
 ;;9002226.02101,"1220,65597-0111-90 ",.01)
 ;;65597-0111-90
 ;;9002226.02101,"1220,65597-0111-90 ",.02)
 ;;65597-0111-90
 ;;9002226.02101,"1220,65597-0112-30 ",.01)
 ;;65597-0112-30
 ;;9002226.02101,"1220,65597-0112-30 ",.02)
 ;;65597-0112-30
 ;;9002226.02101,"1220,65597-0112-90 ",.01)
 ;;65597-0112-90
 ;;9002226.02101,"1220,65597-0112-90 ",.02)
 ;;65597-0112-90
 ;;9002226.02101,"1220,65597-0113-30 ",.01)
 ;;65597-0113-30
 ;;9002226.02101,"1220,65597-0113-30 ",.02)
 ;;65597-0113-30
 ;;9002226.02101,"1220,65597-0113-90 ",.01)
 ;;65597-0113-90
 ;;9002226.02101,"1220,65597-0113-90 ",.02)
 ;;65597-0113-90
 ;;9002226.02101,"1220,65597-0114-30 ",.01)
 ;;65597-0114-30
 ;;9002226.02101,"1220,65597-0114-30 ",.02)
 ;;65597-0114-30
 ;;9002226.02101,"1220,65597-0114-90 ",.01)
 ;;65597-0114-90
 ;;9002226.02101,"1220,65597-0114-90 ",.02)
 ;;65597-0114-90
 ;;9002226.02101,"1220,65597-0115-30 ",.01)
 ;;65597-0115-30
 ;;9002226.02101,"1220,65597-0115-30 ",.02)
 ;;65597-0115-30
 ;;9002226.02101,"1220,65597-0115-90 ",.01)
 ;;65597-0115-90
 ;;9002226.02101,"1220,65597-0115-90 ",.02)
 ;;65597-0115-90
 ;;9002226.02101,"1220,65597-0116-30 ",.01)
 ;;65597-0116-30
 ;;9002226.02101,"1220,65597-0116-30 ",.02)
 ;;65597-0116-30
 ;;9002226.02101,"1220,65597-0116-90 ",.01)
 ;;65597-0116-90
 ;;9002226.02101,"1220,65597-0116-90 ",.02)
 ;;65597-0116-90
 ;;9002226.02101,"1220,65597-0117-30 ",.01)
 ;;65597-0117-30
 ;;9002226.02101,"1220,65597-0117-30 ",.02)
 ;;65597-0117-30
 ;;9002226.02101,"1220,65597-0117-90 ",.01)
 ;;65597-0117-90
 ;;9002226.02101,"1220,65597-0117-90 ",.02)
 ;;65597-0117-90
 ;;9002226.02101,"1220,65597-0118-30 ",.01)
 ;;65597-0118-30
 ;;9002226.02101,"1220,65597-0118-30 ",.02)
 ;;65597-0118-30
 ;;9002226.02101,"1220,65597-0118-90 ",.01)
 ;;65597-0118-90
 ;;9002226.02101,"1220,65597-0118-90 ",.02)
 ;;65597-0118-90
 ;;9002226.02101,"1220,65862-0101-05 ",.01)
 ;;65862-0101-05
 ;;9002226.02101,"1220,65862-0101-05 ",.02)
 ;;65862-0101-05
 ;;9002226.02101,"1220,65862-0101-90 ",.01)
 ;;65862-0101-90
 ;;9002226.02101,"1220,65862-0101-90 ",.02)
 ;;65862-0101-90
 ;;9002226.02101,"1220,65862-0101-99 ",.01)
 ;;65862-0101-99
 ;;9002226.02101,"1220,65862-0101-99 ",.02)
 ;;65862-0101-99
 ;;9002226.02101,"1220,65862-0102-05 ",.01)
 ;;65862-0102-05
 ;;9002226.02101,"1220,65862-0102-05 ",.02)
 ;;65862-0102-05
 ;;9002226.02101,"1220,65862-0102-90 ",.01)
 ;;65862-0102-90
 ;;9002226.02101,"1220,65862-0102-90 ",.02)
 ;;65862-0102-90
 ;;9002226.02101,"1220,65862-0102-99 ",.01)
 ;;65862-0102-99
 ;;9002226.02101,"1220,65862-0102-99 ",.02)
 ;;65862-0102-99
 ;;9002226.02101,"1220,65862-0103-05 ",.01)
 ;;65862-0103-05
 ;;9002226.02101,"1220,65862-0103-05 ",.02)
 ;;65862-0103-05
 ;;9002226.02101,"1220,65862-0103-90 ",.01)
 ;;65862-0103-90
 ;;9002226.02101,"1220,65862-0103-90 ",.02)
 ;;65862-0103-90
 ;;9002226.02101,"1220,65862-0103-99 ",.01)
 ;;65862-0103-99
 ;;9002226.02101,"1220,65862-0103-99 ",.02)
 ;;65862-0103-99
 ;;9002226.02101,"1220,65862-0582-01 ",.01)
 ;;65862-0582-01
 ;;9002226.02101,"1220,65862-0582-01 ",.02)
 ;;65862-0582-01
 ;;9002226.02101,"1220,65862-0582-05 ",.01)
 ;;65862-0582-05
 ;;9002226.02101,"1220,65862-0582-05 ",.02)
 ;;65862-0582-05
 ;;9002226.02101,"1220,65862-0583-01 ",.01)
 ;;65862-0583-01
 ;;9002226.02101,"1220,65862-0583-01 ",.02)
 ;;65862-0583-01
 ;;9002226.02101,"1220,65862-0583-05 ",.01)
 ;;65862-0583-05
 ;;9002226.02101,"1220,65862-0583-05 ",.02)
 ;;65862-0583-05
 ;;9002226.02101,"1220,65862-0584-01 ",.01)
 ;;65862-0584-01
 ;;9002226.02101,"1220,65862-0584-01 ",.02)
 ;;65862-0584-01
 ;;9002226.02101,"1220,65862-0584-05 ",.01)
 ;;65862-0584-05
 ;;9002226.02101,"1220,65862-0584-05 ",.02)
 ;;65862-0584-05
 ;;9002226.02101,"1220,65862-0585-01 ",.01)
 ;;65862-0585-01
 ;;9002226.02101,"1220,65862-0585-01 ",.02)
 ;;65862-0585-01
 ;;9002226.02101,"1220,65862-0585-05 ",.01)
 ;;65862-0585-05
 ;;9002226.02101,"1220,65862-0585-05 ",.02)
 ;;65862-0585-05
 ;;9002226.02101,"1220,65862-0586-01 ",.01)
 ;;65862-0586-01
 ;;9002226.02101,"1220,65862-0586-01 ",.02)
 ;;65862-0586-01
 ;;9002226.02101,"1220,65862-0586-05 ",.01)
 ;;65862-0586-05
 ;;9002226.02101,"1220,65862-0586-05 ",.02)
 ;;65862-0586-05
 ;;9002226.02101,"1220,65862-0587-01 ",.01)
 ;;65862-0587-01
 ;;9002226.02101,"1220,65862-0587-01 ",.02)
 ;;65862-0587-01
 ;;9002226.02101,"1220,65862-0587-05 ",.01)
 ;;65862-0587-05
 ;;9002226.02101,"1220,65862-0587-05 ",.02)
 ;;65862-0587-05
 ;;9002226.02101,"1220,65862-0673-01 ",.01)
 ;;65862-0673-01
 ;;9002226.02101,"1220,65862-0673-01 ",.02)
 ;;65862-0673-01
 ;;9002226.02101,"1220,65862-0673-99 ",.01)
 ;;65862-0673-99