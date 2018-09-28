BGP82A17 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1799,33261-0173-10 ",.02)
 ;;33261-0173-10
 ;;9002226.02101,"1799,33261-0173-12 ",.01)
 ;;33261-0173-12
 ;;9002226.02101,"1799,33261-0173-12 ",.02)
 ;;33261-0173-12
 ;;9002226.02101,"1799,33261-0173-14 ",.01)
 ;;33261-0173-14
 ;;9002226.02101,"1799,33261-0173-14 ",.02)
 ;;33261-0173-14
 ;;9002226.02101,"1799,33261-0173-15 ",.01)
 ;;33261-0173-15
 ;;9002226.02101,"1799,33261-0173-15 ",.02)
 ;;33261-0173-15
 ;;9002226.02101,"1799,33261-0173-20 ",.01)
 ;;33261-0173-20
 ;;9002226.02101,"1799,33261-0173-20 ",.02)
 ;;33261-0173-20
 ;;9002226.02101,"1799,33261-0173-21 ",.01)
 ;;33261-0173-21
 ;;9002226.02101,"1799,33261-0173-21 ",.02)
 ;;33261-0173-21
 ;;9002226.02101,"1799,33261-0173-28 ",.01)
 ;;33261-0173-28
 ;;9002226.02101,"1799,33261-0173-28 ",.02)
 ;;33261-0173-28
 ;;9002226.02101,"1799,33261-0173-30 ",.01)
 ;;33261-0173-30
 ;;9002226.02101,"1799,33261-0173-30 ",.02)
 ;;33261-0173-30
 ;;9002226.02101,"1799,33261-0173-42 ",.01)
 ;;33261-0173-42
 ;;9002226.02101,"1799,33261-0173-42 ",.02)
 ;;33261-0173-42
 ;;9002226.02101,"1799,33261-0173-60 ",.01)
 ;;33261-0173-60
 ;;9002226.02101,"1799,33261-0173-60 ",.02)
 ;;33261-0173-60
 ;;9002226.02101,"1799,33261-0173-90 ",.01)
 ;;33261-0173-90
 ;;9002226.02101,"1799,33261-0173-90 ",.02)
 ;;33261-0173-90
 ;;9002226.02101,"1799,33261-0348-02 ",.01)
 ;;33261-0348-02
 ;;9002226.02101,"1799,33261-0348-02 ",.02)
 ;;33261-0348-02
 ;;9002226.02101,"1799,33261-0348-07 ",.01)
 ;;33261-0348-07
 ;;9002226.02101,"1799,33261-0348-07 ",.02)
 ;;33261-0348-07
 ;;9002226.02101,"1799,33261-0348-14 ",.01)
 ;;33261-0348-14
 ;;9002226.02101,"1799,33261-0348-14 ",.02)
 ;;33261-0348-14
 ;;9002226.02101,"1799,33261-0348-20 ",.01)
 ;;33261-0348-20
 ;;9002226.02101,"1799,33261-0348-20 ",.02)
 ;;33261-0348-20
 ;;9002226.02101,"1799,33261-0348-28 ",.01)
 ;;33261-0348-28
 ;;9002226.02101,"1799,33261-0348-28 ",.02)
 ;;33261-0348-28
 ;;9002226.02101,"1799,33261-0348-30 ",.01)
 ;;33261-0348-30
 ;;9002226.02101,"1799,33261-0348-30 ",.02)
 ;;33261-0348-30
 ;;9002226.02101,"1799,33261-0348-60 ",.01)
 ;;33261-0348-60
 ;;9002226.02101,"1799,33261-0348-60 ",.02)
 ;;33261-0348-60
 ;;9002226.02101,"1799,33261-0348-90 ",.01)
 ;;33261-0348-90
 ;;9002226.02101,"1799,33261-0348-90 ",.02)
 ;;33261-0348-90
 ;;9002226.02101,"1799,33261-0358-00 ",.01)
 ;;33261-0358-00
 ;;9002226.02101,"1799,33261-0358-00 ",.02)
 ;;33261-0358-00
 ;;9002226.02101,"1799,33261-0358-02 ",.01)
 ;;33261-0358-02
 ;;9002226.02101,"1799,33261-0358-02 ",.02)
 ;;33261-0358-02
 ;;9002226.02101,"1799,33261-0358-03 ",.01)
 ;;33261-0358-03
 ;;9002226.02101,"1799,33261-0358-03 ",.02)
 ;;33261-0358-03
 ;;9002226.02101,"1799,33261-0358-07 ",.01)
 ;;33261-0358-07
 ;;9002226.02101,"1799,33261-0358-07 ",.02)
 ;;33261-0358-07
 ;;9002226.02101,"1799,33261-0358-14 ",.01)
 ;;33261-0358-14
 ;;9002226.02101,"1799,33261-0358-14 ",.02)
 ;;33261-0358-14
 ;;9002226.02101,"1799,33261-0358-20 ",.01)
 ;;33261-0358-20
 ;;9002226.02101,"1799,33261-0358-20 ",.02)
 ;;33261-0358-20
 ;;9002226.02101,"1799,33261-0358-21 ",.01)
 ;;33261-0358-21
 ;;9002226.02101,"1799,33261-0358-21 ",.02)
 ;;33261-0358-21
 ;;9002226.02101,"1799,33261-0358-28 ",.01)
 ;;33261-0358-28
 ;;9002226.02101,"1799,33261-0358-28 ",.02)
 ;;33261-0358-28
 ;;9002226.02101,"1799,33261-0358-30 ",.01)
 ;;33261-0358-30
 ;;9002226.02101,"1799,33261-0358-30 ",.02)
 ;;33261-0358-30
 ;;9002226.02101,"1799,33261-0358-60 ",.01)
 ;;33261-0358-60
 ;;9002226.02101,"1799,33261-0358-60 ",.02)
 ;;33261-0358-60
 ;;9002226.02101,"1799,33261-0358-90 ",.01)
 ;;33261-0358-90
 ;;9002226.02101,"1799,33261-0358-90 ",.02)
 ;;33261-0358-90
 ;;9002226.02101,"1799,33261-0363-30 ",.01)
 ;;33261-0363-30
 ;;9002226.02101,"1799,33261-0363-30 ",.02)
 ;;33261-0363-30
 ;;9002226.02101,"1799,33261-0363-60 ",.01)
 ;;33261-0363-60
 ;;9002226.02101,"1799,33261-0363-60 ",.02)
 ;;33261-0363-60
 ;;9002226.02101,"1799,33261-0363-90 ",.01)
 ;;33261-0363-90
 ;;9002226.02101,"1799,33261-0363-90 ",.02)
 ;;33261-0363-90
 ;;9002226.02101,"1799,33261-0454-02 ",.01)
 ;;33261-0454-02
 ;;9002226.02101,"1799,33261-0454-02 ",.02)
 ;;33261-0454-02
 ;;9002226.02101,"1799,33261-0454-14 ",.01)
 ;;33261-0454-14
 ;;9002226.02101,"1799,33261-0454-14 ",.02)
 ;;33261-0454-14
 ;;9002226.02101,"1799,33261-0454-30 ",.01)
 ;;33261-0454-30
 ;;9002226.02101,"1799,33261-0454-30 ",.02)
 ;;33261-0454-30
 ;;9002226.02101,"1799,33261-0454-60 ",.01)
 ;;33261-0454-60
 ;;9002226.02101,"1799,33261-0454-60 ",.02)
 ;;33261-0454-60
 ;;9002226.02101,"1799,33261-0454-90 ",.01)
 ;;33261-0454-90
 ;;9002226.02101,"1799,33261-0454-90 ",.02)
 ;;33261-0454-90
 ;;9002226.02101,"1799,33261-0459-02 ",.01)
 ;;33261-0459-02
 ;;9002226.02101,"1799,33261-0459-02 ",.02)
 ;;33261-0459-02
 ;;9002226.02101,"1799,33261-0459-10 ",.01)
 ;;33261-0459-10
 ;;9002226.02101,"1799,33261-0459-10 ",.02)
 ;;33261-0459-10
 ;;9002226.02101,"1799,33261-0459-12 ",.01)
 ;;33261-0459-12
 ;;9002226.02101,"1799,33261-0459-12 ",.02)
 ;;33261-0459-12
 ;;9002226.02101,"1799,33261-0459-20 ",.01)
 ;;33261-0459-20
 ;;9002226.02101,"1799,33261-0459-20 ",.02)
 ;;33261-0459-20
 ;;9002226.02101,"1799,33261-0459-30 ",.01)
 ;;33261-0459-30
 ;;9002226.02101,"1799,33261-0459-30 ",.02)
 ;;33261-0459-30
 ;;9002226.02101,"1799,33261-0459-60 ",.01)
 ;;33261-0459-60
 ;;9002226.02101,"1799,33261-0459-60 ",.02)
 ;;33261-0459-60
 ;;9002226.02101,"1799,33261-0459-90 ",.01)
 ;;33261-0459-90
 ;;9002226.02101,"1799,33261-0459-90 ",.02)
 ;;33261-0459-90
 ;;9002226.02101,"1799,33261-0474-30 ",.01)
 ;;33261-0474-30
 ;;9002226.02101,"1799,33261-0474-30 ",.02)
 ;;33261-0474-30
 ;;9002226.02101,"1799,33261-0474-60 ",.01)
 ;;33261-0474-60
 ;;9002226.02101,"1799,33261-0474-60 ",.02)
 ;;33261-0474-60
 ;;9002226.02101,"1799,33261-0474-90 ",.01)
 ;;33261-0474-90
 ;;9002226.02101,"1799,33261-0474-90 ",.02)
 ;;33261-0474-90
 ;;9002226.02101,"1799,33261-0482-30 ",.01)
 ;;33261-0482-30
 ;;9002226.02101,"1799,33261-0482-30 ",.02)
 ;;33261-0482-30
 ;;9002226.02101,"1799,33261-0482-60 ",.01)
 ;;33261-0482-60
 ;;9002226.02101,"1799,33261-0482-60 ",.02)
 ;;33261-0482-60
 ;;9002226.02101,"1799,33261-0482-90 ",.01)
 ;;33261-0482-90
 ;;9002226.02101,"1799,33261-0482-90 ",.02)
 ;;33261-0482-90
 ;;9002226.02101,"1799,33261-0486-30 ",.01)
 ;;33261-0486-30
 ;;9002226.02101,"1799,33261-0486-30 ",.02)
 ;;33261-0486-30
 ;;9002226.02101,"1799,33261-0486-60 ",.01)
 ;;33261-0486-60
 ;;9002226.02101,"1799,33261-0486-60 ",.02)
 ;;33261-0486-60
 ;;9002226.02101,"1799,33261-0486-90 ",.01)
 ;;33261-0486-90
 ;;9002226.02101,"1799,33261-0486-90 ",.02)
 ;;33261-0486-90
 ;;9002226.02101,"1799,33261-0532-02 ",.01)
 ;;33261-0532-02
 ;;9002226.02101,"1799,33261-0532-02 ",.02)
 ;;33261-0532-02
 ;;9002226.02101,"1799,33261-0532-30 ",.01)
 ;;33261-0532-30
 ;;9002226.02101,"1799,33261-0532-30 ",.02)
 ;;33261-0532-30
 ;;9002226.02101,"1799,33261-0532-60 ",.01)
 ;;33261-0532-60
 ;;9002226.02101,"1799,33261-0532-60 ",.02)
 ;;33261-0532-60
 ;;9002226.02101,"1799,33261-0532-90 ",.01)
 ;;33261-0532-90
 ;;9002226.02101,"1799,33261-0532-90 ",.02)
 ;;33261-0532-90
 ;;9002226.02101,"1799,33261-0620-30 ",.01)
 ;;33261-0620-30
 ;;9002226.02101,"1799,33261-0620-30 ",.02)
 ;;33261-0620-30
 ;;9002226.02101,"1799,33261-0620-60 ",.01)
 ;;33261-0620-60
 ;;9002226.02101,"1799,33261-0620-60 ",.02)
 ;;33261-0620-60
 ;;9002226.02101,"1799,33261-0620-90 ",.01)
 ;;33261-0620-90
 ;;9002226.02101,"1799,33261-0620-90 ",.02)
 ;;33261-0620-90
 ;;9002226.02101,"1799,33261-0626-30 ",.01)
 ;;33261-0626-30
 ;;9002226.02101,"1799,33261-0626-30 ",.02)
 ;;33261-0626-30
 ;;9002226.02101,"1799,33261-0626-60 ",.01)
 ;;33261-0626-60
 ;;9002226.02101,"1799,33261-0626-60 ",.02)
 ;;33261-0626-60
 ;;9002226.02101,"1799,33261-0626-90 ",.01)
 ;;33261-0626-90
 ;;9002226.02101,"1799,33261-0626-90 ",.02)
 ;;33261-0626-90
 ;;9002226.02101,"1799,33261-0652-07 ",.01)
 ;;33261-0652-07
 ;;9002226.02101,"1799,33261-0652-07 ",.02)
 ;;33261-0652-07
 ;;9002226.02101,"1799,33261-0652-14 ",.01)
 ;;33261-0652-14
 ;;9002226.02101,"1799,33261-0652-14 ",.02)
 ;;33261-0652-14
 ;;9002226.02101,"1799,33261-0652-30 ",.01)
 ;;33261-0652-30
 ;;9002226.02101,"1799,33261-0652-30 ",.02)
 ;;33261-0652-30
 ;;9002226.02101,"1799,33261-0652-60 ",.01)
 ;;33261-0652-60
 ;;9002226.02101,"1799,33261-0652-60 ",.02)
 ;;33261-0652-60
 ;;9002226.02101,"1799,33261-0682-02 ",.01)
 ;;33261-0682-02
 ;;9002226.02101,"1799,33261-0682-02 ",.02)
 ;;33261-0682-02
 ;;9002226.02101,"1799,33261-0682-07 ",.01)
 ;;33261-0682-07
 ;;9002226.02101,"1799,33261-0682-07 ",.02)
 ;;33261-0682-07
 ;;9002226.02101,"1799,33261-0682-14 ",.01)
 ;;33261-0682-14
 ;;9002226.02101,"1799,33261-0682-14 ",.02)
 ;;33261-0682-14
 ;;9002226.02101,"1799,33261-0682-20 ",.01)
 ;;33261-0682-20
 ;;9002226.02101,"1799,33261-0682-20 ",.02)
 ;;33261-0682-20
 ;;9002226.02101,"1799,33261-0682-21 ",.01)
 ;;33261-0682-21
 ;;9002226.02101,"1799,33261-0682-21 ",.02)
 ;;33261-0682-21
 ;;9002226.02101,"1799,33261-0682-28 ",.01)
 ;;33261-0682-28
 ;;9002226.02101,"1799,33261-0682-28 ",.02)
 ;;33261-0682-28
 ;;9002226.02101,"1799,33261-0682-30 ",.01)
 ;;33261-0682-30
 ;;9002226.02101,"1799,33261-0682-30 ",.02)
 ;;33261-0682-30
 ;;9002226.02101,"1799,33261-0682-60 ",.01)
 ;;33261-0682-60
 ;;9002226.02101,"1799,33261-0682-60 ",.02)
 ;;33261-0682-60
 ;;9002226.02101,"1799,33261-0682-90 ",.01)
 ;;33261-0682-90
 ;;9002226.02101,"1799,33261-0682-90 ",.02)
 ;;33261-0682-90
 ;;9002226.02101,"1799,33261-0692-02 ",.01)
 ;;33261-0692-02
 ;;9002226.02101,"1799,33261-0692-02 ",.02)
 ;;33261-0692-02
 ;;9002226.02101,"1799,33261-0692-30 ",.01)
 ;;33261-0692-30
 ;;9002226.02101,"1799,33261-0692-30 ",.02)
 ;;33261-0692-30
 ;;9002226.02101,"1799,33261-0692-60 ",.01)
 ;;33261-0692-60
 ;;9002226.02101,"1799,33261-0692-60 ",.02)
 ;;33261-0692-60
 ;;9002226.02101,"1799,33261-0692-90 ",.01)
 ;;33261-0692-90
 ;;9002226.02101,"1799,33261-0692-90 ",.02)
 ;;33261-0692-90
 ;;9002226.02101,"1799,33261-0774-30 ",.01)
 ;;33261-0774-30
 ;;9002226.02101,"1799,33261-0774-30 ",.02)
 ;;33261-0774-30
 ;;9002226.02101,"1799,33261-0774-60 ",.01)
 ;;33261-0774-60
 ;;9002226.02101,"1799,33261-0774-60 ",.02)
 ;;33261-0774-60
 ;;9002226.02101,"1799,33261-0774-90 ",.01)
 ;;33261-0774-90
 ;;9002226.02101,"1799,33261-0774-90 ",.02)
 ;;33261-0774-90
 ;;9002226.02101,"1799,33261-0802-30 ",.01)
 ;;33261-0802-30
 ;;9002226.02101,"1799,33261-0802-30 ",.02)
 ;;33261-0802-30
 ;;9002226.02101,"1799,33261-0802-60 ",.01)
 ;;33261-0802-60
 ;;9002226.02101,"1799,33261-0802-60 ",.02)
 ;;33261-0802-60
 ;;9002226.02101,"1799,33261-0802-90 ",.01)
 ;;33261-0802-90
 ;;9002226.02101,"1799,33261-0802-90 ",.02)
 ;;33261-0802-90
 ;;9002226.02101,"1799,33261-0804-00 ",.01)
 ;;33261-0804-00
 ;;9002226.02101,"1799,33261-0804-00 ",.02)
 ;;33261-0804-00
 ;;9002226.02101,"1799,33261-0804-30 ",.01)
 ;;33261-0804-30
 ;;9002226.02101,"1799,33261-0804-30 ",.02)
 ;;33261-0804-30
 ;;9002226.02101,"1799,33261-0804-60 ",.01)
 ;;33261-0804-60
 ;;9002226.02101,"1799,33261-0804-60 ",.02)
 ;;33261-0804-60
 ;;9002226.02101,"1799,33261-0804-90 ",.01)
 ;;33261-0804-90
 ;;9002226.02101,"1799,33261-0804-90 ",.02)
 ;;33261-0804-90
 ;;9002226.02101,"1799,33261-0922-00 ",.01)
 ;;33261-0922-00
 ;;9002226.02101,"1799,33261-0922-00 ",.02)
 ;;33261-0922-00
 ;;9002226.02101,"1799,33261-0922-30 ",.01)
 ;;33261-0922-30
 ;;9002226.02101,"1799,33261-0922-30 ",.02)
 ;;33261-0922-30
 ;;9002226.02101,"1799,33261-0922-60 ",.01)
 ;;33261-0922-60
 ;;9002226.02101,"1799,33261-0922-60 ",.02)
 ;;33261-0922-60
 ;;9002226.02101,"1799,33261-0922-90 ",.01)
 ;;33261-0922-90
 ;;9002226.02101,"1799,33261-0922-90 ",.02)
 ;;33261-0922-90