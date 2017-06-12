BGP61F51 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1733,65862-0548-99 ",.02)
 ;;65862-0548-99
 ;;9002226.02101,"1733,65862-0549-90 ",.01)
 ;;65862-0549-90
 ;;9002226.02101,"1733,65862-0549-90 ",.02)
 ;;65862-0549-90
 ;;9002226.02101,"1733,65862-0549-99 ",.01)
 ;;65862-0549-99
 ;;9002226.02101,"1733,65862-0549-99 ",.02)
 ;;65862-0549-99
 ;;9002226.02101,"1733,65862-0550-05 ",.01)
 ;;65862-0550-05
 ;;9002226.02101,"1733,65862-0550-05 ",.02)
 ;;65862-0550-05
 ;;9002226.02101,"1733,65862-0550-90 ",.01)
 ;;65862-0550-90
 ;;9002226.02101,"1733,65862-0550-90 ",.02)
 ;;65862-0550-90
 ;;9002226.02101,"1733,65862-0551-05 ",.01)
 ;;65862-0551-05
 ;;9002226.02101,"1733,65862-0551-05 ",.02)
 ;;65862-0551-05
 ;;9002226.02101,"1733,65862-0551-90 ",.01)
 ;;65862-0551-90
 ;;9002226.02101,"1733,65862-0551-90 ",.02)
 ;;65862-0551-90
 ;;9002226.02101,"1733,65862-0570-30 ",.01)
 ;;65862-0570-30
 ;;9002226.02101,"1733,65862-0570-30 ",.02)
 ;;65862-0570-30
 ;;9002226.02101,"1733,65862-0571-90 ",.01)
 ;;65862-0571-90
 ;;9002226.02101,"1733,65862-0571-90 ",.02)
 ;;65862-0571-90
 ;;9002226.02101,"1733,65862-0572-90 ",.01)
 ;;65862-0572-90
 ;;9002226.02101,"1733,65862-0572-90 ",.02)
 ;;65862-0572-90
 ;;9002226.02101,"1733,65862-0573-90 ",.01)
 ;;65862-0573-90
 ;;9002226.02101,"1733,65862-0573-90 ",.02)
 ;;65862-0573-90
 ;;9002226.02101,"1733,65862-0582-01 ",.01)
 ;;65862-0582-01
 ;;9002226.02101,"1733,65862-0582-01 ",.02)
 ;;65862-0582-01
 ;;9002226.02101,"1733,65862-0582-05 ",.01)
 ;;65862-0582-05
 ;;9002226.02101,"1733,65862-0582-05 ",.02)
 ;;65862-0582-05
 ;;9002226.02101,"1733,65862-0583-01 ",.01)
 ;;65862-0583-01
 ;;9002226.02101,"1733,65862-0583-01 ",.02)
 ;;65862-0583-01
 ;;9002226.02101,"1733,65862-0583-05 ",.01)
 ;;65862-0583-05
 ;;9002226.02101,"1733,65862-0583-05 ",.02)
 ;;65862-0583-05
 ;;9002226.02101,"1733,65862-0584-01 ",.01)
 ;;65862-0584-01
 ;;9002226.02101,"1733,65862-0584-01 ",.02)
 ;;65862-0584-01
 ;;9002226.02101,"1733,65862-0584-05 ",.01)
 ;;65862-0584-05
 ;;9002226.02101,"1733,65862-0584-05 ",.02)
 ;;65862-0584-05
 ;;9002226.02101,"1733,65862-0585-01 ",.01)
 ;;65862-0585-01
 ;;9002226.02101,"1733,65862-0585-01 ",.02)
 ;;65862-0585-01
 ;;9002226.02101,"1733,65862-0585-05 ",.01)
 ;;65862-0585-05
 ;;9002226.02101,"1733,65862-0585-05 ",.02)
 ;;65862-0585-05
 ;;9002226.02101,"1733,65862-0586-01 ",.01)
 ;;65862-0586-01
 ;;9002226.02101,"1733,65862-0586-01 ",.02)
 ;;65862-0586-01
 ;;9002226.02101,"1733,65862-0586-05 ",.01)
 ;;65862-0586-05
 ;;9002226.02101,"1733,65862-0586-05 ",.02)
 ;;65862-0586-05
 ;;9002226.02101,"1733,65862-0587-01 ",.01)
 ;;65862-0587-01
 ;;9002226.02101,"1733,65862-0587-01 ",.02)
 ;;65862-0587-01
 ;;9002226.02101,"1733,65862-0587-05 ",.01)
 ;;65862-0587-05
 ;;9002226.02101,"1733,65862-0587-05 ",.02)
 ;;65862-0587-05
 ;;9002226.02101,"1733,65862-0617-90 ",.01)
 ;;65862-0617-90
 ;;9002226.02101,"1733,65862-0617-90 ",.02)
 ;;65862-0617-90
 ;;9002226.02101,"1733,65862-0618-90 ",.01)
 ;;65862-0618-90
 ;;9002226.02101,"1733,65862-0618-90 ",.02)
 ;;65862-0618-90
 ;;9002226.02101,"1733,65862-0619-90 ",.01)
 ;;65862-0619-90
 ;;9002226.02101,"1733,65862-0619-90 ",.02)
 ;;65862-0619-90
 ;;9002226.02101,"1733,65862-0620-90 ",.01)
 ;;65862-0620-90
 ;;9002226.02101,"1733,65862-0620-90 ",.02)
 ;;65862-0620-90
 ;;9002226.02101,"1733,65862-0637-30 ",.01)
 ;;65862-0637-30
 ;;9002226.02101,"1733,65862-0637-30 ",.02)
 ;;65862-0637-30
 ;;9002226.02101,"1733,65862-0637-90 ",.01)
 ;;65862-0637-90
 ;;9002226.02101,"1733,65862-0637-90 ",.02)
 ;;65862-0637-90
 ;;9002226.02101,"1733,65862-0638-05 ",.01)
 ;;65862-0638-05
 ;;9002226.02101,"1733,65862-0638-05 ",.02)
 ;;65862-0638-05
 ;;9002226.02101,"1733,65862-0638-30 ",.01)
 ;;65862-0638-30
 ;;9002226.02101,"1733,65862-0638-30 ",.02)
 ;;65862-0638-30
 ;;9002226.02101,"1733,65862-0638-90 ",.01)
 ;;65862-0638-90
 ;;9002226.02101,"1733,65862-0638-90 ",.02)
 ;;65862-0638-90
 ;;9002226.02101,"1733,65862-0639-05 ",.01)
 ;;65862-0639-05
 ;;9002226.02101,"1733,65862-0639-05 ",.02)
 ;;65862-0639-05
 ;;9002226.02101,"1733,65862-0639-30 ",.01)
 ;;65862-0639-30
 ;;9002226.02101,"1733,65862-0639-30 ",.02)
 ;;65862-0639-30
 ;;9002226.02101,"1733,65862-0639-90 ",.01)
 ;;65862-0639-90
 ;;9002226.02101,"1733,65862-0639-90 ",.02)
 ;;65862-0639-90
 ;;9002226.02101,"1733,66105-0503-01 ",.01)
 ;;66105-0503-01
 ;;9002226.02101,"1733,66105-0503-01 ",.02)
 ;;66105-0503-01
 ;;9002226.02101,"1733,66105-0503-03 ",.01)
 ;;66105-0503-03
 ;;9002226.02101,"1733,66105-0503-03 ",.02)
 ;;66105-0503-03
 ;;9002226.02101,"1733,66105-0503-06 ",.01)
 ;;66105-0503-06
 ;;9002226.02101,"1733,66105-0503-06 ",.02)
 ;;66105-0503-06
 ;;9002226.02101,"1733,66105-0503-09 ",.01)
 ;;66105-0503-09
 ;;9002226.02101,"1733,66105-0503-09 ",.02)
 ;;66105-0503-09
 ;;9002226.02101,"1733,66105-0503-15 ",.01)
 ;;66105-0503-15
 ;;9002226.02101,"1733,66105-0503-15 ",.02)
 ;;66105-0503-15
 ;;9002226.02101,"1733,66105-0504-01 ",.01)
 ;;66105-0504-01
 ;;9002226.02101,"1733,66105-0504-01 ",.02)
 ;;66105-0504-01
 ;;9002226.02101,"1733,66105-0504-03 ",.01)
 ;;66105-0504-03
 ;;9002226.02101,"1733,66105-0504-03 ",.02)
 ;;66105-0504-03
 ;;9002226.02101,"1733,66105-0504-06 ",.01)
 ;;66105-0504-06
 ;;9002226.02101,"1733,66105-0504-06 ",.02)
 ;;66105-0504-06
 ;;9002226.02101,"1733,66105-0504-09 ",.01)
 ;;66105-0504-09
 ;;9002226.02101,"1733,66105-0504-09 ",.02)
 ;;66105-0504-09
 ;;9002226.02101,"1733,66105-0504-15 ",.01)
 ;;66105-0504-15
 ;;9002226.02101,"1733,66105-0504-15 ",.02)
 ;;66105-0504-15
 ;;9002226.02101,"1733,66105-0545-01 ",.01)
 ;;66105-0545-01
 ;;9002226.02101,"1733,66105-0545-01 ",.02)
 ;;66105-0545-01
 ;;9002226.02101,"1733,66105-0545-03 ",.01)
 ;;66105-0545-03
 ;;9002226.02101,"1733,66105-0545-03 ",.02)
 ;;66105-0545-03
 ;;9002226.02101,"1733,66105-0545-06 ",.01)
 ;;66105-0545-06
 ;;9002226.02101,"1733,66105-0545-06 ",.02)
 ;;66105-0545-06
 ;;9002226.02101,"1733,66105-0545-09 ",.01)
 ;;66105-0545-09
 ;;9002226.02101,"1733,66105-0545-09 ",.02)
 ;;66105-0545-09
 ;;9002226.02101,"1733,66105-0545-10 ",.01)
 ;;66105-0545-10
 ;;9002226.02101,"1733,66105-0545-10 ",.02)
 ;;66105-0545-10
 ;;9002226.02101,"1733,66105-0553-03 ",.01)
 ;;66105-0553-03
 ;;9002226.02101,"1733,66105-0553-03 ",.02)
 ;;66105-0553-03
 ;;9002226.02101,"1733,66105-0663-03 ",.01)
 ;;66105-0663-03
 ;;9002226.02101,"1733,66105-0663-03 ",.02)
 ;;66105-0663-03
 ;;9002226.02101,"1733,66105-0669-03 ",.01)
 ;;66105-0669-03
 ;;9002226.02101,"1733,66105-0669-03 ",.02)
 ;;66105-0669-03
 ;;9002226.02101,"1733,66105-0842-03 ",.01)
 ;;66105-0842-03
 ;;9002226.02101,"1733,66105-0842-03 ",.02)
 ;;66105-0842-03
 ;;9002226.02101,"1733,66105-0842-06 ",.01)
 ;;66105-0842-06
 ;;9002226.02101,"1733,66105-0842-06 ",.02)
 ;;66105-0842-06
 ;;9002226.02101,"1733,66105-0842-09 ",.01)
 ;;66105-0842-09
 ;;9002226.02101,"1733,66105-0842-09 ",.02)
 ;;66105-0842-09
 ;;9002226.02101,"1733,66105-0842-10 ",.01)
 ;;66105-0842-10
 ;;9002226.02101,"1733,66105-0842-10 ",.02)
 ;;66105-0842-10
 ;;9002226.02101,"1733,66105-0842-28 ",.01)
 ;;66105-0842-28
 ;;9002226.02101,"1733,66105-0842-28 ",.02)
 ;;66105-0842-28
 ;;9002226.02101,"1733,66116-0237-30 ",.01)
 ;;66116-0237-30
 ;;9002226.02101,"1733,66116-0237-30 ",.02)
 ;;66116-0237-30
 ;;9002226.02101,"1733,66116-0279-30 ",.01)
 ;;66116-0279-30
 ;;9002226.02101,"1733,66116-0279-30 ",.02)
 ;;66116-0279-30
 ;;9002226.02101,"1733,66116-0435-30 ",.01)
 ;;66116-0435-30
 ;;9002226.02101,"1733,66116-0435-30 ",.02)
 ;;66116-0435-30
 ;;9002226.02101,"1733,66116-0436-30 ",.01)
 ;;66116-0436-30
 ;;9002226.02101,"1733,66116-0436-30 ",.02)
 ;;66116-0436-30
 ;;9002226.02101,"1733,66267-0253-30 ",.01)
 ;;66267-0253-30
 ;;9002226.02101,"1733,66267-0253-30 ",.02)
 ;;66267-0253-30
 ;;9002226.02101,"1733,66267-0323-30 ",.01)
 ;;66267-0323-30
 ;;9002226.02101,"1733,66267-0323-30 ",.02)
 ;;66267-0323-30
 ;;9002226.02101,"1733,66267-0323-60 ",.01)
 ;;66267-0323-60
 ;;9002226.02101,"1733,66267-0323-60 ",.02)
 ;;66267-0323-60
 ;;9002226.02101,"1733,66267-0323-90 ",.01)
 ;;66267-0323-90
 ;;9002226.02101,"1733,66267-0323-90 ",.02)
 ;;66267-0323-90
 ;;9002226.02101,"1733,66267-0323-91 ",.01)
 ;;66267-0323-91
 ;;9002226.02101,"1733,66267-0323-91 ",.02)
 ;;66267-0323-91
 ;;9002226.02101,"1733,66267-0380-30 ",.01)
 ;;66267-0380-30
 ;;9002226.02101,"1733,66267-0380-30 ",.02)
 ;;66267-0380-30
 ;;9002226.02101,"1733,66267-0380-60 ",.01)
 ;;66267-0380-60
 ;;9002226.02101,"1733,66267-0380-60 ",.02)
 ;;66267-0380-60
 ;;9002226.02101,"1733,66267-0380-90 ",.01)
 ;;66267-0380-90
 ;;9002226.02101,"1733,66267-0380-90 ",.02)
 ;;66267-0380-90
 ;;9002226.02101,"1733,66267-0380-91 ",.01)
 ;;66267-0380-91
 ;;9002226.02101,"1733,66267-0380-91 ",.02)
 ;;66267-0380-91
 ;;9002226.02101,"1733,66267-0413-30 ",.01)
 ;;66267-0413-30
 ;;9002226.02101,"1733,66267-0413-30 ",.02)
 ;;66267-0413-30
 ;;9002226.02101,"1733,66267-0413-60 ",.01)
 ;;66267-0413-60
 ;;9002226.02101,"1733,66267-0413-60 ",.02)
 ;;66267-0413-60
 ;;9002226.02101,"1733,66267-0413-90 ",.01)
 ;;66267-0413-90
 ;;9002226.02101,"1733,66267-0413-90 ",.02)
 ;;66267-0413-90
 ;;9002226.02101,"1733,66267-0413-92 ",.01)
 ;;66267-0413-92
 ;;9002226.02101,"1733,66267-0413-92 ",.02)
 ;;66267-0413-92
 ;;9002226.02101,"1733,66267-0523-30 ",.01)
 ;;66267-0523-30
 ;;9002226.02101,"1733,66267-0523-30 ",.02)
 ;;66267-0523-30
 ;;9002226.02101,"1733,66267-0523-60 ",.01)
 ;;66267-0523-60
 ;;9002226.02101,"1733,66267-0523-60 ",.02)
 ;;66267-0523-60
 ;;9002226.02101,"1733,66267-0570-30 ",.01)
 ;;66267-0570-30
 ;;9002226.02101,"1733,66267-0570-30 ",.02)
 ;;66267-0570-30
 ;;9002226.02101,"1733,66267-0577-30 ",.01)
 ;;66267-0577-30
 ;;9002226.02101,"1733,66267-0577-30 ",.02)
 ;;66267-0577-30
 ;;9002226.02101,"1733,66267-0583-30 ",.01)
 ;;66267-0583-30
 ;;9002226.02101,"1733,66267-0583-30 ",.02)
 ;;66267-0583-30
 ;;9002226.02101,"1733,66267-0751-30 ",.01)
 ;;66267-0751-30
 ;;9002226.02101,"1733,66267-0751-30 ",.02)
 ;;66267-0751-30
 ;;9002226.02101,"1733,66267-0751-90 ",.01)
 ;;66267-0751-90
 ;;9002226.02101,"1733,66267-0751-90 ",.02)
 ;;66267-0751-90
 ;;9002226.02101,"1733,66267-0752-30 ",.01)
 ;;66267-0752-30
 ;;9002226.02101,"1733,66267-0752-30 ",.02)
 ;;66267-0752-30
 ;;9002226.02101,"1733,66267-0752-90 ",.01)
 ;;66267-0752-90
 ;;9002226.02101,"1733,66267-0752-90 ",.02)
 ;;66267-0752-90
 ;;9002226.02101,"1733,66267-1009-00 ",.01)
 ;;66267-1009-00
 ;;9002226.02101,"1733,66267-1009-00 ",.02)
 ;;66267-1009-00
 ;;9002226.02101,"1733,66336-0124-30 ",.01)
 ;;66336-0124-30
 ;;9002226.02101,"1733,66336-0124-30 ",.02)
 ;;66336-0124-30
 ;;9002226.02101,"1733,66336-0124-90 ",.01)
 ;;66336-0124-90
 ;;9002226.02101,"1733,66336-0124-90 ",.02)
 ;;66336-0124-90
 ;;9002226.02101,"1733,66336-0169-30 ",.01)
 ;;66336-0169-30
 ;;9002226.02101,"1733,66336-0169-30 ",.02)
 ;;66336-0169-30
 ;;9002226.02101,"1733,66336-0232-30 ",.01)
 ;;66336-0232-30
 ;;9002226.02101,"1733,66336-0232-30 ",.02)
 ;;66336-0232-30
 ;;9002226.02101,"1733,66336-0387-30 ",.01)
 ;;66336-0387-30
 ;;9002226.02101,"1733,66336-0387-30 ",.02)
 ;;66336-0387-30
 ;;9002226.02101,"1733,66336-0387-90 ",.01)
 ;;66336-0387-90
 ;;9002226.02101,"1733,66336-0387-90 ",.02)
 ;;66336-0387-90
 ;;9002226.02101,"1733,66336-0389-30 ",.01)
 ;;66336-0389-30
 ;;9002226.02101,"1733,66336-0389-30 ",.02)
 ;;66336-0389-30
 ;;9002226.02101,"1733,66336-0389-60 ",.01)
 ;;66336-0389-60
 ;;9002226.02101,"1733,66336-0389-60 ",.02)
 ;;66336-0389-60
 ;;9002226.02101,"1733,66336-0389-90 ",.01)
 ;;66336-0389-90
 ;;9002226.02101,"1733,66336-0389-90 ",.02)
 ;;66336-0389-90
 ;;9002226.02101,"1733,66336-0391-30 ",.01)
 ;;66336-0391-30
 ;;9002226.02101,"1733,66336-0391-30 ",.02)
 ;;66336-0391-30
 ;;9002226.02101,"1733,66336-0391-60 ",.01)
 ;;66336-0391-60
 ;;9002226.02101,"1733,66336-0391-60 ",.02)
 ;;66336-0391-60
 ;;9002226.02101,"1733,66336-0391-90 ",.01)
 ;;66336-0391-90
 ;;9002226.02101,"1733,66336-0391-90 ",.02)
 ;;66336-0391-90
 ;;9002226.02101,"1733,66336-0393-30 ",.01)
 ;;66336-0393-30
 ;;9002226.02101,"1733,66336-0393-30 ",.02)
 ;;66336-0393-30
 ;;9002226.02101,"1733,66336-0393-60 ",.01)
 ;;66336-0393-60
 ;;9002226.02101,"1733,66336-0393-60 ",.02)
 ;;66336-0393-60
 ;;9002226.02101,"1733,66336-0393-90 ",.01)
 ;;66336-0393-90
 ;;9002226.02101,"1733,66336-0393-90 ",.02)
 ;;66336-0393-90
 ;;9002226.02101,"1733,66336-0572-30 ",.01)
 ;;66336-0572-30
 ;;9002226.02101,"1733,66336-0572-30 ",.02)
 ;;66336-0572-30
 ;;9002226.02101,"1733,66336-0572-90 ",.01)
 ;;66336-0572-90
 ;;9002226.02101,"1733,66336-0572-90 ",.02)
 ;;66336-0572-90
 ;;9002226.02101,"1733,66336-0618-60 ",.01)
 ;;66336-0618-60