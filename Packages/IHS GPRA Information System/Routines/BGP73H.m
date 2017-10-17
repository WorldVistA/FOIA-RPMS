BGP73H ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;;BGP HEDIS ASTHMA NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ASTHMA NDC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00037-0521-92 ")
 ;;1
 ;;21,"00037-0541-92 ")
 ;;2
 ;;21,"00037-0545-68 ")
 ;;3
 ;;21,"00037-0731-92 ")
 ;;4
 ;;21,"00121-4794-15 ")
 ;;5
 ;;21,"00143-1020-01 ")
 ;;6
 ;;21,"00143-1020-10 ")
 ;;7
 ;;21,"00143-1025-01 ")
 ;;8
 ;;21,"00143-1025-10 ")
 ;;9
 ;;21,"00247-0656-02 ")
 ;;10
 ;;21,"00247-0656-04 ")
 ;;11
 ;;21,"00247-0656-10 ")
 ;;12
 ;;21,"00247-0656-14 ")
 ;;13
 ;;21,"00247-0656-20 ")
 ;;14
 ;;21,"00247-0656-28 ")
 ;;15
 ;;21,"00247-0656-30 ")
 ;;16
 ;;21,"00247-0656-60 ")
 ;;17
 ;;21,"00247-0824-06 ")
 ;;18
 ;;21,"00247-0824-10 ")
 ;;19
 ;;21,"00247-0824-30 ")
 ;;20
 ;;21,"00247-0824-60 ")
 ;;21
 ;;21,"00247-0824-90 ")
 ;;22
 ;;21,"00456-0648-16 ")
 ;;23
 ;;21,"00485-0059-16 ")
 ;;24
 ;;21,"00490-0080-00 ")
 ;;25
 ;;21,"00490-0080-30 ")
 ;;26
 ;;21,"00490-0080-60 ")
 ;;27
 ;;21,"00490-0080-90 ")
 ;;28
 ;;21,"00525-0376-16 ")
 ;;29
 ;;21,"00603-1190-58 ")
 ;;30
 ;;21,"00904-5887-61 ")
 ;;31
 ;;21,"00904-5888-61 ")
 ;;32
 ;;21,"00904-5889-61 ")
 ;;33
 ;;21,"10135-0604-08 ")
 ;;34
 ;;21,"17856-0644-30 ")
 ;;35
 ;;21,"17856-0644-31 ")
 ;;36
 ;;21,"23155-0062-01 ")
 ;;37
 ;;21,"23155-0063-01 ")
 ;;38
 ;;21,"23490-7355-01 ")
 ;;39
 ;;21,"24839-0226-01 ")
 ;;40
 ;;21,"24839-0227-16 ")
 ;;41
 ;;21,"27808-0033-01 ")
 ;;42
 ;;21,"29033-0001-01 ")
 ;;43
 ;;21,"29033-0002-01 ")
 ;;44
 ;;21,"35356-0126-60 ")
 ;;45
 ;;21,"38130-0012-01 ")
 ;;46
 ;;21,"42291-0813-90 ")
 ;;47
 ;;21,"42291-0814-90 ")
 ;;48
 ;;21,"42291-0815-90 ")
 ;;49
 ;;21,"42858-0701-01 ")
 ;;50
 ;;21,"42858-0702-01 ")
 ;;51
 ;;21,"45985-0647-01 ")
 ;;52
 ;;21,"49708-0644-90 ")
 ;;53
 ;;21,"49999-0550-00 ")
 ;;54
 ;;21,"49999-0921-30 ")
 ;;55
 ;;21,"50111-0459-01 ")
 ;;56
 ;;21,"50111-0459-02 ")
 ;;57
 ;;21,"50111-0459-03 ")
 ;;58
 ;;21,"50111-0482-01 ")
 ;;59
 ;;21,"50111-0482-02 ")
 ;;60
 ;;21,"50111-0482-03 ")
 ;;61
 ;;21,"50111-0483-01 ")
 ;;62
 ;;21,"50111-0483-02 ")
 ;;63
 ;;21,"50111-0518-01 ")
 ;;64
 ;;21,"50242-0040-62 ")
 ;;65
 ;;21,"50474-0100-01 ")
 ;;66
 ;;21,"50474-0200-01 ")
 ;;67
 ;;21,"50474-0200-50 ")
 ;;68
 ;;21,"50474-0300-01 ")
 ;;69
 ;;21,"50474-0300-50 ")
 ;;70
 ;;21,"50474-0400-01 ")
 ;;71
 ;;21,"51862-0131-16 ")
 ;;72
 ;;21,"52244-0100-10 ")
 ;;73
 ;;21,"52244-0200-10 ")
 ;;74
 ;;21,"52244-0300-10 ")
 ;;75
 ;;21,"52244-0400-10 ")
 ;;76
 ;;21,"54569-0065-01 ")
 ;;77
 ;;21,"54569-0065-02 ")
 ;;78
 ;;21,"54569-0065-05 ")
 ;;79
 ;;21,"54569-1666-00 ")
 ;;80
 ;;21,"54838-0556-80 ")
 ;;81
 ;;21,"54868-0028-00 ")
 ;;82
 ;;21,"54868-0028-01 ")
 ;;83
 ;;21,"54868-0028-02 ")
 ;;84
 ;;21,"54868-0028-03 ")
 ;;85
 ;;21,"54868-0028-05 ")
 ;;86
 ;;21,"54868-0028-06 ")
 ;;87
 ;;21,"54868-0029-00 ")
 ;;88
 ;;21,"54868-0029-02 ")
 ;;89
 ;;21,"54868-0029-03 ")
 ;;90
 ;;21,"54868-0029-05 ")
 ;;91
 ;;21,"54868-0029-06 ")
 ;;92
 ;;21,"54868-0029-07 ")
 ;;93
 ;;21,"54868-1461-01 ")
 ;;94
 ;;21,"54868-1461-02 ")
 ;;95
 ;;21,"54868-2710-00 ")
 ;;96
 ;;21,"54868-2710-01 ")
 ;;97
 ;;21,"55045-3768-08 ")
 ;;98
 ;;21,"55887-0277-30 ")
 ;;99
 ;;21,"55887-0847-60 ")
 ;;100
 ;;21,"55887-0847-90 ")
 ;;101
 ;;21,"60258-0335-16 ")
 ;;102
 ;;21,"60258-0336-01 ")
 ;;103
 ;;21,"61392-0016-45 ")
 ;;104
 ;;21,"61392-0016-54 ")
 ;;105
 ;;21,"61392-0016-56 ")
 ;;106
 ;;21,"61392-0016-91 ")
 ;;107
 ;;21,"61392-0017-54 ")
 ;;108
 ;;21,"61392-0017-56 ")
 ;;109
 ;;21,"61392-0017-91 ")
 ;;110
 ;;21,"62332-0025-31 ")
 ;;111
 ;;21,"62332-0026-31 ")
 ;;112
 ;;21,"63629-2792-01 ")
 ;;113
 ;;21,"63629-2792-02 ")
 ;;114
 ;;21,"63629-3551-01 ")
 ;;115
 ;;21,"63874-0443-01 ")
 ;;116
 ;;21,"63874-0443-15 ")
 ;;117
 ;;21,"63874-0443-20 ")
 ;;118
 ;;21,"63874-0443-30 ")
 ;;119
 ;;21,"63874-0447-01 ")
 ;;120
 ;;21,"63874-0447-15 ")
 ;;121
 ;;21,"63874-0447-20 ")
 ;;122
 ;;21,"63874-0447-30 ")
 ;;123
 ;;21,"63874-0447-60 ")
 ;;124
 ;;21,"63874-0675-01 ")
 ;;125
 ;;21,"63874-0675-15 ")
 ;;126
 ;;21,"63874-0675-20 ")
 ;;127
 ;;21,"64661-0814-16 ")
 ;;128
 ;;21,"65162-0324-11 ")
 ;;129
 ;;21,"65162-0335-10 ")
 ;;130
 ;;21,"68462-0356-01 ")
 ;;131
 ;;21,"68462-0380-01 ")
 ;;132
 ;;9002226,649,.01)
 ;;BGP HEDIS ASTHMA NDC
 ;;9002226,649,.02)
 ;;@
 ;;9002226,649,.04)
 ;;n
 ;;9002226,649,.06)
 ;;@
 ;;9002226,649,.08)
 ;;@
 ;;9002226,649,.09)
 ;;3170105
 ;;9002226,649,.11)
 ;;@
 ;;9002226,649,.12)
 ;;@
 ;;9002226,649,.13)
 ;;1
 ;;9002226,649,.14)
 ;;@
 ;;9002226,649,.15)
 ;;50.67
 ;;9002226,649,.16)
 ;;@
 ;;9002226,649,.17)
 ;;@
 ;;9002226,649,.22)
 ;;1
 ;;9002226,649,3101)
 ;;@
 ;;9002226.02101,"649,00037-0521-92 ",.01)
 ;;00037-0521-92
 ;;9002226.02101,"649,00037-0521-92 ",.02)
 ;;00037-0521-92
 ;;9002226.02101,"649,00037-0541-92 ",.01)
 ;;00037-0541-92
 ;;9002226.02101,"649,00037-0541-92 ",.02)
 ;;00037-0541-92
 ;;9002226.02101,"649,00037-0545-68 ",.01)
 ;;00037-0545-68
 ;;9002226.02101,"649,00037-0545-68 ",.02)
 ;;00037-0545-68
 ;;9002226.02101,"649,00037-0731-92 ",.01)
 ;;00037-0731-92
 ;;9002226.02101,"649,00037-0731-92 ",.02)
 ;;00037-0731-92
 ;;9002226.02101,"649,00121-4794-15 ",.01)
 ;;00121-4794-15
 ;;9002226.02101,"649,00121-4794-15 ",.02)
 ;;00121-4794-15
 ;;9002226.02101,"649,00143-1020-01 ",.01)
 ;;00143-1020-01
 ;;9002226.02101,"649,00143-1020-01 ",.02)
 ;;00143-1020-01
 ;;9002226.02101,"649,00143-1020-10 ",.01)
 ;;00143-1020-10
 ;;9002226.02101,"649,00143-1020-10 ",.02)
 ;;00143-1020-10
 ;;9002226.02101,"649,00143-1025-01 ",.01)
 ;;00143-1025-01
 ;;9002226.02101,"649,00143-1025-01 ",.02)
 ;;00143-1025-01
 ;;9002226.02101,"649,00143-1025-10 ",.01)
 ;;00143-1025-10
 ;;9002226.02101,"649,00143-1025-10 ",.02)
 ;;00143-1025-10
 ;;9002226.02101,"649,00247-0656-02 ",.01)
 ;;00247-0656-02
 ;;9002226.02101,"649,00247-0656-02 ",.02)
 ;;00247-0656-02
 ;;9002226.02101,"649,00247-0656-04 ",.01)
 ;;00247-0656-04
 ;;9002226.02101,"649,00247-0656-04 ",.02)
 ;;00247-0656-04
 ;;9002226.02101,"649,00247-0656-10 ",.01)
 ;;00247-0656-10
 ;;9002226.02101,"649,00247-0656-10 ",.02)
 ;;00247-0656-10
 ;;9002226.02101,"649,00247-0656-14 ",.01)
 ;;00247-0656-14
 ;;9002226.02101,"649,00247-0656-14 ",.02)
 ;;00247-0656-14
 ;;9002226.02101,"649,00247-0656-20 ",.01)
 ;;00247-0656-20
 ;;9002226.02101,"649,00247-0656-20 ",.02)
 ;;00247-0656-20
 ;;9002226.02101,"649,00247-0656-28 ",.01)
 ;;00247-0656-28
 ;;9002226.02101,"649,00247-0656-28 ",.02)
 ;;00247-0656-28
 ;;9002226.02101,"649,00247-0656-30 ",.01)
 ;;00247-0656-30
 ;;9002226.02101,"649,00247-0656-30 ",.02)
 ;;00247-0656-30
 ;;9002226.02101,"649,00247-0656-60 ",.01)
 ;;00247-0656-60
 ;;9002226.02101,"649,00247-0656-60 ",.02)
 ;;00247-0656-60
 ;;9002226.02101,"649,00247-0824-06 ",.01)
 ;;00247-0824-06
 ;;9002226.02101,"649,00247-0824-06 ",.02)
 ;;00247-0824-06
 ;;9002226.02101,"649,00247-0824-10 ",.01)
 ;;00247-0824-10
 ;;9002226.02101,"649,00247-0824-10 ",.02)
 ;;00247-0824-10
 ;;9002226.02101,"649,00247-0824-30 ",.01)
 ;;00247-0824-30
 ;;9002226.02101,"649,00247-0824-30 ",.02)
 ;;00247-0824-30
 ;;9002226.02101,"649,00247-0824-60 ",.01)
 ;;00247-0824-60
 ;;9002226.02101,"649,00247-0824-60 ",.02)
 ;;00247-0824-60
 ;;9002226.02101,"649,00247-0824-90 ",.01)
 ;;00247-0824-90
 ;;9002226.02101,"649,00247-0824-90 ",.02)
 ;;00247-0824-90
 ;;9002226.02101,"649,00456-0648-16 ",.01)
 ;;00456-0648-16
 ;;9002226.02101,"649,00456-0648-16 ",.02)
 ;;00456-0648-16
 ;;9002226.02101,"649,00485-0059-16 ",.01)
 ;;00485-0059-16
 ;;9002226.02101,"649,00485-0059-16 ",.02)
 ;;00485-0059-16
 ;;9002226.02101,"649,00490-0080-00 ",.01)
 ;;00490-0080-00
 ;;9002226.02101,"649,00490-0080-00 ",.02)
 ;;00490-0080-00
 ;;9002226.02101,"649,00490-0080-30 ",.01)
 ;;00490-0080-30
 ;;9002226.02101,"649,00490-0080-30 ",.02)
 ;;00490-0080-30
 ;;9002226.02101,"649,00490-0080-60 ",.01)
 ;;00490-0080-60
 ;;9002226.02101,"649,00490-0080-60 ",.02)
 ;;00490-0080-60
 ;;9002226.02101,"649,00490-0080-90 ",.01)
 ;;00490-0080-90
 ;;9002226.02101,"649,00490-0080-90 ",.02)
 ;;00490-0080-90
 ;;9002226.02101,"649,00525-0376-16 ",.01)
 ;;00525-0376-16
 ;;9002226.02101,"649,00525-0376-16 ",.02)
 ;;00525-0376-16
 ;;9002226.02101,"649,00603-1190-58 ",.01)
 ;;00603-1190-58
 ;;9002226.02101,"649,00603-1190-58 ",.02)
 ;;00603-1190-58
 ;;9002226.02101,"649,00904-5887-61 ",.01)
 ;;00904-5887-61
 ;;9002226.02101,"649,00904-5887-61 ",.02)
 ;;00904-5887-61
 ;;9002226.02101,"649,00904-5888-61 ",.01)
 ;;00904-5888-61
 ;;9002226.02101,"649,00904-5888-61 ",.02)
 ;;00904-5888-61
 ;;9002226.02101,"649,00904-5889-61 ",.01)
 ;;00904-5889-61
 ;;9002226.02101,"649,00904-5889-61 ",.02)
 ;;00904-5889-61
 ;;9002226.02101,"649,10135-0604-08 ",.01)
 ;;10135-0604-08
 ;;9002226.02101,"649,10135-0604-08 ",.02)
 ;;10135-0604-08
 ;;9002226.02101,"649,17856-0644-30 ",.01)
 ;;17856-0644-30
 ;;9002226.02101,"649,17856-0644-30 ",.02)
 ;;17856-0644-30
 ;;9002226.02101,"649,17856-0644-31 ",.01)
 ;;17856-0644-31
 ;;9002226.02101,"649,17856-0644-31 ",.02)
 ;;17856-0644-31
 ;;9002226.02101,"649,23155-0062-01 ",.01)
 ;;23155-0062-01
 ;;9002226.02101,"649,23155-0062-01 ",.02)
 ;;23155-0062-01
 ;;9002226.02101,"649,23155-0063-01 ",.01)
 ;;23155-0063-01
 ;;9002226.02101,"649,23155-0063-01 ",.02)
 ;;23155-0063-01
 ;;9002226.02101,"649,23490-7355-01 ",.01)
 ;;23490-7355-01
 ;;9002226.02101,"649,23490-7355-01 ",.02)
 ;;23490-7355-01
 ;;9002226.02101,"649,24839-0226-01 ",.01)
 ;;24839-0226-01
 ;;9002226.02101,"649,24839-0226-01 ",.02)
 ;;24839-0226-01
 ;;9002226.02101,"649,24839-0227-16 ",.01)
 ;;24839-0227-16
 ;;9002226.02101,"649,24839-0227-16 ",.02)
 ;;24839-0227-16
 ;;9002226.02101,"649,27808-0033-01 ",.01)
 ;;27808-0033-01
 ;;9002226.02101,"649,27808-0033-01 ",.02)
 ;;27808-0033-01
 ;;9002226.02101,"649,29033-0001-01 ",.01)
 ;;29033-0001-01
 ;;9002226.02101,"649,29033-0001-01 ",.02)
 ;;29033-0001-01
 ;;9002226.02101,"649,29033-0002-01 ",.01)
 ;;29033-0002-01
 ;;9002226.02101,"649,29033-0002-01 ",.02)
 ;;29033-0002-01
 ;;9002226.02101,"649,35356-0126-60 ",.01)
 ;;35356-0126-60
 ;;9002226.02101,"649,35356-0126-60 ",.02)
 ;;35356-0126-60
 ;;9002226.02101,"649,38130-0012-01 ",.01)
 ;;38130-0012-01
 ;;9002226.02101,"649,38130-0012-01 ",.02)
 ;;38130-0012-01
 ;;9002226.02101,"649,42291-0813-90 ",.01)
 ;;42291-0813-90
 ;;9002226.02101,"649,42291-0813-90 ",.02)
 ;;42291-0813-90
 ;;9002226.02101,"649,42291-0814-90 ",.01)
 ;;42291-0814-90
 ;;9002226.02101,"649,42291-0814-90 ",.02)
 ;;42291-0814-90
 ;;9002226.02101,"649,42291-0815-90 ",.01)
 ;;42291-0815-90
 ;;9002226.02101,"649,42291-0815-90 ",.02)
 ;;42291-0815-90
 ;;9002226.02101,"649,42858-0701-01 ",.01)
 ;;42858-0701-01
 ;;9002226.02101,"649,42858-0701-01 ",.02)
 ;;42858-0701-01
 ;;9002226.02101,"649,42858-0702-01 ",.01)
 ;;42858-0702-01
 ;;9002226.02101,"649,42858-0702-01 ",.02)
 ;;42858-0702-01
 ;;9002226.02101,"649,45985-0647-01 ",.01)
 ;;45985-0647-01
 ;;9002226.02101,"649,45985-0647-01 ",.02)
 ;;45985-0647-01
 ;;9002226.02101,"649,49708-0644-90 ",.01)
 ;;49708-0644-90
 ;;9002226.02101,"649,49708-0644-90 ",.02)
 ;;49708-0644-90
 ;;9002226.02101,"649,49999-0550-00 ",.01)
 ;;49999-0550-00
 ;;9002226.02101,"649,49999-0550-00 ",.02)
 ;;49999-0550-00
 ;;9002226.02101,"649,49999-0921-30 ",.01)
 ;;49999-0921-30
 ;
OTHER ; OTHER ROUTINES
 D ^BGP73H2
 Q