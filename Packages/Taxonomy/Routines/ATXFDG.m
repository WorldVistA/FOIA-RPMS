ATXFDG ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 02, 2018;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;;BGP DM RETINOPATHY DX
 ;
 ; This routine loads Taxonomy BGP DM RETINOPATHY DX
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
 ;;21,"E08.311 ")
 ;;1
 ;;21,"E08.319 ")
 ;;2
 ;;21,"E08.3211 ")
 ;;3
 ;;21,"E08.3212 ")
 ;;4
 ;;21,"E08.3213 ")
 ;;5
 ;;21,"E08.3219 ")
 ;;6
 ;;21,"E08.3291 ")
 ;;7
 ;;21,"E08.3292 ")
 ;;8
 ;;21,"E08.3293 ")
 ;;9
 ;;21,"E08.3299 ")
 ;;10
 ;;21,"E08.3311 ")
 ;;11
 ;;21,"E08.3312 ")
 ;;12
 ;;21,"E08.3313 ")
 ;;13
 ;;21,"E08.3319 ")
 ;;14
 ;;21,"E08.3391 ")
 ;;15
 ;;21,"E08.3392 ")
 ;;16
 ;;21,"E08.3393 ")
 ;;17
 ;;21,"E08.3399 ")
 ;;18
 ;;21,"E08.3411 ")
 ;;19
 ;;21,"E08.3412 ")
 ;;20
 ;;21,"E08.3413 ")
 ;;21
 ;;21,"E08.3419 ")
 ;;22
 ;;21,"E08.3491 ")
 ;;23
 ;;21,"E08.3492 ")
 ;;24
 ;;21,"E08.3493 ")
 ;;25
 ;;21,"E08.3499 ")
 ;;26
 ;;21,"E08.3511 ")
 ;;27
 ;;21,"E08.3512 ")
 ;;28
 ;;21,"E08.3513 ")
 ;;29
 ;;21,"E08.3519 ")
 ;;30
 ;;21,"E08.3521 ")
 ;;31
 ;;21,"E08.3522 ")
 ;;32
 ;;21,"E08.3523 ")
 ;;33
 ;;21,"E08.3529 ")
 ;;34
 ;;21,"E08.3531 ")
 ;;35
 ;;21,"E08.3532 ")
 ;;36
 ;;21,"E08.3533 ")
 ;;37
 ;;21,"E08.3539 ")
 ;;38
 ;;21,"E08.3541 ")
 ;;39
 ;;21,"E08.3542 ")
 ;;40
 ;;21,"E08.3543 ")
 ;;41
 ;;21,"E08.3549 ")
 ;;42
 ;;21,"E08.3551 ")
 ;;43
 ;;21,"E08.3552 ")
 ;;44
 ;;21,"E08.3553 ")
 ;;45
 ;;21,"E08.3559 ")
 ;;46
 ;;21,"E08.3591 ")
 ;;47
 ;;21,"E08.3592 ")
 ;;48
 ;;21,"E08.3593 ")
 ;;49
 ;;21,"E08.3599 ")
 ;;50
 ;;21,"E09.311 ")
 ;;51
 ;;21,"E09.319 ")
 ;;52
 ;;21,"E09.3211 ")
 ;;53
 ;;21,"E09.3212 ")
 ;;54
 ;;21,"E09.3213 ")
 ;;55
 ;;21,"E09.3219 ")
 ;;56
 ;;21,"E09.3291 ")
 ;;57
 ;;21,"E09.3292 ")
 ;;58
 ;;21,"E09.3293 ")
 ;;59
 ;;21,"E09.3299 ")
 ;;60
 ;;21,"E09.3311 ")
 ;;61
 ;;21,"E09.3312 ")
 ;;62
 ;;21,"E09.3313 ")
 ;;63
 ;;21,"E09.3319 ")
 ;;64
 ;;21,"E09.3391 ")
 ;;65
 ;;21,"E09.3392 ")
 ;;66
 ;;21,"E09.3393 ")
 ;;67
 ;;21,"E09.3399 ")
 ;;68
 ;;21,"E09.3411 ")
 ;;69
 ;;21,"E09.3412 ")
 ;;70
 ;;21,"E09.3413 ")
 ;;71
 ;;21,"E09.3419 ")
 ;;72
 ;;21,"E09.3491 ")
 ;;73
 ;;21,"E09.3492 ")
 ;;74
 ;;21,"E09.3493 ")
 ;;75
 ;;21,"E09.3499 ")
 ;;76
 ;;21,"E09.3511 ")
 ;;77
 ;;21,"E09.3512 ")
 ;;78
 ;;21,"E09.3513 ")
 ;;79
 ;;21,"E09.3519 ")
 ;;80
 ;;21,"E09.3521 ")
 ;;81
 ;;21,"E09.3522 ")
 ;;82
 ;;21,"E09.3529 ")
 ;;83
 ;;21,"E09.3531 ")
 ;;84
 ;;21,"E09.3532 ")
 ;;85
 ;;21,"E09.3533 ")
 ;;86
 ;;21,"E09.3539 ")
 ;;87
 ;;21,"E09.3541 ")
 ;;88
 ;;21,"E09.3542 ")
 ;;89
 ;;21,"E09.3543 ")
 ;;90
 ;;21,"E09.3549 ")
 ;;91
 ;;21,"E09.3551 ")
 ;;92
 ;;21,"E09.3552 ")
 ;;93
 ;;21,"E09.3553 ")
 ;;94
 ;;21,"E09.3559 ")
 ;;95
 ;;21,"E09.3591 ")
 ;;96
 ;;21,"E09.3592 ")
 ;;97
 ;;21,"E09.3593 ")
 ;;98
 ;;21,"E09.3599 ")
 ;;99
 ;;21,"E10.311 ")
 ;;100
 ;;21,"E10.319 ")
 ;;101
 ;;21,"E10.3211 ")
 ;;102
 ;;21,"E10.3212 ")
 ;;103
 ;;21,"E10.3213 ")
 ;;104
 ;;21,"E10.3219 ")
 ;;105
 ;;21,"E10.3291 ")
 ;;106
 ;;21,"E10.3292 ")
 ;;107
 ;;21,"E10.3293 ")
 ;;108
 ;;21,"E10.3299 ")
 ;;109
 ;;21,"E10.3311 ")
 ;;110
 ;;21,"E10.3312 ")
 ;;111
 ;;21,"E10.3313 ")
 ;;112
 ;;21,"E10.3319 ")
 ;;113
 ;;21,"E10.3391 ")
 ;;114
 ;;21,"E10.3392 ")
 ;;115
 ;;21,"E10.3393 ")
 ;;116
 ;;21,"E10.3399 ")
 ;;117
 ;;21,"E10.3411 ")
 ;;118
 ;;21,"E10.3412 ")
 ;;119
 ;;21,"E10.3413 ")
 ;;120
 ;;21,"E10.3419 ")
 ;;121
 ;;21,"E10.3491 ")
 ;;122
 ;;21,"E10.3492 ")
 ;;123
 ;;21,"E10.3493 ")
 ;;124
 ;;21,"E10.3499 ")
 ;;125
 ;;21,"E10.3511 ")
 ;;126
 ;;21,"E10.3512 ")
 ;;127
 ;;21,"E10.3513 ")
 ;;128
 ;;21,"E10.3519 ")
 ;;129
 ;;21,"E10.3522 ")
 ;;130
 ;;21,"E10.3523 ")
 ;;131
 ;;21,"E10.3529 ")
 ;;132
 ;;21,"E10.3531 ")
 ;;133
 ;;21,"E10.3532 ")
 ;;134
 ;;21,"E10.3533 ")
 ;;135
 ;;21,"E10.3539 ")
 ;;136
 ;;21,"E10.3541 ")
 ;;137
 ;;21,"E10.3542 ")
 ;;138
 ;;21,"E10.3543 ")
 ;;139
 ;;21,"E10.3549 ")
 ;;140
 ;;21,"E10.3551 ")
 ;;141
 ;;21,"E10.3552 ")
 ;;142
 ;;21,"E10.3553 ")
 ;;143
 ;;21,"E10.3559 ")
 ;;144
 ;;21,"E10.3591 ")
 ;;145
 ;;21,"E10.3592 ")
 ;;146
 ;;21,"E10.3593 ")
 ;;147
 ;;21,"E10.3599 ")
 ;;148
 ;;21,"E11.311 ")
 ;;149
 ;;21,"E11.319 ")
 ;;150
 ;;21,"E11.3211 ")
 ;;151
 ;;21,"E11.3212 ")
 ;;152
 ;;21,"E11.3213 ")
 ;;153
 ;;21,"E11.3219 ")
 ;;154
 ;;21,"E11.3291 ")
 ;;155
 ;;21,"E11.3292 ")
 ;;156
 ;;21,"E11.3293 ")
 ;;157
 ;;21,"E11.3299 ")
 ;;158
 ;;21,"E11.3311 ")
 ;;159
 ;;21,"E11.3312 ")
 ;;160
 ;;21,"E11.3313 ")
 ;;161
 ;;21,"E11.3319 ")
 ;;162
 ;;21,"E11.3391 ")
 ;;163
 ;;21,"E11.3392 ")
 ;;164
 ;;21,"E11.3393 ")
 ;;165
 ;;21,"E11.3399 ")
 ;;166
 ;;21,"E11.3411 ")
 ;;167
 ;;21,"E11.3413 ")
 ;;168
 ;;21,"E11.3419 ")
 ;;169
 ;;21,"E11.3491 ")
 ;;170
 ;;21,"E11.3492 ")
 ;;171
 ;;21,"E11.3493 ")
 ;;172
 ;;21,"E11.3499 ")
 ;;173
 ;;21,"E11.3511 ")
 ;;174
 ;;21,"E11.3512 ")
 ;;175
 ;;21,"E11.3513 ")
 ;;176
 ;;21,"E11.3519 ")
 ;;177
 ;;21,"E11.3521 ")
 ;;178
 ;;21,"E11.3522 ")
 ;;179
 ;;21,"E11.3523 ")
 ;;180
 ;;21,"E11.3529 ")
 ;;181
 ;;21,"E11.3531 ")
 ;;182
 ;;21,"E11.3532 ")
 ;;183
 ;;21,"E11.3533 ")
 ;;184
 ;;21,"E11.3539 ")
 ;;185
 ;;21,"E11.3541 ")
 ;;186
 ;;21,"E11.3542 ")
 ;;187
 ;;21,"E11.3543 ")
 ;;188
 ;;21,"E11.3549 ")
 ;;189
 ;;21,"E11.3551 ")
 ;;190
 ;;21,"E11.3552 ")
 ;;191
 ;;21,"E11.3553 ")
 ;;192
 ;;21,"E11.3559 ")
 ;;193
 ;;21,"E11.3591 ")
 ;;194
 ;;21,"E11.3592 ")
 ;;195
 ;;21,"E11.3593 ")
 ;;196
 ;;21,"E11.3599 ")
 ;;197
 ;;21,"E13.311 ")
 ;;198
 ;;21,"E13.319 ")
 ;;199
 ;;21,"E13.3211 ")
 ;;200
 ;;21,"E13.3212 ")
 ;;201
 ;;21,"E13.3213 ")
 ;;202
 ;;21,"E13.3219 ")
 ;;203
 ;;21,"E13.3291 ")
 ;;204
 ;;21,"E13.3292 ")
 ;;205
 ;;21,"E13.3293 ")
 ;;206
 ;;21,"E13.3299 ")
 ;;207
 ;;21,"E13.3311 ")
 ;;208
 ;;21,"E13.3312 ")
 ;;209
 ;;21,"E13.3313 ")
 ;;210
 ;;21,"E13.3319 ")
 ;;211
 ;;21,"E13.3391 ")
 ;;212
 ;;21,"E13.3392 ")
 ;;213
 ;;21,"E13.3393 ")
 ;;214
 ;;21,"E13.3399 ")
 ;;215
 ;;21,"E13.3411 ")
 ;;216
 ;;21,"E13.3412 ")
 ;;217
 ;;21,"E13.3413 ")
 ;;218
 ;;21,"E13.3419 ")
 ;;219
 ;;21,"E13.3491 ")
 ;;220
 ;;21,"E13.3492 ")
 ;;221
 ;;21,"E13.3493 ")
 ;;222
 ;;21,"E13.3499 ")
 ;;223
 ;;21,"E13.3511 ")
 ;;224
 ;;21,"E13.3512 ")
 ;;225
 ;;21,"E13.3513 ")
 ;;226
 ;;21,"E13.3519 ")
 ;;227
 ;;21,"E13.3521 ")
 ;;228
 ;;21,"E13.3522 ")
 ;;229
 ;;21,"E13.3523 ")
 ;;230
 ;;21,"E13.3529 ")
 ;;231
 ;;21,"E13.3531 ")
 ;;232
 ;;21,"E13.3532 ")
 ;;233
 ;;21,"E13.3533 ")
 ;;234
 ;;21,"E13.3539 ")
 ;;235
 ;;21,"E13.3541 ")
 ;;236
 ;;21,"E13.3542 ")
 ;;237
 ;;21,"E13.3543 ")
 ;;238
 ;;21,"E13.3549 ")
 ;;239
 ;;21,"E13.3551 ")
 ;;240
 ;;21,"E13.3552 ")
 ;;241
 ;;21,"E13.3553 ")
 ;;242
 ;;21,"E13.3559 ")
 ;;243
 ;;21,"E13.3591 ")
 ;;244
 ;;21,"E13.3592 ")
 ;;245
 ;;21,"E13.3593 ")
 ;;246
 ;;21,"E13.3599 ")
 ;;247
 ;;9002226,2252,.01)
 ;;BGP DM RETINOPATHY DX
 ;;9002226,2252,.02)
 ;;@
 ;;9002226,2252,.04)
 ;;n
 ;;9002226,2252,.06)
 ;;@
 ;;9002226,2252,.08)
 ;;@
 ;;9002226,2252,.09)
 ;;3180102
 ;;9002226,2252,.11)
 ;;@
 ;;9002226,2252,.12)
 ;;31
 ;;9002226,2252,.13)
 ;;1
 ;;9002226,2252,.14)
 ;;@
 ;;9002226,2252,.15)
 ;;80
 ;;9002226,2252,.16)
 ;;@
 ;;9002226,2252,.17)
 ;;@
 ;;9002226,2252,.22)
 ;;1
 ;;9002226,2252,3101)
 ;;@
 ;;9002226.02101,"2252,E08.311 ",.01)
 ;;E08.311 
 ;;9002226.02101,"2252,E08.311 ",.02)
 ;;E08.311 
 ;;9002226.02101,"2252,E08.311 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.319 ",.01)
 ;;E08.319 
 ;;9002226.02101,"2252,E08.319 ",.02)
 ;;E08.319 
 ;;9002226.02101,"2252,E08.319 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3211 ",.01)
 ;;E08.3211 
 ;;9002226.02101,"2252,E08.3211 ",.02)
 ;;E08.3211 
 ;;9002226.02101,"2252,E08.3211 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3212 ",.01)
 ;;E08.3212 
 ;;9002226.02101,"2252,E08.3212 ",.02)
 ;;E08.3212 
 ;;9002226.02101,"2252,E08.3212 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3213 ",.01)
 ;;E08.3213 
 ;;9002226.02101,"2252,E08.3213 ",.02)
 ;;E08.3213 
 ;;9002226.02101,"2252,E08.3213 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3219 ",.01)
 ;;E08.3219 
 ;;9002226.02101,"2252,E08.3219 ",.02)
 ;;E08.3219 
 ;;9002226.02101,"2252,E08.3219 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3291 ",.01)
 ;;E08.3291 
 ;;9002226.02101,"2252,E08.3291 ",.02)
 ;;E08.3291 
 ;;9002226.02101,"2252,E08.3291 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3292 ",.01)
 ;;E08.3292 
 ;;9002226.02101,"2252,E08.3292 ",.02)
 ;;E08.3292 
 ;;9002226.02101,"2252,E08.3292 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3293 ",.01)
 ;;E08.3293 
 ;;9002226.02101,"2252,E08.3293 ",.02)
 ;;E08.3293 
 ;;9002226.02101,"2252,E08.3293 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3299 ",.01)
 ;;E08.3299 
 ;;9002226.02101,"2252,E08.3299 ",.02)
 ;;E08.3299 
 ;;9002226.02101,"2252,E08.3299 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3311 ",.01)
 ;;E08.3311 
 ;;9002226.02101,"2252,E08.3311 ",.02)
 ;;E08.3311 
 ;;9002226.02101,"2252,E08.3311 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3312 ",.01)
 ;;E08.3312 
 ;;9002226.02101,"2252,E08.3312 ",.02)
 ;;E08.3312 
 ;;9002226.02101,"2252,E08.3312 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3313 ",.01)
 ;;E08.3313 
 ;;9002226.02101,"2252,E08.3313 ",.02)
 ;;E08.3313 
 ;;9002226.02101,"2252,E08.3313 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3319 ",.01)
 ;;E08.3319 
 ;;9002226.02101,"2252,E08.3319 ",.02)
 ;;E08.3319 
 ;;9002226.02101,"2252,E08.3319 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3391 ",.01)
 ;;E08.3391 
 ;;9002226.02101,"2252,E08.3391 ",.02)
 ;;E08.3391 
 ;;9002226.02101,"2252,E08.3391 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3392 ",.01)
 ;;E08.3392 
 ;;9002226.02101,"2252,E08.3392 ",.02)
 ;;E08.3392 
 ;;9002226.02101,"2252,E08.3392 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3393 ",.01)
 ;;E08.3393 
 ;;9002226.02101,"2252,E08.3393 ",.02)
 ;;E08.3393 
 ;;9002226.02101,"2252,E08.3393 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3399 ",.01)
 ;;E08.3399 
 ;;9002226.02101,"2252,E08.3399 ",.02)
 ;;E08.3399 
 ;;9002226.02101,"2252,E08.3399 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3411 ",.01)
 ;;E08.3411 
 ;;9002226.02101,"2252,E08.3411 ",.02)
 ;;E08.3411 
 ;;9002226.02101,"2252,E08.3411 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3412 ",.01)
 ;;E08.3412 
 ;;9002226.02101,"2252,E08.3412 ",.02)
 ;;E08.3412 
 ;;9002226.02101,"2252,E08.3412 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3413 ",.01)
 ;;E08.3413 
 ;;9002226.02101,"2252,E08.3413 ",.02)
 ;;E08.3413 
 ;;9002226.02101,"2252,E08.3413 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3419 ",.01)
 ;;E08.3419 
 ;;9002226.02101,"2252,E08.3419 ",.02)
 ;;E08.3419 
 ;;9002226.02101,"2252,E08.3419 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3491 ",.01)
 ;;E08.3491 
 ;;9002226.02101,"2252,E08.3491 ",.02)
 ;;E08.3491 
 ;;9002226.02101,"2252,E08.3491 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3492 ",.01)
 ;;E08.3492 
 ;;9002226.02101,"2252,E08.3492 ",.02)
 ;;E08.3492 
 ;;9002226.02101,"2252,E08.3492 ",.03)
 ;;30
 ;;9002226.02101,"2252,E08.3493 ",.01)
 ;;E08.3493 
 ;;9002226.02101,"2252,E08.3493 ",.02)
 ;;E08.3493 
 ;;9002226.02101,"2252,E08.3493 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 D ^ATXFDG2
 D ^ATXFDG3
 D ^ATXFDG4
 Q