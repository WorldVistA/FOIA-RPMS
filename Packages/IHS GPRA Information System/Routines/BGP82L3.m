BGP82L3 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55289-0892-86 ")
 ;;682
 ;;21,"55289-0892-90 ")
 ;;683
 ;;21,"55289-0892-93 ")
 ;;684
 ;;21,"55289-0892-98 ")
 ;;685
 ;;21,"55289-0976-01 ")
 ;;686
 ;;21,"55289-0976-14 ")
 ;;687
 ;;21,"55289-0976-30 ")
 ;;688
 ;;21,"55289-0976-60 ")
 ;;689
 ;;21,"55289-0976-90 ")
 ;;690
 ;;21,"55289-0976-93 ")
 ;;691
 ;;21,"55700-0022-30 ")
 ;;692
 ;;21,"55700-0256-30 ")
 ;;693
 ;;21,"55700-0256-60 ")
 ;;694
 ;;21,"55700-0256-90 ")
 ;;695
 ;;21,"55700-0395-30 ")
 ;;696
 ;;21,"55700-0395-60 ")
 ;;697
 ;;21,"55700-0395-90 ")
 ;;698
 ;;21,"55700-0469-30 ")
 ;;699
 ;;21,"55700-0469-60 ")
 ;;700
 ;;21,"55700-0469-90 ")
 ;;701
 ;;21,"57237-0020-01 ")
 ;;702
 ;;21,"57237-0021-01 ")
 ;;703
 ;;21,"57237-0021-05 ")
 ;;704
 ;;21,"57237-0021-99 ")
 ;;705
 ;;21,"57237-0022-01 ")
 ;;706
 ;;21,"57237-0022-05 ")
 ;;707
 ;;21,"57237-0022-99 ")
 ;;708
 ;;21,"57237-0023-01 ")
 ;;709
 ;;21,"57237-0023-05 ")
 ;;710
 ;;21,"57237-0024-01 ")
 ;;711
 ;;21,"57237-0024-05 ")
 ;;712
 ;;21,"57237-0025-01 ")
 ;;713
 ;;21,"57237-0025-05 ")
 ;;714
 ;;21,"57664-0398-13 ")
 ;;715
 ;;21,"57664-0398-18 ")
 ;;716
 ;;21,"57664-0398-88 ")
 ;;717
 ;;21,"57664-0399-13 ")
 ;;718
 ;;21,"57664-0399-18 ")
 ;;719
 ;;21,"57664-0399-88 ")
 ;;720
 ;;21,"58118-0321-03 ")
 ;;721
 ;;21,"58118-0321-06 ")
 ;;722
 ;;21,"58118-0322-03 ")
 ;;723
 ;;21,"58118-0322-06 ")
 ;;724
 ;;21,"58118-0461-06 ")
 ;;725
 ;;21,"58118-0461-08 ")
 ;;726
 ;;21,"58118-0461-09 ")
 ;;727
 ;;21,"58118-2331-03 ")
 ;;728
 ;;21,"58118-2331-09 ")
 ;;729
 ;;21,"58118-2332-03 ")
 ;;730
 ;;21,"58118-2332-09 ")
 ;;731
 ;;21,"58118-8343-08 ")
 ;;732
 ;;21,"58118-8343-09 ")
 ;;733
 ;;21,"58864-0027-14 ")
 ;;734
 ;;21,"58864-0027-30 ")
 ;;735
 ;;21,"58864-0027-60 ")
 ;;736
 ;;21,"58864-0027-90 ")
 ;;737
 ;;21,"58864-0161-30 ")
 ;;738
 ;;21,"58864-0161-60 ")
 ;;739
 ;;21,"58864-0224-30 ")
 ;;740
 ;;21,"58864-0224-60 ")
 ;;741
 ;;21,"58864-0224-93 ")
 ;;742
 ;;21,"58864-0689-30 ")
 ;;743
 ;;21,"58864-0689-60 ")
 ;;744
 ;;21,"58864-0705-30 ")
 ;;745
 ;;21,"58864-0711-30 ")
 ;;746
 ;;21,"58864-0858-30 ")
 ;;747
 ;;21,"58864-0952-30 ")
 ;;748
 ;;21,"58864-0953-30 ")
 ;;749
 ;;21,"58864-0956-30 ")
 ;;750
 ;;21,"58864-0957-30 ")
 ;;751
 ;;21,"59762-0540-01 ")
 ;;752
 ;;21,"59762-0541-01 ")
 ;;753
 ;;21,"59762-0541-02 ")
 ;;754
 ;;21,"59762-0542-01 ")
 ;;755
 ;;21,"59762-0542-02 ")
 ;;756
 ;;21,"59762-2331-06 ")
 ;;757
 ;;21,"59762-2331-08 ")
 ;;758
 ;;21,"59762-2332-06 ")
 ;;759
 ;;21,"59762-2332-08 ")
 ;;760
 ;;21,"59762-5032-01 ")
 ;;761
 ;;21,"59762-5032-02 ")
 ;;762
 ;;21,"59762-5033-01 ")
 ;;763
 ;;21,"59762-5033-02 ")
 ;;764
 ;;21,"60429-0082-01 ")
 ;;765
 ;;21,"60429-0082-10 ")
 ;;766
 ;;21,"60429-0083-01 ")
 ;;767
 ;;21,"60429-0083-10 ")
 ;;768
 ;;21,"60429-0283-01 ")
 ;;769
 ;;21,"60429-0284-01 ")
 ;;770
 ;;21,"60429-0285-01 ")
 ;;771
 ;;21,"60429-0918-01 ")
 ;;772
 ;;21,"60429-0919-01 ")
 ;;773
 ;;21,"60429-0920-01 ")
 ;;774
 ;;21,"60505-0141-00 ")
 ;;775
 ;;21,"60505-0141-01 ")
 ;;776
 ;;21,"60505-0141-02 ")
 ;;777
 ;;21,"60505-0141-08 ")
 ;;778
 ;;21,"60505-0142-00 ")
 ;;779
 ;;21,"60505-0142-01 ")
 ;;780
 ;;21,"60505-0142-02 ")
 ;;781
 ;;21,"60505-0142-04 ")
 ;;782
 ;;21,"60760-0024-60 ")
 ;;783
 ;;21,"60760-0024-98 ")
 ;;784
 ;;21,"60760-0141-60 ")
 ;;785
 ;;21,"60760-0141-98 ")
 ;;786
 ;;21,"60760-0175-30 ")
 ;;787
 ;;21,"60760-0175-90 ")
 ;;788
 ;;21,"60760-0176-30 ")
 ;;789
 ;;21,"60760-0176-90 ")
 ;;790
 ;;21,"60760-0228-30 ")
 ;;791
 ;;21,"60760-0229-30 ")
 ;;792
 ;;21,"60760-0229-90 ")
 ;;793
 ;;21,"60760-0230-30 ")
 ;;794
 ;;21,"60760-0230-90 ")
 ;;795
 ;;21,"60760-0394-30 ")
 ;;796
 ;;21,"61442-0115-01 ")
 ;;797
 ;;21,"61442-0115-05 ")
 ;;798
 ;;21,"61442-0116-01 ")
 ;;799
 ;;21,"61442-0116-05 ")
 ;;800
 ;;21,"61442-0117-01 ")
 ;;801
 ;;21,"61442-0117-05 ")
 ;;802
 ;;21,"61919-0250-60 ")
 ;;803
 ;;21,"61919-0250-90 ")
 ;;804
 ;;21,"61919-0286-90 ")
 ;;805
 ;;21,"61919-0330-30 ")
 ;;806
 ;;21,"61919-0330-60 ")
 ;;807
 ;;21,"61919-0378-60 ")
 ;;808
 ;;21,"61919-0418-60 ")
 ;;809
 ;;21,"61919-0448-60 ")
 ;;810
 ;;21,"61919-0476-30 ")
 ;;811
 ;;21,"61919-0725-90 ")
 ;;812
 ;;21,"63187-0811-30 ")
 ;;813
 ;;21,"63629-1255-01 ")
 ;;814
 ;;21,"63629-1255-02 ")
 ;;815
 ;;21,"63629-1392-01 ")
 ;;816
 ;;21,"63629-1392-02 ")
 ;;817
 ;;21,"63629-1392-03 ")
 ;;818
 ;;21,"63629-1393-01 ")
 ;;819
 ;;21,"63629-1393-02 ")
 ;;820
 ;;21,"63629-1393-03 ")
 ;;821
 ;;21,"63629-1393-04 ")
 ;;822
 ;;21,"63629-1394-01 ")
 ;;823
 ;;21,"63629-1394-02 ")
 ;;824
 ;;21,"63629-1394-03 ")
 ;;825
 ;;21,"63629-1398-01 ")
 ;;826
 ;;21,"63629-1398-02 ")
 ;;827
 ;;21,"63629-1398-03 ")
 ;;828
 ;;21,"63629-2793-01 ")
 ;;829
 ;;21,"63629-2793-03 ")
 ;;830
 ;;21,"63629-2793-04 ")
 ;;831
 ;;21,"63629-2793-05 ")
 ;;832
 ;;21,"63629-2907-01 ")
 ;;833
 ;;21,"63629-2907-02 ")
 ;;834
 ;;21,"63629-3043-01 ")
 ;;835
 ;;21,"63629-3043-02 ")
 ;;836
 ;;21,"63629-3158-01 ")
 ;;837
 ;;21,"63629-3158-02 ")
 ;;838
 ;;21,"63629-3158-03 ")
 ;;839
 ;;21,"63629-3397-03 ")
 ;;840
 ;;21,"63629-3998-01 ")
 ;;841
 ;;21,"63629-4071-01 ")
 ;;842
 ;;21,"63739-0119-10 ")
 ;;843
 ;;21,"63874-0316-01 ")
 ;;844
 ;;21,"63874-0316-02 ")
 ;;845
 ;;21,"63874-0316-04 ")
 ;;846
 ;;21,"63874-0316-05 ")
 ;;847
 ;;21,"63874-0316-10 ")
 ;;848
 ;;21,"63874-0316-12 ")
 ;;849
 ;;21,"63874-0316-14 ")
 ;;850
 ;;21,"63874-0316-15 ")
 ;;851
 ;;21,"63874-0316-20 ")
 ;;852
 ;;21,"63874-0316-21 ")
 ;;853
 ;;21,"63874-0316-24 ")
 ;;854
 ;;21,"63874-0316-28 ")
 ;;855
 ;;21,"63874-0316-30 ")
 ;;856
 ;;21,"63874-0316-50 ")
 ;;857
 ;;21,"63874-0316-60 ")
 ;;858
 ;;21,"63874-0316-81 ")
 ;;859
 ;;21,"63874-0316-90 ")
 ;;860
 ;;21,"63874-0317-01 ")
 ;;861
 ;;21,"63874-0317-02 ")
 ;;862
 ;;21,"63874-0317-04 ")
 ;;863
 ;;21,"63874-0317-10 ")
 ;;864
 ;;21,"63874-0317-12 ")
 ;;865
 ;;21,"63874-0317-14 ")
 ;;866
 ;;21,"63874-0317-15 ")
 ;;867
 ;;21,"63874-0317-20 ")
 ;;868
 ;;21,"63874-0317-24 ")
 ;;869
 ;;21,"63874-0317-28 ")
 ;;870
 ;;21,"63874-0317-30 ")
 ;;871
 ;;21,"63874-0317-40 ")
 ;;872
 ;;21,"63874-0317-50 ")
 ;;873
 ;;21,"63874-0317-60 ")
 ;;874
 ;;21,"63874-0317-90 ")
 ;;875
 ;;21,"63874-0357-01 ")
 ;;876
 ;;21,"63874-0357-02 ")
 ;;877
 ;;21,"63874-0357-10 ")
 ;;878
 ;;21,"63874-0357-12 ")
 ;;879
 ;;21,"63874-0357-14 ")
 ;;880
 ;;21,"63874-0357-15 ")
 ;;881
 ;;21,"63874-0357-20 ")
 ;;882
 ;;21,"63874-0357-21 ")
 ;;883
 ;;21,"63874-0357-24 ")
 ;;884
 ;;21,"63874-0357-30 ")
 ;;885
 ;;21,"63874-0357-40 ")
 ;;886
 ;;21,"63874-0357-60 ")
 ;;887
 ;;21,"63874-0432-01 ")
 ;;888
 ;;21,"63874-0432-02 ")
 ;;889
 ;;21,"63874-0432-04 ")
 ;;890
 ;;21,"63874-0432-10 ")
 ;;891
 ;;21,"63874-0432-14 ")
 ;;892
 ;;21,"63874-0432-20 ")
 ;;893
 ;;21,"63874-0432-21 ")
 ;;894
 ;;21,"63874-0432-24 ")
 ;;895
 ;;21,"63874-0432-28 ")
 ;;896
 ;;21,"63874-0432-30 ")
 ;;897
 ;;21,"63874-0432-50 ")
 ;;898
 ;;21,"63874-0432-60 ")
 ;;899
 ;;21,"63874-0432-81 ")
 ;;900
 ;;21,"63874-0432-90 ")
 ;;901
 ;;21,"63874-0588-01 ")
 ;;902
 ;;21,"63874-0588-04 ")
 ;;903
 ;;21,"63874-0588-10 ")
 ;;904
 ;;21,"63874-0588-14 ")
 ;;905
 ;;21,"63874-0588-20 ")
 ;;906
 ;;21,"63874-0588-30 ")
 ;;907
 ;;21,"63874-0588-60 ")
 ;;908
 ;;21,"63874-0588-80 ")
 ;;909
 ;;21,"63874-0588-90 ")
 ;;910
 ;;21,"63874-0665-01 ")
 ;;911
 ;;21,"63874-0665-04 ")
 ;;912
 ;;21,"63874-0665-10 ")
 ;;913
 ;;21,"63874-0665-14 ")
 ;;914
 ;;21,"63874-0665-30 ")
 ;;915
 ;;21,"63874-0665-60 ")
 ;;916
 ;;21,"63874-0665-90 ")
 ;;917
 ;;21,"64720-0123-10 ")
 ;;918
 ;;21,"64720-0125-10 ")
 ;;919
 ;;21,"64720-0125-11 ")
 ;;920
 ;;21,"64720-0290-10 ")
 ;;921
 ;;21,"64720-0291-10 ")
 ;;922
 ;;21,"64720-0292-10 ")
 ;;923
 ;;21,"64720-0292-11 ")
 ;;924
 ;;21,"64764-0302-30 ")
 ;;925
 ;;21,"64764-0304-30 ")
 ;;926
 ;;21,"64980-0279-03 ")
 ;;927
 ;;21,"64980-0280-01 ")
 ;;928
 ;;21,"64980-0280-05 ")
 ;;929
 ;;21,"64980-0280-10 ")
 ;;930
 ;;21,"64980-0281-01 ")
 ;;931
 ;;21,"64980-0281-05 ")
 ;;932
 ;;21,"64980-0281-10 ")
 ;;933
 ;;21,"65243-0176-09 ")
 ;;934
 ;;21,"65243-0176-12 ")
 ;;935
 ;;21,"65243-0176-18 ")
 ;;936
 ;;21,"65243-0176-27 ")
 ;;937
 ;;21,"65243-0176-36 ")
 ;;938
 ;;21,"65243-0183-18 ")
 ;;939
 ;;21,"65243-0185-36 ")
 ;;940
 ;;21,"65243-0325-09 ")
 ;;941
 ;;21,"65243-0325-18 ")
 ;;942
 ;;21,"65243-0343-09 ")
 ;;943
 ;;21,"65243-0343-36 ")
 ;;944
 ;;21,"65243-0346-09 ")
 ;;945
 ;;21,"65243-0375-09 ")
 ;;946
 ;;21,"65243-0378-09 ")
 ;;947
 ;;21,"65862-0028-01 ")
 ;;948
 ;;21,"65862-0029-01 ")
 ;;949
 ;;21,"65862-0029-05 ")
 ;;950
 ;;21,"65862-0030-01 ")
 ;;951
 ;;21,"65862-0030-99 ")
 ;;952
 ;;21,"65862-0080-01 ")
 ;;953
 ;;21,"65862-0080-05 ")
 ;;954
 ;;21,"65862-0081-01 ")
 ;;955
 ;;21,"65862-0081-05 ")
 ;;956
 ;;21,"65862-0082-01 ")
 ;;957
 ;;21,"65862-0082-05 ")
 ;;958
 ;;21,"66105-0984-03 ")
 ;;959
 ;;21,"66105-0984-06 ")
 ;;960
 ;;21,"66105-0984-10 ")
 ;;961
 ;;21,"66105-0984-11 ")
 ;;962
 ;;21,"66105-0984-50 ")
 ;;963
 ;;21,"66105-0985-03 ")
 ;;964
 ;;21,"66105-0985-06 ")
 ;;965
 ;;21,"66105-0985-10 ")
 ;;966
 ;;21,"66105-0985-11 ")
 ;;967
 ;;21,"66105-0985-50 ")
 ;;968
 ;;21,"66105-0986-03 ")
 ;;969
 ;;21,"66105-0986-06 ")
 ;;970
 ;;21,"66105-0986-10 ")
 ;;971
 ;;21,"66105-0986-11 ")
 ;;972
 ;;21,"66105-0986-50 ")
 ;;973
 ;;21,"66116-0233-30 ")
 ;;974
 ;;21,"66267-0099-30 ")
 ;;975
 ;;21,"66267-0100-30 ")
 ;;976
 ;;21,"66267-0100-60 ")
 ;;977
 ;;21,"66267-0100-90 ")
 ;;978
 ;;21,"66267-0100-91 ")
 ;;979
 ;;21,"66267-0100-92 ")
 ;;980
 ;;21,"66267-0103-30 ")
 ;;981
 ;;21,"66336-0028-90 ")
 ;;982
 ;;21,"66336-0269-90 ")
 ;;983
 ;;21,"66336-0712-90 ")
 ;;984
 ;;21,"66993-0821-30 ")
 ;;985
 ;;21,"66993-0822-30 ")
 ;;986
 ;;21,"67253-0460-10 ")
 ;;987
 ;;21,"67253-0461-10 ")
 ;;988
 ;;21,"67253-0461-11 ")
 ;;989
 ;;21,"67253-0461-50 ")
 ;;990
 ;;21,"67253-0462-10 ")
 ;;991
 ;;21,"67253-0462-11 ")
 ;;992
 ;;21,"67253-0462-50 ")
 ;;993
 ;;21,"67544-0097-32 ")
 ;;994
 ;;21,"67544-0097-53 ")
 ;;995
 ;;21,"67544-0097-60 ")
 ;;996
 ;;21,"67544-0097-70 ")
 ;;997
 ;;21,"67544-0097-80 ")
 ;;998
 ;;21,"67544-0097-92 ")
 ;;999
 ;;21,"67544-0097-94 ")
 ;;1000
 ;;21,"67544-0129-30 ")
 ;;1001
 ;;21,"67544-0129-53 ")
 ;;1002
 ;;21,"67544-0129-60 ")
 ;;1003
 ;;21,"67544-0129-70 ")
 ;;1004
 ;;21,"67544-0129-80 ")
 ;;1005
 ;;21,"67544-0129-92 ")
 ;;1006
 ;;21,"67544-0129-94 ")
 ;;1007
 ;;21,"67544-0199-80 ")
 ;;1008
 ;;21,"67544-0296-70 ")
 ;;1009
 ;;21,"67544-0302-32 ")
 ;;1010
 ;;21,"67544-0302-45 ")
 ;;1011
 ;;21,"67544-0302-60 ")
 ;;1012
 ;;21,"67544-0302-73 ")
 ;;1013
 ;;21,"67544-0302-80 ")
 ;;1014
 ;;21,"67544-0302-92 ")
 ;;1015
 ;;21,"67544-0302-98 ")
 ;;1016
 ;;21,"67544-0511-30 ")
 ;;1017
 ;;21,"67544-0511-70 ")
 ;;1018
 ;;21,"67544-0511-94 ")
 ;;1019
 ;;21,"67544-0566-53 ")
 ;;1020
 ;;21,"67544-0566-60 ")
 ;;1021
 ;;21,"67544-0566-70 ")
 ;;1022
 ;;21,"67544-0566-80 ")
 ;;1023