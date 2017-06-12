BGP51G ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP HEDIS ANTITHROMBOTIC NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ANTITHROMBOTIC NDC
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
 ;;21,"00054-0434-25 ")
 ;;21
 ;;21,"00054-0435-25 ")
 ;;41
 ;;21,"00054-0436-25 ")
 ;;70
 ;;21,"00093-0154-01 ")
 ;;87
 ;;21,"00115-1070-01 ")
 ;;19
 ;;21,"00115-1070-03 ")
 ;;20
 ;;21,"00115-1071-01 ")
 ;;42
 ;;21,"00115-1071-03 ")
 ;;43
 ;;21,"00115-1072-01 ")
 ;;68
 ;;21,"00115-1072-03 ")
 ;;69
 ;;21,"00185-0115-05 ")
 ;;88
 ;;21,"00185-0115-30 ")
 ;;89
 ;;21,"00185-0115-60 ")
 ;;90
 ;;21,"00406-2187-01 ")
 ;;8
 ;;21,"00406-2187-10 ")
 ;;9
 ;;21,"00406-2188-01 ")
 ;;30
 ;;21,"00406-2188-10 ")
 ;;31
 ;;21,"00406-2189-01 ")
 ;;57
 ;;21,"00406-2189-10 ")
 ;;58
 ;;21,"00440-8562-60 ")
 ;;91
 ;;21,"00440-8562-91 ")
 ;;92
 ;;21,"00440-8562-92 ")
 ;;93
 ;;21,"00527-1461-01 ")
 ;;12
 ;;21,"00527-1461-10 ")
 ;;13
 ;;21,"00527-1462-01 ")
 ;;26
 ;;21,"00527-1462-10 ")
 ;;27
 ;;21,"00527-1463-01 ")
 ;;55
 ;;21,"00527-1463-10 ")
 ;;56
 ;;21,"00555-0252-02 ")
 ;;10
 ;;21,"00555-0252-05 ")
 ;;11
 ;;21,"00555-0285-02 ")
 ;;28
 ;;21,"00555-0285-05 ")
 ;;29
 ;;21,"00555-0286-02 ")
 ;;53
 ;;21,"00555-0286-05 ")
 ;;54
 ;;21,"00597-0017-01 ")
 ;;25
 ;;21,"00597-0018-01 ")
 ;;52
 ;;21,"00597-0019-01 ")
 ;;80
 ;;21,"00904-1086-61 ")
 ;;14
 ;;21,"00904-1087-61 ")
 ;;35
 ;;21,"00904-1088-61 ")
 ;;59
 ;;21,"10135-0536-10 ")
 ;;15
 ;;21,"10135-0537-10 ")
 ;;34
 ;;21,"10135-0538-10 ")
 ;;60
 ;;21,"42291-0526-10 ")
 ;;18
 ;;21,"42291-0527-10 ")
 ;;36
 ;;21,"42291-0528-10 ")
 ;;63
 ;;21,"42291-0803-01 ")
 ;;94
 ;;21,"50268-0263-15 ")
 ;;6
 ;;21,"50268-0264-15 ")
 ;;46
 ;;21,"50268-0265-15 ")
 ;;79
 ;;21,"54868-0042-01 ")
 ;;22
 ;;21,"54868-0042-02 ")
 ;;23
 ;;21,"54868-0042-04 ")
 ;;24
 ;;21,"54868-0043-00 ")
 ;;37
 ;;21,"54868-0043-01 ")
 ;;38
 ;;21,"54868-0043-02 ")
 ;;39
 ;;21,"54868-0043-03 ")
 ;;40
 ;;21,"54868-0044-00 ")
 ;;71
 ;;21,"54868-0044-01 ")
 ;;72
 ;;21,"54868-0044-02 ")
 ;;73
 ;;21,"55289-0748-01 ")
 ;;7
 ;;21,"57664-0327-06 ")
 ;;95
 ;;21,"57664-0327-13 ")
 ;;96
 ;;21,"57664-0327-83 ")
 ;;97
 ;;21,"57664-0327-86 ")
 ;;98
 ;;21,"58016-0555-12 ")
 ;;44
 ;;21,"58016-0555-20 ")
 ;;45
 ;;21,"58016-0556-12 ")
 ;;64
 ;;21,"58016-0556-15 ")
 ;;65
 ;;21,"58016-0556-20 ")
 ;;66
 ;;21,"58016-0556-30 ")
 ;;67
 ;;21,"60429-0764-05 ")
 ;;83
 ;;21,"60429-0764-30 ")
 ;;81
 ;;21,"60429-0764-60 ")
 ;;82
 ;;21,"60505-0027-02 ")
 ;;84
 ;;21,"60505-0027-04 ")
 ;;85
 ;;21,"60505-0027-07 ")
 ;;86
 ;;21,"64980-0133-01 ")
 ;;16
 ;;21,"64980-0133-10 ")
 ;;17
 ;;21,"64980-0134-01 ")
 ;;32
 ;;21,"64980-0134-10 ")
 ;;33
 ;;21,"64980-0135-01 ")
 ;;61
 ;;21,"64980-0135-10 ")
 ;;62
 ;;21,"68382-0187-01 ")
 ;;3
 ;;21,"68382-0187-05 ")
 ;;4
 ;;21,"68382-0187-10 ")
 ;;5
 ;;21,"68382-0188-01 ")
 ;;47
 ;;21,"68382-0188-05 ")
 ;;48
 ;;21,"68382-0188-10 ")
 ;;49
 ;;21,"68382-0189-01 ")
 ;;76
 ;;21,"68382-0189-05 ")
 ;;77
 ;;21,"68382-0189-10 ")
 ;;78
 ;;21,"68462-0116-01 ")
 ;;1
 ;;21,"68462-0116-10 ")
 ;;2
 ;;21,"68462-0117-01 ")
 ;;50
 ;;21,"68462-0117-10 ")
 ;;51
 ;;21,"68462-0118-01 ")
 ;;74
 ;;21,"68462-0118-10 ")
 ;;75
 ;;9002226,621,.01)
 ;;BGP HEDIS ANTITHROMBOTIC NDC
 ;;9002226,621,.02)
 ;;@
 ;;9002226,621,.04)
 ;;n
 ;;9002226,621,.06)
 ;;@
 ;;9002226,621,.08)
 ;;@
 ;;9002226,621,.09)
 ;;3140819
 ;;9002226,621,.11)
 ;;@
 ;;9002226,621,.12)
 ;;@
 ;;9002226,621,.13)
 ;;1
 ;;9002226,621,.14)
 ;;@
 ;;9002226,621,.15)
 ;;50.67
 ;;9002226,621,.16)
 ;;@
 ;;9002226,621,.17)
 ;;@
 ;;9002226,621,3101)
 ;;@
 ;;9002226.02101,"621,00054-0434-25 ",.01)
 ;;00054-0434-25
 ;;9002226.02101,"621,00054-0434-25 ",.02)
 ;;00054-0434-25
 ;;9002226.02101,"621,00054-0435-25 ",.01)
 ;;00054-0435-25
 ;;9002226.02101,"621,00054-0435-25 ",.02)
 ;;00054-0435-25
 ;;9002226.02101,"621,00054-0436-25 ",.01)
 ;;00054-0436-25
 ;;9002226.02101,"621,00054-0436-25 ",.02)
 ;;00054-0436-25
 ;;9002226.02101,"621,00093-0154-01 ",.01)
 ;;00093-0154-01
 ;;9002226.02101,"621,00093-0154-01 ",.02)
 ;;00093-0154-01
 ;;9002226.02101,"621,00115-1070-01 ",.01)
 ;;00115-1070-01
 ;;9002226.02101,"621,00115-1070-01 ",.02)
 ;;00115-1070-01
 ;;9002226.02101,"621,00115-1070-03 ",.01)
 ;;00115-1070-03
 ;;9002226.02101,"621,00115-1070-03 ",.02)
 ;;00115-1070-03
 ;;9002226.02101,"621,00115-1071-01 ",.01)
 ;;00115-1071-01
 ;;9002226.02101,"621,00115-1071-01 ",.02)
 ;;00115-1071-01
 ;;9002226.02101,"621,00115-1071-03 ",.01)
 ;;00115-1071-03
 ;;9002226.02101,"621,00115-1071-03 ",.02)
 ;;00115-1071-03
 ;;9002226.02101,"621,00115-1072-01 ",.01)
 ;;00115-1072-01
 ;;9002226.02101,"621,00115-1072-01 ",.02)
 ;;00115-1072-01
 ;;9002226.02101,"621,00115-1072-03 ",.01)
 ;;00115-1072-03
 ;;9002226.02101,"621,00115-1072-03 ",.02)
 ;;00115-1072-03
 ;;9002226.02101,"621,00185-0115-05 ",.01)
 ;;00185-0115-05
 ;;9002226.02101,"621,00185-0115-05 ",.02)
 ;;00185-0115-05
 ;;9002226.02101,"621,00185-0115-30 ",.01)
 ;;00185-0115-30
 ;;9002226.02101,"621,00185-0115-30 ",.02)
 ;;00185-0115-30
 ;;9002226.02101,"621,00185-0115-60 ",.01)
 ;;00185-0115-60
 ;;9002226.02101,"621,00185-0115-60 ",.02)
 ;;00185-0115-60
 ;;9002226.02101,"621,00406-2187-01 ",.01)
 ;;00406-2187-01
 ;;9002226.02101,"621,00406-2187-01 ",.02)
 ;;00406-2187-01
 ;;9002226.02101,"621,00406-2187-10 ",.01)
 ;;00406-2187-10
 ;;9002226.02101,"621,00406-2187-10 ",.02)
 ;;00406-2187-10
 ;;9002226.02101,"621,00406-2188-01 ",.01)
 ;;00406-2188-01
 ;;9002226.02101,"621,00406-2188-01 ",.02)
 ;;00406-2188-01
 ;;9002226.02101,"621,00406-2188-10 ",.01)
 ;;00406-2188-10
 ;;9002226.02101,"621,00406-2188-10 ",.02)
 ;;00406-2188-10
 ;;9002226.02101,"621,00406-2189-01 ",.01)
 ;;00406-2189-01
 ;;9002226.02101,"621,00406-2189-01 ",.02)
 ;;00406-2189-01
 ;;9002226.02101,"621,00406-2189-10 ",.01)
 ;;00406-2189-10
 ;;9002226.02101,"621,00406-2189-10 ",.02)
 ;;00406-2189-10
 ;;9002226.02101,"621,00440-8562-60 ",.01)
 ;;00440-8562-60
 ;;9002226.02101,"621,00440-8562-60 ",.02)
 ;;00440-8562-60
 ;;9002226.02101,"621,00440-8562-91 ",.01)
 ;;00440-8562-91
 ;;9002226.02101,"621,00440-8562-91 ",.02)
 ;;00440-8562-91
 ;;9002226.02101,"621,00440-8562-92 ",.01)
 ;;00440-8562-92
 ;;9002226.02101,"621,00440-8562-92 ",.02)
 ;;00440-8562-92
 ;;9002226.02101,"621,00527-1461-01 ",.01)
 ;;00527-1461-01
 ;;9002226.02101,"621,00527-1461-01 ",.02)
 ;;00527-1461-01
 ;;9002226.02101,"621,00527-1461-10 ",.01)
 ;;00527-1461-10
 ;;9002226.02101,"621,00527-1461-10 ",.02)
 ;;00527-1461-10
 ;;9002226.02101,"621,00527-1462-01 ",.01)
 ;;00527-1462-01
 ;;9002226.02101,"621,00527-1462-01 ",.02)
 ;;00527-1462-01
 ;;9002226.02101,"621,00527-1462-10 ",.01)
 ;;00527-1462-10
 ;;9002226.02101,"621,00527-1462-10 ",.02)
 ;;00527-1462-10
 ;;9002226.02101,"621,00527-1463-01 ",.01)
 ;;00527-1463-01
 ;;9002226.02101,"621,00527-1463-01 ",.02)
 ;;00527-1463-01
 ;;9002226.02101,"621,00527-1463-10 ",.01)
 ;;00527-1463-10
 ;;9002226.02101,"621,00527-1463-10 ",.02)
 ;;00527-1463-10
 ;;9002226.02101,"621,00555-0252-02 ",.01)
 ;;00555-0252-02
 ;;9002226.02101,"621,00555-0252-02 ",.02)
 ;;00555-0252-02
 ;;9002226.02101,"621,00555-0252-05 ",.01)
 ;;00555-0252-05
 ;;9002226.02101,"621,00555-0252-05 ",.02)
 ;;00555-0252-05
 ;;9002226.02101,"621,00555-0285-02 ",.01)
 ;;00555-0285-02
 ;;9002226.02101,"621,00555-0285-02 ",.02)
 ;;00555-0285-02
 ;;9002226.02101,"621,00555-0285-05 ",.01)
 ;;00555-0285-05
 ;;9002226.02101,"621,00555-0285-05 ",.02)
 ;;00555-0285-05
 ;;9002226.02101,"621,00555-0286-02 ",.01)
 ;;00555-0286-02
 ;;9002226.02101,"621,00555-0286-02 ",.02)
 ;;00555-0286-02
 ;;9002226.02101,"621,00555-0286-05 ",.01)
 ;;00555-0286-05
 ;;9002226.02101,"621,00555-0286-05 ",.02)
 ;;00555-0286-05
 ;;9002226.02101,"621,00597-0017-01 ",.01)
 ;;00597-0017-01
 ;;9002226.02101,"621,00597-0017-01 ",.02)
 ;;00597-0017-01
 ;;9002226.02101,"621,00597-0018-01 ",.01)
 ;;00597-0018-01
 ;;9002226.02101,"621,00597-0018-01 ",.02)
 ;;00597-0018-01
 ;;9002226.02101,"621,00597-0019-01 ",.01)
 ;;00597-0019-01
 ;;9002226.02101,"621,00597-0019-01 ",.02)
 ;;00597-0019-01
 ;;9002226.02101,"621,00904-1086-61 ",.01)
 ;;00904-1086-61
 ;;9002226.02101,"621,00904-1086-61 ",.02)
 ;;00904-1086-61
 ;;9002226.02101,"621,00904-1087-61 ",.01)
 ;;00904-1087-61
 ;;9002226.02101,"621,00904-1087-61 ",.02)
 ;;00904-1087-61
 ;;9002226.02101,"621,00904-1088-61 ",.01)
 ;;00904-1088-61
 ;;9002226.02101,"621,00904-1088-61 ",.02)
 ;;00904-1088-61
 ;;9002226.02101,"621,10135-0536-10 ",.01)
 ;;10135-0536-10
 ;;9002226.02101,"621,10135-0536-10 ",.02)
 ;;10135-0536-10
 ;;9002226.02101,"621,10135-0537-10 ",.01)
 ;;10135-0537-10
 ;;9002226.02101,"621,10135-0537-10 ",.02)
 ;;10135-0537-10
 ;;9002226.02101,"621,10135-0538-10 ",.01)
 ;;10135-0538-10
 ;;9002226.02101,"621,10135-0538-10 ",.02)
 ;;10135-0538-10
 ;;9002226.02101,"621,42291-0526-10 ",.01)
 ;;42291-0526-10
 ;;9002226.02101,"621,42291-0526-10 ",.02)
 ;;42291-0526-10
 ;;9002226.02101,"621,42291-0527-10 ",.01)
 ;;42291-0527-10
 ;;9002226.02101,"621,42291-0527-10 ",.02)
 ;;42291-0527-10
 ;;9002226.02101,"621,42291-0528-10 ",.01)
 ;;42291-0528-10
 ;;9002226.02101,"621,42291-0528-10 ",.02)
 ;;42291-0528-10
 ;;9002226.02101,"621,42291-0803-01 ",.01)
 ;;42291-0803-01
 ;;9002226.02101,"621,42291-0803-01 ",.02)
 ;;42291-0803-01
 ;;9002226.02101,"621,50268-0263-15 ",.01)
 ;;50268-0263-15
 ;;9002226.02101,"621,50268-0263-15 ",.02)
 ;;50268-0263-15
 ;;9002226.02101,"621,50268-0264-15 ",.01)
 ;;50268-0264-15
 ;;9002226.02101,"621,50268-0264-15 ",.02)
 ;;50268-0264-15
 ;;9002226.02101,"621,50268-0265-15 ",.01)
 ;;50268-0265-15
 ;;9002226.02101,"621,50268-0265-15 ",.02)
 ;;50268-0265-15
 ;;9002226.02101,"621,54868-0042-01 ",.01)
 ;;54868-0042-01
 ;;9002226.02101,"621,54868-0042-01 ",.02)
 ;;54868-0042-01
 ;;9002226.02101,"621,54868-0042-02 ",.01)
 ;;54868-0042-02
 ;;9002226.02101,"621,54868-0042-02 ",.02)
 ;;54868-0042-02
 ;;9002226.02101,"621,54868-0042-04 ",.01)
 ;;54868-0042-04
 ;;9002226.02101,"621,54868-0042-04 ",.02)
 ;;54868-0042-04
 ;;9002226.02101,"621,54868-0043-00 ",.01)
 ;;54868-0043-00
 ;;9002226.02101,"621,54868-0043-00 ",.02)
 ;;54868-0043-00
 ;;9002226.02101,"621,54868-0043-01 ",.01)
 ;;54868-0043-01
 ;;9002226.02101,"621,54868-0043-01 ",.02)
 ;;54868-0043-01
 ;;9002226.02101,"621,54868-0043-02 ",.01)
 ;;54868-0043-02
 ;;9002226.02101,"621,54868-0043-02 ",.02)
 ;;54868-0043-02
 ;;9002226.02101,"621,54868-0043-03 ",.01)
 ;;54868-0043-03
 ;;9002226.02101,"621,54868-0043-03 ",.02)
 ;;54868-0043-03
 ;;9002226.02101,"621,54868-0044-00 ",.01)
 ;;54868-0044-00
 ;;9002226.02101,"621,54868-0044-00 ",.02)
 ;;54868-0044-00
 ;;9002226.02101,"621,54868-0044-01 ",.01)
 ;;54868-0044-01
 ;;9002226.02101,"621,54868-0044-01 ",.02)
 ;;54868-0044-01
 ;;9002226.02101,"621,54868-0044-02 ",.01)
 ;;54868-0044-02
 ;;9002226.02101,"621,54868-0044-02 ",.02)
 ;;54868-0044-02
 ;;9002226.02101,"621,55289-0748-01 ",.01)
 ;;55289-0748-01
 ;;9002226.02101,"621,55289-0748-01 ",.02)
 ;;55289-0748-01
 ;;9002226.02101,"621,57664-0327-06 ",.01)
 ;;57664-0327-06
 ;;9002226.02101,"621,57664-0327-06 ",.02)
 ;;57664-0327-06
 ;;9002226.02101,"621,57664-0327-13 ",.01)
 ;;57664-0327-13
 ;;9002226.02101,"621,57664-0327-13 ",.02)
 ;;57664-0327-13
 ;;9002226.02101,"621,57664-0327-83 ",.01)
 ;;57664-0327-83
 ;;9002226.02101,"621,57664-0327-83 ",.02)
 ;;57664-0327-83
 ;;9002226.02101,"621,57664-0327-86 ",.01)
 ;;57664-0327-86
 ;;9002226.02101,"621,57664-0327-86 ",.02)
 ;;57664-0327-86
 ;;9002226.02101,"621,58016-0555-12 ",.01)
 ;;58016-0555-12
 ;;9002226.02101,"621,58016-0555-12 ",.02)
 ;;58016-0555-12
 ;;9002226.02101,"621,58016-0555-20 ",.01)
 ;;58016-0555-20
 ;;9002226.02101,"621,58016-0555-20 ",.02)
 ;;58016-0555-20
 ;;9002226.02101,"621,58016-0556-12 ",.01)
 ;;58016-0556-12
 ;;9002226.02101,"621,58016-0556-12 ",.02)
 ;;58016-0556-12
 ;;9002226.02101,"621,58016-0556-15 ",.01)
 ;;58016-0556-15
 ;;9002226.02101,"621,58016-0556-15 ",.02)
 ;;58016-0556-15
 ;;9002226.02101,"621,58016-0556-20 ",.01)
 ;;58016-0556-20
 ;;9002226.02101,"621,58016-0556-20 ",.02)
 ;;58016-0556-20
 ;;9002226.02101,"621,58016-0556-30 ",.01)
 ;;58016-0556-30
 ;;9002226.02101,"621,58016-0556-30 ",.02)
 ;;58016-0556-30
 ;;9002226.02101,"621,60429-0764-05 ",.01)
 ;;60429-0764-05
 ;;9002226.02101,"621,60429-0764-05 ",.02)
 ;;60429-0764-05
 ;;9002226.02101,"621,60429-0764-30 ",.01)
 ;;60429-0764-30
 ;;9002226.02101,"621,60429-0764-30 ",.02)
 ;;60429-0764-30
 ;;9002226.02101,"621,60429-0764-60 ",.01)
 ;;60429-0764-60
 ;;9002226.02101,"621,60429-0764-60 ",.02)
 ;;60429-0764-60
 ;;9002226.02101,"621,60505-0027-02 ",.01)
 ;;60505-0027-02
 ;;9002226.02101,"621,60505-0027-02 ",.02)
 ;;60505-0027-02
 ;;9002226.02101,"621,60505-0027-04 ",.01)
 ;;60505-0027-04
 ;;9002226.02101,"621,60505-0027-04 ",.02)
 ;;60505-0027-04
 ;;9002226.02101,"621,60505-0027-07 ",.01)
 ;;60505-0027-07
 ;;9002226.02101,"621,60505-0027-07 ",.02)
 ;;60505-0027-07
 ;;9002226.02101,"621,64980-0133-01 ",.01)
 ;;64980-0133-01
 ;;9002226.02101,"621,64980-0133-01 ",.02)
 ;;64980-0133-01
 ;;9002226.02101,"621,64980-0133-10 ",.01)
 ;;64980-0133-10
 ;;9002226.02101,"621,64980-0133-10 ",.02)
 ;;64980-0133-10
 ;
OTHER ; OTHER ROUTINES
 D ^BGP51G2
 Q