BGP8ZH45 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,50458-0167-01 ",.02)
 ;;50458-0167-01
 ;;9002226.02101,"868,50458-0168-01 ",.01)
 ;;50458-0168-01
 ;;9002226.02101,"868,50458-0168-01 ",.02)
 ;;50458-0168-01
 ;;9002226.02101,"868,50458-0170-01 ",.01)
 ;;50458-0170-01
 ;;9002226.02101,"868,50458-0170-01 ",.02)
 ;;50458-0170-01
 ;;9002226.02101,"868,50458-0920-10 ",.01)
 ;;50458-0920-10
 ;;9002226.02101,"868,50458-0920-10 ",.02)
 ;;50458-0920-10
 ;;9002226.02101,"868,50458-0920-50 ",.01)
 ;;50458-0920-50
 ;;9002226.02101,"868,50458-0920-50 ",.02)
 ;;50458-0920-50
 ;;9002226.02101,"868,50458-0925-10 ",.01)
 ;;50458-0925-10
 ;;9002226.02101,"868,50458-0925-10 ",.02)
 ;;50458-0925-10
 ;;9002226.02101,"868,50458-0925-50 ",.01)
 ;;50458-0925-50
 ;;9002226.02101,"868,50458-0925-50 ",.02)
 ;;50458-0925-50
 ;;9002226.02101,"868,50458-0930-10 ",.01)
 ;;50458-0930-10
 ;;9002226.02101,"868,50458-0930-10 ",.02)
 ;;50458-0930-10
 ;;9002226.02101,"868,50458-0930-20 ",.01)
 ;;50458-0930-20
 ;;9002226.02101,"868,50458-0930-20 ",.02)
 ;;50458-0930-20
 ;;9002226.02101,"868,50962-0302-20 ",.01)
 ;;50962-0302-20
 ;;9002226.02101,"868,50962-0302-20 ",.02)
 ;;50962-0302-20
 ;;9002226.02101,"868,51079-0016-01 ",.01)
 ;;51079-0016-01
 ;;9002226.02101,"868,51079-0016-01 ",.02)
 ;;51079-0016-01
 ;;9002226.02101,"868,51079-0016-20 ",.01)
 ;;51079-0016-20
 ;;9002226.02101,"868,51079-0016-20 ",.02)
 ;;51079-0016-20
 ;;9002226.02101,"868,51079-0017-01 ",.01)
 ;;51079-0017-01
 ;;9002226.02101,"868,51079-0017-01 ",.02)
 ;;51079-0017-01
 ;;9002226.02101,"868,51079-0017-20 ",.01)
 ;;51079-0017-20
 ;;9002226.02101,"868,51079-0017-20 ",.02)
 ;;51079-0017-20
 ;;9002226.02101,"868,51079-0034-01 ",.01)
 ;;51079-0034-01
 ;;9002226.02101,"868,51079-0034-01 ",.02)
 ;;51079-0034-01
 ;;9002226.02101,"868,51079-0034-20 ",.01)
 ;;51079-0034-20
 ;;9002226.02101,"868,51079-0034-20 ",.02)
 ;;51079-0034-20
 ;;9002226.02101,"868,51079-0040-01 ",.01)
 ;;51079-0040-01
 ;;9002226.02101,"868,51079-0040-01 ",.02)
 ;;51079-0040-01
 ;;9002226.02101,"868,51079-0040-20 ",.01)
 ;;51079-0040-20
 ;;9002226.02101,"868,51079-0040-20 ",.02)
 ;;51079-0040-20
 ;;9002226.02101,"868,51079-0128-01 ",.01)
 ;;51079-0128-01
 ;;9002226.02101,"868,51079-0128-01 ",.02)
 ;;51079-0128-01
 ;;9002226.02101,"868,51079-0128-08 ",.01)
 ;;51079-0128-08
 ;;9002226.02101,"868,51079-0128-08 ",.02)
 ;;51079-0128-08
 ;;9002226.02101,"868,51079-0128-20 ",.01)
 ;;51079-0128-20
 ;;9002226.02101,"868,51079-0128-20 ",.02)
 ;;51079-0128-20
 ;;9002226.02101,"868,51079-0128-90 ",.01)
 ;;51079-0128-90
 ;;9002226.02101,"868,51079-0128-90 ",.02)
 ;;51079-0128-90
 ;;9002226.02101,"868,51079-0128-92 ",.01)
 ;;51079-0128-92
 ;;9002226.02101,"868,51079-0128-92 ",.02)
 ;;51079-0128-92
 ;;9002226.02101,"868,51079-0181-01 ",.01)
 ;;51079-0181-01
 ;;9002226.02101,"868,51079-0181-01 ",.02)
 ;;51079-0181-01
 ;;9002226.02101,"868,51079-0181-20 ",.01)
 ;;51079-0181-20
 ;;9002226.02101,"868,51079-0181-20 ",.02)
 ;;51079-0181-20
 ;;9002226.02101,"868,51079-0182-01 ",.01)
 ;;51079-0182-01
 ;;9002226.02101,"868,51079-0182-01 ",.02)
 ;;51079-0182-01
 ;;9002226.02101,"868,51079-0182-20 ",.01)
 ;;51079-0182-20
 ;;9002226.02101,"868,51079-0182-20 ",.02)
 ;;51079-0182-20
 ;;9002226.02101,"868,51079-0265-01 ",.01)
 ;;51079-0265-01
 ;;9002226.02101,"868,51079-0265-01 ",.02)
 ;;51079-0265-01
 ;;9002226.02101,"868,51079-0265-20 ",.01)
 ;;51079-0265-20
 ;;9002226.02101,"868,51079-0265-20 ",.02)
 ;;51079-0265-20
 ;;9002226.02101,"868,51079-0267-01 ",.01)
 ;;51079-0267-01
 ;;9002226.02101,"868,51079-0267-01 ",.02)
 ;;51079-0267-01
 ;;9002226.02101,"868,51079-0267-20 ",.01)
 ;;51079-0267-20
 ;;9002226.02101,"868,51079-0267-20 ",.02)
 ;;51079-0267-20
 ;;9002226.02101,"868,51079-0402-01 ",.01)
 ;;51079-0402-01
 ;;9002226.02101,"868,51079-0402-01 ",.02)
 ;;51079-0402-01
 ;;9002226.02101,"868,51079-0402-20 ",.01)
 ;;51079-0402-20
 ;;9002226.02101,"868,51079-0402-20 ",.02)
 ;;51079-0402-20
 ;;9002226.02101,"868,51079-0591-01 ",.01)
 ;;51079-0591-01
 ;;9002226.02101,"868,51079-0591-01 ",.02)
 ;;51079-0591-01
 ;;9002226.02101,"868,51079-0591-20 ",.01)
 ;;51079-0591-20
 ;;9002226.02101,"868,51079-0591-20 ",.02)
 ;;51079-0591-20
 ;;9002226.02101,"868,51079-0598-01 ",.01)
 ;;51079-0598-01
 ;;9002226.02101,"868,51079-0598-01 ",.02)
 ;;51079-0598-01
 ;;9002226.02101,"868,51079-0598-17 ",.01)
 ;;51079-0598-17
 ;;9002226.02101,"868,51079-0598-17 ",.02)
 ;;51079-0598-17
 ;;9002226.02101,"868,51079-0598-19 ",.01)
 ;;51079-0598-19
 ;;9002226.02101,"868,51079-0598-19 ",.02)
 ;;51079-0598-19
 ;;9002226.02101,"868,51079-0598-20 ",.01)
 ;;51079-0598-20
 ;;9002226.02101,"868,51079-0598-20 ",.02)
 ;;51079-0598-20
 ;;9002226.02101,"868,51079-0601-01 ",.01)
 ;;51079-0601-01
 ;;9002226.02101,"868,51079-0601-01 ",.02)
 ;;51079-0601-01
 ;;9002226.02101,"868,51079-0601-20 ",.01)
 ;;51079-0601-20
 ;;9002226.02101,"868,51079-0601-20 ",.02)
 ;;51079-0601-20
 ;;9002226.02101,"868,51079-0604-01 ",.01)
 ;;51079-0604-01
 ;;9002226.02101,"868,51079-0604-01 ",.02)
 ;;51079-0604-01
 ;;9002226.02101,"868,51079-0604-20 ",.01)
 ;;51079-0604-20
 ;;9002226.02101,"868,51079-0604-20 ",.02)
 ;;51079-0604-20
 ;;9002226.02101,"868,51079-0605-01 ",.01)
 ;;51079-0605-01
 ;;9002226.02101,"868,51079-0605-01 ",.02)
 ;;51079-0605-01
 ;;9002226.02101,"868,51079-0605-20 ",.01)
 ;;51079-0605-20
 ;;9002226.02101,"868,51079-0605-20 ",.02)
 ;;51079-0605-20
 ;;9002226.02101,"868,51079-0672-01 ",.01)
 ;;51079-0672-01
 ;;9002226.02101,"868,51079-0672-01 ",.02)
 ;;51079-0672-01
 ;;9002226.02101,"868,51079-0672-20 ",.01)
 ;;51079-0672-20
 ;;9002226.02101,"868,51079-0672-20 ",.02)
 ;;51079-0672-20
 ;;9002226.02101,"868,51079-0673-01 ",.01)
 ;;51079-0673-01
 ;;9002226.02101,"868,51079-0673-01 ",.02)
 ;;51079-0673-01
 ;;9002226.02101,"868,51079-0673-06 ",.01)
 ;;51079-0673-06
 ;;9002226.02101,"868,51079-0673-06 ",.02)
 ;;51079-0673-06
 ;;9002226.02101,"868,51285-0445-21 ",.01)
 ;;51285-0445-21
 ;;9002226.02101,"868,51285-0445-21 ",.02)
 ;;51285-0445-21
 ;;9002226.02101,"868,51285-0445-22 ",.01)
 ;;51285-0445-22
 ;;9002226.02101,"868,51285-0445-22 ",.02)
 ;;51285-0445-22
 ;;9002226.02101,"868,51285-0445-23 ",.01)
 ;;51285-0445-23
 ;;9002226.02101,"868,51285-0445-23 ",.02)
 ;;51285-0445-23
 ;;9002226.02101,"868,51655-0097-27 ",.01)
 ;;51655-0097-27
 ;;9002226.02101,"868,51655-0097-27 ",.02)
 ;;51655-0097-27
 ;;9002226.02101,"868,51862-0194-60 ",.01)
 ;;51862-0194-60
 ;;9002226.02101,"868,51862-0194-60 ",.02)
 ;;51862-0194-60
 ;;9002226.02101,"868,51862-0486-01 ",.01)
 ;;51862-0486-01
 ;;9002226.02101,"868,51862-0486-01 ",.02)
 ;;51862-0486-01
 ;;9002226.02101,"868,51862-0557-12 ",.01)
 ;;51862-0557-12
 ;;9002226.02101,"868,51862-0557-12 ",.02)
 ;;51862-0557-12
 ;;9002226.02101,"868,51862-0558-06 ",.01)
 ;;51862-0558-06
 ;;9002226.02101,"868,51862-0558-06 ",.02)
 ;;51862-0558-06
 ;;9002226.02101,"868,51862-0559-60 ",.01)
 ;;51862-0559-60
 ;;9002226.02101,"868,51862-0559-60 ",.02)
 ;;51862-0559-60
 ;;9002226.02101,"868,51862-0695-06 ",.01)
 ;;51862-0695-06
 ;;9002226.02101,"868,51862-0695-06 ",.02)
 ;;51862-0695-06
 ;;9002226.02101,"868,51862-0696-06 ",.01)
 ;;51862-0696-06
 ;;9002226.02101,"868,51862-0696-06 ",.02)
 ;;51862-0696-06
 ;;9002226.02101,"868,51991-0943-33 ",.01)
 ;;51991-0943-33
 ;;9002226.02101,"868,51991-0943-33 ",.02)
 ;;51991-0943-33
 ;;9002226.02101,"868,52343-0047-20 ",.01)
 ;;52343-0047-20
 ;;9002226.02101,"868,52343-0047-20 ",.02)
 ;;52343-0047-20
 ;;9002226.02101,"868,52343-0062-20 ",.01)
 ;;52343-0062-20
 ;;9002226.02101,"868,52343-0062-20 ",.02)
 ;;52343-0062-20
 ;;9002226.02101,"868,52343-0062-60 ",.01)
 ;;52343-0062-60
 ;;9002226.02101,"868,52343-0062-60 ",.02)
 ;;52343-0062-60
 ;;9002226.02101,"868,52343-0063-20 ",.01)
 ;;52343-0063-20
 ;;9002226.02101,"868,52343-0063-20 ",.02)
 ;;52343-0063-20
 ;;9002226.02101,"868,52343-0063-60 ",.01)
 ;;52343-0063-60
 ;;9002226.02101,"868,52343-0063-60 ",.02)
 ;;52343-0063-60
 ;;9002226.02101,"868,52343-0119-50 ",.01)
 ;;52343-0119-50
 ;;9002226.02101,"868,52343-0119-50 ",.02)
 ;;52343-0119-50
 ;;9002226.02101,"868,52343-0120-50 ",.01)
 ;;52343-0120-50
 ;;9002226.02101,"868,52343-0120-50 ",.02)
 ;;52343-0120-50
 ;;9002226.02101,"868,52343-0121-20 ",.01)
 ;;52343-0121-20
 ;;9002226.02101,"868,52343-0121-20 ",.02)
 ;;52343-0121-20
 ;;9002226.02101,"868,52533-0014-42 ",.01)
 ;;52533-0014-42
 ;;9002226.02101,"868,52533-0014-42 ",.02)
 ;;52533-0014-42
 ;;9002226.02101,"868,52533-0015-14 ",.01)
 ;;52533-0015-14
 ;;9002226.02101,"868,52533-0015-14 ",.02)
 ;;52533-0015-14
 ;;9002226.02101,"868,52533-0113-42 ",.01)
 ;;52533-0113-42
 ;;9002226.02101,"868,52533-0113-42 ",.02)
 ;;52533-0113-42
 ;;9002226.02101,"868,52536-0134-13 ",.01)
 ;;52536-0134-13
 ;;9002226.02101,"868,52536-0134-13 ",.02)
 ;;52536-0134-13
 ;;9002226.02101,"868,52536-0136-13 ",.01)
 ;;52536-0136-13
 ;;9002226.02101,"868,52536-0136-13 ",.02)
 ;;52536-0136-13
 ;;9002226.02101,"868,52555-0771-01 ",.01)
 ;;52555-0771-01
 ;;9002226.02101,"868,52555-0771-01 ",.02)
 ;;52555-0771-01
 ;;9002226.02101,"868,52959-0004-05 ",.01)
 ;;52959-0004-05
 ;;9002226.02101,"868,52959-0004-05 ",.02)
 ;;52959-0004-05
 ;;9002226.02101,"868,52959-0011-20 ",.01)
 ;;52959-0011-20
 ;;9002226.02101,"868,52959-0011-20 ",.02)
 ;;52959-0011-20
 ;;9002226.02101,"868,52959-0011-21 ",.01)
 ;;52959-0011-21
 ;;9002226.02101,"868,52959-0011-21 ",.02)
 ;;52959-0011-21
 ;;9002226.02101,"868,52959-0011-24 ",.01)
 ;;52959-0011-24
 ;;9002226.02101,"868,52959-0011-24 ",.02)
 ;;52959-0011-24
 ;;9002226.02101,"868,52959-0011-30 ",.01)
 ;;52959-0011-30
 ;;9002226.02101,"868,52959-0011-30 ",.02)
 ;;52959-0011-30
 ;;9002226.02101,"868,52959-0011-40 ",.01)
 ;;52959-0011-40
 ;;9002226.02101,"868,52959-0011-40 ",.02)
 ;;52959-0011-40
 ;;9002226.02101,"868,52959-0011-60 ",.01)
 ;;52959-0011-60
 ;;9002226.02101,"868,52959-0011-60 ",.02)
 ;;52959-0011-60
 ;;9002226.02101,"868,52959-0020-00 ",.01)
 ;;52959-0020-00
 ;;9002226.02101,"868,52959-0020-00 ",.02)
 ;;52959-0020-00
 ;;9002226.02101,"868,52959-0020-05 ",.01)
 ;;52959-0020-05
 ;;9002226.02101,"868,52959-0020-05 ",.02)
 ;;52959-0020-05
 ;;9002226.02101,"868,52959-0020-06 ",.01)
 ;;52959-0020-06
 ;;9002226.02101,"868,52959-0020-06 ",.02)
 ;;52959-0020-06
 ;;9002226.02101,"868,52959-0020-18 ",.01)
 ;;52959-0020-18
 ;;9002226.02101,"868,52959-0020-18 ",.02)
 ;;52959-0020-18
 ;;9002226.02101,"868,52959-0020-20 ",.01)
 ;;52959-0020-20
 ;;9002226.02101,"868,52959-0020-20 ",.02)
 ;;52959-0020-20
 ;;9002226.02101,"868,52959-0020-21 ",.01)
 ;;52959-0020-21
 ;;9002226.02101,"868,52959-0020-21 ",.02)
 ;;52959-0020-21
 ;;9002226.02101,"868,52959-0020-24 ",.01)
 ;;52959-0020-24
 ;;9002226.02101,"868,52959-0020-24 ",.02)
 ;;52959-0020-24
 ;;9002226.02101,"868,52959-0020-28 ",.01)
 ;;52959-0020-28
 ;;9002226.02101,"868,52959-0020-28 ",.02)
 ;;52959-0020-28
 ;;9002226.02101,"868,52959-0020-30 ",.01)
 ;;52959-0020-30
 ;;9002226.02101,"868,52959-0020-30 ",.02)
 ;;52959-0020-30
 ;;9002226.02101,"868,52959-0020-40 ",.01)
 ;;52959-0020-40
 ;;9002226.02101,"868,52959-0020-40 ",.02)
 ;;52959-0020-40
 ;;9002226.02101,"868,52959-0020-42 ",.01)
 ;;52959-0020-42
 ;;9002226.02101,"868,52959-0020-42 ",.02)
 ;;52959-0020-42
 ;;9002226.02101,"868,52959-0020-60 ",.01)
 ;;52959-0020-60
 ;;9002226.02101,"868,52959-0020-60 ",.02)
 ;;52959-0020-60
 ;;9002226.02101,"868,52959-0029-20 ",.01)
 ;;52959-0029-20
 ;;9002226.02101,"868,52959-0029-20 ",.02)
 ;;52959-0029-20
 ;;9002226.02101,"868,52959-0029-24 ",.01)
 ;;52959-0029-24
 ;;9002226.02101,"868,52959-0029-24 ",.02)
 ;;52959-0029-24
 ;;9002226.02101,"868,52959-0030-01 ",.01)
 ;;52959-0030-01