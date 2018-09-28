BGP82P15 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1224,43353-0718-45 ",.02)
 ;;43353-0718-45
 ;;9002226.02101,"1224,43353-0718-60 ",.01)
 ;;43353-0718-60
 ;;9002226.02101,"1224,43353-0718-60 ",.02)
 ;;43353-0718-60
 ;;9002226.02101,"1224,43353-0763-45 ",.01)
 ;;43353-0763-45
 ;;9002226.02101,"1224,43353-0763-45 ",.02)
 ;;43353-0763-45
 ;;9002226.02101,"1224,43353-0768-15 ",.01)
 ;;43353-0768-15
 ;;9002226.02101,"1224,43353-0768-15 ",.02)
 ;;43353-0768-15
 ;;9002226.02101,"1224,43353-0773-15 ",.01)
 ;;43353-0773-15
 ;;9002226.02101,"1224,43353-0773-15 ",.02)
 ;;43353-0773-15
 ;;9002226.02101,"1224,43353-0773-45 ",.01)
 ;;43353-0773-45
 ;;9002226.02101,"1224,43353-0773-45 ",.02)
 ;;43353-0773-45
 ;;9002226.02101,"1224,43353-0773-60 ",.01)
 ;;43353-0773-60
 ;;9002226.02101,"1224,43353-0773-60 ",.02)
 ;;43353-0773-60
 ;;9002226.02101,"1224,43353-0774-15 ",.01)
 ;;43353-0774-15
 ;;9002226.02101,"1224,43353-0774-15 ",.02)
 ;;43353-0774-15
 ;;9002226.02101,"1224,43353-0774-45 ",.01)
 ;;43353-0774-45
 ;;9002226.02101,"1224,43353-0774-45 ",.02)
 ;;43353-0774-45
 ;;9002226.02101,"1224,43353-0774-60 ",.01)
 ;;43353-0774-60
 ;;9002226.02101,"1224,43353-0774-60 ",.02)
 ;;43353-0774-60
 ;;9002226.02101,"1224,43353-0815-15 ",.01)
 ;;43353-0815-15
 ;;9002226.02101,"1224,43353-0815-15 ",.02)
 ;;43353-0815-15
 ;;9002226.02101,"1224,43353-0815-30 ",.01)
 ;;43353-0815-30
 ;;9002226.02101,"1224,43353-0815-30 ",.02)
 ;;43353-0815-30
 ;;9002226.02101,"1224,43353-0815-45 ",.01)
 ;;43353-0815-45
 ;;9002226.02101,"1224,43353-0815-45 ",.02)
 ;;43353-0815-45
 ;;9002226.02101,"1224,43353-0815-60 ",.01)
 ;;43353-0815-60
 ;;9002226.02101,"1224,43353-0815-60 ",.02)
 ;;43353-0815-60
 ;;9002226.02101,"1224,43353-0821-15 ",.01)
 ;;43353-0821-15
 ;;9002226.02101,"1224,43353-0821-15 ",.02)
 ;;43353-0821-15
 ;;9002226.02101,"1224,43353-0821-45 ",.01)
 ;;43353-0821-45
 ;;9002226.02101,"1224,43353-0821-45 ",.02)
 ;;43353-0821-45
 ;;9002226.02101,"1224,43353-0826-15 ",.01)
 ;;43353-0826-15
 ;;9002226.02101,"1224,43353-0826-15 ",.02)
 ;;43353-0826-15
 ;;9002226.02101,"1224,43353-0826-45 ",.01)
 ;;43353-0826-45
 ;;9002226.02101,"1224,43353-0826-45 ",.02)
 ;;43353-0826-45
 ;;9002226.02101,"1224,43353-0827-15 ",.01)
 ;;43353-0827-15
 ;;9002226.02101,"1224,43353-0827-15 ",.02)
 ;;43353-0827-15
 ;;9002226.02101,"1224,43353-0827-30 ",.01)
 ;;43353-0827-30
 ;;9002226.02101,"1224,43353-0827-30 ",.02)
 ;;43353-0827-30
 ;;9002226.02101,"1224,43353-0827-45 ",.01)
 ;;43353-0827-45
 ;;9002226.02101,"1224,43353-0827-45 ",.02)
 ;;43353-0827-45
 ;;9002226.02101,"1224,43353-0827-53 ",.01)
 ;;43353-0827-53
 ;;9002226.02101,"1224,43353-0827-53 ",.02)
 ;;43353-0827-53
 ;;9002226.02101,"1224,43353-0827-60 ",.01)
 ;;43353-0827-60
 ;;9002226.02101,"1224,43353-0827-60 ",.02)
 ;;43353-0827-60
 ;;9002226.02101,"1224,43353-0843-15 ",.01)
 ;;43353-0843-15
 ;;9002226.02101,"1224,43353-0843-15 ",.02)
 ;;43353-0843-15
 ;;9002226.02101,"1224,43353-0843-30 ",.01)
 ;;43353-0843-30
 ;;9002226.02101,"1224,43353-0843-30 ",.02)
 ;;43353-0843-30
 ;;9002226.02101,"1224,43353-0843-45 ",.01)
 ;;43353-0843-45
 ;;9002226.02101,"1224,43353-0843-45 ",.02)
 ;;43353-0843-45
 ;;9002226.02101,"1224,43353-0844-30 ",.01)
 ;;43353-0844-30
 ;;9002226.02101,"1224,43353-0844-30 ",.02)
 ;;43353-0844-30
 ;;9002226.02101,"1224,43353-0844-45 ",.01)
 ;;43353-0844-45
 ;;9002226.02101,"1224,43353-0844-45 ",.02)
 ;;43353-0844-45
 ;;9002226.02101,"1224,43353-0851-09 ",.01)
 ;;43353-0851-09
 ;;9002226.02101,"1224,43353-0851-09 ",.02)
 ;;43353-0851-09
 ;;9002226.02101,"1224,43353-0856-15 ",.01)
 ;;43353-0856-15
 ;;9002226.02101,"1224,43353-0856-15 ",.02)
 ;;43353-0856-15
 ;;9002226.02101,"1224,43353-0856-17 ",.01)
 ;;43353-0856-17
 ;;9002226.02101,"1224,43353-0856-17 ",.02)
 ;;43353-0856-17
 ;;9002226.02101,"1224,43353-0856-30 ",.01)
 ;;43353-0856-30
 ;;9002226.02101,"1224,43353-0856-30 ",.02)
 ;;43353-0856-30
 ;;9002226.02101,"1224,43353-0856-45 ",.01)
 ;;43353-0856-45
 ;;9002226.02101,"1224,43353-0856-45 ",.02)
 ;;43353-0856-45
 ;;9002226.02101,"1224,43353-0856-60 ",.01)
 ;;43353-0856-60
 ;;9002226.02101,"1224,43353-0856-60 ",.02)
 ;;43353-0856-60
 ;;9002226.02101,"1224,43353-0856-88 ",.01)
 ;;43353-0856-88
 ;;9002226.02101,"1224,43353-0856-88 ",.02)
 ;;43353-0856-88
 ;;9002226.02101,"1224,43353-0858-15 ",.01)
 ;;43353-0858-15
 ;;9002226.02101,"1224,43353-0858-15 ",.02)
 ;;43353-0858-15
 ;;9002226.02101,"1224,43353-0858-19 ",.01)
 ;;43353-0858-19
 ;;9002226.02101,"1224,43353-0858-19 ",.02)
 ;;43353-0858-19
 ;;9002226.02101,"1224,43353-0858-30 ",.01)
 ;;43353-0858-30
 ;;9002226.02101,"1224,43353-0858-30 ",.02)
 ;;43353-0858-30
 ;;9002226.02101,"1224,43353-0858-45 ",.01)
 ;;43353-0858-45
 ;;9002226.02101,"1224,43353-0858-45 ",.02)
 ;;43353-0858-45
 ;;9002226.02101,"1224,43353-0858-60 ",.01)
 ;;43353-0858-60
 ;;9002226.02101,"1224,43353-0858-60 ",.02)
 ;;43353-0858-60
 ;;9002226.02101,"1224,43353-0858-98 ",.01)
 ;;43353-0858-98
 ;;9002226.02101,"1224,43353-0858-98 ",.02)
 ;;43353-0858-98
 ;;9002226.02101,"1224,43353-0860-30 ",.01)
 ;;43353-0860-30
 ;;9002226.02101,"1224,43353-0860-30 ",.02)
 ;;43353-0860-30
 ;;9002226.02101,"1224,43353-0860-45 ",.01)
 ;;43353-0860-45
 ;;9002226.02101,"1224,43353-0860-45 ",.02)
 ;;43353-0860-45
 ;;9002226.02101,"1224,43353-0860-60 ",.01)
 ;;43353-0860-60
 ;;9002226.02101,"1224,43353-0860-60 ",.02)
 ;;43353-0860-60
 ;;9002226.02101,"1224,43353-0860-88 ",.01)
 ;;43353-0860-88
 ;;9002226.02101,"1224,43353-0860-88 ",.02)
 ;;43353-0860-88
 ;;9002226.02101,"1224,43353-0861-09 ",.01)
 ;;43353-0861-09
 ;;9002226.02101,"1224,43353-0861-09 ",.02)
 ;;43353-0861-09
 ;;9002226.02101,"1224,43353-0861-15 ",.01)
 ;;43353-0861-15
 ;;9002226.02101,"1224,43353-0861-15 ",.02)
 ;;43353-0861-15
 ;;9002226.02101,"1224,43353-0861-30 ",.01)
 ;;43353-0861-30
 ;;9002226.02101,"1224,43353-0861-30 ",.02)
 ;;43353-0861-30
 ;;9002226.02101,"1224,43353-0861-45 ",.01)
 ;;43353-0861-45
 ;;9002226.02101,"1224,43353-0861-45 ",.02)
 ;;43353-0861-45
 ;;9002226.02101,"1224,43353-0861-60 ",.01)
 ;;43353-0861-60
 ;;9002226.02101,"1224,43353-0861-60 ",.02)
 ;;43353-0861-60
 ;;9002226.02101,"1224,43353-0861-88 ",.01)
 ;;43353-0861-88
 ;;9002226.02101,"1224,43353-0861-88 ",.02)
 ;;43353-0861-88
 ;;9002226.02101,"1224,43353-0871-45 ",.01)
 ;;43353-0871-45
 ;;9002226.02101,"1224,43353-0871-45 ",.02)
 ;;43353-0871-45
 ;;9002226.02101,"1224,43353-0873-15 ",.01)
 ;;43353-0873-15
 ;;9002226.02101,"1224,43353-0873-15 ",.02)
 ;;43353-0873-15
 ;;9002226.02101,"1224,43353-0873-30 ",.01)
 ;;43353-0873-30
 ;;9002226.02101,"1224,43353-0873-30 ",.02)
 ;;43353-0873-30
 ;;9002226.02101,"1224,43353-0873-45 ",.01)
 ;;43353-0873-45
 ;;9002226.02101,"1224,43353-0873-45 ",.02)
 ;;43353-0873-45
 ;;9002226.02101,"1224,43353-0875-30 ",.01)
 ;;43353-0875-30
 ;;9002226.02101,"1224,43353-0875-30 ",.02)
 ;;43353-0875-30
 ;;9002226.02101,"1224,43353-0875-60 ",.01)
 ;;43353-0875-60
 ;;9002226.02101,"1224,43353-0875-60 ",.02)
 ;;43353-0875-60
 ;;9002226.02101,"1224,43353-0875-88 ",.01)
 ;;43353-0875-88
 ;;9002226.02101,"1224,43353-0875-88 ",.02)
 ;;43353-0875-88
 ;;9002226.02101,"1224,43353-0892-09 ",.01)
 ;;43353-0892-09
 ;;9002226.02101,"1224,43353-0892-09 ",.02)
 ;;43353-0892-09
 ;;9002226.02101,"1224,43353-0892-45 ",.01)
 ;;43353-0892-45
 ;;9002226.02101,"1224,43353-0892-45 ",.02)
 ;;43353-0892-45
 ;;9002226.02101,"1224,43353-0904-09 ",.01)
 ;;43353-0904-09
 ;;9002226.02101,"1224,43353-0904-09 ",.02)
 ;;43353-0904-09
 ;;9002226.02101,"1224,43353-0904-45 ",.01)
 ;;43353-0904-45
 ;;9002226.02101,"1224,43353-0904-45 ",.02)
 ;;43353-0904-45
 ;;9002226.02101,"1224,43353-0904-60 ",.01)
 ;;43353-0904-60
 ;;9002226.02101,"1224,43353-0904-60 ",.02)
 ;;43353-0904-60
 ;;9002226.02101,"1224,43353-0959-15 ",.01)
 ;;43353-0959-15
 ;;9002226.02101,"1224,43353-0959-15 ",.02)
 ;;43353-0959-15
 ;;9002226.02101,"1224,43353-0959-45 ",.01)
 ;;43353-0959-45
 ;;9002226.02101,"1224,43353-0959-45 ",.02)
 ;;43353-0959-45
 ;;9002226.02101,"1224,43353-0964-45 ",.01)
 ;;43353-0964-45
 ;;9002226.02101,"1224,43353-0964-45 ",.02)
 ;;43353-0964-45
 ;;9002226.02101,"1224,43353-0964-60 ",.01)
 ;;43353-0964-60
 ;;9002226.02101,"1224,43353-0964-60 ",.02)
 ;;43353-0964-60
 ;;9002226.02101,"1224,43353-0966-45 ",.01)
 ;;43353-0966-45
 ;;9002226.02101,"1224,43353-0966-45 ",.02)
 ;;43353-0966-45
 ;;9002226.02101,"1224,43353-0981-15 ",.01)
 ;;43353-0981-15
 ;;9002226.02101,"1224,43353-0981-15 ",.02)
 ;;43353-0981-15
 ;;9002226.02101,"1224,43353-0981-30 ",.01)
 ;;43353-0981-30
 ;;9002226.02101,"1224,43353-0981-30 ",.02)
 ;;43353-0981-30
 ;;9002226.02101,"1224,43353-0981-45 ",.01)
 ;;43353-0981-45
 ;;9002226.02101,"1224,43353-0981-45 ",.02)
 ;;43353-0981-45
 ;;9002226.02101,"1224,43353-0983-15 ",.01)
 ;;43353-0983-15
 ;;9002226.02101,"1224,43353-0983-15 ",.02)
 ;;43353-0983-15
 ;;9002226.02101,"1224,43353-0983-30 ",.01)
 ;;43353-0983-30
 ;;9002226.02101,"1224,43353-0983-30 ",.02)
 ;;43353-0983-30
 ;;9002226.02101,"1224,43353-0983-45 ",.01)
 ;;43353-0983-45
 ;;9002226.02101,"1224,43353-0983-45 ",.02)
 ;;43353-0983-45
 ;;9002226.02101,"1224,43353-0995-45 ",.01)
 ;;43353-0995-45
 ;;9002226.02101,"1224,43353-0995-45 ",.02)
 ;;43353-0995-45
 ;;9002226.02101,"1224,43598-0313-30 ",.01)
 ;;43598-0313-30
 ;;9002226.02101,"1224,43598-0313-30 ",.02)
 ;;43598-0313-30
 ;;9002226.02101,"1224,43598-0314-30 ",.01)
 ;;43598-0314-30
 ;;9002226.02101,"1224,43598-0314-30 ",.02)
 ;;43598-0314-30
 ;;9002226.02101,"1224,43598-0315-30 ",.01)
 ;;43598-0315-30
 ;;9002226.02101,"1224,43598-0315-30 ",.02)
 ;;43598-0315-30
 ;;9002226.02101,"1224,43598-0315-90 ",.01)
 ;;43598-0315-90
 ;;9002226.02101,"1224,43598-0315-90 ",.02)
 ;;43598-0315-90
 ;;9002226.02101,"1224,43598-0316-30 ",.01)
 ;;43598-0316-30
 ;;9002226.02101,"1224,43598-0316-30 ",.02)
 ;;43598-0316-30
 ;;9002226.02101,"1224,43598-0316-90 ",.01)
 ;;43598-0316-90
 ;;9002226.02101,"1224,43598-0316-90 ",.02)
 ;;43598-0316-90
 ;;9002226.02101,"1224,43598-0317-30 ",.01)
 ;;43598-0317-30
 ;;9002226.02101,"1224,43598-0317-30 ",.02)
 ;;43598-0317-30
 ;;9002226.02101,"1224,43598-0318-30 ",.01)
 ;;43598-0318-30
 ;;9002226.02101,"1224,43598-0318-30 ",.02)
 ;;43598-0318-30
 ;;9002226.02101,"1224,43598-0318-90 ",.01)
 ;;43598-0318-90
 ;;9002226.02101,"1224,43598-0318-90 ",.02)
 ;;43598-0318-90
 ;;9002226.02101,"1224,43598-0319-30 ",.01)
 ;;43598-0319-30
 ;;9002226.02101,"1224,43598-0319-30 ",.02)
 ;;43598-0319-30
 ;;9002226.02101,"1224,43598-0319-90 ",.01)
 ;;43598-0319-90
 ;;9002226.02101,"1224,43598-0319-90 ",.02)
 ;;43598-0319-90
 ;;9002226.02101,"1224,43598-0320-30 ",.01)
 ;;43598-0320-30
 ;;9002226.02101,"1224,43598-0320-30 ",.02)
 ;;43598-0320-30
 ;;9002226.02101,"1224,43598-0321-30 ",.01)
 ;;43598-0321-30
 ;;9002226.02101,"1224,43598-0321-30 ",.02)
 ;;43598-0321-30
 ;;9002226.02101,"1224,43598-0321-90 ",.01)
 ;;43598-0321-90
 ;;9002226.02101,"1224,43598-0321-90 ",.02)
 ;;43598-0321-90
 ;;9002226.02101,"1224,43598-0322-30 ",.01)
 ;;43598-0322-30
 ;;9002226.02101,"1224,43598-0322-30 ",.02)
 ;;43598-0322-30
 ;;9002226.02101,"1224,43598-0322-90 ",.01)
 ;;43598-0322-90
 ;;9002226.02101,"1224,43598-0322-90 ",.02)
 ;;43598-0322-90
 ;;9002226.02101,"1224,43598-0323-30 ",.01)
 ;;43598-0323-30
 ;;9002226.02101,"1224,43598-0323-30 ",.02)
 ;;43598-0323-30
 ;;9002226.02101,"1224,43598-0583-10 ",.01)
 ;;43598-0583-10
 ;;9002226.02101,"1224,43598-0583-10 ",.02)
 ;;43598-0583-10
 ;;9002226.02101,"1224,43598-0583-30 ",.01)
 ;;43598-0583-30
 ;;9002226.02101,"1224,43598-0583-30 ",.02)
 ;;43598-0583-30
 ;;9002226.02101,"1224,43598-0583-90 ",.01)
 ;;43598-0583-90
 ;;9002226.02101,"1224,43598-0583-90 ",.02)
 ;;43598-0583-90