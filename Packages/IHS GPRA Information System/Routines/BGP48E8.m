BGP48E8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"65243-0325-09 ")
 ;;2725
 ;;21,"65243-0325-18 ")
 ;;2726
 ;;21,"65243-0343-09 ")
 ;;2727
 ;;21,"65243-0343-36 ")
 ;;2728
 ;;21,"65243-0346-09 ")
 ;;2729
 ;;21,"65243-0371-06 ")
 ;;2730
 ;;21,"65243-0371-09 ")
 ;;2731
 ;;21,"65243-0372-06 ")
 ;;2732
 ;;21,"65243-0372-09 ")
 ;;2733
 ;;21,"65243-0372-18 ")
 ;;2734
 ;;21,"65243-0373-09 ")
 ;;2735
 ;;21,"65243-0375-09 ")
 ;;2736
 ;;21,"65243-0378-09 ")
 ;;2737
 ;;21,"65862-0008-01 ")
 ;;2738
 ;;21,"65862-0008-05 ")
 ;;2739
 ;;21,"65862-0008-90 ")
 ;;2740
 ;;21,"65862-0008-99 ")
 ;;2741
 ;;21,"65862-0009-01 ")
 ;;2742
 ;;21,"65862-0009-05 ")
 ;;2743
 ;;21,"65862-0009-90 ")
 ;;2744
 ;;21,"65862-0010-01 ")
 ;;2745
 ;;21,"65862-0010-05 ")
 ;;2746
 ;;21,"65862-0010-46 ")
 ;;2747
 ;;21,"65862-0010-90 ")
 ;;2748
 ;;21,"65862-0010-99 ")
 ;;2749
 ;;21,"65862-0028-01 ")
 ;;2750
 ;;21,"65862-0029-01 ")
 ;;2751
 ;;21,"65862-0029-05 ")
 ;;2752
 ;;21,"65862-0030-01 ")
 ;;2753
 ;;21,"65862-0030-99 ")
 ;;2754
 ;;21,"65862-0080-01 ")
 ;;2755
 ;;21,"65862-0080-05 ")
 ;;2756
 ;;21,"65862-0081-01 ")
 ;;2757
 ;;21,"65862-0081-05 ")
 ;;2758
 ;;21,"65862-0082-01 ")
 ;;2759
 ;;21,"65862-0082-05 ")
 ;;2760
 ;;21,"65862-0291-01 ")
 ;;2761
 ;;21,"65862-0291-05 ")
 ;;2762
 ;;21,"65862-0292-01 ")
 ;;2763
 ;;21,"65862-0512-30 ")
 ;;2764
 ;;21,"65862-0513-30 ")
 ;;2765
 ;;21,"65862-0514-30 ")
 ;;2766
 ;;21,"65862-0525-18 ")
 ;;2767
 ;;21,"65862-0525-60 ")
 ;;2768
 ;;21,"65862-0526-18 ")
 ;;2769
 ;;21,"65862-0526-60 ")
 ;;2770
 ;;21,"66105-0145-01 ")
 ;;2771
 ;;21,"66105-0145-03 ")
 ;;2772
 ;;21,"66105-0145-06 ")
 ;;2773
 ;;21,"66105-0145-09 ")
 ;;2774
 ;;21,"66105-0145-15 ")
 ;;2775
 ;;21,"66105-0154-01 ")
 ;;2776
 ;;21,"66105-0154-03 ")
 ;;2777
 ;;21,"66105-0154-06 ")
 ;;2778
 ;;21,"66105-0154-09 ")
 ;;2779
 ;;21,"66105-0154-15 ")
 ;;2780
 ;;21,"66105-0156-01 ")
 ;;2781
 ;;21,"66105-0156-03 ")
 ;;2782
 ;;21,"66105-0156-06 ")
 ;;2783
 ;;21,"66105-0156-09 ")
 ;;2784
 ;;21,"66105-0156-15 ")
 ;;2785
 ;;21,"66105-0159-01 ")
 ;;2786
 ;;21,"66105-0159-03 ")
 ;;2787
 ;;21,"66105-0159-06 ")
 ;;2788
 ;;21,"66105-0159-09 ")
 ;;2789
 ;;21,"66105-0159-15 ")
 ;;2790
 ;;21,"66105-0652-03 ")
 ;;2791
 ;;21,"66105-0984-03 ")
 ;;2792
 ;;21,"66105-0984-06 ")
 ;;2793
 ;;21,"66105-0984-10 ")
 ;;2794
 ;;21,"66105-0984-11 ")
 ;;2795
 ;;21,"66105-0984-50 ")
 ;;2796
 ;;21,"66105-0985-03 ")
 ;;2797
 ;;21,"66105-0985-06 ")
 ;;2798
 ;;21,"66105-0985-10 ")
 ;;2799
 ;;21,"66105-0985-11 ")
 ;;2800
 ;;21,"66105-0985-50 ")
 ;;2801
 ;;21,"66105-0986-03 ")
 ;;2802
 ;;21,"66105-0986-06 ")
 ;;2803
 ;;21,"66105-0986-10 ")
 ;;2804
 ;;21,"66105-0986-11 ")
 ;;2805
 ;;21,"66105-0986-50 ")
 ;;2806
 ;;21,"66116-0233-30 ")
 ;;2807
 ;;21,"66116-0282-60 ")
 ;;2808
 ;;21,"66116-0293-30 ")
 ;;2809
 ;;21,"66116-0440-30 ")
 ;;2810
 ;;21,"66116-0454-30 ")
 ;;2811
 ;;21,"66116-0695-60 ")
 ;;2812
 ;;21,"66267-0099-30 ")
 ;;2813
 ;;21,"66267-0100-30 ")
 ;;2814
 ;;21,"66267-0100-60 ")
 ;;2815
 ;;21,"66267-0100-90 ")
 ;;2816
 ;;21,"66267-0100-91 ")
 ;;2817
 ;;21,"66267-0100-92 ")
 ;;2818
 ;;21,"66267-0103-30 ")
 ;;2819
 ;;21,"66267-0493-14 ")
 ;;2820
 ;;21,"66267-0493-30 ")
 ;;2821
 ;;21,"66267-0493-60 ")
 ;;2822
 ;;21,"66267-0493-90 ")
 ;;2823
 ;;21,"66267-0493-91 ")
 ;;2824
 ;;21,"66267-0493-92 ")
 ;;2825
 ;;21,"66267-0493-93 ")
 ;;2826
 ;;21,"66267-0497-30 ")
 ;;2827
 ;;21,"66267-0553-30 ")
 ;;2828
 ;;21,"66336-0028-30 ")
 ;;2829
 ;;21,"66336-0028-90 ")
 ;;2830
 ;;21,"66336-0269-30 ")
 ;;2831
 ;;21,"66336-0269-90 ")
 ;;2832
 ;;21,"66336-0270-30 ")
 ;;2833
 ;;21,"66336-0270-60 ")
 ;;2834
 ;;21,"66336-0270-90 ")
 ;;2835
 ;;21,"66336-0270-94 ")
 ;;2836
 ;;21,"66336-0292-60 ")
 ;;2837
 ;;21,"66336-0319-30 ")
 ;;2838
 ;;21,"66336-0358-30 ")
 ;;2839
 ;;21,"66336-0358-60 ")
 ;;2840
 ;;21,"66336-0358-62 ")
 ;;2841
 ;;21,"66336-0358-90 ")
 ;;2842
 ;;21,"66336-0360-30 ")
 ;;2843
 ;;21,"66336-0361-30 ")
 ;;2844
 ;;21,"66336-0500-30 ")
 ;;2845
 ;;21,"66336-0500-90 ")
 ;;2846
 ;;21,"66336-0534-30 ")
 ;;2847
 ;;21,"66336-0534-90 ")
 ;;2848
 ;;21,"66336-0535-30 ")
 ;;2849
 ;;21,"66336-0535-60 ")
 ;;2850
 ;;21,"66336-0535-90 ")
 ;;2851
 ;;21,"66336-0573-30 ")
 ;;2852
 ;;21,"66336-0573-60 ")
 ;;2853
 ;;21,"66336-0573-90 ")
 ;;2854
 ;;21,"66336-0662-30 ")
 ;;2855
 ;;21,"66336-0662-60 ")
 ;;2856
 ;;21,"66336-0662-90 ")
 ;;2857
 ;;21,"66336-0662-94 ")
 ;;2858
 ;;21,"66336-0712-90 ")
 ;;2859
 ;;21,"66336-0730-14 ")
 ;;2860
 ;;21,"66336-0730-30 ")
 ;;2861
 ;;21,"66336-0730-60 ")
 ;;2862
 ;;21,"66336-0730-90 ")
 ;;2863
 ;;21,"66336-0784-30 ")
 ;;2864
 ;;21,"66336-0784-60 ")
 ;;2865
 ;;21,"66336-0784-90 ")
 ;;2866
 ;;21,"66336-0850-30 ")
 ;;2867
 ;;21,"66336-0850-60 ")
 ;;2868
 ;;21,"66336-0850-90 ")
 ;;2869
 ;;21,"66336-0857-30 ")
 ;;2870
 ;;21,"66336-0857-90 ")
 ;;2871
 ;;21,"66336-0858-30 ")
 ;;2872
 ;;21,"66336-0858-90 ")
 ;;2873
 ;;21,"66336-0859-30 ")
 ;;2874
 ;;21,"66336-0859-90 ")
 ;;2875
 ;;21,"66336-0883-30 ")
 ;;2876
 ;;21,"66336-0883-60 ")
 ;;2877
 ;;21,"66336-0883-90 ")
 ;;2878
 ;;21,"66336-0884-14 ")
 ;;2879
 ;;21,"66336-0884-28 ")
 ;;2880
 ;;21,"66336-0884-30 ")
 ;;2881
 ;;21,"66336-0884-60 ")
 ;;2882
 ;;21,"66336-0884-62 ")
 ;;2883
 ;;21,"66336-0884-90 ")
 ;;2884
 ;;21,"66336-0938-30 ")
 ;;2885
 ;;21,"66336-0938-60 ")
 ;;2886
 ;;21,"66336-0938-90 ")
 ;;2887
 ;;21,"66689-0011-60 ")
 ;;2888
 ;;21,"66780-0210-07 ")
 ;;2889
 ;;21,"66780-0212-01 ")
 ;;2890
 ;;21,"66780-0219-04 ")
 ;;2891
 ;;21,"66780-0226-01 ")
 ;;2892
 ;;21,"66993-0162-02 ")
 ;;2893
 ;;21,"66993-0163-02 ")
 ;;2894
 ;;21,"66993-0164-02 ")
 ;;2895
 ;;21,"67253-0460-10 ")
 ;;2896
 ;;21,"67253-0460-11 ")
 ;;2897
 ;;21,"67253-0460-50 ")
 ;;2898
 ;;21,"67253-0461-10 ")
 ;;2899
 ;;21,"67253-0461-11 ")
 ;;2900
 ;;21,"67253-0461-50 ")
 ;;2901
 ;;21,"67253-0462-10 ")
 ;;2902
 ;;21,"67253-0462-11 ")
 ;;2903
 ;;21,"67253-0462-50 ")
 ;;2904
 ;;21,"67263-0025-90 ")
 ;;2905
 ;;21,"67263-0026-90 ")
 ;;2906
 ;;21,"67263-0027-90 ")
 ;;2907
 ;;21,"67263-0087-90 ")
 ;;2908
 ;;21,"67263-0193-01 ")
 ;;2909
 ;;21,"67263-0222-30 ")
 ;;2910
 ;;21,"67544-0047-30 ")
 ;;2911
 ;;21,"67544-0047-53 ")
 ;;2912
 ;;21,"67544-0047-60 ")
 ;;2913
 ;;21,"67544-0047-70 ")
 ;;2914
 ;;21,"67544-0047-75 ")
 ;;2915
 ;;21,"67544-0047-80 ")
 ;;2916
 ;;21,"67544-0047-90 ")
 ;;2917
 ;;21,"67544-0047-92 ")
 ;;2918
 ;;21,"67544-0047-94 ")
 ;;2919
 ;;21,"67544-0047-96 ")
 ;;2920
 ;;21,"67544-0065-30 ")
 ;;2921
 ;;21,"67544-0065-53 ")
 ;;2922
 ;;21,"67544-0065-60 ")
 ;;2923
 ;;21,"67544-0066-30 ")
 ;;2924
 ;;21,"67544-0066-45 ")
 ;;2925
 ;;21,"67544-0066-60 ")
 ;;2926
 ;;21,"67544-0097-53 ")
 ;;2927
 ;;21,"67544-0097-60 ")
 ;;2928
 ;;21,"67544-0097-70 ")
 ;;2929
 ;;21,"67544-0097-80 ")
 ;;2930
 ;;21,"67544-0097-92 ")
 ;;2931
 ;;21,"67544-0097-94 ")
 ;;2932
 ;;21,"67544-0098-53 ")
 ;;2933
 ;;21,"67544-0098-60 ")
 ;;2934
 ;;21,"67544-0098-70 ")
 ;;2935
 ;;21,"67544-0098-80 ")
 ;;2936
 ;;21,"67544-0098-90 ")
 ;;2937
 ;;21,"67544-0098-92 ")
 ;;2938
 ;;21,"67544-0098-94 ")
 ;;2939
 ;;21,"67544-0107-53 ")
 ;;2940
 ;;21,"67544-0107-60 ")
 ;;2941
 ;;21,"67544-0107-80 ")
 ;;2942
 ;;21,"67544-0107-92 ")
 ;;2943
 ;;21,"67544-0113-60 ")
 ;;2944
 ;;21,"67544-0113-70 ")
 ;;2945
 ;;21,"67544-0113-80 ")
 ;;2946
 ;;21,"67544-0114-15 ")
 ;;2947
 ;;21,"67544-0114-45 ")
 ;;2948
 ;;21,"67544-0114-60 ")
 ;;2949
 ;;21,"67544-0114-82 ")
 ;;2950
 ;;21,"67544-0129-53 ")
 ;;2951
 ;;21,"67544-0129-70 ")
 ;;2952
 ;;21,"67544-0129-80 ")
 ;;2953
 ;;21,"67544-0129-94 ")
 ;;2954
 ;;21,"67544-0163-30 ")
 ;;2955
 ;;21,"67544-0163-45 ")
 ;;2956
 ;;21,"67544-0163-53 ")
 ;;2957
 ;;21,"67544-0163-60 ")
 ;;2958
 ;;21,"67544-0163-80 ")
 ;;2959
 ;;21,"67544-0199-80 ")
 ;;2960
 ;;21,"67544-0254-53 ")
 ;;2961
 ;;21,"67544-0296-70 ")
 ;;2962
 ;;21,"67544-0302-45 ")
 ;;2963
 ;;21,"67544-0302-60 ")
 ;;2964
 ;;21,"67544-0302-73 ")
 ;;2965
 ;;21,"67544-0302-80 ")
 ;;2966
 ;;21,"67544-0302-92 ")
 ;;2967
 ;;21,"67544-0302-98 ")
 ;;2968
 ;;21,"67544-0364-70 ")
 ;;2969
 ;;21,"67544-0417-70 ")
 ;;2970
 ;;21,"67544-0421-60 ")
 ;;2971
 ;;21,"67544-0421-80 ")
 ;;2972
 ;;21,"67544-0421-92 ")
 ;;2973
 ;;21,"67544-0422-30 ")
 ;;2974
 ;;21,"67544-0422-53 ")
 ;;2975
 ;;21,"67544-0422-60 ")
 ;;2976
 ;;21,"67544-0422-70 ")
 ;;2977
 ;;21,"67544-0422-75 ")
 ;;2978
 ;;21,"67544-0422-80 ")
 ;;2979
 ;;21,"67544-0422-90 ")
 ;;2980
 ;;21,"67544-0422-92 ")
 ;;2981
 ;;21,"67544-0422-94 ")
 ;;2982
 ;;21,"67544-0422-96 ")
 ;;2983
 ;;21,"67544-0424-30 ")
 ;;2984
 ;;21,"67544-0424-53 ")
 ;;2985
 ;;21,"67544-0424-60 ")
 ;;2986
 ;;21,"67544-0424-70 ")
 ;;2987
 ;;21,"67544-0424-75 ")
 ;;2988
 ;;21,"67544-0424-80 ")
 ;;2989
 ;;21,"67544-0424-90 ")
 ;;2990
 ;;21,"67544-0424-92 ")
 ;;2991
 ;;21,"67544-0424-94 ")
 ;;2992
 ;;21,"67544-0424-96 ")
 ;;2993
 ;;21,"67544-0428-45 ")
 ;;2994
 ;;21,"67544-0428-53 ")
 ;;2995
 ;;21,"67544-0428-60 ")
 ;;2996
 ;;21,"67544-0428-73 ")
 ;;2997
 ;;21,"67544-0428-80 ")
 ;;2998
 ;;21,"67544-0478-82 ")
 ;;2999
 ;;21,"67544-0486-53 ")
 ;;3000
 ;;21,"67544-0511-70 ")
 ;;3001
 ;;21,"67544-0511-94 ")
 ;;3002
 ;;21,"67544-0548-82 ")
 ;;3003
 ;;21,"67544-0566-53 ")
 ;;3004
 ;;21,"67544-0566-60 ")
 ;;3005
 ;;21,"67544-0566-70 ")
 ;;3006
 ;;21,"67544-0566-80 ")
 ;;3007
 ;;21,"67544-0566-90 ")
 ;;3008
 ;;21,"67544-0566-92 ")
 ;;3009
 ;;21,"67544-0566-94 ")
 ;;3010
 ;;21,"67544-0596-53 ")
 ;;3011
 ;;21,"67544-0596-60 ")
 ;;3012
 ;;21,"67544-0596-80 ")
 ;;3013
 ;;21,"67544-0596-96 ")
 ;;3014
 ;;21,"67544-0613-53 ")
 ;;3015
 ;;21,"67544-0613-60 ")
 ;;3016
 ;;21,"67544-0613-70 ")
 ;;3017
 ;;21,"67544-0613-80 ")
 ;;3018
 ;;21,"67544-0613-90 ")
 ;;3019
 ;;21,"67544-0613-92 ")
 ;;3020
 ;;21,"67544-0613-94 ")
 ;;3021
 ;;21,"67544-0643-80 ")
 ;;3022
 ;;21,"67544-0643-94 ")
 ;;3023
 ;;21,"67544-0653-53 ")
 ;;3024
 ;;21,"67544-0653-60 ")
 ;;3025
 ;;21,"67544-0653-70 ")
 ;;3026
 ;;21,"67544-0653-80 ")
 ;;3027
 ;;21,"67544-0653-90 ")
 ;;3028
 ;;21,"67544-0653-92 ")
 ;;3029
 ;;21,"67544-0653-94 ")
 ;;3030
 ;;21,"67544-0653-98 ")
 ;;3031
 ;;21,"67544-0661-41 ")
 ;;3032
 ;;21,"67544-0661-81 ")
 ;;3033
 ;;21,"67544-0751-60 ")
 ;;3034
 ;;21,"67544-0751-80 ")
 ;;3035
 ;;21,"67544-0756-60 ")
 ;;3036
 ;;21,"67544-0756-80 ")
 ;;3037
 ;;21,"67544-0808-60 ")
 ;;3038
 ;;21,"67544-0875-60 ")
 ;;3039
 ;;21,"67544-0875-80 ")
 ;;3040
 ;;21,"67544-0927-60 ")
 ;;3041
 ;;21,"67544-1081-80 ")
 ;;3042
 ;;21,"67544-1081-94 ")
 ;;3043
 ;;21,"67544-1129-70 ")
 ;;3044
 ;;21,"67544-1198-53 ")
 ;;3045
 ;;21,"67544-1198-60 ")
 ;;3046
 ;;21,"67544-1198-80 ")
 ;;3047
 ;;21,"67544-1216-53 ")
 ;;3048
 ;;21,"67544-1216-60 ")
 ;;3049
 ;;21,"67544-1216-80 ")
 ;;3050
 ;;21,"67544-1216-92 ")
 ;;3051
 ;;21,"67544-1379-80 ")
 ;;3052
 ;;21,"67544-1383-60 ")
 ;;3053
 ;;21,"67544-1383-80 ")
 ;;3054
 ;;21,"67767-0115-01 ")
 ;;3055
 ;;21,"67877-0159-01 ")
 ;;3056
 ;;21,"67877-0159-05 ")
 ;;3057
 ;;21,"67877-0159-10 ")
 ;;3058
 ;;21,"67877-0217-01 ")
 ;;3059
 ;;21,"67877-0217-05 ")
 ;;3060
 ;;21,"67877-0217-10 ")
 ;;3061
 ;;21,"67877-0218-01 ")
 ;;3062
 ;;21,"67877-0218-05 ")
 ;;3063
 ;;21,"67877-0218-10 ")
 ;;3064
 ;;21,"67877-0221-01 ")
 ;;3065
 ;;21,"67877-0221-05 ")
 ;;3066
 ;;21,"67877-0221-10 ")
 ;;3067
 ;;21,"68012-0002-13 ")
 ;;3068
 ;;21,"68012-0003-16 ")
 ;;3069
 ;;21,"68071-0008-30 ")
 ;;3070
 ;;21,"68071-0028-30 ")
 ;;3071
 ;;21,"68071-0028-60 ")
 ;;3072
 ;;21,"68071-0388-30 ")
 ;;3073
 ;;21,"68071-0405-15 ")
 ;;3074
 ;;21,"68071-0406-15 ")
 ;;3075
 ;;21,"68071-0407-15 ")
 ;;3076
 ;;21,"68071-0823-30 ")
 ;;3077
 ;;21,"68084-0072-01 ")
 ;;3078
 ;;21,"68084-0072-11 ")
 ;;3079
 ;;21,"68084-0111-01 ")
 ;;3080
 ;;21,"68084-0111-11 ")
 ;;3081
 ;;21,"68084-0112-01 ")
 ;;3082
 ;;21,"68084-0112-11 ")
 ;;3083
 ;;21,"68084-0136-01 ")
 ;;3084
 ;;21,"68084-0136-11 ")
 ;;3085
 ;;21,"68084-0137-01 ")
 ;;3086
 ;;21,"68084-0137-11 ")
 ;;3087
 ;;21,"68084-0138-01 ")
 ;;3088
 ;;21,"68084-0138-11 ")
 ;;3089
 ;;21,"68084-0295-11 ")
 ;;3090
 ;;21,"68084-0295-21 ")
 ;;3091
 ;;21,"68084-0326-01 ")
 ;;3092
 ;;21,"68084-0326-11 ")
 ;;3093
 ;;21,"68084-0327-01 ")
 ;;3094
 ;;21,"68084-0327-11 ")
 ;;3095
 ;;21,"68084-0458-11 ")
 ;;3096
 ;;21,"68084-0458-21 ")
 ;;3097
 ;;21,"68084-0459-11 ")
 ;;3098
 ;;21,"68084-0459-21 ")
 ;;3099
 ;;21,"68084-0556-11 ")
 ;;3100
 ;;21,"68084-0556-21 ")
 ;;3101
 ;;21,"68084-0629-01 ")
 ;;3102
 ;;21,"68084-0629-11 ")
 ;;3103
 ;;21,"68084-0630-01 ")
 ;;3104
 ;;21,"68084-0630-11 ")
 ;;3105
 ;;21,"68084-0631-01 ")
 ;;3106
 ;;21,"68084-0631-11 ")
 ;;3107
 ;;21,"68115-0154-30 ")
 ;;3108
 ;;21,"68115-0154-60 ")
 ;;3109
 ;;21,"68115-0155-30 ")
 ;;3110