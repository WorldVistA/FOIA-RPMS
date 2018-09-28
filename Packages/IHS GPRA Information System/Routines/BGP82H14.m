BGP82H14 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1218,33358-0243-00 ",.01)
 ;;33358-0243-00
 ;;9002226.02101,"1218,33358-0243-00 ",.02)
 ;;33358-0243-00
 ;;9002226.02101,"1218,33358-0243-30 ",.01)
 ;;33358-0243-30
 ;;9002226.02101,"1218,33358-0243-30 ",.02)
 ;;33358-0243-30
 ;;9002226.02101,"1218,35356-0362-30 ",.01)
 ;;35356-0362-30
 ;;9002226.02101,"1218,35356-0362-30 ",.02)
 ;;35356-0362-30
 ;;9002226.02101,"1218,35356-0362-60 ",.01)
 ;;35356-0362-60
 ;;9002226.02101,"1218,35356-0362-60 ",.02)
 ;;35356-0362-60
 ;;9002226.02101,"1218,35356-0415-30 ",.01)
 ;;35356-0415-30
 ;;9002226.02101,"1218,35356-0415-30 ",.02)
 ;;35356-0415-30
 ;;9002226.02101,"1218,35356-0490-30 ",.01)
 ;;35356-0490-30
 ;;9002226.02101,"1218,35356-0490-30 ",.02)
 ;;35356-0490-30
 ;;9002226.02101,"1218,35356-0512-18 ",.01)
 ;;35356-0512-18
 ;;9002226.02101,"1218,35356-0512-18 ",.02)
 ;;35356-0512-18
 ;;9002226.02101,"1218,35356-0512-30 ",.01)
 ;;35356-0512-30
 ;;9002226.02101,"1218,35356-0512-30 ",.02)
 ;;35356-0512-30
 ;;9002226.02101,"1218,35356-0512-60 ",.01)
 ;;35356-0512-60
 ;;9002226.02101,"1218,35356-0512-60 ",.02)
 ;;35356-0512-60
 ;;9002226.02101,"1218,35356-0512-90 ",.01)
 ;;35356-0512-90
 ;;9002226.02101,"1218,35356-0512-90 ",.02)
 ;;35356-0512-90
 ;;9002226.02101,"1218,35356-0513-30 ",.01)
 ;;35356-0513-30
 ;;9002226.02101,"1218,35356-0513-30 ",.02)
 ;;35356-0513-30
 ;;9002226.02101,"1218,35356-0513-60 ",.01)
 ;;35356-0513-60
 ;;9002226.02101,"1218,35356-0513-60 ",.02)
 ;;35356-0513-60
 ;;9002226.02101,"1218,35356-0518-30 ",.01)
 ;;35356-0518-30
 ;;9002226.02101,"1218,35356-0518-30 ",.02)
 ;;35356-0518-30
 ;;9002226.02101,"1218,35356-0526-00 ",.01)
 ;;35356-0526-00
 ;;9002226.02101,"1218,35356-0526-00 ",.02)
 ;;35356-0526-00
 ;;9002226.02101,"1218,35356-0526-30 ",.01)
 ;;35356-0526-30
 ;;9002226.02101,"1218,35356-0526-30 ",.02)
 ;;35356-0526-30
 ;;9002226.02101,"1218,35356-0526-60 ",.01)
 ;;35356-0526-60
 ;;9002226.02101,"1218,35356-0526-60 ",.02)
 ;;35356-0526-60
 ;;9002226.02101,"1218,35356-0526-90 ",.01)
 ;;35356-0526-90
 ;;9002226.02101,"1218,35356-0526-90 ",.02)
 ;;35356-0526-90
 ;;9002226.02101,"1218,35356-0737-30 ",.01)
 ;;35356-0737-30
 ;;9002226.02101,"1218,35356-0737-30 ",.02)
 ;;35356-0737-30
 ;;9002226.02101,"1218,35356-0738-00 ",.01)
 ;;35356-0738-00
 ;;9002226.02101,"1218,35356-0738-00 ",.02)
 ;;35356-0738-00
 ;;9002226.02101,"1218,35356-0782-30 ",.01)
 ;;35356-0782-30
 ;;9002226.02101,"1218,35356-0782-30 ",.02)
 ;;35356-0782-30
 ;;9002226.02101,"1218,35356-0782-60 ",.01)
 ;;35356-0782-60
 ;;9002226.02101,"1218,35356-0782-60 ",.02)
 ;;35356-0782-60
 ;;9002226.02101,"1218,35356-0782-90 ",.01)
 ;;35356-0782-90
 ;;9002226.02101,"1218,35356-0782-90 ",.02)
 ;;35356-0782-90
 ;;9002226.02101,"1218,35356-0859-30 ",.01)
 ;;35356-0859-30
 ;;9002226.02101,"1218,35356-0859-30 ",.02)
 ;;35356-0859-30
 ;;9002226.02101,"1218,35356-0888-30 ",.01)
 ;;35356-0888-30
 ;;9002226.02101,"1218,35356-0888-30 ",.02)
 ;;35356-0888-30
 ;;9002226.02101,"1218,35356-0888-60 ",.01)
 ;;35356-0888-60
 ;;9002226.02101,"1218,35356-0888-60 ",.02)
 ;;35356-0888-60
 ;;9002226.02101,"1218,35356-0888-90 ",.01)
 ;;35356-0888-90
 ;;9002226.02101,"1218,35356-0888-90 ",.02)
 ;;35356-0888-90
 ;;9002226.02101,"1218,35356-0889-30 ",.01)
 ;;35356-0889-30
 ;;9002226.02101,"1218,35356-0889-30 ",.02)
 ;;35356-0889-30
 ;;9002226.02101,"1218,35356-0889-60 ",.01)
 ;;35356-0889-60
 ;;9002226.02101,"1218,35356-0889-60 ",.02)
 ;;35356-0889-60
 ;;9002226.02101,"1218,35356-0889-90 ",.01)
 ;;35356-0889-90
 ;;9002226.02101,"1218,35356-0889-90 ",.02)
 ;;35356-0889-90
 ;;9002226.02101,"1218,35356-0898-30 ",.01)
 ;;35356-0898-30
 ;;9002226.02101,"1218,35356-0898-30 ",.02)
 ;;35356-0898-30
 ;;9002226.02101,"1218,35356-0898-60 ",.01)
 ;;35356-0898-60
 ;;9002226.02101,"1218,35356-0898-60 ",.02)
 ;;35356-0898-60
 ;;9002226.02101,"1218,35356-0898-90 ",.01)
 ;;35356-0898-90
 ;;9002226.02101,"1218,35356-0898-90 ",.02)
 ;;35356-0898-90
 ;;9002226.02101,"1218,35356-0908-30 ",.01)
 ;;35356-0908-30
 ;;9002226.02101,"1218,35356-0908-30 ",.02)
 ;;35356-0908-30
 ;;9002226.02101,"1218,35356-0908-60 ",.01)
 ;;35356-0908-60
 ;;9002226.02101,"1218,35356-0908-60 ",.02)
 ;;35356-0908-60
 ;;9002226.02101,"1218,35356-0930-30 ",.01)
 ;;35356-0930-30
 ;;9002226.02101,"1218,35356-0930-30 ",.02)
 ;;35356-0930-30
 ;;9002226.02101,"1218,35356-0930-60 ",.01)
 ;;35356-0930-60
 ;;9002226.02101,"1218,35356-0930-60 ",.02)
 ;;35356-0930-60
 ;;9002226.02101,"1218,35356-0930-90 ",.01)
 ;;35356-0930-90
 ;;9002226.02101,"1218,35356-0930-90 ",.02)
 ;;35356-0930-90
 ;;9002226.02101,"1218,35356-0934-30 ",.01)
 ;;35356-0934-30
 ;;9002226.02101,"1218,35356-0934-30 ",.02)
 ;;35356-0934-30
 ;;9002226.02101,"1218,35356-0934-60 ",.01)
 ;;35356-0934-60
 ;;9002226.02101,"1218,35356-0934-60 ",.02)
 ;;35356-0934-60
 ;;9002226.02101,"1218,35356-0934-90 ",.01)
 ;;35356-0934-90
 ;;9002226.02101,"1218,35356-0934-90 ",.02)
 ;;35356-0934-90
 ;;9002226.02101,"1218,35356-0946-30 ",.01)
 ;;35356-0946-30
 ;;9002226.02101,"1218,35356-0946-30 ",.02)
 ;;35356-0946-30
 ;;9002226.02101,"1218,35356-0946-60 ",.01)
 ;;35356-0946-60
 ;;9002226.02101,"1218,35356-0946-60 ",.02)
 ;;35356-0946-60
 ;;9002226.02101,"1218,42254-0005-30 ",.01)
 ;;42254-0005-30
 ;;9002226.02101,"1218,42254-0005-30 ",.02)
 ;;42254-0005-30
 ;;9002226.02101,"1218,42254-0046-30 ",.01)
 ;;42254-0046-30
 ;;9002226.02101,"1218,42254-0046-30 ",.02)
 ;;42254-0046-30
 ;;9002226.02101,"1218,42254-0094-30 ",.01)
 ;;42254-0094-30
 ;;9002226.02101,"1218,42254-0094-30 ",.02)
 ;;42254-0094-30
 ;;9002226.02101,"1218,42254-0107-30 ",.01)
 ;;42254-0107-30
 ;;9002226.02101,"1218,42254-0107-30 ",.02)
 ;;42254-0107-30
 ;;9002226.02101,"1218,42254-0107-90 ",.01)
 ;;42254-0107-90
 ;;9002226.02101,"1218,42254-0107-90 ",.02)
 ;;42254-0107-90
 ;;9002226.02101,"1218,42254-0162-00 ",.01)
 ;;42254-0162-00
 ;;9002226.02101,"1218,42254-0162-00 ",.02)
 ;;42254-0162-00
 ;;9002226.02101,"1218,42254-0218-30 ",.01)
 ;;42254-0218-30
 ;;9002226.02101,"1218,42254-0218-30 ",.02)
 ;;42254-0218-30
 ;;9002226.02101,"1218,42291-0101-90 ",.01)
 ;;42291-0101-90
 ;;9002226.02101,"1218,42291-0101-90 ",.02)
 ;;42291-0101-90
 ;;9002226.02101,"1218,42291-0102-90 ",.01)
 ;;42291-0102-90
 ;;9002226.02101,"1218,42291-0102-90 ",.02)
 ;;42291-0102-90
 ;;9002226.02101,"1218,42291-0140-10 ",.01)
 ;;42291-0140-10
 ;;9002226.02101,"1218,42291-0140-10 ",.02)
 ;;42291-0140-10
 ;;9002226.02101,"1218,42291-0140-18 ",.01)
 ;;42291-0140-18
 ;;9002226.02101,"1218,42291-0140-18 ",.02)
 ;;42291-0140-18
 ;;9002226.02101,"1218,42291-0140-45 ",.01)
 ;;42291-0140-45
 ;;9002226.02101,"1218,42291-0140-45 ",.02)
 ;;42291-0140-45
 ;;9002226.02101,"1218,42291-0140-90 ",.01)
 ;;42291-0140-90
 ;;9002226.02101,"1218,42291-0140-90 ",.02)
 ;;42291-0140-90
 ;;9002226.02101,"1218,42291-0141-10 ",.01)
 ;;42291-0141-10
 ;;9002226.02101,"1218,42291-0141-10 ",.02)
 ;;42291-0141-10
 ;;9002226.02101,"1218,42291-0141-18 ",.01)
 ;;42291-0141-18
 ;;9002226.02101,"1218,42291-0141-18 ",.02)
 ;;42291-0141-18
 ;;9002226.02101,"1218,42291-0141-45 ",.01)
 ;;42291-0141-45
 ;;9002226.02101,"1218,42291-0141-45 ",.02)
 ;;42291-0141-45
 ;;9002226.02101,"1218,42291-0141-90 ",.01)
 ;;42291-0141-90
 ;;9002226.02101,"1218,42291-0141-90 ",.02)
 ;;42291-0141-90
 ;;9002226.02101,"1218,42291-0142-18 ",.01)
 ;;42291-0142-18
 ;;9002226.02101,"1218,42291-0142-18 ",.02)
 ;;42291-0142-18
 ;;9002226.02101,"1218,42291-0142-45 ",.01)
 ;;42291-0142-45
 ;;9002226.02101,"1218,42291-0142-45 ",.02)
 ;;42291-0142-45
 ;;9002226.02101,"1218,42291-0142-50 ",.01)
 ;;42291-0142-50
 ;;9002226.02101,"1218,42291-0142-50 ",.02)
 ;;42291-0142-50
 ;;9002226.02101,"1218,42291-0142-90 ",.01)
 ;;42291-0142-90
 ;;9002226.02101,"1218,42291-0142-90 ",.02)
 ;;42291-0142-90
 ;;9002226.02101,"1218,42291-0196-10 ",.01)
 ;;42291-0196-10
 ;;9002226.02101,"1218,42291-0196-10 ",.02)
 ;;42291-0196-10
 ;;9002226.02101,"1218,42291-0197-10 ",.01)
 ;;42291-0197-10
 ;;9002226.02101,"1218,42291-0197-10 ",.02)
 ;;42291-0197-10
 ;;9002226.02101,"1218,42291-0197-90 ",.01)
 ;;42291-0197-90
 ;;9002226.02101,"1218,42291-0197-90 ",.02)
 ;;42291-0197-90
 ;;9002226.02101,"1218,42291-0198-10 ",.01)
 ;;42291-0198-10
 ;;9002226.02101,"1218,42291-0198-10 ",.02)
 ;;42291-0198-10
 ;;9002226.02101,"1218,42291-0199-10 ",.01)
 ;;42291-0199-10
 ;;9002226.02101,"1218,42291-0199-10 ",.02)
 ;;42291-0199-10
 ;;9002226.02101,"1218,42291-0199-90 ",.01)
 ;;42291-0199-90
 ;;9002226.02101,"1218,42291-0199-90 ",.02)
 ;;42291-0199-90
 ;;9002226.02101,"1218,42543-0001-01 ",.01)
 ;;42543-0001-01
 ;;9002226.02101,"1218,42543-0001-01 ",.02)
 ;;42543-0001-01
 ;;9002226.02101,"1218,42543-0001-10 ",.01)
 ;;42543-0001-10
 ;;9002226.02101,"1218,42543-0001-10 ",.02)
 ;;42543-0001-10
 ;;9002226.02101,"1218,42543-0002-01 ",.01)
 ;;42543-0002-01
 ;;9002226.02101,"1218,42543-0002-01 ",.02)
 ;;42543-0002-01
 ;;9002226.02101,"1218,42543-0002-10 ",.01)
 ;;42543-0002-10
 ;;9002226.02101,"1218,42543-0002-10 ",.02)
 ;;42543-0002-10
 ;;9002226.02101,"1218,42543-0003-01 ",.01)
 ;;42543-0003-01
 ;;9002226.02101,"1218,42543-0003-01 ",.02)
 ;;42543-0003-01
 ;;9002226.02101,"1218,42543-0003-10 ",.01)
 ;;42543-0003-10
 ;;9002226.02101,"1218,42543-0003-10 ",.02)
 ;;42543-0003-10
 ;;9002226.02101,"1218,42806-0038-01 ",.01)
 ;;42806-0038-01
 ;;9002226.02101,"1218,42806-0038-01 ",.02)
 ;;42806-0038-01
 ;;9002226.02101,"1218,42806-0039-01 ",.01)
 ;;42806-0039-01
 ;;9002226.02101,"1218,42806-0039-01 ",.02)
 ;;42806-0039-01
 ;;9002226.02101,"1218,43063-0006-01 ",.01)
 ;;43063-0006-01
 ;;9002226.02101,"1218,43063-0006-01 ",.02)
 ;;43063-0006-01
 ;;9002226.02101,"1218,43063-0006-90 ",.01)
 ;;43063-0006-90
 ;;9002226.02101,"1218,43063-0006-90 ",.02)
 ;;43063-0006-90
 ;;9002226.02101,"1218,43063-0006-93 ",.01)
 ;;43063-0006-93
 ;;9002226.02101,"1218,43063-0006-93 ",.02)
 ;;43063-0006-93
 ;;9002226.02101,"1218,43063-0062-06 ",.01)
 ;;43063-0062-06
 ;;9002226.02101,"1218,43063-0062-06 ",.02)
 ;;43063-0062-06
 ;;9002226.02101,"1218,43063-0062-30 ",.01)
 ;;43063-0062-30
 ;;9002226.02101,"1218,43063-0062-30 ",.02)
 ;;43063-0062-30
 ;;9002226.02101,"1218,43063-0062-60 ",.01)
 ;;43063-0062-60
 ;;9002226.02101,"1218,43063-0062-60 ",.02)
 ;;43063-0062-60
 ;;9002226.02101,"1218,43063-0062-90 ",.01)
 ;;43063-0062-90
 ;;9002226.02101,"1218,43063-0062-90 ",.02)
 ;;43063-0062-90
 ;;9002226.02101,"1218,43063-0064-06 ",.01)
 ;;43063-0064-06
 ;;9002226.02101,"1218,43063-0064-06 ",.02)
 ;;43063-0064-06
 ;;9002226.02101,"1218,43063-0125-93 ",.01)
 ;;43063-0125-93
 ;;9002226.02101,"1218,43063-0125-93 ",.02)
 ;;43063-0125-93
 ;;9002226.02101,"1218,43063-0126-93 ",.01)
 ;;43063-0126-93
 ;;9002226.02101,"1218,43063-0126-93 ",.02)
 ;;43063-0126-93
 ;;9002226.02101,"1218,43063-0127-93 ",.01)
 ;;43063-0127-93
 ;;9002226.02101,"1218,43063-0127-93 ",.02)
 ;;43063-0127-93
 ;;9002226.02101,"1218,43063-0129-30 ",.01)
 ;;43063-0129-30
 ;;9002226.02101,"1218,43063-0129-30 ",.02)
 ;;43063-0129-30
 ;;9002226.02101,"1218,43063-0129-60 ",.01)
 ;;43063-0129-60
 ;;9002226.02101,"1218,43063-0129-60 ",.02)
 ;;43063-0129-60
 ;;9002226.02101,"1218,43063-0129-93 ",.01)
 ;;43063-0129-93
 ;;9002226.02101,"1218,43063-0129-93 ",.02)
 ;;43063-0129-93
 ;;9002226.02101,"1218,43063-0134-30 ",.01)
 ;;43063-0134-30
 ;;9002226.02101,"1218,43063-0134-30 ",.02)
 ;;43063-0134-30
 ;;9002226.02101,"1218,43063-0134-90 ",.01)
 ;;43063-0134-90
 ;;9002226.02101,"1218,43063-0134-90 ",.02)
 ;;43063-0134-90
 ;;9002226.02101,"1218,43063-0135-90 ",.01)
 ;;43063-0135-90
 ;;9002226.02101,"1218,43063-0135-90 ",.02)
 ;;43063-0135-90
 ;;9002226.02101,"1218,43063-0210-30 ",.01)
 ;;43063-0210-30