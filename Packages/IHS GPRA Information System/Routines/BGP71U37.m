BGP71U37 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1733,51138-0534-10 ",.01)
 ;;51138-0534-10
 ;;9002226.02101,"1733,51138-0534-10 ",.02)
 ;;51138-0534-10
 ;;9002226.02101,"1733,51138-0534-30 ",.01)
 ;;51138-0534-30
 ;;9002226.02101,"1733,51138-0534-30 ",.02)
 ;;51138-0534-30
 ;;9002226.02101,"1733,51138-0535-10 ",.01)
 ;;51138-0535-10
 ;;9002226.02101,"1733,51138-0535-10 ",.02)
 ;;51138-0535-10
 ;;9002226.02101,"1733,51138-0535-30 ",.01)
 ;;51138-0535-30
 ;;9002226.02101,"1733,51138-0535-30 ",.02)
 ;;51138-0535-30
 ;;9002226.02101,"1733,51138-0536-10 ",.01)
 ;;51138-0536-10
 ;;9002226.02101,"1733,51138-0536-10 ",.02)
 ;;51138-0536-10
 ;;9002226.02101,"1733,51138-0536-30 ",.01)
 ;;51138-0536-30
 ;;9002226.02101,"1733,51138-0536-30 ",.02)
 ;;51138-0536-30
 ;;9002226.02101,"1733,51138-0551-30 ",.01)
 ;;51138-0551-30
 ;;9002226.02101,"1733,51138-0551-30 ",.02)
 ;;51138-0551-30
 ;;9002226.02101,"1733,51138-0552-30 ",.01)
 ;;51138-0552-30
 ;;9002226.02101,"1733,51138-0552-30 ",.02)
 ;;51138-0552-30
 ;;9002226.02101,"1733,51138-0553-30 ",.01)
 ;;51138-0553-30
 ;;9002226.02101,"1733,51138-0553-30 ",.02)
 ;;51138-0553-30
 ;;9002226.02101,"1733,51138-0554-30 ",.01)
 ;;51138-0554-30
 ;;9002226.02101,"1733,51138-0554-30 ",.02)
 ;;51138-0554-30
 ;;9002226.02101,"1733,51138-0555-30 ",.01)
 ;;51138-0555-30
 ;;9002226.02101,"1733,51138-0555-30 ",.02)
 ;;51138-0555-30
 ;;9002226.02101,"1733,51138-0556-30 ",.01)
 ;;51138-0556-30
 ;;9002226.02101,"1733,51138-0556-30 ",.02)
 ;;51138-0556-30
 ;;9002226.02101,"1733,51138-0573-30 ",.01)
 ;;51138-0573-30
 ;;9002226.02101,"1733,51138-0573-30 ",.02)
 ;;51138-0573-30
 ;;9002226.02101,"1733,51138-0574-30 ",.01)
 ;;51138-0574-30
 ;;9002226.02101,"1733,51138-0574-30 ",.02)
 ;;51138-0574-30
 ;;9002226.02101,"1733,51138-0575-10 ",.01)
 ;;51138-0575-10
 ;;9002226.02101,"1733,51138-0575-10 ",.02)
 ;;51138-0575-10
 ;;9002226.02101,"1733,51138-0575-30 ",.01)
 ;;51138-0575-30
 ;;9002226.02101,"1733,51138-0575-30 ",.02)
 ;;51138-0575-30
 ;;9002226.02101,"1733,51660-0140-30 ",.01)
 ;;51660-0140-30
 ;;9002226.02101,"1733,51660-0140-30 ",.02)
 ;;51660-0140-30
 ;;9002226.02101,"1733,51660-0141-90 ",.01)
 ;;51660-0141-90
 ;;9002226.02101,"1733,51660-0141-90 ",.02)
 ;;51660-0141-90
 ;;9002226.02101,"1733,51660-0142-90 ",.01)
 ;;51660-0142-90
 ;;9002226.02101,"1733,51660-0142-90 ",.02)
 ;;51660-0142-90
 ;;9002226.02101,"1733,51660-0143-90 ",.01)
 ;;51660-0143-90
 ;;9002226.02101,"1733,51660-0143-90 ",.02)
 ;;51660-0143-90
 ;;9002226.02101,"1733,51672-4037-01 ",.01)
 ;;51672-4037-01
 ;;9002226.02101,"1733,51672-4037-01 ",.02)
 ;;51672-4037-01
 ;;9002226.02101,"1733,51672-4037-03 ",.01)
 ;;51672-4037-03
 ;;9002226.02101,"1733,51672-4037-03 ",.02)
 ;;51672-4037-03
 ;;9002226.02101,"1733,51672-4038-01 ",.01)
 ;;51672-4038-01
 ;;9002226.02101,"1733,51672-4038-01 ",.02)
 ;;51672-4038-01
 ;;9002226.02101,"1733,51672-4038-03 ",.01)
 ;;51672-4038-03
 ;;9002226.02101,"1733,51672-4038-03 ",.02)
 ;;51672-4038-03
 ;;9002226.02101,"1733,51672-4039-01 ",.01)
 ;;51672-4039-01
 ;;9002226.02101,"1733,51672-4039-01 ",.02)
 ;;51672-4039-01
 ;;9002226.02101,"1733,51672-4039-03 ",.01)
 ;;51672-4039-03
 ;;9002226.02101,"1733,51672-4039-03 ",.02)
 ;;51672-4039-03
 ;;9002226.02101,"1733,51672-4040-01 ",.01)
 ;;51672-4040-01
 ;;9002226.02101,"1733,51672-4040-01 ",.02)
 ;;51672-4040-01
 ;;9002226.02101,"1733,51672-4040-03 ",.01)
 ;;51672-4040-03
 ;;9002226.02101,"1733,51672-4040-03 ",.02)
 ;;51672-4040-03
 ;;9002226.02101,"1733,51672-4045-01 ",.01)
 ;;51672-4045-01
 ;;9002226.02101,"1733,51672-4045-01 ",.02)
 ;;51672-4045-01
 ;;9002226.02101,"1733,51672-4046-01 ",.01)
 ;;51672-4046-01
 ;;9002226.02101,"1733,51672-4046-01 ",.02)
 ;;51672-4046-01
 ;;9002226.02101,"1733,52343-0116-30 ",.01)
 ;;52343-0116-30
 ;;9002226.02101,"1733,52343-0116-30 ",.02)
 ;;52343-0116-30
 ;;9002226.02101,"1733,52343-0116-90 ",.01)
 ;;52343-0116-90
 ;;9002226.02101,"1733,52343-0116-90 ",.02)
 ;;52343-0116-90
 ;;9002226.02101,"1733,52343-0116-99 ",.01)
 ;;52343-0116-99
 ;;9002226.02101,"1733,52343-0116-99 ",.02)
 ;;52343-0116-99
 ;;9002226.02101,"1733,52343-0117-30 ",.01)
 ;;52343-0117-30
 ;;9002226.02101,"1733,52343-0117-30 ",.02)
 ;;52343-0117-30
 ;;9002226.02101,"1733,52343-0117-90 ",.01)
 ;;52343-0117-90
 ;;9002226.02101,"1733,52343-0117-90 ",.02)
 ;;52343-0117-90
 ;;9002226.02101,"1733,52343-0117-99 ",.01)
 ;;52343-0117-99
 ;;9002226.02101,"1733,52343-0117-99 ",.02)
 ;;52343-0117-99
 ;;9002226.02101,"1733,52343-0118-30 ",.01)
 ;;52343-0118-30
 ;;9002226.02101,"1733,52343-0118-30 ",.02)
 ;;52343-0118-30
 ;;9002226.02101,"1733,52343-0118-90 ",.01)
 ;;52343-0118-90
 ;;9002226.02101,"1733,52343-0118-90 ",.02)
 ;;52343-0118-90
 ;;9002226.02101,"1733,52343-0118-99 ",.01)
 ;;52343-0118-99
 ;;9002226.02101,"1733,52343-0118-99 ",.02)
 ;;52343-0118-99
 ;;9002226.02101,"1733,52427-0435-90 ",.01)
 ;;52427-0435-90
 ;;9002226.02101,"1733,52427-0435-90 ",.02)
 ;;52427-0435-90
 ;;9002226.02101,"1733,52427-0436-90 ",.01)
 ;;52427-0436-90
 ;;9002226.02101,"1733,52427-0436-90 ",.02)
 ;;52427-0436-90
 ;;9002226.02101,"1733,52427-0437-90 ",.01)
 ;;52427-0437-90
 ;;9002226.02101,"1733,52427-0437-90 ",.02)
 ;;52427-0437-90
 ;;9002226.02101,"1733,52427-0438-90 ",.01)
 ;;52427-0438-90
 ;;9002226.02101,"1733,52427-0438-90 ",.02)
 ;;52427-0438-90
 ;;9002226.02101,"1733,52427-0439-90 ",.01)
 ;;52427-0439-90
 ;;9002226.02101,"1733,52427-0439-90 ",.02)
 ;;52427-0439-90
 ;;9002226.02101,"1733,52427-0440-90 ",.01)
 ;;52427-0440-90
 ;;9002226.02101,"1733,52427-0440-90 ",.02)
 ;;52427-0440-90
 ;;9002226.02101,"1733,52427-0441-90 ",.01)
 ;;52427-0441-90
 ;;9002226.02101,"1733,52427-0441-90 ",.02)
 ;;52427-0441-90
 ;;9002226.02101,"1733,52427-0442-90 ",.01)
 ;;52427-0442-90
 ;;9002226.02101,"1733,52427-0442-90 ",.02)
 ;;52427-0442-90
 ;;9002226.02101,"1733,52427-0443-90 ",.01)
 ;;52427-0443-90
 ;;9002226.02101,"1733,52427-0443-90 ",.02)
 ;;52427-0443-90
 ;;9002226.02101,"1733,52652-1001-01 ",.01)
 ;;52652-1001-01
 ;;9002226.02101,"1733,52652-1001-01 ",.02)
 ;;52652-1001-01
 ;;9002226.02101,"1733,52959-0137-15 ",.01)
 ;;52959-0137-15
 ;;9002226.02101,"1733,52959-0137-15 ",.02)
 ;;52959-0137-15
 ;;9002226.02101,"1733,52959-0180-30 ",.01)
 ;;52959-0180-30
 ;;9002226.02101,"1733,52959-0180-30 ",.02)
 ;;52959-0180-30
 ;;9002226.02101,"1733,52959-0180-60 ",.01)
 ;;52959-0180-60
 ;;9002226.02101,"1733,52959-0180-60 ",.02)
 ;;52959-0180-60
 ;;9002226.02101,"1733,52959-0498-00 ",.01)
 ;;52959-0498-00
 ;;9002226.02101,"1733,52959-0498-00 ",.02)
 ;;52959-0498-00
 ;;9002226.02101,"1733,52959-0728-15 ",.01)
 ;;52959-0728-15
 ;;9002226.02101,"1733,52959-0728-15 ",.02)
 ;;52959-0728-15
 ;;9002226.02101,"1733,52959-0728-20 ",.01)
 ;;52959-0728-20
 ;;9002226.02101,"1733,52959-0728-20 ",.02)
 ;;52959-0728-20
 ;;9002226.02101,"1733,52959-0728-30 ",.01)
 ;;52959-0728-30
 ;;9002226.02101,"1733,52959-0728-30 ",.02)
 ;;52959-0728-30
 ;;9002226.02101,"1733,52959-0728-90 ",.01)
 ;;52959-0728-90
 ;;9002226.02101,"1733,52959-0728-90 ",.02)
 ;;52959-0728-90
 ;;9002226.02101,"1733,52959-0729-30 ",.01)
 ;;52959-0729-30
 ;;9002226.02101,"1733,52959-0729-30 ",.02)
 ;;52959-0729-30
 ;;9002226.02101,"1733,52959-0729-60 ",.01)
 ;;52959-0729-60
 ;;9002226.02101,"1733,52959-0729-60 ",.02)
 ;;52959-0729-60
 ;;9002226.02101,"1733,52959-0729-90 ",.01)
 ;;52959-0729-90
 ;;9002226.02101,"1733,52959-0729-90 ",.02)
 ;;52959-0729-90
 ;;9002226.02101,"1733,52959-0753-00 ",.01)
 ;;52959-0753-00
 ;;9002226.02101,"1733,52959-0753-00 ",.02)
 ;;52959-0753-00
 ;;9002226.02101,"1733,52959-0753-30 ",.01)
 ;;52959-0753-30
 ;;9002226.02101,"1733,52959-0753-30 ",.02)
 ;;52959-0753-30
 ;;9002226.02101,"1733,52959-0753-60 ",.01)
 ;;52959-0753-60
 ;;9002226.02101,"1733,52959-0753-60 ",.02)
 ;;52959-0753-60
 ;;9002226.02101,"1733,52959-0756-30 ",.01)
 ;;52959-0756-30
 ;;9002226.02101,"1733,52959-0756-30 ",.02)
 ;;52959-0756-30
 ;;9002226.02101,"1733,52959-0831-30 ",.01)
 ;;52959-0831-30
 ;;9002226.02101,"1733,52959-0831-30 ",.02)
 ;;52959-0831-30
 ;;9002226.02101,"1733,52959-0835-30 ",.01)
 ;;52959-0835-30
 ;;9002226.02101,"1733,52959-0835-30 ",.02)
 ;;52959-0835-30
 ;;9002226.02101,"1733,52959-0835-60 ",.01)
 ;;52959-0835-60
 ;;9002226.02101,"1733,52959-0835-60 ",.02)
 ;;52959-0835-60
 ;;9002226.02101,"1733,52959-0841-30 ",.01)
 ;;52959-0841-30
 ;;9002226.02101,"1733,52959-0841-30 ",.02)
 ;;52959-0841-30
 ;;9002226.02101,"1733,52959-0841-60 ",.01)
 ;;52959-0841-60
 ;;9002226.02101,"1733,52959-0841-60 ",.02)
 ;;52959-0841-60
 ;;9002226.02101,"1733,52959-0854-20 ",.01)
 ;;52959-0854-20
 ;;9002226.02101,"1733,52959-0854-20 ",.02)
 ;;52959-0854-20
 ;;9002226.02101,"1733,52959-0854-30 ",.01)
 ;;52959-0854-30
 ;;9002226.02101,"1733,52959-0854-30 ",.02)
 ;;52959-0854-30
 ;;9002226.02101,"1733,52959-0907-30 ",.01)
 ;;52959-0907-30
 ;;9002226.02101,"1733,52959-0907-30 ",.02)
 ;;52959-0907-30
 ;;9002226.02101,"1733,52959-0942-30 ",.01)
 ;;52959-0942-30
 ;;9002226.02101,"1733,52959-0942-30 ",.02)
 ;;52959-0942-30
 ;;9002226.02101,"1733,52959-0973-30 ",.01)
 ;;52959-0973-30
 ;;9002226.02101,"1733,52959-0973-30 ",.02)
 ;;52959-0973-30
 ;;9002226.02101,"1733,52959-0975-30 ",.01)
 ;;52959-0975-30
 ;;9002226.02101,"1733,52959-0975-30 ",.02)
 ;;52959-0975-30
 ;;9002226.02101,"1733,52959-0997-30 ",.01)
 ;;52959-0997-30
 ;;9002226.02101,"1733,52959-0997-30 ",.02)
 ;;52959-0997-30
 ;;9002226.02101,"1733,53002-0431-00 ",.01)
 ;;53002-0431-00
 ;;9002226.02101,"1733,53002-0431-00 ",.02)
 ;;53002-0431-00
 ;;9002226.02101,"1733,53002-0431-30 ",.01)
 ;;53002-0431-30
 ;;9002226.02101,"1733,53002-0431-30 ",.02)
 ;;53002-0431-30
 ;;9002226.02101,"1733,53002-0431-60 ",.01)
 ;;53002-0431-60
 ;;9002226.02101,"1733,53002-0431-60 ",.02)
 ;;53002-0431-60
 ;;9002226.02101,"1733,53002-1086-00 ",.01)
 ;;53002-1086-00
 ;;9002226.02101,"1733,53002-1086-00 ",.02)
 ;;53002-1086-00
 ;;9002226.02101,"1733,53002-1086-03 ",.01)
 ;;53002-1086-03
 ;;9002226.02101,"1733,53002-1086-03 ",.02)
 ;;53002-1086-03
 ;;9002226.02101,"1733,53002-1086-06 ",.01)
 ;;53002-1086-06
 ;;9002226.02101,"1733,53002-1086-06 ",.02)
 ;;53002-1086-06
 ;;9002226.02101,"1733,53002-1123-00 ",.01)
 ;;53002-1123-00
 ;;9002226.02101,"1733,53002-1123-00 ",.02)
 ;;53002-1123-00
 ;;9002226.02101,"1733,53002-1123-03 ",.01)
 ;;53002-1123-03
 ;;9002226.02101,"1733,53002-1123-03 ",.02)
 ;;53002-1123-03
 ;;9002226.02101,"1733,53002-1123-06 ",.01)
 ;;53002-1123-06
 ;;9002226.02101,"1733,53002-1123-06 ",.02)
 ;;53002-1123-06
 ;;9002226.02101,"1733,53002-1178-00 ",.01)
 ;;53002-1178-00
 ;;9002226.02101,"1733,53002-1178-00 ",.02)
 ;;53002-1178-00
 ;;9002226.02101,"1733,53002-1178-03 ",.01)
 ;;53002-1178-03
 ;;9002226.02101,"1733,53002-1178-03 ",.02)
 ;;53002-1178-03
 ;;9002226.02101,"1733,53002-1178-06 ",.01)
 ;;53002-1178-06
 ;;9002226.02101,"1733,53002-1178-06 ",.02)
 ;;53002-1178-06
 ;;9002226.02101,"1733,53002-1225-00 ",.01)
 ;;53002-1225-00
 ;;9002226.02101,"1733,53002-1225-00 ",.02)
 ;;53002-1225-00
 ;;9002226.02101,"1733,53002-1225-03 ",.01)
 ;;53002-1225-03
 ;;9002226.02101,"1733,53002-1225-03 ",.02)
 ;;53002-1225-03
 ;;9002226.02101,"1733,53002-1225-06 ",.01)
 ;;53002-1225-06
 ;;9002226.02101,"1733,53002-1225-06 ",.02)
 ;;53002-1225-06
 ;;9002226.02101,"1733,53002-1463-00 ",.01)
 ;;53002-1463-00
 ;;9002226.02101,"1733,53002-1463-00 ",.02)
 ;;53002-1463-00
 ;;9002226.02101,"1733,53002-1463-03 ",.01)
 ;;53002-1463-03
 ;;9002226.02101,"1733,53002-1463-03 ",.02)
 ;;53002-1463-03
 ;;9002226.02101,"1733,53217-0003-00 ",.01)
 ;;53217-0003-00
 ;;9002226.02101,"1733,53217-0003-00 ",.02)
 ;;53217-0003-00
 ;;9002226.02101,"1733,53217-0003-30 ",.01)
 ;;53217-0003-30