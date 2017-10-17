BGP73G63 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,66105-0480-15 ",.02)
 ;;66105-0480-15
 ;;9002226.02101,"869,66105-0481-01 ",.01)
 ;;66105-0481-01
 ;;9002226.02101,"869,66105-0481-01 ",.02)
 ;;66105-0481-01
 ;;9002226.02101,"869,66105-0481-02 ",.01)
 ;;66105-0481-02
 ;;9002226.02101,"869,66105-0481-02 ",.02)
 ;;66105-0481-02
 ;;9002226.02101,"869,66105-0481-03 ",.01)
 ;;66105-0481-03
 ;;9002226.02101,"869,66105-0481-03 ",.02)
 ;;66105-0481-03
 ;;9002226.02101,"869,66105-0481-06 ",.01)
 ;;66105-0481-06
 ;;9002226.02101,"869,66105-0481-06 ",.02)
 ;;66105-0481-06
 ;;9002226.02101,"869,66105-0481-15 ",.01)
 ;;66105-0481-15
 ;;9002226.02101,"869,66105-0481-15 ",.02)
 ;;66105-0481-15
 ;;9002226.02101,"869,66105-0550-03 ",.01)
 ;;66105-0550-03
 ;;9002226.02101,"869,66105-0550-03 ",.02)
 ;;66105-0550-03
 ;;9002226.02101,"869,66105-0564-03 ",.01)
 ;;66105-0564-03
 ;;9002226.02101,"869,66105-0564-03 ",.02)
 ;;66105-0564-03
 ;;9002226.02101,"869,66105-0969-03 ",.01)
 ;;66105-0969-03
 ;;9002226.02101,"869,66105-0969-03 ",.02)
 ;;66105-0969-03
 ;;9002226.02101,"869,66105-0977-03 ",.01)
 ;;66105-0977-03
 ;;9002226.02101,"869,66105-0977-03 ",.02)
 ;;66105-0977-03
 ;;9002226.02101,"869,66267-0018-60 ",.01)
 ;;66267-0018-60
 ;;9002226.02101,"869,66267-0018-60 ",.02)
 ;;66267-0018-60
 ;;9002226.02101,"869,66267-0018-90 ",.01)
 ;;66267-0018-90
 ;;9002226.02101,"869,66267-0018-90 ",.02)
 ;;66267-0018-90
 ;;9002226.02101,"869,66267-0019-90 ",.01)
 ;;66267-0019-90
 ;;9002226.02101,"869,66267-0019-90 ",.02)
 ;;66267-0019-90
 ;;9002226.02101,"869,66267-0488-60 ",.01)
 ;;66267-0488-60
 ;;9002226.02101,"869,66267-0488-60 ",.02)
 ;;66267-0488-60
 ;;9002226.02101,"869,66267-0488-90 ",.01)
 ;;66267-0488-90
 ;;9002226.02101,"869,66267-0488-90 ",.02)
 ;;66267-0488-90
 ;;9002226.02101,"869,66267-0560-90 ",.01)
 ;;66267-0560-90
 ;;9002226.02101,"869,66267-0560-90 ",.02)
 ;;66267-0560-90
 ;;9002226.02101,"869,66267-0576-30 ",.01)
 ;;66267-0576-30
 ;;9002226.02101,"869,66267-0576-30 ",.02)
 ;;66267-0576-30
 ;;9002226.02101,"869,66267-0587-30 ",.01)
 ;;66267-0587-30
 ;;9002226.02101,"869,66267-0587-30 ",.02)
 ;;66267-0587-30
 ;;9002226.02101,"869,66267-0680-30 ",.01)
 ;;66267-0680-30
 ;;9002226.02101,"869,66267-0680-30 ",.02)
 ;;66267-0680-30
 ;;9002226.02101,"869,66336-0004-30 ",.01)
 ;;66336-0004-30
 ;;9002226.02101,"869,66336-0004-30 ",.02)
 ;;66336-0004-30
 ;;9002226.02101,"869,66336-0004-60 ",.01)
 ;;66336-0004-60
 ;;9002226.02101,"869,66336-0004-60 ",.02)
 ;;66336-0004-60
 ;;9002226.02101,"869,66336-0014-30 ",.01)
 ;;66336-0014-30
 ;;9002226.02101,"869,66336-0014-30 ",.02)
 ;;66336-0014-30
 ;;9002226.02101,"869,66336-0014-60 ",.01)
 ;;66336-0014-60
 ;;9002226.02101,"869,66336-0014-60 ",.02)
 ;;66336-0014-60
 ;;9002226.02101,"869,66336-0027-30 ",.01)
 ;;66336-0027-30
 ;;9002226.02101,"869,66336-0027-30 ",.02)
 ;;66336-0027-30
 ;;9002226.02101,"869,66336-0027-60 ",.01)
 ;;66336-0027-60
 ;;9002226.02101,"869,66336-0027-60 ",.02)
 ;;66336-0027-60
 ;;9002226.02101,"869,66336-0224-30 ",.01)
 ;;66336-0224-30
 ;;9002226.02101,"869,66336-0224-30 ",.02)
 ;;66336-0224-30
 ;;9002226.02101,"869,66336-0271-30 ",.01)
 ;;66336-0271-30
 ;;9002226.02101,"869,66336-0271-30 ",.02)
 ;;66336-0271-30
 ;;9002226.02101,"869,66336-0354-30 ",.01)
 ;;66336-0354-30
 ;;9002226.02101,"869,66336-0354-30 ",.02)
 ;;66336-0354-30
 ;;9002226.02101,"869,66336-0354-60 ",.01)
 ;;66336-0354-60
 ;;9002226.02101,"869,66336-0354-60 ",.02)
 ;;66336-0354-60
 ;;9002226.02101,"869,66336-0354-90 ",.01)
 ;;66336-0354-90
 ;;9002226.02101,"869,66336-0354-90 ",.02)
 ;;66336-0354-90
 ;;9002226.02101,"869,66336-0553-30 ",.01)
 ;;66336-0553-30
 ;;9002226.02101,"869,66336-0553-30 ",.02)
 ;;66336-0553-30
 ;;9002226.02101,"869,66336-0620-28 ",.01)
 ;;66336-0620-28
 ;;9002226.02101,"869,66336-0620-28 ",.02)
 ;;66336-0620-28
 ;;9002226.02101,"869,66336-0620-30 ",.01)
 ;;66336-0620-30
 ;;9002226.02101,"869,66336-0620-30 ",.02)
 ;;66336-0620-30
 ;;9002226.02101,"869,66336-0620-60 ",.01)
 ;;66336-0620-60
 ;;9002226.02101,"869,66336-0620-60 ",.02)
 ;;66336-0620-60
 ;;9002226.02101,"869,66336-0621-60 ",.01)
 ;;66336-0621-60
 ;;9002226.02101,"869,66336-0621-60 ",.02)
 ;;66336-0621-60
 ;;9002226.02101,"869,66336-0673-30 ",.01)
 ;;66336-0673-30
 ;;9002226.02101,"869,66336-0673-30 ",.02)
 ;;66336-0673-30
 ;;9002226.02101,"869,66336-0673-50 ",.01)
 ;;66336-0673-50
 ;;9002226.02101,"869,66336-0673-50 ",.02)
 ;;66336-0673-50
 ;;9002226.02101,"869,66336-0673-60 ",.01)
 ;;66336-0673-60
 ;;9002226.02101,"869,66336-0673-60 ",.02)
 ;;66336-0673-60
 ;;9002226.02101,"869,66336-0757-60 ",.01)
 ;;66336-0757-60
 ;;9002226.02101,"869,66336-0757-60 ",.02)
 ;;66336-0757-60
 ;;9002226.02101,"869,66336-0799-30 ",.01)
 ;;66336-0799-30
 ;;9002226.02101,"869,66336-0799-30 ",.02)
 ;;66336-0799-30
 ;;9002226.02101,"869,66336-0838-14 ",.01)
 ;;66336-0838-14
 ;;9002226.02101,"869,66336-0838-14 ",.02)
 ;;66336-0838-14
 ;;9002226.02101,"869,66336-0844-30 ",.01)
 ;;66336-0844-30
 ;;9002226.02101,"869,66336-0844-30 ",.02)
 ;;66336-0844-30
 ;;9002226.02101,"869,66336-0897-30 ",.01)
 ;;66336-0897-30
 ;;9002226.02101,"869,66336-0897-30 ",.02)
 ;;66336-0897-30
 ;;9002226.02101,"869,66336-0897-60 ",.01)
 ;;66336-0897-60
 ;;9002226.02101,"869,66336-0897-60 ",.02)
 ;;66336-0897-60
 ;;9002226.02101,"869,66336-0973-60 ",.01)
 ;;66336-0973-60
 ;;9002226.02101,"869,66336-0973-60 ",.02)
 ;;66336-0973-60
 ;;9002226.02101,"869,66336-0993-30 ",.01)
 ;;66336-0993-30
 ;;9002226.02101,"869,66336-0993-30 ",.02)
 ;;66336-0993-30
 ;;9002226.02101,"869,66993-0075-60 ",.01)
 ;;66993-0075-60
 ;;9002226.02101,"869,66993-0075-60 ",.02)
 ;;66993-0075-60
 ;;9002226.02101,"869,66993-0076-30 ",.01)
 ;;66993-0076-30
 ;;9002226.02101,"869,66993-0076-30 ",.02)
 ;;66993-0076-30
 ;;9002226.02101,"869,66993-0077-30 ",.01)
 ;;66993-0077-30
 ;;9002226.02101,"869,66993-0077-30 ",.02)
 ;;66993-0077-30
 ;;9002226.02101,"869,66993-0662-60 ",.01)
 ;;66993-0662-60
 ;;9002226.02101,"869,66993-0662-60 ",.02)
 ;;66993-0662-60
 ;;9002226.02101,"869,66993-0663-05 ",.01)
 ;;66993-0663-05
 ;;9002226.02101,"869,66993-0663-05 ",.02)
 ;;66993-0663-05
 ;;9002226.02101,"869,66993-0663-30 ",.01)
 ;;66993-0663-30
 ;;9002226.02101,"869,66993-0663-30 ",.02)
 ;;66993-0663-30
 ;;9002226.02101,"869,66993-0664-05 ",.01)
 ;;66993-0664-05
 ;;9002226.02101,"869,66993-0664-05 ",.02)
 ;;66993-0664-05
 ;;9002226.02101,"869,66993-0664-30 ",.01)
 ;;66993-0664-30
 ;;9002226.02101,"869,66993-0664-30 ",.02)
 ;;66993-0664-30
 ;;9002226.02101,"869,66993-0709-30 ",.01)
 ;;66993-0709-30
 ;;9002226.02101,"869,66993-0709-30 ",.02)
 ;;66993-0709-30
 ;;9002226.02101,"869,66993-0711-30 ",.01)
 ;;66993-0711-30
 ;;9002226.02101,"869,66993-0711-30 ",.02)
 ;;66993-0711-30
 ;;9002226.02101,"869,66993-0712-30 ",.01)
 ;;66993-0712-30
 ;;9002226.02101,"869,66993-0712-30 ",.02)
 ;;66993-0712-30
 ;;9002226.02101,"869,67046-0015-30 ",.01)
 ;;67046-0015-30
 ;;9002226.02101,"869,67046-0015-30 ",.02)
 ;;67046-0015-30
 ;;9002226.02101,"869,67253-0700-06 ",.01)
 ;;67253-0700-06
 ;;9002226.02101,"869,67253-0700-06 ",.02)
 ;;67253-0700-06
 ;;9002226.02101,"869,67544-0078-30 ",.01)
 ;;67544-0078-30
 ;;9002226.02101,"869,67544-0078-30 ",.02)
 ;;67544-0078-30
 ;;9002226.02101,"869,67544-0080-15 ",.01)
 ;;67544-0080-15
 ;;9002226.02101,"869,67544-0080-15 ",.02)
 ;;67544-0080-15
 ;;9002226.02101,"869,67544-0085-30 ",.01)
 ;;67544-0085-30
 ;;9002226.02101,"869,67544-0085-30 ",.02)
 ;;67544-0085-30
 ;;9002226.02101,"869,67544-0085-60 ",.01)
 ;;67544-0085-60
 ;;9002226.02101,"869,67544-0085-60 ",.02)
 ;;67544-0085-60
 ;;9002226.02101,"869,67544-0162-30 ",.01)
 ;;67544-0162-30
 ;;9002226.02101,"869,67544-0162-30 ",.02)
 ;;67544-0162-30
 ;;9002226.02101,"869,67544-0169-15 ",.01)
 ;;67544-0169-15
 ;;9002226.02101,"869,67544-0169-15 ",.02)
 ;;67544-0169-15
 ;;9002226.02101,"869,67544-0189-30 ",.01)
 ;;67544-0189-30
 ;;9002226.02101,"869,67544-0189-30 ",.02)
 ;;67544-0189-30
 ;;9002226.02101,"869,67544-0190-30 ",.01)
 ;;67544-0190-30
 ;;9002226.02101,"869,67544-0190-30 ",.02)
 ;;67544-0190-30
 ;;9002226.02101,"869,67544-0206-30 ",.01)
 ;;67544-0206-30
 ;;9002226.02101,"869,67544-0206-30 ",.02)
 ;;67544-0206-30
 ;;9002226.02101,"869,67544-0253-30 ",.01)
 ;;67544-0253-30
 ;;9002226.02101,"869,67544-0253-30 ",.02)
 ;;67544-0253-30
 ;;9002226.02101,"869,67544-0295-30 ",.01)
 ;;67544-0295-30
 ;;9002226.02101,"869,67544-0295-30 ",.02)
 ;;67544-0295-30
 ;;9002226.02101,"869,67544-0298-15 ",.01)
 ;;67544-0298-15
 ;;9002226.02101,"869,67544-0298-15 ",.02)
 ;;67544-0298-15
 ;;9002226.02101,"869,67544-0299-30 ",.01)
 ;;67544-0299-30
 ;;9002226.02101,"869,67544-0299-30 ",.02)
 ;;67544-0299-30
 ;;9002226.02101,"869,67544-0316-15 ",.01)
 ;;67544-0316-15
 ;;9002226.02101,"869,67544-0316-15 ",.02)
 ;;67544-0316-15
 ;;9002226.02101,"869,67544-0317-15 ",.01)
 ;;67544-0317-15
 ;;9002226.02101,"869,67544-0317-15 ",.02)
 ;;67544-0317-15
 ;;9002226.02101,"869,67544-0331-30 ",.01)
 ;;67544-0331-30
 ;;9002226.02101,"869,67544-0331-30 ",.02)
 ;;67544-0331-30
 ;;9002226.02101,"869,67544-0360-15 ",.01)
 ;;67544-0360-15
 ;;9002226.02101,"869,67544-0360-15 ",.02)
 ;;67544-0360-15
 ;;9002226.02101,"869,67544-0365-15 ",.01)
 ;;67544-0365-15
 ;;9002226.02101,"869,67544-0365-15 ",.02)
 ;;67544-0365-15
 ;;9002226.02101,"869,67544-0366-15 ",.01)
 ;;67544-0366-15
 ;;9002226.02101,"869,67544-0366-15 ",.02)
 ;;67544-0366-15
 ;;9002226.02101,"869,67544-0409-15 ",.01)
 ;;67544-0409-15
 ;;9002226.02101,"869,67544-0409-15 ",.02)
 ;;67544-0409-15
 ;;9002226.02101,"869,67544-0429-15 ",.01)
 ;;67544-0429-15
 ;;9002226.02101,"869,67544-0429-15 ",.02)
 ;;67544-0429-15
 ;;9002226.02101,"869,67544-0430-15 ",.01)
 ;;67544-0430-15
 ;;9002226.02101,"869,67544-0430-15 ",.02)
 ;;67544-0430-15
 ;;9002226.02101,"869,67544-0434-15 ",.01)
 ;;67544-0434-15
 ;;9002226.02101,"869,67544-0434-15 ",.02)
 ;;67544-0434-15
 ;;9002226.02101,"869,67544-0455-15 ",.01)
 ;;67544-0455-15
 ;;9002226.02101,"869,67544-0455-15 ",.02)
 ;;67544-0455-15
 ;;9002226.02101,"869,67544-0464-82 ",.01)
 ;;67544-0464-82
 ;;9002226.02101,"869,67544-0464-82 ",.02)
 ;;67544-0464-82
 ;;9002226.02101,"869,67544-0499-82 ",.01)
 ;;67544-0499-82
 ;;9002226.02101,"869,67544-0499-82 ",.02)
 ;;67544-0499-82
 ;;9002226.02101,"869,67544-0500-15 ",.01)
 ;;67544-0500-15
 ;;9002226.02101,"869,67544-0500-15 ",.02)
 ;;67544-0500-15
 ;;9002226.02101,"869,67544-0528-30 ",.01)
 ;;67544-0528-30
 ;;9002226.02101,"869,67544-0528-30 ",.02)
 ;;67544-0528-30
 ;;9002226.02101,"869,67544-0547-30 ",.01)
 ;;67544-0547-30
 ;;9002226.02101,"869,67544-0547-30 ",.02)
 ;;67544-0547-30
 ;;9002226.02101,"869,67544-0848-30 ",.01)
 ;;67544-0848-30
 ;;9002226.02101,"869,67544-0848-30 ",.02)
 ;;67544-0848-30
 ;;9002226.02101,"869,67544-0906-15 ",.01)
 ;;67544-0906-15
 ;;9002226.02101,"869,67544-0906-15 ",.02)
 ;;67544-0906-15
 ;;9002226.02101,"869,67544-0906-73 ",.01)
 ;;67544-0906-73
 ;;9002226.02101,"869,67544-0906-73 ",.02)
 ;;67544-0906-73
 ;;9002226.02101,"869,67544-0908-15 ",.01)
 ;;67544-0908-15
 ;;9002226.02101,"869,67544-0908-15 ",.02)
 ;;67544-0908-15
 ;;9002226.02101,"869,67767-0117-60 ",.01)
 ;;67767-0117-60
 ;;9002226.02101,"869,67767-0117-60 ",.02)
 ;;67767-0117-60
 ;;9002226.02101,"869,67767-0133-05 ",.01)
 ;;67767-0133-05
 ;;9002226.02101,"869,67767-0133-05 ",.02)
 ;;67767-0133-05
 ;;9002226.02101,"869,67767-0133-25 ",.01)
 ;;67767-0133-25
 ;;9002226.02101,"869,67767-0133-25 ",.02)
 ;;67767-0133-25
 ;;9002226.02101,"869,67767-0133-60 ",.01)
 ;;67767-0133-60
 ;;9002226.02101,"869,67767-0133-60 ",.02)
 ;;67767-0133-60
 ;;9002226.02101,"869,67767-0135-60 ",.01)
 ;;67767-0135-60