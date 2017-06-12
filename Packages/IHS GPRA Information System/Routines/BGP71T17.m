BGP71T17 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1218,49884-0825-01 ",.01)
 ;;49884-0825-01
 ;;9002226.02101,"1218,49884-0825-01 ",.02)
 ;;49884-0825-01
 ;;9002226.02101,"1218,49884-0825-10 ",.01)
 ;;49884-0825-10
 ;;9002226.02101,"1218,49884-0825-10 ",.02)
 ;;49884-0825-10
 ;;9002226.02101,"1218,49884-0826-01 ",.01)
 ;;49884-0826-01
 ;;9002226.02101,"1218,49884-0826-01 ",.02)
 ;;49884-0826-01
 ;;9002226.02101,"1218,49884-0826-10 ",.01)
 ;;49884-0826-10
 ;;9002226.02101,"1218,49884-0826-10 ",.02)
 ;;49884-0826-10
 ;;9002226.02101,"1218,49884-0827-01 ",.01)
 ;;49884-0827-01
 ;;9002226.02101,"1218,49884-0827-01 ",.02)
 ;;49884-0827-01
 ;;9002226.02101,"1218,49884-0827-10 ",.01)
 ;;49884-0827-10
 ;;9002226.02101,"1218,49884-0827-10 ",.02)
 ;;49884-0827-10
 ;;9002226.02101,"1218,49884-0828-01 ",.01)
 ;;49884-0828-01
 ;;9002226.02101,"1218,49884-0828-01 ",.02)
 ;;49884-0828-01
 ;;9002226.02101,"1218,49884-0828-10 ",.01)
 ;;49884-0828-10
 ;;9002226.02101,"1218,49884-0828-10 ",.02)
 ;;49884-0828-10
 ;;9002226.02101,"1218,49999-0010-00 ",.01)
 ;;49999-0010-00
 ;;9002226.02101,"1218,49999-0010-00 ",.02)
 ;;49999-0010-00
 ;;9002226.02101,"1218,49999-0010-30 ",.01)
 ;;49999-0010-30
 ;;9002226.02101,"1218,49999-0010-30 ",.02)
 ;;49999-0010-30
 ;;9002226.02101,"1218,49999-0010-40 ",.01)
 ;;49999-0010-40
 ;;9002226.02101,"1218,49999-0010-40 ",.02)
 ;;49999-0010-40
 ;;9002226.02101,"1218,49999-0010-60 ",.01)
 ;;49999-0010-60
 ;;9002226.02101,"1218,49999-0010-60 ",.02)
 ;;49999-0010-60
 ;;9002226.02101,"1218,49999-0104-00 ",.01)
 ;;49999-0104-00
 ;;9002226.02101,"1218,49999-0104-00 ",.02)
 ;;49999-0104-00
 ;;9002226.02101,"1218,49999-0104-30 ",.01)
 ;;49999-0104-30
 ;;9002226.02101,"1218,49999-0104-30 ",.02)
 ;;49999-0104-30
 ;;9002226.02101,"1218,49999-0104-60 ",.01)
 ;;49999-0104-60
 ;;9002226.02101,"1218,49999-0104-60 ",.02)
 ;;49999-0104-60
 ;;9002226.02101,"1218,49999-0104-90 ",.01)
 ;;49999-0104-90
 ;;9002226.02101,"1218,49999-0104-90 ",.02)
 ;;49999-0104-90
 ;;9002226.02101,"1218,49999-0178-00 ",.01)
 ;;49999-0178-00
 ;;9002226.02101,"1218,49999-0178-00 ",.02)
 ;;49999-0178-00
 ;;9002226.02101,"1218,49999-0178-30 ",.01)
 ;;49999-0178-30
 ;;9002226.02101,"1218,49999-0178-30 ",.02)
 ;;49999-0178-30
 ;;9002226.02101,"1218,49999-0178-60 ",.01)
 ;;49999-0178-60
 ;;9002226.02101,"1218,49999-0178-60 ",.02)
 ;;49999-0178-60
 ;;9002226.02101,"1218,49999-0178-90 ",.01)
 ;;49999-0178-90
 ;;9002226.02101,"1218,49999-0178-90 ",.02)
 ;;49999-0178-90
 ;;9002226.02101,"1218,49999-0201-30 ",.01)
 ;;49999-0201-30
 ;;9002226.02101,"1218,49999-0201-30 ",.02)
 ;;49999-0201-30
 ;;9002226.02101,"1218,49999-0202-30 ",.01)
 ;;49999-0202-30
 ;;9002226.02101,"1218,49999-0202-30 ",.02)
 ;;49999-0202-30
 ;;9002226.02101,"1218,49999-0226-00 ",.01)
 ;;49999-0226-00
 ;;9002226.02101,"1218,49999-0226-00 ",.02)
 ;;49999-0226-00
 ;;9002226.02101,"1218,49999-0226-30 ",.01)
 ;;49999-0226-30
 ;;9002226.02101,"1218,49999-0226-30 ",.02)
 ;;49999-0226-30
 ;;9002226.02101,"1218,49999-0226-60 ",.01)
 ;;49999-0226-60
 ;;9002226.02101,"1218,49999-0226-60 ",.02)
 ;;49999-0226-60
 ;;9002226.02101,"1218,49999-0286-60 ",.01)
 ;;49999-0286-60
 ;;9002226.02101,"1218,49999-0286-60 ",.02)
 ;;49999-0286-60
 ;;9002226.02101,"1218,49999-0286-90 ",.01)
 ;;49999-0286-90
 ;;9002226.02101,"1218,49999-0286-90 ",.02)
 ;;49999-0286-90
 ;;9002226.02101,"1218,49999-0454-00 ",.01)
 ;;49999-0454-00
 ;;9002226.02101,"1218,49999-0454-00 ",.02)
 ;;49999-0454-00
 ;;9002226.02101,"1218,49999-0454-10 ",.01)
 ;;49999-0454-10
 ;;9002226.02101,"1218,49999-0454-10 ",.02)
 ;;49999-0454-10
 ;;9002226.02101,"1218,49999-0454-30 ",.01)
 ;;49999-0454-30
 ;;9002226.02101,"1218,49999-0454-30 ",.02)
 ;;49999-0454-30
 ;;9002226.02101,"1218,49999-0454-60 ",.01)
 ;;49999-0454-60
 ;;9002226.02101,"1218,49999-0454-60 ",.02)
 ;;49999-0454-60
 ;;9002226.02101,"1218,49999-0454-90 ",.01)
 ;;49999-0454-90
 ;;9002226.02101,"1218,49999-0454-90 ",.02)
 ;;49999-0454-90
 ;;9002226.02101,"1218,49999-0482-30 ",.01)
 ;;49999-0482-30
 ;;9002226.02101,"1218,49999-0482-30 ",.02)
 ;;49999-0482-30
 ;;9002226.02101,"1218,49999-0483-00 ",.01)
 ;;49999-0483-00
 ;;9002226.02101,"1218,49999-0483-00 ",.02)
 ;;49999-0483-00
 ;;9002226.02101,"1218,49999-0483-30 ",.01)
 ;;49999-0483-30
 ;;9002226.02101,"1218,49999-0483-30 ",.02)
 ;;49999-0483-30
 ;;9002226.02101,"1218,49999-0484-00 ",.01)
 ;;49999-0484-00
 ;;9002226.02101,"1218,49999-0484-00 ",.02)
 ;;49999-0484-00
 ;;9002226.02101,"1218,49999-0484-30 ",.01)
 ;;49999-0484-30
 ;;9002226.02101,"1218,49999-0484-30 ",.02)
 ;;49999-0484-30
 ;;9002226.02101,"1218,49999-0512-30 ",.01)
 ;;49999-0512-30
 ;;9002226.02101,"1218,49999-0512-30 ",.02)
 ;;49999-0512-30
 ;;9002226.02101,"1218,49999-0512-60 ",.01)
 ;;49999-0512-60
 ;;9002226.02101,"1218,49999-0512-60 ",.02)
 ;;49999-0512-60
 ;;9002226.02101,"1218,49999-0512-90 ",.01)
 ;;49999-0512-90
 ;;9002226.02101,"1218,49999-0512-90 ",.02)
 ;;49999-0512-90
 ;;9002226.02101,"1218,49999-0555-14 ",.01)
 ;;49999-0555-14
 ;;9002226.02101,"1218,49999-0555-14 ",.02)
 ;;49999-0555-14
 ;;9002226.02101,"1218,49999-0555-30 ",.01)
 ;;49999-0555-30
 ;;9002226.02101,"1218,49999-0555-30 ",.02)
 ;;49999-0555-30
 ;;9002226.02101,"1218,49999-0555-60 ",.01)
 ;;49999-0555-60
 ;;9002226.02101,"1218,49999-0555-60 ",.02)
 ;;49999-0555-60
 ;;9002226.02101,"1218,49999-0555-90 ",.01)
 ;;49999-0555-90
 ;;9002226.02101,"1218,49999-0555-90 ",.02)
 ;;49999-0555-90
 ;;9002226.02101,"1218,49999-0575-10 ",.01)
 ;;49999-0575-10
 ;;9002226.02101,"1218,49999-0575-10 ",.02)
 ;;49999-0575-10
 ;;9002226.02101,"1218,49999-0575-20 ",.01)
 ;;49999-0575-20
 ;;9002226.02101,"1218,49999-0575-20 ",.02)
 ;;49999-0575-20
 ;;9002226.02101,"1218,49999-0575-30 ",.01)
 ;;49999-0575-30
 ;;9002226.02101,"1218,49999-0575-30 ",.02)
 ;;49999-0575-30
 ;;9002226.02101,"1218,49999-0575-60 ",.01)
 ;;49999-0575-60
 ;;9002226.02101,"1218,49999-0575-60 ",.02)
 ;;49999-0575-60
 ;;9002226.02101,"1218,49999-0575-90 ",.01)
 ;;49999-0575-90
 ;;9002226.02101,"1218,49999-0575-90 ",.02)
 ;;49999-0575-90
 ;;9002226.02101,"1218,49999-0577-20 ",.01)
 ;;49999-0577-20
 ;;9002226.02101,"1218,49999-0577-20 ",.02)
 ;;49999-0577-20
 ;;9002226.02101,"1218,49999-0866-00 ",.01)
 ;;49999-0866-00
 ;;9002226.02101,"1218,49999-0866-00 ",.02)
 ;;49999-0866-00
 ;;9002226.02101,"1218,49999-0872-30 ",.01)
 ;;49999-0872-30
 ;;9002226.02101,"1218,49999-0872-30 ",.02)
 ;;49999-0872-30
 ;;9002226.02101,"1218,49999-0938-30 ",.01)
 ;;49999-0938-30
 ;;9002226.02101,"1218,49999-0938-30 ",.02)
 ;;49999-0938-30
 ;;9002226.02101,"1218,49999-0939-30 ",.01)
 ;;49999-0939-30
 ;;9002226.02101,"1218,49999-0939-30 ",.02)
 ;;49999-0939-30
 ;;9002226.02101,"1218,49999-0996-00 ",.01)
 ;;49999-0996-00
 ;;9002226.02101,"1218,49999-0996-00 ",.02)
 ;;49999-0996-00
 ;;9002226.02101,"1218,50111-0467-01 ",.01)
 ;;50111-0467-01
 ;;9002226.02101,"1218,50111-0467-01 ",.02)
 ;;50111-0467-01
 ;;9002226.02101,"1218,50111-0467-03 ",.01)
 ;;50111-0467-03
 ;;9002226.02101,"1218,50111-0467-03 ",.02)
 ;;50111-0467-03
 ;;9002226.02101,"1218,50111-0468-01 ",.01)
 ;;50111-0468-01
 ;;9002226.02101,"1218,50111-0468-01 ",.02)
 ;;50111-0468-01
 ;;9002226.02101,"1218,50111-0468-03 ",.01)
 ;;50111-0468-03
 ;;9002226.02101,"1218,50111-0468-03 ",.02)
 ;;50111-0468-03
 ;;9002226.02101,"1218,50111-0469-01 ",.01)
 ;;50111-0469-01
 ;;9002226.02101,"1218,50111-0469-01 ",.02)
 ;;50111-0469-01
 ;;9002226.02101,"1218,50111-0469-03 ",.01)
 ;;50111-0469-03
 ;;9002226.02101,"1218,50111-0469-03 ",.02)
 ;;50111-0469-03
 ;;9002226.02101,"1218,50111-0470-01 ",.01)
 ;;50111-0470-01
 ;;9002226.02101,"1218,50111-0470-01 ",.02)
 ;;50111-0470-01
 ;;9002226.02101,"1218,50111-0471-01 ",.01)
 ;;50111-0471-01
 ;;9002226.02101,"1218,50111-0471-01 ",.02)
 ;;50111-0471-01
 ;;9002226.02101,"1218,50111-0471-02 ",.01)
 ;;50111-0471-02
 ;;9002226.02101,"1218,50111-0471-02 ",.02)
 ;;50111-0471-02
 ;;9002226.02101,"1218,50268-0050-11 ",.01)
 ;;50268-0050-11
 ;;9002226.02101,"1218,50268-0050-11 ",.02)
 ;;50268-0050-11
 ;;9002226.02101,"1218,50268-0050-15 ",.01)
 ;;50268-0050-15
 ;;9002226.02101,"1218,50268-0050-15 ",.02)
 ;;50268-0050-15
 ;;9002226.02101,"1218,50268-0051-11 ",.01)
 ;;50268-0051-11
 ;;9002226.02101,"1218,50268-0051-11 ",.02)
 ;;50268-0051-11
 ;;9002226.02101,"1218,50268-0051-15 ",.01)
 ;;50268-0051-15
 ;;9002226.02101,"1218,50268-0051-15 ",.02)
 ;;50268-0051-15
 ;;9002226.02101,"1218,50436-0902-01 ",.01)
 ;;50436-0902-01
 ;;9002226.02101,"1218,50436-0902-01 ",.02)
 ;;50436-0902-01
 ;;9002226.02101,"1218,50436-4313-02 ",.01)
 ;;50436-4313-02
 ;;9002226.02101,"1218,50436-4313-02 ",.02)
 ;;50436-4313-02
 ;;9002226.02101,"1218,50436-4314-02 ",.01)
 ;;50436-4314-02
 ;;9002226.02101,"1218,50436-4314-02 ",.02)
 ;;50436-4314-02
 ;;9002226.02101,"1218,50436-4315-01 ",.01)
 ;;50436-4315-01
 ;;9002226.02101,"1218,50436-4315-01 ",.02)
 ;;50436-4315-01
 ;;9002226.02101,"1218,50742-0101-01 ",.01)
 ;;50742-0101-01
 ;;9002226.02101,"1218,50742-0101-01 ",.02)
 ;;50742-0101-01
 ;;9002226.02101,"1218,50742-0101-10 ",.01)
 ;;50742-0101-10
 ;;9002226.02101,"1218,50742-0101-10 ",.02)
 ;;50742-0101-10
 ;;9002226.02101,"1218,50742-0102-01 ",.01)
 ;;50742-0102-01
 ;;9002226.02101,"1218,50742-0102-01 ",.02)
 ;;50742-0102-01
 ;;9002226.02101,"1218,50742-0102-10 ",.01)
 ;;50742-0102-10
 ;;9002226.02101,"1218,50742-0102-10 ",.02)
 ;;50742-0102-10
 ;;9002226.02101,"1218,50742-0103-01 ",.01)
 ;;50742-0103-01
 ;;9002226.02101,"1218,50742-0103-01 ",.02)
 ;;50742-0103-01
 ;;9002226.02101,"1218,50742-0103-10 ",.01)
 ;;50742-0103-10
 ;;9002226.02101,"1218,50742-0103-10 ",.02)
 ;;50742-0103-10
 ;;9002226.02101,"1218,50742-0107-01 ",.01)
 ;;50742-0107-01
 ;;9002226.02101,"1218,50742-0107-01 ",.02)
 ;;50742-0107-01
 ;;9002226.02101,"1218,50742-0107-05 ",.01)
 ;;50742-0107-05
 ;;9002226.02101,"1218,50742-0107-05 ",.02)
 ;;50742-0107-05
 ;;9002226.02101,"1218,50742-0108-01 ",.01)
 ;;50742-0108-01
 ;;9002226.02101,"1218,50742-0108-01 ",.02)
 ;;50742-0108-01
 ;;9002226.02101,"1218,50742-0108-10 ",.01)
 ;;50742-0108-10
 ;;9002226.02101,"1218,50742-0108-10 ",.02)
 ;;50742-0108-10
 ;;9002226.02101,"1218,50742-0109-01 ",.01)
 ;;50742-0109-01
 ;;9002226.02101,"1218,50742-0109-01 ",.02)
 ;;50742-0109-01
 ;;9002226.02101,"1218,50742-0109-10 ",.01)
 ;;50742-0109-10
 ;;9002226.02101,"1218,50742-0109-10 ",.02)
 ;;50742-0109-10
 ;;9002226.02101,"1218,51079-0169-01 ",.01)
 ;;51079-0169-01
 ;;9002226.02101,"1218,51079-0169-01 ",.02)
 ;;51079-0169-01
 ;;9002226.02101,"1218,51079-0169-20 ",.01)
 ;;51079-0169-20
 ;;9002226.02101,"1218,51079-0169-20 ",.02)
 ;;51079-0169-20
 ;;9002226.02101,"1218,51079-0170-01 ",.01)
 ;;51079-0170-01
 ;;9002226.02101,"1218,51079-0170-01 ",.02)
 ;;51079-0170-01
 ;;9002226.02101,"1218,51079-0170-20 ",.01)
 ;;51079-0170-20
 ;;9002226.02101,"1218,51079-0170-20 ",.02)
 ;;51079-0170-20
 ;;9002226.02101,"1218,51079-0171-01 ",.01)
 ;;51079-0171-01
 ;;9002226.02101,"1218,51079-0171-01 ",.02)
 ;;51079-0171-01
 ;;9002226.02101,"1218,51079-0171-03 ",.01)
 ;;51079-0171-03
 ;;9002226.02101,"1218,51079-0171-03 ",.02)
 ;;51079-0171-03
 ;;9002226.02101,"1218,51079-0255-01 ",.01)
 ;;51079-0255-01
 ;;9002226.02101,"1218,51079-0255-01 ",.02)
 ;;51079-0255-01
 ;;9002226.02101,"1218,51079-0255-17 ",.01)
 ;;51079-0255-17
 ;;9002226.02101,"1218,51079-0255-17 ",.02)
 ;;51079-0255-17
 ;;9002226.02101,"1218,51079-0255-19 ",.01)
 ;;51079-0255-19
 ;;9002226.02101,"1218,51079-0255-19 ",.02)
 ;;51079-0255-19
 ;;9002226.02101,"1218,51079-0255-20 ",.01)
 ;;51079-0255-20
 ;;9002226.02101,"1218,51079-0255-20 ",.02)
 ;;51079-0255-20
 ;;9002226.02101,"1218,51079-0277-01 ",.01)
 ;;51079-0277-01