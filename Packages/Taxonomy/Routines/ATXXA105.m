ATXXA105 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S73.002A ",.01)
 ;;S73.002A
 ;;9002226.02101,"873,S73.002A ",.02)
 ;;S73.002A
 ;;9002226.02101,"873,S73.002A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.003A ",.01)
 ;;S73.003A
 ;;9002226.02101,"873,S73.003A ",.02)
 ;;S73.003A
 ;;9002226.02101,"873,S73.003A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.004A ",.01)
 ;;S73.004A
 ;;9002226.02101,"873,S73.004A ",.02)
 ;;S73.004A
 ;;9002226.02101,"873,S73.004A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.005A ",.01)
 ;;S73.005A
 ;;9002226.02101,"873,S73.005A ",.02)
 ;;S73.005A
 ;;9002226.02101,"873,S73.005A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.006A ",.01)
 ;;S73.006A
 ;;9002226.02101,"873,S73.006A ",.02)
 ;;S73.006A
 ;;9002226.02101,"873,S73.006A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.011A ",.01)
 ;;S73.011A
 ;;9002226.02101,"873,S73.011A ",.02)
 ;;S73.011A
 ;;9002226.02101,"873,S73.011A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.012A ",.01)
 ;;S73.012A
 ;;9002226.02101,"873,S73.012A ",.02)
 ;;S73.012A
 ;;9002226.02101,"873,S73.012A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.013A ",.01)
 ;;S73.013A
 ;;9002226.02101,"873,S73.013A ",.02)
 ;;S73.013A
 ;;9002226.02101,"873,S73.013A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.014A ",.01)
 ;;S73.014A
 ;;9002226.02101,"873,S73.014A ",.02)
 ;;S73.014A
 ;;9002226.02101,"873,S73.014A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.015A ",.01)
 ;;S73.015A
 ;;9002226.02101,"873,S73.015A ",.02)
 ;;S73.015A
 ;;9002226.02101,"873,S73.015A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.016A ",.01)
 ;;S73.016A
 ;;9002226.02101,"873,S73.016A ",.02)
 ;;S73.016A
 ;;9002226.02101,"873,S73.016A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.021A ",.01)
 ;;S73.021A
 ;;9002226.02101,"873,S73.021A ",.02)
 ;;S73.021A
 ;;9002226.02101,"873,S73.021A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.022A ",.01)
 ;;S73.022A
 ;;9002226.02101,"873,S73.022A ",.02)
 ;;S73.022A
 ;;9002226.02101,"873,S73.022A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.023A ",.01)
 ;;S73.023A
 ;;9002226.02101,"873,S73.023A ",.02)
 ;;S73.023A
 ;;9002226.02101,"873,S73.023A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.024A ",.01)
 ;;S73.024A
 ;;9002226.02101,"873,S73.024A ",.02)
 ;;S73.024A
 ;;9002226.02101,"873,S73.024A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.025A ",.01)
 ;;S73.025A
 ;;9002226.02101,"873,S73.025A ",.02)
 ;;S73.025A
 ;;9002226.02101,"873,S73.025A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.026A ",.01)
 ;;S73.026A
 ;;9002226.02101,"873,S73.026A ",.02)
 ;;S73.026A
 ;;9002226.02101,"873,S73.026A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.031A ",.01)
 ;;S73.031A
 ;;9002226.02101,"873,S73.031A ",.02)
 ;;S73.031A
 ;;9002226.02101,"873,S73.031A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.032A ",.01)
 ;;S73.032A
 ;;9002226.02101,"873,S73.032A ",.02)
 ;;S73.032A
 ;;9002226.02101,"873,S73.032A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.033A ",.01)
 ;;S73.033A
 ;;9002226.02101,"873,S73.033A ",.02)
 ;;S73.033A
 ;;9002226.02101,"873,S73.033A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.034A ",.01)
 ;;S73.034A
 ;;9002226.02101,"873,S73.034A ",.02)
 ;;S73.034A
 ;;9002226.02101,"873,S73.034A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.035A ",.01)
 ;;S73.035A
 ;;9002226.02101,"873,S73.035A ",.02)
 ;;S73.035A
 ;;9002226.02101,"873,S73.035A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.036A ",.01)
 ;;S73.036A
 ;;9002226.02101,"873,S73.036A ",.02)
 ;;S73.036A
 ;;9002226.02101,"873,S73.036A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.041A ",.01)
 ;;S73.041A
 ;;9002226.02101,"873,S73.041A ",.02)
 ;;S73.041A
 ;;9002226.02101,"873,S73.041A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.042A ",.01)
 ;;S73.042A
 ;;9002226.02101,"873,S73.042A ",.02)
 ;;S73.042A
 ;;9002226.02101,"873,S73.042A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.043A ",.01)
 ;;S73.043A
 ;;9002226.02101,"873,S73.043A ",.02)
 ;;S73.043A
 ;;9002226.02101,"873,S73.043A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.044A ",.01)
 ;;S73.044A
 ;;9002226.02101,"873,S73.044A ",.02)
 ;;S73.044A
 ;;9002226.02101,"873,S73.044A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.045A ",.01)
 ;;S73.045A
 ;;9002226.02101,"873,S73.045A ",.02)
 ;;S73.045A
 ;;9002226.02101,"873,S73.045A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.046A ",.01)
 ;;S73.046A
 ;;9002226.02101,"873,S73.046A ",.02)
 ;;S73.046A
 ;;9002226.02101,"873,S73.046A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.101A ",.01)
 ;;S73.101A
 ;;9002226.02101,"873,S73.101A ",.02)
 ;;S73.101A
 ;;9002226.02101,"873,S73.101A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.102A ",.01)
 ;;S73.102A
 ;;9002226.02101,"873,S73.102A ",.02)
 ;;S73.102A
 ;;9002226.02101,"873,S73.102A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.109A ",.01)
 ;;S73.109A
 ;;9002226.02101,"873,S73.109A ",.02)
 ;;S73.109A
 ;;9002226.02101,"873,S73.109A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.111A ",.01)
 ;;S73.111A
 ;;9002226.02101,"873,S73.111A ",.02)
 ;;S73.111A
 ;;9002226.02101,"873,S73.111A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.112A ",.01)
 ;;S73.112A
 ;;9002226.02101,"873,S73.112A ",.02)
 ;;S73.112A
 ;;9002226.02101,"873,S73.112A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.119A ",.01)
 ;;S73.119A
 ;;9002226.02101,"873,S73.119A ",.02)
 ;;S73.119A
 ;;9002226.02101,"873,S73.119A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.121A ",.01)
 ;;S73.121A
 ;;9002226.02101,"873,S73.121A ",.02)
 ;;S73.121A
 ;;9002226.02101,"873,S73.121A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.122A ",.01)
 ;;S73.122A
 ;;9002226.02101,"873,S73.122A ",.02)
 ;;S73.122A
 ;;9002226.02101,"873,S73.122A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.129A ",.01)
 ;;S73.129A
 ;;9002226.02101,"873,S73.129A ",.02)
 ;;S73.129A
 ;;9002226.02101,"873,S73.129A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.191A ",.01)
 ;;S73.191A
 ;;9002226.02101,"873,S73.191A ",.02)
 ;;S73.191A
 ;;9002226.02101,"873,S73.191A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.192A ",.01)
 ;;S73.192A
 ;;9002226.02101,"873,S73.192A ",.02)
 ;;S73.192A
 ;;9002226.02101,"873,S73.192A ",.03)
 ;;30
 ;;9002226.02101,"873,S73.199A ",.01)
 ;;S73.199A
 ;;9002226.02101,"873,S73.199A ",.02)
 ;;S73.199A
 ;;9002226.02101,"873,S73.199A ",.03)
 ;;30
 ;;9002226.02101,"873,S74.00XA ",.01)
 ;;S74.00XA
 ;;9002226.02101,"873,S74.00XA ",.02)
 ;;S74.00XA
 ;;9002226.02101,"873,S74.00XA ",.03)
 ;;30
 ;;9002226.02101,"873,S74.01XA ",.01)
 ;;S74.01XA
 ;;9002226.02101,"873,S74.01XA ",.02)
 ;;S74.01XA
 ;;9002226.02101,"873,S74.01XA ",.03)
 ;;30
 ;;9002226.02101,"873,S74.02XA ",.01)
 ;;S74.02XA
 ;;9002226.02101,"873,S74.02XA ",.02)
 ;;S74.02XA
 ;;9002226.02101,"873,S74.02XA ",.03)
 ;;30
 ;;9002226.02101,"873,S74.10XA ",.01)
 ;;S74.10XA
 ;;9002226.02101,"873,S74.10XA ",.02)
 ;;S74.10XA
 ;;9002226.02101,"873,S74.10XA ",.03)
 ;;30
 ;;9002226.02101,"873,S74.11XA ",.01)
 ;;S74.11XA
 ;;9002226.02101,"873,S74.11XA ",.02)
 ;;S74.11XA
 ;;9002226.02101,"873,S74.11XA ",.03)
 ;;30
 ;;9002226.02101,"873,S74.12XA ",.01)
 ;;S74.12XA
 ;;9002226.02101,"873,S74.12XA ",.02)
 ;;S74.12XA
 ;;9002226.02101,"873,S74.12XA ",.03)
 ;;30
 ;;9002226.02101,"873,S74.20XA ",.01)
 ;;S74.20XA
 ;;9002226.02101,"873,S74.20XA ",.02)
 ;;S74.20XA
 ;;9002226.02101,"873,S74.20XA ",.03)
 ;;30
 ;;9002226.02101,"873,S74.21XA ",.01)
 ;;S74.21XA
 ;;9002226.02101,"873,S74.21XA ",.02)
 ;;S74.21XA
 ;;9002226.02101,"873,S74.21XA ",.03)
 ;;30
 ;;9002226.02101,"873,S74.22XA ",.01)
 ;;S74.22XA
 ;;9002226.02101,"873,S74.22XA ",.02)
 ;;S74.22XA
 ;;9002226.02101,"873,S74.22XA ",.03)
 ;;30
 ;;9002226.02101,"873,S74.8X1A ",.01)
 ;;S74.8X1A
 ;;9002226.02101,"873,S74.8X1A ",.02)
 ;;S74.8X1A
 ;;9002226.02101,"873,S74.8X1A ",.03)
 ;;30
 ;;9002226.02101,"873,S74.8X2A ",.01)
 ;;S74.8X2A
 ;;9002226.02101,"873,S74.8X2A ",.02)
 ;;S74.8X2A
 ;;9002226.02101,"873,S74.8X2A ",.03)
 ;;30
 ;;9002226.02101,"873,S74.8X9A ",.01)
 ;;S74.8X9A
 ;;9002226.02101,"873,S74.8X9A ",.02)
 ;;S74.8X9A
 ;;9002226.02101,"873,S74.8X9A ",.03)
 ;;30
 ;;9002226.02101,"873,S74.90XA ",.01)
 ;;S74.90XA
 ;;9002226.02101,"873,S74.90XA ",.02)
 ;;S74.90XA
 ;;9002226.02101,"873,S74.90XA ",.03)
 ;;30
 ;;9002226.02101,"873,S74.91XA ",.01)
 ;;S74.91XA
 ;;9002226.02101,"873,S74.91XA ",.02)
 ;;S74.91XA
 ;;9002226.02101,"873,S74.91XA ",.03)
 ;;30
 ;;9002226.02101,"873,S74.92XA ",.01)
 ;;S74.92XA
 ;;9002226.02101,"873,S74.92XA ",.02)
 ;;S74.92XA
 ;;9002226.02101,"873,S74.92XA ",.03)
 ;;30
 ;;9002226.02101,"873,S75.001A ",.01)
 ;;S75.001A
 ;;9002226.02101,"873,S75.001A ",.02)
 ;;S75.001A
 ;;9002226.02101,"873,S75.001A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.002A ",.01)
 ;;S75.002A
 ;;9002226.02101,"873,S75.002A ",.02)
 ;;S75.002A
 ;;9002226.02101,"873,S75.002A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.009A ",.01)
 ;;S75.009A
 ;;9002226.02101,"873,S75.009A ",.02)
 ;;S75.009A
 ;;9002226.02101,"873,S75.009A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.011A ",.01)
 ;;S75.011A
 ;;9002226.02101,"873,S75.011A ",.02)
 ;;S75.011A
 ;;9002226.02101,"873,S75.011A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.012A ",.01)
 ;;S75.012A
 ;;9002226.02101,"873,S75.012A ",.02)
 ;;S75.012A
 ;;9002226.02101,"873,S75.012A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.019A ",.01)
 ;;S75.019A
 ;;9002226.02101,"873,S75.019A ",.02)
 ;;S75.019A
 ;;9002226.02101,"873,S75.019A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.021A ",.01)
 ;;S75.021A
 ;;9002226.02101,"873,S75.021A ",.02)
 ;;S75.021A
 ;;9002226.02101,"873,S75.021A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.022A ",.01)
 ;;S75.022A
 ;;9002226.02101,"873,S75.022A ",.02)
 ;;S75.022A
 ;;9002226.02101,"873,S75.022A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.029A ",.01)
 ;;S75.029A
 ;;9002226.02101,"873,S75.029A ",.02)
 ;;S75.029A
 ;;9002226.02101,"873,S75.029A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.091A ",.01)
 ;;S75.091A
 ;;9002226.02101,"873,S75.091A ",.02)
 ;;S75.091A
 ;;9002226.02101,"873,S75.091A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.092A ",.01)
 ;;S75.092A
 ;;9002226.02101,"873,S75.092A ",.02)
 ;;S75.092A
 ;;9002226.02101,"873,S75.092A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.099A ",.01)
 ;;S75.099A
 ;;9002226.02101,"873,S75.099A ",.02)
 ;;S75.099A
 ;;9002226.02101,"873,S75.099A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.101A ",.01)
 ;;S75.101A
 ;;9002226.02101,"873,S75.101A ",.02)
 ;;S75.101A
 ;;9002226.02101,"873,S75.101A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.102A ",.01)
 ;;S75.102A
 ;;9002226.02101,"873,S75.102A ",.02)
 ;;S75.102A
 ;;9002226.02101,"873,S75.102A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.109A ",.01)
 ;;S75.109A
 ;;9002226.02101,"873,S75.109A ",.02)
 ;;S75.109A
 ;;9002226.02101,"873,S75.109A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.111A ",.01)
 ;;S75.111A
 ;;9002226.02101,"873,S75.111A ",.02)
 ;;S75.111A
 ;;9002226.02101,"873,S75.111A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.112A ",.01)
 ;;S75.112A
 ;;9002226.02101,"873,S75.112A ",.02)
 ;;S75.112A
 ;;9002226.02101,"873,S75.112A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.119A ",.01)
 ;;S75.119A
 ;;9002226.02101,"873,S75.119A ",.02)
 ;;S75.119A
 ;;9002226.02101,"873,S75.119A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.121A ",.01)
 ;;S75.121A
 ;;9002226.02101,"873,S75.121A ",.02)
 ;;S75.121A
 ;;9002226.02101,"873,S75.121A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.122A ",.01)
 ;;S75.122A
 ;;9002226.02101,"873,S75.122A ",.02)
 ;;S75.122A
 ;;9002226.02101,"873,S75.122A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.129A ",.01)
 ;;S75.129A
 ;;9002226.02101,"873,S75.129A ",.02)
 ;;S75.129A
 ;;9002226.02101,"873,S75.129A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.191A ",.01)
 ;;S75.191A
 ;;9002226.02101,"873,S75.191A ",.02)
 ;;S75.191A
 ;;9002226.02101,"873,S75.191A ",.03)
 ;;30
 ;;9002226.02101,"873,S75.192A ",.01)
 ;;S75.192A