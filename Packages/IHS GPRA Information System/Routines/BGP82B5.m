BGP82B5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"544,00703-6801-04 ",.02)
 ;;00703-6801-04
 ;;9002226.02101,"544,00703-6811-21 ",.01)
 ;;00703-6811-21
 ;;9002226.02101,"544,00703-6811-21 ",.02)
 ;;00703-6811-21
 ;;9002226.02101,"544,00781-4058-15 ",.01)
 ;;00781-4058-15
 ;;9002226.02101,"544,00781-4058-15 ",.02)
 ;;00781-4058-15
 ;;9002226.02101,"544,00781-4060-15 ",.01)
 ;;00781-4060-15
 ;;9002226.02101,"544,00781-4060-15 ",.02)
 ;;00781-4060-15
 ;;9002226.02101,"544,00781-4062-15 ",.01)
 ;;00781-4062-15
 ;;9002226.02101,"544,00781-4062-15 ",.02)
 ;;00781-4062-15
 ;;9002226.02101,"544,00781-5583-15 ",.01)
 ;;00781-5583-15
 ;;9002226.02101,"544,00781-5583-15 ",.02)
 ;;00781-5583-15
 ;;9002226.02101,"544,00781-5584-36 ",.01)
 ;;00781-5584-36
 ;;9002226.02101,"544,00781-5584-36 ",.02)
 ;;00781-5584-36
 ;;9002226.02101,"544,00781-5656-15 ",.01)
 ;;00781-5656-15
 ;;9002226.02101,"544,00781-5656-15 ",.02)
 ;;00781-5656-15
 ;;9002226.02101,"544,00781-5658-15 ",.01)
 ;;00781-5658-15
 ;;9002226.02101,"544,00781-5658-15 ",.02)
 ;;00781-5658-15
 ;;9002226.02101,"544,16714-0073-04 ",.01)
 ;;16714-0073-04
 ;;9002226.02101,"544,16714-0073-04 ",.02)
 ;;16714-0073-04
 ;;9002226.02101,"544,16714-0340-04 ",.01)
 ;;16714-0340-04
 ;;9002226.02101,"544,16714-0340-04 ",.02)
 ;;16714-0340-04
 ;;9002226.02101,"544,16714-0346-01 ",.01)
 ;;16714-0346-01
 ;;9002226.02101,"544,16714-0346-01 ",.02)
 ;;16714-0346-01
 ;;9002226.02101,"544,16714-0346-04 ",.01)
 ;;16714-0346-04
 ;;9002226.02101,"544,16714-0346-04 ",.02)
 ;;16714-0346-04
 ;;9002226.02101,"544,16714-0347-04 ",.01)
 ;;16714-0347-04
 ;;9002226.02101,"544,16714-0347-04 ",.02)
 ;;16714-0347-04
 ;;9002226.02101,"544,16714-0348-04 ",.01)
 ;;16714-0348-04
 ;;9002226.02101,"544,16714-0348-04 ",.02)
 ;;16714-0348-04
 ;;9002226.02101,"544,16714-0359-01 ",.01)
 ;;16714-0359-01
 ;;9002226.02101,"544,16714-0359-01 ",.02)
 ;;16714-0359-01
 ;;9002226.02101,"544,16714-0359-03 ",.01)
 ;;16714-0359-03
 ;;9002226.02101,"544,16714-0359-03 ",.02)
 ;;16714-0359-03
 ;;9002226.02101,"544,16714-0359-04 ",.01)
 ;;16714-0359-04
 ;;9002226.02101,"544,16714-0359-04 ",.02)
 ;;16714-0359-04
 ;;9002226.02101,"544,16714-0360-01 ",.01)
 ;;16714-0360-01
 ;;9002226.02101,"544,16714-0360-01 ",.02)
 ;;16714-0360-01
 ;;9002226.02101,"544,16714-0360-04 ",.01)
 ;;16714-0360-04
 ;;9002226.02101,"544,16714-0360-04 ",.02)
 ;;16714-0360-04
 ;;9002226.02101,"544,16714-0363-04 ",.01)
 ;;16714-0363-04
 ;;9002226.02101,"544,16714-0363-04 ",.02)
 ;;16714-0363-04
 ;;9002226.02101,"544,16714-0365-04 ",.01)
 ;;16714-0365-04
 ;;9002226.02101,"544,16714-0365-04 ",.02)
 ;;16714-0365-04
 ;;9002226.02101,"544,16714-0366-03 ",.01)
 ;;16714-0366-03
 ;;9002226.02101,"544,16714-0366-03 ",.02)
 ;;16714-0366-03
 ;;9002226.02101,"544,16714-0367-04 ",.01)
 ;;16714-0367-04
 ;;9002226.02101,"544,16714-0367-04 ",.02)
 ;;16714-0367-04
 ;;9002226.02101,"544,16714-0370-03 ",.01)
 ;;16714-0370-03
 ;;9002226.02101,"544,16714-0370-03 ",.02)
 ;;16714-0370-03
 ;;9002226.02101,"544,16714-0404-02 ",.01)
 ;;16714-0404-02
 ;;9002226.02101,"544,16714-0404-02 ",.02)
 ;;16714-0404-02
 ;;9002226.02101,"544,16714-0404-04 ",.01)
 ;;16714-0404-04
 ;;9002226.02101,"544,16714-0404-04 ",.02)
 ;;16714-0404-04
 ;;9002226.02101,"544,16714-0405-01 ",.01)
 ;;16714-0405-01
 ;;9002226.02101,"544,16714-0405-01 ",.02)
 ;;16714-0405-01
 ;;9002226.02101,"544,16714-0405-04 ",.01)
 ;;16714-0405-04
 ;;9002226.02101,"544,16714-0405-04 ",.02)
 ;;16714-0405-04
 ;;9002226.02101,"544,16714-0406-01 ",.01)
 ;;16714-0406-01
 ;;9002226.02101,"544,16714-0406-01 ",.02)
 ;;16714-0406-01
 ;;9002226.02101,"544,16714-0406-04 ",.01)
 ;;16714-0406-04
 ;;9002226.02101,"544,16714-0406-04 ",.02)
 ;;16714-0406-04
 ;;9002226.02101,"544,16714-0407-03 ",.01)
 ;;16714-0407-03
 ;;9002226.02101,"544,16714-0407-03 ",.02)
 ;;16714-0407-03
 ;;9002226.02101,"544,16714-0408-03 ",.01)
 ;;16714-0408-03
 ;;9002226.02101,"544,16714-0408-03 ",.02)
 ;;16714-0408-03
 ;;9002226.02101,"544,16714-0413-04 ",.01)
 ;;16714-0413-04
 ;;9002226.02101,"544,16714-0413-04 ",.02)
 ;;16714-0413-04
 ;;9002226.02101,"544,16714-0416-03 ",.01)
 ;;16714-0416-03
 ;;9002226.02101,"544,16714-0416-03 ",.02)
 ;;16714-0416-03
 ;;9002226.02101,"544,16714-0440-04 ",.01)
 ;;16714-0440-04
 ;;9002226.02101,"544,16714-0440-04 ",.02)
 ;;16714-0440-04
 ;;9002226.02101,"544,16714-0441-04 ",.01)
 ;;16714-0441-04
 ;;9002226.02101,"544,16714-0441-04 ",.02)
 ;;16714-0441-04
 ;;9002226.02101,"544,16714-0464-04 ",.01)
 ;;16714-0464-04
 ;;9002226.02101,"544,16714-0464-04 ",.02)
 ;;16714-0464-04
 ;;9002226.02101,"544,21695-0769-28 ",.01)
 ;;21695-0769-28
 ;;9002226.02101,"544,21695-0769-28 ",.02)
 ;;21695-0769-28
 ;;9002226.02101,"544,21695-0770-28 ",.01)
 ;;21695-0770-28
 ;;9002226.02101,"544,21695-0770-28 ",.02)
 ;;21695-0770-28
 ;;9002226.02101,"544,23490-5854-01 ",.01)
 ;;23490-5854-01
 ;;9002226.02101,"544,23490-5854-01 ",.02)
 ;;23490-5854-01
 ;;9002226.02101,"544,23490-7653-01 ",.01)
 ;;23490-7653-01
 ;;9002226.02101,"544,23490-7653-01 ",.02)
 ;;23490-7653-01
 ;;9002226.02101,"544,23490-7670-01 ",.01)
 ;;23490-7670-01
 ;;9002226.02101,"544,23490-7670-01 ",.02)
 ;;23490-7670-01
 ;;9002226.02101,"544,23490-7699-01 ",.01)
 ;;23490-7699-01
 ;;9002226.02101,"544,23490-7699-01 ",.02)
 ;;23490-7699-01
 ;;9002226.02101,"544,24090-0801-84 ",.01)
 ;;24090-0801-84
 ;;9002226.02101,"544,24090-0801-84 ",.02)
 ;;24090-0801-84
 ;;9002226.02101,"544,24090-0961-84 ",.01)
 ;;24090-0961-84
 ;;9002226.02101,"544,24090-0961-84 ",.02)
 ;;24090-0961-84
 ;;9002226.02101,"544,30014-0303-12 ",.01)
 ;;30014-0303-12
 ;;9002226.02101,"544,30014-0303-12 ",.02)
 ;;30014-0303-12
 ;;9002226.02101,"544,34362-0300-10 ",.01)
 ;;34362-0300-10
 ;;9002226.02101,"544,34362-0300-10 ",.02)
 ;;34362-0300-10
 ;;9002226.02101,"544,34362-0302-13 ",.01)
 ;;34362-0302-13
 ;;9002226.02101,"544,34362-0302-13 ",.02)
 ;;34362-0302-13
 ;;9002226.02101,"544,35356-0014-68 ",.01)
 ;;35356-0014-68
 ;;9002226.02101,"544,35356-0014-68 ",.02)
 ;;35356-0014-68
 ;;9002226.02101,"544,35356-0015-68 ",.01)
 ;;35356-0015-68
 ;;9002226.02101,"544,35356-0015-68 ",.02)
 ;;35356-0015-68
 ;;9002226.02101,"544,35356-0021-68 ",.01)
 ;;35356-0021-68
 ;;9002226.02101,"544,35356-0021-68 ",.02)
 ;;35356-0021-68
 ;;9002226.02101,"544,35356-0255-28 ",.01)
 ;;35356-0255-28
 ;;9002226.02101,"544,35356-0255-28 ",.02)
 ;;35356-0255-28
 ;;9002226.02101,"544,35356-0370-28 ",.01)
 ;;35356-0370-28
 ;;9002226.02101,"544,35356-0370-28 ",.02)
 ;;35356-0370-28
 ;;9002226.02101,"544,43386-0620-30 ",.01)
 ;;43386-0620-30
 ;;9002226.02101,"544,43386-0620-30 ",.02)
 ;;43386-0620-30
 ;;9002226.02101,"544,43386-0622-30 ",.01)
 ;;43386-0622-30
 ;;9002226.02101,"544,43386-0622-30 ",.02)
 ;;43386-0622-30
 ;;9002226.02101,"544,45802-0840-54 ",.01)
 ;;45802-0840-54
 ;;9002226.02101,"544,45802-0840-54 ",.02)
 ;;45802-0840-54
 ;;9002226.02101,"544,50102-0100-01 ",.01)
 ;;50102-0100-01
 ;;9002226.02101,"544,50102-0100-01 ",.02)
 ;;50102-0100-01
 ;;9002226.02101,"544,50102-0100-48 ",.01)
 ;;50102-0100-48
 ;;9002226.02101,"544,50102-0100-48 ",.02)
 ;;50102-0100-48
 ;;9002226.02101,"544,50102-0111-01 ",.01)
 ;;50102-0111-01
 ;;9002226.02101,"544,50102-0111-01 ",.02)
 ;;50102-0111-01
 ;;9002226.02101,"544,50102-0111-12 ",.01)
 ;;50102-0111-12
 ;;9002226.02101,"544,50102-0111-12 ",.02)
 ;;50102-0111-12
 ;;9002226.02101,"544,50102-0120-01 ",.01)
 ;;50102-0120-01
 ;;9002226.02101,"544,50102-0120-01 ",.02)
 ;;50102-0120-01
 ;;9002226.02101,"544,50102-0120-48 ",.01)
 ;;50102-0120-48
 ;;9002226.02101,"544,50102-0120-48 ",.02)
 ;;50102-0120-48
 ;;9002226.02101,"544,50102-0128-01 ",.01)
 ;;50102-0128-01
 ;;9002226.02101,"544,50102-0128-01 ",.02)
 ;;50102-0128-01
 ;;9002226.02101,"544,50102-0128-03 ",.01)
 ;;50102-0128-03
 ;;9002226.02101,"544,50102-0128-03 ",.02)
 ;;50102-0128-03
 ;;9002226.02101,"544,50102-0130-01 ",.01)
 ;;50102-0130-01
 ;;9002226.02101,"544,50102-0130-01 ",.02)
 ;;50102-0130-01
 ;;9002226.02101,"544,50102-0130-48 ",.01)
 ;;50102-0130-48
 ;;9002226.02101,"544,50102-0130-48 ",.02)
 ;;50102-0130-48
 ;;9002226.02101,"544,50102-0130-90 ",.01)
 ;;50102-0130-90
 ;;9002226.02101,"544,50102-0130-90 ",.02)
 ;;50102-0130-90
 ;;9002226.02101,"544,50102-0154-01 ",.01)
 ;;50102-0154-01
 ;;9002226.02101,"544,50102-0154-01 ",.02)
 ;;50102-0154-01
 ;;9002226.02101,"544,50102-0154-03 ",.01)
 ;;50102-0154-03
 ;;9002226.02101,"544,50102-0154-03 ",.02)
 ;;50102-0154-03
 ;;9002226.02101,"544,50419-0402-01 ",.01)
 ;;50419-0402-01
 ;;9002226.02101,"544,50419-0402-01 ",.02)
 ;;50419-0402-01
 ;;9002226.02101,"544,50419-0402-03 ",.01)
 ;;50419-0402-03
 ;;9002226.02101,"544,50419-0402-03 ",.02)
 ;;50419-0402-03
 ;;9002226.02101,"544,50419-0403-03 ",.01)
 ;;50419-0403-03
 ;;9002226.02101,"544,50419-0403-03 ",.02)
 ;;50419-0403-03
 ;;9002226.02101,"544,50419-0405-03 ",.01)
 ;;50419-0405-03
 ;;9002226.02101,"544,50419-0405-03 ",.02)
 ;;50419-0405-03
 ;;9002226.02101,"544,50419-0407-01 ",.01)
 ;;50419-0407-01
 ;;9002226.02101,"544,50419-0407-01 ",.02)
 ;;50419-0407-01
 ;;9002226.02101,"544,50419-0407-03 ",.01)
 ;;50419-0407-03
 ;;9002226.02101,"544,50419-0407-03 ",.02)
 ;;50419-0407-03
 ;;9002226.02101,"544,50419-0409-01 ",.01)
 ;;50419-0409-01
 ;;9002226.02101,"544,50419-0409-01 ",.02)
 ;;50419-0409-01
 ;;9002226.02101,"544,50419-0409-03 ",.01)
 ;;50419-0409-03
 ;;9002226.02101,"544,50419-0409-03 ",.02)
 ;;50419-0409-03
 ;;9002226.02101,"544,50419-0411-12 ",.01)
 ;;50419-0411-12
 ;;9002226.02101,"544,50419-0411-12 ",.02)
 ;;50419-0411-12
 ;;9002226.02101,"544,50419-0411-28 ",.01)
 ;;50419-0411-28
 ;;9002226.02101,"544,50419-0411-28 ",.02)
 ;;50419-0411-28
 ;;9002226.02101,"544,50419-0421-01 ",.01)
 ;;50419-0421-01
 ;;9002226.02101,"544,50419-0421-01 ",.02)
 ;;50419-0421-01
 ;;9002226.02101,"544,50419-0422-01 ",.01)
 ;;50419-0422-01
 ;;9002226.02101,"544,50419-0422-01 ",.02)
 ;;50419-0422-01
 ;;9002226.02101,"544,50419-0423-01 ",.01)
 ;;50419-0423-01
 ;;9002226.02101,"544,50419-0423-01 ",.02)
 ;;50419-0423-01
 ;;9002226.02101,"544,50419-0433-06 ",.01)
 ;;50419-0433-06
 ;;9002226.02101,"544,50419-0433-06 ",.02)
 ;;50419-0433-06
 ;;9002226.02101,"544,50419-0433-12 ",.01)
 ;;50419-0433-12
 ;;9002226.02101,"544,50419-0433-12 ",.02)
 ;;50419-0433-12
 ;;9002226.02101,"544,50458-0171-15 ",.01)
 ;;50458-0171-15
 ;;9002226.02101,"544,50458-0171-15 ",.02)
 ;;50458-0171-15
 ;;9002226.02101,"544,50458-0176-15 ",.01)
 ;;50458-0176-15
 ;;9002226.02101,"544,50458-0176-15 ",.02)
 ;;50458-0176-15
 ;;9002226.02101,"544,50458-0178-15 ",.01)
 ;;50458-0178-15
 ;;9002226.02101,"544,50458-0178-15 ",.02)
 ;;50458-0178-15
 ;;9002226.02101,"544,50458-0191-15 ",.01)
 ;;50458-0191-15
 ;;9002226.02101,"544,50458-0191-15 ",.02)
 ;;50458-0191-15
 ;;9002226.02101,"544,50458-0192-01 ",.01)
 ;;50458-0192-01
 ;;9002226.02101,"544,50458-0192-01 ",.02)
 ;;50458-0192-01
 ;;9002226.02101,"544,50458-0192-15 ",.01)
 ;;50458-0192-15
 ;;9002226.02101,"544,50458-0192-15 ",.02)
 ;;50458-0192-15
 ;;9002226.02101,"544,50458-0194-11 ",.01)
 ;;50458-0194-11
 ;;9002226.02101,"544,50458-0194-11 ",.02)
 ;;50458-0194-11
 ;;9002226.02101,"544,50458-0194-16 ",.01)
 ;;50458-0194-16
 ;;9002226.02101,"544,50458-0194-16 ",.02)
 ;;50458-0194-16
 ;;9002226.02101,"544,50458-0196-15 ",.01)
 ;;50458-0196-15
 ;;9002226.02101,"544,50458-0196-15 ",.02)
 ;;50458-0196-15
 ;;9002226.02101,"544,50458-0197-15 ",.01)
 ;;50458-0197-15
 ;;9002226.02101,"544,50458-0197-15 ",.02)
 ;;50458-0197-15
 ;;9002226.02101,"544,50458-0251-15 ",.01)
 ;;50458-0251-15
 ;;9002226.02101,"544,50458-0251-15 ",.02)
 ;;50458-0251-15
 ;;9002226.02101,"544,50486-0221-12 ",.01)
 ;;50486-0221-12