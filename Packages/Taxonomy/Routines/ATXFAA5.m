ATXFAA5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 01, 2017;
 ;;5.1;TAXONOMY;**24**;FEB 04, 1997;Build 40
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1785,C63.00 ",.02)
 ;;C63.02 
 ;;9002226.02101,"1785,C63.00 ",.03)
 ;;30
 ;;9002226.02101,"1785,C63.10 ",.01)
 ;;C63.10 
 ;;9002226.02101,"1785,C63.10 ",.02)
 ;;C63.2 
 ;;9002226.02101,"1785,C63.10 ",.03)
 ;;30
 ;;9002226.02101,"1785,C63.7 ",.01)
 ;;C63.7 
 ;;9002226.02101,"1785,C63.7 ",.02)
 ;;C63.9 
 ;;9002226.02101,"1785,C63.7 ",.03)
 ;;30
 ;;9002226.02101,"1785,C64.1 ",.01)
 ;;C64.1 
 ;;9002226.02101,"1785,C64.1 ",.02)
 ;;C64.9 
 ;;9002226.02101,"1785,C64.1 ",.03)
 ;;30
 ;;9002226.02101,"1785,C65.1 ",.01)
 ;;C65.1 
 ;;9002226.02101,"1785,C65.1 ",.02)
 ;;C65.9 
 ;;9002226.02101,"1785,C65.1 ",.03)
 ;;30
 ;;9002226.02101,"1785,C66.1 ",.01)
 ;;C66.1 
 ;;9002226.02101,"1785,C66.1 ",.02)
 ;;C66.9 
 ;;9002226.02101,"1785,C66.1 ",.03)
 ;;30
 ;;9002226.02101,"1785,C67.0 ",.01)
 ;;C67.0 
 ;;9002226.02101,"1785,C67.0 ",.02)
 ;;C67.9 
 ;;9002226.02101,"1785,C67.0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C68.0 ",.01)
 ;;C68.0 
 ;;9002226.02101,"1785,C68.0 ",.02)
 ;;C68.9 
 ;;9002226.02101,"1785,C68.0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C69.00 ",.01)
 ;;C69.00 
 ;;9002226.02101,"1785,C69.00 ",.02)
 ;;C69.02 
 ;;9002226.02101,"1785,C69.00 ",.03)
 ;;30
 ;;9002226.02101,"1785,C69.10 ",.01)
 ;;C69.10 
 ;;9002226.02101,"1785,C69.10 ",.02)
 ;;C69.12 
 ;;9002226.02101,"1785,C69.10 ",.03)
 ;;30
 ;;9002226.02101,"1785,C69.20 ",.01)
 ;;C69.20 
 ;;9002226.02101,"1785,C69.20 ",.02)
 ;;C69.22 
 ;;9002226.02101,"1785,C69.20 ",.03)
 ;;30
 ;;9002226.02101,"1785,C69.30 ",.01)
 ;;C69.30 
 ;;9002226.02101,"1785,C69.30 ",.02)
 ;;C69.32 
 ;;9002226.02101,"1785,C69.30 ",.03)
 ;;30
 ;;9002226.02101,"1785,C69.40 ",.01)
 ;;C69.40 
 ;;9002226.02101,"1785,C69.40 ",.02)
 ;;C69.42 
 ;;9002226.02101,"1785,C69.40 ",.03)
 ;;30
 ;;9002226.02101,"1785,C69.50 ",.01)
 ;;C69.50 
 ;;9002226.02101,"1785,C69.50 ",.02)
 ;;C69.52 
 ;;9002226.02101,"1785,C69.50 ",.03)
 ;;30
 ;;9002226.02101,"1785,C69.60 ",.01)
 ;;C69.60 
 ;;9002226.02101,"1785,C69.60 ",.02)
 ;;C69.62 
 ;;9002226.02101,"1785,C69.60 ",.03)
 ;;30
 ;;9002226.02101,"1785,C69.80 ",.01)
 ;;C69.80 
 ;;9002226.02101,"1785,C69.80 ",.02)
 ;;C69.82 
 ;;9002226.02101,"1785,C69.80 ",.03)
 ;;30
 ;;9002226.02101,"1785,C69.90 ",.01)
 ;;C69.90 
 ;;9002226.02101,"1785,C69.90 ",.02)
 ;;C69.92 
 ;;9002226.02101,"1785,C69.90 ",.03)
 ;;30
 ;;9002226.02101,"1785,C70.0 ",.01)
 ;;C70.0 
 ;;9002226.02101,"1785,C70.0 ",.02)
 ;;C70.9 
 ;;9002226.02101,"1785,C70.0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C71.0 ",.01)
 ;;C71.0 
 ;;9002226.02101,"1785,C71.0 ",.02)
 ;;C71.9 
 ;;9002226.02101,"1785,C71.0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C72.0 ",.01)
 ;;C72.0 
 ;;9002226.02101,"1785,C72.0 ",.02)
 ;;C72.1 
 ;;9002226.02101,"1785,C72.0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C72.20 ",.01)
 ;;C72.20 
 ;;9002226.02101,"1785,C72.20 ",.02)
 ;;C72.22 
 ;;9002226.02101,"1785,C72.20 ",.03)
 ;;30
 ;;9002226.02101,"1785,C72.30 ",.01)
 ;;C72.30 
 ;;9002226.02101,"1785,C72.30 ",.02)
 ;;C72.32 
 ;;9002226.02101,"1785,C72.30 ",.03)
 ;;30
 ;;9002226.02101,"1785,C72.40 ",.01)
 ;;C72.40 
 ;;9002226.02101,"1785,C72.40 ",.02)
 ;;C72.42 
 ;;9002226.02101,"1785,C72.40 ",.03)
 ;;30
 ;;9002226.02101,"1785,C72.50 ",.01)
 ;;C72.50 
 ;;9002226.02101,"1785,C72.50 ",.02)
 ;;C72.59 
 ;;9002226.02101,"1785,C72.50 ",.03)
 ;;30
 ;;9002226.02101,"1785,C72.9 ",.01)
 ;;C72.9 
 ;;9002226.02101,"1785,C72.9 ",.02)
 ;;C72.9 
 ;;9002226.02101,"1785,C72.9 ",.03)
 ;;30
 ;;9002226.02101,"1785,C73. ",.01)
 ;;C73. 
 ;;9002226.02101,"1785,C73. ",.02)
 ;;C73. 
 ;;9002226.02101,"1785,C73. ",.03)
 ;;30
 ;;9002226.02101,"1785,C74.0 ",.01)
 ;;C74.0 
 ;;9002226.02101,"1785,C74.0 ",.02)
 ;;C74.02 
 ;;9002226.02101,"1785,C74.10 ",.01)
 ;;C74.10 
 ;;9002226.02101,"1785,C74.10 ",.02)
 ;;C74.12 
 ;;9002226.02101,"1785,C74.10 ",.03)
 ;;30
 ;;9002226.02101,"1785,C74.90 ",.01)
 ;;C74.90 
 ;;9002226.02101,"1785,C74.90 ",.02)
 ;;C74.92 
 ;;9002226.02101,"1785,C74.90 ",.03)
 ;;30
 ;;9002226.02101,"1785,C75.0 ",.01)
 ;;C75.0 
 ;;9002226.02101,"1785,C75.0 ",.02)
 ;;C75.9 
 ;;9002226.02101,"1785,C75.0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C76.0 ",.01)
 ;;C76.0 
 ;;9002226.02101,"1785,C76.0 ",.02)
 ;;C76.3 
 ;;9002226.02101,"1785,C76.0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C76.40 ",.01)
 ;;C76.40 
 ;;9002226.02101,"1785,C76.40 ",.02)
 ;;C76.42 
 ;;9002226.02101,"1785,C76.40 ",.03)
 ;;30
 ;;9002226.02101,"1785,C76.50 ",.01)
 ;;C76.50 
 ;;9002226.02101,"1785,C76.50 ",.02)
 ;;C76.8 
 ;;9002226.02101,"1785,C76.50 ",.03)
 ;;30
 ;;9002226.02101,"1785,C77.0 ",.01)
 ;;C77.0 
 ;;9002226.02101,"1785,C77.0 ",.02)
 ;;C77.9 
 ;;9002226.02101,"1785,C77.0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C78.00 ",.01)
 ;;C78.00 
 ;;9002226.02101,"1785,C78.00 ",.02)
 ;;C78.9 
 ;;9002226.02101,"1785,C78.00 ",.03)
 ;;30
 ;;9002226.02101,"1785,C79.00 ",.01)
 ;;C79.00 
 ;;9002226.02101,"1785,C79.00 ",.02)
 ;;C79.9 
 ;;9002226.02101,"1785,C79.00 ",.03)
 ;;30
 ;;9002226.02101,"1785,C7A.00 ",.01)
 ;;C7A.00 
 ;;9002226.02101,"1785,C7A.00 ",.02)
 ;;C7A.00 
 ;;9002226.02101,"1785,C7A.00 ",.03)
 ;;30
 ;;9002226.02101,"1785,C7A.010 ",.01)
 ;;C7A.010 
 ;;9002226.02101,"1785,C7A.010 ",.02)
 ;;C7A.019 
 ;;9002226.02101,"1785,C7A.010 ",.03)
 ;;30
 ;;9002226.02101,"1785,C7A.020 ",.01)
 ;;C7A.020 
 ;;9002226.02101,"1785,C7A.020 ",.02)
 ;;C7A.029 
 ;;9002226.02101,"1785,C7A.020 ",.03)
 ;;30
 ;;9002226.02101,"1785,C7A.090 ",.01)
 ;;C7A.090 
 ;;9002226.02101,"1785,C7A.090 ",.02)
 ;;C7A.098 
 ;;9002226.02101,"1785,C7A.090 ",.03)
 ;;30
 ;;9002226.02101,"1785,C7A.1 ",.01)
 ;;C7A.1 
 ;;9002226.02101,"1785,C7A.1 ",.02)
 ;;C7A.8 
 ;;9002226.02101,"1785,C7A.1 ",.03)
 ;;30
 ;;9002226.02101,"1785,C7B.00 ",.01)
 ;;C7B.00 
 ;;9002226.02101,"1785,C7B.00 ",.02)
 ;;C7B.8 
 ;;9002226.02101,"1785,C7B.00 ",.03)
 ;;30
 ;;9002226.02101,"1785,C80.0 ",.01)
 ;;C80.0 
 ;;9002226.02101,"1785,C80.0 ",.02)
 ;;C80.2 
 ;;9002226.02101,"1785,C80.0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C81.0 ",.01)
 ;;C81.0 
 ;;9002226.02101,"1785,C81.0 ",.02)
 ;;C81.99 
 ;;9002226.02101,"1785,C82.0 ",.01)
 ;;C82.0 
 ;;9002226.02101,"1785,C82.0 ",.02)
 ;;C82.99 
 ;;9002226.02101,"1785,C83.0 ",.01)
 ;;C83.0 
 ;;9002226.02101,"1785,C83.0 ",.02)
 ;;C83.99 
 ;;9002226.02101,"1785,C84.0 ",.01)
 ;;C84.0 
 ;;9002226.02101,"1785,C84.0 ",.02)
 ;;C84.99 
 ;;9002226.02101,"1785,C85.10 ",.01)
 ;;C85.10 
 ;;9002226.02101,"1785,C85.10 ",.02)
 ;;C85.99 
 ;;9002226.02101,"1785,C85.10 ",.03)
 ;;30
 ;;9002226.02101,"1785,C86.0 ",.01)
 ;;C86.0 
 ;;9002226.02101,"1785,C86.0 ",.02)
 ;;C86.6 
 ;;9002226.02101,"1785,C86.0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C88.0 ",.01)
 ;;C88.0 
 ;;9002226.02101,"1785,C88.0 ",.02)
 ;;C88.9 
 ;;9002226.02101,"1785,C88.0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C90.00 ",.01)
 ;;C90.00 
 ;;9002226.02101,"1785,C90.00 ",.02)
 ;;C90.02 
 ;;9002226.02101,"1785,C90.00 ",.03)
 ;;30
 ;;9002226.02101,"1785,C90.10 ",.01)
 ;;C90.10 
 ;;9002226.02101,"1785,C90.10 ",.02)
 ;;C90.12 
 ;;9002226.02101,"1785,C90.10 ",.03)
 ;;30
 ;;9002226.02101,"1785,C90.20 ",.01)
 ;;C90.20 
 ;;9002226.02101,"1785,C90.20 ",.02)
 ;;C90.22 
 ;;9002226.02101,"1785,C90.20 ",.03)
 ;;30
 ;;9002226.02101,"1785,C90.30 ",.01)
 ;;C90.30 
 ;;9002226.02101,"1785,C90.30 ",.02)
 ;;C90.32 
 ;;9002226.02101,"1785,C90.30 ",.03)
 ;;30
 ;;9002226.02101,"1785,C91.00 ",.01)
 ;;C91.00 
 ;;9002226.02101,"1785,C91.00 ",.02)
 ;;C91.02 
 ;;9002226.02101,"1785,C91.00 ",.03)
 ;;30
 ;;9002226.02101,"1785,C91.10 ",.01)
 ;;C91.10 
 ;;9002226.02101,"1785,C91.10 ",.02)
 ;;C91.12 
 ;;9002226.02101,"1785,C91.10 ",.03)
 ;;30
 ;;9002226.02101,"1785,C91.30 ",.01)
 ;;C91.30 
 ;;9002226.02101,"1785,C91.30 ",.02)
 ;;C91.32 
 ;;9002226.02101,"1785,C91.30 ",.03)
 ;;30
 ;;9002226.02101,"1785,C91.40 ",.01)
 ;;C91.40 
 ;;9002226.02101,"1785,C91.40 ",.02)
 ;;C91.42 
 ;;9002226.02101,"1785,C91.40 ",.03)
 ;;30
 ;;9002226.02101,"1785,C91.50 ",.01)
 ;;C91.50 
 ;;9002226.02101,"1785,C91.50 ",.02)
 ;;C91.52 
 ;;9002226.02101,"1785,C91.50 ",.03)
 ;;30
 ;;9002226.02101,"1785,C91.60 ",.01)
 ;;C91.60 
 ;;9002226.02101,"1785,C91.60 ",.02)
 ;;C91.62 
 ;;9002226.02101,"1785,C91.60 ",.03)
 ;;30
 ;;9002226.02101,"1785,C91.90 ",.01)
 ;;C91.90 
 ;;9002226.02101,"1785,C91.90 ",.02)
 ;;C91.92 
 ;;9002226.02101,"1785,C91.90 ",.03)
 ;;30
 ;;9002226.02101,"1785,C91.A0 ",.01)
 ;;C91.A0 
 ;;9002226.02101,"1785,C91.A0 ",.02)
 ;;C91.A2 
 ;;9002226.02101,"1785,C91.A0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C91.Z0 ",.01)
 ;;C91.Z0 
 ;;9002226.02101,"1785,C91.Z0 ",.02)
 ;;C91.Z2 
 ;;9002226.02101,"1785,C91.Z0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C92.00 ",.01)
 ;;C92.00 
 ;;9002226.02101,"1785,C92.00 ",.02)
 ;;C92.02 
 ;;9002226.02101,"1785,C92.00 ",.03)
 ;;30
 ;;9002226.02101,"1785,C92.10 ",.01)
 ;;C92.10 
 ;;9002226.02101,"1785,C92.10 ",.02)
 ;;C92.12 
 ;;9002226.02101,"1785,C92.10 ",.03)
 ;;30
 ;;9002226.02101,"1785,C92.20 ",.01)
 ;;C92.20 
 ;;9002226.02101,"1785,C92.20 ",.02)
 ;;C92.22 
 ;;9002226.02101,"1785,C92.20 ",.03)
 ;;30
 ;;9002226.02101,"1785,C92.30 ",.01)
 ;;C92.30 
 ;;9002226.02101,"1785,C92.30 ",.02)
 ;;C92.32 
 ;;9002226.02101,"1785,C92.30 ",.03)
 ;;30
 ;;9002226.02101,"1785,C92.40 ",.01)
 ;;C92.40 
 ;;9002226.02101,"1785,C92.40 ",.02)
 ;;C92.42 
 ;;9002226.02101,"1785,C92.40 ",.03)
 ;;30
 ;;9002226.02101,"1785,C92.50 ",.01)
 ;;C92.50 
 ;;9002226.02101,"1785,C92.50 ",.02)
 ;;C92.52 
 ;;9002226.02101,"1785,C92.50 ",.03)
 ;;30
 ;;9002226.02101,"1785,C92.60 ",.01)
 ;;C92.60 
 ;;9002226.02101,"1785,C92.60 ",.02)
 ;;C92.62 
 ;;9002226.02101,"1785,C92.60 ",.03)
 ;;30
 ;;9002226.02101,"1785,C92.90 ",.01)
 ;;C92.90 
 ;;9002226.02101,"1785,C92.90 ",.02)
 ;;C92.92 
 ;;9002226.02101,"1785,C92.90 ",.03)
 ;;30
 ;;9002226.02101,"1785,C92.A0 ",.01)
 ;;C92.A0 
 ;;9002226.02101,"1785,C92.A0 ",.02)
 ;;C92.A2 
 ;;9002226.02101,"1785,C92.A0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C92.Z0 ",.01)
 ;;C92.Z0 
 ;;9002226.02101,"1785,C92.Z0 ",.02)
 ;;C92.Z2 
 ;;9002226.02101,"1785,C92.Z0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C93.00 ",.01)
 ;;C93.00 
 ;;9002226.02101,"1785,C93.00 ",.02)
 ;;C93.02 
 ;;9002226.02101,"1785,C93.00 ",.03)
 ;;30
 ;;9002226.02101,"1785,C93.10 ",.01)
 ;;C93.10 
 ;;9002226.02101,"1785,C93.10 ",.02)
 ;;C93.12 
 ;;9002226.02101,"1785,C93.10 ",.03)
 ;;30
 ;;9002226.02101,"1785,C93.30 ",.01)
 ;;C93.30 
 ;;9002226.02101,"1785,C93.30 ",.02)
 ;;C93.32 
 ;;9002226.02101,"1785,C93.30 ",.03)
 ;;30
 ;;9002226.02101,"1785,C93.90 ",.01)
 ;;C93.90 
 ;;9002226.02101,"1785,C93.90 ",.02)
 ;;C93.92 
 ;;9002226.02101,"1785,C93.90 ",.03)
 ;;30
 ;;9002226.02101,"1785,C93.Z0 ",.01)
 ;;C93.Z0 
 ;;9002226.02101,"1785,C93.Z0 ",.02)
 ;;C93.Z1 
 ;;9002226.02101,"1785,C93.Z0 ",.03)
 ;;30
 ;;9002226.02101,"1785,C94.00 ",.01)
 ;;C94.00 
 ;;9002226.02101,"1785,C94.00 ",.02)
 ;;C94.02 
 ;;9002226.02101,"1785,C94.00 ",.03)
 ;;30
 ;;9002226.02101,"1785,C94.20 ",.01)
 ;;C94.20 
 ;;9002226.02101,"1785,C94.20 ",.02)
 ;;C94.22 
 ;;9002226.02101,"1785,C94.20 ",.03)
 ;;30
 ;;9002226.02101,"1785,C94.30 ",.01)
 ;;C94.30 
 ;;9002226.02101,"1785,C94.30 ",.02)
 ;;C94.32 
 ;;9002226.02101,"1785,C94.30 ",.03)
 ;;30
 ;;9002226.02101,"1785,C94.40 ",.01)
 ;;C94.40 
 ;;9002226.02101,"1785,C94.40 ",.02)
 ;;C94.6 
 ;;9002226.02101,"1785,C94.40 ",.03)
 ;;30
 ;;9002226.02101,"1785,C94.80 ",.01)
 ;;C94.80 
 ;;9002226.02101,"1785,C94.80 ",.02)
 ;;C94.82 
 ;;9002226.02101,"1785,C94.80 ",.03)
 ;;30
 ;;9002226.02101,"1785,C95.00 ",.01)
 ;;C95.00 