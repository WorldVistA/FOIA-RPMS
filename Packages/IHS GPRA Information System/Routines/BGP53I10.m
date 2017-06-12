BGP53I10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54569-5918-00 ")
 ;;3497
 ;;21,"54569-5919-00 ")
 ;;3498
 ;;21,"54569-5920-00 ")
 ;;3499
 ;;21,"54569-5921-00 ")
 ;;3500
 ;;21,"54569-5921-01 ")
 ;;3501
 ;;21,"54569-5921-02 ")
 ;;3502
 ;;21,"54569-5921-03 ")
 ;;3503
 ;;21,"54569-6037-00 ")
 ;;3504
 ;;21,"54569-6043-00 ")
 ;;3505
 ;;21,"54569-6083-00 ")
 ;;3506
 ;;21,"54569-6084-00 ")
 ;;3507
 ;;21,"54569-6195-00 ")
 ;;3508
 ;;21,"54569-6204-00 ")
 ;;3509
 ;;21,"54569-6237-00 ")
 ;;3510
 ;;21,"54569-6237-01 ")
 ;;3511
 ;;21,"54569-6237-02 ")
 ;;3512
 ;;21,"54569-6237-03 ")
 ;;3513
 ;;21,"54569-6238-00 ")
 ;;3514
 ;;21,"54569-6238-01 ")
 ;;3515
 ;;21,"54569-6241-00 ")
 ;;3516
 ;;21,"54569-6241-01 ")
 ;;3517
 ;;21,"54569-6448-00 ")
 ;;3518
 ;;21,"54569-8004-00 ")
 ;;3519
 ;;21,"54569-8021-00 ")
 ;;3520
 ;;21,"54799-0533-60 ")
 ;;3521
 ;;21,"54799-0534-66 ")
 ;;3522
 ;;21,"54799-0535-60 ")
 ;;3523
 ;;21,"54807-0251-20 ")
 ;;3524
 ;;21,"54868-0018-05 ")
 ;;3525
 ;;21,"54868-0021-00 ")
 ;;3526
 ;;21,"54868-0021-01 ")
 ;;3527
 ;;21,"54868-0021-02 ")
 ;;3528
 ;;21,"54868-0021-04 ")
 ;;3529
 ;;21,"54868-0021-05 ")
 ;;3530
 ;;21,"54868-0021-06 ")
 ;;3531
 ;;21,"54868-0021-07 ")
 ;;3532
 ;;21,"54868-0021-09 ")
 ;;3533
 ;;21,"54868-0023-01 ")
 ;;3534
 ;;21,"54868-0023-02 ")
 ;;3535
 ;;21,"54868-0023-03 ")
 ;;3536
 ;;21,"54868-0023-05 ")
 ;;3537
 ;;21,"54868-0023-06 ")
 ;;3538
 ;;21,"54868-0023-08 ")
 ;;3539
 ;;21,"54868-0023-09 ")
 ;;3540
 ;;21,"54868-0023-14 ")
 ;;3541
 ;;21,"54868-0153-00 ")
 ;;3542
 ;;21,"54868-0153-01 ")
 ;;3543
 ;;21,"54868-0153-03 ")
 ;;3544
 ;;21,"54868-0153-05 ")
 ;;3545
 ;;21,"54868-0153-08 ")
 ;;3546
 ;;21,"54868-0153-09 ")
 ;;3547
 ;;21,"54868-0154-00 ")
 ;;3548
 ;;21,"54868-0154-01 ")
 ;;3549
 ;;21,"54868-0154-02 ")
 ;;3550
 ;;21,"54868-0154-03 ")
 ;;3551
 ;;21,"54868-0154-04 ")
 ;;3552
 ;;21,"54868-0154-06 ")
 ;;3553
 ;;21,"54868-0154-07 ")
 ;;3554
 ;;21,"54868-0154-08 ")
 ;;3555
 ;;21,"54868-0154-09 ")
 ;;3556
 ;;21,"54868-0155-01 ")
 ;;3557
 ;;21,"54868-0191-01 ")
 ;;3558
 ;;21,"54868-0191-02 ")
 ;;3559
 ;;21,"54868-0191-04 ")
 ;;3560
 ;;21,"54868-0191-05 ")
 ;;3561
 ;;21,"54868-0191-06 ")
 ;;3562
 ;;21,"54868-0199-00 ")
 ;;3563
 ;;21,"54868-0199-03 ")
 ;;3564
 ;;21,"54868-0200-00 ")
 ;;3565
 ;;21,"54868-0200-01 ")
 ;;3566
 ;;21,"54868-0224-01 ")
 ;;3567
 ;;21,"54868-0224-03 ")
 ;;3568
 ;;21,"54868-0224-04 ")
 ;;3569
 ;;21,"54868-0224-06 ")
 ;;3570
 ;;21,"54868-0286-00 ")
 ;;3571
 ;;21,"54868-0333-01 ")
 ;;3572
 ;;21,"54868-0333-02 ")
 ;;3573
 ;;21,"54868-0333-04 ")
 ;;3574
 ;;21,"54868-0333-06 ")
 ;;3575
 ;;21,"54868-0333-07 ")
 ;;3576
 ;;21,"54868-0337-00 ")
 ;;3577
 ;;21,"54868-0337-01 ")
 ;;3578
 ;;21,"54868-0337-03 ")
 ;;3579
 ;;21,"54868-0388-01 ")
 ;;3580
 ;;21,"54868-0388-02 ")
 ;;3581
 ;;21,"54868-0388-04 ")
 ;;3582
 ;;21,"54868-0388-05 ")
 ;;3583
 ;;21,"54868-0425-00 ")
 ;;3584
 ;;21,"54868-0425-01 ")
 ;;3585
 ;;21,"54868-0538-01 ")
 ;;3586
 ;;21,"54868-0538-02 ")
 ;;3587
 ;;21,"54868-0559-00 ")
 ;;3588
 ;;21,"54868-0654-00 ")
 ;;3589
 ;;21,"54868-0737-00 ")
 ;;3590
 ;;21,"54868-0737-01 ")
 ;;3591
 ;;21,"54868-0840-00 ")
 ;;3592
 ;;21,"54868-0840-01 ")
 ;;3593
 ;;21,"54868-0840-02 ")
 ;;3594
 ;;21,"54868-0840-03 ")
 ;;3595
 ;;21,"54868-0840-04 ")
 ;;3596
 ;;21,"54868-0937-00 ")
 ;;3597
 ;;21,"54868-0937-01 ")
 ;;3598
 ;;21,"54868-0937-02 ")
 ;;3599
 ;;21,"54868-0939-00 ")
 ;;3600
 ;;21,"54868-0939-01 ")
 ;;3601
 ;;21,"54868-0939-02 ")
 ;;3602
 ;;21,"54868-0939-03 ")
 ;;3603
 ;;21,"54868-0939-05 ")
 ;;3604
 ;;21,"54868-0939-06 ")
 ;;3605
 ;;21,"54868-0939-07 ")
 ;;3606
 ;;21,"54868-0971-00 ")
 ;;3607
 ;;21,"54868-0971-01 ")
 ;;3608
 ;;21,"54868-0990-00 ")
 ;;3609
 ;;21,"54868-0990-01 ")
 ;;3610
 ;;21,"54868-0990-02 ")
 ;;3611
 ;;21,"54868-0990-04 ")
 ;;3612
 ;;21,"54868-0990-05 ")
 ;;3613
 ;;21,"54868-1080-00 ")
 ;;3614
 ;;21,"54868-1080-01 ")
 ;;3615
 ;;21,"54868-1080-03 ")
 ;;3616
 ;;21,"54868-1146-00 ")
 ;;3617
 ;;21,"54868-1171-00 ")
 ;;3618
 ;;21,"54868-1171-01 ")
 ;;3619
 ;;21,"54868-1171-02 ")
 ;;3620
 ;;21,"54868-1171-03 ")
 ;;3621
 ;;21,"54868-1173-00 ")
 ;;3622
 ;;21,"54868-1173-01 ")
 ;;3623
 ;;21,"54868-1173-02 ")
 ;;3624
 ;;21,"54868-1173-04 ")
 ;;3625
 ;;21,"54868-1173-05 ")
 ;;3626
 ;;21,"54868-1173-06 ")
 ;;3627
 ;;21,"54868-1184-01 ")
 ;;3628
 ;;21,"54868-1184-02 ")
 ;;3629
 ;;21,"54868-1184-03 ")
 ;;3630
 ;;21,"54868-1380-00 ")
 ;;3631
 ;;21,"54868-1380-01 ")
 ;;3632
 ;;21,"54868-1380-02 ")
 ;;3633
 ;;21,"54868-1380-03 ")
 ;;3634
 ;;21,"54868-1385-01 ")
 ;;3635
 ;;21,"54868-1385-02 ")
 ;;3636
 ;;21,"54868-1386-01 ")
 ;;3637
 ;;21,"54868-1386-02 ")
 ;;3638
 ;;21,"54868-1386-03 ")
 ;;3639
 ;;21,"54868-1386-04 ")
 ;;3640
 ;;21,"54868-1386-05 ")
 ;;3641
 ;;21,"54868-1387-00 ")
 ;;3642
 ;;21,"54868-1387-01 ")
 ;;3643
 ;;21,"54868-1387-02 ")
 ;;3644
 ;;21,"54868-1387-04 ")
 ;;3645
 ;;21,"54868-1392-00 ")
 ;;3646
 ;;21,"54868-1426-01 ")
 ;;3647
 ;;21,"54868-1616-01 ")
 ;;3648
 ;;21,"54868-1616-02 ")
 ;;3649
 ;;21,"54868-1616-03 ")
 ;;3650
 ;;21,"54868-1710-00 ")
 ;;3651
 ;;21,"54868-1774-00 ")
 ;;3652
 ;;21,"54868-1774-02 ")
 ;;3653
 ;;21,"54868-1780-01 ")
 ;;3654
 ;;21,"54868-1780-02 ")
 ;;3655
 ;;21,"54868-1857-00 ")
 ;;3656
 ;;21,"54868-1857-01 ")
 ;;3657
 ;;21,"54868-1857-02 ")
 ;;3658
 ;;21,"54868-1857-05 ")
 ;;3659
 ;;21,"54868-1857-06 ")
 ;;3660
 ;;21,"54868-1857-07 ")
 ;;3661
 ;;21,"54868-1865-02 ")
 ;;3662
 ;;21,"54868-1865-03 ")
 ;;3663
 ;;21,"54868-1887-00 ")
 ;;3664
 ;;21,"54868-1887-01 ")
 ;;3665
 ;;21,"54868-2016-00 ")
 ;;3666
 ;;21,"54868-2017-00 ")
 ;;3667
 ;;21,"54868-2017-01 ")
 ;;3668
 ;;21,"54868-2338-00 ")
 ;;3669
 ;;21,"54868-2338-01 ")
 ;;3670
 ;;21,"54868-2338-02 ")
 ;;3671
 ;;21,"54868-2338-03 ")
 ;;3672
 ;;21,"54868-2338-06 ")
 ;;3673
 ;;21,"54868-2338-07 ")
 ;;3674
 ;;21,"54868-2390-00 ")
 ;;3675
 ;;21,"54868-2390-01 ")
 ;;3676
 ;;21,"54868-2391-00 ")
 ;;3677
 ;;21,"54868-2391-01 ")
 ;;3678
 ;;21,"54868-2391-02 ")
 ;;3679
 ;;21,"54868-2391-03 ")
 ;;3680
 ;;21,"54868-2391-04 ")
 ;;3681
 ;;21,"54868-2444-00 ")
 ;;3682
 ;;21,"54868-2488-01 ")
 ;;3683
 ;;21,"54868-2840-00 ")
 ;;3684
 ;;21,"54868-2840-01 ")
 ;;3685
 ;;21,"54868-2910-00 ")
 ;;3686
 ;;21,"54868-3105-00 ")
 ;;3687
 ;;21,"54868-3105-01 ")
 ;;3688
 ;;21,"54868-3105-02 ")
 ;;3689
 ;;21,"54868-3105-03 ")
 ;;3690
 ;;21,"54868-3107-01 ")
 ;;3691
 ;;21,"54868-3107-02 ")
 ;;3692
 ;;21,"54868-3107-03 ")
 ;;3693
 ;;21,"54868-3107-06 ")
 ;;3694
 ;;21,"54868-3107-07 ")
 ;;3695
 ;;21,"54868-3107-09 ")
 ;;3696
 ;;21,"54868-3109-00 ")
 ;;3697
 ;;21,"54868-3109-01 ")
 ;;3698
 ;;21,"54868-3109-02 ")
 ;;3699
 ;;21,"54868-3109-06 ")
 ;;3700
 ;;21,"54868-3109-07 ")
 ;;3701
 ;;21,"54868-3109-08 ")
 ;;3702
 ;;21,"54868-3109-09 ")
 ;;3703
 ;;21,"54868-3113-00 ")
 ;;3704
 ;;21,"54868-3113-03 ")
 ;;3705
 ;;21,"54868-3113-05 ")
 ;;3706
 ;;21,"54868-3113-07 ")
 ;;3707
 ;;21,"54868-3113-08 ")
 ;;3708
 ;;21,"54868-3113-09 ")
 ;;3709
 ;;21,"54868-3169-00 ")
 ;;3710
 ;;21,"54868-3169-01 ")
 ;;3711
 ;;21,"54868-3169-02 ")
 ;;3712
 ;;21,"54868-3169-04 ")
 ;;3713
 ;;21,"54868-3169-05 ")
 ;;3714
 ;;21,"54868-3244-00 ")
 ;;3715
 ;;21,"54868-3343-00 ")
 ;;3716
 ;;21,"54868-3343-01 ")
 ;;3717
 ;;21,"54868-3343-02 ")
 ;;3718
 ;;21,"54868-3343-03 ")
 ;;3719
 ;;21,"54868-3384-00 ")
 ;;3720
 ;;21,"54868-3480-00 ")
 ;;3721
 ;;21,"54868-3511-04 ")
 ;;3722
 ;;21,"54868-3695-00 ")
 ;;3723
 ;;21,"54868-3742-01 ")
 ;;3724
 ;;21,"54868-3742-02 ")
 ;;3725
 ;;21,"54868-3742-03 ")
 ;;3726
 ;;21,"54868-3820-00 ")
 ;;3727
 ;;21,"54868-3923-00 ")
 ;;3728
 ;;21,"54868-3923-01 ")
 ;;3729
 ;;21,"54868-3923-02 ")
 ;;3730
 ;;21,"54868-3923-03 ")
 ;;3731
 ;;21,"54868-3923-04 ")
 ;;3732
 ;;21,"54868-3923-05 ")
 ;;3733
 ;;21,"54868-4047-00 ")
 ;;3734
 ;;21,"54868-4078-00 ")
 ;;3735
 ;;21,"54868-4078-01 ")
 ;;3736
 ;;21,"54868-4078-02 ")
 ;;3737
 ;;21,"54868-4125-01 ")
 ;;3738
 ;;21,"54868-4125-02 ")
 ;;3739
 ;;21,"54868-4131-01 ")
 ;;3740
 ;;21,"54868-4150-00 ")
 ;;3741
 ;;21,"54868-4150-01 ")
 ;;3742
 ;;21,"54868-4150-02 ")
 ;;3743
 ;;21,"54868-4154-00 ")
 ;;3744
 ;;21,"54868-4155-00 ")
 ;;3745
 ;;21,"54868-4155-01 ")
 ;;3746
 ;;21,"54868-4155-02 ")
 ;;3747
 ;;21,"54868-4155-03 ")
 ;;3748
 ;;21,"54868-4175-00 ")
 ;;3749
 ;;21,"54868-4175-01 ")
 ;;3750
 ;;21,"54868-4175-02 ")
 ;;3751
 ;;21,"54868-4175-03 ")
 ;;3752
 ;;21,"54868-4175-04 ")
 ;;3753
 ;;21,"54868-4175-05 ")
 ;;3754
 ;;21,"54868-4191-00 ")
 ;;3755
 ;;21,"54868-4191-01 ")
 ;;3756
 ;;21,"54868-4366-00 ")
 ;;3757
 ;;21,"54868-4366-01 ")
 ;;3758
 ;;21,"54868-4367-00 ")
 ;;3759
 ;;21,"54868-4367-01 ")
 ;;3760
 ;;21,"54868-4367-02 ")
 ;;3761
 ;;21,"54868-4367-03 ")
 ;;3762
 ;;21,"54868-4468-00 ")
 ;;3763
 ;;21,"54868-4488-00 ")
 ;;3764
 ;;21,"54868-4527-00 ")
 ;;3765
 ;;21,"54868-4543-00 ")
 ;;3766
 ;;21,"54868-4543-01 ")
 ;;3767
 ;;21,"54868-4543-02 ")
 ;;3768
 ;;21,"54868-4547-00 ")
 ;;3769
 ;;21,"54868-4644-00 ")
 ;;3770
 ;;21,"54868-4644-01 ")
 ;;3771
 ;;21,"54868-4644-02 ")
 ;;3772
 ;;21,"54868-4651-00 ")
 ;;3773
 ;;21,"54868-4682-00 ")
 ;;3774
 ;;21,"54868-4682-01 ")
 ;;3775
 ;;21,"54868-4734-00 ")
 ;;3776
 ;;21,"54868-4734-01 ")
 ;;3777
 ;;21,"54868-4734-02 ")
 ;;3778
 ;;21,"54868-4734-03 ")
 ;;3779
 ;;21,"54868-4734-04 ")
 ;;3780
 ;;21,"54868-4735-01 ")
 ;;3781
 ;;21,"54868-4735-02 ")
 ;;3782
 ;;21,"54868-4743-00 ")
 ;;3783
 ;;21,"54868-4743-01 ")
 ;;3784
 ;;21,"54868-4743-02 ")
 ;;3785
 ;;21,"54868-4858-00 ")
 ;;3786
 ;;21,"54868-4858-01 ")
 ;;3787
 ;;21,"54868-4858-02 ")
 ;;3788
 ;;21,"54868-4858-03 ")
 ;;3789
 ;;21,"54868-4858-04 ")
 ;;3790
 ;;21,"54868-4858-05 ")
 ;;3791
 ;;21,"54868-4858-06 ")
 ;;3792
 ;;21,"54868-4858-07 ")
 ;;3793
 ;;21,"54868-4858-08 ")
 ;;3794
 ;;21,"54868-4898-00 ")
 ;;3795
 ;;21,"54868-4898-01 ")
 ;;3796
 ;;21,"54868-4898-02 ")
 ;;3797
 ;;21,"54868-4898-03 ")
 ;;3798
 ;;21,"54868-4898-04 ")
 ;;3799
 ;;21,"54868-4919-00 ")
 ;;3800
 ;;21,"54868-4951-00 ")
 ;;3801
 ;;21,"54868-4951-01 ")
 ;;3802
 ;;21,"54868-4951-02 ")
 ;;3803
 ;;21,"54868-4971-00 ")
 ;;3804
 ;;21,"54868-4987-00 ")
 ;;3805
 ;;21,"54868-4987-01 ")
 ;;3806
 ;;21,"54868-4990-00 ")
 ;;3807
 ;;21,"54868-5022-00 ")
 ;;3808
 ;;21,"54868-5022-01 ")
 ;;3809
 ;;21,"54868-5022-02 ")
 ;;3810
 ;;21,"54868-5023-00 ")
 ;;3811
 ;;21,"54868-5023-01 ")
 ;;3812
 ;;21,"54868-5040-00 ")
 ;;3813
 ;;21,"54868-5040-01 ")
 ;;3814
 ;;21,"54868-5040-02 ")
 ;;3815
 ;;21,"54868-5044-00 ")
 ;;3816
 ;;21,"54868-5044-01 ")
 ;;3817
 ;;21,"54868-5044-02 ")
 ;;3818
 ;;21,"54868-5044-03 ")
 ;;3819
 ;;21,"54868-5044-04 ")
 ;;3820
 ;;21,"54868-5101-00 ")
 ;;3821
 ;;21,"54868-5101-01 ")
 ;;3822
 ;;21,"54868-5101-02 ")
 ;;3823
 ;;21,"54868-5165-00 ")
 ;;3824
 ;;21,"54868-5211-00 ")
 ;;3825
 ;;21,"54868-5211-01 ")
 ;;3826
 ;;21,"54868-5211-02 ")
 ;;3827
 ;;21,"54868-5211-03 ")
 ;;3828
 ;;21,"54868-5211-04 ")
 ;;3829
 ;;21,"54868-5269-00 ")
 ;;3830
 ;;21,"54868-5404-00 ")
 ;;3831
 ;;21,"54868-5430-00 ")
 ;;3832
 ;;21,"54868-5430-01 ")
 ;;3833
 ;;21,"54868-5430-02 ")
 ;;3834
 ;;21,"54868-5471-00 ")
 ;;3835
 ;;21,"54868-5478-00 ")
 ;;3836
 ;;21,"54868-5478-01 ")
 ;;3837
 ;;21,"54868-5478-02 ")
 ;;3838
 ;;21,"54868-5487-00 ")
 ;;3839
 ;;21,"54868-5533-00 ")
 ;;3840
 ;;21,"54868-5589-00 ")
 ;;3841
 ;;21,"54868-5647-00 ")
 ;;3842
 ;;21,"54868-5648-00 ")
 ;;3843
 ;;21,"54868-5648-01 ")
 ;;3844
 ;;21,"54868-5648-02 ")
 ;;3845
 ;;21,"54868-5676-00 ")
 ;;3846
 ;;21,"54868-5756-00 ")
 ;;3847
 ;;21,"54868-5757-00 ")
 ;;3848
 ;;21,"54868-5767-00 ")
 ;;3849
 ;;21,"54868-5768-00 ")
 ;;3850
 ;;21,"54868-5768-01 ")
 ;;3851
 ;;21,"54868-5769-00 ")
 ;;3852
 ;;21,"54868-5769-01 ")
 ;;3853
 ;;21,"54868-5833-00 ")
 ;;3854
 ;;21,"54868-5981-00 ")
 ;;3855
 ;;21,"55045-1170-00 ")
 ;;3856
 ;;21,"55045-1170-01 ")
 ;;3857
 ;;21,"55045-1176-01 ")
 ;;3858
 ;;21,"55045-1189-01 ")
 ;;3859
 ;;21,"55045-1199-03 ")
 ;;3860
 ;;21,"55045-1201-03 ")
 ;;3861
 ;;21,"55045-1201-07 ")
 ;;3862
 ;;21,"55045-1201-08 ")
 ;;3863
 ;;21,"55045-1202-00 ")
 ;;3864
 ;;21,"55045-1202-01 ")
 ;;3865
 ;;21,"55045-1202-02 ")
 ;;3866
 ;;21,"55045-1202-03 ")
 ;;3867
 ;;21,"55045-1202-04 ")
 ;;3868
 ;;21,"55045-1202-05 ")
 ;;3869
 ;;21,"55045-1202-06 ")
 ;;3870
 ;;21,"55045-1202-07 ")
 ;;3871
 ;;21,"55045-1202-08 ")
 ;;3872
 ;;21,"55045-1202-09 ")
 ;;3873
 ;;21,"55045-1204-09 ")
 ;;3874
 ;;21,"55045-1207-00 ")
 ;;3875
 ;;21,"55045-1207-01 ")
 ;;3876
 ;;21,"55045-1207-02 ")
 ;;3877
 ;;21,"55045-1207-03 ")
 ;;3878
 ;;21,"55045-1207-04 ")
 ;;3879
 ;;21,"55045-1207-05 ")
 ;;3880
 ;;21,"55045-1207-06 ")
 ;;3881
 ;;21,"55045-1207-07 ")
 ;;3882