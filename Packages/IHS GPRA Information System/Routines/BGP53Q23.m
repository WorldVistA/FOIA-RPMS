BGP53Q23 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"805,65862-0063-01 ",.02)
 ;;65862-0063-01
 ;;9002226.02101,"805,65862-0063-99 ",.01)
 ;;65862-0063-99
 ;;9002226.02101,"805,65862-0063-99 ",.02)
 ;;65862-0063-99
 ;;9002226.02101,"805,65862-0064-01 ",.01)
 ;;65862-0064-01
 ;;9002226.02101,"805,65862-0064-01 ",.02)
 ;;65862-0064-01
 ;;9002226.02101,"805,65862-0064-99 ",.01)
 ;;65862-0064-99
 ;;9002226.02101,"805,65862-0064-99 ",.02)
 ;;65862-0064-99
 ;;9002226.02101,"805,65862-0086-01 ",.01)
 ;;65862-0086-01
 ;;9002226.02101,"805,65862-0086-01 ",.02)
 ;;65862-0086-01
 ;;9002226.02101,"805,65862-0086-30 ",.01)
 ;;65862-0086-30
 ;;9002226.02101,"805,65862-0086-30 ",.02)
 ;;65862-0086-30
 ;;9002226.02101,"805,65862-0087-01 ",.01)
 ;;65862-0087-01
 ;;9002226.02101,"805,65862-0087-01 ",.02)
 ;;65862-0087-01
 ;;9002226.02101,"805,65862-0087-30 ",.01)
 ;;65862-0087-30
 ;;9002226.02101,"805,65862-0087-30 ",.02)
 ;;65862-0087-30
 ;;9002226.02101,"805,65862-0142-01 ",.01)
 ;;65862-0142-01
 ;;9002226.02101,"805,65862-0142-01 ",.02)
 ;;65862-0142-01
 ;;9002226.02101,"805,65862-0142-05 ",.01)
 ;;65862-0142-05
 ;;9002226.02101,"805,65862-0142-05 ",.02)
 ;;65862-0142-05
 ;;9002226.02101,"805,65862-0143-01 ",.01)
 ;;65862-0143-01
 ;;9002226.02101,"805,65862-0143-01 ",.02)
 ;;65862-0143-01
 ;;9002226.02101,"805,65862-0143-05 ",.01)
 ;;65862-0143-05
 ;;9002226.02101,"805,65862-0143-05 ",.02)
 ;;65862-0143-05
 ;;9002226.02101,"805,65862-0144-01 ",.01)
 ;;65862-0144-01
 ;;9002226.02101,"805,65862-0144-01 ",.02)
 ;;65862-0144-01
 ;;9002226.02101,"805,65862-0144-05 ",.01)
 ;;65862-0144-05
 ;;9002226.02101,"805,65862-0144-05 ",.02)
 ;;65862-0144-05
 ;;9002226.02101,"805,65862-0145-01 ",.01)
 ;;65862-0145-01
 ;;9002226.02101,"805,65862-0145-01 ",.02)
 ;;65862-0145-01
 ;;9002226.02101,"805,65862-0145-05 ",.01)
 ;;65862-0145-05
 ;;9002226.02101,"805,65862-0145-05 ",.02)
 ;;65862-0145-05
 ;;9002226.02101,"805,65862-0168-01 ",.01)
 ;;65862-0168-01
 ;;9002226.02101,"805,65862-0168-01 ",.02)
 ;;65862-0168-01
 ;;9002226.02101,"805,65862-0168-99 ",.01)
 ;;65862-0168-99
 ;;9002226.02101,"805,65862-0168-99 ",.02)
 ;;65862-0168-99
 ;;9002226.02101,"805,65862-0169-01 ",.01)
 ;;65862-0169-01
 ;;9002226.02101,"805,65862-0169-01 ",.02)
 ;;65862-0169-01
 ;;9002226.02101,"805,65862-0169-99 ",.01)
 ;;65862-0169-99
 ;;9002226.02101,"805,65862-0169-99 ",.02)
 ;;65862-0169-99
 ;;9002226.02101,"805,65862-0170-01 ",.01)
 ;;65862-0170-01
 ;;9002226.02101,"805,65862-0170-01 ",.02)
 ;;65862-0170-01
 ;;9002226.02101,"805,65862-0170-99 ",.01)
 ;;65862-0170-99
 ;;9002226.02101,"805,65862-0170-99 ",.02)
 ;;65862-0170-99
 ;;9002226.02101,"805,66105-0994-03 ",.01)
 ;;66105-0994-03
 ;;9002226.02101,"805,66105-0994-03 ",.02)
 ;;66105-0994-03
 ;;9002226.02101,"805,66105-0994-06 ",.01)
 ;;66105-0994-06
 ;;9002226.02101,"805,66105-0994-06 ",.02)
 ;;66105-0994-06
 ;;9002226.02101,"805,66105-0994-10 ",.01)
 ;;66105-0994-10
 ;;9002226.02101,"805,66105-0994-10 ",.02)
 ;;66105-0994-10
 ;;9002226.02101,"805,66105-0994-11 ",.01)
 ;;66105-0994-11
 ;;9002226.02101,"805,66105-0994-11 ",.02)
 ;;66105-0994-11
 ;;9002226.02101,"805,66105-0994-15 ",.01)
 ;;66105-0994-15
 ;;9002226.02101,"805,66105-0994-15 ",.02)
 ;;66105-0994-15
 ;;9002226.02101,"805,66105-0996-03 ",.01)
 ;;66105-0996-03
 ;;9002226.02101,"805,66105-0996-03 ",.02)
 ;;66105-0996-03
 ;;9002226.02101,"805,66105-0996-06 ",.01)
 ;;66105-0996-06
 ;;9002226.02101,"805,66105-0996-06 ",.02)
 ;;66105-0996-06
 ;;9002226.02101,"805,66105-0996-10 ",.01)
 ;;66105-0996-10
 ;;9002226.02101,"805,66105-0996-10 ",.02)
 ;;66105-0996-10
 ;;9002226.02101,"805,66105-0996-11 ",.01)
 ;;66105-0996-11
 ;;9002226.02101,"805,66105-0996-11 ",.02)
 ;;66105-0996-11
 ;;9002226.02101,"805,66105-0996-15 ",.01)
 ;;66105-0996-15
 ;;9002226.02101,"805,66105-0996-15 ",.02)
 ;;66105-0996-15
 ;;9002226.02101,"805,66336-0514-30 ",.01)
 ;;66336-0514-30
 ;;9002226.02101,"805,66336-0514-30 ",.02)
 ;;66336-0514-30
 ;;9002226.02101,"805,66336-0514-60 ",.01)
 ;;66336-0514-60
 ;;9002226.02101,"805,66336-0514-60 ",.02)
 ;;66336-0514-60
 ;;9002226.02101,"805,66336-0523-30 ",.01)
 ;;66336-0523-30
 ;;9002226.02101,"805,66336-0523-30 ",.02)
 ;;66336-0523-30
 ;;9002226.02101,"805,66336-0523-60 ",.01)
 ;;66336-0523-60
 ;;9002226.02101,"805,66336-0523-60 ",.02)
 ;;66336-0523-60
 ;;9002226.02101,"805,66336-0587-00 ",.01)
 ;;66336-0587-00
 ;;9002226.02101,"805,66336-0587-00 ",.02)
 ;;66336-0587-00
 ;;9002226.02101,"805,66336-0587-30 ",.01)
 ;;66336-0587-30
 ;;9002226.02101,"805,66336-0587-30 ",.02)
 ;;66336-0587-30
 ;;9002226.02101,"805,66336-0587-60 ",.01)
 ;;66336-0587-60
 ;;9002226.02101,"805,66336-0587-60 ",.02)
 ;;66336-0587-60
 ;;9002226.02101,"805,66336-0587-90 ",.01)
 ;;66336-0587-90
 ;;9002226.02101,"805,66336-0587-90 ",.02)
 ;;66336-0587-90
 ;;9002226.02101,"805,66336-0612-90 ",.01)
 ;;66336-0612-90
 ;;9002226.02101,"805,66336-0612-90 ",.02)
 ;;66336-0612-90
 ;;9002226.02101,"805,66336-0719-30 ",.01)
 ;;66336-0719-30
 ;;9002226.02101,"805,66336-0719-30 ",.02)
 ;;66336-0719-30
 ;;9002226.02101,"805,66336-0719-60 ",.01)
 ;;66336-0719-60
 ;;9002226.02101,"805,66336-0719-60 ",.02)
 ;;66336-0719-60
 ;;9002226.02101,"805,66336-0719-90 ",.01)
 ;;66336-0719-90
 ;;9002226.02101,"805,66336-0719-90 ",.02)
 ;;66336-0719-90
 ;;9002226.02101,"805,66336-0772-30 ",.01)
 ;;66336-0772-30
 ;;9002226.02101,"805,66336-0772-30 ",.02)
 ;;66336-0772-30
 ;;9002226.02101,"805,66336-0808-30 ",.01)
 ;;66336-0808-30
 ;;9002226.02101,"805,66336-0808-30 ",.02)
 ;;66336-0808-30
 ;;9002226.02101,"805,66336-0808-60 ",.01)
 ;;66336-0808-60
 ;;9002226.02101,"805,66336-0808-60 ",.02)
 ;;66336-0808-60
 ;;9002226.02101,"805,66336-0837-30 ",.01)
 ;;66336-0837-30
 ;;9002226.02101,"805,66336-0837-30 ",.02)
 ;;66336-0837-30
 ;;9002226.02101,"805,66336-0914-30 ",.01)
 ;;66336-0914-30
 ;;9002226.02101,"805,66336-0914-30 ",.02)
 ;;66336-0914-30
 ;;9002226.02101,"805,66336-0914-60 ",.01)
 ;;66336-0914-60
 ;;9002226.02101,"805,66336-0914-60 ",.02)
 ;;66336-0914-60
 ;;9002226.02101,"805,66336-0914-90 ",.01)
 ;;66336-0914-90
 ;;9002226.02101,"805,66336-0914-90 ",.02)
 ;;66336-0914-90
 ;;9002226.02101,"805,67046-0030-30 ",.01)
 ;;67046-0030-30
 ;;9002226.02101,"805,67046-0030-30 ",.02)
 ;;67046-0030-30
 ;;9002226.02101,"805,67046-0475-30 ",.01)
 ;;67046-0475-30
 ;;9002226.02101,"805,67046-0475-30 ",.02)
 ;;67046-0475-30
 ;;9002226.02101,"805,67046-0590-60 ",.01)
 ;;67046-0590-60
 ;;9002226.02101,"805,67046-0590-60 ",.02)
 ;;67046-0590-60
 ;;9002226.02101,"805,67253-0420-10 ",.01)
 ;;67253-0420-10
 ;;9002226.02101,"805,67253-0420-10 ",.02)
 ;;67253-0420-10
 ;;9002226.02101,"805,67253-0420-11 ",.01)
 ;;67253-0420-11
 ;;9002226.02101,"805,67253-0420-11 ",.02)
 ;;67253-0420-11
 ;;9002226.02101,"805,67253-0421-10 ",.01)
 ;;67253-0421-10
 ;;9002226.02101,"805,67253-0421-10 ",.02)
 ;;67253-0421-10
 ;;9002226.02101,"805,67253-0421-11 ",.01)
 ;;67253-0421-11
 ;;9002226.02101,"805,67253-0421-11 ",.02)
 ;;67253-0421-11
 ;;9002226.02101,"805,67253-0422-10 ",.01)
 ;;67253-0422-10
 ;;9002226.02101,"805,67253-0422-10 ",.02)
 ;;67253-0422-10
 ;;9002226.02101,"805,67253-0422-11 ",.01)
 ;;67253-0422-11
 ;;9002226.02101,"805,67253-0422-11 ",.02)
 ;;67253-0422-11
 ;;9002226.02101,"805,67544-0043-30 ",.01)
 ;;67544-0043-30
 ;;9002226.02101,"805,67544-0043-30 ",.02)
 ;;67544-0043-30
 ;;9002226.02101,"805,67544-0076-30 ",.01)
 ;;67544-0076-30
 ;;9002226.02101,"805,67544-0076-30 ",.02)
 ;;67544-0076-30
 ;;9002226.02101,"805,67544-0087-30 ",.01)
 ;;67544-0087-30
 ;;9002226.02101,"805,67544-0087-30 ",.02)
 ;;67544-0087-30
 ;;9002226.02101,"805,67544-0122-30 ",.01)
 ;;67544-0122-30
 ;;9002226.02101,"805,67544-0122-30 ",.02)
 ;;67544-0122-30
 ;;9002226.02101,"805,67544-0130-30 ",.01)
 ;;67544-0130-30
 ;;9002226.02101,"805,67544-0130-30 ",.02)
 ;;67544-0130-30
 ;;9002226.02101,"805,67544-0143-30 ",.01)
 ;;67544-0143-30
 ;;9002226.02101,"805,67544-0143-30 ",.02)
 ;;67544-0143-30
 ;;9002226.02101,"805,67544-0161-30 ",.01)
 ;;67544-0161-30
 ;;9002226.02101,"805,67544-0161-30 ",.02)
 ;;67544-0161-30
 ;;9002226.02101,"805,67544-0208-30 ",.01)
 ;;67544-0208-30
 ;;9002226.02101,"805,67544-0208-30 ",.02)
 ;;67544-0208-30
 ;;9002226.02101,"805,67544-0240-30 ",.01)
 ;;67544-0240-30
 ;;9002226.02101,"805,67544-0240-30 ",.02)
 ;;67544-0240-30
 ;;9002226.02101,"805,67544-0272-30 ",.01)
 ;;67544-0272-30
 ;;9002226.02101,"805,67544-0272-30 ",.02)
 ;;67544-0272-30
 ;;9002226.02101,"805,67544-0305-30 ",.01)
 ;;67544-0305-30
 ;;9002226.02101,"805,67544-0305-30 ",.02)
 ;;67544-0305-30
 ;;9002226.02101,"805,67544-0326-30 ",.01)
 ;;67544-0326-30
 ;;9002226.02101,"805,67544-0326-30 ",.02)
 ;;67544-0326-30
 ;;9002226.02101,"805,67544-0332-60 ",.01)
 ;;67544-0332-60
 ;;9002226.02101,"805,67544-0332-60 ",.02)
 ;;67544-0332-60
 ;;9002226.02101,"805,67544-0376-30 ",.01)
 ;;67544-0376-30
 ;;9002226.02101,"805,67544-0376-30 ",.02)
 ;;67544-0376-30
 ;;9002226.02101,"805,67544-0491-45 ",.01)
 ;;67544-0491-45
 ;;9002226.02101,"805,67544-0491-45 ",.02)
 ;;67544-0491-45
 ;;9002226.02101,"805,67544-0567-30 ",.01)
 ;;67544-0567-30
 ;;9002226.02101,"805,67544-0567-30 ",.02)
 ;;67544-0567-30
 ;;9002226.02101,"805,67544-0567-60 ",.01)
 ;;67544-0567-60
 ;;9002226.02101,"805,67544-0567-60 ",.02)
 ;;67544-0567-60
 ;;9002226.02101,"805,67544-0573-82 ",.01)
 ;;67544-0573-82
 ;;9002226.02101,"805,67544-0573-82 ",.02)
 ;;67544-0573-82
 ;;9002226.02101,"805,67544-0627-80 ",.01)
 ;;67544-0627-80
 ;;9002226.02101,"805,67544-0627-80 ",.02)
 ;;67544-0627-80
 ;;9002226.02101,"805,67544-0911-60 ",.01)
 ;;67544-0911-60
 ;;9002226.02101,"805,67544-0911-60 ",.02)
 ;;67544-0911-60
 ;;9002226.02101,"805,67801-0304-30 ",.01)
 ;;67801-0304-30
 ;;9002226.02101,"805,67801-0304-30 ",.02)
 ;;67801-0304-30
 ;;9002226.02101,"805,67801-0315-30 ",.01)
 ;;67801-0315-30
 ;;9002226.02101,"805,67801-0315-30 ",.02)
 ;;67801-0315-30
 ;;9002226.02101,"805,67801-0316-03 ",.01)
 ;;67801-0316-03
 ;;9002226.02101,"805,67801-0316-03 ",.02)
 ;;67801-0316-03
 ;;9002226.02101,"805,67857-0700-01 ",.01)
 ;;67857-0700-01
 ;;9002226.02101,"805,67857-0700-01 ",.02)
 ;;67857-0700-01
 ;;9002226.02101,"805,67857-0701-01 ",.01)
 ;;67857-0701-01
 ;;9002226.02101,"805,67857-0701-01 ",.02)
 ;;67857-0701-01
 ;;9002226.02101,"805,68001-0119-00 ",.01)
 ;;68001-0119-00
 ;;9002226.02101,"805,68001-0119-00 ",.02)
 ;;68001-0119-00
 ;;9002226.02101,"805,68001-0119-03 ",.01)
 ;;68001-0119-03
 ;;9002226.02101,"805,68001-0119-03 ",.02)
 ;;68001-0119-03
 ;;9002226.02101,"805,68001-0120-00 ",.01)
 ;;68001-0120-00
 ;;9002226.02101,"805,68001-0120-00 ",.02)
 ;;68001-0120-00
 ;;9002226.02101,"805,68001-0120-03 ",.01)
 ;;68001-0120-03
 ;;9002226.02101,"805,68001-0120-03 ",.02)
 ;;68001-0120-03
 ;;9002226.02101,"805,68001-0121-00 ",.01)
 ;;68001-0121-00
 ;;9002226.02101,"805,68001-0121-00 ",.02)
 ;;68001-0121-00
 ;;9002226.02101,"805,68001-0121-03 ",.01)
 ;;68001-0121-03
 ;;9002226.02101,"805,68001-0121-03 ",.02)
 ;;68001-0121-03
 ;;9002226.02101,"805,68001-0122-00 ",.01)
 ;;68001-0122-00
 ;;9002226.02101,"805,68001-0122-00 ",.02)
 ;;68001-0122-00
 ;;9002226.02101,"805,68001-0122-03 ",.01)
 ;;68001-0122-03
 ;;9002226.02101,"805,68001-0122-03 ",.02)
 ;;68001-0122-03
 ;;9002226.02101,"805,68001-0151-00 ",.01)
 ;;68001-0151-00
 ;;9002226.02101,"805,68001-0151-00 ",.02)
 ;;68001-0151-00
 ;;9002226.02101,"805,68001-0151-03 ",.01)
 ;;68001-0151-03
 ;;9002226.02101,"805,68001-0151-03 ",.02)
 ;;68001-0151-03
 ;;9002226.02101,"805,68001-0152-00 ",.01)
 ;;68001-0152-00
 ;;9002226.02101,"805,68001-0152-00 ",.02)
 ;;68001-0152-00
 ;;9002226.02101,"805,68001-0152-03 ",.01)
 ;;68001-0152-03
 ;;9002226.02101,"805,68001-0152-03 ",.02)
 ;;68001-0152-03
 ;;9002226.02101,"805,68001-0153-00 ",.01)
 ;;68001-0153-00
 ;;9002226.02101,"805,68001-0153-00 ",.02)
 ;;68001-0153-00
 ;;9002226.02101,"805,68001-0153-03 ",.01)
 ;;68001-0153-03
 ;;9002226.02101,"805,68001-0153-03 ",.02)
 ;;68001-0153-03
 ;;9002226.02101,"805,68001-0154-00 ",.01)
 ;;68001-0154-00
 ;;9002226.02101,"805,68001-0154-00 ",.02)
 ;;68001-0154-00
 ;;9002226.02101,"805,68001-0154-03 ",.01)
 ;;68001-0154-03
 ;;9002226.02101,"805,68001-0154-03 ",.02)
 ;;68001-0154-03
 ;;9002226.02101,"805,68001-0204-00 ",.01)
 ;;68001-0204-00
 ;;9002226.02101,"805,68001-0204-00 ",.02)
 ;;68001-0204-00
 ;;9002226.02101,"805,68001-0204-03 ",.01)
 ;;68001-0204-03
 ;;9002226.02101,"805,68001-0204-03 ",.02)
 ;;68001-0204-03
 ;;9002226.02101,"805,68001-0205-00 ",.01)
 ;;68001-0205-00
 ;;9002226.02101,"805,68001-0205-00 ",.02)
 ;;68001-0205-00
 ;;9002226.02101,"805,68001-0205-03 ",.01)
 ;;68001-0205-03
 ;;9002226.02101,"805,68001-0205-03 ",.02)
 ;;68001-0205-03
 ;;9002226.02101,"805,68001-0206-00 ",.01)
 ;;68001-0206-00
 ;;9002226.02101,"805,68001-0206-00 ",.02)
 ;;68001-0206-00
 ;;9002226.02101,"805,68001-0206-03 ",.01)
 ;;68001-0206-03
 ;;9002226.02101,"805,68001-0206-03 ",.02)
 ;;68001-0206-03
 ;;9002226.02101,"805,68001-0219-00 ",.01)
 ;;68001-0219-00
 ;;9002226.02101,"805,68001-0219-00 ",.02)
 ;;68001-0219-00
 ;;9002226.02101,"805,68001-0220-00 ",.01)
 ;;68001-0220-00
 ;;9002226.02101,"805,68001-0220-00 ",.02)
 ;;68001-0220-00
 ;;9002226.02101,"805,68001-0220-08 ",.01)
 ;;68001-0220-08
 ;;9002226.02101,"805,68001-0220-08 ",.02)
 ;;68001-0220-08
 ;;9002226.02101,"805,68001-0221-00 ",.01)
 ;;68001-0221-00
 ;;9002226.02101,"805,68001-0221-00 ",.02)
 ;;68001-0221-00
 ;;9002226.02101,"805,68084-0209-01 ",.01)
 ;;68084-0209-01