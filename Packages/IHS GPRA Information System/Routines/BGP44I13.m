BGP44I13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 06, 2013;
 ;;14.0;IHS CLINICAL REPORTING;;NOV 14, 2013;Build 101
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1788,33358-0234-00 ",.02)
 ;;33358-0234-00
 ;;9002226.02101,"1788,33358-0234-30 ",.01)
 ;;33358-0234-30
 ;;9002226.02101,"1788,33358-0234-30 ",.02)
 ;;33358-0234-30
 ;;9002226.02101,"1788,33358-0234-60 ",.01)
 ;;33358-0234-60
 ;;9002226.02101,"1788,33358-0234-60 ",.02)
 ;;33358-0234-60
 ;;9002226.02101,"1788,33358-0235-60 ",.01)
 ;;33358-0235-60
 ;;9002226.02101,"1788,33358-0235-60 ",.02)
 ;;33358-0235-60
 ;;9002226.02101,"1788,33358-0236-30 ",.01)
 ;;33358-0236-30
 ;;9002226.02101,"1788,33358-0236-30 ",.02)
 ;;33358-0236-30
 ;;9002226.02101,"1788,33358-0236-60 ",.01)
 ;;33358-0236-60
 ;;9002226.02101,"1788,33358-0236-60 ",.02)
 ;;33358-0236-60
 ;;9002226.02101,"1788,33358-0237-30 ",.01)
 ;;33358-0237-30
 ;;9002226.02101,"1788,33358-0237-30 ",.02)
 ;;33358-0237-30
 ;;9002226.02101,"1788,33358-0237-60 ",.01)
 ;;33358-0237-60
 ;;9002226.02101,"1788,33358-0237-60 ",.02)
 ;;33358-0237-60
 ;;9002226.02101,"1788,35356-0103-30 ",.01)
 ;;35356-0103-30
 ;;9002226.02101,"1788,35356-0103-30 ",.02)
 ;;35356-0103-30
 ;;9002226.02101,"1788,35356-0121-90 ",.01)
 ;;35356-0121-90
 ;;9002226.02101,"1788,35356-0121-90 ",.02)
 ;;35356-0121-90
 ;;9002226.02101,"1788,35356-0130-60 ",.01)
 ;;35356-0130-60
 ;;9002226.02101,"1788,35356-0130-60 ",.02)
 ;;35356-0130-60
 ;;9002226.02101,"1788,35356-0136-60 ",.01)
 ;;35356-0136-60
 ;;9002226.02101,"1788,35356-0136-60 ",.02)
 ;;35356-0136-60
 ;;9002226.02101,"1788,35356-0269-28 ",.01)
 ;;35356-0269-28
 ;;9002226.02101,"1788,35356-0269-28 ",.02)
 ;;35356-0269-28
 ;;9002226.02101,"1788,35356-0271-60 ",.01)
 ;;35356-0271-60
 ;;9002226.02101,"1788,35356-0271-60 ",.02)
 ;;35356-0271-60
 ;;9002226.02101,"1788,35356-0303-01 ",.01)
 ;;35356-0303-01
 ;;9002226.02101,"1788,35356-0303-01 ",.02)
 ;;35356-0303-01
 ;;9002226.02101,"1788,35356-0304-01 ",.01)
 ;;35356-0304-01
 ;;9002226.02101,"1788,35356-0304-01 ",.02)
 ;;35356-0304-01
 ;;9002226.02101,"1788,35356-0305-01 ",.01)
 ;;35356-0305-01
 ;;9002226.02101,"1788,35356-0305-01 ",.02)
 ;;35356-0305-01
 ;;9002226.02101,"1788,35356-0360-30 ",.01)
 ;;35356-0360-30
 ;;9002226.02101,"1788,35356-0360-30 ",.02)
 ;;35356-0360-30
 ;;9002226.02101,"1788,35356-0360-60 ",.01)
 ;;35356-0360-60
 ;;9002226.02101,"1788,35356-0360-60 ",.02)
 ;;35356-0360-60
 ;;9002226.02101,"1788,35356-0360-90 ",.01)
 ;;35356-0360-90
 ;;9002226.02101,"1788,35356-0360-90 ",.02)
 ;;35356-0360-90
 ;;9002226.02101,"1788,35356-0691-60 ",.01)
 ;;35356-0691-60
 ;;9002226.02101,"1788,35356-0691-60 ",.02)
 ;;35356-0691-60
 ;;9002226.02101,"1788,35356-0792-30 ",.01)
 ;;35356-0792-30
 ;;9002226.02101,"1788,35356-0792-30 ",.02)
 ;;35356-0792-30
 ;;9002226.02101,"1788,35356-0875-30 ",.01)
 ;;35356-0875-30
 ;;9002226.02101,"1788,35356-0875-30 ",.02)
 ;;35356-0875-30
 ;;9002226.02101,"1788,35356-0875-60 ",.01)
 ;;35356-0875-60
 ;;9002226.02101,"1788,35356-0875-60 ",.02)
 ;;35356-0875-60
 ;;9002226.02101,"1788,35356-0886-30 ",.01)
 ;;35356-0886-30
 ;;9002226.02101,"1788,35356-0886-30 ",.02)
 ;;35356-0886-30
 ;;9002226.02101,"1788,35356-0886-60 ",.01)
 ;;35356-0886-60
 ;;9002226.02101,"1788,35356-0886-60 ",.02)
 ;;35356-0886-60
 ;;9002226.02101,"1788,35356-0886-90 ",.01)
 ;;35356-0886-90
 ;;9002226.02101,"1788,35356-0886-90 ",.02)
 ;;35356-0886-90
 ;;9002226.02101,"1788,35356-0896-30 ",.01)
 ;;35356-0896-30
 ;;9002226.02101,"1788,35356-0896-30 ",.02)
 ;;35356-0896-30
 ;;9002226.02101,"1788,35356-0897-30 ",.01)
 ;;35356-0897-30
 ;;9002226.02101,"1788,35356-0897-30 ",.02)
 ;;35356-0897-30
 ;;9002226.02101,"1788,35356-0899-60 ",.01)
 ;;35356-0899-60
 ;;9002226.02101,"1788,35356-0899-60 ",.02)
 ;;35356-0899-60
 ;;9002226.02101,"1788,35356-0922-60 ",.01)
 ;;35356-0922-60
 ;;9002226.02101,"1788,35356-0922-60 ",.02)
 ;;35356-0922-60
 ;;9002226.02101,"1788,35356-0931-30 ",.01)
 ;;35356-0931-30
 ;;9002226.02101,"1788,35356-0931-30 ",.02)
 ;;35356-0931-30
 ;;9002226.02101,"1788,35356-0931-60 ",.01)
 ;;35356-0931-60
 ;;9002226.02101,"1788,35356-0931-60 ",.02)
 ;;35356-0931-60
 ;;9002226.02101,"1788,35356-0931-90 ",.01)
 ;;35356-0931-90
 ;;9002226.02101,"1788,35356-0931-90 ",.02)
 ;;35356-0931-90
 ;;9002226.02101,"1788,35356-0932-30 ",.01)
 ;;35356-0932-30
 ;;9002226.02101,"1788,35356-0932-30 ",.02)
 ;;35356-0932-30
 ;;9002226.02101,"1788,35356-0932-60 ",.01)
 ;;35356-0932-60
 ;;9002226.02101,"1788,35356-0932-60 ",.02)
 ;;35356-0932-60
 ;;9002226.02101,"1788,35356-0932-90 ",.01)
 ;;35356-0932-90
 ;;9002226.02101,"1788,35356-0932-90 ",.02)
 ;;35356-0932-90
 ;;9002226.02101,"1788,35356-0959-30 ",.01)
 ;;35356-0959-30
 ;;9002226.02101,"1788,35356-0959-30 ",.02)
 ;;35356-0959-30
 ;;9002226.02101,"1788,35356-0959-60 ",.01)
 ;;35356-0959-60
 ;;9002226.02101,"1788,35356-0959-60 ",.02)
 ;;35356-0959-60
 ;;9002226.02101,"1788,35356-0959-90 ",.01)
 ;;35356-0959-90
 ;;9002226.02101,"1788,35356-0959-90 ",.02)
 ;;35356-0959-90
 ;;9002226.02101,"1788,35356-0970-30 ",.01)
 ;;35356-0970-30
 ;;9002226.02101,"1788,35356-0970-30 ",.02)
 ;;35356-0970-30
 ;;9002226.02101,"1788,35356-0970-60 ",.01)
 ;;35356-0970-60
 ;;9002226.02101,"1788,35356-0970-60 ",.02)
 ;;35356-0970-60
 ;;9002226.02101,"1788,35356-0970-90 ",.01)
 ;;35356-0970-90
 ;;9002226.02101,"1788,35356-0970-90 ",.02)
 ;;35356-0970-90
 ;;9002226.02101,"1788,42254-0071-30 ",.01)
 ;;42254-0071-30
 ;;9002226.02101,"1788,42254-0071-30 ",.02)
 ;;42254-0071-30
 ;;9002226.02101,"1788,42254-0090-60 ",.01)
 ;;42254-0090-60
 ;;9002226.02101,"1788,42254-0090-60 ",.02)
 ;;42254-0090-60
 ;;9002226.02101,"1788,42254-0281-30 ",.01)
 ;;42254-0281-30
 ;;9002226.02101,"1788,42254-0281-30 ",.02)
 ;;42254-0281-30
 ;;9002226.02101,"1788,42254-0281-90 ",.01)
 ;;42254-0281-90
 ;;9002226.02101,"1788,42254-0281-90 ",.02)
 ;;42254-0281-90
 ;;9002226.02101,"1788,42291-0605-10 ",.01)
 ;;42291-0605-10
 ;;9002226.02101,"1788,42291-0605-10 ",.02)
 ;;42291-0605-10
 ;;9002226.02101,"1788,42291-0605-12 ",.01)
 ;;42291-0605-12
 ;;9002226.02101,"1788,42291-0605-12 ",.02)
 ;;42291-0605-12
 ;;9002226.02101,"1788,42291-0605-18 ",.01)
 ;;42291-0605-18
 ;;9002226.02101,"1788,42291-0605-18 ",.02)
 ;;42291-0605-18
 ;;9002226.02101,"1788,42291-0605-27 ",.01)
 ;;42291-0605-27
 ;;9002226.02101,"1788,42291-0605-27 ",.02)
 ;;42291-0605-27
 ;;9002226.02101,"1788,42291-0605-36 ",.01)
 ;;42291-0605-36
 ;;9002226.02101,"1788,42291-0605-36 ",.02)
 ;;42291-0605-36
 ;;9002226.02101,"1788,42291-0605-45 ",.01)
 ;;42291-0605-45
 ;;9002226.02101,"1788,42291-0605-45 ",.02)
 ;;42291-0605-45
 ;;9002226.02101,"1788,42291-0605-60 ",.01)
 ;;42291-0605-60
 ;;9002226.02101,"1788,42291-0605-60 ",.02)
 ;;42291-0605-60
 ;;9002226.02101,"1788,42291-0605-90 ",.01)
 ;;42291-0605-90
 ;;9002226.02101,"1788,42291-0605-90 ",.02)
 ;;42291-0605-90
 ;;9002226.02101,"1788,42291-0606-10 ",.01)
 ;;42291-0606-10
 ;;9002226.02101,"1788,42291-0606-10 ",.02)
 ;;42291-0606-10
 ;;9002226.02101,"1788,42291-0606-18 ",.01)
 ;;42291-0606-18
 ;;9002226.02101,"1788,42291-0606-18 ",.02)
 ;;42291-0606-18
 ;;9002226.02101,"1788,42291-0606-27 ",.01)
 ;;42291-0606-27
 ;;9002226.02101,"1788,42291-0606-27 ",.02)
 ;;42291-0606-27
 ;;9002226.02101,"1788,42291-0606-90 ",.01)
 ;;42291-0606-90
 ;;9002226.02101,"1788,42291-0606-90 ",.02)
 ;;42291-0606-90
 ;;9002226.02101,"1788,42291-0607-10 ",.01)
 ;;42291-0607-10
 ;;9002226.02101,"1788,42291-0607-10 ",.02)
 ;;42291-0607-10
 ;;9002226.02101,"1788,42291-0607-18 ",.01)
 ;;42291-0607-18
 ;;9002226.02101,"1788,42291-0607-18 ",.02)
 ;;42291-0607-18
 ;;9002226.02101,"1788,42291-0607-60 ",.01)
 ;;42291-0607-60
 ;;9002226.02101,"1788,42291-0607-60 ",.02)
 ;;42291-0607-60
 ;;9002226.02101,"1788,42291-0607-90 ",.01)
 ;;42291-0607-90
 ;;9002226.02101,"1788,42291-0607-90 ",.02)
 ;;42291-0607-90
 ;;9002226.02101,"1788,42291-0610-18 ",.01)
 ;;42291-0610-18
 ;;9002226.02101,"1788,42291-0610-18 ",.02)
 ;;42291-0610-18
 ;;9002226.02101,"1788,42291-0610-36 ",.01)
 ;;42291-0610-36
 ;;9002226.02101,"1788,42291-0610-36 ",.02)
 ;;42291-0610-36
 ;;9002226.02101,"1788,42291-0610-90 ",.01)
 ;;42291-0610-90
 ;;9002226.02101,"1788,42291-0610-90 ",.02)
 ;;42291-0610-90
 ;;9002226.02101,"1788,42291-0611-18 ",.01)
 ;;42291-0611-18
 ;;9002226.02101,"1788,42291-0611-18 ",.02)
 ;;42291-0611-18
 ;;9002226.02101,"1788,42291-0612-10 ",.01)
 ;;42291-0612-10
 ;;9002226.02101,"1788,42291-0612-10 ",.02)
 ;;42291-0612-10
 ;;9002226.02101,"1788,42291-0612-12 ",.01)
 ;;42291-0612-12
 ;;9002226.02101,"1788,42291-0612-12 ",.02)
 ;;42291-0612-12
 ;;9002226.02101,"1788,42291-0612-18 ",.01)
 ;;42291-0612-18
 ;;9002226.02101,"1788,42291-0612-18 ",.02)
 ;;42291-0612-18
 ;;9002226.02101,"1788,42291-0612-27 ",.01)
 ;;42291-0612-27
 ;;9002226.02101,"1788,42291-0612-27 ",.02)
 ;;42291-0612-27
 ;;9002226.02101,"1788,42291-0612-36 ",.01)
 ;;42291-0612-36
 ;;9002226.02101,"1788,42291-0612-36 ",.02)
 ;;42291-0612-36
 ;;9002226.02101,"1788,42291-0612-45 ",.01)
 ;;42291-0612-45
 ;;9002226.02101,"1788,42291-0612-45 ",.02)
 ;;42291-0612-45
 ;;9002226.02101,"1788,42291-0612-60 ",.01)
 ;;42291-0612-60
 ;;9002226.02101,"1788,42291-0612-60 ",.02)
 ;;42291-0612-60
 ;;9002226.02101,"1788,42291-0612-90 ",.01)
 ;;42291-0612-90
 ;;9002226.02101,"1788,42291-0612-90 ",.02)
 ;;42291-0612-90
 ;;9002226.02101,"1788,42291-0613-10 ",.01)
 ;;42291-0613-10
 ;;9002226.02101,"1788,42291-0613-10 ",.02)
 ;;42291-0613-10
 ;;9002226.02101,"1788,42291-0613-18 ",.01)
 ;;42291-0613-18
 ;;9002226.02101,"1788,42291-0613-18 ",.02)
 ;;42291-0613-18
 ;;9002226.02101,"1788,42291-0613-27 ",.01)
 ;;42291-0613-27
 ;;9002226.02101,"1788,42291-0613-27 ",.02)
 ;;42291-0613-27
 ;;9002226.02101,"1788,42291-0613-90 ",.01)
 ;;42291-0613-90
 ;;9002226.02101,"1788,42291-0613-90 ",.02)
 ;;42291-0613-90
 ;;9002226.02101,"1788,42291-0614-10 ",.01)
 ;;42291-0614-10
 ;;9002226.02101,"1788,42291-0614-10 ",.02)
 ;;42291-0614-10
 ;;9002226.02101,"1788,42291-0614-18 ",.01)
 ;;42291-0614-18
 ;;9002226.02101,"1788,42291-0614-18 ",.02)
 ;;42291-0614-18
 ;;9002226.02101,"1788,42291-0614-60 ",.01)
 ;;42291-0614-60
 ;;9002226.02101,"1788,42291-0614-60 ",.02)
 ;;42291-0614-60
 ;;9002226.02101,"1788,42291-0614-90 ",.01)
 ;;42291-0614-90
 ;;9002226.02101,"1788,42291-0614-90 ",.02)
 ;;42291-0614-90
 ;;9002226.02101,"1788,42549-0498-30 ",.01)
 ;;42549-0498-30
 ;;9002226.02101,"1788,42549-0498-30 ",.02)
 ;;42549-0498-30
 ;;9002226.02101,"1788,42549-0499-30 ",.01)
 ;;42549-0499-30
 ;;9002226.02101,"1788,42549-0499-30 ",.02)
 ;;42549-0499-30
 ;;9002226.02101,"1788,42571-0100-01 ",.01)
 ;;42571-0100-01
 ;;9002226.02101,"1788,42571-0100-01 ",.02)
 ;;42571-0100-01
 ;;9002226.02101,"1788,42571-0101-01 ",.01)
 ;;42571-0101-01
 ;;9002226.02101,"1788,42571-0101-01 ",.02)
 ;;42571-0101-01
 ;;9002226.02101,"1788,42571-0103-01 ",.01)
 ;;42571-0103-01
 ;;9002226.02101,"1788,42571-0103-01 ",.02)
 ;;42571-0103-01
 ;;9002226.02101,"1788,43063-0012-01 ",.01)
 ;;43063-0012-01
 ;;9002226.02101,"1788,43063-0012-01 ",.02)
 ;;43063-0012-01
 ;;9002226.02101,"1788,43063-0012-60 ",.01)
 ;;43063-0012-60
 ;;9002226.02101,"1788,43063-0012-60 ",.02)
 ;;43063-0012-60
 ;;9002226.02101,"1788,43063-0012-86 ",.01)
 ;;43063-0012-86
 ;;9002226.02101,"1788,43063-0012-86 ",.02)
 ;;43063-0012-86
 ;;9002226.02101,"1788,43063-0012-90 ",.01)
 ;;43063-0012-90
 ;;9002226.02101,"1788,43063-0012-90 ",.02)
 ;;43063-0012-90
 ;;9002226.02101,"1788,43063-0012-93 ",.01)
 ;;43063-0012-93
 ;;9002226.02101,"1788,43063-0012-93 ",.02)
 ;;43063-0012-93
 ;;9002226.02101,"1788,43063-0012-94 ",.01)
 ;;43063-0012-94
 ;;9002226.02101,"1788,43063-0012-94 ",.02)
 ;;43063-0012-94
 ;;9002226.02101,"1788,43063-0034-30 ",.01)
 ;;43063-0034-30
 ;;9002226.02101,"1788,43063-0034-30 ",.02)
 ;;43063-0034-30
 ;;9002226.02101,"1788,43063-0034-90 ",.01)
 ;;43063-0034-90
 ;;9002226.02101,"1788,43063-0034-90 ",.02)
 ;;43063-0034-90
 ;;9002226.02101,"1788,43063-0119-90 ",.01)
 ;;43063-0119-90
 ;;9002226.02101,"1788,43063-0119-90 ",.02)
 ;;43063-0119-90
 ;;9002226.02101,"1788,43063-0120-90 ",.01)
 ;;43063-0120-90
 ;;9002226.02101,"1788,43063-0120-90 ",.02)
 ;;43063-0120-90
 ;;9002226.02101,"1788,43063-0121-30 ",.01)
 ;;43063-0121-30
 ;;9002226.02101,"1788,43063-0121-30 ",.02)
 ;;43063-0121-30
 ;;9002226.02101,"1788,43063-0121-90 ",.01)
 ;;43063-0121-90
 ;;9002226.02101,"1788,43063-0121-90 ",.02)
 ;;43063-0121-90
 ;;9002226.02101,"1788,43063-0122-30 ",.01)
 ;;43063-0122-30
 ;;9002226.02101,"1788,43063-0122-30 ",.02)
 ;;43063-0122-30
 ;;9002226.02101,"1788,43063-0122-90 ",.01)
 ;;43063-0122-90
 ;;9002226.02101,"1788,43063-0122-90 ",.02)
 ;;43063-0122-90
 ;;9002226.02101,"1788,43063-0372-30 ",.01)
 ;;43063-0372-30
 ;;9002226.02101,"1788,43063-0372-30 ",.02)
 ;;43063-0372-30
 ;;9002226.02101,"1788,43063-0397-86 ",.01)
 ;;43063-0397-86
 ;;9002226.02101,"1788,43063-0397-86 ",.02)
 ;;43063-0397-86
 ;;9002226.02101,"1788,43063-0428-90 ",.01)
 ;;43063-0428-90
 ;;9002226.02101,"1788,43063-0428-90 ",.02)
 ;;43063-0428-90
 ;;9002226.02101,"1788,43063-0428-93 ",.01)
 ;;43063-0428-93
 ;;9002226.02101,"1788,43063-0428-93 ",.02)
 ;;43063-0428-93
 ;;9002226.02101,"1788,43063-0428-94 ",.01)
 ;;43063-0428-94
 ;;9002226.02101,"1788,43063-0428-94 ",.02)
 ;;43063-0428-94
 ;;9002226.02101,"1788,43063-0429-93 ",.01)
 ;;43063-0429-93
 ;;9002226.02101,"1788,43063-0429-93 ",.02)
 ;;43063-0429-93
 ;;9002226.02101,"1788,43063-0429-94 ",.01)
 ;;43063-0429-94
 ;;9002226.02101,"1788,43063-0429-94 ",.02)
 ;;43063-0429-94
 ;;9002226.02101,"1788,43063-0430-30 ",.01)
 ;;43063-0430-30
 ;;9002226.02101,"1788,43063-0430-30 ",.02)
 ;;43063-0430-30