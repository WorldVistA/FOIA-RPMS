BGP44O42 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 11, 2013;
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,67544-0400-45 ",.02)
 ;;67544-0400-45
 ;;9002226.02101,"1729,67544-0403-30 ",.01)
 ;;67544-0403-30
 ;;9002226.02101,"1729,67544-0403-30 ",.02)
 ;;67544-0403-30
 ;;9002226.02101,"1729,67544-0404-30 ",.01)
 ;;67544-0404-30
 ;;9002226.02101,"1729,67544-0404-30 ",.02)
 ;;67544-0404-30
 ;;9002226.02101,"1729,67544-0418-30 ",.01)
 ;;67544-0418-30
 ;;9002226.02101,"1729,67544-0418-30 ",.02)
 ;;67544-0418-30
 ;;9002226.02101,"1729,67544-0418-60 ",.01)
 ;;67544-0418-60
 ;;9002226.02101,"1729,67544-0418-60 ",.02)
 ;;67544-0418-60
 ;;9002226.02101,"1729,67544-0418-80 ",.01)
 ;;67544-0418-80
 ;;9002226.02101,"1729,67544-0418-80 ",.02)
 ;;67544-0418-80
 ;;9002226.02101,"1729,67544-0431-15 ",.01)
 ;;67544-0431-15
 ;;9002226.02101,"1729,67544-0431-15 ",.02)
 ;;67544-0431-15
 ;;9002226.02101,"1729,67544-0431-30 ",.01)
 ;;67544-0431-30
 ;;9002226.02101,"1729,67544-0431-30 ",.02)
 ;;67544-0431-30
 ;;9002226.02101,"1729,67544-0431-45 ",.01)
 ;;67544-0431-45
 ;;9002226.02101,"1729,67544-0431-45 ",.02)
 ;;67544-0431-45
 ;;9002226.02101,"1729,67544-0431-53 ",.01)
 ;;67544-0431-53
 ;;9002226.02101,"1729,67544-0431-53 ",.02)
 ;;67544-0431-53
 ;;9002226.02101,"1729,67544-0431-60 ",.01)
 ;;67544-0431-60
 ;;9002226.02101,"1729,67544-0431-60 ",.02)
 ;;67544-0431-60
 ;;9002226.02101,"1729,67544-0431-70 ",.01)
 ;;67544-0431-70
 ;;9002226.02101,"1729,67544-0431-70 ",.02)
 ;;67544-0431-70
 ;;9002226.02101,"1729,67544-0431-73 ",.01)
 ;;67544-0431-73
 ;;9002226.02101,"1729,67544-0431-73 ",.02)
 ;;67544-0431-73
 ;;9002226.02101,"1729,67544-0431-80 ",.01)
 ;;67544-0431-80
 ;;9002226.02101,"1729,67544-0431-80 ",.02)
 ;;67544-0431-80
 ;;9002226.02101,"1729,67544-0431-92 ",.01)
 ;;67544-0431-92
 ;;9002226.02101,"1729,67544-0431-92 ",.02)
 ;;67544-0431-92
 ;;9002226.02101,"1729,67544-0431-94 ",.01)
 ;;67544-0431-94
 ;;9002226.02101,"1729,67544-0431-94 ",.02)
 ;;67544-0431-94
 ;;9002226.02101,"1729,67544-0454-15 ",.01)
 ;;67544-0454-15
 ;;9002226.02101,"1729,67544-0454-15 ",.02)
 ;;67544-0454-15
 ;;9002226.02101,"1729,67544-0454-30 ",.01)
 ;;67544-0454-30
 ;;9002226.02101,"1729,67544-0454-30 ",.02)
 ;;67544-0454-30
 ;;9002226.02101,"1729,67544-0454-40 ",.01)
 ;;67544-0454-40
 ;;9002226.02101,"1729,67544-0454-40 ",.02)
 ;;67544-0454-40
 ;;9002226.02101,"1729,67544-0454-45 ",.01)
 ;;67544-0454-45
 ;;9002226.02101,"1729,67544-0454-45 ",.02)
 ;;67544-0454-45
 ;;9002226.02101,"1729,67544-0454-60 ",.01)
 ;;67544-0454-60
 ;;9002226.02101,"1729,67544-0454-60 ",.02)
 ;;67544-0454-60
 ;;9002226.02101,"1729,67544-0489-15 ",.01)
 ;;67544-0489-15
 ;;9002226.02101,"1729,67544-0489-15 ",.02)
 ;;67544-0489-15
 ;;9002226.02101,"1729,67544-0489-30 ",.01)
 ;;67544-0489-30
 ;;9002226.02101,"1729,67544-0489-30 ",.02)
 ;;67544-0489-30
 ;;9002226.02101,"1729,67544-0489-60 ",.01)
 ;;67544-0489-60
 ;;9002226.02101,"1729,67544-0489-60 ",.02)
 ;;67544-0489-60
 ;;9002226.02101,"1729,67544-0678-60 ",.01)
 ;;67544-0678-60
 ;;9002226.02101,"1729,67544-0678-60 ",.02)
 ;;67544-0678-60
 ;;9002226.02101,"1729,67544-0992-30 ",.01)
 ;;67544-0992-30
 ;;9002226.02101,"1729,67544-0992-30 ",.02)
 ;;67544-0992-30
 ;;9002226.02101,"1729,67544-0997-30 ",.01)
 ;;67544-0997-30
 ;;9002226.02101,"1729,67544-0997-30 ",.02)
 ;;67544-0997-30
 ;;9002226.02101,"1729,67544-0999-60 ",.01)
 ;;67544-0999-60
 ;;9002226.02101,"1729,67544-0999-60 ",.02)
 ;;67544-0999-60
 ;;9002226.02101,"1729,67544-0999-80 ",.01)
 ;;67544-0999-80
 ;;9002226.02101,"1729,67544-0999-80 ",.02)
 ;;67544-0999-80
 ;;9002226.02101,"1729,67544-1010-30 ",.01)
 ;;67544-1010-30
 ;;9002226.02101,"1729,67544-1010-30 ",.02)
 ;;67544-1010-30
 ;;9002226.02101,"1729,67544-1010-60 ",.01)
 ;;67544-1010-60
 ;;9002226.02101,"1729,67544-1010-60 ",.02)
 ;;67544-1010-60
 ;;9002226.02101,"1729,67544-1038-30 ",.01)
 ;;67544-1038-30
 ;;9002226.02101,"1729,67544-1038-30 ",.02)
 ;;67544-1038-30
 ;;9002226.02101,"1729,67544-1038-45 ",.01)
 ;;67544-1038-45
 ;;9002226.02101,"1729,67544-1038-45 ",.02)
 ;;67544-1038-45
 ;;9002226.02101,"1729,67544-1042-45 ",.01)
 ;;67544-1042-45
 ;;9002226.02101,"1729,67544-1042-45 ",.02)
 ;;67544-1042-45
 ;;9002226.02101,"1729,67544-1042-60 ",.01)
 ;;67544-1042-60
 ;;9002226.02101,"1729,67544-1042-60 ",.02)
 ;;67544-1042-60
 ;;9002226.02101,"1729,67544-1054-30 ",.01)
 ;;67544-1054-30
 ;;9002226.02101,"1729,67544-1054-30 ",.02)
 ;;67544-1054-30
 ;;9002226.02101,"1729,67544-1057-30 ",.01)
 ;;67544-1057-30
 ;;9002226.02101,"1729,67544-1057-30 ",.02)
 ;;67544-1057-30
 ;;9002226.02101,"1729,67544-1082-45 ",.01)
 ;;67544-1082-45
 ;;9002226.02101,"1729,67544-1082-45 ",.02)
 ;;67544-1082-45
 ;;9002226.02101,"1729,67544-1105-30 ",.01)
 ;;67544-1105-30
 ;;9002226.02101,"1729,67544-1105-30 ",.02)
 ;;67544-1105-30
 ;;9002226.02101,"1729,67544-1105-45 ",.01)
 ;;67544-1105-45
 ;;9002226.02101,"1729,67544-1105-45 ",.02)
 ;;67544-1105-45
 ;;9002226.02101,"1729,67544-1348-45 ",.01)
 ;;67544-1348-45
 ;;9002226.02101,"1729,67544-1348-45 ",.02)
 ;;67544-1348-45
 ;;9002226.02101,"1729,67544-1348-60 ",.01)
 ;;67544-1348-60
 ;;9002226.02101,"1729,67544-1348-60 ",.02)
 ;;67544-1348-60
 ;;9002226.02101,"1729,67544-1350-45 ",.01)
 ;;67544-1350-45
 ;;9002226.02101,"1729,67544-1350-45 ",.02)
 ;;67544-1350-45
 ;;9002226.02101,"1729,67544-1350-60 ",.01)
 ;;67544-1350-60
 ;;9002226.02101,"1729,67544-1350-60 ",.02)
 ;;67544-1350-60
 ;;9002226.02101,"1729,67544-1372-45 ",.01)
 ;;67544-1372-45
 ;;9002226.02101,"1729,67544-1372-45 ",.02)
 ;;67544-1372-45
 ;;9002226.02101,"1729,67544-1386-30 ",.01)
 ;;67544-1386-30
 ;;9002226.02101,"1729,67544-1386-30 ",.02)
 ;;67544-1386-30
 ;;9002226.02101,"1729,67544-1386-60 ",.01)
 ;;67544-1386-60
 ;;9002226.02101,"1729,67544-1386-60 ",.02)
 ;;67544-1386-60
 ;;9002226.02101,"1729,67544-1387-45 ",.01)
 ;;67544-1387-45
 ;;9002226.02101,"1729,67544-1387-45 ",.02)
 ;;67544-1387-45
 ;;9002226.02101,"1729,68071-0026-30 ",.01)
 ;;68071-0026-30
 ;;9002226.02101,"1729,68071-0026-30 ",.02)
 ;;68071-0026-30
 ;;9002226.02101,"1729,68071-0026-60 ",.01)
 ;;68071-0026-60
 ;;9002226.02101,"1729,68071-0026-60 ",.02)
 ;;68071-0026-60
 ;;9002226.02101,"1729,68071-0026-90 ",.01)
 ;;68071-0026-90
 ;;9002226.02101,"1729,68071-0026-90 ",.02)
 ;;68071-0026-90
 ;;9002226.02101,"1729,68071-0146-30 ",.01)
 ;;68071-0146-30
 ;;9002226.02101,"1729,68071-0146-30 ",.02)
 ;;68071-0146-30
 ;;9002226.02101,"1729,68071-0146-60 ",.01)
 ;;68071-0146-60
 ;;9002226.02101,"1729,68071-0146-60 ",.02)
 ;;68071-0146-60
 ;;9002226.02101,"1729,68071-0146-90 ",.01)
 ;;68071-0146-90
 ;;9002226.02101,"1729,68071-0146-90 ",.02)
 ;;68071-0146-90
 ;;9002226.02101,"1729,68071-0146-91 ",.01)
 ;;68071-0146-91
 ;;9002226.02101,"1729,68071-0146-91 ",.02)
 ;;68071-0146-91
 ;;9002226.02101,"1729,68071-0153-30 ",.01)
 ;;68071-0153-30
 ;;9002226.02101,"1729,68071-0153-30 ",.02)
 ;;68071-0153-30
 ;;9002226.02101,"1729,68071-0153-60 ",.01)
 ;;68071-0153-60
 ;;9002226.02101,"1729,68071-0153-60 ",.02)
 ;;68071-0153-60
 ;;9002226.02101,"1729,68071-0153-90 ",.01)
 ;;68071-0153-90
 ;;9002226.02101,"1729,68071-0153-90 ",.02)
 ;;68071-0153-90
 ;;9002226.02101,"1729,68071-0785-30 ",.01)
 ;;68071-0785-30
 ;;9002226.02101,"1729,68071-0785-30 ",.02)
 ;;68071-0785-30
 ;;9002226.02101,"1729,68071-0785-60 ",.01)
 ;;68071-0785-60
 ;;9002226.02101,"1729,68071-0785-60 ",.02)
 ;;68071-0785-60
 ;;9002226.02101,"1729,68071-0786-30 ",.01)
 ;;68071-0786-30
 ;;9002226.02101,"1729,68071-0786-30 ",.02)
 ;;68071-0786-30
 ;;9002226.02101,"1729,68071-0786-60 ",.01)
 ;;68071-0786-60
 ;;9002226.02101,"1729,68071-0786-60 ",.02)
 ;;68071-0786-60
 ;;9002226.02101,"1729,68071-0787-60 ",.01)
 ;;68071-0787-60
 ;;9002226.02101,"1729,68071-0787-60 ",.02)
 ;;68071-0787-60
 ;;9002226.02101,"1729,68084-0007-11 ",.01)
 ;;68084-0007-11
 ;;9002226.02101,"1729,68084-0007-11 ",.02)
 ;;68084-0007-11
 ;;9002226.02101,"1729,68084-0007-21 ",.01)
 ;;68084-0007-21
 ;;9002226.02101,"1729,68084-0007-21 ",.02)
 ;;68084-0007-21
 ;;9002226.02101,"1729,68084-0060-01 ",.01)
 ;;68084-0060-01
 ;;9002226.02101,"1729,68084-0060-01 ",.02)
 ;;68084-0060-01
 ;;9002226.02101,"1729,68084-0060-11 ",.01)
 ;;68084-0060-11
 ;;9002226.02101,"1729,68084-0060-11 ",.02)
 ;;68084-0060-11
 ;;9002226.02101,"1729,68084-0061-01 ",.01)
 ;;68084-0061-01
 ;;9002226.02101,"1729,68084-0061-01 ",.02)
 ;;68084-0061-01
 ;;9002226.02101,"1729,68084-0061-11 ",.01)
 ;;68084-0061-11
 ;;9002226.02101,"1729,68084-0061-11 ",.02)
 ;;68084-0061-11
 ;;9002226.02101,"1729,68084-0062-01 ",.01)
 ;;68084-0062-01
 ;;9002226.02101,"1729,68084-0062-01 ",.02)
 ;;68084-0062-01
 ;;9002226.02101,"1729,68084-0062-11 ",.01)
 ;;68084-0062-11
 ;;9002226.02101,"1729,68084-0062-11 ",.02)
 ;;68084-0062-11
 ;;9002226.02101,"1729,68084-0064-01 ",.01)
 ;;68084-0064-01
 ;;9002226.02101,"1729,68084-0064-01 ",.02)
 ;;68084-0064-01
 ;;9002226.02101,"1729,68084-0064-11 ",.01)
 ;;68084-0064-11
 ;;9002226.02101,"1729,68084-0064-11 ",.02)
 ;;68084-0064-11
 ;;9002226.02101,"1729,68084-0266-01 ",.01)
 ;;68084-0266-01
 ;;9002226.02101,"1729,68084-0266-01 ",.02)
 ;;68084-0266-01
 ;;9002226.02101,"1729,68084-0266-11 ",.01)
 ;;68084-0266-11
 ;;9002226.02101,"1729,68084-0266-11 ",.02)
 ;;68084-0266-11
 ;;9002226.02101,"1729,68084-0267-01 ",.01)
 ;;68084-0267-01
 ;;9002226.02101,"1729,68084-0267-01 ",.02)
 ;;68084-0267-01
 ;;9002226.02101,"1729,68084-0267-11 ",.01)
 ;;68084-0267-11
 ;;9002226.02101,"1729,68084-0267-11 ",.02)
 ;;68084-0267-11
 ;;9002226.02101,"1729,68084-0268-01 ",.01)
 ;;68084-0268-01
 ;;9002226.02101,"1729,68084-0268-01 ",.02)
 ;;68084-0268-01
 ;;9002226.02101,"1729,68084-0268-11 ",.01)
 ;;68084-0268-11
 ;;9002226.02101,"1729,68084-0268-11 ",.02)
 ;;68084-0268-11
 ;;9002226.02101,"1729,68084-0294-11 ",.01)
 ;;68084-0294-11
 ;;9002226.02101,"1729,68084-0294-11 ",.02)
 ;;68084-0294-11
 ;;9002226.02101,"1729,68084-0294-21 ",.01)
 ;;68084-0294-21
 ;;9002226.02101,"1729,68084-0294-21 ",.02)
 ;;68084-0294-21
 ;;9002226.02101,"1729,68084-0346-01 ",.01)
 ;;68084-0346-01
 ;;9002226.02101,"1729,68084-0346-01 ",.02)
 ;;68084-0346-01
 ;;9002226.02101,"1729,68084-0346-11 ",.01)
 ;;68084-0346-11
 ;;9002226.02101,"1729,68084-0346-11 ",.02)
 ;;68084-0346-11
 ;;9002226.02101,"1729,68084-0347-01 ",.01)
 ;;68084-0347-01
 ;;9002226.02101,"1729,68084-0347-01 ",.02)
 ;;68084-0347-01
 ;;9002226.02101,"1729,68084-0347-11 ",.01)
 ;;68084-0347-11
 ;;9002226.02101,"1729,68084-0347-11 ",.02)
 ;;68084-0347-11
 ;;9002226.02101,"1729,68084-0348-01 ",.01)
 ;;68084-0348-01
 ;;9002226.02101,"1729,68084-0348-01 ",.02)
 ;;68084-0348-01
 ;;9002226.02101,"1729,68084-0348-11 ",.01)
 ;;68084-0348-11
 ;;9002226.02101,"1729,68084-0348-11 ",.02)
 ;;68084-0348-11
 ;;9002226.02101,"1729,68084-0349-11 ",.01)
 ;;68084-0349-11
 ;;9002226.02101,"1729,68084-0349-11 ",.02)
 ;;68084-0349-11
 ;;9002226.02101,"1729,68084-0349-21 ",.01)
 ;;68084-0349-21
 ;;9002226.02101,"1729,68084-0349-21 ",.02)
 ;;68084-0349-21
 ;;9002226.02101,"1729,68084-0350-01 ",.01)
 ;;68084-0350-01
 ;;9002226.02101,"1729,68084-0350-01 ",.02)
 ;;68084-0350-01
 ;;9002226.02101,"1729,68084-0350-11 ",.01)
 ;;68084-0350-11
 ;;9002226.02101,"1729,68084-0350-11 ",.02)
 ;;68084-0350-11
 ;;9002226.02101,"1729,68084-0351-11 ",.01)
 ;;68084-0351-11
 ;;9002226.02101,"1729,68084-0351-11 ",.02)
 ;;68084-0351-11
 ;;9002226.02101,"1729,68084-0351-21 ",.01)
 ;;68084-0351-21
 ;;9002226.02101,"1729,68084-0351-21 ",.02)
 ;;68084-0351-21
 ;;9002226.02101,"1729,68084-0390-01 ",.01)
 ;;68084-0390-01
 ;;9002226.02101,"1729,68084-0390-01 ",.02)
 ;;68084-0390-01
 ;;9002226.02101,"1729,68084-0390-11 ",.01)
 ;;68084-0390-11
 ;;9002226.02101,"1729,68084-0390-11 ",.02)
 ;;68084-0390-11
 ;;9002226.02101,"1729,68084-0391-01 ",.01)
 ;;68084-0391-01
 ;;9002226.02101,"1729,68084-0391-01 ",.02)
 ;;68084-0391-01
 ;;9002226.02101,"1729,68084-0391-11 ",.01)
 ;;68084-0391-11
 ;;9002226.02101,"1729,68084-0391-11 ",.02)
 ;;68084-0391-11
 ;;9002226.02101,"1729,68084-0392-01 ",.01)
 ;;68084-0392-01
 ;;9002226.02101,"1729,68084-0392-01 ",.02)
 ;;68084-0392-01
 ;;9002226.02101,"1729,68084-0392-11 ",.01)
 ;;68084-0392-11
 ;;9002226.02101,"1729,68084-0392-11 ",.02)
 ;;68084-0392-11
 ;;9002226.02101,"1729,68084-0518-11 ",.01)
 ;;68084-0518-11
 ;;9002226.02101,"1729,68084-0518-11 ",.02)
 ;;68084-0518-11
 ;;9002226.02101,"1729,68084-0518-21 ",.01)
 ;;68084-0518-21
 ;;9002226.02101,"1729,68084-0518-21 ",.02)
 ;;68084-0518-21
 ;;9002226.02101,"1729,68084-0519-11 ",.01)
 ;;68084-0519-11
 ;;9002226.02101,"1729,68084-0519-11 ",.02)
 ;;68084-0519-11
 ;;9002226.02101,"1729,68084-0519-21 ",.01)
 ;;68084-0519-21
 ;;9002226.02101,"1729,68084-0519-21 ",.02)
 ;;68084-0519-21
 ;;9002226.02101,"1729,68180-0101-02 ",.01)
 ;;68180-0101-02
 ;;9002226.02101,"1729,68180-0101-02 ",.02)
 ;;68180-0101-02
 ;;9002226.02101,"1729,68180-0101-09 ",.01)
 ;;68180-0101-09
 ;;9002226.02101,"1729,68180-0101-09 ",.02)
 ;;68180-0101-09
 ;;9002226.02101,"1729,68180-0102-02 ",.01)
 ;;68180-0102-02
 ;;9002226.02101,"1729,68180-0102-02 ",.02)
 ;;68180-0102-02
 ;;9002226.02101,"1729,68180-0102-09 ",.01)
 ;;68180-0102-09
 ;;9002226.02101,"1729,68180-0102-09 ",.02)
 ;;68180-0102-09
 ;;9002226.02101,"1729,68180-0103-02 ",.01)
 ;;68180-0103-02
 ;;9002226.02101,"1729,68180-0103-02 ",.02)
 ;;68180-0103-02
 ;;9002226.02101,"1729,68180-0103-09 ",.01)
 ;;68180-0103-09
 ;;9002226.02101,"1729,68180-0103-09 ",.02)
 ;;68180-0103-09
 ;;9002226.02101,"1729,68180-0104-02 ",.01)
 ;;68180-0104-02
 ;;9002226.02101,"1729,68180-0104-02 ",.02)
 ;;68180-0104-02