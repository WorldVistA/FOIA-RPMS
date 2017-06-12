BGP53I15 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63304-0615-01 ")
 ;;5427
 ;;21,"63304-0656-01 ")
 ;;5428
 ;;21,"63304-0656-05 ")
 ;;5429
 ;;21,"63304-0657-01 ")
 ;;5430
 ;;21,"63304-0657-05 ")
 ;;5431
 ;;21,"63304-0658-01 ")
 ;;5432
 ;;21,"63304-0659-01 ")
 ;;5433
 ;;21,"63304-0692-01 ")
 ;;5434
 ;;21,"63304-0692-05 ")
 ;;5435
 ;;21,"63304-0693-01 ")
 ;;5436
 ;;21,"63304-0693-16 ")
 ;;5437
 ;;21,"63304-0694-01 ")
 ;;5438
 ;;21,"63304-0695-01 ")
 ;;5439
 ;;21,"63304-0696-05 ")
 ;;5440
 ;;21,"63304-0696-50 ")
 ;;5441
 ;;21,"63304-0697-01 ")
 ;;5442
 ;;21,"63304-0698-01 ")
 ;;5443
 ;;21,"63304-0699-50 ")
 ;;5444
 ;;21,"63304-0709-01 ")
 ;;5445
 ;;21,"63304-0710-01 ")
 ;;5446
 ;;21,"63304-0711-01 ")
 ;;5447
 ;;21,"63304-0711-50 ")
 ;;5448
 ;;21,"63304-0713-20 ")
 ;;5449
 ;;21,"63304-0725-01 ")
 ;;5450
 ;;21,"63304-0725-60 ")
 ;;5451
 ;;21,"63304-0726-01 ")
 ;;5452
 ;;21,"63304-0726-60 ")
 ;;5453
 ;;21,"63304-0751-20 ")
 ;;5454
 ;;21,"63304-0751-60 ")
 ;;5455
 ;;21,"63304-0752-20 ")
 ;;5456
 ;;21,"63304-0752-60 ")
 ;;5457
 ;;21,"63304-0753-20 ")
 ;;5458
 ;;21,"63304-0754-20 ")
 ;;5459
 ;;21,"63304-0760-20 ")
 ;;5460
 ;;21,"63304-0763-01 ")
 ;;5461
 ;;21,"63304-0768-01 ")
 ;;5462
 ;;21,"63304-0768-02 ")
 ;;5463
 ;;21,"63304-0768-07 ")
 ;;5464
 ;;21,"63304-0821-03 ")
 ;;5465
 ;;21,"63304-0821-04 ")
 ;;5466
 ;;21,"63304-0822-03 ")
 ;;5467
 ;;21,"63304-0822-04 ")
 ;;5468
 ;;21,"63304-0940-25 ")
 ;;5469
 ;;21,"63304-0941-10 ")
 ;;5470
 ;;21,"63304-0946-25 ")
 ;;5471
 ;;21,"63304-0947-25 ")
 ;;5472
 ;;21,"63304-0948-10 ")
 ;;5473
 ;;21,"63304-0954-01 ")
 ;;5474
 ;;21,"63304-0954-02 ")
 ;;5475
 ;;21,"63304-0956-01 ")
 ;;5476
 ;;21,"63304-0956-02 ")
 ;;5477
 ;;21,"63304-0957-03 ")
 ;;5478
 ;;21,"63304-0957-04 ")
 ;;5479
 ;;21,"63304-0958-01 ")
 ;;5480
 ;;21,"63304-0958-02 ")
 ;;5481
 ;;21,"63304-0959-01 ")
 ;;5482
 ;;21,"63304-0959-02 ")
 ;;5483
 ;;21,"63304-0960-01 ")
 ;;5484
 ;;21,"63304-0960-03 ")
 ;;5485
 ;;21,"63304-0960-04 ")
 ;;5486
 ;;21,"63304-0961-01 ")
 ;;5487
 ;;21,"63304-0961-03 ")
 ;;5488
 ;;21,"63304-0961-04 ")
 ;;5489
 ;;21,"63304-0963-04 ")
 ;;5490
 ;;21,"63304-0964-03 ")
 ;;5491
 ;;21,"63304-0964-04 ")
 ;;5492
 ;;21,"63304-0965-03 ")
 ;;5493
 ;;21,"63304-0965-04 ")
 ;;5494
 ;;21,"63304-0966-03 ")
 ;;5495
 ;;21,"63304-0966-04 ")
 ;;5496
 ;;21,"63304-0969-03 ")
 ;;5497
 ;;21,"63304-0970-01 ")
 ;;5498
 ;;21,"63304-0970-04 ")
 ;;5499
 ;;21,"63304-0973-04 ")
 ;;5500
 ;;21,"63304-0974-01 ")
 ;;5501
 ;;21,"63304-0974-04 ")
 ;;5502
 ;;21,"63304-0977-01 ")
 ;;5503
 ;;21,"63304-0977-03 ")
 ;;5504
 ;;21,"63304-0977-04 ")
 ;;5505
 ;;21,"63304-0979-01 ")
 ;;5506
 ;;21,"63304-0979-03 ")
 ;;5507
 ;;21,"63304-0979-04 ")
 ;;5508
 ;;21,"63323-0130-11 ")
 ;;5509
 ;;21,"63323-0130-13 ")
 ;;5510
 ;;21,"63323-0236-10 ")
 ;;5511
 ;;21,"63323-0237-10 ")
 ;;5512
 ;;21,"63323-0238-61 ")
 ;;5513
 ;;21,"63323-0282-02 ")
 ;;5514
 ;;21,"63323-0282-04 ")
 ;;5515
 ;;21,"63323-0282-06 ")
 ;;5516
 ;;21,"63323-0282-60 ")
 ;;5517
 ;;21,"63323-0323-20 ")
 ;;5518
 ;;21,"63323-0324-62 ")
 ;;5519
 ;;21,"63323-0344-10 ")
 ;;5520
 ;;21,"63323-0345-10 ")
 ;;5521
 ;;21,"63323-0346-10 ")
 ;;5522
 ;;21,"63323-0347-20 ")
 ;;5523
 ;;21,"63323-0348-61 ")
 ;;5524
 ;;21,"63323-0352-10 ")
 ;;5525
 ;;21,"63323-0352-45 ")
 ;;5526
 ;;21,"63323-0353-20 ")
 ;;5527
 ;;21,"63323-0353-45 ")
 ;;5528
 ;;21,"63323-0354-45 ")
 ;;5529
 ;;21,"63323-0354-61 ")
 ;;5530
 ;;21,"63323-0355-50 ")
 ;;5531
 ;;21,"63323-0355-60 ")
 ;;5532
 ;;21,"63323-0355-65 ")
 ;;5533
 ;;21,"63323-0387-10 ")
 ;;5534
 ;;21,"63323-0388-10 ")
 ;;5535
 ;;21,"63323-0389-10 ")
 ;;5536
 ;;21,"63323-0398-10 ")
 ;;5537
 ;;21,"63323-0398-12 ")
 ;;5538
 ;;21,"63323-0399-23 ")
 ;;5539
 ;;21,"63323-0446-61 ")
 ;;5540
 ;;21,"63323-0446-66 ")
 ;;5541
 ;;21,"63629-1236-00 ")
 ;;5542
 ;;21,"63629-1236-01 ")
 ;;5543
 ;;21,"63629-1236-02 ")
 ;;5544
 ;;21,"63629-1236-03 ")
 ;;5545
 ;;21,"63629-1236-04 ")
 ;;5546
 ;;21,"63629-1236-05 ")
 ;;5547
 ;;21,"63629-1236-06 ")
 ;;5548
 ;;21,"63629-1236-07 ")
 ;;5549
 ;;21,"63629-1236-08 ")
 ;;5550
 ;;21,"63629-1248-01 ")
 ;;5551
 ;;21,"63629-1248-02 ")
 ;;5552
 ;;21,"63629-1248-03 ")
 ;;5553
 ;;21,"63629-1257-01 ")
 ;;5554
 ;;21,"63629-1257-02 ")
 ;;5555
 ;;21,"63629-1257-03 ")
 ;;5556
 ;;21,"63629-1284-01 ")
 ;;5557
 ;;21,"63629-1305-01 ")
 ;;5558
 ;;21,"63629-1305-02 ")
 ;;5559
 ;;21,"63629-1305-03 ")
 ;;5560
 ;;21,"63629-1317-01 ")
 ;;5561
 ;;21,"63629-1317-02 ")
 ;;5562
 ;;21,"63629-1317-03 ")
 ;;5563
 ;;21,"63629-1317-04 ")
 ;;5564
 ;;21,"63629-1317-05 ")
 ;;5565
 ;;21,"63629-1319-01 ")
 ;;5566
 ;;21,"63629-1319-02 ")
 ;;5567
 ;;21,"63629-1319-03 ")
 ;;5568
 ;;21,"63629-1319-04 ")
 ;;5569
 ;;21,"63629-1319-05 ")
 ;;5570
 ;;21,"63629-1319-06 ")
 ;;5571
 ;;21,"63629-1319-07 ")
 ;;5572
 ;;21,"63629-1319-08 ")
 ;;5573
 ;;21,"63629-1320-01 ")
 ;;5574
 ;;21,"63629-1320-02 ")
 ;;5575
 ;;21,"63629-1320-03 ")
 ;;5576
 ;;21,"63629-1320-04 ")
 ;;5577
 ;;21,"63629-1321-01 ")
 ;;5578
 ;;21,"63629-1326-02 ")
 ;;5579
 ;;21,"63629-1350-01 ")
 ;;5580
 ;;21,"63629-1350-02 ")
 ;;5581
 ;;21,"63629-1350-03 ")
 ;;5582
 ;;21,"63629-1351-01 ")
 ;;5583
 ;;21,"63629-1351-02 ")
 ;;5584
 ;;21,"63629-1351-03 ")
 ;;5585
 ;;21,"63629-1357-01 ")
 ;;5586
 ;;21,"63629-1357-02 ")
 ;;5587
 ;;21,"63629-1357-03 ")
 ;;5588
 ;;21,"63629-1358-01 ")
 ;;5589
 ;;21,"63629-1358-02 ")
 ;;5590
 ;;21,"63629-1490-01 ")
 ;;5591
 ;;21,"63629-1490-02 ")
 ;;5592
 ;;21,"63629-1490-03 ")
 ;;5593
 ;;21,"63629-1490-04 ")
 ;;5594
 ;;21,"63629-1501-01 ")
 ;;5595
 ;;21,"63629-1501-02 ")
 ;;5596
 ;;21,"63629-1501-03 ")
 ;;5597
 ;;21,"63629-1501-04 ")
 ;;5598
 ;;21,"63629-1502-01 ")
 ;;5599
 ;;21,"63629-1502-02 ")
 ;;5600
 ;;21,"63629-1502-03 ")
 ;;5601
 ;;21,"63629-1502-04 ")
 ;;5602
 ;;21,"63629-1531-01 ")
 ;;5603
 ;;21,"63629-1531-02 ")
 ;;5604
 ;;21,"63629-1531-03 ")
 ;;5605
 ;;21,"63629-1531-04 ")
 ;;5606
 ;;21,"63629-1531-05 ")
 ;;5607
 ;;21,"63629-1614-01 ")
 ;;5608
 ;;21,"63629-1614-02 ")
 ;;5609
 ;;21,"63629-1614-03 ")
 ;;5610
 ;;21,"63629-1615-01 ")
 ;;5611
 ;;21,"63629-1615-02 ")
 ;;5612
 ;;21,"63629-1615-03 ")
 ;;5613
 ;;21,"63629-1615-04 ")
 ;;5614
 ;;21,"63629-1615-05 ")
 ;;5615
 ;;21,"63629-1724-01 ")
 ;;5616
 ;;21,"63629-1724-02 ")
 ;;5617
 ;;21,"63629-1724-03 ")
 ;;5618
 ;;21,"63629-1724-04 ")
 ;;5619
 ;;21,"63629-1724-05 ")
 ;;5620
 ;;21,"63629-1724-06 ")
 ;;5621
 ;;21,"63629-1759-01 ")
 ;;5622
 ;;21,"63629-1759-02 ")
 ;;5623
 ;;21,"63629-1759-03 ")
 ;;5624
 ;;21,"63629-1759-04 ")
 ;;5625
 ;;21,"63629-1759-05 ")
 ;;5626
 ;;21,"63629-1765-01 ")
 ;;5627
 ;;21,"63629-1835-01 ")
 ;;5628
 ;;21,"63629-1835-02 ")
 ;;5629
 ;;21,"63629-2609-01 ")
 ;;5630
 ;;21,"63629-2609-02 ")
 ;;5631
 ;;21,"63629-2609-03 ")
 ;;5632
 ;;21,"63629-2610-01 ")
 ;;5633
 ;;21,"63629-2610-02 ")
 ;;5634
 ;;21,"63629-2610-03 ")
 ;;5635
 ;;21,"63629-2685-01 ")
 ;;5636
 ;;21,"63629-2685-02 ")
 ;;5637
 ;;21,"63629-2738-01 ")
 ;;5638
 ;;21,"63629-2738-02 ")
 ;;5639
 ;;21,"63629-2755-01 ")
 ;;5640
 ;;21,"63629-2755-02 ")
 ;;5641
 ;;21,"63629-2817-01 ")
 ;;5642
 ;;21,"63629-2817-02 ")
 ;;5643
 ;;21,"63629-2817-03 ")
 ;;5644
 ;;21,"63629-2817-04 ")
 ;;5645
 ;;21,"63629-2871-01 ")
 ;;5646
 ;;21,"63629-2887-01 ")
 ;;5647
 ;;21,"63629-2887-02 ")
 ;;5648
 ;;21,"63629-2895-01 ")
 ;;5649
 ;;21,"63629-2924-01 ")
 ;;5650
 ;;21,"63629-2924-02 ")
 ;;5651
 ;;21,"63629-3057-01 ")
 ;;5652
 ;;21,"63629-3189-01 ")
 ;;5653
 ;;21,"63739-0059-10 ")
 ;;5654
 ;;21,"63739-0228-10 ")
 ;;5655
 ;;21,"63739-0400-10 ")
 ;;5656
 ;;21,"63739-0427-10 ")
 ;;5657
 ;;21,"63739-0559-10 ")
 ;;5658
 ;;21,"63739-0575-09 ")
 ;;5659
 ;;21,"63739-0575-10 ")
 ;;5660
 ;;21,"63874-0101-01 ")
 ;;5661
 ;;21,"63874-0101-03 ")
 ;;5662
 ;;21,"63874-0101-05 ")
 ;;5663
 ;;21,"63874-0101-09 ")
 ;;5664
 ;;21,"63874-0101-15 ")
 ;;5665
 ;;21,"63874-0101-18 ")
 ;;5666
 ;;21,"63874-0101-20 ")
 ;;5667
 ;;21,"63874-0101-21 ")
 ;;5668
 ;;21,"63874-0101-24 ")
 ;;5669
 ;;21,"63874-0101-28 ")
 ;;5670
 ;;21,"63874-0101-30 ")
 ;;5671
 ;;21,"63874-0101-40 ")
 ;;5672
 ;;21,"63874-0101-45 ")
 ;;5673
 ;;21,"63874-0101-50 ")
 ;;5674
 ;;21,"63874-0102-01 ")
 ;;5675
 ;;21,"63874-0102-03 ")
 ;;5676
 ;;21,"63874-0102-04 ")
 ;;5677
 ;;21,"63874-0102-05 ")
 ;;5678
 ;;21,"63874-0102-09 ")
 ;;5679
 ;;21,"63874-0102-10 ")
 ;;5680
 ;;21,"63874-0102-12 ")
 ;;5681
 ;;21,"63874-0102-14 ")
 ;;5682
 ;;21,"63874-0102-15 ")
 ;;5683
 ;;21,"63874-0102-18 ")
 ;;5684
 ;;21,"63874-0102-20 ")
 ;;5685
 ;;21,"63874-0102-21 ")
 ;;5686
 ;;21,"63874-0102-24 ")
 ;;5687
 ;;21,"63874-0102-28 ")
 ;;5688
 ;;21,"63874-0102-30 ")
 ;;5689
 ;;21,"63874-0102-40 ")
 ;;5690
 ;;21,"63874-0102-45 ")
 ;;5691
 ;;21,"63874-0102-50 ")
 ;;5692
 ;;21,"63874-0103-01 ")
 ;;5693
 ;;21,"63874-0103-21 ")
 ;;5694
 ;;21,"63874-0103-30 ")
 ;;5695
 ;;21,"63874-0107-01 ")
 ;;5696
 ;;21,"63874-0107-02 ")
 ;;5697
 ;;21,"63874-0107-04 ")
 ;;5698
 ;;21,"63874-0107-06 ")
 ;;5699
 ;;21,"63874-0107-08 ")
 ;;5700
 ;;21,"63874-0107-09 ")
 ;;5701
 ;;21,"63874-0107-10 ")
 ;;5702
 ;;21,"63874-0107-12 ")
 ;;5703
 ;;21,"63874-0107-14 ")
 ;;5704
 ;;21,"63874-0107-15 ")
 ;;5705
 ;;21,"63874-0107-16 ")
 ;;5706
 ;;21,"63874-0107-20 ")
 ;;5707
 ;;21,"63874-0107-28 ")
 ;;5708
 ;;21,"63874-0107-30 ")
 ;;5709
 ;;21,"63874-0107-40 ")
 ;;5710
 ;;21,"63874-0107-50 ")
 ;;5711
 ;;21,"63874-0107-60 ")
 ;;5712
 ;;21,"63874-0107-90 ")
 ;;5713
 ;;21,"63874-0108-01 ")
 ;;5714
 ;;21,"63874-0108-10 ")
 ;;5715
 ;;21,"63874-0108-12 ")
 ;;5716
 ;;21,"63874-0108-14 ")
 ;;5717
 ;;21,"63874-0108-15 ")
 ;;5718
 ;;21,"63874-0108-18 ")
 ;;5719
 ;;21,"63874-0108-20 ")
 ;;5720
 ;;21,"63874-0108-24 ")
 ;;5721
 ;;21,"63874-0108-28 ")
 ;;5722
 ;;21,"63874-0108-30 ")
 ;;5723
 ;;21,"63874-0108-40 ")
 ;;5724
 ;;21,"63874-0108-60 ")
 ;;5725
 ;;21,"63874-0109-03 ")
 ;;5726
 ;;21,"63874-0109-10 ")
 ;;5727
 ;;21,"63874-0109-12 ")
 ;;5728
 ;;21,"63874-0109-14 ")
 ;;5729
 ;;21,"63874-0109-15 ")
 ;;5730
 ;;21,"63874-0109-16 ")
 ;;5731
 ;;21,"63874-0109-18 ")
 ;;5732
 ;;21,"63874-0109-20 ")
 ;;5733
 ;;21,"63874-0109-21 ")
 ;;5734
 ;;21,"63874-0109-24 ")
 ;;5735
 ;;21,"63874-0109-28 ")
 ;;5736
 ;;21,"63874-0109-30 ")
 ;;5737
 ;;21,"63874-0109-40 ")
 ;;5738
 ;;21,"63874-0109-50 ")
 ;;5739
 ;;21,"63874-0109-60 ")
 ;;5740
 ;;21,"63874-0110-01 ")
 ;;5741
 ;;21,"63874-0110-20 ")
 ;;5742
 ;;21,"63874-0110-28 ")
 ;;5743
 ;;21,"63874-0110-30 ")
 ;;5744
 ;;21,"63874-0110-40 ")
 ;;5745
 ;;21,"63874-0110-50 ")
 ;;5746
 ;;21,"63874-0111-01 ")
 ;;5747
 ;;21,"63874-0111-03 ")
 ;;5748
 ;;21,"63874-0111-04 ")
 ;;5749
 ;;21,"63874-0111-12 ")
 ;;5750
 ;;21,"63874-0111-14 ")
 ;;5751
 ;;21,"63874-0111-15 ")
 ;;5752
 ;;21,"63874-0111-16 ")
 ;;5753
 ;;21,"63874-0111-20 ")
 ;;5754
 ;;21,"63874-0111-21 ")
 ;;5755
 ;;21,"63874-0111-24 ")
 ;;5756
 ;;21,"63874-0111-28 ")
 ;;5757
 ;;21,"63874-0111-30 ")
 ;;5758
 ;;21,"63874-0111-40 ")
 ;;5759
 ;;21,"63874-0111-50 ")
 ;;5760
 ;;21,"63874-0111-56 ")
 ;;5761
 ;;21,"63874-0111-60 ")
 ;;5762
 ;;21,"63874-0111-72 ")
 ;;5763
 ;;21,"63874-0111-74 ")
 ;;5764
 ;;21,"63874-0111-77 ")
 ;;5765
 ;;21,"63874-0111-80 ")
 ;;5766
 ;;21,"63874-0112-01 ")
 ;;5767
 ;;21,"63874-0112-03 ")
 ;;5768
 ;;21,"63874-0112-04 ")
 ;;5769
 ;;21,"63874-0112-05 ")
 ;;5770
 ;;21,"63874-0112-06 ")
 ;;5771
 ;;21,"63874-0112-08 ")
 ;;5772
 ;;21,"63874-0112-10 ")
 ;;5773
 ;;21,"63874-0112-12 ")
 ;;5774
 ;;21,"63874-0112-14 ")
 ;;5775
 ;;21,"63874-0112-15 ")
 ;;5776
 ;;21,"63874-0112-16 ")
 ;;5777
 ;;21,"63874-0112-18 ")
 ;;5778
 ;;21,"63874-0112-20 ")
 ;;5779
 ;;21,"63874-0112-21 ")
 ;;5780
 ;;21,"63874-0112-24 ")
 ;;5781
 ;;21,"63874-0112-25 ")
 ;;5782
 ;;21,"63874-0112-28 ")
 ;;5783
 ;;21,"63874-0112-30 ")
 ;;5784
 ;;21,"63874-0112-40 ")
 ;;5785
 ;;21,"63874-0112-50 ")
 ;;5786
 ;;21,"63874-0112-56 ")
 ;;5787
 ;;21,"63874-0112-60 ")
 ;;5788
 ;;21,"63874-0112-72 ")
 ;;5789
 ;;21,"63874-0112-74 ")
 ;;5790
 ;;21,"63874-0112-77 ")
 ;;5791
 ;;21,"63874-0113-01 ")
 ;;5792
 ;;21,"63874-0113-03 ")
 ;;5793
 ;;21,"63874-0113-08 ")
 ;;5794
 ;;21,"63874-0113-09 ")
 ;;5795
 ;;21,"63874-0113-10 ")
 ;;5796
 ;;21,"63874-0113-12 ")
 ;;5797
 ;;21,"63874-0113-14 ")
 ;;5798
 ;;21,"63874-0113-15 ")
 ;;5799
 ;;21,"63874-0113-20 ")
 ;;5800
 ;;21,"63874-0113-21 ")
 ;;5801
 ;;21,"63874-0113-24 ")
 ;;5802
 ;;21,"63874-0113-28 ")
 ;;5803
 ;;21,"63874-0113-30 ")
 ;;5804
 ;;21,"63874-0113-40 ")
 ;;5805
 ;;21,"63874-0113-50 ")
 ;;5806
 ;;21,"63874-0114-01 ")
 ;;5807
 ;;21,"63874-0114-03 ")
 ;;5808
 ;;21,"63874-0114-07 ")
 ;;5809
 ;;21,"63874-0114-10 ")
 ;;5810
 ;;21,"63874-0114-20 ")
 ;;5811
 ;;21,"63874-0114-21 ")
 ;;5812