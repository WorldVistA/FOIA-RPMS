BGP83A10 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"67544-0368-20 ")
 ;;3022
 ;;21,"67544-0368-30 ")
 ;;3023
 ;;21,"67544-0368-40 ")
 ;;3024
 ;;21,"67544-0368-45 ")
 ;;3025
 ;;21,"67544-0368-53 ")
 ;;3026
 ;;21,"67544-0368-55 ")
 ;;3027
 ;;21,"67544-0368-60 ")
 ;;3028
 ;;21,"67544-0368-70 ")
 ;;3029
 ;;21,"67544-0368-75 ")
 ;;3030
 ;;21,"67544-0368-80 ")
 ;;3031
 ;;21,"67544-0368-90 ")
 ;;3032
 ;;21,"67544-0373-10 ")
 ;;3033
 ;;21,"67544-0373-15 ")
 ;;3034
 ;;21,"67544-0373-20 ")
 ;;3035
 ;;21,"67544-0373-28 ")
 ;;3036
 ;;21,"67544-0373-30 ")
 ;;3037
 ;;21,"67544-0373-53 ")
 ;;3038
 ;;21,"67544-0373-59 ")
 ;;3039
 ;;21,"67544-0373-60 ")
 ;;3040
 ;;21,"67544-0391-01 ")
 ;;3041
 ;;21,"67544-0391-10 ")
 ;;3042
 ;;21,"67544-0391-26 ")
 ;;3043
 ;;21,"67544-0395-30 ")
 ;;3044
 ;;21,"67544-0395-53 ")
 ;;3045
 ;;21,"67544-0395-60 ")
 ;;3046
 ;;21,"67544-0395-70 ")
 ;;3047
 ;;21,"67544-0412-15 ")
 ;;3048
 ;;21,"67544-0412-30 ")
 ;;3049
 ;;21,"67544-0412-45 ")
 ;;3050
 ;;21,"67544-0412-53 ")
 ;;3051
 ;;21,"67544-0412-60 ")
 ;;3052
 ;;21,"67544-0412-70 ")
 ;;3053
 ;;21,"67544-0412-80 ")
 ;;3054
 ;;21,"67544-0414-15 ")
 ;;3055
 ;;21,"67544-0414-30 ")
 ;;3056
 ;;21,"67544-0414-45 ")
 ;;3057
 ;;21,"67544-0414-53 ")
 ;;3058
 ;;21,"67544-0414-60 ")
 ;;3059
 ;;21,"67544-0414-70 ")
 ;;3060
 ;;21,"67544-0414-80 ")
 ;;3061
 ;;21,"67544-0415-15 ")
 ;;3062
 ;;21,"67544-0415-20 ")
 ;;3063
 ;;21,"67544-0415-30 ")
 ;;3064
 ;;21,"67544-0415-45 ")
 ;;3065
 ;;21,"67544-0415-53 ")
 ;;3066
 ;;21,"67544-0415-60 ")
 ;;3067
 ;;21,"67544-0415-70 ")
 ;;3068
 ;;21,"67544-0415-75 ")
 ;;3069
 ;;21,"67544-0415-80 ")
 ;;3070
 ;;21,"67544-0415-92 ")
 ;;3071
 ;;21,"67544-0419-15 ")
 ;;3072
 ;;21,"67544-0419-20 ")
 ;;3073
 ;;21,"67544-0419-30 ")
 ;;3074
 ;;21,"67544-0419-45 ")
 ;;3075
 ;;21,"67544-0419-53 ")
 ;;3076
 ;;21,"67544-0419-60 ")
 ;;3077
 ;;21,"67544-0419-70 ")
 ;;3078
 ;;21,"67544-0419-75 ")
 ;;3079
 ;;21,"67544-0419-80 ")
 ;;3080
 ;;21,"67544-0420-15 ")
 ;;3081
 ;;21,"67544-0420-30 ")
 ;;3082
 ;;21,"67544-0420-45 ")
 ;;3083
 ;;21,"67544-0420-53 ")
 ;;3084
 ;;21,"67544-0420-55 ")
 ;;3085
 ;;21,"67544-0420-60 ")
 ;;3086
 ;;21,"67544-0420-70 ")
 ;;3087
 ;;21,"67544-0420-75 ")
 ;;3088
 ;;21,"67544-0420-80 ")
 ;;3089
 ;;21,"67544-0420-90 ")
 ;;3090
 ;;21,"67544-0487-15 ")
 ;;3091
 ;;21,"67544-0487-30 ")
 ;;3092
 ;;21,"67544-0487-53 ")
 ;;3093
 ;;21,"67544-0487-75 ")
 ;;3094
 ;;21,"67544-0496-30 ")
 ;;3095
 ;;21,"67544-0496-32 ")
 ;;3096
 ;;21,"67544-0496-53 ")
 ;;3097
 ;;21,"67544-0496-60 ")
 ;;3098
 ;;21,"67544-0496-70 ")
 ;;3099
 ;;21,"67544-0529-15 ")
 ;;3100
 ;;21,"67544-0529-30 ")
 ;;3101
 ;;21,"67544-0529-45 ")
 ;;3102
 ;;21,"67544-0529-53 ")
 ;;3103
 ;;21,"67544-0529-60 ")
 ;;3104
 ;;21,"67544-0529-70 ")
 ;;3105
 ;;21,"67544-0529-75 ")
 ;;3106
 ;;21,"67544-0529-80 ")
 ;;3107
 ;;21,"67544-0579-30 ")
 ;;3108
 ;;21,"67544-0579-53 ")
 ;;3109
 ;;21,"67544-0579-60 ")
 ;;3110
 ;;21,"67544-0629-15 ")
 ;;3111
 ;;21,"67544-0629-20 ")
 ;;3112
 ;;21,"67544-0629-30 ")
 ;;3113
 ;;21,"67544-0629-45 ")
 ;;3114
 ;;21,"67544-0629-53 ")
 ;;3115
 ;;21,"67544-0629-55 ")
 ;;3116
 ;;21,"67544-0629-60 ")
 ;;3117
 ;;21,"67544-0629-70 ")
 ;;3118
 ;;21,"67544-0629-75 ")
 ;;3119
 ;;21,"67544-0629-80 ")
 ;;3120
 ;;21,"67544-0629-90 ")
 ;;3121
 ;;21,"67544-0629-92 ")
 ;;3122
 ;;21,"67544-0639-15 ")
 ;;3123
 ;;21,"67544-0639-30 ")
 ;;3124
 ;;21,"67544-0639-45 ")
 ;;3125
 ;;21,"67544-0639-53 ")
 ;;3126
 ;;21,"67544-0639-60 ")
 ;;3127
 ;;21,"67544-0639-70 ")
 ;;3128
 ;;21,"67544-0639-75 ")
 ;;3129
 ;;21,"67544-0639-80 ")
 ;;3130
 ;;21,"67544-0639-92 ")
 ;;3131
 ;;21,"67544-0640-15 ")
 ;;3132
 ;;21,"67544-0640-20 ")
 ;;3133
 ;;21,"67544-0640-30 ")
 ;;3134
 ;;21,"67544-0640-45 ")
 ;;3135
 ;;21,"67544-0640-53 ")
 ;;3136
 ;;21,"67544-0640-55 ")
 ;;3137
 ;;21,"67544-0640-60 ")
 ;;3138
 ;;21,"67544-0640-70 ")
 ;;3139
 ;;21,"67544-0640-75 ")
 ;;3140
 ;;21,"67544-0640-80 ")
 ;;3141
 ;;21,"67544-0641-15 ")
 ;;3142
 ;;21,"67544-0641-19 ")
 ;;3143
 ;;21,"67544-0641-30 ")
 ;;3144
 ;;21,"67544-0641-45 ")
 ;;3145
 ;;21,"67544-0641-53 ")
 ;;3146
 ;;21,"67544-0641-60 ")
 ;;3147
 ;;21,"67544-0641-70 ")
 ;;3148
 ;;21,"67544-0641-75 ")
 ;;3149
 ;;21,"67544-0641-80 ")
 ;;3150
 ;;21,"67544-0641-90 ")
 ;;3151
 ;;21,"67544-0641-92 ")
 ;;3152
 ;;21,"67544-0697-15 ")
 ;;3153
 ;;21,"67544-0697-30 ")
 ;;3154
 ;;21,"67544-0697-45 ")
 ;;3155
 ;;21,"67544-0697-53 ")
 ;;3156
 ;;21,"67544-0697-60 ")
 ;;3157
 ;;21,"67544-0697-70 ")
 ;;3158
 ;;21,"67544-0697-75 ")
 ;;3159
 ;;21,"67544-0697-80 ")
 ;;3160
 ;;21,"67544-0707-15 ")
 ;;3161
 ;;21,"67544-0707-30 ")
 ;;3162
 ;;21,"67544-0707-45 ")
 ;;3163
 ;;21,"67544-0707-53 ")
 ;;3164
 ;;21,"67544-0707-60 ")
 ;;3165
 ;;21,"67544-0707-70 ")
 ;;3166
 ;;21,"67544-0707-80 ")
 ;;3167
 ;;21,"67544-0720-15 ")
 ;;3168
 ;;21,"67544-0720-30 ")
 ;;3169
 ;;21,"67544-0720-45 ")
 ;;3170
 ;;21,"67544-0720-53 ")
 ;;3171
 ;;21,"67544-0720-60 ")
 ;;3172
 ;;21,"67544-0720-70 ")
 ;;3173
 ;;21,"67544-0720-75 ")
 ;;3174
 ;;21,"67544-0720-80 ")
 ;;3175
 ;;21,"67544-0720-90 ")
 ;;3176
 ;;21,"67544-0725-30 ")
 ;;3177
 ;;21,"67544-0725-53 ")
 ;;3178
 ;;21,"67544-0734-15 ")
 ;;3179
 ;;21,"67544-0734-30 ")
 ;;3180
 ;;21,"67544-0734-45 ")
 ;;3181
 ;;21,"67544-0734-53 ")
 ;;3182
 ;;21,"67544-0734-60 ")
 ;;3183
 ;;21,"67544-0734-70 ")
 ;;3184
 ;;21,"67544-0734-80 ")
 ;;3185
 ;;21,"67544-0752-30 ")
 ;;3186
 ;;21,"67544-0753-30 ")
 ;;3187
 ;;21,"67544-0753-60 ")
 ;;3188
 ;;21,"67544-0762-30 ")
 ;;3189
 ;;21,"67544-0762-53 ")
 ;;3190
 ;;21,"67544-0762-60 ")
 ;;3191
 ;;21,"67544-0785-30 ")
 ;;3192
 ;;21,"67544-0813-53 ")
 ;;3193
 ;;21,"67544-0870-10 ")
 ;;3194
 ;;21,"67544-0870-15 ")
 ;;3195
 ;;21,"67544-0870-20 ")
 ;;3196
 ;;21,"67544-0870-30 ")
 ;;3197
 ;;21,"67544-0870-45 ")
 ;;3198
 ;;21,"67544-0870-53 ")
 ;;3199
 ;;21,"67544-0870-60 ")
 ;;3200
 ;;21,"67544-0870-70 ")
 ;;3201
 ;;21,"67544-0870-75 ")
 ;;3202
 ;;21,"67544-0870-80 ")
 ;;3203
 ;;21,"67544-0870-92 ")
 ;;3204
 ;;21,"67544-0879-10 ")
 ;;3205
 ;;21,"67544-0879-15 ")
 ;;3206
 ;;21,"67544-0879-20 ")
 ;;3207
 ;;21,"67544-0879-30 ")
 ;;3208
 ;;21,"67544-0879-45 ")
 ;;3209
 ;;21,"67544-0879-53 ")
 ;;3210
 ;;21,"67544-0879-55 ")
 ;;3211
 ;;21,"67544-0879-60 ")
 ;;3212
 ;;21,"67544-0879-70 ")
 ;;3213
 ;;21,"67544-0879-75 ")
 ;;3214
 ;;21,"67544-0879-80 ")
 ;;3215
 ;;21,"67544-0879-92 ")
 ;;3216
 ;;21,"67544-0982-15 ")
 ;;3217
 ;;21,"67544-0982-30 ")
 ;;3218
 ;;21,"67544-0982-45 ")
 ;;3219
 ;;21,"67544-0982-53 ")
 ;;3220
 ;;21,"67544-0982-60 ")
 ;;3221
 ;;21,"67544-0982-70 ")
 ;;3222
 ;;21,"67544-0982-75 ")
 ;;3223
 ;;21,"67544-0982-80 ")
 ;;3224
 ;;21,"67544-0982-92 ")
 ;;3225
 ;;21,"67877-0146-01 ")
 ;;3226
 ;;21,"67877-0146-05 ")
 ;;3227
 ;;21,"67877-0147-01 ")
 ;;3228
 ;;21,"67877-0147-05 ")
 ;;3229
 ;;21,"67877-0148-01 ")
 ;;3230
 ;;21,"67877-0149-30 ")
 ;;3231
 ;;21,"68071-0220-20 ")
 ;;3232
 ;;21,"68071-0220-30 ")
 ;;3233
 ;;21,"68071-0460-90 ")
 ;;3234
 ;;21,"68071-0734-60 ")
 ;;3235
 ;;21,"68071-2015-09 ")
 ;;3236
 ;;21,"68084-0414-01 ")
 ;;3237
 ;;21,"68084-0414-11 ")
 ;;3238
 ;;21,"68084-0549-11 ")
 ;;3239
 ;;21,"68084-0549-21 ")
 ;;3240
 ;;21,"68084-0647-01 ")
 ;;3241
 ;;21,"68084-0647-11 ")
 ;;3242
 ;;21,"68084-0672-01 ")
 ;;3243
 ;;21,"68084-0672-11 ")
 ;;3244
 ;;21,"68084-0736-01 ")
 ;;3245
 ;;21,"68084-0736-11 ")
 ;;3246
 ;;21,"68084-0742-01 ")
 ;;3247
 ;;21,"68084-0742-11 ")
 ;;3248
 ;;21,"68084-0754-01 ")
 ;;3249
 ;;21,"68084-0754-11 ")
 ;;3250
 ;;21,"68084-0784-11 ")
 ;;3251
 ;;21,"68084-0784-21 ")
 ;;3252
 ;;21,"68094-0716-59 ")
 ;;3253
 ;;21,"68094-0716-62 ")
 ;;3254
 ;;21,"68094-0750-59 ")
 ;;3255
 ;;21,"68094-0750-62 ")
 ;;3256
 ;;21,"68094-0762-59 ")
 ;;3257
 ;;21,"68094-0762-62 ")
 ;;3258
 ;;21,"68094-0764-59 ")
 ;;3259
 ;;21,"68094-0764-62 ")
 ;;3260
 ;;21,"68405-0013-06 ")
 ;;3261
 ;;21,"68682-0409-10 ")
 ;;3262
 ;;21,"68788-2027-03 ")
 ;;3263
 ;;21,"68788-2027-09 ")
 ;;3264
 ;;21,"68788-2029-03 ")
 ;;3265
 ;;21,"68788-2029-06 ")
 ;;3266
 ;;21,"68788-6358-02 ")
 ;;3267
 ;;21,"68788-6358-03 ")
 ;;3268
 ;;21,"68788-6358-06 ")
 ;;3269
 ;;21,"68788-6358-09 ")
 ;;3270
 ;;21,"68788-6381-02 ")
 ;;3271
 ;;21,"68788-6381-03 ")
 ;;3272
 ;;21,"68788-6381-06 ")
 ;;3273
 ;;21,"68788-6381-08 ")
 ;;3274
 ;;21,"68788-6381-09 ")
 ;;3275
 ;;21,"68788-6413-00 ")
 ;;3276
 ;;21,"68788-6413-01 ")
 ;;3277
 ;;21,"68788-6413-02 ")
 ;;3278
 ;;21,"68788-6413-03 ")
 ;;3279
 ;;21,"68788-6413-04 ")
 ;;3280
 ;;21,"68788-6413-05 ")
 ;;3281
 ;;21,"68788-6413-06 ")
 ;;3282
 ;;21,"68788-6413-08 ")
 ;;3283
 ;;21,"68788-6413-09 ")
 ;;3284
 ;;21,"68788-6943-03 ")
 ;;3285
 ;;21,"68788-6943-06 ")
 ;;3286
 ;;21,"68788-6943-09 ")
 ;;3287
 ;;21,"68788-7394-02 ")
 ;;3288
 ;;21,"68788-7394-03 ")
 ;;3289
 ;;21,"68788-7394-06 ")
 ;;3290
 ;;21,"68788-7394-09 ")
 ;;3291
 ;;21,"68788-9001-03 ")
 ;;3292
 ;;21,"68788-9001-09 ")
 ;;3293
 ;;21,"68788-9002-03 ")
 ;;3294
 ;;21,"68788-9002-06 ")
 ;;3295
 ;;21,"68788-9002-09 ")
 ;;3296
 ;;21,"68788-9003-09 ")
 ;;3297
 ;;21,"68788-9207-06 ")
 ;;3298
 ;;21,"68788-9207-08 ")
 ;;3299
 ;;21,"68788-9208-03 ")
 ;;3300
 ;;21,"68788-9258-01 ")
 ;;3301
 ;;21,"68788-9258-03 ")
 ;;3302
 ;;21,"68788-9258-06 ")
 ;;3303
 ;;21,"68788-9258-08 ")
 ;;3304
 ;;21,"68788-9258-09 ")
 ;;3305
 ;;21,"68788-9430-02 ")
 ;;3306
 ;;21,"68788-9430-03 ")
 ;;3307
 ;;21,"68788-9430-06 ")
 ;;3308
 ;;21,"68788-9430-09 ")
 ;;3309
 ;;21,"68788-9495-06 ")
 ;;3310
 ;;21,"68788-9495-09 ")
 ;;3311
 ;;21,"68788-9864-03 ")
 ;;3312
 ;;21,"68788-9865-06 ")
 ;;3313
 ;;21,"68788-9936-06 ")
 ;;3314
 ;;21,"68788-9936-08 ")
 ;;3315
 ;;21,"68788-9937-03 ")
 ;;3316
 ;;21,"68788-9940-03 ")
 ;;3317
 ;;21,"68788-9940-06 ")
 ;;3318
 ;;21,"68788-9941-03 ")
 ;;3319
 ;;21,"68788-9941-06 ")
 ;;3320
 ;;21,"68788-9952-09 ")
 ;;3321
 ;;21,"68788-9953-03 ")
 ;;3322
 ;;21,"68788-9953-06 ")
 ;;3323
 ;;21,"68788-9953-09 ")
 ;;3324
 ;;21,"68788-9954-03 ")
 ;;3325
 ;;21,"68788-9954-09 ")
 ;;3326
 ;;21,"69315-0904-01 ")
 ;;3327
 ;;21,"69315-0904-05 ")
 ;;3328
 ;;21,"69315-0904-10 ")
 ;;3329
 ;;21,"69315-0905-01 ")
 ;;3330
 ;;21,"69315-0905-05 ")
 ;;3331
 ;;21,"69315-0905-10 ")
 ;;3332
 ;;21,"69315-0906-01 ")
 ;;3333
 ;;21,"69315-0906-05 ")
 ;;3334
 ;;21,"69315-0906-10 ")
 ;;3335
 ;;21,"69452-0110-20 ")
 ;;3336
 ;;21,"69452-0110-30 ")
 ;;3337
 ;;21,"69452-0110-32 ")
 ;;3338
 ;;21,"69452-0111-20 ")
 ;;3339
 ;;21,"69452-0111-30 ")
 ;;3340
 ;;21,"69452-0111-32 ")
 ;;3341
 ;;21,"69452-0112-20 ")
 ;;3342
 ;;21,"69452-0112-30 ")
 ;;3343
 ;;21,"69452-0112-32 ")
 ;;3344
 ;;21,"69452-0113-20 ")
 ;;3345
 ;;21,"69452-0113-30 ")
 ;;3346
 ;;21,"69874-0322-10 ")
 ;;3347
 ;;21,"76218-0405-01 ")
 ;;3348
 ;;21,"76439-0302-10 ")
 ;;3349
 ;;9002226,1828,.01)
 ;;BGP PQA BENZODIAZ OP NDC
 ;;9002226,1828,.02)
 ;;@
 ;;9002226,1828,.04)
 ;;@
 ;;9002226,1828,.06)
 ;;@
 ;;9002226,1828,.08)
 ;;@