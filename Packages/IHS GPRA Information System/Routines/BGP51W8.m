BGP51W8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1774,00003-4215-11 ",.02)
 ;;00003-4215-11
 ;;9002226.02101,"1774,00003-4215-21 ",.01)
 ;;00003-4215-21
 ;;9002226.02101,"1774,00003-4215-21 ",.02)
 ;;00003-4215-21
 ;;9002226.02101,"1774,00003-4215-31 ",.01)
 ;;00003-4215-31
 ;;9002226.02101,"1774,00003-4215-31 ",.02)
 ;;00003-4215-31
 ;;9002226.02101,"1774,00003-4215-41 ",.01)
 ;;00003-4215-41
 ;;9002226.02101,"1774,00003-4215-41 ",.02)
 ;;00003-4215-41
 ;;9002226.02101,"1774,00003-4221-11 ",.01)
 ;;00003-4221-11
 ;;9002226.02101,"1774,00003-4221-11 ",.02)
 ;;00003-4221-11
 ;;9002226.02101,"1774,00003-4222-16 ",.01)
 ;;00003-4222-16
 ;;9002226.02101,"1774,00003-4222-16 ",.02)
 ;;00003-4222-16
 ;;9002226.02101,"1774,00003-4223-11 ",.01)
 ;;00003-4223-11
 ;;9002226.02101,"1774,00003-4223-11 ",.02)
 ;;00003-4223-11
 ;;9002226.02101,"1774,00006-0078-61 ",.01)
 ;;00006-0078-61
 ;;9002226.02101,"1774,00006-0078-61 ",.02)
 ;;00006-0078-61
 ;;9002226.02101,"1774,00006-0078-62 ",.01)
 ;;00006-0078-62
 ;;9002226.02101,"1774,00006-0078-62 ",.02)
 ;;00006-0078-62
 ;;9002226.02101,"1774,00006-0078-82 ",.01)
 ;;00006-0078-82
 ;;9002226.02101,"1774,00006-0078-82 ",.02)
 ;;00006-0078-82
 ;;9002226.02101,"1774,00006-0080-61 ",.01)
 ;;00006-0080-61
 ;;9002226.02101,"1774,00006-0080-61 ",.02)
 ;;00006-0080-61
 ;;9002226.02101,"1774,00006-0080-62 ",.01)
 ;;00006-0080-62
 ;;9002226.02101,"1774,00006-0080-62 ",.02)
 ;;00006-0080-62
 ;;9002226.02101,"1774,00006-0080-82 ",.01)
 ;;00006-0080-82
 ;;9002226.02101,"1774,00006-0080-82 ",.02)
 ;;00006-0080-82
 ;;9002226.02101,"1774,00006-0081-31 ",.01)
 ;;00006-0081-31
 ;;9002226.02101,"1774,00006-0081-31 ",.02)
 ;;00006-0081-31
 ;;9002226.02101,"1774,00006-0081-54 ",.01)
 ;;00006-0081-54
 ;;9002226.02101,"1774,00006-0081-54 ",.02)
 ;;00006-0081-54
 ;;9002226.02101,"1774,00006-0081-82 ",.01)
 ;;00006-0081-82
 ;;9002226.02101,"1774,00006-0081-82 ",.02)
 ;;00006-0081-82
 ;;9002226.02101,"1774,00006-0112-28 ",.01)
 ;;00006-0112-28
 ;;9002226.02101,"1774,00006-0112-28 ",.02)
 ;;00006-0112-28
 ;;9002226.02101,"1774,00006-0112-31 ",.01)
 ;;00006-0112-31
 ;;9002226.02101,"1774,00006-0112-31 ",.02)
 ;;00006-0112-31
 ;;9002226.02101,"1774,00006-0112-54 ",.01)
 ;;00006-0112-54
 ;;9002226.02101,"1774,00006-0112-54 ",.02)
 ;;00006-0112-54
 ;;9002226.02101,"1774,00006-0221-01 ",.01)
 ;;00006-0221-01
 ;;9002226.02101,"1774,00006-0221-01 ",.02)
 ;;00006-0221-01
 ;;9002226.02101,"1774,00006-0221-28 ",.01)
 ;;00006-0221-28
 ;;9002226.02101,"1774,00006-0221-28 ",.02)
 ;;00006-0221-28
 ;;9002226.02101,"1774,00006-0221-31 ",.01)
 ;;00006-0221-31
 ;;9002226.02101,"1774,00006-0221-31 ",.02)
 ;;00006-0221-31
 ;;9002226.02101,"1774,00006-0221-54 ",.01)
 ;;00006-0221-54
 ;;9002226.02101,"1774,00006-0221-54 ",.02)
 ;;00006-0221-54
 ;;9002226.02101,"1774,00006-0277-01 ",.01)
 ;;00006-0277-01
 ;;9002226.02101,"1774,00006-0277-01 ",.02)
 ;;00006-0277-01
 ;;9002226.02101,"1774,00006-0277-28 ",.01)
 ;;00006-0277-28
 ;;9002226.02101,"1774,00006-0277-28 ",.02)
 ;;00006-0277-28
 ;;9002226.02101,"1774,00006-0277-31 ",.01)
 ;;00006-0277-31
 ;;9002226.02101,"1774,00006-0277-31 ",.02)
 ;;00006-0277-31
 ;;9002226.02101,"1774,00006-0277-33 ",.01)
 ;;00006-0277-33
 ;;9002226.02101,"1774,00006-0277-33 ",.02)
 ;;00006-0277-33
 ;;9002226.02101,"1774,00006-0277-54 ",.01)
 ;;00006-0277-54
 ;;9002226.02101,"1774,00006-0277-54 ",.02)
 ;;00006-0277-54
 ;;9002226.02101,"1774,00006-0277-82 ",.01)
 ;;00006-0277-82
 ;;9002226.02101,"1774,00006-0277-82 ",.02)
 ;;00006-0277-82
 ;;9002226.02101,"1774,00006-0533-31 ",.01)
 ;;00006-0533-31
 ;;9002226.02101,"1774,00006-0533-31 ",.02)
 ;;00006-0533-31
 ;;9002226.02101,"1774,00006-0533-54 ",.01)
 ;;00006-0533-54
 ;;9002226.02101,"1774,00006-0533-54 ",.02)
 ;;00006-0533-54
 ;;9002226.02101,"1774,00006-0535-31 ",.01)
 ;;00006-0535-31
 ;;9002226.02101,"1774,00006-0535-31 ",.02)
 ;;00006-0535-31
 ;;9002226.02101,"1774,00006-0535-54 ",.01)
 ;;00006-0535-54
 ;;9002226.02101,"1774,00006-0535-54 ",.02)
 ;;00006-0535-54
 ;;9002226.02101,"1774,00006-0537-31 ",.01)
 ;;00006-0537-31
 ;;9002226.02101,"1774,00006-0537-31 ",.02)
 ;;00006-0537-31
 ;;9002226.02101,"1774,00006-0537-54 ",.01)
 ;;00006-0537-54
 ;;9002226.02101,"1774,00006-0537-54 ",.02)
 ;;00006-0537-54
 ;;9002226.02101,"1774,00006-0575-52 ",.01)
 ;;00006-0575-52
 ;;9002226.02101,"1774,00006-0575-52 ",.02)
 ;;00006-0575-52
 ;;9002226.02101,"1774,00006-0575-61 ",.01)
 ;;00006-0575-61
 ;;9002226.02101,"1774,00006-0575-61 ",.02)
 ;;00006-0575-61
 ;;9002226.02101,"1774,00006-0575-62 ",.01)
 ;;00006-0575-62
 ;;9002226.02101,"1774,00006-0575-62 ",.02)
 ;;00006-0575-62
 ;;9002226.02101,"1774,00006-0575-82 ",.01)
 ;;00006-0575-82
 ;;9002226.02101,"1774,00006-0575-82 ",.02)
 ;;00006-0575-82
 ;;9002226.02101,"1774,00006-0577-52 ",.01)
 ;;00006-0577-52
 ;;9002226.02101,"1774,00006-0577-52 ",.02)
 ;;00006-0577-52
 ;;9002226.02101,"1774,00006-0577-61 ",.01)
 ;;00006-0577-61
 ;;9002226.02101,"1774,00006-0577-61 ",.02)
 ;;00006-0577-61
 ;;9002226.02101,"1774,00006-0577-62 ",.01)
 ;;00006-0577-62
 ;;9002226.02101,"1774,00006-0577-62 ",.02)
 ;;00006-0577-62
 ;;9002226.02101,"1774,00006-0577-82 ",.01)
 ;;00006-0577-82
 ;;9002226.02101,"1774,00006-0577-82 ",.02)
 ;;00006-0577-82
 ;;9002226.02101,"1774,00006-0753-31 ",.01)
 ;;00006-0753-31
 ;;9002226.02101,"1774,00006-0753-31 ",.02)
 ;;00006-0753-31
 ;;9002226.02101,"1774,00006-0753-54 ",.01)
 ;;00006-0753-54
 ;;9002226.02101,"1774,00006-0753-54 ",.02)
 ;;00006-0753-54
 ;;9002226.02101,"1774,00006-0753-82 ",.01)
 ;;00006-0753-82
 ;;9002226.02101,"1774,00006-0753-82 ",.02)
 ;;00006-0753-82
 ;;9002226.02101,"1774,00006-0757-31 ",.01)
 ;;00006-0757-31
 ;;9002226.02101,"1774,00006-0757-31 ",.02)
 ;;00006-0757-31
 ;;9002226.02101,"1774,00006-0757-54 ",.01)
 ;;00006-0757-54
 ;;9002226.02101,"1774,00006-0757-54 ",.02)
 ;;00006-0757-54
 ;;9002226.02101,"1774,00006-0757-82 ",.01)
 ;;00006-0757-82
 ;;9002226.02101,"1774,00006-0757-82 ",.02)
 ;;00006-0757-82
 ;;9002226.02101,"1774,00006-0773-31 ",.01)
 ;;00006-0773-31
 ;;9002226.02101,"1774,00006-0773-31 ",.02)
 ;;00006-0773-31
 ;;9002226.02101,"1774,00006-0773-54 ",.01)
 ;;00006-0773-54
 ;;9002226.02101,"1774,00006-0773-54 ",.02)
 ;;00006-0773-54
 ;;9002226.02101,"1774,00006-0773-82 ",.01)
 ;;00006-0773-82
 ;;9002226.02101,"1774,00006-0773-82 ",.02)
 ;;00006-0773-82
 ;;9002226.02101,"1774,00009-0141-01 ",.01)
 ;;00009-0141-01
 ;;9002226.02101,"1774,00009-0141-01 ",.02)
 ;;00009-0141-01
 ;;9002226.02101,"1774,00009-0171-05 ",.01)
 ;;00009-0171-05
 ;;9002226.02101,"1774,00009-0171-05 ",.02)
 ;;00009-0171-05
 ;;9002226.02101,"1774,00009-0341-01 ",.01)
 ;;00009-0341-01
 ;;9002226.02101,"1774,00009-0341-01 ",.02)
 ;;00009-0341-01
 ;;9002226.02101,"1774,00009-0352-01 ",.01)
 ;;00009-0352-01
 ;;9002226.02101,"1774,00009-0352-01 ",.02)
 ;;00009-0352-01
 ;;9002226.02101,"1774,00009-0352-04 ",.01)
 ;;00009-0352-04
 ;;9002226.02101,"1774,00009-0352-04 ",.02)
 ;;00009-0352-04
 ;;9002226.02101,"1774,00009-3449-01 ",.01)
 ;;00009-3449-01
 ;;9002226.02101,"1774,00009-3449-01 ",.02)
 ;;00009-3449-01
 ;;9002226.02101,"1774,00009-3449-03 ",.01)
 ;;00009-3449-03
 ;;9002226.02101,"1774,00009-3449-03 ",.02)
 ;;00009-3449-03
 ;;9002226.02101,"1774,00039-0051-10 ",.01)
 ;;00039-0051-10
 ;;9002226.02101,"1774,00039-0051-10 ",.02)
 ;;00039-0051-10
 ;;9002226.02101,"1774,00039-0051-50 ",.01)
 ;;00039-0051-50
 ;;9002226.02101,"1774,00039-0051-50 ",.02)
 ;;00039-0051-50
 ;;9002226.02101,"1774,00039-0052-10 ",.01)
 ;;00039-0052-10
 ;;9002226.02101,"1774,00039-0052-10 ",.02)
 ;;00039-0052-10
 ;;9002226.02101,"1774,00039-0052-70 ",.01)
 ;;00039-0052-70
 ;;9002226.02101,"1774,00039-0052-70 ",.02)
 ;;00039-0052-70
 ;;9002226.02101,"1774,00039-0053-05 ",.01)
 ;;00039-0053-05
 ;;9002226.02101,"1774,00039-0053-05 ",.02)
 ;;00039-0053-05
 ;;9002226.02101,"1774,00039-0221-10 ",.01)
 ;;00039-0221-10
 ;;9002226.02101,"1774,00039-0221-10 ",.02)
 ;;00039-0221-10
 ;;9002226.02101,"1774,00039-0222-10 ",.01)
 ;;00039-0222-10
 ;;9002226.02101,"1774,00039-0222-10 ",.02)
 ;;00039-0222-10
 ;;9002226.02101,"1774,00039-0223-10 ",.01)
 ;;00039-0223-10
 ;;9002226.02101,"1774,00039-0223-10 ",.02)
 ;;00039-0223-10
 ;;9002226.02101,"1774,00049-0170-01 ",.01)
 ;;00049-0170-01
 ;;9002226.02101,"1774,00049-0170-01 ",.02)
 ;;00049-0170-01
 ;;9002226.02101,"1774,00049-0174-02 ",.01)
 ;;00049-0174-02
 ;;9002226.02101,"1774,00049-0174-02 ",.02)
 ;;00049-0174-02
 ;;9002226.02101,"1774,00049-0178-07 ",.01)
 ;;00049-0178-07
 ;;9002226.02101,"1774,00049-0178-07 ",.02)
 ;;00049-0178-07
 ;;9002226.02101,"1774,00049-0178-08 ",.01)
 ;;00049-0178-08
 ;;9002226.02101,"1774,00049-0178-08 ",.02)
 ;;00049-0178-08
 ;;9002226.02101,"1774,00049-1550-66 ",.01)
 ;;00049-1550-66
 ;;9002226.02101,"1774,00049-1550-66 ",.02)
 ;;00049-1550-66
 ;;9002226.02101,"1774,00049-1550-73 ",.01)
 ;;00049-1550-73
 ;;9002226.02101,"1774,00049-1550-73 ",.02)
 ;;00049-1550-73
 ;;9002226.02101,"1774,00049-1560-66 ",.01)
 ;;00049-1560-66
 ;;9002226.02101,"1774,00049-1560-66 ",.02)
 ;;00049-1560-66
 ;;9002226.02101,"1774,00049-1560-73 ",.01)
 ;;00049-1560-73
 ;;9002226.02101,"1774,00049-1560-73 ",.02)
 ;;00049-1560-73
 ;;9002226.02101,"1774,00049-1620-30 ",.01)
 ;;00049-1620-30
 ;;9002226.02101,"1774,00049-1620-30 ",.02)
 ;;00049-1620-30
 ;;9002226.02101,"1774,00049-4110-66 ",.01)
 ;;00049-4110-66
 ;;9002226.02101,"1774,00049-4110-66 ",.02)
 ;;00049-4110-66
 ;;9002226.02101,"1774,00049-4120-66 ",.01)
 ;;00049-4120-66
 ;;9002226.02101,"1774,00049-4120-66 ",.02)
 ;;00049-4120-66
 ;;9002226.02101,"1774,00078-0351-05 ",.01)
 ;;00078-0351-05
 ;;9002226.02101,"1774,00078-0351-05 ",.02)
 ;;00078-0351-05
 ;;9002226.02101,"1774,00078-0352-05 ",.01)
 ;;00078-0352-05
 ;;9002226.02101,"1774,00078-0352-05 ",.02)
 ;;00078-0352-05
 ;;9002226.02101,"1774,00087-6060-05 ",.01)
 ;;00087-6060-05
 ;;9002226.02101,"1774,00087-6060-05 ",.02)
 ;;00087-6060-05
 ;;9002226.02101,"1774,00087-6060-10 ",.01)
 ;;00087-6060-10
 ;;9002226.02101,"1774,00087-6060-10 ",.02)
 ;;00087-6060-10
 ;;9002226.02101,"1774,00087-6063-13 ",.01)
 ;;00087-6063-13
 ;;9002226.02101,"1774,00087-6063-13 ",.02)
 ;;00087-6063-13
 ;;9002226.02101,"1774,00087-6064-13 ",.01)
 ;;00087-6064-13
 ;;9002226.02101,"1774,00087-6064-13 ",.02)
 ;;00087-6064-13
 ;;9002226.02101,"1774,00087-6070-05 ",.01)
 ;;00087-6070-05
 ;;9002226.02101,"1774,00087-6070-05 ",.02)
 ;;00087-6070-05
 ;;9002226.02101,"1774,00087-6071-11 ",.01)
 ;;00087-6071-11
 ;;9002226.02101,"1774,00087-6071-11 ",.02)
 ;;00087-6071-11
 ;;9002226.02101,"1774,00087-6072-11 ",.01)
 ;;00087-6072-11
 ;;9002226.02101,"1774,00087-6072-11 ",.02)
 ;;00087-6072-11
 ;;9002226.02101,"1774,00087-6073-11 ",.01)
 ;;00087-6073-11
 ;;9002226.02101,"1774,00087-6073-11 ",.02)
 ;;00087-6073-11
 ;;9002226.02101,"1774,00087-6074-11 ",.01)
 ;;00087-6074-11
 ;;9002226.02101,"1774,00087-6074-11 ",.02)
 ;;00087-6074-11
 ;;9002226.02101,"1774,00087-6077-31 ",.01)
 ;;00087-6077-31
 ;;9002226.02101,"1774,00087-6077-31 ",.02)
 ;;00087-6077-31
 ;;9002226.02101,"1774,00087-6078-31 ",.01)
 ;;00087-6078-31
 ;;9002226.02101,"1774,00087-6078-31 ",.02)
 ;;00087-6078-31
 ;;9002226.02101,"1774,00093-1048-01 ",.01)
 ;;00093-1048-01
 ;;9002226.02101,"1774,00093-1048-01 ",.02)
 ;;00093-1048-01
 ;;9002226.02101,"1774,00093-1048-10 ",.01)
 ;;00093-1048-10
 ;;9002226.02101,"1774,00093-1048-10 ",.02)
 ;;00093-1048-10
 ;;9002226.02101,"1774,00093-1048-19 ",.01)
 ;;00093-1048-19
 ;;9002226.02101,"1774,00093-1048-19 ",.02)
 ;;00093-1048-19
 ;;9002226.02101,"1774,00093-1048-93 ",.01)
 ;;00093-1048-93
 ;;9002226.02101,"1774,00093-1048-93 ",.02)
 ;;00093-1048-93
 ;;9002226.02101,"1774,00093-1048-98 ",.01)
 ;;00093-1048-98
 ;;9002226.02101,"1774,00093-1048-98 ",.02)
 ;;00093-1048-98
 ;;9002226.02101,"1774,00093-1049-01 ",.01)
 ;;00093-1049-01
 ;;9002226.02101,"1774,00093-1049-01 ",.02)
 ;;00093-1049-01
 ;;9002226.02101,"1774,00093-1049-10 ",.01)
 ;;00093-1049-10
 ;;9002226.02101,"1774,00093-1049-10 ",.02)
 ;;00093-1049-10
 ;;9002226.02101,"1774,00093-1049-19 ",.01)
 ;;00093-1049-19
 ;;9002226.02101,"1774,00093-1049-19 ",.02)
 ;;00093-1049-19
 ;;9002226.02101,"1774,00093-1049-93 ",.01)
 ;;00093-1049-93
 ;;9002226.02101,"1774,00093-1049-93 ",.02)
 ;;00093-1049-93
 ;;9002226.02101,"1774,00093-1049-98 ",.01)
 ;;00093-1049-98
 ;;9002226.02101,"1774,00093-1049-98 ",.02)
 ;;00093-1049-98
 ;;9002226.02101,"1774,00093-2046-05 ",.01)
 ;;00093-2046-05
 ;;9002226.02101,"1774,00093-2046-05 ",.02)
 ;;00093-2046-05
 ;;9002226.02101,"1774,00093-2046-56 ",.01)
 ;;00093-2046-56
 ;;9002226.02101,"1774,00093-2046-56 ",.02)
 ;;00093-2046-56
 ;;9002226.02101,"1774,00093-2046-98 ",.01)
 ;;00093-2046-98
 ;;9002226.02101,"1774,00093-2046-98 ",.02)
 ;;00093-2046-98
 ;;9002226.02101,"1774,00093-2047-05 ",.01)
 ;;00093-2047-05
 ;;9002226.02101,"1774,00093-2047-05 ",.02)
 ;;00093-2047-05
 ;;9002226.02101,"1774,00093-2047-56 ",.01)
 ;;00093-2047-56
 ;;9002226.02101,"1774,00093-2047-56 ",.02)
 ;;00093-2047-56
 ;;9002226.02101,"1774,00093-2047-98 ",.01)
 ;;00093-2047-98
 ;;9002226.02101,"1774,00093-2047-98 ",.02)
 ;;00093-2047-98
 ;;9002226.02101,"1774,00093-2048-05 ",.01)
 ;;00093-2048-05
 ;;9002226.02101,"1774,00093-2048-05 ",.02)
 ;;00093-2048-05
 ;;9002226.02101,"1774,00093-2048-56 ",.01)
 ;;00093-2048-56
 ;;9002226.02101,"1774,00093-2048-56 ",.02)
 ;;00093-2048-56
 ;;9002226.02101,"1774,00093-2048-98 ",.01)
 ;;00093-2048-98
 ;;9002226.02101,"1774,00093-2048-98 ",.02)
 ;;00093-2048-98