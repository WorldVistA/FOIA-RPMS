BGP71U8 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54569-6173-00 ")
 ;;2356
 ;;21,"54569-6173-01 ")
 ;;2357
 ;;21,"54569-6180-00 ")
 ;;2358
 ;;21,"54569-6180-01 ")
 ;;2359
 ;;21,"54569-6182-00 ")
 ;;2360
 ;;21,"54569-6182-01 ")
 ;;2361
 ;;21,"54569-6223-00 ")
 ;;2362
 ;;21,"54569-6223-01 ")
 ;;2363
 ;;21,"54569-6228-00 ")
 ;;2364
 ;;21,"54569-6228-01 ")
 ;;2365
 ;;21,"54569-6228-02 ")
 ;;2366
 ;;21,"54569-6273-00 ")
 ;;2367
 ;;21,"54569-6274-00 ")
 ;;2368
 ;;21,"54569-6294-00 ")
 ;;2369
 ;;21,"54569-6294-01 ")
 ;;2370
 ;;21,"54569-6297-00 ")
 ;;2371
 ;;21,"54569-6297-01 ")
 ;;2372
 ;;21,"54569-6309-00 ")
 ;;2373
 ;;21,"54569-6416-00 ")
 ;;2374
 ;;21,"54569-6480-00 ")
 ;;2375
 ;;21,"54569-6480-01 ")
 ;;2376
 ;;21,"54569-6483-00 ")
 ;;2377
 ;;21,"54569-6483-01 ")
 ;;2378
 ;;21,"54569-6485-00 ")
 ;;2379
 ;;21,"54569-6486-00 ")
 ;;2380
 ;;21,"54569-6487-00 ")
 ;;2381
 ;;21,"54569-6488-00 ")
 ;;2382
 ;;21,"54569-6552-00 ")
 ;;2383
 ;;21,"54569-6553-00 ")
 ;;2384
 ;;21,"54569-6564-00 ")
 ;;2385
 ;;21,"54569-6582-00 ")
 ;;2386
 ;;21,"54569-6582-01 ")
 ;;2387
 ;;21,"54569-6583-00 ")
 ;;2388
 ;;21,"54569-6583-01 ")
 ;;2389
 ;;21,"54569-6588-00 ")
 ;;2390
 ;;21,"54569-6588-01 ")
 ;;2391
 ;;21,"54868-0009-00 ")
 ;;2392
 ;;21,"54868-0009-01 ")
 ;;2393
 ;;21,"54868-1502-00 ")
 ;;2394
 ;;21,"54868-1802-00 ")
 ;;2395
 ;;21,"54868-1960-00 ")
 ;;2396
 ;;21,"54868-1970-01 ")
 ;;2397
 ;;21,"54868-1970-02 ")
 ;;2398
 ;;21,"54868-1970-03 ")
 ;;2399
 ;;21,"54868-2335-00 ")
 ;;2400
 ;;21,"54868-2335-01 ")
 ;;2401
 ;;21,"54868-2350-01 ")
 ;;2402
 ;;21,"54868-2350-02 ")
 ;;2403
 ;;21,"54868-2350-03 ")
 ;;2404
 ;;21,"54868-2350-04 ")
 ;;2405
 ;;21,"54868-2351-00 ")
 ;;2406
 ;;21,"54868-2351-02 ")
 ;;2407
 ;;21,"54868-2351-03 ")
 ;;2408
 ;;21,"54868-2352-00 ")
 ;;2409
 ;;21,"54868-2352-01 ")
 ;;2410
 ;;21,"54868-2644-01 ")
 ;;2411
 ;;21,"54868-2644-02 ")
 ;;2412
 ;;21,"54868-2645-01 ")
 ;;2413
 ;;21,"54868-2645-02 ")
 ;;2414
 ;;21,"54868-2645-03 ")
 ;;2415
 ;;21,"54868-2665-00 ")
 ;;2416
 ;;21,"54868-2665-01 ")
 ;;2417
 ;;21,"54868-2666-01 ")
 ;;2418
 ;;21,"54868-2666-02 ")
 ;;2419
 ;;21,"54868-2666-03 ")
 ;;2420
 ;;21,"54868-2666-04 ")
 ;;2421
 ;;21,"54868-3307-00 ")
 ;;2422
 ;;21,"54868-3307-01 ")
 ;;2423
 ;;21,"54868-3443-00 ")
 ;;2424
 ;;21,"54868-3443-01 ")
 ;;2425
 ;;21,"54868-3445-00 ")
 ;;2426
 ;;21,"54868-3445-01 ")
 ;;2427
 ;;21,"54868-3723-01 ")
 ;;2428
 ;;21,"54868-3723-02 ")
 ;;2429
 ;;21,"54868-3723-03 ")
 ;;2430
 ;;21,"54868-3723-04 ")
 ;;2431
 ;;21,"54868-3723-05 ")
 ;;2432
 ;;21,"54868-3724-01 ")
 ;;2433
 ;;21,"54868-3724-02 ")
 ;;2434
 ;;21,"54868-3724-03 ")
 ;;2435
 ;;21,"54868-3724-04 ")
 ;;2436
 ;;21,"54868-3725-01 ")
 ;;2437
 ;;21,"54868-3725-02 ")
 ;;2438
 ;;21,"54868-3725-03 ")
 ;;2439
 ;;21,"54868-3725-04 ")
 ;;2440
 ;;21,"54868-3726-00 ")
 ;;2441
 ;;21,"54868-3726-01 ")
 ;;2442
 ;;21,"54868-3726-02 ")
 ;;2443
 ;;21,"54868-3846-00 ")
 ;;2444
 ;;21,"54868-3846-02 ")
 ;;2445
 ;;21,"54868-3846-03 ")
 ;;2446
 ;;21,"54868-3866-00 ")
 ;;2447
 ;;21,"54868-3866-01 ")
 ;;2448
 ;;21,"54868-3906-00 ")
 ;;2449
 ;;21,"54868-3906-01 ")
 ;;2450
 ;;21,"54868-3906-02 ")
 ;;2451
 ;;21,"54868-4062-00 ")
 ;;2452
 ;;21,"54868-4062-01 ")
 ;;2453
 ;;21,"54868-4066-00 ")
 ;;2454
 ;;21,"54868-4066-01 ")
 ;;2455
 ;;21,"54868-4073-00 ")
 ;;2456
 ;;21,"54868-4073-01 ")
 ;;2457
 ;;21,"54868-4073-02 ")
 ;;2458
 ;;21,"54868-4073-03 ")
 ;;2459
 ;;21,"54868-4074-00 ")
 ;;2460
 ;;21,"54868-4074-01 ")
 ;;2461
 ;;21,"54868-4074-02 ")
 ;;2462
 ;;21,"54868-4074-03 ")
 ;;2463
 ;;21,"54868-4074-04 ")
 ;;2464
 ;;21,"54868-4199-00 ")
 ;;2465
 ;;21,"54868-4199-01 ")
 ;;2466
 ;;21,"54868-4199-02 ")
 ;;2467
 ;;21,"54868-4331-00 ")
 ;;2468
 ;;21,"54868-4331-01 ")
 ;;2469
 ;;21,"54868-4331-02 ")
 ;;2470
 ;;21,"54868-4331-03 ")
 ;;2471
 ;;21,"54868-4332-00 ")
 ;;2472
 ;;21,"54868-4332-01 ")
 ;;2473
 ;;21,"54868-4332-02 ")
 ;;2474
 ;;21,"54868-4341-00 ")
 ;;2475
 ;;21,"54868-4341-01 ")
 ;;2476
 ;;21,"54868-4357-00 ")
 ;;2477
 ;;21,"54868-4357-01 ")
 ;;2478
 ;;21,"54868-4357-02 ")
 ;;2479
 ;;21,"54868-4357-03 ")
 ;;2480
 ;;21,"54868-4358-00 ")
 ;;2481
 ;;21,"54868-4358-01 ")
 ;;2482
 ;;21,"54868-4358-02 ")
 ;;2483
 ;;21,"54868-4358-03 ")
 ;;2484
 ;;21,"54868-4413-00 ")
 ;;2485
 ;;21,"54868-4414-00 ")
 ;;2486
 ;;21,"54868-4414-01 ")
 ;;2487
 ;;21,"54868-4425-00 ")
 ;;2488
 ;;21,"54868-4425-03 ")
 ;;2489
 ;;21,"54868-4428-00 ")
 ;;2490
 ;;21,"54868-4428-02 ")
 ;;2491
 ;;21,"54868-4428-03 ")
 ;;2492
 ;;21,"54868-4494-00 ")
 ;;2493
 ;;21,"54868-4526-00 ")
 ;;2494
 ;;21,"54868-4526-01 ")
 ;;2495
 ;;21,"54868-4539-01 ")
 ;;2496
 ;;21,"54868-4540-01 ")
 ;;2497
 ;;21,"54868-4540-02 ")
 ;;2498
 ;;21,"54868-4605-01 ")
 ;;2499
 ;;21,"54868-4605-02 ")
 ;;2500
 ;;21,"54868-4612-00 ")
 ;;2501
 ;;21,"54868-4637-00 ")
 ;;2502
 ;;21,"54868-4637-01 ")
 ;;2503
 ;;21,"54868-4637-02 ")
 ;;2504
 ;;21,"54868-4637-03 ")
 ;;2505
 ;;21,"54868-4637-04 ")
 ;;2506
 ;;21,"54868-4645-00 ")
 ;;2507
 ;;21,"54868-4645-01 ")
 ;;2508
 ;;21,"54868-4645-02 ")
 ;;2509
 ;;21,"54868-4645-03 ")
 ;;2510
 ;;21,"54868-4646-00 ")
 ;;2511
 ;;21,"54868-4646-02 ")
 ;;2512
 ;;21,"54868-4646-03 ")
 ;;2513
 ;;21,"54868-4646-04 ")
 ;;2514
 ;;21,"54868-4646-05 ")
 ;;2515
 ;;21,"54868-4652-00 ")
 ;;2516
 ;;21,"54868-4652-01 ")
 ;;2517
 ;;21,"54868-4652-02 ")
 ;;2518
 ;;21,"54868-4652-03 ")
 ;;2519
 ;;21,"54868-4652-04 ")
 ;;2520
 ;;21,"54868-4652-05 ")
 ;;2521
 ;;21,"54868-4656-00 ")
 ;;2522
 ;;21,"54868-4656-01 ")
 ;;2523
 ;;21,"54868-4656-02 ")
 ;;2524
 ;;21,"54868-4656-03 ")
 ;;2525
 ;;21,"54868-4657-00 ")
 ;;2526
 ;;21,"54868-4657-01 ")
 ;;2527
 ;;21,"54868-4657-02 ")
 ;;2528
 ;;21,"54868-4657-03 ")
 ;;2529
 ;;21,"54868-4657-04 ")
 ;;2530
 ;;21,"54868-4657-06 ")
 ;;2531
 ;;21,"54868-4657-08 ")
 ;;2532
 ;;21,"54868-4658-00 ")
 ;;2533
 ;;21,"54868-4658-01 ")
 ;;2534
 ;;21,"54868-4658-02 ")
 ;;2535
 ;;21,"54868-4658-03 ")
 ;;2536
 ;;21,"54868-4658-04 ")
 ;;2537
 ;;21,"54868-4678-00 ")
 ;;2538
 ;;21,"54868-4678-01 ")
 ;;2539
 ;;21,"54868-4678-02 ")
 ;;2540
 ;;21,"54868-4678-03 ")
 ;;2541
 ;;21,"54868-4678-04 ")
 ;;2542
 ;;21,"54868-4729-00 ")
 ;;2543
 ;;21,"54868-4780-00 ")
 ;;2544
 ;;21,"54868-4780-01 ")
 ;;2545
 ;;21,"54868-4780-02 ")
 ;;2546
 ;;21,"54868-4785-00 ")
 ;;2547
 ;;21,"54868-4785-01 ")
 ;;2548
 ;;21,"54868-4785-02 ")
 ;;2549
 ;;21,"54868-4785-03 ")
 ;;2550
 ;;21,"54868-4869-00 ")
 ;;2551
 ;;21,"54868-4870-00 ")
 ;;2552
 ;;21,"54868-4870-01 ")
 ;;2553
 ;;21,"54868-4870-02 ")
 ;;2554
 ;;21,"54868-4885-00 ")
 ;;2555
 ;;21,"54868-4885-01 ")
 ;;2556
 ;;21,"54868-4904-00 ")
 ;;2557
 ;;21,"54868-4904-01 ")
 ;;2558
 ;;21,"54868-4977-00 ")
 ;;2559
 ;;21,"54868-4977-01 ")
 ;;2560
 ;;21,"54868-4977-02 ")
 ;;2561
 ;;21,"54868-4986-00 ")
 ;;2562
 ;;21,"54868-4986-01 ")
 ;;2563
 ;;21,"54868-4986-02 ")
 ;;2564
 ;;21,"54868-5001-00 ")
 ;;2565
 ;;21,"54868-5001-01 ")
 ;;2566
 ;;21,"54868-5001-02 ")
 ;;2567
 ;;21,"54868-5055-00 ")
 ;;2568
 ;;21,"54868-5064-00 ")
 ;;2569
 ;;21,"54868-5064-01 ")
 ;;2570
 ;;21,"54868-5075-00 ")
 ;;2571
 ;;21,"54868-5075-01 ")
 ;;2572
 ;;21,"54868-5077-00 ")
 ;;2573
 ;;21,"54868-5078-00 ")
 ;;2574
 ;;21,"54868-5078-01 ")
 ;;2575
 ;;21,"54868-5079-00 ")
 ;;2576
 ;;21,"54868-5079-01 ")
 ;;2577
 ;;21,"54868-5079-02 ")
 ;;2578
 ;;21,"54868-5082-00 ")
 ;;2579
 ;;21,"54868-5082-01 ")
 ;;2580
 ;;21,"54868-5082-02 ")
 ;;2581
 ;;21,"54868-5082-03 ")
 ;;2582
 ;;21,"54868-5099-00 ")
 ;;2583
 ;;21,"54868-5099-01 ")
 ;;2584
 ;;21,"54868-5100-00 ")
 ;;2585
 ;;21,"54868-5100-01 ")
 ;;2586
 ;;21,"54868-5100-02 ")
 ;;2587
 ;;21,"54868-5170-00 ")
 ;;2588
 ;;21,"54868-5170-01 ")
 ;;2589
 ;;21,"54868-5182-00 ")
 ;;2590
 ;;21,"54868-5182-01 ")
 ;;2591
 ;;21,"54868-5182-02 ")
 ;;2592
 ;;21,"54868-5196-00 ")
 ;;2593
 ;;21,"54868-5196-01 ")
 ;;2594
 ;;21,"54868-5196-02 ")
 ;;2595
 ;;21,"54868-5204-00 ")
 ;;2596
 ;;21,"54868-5204-01 ")
 ;;2597
 ;;21,"54868-5204-02 ")
 ;;2598
 ;;21,"54868-5204-03 ")
 ;;2599
 ;;21,"54868-5241-00 ")
 ;;2600
 ;;21,"54868-5241-01 ")
 ;;2601
 ;;21,"54868-5241-02 ")
 ;;2602
 ;;21,"54868-5245-00 ")
 ;;2603
 ;;21,"54868-5245-01 ")
 ;;2604
 ;;21,"54868-5245-02 ")
 ;;2605
 ;;21,"54868-5246-00 ")
 ;;2606
 ;;21,"54868-5246-01 ")
 ;;2607
 ;;21,"54868-5246-02 ")
 ;;2608
 ;;21,"54868-5256-00 ")
 ;;2609
 ;;21,"54868-5279-00 ")
 ;;2610
 ;;21,"54868-5281-01 ")
 ;;2611
 ;;21,"54868-5296-00 ")
 ;;2612
 ;;21,"54868-5297-00 ")
 ;;2613
 ;;21,"54868-5311-00 ")
 ;;2614
 ;;21,"54868-5311-01 ")
 ;;2615
 ;;21,"54868-5313-00 ")
 ;;2616
 ;;21,"54868-5313-01 ")
 ;;2617
 ;;21,"54868-5320-00 ")
 ;;2618
 ;;21,"54868-5320-01 ")
 ;;2619
 ;;21,"54868-5320-03 ")
 ;;2620
 ;;21,"54868-5320-04 ")
 ;;2621
 ;;21,"54868-5323-00 ")
 ;;2622
 ;;21,"54868-5323-01 ")
 ;;2623
 ;;21,"54868-5346-00 ")
 ;;2624
 ;;21,"54868-5346-01 ")
 ;;2625
 ;;21,"54868-5392-00 ")
 ;;2626
 ;;21,"54868-5418-00 ")
 ;;2627
 ;;21,"54868-5465-00 ")
 ;;2628
 ;;21,"54868-5465-01 ")
 ;;2629
 ;;21,"54868-5469-00 ")
 ;;2630
 ;;21,"54868-5469-01 ")
 ;;2631
 ;;21,"54868-5475-00 ")
 ;;2632
 ;;21,"54868-5489-00 ")
 ;;2633
 ;;21,"54868-5503-00 ")
 ;;2634
 ;;21,"54868-5503-01 ")
 ;;2635
 ;;21,"54868-5548-02 ")
 ;;2636
 ;;21,"54868-5591-00 ")
 ;;2637
 ;;21,"54868-5607-00 ")
 ;;2638
 ;;21,"54868-5607-01 ")
 ;;2639
 ;;21,"54868-5690-00 ")
 ;;2640
 ;;21,"54868-5690-01 ")
 ;;2641
 ;;21,"54868-5690-02 ")
 ;;2642
 ;;21,"54868-5690-03 ")
 ;;2643
 ;;21,"54868-5705-00 ")
 ;;2644
 ;;21,"54868-5747-00 ")
 ;;2645
 ;;21,"54868-5747-01 ")
 ;;2646
 ;;21,"54868-5772-00 ")
 ;;2647
 ;;21,"54868-5780-00 ")
 ;;2648
 ;;21,"54868-5780-01 ")
 ;;2649
 ;;21,"54868-5781-00 ")
 ;;2650
 ;;21,"54868-5781-01 ")
 ;;2651
 ;;21,"54868-5781-02 ")
 ;;2652
 ;;21,"54868-5781-03 ")
 ;;2653
 ;;21,"54868-5782-00 ")
 ;;2654
 ;;21,"54868-5782-01 ")
 ;;2655
 ;;21,"54868-5782-02 ")
 ;;2656
 ;;21,"54868-5782-03 ")
 ;;2657
 ;;21,"54868-5782-04 ")
 ;;2658
 ;;21,"54868-5783-00 ")
 ;;2659
 ;;21,"54868-5783-01 ")
 ;;2660
 ;;21,"54868-5787-00 ")
 ;;2661
 ;;21,"54868-5792-00 ")
 ;;2662
 ;;21,"54868-5792-01 ")
 ;;2663
 ;;21,"54868-5792-02 ")
 ;;2664
 ;;21,"54868-5793-00 ")
 ;;2665
 ;;21,"54868-5793-01 ")
 ;;2666
 ;;21,"54868-5804-00 ")
 ;;2667
 ;;21,"54868-5842-00 ")
 ;;2668
 ;;21,"54868-5842-01 ")
 ;;2669
 ;;21,"54868-5842-02 ")
 ;;2670
 ;;21,"54868-5842-03 ")
 ;;2671
 ;;21,"54868-5843-00 ")
 ;;2672
 ;;21,"54868-5843-01 ")
 ;;2673
 ;;21,"54868-5843-02 ")
 ;;2674
 ;;21,"54868-5843-03 ")
 ;;2675
 ;;21,"54868-5856-00 ")
 ;;2676
 ;;21,"54868-5856-01 ")
 ;;2677
 ;;21,"54868-5896-00 ")
 ;;2678
 ;;21,"54868-5928-00 ")
 ;;2679
 ;;21,"54868-5977-00 ")
 ;;2680
 ;;21,"54868-5983-00 ")
 ;;2681
 ;;21,"54868-5983-01 ")
 ;;2682
 ;;21,"54868-5996-00 ")
 ;;2683
 ;;21,"54868-5996-01 ")
 ;;2684
 ;;21,"54868-5997-00 ")
 ;;2685
 ;;21,"54868-5997-01 ")
 ;;2686
 ;;21,"54868-6036-00 ")
 ;;2687
 ;;21,"54868-6041-00 ")
 ;;2688