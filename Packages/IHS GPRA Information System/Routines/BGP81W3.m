BGP81W3 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"39328-0050-10 ")
 ;;682
 ;;21,"39328-0051-10 ")
 ;;683
 ;;21,"39328-0052-10 ")
 ;;684
 ;;21,"39822-5500-02 ")
 ;;685
 ;;21,"39822-5500-03 ")
 ;;686
 ;;21,"39822-5500-05 ")
 ;;687
 ;;21,"39822-5500-06 ")
 ;;688
 ;;21,"39822-5525-02 ")
 ;;689
 ;;21,"39822-5525-03 ")
 ;;690
 ;;21,"39822-5550-05 ")
 ;;691
 ;;21,"39822-5550-06 ")
 ;;692
 ;;21,"40076-0318-12 ")
 ;;693
 ;;21,"40076-0319-12 ")
 ;;694
 ;;21,"40076-0320-12 ")
 ;;695
 ;;21,"40085-0218-12 ")
 ;;696
 ;;21,"40085-0219-12 ")
 ;;697
 ;;21,"40085-0220-12 ")
 ;;698
 ;;21,"42192-0336-01 ")
 ;;699
 ;;21,"42192-0338-01 ")
 ;;700
 ;;21,"42192-0338-05 ")
 ;;701
 ;;21,"42192-0339-01 ")
 ;;702
 ;;21,"42192-0339-05 ")
 ;;703
 ;;21,"42192-0340-01 ")
 ;;704
 ;;21,"42192-0340-05 ")
 ;;705
 ;;21,"42192-0520-16 ")
 ;;706
 ;;21,"42192-0607-04 ")
 ;;707
 ;;21,"42192-0607-16 ")
 ;;708
 ;;21,"42254-0045-10 ")
 ;;709
 ;;21,"42254-0045-15 ")
 ;;710
 ;;21,"42254-0045-20 ")
 ;;711
 ;;21,"42254-0045-30 ")
 ;;712
 ;;21,"42254-0057-30 ")
 ;;713
 ;;21,"42254-0057-90 ")
 ;;714
 ;;21,"42254-0140-04 ")
 ;;715
 ;;21,"42254-0268-20 ")
 ;;716
 ;;21,"42291-0214-01 ")
 ;;717
 ;;21,"42291-0225-01 ")
 ;;718
 ;;21,"42291-0225-10 ")
 ;;719
 ;;21,"42291-0244-04 ")
 ;;720
 ;;21,"42291-0244-16 ")
 ;;721
 ;;21,"42291-0245-01 ")
 ;;722
 ;;21,"42291-0322-50 ")
 ;;723
 ;;21,"42291-0322-90 ")
 ;;724
 ;;21,"42291-0323-50 ")
 ;;725
 ;;21,"42291-0323-90 ")
 ;;726
 ;;21,"42291-0608-10 ")
 ;;727
 ;;21,"42291-0608-90 ")
 ;;728
 ;;21,"42291-0609-10 ")
 ;;729
 ;;21,"42291-0609-90 ")
 ;;730
 ;;21,"42549-0528-30 ")
 ;;731
 ;;21,"42549-0543-10 ")
 ;;732
 ;;21,"42549-0543-20 ")
 ;;733
 ;;21,"42549-0543-30 ")
 ;;734
 ;;21,"42582-0300-10 ")
 ;;735
 ;;21,"42582-0300-16 ")
 ;;736
 ;;21,"42582-0300-20 ")
 ;;737
 ;;21,"42582-0301-10 ")
 ;;738
 ;;21,"42582-0301-16 ")
 ;;739
 ;;21,"42582-0301-20 ")
 ;;740
 ;;21,"42806-0012-01 ")
 ;;741
 ;;21,"42806-0012-10 ")
 ;;742
 ;;21,"42806-0014-01 ")
 ;;743
 ;;21,"42806-0014-10 ")
 ;;744
 ;;21,"42806-0159-01 ")
 ;;745
 ;;21,"42806-0159-05 ")
 ;;746
 ;;21,"42806-0159-10 ")
 ;;747
 ;;21,"42806-0160-01 ")
 ;;748
 ;;21,"42806-0160-05 ")
 ;;749
 ;;21,"42806-0160-10 ")
 ;;750
 ;;21,"42806-0161-01 ")
 ;;751
 ;;21,"42806-0161-05 ")
 ;;752
 ;;21,"42806-0161-10 ")
 ;;753
 ;;21,"42852-0833-75 ")
 ;;754
 ;;21,"43063-0003-01 ")
 ;;755
 ;;21,"43063-0045-04 ")
 ;;756
 ;;21,"43063-0045-06 ")
 ;;757
 ;;21,"43063-0045-60 ")
 ;;758
 ;;21,"43063-0049-02 ")
 ;;759
 ;;21,"43063-0049-06 ")
 ;;760
 ;;21,"43063-0060-02 ")
 ;;761
 ;;21,"43063-0060-04 ")
 ;;762
 ;;21,"43063-0060-06 ")
 ;;763
 ;;21,"43063-0089-04 ")
 ;;764
 ;;21,"43063-0089-06 ")
 ;;765
 ;;21,"43063-0095-06 ")
 ;;766
 ;;21,"43063-0095-12 ")
 ;;767
 ;;21,"43063-0095-20 ")
 ;;768
 ;;21,"43063-0112-04 ")
 ;;769
 ;;21,"43063-0112-06 ")
 ;;770
 ;;21,"43063-0172-01 ")
 ;;771
 ;;21,"43063-0172-04 ")
 ;;772
 ;;21,"43063-0207-30 ")
 ;;773
 ;;21,"43063-0251-10 ")
 ;;774
 ;;21,"43063-0267-90 ")
 ;;775
 ;;21,"43063-0321-60 ")
 ;;776
 ;;21,"43063-0376-01 ")
 ;;777
 ;;21,"43063-0405-02 ")
 ;;778
 ;;21,"43063-0405-04 ")
 ;;779
 ;;21,"43063-0405-05 ")
 ;;780
 ;;21,"43063-0405-10 ")
 ;;781
 ;;21,"43063-0405-12 ")
 ;;782
 ;;21,"43063-0405-15 ")
 ;;783
 ;;21,"43063-0405-20 ")
 ;;784
 ;;21,"43063-0405-25 ")
 ;;785
 ;;21,"43063-0405-30 ")
 ;;786
 ;;21,"43063-0405-60 ")
 ;;787
 ;;21,"43063-0405-79 ")
 ;;788
 ;;21,"43063-0406-10 ")
 ;;789
 ;;21,"43063-0406-15 ")
 ;;790
 ;;21,"43063-0406-30 ")
 ;;791
 ;;21,"43063-0435-20 ")
 ;;792
 ;;21,"43063-0435-30 ")
 ;;793
 ;;21,"43063-0447-04 ")
 ;;794
 ;;21,"43063-0501-30 ")
 ;;795
 ;;21,"43063-0517-60 ")
 ;;796
 ;;21,"43063-0518-06 ")
 ;;797
 ;;21,"43063-0518-28 ")
 ;;798
 ;;21,"43063-0518-40 ")
 ;;799
 ;;21,"43063-0518-90 ")
 ;;800
 ;;21,"43063-0601-01 ")
 ;;801
 ;;21,"43063-0662-10 ")
 ;;802
 ;;21,"43063-0662-15 ")
 ;;803
 ;;21,"43063-0662-30 ")
 ;;804
 ;;21,"43063-0708-02 ")
 ;;805
 ;;21,"43093-0104-01 ")
 ;;806
 ;;21,"43199-0011-01 ")
 ;;807
 ;;21,"43199-0012-01 ")
 ;;808
 ;;21,"43199-0013-01 ")
 ;;809
 ;;21,"43199-0014-01 ")
 ;;810
 ;;21,"43353-0083-30 ")
 ;;811
 ;;21,"43353-0083-53 ")
 ;;812
 ;;21,"43353-0083-60 ")
 ;;813
 ;;21,"43353-0083-70 ")
 ;;814
 ;;21,"43353-0083-80 ")
 ;;815
 ;;21,"43353-0083-90 ")
 ;;816
 ;;21,"43353-0094-30 ")
 ;;817
 ;;21,"43353-0094-53 ")
 ;;818
 ;;21,"43353-0094-60 ")
 ;;819
 ;;21,"43353-0094-70 ")
 ;;820
 ;;21,"43353-0199-30 ")
 ;;821
 ;;21,"43353-0199-53 ")
 ;;822
 ;;21,"43353-0199-60 ")
 ;;823
 ;;21,"43353-0199-70 ")
 ;;824
 ;;21,"43353-0199-80 ")
 ;;825
 ;;21,"43353-0489-30 ")
 ;;826
 ;;21,"43353-0489-53 ")
 ;;827
 ;;21,"43353-0489-60 ")
 ;;828
 ;;21,"43353-0489-70 ")
 ;;829
 ;;21,"43353-0796-30 ")
 ;;830
 ;;21,"43353-0796-53 ")
 ;;831
 ;;21,"43353-0913-09 ")
 ;;832
 ;;21,"44523-0825-01 ")
 ;;833
 ;;21,"45802-0758-00 ")
 ;;834
 ;;21,"45802-0758-30 ")
 ;;835
 ;;21,"45802-0759-00 ")
 ;;836
 ;;21,"45802-0759-30 ")
 ;;837
 ;;21,"47463-0045-60 ")
 ;;838
 ;;21,"47463-0215-10 ")
 ;;839
 ;;21,"47463-0215-12 ")
 ;;840
 ;;21,"47463-0215-15 ")
 ;;841
 ;;21,"47463-0215-20 ")
 ;;842
 ;;21,"47463-0215-25 ")
 ;;843
 ;;21,"47463-0215-30 ")
 ;;844
 ;;21,"47463-0355-90 ")
 ;;845
 ;;21,"47463-0367-15 ")
 ;;846
 ;;21,"47463-0367-30 ")
 ;;847
 ;;21,"47463-0367-60 ")
 ;;848
 ;;21,"47463-0368-90 ")
 ;;849
 ;;21,"47463-0369-21 ")
 ;;850
 ;;21,"47463-0369-30 ")
 ;;851
 ;;21,"47463-0501-30 ")
 ;;852
 ;;21,"47463-0502-30 ")
 ;;853
 ;;21,"47463-0603-00 ")
 ;;854
 ;;21,"47463-0603-12 ")
 ;;855
 ;;21,"47463-0603-15 ")
 ;;856
 ;;21,"47463-0603-20 ")
 ;;857
 ;;21,"47463-0603-30 ")
 ;;858
 ;;21,"47463-0603-40 ")
 ;;859
 ;;21,"47463-0603-60 ")
 ;;860
 ;;21,"47463-0603-71 ")
 ;;861
 ;;21,"47463-0603-90 ")
 ;;862
 ;;21,"47463-0604-30 ")
 ;;863
 ;;21,"47463-0609-30 ")
 ;;864
 ;;21,"47463-0609-60 ")
 ;;865
 ;;21,"49884-0034-01 ")
 ;;866
 ;;21,"49884-0034-10 ")
 ;;867
 ;;21,"49884-0035-01 ")
 ;;868
 ;;21,"49884-0035-10 ")
 ;;869
 ;;21,"49884-0235-33 ")
 ;;870
 ;;21,"49884-0235-37 ")
 ;;871
 ;;21,"49963-0518-01 ")
 ;;872
 ;;21,"49999-0024-00 ")
 ;;873
 ;;21,"49999-0024-12 ")
 ;;874
 ;;21,"49999-0024-20 ")
 ;;875
 ;;21,"49999-0024-24 ")
 ;;876
 ;;21,"49999-0024-30 ")
 ;;877
 ;;21,"49999-0024-50 ")
 ;;878
 ;;21,"49999-0024-60 ")
 ;;879
 ;;21,"49999-0024-90 ")
 ;;880
 ;;21,"49999-0029-05 ")
 ;;881
 ;;21,"49999-0029-20 ")
 ;;882
 ;;21,"49999-0029-30 ")
 ;;883
 ;;21,"49999-0029-60 ")
 ;;884
 ;;21,"49999-0029-90 ")
 ;;885
 ;;21,"49999-0035-24 ")
 ;;886
 ;;21,"49999-0035-30 ")
 ;;887
 ;;21,"49999-0035-60 ")
 ;;888
 ;;21,"49999-0036-12 ")
 ;;889
 ;;21,"49999-0036-60 ")
 ;;890
 ;;21,"49999-0081-00 ")
 ;;891
 ;;21,"49999-0081-20 ")
 ;;892
 ;;21,"49999-0081-30 ")
 ;;893
 ;;21,"49999-0081-60 ")
 ;;894
 ;;21,"49999-0081-90 ")
 ;;895
 ;;21,"49999-0087-00 ")
 ;;896
 ;;21,"49999-0087-15 ")
 ;;897
 ;;21,"49999-0087-30 ")
 ;;898
 ;;21,"49999-0090-05 ")
 ;;899
 ;;21,"49999-0090-10 ")
 ;;900
 ;;21,"49999-0090-12 ")
 ;;901
 ;;21,"49999-0090-15 ")
 ;;902
 ;;21,"49999-0090-20 ")
 ;;903
 ;;21,"49999-0090-30 ")
 ;;904
 ;;21,"49999-0090-60 ")
 ;;905
 ;;21,"49999-0090-90 ")
 ;;906
 ;;21,"49999-0152-04 ")
 ;;907
 ;;21,"49999-0207-00 ")
 ;;908
 ;;21,"49999-0207-10 ")
 ;;909
 ;;21,"49999-0207-20 ")
 ;;910
 ;;21,"49999-0207-30 ")
 ;;911
 ;;21,"49999-0262-04 ")
 ;;912
 ;;21,"49999-0291-20 ")
 ;;913
 ;;21,"49999-0291-30 ")
 ;;914
 ;;21,"49999-0291-60 ")
 ;;915
 ;;21,"49999-0291-90 ")
 ;;916
 ;;21,"49999-0314-04 ")
 ;;917
 ;;21,"49999-0326-04 ")
 ;;918
 ;;21,"49999-0339-12 ")
 ;;919
 ;;21,"49999-0340-12 ")
 ;;920
 ;;21,"49999-0493-18 ")
 ;;921
 ;;21,"49999-0594-30 ")
 ;;922
 ;;21,"49999-0594-90 ")
 ;;923
 ;;21,"49999-0657-04 ")
 ;;924
 ;;21,"49999-0701-20 ")
 ;;925
 ;;21,"49999-0701-30 ")
 ;;926
 ;;21,"49999-0902-20 ")
 ;;927
 ;;21,"49999-0902-30 ")
 ;;928
 ;;21,"50111-0393-01 ")
 ;;929
 ;;21,"50111-0394-01 ")
 ;;930
 ;;21,"50111-0394-03 ")
 ;;931
 ;;21,"50111-0395-01 ")
 ;;932
 ;;21,"50111-0395-03 ")
 ;;933
 ;;21,"50268-0115-11 ")
 ;;934
 ;;21,"50268-0115-15 ")
 ;;935
 ;;21,"50268-0116-11 ")
 ;;936
 ;;21,"50268-0116-15 ")
 ;;937
 ;;21,"50268-0117-11 ")
 ;;938
 ;;21,"50268-0117-15 ")
 ;;939
 ;;21,"50268-0522-11 ")
 ;;940
 ;;21,"50268-0522-15 ")
 ;;941
 ;;21,"50268-0523-11 ")
 ;;942
 ;;21,"50268-0523-15 ")
 ;;943
 ;;21,"50383-0796-16 ")
 ;;944
 ;;21,"50383-0801-16 ")
 ;;945
 ;;21,"50383-0802-16 ")
 ;;946
 ;;21,"50383-0803-16 ")
 ;;947
 ;;21,"50383-0804-16 ")
 ;;948
 ;;21,"50383-0805-04 ")
 ;;949
 ;;21,"50383-0805-16 ")
 ;;950
 ;;21,"50436-1867-00 ")
 ;;951
 ;;21,"50436-3367-05 ")
 ;;952
 ;;21,"50436-3763-05 ")
 ;;953
 ;;21,"50436-3875-03 ")
 ;;954
 ;;21,"50436-3988-01 ")
 ;;955
 ;;21,"50436-4379-02 ")
 ;;956
 ;;21,"50436-4379-03 ")
 ;;957
 ;;21,"50436-4379-05 ")
 ;;958
 ;;21,"50532-0112-10 ")
 ;;959
 ;;21,"50532-0113-10 ")
 ;;960
 ;;21,"50532-0115-10 ")
 ;;961
 ;;21,"50742-0190-01 ")
 ;;962
 ;;21,"50742-0190-10 ")
 ;;963
 ;;21,"50991-0405-16 ")
 ;;964
 ;;21,"50991-0528-16 ")
 ;;965
 ;;21,"51079-0067-01 ")
 ;;966
 ;;21,"51079-0067-20 ")
 ;;967
 ;;21,"51079-0077-01 ")
 ;;968
 ;;21,"51079-0077-20 ")
 ;;969
 ;;21,"51079-0078-01 ")
 ;;970
 ;;21,"51079-0078-20 ")
 ;;971
 ;;21,"51079-0089-01 ")
 ;;972
 ;;21,"51079-0089-20 ")
 ;;973
 ;;21,"51079-0090-01 ")
 ;;974
 ;;21,"51079-0090-20 ")
 ;;975
 ;;21,"51079-0118-01 ")
 ;;976
 ;;21,"51079-0118-20 ")
 ;;977
 ;;21,"51079-0119-01 ")
 ;;978
 ;;21,"51079-0119-20 ")
 ;;979
 ;;21,"51079-0221-17 ")
 ;;980
 ;;21,"51079-0221-19 ")
 ;;981
 ;;21,"51079-0423-01 ")
 ;;982
 ;;21,"51079-0423-20 ")
 ;;983
 ;;21,"51079-0511-01 ")
 ;;984
 ;;21,"51079-0511-20 ")
 ;;985
 ;;21,"51079-0796-01 ")
 ;;986
 ;;21,"51079-0796-20 ")
 ;;987
 ;;21,"51079-0806-01 ")
 ;;988
 ;;21,"51079-0806-20 ")
 ;;989
 ;;21,"51079-0816-01 ")
 ;;990
 ;;21,"51079-0816-20 ")
 ;;991
 ;;21,"51079-0895-01 ")
 ;;992
 ;;21,"51079-0895-20 ")
 ;;993
 ;;21,"51293-0607-01 ")
 ;;994
 ;;21,"51293-0607-10 ")
 ;;995
 ;;21,"51293-0607-66 ")
 ;;996
 ;;21,"51293-0622-01 ")
 ;;997
 ;;21,"51525-0112-01 ")
 ;;998
 ;;21,"51525-0113-01 ")
 ;;999
 ;;21,"51525-0115-01 ")
 ;;1000
 ;;21,"51655-0107-52 ")
 ;;1001
 ;;21,"51672-5296-01 ")
 ;;1002
 ;;21,"51672-5296-05 ")
 ;;1003
 ;;21,"51672-5297-01 ")
 ;;1004
 ;;21,"51724-0052-04 ")
 ;;1005
 ;;21,"51724-0214-01 ")
 ;;1006
 ;;21,"51991-0333-01 ")
 ;;1007
 ;;21,"51991-0334-04 ")
 ;;1008
 ;;21,"51991-0334-16 ")
 ;;1009
 ;;21,"51991-0838-01 ")
 ;;1010
 ;;21,"51991-0838-10 ")
 ;;1011
 ;;21,"52817-0210-10 ")
 ;;1012
 ;;21,"52817-0210-50 ")
 ;;1013
 ;;21,"52959-0023-06 ")
 ;;1014
 ;;21,"52959-0023-20 ")
 ;;1015
 ;;21,"52959-0023-30 ")
 ;;1016
 ;;21,"52959-0023-50 ")
 ;;1017
 ;;21,"52959-0023-60 ")
 ;;1018
 ;;21,"52959-0033-00 ")
 ;;1019
 ;;21,"52959-0033-04 ")
 ;;1020
 ;;21,"52959-0033-10 ")
 ;;1021
 ;;21,"52959-0033-20 ")
 ;;1022
 ;;21,"52959-0033-21 ")
 ;;1023