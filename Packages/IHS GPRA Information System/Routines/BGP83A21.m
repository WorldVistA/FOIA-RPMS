BGP83A21 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1828,43063-0030-06 ",.02)
 ;;43063-0030-06
 ;;9002226.02101,"1828,43063-0030-10 ",.01)
 ;;43063-0030-10
 ;;9002226.02101,"1828,43063-0030-10 ",.02)
 ;;43063-0030-10
 ;;9002226.02101,"1828,43063-0030-12 ",.01)
 ;;43063-0030-12
 ;;9002226.02101,"1828,43063-0030-12 ",.02)
 ;;43063-0030-12
 ;;9002226.02101,"1828,43063-0046-03 ",.01)
 ;;43063-0046-03
 ;;9002226.02101,"1828,43063-0046-03 ",.02)
 ;;43063-0046-03
 ;;9002226.02101,"1828,43063-0046-06 ",.01)
 ;;43063-0046-06
 ;;9002226.02101,"1828,43063-0046-06 ",.02)
 ;;43063-0046-06
 ;;9002226.02101,"1828,43063-0046-12 ",.01)
 ;;43063-0046-12
 ;;9002226.02101,"1828,43063-0046-12 ",.02)
 ;;43063-0046-12
 ;;9002226.02101,"1828,43063-0046-15 ",.01)
 ;;43063-0046-15
 ;;9002226.02101,"1828,43063-0046-15 ",.02)
 ;;43063-0046-15
 ;;9002226.02101,"1828,43063-0046-19 ",.01)
 ;;43063-0046-19
 ;;9002226.02101,"1828,43063-0046-19 ",.02)
 ;;43063-0046-19
 ;;9002226.02101,"1828,43063-0046-24 ",.01)
 ;;43063-0046-24
 ;;9002226.02101,"1828,43063-0046-24 ",.02)
 ;;43063-0046-24
 ;;9002226.02101,"1828,43063-0048-04 ",.01)
 ;;43063-0048-04
 ;;9002226.02101,"1828,43063-0048-04 ",.02)
 ;;43063-0048-04
 ;;9002226.02101,"1828,43063-0048-06 ",.01)
 ;;43063-0048-06
 ;;9002226.02101,"1828,43063-0048-06 ",.02)
 ;;43063-0048-06
 ;;9002226.02101,"1828,43063-0048-15 ",.01)
 ;;43063-0048-15
 ;;9002226.02101,"1828,43063-0048-15 ",.02)
 ;;43063-0048-15
 ;;9002226.02101,"1828,43063-0057-06 ",.01)
 ;;43063-0057-06
 ;;9002226.02101,"1828,43063-0057-06 ",.02)
 ;;43063-0057-06
 ;;9002226.02101,"1828,43063-0061-06 ",.01)
 ;;43063-0061-06
 ;;9002226.02101,"1828,43063-0061-06 ",.02)
 ;;43063-0061-06
 ;;9002226.02101,"1828,43063-0088-06 ",.01)
 ;;43063-0088-06
 ;;9002226.02101,"1828,43063-0088-06 ",.02)
 ;;43063-0088-06
 ;;9002226.02101,"1828,43063-0164-12 ",.01)
 ;;43063-0164-12
 ;;9002226.02101,"1828,43063-0164-12 ",.02)
 ;;43063-0164-12
 ;;9002226.02101,"1828,43063-0364-06 ",.01)
 ;;43063-0364-06
 ;;9002226.02101,"1828,43063-0364-06 ",.02)
 ;;43063-0364-06
 ;;9002226.02101,"1828,43063-0364-30 ",.01)
 ;;43063-0364-30
 ;;9002226.02101,"1828,43063-0364-30 ",.02)
 ;;43063-0364-30
 ;;9002226.02101,"1828,43063-0364-40 ",.01)
 ;;43063-0364-40
 ;;9002226.02101,"1828,43063-0364-40 ",.02)
 ;;43063-0364-40
 ;;9002226.02101,"1828,43063-0364-60 ",.01)
 ;;43063-0364-60
 ;;9002226.02101,"1828,43063-0364-60 ",.02)
 ;;43063-0364-60
 ;;9002226.02101,"1828,43063-0364-90 ",.01)
 ;;43063-0364-90
 ;;9002226.02101,"1828,43063-0364-90 ",.02)
 ;;43063-0364-90
 ;;9002226.02101,"1828,43063-0364-98 ",.01)
 ;;43063-0364-98
 ;;9002226.02101,"1828,43063-0364-98 ",.02)
 ;;43063-0364-98
 ;;9002226.02101,"1828,43063-0365-14 ",.01)
 ;;43063-0365-14
 ;;9002226.02101,"1828,43063-0365-14 ",.02)
 ;;43063-0365-14
 ;;9002226.02101,"1828,43063-0365-21 ",.01)
 ;;43063-0365-21
 ;;9002226.02101,"1828,43063-0365-21 ",.02)
 ;;43063-0365-21
 ;;9002226.02101,"1828,43063-0365-30 ",.01)
 ;;43063-0365-30
 ;;9002226.02101,"1828,43063-0365-30 ",.02)
 ;;43063-0365-30
 ;;9002226.02101,"1828,43063-0365-60 ",.01)
 ;;43063-0365-60
 ;;9002226.02101,"1828,43063-0365-60 ",.02)
 ;;43063-0365-60
 ;;9002226.02101,"1828,43063-0365-90 ",.01)
 ;;43063-0365-90
 ;;9002226.02101,"1828,43063-0365-90 ",.02)
 ;;43063-0365-90
 ;;9002226.02101,"1828,43063-0367-06 ",.01)
 ;;43063-0367-06
 ;;9002226.02101,"1828,43063-0367-06 ",.02)
 ;;43063-0367-06
 ;;9002226.02101,"1828,43063-0367-15 ",.01)
 ;;43063-0367-15
 ;;9002226.02101,"1828,43063-0367-15 ",.02)
 ;;43063-0367-15
 ;;9002226.02101,"1828,43063-0367-30 ",.01)
 ;;43063-0367-30
 ;;9002226.02101,"1828,43063-0367-30 ",.02)
 ;;43063-0367-30
 ;;9002226.02101,"1828,43063-0367-60 ",.01)
 ;;43063-0367-60
 ;;9002226.02101,"1828,43063-0367-60 ",.02)
 ;;43063-0367-60
 ;;9002226.02101,"1828,43063-0367-90 ",.01)
 ;;43063-0367-90
 ;;9002226.02101,"1828,43063-0367-90 ",.02)
 ;;43063-0367-90
 ;;9002226.02101,"1828,43063-0367-98 ",.01)
 ;;43063-0367-98
 ;;9002226.02101,"1828,43063-0367-98 ",.02)
 ;;43063-0367-98
 ;;9002226.02101,"1828,43063-0370-05 ",.01)
 ;;43063-0370-05
 ;;9002226.02101,"1828,43063-0370-05 ",.02)
 ;;43063-0370-05
 ;;9002226.02101,"1828,43063-0370-20 ",.01)
 ;;43063-0370-20
 ;;9002226.02101,"1828,43063-0370-20 ",.02)
 ;;43063-0370-20
 ;;9002226.02101,"1828,43063-0370-30 ",.01)
 ;;43063-0370-30
 ;;9002226.02101,"1828,43063-0370-30 ",.02)
 ;;43063-0370-30
 ;;9002226.02101,"1828,43063-0370-60 ",.01)
 ;;43063-0370-60
 ;;9002226.02101,"1828,43063-0370-60 ",.02)
 ;;43063-0370-60
 ;;9002226.02101,"1828,43063-0370-90 ",.01)
 ;;43063-0370-90
 ;;9002226.02101,"1828,43063-0370-90 ",.02)
 ;;43063-0370-90
 ;;9002226.02101,"1828,43063-0370-98 ",.01)
 ;;43063-0370-98
 ;;9002226.02101,"1828,43063-0370-98 ",.02)
 ;;43063-0370-98
 ;;9002226.02101,"1828,43063-0382-03 ",.01)
 ;;43063-0382-03
 ;;9002226.02101,"1828,43063-0382-03 ",.02)
 ;;43063-0382-03
 ;;9002226.02101,"1828,43063-0382-06 ",.01)
 ;;43063-0382-06
 ;;9002226.02101,"1828,43063-0382-06 ",.02)
 ;;43063-0382-06
 ;;9002226.02101,"1828,43063-0382-10 ",.01)
 ;;43063-0382-10
 ;;9002226.02101,"1828,43063-0382-10 ",.02)
 ;;43063-0382-10
 ;;9002226.02101,"1828,43063-0382-12 ",.01)
 ;;43063-0382-12
 ;;9002226.02101,"1828,43063-0382-12 ",.02)
 ;;43063-0382-12
 ;;9002226.02101,"1828,43063-0556-06 ",.01)
 ;;43063-0556-06
 ;;9002226.02101,"1828,43063-0556-06 ",.02)
 ;;43063-0556-06
 ;;9002226.02101,"1828,43063-0556-30 ",.01)
 ;;43063-0556-30
 ;;9002226.02101,"1828,43063-0556-30 ",.02)
 ;;43063-0556-30
 ;;9002226.02101,"1828,43063-0556-40 ",.01)
 ;;43063-0556-40
 ;;9002226.02101,"1828,43063-0556-40 ",.02)
 ;;43063-0556-40
 ;;9002226.02101,"1828,43063-0556-60 ",.01)
 ;;43063-0556-60
 ;;9002226.02101,"1828,43063-0556-60 ",.02)
 ;;43063-0556-60
 ;;9002226.02101,"1828,43063-0556-90 ",.01)
 ;;43063-0556-90
 ;;9002226.02101,"1828,43063-0556-90 ",.02)
 ;;43063-0556-90
 ;;9002226.02101,"1828,43063-0556-98 ",.01)
 ;;43063-0556-98
 ;;9002226.02101,"1828,43063-0556-98 ",.02)
 ;;43063-0556-98
 ;;9002226.02101,"1828,43063-0609-30 ",.01)
 ;;43063-0609-30
 ;;9002226.02101,"1828,43063-0609-30 ",.02)
 ;;43063-0609-30
 ;;9002226.02101,"1828,43063-0609-40 ",.01)
 ;;43063-0609-40
 ;;9002226.02101,"1828,43063-0609-40 ",.02)
 ;;43063-0609-40
 ;;9002226.02101,"1828,43063-0609-60 ",.01)
 ;;43063-0609-60
 ;;9002226.02101,"1828,43063-0609-60 ",.02)
 ;;43063-0609-60
 ;;9002226.02101,"1828,43063-0609-90 ",.01)
 ;;43063-0609-90
 ;;9002226.02101,"1828,43063-0609-90 ",.02)
 ;;43063-0609-90
 ;;9002226.02101,"1828,43063-0718-04 ",.01)
 ;;43063-0718-04
 ;;9002226.02101,"1828,43063-0718-04 ",.02)
 ;;43063-0718-04
 ;;9002226.02101,"1828,43063-0718-06 ",.01)
 ;;43063-0718-06
 ;;9002226.02101,"1828,43063-0718-06 ",.02)
 ;;43063-0718-06
 ;;9002226.02101,"1828,43063-0718-09 ",.01)
 ;;43063-0718-09
 ;;9002226.02101,"1828,43063-0718-09 ",.02)
 ;;43063-0718-09
 ;;9002226.02101,"1828,43063-0718-10 ",.01)
 ;;43063-0718-10
 ;;9002226.02101,"1828,43063-0718-10 ",.02)
 ;;43063-0718-10
 ;;9002226.02101,"1828,43063-0718-12 ",.01)
 ;;43063-0718-12
 ;;9002226.02101,"1828,43063-0718-12 ",.02)
 ;;43063-0718-12
 ;;9002226.02101,"1828,43063-0718-15 ",.01)
 ;;43063-0718-15
 ;;9002226.02101,"1828,43063-0718-15 ",.02)
 ;;43063-0718-15
 ;;9002226.02101,"1828,43063-0718-21 ",.01)
 ;;43063-0718-21
 ;;9002226.02101,"1828,43063-0718-21 ",.02)
 ;;43063-0718-21
 ;;9002226.02101,"1828,43063-0718-30 ",.01)
 ;;43063-0718-30
 ;;9002226.02101,"1828,43063-0718-30 ",.02)
 ;;43063-0718-30
 ;;9002226.02101,"1828,43063-0718-60 ",.01)
 ;;43063-0718-60
 ;;9002226.02101,"1828,43063-0718-60 ",.02)
 ;;43063-0718-60
 ;;9002226.02101,"1828,43063-0718-90 ",.01)
 ;;43063-0718-90
 ;;9002226.02101,"1828,43063-0718-90 ",.02)
 ;;43063-0718-90
 ;;9002226.02101,"1828,43063-0751-30 ",.01)
 ;;43063-0751-30
 ;;9002226.02101,"1828,43063-0751-30 ",.02)
 ;;43063-0751-30
 ;;9002226.02101,"1828,43353-0074-30 ",.01)
 ;;43353-0074-30
 ;;9002226.02101,"1828,43353-0074-30 ",.02)
 ;;43353-0074-30
 ;;9002226.02101,"1828,43353-0074-60 ",.01)
 ;;43353-0074-60
 ;;9002226.02101,"1828,43353-0074-60 ",.02)
 ;;43353-0074-60
 ;;9002226.02101,"1828,43353-0152-30 ",.01)
 ;;43353-0152-30
 ;;9002226.02101,"1828,43353-0152-30 ",.02)
 ;;43353-0152-30
 ;;9002226.02101,"1828,43353-0152-53 ",.01)
 ;;43353-0152-53
 ;;9002226.02101,"1828,43353-0152-53 ",.02)
 ;;43353-0152-53
 ;;9002226.02101,"1828,43353-0152-60 ",.01)
 ;;43353-0152-60
 ;;9002226.02101,"1828,43353-0152-60 ",.02)
 ;;43353-0152-60
 ;;9002226.02101,"1828,43353-0254-15 ",.01)
 ;;43353-0254-15
 ;;9002226.02101,"1828,43353-0254-15 ",.02)
 ;;43353-0254-15
 ;;9002226.02101,"1828,43353-0254-30 ",.01)
 ;;43353-0254-30
 ;;9002226.02101,"1828,43353-0254-30 ",.02)
 ;;43353-0254-30
 ;;9002226.02101,"1828,43353-0254-53 ",.01)
 ;;43353-0254-53
 ;;9002226.02101,"1828,43353-0254-53 ",.02)
 ;;43353-0254-53
 ;;9002226.02101,"1828,43353-0254-60 ",.01)
 ;;43353-0254-60
 ;;9002226.02101,"1828,43353-0254-60 ",.02)
 ;;43353-0254-60
 ;;9002226.02101,"1828,43353-0254-70 ",.01)
 ;;43353-0254-70
 ;;9002226.02101,"1828,43353-0254-70 ",.02)
 ;;43353-0254-70
 ;;9002226.02101,"1828,43353-0254-80 ",.01)
 ;;43353-0254-80
 ;;9002226.02101,"1828,43353-0254-80 ",.02)
 ;;43353-0254-80
 ;;9002226.02101,"1828,43353-0255-30 ",.01)
 ;;43353-0255-30
 ;;9002226.02101,"1828,43353-0255-30 ",.02)
 ;;43353-0255-30
 ;;9002226.02101,"1828,43353-0255-53 ",.01)
 ;;43353-0255-53
 ;;9002226.02101,"1828,43353-0255-53 ",.02)
 ;;43353-0255-53
 ;;9002226.02101,"1828,43353-0255-60 ",.01)
 ;;43353-0255-60
 ;;9002226.02101,"1828,43353-0255-60 ",.02)
 ;;43353-0255-60
 ;;9002226.02101,"1828,43353-0255-70 ",.01)
 ;;43353-0255-70
 ;;9002226.02101,"1828,43353-0255-70 ",.02)
 ;;43353-0255-70
 ;;9002226.02101,"1828,43353-0255-75 ",.01)
 ;;43353-0255-75
 ;;9002226.02101,"1828,43353-0255-75 ",.02)
 ;;43353-0255-75
 ;;9002226.02101,"1828,43353-0255-80 ",.01)
 ;;43353-0255-80
 ;;9002226.02101,"1828,43353-0255-80 ",.02)
 ;;43353-0255-80
 ;;9002226.02101,"1828,43353-0255-90 ",.01)
 ;;43353-0255-90
 ;;9002226.02101,"1828,43353-0255-90 ",.02)
 ;;43353-0255-90
 ;;9002226.02101,"1828,43353-0255-92 ",.01)
 ;;43353-0255-92
 ;;9002226.02101,"1828,43353-0255-92 ",.02)
 ;;43353-0255-92
 ;;9002226.02101,"1828,43353-0260-15 ",.01)
 ;;43353-0260-15
 ;;9002226.02101,"1828,43353-0260-15 ",.02)
 ;;43353-0260-15
 ;;9002226.02101,"1828,43353-0260-30 ",.01)
 ;;43353-0260-30
 ;;9002226.02101,"1828,43353-0260-30 ",.02)
 ;;43353-0260-30
 ;;9002226.02101,"1828,43353-0260-53 ",.01)
 ;;43353-0260-53
 ;;9002226.02101,"1828,43353-0260-53 ",.02)
 ;;43353-0260-53
 ;;9002226.02101,"1828,43353-0276-15 ",.01)
 ;;43353-0276-15
 ;;9002226.02101,"1828,43353-0276-15 ",.02)
 ;;43353-0276-15
 ;;9002226.02101,"1828,43353-0276-30 ",.01)
 ;;43353-0276-30
 ;;9002226.02101,"1828,43353-0276-30 ",.02)
 ;;43353-0276-30
 ;;9002226.02101,"1828,43353-0276-45 ",.01)
 ;;43353-0276-45
 ;;9002226.02101,"1828,43353-0276-45 ",.02)
 ;;43353-0276-45
 ;;9002226.02101,"1828,43353-0276-53 ",.01)
 ;;43353-0276-53
 ;;9002226.02101,"1828,43353-0276-53 ",.02)
 ;;43353-0276-53
 ;;9002226.02101,"1828,43353-0276-60 ",.01)
 ;;43353-0276-60
 ;;9002226.02101,"1828,43353-0276-60 ",.02)
 ;;43353-0276-60
 ;;9002226.02101,"1828,43353-0276-70 ",.01)
 ;;43353-0276-70
 ;;9002226.02101,"1828,43353-0276-70 ",.02)
 ;;43353-0276-70
 ;;9002226.02101,"1828,43353-0276-75 ",.01)
 ;;43353-0276-75
 ;;9002226.02101,"1828,43353-0276-75 ",.02)
 ;;43353-0276-75
 ;;9002226.02101,"1828,43353-0276-80 ",.01)
 ;;43353-0276-80
 ;;9002226.02101,"1828,43353-0276-80 ",.02)
 ;;43353-0276-80
 ;;9002226.02101,"1828,43353-0277-30 ",.01)
 ;;43353-0277-30
 ;;9002226.02101,"1828,43353-0277-30 ",.02)
 ;;43353-0277-30