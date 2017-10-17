BGP73F21 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,00069-3060-75 ",.02)
 ;;00069-3060-75
 ;;9002226.02101,"868,00069-3060-86 ",.01)
 ;;00069-3060-86
 ;;9002226.02101,"868,00069-3060-86 ",.02)
 ;;00069-3060-86
 ;;9002226.02101,"868,00069-3070-30 ",.01)
 ;;00069-3070-30
 ;;9002226.02101,"868,00069-3070-30 ",.02)
 ;;00069-3070-30
 ;;9002226.02101,"868,00069-3070-75 ",.01)
 ;;00069-3070-75
 ;;9002226.02101,"868,00069-3070-75 ",.02)
 ;;00069-3070-75
 ;;9002226.02101,"868,00069-3070-86 ",.01)
 ;;00069-3070-86
 ;;9002226.02101,"868,00069-3070-86 ",.02)
 ;;00069-3070-86
 ;;9002226.02101,"868,00069-3080-30 ",.01)
 ;;00069-3080-30
 ;;9002226.02101,"868,00069-3080-30 ",.02)
 ;;00069-3080-30
 ;;9002226.02101,"868,00069-3110-19 ",.01)
 ;;00069-3110-19
 ;;9002226.02101,"868,00069-3110-19 ",.02)
 ;;00069-3110-19
 ;;9002226.02101,"868,00069-3120-19 ",.01)
 ;;00069-3120-19
 ;;9002226.02101,"868,00069-3120-19 ",.02)
 ;;00069-3120-19
 ;;9002226.02101,"868,00069-3130-19 ",.01)
 ;;00069-3130-19
 ;;9002226.02101,"868,00069-3130-19 ",.02)
 ;;00069-3130-19
 ;;9002226.02101,"868,00069-3140-19 ",.01)
 ;;00069-3140-19
 ;;9002226.02101,"868,00069-3140-19 ",.02)
 ;;00069-3140-19
 ;;9002226.02101,"868,00069-3150-14 ",.01)
 ;;00069-3150-14
 ;;9002226.02101,"868,00069-3150-14 ",.02)
 ;;00069-3150-14
 ;;9002226.02101,"868,00069-3150-83 ",.01)
 ;;00069-3150-83
 ;;9002226.02101,"868,00069-3150-83 ",.02)
 ;;00069-3150-83
 ;;9002226.02101,"868,00069-3150-84 ",.01)
 ;;00069-3150-84
 ;;9002226.02101,"868,00069-3150-84 ",.02)
 ;;00069-3150-84
 ;;9002226.02101,"868,00069-3241-15 ",.01)
 ;;00069-3241-15
 ;;9002226.02101,"868,00069-3241-15 ",.02)
 ;;00069-3241-15
 ;;9002226.02101,"868,00069-3241-22 ",.01)
 ;;00069-3241-22
 ;;9002226.02101,"868,00069-3241-22 ",.02)
 ;;00069-3241-22
 ;;9002226.02101,"868,00069-3342-15 ",.01)
 ;;00069-3342-15
 ;;9002226.02101,"868,00069-3342-15 ",.02)
 ;;00069-3342-15
 ;;9002226.02101,"868,00069-3342-22 ",.01)
 ;;00069-3342-22
 ;;9002226.02101,"868,00069-3342-22 ",.02)
 ;;00069-3342-22
 ;;9002226.02101,"868,00069-4170-34 ",.01)
 ;;00069-4170-34
 ;;9002226.02101,"868,00069-4170-34 ",.02)
 ;;00069-4170-34
 ;;9002226.02101,"868,00069-4395-19 ",.01)
 ;;00069-4395-19
 ;;9002226.02101,"868,00069-4395-19 ",.02)
 ;;00069-4395-19
 ;;9002226.02101,"868,00069-4396-27 ",.01)
 ;;00069-4396-27
 ;;9002226.02101,"868,00069-4396-27 ",.02)
 ;;00069-4396-27
 ;;9002226.02101,"868,00069-4480-10 ",.01)
 ;;00069-4480-10
 ;;9002226.02101,"868,00069-4480-10 ",.02)
 ;;00069-4480-10
 ;;9002226.02101,"868,00069-4482-03 ",.01)
 ;;00069-4482-03
 ;;9002226.02101,"868,00069-4482-03 ",.02)
 ;;00069-4482-03
 ;;9002226.02101,"868,00069-4482-10 ",.01)
 ;;00069-4482-10
 ;;9002226.02101,"868,00069-4482-10 ",.02)
 ;;00069-4482-10
 ;;9002226.02101,"868,00069-4484-01 ",.01)
 ;;00069-4484-01
 ;;9002226.02101,"868,00069-4484-01 ",.02)
 ;;00069-4484-01
 ;;9002226.02101,"868,00074-2586-11 ",.01)
 ;;00074-2586-11
 ;;9002226.02101,"868,00074-2586-11 ",.02)
 ;;00074-2586-11
 ;;9002226.02101,"868,00074-2586-60 ",.01)
 ;;00074-2586-60
 ;;9002226.02101,"868,00074-2586-60 ",.02)
 ;;00074-2586-60
 ;;9002226.02101,"868,00074-2589-13 ",.01)
 ;;00074-2589-13
 ;;9002226.02101,"868,00074-2589-13 ",.02)
 ;;00074-2589-13
 ;;9002226.02101,"868,00074-2589-53 ",.01)
 ;;00074-2589-53
 ;;9002226.02101,"868,00074-2589-53 ",.02)
 ;;00074-2589-53
 ;;9002226.02101,"868,00074-3163-13 ",.01)
 ;;00074-3163-13
 ;;9002226.02101,"868,00074-3163-13 ",.02)
 ;;00074-3163-13
 ;;9002226.02101,"868,00074-3163-50 ",.01)
 ;;00074-3163-50
 ;;9002226.02101,"868,00074-3163-50 ",.02)
 ;;00074-3163-50
 ;;9002226.02101,"868,00074-3165-11 ",.01)
 ;;00074-3165-11
 ;;9002226.02101,"868,00074-3165-11 ",.02)
 ;;00074-3165-11
 ;;9002226.02101,"868,00074-3165-14 ",.01)
 ;;00074-3165-14
 ;;9002226.02101,"868,00074-3165-14 ",.02)
 ;;00074-3165-14
 ;;9002226.02101,"868,00074-3165-41 ",.01)
 ;;00074-3165-41
 ;;9002226.02101,"868,00074-3165-41 ",.02)
 ;;00074-3165-41
 ;;9002226.02101,"868,00074-3165-60 ",.01)
 ;;00074-3165-60
 ;;9002226.02101,"868,00074-3165-60 ",.02)
 ;;00074-3165-60
 ;;9002226.02101,"868,00074-3188-13 ",.01)
 ;;00074-3188-13
 ;;9002226.02101,"868,00074-3188-13 ",.02)
 ;;00074-3188-13
 ;;9002226.02101,"868,00074-3188-50 ",.01)
 ;;00074-3188-50
 ;;9002226.02101,"868,00074-3188-50 ",.02)
 ;;00074-3188-50
 ;;9002226.02101,"868,00074-3368-11 ",.01)
 ;;00074-3368-11
 ;;9002226.02101,"868,00074-3368-11 ",.02)
 ;;00074-3368-11
 ;;9002226.02101,"868,00074-3368-60 ",.01)
 ;;00074-3368-60
 ;;9002226.02101,"868,00074-3368-60 ",.02)
 ;;00074-3368-60
 ;;9002226.02101,"868,00074-3389-13 ",.01)
 ;;00074-3389-13
 ;;9002226.02101,"868,00074-3389-13 ",.02)
 ;;00074-3389-13
 ;;9002226.02101,"868,00074-3747-16 ",.01)
 ;;00074-3747-16
 ;;9002226.02101,"868,00074-3747-16 ",.02)
 ;;00074-3747-16
 ;;9002226.02101,"868,00074-3748-16 ",.01)
 ;;00074-3748-16
 ;;9002226.02101,"868,00074-3748-16 ",.02)
 ;;00074-3748-16
 ;;9002226.02101,"868,00074-3769-10 ",.01)
 ;;00074-3769-10
 ;;9002226.02101,"868,00074-3769-10 ",.02)
 ;;00074-3769-10
 ;;9002226.02101,"868,00074-3769-60 ",.01)
 ;;00074-3769-60
 ;;9002226.02101,"868,00074-3769-60 ",.02)
 ;;00074-3769-60
 ;;9002226.02101,"868,00074-3771-13 ",.01)
 ;;00074-3771-13
 ;;9002226.02101,"868,00074-3771-13 ",.02)
 ;;00074-3771-13
 ;;9002226.02101,"868,00074-3771-60 ",.01)
 ;;00074-3771-60
 ;;9002226.02101,"868,00074-3771-60 ",.02)
 ;;00074-3771-60
 ;;9002226.02101,"868,00074-5729-13 ",.01)
 ;;00074-5729-13
 ;;9002226.02101,"868,00074-5729-13 ",.02)
 ;;00074-5729-13
 ;;9002226.02101,"868,00074-5729-53 ",.01)
 ;;00074-5729-53
 ;;9002226.02101,"868,00074-5729-53 ",.02)
 ;;00074-5729-53
 ;;9002226.02101,"868,00074-6151-13 ",.01)
 ;;00074-6151-13
 ;;9002226.02101,"868,00074-6151-13 ",.02)
 ;;00074-6151-13
 ;;9002226.02101,"868,00074-6151-60 ",.01)
 ;;00074-6151-60
 ;;9002226.02101,"868,00074-6151-60 ",.02)
 ;;00074-6151-60
 ;;9002226.02101,"868,00074-6227-13 ",.01)
 ;;00074-6227-13
 ;;9002226.02101,"868,00074-6227-13 ",.02)
 ;;00074-6227-13
 ;;9002226.02101,"868,00074-6290-60 ",.01)
 ;;00074-6290-60
 ;;9002226.02101,"868,00074-6290-60 ",.02)
 ;;00074-6290-60
 ;;9002226.02101,"868,00074-6301-13 ",.01)
 ;;00074-6301-13
 ;;9002226.02101,"868,00074-6301-13 ",.02)
 ;;00074-6301-13
 ;;9002226.02101,"868,00074-6301-53 ",.01)
 ;;00074-6301-53
 ;;9002226.02101,"868,00074-6301-53 ",.02)
 ;;00074-6301-53
 ;;9002226.02101,"868,00074-6302-13 ",.01)
 ;;00074-6302-13
 ;;9002226.02101,"868,00074-6302-13 ",.02)
 ;;00074-6302-13
 ;;9002226.02101,"868,00074-6302-53 ",.01)
 ;;00074-6302-53
 ;;9002226.02101,"868,00074-6302-53 ",.02)
 ;;00074-6302-53
 ;;9002226.02101,"868,00074-6303-50 ",.01)
 ;;00074-6303-50
 ;;9002226.02101,"868,00074-6303-50 ",.02)
 ;;00074-6303-50
 ;;9002226.02101,"868,00074-6304-13 ",.01)
 ;;00074-6304-13
 ;;9002226.02101,"868,00074-6304-13 ",.02)
 ;;00074-6304-13
 ;;9002226.02101,"868,00074-6304-53 ",.01)
 ;;00074-6304-53
 ;;9002226.02101,"868,00074-6304-53 ",.02)
 ;;00074-6304-53
 ;;9002226.02101,"868,00074-6305-13 ",.01)
 ;;00074-6305-13
 ;;9002226.02101,"868,00074-6305-13 ",.02)
 ;;00074-6305-13
 ;;9002226.02101,"868,00074-6305-53 ",.01)
 ;;00074-6305-53
 ;;9002226.02101,"868,00074-6305-53 ",.02)
 ;;00074-6305-53
 ;;9002226.02101,"868,00074-6306-13 ",.01)
 ;;00074-6306-13
 ;;9002226.02101,"868,00074-6306-13 ",.02)
 ;;00074-6306-13
 ;;9002226.02101,"868,00074-6316-13 ",.01)
 ;;00074-6316-13
 ;;9002226.02101,"868,00074-6316-13 ",.02)
 ;;00074-6316-13
 ;;9002226.02101,"868,00074-6320-13 ",.01)
 ;;00074-6320-13
 ;;9002226.02101,"868,00074-6320-13 ",.02)
 ;;00074-6320-13
 ;;9002226.02101,"868,00074-6320-53 ",.01)
 ;;00074-6320-53
 ;;9002226.02101,"868,00074-6320-53 ",.02)
 ;;00074-6320-53
 ;;9002226.02101,"868,00074-6321-13 ",.01)
 ;;00074-6321-13
 ;;9002226.02101,"868,00074-6321-13 ",.02)
 ;;00074-6321-13
 ;;9002226.02101,"868,00074-6326-13 ",.01)
 ;;00074-6326-13
 ;;9002226.02101,"868,00074-6326-13 ",.02)
 ;;00074-6326-13
 ;;9002226.02101,"868,00074-6326-53 ",.01)
 ;;00074-6326-53
 ;;9002226.02101,"868,00074-6326-53 ",.02)
 ;;00074-6326-53
 ;;9002226.02101,"868,00074-6346-20 ",.01)
 ;;00074-6346-20
 ;;9002226.02101,"868,00074-6346-20 ",.02)
 ;;00074-6346-20
 ;;9002226.02101,"868,00074-6346-53 ",.01)
 ;;00074-6346-53
 ;;9002226.02101,"868,00074-6346-53 ",.02)
 ;;00074-6346-53
 ;;9002226.02101,"868,00074-6369-02 ",.01)
 ;;00074-6369-02
 ;;9002226.02101,"868,00074-6369-02 ",.02)
 ;;00074-6369-02
 ;;9002226.02101,"868,00074-6369-10 ",.01)
 ;;00074-6369-10
 ;;9002226.02101,"868,00074-6369-10 ",.02)
 ;;00074-6369-10
 ;;9002226.02101,"868,00074-6373-13 ",.01)
 ;;00074-6373-13
 ;;9002226.02101,"868,00074-6373-13 ",.02)
 ;;00074-6373-13
 ;;9002226.02101,"868,00074-6476-44 ",.01)
 ;;00074-6476-44
 ;;9002226.02101,"868,00074-6476-44 ",.02)
 ;;00074-6476-44
 ;;9002226.02101,"868,00074-7156-13 ",.01)
 ;;00074-7156-13
 ;;9002226.02101,"868,00074-7156-13 ",.02)
 ;;00074-7156-13
 ;;9002226.02101,"868,00074-7156-43 ",.01)
 ;;00074-7156-43
 ;;9002226.02101,"868,00074-7156-43 ",.02)
 ;;00074-7156-43
 ;;9002226.02101,"868,00074-7156-53 ",.01)
 ;;00074-7156-53
 ;;9002226.02101,"868,00074-7156-53 ",.02)
 ;;00074-7156-53
 ;;9002226.02101,"868,00074-8030-13 ",.01)
 ;;00074-8030-13
 ;;9002226.02101,"868,00074-8030-13 ",.02)
 ;;00074-8030-13
 ;;9002226.02101,"868,00074-8030-43 ",.01)
 ;;00074-8030-43
 ;;9002226.02101,"868,00074-8030-43 ",.02)
 ;;00074-8030-43
 ;;9002226.02101,"868,00074-8030-53 ",.01)
 ;;00074-8030-53
 ;;9002226.02101,"868,00074-8030-53 ",.02)
 ;;00074-8030-53
 ;;9002226.02101,"868,00074-8030-55 ",.01)
 ;;00074-8030-55
 ;;9002226.02101,"868,00074-8030-55 ",.02)
 ;;00074-8030-55
 ;;9002226.02101,"868,00085-1731-01 ",.01)
 ;;00085-1731-01
 ;;9002226.02101,"868,00085-1731-01 ",.02)
 ;;00085-1731-01
 ;;9002226.02101,"868,00085-1733-01 ",.01)
 ;;00085-1733-01
 ;;9002226.02101,"868,00085-1733-01 ",.02)
 ;;00085-1733-01
 ;;9002226.02101,"868,00085-1733-02 ",.01)
 ;;00085-1733-02
 ;;9002226.02101,"868,00085-1733-02 ",.02)
 ;;00085-1733-02
 ;;9002226.02101,"868,00085-1733-03 ",.01)
 ;;00085-1733-03
 ;;9002226.02101,"868,00085-1733-03 ",.02)
 ;;00085-1733-03
 ;;9002226.02101,"868,00085-1733-05 ",.01)
 ;;00085-1733-05
 ;;9002226.02101,"868,00085-1733-05 ",.02)
 ;;00085-1733-05
 ;;9002226.02101,"868,00085-1737-01 ",.01)
 ;;00085-1737-01
 ;;9002226.02101,"868,00085-1737-01 ",.02)
 ;;00085-1737-01
 ;;9002226.02101,"868,00085-1754-01 ",.01)
 ;;00085-1754-01
 ;;9002226.02101,"868,00085-1754-01 ",.02)
 ;;00085-1754-01
 ;;9002226.02101,"868,00085-1754-02 ",.01)
 ;;00085-1754-02
 ;;9002226.02101,"868,00085-1754-02 ",.02)
 ;;00085-1754-02
 ;;9002226.02101,"868,00085-1755-02 ",.01)
 ;;00085-1755-02
 ;;9002226.02101,"868,00085-1755-02 ",.02)
 ;;00085-1755-02
 ;;9002226.02101,"868,00085-1756-01 ",.01)
 ;;00085-1756-01
 ;;9002226.02101,"868,00085-1756-01 ",.02)
 ;;00085-1756-01
 ;;9002226.02101,"868,00085-1756-02 ",.01)
 ;;00085-1756-02
 ;;9002226.02101,"868,00085-1756-02 ",.02)
 ;;00085-1756-02
 ;;9002226.02101,"868,00085-1758-01 ",.01)
 ;;00085-1758-01
 ;;9002226.02101,"868,00085-1758-01 ",.02)
 ;;00085-1758-01
 ;;9002226.02101,"868,00085-1758-02 ",.01)
 ;;00085-1758-02
 ;;9002226.02101,"868,00085-1758-02 ",.02)
 ;;00085-1758-02
 ;;9002226.02101,"868,00085-1759-01 ",.01)
 ;;00085-1759-01
 ;;9002226.02101,"868,00085-1759-01 ",.02)
 ;;00085-1759-01
 ;;9002226.02101,"868,00085-1763-03 ",.01)
 ;;00085-1763-03
 ;;9002226.02101,"868,00085-1763-03 ",.02)
 ;;00085-1763-03
 ;;9002226.02101,"868,00085-1773-01 ",.01)
 ;;00085-1773-01
 ;;9002226.02101,"868,00085-1773-01 ",.02)
 ;;00085-1773-01
 ;;9002226.02101,"868,00085-1775-01 ",.01)
 ;;00085-1775-01