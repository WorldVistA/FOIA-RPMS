BGP82Z73 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"619,66336-0106-94 ",.02)
 ;;66336-0106-94
 ;;9002226.02101,"619,66336-0115-14 ",.01)
 ;;66336-0115-14
 ;;9002226.02101,"619,66336-0115-14 ",.02)
 ;;66336-0115-14
 ;;9002226.02101,"619,66336-0115-15 ",.01)
 ;;66336-0115-15
 ;;9002226.02101,"619,66336-0115-15 ",.02)
 ;;66336-0115-15
 ;;9002226.02101,"619,66336-0115-30 ",.01)
 ;;66336-0115-30
 ;;9002226.02101,"619,66336-0115-30 ",.02)
 ;;66336-0115-30
 ;;9002226.02101,"619,66336-0115-60 ",.01)
 ;;66336-0115-60
 ;;9002226.02101,"619,66336-0115-60 ",.02)
 ;;66336-0115-60
 ;;9002226.02101,"619,66336-0115-90 ",.01)
 ;;66336-0115-90
 ;;9002226.02101,"619,66336-0115-90 ",.02)
 ;;66336-0115-90
 ;;9002226.02101,"619,66336-0115-94 ",.01)
 ;;66336-0115-94
 ;;9002226.02101,"619,66336-0115-94 ",.02)
 ;;66336-0115-94
 ;;9002226.02101,"619,66336-0135-94 ",.01)
 ;;66336-0135-94
 ;;9002226.02101,"619,66336-0135-94 ",.02)
 ;;66336-0135-94
 ;;9002226.02101,"619,66336-0147-24 ",.01)
 ;;66336-0147-24
 ;;9002226.02101,"619,66336-0147-24 ",.02)
 ;;66336-0147-24
 ;;9002226.02101,"619,66336-0147-30 ",.01)
 ;;66336-0147-30
 ;;9002226.02101,"619,66336-0147-30 ",.02)
 ;;66336-0147-30
 ;;9002226.02101,"619,66336-0147-55 ",.01)
 ;;66336-0147-55
 ;;9002226.02101,"619,66336-0147-55 ",.02)
 ;;66336-0147-55
 ;;9002226.02101,"619,66336-0147-60 ",.01)
 ;;66336-0147-60
 ;;9002226.02101,"619,66336-0147-60 ",.02)
 ;;66336-0147-60
 ;;9002226.02101,"619,66336-0147-90 ",.01)
 ;;66336-0147-90
 ;;9002226.02101,"619,66336-0147-90 ",.02)
 ;;66336-0147-90
 ;;9002226.02101,"619,66336-0147-94 ",.01)
 ;;66336-0147-94
 ;;9002226.02101,"619,66336-0147-94 ",.02)
 ;;66336-0147-94
 ;;9002226.02101,"619,66336-0406-15 ",.01)
 ;;66336-0406-15
 ;;9002226.02101,"619,66336-0406-15 ",.02)
 ;;66336-0406-15
 ;;9002226.02101,"619,66336-0406-20 ",.01)
 ;;66336-0406-20
 ;;9002226.02101,"619,66336-0406-20 ",.02)
 ;;66336-0406-20
 ;;9002226.02101,"619,66336-0406-21 ",.01)
 ;;66336-0406-21
 ;;9002226.02101,"619,66336-0406-21 ",.02)
 ;;66336-0406-21
 ;;9002226.02101,"619,66336-0406-30 ",.01)
 ;;66336-0406-30
 ;;9002226.02101,"619,66336-0406-30 ",.02)
 ;;66336-0406-30
 ;;9002226.02101,"619,66336-0406-48 ",.01)
 ;;66336-0406-48
 ;;9002226.02101,"619,66336-0406-48 ",.02)
 ;;66336-0406-48
 ;;9002226.02101,"619,66336-0406-60 ",.01)
 ;;66336-0406-60
 ;;9002226.02101,"619,66336-0406-60 ",.02)
 ;;66336-0406-60
 ;;9002226.02101,"619,66336-0406-90 ",.01)
 ;;66336-0406-90
 ;;9002226.02101,"619,66336-0406-90 ",.02)
 ;;66336-0406-90
 ;;9002226.02101,"619,66336-0406-94 ",.01)
 ;;66336-0406-94
 ;;9002226.02101,"619,66336-0406-94 ",.02)
 ;;66336-0406-94
 ;;9002226.02101,"619,66336-0408-15 ",.01)
 ;;66336-0408-15
 ;;9002226.02101,"619,66336-0408-15 ",.02)
 ;;66336-0408-15
 ;;9002226.02101,"619,66336-0408-20 ",.01)
 ;;66336-0408-20
 ;;9002226.02101,"619,66336-0408-20 ",.02)
 ;;66336-0408-20
 ;;9002226.02101,"619,66336-0408-28 ",.01)
 ;;66336-0408-28
 ;;9002226.02101,"619,66336-0408-28 ",.02)
 ;;66336-0408-28
 ;;9002226.02101,"619,66336-0408-30 ",.01)
 ;;66336-0408-30
 ;;9002226.02101,"619,66336-0408-30 ",.02)
 ;;66336-0408-30
 ;;9002226.02101,"619,66336-0408-32 ",.01)
 ;;66336-0408-32
 ;;9002226.02101,"619,66336-0408-32 ",.02)
 ;;66336-0408-32
 ;;9002226.02101,"619,66336-0408-40 ",.01)
 ;;66336-0408-40
 ;;9002226.02101,"619,66336-0408-40 ",.02)
 ;;66336-0408-40
 ;;9002226.02101,"619,66336-0408-55 ",.01)
 ;;66336-0408-55
 ;;9002226.02101,"619,66336-0408-55 ",.02)
 ;;66336-0408-55
 ;;9002226.02101,"619,66336-0408-60 ",.01)
 ;;66336-0408-60
 ;;9002226.02101,"619,66336-0408-60 ",.02)
 ;;66336-0408-60
 ;;9002226.02101,"619,66336-0408-62 ",.01)
 ;;66336-0408-62
 ;;9002226.02101,"619,66336-0408-62 ",.02)
 ;;66336-0408-62
 ;;9002226.02101,"619,66336-0408-90 ",.01)
 ;;66336-0408-90
 ;;9002226.02101,"619,66336-0408-90 ",.02)
 ;;66336-0408-90
 ;;9002226.02101,"619,66336-0408-94 ",.01)
 ;;66336-0408-94
 ;;9002226.02101,"619,66336-0408-94 ",.02)
 ;;66336-0408-94
 ;;9002226.02101,"619,66336-0408-97 ",.01)
 ;;66336-0408-97
 ;;9002226.02101,"619,66336-0408-97 ",.02)
 ;;66336-0408-97
 ;;9002226.02101,"619,66336-0442-06 ",.01)
 ;;66336-0442-06
 ;;9002226.02101,"619,66336-0442-06 ",.02)
 ;;66336-0442-06
 ;;9002226.02101,"619,66336-0442-10 ",.01)
 ;;66336-0442-10
 ;;9002226.02101,"619,66336-0442-10 ",.02)
 ;;66336-0442-10
 ;;9002226.02101,"619,66336-0442-12 ",.01)
 ;;66336-0442-12
 ;;9002226.02101,"619,66336-0442-12 ",.02)
 ;;66336-0442-12
 ;;9002226.02101,"619,66336-0442-15 ",.01)
 ;;66336-0442-15
 ;;9002226.02101,"619,66336-0442-15 ",.02)
 ;;66336-0442-15
 ;;9002226.02101,"619,66336-0442-16 ",.01)
 ;;66336-0442-16
 ;;9002226.02101,"619,66336-0442-16 ",.02)
 ;;66336-0442-16
 ;;9002226.02101,"619,66336-0442-20 ",.01)
 ;;66336-0442-20
 ;;9002226.02101,"619,66336-0442-20 ",.02)
 ;;66336-0442-20
 ;;9002226.02101,"619,66336-0442-24 ",.01)
 ;;66336-0442-24
 ;;9002226.02101,"619,66336-0442-24 ",.02)
 ;;66336-0442-24
 ;;9002226.02101,"619,66336-0442-30 ",.01)
 ;;66336-0442-30
 ;;9002226.02101,"619,66336-0442-30 ",.02)
 ;;66336-0442-30
 ;;9002226.02101,"619,66336-0442-40 ",.01)
 ;;66336-0442-40
 ;;9002226.02101,"619,66336-0442-40 ",.02)
 ;;66336-0442-40
 ;;9002226.02101,"619,66336-0442-45 ",.01)
 ;;66336-0442-45
 ;;9002226.02101,"619,66336-0442-45 ",.02)
 ;;66336-0442-45
 ;;9002226.02101,"619,66336-0442-60 ",.01)
 ;;66336-0442-60
 ;;9002226.02101,"619,66336-0442-60 ",.02)
 ;;66336-0442-60
 ;;9002226.02101,"619,66336-0442-90 ",.01)
 ;;66336-0442-90
 ;;9002226.02101,"619,66336-0442-90 ",.02)
 ;;66336-0442-90
 ;;9002226.02101,"619,66336-0442-94 ",.01)
 ;;66336-0442-94
 ;;9002226.02101,"619,66336-0442-94 ",.02)
 ;;66336-0442-94
 ;;9002226.02101,"619,66336-0444-12 ",.01)
 ;;66336-0444-12
 ;;9002226.02101,"619,66336-0444-12 ",.02)
 ;;66336-0444-12
 ;;9002226.02101,"619,66336-0444-20 ",.01)
 ;;66336-0444-20
 ;;9002226.02101,"619,66336-0444-20 ",.02)
 ;;66336-0444-20
 ;;9002226.02101,"619,66336-0444-21 ",.01)
 ;;66336-0444-21
 ;;9002226.02101,"619,66336-0444-21 ",.02)
 ;;66336-0444-21
 ;;9002226.02101,"619,66336-0444-30 ",.01)
 ;;66336-0444-30
 ;;9002226.02101,"619,66336-0444-30 ",.02)
 ;;66336-0444-30
 ;;9002226.02101,"619,66336-0444-55 ",.01)
 ;;66336-0444-55
 ;;9002226.02101,"619,66336-0444-55 ",.02)
 ;;66336-0444-55
 ;;9002226.02101,"619,66336-0444-58 ",.01)
 ;;66336-0444-58
 ;;9002226.02101,"619,66336-0444-58 ",.02)
 ;;66336-0444-58
 ;;9002226.02101,"619,66336-0444-60 ",.01)
 ;;66336-0444-60
 ;;9002226.02101,"619,66336-0444-60 ",.02)
 ;;66336-0444-60
 ;;9002226.02101,"619,66336-0444-62 ",.01)
 ;;66336-0444-62
 ;;9002226.02101,"619,66336-0444-62 ",.02)
 ;;66336-0444-62
 ;;9002226.02101,"619,66336-0444-90 ",.01)
 ;;66336-0444-90
 ;;9002226.02101,"619,66336-0444-90 ",.02)
 ;;66336-0444-90
 ;;9002226.02101,"619,66336-0444-94 ",.01)
 ;;66336-0444-94
 ;;9002226.02101,"619,66336-0444-94 ",.02)
 ;;66336-0444-94
 ;;9002226.02101,"619,66336-0470-62 ",.01)
 ;;66336-0470-62
 ;;9002226.02101,"619,66336-0470-62 ",.02)
 ;;66336-0470-62
 ;;9002226.02101,"619,66336-0470-94 ",.01)
 ;;66336-0470-94
 ;;9002226.02101,"619,66336-0470-94 ",.02)
 ;;66336-0470-94
 ;;9002226.02101,"619,66336-0502-30 ",.01)
 ;;66336-0502-30
 ;;9002226.02101,"619,66336-0502-30 ",.02)
 ;;66336-0502-30
 ;;9002226.02101,"619,66336-0502-60 ",.01)
 ;;66336-0502-60
 ;;9002226.02101,"619,66336-0502-60 ",.02)
 ;;66336-0502-60
 ;;9002226.02101,"619,66336-0502-90 ",.01)
 ;;66336-0502-90
 ;;9002226.02101,"619,66336-0502-90 ",.02)
 ;;66336-0502-90
 ;;9002226.02101,"619,66336-0670-06 ",.01)
 ;;66336-0670-06
 ;;9002226.02101,"619,66336-0670-06 ",.02)
 ;;66336-0670-06
 ;;9002226.02101,"619,66336-0670-10 ",.01)
 ;;66336-0670-10
 ;;9002226.02101,"619,66336-0670-10 ",.02)
 ;;66336-0670-10
 ;;9002226.02101,"619,66336-0670-12 ",.01)
 ;;66336-0670-12
 ;;9002226.02101,"619,66336-0670-12 ",.02)
 ;;66336-0670-12
 ;;9002226.02101,"619,66336-0670-20 ",.01)
 ;;66336-0670-20
 ;;9002226.02101,"619,66336-0670-20 ",.02)
 ;;66336-0670-20
 ;;9002226.02101,"619,66336-0670-24 ",.01)
 ;;66336-0670-24
 ;;9002226.02101,"619,66336-0670-24 ",.02)
 ;;66336-0670-24
 ;;9002226.02101,"619,66336-0670-30 ",.01)
 ;;66336-0670-30
 ;;9002226.02101,"619,66336-0670-30 ",.02)
 ;;66336-0670-30
 ;;9002226.02101,"619,66336-0670-40 ",.01)
 ;;66336-0670-40
 ;;9002226.02101,"619,66336-0670-40 ",.02)
 ;;66336-0670-40
 ;;9002226.02101,"619,66336-0670-60 ",.01)
 ;;66336-0670-60
 ;;9002226.02101,"619,66336-0670-60 ",.02)
 ;;66336-0670-60
 ;;9002226.02101,"619,66336-0670-90 ",.01)
 ;;66336-0670-90
 ;;9002226.02101,"619,66336-0670-90 ",.02)
 ;;66336-0670-90
 ;;9002226.02101,"619,66336-0670-94 ",.01)
 ;;66336-0670-94
 ;;9002226.02101,"619,66336-0670-94 ",.02)
 ;;66336-0670-94
 ;;9002226.02101,"619,66336-0748-20 ",.01)
 ;;66336-0748-20
 ;;9002226.02101,"619,66336-0748-20 ",.02)
 ;;66336-0748-20
 ;;9002226.02101,"619,66336-0748-30 ",.01)
 ;;66336-0748-30
 ;;9002226.02101,"619,66336-0748-30 ",.02)
 ;;66336-0748-30
 ;;9002226.02101,"619,66336-0748-90 ",.01)
 ;;66336-0748-90
 ;;9002226.02101,"619,66336-0748-90 ",.02)
 ;;66336-0748-90
 ;;9002226.02101,"619,66336-0748-94 ",.01)
 ;;66336-0748-94
 ;;9002226.02101,"619,66336-0748-94 ",.02)
 ;;66336-0748-94
 ;;9002226.02101,"619,66336-0871-15 ",.01)
 ;;66336-0871-15
 ;;9002226.02101,"619,66336-0871-15 ",.02)
 ;;66336-0871-15
 ;;9002226.02101,"619,66336-0915-60 ",.01)
 ;;66336-0915-60
 ;;9002226.02101,"619,66336-0915-60 ",.02)
 ;;66336-0915-60
 ;;9002226.02101,"619,66336-0915-62 ",.01)
 ;;66336-0915-62
 ;;9002226.02101,"619,66336-0915-62 ",.02)
 ;;66336-0915-62
 ;;9002226.02101,"619,66479-0582-10 ",.01)
 ;;66479-0582-10
 ;;9002226.02101,"619,66479-0582-10 ",.02)
 ;;66479-0582-10
 ;;9002226.02101,"619,66594-0122-01 ",.01)
 ;;66594-0122-01
 ;;9002226.02101,"619,66594-0122-01 ",.02)
 ;;66594-0122-01
 ;;9002226.02101,"619,66689-0023-01 ",.01)
 ;;66689-0023-01
 ;;9002226.02101,"619,66689-0023-01 ",.02)
 ;;66689-0023-01
 ;;9002226.02101,"619,66689-0023-04 ",.01)
 ;;66689-0023-04
 ;;9002226.02101,"619,66689-0023-04 ",.02)
 ;;66689-0023-04
 ;;9002226.02101,"619,66689-0023-16 ",.01)
 ;;66689-0023-16
 ;;9002226.02101,"619,66689-0023-16 ",.02)
 ;;66689-0023-16
 ;;9002226.02101,"619,66689-0023-50 ",.01)
 ;;66689-0023-50
 ;;9002226.02101,"619,66689-0023-50 ",.02)
 ;;66689-0023-50
 ;;9002226.02101,"619,66689-0025-30 ",.01)
 ;;66689-0025-30
 ;;9002226.02101,"619,66689-0025-30 ",.02)
 ;;66689-0025-30
 ;;9002226.02101,"619,66689-0032-01 ",.01)
 ;;66689-0032-01
 ;;9002226.02101,"619,66689-0032-01 ",.02)
 ;;66689-0032-01
 ;;9002226.02101,"619,66689-0032-04 ",.01)
 ;;66689-0032-04
 ;;9002226.02101,"619,66689-0032-04 ",.02)
 ;;66689-0032-04
 ;;9002226.02101,"619,66689-0032-16 ",.01)
 ;;66689-0032-16
 ;;9002226.02101,"619,66689-0032-16 ",.02)
 ;;66689-0032-16
 ;;9002226.02101,"619,66689-0032-50 ",.01)
 ;;66689-0032-50
 ;;9002226.02101,"619,66689-0032-50 ",.02)
 ;;66689-0032-50
 ;;9002226.02101,"619,66689-0033-01 ",.01)
 ;;66689-0033-01
 ;;9002226.02101,"619,66689-0033-01 ",.02)
 ;;66689-0033-01
 ;;9002226.02101,"619,66689-0033-04 ",.01)
 ;;66689-0033-04
 ;;9002226.02101,"619,66689-0033-04 ",.02)
 ;;66689-0033-04
 ;;9002226.02101,"619,66689-0033-16 ",.01)
 ;;66689-0033-16
 ;;9002226.02101,"619,66689-0033-16 ",.02)
 ;;66689-0033-16
 ;;9002226.02101,"619,66689-0033-50 ",.01)
 ;;66689-0033-50
 ;;9002226.02101,"619,66689-0033-50 ",.02)
 ;;66689-0033-50
 ;;9002226.02101,"619,66689-0401-01 ",.01)
 ;;66689-0401-01
 ;;9002226.02101,"619,66689-0401-01 ",.02)
 ;;66689-0401-01
 ;;9002226.02101,"619,66689-0401-50 ",.01)
 ;;66689-0401-50
 ;;9002226.02101,"619,66689-0401-50 ",.02)
 ;;66689-0401-50
 ;;9002226.02101,"619,66689-0403-16 ",.01)
 ;;66689-0403-16