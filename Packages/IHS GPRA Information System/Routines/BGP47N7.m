BGP47N7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55045-3811-02 ")
 ;;2339
 ;;21,"55045-3811-03 ")
 ;;2340
 ;;21,"55045-3811-06 ")
 ;;2341
 ;;21,"55045-3812-01 ")
 ;;2342
 ;;21,"55045-3812-03 ")
 ;;2343
 ;;21,"55048-0012-28 ")
 ;;2344
 ;;21,"55048-0012-30 ")
 ;;2345
 ;;21,"55048-0012-60 ")
 ;;2346
 ;;21,"55048-0012-90 ")
 ;;2347
 ;;21,"55048-0014-30 ")
 ;;2348
 ;;21,"55048-0014-60 ")
 ;;2349
 ;;21,"55048-0014-90 ")
 ;;2350
 ;;21,"55048-0015-30 ")
 ;;2351
 ;;21,"55048-0015-60 ")
 ;;2352
 ;;21,"55048-0016-30 ")
 ;;2353
 ;;21,"55048-0016-60 ")
 ;;2354
 ;;21,"55048-0017-30 ")
 ;;2355
 ;;21,"55048-0051-30 ")
 ;;2356
 ;;21,"55048-0051-60 ")
 ;;2357
 ;;21,"55048-0118-30 ")
 ;;2358
 ;;21,"55048-0119-30 ")
 ;;2359
 ;;21,"55048-0120-30 ")
 ;;2360
 ;;21,"55048-0372-30 ")
 ;;2361
 ;;21,"55048-0372-60 ")
 ;;2362
 ;;21,"55048-0396-28 ")
 ;;2363
 ;;21,"55048-0396-30 ")
 ;;2364
 ;;21,"55048-0824-30 ")
 ;;2365
 ;;21,"55048-0824-60 ")
 ;;2366
 ;;21,"55048-0824-71 ")
 ;;2367
 ;;21,"55048-0824-90 ")
 ;;2368
 ;;21,"55048-0825-06 ")
 ;;2369
 ;;21,"55048-0825-30 ")
 ;;2370
 ;;21,"55048-0825-71 ")
 ;;2371
 ;;21,"55048-0825-90 ")
 ;;2372
 ;;21,"55048-0827-30 ")
 ;;2373
 ;;21,"55048-0854-30 ")
 ;;2374
 ;;21,"55048-0881-30 ")
 ;;2375
 ;;21,"55048-0891-30 ")
 ;;2376
 ;;21,"55111-0478-01 ")
 ;;2377
 ;;21,"55111-0478-05 ")
 ;;2378
 ;;21,"55111-0479-01 ")
 ;;2379
 ;;21,"55111-0479-05 ")
 ;;2380
 ;;21,"55111-0640-01 ")
 ;;2381
 ;;21,"55111-0641-01 ")
 ;;2382
 ;;21,"55289-0014-30 ")
 ;;2383
 ;;21,"55289-0016-30 ")
 ;;2384
 ;;21,"55289-0016-60 ")
 ;;2385
 ;;21,"55289-0018-01 ")
 ;;2386
 ;;21,"55289-0018-30 ")
 ;;2387
 ;;21,"55289-0026-20 ")
 ;;2388
 ;;21,"55289-0035-01 ")
 ;;2389
 ;;21,"55289-0035-14 ")
 ;;2390
 ;;21,"55289-0035-20 ")
 ;;2391
 ;;21,"55289-0035-28 ")
 ;;2392
 ;;21,"55289-0035-30 ")
 ;;2393
 ;;21,"55289-0035-60 ")
 ;;2394
 ;;21,"55289-0040-15 ")
 ;;2395
 ;;21,"55289-0040-20 ")
 ;;2396
 ;;21,"55289-0040-30 ")
 ;;2397
 ;;21,"55289-0124-12 ")
 ;;2398
 ;;21,"55289-0124-30 ")
 ;;2399
 ;;21,"55289-0127-15 ")
 ;;2400
 ;;21,"55289-0127-25 ")
 ;;2401
 ;;21,"55289-0144-14 ")
 ;;2402
 ;;21,"55289-0144-30 ")
 ;;2403
 ;;21,"55289-0144-90 ")
 ;;2404
 ;;21,"55289-0149-30 ")
 ;;2405
 ;;21,"55289-0149-60 ")
 ;;2406
 ;;21,"55289-0165-97 ")
 ;;2407
 ;;21,"55289-0185-17 ")
 ;;2408
 ;;21,"55289-0205-30 ")
 ;;2409
 ;;21,"55289-0258-30 ")
 ;;2410
 ;;21,"55289-0264-12 ")
 ;;2411
 ;;21,"55289-0337-01 ")
 ;;2412
 ;;21,"55289-0337-97 ")
 ;;2413
 ;;21,"55289-0370-30 ")
 ;;2414
 ;;21,"55289-0377-97 ")
 ;;2415
 ;;21,"55289-0399-02 ")
 ;;2416
 ;;21,"55289-0399-03 ")
 ;;2417
 ;;21,"55289-0399-10 ")
 ;;2418
 ;;21,"55289-0399-14 ")
 ;;2419
 ;;21,"55289-0399-30 ")
 ;;2420
 ;;21,"55289-0399-60 ")
 ;;2421
 ;;21,"55289-0399-79 ")
 ;;2422
 ;;21,"55289-0399-90 ")
 ;;2423
 ;;21,"55289-0419-01 ")
 ;;2424
 ;;21,"55289-0419-06 ")
 ;;2425
 ;;21,"55289-0419-10 ")
 ;;2426
 ;;21,"55289-0419-14 ")
 ;;2427
 ;;21,"55289-0419-15 ")
 ;;2428
 ;;21,"55289-0419-21 ")
 ;;2429
 ;;21,"55289-0419-30 ")
 ;;2430
 ;;21,"55289-0419-60 ")
 ;;2431
 ;;21,"55289-0439-12 ")
 ;;2432
 ;;21,"55289-0508-14 ")
 ;;2433
 ;;21,"55289-0535-01 ")
 ;;2434
 ;;21,"55289-0535-30 ")
 ;;2435
 ;;21,"55289-0572-30 ")
 ;;2436
 ;;21,"55289-0586-04 ")
 ;;2437
 ;;21,"55289-0586-08 ")
 ;;2438
 ;;21,"55289-0674-04 ")
 ;;2439
 ;;21,"55289-0690-12 ")
 ;;2440
 ;;21,"55289-0729-06 ")
 ;;2441
 ;;21,"55289-0729-12 ")
 ;;2442
 ;;21,"55289-0729-30 ")
 ;;2443
 ;;21,"55289-0730-01 ")
 ;;2444
 ;;21,"55289-0730-12 ")
 ;;2445
 ;;21,"55289-0730-25 ")
 ;;2446
 ;;21,"55289-0730-30 ")
 ;;2447
 ;;21,"55289-0730-60 ")
 ;;2448
 ;;21,"55289-0730-90 ")
 ;;2449
 ;;21,"55289-0778-18 ")
 ;;2450
 ;;21,"55289-0792-06 ")
 ;;2451
 ;;21,"55289-0792-10 ")
 ;;2452
 ;;21,"55289-0792-12 ")
 ;;2453
 ;;21,"55289-0792-20 ")
 ;;2454
 ;;21,"55289-0792-30 ")
 ;;2455
 ;;21,"55289-0839-30 ")
 ;;2456
 ;;21,"55289-0879-10 ")
 ;;2457
 ;;21,"55289-0879-15 ")
 ;;2458
 ;;21,"55289-0879-20 ")
 ;;2459
 ;;21,"55289-0879-30 ")
 ;;2460
 ;;21,"55289-0879-60 ")
 ;;2461
 ;;21,"55289-0974-20 ")
 ;;2462
 ;;21,"55289-0983-30 ")
 ;;2463
 ;;21,"55700-0047-08 ")
 ;;2464
 ;;21,"55887-0066-30 ")
 ;;2465
 ;;21,"55887-0095-30 ")
 ;;2466
 ;;21,"55887-0095-60 ")
 ;;2467
 ;;21,"55887-0095-90 ")
 ;;2468
 ;;21,"55887-0101-30 ")
 ;;2469
 ;;21,"55887-0101-60 ")
 ;;2470
 ;;21,"55887-0101-90 ")
 ;;2471
 ;;21,"55887-0123-05 ")
 ;;2472
 ;;21,"55887-0123-07 ")
 ;;2473
 ;;21,"55887-0123-10 ")
 ;;2474
 ;;21,"55887-0123-15 ")
 ;;2475
 ;;21,"55887-0123-30 ")
 ;;2476
 ;;21,"55887-0123-60 ")
 ;;2477
 ;;21,"55887-0123-90 ")
 ;;2478
 ;;21,"55887-0124-05 ")
 ;;2479
 ;;21,"55887-0124-30 ")
 ;;2480
 ;;21,"55887-0124-60 ")
 ;;2481
 ;;21,"55887-0248-30 ")
 ;;2482
 ;;21,"55887-0248-60 ")
 ;;2483
 ;;21,"55887-0248-90 ")
 ;;2484
 ;;21,"55887-0288-30 ")
 ;;2485
 ;;21,"55887-0288-60 ")
 ;;2486
 ;;21,"55887-0288-90 ")
 ;;2487
 ;;21,"55887-0289-30 ")
 ;;2488
 ;;21,"55887-0289-60 ")
 ;;2489
 ;;21,"55887-0289-82 ")
 ;;2490
 ;;21,"55887-0289-90 ")
 ;;2491
 ;;21,"55887-0355-20 ")
 ;;2492
 ;;21,"55887-0355-30 ")
 ;;2493
 ;;21,"55887-0355-40 ")
 ;;2494
 ;;21,"55887-0356-30 ")
 ;;2495
 ;;21,"55887-0356-60 ")
 ;;2496
 ;;21,"55887-0356-90 ")
 ;;2497
 ;;21,"55887-0398-30 ")
 ;;2498
 ;;21,"55887-0398-60 ")
 ;;2499
 ;;21,"55887-0398-82 ")
 ;;2500
 ;;21,"55887-0398-90 ")
 ;;2501
 ;;21,"55887-0514-20 ")
 ;;2502
 ;;21,"55887-0514-30 ")
 ;;2503
 ;;21,"55887-0514-60 ")
 ;;2504
 ;;21,"55887-0514-90 ")
 ;;2505
 ;;21,"55887-0552-20 ")
 ;;2506
 ;;21,"55887-0552-30 ")
 ;;2507
 ;;21,"55887-0552-60 ")
 ;;2508
 ;;21,"55887-0552-82 ")
 ;;2509
 ;;21,"55887-0552-90 ")
 ;;2510
 ;;21,"55887-0566-20 ")
 ;;2511
 ;;21,"55887-0566-30 ")
 ;;2512
 ;;21,"55887-0566-60 ")
 ;;2513
 ;;21,"55887-0570-20 ")
 ;;2514
 ;;21,"55887-0570-30 ")
 ;;2515
 ;;21,"55887-0570-60 ")
 ;;2516
 ;;21,"55887-0570-90 ")
 ;;2517
 ;;21,"55887-0572-20 ")
 ;;2518
 ;;21,"55887-0572-30 ")
 ;;2519
 ;;21,"55887-0572-50 ")
 ;;2520
 ;;21,"55887-0572-60 ")
 ;;2521
 ;;21,"55887-0572-82 ")
 ;;2522
 ;;21,"55887-0572-90 ")
 ;;2523
 ;;21,"55887-0615-30 ")
 ;;2524
 ;;21,"55887-0755-30 ")
 ;;2525
 ;;21,"55887-0755-60 ")
 ;;2526
 ;;21,"55887-0755-90 ")
 ;;2527
 ;;21,"55887-0806-10 ")
 ;;2528
 ;;21,"55887-0806-20 ")
 ;;2529
 ;;21,"55887-0806-30 ")
 ;;2530
 ;;21,"55887-0806-60 ")
 ;;2531
 ;;21,"55887-0806-82 ")
 ;;2532
 ;;21,"55887-0806-90 ")
 ;;2533
 ;;21,"55887-0918-30 ")
 ;;2534
 ;;21,"55887-0918-60 ")
 ;;2535
 ;;21,"55887-0918-90 ")
 ;;2536
 ;;21,"55887-0988-05 ")
 ;;2537
 ;;21,"55887-0988-06 ")
 ;;2538
 ;;21,"55887-0988-20 ")
 ;;2539
 ;;21,"55887-0988-30 ")
 ;;2540
 ;;21,"55887-0988-40 ")
 ;;2541
 ;;21,"55887-0988-60 ")
 ;;2542
 ;;21,"55887-0988-82 ")
 ;;2543
 ;;21,"55887-0988-90 ")
 ;;2544
 ;;21,"57664-0515-13 ")
 ;;2545
 ;;21,"57664-0515-18 ")
 ;;2546
 ;;21,"57664-0515-88 ")
 ;;2547
 ;;21,"57664-0516-13 ")
 ;;2548
 ;;21,"57664-0516-18 ")
 ;;2549
 ;;21,"57664-0516-88 ")
 ;;2550
 ;;21,"57866-1042-01 ")
 ;;2551
 ;;21,"57866-3026-01 ")
 ;;2552
 ;;21,"57866-3051-01 ")
 ;;2553
 ;;21,"57866-3052-01 ")
 ;;2554
 ;;21,"57866-3071-01 ")
 ;;2555
 ;;21,"57866-3072-01 ")
 ;;2556
 ;;21,"57866-3072-02 ")
 ;;2557
 ;;21,"57866-3072-03 ")
 ;;2558
 ;;21,"57866-3072-10 ")
 ;;2559
 ;;21,"57866-3073-01 ")
 ;;2560
 ;;21,"57866-3073-02 ")
 ;;2561
 ;;21,"57866-3073-03 ")
 ;;2562
 ;;21,"57866-3155-01 ")
 ;;2563
 ;;21,"57866-3402-01 ")
 ;;2564
 ;;21,"57866-3402-02 ")
 ;;2565
 ;;21,"57866-3403-01 ")
 ;;2566
 ;;21,"57866-3403-03 ")
 ;;2567
 ;;21,"57866-3906-01 ")
 ;;2568
 ;;21,"57866-3907-01 ")
 ;;2569
 ;;21,"57866-3920-00 ")
 ;;2570
 ;;21,"57866-3920-02 ")
 ;;2571
 ;;21,"57866-3920-03 ")
 ;;2572
 ;;21,"57866-3930-01 ")
 ;;2573
 ;;21,"57866-3931-01 ")
 ;;2574
 ;;21,"57866-3938-01 ")
 ;;2575
 ;;21,"57866-3938-02 ")
 ;;2576
 ;;21,"57866-3938-03 ")
 ;;2577
 ;;21,"57866-3939-01 ")
 ;;2578
 ;;21,"57866-3939-02 ")
 ;;2579
 ;;21,"57866-3939-03 ")
 ;;2580
 ;;21,"57866-4170-01 ")
 ;;2581
 ;;21,"57866-4170-02 ")
 ;;2582
 ;;21,"57866-4170-03 ")
 ;;2583
 ;;21,"57866-4224-01 ")
 ;;2584
 ;;21,"57866-4224-02 ")
 ;;2585
 ;;21,"57866-4224-03 ")
 ;;2586
 ;;21,"57866-4355-01 ")
 ;;2587
 ;;21,"57866-4564-01 ")
 ;;2588
 ;;21,"57866-4565-01 ")
 ;;2589
 ;;21,"57866-4565-02 ")
 ;;2590
 ;;21,"57866-4565-03 ")
 ;;2591
 ;;21,"57866-4565-04 ")
 ;;2592
 ;;21,"57866-4566-01 ")
 ;;2593
 ;;21,"57866-4642-03 ")
 ;;2594
 ;;21,"57866-4643-01 ")
 ;;2595
 ;;21,"57866-4644-01 ")
 ;;2596
 ;;21,"57866-4856-02 ")
 ;;2597
 ;;21,"57866-4856-03 ")
 ;;2598
 ;;21,"57866-4856-04 ")
 ;;2599
 ;;21,"57866-4856-05 ")
 ;;2600
 ;;21,"57866-4856-06 ")
 ;;2601
 ;;21,"57866-4857-01 ")
 ;;2602
 ;;21,"57866-4857-02 ")
 ;;2603
 ;;21,"57866-4857-03 ")
 ;;2604
 ;;21,"57866-4857-04 ")
 ;;2605
 ;;21,"58016-0002-00 ")
 ;;2606
 ;;21,"58016-0002-30 ")
 ;;2607
 ;;21,"58016-0002-60 ")
 ;;2608
 ;;21,"58016-0002-90 ")
 ;;2609
 ;;21,"58016-0040-00 ")
 ;;2610
 ;;21,"58016-0040-30 ")
 ;;2611
 ;;21,"58016-0040-60 ")
 ;;2612
 ;;21,"58016-0040-90 ")
 ;;2613
 ;;21,"58016-0073-00 ")
 ;;2614
 ;;21,"58016-0073-30 ")
 ;;2615
 ;;21,"58016-0073-60 ")
 ;;2616
 ;;21,"58016-0073-90 ")
 ;;2617
 ;;21,"58016-0089-00 ")
 ;;2618
 ;;21,"58016-0089-30 ")
 ;;2619
 ;;21,"58016-0089-60 ")
 ;;2620
 ;;21,"58016-0089-90 ")
 ;;2621
 ;;21,"58016-0091-00 ")
 ;;2622
 ;;21,"58016-0091-30 ")
 ;;2623
 ;;21,"58016-0091-60 ")
 ;;2624
 ;;21,"58016-0091-90 ")
 ;;2625
 ;;21,"58016-0092-00 ")
 ;;2626
 ;;21,"58016-0092-30 ")
 ;;2627
 ;;21,"58016-0092-60 ")
 ;;2628
 ;;21,"58016-0092-90 ")
 ;;2629
 ;;21,"58016-0093-00 ")
 ;;2630
 ;;21,"58016-0093-30 ")
 ;;2631
 ;;21,"58016-0093-60 ")
 ;;2632
 ;;21,"58016-0093-90 ")
 ;;2633
 ;;21,"58016-0231-00 ")
 ;;2634
 ;;21,"58016-0233-00 ")
 ;;2635
 ;;21,"58016-0233-02 ")
 ;;2636
 ;;21,"58016-0233-10 ")
 ;;2637
 ;;21,"58016-0233-12 ")
 ;;2638
 ;;21,"58016-0233-14 ")
 ;;2639
 ;;21,"58016-0233-15 ")
 ;;2640
 ;;21,"58016-0233-20 ")
 ;;2641
 ;;21,"58016-0233-21 ")
 ;;2642
 ;;21,"58016-0233-24 ")
 ;;2643
 ;;21,"58016-0233-25 ")
 ;;2644
 ;;21,"58016-0233-28 ")
 ;;2645
 ;;21,"58016-0233-30 ")
 ;;2646
 ;;21,"58016-0233-40 ")
 ;;2647
 ;;21,"58016-0233-50 ")
 ;;2648
 ;;21,"58016-0233-60 ")
 ;;2649
 ;;21,"58016-0233-90 ")
 ;;2650
 ;;21,"58016-0292-00 ")
 ;;2651
 ;;21,"58016-0292-30 ")
 ;;2652
 ;;21,"58016-0292-60 ")
 ;;2653
 ;;21,"58016-0292-90 ")
 ;;2654
 ;;21,"58016-0322-00 ")
 ;;2655
 ;;21,"58016-0322-02 ")
 ;;2656
 ;;21,"58016-0322-30 ")
 ;;2657
 ;;21,"58016-0322-60 ")
 ;;2658
 ;;21,"58016-0322-90 ")
 ;;2659
 ;;21,"58016-0341-00 ")
 ;;2660
 ;;21,"58016-0341-10 ")
 ;;2661
 ;;21,"58016-0341-20 ")
 ;;2662
 ;;21,"58016-0341-30 ")
 ;;2663
 ;;21,"58016-0341-40 ")
 ;;2664
 ;;21,"58016-0341-60 ")
 ;;2665
 ;;21,"58016-0341-90 ")
 ;;2666
 ;;21,"58016-0342-00 ")
 ;;2667
 ;;21,"58016-0342-10 ")
 ;;2668
 ;;21,"58016-0342-20 ")
 ;;2669
 ;;21,"58016-0342-30 ")
 ;;2670
 ;;21,"58016-0342-40 ")
 ;;2671
 ;;21,"58016-0342-60 ")
 ;;2672
 ;;21,"58016-0342-90 ")
 ;;2673
 ;;21,"58016-0493-00 ")
 ;;2674
 ;;21,"58016-0493-02 ")
 ;;2675
 ;;21,"58016-0493-30 ")
 ;;2676
 ;;21,"58016-0493-60 ")
 ;;2677
 ;;21,"58016-0493-90 ")
 ;;2678
 ;;21,"58016-0596-00 ")
 ;;2679
 ;;21,"58016-0596-30 ")
 ;;2680
 ;;21,"58016-0596-60 ")
 ;;2681
 ;;21,"58016-0596-90 ")
 ;;2682
 ;;21,"58016-0663-00 ")
 ;;2683
 ;;21,"58016-0663-30 ")
 ;;2684
 ;;21,"58016-0663-60 ")
 ;;2685
 ;;21,"58016-0663-90 ")
 ;;2686
 ;;21,"58016-0700-24 ")
 ;;2687
 ;;21,"58016-0709-00 ")
 ;;2688
 ;;21,"58016-0709-02 ")
 ;;2689
 ;;21,"58016-0709-03 ")
 ;;2690
 ;;21,"58016-0709-20 ")
 ;;2691
 ;;21,"58016-0709-30 ")
 ;;2692
 ;;21,"58016-0709-40 ")
 ;;2693
 ;;21,"58016-0709-42 ")
 ;;2694
 ;;21,"58016-0709-50 ")
 ;;2695
 ;;21,"58016-0709-73 ")
 ;;2696
 ;;21,"58016-0709-89 ")
 ;;2697
 ;;21,"58016-0710-00 ")
 ;;2698
 ;;21,"58016-0710-30 ")
 ;;2699
 ;;21,"58016-0710-60 ")
 ;;2700
 ;;21,"58016-0710-90 ")
 ;;2701
 ;;21,"58016-0710-99 ")
 ;;2702
 ;;21,"58016-0797-00 ")
 ;;2703
 ;;21,"58016-0797-30 ")
 ;;2704
 ;;21,"58016-0797-60 ")
 ;;2705
 ;;21,"58016-0797-90 ")
 ;;2706
 ;;21,"58016-0808-00 ")
 ;;2707
 ;;21,"58016-0808-30 ")
 ;;2708
 ;;21,"58016-0808-60 ")
 ;;2709
 ;;21,"58016-0808-90 ")
 ;;2710
 ;;21,"58016-0813-00 ")
 ;;2711
 ;;21,"58016-0813-02 ")
 ;;2712
 ;;21,"58016-0813-03 ")
 ;;2713
 ;;21,"58016-0813-10 ")
 ;;2714
 ;;21,"58016-0813-12 ")
 ;;2715
 ;;21,"58016-0813-15 ")
 ;;2716
 ;;21,"58016-0813-20 ")
 ;;2717
 ;;21,"58016-0813-24 ")
 ;;2718
 ;;21,"58016-0813-30 ")
 ;;2719
 ;;21,"58016-0813-50 ")
 ;;2720
 ;;21,"58016-0813-60 ")
 ;;2721
 ;;21,"58016-0813-73 ")
 ;;2722
 ;;21,"58016-0813-89 ")
 ;;2723
 ;;21,"58016-0813-90 ")
 ;;2724