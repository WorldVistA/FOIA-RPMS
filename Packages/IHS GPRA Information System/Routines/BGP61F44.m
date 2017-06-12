BGP61F44 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1733,60429-0183-10 ",.02)
 ;;60429-0183-10
 ;;9002226.02101,"1733,60429-0183-30 ",.01)
 ;;60429-0183-30
 ;;9002226.02101,"1733,60429-0183-30 ",.02)
 ;;60429-0183-30
 ;;9002226.02101,"1733,60429-0183-90 ",.01)
 ;;60429-0183-90
 ;;9002226.02101,"1733,60429-0183-90 ",.02)
 ;;60429-0183-90
 ;;9002226.02101,"1733,60429-0184-10 ",.01)
 ;;60429-0184-10
 ;;9002226.02101,"1733,60429-0184-10 ",.02)
 ;;60429-0184-10
 ;;9002226.02101,"1733,60429-0184-30 ",.01)
 ;;60429-0184-30
 ;;9002226.02101,"1733,60429-0184-30 ",.02)
 ;;60429-0184-30
 ;;9002226.02101,"1733,60429-0184-90 ",.01)
 ;;60429-0184-90
 ;;9002226.02101,"1733,60429-0184-90 ",.02)
 ;;60429-0184-90
 ;;9002226.02101,"1733,60429-0185-10 ",.01)
 ;;60429-0185-10
 ;;9002226.02101,"1733,60429-0185-10 ",.02)
 ;;60429-0185-10
 ;;9002226.02101,"1733,60429-0185-30 ",.01)
 ;;60429-0185-30
 ;;9002226.02101,"1733,60429-0185-30 ",.02)
 ;;60429-0185-30
 ;;9002226.02101,"1733,60429-0185-90 ",.01)
 ;;60429-0185-90
 ;;9002226.02101,"1733,60429-0185-90 ",.02)
 ;;60429-0185-90
 ;;9002226.02101,"1733,60429-0186-10 ",.01)
 ;;60429-0186-10
 ;;9002226.02101,"1733,60429-0186-10 ",.02)
 ;;60429-0186-10
 ;;9002226.02101,"1733,60429-0186-30 ",.01)
 ;;60429-0186-30
 ;;9002226.02101,"1733,60429-0186-30 ",.02)
 ;;60429-0186-30
 ;;9002226.02101,"1733,60429-0186-90 ",.01)
 ;;60429-0186-90
 ;;9002226.02101,"1733,60429-0186-90 ",.02)
 ;;60429-0186-90
 ;;9002226.02101,"1733,60429-0201-10 ",.01)
 ;;60429-0201-10
 ;;9002226.02101,"1733,60429-0201-10 ",.02)
 ;;60429-0201-10
 ;;9002226.02101,"1733,60429-0201-90 ",.01)
 ;;60429-0201-90
 ;;9002226.02101,"1733,60429-0201-90 ",.02)
 ;;60429-0201-90
 ;;9002226.02101,"1733,60429-0202-10 ",.01)
 ;;60429-0202-10
 ;;9002226.02101,"1733,60429-0202-10 ",.02)
 ;;60429-0202-10
 ;;9002226.02101,"1733,60429-0202-90 ",.01)
 ;;60429-0202-90
 ;;9002226.02101,"1733,60429-0202-90 ",.02)
 ;;60429-0202-90
 ;;9002226.02101,"1733,60429-0203-10 ",.01)
 ;;60429-0203-10
 ;;9002226.02101,"1733,60429-0203-10 ",.02)
 ;;60429-0203-10
 ;;9002226.02101,"1733,60429-0203-90 ",.01)
 ;;60429-0203-90
 ;;9002226.02101,"1733,60429-0203-90 ",.02)
 ;;60429-0203-90
 ;;9002226.02101,"1733,60429-0206-01 ",.01)
 ;;60429-0206-01
 ;;9002226.02101,"1733,60429-0206-01 ",.02)
 ;;60429-0206-01
 ;;9002226.02101,"1733,60429-0206-05 ",.01)
 ;;60429-0206-05
 ;;9002226.02101,"1733,60429-0206-05 ",.02)
 ;;60429-0206-05
 ;;9002226.02101,"1733,60429-0207-01 ",.01)
 ;;60429-0207-01
 ;;9002226.02101,"1733,60429-0207-01 ",.02)
 ;;60429-0207-01
 ;;9002226.02101,"1733,60429-0207-10 ",.01)
 ;;60429-0207-10
 ;;9002226.02101,"1733,60429-0207-10 ",.02)
 ;;60429-0207-10
 ;;9002226.02101,"1733,60429-0207-30 ",.01)
 ;;60429-0207-30
 ;;9002226.02101,"1733,60429-0207-30 ",.02)
 ;;60429-0207-30
 ;;9002226.02101,"1733,60429-0207-45 ",.01)
 ;;60429-0207-45
 ;;9002226.02101,"1733,60429-0207-45 ",.02)
 ;;60429-0207-45
 ;;9002226.02101,"1733,60429-0207-90 ",.01)
 ;;60429-0207-90
 ;;9002226.02101,"1733,60429-0207-90 ",.02)
 ;;60429-0207-90
 ;;9002226.02101,"1733,60429-0208-01 ",.01)
 ;;60429-0208-01
 ;;9002226.02101,"1733,60429-0208-01 ",.02)
 ;;60429-0208-01
 ;;9002226.02101,"1733,60429-0208-10 ",.01)
 ;;60429-0208-10
 ;;9002226.02101,"1733,60429-0208-10 ",.02)
 ;;60429-0208-10
 ;;9002226.02101,"1733,60429-0208-30 ",.01)
 ;;60429-0208-30
 ;;9002226.02101,"1733,60429-0208-30 ",.02)
 ;;60429-0208-30
 ;;9002226.02101,"1733,60429-0208-45 ",.01)
 ;;60429-0208-45
 ;;9002226.02101,"1733,60429-0208-45 ",.02)
 ;;60429-0208-45
 ;;9002226.02101,"1733,60429-0208-50 ",.01)
 ;;60429-0208-50
 ;;9002226.02101,"1733,60429-0208-50 ",.02)
 ;;60429-0208-50
 ;;9002226.02101,"1733,60429-0208-90 ",.01)
 ;;60429-0208-90
 ;;9002226.02101,"1733,60429-0208-90 ",.02)
 ;;60429-0208-90
 ;;9002226.02101,"1733,60429-0209-01 ",.01)
 ;;60429-0209-01
 ;;9002226.02101,"1733,60429-0209-01 ",.02)
 ;;60429-0209-01
 ;;9002226.02101,"1733,60429-0209-10 ",.01)
 ;;60429-0209-10
 ;;9002226.02101,"1733,60429-0209-10 ",.02)
 ;;60429-0209-10
 ;;9002226.02101,"1733,60429-0209-15 ",.01)
 ;;60429-0209-15
 ;;9002226.02101,"1733,60429-0209-15 ",.02)
 ;;60429-0209-15
 ;;9002226.02101,"1733,60429-0209-18 ",.01)
 ;;60429-0209-18
 ;;9002226.02101,"1733,60429-0209-18 ",.02)
 ;;60429-0209-18
 ;;9002226.02101,"1733,60429-0209-30 ",.01)
 ;;60429-0209-30
 ;;9002226.02101,"1733,60429-0209-30 ",.02)
 ;;60429-0209-30
 ;;9002226.02101,"1733,60429-0209-45 ",.01)
 ;;60429-0209-45
 ;;9002226.02101,"1733,60429-0209-45 ",.02)
 ;;60429-0209-45
 ;;9002226.02101,"1733,60429-0209-50 ",.01)
 ;;60429-0209-50
 ;;9002226.02101,"1733,60429-0209-50 ",.02)
 ;;60429-0209-50
 ;;9002226.02101,"1733,60429-0209-90 ",.01)
 ;;60429-0209-90
 ;;9002226.02101,"1733,60429-0209-90 ",.02)
 ;;60429-0209-90
 ;;9002226.02101,"1733,60429-0211-01 ",.01)
 ;;60429-0211-01
 ;;9002226.02101,"1733,60429-0211-01 ",.02)
 ;;60429-0211-01
 ;;9002226.02101,"1733,60429-0211-05 ",.01)
 ;;60429-0211-05
 ;;9002226.02101,"1733,60429-0211-05 ",.02)
 ;;60429-0211-05
 ;;9002226.02101,"1733,60429-0212-01 ",.01)
 ;;60429-0212-01
 ;;9002226.02101,"1733,60429-0212-01 ",.02)
 ;;60429-0212-01
 ;;9002226.02101,"1733,60429-0212-10 ",.01)
 ;;60429-0212-10
 ;;9002226.02101,"1733,60429-0212-10 ",.02)
 ;;60429-0212-10
 ;;9002226.02101,"1733,60429-0212-18 ",.01)
 ;;60429-0212-18
 ;;9002226.02101,"1733,60429-0212-18 ",.02)
 ;;60429-0212-18
 ;;9002226.02101,"1733,60429-0212-30 ",.01)
 ;;60429-0212-30
 ;;9002226.02101,"1733,60429-0212-30 ",.02)
 ;;60429-0212-30
 ;;9002226.02101,"1733,60429-0212-45 ",.01)
 ;;60429-0212-45
 ;;9002226.02101,"1733,60429-0212-45 ",.02)
 ;;60429-0212-45
 ;;9002226.02101,"1733,60429-0212-60 ",.01)
 ;;60429-0212-60
 ;;9002226.02101,"1733,60429-0212-60 ",.02)
 ;;60429-0212-60
 ;;9002226.02101,"1733,60429-0212-90 ",.01)
 ;;60429-0212-90
 ;;9002226.02101,"1733,60429-0212-90 ",.02)
 ;;60429-0212-90
 ;;9002226.02101,"1733,60429-0234-10 ",.01)
 ;;60429-0234-10
 ;;9002226.02101,"1733,60429-0234-10 ",.02)
 ;;60429-0234-10
 ;;9002226.02101,"1733,60429-0234-45 ",.01)
 ;;60429-0234-45
 ;;9002226.02101,"1733,60429-0234-45 ",.02)
 ;;60429-0234-45
 ;;9002226.02101,"1733,60429-0234-90 ",.01)
 ;;60429-0234-90
 ;;9002226.02101,"1733,60429-0234-90 ",.02)
 ;;60429-0234-90
 ;;9002226.02101,"1733,60429-0235-10 ",.01)
 ;;60429-0235-10
 ;;9002226.02101,"1733,60429-0235-10 ",.02)
 ;;60429-0235-10
 ;;9002226.02101,"1733,60429-0235-18 ",.01)
 ;;60429-0235-18
 ;;9002226.02101,"1733,60429-0235-18 ",.02)
 ;;60429-0235-18
 ;;9002226.02101,"1733,60429-0235-45 ",.01)
 ;;60429-0235-45
 ;;9002226.02101,"1733,60429-0235-45 ",.02)
 ;;60429-0235-45
 ;;9002226.02101,"1733,60429-0235-90 ",.01)
 ;;60429-0235-90
 ;;9002226.02101,"1733,60429-0235-90 ",.02)
 ;;60429-0235-90
 ;;9002226.02101,"1733,60429-0236-10 ",.01)
 ;;60429-0236-10
 ;;9002226.02101,"1733,60429-0236-10 ",.02)
 ;;60429-0236-10
 ;;9002226.02101,"1733,60429-0236-18 ",.01)
 ;;60429-0236-18
 ;;9002226.02101,"1733,60429-0236-18 ",.02)
 ;;60429-0236-18
 ;;9002226.02101,"1733,60429-0236-45 ",.01)
 ;;60429-0236-45
 ;;9002226.02101,"1733,60429-0236-45 ",.02)
 ;;60429-0236-45
 ;;9002226.02101,"1733,60429-0236-90 ",.01)
 ;;60429-0236-90
 ;;9002226.02101,"1733,60429-0236-90 ",.02)
 ;;60429-0236-90
 ;;9002226.02101,"1733,60429-0257-01 ",.01)
 ;;60429-0257-01
 ;;9002226.02101,"1733,60429-0257-01 ",.02)
 ;;60429-0257-01
 ;;9002226.02101,"1733,60429-0316-10 ",.01)
 ;;60429-0316-10
 ;;9002226.02101,"1733,60429-0316-10 ",.02)
 ;;60429-0316-10
 ;;9002226.02101,"1733,60429-0316-30 ",.01)
 ;;60429-0316-30
 ;;9002226.02101,"1733,60429-0316-30 ",.02)
 ;;60429-0316-30
 ;;9002226.02101,"1733,60429-0316-90 ",.01)
 ;;60429-0316-90
 ;;9002226.02101,"1733,60429-0316-90 ",.02)
 ;;60429-0316-90
 ;;9002226.02101,"1733,60429-0317-10 ",.01)
 ;;60429-0317-10
 ;;9002226.02101,"1733,60429-0317-10 ",.02)
 ;;60429-0317-10
 ;;9002226.02101,"1733,60429-0317-30 ",.01)
 ;;60429-0317-30
 ;;9002226.02101,"1733,60429-0317-30 ",.02)
 ;;60429-0317-30
 ;;9002226.02101,"1733,60429-0317-90 ",.01)
 ;;60429-0317-90
 ;;9002226.02101,"1733,60429-0317-90 ",.02)
 ;;60429-0317-90
 ;;9002226.02101,"1733,60429-0318-10 ",.01)
 ;;60429-0318-10
 ;;9002226.02101,"1733,60429-0318-10 ",.02)
 ;;60429-0318-10
 ;;9002226.02101,"1733,60429-0318-30 ",.01)
 ;;60429-0318-30
 ;;9002226.02101,"1733,60429-0318-30 ",.02)
 ;;60429-0318-30
 ;;9002226.02101,"1733,60429-0318-90 ",.01)
 ;;60429-0318-90
 ;;9002226.02101,"1733,60429-0318-90 ",.02)
 ;;60429-0318-90
 ;;9002226.02101,"1733,60429-0728-01 ",.01)
 ;;60429-0728-01
 ;;9002226.02101,"1733,60429-0728-01 ",.02)
 ;;60429-0728-01
 ;;9002226.02101,"1733,60429-0728-10 ",.01)
 ;;60429-0728-10
 ;;9002226.02101,"1733,60429-0728-10 ",.02)
 ;;60429-0728-10
 ;;9002226.02101,"1733,60429-0728-30 ",.01)
 ;;60429-0728-30
 ;;9002226.02101,"1733,60429-0728-30 ",.02)
 ;;60429-0728-30
 ;;9002226.02101,"1733,60429-0728-90 ",.01)
 ;;60429-0728-90
 ;;9002226.02101,"1733,60429-0728-90 ",.02)
 ;;60429-0728-90
 ;;9002226.02101,"1733,60429-0729-01 ",.01)
 ;;60429-0729-01
 ;;9002226.02101,"1733,60429-0729-01 ",.02)
 ;;60429-0729-01
 ;;9002226.02101,"1733,60429-0729-10 ",.01)
 ;;60429-0729-10
 ;;9002226.02101,"1733,60429-0729-10 ",.02)
 ;;60429-0729-10
 ;;9002226.02101,"1733,60429-0729-30 ",.01)
 ;;60429-0729-30
 ;;9002226.02101,"1733,60429-0729-30 ",.02)
 ;;60429-0729-30
 ;;9002226.02101,"1733,60429-0729-45 ",.01)
 ;;60429-0729-45
 ;;9002226.02101,"1733,60429-0729-45 ",.02)
 ;;60429-0729-45
 ;;9002226.02101,"1733,60429-0729-90 ",.01)
 ;;60429-0729-90
 ;;9002226.02101,"1733,60429-0729-90 ",.02)
 ;;60429-0729-90
 ;;9002226.02101,"1733,60429-0730-01 ",.01)
 ;;60429-0730-01
 ;;9002226.02101,"1733,60429-0730-01 ",.02)
 ;;60429-0730-01
 ;;9002226.02101,"1733,60429-0730-10 ",.01)
 ;;60429-0730-10
 ;;9002226.02101,"1733,60429-0730-10 ",.02)
 ;;60429-0730-10
 ;;9002226.02101,"1733,60429-0730-30 ",.01)
 ;;60429-0730-30
 ;;9002226.02101,"1733,60429-0730-30 ",.02)
 ;;60429-0730-30
 ;;9002226.02101,"1733,60429-0730-45 ",.01)
 ;;60429-0730-45
 ;;9002226.02101,"1733,60429-0730-45 ",.02)
 ;;60429-0730-45
 ;;9002226.02101,"1733,60429-0730-90 ",.01)
 ;;60429-0730-90
 ;;9002226.02101,"1733,60429-0730-90 ",.02)
 ;;60429-0730-90
 ;;9002226.02101,"1733,60429-0731-01 ",.01)
 ;;60429-0731-01
 ;;9002226.02101,"1733,60429-0731-01 ",.02)
 ;;60429-0731-01
 ;;9002226.02101,"1733,60429-0731-10 ",.01)
 ;;60429-0731-10
 ;;9002226.02101,"1733,60429-0731-10 ",.02)
 ;;60429-0731-10
 ;;9002226.02101,"1733,60429-0731-30 ",.01)
 ;;60429-0731-30
 ;;9002226.02101,"1733,60429-0731-30 ",.02)
 ;;60429-0731-30
 ;;9002226.02101,"1733,60429-0731-45 ",.01)
 ;;60429-0731-45
 ;;9002226.02101,"1733,60429-0731-45 ",.02)
 ;;60429-0731-45
 ;;9002226.02101,"1733,60429-0731-90 ",.01)
 ;;60429-0731-90
 ;;9002226.02101,"1733,60429-0731-90 ",.02)
 ;;60429-0731-90
 ;;9002226.02101,"1733,60429-0732-10 ",.01)
 ;;60429-0732-10
 ;;9002226.02101,"1733,60429-0732-10 ",.02)
 ;;60429-0732-10
 ;;9002226.02101,"1733,60429-0732-30 ",.01)
 ;;60429-0732-30
 ;;9002226.02101,"1733,60429-0732-30 ",.02)
 ;;60429-0732-30
 ;;9002226.02101,"1733,60429-0732-90 ",.01)
 ;;60429-0732-90
 ;;9002226.02101,"1733,60429-0732-90 ",.02)
 ;;60429-0732-90
 ;;9002226.02101,"1733,60429-0733-01 ",.01)
 ;;60429-0733-01
 ;;9002226.02101,"1733,60429-0733-01 ",.02)
 ;;60429-0733-01
 ;;9002226.02101,"1733,60429-0733-10 ",.01)
 ;;60429-0733-10
 ;;9002226.02101,"1733,60429-0733-10 ",.02)
 ;;60429-0733-10
 ;;9002226.02101,"1733,60429-0733-30 ",.01)
 ;;60429-0733-30
 ;;9002226.02101,"1733,60429-0733-30 ",.02)
 ;;60429-0733-30
 ;;9002226.02101,"1733,60429-0733-45 ",.01)
 ;;60429-0733-45
 ;;9002226.02101,"1733,60429-0733-45 ",.02)
 ;;60429-0733-45
 ;;9002226.02101,"1733,60429-0733-90 ",.01)
 ;;60429-0733-90
 ;;9002226.02101,"1733,60429-0733-90 ",.02)
 ;;60429-0733-90
 ;;9002226.02101,"1733,60429-0755-10 ",.01)
 ;;60429-0755-10
 ;;9002226.02101,"1733,60429-0755-10 ",.02)
 ;;60429-0755-10
 ;;9002226.02101,"1733,60429-0755-45 ",.01)
 ;;60429-0755-45
 ;;9002226.02101,"1733,60429-0755-45 ",.02)
 ;;60429-0755-45
 ;;9002226.02101,"1733,60429-0755-90 ",.01)
 ;;60429-0755-90
 ;;9002226.02101,"1733,60429-0755-90 ",.02)
 ;;60429-0755-90
 ;;9002226.02101,"1733,60429-0756-10 ",.01)
 ;;60429-0756-10
 ;;9002226.02101,"1733,60429-0756-10 ",.02)
 ;;60429-0756-10
 ;;9002226.02101,"1733,60429-0756-18 ",.01)
 ;;60429-0756-18
 ;;9002226.02101,"1733,60429-0756-18 ",.02)
 ;;60429-0756-18
 ;;9002226.02101,"1733,60429-0756-45 ",.01)
 ;;60429-0756-45
 ;;9002226.02101,"1733,60429-0756-45 ",.02)
 ;;60429-0756-45
 ;;9002226.02101,"1733,60429-0756-90 ",.01)
 ;;60429-0756-90