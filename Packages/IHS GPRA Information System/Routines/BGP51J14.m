BGP51J14 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"730,33261-0626-30 ",.02)
 ;;33261-0626-30
 ;;9002226.02101,"730,33261-0626-60 ",.01)
 ;;33261-0626-60
 ;;9002226.02101,"730,33261-0626-60 ",.02)
 ;;33261-0626-60
 ;;9002226.02101,"730,33261-0626-90 ",.01)
 ;;33261-0626-90
 ;;9002226.02101,"730,33261-0626-90 ",.02)
 ;;33261-0626-90
 ;;9002226.02101,"730,33261-0652-07 ",.01)
 ;;33261-0652-07
 ;;9002226.02101,"730,33261-0652-07 ",.02)
 ;;33261-0652-07
 ;;9002226.02101,"730,33261-0652-14 ",.01)
 ;;33261-0652-14
 ;;9002226.02101,"730,33261-0652-14 ",.02)
 ;;33261-0652-14
 ;;9002226.02101,"730,33261-0652-30 ",.01)
 ;;33261-0652-30
 ;;9002226.02101,"730,33261-0652-30 ",.02)
 ;;33261-0652-30
 ;;9002226.02101,"730,33261-0652-60 ",.01)
 ;;33261-0652-60
 ;;9002226.02101,"730,33261-0652-60 ",.02)
 ;;33261-0652-60
 ;;9002226.02101,"730,33261-0669-30 ",.01)
 ;;33261-0669-30
 ;;9002226.02101,"730,33261-0669-30 ",.02)
 ;;33261-0669-30
 ;;9002226.02101,"730,33261-0669-60 ",.01)
 ;;33261-0669-60
 ;;9002226.02101,"730,33261-0669-60 ",.02)
 ;;33261-0669-60
 ;;9002226.02101,"730,33261-0669-90 ",.01)
 ;;33261-0669-90
 ;;9002226.02101,"730,33261-0669-90 ",.02)
 ;;33261-0669-90
 ;;9002226.02101,"730,33261-0682-02 ",.01)
 ;;33261-0682-02
 ;;9002226.02101,"730,33261-0682-02 ",.02)
 ;;33261-0682-02
 ;;9002226.02101,"730,33261-0682-07 ",.01)
 ;;33261-0682-07
 ;;9002226.02101,"730,33261-0682-07 ",.02)
 ;;33261-0682-07
 ;;9002226.02101,"730,33261-0682-14 ",.01)
 ;;33261-0682-14
 ;;9002226.02101,"730,33261-0682-14 ",.02)
 ;;33261-0682-14
 ;;9002226.02101,"730,33261-0682-20 ",.01)
 ;;33261-0682-20
 ;;9002226.02101,"730,33261-0682-20 ",.02)
 ;;33261-0682-20
 ;;9002226.02101,"730,33261-0682-21 ",.01)
 ;;33261-0682-21
 ;;9002226.02101,"730,33261-0682-21 ",.02)
 ;;33261-0682-21
 ;;9002226.02101,"730,33261-0682-28 ",.01)
 ;;33261-0682-28
 ;;9002226.02101,"730,33261-0682-28 ",.02)
 ;;33261-0682-28
 ;;9002226.02101,"730,33261-0682-30 ",.01)
 ;;33261-0682-30
 ;;9002226.02101,"730,33261-0682-30 ",.02)
 ;;33261-0682-30
 ;;9002226.02101,"730,33261-0682-60 ",.01)
 ;;33261-0682-60
 ;;9002226.02101,"730,33261-0682-60 ",.02)
 ;;33261-0682-60
 ;;9002226.02101,"730,33261-0682-90 ",.01)
 ;;33261-0682-90
 ;;9002226.02101,"730,33261-0682-90 ",.02)
 ;;33261-0682-90
 ;;9002226.02101,"730,33261-0853-00 ",.01)
 ;;33261-0853-00
 ;;9002226.02101,"730,33261-0853-00 ",.02)
 ;;33261-0853-00
 ;;9002226.02101,"730,33261-0853-30 ",.01)
 ;;33261-0853-30
 ;;9002226.02101,"730,33261-0853-30 ",.02)
 ;;33261-0853-30
 ;;9002226.02101,"730,33261-0853-60 ",.01)
 ;;33261-0853-60
 ;;9002226.02101,"730,33261-0853-60 ",.02)
 ;;33261-0853-60
 ;;9002226.02101,"730,33261-0853-90 ",.01)
 ;;33261-0853-90
 ;;9002226.02101,"730,33261-0853-90 ",.02)
 ;;33261-0853-90
 ;;9002226.02101,"730,33261-0854-00 ",.01)
 ;;33261-0854-00
 ;;9002226.02101,"730,33261-0854-00 ",.02)
 ;;33261-0854-00
 ;;9002226.02101,"730,33261-0854-30 ",.01)
 ;;33261-0854-30
 ;;9002226.02101,"730,33261-0854-30 ",.02)
 ;;33261-0854-30
 ;;9002226.02101,"730,33261-0854-60 ",.01)
 ;;33261-0854-60
 ;;9002226.02101,"730,33261-0854-60 ",.02)
 ;;33261-0854-60
 ;;9002226.02101,"730,33261-0854-90 ",.01)
 ;;33261-0854-90
 ;;9002226.02101,"730,33261-0854-90 ",.02)
 ;;33261-0854-90
 ;;9002226.02101,"730,33261-0922-00 ",.01)
 ;;33261-0922-00
 ;;9002226.02101,"730,33261-0922-00 ",.02)
 ;;33261-0922-00
 ;;9002226.02101,"730,33261-0922-30 ",.01)
 ;;33261-0922-30
 ;;9002226.02101,"730,33261-0922-30 ",.02)
 ;;33261-0922-30
 ;;9002226.02101,"730,33261-0922-60 ",.01)
 ;;33261-0922-60
 ;;9002226.02101,"730,33261-0922-60 ",.02)
 ;;33261-0922-60
 ;;9002226.02101,"730,33261-0922-90 ",.01)
 ;;33261-0922-90
 ;;9002226.02101,"730,33261-0922-90 ",.02)
 ;;33261-0922-90
 ;;9002226.02101,"730,33358-0022-15 ",.01)
 ;;33358-0022-15
 ;;9002226.02101,"730,33358-0022-15 ",.02)
 ;;33358-0022-15
 ;;9002226.02101,"730,33358-0022-30 ",.01)
 ;;33358-0022-30
 ;;9002226.02101,"730,33358-0022-30 ",.02)
 ;;33358-0022-30
 ;;9002226.02101,"730,33358-0022-60 ",.01)
 ;;33358-0022-60
 ;;9002226.02101,"730,33358-0022-60 ",.02)
 ;;33358-0022-60
 ;;9002226.02101,"730,33358-0023-00 ",.01)
 ;;33358-0023-00
 ;;9002226.02101,"730,33358-0023-00 ",.02)
 ;;33358-0023-00
 ;;9002226.02101,"730,33358-0023-20 ",.01)
 ;;33358-0023-20
 ;;9002226.02101,"730,33358-0023-20 ",.02)
 ;;33358-0023-20
 ;;9002226.02101,"730,33358-0023-30 ",.01)
 ;;33358-0023-30
 ;;9002226.02101,"730,33358-0023-30 ",.02)
 ;;33358-0023-30
 ;;9002226.02101,"730,33358-0023-60 ",.01)
 ;;33358-0023-60
 ;;9002226.02101,"730,33358-0023-60 ",.02)
 ;;33358-0023-60
 ;;9002226.02101,"730,33358-0024-00 ",.01)
 ;;33358-0024-00
 ;;9002226.02101,"730,33358-0024-00 ",.02)
 ;;33358-0024-00
 ;;9002226.02101,"730,33358-0024-30 ",.01)
 ;;33358-0024-30
 ;;9002226.02101,"730,33358-0024-30 ",.02)
 ;;33358-0024-30
 ;;9002226.02101,"730,33358-0024-60 ",.01)
 ;;33358-0024-60
 ;;9002226.02101,"730,33358-0024-60 ",.02)
 ;;33358-0024-60
 ;;9002226.02101,"730,33358-0045-30 ",.01)
 ;;33358-0045-30
 ;;9002226.02101,"730,33358-0045-30 ",.02)
 ;;33358-0045-30
 ;;9002226.02101,"730,33358-0046-04 ",.01)
 ;;33358-0046-04
 ;;9002226.02101,"730,33358-0046-04 ",.02)
 ;;33358-0046-04
 ;;9002226.02101,"730,33358-0058-30 ",.01)
 ;;33358-0058-30
 ;;9002226.02101,"730,33358-0058-30 ",.02)
 ;;33358-0058-30
 ;;9002226.02101,"730,33358-0059-20 ",.01)
 ;;33358-0059-20
 ;;9002226.02101,"730,33358-0059-20 ",.02)
 ;;33358-0059-20
 ;;9002226.02101,"730,33358-0059-30 ",.01)
 ;;33358-0059-30
 ;;9002226.02101,"730,33358-0059-30 ",.02)
 ;;33358-0059-30
 ;;9002226.02101,"730,33358-0059-60 ",.01)
 ;;33358-0059-60
 ;;9002226.02101,"730,33358-0059-60 ",.02)
 ;;33358-0059-60
 ;;9002226.02101,"730,33358-0060-30 ",.01)
 ;;33358-0060-30
 ;;9002226.02101,"730,33358-0060-30 ",.02)
 ;;33358-0060-30
 ;;9002226.02101,"730,33358-0061-30 ",.01)
 ;;33358-0061-30
 ;;9002226.02101,"730,33358-0061-30 ",.02)
 ;;33358-0061-30
 ;;9002226.02101,"730,33358-0061-90 ",.01)
 ;;33358-0061-90
 ;;9002226.02101,"730,33358-0061-90 ",.02)
 ;;33358-0061-90
 ;;9002226.02101,"730,33358-0117-30 ",.01)
 ;;33358-0117-30
 ;;9002226.02101,"730,33358-0117-30 ",.02)
 ;;33358-0117-30
 ;;9002226.02101,"730,33358-0117-60 ",.01)
 ;;33358-0117-60
 ;;9002226.02101,"730,33358-0117-60 ",.02)
 ;;33358-0117-60
 ;;9002226.02101,"730,33358-0118-30 ",.01)
 ;;33358-0118-30
 ;;9002226.02101,"730,33358-0118-30 ",.02)
 ;;33358-0118-30
 ;;9002226.02101,"730,33358-0118-60 ",.01)
 ;;33358-0118-60
 ;;9002226.02101,"730,33358-0118-60 ",.02)
 ;;33358-0118-60
 ;;9002226.02101,"730,33358-0119-30 ",.01)
 ;;33358-0119-30
 ;;9002226.02101,"730,33358-0119-30 ",.02)
 ;;33358-0119-30
 ;;9002226.02101,"730,33358-0119-60 ",.01)
 ;;33358-0119-60
 ;;9002226.02101,"730,33358-0119-60 ",.02)
 ;;33358-0119-60
 ;;9002226.02101,"730,33358-0189-30 ",.01)
 ;;33358-0189-30
 ;;9002226.02101,"730,33358-0189-30 ",.02)
 ;;33358-0189-30
 ;;9002226.02101,"730,33358-0189-60 ",.01)
 ;;33358-0189-60
 ;;9002226.02101,"730,33358-0189-60 ",.02)
 ;;33358-0189-60
 ;;9002226.02101,"730,33358-0190-30 ",.01)
 ;;33358-0190-30
 ;;9002226.02101,"730,33358-0190-30 ",.02)
 ;;33358-0190-30
 ;;9002226.02101,"730,33358-0190-60 ",.01)
 ;;33358-0190-60
 ;;9002226.02101,"730,33358-0190-60 ",.02)
 ;;33358-0190-60
 ;;9002226.02101,"730,33358-0191-30 ",.01)
 ;;33358-0191-30
 ;;9002226.02101,"730,33358-0191-30 ",.02)
 ;;33358-0191-30
 ;;9002226.02101,"730,33358-0227-30 ",.01)
 ;;33358-0227-30
 ;;9002226.02101,"730,33358-0227-30 ",.02)
 ;;33358-0227-30
 ;;9002226.02101,"730,33358-0326-30 ",.01)
 ;;33358-0326-30
 ;;9002226.02101,"730,33358-0326-30 ",.02)
 ;;33358-0326-30
 ;;9002226.02101,"730,35356-0005-00 ",.01)
 ;;35356-0005-00
 ;;9002226.02101,"730,35356-0005-00 ",.02)
 ;;35356-0005-00
 ;;9002226.02101,"730,35356-0424-30 ",.01)
 ;;35356-0424-30
 ;;9002226.02101,"730,35356-0424-30 ",.02)
 ;;35356-0424-30
 ;;9002226.02101,"730,35356-0424-60 ",.01)
 ;;35356-0424-60
 ;;9002226.02101,"730,35356-0424-60 ",.02)
 ;;35356-0424-60
 ;;9002226.02101,"730,35356-0572-30 ",.01)
 ;;35356-0572-30
 ;;9002226.02101,"730,35356-0572-30 ",.02)
 ;;35356-0572-30
 ;;9002226.02101,"730,35356-0572-60 ",.01)
 ;;35356-0572-60
 ;;9002226.02101,"730,35356-0572-60 ",.02)
 ;;35356-0572-60
 ;;9002226.02101,"730,35356-0573-30 ",.01)
 ;;35356-0573-30
 ;;9002226.02101,"730,35356-0573-30 ",.02)
 ;;35356-0573-30
 ;;9002226.02101,"730,35356-0573-60 ",.01)
 ;;35356-0573-60
 ;;9002226.02101,"730,35356-0573-60 ",.02)
 ;;35356-0573-60
 ;;9002226.02101,"730,35356-0574-30 ",.01)
 ;;35356-0574-30
 ;;9002226.02101,"730,35356-0574-30 ",.02)
 ;;35356-0574-30
 ;;9002226.02101,"730,35356-0574-60 ",.01)
 ;;35356-0574-60
 ;;9002226.02101,"730,35356-0574-60 ",.02)
 ;;35356-0574-60
 ;;9002226.02101,"730,35356-0592-30 ",.01)
 ;;35356-0592-30
 ;;9002226.02101,"730,35356-0592-30 ",.02)
 ;;35356-0592-30
 ;;9002226.02101,"730,35356-0615-60 ",.01)
 ;;35356-0615-60
 ;;9002226.02101,"730,35356-0615-60 ",.02)
 ;;35356-0615-60
 ;;9002226.02101,"730,35356-0645-30 ",.01)
 ;;35356-0645-30
 ;;9002226.02101,"730,35356-0645-30 ",.02)
 ;;35356-0645-30
 ;;9002226.02101,"730,35356-0645-60 ",.01)
 ;;35356-0645-60
 ;;9002226.02101,"730,35356-0645-60 ",.02)
 ;;35356-0645-60
 ;;9002226.02101,"730,35356-0650-30 ",.01)
 ;;35356-0650-30
 ;;9002226.02101,"730,35356-0650-30 ",.02)
 ;;35356-0650-30
 ;;9002226.02101,"730,35356-0656-30 ",.01)
 ;;35356-0656-30
 ;;9002226.02101,"730,35356-0656-30 ",.02)
 ;;35356-0656-30
 ;;9002226.02101,"730,35356-0712-00 ",.01)
 ;;35356-0712-00
 ;;9002226.02101,"730,35356-0712-00 ",.02)
 ;;35356-0712-00
 ;;9002226.02101,"730,35356-0741-30 ",.01)
 ;;35356-0741-30
 ;;9002226.02101,"730,35356-0741-30 ",.02)
 ;;35356-0741-30
 ;;9002226.02101,"730,35356-0742-30 ",.01)
 ;;35356-0742-30
 ;;9002226.02101,"730,35356-0742-30 ",.02)
 ;;35356-0742-30
 ;;9002226.02101,"730,35356-0742-60 ",.01)
 ;;35356-0742-60
 ;;9002226.02101,"730,35356-0742-60 ",.02)
 ;;35356-0742-60
 ;;9002226.02101,"730,35356-0742-90 ",.01)
 ;;35356-0742-90
 ;;9002226.02101,"730,35356-0742-90 ",.02)
 ;;35356-0742-90
 ;;9002226.02101,"730,35356-0743-30 ",.01)
 ;;35356-0743-30
 ;;9002226.02101,"730,35356-0743-30 ",.02)
 ;;35356-0743-30
 ;;9002226.02101,"730,35356-0745-15 ",.01)
 ;;35356-0745-15
 ;;9002226.02101,"730,35356-0745-15 ",.02)
 ;;35356-0745-15
 ;;9002226.02101,"730,35356-0759-30 ",.01)
 ;;35356-0759-30
 ;;9002226.02101,"730,35356-0759-30 ",.02)
 ;;35356-0759-30
 ;;9002226.02101,"730,35356-0764-30 ",.01)
 ;;35356-0764-30
 ;;9002226.02101,"730,35356-0764-30 ",.02)
 ;;35356-0764-30
 ;;9002226.02101,"730,35356-0845-30 ",.01)
 ;;35356-0845-30
 ;;9002226.02101,"730,35356-0845-30 ",.02)
 ;;35356-0845-30
 ;;9002226.02101,"730,35356-0862-06 ",.01)
 ;;35356-0862-06
 ;;9002226.02101,"730,35356-0862-06 ",.02)
 ;;35356-0862-06
 ;;9002226.02101,"730,35356-0862-20 ",.01)
 ;;35356-0862-20
 ;;9002226.02101,"730,35356-0862-20 ",.02)
 ;;35356-0862-20
 ;;9002226.02101,"730,35356-0862-30 ",.01)
 ;;35356-0862-30
 ;;9002226.02101,"730,35356-0862-30 ",.02)
 ;;35356-0862-30
 ;;9002226.02101,"730,42192-0520-16 ",.01)
 ;;42192-0520-16
 ;;9002226.02101,"730,42192-0520-16 ",.02)
 ;;42192-0520-16
 ;;9002226.02101,"730,42254-0130-60 ",.01)
 ;;42254-0130-60
 ;;9002226.02101,"730,42254-0130-60 ",.02)
 ;;42254-0130-60
 ;;9002226.02101,"730,42254-0147-14 ",.01)
 ;;42254-0147-14
 ;;9002226.02101,"730,42254-0147-14 ",.02)
 ;;42254-0147-14
 ;;9002226.02101,"730,42254-0147-30 ",.01)
 ;;42254-0147-30
 ;;9002226.02101,"730,42254-0147-30 ",.02)
 ;;42254-0147-30
 ;;9002226.02101,"730,42254-0147-60 ",.01)
 ;;42254-0147-60
 ;;9002226.02101,"730,42254-0147-60 ",.02)
 ;;42254-0147-60
 ;;9002226.02101,"730,42254-0189-60 ",.01)
 ;;42254-0189-60
 ;;9002226.02101,"730,42254-0189-60 ",.02)
 ;;42254-0189-60
 ;;9002226.02101,"730,42254-0231-00 ",.01)
 ;;42254-0231-00
 ;;9002226.02101,"730,42254-0231-00 ",.02)
 ;;42254-0231-00
 ;;9002226.02101,"730,42254-0268-20 ",.01)
 ;;42254-0268-20
 ;;9002226.02101,"730,42254-0268-20 ",.02)
 ;;42254-0268-20
 ;;9002226.02101,"730,42254-0316-30 ",.01)
 ;;42254-0316-30
 ;;9002226.02101,"730,42254-0316-30 ",.02)
 ;;42254-0316-30
 ;;9002226.02101,"730,42254-0316-60 ",.01)
 ;;42254-0316-60
 ;;9002226.02101,"730,42254-0316-60 ",.02)
 ;;42254-0316-60
 ;;9002226.02101,"730,42254-0323-60 ",.01)
 ;;42254-0323-60
 ;;9002226.02101,"730,42254-0323-60 ",.02)
 ;;42254-0323-60
 ;;9002226.02101,"730,42254-0333-60 ",.01)
 ;;42254-0333-60
 ;;9002226.02101,"730,42254-0333-60 ",.02)
 ;;42254-0333-60
 ;;9002226.02101,"730,42254-0358-30 ",.01)
 ;;42254-0358-30
 ;;9002226.02101,"730,42254-0358-30 ",.02)
 ;;42254-0358-30
 ;;9002226.02101,"730,42254-0368-00 ",.01)
 ;;42254-0368-00
 ;;9002226.02101,"730,42254-0368-00 ",.02)
 ;;42254-0368-00
 ;;9002226.02101,"730,42254-0368-30 ",.01)
 ;;42254-0368-30
 ;;9002226.02101,"730,42254-0368-30 ",.02)
 ;;42254-0368-30
 ;;9002226.02101,"730,42254-0368-60 ",.01)
 ;;42254-0368-60
 ;;9002226.02101,"730,42254-0368-60 ",.02)
 ;;42254-0368-60
 ;;9002226.02101,"730,42291-0244-04 ",.01)
 ;;42291-0244-04
 ;;9002226.02101,"730,42291-0244-04 ",.02)
 ;;42291-0244-04
 ;;9002226.02101,"730,42291-0244-16 ",.01)
 ;;42291-0244-16
 ;;9002226.02101,"730,42291-0244-16 ",.02)
 ;;42291-0244-16
 ;;9002226.02101,"730,42291-0245-01 ",.01)
 ;;42291-0245-01
 ;;9002226.02101,"730,42291-0245-01 ",.02)
 ;;42291-0245-01
 ;;9002226.02101,"730,42291-0247-90 ",.01)
 ;;42291-0247-90
 ;;9002226.02101,"730,42291-0247-90 ",.02)
 ;;42291-0247-90
 ;;9002226.02101,"730,42291-0271-30 ",.01)
 ;;42291-0271-30