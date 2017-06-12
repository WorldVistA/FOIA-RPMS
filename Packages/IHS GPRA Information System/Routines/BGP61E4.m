BGP61E4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"51138-0502-30 ")
 ;;1102
 ;;21,"51138-0503-30 ")
 ;;1103
 ;;21,"51138-0504-30 ")
 ;;1104
 ;;21,"51138-0511-30 ")
 ;;1105
 ;;21,"51138-0512-30 ")
 ;;1106
 ;;21,"51138-0513-30 ")
 ;;1107
 ;;21,"51138-0514-30 ")
 ;;1108
 ;;21,"51138-0528-30 ")
 ;;1109
 ;;21,"51138-0529-30 ")
 ;;1110
 ;;21,"51138-0530-30 ")
 ;;1111
 ;;21,"51138-0565-10 ")
 ;;1112
 ;;21,"51138-0565-15 ")
 ;;1113
 ;;21,"51138-0565-30 ")
 ;;1114
 ;;21,"51138-0566-10 ")
 ;;1115
 ;;21,"51138-0566-30 ")
 ;;1116
 ;;21,"51138-0566-50 ")
 ;;1117
 ;;21,"51138-0567-10 ")
 ;;1118
 ;;21,"51138-0567-30 ")
 ;;1119
 ;;21,"51138-0568-10 ")
 ;;1120
 ;;21,"51138-0568-30 ")
 ;;1121
 ;;21,"51285-0040-01 ")
 ;;1122
 ;;21,"51285-0047-02 ")
 ;;1123
 ;;21,"51285-0050-02 ")
 ;;1124
 ;;21,"51285-0060-01 ")
 ;;1125
 ;;21,"51285-0061-01 ")
 ;;1126
 ;;21,"51655-0530-24 ")
 ;;1127
 ;;21,"51991-0817-01 ")
 ;;1128
 ;;21,"51991-0817-05 ")
 ;;1129
 ;;21,"51991-0818-01 ")
 ;;1130
 ;;21,"51991-0818-05 ")
 ;;1131
 ;;21,"51991-0819-01 ")
 ;;1132
 ;;21,"51991-0819-05 ")
 ;;1133
 ;;21,"51991-0820-01 ")
 ;;1134
 ;;21,"51991-0820-05 ")
 ;;1135
 ;;21,"52244-0450-10 ")
 ;;1136
 ;;21,"52343-0026-01 ")
 ;;1137
 ;;21,"52343-0026-05 ")
 ;;1138
 ;;21,"52343-0027-01 ")
 ;;1139
 ;;21,"52343-0027-05 ")
 ;;1140
 ;;21,"52343-0028-01 ")
 ;;1141
 ;;21,"52343-0028-05 ")
 ;;1142
 ;;21,"52343-0029-01 ")
 ;;1143
 ;;21,"52343-0029-05 ")
 ;;1144
 ;;21,"52343-0059-01 ")
 ;;1145
 ;;21,"52343-0059-99 ")
 ;;1146
 ;;21,"52343-0060-01 ")
 ;;1147
 ;;21,"52343-0060-99 ")
 ;;1148
 ;;21,"52343-0061-01 ")
 ;;1149
 ;;21,"52343-0061-99 ")
 ;;1150
 ;;21,"52427-0382-90 ")
 ;;1151
 ;;21,"52427-0383-90 ")
 ;;1152
 ;;21,"52427-0429-90 ")
 ;;1153
 ;;21,"52427-0430-90 ")
 ;;1154
 ;;21,"52427-0431-90 ")
 ;;1155
 ;;21,"52959-0212-01 ")
 ;;1156
 ;;21,"52959-0212-10 ")
 ;;1157
 ;;21,"52959-0212-20 ")
 ;;1158
 ;;21,"52959-0212-45 ")
 ;;1159
 ;;21,"52959-0212-50 ")
 ;;1160
 ;;21,"52959-0212-60 ")
 ;;1161
 ;;21,"52959-0241-30 ")
 ;;1162
 ;;21,"52959-0253-00 ")
 ;;1163
 ;;21,"52959-0253-20 ")
 ;;1164
 ;;21,"52959-0253-30 ")
 ;;1165
 ;;21,"52959-0253-40 ")
 ;;1166
 ;;21,"52959-0258-30 ")
 ;;1167
 ;;21,"52959-0258-60 ")
 ;;1168
 ;;21,"52959-0280-30 ")
 ;;1169
 ;;21,"52959-0337-10 ")
 ;;1170
 ;;21,"52959-0337-30 ")
 ;;1171
 ;;21,"52959-0463-01 ")
 ;;1172
 ;;21,"52959-0463-30 ")
 ;;1173
 ;;21,"52959-0463-60 ")
 ;;1174
 ;;21,"52959-0543-30 ")
 ;;1175
 ;;21,"52959-0827-30 ")
 ;;1176
 ;;21,"52959-0839-30 ")
 ;;1177
 ;;21,"52959-0839-60 ")
 ;;1178
 ;;21,"52959-0895-60 ")
 ;;1179
 ;;21,"53002-1004-00 ")
 ;;1180
 ;;21,"53002-1004-03 ")
 ;;1181
 ;;21,"53002-1004-06 ")
 ;;1182
 ;;21,"53002-1108-00 ")
 ;;1183
 ;;21,"53002-1108-03 ")
 ;;1184
 ;;21,"53002-1108-06 ")
 ;;1185
 ;;21,"53002-1138-00 ")
 ;;1186
 ;;21,"53002-1138-03 ")
 ;;1187
 ;;21,"53002-1138-06 ")
 ;;1188
 ;;21,"53489-0529-01 ")
 ;;1189
 ;;21,"53489-0529-10 ")
 ;;1190
 ;;21,"53489-0530-01 ")
 ;;1191
 ;;21,"53489-0530-10 ")
 ;;1192
 ;;21,"53489-0531-01 ")
 ;;1193
 ;;21,"53489-0532-01 ")
 ;;1194
 ;;21,"53489-0536-01 ")
 ;;1195
 ;;21,"53489-0536-10 ")
 ;;1196
 ;;21,"54348-0142-30 ")
 ;;1197
 ;;21,"54458-0300-30 ")
 ;;1198
 ;;21,"54458-0300-31 ")
 ;;1199
 ;;21,"54458-0301-30 ")
 ;;1200
 ;;21,"54458-0301-31 ")
 ;;1201
 ;;21,"54458-0302-30 ")
 ;;1202
 ;;21,"54458-0302-31 ")
 ;;1203
 ;;21,"54458-0931-05 ")
 ;;1204
 ;;21,"54569-0557-01 ")
 ;;1205
 ;;21,"54569-0557-02 ")
 ;;1206
 ;;21,"54569-0559-01 ")
 ;;1207
 ;;21,"54569-0559-06 ")
 ;;1208
 ;;21,"54569-0561-01 ")
 ;;1209
 ;;21,"54569-0561-06 ")
 ;;1210
 ;;21,"54569-3097-00 ")
 ;;1211
 ;;21,"54569-3432-00 ")
 ;;1212
 ;;21,"54569-3432-01 ")
 ;;1213
 ;;21,"54569-3432-04 ")
 ;;1214
 ;;21,"54569-3432-07 ")
 ;;1215
 ;;21,"54569-3432-08 ")
 ;;1216
 ;;21,"54569-3654-00 ")
 ;;1217
 ;;21,"54569-3654-03 ")
 ;;1218
 ;;21,"54569-3654-04 ")
 ;;1219
 ;;21,"54569-3654-05 ")
 ;;1220
 ;;21,"54569-3787-00 ")
 ;;1221
 ;;21,"54569-3787-01 ")
 ;;1222
 ;;21,"54569-3787-04 ")
 ;;1223
 ;;21,"54569-3787-05 ")
 ;;1224
 ;;21,"54569-3788-00 ")
 ;;1225
 ;;21,"54569-3788-01 ")
 ;;1226
 ;;21,"54569-3788-03 ")
 ;;1227
 ;;21,"54569-3788-04 ")
 ;;1228
 ;;21,"54569-3885-00 ")
 ;;1229
 ;;21,"54569-3885-02 ")
 ;;1230
 ;;21,"54569-3885-04 ")
 ;;1231
 ;;21,"54569-3885-05 ")
 ;;1232
 ;;21,"54569-3885-06 ")
 ;;1233
 ;;21,"54569-4441-00 ")
 ;;1234
 ;;21,"54569-4442-00 ")
 ;;1235
 ;;21,"54569-5404-00 ")
 ;;1236
 ;;21,"54569-5404-01 ")
 ;;1237
 ;;21,"54569-5404-02 ")
 ;;1238
 ;;21,"54569-5417-00 ")
 ;;1239
 ;;21,"54569-5417-01 ")
 ;;1240
 ;;21,"54569-5419-00 ")
 ;;1241
 ;;21,"54569-5419-01 ")
 ;;1242
 ;;21,"54569-5870-00 ")
 ;;1243
 ;;21,"54569-5870-01 ")
 ;;1244
 ;;21,"54569-5870-02 ")
 ;;1245
 ;;21,"54569-5954-00 ")
 ;;1246
 ;;21,"54569-5954-01 ")
 ;;1247
 ;;21,"54569-5961-00 ")
 ;;1248
 ;;21,"54569-5961-01 ")
 ;;1249
 ;;21,"54569-5961-02 ")
 ;;1250
 ;;21,"54569-5974-00 ")
 ;;1251
 ;;21,"54569-5974-01 ")
 ;;1252
 ;;21,"54569-5974-02 ")
 ;;1253
 ;;21,"54569-5975-00 ")
 ;;1254
 ;;21,"54569-5975-01 ")
 ;;1255
 ;;21,"54569-5975-02 ")
 ;;1256
 ;;21,"54569-5975-03 ")
 ;;1257
 ;;21,"54569-5975-04 ")
 ;;1258
 ;;21,"54569-5976-00 ")
 ;;1259
 ;;21,"54569-5976-01 ")
 ;;1260
 ;;21,"54569-5976-02 ")
 ;;1261
 ;;21,"54569-5976-03 ")
 ;;1262
 ;;21,"54569-5976-04 ")
 ;;1263
 ;;21,"54569-5977-00 ")
 ;;1264
 ;;21,"54569-5977-01 ")
 ;;1265
 ;;21,"54569-5977-02 ")
 ;;1266
 ;;21,"54569-5977-03 ")
 ;;1267
 ;;21,"54569-5977-04 ")
 ;;1268
 ;;21,"54569-6119-00 ")
 ;;1269
 ;;21,"54569-6169-00 ")
 ;;1270
 ;;21,"54569-6298-00 ")
 ;;1271
 ;;21,"54569-6298-01 ")
 ;;1272
 ;;21,"54569-6298-02 ")
 ;;1273
 ;;21,"54569-6298-03 ")
 ;;1274
 ;;21,"54569-6314-00 ")
 ;;1275
 ;;21,"54569-6315-00 ")
 ;;1276
 ;;21,"54569-6342-00 ")
 ;;1277
 ;;21,"54569-6342-01 ")
 ;;1278
 ;;21,"54868-0052-00 ")
 ;;1279
 ;;21,"54868-0052-01 ")
 ;;1280
 ;;21,"54868-0052-02 ")
 ;;1281
 ;;21,"54868-0053-02 ")
 ;;1282
 ;;21,"54868-0053-03 ")
 ;;1283
 ;;21,"54868-0053-07 ")
 ;;1284
 ;;21,"54868-0106-00 ")
 ;;1285
 ;;21,"54868-0106-01 ")
 ;;1286
 ;;21,"54868-0293-00 ")
 ;;1287
 ;;21,"54868-0293-01 ")
 ;;1288
 ;;21,"54868-0293-05 ")
 ;;1289
 ;;21,"54868-0293-06 ")
 ;;1290
 ;;21,"54868-0321-00 ")
 ;;1291
 ;;21,"54868-0674-00 ")
 ;;1292
 ;;21,"54868-0674-01 ")
 ;;1293
 ;;21,"54868-0680-00 ")
 ;;1294
 ;;21,"54868-0680-01 ")
 ;;1295
 ;;21,"54868-0685-01 ")
 ;;1296
 ;;21,"54868-0696-01 ")
 ;;1297
 ;;21,"54868-0696-02 ")
 ;;1298
 ;;21,"54868-0696-03 ")
 ;;1299
 ;;21,"54868-0701-00 ")
 ;;1300
 ;;21,"54868-0854-00 ")
 ;;1301
 ;;21,"54868-0854-01 ")
 ;;1302
 ;;21,"54868-1063-00 ")
 ;;1303
 ;;21,"54868-1063-01 ")
 ;;1304
 ;;21,"54868-1063-02 ")
 ;;1305
 ;;21,"54868-1441-00 ")
 ;;1306
 ;;21,"54868-1441-01 ")
 ;;1307
 ;;21,"54868-1442-00 ")
 ;;1308
 ;;21,"54868-1442-01 ")
 ;;1309
 ;;21,"54868-1442-02 ")
 ;;1310
 ;;21,"54868-1517-00 ")
 ;;1311
 ;;21,"54868-1517-02 ")
 ;;1312
 ;;21,"54868-1517-03 ")
 ;;1313
 ;;21,"54868-1518-00 ")
 ;;1314
 ;;21,"54868-1518-01 ")
 ;;1315
 ;;21,"54868-1518-02 ")
 ;;1316
 ;;21,"54868-1518-03 ")
 ;;1317
 ;;21,"54868-1871-00 ")
 ;;1318
 ;;21,"54868-1871-01 ")
 ;;1319
 ;;21,"54868-1871-02 ")
 ;;1320
 ;;21,"54868-1871-04 ")
 ;;1321
 ;;21,"54868-1971-00 ")
 ;;1322
 ;;21,"54868-1971-01 ")
 ;;1323
 ;;21,"54868-1971-03 ")
 ;;1324
 ;;21,"54868-1971-04 ")
 ;;1325
 ;;21,"54868-1980-00 ")
 ;;1326
 ;;21,"54868-1980-01 ")
 ;;1327
 ;;21,"54868-2349-01 ")
 ;;1328
 ;;21,"54868-2349-02 ")
 ;;1329
 ;;21,"54868-2349-03 ")
 ;;1330
 ;;21,"54868-2349-04 ")
 ;;1331
 ;;21,"54868-2349-05 ")
 ;;1332
 ;;21,"54868-2572-00 ")
 ;;1333
 ;;21,"54868-2572-01 ")
 ;;1334
 ;;21,"54868-2572-02 ")
 ;;1335
 ;;21,"54868-2683-00 ")
 ;;1336
 ;;21,"54868-2683-01 ")
 ;;1337
 ;;21,"54868-2683-02 ")
 ;;1338
 ;;21,"54868-2864-00 ")
 ;;1339
 ;;21,"54868-2864-01 ")
 ;;1340
 ;;21,"54868-2989-00 ")
 ;;1341
 ;;21,"54868-2989-02 ")
 ;;1342
 ;;21,"54868-2989-03 ")
 ;;1343
 ;;21,"54868-2989-04 ")
 ;;1344
 ;;21,"54868-2989-05 ")
 ;;1345
 ;;21,"54868-2989-06 ")
 ;;1346
 ;;21,"54868-2989-07 ")
 ;;1347
 ;;21,"54868-2990-00 ")
 ;;1348
 ;;21,"54868-2990-02 ")
 ;;1349
 ;;21,"54868-2990-03 ")
 ;;1350
 ;;21,"54868-2990-04 ")
 ;;1351
 ;;21,"54868-2990-05 ")
 ;;1352
 ;;21,"54868-3062-00 ")
 ;;1353
 ;;21,"54868-3062-01 ")
 ;;1354
 ;;21,"54868-3062-02 ")
 ;;1355
 ;;21,"54868-3062-03 ")
 ;;1356
 ;;21,"54868-3064-00 ")
 ;;1357
 ;;21,"54868-3064-01 ")
 ;;1358
 ;;21,"54868-3257-01 ")
 ;;1359
 ;;21,"54868-3257-02 ")
 ;;1360
 ;;21,"54868-3257-03 ")
 ;;1361
 ;;21,"54868-3257-04 ")
 ;;1362
 ;;21,"54868-3257-05 ")
 ;;1363
 ;;21,"54868-3257-06 ")
 ;;1364
 ;;21,"54868-3587-00 ")
 ;;1365
 ;;21,"54868-3587-01 ")
 ;;1366
 ;;21,"54868-3587-02 ")
 ;;1367
 ;;21,"54868-3587-03 ")
 ;;1368
 ;;21,"54868-3587-04 ")
 ;;1369
 ;;21,"54868-3602-00 ")
 ;;1370
 ;;21,"54868-3721-01 ")
 ;;1371
 ;;21,"54868-3721-02 ")
 ;;1372
 ;;21,"54868-4173-00 ")
 ;;1373
 ;;21,"54868-4179-00 ")
 ;;1374
 ;;21,"54868-4223-00 ")
 ;;1375
 ;;21,"54868-4223-01 ")
 ;;1376
 ;;21,"54868-4223-02 ")
 ;;1377
 ;;21,"54868-4223-03 ")
 ;;1378
 ;;21,"54868-4395-00 ")
 ;;1379
 ;;21,"54868-4395-01 ")
 ;;1380
 ;;21,"54868-4395-02 ")
 ;;1381
 ;;21,"54868-4395-03 ")
 ;;1382
 ;;21,"54868-4396-00 ")
 ;;1383
 ;;21,"54868-4396-01 ")
 ;;1384
 ;;21,"54868-4396-02 ")
 ;;1385
 ;;21,"54868-4396-03 ")
 ;;1386
 ;;21,"54868-4421-00 ")
 ;;1387
 ;;21,"54868-4421-01 ")
 ;;1388
 ;;21,"54868-4421-02 ")
 ;;1389
 ;;21,"54868-4424-00 ")
 ;;1390
 ;;21,"54868-4424-01 ")
 ;;1391
 ;;21,"54868-4424-02 ")
 ;;1392
 ;;21,"54868-4424-03 ")
 ;;1393
 ;;21,"54868-4576-00 ")
 ;;1394
 ;;21,"54868-4576-01 ")
 ;;1395
 ;;21,"54868-4576-02 ")
 ;;1396
 ;;21,"54868-4576-03 ")
 ;;1397
 ;;21,"54868-4577-00 ")
 ;;1398
 ;;21,"54868-4577-01 ")
 ;;1399
 ;;21,"54868-4577-03 ")
 ;;1400
 ;;21,"54868-4578-00 ")
 ;;1401
 ;;21,"54868-4578-01 ")
 ;;1402
 ;;21,"54868-4578-02 ")
 ;;1403
 ;;21,"54868-4578-03 ")
 ;;1404
 ;;21,"54868-4621-00 ")
 ;;1405
 ;;21,"54868-4661-00 ")
 ;;1406
 ;;21,"54868-4661-01 ")
 ;;1407
 ;;21,"54868-4844-00 ")
 ;;1408
 ;;21,"54868-4844-01 ")
 ;;1409
 ;;21,"54868-4844-02 ")
 ;;1410
 ;;21,"54868-4844-03 ")
 ;;1411
 ;;21,"54868-4903-00 ")
 ;;1412
 ;;21,"54868-4903-01 ")
 ;;1413
 ;;21,"54868-4903-02 ")
 ;;1414
 ;;21,"54868-4921-00 ")
 ;;1415
 ;;21,"54868-4921-01 ")
 ;;1416
 ;;21,"54868-4921-02 ")
 ;;1417
 ;;21,"54868-4921-03 ")
 ;;1418
 ;;21,"54868-4921-04 ")
 ;;1419
 ;;21,"54868-4932-00 ")
 ;;1420
 ;;21,"54868-4932-01 ")
 ;;1421
 ;;21,"54868-5013-00 ")
 ;;1422
 ;;21,"54868-5013-01 ")
 ;;1423
 ;;21,"54868-5021-00 ")
 ;;1424
 ;;21,"54868-5021-01 ")
 ;;1425
 ;;21,"54868-5021-02 ")
 ;;1426
 ;;21,"54868-5021-03 ")
 ;;1427
 ;;21,"54868-5021-04 ")
 ;;1428
 ;;21,"54868-5068-00 ")
 ;;1429
 ;;21,"54868-5068-01 ")
 ;;1430
 ;;21,"54868-5068-03 ")
 ;;1431
 ;;21,"54868-5095-00 ")
 ;;1432
 ;;21,"54868-5095-01 ")
 ;;1433
 ;;21,"54868-5095-02 ")
 ;;1434
 ;;21,"54868-5095-03 ")
 ;;1435
 ;;21,"54868-5295-00 ")
 ;;1436
 ;;21,"54868-5295-01 ")
 ;;1437
 ;;21,"54868-5344-00 ")
 ;;1438
 ;;21,"54868-5344-01 ")
 ;;1439
 ;;21,"54868-5344-02 ")
 ;;1440
 ;;21,"54868-5395-00 ")
 ;;1441
 ;;21,"54868-5400-00 ")
 ;;1442
 ;;21,"54868-5400-01 ")
 ;;1443
 ;;21,"54868-5520-00 ")
 ;;1444
 ;;21,"54868-5524-00 ")
 ;;1445
 ;;21,"54868-5524-01 ")
 ;;1446
 ;;21,"54868-5564-00 ")
 ;;1447
 ;;21,"54868-5564-01 ")
 ;;1448
 ;;21,"54868-5729-00 ")
 ;;1449
 ;;21,"54868-5729-01 ")
 ;;1450
 ;;21,"54868-5729-02 ")
 ;;1451
 ;;21,"54868-5729-03 ")
 ;;1452
 ;;21,"54868-5729-04 ")
 ;;1453
 ;;21,"54868-5729-05 ")
 ;;1454
 ;;21,"54868-5729-06 ")
 ;;1455
 ;;21,"54868-5730-00 ")
 ;;1456
 ;;21,"54868-5730-01 ")
 ;;1457
 ;;21,"54868-5730-02 ")
 ;;1458
 ;;21,"54868-5730-03 ")
 ;;1459
 ;;21,"54868-5730-04 ")
 ;;1460