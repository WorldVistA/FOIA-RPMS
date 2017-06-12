BGP47Y60 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,68115-0703-90 ",.01)
 ;;68115-0703-90
 ;;9002226.02101,"1729,68115-0703-90 ",.02)
 ;;68115-0703-90
 ;;9002226.02101,"1729,68115-0733-00 ",.01)
 ;;68115-0733-00
 ;;9002226.02101,"1729,68115-0733-00 ",.02)
 ;;68115-0733-00
 ;;9002226.02101,"1729,68115-0733-30 ",.01)
 ;;68115-0733-30
 ;;9002226.02101,"1729,68115-0733-30 ",.02)
 ;;68115-0733-30
 ;;9002226.02101,"1729,68115-0733-90 ",.01)
 ;;68115-0733-90
 ;;9002226.02101,"1729,68115-0733-90 ",.02)
 ;;68115-0733-90
 ;;9002226.02101,"1729,68115-0778-00 ",.01)
 ;;68115-0778-00
 ;;9002226.02101,"1729,68115-0778-00 ",.02)
 ;;68115-0778-00
 ;;9002226.02101,"1729,68115-0812-00 ",.01)
 ;;68115-0812-00
 ;;9002226.02101,"1729,68115-0812-00 ",.02)
 ;;68115-0812-00
 ;;9002226.02101,"1729,68115-0812-30 ",.01)
 ;;68115-0812-30
 ;;9002226.02101,"1729,68115-0812-30 ",.02)
 ;;68115-0812-30
 ;;9002226.02101,"1729,68115-0812-60 ",.01)
 ;;68115-0812-60
 ;;9002226.02101,"1729,68115-0812-60 ",.02)
 ;;68115-0812-60
 ;;9002226.02101,"1729,68115-0824-00 ",.01)
 ;;68115-0824-00
 ;;9002226.02101,"1729,68115-0824-00 ",.02)
 ;;68115-0824-00
 ;;9002226.02101,"1729,68115-0854-00 ",.01)
 ;;68115-0854-00
 ;;9002226.02101,"1729,68115-0854-00 ",.02)
 ;;68115-0854-00
 ;;9002226.02101,"1729,68115-0854-90 ",.01)
 ;;68115-0854-90
 ;;9002226.02101,"1729,68115-0854-90 ",.02)
 ;;68115-0854-90
 ;;9002226.02101,"1729,68115-0865-30 ",.01)
 ;;68115-0865-30
 ;;9002226.02101,"1729,68115-0865-30 ",.02)
 ;;68115-0865-30
 ;;9002226.02101,"1729,68115-0889-90 ",.01)
 ;;68115-0889-90
 ;;9002226.02101,"1729,68115-0889-90 ",.02)
 ;;68115-0889-90
 ;;9002226.02101,"1729,68180-0101-02 ",.01)
 ;;68180-0101-02
 ;;9002226.02101,"1729,68180-0101-02 ",.02)
 ;;68180-0101-02
 ;;9002226.02101,"1729,68180-0101-09 ",.01)
 ;;68180-0101-09
 ;;9002226.02101,"1729,68180-0101-09 ",.02)
 ;;68180-0101-09
 ;;9002226.02101,"1729,68180-0102-02 ",.01)
 ;;68180-0102-02
 ;;9002226.02101,"1729,68180-0102-02 ",.02)
 ;;68180-0102-02
 ;;9002226.02101,"1729,68180-0102-09 ",.01)
 ;;68180-0102-09
 ;;9002226.02101,"1729,68180-0102-09 ",.02)
 ;;68180-0102-09
 ;;9002226.02101,"1729,68180-0103-02 ",.01)
 ;;68180-0103-02
 ;;9002226.02101,"1729,68180-0103-02 ",.02)
 ;;68180-0103-02
 ;;9002226.02101,"1729,68180-0103-09 ",.01)
 ;;68180-0103-09
 ;;9002226.02101,"1729,68180-0103-09 ",.02)
 ;;68180-0103-09
 ;;9002226.02101,"1729,68180-0104-02 ",.01)
 ;;68180-0104-02
 ;;9002226.02101,"1729,68180-0104-02 ",.02)
 ;;68180-0104-02
 ;;9002226.02101,"1729,68180-0104-09 ",.01)
 ;;68180-0104-09
 ;;9002226.02101,"1729,68180-0104-09 ",.02)
 ;;68180-0104-09
 ;;9002226.02101,"1729,68180-0105-02 ",.01)
 ;;68180-0105-02
 ;;9002226.02101,"1729,68180-0105-02 ",.02)
 ;;68180-0105-02
 ;;9002226.02101,"1729,68180-0105-09 ",.01)
 ;;68180-0105-09
 ;;9002226.02101,"1729,68180-0105-09 ",.02)
 ;;68180-0105-09
 ;;9002226.02101,"1729,68180-0210-03 ",.01)
 ;;68180-0210-03
 ;;9002226.02101,"1729,68180-0210-03 ",.02)
 ;;68180-0210-03
 ;;9002226.02101,"1729,68180-0210-09 ",.01)
 ;;68180-0210-09
 ;;9002226.02101,"1729,68180-0210-09 ",.02)
 ;;68180-0210-09
 ;;9002226.02101,"1729,68180-0211-03 ",.01)
 ;;68180-0211-03
 ;;9002226.02101,"1729,68180-0211-03 ",.02)
 ;;68180-0211-03
 ;;9002226.02101,"1729,68180-0211-09 ",.01)
 ;;68180-0211-09
 ;;9002226.02101,"1729,68180-0211-09 ",.02)
 ;;68180-0211-09
 ;;9002226.02101,"1729,68180-0212-03 ",.01)
 ;;68180-0212-03
 ;;9002226.02101,"1729,68180-0212-03 ",.02)
 ;;68180-0212-03
 ;;9002226.02101,"1729,68180-0212-09 ",.01)
 ;;68180-0212-09
 ;;9002226.02101,"1729,68180-0212-09 ",.02)
 ;;68180-0212-09
 ;;9002226.02101,"1729,68180-0215-03 ",.01)
 ;;68180-0215-03
 ;;9002226.02101,"1729,68180-0215-03 ",.02)
 ;;68180-0215-03
 ;;9002226.02101,"1729,68180-0215-06 ",.01)
 ;;68180-0215-06
 ;;9002226.02101,"1729,68180-0215-06 ",.02)
 ;;68180-0215-06
 ;;9002226.02101,"1729,68180-0215-09 ",.01)
 ;;68180-0215-09
 ;;9002226.02101,"1729,68180-0215-09 ",.02)
 ;;68180-0215-09
 ;;9002226.02101,"1729,68180-0216-03 ",.01)
 ;;68180-0216-03
 ;;9002226.02101,"1729,68180-0216-03 ",.02)
 ;;68180-0216-03
 ;;9002226.02101,"1729,68180-0216-06 ",.01)
 ;;68180-0216-06
 ;;9002226.02101,"1729,68180-0216-06 ",.02)
 ;;68180-0216-06
 ;;9002226.02101,"1729,68180-0216-09 ",.01)
 ;;68180-0216-09
 ;;9002226.02101,"1729,68180-0216-09 ",.02)
 ;;68180-0216-09
 ;;9002226.02101,"1729,68180-0217-03 ",.01)
 ;;68180-0217-03
 ;;9002226.02101,"1729,68180-0217-03 ",.02)
 ;;68180-0217-03
 ;;9002226.02101,"1729,68180-0217-06 ",.01)
 ;;68180-0217-06
 ;;9002226.02101,"1729,68180-0217-06 ",.02)
 ;;68180-0217-06
 ;;9002226.02101,"1729,68180-0217-09 ",.01)
 ;;68180-0217-09
 ;;9002226.02101,"1729,68180-0217-09 ",.02)
 ;;68180-0217-09
 ;;9002226.02101,"1729,68180-0235-01 ",.01)
 ;;68180-0235-01
 ;;9002226.02101,"1729,68180-0235-01 ",.02)
 ;;68180-0235-01
 ;;9002226.02101,"1729,68180-0236-01 ",.01)
 ;;68180-0236-01
 ;;9002226.02101,"1729,68180-0236-01 ",.02)
 ;;68180-0236-01
 ;;9002226.02101,"1729,68180-0237-01 ",.01)
 ;;68180-0237-01
 ;;9002226.02101,"1729,68180-0237-01 ",.02)
 ;;68180-0237-01
 ;;9002226.02101,"1729,68180-0410-06 ",.01)
 ;;68180-0410-06
 ;;9002226.02101,"1729,68180-0410-06 ",.02)
 ;;68180-0410-06
 ;;9002226.02101,"1729,68180-0410-09 ",.01)
 ;;68180-0410-09
 ;;9002226.02101,"1729,68180-0410-09 ",.02)
 ;;68180-0410-09
 ;;9002226.02101,"1729,68180-0411-06 ",.01)
 ;;68180-0411-06
 ;;9002226.02101,"1729,68180-0411-06 ",.02)
 ;;68180-0411-06
 ;;9002226.02101,"1729,68180-0411-09 ",.01)
 ;;68180-0411-09
 ;;9002226.02101,"1729,68180-0411-09 ",.02)
 ;;68180-0411-09
 ;;9002226.02101,"1729,68180-0412-06 ",.01)
 ;;68180-0412-06
 ;;9002226.02101,"1729,68180-0412-06 ",.02)
 ;;68180-0412-06
 ;;9002226.02101,"1729,68180-0412-09 ",.01)
 ;;68180-0412-09
 ;;9002226.02101,"1729,68180-0412-09 ",.02)
 ;;68180-0412-09
 ;;9002226.02101,"1729,68180-0413-06 ",.01)
 ;;68180-0413-06
 ;;9002226.02101,"1729,68180-0413-06 ",.02)
 ;;68180-0413-06
 ;;9002226.02101,"1729,68180-0413-09 ",.01)
 ;;68180-0413-09
 ;;9002226.02101,"1729,68180-0413-09 ",.02)
 ;;68180-0413-09
 ;;9002226.02101,"1729,68180-0414-06 ",.01)
 ;;68180-0414-06
 ;;9002226.02101,"1729,68180-0414-06 ",.02)
 ;;68180-0414-06
 ;;9002226.02101,"1729,68180-0414-09 ",.01)
 ;;68180-0414-09
 ;;9002226.02101,"1729,68180-0414-09 ",.02)
 ;;68180-0414-09
 ;;9002226.02101,"1729,68180-0512-01 ",.01)
 ;;68180-0512-01
 ;;9002226.02101,"1729,68180-0512-01 ",.02)
 ;;68180-0512-01
 ;;9002226.02101,"1729,68180-0512-02 ",.01)
 ;;68180-0512-02
 ;;9002226.02101,"1729,68180-0512-02 ",.02)
 ;;68180-0512-02
 ;;9002226.02101,"1729,68180-0512-09 ",.01)
 ;;68180-0512-09
 ;;9002226.02101,"1729,68180-0512-09 ",.02)
 ;;68180-0512-09
 ;;9002226.02101,"1729,68180-0513-01 ",.01)
 ;;68180-0513-01
 ;;9002226.02101,"1729,68180-0513-01 ",.02)
 ;;68180-0513-01
 ;;9002226.02101,"1729,68180-0513-03 ",.01)
 ;;68180-0513-03
 ;;9002226.02101,"1729,68180-0513-03 ",.02)
 ;;68180-0513-03
 ;;9002226.02101,"1729,68180-0513-09 ",.01)
 ;;68180-0513-09
 ;;9002226.02101,"1729,68180-0513-09 ",.02)
 ;;68180-0513-09
 ;;9002226.02101,"1729,68180-0514-01 ",.01)
 ;;68180-0514-01
 ;;9002226.02101,"1729,68180-0514-01 ",.02)
 ;;68180-0514-01
 ;;9002226.02101,"1729,68180-0514-03 ",.01)
 ;;68180-0514-03
 ;;9002226.02101,"1729,68180-0514-03 ",.02)
 ;;68180-0514-03
 ;;9002226.02101,"1729,68180-0514-09 ",.01)
 ;;68180-0514-09
 ;;9002226.02101,"1729,68180-0514-09 ",.02)
 ;;68180-0514-09
 ;;9002226.02101,"1729,68180-0515-01 ",.01)
 ;;68180-0515-01
 ;;9002226.02101,"1729,68180-0515-01 ",.02)
 ;;68180-0515-01
 ;;9002226.02101,"1729,68180-0515-03 ",.01)
 ;;68180-0515-03
 ;;9002226.02101,"1729,68180-0515-03 ",.02)
 ;;68180-0515-03
 ;;9002226.02101,"1729,68180-0515-09 ",.01)
 ;;68180-0515-09
 ;;9002226.02101,"1729,68180-0515-09 ",.02)
 ;;68180-0515-09
 ;;9002226.02101,"1729,68180-0516-01 ",.01)
 ;;68180-0516-01
 ;;9002226.02101,"1729,68180-0516-01 ",.02)
 ;;68180-0516-01
 ;;9002226.02101,"1729,68180-0516-02 ",.01)
 ;;68180-0516-02
 ;;9002226.02101,"1729,68180-0516-02 ",.02)
 ;;68180-0516-02
 ;;9002226.02101,"1729,68180-0516-09 ",.01)
 ;;68180-0516-09
 ;;9002226.02101,"1729,68180-0516-09 ",.02)
 ;;68180-0516-09
 ;;9002226.02101,"1729,68180-0517-01 ",.01)
 ;;68180-0517-01
 ;;9002226.02101,"1729,68180-0517-01 ",.02)
 ;;68180-0517-01
 ;;9002226.02101,"1729,68180-0517-03 ",.01)
 ;;68180-0517-03
 ;;9002226.02101,"1729,68180-0517-03 ",.02)
 ;;68180-0517-03
 ;;9002226.02101,"1729,68180-0517-09 ",.01)
 ;;68180-0517-09
 ;;9002226.02101,"1729,68180-0517-09 ",.02)
 ;;68180-0517-09
 ;;9002226.02101,"1729,68180-0518-01 ",.01)
 ;;68180-0518-01
 ;;9002226.02101,"1729,68180-0518-01 ",.02)
 ;;68180-0518-01
 ;;9002226.02101,"1729,68180-0518-02 ",.01)
 ;;68180-0518-02
 ;;9002226.02101,"1729,68180-0518-02 ",.02)
 ;;68180-0518-02
 ;;9002226.02101,"1729,68180-0519-01 ",.01)
 ;;68180-0519-01
 ;;9002226.02101,"1729,68180-0519-01 ",.02)
 ;;68180-0519-01
 ;;9002226.02101,"1729,68180-0519-02 ",.01)
 ;;68180-0519-02
 ;;9002226.02101,"1729,68180-0519-02 ",.02)
 ;;68180-0519-02
 ;;9002226.02101,"1729,68180-0520-01 ",.01)
 ;;68180-0520-01
 ;;9002226.02101,"1729,68180-0520-01 ",.02)
 ;;68180-0520-01
 ;;9002226.02101,"1729,68180-0520-02 ",.01)
 ;;68180-0520-02
 ;;9002226.02101,"1729,68180-0520-02 ",.02)
 ;;68180-0520-02
 ;;9002226.02101,"1729,68180-0556-09 ",.01)
 ;;68180-0556-09
 ;;9002226.02101,"1729,68180-0556-09 ",.02)
 ;;68180-0556-09
 ;;9002226.02101,"1729,68180-0557-09 ",.01)
 ;;68180-0557-09
 ;;9002226.02101,"1729,68180-0557-09 ",.02)
 ;;68180-0557-09
 ;;9002226.02101,"1729,68180-0558-09 ",.01)
 ;;68180-0558-09
 ;;9002226.02101,"1729,68180-0558-09 ",.02)
 ;;68180-0558-09
 ;;9002226.02101,"1729,68180-0559-09 ",.01)
 ;;68180-0559-09
 ;;9002226.02101,"1729,68180-0559-09 ",.02)
 ;;68180-0559-09
 ;;9002226.02101,"1729,68180-0566-01 ",.01)
 ;;68180-0566-01
 ;;9002226.02101,"1729,68180-0566-01 ",.02)
 ;;68180-0566-01
 ;;9002226.02101,"1729,68180-0567-01 ",.01)
 ;;68180-0567-01
 ;;9002226.02101,"1729,68180-0567-01 ",.02)
 ;;68180-0567-01
 ;;9002226.02101,"1729,68180-0568-01 ",.01)
 ;;68180-0568-01
 ;;9002226.02101,"1729,68180-0568-01 ",.02)
 ;;68180-0568-01
 ;;9002226.02101,"1729,68180-0588-01 ",.01)
 ;;68180-0588-01
 ;;9002226.02101,"1729,68180-0588-01 ",.02)
 ;;68180-0588-01
 ;;9002226.02101,"1729,68180-0589-01 ",.01)
 ;;68180-0589-01
 ;;9002226.02101,"1729,68180-0589-01 ",.02)
 ;;68180-0589-01
 ;;9002226.02101,"1729,68180-0589-02 ",.01)
 ;;68180-0589-02
 ;;9002226.02101,"1729,68180-0589-02 ",.02)
 ;;68180-0589-02
 ;;9002226.02101,"1729,68180-0589-09 ",.01)
 ;;68180-0589-09
 ;;9002226.02101,"1729,68180-0589-09 ",.02)
 ;;68180-0589-09
 ;;9002226.02101,"1729,68180-0590-01 ",.01)
 ;;68180-0590-01
 ;;9002226.02101,"1729,68180-0590-01 ",.02)
 ;;68180-0590-01
 ;;9002226.02101,"1729,68180-0590-02 ",.01)
 ;;68180-0590-02
 ;;9002226.02101,"1729,68180-0590-02 ",.02)
 ;;68180-0590-02
 ;;9002226.02101,"1729,68180-0590-09 ",.01)
 ;;68180-0590-09
 ;;9002226.02101,"1729,68180-0590-09 ",.02)
 ;;68180-0590-09
 ;;9002226.02101,"1729,68180-0591-01 ",.01)
 ;;68180-0591-01
 ;;9002226.02101,"1729,68180-0591-01 ",.02)
 ;;68180-0591-01
 ;;9002226.02101,"1729,68180-0591-02 ",.01)
 ;;68180-0591-02
 ;;9002226.02101,"1729,68180-0591-02 ",.02)
 ;;68180-0591-02
 ;;9002226.02101,"1729,68180-0591-09 ",.01)
 ;;68180-0591-09
 ;;9002226.02101,"1729,68180-0591-09 ",.02)
 ;;68180-0591-09
 ;;9002226.02101,"1729,68180-0755-01 ",.01)
 ;;68180-0755-01
 ;;9002226.02101,"1729,68180-0755-01 ",.02)
 ;;68180-0755-01
 ;;9002226.02101,"1729,68180-0756-01 ",.01)
 ;;68180-0756-01
 ;;9002226.02101,"1729,68180-0756-01 ",.02)
 ;;68180-0756-01
 ;;9002226.02101,"1729,68180-0756-02 ",.01)
 ;;68180-0756-02
 ;;9002226.02101,"1729,68180-0756-02 ",.02)
 ;;68180-0756-02
 ;;9002226.02101,"1729,68180-0757-01 ",.01)
 ;;68180-0757-01
 ;;9002226.02101,"1729,68180-0757-01 ",.02)
 ;;68180-0757-01
 ;;9002226.02101,"1729,68180-0757-02 ",.01)
 ;;68180-0757-02
 ;;9002226.02101,"1729,68180-0757-02 ",.02)
 ;;68180-0757-02
 ;;9002226.02101,"1729,68180-0758-01 ",.01)
 ;;68180-0758-01
 ;;9002226.02101,"1729,68180-0758-01 ",.02)
 ;;68180-0758-01
 ;;9002226.02101,"1729,68180-0758-02 ",.01)
 ;;68180-0758-02
 ;;9002226.02101,"1729,68180-0758-02 ",.02)
 ;;68180-0758-02
 ;;9002226.02101,"1729,68180-0759-01 ",.01)
 ;;68180-0759-01
 ;;9002226.02101,"1729,68180-0759-01 ",.02)
 ;;68180-0759-01
 ;;9002226.02101,"1729,68180-0760-01 ",.01)
 ;;68180-0760-01
 ;;9002226.02101,"1729,68180-0760-01 ",.02)
 ;;68180-0760-01
 ;;9002226.02101,"1729,68258-1053-01 ",.01)
 ;;68258-1053-01
 ;;9002226.02101,"1729,68258-1053-01 ",.02)
 ;;68258-1053-01
 ;;9002226.02101,"1729,68258-1054-01 ",.01)
 ;;68258-1054-01
 ;;9002226.02101,"1729,68258-1054-01 ",.02)
 ;;68258-1054-01
 ;;9002226.02101,"1729,68258-1055-01 ",.01)
 ;;68258-1055-01
 ;;9002226.02101,"1729,68258-1055-01 ",.02)
 ;;68258-1055-01
 ;;9002226.02101,"1729,68258-1058-01 ",.01)
 ;;68258-1058-01
 ;;9002226.02101,"1729,68258-1058-01 ",.02)
 ;;68258-1058-01
 ;;9002226.02101,"1729,68258-1059-01 ",.01)
 ;;68258-1059-01
 ;;9002226.02101,"1729,68258-1059-01 ",.02)
 ;;68258-1059-01
 ;;9002226.02101,"1729,68258-1080-01 ",.01)
 ;;68258-1080-01
 ;;9002226.02101,"1729,68258-1080-01 ",.02)
 ;;68258-1080-01
 ;;9002226.02101,"1729,68258-4001-03 ",.01)
 ;;68258-4001-03
 ;;9002226.02101,"1729,68258-4001-03 ",.02)
 ;;68258-4001-03
 ;;9002226.02101,"1729,68258-6003-03 ",.01)
 ;;68258-6003-03
 ;;9002226.02101,"1729,68258-6003-03 ",.02)
 ;;68258-6003-03
 ;;9002226.02101,"1729,68258-6003-09 ",.01)
 ;;68258-6003-09