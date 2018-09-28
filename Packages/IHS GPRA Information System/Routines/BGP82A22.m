BGP82A22 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1799,49999-0151-60 ",.01)
 ;;49999-0151-60
 ;;9002226.02101,"1799,49999-0151-60 ",.02)
 ;;49999-0151-60
 ;;9002226.02101,"1799,49999-0190-30 ",.01)
 ;;49999-0190-30
 ;;9002226.02101,"1799,49999-0190-30 ",.02)
 ;;49999-0190-30
 ;;9002226.02101,"1799,49999-0205-00 ",.01)
 ;;49999-0205-00
 ;;9002226.02101,"1799,49999-0205-00 ",.02)
 ;;49999-0205-00
 ;;9002226.02101,"1799,49999-0205-30 ",.01)
 ;;49999-0205-30
 ;;9002226.02101,"1799,49999-0205-30 ",.02)
 ;;49999-0205-30
 ;;9002226.02101,"1799,49999-0205-60 ",.01)
 ;;49999-0205-60
 ;;9002226.02101,"1799,49999-0205-60 ",.02)
 ;;49999-0205-60
 ;;9002226.02101,"1799,49999-0215-25 ",.01)
 ;;49999-0215-25
 ;;9002226.02101,"1799,49999-0215-25 ",.02)
 ;;49999-0215-25
 ;;9002226.02101,"1799,49999-0215-30 ",.01)
 ;;49999-0215-30
 ;;9002226.02101,"1799,49999-0215-30 ",.02)
 ;;49999-0215-30
 ;;9002226.02101,"1799,49999-0215-60 ",.01)
 ;;49999-0215-60
 ;;9002226.02101,"1799,49999-0215-60 ",.02)
 ;;49999-0215-60
 ;;9002226.02101,"1799,49999-0215-90 ",.01)
 ;;49999-0215-90
 ;;9002226.02101,"1799,49999-0215-90 ",.02)
 ;;49999-0215-90
 ;;9002226.02101,"1799,49999-0228-00 ",.01)
 ;;49999-0228-00
 ;;9002226.02101,"1799,49999-0228-00 ",.02)
 ;;49999-0228-00
 ;;9002226.02101,"1799,49999-0228-30 ",.01)
 ;;49999-0228-30
 ;;9002226.02101,"1799,49999-0228-30 ",.02)
 ;;49999-0228-30
 ;;9002226.02101,"1799,49999-0228-60 ",.01)
 ;;49999-0228-60
 ;;9002226.02101,"1799,49999-0228-60 ",.02)
 ;;49999-0228-60
 ;;9002226.02101,"1799,49999-0228-90 ",.01)
 ;;49999-0228-90
 ;;9002226.02101,"1799,49999-0228-90 ",.02)
 ;;49999-0228-90
 ;;9002226.02101,"1799,49999-0318-00 ",.01)
 ;;49999-0318-00
 ;;9002226.02101,"1799,49999-0318-00 ",.02)
 ;;49999-0318-00
 ;;9002226.02101,"1799,49999-0318-30 ",.01)
 ;;49999-0318-30
 ;;9002226.02101,"1799,49999-0318-30 ",.02)
 ;;49999-0318-30
 ;;9002226.02101,"1799,49999-0318-60 ",.01)
 ;;49999-0318-60
 ;;9002226.02101,"1799,49999-0318-60 ",.02)
 ;;49999-0318-60
 ;;9002226.02101,"1799,49999-0394-30 ",.01)
 ;;49999-0394-30
 ;;9002226.02101,"1799,49999-0394-30 ",.02)
 ;;49999-0394-30
 ;;9002226.02101,"1799,49999-0394-60 ",.01)
 ;;49999-0394-60
 ;;9002226.02101,"1799,49999-0394-60 ",.02)
 ;;49999-0394-60
 ;;9002226.02101,"1799,49999-0394-90 ",.01)
 ;;49999-0394-90
 ;;9002226.02101,"1799,49999-0394-90 ",.02)
 ;;49999-0394-90
 ;;9002226.02101,"1799,49999-0400-30 ",.01)
 ;;49999-0400-30
 ;;9002226.02101,"1799,49999-0400-30 ",.02)
 ;;49999-0400-30
 ;;9002226.02101,"1799,49999-0453-15 ",.01)
 ;;49999-0453-15
 ;;9002226.02101,"1799,49999-0453-15 ",.02)
 ;;49999-0453-15
 ;;9002226.02101,"1799,49999-0453-30 ",.01)
 ;;49999-0453-30
 ;;9002226.02101,"1799,49999-0453-30 ",.02)
 ;;49999-0453-30
 ;;9002226.02101,"1799,49999-0538-30 ",.01)
 ;;49999-0538-30
 ;;9002226.02101,"1799,49999-0538-30 ",.02)
 ;;49999-0538-30
 ;;9002226.02101,"1799,49999-0538-60 ",.01)
 ;;49999-0538-60
 ;;9002226.02101,"1799,49999-0538-60 ",.02)
 ;;49999-0538-60
 ;;9002226.02101,"1799,49999-0551-30 ",.01)
 ;;49999-0551-30
 ;;9002226.02101,"1799,49999-0551-30 ",.02)
 ;;49999-0551-30
 ;;9002226.02101,"1799,49999-0597-30 ",.01)
 ;;49999-0597-30
 ;;9002226.02101,"1799,49999-0597-30 ",.02)
 ;;49999-0597-30
 ;;9002226.02101,"1799,49999-0601-15 ",.01)
 ;;49999-0601-15
 ;;9002226.02101,"1799,49999-0601-15 ",.02)
 ;;49999-0601-15
 ;;9002226.02101,"1799,49999-0601-30 ",.01)
 ;;49999-0601-30
 ;;9002226.02101,"1799,49999-0601-30 ",.02)
 ;;49999-0601-30
 ;;9002226.02101,"1799,49999-0604-15 ",.01)
 ;;49999-0604-15
 ;;9002226.02101,"1799,49999-0604-15 ",.02)
 ;;49999-0604-15
 ;;9002226.02101,"1799,49999-0604-30 ",.01)
 ;;49999-0604-30
 ;;9002226.02101,"1799,49999-0604-30 ",.02)
 ;;49999-0604-30
 ;;9002226.02101,"1799,49999-0604-60 ",.01)
 ;;49999-0604-60
 ;;9002226.02101,"1799,49999-0604-60 ",.02)
 ;;49999-0604-60
 ;;9002226.02101,"1799,49999-0613-30 ",.01)
 ;;49999-0613-30
 ;;9002226.02101,"1799,49999-0613-30 ",.02)
 ;;49999-0613-30
 ;;9002226.02101,"1799,49999-0631-30 ",.01)
 ;;49999-0631-30
 ;;9002226.02101,"1799,49999-0631-30 ",.02)
 ;;49999-0631-30
 ;;9002226.02101,"1799,49999-0631-60 ",.01)
 ;;49999-0631-60
 ;;9002226.02101,"1799,49999-0631-60 ",.02)
 ;;49999-0631-60
 ;;9002226.02101,"1799,49999-0632-00 ",.01)
 ;;49999-0632-00
 ;;9002226.02101,"1799,49999-0632-00 ",.02)
 ;;49999-0632-00
 ;;9002226.02101,"1799,49999-0632-30 ",.01)
 ;;49999-0632-30
 ;;9002226.02101,"1799,49999-0632-30 ",.02)
 ;;49999-0632-30
 ;;9002226.02101,"1799,49999-0632-60 ",.01)
 ;;49999-0632-60
 ;;9002226.02101,"1799,49999-0632-60 ",.02)
 ;;49999-0632-60
 ;;9002226.02101,"1799,49999-0737-00 ",.01)
 ;;49999-0737-00
 ;;9002226.02101,"1799,49999-0737-00 ",.02)
 ;;49999-0737-00
 ;;9002226.02101,"1799,49999-0737-14 ",.01)
 ;;49999-0737-14
 ;;9002226.02101,"1799,49999-0737-14 ",.02)
 ;;49999-0737-14
 ;;9002226.02101,"1799,49999-0737-15 ",.01)
 ;;49999-0737-15
 ;;9002226.02101,"1799,49999-0737-15 ",.02)
 ;;49999-0737-15
 ;;9002226.02101,"1799,49999-0737-30 ",.01)
 ;;49999-0737-30
 ;;9002226.02101,"1799,49999-0737-30 ",.02)
 ;;49999-0737-30
 ;;9002226.02101,"1799,49999-0737-60 ",.01)
 ;;49999-0737-60
 ;;9002226.02101,"1799,49999-0737-60 ",.02)
 ;;49999-0737-60
 ;;9002226.02101,"1799,49999-0737-90 ",.01)
 ;;49999-0737-90
 ;;9002226.02101,"1799,49999-0737-90 ",.02)
 ;;49999-0737-90
 ;;9002226.02101,"1799,49999-0763-30 ",.01)
 ;;49999-0763-30
 ;;9002226.02101,"1799,49999-0763-30 ",.02)
 ;;49999-0763-30
 ;;9002226.02101,"1799,49999-0764-30 ",.01)
 ;;49999-0764-30
 ;;9002226.02101,"1799,49999-0764-30 ",.02)
 ;;49999-0764-30
 ;;9002226.02101,"1799,49999-0778-30 ",.01)
 ;;49999-0778-30
 ;;9002226.02101,"1799,49999-0778-30 ",.02)
 ;;49999-0778-30
 ;;9002226.02101,"1799,49999-0779-30 ",.01)
 ;;49999-0779-30
 ;;9002226.02101,"1799,49999-0779-30 ",.02)
 ;;49999-0779-30
 ;;9002226.02101,"1799,49999-0780-30 ",.01)
 ;;49999-0780-30
 ;;9002226.02101,"1799,49999-0780-30 ",.02)
 ;;49999-0780-30
 ;;9002226.02101,"1799,49999-0828-30 ",.01)
 ;;49999-0828-30
 ;;9002226.02101,"1799,49999-0828-30 ",.02)
 ;;49999-0828-30
 ;;9002226.02101,"1799,49999-0867-00 ",.01)
 ;;49999-0867-00
 ;;9002226.02101,"1799,49999-0867-00 ",.02)
 ;;49999-0867-00
 ;;9002226.02101,"1799,49999-0909-00 ",.01)
 ;;49999-0909-00
 ;;9002226.02101,"1799,49999-0909-00 ",.02)
 ;;49999-0909-00
 ;;9002226.02101,"1799,49999-0909-30 ",.01)
 ;;49999-0909-30
 ;;9002226.02101,"1799,49999-0909-30 ",.02)
 ;;49999-0909-30
 ;;9002226.02101,"1799,49999-0909-60 ",.01)
 ;;49999-0909-60
 ;;9002226.02101,"1799,49999-0909-60 ",.02)
 ;;49999-0909-60
 ;;9002226.02101,"1799,49999-0915-30 ",.01)
 ;;49999-0915-30
 ;;9002226.02101,"1799,49999-0915-30 ",.02)
 ;;49999-0915-30
 ;;9002226.02101,"1799,49999-0915-60 ",.01)
 ;;49999-0915-60
 ;;9002226.02101,"1799,49999-0915-60 ",.02)
 ;;49999-0915-60
 ;;9002226.02101,"1799,49999-0915-90 ",.01)
 ;;49999-0915-90
 ;;9002226.02101,"1799,49999-0915-90 ",.02)
 ;;49999-0915-90
 ;;9002226.02101,"1799,49999-0931-00 ",.01)
 ;;49999-0931-00
 ;;9002226.02101,"1799,49999-0931-00 ",.02)
 ;;49999-0931-00
 ;;9002226.02101,"1799,49999-0931-02 ",.01)
 ;;49999-0931-02
 ;;9002226.02101,"1799,49999-0931-02 ",.02)
 ;;49999-0931-02
 ;;9002226.02101,"1799,49999-0931-15 ",.01)
 ;;49999-0931-15
 ;;9002226.02101,"1799,49999-0931-15 ",.02)
 ;;49999-0931-15
 ;;9002226.02101,"1799,49999-0931-30 ",.01)
 ;;49999-0931-30
 ;;9002226.02101,"1799,49999-0931-30 ",.02)
 ;;49999-0931-30
 ;;9002226.02101,"1799,49999-0931-60 ",.01)
 ;;49999-0931-60
 ;;9002226.02101,"1799,49999-0931-60 ",.02)
 ;;49999-0931-60
 ;;9002226.02101,"1799,49999-0932-00 ",.01)
 ;;49999-0932-00
 ;;9002226.02101,"1799,49999-0932-00 ",.02)
 ;;49999-0932-00
 ;;9002226.02101,"1799,49999-0932-30 ",.01)
 ;;49999-0932-30
 ;;9002226.02101,"1799,49999-0932-30 ",.02)
 ;;49999-0932-30
 ;;9002226.02101,"1799,49999-0932-60 ",.01)
 ;;49999-0932-60
 ;;9002226.02101,"1799,49999-0932-60 ",.02)
 ;;49999-0932-60
 ;;9002226.02101,"1799,50268-0603-11 ",.01)
 ;;50268-0603-11
 ;;9002226.02101,"1799,50268-0603-11 ",.02)
 ;;50268-0603-11
 ;;9002226.02101,"1799,50268-0603-15 ",.01)
 ;;50268-0603-15
 ;;9002226.02101,"1799,50268-0603-15 ",.02)
 ;;50268-0603-15
 ;;9002226.02101,"1799,50268-0604-11 ",.01)
 ;;50268-0604-11
 ;;9002226.02101,"1799,50268-0604-11 ",.02)
 ;;50268-0604-11
 ;;9002226.02101,"1799,50268-0604-15 ",.01)
 ;;50268-0604-15
 ;;9002226.02101,"1799,50268-0604-15 ",.02)
 ;;50268-0604-15
 ;;9002226.02101,"1799,50268-0605-11 ",.01)
 ;;50268-0605-11
 ;;9002226.02101,"1799,50268-0605-11 ",.02)
 ;;50268-0605-11
 ;;9002226.02101,"1799,50268-0605-15 ",.01)
 ;;50268-0605-15
 ;;9002226.02101,"1799,50268-0605-15 ",.02)
 ;;50268-0605-15
 ;;9002226.02101,"1799,50268-0640-11 ",.01)
 ;;50268-0640-11
 ;;9002226.02101,"1799,50268-0640-11 ",.02)
 ;;50268-0640-11
 ;;9002226.02101,"1799,50268-0640-15 ",.01)
 ;;50268-0640-15
 ;;9002226.02101,"1799,50268-0640-15 ",.02)
 ;;50268-0640-15
 ;;9002226.02101,"1799,50268-0641-11 ",.01)
 ;;50268-0641-11
 ;;9002226.02101,"1799,50268-0641-11 ",.02)
 ;;50268-0641-11
 ;;9002226.02101,"1799,50268-0641-15 ",.01)
 ;;50268-0641-15
 ;;9002226.02101,"1799,50268-0641-15 ",.02)
 ;;50268-0641-15
 ;;9002226.02101,"1799,50268-0642-11 ",.01)
 ;;50268-0642-11
 ;;9002226.02101,"1799,50268-0642-11 ",.02)
 ;;50268-0642-11
 ;;9002226.02101,"1799,50268-0642-15 ",.01)
 ;;50268-0642-15
 ;;9002226.02101,"1799,50268-0642-15 ",.02)
 ;;50268-0642-15
 ;;9002226.02101,"1799,50268-0643-11 ",.01)
 ;;50268-0643-11
 ;;9002226.02101,"1799,50268-0643-11 ",.02)
 ;;50268-0643-11
 ;;9002226.02101,"1799,50268-0643-15 ",.01)
 ;;50268-0643-15
 ;;9002226.02101,"1799,50268-0643-15 ",.02)
 ;;50268-0643-15
 ;;9002226.02101,"1799,50383-0959-10 ",.01)
 ;;50383-0959-10
 ;;9002226.02101,"1799,50383-0959-10 ",.02)
 ;;50383-0959-10
 ;;9002226.02101,"1799,50383-0960-10 ",.01)
 ;;50383-0960-10
 ;;9002226.02101,"1799,50383-0960-10 ",.02)
 ;;50383-0960-10
 ;;9002226.02101,"1799,50436-0116-01 ",.01)
 ;;50436-0116-01
 ;;9002226.02101,"1799,50436-0116-01 ",.02)
 ;;50436-0116-01
 ;;9002226.02101,"1799,50436-0193-01 ",.01)
 ;;50436-0193-01
 ;;9002226.02101,"1799,50436-0193-01 ",.02)
 ;;50436-0193-01
 ;;9002226.02101,"1799,50436-1005-01 ",.01)
 ;;50436-1005-01
 ;;9002226.02101,"1799,50436-1005-01 ",.02)
 ;;50436-1005-01
 ;;9002226.02101,"1799,50436-1006-01 ",.01)
 ;;50436-1006-01
 ;;9002226.02101,"1799,50436-1006-01 ",.02)
 ;;50436-1006-01
 ;;9002226.02101,"1799,50436-3026-01 ",.01)
 ;;50436-3026-01
 ;;9002226.02101,"1799,50436-3026-01 ",.02)
 ;;50436-3026-01
 ;;9002226.02101,"1799,50436-3030-01 ",.01)
 ;;50436-3030-01
 ;;9002226.02101,"1799,50436-3030-01 ",.02)
 ;;50436-3030-01
 ;;9002226.02101,"1799,50436-3030-02 ",.01)
 ;;50436-3030-02
 ;;9002226.02101,"1799,50436-3030-02 ",.02)
 ;;50436-3030-02
 ;;9002226.02101,"1799,50436-3031-01 ",.01)
 ;;50436-3031-01
 ;;9002226.02101,"1799,50436-3031-01 ",.02)
 ;;50436-3031-01
 ;;9002226.02101,"1799,50436-3071-01 ",.01)
 ;;50436-3071-01
 ;;9002226.02101,"1799,50436-3071-01 ",.02)
 ;;50436-3071-01
 ;;9002226.02101,"1799,50436-3071-02 ",.01)
 ;;50436-3071-02
 ;;9002226.02101,"1799,50436-3071-02 ",.02)
 ;;50436-3071-02
 ;;9002226.02101,"1799,50436-3071-05 ",.01)
 ;;50436-3071-05
 ;;9002226.02101,"1799,50436-3071-05 ",.02)
 ;;50436-3071-05
 ;;9002226.02101,"1799,50436-3072-01 ",.01)
 ;;50436-3072-01
 ;;9002226.02101,"1799,50436-3072-01 ",.02)
 ;;50436-3072-01
 ;;9002226.02101,"1799,50436-3072-02 ",.01)
 ;;50436-3072-02
 ;;9002226.02101,"1799,50436-3072-02 ",.02)
 ;;50436-3072-02
 ;;9002226.02101,"1799,50436-3072-05 ",.01)
 ;;50436-3072-05
 ;;9002226.02101,"1799,50436-3072-05 ",.02)
 ;;50436-3072-05
 ;;9002226.02101,"1799,50436-3073-01 ",.01)
 ;;50436-3073-01