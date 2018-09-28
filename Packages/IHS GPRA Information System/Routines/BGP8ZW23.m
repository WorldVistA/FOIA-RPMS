BGP8ZW23 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"875,60760-0110-20 ",.02)
 ;;60760-0110-20
 ;;9002226.02101,"875,60760-0110-30 ",.01)
 ;;60760-0110-30
 ;;9002226.02101,"875,60760-0110-30 ",.02)
 ;;60760-0110-30
 ;;9002226.02101,"875,60760-0110-40 ",.01)
 ;;60760-0110-40
 ;;9002226.02101,"875,60760-0110-40 ",.02)
 ;;60760-0110-40
 ;;9002226.02101,"875,60760-0110-60 ",.01)
 ;;60760-0110-60
 ;;9002226.02101,"875,60760-0110-60 ",.02)
 ;;60760-0110-60
 ;;9002226.02101,"875,60760-0110-90 ",.01)
 ;;60760-0110-90
 ;;9002226.02101,"875,60760-0110-90 ",.02)
 ;;60760-0110-90
 ;;9002226.02101,"875,60760-0110-92 ",.01)
 ;;60760-0110-92
 ;;9002226.02101,"875,60760-0110-92 ",.02)
 ;;60760-0110-92
 ;;9002226.02101,"875,60760-0136-06 ",.01)
 ;;60760-0136-06
 ;;9002226.02101,"875,60760-0136-06 ",.02)
 ;;60760-0136-06
 ;;9002226.02101,"875,60760-0136-20 ",.01)
 ;;60760-0136-20
 ;;9002226.02101,"875,60760-0136-20 ",.02)
 ;;60760-0136-20
 ;;9002226.02101,"875,60760-0136-30 ",.01)
 ;;60760-0136-30
 ;;9002226.02101,"875,60760-0136-30 ",.02)
 ;;60760-0136-30
 ;;9002226.02101,"875,60760-0136-60 ",.01)
 ;;60760-0136-60
 ;;9002226.02101,"875,60760-0136-60 ",.02)
 ;;60760-0136-60
 ;;9002226.02101,"875,60760-0136-90 ",.01)
 ;;60760-0136-90
 ;;9002226.02101,"875,60760-0136-90 ",.02)
 ;;60760-0136-90
 ;;9002226.02101,"875,60760-0290-30 ",.01)
 ;;60760-0290-30
 ;;9002226.02101,"875,60760-0290-30 ",.02)
 ;;60760-0290-30
 ;;9002226.02101,"875,60760-0347-30 ",.01)
 ;;60760-0347-30
 ;;9002226.02101,"875,60760-0347-30 ",.02)
 ;;60760-0347-30
 ;;9002226.02101,"875,60760-0347-40 ",.01)
 ;;60760-0347-40
 ;;9002226.02101,"875,60760-0347-40 ",.02)
 ;;60760-0347-40
 ;;9002226.02101,"875,60760-0347-60 ",.01)
 ;;60760-0347-60
 ;;9002226.02101,"875,60760-0347-60 ",.02)
 ;;60760-0347-60
 ;;9002226.02101,"875,60760-0347-90 ",.01)
 ;;60760-0347-90
 ;;9002226.02101,"875,60760-0347-90 ",.02)
 ;;60760-0347-90
 ;;9002226.02101,"875,60760-0347-92 ",.01)
 ;;60760-0347-92
 ;;9002226.02101,"875,60760-0347-92 ",.02)
 ;;60760-0347-92
 ;;9002226.02101,"875,60760-0417-15 ",.01)
 ;;60760-0417-15
 ;;9002226.02101,"875,60760-0417-15 ",.02)
 ;;60760-0417-15
 ;;9002226.02101,"875,60760-0417-30 ",.01)
 ;;60760-0417-30
 ;;9002226.02101,"875,60760-0417-30 ",.02)
 ;;60760-0417-30
 ;;9002226.02101,"875,60760-0418-09 ",.01)
 ;;60760-0418-09
 ;;9002226.02101,"875,60760-0418-09 ",.02)
 ;;60760-0418-09
 ;;9002226.02101,"875,60760-0418-15 ",.01)
 ;;60760-0418-15
 ;;9002226.02101,"875,60760-0418-15 ",.02)
 ;;60760-0418-15
 ;;9002226.02101,"875,60760-0418-20 ",.01)
 ;;60760-0418-20
 ;;9002226.02101,"875,60760-0418-20 ",.02)
 ;;60760-0418-20
 ;;9002226.02101,"875,60760-0418-30 ",.01)
 ;;60760-0418-30
 ;;9002226.02101,"875,60760-0418-30 ",.02)
 ;;60760-0418-30
 ;;9002226.02101,"875,60760-0418-60 ",.01)
 ;;60760-0418-60
 ;;9002226.02101,"875,60760-0418-60 ",.02)
 ;;60760-0418-60
 ;;9002226.02101,"875,60760-0418-90 ",.01)
 ;;60760-0418-90
 ;;9002226.02101,"875,60760-0418-90 ",.02)
 ;;60760-0418-90
 ;;9002226.02101,"875,60760-0810-30 ",.01)
 ;;60760-0810-30
 ;;9002226.02101,"875,60760-0810-30 ",.02)
 ;;60760-0810-30
 ;;9002226.02101,"875,60793-0136-01 ",.01)
 ;;60793-0136-01
 ;;9002226.02101,"875,60793-0136-01 ",.02)
 ;;60793-0136-01
 ;;9002226.02101,"875,60793-0136-05 ",.01)
 ;;60793-0136-05
 ;;9002226.02101,"875,60793-0136-05 ",.02)
 ;;60793-0136-05
 ;;9002226.02101,"875,60846-0601-01 ",.01)
 ;;60846-0601-01
 ;;9002226.02101,"875,60846-0601-01 ",.02)
 ;;60846-0601-01
 ;;9002226.02101,"875,61919-0025-15 ",.01)
 ;;61919-0025-15
 ;;9002226.02101,"875,61919-0025-15 ",.02)
 ;;61919-0025-15
 ;;9002226.02101,"875,61919-0025-30 ",.01)
 ;;61919-0025-30
 ;;9002226.02101,"875,61919-0025-30 ",.02)
 ;;61919-0025-30
 ;;9002226.02101,"875,61919-0025-60 ",.01)
 ;;61919-0025-60
 ;;9002226.02101,"875,61919-0025-60 ",.02)
 ;;61919-0025-60
 ;;9002226.02101,"875,61919-0025-72 ",.01)
 ;;61919-0025-72
 ;;9002226.02101,"875,61919-0025-72 ",.02)
 ;;61919-0025-72
 ;;9002226.02101,"875,61919-0025-90 ",.01)
 ;;61919-0025-90
 ;;9002226.02101,"875,61919-0025-90 ",.02)
 ;;61919-0025-90
 ;;9002226.02101,"875,61919-0039-20 ",.01)
 ;;61919-0039-20
 ;;9002226.02101,"875,61919-0039-20 ",.02)
 ;;61919-0039-20
 ;;9002226.02101,"875,61919-0039-30 ",.01)
 ;;61919-0039-30
 ;;9002226.02101,"875,61919-0039-30 ",.02)
 ;;61919-0039-30
 ;;9002226.02101,"875,61919-0039-40 ",.01)
 ;;61919-0039-40
 ;;9002226.02101,"875,61919-0039-40 ",.02)
 ;;61919-0039-40
 ;;9002226.02101,"875,61919-0039-60 ",.01)
 ;;61919-0039-60
 ;;9002226.02101,"875,61919-0039-60 ",.02)
 ;;61919-0039-60
 ;;9002226.02101,"875,61919-0039-72 ",.01)
 ;;61919-0039-72
 ;;9002226.02101,"875,61919-0039-72 ",.02)
 ;;61919-0039-72
 ;;9002226.02101,"875,61919-0039-90 ",.01)
 ;;61919-0039-90
 ;;9002226.02101,"875,61919-0039-90 ",.02)
 ;;61919-0039-90
 ;;9002226.02101,"875,61919-0064-20 ",.01)
 ;;61919-0064-20
 ;;9002226.02101,"875,61919-0064-20 ",.02)
 ;;61919-0064-20
 ;;9002226.02101,"875,61919-0064-30 ",.01)
 ;;61919-0064-30
 ;;9002226.02101,"875,61919-0064-30 ",.02)
 ;;61919-0064-30
 ;;9002226.02101,"875,61919-0064-60 ",.01)
 ;;61919-0064-60
 ;;9002226.02101,"875,61919-0064-60 ",.02)
 ;;61919-0064-60
 ;;9002226.02101,"875,61919-0064-72 ",.01)
 ;;61919-0064-72
 ;;9002226.02101,"875,61919-0064-72 ",.02)
 ;;61919-0064-72
 ;;9002226.02101,"875,61919-0064-90 ",.01)
 ;;61919-0064-90
 ;;9002226.02101,"875,61919-0064-90 ",.02)
 ;;61919-0064-90
 ;;9002226.02101,"875,61919-0065-15 ",.01)
 ;;61919-0065-15
 ;;9002226.02101,"875,61919-0065-15 ",.02)
 ;;61919-0065-15
 ;;9002226.02101,"875,61919-0065-20 ",.01)
 ;;61919-0065-20
 ;;9002226.02101,"875,61919-0065-20 ",.02)
 ;;61919-0065-20
 ;;9002226.02101,"875,61919-0065-30 ",.01)
 ;;61919-0065-30
 ;;9002226.02101,"875,61919-0065-30 ",.02)
 ;;61919-0065-30
 ;;9002226.02101,"875,61919-0065-60 ",.01)
 ;;61919-0065-60
 ;;9002226.02101,"875,61919-0065-60 ",.02)
 ;;61919-0065-60
 ;;9002226.02101,"875,61919-0065-72 ",.01)
 ;;61919-0065-72
 ;;9002226.02101,"875,61919-0065-72 ",.02)
 ;;61919-0065-72
 ;;9002226.02101,"875,61919-0065-90 ",.01)
 ;;61919-0065-90
 ;;9002226.02101,"875,61919-0065-90 ",.02)
 ;;61919-0065-90
 ;;9002226.02101,"875,61919-0147-30 ",.01)
 ;;61919-0147-30
 ;;9002226.02101,"875,61919-0147-30 ",.02)
 ;;61919-0147-30
 ;;9002226.02101,"875,61919-0147-60 ",.01)
 ;;61919-0147-60
 ;;9002226.02101,"875,61919-0147-60 ",.02)
 ;;61919-0147-60
 ;;9002226.02101,"875,61919-0147-90 ",.01)
 ;;61919-0147-90
 ;;9002226.02101,"875,61919-0147-90 ",.02)
 ;;61919-0147-90
 ;;9002226.02101,"875,61919-0148-30 ",.01)
 ;;61919-0148-30
 ;;9002226.02101,"875,61919-0148-30 ",.02)
 ;;61919-0148-30
 ;;9002226.02101,"875,61919-0148-60 ",.01)
 ;;61919-0148-60
 ;;9002226.02101,"875,61919-0148-60 ",.02)
 ;;61919-0148-60
 ;;9002226.02101,"875,61919-0148-90 ",.01)
 ;;61919-0148-90
 ;;9002226.02101,"875,61919-0148-90 ",.02)
 ;;61919-0148-90
 ;;9002226.02101,"875,61919-0177-20 ",.01)
 ;;61919-0177-20
 ;;9002226.02101,"875,61919-0177-20 ",.02)
 ;;61919-0177-20
 ;;9002226.02101,"875,61919-0177-30 ",.01)
 ;;61919-0177-30
 ;;9002226.02101,"875,61919-0177-30 ",.02)
 ;;61919-0177-30
 ;;9002226.02101,"875,61919-0177-60 ",.01)
 ;;61919-0177-60
 ;;9002226.02101,"875,61919-0177-60 ",.02)
 ;;61919-0177-60
 ;;9002226.02101,"875,61919-0177-90 ",.01)
 ;;61919-0177-90
 ;;9002226.02101,"875,61919-0177-90 ",.02)
 ;;61919-0177-90
 ;;9002226.02101,"875,61919-0261-30 ",.01)
 ;;61919-0261-30
 ;;9002226.02101,"875,61919-0261-30 ",.02)
 ;;61919-0261-30
 ;;9002226.02101,"875,61919-0261-60 ",.01)
 ;;61919-0261-60
 ;;9002226.02101,"875,61919-0261-60 ",.02)
 ;;61919-0261-60
 ;;9002226.02101,"875,61919-0261-72 ",.01)
 ;;61919-0261-72
 ;;9002226.02101,"875,61919-0261-72 ",.02)
 ;;61919-0261-72
 ;;9002226.02101,"875,61919-0261-90 ",.01)
 ;;61919-0261-90
 ;;9002226.02101,"875,61919-0261-90 ",.02)
 ;;61919-0261-90
 ;;9002226.02101,"875,61919-0262-30 ",.01)
 ;;61919-0262-30
 ;;9002226.02101,"875,61919-0262-30 ",.02)
 ;;61919-0262-30
 ;;9002226.02101,"875,61919-0262-60 ",.01)
 ;;61919-0262-60
 ;;9002226.02101,"875,61919-0262-60 ",.02)
 ;;61919-0262-60
 ;;9002226.02101,"875,61919-0305-30 ",.01)
 ;;61919-0305-30
 ;;9002226.02101,"875,61919-0305-30 ",.02)
 ;;61919-0305-30
 ;;9002226.02101,"875,61919-0305-60 ",.01)
 ;;61919-0305-60
 ;;9002226.02101,"875,61919-0305-60 ",.02)
 ;;61919-0305-60
 ;;9002226.02101,"875,61919-0305-90 ",.01)
 ;;61919-0305-90
 ;;9002226.02101,"875,61919-0305-90 ",.02)
 ;;61919-0305-90
 ;;9002226.02101,"875,61919-0346-20 ",.01)
 ;;61919-0346-20
 ;;9002226.02101,"875,61919-0346-20 ",.02)
 ;;61919-0346-20
 ;;9002226.02101,"875,61919-0346-30 ",.01)
 ;;61919-0346-30
 ;;9002226.02101,"875,61919-0346-30 ",.02)
 ;;61919-0346-30
 ;;9002226.02101,"875,61919-0346-60 ",.01)
 ;;61919-0346-60
 ;;9002226.02101,"875,61919-0346-60 ",.02)
 ;;61919-0346-60
 ;;9002226.02101,"875,61919-0346-90 ",.01)
 ;;61919-0346-90
 ;;9002226.02101,"875,61919-0346-90 ",.02)
 ;;61919-0346-90
 ;;9002226.02101,"875,61919-0354-30 ",.01)
 ;;61919-0354-30
 ;;9002226.02101,"875,61919-0354-30 ",.02)
 ;;61919-0354-30
 ;;9002226.02101,"875,61919-0354-40 ",.01)
 ;;61919-0354-40
 ;;9002226.02101,"875,61919-0354-40 ",.02)
 ;;61919-0354-40
 ;;9002226.02101,"875,61919-0354-60 ",.01)
 ;;61919-0354-60
 ;;9002226.02101,"875,61919-0354-60 ",.02)
 ;;61919-0354-60
 ;;9002226.02101,"875,61919-0354-90 ",.01)
 ;;61919-0354-90
 ;;9002226.02101,"875,61919-0354-90 ",.02)
 ;;61919-0354-90
 ;;9002226.02101,"875,61919-0478-30 ",.01)
 ;;61919-0478-30
 ;;9002226.02101,"875,61919-0478-30 ",.02)
 ;;61919-0478-30
 ;;9002226.02101,"875,61919-0478-40 ",.01)
 ;;61919-0478-40
 ;;9002226.02101,"875,61919-0478-40 ",.02)
 ;;61919-0478-40
 ;;9002226.02101,"875,61919-0544-20 ",.01)
 ;;61919-0544-20
 ;;9002226.02101,"875,61919-0544-20 ",.02)
 ;;61919-0544-20
 ;;9002226.02101,"875,61919-0544-30 ",.01)
 ;;61919-0544-30
 ;;9002226.02101,"875,61919-0544-30 ",.02)
 ;;61919-0544-30
 ;;9002226.02101,"875,61919-0544-60 ",.01)
 ;;61919-0544-60
 ;;9002226.02101,"875,61919-0544-60 ",.02)
 ;;61919-0544-60
 ;;9002226.02101,"875,61919-0544-90 ",.01)
 ;;61919-0544-90
 ;;9002226.02101,"875,61919-0544-90 ",.02)
 ;;61919-0544-90
 ;;9002226.02101,"875,61919-0627-30 ",.01)
 ;;61919-0627-30
 ;;9002226.02101,"875,61919-0627-30 ",.02)
 ;;61919-0627-30
 ;;9002226.02101,"875,61919-0627-60 ",.01)
 ;;61919-0627-60
 ;;9002226.02101,"875,61919-0627-60 ",.02)
 ;;61919-0627-60
 ;;9002226.02101,"875,61919-0627-90 ",.01)
 ;;61919-0627-90
 ;;9002226.02101,"875,61919-0627-90 ",.02)
 ;;61919-0627-90
 ;;9002226.02101,"875,61919-0768-30 ",.01)
 ;;61919-0768-30
 ;;9002226.02101,"875,61919-0768-30 ",.02)
 ;;61919-0768-30
 ;;9002226.02101,"875,61919-0768-60 ",.01)
 ;;61919-0768-60
 ;;9002226.02101,"875,61919-0768-60 ",.02)
 ;;61919-0768-60
 ;;9002226.02101,"875,61919-0768-72 ",.01)
 ;;61919-0768-72
 ;;9002226.02101,"875,61919-0768-72 ",.02)
 ;;61919-0768-72
 ;;9002226.02101,"875,61919-0768-90 ",.01)
 ;;61919-0768-90
 ;;9002226.02101,"875,61919-0768-90 ",.02)
 ;;61919-0768-90
 ;;9002226.02101,"875,62756-0446-02 ",.01)
 ;;62756-0446-02
 ;;9002226.02101,"875,62756-0446-02 ",.02)
 ;;62756-0446-02
 ;;9002226.02101,"875,62756-0446-04 ",.01)
 ;;62756-0446-04
 ;;9002226.02101,"875,62756-0446-04 ",.02)
 ;;62756-0446-04
 ;;9002226.02101,"875,62756-0446-05 ",.01)
 ;;62756-0446-05
 ;;9002226.02101,"875,62756-0446-05 ",.02)
 ;;62756-0446-05
 ;;9002226.02101,"875,63187-0011-00 ",.01)
 ;;63187-0011-00
 ;;9002226.02101,"875,63187-0011-00 ",.02)
 ;;63187-0011-00
 ;;9002226.02101,"875,63187-0011-15 ",.01)
 ;;63187-0011-15
 ;;9002226.02101,"875,63187-0011-15 ",.02)
 ;;63187-0011-15
 ;;9002226.02101,"875,63187-0011-30 ",.01)
 ;;63187-0011-30