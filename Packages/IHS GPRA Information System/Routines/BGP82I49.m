BGP82I49 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
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
 ;;9002226.02101,"1733,60429-0403-01 ",.01)
 ;;60429-0403-01
 ;;9002226.02101,"1733,60429-0403-01 ",.02)
 ;;60429-0403-01
 ;;9002226.02101,"1733,60429-0404-01 ",.01)
 ;;60429-0404-01
 ;;9002226.02101,"1733,60429-0404-01 ",.02)
 ;;60429-0404-01
 ;;9002226.02101,"1733,60429-0405-01 ",.01)
 ;;60429-0405-01
 ;;9002226.02101,"1733,60429-0405-01 ",.02)
 ;;60429-0405-01
 ;;9002226.02101,"1733,60429-0406-01 ",.01)
 ;;60429-0406-01
 ;;9002226.02101,"1733,60429-0406-01 ",.02)
 ;;60429-0406-01
 ;;9002226.02101,"1733,60429-0640-05 ",.01)
 ;;60429-0640-05
 ;;9002226.02101,"1733,60429-0640-05 ",.02)
 ;;60429-0640-05
 ;;9002226.02101,"1733,60429-0640-30 ",.01)
 ;;60429-0640-30
 ;;9002226.02101,"1733,60429-0640-30 ",.02)
 ;;60429-0640-30
 ;;9002226.02101,"1733,60429-0640-90 ",.01)
 ;;60429-0640-90
 ;;9002226.02101,"1733,60429-0640-90 ",.02)
 ;;60429-0640-90
 ;;9002226.02101,"1733,60429-0641-05 ",.01)
 ;;60429-0641-05
 ;;9002226.02101,"1733,60429-0641-05 ",.02)
 ;;60429-0641-05
 ;;9002226.02101,"1733,60429-0641-30 ",.01)
 ;;60429-0641-30
 ;;9002226.02101,"1733,60429-0641-30 ",.02)
 ;;60429-0641-30
 ;;9002226.02101,"1733,60429-0641-90 ",.01)
 ;;60429-0641-90
 ;;9002226.02101,"1733,60429-0641-90 ",.02)
 ;;60429-0641-90
 ;;9002226.02101,"1733,60429-0642-05 ",.01)
 ;;60429-0642-05
 ;;9002226.02101,"1733,60429-0642-05 ",.02)
 ;;60429-0642-05
 ;;9002226.02101,"1733,60429-0642-30 ",.01)
 ;;60429-0642-30
 ;;9002226.02101,"1733,60429-0642-30 ",.02)
 ;;60429-0642-30
 ;;9002226.02101,"1733,60429-0642-90 ",.01)
 ;;60429-0642-90
 ;;9002226.02101,"1733,60429-0642-90 ",.02)
 ;;60429-0642-90
 ;;9002226.02101,"1733,60505-0003-06 ",.01)
 ;;60505-0003-06
 ;;9002226.02101,"1733,60505-0003-06 ",.02)
 ;;60505-0003-06
 ;;9002226.02101,"1733,60505-0003-09 ",.01)
 ;;60505-0003-09
 ;;9002226.02101,"1733,60505-0003-09 ",.02)
 ;;60505-0003-09
 ;;9002226.02101,"1733,60505-0004-06 ",.01)
 ;;60505-0004-06
 ;;9002226.02101,"1733,60505-0004-06 ",.02)
 ;;60505-0004-06
 ;;9002226.02101,"1733,60505-0004-09 ",.01)
 ;;60505-0004-09
 ;;9002226.02101,"1733,60505-0004-09 ",.02)
 ;;60505-0004-09
 ;;9002226.02101,"1733,60505-0005-06 ",.01)
 ;;60505-0005-06
 ;;9002226.02101,"1733,60505-0005-06 ",.02)
 ;;60505-0005-06
 ;;9002226.02101,"1733,60505-0005-09 ",.01)
 ;;60505-0005-09
 ;;9002226.02101,"1733,60505-0005-09 ",.02)
 ;;60505-0005-09
 ;;9002226.02101,"1733,60505-0006-06 ",.01)
 ;;60505-0006-06
 ;;9002226.02101,"1733,60505-0006-06 ",.02)
 ;;60505-0006-06
 ;;9002226.02101,"1733,60505-0006-09 ",.01)
 ;;60505-0006-09
 ;;9002226.02101,"1733,60505-0006-09 ",.02)
 ;;60505-0006-09
 ;;9002226.02101,"1733,60505-0049-07 ",.01)
 ;;60505-0049-07
 ;;9002226.02101,"1733,60505-0049-07 ",.02)
 ;;60505-0049-07
 ;;9002226.02101,"1733,60505-0049-09 ",.01)
 ;;60505-0049-09
 ;;9002226.02101,"1733,60505-0049-09 ",.02)
 ;;60505-0049-09
 ;;9002226.02101,"1733,60505-0050-07 ",.01)
 ;;60505-0050-07
 ;;9002226.02101,"1733,60505-0050-07 ",.02)
 ;;60505-0050-07
 ;;9002226.02101,"1733,60505-0050-09 ",.01)
 ;;60505-0050-09
 ;;9002226.02101,"1733,60505-0050-09 ",.02)
 ;;60505-0050-09
 ;;9002226.02101,"1733,60505-0051-07 ",.01)
 ;;60505-0051-07
 ;;9002226.02101,"1733,60505-0051-07 ",.02)
 ;;60505-0051-07
 ;;9002226.02101,"1733,60505-0051-09 ",.01)
 ;;60505-0051-09
 ;;9002226.02101,"1733,60505-0051-09 ",.02)
 ;;60505-0051-09
 ;;9002226.02101,"1733,60505-0052-09 ",.01)
 ;;60505-0052-09
 ;;9002226.02101,"1733,60505-0052-09 ",.02)
 ;;60505-0052-09
 ;;9002226.02101,"1733,60505-0185-00 ",.01)
 ;;60505-0185-00
 ;;9002226.02101,"1733,60505-0185-00 ",.02)
 ;;60505-0185-00
 ;;9002226.02101,"1733,60505-0185-01 ",.01)
 ;;60505-0185-01
 ;;9002226.02101,"1733,60505-0185-01 ",.02)
 ;;60505-0185-01
 ;;9002226.02101,"1733,60505-0185-07 ",.01)
 ;;60505-0185-07
 ;;9002226.02101,"1733,60505-0185-07 ",.02)
 ;;60505-0185-07
 ;;9002226.02101,"1733,60505-0185-09 ",.01)
 ;;60505-0185-09
 ;;9002226.02101,"1733,60505-0185-09 ",.02)
 ;;60505-0185-09
 ;;9002226.02101,"1733,60505-0186-00 ",.01)
 ;;60505-0186-00
 ;;9002226.02101,"1733,60505-0186-00 ",.02)
 ;;60505-0186-00
 ;;9002226.02101,"1733,60505-0186-01 ",.01)
 ;;60505-0186-01
 ;;9002226.02101,"1733,60505-0186-01 ",.02)
 ;;60505-0186-01
 ;;9002226.02101,"1733,60505-0186-07 ",.01)
 ;;60505-0186-07
 ;;9002226.02101,"1733,60505-0186-07 ",.02)
 ;;60505-0186-07
 ;;9002226.02101,"1733,60505-0186-09 ",.01)
 ;;60505-0186-09
 ;;9002226.02101,"1733,60505-0186-09 ",.02)
 ;;60505-0186-09
 ;;9002226.02101,"1733,60505-0187-00 ",.01)
 ;;60505-0187-00
 ;;9002226.02101,"1733,60505-0187-00 ",.02)
 ;;60505-0187-00
 ;;9002226.02101,"1733,60505-0187-07 ",.01)
 ;;60505-0187-07
 ;;9002226.02101,"1733,60505-0187-07 ",.02)
 ;;60505-0187-07
 ;;9002226.02101,"1733,60505-0187-09 ",.01)
 ;;60505-0187-09
 ;;9002226.02101,"1733,60505-0187-09 ",.02)
 ;;60505-0187-09
 ;;9002226.02101,"1733,60505-0188-00 ",.01)
 ;;60505-0188-00
 ;;9002226.02101,"1733,60505-0188-00 ",.02)
 ;;60505-0188-00
 ;;9002226.02101,"1733,60505-0188-01 ",.01)
 ;;60505-0188-01
 ;;9002226.02101,"1733,60505-0188-01 ",.02)
 ;;60505-0188-01
 ;;9002226.02101,"1733,60505-0189-00 ",.01)
 ;;60505-0189-00
 ;;9002226.02101,"1733,60505-0189-00 ",.02)
 ;;60505-0189-00
 ;;9002226.02101,"1733,60505-0189-01 ",.01)
 ;;60505-0189-01
 ;;9002226.02101,"1733,60505-0189-01 ",.02)
 ;;60505-0189-01
 ;;9002226.02101,"1733,60505-0189-08 ",.01)
 ;;60505-0189-08
 ;;9002226.02101,"1733,60505-0189-08 ",.02)
 ;;60505-0189-08
 ;;9002226.02101,"1733,60505-0189-09 ",.01)
 ;;60505-0189-09
 ;;9002226.02101,"1733,60505-0189-09 ",.02)
 ;;60505-0189-09
 ;;9002226.02101,"1733,60505-0205-03 ",.01)
 ;;60505-0205-03
 ;;9002226.02101,"1733,60505-0205-03 ",.02)
 ;;60505-0205-03
 ;;9002226.02101,"1733,60505-0205-07 ",.01)
 ;;60505-0205-07
 ;;9002226.02101,"1733,60505-0205-07 ",.02)
 ;;60505-0205-07
 ;;9002226.02101,"1733,60505-0206-03 ",.01)
 ;;60505-0206-03
 ;;9002226.02101,"1733,60505-0206-03 ",.02)
 ;;60505-0206-03
 ;;9002226.02101,"1733,60505-0206-07 ",.01)
 ;;60505-0206-07
 ;;9002226.02101,"1733,60505-0206-07 ",.02)
 ;;60505-0206-07
 ;;9002226.02101,"1733,60505-0207-03 ",.01)
 ;;60505-0207-03
 ;;9002226.02101,"1733,60505-0207-03 ",.02)
 ;;60505-0207-03
 ;;9002226.02101,"1733,60505-0207-07 ",.01)
 ;;60505-0207-07
 ;;9002226.02101,"1733,60505-0207-07 ",.02)
 ;;60505-0207-07
 ;;9002226.02101,"1733,60505-0208-01 ",.01)
 ;;60505-0208-01
 ;;9002226.02101,"1733,60505-0208-01 ",.02)
 ;;60505-0208-01
 ;;9002226.02101,"1733,60505-0209-01 ",.01)
 ;;60505-0209-01
 ;;9002226.02101,"1733,60505-0209-01 ",.02)
 ;;60505-0209-01
 ;;9002226.02101,"1733,60505-0261-01 ",.01)
 ;;60505-0261-01
 ;;9002226.02101,"1733,60505-0261-01 ",.02)
 ;;60505-0261-01
 ;;9002226.02101,"1733,60505-0262-01 ",.01)
 ;;60505-0262-01
 ;;9002226.02101,"1733,60505-0262-01 ",.02)
 ;;60505-0262-01
 ;;9002226.02101,"1733,60505-0263-01 ",.01)
 ;;60505-0263-01
 ;;9002226.02101,"1733,60505-0263-01 ",.02)
 ;;60505-0263-01
 ;;9002226.02101,"1733,60505-0264-01 ",.01)
 ;;60505-0264-01
 ;;9002226.02101,"1733,60505-0264-01 ",.02)
 ;;60505-0264-01
 ;;9002226.02101,"1733,60505-0265-01 ",.01)
 ;;60505-0265-01
 ;;9002226.02101,"1733,60505-0265-01 ",.02)
 ;;60505-0265-01
 ;;9002226.02101,"1733,60505-0266-01 ",.01)
 ;;60505-0266-01
 ;;9002226.02101,"1733,60505-0266-01 ",.02)
 ;;60505-0266-01
 ;;9002226.02101,"1733,60505-0266-05 ",.01)
 ;;60505-0266-05
 ;;9002226.02101,"1733,60505-0266-05 ",.02)
 ;;60505-0266-05
 ;;9002226.02101,"1733,60505-0267-01 ",.01)
 ;;60505-0267-01
 ;;9002226.02101,"1733,60505-0267-01 ",.02)
 ;;60505-0267-01
 ;;9002226.02101,"1733,60505-0267-05 ",.01)
 ;;60505-0267-05
 ;;9002226.02101,"1733,60505-0267-05 ",.02)
 ;;60505-0267-05
 ;;9002226.02101,"1733,60505-0268-01 ",.01)
 ;;60505-0268-01
 ;;9002226.02101,"1733,60505-0268-01 ",.02)
 ;;60505-0268-01
 ;;9002226.02101,"1733,60505-0268-05 ",.01)
 ;;60505-0268-05
 ;;9002226.02101,"1733,60505-0268-05 ",.02)
 ;;60505-0268-05
 ;;9002226.02101,"1733,60505-0271-01 ",.01)
 ;;60505-0271-01
 ;;9002226.02101,"1733,60505-0271-01 ",.02)
 ;;60505-0271-01
 ;;9002226.02101,"1733,60505-0272-01 ",.01)
 ;;60505-0272-01
 ;;9002226.02101,"1733,60505-0272-01 ",.02)
 ;;60505-0272-01
 ;;9002226.02101,"1733,60505-2510-02 ",.01)
 ;;60505-2510-02
 ;;9002226.02101,"1733,60505-2510-02 ",.02)
 ;;60505-2510-02
 ;;9002226.02101,"1733,60505-2510-04 ",.01)
 ;;60505-2510-04
 ;;9002226.02101,"1733,60505-2510-04 ",.02)
 ;;60505-2510-04
 ;;9002226.02101,"1733,60505-2511-02 ",.01)
 ;;60505-2511-02
 ;;9002226.02101,"1733,60505-2511-02 ",.02)
 ;;60505-2511-02
 ;;9002226.02101,"1733,60505-2511-04 ",.01)
 ;;60505-2511-04
 ;;9002226.02101,"1733,60505-2511-04 ",.02)
 ;;60505-2511-04
 ;;9002226.02101,"1733,60505-2512-02 ",.01)
 ;;60505-2512-02