BGP47S ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;;BGP HEDIS SKL MUSCLE RELAX NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS SKL MUSCLE RELAX NDC
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
 ;;21,"00005-3562-23 ")
 ;;1
 ;;21,"00005-3563-23 ")
 ;;2
 ;;21,"00005-3563-31 ")
 ;;3
 ;;21,"00006-0931-28 ")
 ;;4
 ;;21,"00031-7409-87 ")
 ;;5
 ;;21,"00031-7409-94 ")
 ;;6
 ;;21,"00031-7429-63 ")
 ;;7
 ;;21,"00031-7449-63 ")
 ;;8
 ;;21,"00031-7449-70 ")
 ;;9
 ;;21,"00037-2001-01 ")
 ;;10
 ;;21,"00037-2001-03 ")
 ;;11
 ;;21,"00037-2001-85 ")
 ;;12
 ;;21,"00037-2103-01 ")
 ;;13
 ;;21,"00037-2103-03 ")
 ;;14
 ;;21,"00037-2103-85 ")
 ;;15
 ;;21,"00037-2250-10 ")
 ;;16
 ;;21,"00037-2250-30 ")
 ;;17
 ;;21,"00037-2403-01 ")
 ;;18
 ;;21,"00045-0325-60 ")
 ;;19
 ;;21,"00045-0325-70 ")
 ;;20
 ;;21,"00086-0062-10 ")
 ;;21
 ;;21,"00086-0062-50 ")
 ;;22
 ;;21,"00089-0221-10 ")
 ;;23
 ;;21,"00089-0231-10 ")
 ;;24
 ;;21,"00089-0233-10 ")
 ;;25
 ;;21,"00089-0540-06 ")
 ;;26
 ;;21,"00091-7429-63 ")
 ;;27
 ;;21,"00091-7449-63 ")
 ;;28
 ;;21,"00091-7449-70 ")
 ;;29
 ;;21,"00093-0542-01 ")
 ;;30
 ;;21,"00093-0542-05 ")
 ;;31
 ;;21,"00093-1919-19 ")
 ;;32
 ;;21,"00095-0150-06 ")
 ;;33
 ;;21,"00095-0300-06 ")
 ;;34
 ;;21,"00115-2011-01 ")
 ;;35
 ;;21,"00115-2011-02 ")
 ;;36
 ;;21,"00143-1176-01 ")
 ;;37
 ;;21,"00143-1176-05 ")
 ;;38
 ;;21,"00143-1176-10 ")
 ;;39
 ;;21,"00143-1290-01 ")
 ;;40
 ;;21,"00143-1290-05 ")
 ;;41
 ;;21,"00143-1292-01 ")
 ;;42
 ;;21,"00143-1292-05 ")
 ;;43
 ;;21,"00143-9749-01 ")
 ;;44
 ;;21,"00143-9749-05 ")
 ;;45
 ;;21,"00143-9749-10 ")
 ;;46
 ;;21,"00172-2813-60 ")
 ;;47
 ;;21,"00182-0573-89 ")
 ;;48
 ;;21,"00182-1919-00 ")
 ;;49
 ;;21,"00182-1919-89 ")
 ;;50
 ;;21,"00185-0022-01 ")
 ;;51
 ;;21,"00185-0022-10 ")
 ;;52
 ;;21,"00185-0448-01 ")
 ;;53
 ;;21,"00185-0448-10 ")
 ;;54
 ;;21,"00185-0713-01 ")
 ;;55
 ;;21,"00185-0713-05 ")
 ;;56
 ;;21,"00185-0714-01 ")
 ;;57
 ;;21,"00185-0724-01 ")
 ;;58
 ;;21,"00185-0724-05 ")
 ;;59
 ;;21,"00185-0749-01 ")
 ;;60
 ;;21,"00247-0013-00 ")
 ;;61
 ;;21,"00247-0013-03 ")
 ;;62
 ;;21,"00247-0013-06 ")
 ;;63
 ;;21,"00247-0013-07 ")
 ;;64
 ;;21,"00247-0013-08 ")
 ;;65
 ;;21,"00247-0013-09 ")
 ;;66
 ;;21,"00247-0013-15 ")
 ;;67
 ;;21,"00247-0013-18 ")
 ;;68
 ;;21,"00247-0013-20 ")
 ;;69
 ;;21,"00247-0013-21 ")
 ;;70
 ;;21,"00247-0013-25 ")
 ;;71
 ;;21,"00247-0013-28 ")
 ;;72
 ;;21,"00247-0013-30 ")
 ;;73
 ;;21,"00247-0013-40 ")
 ;;74
 ;;21,"00247-0013-60 ")
 ;;75
 ;;21,"00247-0013-98 ")
 ;;76
 ;;21,"00247-0088-00 ")
 ;;77
 ;;21,"00247-0088-02 ")
 ;;78
 ;;21,"00247-0088-04 ")
 ;;79
 ;;21,"00247-0088-07 ")
 ;;80
 ;;21,"00247-0088-14 ")
 ;;81
 ;;21,"00247-0088-15 ")
 ;;82
 ;;21,"00247-0088-16 ")
 ;;83
 ;;21,"00247-0088-18 ")
 ;;84
 ;;21,"00247-0088-20 ")
 ;;85
 ;;21,"00247-0088-28 ")
 ;;86
 ;;21,"00247-0088-30 ")
 ;;87
 ;;21,"00247-0088-40 ")
 ;;88
 ;;21,"00247-0088-52 ")
 ;;89
 ;;21,"00247-0088-56 ")
 ;;90
 ;;21,"00247-0088-60 ")
 ;;91
 ;;21,"00247-0112-10 ")
 ;;92
 ;;21,"00247-0112-15 ")
 ;;93
 ;;21,"00247-0112-16 ")
 ;;94
 ;;21,"00247-0112-20 ")
 ;;95
 ;;21,"00247-0112-24 ")
 ;;96
 ;;21,"00247-0112-28 ")
 ;;97
 ;;21,"00247-0112-30 ")
 ;;98
 ;;21,"00247-0112-40 ")
 ;;99
 ;;21,"00247-0180-03 ")
 ;;100
 ;;21,"00247-0180-06 ")
 ;;101
 ;;21,"00247-0180-10 ")
 ;;102
 ;;21,"00247-0180-12 ")
 ;;103
 ;;21,"00247-0180-14 ")
 ;;104
 ;;21,"00247-0180-15 ")
 ;;105
 ;;21,"00247-0180-20 ")
 ;;106
 ;;21,"00247-0180-24 ")
 ;;107
 ;;21,"00247-0180-28 ")
 ;;108
 ;;21,"00247-0180-40 ")
 ;;109
 ;;21,"00247-0180-60 ")
 ;;110
 ;;21,"00247-0286-06 ")
 ;;111
 ;;21,"00247-0286-16 ")
 ;;112
 ;;21,"00247-0286-18 ")
 ;;113
 ;;21,"00247-0286-20 ")
 ;;114
 ;;21,"00247-0286-30 ")
 ;;115
 ;;21,"00247-0286-40 ")
 ;;116
 ;;21,"00247-0341-20 ")
 ;;117
 ;;21,"00247-0341-30 ")
 ;;118
 ;;21,"00247-0367-10 ")
 ;;119
 ;;21,"00247-0367-18 ")
 ;;120
 ;;21,"00247-0367-20 ")
 ;;121
 ;;21,"00247-0367-28 ")
 ;;122
 ;;21,"00247-0367-30 ")
 ;;123
 ;;21,"00247-0367-40 ")
 ;;124
 ;;21,"00247-0367-56 ")
 ;;125
 ;;21,"00247-0391-15 ")
 ;;126
 ;;21,"00247-0391-20 ")
 ;;127
 ;;21,"00247-0391-30 ")
 ;;128
 ;;21,"00247-0391-40 ")
 ;;129
 ;;21,"00247-0610-06 ")
 ;;130
 ;;21,"00247-0610-15 ")
 ;;131
 ;;21,"00247-0610-16 ")
 ;;132
 ;;21,"00247-0610-20 ")
 ;;133
 ;;21,"00247-0610-21 ")
 ;;134
 ;;21,"00247-0610-30 ")
 ;;135
 ;;21,"00247-0610-32 ")
 ;;136
 ;;21,"00247-0610-40 ")
 ;;137
 ;;21,"00247-0610-42 ")
 ;;138
 ;;21,"00247-0610-60 ")
 ;;139
 ;;21,"00254-2410-38 ")
 ;;140
 ;;21,"00364-6726-54 ")
 ;;141
 ;;21,"00378-0751-01 ")
 ;;142
 ;;21,"00378-0751-05 ")
 ;;143
 ;;21,"00378-0751-10 ")
 ;;144
 ;;21,"00378-0751-93 ")
 ;;145
 ;;21,"00378-0761-01 ")
 ;;146
 ;;21,"00378-0771-01 ")
 ;;147
 ;;21,"00378-0771-05 ")
 ;;148
 ;;21,"00378-0771-93 ")
 ;;149
 ;;21,"00378-3354-01 ")
 ;;150
 ;;21,"00378-3356-01 ")
 ;;151
 ;;21,"00378-3358-01 ")
 ;;152
 ;;21,"00378-3358-05 ")
 ;;153
 ;;21,"00378-8815-91 ")
 ;;154
 ;;21,"00378-8816-91 ")
 ;;155
 ;;21,"00440-1350-09 ")
 ;;156
 ;;21,"00440-1740-40 ")
 ;;157
 ;;21,"00440-7238-04 ")
 ;;158
 ;;21,"00440-7238-20 ")
 ;;159
 ;;21,"00440-7238-30 ")
 ;;160
 ;;21,"00440-7238-40 ")
 ;;161
 ;;21,"00440-7238-90 ")
 ;;162
 ;;21,"00440-7238-91 ")
 ;;163
 ;;21,"00440-7239-20 ")
 ;;164
 ;;21,"00440-7239-40 ")
 ;;165
 ;;21,"00440-7270-10 ")
 ;;166
 ;;21,"00440-7270-20 ")
 ;;167
 ;;21,"00440-7270-28 ")
 ;;168
 ;;21,"00440-7270-30 ")
 ;;169
 ;;21,"00440-7270-40 ")
 ;;170
 ;;21,"00440-7350-02 ")
 ;;171
 ;;21,"00440-7350-03 ")
 ;;172
 ;;21,"00440-7350-04 ")
 ;;173
 ;;21,"00440-7350-06 ")
 ;;174
 ;;21,"00440-7350-09 ")
 ;;175
 ;;21,"00440-7350-10 ")
 ;;176
 ;;21,"00440-7350-12 ")
 ;;177
 ;;21,"00440-7350-15 ")
 ;;178
 ;;21,"00440-7350-21 ")
 ;;179
 ;;21,"00440-7350-30 ")
 ;;180
 ;;21,"00440-7350-60 ")
 ;;181
 ;;21,"00440-7350-81 ")
 ;;182
 ;;21,"00440-7350-85 ")
 ;;183
 ;;21,"00440-7350-89 ")
 ;;184
 ;;21,"00440-7350-90 ")
 ;;185
 ;;21,"00440-7740-10 ")
 ;;186
 ;;21,"00440-7740-12 ")
 ;;187
 ;;21,"00440-7740-20 ")
 ;;188
 ;;21,"00440-7740-24 ")
 ;;189
 ;;21,"00440-7740-28 ")
 ;;190
 ;;21,"00440-7740-40 ")
 ;;191
 ;;21,"00440-7740-60 ")
 ;;192
 ;;21,"00440-7740-81 ")
 ;;193
 ;;21,"00440-7740-85 ")
 ;;194
 ;;21,"00440-7740-89 ")
 ;;195
 ;;21,"00440-7740-90 ")
 ;;196
 ;;21,"00440-7740-91 ")
 ;;197
 ;;21,"00440-7740-92 ")
 ;;198
 ;;21,"00440-7741-04 ")
 ;;199
 ;;21,"00440-7741-06 ")
 ;;200
 ;;21,"00440-7741-20 ")
 ;;201
 ;;21,"00440-7741-30 ")
 ;;202
 ;;21,"00440-7741-40 ")
 ;;203
 ;;21,"00440-7741-90 ")
 ;;204
 ;;21,"00440-7741-92 ")
 ;;205
 ;;21,"00440-7874-28 ")
 ;;206
 ;;21,"00440-7880-14 ")
 ;;207
 ;;21,"00440-7880-20 ")
 ;;208
 ;;21,"00440-7880-28 ")
 ;;209
 ;;21,"00440-7880-40 ")
 ;;210
 ;;21,"00440-7880-60 ")
 ;;211
 ;;21,"00440-8356-06 ")
 ;;212
 ;;21,"00527-1152-01 ")
 ;;213
 ;;21,"00527-1152-05 ")
 ;;214
 ;;21,"00527-1302-01 ")
 ;;215
 ;;21,"00527-1302-05 ")
 ;;216
 ;;21,"00555-0585-02 ")
 ;;217
 ;;21,"00555-0585-04 ")
 ;;218
 ;;21,"00591-2520-01 ")
 ;;219
 ;;21,"00591-2520-05 ")
 ;;220
 ;;21,"00591-2830-01 ")
 ;;221
 ;;21,"00591-2830-25 ")
 ;;222
 ;;21,"00591-3222-02 ")
 ;;223
 ;;21,"00591-3222-47 ")
 ;;224
 ;;21,"00591-3256-01 ")
 ;;225
 ;;21,"00591-3968-01 ")
 ;;226
 ;;21,"00591-3968-05 ")
 ;;227
 ;;21,"00591-5381-01 ")
 ;;228
 ;;21,"00591-5381-05 ")
 ;;229
 ;;21,"00591-5382-01 ")
 ;;230
 ;;21,"00591-5382-05 ")
 ;;231
 ;;21,"00591-5513-01 ")
 ;;232
 ;;21,"00591-5513-05 ")
 ;;233
 ;;21,"00591-5513-10 ")
 ;;234
 ;;21,"00591-5658-01 ")
 ;;235
 ;;21,"00591-5658-05 ")
 ;;236
 ;;21,"00591-5658-10 ")
 ;;237
 ;;21,"00603-2582-21 ")
 ;;238
 ;;21,"00603-2582-28 ")
 ;;239
 ;;21,"00603-2582-32 ")
 ;;240
 ;;21,"00603-2583-21 ")
 ;;241
 ;;21,"00603-2584-21 ")
 ;;242
 ;;21,"00603-2886-21 ")
 ;;243
 ;;21,"00603-3078-21 ")
 ;;244
 ;;21,"00603-3078-28 ")
 ;;245
 ;;21,"00603-3079-02 ")
 ;;246
 ;;21,"00603-3079-03 ")
 ;;247
 ;;21,"00603-3079-04 ")
 ;;248
 ;;21,"00603-3079-21 ")
 ;;249
 ;;21,"00603-3079-28 ")
 ;;250
 ;;21,"00603-3079-32 ")
 ;;251
 ;;21,"00603-3079-34 ")
 ;;252
 ;;21,"00603-4485-21 ")
 ;;253
 ;;21,"00603-4485-28 ")
 ;;254
 ;;21,"00603-4486-21 ")
 ;;255
 ;;21,"00603-4486-28 ")
 ;;256
 ;;21,"00603-4486-32 ")
 ;;257
 ;;21,"00603-4487-21 ")
 ;;258
 ;;21,"00603-4487-28 ")
 ;;259
 ;;21,"00603-4488-21 ")
 ;;260
 ;;21,"00603-4488-28 ")
 ;;261
 ;;21,"00615-3520-53 ")
 ;;262
 ;;21,"00615-3520-63 ")
 ;;263
 ;;21,"00641-6103-01 ")
 ;;264
 ;;21,"00641-6103-25 ")
 ;;265
 ;;21,"00677-0430-01 ")
 ;;266
 ;;21,"00677-0431-01 ")
 ;;267
 ;;21,"00677-0431-05 ")
 ;;268
 ;;21,"00677-0589-01 ")
 ;;269
 ;;21,"00677-0589-05 ")
 ;;270
 ;;21,"00677-0589-06 ")
 ;;271
 ;;21,"00677-0589-07 ")
 ;;272
 ;;21,"00677-0589-10 ")
 ;;273
 ;;21,"00677-1429-05 ")
 ;;274
 ;;21,"00677-1918-01 ")
 ;;275
 ;;21,"00677-1918-05 ")
 ;;276
 ;;21,"00677-1918-10 ")
 ;;277
 ;;21,"00781-1050-01 ")
 ;;278
 ;;21,"00781-1050-05 ")
 ;;279
 ;;21,"00781-1050-10 ")
 ;;280
 ;;21,"00781-1324-01 ")
 ;;281
 ;;21,"00781-1324-10 ")
 ;;282
 ;;21,"00781-1649-01 ")
 ;;283
 ;;21,"00781-1649-05 ")
 ;;284
 ;;21,"00781-1750-01 ")
 ;;285
 ;;21,"00781-1750-05 ")
 ;;286
 ;;21,"00781-1760-01 ")
 ;;287
 ;;21,"00781-1760-05 ")
 ;;288
 ;;21,"00781-5005-01 ")
 ;;289
 ;;21,"00781-5005-05 ")
 ;;290
 ;;21,"00781-5005-10 ")
 ;;291
 ;;21,"00781-5032-01 ")
 ;;292
 ;;21,"00781-5032-10 ")
 ;;293
 ;;21,"00904-0302-40 ")
 ;;294
 ;;21,"00904-0302-60 ")
 ;;295
 ;;21,"00904-0355-60 ")
 ;;296
 ;;21,"00904-0355-80 ")
 ;;297
 ;;21,"00904-0356-60 ")
 ;;298
 ;;21,"00904-2364-40 ")
 ;;299
 ;;21,"00904-2364-60 ")
 ;;300
 ;;21,"00904-2365-40 ")
 ;;301
 ;;21,"00904-2365-60 ")
 ;;302
 ;;21,"00904-5238-60 ")
 ;;303
 ;;21,"00904-5654-40 ")
 ;;304
 ;;21,"00904-5654-60 ")
 ;;305
 ;;21,"00904-7809-40 ")
 ;;306
 ;;21,"00904-7809-60 ")
 ;;307
 ;;21,"00904-7809-61 ")
 ;;308
 ;;21,"00904-7809-80 ")
 ;;309
 ;;21,"10135-0506-01 ")
 ;;310
 ;;21,"10135-0507-01 ")
 ;;311
 ;;21,"10135-0507-05 ")
 ;;312
 ;;21,"10135-0507-10 ")
 ;;313
 ;;21,"10139-0230-02 ")
 ;;314
 ;;21,"10139-0230-10 ")
 ;;315
 ;;21,"10147-0740-01 ")
 ;;316
 ;;21,"10147-0790-01 ")
 ;;317
 ;;21,"10544-0002-20 ")
 ;;318
 ;;21,"10544-0033-30 ")
 ;;319
 ;;21,"10544-0132-30 ")
 ;;320
 ;;21,"10544-0159-09 ")
 ;;321
 ;;21,"10544-0159-15 ")
 ;;322
 ;;21,"10544-0159-20 ")
 ;;323
 ;;21,"10544-0159-30 ")
 ;;324
 ;;21,"10544-0259-20 ")
 ;;325
 ;;21,"10544-0283-20 ")
 ;;326
 ;;21,"10544-0303-28 ")
 ;;327
 ;;21,"10544-0303-30 ")
 ;;328
 ;;21,"10544-0303-40 ")
 ;;329
 ;;21,"10544-0303-60 ")
 ;;330
 ;;21,"10544-0303-90 ")
 ;;331
 ;;21,"10544-0308-30 ")
 ;;332
 ;;21,"10544-0308-60 ")
 ;;333
 ;;21,"10544-0308-90 ")
 ;;334
 ;;21,"10544-0321-30 ")
 ;;335
 ;;21,"10544-0321-40 ")
 ;;336
 ;;21,"10544-0321-60 ")
 ;;337
 ;;21,"10544-0321-81 ")
 ;;338
 ;;21,"10544-0345-30 ")
 ;;339
 ;;21,"10544-0359-30 ")
 ;;340
 ;;21,"10544-0359-56 ")
 ;;341
 ;;21,"10544-0359-60 ")
 ;;342
 ;;21,"10544-0524-20 ")
 ;;343
 ;;21,"10702-0006-01 ")
 ;;344
 ;;21,"10702-0006-03 ")
 ;;345
 ;;21,"10702-0006-10 ")
 ;;346
 ;;21,"10702-0006-50 ")
 ;;347
 ;;21,"10702-0007-01 ")
 ;;348
 ;;21,"10702-0007-03 ")
 ;;349
 ;;21,"10702-0007-05 ")
 ;;350
 ;;21,"10702-0007-10 ")
 ;;351
 ;;21,"10702-0007-50 ")
 ;;352
 ;;21,"12280-0044-00 ")
 ;;353
 ;;21,"12280-0142-00 ")
 ;;354
 ;;21,"12280-0229-01 ")
 ;;355
 ;;21,"12280-0266-90 ")
 ;;356
 ;;21,"12280-0267-30 ")
 ;;357
 ;;21,"12634-0437-12 ")
 ;;358
 ;;21,"12634-0437-60 ")
 ;;359
 ;;21,"12634-0437-71 ")
 ;;360
 ;;21,"12634-0437-90 ")
 ;;361
 ;;21,"12634-0528-00 ")
 ;;362
 ;;21,"12634-0528-45 ")
 ;;363
 ;;21,"12634-0528-60 ")
 ;;364
 ;;21,"12634-0528-71 ")
 ;;365
 ;;21,"12634-0528-80 ")
 ;;366
 ;;21,"12634-0528-81 ")
 ;;367
 ;;21,"12634-0528-85 ")
 ;;368
 ;;21,"12634-0528-90 ")
 ;;369
 ;;21,"12634-0816-71 ")
 ;;370
 ;;21,"12634-0836-71 ")
 ;;371
 ;;21,"12634-0836-90 ")
 ;;372
 ;;21,"16590-0039-07 ")
 ;;373
 ;;21,"16590-0039-20 ")
 ;;374
 ;;21,"16590-0039-28 ")
 ;;375
 ;;21,"16590-0039-30 ")
 ;;376
 ;;21,"16590-0039-40 ")
 ;;377
 ;;21,"16590-0039-45 ")
 ;;378
 ;;21,"16590-0039-56 ")
 ;;379
 ;;21,"16590-0039-60 ")
 ;;380
 ;;21,"16590-0039-62 ")
 ;;381
 ;;21,"16590-0039-72 ")
 ;;382
 ;;21,"16590-0039-73 ")
 ;;383
 ;;21,"16590-0039-82 ")
 ;;384
 ;;21,"16590-0039-90 ")
 ;;385
 ;;21,"16590-0065-10 ")
 ;;386
 ;;21,"16590-0065-15 ")
 ;;387
 ;;21,"16590-0065-20 ")
 ;;388
 ;;21,"16590-0065-21 ")
 ;;389
 ;;21,"16590-0065-28 ")
 ;;390
 ;;21,"16590-0065-30 ")
 ;;391
 ;;21,"16590-0065-40 ")
 ;;392
 ;;21,"16590-0065-45 ")
 ;;393
 ;
OTHER ; OTHER ROUTINES
 D ^BGP47S10
 D ^BGP47S11
 D ^BGP47S12
 D ^BGP47S13
 D ^BGP47S14
 D ^BGP47S15
 D ^BGP47S16
 D ^BGP47S17
 D ^BGP47S18
 D ^BGP47S19
 D ^BGP47S2
 D ^BGP47S20
 D ^BGP47S21
 D ^BGP47S22
 D ^BGP47S23
 D ^BGP47S24
 D ^BGP47S25
 D ^BGP47S26
 D ^BGP47S27
 D ^BGP47S28
 D ^BGP47S29
 D ^BGP47S3
 D ^BGP47S30
 D ^BGP47S31
 D ^BGP47S32
 D ^BGP47S33
 D ^BGP47S34
 D ^BGP47S35
 D ^BGP47S36
 D ^BGP47S4
 D ^BGP47S5
 D ^BGP47S6
 D ^BGP47S7
 D ^BGP47S8
 D ^BGP47S9
 Q