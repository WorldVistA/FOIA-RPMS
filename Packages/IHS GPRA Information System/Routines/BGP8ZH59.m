BGP8ZH59 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,57237-0104-01 ",.02)
 ;;57237-0104-01
 ;;9002226.02101,"868,57237-0104-25 ",.01)
 ;;57237-0104-25
 ;;9002226.02101,"868,57237-0104-25 ",.02)
 ;;57237-0104-25
 ;;9002226.02101,"868,57237-0105-01 ",.01)
 ;;57237-0105-01
 ;;9002226.02101,"868,57237-0105-01 ",.02)
 ;;57237-0105-01
 ;;9002226.02101,"868,57237-0105-25 ",.01)
 ;;57237-0105-25
 ;;9002226.02101,"868,57237-0105-25 ",.02)
 ;;57237-0105-25
 ;;9002226.02101,"868,57237-0156-30 ",.01)
 ;;57237-0156-30
 ;;9002226.02101,"868,57237-0156-30 ",.02)
 ;;57237-0156-30
 ;;9002226.02101,"868,57237-0232-01 ",.01)
 ;;57237-0232-01
 ;;9002226.02101,"868,57237-0232-01 ",.02)
 ;;57237-0232-01
 ;;9002226.02101,"868,57237-0232-05 ",.01)
 ;;57237-0232-05
 ;;9002226.02101,"868,57237-0232-05 ",.02)
 ;;57237-0232-05
 ;;9002226.02101,"868,57237-0233-01 ",.01)
 ;;57237-0233-01
 ;;9002226.02101,"868,57237-0233-01 ",.02)
 ;;57237-0233-01
 ;;9002226.02101,"868,57237-0233-05 ",.01)
 ;;57237-0233-05
 ;;9002226.02101,"868,57237-0233-05 ",.02)
 ;;57237-0233-05
 ;;9002226.02101,"868,57664-0851-88 ",.01)
 ;;57664-0851-88
 ;;9002226.02101,"868,57664-0851-88 ",.02)
 ;;57664-0851-88
 ;;9002226.02101,"868,57664-0852-88 ",.01)
 ;;57664-0852-88
 ;;9002226.02101,"868,57664-0852-88 ",.02)
 ;;57664-0852-88
 ;;9002226.02101,"868,57664-0853-85 ",.01)
 ;;57664-0853-85
 ;;9002226.02101,"868,57664-0853-85 ",.02)
 ;;57664-0853-85
 ;;9002226.02101,"868,58016-0101-00 ",.01)
 ;;58016-0101-00
 ;;9002226.02101,"868,58016-0101-00 ",.02)
 ;;58016-0101-00
 ;;9002226.02101,"868,58016-0101-08 ",.01)
 ;;58016-0101-08
 ;;9002226.02101,"868,58016-0101-08 ",.02)
 ;;58016-0101-08
 ;;9002226.02101,"868,58016-0101-10 ",.01)
 ;;58016-0101-10
 ;;9002226.02101,"868,58016-0101-10 ",.02)
 ;;58016-0101-10
 ;;9002226.02101,"868,58016-0101-12 ",.01)
 ;;58016-0101-12
 ;;9002226.02101,"868,58016-0101-12 ",.02)
 ;;58016-0101-12
 ;;9002226.02101,"868,58016-0101-14 ",.01)
 ;;58016-0101-14
 ;;9002226.02101,"868,58016-0101-14 ",.02)
 ;;58016-0101-14
 ;;9002226.02101,"868,58016-0101-20 ",.01)
 ;;58016-0101-20
 ;;9002226.02101,"868,58016-0101-20 ",.02)
 ;;58016-0101-20
 ;;9002226.02101,"868,58016-0101-24 ",.01)
 ;;58016-0101-24
 ;;9002226.02101,"868,58016-0101-24 ",.02)
 ;;58016-0101-24
 ;;9002226.02101,"868,58016-0101-28 ",.01)
 ;;58016-0101-28
 ;;9002226.02101,"868,58016-0101-28 ",.02)
 ;;58016-0101-28
 ;;9002226.02101,"868,58016-0101-30 ",.01)
 ;;58016-0101-30
 ;;9002226.02101,"868,58016-0101-30 ",.02)
 ;;58016-0101-30
 ;;9002226.02101,"868,58016-0101-40 ",.01)
 ;;58016-0101-40
 ;;9002226.02101,"868,58016-0101-40 ",.02)
 ;;58016-0101-40
 ;;9002226.02101,"868,58016-0101-60 ",.01)
 ;;58016-0101-60
 ;;9002226.02101,"868,58016-0101-60 ",.02)
 ;;58016-0101-60
 ;;9002226.02101,"868,58016-0101-90 ",.01)
 ;;58016-0101-90
 ;;9002226.02101,"868,58016-0101-90 ",.02)
 ;;58016-0101-90
 ;;9002226.02101,"868,58016-4847-01 ",.01)
 ;;58016-4847-01
 ;;9002226.02101,"868,58016-4847-01 ",.02)
 ;;58016-4847-01
 ;;9002226.02101,"868,58463-0002-30 ",.01)
 ;;58463-0002-30
 ;;9002226.02101,"868,58463-0002-30 ",.02)
 ;;58463-0002-30
 ;;9002226.02101,"868,58463-0012-01 ",.01)
 ;;58463-0012-01
 ;;9002226.02101,"868,58463-0012-01 ",.02)
 ;;58463-0012-01
 ;;9002226.02101,"868,58864-0029-30 ",.01)
 ;;58864-0029-30
 ;;9002226.02101,"868,58864-0029-30 ",.02)
 ;;58864-0029-30
 ;;9002226.02101,"868,58864-0029-40 ",.01)
 ;;58864-0029-40
 ;;9002226.02101,"868,58864-0029-40 ",.02)
 ;;58864-0029-40
 ;;9002226.02101,"868,58864-0034-10 ",.01)
 ;;58864-0034-10
 ;;9002226.02101,"868,58864-0034-10 ",.02)
 ;;58864-0034-10
 ;;9002226.02101,"868,58864-0034-14 ",.01)
 ;;58864-0034-14
 ;;9002226.02101,"868,58864-0034-14 ",.02)
 ;;58864-0034-14
 ;;9002226.02101,"868,58864-0067-20 ",.01)
 ;;58864-0067-20
 ;;9002226.02101,"868,58864-0067-20 ",.02)
 ;;58864-0067-20
 ;;9002226.02101,"868,58864-0072-30 ",.01)
 ;;58864-0072-30
 ;;9002226.02101,"868,58864-0072-30 ",.02)
 ;;58864-0072-30
 ;;9002226.02101,"868,58864-0073-20 ",.01)
 ;;58864-0073-20
 ;;9002226.02101,"868,58864-0073-20 ",.02)
 ;;58864-0073-20
 ;;9002226.02101,"868,58864-0073-28 ",.01)
 ;;58864-0073-28
 ;;9002226.02101,"868,58864-0073-28 ",.02)
 ;;58864-0073-28
 ;;9002226.02101,"868,58864-0073-30 ",.01)
 ;;58864-0073-30
 ;;9002226.02101,"868,58864-0073-30 ",.02)
 ;;58864-0073-30
 ;;9002226.02101,"868,58864-0073-40 ",.01)
 ;;58864-0073-40
 ;;9002226.02101,"868,58864-0073-40 ",.02)
 ;;58864-0073-40
 ;;9002226.02101,"868,58864-0073-56 ",.01)
 ;;58864-0073-56
 ;;9002226.02101,"868,58864-0073-56 ",.02)
 ;;58864-0073-56
 ;;9002226.02101,"868,58864-0149-40 ",.01)
 ;;58864-0149-40
 ;;9002226.02101,"868,58864-0149-40 ",.02)
 ;;58864-0149-40
 ;;9002226.02101,"868,58864-0189-10 ",.01)
 ;;58864-0189-10
 ;;9002226.02101,"868,58864-0189-10 ",.02)
 ;;58864-0189-10
 ;;9002226.02101,"868,58864-0189-20 ",.01)
 ;;58864-0189-20
 ;;9002226.02101,"868,58864-0189-20 ",.02)
 ;;58864-0189-20
 ;;9002226.02101,"868,58864-0189-28 ",.01)
 ;;58864-0189-28
 ;;9002226.02101,"868,58864-0189-28 ",.02)
 ;;58864-0189-28
 ;;9002226.02101,"868,58864-0190-12 ",.01)
 ;;58864-0190-12
 ;;9002226.02101,"868,58864-0190-12 ",.02)
 ;;58864-0190-12
 ;;9002226.02101,"868,58864-0190-20 ",.01)
 ;;58864-0190-20
 ;;9002226.02101,"868,58864-0190-20 ",.02)
 ;;58864-0190-20
 ;;9002226.02101,"868,58864-0190-28 ",.01)
 ;;58864-0190-28
 ;;9002226.02101,"868,58864-0190-28 ",.02)
 ;;58864-0190-28
 ;;9002226.02101,"868,58864-0190-30 ",.01)
 ;;58864-0190-30
 ;;9002226.02101,"868,58864-0190-30 ",.02)
 ;;58864-0190-30
 ;;9002226.02101,"868,58864-0195-40 ",.01)
 ;;58864-0195-40
 ;;9002226.02101,"868,58864-0195-40 ",.02)
 ;;58864-0195-40
 ;;9002226.02101,"868,58864-0379-40 ",.01)
 ;;58864-0379-40
 ;;9002226.02101,"868,58864-0379-40 ",.02)
 ;;58864-0379-40
 ;;9002226.02101,"868,58864-0478-06 ",.01)
 ;;58864-0478-06
 ;;9002226.02101,"868,58864-0478-06 ",.02)
 ;;58864-0478-06
 ;;9002226.02101,"868,58864-0478-10 ",.01)
 ;;58864-0478-10
 ;;9002226.02101,"868,58864-0478-10 ",.02)
 ;;58864-0478-10
 ;;9002226.02101,"868,58864-0478-14 ",.01)
 ;;58864-0478-14
 ;;9002226.02101,"868,58864-0478-14 ",.02)
 ;;58864-0478-14
 ;;9002226.02101,"868,58864-0478-20 ",.01)
 ;;58864-0478-20
 ;;9002226.02101,"868,58864-0478-20 ",.02)
 ;;58864-0478-20
 ;;9002226.02101,"868,58864-0478-30 ",.01)
 ;;58864-0478-30
 ;;9002226.02101,"868,58864-0478-30 ",.02)
 ;;58864-0478-30
 ;;9002226.02101,"868,58864-0607-40 ",.01)
 ;;58864-0607-40
 ;;9002226.02101,"868,58864-0607-40 ",.02)
 ;;58864-0607-40
 ;;9002226.02101,"868,58864-0607-60 ",.01)
 ;;58864-0607-60
 ;;9002226.02101,"868,58864-0607-60 ",.02)
 ;;58864-0607-60
 ;;9002226.02101,"868,58864-0612-28 ",.01)
 ;;58864-0612-28
 ;;9002226.02101,"868,58864-0612-28 ",.02)
 ;;58864-0612-28
 ;;9002226.02101,"868,58864-0615-30 ",.01)
 ;;58864-0615-30
 ;;9002226.02101,"868,58864-0615-30 ",.02)
 ;;58864-0615-30
 ;;9002226.02101,"868,58864-0621-05 ",.01)
 ;;58864-0621-05
 ;;9002226.02101,"868,58864-0621-05 ",.02)
 ;;58864-0621-05
 ;;9002226.02101,"868,58864-0621-10 ",.01)
 ;;58864-0621-10
 ;;9002226.02101,"868,58864-0621-10 ",.02)
 ;;58864-0621-10
 ;;9002226.02101,"868,58864-0621-30 ",.01)
 ;;58864-0621-30
 ;;9002226.02101,"868,58864-0621-30 ",.02)
 ;;58864-0621-30
 ;;9002226.02101,"868,58864-0632-40 ",.01)
 ;;58864-0632-40
 ;;9002226.02101,"868,58864-0632-40 ",.02)
 ;;58864-0632-40
 ;;9002226.02101,"868,58864-0637-14 ",.01)
 ;;58864-0637-14
 ;;9002226.02101,"868,58864-0637-14 ",.02)
 ;;58864-0637-14
 ;;9002226.02101,"868,58864-0637-20 ",.01)
 ;;58864-0637-20
 ;;9002226.02101,"868,58864-0637-20 ",.02)
 ;;58864-0637-20
 ;;9002226.02101,"868,58864-0637-30 ",.01)
 ;;58864-0637-30
 ;;9002226.02101,"868,58864-0637-30 ",.02)
 ;;58864-0637-30
 ;;9002226.02101,"868,58864-0655-04 ",.01)
 ;;58864-0655-04
 ;;9002226.02101,"868,58864-0655-04 ",.02)
 ;;58864-0655-04
 ;;9002226.02101,"868,58864-0655-06 ",.01)
 ;;58864-0655-06
 ;;9002226.02101,"868,58864-0655-06 ",.02)
 ;;58864-0655-06
 ;;9002226.02101,"868,58864-0655-14 ",.01)
 ;;58864-0655-14
 ;;9002226.02101,"868,58864-0655-14 ",.02)
 ;;58864-0655-14
 ;;9002226.02101,"868,58864-0655-30 ",.01)
 ;;58864-0655-30
 ;;9002226.02101,"868,58864-0655-30 ",.02)
 ;;58864-0655-30
 ;;9002226.02101,"868,58864-0675-30 ",.01)
 ;;58864-0675-30
 ;;9002226.02101,"868,58864-0675-30 ",.02)
 ;;58864-0675-30
 ;;9002226.02101,"868,58864-0675-40 ",.01)
 ;;58864-0675-40
 ;;9002226.02101,"868,58864-0675-40 ",.02)
 ;;58864-0675-40
 ;;9002226.02101,"868,58864-0690-20 ",.01)
 ;;58864-0690-20
 ;;9002226.02101,"868,58864-0690-20 ",.02)
 ;;58864-0690-20
 ;;9002226.02101,"868,58864-0767-20 ",.01)
 ;;58864-0767-20
 ;;9002226.02101,"868,58864-0767-20 ",.02)
 ;;58864-0767-20
 ;;9002226.02101,"868,58864-0767-21 ",.01)
 ;;58864-0767-21
 ;;9002226.02101,"868,58864-0767-21 ",.02)
 ;;58864-0767-21
 ;;9002226.02101,"868,58864-0767-30 ",.01)
 ;;58864-0767-30
 ;;9002226.02101,"868,58864-0767-30 ",.02)
 ;;58864-0767-30
 ;;9002226.02101,"868,58864-0775-20 ",.01)
 ;;58864-0775-20
 ;;9002226.02101,"868,58864-0775-20 ",.02)
 ;;58864-0775-20
 ;;9002226.02101,"868,58864-0791-06 ",.01)
 ;;58864-0791-06
 ;;9002226.02101,"868,58864-0791-06 ",.02)
 ;;58864-0791-06
 ;;9002226.02101,"868,58864-0806-06 ",.01)
 ;;58864-0806-06
 ;;9002226.02101,"868,58864-0806-06 ",.02)
 ;;58864-0806-06
 ;;9002226.02101,"868,58864-0806-14 ",.01)
 ;;58864-0806-14
 ;;9002226.02101,"868,58864-0806-14 ",.02)
 ;;58864-0806-14
 ;;9002226.02101,"868,58864-0806-20 ",.01)
 ;;58864-0806-20
 ;;9002226.02101,"868,58864-0806-20 ",.02)
 ;;58864-0806-20
 ;;9002226.02101,"868,58864-0833-10 ",.01)
 ;;58864-0833-10
 ;;9002226.02101,"868,58864-0833-10 ",.02)
 ;;58864-0833-10
 ;;9002226.02101,"868,58864-0833-20 ",.01)
 ;;58864-0833-20
 ;;9002226.02101,"868,58864-0833-20 ",.02)
 ;;58864-0833-20
 ;;9002226.02101,"868,58864-0837-20 ",.01)
 ;;58864-0837-20
 ;;9002226.02101,"868,58864-0837-20 ",.02)
 ;;58864-0837-20
 ;;9002226.02101,"868,58864-0845-30 ",.01)
 ;;58864-0845-30
 ;;9002226.02101,"868,58864-0845-30 ",.02)
 ;;58864-0845-30
 ;;9002226.02101,"868,58864-0845-40 ",.01)
 ;;58864-0845-40
 ;;9002226.02101,"868,58864-0845-40 ",.02)
 ;;58864-0845-40
 ;;9002226.02101,"868,58864-0848-30 ",.01)
 ;;58864-0848-30
 ;;9002226.02101,"868,58864-0848-30 ",.02)
 ;;58864-0848-30
 ;;9002226.02101,"868,59366-7338-01 ",.01)
 ;;59366-7338-01
 ;;9002226.02101,"868,59366-7338-01 ",.02)
 ;;59366-7338-01
 ;;9002226.02101,"868,59366-7339-01 ",.01)
 ;;59366-7339-01
 ;;9002226.02101,"868,59366-7339-01 ",.02)
 ;;59366-7339-01
 ;;9002226.02101,"868,59366-7340-05 ",.01)
 ;;59366-7340-05
 ;;9002226.02101,"868,59366-7340-05 ",.02)
 ;;59366-7340-05
 ;;9002226.02101,"868,59630-0112-10 ",.01)
 ;;59630-0112-10
 ;;9002226.02101,"868,59630-0112-10 ",.02)
 ;;59630-0112-10
 ;;9002226.02101,"868,59630-0113-10 ",.01)
 ;;59630-0113-10
 ;;9002226.02101,"868,59630-0113-10 ",.02)
 ;;59630-0113-10
 ;;9002226.02101,"868,59630-0115-05 ",.01)
 ;;59630-0115-05
 ;;9002226.02101,"868,59630-0115-05 ",.02)
 ;;59630-0115-05
 ;;9002226.02101,"868,59630-0142-03 ",.01)
 ;;59630-0142-03
 ;;9002226.02101,"868,59630-0142-03 ",.02)
 ;;59630-0142-03
 ;;9002226.02101,"868,59746-0742-60 ",.01)
 ;;59746-0742-60
 ;;9002226.02101,"868,59746-0742-60 ",.02)
 ;;59746-0742-60
 ;;9002226.02101,"868,59746-0743-60 ",.01)
 ;;59746-0743-60
 ;;9002226.02101,"868,59746-0743-60 ",.02)
 ;;59746-0743-60
 ;;9002226.02101,"868,59762-0016-01 ",.01)
 ;;59762-0016-01
 ;;9002226.02101,"868,59762-0016-01 ",.02)
 ;;59762-0016-01
 ;;9002226.02101,"868,59762-0278-02 ",.01)
 ;;59762-0278-02
 ;;9002226.02101,"868,59762-0278-02 ",.02)
 ;;59762-0278-02
 ;;9002226.02101,"868,59762-0279-02 ",.01)
 ;;59762-0279-02