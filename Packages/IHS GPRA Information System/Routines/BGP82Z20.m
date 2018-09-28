BGP82Z20 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"619,00115-1561-01 ",.02)
 ;;00115-1561-01
 ;;9002226.02101,"619,00115-1562-01 ",.01)
 ;;00115-1562-01
 ;;9002226.02101,"619,00115-1562-01 ",.02)
 ;;00115-1562-01
 ;;9002226.02101,"619,00121-0504-04 ",.01)
 ;;00121-0504-04
 ;;9002226.02101,"619,00121-0504-04 ",.02)
 ;;00121-0504-04
 ;;9002226.02101,"619,00121-0504-05 ",.01)
 ;;00121-0504-05
 ;;9002226.02101,"619,00121-0504-05 ",.02)
 ;;00121-0504-05
 ;;9002226.02101,"619,00121-0504-10 ",.01)
 ;;00121-0504-10
 ;;9002226.02101,"619,00121-0504-10 ",.02)
 ;;00121-0504-10
 ;;9002226.02101,"619,00121-0504-12 ",.01)
 ;;00121-0504-12
 ;;9002226.02101,"619,00121-0504-12 ",.02)
 ;;00121-0504-12
 ;;9002226.02101,"619,00121-0504-15 ",.01)
 ;;00121-0504-15
 ;;9002226.02101,"619,00121-0504-15 ",.02)
 ;;00121-0504-15
 ;;9002226.02101,"619,00121-0504-16 ",.01)
 ;;00121-0504-16
 ;;9002226.02101,"619,00121-0504-16 ",.02)
 ;;00121-0504-16
 ;;9002226.02101,"619,00121-0547-05 ",.01)
 ;;00121-0547-05
 ;;9002226.02101,"619,00121-0547-05 ",.02)
 ;;00121-0547-05
 ;;9002226.02101,"619,00121-0772-04 ",.01)
 ;;00121-0772-04
 ;;9002226.02101,"619,00121-0772-04 ",.02)
 ;;00121-0772-04
 ;;9002226.02101,"619,00121-0772-16 ",.01)
 ;;00121-0772-16
 ;;9002226.02101,"619,00121-0772-16 ",.02)
 ;;00121-0772-16
 ;;9002226.02101,"619,00121-1544-10 ",.01)
 ;;00121-1544-10
 ;;9002226.02101,"619,00121-1544-10 ",.02)
 ;;00121-1544-10
 ;;9002226.02101,"619,00121-1544-40 ",.01)
 ;;00121-1544-40
 ;;9002226.02101,"619,00121-1544-40 ",.02)
 ;;00121-1544-40
 ;;9002226.02101,"619,00121-4771-07 ",.01)
 ;;00121-4771-07
 ;;9002226.02101,"619,00121-4771-07 ",.02)
 ;;00121-4771-07
 ;;9002226.02101,"619,00121-4771-15 ",.01)
 ;;00121-4771-15
 ;;9002226.02101,"619,00121-4771-15 ",.02)
 ;;00121-4771-15
 ;;9002226.02101,"619,00121-4772-05 ",.01)
 ;;00121-4772-05
 ;;9002226.02101,"619,00121-4772-05 ",.02)
 ;;00121-4772-05
 ;;9002226.02101,"619,00121-4772-10 ",.01)
 ;;00121-4772-10
 ;;9002226.02101,"619,00121-4772-10 ",.02)
 ;;00121-4772-10
 ;;9002226.02101,"619,00121-4772-15 ",.01)
 ;;00121-4772-15
 ;;9002226.02101,"619,00121-4772-15 ",.02)
 ;;00121-4772-15
 ;;9002226.02101,"619,00121-4811-05 ",.01)
 ;;00121-4811-05
 ;;9002226.02101,"619,00121-4811-05 ",.02)
 ;;00121-4811-05
 ;;9002226.02101,"619,00121-4811-40 ",.01)
 ;;00121-4811-40
 ;;9002226.02101,"619,00121-4811-40 ",.02)
 ;;00121-4811-40
 ;;9002226.02101,"619,00121-4839-05 ",.01)
 ;;00121-4839-05
 ;;9002226.02101,"619,00121-4839-05 ",.02)
 ;;00121-4839-05
 ;;9002226.02101,"619,00121-4839-40 ",.01)
 ;;00121-4839-40
 ;;9002226.02101,"619,00121-4839-40 ",.02)
 ;;00121-4839-40
 ;;9002226.02101,"619,00143-3000-01 ",.01)
 ;;00143-3000-01
 ;;9002226.02101,"619,00143-3000-01 ",.02)
 ;;00143-3000-01
 ;;9002226.02101,"619,00178-3291-16 ",.01)
 ;;00178-3291-16
 ;;9002226.02101,"619,00178-3291-16 ",.02)
 ;;00178-3291-16
 ;;9002226.02101,"619,00178-3482-16 ",.01)
 ;;00178-3482-16
 ;;9002226.02101,"619,00178-3482-16 ",.02)
 ;;00178-3482-16
 ;;9002226.02101,"619,00179-0112-20 ",.01)
 ;;00179-0112-20
 ;;9002226.02101,"619,00179-0112-20 ",.02)
 ;;00179-0112-20
 ;;9002226.02101,"619,00179-0112-30 ",.01)
 ;;00179-0112-30
 ;;9002226.02101,"619,00179-0112-30 ",.02)
 ;;00179-0112-30
 ;;9002226.02101,"619,00179-0112-40 ",.01)
 ;;00179-0112-40
 ;;9002226.02101,"619,00179-0112-40 ",.02)
 ;;00179-0112-40
 ;;9002226.02101,"619,00179-0112-50 ",.01)
 ;;00179-0112-50
 ;;9002226.02101,"619,00179-0112-50 ",.02)
 ;;00179-0112-50
 ;;9002226.02101,"619,00179-0112-60 ",.01)
 ;;00179-0112-60
 ;;9002226.02101,"619,00179-0112-60 ",.02)
 ;;00179-0112-60
 ;;9002226.02101,"619,00179-0112-90 ",.01)
 ;;00179-0112-90
 ;;9002226.02101,"619,00179-0112-90 ",.02)
 ;;00179-0112-90
 ;;9002226.02101,"619,00179-0113-20 ",.01)
 ;;00179-0113-20
 ;;9002226.02101,"619,00179-0113-20 ",.02)
 ;;00179-0113-20
 ;;9002226.02101,"619,00179-0113-30 ",.01)
 ;;00179-0113-30
 ;;9002226.02101,"619,00179-0113-30 ",.02)
 ;;00179-0113-30
 ;;9002226.02101,"619,00179-0113-40 ",.01)
 ;;00179-0113-40
 ;;9002226.02101,"619,00179-0113-40 ",.02)
 ;;00179-0113-40
 ;;9002226.02101,"619,00179-0113-50 ",.01)
 ;;00179-0113-50
 ;;9002226.02101,"619,00179-0113-50 ",.02)
 ;;00179-0113-50
 ;;9002226.02101,"619,00179-0113-60 ",.01)
 ;;00179-0113-60
 ;;9002226.02101,"619,00179-0113-60 ",.02)
 ;;00179-0113-60
 ;;9002226.02101,"619,00179-0113-90 ",.01)
 ;;00179-0113-90
 ;;9002226.02101,"619,00179-0113-90 ",.02)
 ;;00179-0113-90
 ;;9002226.02101,"619,00179-0116-30 ",.01)
 ;;00179-0116-30
 ;;9002226.02101,"619,00179-0116-30 ",.02)
 ;;00179-0116-30
 ;;9002226.02101,"619,00179-0116-50 ",.01)
 ;;00179-0116-50
 ;;9002226.02101,"619,00179-0116-50 ",.02)
 ;;00179-0116-50
 ;;9002226.02101,"619,00179-0116-60 ",.01)
 ;;00179-0116-60
 ;;9002226.02101,"619,00179-0116-60 ",.02)
 ;;00179-0116-60
 ;;9002226.02101,"619,00179-1957-30 ",.01)
 ;;00179-1957-30
 ;;9002226.02101,"619,00179-1957-30 ",.02)
 ;;00179-1957-30
 ;;9002226.02101,"619,00179-1957-50 ",.01)
 ;;00179-1957-50
 ;;9002226.02101,"619,00179-1957-50 ",.02)
 ;;00179-1957-50
 ;;9002226.02101,"619,00179-1957-60 ",.01)
 ;;00179-1957-60
 ;;9002226.02101,"619,00179-1957-60 ",.02)
 ;;00179-1957-60
 ;;9002226.02101,"619,00185-0749-01 ",.01)
 ;;00185-0749-01
 ;;9002226.02101,"619,00185-0749-01 ",.02)
 ;;00185-0749-01
 ;;9002226.02101,"619,00187-0003-01 ",.01)
 ;;00187-0003-01
 ;;9002226.02101,"619,00187-0003-01 ",.02)
 ;;00187-0003-01
 ;;9002226.02101,"619,00187-0054-01 ",.01)
 ;;00187-0054-01
 ;;9002226.02101,"619,00187-0054-01 ",.02)
 ;;00187-0054-01
 ;;9002226.02101,"619,00187-0054-20 ",.01)
 ;;00187-0054-20
 ;;9002226.02101,"619,00187-0054-20 ",.02)
 ;;00187-0054-20
 ;;9002226.02101,"619,00187-0108-01 ",.01)
 ;;00187-0108-01
 ;;9002226.02101,"619,00187-0108-01 ",.02)
 ;;00187-0108-01
 ;;9002226.02101,"619,00187-0108-20 ",.01)
 ;;00187-0108-20
 ;;9002226.02101,"619,00187-0108-20 ",.02)
 ;;00187-0108-20
 ;;9002226.02101,"619,00187-4203-04 ",.01)
 ;;00187-4203-04
 ;;9002226.02101,"619,00187-4203-04 ",.02)
 ;;00187-4203-04
 ;;9002226.02101,"619,00187-4203-16 ",.01)
 ;;00187-4203-16
 ;;9002226.02101,"619,00187-4203-16 ",.02)
 ;;00187-4203-16
 ;;9002226.02101,"619,00228-2876-11 ",.01)
 ;;00228-2876-11
 ;;9002226.02101,"619,00228-2876-11 ",.02)
 ;;00228-2876-11
 ;;9002226.02101,"619,00228-2878-11 ",.01)
 ;;00228-2878-11
 ;;9002226.02101,"619,00228-2878-11 ",.02)
 ;;00228-2878-11
 ;;9002226.02101,"619,00228-2879-11 ",.01)
 ;;00228-2879-11
 ;;9002226.02101,"619,00228-2879-11 ",.02)
 ;;00228-2879-11
 ;;9002226.02101,"619,00228-2981-11 ",.01)
 ;;00228-2981-11
 ;;9002226.02101,"619,00228-2981-11 ",.02)
 ;;00228-2981-11
 ;;9002226.02101,"619,00228-2981-50 ",.01)
 ;;00228-2981-50
 ;;9002226.02101,"619,00228-2981-50 ",.02)
 ;;00228-2981-50
 ;;9002226.02101,"619,00228-2982-11 ",.01)
 ;;00228-2982-11
 ;;9002226.02101,"619,00228-2982-11 ",.02)
 ;;00228-2982-11
 ;;9002226.02101,"619,00228-2983-11 ",.01)
 ;;00228-2983-11
 ;;9002226.02101,"619,00228-2983-11 ",.02)
 ;;00228-2983-11
 ;;9002226.02101,"619,00228-3090-11 ",.01)
 ;;00228-3090-11
 ;;9002226.02101,"619,00228-3090-11 ",.02)
 ;;00228-3090-11
 ;;9002226.02101,"619,00228-3091-11 ",.01)
 ;;00228-3091-11
 ;;9002226.02101,"619,00228-3091-11 ",.02)
 ;;00228-3091-11
 ;;9002226.02101,"619,00228-3092-11 ",.01)
 ;;00228-3092-11
 ;;9002226.02101,"619,00228-3092-11 ",.02)
 ;;00228-3092-11
 ;;9002226.02101,"619,00228-3093-11 ",.01)
 ;;00228-3093-11
 ;;9002226.02101,"619,00228-3093-11 ",.02)
 ;;00228-3093-11
 ;;9002226.02101,"619,00228-3116-11 ",.01)
 ;;00228-3116-11
 ;;9002226.02101,"619,00228-3116-11 ",.02)
 ;;00228-3116-11
 ;;9002226.02101,"619,00228-3117-11 ",.01)
 ;;00228-3117-11
 ;;9002226.02101,"619,00228-3117-11 ",.02)
 ;;00228-3117-11
 ;;9002226.02101,"619,00228-3227-06 ",.01)
 ;;00228-3227-06
 ;;9002226.02101,"619,00228-3227-06 ",.02)
 ;;00228-3227-06
 ;;9002226.02101,"619,00228-3227-11 ",.01)
 ;;00228-3227-11
 ;;9002226.02101,"619,00228-3227-11 ",.02)
 ;;00228-3227-11
 ;;9002226.02101,"619,00228-3228-06 ",.01)
 ;;00228-3228-06
 ;;9002226.02101,"619,00228-3228-06 ",.02)
 ;;00228-3228-06
 ;;9002226.02101,"619,00228-3228-11 ",.01)
 ;;00228-3228-11
 ;;9002226.02101,"619,00228-3228-11 ",.02)
 ;;00228-3228-11
 ;;9002226.02101,"619,00228-3229-06 ",.01)
 ;;00228-3229-06
 ;;9002226.02101,"619,00228-3229-06 ",.02)
 ;;00228-3229-06
 ;;9002226.02101,"619,00228-3229-11 ",.01)
 ;;00228-3229-11
 ;;9002226.02101,"619,00228-3229-11 ",.02)
 ;;00228-3229-11
 ;;9002226.02101,"619,00228-3230-06 ",.01)
 ;;00228-3230-06
 ;;9002226.02101,"619,00228-3230-06 ",.02)
 ;;00228-3230-06
 ;;9002226.02101,"619,00228-3230-11 ",.01)
 ;;00228-3230-11
 ;;9002226.02101,"619,00228-3230-11 ",.02)
 ;;00228-3230-11
 ;;9002226.02101,"619,00228-3261-06 ",.01)
 ;;00228-3261-06
 ;;9002226.02101,"619,00228-3261-06 ",.02)
 ;;00228-3261-06
 ;;9002226.02101,"619,00228-3261-11 ",.01)
 ;;00228-3261-11
 ;;9002226.02101,"619,00228-3261-11 ",.02)
 ;;00228-3261-11
 ;;9002226.02101,"619,00228-3262-06 ",.01)
 ;;00228-3262-06
 ;;9002226.02101,"619,00228-3262-06 ",.02)
 ;;00228-3262-06
 ;;9002226.02101,"619,00228-3262-11 ",.01)
 ;;00228-3262-11
 ;;9002226.02101,"619,00228-3262-11 ",.02)
 ;;00228-3262-11
 ;;9002226.02101,"619,00228-3263-06 ",.01)
 ;;00228-3263-06
 ;;9002226.02101,"619,00228-3263-06 ",.02)
 ;;00228-3263-06
 ;;9002226.02101,"619,00228-3263-11 ",.01)
 ;;00228-3263-11
 ;;9002226.02101,"619,00228-3263-11 ",.02)
 ;;00228-3263-11
 ;;9002226.02101,"619,00228-3501-06 ",.01)
 ;;00228-3501-06
 ;;9002226.02101,"619,00228-3501-06 ",.02)
 ;;00228-3501-06
 ;;9002226.02101,"619,00228-3501-11 ",.01)
 ;;00228-3501-11
 ;;9002226.02101,"619,00228-3501-11 ",.02)
 ;;00228-3501-11
 ;;9002226.02101,"619,00228-3502-06 ",.01)
 ;;00228-3502-06
 ;;9002226.02101,"619,00228-3502-06 ",.02)
 ;;00228-3502-06
 ;;9002226.02101,"619,00228-3502-11 ",.01)
 ;;00228-3502-11
 ;;9002226.02101,"619,00228-3502-11 ",.02)
 ;;00228-3502-11
 ;;9002226.02101,"619,00228-3503-06 ",.01)
 ;;00228-3503-06
 ;;9002226.02101,"619,00228-3503-06 ",.02)
 ;;00228-3503-06
 ;;9002226.02101,"619,00228-3503-11 ",.01)
 ;;00228-3503-11
 ;;9002226.02101,"619,00228-3503-11 ",.02)
 ;;00228-3503-11
 ;;9002226.02101,"619,00228-3504-06 ",.01)
 ;;00228-3504-06
 ;;9002226.02101,"619,00228-3504-06 ",.02)
 ;;00228-3504-06
 ;;9002226.02101,"619,00228-3504-11 ",.01)
 ;;00228-3504-11
 ;;9002226.02101,"619,00228-3504-11 ",.02)
 ;;00228-3504-11
 ;;9002226.02101,"619,00228-3505-06 ",.01)
 ;;00228-3505-06
 ;;9002226.02101,"619,00228-3505-06 ",.02)
 ;;00228-3505-06
 ;;9002226.02101,"619,00228-3505-11 ",.01)
 ;;00228-3505-11
 ;;9002226.02101,"619,00228-3505-11 ",.02)
 ;;00228-3505-11
 ;;9002226.02101,"619,00228-3506-06 ",.01)
 ;;00228-3506-06
 ;;9002226.02101,"619,00228-3506-06 ",.02)
 ;;00228-3506-06
 ;;9002226.02101,"619,00228-3506-11 ",.01)
 ;;00228-3506-11
 ;;9002226.02101,"619,00228-3506-11 ",.02)
 ;;00228-3506-11
 ;;9002226.02101,"619,00228-3507-06 ",.01)
 ;;00228-3507-06
 ;;9002226.02101,"619,00228-3507-06 ",.02)
 ;;00228-3507-06
 ;;9002226.02101,"619,00228-3507-11 ",.01)
 ;;00228-3507-11
 ;;9002226.02101,"619,00228-3507-11 ",.02)
 ;;00228-3507-11
 ;;9002226.02101,"619,00228-4029-11 ",.01)
 ;;00228-4029-11
 ;;9002226.02101,"619,00228-4029-11 ",.02)
 ;;00228-4029-11
 ;;9002226.02101,"619,00228-4270-11 ",.01)
 ;;00228-4270-11
 ;;9002226.02101,"619,00228-4270-11 ",.02)
 ;;00228-4270-11
 ;;9002226.02101,"619,00228-4271-11 ",.01)
 ;;00228-4271-11
 ;;9002226.02101,"619,00228-4271-11 ",.02)
 ;;00228-4271-11
 ;;9002226.02101,"619,00228-4311-11 ",.01)
 ;;00228-4311-11
 ;;9002226.02101,"619,00228-4311-11 ",.02)
 ;;00228-4311-11
 ;;9002226.02101,"619,00228-4323-11 ",.01)
 ;;00228-4323-11