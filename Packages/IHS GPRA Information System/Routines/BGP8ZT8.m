BGP8ZT8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 13, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1800,52959-0363-15 ",.01)
 ;;52959-0363-15
 ;;9002226.02101,"1800,52959-0363-15 ",.02)
 ;;52959-0363-15
 ;;9002226.02101,"1800,52959-0363-20 ",.01)
 ;;52959-0363-20
 ;;9002226.02101,"1800,52959-0363-20 ",.02)
 ;;52959-0363-20
 ;;9002226.02101,"1800,52959-0363-21 ",.01)
 ;;52959-0363-21
 ;;9002226.02101,"1800,52959-0363-21 ",.02)
 ;;52959-0363-21
 ;;9002226.02101,"1800,52959-0363-25 ",.01)
 ;;52959-0363-25
 ;;9002226.02101,"1800,52959-0363-25 ",.02)
 ;;52959-0363-25
 ;;9002226.02101,"1800,52959-0363-30 ",.01)
 ;;52959-0363-30
 ;;9002226.02101,"1800,52959-0363-30 ",.02)
 ;;52959-0363-30
 ;;9002226.02101,"1800,52959-0363-60 ",.01)
 ;;52959-0363-60
 ;;9002226.02101,"1800,52959-0363-60 ",.02)
 ;;52959-0363-60
 ;;9002226.02101,"1800,52959-0727-00 ",.01)
 ;;52959-0727-00
 ;;9002226.02101,"1800,52959-0727-00 ",.02)
 ;;52959-0727-00
 ;;9002226.02101,"1800,52959-0727-10 ",.01)
 ;;52959-0727-10
 ;;9002226.02101,"1800,52959-0727-10 ",.02)
 ;;52959-0727-10
 ;;9002226.02101,"1800,52959-0727-30 ",.01)
 ;;52959-0727-30
 ;;9002226.02101,"1800,52959-0727-30 ",.02)
 ;;52959-0727-30
 ;;9002226.02101,"1800,52959-0852-00 ",.01)
 ;;52959-0852-00
 ;;9002226.02101,"1800,52959-0852-00 ",.02)
 ;;52959-0852-00
 ;;9002226.02101,"1800,52959-0852-10 ",.01)
 ;;52959-0852-10
 ;;9002226.02101,"1800,52959-0852-10 ",.02)
 ;;52959-0852-10
 ;;9002226.02101,"1800,52959-0852-12 ",.01)
 ;;52959-0852-12
 ;;9002226.02101,"1800,52959-0852-12 ",.02)
 ;;52959-0852-12
 ;;9002226.02101,"1800,52959-0852-30 ",.01)
 ;;52959-0852-30
 ;;9002226.02101,"1800,52959-0852-30 ",.02)
 ;;52959-0852-30
 ;;9002226.02101,"1800,52959-0852-60 ",.01)
 ;;52959-0852-60
 ;;9002226.02101,"1800,52959-0852-60 ",.02)
 ;;52959-0852-60
 ;;9002226.02101,"1800,52959-0870-30 ",.01)
 ;;52959-0870-30
 ;;9002226.02101,"1800,52959-0870-30 ",.02)
 ;;52959-0870-30
 ;;9002226.02101,"1800,52959-0879-02 ",.01)
 ;;52959-0879-02
 ;;9002226.02101,"1800,52959-0879-02 ",.02)
 ;;52959-0879-02
 ;;9002226.02101,"1800,52959-0879-10 ",.01)
 ;;52959-0879-10
 ;;9002226.02101,"1800,52959-0879-10 ",.02)
 ;;52959-0879-10
 ;;9002226.02101,"1800,52959-0879-14 ",.01)
 ;;52959-0879-14
 ;;9002226.02101,"1800,52959-0879-14 ",.02)
 ;;52959-0879-14
 ;;9002226.02101,"1800,52959-0879-15 ",.01)
 ;;52959-0879-15
 ;;9002226.02101,"1800,52959-0879-15 ",.02)
 ;;52959-0879-15
 ;;9002226.02101,"1800,52959-0879-20 ",.01)
 ;;52959-0879-20
 ;;9002226.02101,"1800,52959-0879-20 ",.02)
 ;;52959-0879-20
 ;;9002226.02101,"1800,52959-0879-28 ",.01)
 ;;52959-0879-28
 ;;9002226.02101,"1800,52959-0879-28 ",.02)
 ;;52959-0879-28
 ;;9002226.02101,"1800,52959-0879-30 ",.01)
 ;;52959-0879-30
 ;;9002226.02101,"1800,52959-0879-30 ",.02)
 ;;52959-0879-30
 ;;9002226.02101,"1800,52959-0879-42 ",.01)
 ;;52959-0879-42
 ;;9002226.02101,"1800,52959-0879-42 ",.02)
 ;;52959-0879-42
 ;;9002226.02101,"1800,52959-0879-60 ",.01)
 ;;52959-0879-60
 ;;9002226.02101,"1800,52959-0879-60 ",.02)
 ;;52959-0879-60
 ;;9002226.02101,"1800,52959-0879-90 ",.01)
 ;;52959-0879-90
 ;;9002226.02101,"1800,52959-0879-90 ",.02)
 ;;52959-0879-90
 ;;9002226.02101,"1800,52959-0880-00 ",.01)
 ;;52959-0880-00
 ;;9002226.02101,"1800,52959-0880-00 ",.02)
 ;;52959-0880-00
 ;;9002226.02101,"1800,52959-0880-02 ",.01)
 ;;52959-0880-02
 ;;9002226.02101,"1800,52959-0880-02 ",.02)
 ;;52959-0880-02
 ;;9002226.02101,"1800,52959-0880-10 ",.01)
 ;;52959-0880-10
 ;;9002226.02101,"1800,52959-0880-10 ",.02)
 ;;52959-0880-10
 ;;9002226.02101,"1800,52959-0880-14 ",.01)
 ;;52959-0880-14
 ;;9002226.02101,"1800,52959-0880-14 ",.02)
 ;;52959-0880-14
 ;;9002226.02101,"1800,52959-0880-15 ",.01)
 ;;52959-0880-15
 ;;9002226.02101,"1800,52959-0880-15 ",.02)
 ;;52959-0880-15
 ;;9002226.02101,"1800,52959-0880-20 ",.01)
 ;;52959-0880-20
 ;;9002226.02101,"1800,52959-0880-20 ",.02)
 ;;52959-0880-20
 ;;9002226.02101,"1800,52959-0880-28 ",.01)
 ;;52959-0880-28
 ;;9002226.02101,"1800,52959-0880-28 ",.02)
 ;;52959-0880-28
 ;;9002226.02101,"1800,52959-0880-30 ",.01)
 ;;52959-0880-30
 ;;9002226.02101,"1800,52959-0880-30 ",.02)
 ;;52959-0880-30
 ;;9002226.02101,"1800,52959-0880-45 ",.01)
 ;;52959-0880-45
 ;;9002226.02101,"1800,52959-0880-45 ",.02)
 ;;52959-0880-45
 ;;9002226.02101,"1800,52959-0880-60 ",.01)
 ;;52959-0880-60
 ;;9002226.02101,"1800,52959-0880-60 ",.02)
 ;;52959-0880-60
 ;;9002226.02101,"1800,52959-0880-90 ",.01)
 ;;52959-0880-90
 ;;9002226.02101,"1800,52959-0880-90 ",.02)
 ;;52959-0880-90
 ;;9002226.02101,"1800,52959-0881-30 ",.01)
 ;;52959-0881-30
 ;;9002226.02101,"1800,52959-0881-30 ",.02)
 ;;52959-0881-30
 ;;9002226.02101,"1800,52959-0919-00 ",.01)
 ;;52959-0919-00
 ;;9002226.02101,"1800,52959-0919-00 ",.02)
 ;;52959-0919-00
 ;;9002226.02101,"1800,52959-0919-30 ",.01)
 ;;52959-0919-30
 ;;9002226.02101,"1800,52959-0919-30 ",.02)
 ;;52959-0919-30
 ;;9002226.02101,"1800,52959-0919-60 ",.01)
 ;;52959-0919-60
 ;;9002226.02101,"1800,52959-0919-60 ",.02)
 ;;52959-0919-60
 ;;9002226.02101,"1800,52959-0957-30 ",.01)
 ;;52959-0957-30
 ;;9002226.02101,"1800,52959-0957-30 ",.02)
 ;;52959-0957-30
 ;;9002226.02101,"1800,52959-0971-30 ",.01)
 ;;52959-0971-30
 ;;9002226.02101,"1800,52959-0971-30 ",.02)
 ;;52959-0971-30
 ;;9002226.02101,"1800,53002-0502-05 ",.01)
 ;;53002-0502-05
 ;;9002226.02101,"1800,53002-0502-05 ",.02)
 ;;53002-0502-05
 ;;9002226.02101,"1800,53002-0502-10 ",.01)
 ;;53002-0502-10
 ;;9002226.02101,"1800,53002-0502-10 ",.02)
 ;;53002-0502-10
 ;;9002226.02101,"1800,53002-0502-20 ",.01)
 ;;53002-0502-20
 ;;9002226.02101,"1800,53002-0502-20 ",.02)
 ;;53002-0502-20
 ;;9002226.02101,"1800,53002-0502-30 ",.01)
 ;;53002-0502-30
 ;;9002226.02101,"1800,53002-0502-30 ",.02)
 ;;53002-0502-30
 ;;9002226.02101,"1800,53002-1292-01 ",.01)
 ;;53002-1292-01
 ;;9002226.02101,"1800,53002-1292-01 ",.02)
 ;;53002-1292-01
 ;;9002226.02101,"1800,53002-1292-02 ",.01)
 ;;53002-1292-02
 ;;9002226.02101,"1800,53002-1292-02 ",.02)
 ;;53002-1292-02
 ;;9002226.02101,"1800,53002-1292-03 ",.01)
 ;;53002-1292-03
 ;;9002226.02101,"1800,53002-1292-03 ",.02)
 ;;53002-1292-03
 ;;9002226.02101,"1800,53002-1594-01 ",.01)
 ;;53002-1594-01
 ;;9002226.02101,"1800,53002-1594-01 ",.02)
 ;;53002-1594-01
 ;;9002226.02101,"1800,53217-0149-30 ",.01)
 ;;53217-0149-30
 ;;9002226.02101,"1800,53217-0149-30 ",.02)
 ;;53217-0149-30
 ;;9002226.02101,"1800,53217-0149-60 ",.01)
 ;;53217-0149-60
 ;;9002226.02101,"1800,53217-0149-60 ",.02)
 ;;53217-0149-60
 ;;9002226.02101,"1800,53217-0150-30 ",.01)
 ;;53217-0150-30
 ;;9002226.02101,"1800,53217-0150-30 ",.02)
 ;;53217-0150-30
 ;;9002226.02101,"1800,53217-0150-60 ",.01)
 ;;53217-0150-60
 ;;9002226.02101,"1800,53217-0150-60 ",.02)
 ;;53217-0150-60
 ;;9002226.02101,"1800,53217-0151-30 ",.01)
 ;;53217-0151-30
 ;;9002226.02101,"1800,53217-0151-30 ",.02)
 ;;53217-0151-30
 ;;9002226.02101,"1800,53217-0151-60 ",.01)
 ;;53217-0151-60
 ;;9002226.02101,"1800,53217-0151-60 ",.02)
 ;;53217-0151-60
 ;;9002226.02101,"1800,53217-0307-30 ",.01)
 ;;53217-0307-30
 ;;9002226.02101,"1800,53217-0307-30 ",.02)
 ;;53217-0307-30
 ;;9002226.02101,"1800,53217-0307-60 ",.01)
 ;;53217-0307-60
 ;;9002226.02101,"1800,53217-0307-60 ",.02)
 ;;53217-0307-60
 ;;9002226.02101,"1800,54569-3827-03 ",.01)
 ;;54569-3827-03
 ;;9002226.02101,"1800,54569-3827-03 ",.02)
 ;;54569-3827-03
 ;;9002226.02101,"1800,54569-3828-01 ",.01)
 ;;54569-3828-01
 ;;9002226.02101,"1800,54569-3828-01 ",.02)
 ;;54569-3828-01
 ;;9002226.02101,"1800,54569-4837-00 ",.01)
 ;;54569-4837-00
 ;;9002226.02101,"1800,54569-4837-00 ",.02)
 ;;54569-4837-00
 ;;9002226.02101,"1800,54569-5684-00 ",.01)
 ;;54569-5684-00
 ;;9002226.02101,"1800,54569-5684-00 ",.02)
 ;;54569-5684-00
 ;;9002226.02101,"1800,54569-5696-00 ",.01)
 ;;54569-5696-00
 ;;9002226.02101,"1800,54569-5696-00 ",.02)
 ;;54569-5696-00
 ;;9002226.02101,"1800,54569-5760-00 ",.01)
 ;;54569-5760-00
 ;;9002226.02101,"1800,54569-5760-00 ",.02)
 ;;54569-5760-00
 ;;9002226.02101,"1800,54569-5760-01 ",.01)
 ;;54569-5760-01
 ;;9002226.02101,"1800,54569-5760-01 ",.02)
 ;;54569-5760-01
 ;;9002226.02101,"1800,54569-5906-00 ",.01)
 ;;54569-5906-00
 ;;9002226.02101,"1800,54569-5906-00 ",.02)
 ;;54569-5906-00
 ;;9002226.02101,"1800,54569-5906-01 ",.01)
 ;;54569-5906-01
 ;;9002226.02101,"1800,54569-5906-01 ",.02)
 ;;54569-5906-01
 ;;9002226.02101,"1800,54569-5906-02 ",.01)
 ;;54569-5906-02
 ;;9002226.02101,"1800,54569-5906-02 ",.02)
 ;;54569-5906-02
 ;;9002226.02101,"1800,54569-5906-03 ",.01)
 ;;54569-5906-03
 ;;9002226.02101,"1800,54569-5906-03 ",.02)
 ;;54569-5906-03
 ;;9002226.02101,"1800,54569-5906-04 ",.01)
 ;;54569-5906-04
 ;;9002226.02101,"1800,54569-5906-04 ",.02)
 ;;54569-5906-04
 ;;9002226.02101,"1800,54569-5907-00 ",.01)
 ;;54569-5907-00
 ;;9002226.02101,"1800,54569-5907-00 ",.02)
 ;;54569-5907-00
 ;;9002226.02101,"1800,54569-5907-01 ",.01)
 ;;54569-5907-01
 ;;9002226.02101,"1800,54569-5907-01 ",.02)
 ;;54569-5907-01
 ;;9002226.02101,"1800,54569-6118-00 ",.01)
 ;;54569-6118-00
 ;;9002226.02101,"1800,54569-6118-00 ",.02)
 ;;54569-6118-00
 ;;9002226.02101,"1800,54569-6118-01 ",.01)
 ;;54569-6118-01
 ;;9002226.02101,"1800,54569-6118-01 ",.02)
 ;;54569-6118-01
 ;;9002226.02101,"1800,54569-6231-00 ",.01)
 ;;54569-6231-00
 ;;9002226.02101,"1800,54569-6231-00 ",.02)
 ;;54569-6231-00
 ;;9002226.02101,"1800,54569-6231-01 ",.01)
 ;;54569-6231-01
 ;;9002226.02101,"1800,54569-6231-01 ",.02)
 ;;54569-6231-01
 ;;9002226.02101,"1800,54569-6378-00 ",.01)
 ;;54569-6378-00
 ;;9002226.02101,"1800,54569-6378-00 ",.02)
 ;;54569-6378-00
 ;;9002226.02101,"1800,54569-6543-00 ",.01)
 ;;54569-6543-00
 ;;9002226.02101,"1800,54569-6543-00 ",.02)
 ;;54569-6543-00
 ;;9002226.02101,"1800,54569-6544-00 ",.01)
 ;;54569-6544-00
 ;;9002226.02101,"1800,54569-6544-00 ",.02)
 ;;54569-6544-00
 ;;9002226.02101,"1800,54569-6609-00 ",.01)
 ;;54569-6609-00
 ;;9002226.02101,"1800,54569-6609-00 ",.02)
 ;;54569-6609-00
 ;;9002226.02101,"1800,54569-8804-00 ",.01)
 ;;54569-8804-00
 ;;9002226.02101,"1800,54569-8804-00 ",.02)
 ;;54569-8804-00
 ;;9002226.02101,"1800,54868-0845-00 ",.01)
 ;;54868-0845-00
 ;;9002226.02101,"1800,54868-0845-00 ",.02)
 ;;54868-0845-00
 ;;9002226.02101,"1800,54868-0845-01 ",.01)
 ;;54868-0845-01
 ;;9002226.02101,"1800,54868-0845-01 ",.02)
 ;;54868-0845-01
 ;;9002226.02101,"1800,54868-0845-02 ",.01)
 ;;54868-0845-02
 ;;9002226.02101,"1800,54868-0845-02 ",.02)
 ;;54868-0845-02
 ;;9002226.02101,"1800,54868-0845-03 ",.01)
 ;;54868-0845-03
 ;;9002226.02101,"1800,54868-0845-03 ",.02)
 ;;54868-0845-03
 ;;9002226.02101,"1800,54868-0846-00 ",.01)
 ;;54868-0846-00
 ;;9002226.02101,"1800,54868-0846-00 ",.02)
 ;;54868-0846-00
 ;;9002226.02101,"1800,54868-0846-01 ",.01)
 ;;54868-0846-01
 ;;9002226.02101,"1800,54868-0846-01 ",.02)
 ;;54868-0846-01
 ;;9002226.02101,"1800,54868-0846-02 ",.01)
 ;;54868-0846-02
 ;;9002226.02101,"1800,54868-0846-02 ",.02)
 ;;54868-0846-02
 ;;9002226.02101,"1800,54868-0846-03 ",.01)
 ;;54868-0846-03
 ;;9002226.02101,"1800,54868-0846-03 ",.02)
 ;;54868-0846-03
 ;;9002226.02101,"1800,54868-0846-04 ",.01)
 ;;54868-0846-04
 ;;9002226.02101,"1800,54868-0846-04 ",.02)
 ;;54868-0846-04
 ;;9002226.02101,"1800,54868-0846-05 ",.01)
 ;;54868-0846-05
 ;;9002226.02101,"1800,54868-0846-05 ",.02)
 ;;54868-0846-05
 ;;9002226.02101,"1800,54868-0846-06 ",.01)
 ;;54868-0846-06
 ;;9002226.02101,"1800,54868-0846-06 ",.02)
 ;;54868-0846-06
 ;;9002226.02101,"1800,54868-2642-00 ",.01)
 ;;54868-2642-00
 ;;9002226.02101,"1800,54868-2642-00 ",.02)
 ;;54868-2642-00
 ;;9002226.02101,"1800,54868-2642-01 ",.01)
 ;;54868-2642-01
 ;;9002226.02101,"1800,54868-2642-01 ",.02)
 ;;54868-2642-01
 ;;9002226.02101,"1800,54868-2642-02 ",.01)
 ;;54868-2642-02