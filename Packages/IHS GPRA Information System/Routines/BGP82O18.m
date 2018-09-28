BGP82O18 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1876,35356-0899-90 ",.02)
 ;;35356-0899-90
 ;;9002226.02101,"1876,35356-0922-60 ",.01)
 ;;35356-0922-60
 ;;9002226.02101,"1876,35356-0922-60 ",.02)
 ;;35356-0922-60
 ;;9002226.02101,"1876,35356-0922-90 ",.01)
 ;;35356-0922-90
 ;;9002226.02101,"1876,35356-0922-90 ",.02)
 ;;35356-0922-90
 ;;9002226.02101,"1876,35356-0931-30 ",.01)
 ;;35356-0931-30
 ;;9002226.02101,"1876,35356-0931-30 ",.02)
 ;;35356-0931-30
 ;;9002226.02101,"1876,35356-0931-60 ",.01)
 ;;35356-0931-60
 ;;9002226.02101,"1876,35356-0931-60 ",.02)
 ;;35356-0931-60
 ;;9002226.02101,"1876,35356-0931-90 ",.01)
 ;;35356-0931-90
 ;;9002226.02101,"1876,35356-0931-90 ",.02)
 ;;35356-0931-90
 ;;9002226.02101,"1876,35356-0932-30 ",.01)
 ;;35356-0932-30
 ;;9002226.02101,"1876,35356-0932-30 ",.02)
 ;;35356-0932-30
 ;;9002226.02101,"1876,35356-0932-60 ",.01)
 ;;35356-0932-60
 ;;9002226.02101,"1876,35356-0932-60 ",.02)
 ;;35356-0932-60
 ;;9002226.02101,"1876,35356-0932-90 ",.01)
 ;;35356-0932-90
 ;;9002226.02101,"1876,35356-0932-90 ",.02)
 ;;35356-0932-90
 ;;9002226.02101,"1876,35356-0959-30 ",.01)
 ;;35356-0959-30
 ;;9002226.02101,"1876,35356-0959-30 ",.02)
 ;;35356-0959-30
 ;;9002226.02101,"1876,35356-0959-60 ",.01)
 ;;35356-0959-60
 ;;9002226.02101,"1876,35356-0959-60 ",.02)
 ;;35356-0959-60
 ;;9002226.02101,"1876,35356-0959-90 ",.01)
 ;;35356-0959-90
 ;;9002226.02101,"1876,35356-0959-90 ",.02)
 ;;35356-0959-90
 ;;9002226.02101,"1876,35356-0970-30 ",.01)
 ;;35356-0970-30
 ;;9002226.02101,"1876,35356-0970-30 ",.02)
 ;;35356-0970-30
 ;;9002226.02101,"1876,35356-0970-60 ",.01)
 ;;35356-0970-60
 ;;9002226.02101,"1876,35356-0970-60 ",.02)
 ;;35356-0970-60
 ;;9002226.02101,"1876,35356-0970-90 ",.01)
 ;;35356-0970-90
 ;;9002226.02101,"1876,35356-0970-90 ",.02)
 ;;35356-0970-90
 ;;9002226.02101,"1876,35356-0995-30 ",.01)
 ;;35356-0995-30
 ;;9002226.02101,"1876,35356-0995-30 ",.02)
 ;;35356-0995-30
 ;;9002226.02101,"1876,35356-0995-60 ",.01)
 ;;35356-0995-60
 ;;9002226.02101,"1876,35356-0995-60 ",.02)
 ;;35356-0995-60
 ;;9002226.02101,"1876,35356-0995-90 ",.01)
 ;;35356-0995-90
 ;;9002226.02101,"1876,35356-0995-90 ",.02)
 ;;35356-0995-90
 ;;9002226.02101,"1876,42254-0071-30 ",.01)
 ;;42254-0071-30
 ;;9002226.02101,"1876,42254-0071-30 ",.02)
 ;;42254-0071-30
 ;;9002226.02101,"1876,42254-0090-60 ",.01)
 ;;42254-0090-60
 ;;9002226.02101,"1876,42254-0090-60 ",.02)
 ;;42254-0090-60
 ;;9002226.02101,"1876,42254-0281-30 ",.01)
 ;;42254-0281-30
 ;;9002226.02101,"1876,42254-0281-30 ",.02)
 ;;42254-0281-30
 ;;9002226.02101,"1876,42254-0281-90 ",.01)
 ;;42254-0281-90
 ;;9002226.02101,"1876,42254-0281-90 ",.02)
 ;;42254-0281-90
 ;;9002226.02101,"1876,42291-0305-01 ",.01)
 ;;42291-0305-01
 ;;9002226.02101,"1876,42291-0305-01 ",.02)
 ;;42291-0305-01
 ;;9002226.02101,"1876,42291-0306-01 ",.01)
 ;;42291-0306-01
 ;;9002226.02101,"1876,42291-0306-01 ",.02)
 ;;42291-0306-01
 ;;9002226.02101,"1876,42291-0316-50 ",.01)
 ;;42291-0316-50
 ;;9002226.02101,"1876,42291-0316-50 ",.02)
 ;;42291-0316-50
 ;;9002226.02101,"1876,42291-0317-10 ",.01)
 ;;42291-0317-10
 ;;9002226.02101,"1876,42291-0317-10 ",.02)
 ;;42291-0317-10
 ;;9002226.02101,"1876,42291-0512-60 ",.01)
 ;;42291-0512-60
 ;;9002226.02101,"1876,42291-0512-60 ",.02)
 ;;42291-0512-60
 ;;9002226.02101,"1876,42291-0513-60 ",.01)
 ;;42291-0513-60
 ;;9002226.02101,"1876,42291-0513-60 ",.02)
 ;;42291-0513-60
 ;;9002226.02101,"1876,42291-0582-60 ",.01)
 ;;42291-0582-60
 ;;9002226.02101,"1876,42291-0582-60 ",.02)
 ;;42291-0582-60
 ;;9002226.02101,"1876,42291-0583-60 ",.01)
 ;;42291-0583-60
 ;;9002226.02101,"1876,42291-0583-60 ",.02)
 ;;42291-0583-60
 ;;9002226.02101,"1876,42291-0592-18 ",.01)
 ;;42291-0592-18
 ;;9002226.02101,"1876,42291-0592-18 ",.02)
 ;;42291-0592-18
 ;;9002226.02101,"1876,42291-0592-60 ",.01)
 ;;42291-0592-60
 ;;9002226.02101,"1876,42291-0592-60 ",.02)
 ;;42291-0592-60
 ;;9002226.02101,"1876,42291-0593-18 ",.01)
 ;;42291-0593-18
 ;;9002226.02101,"1876,42291-0593-18 ",.02)
 ;;42291-0593-18
 ;;9002226.02101,"1876,42291-0593-60 ",.01)
 ;;42291-0593-60
 ;;9002226.02101,"1876,42291-0593-60 ",.02)
 ;;42291-0593-60
 ;;9002226.02101,"1876,42291-0605-10 ",.01)
 ;;42291-0605-10
 ;;9002226.02101,"1876,42291-0605-10 ",.02)
 ;;42291-0605-10
 ;;9002226.02101,"1876,42291-0605-12 ",.01)
 ;;42291-0605-12
 ;;9002226.02101,"1876,42291-0605-12 ",.02)
 ;;42291-0605-12
 ;;9002226.02101,"1876,42291-0605-18 ",.01)
 ;;42291-0605-18
 ;;9002226.02101,"1876,42291-0605-18 ",.02)
 ;;42291-0605-18
 ;;9002226.02101,"1876,42291-0605-27 ",.01)
 ;;42291-0605-27
 ;;9002226.02101,"1876,42291-0605-27 ",.02)
 ;;42291-0605-27
 ;;9002226.02101,"1876,42291-0605-36 ",.01)
 ;;42291-0605-36
 ;;9002226.02101,"1876,42291-0605-36 ",.02)
 ;;42291-0605-36
 ;;9002226.02101,"1876,42291-0605-45 ",.01)
 ;;42291-0605-45
 ;;9002226.02101,"1876,42291-0605-45 ",.02)
 ;;42291-0605-45
 ;;9002226.02101,"1876,42291-0605-60 ",.01)
 ;;42291-0605-60
 ;;9002226.02101,"1876,42291-0605-60 ",.02)
 ;;42291-0605-60
 ;;9002226.02101,"1876,42291-0605-90 ",.01)
 ;;42291-0605-90
 ;;9002226.02101,"1876,42291-0605-90 ",.02)
 ;;42291-0605-90
 ;;9002226.02101,"1876,42291-0606-10 ",.01)
 ;;42291-0606-10
 ;;9002226.02101,"1876,42291-0606-10 ",.02)
 ;;42291-0606-10
 ;;9002226.02101,"1876,42291-0606-18 ",.01)
 ;;42291-0606-18
 ;;9002226.02101,"1876,42291-0606-18 ",.02)
 ;;42291-0606-18
 ;;9002226.02101,"1876,42291-0606-27 ",.01)
 ;;42291-0606-27
 ;;9002226.02101,"1876,42291-0606-27 ",.02)
 ;;42291-0606-27
 ;;9002226.02101,"1876,42291-0606-90 ",.01)
 ;;42291-0606-90
 ;;9002226.02101,"1876,42291-0606-90 ",.02)
 ;;42291-0606-90
 ;;9002226.02101,"1876,42291-0607-10 ",.01)
 ;;42291-0607-10
 ;;9002226.02101,"1876,42291-0607-10 ",.02)
 ;;42291-0607-10
 ;;9002226.02101,"1876,42291-0607-18 ",.01)
 ;;42291-0607-18
 ;;9002226.02101,"1876,42291-0607-18 ",.02)
 ;;42291-0607-18
 ;;9002226.02101,"1876,42291-0607-60 ",.01)
 ;;42291-0607-60
 ;;9002226.02101,"1876,42291-0607-60 ",.02)
 ;;42291-0607-60
 ;;9002226.02101,"1876,42291-0607-90 ",.01)
 ;;42291-0607-90
 ;;9002226.02101,"1876,42291-0607-90 ",.02)
 ;;42291-0607-90
 ;;9002226.02101,"1876,42291-0610-10 ",.01)
 ;;42291-0610-10
 ;;9002226.02101,"1876,42291-0610-10 ",.02)
 ;;42291-0610-10
 ;;9002226.02101,"1876,42291-0610-18 ",.01)
 ;;42291-0610-18
 ;;9002226.02101,"1876,42291-0610-18 ",.02)
 ;;42291-0610-18
 ;;9002226.02101,"1876,42291-0610-36 ",.01)
 ;;42291-0610-36
 ;;9002226.02101,"1876,42291-0610-36 ",.02)
 ;;42291-0610-36
 ;;9002226.02101,"1876,42291-0610-90 ",.01)
 ;;42291-0610-90
 ;;9002226.02101,"1876,42291-0610-90 ",.02)
 ;;42291-0610-90
 ;;9002226.02101,"1876,42291-0611-18 ",.01)
 ;;42291-0611-18
 ;;9002226.02101,"1876,42291-0611-18 ",.02)
 ;;42291-0611-18
 ;;9002226.02101,"1876,42291-0611-27 ",.01)
 ;;42291-0611-27
 ;;9002226.02101,"1876,42291-0611-27 ",.02)
 ;;42291-0611-27
 ;;9002226.02101,"1876,42291-0611-50 ",.01)
 ;;42291-0611-50
 ;;9002226.02101,"1876,42291-0611-50 ",.02)
 ;;42291-0611-50
 ;;9002226.02101,"1876,42291-0611-90 ",.01)
 ;;42291-0611-90
 ;;9002226.02101,"1876,42291-0611-90 ",.02)
 ;;42291-0611-90
 ;;9002226.02101,"1876,42291-0636-01 ",.01)
 ;;42291-0636-01
 ;;9002226.02101,"1876,42291-0636-01 ",.02)
 ;;42291-0636-01
 ;;9002226.02101,"1876,42291-0637-01 ",.01)
 ;;42291-0637-01
 ;;9002226.02101,"1876,42291-0637-01 ",.02)
 ;;42291-0637-01
 ;;9002226.02101,"1876,42291-0693-60 ",.01)
 ;;42291-0693-60
 ;;9002226.02101,"1876,42291-0693-60 ",.02)
 ;;42291-0693-60
 ;;9002226.02101,"1876,42291-0694-60 ",.01)
 ;;42291-0694-60
 ;;9002226.02101,"1876,42291-0694-60 ",.02)
 ;;42291-0694-60
 ;;9002226.02101,"1876,42291-0719-90 ",.01)
 ;;42291-0719-90
 ;;9002226.02101,"1876,42291-0719-90 ",.02)
 ;;42291-0719-90
 ;;9002226.02101,"1876,42291-0720-90 ",.01)
 ;;42291-0720-90
 ;;9002226.02101,"1876,42291-0720-90 ",.02)
 ;;42291-0720-90
 ;;9002226.02101,"1876,42549-0498-30 ",.01)
 ;;42549-0498-30
 ;;9002226.02101,"1876,42549-0498-30 ",.02)
 ;;42549-0498-30
 ;;9002226.02101,"1876,42549-0499-30 ",.01)
 ;;42549-0499-30
 ;;9002226.02101,"1876,42549-0499-30 ",.02)
 ;;42549-0499-30
 ;;9002226.02101,"1876,42571-0100-01 ",.01)
 ;;42571-0100-01
 ;;9002226.02101,"1876,42571-0100-01 ",.02)
 ;;42571-0100-01
 ;;9002226.02101,"1876,42571-0100-05 ",.01)
 ;;42571-0100-05
 ;;9002226.02101,"1876,42571-0100-05 ",.02)
 ;;42571-0100-05
 ;;9002226.02101,"1876,42571-0101-01 ",.01)
 ;;42571-0101-01
 ;;9002226.02101,"1876,42571-0101-01 ",.02)
 ;;42571-0101-01
 ;;9002226.02101,"1876,42571-0101-05 ",.01)
 ;;42571-0101-05
 ;;9002226.02101,"1876,42571-0101-05 ",.02)
 ;;42571-0101-05
 ;;9002226.02101,"1876,42571-0103-01 ",.01)
 ;;42571-0103-01
 ;;9002226.02101,"1876,42571-0103-01 ",.02)
 ;;42571-0103-01
 ;;9002226.02101,"1876,42571-0103-05 ",.01)
 ;;42571-0103-05
 ;;9002226.02101,"1876,42571-0103-05 ",.02)
 ;;42571-0103-05
 ;;9002226.02101,"1876,42806-0213-05 ",.01)
 ;;42806-0213-05
 ;;9002226.02101,"1876,42806-0213-05 ",.02)
 ;;42806-0213-05
 ;;9002226.02101,"1876,42806-0213-10 ",.01)
 ;;42806-0213-10
 ;;9002226.02101,"1876,42806-0213-10 ",.02)
 ;;42806-0213-10
 ;;9002226.02101,"1876,42806-0215-01 ",.01)
 ;;42806-0215-01
 ;;9002226.02101,"1876,42806-0215-01 ",.02)
 ;;42806-0215-01
 ;;9002226.02101,"1876,42806-0215-05 ",.01)
 ;;42806-0215-05
 ;;9002226.02101,"1876,42806-0215-05 ",.02)
 ;;42806-0215-05
 ;;9002226.02101,"1876,42806-0221-05 ",.01)
 ;;42806-0221-05
 ;;9002226.02101,"1876,42806-0221-05 ",.02)
 ;;42806-0221-05
 ;;9002226.02101,"1876,42806-0313-05 ",.01)
 ;;42806-0313-05
 ;;9002226.02101,"1876,42806-0313-05 ",.02)
 ;;42806-0313-05
 ;;9002226.02101,"1876,42806-0314-01 ",.01)
 ;;42806-0314-01
 ;;9002226.02101,"1876,42806-0314-01 ",.02)
 ;;42806-0314-01
 ;;9002226.02101,"1876,42806-0315-05 ",.01)
 ;;42806-0315-05
 ;;9002226.02101,"1876,42806-0315-05 ",.02)
 ;;42806-0315-05
 ;;9002226.02101,"1876,43063-0012-01 ",.01)
 ;;43063-0012-01
 ;;9002226.02101,"1876,43063-0012-01 ",.02)
 ;;43063-0012-01
 ;;9002226.02101,"1876,43063-0012-60 ",.01)
 ;;43063-0012-60
 ;;9002226.02101,"1876,43063-0012-60 ",.02)
 ;;43063-0012-60
 ;;9002226.02101,"1876,43063-0012-86 ",.01)
 ;;43063-0012-86
 ;;9002226.02101,"1876,43063-0012-86 ",.02)
 ;;43063-0012-86
 ;;9002226.02101,"1876,43063-0012-90 ",.01)
 ;;43063-0012-90
 ;;9002226.02101,"1876,43063-0012-90 ",.02)
 ;;43063-0012-90
 ;;9002226.02101,"1876,43063-0012-93 ",.01)
 ;;43063-0012-93
 ;;9002226.02101,"1876,43063-0012-93 ",.02)
 ;;43063-0012-93
 ;;9002226.02101,"1876,43063-0012-94 ",.01)
 ;;43063-0012-94
 ;;9002226.02101,"1876,43063-0012-94 ",.02)
 ;;43063-0012-94
 ;;9002226.02101,"1876,43063-0034-30 ",.01)
 ;;43063-0034-30
 ;;9002226.02101,"1876,43063-0034-30 ",.02)
 ;;43063-0034-30
 ;;9002226.02101,"1876,43063-0034-90 ",.01)
 ;;43063-0034-90
 ;;9002226.02101,"1876,43063-0034-90 ",.02)
 ;;43063-0034-90
 ;;9002226.02101,"1876,43063-0119-90 ",.01)
 ;;43063-0119-90
 ;;9002226.02101,"1876,43063-0119-90 ",.02)
 ;;43063-0119-90
 ;;9002226.02101,"1876,43063-0120-90 ",.01)
 ;;43063-0120-90
 ;;9002226.02101,"1876,43063-0120-90 ",.02)
 ;;43063-0120-90
 ;;9002226.02101,"1876,43063-0121-30 ",.01)
 ;;43063-0121-30
 ;;9002226.02101,"1876,43063-0121-30 ",.02)
 ;;43063-0121-30
 ;;9002226.02101,"1876,43063-0121-90 ",.01)
 ;;43063-0121-90
 ;;9002226.02101,"1876,43063-0121-90 ",.02)
 ;;43063-0121-90
 ;;9002226.02101,"1876,43063-0122-30 ",.01)
 ;;43063-0122-30
 ;;9002226.02101,"1876,43063-0122-30 ",.02)
 ;;43063-0122-30
 ;;9002226.02101,"1876,43063-0122-90 ",.01)
 ;;43063-0122-90
 ;;9002226.02101,"1876,43063-0122-90 ",.02)
 ;;43063-0122-90
 ;;9002226.02101,"1876,43063-0372-30 ",.01)
 ;;43063-0372-30
 ;;9002226.02101,"1876,43063-0372-30 ",.02)
 ;;43063-0372-30