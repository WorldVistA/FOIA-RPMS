BGP51O24 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"804,63629-1339-03 ",.02)
 ;;63629-1339-03
 ;;9002226.02101,"804,63629-1339-04 ",.01)
 ;;63629-1339-04
 ;;9002226.02101,"804,63629-1339-04 ",.02)
 ;;63629-1339-04
 ;;9002226.02101,"804,63629-1339-05 ",.01)
 ;;63629-1339-05
 ;;9002226.02101,"804,63629-1339-05 ",.02)
 ;;63629-1339-05
 ;;9002226.02101,"804,63629-1339-06 ",.01)
 ;;63629-1339-06
 ;;9002226.02101,"804,63629-1339-06 ",.02)
 ;;63629-1339-06
 ;;9002226.02101,"804,63629-1339-07 ",.01)
 ;;63629-1339-07
 ;;9002226.02101,"804,63629-1339-07 ",.02)
 ;;63629-1339-07
 ;;9002226.02101,"804,63629-1339-08 ",.01)
 ;;63629-1339-08
 ;;9002226.02101,"804,63629-1339-08 ",.02)
 ;;63629-1339-08
 ;;9002226.02101,"804,63629-1339-09 ",.01)
 ;;63629-1339-09
 ;;9002226.02101,"804,63629-1339-09 ",.02)
 ;;63629-1339-09
 ;;9002226.02101,"804,63629-1339-10 ",.01)
 ;;63629-1339-10
 ;;9002226.02101,"804,63629-1339-10 ",.02)
 ;;63629-1339-10
 ;;9002226.02101,"804,63629-1564-01 ",.01)
 ;;63629-1564-01
 ;;9002226.02101,"804,63629-1564-01 ",.02)
 ;;63629-1564-01
 ;;9002226.02101,"804,63629-1564-02 ",.01)
 ;;63629-1564-02
 ;;9002226.02101,"804,63629-1564-02 ",.02)
 ;;63629-1564-02
 ;;9002226.02101,"804,63629-1564-03 ",.01)
 ;;63629-1564-03
 ;;9002226.02101,"804,63629-1564-03 ",.02)
 ;;63629-1564-03
 ;;9002226.02101,"804,63629-1564-04 ",.01)
 ;;63629-1564-04
 ;;9002226.02101,"804,63629-1564-04 ",.02)
 ;;63629-1564-04
 ;;9002226.02101,"804,63629-1564-05 ",.01)
 ;;63629-1564-05
 ;;9002226.02101,"804,63629-1564-05 ",.02)
 ;;63629-1564-05
 ;;9002226.02101,"804,63629-1564-06 ",.01)
 ;;63629-1564-06
 ;;9002226.02101,"804,63629-1564-06 ",.02)
 ;;63629-1564-06
 ;;9002226.02101,"804,63629-1564-07 ",.01)
 ;;63629-1564-07
 ;;9002226.02101,"804,63629-1564-07 ",.02)
 ;;63629-1564-07
 ;;9002226.02101,"804,63629-1564-08 ",.01)
 ;;63629-1564-08
 ;;9002226.02101,"804,63629-1564-08 ",.02)
 ;;63629-1564-08
 ;;9002226.02101,"804,63629-1564-09 ",.01)
 ;;63629-1564-09
 ;;9002226.02101,"804,63629-1564-09 ",.02)
 ;;63629-1564-09
 ;;9002226.02101,"804,63629-1564-10 ",.01)
 ;;63629-1564-10
 ;;9002226.02101,"804,63629-1564-10 ",.02)
 ;;63629-1564-10
 ;;9002226.02101,"804,63629-1586-01 ",.01)
 ;;63629-1586-01
 ;;9002226.02101,"804,63629-1586-01 ",.02)
 ;;63629-1586-01
 ;;9002226.02101,"804,63629-1586-02 ",.01)
 ;;63629-1586-02
 ;;9002226.02101,"804,63629-1586-02 ",.02)
 ;;63629-1586-02
 ;;9002226.02101,"804,63629-1586-03 ",.01)
 ;;63629-1586-03
 ;;9002226.02101,"804,63629-1586-03 ",.02)
 ;;63629-1586-03
 ;;9002226.02101,"804,63629-1586-04 ",.01)
 ;;63629-1586-04
 ;;9002226.02101,"804,63629-1586-04 ",.02)
 ;;63629-1586-04
 ;;9002226.02101,"804,63629-1586-05 ",.01)
 ;;63629-1586-05
 ;;9002226.02101,"804,63629-1586-05 ",.02)
 ;;63629-1586-05
 ;;9002226.02101,"804,63629-1586-06 ",.01)
 ;;63629-1586-06
 ;;9002226.02101,"804,63629-1586-06 ",.02)
 ;;63629-1586-06
 ;;9002226.02101,"804,63629-1586-07 ",.01)
 ;;63629-1586-07
 ;;9002226.02101,"804,63629-1586-07 ",.02)
 ;;63629-1586-07
 ;;9002226.02101,"804,63629-1586-08 ",.01)
 ;;63629-1586-08
 ;;9002226.02101,"804,63629-1586-08 ",.02)
 ;;63629-1586-08
 ;;9002226.02101,"804,63629-1586-09 ",.01)
 ;;63629-1586-09
 ;;9002226.02101,"804,63629-1586-09 ",.02)
 ;;63629-1586-09
 ;;9002226.02101,"804,63629-1622-01 ",.01)
 ;;63629-1622-01
 ;;9002226.02101,"804,63629-1622-01 ",.02)
 ;;63629-1622-01
 ;;9002226.02101,"804,63629-1622-02 ",.01)
 ;;63629-1622-02
 ;;9002226.02101,"804,63629-1622-02 ",.02)
 ;;63629-1622-02
 ;;9002226.02101,"804,63629-1622-03 ",.01)
 ;;63629-1622-03
 ;;9002226.02101,"804,63629-1622-03 ",.02)
 ;;63629-1622-03
 ;;9002226.02101,"804,63629-1622-04 ",.01)
 ;;63629-1622-04
 ;;9002226.02101,"804,63629-1622-04 ",.02)
 ;;63629-1622-04
 ;;9002226.02101,"804,63629-1622-05 ",.01)
 ;;63629-1622-05
 ;;9002226.02101,"804,63629-1622-05 ",.02)
 ;;63629-1622-05
 ;;9002226.02101,"804,63629-1622-06 ",.01)
 ;;63629-1622-06
 ;;9002226.02101,"804,63629-1622-06 ",.02)
 ;;63629-1622-06
 ;;9002226.02101,"804,63629-1622-07 ",.01)
 ;;63629-1622-07
 ;;9002226.02101,"804,63629-1622-07 ",.02)
 ;;63629-1622-07
 ;;9002226.02101,"804,63629-1622-08 ",.01)
 ;;63629-1622-08
 ;;9002226.02101,"804,63629-1622-08 ",.02)
 ;;63629-1622-08
 ;;9002226.02101,"804,63629-1623-01 ",.01)
 ;;63629-1623-01
 ;;9002226.02101,"804,63629-1623-01 ",.02)
 ;;63629-1623-01
 ;;9002226.02101,"804,63629-1623-02 ",.01)
 ;;63629-1623-02
 ;;9002226.02101,"804,63629-1623-02 ",.02)
 ;;63629-1623-02
 ;;9002226.02101,"804,63629-1623-03 ",.01)
 ;;63629-1623-03
 ;;9002226.02101,"804,63629-1623-03 ",.02)
 ;;63629-1623-03
 ;;9002226.02101,"804,63629-1623-04 ",.01)
 ;;63629-1623-04
 ;;9002226.02101,"804,63629-1623-04 ",.02)
 ;;63629-1623-04
 ;;9002226.02101,"804,63629-1623-05 ",.01)
 ;;63629-1623-05
 ;;9002226.02101,"804,63629-1623-05 ",.02)
 ;;63629-1623-05
 ;;9002226.02101,"804,63629-1623-06 ",.01)
 ;;63629-1623-06
 ;;9002226.02101,"804,63629-1623-06 ",.02)
 ;;63629-1623-06
 ;;9002226.02101,"804,63629-1623-07 ",.01)
 ;;63629-1623-07
 ;;9002226.02101,"804,63629-1623-07 ",.02)
 ;;63629-1623-07
 ;;9002226.02101,"804,63629-1623-08 ",.01)
 ;;63629-1623-08
 ;;9002226.02101,"804,63629-1623-08 ",.02)
 ;;63629-1623-08
 ;;9002226.02101,"804,63629-1640-01 ",.01)
 ;;63629-1640-01
 ;;9002226.02101,"804,63629-1640-01 ",.02)
 ;;63629-1640-01
 ;;9002226.02101,"804,63629-2768-01 ",.01)
 ;;63629-2768-01
 ;;9002226.02101,"804,63629-2768-01 ",.02)
 ;;63629-2768-01
 ;;9002226.02101,"804,63629-2768-02 ",.01)
 ;;63629-2768-02
 ;;9002226.02101,"804,63629-2768-02 ",.02)
 ;;63629-2768-02
 ;;9002226.02101,"804,63629-2768-03 ",.01)
 ;;63629-2768-03
 ;;9002226.02101,"804,63629-2768-03 ",.02)
 ;;63629-2768-03
 ;;9002226.02101,"804,63629-2768-04 ",.01)
 ;;63629-2768-04
 ;;9002226.02101,"804,63629-2768-04 ",.02)
 ;;63629-2768-04
 ;;9002226.02101,"804,63629-2768-05 ",.01)
 ;;63629-2768-05
 ;;9002226.02101,"804,63629-2768-05 ",.02)
 ;;63629-2768-05
 ;;9002226.02101,"804,63629-2768-06 ",.01)
 ;;63629-2768-06
 ;;9002226.02101,"804,63629-2768-06 ",.02)
 ;;63629-2768-06
 ;;9002226.02101,"804,63629-2768-07 ",.01)
 ;;63629-2768-07
 ;;9002226.02101,"804,63629-2768-07 ",.02)
 ;;63629-2768-07
 ;;9002226.02101,"804,63629-2768-08 ",.01)
 ;;63629-2768-08
 ;;9002226.02101,"804,63629-2768-08 ",.02)
 ;;63629-2768-08
 ;;9002226.02101,"804,63629-3640-01 ",.01)
 ;;63629-3640-01
 ;;9002226.02101,"804,63629-3640-01 ",.02)
 ;;63629-3640-01
 ;;9002226.02101,"804,63629-3640-02 ",.01)
 ;;63629-3640-02
 ;;9002226.02101,"804,63629-3640-02 ",.02)
 ;;63629-3640-02
 ;;9002226.02101,"804,63629-3640-03 ",.01)
 ;;63629-3640-03
 ;;9002226.02101,"804,63629-3640-03 ",.02)
 ;;63629-3640-03
 ;;9002226.02101,"804,63629-3640-04 ",.01)
 ;;63629-3640-04
 ;;9002226.02101,"804,63629-3640-04 ",.02)
 ;;63629-3640-04
 ;;9002226.02101,"804,63629-3640-05 ",.01)
 ;;63629-3640-05
 ;;9002226.02101,"804,63629-3640-05 ",.02)
 ;;63629-3640-05
 ;;9002226.02101,"804,63629-3640-06 ",.01)
 ;;63629-3640-06
 ;;9002226.02101,"804,63629-3640-06 ",.02)
 ;;63629-3640-06
 ;;9002226.02101,"804,63629-3640-07 ",.01)
 ;;63629-3640-07
 ;;9002226.02101,"804,63629-3640-07 ",.02)
 ;;63629-3640-07
 ;;9002226.02101,"804,63629-3640-08 ",.01)
 ;;63629-3640-08
 ;;9002226.02101,"804,63629-3640-08 ",.02)
 ;;63629-3640-08
 ;;9002226.02101,"804,63629-3640-09 ",.01)
 ;;63629-3640-09
 ;;9002226.02101,"804,63629-3640-09 ",.02)
 ;;63629-3640-09
 ;;9002226.02101,"804,63629-4205-01 ",.01)
 ;;63629-4205-01
 ;;9002226.02101,"804,63629-4205-01 ",.02)
 ;;63629-4205-01
 ;;9002226.02101,"804,63629-4205-02 ",.01)
 ;;63629-4205-02
 ;;9002226.02101,"804,63629-4205-02 ",.02)
 ;;63629-4205-02
 ;;9002226.02101,"804,63629-4205-03 ",.01)
 ;;63629-4205-03
 ;;9002226.02101,"804,63629-4205-03 ",.02)
 ;;63629-4205-03
 ;;9002226.02101,"804,63629-4205-04 ",.01)
 ;;63629-4205-04
 ;;9002226.02101,"804,63629-4205-04 ",.02)
 ;;63629-4205-04
 ;;9002226.02101,"804,63629-4205-05 ",.01)
 ;;63629-4205-05
 ;;9002226.02101,"804,63629-4205-05 ",.02)
 ;;63629-4205-05
 ;;9002226.02101,"804,63629-4205-06 ",.01)
 ;;63629-4205-06
 ;;9002226.02101,"804,63629-4205-06 ",.02)
 ;;63629-4205-06
 ;;9002226.02101,"804,63629-4205-07 ",.01)
 ;;63629-4205-07
 ;;9002226.02101,"804,63629-4205-07 ",.02)
 ;;63629-4205-07
 ;;9002226.02101,"804,63629-4205-08 ",.01)
 ;;63629-4205-08
 ;;9002226.02101,"804,63629-4205-08 ",.02)
 ;;63629-4205-08
 ;;9002226.02101,"804,63629-4664-01 ",.01)
 ;;63629-4664-01
 ;;9002226.02101,"804,63629-4664-01 ",.02)
 ;;63629-4664-01
 ;;9002226.02101,"804,63629-4664-02 ",.01)
 ;;63629-4664-02
 ;;9002226.02101,"804,63629-4664-02 ",.02)
 ;;63629-4664-02
 ;;9002226.02101,"804,63629-4664-03 ",.01)
 ;;63629-4664-03
 ;;9002226.02101,"804,63629-4664-03 ",.02)
 ;;63629-4664-03
 ;;9002226.02101,"804,63629-4664-04 ",.01)
 ;;63629-4664-04
 ;;9002226.02101,"804,63629-4664-04 ",.02)
 ;;63629-4664-04
 ;;9002226.02101,"804,63629-4707-01 ",.01)
 ;;63629-4707-01
 ;;9002226.02101,"804,63629-4707-01 ",.02)
 ;;63629-4707-01
 ;;9002226.02101,"804,63629-4707-02 ",.01)
 ;;63629-4707-02
 ;;9002226.02101,"804,63629-4707-02 ",.02)
 ;;63629-4707-02
 ;;9002226.02101,"804,63629-4707-03 ",.01)
 ;;63629-4707-03
 ;;9002226.02101,"804,63629-4707-03 ",.02)
 ;;63629-4707-03
 ;;9002226.02101,"804,63629-4707-04 ",.01)
 ;;63629-4707-04
 ;;9002226.02101,"804,63629-4707-04 ",.02)
 ;;63629-4707-04
 ;;9002226.02101,"804,63739-0049-10 ",.01)
 ;;63739-0049-10
 ;;9002226.02101,"804,63739-0049-10 ",.02)
 ;;63739-0049-10
 ;;9002226.02101,"804,63739-0066-10 ",.01)
 ;;63739-0066-10
 ;;9002226.02101,"804,63739-0066-10 ",.02)
 ;;63739-0066-10
 ;;9002226.02101,"804,63739-0166-10 ",.01)
 ;;63739-0166-10
 ;;9002226.02101,"804,63739-0166-10 ",.02)
 ;;63739-0166-10
 ;;9002226.02101,"804,63739-0167-10 ",.01)
 ;;63739-0167-10
 ;;9002226.02101,"804,63739-0167-10 ",.02)
 ;;63739-0167-10
 ;;9002226.02101,"804,63739-0531-10 ",.01)
 ;;63739-0531-10
 ;;9002226.02101,"804,63739-0531-10 ",.02)
 ;;63739-0531-10
 ;;9002226.02101,"804,63874-0315-01 ",.01)
 ;;63874-0315-01
 ;;9002226.02101,"804,63874-0315-01 ",.02)
 ;;63874-0315-01
 ;;9002226.02101,"804,63874-0315-02 ",.01)
 ;;63874-0315-02
 ;;9002226.02101,"804,63874-0315-02 ",.02)
 ;;63874-0315-02
 ;;9002226.02101,"804,63874-0315-04 ",.01)
 ;;63874-0315-04
 ;;9002226.02101,"804,63874-0315-04 ",.02)
 ;;63874-0315-04
 ;;9002226.02101,"804,63874-0315-05 ",.01)
 ;;63874-0315-05
 ;;9002226.02101,"804,63874-0315-05 ",.02)
 ;;63874-0315-05
 ;;9002226.02101,"804,63874-0315-07 ",.01)
 ;;63874-0315-07
 ;;9002226.02101,"804,63874-0315-07 ",.02)
 ;;63874-0315-07
 ;;9002226.02101,"804,63874-0315-10 ",.01)
 ;;63874-0315-10
 ;;9002226.02101,"804,63874-0315-10 ",.02)
 ;;63874-0315-10
 ;;9002226.02101,"804,63874-0315-12 ",.01)
 ;;63874-0315-12
 ;;9002226.02101,"804,63874-0315-12 ",.02)
 ;;63874-0315-12
 ;;9002226.02101,"804,63874-0315-14 ",.01)
 ;;63874-0315-14
 ;;9002226.02101,"804,63874-0315-14 ",.02)
 ;;63874-0315-14
 ;;9002226.02101,"804,63874-0315-15 ",.01)
 ;;63874-0315-15
 ;;9002226.02101,"804,63874-0315-15 ",.02)
 ;;63874-0315-15
 ;;9002226.02101,"804,63874-0315-18 ",.01)
 ;;63874-0315-18
 ;;9002226.02101,"804,63874-0315-18 ",.02)
 ;;63874-0315-18
 ;;9002226.02101,"804,63874-0315-20 ",.01)
 ;;63874-0315-20
 ;;9002226.02101,"804,63874-0315-20 ",.02)
 ;;63874-0315-20
 ;;9002226.02101,"804,63874-0315-21 ",.01)
 ;;63874-0315-21
 ;;9002226.02101,"804,63874-0315-21 ",.02)
 ;;63874-0315-21
 ;;9002226.02101,"804,63874-0315-24 ",.01)
 ;;63874-0315-24
 ;;9002226.02101,"804,63874-0315-24 ",.02)
 ;;63874-0315-24
 ;;9002226.02101,"804,63874-0315-25 ",.01)
 ;;63874-0315-25
 ;;9002226.02101,"804,63874-0315-25 ",.02)
 ;;63874-0315-25
 ;;9002226.02101,"804,63874-0315-28 ",.01)
 ;;63874-0315-28
 ;;9002226.02101,"804,63874-0315-28 ",.02)
 ;;63874-0315-28
 ;;9002226.02101,"804,63874-0315-30 ",.01)
 ;;63874-0315-30
 ;;9002226.02101,"804,63874-0315-30 ",.02)
 ;;63874-0315-30
 ;;9002226.02101,"804,63874-0315-35 ",.01)
 ;;63874-0315-35
 ;;9002226.02101,"804,63874-0315-35 ",.02)
 ;;63874-0315-35
 ;;9002226.02101,"804,63874-0315-40 ",.01)
 ;;63874-0315-40
 ;;9002226.02101,"804,63874-0315-40 ",.02)
 ;;63874-0315-40
 ;;9002226.02101,"804,63874-0315-42 ",.01)
 ;;63874-0315-42
 ;;9002226.02101,"804,63874-0315-42 ",.02)
 ;;63874-0315-42
 ;;9002226.02101,"804,63874-0315-45 ",.01)
 ;;63874-0315-45
 ;;9002226.02101,"804,63874-0315-45 ",.02)
 ;;63874-0315-45
 ;;9002226.02101,"804,63874-0315-50 ",.01)
 ;;63874-0315-50
 ;;9002226.02101,"804,63874-0315-50 ",.02)
 ;;63874-0315-50
 ;;9002226.02101,"804,63874-0315-56 ",.01)
 ;;63874-0315-56
 ;;9002226.02101,"804,63874-0315-56 ",.02)
 ;;63874-0315-56
 ;;9002226.02101,"804,63874-0315-60 ",.01)
 ;;63874-0315-60
 ;;9002226.02101,"804,63874-0315-60 ",.02)
 ;;63874-0315-60
 ;;9002226.02101,"804,63874-0315-75 ",.01)
 ;;63874-0315-75
 ;;9002226.02101,"804,63874-0315-75 ",.02)
 ;;63874-0315-75
 ;;9002226.02101,"804,63874-0315-76 ",.01)
 ;;63874-0315-76
 ;;9002226.02101,"804,63874-0315-76 ",.02)
 ;;63874-0315-76
 ;;9002226.02101,"804,63874-0315-80 ",.01)
 ;;63874-0315-80
 ;;9002226.02101,"804,63874-0315-80 ",.02)
 ;;63874-0315-80
 ;;9002226.02101,"804,63874-0315-90 ",.01)
 ;;63874-0315-90
 ;;9002226.02101,"804,63874-0315-90 ",.02)
 ;;63874-0315-90
 ;;9002226.02101,"804,63874-0330-01 ",.01)
 ;;63874-0330-01
 ;;9002226.02101,"804,63874-0330-01 ",.02)
 ;;63874-0330-01
 ;;9002226.02101,"804,63874-0330-02 ",.01)
 ;;63874-0330-02
 ;;9002226.02101,"804,63874-0330-02 ",.02)
 ;;63874-0330-02
 ;;9002226.02101,"804,63874-0330-03 ",.01)
 ;;63874-0330-03