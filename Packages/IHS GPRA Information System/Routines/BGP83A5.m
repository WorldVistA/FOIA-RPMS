BGP83A5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"51079-0788-20 ")
 ;;1357
 ;;21,"51079-0789-01 ")
 ;;1358
 ;;21,"51079-0789-20 ")
 ;;1359
 ;;21,"51079-0790-01 ")
 ;;1360
 ;;21,"51079-0790-20 ")
 ;;1361
 ;;21,"51079-0881-01 ")
 ;;1362
 ;;21,"51079-0881-20 ")
 ;;1363
 ;;21,"51079-0881-21 ")
 ;;1364
 ;;21,"51079-0881-56 ")
 ;;1365
 ;;21,"51079-0882-01 ")
 ;;1366
 ;;21,"51079-0882-20 ")
 ;;1367
 ;;21,"51079-0882-21 ")
 ;;1368
 ;;21,"51079-0883-01 ")
 ;;1369
 ;;21,"51079-0883-20 ")
 ;;1370
 ;;21,"51293-0607-01 ")
 ;;1371
 ;;21,"51293-0607-10 ")
 ;;1372
 ;;21,"51293-0607-66 ")
 ;;1373
 ;;21,"51552-1442-03 ")
 ;;1374
 ;;21,"51655-0810-25 ")
 ;;1375
 ;;21,"51672-4042-01 ")
 ;;1376
 ;;21,"51672-4042-02 ")
 ;;1377
 ;;21,"51672-4043-01 ")
 ;;1378
 ;;21,"51672-4043-02 ")
 ;;1379
 ;;21,"51672-4044-01 ")
 ;;1380
 ;;21,"51862-0062-01 ")
 ;;1381
 ;;21,"51862-0062-05 ")
 ;;1382
 ;;21,"51862-0062-10 ")
 ;;1383
 ;;21,"51862-0063-01 ")
 ;;1384
 ;;21,"51862-0063-05 ")
 ;;1385
 ;;21,"51862-0063-10 ")
 ;;1386
 ;;21,"51862-0064-01 ")
 ;;1387
 ;;21,"51862-0064-05 ")
 ;;1388
 ;;21,"51862-0064-10 ")
 ;;1389
 ;;21,"51862-0069-01 ")
 ;;1390
 ;;21,"51862-0070-01 ")
 ;;1391
 ;;21,"52959-0009-00 ")
 ;;1392
 ;;21,"52959-0009-12 ")
 ;;1393
 ;;21,"52959-0009-30 ")
 ;;1394
 ;;21,"52959-0009-60 ")
 ;;1395
 ;;21,"52959-0009-90 ")
 ;;1396
 ;;21,"52959-0047-01 ")
 ;;1397
 ;;21,"52959-0047-02 ")
 ;;1398
 ;;21,"52959-0047-03 ")
 ;;1399
 ;;21,"52959-0047-05 ")
 ;;1400
 ;;21,"52959-0047-06 ")
 ;;1401
 ;;21,"52959-0047-10 ")
 ;;1402
 ;;21,"52959-0047-12 ")
 ;;1403
 ;;21,"52959-0047-15 ")
 ;;1404
 ;;21,"52959-0047-20 ")
 ;;1405
 ;;21,"52959-0047-21 ")
 ;;1406
 ;;21,"52959-0047-25 ")
 ;;1407
 ;;21,"52959-0047-30 ")
 ;;1408
 ;;21,"52959-0047-40 ")
 ;;1409
 ;;21,"52959-0047-45 ")
 ;;1410
 ;;21,"52959-0047-50 ")
 ;;1411
 ;;21,"52959-0047-60 ")
 ;;1412
 ;;21,"52959-0047-90 ")
 ;;1413
 ;;21,"52959-0162-20 ")
 ;;1414
 ;;21,"52959-0236-14 ")
 ;;1415
 ;;21,"52959-0236-15 ")
 ;;1416
 ;;21,"52959-0236-20 ")
 ;;1417
 ;;21,"52959-0236-30 ")
 ;;1418
 ;;21,"52959-0236-60 ")
 ;;1419
 ;;21,"52959-0259-10 ")
 ;;1420
 ;;21,"52959-0259-15 ")
 ;;1421
 ;;21,"52959-0295-02 ")
 ;;1422
 ;;21,"52959-0295-10 ")
 ;;1423
 ;;21,"52959-0295-15 ")
 ;;1424
 ;;21,"52959-0295-30 ")
 ;;1425
 ;;21,"52959-0295-50 ")
 ;;1426
 ;;21,"52959-0306-00 ")
 ;;1427
 ;;21,"52959-0306-02 ")
 ;;1428
 ;;21,"52959-0306-06 ")
 ;;1429
 ;;21,"52959-0306-10 ")
 ;;1430
 ;;21,"52959-0306-15 ")
 ;;1431
 ;;21,"52959-0306-20 ")
 ;;1432
 ;;21,"52959-0306-28 ")
 ;;1433
 ;;21,"52959-0306-30 ")
 ;;1434
 ;;21,"52959-0306-45 ")
 ;;1435
 ;;21,"52959-0306-60 ")
 ;;1436
 ;;21,"52959-0306-90 ")
 ;;1437
 ;;21,"52959-0321-00 ")
 ;;1438
 ;;21,"52959-0321-02 ")
 ;;1439
 ;;21,"52959-0321-10 ")
 ;;1440
 ;;21,"52959-0321-14 ")
 ;;1441
 ;;21,"52959-0321-20 ")
 ;;1442
 ;;21,"52959-0321-30 ")
 ;;1443
 ;;21,"52959-0321-60 ")
 ;;1444
 ;;21,"52959-0321-90 ")
 ;;1445
 ;;21,"52959-0322-30 ")
 ;;1446
 ;;21,"52959-0331-00 ")
 ;;1447
 ;;21,"52959-0331-04 ")
 ;;1448
 ;;21,"52959-0331-05 ")
 ;;1449
 ;;21,"52959-0331-10 ")
 ;;1450
 ;;21,"52959-0331-14 ")
 ;;1451
 ;;21,"52959-0331-15 ")
 ;;1452
 ;;21,"52959-0331-20 ")
 ;;1453
 ;;21,"52959-0331-21 ")
 ;;1454
 ;;21,"52959-0331-30 ")
 ;;1455
 ;;21,"52959-0331-40 ")
 ;;1456
 ;;21,"52959-0331-45 ")
 ;;1457
 ;;21,"52959-0331-60 ")
 ;;1458
 ;;21,"52959-0331-90 ")
 ;;1459
 ;;21,"52959-0365-01 ")
 ;;1460
 ;;21,"52959-0365-05 ")
 ;;1461
 ;;21,"52959-0365-15 ")
 ;;1462
 ;;21,"52959-0365-30 ")
 ;;1463
 ;;21,"52959-0365-60 ")
 ;;1464
 ;;21,"52959-0365-90 ")
 ;;1465
 ;;21,"52959-0369-00 ")
 ;;1466
 ;;21,"52959-0369-06 ")
 ;;1467
 ;;21,"52959-0369-30 ")
 ;;1468
 ;;21,"52959-0369-40 ")
 ;;1469
 ;;21,"52959-0369-60 ")
 ;;1470
 ;;21,"52959-0402-01 ")
 ;;1471
 ;;21,"52959-0402-10 ")
 ;;1472
 ;;21,"52959-0402-30 ")
 ;;1473
 ;;21,"52959-0402-50 ")
 ;;1474
 ;;21,"52959-0402-60 ")
 ;;1475
 ;;21,"52959-0457-00 ")
 ;;1476
 ;;21,"52959-0457-02 ")
 ;;1477
 ;;21,"52959-0457-15 ")
 ;;1478
 ;;21,"52959-0457-20 ")
 ;;1479
 ;;21,"52959-0457-28 ")
 ;;1480
 ;;21,"52959-0457-30 ")
 ;;1481
 ;;21,"52959-0457-42 ")
 ;;1482
 ;;21,"52959-0457-45 ")
 ;;1483
 ;;21,"52959-0457-60 ")
 ;;1484
 ;;21,"52959-0457-90 ")
 ;;1485
 ;;21,"52959-0459-00 ")
 ;;1486
 ;;21,"52959-0459-10 ")
 ;;1487
 ;;21,"52959-0459-12 ")
 ;;1488
 ;;21,"52959-0459-15 ")
 ;;1489
 ;;21,"52959-0459-20 ")
 ;;1490
 ;;21,"52959-0459-30 ")
 ;;1491
 ;;21,"52959-0459-60 ")
 ;;1492
 ;;21,"52959-0524-00 ")
 ;;1493
 ;;21,"52959-0524-02 ")
 ;;1494
 ;;21,"52959-0524-06 ")
 ;;1495
 ;;21,"52959-0524-10 ")
 ;;1496
 ;;21,"52959-0524-14 ")
 ;;1497
 ;;21,"52959-0524-28 ")
 ;;1498
 ;;21,"52959-0524-30 ")
 ;;1499
 ;;21,"52959-0524-60 ")
 ;;1500
 ;;21,"52959-0524-90 ")
 ;;1501
 ;;21,"52959-0535-10 ")
 ;;1502
 ;;21,"52959-0535-12 ")
 ;;1503
 ;;21,"52959-0535-15 ")
 ;;1504
 ;;21,"52959-0535-28 ")
 ;;1505
 ;;21,"52959-0535-30 ")
 ;;1506
 ;;21,"52959-0535-40 ")
 ;;1507
 ;;21,"52959-0535-60 ")
 ;;1508
 ;;21,"52959-0538-00 ")
 ;;1509
 ;;21,"52959-0538-10 ")
 ;;1510
 ;;21,"52959-0538-20 ")
 ;;1511
 ;;21,"52959-0538-30 ")
 ;;1512
 ;;21,"52959-0538-40 ")
 ;;1513
 ;;21,"52959-0538-60 ")
 ;;1514
 ;;21,"52959-0538-90 ")
 ;;1515
 ;;21,"52959-0630-00 ")
 ;;1516
 ;;21,"52959-0630-02 ")
 ;;1517
 ;;21,"52959-0630-18 ")
 ;;1518
 ;;21,"52959-0630-30 ")
 ;;1519
 ;;21,"52959-0630-60 ")
 ;;1520
 ;;21,"52959-0630-90 ")
 ;;1521
 ;;21,"52959-0761-00 ")
 ;;1522
 ;;21,"52959-0761-02 ")
 ;;1523
 ;;21,"52959-0761-10 ")
 ;;1524
 ;;21,"52959-0761-30 ")
 ;;1525
 ;;21,"52959-0761-60 ")
 ;;1526
 ;;21,"52959-0837-90 ")
 ;;1527
 ;;21,"52959-0864-00 ")
 ;;1528
 ;;21,"52959-0864-10 ")
 ;;1529
 ;;21,"52959-0864-30 ")
 ;;1530
 ;;21,"52959-0864-40 ")
 ;;1531
 ;;21,"52959-0864-60 ")
 ;;1532
 ;;21,"52959-0864-90 ")
 ;;1533
 ;;21,"52959-0873-30 ")
 ;;1534
 ;;21,"52959-0873-60 ")
 ;;1535
 ;;21,"52959-0874-30 ")
 ;;1536
 ;;21,"52959-0874-60 ")
 ;;1537
 ;;21,"52959-0887-30 ")
 ;;1538
 ;;21,"52959-0915-01 ")
 ;;1539
 ;;21,"52959-0964-30 ")
 ;;1540
 ;;21,"52959-0965-15 ")
 ;;1541
 ;;21,"52959-0965-30 ")
 ;;1542
 ;;21,"52959-0965-60 ")
 ;;1543
 ;;21,"52959-0970-30 ")
 ;;1544
 ;;21,"53002-0395-05 ")
 ;;1545
 ;;21,"53002-0395-10 ")
 ;;1546
 ;;21,"53002-0395-15 ")
 ;;1547
 ;;21,"53002-0395-20 ")
 ;;1548
 ;;21,"53002-0395-30 ")
 ;;1549
 ;;21,"53217-0056-07 ")
 ;;1550
 ;;21,"53217-0056-14 ")
 ;;1551
 ;;21,"53217-0056-21 ")
 ;;1552
 ;;21,"53217-0056-30 ")
 ;;1553
 ;;21,"53217-0056-60 ")
 ;;1554
 ;;21,"53217-0056-90 ")
 ;;1555
 ;;21,"53217-0179-02 ")
 ;;1556
 ;;21,"53217-0179-30 ")
 ;;1557
 ;;21,"53217-0179-45 ")
 ;;1558
 ;;21,"53217-0179-60 ")
 ;;1559
 ;;21,"53217-0179-90 ")
 ;;1560
 ;;21,"53217-0183-20 ")
 ;;1561
 ;;21,"53217-0183-30 ")
 ;;1562
 ;;21,"53217-0184-00 ")
 ;;1563
 ;;21,"53217-0184-02 ")
 ;;1564
 ;;21,"53217-0184-05 ")
 ;;1565
 ;;21,"53217-0184-07 ")
 ;;1566
 ;;21,"53217-0184-08 ")
 ;;1567
 ;;21,"53217-0184-10 ")
 ;;1568
 ;;21,"53217-0184-14 ")
 ;;1569
 ;;21,"53217-0184-20 ")
 ;;1570
 ;;21,"53217-0184-29 ")
 ;;1571
 ;;21,"53217-0184-30 ")
 ;;1572
 ;;21,"53217-0184-31 ")
 ;;1573
 ;;21,"53217-0184-60 ")
 ;;1574
 ;;21,"53217-0184-90 ")
 ;;1575
 ;;21,"53217-0185-00 ")
 ;;1576
 ;;21,"53217-0185-02 ")
 ;;1577
 ;;21,"53217-0185-05 ")
 ;;1578
 ;;21,"53217-0185-07 ")
 ;;1579
 ;;21,"53217-0185-08 ")
 ;;1580
 ;;21,"53217-0185-10 ")
 ;;1581
 ;;21,"53217-0185-14 ")
 ;;1582
 ;;21,"53217-0185-20 ")
 ;;1583
 ;;21,"53217-0185-29 ")
 ;;1584
 ;;21,"53217-0185-30 ")
 ;;1585
 ;;21,"53217-0185-31 ")
 ;;1586
 ;;21,"53217-0185-60 ")
 ;;1587
 ;;21,"53217-0185-90 ")
 ;;1588
 ;;21,"53217-0189-02 ")
 ;;1589
 ;;21,"53217-0189-30 ")
 ;;1590
 ;;21,"53217-0189-60 ")
 ;;1591
 ;;21,"53217-0189-90 ")
 ;;1592
 ;;21,"53217-0200-30 ")
 ;;1593
 ;;21,"53217-0200-60 ")
 ;;1594
 ;;21,"53217-0200-90 ")
 ;;1595
 ;;21,"53217-0205-30 ")
 ;;1596
 ;;21,"53217-0208-02 ")
 ;;1597
 ;;21,"53217-0208-05 ")
 ;;1598
 ;;21,"53217-0208-30 ")
 ;;1599
 ;;21,"53217-0208-45 ")
 ;;1600
 ;;21,"53217-0208-60 ")
 ;;1601
 ;;21,"53217-0208-90 ")
 ;;1602
 ;;21,"53217-0216-00 ")
 ;;1603
 ;;21,"53217-0216-15 ")
 ;;1604
 ;;21,"53217-0216-30 ")
 ;;1605
 ;;21,"53217-0216-40 ")
 ;;1606
 ;;21,"53217-0216-60 ")
 ;;1607
 ;;21,"53217-0216-90 ")
 ;;1608
 ;;21,"53217-0247-60 ")
 ;;1609
 ;;21,"53489-0648-01 ")
 ;;1610
 ;;21,"53489-0650-07 ")
 ;;1611
 ;;21,"54348-0021-30 ")
 ;;1612
 ;;21,"54348-0022-30 ")
 ;;1613
 ;;21,"54569-0430-00 ")
 ;;1614
 ;;21,"54569-0898-00 ")
 ;;1615
 ;;21,"54569-0905-00 ")
 ;;1616
 ;;21,"54569-0905-01 ")
 ;;1617
 ;;21,"54569-0927-01 ")
 ;;1618
 ;;21,"54569-0936-00 ")
 ;;1619
 ;;21,"54569-0936-02 ")
 ;;1620
 ;;21,"54569-0936-03 ")
 ;;1621
 ;;21,"54569-0936-04 ")
 ;;1622
 ;;21,"54569-0936-05 ")
 ;;1623
 ;;21,"54569-0936-08 ")
 ;;1624
 ;;21,"54569-0947-00 ")
 ;;1625
 ;;21,"54569-0947-06 ")
 ;;1626
 ;;21,"54569-0949-00 ")
 ;;1627
 ;;21,"54569-0949-01 ")
 ;;1628
 ;;21,"54569-0949-02 ")
 ;;1629
 ;;21,"54569-0949-03 ")
 ;;1630
 ;;21,"54569-0949-04 ")
 ;;1631
 ;;21,"54569-0949-05 ")
 ;;1632
 ;;21,"54569-0949-07 ")
 ;;1633
 ;;21,"54569-1585-00 ")
 ;;1634
 ;;21,"54569-1585-01 ")
 ;;1635
 ;;21,"54569-1585-02 ")
 ;;1636
 ;;21,"54569-1585-05 ")
 ;;1637
 ;;21,"54569-1726-01 ")
 ;;1638
 ;;21,"54569-1726-04 ")
 ;;1639
 ;;21,"54569-2095-04 ")
 ;;1640
 ;;21,"54569-2095-06 ")
 ;;1641
 ;;21,"54569-2173-00 ")
 ;;1642
 ;;21,"54569-2173-04 ")
 ;;1643
 ;;21,"54569-2376-02 ")
 ;;1644
 ;;21,"54569-2687-00 ")
 ;;1645
 ;;21,"54569-2687-04 ")
 ;;1646
 ;;21,"54569-3755-00 ")
 ;;1647
 ;;21,"54569-3755-01 ")
 ;;1648
 ;;21,"54569-3755-02 ")
 ;;1649
 ;;21,"54569-3755-04 ")
 ;;1650
 ;;21,"54569-3755-05 ")
 ;;1651
 ;;21,"54569-3756-00 ")
 ;;1652
 ;;21,"54569-3756-01 ")
 ;;1653
 ;;21,"54569-3756-02 ")
 ;;1654
 ;;21,"54569-3756-03 ")
 ;;1655
 ;;21,"54569-3756-04 ")
 ;;1656
 ;;21,"54569-3966-00 ")
 ;;1657
 ;;21,"54569-3966-01 ")
 ;;1658
 ;;21,"54569-3966-03 ")
 ;;1659
 ;;21,"54569-4586-01 ")
 ;;1660
 ;;21,"54569-4619-00 ")
 ;;1661
 ;;21,"54569-4619-01 ")
 ;;1662
 ;;21,"54569-4619-02 ")
 ;;1663
 ;;21,"54569-4619-03 ")
 ;;1664
 ;;21,"54569-4619-06 ")
 ;;1665
 ;;21,"54569-4764-00 ")
 ;;1666
 ;;21,"54569-4764-03 ")
 ;;1667
 ;;21,"54569-4764-04 ")
 ;;1668
 ;;21,"54569-4900-00 ")
 ;;1669
 ;;21,"54569-4900-01 ")
 ;;1670
 ;;21,"54569-4900-02 ")
 ;;1671
 ;;21,"54569-5126-00 ")
 ;;1672
 ;;21,"54569-5126-01 ")
 ;;1673
 ;;21,"54569-5126-02 ")
 ;;1674
 ;;21,"54569-5227-00 ")
 ;;1675
 ;;21,"54569-5227-01 ")
 ;;1676
 ;;21,"54569-5227-02 ")
 ;;1677
 ;;21,"54569-5354-04 ")
 ;;1678
 ;;21,"54569-5401-00 ")
 ;;1679
 ;;21,"54569-5503-00 ")
 ;;1680
 ;;21,"54569-6187-00 ")
 ;;1681
 ;;21,"54569-6376-00 ")
 ;;1682
 ;;21,"54569-6568-00 ")
 ;;1683
 ;;21,"54569-9026-00 ")
 ;;1684
 ;;21,"54569-9034-00 ")
 ;;1685
 ;;21,"54569-9042-00 ")
 ;;1686
 ;;21,"54569-9069-00 ")
 ;;1687
 ;;21,"54868-0030-00 ")
 ;;1688
 ;;21,"54868-0030-02 ")
 ;;1689