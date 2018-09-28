BGP82A9 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"67544-0085-80 ")
 ;;2689
 ;;21,"67544-0121-30 ")
 ;;2690
 ;;21,"67544-0121-53 ")
 ;;2691
 ;;21,"67544-0121-60 ")
 ;;2692
 ;;21,"67544-0121-70 ")
 ;;2693
 ;;21,"67544-0121-75 ")
 ;;2694
 ;;21,"67544-0206-30 ")
 ;;2695
 ;;21,"67544-0206-60 ")
 ;;2696
 ;;21,"67544-0253-30 ")
 ;;2697
 ;;21,"67544-0253-53 ")
 ;;2698
 ;;21,"67544-0253-60 ")
 ;;2699
 ;;21,"67544-0253-70 ")
 ;;2700
 ;;21,"67544-0267-30 ")
 ;;2701
 ;;21,"67544-0317-15 ")
 ;;2702
 ;;21,"67544-0317-30 ")
 ;;2703
 ;;21,"67544-0317-53 ")
 ;;2704
 ;;21,"67544-0317-60 ")
 ;;2705
 ;;21,"67544-0383-30 ")
 ;;2706
 ;;21,"67544-0383-53 ")
 ;;2707
 ;;21,"67544-0383-60 ")
 ;;2708
 ;;21,"67544-0383-70 ")
 ;;2709
 ;;21,"67544-0394-30 ")
 ;;2710
 ;;21,"67544-0394-53 ")
 ;;2711
 ;;21,"67544-0394-60 ")
 ;;2712
 ;;21,"67544-0394-70 ")
 ;;2713
 ;;21,"67544-0492-30 ")
 ;;2714
 ;;21,"67544-0759-53 ")
 ;;2715
 ;;21,"67544-0996-10 ")
 ;;2716
 ;;21,"67544-0996-14 ")
 ;;2717
 ;;21,"67544-0996-15 ")
 ;;2718
 ;;21,"67544-0996-20 ")
 ;;2719
 ;;21,"67544-0996-21 ")
 ;;2720
 ;;21,"67544-0996-26 ")
 ;;2721
 ;;21,"67544-0996-28 ")
 ;;2722
 ;;21,"67544-0996-30 ")
 ;;2723
 ;;21,"67544-0996-40 ")
 ;;2724
 ;;21,"67544-0996-45 ")
 ;;2725
 ;;21,"67544-0996-53 ")
 ;;2726
 ;;21,"67544-0996-59 ")
 ;;2727
 ;;21,"67544-0996-60 ")
 ;;2728
 ;;21,"67544-0996-62 ")
 ;;2729
 ;;21,"67877-0210-01 ")
 ;;2730
 ;;21,"67877-0211-01 ")
 ;;2731
 ;;21,"68047-0721-01 ")
 ;;2732
 ;;21,"68071-0034-30 ")
 ;;2733
 ;;21,"68071-0304-30 ")
 ;;2734
 ;;21,"68071-0323-30 ")
 ;;2735
 ;;21,"68071-0323-60 ")
 ;;2736
 ;;21,"68071-0323-90 ")
 ;;2737
 ;;21,"68071-0361-30 ")
 ;;2738
 ;;21,"68071-0414-30 ")
 ;;2739
 ;;21,"68071-0421-30 ")
 ;;2740
 ;;21,"68071-0421-60 ")
 ;;2741
 ;;21,"68071-0421-90 ")
 ;;2742
 ;;21,"68071-0698-10 ")
 ;;2743
 ;;21,"68071-0698-14 ")
 ;;2744
 ;;21,"68071-0698-20 ")
 ;;2745
 ;;21,"68071-0698-30 ")
 ;;2746
 ;;21,"68071-0698-60 ")
 ;;2747
 ;;21,"68071-0703-14 ")
 ;;2748
 ;;21,"68071-0703-30 ")
 ;;2749
 ;;21,"68071-0703-45 ")
 ;;2750
 ;;21,"68071-0703-60 ")
 ;;2751
 ;;21,"68071-0788-30 ")
 ;;2752
 ;;21,"68071-0789-30 ")
 ;;2753
 ;;21,"68071-2007-03 ")
 ;;2754
 ;;21,"68071-2007-06 ")
 ;;2755
 ;;21,"68084-0031-01 ")
 ;;2756
 ;;21,"68084-0031-11 ")
 ;;2757
 ;;21,"68084-0032-01 ")
 ;;2758
 ;;21,"68084-0032-11 ")
 ;;2759
 ;;21,"68084-0044-01 ")
 ;;2760
 ;;21,"68084-0044-11 ")
 ;;2761
 ;;21,"68084-0045-01 ")
 ;;2762
 ;;21,"68084-0045-11 ")
 ;;2763
 ;;21,"68084-0046-01 ")
 ;;2764
 ;;21,"68084-0046-11 ")
 ;;2765
 ;;21,"68084-0047-01 ")
 ;;2766
 ;;21,"68084-0047-11 ")
 ;;2767
 ;;21,"68084-0189-01 ")
 ;;2768
 ;;21,"68084-0189-11 ")
 ;;2769
 ;;21,"68084-0200-01 ")
 ;;2770
 ;;21,"68084-0200-11 ")
 ;;2771
 ;;21,"68084-0396-01 ")
 ;;2772
 ;;21,"68084-0396-11 ")
 ;;2773
 ;;21,"68084-0396-65 ")
 ;;2774
 ;;21,"68084-0523-11 ")
 ;;2775
 ;;21,"68084-0523-21 ")
 ;;2776
 ;;21,"68084-0790-11 ")
 ;;2777
 ;;21,"68084-0790-21 ")
 ;;2778
 ;;21,"68084-0790-25 ")
 ;;2779
 ;;21,"68084-0790-95 ")
 ;;2780
 ;;21,"68084-0814-11 ")
 ;;2781
 ;;21,"68084-0814-21 ")
 ;;2782
 ;;21,"68084-0818-25 ")
 ;;2783
 ;;21,"68084-0818-95 ")
 ;;2784
 ;;21,"68084-0889-11 ")
 ;;2785
 ;;21,"68084-0889-21 ")
 ;;2786
 ;;21,"68084-0934-32 ")
 ;;2787
 ;;21,"68084-0934-33 ")
 ;;2788
 ;;21,"68084-0958-32 ")
 ;;2789
 ;;21,"68084-0958-33 ")
 ;;2790
 ;;21,"68084-0972-25 ")
 ;;2791
 ;;21,"68084-0972-95 ")
 ;;2792
 ;;21,"68084-0989-25 ")
 ;;2793
 ;;21,"68084-0989-95 ")
 ;;2794
 ;;21,"68084-0995-25 ")
 ;;2795
 ;;21,"68084-0995-95 ")
 ;;2796
 ;;21,"68180-0311-01 ")
 ;;2797
 ;;21,"68180-0312-01 ")
 ;;2798
 ;;21,"68180-0313-01 ")
 ;;2799
 ;;21,"68180-0314-06 ")
 ;;2800
 ;;21,"68180-0315-06 ")
 ;;2801
 ;;21,"68180-0316-06 ")
 ;;2802
 ;;21,"68180-0317-06 ")
 ;;2803
 ;;21,"68180-0322-01 ")
 ;;2804
 ;;21,"68180-0323-01 ")
 ;;2805
 ;;21,"68180-0324-01 ")
 ;;2806
 ;;21,"68180-0645-06 ")
 ;;2807
 ;;21,"68180-0646-06 ")
 ;;2808
 ;;21,"68180-0647-06 ")
 ;;2809
 ;;21,"68180-0779-01 ")
 ;;2810
 ;;21,"68180-0780-01 ")
 ;;2811
 ;;21,"68258-2012-09 ")
 ;;2812
 ;;21,"68258-7048-03 ")
 ;;2813
 ;;21,"68258-7049-03 ")
 ;;2814
 ;;21,"68258-7160-03 ")
 ;;2815
 ;;21,"68308-0219-01 ")
 ;;2816
 ;;21,"68308-0220-01 ")
 ;;2817
 ;;21,"68308-0312-10 ")
 ;;2818
 ;;21,"68308-0554-10 ")
 ;;2819
 ;;21,"68382-0001-01 ")
 ;;2820
 ;;21,"68382-0001-05 ")
 ;;2821
 ;;21,"68382-0001-06 ")
 ;;2822
 ;;21,"68382-0001-10 ")
 ;;2823
 ;;21,"68382-0001-16 ")
 ;;2824
 ;;21,"68382-0097-05 ")
 ;;2825
 ;;21,"68382-0097-06 ")
 ;;2826
 ;;21,"68382-0097-10 ")
 ;;2827
 ;;21,"68382-0097-16 ")
 ;;2828
 ;;21,"68382-0098-01 ")
 ;;2829
 ;;21,"68382-0098-05 ")
 ;;2830
 ;;21,"68382-0098-06 ")
 ;;2831
 ;;21,"68382-0098-10 ")
 ;;2832
 ;;21,"68382-0098-16 ")
 ;;2833
 ;;21,"68382-0099-01 ")
 ;;2834
 ;;21,"68382-0099-05 ")
 ;;2835
 ;;21,"68382-0099-06 ")
 ;;2836
 ;;21,"68382-0099-10 ")
 ;;2837
 ;;21,"68382-0099-16 ")
 ;;2838
 ;;21,"68387-0520-12 ")
 ;;2839
 ;;21,"68387-0520-30 ")
 ;;2840
 ;;21,"68387-0520-60 ")
 ;;2841
 ;;21,"68387-0520-90 ")
 ;;2842
 ;;21,"68405-0023-26 ")
 ;;2843
 ;;21,"68405-0044-26 ")
 ;;2844
 ;;21,"68405-0053-26 ")
 ;;2845
 ;;21,"68462-0382-01 ")
 ;;2846
 ;;21,"68462-0383-01 ")
 ;;2847
 ;;21,"68462-0384-01 ")
 ;;2848
 ;;21,"68645-0230-59 ")
 ;;2849
 ;;21,"68788-0748-03 ")
 ;;2850
 ;;21,"68788-0748-06 ")
 ;;2851
 ;;21,"68788-0748-09 ")
 ;;2852
 ;;21,"68788-2212-03 ")
 ;;2853
 ;;21,"68788-2212-06 ")
 ;;2854
 ;;21,"68788-2212-09 ")
 ;;2855
 ;;21,"68788-2213-03 ")
 ;;2856
 ;;21,"68788-2213-06 ")
 ;;2857
 ;;21,"68788-6320-03 ")
 ;;2858
 ;;21,"68788-6320-06 ")
 ;;2859
 ;;21,"68788-6320-08 ")
 ;;2860
 ;;21,"68788-6320-09 ")
 ;;2861
 ;;21,"68788-6432-01 ")
 ;;2862
 ;;21,"68788-6432-03 ")
 ;;2863
 ;;21,"68788-6432-06 ")
 ;;2864
 ;;21,"68788-6432-08 ")
 ;;2865
 ;;21,"68788-6432-09 ")
 ;;2866
 ;;21,"68788-6825-03 ")
 ;;2867
 ;;21,"68788-6825-06 ")
 ;;2868
 ;;21,"68788-6825-08 ")
 ;;2869
 ;;21,"68788-6825-09 ")
 ;;2870
 ;;21,"68788-6953-00 ")
 ;;2871
 ;;21,"68788-6953-01 ")
 ;;2872
 ;;21,"68788-6953-02 ")
 ;;2873
 ;;21,"68788-6953-03 ")
 ;;2874
 ;;21,"68788-6953-05 ")
 ;;2875
 ;;21,"68788-6953-06 ")
 ;;2876
 ;;21,"68788-6953-07 ")
 ;;2877
 ;;21,"68788-6953-09 ")
 ;;2878
 ;;21,"68788-8923-01 ")
 ;;2879
 ;;21,"68788-8923-02 ")
 ;;2880
 ;;21,"68788-8923-03 ")
 ;;2881
 ;;21,"68788-8923-06 ")
 ;;2882
 ;;21,"68788-8923-09 ")
 ;;2883
 ;;21,"68788-8953-01 ")
 ;;2884
 ;;21,"68788-8953-02 ")
 ;;2885
 ;;21,"68788-8953-03 ")
 ;;2886
 ;;21,"68788-8953-06 ")
 ;;2887
 ;;21,"68788-8953-09 ")
 ;;2888
 ;;21,"68788-8970-02 ")
 ;;2889
 ;;21,"68788-8970-03 ")
 ;;2890
 ;;21,"68788-8970-06 ")
 ;;2891
 ;;21,"68788-8970-09 ")
 ;;2892
 ;;21,"68788-8971-03 ")
 ;;2893
 ;;21,"68788-8971-06 ")
 ;;2894
 ;;21,"68788-8971-09 ")
 ;;2895
 ;;21,"68788-9013-03 ")
 ;;2896
 ;;21,"68788-9013-06 ")
 ;;2897
 ;;21,"68788-9013-09 ")
 ;;2898
 ;;21,"68788-9127-03 ")
 ;;2899
 ;;21,"68788-9127-06 ")
 ;;2900
 ;;21,"68788-9127-09 ")
 ;;2901
 ;;21,"68788-9361-06 ")
 ;;2902
 ;;21,"68788-9824-01 ")
 ;;2903
 ;;21,"68788-9824-02 ")
 ;;2904
 ;;21,"68788-9824-03 ")
 ;;2905
 ;;21,"68788-9824-06 ")
 ;;2906
 ;;21,"68788-9824-09 ")
 ;;2907
 ;;21,"68788-9830-01 ")
 ;;2908
 ;;21,"68788-9830-03 ")
 ;;2909
 ;;21,"68788-9830-06 ")
 ;;2910
 ;;21,"68788-9830-09 ")
 ;;2911
 ;;21,"68788-9879-03 ")
 ;;2912
 ;;21,"68788-9879-06 ")
 ;;2913
 ;;21,"68788-9905-03 ")
 ;;2914
 ;;21,"68788-9905-06 ")
 ;;2915
 ;;21,"68788-9905-09 ")
 ;;2916
 ;;21,"68968-2010-01 ")
 ;;2917
 ;;21,"68968-2020-01 ")
 ;;2918
 ;;21,"68968-2030-01 ")
 ;;2919
 ;;21,"68968-2040-01 ")
 ;;2920
 ;;21,"68968-9075-03 ")
 ;;2921
 ;;21,"69158-0000-00 ")
 ;;2922
 ;;21,"69158-0001-00 ")
 ;;2923
 ;;21,"69158-0002-00 ")
 ;;2924
 ;;21,"69238-1053-01 ")
 ;;2925
 ;;21,"69238-1053-03 ")
 ;;2926
 ;;21,"69238-1055-01 ")
 ;;2927
 ;;21,"69238-1057-01 ")
 ;;2928
 ;;21,"69238-1059-01 ")
 ;;2929
 ;;21,"69238-1061-01 ")
 ;;2930
 ;;21,"69238-1063-02 ")
 ;;2931
 ;;21,"69315-0133-01 ")
 ;;2932
 ;;21,"69315-0133-10 ")
 ;;2933
 ;;21,"69315-0134-01 ")
 ;;2934
 ;;21,"69315-0134-10 ")
 ;;2935
 ;;21,"69315-0135-01 ")
 ;;2936
 ;;21,"69315-0135-10 ")
 ;;2937
 ;;21,"69499-0302-30 ")
 ;;2938
 ;;21,"69499-0302-40 ")
 ;;2939
 ;;21,"69874-0422-10 ")
 ;;2940
 ;;21,"69874-0500-10 ")
 ;;2941
 ;;21,"70362-0721-01 ")
 ;;2942
 ;;21,"70362-0722-01 ")
 ;;2943
 ;;21,"76478-0501-20 ")
 ;;2944
 ;;21,"76478-0501-50 ")
 ;;2945
 ;;9002226,1799,.01)
 ;;BGP HEDIS CENTRAL NERVOUS NDC
 ;;9002226,1799,.02)
 ;;@
 ;;9002226,1799,.04)
 ;;n
 ;;9002226,1799,.06)
 ;;@
 ;;9002226,1799,.08)
 ;;@
 ;;9002226,1799,.09)
 ;;3170809
 ;;9002226,1799,.11)
 ;;@
 ;;9002226,1799,.12)
 ;;@
 ;;9002226,1799,.13)
 ;;1
 ;;9002226,1799,.14)
 ;;@
 ;;9002226,1799,.15)
 ;;50.67
 ;;9002226,1799,.16)
 ;;@
 ;;9002226,1799,.17)
 ;;@
 ;;9002226,1799,.22)
 ;;1
 ;;9002226,1799,3101)
 ;;@
 ;;9002226.02101,"1799,00024-5401-31 ",.01)
 ;;00024-5401-31
 ;;9002226.02101,"1799,00024-5401-31 ",.02)
 ;;00024-5401-31
 ;;9002226.02101,"1799,00024-5421-31 ",.01)
 ;;00024-5421-31
 ;;9002226.02101,"1799,00024-5421-31 ",.02)
 ;;00024-5421-31
 ;;9002226.02101,"1799,00024-5421-50 ",.01)
 ;;00024-5421-50
 ;;9002226.02101,"1799,00024-5421-50 ",.02)
 ;;00024-5421-50
 ;;9002226.02101,"1799,00024-5501-10 ",.01)
 ;;00024-5501-10
 ;;9002226.02101,"1799,00024-5501-10 ",.02)
 ;;00024-5501-10
 ;;9002226.02101,"1799,00024-5501-31 ",.01)
 ;;00024-5501-31
 ;;9002226.02101,"1799,00024-5501-31 ",.02)
 ;;00024-5501-31
 ;;9002226.02101,"1799,00024-5521-10 ",.01)
 ;;00024-5521-10
 ;;9002226.02101,"1799,00024-5521-10 ",.02)
 ;;00024-5521-10
 ;;9002226.02101,"1799,00024-5521-31 ",.01)
 ;;00024-5521-31
 ;;9002226.02101,"1799,00024-5521-31 ",.02)
 ;;00024-5521-31
 ;;9002226.02101,"1799,00024-5521-50 ",.01)
 ;;00024-5521-50
 ;;9002226.02101,"1799,00024-5521-50 ",.02)
 ;;00024-5521-50
 ;;9002226.02101,"1799,00037-0113-60 ",.01)
 ;;00037-0113-60
 ;;9002226.02101,"1799,00037-0113-60 ",.02)
 ;;00037-0113-60
 ;;9002226.02101,"1799,00037-6010-30 ",.01)
 ;;00037-6010-30
 ;;9002226.02101,"1799,00037-6010-30 ",.02)
 ;;00037-6010-30
 ;;9002226.02101,"1799,00037-6050-30 ",.01)
 ;;00037-6050-30
 ;;9002226.02101,"1799,00037-6050-30 ",.02)
 ;;00037-6050-30
 ;;9002226.02101,"1799,00054-0084-25 ",.01)
 ;;00054-0084-25
 ;;9002226.02101,"1799,00054-0084-25 ",.02)
 ;;00054-0084-25
 ;;9002226.02101,"1799,00054-0085-25 ",.01)
 ;;00054-0085-25
 ;;9002226.02101,"1799,00054-0085-25 ",.02)
 ;;00054-0085-25
 ;;9002226.02101,"1799,00054-0086-25 ",.01)
 ;;00054-0086-25
 ;;9002226.02101,"1799,00054-0086-25 ",.02)
 ;;00054-0086-25
 ;;9002226.02101,"1799,00054-0086-29 ",.01)
 ;;00054-0086-29
 ;;9002226.02101,"1799,00054-0086-29 ",.02)
 ;;00054-0086-29
 ;;9002226.02101,"1799,00054-0087-25 ",.01)
 ;;00054-0087-25
 ;;9002226.02101,"1799,00054-0087-25 ",.02)
 ;;00054-0087-25
 ;;9002226.02101,"1799,00054-0087-29 ",.01)
 ;;00054-0087-29
 ;;9002226.02101,"1799,00054-0087-29 ",.02)
 ;;00054-0087-29
 ;;9002226.02101,"1799,00054-0210-25 ",.01)
 ;;00054-0210-25
 ;;9002226.02101,"1799,00054-0210-25 ",.02)
 ;;00054-0210-25