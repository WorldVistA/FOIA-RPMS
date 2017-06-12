BGP61D9 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"875,10702-0007-01 ",.02)
 ;;10702-0007-01
 ;;9002226.02101,"875,10702-0007-03 ",.01)
 ;;10702-0007-03
 ;;9002226.02101,"875,10702-0007-03 ",.02)
 ;;10702-0007-03
 ;;9002226.02101,"875,10702-0007-05 ",.01)
 ;;10702-0007-05
 ;;9002226.02101,"875,10702-0007-05 ",.02)
 ;;10702-0007-05
 ;;9002226.02101,"875,10702-0007-10 ",.01)
 ;;10702-0007-10
 ;;9002226.02101,"875,10702-0007-10 ",.02)
 ;;10702-0007-10
 ;;9002226.02101,"875,10702-0007-50 ",.01)
 ;;10702-0007-50
 ;;9002226.02101,"875,10702-0007-50 ",.02)
 ;;10702-0007-50
 ;;9002226.02101,"875,12634-0437-12 ",.01)
 ;;12634-0437-12
 ;;9002226.02101,"875,12634-0437-12 ",.02)
 ;;12634-0437-12
 ;;9002226.02101,"875,12634-0437-60 ",.01)
 ;;12634-0437-60
 ;;9002226.02101,"875,12634-0437-60 ",.02)
 ;;12634-0437-60
 ;;9002226.02101,"875,12634-0437-71 ",.01)
 ;;12634-0437-71
 ;;9002226.02101,"875,12634-0437-71 ",.02)
 ;;12634-0437-71
 ;;9002226.02101,"875,12634-0437-90 ",.01)
 ;;12634-0437-90
 ;;9002226.02101,"875,12634-0437-90 ",.02)
 ;;12634-0437-90
 ;;9002226.02101,"875,12634-0528-00 ",.01)
 ;;12634-0528-00
 ;;9002226.02101,"875,12634-0528-00 ",.02)
 ;;12634-0528-00
 ;;9002226.02101,"875,12634-0528-45 ",.01)
 ;;12634-0528-45
 ;;9002226.02101,"875,12634-0528-45 ",.02)
 ;;12634-0528-45
 ;;9002226.02101,"875,12634-0528-60 ",.01)
 ;;12634-0528-60
 ;;9002226.02101,"875,12634-0528-60 ",.02)
 ;;12634-0528-60
 ;;9002226.02101,"875,12634-0528-71 ",.01)
 ;;12634-0528-71
 ;;9002226.02101,"875,12634-0528-71 ",.02)
 ;;12634-0528-71
 ;;9002226.02101,"875,12634-0528-81 ",.01)
 ;;12634-0528-81
 ;;9002226.02101,"875,12634-0528-81 ",.02)
 ;;12634-0528-81
 ;;9002226.02101,"875,12634-0528-85 ",.01)
 ;;12634-0528-85
 ;;9002226.02101,"875,12634-0528-85 ",.02)
 ;;12634-0528-85
 ;;9002226.02101,"875,12634-0528-90 ",.01)
 ;;12634-0528-90
 ;;9002226.02101,"875,12634-0528-90 ",.02)
 ;;12634-0528-90
 ;;9002226.02101,"875,12634-0836-71 ",.01)
 ;;12634-0836-71
 ;;9002226.02101,"875,12634-0836-71 ",.02)
 ;;12634-0836-71
 ;;9002226.02101,"875,12634-0836-90 ",.01)
 ;;12634-0836-90
 ;;9002226.02101,"875,12634-0836-90 ",.02)
 ;;12634-0836-90
 ;;9002226.02101,"875,16590-0039-07 ",.01)
 ;;16590-0039-07
 ;;9002226.02101,"875,16590-0039-07 ",.02)
 ;;16590-0039-07
 ;;9002226.02101,"875,16590-0039-20 ",.01)
 ;;16590-0039-20
 ;;9002226.02101,"875,16590-0039-20 ",.02)
 ;;16590-0039-20
 ;;9002226.02101,"875,16590-0039-28 ",.01)
 ;;16590-0039-28
 ;;9002226.02101,"875,16590-0039-28 ",.02)
 ;;16590-0039-28
 ;;9002226.02101,"875,16590-0039-30 ",.01)
 ;;16590-0039-30
 ;;9002226.02101,"875,16590-0039-30 ",.02)
 ;;16590-0039-30
 ;;9002226.02101,"875,16590-0039-40 ",.01)
 ;;16590-0039-40
 ;;9002226.02101,"875,16590-0039-40 ",.02)
 ;;16590-0039-40
 ;;9002226.02101,"875,16590-0039-45 ",.01)
 ;;16590-0039-45
 ;;9002226.02101,"875,16590-0039-45 ",.02)
 ;;16590-0039-45
 ;;9002226.02101,"875,16590-0039-56 ",.01)
 ;;16590-0039-56
 ;;9002226.02101,"875,16590-0039-56 ",.02)
 ;;16590-0039-56
 ;;9002226.02101,"875,16590-0039-60 ",.01)
 ;;16590-0039-60
 ;;9002226.02101,"875,16590-0039-60 ",.02)
 ;;16590-0039-60
 ;;9002226.02101,"875,16590-0039-62 ",.01)
 ;;16590-0039-62
 ;;9002226.02101,"875,16590-0039-62 ",.02)
 ;;16590-0039-62
 ;;9002226.02101,"875,16590-0039-72 ",.01)
 ;;16590-0039-72
 ;;9002226.02101,"875,16590-0039-72 ",.02)
 ;;16590-0039-72
 ;;9002226.02101,"875,16590-0039-73 ",.01)
 ;;16590-0039-73
 ;;9002226.02101,"875,16590-0039-73 ",.02)
 ;;16590-0039-73
 ;;9002226.02101,"875,16590-0039-82 ",.01)
 ;;16590-0039-82
 ;;9002226.02101,"875,16590-0039-82 ",.02)
 ;;16590-0039-82
 ;;9002226.02101,"875,16590-0039-90 ",.01)
 ;;16590-0039-90
 ;;9002226.02101,"875,16590-0039-90 ",.02)
 ;;16590-0039-90
 ;;9002226.02101,"875,16590-0065-10 ",.01)
 ;;16590-0065-10
 ;;9002226.02101,"875,16590-0065-10 ",.02)
 ;;16590-0065-10
 ;;9002226.02101,"875,16590-0065-15 ",.01)
 ;;16590-0065-15
 ;;9002226.02101,"875,16590-0065-15 ",.02)
 ;;16590-0065-15
 ;;9002226.02101,"875,16590-0065-20 ",.01)
 ;;16590-0065-20
 ;;9002226.02101,"875,16590-0065-20 ",.02)
 ;;16590-0065-20
 ;;9002226.02101,"875,16590-0065-21 ",.01)
 ;;16590-0065-21
 ;;9002226.02101,"875,16590-0065-21 ",.02)
 ;;16590-0065-21
 ;;9002226.02101,"875,16590-0065-28 ",.01)
 ;;16590-0065-28
 ;;9002226.02101,"875,16590-0065-28 ",.02)
 ;;16590-0065-28
 ;;9002226.02101,"875,16590-0065-30 ",.01)
 ;;16590-0065-30
 ;;9002226.02101,"875,16590-0065-30 ",.02)
 ;;16590-0065-30
 ;;9002226.02101,"875,16590-0065-40 ",.01)
 ;;16590-0065-40
 ;;9002226.02101,"875,16590-0065-40 ",.02)
 ;;16590-0065-40
 ;;9002226.02101,"875,16590-0065-45 ",.01)
 ;;16590-0065-45
 ;;9002226.02101,"875,16590-0065-45 ",.02)
 ;;16590-0065-45
 ;;9002226.02101,"875,16590-0065-50 ",.01)
 ;;16590-0065-50
 ;;9002226.02101,"875,16590-0065-50 ",.02)
 ;;16590-0065-50
 ;;9002226.02101,"875,16590-0065-56 ",.01)
 ;;16590-0065-56
 ;;9002226.02101,"875,16590-0065-56 ",.02)
 ;;16590-0065-56
 ;;9002226.02101,"875,16590-0065-60 ",.01)
 ;;16590-0065-60
 ;;9002226.02101,"875,16590-0065-60 ",.02)
 ;;16590-0065-60
 ;;9002226.02101,"875,16590-0065-62 ",.01)
 ;;16590-0065-62
 ;;9002226.02101,"875,16590-0065-62 ",.02)
 ;;16590-0065-62
 ;;9002226.02101,"875,16590-0065-72 ",.01)
 ;;16590-0065-72
 ;;9002226.02101,"875,16590-0065-72 ",.02)
 ;;16590-0065-72
 ;;9002226.02101,"875,16590-0065-73 ",.01)
 ;;16590-0065-73
 ;;9002226.02101,"875,16590-0065-73 ",.02)
 ;;16590-0065-73
 ;;9002226.02101,"875,16590-0065-82 ",.01)
 ;;16590-0065-82
 ;;9002226.02101,"875,16590-0065-82 ",.02)
 ;;16590-0065-82
 ;;9002226.02101,"875,16590-0065-86 ",.01)
 ;;16590-0065-86
 ;;9002226.02101,"875,16590-0065-86 ",.02)
 ;;16590-0065-86
 ;;9002226.02101,"875,16590-0065-90 ",.01)
 ;;16590-0065-90
 ;;9002226.02101,"875,16590-0065-90 ",.02)
 ;;16590-0065-90
 ;;9002226.02101,"875,16590-0147-28 ",.01)
 ;;16590-0147-28
 ;;9002226.02101,"875,16590-0147-28 ",.02)
 ;;16590-0147-28
 ;;9002226.02101,"875,16590-0147-30 ",.01)
 ;;16590-0147-30
 ;;9002226.02101,"875,16590-0147-30 ",.02)
 ;;16590-0147-30
 ;;9002226.02101,"875,16590-0147-40 ",.01)
 ;;16590-0147-40
 ;;9002226.02101,"875,16590-0147-40 ",.02)
 ;;16590-0147-40
 ;;9002226.02101,"875,16590-0147-45 ",.01)
 ;;16590-0147-45
 ;;9002226.02101,"875,16590-0147-45 ",.02)
 ;;16590-0147-45
 ;;9002226.02101,"875,16590-0147-56 ",.01)
 ;;16590-0147-56
 ;;9002226.02101,"875,16590-0147-56 ",.02)
 ;;16590-0147-56
 ;;9002226.02101,"875,16590-0147-60 ",.01)
 ;;16590-0147-60
 ;;9002226.02101,"875,16590-0147-60 ",.02)
 ;;16590-0147-60
 ;;9002226.02101,"875,16590-0147-62 ",.01)
 ;;16590-0147-62
 ;;9002226.02101,"875,16590-0147-62 ",.02)
 ;;16590-0147-62
 ;;9002226.02101,"875,16590-0147-72 ",.01)
 ;;16590-0147-72
 ;;9002226.02101,"875,16590-0147-72 ",.02)
 ;;16590-0147-72
 ;;9002226.02101,"875,16590-0147-73 ",.01)
 ;;16590-0147-73
 ;;9002226.02101,"875,16590-0147-73 ",.02)
 ;;16590-0147-73
 ;;9002226.02101,"875,16590-0147-82 ",.01)
 ;;16590-0147-82
 ;;9002226.02101,"875,16590-0147-82 ",.02)
 ;;16590-0147-82
 ;;9002226.02101,"875,16590-0147-90 ",.01)
 ;;16590-0147-90
 ;;9002226.02101,"875,16590-0147-90 ",.02)
 ;;16590-0147-90
 ;;9002226.02101,"875,16590-0148-20 ",.01)
 ;;16590-0148-20
 ;;9002226.02101,"875,16590-0148-20 ",.02)
 ;;16590-0148-20
 ;;9002226.02101,"875,16590-0148-28 ",.01)
 ;;16590-0148-28
 ;;9002226.02101,"875,16590-0148-28 ",.02)
 ;;16590-0148-28
 ;;9002226.02101,"875,16590-0148-30 ",.01)
 ;;16590-0148-30
 ;;9002226.02101,"875,16590-0148-30 ",.02)
 ;;16590-0148-30
 ;;9002226.02101,"875,16590-0148-40 ",.01)
 ;;16590-0148-40
 ;;9002226.02101,"875,16590-0148-40 ",.02)
 ;;16590-0148-40
 ;;9002226.02101,"875,16590-0148-45 ",.01)
 ;;16590-0148-45
 ;;9002226.02101,"875,16590-0148-45 ",.02)
 ;;16590-0148-45
 ;;9002226.02101,"875,16590-0148-56 ",.01)
 ;;16590-0148-56
 ;;9002226.02101,"875,16590-0148-56 ",.02)
 ;;16590-0148-56
 ;;9002226.02101,"875,16590-0148-60 ",.01)
 ;;16590-0148-60
 ;;9002226.02101,"875,16590-0148-60 ",.02)
 ;;16590-0148-60
 ;;9002226.02101,"875,16590-0148-62 ",.01)
 ;;16590-0148-62
 ;;9002226.02101,"875,16590-0148-62 ",.02)
 ;;16590-0148-62
 ;;9002226.02101,"875,16590-0148-72 ",.01)
 ;;16590-0148-72
 ;;9002226.02101,"875,16590-0148-72 ",.02)
 ;;16590-0148-72
 ;;9002226.02101,"875,16590-0148-73 ",.01)
 ;;16590-0148-73
 ;;9002226.02101,"875,16590-0148-73 ",.02)
 ;;16590-0148-73
 ;;9002226.02101,"875,16590-0148-82 ",.01)
 ;;16590-0148-82
 ;;9002226.02101,"875,16590-0148-82 ",.02)
 ;;16590-0148-82
 ;;9002226.02101,"875,16590-0148-83 ",.01)
 ;;16590-0148-83
 ;;9002226.02101,"875,16590-0148-83 ",.02)
 ;;16590-0148-83
 ;;9002226.02101,"875,16590-0148-84 ",.01)
 ;;16590-0148-84
 ;;9002226.02101,"875,16590-0148-84 ",.02)
 ;;16590-0148-84
 ;;9002226.02101,"875,16590-0148-90 ",.01)
 ;;16590-0148-90
 ;;9002226.02101,"875,16590-0148-90 ",.02)
 ;;16590-0148-90
 ;;9002226.02101,"875,16590-0177-14 ",.01)
 ;;16590-0177-14
 ;;9002226.02101,"875,16590-0177-14 ",.02)
 ;;16590-0177-14
 ;;9002226.02101,"875,16590-0177-20 ",.01)
 ;;16590-0177-20
 ;;9002226.02101,"875,16590-0177-20 ",.02)
 ;;16590-0177-20
 ;;9002226.02101,"875,16590-0177-30 ",.01)
 ;;16590-0177-30
 ;;9002226.02101,"875,16590-0177-30 ",.02)
 ;;16590-0177-30
 ;;9002226.02101,"875,16590-0177-60 ",.01)
 ;;16590-0177-60
 ;;9002226.02101,"875,16590-0177-60 ",.02)
 ;;16590-0177-60
 ;;9002226.02101,"875,16590-0177-71 ",.01)
 ;;16590-0177-71
 ;;9002226.02101,"875,16590-0177-71 ",.02)
 ;;16590-0177-71
 ;;9002226.02101,"875,16590-0177-72 ",.01)
 ;;16590-0177-72
 ;;9002226.02101,"875,16590-0177-72 ",.02)
 ;;16590-0177-72
 ;;9002226.02101,"875,16590-0177-90 ",.01)
 ;;16590-0177-90
 ;;9002226.02101,"875,16590-0177-90 ",.02)
 ;;16590-0177-90
 ;;9002226.02101,"875,16590-0207-20 ",.01)
 ;;16590-0207-20
 ;;9002226.02101,"875,16590-0207-20 ",.02)
 ;;16590-0207-20
 ;;9002226.02101,"875,16590-0207-28 ",.01)
 ;;16590-0207-28
 ;;9002226.02101,"875,16590-0207-28 ",.02)
 ;;16590-0207-28
 ;;9002226.02101,"875,16590-0207-30 ",.01)
 ;;16590-0207-30
 ;;9002226.02101,"875,16590-0207-30 ",.02)
 ;;16590-0207-30
 ;;9002226.02101,"875,16590-0207-40 ",.01)
 ;;16590-0207-40
 ;;9002226.02101,"875,16590-0207-40 ",.02)
 ;;16590-0207-40
 ;;9002226.02101,"875,16590-0207-56 ",.01)
 ;;16590-0207-56
 ;;9002226.02101,"875,16590-0207-56 ",.02)
 ;;16590-0207-56
 ;;9002226.02101,"875,16590-0207-60 ",.01)
 ;;16590-0207-60
 ;;9002226.02101,"875,16590-0207-60 ",.02)
 ;;16590-0207-60
 ;;9002226.02101,"875,16590-0207-62 ",.01)
 ;;16590-0207-62
 ;;9002226.02101,"875,16590-0207-62 ",.02)
 ;;16590-0207-62
 ;;9002226.02101,"875,16590-0207-71 ",.01)
 ;;16590-0207-71
 ;;9002226.02101,"875,16590-0207-71 ",.02)
 ;;16590-0207-71
 ;;9002226.02101,"875,16590-0207-72 ",.01)
 ;;16590-0207-72
 ;;9002226.02101,"875,16590-0207-72 ",.02)
 ;;16590-0207-72
 ;;9002226.02101,"875,16590-0207-90 ",.01)
 ;;16590-0207-90
 ;;9002226.02101,"875,16590-0207-90 ",.02)
 ;;16590-0207-90
 ;;9002226.02101,"875,16590-0346-20 ",.01)
 ;;16590-0346-20
 ;;9002226.02101,"875,16590-0346-20 ",.02)
 ;;16590-0346-20
 ;;9002226.02101,"875,16590-0346-28 ",.01)
 ;;16590-0346-28
 ;;9002226.02101,"875,16590-0346-28 ",.02)
 ;;16590-0346-28
 ;;9002226.02101,"875,16590-0346-30 ",.01)
 ;;16590-0346-30
 ;;9002226.02101,"875,16590-0346-30 ",.02)
 ;;16590-0346-30
 ;;9002226.02101,"875,16590-0346-40 ",.01)
 ;;16590-0346-40
 ;;9002226.02101,"875,16590-0346-40 ",.02)
 ;;16590-0346-40
 ;;9002226.02101,"875,16590-0346-56 ",.01)
 ;;16590-0346-56
 ;;9002226.02101,"875,16590-0346-56 ",.02)
 ;;16590-0346-56
 ;;9002226.02101,"875,16590-0346-60 ",.01)
 ;;16590-0346-60
 ;;9002226.02101,"875,16590-0346-60 ",.02)
 ;;16590-0346-60
 ;;9002226.02101,"875,16590-0346-62 ",.01)
 ;;16590-0346-62
 ;;9002226.02101,"875,16590-0346-62 ",.02)
 ;;16590-0346-62
 ;;9002226.02101,"875,16590-0346-71 ",.01)
 ;;16590-0346-71
 ;;9002226.02101,"875,16590-0346-71 ",.02)
 ;;16590-0346-71
 ;;9002226.02101,"875,16590-0346-72 ",.01)
 ;;16590-0346-72
 ;;9002226.02101,"875,16590-0346-72 ",.02)
 ;;16590-0346-72
 ;;9002226.02101,"875,16590-0346-73 ",.01)
 ;;16590-0346-73
 ;;9002226.02101,"875,16590-0346-73 ",.02)
 ;;16590-0346-73
 ;;9002226.02101,"875,16590-0346-84 ",.01)
 ;;16590-0346-84
 ;;9002226.02101,"875,16590-0346-84 ",.02)
 ;;16590-0346-84
 ;;9002226.02101,"875,16590-0346-86 ",.01)
 ;;16590-0346-86
 ;;9002226.02101,"875,16590-0346-86 ",.02)
 ;;16590-0346-86
 ;;9002226.02101,"875,16590-0346-90 ",.01)
 ;;16590-0346-90
 ;;9002226.02101,"875,16590-0346-90 ",.02)
 ;;16590-0346-90
 ;;9002226.02101,"875,16590-0478-20 ",.01)
 ;;16590-0478-20
 ;;9002226.02101,"875,16590-0478-20 ",.02)
 ;;16590-0478-20