ATXF1A21 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUL 22, 2015;
 ;;5.1;TAXONOMY;**12**;FEB 04, 1997;Build 5
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1075,O36.5192 ",.01)
 ;;O36.5192 
 ;;9002226.02101,"1075,O36.5192 ",.02)
 ;;O36.5192 
 ;;9002226.02101,"1075,O36.5192 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5193 ",.01)
 ;;O36.5193 
 ;;9002226.02101,"1075,O36.5193 ",.02)
 ;;O36.5193 
 ;;9002226.02101,"1075,O36.5193 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5194 ",.01)
 ;;O36.5194 
 ;;9002226.02101,"1075,O36.5194 ",.02)
 ;;O36.5194 
 ;;9002226.02101,"1075,O36.5194 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5195 ",.01)
 ;;O36.5195 
 ;;9002226.02101,"1075,O36.5195 ",.02)
 ;;O36.5195 
 ;;9002226.02101,"1075,O36.5195 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5199 ",.01)
 ;;O36.5199 
 ;;9002226.02101,"1075,O36.5199 ",.02)
 ;;O36.5199 
 ;;9002226.02101,"1075,O36.5199 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5910 ",.01)
 ;;O36.5910 
 ;;9002226.02101,"1075,O36.5910 ",.02)
 ;;O36.5910 
 ;;9002226.02101,"1075,O36.5910 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5911 ",.01)
 ;;O36.5911 
 ;;9002226.02101,"1075,O36.5911 ",.02)
 ;;O36.5911 
 ;;9002226.02101,"1075,O36.5911 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5912 ",.01)
 ;;O36.5912 
 ;;9002226.02101,"1075,O36.5912 ",.02)
 ;;O36.5912 
 ;;9002226.02101,"1075,O36.5912 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5913 ",.01)
 ;;O36.5913 
 ;;9002226.02101,"1075,O36.5913 ",.02)
 ;;O36.5913 
 ;;9002226.02101,"1075,O36.5913 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5914 ",.01)
 ;;O36.5914 
 ;;9002226.02101,"1075,O36.5914 ",.02)
 ;;O36.5914 
 ;;9002226.02101,"1075,O36.5914 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5915 ",.01)
 ;;O36.5915 
 ;;9002226.02101,"1075,O36.5915 ",.02)
 ;;O36.5915 
 ;;9002226.02101,"1075,O36.5915 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5919 ",.01)
 ;;O36.5919 
 ;;9002226.02101,"1075,O36.5919 ",.02)
 ;;O36.5919 
 ;;9002226.02101,"1075,O36.5919 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5920 ",.01)
 ;;O36.5920 
 ;;9002226.02101,"1075,O36.5920 ",.02)
 ;;O36.5920 
 ;;9002226.02101,"1075,O36.5920 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5921 ",.01)
 ;;O36.5921 
 ;;9002226.02101,"1075,O36.5921 ",.02)
 ;;O36.5921 
 ;;9002226.02101,"1075,O36.5921 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5922 ",.01)
 ;;O36.5922 
 ;;9002226.02101,"1075,O36.5922 ",.02)
 ;;O36.5922 
 ;;9002226.02101,"1075,O36.5922 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5923 ",.01)
 ;;O36.5923 
 ;;9002226.02101,"1075,O36.5923 ",.02)
 ;;O36.5923 
 ;;9002226.02101,"1075,O36.5923 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5924 ",.01)
 ;;O36.5924 
 ;;9002226.02101,"1075,O36.5924 ",.02)
 ;;O36.5924 
 ;;9002226.02101,"1075,O36.5924 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5925 ",.01)
 ;;O36.5925 
 ;;9002226.02101,"1075,O36.5925 ",.02)
 ;;O36.5925 
 ;;9002226.02101,"1075,O36.5925 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5929 ",.01)
 ;;O36.5929 
 ;;9002226.02101,"1075,O36.5929 ",.02)
 ;;O36.5929 
 ;;9002226.02101,"1075,O36.5929 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5930 ",.01)
 ;;O36.5930 
 ;;9002226.02101,"1075,O36.5930 ",.02)
 ;;O36.5930 
 ;;9002226.02101,"1075,O36.5930 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5931 ",.01)
 ;;O36.5931 
 ;;9002226.02101,"1075,O36.5931 ",.02)
 ;;O36.5931 
 ;;9002226.02101,"1075,O36.5931 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5932 ",.01)
 ;;O36.5932 
 ;;9002226.02101,"1075,O36.5932 ",.02)
 ;;O36.5932 
 ;;9002226.02101,"1075,O36.5932 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5933 ",.01)
 ;;O36.5933 
 ;;9002226.02101,"1075,O36.5933 ",.02)
 ;;O36.5933 
 ;;9002226.02101,"1075,O36.5933 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5934 ",.01)
 ;;O36.5934 
 ;;9002226.02101,"1075,O36.5934 ",.02)
 ;;O36.5934 
 ;;9002226.02101,"1075,O36.5934 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5935 ",.01)
 ;;O36.5935 
 ;;9002226.02101,"1075,O36.5935 ",.02)
 ;;O36.5935 
 ;;9002226.02101,"1075,O36.5935 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5939 ",.01)
 ;;O36.5939 
 ;;9002226.02101,"1075,O36.5939 ",.02)
 ;;O36.5939 
 ;;9002226.02101,"1075,O36.5939 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5990 ",.01)
 ;;O36.5990 
 ;;9002226.02101,"1075,O36.5990 ",.02)
 ;;O36.5990 
 ;;9002226.02101,"1075,O36.5990 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5991 ",.01)
 ;;O36.5991 
 ;;9002226.02101,"1075,O36.5991 ",.02)
 ;;O36.5991 
 ;;9002226.02101,"1075,O36.5991 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5992 ",.01)
 ;;O36.5992 
 ;;9002226.02101,"1075,O36.5992 ",.02)
 ;;O36.5992 
 ;;9002226.02101,"1075,O36.5992 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5993 ",.01)
 ;;O36.5993 
 ;;9002226.02101,"1075,O36.5993 ",.02)
 ;;O36.5993 
 ;;9002226.02101,"1075,O36.5993 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5994 ",.01)
 ;;O36.5994 
 ;;9002226.02101,"1075,O36.5994 ",.02)
 ;;O36.5994 
 ;;9002226.02101,"1075,O36.5994 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5995 ",.01)
 ;;O36.5995 
 ;;9002226.02101,"1075,O36.5995 ",.02)
 ;;O36.5995 
 ;;9002226.02101,"1075,O36.5995 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.5999 ",.01)
 ;;O36.5999 
 ;;9002226.02101,"1075,O36.5999 ",.02)
 ;;O36.5999 
 ;;9002226.02101,"1075,O36.5999 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.60X0 ",.01)
 ;;O36.60X0 
 ;;9002226.02101,"1075,O36.60X0 ",.02)
 ;;O36.60X0 
 ;;9002226.02101,"1075,O36.60X0 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.60X1 ",.01)
 ;;O36.60X1 
 ;;9002226.02101,"1075,O36.60X1 ",.02)
 ;;O36.60X1 
 ;;9002226.02101,"1075,O36.60X1 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.60X2 ",.01)
 ;;O36.60X2 
 ;;9002226.02101,"1075,O36.60X2 ",.02)
 ;;O36.60X2 
 ;;9002226.02101,"1075,O36.60X2 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.60X3 ",.01)
 ;;O36.60X3 
 ;;9002226.02101,"1075,O36.60X3 ",.02)
 ;;O36.60X3 
 ;;9002226.02101,"1075,O36.60X3 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.60X4 ",.01)
 ;;O36.60X4 
 ;;9002226.02101,"1075,O36.60X4 ",.02)
 ;;O36.60X4 
 ;;9002226.02101,"1075,O36.60X4 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.60X5 ",.01)
 ;;O36.60X5 
 ;;9002226.02101,"1075,O36.60X5 ",.02)
 ;;O36.60X5 
 ;;9002226.02101,"1075,O36.60X5 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.60X9 ",.01)
 ;;O36.60X9 
 ;;9002226.02101,"1075,O36.60X9 ",.02)
 ;;O36.60X9 
 ;;9002226.02101,"1075,O36.60X9 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.61X0 ",.01)
 ;;O36.61X0 
 ;;9002226.02101,"1075,O36.61X0 ",.02)
 ;;O36.61X0 
 ;;9002226.02101,"1075,O36.61X0 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.61X1 ",.01)
 ;;O36.61X1 
 ;;9002226.02101,"1075,O36.61X1 ",.02)
 ;;O36.61X1 
 ;;9002226.02101,"1075,O36.61X1 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.61X2 ",.01)
 ;;O36.61X2 
 ;;9002226.02101,"1075,O36.61X2 ",.02)
 ;;O36.61X2 
 ;;9002226.02101,"1075,O36.61X2 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.61X3 ",.01)
 ;;O36.61X3 
 ;;9002226.02101,"1075,O36.61X3 ",.02)
 ;;O36.61X3 
 ;;9002226.02101,"1075,O36.61X3 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.61X4 ",.01)
 ;;O36.61X4 
 ;;9002226.02101,"1075,O36.61X4 ",.02)
 ;;O36.61X4 
 ;;9002226.02101,"1075,O36.61X4 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.61X5 ",.01)
 ;;O36.61X5 
 ;;9002226.02101,"1075,O36.61X5 ",.02)
 ;;O36.61X5 
 ;;9002226.02101,"1075,O36.61X5 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.61X9 ",.01)
 ;;O36.61X9 
 ;;9002226.02101,"1075,O36.61X9 ",.02)
 ;;O36.61X9 
 ;;9002226.02101,"1075,O36.61X9 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.62X0 ",.01)
 ;;O36.62X0 
 ;;9002226.02101,"1075,O36.62X0 ",.02)
 ;;O36.62X0 
 ;;9002226.02101,"1075,O36.62X0 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.62X1 ",.01)
 ;;O36.62X1 
 ;;9002226.02101,"1075,O36.62X1 ",.02)
 ;;O36.62X1 
 ;;9002226.02101,"1075,O36.62X1 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.62X2 ",.01)
 ;;O36.62X2 
 ;;9002226.02101,"1075,O36.62X2 ",.02)
 ;;O36.62X2 
 ;;9002226.02101,"1075,O36.62X2 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.62X3 ",.01)
 ;;O36.62X3 
 ;;9002226.02101,"1075,O36.62X3 ",.02)
 ;;O36.62X3 
 ;;9002226.02101,"1075,O36.62X3 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.62X4 ",.01)
 ;;O36.62X4 
 ;;9002226.02101,"1075,O36.62X4 ",.02)
 ;;O36.62X4 
 ;;9002226.02101,"1075,O36.62X4 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.62X5 ",.01)
 ;;O36.62X5 
 ;;9002226.02101,"1075,O36.62X5 ",.02)
 ;;O36.62X5 
 ;;9002226.02101,"1075,O36.62X5 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.62X9 ",.01)
 ;;O36.62X9 
 ;;9002226.02101,"1075,O36.62X9 ",.02)
 ;;O36.62X9 
 ;;9002226.02101,"1075,O36.62X9 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.63X0 ",.01)
 ;;O36.63X0 
 ;;9002226.02101,"1075,O36.63X0 ",.02)
 ;;O36.63X0 
 ;;9002226.02101,"1075,O36.63X0 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.63X1 ",.01)
 ;;O36.63X1 
 ;;9002226.02101,"1075,O36.63X1 ",.02)
 ;;O36.63X1 
 ;;9002226.02101,"1075,O36.63X1 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.63X2 ",.01)
 ;;O36.63X2 
 ;;9002226.02101,"1075,O36.63X2 ",.02)
 ;;O36.63X2 
 ;;9002226.02101,"1075,O36.63X2 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.63X3 ",.01)
 ;;O36.63X3 
 ;;9002226.02101,"1075,O36.63X3 ",.02)
 ;;O36.63X3 
 ;;9002226.02101,"1075,O36.63X3 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.63X4 ",.01)
 ;;O36.63X4 
 ;;9002226.02101,"1075,O36.63X4 ",.02)
 ;;O36.63X4 
 ;;9002226.02101,"1075,O36.63X4 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.63X5 ",.01)
 ;;O36.63X5 
 ;;9002226.02101,"1075,O36.63X5 ",.02)
 ;;O36.63X5 
 ;;9002226.02101,"1075,O36.63X5 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.63X9 ",.01)
 ;;O36.63X9 
 ;;9002226.02101,"1075,O36.63X9 ",.02)
 ;;O36.63X9 
 ;;9002226.02101,"1075,O36.63X9 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.70X0 ",.01)
 ;;O36.70X0 
 ;;9002226.02101,"1075,O36.70X0 ",.02)
 ;;O36.70X0 
 ;;9002226.02101,"1075,O36.70X0 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.70X1 ",.01)
 ;;O36.70X1 
 ;;9002226.02101,"1075,O36.70X1 ",.02)
 ;;O36.70X1 
 ;;9002226.02101,"1075,O36.70X1 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.70X2 ",.01)
 ;;O36.70X2 
 ;;9002226.02101,"1075,O36.70X2 ",.02)
 ;;O36.70X2 
 ;;9002226.02101,"1075,O36.70X2 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.70X3 ",.01)
 ;;O36.70X3 
 ;;9002226.02101,"1075,O36.70X3 ",.02)
 ;;O36.70X3 
 ;;9002226.02101,"1075,O36.70X3 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.70X4 ",.01)
 ;;O36.70X4 
 ;;9002226.02101,"1075,O36.70X4 ",.02)
 ;;O36.70X4 
 ;;9002226.02101,"1075,O36.70X4 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.70X5 ",.01)
 ;;O36.70X5 
 ;;9002226.02101,"1075,O36.70X5 ",.02)
 ;;O36.70X5 
 ;;9002226.02101,"1075,O36.70X5 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.70X9 ",.01)
 ;;O36.70X9 
 ;;9002226.02101,"1075,O36.70X9 ",.02)
 ;;O36.70X9 
 ;;9002226.02101,"1075,O36.70X9 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.71X0 ",.01)
 ;;O36.71X0 
 ;;9002226.02101,"1075,O36.71X0 ",.02)
 ;;O36.71X0 
 ;;9002226.02101,"1075,O36.71X0 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.71X1 ",.01)
 ;;O36.71X1 
 ;;9002226.02101,"1075,O36.71X1 ",.02)
 ;;O36.71X1 
 ;;9002226.02101,"1075,O36.71X1 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.71X2 ",.01)
 ;;O36.71X2 
 ;;9002226.02101,"1075,O36.71X2 ",.02)
 ;;O36.71X2 
 ;;9002226.02101,"1075,O36.71X2 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.71X3 ",.01)
 ;;O36.71X3 
 ;;9002226.02101,"1075,O36.71X3 ",.02)
 ;;O36.71X3 
 ;;9002226.02101,"1075,O36.71X3 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.71X4 ",.01)
 ;;O36.71X4 
 ;;9002226.02101,"1075,O36.71X4 ",.02)
 ;;O36.71X4 
 ;;9002226.02101,"1075,O36.71X4 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.71X5 ",.01)
 ;;O36.71X5 
 ;;9002226.02101,"1075,O36.71X5 ",.02)
 ;;O36.71X5 
 ;;9002226.02101,"1075,O36.71X5 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.71X9 ",.01)
 ;;O36.71X9 
 ;;9002226.02101,"1075,O36.71X9 ",.02)
 ;;O36.71X9 
 ;;9002226.02101,"1075,O36.71X9 ",.03)
 ;;30
 ;;9002226.02101,"1075,O36.72X0 ",.01)
 ;;O36.72X0 
 ;;9002226.02101,"1075,O36.72X0 ",.02)
 ;;O36.72X0 
 ;;9002226.02101,"1075,O36.72X0 ",.03)
 ;;30