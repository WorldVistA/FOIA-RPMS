BGP8ZY3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"33342-0051-10 ")
 ;;682
 ;;21,"33342-0051-44 ")
 ;;683
 ;;21,"33342-0052-07 ")
 ;;684
 ;;21,"33342-0052-10 ")
 ;;685
 ;;21,"33342-0052-44 ")
 ;;686
 ;;21,"33342-0057-07 ")
 ;;687
 ;;21,"33342-0057-10 ")
 ;;688
 ;;21,"33342-0058-07 ")
 ;;689
 ;;21,"33342-0058-10 ")
 ;;690
 ;;21,"33342-0062-07 ")
 ;;691
 ;;21,"33342-0064-10 ")
 ;;692
 ;;21,"33342-0074-10 ")
 ;;693
 ;;21,"33342-0075-10 ")
 ;;694
 ;;21,"33342-0076-10 ")
 ;;695
 ;;21,"33342-0077-10 ")
 ;;696
 ;;21,"33342-0077-15 ")
 ;;697
 ;;21,"33342-0078-10 ")
 ;;698
 ;;21,"33342-0078-15 ")
 ;;699
 ;;21,"33342-0114-07 ")
 ;;700
 ;;21,"33342-0115-07 ")
 ;;701
 ;;21,"33342-0116-07 ")
 ;;702
 ;;21,"33342-0117-07 ")
 ;;703
 ;;21,"33342-0131-10 ")
 ;;704
 ;;21,"33342-0131-15 ")
 ;;705
 ;;21,"33342-0132-10 ")
 ;;706
 ;;21,"33342-0132-15 ")
 ;;707
 ;;21,"33342-0133-10 ")
 ;;708
 ;;21,"33342-0133-15 ")
 ;;709
 ;;21,"33342-0190-07 ")
 ;;710
 ;;21,"33342-0190-10 ")
 ;;711
 ;;21,"33342-0191-07 ")
 ;;712
 ;;21,"33342-0191-10 ")
 ;;713
 ;;21,"33342-0192-07 ")
 ;;714
 ;;21,"33342-0192-10 ")
 ;;715
 ;;21,"33342-0193-07 ")
 ;;716
 ;;21,"33342-0193-10 ")
 ;;717
 ;;21,"35356-0060-30 ")
 ;;718
 ;;21,"35356-0101-90 ")
 ;;719
 ;;21,"35356-0131-30 ")
 ;;720
 ;;21,"35356-0216-30 ")
 ;;721
 ;;21,"35356-0216-90 ")
 ;;722
 ;;21,"35356-0256-30 ")
 ;;723
 ;;21,"35356-0257-30 ")
 ;;724
 ;;21,"35356-0258-30 ")
 ;;725
 ;;21,"35356-0258-90 ")
 ;;726
 ;;21,"35356-0287-30 ")
 ;;727
 ;;21,"35356-0293-90 ")
 ;;728
 ;;21,"35356-0294-90 ")
 ;;729
 ;;21,"35356-0295-30 ")
 ;;730
 ;;21,"35356-0296-30 ")
 ;;731
 ;;21,"35356-0297-30 ")
 ;;732
 ;;21,"35356-0298-30 ")
 ;;733
 ;;21,"35356-0299-30 ")
 ;;734
 ;;21,"35356-0300-30 ")
 ;;735
 ;;21,"35356-0427-30 ")
 ;;736
 ;;21,"35356-0428-30 ")
 ;;737
 ;;21,"42291-0126-30 ")
 ;;738
 ;;21,"42291-0127-30 ")
 ;;739
 ;;21,"42291-0128-30 ")
 ;;740
 ;;21,"42291-0129-30 ")
 ;;741
 ;;21,"42291-0342-90 ")
 ;;742
 ;;21,"42291-0343-90 ")
 ;;743
 ;;21,"42291-0356-90 ")
 ;;744
 ;;21,"42291-0357-90 ")
 ;;745
 ;;21,"42291-0393-10 ")
 ;;746
 ;;21,"42291-0393-30 ")
 ;;747
 ;;21,"42291-0393-90 ")
 ;;748
 ;;21,"42291-0394-10 ")
 ;;749
 ;;21,"42291-0394-30 ")
 ;;750
 ;;21,"42291-0394-90 ")
 ;;751
 ;;21,"42291-0395-10 ")
 ;;752
 ;;21,"42291-0395-30 ")
 ;;753
 ;;21,"42291-0395-90 ")
 ;;754
 ;;21,"42291-0876-90 ")
 ;;755
 ;;21,"42291-0877-10 ")
 ;;756
 ;;21,"42291-0877-90 ")
 ;;757
 ;;21,"42291-0878-10 ")
 ;;758
 ;;21,"42291-0878-90 ")
 ;;759
 ;;21,"42291-0879-50 ")
 ;;760
 ;;21,"42291-0879-90 ")
 ;;761
 ;;21,"42291-0880-90 ")
 ;;762
 ;;21,"42291-0881-10 ")
 ;;763
 ;;21,"42291-0881-90 ")
 ;;764
 ;;21,"42291-0882-10 ")
 ;;765
 ;;21,"42291-0882-90 ")
 ;;766
 ;;21,"42291-0883-50 ")
 ;;767
 ;;21,"42291-0883-90 ")
 ;;768
 ;;21,"42291-0884-90 ")
 ;;769
 ;;21,"42291-0885-90 ")
 ;;770
 ;;21,"42291-0886-90 ")
 ;;771
 ;;21,"42291-0887-90 ")
 ;;772
 ;;21,"42291-0888-90 ")
 ;;773
 ;;21,"42292-0036-03 ")
 ;;774
 ;;21,"42292-0037-03 ")
 ;;775
 ;;21,"42571-0110-10 ")
 ;;776
 ;;21,"42571-0110-90 ")
 ;;777
 ;;21,"42571-0111-10 ")
 ;;778
 ;;21,"42571-0111-90 ")
 ;;779
 ;;21,"42571-0112-10 ")
 ;;780
 ;;21,"42571-0112-90 ")
 ;;781
 ;;21,"42658-0121-01 ")
 ;;782
 ;;21,"42658-0121-04 ")
 ;;783
 ;;21,"42658-0122-01 ")
 ;;784
 ;;21,"42658-0122-04 ")
 ;;785
 ;;21,"42658-0123-01 ")
 ;;786
 ;;21,"42658-0123-04 ")
 ;;787
 ;;21,"43063-0347-30 ")
 ;;788
 ;;21,"43063-0477-14 ")
 ;;789
 ;;21,"43063-0766-90 ")
 ;;790
 ;;21,"43353-0459-45 ")
 ;;791
 ;;21,"43386-0080-03 ")
 ;;792
 ;;21,"43386-0080-09 ")
 ;;793
 ;;21,"43386-0081-09 ")
 ;;794
 ;;21,"43386-0082-09 ")
 ;;795
 ;;21,"43386-0083-09 ")
 ;;796
 ;;21,"43547-0277-03 ")
 ;;797
 ;;21,"43547-0277-09 ")
 ;;798
 ;;21,"43547-0277-50 ")
 ;;799
 ;;21,"43547-0278-03 ")
 ;;800
 ;;21,"43547-0278-09 ")
 ;;801
 ;;21,"43547-0278-50 ")
 ;;802
 ;;21,"43547-0279-03 ")
 ;;803
 ;;21,"43547-0279-09 ")
 ;;804
 ;;21,"43547-0279-50 ")
 ;;805
 ;;21,"43547-0311-09 ")
 ;;806
 ;;21,"43547-0312-09 ")
 ;;807
 ;;21,"43547-0313-09 ")
 ;;808
 ;;21,"43547-0314-09 ")
 ;;809
 ;;21,"43547-0315-09 ")
 ;;810
 ;;21,"43547-0330-03 ")
 ;;811
 ;;21,"43547-0330-09 ")
 ;;812
 ;;21,"43547-0331-03 ")
 ;;813
 ;;21,"43547-0331-09 ")
 ;;814
 ;;21,"43547-0360-09 ")
 ;;815
 ;;21,"43547-0360-50 ")
 ;;816
 ;;21,"43547-0361-03 ")
 ;;817
 ;;21,"43547-0361-09 ")
 ;;818
 ;;21,"43547-0361-11 ")
 ;;819
 ;;21,"43547-0362-03 ")
 ;;820
 ;;21,"43547-0362-09 ")
 ;;821
 ;;21,"43547-0362-11 ")
 ;;822
 ;;21,"43547-0367-03 ")
 ;;823
 ;;21,"43547-0368-09 ")
 ;;824
 ;;21,"43547-0369-09 ")
 ;;825
 ;;21,"43547-0370-09 ")
 ;;826
 ;;21,"43547-0374-03 ")
 ;;827
 ;;21,"43547-0374-09 ")
 ;;828
 ;;21,"43547-0374-50 ")
 ;;829
 ;;21,"43547-0375-03 ")
 ;;830
 ;;21,"43547-0375-09 ")
 ;;831
 ;;21,"43547-0375-50 ")
 ;;832
 ;;21,"43547-0376-03 ")
 ;;833
 ;;21,"43547-0376-09 ")
 ;;834
 ;;21,"43547-0376-50 ")
 ;;835
 ;;21,"43547-0391-03 ")
 ;;836
 ;;21,"43547-0391-09 ")
 ;;837
 ;;21,"43547-0392-03 ")
 ;;838
 ;;21,"43547-0392-09 ")
 ;;839
 ;;21,"43547-0393-03 ")
 ;;840
 ;;21,"43547-0393-09 ")
 ;;841
 ;;21,"49884-0172-09 ")
 ;;842
 ;;21,"49884-0172-11 ")
 ;;843
 ;;21,"49884-0173-09 ")
 ;;844
 ;;21,"49884-0173-11 ")
 ;;845
 ;;21,"49884-0174-09 ")
 ;;846
 ;;21,"49884-0174-11 ")
 ;;847
 ;;21,"49884-0175-09 ")
 ;;848
 ;;21,"49884-0175-11 ")
 ;;849
 ;;21,"49884-0185-09 ")
 ;;850
 ;;21,"49884-0185-11 ")
 ;;851
 ;;21,"49884-0574-11 ")
 ;;852
 ;;21,"49884-0575-11 ")
 ;;853
 ;;21,"49884-0576-11 ")
 ;;854
 ;;21,"49884-0577-11 ")
 ;;855
 ;;21,"49884-0658-09 ")
 ;;856
 ;;21,"49884-0659-09 ")
 ;;857
 ;;21,"49884-0660-09 ")
 ;;858
 ;;21,"49884-0661-09 ")
 ;;859
 ;;21,"49884-0662-09 ")
 ;;860
 ;;21,"49884-0663-09 ")
 ;;861
 ;;21,"49884-0664-09 ")
 ;;862
 ;;21,"49884-0786-09 ")
 ;;863
 ;;21,"49884-0786-11 ")
 ;;864
 ;;21,"49884-0787-09 ")
 ;;865
 ;;21,"49884-0787-11 ")
 ;;866
 ;;21,"49884-0788-09 ")
 ;;867
 ;;21,"49884-0788-11 ")
 ;;868
 ;;21,"49884-0789-09 ")
 ;;869
 ;;21,"49884-0789-11 ")
 ;;870
 ;;21,"49884-0790-09 ")
 ;;871
 ;;21,"49884-0790-11 ")
 ;;872
 ;;21,"49999-0305-30 ")
 ;;873
 ;;21,"49999-0543-30 ")
 ;;874
 ;;21,"49999-0815-30 ")
 ;;875
 ;;21,"49999-0815-90 ")
 ;;876
 ;;21,"49999-0877-00 ")
 ;;877
 ;;21,"49999-0877-30 ")
 ;;878
 ;;21,"49999-0877-90 ")
 ;;879
 ;;21,"49999-0878-00 ")
 ;;880
 ;;21,"49999-0878-30 ")
 ;;881
 ;;21,"49999-0878-90 ")
 ;;882
 ;;21,"49999-0879-00 ")
 ;;883
 ;;21,"49999-0879-30 ")
 ;;884
 ;;21,"49999-0880-30 ")
 ;;885
 ;;21,"49999-0880-90 ")
 ;;886
 ;;21,"49999-0940-30 ")
 ;;887
 ;;21,"49999-0940-90 ")
 ;;888
 ;;21,"49999-0943-00 ")
 ;;889
 ;;21,"49999-0943-90 ")
 ;;890
 ;;21,"49999-0988-30 ")
 ;;891
 ;;21,"49999-0991-90 ")
 ;;892
 ;;21,"50268-0440-15 ")
 ;;893
 ;;21,"50268-0441-15 ")
 ;;894
 ;;21,"50268-0442-15 ")
 ;;895
 ;;21,"50268-0513-15 ")
 ;;896
 ;;21,"50268-0514-15 ")
 ;;897
 ;;21,"50268-0515-15 ")
 ;;898
 ;;21,"50268-0516-15 ")
 ;;899
 ;;21,"50268-0517-15 ")
 ;;900
 ;;21,"50268-0518-15 ")
 ;;901
 ;;21,"50268-0783-15 ")
 ;;902
 ;;21,"50268-0784-15 ")
 ;;903
 ;;21,"50268-0785-15 ")
 ;;904
 ;;21,"50268-0786-13 ")
 ;;905
 ;;21,"50268-0790-15 ")
 ;;906
 ;;21,"50268-0791-15 ")
 ;;907
 ;;21,"50268-0792-15 ")
 ;;908
 ;;21,"50268-0793-15 ")
 ;;909
 ;;21,"50268-0794-15 ")
 ;;910
 ;;21,"51079-0192-01 ")
 ;;911
 ;;21,"51079-0192-03 ")
 ;;912
 ;;21,"51079-0193-01 ")
 ;;913
 ;;21,"51079-0193-03 ")
 ;;914
 ;;21,"51079-0194-01 ")
 ;;915
 ;;21,"51079-0194-03 ")
 ;;916
 ;;21,"51079-0750-01 ")
 ;;917
 ;;21,"51079-0750-20 ")
 ;;918
 ;;21,"51079-0751-01 ")
 ;;919
 ;;21,"51079-0751-20 ")
 ;;920
 ;;21,"51079-0752-01 ")
 ;;921
 ;;21,"51079-0752-20 ")
 ;;922
 ;;21,"51079-0757-01 ")
 ;;923
 ;;21,"51079-0757-20 ")
 ;;924
 ;;21,"51660-0140-30 ")
 ;;925
 ;;21,"51660-0141-90 ")
 ;;926
 ;;21,"51660-0142-90 ")
 ;;927
 ;;21,"51660-0143-90 ")
 ;;928
 ;;21,"52343-0116-30 ")
 ;;929
 ;;21,"52343-0116-90 ")
 ;;930
 ;;21,"52343-0116-99 ")
 ;;931
 ;;21,"52343-0117-30 ")
 ;;932
 ;;21,"52343-0117-90 ")
 ;;933
 ;;21,"52343-0117-99 ")
 ;;934
 ;;21,"52343-0118-30 ")
 ;;935
 ;;21,"52343-0118-90 ")
 ;;936
 ;;21,"52343-0118-99 ")
 ;;937
 ;;21,"52343-0122-30 ")
 ;;938
 ;;21,"52343-0123-90 ")
 ;;939
 ;;21,"52343-0124-90 ")
 ;;940
 ;;21,"52343-0125-90 ")
 ;;941
 ;;21,"52959-0756-30 ")
 ;;942
 ;;21,"54569-4437-00 ")
 ;;943
 ;;21,"54569-4438-00 ")
 ;;944
 ;;21,"54569-4572-00 ")
 ;;945
 ;;21,"54569-4698-00 ")
 ;;946
 ;;21,"54569-4714-00 ")
 ;;947
 ;;21,"54569-4719-00 ")
 ;;948
 ;;21,"54569-4719-01 ")
 ;;949
 ;;21,"54569-4722-00 ")
 ;;950
 ;;21,"54569-4722-01 ")
 ;;951
 ;;21,"54569-4766-00 ")
 ;;952
 ;;21,"54569-4766-03 ")
 ;;953
 ;;21,"54569-4767-00 ")
 ;;954
 ;;21,"54569-4767-03 ")
 ;;955
 ;;21,"54569-4895-00 ")
 ;;956
 ;;21,"54569-5361-00 ")
 ;;957
 ;;21,"54569-5362-00 ")
 ;;958
 ;;21,"54569-5606-00 ")
 ;;959
 ;;21,"54569-5665-00 ")
 ;;960
 ;;21,"54569-5666-00 ")
 ;;961
 ;;21,"54569-5667-00 ")
 ;;962
 ;;21,"54569-5801-00 ")
 ;;963
 ;;21,"54569-5867-00 ")
 ;;964
 ;;21,"54569-5880-01 ")
 ;;965
 ;;21,"54569-5903-00 ")
 ;;966
 ;;21,"54569-5998-00 ")
 ;;967
 ;;21,"54569-5999-00 ")
 ;;968
 ;;21,"54569-6110-01 ")
 ;;969
 ;;21,"54569-6173-00 ")
 ;;970
 ;;21,"54569-6173-01 ")
 ;;971
 ;;21,"54569-6180-00 ")
 ;;972
 ;;21,"54569-6180-01 ")
 ;;973
 ;;21,"54569-6182-00 ")
 ;;974
 ;;21,"54569-6182-01 ")
 ;;975
 ;;21,"54569-6223-00 ")
 ;;976
 ;;21,"54569-6294-00 ")
 ;;977
 ;;21,"54569-6294-01 ")
 ;;978
 ;;21,"54569-6297-00 ")
 ;;979
 ;;21,"54569-6309-00 ")
 ;;980
 ;;21,"54868-2335-00 ")
 ;;981
 ;;21,"54868-2335-01 ")
 ;;982
 ;;21,"54868-3726-00 ")
 ;;983
 ;;21,"54868-3726-01 ")
 ;;984
 ;;21,"54868-4199-00 ")
 ;;985
 ;;21,"54868-4199-01 ")
 ;;986
 ;;21,"54868-4199-02 ")
 ;;987
 ;;21,"54868-4341-00 ")
 ;;988
 ;;21,"54868-4413-00 ")
 ;;989
 ;;21,"54868-4414-00 ")
 ;;990
 ;;21,"54868-4425-00 ")
 ;;991
 ;;21,"54868-4428-00 ")
 ;;992
 ;;21,"54868-4428-02 ")
 ;;993
 ;;21,"54868-4494-00 ")
 ;;994
 ;;21,"54868-4526-01 ")
 ;;995
 ;;21,"54868-4539-01 ")
 ;;996
 ;;21,"54868-4540-01 ")
 ;;997
 ;;21,"54868-4605-01 ")
 ;;998
 ;;21,"54868-4612-00 ")
 ;;999
 ;;21,"54868-4645-00 ")
 ;;1000
 ;;21,"54868-4645-01 ")
 ;;1001
 ;;21,"54868-4645-02 ")
 ;;1002
 ;;21,"54868-4652-00 ")
 ;;1003
 ;;21,"54868-4652-01 ")
 ;;1004
 ;;21,"54868-4652-02 ")
 ;;1005
 ;;21,"54868-4652-03 ")
 ;;1006
 ;;21,"54868-4729-00 ")
 ;;1007
 ;;21,"54868-4869-00 ")
 ;;1008
 ;;21,"54868-4885-00 ")
 ;;1009
 ;;21,"54868-4885-01 ")
 ;;1010
 ;;21,"54868-4986-00 ")
 ;;1011
 ;;21,"54868-4986-01 ")
 ;;1012
 ;;21,"54868-4986-02 ")
 ;;1013
 ;;21,"54868-5075-00 ")
 ;;1014
 ;;21,"54868-5075-01 ")
 ;;1015
 ;;21,"54868-5077-00 ")
 ;;1016
 ;;21,"54868-5078-00 ")
 ;;1017
 ;;21,"54868-5078-01 ")
 ;;1018
 ;;21,"54868-5082-00 ")
 ;;1019
 ;;21,"54868-5082-01 ")
 ;;1020
 ;;21,"54868-5082-02 ")
 ;;1021
 ;;21,"54868-5082-03 ")
 ;;1022
 ;;21,"54868-5170-00 ")
 ;;1023