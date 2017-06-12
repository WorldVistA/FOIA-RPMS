BGP61F10 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"60505-0205-07 ")
 ;;3257
 ;;21,"60505-0206-03 ")
 ;;3258
 ;;21,"60505-0206-07 ")
 ;;3259
 ;;21,"60505-0207-03 ")
 ;;3260
 ;;21,"60505-0207-07 ")
 ;;3261
 ;;21,"60505-0208-01 ")
 ;;3262
 ;;21,"60505-0209-01 ")
 ;;3263
 ;;21,"60505-0261-01 ")
 ;;3264
 ;;21,"60505-0262-01 ")
 ;;3265
 ;;21,"60505-0263-01 ")
 ;;3266
 ;;21,"60505-0264-01 ")
 ;;3267
 ;;21,"60505-0265-01 ")
 ;;3268
 ;;21,"60505-0266-01 ")
 ;;3269
 ;;21,"60505-0266-05 ")
 ;;3270
 ;;21,"60505-0267-01 ")
 ;;3271
 ;;21,"60505-0267-05 ")
 ;;3272
 ;;21,"60505-0268-01 ")
 ;;3273
 ;;21,"60505-0268-05 ")
 ;;3274
 ;;21,"60505-0271-01 ")
 ;;3275
 ;;21,"60505-0272-01 ")
 ;;3276
 ;;21,"60505-2510-02 ")
 ;;3277
 ;;21,"60505-2510-04 ")
 ;;3278
 ;;21,"60505-2511-02 ")
 ;;3279
 ;;21,"60505-2511-04 ")
 ;;3280
 ;;21,"60505-2512-02 ")
 ;;3281
 ;;21,"60505-2512-08 ")
 ;;3282
 ;;21,"60505-2684-08 ")
 ;;3283
 ;;21,"60505-2684-09 ")
 ;;3284
 ;;21,"60505-2685-01 ")
 ;;3285
 ;;21,"60505-2685-09 ")
 ;;3286
 ;;21,"60505-2686-09 ")
 ;;3287
 ;;21,"60505-2688-08 ")
 ;;3288
 ;;21,"60505-2688-09 ")
 ;;3289
 ;;21,"60505-2875-01 ")
 ;;3290
 ;;21,"60505-2876-00 ")
 ;;3291
 ;;21,"60505-2876-01 ")
 ;;3292
 ;;21,"60505-2876-05 ")
 ;;3293
 ;;21,"60505-2877-00 ")
 ;;3294
 ;;21,"60505-2877-01 ")
 ;;3295
 ;;21,"60505-2877-05 ")
 ;;3296
 ;;21,"60505-2878-00 ")
 ;;3297
 ;;21,"60505-2878-01 ")
 ;;3298
 ;;21,"60505-2878-05 ")
 ;;3299
 ;;21,"60505-2915-03 ")
 ;;3300
 ;;21,"60505-2915-09 ")
 ;;3301
 ;;21,"60505-2916-03 ")
 ;;3302
 ;;21,"60505-2916-09 ")
 ;;3303
 ;;21,"60505-2917-03 ")
 ;;3304
 ;;21,"60505-2917-09 ")
 ;;3305
 ;;21,"60505-3160-08 ")
 ;;3306
 ;;21,"60505-3160-09 ")
 ;;3307
 ;;21,"60505-3161-03 ")
 ;;3308
 ;;21,"60505-3161-08 ")
 ;;3309
 ;;21,"60505-3161-09 ")
 ;;3310
 ;;21,"60505-3162-03 ")
 ;;3311
 ;;21,"60505-3162-09 ")
 ;;3312
 ;;21,"60505-3409-05 ")
 ;;3313
 ;;21,"60505-3409-09 ")
 ;;3314
 ;;21,"60505-3410-05 ")
 ;;3315
 ;;21,"60505-3410-09 ")
 ;;3316
 ;;21,"60505-3411-05 ")
 ;;3317
 ;;21,"60505-3411-09 ")
 ;;3318
 ;;21,"60505-3547-03 ")
 ;;3319
 ;;21,"60505-3547-09 ")
 ;;3320
 ;;21,"60505-3548-03 ")
 ;;3321
 ;;21,"60505-3548-05 ")
 ;;3322
 ;;21,"60505-3548-09 ")
 ;;3323
 ;;21,"60505-3549-03 ")
 ;;3324
 ;;21,"60505-3549-05 ")
 ;;3325
 ;;21,"60505-3549-09 ")
 ;;3326
 ;;21,"60505-3603-03 ")
 ;;3327
 ;;21,"60505-3603-09 ")
 ;;3328
 ;;21,"60505-3604-03 ")
 ;;3329
 ;;21,"60505-3604-09 ")
 ;;3330
 ;;21,"60505-3618-03 ")
 ;;3331
 ;;21,"60505-3619-03 ")
 ;;3332
 ;;21,"60505-3620-03 ")
 ;;3333
 ;;21,"60505-3620-09 ")
 ;;3334
 ;;21,"60505-3621-03 ")
 ;;3335
 ;;21,"60505-3621-09 ")
 ;;3336
 ;;21,"60505-3758-05 ")
 ;;3337
 ;;21,"60505-3758-09 ")
 ;;3338
 ;;21,"60505-3759-05 ")
 ;;3339
 ;;21,"60505-3759-09 ")
 ;;3340
 ;;21,"60505-3760-09 ")
 ;;3341
 ;;21,"60505-3806-09 ")
 ;;3342
 ;;21,"60505-3807-09 ")
 ;;3343
 ;;21,"60505-3808-09 ")
 ;;3344
 ;;21,"60505-3809-09 ")
 ;;3345
 ;;21,"60505-3810-09 ")
 ;;3346
 ;;21,"60631-0040-30 ")
 ;;3347
 ;;21,"60631-0080-30 ")
 ;;3348
 ;;21,"60631-0412-30 ")
 ;;3349
 ;;21,"60631-0425-30 ")
 ;;3350
 ;;21,"60687-0128-01 ")
 ;;3351
 ;;21,"60687-0128-11 ")
 ;;3352
 ;;21,"60687-0139-01 ")
 ;;3353
 ;;21,"60687-0139-11 ")
 ;;3354
 ;;21,"60760-0063-30 ")
 ;;3355
 ;;21,"60760-0063-90 ")
 ;;3356
 ;;21,"60760-0064-30 ")
 ;;3357
 ;;21,"60760-0064-90 ")
 ;;3358
 ;;21,"60760-0065-30 ")
 ;;3359
 ;;21,"60760-0065-90 ")
 ;;3360
 ;;21,"60760-0082-90 ")
 ;;3361
 ;;21,"60760-0083-30 ")
 ;;3362
 ;;21,"60760-0128-30 ")
 ;;3363
 ;;21,"60760-0128-90 ")
 ;;3364
 ;;21,"60760-0129-30 ")
 ;;3365
 ;;21,"60760-0129-90 ")
 ;;3366
 ;;21,"60760-0130-90 ")
 ;;3367
 ;;21,"60760-0224-30 ")
 ;;3368
 ;;21,"60760-0225-30 ")
 ;;3369
 ;;21,"60760-0226-30 ")
 ;;3370
 ;;21,"60760-0227-30 ")
 ;;3371
 ;;21,"60760-0266-30 ")
 ;;3372
 ;;21,"60760-0266-90 ")
 ;;3373
 ;;21,"60760-0267-30 ")
 ;;3374
 ;;21,"60760-0267-90 ")
 ;;3375
 ;;21,"60760-0270-30 ")
 ;;3376
 ;;21,"60760-0270-90 ")
 ;;3377
 ;;21,"60760-0302-30 ")
 ;;3378
 ;;21,"60760-0303-30 ")
 ;;3379
 ;;21,"60760-0429-30 ")
 ;;3380
 ;;21,"60760-0760-30 ")
 ;;3381
 ;;21,"60760-0760-90 ")
 ;;3382
 ;;21,"60951-0185-92 ")
 ;;3383
 ;;21,"60951-0186-30 ")
 ;;3384
 ;;21,"60951-0186-92 ")
 ;;3385
 ;;21,"60951-0187-30 ")
 ;;3386
 ;;21,"60951-0187-92 ")
 ;;3387
 ;;21,"61570-0110-01 ")
 ;;3388
 ;;21,"61570-0111-01 ")
 ;;3389
 ;;21,"61570-0112-01 ")
 ;;3390
 ;;21,"61570-0120-01 ")
 ;;3391
 ;;21,"61894-0001-02 ")
 ;;3392
 ;;21,"61894-0002-02 ")
 ;;3393
 ;;21,"61919-0030-90 ")
 ;;3394
 ;;21,"61919-0040-30 ")
 ;;3395
 ;;21,"61919-0040-90 ")
 ;;3396
 ;;21,"61919-0306-90 ")
 ;;3397
 ;;21,"61919-0307-30 ")
 ;;3398
 ;;21,"61919-0308-90 ")
 ;;3399
 ;;21,"61919-0952-30 ")
 ;;3400
 ;;21,"61919-0954-30 ")
 ;;3401
 ;;21,"61919-0954-90 ")
 ;;3402
 ;;21,"63304-0337-01 ")
 ;;3403
 ;;21,"63304-0338-01 ")
 ;;3404
 ;;21,"63304-0338-05 ")
 ;;3405
 ;;21,"63304-0339-01 ")
 ;;3406
 ;;21,"63304-0339-05 ")
 ;;3407
 ;;21,"63304-0340-01 ")
 ;;3408
 ;;21,"63304-0340-05 ")
 ;;3409
 ;;21,"63304-0403-01 ")
 ;;3410
 ;;21,"63304-0404-01 ")
 ;;3411
 ;;21,"63304-0531-01 ")
 ;;3412
 ;;21,"63304-0532-01 ")
 ;;3413
 ;;21,"63304-0532-10 ")
 ;;3414
 ;;21,"63304-0533-01 ")
 ;;3415
 ;;21,"63304-0533-10 ")
 ;;3416
 ;;21,"63304-0534-01 ")
 ;;3417
 ;;21,"63304-0534-10 ")
 ;;3418
 ;;21,"63304-0535-01 ")
 ;;3419
 ;;21,"63304-0535-10 ")
 ;;3420
 ;;21,"63304-0536-01 ")
 ;;3421
 ;;21,"63304-0536-05 ")
 ;;3422
 ;;21,"63304-0537-01 ")
 ;;3423
 ;;21,"63304-0537-05 ")
 ;;3424
 ;;21,"63304-0538-01 ")
 ;;3425
 ;;21,"63304-0538-05 ")
 ;;3426
 ;;21,"63304-0548-90 ")
 ;;3427
 ;;21,"63304-0549-90 ")
 ;;3428
 ;;21,"63304-0550-90 ")
 ;;3429
 ;;21,"63304-0551-90 ")
 ;;3430
 ;;21,"63304-0599-01 ")
 ;;3431
 ;;21,"63629-1241-01 ")
 ;;3432
 ;;21,"63629-1242-01 ")
 ;;3433
 ;;21,"63629-1253-01 ")
 ;;3434
 ;;21,"63629-1253-02 ")
 ;;3435
 ;;21,"63629-1254-01 ")
 ;;3436
 ;;21,"63629-1254-02 ")
 ;;3437
 ;;21,"63629-1337-01 ")
 ;;3438
 ;;21,"63629-1337-02 ")
 ;;3439
 ;;21,"63629-1337-03 ")
 ;;3440
 ;;21,"63629-1338-01 ")
 ;;3441
 ;;21,"63629-1338-02 ")
 ;;3442
 ;;21,"63629-1338-03 ")
 ;;3443
 ;;21,"63629-1454-01 ")
 ;;3444
 ;;21,"63629-1522-01 ")
 ;;3445
 ;;21,"63629-1522-02 ")
 ;;3446
 ;;21,"63629-1522-03 ")
 ;;3447
 ;;21,"63629-1522-04 ")
 ;;3448
 ;;21,"63629-1525-01 ")
 ;;3449
 ;;21,"63629-1525-02 ")
 ;;3450
 ;;21,"63629-1525-03 ")
 ;;3451
 ;;21,"63629-1526-01 ")
 ;;3452
 ;;21,"63629-1526-02 ")
 ;;3453
 ;;21,"63629-1526-03 ")
 ;;3454
 ;;21,"63629-1679-01 ")
 ;;3455
 ;;21,"63629-1679-02 ")
 ;;3456
 ;;21,"63629-1679-03 ")
 ;;3457
 ;;21,"63629-1679-04 ")
 ;;3458
 ;;21,"63629-1706-01 ")
 ;;3459
 ;;21,"63629-1706-02 ")
 ;;3460
 ;;21,"63629-1706-03 ")
 ;;3461
 ;;21,"63629-1728-01 ")
 ;;3462
 ;;21,"63629-1728-02 ")
 ;;3463
 ;;21,"63629-1728-03 ")
 ;;3464
 ;;21,"63629-1761-01 ")
 ;;3465
 ;;21,"63629-1809-01 ")
 ;;3466
 ;;21,"63629-1809-02 ")
 ;;3467
 ;;21,"63629-1809-03 ")
 ;;3468
 ;;21,"63629-2541-01 ")
 ;;3469
 ;;21,"63629-2541-02 ")
 ;;3470
 ;;21,"63629-2541-03 ")
 ;;3471
 ;;21,"63629-2541-04 ")
 ;;3472
 ;;21,"63629-2672-01 ")
 ;;3473
 ;;21,"63629-2672-02 ")
 ;;3474
 ;;21,"63629-2672-03 ")
 ;;3475
 ;;21,"63629-2679-01 ")
 ;;3476
 ;;21,"63629-2680-01 ")
 ;;3477
 ;;21,"63629-2680-02 ")
 ;;3478
 ;;21,"63629-2680-03 ")
 ;;3479
 ;;21,"63629-2688-01 ")
 ;;3480
 ;;21,"63629-2688-02 ")
 ;;3481
 ;;21,"63629-2688-03 ")
 ;;3482
 ;;21,"63629-2735-01 ")
 ;;3483
 ;;21,"63629-2896-01 ")
 ;;3484
 ;;21,"63629-2908-01 ")
 ;;3485
 ;;21,"63629-2908-02 ")
 ;;3486
 ;;21,"63629-2908-03 ")
 ;;3487
 ;;21,"63629-2908-04 ")
 ;;3488
 ;;21,"63629-2912-01 ")
 ;;3489
 ;;21,"63629-2912-02 ")
 ;;3490
 ;;21,"63629-2912-03 ")
 ;;3491
 ;;21,"63629-2912-04 ")
 ;;3492
 ;;21,"63629-2923-01 ")
 ;;3493
 ;;21,"63629-2923-02 ")
 ;;3494
 ;;21,"63629-2935-01 ")
 ;;3495
 ;;21,"63629-2935-02 ")
 ;;3496
 ;;21,"63629-2935-03 ")
 ;;3497
 ;;21,"63629-2935-04 ")
 ;;3498
 ;;21,"63629-3217-01 ")
 ;;3499
 ;;21,"63629-3344-01 ")
 ;;3500
 ;;21,"63629-3344-02 ")
 ;;3501
 ;;21,"63629-3371-01 ")
 ;;3502
 ;;21,"63629-3371-02 ")
 ;;3503
 ;;21,"63629-3371-03 ")
 ;;3504
 ;;21,"63629-3371-04 ")
 ;;3505
 ;;21,"63629-3373-01 ")
 ;;3506
 ;;21,"63629-3373-02 ")
 ;;3507
 ;;21,"63629-3373-03 ")
 ;;3508
 ;;21,"63629-3373-04 ")
 ;;3509
 ;;21,"63629-3374-01 ")
 ;;3510
 ;;21,"63629-3374-02 ")
 ;;3511
 ;;21,"63629-3374-03 ")
 ;;3512
 ;;21,"63629-3374-04 ")
 ;;3513
 ;;21,"63629-3376-01 ")
 ;;3514
 ;;21,"63629-3376-02 ")
 ;;3515
 ;;21,"63629-3376-03 ")
 ;;3516
 ;;21,"63629-3376-04 ")
 ;;3517
 ;;21,"63629-3377-01 ")
 ;;3518
 ;;21,"63629-3377-02 ")
 ;;3519
 ;;21,"63629-3377-03 ")
 ;;3520
 ;;21,"63629-3377-04 ")
 ;;3521
 ;;21,"63629-3390-01 ")
 ;;3522
 ;;21,"63629-3390-02 ")
 ;;3523
 ;;21,"63629-3390-03 ")
 ;;3524
 ;;21,"63629-3390-04 ")
 ;;3525
 ;;21,"63629-3739-01 ")
 ;;3526
 ;;21,"63629-3739-02 ")
 ;;3527
 ;;21,"63629-4888-01 ")
 ;;3528
 ;;21,"63629-4888-02 ")
 ;;3529
 ;;21,"63629-5247-01 ")
 ;;3530
 ;;21,"63629-5247-02 ")
 ;;3531
 ;;21,"63739-0349-10 ")
 ;;3532
 ;;21,"63739-0350-10 ")
 ;;3533
 ;;21,"63739-0513-10 ")
 ;;3534
 ;;21,"63739-0514-10 ")
 ;;3535
 ;;21,"63739-0515-10 ")
 ;;3536
 ;;21,"63739-0527-10 ")
 ;;3537
 ;;21,"63739-0528-10 ")
 ;;3538
 ;;21,"63739-0529-10 ")
 ;;3539
 ;;21,"63874-0058-10 ")
 ;;3540
 ;;21,"63874-0058-15 ")
 ;;3541
 ;;21,"63874-0058-30 ")
 ;;3542
 ;;21,"63874-0058-90 ")
 ;;3543
 ;;21,"63874-0347-01 ")
 ;;3544
 ;;21,"63874-0347-02 ")
 ;;3545
 ;;21,"63874-0347-05 ")
 ;;3546
 ;;21,"63874-0347-20 ")
 ;;3547
 ;;21,"63874-0347-30 ")
 ;;3548
 ;;21,"63874-0347-40 ")
 ;;3549
 ;;21,"63874-0347-42 ")
 ;;3550
 ;;21,"63874-0347-45 ")
 ;;3551
 ;;21,"63874-0347-90 ")
 ;;3552
 ;;21,"63874-0348-01 ")
 ;;3553
 ;;21,"63874-0348-10 ")
 ;;3554
 ;;21,"63874-0348-14 ")
 ;;3555
 ;;21,"63874-0348-20 ")
 ;;3556
 ;;21,"63874-0348-30 ")
 ;;3557
 ;;21,"63874-0348-60 ")
 ;;3558
 ;;21,"63874-0348-90 ")
 ;;3559
 ;;21,"63874-0349-01 ")
 ;;3560
 ;;21,"63874-0349-10 ")
 ;;3561
 ;;21,"63874-0349-30 ")
 ;;3562
 ;;21,"63874-0379-10 ")
 ;;3563
 ;;21,"63874-0379-30 ")
 ;;3564
 ;;21,"63874-0423-01 ")
 ;;3565
 ;;21,"63874-0423-07 ")
 ;;3566
 ;;21,"63874-0423-10 ")
 ;;3567
 ;;21,"63874-0423-14 ")
 ;;3568
 ;;21,"63874-0423-20 ")
 ;;3569
 ;;21,"63874-0423-30 ")
 ;;3570
 ;;21,"63874-0423-60 ")
 ;;3571
 ;;21,"63874-0514-01 ")
 ;;3572
 ;;21,"63874-0514-10 ")
 ;;3573
 ;;21,"63874-0514-14 ")
 ;;3574
 ;;21,"63874-0514-15 ")
 ;;3575
 ;;21,"63874-0514-16 ")
 ;;3576
 ;;21,"63874-0514-20 ")
 ;;3577
 ;;21,"63874-0514-28 ")
 ;;3578
 ;;21,"63874-0514-30 ")
 ;;3579
 ;;21,"63874-0514-60 ")
 ;;3580
 ;;21,"63874-0514-90 ")
 ;;3581
 ;;21,"63874-0522-01 ")
 ;;3582
 ;;21,"63874-0522-08 ")
 ;;3583
 ;;21,"63874-0522-10 ")
 ;;3584
 ;;21,"63874-0522-14 ")
 ;;3585
 ;;21,"63874-0522-15 ")
 ;;3586
 ;;21,"63874-0522-20 ")
 ;;3587
 ;;21,"63874-0522-21 ")
 ;;3588
 ;;21,"63874-0522-28 ")
 ;;3589
 ;;21,"63874-0522-30 ")
 ;;3590
 ;;21,"63874-0522-60 ")
 ;;3591
 ;;21,"63874-0522-90 ")
 ;;3592
 ;;21,"63874-0558-01 ")
 ;;3593
 ;;21,"63874-0558-10 ")
 ;;3594
 ;;21,"63874-0558-14 ")
 ;;3595
 ;;21,"63874-0558-16 ")
 ;;3596
 ;;21,"63874-0558-28 ")
 ;;3597
 ;;21,"63874-0558-30 ")
 ;;3598
 ;;21,"63874-0558-60 ")
 ;;3599
 ;;21,"63874-0558-90 ")
 ;;3600
 ;;21,"63874-0581-10 ")
 ;;3601
 ;;21,"63874-0581-30 ")
 ;;3602
 ;;21,"63874-0581-90 ")
 ;;3603
 ;;21,"63874-0618-10 ")
 ;;3604
 ;;21,"63874-0618-15 ")
 ;;3605
 ;;21,"63874-0618-30 ")
 ;;3606
 ;;21,"63874-0618-40 ")
 ;;3607
 ;;21,"63874-0618-60 ")
 ;;3608
 ;;21,"63874-0655-01 ")
 ;;3609
 ;;21,"63874-0655-10 ")
 ;;3610
 ;;21,"63874-0655-14 ")
 ;;3611
 ;;21,"63874-0655-20 ")
 ;;3612
 ;;21,"63874-0655-30 ")
 ;;3613
 ;;21,"63874-0655-60 ")
 ;;3614
 ;;21,"63874-0987-01 ")
 ;;3615