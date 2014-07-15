BGP2VU8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"729,55289-0092-02 ",.01)
 ;;55289-0092-02
 ;;9002226.02101,"729,55289-0092-02 ",.02)
 ;;55289-0092-02
 ;;9002226.02101,"729,55289-0092-06 ",.01)
 ;;55289-0092-06
 ;;9002226.02101,"729,55289-0092-06 ",.02)
 ;;55289-0092-06
 ;;9002226.02101,"729,55289-0092-10 ",.01)
 ;;55289-0092-10
 ;;9002226.02101,"729,55289-0092-10 ",.02)
 ;;55289-0092-10
 ;;9002226.02101,"729,55289-0092-20 ",.01)
 ;;55289-0092-20
 ;;9002226.02101,"729,55289-0092-20 ",.02)
 ;;55289-0092-20
 ;;9002226.02101,"729,55289-0092-25 ",.01)
 ;;55289-0092-25
 ;;9002226.02101,"729,55289-0092-25 ",.02)
 ;;55289-0092-25
 ;;9002226.02101,"729,55289-0092-30 ",.01)
 ;;55289-0092-30
 ;;9002226.02101,"729,55289-0092-30 ",.02)
 ;;55289-0092-30
 ;;9002226.02101,"729,55289-0092-60 ",.01)
 ;;55289-0092-60
 ;;9002226.02101,"729,55289-0092-60 ",.02)
 ;;55289-0092-60
 ;;9002226.02101,"729,55289-0092-90 ",.01)
 ;;55289-0092-90
 ;;9002226.02101,"729,55289-0092-90 ",.02)
 ;;55289-0092-90
 ;;9002226.02101,"729,55289-0092-98 ",.01)
 ;;55289-0092-98
 ;;9002226.02101,"729,55289-0092-98 ",.02)
 ;;55289-0092-98
 ;;9002226.02101,"729,55289-0117-06 ",.01)
 ;;55289-0117-06
 ;;9002226.02101,"729,55289-0117-06 ",.02)
 ;;55289-0117-06
 ;;9002226.02101,"729,55289-0117-12 ",.01)
 ;;55289-0117-12
 ;;9002226.02101,"729,55289-0117-12 ",.02)
 ;;55289-0117-12
 ;;9002226.02101,"729,55289-0117-20 ",.01)
 ;;55289-0117-20
 ;;9002226.02101,"729,55289-0117-20 ",.02)
 ;;55289-0117-20
 ;;9002226.02101,"729,55289-0979-20 ",.01)
 ;;55289-0979-20
 ;;9002226.02101,"729,55289-0979-20 ",.02)
 ;;55289-0979-20
 ;;9002226.02101,"729,55289-0979-30 ",.01)
 ;;55289-0979-30
 ;;9002226.02101,"729,55289-0979-30 ",.02)
 ;;55289-0979-30
 ;;9002226.02101,"729,55289-0979-60 ",.01)
 ;;55289-0979-60
 ;;9002226.02101,"729,55289-0979-60 ",.02)
 ;;55289-0979-60
 ;;9002226.02101,"729,55887-0170-30 ",.01)
 ;;55887-0170-30
 ;;9002226.02101,"729,55887-0170-30 ",.02)
 ;;55887-0170-30
 ;;9002226.02101,"729,55887-0170-60 ",.01)
 ;;55887-0170-60
 ;;9002226.02101,"729,55887-0170-60 ",.02)
 ;;55887-0170-60
 ;;9002226.02101,"729,55887-0170-90 ",.01)
 ;;55887-0170-90
 ;;9002226.02101,"729,55887-0170-90 ",.02)
 ;;55887-0170-90
 ;;9002226.02101,"729,55887-0185-30 ",.01)
 ;;55887-0185-30
 ;;9002226.02101,"729,55887-0185-30 ",.02)
 ;;55887-0185-30
 ;;9002226.02101,"729,55887-0185-60 ",.01)
 ;;55887-0185-60
 ;;9002226.02101,"729,55887-0185-60 ",.02)
 ;;55887-0185-60
 ;;9002226.02101,"729,55887-0185-90 ",.01)
 ;;55887-0185-90
 ;;9002226.02101,"729,55887-0185-90 ",.02)
 ;;55887-0185-90
 ;;9002226.02101,"729,55887-0522-01 ",.01)
 ;;55887-0522-01
 ;;9002226.02101,"729,55887-0522-01 ",.02)
 ;;55887-0522-01
 ;;9002226.02101,"729,55887-0522-04 ",.01)
 ;;55887-0522-04
 ;;9002226.02101,"729,55887-0522-04 ",.02)
 ;;55887-0522-04
 ;;9002226.02101,"729,55887-0522-10 ",.01)
 ;;55887-0522-10
 ;;9002226.02101,"729,55887-0522-10 ",.02)
 ;;55887-0522-10
 ;;9002226.02101,"729,55887-0522-11 ",.01)
 ;;55887-0522-11
 ;;9002226.02101,"729,55887-0522-11 ",.02)
 ;;55887-0522-11
 ;;9002226.02101,"729,55887-0522-20 ",.01)
 ;;55887-0522-20
 ;;9002226.02101,"729,55887-0522-20 ",.02)
 ;;55887-0522-20
 ;;9002226.02101,"729,55887-0522-30 ",.01)
 ;;55887-0522-30
 ;;9002226.02101,"729,55887-0522-30 ",.02)
 ;;55887-0522-30
 ;;9002226.02101,"729,55887-0522-40 ",.01)
 ;;55887-0522-40
 ;;9002226.02101,"729,55887-0522-40 ",.02)
 ;;55887-0522-40
 ;;9002226.02101,"729,55887-0522-45 ",.01)
 ;;55887-0522-45
 ;;9002226.02101,"729,55887-0522-45 ",.02)
 ;;55887-0522-45
 ;;9002226.02101,"729,55887-0522-50 ",.01)
 ;;55887-0522-50
 ;;9002226.02101,"729,55887-0522-50 ",.02)
 ;;55887-0522-50
 ;;9002226.02101,"729,55887-0522-60 ",.01)
 ;;55887-0522-60
 ;;9002226.02101,"729,55887-0522-60 ",.02)
 ;;55887-0522-60
 ;;9002226.02101,"729,55887-0522-90 ",.01)
 ;;55887-0522-90
 ;;9002226.02101,"729,55887-0522-90 ",.02)
 ;;55887-0522-90
 ;;9002226.02101,"729,55887-0638-30 ",.01)
 ;;55887-0638-30
 ;;9002226.02101,"729,55887-0638-30 ",.02)
 ;;55887-0638-30
 ;;9002226.02101,"729,55887-0684-01 ",.01)
 ;;55887-0684-01
 ;;9002226.02101,"729,55887-0684-01 ",.02)
 ;;55887-0684-01
 ;;9002226.02101,"729,55887-0684-30 ",.01)
 ;;55887-0684-30
 ;;9002226.02101,"729,55887-0684-30 ",.02)
 ;;55887-0684-30
 ;;9002226.02101,"729,55887-0684-60 ",.01)
 ;;55887-0684-60
 ;;9002226.02101,"729,55887-0684-60 ",.02)
 ;;55887-0684-60
 ;;9002226.02101,"729,55887-0686-01 ",.01)
 ;;55887-0686-01
 ;;9002226.02101,"729,55887-0686-01 ",.02)
 ;;55887-0686-01
 ;;9002226.02101,"729,55887-0686-02 ",.01)
 ;;55887-0686-02
 ;;9002226.02101,"729,55887-0686-02 ",.02)
 ;;55887-0686-02
 ;;9002226.02101,"729,55887-0686-04 ",.01)
 ;;55887-0686-04
 ;;9002226.02101,"729,55887-0686-04 ",.02)
 ;;55887-0686-04
 ;;9002226.02101,"729,55887-0686-10 ",.01)
 ;;55887-0686-10
 ;;9002226.02101,"729,55887-0686-10 ",.02)
 ;;55887-0686-10
 ;;9002226.02101,"729,55887-0686-12 ",.01)
 ;;55887-0686-12
 ;;9002226.02101,"729,55887-0686-12 ",.02)
 ;;55887-0686-12
 ;;9002226.02101,"729,55887-0686-14 ",.01)
 ;;55887-0686-14
 ;;9002226.02101,"729,55887-0686-14 ",.02)
 ;;55887-0686-14
 ;;9002226.02101,"729,55887-0686-15 ",.01)
 ;;55887-0686-15
 ;;9002226.02101,"729,55887-0686-15 ",.02)
 ;;55887-0686-15
 ;;9002226.02101,"729,55887-0686-30 ",.01)
 ;;55887-0686-30
 ;;9002226.02101,"729,55887-0686-30 ",.02)
 ;;55887-0686-30
 ;;9002226.02101,"729,55887-0686-40 ",.01)
 ;;55887-0686-40
 ;;9002226.02101,"729,55887-0686-40 ",.02)
 ;;55887-0686-40
 ;;9002226.02101,"729,55887-0686-60 ",.01)
 ;;55887-0686-60
 ;;9002226.02101,"729,55887-0686-60 ",.02)
 ;;55887-0686-60
 ;;9002226.02101,"729,55887-0686-90 ",.01)
 ;;55887-0686-90
 ;;9002226.02101,"729,55887-0686-90 ",.02)
 ;;55887-0686-90
 ;;9002226.02101,"729,55887-0848-30 ",.01)
 ;;55887-0848-30
 ;;9002226.02101,"729,55887-0848-30 ",.02)
 ;;55887-0848-30
 ;;9002226.02101,"729,55887-0856-30 ",.01)
 ;;55887-0856-30
 ;;9002226.02101,"729,55887-0856-30 ",.02)
 ;;55887-0856-30
 ;;9002226.02101,"729,58016-0064-00 ",.01)
 ;;58016-0064-00
 ;;9002226.02101,"729,58016-0064-00 ",.02)
 ;;58016-0064-00
 ;;9002226.02101,"729,58016-0064-30 ",.01)
 ;;58016-0064-30
 ;;9002226.02101,"729,58016-0064-30 ",.02)
 ;;58016-0064-30
 ;;9002226.02101,"729,58016-0064-60 ",.01)
 ;;58016-0064-60
 ;;9002226.02101,"729,58016-0064-60 ",.02)
 ;;58016-0064-60
 ;;9002226.02101,"729,58016-0064-90 ",.01)
 ;;58016-0064-90
 ;;9002226.02101,"729,58016-0064-90 ",.02)
 ;;58016-0064-90
 ;;9002226.02101,"729,58016-0273-00 ",.01)
 ;;58016-0273-00
 ;;9002226.02101,"729,58016-0273-00 ",.02)
 ;;58016-0273-00
 ;;9002226.02101,"729,58016-0273-02 ",.01)
 ;;58016-0273-02
 ;;9002226.02101,"729,58016-0273-02 ",.02)
 ;;58016-0273-02
 ;;9002226.02101,"729,58016-0273-03 ",.01)
 ;;58016-0273-03
 ;;9002226.02101,"729,58016-0273-03 ",.02)
 ;;58016-0273-03
 ;;9002226.02101,"729,58016-0273-04 ",.01)
 ;;58016-0273-04
 ;;9002226.02101,"729,58016-0273-04 ",.02)
 ;;58016-0273-04
 ;;9002226.02101,"729,58016-0273-06 ",.01)
 ;;58016-0273-06
 ;;9002226.02101,"729,58016-0273-06 ",.02)
 ;;58016-0273-06
 ;;9002226.02101,"729,58016-0273-09 ",.01)
 ;;58016-0273-09
 ;;9002226.02101,"729,58016-0273-09 ",.02)
 ;;58016-0273-09
 ;;9002226.02101,"729,58016-0273-10 ",.01)
 ;;58016-0273-10
 ;;9002226.02101,"729,58016-0273-10 ",.02)
 ;;58016-0273-10
 ;;9002226.02101,"729,58016-0273-12 ",.01)
 ;;58016-0273-12
 ;;9002226.02101,"729,58016-0273-12 ",.02)
 ;;58016-0273-12
 ;;9002226.02101,"729,58016-0273-15 ",.01)
 ;;58016-0273-15
 ;;9002226.02101,"729,58016-0273-15 ",.02)
 ;;58016-0273-15
 ;;9002226.02101,"729,58016-0273-20 ",.01)
 ;;58016-0273-20
 ;;9002226.02101,"729,58016-0273-20 ",.02)
 ;;58016-0273-20
 ;;9002226.02101,"729,58016-0273-30 ",.01)
 ;;58016-0273-30
 ;;9002226.02101,"729,58016-0273-30 ",.02)
 ;;58016-0273-30
 ;;9002226.02101,"729,58016-0273-40 ",.01)
 ;;58016-0273-40
 ;;9002226.02101,"729,58016-0273-40 ",.02)
 ;;58016-0273-40
 ;;9002226.02101,"729,58016-0273-60 ",.01)
 ;;58016-0273-60
 ;;9002226.02101,"729,58016-0273-60 ",.02)
 ;;58016-0273-60
 ;;9002226.02101,"729,58016-0273-73 ",.01)
 ;;58016-0273-73
 ;;9002226.02101,"729,58016-0273-73 ",.02)
 ;;58016-0273-73
 ;;9002226.02101,"729,58016-0273-89 ",.01)
 ;;58016-0273-89
 ;;9002226.02101,"729,58016-0273-89 ",.02)
 ;;58016-0273-89
 ;;9002226.02101,"729,58016-0273-90 ",.01)
 ;;58016-0273-90
 ;;9002226.02101,"729,58016-0273-90 ",.02)
 ;;58016-0273-90
 ;;9002226.02101,"729,58016-0274-20 ",.01)
 ;;58016-0274-20
 ;;9002226.02101,"729,58016-0274-20 ",.02)
 ;;58016-0274-20
 ;;9002226.02101,"729,58016-0274-30 ",.01)
 ;;58016-0274-30
 ;;9002226.02101,"729,58016-0274-30 ",.02)
 ;;58016-0274-30
 ;;9002226.02101,"729,58016-0275-00 ",.01)
 ;;58016-0275-00
 ;;9002226.02101,"729,58016-0275-00 ",.02)
 ;;58016-0275-00
 ;;9002226.02101,"729,58016-0275-02 ",.01)
 ;;58016-0275-02
 ;;9002226.02101,"729,58016-0275-02 ",.02)
 ;;58016-0275-02
 ;;9002226.02101,"729,58016-0275-03 ",.01)
 ;;58016-0275-03
 ;;9002226.02101,"729,58016-0275-03 ",.02)
 ;;58016-0275-03
 ;;9002226.02101,"729,58016-0275-04 ",.01)
 ;;58016-0275-04
 ;;9002226.02101,"729,58016-0275-04 ",.02)
 ;;58016-0275-04
 ;;9002226.02101,"729,58016-0275-06 ",.01)
 ;;58016-0275-06
 ;;9002226.02101,"729,58016-0275-06 ",.02)
 ;;58016-0275-06
 ;;9002226.02101,"729,58016-0275-08 ",.01)
 ;;58016-0275-08
 ;;9002226.02101,"729,58016-0275-08 ",.02)
 ;;58016-0275-08
 ;;9002226.02101,"729,58016-0275-10 ",.01)
 ;;58016-0275-10
 ;;9002226.02101,"729,58016-0275-10 ",.02)
 ;;58016-0275-10
 ;;9002226.02101,"729,58016-0275-14 ",.01)
 ;;58016-0275-14
 ;;9002226.02101,"729,58016-0275-14 ",.02)
 ;;58016-0275-14
 ;;9002226.02101,"729,58016-0275-15 ",.01)
 ;;58016-0275-15
 ;;9002226.02101,"729,58016-0275-15 ",.02)
 ;;58016-0275-15
 ;;9002226.02101,"729,58016-0275-16 ",.01)
 ;;58016-0275-16
 ;;9002226.02101,"729,58016-0275-16 ",.02)
 ;;58016-0275-16
 ;;9002226.02101,"729,58016-0275-18 ",.01)
 ;;58016-0275-18
 ;;9002226.02101,"729,58016-0275-18 ",.02)
 ;;58016-0275-18
 ;;9002226.02101,"729,58016-0275-20 ",.01)
 ;;58016-0275-20
 ;;9002226.02101,"729,58016-0275-20 ",.02)
 ;;58016-0275-20
 ;;9002226.02101,"729,58016-0275-21 ",.01)
 ;;58016-0275-21
 ;;9002226.02101,"729,58016-0275-21 ",.02)
 ;;58016-0275-21
 ;;9002226.02101,"729,58016-0275-24 ",.01)
 ;;58016-0275-24
 ;;9002226.02101,"729,58016-0275-24 ",.02)
 ;;58016-0275-24
 ;;9002226.02101,"729,58016-0275-28 ",.01)
 ;;58016-0275-28
 ;;9002226.02101,"729,58016-0275-28 ",.02)
 ;;58016-0275-28
 ;;9002226.02101,"729,58016-0275-30 ",.01)
 ;;58016-0275-30
 ;;9002226.02101,"729,58016-0275-30 ",.02)
 ;;58016-0275-30
 ;;9002226.02101,"729,58016-0275-36 ",.01)
 ;;58016-0275-36
 ;;9002226.02101,"729,58016-0275-36 ",.02)
 ;;58016-0275-36
 ;;9002226.02101,"729,58016-0275-40 ",.01)
 ;;58016-0275-40
 ;;9002226.02101,"729,58016-0275-40 ",.02)
 ;;58016-0275-40
 ;;9002226.02101,"729,58016-0275-50 ",.01)
 ;;58016-0275-50
 ;;9002226.02101,"729,58016-0275-50 ",.02)
 ;;58016-0275-50
 ;;9002226.02101,"729,58016-0275-60 ",.01)
 ;;58016-0275-60
 ;;9002226.02101,"729,58016-0275-60 ",.02)
 ;;58016-0275-60
 ;;9002226.02101,"729,58016-0275-73 ",.01)
 ;;58016-0275-73
 ;;9002226.02101,"729,58016-0275-73 ",.02)
 ;;58016-0275-73
 ;;9002226.02101,"729,58016-0275-89 ",.01)
 ;;58016-0275-89
 ;;9002226.02101,"729,58016-0275-89 ",.02)
 ;;58016-0275-89
 ;;9002226.02101,"729,58016-0275-90 ",.01)
 ;;58016-0275-90
 ;;9002226.02101,"729,58016-0275-90 ",.02)
 ;;58016-0275-90
 ;;9002226.02101,"729,58016-0811-05 ",.01)
 ;;58016-0811-05
 ;;9002226.02101,"729,58016-0811-05 ",.02)
 ;;58016-0811-05
 ;;9002226.02101,"729,58016-0811-14 ",.01)
 ;;58016-0811-14
 ;;9002226.02101,"729,58016-0811-14 ",.02)
 ;;58016-0811-14
 ;;9002226.02101,"729,58016-0811-15 ",.01)
 ;;58016-0811-15
 ;;9002226.02101,"729,58016-0811-15 ",.02)
 ;;58016-0811-15
 ;;9002226.02101,"729,58016-0811-30 ",.01)
 ;;58016-0811-30
 ;;9002226.02101,"729,58016-0811-30 ",.02)
 ;;58016-0811-30
 ;;9002226.02101,"729,58016-0811-40 ",.01)
 ;;58016-0811-40
 ;;9002226.02101,"729,58016-0811-40 ",.02)
 ;;58016-0811-40
 ;;9002226.02101,"729,58016-0811-60 ",.01)
 ;;58016-0811-60
 ;;9002226.02101,"729,58016-0811-60 ",.02)
 ;;58016-0811-60
 ;;9002226.02101,"729,58016-0812-00 ",.01)
 ;;58016-0812-00
 ;;9002226.02101,"729,58016-0812-00 ",.02)
 ;;58016-0812-00
 ;;9002226.02101,"729,58016-0812-02 ",.01)
 ;;58016-0812-02
 ;;9002226.02101,"729,58016-0812-02 ",.02)
 ;;58016-0812-02
 ;;9002226.02101,"729,58016-0812-03 ",.01)
 ;;58016-0812-03
 ;;9002226.02101,"729,58016-0812-03 ",.02)
 ;;58016-0812-03
 ;;9002226.02101,"729,58016-0812-06 ",.01)
 ;;58016-0812-06
 ;;9002226.02101,"729,58016-0812-06 ",.02)
 ;;58016-0812-06
 ;;9002226.02101,"729,58016-0812-09 ",.01)
 ;;58016-0812-09
 ;;9002226.02101,"729,58016-0812-09 ",.02)
 ;;58016-0812-09
 ;;9002226.02101,"729,58016-0812-10 ",.01)
 ;;58016-0812-10
 ;;9002226.02101,"729,58016-0812-10 ",.02)
 ;;58016-0812-10
 ;;9002226.02101,"729,58016-0812-12 ",.01)
 ;;58016-0812-12
 ;;9002226.02101,"729,58016-0812-12 ",.02)
 ;;58016-0812-12
 ;;9002226.02101,"729,58016-0812-14 ",.01)
 ;;58016-0812-14
 ;;9002226.02101,"729,58016-0812-14 ",.02)
 ;;58016-0812-14
 ;;9002226.02101,"729,58016-0812-15 ",.01)
 ;;58016-0812-15
 ;;9002226.02101,"729,58016-0812-15 ",.02)
 ;;58016-0812-15
 ;;9002226.02101,"729,58016-0812-20 ",.01)
 ;;58016-0812-20
 ;;9002226.02101,"729,58016-0812-20 ",.02)
 ;;58016-0812-20
 ;;9002226.02101,"729,58016-0812-21 ",.01)
 ;;58016-0812-21
 ;;9002226.02101,"729,58016-0812-21 ",.02)
 ;;58016-0812-21