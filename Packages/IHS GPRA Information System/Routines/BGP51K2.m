BGP51K2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"43353-0620-53 ")
 ;;118
 ;;21,"43353-0620-59 ")
 ;;119
 ;;21,"43353-0620-60 ")
 ;;120
 ;;21,"43353-0669-07 ")
 ;;132
 ;;21,"43353-0669-10 ")
 ;;133
 ;;21,"43353-0669-14 ")
 ;;134
 ;;21,"43353-0669-15 ")
 ;;135
 ;;21,"43353-0669-20 ")
 ;;136
 ;;21,"43353-0669-45 ")
 ;;137
 ;;21,"43353-0669-53 ")
 ;;138
 ;;21,"43353-0669-59 ")
 ;;139
 ;;21,"43353-0669-60 ")
 ;;140
 ;;21,"43353-0670-07 ")
 ;;408
 ;;21,"43353-0670-10 ")
 ;;409
 ;;21,"43353-0670-14 ")
 ;;410
 ;;21,"43353-0670-15 ")
 ;;411
 ;;21,"43353-0670-20 ")
 ;;412
 ;;21,"43353-0670-21 ")
 ;;413
 ;;21,"43353-0670-25 ")
 ;;414
 ;;21,"43353-0670-28 ")
 ;;415
 ;;21,"43353-0670-30 ")
 ;;416
 ;;21,"43353-0670-40 ")
 ;;417
 ;;21,"43353-0670-45 ")
 ;;418
 ;;21,"43353-0670-53 ")
 ;;419
 ;;21,"43353-0670-59 ")
 ;;420
 ;;21,"43353-0670-60 ")
 ;;421
 ;;21,"43353-0670-62 ")
 ;;422
 ;;21,"43353-0727-30 ")
 ;;732
 ;;21,"43353-0727-60 ")
 ;;733
 ;;21,"43353-0743-30 ")
 ;;734
 ;;21,"43353-0743-60 ")
 ;;735
 ;;21,"43353-0841-30 ")
 ;;915
 ;;21,"47335-0586-83 ")
 ;;891
 ;;21,"47335-0587-88 ")
 ;;913
 ;;21,"47335-0588-88 ")
 ;;953
 ;;21,"47463-0012-28 ")
 ;;704
 ;;21,"47463-0012-30 ")
 ;;705
 ;;21,"47463-0012-60 ")
 ;;706
 ;;21,"47463-0012-90 ")
 ;;707
 ;;21,"47463-0396-28 ")
 ;;956
 ;;21,"47463-0396-30 ")
 ;;957
 ;;21,"47463-0824-30 ")
 ;;402
 ;;21,"47463-0824-60 ")
 ;;403
 ;;21,"47463-0824-71 ")
 ;;404
 ;;21,"47463-0824-90 ")
 ;;405
 ;;21,"47463-0825-06 ")
 ;;141
 ;;21,"47463-0825-30 ")
 ;;142
 ;;21,"47463-0825-71 ")
 ;;143
 ;;21,"47463-0825-90 ")
 ;;144
 ;;21,"47463-0827-30 ")
 ;;809
 ;;21,"47463-0854-30 ")
 ;;875
 ;;21,"49999-0037-00 ")
 ;;319
 ;;21,"49999-0037-10 ")
 ;;320
 ;;21,"49999-0037-15 ")
 ;;321
 ;;21,"49999-0037-20 ")
 ;;322
 ;;21,"49999-0037-30 ")
 ;;323
 ;;21,"49999-0037-60 ")
 ;;324
 ;;21,"49999-0037-90 ")
 ;;325
 ;;21,"49999-0453-15 ")
 ;;24
 ;;21,"49999-0453-30 ")
 ;;25
 ;;21,"49999-0604-15 ")
 ;;829
 ;;21,"49999-0604-30 ")
 ;;830
 ;;21,"49999-0604-60 ")
 ;;831
 ;;21,"49999-0737-00 ")
 ;;989
 ;;21,"49999-0737-14 ")
 ;;990
 ;;21,"49999-0737-15 ")
 ;;991
 ;;21,"49999-0737-30 ")
 ;;992
 ;;21,"49999-0737-60 ")
 ;;993
 ;;21,"49999-0737-90 ")
 ;;994
 ;;21,"49999-0763-00 ")
 ;;675
 ;;21,"49999-0763-30 ")
 ;;676
 ;;21,"49999-0764-30 ")
 ;;623
 ;;21,"49999-0764-60 ")
 ;;624
 ;;21,"49999-0778-30 ")
 ;;902
 ;;21,"49999-0779-15 ")
 ;;938
 ;;21,"49999-0779-30 ")
 ;;939
 ;;21,"49999-0931-00 ")
 ;;604
 ;;21,"49999-0931-02 ")
 ;;605
 ;;21,"49999-0931-15 ")
 ;;606
 ;;21,"49999-0931-30 ")
 ;;607
 ;;21,"49999-0931-60 ")
 ;;608
 ;;21,"49999-0932-00 ")
 ;;172
 ;;21,"49999-0932-30 ")
 ;;173
 ;;21,"49999-0932-60 ")
 ;;174
 ;;21,"50436-0193-01 ")
 ;;995
 ;;21,"50436-1006-01 ")
 ;;862
 ;;21,"50436-3026-01 ")
 ;;603
 ;;21,"50436-3030-01 ")
 ;;175
 ;;21,"50436-3030-02 ")
 ;;176
 ;;21,"50436-5537-01 ")
 ;;885
 ;;21,"50436-5538-01 ")
 ;;903
 ;;21,"50436-5538-04 ")
 ;;904
 ;;21,"50436-5539-01 ")
 ;;943
 ;;21,"50436-5539-04 ")
 ;;944
 ;;21,"51079-0724-01 ")
 ;;177
 ;;21,"51079-0724-20 ")
 ;;178
 ;;21,"51079-0725-01 ")
 ;;601
 ;;21,"51079-0725-20 ")
 ;;602
 ;;21,"52959-0362-10 ")
 ;;26
 ;;21,"52959-0362-15 ")
 ;;27
 ;;21,"52959-0362-20 ")
 ;;28
 ;;21,"52959-0362-30 ")
 ;;29
 ;;21,"52959-0362-60 ")
 ;;30
 ;;21,"52959-0363-10 ")
 ;;260
 ;;21,"52959-0363-15 ")
 ;;261
 ;;21,"52959-0363-20 ")
 ;;262
 ;;21,"52959-0363-21 ")
 ;;263
 ;;21,"52959-0363-25 ")
 ;;264
 ;;21,"52959-0363-30 ")
 ;;265
 ;;21,"52959-0363-60 ")
 ;;266
 ;;21,"52959-0727-00 ")
 ;;826
 ;;21,"52959-0727-10 ")
 ;;827
 ;;21,"52959-0727-30 ")
 ;;828
 ;;21,"52959-0852-00 ")
 ;;996
 ;;21,"52959-0852-10 ")
 ;;997
 ;;21,"52959-0852-12 ")
 ;;998
 ;;21,"52959-0852-30 ")
 ;;999
 ;;21,"52959-0852-60 ")
 ;;1000
 ;;21,"52959-0870-30 ")
 ;;677
 ;;21,"52959-0879-02 ")
 ;;181
 ;;21,"52959-0879-10 ")
 ;;182
 ;;21,"52959-0879-14 ")
 ;;183
 ;;21,"52959-0879-15 ")
 ;;184
 ;;21,"52959-0879-20 ")
 ;;185
 ;;21,"52959-0879-28 ")
 ;;186
 ;;21,"52959-0879-30 ")
 ;;187
 ;;21,"52959-0879-42 ")
 ;;1
 ;;21,"52959-0879-60 ")
 ;;179
 ;;21,"52959-0879-90 ")
 ;;180
 ;;21,"52959-0880-00 ")
 ;;611
 ;;21,"52959-0880-02 ")
 ;;612
 ;;21,"52959-0880-10 ")
 ;;613
 ;;21,"52959-0880-14 ")
 ;;614
 ;;21,"52959-0880-15 ")
 ;;615
 ;;21,"52959-0880-20 ")
 ;;616
 ;;21,"52959-0880-28 ")
 ;;617
 ;;21,"52959-0880-30 ")
 ;;618
 ;;21,"52959-0880-45 ")
 ;;259
 ;;21,"52959-0880-60 ")
 ;;609
 ;;21,"52959-0880-90 ")
 ;;610
 ;;21,"52959-0881-30 ")
 ;;770
 ;;21,"52959-0919-00 ")
 ;;940
 ;;21,"52959-0919-30 ")
 ;;941
 ;;21,"52959-0919-60 ")
 ;;942
 ;;21,"52959-0957-30 ")
 ;;863
 ;;21,"52959-0971-30 ")
 ;;794
 ;;21,"53002-0502-05 ")
 ;;619
 ;;21,"53002-0502-10 ")
 ;;620
 ;;21,"53002-0502-20 ")
 ;;621
 ;;21,"53002-0502-30 ")
 ;;622
 ;;21,"53002-1292-01 ")
 ;;188
 ;;21,"53002-1292-02 ")
 ;;189
 ;;21,"53002-1292-03 ")
 ;;190
 ;;21,"53002-1594-01 ")
 ;;864
 ;;21,"54569-3827-03 ")
 ;;41
 ;;21,"54569-3828-01 ")
 ;;310
 ;;21,"54569-4837-00 ")
 ;;824
 ;;21,"54569-5684-00 ")
 ;;965
 ;;21,"54569-5696-00 ")
 ;;921
 ;;21,"54569-5760-00 ")
 ;;717
 ;;21,"54569-5760-01 ")
 ;;718
 ;;21,"54569-5906-00 ")
 ;;145
 ;;21,"54569-5906-01 ")
 ;;146
 ;;21,"54569-5906-02 ")
 ;;147
 ;;21,"54569-5906-03 ")
 ;;148
 ;;21,"54569-5906-04 ")
 ;;149
 ;;21,"54569-5907-00 ")
 ;;479
 ;;21,"54569-5907-01 ")
 ;;480
 ;;21,"54569-6118-00 ")
 ;;879
 ;;21,"54569-6118-01 ")
 ;;880
 ;;21,"54569-6231-00 ")
 ;;724
 ;;21,"54569-6231-01 ")
 ;;725
 ;;21,"54569-6378-00 ")
 ;;646
 ;;21,"54868-0845-00 ")
 ;;150
 ;;21,"54868-0845-01 ")
 ;;151
 ;;21,"54868-0845-02 ")
 ;;152
 ;;21,"54868-0845-03 ")
 ;;153
 ;;21,"54868-0846-00 ")
 ;;481
 ;;21,"54868-0846-01 ")
 ;;482
 ;;21,"54868-0846-02 ")
 ;;483
 ;;21,"54868-0846-03 ")
 ;;484
 ;;21,"54868-0846-04 ")
 ;;485
 ;;21,"54868-0846-05 ")
 ;;486
 ;;21,"54868-0846-06 ")
 ;;487
 ;;21,"54868-2642-00 ")
 ;;42
 ;;21,"54868-2642-01 ")
 ;;43
 ;;21,"54868-2642-02 ")
 ;;44
 ;;21,"54868-2642-03 ")
 ;;45
 ;;21,"54868-2642-04 ")
 ;;46
 ;;21,"54868-2643-00 ")
 ;;311
 ;;21,"54868-2643-01 ")
 ;;312
 ;;21,"54868-2643-02 ")
 ;;313
 ;;21,"54868-2643-04 ")
 ;;314
 ;;21,"54868-2643-05 ")
 ;;315
 ;;21,"54868-2643-06 ")
 ;;316
 ;;21,"54868-2643-07 ")
 ;;317
 ;;21,"54868-2643-08 ")
 ;;318
 ;;21,"54868-4431-00 ")
 ;;820
 ;;21,"54868-4431-01 ")
 ;;821
 ;;21,"54868-4431-02 ")
 ;;822
 ;;21,"54868-4431-03 ")
 ;;823
 ;;21,"54868-5139-00 ")
 ;;767
 ;;21,"54868-5139-01 ")
 ;;768
 ;;21,"54868-5273-00 ")
 ;;918
 ;;21,"54868-5273-01 ")
 ;;919
 ;;21,"54868-5273-02 ")
 ;;920
 ;;21,"54868-5394-00 ")
 ;;966
 ;;21,"54868-5394-01 ")
 ;;967
 ;;21,"54868-5394-02 ")
 ;;968
 ;;21,"54868-5394-03 ")
 ;;969
 ;;21,"54868-5426-00 ")
 ;;719
 ;;21,"54868-5426-01 ")
 ;;720
 ;;21,"54868-5426-02 ")
 ;;721
 ;;21,"54868-5426-03 ")
 ;;722
 ;;21,"54868-5426-04 ")
 ;;723
 ;;21,"54868-5439-00 ")
 ;;895
 ;;21,"54868-5439-01 ")
 ;;896
 ;;21,"54868-5461-00 ")
 ;;643
 ;;21,"54868-5461-01 ")
 ;;644
 ;;21,"54868-5461-02 ")
 ;;645
 ;;21,"54868-5908-00 ")
 ;;838
 ;;21,"54868-5908-01 ")
 ;;839
 ;;21,"54868-5909-00 ")
 ;;775
 ;;21,"54868-5909-01 ")
 ;;776
 ;;21,"54868-6189-00 ")
 ;;661
 ;;21,"54868-6189-01 ")
 ;;662
 ;;21,"54868-6215-00 ")
 ;;750
 ;;21,"54868-6215-01 ")
 ;;751
 ;;21,"54868-6215-02 ")
 ;;752
 ;;21,"54868-6215-03 ")
 ;;753
 ;;21,"55045-2271-00 ")
 ;;274
 ;;21,"55045-2271-01 ")
 ;;275
 ;;21,"55045-2271-02 ")
 ;;276
 ;;21,"55045-2271-06 ")
 ;;277
 ;;21,"55045-2271-07 ")
 ;;278
 ;;21,"55045-2271-08 ")
 ;;279
 ;;21,"55045-2271-09 ")
 ;;280
 ;;21,"55045-2812-06 ")
 ;;6
 ;;21,"55045-2812-07 ")
 ;;7
 ;;21,"55045-2812-08 ")
 ;;8
 ;;21,"55045-3034-07 ")
 ;;774
 ;;21,"55045-3302-08 ")
 ;;837
 ;;21,"55045-3438-08 ")
 ;;627
 ;;21,"55045-3461-08 ")
 ;;922
 ;;21,"55045-3462-08 ")
 ;;971
 ;;21,"55045-3633-01 ")
 ;;678
 ;;21,"55045-3633-02 ")
 ;;679
 ;;21,"55045-3811-01 ")
 ;;562
 ;;21,"55045-3811-02 ")
 ;;563
 ;;21,"55045-3811-03 ")
 ;;564
 ;;21,"55045-3811-06 ")
 ;;565
 ;;21,"55045-3812-01 ")
 ;;241
 ;;21,"55045-3812-03 ")
 ;;242
 ;;21,"55048-0012-28 ")
 ;;680
 ;;21,"55048-0012-30 ")
 ;;681
 ;;21,"55048-0012-60 ")
 ;;682
 ;;21,"55048-0012-90 ")
 ;;683
 ;;21,"55048-0396-28 ")
 ;;972
 ;;21,"55048-0396-30 ")
 ;;973
 ;;21,"55048-0824-30 ")
 ;;574
 ;;21,"55048-0824-60 ")
 ;;575
 ;;21,"55048-0824-71 ")
 ;;576
 ;;21,"55048-0824-90 ")
 ;;577
 ;;21,"55048-0825-06 ")
 ;;252
 ;;21,"55048-0825-30 ")
 ;;253
 ;;21,"55048-0825-71 ")
 ;;254
 ;;21,"55048-0825-90 ")
 ;;255
 ;;21,"55048-0827-30 ")
 ;;777
 ;;21,"55048-0854-30 ")
 ;;840
 ;;21,"55048-0881-30 ")
 ;;580
 ;;21,"55048-0891-30 ")
 ;;581
 ;;21,"55111-0478-01 ")
 ;;250
 ;;21,"55111-0478-05 ")
 ;;251
 ;;21,"55111-0479-01 ")
 ;;578
 ;;21,"55111-0479-05 ")
 ;;579
 ;;21,"55111-0617-01 ")
 ;;948
 ;;21,"55111-0619-01 ")
 ;;908
 ;;21,"55111-0629-30 ")
 ;;888
 ;;21,"55289-0014-30 ")
 ;;970
 ;;21,"55289-0205-30 ")
 ;;684
 ;;21,"55289-0399-02 ")
 ;;244
 ;;21,"55289-0399-03 ")
 ;;245
 ;;21,"55289-0399-10 ")
 ;;246
 ;;21,"55289-0399-14 ")
 ;;247
 ;;21,"55289-0399-30 ")
 ;;248
 ;;21,"55289-0399-60 ")
 ;;249
 ;;21,"55289-0399-79 ")
 ;;2
 ;;21,"55289-0399-90 ")
 ;;243
 ;;21,"55289-0419-01 ")
 ;;566
 ;;21,"55289-0419-06 ")
 ;;567
 ;;21,"55289-0419-10 ")
 ;;568
 ;;21,"55289-0419-14 ")
 ;;569
 ;;21,"55289-0419-15 ")
 ;;570
 ;;21,"55289-0419-21 ")
 ;;571
 ;;21,"55289-0419-30 ")
 ;;572
 ;;21,"55289-0419-60 ")
 ;;573
 ;;21,"55289-0572-30 ")
 ;;626
 ;;21,"55289-0729-06 ")
 ;;3
 ;;21,"55289-0729-12 ")
 ;;4
 ;;21,"55289-0729-30 ")
 ;;5
 ;;21,"55289-0792-06 ")
 ;;269
 ;;21,"55289-0792-10 ")
 ;;270
 ;;21,"55289-0792-12 ")
 ;;271
 ;;21,"55289-0792-20 ")
 ;;272
 ;;21,"55289-0792-30 ")
 ;;273
 ;;21,"55700-0132-30 ")
 ;;889
 ;;21,"55700-0133-30 ")
 ;;907
 ;;21,"55700-0135-30 ")
 ;;947
 ;;21,"57664-0515-13 ")
 ;;256
 ;;21,"57664-0515-18 ")
 ;;257
 ;;21,"57664-0515-88 ")
 ;;258
 ;;21,"57664-0516-13 ")
 ;;582
 ;;21,"57664-0516-18 ")
 ;;583
 ;;21,"57664-0516-88 ")
 ;;584
 ;;21,"58016-0040-00 ")
 ;;923
 ;;21,"58016-0040-30 ")
 ;;924
 ;;21,"58016-0040-60 ")
 ;;925
 ;;21,"58016-0040-90 ")
 ;;926
 ;;21,"58016-0292-00 ")
 ;;960
 ;;21,"58016-0292-30 ")
 ;;961
 ;;21,"58016-0292-60 ")
 ;;962
 ;;21,"58016-0292-90 ")
 ;;963
 ;;21,"58016-0341-00 ")
 ;;302
 ;;21,"58016-0341-10 ")
 ;;303
 ;;21,"58016-0341-20 ")
 ;;304
 ;;21,"58016-0341-30 ")
 ;;305
 ;;21,"58016-0341-40 ")
 ;;306
 ;;21,"58016-0341-60 ")
 ;;307
 ;;21,"58016-0341-90 ")
 ;;308
 ;;21,"58016-0342-00 ")
 ;;33
 ;;21,"58016-0342-10 ")
 ;;34
 ;;21,"58016-0342-20 ")
 ;;35
 ;;21,"58016-0342-30 ")
 ;;36
 ;;21,"58016-0342-40 ")
 ;;37
 ;;21,"58016-0342-60 ")
 ;;38
 ;;21,"58016-0342-90 ")
 ;;39
 ;;21,"58016-0596-00 ")
 ;;816
 ;;21,"58016-0596-30 ")
 ;;817
 ;;21,"58016-0596-60 ")
 ;;818
 ;;21,"58016-0596-90 ")
 ;;819
 ;;21,"58016-0863-00 ")
 ;;713
 ;;21,"58016-0863-30 ")
 ;;714
 ;;21,"58016-0863-60 ")
 ;;715
 ;;21,"58016-0863-90 ")
 ;;716
 ;;21,"58118-2605-03 ")
 ;;501
 ;;21,"58118-2605-06 ")
 ;;502
 ;;21,"58118-5316-03 ")
 ;;726
 ;;21,"58864-0700-15 ")
 ;;309
 ;;21,"58864-0891-06 ")
 ;;40
 ;;21,"59011-0255-30 ")
 ;;758
 ;;21,"59011-0256-30 ")
 ;;757
 ;;21,"59762-2630-01 ")
 ;;764
 ;;21,"59762-2630-04 ")
 ;;765
 ;;21,"59762-2631-01 ")
 ;;813
 ;;21,"59762-2631-04 ")
 ;;814
 ;;21,"60429-0530-01 ")
 ;;154
 ;;21,"60429-0530-05 ")
 ;;155
 ;;21,"60429-0530-20 ")
 ;;156
 ;;21,"60429-0530-30 ")
 ;;157
 ;;21,"60429-0530-60 ")
 ;;158
 ;;21,"60429-0530-90 ")
 ;;159
 ;;21,"60429-0531-01 ")
 ;;488
 ;;21,"60429-0531-05 ")
 ;;489
 ;;21,"60429-0531-15 ")
 ;;490
 ;;21,"60429-0531-20 ")
 ;;491
 ;;21,"60429-0531-30 ")
 ;;492
 ;;21,"60429-0531-60 ")
 ;;493
 ;;21,"60429-0531-90 ")
 ;;494
 ;;21,"60429-0546-01 ")
 ;;647
 ;;21,"60429-0547-01 ")
 ;;727
 ;;21,"60429-0547-05 ")
 ;;728
 ;;21,"60505-2604-00 ")
 ;;160
 ;;21,"60505-2604-01 ")
 ;;161
 ;;21,"60505-2604-08 ")
 ;;162
 ;;21,"60505-2605-00 ")
 ;;497
 ;;21,"60505-2605-01 ")
 ;;498
 ;;21,"60505-2605-08 ")
 ;;499
 ;;21,"60760-0116-30 ")
 ;;729
 ;;21,"60760-0191-30 ")
 ;;917
 ;;21,"60760-0193-30 ")
 ;;964
 ;;21,"60760-0211-30 ")
 ;;881
 ;;21,"60760-0288-30 ")
 ;;500
 ;;21,"60760-0515-30 ")
 ;;164
 ;;21,"60760-0550-30 ")
 ;;642
 ;;21,"60760-0551-30 ")
 ;;712
 ;;21,"60793-0145-01 ")
 ;;766
 ;;21,"60793-0146-01 ")
 ;;815
 ;;21,"61442-0231-01 ")
 ;;163
 ;;21,"61442-0232-01 ")
 ;;496
 ;;21,"61919-0527-30 ")
 ;;495
 ;;21,"61919-0528-30 ")
 ;;165
 ;;21,"61919-0528-60 ")
 ;;166
 ;;21,"61919-0955-30 ")
 ;;743
 ;;21,"63402-0190-30 ")
 ;;901
 ;;21,"63402-0191-10 ")
 ;;927
 ;;21,"63402-0193-10 ")
 ;;985
 ;;21,"63629-1256-01 ")
 ;;548