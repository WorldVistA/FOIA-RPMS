BGP82L9 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1222,49999-0781-30 ",.02)
 ;;49999-0781-30
 ;;9002226.02101,"1222,49999-0781-60 ",.01)
 ;;49999-0781-60
 ;;9002226.02101,"1222,49999-0781-60 ",.02)
 ;;49999-0781-60
 ;;9002226.02101,"1222,49999-0781-90 ",.01)
 ;;49999-0781-90
 ;;9002226.02101,"1222,49999-0781-90 ",.02)
 ;;49999-0781-90
 ;;9002226.02101,"1222,49999-0807-00 ",.01)
 ;;49999-0807-00
 ;;9002226.02101,"1222,49999-0807-00 ",.02)
 ;;49999-0807-00
 ;;9002226.02101,"1222,49999-0807-30 ",.01)
 ;;49999-0807-30
 ;;9002226.02101,"1222,49999-0807-30 ",.02)
 ;;49999-0807-30
 ;;9002226.02101,"1222,49999-0807-60 ",.01)
 ;;49999-0807-60
 ;;9002226.02101,"1222,49999-0807-60 ",.02)
 ;;49999-0807-60
 ;;9002226.02101,"1222,49999-0807-90 ",.01)
 ;;49999-0807-90
 ;;9002226.02101,"1222,49999-0807-90 ",.02)
 ;;49999-0807-90
 ;;9002226.02101,"1222,49999-0808-00 ",.01)
 ;;49999-0808-00
 ;;9002226.02101,"1222,49999-0808-00 ",.02)
 ;;49999-0808-00
 ;;9002226.02101,"1222,51079-0425-01 ",.01)
 ;;51079-0425-01
 ;;9002226.02101,"1222,51079-0425-01 ",.02)
 ;;51079-0425-01
 ;;9002226.02101,"1222,51079-0425-20 ",.01)
 ;;51079-0425-20
 ;;9002226.02101,"1222,51079-0425-20 ",.02)
 ;;51079-0425-20
 ;;9002226.02101,"1222,51079-0426-01 ",.01)
 ;;51079-0426-01
 ;;9002226.02101,"1222,51079-0426-01 ",.02)
 ;;51079-0426-01
 ;;9002226.02101,"1222,51079-0426-20 ",.01)
 ;;51079-0426-20
 ;;9002226.02101,"1222,51079-0426-20 ",.02)
 ;;51079-0426-20
 ;;9002226.02101,"1222,51079-0810-01 ",.01)
 ;;51079-0810-01
 ;;9002226.02101,"1222,51079-0810-01 ",.02)
 ;;51079-0810-01
 ;;9002226.02101,"1222,51079-0810-17 ",.01)
 ;;51079-0810-17
 ;;9002226.02101,"1222,51079-0810-17 ",.02)
 ;;51079-0810-17
 ;;9002226.02101,"1222,51079-0810-19 ",.01)
 ;;51079-0810-19
 ;;9002226.02101,"1222,51079-0810-19 ",.02)
 ;;51079-0810-19
 ;;9002226.02101,"1222,51079-0810-20 ",.01)
 ;;51079-0810-20
 ;;9002226.02101,"1222,51079-0810-20 ",.02)
 ;;51079-0810-20
 ;;9002226.02101,"1222,51079-0811-01 ",.01)
 ;;51079-0811-01
 ;;9002226.02101,"1222,51079-0811-01 ",.02)
 ;;51079-0811-01
 ;;9002226.02101,"1222,51079-0811-17 ",.01)
 ;;51079-0811-17
 ;;9002226.02101,"1222,51079-0811-17 ",.02)
 ;;51079-0811-17
 ;;9002226.02101,"1222,51079-0811-19 ",.01)
 ;;51079-0811-19
 ;;9002226.02101,"1222,51079-0811-19 ",.02)
 ;;51079-0811-19
 ;;9002226.02101,"1222,51079-0811-20 ",.01)
 ;;51079-0811-20
 ;;9002226.02101,"1222,51079-0811-20 ",.02)
 ;;51079-0811-20
 ;;9002226.02101,"1222,51079-0872-01 ",.01)
 ;;51079-0872-01
 ;;9002226.02101,"1222,51079-0872-01 ",.02)
 ;;51079-0872-01
 ;;9002226.02101,"1222,51079-0872-20 ",.01)
 ;;51079-0872-20
 ;;9002226.02101,"1222,51079-0872-20 ",.02)
 ;;51079-0872-20
 ;;9002226.02101,"1222,51079-0873-01 ",.01)
 ;;51079-0873-01
 ;;9002226.02101,"1222,51079-0873-01 ",.02)
 ;;51079-0873-01
 ;;9002226.02101,"1222,51079-0873-17 ",.01)
 ;;51079-0873-17
 ;;9002226.02101,"1222,51079-0873-17 ",.02)
 ;;51079-0873-17
 ;;9002226.02101,"1222,51079-0873-19 ",.01)
 ;;51079-0873-19
 ;;9002226.02101,"1222,51079-0873-19 ",.02)
 ;;51079-0873-19
 ;;9002226.02101,"1222,51079-0873-20 ",.01)
 ;;51079-0873-20
 ;;9002226.02101,"1222,51079-0873-20 ",.02)
 ;;51079-0873-20
 ;;9002226.02101,"1222,52817-0120-10 ",.01)
 ;;52817-0120-10
 ;;9002226.02101,"1222,52817-0120-10 ",.02)
 ;;52817-0120-10
 ;;9002226.02101,"1222,52817-0121-10 ",.01)
 ;;52817-0121-10
 ;;9002226.02101,"1222,52817-0121-10 ",.02)
 ;;52817-0121-10
 ;;9002226.02101,"1222,52817-0122-00 ",.01)
 ;;52817-0122-00
 ;;9002226.02101,"1222,52817-0122-00 ",.02)
 ;;52817-0122-00
 ;;9002226.02101,"1222,52817-0122-10 ",.01)
 ;;52817-0122-10
 ;;9002226.02101,"1222,52817-0122-10 ",.02)
 ;;52817-0122-10
 ;;9002226.02101,"1222,52959-0449-01 ",.01)
 ;;52959-0449-01
 ;;9002226.02101,"1222,52959-0449-01 ",.02)
 ;;52959-0449-01
 ;;9002226.02101,"1222,52959-0449-30 ",.01)
 ;;52959-0449-30
 ;;9002226.02101,"1222,52959-0449-30 ",.02)
 ;;52959-0449-30
 ;;9002226.02101,"1222,52959-0449-60 ",.01)
 ;;52959-0449-60
 ;;9002226.02101,"1222,52959-0449-60 ",.02)
 ;;52959-0449-60
 ;;9002226.02101,"1222,52959-0598-90 ",.01)
 ;;52959-0598-90
 ;;9002226.02101,"1222,52959-0598-90 ",.02)
 ;;52959-0598-90
 ;;9002226.02101,"1222,52959-0822-00 ",.01)
 ;;52959-0822-00
 ;;9002226.02101,"1222,52959-0822-00 ",.02)
 ;;52959-0822-00
 ;;9002226.02101,"1222,52959-0822-30 ",.01)
 ;;52959-0822-30
 ;;9002226.02101,"1222,52959-0822-30 ",.02)
 ;;52959-0822-30
 ;;9002226.02101,"1222,52959-0822-60 ",.01)
 ;;52959-0822-60
 ;;9002226.02101,"1222,52959-0822-60 ",.02)
 ;;52959-0822-60
 ;;9002226.02101,"1222,52959-0823-20 ",.01)
 ;;52959-0823-20
 ;;9002226.02101,"1222,52959-0823-20 ",.02)
 ;;52959-0823-20
 ;;9002226.02101,"1222,52959-0823-60 ",.01)
 ;;52959-0823-60
 ;;9002226.02101,"1222,52959-0823-60 ",.02)
 ;;52959-0823-60
 ;;9002226.02101,"1222,52959-0888-00 ",.01)
 ;;52959-0888-00
 ;;9002226.02101,"1222,52959-0888-00 ",.02)
 ;;52959-0888-00
 ;;9002226.02101,"1222,52959-0888-30 ",.01)
 ;;52959-0888-30
 ;;9002226.02101,"1222,52959-0888-30 ",.02)
 ;;52959-0888-30
 ;;9002226.02101,"1222,52959-0936-30 ",.01)
 ;;52959-0936-30
 ;;9002226.02101,"1222,52959-0936-30 ",.02)
 ;;52959-0936-30
 ;;9002226.02101,"1222,52959-0936-60 ",.01)
 ;;52959-0936-60
 ;;9002226.02101,"1222,52959-0936-60 ",.02)
 ;;52959-0936-60
 ;;9002226.02101,"1222,53002-0446-00 ",.01)
 ;;53002-0446-00
 ;;9002226.02101,"1222,53002-0446-00 ",.02)
 ;;53002-0446-00
 ;;9002226.02101,"1222,53002-0446-30 ",.01)
 ;;53002-0446-30
 ;;9002226.02101,"1222,53002-0446-30 ",.02)
 ;;53002-0446-30
 ;;9002226.02101,"1222,53002-0446-60 ",.01)
 ;;53002-0446-60
 ;;9002226.02101,"1222,53002-0446-60 ",.02)
 ;;53002-0446-60
 ;;9002226.02101,"1222,53002-1111-00 ",.01)
 ;;53002-1111-00
 ;;9002226.02101,"1222,53002-1111-00 ",.02)
 ;;53002-1111-00
 ;;9002226.02101,"1222,53002-1111-03 ",.01)
 ;;53002-1111-03
 ;;9002226.02101,"1222,53002-1111-03 ",.02)
 ;;53002-1111-03
 ;;9002226.02101,"1222,53002-1111-06 ",.01)
 ;;53002-1111-06
 ;;9002226.02101,"1222,53002-1111-06 ",.02)
 ;;53002-1111-06
 ;;9002226.02101,"1222,53217-0196-30 ",.01)
 ;;53217-0196-30
 ;;9002226.02101,"1222,53217-0196-30 ",.02)
 ;;53217-0196-30
 ;;9002226.02101,"1222,53217-0196-60 ",.01)
 ;;53217-0196-60
 ;;9002226.02101,"1222,53217-0196-60 ",.02)
 ;;53217-0196-60
 ;;9002226.02101,"1222,53217-0196-90 ",.01)
 ;;53217-0196-90
 ;;9002226.02101,"1222,53217-0196-90 ",.02)
 ;;53217-0196-90
 ;;9002226.02101,"1222,53217-0250-30 ",.01)
 ;;53217-0250-30
 ;;9002226.02101,"1222,53217-0250-30 ",.02)
 ;;53217-0250-30
 ;;9002226.02101,"1222,53217-0250-60 ",.01)
 ;;53217-0250-60
 ;;9002226.02101,"1222,53217-0250-60 ",.02)
 ;;53217-0250-60
 ;;9002226.02101,"1222,53217-0250-90 ",.01)
 ;;53217-0250-90
 ;;9002226.02101,"1222,53217-0250-90 ",.02)
 ;;53217-0250-90
 ;;9002226.02101,"1222,53217-0250-99 ",.01)
 ;;53217-0250-99
 ;;9002226.02101,"1222,53217-0250-99 ",.02)
 ;;53217-0250-99
 ;;9002226.02101,"1222,53217-0285-00 ",.01)
 ;;53217-0285-00
 ;;9002226.02101,"1222,53217-0285-00 ",.02)
 ;;53217-0285-00
 ;;9002226.02101,"1222,53217-0285-30 ",.01)
 ;;53217-0285-30
 ;;9002226.02101,"1222,53217-0285-30 ",.02)
 ;;53217-0285-30
 ;;9002226.02101,"1222,53217-0285-60 ",.01)
 ;;53217-0285-60
 ;;9002226.02101,"1222,53217-0285-60 ",.02)
 ;;53217-0285-60
 ;;9002226.02101,"1222,53217-0285-90 ",.01)
 ;;53217-0285-90
 ;;9002226.02101,"1222,53217-0285-90 ",.02)
 ;;53217-0285-90
 ;;9002226.02101,"1222,53217-0285-99 ",.01)
 ;;53217-0285-99
 ;;9002226.02101,"1222,53217-0285-99 ",.02)
 ;;53217-0285-99
 ;;9002226.02101,"1222,54348-0098-30 ",.01)
 ;;54348-0098-30
 ;;9002226.02101,"1222,54348-0098-30 ",.02)
 ;;54348-0098-30
 ;;9002226.02101,"1222,54348-0104-30 ",.01)
 ;;54348-0104-30
 ;;9002226.02101,"1222,54348-0104-30 ",.02)
 ;;54348-0104-30
 ;;9002226.02101,"1222,54458-0966-10 ",.01)
 ;;54458-0966-10
 ;;9002226.02101,"1222,54458-0966-10 ",.02)
 ;;54458-0966-10
 ;;9002226.02101,"1222,54458-0967-10 ",.01)
 ;;54458-0967-10
 ;;9002226.02101,"1222,54458-0967-10 ",.02)
 ;;54458-0967-10
 ;;9002226.02101,"1222,54458-0968-10 ",.01)
 ;;54458-0968-10
 ;;9002226.02101,"1222,54458-0968-10 ",.02)
 ;;54458-0968-10
 ;;9002226.02101,"1222,54569-3830-00 ",.01)
 ;;54569-3830-00
 ;;9002226.02101,"1222,54569-3830-00 ",.02)
 ;;54569-3830-00
 ;;9002226.02101,"1222,54569-3830-02 ",.01)
 ;;54569-3830-02
 ;;9002226.02101,"1222,54569-3830-02 ",.02)
 ;;54569-3830-02
 ;;9002226.02101,"1222,54569-3831-00 ",.01)
 ;;54569-3831-00
 ;;9002226.02101,"1222,54569-3831-00 ",.02)
 ;;54569-3831-00
 ;;9002226.02101,"1222,54569-3831-01 ",.01)
 ;;54569-3831-01
 ;;9002226.02101,"1222,54569-3831-01 ",.02)
 ;;54569-3831-01
 ;;9002226.02101,"1222,54569-3831-02 ",.01)
 ;;54569-3831-02
 ;;9002226.02101,"1222,54569-3831-02 ",.02)
 ;;54569-3831-02
 ;;9002226.02101,"1222,54569-3831-08 ",.01)
 ;;54569-3831-08
 ;;9002226.02101,"1222,54569-3831-08 ",.02)
 ;;54569-3831-08
 ;;9002226.02101,"1222,54569-3831-09 ",.01)
 ;;54569-3831-09
 ;;9002226.02101,"1222,54569-3831-09 ",.02)
 ;;54569-3831-09
 ;;9002226.02101,"1222,54569-3841-00 ",.01)
 ;;54569-3841-00
 ;;9002226.02101,"1222,54569-3841-00 ",.02)
 ;;54569-3841-00
 ;;9002226.02101,"1222,54569-3841-01 ",.01)
 ;;54569-3841-01
 ;;9002226.02101,"1222,54569-3841-01 ",.02)
 ;;54569-3841-01
 ;;9002226.02101,"1222,54569-3841-02 ",.01)
 ;;54569-3841-02
 ;;9002226.02101,"1222,54569-3841-02 ",.02)
 ;;54569-3841-02
 ;;9002226.02101,"1222,54569-3841-03 ",.01)
 ;;54569-3841-03
 ;;9002226.02101,"1222,54569-3841-03 ",.02)
 ;;54569-3841-03
 ;;9002226.02101,"1222,54569-3841-04 ",.01)
 ;;54569-3841-04
 ;;9002226.02101,"1222,54569-3841-04 ",.02)
 ;;54569-3841-04
 ;;9002226.02101,"1222,54569-3842-00 ",.01)
 ;;54569-3842-00
 ;;9002226.02101,"1222,54569-3842-00 ",.02)
 ;;54569-3842-00
 ;;9002226.02101,"1222,54569-3842-01 ",.01)
 ;;54569-3842-01
 ;;9002226.02101,"1222,54569-3842-01 ",.02)
 ;;54569-3842-01
 ;;9002226.02101,"1222,54569-3842-02 ",.01)
 ;;54569-3842-02
 ;;9002226.02101,"1222,54569-3842-02 ",.02)
 ;;54569-3842-02
 ;;9002226.02101,"1222,54569-3842-04 ",.01)
 ;;54569-3842-04
 ;;9002226.02101,"1222,54569-3842-04 ",.02)
 ;;54569-3842-04
 ;;9002226.02101,"1222,54569-3842-05 ",.01)
 ;;54569-3842-05
 ;;9002226.02101,"1222,54569-3842-05 ",.02)
 ;;54569-3842-05
 ;;9002226.02101,"1222,54569-3842-06 ",.01)
 ;;54569-3842-06
 ;;9002226.02101,"1222,54569-3842-06 ",.02)
 ;;54569-3842-06
 ;;9002226.02101,"1222,54569-3937-00 ",.01)
 ;;54569-3937-00
 ;;9002226.02101,"1222,54569-3937-00 ",.02)
 ;;54569-3937-00
 ;;9002226.02101,"1222,54569-3938-00 ",.01)
 ;;54569-3938-00
 ;;9002226.02101,"1222,54569-3938-00 ",.02)
 ;;54569-3938-00
 ;;9002226.02101,"1222,54569-5547-00 ",.01)
 ;;54569-5547-00
 ;;9002226.02101,"1222,54569-5547-00 ",.02)
 ;;54569-5547-00
 ;;9002226.02101,"1222,54569-5547-02 ",.01)
 ;;54569-5547-02
 ;;9002226.02101,"1222,54569-5547-02 ",.02)
 ;;54569-5547-02
 ;;9002226.02101,"1222,54569-5548-00 ",.01)
 ;;54569-5548-00
 ;;9002226.02101,"1222,54569-5548-00 ",.02)
 ;;54569-5548-00
 ;;9002226.02101,"1222,54569-5548-01 ",.01)
 ;;54569-5548-01
 ;;9002226.02101,"1222,54569-5548-01 ",.02)
 ;;54569-5548-01
 ;;9002226.02101,"1222,54569-5548-02 ",.01)
 ;;54569-5548-02
 ;;9002226.02101,"1222,54569-5548-02 ",.02)
 ;;54569-5548-02
 ;;9002226.02101,"1222,54569-5618-00 ",.01)
 ;;54569-5618-00
 ;;9002226.02101,"1222,54569-5618-00 ",.02)
 ;;54569-5618-00
 ;;9002226.02101,"1222,54569-5618-01 ",.01)
 ;;54569-5618-01
 ;;9002226.02101,"1222,54569-5618-01 ",.02)
 ;;54569-5618-01
 ;;9002226.02101,"1222,54569-5618-02 ",.01)
 ;;54569-5618-02
 ;;9002226.02101,"1222,54569-5618-02 ",.02)
 ;;54569-5618-02
 ;;9002226.02101,"1222,54569-5618-03 ",.01)
 ;;54569-5618-03
 ;;9002226.02101,"1222,54569-5618-03 ",.02)
 ;;54569-5618-03