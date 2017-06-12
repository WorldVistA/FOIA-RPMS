BGP53I56 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"734,55289-0107-02 ",.02)
 ;;55289-0107-02
 ;;9002226.02101,"734,55289-0107-06 ",.01)
 ;;55289-0107-06
 ;;9002226.02101,"734,55289-0107-06 ",.02)
 ;;55289-0107-06
 ;;9002226.02101,"734,55289-0107-10 ",.01)
 ;;55289-0107-10
 ;;9002226.02101,"734,55289-0107-10 ",.02)
 ;;55289-0107-10
 ;;9002226.02101,"734,55289-0107-12 ",.01)
 ;;55289-0107-12
 ;;9002226.02101,"734,55289-0107-12 ",.02)
 ;;55289-0107-12
 ;;9002226.02101,"734,55289-0107-14 ",.01)
 ;;55289-0107-14
 ;;9002226.02101,"734,55289-0107-14 ",.02)
 ;;55289-0107-14
 ;;9002226.02101,"734,55289-0107-20 ",.01)
 ;;55289-0107-20
 ;;9002226.02101,"734,55289-0107-20 ",.02)
 ;;55289-0107-20
 ;;9002226.02101,"734,55289-0107-28 ",.01)
 ;;55289-0107-28
 ;;9002226.02101,"734,55289-0107-28 ",.02)
 ;;55289-0107-28
 ;;9002226.02101,"734,55289-0107-30 ",.01)
 ;;55289-0107-30
 ;;9002226.02101,"734,55289-0107-30 ",.02)
 ;;55289-0107-30
 ;;9002226.02101,"734,55289-0107-40 ",.01)
 ;;55289-0107-40
 ;;9002226.02101,"734,55289-0107-40 ",.02)
 ;;55289-0107-40
 ;;9002226.02101,"734,55289-0107-50 ",.01)
 ;;55289-0107-50
 ;;9002226.02101,"734,55289-0107-50 ",.02)
 ;;55289-0107-50
 ;;9002226.02101,"734,55289-0107-56 ",.01)
 ;;55289-0107-56
 ;;9002226.02101,"734,55289-0107-56 ",.02)
 ;;55289-0107-56
 ;;9002226.02101,"734,55289-0107-60 ",.01)
 ;;55289-0107-60
 ;;9002226.02101,"734,55289-0107-60 ",.02)
 ;;55289-0107-60
 ;;9002226.02101,"734,55289-0107-79 ",.01)
 ;;55289-0107-79
 ;;9002226.02101,"734,55289-0107-79 ",.02)
 ;;55289-0107-79
 ;;9002226.02101,"734,55289-0107-90 ",.01)
 ;;55289-0107-90
 ;;9002226.02101,"734,55289-0107-90 ",.02)
 ;;55289-0107-90
 ;;9002226.02101,"734,55289-0107-93 ",.01)
 ;;55289-0107-93
 ;;9002226.02101,"734,55289-0107-93 ",.02)
 ;;55289-0107-93
 ;;9002226.02101,"734,55289-0110-03 ",.01)
 ;;55289-0110-03
 ;;9002226.02101,"734,55289-0110-03 ",.02)
 ;;55289-0110-03
 ;;9002226.02101,"734,55289-0110-09 ",.01)
 ;;55289-0110-09
 ;;9002226.02101,"734,55289-0110-09 ",.02)
 ;;55289-0110-09
 ;;9002226.02101,"734,55289-0110-20 ",.01)
 ;;55289-0110-20
 ;;9002226.02101,"734,55289-0110-20 ",.02)
 ;;55289-0110-20
 ;;9002226.02101,"734,55289-0110-28 ",.01)
 ;;55289-0110-28
 ;;9002226.02101,"734,55289-0110-28 ",.02)
 ;;55289-0110-28
 ;;9002226.02101,"734,55289-0110-30 ",.01)
 ;;55289-0110-30
 ;;9002226.02101,"734,55289-0110-30 ",.02)
 ;;55289-0110-30
 ;;9002226.02101,"734,55289-0110-40 ",.01)
 ;;55289-0110-40
 ;;9002226.02101,"734,55289-0110-40 ",.02)
 ;;55289-0110-40
 ;;9002226.02101,"734,55289-0110-56 ",.01)
 ;;55289-0110-56
 ;;9002226.02101,"734,55289-0110-56 ",.02)
 ;;55289-0110-56
 ;;9002226.02101,"734,55289-0111-20 ",.01)
 ;;55289-0111-20
 ;;9002226.02101,"734,55289-0111-20 ",.02)
 ;;55289-0111-20
 ;;9002226.02101,"734,55289-0111-28 ",.01)
 ;;55289-0111-28
 ;;9002226.02101,"734,55289-0111-28 ",.02)
 ;;55289-0111-28
 ;;9002226.02101,"734,55289-0111-40 ",.01)
 ;;55289-0111-40
 ;;9002226.02101,"734,55289-0111-40 ",.02)
 ;;55289-0111-40
 ;;9002226.02101,"734,55289-0111-56 ",.01)
 ;;55289-0111-56
 ;;9002226.02101,"734,55289-0111-56 ",.02)
 ;;55289-0111-56
 ;;9002226.02101,"734,55289-0111-80 ",.01)
 ;;55289-0111-80
 ;;9002226.02101,"734,55289-0111-80 ",.02)
 ;;55289-0111-80
 ;;9002226.02101,"734,55289-0112-01 ",.01)
 ;;55289-0112-01
 ;;9002226.02101,"734,55289-0112-01 ",.02)
 ;;55289-0112-01
 ;;9002226.02101,"734,55289-0112-04 ",.01)
 ;;55289-0112-04
 ;;9002226.02101,"734,55289-0112-04 ",.02)
 ;;55289-0112-04
 ;;9002226.02101,"734,55289-0112-10 ",.01)
 ;;55289-0112-10
 ;;9002226.02101,"734,55289-0112-10 ",.02)
 ;;55289-0112-10
 ;;9002226.02101,"734,55289-0112-15 ",.01)
 ;;55289-0112-15
 ;;9002226.02101,"734,55289-0112-15 ",.02)
 ;;55289-0112-15
 ;;9002226.02101,"734,55289-0112-20 ",.01)
 ;;55289-0112-20
 ;;9002226.02101,"734,55289-0112-20 ",.02)
 ;;55289-0112-20
 ;;9002226.02101,"734,55289-0112-28 ",.01)
 ;;55289-0112-28
 ;;9002226.02101,"734,55289-0112-28 ",.02)
 ;;55289-0112-28
 ;;9002226.02101,"734,55289-0112-40 ",.01)
 ;;55289-0112-40
 ;;9002226.02101,"734,55289-0112-40 ",.02)
 ;;55289-0112-40
 ;;9002226.02101,"734,55289-0112-56 ",.01)
 ;;55289-0112-56
 ;;9002226.02101,"734,55289-0112-56 ",.02)
 ;;55289-0112-56
 ;;9002226.02101,"734,55289-0112-98 ",.01)
 ;;55289-0112-98
 ;;9002226.02101,"734,55289-0112-98 ",.02)
 ;;55289-0112-98
 ;;9002226.02101,"734,55289-0182-06 ",.01)
 ;;55289-0182-06
 ;;9002226.02101,"734,55289-0182-06 ",.02)
 ;;55289-0182-06
 ;;9002226.02101,"734,55289-0182-09 ",.01)
 ;;55289-0182-09
 ;;9002226.02101,"734,55289-0182-09 ",.02)
 ;;55289-0182-09
 ;;9002226.02101,"734,55289-0182-14 ",.01)
 ;;55289-0182-14
 ;;9002226.02101,"734,55289-0182-14 ",.02)
 ;;55289-0182-14
 ;;9002226.02101,"734,55289-0182-30 ",.01)
 ;;55289-0182-30
 ;;9002226.02101,"734,55289-0182-30 ",.02)
 ;;55289-0182-30
 ;;9002226.02101,"734,55289-0182-40 ",.01)
 ;;55289-0182-40
 ;;9002226.02101,"734,55289-0182-40 ",.02)
 ;;55289-0182-40
 ;;9002226.02101,"734,55289-0201-14 ",.01)
 ;;55289-0201-14
 ;;9002226.02101,"734,55289-0201-14 ",.02)
 ;;55289-0201-14
 ;;9002226.02101,"734,55289-0201-30 ",.01)
 ;;55289-0201-30
 ;;9002226.02101,"734,55289-0201-30 ",.02)
 ;;55289-0201-30
 ;;9002226.02101,"734,55289-0202-30 ",.01)
 ;;55289-0202-30
 ;;9002226.02101,"734,55289-0202-30 ",.02)
 ;;55289-0202-30
 ;;9002226.02101,"734,55289-0204-20 ",.01)
 ;;55289-0204-20
 ;;9002226.02101,"734,55289-0204-20 ",.02)
 ;;55289-0204-20
 ;;9002226.02101,"734,55289-0206-10 ",.01)
 ;;55289-0206-10
 ;;9002226.02101,"734,55289-0206-10 ",.02)
 ;;55289-0206-10
 ;;9002226.02101,"734,55289-0206-20 ",.01)
 ;;55289-0206-20
 ;;9002226.02101,"734,55289-0206-20 ",.02)
 ;;55289-0206-20
 ;;9002226.02101,"734,55289-0206-28 ",.01)
 ;;55289-0206-28
 ;;9002226.02101,"734,55289-0206-28 ",.02)
 ;;55289-0206-28
 ;;9002226.02101,"734,55289-0206-30 ",.01)
 ;;55289-0206-30
 ;;9002226.02101,"734,55289-0206-30 ",.02)
 ;;55289-0206-30
 ;;9002226.02101,"734,55289-0206-40 ",.01)
 ;;55289-0206-40
 ;;9002226.02101,"734,55289-0206-40 ",.02)
 ;;55289-0206-40
 ;;9002226.02101,"734,55289-0206-56 ",.01)
 ;;55289-0206-56
 ;;9002226.02101,"734,55289-0206-56 ",.02)
 ;;55289-0206-56
 ;;9002226.02101,"734,55289-0206-97 ",.01)
 ;;55289-0206-97
 ;;9002226.02101,"734,55289-0206-97 ",.02)
 ;;55289-0206-97
 ;;9002226.02101,"734,55289-0207-04 ",.01)
 ;;55289-0207-04
 ;;9002226.02101,"734,55289-0207-04 ",.02)
 ;;55289-0207-04
 ;;9002226.02101,"734,55289-0207-15 ",.01)
 ;;55289-0207-15
 ;;9002226.02101,"734,55289-0207-15 ",.02)
 ;;55289-0207-15
 ;;9002226.02101,"734,55289-0207-20 ",.01)
 ;;55289-0207-20
 ;;9002226.02101,"734,55289-0207-20 ",.02)
 ;;55289-0207-20
 ;;9002226.02101,"734,55289-0207-28 ",.01)
 ;;55289-0207-28
 ;;9002226.02101,"734,55289-0207-28 ",.02)
 ;;55289-0207-28
 ;;9002226.02101,"734,55289-0207-30 ",.01)
 ;;55289-0207-30
 ;;9002226.02101,"734,55289-0207-30 ",.02)
 ;;55289-0207-30
 ;;9002226.02101,"734,55289-0207-40 ",.01)
 ;;55289-0207-40
 ;;9002226.02101,"734,55289-0207-40 ",.02)
 ;;55289-0207-40
 ;;9002226.02101,"734,55289-0217-28 ",.01)
 ;;55289-0217-28
 ;;9002226.02101,"734,55289-0217-28 ",.02)
 ;;55289-0217-28
 ;;9002226.02101,"734,55289-0217-40 ",.01)
 ;;55289-0217-40
 ;;9002226.02101,"734,55289-0217-40 ",.02)
 ;;55289-0217-40
 ;;9002226.02101,"734,55289-0232-30 ",.01)
 ;;55289-0232-30
 ;;9002226.02101,"734,55289-0232-30 ",.02)
 ;;55289-0232-30
 ;;9002226.02101,"734,55289-0235-60 ",.01)
 ;;55289-0235-60
 ;;9002226.02101,"734,55289-0235-60 ",.02)
 ;;55289-0235-60
 ;;9002226.02101,"734,55289-0241-02 ",.01)
 ;;55289-0241-02
 ;;9002226.02101,"734,55289-0241-02 ",.02)
 ;;55289-0241-02
 ;;9002226.02101,"734,55289-0241-04 ",.01)
 ;;55289-0241-04
 ;;9002226.02101,"734,55289-0241-04 ",.02)
 ;;55289-0241-04
 ;;9002226.02101,"734,55289-0241-06 ",.01)
 ;;55289-0241-06
 ;;9002226.02101,"734,55289-0241-06 ",.02)
 ;;55289-0241-06
 ;;9002226.02101,"734,55289-0241-10 ",.01)
 ;;55289-0241-10
 ;;9002226.02101,"734,55289-0241-10 ",.02)
 ;;55289-0241-10
 ;;9002226.02101,"734,55289-0241-14 ",.01)
 ;;55289-0241-14
 ;;9002226.02101,"734,55289-0241-14 ",.02)
 ;;55289-0241-14
 ;;9002226.02101,"734,55289-0241-15 ",.01)
 ;;55289-0241-15
 ;;9002226.02101,"734,55289-0241-15 ",.02)
 ;;55289-0241-15
 ;;9002226.02101,"734,55289-0241-17 ",.01)
 ;;55289-0241-17
 ;;9002226.02101,"734,55289-0241-17 ",.02)
 ;;55289-0241-17
 ;;9002226.02101,"734,55289-0241-20 ",.01)
 ;;55289-0241-20
 ;;9002226.02101,"734,55289-0241-20 ",.02)
 ;;55289-0241-20
 ;;9002226.02101,"734,55289-0241-28 ",.01)
 ;;55289-0241-28
 ;;9002226.02101,"734,55289-0241-28 ",.02)
 ;;55289-0241-28
 ;;9002226.02101,"734,55289-0241-40 ",.01)
 ;;55289-0241-40
 ;;9002226.02101,"734,55289-0241-40 ",.02)
 ;;55289-0241-40
 ;;9002226.02101,"734,55289-0241-60 ",.01)
 ;;55289-0241-60
 ;;9002226.02101,"734,55289-0241-60 ",.02)
 ;;55289-0241-60
 ;;9002226.02101,"734,55289-0241-97 ",.01)
 ;;55289-0241-97
 ;;9002226.02101,"734,55289-0241-97 ",.02)
 ;;55289-0241-97
 ;;9002226.02101,"734,55289-0242-09 ",.01)
 ;;55289-0242-09
 ;;9002226.02101,"734,55289-0242-09 ",.02)
 ;;55289-0242-09
 ;;9002226.02101,"734,55289-0242-21 ",.01)
 ;;55289-0242-21
 ;;9002226.02101,"734,55289-0242-21 ",.02)
 ;;55289-0242-21
 ;;9002226.02101,"734,55289-0274-02 ",.01)
 ;;55289-0274-02
 ;;9002226.02101,"734,55289-0274-02 ",.02)
 ;;55289-0274-02
 ;;9002226.02101,"734,55289-0274-03 ",.01)
 ;;55289-0274-03
 ;;9002226.02101,"734,55289-0274-03 ",.02)
 ;;55289-0274-03
 ;;9002226.02101,"734,55289-0274-07 ",.01)
 ;;55289-0274-07
 ;;9002226.02101,"734,55289-0274-07 ",.02)
 ;;55289-0274-07
 ;;9002226.02101,"734,55289-0310-04 ",.01)
 ;;55289-0310-04
 ;;9002226.02101,"734,55289-0310-04 ",.02)
 ;;55289-0310-04
 ;;9002226.02101,"734,55289-0310-06 ",.01)
 ;;55289-0310-06
 ;;9002226.02101,"734,55289-0310-06 ",.02)
 ;;55289-0310-06
 ;;9002226.02101,"734,55289-0310-14 ",.01)
 ;;55289-0310-14
 ;;9002226.02101,"734,55289-0310-14 ",.02)
 ;;55289-0310-14
 ;;9002226.02101,"734,55289-0371-03 ",.01)
 ;;55289-0371-03
 ;;9002226.02101,"734,55289-0371-03 ",.02)
 ;;55289-0371-03
 ;;9002226.02101,"734,55289-0371-06 ",.01)
 ;;55289-0371-06
 ;;9002226.02101,"734,55289-0371-06 ",.02)
 ;;55289-0371-06
 ;;9002226.02101,"734,55289-0371-10 ",.01)
 ;;55289-0371-10
 ;;9002226.02101,"734,55289-0371-10 ",.02)
 ;;55289-0371-10
 ;;9002226.02101,"734,55289-0371-14 ",.01)
 ;;55289-0371-14
 ;;9002226.02101,"734,55289-0371-14 ",.02)
 ;;55289-0371-14
 ;;9002226.02101,"734,55289-0371-15 ",.01)
 ;;55289-0371-15
 ;;9002226.02101,"734,55289-0371-15 ",.02)
 ;;55289-0371-15
 ;;9002226.02101,"734,55289-0371-20 ",.01)
 ;;55289-0371-20
 ;;9002226.02101,"734,55289-0371-20 ",.02)
 ;;55289-0371-20
 ;;9002226.02101,"734,55289-0371-30 ",.01)
 ;;55289-0371-30
 ;;9002226.02101,"734,55289-0371-30 ",.02)
 ;;55289-0371-30
 ;;9002226.02101,"734,55289-0371-40 ",.01)
 ;;55289-0371-40
 ;;9002226.02101,"734,55289-0371-40 ",.02)
 ;;55289-0371-40
 ;;9002226.02101,"734,55289-0371-50 ",.01)
 ;;55289-0371-50
 ;;9002226.02101,"734,55289-0371-50 ",.02)
 ;;55289-0371-50
 ;;9002226.02101,"734,55289-0371-79 ",.01)
 ;;55289-0371-79
 ;;9002226.02101,"734,55289-0371-79 ",.02)
 ;;55289-0371-79
 ;;9002226.02101,"734,55289-0371-97 ",.01)
 ;;55289-0371-97
 ;;9002226.02101,"734,55289-0371-97 ",.02)
 ;;55289-0371-97
 ;;9002226.02101,"734,55289-0372-10 ",.01)
 ;;55289-0372-10
 ;;9002226.02101,"734,55289-0372-10 ",.02)
 ;;55289-0372-10
 ;;9002226.02101,"734,55289-0372-14 ",.01)
 ;;55289-0372-14
 ;;9002226.02101,"734,55289-0372-14 ",.02)
 ;;55289-0372-14
 ;;9002226.02101,"734,55289-0372-20 ",.01)
 ;;55289-0372-20
 ;;9002226.02101,"734,55289-0372-20 ",.02)
 ;;55289-0372-20
 ;;9002226.02101,"734,55289-0372-97 ",.01)
 ;;55289-0372-97
 ;;9002226.02101,"734,55289-0372-97 ",.02)
 ;;55289-0372-97
 ;;9002226.02101,"734,55289-0385-04 ",.01)
 ;;55289-0385-04
 ;;9002226.02101,"734,55289-0385-04 ",.02)
 ;;55289-0385-04
 ;;9002226.02101,"734,55289-0385-30 ",.01)
 ;;55289-0385-30
 ;;9002226.02101,"734,55289-0385-30 ",.02)
 ;;55289-0385-30
 ;;9002226.02101,"734,55289-0390-02 ",.01)
 ;;55289-0390-02
 ;;9002226.02101,"734,55289-0390-02 ",.02)
 ;;55289-0390-02
 ;;9002226.02101,"734,55289-0390-10 ",.01)
 ;;55289-0390-10
 ;;9002226.02101,"734,55289-0390-10 ",.02)
 ;;55289-0390-10
 ;;9002226.02101,"734,55289-0390-20 ",.01)
 ;;55289-0390-20
 ;;9002226.02101,"734,55289-0390-20 ",.02)
 ;;55289-0390-20
 ;;9002226.02101,"734,55289-0390-28 ",.01)
 ;;55289-0390-28
 ;;9002226.02101,"734,55289-0390-28 ",.02)
 ;;55289-0390-28
 ;;9002226.02101,"734,55289-0390-79 ",.01)
 ;;55289-0390-79
 ;;9002226.02101,"734,55289-0390-79 ",.02)
 ;;55289-0390-79
 ;;9002226.02101,"734,55289-0393-02 ",.01)
 ;;55289-0393-02
 ;;9002226.02101,"734,55289-0393-02 ",.02)
 ;;55289-0393-02
 ;;9002226.02101,"734,55289-0394-05 ",.01)
 ;;55289-0394-05
 ;;9002226.02101,"734,55289-0394-05 ",.02)
 ;;55289-0394-05
 ;;9002226.02101,"734,55289-0394-07 ",.01)
 ;;55289-0394-07
 ;;9002226.02101,"734,55289-0394-07 ",.02)
 ;;55289-0394-07
 ;;9002226.02101,"734,55289-0405-14 ",.01)
 ;;55289-0405-14
 ;;9002226.02101,"734,55289-0405-14 ",.02)
 ;;55289-0405-14
 ;;9002226.02101,"734,55289-0405-20 ",.01)
 ;;55289-0405-20
 ;;9002226.02101,"734,55289-0405-20 ",.02)
 ;;55289-0405-20
 ;;9002226.02101,"734,55289-0426-21 ",.01)
 ;;55289-0426-21
 ;;9002226.02101,"734,55289-0426-21 ",.02)
 ;;55289-0426-21
 ;;9002226.02101,"734,55289-0441-04 ",.01)
 ;;55289-0441-04
 ;;9002226.02101,"734,55289-0441-04 ",.02)
 ;;55289-0441-04
 ;;9002226.02101,"734,55289-0441-15 ",.01)
 ;;55289-0441-15