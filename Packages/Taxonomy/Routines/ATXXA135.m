ATXXA135 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,T21.02XA ",.02)
 ;;T21.02XA
 ;;9002226.02101,"873,T21.02XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.03XA ",.01)
 ;;T21.03XA
 ;;9002226.02101,"873,T21.03XA ",.02)
 ;;T21.03XA
 ;;9002226.02101,"873,T21.03XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.04XA ",.01)
 ;;T21.04XA
 ;;9002226.02101,"873,T21.04XA ",.02)
 ;;T21.04XA
 ;;9002226.02101,"873,T21.04XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.05XA ",.01)
 ;;T21.05XA
 ;;9002226.02101,"873,T21.05XA ",.02)
 ;;T21.05XA
 ;;9002226.02101,"873,T21.05XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.06XA ",.01)
 ;;T21.06XA
 ;;9002226.02101,"873,T21.06XA ",.02)
 ;;T21.06XA
 ;;9002226.02101,"873,T21.06XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.07XA ",.01)
 ;;T21.07XA
 ;;9002226.02101,"873,T21.07XA ",.02)
 ;;T21.07XA
 ;;9002226.02101,"873,T21.07XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.09XA ",.01)
 ;;T21.09XA
 ;;9002226.02101,"873,T21.09XA ",.02)
 ;;T21.09XA
 ;;9002226.02101,"873,T21.09XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.10XA ",.01)
 ;;T21.10XA
 ;;9002226.02101,"873,T21.10XA ",.02)
 ;;T21.10XA
 ;;9002226.02101,"873,T21.10XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.11XA ",.01)
 ;;T21.11XA
 ;;9002226.02101,"873,T21.11XA ",.02)
 ;;T21.11XA
 ;;9002226.02101,"873,T21.11XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.12XA ",.01)
 ;;T21.12XA
 ;;9002226.02101,"873,T21.12XA ",.02)
 ;;T21.12XA
 ;;9002226.02101,"873,T21.12XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.13XA ",.01)
 ;;T21.13XA
 ;;9002226.02101,"873,T21.13XA ",.02)
 ;;T21.13XA
 ;;9002226.02101,"873,T21.13XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.14XA ",.01)
 ;;T21.14XA
 ;;9002226.02101,"873,T21.14XA ",.02)
 ;;T21.14XA
 ;;9002226.02101,"873,T21.14XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.15XA ",.01)
 ;;T21.15XA
 ;;9002226.02101,"873,T21.15XA ",.02)
 ;;T21.15XA
 ;;9002226.02101,"873,T21.15XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.16XA ",.01)
 ;;T21.16XA
 ;;9002226.02101,"873,T21.16XA ",.02)
 ;;T21.16XA
 ;;9002226.02101,"873,T21.16XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.17XA ",.01)
 ;;T21.17XA
 ;;9002226.02101,"873,T21.17XA ",.02)
 ;;T21.17XA
 ;;9002226.02101,"873,T21.17XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.19XA ",.01)
 ;;T21.19XA
 ;;9002226.02101,"873,T21.19XA ",.02)
 ;;T21.19XA
 ;;9002226.02101,"873,T21.19XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.20XA ",.01)
 ;;T21.20XA
 ;;9002226.02101,"873,T21.20XA ",.02)
 ;;T21.20XA
 ;;9002226.02101,"873,T21.20XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.21XA ",.01)
 ;;T21.21XA
 ;;9002226.02101,"873,T21.21XA ",.02)
 ;;T21.21XA
 ;;9002226.02101,"873,T21.21XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.22XA ",.01)
 ;;T21.22XA
 ;;9002226.02101,"873,T21.22XA ",.02)
 ;;T21.22XA
 ;;9002226.02101,"873,T21.22XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.23XA ",.01)
 ;;T21.23XA
 ;;9002226.02101,"873,T21.23XA ",.02)
 ;;T21.23XA
 ;;9002226.02101,"873,T21.23XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.24XA ",.01)
 ;;T21.24XA
 ;;9002226.02101,"873,T21.24XA ",.02)
 ;;T21.24XA
 ;;9002226.02101,"873,T21.24XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.25XA ",.01)
 ;;T21.25XA
 ;;9002226.02101,"873,T21.25XA ",.02)
 ;;T21.25XA
 ;;9002226.02101,"873,T21.25XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.26XA ",.01)
 ;;T21.26XA
 ;;9002226.02101,"873,T21.26XA ",.02)
 ;;T21.26XA
 ;;9002226.02101,"873,T21.26XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.27XA ",.01)
 ;;T21.27XA
 ;;9002226.02101,"873,T21.27XA ",.02)
 ;;T21.27XA
 ;;9002226.02101,"873,T21.27XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.29XA ",.01)
 ;;T21.29XA
 ;;9002226.02101,"873,T21.29XA ",.02)
 ;;T21.29XA
 ;;9002226.02101,"873,T21.29XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.30XA ",.01)
 ;;T21.30XA
 ;;9002226.02101,"873,T21.30XA ",.02)
 ;;T21.30XA
 ;;9002226.02101,"873,T21.30XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.31XA ",.01)
 ;;T21.31XA
 ;;9002226.02101,"873,T21.31XA ",.02)
 ;;T21.31XA
 ;;9002226.02101,"873,T21.31XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.32XA ",.01)
 ;;T21.32XA
 ;;9002226.02101,"873,T21.32XA ",.02)
 ;;T21.32XA
 ;;9002226.02101,"873,T21.32XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.33XA ",.01)
 ;;T21.33XA
 ;;9002226.02101,"873,T21.33XA ",.02)
 ;;T21.33XA
 ;;9002226.02101,"873,T21.33XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.34XA ",.01)
 ;;T21.34XA
 ;;9002226.02101,"873,T21.34XA ",.02)
 ;;T21.34XA
 ;;9002226.02101,"873,T21.34XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.35XA ",.01)
 ;;T21.35XA
 ;;9002226.02101,"873,T21.35XA ",.02)
 ;;T21.35XA
 ;;9002226.02101,"873,T21.35XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.36XA ",.01)
 ;;T21.36XA
 ;;9002226.02101,"873,T21.36XA ",.02)
 ;;T21.36XA
 ;;9002226.02101,"873,T21.36XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.37XA ",.01)
 ;;T21.37XA
 ;;9002226.02101,"873,T21.37XA ",.02)
 ;;T21.37XA
 ;;9002226.02101,"873,T21.37XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.39XA ",.01)
 ;;T21.39XA
 ;;9002226.02101,"873,T21.39XA ",.02)
 ;;T21.39XA
 ;;9002226.02101,"873,T21.39XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.40XA ",.01)
 ;;T21.40XA
 ;;9002226.02101,"873,T21.40XA ",.02)
 ;;T21.40XA
 ;;9002226.02101,"873,T21.40XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.41XA ",.01)
 ;;T21.41XA
 ;;9002226.02101,"873,T21.41XA ",.02)
 ;;T21.41XA
 ;;9002226.02101,"873,T21.41XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.42XA ",.01)
 ;;T21.42XA
 ;;9002226.02101,"873,T21.42XA ",.02)
 ;;T21.42XA
 ;;9002226.02101,"873,T21.42XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.43XA ",.01)
 ;;T21.43XA
 ;;9002226.02101,"873,T21.43XA ",.02)
 ;;T21.43XA
 ;;9002226.02101,"873,T21.43XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.44XA ",.01)
 ;;T21.44XA
 ;;9002226.02101,"873,T21.44XA ",.02)
 ;;T21.44XA
 ;;9002226.02101,"873,T21.44XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.45XA ",.01)
 ;;T21.45XA
 ;;9002226.02101,"873,T21.45XA ",.02)
 ;;T21.45XA
 ;;9002226.02101,"873,T21.45XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.46XA ",.01)
 ;;T21.46XA
 ;;9002226.02101,"873,T21.46XA ",.02)
 ;;T21.46XA
 ;;9002226.02101,"873,T21.46XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.47XA ",.01)
 ;;T21.47XA
 ;;9002226.02101,"873,T21.47XA ",.02)
 ;;T21.47XA
 ;;9002226.02101,"873,T21.47XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.49XA ",.01)
 ;;T21.49XA
 ;;9002226.02101,"873,T21.49XA ",.02)
 ;;T21.49XA
 ;;9002226.02101,"873,T21.49XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.50XA ",.01)
 ;;T21.50XA
 ;;9002226.02101,"873,T21.50XA ",.02)
 ;;T21.50XA
 ;;9002226.02101,"873,T21.50XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.51XA ",.01)
 ;;T21.51XA
 ;;9002226.02101,"873,T21.51XA ",.02)
 ;;T21.51XA
 ;;9002226.02101,"873,T21.51XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.52XA ",.01)
 ;;T21.52XA
 ;;9002226.02101,"873,T21.52XA ",.02)
 ;;T21.52XA
 ;;9002226.02101,"873,T21.52XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.53XA ",.01)
 ;;T21.53XA
 ;;9002226.02101,"873,T21.53XA ",.02)
 ;;T21.53XA
 ;;9002226.02101,"873,T21.53XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.54XA ",.01)
 ;;T21.54XA
 ;;9002226.02101,"873,T21.54XA ",.02)
 ;;T21.54XA
 ;;9002226.02101,"873,T21.54XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.55XA ",.01)
 ;;T21.55XA
 ;;9002226.02101,"873,T21.55XA ",.02)
 ;;T21.55XA
 ;;9002226.02101,"873,T21.55XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.56XA ",.01)
 ;;T21.56XA
 ;;9002226.02101,"873,T21.56XA ",.02)
 ;;T21.56XA
 ;;9002226.02101,"873,T21.56XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.57XA ",.01)
 ;;T21.57XA
 ;;9002226.02101,"873,T21.57XA ",.02)
 ;;T21.57XA
 ;;9002226.02101,"873,T21.57XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.59XA ",.01)
 ;;T21.59XA
 ;;9002226.02101,"873,T21.59XA ",.02)
 ;;T21.59XA
 ;;9002226.02101,"873,T21.59XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.60XA ",.01)
 ;;T21.60XA
 ;;9002226.02101,"873,T21.60XA ",.02)
 ;;T21.60XA
 ;;9002226.02101,"873,T21.60XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.61XA ",.01)
 ;;T21.61XA
 ;;9002226.02101,"873,T21.61XA ",.02)
 ;;T21.61XA
 ;;9002226.02101,"873,T21.61XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.62XA ",.01)
 ;;T21.62XA
 ;;9002226.02101,"873,T21.62XA ",.02)
 ;;T21.62XA
 ;;9002226.02101,"873,T21.62XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.63XA ",.01)
 ;;T21.63XA
 ;;9002226.02101,"873,T21.63XA ",.02)
 ;;T21.63XA
 ;;9002226.02101,"873,T21.63XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.64XA ",.01)
 ;;T21.64XA
 ;;9002226.02101,"873,T21.64XA ",.02)
 ;;T21.64XA
 ;;9002226.02101,"873,T21.64XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.65XA ",.01)
 ;;T21.65XA
 ;;9002226.02101,"873,T21.65XA ",.02)
 ;;T21.65XA
 ;;9002226.02101,"873,T21.65XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.66XA ",.01)
 ;;T21.66XA
 ;;9002226.02101,"873,T21.66XA ",.02)
 ;;T21.66XA
 ;;9002226.02101,"873,T21.66XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.67XA ",.01)
 ;;T21.67XA
 ;;9002226.02101,"873,T21.67XA ",.02)
 ;;T21.67XA
 ;;9002226.02101,"873,T21.67XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.69XA ",.01)
 ;;T21.69XA
 ;;9002226.02101,"873,T21.69XA ",.02)
 ;;T21.69XA
 ;;9002226.02101,"873,T21.69XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.70XA ",.01)
 ;;T21.70XA
 ;;9002226.02101,"873,T21.70XA ",.02)
 ;;T21.70XA
 ;;9002226.02101,"873,T21.70XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.71XA ",.01)
 ;;T21.71XA
 ;;9002226.02101,"873,T21.71XA ",.02)
 ;;T21.71XA
 ;;9002226.02101,"873,T21.71XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.72XA ",.01)
 ;;T21.72XA
 ;;9002226.02101,"873,T21.72XA ",.02)
 ;;T21.72XA
 ;;9002226.02101,"873,T21.72XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.73XA ",.01)
 ;;T21.73XA
 ;;9002226.02101,"873,T21.73XA ",.02)
 ;;T21.73XA
 ;;9002226.02101,"873,T21.73XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.74XA ",.01)
 ;;T21.74XA
 ;;9002226.02101,"873,T21.74XA ",.02)
 ;;T21.74XA
 ;;9002226.02101,"873,T21.74XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.75XA ",.01)
 ;;T21.75XA
 ;;9002226.02101,"873,T21.75XA ",.02)
 ;;T21.75XA
 ;;9002226.02101,"873,T21.75XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.76XA ",.01)
 ;;T21.76XA
 ;;9002226.02101,"873,T21.76XA ",.02)
 ;;T21.76XA
 ;;9002226.02101,"873,T21.76XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.77XA ",.01)
 ;;T21.77XA
 ;;9002226.02101,"873,T21.77XA ",.02)
 ;;T21.77XA
 ;;9002226.02101,"873,T21.77XA ",.03)
 ;;30
 ;;9002226.02101,"873,T21.79XA ",.01)
 ;;T21.79XA
 ;;9002226.02101,"873,T21.79XA ",.02)
 ;;T21.79XA
 ;;9002226.02101,"873,T21.79XA ",.03)
 ;;30
 ;;9002226.02101,"873,T22.00XA ",.01)
 ;;T22.00XA
 ;;9002226.02101,"873,T22.00XA ",.02)
 ;;T22.00XA
 ;;9002226.02101,"873,T22.00XA ",.03)
 ;;30
 ;;9002226.02101,"873,T22.011A ",.01)
 ;;T22.011A
 ;;9002226.02101,"873,T22.011A ",.02)
 ;;T22.011A
 ;;9002226.02101,"873,T22.011A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.012A ",.01)
 ;;T22.012A
 ;;9002226.02101,"873,T22.012A ",.02)
 ;;T22.012A
 ;;9002226.02101,"873,T22.012A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.019A ",.01)
 ;;T22.019A
 ;;9002226.02101,"873,T22.019A ",.02)
 ;;T22.019A
 ;;9002226.02101,"873,T22.019A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.021A ",.01)
 ;;T22.021A
 ;;9002226.02101,"873,T22.021A ",.02)
 ;;T22.021A
 ;;9002226.02101,"873,T22.021A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.022A ",.01)
 ;;T22.022A
 ;;9002226.02101,"873,T22.022A ",.02)
 ;;T22.022A
 ;;9002226.02101,"873,T22.022A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.029A ",.01)
 ;;T22.029A
 ;;9002226.02101,"873,T22.029A ",.02)
 ;;T22.029A
 ;;9002226.02101,"873,T22.029A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.031A ",.01)
 ;;T22.031A
 ;;9002226.02101,"873,T22.031A ",.02)
 ;;T22.031A
 ;;9002226.02101,"873,T22.031A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.032A ",.01)
 ;;T22.032A
 ;;9002226.02101,"873,T22.032A ",.02)
 ;;T22.032A