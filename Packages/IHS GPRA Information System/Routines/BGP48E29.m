BGP48E29 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1774,58016-0844-30 ",.02)
 ;;58016-0844-30
 ;;9002226.02101,"1774,58016-0844-60 ",.01)
 ;;58016-0844-60
 ;;9002226.02101,"1774,58016-0844-60 ",.02)
 ;;58016-0844-60
 ;;9002226.02101,"1774,58016-0844-90 ",.01)
 ;;58016-0844-90
 ;;9002226.02101,"1774,58016-0844-90 ",.02)
 ;;58016-0844-90
 ;;9002226.02101,"1774,58016-0876-00 ",.01)
 ;;58016-0876-00
 ;;9002226.02101,"1774,58016-0876-00 ",.02)
 ;;58016-0876-00
 ;;9002226.02101,"1774,58016-0876-10 ",.01)
 ;;58016-0876-10
 ;;9002226.02101,"1774,58016-0876-10 ",.02)
 ;;58016-0876-10
 ;;9002226.02101,"1774,58016-0876-12 ",.01)
 ;;58016-0876-12
 ;;9002226.02101,"1774,58016-0876-12 ",.02)
 ;;58016-0876-12
 ;;9002226.02101,"1774,58016-0876-14 ",.01)
 ;;58016-0876-14
 ;;9002226.02101,"1774,58016-0876-14 ",.02)
 ;;58016-0876-14
 ;;9002226.02101,"1774,58016-0876-15 ",.01)
 ;;58016-0876-15
 ;;9002226.02101,"1774,58016-0876-15 ",.02)
 ;;58016-0876-15
 ;;9002226.02101,"1774,58016-0876-20 ",.01)
 ;;58016-0876-20
 ;;9002226.02101,"1774,58016-0876-20 ",.02)
 ;;58016-0876-20
 ;;9002226.02101,"1774,58016-0876-21 ",.01)
 ;;58016-0876-21
 ;;9002226.02101,"1774,58016-0876-21 ",.02)
 ;;58016-0876-21
 ;;9002226.02101,"1774,58016-0876-24 ",.01)
 ;;58016-0876-24
 ;;9002226.02101,"1774,58016-0876-24 ",.02)
 ;;58016-0876-24
 ;;9002226.02101,"1774,58016-0876-28 ",.01)
 ;;58016-0876-28
 ;;9002226.02101,"1774,58016-0876-28 ",.02)
 ;;58016-0876-28
 ;;9002226.02101,"1774,58016-0876-30 ",.01)
 ;;58016-0876-30
 ;;9002226.02101,"1774,58016-0876-30 ",.02)
 ;;58016-0876-30
 ;;9002226.02101,"1774,58016-0876-40 ",.01)
 ;;58016-0876-40
 ;;9002226.02101,"1774,58016-0876-40 ",.02)
 ;;58016-0876-40
 ;;9002226.02101,"1774,58016-0876-50 ",.01)
 ;;58016-0876-50
 ;;9002226.02101,"1774,58016-0876-50 ",.02)
 ;;58016-0876-50
 ;;9002226.02101,"1774,58016-0876-60 ",.01)
 ;;58016-0876-60
 ;;9002226.02101,"1774,58016-0876-60 ",.02)
 ;;58016-0876-60
 ;;9002226.02101,"1774,58016-0883-00 ",.01)
 ;;58016-0883-00
 ;;9002226.02101,"1774,58016-0883-00 ",.02)
 ;;58016-0883-00
 ;;9002226.02101,"1774,58016-0883-30 ",.01)
 ;;58016-0883-30
 ;;9002226.02101,"1774,58016-0883-30 ",.02)
 ;;58016-0883-30
 ;;9002226.02101,"1774,58016-0883-60 ",.01)
 ;;58016-0883-60
 ;;9002226.02101,"1774,58016-0883-60 ",.02)
 ;;58016-0883-60
 ;;9002226.02101,"1774,58016-0883-90 ",.01)
 ;;58016-0883-90
 ;;9002226.02101,"1774,58016-0883-90 ",.02)
 ;;58016-0883-90
 ;;9002226.02101,"1774,58118-0010-06 ",.01)
 ;;58118-0010-06
 ;;9002226.02101,"1774,58118-0010-06 ",.02)
 ;;58118-0010-06
 ;;9002226.02101,"1774,58118-0010-08 ",.01)
 ;;58118-0010-08
 ;;9002226.02101,"1774,58118-0010-08 ",.02)
 ;;58118-0010-08
 ;;9002226.02101,"1774,58118-0010-09 ",.01)
 ;;58118-0010-09
 ;;9002226.02101,"1774,58118-0010-09 ",.02)
 ;;58118-0010-09
 ;;9002226.02101,"1774,58118-0102-03 ",.01)
 ;;58118-0102-03
 ;;9002226.02101,"1774,58118-0102-03 ",.02)
 ;;58118-0102-03
 ;;9002226.02101,"1774,58118-0102-06 ",.01)
 ;;58118-0102-06
 ;;9002226.02101,"1774,58118-0102-06 ",.02)
 ;;58118-0102-06
 ;;9002226.02101,"1774,58118-0102-09 ",.01)
 ;;58118-0102-09
 ;;9002226.02101,"1774,58118-0102-09 ",.02)
 ;;58118-0102-09
 ;;9002226.02101,"1774,58118-0321-03 ",.01)
 ;;58118-0321-03
 ;;9002226.02101,"1774,58118-0321-03 ",.02)
 ;;58118-0321-03
 ;;9002226.02101,"1774,58118-0321-06 ",.01)
 ;;58118-0321-06
 ;;9002226.02101,"1774,58118-0321-06 ",.02)
 ;;58118-0321-06
 ;;9002226.02101,"1774,58118-0322-03 ",.01)
 ;;58118-0322-03
 ;;9002226.02101,"1774,58118-0322-03 ",.02)
 ;;58118-0322-03
 ;;9002226.02101,"1774,58118-0322-06 ",.01)
 ;;58118-0322-06
 ;;9002226.02101,"1774,58118-0322-06 ",.02)
 ;;58118-0322-06
 ;;9002226.02101,"1774,58118-0461-06 ",.01)
 ;;58118-0461-06
 ;;9002226.02101,"1774,58118-0461-06 ",.02)
 ;;58118-0461-06
 ;;9002226.02101,"1774,58118-0461-08 ",.01)
 ;;58118-0461-08
 ;;9002226.02101,"1774,58118-0461-08 ",.02)
 ;;58118-0461-08
 ;;9002226.02101,"1774,58118-0461-09 ",.01)
 ;;58118-0461-09
 ;;9002226.02101,"1774,58118-0461-09 ",.02)
 ;;58118-0461-09
 ;;9002226.02101,"1774,58118-1452-03 ",.01)
 ;;58118-1452-03
 ;;9002226.02101,"1774,58118-1452-03 ",.02)
 ;;58118-1452-03
 ;;9002226.02101,"1774,58118-1452-06 ",.01)
 ;;58118-1452-06
 ;;9002226.02101,"1774,58118-1452-06 ",.02)
 ;;58118-1452-06
 ;;9002226.02101,"1774,58118-1452-09 ",.01)
 ;;58118-1452-09
 ;;9002226.02101,"1774,58118-1452-09 ",.02)
 ;;58118-1452-09
 ;;9002226.02101,"1774,58118-2331-03 ",.01)
 ;;58118-2331-03
 ;;9002226.02101,"1774,58118-2331-03 ",.02)
 ;;58118-2331-03
 ;;9002226.02101,"1774,58118-2331-09 ",.01)
 ;;58118-2331-09
 ;;9002226.02101,"1774,58118-2331-09 ",.02)
 ;;58118-2331-09
 ;;9002226.02101,"1774,58118-2332-03 ",.01)
 ;;58118-2332-03
 ;;9002226.02101,"1774,58118-2332-03 ",.02)
 ;;58118-2332-03
 ;;9002226.02101,"1774,58118-2332-09 ",.01)
 ;;58118-2332-09
 ;;9002226.02101,"1774,58118-2332-09 ",.02)
 ;;58118-2332-09
 ;;9002226.02101,"1774,58118-5420-01 ",.01)
 ;;58118-5420-01
 ;;9002226.02101,"1774,58118-5420-01 ",.02)
 ;;58118-5420-01
 ;;9002226.02101,"1774,58118-5420-03 ",.01)
 ;;58118-5420-03
 ;;9002226.02101,"1774,58118-5420-03 ",.02)
 ;;58118-5420-03
 ;;9002226.02101,"1774,58118-5420-06 ",.01)
 ;;58118-5420-06
 ;;9002226.02101,"1774,58118-5420-06 ",.02)
 ;;58118-5420-06
 ;;9002226.02101,"1774,58118-5420-09 ",.01)
 ;;58118-5420-09
 ;;9002226.02101,"1774,58118-5420-09 ",.02)
 ;;58118-5420-09
 ;;9002226.02101,"1774,58118-8343-08 ",.01)
 ;;58118-8343-08
 ;;9002226.02101,"1774,58118-8343-08 ",.02)
 ;;58118-8343-08
 ;;9002226.02101,"1774,58118-8343-09 ",.01)
 ;;58118-8343-09
 ;;9002226.02101,"1774,58118-8343-09 ",.02)
 ;;58118-8343-09
 ;;9002226.02101,"1774,58517-0040-90 ",.01)
 ;;58517-0040-90
 ;;9002226.02101,"1774,58517-0040-90 ",.02)
 ;;58517-0040-90
 ;;9002226.02101,"1774,58864-0015-28 ",.01)
 ;;58864-0015-28
 ;;9002226.02101,"1774,58864-0015-28 ",.02)
 ;;58864-0015-28
 ;;9002226.02101,"1774,58864-0015-30 ",.01)
 ;;58864-0015-30
 ;;9002226.02101,"1774,58864-0015-30 ",.02)
 ;;58864-0015-30
 ;;9002226.02101,"1774,58864-0015-60 ",.01)
 ;;58864-0015-60
 ;;9002226.02101,"1774,58864-0015-60 ",.02)
 ;;58864-0015-60
 ;;9002226.02101,"1774,58864-0015-90 ",.01)
 ;;58864-0015-90
 ;;9002226.02101,"1774,58864-0015-90 ",.02)
 ;;58864-0015-90
 ;;9002226.02101,"1774,58864-0027-14 ",.01)
 ;;58864-0027-14
 ;;9002226.02101,"1774,58864-0027-14 ",.02)
 ;;58864-0027-14
 ;;9002226.02101,"1774,58864-0027-30 ",.01)
 ;;58864-0027-30
 ;;9002226.02101,"1774,58864-0027-30 ",.02)
 ;;58864-0027-30
 ;;9002226.02101,"1774,58864-0027-60 ",.01)
 ;;58864-0027-60
 ;;9002226.02101,"1774,58864-0027-60 ",.02)
 ;;58864-0027-60
 ;;9002226.02101,"1774,58864-0027-90 ",.01)
 ;;58864-0027-90
 ;;9002226.02101,"1774,58864-0027-90 ",.02)
 ;;58864-0027-90
 ;;9002226.02101,"1774,58864-0100-30 ",.01)
 ;;58864-0100-30
 ;;9002226.02101,"1774,58864-0100-30 ",.02)
 ;;58864-0100-30
 ;;9002226.02101,"1774,58864-0161-30 ",.01)
 ;;58864-0161-30
 ;;9002226.02101,"1774,58864-0161-30 ",.02)
 ;;58864-0161-30
 ;;9002226.02101,"1774,58864-0161-60 ",.01)
 ;;58864-0161-60
 ;;9002226.02101,"1774,58864-0161-60 ",.02)
 ;;58864-0161-60
 ;;9002226.02101,"1774,58864-0214-30 ",.01)
 ;;58864-0214-30
 ;;9002226.02101,"1774,58864-0214-30 ",.02)
 ;;58864-0214-30
 ;;9002226.02101,"1774,58864-0214-60 ",.01)
 ;;58864-0214-60
 ;;9002226.02101,"1774,58864-0214-60 ",.02)
 ;;58864-0214-60
 ;;9002226.02101,"1774,58864-0224-30 ",.01)
 ;;58864-0224-30
 ;;9002226.02101,"1774,58864-0224-30 ",.02)
 ;;58864-0224-30
 ;;9002226.02101,"1774,58864-0224-60 ",.01)
 ;;58864-0224-60
 ;;9002226.02101,"1774,58864-0224-60 ",.02)
 ;;58864-0224-60
 ;;9002226.02101,"1774,58864-0224-93 ",.01)
 ;;58864-0224-93
 ;;9002226.02101,"1774,58864-0224-93 ",.02)
 ;;58864-0224-93
 ;;9002226.02101,"1774,58864-0507-30 ",.01)
 ;;58864-0507-30
 ;;9002226.02101,"1774,58864-0507-30 ",.02)
 ;;58864-0507-30
 ;;9002226.02101,"1774,58864-0670-14 ",.01)
 ;;58864-0670-14
 ;;9002226.02101,"1774,58864-0670-14 ",.02)
 ;;58864-0670-14
 ;;9002226.02101,"1774,58864-0670-30 ",.01)
 ;;58864-0670-30
 ;;9002226.02101,"1774,58864-0670-30 ",.02)
 ;;58864-0670-30
 ;;9002226.02101,"1774,58864-0687-30 ",.01)
 ;;58864-0687-30
 ;;9002226.02101,"1774,58864-0687-30 ",.02)
 ;;58864-0687-30
 ;;9002226.02101,"1774,58864-0687-60 ",.01)
 ;;58864-0687-60
 ;;9002226.02101,"1774,58864-0687-60 ",.02)
 ;;58864-0687-60
 ;;9002226.02101,"1774,58864-0689-30 ",.01)
 ;;58864-0689-30
 ;;9002226.02101,"1774,58864-0689-30 ",.02)
 ;;58864-0689-30
 ;;9002226.02101,"1774,58864-0689-60 ",.01)
 ;;58864-0689-60
 ;;9002226.02101,"1774,58864-0689-60 ",.02)
 ;;58864-0689-60
 ;;9002226.02101,"1774,58864-0693-30 ",.01)
 ;;58864-0693-30
 ;;9002226.02101,"1774,58864-0693-30 ",.02)
 ;;58864-0693-30
 ;;9002226.02101,"1774,58864-0693-60 ",.01)
 ;;58864-0693-60
 ;;9002226.02101,"1774,58864-0693-60 ",.02)
 ;;58864-0693-60
 ;;9002226.02101,"1774,58864-0705-30 ",.01)
 ;;58864-0705-30
 ;;9002226.02101,"1774,58864-0705-30 ",.02)
 ;;58864-0705-30
 ;;9002226.02101,"1774,58864-0711-30 ",.01)
 ;;58864-0711-30
 ;;9002226.02101,"1774,58864-0711-30 ",.02)
 ;;58864-0711-30
 ;;9002226.02101,"1774,58864-0745-15 ",.01)
 ;;58864-0745-15
 ;;9002226.02101,"1774,58864-0745-15 ",.02)
 ;;58864-0745-15
 ;;9002226.02101,"1774,58864-0745-30 ",.01)
 ;;58864-0745-30
 ;;9002226.02101,"1774,58864-0745-30 ",.02)
 ;;58864-0745-30
 ;;9002226.02101,"1774,58864-0789-30 ",.01)
 ;;58864-0789-30
 ;;9002226.02101,"1774,58864-0789-30 ",.02)
 ;;58864-0789-30
 ;;9002226.02101,"1774,58864-0827-60 ",.01)
 ;;58864-0827-60
 ;;9002226.02101,"1774,58864-0827-60 ",.02)
 ;;58864-0827-60
 ;;9002226.02101,"1774,58864-0851-30 ",.01)
 ;;58864-0851-30
 ;;9002226.02101,"1774,58864-0851-30 ",.02)
 ;;58864-0851-30
 ;;9002226.02101,"1774,58864-0858-30 ",.01)
 ;;58864-0858-30
 ;;9002226.02101,"1774,58864-0858-30 ",.02)
 ;;58864-0858-30
 ;;9002226.02101,"1774,58864-0952-30 ",.01)
 ;;58864-0952-30
 ;;9002226.02101,"1774,58864-0952-30 ",.02)
 ;;58864-0952-30
 ;;9002226.02101,"1774,58864-0953-30 ",.01)
 ;;58864-0953-30
 ;;9002226.02101,"1774,58864-0953-30 ",.02)
 ;;58864-0953-30
 ;;9002226.02101,"1774,58864-0956-30 ",.01)
 ;;58864-0956-30
 ;;9002226.02101,"1774,58864-0956-30 ",.02)
 ;;58864-0956-30
 ;;9002226.02101,"1774,58864-0957-30 ",.01)
 ;;58864-0957-30
 ;;9002226.02101,"1774,58864-0957-30 ",.02)
 ;;58864-0957-30
 ;;9002226.02101,"1774,59630-0574-60 ",.01)
 ;;59630-0574-60
 ;;9002226.02101,"1774,59630-0574-60 ",.02)
 ;;59630-0574-60
 ;;9002226.02101,"1774,59630-0575-60 ",.01)
 ;;59630-0575-60
 ;;9002226.02101,"1774,59630-0575-60 ",.02)
 ;;59630-0575-60
 ;;9002226.02101,"1774,59762-0540-01 ",.01)
 ;;59762-0540-01
 ;;9002226.02101,"1774,59762-0540-01 ",.02)
 ;;59762-0540-01
 ;;9002226.02101,"1774,59762-0541-01 ",.01)
 ;;59762-0541-01
 ;;9002226.02101,"1774,59762-0541-01 ",.02)
 ;;59762-0541-01
 ;;9002226.02101,"1774,59762-0541-02 ",.01)
 ;;59762-0541-02
 ;;9002226.02101,"1774,59762-0541-02 ",.02)
 ;;59762-0541-02
 ;;9002226.02101,"1774,59762-0542-01 ",.01)
 ;;59762-0542-01
 ;;9002226.02101,"1774,59762-0542-01 ",.02)
 ;;59762-0542-01
 ;;9002226.02101,"1774,59762-0542-02 ",.01)
 ;;59762-0542-02
 ;;9002226.02101,"1774,59762-0542-02 ",.02)
 ;;59762-0542-02
 ;;9002226.02101,"1774,59762-2330-07 ",.01)
 ;;59762-2330-07
 ;;9002226.02101,"1774,59762-2330-07 ",.02)
 ;;59762-2330-07
 ;;9002226.02101,"1774,59762-2331-06 ",.01)
 ;;59762-2331-06
 ;;9002226.02101,"1774,59762-2331-06 ",.02)
 ;;59762-2331-06
 ;;9002226.02101,"1774,59762-2331-08 ",.01)
 ;;59762-2331-08
 ;;9002226.02101,"1774,59762-2331-08 ",.02)
 ;;59762-2331-08
 ;;9002226.02101,"1774,59762-2332-06 ",.01)
 ;;59762-2332-06
 ;;9002226.02101,"1774,59762-2332-06 ",.02)
 ;;59762-2332-06
 ;;9002226.02101,"1774,59762-2332-08 ",.01)
 ;;59762-2332-08
 ;;9002226.02101,"1774,59762-2332-08 ",.02)
 ;;59762-2332-08
 ;;9002226.02101,"1774,59762-3725-01 ",.01)
 ;;59762-3725-01
 ;;9002226.02101,"1774,59762-3725-01 ",.02)
 ;;59762-3725-01
 ;;9002226.02101,"1774,59762-3726-03 ",.01)
 ;;59762-3726-03
 ;;9002226.02101,"1774,59762-3726-03 ",.02)
 ;;59762-3726-03
 ;;9002226.02101,"1774,59762-3727-04 ",.01)
 ;;59762-3727-04
 ;;9002226.02101,"1774,59762-3727-04 ",.02)
 ;;59762-3727-04
 ;;9002226.02101,"1774,59762-3727-06 ",.01)
 ;;59762-3727-06
 ;;9002226.02101,"1774,59762-3727-06 ",.02)
 ;;59762-3727-06
 ;;9002226.02101,"1774,59762-3727-07 ",.01)
 ;;59762-3727-07
 ;;9002226.02101,"1774,59762-3727-07 ",.02)
 ;;59762-3727-07
 ;;9002226.02101,"1774,59762-3781-01 ",.01)
 ;;59762-3781-01
 ;;9002226.02101,"1774,59762-3781-01 ",.02)
 ;;59762-3781-01
 ;;9002226.02101,"1774,59762-3782-01 ",.01)
 ;;59762-3782-01
 ;;9002226.02101,"1774,59762-3782-01 ",.02)
 ;;59762-3782-01
 ;;9002226.02101,"1774,59762-3782-03 ",.01)
 ;;59762-3782-03
 ;;9002226.02101,"1774,59762-3782-03 ",.02)
 ;;59762-3782-03
 ;;9002226.02101,"1774,59762-3783-01 ",.01)
 ;;59762-3783-01
 ;;9002226.02101,"1774,59762-3783-01 ",.02)
 ;;59762-3783-01
 ;;9002226.02101,"1774,59762-3783-02 ",.01)
 ;;59762-3783-02
 ;;9002226.02101,"1774,59762-3783-02 ",.02)
 ;;59762-3783-02
 ;;9002226.02101,"1774,59762-3783-03 ",.01)
 ;;59762-3783-03
 ;;9002226.02101,"1774,59762-3783-03 ",.02)
 ;;59762-3783-03
 ;;9002226.02101,"1774,59762-4320-00 ",.01)
 ;;59762-4320-00
 ;;9002226.02101,"1774,59762-4320-00 ",.02)
 ;;59762-4320-00
 ;;9002226.02101,"1774,59762-4320-02 ",.01)
 ;;59762-4320-02
 ;;9002226.02101,"1774,59762-4320-02 ",.02)
 ;;59762-4320-02
 ;;9002226.02101,"1774,59762-4320-06 ",.01)
 ;;59762-4320-06
 ;;9002226.02101,"1774,59762-4320-06 ",.02)
 ;;59762-4320-06