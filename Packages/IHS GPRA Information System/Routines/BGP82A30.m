BGP82A30 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1799,55700-0135-30 ",.01)
 ;;55700-0135-30
 ;;9002226.02101,"1799,55700-0135-30 ",.02)
 ;;55700-0135-30
 ;;9002226.02101,"1799,55700-0135-60 ",.01)
 ;;55700-0135-60
 ;;9002226.02101,"1799,55700-0135-60 ",.02)
 ;;55700-0135-60
 ;;9002226.02101,"1799,55700-0153-30 ",.01)
 ;;55700-0153-30
 ;;9002226.02101,"1799,55700-0153-30 ",.02)
 ;;55700-0153-30
 ;;9002226.02101,"1799,55700-0154-30 ",.01)
 ;;55700-0154-30
 ;;9002226.02101,"1799,55700-0154-30 ",.02)
 ;;55700-0154-30
 ;;9002226.02101,"1799,55700-0172-30 ",.01)
 ;;55700-0172-30
 ;;9002226.02101,"1799,55700-0172-30 ",.02)
 ;;55700-0172-30
 ;;9002226.02101,"1799,55700-0172-60 ",.01)
 ;;55700-0172-60
 ;;9002226.02101,"1799,55700-0172-60 ",.02)
 ;;55700-0172-60
 ;;9002226.02101,"1799,55700-0190-30 ",.01)
 ;;55700-0190-30
 ;;9002226.02101,"1799,55700-0190-30 ",.02)
 ;;55700-0190-30
 ;;9002226.02101,"1799,55700-0241-00 ",.01)
 ;;55700-0241-00
 ;;9002226.02101,"1799,55700-0241-00 ",.02)
 ;;55700-0241-00
 ;;9002226.02101,"1799,55700-0241-30 ",.01)
 ;;55700-0241-30
 ;;9002226.02101,"1799,55700-0241-30 ",.02)
 ;;55700-0241-30
 ;;9002226.02101,"1799,55700-0251-30 ",.01)
 ;;55700-0251-30
 ;;9002226.02101,"1799,55700-0251-30 ",.02)
 ;;55700-0251-30
 ;;9002226.02101,"1799,55700-0268-30 ",.01)
 ;;55700-0268-30
 ;;9002226.02101,"1799,55700-0268-30 ",.02)
 ;;55700-0268-30
 ;;9002226.02101,"1799,55700-0268-60 ",.01)
 ;;55700-0268-60
 ;;9002226.02101,"1799,55700-0268-60 ",.02)
 ;;55700-0268-60
 ;;9002226.02101,"1799,55700-0343-15 ",.01)
 ;;55700-0343-15
 ;;9002226.02101,"1799,55700-0343-15 ",.02)
 ;;55700-0343-15
 ;;9002226.02101,"1799,55700-0343-30 ",.01)
 ;;55700-0343-30
 ;;9002226.02101,"1799,55700-0343-30 ",.02)
 ;;55700-0343-30
 ;;9002226.02101,"1799,55700-0343-60 ",.01)
 ;;55700-0343-60
 ;;9002226.02101,"1799,55700-0343-60 ",.02)
 ;;55700-0343-60
 ;;9002226.02101,"1799,55700-0357-15 ",.01)
 ;;55700-0357-15
 ;;9002226.02101,"1799,55700-0357-15 ",.02)
 ;;55700-0357-15
 ;;9002226.02101,"1799,55700-0357-30 ",.01)
 ;;55700-0357-30
 ;;9002226.02101,"1799,55700-0357-30 ",.02)
 ;;55700-0357-30
 ;;9002226.02101,"1799,55700-0357-60 ",.01)
 ;;55700-0357-60
 ;;9002226.02101,"1799,55700-0357-60 ",.02)
 ;;55700-0357-60
 ;;9002226.02101,"1799,55700-0379-30 ",.01)
 ;;55700-0379-30
 ;;9002226.02101,"1799,55700-0379-30 ",.02)
 ;;55700-0379-30
 ;;9002226.02101,"1799,55700-0379-60 ",.01)
 ;;55700-0379-60
 ;;9002226.02101,"1799,55700-0379-60 ",.02)
 ;;55700-0379-60
 ;;9002226.02101,"1799,55700-0379-90 ",.01)
 ;;55700-0379-90
 ;;9002226.02101,"1799,55700-0379-90 ",.02)
 ;;55700-0379-90
 ;;9002226.02101,"1799,55700-0391-30 ",.01)
 ;;55700-0391-30
 ;;9002226.02101,"1799,55700-0391-30 ",.02)
 ;;55700-0391-30
 ;;9002226.02101,"1799,55700-0485-30 ",.01)
 ;;55700-0485-30
 ;;9002226.02101,"1799,55700-0485-30 ",.02)
 ;;55700-0485-30
 ;;9002226.02101,"1799,55700-0485-60 ",.01)
 ;;55700-0485-60
 ;;9002226.02101,"1799,55700-0485-60 ",.02)
 ;;55700-0485-60
 ;;9002226.02101,"1799,55700-0486-30 ",.01)
 ;;55700-0486-30
 ;;9002226.02101,"1799,55700-0486-30 ",.02)
 ;;55700-0486-30
 ;;9002226.02101,"1799,55700-0486-60 ",.01)
 ;;55700-0486-60
 ;;9002226.02101,"1799,55700-0486-60 ",.02)
 ;;55700-0486-60
 ;;9002226.02101,"1799,55700-0486-90 ",.01)
 ;;55700-0486-90
 ;;9002226.02101,"1799,55700-0486-90 ",.02)
 ;;55700-0486-90
 ;;9002226.02101,"1799,55700-0501-30 ",.01)
 ;;55700-0501-30
 ;;9002226.02101,"1799,55700-0501-30 ",.02)
 ;;55700-0501-30
 ;;9002226.02101,"1799,55700-0501-60 ",.01)
 ;;55700-0501-60
 ;;9002226.02101,"1799,55700-0501-60 ",.02)
 ;;55700-0501-60
 ;;9002226.02101,"1799,55700-0503-30 ",.01)
 ;;55700-0503-30
 ;;9002226.02101,"1799,55700-0503-30 ",.02)
 ;;55700-0503-30
 ;;9002226.02101,"1799,57664-0421-13 ",.01)
 ;;57664-0421-13
 ;;9002226.02101,"1799,57664-0421-13 ",.02)
 ;;57664-0421-13
 ;;9002226.02101,"1799,57664-0421-83 ",.01)
 ;;57664-0421-83
 ;;9002226.02101,"1799,57664-0421-83 ",.02)
 ;;57664-0421-83
 ;;9002226.02101,"1799,57664-0421-99 ",.01)
 ;;57664-0421-99
 ;;9002226.02101,"1799,57664-0421-99 ",.02)
 ;;57664-0421-99
 ;;9002226.02101,"1799,57664-0422-13 ",.01)
 ;;57664-0422-13
 ;;9002226.02101,"1799,57664-0422-13 ",.02)
 ;;57664-0422-13
 ;;9002226.02101,"1799,57664-0422-18 ",.01)
 ;;57664-0422-18
 ;;9002226.02101,"1799,57664-0422-18 ",.02)
 ;;57664-0422-18
 ;;9002226.02101,"1799,57664-0422-83 ",.01)
 ;;57664-0422-83
 ;;9002226.02101,"1799,57664-0422-83 ",.02)
 ;;57664-0422-83
 ;;9002226.02101,"1799,57664-0422-99 ",.01)
 ;;57664-0422-99
 ;;9002226.02101,"1799,57664-0422-99 ",.02)
 ;;57664-0422-99
 ;;9002226.02101,"1799,57664-0424-13 ",.01)
 ;;57664-0424-13
 ;;9002226.02101,"1799,57664-0424-13 ",.02)
 ;;57664-0424-13
 ;;9002226.02101,"1799,57664-0424-83 ",.01)
 ;;57664-0424-83
 ;;9002226.02101,"1799,57664-0424-83 ",.02)
 ;;57664-0424-83
 ;;9002226.02101,"1799,57664-0424-99 ",.01)
 ;;57664-0424-99
 ;;9002226.02101,"1799,57664-0424-99 ",.02)
 ;;57664-0424-99
 ;;9002226.02101,"1799,57664-0425-13 ",.01)
 ;;57664-0425-13
 ;;9002226.02101,"1799,57664-0425-13 ",.02)
 ;;57664-0425-13
 ;;9002226.02101,"1799,57664-0425-83 ",.01)
 ;;57664-0425-83
 ;;9002226.02101,"1799,57664-0425-83 ",.02)
 ;;57664-0425-83
 ;;9002226.02101,"1799,57664-0425-99 ",.01)
 ;;57664-0425-99
 ;;9002226.02101,"1799,57664-0425-99 ",.02)
 ;;57664-0425-99
 ;;9002226.02101,"1799,58118-0097-03 ",.01)
 ;;58118-0097-03
 ;;9002226.02101,"1799,58118-0097-03 ",.02)
 ;;58118-0097-03
 ;;9002226.02101,"1799,58118-0097-09 ",.01)
 ;;58118-0097-09
 ;;9002226.02101,"1799,58118-0097-09 ",.02)
 ;;58118-0097-09
 ;;9002226.02101,"1799,58118-0155-03 ",.01)
 ;;58118-0155-03
 ;;9002226.02101,"1799,58118-0155-03 ",.02)
 ;;58118-0155-03
 ;;9002226.02101,"1799,58118-0155-09 ",.01)
 ;;58118-0155-09
 ;;9002226.02101,"1799,58118-0155-09 ",.02)
 ;;58118-0155-09
 ;;9002226.02101,"1799,58118-0157-03 ",.01)
 ;;58118-0157-03
 ;;9002226.02101,"1799,58118-0157-03 ",.02)
 ;;58118-0157-03
 ;;9002226.02101,"1799,58118-0157-09 ",.01)
 ;;58118-0157-09
 ;;9002226.02101,"1799,58118-0157-09 ",.02)
 ;;58118-0157-09
 ;;9002226.02101,"1799,58118-0810-03 ",.01)
 ;;58118-0810-03
 ;;9002226.02101,"1799,58118-0810-03 ",.02)
 ;;58118-0810-03
 ;;9002226.02101,"1799,58118-0810-09 ",.01)
 ;;58118-0810-09
 ;;9002226.02101,"1799,58118-0810-09 ",.02)
 ;;58118-0810-09
 ;;9002226.02101,"1799,58118-0811-03 ",.01)
 ;;58118-0811-03
 ;;9002226.02101,"1799,58118-0811-03 ",.02)
 ;;58118-0811-03
 ;;9002226.02101,"1799,58118-0811-09 ",.01)
 ;;58118-0811-09
 ;;9002226.02101,"1799,58118-0811-09 ",.02)
 ;;58118-0811-09
 ;;9002226.02101,"1799,58118-2113-06 ",.01)
 ;;58118-2113-06
 ;;9002226.02101,"1799,58118-2113-06 ",.02)
 ;;58118-2113-06
 ;;9002226.02101,"1799,58118-2114-03 ",.01)
 ;;58118-2114-03
 ;;9002226.02101,"1799,58118-2114-03 ",.02)
 ;;58118-2114-03
 ;;9002226.02101,"1799,58118-2114-06 ",.01)
 ;;58118-2114-06
 ;;9002226.02101,"1799,58118-2114-06 ",.02)
 ;;58118-2114-06
 ;;9002226.02101,"1799,58118-2212-03 ",.01)
 ;;58118-2212-03
 ;;9002226.02101,"1799,58118-2212-03 ",.02)
 ;;58118-2212-03
 ;;9002226.02101,"1799,58118-2212-09 ",.01)
 ;;58118-2212-09
 ;;9002226.02101,"1799,58118-2212-09 ",.02)
 ;;58118-2212-09
 ;;9002226.02101,"1799,58118-2213-03 ",.01)
 ;;58118-2213-03
 ;;9002226.02101,"1799,58118-2213-03 ",.02)
 ;;58118-2213-03
 ;;9002226.02101,"1799,58118-2213-09 ",.01)
 ;;58118-2213-09
 ;;9002226.02101,"1799,58118-2213-09 ",.02)
 ;;58118-2213-09
 ;;9002226.02101,"1799,58118-2214-03 ",.01)
 ;;58118-2214-03
 ;;9002226.02101,"1799,58118-2214-03 ",.02)
 ;;58118-2214-03
 ;;9002226.02101,"1799,58118-2214-09 ",.01)
 ;;58118-2214-09
 ;;9002226.02101,"1799,58118-2214-09 ",.02)
 ;;58118-2214-09
 ;;9002226.02101,"1799,58118-2605-03 ",.01)
 ;;58118-2605-03
 ;;9002226.02101,"1799,58118-2605-03 ",.02)
 ;;58118-2605-03
 ;;9002226.02101,"1799,58118-2605-06 ",.01)
 ;;58118-2605-06
 ;;9002226.02101,"1799,58118-2605-06 ",.02)
 ;;58118-2605-06
 ;;9002226.02101,"1799,58118-5316-03 ",.01)
 ;;58118-5316-03
 ;;9002226.02101,"1799,58118-5316-03 ",.02)
 ;;58118-5316-03
 ;;9002226.02101,"1799,58407-0510-30 ",.01)
 ;;58407-0510-30
 ;;9002226.02101,"1799,58407-0510-30 ",.02)
 ;;58407-0510-30
 ;;9002226.02101,"1799,58407-0510-60 ",.01)
 ;;58407-0510-60
 ;;9002226.02101,"1799,58407-0510-60 ",.02)
 ;;58407-0510-60
 ;;9002226.02101,"1799,58407-0534-01 ",.01)
 ;;58407-0534-01
 ;;9002226.02101,"1799,58407-0534-01 ",.02)
 ;;58407-0534-01
 ;;9002226.02101,"1799,58517-0160-30 ",.01)
 ;;58517-0160-30
 ;;9002226.02101,"1799,58517-0160-30 ",.02)
 ;;58517-0160-30
 ;;9002226.02101,"1799,58657-0420-16 ",.01)
 ;;58657-0420-16
 ;;9002226.02101,"1799,58657-0420-16 ",.02)
 ;;58657-0420-16
 ;;9002226.02101,"1799,58657-0421-01 ",.01)
 ;;58657-0421-01
 ;;9002226.02101,"1799,58657-0421-01 ",.02)
 ;;58657-0421-01
 ;;9002226.02101,"1799,58809-0820-16 ",.01)
 ;;58809-0820-16
 ;;9002226.02101,"1799,58809-0820-16 ",.02)
 ;;58809-0820-16
 ;;9002226.02101,"1799,58864-0022-15 ",.01)
 ;;58864-0022-15
 ;;9002226.02101,"1799,58864-0022-15 ",.02)
 ;;58864-0022-15
 ;;9002226.02101,"1799,58864-0022-30 ",.01)
 ;;58864-0022-30
 ;;9002226.02101,"1799,58864-0022-30 ",.02)
 ;;58864-0022-30
 ;;9002226.02101,"1799,58864-0023-30 ",.01)
 ;;58864-0023-30
 ;;9002226.02101,"1799,58864-0023-30 ",.02)
 ;;58864-0023-30
 ;;9002226.02101,"1799,58864-0024-30 ",.01)
 ;;58864-0024-30
 ;;9002226.02101,"1799,58864-0024-30 ",.02)
 ;;58864-0024-30
 ;;9002226.02101,"1799,58864-0292-30 ",.01)
 ;;58864-0292-30
 ;;9002226.02101,"1799,58864-0292-30 ",.02)
 ;;58864-0292-30
 ;;9002226.02101,"1799,58864-0372-30 ",.01)
 ;;58864-0372-30
 ;;9002226.02101,"1799,58864-0372-30 ",.02)
 ;;58864-0372-30
 ;;9002226.02101,"1799,58864-0628-15 ",.01)
 ;;58864-0628-15
 ;;9002226.02101,"1799,58864-0628-15 ",.02)
 ;;58864-0628-15
 ;;9002226.02101,"1799,58864-0700-15 ",.01)
 ;;58864-0700-15
 ;;9002226.02101,"1799,58864-0700-15 ",.02)
 ;;58864-0700-15
 ;;9002226.02101,"1799,58864-0716-15 ",.01)
 ;;58864-0716-15
 ;;9002226.02101,"1799,58864-0716-15 ",.02)
 ;;58864-0716-15
 ;;9002226.02101,"1799,58864-0716-30 ",.01)
 ;;58864-0716-30
 ;;9002226.02101,"1799,58864-0716-30 ",.02)
 ;;58864-0716-30
 ;;9002226.02101,"1799,58864-0741-15 ",.01)
 ;;58864-0741-15
 ;;9002226.02101,"1799,58864-0741-15 ",.02)
 ;;58864-0741-15
 ;;9002226.02101,"1799,58864-0741-30 ",.01)
 ;;58864-0741-30
 ;;9002226.02101,"1799,58864-0741-30 ",.02)
 ;;58864-0741-30
 ;;9002226.02101,"1799,58864-0757-30 ",.01)
 ;;58864-0757-30
 ;;9002226.02101,"1799,58864-0757-30 ",.02)
 ;;58864-0757-30
 ;;9002226.02101,"1799,58864-0844-30 ",.01)
 ;;58864-0844-30
 ;;9002226.02101,"1799,58864-0844-30 ",.02)
 ;;58864-0844-30
 ;;9002226.02101,"1799,58864-0857-30 ",.01)
 ;;58864-0857-30
 ;;9002226.02101,"1799,58864-0857-30 ",.02)
 ;;58864-0857-30
 ;;9002226.02101,"1799,58864-0891-06 ",.01)
 ;;58864-0891-06
 ;;9002226.02101,"1799,58864-0891-06 ",.02)
 ;;58864-0891-06
 ;;9002226.02101,"1799,59011-0255-30 ",.01)
 ;;59011-0255-30
 ;;9002226.02101,"1799,59011-0255-30 ",.02)
 ;;59011-0255-30
 ;;9002226.02101,"1799,59011-0256-30 ",.01)
 ;;59011-0256-30
 ;;9002226.02101,"1799,59011-0256-30 ",.02)
 ;;59011-0256-30
 ;;9002226.02101,"1799,59702-0661-01 ",.01)
 ;;59702-0661-01
 ;;9002226.02101,"1799,59702-0661-01 ",.02)
 ;;59702-0661-01
 ;;9002226.02101,"1799,59746-0457-10 ",.01)
 ;;59746-0457-10
 ;;9002226.02101,"1799,59746-0457-10 ",.02)
 ;;59746-0457-10
 ;;9002226.02101,"1799,59746-0457-30 ",.01)
 ;;59746-0457-30
 ;;9002226.02101,"1799,59746-0457-30 ",.02)
 ;;59746-0457-30
 ;;9002226.02101,"1799,59746-0457-90 ",.01)
 ;;59746-0457-90
 ;;9002226.02101,"1799,59746-0457-90 ",.02)
 ;;59746-0457-90
 ;;9002226.02101,"1799,59746-0458-10 ",.01)
 ;;59746-0458-10