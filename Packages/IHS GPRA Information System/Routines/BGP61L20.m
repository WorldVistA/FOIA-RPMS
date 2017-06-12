BGP61L20 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1876,51138-0539-30 ",.01)
 ;;51138-0539-30
 ;;9002226.02101,"1876,51138-0539-30 ",.02)
 ;;51138-0539-30
 ;;9002226.02101,"1876,51138-0540-10 ",.01)
 ;;51138-0540-10
 ;;9002226.02101,"1876,51138-0540-10 ",.02)
 ;;51138-0540-10
 ;;9002226.02101,"1876,51138-0540-30 ",.01)
 ;;51138-0540-30
 ;;9002226.02101,"1876,51138-0540-30 ",.02)
 ;;51138-0540-30
 ;;9002226.02101,"1876,51991-0708-10 ",.01)
 ;;51991-0708-10
 ;;9002226.02101,"1876,51991-0708-10 ",.02)
 ;;51991-0708-10
 ;;9002226.02101,"1876,51991-0708-33 ",.01)
 ;;51991-0708-33
 ;;9002226.02101,"1876,51991-0708-33 ",.02)
 ;;51991-0708-33
 ;;9002226.02101,"1876,51991-0708-90 ",.01)
 ;;51991-0708-90
 ;;9002226.02101,"1876,51991-0708-90 ",.02)
 ;;51991-0708-90
 ;;9002226.02101,"1876,51991-0709-10 ",.01)
 ;;51991-0709-10
 ;;9002226.02101,"1876,51991-0709-10 ",.02)
 ;;51991-0709-10
 ;;9002226.02101,"1876,51991-0709-33 ",.01)
 ;;51991-0709-33
 ;;9002226.02101,"1876,51991-0709-33 ",.02)
 ;;51991-0709-33
 ;;9002226.02101,"1876,51991-0709-90 ",.01)
 ;;51991-0709-90
 ;;9002226.02101,"1876,51991-0709-90 ",.02)
 ;;51991-0709-90
 ;;9002226.02101,"1876,51991-0710-10 ",.01)
 ;;51991-0710-10
 ;;9002226.02101,"1876,51991-0710-10 ",.02)
 ;;51991-0710-10
 ;;9002226.02101,"1876,51991-0710-33 ",.01)
 ;;51991-0710-33
 ;;9002226.02101,"1876,51991-0710-33 ",.02)
 ;;51991-0710-33
 ;;9002226.02101,"1876,51991-0710-90 ",.01)
 ;;51991-0710-90
 ;;9002226.02101,"1876,51991-0710-90 ",.02)
 ;;51991-0710-90
 ;;9002226.02101,"1876,52343-0053-05 ",.01)
 ;;52343-0053-05
 ;;9002226.02101,"1876,52343-0053-05 ",.02)
 ;;52343-0053-05
 ;;9002226.02101,"1876,52343-0053-30 ",.01)
 ;;52343-0053-30
 ;;9002226.02101,"1876,52343-0053-30 ",.02)
 ;;52343-0053-30
 ;;9002226.02101,"1876,52343-0053-90 ",.01)
 ;;52343-0053-90
 ;;9002226.02101,"1876,52343-0053-90 ",.02)
 ;;52343-0053-90
 ;;9002226.02101,"1876,52343-0054-05 ",.01)
 ;;52343-0054-05
 ;;9002226.02101,"1876,52343-0054-05 ",.02)
 ;;52343-0054-05
 ;;9002226.02101,"1876,52343-0054-30 ",.01)
 ;;52343-0054-30
 ;;9002226.02101,"1876,52343-0054-30 ",.02)
 ;;52343-0054-30
 ;;9002226.02101,"1876,52343-0054-90 ",.01)
 ;;52343-0054-90
 ;;9002226.02101,"1876,52343-0054-90 ",.02)
 ;;52343-0054-90
 ;;9002226.02101,"1876,52343-0055-05 ",.01)
 ;;52343-0055-05
 ;;9002226.02101,"1876,52343-0055-05 ",.02)
 ;;52343-0055-05
 ;;9002226.02101,"1876,52343-0055-30 ",.01)
 ;;52343-0055-30
 ;;9002226.02101,"1876,52343-0055-30 ",.02)
 ;;52343-0055-30
 ;;9002226.02101,"1876,52343-0055-90 ",.01)
 ;;52343-0055-90
 ;;9002226.02101,"1876,52343-0055-90 ",.02)
 ;;52343-0055-90
 ;;9002226.02101,"1876,52959-0207-00 ",.01)
 ;;52959-0207-00
 ;;9002226.02101,"1876,52959-0207-00 ",.02)
 ;;52959-0207-00
 ;;9002226.02101,"1876,52959-0207-28 ",.01)
 ;;52959-0207-28
 ;;9002226.02101,"1876,52959-0207-28 ",.02)
 ;;52959-0207-28
 ;;9002226.02101,"1876,52959-0207-30 ",.01)
 ;;52959-0207-30
 ;;9002226.02101,"1876,52959-0207-30 ",.02)
 ;;52959-0207-30
 ;;9002226.02101,"1876,52959-0207-60 ",.01)
 ;;52959-0207-60
 ;;9002226.02101,"1876,52959-0207-60 ",.02)
 ;;52959-0207-60
 ;;9002226.02101,"1876,52959-0449-01 ",.01)
 ;;52959-0449-01
 ;;9002226.02101,"1876,52959-0449-01 ",.02)
 ;;52959-0449-01
 ;;9002226.02101,"1876,52959-0449-30 ",.01)
 ;;52959-0449-30
 ;;9002226.02101,"1876,52959-0449-30 ",.02)
 ;;52959-0449-30
 ;;9002226.02101,"1876,52959-0449-60 ",.01)
 ;;52959-0449-60
 ;;9002226.02101,"1876,52959-0449-60 ",.02)
 ;;52959-0449-60
 ;;9002226.02101,"1876,52959-0598-90 ",.01)
 ;;52959-0598-90
 ;;9002226.02101,"1876,52959-0598-90 ",.02)
 ;;52959-0598-90
 ;;9002226.02101,"1876,52959-0822-00 ",.01)
 ;;52959-0822-00
 ;;9002226.02101,"1876,52959-0822-00 ",.02)
 ;;52959-0822-00
 ;;9002226.02101,"1876,52959-0822-30 ",.01)
 ;;52959-0822-30
 ;;9002226.02101,"1876,52959-0822-30 ",.02)
 ;;52959-0822-30
 ;;9002226.02101,"1876,52959-0822-60 ",.01)
 ;;52959-0822-60
 ;;9002226.02101,"1876,52959-0822-60 ",.02)
 ;;52959-0822-60
 ;;9002226.02101,"1876,52959-0823-20 ",.01)
 ;;52959-0823-20
 ;;9002226.02101,"1876,52959-0823-20 ",.02)
 ;;52959-0823-20
 ;;9002226.02101,"1876,52959-0823-60 ",.01)
 ;;52959-0823-60
 ;;9002226.02101,"1876,52959-0823-60 ",.02)
 ;;52959-0823-60
 ;;9002226.02101,"1876,52959-0860-02 ",.01)
 ;;52959-0860-02
 ;;9002226.02101,"1876,52959-0860-02 ",.02)
 ;;52959-0860-02
 ;;9002226.02101,"1876,52959-0860-30 ",.01)
 ;;52959-0860-30
 ;;9002226.02101,"1876,52959-0860-30 ",.02)
 ;;52959-0860-30
 ;;9002226.02101,"1876,52959-0860-60 ",.01)
 ;;52959-0860-60
 ;;9002226.02101,"1876,52959-0860-60 ",.02)
 ;;52959-0860-60
 ;;9002226.02101,"1876,52959-0860-90 ",.01)
 ;;52959-0860-90
 ;;9002226.02101,"1876,52959-0860-90 ",.02)
 ;;52959-0860-90
 ;;9002226.02101,"1876,52959-0888-00 ",.01)
 ;;52959-0888-00
 ;;9002226.02101,"1876,52959-0888-00 ",.02)
 ;;52959-0888-00
 ;;9002226.02101,"1876,52959-0888-30 ",.01)
 ;;52959-0888-30
 ;;9002226.02101,"1876,52959-0888-30 ",.02)
 ;;52959-0888-30
 ;;9002226.02101,"1876,52959-0896-01 ",.01)
 ;;52959-0896-01
 ;;9002226.02101,"1876,52959-0896-01 ",.02)
 ;;52959-0896-01
 ;;9002226.02101,"1876,52959-0896-60 ",.01)
 ;;52959-0896-60
 ;;9002226.02101,"1876,52959-0896-60 ",.02)
 ;;52959-0896-60
 ;;9002226.02101,"1876,52959-0936-30 ",.01)
 ;;52959-0936-30
 ;;9002226.02101,"1876,52959-0936-30 ",.02)
 ;;52959-0936-30
 ;;9002226.02101,"1876,52959-0936-60 ",.01)
 ;;52959-0936-60
 ;;9002226.02101,"1876,52959-0936-60 ",.02)
 ;;52959-0936-60
 ;;9002226.02101,"1876,53002-0446-00 ",.01)
 ;;53002-0446-00
 ;;9002226.02101,"1876,53002-0446-00 ",.02)
 ;;53002-0446-00
 ;;9002226.02101,"1876,53002-0446-30 ",.01)
 ;;53002-0446-30
 ;;9002226.02101,"1876,53002-0446-30 ",.02)
 ;;53002-0446-30
 ;;9002226.02101,"1876,53002-0446-60 ",.01)
 ;;53002-0446-60
 ;;9002226.02101,"1876,53002-0446-60 ",.02)
 ;;53002-0446-60
 ;;9002226.02101,"1876,53002-1111-00 ",.01)
 ;;53002-1111-00
 ;;9002226.02101,"1876,53002-1111-00 ",.02)
 ;;53002-1111-00
 ;;9002226.02101,"1876,53002-1111-03 ",.01)
 ;;53002-1111-03
 ;;9002226.02101,"1876,53002-1111-03 ",.02)
 ;;53002-1111-03
 ;;9002226.02101,"1876,53002-1111-06 ",.01)
 ;;53002-1111-06
 ;;9002226.02101,"1876,53002-1111-06 ",.02)
 ;;53002-1111-06
 ;;9002226.02101,"1876,53002-1251-00 ",.01)
 ;;53002-1251-00
 ;;9002226.02101,"1876,53002-1251-00 ",.02)
 ;;53002-1251-00
 ;;9002226.02101,"1876,53002-1251-03 ",.01)
 ;;53002-1251-03
 ;;9002226.02101,"1876,53002-1251-03 ",.02)
 ;;53002-1251-03
 ;;9002226.02101,"1876,53002-1251-06 ",.01)
 ;;53002-1251-06
 ;;9002226.02101,"1876,53002-1251-06 ",.02)
 ;;53002-1251-06
 ;;9002226.02101,"1876,53002-1422-00 ",.01)
 ;;53002-1422-00
 ;;9002226.02101,"1876,53002-1422-00 ",.02)
 ;;53002-1422-00
 ;;9002226.02101,"1876,53002-1422-03 ",.01)
 ;;53002-1422-03
 ;;9002226.02101,"1876,53002-1422-03 ",.02)
 ;;53002-1422-03
 ;;9002226.02101,"1876,53002-1422-06 ",.01)
 ;;53002-1422-06
 ;;9002226.02101,"1876,53002-1422-06 ",.02)
 ;;53002-1422-06
 ;;9002226.02101,"1876,53002-1445-00 ",.01)
 ;;53002-1445-00
 ;;9002226.02101,"1876,53002-1445-00 ",.02)
 ;;53002-1445-00
 ;;9002226.02101,"1876,53002-1445-03 ",.01)
 ;;53002-1445-03
 ;;9002226.02101,"1876,53002-1445-03 ",.02)
 ;;53002-1445-03
 ;;9002226.02101,"1876,53002-1445-06 ",.01)
 ;;53002-1445-06
 ;;9002226.02101,"1876,53002-1445-06 ",.02)
 ;;53002-1445-06
 ;;9002226.02101,"1876,53217-0095-30 ",.01)
 ;;53217-0095-30
 ;;9002226.02101,"1876,53217-0095-30 ",.02)
 ;;53217-0095-30
 ;;9002226.02101,"1876,53217-0095-90 ",.01)
 ;;53217-0095-90
 ;;9002226.02101,"1876,53217-0095-90 ",.02)
 ;;53217-0095-90
 ;;9002226.02101,"1876,53746-0178-01 ",.01)
 ;;53746-0178-01
 ;;9002226.02101,"1876,53746-0178-01 ",.02)
 ;;53746-0178-01
 ;;9002226.02101,"1876,53746-0178-05 ",.01)
 ;;53746-0178-05
 ;;9002226.02101,"1876,53746-0178-05 ",.02)
 ;;53746-0178-05
 ;;9002226.02101,"1876,53746-0178-10 ",.01)
 ;;53746-0178-10
 ;;9002226.02101,"1876,53746-0178-10 ",.02)
 ;;53746-0178-10
 ;;9002226.02101,"1876,53746-0178-90 ",.01)
 ;;53746-0178-90
 ;;9002226.02101,"1876,53746-0178-90 ",.02)
 ;;53746-0178-90
 ;;9002226.02101,"1876,53746-0179-01 ",.01)
 ;;53746-0179-01
 ;;9002226.02101,"1876,53746-0179-01 ",.02)
 ;;53746-0179-01
 ;;9002226.02101,"1876,53746-0179-05 ",.01)
 ;;53746-0179-05
 ;;9002226.02101,"1876,53746-0179-05 ",.02)
 ;;53746-0179-05
 ;;9002226.02101,"1876,53746-0218-01 ",.01)
 ;;53746-0218-01
 ;;9002226.02101,"1876,53746-0218-01 ",.02)
 ;;53746-0218-01
 ;;9002226.02101,"1876,53746-0218-05 ",.01)
 ;;53746-0218-05
 ;;9002226.02101,"1876,53746-0218-05 ",.02)
 ;;53746-0218-05
 ;;9002226.02101,"1876,53746-0218-10 ",.01)
 ;;53746-0218-10
 ;;9002226.02101,"1876,53746-0218-10 ",.02)
 ;;53746-0218-10
 ;;9002226.02101,"1876,53746-0219-01 ",.01)
 ;;53746-0219-01
 ;;9002226.02101,"1876,53746-0219-01 ",.02)
 ;;53746-0219-01
 ;;9002226.02101,"1876,53746-0219-05 ",.01)
 ;;53746-0219-05
 ;;9002226.02101,"1876,53746-0219-05 ",.02)
 ;;53746-0219-05
 ;;9002226.02101,"1876,53746-0219-10 ",.01)
 ;;53746-0219-10
 ;;9002226.02101,"1876,53746-0219-10 ",.02)
 ;;53746-0219-10
 ;;9002226.02101,"1876,53746-0220-01 ",.01)
 ;;53746-0220-01
 ;;9002226.02101,"1876,53746-0220-01 ",.02)
 ;;53746-0220-01
 ;;9002226.02101,"1876,53746-0220-05 ",.01)
 ;;53746-0220-05
 ;;9002226.02101,"1876,53746-0220-05 ",.02)
 ;;53746-0220-05
 ;;9002226.02101,"1876,53746-0220-10 ",.01)
 ;;53746-0220-10
 ;;9002226.02101,"1876,53746-0220-10 ",.02)
 ;;53746-0220-10
 ;;9002226.02101,"1876,54348-0098-30 ",.01)
 ;;54348-0098-30
 ;;9002226.02101,"1876,54348-0098-30 ",.02)
 ;;54348-0098-30
 ;;9002226.02101,"1876,54348-0104-30 ",.01)
 ;;54348-0104-30
 ;;9002226.02101,"1876,54348-0104-30 ",.02)
 ;;54348-0104-30
 ;;9002226.02101,"1876,54458-0864-10 ",.01)
 ;;54458-0864-10
 ;;9002226.02101,"1876,54458-0864-10 ",.02)
 ;;54458-0864-10
 ;;9002226.02101,"1876,54458-0865-10 ",.01)
 ;;54458-0865-10
 ;;9002226.02101,"1876,54458-0865-10 ",.02)
 ;;54458-0865-10
 ;;9002226.02101,"1876,54458-0866-10 ",.01)
 ;;54458-0866-10
 ;;9002226.02101,"1876,54458-0866-10 ",.02)
 ;;54458-0866-10
 ;;9002226.02101,"1876,54458-0883-10 ",.01)
 ;;54458-0883-10
 ;;9002226.02101,"1876,54458-0883-10 ",.02)
 ;;54458-0883-10
 ;;9002226.02101,"1876,54458-0884-10 ",.01)
 ;;54458-0884-10
 ;;9002226.02101,"1876,54458-0884-10 ",.02)
 ;;54458-0884-10
 ;;9002226.02101,"1876,54458-0885-10 ",.01)
 ;;54458-0885-10
 ;;9002226.02101,"1876,54458-0885-10 ",.02)
 ;;54458-0885-10
 ;;9002226.02101,"1876,54458-0966-10 ",.01)
 ;;54458-0966-10
 ;;9002226.02101,"1876,54458-0966-10 ",.02)
 ;;54458-0966-10
 ;;9002226.02101,"1876,54458-0967-10 ",.01)
 ;;54458-0967-10
 ;;9002226.02101,"1876,54458-0967-10 ",.02)
 ;;54458-0967-10
 ;;9002226.02101,"1876,54458-0968-10 ",.01)
 ;;54458-0968-10
 ;;9002226.02101,"1876,54458-0968-10 ",.02)
 ;;54458-0968-10
 ;;9002226.02101,"1876,54569-3830-00 ",.01)
 ;;54569-3830-00
 ;;9002226.02101,"1876,54569-3830-00 ",.02)
 ;;54569-3830-00
 ;;9002226.02101,"1876,54569-3830-02 ",.01)
 ;;54569-3830-02
 ;;9002226.02101,"1876,54569-3830-02 ",.02)
 ;;54569-3830-02
 ;;9002226.02101,"1876,54569-3831-00 ",.01)
 ;;54569-3831-00
 ;;9002226.02101,"1876,54569-3831-00 ",.02)
 ;;54569-3831-00
 ;;9002226.02101,"1876,54569-3831-01 ",.01)
 ;;54569-3831-01
 ;;9002226.02101,"1876,54569-3831-01 ",.02)
 ;;54569-3831-01
 ;;9002226.02101,"1876,54569-3831-02 ",.01)
 ;;54569-3831-02
 ;;9002226.02101,"1876,54569-3831-02 ",.02)
 ;;54569-3831-02
 ;;9002226.02101,"1876,54569-3831-08 ",.01)
 ;;54569-3831-08
 ;;9002226.02101,"1876,54569-3831-08 ",.02)
 ;;54569-3831-08
 ;;9002226.02101,"1876,54569-3831-09 ",.01)
 ;;54569-3831-09
 ;;9002226.02101,"1876,54569-3831-09 ",.02)
 ;;54569-3831-09
 ;;9002226.02101,"1876,54569-3841-00 ",.01)
 ;;54569-3841-00
 ;;9002226.02101,"1876,54569-3841-00 ",.02)
 ;;54569-3841-00
 ;;9002226.02101,"1876,54569-3841-01 ",.01)
 ;;54569-3841-01
 ;;9002226.02101,"1876,54569-3841-01 ",.02)
 ;;54569-3841-01
 ;;9002226.02101,"1876,54569-3841-02 ",.01)
 ;;54569-3841-02
 ;;9002226.02101,"1876,54569-3841-02 ",.02)
 ;;54569-3841-02
 ;;9002226.02101,"1876,54569-3841-03 ",.01)
 ;;54569-3841-03
 ;;9002226.02101,"1876,54569-3841-03 ",.02)
 ;;54569-3841-03
 ;;9002226.02101,"1876,54569-3841-04 ",.01)
 ;;54569-3841-04
 ;;9002226.02101,"1876,54569-3841-04 ",.02)
 ;;54569-3841-04
 ;;9002226.02101,"1876,54569-3842-00 ",.01)
 ;;54569-3842-00
 ;;9002226.02101,"1876,54569-3842-00 ",.02)
 ;;54569-3842-00
 ;;9002226.02101,"1876,54569-3842-01 ",.01)
 ;;54569-3842-01
 ;;9002226.02101,"1876,54569-3842-01 ",.02)
 ;;54569-3842-01
 ;;9002226.02101,"1876,54569-3842-02 ",.01)
 ;;54569-3842-02
 ;;9002226.02101,"1876,54569-3842-02 ",.02)
 ;;54569-3842-02