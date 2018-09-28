BGP8ZS12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1799,21695-0209-72 ",.02)
 ;;21695-0209-72
 ;;9002226.02101,"1799,21695-0251-30 ",.01)
 ;;21695-0251-30
 ;;9002226.02101,"1799,21695-0251-30 ",.02)
 ;;21695-0251-30
 ;;9002226.02101,"1799,21695-0251-60 ",.01)
 ;;21695-0251-60
 ;;9002226.02101,"1799,21695-0251-60 ",.02)
 ;;21695-0251-60
 ;;9002226.02101,"1799,21695-0251-90 ",.01)
 ;;21695-0251-90
 ;;9002226.02101,"1799,21695-0251-90 ",.02)
 ;;21695-0251-90
 ;;9002226.02101,"1799,21695-0252-30 ",.01)
 ;;21695-0252-30
 ;;9002226.02101,"1799,21695-0252-30 ",.02)
 ;;21695-0252-30
 ;;9002226.02101,"1799,21695-0253-30 ",.01)
 ;;21695-0253-30
 ;;9002226.02101,"1799,21695-0253-30 ",.02)
 ;;21695-0253-30
 ;;9002226.02101,"1799,21695-0257-08 ",.01)
 ;;21695-0257-08
 ;;9002226.02101,"1799,21695-0257-08 ",.02)
 ;;21695-0257-08
 ;;9002226.02101,"1799,21695-0257-28 ",.01)
 ;;21695-0257-28
 ;;9002226.02101,"1799,21695-0257-28 ",.02)
 ;;21695-0257-28
 ;;9002226.02101,"1799,21695-0257-30 ",.01)
 ;;21695-0257-30
 ;;9002226.02101,"1799,21695-0257-30 ",.02)
 ;;21695-0257-30
 ;;9002226.02101,"1799,21695-0257-60 ",.01)
 ;;21695-0257-60
 ;;9002226.02101,"1799,21695-0257-60 ",.02)
 ;;21695-0257-60
 ;;9002226.02101,"1799,21695-0354-60 ",.01)
 ;;21695-0354-60
 ;;9002226.02101,"1799,21695-0354-60 ",.02)
 ;;21695-0354-60
 ;;9002226.02101,"1799,21695-0428-28 ",.01)
 ;;21695-0428-28
 ;;9002226.02101,"1799,21695-0428-28 ",.02)
 ;;21695-0428-28
 ;;9002226.02101,"1799,21695-0441-30 ",.01)
 ;;21695-0441-30
 ;;9002226.02101,"1799,21695-0441-30 ",.02)
 ;;21695-0441-30
 ;;9002226.02101,"1799,21695-0446-30 ",.01)
 ;;21695-0446-30
 ;;9002226.02101,"1799,21695-0446-30 ",.02)
 ;;21695-0446-30
 ;;9002226.02101,"1799,21695-0446-90 ",.01)
 ;;21695-0446-90
 ;;9002226.02101,"1799,21695-0446-90 ",.02)
 ;;21695-0446-90
 ;;9002226.02101,"1799,21695-0599-30 ",.01)
 ;;21695-0599-30
 ;;9002226.02101,"1799,21695-0599-30 ",.02)
 ;;21695-0599-30
 ;;9002226.02101,"1799,21695-0599-60 ",.01)
 ;;21695-0599-60
 ;;9002226.02101,"1799,21695-0599-60 ",.02)
 ;;21695-0599-60
 ;;9002226.02101,"1799,21695-0599-90 ",.01)
 ;;21695-0599-90
 ;;9002226.02101,"1799,21695-0599-90 ",.02)
 ;;21695-0599-90
 ;;9002226.02101,"1799,21695-0600-30 ",.01)
 ;;21695-0600-30
 ;;9002226.02101,"1799,21695-0600-30 ",.02)
 ;;21695-0600-30
 ;;9002226.02101,"1799,21695-0843-60 ",.01)
 ;;21695-0843-60
 ;;9002226.02101,"1799,21695-0843-60 ",.02)
 ;;21695-0843-60
 ;;9002226.02101,"1799,21695-0845-60 ",.01)
 ;;21695-0845-60
 ;;9002226.02101,"1799,21695-0845-60 ",.02)
 ;;21695-0845-60
 ;;9002226.02101,"1799,21695-0890-30 ",.01)
 ;;21695-0890-30
 ;;9002226.02101,"1799,21695-0890-30 ",.02)
 ;;21695-0890-30
 ;;9002226.02101,"1799,21695-0943-30 ",.01)
 ;;21695-0943-30
 ;;9002226.02101,"1799,21695-0943-30 ",.02)
 ;;21695-0943-30
 ;;9002226.02101,"1799,21695-0970-16 ",.01)
 ;;21695-0970-16
 ;;9002226.02101,"1799,21695-0970-16 ",.02)
 ;;21695-0970-16
 ;;9002226.02101,"1799,23155-0128-01 ",.01)
 ;;23155-0128-01
 ;;9002226.02101,"1799,23155-0128-01 ",.02)
 ;;23155-0128-01
 ;;9002226.02101,"1799,23155-0129-01 ",.01)
 ;;23155-0129-01
 ;;9002226.02101,"1799,23155-0129-01 ",.02)
 ;;23155-0129-01
 ;;9002226.02101,"1799,25021-0676-20 ",.01)
 ;;25021-0676-20
 ;;9002226.02101,"1799,25021-0676-20 ",.02)
 ;;25021-0676-20
 ;;9002226.02101,"1799,30698-0007-01 ",.01)
 ;;30698-0007-01
 ;;9002226.02101,"1799,30698-0007-01 ",.02)
 ;;30698-0007-01
 ;;9002226.02101,"1799,30698-0011-01 ",.01)
 ;;30698-0011-01
 ;;9002226.02101,"1799,30698-0011-01 ",.02)
 ;;30698-0011-01
 ;;9002226.02101,"1799,33261-0008-00 ",.01)
 ;;33261-0008-00
 ;;9002226.02101,"1799,33261-0008-00 ",.02)
 ;;33261-0008-00
 ;;9002226.02101,"1799,33261-0008-02 ",.01)
 ;;33261-0008-02
 ;;9002226.02101,"1799,33261-0008-02 ",.02)
 ;;33261-0008-02
 ;;9002226.02101,"1799,33261-0008-03 ",.01)
 ;;33261-0008-03
 ;;9002226.02101,"1799,33261-0008-03 ",.02)
 ;;33261-0008-03
 ;;9002226.02101,"1799,33261-0008-10 ",.01)
 ;;33261-0008-10
 ;;9002226.02101,"1799,33261-0008-10 ",.02)
 ;;33261-0008-10
 ;;9002226.02101,"1799,33261-0008-14 ",.01)
 ;;33261-0008-14
 ;;9002226.02101,"1799,33261-0008-14 ",.02)
 ;;33261-0008-14
 ;;9002226.02101,"1799,33261-0008-20 ",.01)
 ;;33261-0008-20
 ;;9002226.02101,"1799,33261-0008-20 ",.02)
 ;;33261-0008-20
 ;;9002226.02101,"1799,33261-0008-21 ",.01)
 ;;33261-0008-21
 ;;9002226.02101,"1799,33261-0008-21 ",.02)
 ;;33261-0008-21
 ;;9002226.02101,"1799,33261-0008-28 ",.01)
 ;;33261-0008-28
 ;;9002226.02101,"1799,33261-0008-28 ",.02)
 ;;33261-0008-28
 ;;9002226.02101,"1799,33261-0008-30 ",.01)
 ;;33261-0008-30
 ;;9002226.02101,"1799,33261-0008-30 ",.02)
 ;;33261-0008-30
 ;;9002226.02101,"1799,33261-0008-40 ",.01)
 ;;33261-0008-40
 ;;9002226.02101,"1799,33261-0008-40 ",.02)
 ;;33261-0008-40
 ;;9002226.02101,"1799,33261-0008-56 ",.01)
 ;;33261-0008-56
 ;;9002226.02101,"1799,33261-0008-56 ",.02)
 ;;33261-0008-56
 ;;9002226.02101,"1799,33261-0008-60 ",.01)
 ;;33261-0008-60
 ;;9002226.02101,"1799,33261-0008-60 ",.02)
 ;;33261-0008-60
 ;;9002226.02101,"1799,33261-0008-84 ",.01)
 ;;33261-0008-84
 ;;9002226.02101,"1799,33261-0008-84 ",.02)
 ;;33261-0008-84
 ;;9002226.02101,"1799,33261-0008-90 ",.01)
 ;;33261-0008-90
 ;;9002226.02101,"1799,33261-0008-90 ",.02)
 ;;33261-0008-90
 ;;9002226.02101,"1799,33261-0040-00 ",.01)
 ;;33261-0040-00
 ;;9002226.02101,"1799,33261-0040-00 ",.02)
 ;;33261-0040-00
 ;;9002226.02101,"1799,33261-0040-30 ",.01)
 ;;33261-0040-30
 ;;9002226.02101,"1799,33261-0040-30 ",.02)
 ;;33261-0040-30
 ;;9002226.02101,"1799,33261-0040-60 ",.01)
 ;;33261-0040-60
 ;;9002226.02101,"1799,33261-0040-60 ",.02)
 ;;33261-0040-60
 ;;9002226.02101,"1799,33261-0040-90 ",.01)
 ;;33261-0040-90
 ;;9002226.02101,"1799,33261-0040-90 ",.02)
 ;;33261-0040-90
 ;;9002226.02101,"1799,33261-0090-02 ",.01)
 ;;33261-0090-02
 ;;9002226.02101,"1799,33261-0090-02 ",.02)
 ;;33261-0090-02
 ;;9002226.02101,"1799,33261-0090-07 ",.01)
 ;;33261-0090-07
 ;;9002226.02101,"1799,33261-0090-07 ",.02)
 ;;33261-0090-07
 ;;9002226.02101,"1799,33261-0090-14 ",.01)
 ;;33261-0090-14
 ;;9002226.02101,"1799,33261-0090-14 ",.02)
 ;;33261-0090-14
 ;;9002226.02101,"1799,33261-0090-20 ",.01)
 ;;33261-0090-20
 ;;9002226.02101,"1799,33261-0090-20 ",.02)
 ;;33261-0090-20
 ;;9002226.02101,"1799,33261-0090-21 ",.01)
 ;;33261-0090-21
 ;;9002226.02101,"1799,33261-0090-21 ",.02)
 ;;33261-0090-21
 ;;9002226.02101,"1799,33261-0090-28 ",.01)
 ;;33261-0090-28
 ;;9002226.02101,"1799,33261-0090-28 ",.02)
 ;;33261-0090-28
 ;;9002226.02101,"1799,33261-0090-30 ",.01)
 ;;33261-0090-30
 ;;9002226.02101,"1799,33261-0090-30 ",.02)
 ;;33261-0090-30
 ;;9002226.02101,"1799,33261-0090-60 ",.01)
 ;;33261-0090-60
 ;;9002226.02101,"1799,33261-0090-60 ",.02)
 ;;33261-0090-60
 ;;9002226.02101,"1799,33261-0090-90 ",.01)
 ;;33261-0090-90
 ;;9002226.02101,"1799,33261-0090-90 ",.02)
 ;;33261-0090-90
 ;;9002226.02101,"1799,33261-0091-02 ",.01)
 ;;33261-0091-02
 ;;9002226.02101,"1799,33261-0091-02 ",.02)
 ;;33261-0091-02
 ;;9002226.02101,"1799,33261-0091-10 ",.01)
 ;;33261-0091-10
 ;;9002226.02101,"1799,33261-0091-10 ",.02)
 ;;33261-0091-10
 ;;9002226.02101,"1799,33261-0091-14 ",.01)
 ;;33261-0091-14
 ;;9002226.02101,"1799,33261-0091-14 ",.02)
 ;;33261-0091-14
 ;;9002226.02101,"1799,33261-0091-21 ",.01)
 ;;33261-0091-21
 ;;9002226.02101,"1799,33261-0091-21 ",.02)
 ;;33261-0091-21
 ;;9002226.02101,"1799,33261-0091-28 ",.01)
 ;;33261-0091-28
 ;;9002226.02101,"1799,33261-0091-28 ",.02)
 ;;33261-0091-28
 ;;9002226.02101,"1799,33261-0091-30 ",.01)
 ;;33261-0091-30
 ;;9002226.02101,"1799,33261-0091-30 ",.02)
 ;;33261-0091-30
 ;;9002226.02101,"1799,33261-0091-40 ",.01)
 ;;33261-0091-40
 ;;9002226.02101,"1799,33261-0091-40 ",.02)
 ;;33261-0091-40
 ;;9002226.02101,"1799,33261-0091-60 ",.01)
 ;;33261-0091-60
 ;;9002226.02101,"1799,33261-0091-60 ",.02)
 ;;33261-0091-60
 ;;9002226.02101,"1799,33261-0091-90 ",.01)
 ;;33261-0091-90
 ;;9002226.02101,"1799,33261-0091-90 ",.02)
 ;;33261-0091-90
 ;;9002226.02101,"1799,33261-0092-30 ",.01)
 ;;33261-0092-30
 ;;9002226.02101,"1799,33261-0092-30 ",.02)
 ;;33261-0092-30
 ;;9002226.02101,"1799,33261-0092-60 ",.01)
 ;;33261-0092-60
 ;;9002226.02101,"1799,33261-0092-60 ",.02)
 ;;33261-0092-60
 ;;9002226.02101,"1799,33261-0092-90 ",.01)
 ;;33261-0092-90
 ;;9002226.02101,"1799,33261-0092-90 ",.02)
 ;;33261-0092-90
 ;;9002226.02101,"1799,33261-0348-02 ",.01)
 ;;33261-0348-02
 ;;9002226.02101,"1799,33261-0348-02 ",.02)
 ;;33261-0348-02
 ;;9002226.02101,"1799,33261-0348-07 ",.01)
 ;;33261-0348-07
 ;;9002226.02101,"1799,33261-0348-07 ",.02)
 ;;33261-0348-07
 ;;9002226.02101,"1799,33261-0348-14 ",.01)
 ;;33261-0348-14
 ;;9002226.02101,"1799,33261-0348-14 ",.02)
 ;;33261-0348-14
 ;;9002226.02101,"1799,33261-0348-20 ",.01)
 ;;33261-0348-20
 ;;9002226.02101,"1799,33261-0348-20 ",.02)
 ;;33261-0348-20
 ;;9002226.02101,"1799,33261-0348-28 ",.01)
 ;;33261-0348-28
 ;;9002226.02101,"1799,33261-0348-28 ",.02)
 ;;33261-0348-28
 ;;9002226.02101,"1799,33261-0348-30 ",.01)
 ;;33261-0348-30
 ;;9002226.02101,"1799,33261-0348-30 ",.02)
 ;;33261-0348-30
 ;;9002226.02101,"1799,33261-0348-60 ",.01)
 ;;33261-0348-60
 ;;9002226.02101,"1799,33261-0348-60 ",.02)
 ;;33261-0348-60
 ;;9002226.02101,"1799,33261-0348-90 ",.01)
 ;;33261-0348-90
 ;;9002226.02101,"1799,33261-0348-90 ",.02)
 ;;33261-0348-90
 ;;9002226.02101,"1799,33261-0358-00 ",.01)
 ;;33261-0358-00
 ;;9002226.02101,"1799,33261-0358-00 ",.02)
 ;;33261-0358-00
 ;;9002226.02101,"1799,33261-0358-02 ",.01)
 ;;33261-0358-02
 ;;9002226.02101,"1799,33261-0358-02 ",.02)
 ;;33261-0358-02
 ;;9002226.02101,"1799,33261-0358-03 ",.01)
 ;;33261-0358-03
 ;;9002226.02101,"1799,33261-0358-03 ",.02)
 ;;33261-0358-03
 ;;9002226.02101,"1799,33261-0358-07 ",.01)
 ;;33261-0358-07
 ;;9002226.02101,"1799,33261-0358-07 ",.02)
 ;;33261-0358-07
 ;;9002226.02101,"1799,33261-0358-14 ",.01)
 ;;33261-0358-14
 ;;9002226.02101,"1799,33261-0358-14 ",.02)
 ;;33261-0358-14
 ;;9002226.02101,"1799,33261-0358-20 ",.01)
 ;;33261-0358-20
 ;;9002226.02101,"1799,33261-0358-20 ",.02)
 ;;33261-0358-20
 ;;9002226.02101,"1799,33261-0358-21 ",.01)
 ;;33261-0358-21
 ;;9002226.02101,"1799,33261-0358-21 ",.02)
 ;;33261-0358-21
 ;;9002226.02101,"1799,33261-0358-28 ",.01)
 ;;33261-0358-28
 ;;9002226.02101,"1799,33261-0358-28 ",.02)
 ;;33261-0358-28
 ;;9002226.02101,"1799,33261-0358-30 ",.01)
 ;;33261-0358-30
 ;;9002226.02101,"1799,33261-0358-30 ",.02)
 ;;33261-0358-30
 ;;9002226.02101,"1799,33261-0358-60 ",.01)
 ;;33261-0358-60
 ;;9002226.02101,"1799,33261-0358-60 ",.02)
 ;;33261-0358-60
 ;;9002226.02101,"1799,33261-0358-90 ",.01)
 ;;33261-0358-90
 ;;9002226.02101,"1799,33261-0358-90 ",.02)
 ;;33261-0358-90
 ;;9002226.02101,"1799,33261-0363-30 ",.01)
 ;;33261-0363-30
 ;;9002226.02101,"1799,33261-0363-30 ",.02)
 ;;33261-0363-30
 ;;9002226.02101,"1799,33261-0363-60 ",.01)
 ;;33261-0363-60
 ;;9002226.02101,"1799,33261-0363-60 ",.02)
 ;;33261-0363-60
 ;;9002226.02101,"1799,33261-0363-90 ",.01)
 ;;33261-0363-90
 ;;9002226.02101,"1799,33261-0363-90 ",.02)
 ;;33261-0363-90
 ;;9002226.02101,"1799,33261-0459-02 ",.01)
 ;;33261-0459-02
 ;;9002226.02101,"1799,33261-0459-02 ",.02)
 ;;33261-0459-02
 ;;9002226.02101,"1799,33261-0459-10 ",.01)
 ;;33261-0459-10
 ;;9002226.02101,"1799,33261-0459-10 ",.02)
 ;;33261-0459-10
 ;;9002226.02101,"1799,33261-0459-12 ",.01)
 ;;33261-0459-12
 ;;9002226.02101,"1799,33261-0459-12 ",.02)
 ;;33261-0459-12
 ;;9002226.02101,"1799,33261-0459-20 ",.01)
 ;;33261-0459-20
 ;;9002226.02101,"1799,33261-0459-20 ",.02)
 ;;33261-0459-20
 ;;9002226.02101,"1799,33261-0459-30 ",.01)
 ;;33261-0459-30
 ;;9002226.02101,"1799,33261-0459-30 ",.02)
 ;;33261-0459-30