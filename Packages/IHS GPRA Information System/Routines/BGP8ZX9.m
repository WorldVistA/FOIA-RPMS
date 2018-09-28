BGP8ZX9 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"872,00071-0535-23 ",.02)
 ;;00071-0535-23
 ;;9002226.02101,"872,00074-2278-11 ",.01)
 ;;00074-2278-11
 ;;9002226.02101,"872,00074-2278-11 ",.02)
 ;;00074-2278-11
 ;;9002226.02101,"872,00074-2278-13 ",.01)
 ;;00074-2278-13
 ;;9002226.02101,"872,00074-2278-13 ",.02)
 ;;00074-2278-13
 ;;9002226.02101,"872,00074-2279-11 ",.01)
 ;;00074-2279-11
 ;;9002226.02101,"872,00074-2279-11 ",.02)
 ;;00074-2279-11
 ;;9002226.02101,"872,00074-2279-13 ",.01)
 ;;00074-2279-13
 ;;9002226.02101,"872,00074-2279-13 ",.02)
 ;;00074-2279-13
 ;;9002226.02101,"872,00074-2280-11 ",.01)
 ;;00074-2280-11
 ;;9002226.02101,"872,00074-2280-11 ",.02)
 ;;00074-2280-11
 ;;9002226.02101,"872,00074-2280-13 ",.01)
 ;;00074-2280-13
 ;;9002226.02101,"872,00074-2280-13 ",.02)
 ;;00074-2280-13
 ;;9002226.02101,"872,00074-3287-13 ",.01)
 ;;00074-3287-13
 ;;9002226.02101,"872,00074-3287-13 ",.02)
 ;;00074-3287-13
 ;;9002226.02101,"872,00074-3288-13 ",.01)
 ;;00074-3288-13
 ;;9002226.02101,"872,00074-3288-13 ",.02)
 ;;00074-3288-13
 ;;9002226.02101,"872,00074-3289-13 ",.01)
 ;;00074-3289-13
 ;;9002226.02101,"872,00074-3289-13 ",.02)
 ;;00074-3289-13
 ;;9002226.02101,"872,00074-3290-13 ",.01)
 ;;00074-3290-13
 ;;9002226.02101,"872,00074-3290-13 ",.02)
 ;;00074-3290-13
 ;;9002226.02101,"872,00078-0364-05 ",.01)
 ;;00078-0364-05
 ;;9002226.02101,"872,00078-0364-05 ",.02)
 ;;00078-0364-05
 ;;9002226.02101,"872,00078-0379-05 ",.01)
 ;;00078-0379-05
 ;;9002226.02101,"872,00078-0379-05 ",.02)
 ;;00078-0379-05
 ;;9002226.02101,"872,00078-0384-05 ",.01)
 ;;00078-0384-05
 ;;9002226.02101,"872,00078-0384-05 ",.02)
 ;;00078-0384-05
 ;;9002226.02101,"872,00078-0404-05 ",.01)
 ;;00078-0404-05
 ;;9002226.02101,"872,00078-0404-05 ",.02)
 ;;00078-0404-05
 ;;9002226.02101,"872,00078-0405-05 ",.01)
 ;;00078-0405-05
 ;;9002226.02101,"872,00078-0405-05 ",.02)
 ;;00078-0405-05
 ;;9002226.02101,"872,00078-0406-05 ",.01)
 ;;00078-0406-05
 ;;9002226.02101,"872,00078-0406-05 ",.02)
 ;;00078-0406-05
 ;;9002226.02101,"872,00078-0449-05 ",.01)
 ;;00078-0449-05
 ;;9002226.02101,"872,00078-0449-05 ",.02)
 ;;00078-0449-05
 ;;9002226.02101,"872,00078-0450-05 ",.01)
 ;;00078-0450-05
 ;;9002226.02101,"872,00078-0450-05 ",.02)
 ;;00078-0450-05
 ;;9002226.02101,"872,00078-0452-05 ",.01)
 ;;00078-0452-05
 ;;9002226.02101,"872,00078-0452-05 ",.02)
 ;;00078-0452-05
 ;;9002226.02101,"872,00078-0453-05 ",.01)
 ;;00078-0453-05
 ;;9002226.02101,"872,00078-0453-05 ",.02)
 ;;00078-0453-05
 ;;9002226.02101,"872,00078-0454-05 ",.01)
 ;;00078-0454-05
 ;;9002226.02101,"872,00078-0454-05 ",.02)
 ;;00078-0454-05
 ;;9002226.02101,"872,00083-0059-32 ",.01)
 ;;00083-0059-32
 ;;9002226.02101,"872,00083-0059-32 ",.02)
 ;;00083-0059-32
 ;;9002226.02101,"872,00083-0059-90 ",.01)
 ;;00083-0059-90
 ;;9002226.02101,"872,00083-0059-90 ",.02)
 ;;00083-0059-90
 ;;9002226.02101,"872,00083-0063-32 ",.01)
 ;;00083-0063-32
 ;;9002226.02101,"872,00083-0063-32 ",.02)
 ;;00083-0063-32
 ;;9002226.02101,"872,00083-0063-90 ",.01)
 ;;00083-0063-90
 ;;9002226.02101,"872,00083-0063-90 ",.02)
 ;;00083-0063-90
 ;;9002226.02101,"872,00083-0079-32 ",.01)
 ;;00083-0079-32
 ;;9002226.02101,"872,00083-0079-32 ",.02)
 ;;00083-0079-32
 ;;9002226.02101,"872,00083-0079-90 ",.01)
 ;;00083-0079-90
 ;;9002226.02101,"872,00083-0079-90 ",.02)
 ;;00083-0079-90
 ;;9002226.02101,"872,00083-0094-32 ",.01)
 ;;00083-0094-32
 ;;9002226.02101,"872,00083-0094-32 ",.02)
 ;;00083-0094-32
 ;;9002226.02101,"872,00083-0094-90 ",.01)
 ;;00083-0094-90
 ;;9002226.02101,"872,00083-0094-90 ",.02)
 ;;00083-0094-90
 ;;9002226.02101,"872,00091-3707-01 ",.01)
 ;;00091-3707-01
 ;;9002226.02101,"872,00091-3707-01 ",.02)
 ;;00091-3707-01
 ;;9002226.02101,"872,00091-3712-01 ",.01)
 ;;00091-3712-01
 ;;9002226.02101,"872,00091-3712-01 ",.02)
 ;;00091-3712-01
 ;;9002226.02101,"872,00091-3715-01 ",.01)
 ;;00091-3715-01
 ;;9002226.02101,"872,00091-3715-01 ",.02)
 ;;00091-3715-01
 ;;9002226.02101,"872,00091-3720-01 ",.01)
 ;;00091-3720-01
 ;;9002226.02101,"872,00091-3720-01 ",.02)
 ;;00091-3720-01
 ;;9002226.02101,"872,00091-3725-01 ",.01)
 ;;00091-3725-01
 ;;9002226.02101,"872,00091-3725-01 ",.02)
 ;;00091-3725-01
 ;;9002226.02101,"872,00093-0017-01 ",.01)
 ;;00093-0017-01
 ;;9002226.02101,"872,00093-0017-01 ",.02)
 ;;00093-0017-01
 ;;9002226.02101,"872,00093-0026-01 ",.01)
 ;;00093-0026-01
 ;;9002226.02101,"872,00093-0026-01 ",.02)
 ;;00093-0026-01
 ;;9002226.02101,"872,00093-0026-10 ",.01)
 ;;00093-0026-10
 ;;9002226.02101,"872,00093-0026-10 ",.02)
 ;;00093-0026-10
 ;;9002226.02101,"872,00093-0027-01 ",.01)
 ;;00093-0027-01
 ;;9002226.02101,"872,00093-0027-01 ",.02)
 ;;00093-0027-01
 ;;9002226.02101,"872,00093-0027-50 ",.01)
 ;;00093-0027-50
 ;;9002226.02101,"872,00093-0027-50 ",.02)
 ;;00093-0027-50
 ;;9002226.02101,"872,00093-0028-01 ",.01)
 ;;00093-0028-01
 ;;9002226.02101,"872,00093-0028-01 ",.02)
 ;;00093-0028-01
 ;;9002226.02101,"872,00093-0028-10 ",.01)
 ;;00093-0028-10
 ;;9002226.02101,"872,00093-0028-10 ",.02)
 ;;00093-0028-10
 ;;9002226.02101,"872,00093-0028-50 ",.01)
 ;;00093-0028-50
 ;;9002226.02101,"872,00093-0028-50 ",.02)
 ;;00093-0028-50
 ;;9002226.02101,"872,00093-0029-01 ",.01)
 ;;00093-0029-01
 ;;9002226.02101,"872,00093-0029-01 ",.02)
 ;;00093-0029-01
 ;;9002226.02101,"872,00093-0029-10 ",.01)
 ;;00093-0029-10
 ;;9002226.02101,"872,00093-0029-10 ",.02)
 ;;00093-0029-10
 ;;9002226.02101,"872,00093-0029-50 ",.01)
 ;;00093-0029-50
 ;;9002226.02101,"872,00093-0029-50 ",.02)
 ;;00093-0029-50
 ;;9002226.02101,"872,00093-0176-01 ",.01)
 ;;00093-0176-01
 ;;9002226.02101,"872,00093-0176-01 ",.02)
 ;;00093-0176-01
 ;;9002226.02101,"872,00093-0177-01 ",.01)
 ;;00093-0177-01
 ;;9002226.02101,"872,00093-0177-01 ",.02)
 ;;00093-0177-01
 ;;9002226.02101,"872,00093-0181-01 ",.01)
 ;;00093-0181-01
 ;;9002226.02101,"872,00093-0181-01 ",.02)
 ;;00093-0181-01
 ;;9002226.02101,"872,00093-0182-01 ",.01)
 ;;00093-0182-01
 ;;9002226.02101,"872,00093-0182-01 ",.02)
 ;;00093-0182-01
 ;;9002226.02101,"872,00093-1044-01 ",.01)
 ;;00093-1044-01
 ;;9002226.02101,"872,00093-1044-01 ",.02)
 ;;00093-1044-01
 ;;9002226.02101,"872,00093-1045-05 ",.01)
 ;;00093-1045-05
 ;;9002226.02101,"872,00093-1045-05 ",.02)
 ;;00093-1045-05
 ;;9002226.02101,"872,00093-1045-98 ",.01)
 ;;00093-1045-98
 ;;9002226.02101,"872,00093-1045-98 ",.02)
 ;;00093-1045-98
 ;;9002226.02101,"872,00093-1050-05 ",.01)
 ;;00093-1050-05
 ;;9002226.02101,"872,00093-1050-05 ",.02)
 ;;00093-1050-05
 ;;9002226.02101,"872,00093-1050-98 ",.01)
 ;;00093-1050-98
 ;;9002226.02101,"872,00093-1050-98 ",.02)
 ;;00093-1050-98
 ;;9002226.02101,"872,00093-1051-05 ",.01)
 ;;00093-1051-05
 ;;9002226.02101,"872,00093-1051-05 ",.02)
 ;;00093-1051-05
 ;;9002226.02101,"872,00093-1051-98 ",.01)
 ;;00093-1051-98
 ;;9002226.02101,"872,00093-1051-98 ",.02)
 ;;00093-1051-98
 ;;9002226.02101,"872,00093-1052-01 ",.01)
 ;;00093-1052-01
 ;;9002226.02101,"872,00093-1052-01 ",.02)
 ;;00093-1052-01
 ;;9002226.02101,"872,00093-1052-10 ",.01)
 ;;00093-1052-10
 ;;9002226.02101,"872,00093-1052-10 ",.02)
 ;;00093-1052-10
 ;;9002226.02101,"872,00093-1053-05 ",.01)
 ;;00093-1053-05
 ;;9002226.02101,"872,00093-1053-05 ",.02)
 ;;00093-1053-05
 ;;9002226.02101,"872,00093-1053-98 ",.01)
 ;;00093-1053-98
 ;;9002226.02101,"872,00093-1053-98 ",.02)
 ;;00093-1053-98
 ;;9002226.02101,"872,00093-5124-01 ",.01)
 ;;00093-5124-01
 ;;9002226.02101,"872,00093-5124-01 ",.02)
 ;;00093-5124-01
 ;;9002226.02101,"872,00093-5125-01 ",.01)
 ;;00093-5125-01
 ;;9002226.02101,"872,00093-5125-01 ",.02)
 ;;00093-5125-01
 ;;9002226.02101,"872,00093-5125-05 ",.01)
 ;;00093-5125-05
 ;;9002226.02101,"872,00093-5125-05 ",.02)
 ;;00093-5125-05
 ;;9002226.02101,"872,00093-5126-01 ",.01)
 ;;00093-5126-01
 ;;9002226.02101,"872,00093-5126-01 ",.02)
 ;;00093-5126-01
 ;;9002226.02101,"872,00093-5126-05 ",.01)
 ;;00093-5126-05
 ;;9002226.02101,"872,00093-5126-05 ",.02)
 ;;00093-5126-05
 ;;9002226.02101,"872,00093-5127-01 ",.01)
 ;;00093-5127-01
 ;;9002226.02101,"872,00093-5127-01 ",.02)
 ;;00093-5127-01
 ;;9002226.02101,"872,00093-5150-01 ",.01)
 ;;00093-5150-01
 ;;9002226.02101,"872,00093-5150-01 ",.02)
 ;;00093-5150-01
 ;;9002226.02101,"872,00093-5213-01 ",.01)
 ;;00093-5213-01
 ;;9002226.02101,"872,00093-5213-01 ",.02)
 ;;00093-5213-01
 ;;9002226.02101,"872,00093-5214-01 ",.01)
 ;;00093-5214-01
 ;;9002226.02101,"872,00093-5214-01 ",.02)
 ;;00093-5214-01
 ;;9002226.02101,"872,00093-5215-01 ",.01)
 ;;00093-5215-01
 ;;9002226.02101,"872,00093-5215-01 ",.02)
 ;;00093-5215-01
 ;;9002226.02101,"872,00093-7222-10 ",.01)
 ;;00093-7222-10
 ;;9002226.02101,"872,00093-7222-10 ",.02)
 ;;00093-7222-10
 ;;9002226.02101,"872,00093-7222-98 ",.01)
 ;;00093-7222-98
 ;;9002226.02101,"872,00093-7222-98 ",.02)
 ;;00093-7222-98
 ;;9002226.02101,"872,00093-7223-10 ",.01)
 ;;00093-7223-10
 ;;9002226.02101,"872,00093-7223-10 ",.02)
 ;;00093-7223-10
 ;;9002226.02101,"872,00093-7223-98 ",.01)
 ;;00093-7223-98
 ;;9002226.02101,"872,00093-7223-98 ",.02)
 ;;00093-7223-98
 ;;9002226.02101,"872,00093-7224-10 ",.01)
 ;;00093-7224-10
 ;;9002226.02101,"872,00093-7224-10 ",.02)
 ;;00093-7224-10
 ;;9002226.02101,"872,00093-7224-98 ",.01)
 ;;00093-7224-98
 ;;9002226.02101,"872,00093-7224-98 ",.02)
 ;;00093-7224-98
 ;;9002226.02101,"872,00093-7325-01 ",.01)
 ;;00093-7325-01
 ;;9002226.02101,"872,00093-7325-01 ",.02)
 ;;00093-7325-01
 ;;9002226.02101,"872,00093-7326-01 ",.01)
 ;;00093-7326-01
 ;;9002226.02101,"872,00093-7326-01 ",.02)
 ;;00093-7326-01
 ;;9002226.02101,"872,00093-7327-01 ",.01)
 ;;00093-7327-01
 ;;9002226.02101,"872,00093-7327-01 ",.02)
 ;;00093-7327-01
 ;;9002226.02101,"872,00093-7370-01 ",.01)
 ;;00093-7370-01
 ;;9002226.02101,"872,00093-7370-01 ",.02)
 ;;00093-7370-01
 ;;9002226.02101,"872,00093-7371-01 ",.01)
 ;;00093-7371-01
 ;;9002226.02101,"872,00093-7371-01 ",.02)
 ;;00093-7371-01
 ;;9002226.02101,"872,00093-7372-01 ",.01)
 ;;00093-7372-01
 ;;9002226.02101,"872,00093-7372-01 ",.02)
 ;;00093-7372-01
 ;;9002226.02101,"872,00093-7373-01 ",.01)
 ;;00093-7373-01
 ;;9002226.02101,"872,00093-7373-01 ",.02)
 ;;00093-7373-01
 ;;9002226.02101,"872,00093-7436-01 ",.01)
 ;;00093-7436-01
 ;;9002226.02101,"872,00093-7436-01 ",.02)
 ;;00093-7436-01
 ;;9002226.02101,"872,00093-7437-01 ",.01)
 ;;00093-7437-01
 ;;9002226.02101,"872,00093-7437-01 ",.02)
 ;;00093-7437-01
 ;;9002226.02101,"872,00093-7438-01 ",.01)
 ;;00093-7438-01
 ;;9002226.02101,"872,00093-7438-01 ",.02)
 ;;00093-7438-01
 ;;9002226.02101,"872,00093-7670-01 ",.01)
 ;;00093-7670-01
 ;;9002226.02101,"872,00093-7670-01 ",.02)
 ;;00093-7670-01
 ;;9002226.02101,"872,00093-7671-01 ",.01)
 ;;00093-7671-01
 ;;9002226.02101,"872,00093-7671-01 ",.02)
 ;;00093-7671-01
 ;;9002226.02101,"872,00093-8132-01 ",.01)
 ;;00093-8132-01
 ;;9002226.02101,"872,00093-8132-01 ",.02)
 ;;00093-8132-01
 ;;9002226.02101,"872,00093-8133-01 ",.01)
 ;;00093-8133-01
 ;;9002226.02101,"872,00093-8133-01 ",.02)
 ;;00093-8133-01
 ;;9002226.02101,"872,00093-8133-10 ",.01)
 ;;00093-8133-10
 ;;9002226.02101,"872,00093-8133-10 ",.02)
 ;;00093-8133-10
 ;;9002226.02101,"872,00093-8134-01 ",.01)
 ;;00093-8134-01
 ;;9002226.02101,"872,00093-8134-01 ",.02)
 ;;00093-8134-01
 ;;9002226.02101,"872,00093-8135-01 ",.01)
 ;;00093-8135-01
 ;;9002226.02101,"872,00093-8135-01 ",.02)
 ;;00093-8135-01
 ;;9002226.02101,"872,00143-1171-01 ",.01)
 ;;00143-1171-01
 ;;9002226.02101,"872,00143-1171-01 ",.02)
 ;;00143-1171-01
 ;;9002226.02101,"872,00143-1171-10 ",.01)
 ;;00143-1171-10
 ;;9002226.02101,"872,00143-1171-10 ",.02)
 ;;00143-1171-10
 ;;9002226.02101,"872,00143-1172-01 ",.01)
 ;;00143-1172-01