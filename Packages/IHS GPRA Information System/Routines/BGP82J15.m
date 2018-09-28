BGP82J15 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1220,33261-0675-14 ",.01)
 ;;33261-0675-14
 ;;9002226.02101,"1220,33261-0675-14 ",.02)
 ;;33261-0675-14
 ;;9002226.02101,"1220,33261-0675-20 ",.01)
 ;;33261-0675-20
 ;;9002226.02101,"1220,33261-0675-20 ",.02)
 ;;33261-0675-20
 ;;9002226.02101,"1220,33261-0675-21 ",.01)
 ;;33261-0675-21
 ;;9002226.02101,"1220,33261-0675-21 ",.02)
 ;;33261-0675-21
 ;;9002226.02101,"1220,33261-0675-28 ",.01)
 ;;33261-0675-28
 ;;9002226.02101,"1220,33261-0675-28 ",.02)
 ;;33261-0675-28
 ;;9002226.02101,"1220,33261-0675-30 ",.01)
 ;;33261-0675-30
 ;;9002226.02101,"1220,33261-0675-30 ",.02)
 ;;33261-0675-30
 ;;9002226.02101,"1220,33261-0675-60 ",.01)
 ;;33261-0675-60
 ;;9002226.02101,"1220,33261-0675-60 ",.02)
 ;;33261-0675-60
 ;;9002226.02101,"1220,33261-0675-90 ",.01)
 ;;33261-0675-90
 ;;9002226.02101,"1220,33261-0675-90 ",.02)
 ;;33261-0675-90
 ;;9002226.02101,"1220,33261-0823-30 ",.01)
 ;;33261-0823-30
 ;;9002226.02101,"1220,33261-0823-30 ",.02)
 ;;33261-0823-30
 ;;9002226.02101,"1220,33261-0823-60 ",.01)
 ;;33261-0823-60
 ;;9002226.02101,"1220,33261-0823-60 ",.02)
 ;;33261-0823-60
 ;;9002226.02101,"1220,33261-0823-90 ",.01)
 ;;33261-0823-90
 ;;9002226.02101,"1220,33261-0823-90 ",.02)
 ;;33261-0823-90
 ;;9002226.02101,"1220,33261-0824-00 ",.01)
 ;;33261-0824-00
 ;;9002226.02101,"1220,33261-0824-00 ",.02)
 ;;33261-0824-00
 ;;9002226.02101,"1220,33261-0824-30 ",.01)
 ;;33261-0824-30
 ;;9002226.02101,"1220,33261-0824-30 ",.02)
 ;;33261-0824-30
 ;;9002226.02101,"1220,33261-0824-60 ",.01)
 ;;33261-0824-60
 ;;9002226.02101,"1220,33261-0824-60 ",.02)
 ;;33261-0824-60
 ;;9002226.02101,"1220,33261-0824-90 ",.01)
 ;;33261-0824-90
 ;;9002226.02101,"1220,33261-0824-90 ",.02)
 ;;33261-0824-90
 ;;9002226.02101,"1220,33261-0825-00 ",.01)
 ;;33261-0825-00
 ;;9002226.02101,"1220,33261-0825-00 ",.02)
 ;;33261-0825-00
 ;;9002226.02101,"1220,33261-0825-30 ",.01)
 ;;33261-0825-30
 ;;9002226.02101,"1220,33261-0825-30 ",.02)
 ;;33261-0825-30
 ;;9002226.02101,"1220,33261-0825-60 ",.01)
 ;;33261-0825-60
 ;;9002226.02101,"1220,33261-0825-60 ",.02)
 ;;33261-0825-60
 ;;9002226.02101,"1220,33261-0825-90 ",.01)
 ;;33261-0825-90
 ;;9002226.02101,"1220,33261-0825-90 ",.02)
 ;;33261-0825-90
 ;;9002226.02101,"1220,33261-0826-00 ",.01)
 ;;33261-0826-00
 ;;9002226.02101,"1220,33261-0826-00 ",.02)
 ;;33261-0826-00
 ;;9002226.02101,"1220,33261-0826-30 ",.01)
 ;;33261-0826-30
 ;;9002226.02101,"1220,33261-0826-30 ",.02)
 ;;33261-0826-30
 ;;9002226.02101,"1220,33261-0826-60 ",.01)
 ;;33261-0826-60
 ;;9002226.02101,"1220,33261-0826-60 ",.02)
 ;;33261-0826-60
 ;;9002226.02101,"1220,33261-0826-90 ",.01)
 ;;33261-0826-90
 ;;9002226.02101,"1220,33261-0826-90 ",.02)
 ;;33261-0826-90
 ;;9002226.02101,"1220,33261-0829-30 ",.01)
 ;;33261-0829-30
 ;;9002226.02101,"1220,33261-0829-30 ",.02)
 ;;33261-0829-30
 ;;9002226.02101,"1220,33261-0829-90 ",.01)
 ;;33261-0829-90
 ;;9002226.02101,"1220,33261-0829-90 ",.02)
 ;;33261-0829-90
 ;;9002226.02101,"1220,33261-0836-00 ",.01)
 ;;33261-0836-00
 ;;9002226.02101,"1220,33261-0836-00 ",.02)
 ;;33261-0836-00
 ;;9002226.02101,"1220,33261-0836-30 ",.01)
 ;;33261-0836-30
 ;;9002226.02101,"1220,33261-0836-30 ",.02)
 ;;33261-0836-30
 ;;9002226.02101,"1220,33261-0836-60 ",.01)
 ;;33261-0836-60
 ;;9002226.02101,"1220,33261-0836-60 ",.02)
 ;;33261-0836-60
 ;;9002226.02101,"1220,33261-0836-90 ",.01)
 ;;33261-0836-90
 ;;9002226.02101,"1220,33261-0836-90 ",.02)
 ;;33261-0836-90
 ;;9002226.02101,"1220,33261-0840-00 ",.01)
 ;;33261-0840-00
 ;;9002226.02101,"1220,33261-0840-00 ",.02)
 ;;33261-0840-00
 ;;9002226.02101,"1220,33261-0840-30 ",.01)
 ;;33261-0840-30
 ;;9002226.02101,"1220,33261-0840-30 ",.02)
 ;;33261-0840-30
 ;;9002226.02101,"1220,33261-0840-60 ",.01)
 ;;33261-0840-60
 ;;9002226.02101,"1220,33261-0840-60 ",.02)
 ;;33261-0840-60
 ;;9002226.02101,"1220,33261-0840-90 ",.01)
 ;;33261-0840-90
 ;;9002226.02101,"1220,33261-0840-90 ",.02)
 ;;33261-0840-90
 ;;9002226.02101,"1220,33261-0844-00 ",.01)
 ;;33261-0844-00
 ;;9002226.02101,"1220,33261-0844-00 ",.02)
 ;;33261-0844-00
 ;;9002226.02101,"1220,33261-0844-30 ",.01)
 ;;33261-0844-30
 ;;9002226.02101,"1220,33261-0844-30 ",.02)
 ;;33261-0844-30
 ;;9002226.02101,"1220,33261-0844-60 ",.01)
 ;;33261-0844-60
 ;;9002226.02101,"1220,33261-0844-60 ",.02)
 ;;33261-0844-60
 ;;9002226.02101,"1220,33261-0844-90 ",.01)
 ;;33261-0844-90
 ;;9002226.02101,"1220,33261-0844-90 ",.02)
 ;;33261-0844-90
 ;;9002226.02101,"1220,33261-0847-30 ",.01)
 ;;33261-0847-30
 ;;9002226.02101,"1220,33261-0847-30 ",.02)
 ;;33261-0847-30
 ;;9002226.02101,"1220,33261-0847-60 ",.01)
 ;;33261-0847-60
 ;;9002226.02101,"1220,33261-0847-60 ",.02)
 ;;33261-0847-60
 ;;9002226.02101,"1220,33261-0847-90 ",.01)
 ;;33261-0847-90
 ;;9002226.02101,"1220,33261-0847-90 ",.02)
 ;;33261-0847-90
 ;;9002226.02101,"1220,33261-0951-30 ",.01)
 ;;33261-0951-30
 ;;9002226.02101,"1220,33261-0951-30 ",.02)
 ;;33261-0951-30
 ;;9002226.02101,"1220,33261-0951-60 ",.01)
 ;;33261-0951-60
 ;;9002226.02101,"1220,33261-0951-60 ",.02)
 ;;33261-0951-60
 ;;9002226.02101,"1220,33261-0951-90 ",.01)
 ;;33261-0951-90
 ;;9002226.02101,"1220,33261-0951-90 ",.02)
 ;;33261-0951-90
 ;;9002226.02101,"1220,33261-0982-00 ",.01)
 ;;33261-0982-00
 ;;9002226.02101,"1220,33261-0982-00 ",.02)
 ;;33261-0982-00
 ;;9002226.02101,"1220,33261-0982-30 ",.01)
 ;;33261-0982-30
 ;;9002226.02101,"1220,33261-0982-30 ",.02)
 ;;33261-0982-30
 ;;9002226.02101,"1220,33261-0982-60 ",.01)
 ;;33261-0982-60
 ;;9002226.02101,"1220,33261-0982-60 ",.02)
 ;;33261-0982-60
 ;;9002226.02101,"1220,33261-0982-90 ",.01)
 ;;33261-0982-90
 ;;9002226.02101,"1220,33261-0982-90 ",.02)
 ;;33261-0982-90
 ;;9002226.02101,"1220,33342-0015-10 ",.01)
 ;;33342-0015-10
 ;;9002226.02101,"1220,33342-0015-10 ",.02)
 ;;33342-0015-10
 ;;9002226.02101,"1220,33342-0016-10 ",.01)
 ;;33342-0016-10
 ;;9002226.02101,"1220,33342-0016-10 ",.02)
 ;;33342-0016-10
 ;;9002226.02101,"1220,33342-0190-07 ",.01)
 ;;33342-0190-07
 ;;9002226.02101,"1220,33342-0190-07 ",.02)
 ;;33342-0190-07
 ;;9002226.02101,"1220,33342-0190-10 ",.01)
 ;;33342-0190-10
 ;;9002226.02101,"1220,33342-0190-10 ",.02)
 ;;33342-0190-10
 ;;9002226.02101,"1220,33342-0191-07 ",.01)
 ;;33342-0191-07
 ;;9002226.02101,"1220,33342-0191-07 ",.02)
 ;;33342-0191-07
 ;;9002226.02101,"1220,33342-0191-10 ",.01)
 ;;33342-0191-10
 ;;9002226.02101,"1220,33342-0191-10 ",.02)
 ;;33342-0191-10
 ;;9002226.02101,"1220,33342-0192-07 ",.01)
 ;;33342-0192-07
 ;;9002226.02101,"1220,33342-0192-07 ",.02)
 ;;33342-0192-07
 ;;9002226.02101,"1220,33342-0192-10 ",.01)
 ;;33342-0192-10
 ;;9002226.02101,"1220,33342-0192-10 ",.02)
 ;;33342-0192-10
 ;;9002226.02101,"1220,33342-0193-07 ",.01)
 ;;33342-0193-07
 ;;9002226.02101,"1220,33342-0193-07 ",.02)
 ;;33342-0193-07
 ;;9002226.02101,"1220,33342-0193-10 ",.01)
 ;;33342-0193-10
 ;;9002226.02101,"1220,33342-0193-10 ",.02)
 ;;33342-0193-10
 ;;9002226.02101,"1220,33358-0109-30 ",.01)
 ;;33358-0109-30
 ;;9002226.02101,"1220,33358-0109-30 ",.02)
 ;;33358-0109-30
 ;;9002226.02101,"1220,33358-0222-00 ",.01)
 ;;33358-0222-00
 ;;9002226.02101,"1220,33358-0222-00 ",.02)
 ;;33358-0222-00
 ;;9002226.02101,"1220,33358-0262-00 ",.01)
 ;;33358-0262-00
 ;;9002226.02101,"1220,33358-0262-00 ",.02)
 ;;33358-0262-00
 ;;9002226.02101,"1220,33358-0262-30 ",.01)
 ;;33358-0262-30
 ;;9002226.02101,"1220,33358-0262-30 ",.02)
 ;;33358-0262-30
 ;;9002226.02101,"1220,35356-0026-00 ",.01)
 ;;35356-0026-00
 ;;9002226.02101,"1220,35356-0026-00 ",.02)
 ;;35356-0026-00
 ;;9002226.02101,"1220,35356-0027-00 ",.01)
 ;;35356-0027-00
 ;;9002226.02101,"1220,35356-0027-00 ",.02)
 ;;35356-0027-00
 ;;9002226.02101,"1220,35356-0059-10 ",.01)
 ;;35356-0059-10
 ;;9002226.02101,"1220,35356-0059-10 ",.02)
 ;;35356-0059-10
 ;;9002226.02101,"1220,35356-0059-30 ",.01)
 ;;35356-0059-30
 ;;9002226.02101,"1220,35356-0059-30 ",.02)
 ;;35356-0059-30
 ;;9002226.02101,"1220,35356-0059-60 ",.01)
 ;;35356-0059-60
 ;;9002226.02101,"1220,35356-0059-60 ",.02)
 ;;35356-0059-60
 ;;9002226.02101,"1220,35356-0059-90 ",.01)
 ;;35356-0059-90
 ;;9002226.02101,"1220,35356-0059-90 ",.02)
 ;;35356-0059-90
 ;;9002226.02101,"1220,35356-0268-30 ",.01)
 ;;35356-0268-30
 ;;9002226.02101,"1220,35356-0268-30 ",.02)
 ;;35356-0268-30
 ;;9002226.02101,"1220,35356-0510-30 ",.01)
 ;;35356-0510-30
 ;;9002226.02101,"1220,35356-0510-30 ",.02)
 ;;35356-0510-30
 ;;9002226.02101,"1220,35356-0739-10 ",.01)
 ;;35356-0739-10
 ;;9002226.02101,"1220,35356-0739-10 ",.02)
 ;;35356-0739-10
 ;;9002226.02101,"1220,35356-0740-10 ",.01)
 ;;35356-0740-10
 ;;9002226.02101,"1220,35356-0740-10 ",.02)
 ;;35356-0740-10
 ;;9002226.02101,"1220,35356-0774-30 ",.01)
 ;;35356-0774-30
 ;;9002226.02101,"1220,35356-0774-30 ",.02)
 ;;35356-0774-30
 ;;9002226.02101,"1220,35356-0774-60 ",.01)
 ;;35356-0774-60
 ;;9002226.02101,"1220,35356-0774-60 ",.02)
 ;;35356-0774-60
 ;;9002226.02101,"1220,35356-0858-30 ",.01)
 ;;35356-0858-30
 ;;9002226.02101,"1220,35356-0858-30 ",.02)
 ;;35356-0858-30
 ;;9002226.02101,"1220,35356-0858-60 ",.01)
 ;;35356-0858-60
 ;;9002226.02101,"1220,35356-0858-60 ",.02)
 ;;35356-0858-60
 ;;9002226.02101,"1220,35356-0866-60 ",.01)
 ;;35356-0866-60
 ;;9002226.02101,"1220,35356-0866-60 ",.02)
 ;;35356-0866-60
 ;;9002226.02101,"1220,35356-0907-30 ",.01)
 ;;35356-0907-30
 ;;9002226.02101,"1220,35356-0907-30 ",.02)
 ;;35356-0907-30
 ;;9002226.02101,"1220,35356-0907-90 ",.01)
 ;;35356-0907-90
 ;;9002226.02101,"1220,35356-0907-90 ",.02)
 ;;35356-0907-90
 ;;9002226.02101,"1220,35356-0915-30 ",.01)
 ;;35356-0915-30
 ;;9002226.02101,"1220,35356-0915-30 ",.02)
 ;;35356-0915-30
 ;;9002226.02101,"1220,35356-0917-30 ",.01)
 ;;35356-0917-30
 ;;9002226.02101,"1220,35356-0917-30 ",.02)
 ;;35356-0917-30
 ;;9002226.02101,"1220,35356-0947-30 ",.01)
 ;;35356-0947-30
 ;;9002226.02101,"1220,35356-0947-30 ",.02)
 ;;35356-0947-30
 ;;9002226.02101,"1220,35356-0952-30 ",.01)
 ;;35356-0952-30
 ;;9002226.02101,"1220,35356-0952-30 ",.02)
 ;;35356-0952-30
 ;;9002226.02101,"1220,35356-0960-30 ",.01)
 ;;35356-0960-30
 ;;9002226.02101,"1220,35356-0960-30 ",.02)
 ;;35356-0960-30
 ;;9002226.02101,"1220,35356-0960-60 ",.01)
 ;;35356-0960-60
 ;;9002226.02101,"1220,35356-0960-60 ",.02)
 ;;35356-0960-60
 ;;9002226.02101,"1220,35356-0960-90 ",.01)
 ;;35356-0960-90
 ;;9002226.02101,"1220,35356-0960-90 ",.02)
 ;;35356-0960-90
 ;;9002226.02101,"1220,35356-0965-30 ",.01)
 ;;35356-0965-30
 ;;9002226.02101,"1220,35356-0965-30 ",.02)
 ;;35356-0965-30
 ;;9002226.02101,"1220,35356-0965-60 ",.01)
 ;;35356-0965-60
 ;;9002226.02101,"1220,35356-0965-60 ",.02)
 ;;35356-0965-60
 ;;9002226.02101,"1220,35356-0965-90 ",.01)
 ;;35356-0965-90
 ;;9002226.02101,"1220,35356-0965-90 ",.02)
 ;;35356-0965-90
 ;;9002226.02101,"1220,35356-0971-30 ",.01)
 ;;35356-0971-30
 ;;9002226.02101,"1220,35356-0971-30 ",.02)
 ;;35356-0971-30
 ;;9002226.02101,"1220,35356-0971-60 ",.01)
 ;;35356-0971-60
 ;;9002226.02101,"1220,35356-0971-60 ",.02)
 ;;35356-0971-60
 ;;9002226.02101,"1220,35356-0971-90 ",.01)
 ;;35356-0971-90
 ;;9002226.02101,"1220,35356-0971-90 ",.02)
 ;;35356-0971-90
 ;;9002226.02101,"1220,42254-0073-30 ",.01)
 ;;42254-0073-30
 ;;9002226.02101,"1220,42254-0073-30 ",.02)
 ;;42254-0073-30
 ;;9002226.02101,"1220,42254-0074-30 ",.01)
 ;;42254-0074-30
 ;;9002226.02101,"1220,42254-0074-30 ",.02)
 ;;42254-0074-30
 ;;9002226.02101,"1220,42254-0095-90 ",.01)
 ;;42254-0095-90
 ;;9002226.02101,"1220,42254-0095-90 ",.02)
 ;;42254-0095-90
 ;;9002226.02101,"1220,42291-0126-30 ",.01)
 ;;42291-0126-30
 ;;9002226.02101,"1220,42291-0126-30 ",.02)
 ;;42291-0126-30
 ;;9002226.02101,"1220,42291-0127-30 ",.01)
 ;;42291-0127-30