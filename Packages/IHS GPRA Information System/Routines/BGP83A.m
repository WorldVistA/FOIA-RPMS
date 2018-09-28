BGP83A ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;;BGP PQA BENZODIAZ OP NDC
 ;
 ; This routine loads Taxonomy BGP PQA BENZODIAZ OP NDC
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
 ;;21,"00004-0058-01 ")
 ;;1
 ;;21,"00004-0058-32 ")
 ;;2
 ;;21,"00004-0068-01 ")
 ;;3
 ;;21,"00004-0068-32 ")
 ;;4
 ;;21,"00004-0098-01 ")
 ;;5
 ;;21,"00009-0017-55 ")
 ;;6
 ;;21,"00009-0017-58 ")
 ;;7
 ;;21,"00009-0017-59 ")
 ;;8
 ;;21,"00009-0029-01 ")
 ;;9
 ;;21,"00009-0029-02 ")
 ;;10
 ;;21,"00009-0055-01 ")
 ;;11
 ;;21,"00009-0055-03 ")
 ;;12
 ;;21,"00009-0057-07 ")
 ;;13
 ;;21,"00009-0059-07 ")
 ;;14
 ;;21,"00009-0066-07 ")
 ;;15
 ;;21,"00009-0068-07 ")
 ;;16
 ;;21,"00009-0090-01 ")
 ;;17
 ;;21,"00009-0090-04 ")
 ;;18
 ;;21,"00009-0094-01 ")
 ;;19
 ;;21,"00054-3068-44 ")
 ;;20
 ;;21,"00054-3185-44 ")
 ;;21
 ;;21,"00054-3188-63 ")
 ;;22
 ;;21,"00054-3532-44 ")
 ;;23
 ;;21,"00054-3566-99 ")
 ;;24
 ;;21,"00054-4858-51 ")
 ;;25
 ;;21,"00054-4859-29 ")
 ;;26
 ;;21,"00054-4859-51 ")
 ;;27
 ;;21,"00054-8207-16 ")
 ;;28
 ;;21,"00054-8858-25 ")
 ;;29
 ;;21,"00054-8859-25 ")
 ;;30
 ;;21,"00093-0129-01 ")
 ;;31
 ;;21,"00093-0130-01 ")
 ;;32
 ;;21,"00093-0832-01 ")
 ;;33
 ;;21,"00093-0832-05 ")
 ;;34
 ;;21,"00093-0832-10 ")
 ;;35
 ;;21,"00093-0832-19 ")
 ;;36
 ;;21,"00093-0833-01 ")
 ;;37
 ;;21,"00093-0833-05 ")
 ;;38
 ;;21,"00093-0833-10 ")
 ;;39
 ;;21,"00093-0833-19 ")
 ;;40
 ;;21,"00093-0834-01 ")
 ;;41
 ;;21,"00093-0834-05 ")
 ;;42
 ;;21,"00093-0834-19 ")
 ;;43
 ;;21,"00093-4820-01 ")
 ;;44
 ;;21,"00093-4820-05 ")
 ;;45
 ;;21,"00093-4821-01 ")
 ;;46
 ;;21,"00093-4821-05 ")
 ;;47
 ;;21,"00093-4821-10 ")
 ;;48
 ;;21,"00093-4822-01 ")
 ;;49
 ;;21,"00093-4822-10 ")
 ;;50
 ;;21,"00093-5450-06 ")
 ;;51
 ;;21,"00093-5451-06 ")
 ;;52
 ;;21,"00093-5452-06 ")
 ;;53
 ;;21,"00093-5453-06 ")
 ;;54
 ;;21,"00093-6137-32 ")
 ;;55
 ;;21,"00093-6138-32 ")
 ;;56
 ;;21,"00093-6139-32 ")
 ;;57
 ;;21,"00121-0770-01 ")
 ;;58
 ;;21,"00140-0004-01 ")
 ;;59
 ;;21,"00140-0005-01 ")
 ;;60
 ;;21,"00140-0005-14 ")
 ;;61
 ;;21,"00140-0005-35 ")
 ;;62
 ;;21,"00140-0006-01 ")
 ;;63
 ;;21,"00140-0006-14 ")
 ;;64
 ;;21,"00140-0006-35 ")
 ;;65
 ;;21,"00143-3367-01 ")
 ;;66
 ;;21,"00143-3367-05 ")
 ;;67
 ;;21,"00143-3370-01 ")
 ;;68
 ;;21,"00143-3370-05 ")
 ;;69
 ;;21,"00172-3925-60 ")
 ;;70
 ;;21,"00172-3925-70 ")
 ;;71
 ;;21,"00172-3926-60 ")
 ;;72
 ;;21,"00172-3926-70 ")
 ;;73
 ;;21,"00172-3926-80 ")
 ;;74
 ;;21,"00172-3927-60 ")
 ;;75
 ;;21,"00172-3927-70 ")
 ;;76
 ;;21,"00172-3927-80 ")
 ;;77
 ;;21,"00172-4804-60 ")
 ;;78
 ;;21,"00172-4804-70 ")
 ;;79
 ;;21,"00172-4805-60 ")
 ;;80
 ;;21,"00172-4805-70 ")
 ;;81
 ;;21,"00172-4806-60 ")
 ;;82
 ;;21,"00179-0131-30 ")
 ;;83
 ;;21,"00179-0131-60 ")
 ;;84
 ;;21,"00185-0063-01 ")
 ;;85
 ;;21,"00185-0063-05 ")
 ;;86
 ;;21,"00185-0063-10 ")
 ;;87
 ;;21,"00185-0064-01 ")
 ;;88
 ;;21,"00185-0064-05 ")
 ;;89
 ;;21,"00185-0064-10 ")
 ;;90
 ;;21,"00185-0065-01 ")
 ;;91
 ;;21,"00185-0065-05 ")
 ;;92
 ;;21,"00185-0065-10 ")
 ;;93
 ;;21,"00187-0063-01 ")
 ;;94
 ;;21,"00187-0064-01 ")
 ;;95
 ;;21,"00187-0064-10 ")
 ;;96
 ;;21,"00187-0065-01 ")
 ;;97
 ;;21,"00187-0658-20 ")
 ;;98
 ;;21,"00187-0659-20 ")
 ;;99
 ;;21,"00187-4100-10 ")
 ;;100
 ;;21,"00228-2027-10 ")
 ;;101
 ;;21,"00228-2027-50 ")
 ;;102
 ;;21,"00228-2027-96 ")
 ;;103
 ;;21,"00228-2029-10 ")
 ;;104
 ;;21,"00228-2029-50 ")
 ;;105
 ;;21,"00228-2029-96 ")
 ;;106
 ;;21,"00228-2031-10 ")
 ;;107
 ;;21,"00228-2031-50 ")
 ;;108
 ;;21,"00228-2031-96 ")
 ;;109
 ;;21,"00228-2039-10 ")
 ;;110
 ;;21,"00228-2039-50 ")
 ;;111
 ;;21,"00228-2057-10 ")
 ;;112
 ;;21,"00228-2057-50 ")
 ;;113
 ;;21,"00228-2059-10 ")
 ;;114
 ;;21,"00228-2067-10 ")
 ;;115
 ;;21,"00228-2067-50 ")
 ;;116
 ;;21,"00228-2069-10 ")
 ;;117
 ;;21,"00228-2069-50 ")
 ;;118
 ;;21,"00228-2073-10 ")
 ;;119
 ;;21,"00228-2076-10 ")
 ;;120
 ;;21,"00228-2076-50 ")
 ;;121
 ;;21,"00228-2077-10 ")
 ;;122
 ;;21,"00228-2077-50 ")
 ;;123
 ;;21,"00228-3003-11 ")
 ;;124
 ;;21,"00228-3003-50 ")
 ;;125
 ;;21,"00228-3004-11 ")
 ;;126
 ;;21,"00228-3004-50 ")
 ;;127
 ;;21,"00228-3005-11 ")
 ;;128
 ;;21,"00228-3005-50 ")
 ;;129
 ;;21,"00228-3083-06 ")
 ;;130
 ;;21,"00228-3084-06 ")
 ;;131
 ;;21,"00228-3086-06 ")
 ;;132
 ;;21,"00228-3087-06 ")
 ;;133
 ;;21,"00228-4019-11 ")
 ;;134
 ;;21,"00228-4022-11 ")
 ;;135
 ;;21,"00228-4024-11 ")
 ;;136
 ;;21,"00228-4025-11 ")
 ;;137
 ;;21,"00378-0030-01 ")
 ;;138
 ;;21,"00378-0030-05 ")
 ;;139
 ;;21,"00378-0040-01 ")
 ;;140
 ;;21,"00378-0040-05 ")
 ;;141
 ;;21,"00378-0070-01 ")
 ;;142
 ;;21,"00378-0211-01 ")
 ;;143
 ;;21,"00378-0211-05 ")
 ;;144
 ;;21,"00378-0271-01 ")
 ;;145
 ;;21,"00378-0271-05 ")
 ;;146
 ;;21,"00378-0277-01 ")
 ;;147
 ;;21,"00378-0277-05 ")
 ;;148
 ;;21,"00378-0345-01 ")
 ;;149
 ;;21,"00378-0345-05 ")
 ;;150
 ;;21,"00378-0477-01 ")
 ;;151
 ;;21,"00378-0477-05 ")
 ;;152
 ;;21,"00378-1910-01 ")
 ;;153
 ;;21,"00378-1910-10 ")
 ;;154
 ;;21,"00378-1910-77 ")
 ;;155
 ;;21,"00378-1912-01 ")
 ;;156
 ;;21,"00378-1912-10 ")
 ;;157
 ;;21,"00378-1912-77 ")
 ;;158
 ;;21,"00378-1914-01 ")
 ;;159
 ;;21,"00378-1914-05 ")
 ;;160
 ;;21,"00378-2321-01 ")
 ;;161
 ;;21,"00378-2321-05 ")
 ;;162
 ;;21,"00378-2457-01 ")
 ;;163
 ;;21,"00378-2457-10 ")
 ;;164
 ;;21,"00378-2777-01 ")
 ;;165
 ;;21,"00378-2777-05 ")
 ;;166
 ;;21,"00378-3110-01 ")
 ;;167
 ;;21,"00378-3120-93 ")
 ;;168
 ;;21,"00378-4001-01 ")
 ;;169
 ;;21,"00378-4001-05 ")
 ;;170
 ;;21,"00378-4001-77 ")
 ;;171
 ;;21,"00378-4003-01 ")
 ;;172
 ;;21,"00378-4003-05 ")
 ;;173
 ;;21,"00378-4003-77 ")
 ;;174
 ;;21,"00378-4005-01 ")
 ;;175
 ;;21,"00378-4005-05 ")
 ;;176
 ;;21,"00378-4005-77 ")
 ;;177
 ;;21,"00378-4007-01 ")
 ;;178
 ;;21,"00378-4010-01 ")
 ;;179
 ;;21,"00378-4010-05 ")
 ;;180
 ;;21,"00378-4010-77 ")
 ;;181
 ;;21,"00378-4415-01 ")
 ;;182
 ;;21,"00378-4430-01 ")
 ;;183
 ;;21,"00378-5021-91 ")
 ;;184
 ;;21,"00378-5022-91 ")
 ;;185
 ;;21,"00378-5050-01 ")
 ;;186
 ;;21,"00378-5050-05 ")
 ;;187
 ;;21,"00378-5050-77 ")
 ;;188
 ;;21,"00406-9914-03 ")
 ;;189
 ;;21,"00406-9915-01 ")
 ;;190
 ;;21,"00406-9915-03 ")
 ;;191
 ;;21,"00406-9916-01 ")
 ;;192
 ;;21,"00406-9917-01 ")
 ;;193
 ;;21,"00406-9959-03 ")
 ;;194
 ;;21,"00406-9960-01 ")
 ;;195
 ;;21,"00440-0146-01 ")
 ;;196
 ;;21,"00440-0146-05 ")
 ;;197
 ;;21,"00440-0147-01 ")
 ;;198
 ;;21,"00440-0147-05 ")
 ;;199
 ;;21,"00440-0148-01 ")
 ;;200
 ;;21,"00440-0149-30 ")
 ;;201
 ;;21,"00440-7070-06 ")
 ;;202
 ;;21,"00440-7070-30 ")
 ;;203
 ;;21,"00440-7070-60 ")
 ;;204
 ;;21,"00440-7070-90 ")
 ;;205
 ;;21,"00440-7071-03 ")
 ;;206
 ;;21,"00440-7071-06 ")
 ;;207
 ;;21,"00440-7071-10 ")
 ;;208
 ;;21,"00440-7071-30 ")
 ;;209
 ;;21,"00440-7071-60 ")
 ;;210
 ;;21,"00440-7071-90 ")
 ;;211
 ;;21,"00440-7071-91 ")
 ;;212
 ;;21,"00440-7072-30 ")
 ;;213
 ;;21,"00440-7072-90 ")
 ;;214
 ;;21,"00440-7072-91 ")
 ;;215
 ;;21,"00440-7073-60 ")
 ;;216
 ;;21,"00440-7073-90 ")
 ;;217
 ;;21,"00440-7250-30 ")
 ;;218
 ;;21,"00440-7251-30 ")
 ;;219
 ;;21,"00440-7251-60 ")
 ;;220
 ;;21,"00440-7251-90 ")
 ;;221
 ;;21,"00440-7251-91 ")
 ;;222
 ;;21,"00440-7252-03 ")
 ;;223
 ;;21,"00440-7252-06 ")
 ;;224
 ;;21,"00440-7252-08 ")
 ;;225
 ;;21,"00440-7252-12 ")
 ;;226
 ;;21,"00440-7252-15 ")
 ;;227
 ;;21,"00440-7252-30 ")
 ;;228
 ;;21,"00440-7252-90 ")
 ;;229
 ;;21,"00440-7252-91 ")
 ;;230
 ;;21,"00440-7275-30 ")
 ;;231
 ;;21,"00440-7275-60 ")
 ;;232
 ;;21,"00440-7320-30 ")
 ;;233
 ;;21,"00440-7320-60 ")
 ;;234
 ;;21,"00440-7320-90 ")
 ;;235
 ;;21,"00440-7320-91 ")
 ;;236
 ;;21,"00440-7321-30 ")
 ;;237
 ;;21,"00440-7321-60 ")
 ;;238
 ;;21,"00440-7321-90 ")
 ;;239
 ;;21,"00440-7321-91 ")
 ;;240
 ;;21,"00440-7322-30 ")
 ;;241
 ;;21,"00440-7322-60 ")
 ;;242
 ;;21,"00440-7322-90 ")
 ;;243
 ;;21,"00440-7375-30 ")
 ;;244
 ;;21,"00440-7376-03 ")
 ;;245
 ;;21,"00440-7376-04 ")
 ;;246
 ;;21,"00440-7376-06 ")
 ;;247
 ;;21,"00440-7376-10 ")
 ;;248
 ;;21,"00440-7376-30 ")
 ;;249
 ;;21,"00440-7376-60 ")
 ;;250
 ;;21,"00440-7376-90 ")
 ;;251
 ;;21,"00440-7376-91 ")
 ;;252
 ;;21,"00440-7377-30 ")
 ;;253
 ;;21,"00440-7377-60 ")
 ;;254
 ;;21,"00440-7377-90 ")
 ;;255
 ;;21,"00440-7377-91 ")
 ;;256
 ;;21,"00440-7377-93 ")
 ;;257
 ;;21,"00440-7516-30 ")
 ;;258
 ;;21,"00440-7530-30 ")
 ;;259
 ;;21,"00440-7531-30 ")
 ;;260
 ;;21,"00440-7720-06 ")
 ;;261
 ;;21,"00440-7720-14 ")
 ;;262
 ;;21,"00440-7720-15 ")
 ;;263
 ;;21,"00440-7720-30 ")
 ;;264
 ;;21,"00440-7720-60 ")
 ;;265
 ;;21,"00440-7720-90 ")
 ;;266
 ;;21,"00440-7721-03 ")
 ;;267
 ;;21,"00440-7721-04 ")
 ;;268
 ;;21,"00440-7721-06 ")
 ;;269
 ;;21,"00440-7721-08 ")
 ;;270
 ;;21,"00440-7721-15 ")
 ;;271
 ;;21,"00440-7721-30 ")
 ;;272
 ;;21,"00440-7721-60 ")
 ;;273
 ;;21,"00440-7721-90 ")
 ;;274
 ;;21,"00440-7721-91 ")
 ;;275
 ;;21,"00440-7722-30 ")
 ;;276
 ;;21,"00440-7722-60 ")
 ;;277
 ;;21,"00440-7722-90 ")
 ;;278
 ;;21,"00440-7995-30 ")
 ;;279
 ;;21,"00440-7995-50 ")
 ;;280
 ;;21,"00440-7995-60 ")
 ;;281
 ;;21,"00440-7995-90 ")
 ;;282
 ;;21,"00440-7995-91 ")
 ;;283
 ;;21,"00440-7996-30 ")
 ;;284
 ;;21,"00440-7996-50 ")
 ;;285
 ;;21,"00440-7996-60 ")
 ;;286
 ;;21,"00440-7996-90 ")
 ;;287
 ;;21,"00440-7996-91 ")
 ;;288
 ;;21,"00440-7997-30 ")
 ;;289
 ;;21,"00440-7997-50 ")
 ;;290
 ;;21,"00440-7997-60 ")
 ;;291
 ;;21,"00440-7997-90 ")
 ;;292
 ;;21,"00440-7997-91 ")
 ;;293
 ;;21,"00440-8475-14 ")
 ;;294
 ;;21,"00440-8475-15 ")
 ;;295
 ;;21,"00440-8475-30 ")
 ;;296
 ;;21,"00440-8476-14 ")
 ;;297
 ;;21,"00440-8476-15 ")
 ;;298
 ;;21,"00440-8476-30 ")
 ;;299
 ;;21,"00527-1768-36 ")
 ;;300
 ;;21,"00555-0033-02 ")
 ;;301
 ;;21,"00555-0033-05 ")
 ;;302
 ;;21,"00555-0094-96 ")
 ;;303
 ;;21,"00555-0095-96 ")
 ;;304
 ;;21,"00555-0096-96 ")
 ;;305
 ;;21,"00555-0097-96 ")
 ;;306
 ;;21,"00555-0098-96 ")
 ;;307
 ;;21,"00555-0158-02 ")
 ;;308
 ;;21,"00555-0158-04 ")
 ;;309
 ;;21,"00555-0159-02 ")
 ;;310
 ;;21,"00555-0159-04 ")
 ;;311
 ;;21,"00574-0150-04 ")
 ;;312
 ;;21,"00574-0163-30 ")
 ;;313
 ;;21,"00591-0240-01 ")
 ;;314
 ;;21,"00591-0240-05 ")
 ;;315
 ;;21,"00591-0240-10 ")
 ;;316
 ;;21,"00591-0241-01 ")
 ;;317
 ;;21,"00591-0241-05 ")
 ;;318
 ;;21,"00591-0241-10 ")
 ;;319
 ;;21,"00591-0242-01 ")
 ;;320
 ;;21,"00591-0242-05 ")
 ;;321
 ;;21,"00591-0242-10 ")
 ;;322
 ;;21,"00591-0744-01 ")
 ;;323
 ;;21,"00591-0745-01 ")
 ;;324
 ;;21,"00591-5619-01 ")
 ;;325
 ;;21,"00591-5619-05 ")
 ;;326
 ;;21,"00591-5619-10 ")
 ;;327
 ;;21,"00591-5620-01 ")
 ;;328
 ;;21,"00591-5620-05 ")
 ;;329
 ;;21,"00591-5620-10 ")
 ;;330
 ;;21,"00591-5621-01 ")
 ;;331
 ;;21,"00591-5621-05 ")
 ;;332
 ;;21,"00591-5621-10 ")
 ;;333
 ;;21,"00603-2127-21 ")
 ;;334
 ;;21,"00603-2127-28 ")
 ;;335
 ;;21,"00603-2127-32 ")
 ;;336
 ;;21,"00603-2128-21 ")
 ;;337
 ;;21,"00603-2128-28 ")
 ;;338
 ;;21,"00603-2128-32 ")
 ;;339
 ;
