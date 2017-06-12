BGP71S26 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"875,63874-0419-16 ",.01)
 ;;63874-0419-16
 ;;9002226.02101,"875,63874-0419-16 ",.02)
 ;;63874-0419-16
 ;;9002226.02101,"875,63874-0419-20 ",.01)
 ;;63874-0419-20
 ;;9002226.02101,"875,63874-0419-20 ",.02)
 ;;63874-0419-20
 ;;9002226.02101,"875,63874-0419-21 ",.01)
 ;;63874-0419-21
 ;;9002226.02101,"875,63874-0419-21 ",.02)
 ;;63874-0419-21
 ;;9002226.02101,"875,63874-0419-24 ",.01)
 ;;63874-0419-24
 ;;9002226.02101,"875,63874-0419-24 ",.02)
 ;;63874-0419-24
 ;;9002226.02101,"875,63874-0419-28 ",.01)
 ;;63874-0419-28
 ;;9002226.02101,"875,63874-0419-28 ",.02)
 ;;63874-0419-28
 ;;9002226.02101,"875,63874-0419-30 ",.01)
 ;;63874-0419-30
 ;;9002226.02101,"875,63874-0419-30 ",.02)
 ;;63874-0419-30
 ;;9002226.02101,"875,63874-0419-40 ",.01)
 ;;63874-0419-40
 ;;9002226.02101,"875,63874-0419-40 ",.02)
 ;;63874-0419-40
 ;;9002226.02101,"875,63874-0419-42 ",.01)
 ;;63874-0419-42
 ;;9002226.02101,"875,63874-0419-42 ",.02)
 ;;63874-0419-42
 ;;9002226.02101,"875,63874-0419-50 ",.01)
 ;;63874-0419-50
 ;;9002226.02101,"875,63874-0419-50 ",.02)
 ;;63874-0419-50
 ;;9002226.02101,"875,63874-0419-56 ",.01)
 ;;63874-0419-56
 ;;9002226.02101,"875,63874-0419-56 ",.02)
 ;;63874-0419-56
 ;;9002226.02101,"875,63874-0419-60 ",.01)
 ;;63874-0419-60
 ;;9002226.02101,"875,63874-0419-60 ",.02)
 ;;63874-0419-60
 ;;9002226.02101,"875,63874-0419-72 ",.01)
 ;;63874-0419-72
 ;;9002226.02101,"875,63874-0419-72 ",.02)
 ;;63874-0419-72
 ;;9002226.02101,"875,63874-0419-74 ",.01)
 ;;63874-0419-74
 ;;9002226.02101,"875,63874-0419-74 ",.02)
 ;;63874-0419-74
 ;;9002226.02101,"875,63874-0419-77 ",.01)
 ;;63874-0419-77
 ;;9002226.02101,"875,63874-0419-77 ",.02)
 ;;63874-0419-77
 ;;9002226.02101,"875,63874-0419-90 ",.01)
 ;;63874-0419-90
 ;;9002226.02101,"875,63874-0419-90 ",.02)
 ;;63874-0419-90
 ;;9002226.02101,"875,63874-0531-10 ",.01)
 ;;63874-0531-10
 ;;9002226.02101,"875,63874-0531-10 ",.02)
 ;;63874-0531-10
 ;;9002226.02101,"875,63874-0531-14 ",.01)
 ;;63874-0531-14
 ;;9002226.02101,"875,63874-0531-14 ",.02)
 ;;63874-0531-14
 ;;9002226.02101,"875,63874-0531-30 ",.01)
 ;;63874-0531-30
 ;;9002226.02101,"875,63874-0531-30 ",.02)
 ;;63874-0531-30
 ;;9002226.02101,"875,63874-0531-40 ",.01)
 ;;63874-0531-40
 ;;9002226.02101,"875,63874-0531-40 ",.02)
 ;;63874-0531-40
 ;;9002226.02101,"875,63874-1101-03 ",.01)
 ;;63874-1101-03
 ;;9002226.02101,"875,63874-1101-03 ",.02)
 ;;63874-1101-03
 ;;9002226.02101,"875,63874-1101-06 ",.01)
 ;;63874-1101-06
 ;;9002226.02101,"875,63874-1101-06 ",.02)
 ;;63874-1101-06
 ;;9002226.02101,"875,63874-1101-09 ",.01)
 ;;63874-1101-09
 ;;9002226.02101,"875,63874-1101-09 ",.02)
 ;;63874-1101-09
 ;;9002226.02101,"875,63874-1186-06 ",.01)
 ;;63874-1186-06
 ;;9002226.02101,"875,63874-1186-06 ",.02)
 ;;63874-1186-06
 ;;9002226.02101,"875,63874-1186-09 ",.01)
 ;;63874-1186-09
 ;;9002226.02101,"875,63874-1186-09 ",.02)
 ;;63874-1186-09
 ;;9002226.02101,"875,64205-0541-30 ",.01)
 ;;64205-0541-30
 ;;9002226.02101,"875,64205-0541-30 ",.02)
 ;;64205-0541-30
 ;;9002226.02101,"875,64720-0103-10 ",.01)
 ;;64720-0103-10
 ;;9002226.02101,"875,64720-0103-10 ",.02)
 ;;64720-0103-10
 ;;9002226.02101,"875,64720-0103-11 ",.01)
 ;;64720-0103-11
 ;;9002226.02101,"875,64720-0103-11 ",.02)
 ;;64720-0103-11
 ;;9002226.02101,"875,64720-0103-50 ",.01)
 ;;64720-0103-50
 ;;9002226.02101,"875,64720-0103-50 ",.02)
 ;;64720-0103-50
 ;;9002226.02101,"875,64720-0126-10 ",.01)
 ;;64720-0126-10
 ;;9002226.02101,"875,64720-0126-10 ",.02)
 ;;64720-0126-10
 ;;9002226.02101,"875,64720-0321-10 ",.01)
 ;;64720-0321-10
 ;;9002226.02101,"875,64720-0321-10 ",.02)
 ;;64720-0321-10
 ;;9002226.02101,"875,64980-0174-01 ",.01)
 ;;64980-0174-01
 ;;9002226.02101,"875,64980-0174-01 ",.02)
 ;;64980-0174-01
 ;;9002226.02101,"875,64980-0174-05 ",.01)
 ;;64980-0174-05
 ;;9002226.02101,"875,64980-0174-05 ",.02)
 ;;64980-0174-05
 ;;9002226.02101,"875,64980-0174-10 ",.01)
 ;;64980-0174-10
 ;;9002226.02101,"875,64980-0174-10 ",.02)
 ;;64980-0174-10
 ;;9002226.02101,"875,64980-0175-01 ",.01)
 ;;64980-0175-01
 ;;9002226.02101,"875,64980-0175-01 ",.02)
 ;;64980-0175-01
 ;;9002226.02101,"875,64980-0176-01 ",.01)
 ;;64980-0176-01
 ;;9002226.02101,"875,64980-0176-01 ",.02)
 ;;64980-0176-01
 ;;9002226.02101,"875,65162-0541-10 ",.01)
 ;;65162-0541-10
 ;;9002226.02101,"875,65162-0541-10 ",.02)
 ;;65162-0541-10
 ;;9002226.02101,"875,65162-0541-11 ",.01)
 ;;65162-0541-11
 ;;9002226.02101,"875,65162-0541-11 ",.02)
 ;;65162-0541-11
 ;;9002226.02101,"875,65162-0541-50 ",.01)
 ;;65162-0541-50
 ;;9002226.02101,"875,65162-0541-50 ",.02)
 ;;65162-0541-50
 ;;9002226.02101,"875,65162-0553-10 ",.01)
 ;;65162-0553-10
 ;;9002226.02101,"875,65162-0553-10 ",.02)
 ;;65162-0553-10
 ;;9002226.02101,"875,65243-0290-09 ",.01)
 ;;65243-0290-09
 ;;9002226.02101,"875,65243-0290-09 ",.02)
 ;;65243-0290-09
 ;;9002226.02101,"875,65243-0290-12 ",.01)
 ;;65243-0290-12
 ;;9002226.02101,"875,65243-0290-12 ",.02)
 ;;65243-0290-12
 ;;9002226.02101,"875,65243-0345-03 ",.01)
 ;;65243-0345-03
 ;;9002226.02101,"875,65243-0345-03 ",.02)
 ;;65243-0345-03
 ;;9002226.02101,"875,65243-0345-06 ",.01)
 ;;65243-0345-06
 ;;9002226.02101,"875,65243-0345-06 ",.02)
 ;;65243-0345-06
 ;;9002226.02101,"875,65243-0345-09 ",.01)
 ;;65243-0345-09
 ;;9002226.02101,"875,65243-0345-09 ",.02)
 ;;65243-0345-09
 ;;9002226.02101,"875,65862-0158-01 ",.01)
 ;;65862-0158-01
 ;;9002226.02101,"875,65862-0158-01 ",.02)
 ;;65862-0158-01
 ;;9002226.02101,"875,65862-0158-05 ",.01)
 ;;65862-0158-05
 ;;9002226.02101,"875,65862-0158-05 ",.02)
 ;;65862-0158-05
 ;;9002226.02101,"875,65862-0158-99 ",.01)
 ;;65862-0158-99
 ;;9002226.02101,"875,65862-0158-99 ",.02)
 ;;65862-0158-99
 ;;9002226.02101,"875,65862-0190-01 ",.01)
 ;;65862-0190-01
 ;;9002226.02101,"875,65862-0190-01 ",.02)
 ;;65862-0190-01
 ;;9002226.02101,"875,65862-0191-01 ",.01)
 ;;65862-0191-01
 ;;9002226.02101,"875,65862-0191-01 ",.02)
 ;;65862-0191-01
 ;;9002226.02101,"875,65862-0191-05 ",.01)
 ;;65862-0191-05
 ;;9002226.02101,"875,65862-0191-05 ",.02)
 ;;65862-0191-05
 ;;9002226.02101,"875,65862-0191-99 ",.01)
 ;;65862-0191-99
 ;;9002226.02101,"875,65862-0191-99 ",.02)
 ;;65862-0191-99
 ;;9002226.02101,"875,66116-0141-30 ",.01)
 ;;66116-0141-30
 ;;9002226.02101,"875,66116-0141-30 ",.02)
 ;;66116-0141-30
 ;;9002226.02101,"875,66116-0224-30 ",.01)
 ;;66116-0224-30
 ;;9002226.02101,"875,66116-0224-30 ",.02)
 ;;66116-0224-30
 ;;9002226.02101,"875,66116-0613-20 ",.01)
 ;;66116-0613-20
 ;;9002226.02101,"875,66116-0613-20 ",.02)
 ;;66116-0613-20
 ;;9002226.02101,"875,66116-0624-20 ",.01)
 ;;66116-0624-20
 ;;9002226.02101,"875,66116-0624-20 ",.02)
 ;;66116-0624-20
 ;;9002226.02101,"875,66116-0626-30 ",.01)
 ;;66116-0626-30
 ;;9002226.02101,"875,66116-0626-30 ",.02)
 ;;66116-0626-30
 ;;9002226.02101,"875,66116-0627-30 ",.01)
 ;;66116-0627-30
 ;;9002226.02101,"875,66116-0627-30 ",.02)
 ;;66116-0627-30
 ;;9002226.02101,"875,66116-0628-15 ",.01)
 ;;66116-0628-15
 ;;9002226.02101,"875,66116-0628-15 ",.02)
 ;;66116-0628-15
 ;;9002226.02101,"875,66116-0629-30 ",.01)
 ;;66116-0629-30
 ;;9002226.02101,"875,66116-0629-30 ",.02)
 ;;66116-0629-30
 ;;9002226.02101,"875,66116-0631-30 ",.01)
 ;;66116-0631-30
 ;;9002226.02101,"875,66116-0631-30 ",.02)
 ;;66116-0631-30
 ;;9002226.02101,"875,66267-0043-12 ",.01)
 ;;66267-0043-12
 ;;9002226.02101,"875,66267-0043-12 ",.02)
 ;;66267-0043-12
 ;;9002226.02101,"875,66267-0043-15 ",.01)
 ;;66267-0043-15
 ;;9002226.02101,"875,66267-0043-15 ",.02)
 ;;66267-0043-15
 ;;9002226.02101,"875,66267-0043-20 ",.01)
 ;;66267-0043-20
 ;;9002226.02101,"875,66267-0043-20 ",.02)
 ;;66267-0043-20
 ;;9002226.02101,"875,66267-0043-30 ",.01)
 ;;66267-0043-30
 ;;9002226.02101,"875,66267-0043-30 ",.02)
 ;;66267-0043-30
 ;;9002226.02101,"875,66267-0043-40 ",.01)
 ;;66267-0043-40
 ;;9002226.02101,"875,66267-0043-40 ",.02)
 ;;66267-0043-40
 ;;9002226.02101,"875,66267-0043-45 ",.01)
 ;;66267-0043-45
 ;;9002226.02101,"875,66267-0043-45 ",.02)
 ;;66267-0043-45
 ;;9002226.02101,"875,66267-0043-56 ",.01)
 ;;66267-0043-56
 ;;9002226.02101,"875,66267-0043-56 ",.02)
 ;;66267-0043-56
 ;;9002226.02101,"875,66267-0043-60 ",.01)
 ;;66267-0043-60
 ;;9002226.02101,"875,66267-0043-60 ",.02)
 ;;66267-0043-60
 ;;9002226.02101,"875,66267-0043-84 ",.01)
 ;;66267-0043-84
 ;;9002226.02101,"875,66267-0043-84 ",.02)
 ;;66267-0043-84
 ;;9002226.02101,"875,66267-0043-90 ",.01)
 ;;66267-0043-90
 ;;9002226.02101,"875,66267-0043-90 ",.02)
 ;;66267-0043-90
 ;;9002226.02101,"875,66267-0043-91 ",.01)
 ;;66267-0043-91
 ;;9002226.02101,"875,66267-0043-91 ",.02)
 ;;66267-0043-91
 ;;9002226.02101,"875,66267-0055-00 ",.01)
 ;;66267-0055-00
 ;;9002226.02101,"875,66267-0055-00 ",.02)
 ;;66267-0055-00
 ;;9002226.02101,"875,66267-0055-20 ",.01)
 ;;66267-0055-20
 ;;9002226.02101,"875,66267-0055-20 ",.02)
 ;;66267-0055-20
 ;;9002226.02101,"875,66267-0055-30 ",.01)
 ;;66267-0055-30
 ;;9002226.02101,"875,66267-0055-30 ",.02)
 ;;66267-0055-30
 ;;9002226.02101,"875,66267-0055-40 ",.01)
 ;;66267-0055-40
 ;;9002226.02101,"875,66267-0055-40 ",.02)
 ;;66267-0055-40
 ;;9002226.02101,"875,66267-0055-60 ",.01)
 ;;66267-0055-60
 ;;9002226.02101,"875,66267-0055-60 ",.02)
 ;;66267-0055-60
 ;;9002226.02101,"875,66267-0055-91 ",.01)
 ;;66267-0055-91
 ;;9002226.02101,"875,66267-0055-91 ",.02)
 ;;66267-0055-91
 ;;9002226.02101,"875,66267-0064-10 ",.01)
 ;;66267-0064-10
 ;;9002226.02101,"875,66267-0064-10 ",.02)
 ;;66267-0064-10
 ;;9002226.02101,"875,66267-0064-15 ",.01)
 ;;66267-0064-15
 ;;9002226.02101,"875,66267-0064-15 ",.02)
 ;;66267-0064-15
 ;;9002226.02101,"875,66267-0064-20 ",.01)
 ;;66267-0064-20
 ;;9002226.02101,"875,66267-0064-20 ",.02)
 ;;66267-0064-20
 ;;9002226.02101,"875,66267-0064-30 ",.01)
 ;;66267-0064-30
 ;;9002226.02101,"875,66267-0064-30 ",.02)
 ;;66267-0064-30
 ;;9002226.02101,"875,66267-0064-40 ",.01)
 ;;66267-0064-40
 ;;9002226.02101,"875,66267-0064-40 ",.02)
 ;;66267-0064-40
 ;;9002226.02101,"875,66267-0064-45 ",.01)
 ;;66267-0064-45
 ;;9002226.02101,"875,66267-0064-45 ",.02)
 ;;66267-0064-45
 ;;9002226.02101,"875,66267-0064-56 ",.01)
 ;;66267-0064-56
 ;;9002226.02101,"875,66267-0064-56 ",.02)
 ;;66267-0064-56
 ;;9002226.02101,"875,66267-0064-60 ",.01)
 ;;66267-0064-60
 ;;9002226.02101,"875,66267-0064-60 ",.02)
 ;;66267-0064-60
 ;;9002226.02101,"875,66267-0064-90 ",.01)
 ;;66267-0064-90
 ;;9002226.02101,"875,66267-0064-90 ",.02)
 ;;66267-0064-90
 ;;9002226.02101,"875,66267-0064-91 ",.01)
 ;;66267-0064-91
 ;;9002226.02101,"875,66267-0064-91 ",.02)
 ;;66267-0064-91
 ;;9002226.02101,"875,66267-0145-20 ",.01)
 ;;66267-0145-20
 ;;9002226.02101,"875,66267-0145-20 ",.02)
 ;;66267-0145-20
 ;;9002226.02101,"875,66267-0145-30 ",.01)
 ;;66267-0145-30
 ;;9002226.02101,"875,66267-0145-30 ",.02)
 ;;66267-0145-30
 ;;9002226.02101,"875,66267-0145-40 ",.01)
 ;;66267-0145-40
 ;;9002226.02101,"875,66267-0145-40 ",.02)
 ;;66267-0145-40
 ;;9002226.02101,"875,66267-0145-60 ",.01)
 ;;66267-0145-60
 ;;9002226.02101,"875,66267-0145-60 ",.02)
 ;;66267-0145-60
 ;;9002226.02101,"875,66267-0145-90 ",.01)
 ;;66267-0145-90
 ;;9002226.02101,"875,66267-0145-90 ",.02)
 ;;66267-0145-90
 ;;9002226.02101,"875,66267-0146-12 ",.01)
 ;;66267-0146-12
 ;;9002226.02101,"875,66267-0146-12 ",.02)
 ;;66267-0146-12
 ;;9002226.02101,"875,66267-0146-20 ",.01)
 ;;66267-0146-20
 ;;9002226.02101,"875,66267-0146-20 ",.02)
 ;;66267-0146-20
 ;;9002226.02101,"875,66267-0146-30 ",.01)
 ;;66267-0146-30
 ;;9002226.02101,"875,66267-0146-30 ",.02)
 ;;66267-0146-30
 ;;9002226.02101,"875,66267-0146-40 ",.01)
 ;;66267-0146-40
 ;;9002226.02101,"875,66267-0146-40 ",.02)
 ;;66267-0146-40