BGP47Y62 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,68462-0369-90 ",.01)
 ;;68462-0369-90
 ;;9002226.02101,"1729,68462-0369-90 ",.02)
 ;;68462-0369-90
 ;;9002226.02101,"1729,68462-0554-01 ",.01)
 ;;68462-0554-01
 ;;9002226.02101,"1729,68462-0554-01 ",.02)
 ;;68462-0554-01
 ;;9002226.02101,"1729,68462-0555-01 ",.01)
 ;;68462-0555-01
 ;;9002226.02101,"1729,68462-0555-01 ",.02)
 ;;68462-0555-01
 ;;9002226.02101,"1729,68552-0221-10 ",.01)
 ;;68552-0221-10
 ;;9002226.02101,"1729,68552-0221-10 ",.02)
 ;;68552-0221-10
 ;;9002226.02101,"1729,68552-0221-90 ",.01)
 ;;68552-0221-90
 ;;9002226.02101,"1729,68552-0221-90 ",.02)
 ;;68552-0221-90
 ;;9002226.02101,"1729,68552-0222-10 ",.01)
 ;;68552-0222-10
 ;;9002226.02101,"1729,68552-0222-10 ",.02)
 ;;68552-0222-10
 ;;9002226.02101,"1729,68552-0222-90 ",.01)
 ;;68552-0222-90
 ;;9002226.02101,"1729,68552-0222-90 ",.02)
 ;;68552-0222-90
 ;;9002226.02101,"1729,68552-0223-10 ",.01)
 ;;68552-0223-10
 ;;9002226.02101,"1729,68552-0223-10 ",.02)
 ;;68552-0223-10
 ;;9002226.02101,"1729,68552-0223-90 ",.01)
 ;;68552-0223-90
 ;;9002226.02101,"1729,68552-0223-90 ",.02)
 ;;68552-0223-90
 ;;9002226.02101,"1729,68645-0160-59 ",.01)
 ;;68645-0160-59
 ;;9002226.02101,"1729,68645-0160-59 ",.02)
 ;;68645-0160-59
 ;;9002226.02101,"1729,68645-0161-59 ",.01)
 ;;68645-0161-59
 ;;9002226.02101,"1729,68645-0161-59 ",.02)
 ;;68645-0161-59
 ;;9002226.02101,"1729,68645-0162-59 ",.01)
 ;;68645-0162-59
 ;;9002226.02101,"1729,68645-0162-59 ",.02)
 ;;68645-0162-59
 ;;9002226.02101,"1729,68645-0163-59 ",.01)
 ;;68645-0163-59
 ;;9002226.02101,"1729,68645-0163-59 ",.02)
 ;;68645-0163-59
 ;;9002226.02101,"1729,68645-0272-54 ",.01)
 ;;68645-0272-54
 ;;9002226.02101,"1729,68645-0272-54 ",.02)
 ;;68645-0272-54
 ;;9002226.02101,"1729,68645-0404-70 ",.01)
 ;;68645-0404-70
 ;;9002226.02101,"1729,68645-0404-70 ",.02)
 ;;68645-0404-70
 ;;9002226.02101,"1729,68645-0405-70 ",.01)
 ;;68645-0405-70
 ;;9002226.02101,"1729,68645-0405-70 ",.02)
 ;;68645-0405-70
 ;;9002226.02101,"1729,68645-0406-70 ",.01)
 ;;68645-0406-70
 ;;9002226.02101,"1729,68645-0406-70 ",.02)
 ;;68645-0406-70
 ;;9002226.02101,"1729,68645-0407-70 ",.01)
 ;;68645-0407-70
 ;;9002226.02101,"1729,68645-0407-70 ",.02)
 ;;68645-0407-70
 ;;9002226.02101,"1729,68645-0408-70 ",.01)
 ;;68645-0408-70
 ;;9002226.02101,"1729,68645-0408-70 ",.02)
 ;;68645-0408-70
 ;;9002226.02101,"1729,68645-0409-70 ",.01)
 ;;68645-0409-70
 ;;9002226.02101,"1729,68645-0409-70 ",.02)
 ;;68645-0409-70
 ;;9002226.02101,"1729,68645-0410-70 ",.01)
 ;;68645-0410-70
 ;;9002226.02101,"1729,68645-0410-70 ",.02)
 ;;68645-0410-70
 ;;9002226.02101,"1729,68645-0411-70 ",.01)
 ;;68645-0411-70
 ;;9002226.02101,"1729,68645-0411-70 ",.02)
 ;;68645-0411-70
 ;;9002226.02101,"1729,68645-0454-90 ",.01)
 ;;68645-0454-90
 ;;9002226.02101,"1729,68645-0454-90 ",.02)
 ;;68645-0454-90
 ;;9002226.02101,"1729,68645-0455-90 ",.01)
 ;;68645-0455-90
 ;;9002226.02101,"1729,68645-0455-90 ",.02)
 ;;68645-0455-90
 ;;9002226.02101,"1729,68645-0456-90 ",.01)
 ;;68645-0456-90
 ;;9002226.02101,"1729,68645-0456-90 ",.02)
 ;;68645-0456-90
 ;;9002226.02101,"1729,68645-0457-90 ",.01)
 ;;68645-0457-90
 ;;9002226.02101,"1729,68645-0457-90 ",.02)
 ;;68645-0457-90
 ;;9002226.02101,"1729,68645-0469-54 ",.01)
 ;;68645-0469-54
 ;;9002226.02101,"1729,68645-0469-54 ",.02)
 ;;68645-0469-54
 ;;9002226.02101,"1729,76234-0001-01 ",.01)
 ;;76234-0001-01
 ;;9002226.02101,"1729,76234-0001-01 ",.02)
 ;;76234-0001-01
 ;;9002226.02101,"1729,76234-0002-01 ",.01)
 ;;76234-0002-01
 ;;9002226.02101,"1729,76234-0002-01 ",.02)
 ;;76234-0002-01
 ;;9002226.02101,"1729,76282-0200-10 ",.01)
 ;;76282-0200-10
 ;;9002226.02101,"1729,76282-0200-10 ",.02)
 ;;76282-0200-10
 ;;9002226.02101,"1729,76282-0200-90 ",.01)
 ;;76282-0200-90
 ;;9002226.02101,"1729,76282-0200-90 ",.02)
 ;;76282-0200-90
 ;;9002226.02101,"1729,76282-0201-10 ",.01)
 ;;76282-0201-10
 ;;9002226.02101,"1729,76282-0201-10 ",.02)
 ;;76282-0201-10
 ;;9002226.02101,"1729,76282-0201-90 ",.01)
 ;;76282-0201-90
 ;;9002226.02101,"1729,76282-0201-90 ",.02)
 ;;76282-0201-90
 ;;9002226.02101,"1729,76282-0202-10 ",.01)
 ;;76282-0202-10
 ;;9002226.02101,"1729,76282-0202-10 ",.02)
 ;;76282-0202-10
 ;;9002226.02101,"1729,76282-0202-90 ",.01)
 ;;76282-0202-90
 ;;9002226.02101,"1729,76282-0202-90 ",.02)
 ;;76282-0202-90
 ;;9002226.02101,"1729,76282-0271-01 ",.01)
 ;;76282-0271-01
 ;;9002226.02101,"1729,76282-0271-01 ",.02)
 ;;76282-0271-01
 ;;9002226.02101,"1729,76282-0272-01 ",.01)
 ;;76282-0272-01
 ;;9002226.02101,"1729,76282-0272-01 ",.02)
 ;;76282-0272-01
 ;;9002226.02101,"1729,76282-0272-05 ",.01)
 ;;76282-0272-05
 ;;9002226.02101,"1729,76282-0272-05 ",.02)
 ;;76282-0272-05
 ;;9002226.02101,"1729,76282-0273-01 ",.01)
 ;;76282-0273-01
 ;;9002226.02101,"1729,76282-0273-01 ",.02)
 ;;76282-0273-01
 ;;9002226.02101,"1729,76282-0273-05 ",.01)
 ;;76282-0273-05
 ;;9002226.02101,"1729,76282-0273-05 ",.02)
 ;;76282-0273-05
 ;;9002226.02101,"1729,76282-0274-01 ",.01)
 ;;76282-0274-01
 ;;9002226.02101,"1729,76282-0274-01 ",.02)
 ;;76282-0274-01
 ;;9002226.02101,"1729,76282-0274-05 ",.01)
 ;;76282-0274-05
 ;;9002226.02101,"1729,76282-0274-05 ",.02)
 ;;76282-0274-05