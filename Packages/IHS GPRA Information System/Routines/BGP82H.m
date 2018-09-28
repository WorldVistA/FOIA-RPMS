BGP82H ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;;BGP PQA BETA BLOCKER NDC
 ;
 ; This routine loads Taxonomy BGP PQA BETA BLOCKER NDC
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
 ;;21,"00007-3370-13 ")
 ;;1
 ;;21,"00007-3371-13 ")
 ;;2
 ;;21,"00007-3372-13 ")
 ;;3
 ;;21,"00007-3373-13 ")
 ;;4
 ;;21,"00007-4139-20 ")
 ;;5
 ;;21,"00007-4140-20 ")
 ;;6
 ;;21,"00007-4141-20 ")
 ;;7
 ;;21,"00007-4142-20 ")
 ;;8
 ;;21,"00023-5874-30 ")
 ;;9
 ;;21,"00054-3727-63 ")
 ;;10
 ;;21,"00054-3730-63 ")
 ;;11
 ;;21,"00078-0458-05 ")
 ;;12
 ;;21,"00078-0459-05 ")
 ;;13
 ;;21,"00093-0051-01 ")
 ;;14
 ;;21,"00093-0051-05 ")
 ;;15
 ;;21,"00093-0135-01 ")
 ;;16
 ;;21,"00093-0135-05 ")
 ;;17
 ;;21,"00093-0733-01 ")
 ;;18
 ;;21,"00093-0733-10 ")
 ;;19
 ;;21,"00093-0734-01 ")
 ;;20
 ;;21,"00093-0734-10 ")
 ;;21
 ;;21,"00093-0752-01 ")
 ;;22
 ;;21,"00093-0752-10 ")
 ;;23
 ;;21,"00093-0753-01 ")
 ;;24
 ;;21,"00093-0753-05 ")
 ;;25
 ;;21,"00093-0787-01 ")
 ;;26
 ;;21,"00093-0787-10 ")
 ;;27
 ;;21,"00093-4235-01 ")
 ;;28
 ;;21,"00093-4236-01 ")
 ;;29
 ;;21,"00093-4237-01 ")
 ;;30
 ;;21,"00093-5270-56 ")
 ;;31
 ;;21,"00093-5271-56 ")
 ;;32
 ;;21,"00093-7295-01 ")
 ;;33
 ;;21,"00093-7295-05 ")
 ;;34
 ;;21,"00093-7296-01 ")
 ;;35
 ;;21,"00093-7296-05 ")
 ;;36
 ;;21,"00115-1659-01 ")
 ;;37
 ;;21,"00115-1659-03 ")
 ;;38
 ;;21,"00115-1660-01 ")
 ;;39
 ;;21,"00115-1660-03 ")
 ;;40
 ;;21,"00115-1661-01 ")
 ;;41
 ;;21,"00115-1661-03 ")
 ;;42
 ;;21,"00115-1662-01 ")
 ;;43
 ;;21,"00115-1662-02 ")
 ;;44
 ;;21,"00115-1693-01 ")
 ;;45
 ;;21,"00115-5311-01 ")
 ;;46
 ;;21,"00115-5322-01 ")
 ;;47
 ;;21,"00172-4364-60 ")
 ;;48
 ;;21,"00172-4364-70 ")
 ;;49
 ;;21,"00172-4365-60 ")
 ;;50
 ;;21,"00172-4365-70 ")
 ;;51
 ;;21,"00172-4366-60 ")
 ;;52
 ;;21,"00173-0790-01 ")
 ;;53
 ;;21,"00173-0790-02 ")
 ;;54
 ;;21,"00173-0791-01 ")
 ;;55
 ;;21,"00173-0791-02 ")
 ;;56
 ;;21,"00185-0010-01 ")
 ;;57
 ;;21,"00185-0010-05 ")
 ;;58
 ;;21,"00185-0117-01 ")
 ;;59
 ;;21,"00185-0117-05 ")
 ;;60
 ;;21,"00185-0118-01 ")
 ;;61
 ;;21,"00185-0118-05 ")
 ;;62
 ;;21,"00185-0283-10 ")
 ;;63
 ;;21,"00185-0284-10 ")
 ;;64
 ;;21,"00185-0701-01 ")
 ;;65
 ;;21,"00185-0701-05 ")
 ;;66
 ;;21,"00185-0701-30 ")
 ;;67
 ;;21,"00185-0704-01 ")
 ;;68
 ;;21,"00185-0704-05 ")
 ;;69
 ;;21,"00185-0704-30 ")
 ;;70
 ;;21,"00185-0707-01 ")
 ;;71
 ;;21,"00185-0707-05 ")
 ;;72
 ;;21,"00185-0707-30 ")
 ;;73
 ;;21,"00185-0771-01 ")
 ;;74
 ;;21,"00185-0771-30 ")
 ;;75
 ;;21,"00185-0774-01 ")
 ;;76
 ;;21,"00185-0774-30 ")
 ;;77
 ;;21,"00186-1088-05 ")
 ;;78
 ;;21,"00186-1088-35 ")
 ;;79
 ;;21,"00186-1088-39 ")
 ;;80
 ;;21,"00186-1090-05 ")
 ;;81
 ;;21,"00186-1090-35 ")
 ;;82
 ;;21,"00186-1090-39 ")
 ;;83
 ;;21,"00186-1092-05 ")
 ;;84
 ;;21,"00186-1092-35 ")
 ;;85
 ;;21,"00186-1092-39 ")
 ;;86
 ;;21,"00186-1094-05 ")
 ;;87
 ;;21,"00186-1094-35 ")
 ;;88
 ;;21,"00228-2778-11 ")
 ;;89
 ;;21,"00228-2778-50 ")
 ;;90
 ;;21,"00228-2779-11 ")
 ;;91
 ;;21,"00228-2779-50 ")
 ;;92
 ;;21,"00228-2780-11 ")
 ;;93
 ;;21,"00228-2780-50 ")
 ;;94
 ;;21,"00228-2781-11 ")
 ;;95
 ;;21,"00228-2781-50 ")
 ;;96
 ;;21,"00245-0084-10 ")
 ;;97
 ;;21,"00245-0084-11 ")
 ;;98
 ;;21,"00245-0085-10 ")
 ;;99
 ;;21,"00245-0085-11 ")
 ;;100
 ;;21,"00245-0086-10 ")
 ;;101
 ;;21,"00245-0086-11 ")
 ;;102
 ;;21,"00245-0087-10 ")
 ;;103
 ;;21,"00245-0087-11 ")
 ;;104
 ;;21,"00310-0101-10 ")
 ;;105
 ;;21,"00310-0105-10 ")
 ;;106
 ;;21,"00310-0107-10 ")
 ;;107
 ;;21,"00310-0115-10 ")
 ;;108
 ;;21,"00310-0117-10 ")
 ;;109
 ;;21,"00310-1087-30 ")
 ;;110
 ;;21,"00310-1095-30 ")
 ;;111
 ;;21,"00310-1097-30 ")
 ;;112
 ;;21,"00378-0018-01 ")
 ;;113
 ;;21,"00378-0018-02 ")
 ;;114
 ;;21,"00378-0018-05 ")
 ;;115
 ;;21,"00378-0018-07 ")
 ;;116
 ;;21,"00378-0018-91 ")
 ;;117
 ;;21,"00378-0028-01 ")
 ;;118
 ;;21,"00378-0032-01 ")
 ;;119
 ;;21,"00378-0032-02 ")
 ;;120
 ;;21,"00378-0032-04 ")
 ;;121
 ;;21,"00378-0032-10 ")
 ;;122
 ;;21,"00378-0047-01 ")
 ;;123
 ;;21,"00378-0047-02 ")
 ;;124
 ;;21,"00378-0047-04 ")
 ;;125
 ;;21,"00378-0047-10 ")
 ;;126
 ;;21,"00378-0052-01 ")
 ;;127
 ;;21,"00378-0055-01 ")
 ;;128
 ;;21,"00378-0127-01 ")
 ;;129
 ;;21,"00378-0182-01 ")
 ;;130
 ;;21,"00378-0182-10 ")
 ;;131
 ;;21,"00378-0183-01 ")
 ;;132
 ;;21,"00378-0183-10 ")
 ;;133
 ;;21,"00378-0184-01 ")
 ;;134
 ;;21,"00378-0184-10 ")
 ;;135
 ;;21,"00378-0185-01 ")
 ;;136
 ;;21,"00378-0185-05 ")
 ;;137
 ;;21,"00378-0187-01 ")
 ;;138
 ;;21,"00378-0218-01 ")
 ;;139
 ;;21,"00378-0218-10 ")
 ;;140
 ;;21,"00378-0221-01 ")
 ;;141
 ;;21,"00378-0231-01 ")
 ;;142
 ;;21,"00378-0231-10 ")
 ;;143
 ;;21,"00378-0347-01 ")
 ;;144
 ;;21,"00378-0424-01 ")
 ;;145
 ;;21,"00378-0434-01 ")
 ;;146
 ;;21,"00378-0445-01 ")
 ;;147
 ;;21,"00378-0501-01 ")
 ;;148
 ;;21,"00378-0501-10 ")
 ;;149
 ;;21,"00378-0503-01 ")
 ;;150
 ;;21,"00378-0503-10 ")
 ;;151
 ;;21,"00378-0505-01 ")
 ;;152
 ;;21,"00378-0505-05 ")
 ;;153
 ;;21,"00378-0523-01 ")
 ;;154
 ;;21,"00378-0523-93 ")
 ;;155
 ;;21,"00378-0524-01 ")
 ;;156
 ;;21,"00378-0524-93 ")
 ;;157
 ;;21,"00378-0715-01 ")
 ;;158
 ;;21,"00378-0731-01 ")
 ;;159
 ;;21,"00378-0757-01 ")
 ;;160
 ;;21,"00378-0757-10 ")
 ;;161
 ;;21,"00378-0757-93 ")
 ;;162
 ;;21,"00378-1132-01 ")
 ;;163
 ;;21,"00378-1132-10 ")
 ;;164
 ;;21,"00378-1171-01 ")
 ;;165
 ;;21,"00378-1171-10 ")
 ;;166
 ;;21,"00378-1200-01 ")
 ;;167
 ;;21,"00378-1400-01 ")
 ;;168
 ;;21,"00378-2063-01 ")
 ;;169
 ;;21,"00378-2064-01 ")
 ;;170
 ;;21,"00378-2064-93 ")
 ;;171
 ;;21,"00378-3631-01 ")
 ;;172
 ;;21,"00378-3631-05 ")
 ;;173
 ;;21,"00378-3632-01 ")
 ;;174
 ;;21,"00378-3632-05 ")
 ;;175
 ;;21,"00378-3633-01 ")
 ;;176
 ;;21,"00378-3633-02 ")
 ;;177
 ;;21,"00378-3633-05 ")
 ;;178
 ;;21,"00378-3634-01 ")
 ;;179
 ;;21,"00378-3634-05 ")
 ;;180
 ;;21,"00378-4593-01 ")
 ;;181
 ;;21,"00378-4593-05 ")
 ;;182
 ;;21,"00378-4594-01 ")
 ;;183
 ;;21,"00378-4594-05 ")
 ;;184
 ;;21,"00378-4595-10 ")
 ;;185
 ;;21,"00378-4595-77 ")
 ;;186
 ;;21,"00378-4596-10 ")
 ;;187
 ;;21,"00378-4596-77 ")
 ;;188
 ;;21,"00378-4597-10 ")
 ;;189
 ;;21,"00378-4597-77 ")
 ;;190
 ;;21,"00378-4598-05 ")
 ;;191
 ;;21,"00378-4598-77 ")
 ;;192
 ;;21,"00378-6160-01 ")
 ;;193
 ;;21,"00378-6160-05 ")
 ;;194
 ;;21,"00378-6180-01 ")
 ;;195
 ;;21,"00378-6180-05 ")
 ;;196
 ;;21,"00378-6220-01 ")
 ;;197
 ;;21,"00378-6220-05 ")
 ;;198
 ;;21,"00378-6260-01 ")
 ;;199
 ;;21,"00378-6260-05 ")
 ;;200
 ;;21,"00406-2022-01 ")
 ;;201
 ;;21,"00406-2022-10 ")
 ;;202
 ;;21,"00406-2023-01 ")
 ;;203
 ;;21,"00406-2023-10 ")
 ;;204
 ;;21,"00406-2024-01 ")
 ;;205
 ;;21,"00406-2024-10 ")
 ;;206
 ;;21,"00440-7170-30 ")
 ;;207
 ;;21,"00440-7170-45 ")
 ;;208
 ;;21,"00440-7170-90 ")
 ;;209
 ;;21,"00440-7171-06 ")
 ;;210
 ;;21,"00440-7171-10 ")
 ;;211
 ;;21,"00440-7171-30 ")
 ;;212
 ;;21,"00440-7171-45 ")
 ;;213
 ;;21,"00440-7171-60 ")
 ;;214
 ;;21,"00440-7171-90 ")
 ;;215
 ;;21,"00440-7171-92 ")
 ;;216
 ;;21,"00440-7172-30 ")
 ;;217
 ;;21,"00440-7172-90 ")
 ;;218
 ;;21,"00440-7678-60 ")
 ;;219
 ;;21,"00440-7679-60 ")
 ;;220
 ;;21,"00440-7784-45 ")
 ;;221
 ;;21,"00440-7784-90 ")
 ;;222
 ;;21,"00440-7785-06 ")
 ;;223
 ;;21,"00440-7785-20 ")
 ;;224
 ;;21,"00440-7785-28 ")
 ;;225
 ;;21,"00440-7785-30 ")
 ;;226
 ;;21,"00440-7785-45 ")
 ;;227
 ;;21,"00440-7785-60 ")
 ;;228
 ;;21,"00440-7785-90 ")
 ;;229
 ;;21,"00440-7785-92 ")
 ;;230
 ;;21,"00440-7785-94 ")
 ;;231
 ;;21,"00440-7786-06 ")
 ;;232
 ;;21,"00440-7786-30 ")
 ;;233
 ;;21,"00440-7786-60 ")
 ;;234
 ;;21,"00440-7786-92 ")
 ;;235
 ;;21,"00440-7786-94 ")
 ;;236
 ;;21,"00440-8230-60 ")
 ;;237
 ;;21,"00440-8230-90 ")
 ;;238
 ;;21,"00440-8230-91 ")
 ;;239
 ;;21,"00440-8230-92 ")
 ;;240
 ;;21,"00440-8230-94 ")
 ;;241
 ;;21,"00440-8232-30 ")
 ;;242
 ;;21,"00440-8232-90 ")
 ;;243
 ;;21,"00440-8232-94 ")
 ;;244
 ;;21,"00440-8234-90 ")
 ;;245
 ;;21,"00440-8234-94 ")
 ;;246
 ;;21,"00456-1402-01 ")
 ;;247
 ;;21,"00456-1402-11 ")
 ;;248
 ;;21,"00456-1402-30 ")
 ;;249
 ;;21,"00456-1402-63 ")
 ;;250
 ;;21,"00456-1405-01 ")
 ;;251
 ;;21,"00456-1405-11 ")
 ;;252
 ;;21,"00456-1405-30 ")
 ;;253
 ;;21,"00456-1405-63 ")
 ;;254
 ;;21,"00456-1405-90 ")
 ;;255
 ;;21,"00456-1410-01 ")
 ;;256
 ;;21,"00456-1410-30 ")
 ;;257
 ;;21,"00456-1410-63 ")
 ;;258
 ;;21,"00456-1410-90 ")
 ;;259
 ;;21,"00456-1420-01 ")
 ;;260
 ;;21,"00456-1420-30 ")
 ;;261
 ;;21,"00456-1420-90 ")
 ;;262
 ;;21,"00591-0462-01 ")
 ;;263
 ;;21,"00591-0462-10 ")
 ;;264
 ;;21,"00591-0463-01 ")
 ;;265
 ;;21,"00591-0463-10 ")
 ;;266
 ;;21,"00591-0605-01 ")
 ;;267
 ;;21,"00591-0605-05 ")
 ;;268
 ;;21,"00591-0606-01 ")
 ;;269
 ;;21,"00591-0606-05 ")
 ;;270
 ;;21,"00591-0607-01 ")
 ;;271
 ;;21,"00591-5554-01 ")
 ;;272
 ;;21,"00591-5554-10 ")
 ;;273
 ;;21,"00591-5555-01 ")
 ;;274
 ;;21,"00591-5555-10 ")
 ;;275
 ;;21,"00591-5556-01 ")
 ;;276
 ;;21,"00591-5556-10 ")
 ;;277
 ;;21,"00591-5557-01 ")
 ;;278
 ;;21,"00591-5557-05 ")
 ;;279
 ;;21,"00591-5782-01 ")
 ;;280
 ;;21,"00591-5783-01 ")
 ;;281
 ;;21,"00603-5482-21 ")
 ;;282
 ;;21,"00603-5482-32 ")
 ;;283
 ;;21,"00603-5483-02 ")
 ;;284
 ;;21,"00603-5483-21 ")
 ;;285
 ;;21,"00603-5483-32 ")
 ;;286
 ;;21,"00603-5484-21 ")
 ;;287
 ;;21,"00603-5484-32 ")
 ;;288
 ;;21,"00603-5485-21 ")
 ;;289
 ;;21,"00603-5486-21 ")
 ;;290
 ;;21,"00603-5486-28 ")
 ;;291
 ;;21,"00781-1078-01 ")
 ;;292
 ;;21,"00781-1078-10 ")
 ;;293
 ;;21,"00781-1181-01 ")
 ;;294
 ;;21,"00781-1181-10 ")
 ;;295
 ;;21,"00781-1181-92 ")
 ;;296
 ;;21,"00781-1182-01 ")
 ;;297
 ;;21,"00781-1182-10 ")
 ;;298
 ;;21,"00781-1182-92 ")
 ;;299
 ;;21,"00781-1183-01 ")
 ;;300
 ;;21,"00781-1183-10 ")
 ;;301
 ;;21,"00781-1183-92 ")
 ;;302
 ;;21,"00781-1223-01 ")
 ;;303
 ;;21,"00781-1223-10 ")
 ;;304
 ;;21,"00781-1228-01 ")
 ;;305
 ;;21,"00781-1228-10 ")
 ;;306
 ;;21,"00781-1506-01 ")
 ;;307
 ;;21,"00781-1506-10 ")
 ;;308
 ;;21,"00781-1507-01 ")
 ;;309
 ;;21,"00781-1507-10 ")
 ;;310
 ;;21,"00781-5220-01 ")
 ;;311
 ;;21,"00781-5220-10 ")
 ;;312
 ;;21,"00781-5221-01 ")
 ;;313
 ;;21,"00781-5222-01 ")
 ;;314
 ;;21,"00781-5223-01 ")
 ;;315
 ;;21,"00781-5224-01 ")
 ;;316
 ;;21,"00781-5225-01 ")
 ;;317
 ;;21,"00781-5225-10 ")
 ;;318
 ;;21,"00781-5229-01 ")
 ;;319
 ;;21,"00781-5229-10 ")
 ;;320
 ;;21,"00781-5630-01 ")
 ;;321
 ;;21,"00904-0411-61 ")
 ;;322
 ;;21,"00904-5392-61 ")
 ;;323
 ;;21,"00904-5928-61 ")
 ;;324
 ;;21,"00904-5929-61 ")
 ;;325
 ;;21,"00904-5930-61 ")
 ;;326
 ;;21,"00904-6096-61 ")
 ;;327
 ;;21,"00904-6097-61 ")
 ;;328
 ;;21,"00904-6098-61 ")
 ;;329
 ;;21,"00904-6099-61 ")
 ;;330
 ;;21,"00904-6162-61 ")
 ;;331
 ;;21,"00904-6169-61 ")
 ;;332
 ;;21,"00904-6170-61 ")
 ;;333
 ;;21,"00904-6171-61 ")
 ;;334
 ;;21,"00904-6173-60 ")
 ;;335
 ;;21,"00904-6200-60 ")
 ;;336
 ;;21,"00904-6300-61 ")
 ;;337
 ;;21,"00904-6301-61 ")
 ;;338
 ;;21,"00904-6302-61 ")
 ;;339
 ;
OTHER ; OTHER ROUTINES
 D ^BGP82H10
 D ^BGP82H11
 D ^BGP82H12
 D ^BGP82H13
 D ^BGP82H14
 D ^BGP82H15
 D ^BGP82H16
 D ^BGP82H17
 D ^BGP82H18
 D ^BGP82H19
 D ^BGP82H2
 D ^BGP82H20
 D ^BGP82H21
 D ^BGP82H22
 D ^BGP82H23
 D ^BGP82H24
 D ^BGP82H25
 D ^BGP82H26
 D ^BGP82H27
 D ^BGP82H28
 D ^BGP82H29
 D ^BGP82H3
 D ^BGP82H30
 D ^BGP82H31
 D ^BGP82H4
 D ^BGP82H5
 D ^BGP82H6
 D ^BGP82H7
 D ^BGP82H8
 D ^BGP82H9
 Q