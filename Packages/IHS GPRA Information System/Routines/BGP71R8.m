BGP71R8 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1803,63874-0394-02 ",.02)
 ;;63874-0394-02
 ;;9002226.02101,"1803,63874-0394-03 ",.01)
 ;;63874-0394-03
 ;;9002226.02101,"1803,63874-0394-03 ",.02)
 ;;63874-0394-03
 ;;9002226.02101,"1803,63874-0394-14 ",.01)
 ;;63874-0394-14
 ;;9002226.02101,"1803,63874-0394-14 ",.02)
 ;;63874-0394-14
 ;;9002226.02101,"1803,63874-0394-15 ",.01)
 ;;63874-0394-15
 ;;9002226.02101,"1803,63874-0394-15 ",.02)
 ;;63874-0394-15
 ;;9002226.02101,"1803,63874-0394-20 ",.01)
 ;;63874-0394-20
 ;;9002226.02101,"1803,63874-0394-20 ",.02)
 ;;63874-0394-20
 ;;9002226.02101,"1803,63874-0394-21 ",.01)
 ;;63874-0394-21
 ;;9002226.02101,"1803,63874-0394-21 ",.02)
 ;;63874-0394-21
 ;;9002226.02101,"1803,63874-0394-30 ",.01)
 ;;63874-0394-30
 ;;9002226.02101,"1803,63874-0394-30 ",.02)
 ;;63874-0394-30
 ;;9002226.02101,"1803,63874-0394-40 ",.01)
 ;;63874-0394-40
 ;;9002226.02101,"1803,63874-0394-40 ",.02)
 ;;63874-0394-40
 ;;9002226.02101,"1803,63874-0394-50 ",.01)
 ;;63874-0394-50
 ;;9002226.02101,"1803,63874-0394-50 ",.02)
 ;;63874-0394-50
 ;;9002226.02101,"1803,63874-0394-60 ",.01)
 ;;63874-0394-60
 ;;9002226.02101,"1803,63874-0394-60 ",.02)
 ;;63874-0394-60
 ;;9002226.02101,"1803,63874-0395-01 ",.01)
 ;;63874-0395-01
 ;;9002226.02101,"1803,63874-0395-01 ",.02)
 ;;63874-0395-01
 ;;9002226.02101,"1803,63874-0395-07 ",.01)
 ;;63874-0395-07
 ;;9002226.02101,"1803,63874-0395-07 ",.02)
 ;;63874-0395-07
 ;;9002226.02101,"1803,63874-0395-10 ",.01)
 ;;63874-0395-10
 ;;9002226.02101,"1803,63874-0395-10 ",.02)
 ;;63874-0395-10
 ;;9002226.02101,"1803,63874-0395-12 ",.01)
 ;;63874-0395-12
 ;;9002226.02101,"1803,63874-0395-12 ",.02)
 ;;63874-0395-12
 ;;9002226.02101,"1803,63874-0395-14 ",.01)
 ;;63874-0395-14
 ;;9002226.02101,"1803,63874-0395-14 ",.02)
 ;;63874-0395-14
 ;;9002226.02101,"1803,63874-0395-15 ",.01)
 ;;63874-0395-15
 ;;9002226.02101,"1803,63874-0395-15 ",.02)
 ;;63874-0395-15
 ;;9002226.02101,"1803,63874-0395-20 ",.01)
 ;;63874-0395-20
 ;;9002226.02101,"1803,63874-0395-20 ",.02)
 ;;63874-0395-20
 ;;9002226.02101,"1803,63874-0395-21 ",.01)
 ;;63874-0395-21
 ;;9002226.02101,"1803,63874-0395-21 ",.02)
 ;;63874-0395-21
 ;;9002226.02101,"1803,63874-0395-24 ",.01)
 ;;63874-0395-24
 ;;9002226.02101,"1803,63874-0395-24 ",.02)
 ;;63874-0395-24
 ;;9002226.02101,"1803,63874-0395-25 ",.01)
 ;;63874-0395-25
 ;;9002226.02101,"1803,63874-0395-25 ",.02)
 ;;63874-0395-25
 ;;9002226.02101,"1803,63874-0395-30 ",.01)
 ;;63874-0395-30
 ;;9002226.02101,"1803,63874-0395-30 ",.02)
 ;;63874-0395-30
 ;;9002226.02101,"1803,63874-0395-40 ",.01)
 ;;63874-0395-40
 ;;9002226.02101,"1803,63874-0395-40 ",.02)
 ;;63874-0395-40
 ;;9002226.02101,"1803,63874-0395-60 ",.01)
 ;;63874-0395-60
 ;;9002226.02101,"1803,63874-0395-60 ",.02)
 ;;63874-0395-60
 ;;9002226.02101,"1803,63874-0395-90 ",.01)
 ;;63874-0395-90
 ;;9002226.02101,"1803,63874-0395-90 ",.02)
 ;;63874-0395-90
 ;;9002226.02101,"1803,63874-0472-01 ",.01)
 ;;63874-0472-01
 ;;9002226.02101,"1803,63874-0472-01 ",.02)
 ;;63874-0472-01
 ;;9002226.02101,"1803,63874-0472-03 ",.01)
 ;;63874-0472-03
 ;;9002226.02101,"1803,63874-0472-03 ",.02)
 ;;63874-0472-03
 ;;9002226.02101,"1803,63874-0472-08 ",.01)
 ;;63874-0472-08
 ;;9002226.02101,"1803,63874-0472-08 ",.02)
 ;;63874-0472-08
 ;;9002226.02101,"1803,63874-0472-10 ",.01)
 ;;63874-0472-10
 ;;9002226.02101,"1803,63874-0472-10 ",.02)
 ;;63874-0472-10
 ;;9002226.02101,"1803,63874-0472-12 ",.01)
 ;;63874-0472-12
 ;;9002226.02101,"1803,63874-0472-12 ",.02)
 ;;63874-0472-12
 ;;9002226.02101,"1803,63874-0472-15 ",.01)
 ;;63874-0472-15
 ;;9002226.02101,"1803,63874-0472-15 ",.02)
 ;;63874-0472-15
 ;;9002226.02101,"1803,63874-0472-16 ",.01)
 ;;63874-0472-16
 ;;9002226.02101,"1803,63874-0472-16 ",.02)
 ;;63874-0472-16
 ;;9002226.02101,"1803,63874-0472-20 ",.01)
 ;;63874-0472-20
 ;;9002226.02101,"1803,63874-0472-20 ",.02)
 ;;63874-0472-20
 ;;9002226.02101,"1803,63874-0472-21 ",.01)
 ;;63874-0472-21
 ;;9002226.02101,"1803,63874-0472-21 ",.02)
 ;;63874-0472-21
 ;;9002226.02101,"1803,63874-0472-30 ",.01)
 ;;63874-0472-30
 ;;9002226.02101,"1803,63874-0472-30 ",.02)
 ;;63874-0472-30
 ;;9002226.02101,"1803,63874-0472-50 ",.01)
 ;;63874-0472-50
 ;;9002226.02101,"1803,63874-0472-50 ",.02)
 ;;63874-0472-50
 ;;9002226.02101,"1803,64205-0113-10 ",.01)
 ;;64205-0113-10
 ;;9002226.02101,"1803,64205-0113-10 ",.02)
 ;;64205-0113-10
 ;;9002226.02101,"1803,64679-0757-01 ",.01)
 ;;64679-0757-01
 ;;9002226.02101,"1803,64679-0757-01 ",.02)
 ;;64679-0757-01
 ;;9002226.02101,"1803,64679-0757-02 ",.01)
 ;;64679-0757-02
 ;;9002226.02101,"1803,64679-0757-02 ",.02)
 ;;64679-0757-02
 ;;9002226.02101,"1803,64679-0758-01 ",.01)
 ;;64679-0758-01
 ;;9002226.02101,"1803,64679-0758-01 ",.02)
 ;;64679-0758-01
 ;;9002226.02101,"1803,64679-0758-02 ",.01)
 ;;64679-0758-02
 ;;9002226.02101,"1803,64679-0758-02 ",.02)
 ;;64679-0758-02
 ;;9002226.02101,"1803,64679-0758-04 ",.01)
 ;;64679-0758-04
 ;;9002226.02101,"1803,64679-0758-04 ",.02)
 ;;64679-0758-04
 ;;9002226.02101,"1803,64679-0758-06 ",.01)
 ;;64679-0758-06
 ;;9002226.02101,"1803,64679-0758-06 ",.02)
 ;;64679-0758-06
 ;;9002226.02101,"1803,65162-0506-03 ",.01)
 ;;65162-0506-03
 ;;9002226.02101,"1803,65162-0506-03 ",.02)
 ;;65162-0506-03
 ;;9002226.02101,"1803,65162-0506-06 ",.01)
 ;;65162-0506-06
 ;;9002226.02101,"1803,65162-0506-06 ",.02)
 ;;65162-0506-06
 ;;9002226.02101,"1803,65162-0506-09 ",.01)
 ;;65162-0506-09
 ;;9002226.02101,"1803,65162-0506-09 ",.02)
 ;;65162-0506-09
 ;;9002226.02101,"1803,65162-0506-50 ",.01)
 ;;65162-0506-50
 ;;9002226.02101,"1803,65162-0506-50 ",.02)
 ;;65162-0506-50
 ;;9002226.02101,"1803,66116-0222-30 ",.01)
 ;;66116-0222-30
 ;;9002226.02101,"1803,66116-0222-30 ",.02)
 ;;66116-0222-30
 ;;9002226.02101,"1803,66116-0615-30 ",.01)
 ;;66116-0615-30
 ;;9002226.02101,"1803,66116-0615-30 ",.02)
 ;;66116-0615-30
 ;;9002226.02101,"1803,66116-0661-20 ",.01)
 ;;66116-0661-20
 ;;9002226.02101,"1803,66116-0661-20 ",.02)
 ;;66116-0661-20
 ;;9002226.02101,"1803,66267-0119-30 ",.01)
 ;;66267-0119-30
 ;;9002226.02101,"1803,66267-0119-30 ",.02)
 ;;66267-0119-30
 ;;9002226.02101,"1803,66267-0120-20 ",.01)
 ;;66267-0120-20
 ;;9002226.02101,"1803,66267-0120-20 ",.02)
 ;;66267-0120-20
 ;;9002226.02101,"1803,66267-0120-30 ",.01)
 ;;66267-0120-30
 ;;9002226.02101,"1803,66267-0120-30 ",.02)
 ;;66267-0120-30
 ;;9002226.02101,"1803,66267-0121-14 ",.01)
 ;;66267-0121-14
 ;;9002226.02101,"1803,66267-0121-14 ",.02)
 ;;66267-0121-14
 ;;9002226.02101,"1803,66267-0121-15 ",.01)
 ;;66267-0121-15
 ;;9002226.02101,"1803,66267-0121-15 ",.02)
 ;;66267-0121-15
 ;;9002226.02101,"1803,66267-0121-20 ",.01)
 ;;66267-0121-20
 ;;9002226.02101,"1803,66267-0121-20 ",.02)
 ;;66267-0121-20
 ;;9002226.02101,"1803,66267-0418-20 ",.01)
 ;;66267-0418-20
 ;;9002226.02101,"1803,66267-0418-20 ",.02)
 ;;66267-0418-20
 ;;9002226.02101,"1803,66267-0418-60 ",.01)
 ;;66267-0418-60
 ;;9002226.02101,"1803,66267-0418-60 ",.02)
 ;;66267-0418-60
 ;;9002226.02101,"1803,66267-0487-30 ",.01)
 ;;66267-0487-30
 ;;9002226.02101,"1803,66267-0487-30 ",.02)
 ;;66267-0487-30
 ;;9002226.02101,"1803,66267-0487-40 ",.01)
 ;;66267-0487-40
 ;;9002226.02101,"1803,66267-0487-40 ",.02)
 ;;66267-0487-40
 ;;9002226.02101,"1803,66267-0926-00 ",.01)
 ;;66267-0926-00
 ;;9002226.02101,"1803,66267-0926-00 ",.02)
 ;;66267-0926-00
 ;;9002226.02101,"1803,66336-0687-30 ",.01)
 ;;66336-0687-30
 ;;9002226.02101,"1803,66336-0687-30 ",.02)
 ;;66336-0687-30
 ;;9002226.02101,"1803,67544-0525-20 ",.01)
 ;;67544-0525-20
 ;;9002226.02101,"1803,67544-0525-20 ",.02)
 ;;67544-0525-20
 ;;9002226.02101,"1803,68071-0760-30 ",.01)
 ;;68071-0760-30
 ;;9002226.02101,"1803,68071-0760-30 ",.02)
 ;;68071-0760-30
 ;;9002226.02101,"1803,68084-0411-11 ",.01)
 ;;68084-0411-11
 ;;9002226.02101,"1803,68084-0411-11 ",.02)
 ;;68084-0411-11
 ;;9002226.02101,"1803,68084-0411-21 ",.01)
 ;;68084-0411-21
 ;;9002226.02101,"1803,68084-0411-21 ",.02)
 ;;68084-0411-21
 ;;9002226.02101,"1803,68387-0345-30 ",.01)
 ;;68387-0345-30
 ;;9002226.02101,"1803,68387-0345-30 ",.02)
 ;;68387-0345-30
 ;;9002226.02101,"1803,68387-0440-20 ",.01)
 ;;68387-0440-20
 ;;9002226.02101,"1803,68387-0440-20 ",.02)
 ;;68387-0440-20
 ;;9002226.02101,"1803,68387-0440-30 ",.01)
 ;;68387-0440-30
 ;;9002226.02101,"1803,68387-0440-30 ",.02)
 ;;68387-0440-30
 ;;9002226.02101,"1803,68387-0531-12 ",.01)
 ;;68387-0531-12
 ;;9002226.02101,"1803,68387-0531-12 ",.02)
 ;;68387-0531-12
 ;;9002226.02101,"1803,68387-0531-30 ",.01)
 ;;68387-0531-30
 ;;9002226.02101,"1803,68387-0531-30 ",.02)
 ;;68387-0531-30
 ;;9002226.02101,"1803,68387-0531-60 ",.01)
 ;;68387-0531-60
 ;;9002226.02101,"1803,68387-0531-60 ",.02)
 ;;68387-0531-60
 ;;9002226.02101,"1803,68462-0302-01 ",.01)
 ;;68462-0302-01
 ;;9002226.02101,"1803,68462-0302-01 ",.02)
 ;;68462-0302-01
 ;;9002226.02101,"1803,68462-0302-05 ",.01)
 ;;68462-0302-05
 ;;9002226.02101,"1803,68462-0302-05 ",.02)
 ;;68462-0302-05
 ;;9002226.02101,"1803,68462-0406-01 ",.01)
 ;;68462-0406-01
 ;;9002226.02101,"1803,68462-0406-01 ",.02)
 ;;68462-0406-01
 ;;9002226.02101,"1803,68462-0406-10 ",.01)
 ;;68462-0406-10
 ;;9002226.02101,"1803,68462-0406-10 ",.02)
 ;;68462-0406-10
 ;;9002226.02101,"1803,68788-9107-02 ",.01)
 ;;68788-9107-02
 ;;9002226.02101,"1803,68788-9107-02 ",.02)
 ;;68788-9107-02
 ;;9002226.02101,"1803,68788-9108-03 ",.01)
 ;;68788-9108-03
 ;;9002226.02101,"1803,68788-9108-03 ",.02)
 ;;68788-9108-03
 ;;9002226.02101,"1803,70092-1123-50 ",.01)
 ;;70092-1123-50
 ;;9002226.02101,"1803,70092-1123-50 ",.02)
 ;;70092-1123-50
 ;;9002226.02101,"1803,75901-8010-02 ",.01)
 ;;75901-8010-02
 ;;9002226.02101,"1803,75901-8010-02 ",.02)
 ;;75901-8010-02
 ;;9002226.02101,"1803,75901-8010-31 ",.01)
 ;;75901-8010-31
 ;;9002226.02101,"1803,75901-8010-31 ",.02)
 ;;75901-8010-31
 ;;9002226.02101,"1803,75901-8010-33 ",.01)
 ;;75901-8010-33
 ;;9002226.02101,"1803,75901-8010-33 ",.02)
 ;;75901-8010-33
 ;;9002226.02101,"1803,76045-0104-10 ",.01)
 ;;76045-0104-10
 ;;9002226.02101,"1803,76045-0104-10 ",.02)
 ;;76045-0104-10
 ;;9002226.02101,"1803,76045-0105-20 ",.01)
 ;;76045-0105-20
 ;;9002226.02101,"1803,76045-0105-20 ",.02)
 ;;76045-0105-20
 ;;9002226.02101,"1803,76420-0771-01 ",.01)
 ;;76420-0771-01
 ;;9002226.02101,"1803,76420-0771-01 ",.02)
 ;;76420-0771-01
 ;;9002226.02101,"1803,76420-0772-01 ",.01)
 ;;76420-0772-01
 ;;9002226.02101,"1803,76420-0772-01 ",.02)
 ;;76420-0772-01