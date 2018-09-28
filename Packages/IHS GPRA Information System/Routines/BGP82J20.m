BGP82J20 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1220,52544-0694-30 ",.02)
 ;;52544-0694-30
 ;;9002226.02101,"1220,52544-0695-19 ",.01)
 ;;52544-0695-19
 ;;9002226.02101,"1220,52544-0695-19 ",.02)
 ;;52544-0695-19
 ;;9002226.02101,"1220,52544-0695-30 ",.01)
 ;;52544-0695-30
 ;;9002226.02101,"1220,52544-0695-30 ",.02)
 ;;52544-0695-30
 ;;9002226.02101,"1220,52959-0050-30 ",.01)
 ;;52959-0050-30
 ;;9002226.02101,"1220,52959-0050-30 ",.02)
 ;;52959-0050-30
 ;;9002226.02101,"1220,52959-0072-01 ",.01)
 ;;52959-0072-01
 ;;9002226.02101,"1220,52959-0072-01 ",.02)
 ;;52959-0072-01
 ;;9002226.02101,"1220,52959-0209-90 ",.01)
 ;;52959-0209-90
 ;;9002226.02101,"1220,52959-0209-90 ",.02)
 ;;52959-0209-90
 ;;9002226.02101,"1220,52959-0910-90 ",.01)
 ;;52959-0910-90
 ;;9002226.02101,"1220,52959-0910-90 ",.02)
 ;;52959-0910-90
 ;;9002226.02101,"1220,52959-0911-30 ",.01)
 ;;52959-0911-30
 ;;9002226.02101,"1220,52959-0911-30 ",.02)
 ;;52959-0911-30
 ;;9002226.02101,"1220,52959-0911-90 ",.01)
 ;;52959-0911-90
 ;;9002226.02101,"1220,52959-0911-90 ",.02)
 ;;52959-0911-90
 ;;9002226.02101,"1220,52959-0982-60 ",.01)
 ;;52959-0982-60
 ;;9002226.02101,"1220,52959-0982-60 ",.02)
 ;;52959-0982-60
 ;;9002226.02101,"1220,52959-0996-60 ",.01)
 ;;52959-0996-60
 ;;9002226.02101,"1220,52959-0996-60 ",.02)
 ;;52959-0996-60
 ;;9002226.02101,"1220,53002-1129-00 ",.01)
 ;;53002-1129-00
 ;;9002226.02101,"1220,53002-1129-00 ",.02)
 ;;53002-1129-00
 ;;9002226.02101,"1220,53002-1129-03 ",.01)
 ;;53002-1129-03
 ;;9002226.02101,"1220,53002-1129-03 ",.02)
 ;;53002-1129-03
 ;;9002226.02101,"1220,53002-1205-00 ",.01)
 ;;53002-1205-00
 ;;9002226.02101,"1220,53002-1205-00 ",.02)
 ;;53002-1205-00
 ;;9002226.02101,"1220,53002-1205-03 ",.01)
 ;;53002-1205-03
 ;;9002226.02101,"1220,53002-1205-03 ",.02)
 ;;53002-1205-03
 ;;9002226.02101,"1220,53002-1467-00 ",.01)
 ;;53002-1467-00
 ;;9002226.02101,"1220,53002-1467-00 ",.02)
 ;;53002-1467-00
 ;;9002226.02101,"1220,53002-1467-03 ",.01)
 ;;53002-1467-03
 ;;9002226.02101,"1220,53002-1467-03 ",.02)
 ;;53002-1467-03
 ;;9002226.02101,"1220,53217-0006-30 ",.01)
 ;;53217-0006-30
 ;;9002226.02101,"1220,53217-0006-30 ",.02)
 ;;53217-0006-30
 ;;9002226.02101,"1220,53217-0006-60 ",.01)
 ;;53217-0006-60
 ;;9002226.02101,"1220,53217-0006-60 ",.02)
 ;;53217-0006-60
 ;;9002226.02101,"1220,53217-0006-90 ",.01)
 ;;53217-0006-90
 ;;9002226.02101,"1220,53217-0006-90 ",.02)
 ;;53217-0006-90
 ;;9002226.02101,"1220,53217-0010-30 ",.01)
 ;;53217-0010-30
 ;;9002226.02101,"1220,53217-0010-30 ",.02)
 ;;53217-0010-30
 ;;9002226.02101,"1220,53217-0010-60 ",.01)
 ;;53217-0010-60
 ;;9002226.02101,"1220,53217-0010-60 ",.02)
 ;;53217-0010-60
 ;;9002226.02101,"1220,53217-0010-90 ",.01)
 ;;53217-0010-90
 ;;9002226.02101,"1220,53217-0010-90 ",.02)
 ;;53217-0010-90
 ;;9002226.02101,"1220,53217-0118-30 ",.01)
 ;;53217-0118-30
 ;;9002226.02101,"1220,53217-0118-30 ",.02)
 ;;53217-0118-30
 ;;9002226.02101,"1220,53217-0118-60 ",.01)
 ;;53217-0118-60
 ;;9002226.02101,"1220,53217-0118-60 ",.02)
 ;;53217-0118-60
 ;;9002226.02101,"1220,53217-0118-90 ",.01)
 ;;53217-0118-90
 ;;9002226.02101,"1220,53217-0118-90 ",.02)
 ;;53217-0118-90
 ;;9002226.02101,"1220,53489-0368-01 ",.01)
 ;;53489-0368-01
 ;;9002226.02101,"1220,53489-0368-01 ",.02)
 ;;53489-0368-01
 ;;9002226.02101,"1220,53489-0369-01 ",.01)
 ;;53489-0369-01
 ;;9002226.02101,"1220,53489-0369-01 ",.02)
 ;;53489-0369-01
 ;;9002226.02101,"1220,53489-0370-01 ",.01)
 ;;53489-0370-01
 ;;9002226.02101,"1220,53489-0370-01 ",.02)
 ;;53489-0370-01
 ;;9002226.02101,"1220,54458-0895-02 ",.01)
 ;;54458-0895-02
 ;;9002226.02101,"1220,54458-0895-02 ",.02)
 ;;54458-0895-02
 ;;9002226.02101,"1220,54458-0903-02 ",.01)
 ;;54458-0903-02
 ;;9002226.02101,"1220,54458-0903-02 ",.02)
 ;;54458-0903-02
 ;;9002226.02101,"1220,54458-0904-02 ",.01)
 ;;54458-0904-02
 ;;9002226.02101,"1220,54458-0904-02 ",.02)
 ;;54458-0904-02
 ;;9002226.02101,"1220,54458-0948-08 ",.01)
 ;;54458-0948-08
 ;;9002226.02101,"1220,54458-0948-08 ",.02)
 ;;54458-0948-08
 ;;9002226.02101,"1220,54458-0950-10 ",.01)
 ;;54458-0950-10
 ;;9002226.02101,"1220,54458-0950-10 ",.02)
 ;;54458-0950-10
 ;;9002226.02101,"1220,54569-0646-00 ",.01)
 ;;54569-0646-00
 ;;9002226.02101,"1220,54569-0646-00 ",.02)
 ;;54569-0646-00
 ;;9002226.02101,"1220,54569-0646-02 ",.01)
 ;;54569-0646-02
 ;;9002226.02101,"1220,54569-0646-02 ",.02)
 ;;54569-0646-02
 ;;9002226.02101,"1220,54569-3667-02 ",.01)
 ;;54569-3667-02
 ;;9002226.02101,"1220,54569-3667-02 ",.02)
 ;;54569-3667-02
 ;;9002226.02101,"1220,54569-3691-00 ",.01)
 ;;54569-3691-00
 ;;9002226.02101,"1220,54569-3691-00 ",.02)
 ;;54569-3691-00
 ;;9002226.02101,"1220,54569-3691-04 ",.01)
 ;;54569-3691-04
 ;;9002226.02101,"1220,54569-3691-04 ",.02)
 ;;54569-3691-04
 ;;9002226.02101,"1220,54569-3866-01 ",.01)
 ;;54569-3866-01
 ;;9002226.02101,"1220,54569-3866-01 ",.02)
 ;;54569-3866-01
 ;;9002226.02101,"1220,54569-4447-04 ",.01)
 ;;54569-4447-04
 ;;9002226.02101,"1220,54569-4447-04 ",.02)
 ;;54569-4447-04
 ;;9002226.02101,"1220,54569-4472-00 ",.01)
 ;;54569-4472-00
 ;;9002226.02101,"1220,54569-4472-00 ",.02)
 ;;54569-4472-00
 ;;9002226.02101,"1220,54569-4913-00 ",.01)
 ;;54569-4913-00
 ;;9002226.02101,"1220,54569-4913-00 ",.02)
 ;;54569-4913-00
 ;;9002226.02101,"1220,54569-4914-00 ",.01)
 ;;54569-4914-00
 ;;9002226.02101,"1220,54569-4914-00 ",.02)
 ;;54569-4914-00
 ;;9002226.02101,"1220,54569-4914-01 ",.01)
 ;;54569-4914-01
 ;;9002226.02101,"1220,54569-4914-01 ",.02)
 ;;54569-4914-01
 ;;9002226.02101,"1220,54569-5155-00 ",.01)
 ;;54569-5155-00
 ;;9002226.02101,"1220,54569-5155-00 ",.02)
 ;;54569-5155-00
 ;;9002226.02101,"1220,54569-5155-01 ",.01)
 ;;54569-5155-01
 ;;9002226.02101,"1220,54569-5155-01 ",.02)
 ;;54569-5155-01
 ;;9002226.02101,"1220,54569-5155-02 ",.01)
 ;;54569-5155-02
 ;;9002226.02101,"1220,54569-5155-02 ",.02)
 ;;54569-5155-02
 ;;9002226.02101,"1220,54569-5156-00 ",.01)
 ;;54569-5156-00
 ;;9002226.02101,"1220,54569-5156-00 ",.02)
 ;;54569-5156-00
 ;;9002226.02101,"1220,54569-5156-01 ",.01)
 ;;54569-5156-01
 ;;9002226.02101,"1220,54569-5156-01 ",.02)
 ;;54569-5156-01
 ;;9002226.02101,"1220,54569-5156-02 ",.01)
 ;;54569-5156-02
 ;;9002226.02101,"1220,54569-5156-02 ",.02)
 ;;54569-5156-02
 ;;9002226.02101,"1220,54569-5157-00 ",.01)
 ;;54569-5157-00
 ;;9002226.02101,"1220,54569-5157-00 ",.02)
 ;;54569-5157-00
 ;;9002226.02101,"1220,54569-5157-01 ",.01)
 ;;54569-5157-01
 ;;9002226.02101,"1220,54569-5157-01 ",.02)
 ;;54569-5157-01
 ;;9002226.02101,"1220,54569-5431-00 ",.01)
 ;;54569-5431-00
 ;;9002226.02101,"1220,54569-5431-00 ",.02)
 ;;54569-5431-00
 ;;9002226.02101,"1220,54569-5431-01 ",.01)
 ;;54569-5431-01
 ;;9002226.02101,"1220,54569-5431-01 ",.02)
 ;;54569-5431-01
 ;;9002226.02101,"1220,54569-5704-00 ",.01)
 ;;54569-5704-00
 ;;9002226.02101,"1220,54569-5704-00 ",.02)
 ;;54569-5704-00
 ;;9002226.02101,"1220,54569-5878-00 ",.01)
 ;;54569-5878-00
 ;;9002226.02101,"1220,54569-5878-00 ",.02)
 ;;54569-5878-00
 ;;9002226.02101,"1220,54569-5881-00 ",.01)
 ;;54569-5881-00
 ;;9002226.02101,"1220,54569-5881-00 ",.02)
 ;;54569-5881-00
 ;;9002226.02101,"1220,54569-5901-00 ",.01)
 ;;54569-5901-00
 ;;9002226.02101,"1220,54569-5901-00 ",.02)
 ;;54569-5901-00
 ;;9002226.02101,"1220,54569-5901-01 ",.01)
 ;;54569-5901-01
 ;;9002226.02101,"1220,54569-5901-01 ",.02)
 ;;54569-5901-01
 ;;9002226.02101,"1220,54569-5902-00 ",.01)
 ;;54569-5902-00
 ;;9002226.02101,"1220,54569-5902-00 ",.02)
 ;;54569-5902-00
 ;;9002226.02101,"1220,54569-5902-01 ",.01)
 ;;54569-5902-01
 ;;9002226.02101,"1220,54569-5902-01 ",.02)
 ;;54569-5902-01
 ;;9002226.02101,"1220,54569-5937-00 ",.01)
 ;;54569-5937-00
 ;;9002226.02101,"1220,54569-5937-00 ",.02)
 ;;54569-5937-00
 ;;9002226.02101,"1220,54569-5938-00 ",.01)
 ;;54569-5938-00
 ;;9002226.02101,"1220,54569-5938-00 ",.02)
 ;;54569-5938-00
 ;;9002226.02101,"1220,54569-5938-01 ",.01)
 ;;54569-5938-01
 ;;9002226.02101,"1220,54569-5938-01 ",.02)
 ;;54569-5938-01
 ;;9002226.02101,"1220,54569-5951-00 ",.01)
 ;;54569-5951-00
 ;;9002226.02101,"1220,54569-5951-00 ",.02)
 ;;54569-5951-00
 ;;9002226.02101,"1220,54569-6099-00 ",.01)
 ;;54569-6099-00
 ;;9002226.02101,"1220,54569-6099-00 ",.02)
 ;;54569-6099-00
 ;;9002226.02101,"1220,54569-6117-00 ",.01)
 ;;54569-6117-00
 ;;9002226.02101,"1220,54569-6117-00 ",.02)
 ;;54569-6117-00
 ;;9002226.02101,"1220,54569-6464-00 ",.01)
 ;;54569-6464-00
 ;;9002226.02101,"1220,54569-6464-00 ",.02)
 ;;54569-6464-00
 ;;9002226.02101,"1220,54569-6464-01 ",.01)
 ;;54569-6464-01
 ;;9002226.02101,"1220,54569-6464-01 ",.02)
 ;;54569-6464-01
 ;;9002226.02101,"1220,54569-6467-00 ",.01)
 ;;54569-6467-00
 ;;9002226.02101,"1220,54569-6467-00 ",.02)
 ;;54569-6467-00
 ;;9002226.02101,"1220,54569-6467-01 ",.01)
 ;;54569-6467-01
 ;;9002226.02101,"1220,54569-6467-01 ",.02)
 ;;54569-6467-01
 ;;9002226.02101,"1220,54569-6483-00 ",.01)
 ;;54569-6483-00
 ;;9002226.02101,"1220,54569-6483-00 ",.02)
 ;;54569-6483-00
 ;;9002226.02101,"1220,54569-6483-01 ",.01)
 ;;54569-6483-01
 ;;9002226.02101,"1220,54569-6483-01 ",.02)
 ;;54569-6483-01
 ;;9002226.02101,"1220,54569-6552-00 ",.01)
 ;;54569-6552-00
 ;;9002226.02101,"1220,54569-6552-00 ",.02)
 ;;54569-6552-00
 ;;9002226.02101,"1220,54569-6553-00 ",.01)
 ;;54569-6553-00
 ;;9002226.02101,"1220,54569-6553-00 ",.02)
 ;;54569-6553-00
 ;;9002226.02101,"1220,54569-6682-00 ",.01)
 ;;54569-6682-00
 ;;9002226.02101,"1220,54569-6682-00 ",.02)
 ;;54569-6682-00
 ;;9002226.02101,"1220,54569-9054-00 ",.01)
 ;;54569-9054-00
 ;;9002226.02101,"1220,54569-9054-00 ",.02)
 ;;54569-9054-00
 ;;9002226.02101,"1220,54738-0904-03 ",.01)
 ;;54738-0904-03
 ;;9002226.02101,"1220,54738-0904-03 ",.02)
 ;;54738-0904-03
 ;;9002226.02101,"1220,54738-0904-90 ",.01)
 ;;54738-0904-90
 ;;9002226.02101,"1220,54738-0904-90 ",.02)
 ;;54738-0904-90
 ;;9002226.02101,"1220,54738-0905-03 ",.01)
 ;;54738-0905-03
 ;;9002226.02101,"1220,54738-0905-03 ",.02)
 ;;54738-0905-03
 ;;9002226.02101,"1220,54738-0905-90 ",.01)
 ;;54738-0905-90
 ;;9002226.02101,"1220,54738-0905-90 ",.02)
 ;;54738-0905-90
 ;;9002226.02101,"1220,54738-0906-03 ",.01)
 ;;54738-0906-03
 ;;9002226.02101,"1220,54738-0906-03 ",.02)
 ;;54738-0906-03
 ;;9002226.02101,"1220,54738-0906-90 ",.01)
 ;;54738-0906-90
 ;;9002226.02101,"1220,54738-0906-90 ",.02)
 ;;54738-0906-90
 ;;9002226.02101,"1220,54868-0120-00 ",.01)
 ;;54868-0120-00
 ;;9002226.02101,"1220,54868-0120-00 ",.02)
 ;;54868-0120-00
 ;;9002226.02101,"1220,54868-0120-01 ",.01)
 ;;54868-0120-01
 ;;9002226.02101,"1220,54868-0120-01 ",.02)
 ;;54868-0120-01
 ;;9002226.02101,"1220,54868-0120-02 ",.01)
 ;;54868-0120-02
 ;;9002226.02101,"1220,54868-0120-02 ",.02)
 ;;54868-0120-02
 ;;9002226.02101,"1220,54868-0120-03 ",.01)
 ;;54868-0120-03
 ;;9002226.02101,"1220,54868-0120-03 ",.02)
 ;;54868-0120-03
 ;;9002226.02101,"1220,54868-0121-01 ",.01)
 ;;54868-0121-01
 ;;9002226.02101,"1220,54868-0121-01 ",.02)
 ;;54868-0121-01
 ;;9002226.02101,"1220,54868-0121-05 ",.01)
 ;;54868-0121-05
 ;;9002226.02101,"1220,54868-0121-05 ",.02)
 ;;54868-0121-05
 ;;9002226.02101,"1220,54868-0121-06 ",.01)
 ;;54868-0121-06
 ;;9002226.02101,"1220,54868-0121-06 ",.02)
 ;;54868-0121-06
 ;;9002226.02101,"1220,54868-0671-00 ",.01)
 ;;54868-0671-00
 ;;9002226.02101,"1220,54868-0671-00 ",.02)
 ;;54868-0671-00
 ;;9002226.02101,"1220,54868-0823-00 ",.01)
 ;;54868-0823-00
 ;;9002226.02101,"1220,54868-0823-00 ",.02)
 ;;54868-0823-00
 ;;9002226.02101,"1220,54868-0826-00 ",.01)
 ;;54868-0826-00
 ;;9002226.02101,"1220,54868-0826-00 ",.02)
 ;;54868-0826-00
 ;;9002226.02101,"1220,54868-0826-01 ",.01)
 ;;54868-0826-01
 ;;9002226.02101,"1220,54868-0826-01 ",.02)
 ;;54868-0826-01