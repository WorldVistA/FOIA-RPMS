ATXXA53 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S36.291A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.292A ",.01)
 ;;S36.292A
 ;;9002226.02101,"873,S36.292A ",.02)
 ;;S36.292A
 ;;9002226.02101,"873,S36.292A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.299A ",.01)
 ;;S36.299A
 ;;9002226.02101,"873,S36.299A ",.02)
 ;;S36.299A
 ;;9002226.02101,"873,S36.299A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.30XA ",.01)
 ;;S36.30XA
 ;;9002226.02101,"873,S36.30XA ",.02)
 ;;S36.30XA
 ;;9002226.02101,"873,S36.30XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.32XA ",.01)
 ;;S36.32XA
 ;;9002226.02101,"873,S36.32XA ",.02)
 ;;S36.32XA
 ;;9002226.02101,"873,S36.32XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.33XA ",.01)
 ;;S36.33XA
 ;;9002226.02101,"873,S36.33XA ",.02)
 ;;S36.33XA
 ;;9002226.02101,"873,S36.33XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.39XA ",.01)
 ;;S36.39XA
 ;;9002226.02101,"873,S36.39XA ",.02)
 ;;S36.39XA
 ;;9002226.02101,"873,S36.39XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.400A ",.01)
 ;;S36.400A
 ;;9002226.02101,"873,S36.400A ",.02)
 ;;S36.400A
 ;;9002226.02101,"873,S36.400A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.408A ",.01)
 ;;S36.408A
 ;;9002226.02101,"873,S36.408A ",.02)
 ;;S36.408A
 ;;9002226.02101,"873,S36.408A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.409A ",.01)
 ;;S36.409A
 ;;9002226.02101,"873,S36.409A ",.02)
 ;;S36.409A
 ;;9002226.02101,"873,S36.409A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.410A ",.01)
 ;;S36.410A
 ;;9002226.02101,"873,S36.410A ",.02)
 ;;S36.410A
 ;;9002226.02101,"873,S36.410A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.418A ",.01)
 ;;S36.418A
 ;;9002226.02101,"873,S36.418A ",.02)
 ;;S36.418A
 ;;9002226.02101,"873,S36.418A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.419A ",.01)
 ;;S36.419A
 ;;9002226.02101,"873,S36.419A ",.02)
 ;;S36.419A
 ;;9002226.02101,"873,S36.419A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.420A ",.01)
 ;;S36.420A
 ;;9002226.02101,"873,S36.420A ",.02)
 ;;S36.420A
 ;;9002226.02101,"873,S36.420A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.428A ",.01)
 ;;S36.428A
 ;;9002226.02101,"873,S36.428A ",.02)
 ;;S36.428A
 ;;9002226.02101,"873,S36.428A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.429A ",.01)
 ;;S36.429A
 ;;9002226.02101,"873,S36.429A ",.02)
 ;;S36.429A
 ;;9002226.02101,"873,S36.429A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.430A ",.01)
 ;;S36.430A
 ;;9002226.02101,"873,S36.430A ",.02)
 ;;S36.430A
 ;;9002226.02101,"873,S36.430A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.438A ",.01)
 ;;S36.438A
 ;;9002226.02101,"873,S36.438A ",.02)
 ;;S36.438A
 ;;9002226.02101,"873,S36.438A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.439A ",.01)
 ;;S36.439A
 ;;9002226.02101,"873,S36.439A ",.02)
 ;;S36.439A
 ;;9002226.02101,"873,S36.439A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.490A ",.01)
 ;;S36.490A
 ;;9002226.02101,"873,S36.490A ",.02)
 ;;S36.490A
 ;;9002226.02101,"873,S36.490A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.498A ",.01)
 ;;S36.498A
 ;;9002226.02101,"873,S36.498A ",.02)
 ;;S36.498A
 ;;9002226.02101,"873,S36.498A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.499A ",.01)
 ;;S36.499A
 ;;9002226.02101,"873,S36.499A ",.02)
 ;;S36.499A
 ;;9002226.02101,"873,S36.499A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.500A ",.01)
 ;;S36.500A
 ;;9002226.02101,"873,S36.500A ",.02)
 ;;S36.500A
 ;;9002226.02101,"873,S36.500A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.501A ",.01)
 ;;S36.501A
 ;;9002226.02101,"873,S36.501A ",.02)
 ;;S36.501A
 ;;9002226.02101,"873,S36.501A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.502A ",.01)
 ;;S36.502A
 ;;9002226.02101,"873,S36.502A ",.02)
 ;;S36.502A
 ;;9002226.02101,"873,S36.502A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.503A ",.01)
 ;;S36.503A
 ;;9002226.02101,"873,S36.503A ",.02)
 ;;S36.503A
 ;;9002226.02101,"873,S36.503A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.508A ",.01)
 ;;S36.508A
 ;;9002226.02101,"873,S36.508A ",.02)
 ;;S36.508A
 ;;9002226.02101,"873,S36.508A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.509A ",.01)
 ;;S36.509A
 ;;9002226.02101,"873,S36.509A ",.02)
 ;;S36.509A
 ;;9002226.02101,"873,S36.509A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.510A ",.01)
 ;;S36.510A
 ;;9002226.02101,"873,S36.510A ",.02)
 ;;S36.510A
 ;;9002226.02101,"873,S36.510A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.511A ",.01)
 ;;S36.511A
 ;;9002226.02101,"873,S36.511A ",.02)
 ;;S36.511A
 ;;9002226.02101,"873,S36.511A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.512A ",.01)
 ;;S36.512A
 ;;9002226.02101,"873,S36.512A ",.02)
 ;;S36.512A
 ;;9002226.02101,"873,S36.512A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.513A ",.01)
 ;;S36.513A
 ;;9002226.02101,"873,S36.513A ",.02)
 ;;S36.513A
 ;;9002226.02101,"873,S36.513A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.518A ",.01)
 ;;S36.518A
 ;;9002226.02101,"873,S36.518A ",.02)
 ;;S36.518A
 ;;9002226.02101,"873,S36.518A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.519A ",.01)
 ;;S36.519A
 ;;9002226.02101,"873,S36.519A ",.02)
 ;;S36.519A
 ;;9002226.02101,"873,S36.519A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.520A ",.01)
 ;;S36.520A
 ;;9002226.02101,"873,S36.520A ",.02)
 ;;S36.520A
 ;;9002226.02101,"873,S36.520A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.521A ",.01)
 ;;S36.521A
 ;;9002226.02101,"873,S36.521A ",.02)
 ;;S36.521A
 ;;9002226.02101,"873,S36.521A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.522A ",.01)
 ;;S36.522A
 ;;9002226.02101,"873,S36.522A ",.02)
 ;;S36.522A
 ;;9002226.02101,"873,S36.522A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.523A ",.01)
 ;;S36.523A
 ;;9002226.02101,"873,S36.523A ",.02)
 ;;S36.523A
 ;;9002226.02101,"873,S36.523A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.528A ",.01)
 ;;S36.528A
 ;;9002226.02101,"873,S36.528A ",.02)
 ;;S36.528A
 ;;9002226.02101,"873,S36.528A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.529A ",.01)
 ;;S36.529A
 ;;9002226.02101,"873,S36.529A ",.02)
 ;;S36.529A
 ;;9002226.02101,"873,S36.529A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.530A ",.01)
 ;;S36.530A
 ;;9002226.02101,"873,S36.530A ",.02)
 ;;S36.530A
 ;;9002226.02101,"873,S36.530A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.531A ",.01)
 ;;S36.531A
 ;;9002226.02101,"873,S36.531A ",.02)
 ;;S36.531A
 ;;9002226.02101,"873,S36.531A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.532A ",.01)
 ;;S36.532A
 ;;9002226.02101,"873,S36.532A ",.02)
 ;;S36.532A
 ;;9002226.02101,"873,S36.532A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.533A ",.01)
 ;;S36.533A
 ;;9002226.02101,"873,S36.533A ",.02)
 ;;S36.533A
 ;;9002226.02101,"873,S36.533A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.538A ",.01)
 ;;S36.538A
 ;;9002226.02101,"873,S36.538A ",.02)
 ;;S36.538A
 ;;9002226.02101,"873,S36.538A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.539A ",.01)
 ;;S36.539A
 ;;9002226.02101,"873,S36.539A ",.02)
 ;;S36.539A
 ;;9002226.02101,"873,S36.539A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.590A ",.01)
 ;;S36.590A
 ;;9002226.02101,"873,S36.590A ",.02)
 ;;S36.590A
 ;;9002226.02101,"873,S36.590A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.591A ",.01)
 ;;S36.591A
 ;;9002226.02101,"873,S36.591A ",.02)
 ;;S36.591A
 ;;9002226.02101,"873,S36.591A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.592A ",.01)
 ;;S36.592A
 ;;9002226.02101,"873,S36.592A ",.02)
 ;;S36.592A
 ;;9002226.02101,"873,S36.592A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.593A ",.01)
 ;;S36.593A
 ;;9002226.02101,"873,S36.593A ",.02)
 ;;S36.593A
 ;;9002226.02101,"873,S36.593A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.598A ",.01)
 ;;S36.598A
 ;;9002226.02101,"873,S36.598A ",.02)
 ;;S36.598A
 ;;9002226.02101,"873,S36.598A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.599A ",.01)
 ;;S36.599A
 ;;9002226.02101,"873,S36.599A ",.02)
 ;;S36.599A
 ;;9002226.02101,"873,S36.599A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.60XA ",.01)
 ;;S36.60XA
 ;;9002226.02101,"873,S36.60XA ",.02)
 ;;S36.60XA
 ;;9002226.02101,"873,S36.60XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.61XA ",.01)
 ;;S36.61XA
 ;;9002226.02101,"873,S36.61XA ",.02)
 ;;S36.61XA
 ;;9002226.02101,"873,S36.61XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.62XA ",.01)
 ;;S36.62XA
 ;;9002226.02101,"873,S36.62XA ",.02)
 ;;S36.62XA
 ;;9002226.02101,"873,S36.62XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.63XA ",.01)
 ;;S36.63XA
 ;;9002226.02101,"873,S36.63XA ",.02)
 ;;S36.63XA
 ;;9002226.02101,"873,S36.63XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.69XA ",.01)
 ;;S36.69XA
 ;;9002226.02101,"873,S36.69XA ",.02)
 ;;S36.69XA
 ;;9002226.02101,"873,S36.69XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.81XA ",.01)
 ;;S36.81XA
 ;;9002226.02101,"873,S36.81XA ",.02)
 ;;S36.81XA
 ;;9002226.02101,"873,S36.81XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.892A ",.01)
 ;;S36.892A
 ;;9002226.02101,"873,S36.892A ",.02)
 ;;S36.892A
 ;;9002226.02101,"873,S36.892A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.893A ",.01)
 ;;S36.893A
 ;;9002226.02101,"873,S36.893A ",.02)
 ;;S36.893A
 ;;9002226.02101,"873,S36.893A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.898A ",.01)
 ;;S36.898A
 ;;9002226.02101,"873,S36.898A ",.02)
 ;;S36.898A
 ;;9002226.02101,"873,S36.898A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.899A ",.01)
 ;;S36.899A
 ;;9002226.02101,"873,S36.899A ",.02)
 ;;S36.899A
 ;;9002226.02101,"873,S36.899A ",.03)
 ;;30
 ;;9002226.02101,"873,S36.90XA ",.01)
 ;;S36.90XA
 ;;9002226.02101,"873,S36.90XA ",.02)
 ;;S36.90XA
 ;;9002226.02101,"873,S36.90XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.92XA ",.01)
 ;;S36.92XA
 ;;9002226.02101,"873,S36.92XA ",.02)
 ;;S36.92XA
 ;;9002226.02101,"873,S36.92XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.93XA ",.01)
 ;;S36.93XA
 ;;9002226.02101,"873,S36.93XA ",.02)
 ;;S36.93XA
 ;;9002226.02101,"873,S36.93XA ",.03)
 ;;30
 ;;9002226.02101,"873,S36.99XA ",.01)
 ;;S36.99XA
 ;;9002226.02101,"873,S36.99XA ",.02)
 ;;S36.99XA
 ;;9002226.02101,"873,S36.99XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.001A ",.01)
 ;;S37.001A
 ;;9002226.02101,"873,S37.001A ",.02)
 ;;S37.001A
 ;;9002226.02101,"873,S37.001A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.002A ",.01)
 ;;S37.002A
 ;;9002226.02101,"873,S37.002A ",.02)
 ;;S37.002A
 ;;9002226.02101,"873,S37.002A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.009A ",.01)
 ;;S37.009A
 ;;9002226.02101,"873,S37.009A ",.02)
 ;;S37.009A
 ;;9002226.02101,"873,S37.009A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.011A ",.01)
 ;;S37.011A
 ;;9002226.02101,"873,S37.011A ",.02)
 ;;S37.011A
 ;;9002226.02101,"873,S37.011A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.012A ",.01)
 ;;S37.012A
 ;;9002226.02101,"873,S37.012A ",.02)
 ;;S37.012A
 ;;9002226.02101,"873,S37.012A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.019A ",.01)
 ;;S37.019A
 ;;9002226.02101,"873,S37.019A ",.02)
 ;;S37.019A
 ;;9002226.02101,"873,S37.019A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.021A ",.01)
 ;;S37.021A
 ;;9002226.02101,"873,S37.021A ",.02)
 ;;S37.021A
 ;;9002226.02101,"873,S37.021A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.022A ",.01)
 ;;S37.022A
 ;;9002226.02101,"873,S37.022A ",.02)
 ;;S37.022A
 ;;9002226.02101,"873,S37.022A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.029A ",.01)
 ;;S37.029A
 ;;9002226.02101,"873,S37.029A ",.02)
 ;;S37.029A
 ;;9002226.02101,"873,S37.029A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.031A ",.01)
 ;;S37.031A
 ;;9002226.02101,"873,S37.031A ",.02)
 ;;S37.031A
 ;;9002226.02101,"873,S37.031A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.032A ",.01)
 ;;S37.032A
 ;;9002226.02101,"873,S37.032A ",.02)
 ;;S37.032A
 ;;9002226.02101,"873,S37.032A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.039A ",.01)
 ;;S37.039A
 ;;9002226.02101,"873,S37.039A ",.02)
 ;;S37.039A
 ;;9002226.02101,"873,S37.039A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.041A ",.01)
 ;;S37.041A
 ;;9002226.02101,"873,S37.041A ",.02)
 ;;S37.041A
 ;;9002226.02101,"873,S37.041A ",.03)
 ;;30