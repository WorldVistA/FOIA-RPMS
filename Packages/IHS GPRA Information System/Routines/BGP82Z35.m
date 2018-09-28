BGP82Z35 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"619,35356-0331-90 ",.02)
 ;;35356-0331-90
 ;;9002226.02101,"619,35356-0333-30 ",.01)
 ;;35356-0333-30
 ;;9002226.02101,"619,35356-0333-30 ",.02)
 ;;35356-0333-30
 ;;9002226.02101,"619,35356-0335-00 ",.01)
 ;;35356-0335-00
 ;;9002226.02101,"619,35356-0335-00 ",.02)
 ;;35356-0335-00
 ;;9002226.02101,"619,35356-0335-30 ",.01)
 ;;35356-0335-30
 ;;9002226.02101,"619,35356-0335-30 ",.02)
 ;;35356-0335-30
 ;;9002226.02101,"619,35356-0335-60 ",.01)
 ;;35356-0335-60
 ;;9002226.02101,"619,35356-0335-60 ",.02)
 ;;35356-0335-60
 ;;9002226.02101,"619,35356-0335-90 ",.01)
 ;;35356-0335-90
 ;;9002226.02101,"619,35356-0335-90 ",.02)
 ;;35356-0335-90
 ;;9002226.02101,"619,35356-0339-00 ",.01)
 ;;35356-0339-00
 ;;9002226.02101,"619,35356-0339-00 ",.02)
 ;;35356-0339-00
 ;;9002226.02101,"619,35356-0339-30 ",.01)
 ;;35356-0339-30
 ;;9002226.02101,"619,35356-0339-30 ",.02)
 ;;35356-0339-30
 ;;9002226.02101,"619,35356-0377-30 ",.01)
 ;;35356-0377-30
 ;;9002226.02101,"619,35356-0377-30 ",.02)
 ;;35356-0377-30
 ;;9002226.02101,"619,35356-0378-28 ",.01)
 ;;35356-0378-28
 ;;9002226.02101,"619,35356-0378-28 ",.02)
 ;;35356-0378-28
 ;;9002226.02101,"619,35356-0378-60 ",.01)
 ;;35356-0378-60
 ;;9002226.02101,"619,35356-0378-60 ",.02)
 ;;35356-0378-60
 ;;9002226.02101,"619,35356-0380-01 ",.01)
 ;;35356-0380-01
 ;;9002226.02101,"619,35356-0380-01 ",.02)
 ;;35356-0380-01
 ;;9002226.02101,"619,35356-0380-30 ",.01)
 ;;35356-0380-30
 ;;9002226.02101,"619,35356-0380-30 ",.02)
 ;;35356-0380-30
 ;;9002226.02101,"619,35356-0380-60 ",.01)
 ;;35356-0380-60
 ;;9002226.02101,"619,35356-0380-60 ",.02)
 ;;35356-0380-60
 ;;9002226.02101,"619,35356-0384-30 ",.01)
 ;;35356-0384-30
 ;;9002226.02101,"619,35356-0384-30 ",.02)
 ;;35356-0384-30
 ;;9002226.02101,"619,35356-0391-30 ",.01)
 ;;35356-0391-30
 ;;9002226.02101,"619,35356-0391-30 ",.02)
 ;;35356-0391-30
 ;;9002226.02101,"619,35356-0391-90 ",.01)
 ;;35356-0391-90
 ;;9002226.02101,"619,35356-0391-90 ",.02)
 ;;35356-0391-90
 ;;9002226.02101,"619,35356-0399-60 ",.01)
 ;;35356-0399-60
 ;;9002226.02101,"619,35356-0399-60 ",.02)
 ;;35356-0399-60
 ;;9002226.02101,"619,35356-0436-16 ",.01)
 ;;35356-0436-16
 ;;9002226.02101,"619,35356-0436-16 ",.02)
 ;;35356-0436-16
 ;;9002226.02101,"619,35356-0451-30 ",.01)
 ;;35356-0451-30
 ;;9002226.02101,"619,35356-0451-30 ",.02)
 ;;35356-0451-30
 ;;9002226.02101,"619,35356-0451-90 ",.01)
 ;;35356-0451-90
 ;;9002226.02101,"619,35356-0451-90 ",.02)
 ;;35356-0451-90
 ;;9002226.02101,"619,35356-0453-30 ",.01)
 ;;35356-0453-30
 ;;9002226.02101,"619,35356-0453-30 ",.02)
 ;;35356-0453-30
 ;;9002226.02101,"619,35356-0453-90 ",.01)
 ;;35356-0453-90
 ;;9002226.02101,"619,35356-0453-90 ",.02)
 ;;35356-0453-90
 ;;9002226.02101,"619,35356-0454-30 ",.01)
 ;;35356-0454-30
 ;;9002226.02101,"619,35356-0454-30 ",.02)
 ;;35356-0454-30
 ;;9002226.02101,"619,35356-0454-90 ",.01)
 ;;35356-0454-90
 ;;9002226.02101,"619,35356-0454-90 ",.02)
 ;;35356-0454-90
 ;;9002226.02101,"619,35356-0455-30 ",.01)
 ;;35356-0455-30
 ;;9002226.02101,"619,35356-0455-30 ",.02)
 ;;35356-0455-30
 ;;9002226.02101,"619,35356-0455-90 ",.01)
 ;;35356-0455-90
 ;;9002226.02101,"619,35356-0455-90 ",.02)
 ;;35356-0455-90
 ;;9002226.02101,"619,35356-0457-30 ",.01)
 ;;35356-0457-30
 ;;9002226.02101,"619,35356-0457-30 ",.02)
 ;;35356-0457-30
 ;;9002226.02101,"619,35356-0458-30 ",.01)
 ;;35356-0458-30
 ;;9002226.02101,"619,35356-0458-30 ",.02)
 ;;35356-0458-30
 ;;9002226.02101,"619,35356-0459-30 ",.01)
 ;;35356-0459-30
 ;;9002226.02101,"619,35356-0459-30 ",.02)
 ;;35356-0459-30
 ;;9002226.02101,"619,35356-0460-30 ",.01)
 ;;35356-0460-30
 ;;9002226.02101,"619,35356-0460-30 ",.02)
 ;;35356-0460-30
 ;;9002226.02101,"619,35356-0461-30 ",.01)
 ;;35356-0461-30
 ;;9002226.02101,"619,35356-0461-30 ",.02)
 ;;35356-0461-30
 ;;9002226.02101,"619,35356-0499-01 ",.01)
 ;;35356-0499-01
 ;;9002226.02101,"619,35356-0499-01 ",.02)
 ;;35356-0499-01
 ;;9002226.02101,"619,35356-0499-30 ",.01)
 ;;35356-0499-30
 ;;9002226.02101,"619,35356-0499-30 ",.02)
 ;;35356-0499-30
 ;;9002226.02101,"619,35356-0499-60 ",.01)
 ;;35356-0499-60
 ;;9002226.02101,"619,35356-0499-60 ",.02)
 ;;35356-0499-60
 ;;9002226.02101,"619,35356-0514-30 ",.01)
 ;;35356-0514-30
 ;;9002226.02101,"619,35356-0514-30 ",.02)
 ;;35356-0514-30
 ;;9002226.02101,"619,35356-0521-30 ",.01)
 ;;35356-0521-30
 ;;9002226.02101,"619,35356-0521-30 ",.02)
 ;;35356-0521-30
 ;;9002226.02101,"619,35356-0521-60 ",.01)
 ;;35356-0521-60
 ;;9002226.02101,"619,35356-0521-60 ",.02)
 ;;35356-0521-60
 ;;9002226.02101,"619,35356-0521-90 ",.01)
 ;;35356-0521-90
 ;;9002226.02101,"619,35356-0521-90 ",.02)
 ;;35356-0521-90
 ;;9002226.02101,"619,35356-0525-30 ",.01)
 ;;35356-0525-30
 ;;9002226.02101,"619,35356-0525-30 ",.02)
 ;;35356-0525-30
 ;;9002226.02101,"619,35356-0528-30 ",.01)
 ;;35356-0528-30
 ;;9002226.02101,"619,35356-0528-30 ",.02)
 ;;35356-0528-30
 ;;9002226.02101,"619,35356-0546-30 ",.01)
 ;;35356-0546-30
 ;;9002226.02101,"619,35356-0546-30 ",.02)
 ;;35356-0546-30
 ;;9002226.02101,"619,35356-0547-30 ",.01)
 ;;35356-0547-30
 ;;9002226.02101,"619,35356-0547-30 ",.02)
 ;;35356-0547-30
 ;;9002226.02101,"619,35356-0559-30 ",.01)
 ;;35356-0559-30
 ;;9002226.02101,"619,35356-0559-30 ",.02)
 ;;35356-0559-30
 ;;9002226.02101,"619,35356-0560-30 ",.01)
 ;;35356-0560-30
 ;;9002226.02101,"619,35356-0560-30 ",.02)
 ;;35356-0560-30
 ;;9002226.02101,"619,35356-0561-30 ",.01)
 ;;35356-0561-30
 ;;9002226.02101,"619,35356-0561-30 ",.02)
 ;;35356-0561-30
 ;;9002226.02101,"619,35356-0586-30 ",.01)
 ;;35356-0586-30
 ;;9002226.02101,"619,35356-0586-30 ",.02)
 ;;35356-0586-30
 ;;9002226.02101,"619,35356-0593-30 ",.01)
 ;;35356-0593-30
 ;;9002226.02101,"619,35356-0593-30 ",.02)
 ;;35356-0593-30
 ;;9002226.02101,"619,35356-0593-90 ",.01)
 ;;35356-0593-90
 ;;9002226.02101,"619,35356-0593-90 ",.02)
 ;;35356-0593-90
 ;;9002226.02101,"619,35356-0605-04 ",.01)
 ;;35356-0605-04
 ;;9002226.02101,"619,35356-0605-04 ",.02)
 ;;35356-0605-04
 ;;9002226.02101,"619,35356-0606-04 ",.01)
 ;;35356-0606-04
 ;;9002226.02101,"619,35356-0606-04 ",.02)
 ;;35356-0606-04
 ;;9002226.02101,"619,35356-0607-04 ",.01)
 ;;35356-0607-04
 ;;9002226.02101,"619,35356-0607-04 ",.02)
 ;;35356-0607-04
 ;;9002226.02101,"619,35356-0608-30 ",.01)
 ;;35356-0608-30
 ;;9002226.02101,"619,35356-0608-30 ",.02)
 ;;35356-0608-30
 ;;9002226.02101,"619,35356-0609-30 ",.01)
 ;;35356-0609-30
 ;;9002226.02101,"619,35356-0609-30 ",.02)
 ;;35356-0609-30
 ;;9002226.02101,"619,35356-0609-60 ",.01)
 ;;35356-0609-60
 ;;9002226.02101,"619,35356-0609-60 ",.02)
 ;;35356-0609-60
 ;;9002226.02101,"619,35356-0610-30 ",.01)
 ;;35356-0610-30
 ;;9002226.02101,"619,35356-0610-30 ",.02)
 ;;35356-0610-30
 ;;9002226.02101,"619,35356-0610-60 ",.01)
 ;;35356-0610-60
 ;;9002226.02101,"619,35356-0610-60 ",.02)
 ;;35356-0610-60
 ;;9002226.02101,"619,35356-0611-30 ",.01)
 ;;35356-0611-30
 ;;9002226.02101,"619,35356-0611-30 ",.02)
 ;;35356-0611-30
 ;;9002226.02101,"619,35356-0611-60 ",.01)
 ;;35356-0611-60
 ;;9002226.02101,"619,35356-0611-60 ",.02)
 ;;35356-0611-60
 ;;9002226.02101,"619,35356-0611-90 ",.01)
 ;;35356-0611-90
 ;;9002226.02101,"619,35356-0611-90 ",.02)
 ;;35356-0611-90
 ;;9002226.02101,"619,35356-0626-30 ",.01)
 ;;35356-0626-30
 ;;9002226.02101,"619,35356-0626-30 ",.02)
 ;;35356-0626-30
 ;;9002226.02101,"619,35356-0630-30 ",.01)
 ;;35356-0630-30
 ;;9002226.02101,"619,35356-0630-30 ",.02)
 ;;35356-0630-30
 ;;9002226.02101,"619,35356-0630-60 ",.01)
 ;;35356-0630-60
 ;;9002226.02101,"619,35356-0630-60 ",.02)
 ;;35356-0630-60
 ;;9002226.02101,"619,35356-0632-05 ",.01)
 ;;35356-0632-05
 ;;9002226.02101,"619,35356-0632-05 ",.02)
 ;;35356-0632-05
 ;;9002226.02101,"619,35356-0633-05 ",.01)
 ;;35356-0633-05
 ;;9002226.02101,"619,35356-0633-05 ",.02)
 ;;35356-0633-05
 ;;9002226.02101,"619,35356-0634-05 ",.01)
 ;;35356-0634-05
 ;;9002226.02101,"619,35356-0634-05 ",.02)
 ;;35356-0634-05
 ;;9002226.02101,"619,35356-0635-05 ",.01)
 ;;35356-0635-05
 ;;9002226.02101,"619,35356-0635-05 ",.02)
 ;;35356-0635-05
 ;;9002226.02101,"619,35356-0636-05 ",.01)
 ;;35356-0636-05
 ;;9002226.02101,"619,35356-0636-05 ",.02)
 ;;35356-0636-05
 ;;9002226.02101,"619,35356-0637-05 ",.01)
 ;;35356-0637-05
 ;;9002226.02101,"619,35356-0637-05 ",.02)
 ;;35356-0637-05
 ;;9002226.02101,"619,35356-0638-05 ",.01)
 ;;35356-0638-05
 ;;9002226.02101,"619,35356-0638-05 ",.02)
 ;;35356-0638-05
 ;;9002226.02101,"619,35356-0639-05 ",.01)
 ;;35356-0639-05
 ;;9002226.02101,"619,35356-0639-05 ",.02)
 ;;35356-0639-05
 ;;9002226.02101,"619,35356-0643-01 ",.01)
 ;;35356-0643-01
 ;;9002226.02101,"619,35356-0643-01 ",.02)
 ;;35356-0643-01
 ;;9002226.02101,"619,35356-0643-30 ",.01)
 ;;35356-0643-30
 ;;9002226.02101,"619,35356-0643-30 ",.02)
 ;;35356-0643-30
 ;;9002226.02101,"619,35356-0648-40 ",.01)
 ;;35356-0648-40
 ;;9002226.02101,"619,35356-0648-40 ",.02)
 ;;35356-0648-40
 ;;9002226.02101,"619,35356-0655-30 ",.01)
 ;;35356-0655-30
 ;;9002226.02101,"619,35356-0655-30 ",.02)
 ;;35356-0655-30
 ;;9002226.02101,"619,35356-0655-60 ",.01)
 ;;35356-0655-60
 ;;9002226.02101,"619,35356-0655-60 ",.02)
 ;;35356-0655-60
 ;;9002226.02101,"619,35356-0659-01 ",.01)
 ;;35356-0659-01
 ;;9002226.02101,"619,35356-0659-01 ",.02)
 ;;35356-0659-01
 ;;9002226.02101,"619,35356-0659-08 ",.01)
 ;;35356-0659-08
 ;;9002226.02101,"619,35356-0659-08 ",.02)
 ;;35356-0659-08
 ;;9002226.02101,"619,35356-0659-12 ",.01)
 ;;35356-0659-12
 ;;9002226.02101,"619,35356-0659-12 ",.02)
 ;;35356-0659-12
 ;;9002226.02101,"619,35356-0659-15 ",.01)
 ;;35356-0659-15
 ;;9002226.02101,"619,35356-0659-15 ",.02)
 ;;35356-0659-15
 ;;9002226.02101,"619,35356-0659-18 ",.01)
 ;;35356-0659-18
 ;;9002226.02101,"619,35356-0659-18 ",.02)
 ;;35356-0659-18
 ;;9002226.02101,"619,35356-0659-20 ",.01)
 ;;35356-0659-20
 ;;9002226.02101,"619,35356-0659-20 ",.02)
 ;;35356-0659-20
 ;;9002226.02101,"619,35356-0659-24 ",.01)
 ;;35356-0659-24
 ;;9002226.02101,"619,35356-0659-24 ",.02)
 ;;35356-0659-24
 ;;9002226.02101,"619,35356-0659-30 ",.01)
 ;;35356-0659-30
 ;;9002226.02101,"619,35356-0659-30 ",.02)
 ;;35356-0659-30
 ;;9002226.02101,"619,35356-0659-40 ",.01)
 ;;35356-0659-40
 ;;9002226.02101,"619,35356-0659-40 ",.02)
 ;;35356-0659-40
 ;;9002226.02101,"619,35356-0659-60 ",.01)
 ;;35356-0659-60
 ;;9002226.02101,"619,35356-0659-60 ",.02)
 ;;35356-0659-60
 ;;9002226.02101,"619,35356-0659-90 ",.01)
 ;;35356-0659-90
 ;;9002226.02101,"619,35356-0659-90 ",.02)
 ;;35356-0659-90
 ;;9002226.02101,"619,35356-0660-60 ",.01)
 ;;35356-0660-60
 ;;9002226.02101,"619,35356-0660-60 ",.02)
 ;;35356-0660-60
 ;;9002226.02101,"619,35356-0661-30 ",.01)
 ;;35356-0661-30
 ;;9002226.02101,"619,35356-0661-30 ",.02)
 ;;35356-0661-30
 ;;9002226.02101,"619,35356-0706-01 ",.01)
 ;;35356-0706-01
 ;;9002226.02101,"619,35356-0706-01 ",.02)
 ;;35356-0706-01
 ;;9002226.02101,"619,35356-0706-08 ",.01)
 ;;35356-0706-08
 ;;9002226.02101,"619,35356-0706-08 ",.02)
 ;;35356-0706-08
 ;;9002226.02101,"619,35356-0706-30 ",.01)
 ;;35356-0706-30
 ;;9002226.02101,"619,35356-0706-30 ",.02)
 ;;35356-0706-30
 ;;9002226.02101,"619,35356-0706-40 ",.01)
 ;;35356-0706-40
 ;;9002226.02101,"619,35356-0706-40 ",.02)
 ;;35356-0706-40
 ;;9002226.02101,"619,35356-0706-60 ",.01)
 ;;35356-0706-60
 ;;9002226.02101,"619,35356-0706-60 ",.02)
 ;;35356-0706-60
 ;;9002226.02101,"619,35356-0706-90 ",.01)
 ;;35356-0706-90
 ;;9002226.02101,"619,35356-0706-90 ",.02)
 ;;35356-0706-90
 ;;9002226.02101,"619,35356-0761-60 ",.01)
 ;;35356-0761-60
 ;;9002226.02101,"619,35356-0761-60 ",.02)
 ;;35356-0761-60
 ;;9002226.02101,"619,35356-0762-60 ",.01)
 ;;35356-0762-60