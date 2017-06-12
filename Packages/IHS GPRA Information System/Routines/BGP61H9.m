BGP61H9 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1221,43353-0520-80 ",.02)
 ;;43353-0520-80
 ;;9002226.02101,"1221,43353-0530-60 ",.01)
 ;;43353-0530-60
 ;;9002226.02101,"1221,43353-0530-60 ",.02)
 ;;43353-0530-60
 ;;9002226.02101,"1221,43353-0530-80 ",.01)
 ;;43353-0530-80
 ;;9002226.02101,"1221,43353-0530-80 ",.02)
 ;;43353-0530-80
 ;;9002226.02101,"1221,43353-0585-94 ",.01)
 ;;43353-0585-94
 ;;9002226.02101,"1221,43353-0585-94 ",.02)
 ;;43353-0585-94
 ;;9002226.02101,"1221,43353-0589-30 ",.01)
 ;;43353-0589-30
 ;;9002226.02101,"1221,43353-0589-30 ",.02)
 ;;43353-0589-30
 ;;9002226.02101,"1221,43353-0589-53 ",.01)
 ;;43353-0589-53
 ;;9002226.02101,"1221,43353-0589-53 ",.02)
 ;;43353-0589-53
 ;;9002226.02101,"1221,43353-0589-60 ",.01)
 ;;43353-0589-60
 ;;9002226.02101,"1221,43353-0589-60 ",.02)
 ;;43353-0589-60
 ;;9002226.02101,"1221,43353-0589-70 ",.01)
 ;;43353-0589-70
 ;;9002226.02101,"1221,43353-0589-70 ",.02)
 ;;43353-0589-70
 ;;9002226.02101,"1221,43353-0589-75 ",.01)
 ;;43353-0589-75
 ;;9002226.02101,"1221,43353-0589-75 ",.02)
 ;;43353-0589-75
 ;;9002226.02101,"1221,43353-0589-80 ",.01)
 ;;43353-0589-80
 ;;9002226.02101,"1221,43353-0589-80 ",.02)
 ;;43353-0589-80
 ;;9002226.02101,"1221,43353-0589-92 ",.01)
 ;;43353-0589-92
 ;;9002226.02101,"1221,43353-0589-92 ",.02)
 ;;43353-0589-92
 ;;9002226.02101,"1221,43353-0589-94 ",.01)
 ;;43353-0589-94
 ;;9002226.02101,"1221,43353-0589-94 ",.02)
 ;;43353-0589-94
 ;;9002226.02101,"1221,43353-0589-96 ",.01)
 ;;43353-0589-96
 ;;9002226.02101,"1221,43353-0589-96 ",.02)
 ;;43353-0589-96
 ;;9002226.02101,"1221,43353-0811-53 ",.01)
 ;;43353-0811-53
 ;;9002226.02101,"1221,43353-0811-53 ",.02)
 ;;43353-0811-53
 ;;9002226.02101,"1221,43353-0842-30 ",.01)
 ;;43353-0842-30
 ;;9002226.02101,"1221,43353-0842-30 ",.02)
 ;;43353-0842-30
 ;;9002226.02101,"1221,43353-0885-45 ",.01)
 ;;43353-0885-45
 ;;9002226.02101,"1221,43353-0885-45 ",.02)
 ;;43353-0885-45
 ;;9002226.02101,"1221,43353-0885-73 ",.01)
 ;;43353-0885-73
 ;;9002226.02101,"1221,43353-0885-73 ",.02)
 ;;43353-0885-73
 ;;9002226.02101,"1221,43353-0885-86 ",.01)
 ;;43353-0885-86
 ;;9002226.02101,"1221,43353-0885-86 ",.02)
 ;;43353-0885-86
 ;;9002226.02101,"1221,43353-0894-30 ",.01)
 ;;43353-0894-30
 ;;9002226.02101,"1221,43353-0894-30 ",.02)
 ;;43353-0894-30
 ;;9002226.02101,"1221,43353-0936-30 ",.01)
 ;;43353-0936-30
 ;;9002226.02101,"1221,43353-0936-30 ",.02)
 ;;43353-0936-30
 ;;9002226.02101,"1221,43353-0936-45 ",.01)
 ;;43353-0936-45
 ;;9002226.02101,"1221,43353-0936-45 ",.02)
 ;;43353-0936-45
 ;;9002226.02101,"1221,43353-0936-73 ",.01)
 ;;43353-0936-73
 ;;9002226.02101,"1221,43353-0936-73 ",.02)
 ;;43353-0936-73
 ;;9002226.02101,"1221,43353-0936-86 ",.01)
 ;;43353-0936-86
 ;;9002226.02101,"1221,43353-0936-86 ",.02)
 ;;43353-0936-86
 ;;9002226.02101,"1221,43353-0982-30 ",.01)
 ;;43353-0982-30
 ;;9002226.02101,"1221,43353-0982-30 ",.02)
 ;;43353-0982-30
 ;;9002226.02101,"1221,43353-0987-30 ",.01)
 ;;43353-0987-30
 ;;9002226.02101,"1221,43353-0987-30 ",.02)
 ;;43353-0987-30
 ;;9002226.02101,"1221,43353-0987-45 ",.01)
 ;;43353-0987-45
 ;;9002226.02101,"1221,43353-0987-45 ",.02)
 ;;43353-0987-45
 ;;9002226.02101,"1221,43353-0987-73 ",.01)
 ;;43353-0987-73
 ;;9002226.02101,"1221,43353-0987-73 ",.02)
 ;;43353-0987-73
 ;;9002226.02101,"1221,43353-0987-80 ",.01)
 ;;43353-0987-80
 ;;9002226.02101,"1221,43353-0987-80 ",.02)
 ;;43353-0987-80
 ;;9002226.02101,"1221,43353-0987-86 ",.01)
 ;;43353-0987-86
 ;;9002226.02101,"1221,43353-0987-86 ",.02)
 ;;43353-0987-86
 ;;9002226.02101,"1221,43547-0248-10 ",.01)
 ;;43547-0248-10
 ;;9002226.02101,"1221,43547-0248-10 ",.02)
 ;;43547-0248-10
 ;;9002226.02101,"1221,43547-0248-11 ",.01)
 ;;43547-0248-11
 ;;9002226.02101,"1221,43547-0248-11 ",.02)
 ;;43547-0248-11
 ;;9002226.02101,"1221,43547-0248-50 ",.01)
 ;;43547-0248-50
 ;;9002226.02101,"1221,43547-0248-50 ",.02)
 ;;43547-0248-50
 ;;9002226.02101,"1221,43547-0249-10 ",.01)
 ;;43547-0249-10
 ;;9002226.02101,"1221,43547-0249-10 ",.02)
 ;;43547-0249-10
 ;;9002226.02101,"1221,43547-0249-11 ",.01)
 ;;43547-0249-11
 ;;9002226.02101,"1221,43547-0249-11 ",.02)
 ;;43547-0249-11
 ;;9002226.02101,"1221,43547-0249-50 ",.01)
 ;;43547-0249-50
 ;;9002226.02101,"1221,43547-0249-50 ",.02)
 ;;43547-0249-50
 ;;9002226.02101,"1221,43547-0250-10 ",.01)
 ;;43547-0250-10
 ;;9002226.02101,"1221,43547-0250-10 ",.02)
 ;;43547-0250-10
 ;;9002226.02101,"1221,43547-0250-11 ",.01)
 ;;43547-0250-11
 ;;9002226.02101,"1221,43547-0250-11 ",.02)
 ;;43547-0250-11
 ;;9002226.02101,"1221,43547-0250-50 ",.01)
 ;;43547-0250-50
 ;;9002226.02101,"1221,43547-0250-50 ",.02)
 ;;43547-0250-50
 ;;9002226.02101,"1221,43547-0320-10 ",.01)
 ;;43547-0320-10
 ;;9002226.02101,"1221,43547-0320-10 ",.02)
 ;;43547-0320-10
 ;;9002226.02101,"1221,43547-0320-11 ",.01)
 ;;43547-0320-11
 ;;9002226.02101,"1221,43547-0320-11 ",.02)
 ;;43547-0320-11
 ;;9002226.02101,"1221,43547-0320-50 ",.01)
 ;;43547-0320-50
 ;;9002226.02101,"1221,43547-0320-50 ",.02)
 ;;43547-0320-50
 ;;9002226.02101,"1221,43547-0321-10 ",.01)
 ;;43547-0321-10
 ;;9002226.02101,"1221,43547-0321-10 ",.02)
 ;;43547-0321-10
 ;;9002226.02101,"1221,43547-0321-50 ",.01)
 ;;43547-0321-50
 ;;9002226.02101,"1221,43547-0321-50 ",.02)
 ;;43547-0321-50
 ;;9002226.02101,"1221,43547-0322-10 ",.01)
 ;;43547-0322-10
 ;;9002226.02101,"1221,43547-0322-10 ",.02)
 ;;43547-0322-10
 ;;9002226.02101,"1221,43547-0322-50 ",.01)
 ;;43547-0322-50
 ;;9002226.02101,"1221,43547-0322-50 ",.02)
 ;;43547-0322-50
 ;;9002226.02101,"1221,43547-0357-10 ",.01)
 ;;43547-0357-10
 ;;9002226.02101,"1221,43547-0357-10 ",.02)
 ;;43547-0357-10
 ;;9002226.02101,"1221,43547-0357-11 ",.01)
 ;;43547-0357-11
 ;;9002226.02101,"1221,43547-0357-11 ",.02)
 ;;43547-0357-11
 ;;9002226.02101,"1221,43547-0357-50 ",.01)
 ;;43547-0357-50
 ;;9002226.02101,"1221,43547-0357-50 ",.02)
 ;;43547-0357-50
 ;;9002226.02101,"1221,43547-0358-10 ",.01)
 ;;43547-0358-10
 ;;9002226.02101,"1221,43547-0358-10 ",.02)
 ;;43547-0358-10
 ;;9002226.02101,"1221,43547-0358-50 ",.01)
 ;;43547-0358-50
 ;;9002226.02101,"1221,43547-0358-50 ",.02)
 ;;43547-0358-50
 ;;9002226.02101,"1221,43547-0359-10 ",.01)
 ;;43547-0359-10
 ;;9002226.02101,"1221,43547-0359-10 ",.02)
 ;;43547-0359-10
 ;;9002226.02101,"1221,43547-0359-50 ",.01)
 ;;43547-0359-50
 ;;9002226.02101,"1221,43547-0359-50 ",.02)
 ;;43547-0359-50
 ;;9002226.02101,"1221,43683-0131-30 ",.01)
 ;;43683-0131-30
 ;;9002226.02101,"1221,43683-0131-30 ",.02)
 ;;43683-0131-30
 ;;9002226.02101,"1221,43683-0131-60 ",.01)
 ;;43683-0131-60
 ;;9002226.02101,"1221,43683-0131-60 ",.02)
 ;;43683-0131-60
 ;;9002226.02101,"1221,43683-0132-30 ",.01)
 ;;43683-0132-30
 ;;9002226.02101,"1221,43683-0132-30 ",.02)
 ;;43683-0132-30
 ;;9002226.02101,"1221,43683-0132-60 ",.01)
 ;;43683-0132-60
 ;;9002226.02101,"1221,43683-0132-60 ",.02)
 ;;43683-0132-60
 ;;9002226.02101,"1221,45963-0753-02 ",.01)
 ;;45963-0753-02
 ;;9002226.02101,"1221,45963-0753-02 ",.02)
 ;;45963-0753-02
 ;;9002226.02101,"1221,47463-0246-30 ",.01)
 ;;47463-0246-30
 ;;9002226.02101,"1221,47463-0246-30 ",.02)
 ;;47463-0246-30
 ;;9002226.02101,"1221,47463-0247-30 ",.01)
 ;;47463-0247-30
 ;;9002226.02101,"1221,47463-0247-30 ",.02)
 ;;47463-0247-30
 ;;9002226.02101,"1221,47463-0434-60 ",.01)
 ;;47463-0434-60
 ;;9002226.02101,"1221,47463-0434-60 ",.02)
 ;;47463-0434-60
 ;;9002226.02101,"1221,47463-0435-60 ",.01)
 ;;47463-0435-60
 ;;9002226.02101,"1221,47463-0435-60 ",.02)
 ;;47463-0435-60
 ;;9002226.02101,"1221,47463-0508-30 ",.01)
 ;;47463-0508-30
 ;;9002226.02101,"1221,47463-0508-30 ",.02)
 ;;47463-0508-30
 ;;9002226.02101,"1221,47463-0509-30 ",.01)
 ;;47463-0509-30
 ;;9002226.02101,"1221,47463-0509-30 ",.02)
 ;;47463-0509-30
 ;;9002226.02101,"1221,47463-0509-60 ",.01)
 ;;47463-0509-60
 ;;9002226.02101,"1221,47463-0509-60 ",.02)
 ;;47463-0509-60
 ;;9002226.02101,"1221,47463-0509-74 ",.01)
 ;;47463-0509-74
 ;;9002226.02101,"1221,47463-0509-74 ",.02)
 ;;47463-0509-74
 ;;9002226.02101,"1221,47463-0509-90 ",.01)
 ;;47463-0509-90
 ;;9002226.02101,"1221,47463-0509-90 ",.02)
 ;;47463-0509-90
 ;;9002226.02101,"1221,47463-0510-30 ",.01)
 ;;47463-0510-30
 ;;9002226.02101,"1221,47463-0510-30 ",.02)
 ;;47463-0510-30
 ;;9002226.02101,"1221,47463-0510-60 ",.01)
 ;;47463-0510-60
 ;;9002226.02101,"1221,47463-0510-60 ",.02)
 ;;47463-0510-60
 ;;9002226.02101,"1221,47463-0510-71 ",.01)
 ;;47463-0510-71
 ;;9002226.02101,"1221,47463-0510-71 ",.02)
 ;;47463-0510-71
 ;;9002226.02101,"1221,47463-0510-74 ",.01)
 ;;47463-0510-74
 ;;9002226.02101,"1221,47463-0510-74 ",.02)
 ;;47463-0510-74
 ;;9002226.02101,"1221,47463-0510-90 ",.01)
 ;;47463-0510-90
 ;;9002226.02101,"1221,47463-0510-90 ",.02)
 ;;47463-0510-90
 ;;9002226.02101,"1221,47463-0611-60 ",.01)
 ;;47463-0611-60
 ;;9002226.02101,"1221,47463-0611-60 ",.02)
 ;;47463-0611-60
 ;;9002226.02101,"1221,47463-0611-74 ",.01)
 ;;47463-0611-74
 ;;9002226.02101,"1221,47463-0611-74 ",.02)
 ;;47463-0611-74
 ;;9002226.02101,"1221,47463-0612-30 ",.01)
 ;;47463-0612-30
 ;;9002226.02101,"1221,47463-0612-30 ",.02)
 ;;47463-0612-30
 ;;9002226.02101,"1221,49999-0106-00 ",.01)
 ;;49999-0106-00
 ;;9002226.02101,"1221,49999-0106-00 ",.02)
 ;;49999-0106-00
 ;;9002226.02101,"1221,49999-0106-01 ",.01)
 ;;49999-0106-01
 ;;9002226.02101,"1221,49999-0106-01 ",.02)
 ;;49999-0106-01
 ;;9002226.02101,"1221,49999-0106-28 ",.01)
 ;;49999-0106-28
 ;;9002226.02101,"1221,49999-0106-28 ",.02)
 ;;49999-0106-28
 ;;9002226.02101,"1221,49999-0106-30 ",.01)
 ;;49999-0106-30
 ;;9002226.02101,"1221,49999-0106-30 ",.02)
 ;;49999-0106-30
 ;;9002226.02101,"1221,49999-0106-60 ",.01)
 ;;49999-0106-60
 ;;9002226.02101,"1221,49999-0106-60 ",.02)
 ;;49999-0106-60
 ;;9002226.02101,"1221,49999-0106-90 ",.01)
 ;;49999-0106-90
 ;;9002226.02101,"1221,49999-0106-90 ",.02)
 ;;49999-0106-90
 ;;9002226.02101,"1221,49999-0116-00 ",.01)
 ;;49999-0116-00
 ;;9002226.02101,"1221,49999-0116-00 ",.02)
 ;;49999-0116-00
 ;;9002226.02101,"1221,49999-0116-30 ",.01)
 ;;49999-0116-30
 ;;9002226.02101,"1221,49999-0116-30 ",.02)
 ;;49999-0116-30
 ;;9002226.02101,"1221,49999-0116-60 ",.01)
 ;;49999-0116-60
 ;;9002226.02101,"1221,49999-0116-60 ",.02)
 ;;49999-0116-60
 ;;9002226.02101,"1221,49999-0401-30 ",.01)
 ;;49999-0401-30
 ;;9002226.02101,"1221,49999-0401-30 ",.02)
 ;;49999-0401-30
 ;;9002226.02101,"1221,49999-0401-60 ",.01)
 ;;49999-0401-60
 ;;9002226.02101,"1221,49999-0401-60 ",.02)
 ;;49999-0401-60
 ;;9002226.02101,"1221,49999-0401-90 ",.01)
 ;;49999-0401-90
 ;;9002226.02101,"1221,49999-0401-90 ",.02)
 ;;49999-0401-90
 ;;9002226.02101,"1221,49999-0495-30 ",.01)
 ;;49999-0495-30
 ;;9002226.02101,"1221,49999-0495-30 ",.02)
 ;;49999-0495-30
 ;;9002226.02101,"1221,49999-0495-60 ",.01)
 ;;49999-0495-60
 ;;9002226.02101,"1221,49999-0495-60 ",.02)
 ;;49999-0495-60
 ;;9002226.02101,"1221,49999-0660-30 ",.01)
 ;;49999-0660-30
 ;;9002226.02101,"1221,49999-0660-30 ",.02)
 ;;49999-0660-30
 ;;9002226.02101,"1221,49999-0660-60 ",.01)
 ;;49999-0660-60
 ;;9002226.02101,"1221,49999-0660-60 ",.02)
 ;;49999-0660-60
 ;;9002226.02101,"1221,49999-0820-30 ",.01)
 ;;49999-0820-30
 ;;9002226.02101,"1221,49999-0820-30 ",.02)
 ;;49999-0820-30
 ;;9002226.02101,"1221,49999-0820-60 ",.01)
 ;;49999-0820-60
 ;;9002226.02101,"1221,49999-0820-60 ",.02)
 ;;49999-0820-60
 ;;9002226.02101,"1221,49999-0820-90 ",.01)
 ;;49999-0820-90
 ;;9002226.02101,"1221,49999-0820-90 ",.02)
 ;;49999-0820-90
 ;;9002226.02101,"1221,50268-0531-11 ",.01)
 ;;50268-0531-11
 ;;9002226.02101,"1221,50268-0531-11 ",.02)
 ;;50268-0531-11
 ;;9002226.02101,"1221,50268-0531-15 ",.01)
 ;;50268-0531-15
 ;;9002226.02101,"1221,50268-0531-15 ",.02)
 ;;50268-0531-15
 ;;9002226.02101,"1221,50268-0532-11 ",.01)
 ;;50268-0532-11
 ;;9002226.02101,"1221,50268-0532-11 ",.02)
 ;;50268-0532-11
 ;;9002226.02101,"1221,50268-0532-13 ",.01)
 ;;50268-0532-13
 ;;9002226.02101,"1221,50268-0532-13 ",.02)
 ;;50268-0532-13
 ;;9002226.02101,"1221,50458-0540-60 ",.01)
 ;;50458-0540-60
 ;;9002226.02101,"1221,50458-0540-60 ",.02)
 ;;50458-0540-60
 ;;9002226.02101,"1221,50458-0541-60 ",.01)
 ;;50458-0541-60
 ;;9002226.02101,"1221,50458-0541-60 ",.02)
 ;;50458-0541-60
 ;;9002226.02101,"1221,50458-0542-60 ",.01)
 ;;50458-0542-60
 ;;9002226.02101,"1221,50458-0542-60 ",.02)
 ;;50458-0542-60
 ;;9002226.02101,"1221,50458-0543-60 ",.01)
 ;;50458-0543-60
 ;;9002226.02101,"1221,50458-0543-60 ",.02)
 ;;50458-0543-60
 ;;9002226.02101,"1221,50742-0154-01 ",.01)
 ;;50742-0154-01
 ;;9002226.02101,"1221,50742-0154-01 ",.02)
 ;;50742-0154-01
 ;;9002226.02101,"1221,50742-0154-05 ",.01)
 ;;50742-0154-05