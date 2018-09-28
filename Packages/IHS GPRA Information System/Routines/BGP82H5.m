BGP82H5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54868-5732-01 ")
 ;;1357
 ;;21,"54868-5732-02 ")
 ;;1358
 ;;21,"54868-5755-00 ")
 ;;1359
 ;;21,"54868-5755-01 ")
 ;;1360
 ;;21,"54868-5771-00 ")
 ;;1361
 ;;21,"54868-5771-01 ")
 ;;1362
 ;;21,"54868-5773-00 ")
 ;;1363
 ;;21,"54868-5773-01 ")
 ;;1364
 ;;21,"54868-5773-02 ")
 ;;1365
 ;;21,"54868-5773-03 ")
 ;;1366
 ;;21,"54868-5817-00 ")
 ;;1367
 ;;21,"54868-5817-01 ")
 ;;1368
 ;;21,"54868-5817-02 ")
 ;;1369
 ;;21,"54868-5817-03 ")
 ;;1370
 ;;21,"54868-5869-00 ")
 ;;1371
 ;;21,"54868-5869-01 ")
 ;;1372
 ;;21,"54868-5944-00 ")
 ;;1373
 ;;21,"54868-5944-01 ")
 ;;1374
 ;;21,"54868-6018-00 ")
 ;;1375
 ;;21,"54868-6018-01 ")
 ;;1376
 ;;21,"54868-6019-00 ")
 ;;1377
 ;;21,"54868-6019-01 ")
 ;;1378
 ;;21,"55111-0252-01 ")
 ;;1379
 ;;21,"55111-0252-05 ")
 ;;1380
 ;;21,"55111-0253-01 ")
 ;;1381
 ;;21,"55111-0253-05 ")
 ;;1382
 ;;21,"55111-0254-01 ")
 ;;1383
 ;;21,"55111-0254-05 ")
 ;;1384
 ;;21,"55111-0255-01 ")
 ;;1385
 ;;21,"55111-0255-05 ")
 ;;1386
 ;;21,"55111-0466-01 ")
 ;;1387
 ;;21,"55111-0466-05 ")
 ;;1388
 ;;21,"55111-0467-01 ")
 ;;1389
 ;;21,"55111-0467-05 ")
 ;;1390
 ;;21,"55111-0468-01 ")
 ;;1391
 ;;21,"55111-0468-05 ")
 ;;1392
 ;;21,"55111-0469-01 ")
 ;;1393
 ;;21,"55111-0469-05 ")
 ;;1394
 ;;21,"55154-4993-00 ")
 ;;1395
 ;;21,"55154-5676-00 ")
 ;;1396
 ;;21,"55154-6895-00 ")
 ;;1397
 ;;21,"55289-0093-30 ")
 ;;1398
 ;;21,"55289-0093-60 ")
 ;;1399
 ;;21,"55289-0093-90 ")
 ;;1400
 ;;21,"55289-0093-93 ")
 ;;1401
 ;;21,"55289-0227-01 ")
 ;;1402
 ;;21,"55289-0227-30 ")
 ;;1403
 ;;21,"55289-0227-90 ")
 ;;1404
 ;;21,"55289-0228-01 ")
 ;;1405
 ;;21,"55289-0228-03 ")
 ;;1406
 ;;21,"55289-0228-06 ")
 ;;1407
 ;;21,"55289-0228-14 ")
 ;;1408
 ;;21,"55289-0228-30 ")
 ;;1409
 ;;21,"55289-0228-60 ")
 ;;1410
 ;;21,"55289-0228-90 ")
 ;;1411
 ;;21,"55289-0233-01 ")
 ;;1412
 ;;21,"55289-0233-12 ")
 ;;1413
 ;;21,"55289-0233-30 ")
 ;;1414
 ;;21,"55289-0233-60 ")
 ;;1415
 ;;21,"55289-0233-90 ")
 ;;1416
 ;;21,"55289-0234-01 ")
 ;;1417
 ;;21,"55289-0234-30 ")
 ;;1418
 ;;21,"55289-0234-90 ")
 ;;1419
 ;;21,"55289-0254-30 ")
 ;;1420
 ;;21,"55289-0382-14 ")
 ;;1421
 ;;21,"55289-0382-30 ")
 ;;1422
 ;;21,"55289-0382-90 ")
 ;;1423
 ;;21,"55289-0382-93 ")
 ;;1424
 ;;21,"55289-0413-30 ")
 ;;1425
 ;;21,"55289-0413-60 ")
 ;;1426
 ;;21,"55289-0413-90 ")
 ;;1427
 ;;21,"55289-0413-93 ")
 ;;1428
 ;;21,"55289-0413-94 ")
 ;;1429
 ;;21,"55289-0587-30 ")
 ;;1430
 ;;21,"55289-0627-30 ")
 ;;1431
 ;;21,"55289-0630-30 ")
 ;;1432
 ;;21,"55289-0630-90 ")
 ;;1433
 ;;21,"55289-0653-30 ")
 ;;1434
 ;;21,"55289-0653-90 ")
 ;;1435
 ;;21,"55289-0855-30 ")
 ;;1436
 ;;21,"55289-0902-30 ")
 ;;1437
 ;;21,"55289-0986-30 ")
 ;;1438
 ;;21,"55289-0988-30 ")
 ;;1439
 ;;21,"55289-0993-30 ")
 ;;1440
 ;;21,"55289-0993-60 ")
 ;;1441
 ;;21,"55289-0993-90 ")
 ;;1442
 ;;21,"55700-0103-90 ")
 ;;1443
 ;;21,"55700-0121-30 ")
 ;;1444
 ;;21,"55700-0136-30 ")
 ;;1445
 ;;21,"55700-0192-30 ")
 ;;1446
 ;;21,"55700-0192-60 ")
 ;;1447
 ;;21,"55700-0192-90 ")
 ;;1448
 ;;21,"55700-0212-30 ")
 ;;1449
 ;;21,"55700-0212-60 ")
 ;;1450
 ;;21,"55700-0212-90 ")
 ;;1451
 ;;21,"55700-0231-14 ")
 ;;1452
 ;;21,"55700-0231-30 ")
 ;;1453
 ;;21,"55700-0231-60 ")
 ;;1454
 ;;21,"55700-0232-30 ")
 ;;1455
 ;;21,"55700-0232-60 ")
 ;;1456
 ;;21,"55700-0232-90 ")
 ;;1457
 ;;21,"55700-0240-30 ")
 ;;1458
 ;;21,"55700-0240-60 ")
 ;;1459
 ;;21,"55700-0240-90 ")
 ;;1460
 ;;21,"55700-0242-30 ")
 ;;1461
 ;;21,"55700-0242-60 ")
 ;;1462
 ;;21,"55700-0242-90 ")
 ;;1463
 ;;21,"55700-0243-30 ")
 ;;1464
 ;;21,"55700-0243-60 ")
 ;;1465
 ;;21,"55700-0243-90 ")
 ;;1466
 ;;21,"55700-0247-14 ")
 ;;1467
 ;;21,"55700-0247-30 ")
 ;;1468
 ;;21,"55700-0247-60 ")
 ;;1469
 ;;21,"55700-0253-30 ")
 ;;1470
 ;;21,"55700-0253-60 ")
 ;;1471
 ;;21,"55700-0253-90 ")
 ;;1472
 ;;21,"55700-0289-30 ")
 ;;1473
 ;;21,"55700-0292-30 ")
 ;;1474
 ;;21,"55700-0292-60 ")
 ;;1475
 ;;21,"55700-0292-90 ")
 ;;1476
 ;;21,"55700-0315-30 ")
 ;;1477
 ;;21,"55700-0322-30 ")
 ;;1478
 ;;21,"55700-0322-60 ")
 ;;1479
 ;;21,"55700-0376-30 ")
 ;;1480
 ;;21,"55700-0376-60 ")
 ;;1481
 ;;21,"55700-0376-90 ")
 ;;1482
 ;;21,"55700-0413-60 ")
 ;;1483
 ;;21,"55700-0413-90 ")
 ;;1484
 ;;21,"55700-0499-90 ")
 ;;1485
 ;;21,"57237-0100-01 ")
 ;;1486
 ;;21,"57237-0100-99 ")
 ;;1487
 ;;21,"57237-0101-01 ")
 ;;1488
 ;;21,"57237-0101-99 ")
 ;;1489
 ;;21,"57237-0102-01 ")
 ;;1490
 ;;21,"57237-0102-99 ")
 ;;1491
 ;;21,"57664-0166-08 ")
 ;;1492
 ;;21,"57664-0166-18 ")
 ;;1493
 ;;21,"57664-0166-52 ")
 ;;1494
 ;;21,"57664-0166-58 ")
 ;;1495
 ;;21,"57664-0167-08 ")
 ;;1496
 ;;21,"57664-0167-18 ")
 ;;1497
 ;;21,"57664-0167-52 ")
 ;;1498
 ;;21,"57664-0167-58 ")
 ;;1499
 ;;21,"57664-0242-13 ")
 ;;1500
 ;;21,"57664-0242-18 ")
 ;;1501
 ;;21,"57664-0242-88 ")
 ;;1502
 ;;21,"57664-0244-13 ")
 ;;1503
 ;;21,"57664-0244-18 ")
 ;;1504
 ;;21,"57664-0244-88 ")
 ;;1505
 ;;21,"57664-0245-13 ")
 ;;1506
 ;;21,"57664-0245-18 ")
 ;;1507
 ;;21,"57664-0245-88 ")
 ;;1508
 ;;21,"57664-0247-13 ")
 ;;1509
 ;;21,"57664-0247-18 ")
 ;;1510
 ;;21,"57664-0247-88 ")
 ;;1511
 ;;21,"57664-0477-08 ")
 ;;1512
 ;;21,"57664-0477-18 ")
 ;;1513
 ;;21,"57664-0477-52 ")
 ;;1514
 ;;21,"57664-0477-58 ")
 ;;1515
 ;;21,"57664-0506-08 ")
 ;;1516
 ;;21,"57664-0506-18 ")
 ;;1517
 ;;21,"57664-0506-52 ")
 ;;1518
 ;;21,"57664-0506-58 ")
 ;;1519
 ;;21,"57664-0655-88 ")
 ;;1520
 ;;21,"57664-0656-88 ")
 ;;1521
 ;;21,"58118-0110-03 ")
 ;;1522
 ;;21,"58118-0110-09 ")
 ;;1523
 ;;21,"58118-0163-03 ")
 ;;1524
 ;;21,"58118-0163-09 ")
 ;;1525
 ;;21,"58118-0164-03 ")
 ;;1526
 ;;21,"58118-0164-09 ")
 ;;1527
 ;;21,"58118-0165-03 ")
 ;;1528
 ;;21,"58118-0165-09 ")
 ;;1529
 ;;21,"58118-0167-06 ")
 ;;1530
 ;;21,"58118-0167-08 ")
 ;;1531
 ;;21,"58118-0405-03 ")
 ;;1532
 ;;21,"58118-0477-06 ")
 ;;1533
 ;;21,"58118-0477-08 ")
 ;;1534
 ;;21,"58118-0477-09 ")
 ;;1535
 ;;21,"58118-0506-03 ")
 ;;1536
 ;;21,"58118-0506-09 ")
 ;;1537
 ;;21,"58118-0621-03 ")
 ;;1538
 ;;21,"58118-0621-09 ")
 ;;1539
 ;;21,"58118-0622-03 ")
 ;;1540
 ;;21,"58118-0622-09 ")
 ;;1541
 ;;21,"58118-0623-09 ")
 ;;1542
 ;;21,"58118-0734-03 ")
 ;;1543
 ;;21,"58118-0736-03 ")
 ;;1544
 ;;21,"58517-0320-30 ")
 ;;1545
 ;;21,"58864-0016-01 ")
 ;;1546
 ;;21,"58864-0016-28 ")
 ;;1547
 ;;21,"58864-0016-30 ")
 ;;1548
 ;;21,"58864-0016-60 ")
 ;;1549
 ;;21,"58864-0065-01 ")
 ;;1550
 ;;21,"58864-0065-30 ")
 ;;1551
 ;;21,"58864-0363-30 ")
 ;;1552
 ;;21,"58864-0645-56 ")
 ;;1553
 ;;21,"58864-0680-30 ")
 ;;1554
 ;;21,"58864-0695-30 ")
 ;;1555
 ;;21,"58864-0717-30 ")
 ;;1556
 ;;21,"58864-0727-30 ")
 ;;1557
 ;;21,"58864-0737-30 ")
 ;;1558
 ;;21,"58864-0749-30 ")
 ;;1559
 ;;21,"58864-0749-90 ")
 ;;1560
 ;;21,"58864-0759-30 ")
 ;;1561
 ;;21,"58864-0765-30 ")
 ;;1562
 ;;21,"58864-0784-30 ")
 ;;1563
 ;;21,"59212-0087-30 ")
 ;;1564
 ;;21,"59212-0095-30 ")
 ;;1565
 ;;21,"59212-0097-30 ")
 ;;1566
 ;;21,"59762-0810-01 ")
 ;;1567
 ;;21,"59762-0811-01 ")
 ;;1568
 ;;21,"59762-0812-01 ")
 ;;1569
 ;;21,"59762-1301-01 ")
 ;;1570
 ;;21,"59762-1301-03 ")
 ;;1571
 ;;21,"59762-1302-01 ")
 ;;1572
 ;;21,"59762-1302-03 ")
 ;;1573
 ;;21,"60429-0025-10 ")
 ;;1574
 ;;21,"60429-0025-90 ")
 ;;1575
 ;;21,"60429-0026-10 ")
 ;;1576
 ;;21,"60429-0026-90 ")
 ;;1577
 ;;21,"60429-0027-10 ")
 ;;1578
 ;;21,"60429-0027-90 ")
 ;;1579
 ;;21,"60429-0126-01 ")
 ;;1580
 ;;21,"60429-0126-05 ")
 ;;1581
 ;;21,"60429-0127-01 ")
 ;;1582
 ;;21,"60429-0127-05 ")
 ;;1583
 ;;21,"60429-0128-01 ")
 ;;1584
 ;;21,"60429-0128-05 ")
 ;;1585
 ;;21,"60429-0129-01 ")
 ;;1586
 ;;21,"60429-0129-05 ")
 ;;1587
 ;;21,"60429-0139-01 ")
 ;;1588
 ;;21,"60429-0139-10 ")
 ;;1589
 ;;21,"60429-0140-01 ")
 ;;1590
 ;;21,"60429-0140-10 ")
 ;;1591
 ;;21,"60429-0141-01 ")
 ;;1592
 ;;21,"60429-0141-10 ")
 ;;1593
 ;;21,"60429-0141-45 ")
 ;;1594
 ;;21,"60429-0142-01 ")
 ;;1595
 ;;21,"60429-0142-05 ")
 ;;1596
 ;;21,"60429-0142-10 ")
 ;;1597
 ;;21,"60429-0142-45 ")
 ;;1598
 ;;21,"60429-0277-01 ")
 ;;1599
 ;;21,"60429-0277-05 ")
 ;;1600
 ;;21,"60429-0278-01 ")
 ;;1601
 ;;21,"60429-0278-05 ")
 ;;1602
 ;;21,"60429-0279-01 ")
 ;;1603
 ;;21,"60429-0753-01 ")
 ;;1604
 ;;21,"60429-0754-01 ")
 ;;1605
 ;;21,"60505-2606-01 ")
 ;;1606
 ;;21,"60505-2606-08 ")
 ;;1607
 ;;21,"60505-2607-01 ")
 ;;1608
 ;;21,"60505-2607-08 ")
 ;;1609
 ;;21,"60505-2608-01 ")
 ;;1610
 ;;21,"60505-2608-08 ")
 ;;1611
 ;;21,"60505-2609-01 ")
 ;;1612
 ;;21,"60505-2609-08 ")
 ;;1613
 ;;21,"60687-0114-01 ")
 ;;1614
 ;;21,"60687-0114-11 ")
 ;;1615
 ;;21,"60687-0125-01 ")
 ;;1616
 ;;21,"60687-0125-11 ")
 ;;1617
 ;;21,"60687-0136-01 ")
 ;;1618
 ;;21,"60687-0136-11 ")
 ;;1619
 ;;21,"60687-0215-01 ")
 ;;1620
 ;;21,"60687-0215-11 ")
 ;;1621
 ;;21,"60687-0237-25 ")
 ;;1622
 ;;21,"60687-0237-95 ")
 ;;1623
 ;;21,"60687-0302-25 ")
 ;;1624
 ;;21,"60687-0302-95 ")
 ;;1625
 ;;21,"60687-0324-25 ")
 ;;1626
 ;;21,"60687-0324-95 ")
 ;;1627
 ;;21,"60760-0059-30 ")
 ;;1628
 ;;21,"60760-0059-90 ")
 ;;1629
 ;;21,"60760-0060-30 ")
 ;;1630
 ;;21,"60760-0060-90 ")
 ;;1631
 ;;21,"60760-0061-90 ")
 ;;1632
 ;;21,"60760-0142-60 ")
 ;;1633
 ;;21,"60760-0142-98 ")
 ;;1634
 ;;21,"60760-0143-60 ")
 ;;1635
 ;;21,"60760-0143-98 ")
 ;;1636
 ;;21,"60760-0144-60 ")
 ;;1637
 ;;21,"60760-0144-98 ")
 ;;1638
 ;;21,"60760-0145-60 ")
 ;;1639
 ;;21,"60760-0145-98 ")
 ;;1640
 ;;21,"60760-0251-60 ")
 ;;1641
 ;;21,"60760-0251-98 ")
 ;;1642
 ;;21,"60760-0252-30 ")
 ;;1643
 ;;21,"60760-0252-60 ")
 ;;1644
 ;;21,"60760-0252-90 ")
 ;;1645
 ;;21,"60760-0291-90 ")
 ;;1646
 ;;21,"60760-0292-60 ")
 ;;1647
 ;;21,"60760-0976-30 ")
 ;;1648
 ;;21,"60760-0976-90 ")
 ;;1649
 ;;21,"60760-0977-30 ")
 ;;1650
 ;;21,"60760-0977-90 ")
 ;;1651
 ;;21,"60760-0978-30 ")
 ;;1652
 ;;21,"60760-0978-90 ")
 ;;1653
 ;;21,"60793-0283-01 ")
 ;;1654
 ;;21,"60793-0284-01 ")
 ;;1655
 ;;21,"60793-0800-01 ")
 ;;1656
 ;;21,"60793-0801-01 ")
 ;;1657
 ;;21,"60793-0802-01 ")
 ;;1658
 ;;21,"61919-0052-60 ")
 ;;1659
 ;;21,"61919-0052-90 ")
 ;;1660
 ;;21,"61919-0256-30 ")
 ;;1661
 ;;21,"61919-0256-90 ")
 ;;1662
 ;;21,"61919-0257-30 ")
 ;;1663
 ;;21,"61919-0257-90 ")
 ;;1664
 ;;21,"61919-0317-30 ")
 ;;1665
 ;;21,"61919-0317-60 ")
 ;;1666
 ;;21,"61919-0317-90 ")
 ;;1667
 ;;21,"61919-0428-90 ")
 ;;1668
 ;;21,"61919-0533-90 ")
 ;;1669
 ;;21,"61919-0808-30 ")
 ;;1670
 ;;21,"61919-0900-10 ")
 ;;1671
 ;;21,"61919-0900-30 ")
 ;;1672
 ;;21,"61919-0935-30 ")
 ;;1673
 ;;21,"61919-0984-30 ")
 ;;1674
 ;;21,"62037-0830-01 ")
 ;;1675
 ;;21,"62037-0830-10 ")
 ;;1676
 ;;21,"62037-0831-01 ")
 ;;1677
 ;;21,"62037-0831-10 ")
 ;;1678
 ;;21,"62037-0832-01 ")
 ;;1679
 ;;21,"62037-0832-10 ")
 ;;1680
 ;;21,"62037-0833-01 ")
 ;;1681
 ;;21,"62037-0833-10 ")
 ;;1682
 ;;21,"62332-0112-31 ")
 ;;1683
 ;;21,"62332-0112-91 ")
 ;;1684
 ;;21,"62332-0113-31 ")
 ;;1685
 ;;21,"62332-0113-91 ")
 ;;1686
 ;;21,"62332-0114-31 ")
 ;;1687
 ;;21,"62332-0114-91 ")
 ;;1688
 ;;21,"62332-0115-31 ")
 ;;1689