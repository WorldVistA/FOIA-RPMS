ATXFAE ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 01, 2017;
 ;;5.1;TAXONOMY;**24**;FEB 04, 1997;Build 40
 ;;DM AUDIT DIABETIC RETINOPATHY
 ;
 ; This routine loads Taxonomy DM AUDIT DIABETIC RETINOPATHY
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"362.01 ")
 ;;1
 ;;21,"362.02 ")
 ;;2
 ;;21,"362.03 ")
 ;;3
 ;;21,"362.04 ")
 ;;4
 ;;21,"362.05 ")
 ;;5
 ;;21,"362.06 ")
 ;;6
 ;;21,"E08.311 ")
 ;;7
 ;;21,"E08.319 ")
 ;;8
 ;;21,"E08.3211 ")
 ;;9
 ;;21,"E08.3212 ")
 ;;10
 ;;21,"E08.3213 ")
 ;;11
 ;;21,"E08.3219 ")
 ;;12
 ;;21,"E08.329 ")
 ;;13
 ;;21,"E08.3291 ")
 ;;14
 ;;21,"E08.3292 ")
 ;;15
 ;;21,"E08.3293 ")
 ;;16
 ;;21,"E08.3299 ")
 ;;17
 ;;21,"E08.331 ")
 ;;18
 ;;21,"E08.3311 ")
 ;;19
 ;;21,"E08.3312 ")
 ;;20
 ;;21,"E08.3313 ")
 ;;21
 ;;21,"E08.3319 ")
 ;;22
 ;;21,"E08.339 ")
 ;;23
 ;;21,"E08.3391 ")
 ;;24
 ;;21,"E08.3392 ")
 ;;25
 ;;21,"E08.3393 ")
 ;;26
 ;;21,"E08.3399 ")
 ;;27
 ;;21,"E08.341 ")
 ;;28
 ;;21,"E08.3411 ")
 ;;29
 ;;21,"E08.3412 ")
 ;;30
 ;;21,"E08.3413 ")
 ;;31
 ;;21,"E08.3419 ")
 ;;32
 ;;21,"E08.349 ")
 ;;33
 ;;21,"E08.3491 ")
 ;;34
 ;;21,"E08.3492 ")
 ;;35
 ;;21,"E08.3493 ")
 ;;36
 ;;21,"E08.3499 ")
 ;;37
 ;;21,"E08.351 ")
 ;;38
 ;;21,"E08.3511 ")
 ;;39
 ;;21,"E08.3512 ")
 ;;40
 ;;21,"E08.3513 ")
 ;;41
 ;;21,"E08.3519 ")
 ;;42
 ;;21,"E08.3521 ")
 ;;43
 ;;21,"E08.3522 ")
 ;;44
 ;;21,"E08.3523 ")
 ;;45
 ;;21,"E08.3529 ")
 ;;46
 ;;21,"E08.3531 ")
 ;;47
 ;;21,"E08.3532 ")
 ;;48
 ;;21,"E08.3533 ")
 ;;49
 ;;21,"E08.3539 ")
 ;;50
 ;;21,"E08.3541 ")
 ;;51
 ;;21,"E08.3542 ")
 ;;52
 ;;21,"E08.3543 ")
 ;;53
 ;;21,"E08.3549 ")
 ;;54
 ;;21,"E08.3551 ")
 ;;55
 ;;21,"E08.3552 ")
 ;;56
 ;;21,"E08.3553 ")
 ;;57
 ;;21,"E08.3559 ")
 ;;58
 ;;21,"E08.359 ")
 ;;59
 ;;21,"E08.3591 ")
 ;;60
 ;;21,"E08.3592 ")
 ;;61
 ;;21,"E08.3593 ")
 ;;62
 ;;21,"E08.3599 ")
 ;;63
 ;;21,"E09.311 ")
 ;;64
 ;;21,"E09.319 ")
 ;;65
 ;;21,"E09.321 ")
 ;;66
 ;;21,"E09.3211 ")
 ;;67
 ;;21,"E09.3212 ")
 ;;68
 ;;21,"E09.3213 ")
 ;;69
 ;;21,"E09.3219 ")
 ;;70
 ;;21,"E09.329 ")
 ;;71
 ;;21,"E09.3291 ")
 ;;72
 ;;21,"E09.3292 ")
 ;;73
 ;;21,"E09.3293 ")
 ;;74
 ;;21,"E09.3299 ")
 ;;75
 ;;21,"E09.331 ")
 ;;76
 ;;21,"E09.3311 ")
 ;;77
 ;;21,"E09.3312 ")
 ;;78
 ;;21,"E09.3313 ")
 ;;79
 ;;21,"E09.3319 ")
 ;;80
 ;;21,"E09.339 ")
 ;;81
 ;;21,"E09.3391 ")
 ;;82
 ;;21,"E09.3392 ")
 ;;83
 ;;21,"E09.3393 ")
 ;;84
 ;;21,"E09.3399 ")
 ;;85
 ;;21,"E09.341 ")
 ;;86
 ;;21,"E09.3411 ")
 ;;87
 ;;21,"E09.3412 ")
 ;;88
 ;;21,"E09.3413 ")
 ;;89
 ;;21,"E09.3419 ")
 ;;90
 ;;21,"E09.349 ")
 ;;91
 ;;21,"E09.3491 ")
 ;;92
 ;;21,"E09.3492 ")
 ;;93
 ;;21,"E09.3493 ")
 ;;94
 ;;21,"E09.3499 ")
 ;;95
 ;;21,"E09.351 ")
 ;;96
 ;;21,"E09.3511 ")
 ;;97
 ;;21,"E09.3512 ")
 ;;98
 ;;21,"E09.3513 ")
 ;;99
 ;;21,"E09.3519 ")
 ;;100
 ;;21,"E09.3521 ")
 ;;101
 ;;21,"E09.3522 ")
 ;;102
 ;;21,"E09.3523 ")
 ;;103
 ;;21,"E09.3529 ")
 ;;104
 ;;21,"E09.3531 ")
 ;;105
 ;;21,"E09.3532 ")
 ;;106
 ;;21,"E09.3533 ")
 ;;107
 ;;21,"E09.3539 ")
 ;;108
 ;;21,"E09.3541 ")
 ;;109
 ;;21,"E09.3542 ")
 ;;110
 ;;21,"E09.3543 ")
 ;;111
 ;;21,"E09.3549 ")
 ;;112
 ;;21,"E09.3551 ")
 ;;113
 ;;21,"E09.3552 ")
 ;;114
 ;;21,"E09.3553 ")
 ;;115
 ;;21,"E09.3559 ")
 ;;116
 ;;21,"E09.359 ")
 ;;117
 ;;21,"E09.3591 ")
 ;;118
 ;;21,"E09.3592 ")
 ;;119
 ;;21,"E09.3593 ")
 ;;120
 ;;21,"E09.3599 ")
 ;;121
 ;;21,"E10.311 ")
 ;;122
 ;;21,"E10.319 ")
 ;;123
 ;;21,"E10.321 ")
 ;;124
 ;;21,"E10.3211 ")
 ;;125
 ;;21,"E10.3212 ")
 ;;126
 ;;21,"E10.3213 ")
 ;;127
 ;;21,"E10.3219 ")
 ;;128
 ;;21,"E10.329 ")
 ;;129
 ;;21,"E10.3291 ")
 ;;130
 ;;21,"E10.3292 ")
 ;;131
 ;;21,"E10.3293 ")
 ;;132
 ;;21,"E10.3299 ")
 ;;133
 ;;21,"E10.331 ")
 ;;134
 ;;21,"E10.3311 ")
 ;;135
 ;;21,"E10.3312 ")
 ;;136
 ;;21,"E10.3313 ")
 ;;137
 ;;21,"E10.3319 ")
 ;;138
 ;;21,"E10.339 ")
 ;;139
 ;;21,"E10.3391 ")
 ;;140
 ;;21,"E10.3392 ")
 ;;141
 ;;21,"E10.3393 ")
 ;;142
 ;;21,"E10.3399 ")
 ;;143
 ;;21,"E10.341 ")
 ;;144
 ;;21,"E10.3411 ")
 ;;145
 ;;21,"E10.3412 ")
 ;;146
 ;;21,"E10.3413 ")
 ;;147
 ;;21,"E10.3419 ")
 ;;148
 ;;21,"E10.349 ")
 ;;149
 ;;21,"E10.3491 ")
 ;;150
 ;;21,"E10.3492 ")
 ;;151
 ;;21,"E10.3493 ")
 ;;152
 ;;21,"E10.3499 ")
 ;;153
 ;;21,"E10.351 ")
 ;;154
 ;;21,"E10.3511 ")
 ;;155
 ;;21,"E10.3512 ")
 ;;156
 ;;21,"E10.3513 ")
 ;;157
 ;;21,"E10.3519 ")
 ;;158
 ;;21,"E10.3521 ")
 ;;159
 ;;21,"E10.3522 ")
 ;;160
 ;;21,"E10.3523 ")
 ;;161
 ;;21,"E10.3529 ")
 ;;162
 ;;21,"E10.3531 ")
 ;;163
 ;;21,"E10.3532 ")
 ;;164
 ;;21,"E10.3533 ")
 ;;165
 ;;21,"E10.3539 ")
 ;;166
 ;;21,"E10.3541 ")
 ;;167
 ;;21,"E10.3542 ")
 ;;168
 ;;21,"E10.3543 ")
 ;;169
 ;;21,"E10.3549 ")
 ;;170
 ;;21,"E10.3551 ")
 ;;171
 ;;21,"E10.3552 ")
 ;;172
 ;;21,"E10.3553 ")
 ;;173
 ;;21,"E10.3559 ")
 ;;174
 ;;21,"E10.359 ")
 ;;175
 ;;21,"E10.3591 ")
 ;;176
 ;;21,"E10.3592 ")
 ;;177
 ;;21,"E10.3593 ")
 ;;178
 ;;21,"E10.3599 ")
 ;;179
 ;;21,"E11.311 ")
 ;;180
 ;;21,"E11.319 ")
 ;;181
 ;;21,"E11.321 ")
 ;;182
 ;;21,"E11.3211 ")
 ;;183
 ;;21,"E11.3212 ")
 ;;184
 ;;21,"E11.3213 ")
 ;;185
 ;;21,"E11.3219 ")
 ;;186
 ;;21,"E11.329 ")
 ;;187
 ;;21,"E11.3291 ")
 ;;188
 ;;21,"E11.3292 ")
 ;;189
 ;;21,"E11.3293 ")
 ;;190
 ;;21,"E11.3299 ")
 ;;191
 ;;21,"E11.331 ")
 ;;192
 ;;21,"E11.3311 ")
 ;;193
 ;;21,"E11.3312 ")
 ;;194
 ;;21,"E11.3313 ")
 ;;195
 ;;21,"E11.3319 ")
 ;;196
 ;;21,"E11.339 ")
 ;;197
 ;;21,"E11.3391 ")
 ;;198
 ;;21,"E11.3392 ")
 ;;199
 ;;21,"E11.3393 ")
 ;;200
 ;;21,"E11.3399 ")
 ;;201
 ;;21,"E11.341 ")
 ;;202
 ;;21,"E11.3411 ")
 ;;203
 ;;21,"E11.3412 ")
 ;;204
 ;;21,"E11.3413 ")
 ;;205
 ;;21,"E11.3419 ")
 ;;206
 ;;21,"E11.349 ")
 ;;207
 ;;21,"E11.3491 ")
 ;;208
 ;;21,"E11.3492 ")
 ;;209
 ;;21,"E11.3493 ")
 ;;210
 ;;21,"E11.3499 ")
 ;;211
 ;;21,"E11.351 ")
 ;;212
 ;;21,"E11.3511 ")
 ;;213
 ;;21,"E11.3512 ")
 ;;214
 ;;21,"E11.3513 ")
 ;;215
 ;;21,"E11.3519 ")
 ;;216
 ;;21,"E11.3521 ")
 ;;217
 ;;21,"E11.3522 ")
 ;;218
 ;;21,"E11.3523 ")
 ;;219
 ;;21,"E11.3529 ")
 ;;220
 ;;21,"E11.3531 ")
 ;;221
 ;;21,"E11.3532 ")
 ;;222
 ;;21,"E11.3533 ")
 ;;223
 ;;21,"E11.3539 ")
 ;;224
 ;;21,"E11.3541 ")
 ;;225
 ;;21,"E11.3542 ")
 ;;226
 ;;21,"E11.3543 ")
 ;;227
 ;;21,"E11.3549 ")
 ;;228
 ;;21,"E11.3551 ")
 ;;229
 ;;21,"E11.3552 ")
 ;;230
 ;;21,"E11.3553 ")
 ;;231
 ;;21,"E11.3559 ")
 ;;232
 ;;21,"E11.359 ")
 ;;233
 ;;21,"E11.3591 ")
 ;;234
 ;;21,"E11.3592 ")
 ;;235
 ;;21,"E11.3593 ")
 ;;236
 ;;21,"E11.3599 ")
 ;;237
 ;;21,"E13.311 ")
 ;;238
 ;;21,"E13.319 ")
 ;;239
 ;;21,"E13.321 ")
 ;;240
 ;;21,"E13.3211 ")
 ;;241
 ;;21,"E13.3212 ")
 ;;242
 ;;21,"E13.3213 ")
 ;;243
 ;;21,"E13.3219 ")
 ;;244
 ;;21,"E13.329 ")
 ;;245
 ;;21,"E13.3291 ")
 ;;246
 ;;21,"E13.3292 ")
 ;;247
 ;;21,"E13.3293 ")
 ;;248
 ;;21,"E13.3299 ")
 ;;249
 ;;21,"E13.331 ")
 ;;250
 ;;21,"E13.3311 ")
 ;;251
 ;;21,"E13.3312 ")
 ;;252
 ;;21,"E13.3313 ")
 ;;253
 ;;21,"E13.3319 ")
 ;;254
 ;;21,"E13.339 ")
 ;;255
 ;;21,"E13.3391 ")
 ;;256
 ;;21,"E13.3392 ")
 ;;257
 ;;21,"E13.3393 ")
 ;;258
 ;;21,"E13.3399 ")
 ;;259
 ;;21,"E13.341 ")
 ;;260
 ;;21,"E13.3411 ")
 ;;261
 ;;21,"E13.3412 ")
 ;;262
 ;;21,"E13.3413 ")
 ;;263
 ;;21,"E13.3419 ")
 ;;264
 ;;21,"E13.349 ")
 ;;265
 ;;21,"E13.3491 ")
 ;;266
 ;;21,"E13.3492 ")
 ;;267
 ;;21,"E13.3493 ")
 ;;268
 ;;21,"E13.3499 ")
 ;;269
 ;;21,"E13.351 ")
 ;;270
 ;;21,"E13.3511 ")
 ;;271
 ;;21,"E13.3512 ")
 ;;272
 ;;21,"E13.3513 ")
 ;;273
 ;;21,"E13.3519 ")
 ;;274
 ;;21,"E13.3521 ")
 ;;275
 ;;21,"E13.3522 ")
 ;;276
 ;;21,"E13.3523 ")
 ;;277
 ;;21,"E13.3529 ")
 ;;278
 ;;21,"E13.3531 ")
 ;;279
 ;;21,"E13.3532 ")
 ;;280
 ;;21,"E13.3533 ")
 ;;281
 ;;21,"E13.3539 ")
 ;;282
 ;;21,"E13.3541 ")
 ;;283
 ;;21,"E13.3542 ")
 ;;284
 ;;21,"E13.3543 ")
 ;;285
 ;;21,"E13.3549 ")
 ;;286
 ;;21,"E13.3551 ")
 ;;287
 ;;21,"E13.3552 ")
 ;;288
 ;;21,"E13.3553 ")
 ;;289
 ;;21,"E13.3559 ")
 ;;290
 ;;21,"E13.359 ")
 ;;291
 ;;21,"E13.3591 ")
 ;;292
 ;;21,"E13.3592 ")
 ;;293
 ;;21,"E13.3593 ")
 ;;294
 ;;21,"E13.3599 ")
 ;;295
 ;;9002226,2207,.01)
 ;;DM AUDIT DIABETIC RETINOPATHY
 ;;9002226,2207,.02)
 ;;@
 ;;9002226,2207,.04)
 ;;n
 ;;9002226,2207,.06)
 ;;@
 ;;9002226,2207,.08)
 ;;@
 ;;9002226,2207,.09)
 ;;3171013
 ;;9002226,2207,.11)
 ;;@
 ;;9002226,2207,.12)
 ;;31
 ;;9002226,2207,.13)
 ;;1
 ;;9002226,2207,.14)
 ;;@
 ;;9002226,2207,.15)
 ;;80
 ;;9002226,2207,.16)
 ;;@
 ;;9002226,2207,.17)
 ;;@
 ;;9002226,2207,.22)
 ;;1
 ;;9002226,2207,3101)
 ;;@
 ;;9002226.02101,"2207,362.01 ",.01)
 ;;362.01 
 ;;9002226.02101,"2207,362.01 ",.02)
 ;;362.01 
 ;;9002226.02101,"2207,362.01 ",.03)
 ;;1
 ;;9002226.02101,"2207,362.02 ",.01)
 ;;362.02 
 ;;9002226.02101,"2207,362.02 ",.02)
 ;;362.02 
 ;;9002226.02101,"2207,362.02 ",.03)
 ;;1
 ;;9002226.02101,"2207,362.03 ",.01)
 ;;362.03 
 ;;9002226.02101,"2207,362.03 ",.02)
 ;;362.03 
 ;;9002226.02101,"2207,362.03 ",.03)
 ;;1
 ;;9002226.02101,"2207,362.04 ",.01)
 ;;362.04 
 ;;9002226.02101,"2207,362.04 ",.02)
 ;;362.04 
 ;;9002226.02101,"2207,362.04 ",.03)
 ;;1
 ;;9002226.02101,"2207,362.05 ",.01)
 ;;362.05 
 ;;9002226.02101,"2207,362.05 ",.02)
 ;;362.05 
 ;;9002226.02101,"2207,362.05 ",.03)
 ;;1
 ;;9002226.02101,"2207,362.06 ",.01)
 ;;362.06 
 ;;9002226.02101,"2207,362.06 ",.02)
 ;;362.06 
 ;;9002226.02101,"2207,362.06 ",.03)
 ;;1
 ;;9002226.02101,"2207,E08.311 ",.01)
 ;;E08.311 
 ;;9002226.02101,"2207,E08.311 ",.02)
 ;;E08.311 
 ;;9002226.02101,"2207,E08.311 ",.03)
 ;;30
 ;;9002226.02101,"2207,E08.319 ",.01)
 ;;E08.319 
 ;;9002226.02101,"2207,E08.319 ",.02)
 ;;E08.319 
 ;;9002226.02101,"2207,E08.319 ",.03)
 ;;30
 ;;9002226.02101,"2207,E08.3211 ",.01)
 ;;E08.3211 
 ;;9002226.02101,"2207,E08.3211 ",.02)
 ;;E08.3211 
 ;;9002226.02101,"2207,E08.3211 ",.03)
 ;;30
 ;;9002226.02101,"2207,E08.3212 ",.01)
 ;;E08.3212 
 ;;9002226.02101,"2207,E08.3212 ",.02)
 ;;E08.3212 
 ;;9002226.02101,"2207,E08.3212 ",.03)
 ;;30
 ;;9002226.02101,"2207,E08.3213 ",.01)
 ;;E08.3213 
 ;;9002226.02101,"2207,E08.3213 ",.02)
 ;;E08.3213 
 ;;9002226.02101,"2207,E08.3213 ",.03)
 ;;30
 ;;9002226.02101,"2207,E08.3219 ",.01)
 ;;E08.3219 
 ;;9002226.02101,"2207,E08.3219 ",.02)
 ;;E08.3219 
 ;;9002226.02101,"2207,E08.3219 ",.03)
 ;;30
 ;;9002226.02101,"2207,E08.329 ",.01)
 ;;E08.329 
 ;;9002226.02101,"2207,E08.329 ",.02)
 ;;E08.329 
 ;;9002226.02101,"2207,E08.329 ",.03)
 ;;30
 ;;9002226.02101,"2207,E08.3291 ",.01)
 ;;E08.3291 
 ;;9002226.02101,"2207,E08.3291 ",.02)
 ;;E08.3291 
 ;;9002226.02101,"2207,E08.3291 ",.03)
 ;;30
 ;;9002226.02101,"2207,E08.3292 ",.01)
 ;;E08.3292 
 ;;9002226.02101,"2207,E08.3292 ",.02)
 ;;E08.3292 
 ;;9002226.02101,"2207,E08.3292 ",.03)
 ;;30
 ;;9002226.02101,"2207,E08.3293 ",.01)
 ;;E08.3293 
 ;;9002226.02101,"2207,E08.3293 ",.02)
 ;;E08.3293 
 ;;9002226.02101,"2207,E08.3293 ",.03)
 ;;30
 ;;9002226.02101,"2207,E08.3299 ",.01)
 ;;E08.3299 
 ;
OTHER ; OTHER ROUTINES
 D ^ATXFAE2
 D ^ATXFAE3
 D ^ATXFAE4
 D ^ATXFAE5
 Q