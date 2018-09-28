BGP82Z44 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"619,47781-0263-01 ",.02)
 ;;47781-0263-01
 ;;9002226.02101,"619,47781-0263-05 ",.01)
 ;;47781-0263-05
 ;;9002226.02101,"619,47781-0263-05 ",.02)
 ;;47781-0263-05
 ;;9002226.02101,"619,47781-0264-01 ",.01)
 ;;47781-0264-01
 ;;9002226.02101,"619,47781-0264-01 ",.02)
 ;;47781-0264-01
 ;;9002226.02101,"619,47781-0264-05 ",.01)
 ;;47781-0264-05
 ;;9002226.02101,"619,47781-0264-05 ",.02)
 ;;47781-0264-05
 ;;9002226.02101,"619,47781-0265-01 ",.01)
 ;;47781-0265-01
 ;;9002226.02101,"619,47781-0265-01 ",.02)
 ;;47781-0265-01
 ;;9002226.02101,"619,47781-0265-05 ",.01)
 ;;47781-0265-05
 ;;9002226.02101,"619,47781-0265-05 ",.02)
 ;;47781-0265-05
 ;;9002226.02101,"619,47781-0423-47 ",.01)
 ;;47781-0423-47
 ;;9002226.02101,"619,47781-0423-47 ",.02)
 ;;47781-0423-47
 ;;9002226.02101,"619,47781-0424-47 ",.01)
 ;;47781-0424-47
 ;;9002226.02101,"619,47781-0424-47 ",.02)
 ;;47781-0424-47
 ;;9002226.02101,"619,47781-0426-47 ",.01)
 ;;47781-0426-47
 ;;9002226.02101,"619,47781-0426-47 ",.02)
 ;;47781-0426-47
 ;;9002226.02101,"619,47781-0427-47 ",.01)
 ;;47781-0427-47
 ;;9002226.02101,"619,47781-0427-47 ",.02)
 ;;47781-0427-47
 ;;9002226.02101,"619,47781-0428-47 ",.01)
 ;;47781-0428-47
 ;;9002226.02101,"619,47781-0428-47 ",.02)
 ;;47781-0428-47
 ;;9002226.02101,"619,49708-0419-88 ",.01)
 ;;49708-0419-88
 ;;9002226.02101,"619,49708-0419-88 ",.02)
 ;;49708-0419-88
 ;;9002226.02101,"619,49884-0136-01 ",.01)
 ;;49884-0136-01
 ;;9002226.02101,"619,49884-0136-01 ",.02)
 ;;49884-0136-01
 ;;9002226.02101,"619,49884-0137-01 ",.01)
 ;;49884-0137-01
 ;;9002226.02101,"619,49884-0137-01 ",.02)
 ;;49884-0137-01
 ;;9002226.02101,"619,49884-0138-01 ",.01)
 ;;49884-0138-01
 ;;9002226.02101,"619,49884-0138-01 ",.02)
 ;;49884-0138-01
 ;;9002226.02101,"619,49884-0197-01 ",.01)
 ;;49884-0197-01
 ;;9002226.02101,"619,49884-0197-01 ",.02)
 ;;49884-0197-01
 ;;9002226.02101,"619,49884-0235-33 ",.01)
 ;;49884-0235-33
 ;;9002226.02101,"619,49884-0235-33 ",.02)
 ;;49884-0235-33
 ;;9002226.02101,"619,49884-0235-37 ",.01)
 ;;49884-0235-37
 ;;9002226.02101,"619,49884-0235-37 ",.02)
 ;;49884-0235-37
 ;;9002226.02101,"619,49884-0459-52 ",.01)
 ;;49884-0459-52
 ;;9002226.02101,"619,49884-0459-52 ",.02)
 ;;49884-0459-52
 ;;9002226.02101,"619,49884-0459-55 ",.01)
 ;;49884-0459-55
 ;;9002226.02101,"619,49884-0459-55 ",.02)
 ;;49884-0459-55
 ;;9002226.02101,"619,49884-0460-52 ",.01)
 ;;49884-0460-52
 ;;9002226.02101,"619,49884-0460-52 ",.02)
 ;;49884-0460-52
 ;;9002226.02101,"619,49884-0460-55 ",.01)
 ;;49884-0460-55
 ;;9002226.02101,"619,49884-0460-55 ",.02)
 ;;49884-0460-55
 ;;9002226.02101,"619,49884-0461-52 ",.01)
 ;;49884-0461-52
 ;;9002226.02101,"619,49884-0461-52 ",.02)
 ;;49884-0461-52
 ;;9002226.02101,"619,49884-0461-55 ",.01)
 ;;49884-0461-55
 ;;9002226.02101,"619,49884-0461-55 ",.02)
 ;;49884-0461-55
 ;;9002226.02101,"619,49884-0462-52 ",.01)
 ;;49884-0462-52
 ;;9002226.02101,"619,49884-0462-52 ",.02)
 ;;49884-0462-52
 ;;9002226.02101,"619,49884-0462-55 ",.01)
 ;;49884-0462-55
 ;;9002226.02101,"619,49884-0462-55 ",.02)
 ;;49884-0462-55
 ;;9002226.02101,"619,49884-0463-52 ",.01)
 ;;49884-0463-52
 ;;9002226.02101,"619,49884-0463-52 ",.02)
 ;;49884-0463-52
 ;;9002226.02101,"619,49884-0463-55 ",.01)
 ;;49884-0463-55
 ;;9002226.02101,"619,49884-0463-55 ",.02)
 ;;49884-0463-55
 ;;9002226.02101,"619,49884-0464-52 ",.01)
 ;;49884-0464-52
 ;;9002226.02101,"619,49884-0464-52 ",.02)
 ;;49884-0464-52
 ;;9002226.02101,"619,49884-0464-55 ",.01)
 ;;49884-0464-55
 ;;9002226.02101,"619,49884-0464-55 ",.02)
 ;;49884-0464-55
 ;;9002226.02101,"619,49884-0665-01 ",.01)
 ;;49884-0665-01
 ;;9002226.02101,"619,49884-0665-01 ",.02)
 ;;49884-0665-01
 ;;9002226.02101,"619,49884-0666-01 ",.01)
 ;;49884-0666-01
 ;;9002226.02101,"619,49884-0666-01 ",.02)
 ;;49884-0666-01
 ;;9002226.02101,"619,49884-0667-01 ",.01)
 ;;49884-0667-01
 ;;9002226.02101,"619,49884-0667-01 ",.02)
 ;;49884-0667-01
 ;;9002226.02101,"619,49884-0668-01 ",.01)
 ;;49884-0668-01
 ;;9002226.02101,"619,49884-0668-01 ",.02)
 ;;49884-0668-01
 ;;9002226.02101,"619,49884-0669-01 ",.01)
 ;;49884-0669-01
 ;;9002226.02101,"619,49884-0669-01 ",.02)
 ;;49884-0669-01
 ;;9002226.02101,"619,49884-0670-01 ",.01)
 ;;49884-0670-01
 ;;9002226.02101,"619,49884-0670-01 ",.02)
 ;;49884-0670-01
 ;;9002226.02101,"619,49884-0761-52 ",.01)
 ;;49884-0761-52
 ;;9002226.02101,"619,49884-0761-52 ",.02)
 ;;49884-0761-52
 ;;9002226.02101,"619,49884-0761-78 ",.01)
 ;;49884-0761-78
 ;;9002226.02101,"619,49884-0761-78 ",.02)
 ;;49884-0761-78
 ;;9002226.02101,"619,49884-0762-52 ",.01)
 ;;49884-0762-52
 ;;9002226.02101,"619,49884-0762-52 ",.02)
 ;;49884-0762-52
 ;;9002226.02101,"619,49884-0762-78 ",.01)
 ;;49884-0762-78
 ;;9002226.02101,"619,49884-0762-78 ",.02)
 ;;49884-0762-78
 ;;9002226.02101,"619,49884-0763-52 ",.01)
 ;;49884-0763-52
 ;;9002226.02101,"619,49884-0763-52 ",.02)
 ;;49884-0763-52
 ;;9002226.02101,"619,49884-0763-78 ",.01)
 ;;49884-0763-78
 ;;9002226.02101,"619,49884-0763-78 ",.02)
 ;;49884-0763-78
 ;;9002226.02101,"619,49884-0764-52 ",.01)
 ;;49884-0764-52
 ;;9002226.02101,"619,49884-0764-52 ",.02)
 ;;49884-0764-52
 ;;9002226.02101,"619,49884-0764-78 ",.01)
 ;;49884-0764-78
 ;;9002226.02101,"619,49884-0764-78 ",.02)
 ;;49884-0764-78
 ;;9002226.02101,"619,49884-0821-11 ",.01)
 ;;49884-0821-11
 ;;9002226.02101,"619,49884-0821-11 ",.02)
 ;;49884-0821-11
 ;;9002226.02101,"619,49884-0822-11 ",.01)
 ;;49884-0822-11
 ;;9002226.02101,"619,49884-0822-11 ",.02)
 ;;49884-0822-11
 ;;9002226.02101,"619,49884-0823-11 ",.01)
 ;;49884-0823-11
 ;;9002226.02101,"619,49884-0823-11 ",.02)
 ;;49884-0823-11
 ;;9002226.02101,"619,49884-0833-01 ",.01)
 ;;49884-0833-01
 ;;9002226.02101,"619,49884-0833-01 ",.02)
 ;;49884-0833-01
 ;;9002226.02101,"619,49884-0834-01 ",.01)
 ;;49884-0834-01
 ;;9002226.02101,"619,49884-0834-01 ",.02)
 ;;49884-0834-01
 ;;9002226.02101,"619,49884-0835-01 ",.01)
 ;;49884-0835-01
 ;;9002226.02101,"619,49884-0835-01 ",.02)
 ;;49884-0835-01
 ;;9002226.02101,"619,49884-0836-01 ",.01)
 ;;49884-0836-01
 ;;9002226.02101,"619,49884-0836-01 ",.02)
 ;;49884-0836-01
 ;;9002226.02101,"619,49884-0837-01 ",.01)
 ;;49884-0837-01
 ;;9002226.02101,"619,49884-0837-01 ",.02)
 ;;49884-0837-01
 ;;9002226.02101,"619,49884-0838-01 ",.01)
 ;;49884-0838-01
 ;;9002226.02101,"619,49884-0838-01 ",.02)
 ;;49884-0838-01
 ;;9002226.02101,"619,49884-0946-01 ",.01)
 ;;49884-0946-01
 ;;9002226.02101,"619,49884-0946-01 ",.02)
 ;;49884-0946-01
 ;;9002226.02101,"619,49884-0946-05 ",.01)
 ;;49884-0946-05
 ;;9002226.02101,"619,49884-0946-05 ",.02)
 ;;49884-0946-05
 ;;9002226.02101,"619,49999-0019-20 ",.01)
 ;;49999-0019-20
 ;;9002226.02101,"619,49999-0019-20 ",.02)
 ;;49999-0019-20
 ;;9002226.02101,"619,49999-0019-30 ",.01)
 ;;49999-0019-30
 ;;9002226.02101,"619,49999-0019-30 ",.02)
 ;;49999-0019-30
 ;;9002226.02101,"619,49999-0019-90 ",.01)
 ;;49999-0019-90
 ;;9002226.02101,"619,49999-0019-90 ",.02)
 ;;49999-0019-90
 ;;9002226.02101,"619,49999-0022-15 ",.01)
 ;;49999-0022-15
 ;;9002226.02101,"619,49999-0022-15 ",.02)
 ;;49999-0022-15
 ;;9002226.02101,"619,49999-0022-20 ",.01)
 ;;49999-0022-20
 ;;9002226.02101,"619,49999-0022-20 ",.02)
 ;;49999-0022-20
 ;;9002226.02101,"619,49999-0022-21 ",.01)
 ;;49999-0022-21
 ;;9002226.02101,"619,49999-0022-21 ",.02)
 ;;49999-0022-21
 ;;9002226.02101,"619,49999-0022-25 ",.01)
 ;;49999-0022-25
 ;;9002226.02101,"619,49999-0022-25 ",.02)
 ;;49999-0022-25
 ;;9002226.02101,"619,49999-0022-30 ",.01)
 ;;49999-0022-30
 ;;9002226.02101,"619,49999-0022-30 ",.02)
 ;;49999-0022-30
 ;;9002226.02101,"619,49999-0022-56 ",.01)
 ;;49999-0022-56
 ;;9002226.02101,"619,49999-0022-56 ",.02)
 ;;49999-0022-56
 ;;9002226.02101,"619,49999-0022-60 ",.01)
 ;;49999-0022-60
 ;;9002226.02101,"619,49999-0022-60 ",.02)
 ;;49999-0022-60
 ;;9002226.02101,"619,49999-0026-01 ",.01)
 ;;49999-0026-01
 ;;9002226.02101,"619,49999-0026-01 ",.02)
 ;;49999-0026-01
 ;;9002226.02101,"619,49999-0026-30 ",.01)
 ;;49999-0026-30
 ;;9002226.02101,"619,49999-0026-30 ",.02)
 ;;49999-0026-30
 ;;9002226.02101,"619,49999-0026-40 ",.01)
 ;;49999-0026-40
 ;;9002226.02101,"619,49999-0026-40 ",.02)
 ;;49999-0026-40
 ;;9002226.02101,"619,49999-0026-60 ",.01)
 ;;49999-0026-60
 ;;9002226.02101,"619,49999-0026-60 ",.02)
 ;;49999-0026-60
 ;;9002226.02101,"619,49999-0026-90 ",.01)
 ;;49999-0026-90
 ;;9002226.02101,"619,49999-0026-90 ",.02)
 ;;49999-0026-90
 ;;9002226.02101,"619,49999-0051-30 ",.01)
 ;;49999-0051-30
 ;;9002226.02101,"619,49999-0051-30 ",.02)
 ;;49999-0051-30
 ;;9002226.02101,"619,49999-0052-00 ",.01)
 ;;49999-0052-00
 ;;9002226.02101,"619,49999-0052-00 ",.02)
 ;;49999-0052-00
 ;;9002226.02101,"619,49999-0052-02 ",.01)
 ;;49999-0052-02
 ;;9002226.02101,"619,49999-0052-02 ",.02)
 ;;49999-0052-02
 ;;9002226.02101,"619,49999-0052-05 ",.01)
 ;;49999-0052-05
 ;;9002226.02101,"619,49999-0052-05 ",.02)
 ;;49999-0052-05
 ;;9002226.02101,"619,49999-0052-15 ",.01)
 ;;49999-0052-15
 ;;9002226.02101,"619,49999-0052-15 ",.02)
 ;;49999-0052-15
 ;;9002226.02101,"619,49999-0052-20 ",.01)
 ;;49999-0052-20
 ;;9002226.02101,"619,49999-0052-20 ",.02)
 ;;49999-0052-20
 ;;9002226.02101,"619,49999-0052-30 ",.01)
 ;;49999-0052-30
 ;;9002226.02101,"619,49999-0052-30 ",.02)
 ;;49999-0052-30
 ;;9002226.02101,"619,49999-0052-40 ",.01)
 ;;49999-0052-40
 ;;9002226.02101,"619,49999-0052-40 ",.02)
 ;;49999-0052-40
 ;;9002226.02101,"619,49999-0052-60 ",.01)
 ;;49999-0052-60
 ;;9002226.02101,"619,49999-0052-60 ",.02)
 ;;49999-0052-60
 ;;9002226.02101,"619,49999-0052-90 ",.01)
 ;;49999-0052-90
 ;;9002226.02101,"619,49999-0052-90 ",.02)
 ;;49999-0052-90
 ;;9002226.02101,"619,49999-0060-00 ",.01)
 ;;49999-0060-00
 ;;9002226.02101,"619,49999-0060-00 ",.02)
 ;;49999-0060-00
 ;;9002226.02101,"619,49999-0060-01 ",.01)
 ;;49999-0060-01
 ;;9002226.02101,"619,49999-0060-01 ",.02)
 ;;49999-0060-01
 ;;9002226.02101,"619,49999-0060-06 ",.01)
 ;;49999-0060-06
 ;;9002226.02101,"619,49999-0060-06 ",.02)
 ;;49999-0060-06
 ;;9002226.02101,"619,49999-0060-10 ",.01)
 ;;49999-0060-10
 ;;9002226.02101,"619,49999-0060-10 ",.02)
 ;;49999-0060-10
 ;;9002226.02101,"619,49999-0060-12 ",.01)
 ;;49999-0060-12
 ;;9002226.02101,"619,49999-0060-12 ",.02)
 ;;49999-0060-12
 ;;9002226.02101,"619,49999-0060-15 ",.01)
 ;;49999-0060-15
 ;;9002226.02101,"619,49999-0060-15 ",.02)
 ;;49999-0060-15
 ;;9002226.02101,"619,49999-0060-20 ",.01)
 ;;49999-0060-20
 ;;9002226.02101,"619,49999-0060-20 ",.02)
 ;;49999-0060-20
 ;;9002226.02101,"619,49999-0060-24 ",.01)
 ;;49999-0060-24
 ;;9002226.02101,"619,49999-0060-24 ",.02)
 ;;49999-0060-24
 ;;9002226.02101,"619,49999-0060-30 ",.01)
 ;;49999-0060-30
 ;;9002226.02101,"619,49999-0060-30 ",.02)
 ;;49999-0060-30
 ;;9002226.02101,"619,49999-0060-50 ",.01)
 ;;49999-0060-50
 ;;9002226.02101,"619,49999-0060-50 ",.02)
 ;;49999-0060-50
 ;;9002226.02101,"619,49999-0060-60 ",.01)
 ;;49999-0060-60
 ;;9002226.02101,"619,49999-0060-60 ",.02)
 ;;49999-0060-60
 ;;9002226.02101,"619,49999-0060-90 ",.01)
 ;;49999-0060-90
 ;;9002226.02101,"619,49999-0060-90 ",.02)
 ;;49999-0060-90
 ;;9002226.02101,"619,49999-0118-14 ",.01)
 ;;49999-0118-14
 ;;9002226.02101,"619,49999-0118-14 ",.02)
 ;;49999-0118-14
 ;;9002226.02101,"619,49999-0118-30 ",.01)
 ;;49999-0118-30
 ;;9002226.02101,"619,49999-0118-30 ",.02)
 ;;49999-0118-30
 ;;9002226.02101,"619,49999-0129-00 ",.01)
 ;;49999-0129-00
 ;;9002226.02101,"619,49999-0129-00 ",.02)
 ;;49999-0129-00
 ;;9002226.02101,"619,49999-0129-01 ",.01)
 ;;49999-0129-01
 ;;9002226.02101,"619,49999-0129-01 ",.02)
 ;;49999-0129-01
 ;;9002226.02101,"619,49999-0129-14 ",.01)
 ;;49999-0129-14