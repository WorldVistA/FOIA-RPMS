BGP71T5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54868-3257-04 ")
 ;;1357
 ;;21,"54868-3257-05 ")
 ;;1358
 ;;21,"54868-3257-06 ")
 ;;1359
 ;;21,"54868-3587-00 ")
 ;;1360
 ;;21,"54868-3587-01 ")
 ;;1361
 ;;21,"54868-3587-02 ")
 ;;1362
 ;;21,"54868-3587-03 ")
 ;;1363
 ;;21,"54868-3587-04 ")
 ;;1364
 ;;21,"54868-3602-00 ")
 ;;1365
 ;;21,"54868-3721-01 ")
 ;;1366
 ;;21,"54868-3721-02 ")
 ;;1367
 ;;21,"54868-4173-00 ")
 ;;1368
 ;;21,"54868-4179-00 ")
 ;;1369
 ;;21,"54868-4223-00 ")
 ;;1370
 ;;21,"54868-4223-01 ")
 ;;1371
 ;;21,"54868-4223-02 ")
 ;;1372
 ;;21,"54868-4223-03 ")
 ;;1373
 ;;21,"54868-4395-00 ")
 ;;1374
 ;;21,"54868-4395-01 ")
 ;;1375
 ;;21,"54868-4395-02 ")
 ;;1376
 ;;21,"54868-4395-03 ")
 ;;1377
 ;;21,"54868-4396-00 ")
 ;;1378
 ;;21,"54868-4396-01 ")
 ;;1379
 ;;21,"54868-4396-02 ")
 ;;1380
 ;;21,"54868-4396-03 ")
 ;;1381
 ;;21,"54868-4421-00 ")
 ;;1382
 ;;21,"54868-4421-01 ")
 ;;1383
 ;;21,"54868-4421-02 ")
 ;;1384
 ;;21,"54868-4424-00 ")
 ;;1385
 ;;21,"54868-4424-01 ")
 ;;1386
 ;;21,"54868-4424-02 ")
 ;;1387
 ;;21,"54868-4424-03 ")
 ;;1388
 ;;21,"54868-4576-00 ")
 ;;1389
 ;;21,"54868-4576-01 ")
 ;;1390
 ;;21,"54868-4576-02 ")
 ;;1391
 ;;21,"54868-4576-03 ")
 ;;1392
 ;;21,"54868-4577-00 ")
 ;;1393
 ;;21,"54868-4577-01 ")
 ;;1394
 ;;21,"54868-4577-03 ")
 ;;1395
 ;;21,"54868-4578-00 ")
 ;;1396
 ;;21,"54868-4578-01 ")
 ;;1397
 ;;21,"54868-4578-02 ")
 ;;1398
 ;;21,"54868-4578-03 ")
 ;;1399
 ;;21,"54868-4621-00 ")
 ;;1400
 ;;21,"54868-4661-00 ")
 ;;1401
 ;;21,"54868-4661-01 ")
 ;;1402
 ;;21,"54868-4844-00 ")
 ;;1403
 ;;21,"54868-4844-01 ")
 ;;1404
 ;;21,"54868-4844-02 ")
 ;;1405
 ;;21,"54868-4844-03 ")
 ;;1406
 ;;21,"54868-4903-00 ")
 ;;1407
 ;;21,"54868-4903-01 ")
 ;;1408
 ;;21,"54868-4903-02 ")
 ;;1409
 ;;21,"54868-4921-00 ")
 ;;1410
 ;;21,"54868-4921-01 ")
 ;;1411
 ;;21,"54868-4921-02 ")
 ;;1412
 ;;21,"54868-4921-03 ")
 ;;1413
 ;;21,"54868-4921-04 ")
 ;;1414
 ;;21,"54868-4932-00 ")
 ;;1415
 ;;21,"54868-4932-01 ")
 ;;1416
 ;;21,"54868-5013-00 ")
 ;;1417
 ;;21,"54868-5013-01 ")
 ;;1418
 ;;21,"54868-5021-00 ")
 ;;1419
 ;;21,"54868-5021-01 ")
 ;;1420
 ;;21,"54868-5021-02 ")
 ;;1421
 ;;21,"54868-5021-03 ")
 ;;1422
 ;;21,"54868-5021-04 ")
 ;;1423
 ;;21,"54868-5068-00 ")
 ;;1424
 ;;21,"54868-5068-01 ")
 ;;1425
 ;;21,"54868-5068-03 ")
 ;;1426
 ;;21,"54868-5095-00 ")
 ;;1427
 ;;21,"54868-5095-01 ")
 ;;1428
 ;;21,"54868-5095-02 ")
 ;;1429
 ;;21,"54868-5095-03 ")
 ;;1430
 ;;21,"54868-5295-00 ")
 ;;1431
 ;;21,"54868-5295-01 ")
 ;;1432
 ;;21,"54868-5344-00 ")
 ;;1433
 ;;21,"54868-5344-01 ")
 ;;1434
 ;;21,"54868-5344-02 ")
 ;;1435
 ;;21,"54868-5395-00 ")
 ;;1436
 ;;21,"54868-5400-00 ")
 ;;1437
 ;;21,"54868-5400-01 ")
 ;;1438
 ;;21,"54868-5520-00 ")
 ;;1439
 ;;21,"54868-5524-00 ")
 ;;1440
 ;;21,"54868-5524-01 ")
 ;;1441
 ;;21,"54868-5564-00 ")
 ;;1442
 ;;21,"54868-5564-01 ")
 ;;1443
 ;;21,"54868-5729-00 ")
 ;;1444
 ;;21,"54868-5729-01 ")
 ;;1445
 ;;21,"54868-5729-02 ")
 ;;1446
 ;;21,"54868-5729-03 ")
 ;;1447
 ;;21,"54868-5729-04 ")
 ;;1448
 ;;21,"54868-5729-05 ")
 ;;1449
 ;;21,"54868-5729-06 ")
 ;;1450
 ;;21,"54868-5730-00 ")
 ;;1451
 ;;21,"54868-5730-01 ")
 ;;1452
 ;;21,"54868-5730-02 ")
 ;;1453
 ;;21,"54868-5730-03 ")
 ;;1454
 ;;21,"54868-5730-04 ")
 ;;1455
 ;;21,"54868-5730-05 ")
 ;;1456
 ;;21,"54868-5731-00 ")
 ;;1457
 ;;21,"54868-5731-01 ")
 ;;1458
 ;;21,"54868-5731-02 ")
 ;;1459
 ;;21,"54868-5731-03 ")
 ;;1460
 ;;21,"54868-5731-04 ")
 ;;1461
 ;;21,"54868-5731-05 ")
 ;;1462
 ;;21,"54868-5732-00 ")
 ;;1463
 ;;21,"54868-5732-01 ")
 ;;1464
 ;;21,"54868-5732-02 ")
 ;;1465
 ;;21,"54868-5755-00 ")
 ;;1466
 ;;21,"54868-5755-01 ")
 ;;1467
 ;;21,"54868-5771-00 ")
 ;;1468
 ;;21,"54868-5771-01 ")
 ;;1469
 ;;21,"54868-5773-00 ")
 ;;1470
 ;;21,"54868-5773-01 ")
 ;;1471
 ;;21,"54868-5773-02 ")
 ;;1472
 ;;21,"54868-5773-03 ")
 ;;1473
 ;;21,"54868-5817-00 ")
 ;;1474
 ;;21,"54868-5817-01 ")
 ;;1475
 ;;21,"54868-5817-02 ")
 ;;1476
 ;;21,"54868-5817-03 ")
 ;;1477
 ;;21,"54868-5869-00 ")
 ;;1478
 ;;21,"54868-5869-01 ")
 ;;1479
 ;;21,"54868-5944-00 ")
 ;;1480
 ;;21,"54868-5944-01 ")
 ;;1481
 ;;21,"54868-6018-00 ")
 ;;1482
 ;;21,"54868-6018-01 ")
 ;;1483
 ;;21,"54868-6019-00 ")
 ;;1484
 ;;21,"54868-6019-01 ")
 ;;1485
 ;;21,"55048-0028-30 ")
 ;;1486
 ;;21,"55048-0029-30 ")
 ;;1487
 ;;21,"55048-0029-90 ")
 ;;1488
 ;;21,"55048-0030-30 ")
 ;;1489
 ;;21,"55048-0056-30 ")
 ;;1490
 ;;21,"55048-0056-60 ")
 ;;1491
 ;;21,"55048-0057-30 ")
 ;;1492
 ;;21,"55048-0057-60 ")
 ;;1493
 ;;21,"55048-0058-30 ")
 ;;1494
 ;;21,"55048-0058-60 ")
 ;;1495
 ;;21,"55048-0059-30 ")
 ;;1496
 ;;21,"55048-0059-60 ")
 ;;1497
 ;;21,"55048-0127-30 ")
 ;;1498
 ;;21,"55048-0128-30 ")
 ;;1499
 ;;21,"55048-0134-60 ")
 ;;1500
 ;;21,"55048-0135-60 ")
 ;;1501
 ;;21,"55048-0137-60 ")
 ;;1502
 ;;21,"55048-0138-60 ")
 ;;1503
 ;;21,"55048-0144-60 ")
 ;;1504
 ;;21,"55048-0519-30 ")
 ;;1505
 ;;21,"55048-0519-60 ")
 ;;1506
 ;;21,"55048-0520-30 ")
 ;;1507
 ;;21,"55048-0521-30 ")
 ;;1508
 ;;21,"55048-0522-30 ")
 ;;1509
 ;;21,"55048-0523-30 ")
 ;;1510
 ;;21,"55048-0524-30 ")
 ;;1511
 ;;21,"55048-0524-60 ")
 ;;1512
 ;;21,"55048-0524-74 ")
 ;;1513
 ;;21,"55111-0252-01 ")
 ;;1514
 ;;21,"55111-0252-05 ")
 ;;1515
 ;;21,"55111-0253-01 ")
 ;;1516
 ;;21,"55111-0253-05 ")
 ;;1517
 ;;21,"55111-0254-01 ")
 ;;1518
 ;;21,"55111-0254-05 ")
 ;;1519
 ;;21,"55111-0255-01 ")
 ;;1520
 ;;21,"55111-0255-05 ")
 ;;1521
 ;;21,"55111-0466-01 ")
 ;;1522
 ;;21,"55111-0466-05 ")
 ;;1523
 ;;21,"55111-0467-01 ")
 ;;1524
 ;;21,"55111-0467-05 ")
 ;;1525
 ;;21,"55111-0468-01 ")
 ;;1526
 ;;21,"55111-0468-05 ")
 ;;1527
 ;;21,"55111-0469-01 ")
 ;;1528
 ;;21,"55111-0469-05 ")
 ;;1529
 ;;21,"55289-0093-30 ")
 ;;1530
 ;;21,"55289-0093-60 ")
 ;;1531
 ;;21,"55289-0093-90 ")
 ;;1532
 ;;21,"55289-0093-93 ")
 ;;1533
 ;;21,"55289-0227-01 ")
 ;;1534
 ;;21,"55289-0227-30 ")
 ;;1535
 ;;21,"55289-0227-90 ")
 ;;1536
 ;;21,"55289-0228-01 ")
 ;;1537
 ;;21,"55289-0228-03 ")
 ;;1538
 ;;21,"55289-0228-06 ")
 ;;1539
 ;;21,"55289-0228-14 ")
 ;;1540
 ;;21,"55289-0228-30 ")
 ;;1541
 ;;21,"55289-0228-60 ")
 ;;1542
 ;;21,"55289-0228-90 ")
 ;;1543
 ;;21,"55289-0233-01 ")
 ;;1544
 ;;21,"55289-0233-12 ")
 ;;1545
 ;;21,"55289-0233-30 ")
 ;;1546
 ;;21,"55289-0233-60 ")
 ;;1547
 ;;21,"55289-0233-90 ")
 ;;1548
 ;;21,"55289-0234-01 ")
 ;;1549
 ;;21,"55289-0234-30 ")
 ;;1550
 ;;21,"55289-0234-90 ")
 ;;1551
 ;;21,"55289-0254-30 ")
 ;;1552
 ;;21,"55289-0382-30 ")
 ;;1553
 ;;21,"55289-0382-90 ")
 ;;1554
 ;;21,"55289-0382-93 ")
 ;;1555
 ;;21,"55289-0413-30 ")
 ;;1556
 ;;21,"55289-0413-60 ")
 ;;1557
 ;;21,"55289-0413-90 ")
 ;;1558
 ;;21,"55289-0413-93 ")
 ;;1559
 ;;21,"55289-0413-94 ")
 ;;1560
 ;;21,"55289-0587-30 ")
 ;;1561
 ;;21,"55289-0627-30 ")
 ;;1562
 ;;21,"55289-0630-30 ")
 ;;1563
 ;;21,"55289-0630-90 ")
 ;;1564
 ;;21,"55289-0653-30 ")
 ;;1565
 ;;21,"55289-0653-90 ")
 ;;1566
 ;;21,"55289-0855-30 ")
 ;;1567
 ;;21,"55289-0902-30 ")
 ;;1568
 ;;21,"55289-0986-30 ")
 ;;1569
 ;;21,"55289-0988-30 ")
 ;;1570
 ;;21,"55289-0993-30 ")
 ;;1571
 ;;21,"55289-0993-60 ")
 ;;1572
 ;;21,"55289-0993-90 ")
 ;;1573
 ;;21,"55700-0103-90 ")
 ;;1574
 ;;21,"55700-0121-30 ")
 ;;1575
 ;;21,"55700-0136-30 ")
 ;;1576
 ;;21,"55700-0192-30 ")
 ;;1577
 ;;21,"55700-0192-60 ")
 ;;1578
 ;;21,"55700-0192-90 ")
 ;;1579
 ;;21,"55700-0212-30 ")
 ;;1580
 ;;21,"55700-0212-60 ")
 ;;1581
 ;;21,"55700-0212-90 ")
 ;;1582
 ;;21,"55700-0231-14 ")
 ;;1583
 ;;21,"55700-0231-30 ")
 ;;1584
 ;;21,"55700-0231-60 ")
 ;;1585
 ;;21,"55700-0232-30 ")
 ;;1586
 ;;21,"55700-0232-60 ")
 ;;1587
 ;;21,"55700-0232-90 ")
 ;;1588
 ;;21,"55700-0240-30 ")
 ;;1589
 ;;21,"55700-0240-60 ")
 ;;1590
 ;;21,"55700-0240-90 ")
 ;;1591
 ;;21,"55700-0242-30 ")
 ;;1592
 ;;21,"55700-0242-60 ")
 ;;1593
 ;;21,"55700-0242-90 ")
 ;;1594
 ;;21,"55700-0243-30 ")
 ;;1595
 ;;21,"55700-0243-60 ")
 ;;1596
 ;;21,"55700-0243-90 ")
 ;;1597
 ;;21,"55700-0247-14 ")
 ;;1598
 ;;21,"55700-0247-30 ")
 ;;1599
 ;;21,"55700-0247-60 ")
 ;;1600
 ;;21,"55700-0253-30 ")
 ;;1601
 ;;21,"55700-0253-60 ")
 ;;1602
 ;;21,"55700-0253-90 ")
 ;;1603
 ;;21,"55700-0289-30 ")
 ;;1604
 ;;21,"55700-0292-30 ")
 ;;1605
 ;;21,"55700-0292-60 ")
 ;;1606
 ;;21,"55700-0292-90 ")
 ;;1607
 ;;21,"55700-0315-30 ")
 ;;1608
 ;;21,"55700-0322-30 ")
 ;;1609
 ;;21,"55700-0322-60 ")
 ;;1610
 ;;21,"55700-0376-30 ")
 ;;1611
 ;;21,"55700-0376-60 ")
 ;;1612
 ;;21,"55700-0376-90 ")
 ;;1613
 ;;21,"57237-0100-01 ")
 ;;1614
 ;;21,"57237-0100-99 ")
 ;;1615
 ;;21,"57237-0101-01 ")
 ;;1616
 ;;21,"57237-0101-99 ")
 ;;1617
 ;;21,"57237-0102-01 ")
 ;;1618
 ;;21,"57237-0102-99 ")
 ;;1619
 ;;21,"57664-0166-08 ")
 ;;1620
 ;;21,"57664-0166-18 ")
 ;;1621
 ;;21,"57664-0166-52 ")
 ;;1622
 ;;21,"57664-0166-58 ")
 ;;1623
 ;;21,"57664-0167-08 ")
 ;;1624
 ;;21,"57664-0167-18 ")
 ;;1625
 ;;21,"57664-0167-52 ")
 ;;1626
 ;;21,"57664-0167-58 ")
 ;;1627
 ;;21,"57664-0242-13 ")
 ;;1628
 ;;21,"57664-0242-18 ")
 ;;1629
 ;;21,"57664-0242-88 ")
 ;;1630
 ;;21,"57664-0244-13 ")
 ;;1631
 ;;21,"57664-0244-18 ")
 ;;1632
 ;;21,"57664-0244-88 ")
 ;;1633
 ;;21,"57664-0245-13 ")
 ;;1634
 ;;21,"57664-0245-18 ")
 ;;1635
 ;;21,"57664-0245-88 ")
 ;;1636
 ;;21,"57664-0247-13 ")
 ;;1637
 ;;21,"57664-0247-18 ")
 ;;1638
 ;;21,"57664-0247-88 ")
 ;;1639
 ;;21,"57664-0477-08 ")
 ;;1640
 ;;21,"57664-0477-18 ")
 ;;1641
 ;;21,"57664-0477-52 ")
 ;;1642
 ;;21,"57664-0477-58 ")
 ;;1643
 ;;21,"57664-0506-08 ")
 ;;1644
 ;;21,"57664-0506-18 ")
 ;;1645
 ;;21,"57664-0506-52 ")
 ;;1646
 ;;21,"57664-0506-58 ")
 ;;1647
 ;;21,"57664-0655-88 ")
 ;;1648
 ;;21,"57664-0656-88 ")
 ;;1649
 ;;21,"58118-0110-03 ")
 ;;1650
 ;;21,"58118-0110-09 ")
 ;;1651
 ;;21,"58118-0163-03 ")
 ;;1652
 ;;21,"58118-0163-09 ")
 ;;1653
 ;;21,"58118-0164-03 ")
 ;;1654
 ;;21,"58118-0164-09 ")
 ;;1655
 ;;21,"58118-0165-03 ")
 ;;1656
 ;;21,"58118-0165-09 ")
 ;;1657
 ;;21,"58118-0167-06 ")
 ;;1658
 ;;21,"58118-0167-08 ")
 ;;1659
 ;;21,"58118-0405-03 ")
 ;;1660
 ;;21,"58118-0477-06 ")
 ;;1661
 ;;21,"58118-0477-08 ")
 ;;1662
 ;;21,"58118-0477-09 ")
 ;;1663
 ;;21,"58118-0506-03 ")
 ;;1664
 ;;21,"58118-0506-09 ")
 ;;1665
 ;;21,"58118-0621-03 ")
 ;;1666
 ;;21,"58118-0621-09 ")
 ;;1667
 ;;21,"58118-0622-03 ")
 ;;1668
 ;;21,"58118-0622-09 ")
 ;;1669
 ;;21,"58118-0623-09 ")
 ;;1670
 ;;21,"58118-0734-03 ")
 ;;1671
 ;;21,"58118-0736-03 ")
 ;;1672
 ;;21,"58517-0320-30 ")
 ;;1673
 ;;21,"58864-0016-01 ")
 ;;1674
 ;;21,"58864-0016-28 ")
 ;;1675
 ;;21,"58864-0016-30 ")
 ;;1676
 ;;21,"58864-0016-60 ")
 ;;1677
 ;;21,"58864-0065-01 ")
 ;;1678
 ;;21,"58864-0065-30 ")
 ;;1679
 ;;21,"58864-0363-30 ")
 ;;1680
 ;;21,"58864-0645-56 ")
 ;;1681
 ;;21,"58864-0680-30 ")
 ;;1682
 ;;21,"58864-0695-30 ")
 ;;1683
 ;;21,"58864-0717-30 ")
 ;;1684
 ;;21,"58864-0727-30 ")
 ;;1685
 ;;21,"58864-0737-30 ")
 ;;1686
 ;;21,"58864-0749-30 ")
 ;;1687
 ;;21,"58864-0749-90 ")
 ;;1688
 ;;21,"58864-0759-30 ")
 ;;1689