OTHER ; OTHER ROUTINES
 D ^BGP83A10
 D ^BGP83A11
 D ^BGP83A12
 D ^BGP83A13
 D ^BGP83A14
 D ^BGP83A15
 D ^BGP83A16
 D ^BGP83A17
 D ^BGP83A18
 D ^BGP83A19
 D ^BGP83A2
 D ^BGP83A20
 D ^BGP83A21
 D ^BGP83A22
 D ^BGP83A23
 D ^BGP83A24
 D ^BGP83A25
 D ^BGP83A26
 D ^BGP83A27
 D ^BGP83A28
 D ^BGP83A29
 D ^BGP83A3
 D ^BGP83A30
 D ^BGP83A31
 D ^BGP83A32
 D ^BGP83A33
 D ^BGP83A34
 D ^BGP83A35
 D ^BGP83A36
 D ^BGP83A37
 D ^BGP83A38
 D ^BGP83A39
 D ^BGP83A4
 D ^BGP83A40
 D ^BGP83A41
 D ^BGP83A42
 D ^BGP83A43
 D ^BGP83A44
 D ^BGP83A45
 D ^BGP83A46
 D ^BGP83A5
 D ^BGP83A6
 D ^BGP83A7
 D ^BGP83A8
 D ^BGP83A9
 Q