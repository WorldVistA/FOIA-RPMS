BGP81W20 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1795,54569-0430-00 ",.01)
 ;;54569-0430-00
 ;;9002226.02101,"1795,54569-0430-00 ",.02)
 ;;54569-0430-00
 ;;9002226.02101,"1795,54569-1046-00 ",.01)
 ;;54569-1046-00
 ;;9002226.02101,"1795,54569-1046-00 ",.02)
 ;;54569-1046-00
 ;;9002226.02101,"1795,54569-1047-00 ",.01)
 ;;54569-1047-00
 ;;9002226.02101,"1795,54569-1047-00 ",.02)
 ;;54569-1047-00
 ;;9002226.02101,"1795,54569-1054-00 ",.01)
 ;;54569-1054-00
 ;;9002226.02101,"1795,54569-1054-00 ",.02)
 ;;54569-1054-00
 ;;9002226.02101,"1795,54569-1055-00 ",.01)
 ;;54569-1055-00
 ;;9002226.02101,"1795,54569-1055-00 ",.02)
 ;;54569-1055-00
 ;;9002226.02101,"1795,54569-1056-00 ",.01)
 ;;54569-1056-00
 ;;9002226.02101,"1795,54569-1056-00 ",.02)
 ;;54569-1056-00
 ;;9002226.02101,"1795,54569-1640-01 ",.01)
 ;;54569-1640-01
 ;;9002226.02101,"1795,54569-1640-01 ",.02)
 ;;54569-1640-01
 ;;9002226.02101,"1795,54569-1754-00 ",.01)
 ;;54569-1754-00
 ;;9002226.02101,"1795,54569-1754-00 ",.02)
 ;;54569-1754-00
 ;;9002226.02101,"1795,54569-1754-01 ",.01)
 ;;54569-1754-01
 ;;9002226.02101,"1795,54569-1754-01 ",.02)
 ;;54569-1754-01
 ;;9002226.02101,"1795,54569-1754-05 ",.01)
 ;;54569-1754-05
 ;;9002226.02101,"1795,54569-1754-05 ",.02)
 ;;54569-1754-05
 ;;9002226.02101,"1795,54569-1754-06 ",.01)
 ;;54569-1754-06
 ;;9002226.02101,"1795,54569-1754-06 ",.02)
 ;;54569-1754-06
 ;;9002226.02101,"1795,54569-1754-09 ",.01)
 ;;54569-1754-09
 ;;9002226.02101,"1795,54569-1754-09 ",.02)
 ;;54569-1754-09
 ;;9002226.02101,"1795,54569-2236-00 ",.01)
 ;;54569-2236-00
 ;;9002226.02101,"1795,54569-2236-00 ",.02)
 ;;54569-2236-00
 ;;9002226.02101,"1795,54569-2353-02 ",.01)
 ;;54569-2353-02
 ;;9002226.02101,"1795,54569-2353-02 ",.02)
 ;;54569-2353-02
 ;;9002226.02101,"1795,54569-2353-05 ",.01)
 ;;54569-2353-05
 ;;9002226.02101,"1795,54569-2353-05 ",.02)
 ;;54569-2353-05
 ;;9002226.02101,"1795,54569-2571-01 ",.01)
 ;;54569-2571-01
 ;;9002226.02101,"1795,54569-2571-01 ",.02)
 ;;54569-2571-01
 ;;9002226.02101,"1795,54569-3540-02 ",.01)
 ;;54569-3540-02
 ;;9002226.02101,"1795,54569-3540-02 ",.02)
 ;;54569-3540-02
 ;;9002226.02101,"1795,54569-3589-00 ",.01)
 ;;54569-3589-00
 ;;9002226.02101,"1795,54569-3589-00 ",.02)
 ;;54569-3589-00
 ;;9002226.02101,"1795,54569-3763-02 ",.01)
 ;;54569-3763-02
 ;;9002226.02101,"1795,54569-3763-02 ",.02)
 ;;54569-3763-02
 ;;9002226.02101,"1795,54569-3882-00 ",.01)
 ;;54569-3882-00
 ;;9002226.02101,"1795,54569-3882-00 ",.02)
 ;;54569-3882-00
 ;;9002226.02101,"1795,54569-4168-00 ",.01)
 ;;54569-4168-00
 ;;9002226.02101,"1795,54569-4168-00 ",.02)
 ;;54569-4168-00
 ;;9002226.02101,"1795,54569-4168-03 ",.01)
 ;;54569-4168-03
 ;;9002226.02101,"1795,54569-4168-03 ",.02)
 ;;54569-4168-03
 ;;9002226.02101,"1795,54569-4510-00 ",.01)
 ;;54569-4510-00
 ;;9002226.02101,"1795,54569-4510-00 ",.02)
 ;;54569-4510-00
 ;;9002226.02101,"1795,54569-5609-00 ",.01)
 ;;54569-5609-00
 ;;9002226.02101,"1795,54569-5609-00 ",.02)
 ;;54569-5609-00
 ;;9002226.02101,"1795,54569-5609-01 ",.01)
 ;;54569-5609-01
 ;;9002226.02101,"1795,54569-5609-01 ",.02)
 ;;54569-5609-01
 ;;9002226.02101,"1795,54569-5736-00 ",.01)
 ;;54569-5736-00
 ;;9002226.02101,"1795,54569-5736-00 ",.02)
 ;;54569-5736-00
 ;;9002226.02101,"1795,54569-5744-00 ",.01)
 ;;54569-5744-00
 ;;9002226.02101,"1795,54569-5744-00 ",.02)
 ;;54569-5744-00
 ;;9002226.02101,"1795,54569-5744-01 ",.01)
 ;;54569-5744-01
 ;;9002226.02101,"1795,54569-5744-01 ",.02)
 ;;54569-5744-01
 ;;9002226.02101,"1795,54569-5745-00 ",.01)
 ;;54569-5745-00
 ;;9002226.02101,"1795,54569-5745-00 ",.02)
 ;;54569-5745-00
 ;;9002226.02101,"1795,54569-5745-01 ",.01)
 ;;54569-5745-01
 ;;9002226.02101,"1795,54569-5745-01 ",.02)
 ;;54569-5745-01
 ;;9002226.02101,"1795,54569-5745-02 ",.01)
 ;;54569-5745-02
 ;;9002226.02101,"1795,54569-5745-02 ",.02)
 ;;54569-5745-02
 ;;9002226.02101,"1795,54569-5747-00 ",.01)
 ;;54569-5747-00
 ;;9002226.02101,"1795,54569-5747-00 ",.02)
 ;;54569-5747-00
 ;;9002226.02101,"1795,54569-5759-00 ",.01)
 ;;54569-5759-00
 ;;9002226.02101,"1795,54569-5759-00 ",.02)
 ;;54569-5759-00
 ;;9002226.02101,"1795,54569-6079-00 ",.01)
 ;;54569-6079-00
 ;;9002226.02101,"1795,54569-6079-00 ",.02)
 ;;54569-6079-00
 ;;9002226.02101,"1795,54569-6379-00 ",.01)
 ;;54569-6379-00
 ;;9002226.02101,"1795,54569-6379-00 ",.02)
 ;;54569-6379-00
 ;;9002226.02101,"1795,54569-8321-00 ",.01)
 ;;54569-8321-00
 ;;9002226.02101,"1795,54569-8321-00 ",.02)
 ;;54569-8321-00
 ;;9002226.02101,"1795,54569-8321-01 ",.01)
 ;;54569-8321-01
 ;;9002226.02101,"1795,54569-8321-01 ",.02)
 ;;54569-8321-01
 ;;9002226.02101,"1795,54569-8327-00 ",.01)
 ;;54569-8327-00
 ;;9002226.02101,"1795,54569-8327-00 ",.02)
 ;;54569-8327-00
 ;;9002226.02101,"1795,54569-8327-01 ",.01)
 ;;54569-8327-01
 ;;9002226.02101,"1795,54569-8327-01 ",.02)
 ;;54569-8327-01
 ;;9002226.02101,"1795,54569-8329-00 ",.01)
 ;;54569-8329-00
 ;;9002226.02101,"1795,54569-8329-00 ",.02)
 ;;54569-8329-00
 ;;9002226.02101,"1795,54569-8331-00 ",.01)
 ;;54569-8331-00
 ;;9002226.02101,"1795,54569-8331-00 ",.02)
 ;;54569-8331-00
 ;;9002226.02101,"1795,54569-9010-00 ",.01)
 ;;54569-9010-00
 ;;9002226.02101,"1795,54569-9010-00 ",.02)
 ;;54569-9010-00
 ;;9002226.02101,"1795,54569-9019-00 ",.01)
 ;;54569-9019-00
 ;;9002226.02101,"1795,54569-9019-00 ",.02)
 ;;54569-9019-00
 ;;9002226.02101,"1795,54569-9057-00 ",.01)
 ;;54569-9057-00
 ;;9002226.02101,"1795,54569-9057-00 ",.02)
 ;;54569-9057-00
 ;;9002226.02101,"1795,54569-9065-00 ",.01)
 ;;54569-9065-00
 ;;9002226.02101,"1795,54569-9065-00 ",.02)
 ;;54569-9065-00
 ;;9002226.02101,"1795,54569-9084-00 ",.01)
 ;;54569-9084-00
 ;;9002226.02101,"1795,54569-9084-00 ",.02)
 ;;54569-9084-00
 ;;9002226.02101,"1795,54738-0554-01 ",.01)
 ;;54738-0554-01
 ;;9002226.02101,"1795,54738-0554-01 ",.02)
 ;;54738-0554-01
 ;;9002226.02101,"1795,54738-0554-03 ",.01)
 ;;54738-0554-03
 ;;9002226.02101,"1795,54738-0554-03 ",.02)
 ;;54738-0554-03
 ;;9002226.02101,"1795,54738-0555-01 ",.01)
 ;;54738-0555-01
 ;;9002226.02101,"1795,54738-0555-01 ",.02)
 ;;54738-0555-01
 ;;9002226.02101,"1795,54738-0555-03 ",.01)
 ;;54738-0555-03
 ;;9002226.02101,"1795,54738-0555-03 ",.02)
 ;;54738-0555-03
 ;;9002226.02101,"1795,54766-0200-10 ",.01)
 ;;54766-0200-10
 ;;9002226.02101,"1795,54766-0200-10 ",.02)
 ;;54766-0200-10
 ;;9002226.02101,"1795,54838-0502-80 ",.01)
 ;;54838-0502-80
 ;;9002226.02101,"1795,54838-0502-80 ",.02)
 ;;54838-0502-80
 ;;9002226.02101,"1795,54838-0506-15 ",.01)
 ;;54838-0506-15
 ;;9002226.02101,"1795,54838-0506-15 ",.02)
 ;;54838-0506-15
 ;;9002226.02101,"1795,54838-0511-80 ",.01)
 ;;54838-0511-80
 ;;9002226.02101,"1795,54838-0511-80 ",.02)
 ;;54838-0511-80
 ;;9002226.02101,"1795,54859-0801-60 ",.01)
 ;;54859-0801-60
 ;;9002226.02101,"1795,54859-0801-60 ",.02)
 ;;54859-0801-60
 ;;9002226.02101,"1795,54868-0006-00 ",.01)
 ;;54868-0006-00
 ;;9002226.02101,"1795,54868-0006-00 ",.02)
 ;;54868-0006-00
 ;;9002226.02101,"1795,54868-0030-00 ",.01)
 ;;54868-0030-00
 ;;9002226.02101,"1795,54868-0030-00 ",.02)
 ;;54868-0030-00
 ;;9002226.02101,"1795,54868-0030-02 ",.01)
 ;;54868-0030-02
 ;;9002226.02101,"1795,54868-0030-02 ",.02)
 ;;54868-0030-02
 ;;9002226.02101,"1795,54868-0030-04 ",.01)
 ;;54868-0030-04
 ;;9002226.02101,"1795,54868-0030-04 ",.02)
 ;;54868-0030-04
 ;;9002226.02101,"1795,54868-0030-05 ",.01)
 ;;54868-0030-05
 ;;9002226.02101,"1795,54868-0030-05 ",.02)
 ;;54868-0030-05
 ;;9002226.02101,"1795,54868-0030-06 ",.01)
 ;;54868-0030-06
 ;;9002226.02101,"1795,54868-0030-06 ",.02)
 ;;54868-0030-06
 ;;9002226.02101,"1795,54868-0030-07 ",.01)
 ;;54868-0030-07
 ;;9002226.02101,"1795,54868-0030-07 ",.02)
 ;;54868-0030-07
 ;;9002226.02101,"1795,54868-0031-00 ",.01)
 ;;54868-0031-00
 ;;9002226.02101,"1795,54868-0031-00 ",.02)
 ;;54868-0031-00
 ;;9002226.02101,"1795,54868-0031-02 ",.01)
 ;;54868-0031-02
 ;;9002226.02101,"1795,54868-0031-02 ",.02)
 ;;54868-0031-02
 ;;9002226.02101,"1795,54868-0031-04 ",.01)
 ;;54868-0031-04
 ;;9002226.02101,"1795,54868-0031-04 ",.02)
 ;;54868-0031-04
 ;;9002226.02101,"1795,54868-0032-00 ",.01)
 ;;54868-0032-00
 ;;9002226.02101,"1795,54868-0032-00 ",.02)
 ;;54868-0032-00
 ;;9002226.02101,"1795,54868-0032-03 ",.01)
 ;;54868-0032-03
 ;;9002226.02101,"1795,54868-0032-03 ",.02)
 ;;54868-0032-03
 ;;9002226.02101,"1795,54868-0032-04 ",.01)
 ;;54868-0032-04
 ;;9002226.02101,"1795,54868-0032-04 ",.02)
 ;;54868-0032-04
 ;;9002226.02101,"1795,54868-0032-06 ",.01)
 ;;54868-0032-06
 ;;9002226.02101,"1795,54868-0032-06 ",.02)
 ;;54868-0032-06
 ;;9002226.02101,"1795,54868-0032-07 ",.01)
 ;;54868-0032-07
 ;;9002226.02101,"1795,54868-0032-07 ",.02)
 ;;54868-0032-07
 ;;9002226.02101,"1795,54868-0032-09 ",.01)
 ;;54868-0032-09
 ;;9002226.02101,"1795,54868-0032-09 ",.02)
 ;;54868-0032-09
 ;;9002226.02101,"1795,54868-0033-00 ",.01)
 ;;54868-0033-00
 ;;9002226.02101,"1795,54868-0033-00 ",.02)
 ;;54868-0033-00
 ;;9002226.02101,"1795,54868-0033-02 ",.01)
 ;;54868-0033-02
 ;;9002226.02101,"1795,54868-0033-02 ",.02)
 ;;54868-0033-02
 ;;9002226.02101,"1795,54868-0033-03 ",.01)
 ;;54868-0033-03
 ;;9002226.02101,"1795,54868-0033-03 ",.02)
 ;;54868-0033-03
 ;;9002226.02101,"1795,54868-0033-05 ",.01)
 ;;54868-0033-05
 ;;9002226.02101,"1795,54868-0033-05 ",.02)
 ;;54868-0033-05
 ;;9002226.02101,"1795,54868-0033-07 ",.01)
 ;;54868-0033-07
 ;;9002226.02101,"1795,54868-0033-07 ",.02)
 ;;54868-0033-07
 ;;9002226.02101,"1795,54868-0033-08 ",.01)
 ;;54868-0033-08
 ;;9002226.02101,"1795,54868-0033-08 ",.02)
 ;;54868-0033-08
 ;;9002226.02101,"1795,54868-0063-00 ",.01)
 ;;54868-0063-00
 ;;9002226.02101,"1795,54868-0063-00 ",.02)
 ;;54868-0063-00
 ;;9002226.02101,"1795,54868-0063-02 ",.01)
 ;;54868-0063-02
 ;;9002226.02101,"1795,54868-0063-02 ",.02)
 ;;54868-0063-02
 ;;9002226.02101,"1795,54868-0063-03 ",.01)
 ;;54868-0063-03
 ;;9002226.02101,"1795,54868-0063-03 ",.02)
 ;;54868-0063-03
 ;;9002226.02101,"1795,54868-0063-05 ",.01)
 ;;54868-0063-05
 ;;9002226.02101,"1795,54868-0063-05 ",.02)
 ;;54868-0063-05
 ;;9002226.02101,"1795,54868-0063-07 ",.01)
 ;;54868-0063-07
 ;;9002226.02101,"1795,54868-0063-07 ",.02)
 ;;54868-0063-07
 ;;9002226.02101,"1795,54868-0063-09 ",.01)
 ;;54868-0063-09
 ;;9002226.02101,"1795,54868-0063-09 ",.02)
 ;;54868-0063-09
 ;;9002226.02101,"1795,54868-0077-01 ",.01)
 ;;54868-0077-01
 ;;9002226.02101,"1795,54868-0077-01 ",.02)
 ;;54868-0077-01
 ;;9002226.02101,"1795,54868-0077-02 ",.01)
 ;;54868-0077-02
 ;;9002226.02101,"1795,54868-0077-02 ",.02)
 ;;54868-0077-02
 ;;9002226.02101,"1795,54868-0077-03 ",.01)
 ;;54868-0077-03
 ;;9002226.02101,"1795,54868-0077-03 ",.02)
 ;;54868-0077-03
 ;;9002226.02101,"1795,54868-0077-04 ",.01)
 ;;54868-0077-04
 ;;9002226.02101,"1795,54868-0077-04 ",.02)
 ;;54868-0077-04
 ;;9002226.02101,"1795,54868-0077-05 ",.01)
 ;;54868-0077-05
 ;;9002226.02101,"1795,54868-0077-05 ",.02)
 ;;54868-0077-05
 ;;9002226.02101,"1795,54868-0077-07 ",.01)
 ;;54868-0077-07
 ;;9002226.02101,"1795,54868-0077-07 ",.02)
 ;;54868-0077-07
 ;;9002226.02101,"1795,54868-0077-08 ",.01)
 ;;54868-0077-08
 ;;9002226.02101,"1795,54868-0077-08 ",.02)
 ;;54868-0077-08
 ;;9002226.02101,"1795,54868-0089-00 ",.01)
 ;;54868-0089-00
 ;;9002226.02101,"1795,54868-0089-00 ",.02)
 ;;54868-0089-00
 ;;9002226.02101,"1795,54868-0089-02 ",.01)
 ;;54868-0089-02
 ;;9002226.02101,"1795,54868-0089-02 ",.02)
 ;;54868-0089-02
 ;;9002226.02101,"1795,54868-0089-04 ",.01)
 ;;54868-0089-04
 ;;9002226.02101,"1795,54868-0089-04 ",.02)
 ;;54868-0089-04
 ;;9002226.02101,"1795,54868-0229-01 ",.01)
 ;;54868-0229-01
 ;;9002226.02101,"1795,54868-0229-01 ",.02)
 ;;54868-0229-01
 ;;9002226.02101,"1795,54868-0229-02 ",.01)
 ;;54868-0229-02