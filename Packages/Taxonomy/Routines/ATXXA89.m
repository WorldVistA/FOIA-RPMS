ATXXA89 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S62.91XA ",.03)
 ;;30
 ;;9002226.02101,"873,S62.91XB ",.01)
 ;;S62.91XB
 ;;9002226.02101,"873,S62.91XB ",.02)
 ;;S62.91XB
 ;;9002226.02101,"873,S62.91XB ",.03)
 ;;30
 ;;9002226.02101,"873,S62.92XA ",.01)
 ;;S62.92XA
 ;;9002226.02101,"873,S62.92XA ",.02)
 ;;S62.92XA
 ;;9002226.02101,"873,S62.92XA ",.03)
 ;;30
 ;;9002226.02101,"873,S62.92XB ",.01)
 ;;S62.92XB
 ;;9002226.02101,"873,S62.92XB ",.02)
 ;;S62.92XB
 ;;9002226.02101,"873,S62.92XB ",.03)
 ;;30
 ;;9002226.02101,"873,S63.001A ",.01)
 ;;S63.001A
 ;;9002226.02101,"873,S63.001A ",.02)
 ;;S63.001A
 ;;9002226.02101,"873,S63.001A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.002A ",.01)
 ;;S63.002A
 ;;9002226.02101,"873,S63.002A ",.02)
 ;;S63.002A
 ;;9002226.02101,"873,S63.002A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.003A ",.01)
 ;;S63.003A
 ;;9002226.02101,"873,S63.003A ",.02)
 ;;S63.003A
 ;;9002226.02101,"873,S63.003A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.004A ",.01)
 ;;S63.004A
 ;;9002226.02101,"873,S63.004A ",.02)
 ;;S63.004A
 ;;9002226.02101,"873,S63.004A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.005A ",.01)
 ;;S63.005A
 ;;9002226.02101,"873,S63.005A ",.02)
 ;;S63.005A
 ;;9002226.02101,"873,S63.005A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.006A ",.01)
 ;;S63.006A
 ;;9002226.02101,"873,S63.006A ",.02)
 ;;S63.006A
 ;;9002226.02101,"873,S63.006A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.011A ",.01)
 ;;S63.011A
 ;;9002226.02101,"873,S63.011A ",.02)
 ;;S63.011A
 ;;9002226.02101,"873,S63.011A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.012A ",.01)
 ;;S63.012A
 ;;9002226.02101,"873,S63.012A ",.02)
 ;;S63.012A
 ;;9002226.02101,"873,S63.012A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.013A ",.01)
 ;;S63.013A
 ;;9002226.02101,"873,S63.013A ",.02)
 ;;S63.013A
 ;;9002226.02101,"873,S63.013A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.014A ",.01)
 ;;S63.014A
 ;;9002226.02101,"873,S63.014A ",.02)
 ;;S63.014A
 ;;9002226.02101,"873,S63.014A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.015A ",.01)
 ;;S63.015A
 ;;9002226.02101,"873,S63.015A ",.02)
 ;;S63.015A
 ;;9002226.02101,"873,S63.015A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.016A ",.01)
 ;;S63.016A
 ;;9002226.02101,"873,S63.016A ",.02)
 ;;S63.016A
 ;;9002226.02101,"873,S63.016A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.021A ",.01)
 ;;S63.021A
 ;;9002226.02101,"873,S63.021A ",.02)
 ;;S63.021A
 ;;9002226.02101,"873,S63.021A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.022A ",.01)
 ;;S63.022A
 ;;9002226.02101,"873,S63.022A ",.02)
 ;;S63.022A
 ;;9002226.02101,"873,S63.022A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.023A ",.01)
 ;;S63.023A
 ;;9002226.02101,"873,S63.023A ",.02)
 ;;S63.023A
 ;;9002226.02101,"873,S63.023A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.024A ",.01)
 ;;S63.024A
 ;;9002226.02101,"873,S63.024A ",.02)
 ;;S63.024A
 ;;9002226.02101,"873,S63.024A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.025A ",.01)
 ;;S63.025A
 ;;9002226.02101,"873,S63.025A ",.02)
 ;;S63.025A
 ;;9002226.02101,"873,S63.025A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.026A ",.01)
 ;;S63.026A
 ;;9002226.02101,"873,S63.026A ",.02)
 ;;S63.026A
 ;;9002226.02101,"873,S63.026A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.031A ",.01)
 ;;S63.031A
 ;;9002226.02101,"873,S63.031A ",.02)
 ;;S63.031A
 ;;9002226.02101,"873,S63.031A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.032A ",.01)
 ;;S63.032A
 ;;9002226.02101,"873,S63.032A ",.02)
 ;;S63.032A
 ;;9002226.02101,"873,S63.032A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.033A ",.01)
 ;;S63.033A
 ;;9002226.02101,"873,S63.033A ",.02)
 ;;S63.033A
 ;;9002226.02101,"873,S63.033A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.034A ",.01)
 ;;S63.034A
 ;;9002226.02101,"873,S63.034A ",.02)
 ;;S63.034A
 ;;9002226.02101,"873,S63.034A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.035A ",.01)
 ;;S63.035A
 ;;9002226.02101,"873,S63.035A ",.02)
 ;;S63.035A
 ;;9002226.02101,"873,S63.035A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.036A ",.01)
 ;;S63.036A
 ;;9002226.02101,"873,S63.036A ",.02)
 ;;S63.036A
 ;;9002226.02101,"873,S63.036A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.041A ",.01)
 ;;S63.041A
 ;;9002226.02101,"873,S63.041A ",.02)
 ;;S63.041A
 ;;9002226.02101,"873,S63.041A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.042A ",.01)
 ;;S63.042A
 ;;9002226.02101,"873,S63.042A ",.02)
 ;;S63.042A
 ;;9002226.02101,"873,S63.042A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.043A ",.01)
 ;;S63.043A
 ;;9002226.02101,"873,S63.043A ",.02)
 ;;S63.043A
 ;;9002226.02101,"873,S63.043A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.044A ",.01)
 ;;S63.044A
 ;;9002226.02101,"873,S63.044A ",.02)
 ;;S63.044A
 ;;9002226.02101,"873,S63.044A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.045A ",.01)
 ;;S63.045A
 ;;9002226.02101,"873,S63.045A ",.02)
 ;;S63.045A
 ;;9002226.02101,"873,S63.045A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.046A ",.01)
 ;;S63.046A
 ;;9002226.02101,"873,S63.046A ",.02)
 ;;S63.046A
 ;;9002226.02101,"873,S63.046A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.051A ",.01)
 ;;S63.051A
 ;;9002226.02101,"873,S63.051A ",.02)
 ;;S63.051A
 ;;9002226.02101,"873,S63.051A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.052A ",.01)
 ;;S63.052A
 ;;9002226.02101,"873,S63.052A ",.02)
 ;;S63.052A
 ;;9002226.02101,"873,S63.052A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.053A ",.01)
 ;;S63.053A
 ;;9002226.02101,"873,S63.053A ",.02)
 ;;S63.053A
 ;;9002226.02101,"873,S63.053A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.054A ",.01)
 ;;S63.054A
 ;;9002226.02101,"873,S63.054A ",.02)
 ;;S63.054A
 ;;9002226.02101,"873,S63.054A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.055A ",.01)
 ;;S63.055A
 ;;9002226.02101,"873,S63.055A ",.02)
 ;;S63.055A
 ;;9002226.02101,"873,S63.055A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.056A ",.01)
 ;;S63.056A
 ;;9002226.02101,"873,S63.056A ",.02)
 ;;S63.056A
 ;;9002226.02101,"873,S63.056A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.061A ",.01)
 ;;S63.061A
 ;;9002226.02101,"873,S63.061A ",.02)
 ;;S63.061A
 ;;9002226.02101,"873,S63.061A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.062A ",.01)
 ;;S63.062A
 ;;9002226.02101,"873,S63.062A ",.02)
 ;;S63.062A
 ;;9002226.02101,"873,S63.062A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.063A ",.01)
 ;;S63.063A
 ;;9002226.02101,"873,S63.063A ",.02)
 ;;S63.063A
 ;;9002226.02101,"873,S63.063A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.064A ",.01)
 ;;S63.064A
 ;;9002226.02101,"873,S63.064A ",.02)
 ;;S63.064A
 ;;9002226.02101,"873,S63.064A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.065A ",.01)
 ;;S63.065A
 ;;9002226.02101,"873,S63.065A ",.02)
 ;;S63.065A
 ;;9002226.02101,"873,S63.065A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.066A ",.01)
 ;;S63.066A
 ;;9002226.02101,"873,S63.066A ",.02)
 ;;S63.066A
 ;;9002226.02101,"873,S63.066A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.071A ",.01)
 ;;S63.071A
 ;;9002226.02101,"873,S63.071A ",.02)
 ;;S63.071A
 ;;9002226.02101,"873,S63.071A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.072A ",.01)
 ;;S63.072A
 ;;9002226.02101,"873,S63.072A ",.02)
 ;;S63.072A
 ;;9002226.02101,"873,S63.072A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.073A ",.01)
 ;;S63.073A
 ;;9002226.02101,"873,S63.073A ",.02)
 ;;S63.073A
 ;;9002226.02101,"873,S63.073A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.074A ",.01)
 ;;S63.074A
 ;;9002226.02101,"873,S63.074A ",.02)
 ;;S63.074A
 ;;9002226.02101,"873,S63.074A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.075A ",.01)
 ;;S63.075A
 ;;9002226.02101,"873,S63.075A ",.02)
 ;;S63.075A
 ;;9002226.02101,"873,S63.075A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.076A ",.01)
 ;;S63.076A
 ;;9002226.02101,"873,S63.076A ",.02)
 ;;S63.076A
 ;;9002226.02101,"873,S63.076A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.091A ",.01)
 ;;S63.091A
 ;;9002226.02101,"873,S63.091A ",.02)
 ;;S63.091A
 ;;9002226.02101,"873,S63.091A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.092A ",.01)
 ;;S63.092A
 ;;9002226.02101,"873,S63.092A ",.02)
 ;;S63.092A
 ;;9002226.02101,"873,S63.092A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.093A ",.01)
 ;;S63.093A
 ;;9002226.02101,"873,S63.093A ",.02)
 ;;S63.093A
 ;;9002226.02101,"873,S63.093A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.094A ",.01)
 ;;S63.094A
 ;;9002226.02101,"873,S63.094A ",.02)
 ;;S63.094A
 ;;9002226.02101,"873,S63.094A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.095A ",.01)
 ;;S63.095A
 ;;9002226.02101,"873,S63.095A ",.02)
 ;;S63.095A
 ;;9002226.02101,"873,S63.095A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.096A ",.01)
 ;;S63.096A
 ;;9002226.02101,"873,S63.096A ",.02)
 ;;S63.096A
 ;;9002226.02101,"873,S63.096A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.101A ",.01)
 ;;S63.101A
 ;;9002226.02101,"873,S63.101A ",.02)
 ;;S63.101A
 ;;9002226.02101,"873,S63.101A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.102A ",.01)
 ;;S63.102A
 ;;9002226.02101,"873,S63.102A ",.02)
 ;;S63.102A
 ;;9002226.02101,"873,S63.102A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.103A ",.01)
 ;;S63.103A
 ;;9002226.02101,"873,S63.103A ",.02)
 ;;S63.103A
 ;;9002226.02101,"873,S63.103A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.104A ",.01)
 ;;S63.104A
 ;;9002226.02101,"873,S63.104A ",.02)
 ;;S63.104A
 ;;9002226.02101,"873,S63.104A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.105A ",.01)
 ;;S63.105A
 ;;9002226.02101,"873,S63.105A ",.02)
 ;;S63.105A
 ;;9002226.02101,"873,S63.105A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.106A ",.01)
 ;;S63.106A
 ;;9002226.02101,"873,S63.106A ",.02)
 ;;S63.106A
 ;;9002226.02101,"873,S63.106A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.111A ",.01)
 ;;S63.111A
 ;;9002226.02101,"873,S63.111A ",.02)
 ;;S63.111A
 ;;9002226.02101,"873,S63.111A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.112A ",.01)
 ;;S63.112A
 ;;9002226.02101,"873,S63.112A ",.02)
 ;;S63.112A
 ;;9002226.02101,"873,S63.112A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.113A ",.01)
 ;;S63.113A
 ;;9002226.02101,"873,S63.113A ",.02)
 ;;S63.113A
 ;;9002226.02101,"873,S63.113A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.114A ",.01)
 ;;S63.114A
 ;;9002226.02101,"873,S63.114A ",.02)
 ;;S63.114A
 ;;9002226.02101,"873,S63.114A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.115A ",.01)
 ;;S63.115A
 ;;9002226.02101,"873,S63.115A ",.02)
 ;;S63.115A
 ;;9002226.02101,"873,S63.115A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.116A ",.01)
 ;;S63.116A
 ;;9002226.02101,"873,S63.116A ",.02)
 ;;S63.116A
 ;;9002226.02101,"873,S63.116A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.121A ",.01)
 ;;S63.121A
 ;;9002226.02101,"873,S63.121A ",.02)
 ;;S63.121A
 ;;9002226.02101,"873,S63.121A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.122A ",.01)
 ;;S63.122A
 ;;9002226.02101,"873,S63.122A ",.02)
 ;;S63.122A
 ;;9002226.02101,"873,S63.122A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.123A ",.01)
 ;;S63.123A
 ;;9002226.02101,"873,S63.123A ",.02)
 ;;S63.123A
 ;;9002226.02101,"873,S63.123A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.124A ",.01)
 ;;S63.124A
 ;;9002226.02101,"873,S63.124A ",.02)
 ;;S63.124A
 ;;9002226.02101,"873,S63.124A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.125A ",.01)
 ;;S63.125A
 ;;9002226.02101,"873,S63.125A ",.02)
 ;;S63.125A
 ;;9002226.02101,"873,S63.125A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.126A ",.01)
 ;;S63.126A
 ;;9002226.02101,"873,S63.126A ",.02)
 ;;S63.126A
 ;;9002226.02101,"873,S63.126A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.131A ",.01)
 ;;S63.131A
 ;;9002226.02101,"873,S63.131A ",.02)
 ;;S63.131A
 ;;9002226.02101,"873,S63.131A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.132A ",.01)
 ;;S63.132A
 ;;9002226.02101,"873,S63.132A ",.02)
 ;;S63.132A
 ;;9002226.02101,"873,S63.132A ",.03)
 ;;30
 ;;9002226.02101,"873,S63.133A ",.01)
 ;;S63.133A
 ;;9002226.02101,"873,S63.133A ",.02)
 ;;S63.133A
 ;;9002226.02101,"873,S63.133A ",.03)
 ;;30