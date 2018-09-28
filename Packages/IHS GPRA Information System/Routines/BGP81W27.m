BGP81W27 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1795,63874-0565-01 ",.02)
 ;;63874-0565-01
 ;;9002226.02101,"1795,63874-0565-10 ",.01)
 ;;63874-0565-10
 ;;9002226.02101,"1795,63874-0565-10 ",.02)
 ;;63874-0565-10
 ;;9002226.02101,"1795,63874-0565-12 ",.01)
 ;;63874-0565-12
 ;;9002226.02101,"1795,63874-0565-12 ",.02)
 ;;63874-0565-12
 ;;9002226.02101,"1795,63874-0565-15 ",.01)
 ;;63874-0565-15
 ;;9002226.02101,"1795,63874-0565-15 ",.02)
 ;;63874-0565-15
 ;;9002226.02101,"1795,63874-0565-20 ",.01)
 ;;63874-0565-20
 ;;9002226.02101,"1795,63874-0565-20 ",.02)
 ;;63874-0565-20
 ;;9002226.02101,"1795,63874-0565-30 ",.01)
 ;;63874-0565-30
 ;;9002226.02101,"1795,63874-0565-30 ",.02)
 ;;63874-0565-30
 ;;9002226.02101,"1795,63874-0565-60 ",.01)
 ;;63874-0565-60
 ;;9002226.02101,"1795,63874-0565-60 ",.02)
 ;;63874-0565-60
 ;;9002226.02101,"1795,63874-0600-10 ",.01)
 ;;63874-0600-10
 ;;9002226.02101,"1795,63874-0600-10 ",.02)
 ;;63874-0600-10
 ;;9002226.02101,"1795,63874-0600-14 ",.01)
 ;;63874-0600-14
 ;;9002226.02101,"1795,63874-0600-14 ",.02)
 ;;63874-0600-14
 ;;9002226.02101,"1795,63874-0600-15 ",.01)
 ;;63874-0600-15
 ;;9002226.02101,"1795,63874-0600-15 ",.02)
 ;;63874-0600-15
 ;;9002226.02101,"1795,63874-0600-20 ",.01)
 ;;63874-0600-20
 ;;9002226.02101,"1795,63874-0600-20 ",.02)
 ;;63874-0600-20
 ;;9002226.02101,"1795,63874-0600-30 ",.01)
 ;;63874-0600-30
 ;;9002226.02101,"1795,63874-0600-30 ",.02)
 ;;63874-0600-30
 ;;9002226.02101,"1795,63874-0600-60 ",.01)
 ;;63874-0600-60
 ;;9002226.02101,"1795,63874-0600-60 ",.02)
 ;;63874-0600-60
 ;;9002226.02101,"1795,63874-0711-12 ",.01)
 ;;63874-0711-12
 ;;9002226.02101,"1795,63874-0711-12 ",.02)
 ;;63874-0711-12
 ;;9002226.02101,"1795,63874-0711-18 ",.01)
 ;;63874-0711-18
 ;;9002226.02101,"1795,63874-0711-18 ",.02)
 ;;63874-0711-18
 ;;9002226.02101,"1795,63874-0757-01 ",.01)
 ;;63874-0757-01
 ;;9002226.02101,"1795,63874-0757-01 ",.02)
 ;;63874-0757-01
 ;;9002226.02101,"1795,63874-0757-04 ",.01)
 ;;63874-0757-04
 ;;9002226.02101,"1795,63874-0757-04 ",.02)
 ;;63874-0757-04
 ;;9002226.02101,"1795,63874-0757-10 ",.01)
 ;;63874-0757-10
 ;;9002226.02101,"1795,63874-0757-10 ",.02)
 ;;63874-0757-10
 ;;9002226.02101,"1795,63874-0757-15 ",.01)
 ;;63874-0757-15
 ;;9002226.02101,"1795,63874-0757-15 ",.02)
 ;;63874-0757-15
 ;;9002226.02101,"1795,63874-0757-20 ",.01)
 ;;63874-0757-20
 ;;9002226.02101,"1795,63874-0757-20 ",.02)
 ;;63874-0757-20
 ;;9002226.02101,"1795,63874-0757-21 ",.01)
 ;;63874-0757-21
 ;;9002226.02101,"1795,63874-0757-21 ",.02)
 ;;63874-0757-21
 ;;9002226.02101,"1795,63874-0757-24 ",.01)
 ;;63874-0757-24
 ;;9002226.02101,"1795,63874-0757-24 ",.02)
 ;;63874-0757-24
 ;;9002226.02101,"1795,63874-0757-28 ",.01)
 ;;63874-0757-28
 ;;9002226.02101,"1795,63874-0757-28 ",.02)
 ;;63874-0757-28
 ;;9002226.02101,"1795,63874-0757-30 ",.01)
 ;;63874-0757-30
 ;;9002226.02101,"1795,63874-0757-30 ",.02)
 ;;63874-0757-30
 ;;9002226.02101,"1795,63874-0757-60 ",.01)
 ;;63874-0757-60
 ;;9002226.02101,"1795,63874-0757-60 ",.02)
 ;;63874-0757-60
 ;;9002226.02101,"1795,63874-0757-90 ",.01)
 ;;63874-0757-90
 ;;9002226.02101,"1795,63874-0757-90 ",.02)
 ;;63874-0757-90
 ;;9002226.02101,"1795,64125-0136-01 ",.01)
 ;;64125-0136-01
 ;;9002226.02101,"1795,64125-0136-01 ",.02)
 ;;64125-0136-01
 ;;9002226.02101,"1795,64125-0136-10 ",.01)
 ;;64125-0136-10
 ;;9002226.02101,"1795,64125-0136-10 ",.02)
 ;;64125-0136-10
 ;;9002226.02101,"1795,64125-0137-01 ",.01)
 ;;64125-0137-01
 ;;9002226.02101,"1795,64125-0137-01 ",.02)
 ;;64125-0137-01
 ;;9002226.02101,"1795,64125-0137-10 ",.01)
 ;;64125-0137-10
 ;;9002226.02101,"1795,64125-0137-10 ",.02)
 ;;64125-0137-10
 ;;9002226.02101,"1795,64125-0138-01 ",.01)
 ;;64125-0138-01
 ;;9002226.02101,"1795,64125-0138-01 ",.02)
 ;;64125-0138-01
 ;;9002226.02101,"1795,64125-0138-10 ",.01)
 ;;64125-0138-10
 ;;9002226.02101,"1795,64125-0138-10 ",.02)
 ;;64125-0138-10
 ;;9002226.02101,"1795,64205-0521-20 ",.01)
 ;;64205-0521-20
 ;;9002226.02101,"1795,64205-0521-20 ",.02)
 ;;64205-0521-20
 ;;9002226.02101,"1795,64205-0745-30 ",.01)
 ;;64205-0745-30
 ;;9002226.02101,"1795,64205-0745-30 ",.02)
 ;;64205-0745-30
 ;;9002226.02101,"1795,64376-0605-01 ",.01)
 ;;64376-0605-01
 ;;9002226.02101,"1795,64376-0605-01 ",.02)
 ;;64376-0605-01
 ;;9002226.02101,"1795,64376-0612-16 ",.01)
 ;;64376-0612-16
 ;;9002226.02101,"1795,64376-0612-16 ",.02)
 ;;64376-0612-16
 ;;9002226.02101,"1795,64376-0612-40 ",.01)
 ;;64376-0612-40
 ;;9002226.02101,"1795,64376-0612-40 ",.02)
 ;;64376-0612-40
 ;;9002226.02101,"1795,64376-0657-16 ",.01)
 ;;64376-0657-16
 ;;9002226.02101,"1795,64376-0657-16 ",.02)
 ;;64376-0657-16
 ;;9002226.02101,"1795,64376-0657-40 ",.01)
 ;;64376-0657-40
 ;;9002226.02101,"1795,64376-0657-40 ",.02)
 ;;64376-0657-40
 ;;9002226.02101,"1795,64543-0111-01 ",.01)
 ;;64543-0111-01
 ;;9002226.02101,"1795,64543-0111-01 ",.02)
 ;;64543-0111-01
 ;;9002226.02101,"1795,64543-0112-01 ",.01)
 ;;64543-0112-01
 ;;9002226.02101,"1795,64543-0112-01 ",.02)
 ;;64543-0112-01
 ;;9002226.02101,"1795,64543-0114-01 ",.01)
 ;;64543-0114-01
 ;;9002226.02101,"1795,64543-0114-01 ",.02)
 ;;64543-0114-01
 ;;9002226.02101,"1795,64543-0118-90 ",.01)
 ;;64543-0118-90
 ;;9002226.02101,"1795,64543-0118-90 ",.02)
 ;;64543-0118-90
 ;;9002226.02101,"1795,64720-0143-10 ",.01)
 ;;64720-0143-10
 ;;9002226.02101,"1795,64720-0143-10 ",.02)
 ;;64720-0143-10
 ;;9002226.02101,"1795,64720-0143-11 ",.01)
 ;;64720-0143-11
 ;;9002226.02101,"1795,64720-0143-11 ",.02)
 ;;64720-0143-11
 ;;9002226.02101,"1795,64720-0144-10 ",.01)
 ;;64720-0144-10
 ;;9002226.02101,"1795,64720-0144-10 ",.02)
 ;;64720-0144-10
 ;;9002226.02101,"1795,64720-0144-11 ",.01)
 ;;64720-0144-11
 ;;9002226.02101,"1795,64720-0144-11 ",.02)
 ;;64720-0144-11
 ;;9002226.02101,"1795,64720-0145-10 ",.01)
 ;;64720-0145-10
 ;;9002226.02101,"1795,64720-0145-10 ",.02)
 ;;64720-0145-10
 ;;9002226.02101,"1795,64720-0145-11 ",.01)
 ;;64720-0145-11
 ;;9002226.02101,"1795,64720-0145-11 ",.02)
 ;;64720-0145-11
 ;;9002226.02101,"1795,64720-0150-10 ",.01)
 ;;64720-0150-10
 ;;9002226.02101,"1795,64720-0150-10 ",.02)
 ;;64720-0150-10
 ;;9002226.02101,"1795,64720-0150-11 ",.01)
 ;;64720-0150-11
 ;;9002226.02101,"1795,64720-0150-11 ",.02)
 ;;64720-0150-11
 ;;9002226.02101,"1795,64980-0169-01 ",.01)
 ;;64980-0169-01
 ;;9002226.02101,"1795,64980-0169-01 ",.02)
 ;;64980-0169-01
 ;;9002226.02101,"1795,64980-0169-05 ",.01)
 ;;64980-0169-05
 ;;9002226.02101,"1795,64980-0169-05 ",.02)
 ;;64980-0169-05
 ;;9002226.02101,"1795,64980-0170-01 ",.01)
 ;;64980-0170-01
 ;;9002226.02101,"1795,64980-0170-01 ",.02)
 ;;64980-0170-01
 ;;9002226.02101,"1795,64980-0170-05 ",.01)
 ;;64980-0170-05
 ;;9002226.02101,"1795,64980-0170-05 ",.02)
 ;;64980-0170-05
 ;;9002226.02101,"1795,64980-0504-48 ",.01)
 ;;64980-0504-48
 ;;9002226.02101,"1795,64980-0504-48 ",.02)
 ;;64980-0504-48
 ;;9002226.02101,"1795,65162-0441-10 ",.01)
 ;;65162-0441-10
 ;;9002226.02101,"1795,65162-0441-10 ",.02)
 ;;65162-0441-10
 ;;9002226.02101,"1795,65162-0441-11 ",.01)
 ;;65162-0441-11
 ;;9002226.02101,"1795,65162-0441-11 ",.02)
 ;;65162-0441-11
 ;;9002226.02101,"1795,65162-0441-50 ",.01)
 ;;65162-0441-50
 ;;9002226.02101,"1795,65162-0441-50 ",.02)
 ;;65162-0441-50
 ;;9002226.02101,"1795,65162-0442-10 ",.01)
 ;;65162-0442-10
 ;;9002226.02101,"1795,65162-0442-10 ",.02)
 ;;65162-0442-10
 ;;9002226.02101,"1795,65162-0442-11 ",.01)
 ;;65162-0442-11
 ;;9002226.02101,"1795,65162-0442-11 ",.02)
 ;;65162-0442-11
 ;;9002226.02101,"1795,65162-0442-50 ",.01)
 ;;65162-0442-50
 ;;9002226.02101,"1795,65162-0442-50 ",.02)
 ;;65162-0442-50
 ;;9002226.02101,"1795,65162-0521-10 ",.01)
 ;;65162-0521-10
 ;;9002226.02101,"1795,65162-0521-10 ",.02)
 ;;65162-0521-10
 ;;9002226.02101,"1795,65162-0521-11 ",.01)
 ;;65162-0521-11
 ;;9002226.02101,"1795,65162-0521-11 ",.02)
 ;;65162-0521-11
 ;;9002226.02101,"1795,65162-0522-10 ",.01)
 ;;65162-0522-10
 ;;9002226.02101,"1795,65162-0522-10 ",.02)
 ;;65162-0522-10
 ;;9002226.02101,"1795,65162-0694-86 ",.01)
 ;;65162-0694-86
 ;;9002226.02101,"1795,65162-0694-86 ",.02)
 ;;65162-0694-86
 ;;9002226.02101,"1795,65162-0694-90 ",.01)
 ;;65162-0694-90
 ;;9002226.02101,"1795,65162-0694-90 ",.02)
 ;;65162-0694-90
 ;;9002226.02101,"1795,65162-0745-10 ",.01)
 ;;65162-0745-10
 ;;9002226.02101,"1795,65162-0745-10 ",.02)
 ;;65162-0745-10
 ;;9002226.02101,"1795,66116-0230-30 ",.01)
 ;;66116-0230-30
 ;;9002226.02101,"1795,66116-0230-30 ",.02)
 ;;66116-0230-30
 ;;9002226.02101,"1795,66116-0284-12 ",.01)
 ;;66116-0284-12
 ;;9002226.02101,"1795,66116-0284-12 ",.02)
 ;;66116-0284-12
 ;;9002226.02101,"1795,66116-0294-21 ",.01)
 ;;66116-0294-21
 ;;9002226.02101,"1795,66116-0294-21 ",.02)
 ;;66116-0294-21
 ;;9002226.02101,"1795,66116-0428-30 ",.01)
 ;;66116-0428-30
 ;;9002226.02101,"1795,66116-0428-30 ",.02)
 ;;66116-0428-30
 ;;9002226.02101,"1795,66116-0488-30 ",.01)
 ;;66116-0488-30
 ;;9002226.02101,"1795,66116-0488-30 ",.02)
 ;;66116-0488-30
 ;;9002226.02101,"1795,66116-0618-18 ",.01)
 ;;66116-0618-18
 ;;9002226.02101,"1795,66116-0618-18 ",.02)
 ;;66116-0618-18
 ;;9002226.02101,"1795,66116-0651-30 ",.01)
 ;;66116-0651-30
 ;;9002226.02101,"1795,66116-0651-30 ",.02)
 ;;66116-0651-30
 ;;9002226.02101,"1795,66213-0421-10 ",.01)
 ;;66213-0421-10
 ;;9002226.02101,"1795,66213-0421-10 ",.02)
 ;;66213-0421-10
 ;;9002226.02101,"1795,66213-0421-50 ",.01)
 ;;66213-0421-50
 ;;9002226.02101,"1795,66213-0421-50 ",.02)
 ;;66213-0421-50
 ;;9002226.02101,"1795,66213-0422-04 ",.01)
 ;;66213-0422-04
 ;;9002226.02101,"1795,66213-0422-04 ",.02)
 ;;66213-0422-04
 ;;9002226.02101,"1795,66213-0422-16 ",.01)
 ;;66213-0422-16
 ;;9002226.02101,"1795,66213-0422-16 ",.02)
 ;;66213-0422-16
 ;;9002226.02101,"1795,66213-0423-04 ",.01)
 ;;66213-0423-04
 ;;9002226.02101,"1795,66213-0423-04 ",.02)
 ;;66213-0423-04
 ;;9002226.02101,"1795,66213-0423-16 ",.01)
 ;;66213-0423-16
 ;;9002226.02101,"1795,66213-0423-16 ",.02)
 ;;66213-0423-16
 ;;9002226.02101,"1795,66213-0425-10 ",.01)
 ;;66213-0425-10
 ;;9002226.02101,"1795,66213-0425-10 ",.02)
 ;;66213-0425-10
 ;;9002226.02101,"1795,66213-0425-11 ",.01)
 ;;66213-0425-11
 ;;9002226.02101,"1795,66213-0425-11 ",.02)
 ;;66213-0425-11
 ;;9002226.02101,"1795,66267-0032-15 ",.01)
 ;;66267-0032-15
 ;;9002226.02101,"1795,66267-0032-15 ",.02)
 ;;66267-0032-15
 ;;9002226.02101,"1795,66267-0032-20 ",.01)
 ;;66267-0032-20
 ;;9002226.02101,"1795,66267-0032-20 ",.02)
 ;;66267-0032-20
 ;;9002226.02101,"1795,66267-0032-30 ",.01)
 ;;66267-0032-30
 ;;9002226.02101,"1795,66267-0032-30 ",.02)
 ;;66267-0032-30
 ;;9002226.02101,"1795,66267-0074-30 ",.01)
 ;;66267-0074-30
 ;;9002226.02101,"1795,66267-0074-30 ",.02)
 ;;66267-0074-30
 ;;9002226.02101,"1795,66267-0112-15 ",.01)
 ;;66267-0112-15
 ;;9002226.02101,"1795,66267-0112-15 ",.02)
 ;;66267-0112-15
 ;;9002226.02101,"1795,66267-0112-30 ",.01)
 ;;66267-0112-30
 ;;9002226.02101,"1795,66267-0112-30 ",.02)
 ;;66267-0112-30
 ;;9002226.02101,"1795,66267-0112-40 ",.01)
 ;;66267-0112-40
 ;;9002226.02101,"1795,66267-0112-40 ",.02)
 ;;66267-0112-40
 ;;9002226.02101,"1795,66267-0112-60 ",.01)
 ;;66267-0112-60
 ;;9002226.02101,"1795,66267-0112-60 ",.02)
 ;;66267-0112-60
 ;;9002226.02101,"1795,66267-0113-15 ",.01)
 ;;66267-0113-15
 ;;9002226.02101,"1795,66267-0113-15 ",.02)
 ;;66267-0113-15
 ;;9002226.02101,"1795,66267-0113-20 ",.01)
 ;;66267-0113-20
 ;;9002226.02101,"1795,66267-0113-20 ",.02)
 ;;66267-0113-20
 ;;9002226.02101,"1795,66267-0113-30 ",.01)
 ;;66267-0113-30
 ;;9002226.02101,"1795,66267-0113-30 ",.02)
 ;;66267-0113-30
 ;;9002226.02101,"1795,66267-0114-20 ",.01)
 ;;66267-0114-20
 ;;9002226.02101,"1795,66267-0114-20 ",.02)
 ;;66267-0114-20