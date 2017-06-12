ATXD3S ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP PREGNANCY DIAGNOSES 2
 ;
 ; This routine loads Taxonomy BGP PREGNANCY DIAGNOSES 2
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
 ;;21,"640.03 ")
 ;;1
 ;;21,"640.83 ")
 ;;2
 ;;21,"640.93 ")
 ;;3
 ;;21,"641.03 ")
 ;;4
 ;;21,"641.13 ")
 ;;5
 ;;21,"641.23 ")
 ;;6
 ;;21,"641.33 ")
 ;;7
 ;;21,"641.83 ")
 ;;8
 ;;21,"641.93 ")
 ;;9
 ;;21,"642.03 ")
 ;;10
 ;;21,"642.13 ")
 ;;11
 ;;21,"642.23 ")
 ;;12
 ;;21,"642.33 ")
 ;;13
 ;;21,"642.43 ")
 ;;14
 ;;21,"642.53 ")
 ;;15
 ;;21,"642.63 ")
 ;;16
 ;;21,"642.73 ")
 ;;17
 ;;21,"642.93 ")
 ;;18
 ;;21,"643.03 ")
 ;;19
 ;;21,"643.13 ")
 ;;20
 ;;21,"643.23 ")
 ;;21
 ;;21,"643.83 ")
 ;;22
 ;;21,"643.93 ")
 ;;23
 ;;21,"644.03 ")
 ;;24
 ;;21,"644.13 ")
 ;;25
 ;;21,"645.13 ")
 ;;26
 ;;21,"645.23 ")
 ;;27
 ;;21,"646.03 ")
 ;;28
 ;;21,"646.13 ")
 ;;29
 ;;21,"646.23 ")
 ;;30
 ;;21,"646.33 ")
 ;;31
 ;;21,"646.43 ")
 ;;32
 ;;21,"646.53 ")
 ;;33
 ;;21,"646.63 ")
 ;;34
 ;;21,"646.73 ")
 ;;35
 ;;21,"646.83 ")
 ;;36
 ;;21,"646.93 ")
 ;;37
 ;;21,"647.03 ")
 ;;38
 ;;21,"647.13 ")
 ;;39
 ;;21,"647.23 ")
 ;;40
 ;;21,"647.33 ")
 ;;41
 ;;21,"647.43 ")
 ;;42
 ;;21,"647.53 ")
 ;;43
 ;;21,"647.63 ")
 ;;44
 ;;21,"647.83 ")
 ;;45
 ;;21,"647.93 ")
 ;;46
 ;;21,"648.03 ")
 ;;47
 ;;21,"648.13 ")
 ;;48
 ;;21,"648.23 ")
 ;;49
 ;;21,"648.33 ")
 ;;50
 ;;21,"648.43 ")
 ;;51
 ;;21,"648.53 ")
 ;;52
 ;;21,"648.63 ")
 ;;53
 ;;21,"648.73 ")
 ;;54
 ;;21,"648.83 ")
 ;;55
 ;;21,"648.93 ")
 ;;56
 ;;21,"649.03 ")
 ;;57
 ;;21,"649.13 ")
 ;;58
 ;;21,"649.23 ")
 ;;59
 ;;21,"649.33 ")
 ;;60
 ;;21,"649.43 ")
 ;;61
 ;;21,"649.53 ")
 ;;62
 ;;21,"649.63 ")
 ;;63
 ;;21,"649.73 ")
 ;;64
 ;;21,"651.03 ")
 ;;65
 ;;21,"651.13 ")
 ;;66
 ;;21,"651.23 ")
 ;;67
 ;;21,"651.33 ")
 ;;68
 ;;21,"651.43 ")
 ;;69
 ;;21,"651.53 ")
 ;;70
 ;;21,"651.63 ")
 ;;71
 ;;21,"651.73 ")
 ;;72
 ;;21,"651.83 ")
 ;;73
 ;;21,"651.93 ")
 ;;74
 ;;21,"652.03 ")
 ;;75
 ;;21,"652.13 ")
 ;;76
 ;;21,"652.23 ")
 ;;77
 ;;21,"652.33 ")
 ;;78
 ;;21,"652.43 ")
 ;;79
 ;;21,"652.53 ")
 ;;80
 ;;21,"652.63 ")
 ;;81
 ;;21,"652.73 ")
 ;;82
 ;;21,"652.83 ")
 ;;83
 ;;21,"652.93 ")
 ;;84
 ;;21,"653.03 ")
 ;;85
 ;;21,"653.13 ")
 ;;86
 ;;21,"653.23 ")
 ;;87
 ;;21,"653.33 ")
 ;;88
 ;;21,"653.43 ")
 ;;89
 ;;21,"653.53 ")
 ;;90
 ;;21,"653.63 ")
 ;;91
 ;;21,"653.73 ")
 ;;92
 ;;21,"653.83 ")
 ;;93
 ;;21,"653.93 ")
 ;;94
 ;;21,"654.03 ")
 ;;95
 ;;21,"654.13 ")
 ;;96
 ;;21,"654.23 ")
 ;;97
 ;;21,"654.33 ")
 ;;98
 ;;21,"654.43 ")
 ;;99
 ;;21,"654.53 ")
 ;;100
 ;;21,"654.63 ")
 ;;101
 ;;21,"654.73 ")
 ;;102
 ;;21,"654.83 ")
 ;;103
 ;;21,"654.93 ")
 ;;104
 ;;21,"655.03 ")
 ;;105
 ;;21,"655.13 ")
 ;;106
 ;;21,"655.23 ")
 ;;107
 ;;21,"655.33 ")
 ;;108
 ;;21,"655.43 ")
 ;;109
 ;;21,"655.53 ")
 ;;110
 ;;21,"655.63 ")
 ;;111
 ;;21,"655.73 ")
 ;;112
 ;;21,"655.83 ")
 ;;113
 ;;21,"655.93 ")
 ;;114
 ;;21,"656.03 ")
 ;;115
 ;;21,"656.13 ")
 ;;116
 ;;21,"656.23 ")
 ;;117
 ;;21,"656.33 ")
 ;;118
 ;;21,"656.43 ")
 ;;119
 ;;21,"656.53 ")
 ;;120
 ;;21,"656.63 ")
 ;;121
 ;;21,"656.73 ")
 ;;122
 ;;21,"656.83 ")
 ;;123
 ;;21,"656.93 ")
 ;;124
 ;;21,"657.03 ")
 ;;125
 ;;21,"658.03 ")
 ;;126
 ;;21,"658.13 ")
 ;;127
 ;;21,"658.23 ")
 ;;128
 ;;21,"658.33 ")
 ;;129
 ;;21,"658.43 ")
 ;;130
 ;;21,"658.83 ")
 ;;131
 ;;21,"658.93 ")
 ;;132
 ;;21,"659.03 ")
 ;;133
 ;;21,"659.13 ")
 ;;134
 ;;21,"659.23 ")
 ;;135
 ;;21,"659.33 ")
 ;;136
 ;;21,"659.43 ")
 ;;137
 ;;21,"659.53 ")
 ;;138
 ;;21,"659.63 ")
 ;;139
 ;;21,"659.73 ")
 ;;140
 ;;21,"659.83 ")
 ;;141
 ;;21,"659.93 ")
 ;;142
 ;;21,"660.03 ")
 ;;143
 ;;21,"660.13 ")
 ;;144
 ;;21,"660.23 ")
 ;;145
 ;;21,"660.33 ")
 ;;146
 ;;21,"660.43 ")
 ;;147
 ;;21,"660.53 ")
 ;;148
 ;;21,"660.63 ")
 ;;149
 ;;21,"660.73 ")
 ;;150
 ;;21,"660.83 ")
 ;;151
 ;;21,"660.93 ")
 ;;152
 ;;21,"661.03 ")
 ;;153
 ;;21,"661.13 ")
 ;;154
 ;;21,"661.23 ")
 ;;155
 ;;21,"661.33 ")
 ;;156
 ;;21,"661.43 ")
 ;;157
 ;;21,"661.93 ")
 ;;158
 ;;21,"662.03 ")
 ;;159
 ;;21,"662.13 ")
 ;;160
 ;;21,"662.23 ")
 ;;161
 ;;21,"662.33 ")
 ;;162
 ;;21,"663.03 ")
 ;;163
 ;;21,"663.13 ")
 ;;164
 ;;21,"663.23 ")
 ;;165
 ;;21,"663.33 ")
 ;;166
 ;;21,"663.43 ")
 ;;167
 ;;21,"663.53 ")
 ;;168
 ;;21,"663.63 ")
 ;;169
 ;;21,"663.83 ")
 ;;170
 ;;21,"663.93 ")
 ;;171
 ;;21,"665.03 ")
 ;;172
 ;;21,"665.83 ")
 ;;173
 ;;21,"665.93 ")
 ;;174
 ;;21,"668.03 ")
 ;;175
 ;;21,"668.13 ")
 ;;176
 ;;21,"668.23 ")
 ;;177
 ;;21,"668.83 ")
 ;;178
 ;;21,"668.93 ")
 ;;179
 ;;21,"669.03 ")
 ;;180
 ;;21,"669.13 ")
 ;;181
 ;;21,"669.23 ")
 ;;182
 ;;21,"669.43 ")
 ;;183
 ;;21,"669.83 ")
 ;;184
 ;;21,"669.93 ")
 ;;185
 ;;21,"671.03 ")
 ;;186
 ;;21,"671.13 ")
 ;;187
 ;;21,"671.23 ")
 ;;188
 ;;21,"671.33 ")
 ;;189
 ;;21,"671.53 ")
 ;;190
 ;;21,"671.83 ")
 ;;191
 ;;21,"671.93 ")
 ;;192
 ;;21,"673.03 ")
 ;;193
 ;;21,"673.13 ")
 ;;194
 ;;21,"673.23 ")
 ;;195
 ;;21,"673.33 ")
 ;;196
 ;;21,"673.83 ")
 ;;197
 ;;21,"674.03 ")
 ;;198
 ;;21,"674.53 ")
 ;;199
 ;;21,"675.03 ")
 ;;200
 ;;21,"675.13 ")
 ;;201
 ;;21,"675.23 ")
 ;;202
 ;;21,"675.83 ")
 ;;203
 ;;21,"675.93 ")
 ;;204
 ;;21,"676.03 ")
 ;;205
 ;;21,"676.13 ")
 ;;206
 ;;21,"676.23 ")
 ;;207
 ;;21,"676.33 ")
 ;;208
 ;;21,"676.43 ")
 ;;209
 ;;21,"676.53 ")
 ;;210
 ;;21,"676.63 ")
 ;;211
 ;;21,"676.83 ")
 ;;212
 ;;21,"676.93 ")
 ;;213
 ;;21,"678.03 ")
 ;;214
 ;;21,"678.13 ")
 ;;215
 ;;21,"679.03 ")
 ;;216
 ;;21,"679.13 ")
 ;;217
 ;;21,"O09.00 ")
 ;;218
 ;;21,"O09.01 ")
 ;;219
 ;;21,"O09.02 ")
 ;;220
 ;;21,"O09.03 ")
 ;;221
 ;;21,"O09.10 ")
 ;;222
 ;;21,"O09.11 ")
 ;;223
 ;;21,"O09.12 ")
 ;;224
 ;;21,"O09.13 ")
 ;;225
 ;;21,"O09.211 ")
 ;;226
 ;;21,"O09.212 ")
 ;;227
 ;;21,"O09.213 ")
 ;;228
 ;;21,"O09.219 ")
 ;;229
 ;;21,"O09.291 ")
 ;;230
 ;;21,"O09.292 ")
 ;;231
 ;;21,"O09.293 ")
 ;;232
 ;;21,"O09.299 ")
 ;;233
 ;;21,"O09.30 ")
 ;;234
 ;;21,"O09.31 ")
 ;;235
 ;;21,"O09.32 ")
 ;;236
 ;;21,"O09.33 ")
 ;;237
 ;;21,"O09.40 ")
 ;;238
 ;;21,"O09.41 ")
 ;;239
 ;;21,"O09.42 ")
 ;;240
 ;;21,"O09.43 ")
 ;;241
 ;;21,"O09.511 ")
 ;;242
 ;;21,"O09.512 ")
 ;;243
 ;;21,"O09.513 ")
 ;;244
 ;;21,"O09.519 ")
 ;;245
 ;;21,"O09.521 ")
 ;;246
 ;;21,"O09.522 ")
 ;;247
 ;;21,"O09.523 ")
 ;;248
 ;;21,"O09.529 ")
 ;;249
 ;;21,"O09.611 ")
 ;;250
 ;;21,"O09.612 ")
 ;;251
 ;;21,"O09.613 ")
 ;;252
 ;;21,"O09.619 ")
 ;;253
 ;;21,"O09.621 ")
 ;;254
 ;;21,"O09.622 ")
 ;;255
 ;;21,"O09.623 ")
 ;;256
 ;;21,"O09.629 ")
 ;;257
 ;;21,"O09.70 ")
 ;;258
 ;;21,"O09.71 ")
 ;;259
 ;;21,"O09.72 ")
 ;;260
 ;;21,"O09.73 ")
 ;;261
 ;;21,"O09.811 ")
 ;;262
 ;;21,"O09.812 ")
 ;;263
 ;;21,"O09.813 ")
 ;;264
 ;;21,"O09.819 ")
 ;;265
 ;;21,"O09.821 ")
 ;;266
 ;;21,"O09.822 ")
 ;;267
 ;;21,"O09.823 ")
 ;;268
 ;;21,"O09.829 ")
 ;;269
 ;;21,"O09.891 ")
 ;;270
 ;;21,"O09.892 ")
 ;;271
 ;;21,"O09.893 ")
 ;;272
 ;;21,"O09.899 ")
 ;;273
 ;;21,"O09.90 ")
 ;;274
 ;;21,"O09.91 ")
 ;;275
 ;;21,"O09.92 ")
 ;;276
 ;;21,"O09.93 ")
 ;;277
 ;;21,"O10.011 ")
 ;;278
 ;;21,"O10.012 ")
 ;;279
 ;;21,"O10.013 ")
 ;;280
 ;;21,"O10.019 ")
 ;;281
 ;;21,"O10.02 ")
 ;;282
 ;;21,"O10.111 ")
 ;;283
 ;;21,"O10.112 ")
 ;;284
 ;;21,"O10.113 ")
 ;;285
 ;;21,"O10.119 ")
 ;;286
 ;;21,"O10.12 ")
 ;;287
 ;;21,"O10.211 ")
 ;;288
 ;;21,"O10.212 ")
 ;;289
 ;;21,"O10.213 ")
 ;;290
 ;;21,"O10.219 ")
 ;;291
 ;;21,"O10.22 ")
 ;;292
 ;;21,"O10.311 ")
 ;;293
 ;;21,"O10.312 ")
 ;;294
 ;;21,"O10.313 ")
 ;;295
 ;;21,"O10.319 ")
 ;;296
 ;;21,"O10.32 ")
 ;;297
 ;;21,"O10.411 ")
 ;;298
 ;;21,"O10.412 ")
 ;;299
 ;;21,"O10.413 ")
 ;;300
 ;;21,"O10.419 ")
 ;;301
 ;;21,"O10.42 ")
 ;;302
 ;;21,"O10.911 ")
 ;;303
 ;;21,"O10.912 ")
 ;;304
 ;;21,"O10.913 ")
 ;;305
 ;;21,"O10.919 ")
 ;;306
 ;;21,"O10.92 ")
 ;;307
 ;;21,"O11.1 ")
 ;;308
 ;;21,"O11.2 ")
 ;;309
 ;;21,"O11.3 ")
 ;;310
 ;;21,"O11.9 ")
 ;;311
 ;;21,"O12.00 ")
 ;;312
 ;;21,"O12.01 ")
 ;;313
 ;;21,"O12.02 ")
 ;;314
 ;;21,"O12.03 ")
 ;;315
 ;;21,"O12.10 ")
 ;;316
 ;;21,"O12.11 ")
 ;;317
 ;;21,"O12.12 ")
 ;;318
 ;;21,"O12.13 ")
 ;;319
 ;;21,"O12.20 ")
 ;;320
 ;;21,"O12.21 ")
 ;;321
 ;;21,"O12.22 ")
 ;;322
 ;;21,"O12.23 ")
 ;;323
 ;;21,"O13.1 ")
 ;;324
 ;;21,"O13.2 ")
 ;;325
 ;;21,"O13.3 ")
 ;;326
 ;;21,"O13.9 ")
 ;;327
 ;;21,"O14.00 ")
 ;;328
 ;;21,"O14.02 ")
 ;;329
 ;;21,"O14.03 ")
 ;;330
 ;;21,"O14.10 ")
 ;;331
 ;;21,"O14.12 ")
 ;;332
 ;;21,"O14.13 ")
 ;;333
 ;;21,"O14.20 ")
 ;;334
 ;;21,"O14.22 ")
 ;;335
 ;;21,"O14.23 ")
 ;;336
 ;;21,"O14.90 ")
 ;;337
 ;;21,"O14.92 ")
 ;;338
 ;;21,"O14.93 ")
 ;;339
 ;;21,"O15.00 ")
 ;;340
 ;;21,"O15.02 ")
 ;;341
 ;;21,"O15.03 ")
 ;;342
 ;;21,"O15.1 ")
 ;;343
 ;;21,"O15.9 ")
 ;;344
 ;;21,"O16.1 ")
 ;;345
 ;;21,"O16.2 ")
 ;;346
 ;;21,"O16.3 ")
 ;;347
 ;;21,"O16.9 ")
 ;;348
 ;;21,"O20.0 ")
 ;;349
 ;;21,"O20.8 ")
 ;;350
 ;;21,"O20.9 ")
 ;;351
 ;;21,"O21.0 ")
 ;;352
 ;;21,"O21.1 ")
 ;;353
 ;;21,"O21.2 ")
 ;;354
 ;;21,"O21.8 ")
 ;;355
 ;;21,"O21.9 ")
 ;;356
 ;;21,"O22.00 ")
 ;;357
 ;;21,"O22.01 ")
 ;;358
 ;;21,"O22.02 ")
 ;;359
 ;;21,"O22.03 ")
 ;;360
 ;;21,"O22.10 ")
 ;;361
 ;;21,"O22.11 ")
 ;;362
 ;;21,"O22.12 ")
 ;;363
 ;;21,"O22.13 ")
 ;;364
 ;;21,"O22.20 ")
 ;;365
 ;;21,"O22.21 ")
 ;;366
 ;;21,"O22.22 ")
 ;;367
 ;;21,"O22.23 ")
 ;;368
 ;;21,"O22.30 ")
 ;;369
 ;;21,"O22.31 ")
 ;;370
 ;;21,"O22.32 ")
 ;;371
 ;;21,"O22.33 ")
 ;;372
 ;;21,"O22.40 ")
 ;;373
 ;;21,"O22.41 ")
 ;;374
 ;;21,"O22.42 ")
 ;;375
 ;;21,"O22.43 ")
 ;;376
 ;;21,"O22.50 ")
 ;;377
 ;;21,"O22.51 ")
 ;;378
 ;;21,"O22.52 ")
 ;;379
 ;;21,"O22.53 ")
 ;;380
 ;;21,"O22.8X1 ")
 ;;381
 ;;21,"O22.8X2 ")
 ;;382
 ;;21,"O22.8X3 ")
 ;;383
 ;;21,"O22.8X9 ")
 ;;384
 ;;21,"O22.90 ")
 ;;385
 ;;21,"O22.91 ")
 ;;386
 ;;21,"O22.92 ")
 ;;387
 ;;21,"O22.93 ")
 ;;388
 ;;21,"O23.00 ")
 ;;389
 ;;21,"O23.01 ")
 ;;390
 ;;21,"O23.02 ")
 ;;391
 ;;21,"O23.03 ")
 ;;392
 ;;21,"O23.10 ")
 ;;393
 ;;21,"O23.11 ")
 ;;394
 ;;21,"O23.12 ")
 ;;395
 ;;21,"O23.13 ")
 ;;396
 ;;21,"O23.20 ")
 ;;397
 ;;21,"O23.21 ")
 ;;398
 ;;21,"O23.22 ")
 ;;399
 ;;21,"O23.23 ")
 ;;400
 ;;21,"O23.30 ")
 ;;401
 ;;21,"O23.31 ")
 ;;402
 ;;21,"O23.32 ")
 ;;403
 ;;21,"O23.33 ")
 ;;404
 ;;21,"O23.40 ")
 ;;405
 ;;21,"O23.41 ")
 ;;406
 ;;21,"O23.42 ")
 ;;407
 ;;21,"O23.43 ")
 ;;408
 ;;21,"O23.511 ")
 ;;409
 ;;21,"O23.512 ")
 ;;410
 ;;21,"O23.513 ")
 ;;411
 ;;21,"O23.519 ")
 ;;412
 ;;21,"O23.521 ")
 ;;413
 ;;21,"O23.522 ")
 ;;414
 ;;21,"O23.523 ")
 ;;415
 ;;21,"O23.529 ")
 ;;416
 ;;21,"O23.591 ")
 ;;417
 ;;21,"O23.592 ")
 ;;418
 ;;21,"O23.593 ")
 ;;419
 ;;21,"O23.599 ")
 ;;420
 ;;21,"O23.90 ")
 ;;421
 ;;21,"O23.91 ")
 ;;422
 ;;21,"O23.92 ")
 ;;423
 ;;21,"O23.93 ")
 ;;424
 ;;21,"O24.011 ")
 ;;425
 ;;21,"O24.012 ")
 ;;426
 ;;21,"O24.013 ")
 ;;427
 ;;21,"O24.019 ")
 ;;428
 ;;21,"O24.02 ")
 ;;429
 ;;21,"O24.111 ")
 ;;430
 ;;21,"O24.112 ")
 ;;431
 ;;21,"O24.113 ")
 ;;432
 ;;21,"O24.119 ")
 ;;433
 ;;21,"O24.12 ")
 ;;434
 ;;21,"O24.311 ")
 ;;435
 ;;21,"O24.312 ")
 ;;436
 ;;21,"O24.313 ")
 ;;437
 ;;21,"O24.319 ")
 ;;438
 ;;21,"O24.32 ")
 ;;439
 ;;21,"O24.410 ")
 ;;440
 ;;21,"O24.414 ")
 ;;441
 ;;21,"O24.419 ")
 ;;442
 ;;21,"O24.811 ")
 ;;443
 ;;21,"O24.812 ")
 ;;444
 ;;21,"O24.813 ")
 ;;445
 ;;21,"O24.819 ")
 ;;446
 ;;21,"O24.82 ")
 ;;447
 ;;21,"O24.911 ")
 ;;448
 ;;21,"O24.912 ")
 ;;449
 ;;21,"O24.913 ")
 ;;450
 ;;21,"O24.919 ")
 ;;451
 ;;21,"O24.92 ")
 ;;452
 ;;21,"O25.10 ")
 ;;453
 ;;21,"O25.11 ")
 ;;454
 ;;21,"O25.12 ")
 ;;455
 ;;21,"O25.13 ")
 ;;456
 ;;21,"O25.2 ")
 ;;457
 ;;21,"O26.00 ")
 ;;458
 ;;21,"O26.01 ")
 ;;459
 ;;21,"O26.02 ")
 ;;460
 ;;21,"O26.03 ")
 ;;461
 ;;21,"O26.10 ")
 ;;462
 ;;21,"O26.11 ")
 ;;463
 ;;21,"O26.12 ")
 ;;464
 ;;21,"O26.13 ")
 ;;465
 ;;21,"O26.20 ")
 ;;466
 ;;21,"O26.21 ")
 ;;467
 ;;21,"O26.22 ")
 ;;468
 ;;21,"O26.23 ")
 ;;469
 ;;21,"O26.30 ")
 ;;470
 ;;21,"O26.31 ")
 ;;471
 ;;21,"O26.32 ")
 ;;472
 ;;21,"O26.33 ")
 ;;473
 ;;21,"O26.40 ")
 ;;474
 ;;21,"O26.41 ")
 ;;475
 ;;21,"O26.42 ")
 ;;476
 ;;21,"O26.43 ")
 ;;477
 ;;21,"O26.50 ")
 ;;478
 ;;21,"O26.51 ")
 ;;479
 ;;21,"O26.52 ")
 ;;480
 ;;21,"O26.53 ")
 ;;481
 ;;21,"O26.611 ")
 ;;482
 ;;21,"O26.612 ")
 ;;483
 ;
OTHER ; OTHER ROUTINES
 D ^ATXD3S10
 D ^ATXD3S11
 D ^ATXD3S12
 D ^ATXD3S13
 D ^ATXD3S14
 D ^ATXD3S15
 D ^ATXD3S16
 D ^ATXD3S17
 D ^ATXD3S18
 D ^ATXD3S19
 D ^ATXD3S2
 D ^ATXD3S20
 D ^ATXD3S21
 D ^ATXD3S22
 D ^ATXD3S23
 D ^ATXD3S24
 D ^ATXD3S25
 D ^ATXD3S26
 D ^ATXD3S27
 D ^ATXD3S28
 D ^ATXD3S3
 D ^ATXD3S4
 D ^ATXD3S5
 D ^ATXD3S6
 D ^ATXD3S7
 D ^ATXD3S8
 D ^ATXD3S9
 Q