BGP83A23 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1828,43353-0820-70 ",.02)
 ;;43353-0820-70
 ;;9002226.02101,"1828,43353-0825-30 ",.01)
 ;;43353-0825-30
 ;;9002226.02101,"1828,43353-0825-30 ",.02)
 ;;43353-0825-30
 ;;9002226.02101,"1828,43353-0825-53 ",.01)
 ;;43353-0825-53
 ;;9002226.02101,"1828,43353-0825-53 ",.02)
 ;;43353-0825-53
 ;;9002226.02101,"1828,43353-0825-60 ",.01)
 ;;43353-0825-60
 ;;9002226.02101,"1828,43353-0825-60 ",.02)
 ;;43353-0825-60
 ;;9002226.02101,"1828,43353-0825-70 ",.01)
 ;;43353-0825-70
 ;;9002226.02101,"1828,43353-0825-70 ",.02)
 ;;43353-0825-70
 ;;9002226.02101,"1828,43353-0965-30 ",.01)
 ;;43353-0965-30
 ;;9002226.02101,"1828,43353-0965-30 ",.02)
 ;;43353-0965-30
 ;;9002226.02101,"1828,43353-0965-53 ",.01)
 ;;43353-0965-53
 ;;9002226.02101,"1828,43353-0965-53 ",.02)
 ;;43353-0965-53
 ;;9002226.02101,"1828,43353-0965-60 ",.01)
 ;;43353-0965-60
 ;;9002226.02101,"1828,43353-0965-60 ",.02)
 ;;43353-0965-60
 ;;9002226.02101,"1828,43353-0969-53 ",.01)
 ;;43353-0969-53
 ;;9002226.02101,"1828,43353-0969-53 ",.02)
 ;;43353-0969-53
 ;;9002226.02101,"1828,43353-0980-30 ",.01)
 ;;43353-0980-30
 ;;9002226.02101,"1828,43353-0980-30 ",.02)
 ;;43353-0980-30
 ;;9002226.02101,"1828,43547-0251-10 ",.01)
 ;;43547-0251-10
 ;;9002226.02101,"1828,43547-0251-10 ",.02)
 ;;43547-0251-10
 ;;9002226.02101,"1828,43547-0252-10 ",.01)
 ;;43547-0252-10
 ;;9002226.02101,"1828,43547-0252-10 ",.02)
 ;;43547-0252-10
 ;;9002226.02101,"1828,43547-0253-10 ",.01)
 ;;43547-0253-10
 ;;9002226.02101,"1828,43547-0253-10 ",.02)
 ;;43547-0253-10
 ;;9002226.02101,"1828,47335-0603-13 ",.01)
 ;;47335-0603-13
 ;;9002226.02101,"1828,47335-0603-13 ",.02)
 ;;47335-0603-13
 ;;9002226.02101,"1828,47335-0603-18 ",.01)
 ;;47335-0603-18
 ;;9002226.02101,"1828,47335-0603-18 ",.02)
 ;;47335-0603-18
 ;;9002226.02101,"1828,47335-0603-88 ",.01)
 ;;47335-0603-88
 ;;9002226.02101,"1828,47335-0603-88 ",.02)
 ;;47335-0603-88
 ;;9002226.02101,"1828,47335-0604-13 ",.01)
 ;;47335-0604-13
 ;;9002226.02101,"1828,47335-0604-13 ",.02)
 ;;47335-0604-13
 ;;9002226.02101,"1828,47335-0604-18 ",.01)
 ;;47335-0604-18
 ;;9002226.02101,"1828,47335-0604-18 ",.02)
 ;;47335-0604-18
 ;;9002226.02101,"1828,47335-0604-88 ",.01)
 ;;47335-0604-88
 ;;9002226.02101,"1828,47335-0604-88 ",.02)
 ;;47335-0604-88
 ;;9002226.02101,"1828,47335-0605-13 ",.01)
 ;;47335-0605-13
 ;;9002226.02101,"1828,47335-0605-13 ",.02)
 ;;47335-0605-13
 ;;9002226.02101,"1828,47335-0605-18 ",.01)
 ;;47335-0605-18
 ;;9002226.02101,"1828,47335-0605-18 ",.02)
 ;;47335-0605-18
 ;;9002226.02101,"1828,47335-0605-88 ",.01)
 ;;47335-0605-88
 ;;9002226.02101,"1828,47335-0605-88 ",.02)
 ;;47335-0605-88
 ;;9002226.02101,"1828,47335-0606-88 ",.01)
 ;;47335-0606-88
 ;;9002226.02101,"1828,47335-0606-88 ",.02)
 ;;47335-0606-88
 ;;9002226.02101,"1828,47463-0008-30 ",.01)
 ;;47463-0008-30
 ;;9002226.02101,"1828,47463-0008-30 ",.02)
 ;;47463-0008-30
 ;;9002226.02101,"1828,47463-0009-00 ",.01)
 ;;47463-0009-00
 ;;9002226.02101,"1828,47463-0009-00 ",.02)
 ;;47463-0009-00
 ;;9002226.02101,"1828,47463-0009-30 ",.01)
 ;;47463-0009-30
 ;;9002226.02101,"1828,47463-0009-30 ",.02)
 ;;47463-0009-30
 ;;9002226.02101,"1828,47463-0009-60 ",.01)
 ;;47463-0009-60
 ;;9002226.02101,"1828,47463-0009-60 ",.02)
 ;;47463-0009-60
 ;;9002226.02101,"1828,47463-0009-71 ",.01)
 ;;47463-0009-71
 ;;9002226.02101,"1828,47463-0009-71 ",.02)
 ;;47463-0009-71
 ;;9002226.02101,"1828,47463-0009-76 ",.01)
 ;;47463-0009-76
 ;;9002226.02101,"1828,47463-0009-76 ",.02)
 ;;47463-0009-76
 ;;9002226.02101,"1828,47463-0010-00 ",.01)
 ;;47463-0010-00
 ;;9002226.02101,"1828,47463-0010-00 ",.02)
 ;;47463-0010-00
 ;;9002226.02101,"1828,47463-0010-30 ",.01)
 ;;47463-0010-30
 ;;9002226.02101,"1828,47463-0010-30 ",.02)
 ;;47463-0010-30
 ;;9002226.02101,"1828,47463-0010-60 ",.01)
 ;;47463-0010-60
 ;;9002226.02101,"1828,47463-0010-60 ",.02)
 ;;47463-0010-60
 ;;9002226.02101,"1828,47463-0010-71 ",.01)
 ;;47463-0010-71
 ;;9002226.02101,"1828,47463-0010-71 ",.02)
 ;;47463-0010-71
 ;;9002226.02101,"1828,47463-0010-76 ",.01)
 ;;47463-0010-76
 ;;9002226.02101,"1828,47463-0010-76 ",.02)
 ;;47463-0010-76
 ;;9002226.02101,"1828,47463-0010-90 ",.01)
 ;;47463-0010-90
 ;;9002226.02101,"1828,47463-0010-90 ",.02)
 ;;47463-0010-90
 ;;9002226.02101,"1828,47463-0011-30 ",.01)
 ;;47463-0011-30
 ;;9002226.02101,"1828,47463-0011-30 ",.02)
 ;;47463-0011-30
 ;;9002226.02101,"1828,47463-0011-60 ",.01)
 ;;47463-0011-60
 ;;9002226.02101,"1828,47463-0011-60 ",.02)
 ;;47463-0011-60
 ;;9002226.02101,"1828,47463-0011-71 ",.01)
 ;;47463-0011-71
 ;;9002226.02101,"1828,47463-0011-71 ",.02)
 ;;47463-0011-71
 ;;9002226.02101,"1828,47463-0011-77 ",.01)
 ;;47463-0011-77
 ;;9002226.02101,"1828,47463-0011-77 ",.02)
 ;;47463-0011-77
 ;;9002226.02101,"1828,47463-0011-90 ",.01)
 ;;47463-0011-90
 ;;9002226.02101,"1828,47463-0011-90 ",.02)
 ;;47463-0011-90
 ;;9002226.02101,"1828,47463-0075-00 ",.01)
 ;;47463-0075-00
 ;;9002226.02101,"1828,47463-0075-00 ",.02)
 ;;47463-0075-00
 ;;9002226.02101,"1828,47463-0075-30 ",.01)
 ;;47463-0075-30
 ;;9002226.02101,"1828,47463-0075-30 ",.02)
 ;;47463-0075-30
 ;;9002226.02101,"1828,47463-0075-60 ",.01)
 ;;47463-0075-60
 ;;9002226.02101,"1828,47463-0075-60 ",.02)
 ;;47463-0075-60
 ;;9002226.02101,"1828,47463-0075-71 ",.01)
 ;;47463-0075-71
 ;;9002226.02101,"1828,47463-0075-71 ",.02)
 ;;47463-0075-71
 ;;9002226.02101,"1828,47463-0075-90 ",.01)
 ;;47463-0075-90
 ;;9002226.02101,"1828,47463-0075-90 ",.02)
 ;;47463-0075-90
 ;;9002226.02101,"1828,47463-0076-00 ",.01)
 ;;47463-0076-00
 ;;9002226.02101,"1828,47463-0076-00 ",.02)
 ;;47463-0076-00
 ;;9002226.02101,"1828,47463-0076-30 ",.01)
 ;;47463-0076-30
 ;;9002226.02101,"1828,47463-0076-30 ",.02)
 ;;47463-0076-30
 ;;9002226.02101,"1828,47463-0076-60 ",.01)
 ;;47463-0076-60
 ;;9002226.02101,"1828,47463-0076-60 ",.02)
 ;;47463-0076-60
 ;;9002226.02101,"1828,47463-0076-71 ",.01)
 ;;47463-0076-71
 ;;9002226.02101,"1828,47463-0076-71 ",.02)
 ;;47463-0076-71
 ;;9002226.02101,"1828,47463-0076-90 ",.01)
 ;;47463-0076-90
 ;;9002226.02101,"1828,47463-0076-90 ",.02)
 ;;47463-0076-90
 ;;9002226.02101,"1828,47463-0079-90 ",.01)
 ;;47463-0079-90
 ;;9002226.02101,"1828,47463-0079-90 ",.02)
 ;;47463-0079-90
 ;;9002226.02101,"1828,47463-0109-60 ",.01)
 ;;47463-0109-60
 ;;9002226.02101,"1828,47463-0109-60 ",.02)
 ;;47463-0109-60
 ;;9002226.02101,"1828,47463-0203-02 ",.01)
 ;;47463-0203-02
 ;;9002226.02101,"1828,47463-0203-02 ",.02)
 ;;47463-0203-02
 ;;9002226.02101,"1828,47463-0203-15 ",.01)
 ;;47463-0203-15
 ;;9002226.02101,"1828,47463-0203-15 ",.02)
 ;;47463-0203-15
 ;;9002226.02101,"1828,47463-0203-30 ",.01)
 ;;47463-0203-30
 ;;9002226.02101,"1828,47463-0203-30 ",.02)
 ;;47463-0203-30
 ;;9002226.02101,"1828,47463-0203-60 ",.01)
 ;;47463-0203-60
 ;;9002226.02101,"1828,47463-0203-60 ",.02)
 ;;47463-0203-60
 ;;9002226.02101,"1828,47463-0203-90 ",.01)
 ;;47463-0203-90
 ;;9002226.02101,"1828,47463-0203-90 ",.02)
 ;;47463-0203-90
 ;;9002226.02101,"1828,47463-0204-20 ",.01)
 ;;47463-0204-20
 ;;9002226.02101,"1828,47463-0204-20 ",.02)
 ;;47463-0204-20
 ;;9002226.02101,"1828,47463-0204-30 ",.01)
 ;;47463-0204-30
 ;;9002226.02101,"1828,47463-0204-30 ",.02)
 ;;47463-0204-30
 ;;9002226.02101,"1828,47463-0204-40 ",.01)
 ;;47463-0204-40
 ;;9002226.02101,"1828,47463-0204-40 ",.02)
 ;;47463-0204-40
 ;;9002226.02101,"1828,47463-0204-60 ",.01)
 ;;47463-0204-60
 ;;9002226.02101,"1828,47463-0204-60 ",.02)
 ;;47463-0204-60
 ;;9002226.02101,"1828,47463-0204-71 ",.01)
 ;;47463-0204-71
 ;;9002226.02101,"1828,47463-0204-71 ",.02)
 ;;47463-0204-71
 ;;9002226.02101,"1828,47463-0204-90 ",.01)
 ;;47463-0204-90
 ;;9002226.02101,"1828,47463-0204-90 ",.02)
 ;;47463-0204-90
 ;;9002226.02101,"1828,47463-0393-00 ",.01)
 ;;47463-0393-00
 ;;9002226.02101,"1828,47463-0393-00 ",.02)
 ;;47463-0393-00
 ;;9002226.02101,"1828,47463-0393-15 ",.01)
 ;;47463-0393-15
 ;;9002226.02101,"1828,47463-0393-15 ",.02)
 ;;47463-0393-15
 ;;9002226.02101,"1828,47463-0393-71 ",.01)
 ;;47463-0393-71
 ;;9002226.02101,"1828,47463-0393-71 ",.02)
 ;;47463-0393-71
 ;;9002226.02101,"1828,47463-0393-73 ",.01)
 ;;47463-0393-73
 ;;9002226.02101,"1828,47463-0393-73 ",.02)
 ;;47463-0393-73
 ;;9002226.02101,"1828,47463-0404-60 ",.01)
 ;;47463-0404-60
 ;;9002226.02101,"1828,47463-0404-60 ",.02)
 ;;47463-0404-60
 ;;9002226.02101,"1828,47463-0441-90 ",.01)
 ;;47463-0441-90
 ;;9002226.02101,"1828,47463-0441-90 ",.02)
 ;;47463-0441-90
 ;;9002226.02101,"1828,47463-0789-28 ",.01)
 ;;47463-0789-28
 ;;9002226.02101,"1828,47463-0789-28 ",.02)
 ;;47463-0789-28
 ;;9002226.02101,"1828,47463-0789-30 ",.01)
 ;;47463-0789-30
 ;;9002226.02101,"1828,47463-0789-30 ",.02)
 ;;47463-0789-30
 ;;9002226.02101,"1828,47463-0790-30 ",.01)
 ;;47463-0790-30
 ;;9002226.02101,"1828,47463-0790-30 ",.02)
 ;;47463-0790-30
 ;;9002226.02101,"1828,47463-0790-60 ",.01)
 ;;47463-0790-60
 ;;9002226.02101,"1828,47463-0790-60 ",.02)
 ;;47463-0790-60
 ;;9002226.02101,"1828,47463-0852-60 ",.01)
 ;;47463-0852-60
 ;;9002226.02101,"1828,47463-0852-60 ",.02)
 ;;47463-0852-60
 ;;9002226.02101,"1828,49884-0110-52 ",.01)
 ;;49884-0110-52
 ;;9002226.02101,"1828,49884-0110-52 ",.02)
 ;;49884-0110-52
 ;;9002226.02101,"1828,49884-0110-74 ",.01)
 ;;49884-0110-74
 ;;9002226.02101,"1828,49884-0110-74 ",.02)
 ;;49884-0110-74
 ;;9002226.02101,"1828,49884-0111-52 ",.01)
 ;;49884-0111-52
 ;;9002226.02101,"1828,49884-0111-52 ",.02)
 ;;49884-0111-52
 ;;9002226.02101,"1828,49884-0111-74 ",.01)
 ;;49884-0111-74
 ;;9002226.02101,"1828,49884-0111-74 ",.02)
 ;;49884-0111-74
 ;;9002226.02101,"1828,49884-0213-52 ",.01)
 ;;49884-0213-52
 ;;9002226.02101,"1828,49884-0213-52 ",.02)
 ;;49884-0213-52
 ;;9002226.02101,"1828,49884-0213-74 ",.01)
 ;;49884-0213-74
 ;;9002226.02101,"1828,49884-0213-74 ",.02)
 ;;49884-0213-74
 ;;9002226.02101,"1828,49884-0214-52 ",.01)
 ;;49884-0214-52
 ;;9002226.02101,"1828,49884-0214-52 ",.02)
 ;;49884-0214-52
 ;;9002226.02101,"1828,49884-0214-74 ",.01)
 ;;49884-0214-74
 ;;9002226.02101,"1828,49884-0214-74 ",.02)
 ;;49884-0214-74
 ;;9002226.02101,"1828,49884-0306-02 ",.01)
 ;;49884-0306-02
 ;;9002226.02101,"1828,49884-0306-02 ",.02)
 ;;49884-0306-02
 ;;9002226.02101,"1828,49884-0306-52 ",.01)
 ;;49884-0306-52
 ;;9002226.02101,"1828,49884-0306-52 ",.02)
 ;;49884-0306-52
 ;;9002226.02101,"1828,49884-0307-02 ",.01)
 ;;49884-0307-02
 ;;9002226.02101,"1828,49884-0307-02 ",.02)
 ;;49884-0307-02
 ;;9002226.02101,"1828,49884-0307-52 ",.01)
 ;;49884-0307-52
 ;;9002226.02101,"1828,49884-0307-52 ",.02)
 ;;49884-0307-52
 ;;9002226.02101,"1828,49884-0308-02 ",.01)
 ;;49884-0308-02
 ;;9002226.02101,"1828,49884-0308-02 ",.02)
 ;;49884-0308-02
 ;;9002226.02101,"1828,49884-0308-52 ",.01)
 ;;49884-0308-52
 ;;9002226.02101,"1828,49884-0308-52 ",.02)
 ;;49884-0308-52
 ;;9002226.02101,"1828,49884-0309-02 ",.01)
 ;;49884-0309-02
 ;;9002226.02101,"1828,49884-0309-02 ",.02)
 ;;49884-0309-02
 ;;9002226.02101,"1828,49884-0309-52 ",.01)
 ;;49884-0309-52
 ;;9002226.02101,"1828,49884-0309-52 ",.02)
 ;;49884-0309-52
 ;;9002226.02101,"1828,49884-0310-02 ",.01)
 ;;49884-0310-02
 ;;9002226.02101,"1828,49884-0310-02 ",.02)
 ;;49884-0310-02
 ;;9002226.02101,"1828,49884-0310-52 ",.01)
 ;;49884-0310-52
 ;;9002226.02101,"1828,49884-0310-52 ",.02)
 ;;49884-0310-52
 ;;9002226.02101,"1828,49999-0018-02 ",.01)
 ;;49999-0018-02
 ;;9002226.02101,"1828,49999-0018-02 ",.02)
 ;;49999-0018-02
 ;;9002226.02101,"1828,49999-0018-03 ",.01)
 ;;49999-0018-03
 ;;9002226.02101,"1828,49999-0018-03 ",.02)
 ;;49999-0018-03
 ;;9002226.02101,"1828,49999-0018-05 ",.01)
 ;;49999-0018-05
 ;;9002226.02101,"1828,49999-0018-05 ",.02)
 ;;49999-0018-05