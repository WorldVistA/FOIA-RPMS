ATXFCK4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 19, 2017;
 ;;5.1;TAXONOMY;**25**;FEB 04, 1997;Build 47
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"O41.00X4 ")
 ;;1204
 ;;21,"O41.00X5 ")
 ;;1205
 ;;21,"O41.00X9 ")
 ;;1206
 ;;21,"O41.01X0 ")
 ;;1207
 ;;21,"O41.01X1 ")
 ;;1208
 ;;21,"O41.01X2 ")
 ;;1209
 ;;21,"O41.01X3 ")
 ;;1210
 ;;21,"O41.01X4 ")
 ;;1211
 ;;21,"O41.01X5 ")
 ;;1212
 ;;21,"O41.01X9 ")
 ;;1213
 ;;21,"O41.02X0 ")
 ;;1214
 ;;21,"O41.02X1 ")
 ;;1215
 ;;21,"O41.02X2 ")
 ;;1216
 ;;21,"O41.02X3 ")
 ;;1217
 ;;21,"O41.02X4 ")
 ;;1218
 ;;21,"O41.02X5 ")
 ;;1219
 ;;21,"O41.02X9 ")
 ;;1220
 ;;21,"O41.03X0 ")
 ;;1221
 ;;21,"O41.03X1 ")
 ;;1222
 ;;21,"O41.03X2 ")
 ;;1223
 ;;21,"O41.03X3 ")
 ;;1224
 ;;21,"O41.03X4 ")
 ;;1225
 ;;21,"O41.03X5 ")
 ;;1226
 ;;21,"O41.03X9 ")
 ;;1227
 ;;21,"O41.1010 ")
 ;;1228
 ;;21,"O41.1011 ")
 ;;1229
 ;;21,"O41.1012 ")
 ;;1230
 ;;21,"O41.1013 ")
 ;;1231
 ;;21,"O41.1014 ")
 ;;1232
 ;;21,"O41.1015 ")
 ;;1233
 ;;21,"O41.1019 ")
 ;;1234
 ;;21,"O41.1020 ")
 ;;1235
 ;;21,"O41.1021 ")
 ;;1236
 ;;21,"O41.1022 ")
 ;;1237
 ;;21,"O41.1023 ")
 ;;1238
 ;;21,"O41.1024 ")
 ;;1239
 ;;21,"O41.1025 ")
 ;;1240
 ;;21,"O41.1029 ")
 ;;1241
 ;;21,"O41.1030 ")
 ;;1242
 ;;21,"O41.1031 ")
 ;;1243
 ;;21,"O41.1032 ")
 ;;1244
 ;;21,"O41.1033 ")
 ;;1245
 ;;21,"O41.1034 ")
 ;;1246
 ;;21,"O41.1035 ")
 ;;1247
 ;;21,"O41.1039 ")
 ;;1248
 ;;21,"O41.1090 ")
 ;;1249
 ;;21,"O41.1091 ")
 ;;1250
 ;;21,"O41.1092 ")
 ;;1251
 ;;21,"O41.1093 ")
 ;;1252
 ;;21,"O41.1094 ")
 ;;1253
 ;;21,"O41.1095 ")
 ;;1254
 ;;21,"O41.1099 ")
 ;;1255
 ;;21,"O41.1210 ")
 ;;1256
 ;;21,"O41.1211 ")
 ;;1257
 ;;21,"O41.1212 ")
 ;;1258
 ;;21,"O41.1213 ")
 ;;1259
 ;;21,"O41.1214 ")
 ;;1260
 ;;21,"O41.1215 ")
 ;;1261
 ;;21,"O41.1219 ")
 ;;1262
 ;;21,"O41.1220 ")
 ;;1263
 ;;21,"O41.1221 ")
 ;;1264
 ;;21,"O41.1222 ")
 ;;1265
 ;;21,"O41.1223 ")
 ;;1266
 ;;21,"O41.1224 ")
 ;;1267
 ;;21,"O41.1225 ")
 ;;1268
 ;;21,"O41.1229 ")
 ;;1269
 ;;21,"O41.1230 ")
 ;;1270
 ;;21,"O41.1231 ")
 ;;1271
 ;;21,"O41.1232 ")
 ;;1272
 ;;21,"O41.1233 ")
 ;;1273
 ;;21,"O41.1234 ")
 ;;1274
 ;;21,"O41.1235 ")
 ;;1275
 ;;21,"O41.1239 ")
 ;;1276
 ;;21,"O41.1290 ")
 ;;1277
 ;;21,"O41.1291 ")
 ;;1278
 ;;21,"O41.1292 ")
 ;;1279
 ;;21,"O41.1293 ")
 ;;1280
 ;;21,"O41.1294 ")
 ;;1281
 ;;21,"O41.1295 ")
 ;;1282
 ;;21,"O41.1299 ")
 ;;1283
 ;;21,"O41.1410 ")
 ;;1284
 ;;21,"O41.1411 ")
 ;;1285
 ;;21,"O41.1412 ")
 ;;1286
 ;;21,"O41.1413 ")
 ;;1287
 ;;21,"O41.1414 ")
 ;;1288
 ;;21,"O41.1415 ")
 ;;1289
 ;;21,"O41.1419 ")
 ;;1290
 ;;21,"O41.1420 ")
 ;;1291
 ;;21,"O41.1421 ")
 ;;1292
 ;;21,"O41.1422 ")
 ;;1293
 ;;21,"O41.1423 ")
 ;;1294
 ;;21,"O41.1424 ")
 ;;1295
 ;;21,"O41.1425 ")
 ;;1296
 ;;21,"O41.1429 ")
 ;;1297
 ;;21,"O41.1430 ")
 ;;1298
 ;;21,"O41.1431 ")
 ;;1299
 ;;21,"O41.1432 ")
 ;;1300
 ;;21,"O41.1433 ")
 ;;1301
 ;;21,"O41.1434 ")
 ;;1302
 ;;21,"O41.1435 ")
 ;;1303
 ;;21,"O41.1439 ")
 ;;1304
 ;;21,"O41.1490 ")
 ;;1305
 ;;21,"O41.1491 ")
 ;;1306
 ;;21,"O41.1492 ")
 ;;1307
 ;;21,"O41.1493 ")
 ;;1308
 ;;21,"O41.1494 ")
 ;;1309
 ;;21,"O41.1495 ")
 ;;1310
 ;;21,"O41.1499 ")
 ;;1311
 ;;21,"O41.8X10 ")
 ;;1312
 ;;21,"O41.8X11 ")
 ;;1313
 ;;21,"O41.8X12 ")
 ;;1314
 ;;21,"O41.8X13 ")
 ;;1315
 ;;21,"O41.8X14 ")
 ;;1316
 ;;21,"O41.8X15 ")
 ;;1317
 ;;21,"O41.8X19 ")
 ;;1318
 ;;21,"O41.8X20 ")
 ;;1319
 ;;21,"O41.8X21 ")
 ;;1320
 ;;21,"O41.8X22 ")
 ;;1321
 ;;21,"O41.8X23 ")
 ;;1322
 ;;21,"O41.8X24 ")
 ;;1323
 ;;21,"O41.8X25 ")
 ;;1324
 ;;21,"O41.8X29 ")
 ;;1325
 ;;21,"O41.8X30 ")
 ;;1326
 ;;21,"O41.8X31 ")
 ;;1327
 ;;21,"O41.8X32 ")
 ;;1328
 ;;21,"O41.8X33 ")
 ;;1329
 ;;21,"O41.8X34 ")
 ;;1330
 ;;21,"O41.8X35 ")
 ;;1331
 ;;21,"O41.8X39 ")
 ;;1332
 ;;21,"O41.8X90 ")
 ;;1333
 ;;21,"O41.8X91 ")
 ;;1334
 ;;21,"O41.8X92 ")
 ;;1335
 ;;21,"O41.8X93 ")
 ;;1336
 ;;21,"O41.8X94 ")
 ;;1337
 ;;21,"O41.8X95 ")
 ;;1338
 ;;21,"O41.8X99 ")
 ;;1339
 ;;21,"O41.90X0 ")
 ;;1340
 ;;21,"O41.90X1 ")
 ;;1341
 ;;21,"O41.90X2 ")
 ;;1342
 ;;21,"O41.90X3 ")
 ;;1343
 ;;21,"O41.90X4 ")
 ;;1344
 ;;21,"O41.90X5 ")
 ;;1345
 ;;21,"O41.90X9 ")
 ;;1346
 ;;21,"O41.91X0 ")
 ;;1347
 ;;21,"O41.91X1 ")
 ;;1348
 ;;21,"O41.91X2 ")
 ;;1349
 ;;21,"O41.91X3 ")
 ;;1350
 ;;21,"O41.91X4 ")
 ;;1351
 ;;21,"O41.91X5 ")
 ;;1352
 ;;21,"O41.91X9 ")
 ;;1353
 ;;21,"O41.92X0 ")
 ;;1354
 ;;21,"O41.92X1 ")
 ;;1355
 ;;21,"O41.92X2 ")
 ;;1356
 ;;21,"O41.92X3 ")
 ;;1357
 ;;21,"O41.92X4 ")
 ;;1358
 ;;21,"O41.92X5 ")
 ;;1359
 ;;21,"O41.92X9 ")
 ;;1360
 ;;21,"O41.93X0 ")
 ;;1361
 ;;21,"O41.93X1 ")
 ;;1362
 ;;21,"O41.93X2 ")
 ;;1363
 ;;21,"O41.93X3 ")
 ;;1364
 ;;21,"O41.93X4 ")
 ;;1365
 ;;21,"O41.93X5 ")
 ;;1366
 ;;21,"O41.93X9 ")
 ;;1367
 ;;21,"O42.00 ")
 ;;1368
 ;;21,"O42.011 ")
 ;;1369
 ;;21,"O42.012 ")
 ;;1370
 ;;21,"O42.013 ")
 ;;1371
 ;;21,"O42.019 ")
 ;;1372
 ;;21,"O42.02 ")
 ;;1373
 ;;21,"O42.10 ")
 ;;1374
 ;;21,"O42.111 ")
 ;;1375
 ;;21,"O42.112 ")
 ;;1376
 ;;21,"O42.113 ")
 ;;1377
 ;;21,"O42.119 ")
 ;;1378
 ;;21,"O42.12 ")
 ;;1379
 ;;21,"O42.90 ")
 ;;1380
 ;;21,"O42.911 ")
 ;;1381
 ;;21,"O42.912 ")
 ;;1382
 ;;21,"O42.913 ")
 ;;1383
 ;;21,"O42.919 ")
 ;;1384
 ;;21,"O42.92 ")
 ;;1385
 ;;21,"O43.011 ")
 ;;1386
 ;;21,"O43.012 ")
 ;;1387
 ;;21,"O43.013 ")
 ;;1388
 ;;21,"O43.019 ")
 ;;1389
 ;;21,"O43.021 ")
 ;;1390
 ;;21,"O43.022 ")
 ;;1391
 ;;21,"O43.023 ")
 ;;1392
 ;;21,"O43.029 ")
 ;;1393
 ;;21,"O43.101 ")
 ;;1394
 ;;21,"O43.102 ")
 ;;1395
 ;;21,"O43.103 ")
 ;;1396
 ;;21,"O43.109 ")
 ;;1397
 ;;21,"O43.111 ")
 ;;1398
 ;;21,"O43.112 ")
 ;;1399
 ;;21,"O43.113 ")
 ;;1400
 ;;21,"O43.119 ")
 ;;1401
 ;;21,"O43.121 ")
 ;;1402
 ;;21,"O43.122 ")
 ;;1403
 ;;21,"O43.123 ")
 ;;1404
 ;;21,"O43.129 ")
 ;;1405
 ;;21,"O43.191 ")
 ;;1406
 ;;21,"O43.192 ")
 ;;1407
 ;;21,"O43.193 ")
 ;;1408
 ;;21,"O43.199 ")
 ;;1409
 ;;21,"O43.211 ")
 ;;1410
 ;;21,"O43.212 ")
 ;;1411
 ;;21,"O43.213 ")
 ;;1412
 ;;21,"O43.219 ")
 ;;1413
 ;;21,"O43.221 ")
 ;;1414
 ;;21,"O43.222 ")
 ;;1415
 ;;21,"O43.223 ")
 ;;1416
 ;;21,"O43.229 ")
 ;;1417
 ;;21,"O43.231 ")
 ;;1418
 ;;21,"O43.232 ")
 ;;1419
 ;;21,"O43.233 ")
 ;;1420
 ;;21,"O43.239 ")
 ;;1421
 ;;21,"O43.811 ")
 ;;1422
 ;;21,"O43.812 ")
 ;;1423
 ;;21,"O43.813 ")
 ;;1424
 ;;21,"O43.819 ")
 ;;1425
 ;;21,"O43.891 ")
 ;;1426
 ;;21,"O43.892 ")
 ;;1427
 ;;21,"O43.893 ")
 ;;1428
 ;;21,"O43.899 ")
 ;;1429
 ;;21,"O43.90 ")
 ;;1430
 ;;21,"O43.91 ")
 ;;1431
 ;;21,"O43.92 ")
 ;;1432
 ;;21,"O43.93 ")
 ;;1433
 ;;21,"O44.00 ")
 ;;1434
 ;;21,"O44.01 ")
 ;;1435
 ;;21,"O44.02 ")
 ;;1436
 ;;21,"O44.03 ")
 ;;1437
 ;;21,"O44.10 ")
 ;;1438
 ;;21,"O44.11 ")
 ;;1439
 ;;21,"O44.12 ")
 ;;1440
 ;;21,"O44.13 ")
 ;;1441
 ;;21,"O44.20 ")
 ;;1442
 ;;21,"O44.21 ")
 ;;1443
 ;;21,"O44.22 ")
 ;;1444
 ;;21,"O44.23 ")
 ;;1445
 ;;21,"O44.30 ")
 ;;1446
 ;;21,"O44.31 ")
 ;;1447
 ;;21,"O44.32 ")
 ;;1448
 ;;21,"O44.33 ")
 ;;1449
 ;;21,"O44.40 ")
 ;;1450
 ;;21,"O44.41 ")
 ;;1451
 ;;21,"O44.42 ")
 ;;1452
 ;;21,"O44.43 ")
 ;;1453
 ;;21,"O44.50 ")
 ;;1454
 ;;21,"O44.51 ")
 ;;1455
 ;;21,"O44.52 ")
 ;;1456
 ;;21,"O44.53 ")
 ;;1457
 ;;21,"O45.001 ")
 ;;1458
 ;;21,"O45.002 ")
 ;;1459
 ;;21,"O45.003 ")
 ;;1460
 ;;21,"O45.009 ")
 ;;1461
 ;;21,"O45.011 ")
 ;;1462
 ;;21,"O45.012 ")
 ;;1463
 ;;21,"O45.013 ")
 ;;1464
 ;;21,"O45.019 ")
 ;;1465
 ;;21,"O45.021 ")
 ;;1466
 ;;21,"O45.022 ")
 ;;1467
 ;;21,"O45.023 ")
 ;;1468
 ;;21,"O45.029 ")
 ;;1469
 ;;21,"O45.091 ")
 ;;1470
 ;;21,"O45.092 ")
 ;;1471
 ;;21,"O45.093 ")
 ;;1472
 ;;21,"O45.099 ")
 ;;1473
 ;;21,"O45.8X1 ")
 ;;1474
 ;;21,"O45.8X2 ")
 ;;1475
 ;;21,"O45.8X3 ")
 ;;1476
 ;;21,"O45.8X9 ")
 ;;1477
 ;;21,"O45.90 ")
 ;;1478
 ;;21,"O45.91 ")
 ;;1479
 ;;21,"O45.92 ")
 ;;1480
 ;;21,"O45.93 ")
 ;;1481
 ;;21,"O46.001 ")
 ;;1482
 ;;21,"O46.002 ")
 ;;1483
 ;;21,"O46.003 ")
 ;;1484
 ;;21,"O46.009 ")
 ;;1485
 ;;21,"O46.011 ")
 ;;1486
 ;;21,"O46.012 ")
 ;;1487
 ;;21,"O46.013 ")
 ;;1488
 ;;21,"O46.019 ")
 ;;1489
 ;;21,"O46.021 ")
 ;;1490
 ;;21,"O46.022 ")
 ;;1491
 ;;21,"O46.023 ")
 ;;1492
 ;;21,"O46.029 ")
 ;;1493
 ;;21,"O46.091 ")
 ;;1494
 ;;21,"O46.092 ")
 ;;1495
 ;;21,"O46.093 ")
 ;;1496
 ;;21,"O46.099 ")
 ;;1497
 ;;21,"O46.8X1 ")
 ;;1498
 ;;21,"O46.8X2 ")
 ;;1499
 ;;21,"O46.8X3 ")
 ;;1500
 ;;21,"O46.8X9 ")
 ;;1501
 ;;21,"O46.90 ")
 ;;1502
 ;;21,"O46.91 ")
 ;;1503
 ;;21,"O46.92 ")
 ;;1504
 ;;21,"O46.93 ")
 ;;1505
 ;;21,"O47.00 ")
 ;;1506
 ;;21,"O47.02 ")
 ;;1507
 ;;21,"O47.03 ")
 ;;1508
 ;;21,"O47.1 ")
 ;;1509
 ;;21,"O47.9 ")
 ;;1510
 ;;21,"O48.0 ")
 ;;1511
 ;;21,"O48.1 ")
 ;;1512
 ;;21,"O60.00 ")
 ;;1513
 ;;21,"O60.02 ")
 ;;1514
 ;;21,"O60.03 ")
 ;;1515
 ;;21,"O71.00 ")
 ;;1516
 ;;21,"O71.02 ")
 ;;1517
 ;;21,"O71.03 ")
 ;;1518
 ;;21,"O88.011 ")
 ;;1519
 ;;21,"O88.012 ")
 ;;1520
 ;;21,"O88.013 ")
 ;;1521
 ;;21,"O88.019 ")
 ;;1522
 ;;21,"O88.111 ")
 ;;1523
 ;;21,"O88.112 ")
 ;;1524
 ;;21,"O88.113 ")
 ;;1525
 ;;21,"O88.119 ")
 ;;1526
 ;;21,"O88.211 ")
 ;;1527
 ;;21,"O88.212 ")
 ;;1528
 ;;21,"O88.213 ")
 ;;1529
 ;;21,"O88.219 ")
 ;;1530
 ;;21,"O88.311 ")
 ;;1531
 ;;21,"O88.312 ")
 ;;1532
 ;;21,"O88.313 ")
 ;;1533
 ;;21,"O88.319 ")
 ;;1534
 ;;21,"O88.811 ")
 ;;1535
 ;;21,"O88.812 ")
 ;;1536
 ;;21,"O88.813 ")
 ;;1537
 ;;21,"O88.819 ")
 ;;1538
 ;;21,"O90.3 ")
 ;;1539
 ;;21,"O91.011 ")
 ;;1540
 ;;21,"O91.012 ")
 ;;1541
 ;;21,"O91.013 ")
 ;;1542
 ;;21,"O91.019 ")
 ;;1543
 ;;21,"O91.111 ")
 ;;1544
 ;;21,"O91.112 ")
 ;;1545
 ;;21,"O91.113 ")
 ;;1546
 ;;21,"O91.119 ")
 ;;1547
 ;;21,"O91.211 ")
 ;;1548
 ;;21,"O91.212 ")
 ;;1549
 ;;21,"O91.213 ")
 ;;1550
 ;;21,"O91.219 ")
 ;;1551
 ;;21,"O92.011 ")
 ;;1552
 ;;21,"O92.012 ")
 ;;1553
 ;;21,"O92.013 ")
 ;;1554
 ;;21,"O92.019 ")
 ;;1555
 ;;21,"O92.111 ")
 ;;1556
 ;;21,"O92.112 ")
 ;;1557
 ;;21,"O92.113 ")
 ;;1558
 ;;21,"O92.119 ")
 ;;1559
 ;;21,"O92.20 ")
 ;;1560
 ;;21,"O92.29 ")
 ;;1561
 ;;21,"O98.011 ")
 ;;1562
 ;;21,"O98.012 ")
 ;;1563
 ;;21,"O98.013 ")
 ;;1564
 ;;21,"O98.019 ")
 ;;1565
 ;;21,"O98.111 ")
 ;;1566
 ;;21,"O98.112 ")
 ;;1567
 ;;21,"O98.113 ")
 ;;1568
 ;;21,"O98.119 ")
 ;;1569
 ;;21,"O98.211 ")
 ;;1570
 ;;21,"O98.212 ")
 ;;1571
 ;;21,"O98.213 ")
 ;;1572
 ;;21,"O98.219 ")
 ;;1573
 ;;21,"O98.311 ")
 ;;1574
 ;;21,"O98.312 ")
 ;;1575
 ;;21,"O98.313 ")
 ;;1576
 ;;21,"O98.319 ")
 ;;1577
 ;;21,"O98.411 ")
 ;;1578
 ;;21,"O98.412 ")
 ;;1579
 ;;21,"O98.413 ")
 ;;1580
 ;;21,"O98.419 ")
 ;;1581
 ;;21,"O98.511 ")
 ;;1582
 ;;21,"O98.512 ")
 ;;1583
 ;;21,"O98.513 ")
 ;;1584
 ;;21,"O98.519 ")
 ;;1585
 ;;21,"O98.611 ")
 ;;1586
 ;;21,"O98.612 ")
 ;;1587
 ;;21,"O98.613 ")
 ;;1588
 ;;21,"O98.619 ")
 ;;1589
 ;;21,"O98.711 ")
 ;;1590
 ;;21,"O98.712 ")
 ;;1591
 ;;21,"O98.713 ")
 ;;1592
 ;;21,"O98.719 ")
 ;;1593
 ;;21,"O98.811 ")
 ;;1594
 ;;21,"O98.812 ")
 ;;1595
 ;;21,"O98.813 ")
 ;;1596