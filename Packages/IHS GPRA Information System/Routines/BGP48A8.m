BGP48A8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1198,21695-0471-00 ",.01)
 ;;21695-0471-00
 ;;9002226.02101,"1198,21695-0471-00 ",.02)
 ;;21695-0471-00
 ;;9002226.02101,"1198,21695-0471-30 ",.01)
 ;;21695-0471-30
 ;;9002226.02101,"1198,21695-0471-30 ",.02)
 ;;21695-0471-30
 ;;9002226.02101,"1198,21695-0471-60 ",.01)
 ;;21695-0471-60
 ;;9002226.02101,"1198,21695-0471-60 ",.02)
 ;;21695-0471-60
 ;;9002226.02101,"1198,21695-0471-72 ",.01)
 ;;21695-0471-72
 ;;9002226.02101,"1198,21695-0471-72 ",.02)
 ;;21695-0471-72
 ;;9002226.02101,"1198,21695-0471-78 ",.01)
 ;;21695-0471-78
 ;;9002226.02101,"1198,21695-0471-78 ",.02)
 ;;21695-0471-78
 ;;9002226.02101,"1198,21695-0471-90 ",.01)
 ;;21695-0471-90
 ;;9002226.02101,"1198,21695-0471-90 ",.02)
 ;;21695-0471-90
 ;;9002226.02101,"1198,21695-0472-30 ",.01)
 ;;21695-0472-30
 ;;9002226.02101,"1198,21695-0472-30 ",.02)
 ;;21695-0472-30
 ;;9002226.02101,"1198,21695-0472-60 ",.01)
 ;;21695-0472-60
 ;;9002226.02101,"1198,21695-0472-60 ",.02)
 ;;21695-0472-60
 ;;9002226.02101,"1198,21695-0473-00 ",.01)
 ;;21695-0473-00
 ;;9002226.02101,"1198,21695-0473-00 ",.02)
 ;;21695-0473-00
 ;;9002226.02101,"1198,21695-0473-30 ",.01)
 ;;21695-0473-30
 ;;9002226.02101,"1198,21695-0473-30 ",.02)
 ;;21695-0473-30
 ;;9002226.02101,"1198,21695-0473-60 ",.01)
 ;;21695-0473-60
 ;;9002226.02101,"1198,21695-0473-60 ",.02)
 ;;21695-0473-60
 ;;9002226.02101,"1198,21695-0473-78 ",.01)
 ;;21695-0473-78
 ;;9002226.02101,"1198,21695-0473-78 ",.02)
 ;;21695-0473-78
 ;;9002226.02101,"1198,21695-0473-90 ",.01)
 ;;21695-0473-90
 ;;9002226.02101,"1198,21695-0473-90 ",.02)
 ;;21695-0473-90
 ;;9002226.02101,"1198,21695-0568-30 ",.01)
 ;;21695-0568-30
 ;;9002226.02101,"1198,21695-0568-30 ",.02)
 ;;21695-0568-30
 ;;9002226.02101,"1198,21695-0568-60 ",.01)
 ;;21695-0568-60
 ;;9002226.02101,"1198,21695-0568-60 ",.02)
 ;;21695-0568-60
 ;;9002226.02101,"1198,21695-0828-30 ",.01)
 ;;21695-0828-30
 ;;9002226.02101,"1198,21695-0828-30 ",.02)
 ;;21695-0828-30
 ;;9002226.02101,"1198,21695-0828-60 ",.01)
 ;;21695-0828-60
 ;;9002226.02101,"1198,21695-0828-60 ",.02)
 ;;21695-0828-60
 ;;9002226.02101,"1198,21695-0828-90 ",.01)
 ;;21695-0828-90
 ;;9002226.02101,"1198,21695-0828-90 ",.02)
 ;;21695-0828-90
 ;;9002226.02101,"1198,21695-0894-00 ",.01)
 ;;21695-0894-00
 ;;9002226.02101,"1198,21695-0894-00 ",.02)
 ;;21695-0894-00
 ;;9002226.02101,"1198,23155-0102-01 ",.01)
 ;;23155-0102-01
 ;;9002226.02101,"1198,23155-0102-01 ",.02)
 ;;23155-0102-01
 ;;9002226.02101,"1198,23155-0102-05 ",.01)
 ;;23155-0102-05
 ;;9002226.02101,"1198,23155-0102-05 ",.02)
 ;;23155-0102-05
 ;;9002226.02101,"1198,23155-0102-10 ",.01)
 ;;23155-0102-10
 ;;9002226.02101,"1198,23155-0102-10 ",.02)
 ;;23155-0102-10
 ;;9002226.02101,"1198,23155-0103-01 ",.01)
 ;;23155-0103-01
 ;;9002226.02101,"1198,23155-0103-01 ",.02)
 ;;23155-0103-01
 ;;9002226.02101,"1198,23155-0103-05 ",.01)
 ;;23155-0103-05
 ;;9002226.02101,"1198,23155-0103-05 ",.02)
 ;;23155-0103-05
 ;;9002226.02101,"1198,23155-0103-10 ",.01)
 ;;23155-0103-10
 ;;9002226.02101,"1198,23155-0103-10 ",.02)
 ;;23155-0103-10
 ;;9002226.02101,"1198,23155-0104-01 ",.01)
 ;;23155-0104-01
 ;;9002226.02101,"1198,23155-0104-01 ",.02)
 ;;23155-0104-01
 ;;9002226.02101,"1198,23155-0104-05 ",.01)
 ;;23155-0104-05
 ;;9002226.02101,"1198,23155-0104-05 ",.02)
 ;;23155-0104-05
 ;;9002226.02101,"1198,23155-0104-10 ",.01)
 ;;23155-0104-10
 ;;9002226.02101,"1198,23155-0104-10 ",.02)
 ;;23155-0104-10
 ;;9002226.02101,"1198,23155-0115-01 ",.01)
 ;;23155-0115-01
 ;;9002226.02101,"1198,23155-0115-01 ",.02)
 ;;23155-0115-01
 ;;9002226.02101,"1198,23155-0116-01 ",.01)
 ;;23155-0116-01
 ;;9002226.02101,"1198,23155-0116-01 ",.02)
 ;;23155-0116-01
 ;;9002226.02101,"1198,23155-0117-01 ",.01)
 ;;23155-0117-01
 ;;9002226.02101,"1198,23155-0117-01 ",.02)
 ;;23155-0117-01
 ;;9002226.02101,"1198,23155-0233-01 ",.01)
 ;;23155-0233-01
 ;;9002226.02101,"1198,23155-0233-01 ",.02)
 ;;23155-0233-01
 ;;9002226.02101,"1198,23155-0233-05 ",.01)
 ;;23155-0233-05
 ;;9002226.02101,"1198,23155-0233-05 ",.02)
 ;;23155-0233-05
 ;;9002226.02101,"1198,23155-0234-01 ",.01)
 ;;23155-0234-01
 ;;9002226.02101,"1198,23155-0234-01 ",.02)
 ;;23155-0234-01
 ;;9002226.02101,"1198,23155-0234-05 ",.01)
 ;;23155-0234-05
 ;;9002226.02101,"1198,23155-0234-05 ",.02)
 ;;23155-0234-05
 ;;9002226.02101,"1198,23155-0235-01 ",.01)
 ;;23155-0235-01
 ;;9002226.02101,"1198,23155-0235-01 ",.02)
 ;;23155-0235-01
 ;;9002226.02101,"1198,23155-0235-05 ",.01)
 ;;23155-0235-05
 ;;9002226.02101,"1198,23155-0235-05 ",.02)
 ;;23155-0235-05
 ;;9002226.02101,"1198,23490-6838-01 ",.01)
 ;;23490-6838-01
 ;;9002226.02101,"1198,23490-6838-01 ",.02)
 ;;23490-6838-01
 ;;9002226.02101,"1198,23490-6838-02 ",.01)
 ;;23490-6838-02
 ;;9002226.02101,"1198,23490-6838-02 ",.02)
 ;;23490-6838-02
 ;;9002226.02101,"1198,23490-6838-03 ",.01)
 ;;23490-6838-03
 ;;9002226.02101,"1198,23490-6838-03 ",.02)
 ;;23490-6838-03
 ;;9002226.02101,"1198,23490-6838-04 ",.01)
 ;;23490-6838-04
 ;;9002226.02101,"1198,23490-6838-04 ",.02)
 ;;23490-6838-04
 ;;9002226.02101,"1198,23490-6838-09 ",.01)
 ;;23490-6838-09
 ;;9002226.02101,"1198,23490-6838-09 ",.02)
 ;;23490-6838-09
 ;;9002226.02101,"1198,23490-6839-01 ",.01)
 ;;23490-6839-01
 ;;9002226.02101,"1198,23490-6839-01 ",.02)
 ;;23490-6839-01
 ;;9002226.02101,"1198,23490-6839-02 ",.01)
 ;;23490-6839-02
 ;;9002226.02101,"1198,23490-6839-02 ",.02)
 ;;23490-6839-02
 ;;9002226.02101,"1198,23490-7260-01 ",.01)
 ;;23490-7260-01
 ;;9002226.02101,"1198,23490-7260-01 ",.02)
 ;;23490-7260-01
 ;;9002226.02101,"1198,23490-7260-02 ",.01)
 ;;23490-7260-02
 ;;9002226.02101,"1198,23490-7260-02 ",.02)
 ;;23490-7260-02
 ;;9002226.02101,"1198,23490-7260-03 ",.01)
 ;;23490-7260-03
 ;;9002226.02101,"1198,23490-7260-03 ",.02)
 ;;23490-7260-03
 ;;9002226.02101,"1198,23490-7260-04 ",.01)
 ;;23490-7260-04
 ;;9002226.02101,"1198,23490-7260-04 ",.02)
 ;;23490-7260-04
 ;;9002226.02101,"1198,23490-7448-03 ",.01)
 ;;23490-7448-03
 ;;9002226.02101,"1198,23490-7448-03 ",.02)
 ;;23490-7448-03
 ;;9002226.02101,"1198,23490-7448-06 ",.01)
 ;;23490-7448-06
 ;;9002226.02101,"1198,23490-7448-06 ",.02)
 ;;23490-7448-06
 ;;9002226.02101,"1198,23490-7449-01 ",.01)
 ;;23490-7449-01
 ;;9002226.02101,"1198,23490-7449-01 ",.02)
 ;;23490-7449-01
 ;;9002226.02101,"1198,23490-7449-06 ",.01)
 ;;23490-7449-06
 ;;9002226.02101,"1198,23490-7449-06 ",.02)
 ;;23490-7449-06
 ;;9002226.02101,"1198,23490-7449-09 ",.01)
 ;;23490-7449-09
 ;;9002226.02101,"1198,23490-7449-09 ",.02)
 ;;23490-7449-09
 ;;9002226.02101,"1198,23490-7458-03 ",.01)
 ;;23490-7458-03
 ;;9002226.02101,"1198,23490-7458-03 ",.02)
 ;;23490-7458-03
 ;;9002226.02101,"1198,23490-7458-06 ",.01)
 ;;23490-7458-06
 ;;9002226.02101,"1198,23490-7458-06 ",.02)
 ;;23490-7458-06
 ;;9002226.02101,"1198,23490-7458-07 ",.01)
 ;;23490-7458-07
 ;;9002226.02101,"1198,23490-7458-07 ",.02)
 ;;23490-7458-07
 ;;9002226.02101,"1198,23490-7458-12 ",.01)
 ;;23490-7458-12
 ;;9002226.02101,"1198,23490-7458-12 ",.02)
 ;;23490-7458-12
 ;;9002226.02101,"1198,23490-7458-16 ",.01)
 ;;23490-7458-16
 ;;9002226.02101,"1198,23490-7458-16 ",.02)
 ;;23490-7458-16
 ;;9002226.02101,"1198,24658-0290-05 ",.01)
 ;;24658-0290-05
 ;;9002226.02101,"1198,24658-0290-05 ",.02)
 ;;24658-0290-05
 ;;9002226.02101,"1198,24658-0290-12 ",.01)
 ;;24658-0290-12
 ;;9002226.02101,"1198,24658-0290-12 ",.02)
 ;;24658-0290-12
 ;;9002226.02101,"1198,24658-0290-18 ",.01)
 ;;24658-0290-18
 ;;9002226.02101,"1198,24658-0290-18 ",.02)
 ;;24658-0290-18
 ;;9002226.02101,"1198,24658-0290-27 ",.01)
 ;;24658-0290-27
 ;;9002226.02101,"1198,24658-0290-27 ",.02)
 ;;24658-0290-27
 ;;9002226.02101,"1198,24658-0290-36 ",.01)
 ;;24658-0290-36
 ;;9002226.02101,"1198,24658-0290-36 ",.02)
 ;;24658-0290-36
 ;;9002226.02101,"1198,24658-0290-46 ",.01)
 ;;24658-0290-46
 ;;9002226.02101,"1198,24658-0290-46 ",.02)
 ;;24658-0290-46
 ;;9002226.02101,"1198,24658-0290-60 ",.01)
 ;;24658-0290-60
 ;;9002226.02101,"1198,24658-0290-60 ",.02)
 ;;24658-0290-60
 ;;9002226.02101,"1198,24658-0290-90 ",.01)
 ;;24658-0290-90
 ;;9002226.02101,"1198,24658-0290-90 ",.02)
 ;;24658-0290-90
 ;;9002226.02101,"1198,24658-0292-05 ",.01)
 ;;24658-0292-05
 ;;9002226.02101,"1198,24658-0292-05 ",.02)
 ;;24658-0292-05
 ;;9002226.02101,"1198,24658-0292-18 ",.01)
 ;;24658-0292-18
 ;;9002226.02101,"1198,24658-0292-18 ",.02)
 ;;24658-0292-18
 ;;9002226.02101,"1198,24658-0292-60 ",.01)
 ;;24658-0292-60
 ;;9002226.02101,"1198,24658-0292-60 ",.02)
 ;;24658-0292-60
 ;;9002226.02101,"1198,24658-0292-90 ",.01)
 ;;24658-0292-90
 ;;9002226.02101,"1198,24658-0292-90 ",.02)
 ;;24658-0292-90
 ;;9002226.02101,"1198,29033-0018-01 ",.01)
 ;;29033-0018-01
 ;;9002226.02101,"1198,29033-0018-01 ",.02)
 ;;29033-0018-01
 ;;9002226.02101,"1198,29033-0018-05 ",.01)
 ;;29033-0018-05
 ;;9002226.02101,"1198,29033-0018-05 ",.02)
 ;;29033-0018-05
 ;;9002226.02101,"1198,29033-0018-10 ",.01)
 ;;29033-0018-10
 ;;9002226.02101,"1198,29033-0018-10 ",.02)
 ;;29033-0018-10
 ;;9002226.02101,"1198,29033-0021-01 ",.01)
 ;;29033-0021-01
 ;;9002226.02101,"1198,29033-0021-01 ",.02)
 ;;29033-0021-01
 ;;9002226.02101,"1198,33261-0145-02 ",.01)
 ;;33261-0145-02
 ;;9002226.02101,"1198,33261-0145-02 ",.02)
 ;;33261-0145-02
 ;;9002226.02101,"1198,33261-0145-30 ",.01)
 ;;33261-0145-30
 ;;9002226.02101,"1198,33261-0145-30 ",.02)
 ;;33261-0145-30
 ;;9002226.02101,"1198,33261-0145-60 ",.01)
 ;;33261-0145-60
 ;;9002226.02101,"1198,33261-0145-60 ",.02)
 ;;33261-0145-60
 ;;9002226.02101,"1198,33261-0145-90 ",.01)
 ;;33261-0145-90
 ;;9002226.02101,"1198,33261-0145-90 ",.02)
 ;;33261-0145-90
 ;;9002226.02101,"1198,33261-0157-02 ",.01)
 ;;33261-0157-02
 ;;9002226.02101,"1198,33261-0157-02 ",.02)
 ;;33261-0157-02
 ;;9002226.02101,"1198,33261-0157-30 ",.01)
 ;;33261-0157-30
 ;;9002226.02101,"1198,33261-0157-30 ",.02)
 ;;33261-0157-30
 ;;9002226.02101,"1198,33261-0157-60 ",.01)
 ;;33261-0157-60
 ;;9002226.02101,"1198,33261-0157-60 ",.02)
 ;;33261-0157-60
 ;;9002226.02101,"1198,33261-0157-90 ",.01)
 ;;33261-0157-90
 ;;9002226.02101,"1198,33261-0157-90 ",.02)
 ;;33261-0157-90
 ;;9002226.02101,"1198,33261-0372-30 ",.01)
 ;;33261-0372-30
 ;;9002226.02101,"1198,33261-0372-30 ",.02)
 ;;33261-0372-30
 ;;9002226.02101,"1198,33261-0372-60 ",.01)
 ;;33261-0372-60
 ;;9002226.02101,"1198,33261-0372-60 ",.02)
 ;;33261-0372-60
 ;;9002226.02101,"1198,33261-0372-90 ",.01)
 ;;33261-0372-90
 ;;9002226.02101,"1198,33261-0372-90 ",.02)
 ;;33261-0372-90
 ;;9002226.02101,"1198,33261-0411-00 ",.01)
 ;;33261-0411-00
 ;;9002226.02101,"1198,33261-0411-00 ",.02)
 ;;33261-0411-00
 ;;9002226.02101,"1198,33261-0411-30 ",.01)
 ;;33261-0411-30
 ;;9002226.02101,"1198,33261-0411-30 ",.02)
 ;;33261-0411-30
 ;;9002226.02101,"1198,33261-0411-60 ",.01)
 ;;33261-0411-60
 ;;9002226.02101,"1198,33261-0411-60 ",.02)
 ;;33261-0411-60
 ;;9002226.02101,"1198,33261-0411-90 ",.01)
 ;;33261-0411-90
 ;;9002226.02101,"1198,33261-0411-90 ",.02)
 ;;33261-0411-90
 ;;9002226.02101,"1198,33261-0540-00 ",.01)
 ;;33261-0540-00
 ;;9002226.02101,"1198,33261-0540-00 ",.02)
 ;;33261-0540-00
 ;;9002226.02101,"1198,33261-0540-30 ",.01)
 ;;33261-0540-30
 ;;9002226.02101,"1198,33261-0540-30 ",.02)
 ;;33261-0540-30
 ;;9002226.02101,"1198,33261-0540-60 ",.01)
 ;;33261-0540-60
 ;;9002226.02101,"1198,33261-0540-60 ",.02)
 ;;33261-0540-60
 ;;9002226.02101,"1198,33261-0540-90 ",.01)
 ;;33261-0540-90
 ;;9002226.02101,"1198,33261-0540-90 ",.02)
 ;;33261-0540-90
 ;;9002226.02101,"1198,33261-0821-30 ",.01)
 ;;33261-0821-30
 ;;9002226.02101,"1198,33261-0821-30 ",.02)
 ;;33261-0821-30
 ;;9002226.02101,"1198,33261-0821-60 ",.01)
 ;;33261-0821-60
 ;;9002226.02101,"1198,33261-0821-60 ",.02)
 ;;33261-0821-60
 ;;9002226.02101,"1198,33261-0821-90 ",.01)
 ;;33261-0821-90
 ;;9002226.02101,"1198,33261-0821-90 ",.02)
 ;;33261-0821-90
 ;;9002226.02101,"1198,33358-0234-00 ",.01)
 ;;33358-0234-00
 ;;9002226.02101,"1198,33358-0234-00 ",.02)
 ;;33358-0234-00
 ;;9002226.02101,"1198,33358-0234-30 ",.01)
 ;;33358-0234-30
 ;;9002226.02101,"1198,33358-0234-30 ",.02)
 ;;33358-0234-30
 ;;9002226.02101,"1198,33358-0234-60 ",.01)
 ;;33358-0234-60
 ;;9002226.02101,"1198,33358-0234-60 ",.02)
 ;;33358-0234-60
 ;;9002226.02101,"1198,33358-0235-60 ",.01)
 ;;33358-0235-60
 ;;9002226.02101,"1198,33358-0235-60 ",.02)
 ;;33358-0235-60
 ;;9002226.02101,"1198,33358-0236-30 ",.01)
 ;;33358-0236-30
 ;;9002226.02101,"1198,33358-0236-30 ",.02)
 ;;33358-0236-30
 ;;9002226.02101,"1198,33358-0236-60 ",.01)
 ;;33358-0236-60
 ;;9002226.02101,"1198,33358-0236-60 ",.02)
 ;;33358-0236-60
 ;;9002226.02101,"1198,33358-0237-30 ",.01)
 ;;33358-0237-30
 ;;9002226.02101,"1198,33358-0237-30 ",.02)
 ;;33358-0237-30
 ;;9002226.02101,"1198,33358-0237-60 ",.01)
 ;;33358-0237-60
 ;;9002226.02101,"1198,33358-0237-60 ",.02)
 ;;33358-0237-60
 ;;9002226.02101,"1198,35356-0130-60 ",.01)
 ;;35356-0130-60
 ;;9002226.02101,"1198,35356-0130-60 ",.02)
 ;;35356-0130-60
 ;;9002226.02101,"1198,35356-0136-60 ",.01)
 ;;35356-0136-60
 ;;9002226.02101,"1198,35356-0136-60 ",.02)
 ;;35356-0136-60
 ;;9002226.02101,"1198,35356-0269-28 ",.01)
 ;;35356-0269-28
 ;;9002226.02101,"1198,35356-0269-28 ",.02)
 ;;35356-0269-28
 ;;9002226.02101,"1198,35356-0691-60 ",.01)
 ;;35356-0691-60
 ;;9002226.02101,"1198,35356-0691-60 ",.02)
 ;;35356-0691-60
 ;;9002226.02101,"1198,35356-0792-30 ",.01)
 ;;35356-0792-30
 ;;9002226.02101,"1198,35356-0792-30 ",.02)
 ;;35356-0792-30
 ;;9002226.02101,"1198,35356-0886-30 ",.01)
 ;;35356-0886-30