BUDD1D8 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON NOV 30, 2016 ;
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1078,00029315900 ",.03)
 ;;30
 ;;9002226.02101,"1078,00029315913 ",.01)
 ;;00029315913
 ;;9002226.02101,"1078,00029315913 ",.02)
 ;;00029315913
 ;;9002226.02101,"1078,00029315913 ",.03)
 ;;30
 ;;9002226.02101,"1078,00029316013 ",.01)
 ;;00029316013
 ;;9002226.02101,"1078,00029316013 ",.02)
 ;;00029316013
 ;;9002226.02101,"1078,00029316013 ",.03)
 ;;30
 ;;9002226.02101,"1078,00029316059 ",.01)
 ;;00029316059
 ;;9002226.02101,"1078,00029316059 ",.02)
 ;;00029316059
 ;;9002226.02101,"1078,00029316059 ",.03)
 ;;30
 ;;9002226.02101,"1078,00039-0051-10 ",.01)
 ;;00039-0051-10
 ;;9002226.02101,"1078,00039-0051-10 ",.02)
 ;;00039-0051-10
 ;;9002226.02101,"1078,00039-0051-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00039-0051-50 ",.01)
 ;;00039-0051-50
 ;;9002226.02101,"1078,00039-0051-50 ",.02)
 ;;00039-0051-50
 ;;9002226.02101,"1078,00039-0051-50 ",.03)
 ;;30
 ;;9002226.02101,"1078,00039-0052-10 ",.01)
 ;;00039-0052-10
 ;;9002226.02101,"1078,00039-0052-10 ",.02)
 ;;00039-0052-10
 ;;9002226.02101,"1078,00039-0052-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00039-0052-50 ",.01)
 ;;00039-0052-50
 ;;9002226.02101,"1078,00039-0052-50 ",.02)
 ;;00039-0052-50
 ;;9002226.02101,"1078,00039-0052-50 ",.03)
 ;;30
 ;;9002226.02101,"1078,00039-0052-70 ",.01)
 ;;00039-0052-70
 ;;9002226.02101,"1078,00039-0052-70 ",.02)
 ;;00039-0052-70
 ;;9002226.02101,"1078,00039-0052-70 ",.03)
 ;;30
 ;;9002226.02101,"1078,00039-0053-05 ",.01)
 ;;00039-0053-05
 ;;9002226.02101,"1078,00039-0053-05 ",.02)
 ;;00039-0053-05
 ;;9002226.02101,"1078,00039-0053-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00039-0221-10 ",.01)
 ;;00039-0221-10
 ;;9002226.02101,"1078,00039-0221-10 ",.02)
 ;;00039-0221-10
 ;;9002226.02101,"1078,00039-0221-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00039-0222-10 ",.01)
 ;;00039-0222-10
 ;;9002226.02101,"1078,00039-0222-10 ",.02)
 ;;00039-0222-10
 ;;9002226.02101,"1078,00039-0222-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00039-0222-11 ",.01)
 ;;00039-0222-11
 ;;9002226.02101,"1078,00039-0222-11 ",.02)
 ;;00039-0222-11
 ;;9002226.02101,"1078,00039-0222-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,00039-0223-10 ",.01)
 ;;00039-0223-10
 ;;9002226.02101,"1078,00039-0223-10 ",.02)
 ;;00039-0223-10
 ;;9002226.02101,"1078,00039-0223-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00039-0223-11 ",.01)
 ;;00039-0223-11
 ;;9002226.02101,"1078,00039-0223-11 ",.02)
 ;;00039-0223-11
 ;;9002226.02101,"1078,00039-0223-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-0170-01 ",.01)
 ;;00049-0170-01
 ;;9002226.02101,"1078,00049-0170-01 ",.02)
 ;;00049-0170-01
 ;;9002226.02101,"1078,00049-0170-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-0174-02 ",.01)
 ;;00049-0174-02
 ;;9002226.02101,"1078,00049-0174-02 ",.02)
 ;;00049-0174-02
 ;;9002226.02101,"1078,00049-0174-02 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-0174-03 ",.01)
 ;;00049-0174-03
 ;;9002226.02101,"1078,00049-0174-03 ",.02)
 ;;00049-0174-03
 ;;9002226.02101,"1078,00049-0174-03 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-0178-07 ",.01)
 ;;00049-0178-07
 ;;9002226.02101,"1078,00049-0178-07 ",.02)
 ;;00049-0178-07
 ;;9002226.02101,"1078,00049-0178-07 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-0178-08 ",.01)
 ;;00049-0178-08
 ;;9002226.02101,"1078,00049-0178-08 ",.02)
 ;;00049-0178-08
 ;;9002226.02101,"1078,00049-0178-08 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-1550-66 ",.01)
 ;;00049-1550-66
 ;;9002226.02101,"1078,00049-1550-66 ",.02)
 ;;00049-1550-66
 ;;9002226.02101,"1078,00049-1550-66 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-1550-73 ",.01)
 ;;00049-1550-73
 ;;9002226.02101,"1078,00049-1550-73 ",.02)
 ;;00049-1550-73
 ;;9002226.02101,"1078,00049-1550-73 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-1560-66 ",.01)
 ;;00049-1560-66
 ;;9002226.02101,"1078,00049-1560-66 ",.02)
 ;;00049-1560-66
 ;;9002226.02101,"1078,00049-1560-66 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-1560-73 ",.01)
 ;;00049-1560-73
 ;;9002226.02101,"1078,00049-1560-73 ",.02)
 ;;00049-1560-73
 ;;9002226.02101,"1078,00049-1560-73 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-1620-30 ",.01)
 ;;00049-1620-30
 ;;9002226.02101,"1078,00049-1620-30 ",.02)
 ;;00049-1620-30
 ;;9002226.02101,"1078,00049-1620-30 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-4110-66 ",.01)
 ;;00049-4110-66
 ;;9002226.02101,"1078,00049-4110-66 ",.02)
 ;;00049-4110-66
 ;;9002226.02101,"1078,00049-4110-66 ",.03)
 ;;30
 ;;9002226.02101,"1078,00049-4120-66 ",.01)
 ;;00049-4120-66
 ;;9002226.02101,"1078,00049-4120-66 ",.02)
 ;;00049-4120-66
 ;;9002226.02101,"1078,00049-4120-66 ",.03)
 ;;30
 ;;9002226.02101,"1078,00054-0140-25 ",.01)
 ;;00054-0140-25
 ;;9002226.02101,"1078,00054-0140-25 ",.02)
 ;;00054-0140-25
 ;;9002226.02101,"1078,00054-0140-25 ",.03)
 ;;30
 ;;9002226.02101,"1078,00054-0141-20 ",.01)
 ;;00054-0141-20
 ;;9002226.02101,"1078,00054-0141-20 ",.02)
 ;;00054-0141-20
 ;;9002226.02101,"1078,00054-0141-20 ",.03)
 ;;30
 ;;9002226.02101,"1078,00054-0141-25 ",.01)
 ;;00054-0141-25
 ;;9002226.02101,"1078,00054-0141-25 ",.02)
 ;;00054-0141-25
 ;;9002226.02101,"1078,00054-0141-25 ",.03)
 ;;30
 ;;9002226.02101,"1078,00054-0142-25 ",.01)
 ;;00054-0142-25
 ;;9002226.02101,"1078,00054-0142-25 ",.02)
 ;;00054-0142-25
 ;;9002226.02101,"1078,00054-0142-25 ",.03)
 ;;30
 ;;9002226.02101,"1078,00078-0351-05 ",.01)
 ;;00078-0351-05
 ;;9002226.02101,"1078,00078-0351-05 ",.02)
 ;;00078-0351-05
 ;;9002226.02101,"1078,00078-0351-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00078-0352-05 ",.01)
 ;;00078-0352-05
 ;;9002226.02101,"1078,00078-0352-05 ",.02)
 ;;00078-0352-05
 ;;9002226.02101,"1078,00078-0352-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00087-6072-11 ",.01)
 ;;00087-6072-11
 ;;9002226.02101,"1078,00087-6072-11 ",.02)
 ;;00087-6072-11
 ;;9002226.02101,"1078,00087-6072-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,00087-6073-11 ",.01)
 ;;00087-6073-11
 ;;9002226.02101,"1078,00087-6073-11 ",.02)
 ;;00087-6073-11
 ;;9002226.02101,"1078,00087-6073-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,00087-6074-11 ",.01)
 ;;00087-6074-11
 ;;9002226.02101,"1078,00087-6074-11 ",.02)
 ;;00087-6074-11
 ;;9002226.02101,"1078,00087-6074-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,00087-6077-31 ",.01)
 ;;00087-6077-31
 ;;9002226.02101,"1078,00087-6077-31 ",.02)
 ;;00087-6077-31
 ;;9002226.02101,"1078,00087-6077-31 ",.03)
 ;;30
 ;;9002226.02101,"1078,00087-6078-31 ",.01)
 ;;00087-6078-31
 ;;9002226.02101,"1078,00087-6078-31 ",.02)
 ;;00087-6078-31
 ;;9002226.02101,"1078,00087-6078-31 ",.03)
 ;;30
 ;;9002226.02101,"1078,00087-6081-31 ",.01)
 ;;00087-6081-31
 ;;9002226.02101,"1078,00087-6081-31 ",.02)
 ;;00087-6081-31
 ;;9002226.02101,"1078,00087-6081-31 ",.03)
 ;;30
 ;;9002226.02101,"1078,00088-2219-05 ",.01)
 ;;00088-2219-05
 ;;9002226.02101,"1078,00088-2219-05 ",.02)
 ;;00088-2219-05
 ;;9002226.02101,"1078,00088-2219-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00088-2220-33 ",.01)
 ;;00088-2220-33
 ;;9002226.02101,"1078,00088-2220-33 ",.02)
 ;;00088-2220-33
 ;;9002226.02101,"1078,00088-2220-33 ",.03)
 ;;30
 ;;9002226.02101,"1078,00088-2220-52 ",.01)
 ;;00088-2220-52
 ;;9002226.02101,"1078,00088-2220-52 ",.02)
 ;;00088-2220-52
 ;;9002226.02101,"1078,00088-2220-52 ",.03)
 ;;30
 ;;9002226.02101,"1078,00088-2220-60 ",.01)
 ;;00088-2220-60
 ;;9002226.02101,"1078,00088-2220-60 ",.02)
 ;;00088-2220-60
 ;;9002226.02101,"1078,00088-2220-60 ",.03)
 ;;30
 ;;9002226.02101,"1078,00088-2500-33 ",.01)
 ;;00088-2500-33
 ;;9002226.02101,"1078,00088-2500-33 ",.02)
 ;;00088-2500-33
 ;;9002226.02101,"1078,00088-2500-33 ",.03)
 ;;30
 ;;9002226.02101,"1078,00088-2500-52 ",.01)
 ;;00088-2500-52
 ;;9002226.02101,"1078,00088-2500-52 ",.02)
 ;;00088-2500-52
 ;;9002226.02101,"1078,00088-2500-52 ",.03)
 ;;30
 ;;9002226.02101,"1078,00088-2502-05 ",.01)
 ;;00088-2502-05
 ;;9002226.02101,"1078,00088-2502-05 ",.02)
 ;;00088-2502-05
 ;;9002226.02101,"1078,00088-2502-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-2047-05 ",.01)
 ;;00093-2047-05
 ;;9002226.02101,"1078,00093-2047-05 ",.02)
 ;;00093-2047-05
 ;;9002226.02101,"1078,00093-2047-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-2047-56 ",.01)
 ;;00093-2047-56
 ;;9002226.02101,"1078,00093-2047-56 ",.02)
 ;;00093-2047-56
 ;;9002226.02101,"1078,00093-2047-56 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-2047-98 ",.01)
 ;;00093-2047-98
 ;;9002226.02101,"1078,00093-2047-98 ",.02)
 ;;00093-2047-98
 ;;9002226.02101,"1078,00093-2047-98 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-2048-05 ",.01)
 ;;00093-2048-05
 ;;9002226.02101,"1078,00093-2048-05 ",.02)
 ;;00093-2048-05
 ;;9002226.02101,"1078,00093-2048-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-2048-56 ",.01)
 ;;00093-2048-56
 ;;9002226.02101,"1078,00093-2048-56 ",.02)
 ;;00093-2048-56
 ;;9002226.02101,"1078,00093-2048-56 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-2048-98 ",.01)
 ;;00093-2048-98
 ;;9002226.02101,"1078,00093-2048-98 ",.02)
 ;;00093-2048-98
 ;;9002226.02101,"1078,00093-2048-98 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5049-06 ",.01)
 ;;00093-5049-06
 ;;9002226.02101,"1078,00093-5049-06 ",.02)
 ;;00093-5049-06
 ;;9002226.02101,"1078,00093-5049-06 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5049-86 ",.01)
 ;;00093-5049-86
 ;;9002226.02101,"1078,00093-5049-86 ",.02)
 ;;00093-5049-86
 ;;9002226.02101,"1078,00093-5049-86 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5050-06 ",.01)
 ;;00093-5050-06
 ;;9002226.02101,"1078,00093-5050-06 ",.02)
 ;;00093-5050-06
 ;;9002226.02101,"1078,00093-5050-06 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5050-86 ",.01)
 ;;00093-5050-86
 ;;9002226.02101,"1078,00093-5050-86 ",.02)
 ;;00093-5050-86
 ;;9002226.02101,"1078,00093-5050-86 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5710-01 ",.01)
 ;;00093-5710-01
 ;;9002226.02101,"1078,00093-5710-01 ",.02)
 ;;00093-5710-01
 ;;9002226.02101,"1078,00093-5710-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5710-05 ",.01)
 ;;00093-5710-05
 ;;9002226.02101,"1078,00093-5710-05 ",.02)
 ;;00093-5710-05
 ;;9002226.02101,"1078,00093-5710-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5710-19 ",.01)
 ;;00093-5710-19
 ;;9002226.02101,"1078,00093-5710-19 ",.02)
 ;;00093-5710-19
 ;;9002226.02101,"1078,00093-5710-19 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5710-93 ",.01)
 ;;00093-5710-93
 ;;9002226.02101,"1078,00093-5710-93 ",.02)
 ;;00093-5710-93
 ;;9002226.02101,"1078,00093-5710-93 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5711-01 ",.01)
 ;;00093-5711-01
 ;;9002226.02101,"1078,00093-5711-01 ",.02)
 ;;00093-5711-01
 ;;9002226.02101,"1078,00093-5711-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5711-05 ",.01)
 ;;00093-5711-05
 ;;9002226.02101,"1078,00093-5711-05 ",.02)
 ;;00093-5711-05
 ;;9002226.02101,"1078,00093-5711-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5711-19 ",.01)
 ;;00093-5711-19
 ;;9002226.02101,"1078,00093-5711-19 ",.02)
 ;;00093-5711-19
 ;;9002226.02101,"1078,00093-5711-19 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5711-93 ",.01)
 ;;00093-5711-93
 ;;9002226.02101,"1078,00093-5711-93 ",.02)
 ;;00093-5711-93
 ;;9002226.02101,"1078,00093-5711-93 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5712-01 ",.01)
 ;;00093-5712-01
 ;;9002226.02101,"1078,00093-5712-01 ",.02)
 ;;00093-5712-01
 ;;9002226.02101,"1078,00093-5712-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5712-05 ",.01)
 ;;00093-5712-05
 ;;9002226.02101,"1078,00093-5712-05 ",.02)
 ;;00093-5712-05
 ;;9002226.02101,"1078,00093-5712-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5712-19 ",.01)
 ;;00093-5712-19
 ;;9002226.02101,"1078,00093-5712-19 ",.02)
 ;;00093-5712-19
 ;;9002226.02101,"1078,00093-5712-19 ",.03)
 ;;30
 ;;9002226.02101,"1078,00093-5712-93 ",.01)
 ;;00093-5712-93
 ;;9002226.02101,"1078,00093-5712-93 ",.02)
 ;;00093-5712-93