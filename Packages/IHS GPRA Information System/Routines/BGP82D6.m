BGP82D6 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1801,00440-7571-91 ",.02)
 ;;00440-7571-91
 ;;9002226.02101,"1801,00440-7571-92 ",.01)
 ;;00440-7571-92
 ;;9002226.02101,"1801,00440-7571-92 ",.02)
 ;;00440-7571-92
 ;;9002226.02101,"1801,00440-7571-94 ",.01)
 ;;00440-7571-94
 ;;9002226.02101,"1801,00440-7571-94 ",.02)
 ;;00440-7571-94
 ;;9002226.02101,"1801,00440-7571-95 ",.01)
 ;;00440-7571-95
 ;;9002226.02101,"1801,00440-7571-95 ",.02)
 ;;00440-7571-95
 ;;9002226.02101,"1801,00440-7585-90 ",.01)
 ;;00440-7585-90
 ;;9002226.02101,"1801,00440-7585-90 ",.02)
 ;;00440-7585-90
 ;;9002226.02101,"1801,00440-7587-90 ",.01)
 ;;00440-7587-90
 ;;9002226.02101,"1801,00440-7587-90 ",.02)
 ;;00440-7587-90
 ;;9002226.02101,"1801,00440-7589-90 ",.01)
 ;;00440-7589-90
 ;;9002226.02101,"1801,00440-7589-90 ",.02)
 ;;00440-7589-90
 ;;9002226.02101,"1801,00440-7589-95 ",.01)
 ;;00440-7589-95
 ;;9002226.02101,"1801,00440-7589-95 ",.02)
 ;;00440-7589-95
 ;;9002226.02101,"1801,00440-7749-10 ",.01)
 ;;00440-7749-10
 ;;9002226.02101,"1801,00440-7749-10 ",.02)
 ;;00440-7749-10
 ;;9002226.02101,"1801,00440-7749-20 ",.01)
 ;;00440-7749-20
 ;;9002226.02101,"1801,00440-7749-20 ",.02)
 ;;00440-7749-20
 ;;9002226.02101,"1801,00440-7749-30 ",.01)
 ;;00440-7749-30
 ;;9002226.02101,"1801,00440-7749-30 ",.02)
 ;;00440-7749-30
 ;;9002226.02101,"1801,00440-7749-60 ",.01)
 ;;00440-7749-60
 ;;9002226.02101,"1801,00440-7749-60 ",.02)
 ;;00440-7749-60
 ;;9002226.02101,"1801,00456-0457-01 ",.01)
 ;;00456-0457-01
 ;;9002226.02101,"1801,00456-0457-01 ",.02)
 ;;00456-0457-01
 ;;9002226.02101,"1801,00456-0458-01 ",.01)
 ;;00456-0458-01
 ;;9002226.02101,"1801,00456-0458-01 ",.02)
 ;;00456-0458-01
 ;;9002226.02101,"1801,00456-0459-01 ",.01)
 ;;00456-0459-01
 ;;9002226.02101,"1801,00456-0459-01 ",.02)
 ;;00456-0459-01
 ;;9002226.02101,"1801,00456-0460-01 ",.01)
 ;;00456-0460-01
 ;;9002226.02101,"1801,00456-0460-01 ",.02)
 ;;00456-0460-01
 ;;9002226.02101,"1801,00456-0461-01 ",.01)
 ;;00456-0461-01
 ;;9002226.02101,"1801,00456-0461-01 ",.02)
 ;;00456-0461-01
 ;;9002226.02101,"1801,00456-0462-01 ",.01)
 ;;00456-0462-01
 ;;9002226.02101,"1801,00456-0462-01 ",.02)
 ;;00456-0462-01
 ;;9002226.02101,"1801,00456-0463-01 ",.01)
 ;;00456-0463-01
 ;;9002226.02101,"1801,00456-0463-01 ",.02)
 ;;00456-0463-01
 ;;9002226.02101,"1801,00456-0464-01 ",.01)
 ;;00456-0464-01
 ;;9002226.02101,"1801,00456-0464-01 ",.02)
 ;;00456-0464-01
 ;;9002226.02101,"1801,00555-0606-02 ",.01)
 ;;00555-0606-02
 ;;9002226.02101,"1801,00555-0606-02 ",.02)
 ;;00555-0606-02
 ;;9002226.02101,"1801,00555-0607-02 ",.01)
 ;;00555-0607-02
 ;;9002226.02101,"1801,00555-0607-02 ",.02)
 ;;00555-0607-02
 ;;9002226.02101,"1801,00555-0607-04 ",.01)
 ;;00555-0607-04
 ;;9002226.02101,"1801,00555-0607-04 ",.02)
 ;;00555-0607-04
 ;;9002226.02101,"1801,00555-0886-02 ",.01)
 ;;00555-0886-02
 ;;9002226.02101,"1801,00555-0886-02 ",.02)
 ;;00555-0886-02
 ;;9002226.02101,"1801,00555-0886-04 ",.01)
 ;;00555-0886-04
 ;;9002226.02101,"1801,00555-0886-04 ",.02)
 ;;00555-0886-04
 ;;9002226.02101,"1801,00555-0887-02 ",.01)
 ;;00555-0887-02
 ;;9002226.02101,"1801,00555-0887-02 ",.02)
 ;;00555-0887-02
 ;;9002226.02101,"1801,00555-0887-04 ",.01)
 ;;00555-0887-04
 ;;9002226.02101,"1801,00555-0887-04 ",.02)
 ;;00555-0887-04
 ;;9002226.02101,"1801,00555-0899-02 ",.01)
 ;;00555-0899-02
 ;;9002226.02101,"1801,00555-0899-02 ",.02)
 ;;00555-0899-02
 ;;9002226.02101,"1801,00574-2067-27 ",.01)
 ;;00574-2067-27
 ;;9002226.02101,"1801,00574-2067-27 ",.02)
 ;;00574-2067-27
 ;;9002226.02101,"1801,00591-0414-01 ",.01)
 ;;00591-0414-01
 ;;9002226.02101,"1801,00591-0414-01 ",.02)
 ;;00591-0414-01
 ;;9002226.02101,"1801,00591-0415-01 ",.01)
 ;;00591-0415-01
 ;;9002226.02101,"1801,00591-0415-01 ",.02)
 ;;00591-0415-01
 ;;9002226.02101,"1801,00591-0416-01 ",.01)
 ;;00591-0416-01
 ;;9002226.02101,"1801,00591-0416-01 ",.02)
 ;;00591-0416-01
 ;;9002226.02101,"1801,00591-0487-01 ",.01)
 ;;00591-0487-01
 ;;9002226.02101,"1801,00591-0487-01 ",.02)
 ;;00591-0487-01
 ;;9002226.02101,"1801,00591-0487-05 ",.01)
 ;;00591-0487-05
 ;;9002226.02101,"1801,00591-0487-05 ",.02)
 ;;00591-0487-05
 ;;9002226.02101,"1801,00591-0488-01 ",.01)
 ;;00591-0488-01
 ;;9002226.02101,"1801,00591-0488-01 ",.02)
 ;;00591-0488-01
 ;;9002226.02101,"1801,00591-0488-05 ",.01)
 ;;00591-0488-05
 ;;9002226.02101,"1801,00591-0488-05 ",.02)
 ;;00591-0488-05
 ;;9002226.02101,"1801,00591-0528-01 ",.01)
 ;;00591-0528-01
 ;;9002226.02101,"1801,00591-0528-01 ",.02)
 ;;00591-0528-01
 ;;9002226.02101,"1801,00781-7129-40 ",.01)
 ;;00781-7129-40
 ;;9002226.02101,"1801,00781-7129-40 ",.02)
 ;;00781-7129-40
 ;;9002226.02101,"1801,00781-7129-58 ",.01)
 ;;00781-7129-58
 ;;9002226.02101,"1801,00781-7129-58 ",.02)
 ;;00781-7129-58
 ;;9002226.02101,"1801,00781-7129-83 ",.01)
 ;;00781-7129-83
 ;;9002226.02101,"1801,00781-7129-83 ",.02)
 ;;00781-7129-83
 ;;9002226.02101,"1801,00781-7138-40 ",.01)
 ;;00781-7138-40
 ;;9002226.02101,"1801,00781-7138-40 ",.02)
 ;;00781-7138-40
 ;;9002226.02101,"1801,00781-7138-58 ",.01)
 ;;00781-7138-58
 ;;9002226.02101,"1801,00781-7138-58 ",.02)
 ;;00781-7138-58
 ;;9002226.02101,"1801,00781-7138-83 ",.01)
 ;;00781-7138-83
 ;;9002226.02101,"1801,00781-7138-83 ",.02)
 ;;00781-7138-83
 ;;9002226.02101,"1801,00781-7144-40 ",.01)
 ;;00781-7144-40
 ;;9002226.02101,"1801,00781-7144-40 ",.02)
 ;;00781-7144-40
 ;;9002226.02101,"1801,00781-7144-58 ",.01)
 ;;00781-7144-58
 ;;9002226.02101,"1801,00781-7144-58 ",.02)
 ;;00781-7144-58
 ;;9002226.02101,"1801,00781-7144-83 ",.01)
 ;;00781-7144-83
 ;;9002226.02101,"1801,00781-7144-83 ",.02)
 ;;00781-7144-83
 ;;9002226.02101,"1801,00781-7156-40 ",.01)
 ;;00781-7156-40
 ;;9002226.02101,"1801,00781-7156-40 ",.02)
 ;;00781-7156-40
 ;;9002226.02101,"1801,00781-7156-58 ",.01)
 ;;00781-7156-58
 ;;9002226.02101,"1801,00781-7156-58 ",.02)
 ;;00781-7156-58
 ;;9002226.02101,"1801,00781-7156-83 ",.01)
 ;;00781-7156-83
 ;;9002226.02101,"1801,00781-7156-83 ",.02)
 ;;00781-7156-83
 ;;9002226.02101,"1801,00781-7167-40 ",.01)
 ;;00781-7167-40
 ;;9002226.02101,"1801,00781-7167-40 ",.02)
 ;;00781-7167-40
 ;;9002226.02101,"1801,00781-7167-58 ",.01)
 ;;00781-7167-58
 ;;9002226.02101,"1801,00781-7167-58 ",.02)
 ;;00781-7167-58
 ;;9002226.02101,"1801,00781-7167-83 ",.01)
 ;;00781-7167-83
 ;;9002226.02101,"1801,00781-7167-83 ",.02)
 ;;00781-7167-83
 ;;9002226.02101,"1801,00904-3571-61 ",.01)
 ;;00904-3571-61
 ;;9002226.02101,"1801,00904-3571-61 ",.02)
 ;;00904-3571-61
 ;;9002226.02101,"1801,00904-6137-60 ",.01)
 ;;00904-6137-60
 ;;9002226.02101,"1801,00904-6137-60 ",.02)
 ;;00904-6137-60
 ;;9002226.02101,"1801,00904-6138-40 ",.01)
 ;;00904-6138-40
 ;;9002226.02101,"1801,00904-6138-40 ",.02)
 ;;00904-6138-40
 ;;9002226.02101,"1801,00904-6138-60 ",.01)
 ;;00904-6138-60
 ;;9002226.02101,"1801,00904-6138-60 ",.02)
 ;;00904-6138-60
 ;;9002226.02101,"1801,10544-0579-30 ",.01)
 ;;10544-0579-30
 ;;9002226.02101,"1801,10544-0579-30 ",.02)
 ;;10544-0579-30
 ;;9002226.02101,"1801,10544-0579-90 ",.01)
 ;;10544-0579-90
 ;;9002226.02101,"1801,10544-0579-90 ",.02)
 ;;10544-0579-90
 ;;9002226.02101,"1801,11528-0010-01 ",.01)
 ;;11528-0010-01
 ;;9002226.02101,"1801,11528-0010-01 ",.02)
 ;;11528-0010-01
 ;;9002226.02101,"1801,11528-0020-01 ",.01)
 ;;11528-0020-01
 ;;9002226.02101,"1801,11528-0020-01 ",.02)
 ;;11528-0020-01
 ;;9002226.02101,"1801,13925-0171-01 ",.01)
 ;;13925-0171-01
 ;;9002226.02101,"1801,13925-0171-01 ",.02)
 ;;13925-0171-01
 ;;9002226.02101,"1801,13925-0172-01 ",.01)
 ;;13925-0172-01
 ;;9002226.02101,"1801,13925-0172-01 ",.02)
 ;;13925-0172-01
 ;;9002226.02101,"1801,15310-0010-01 ",.01)
 ;;15310-0010-01
 ;;9002226.02101,"1801,15310-0010-01 ",.02)
 ;;15310-0010-01
 ;;9002226.02101,"1801,15310-0020-01 ",.01)
 ;;15310-0020-01
 ;;9002226.02101,"1801,15310-0020-01 ",.02)
 ;;15310-0020-01
 ;;9002226.02101,"1801,16590-0254-33 ",.01)
 ;;16590-0254-33
 ;;9002226.02101,"1801,16590-0254-33 ",.02)
 ;;16590-0254-33
 ;;9002226.02101,"1801,16590-0898-08 ",.01)
 ;;16590-0898-08
 ;;9002226.02101,"1801,16590-0898-08 ",.02)
 ;;16590-0898-08
 ;;9002226.02101,"1801,17139-0617-40 ",.01)
 ;;17139-0617-40
 ;;9002226.02101,"1801,17139-0617-40 ",.02)
 ;;17139-0617-40
 ;;9002226.02101,"1801,17856-0907-02 ",.01)
 ;;17856-0907-02
 ;;9002226.02101,"1801,17856-0907-02 ",.02)
 ;;17856-0907-02
 ;;9002226.02101,"1801,17856-0907-03 ",.01)
 ;;17856-0907-03
 ;;9002226.02101,"1801,17856-0907-03 ",.02)
 ;;17856-0907-03
 ;;9002226.02101,"1801,18860-0480-01 ",.01)
 ;;18860-0480-01
 ;;9002226.02101,"1801,18860-0480-01 ",.02)
 ;;18860-0480-01
 ;;9002226.02101,"1801,18860-0480-60 ",.01)
 ;;18860-0480-60
 ;;9002226.02101,"1801,18860-0480-60 ",.02)
 ;;18860-0480-60
 ;;9002226.02101,"1801,21695-0467-30 ",.01)
 ;;21695-0467-30
 ;;9002226.02101,"1801,21695-0467-30 ",.02)
 ;;21695-0467-30
 ;;9002226.02101,"1801,21695-0467-60 ",.01)
 ;;21695-0467-60
 ;;9002226.02101,"1801,21695-0467-60 ",.02)
 ;;21695-0467-60
 ;;9002226.02101,"1801,21695-0468-30 ",.01)
 ;;21695-0468-30
 ;;9002226.02101,"1801,21695-0468-30 ",.02)
 ;;21695-0468-30
 ;;9002226.02101,"1801,21695-0468-60 ",.01)
 ;;21695-0468-60
 ;;9002226.02101,"1801,21695-0468-60 ",.02)
 ;;21695-0468-60
 ;;9002226.02101,"1801,21695-0468-72 ",.01)
 ;;21695-0468-72
 ;;9002226.02101,"1801,21695-0468-72 ",.02)
 ;;21695-0468-72
 ;;9002226.02101,"1801,21695-0468-78 ",.01)
 ;;21695-0468-78
 ;;9002226.02101,"1801,21695-0468-78 ",.02)
 ;;21695-0468-78
 ;;9002226.02101,"1801,21695-0568-30 ",.01)
 ;;21695-0568-30
 ;;9002226.02101,"1801,21695-0568-30 ",.02)
 ;;21695-0568-30
 ;;9002226.02101,"1801,21695-0613-00 ",.01)
 ;;21695-0613-00
 ;;9002226.02101,"1801,21695-0613-00 ",.02)
 ;;21695-0613-00
 ;;9002226.02101,"1801,21695-0613-30 ",.01)
 ;;21695-0613-30
 ;;9002226.02101,"1801,21695-0613-30 ",.02)
 ;;21695-0613-30
 ;;9002226.02101,"1801,21695-0623-00 ",.01)
 ;;21695-0623-00
 ;;9002226.02101,"1801,21695-0623-00 ",.02)
 ;;21695-0623-00
 ;;9002226.02101,"1801,21695-0623-30 ",.01)
 ;;21695-0623-30
 ;;9002226.02101,"1801,21695-0623-30 ",.02)
 ;;21695-0623-30
 ;;9002226.02101,"1801,23155-0056-01 ",.01)
 ;;23155-0056-01
 ;;9002226.02101,"1801,23155-0056-01 ",.02)
 ;;23155-0056-01
 ;;9002226.02101,"1801,23155-0057-01 ",.01)
 ;;23155-0057-01
 ;;9002226.02101,"1801,23155-0057-01 ",.02)
 ;;23155-0057-01
 ;;9002226.02101,"1801,23155-0058-01 ",.01)
 ;;23155-0058-01
 ;;9002226.02101,"1801,23155-0058-01 ",.02)
 ;;23155-0058-01
 ;;9002226.02101,"1801,23155-0058-10 ",.01)
 ;;23155-0058-10
 ;;9002226.02101,"1801,23155-0058-10 ",.02)
 ;;23155-0058-10
 ;;9002226.02101,"1801,23155-0233-01 ",.01)
 ;;23155-0233-01
 ;;9002226.02101,"1801,23155-0233-01 ",.02)
 ;;23155-0233-01
 ;;9002226.02101,"1801,23155-0233-05 ",.01)
 ;;23155-0233-05
 ;;9002226.02101,"1801,23155-0233-05 ",.02)
 ;;23155-0233-05
 ;;9002226.02101,"1801,23155-0234-01 ",.01)
 ;;23155-0234-01
 ;;9002226.02101,"1801,23155-0234-01 ",.02)
 ;;23155-0234-01
 ;;9002226.02101,"1801,23155-0234-05 ",.01)
 ;;23155-0234-05
 ;;9002226.02101,"1801,23155-0234-05 ",.02)
 ;;23155-0234-05
 ;;9002226.02101,"1801,23155-0235-01 ",.01)
 ;;23155-0235-01
 ;;9002226.02101,"1801,23155-0235-01 ",.02)
 ;;23155-0235-01
 ;;9002226.02101,"1801,23155-0235-05 ",.01)
 ;;23155-0235-05
 ;;9002226.02101,"1801,23155-0235-05 ",.02)
 ;;23155-0235-05
 ;;9002226.02101,"1801,24979-0041-13 ",.01)
 ;;24979-0041-13
 ;;9002226.02101,"1801,24979-0041-13 ",.02)
 ;;24979-0041-13
 ;;9002226.02101,"1801,33261-0209-30 ",.01)
 ;;33261-0209-30
 ;;9002226.02101,"1801,33261-0209-30 ",.02)
 ;;33261-0209-30
 ;;9002226.02101,"1801,33261-0209-60 ",.01)
 ;;33261-0209-60
 ;;9002226.02101,"1801,33261-0209-60 ",.02)
 ;;33261-0209-60