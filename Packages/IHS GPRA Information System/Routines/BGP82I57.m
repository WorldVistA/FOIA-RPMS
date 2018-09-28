BGP82I57 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
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
 ;;9002226.02101,"1733,65862-0737-30 ",.01)
 ;;65862-0737-30
 ;;9002226.02101,"1733,65862-0737-30 ",.02)
 ;;65862-0737-30
 ;;9002226.02101,"1733,65862-0738-30 ",.01)
 ;;65862-0738-30
 ;;9002226.02101,"1733,65862-0738-30 ",.02)
 ;;65862-0738-30
 ;;9002226.02101,"1733,65862-0739-30 ",.01)
 ;;65862-0739-30
 ;;9002226.02101,"1733,65862-0739-30 ",.02)
 ;;65862-0739-30
 ;;9002226.02101,"1733,65862-0740-30 ",.01)
 ;;65862-0740-30
 ;;9002226.02101,"1733,65862-0740-30 ",.02)
 ;;65862-0740-30
 ;;9002226.02101,"1733,65862-0741-30 ",.01)
 ;;65862-0741-30
 ;;9002226.02101,"1733,65862-0741-30 ",.02)
 ;;65862-0741-30
 ;;9002226.02101,"1733,65862-0742-30 ",.01)
 ;;65862-0742-30
 ;;9002226.02101,"1733,65862-0742-30 ",.02)
 ;;65862-0742-30
 ;;9002226.02101,"1733,65862-0742-90 ",.01)
 ;;65862-0742-90
 ;;9002226.02101,"1733,65862-0742-90 ",.02)
 ;;65862-0742-90
 ;;9002226.02101,"1733,65862-0743-30 ",.01)
 ;;65862-0743-30
 ;;9002226.02101,"1733,65862-0743-30 ",.02)
 ;;65862-0743-30
 ;;9002226.02101,"1733,65862-0743-90 ",.01)
 ;;65862-0743-90
 ;;9002226.02101,"1733,65862-0743-90 ",.02)
 ;;65862-0743-90
 ;;9002226.02101,"1733,65862-0779-30 ",.01)
 ;;65862-0779-30
 ;;9002226.02101,"1733,65862-0779-30 ",.02)
 ;;65862-0779-30
 ;;9002226.02101,"1733,65862-0779-90 ",.01)
 ;;65862-0779-90
 ;;9002226.02101,"1733,65862-0779-90 ",.02)
 ;;65862-0779-90
 ;;9002226.02101,"1733,65862-0780-30 ",.01)
 ;;65862-0780-30
 ;;9002226.02101,"1733,65862-0780-30 ",.02)
 ;;65862-0780-30
 ;;9002226.02101,"1733,65862-0780-90 ",.01)
 ;;65862-0780-90
 ;;9002226.02101,"1733,65862-0780-90 ",.02)
 ;;65862-0780-90
 ;;9002226.02101,"1733,65862-0781-30 ",.01)
 ;;65862-0781-30
 ;;9002226.02101,"1733,65862-0781-30 ",.02)
 ;;65862-0781-30
 ;;9002226.02101,"1733,65862-0781-90 ",.01)
 ;;65862-0781-90
 ;;9002226.02101,"1733,65862-0781-90 ",.02)
 ;;65862-0781-90
 ;;9002226.02101,"1733,65862-0854-30 ",.01)
 ;;65862-0854-30
 ;;9002226.02101,"1733,65862-0854-30 ",.02)
 ;;65862-0854-30
 ;;9002226.02101,"1733,65862-0855-30 ",.01)
 ;;65862-0855-30
 ;;9002226.02101,"1733,65862-0855-30 ",.02)
 ;;65862-0855-30
 ;;9002226.02101,"1733,65862-0856-30 ",.01)
 ;;65862-0856-30
 ;;9002226.02101,"1733,65862-0856-30 ",.02)
 ;;65862-0856-30
 ;;9002226.02101,"1733,65862-0857-30 ",.01)
 ;;65862-0857-30
 ;;9002226.02101,"1733,65862-0857-30 ",.02)
 ;;65862-0857-30
 ;;9002226.02101,"1733,65862-0867-03 ",.01)
 ;;65862-0867-03
 ;;9002226.02101,"1733,65862-0867-03 ",.02)
 ;;65862-0867-03
 ;;9002226.02101,"1733,65862-0867-10 ",.01)
 ;;65862-0867-10
 ;;9002226.02101,"1733,65862-0867-10 ",.02)
 ;;65862-0867-10
 ;;9002226.02101,"1733,65862-0868-03 ",.01)
 ;;65862-0868-03
 ;;9002226.02101,"1733,65862-0868-03 ",.02)
 ;;65862-0868-03
 ;;9002226.02101,"1733,65862-0868-10 ",.01)
 ;;65862-0868-10
 ;;9002226.02101,"1733,65862-0868-10 ",.02)
 ;;65862-0868-10
 ;;9002226.02101,"1733,65862-0869-03 ",.01)
 ;;65862-0869-03
 ;;9002226.02101,"1733,65862-0869-03 ",.02)
 ;;65862-0869-03
 ;;9002226.02101,"1733,65862-0869-10 ",.01)
 ;;65862-0869-10
 ;;9002226.02101,"1733,65862-0869-10 ",.02)
 ;;65862-0869-10
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
 ;;9002226.02101,"1733,66336-0393-90 ",.01)
 ;;66336-0393-90
 ;;9002226.02101,"1733,66336-0393-90 ",.02)
 ;;66336-0393-90
 ;;9002226.02101,"1733,66336-0572-90 ",.01)
 ;;66336-0572-90
 ;;9002226.02101,"1733,66336-0572-90 ",.02)
 ;;66336-0572-90
 ;;9002226.02101,"1733,66336-0665-15 ",.01)
 ;;66336-0665-15