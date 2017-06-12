BGP71V17 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1220,43353-0940-30 ",.02)
 ;;43353-0940-30
 ;;9002226.02101,"1220,43353-0940-60 ",.01)
 ;;43353-0940-60
 ;;9002226.02101,"1220,43353-0940-60 ",.02)
 ;;43353-0940-60
 ;;9002226.02101,"1220,43353-0989-45 ",.01)
 ;;43353-0989-45
 ;;9002226.02101,"1220,43353-0989-45 ",.02)
 ;;43353-0989-45
 ;;9002226.02101,"1220,43353-0989-60 ",.01)
 ;;43353-0989-60
 ;;9002226.02101,"1220,43353-0989-60 ",.02)
 ;;43353-0989-60
 ;;9002226.02101,"1220,43353-0992-60 ",.01)
 ;;43353-0992-60
 ;;9002226.02101,"1220,43353-0992-60 ",.02)
 ;;43353-0992-60
 ;;9002226.02101,"1220,43353-0992-80 ",.01)
 ;;43353-0992-80
 ;;9002226.02101,"1220,43353-0992-80 ",.02)
 ;;43353-0992-80
 ;;9002226.02101,"1220,43386-0080-03 ",.01)
 ;;43386-0080-03
 ;;9002226.02101,"1220,43386-0080-03 ",.02)
 ;;43386-0080-03
 ;;9002226.02101,"1220,43386-0080-09 ",.01)
 ;;43386-0080-09
 ;;9002226.02101,"1220,43386-0080-09 ",.02)
 ;;43386-0080-09
 ;;9002226.02101,"1220,43386-0081-03 ",.01)
 ;;43386-0081-03
 ;;9002226.02101,"1220,43386-0081-03 ",.02)
 ;;43386-0081-03
 ;;9002226.02101,"1220,43386-0081-09 ",.01)
 ;;43386-0081-09
 ;;9002226.02101,"1220,43386-0081-09 ",.02)
 ;;43386-0081-09
 ;;9002226.02101,"1220,43386-0082-03 ",.01)
 ;;43386-0082-03
 ;;9002226.02101,"1220,43386-0082-03 ",.02)
 ;;43386-0082-03
 ;;9002226.02101,"1220,43386-0082-09 ",.01)
 ;;43386-0082-09
 ;;9002226.02101,"1220,43386-0082-09 ",.02)
 ;;43386-0082-09
 ;;9002226.02101,"1220,43386-0083-03 ",.01)
 ;;43386-0083-03
 ;;9002226.02101,"1220,43386-0083-03 ",.02)
 ;;43386-0083-03
 ;;9002226.02101,"1220,43386-0083-09 ",.01)
 ;;43386-0083-09
 ;;9002226.02101,"1220,43386-0083-09 ",.02)
 ;;43386-0083-09
 ;;9002226.02101,"1220,43547-0230-09 ",.01)
 ;;43547-0230-09
 ;;9002226.02101,"1220,43547-0230-09 ",.02)
 ;;43547-0230-09
 ;;9002226.02101,"1220,43547-0230-11 ",.01)
 ;;43547-0230-11
 ;;9002226.02101,"1220,43547-0230-11 ",.02)
 ;;43547-0230-11
 ;;9002226.02101,"1220,43547-0231-09 ",.01)
 ;;43547-0231-09
 ;;9002226.02101,"1220,43547-0231-09 ",.02)
 ;;43547-0231-09
 ;;9002226.02101,"1220,43547-0231-11 ",.01)
 ;;43547-0231-11
 ;;9002226.02101,"1220,43547-0231-11 ",.02)
 ;;43547-0231-11
 ;;9002226.02101,"1220,43547-0232-09 ",.01)
 ;;43547-0232-09
 ;;9002226.02101,"1220,43547-0232-09 ",.02)
 ;;43547-0232-09
 ;;9002226.02101,"1220,43547-0232-11 ",.01)
 ;;43547-0232-11
 ;;9002226.02101,"1220,43547-0232-11 ",.02)
 ;;43547-0232-11
 ;;9002226.02101,"1220,43598-0313-30 ",.01)
 ;;43598-0313-30
 ;;9002226.02101,"1220,43598-0313-30 ",.02)
 ;;43598-0313-30
 ;;9002226.02101,"1220,43598-0314-30 ",.01)
 ;;43598-0314-30
 ;;9002226.02101,"1220,43598-0314-30 ",.02)
 ;;43598-0314-30
 ;;9002226.02101,"1220,43598-0315-30 ",.01)
 ;;43598-0315-30
 ;;9002226.02101,"1220,43598-0315-30 ",.02)
 ;;43598-0315-30
 ;;9002226.02101,"1220,43598-0315-90 ",.01)
 ;;43598-0315-90
 ;;9002226.02101,"1220,43598-0315-90 ",.02)
 ;;43598-0315-90
 ;;9002226.02101,"1220,43598-0316-30 ",.01)
 ;;43598-0316-30
 ;;9002226.02101,"1220,43598-0316-30 ",.02)
 ;;43598-0316-30
 ;;9002226.02101,"1220,43598-0316-90 ",.01)
 ;;43598-0316-90
 ;;9002226.02101,"1220,43598-0316-90 ",.02)
 ;;43598-0316-90
 ;;9002226.02101,"1220,43598-0317-30 ",.01)
 ;;43598-0317-30
 ;;9002226.02101,"1220,43598-0317-30 ",.02)
 ;;43598-0317-30
 ;;9002226.02101,"1220,43598-0318-30 ",.01)
 ;;43598-0318-30
 ;;9002226.02101,"1220,43598-0318-30 ",.02)
 ;;43598-0318-30
 ;;9002226.02101,"1220,43598-0318-90 ",.01)
 ;;43598-0318-90
 ;;9002226.02101,"1220,43598-0318-90 ",.02)
 ;;43598-0318-90
 ;;9002226.02101,"1220,43598-0319-30 ",.01)
 ;;43598-0319-30
 ;;9002226.02101,"1220,43598-0319-30 ",.02)
 ;;43598-0319-30
 ;;9002226.02101,"1220,43598-0319-90 ",.01)
 ;;43598-0319-90
 ;;9002226.02101,"1220,43598-0319-90 ",.02)
 ;;43598-0319-90
 ;;9002226.02101,"1220,43598-0320-30 ",.01)
 ;;43598-0320-30
 ;;9002226.02101,"1220,43598-0320-30 ",.02)
 ;;43598-0320-30
 ;;9002226.02101,"1220,43598-0321-30 ",.01)
 ;;43598-0321-30
 ;;9002226.02101,"1220,43598-0321-30 ",.02)
 ;;43598-0321-30
 ;;9002226.02101,"1220,43598-0321-90 ",.01)
 ;;43598-0321-90
 ;;9002226.02101,"1220,43598-0321-90 ",.02)
 ;;43598-0321-90
 ;;9002226.02101,"1220,43598-0322-30 ",.01)
 ;;43598-0322-30
 ;;9002226.02101,"1220,43598-0322-30 ",.02)
 ;;43598-0322-30
 ;;9002226.02101,"1220,43598-0322-90 ",.01)
 ;;43598-0322-90
 ;;9002226.02101,"1220,43598-0322-90 ",.02)
 ;;43598-0322-90
 ;;9002226.02101,"1220,43598-0323-30 ",.01)
 ;;43598-0323-30
 ;;9002226.02101,"1220,43598-0323-30 ",.02)
 ;;43598-0323-30
 ;;9002226.02101,"1220,43683-0133-30 ",.01)
 ;;43683-0133-30
 ;;9002226.02101,"1220,43683-0133-30 ",.02)
 ;;43683-0133-30
 ;;9002226.02101,"1220,45963-0152-02 ",.01)
 ;;45963-0152-02
 ;;9002226.02101,"1220,45963-0152-02 ",.02)
 ;;45963-0152-02
 ;;9002226.02101,"1220,47335-0669-13 ",.01)
 ;;47335-0669-13
 ;;9002226.02101,"1220,47335-0669-13 ",.02)
 ;;47335-0669-13
 ;;9002226.02101,"1220,47335-0669-81 ",.01)
 ;;47335-0669-81
 ;;9002226.02101,"1220,47335-0669-81 ",.02)
 ;;47335-0669-81
 ;;9002226.02101,"1220,47335-0669-83 ",.01)
 ;;47335-0669-83
 ;;9002226.02101,"1220,47335-0669-83 ",.02)
 ;;47335-0669-83
 ;;9002226.02101,"1220,47335-0670-13 ",.01)
 ;;47335-0670-13
 ;;9002226.02101,"1220,47335-0670-13 ",.02)
 ;;47335-0670-13
 ;;9002226.02101,"1220,47335-0670-81 ",.01)
 ;;47335-0670-81
 ;;9002226.02101,"1220,47335-0670-81 ",.02)
 ;;47335-0670-81
 ;;9002226.02101,"1220,47335-0670-83 ",.01)
 ;;47335-0670-83
 ;;9002226.02101,"1220,47335-0670-83 ",.02)
 ;;47335-0670-83
 ;;9002226.02101,"1220,47335-0671-13 ",.01)
 ;;47335-0671-13
 ;;9002226.02101,"1220,47335-0671-13 ",.02)
 ;;47335-0671-13
 ;;9002226.02101,"1220,47335-0671-81 ",.01)
 ;;47335-0671-81
 ;;9002226.02101,"1220,47335-0671-81 ",.02)
 ;;47335-0671-81
 ;;9002226.02101,"1220,47335-0671-83 ",.01)
 ;;47335-0671-83
 ;;9002226.02101,"1220,47335-0671-83 ",.02)
 ;;47335-0671-83
 ;;9002226.02101,"1220,47335-0672-13 ",.01)
 ;;47335-0672-13
 ;;9002226.02101,"1220,47335-0672-13 ",.02)
 ;;47335-0672-13
 ;;9002226.02101,"1220,47335-0672-81 ",.01)
 ;;47335-0672-81
 ;;9002226.02101,"1220,47335-0672-81 ",.02)
 ;;47335-0672-81
 ;;9002226.02101,"1220,47335-0672-83 ",.01)
 ;;47335-0672-83
 ;;9002226.02101,"1220,47335-0672-83 ",.02)
 ;;47335-0672-83
 ;;9002226.02101,"1220,47335-0673-13 ",.01)
 ;;47335-0673-13
 ;;9002226.02101,"1220,47335-0673-13 ",.02)
 ;;47335-0673-13
 ;;9002226.02101,"1220,47335-0673-81 ",.01)
 ;;47335-0673-81
 ;;9002226.02101,"1220,47335-0673-81 ",.02)
 ;;47335-0673-81
 ;;9002226.02101,"1220,47335-0673-83 ",.01)
 ;;47335-0673-83
 ;;9002226.02101,"1220,47335-0673-83 ",.02)
 ;;47335-0673-83
 ;;9002226.02101,"1220,47335-0675-13 ",.01)
 ;;47335-0675-13
 ;;9002226.02101,"1220,47335-0675-13 ",.02)
 ;;47335-0675-13
 ;;9002226.02101,"1220,47335-0675-81 ",.01)
 ;;47335-0675-81
 ;;9002226.02101,"1220,47335-0675-81 ",.02)
 ;;47335-0675-81
 ;;9002226.02101,"1220,47335-0676-13 ",.01)
 ;;47335-0676-13
 ;;9002226.02101,"1220,47335-0676-13 ",.02)
 ;;47335-0676-13
 ;;9002226.02101,"1220,47335-0676-81 ",.01)
 ;;47335-0676-81
 ;;9002226.02101,"1220,47335-0676-81 ",.02)
 ;;47335-0676-81
 ;;9002226.02101,"1220,47335-0677-13 ",.01)
 ;;47335-0677-13
 ;;9002226.02101,"1220,47335-0677-13 ",.02)
 ;;47335-0677-13
 ;;9002226.02101,"1220,47335-0677-81 ",.01)
 ;;47335-0677-81
 ;;9002226.02101,"1220,47335-0677-81 ",.02)
 ;;47335-0677-81
 ;;9002226.02101,"1220,47335-0678-13 ",.01)
 ;;47335-0678-13
 ;;9002226.02101,"1220,47335-0678-13 ",.02)
 ;;47335-0678-13
 ;;9002226.02101,"1220,47335-0678-81 ",.01)
 ;;47335-0678-81
 ;;9002226.02101,"1220,47335-0678-81 ",.02)
 ;;47335-0678-81
 ;;9002226.02101,"1220,47335-0679-81 ",.01)
 ;;47335-0679-81
 ;;9002226.02101,"1220,47335-0679-81 ",.02)
 ;;47335-0679-81
 ;;9002226.02101,"1220,47463-0018-30 ",.01)
 ;;47463-0018-30
 ;;9002226.02101,"1220,47463-0018-30 ",.02)
 ;;47463-0018-30
 ;;9002226.02101,"1220,47463-0018-90 ",.01)
 ;;47463-0018-90
 ;;9002226.02101,"1220,47463-0018-90 ",.02)
 ;;47463-0018-90
 ;;9002226.02101,"1220,47463-0019-30 ",.01)
 ;;47463-0019-30
 ;;9002226.02101,"1220,47463-0019-30 ",.02)
 ;;47463-0019-30
 ;;9002226.02101,"1220,47463-0019-90 ",.01)
 ;;47463-0019-90
 ;;9002226.02101,"1220,47463-0019-90 ",.02)
 ;;47463-0019-90
 ;;9002226.02101,"1220,47463-0020-30 ",.01)
 ;;47463-0020-30
 ;;9002226.02101,"1220,47463-0020-30 ",.02)
 ;;47463-0020-30
 ;;9002226.02101,"1220,47463-0021-30 ",.01)
 ;;47463-0021-30
 ;;9002226.02101,"1220,47463-0021-30 ",.02)
 ;;47463-0021-30
 ;;9002226.02101,"1220,47463-0022-30 ",.01)
 ;;47463-0022-30
 ;;9002226.02101,"1220,47463-0022-30 ",.02)
 ;;47463-0022-30
 ;;9002226.02101,"1220,47463-0023-30 ",.01)
 ;;47463-0023-30
 ;;9002226.02101,"1220,47463-0023-30 ",.02)
 ;;47463-0023-30
 ;;9002226.02101,"1220,47463-0024-30 ",.01)
 ;;47463-0024-30
 ;;9002226.02101,"1220,47463-0024-30 ",.02)
 ;;47463-0024-30
 ;;9002226.02101,"1220,47463-0210-30 ",.01)
 ;;47463-0210-30
 ;;9002226.02101,"1220,47463-0210-30 ",.02)
 ;;47463-0210-30
 ;;9002226.02101,"1220,47463-0211-30 ",.01)
 ;;47463-0211-30
 ;;9002226.02101,"1220,47463-0211-30 ",.02)
 ;;47463-0211-30
 ;;9002226.02101,"1220,47463-0212-30 ",.01)
 ;;47463-0212-30
 ;;9002226.02101,"1220,47463-0212-30 ",.02)
 ;;47463-0212-30
 ;;9002226.02101,"1220,47463-0213-30 ",.01)
 ;;47463-0213-30
 ;;9002226.02101,"1220,47463-0213-30 ",.02)
 ;;47463-0213-30
 ;;9002226.02101,"1220,47463-0542-30 ",.01)
 ;;47463-0542-30
 ;;9002226.02101,"1220,47463-0542-30 ",.02)
 ;;47463-0542-30
 ;;9002226.02101,"1220,47463-0543-30 ",.01)
 ;;47463-0543-30
 ;;9002226.02101,"1220,47463-0543-30 ",.02)
 ;;47463-0543-30
 ;;9002226.02101,"1220,47463-0544-30 ",.01)
 ;;47463-0544-30
 ;;9002226.02101,"1220,47463-0544-30 ",.02)
 ;;47463-0544-30
 ;;9002226.02101,"1220,47463-0819-30 ",.01)
 ;;47463-0819-30
 ;;9002226.02101,"1220,47463-0819-30 ",.02)
 ;;47463-0819-30
 ;;9002226.02101,"1220,47463-0820-30 ",.01)
 ;;47463-0820-30
 ;;9002226.02101,"1220,47463-0820-30 ",.02)
 ;;47463-0820-30
 ;;9002226.02101,"1220,47781-0368-01 ",.01)
 ;;47781-0368-01
 ;;9002226.02101,"1220,47781-0368-01 ",.02)
 ;;47781-0368-01
 ;;9002226.02101,"1220,47781-0369-01 ",.01)
 ;;47781-0369-01
 ;;9002226.02101,"1220,47781-0369-01 ",.02)
 ;;47781-0369-01
 ;;9002226.02101,"1220,47781-0370-01 ",.01)
 ;;47781-0370-01
 ;;9002226.02101,"1220,47781-0370-01 ",.02)
 ;;47781-0370-01
 ;;9002226.02101,"1220,49884-0172-09 ",.01)
 ;;49884-0172-09
 ;;9002226.02101,"1220,49884-0172-09 ",.02)
 ;;49884-0172-09
 ;;9002226.02101,"1220,49884-0172-11 ",.01)
 ;;49884-0172-11
 ;;9002226.02101,"1220,49884-0172-11 ",.02)
 ;;49884-0172-11
 ;;9002226.02101,"1220,49884-0173-09 ",.01)
 ;;49884-0173-09
 ;;9002226.02101,"1220,49884-0173-09 ",.02)
 ;;49884-0173-09
 ;;9002226.02101,"1220,49884-0173-11 ",.01)
 ;;49884-0173-11
 ;;9002226.02101,"1220,49884-0173-11 ",.02)
 ;;49884-0173-11
 ;;9002226.02101,"1220,49884-0174-09 ",.01)
 ;;49884-0174-09
 ;;9002226.02101,"1220,49884-0174-09 ",.02)
 ;;49884-0174-09
 ;;9002226.02101,"1220,49884-0174-11 ",.01)
 ;;49884-0174-11
 ;;9002226.02101,"1220,49884-0174-11 ",.02)
 ;;49884-0174-11
 ;;9002226.02101,"1220,49884-0175-09 ",.01)
 ;;49884-0175-09
 ;;9002226.02101,"1220,49884-0175-09 ",.02)
 ;;49884-0175-09
 ;;9002226.02101,"1220,49884-0175-11 ",.01)
 ;;49884-0175-11
 ;;9002226.02101,"1220,49884-0175-11 ",.02)
 ;;49884-0175-11
 ;;9002226.02101,"1220,49884-0185-09 ",.01)
 ;;49884-0185-09
 ;;9002226.02101,"1220,49884-0185-09 ",.02)
 ;;49884-0185-09
 ;;9002226.02101,"1220,49884-0185-11 ",.01)
 ;;49884-0185-11
 ;;9002226.02101,"1220,49884-0185-11 ",.02)
 ;;49884-0185-11
 ;;9002226.02101,"1220,49884-0574-11 ",.01)
 ;;49884-0574-11
 ;;9002226.02101,"1220,49884-0574-11 ",.02)
 ;;49884-0574-11