BGP8ZS27 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1799,66267-0018-60 ",.01)
 ;;66267-0018-60
 ;;9002226.02101,"1799,66267-0018-60 ",.02)
 ;;66267-0018-60
 ;;9002226.02101,"1799,66267-0018-90 ",.01)
 ;;66267-0018-90
 ;;9002226.02101,"1799,66267-0018-90 ",.02)
 ;;66267-0018-90
 ;;9002226.02101,"1799,66267-0019-14 ",.01)
 ;;66267-0019-14
 ;;9002226.02101,"1799,66267-0019-14 ",.02)
 ;;66267-0019-14
 ;;9002226.02101,"1799,66267-0019-30 ",.01)
 ;;66267-0019-30
 ;;9002226.02101,"1799,66267-0019-30 ",.02)
 ;;66267-0019-30
 ;;9002226.02101,"1799,66267-0019-60 ",.01)
 ;;66267-0019-60
 ;;9002226.02101,"1799,66267-0019-60 ",.02)
 ;;66267-0019-60
 ;;9002226.02101,"1799,66267-0019-90 ",.01)
 ;;66267-0019-90
 ;;9002226.02101,"1799,66267-0019-90 ",.02)
 ;;66267-0019-90
 ;;9002226.02101,"1799,66267-0019-91 ",.01)
 ;;66267-0019-91
 ;;9002226.02101,"1799,66267-0019-91 ",.02)
 ;;66267-0019-91
 ;;9002226.02101,"1799,66267-0020-30 ",.01)
 ;;66267-0020-30
 ;;9002226.02101,"1799,66267-0020-30 ",.02)
 ;;66267-0020-30
 ;;9002226.02101,"1799,66267-0020-60 ",.01)
 ;;66267-0020-60
 ;;9002226.02101,"1799,66267-0020-60 ",.02)
 ;;66267-0020-60
 ;;9002226.02101,"1799,66267-0020-90 ",.01)
 ;;66267-0020-90
 ;;9002226.02101,"1799,66267-0020-90 ",.02)
 ;;66267-0020-90
 ;;9002226.02101,"1799,66267-0032-15 ",.01)
 ;;66267-0032-15
 ;;9002226.02101,"1799,66267-0032-15 ",.02)
 ;;66267-0032-15
 ;;9002226.02101,"1799,66267-0032-20 ",.01)
 ;;66267-0032-20
 ;;9002226.02101,"1799,66267-0032-20 ",.02)
 ;;66267-0032-20
 ;;9002226.02101,"1799,66267-0032-30 ",.01)
 ;;66267-0032-30
 ;;9002226.02101,"1799,66267-0032-30 ",.02)
 ;;66267-0032-30
 ;;9002226.02101,"1799,66267-0039-12 ",.01)
 ;;66267-0039-12
 ;;9002226.02101,"1799,66267-0039-12 ",.02)
 ;;66267-0039-12
 ;;9002226.02101,"1799,66267-0039-30 ",.01)
 ;;66267-0039-30
 ;;9002226.02101,"1799,66267-0039-30 ",.02)
 ;;66267-0039-30
 ;;9002226.02101,"1799,66267-0039-60 ",.01)
 ;;66267-0039-60
 ;;9002226.02101,"1799,66267-0039-60 ",.02)
 ;;66267-0039-60
 ;;9002226.02101,"1799,66267-0039-90 ",.01)
 ;;66267-0039-90
 ;;9002226.02101,"1799,66267-0039-90 ",.02)
 ;;66267-0039-90
 ;;9002226.02101,"1799,66267-0084-30 ",.01)
 ;;66267-0084-30
 ;;9002226.02101,"1799,66267-0084-30 ",.02)
 ;;66267-0084-30
 ;;9002226.02101,"1799,66267-0266-30 ",.01)
 ;;66267-0266-30
 ;;9002226.02101,"1799,66267-0266-30 ",.02)
 ;;66267-0266-30
 ;;9002226.02101,"1799,66267-0483-30 ",.01)
 ;;66267-0483-30
 ;;9002226.02101,"1799,66267-0483-30 ",.02)
 ;;66267-0483-30
 ;;9002226.02101,"1799,66267-0483-45 ",.01)
 ;;66267-0483-45
 ;;9002226.02101,"1799,66267-0483-45 ",.02)
 ;;66267-0483-45
 ;;9002226.02101,"1799,66267-0483-60 ",.01)
 ;;66267-0483-60
 ;;9002226.02101,"1799,66267-0483-60 ",.02)
 ;;66267-0483-60
 ;;9002226.02101,"1799,66267-0484-30 ",.01)
 ;;66267-0484-30
 ;;9002226.02101,"1799,66267-0484-30 ",.02)
 ;;66267-0484-30
 ;;9002226.02101,"1799,66267-0484-45 ",.01)
 ;;66267-0484-45
 ;;9002226.02101,"1799,66267-0484-45 ",.02)
 ;;66267-0484-45
 ;;9002226.02101,"1799,66267-0484-60 ",.01)
 ;;66267-0484-60
 ;;9002226.02101,"1799,66267-0484-60 ",.02)
 ;;66267-0484-60
 ;;9002226.02101,"1799,66267-0560-90 ",.01)
 ;;66267-0560-90
 ;;9002226.02101,"1799,66267-0560-90 ",.02)
 ;;66267-0560-90
 ;;9002226.02101,"1799,66267-0626-30 ",.01)
 ;;66267-0626-30
 ;;9002226.02101,"1799,66267-0626-30 ",.02)
 ;;66267-0626-30
 ;;9002226.02101,"1799,66267-0680-30 ",.01)
 ;;66267-0680-30
 ;;9002226.02101,"1799,66267-0680-30 ",.02)
 ;;66267-0680-30
 ;;9002226.02101,"1799,66267-0721-30 ",.01)
 ;;66267-0721-30
 ;;9002226.02101,"1799,66267-0721-30 ",.02)
 ;;66267-0721-30
 ;;9002226.02101,"1799,66267-1006-00 ",.01)
 ;;66267-1006-00
 ;;9002226.02101,"1799,66267-1006-00 ",.02)
 ;;66267-1006-00
 ;;9002226.02101,"1799,66336-0027-62 ",.01)
 ;;66336-0027-62
 ;;9002226.02101,"1799,66336-0027-62 ",.02)
 ;;66336-0027-62
 ;;9002226.02101,"1799,66336-0027-94 ",.01)
 ;;66336-0027-94
 ;;9002226.02101,"1799,66336-0027-94 ",.02)
 ;;66336-0027-94
 ;;9002226.02101,"1799,66336-0224-30 ",.01)
 ;;66336-0224-30
 ;;9002226.02101,"1799,66336-0224-30 ",.02)
 ;;66336-0224-30
 ;;9002226.02101,"1799,66336-0224-60 ",.01)
 ;;66336-0224-60
 ;;9002226.02101,"1799,66336-0224-60 ",.02)
 ;;66336-0224-60
 ;;9002226.02101,"1799,66336-0354-62 ",.01)
 ;;66336-0354-62
 ;;9002226.02101,"1799,66336-0354-62 ",.02)
 ;;66336-0354-62
 ;;9002226.02101,"1799,66336-0619-30 ",.01)
 ;;66336-0619-30
 ;;9002226.02101,"1799,66336-0619-30 ",.02)
 ;;66336-0619-30
 ;;9002226.02101,"1799,66336-0673-30 ",.01)
 ;;66336-0673-30
 ;;9002226.02101,"1799,66336-0673-30 ",.02)
 ;;66336-0673-30
 ;;9002226.02101,"1799,66336-0673-50 ",.01)
 ;;66336-0673-50
 ;;9002226.02101,"1799,66336-0673-50 ",.02)
 ;;66336-0673-50
 ;;9002226.02101,"1799,66336-0673-60 ",.01)
 ;;66336-0673-60
 ;;9002226.02101,"1799,66336-0673-60 ",.02)
 ;;66336-0673-60
 ;;9002226.02101,"1799,66336-0973-30 ",.01)
 ;;66336-0973-30
 ;;9002226.02101,"1799,66336-0973-30 ",.02)
 ;;66336-0973-30
 ;;9002226.02101,"1799,66647-4340-50 ",.01)
 ;;66647-4340-50
 ;;9002226.02101,"1799,66647-4340-50 ",.02)
 ;;66647-4340-50
 ;;9002226.02101,"1799,67544-0031-30 ",.01)
 ;;67544-0031-30
 ;;9002226.02101,"1799,67544-0031-30 ",.02)
 ;;67544-0031-30
 ;;9002226.02101,"1799,67544-0057-30 ",.01)
 ;;67544-0057-30
 ;;9002226.02101,"1799,67544-0057-30 ",.02)
 ;;67544-0057-30
 ;;9002226.02101,"1799,67544-0057-53 ",.01)
 ;;67544-0057-53
 ;;9002226.02101,"1799,67544-0057-53 ",.02)
 ;;67544-0057-53
 ;;9002226.02101,"1799,67544-0057-60 ",.01)
 ;;67544-0057-60
 ;;9002226.02101,"1799,67544-0057-60 ",.02)
 ;;67544-0057-60
 ;;9002226.02101,"1799,67544-0057-70 ",.01)
 ;;67544-0057-70
 ;;9002226.02101,"1799,67544-0057-70 ",.02)
 ;;67544-0057-70
 ;;9002226.02101,"1799,67544-0057-75 ",.01)
 ;;67544-0057-75
 ;;9002226.02101,"1799,67544-0057-75 ",.02)
 ;;67544-0057-75
 ;;9002226.02101,"1799,67544-0057-80 ",.01)
 ;;67544-0057-80
 ;;9002226.02101,"1799,67544-0057-80 ",.02)
 ;;67544-0057-80
 ;;9002226.02101,"1799,67544-0057-92 ",.01)
 ;;67544-0057-92
 ;;9002226.02101,"1799,67544-0057-92 ",.02)
 ;;67544-0057-92
 ;;9002226.02101,"1799,67544-0057-94 ",.01)
 ;;67544-0057-94
 ;;9002226.02101,"1799,67544-0057-94 ",.02)
 ;;67544-0057-94
 ;;9002226.02101,"1799,67544-0078-30 ",.01)
 ;;67544-0078-30
 ;;9002226.02101,"1799,67544-0078-30 ",.02)
 ;;67544-0078-30
 ;;9002226.02101,"1799,67544-0078-53 ",.01)
 ;;67544-0078-53
 ;;9002226.02101,"1799,67544-0078-53 ",.02)
 ;;67544-0078-53
 ;;9002226.02101,"1799,67544-0078-60 ",.01)
 ;;67544-0078-60
 ;;9002226.02101,"1799,67544-0078-60 ",.02)
 ;;67544-0078-60
 ;;9002226.02101,"1799,67544-0078-70 ",.01)
 ;;67544-0078-70
 ;;9002226.02101,"1799,67544-0078-70 ",.02)
 ;;67544-0078-70
 ;;9002226.02101,"1799,67544-0078-80 ",.01)
 ;;67544-0078-80
 ;;9002226.02101,"1799,67544-0078-80 ",.02)
 ;;67544-0078-80
 ;;9002226.02101,"1799,67544-0078-92 ",.01)
 ;;67544-0078-92
 ;;9002226.02101,"1799,67544-0078-92 ",.02)
 ;;67544-0078-92
 ;;9002226.02101,"1799,67544-0085-30 ",.01)
 ;;67544-0085-30
 ;;9002226.02101,"1799,67544-0085-30 ",.02)
 ;;67544-0085-30
 ;;9002226.02101,"1799,67544-0085-53 ",.01)
 ;;67544-0085-53
 ;;9002226.02101,"1799,67544-0085-53 ",.02)
 ;;67544-0085-53
 ;;9002226.02101,"1799,67544-0085-60 ",.01)
 ;;67544-0085-60
 ;;9002226.02101,"1799,67544-0085-60 ",.02)
 ;;67544-0085-60
 ;;9002226.02101,"1799,67544-0085-70 ",.01)
 ;;67544-0085-70
 ;;9002226.02101,"1799,67544-0085-70 ",.02)
 ;;67544-0085-70
 ;;9002226.02101,"1799,67544-0085-75 ",.01)
 ;;67544-0085-75
 ;;9002226.02101,"1799,67544-0085-75 ",.02)
 ;;67544-0085-75
 ;;9002226.02101,"1799,67544-0085-80 ",.01)
 ;;67544-0085-80
 ;;9002226.02101,"1799,67544-0085-80 ",.02)
 ;;67544-0085-80
 ;;9002226.02101,"1799,67544-0121-30 ",.01)
 ;;67544-0121-30
 ;;9002226.02101,"1799,67544-0121-30 ",.02)
 ;;67544-0121-30
 ;;9002226.02101,"1799,67544-0121-53 ",.01)
 ;;67544-0121-53
 ;;9002226.02101,"1799,67544-0121-53 ",.02)
 ;;67544-0121-53
 ;;9002226.02101,"1799,67544-0121-60 ",.01)
 ;;67544-0121-60
 ;;9002226.02101,"1799,67544-0121-60 ",.02)
 ;;67544-0121-60
 ;;9002226.02101,"1799,67544-0121-70 ",.01)
 ;;67544-0121-70
 ;;9002226.02101,"1799,67544-0121-70 ",.02)
 ;;67544-0121-70
 ;;9002226.02101,"1799,67544-0121-75 ",.01)
 ;;67544-0121-75
 ;;9002226.02101,"1799,67544-0121-75 ",.02)
 ;;67544-0121-75
 ;;9002226.02101,"1799,67544-0206-30 ",.01)
 ;;67544-0206-30
 ;;9002226.02101,"1799,67544-0206-30 ",.02)
 ;;67544-0206-30
 ;;9002226.02101,"1799,67544-0206-60 ",.01)
 ;;67544-0206-60
 ;;9002226.02101,"1799,67544-0206-60 ",.02)
 ;;67544-0206-60
 ;;9002226.02101,"1799,67544-0253-30 ",.01)
 ;;67544-0253-30
 ;;9002226.02101,"1799,67544-0253-30 ",.02)
 ;;67544-0253-30
 ;;9002226.02101,"1799,67544-0253-53 ",.01)
 ;;67544-0253-53
 ;;9002226.02101,"1799,67544-0253-53 ",.02)
 ;;67544-0253-53
 ;;9002226.02101,"1799,67544-0253-60 ",.01)
 ;;67544-0253-60
 ;;9002226.02101,"1799,67544-0253-60 ",.02)
 ;;67544-0253-60
 ;;9002226.02101,"1799,67544-0253-70 ",.01)
 ;;67544-0253-70
 ;;9002226.02101,"1799,67544-0253-70 ",.02)
 ;;67544-0253-70
 ;;9002226.02101,"1799,67544-0267-30 ",.01)
 ;;67544-0267-30
 ;;9002226.02101,"1799,67544-0267-30 ",.02)
 ;;67544-0267-30
 ;;9002226.02101,"1799,67544-0317-15 ",.01)
 ;;67544-0317-15
 ;;9002226.02101,"1799,67544-0317-15 ",.02)
 ;;67544-0317-15
 ;;9002226.02101,"1799,67544-0317-30 ",.01)
 ;;67544-0317-30
 ;;9002226.02101,"1799,67544-0317-30 ",.02)
 ;;67544-0317-30
 ;;9002226.02101,"1799,67544-0317-53 ",.01)
 ;;67544-0317-53
 ;;9002226.02101,"1799,67544-0317-53 ",.02)
 ;;67544-0317-53
 ;;9002226.02101,"1799,67544-0317-60 ",.01)
 ;;67544-0317-60
 ;;9002226.02101,"1799,67544-0317-60 ",.02)
 ;;67544-0317-60
 ;;9002226.02101,"1799,67544-0383-30 ",.01)
 ;;67544-0383-30
 ;;9002226.02101,"1799,67544-0383-30 ",.02)
 ;;67544-0383-30
 ;;9002226.02101,"1799,67544-0383-53 ",.01)
 ;;67544-0383-53
 ;;9002226.02101,"1799,67544-0383-53 ",.02)
 ;;67544-0383-53
 ;;9002226.02101,"1799,67544-0383-60 ",.01)
 ;;67544-0383-60
 ;;9002226.02101,"1799,67544-0383-60 ",.02)
 ;;67544-0383-60
 ;;9002226.02101,"1799,67544-0383-70 ",.01)
 ;;67544-0383-70
 ;;9002226.02101,"1799,67544-0383-70 ",.02)
 ;;67544-0383-70
 ;;9002226.02101,"1799,67544-0394-30 ",.01)
 ;;67544-0394-30
 ;;9002226.02101,"1799,67544-0394-30 ",.02)
 ;;67544-0394-30
 ;;9002226.02101,"1799,67544-0394-53 ",.01)
 ;;67544-0394-53
 ;;9002226.02101,"1799,67544-0394-53 ",.02)
 ;;67544-0394-53
 ;;9002226.02101,"1799,67544-0394-60 ",.01)
 ;;67544-0394-60
 ;;9002226.02101,"1799,67544-0394-60 ",.02)
 ;;67544-0394-60
 ;;9002226.02101,"1799,67544-0394-70 ",.01)
 ;;67544-0394-70
 ;;9002226.02101,"1799,67544-0394-70 ",.02)
 ;;67544-0394-70
 ;;9002226.02101,"1799,67544-0492-30 ",.01)
 ;;67544-0492-30
 ;;9002226.02101,"1799,67544-0492-30 ",.02)
 ;;67544-0492-30
 ;;9002226.02101,"1799,67544-0759-53 ",.01)
 ;;67544-0759-53
 ;;9002226.02101,"1799,67544-0759-53 ",.02)
 ;;67544-0759-53
 ;;9002226.02101,"1799,68047-0721-01 ",.01)
 ;;68047-0721-01
 ;;9002226.02101,"1799,68047-0721-01 ",.02)
 ;;68047-0721-01
 ;;9002226.02101,"1799,68071-0034-30 ",.01)
 ;;68071-0034-30
 ;;9002226.02101,"1799,68071-0034-30 ",.02)
 ;;68071-0034-30
 ;;9002226.02101,"1799,68071-0323-30 ",.01)
 ;;68071-0323-30
 ;;9002226.02101,"1799,68071-0323-30 ",.02)
 ;;68071-0323-30
 ;;9002226.02101,"1799,68071-0323-60 ",.01)
 ;;68071-0323-60
 ;;9002226.02101,"1799,68071-0323-60 ",.02)
 ;;68071-0323-60
 ;;9002226.02101,"1799,68071-0323-90 ",.01)
 ;;68071-0323-90
 ;;9002226.02101,"1799,68071-0323-90 ",.02)
 ;;68071-0323-90
 ;;9002226.02101,"1799,68071-0421-30 ",.01)
 ;;68071-0421-30
 ;;9002226.02101,"1799,68071-0421-30 ",.02)
 ;;68071-0421-30
 ;;9002226.02101,"1799,68071-0421-60 ",.01)
 ;;68071-0421-60