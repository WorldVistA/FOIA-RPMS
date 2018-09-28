BGP8ZX24 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"872,55887-0594-30 ",.02)
 ;;55887-0594-30
 ;;9002226.02101,"872,55887-0594-90 ",.01)
 ;;55887-0594-90
 ;;9002226.02101,"872,55887-0594-90 ",.02)
 ;;55887-0594-90
 ;;9002226.02101,"872,55887-0595-30 ",.01)
 ;;55887-0595-30
 ;;9002226.02101,"872,55887-0595-30 ",.02)
 ;;55887-0595-30
 ;;9002226.02101,"872,55887-0595-90 ",.01)
 ;;55887-0595-90
 ;;9002226.02101,"872,55887-0595-90 ",.02)
 ;;55887-0595-90
 ;;9002226.02101,"872,55887-0596-01 ",.01)
 ;;55887-0596-01
 ;;9002226.02101,"872,55887-0596-01 ",.02)
 ;;55887-0596-01
 ;;9002226.02101,"872,55887-0596-30 ",.01)
 ;;55887-0596-30
 ;;9002226.02101,"872,55887-0596-30 ",.02)
 ;;55887-0596-30
 ;;9002226.02101,"872,55887-0596-90 ",.01)
 ;;55887-0596-90
 ;;9002226.02101,"872,55887-0596-90 ",.02)
 ;;55887-0596-90
 ;;9002226.02101,"872,55887-0612-01 ",.01)
 ;;55887-0612-01
 ;;9002226.02101,"872,55887-0612-01 ",.02)
 ;;55887-0612-01
 ;;9002226.02101,"872,55887-0612-30 ",.01)
 ;;55887-0612-30
 ;;9002226.02101,"872,55887-0612-30 ",.02)
 ;;55887-0612-30
 ;;9002226.02101,"872,55887-0612-60 ",.01)
 ;;55887-0612-60
 ;;9002226.02101,"872,55887-0612-60 ",.02)
 ;;55887-0612-60
 ;;9002226.02101,"872,55887-0612-90 ",.01)
 ;;55887-0612-90
 ;;9002226.02101,"872,55887-0612-90 ",.02)
 ;;55887-0612-90
 ;;9002226.02101,"872,55887-0612-92 ",.01)
 ;;55887-0612-92
 ;;9002226.02101,"872,55887-0612-92 ",.02)
 ;;55887-0612-92
 ;;9002226.02101,"872,55887-0875-30 ",.01)
 ;;55887-0875-30
 ;;9002226.02101,"872,55887-0875-30 ",.02)
 ;;55887-0875-30
 ;;9002226.02101,"872,55887-0984-30 ",.01)
 ;;55887-0984-30
 ;;9002226.02101,"872,55887-0984-30 ",.02)
 ;;55887-0984-30
 ;;9002226.02101,"872,57237-0026-01 ",.01)
 ;;57237-0026-01
 ;;9002226.02101,"872,57237-0026-01 ",.02)
 ;;57237-0026-01
 ;;9002226.02101,"872,57237-0026-30 ",.01)
 ;;57237-0026-30
 ;;9002226.02101,"872,57237-0026-30 ",.02)
 ;;57237-0026-30
 ;;9002226.02101,"872,57237-0027-01 ",.01)
 ;;57237-0027-01
 ;;9002226.02101,"872,57237-0027-01 ",.02)
 ;;57237-0027-01
 ;;9002226.02101,"872,57237-0027-30 ",.01)
 ;;57237-0027-30
 ;;9002226.02101,"872,57237-0027-30 ",.02)
 ;;57237-0027-30
 ;;9002226.02101,"872,57237-0052-00 ",.01)
 ;;57237-0052-00
 ;;9002226.02101,"872,57237-0052-00 ",.02)
 ;;57237-0052-00
 ;;9002226.02101,"872,57237-0052-05 ",.01)
 ;;57237-0052-05
 ;;9002226.02101,"872,57237-0052-05 ",.02)
 ;;57237-0052-05
 ;;9002226.02101,"872,57237-0053-00 ",.01)
 ;;57237-0053-00
 ;;9002226.02101,"872,57237-0053-00 ",.02)
 ;;57237-0053-00
 ;;9002226.02101,"872,57237-0053-99 ",.01)
 ;;57237-0053-99
 ;;9002226.02101,"872,57237-0053-99 ",.02)
 ;;57237-0053-99
 ;;9002226.02101,"872,57237-0054-00 ",.01)
 ;;57237-0054-00
 ;;9002226.02101,"872,57237-0054-00 ",.02)
 ;;57237-0054-00
 ;;9002226.02101,"872,57237-0054-99 ",.01)
 ;;57237-0054-99
 ;;9002226.02101,"872,57237-0054-99 ",.02)
 ;;57237-0054-99
 ;;9002226.02101,"872,57237-0055-00 ",.01)
 ;;57237-0055-00
 ;;9002226.02101,"872,57237-0055-00 ",.02)
 ;;57237-0055-00
 ;;9002226.02101,"872,57237-0055-99 ",.01)
 ;;57237-0055-99
 ;;9002226.02101,"872,57237-0055-99 ",.02)
 ;;57237-0055-99
 ;;9002226.02101,"872,57237-0056-00 ",.01)
 ;;57237-0056-00
 ;;9002226.02101,"872,57237-0056-00 ",.02)
 ;;57237-0056-00
 ;;9002226.02101,"872,57237-0057-00 ",.01)
 ;;57237-0057-00
 ;;9002226.02101,"872,57237-0057-00 ",.02)
 ;;57237-0057-00
 ;;9002226.02101,"872,57237-0057-99 ",.01)
 ;;57237-0057-99
 ;;9002226.02101,"872,57237-0057-99 ",.02)
 ;;57237-0057-99
 ;;9002226.02101,"872,57237-0089-01 ",.01)
 ;;57237-0089-01
 ;;9002226.02101,"872,57237-0089-01 ",.02)
 ;;57237-0089-01
 ;;9002226.02101,"872,57237-0090-01 ",.01)
 ;;57237-0090-01
 ;;9002226.02101,"872,57237-0090-01 ",.02)
 ;;57237-0090-01
 ;;9002226.02101,"872,57237-0091-01 ",.01)
 ;;57237-0091-01
 ;;9002226.02101,"872,57237-0091-01 ",.02)
 ;;57237-0091-01
 ;;9002226.02101,"872,57237-0142-01 ",.01)
 ;;57237-0142-01
 ;;9002226.02101,"872,57237-0142-01 ",.02)
 ;;57237-0142-01
 ;;9002226.02101,"872,57237-0143-01 ",.01)
 ;;57237-0143-01
 ;;9002226.02101,"872,57237-0143-01 ",.02)
 ;;57237-0143-01
 ;;9002226.02101,"872,57237-0143-05 ",.01)
 ;;57237-0143-05
 ;;9002226.02101,"872,57237-0143-05 ",.02)
 ;;57237-0143-05
 ;;9002226.02101,"872,57237-0144-01 ",.01)
 ;;57237-0144-01
 ;;9002226.02101,"872,57237-0144-01 ",.02)
 ;;57237-0144-01
 ;;9002226.02101,"872,57237-0144-05 ",.01)
 ;;57237-0144-05
 ;;9002226.02101,"872,57237-0144-05 ",.02)
 ;;57237-0144-05
 ;;9002226.02101,"872,57237-0145-01 ",.01)
 ;;57237-0145-01
 ;;9002226.02101,"872,57237-0145-01 ",.02)
 ;;57237-0145-01
 ;;9002226.02101,"872,57237-0145-05 ",.01)
 ;;57237-0145-05
 ;;9002226.02101,"872,57237-0145-05 ",.02)
 ;;57237-0145-05
 ;;9002226.02101,"872,57237-0146-01 ",.01)
 ;;57237-0146-01
 ;;9002226.02101,"872,57237-0146-01 ",.02)
 ;;57237-0146-01
 ;;9002226.02101,"872,57237-0146-05 ",.01)
 ;;57237-0146-05
 ;;9002226.02101,"872,57237-0146-05 ",.02)
 ;;57237-0146-05
 ;;9002226.02101,"872,57237-0147-01 ",.01)
 ;;57237-0147-01
 ;;9002226.02101,"872,57237-0147-01 ",.02)
 ;;57237-0147-01
 ;;9002226.02101,"872,57237-0147-05 ",.01)
 ;;57237-0147-05
 ;;9002226.02101,"872,57237-0147-05 ",.02)
 ;;57237-0147-05
 ;;9002226.02101,"872,57237-0222-01 ",.01)
 ;;57237-0222-01
 ;;9002226.02101,"872,57237-0222-01 ",.02)
 ;;57237-0222-01
 ;;9002226.02101,"872,57237-0222-30 ",.01)
 ;;57237-0222-30
 ;;9002226.02101,"872,57237-0222-30 ",.02)
 ;;57237-0222-30
 ;;9002226.02101,"872,57237-0223-01 ",.01)
 ;;57237-0223-01
 ;;9002226.02101,"872,57237-0223-01 ",.02)
 ;;57237-0223-01
 ;;9002226.02101,"872,57237-0223-05 ",.01)
 ;;57237-0223-05
 ;;9002226.02101,"872,57237-0223-05 ",.02)
 ;;57237-0223-05
 ;;9002226.02101,"872,57237-0224-01 ",.01)
 ;;57237-0224-01
 ;;9002226.02101,"872,57237-0224-01 ",.02)
 ;;57237-0224-01
 ;;9002226.02101,"872,57237-0224-05 ",.01)
 ;;57237-0224-05
 ;;9002226.02101,"872,57237-0224-05 ",.02)
 ;;57237-0224-05
 ;;9002226.02101,"872,57237-0225-01 ",.01)
 ;;57237-0225-01
 ;;9002226.02101,"872,57237-0225-01 ",.02)
 ;;57237-0225-01
 ;;9002226.02101,"872,57237-0225-05 ",.01)
 ;;57237-0225-05
 ;;9002226.02101,"872,57237-0225-05 ",.02)
 ;;57237-0225-05
 ;;9002226.02101,"872,57866-0274-01 ",.01)
 ;;57866-0274-01
 ;;9002226.02101,"872,57866-0274-01 ",.02)
 ;;57866-0274-01
 ;;9002226.02101,"872,57866-0275-02 ",.01)
 ;;57866-0275-02
 ;;9002226.02101,"872,57866-0275-02 ",.02)
 ;;57866-0275-02
 ;;9002226.02101,"872,57866-2000-01 ",.01)
 ;;57866-2000-01
 ;;9002226.02101,"872,57866-2000-01 ",.02)
 ;;57866-2000-01
 ;;9002226.02101,"872,57866-3138-01 ",.01)
 ;;57866-3138-01
 ;;9002226.02101,"872,57866-3138-01 ",.02)
 ;;57866-3138-01
 ;;9002226.02101,"872,57866-5000-01 ",.01)
 ;;57866-5000-01
 ;;9002226.02101,"872,57866-5000-01 ",.02)
 ;;57866-5000-01
 ;;9002226.02101,"872,57866-6103-01 ",.01)
 ;;57866-6103-01
 ;;9002226.02101,"872,57866-6103-01 ",.02)
 ;;57866-6103-01
 ;;9002226.02101,"872,57866-6103-02 ",.01)
 ;;57866-6103-02
 ;;9002226.02101,"872,57866-6103-02 ",.02)
 ;;57866-6103-02
 ;;9002226.02101,"872,57866-6103-03 ",.01)
 ;;57866-6103-03
 ;;9002226.02101,"872,57866-6103-03 ",.02)
 ;;57866-6103-03
 ;;9002226.02101,"872,57866-6103-04 ",.01)
 ;;57866-6103-04
 ;;9002226.02101,"872,57866-6103-04 ",.02)
 ;;57866-6103-04
 ;;9002226.02101,"872,57866-6106-01 ",.01)
 ;;57866-6106-01
 ;;9002226.02101,"872,57866-6106-01 ",.02)
 ;;57866-6106-01
 ;;9002226.02101,"872,57866-6106-02 ",.01)
 ;;57866-6106-02
 ;;9002226.02101,"872,57866-6106-02 ",.02)
 ;;57866-6106-02
 ;;9002226.02101,"872,57866-6106-03 ",.01)
 ;;57866-6106-03
 ;;9002226.02101,"872,57866-6106-03 ",.02)
 ;;57866-6106-03
 ;;9002226.02101,"872,57866-6106-04 ",.01)
 ;;57866-6106-04
 ;;9002226.02101,"872,57866-6106-04 ",.02)
 ;;57866-6106-04
 ;;9002226.02101,"872,57866-6859-01 ",.01)
 ;;57866-6859-01
 ;;9002226.02101,"872,57866-6859-01 ",.02)
 ;;57866-6859-01
 ;;9002226.02101,"872,57866-6859-02 ",.01)
 ;;57866-6859-02
 ;;9002226.02101,"872,57866-6859-02 ",.02)
 ;;57866-6859-02
 ;;9002226.02101,"872,57866-6859-03 ",.01)
 ;;57866-6859-03
 ;;9002226.02101,"872,57866-6859-03 ",.02)
 ;;57866-6859-03
 ;;9002226.02101,"872,57866-6859-04 ",.01)
 ;;57866-6859-04
 ;;9002226.02101,"872,57866-6859-04 ",.02)
 ;;57866-6859-04
 ;;9002226.02101,"872,57866-8700-01 ",.01)
 ;;57866-8700-01
 ;;9002226.02101,"872,57866-8700-01 ",.02)
 ;;57866-8700-01
 ;;9002226.02101,"872,58016-0065-00 ",.01)
 ;;58016-0065-00
 ;;9002226.02101,"872,58016-0065-00 ",.02)
 ;;58016-0065-00
 ;;9002226.02101,"872,58016-0065-30 ",.01)
 ;;58016-0065-30
 ;;9002226.02101,"872,58016-0065-30 ",.02)
 ;;58016-0065-30
 ;;9002226.02101,"872,58016-0065-60 ",.01)
 ;;58016-0065-60
 ;;9002226.02101,"872,58016-0065-60 ",.02)
 ;;58016-0065-60
 ;;9002226.02101,"872,58016-0065-90 ",.01)
 ;;58016-0065-90
 ;;9002226.02101,"872,58016-0065-90 ",.02)
 ;;58016-0065-90
 ;;9002226.02101,"872,58016-0069-00 ",.01)
 ;;58016-0069-00
 ;;9002226.02101,"872,58016-0069-00 ",.02)
 ;;58016-0069-00
 ;;9002226.02101,"872,58016-0069-30 ",.01)
 ;;58016-0069-30
 ;;9002226.02101,"872,58016-0069-30 ",.02)
 ;;58016-0069-30
 ;;9002226.02101,"872,58016-0069-60 ",.01)
 ;;58016-0069-60
 ;;9002226.02101,"872,58016-0069-60 ",.02)
 ;;58016-0069-60
 ;;9002226.02101,"872,58016-0069-90 ",.01)
 ;;58016-0069-90
 ;;9002226.02101,"872,58016-0069-90 ",.02)
 ;;58016-0069-90
 ;;9002226.02101,"872,58016-0228-00 ",.01)
 ;;58016-0228-00
 ;;9002226.02101,"872,58016-0228-00 ",.02)
 ;;58016-0228-00
 ;;9002226.02101,"872,58016-0228-02 ",.01)
 ;;58016-0228-02
 ;;9002226.02101,"872,58016-0228-02 ",.02)
 ;;58016-0228-02
 ;;9002226.02101,"872,58016-0228-30 ",.01)
 ;;58016-0228-30
 ;;9002226.02101,"872,58016-0228-30 ",.02)
 ;;58016-0228-30
 ;;9002226.02101,"872,58016-0228-60 ",.01)
 ;;58016-0228-60
 ;;9002226.02101,"872,58016-0228-60 ",.02)
 ;;58016-0228-60
 ;;9002226.02101,"872,58016-0228-90 ",.01)
 ;;58016-0228-90
 ;;9002226.02101,"872,58016-0228-90 ",.02)
 ;;58016-0228-90
 ;;9002226.02101,"872,58016-0363-00 ",.01)
 ;;58016-0363-00
 ;;9002226.02101,"872,58016-0363-00 ",.02)
 ;;58016-0363-00
 ;;9002226.02101,"872,58016-0363-14 ",.01)
 ;;58016-0363-14
 ;;9002226.02101,"872,58016-0363-14 ",.02)
 ;;58016-0363-14
 ;;9002226.02101,"872,58016-0363-21 ",.01)
 ;;58016-0363-21
 ;;9002226.02101,"872,58016-0363-21 ",.02)
 ;;58016-0363-21
 ;;9002226.02101,"872,58016-0363-30 ",.01)
 ;;58016-0363-30
 ;;9002226.02101,"872,58016-0363-30 ",.02)
 ;;58016-0363-30
 ;;9002226.02101,"872,58016-0363-60 ",.01)
 ;;58016-0363-60
 ;;9002226.02101,"872,58016-0363-60 ",.02)
 ;;58016-0363-60
 ;;9002226.02101,"872,58016-0420-00 ",.01)
 ;;58016-0420-00
 ;;9002226.02101,"872,58016-0420-00 ",.02)
 ;;58016-0420-00
 ;;9002226.02101,"872,58016-0420-10 ",.01)
 ;;58016-0420-10
 ;;9002226.02101,"872,58016-0420-10 ",.02)
 ;;58016-0420-10
 ;;9002226.02101,"872,58016-0420-30 ",.01)
 ;;58016-0420-30
 ;;9002226.02101,"872,58016-0420-30 ",.02)
 ;;58016-0420-30
 ;;9002226.02101,"872,58016-0420-60 ",.01)
 ;;58016-0420-60
 ;;9002226.02101,"872,58016-0420-60 ",.02)
 ;;58016-0420-60
 ;;9002226.02101,"872,58016-0420-90 ",.01)
 ;;58016-0420-90
 ;;9002226.02101,"872,58016-0420-90 ",.02)
 ;;58016-0420-90
 ;;9002226.02101,"872,58016-0564-00 ",.01)
 ;;58016-0564-00
 ;;9002226.02101,"872,58016-0564-00 ",.02)
 ;;58016-0564-00
 ;;9002226.02101,"872,58016-0564-30 ",.01)
 ;;58016-0564-30
 ;;9002226.02101,"872,58016-0564-30 ",.02)
 ;;58016-0564-30
 ;;9002226.02101,"872,58016-0564-60 ",.01)
 ;;58016-0564-60
 ;;9002226.02101,"872,58016-0564-60 ",.02)
 ;;58016-0564-60
 ;;9002226.02101,"872,58016-0564-90 ",.01)
 ;;58016-0564-90
 ;;9002226.02101,"872,58016-0564-90 ",.02)
 ;;58016-0564-90
 ;;9002226.02101,"872,58016-0571-00 ",.01)
 ;;58016-0571-00