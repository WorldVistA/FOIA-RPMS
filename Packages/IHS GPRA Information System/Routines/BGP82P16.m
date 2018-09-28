BGP82P16 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1224,43598-0584-10 ",.01)
 ;;43598-0584-10
 ;;9002226.02101,"1224,43598-0584-10 ",.02)
 ;;43598-0584-10
 ;;9002226.02101,"1224,43598-0584-30 ",.01)
 ;;43598-0584-30
 ;;9002226.02101,"1224,43598-0584-30 ",.02)
 ;;43598-0584-30
 ;;9002226.02101,"1224,43598-0584-90 ",.01)
 ;;43598-0584-90
 ;;9002226.02101,"1224,43598-0584-90 ",.02)
 ;;43598-0584-90
 ;;9002226.02101,"1224,43598-0585-10 ",.01)
 ;;43598-0585-10
 ;;9002226.02101,"1224,43598-0585-10 ",.02)
 ;;43598-0585-10
 ;;9002226.02101,"1224,43598-0585-30 ",.01)
 ;;43598-0585-30
 ;;9002226.02101,"1224,43598-0585-30 ",.02)
 ;;43598-0585-30
 ;;9002226.02101,"1224,43598-0585-90 ",.01)
 ;;43598-0585-90
 ;;9002226.02101,"1224,43598-0585-90 ",.02)
 ;;43598-0585-90
 ;;9002226.02101,"1224,43598-0586-10 ",.01)
 ;;43598-0586-10
 ;;9002226.02101,"1224,43598-0586-10 ",.02)
 ;;43598-0586-10
 ;;9002226.02101,"1224,43598-0586-30 ",.01)
 ;;43598-0586-30
 ;;9002226.02101,"1224,43598-0586-30 ",.02)
 ;;43598-0586-30
 ;;9002226.02101,"1224,43598-0586-90 ",.01)
 ;;43598-0586-90
 ;;9002226.02101,"1224,43598-0586-90 ",.02)
 ;;43598-0586-90
 ;;9002226.02101,"1224,45963-0565-08 ",.01)
 ;;45963-0565-08
 ;;9002226.02101,"1224,45963-0565-08 ",.02)
 ;;45963-0565-08
 ;;9002226.02101,"1224,45963-0565-30 ",.01)
 ;;45963-0565-30
 ;;9002226.02101,"1224,45963-0565-30 ",.02)
 ;;45963-0565-30
 ;;9002226.02101,"1224,45963-0566-08 ",.01)
 ;;45963-0566-08
 ;;9002226.02101,"1224,45963-0566-08 ",.02)
 ;;45963-0566-08
 ;;9002226.02101,"1224,45963-0566-30 ",.01)
 ;;45963-0566-30
 ;;9002226.02101,"1224,45963-0566-30 ",.02)
 ;;45963-0566-30
 ;;9002226.02101,"1224,45963-0567-08 ",.01)
 ;;45963-0567-08
 ;;9002226.02101,"1224,45963-0567-08 ",.02)
 ;;45963-0567-08
 ;;9002226.02101,"1224,45963-0567-30 ",.01)
 ;;45963-0567-30
 ;;9002226.02101,"1224,45963-0567-30 ",.02)
 ;;45963-0567-30
 ;;9002226.02101,"1224,45963-0568-08 ",.01)
 ;;45963-0568-08
 ;;9002226.02101,"1224,45963-0568-08 ",.02)
 ;;45963-0568-08
 ;;9002226.02101,"1224,45963-0568-30 ",.01)
 ;;45963-0568-30
 ;;9002226.02101,"1224,45963-0568-30 ",.02)
 ;;45963-0568-30
 ;;9002226.02101,"1224,45963-0633-01 ",.01)
 ;;45963-0633-01
 ;;9002226.02101,"1224,45963-0633-01 ",.02)
 ;;45963-0633-01
 ;;9002226.02101,"1224,45963-0633-04 ",.01)
 ;;45963-0633-04
 ;;9002226.02101,"1224,45963-0633-04 ",.02)
 ;;45963-0633-04
 ;;9002226.02101,"1224,45963-0634-01 ",.01)
 ;;45963-0634-01
 ;;9002226.02101,"1224,45963-0634-01 ",.02)
 ;;45963-0634-01
 ;;9002226.02101,"1224,45963-0634-04 ",.01)
 ;;45963-0634-04
 ;;9002226.02101,"1224,45963-0634-04 ",.02)
 ;;45963-0634-04
 ;;9002226.02101,"1224,45963-0635-01 ",.01)
 ;;45963-0635-01
 ;;9002226.02101,"1224,45963-0635-01 ",.02)
 ;;45963-0635-01
 ;;9002226.02101,"1224,45963-0635-04 ",.01)
 ;;45963-0635-04
 ;;9002226.02101,"1224,45963-0635-04 ",.02)
 ;;45963-0635-04
 ;;9002226.02101,"1224,47335-0582-81 ",.01)
 ;;47335-0582-81
 ;;9002226.02101,"1224,47335-0582-81 ",.02)
 ;;47335-0582-81
 ;;9002226.02101,"1224,47335-0583-81 ",.01)
 ;;47335-0583-81
 ;;9002226.02101,"1224,47335-0583-81 ",.02)
 ;;47335-0583-81
 ;;9002226.02101,"1224,47335-0584-81 ",.01)
 ;;47335-0584-81
 ;;9002226.02101,"1224,47335-0584-81 ",.02)
 ;;47335-0584-81
 ;;9002226.02101,"1224,47335-0585-83 ",.01)
 ;;47335-0585-83
 ;;9002226.02101,"1224,47335-0585-83 ",.02)
 ;;47335-0585-83
 ;;9002226.02101,"1224,47463-0031-30 ",.01)
 ;;47463-0031-30
 ;;9002226.02101,"1224,47463-0031-30 ",.02)
 ;;47463-0031-30
 ;;9002226.02101,"1224,47463-0032-30 ",.01)
 ;;47463-0032-30
 ;;9002226.02101,"1224,47463-0032-30 ",.02)
 ;;47463-0032-30
 ;;9002226.02101,"1224,47463-0033-30 ",.01)
 ;;47463-0033-30
 ;;9002226.02101,"1224,47463-0033-30 ",.02)
 ;;47463-0033-30
 ;;9002226.02101,"1224,47463-0033-90 ",.01)
 ;;47463-0033-90
 ;;9002226.02101,"1224,47463-0033-90 ",.02)
 ;;47463-0033-90
 ;;9002226.02101,"1224,47463-0034-30 ",.01)
 ;;47463-0034-30
 ;;9002226.02101,"1224,47463-0034-30 ",.02)
 ;;47463-0034-30
 ;;9002226.02101,"1224,47463-0095-30 ",.01)
 ;;47463-0095-30
 ;;9002226.02101,"1224,47463-0095-30 ",.02)
 ;;47463-0095-30
 ;;9002226.02101,"1224,47463-0096-30 ",.01)
 ;;47463-0096-30
 ;;9002226.02101,"1224,47463-0096-30 ",.02)
 ;;47463-0096-30
 ;;9002226.02101,"1224,47463-0097-30 ",.01)
 ;;47463-0097-30
 ;;9002226.02101,"1224,47463-0097-30 ",.02)
 ;;47463-0097-30
 ;;9002226.02101,"1224,47463-0394-30 ",.01)
 ;;47463-0394-30
 ;;9002226.02101,"1224,47463-0394-30 ",.02)
 ;;47463-0394-30
 ;;9002226.02101,"1224,47463-0394-90 ",.01)
 ;;47463-0394-90
 ;;9002226.02101,"1224,47463-0394-90 ",.02)
 ;;47463-0394-90
 ;;9002226.02101,"1224,47463-0395-30 ",.01)
 ;;47463-0395-30
 ;;9002226.02101,"1224,47463-0395-30 ",.02)
 ;;47463-0395-30
 ;;9002226.02101,"1224,47463-0596-30 ",.01)
 ;;47463-0596-30
 ;;9002226.02101,"1224,47463-0596-30 ",.02)
 ;;47463-0596-30
 ;;9002226.02101,"1224,47463-0597-30 ",.01)
 ;;47463-0597-30
 ;;9002226.02101,"1224,47463-0597-30 ",.02)
 ;;47463-0597-30
 ;;9002226.02101,"1224,47463-0598-30 ",.01)
 ;;47463-0598-30
 ;;9002226.02101,"1224,47463-0598-30 ",.02)
 ;;47463-0598-30
 ;;9002226.02101,"1224,47463-0774-30 ",.01)
 ;;47463-0774-30
 ;;9002226.02101,"1224,47463-0774-30 ",.02)
 ;;47463-0774-30
 ;;9002226.02101,"1224,47463-0774-90 ",.01)
 ;;47463-0774-90
 ;;9002226.02101,"1224,47463-0774-90 ",.02)
 ;;47463-0774-90
 ;;9002226.02101,"1224,47463-0775-30 ",.01)
 ;;47463-0775-30
 ;;9002226.02101,"1224,47463-0775-30 ",.02)
 ;;47463-0775-30
 ;;9002226.02101,"1224,47463-0775-90 ",.01)
 ;;47463-0775-90
 ;;9002226.02101,"1224,47463-0775-90 ",.02)
 ;;47463-0775-90
 ;;9002226.02101,"1224,47463-0776-30 ",.01)
 ;;47463-0776-30
 ;;9002226.02101,"1224,47463-0776-30 ",.02)
 ;;47463-0776-30
 ;;9002226.02101,"1224,47463-0776-90 ",.01)
 ;;47463-0776-90
 ;;9002226.02101,"1224,47463-0776-90 ",.02)
 ;;47463-0776-90
 ;;9002226.02101,"1224,47463-0821-30 ",.01)
 ;;47463-0821-30
 ;;9002226.02101,"1224,47463-0821-30 ",.02)
 ;;47463-0821-30
 ;;9002226.02101,"1224,47463-0822-30 ",.01)
 ;;47463-0822-30
 ;;9002226.02101,"1224,47463-0822-30 ",.02)
 ;;47463-0822-30
 ;;9002226.02101,"1224,47463-0823-30 ",.01)
 ;;47463-0823-30
 ;;9002226.02101,"1224,47463-0823-30 ",.02)
 ;;47463-0823-30
 ;;9002226.02101,"1224,49884-0260-09 ",.01)
 ;;49884-0260-09
 ;;9002226.02101,"1224,49884-0260-09 ",.02)
 ;;49884-0260-09
 ;;9002226.02101,"1224,49884-0261-09 ",.01)
 ;;49884-0261-09
 ;;9002226.02101,"1224,49884-0261-09 ",.02)
 ;;49884-0261-09
 ;;9002226.02101,"1224,49884-0262-09 ",.01)
 ;;49884-0262-09
 ;;9002226.02101,"1224,49884-0262-09 ",.02)
 ;;49884-0262-09
 ;;9002226.02101,"1224,49884-0263-11 ",.01)
 ;;49884-0263-11
 ;;9002226.02101,"1224,49884-0263-11 ",.02)
 ;;49884-0263-11
 ;;9002226.02101,"1224,49999-0293-30 ",.01)
 ;;49999-0293-30
 ;;9002226.02101,"1224,49999-0293-30 ",.02)
 ;;49999-0293-30
 ;;9002226.02101,"1224,49999-0293-60 ",.01)
 ;;49999-0293-60
 ;;9002226.02101,"1224,49999-0293-60 ",.02)
 ;;49999-0293-60
 ;;9002226.02101,"1224,49999-0293-90 ",.01)
 ;;49999-0293-90
 ;;9002226.02101,"1224,49999-0293-90 ",.02)
 ;;49999-0293-90
 ;;9002226.02101,"1224,49999-0306-30 ",.01)
 ;;49999-0306-30
 ;;9002226.02101,"1224,49999-0306-30 ",.02)
 ;;49999-0306-30
 ;;9002226.02101,"1224,49999-0392-30 ",.01)
 ;;49999-0392-30
 ;;9002226.02101,"1224,49999-0392-30 ",.02)
 ;;49999-0392-30
 ;;9002226.02101,"1224,49999-0392-90 ",.01)
 ;;49999-0392-90
 ;;9002226.02101,"1224,49999-0392-90 ",.02)
 ;;49999-0392-90
 ;;9002226.02101,"1224,49999-0467-30 ",.01)
 ;;49999-0467-30
 ;;9002226.02101,"1224,49999-0467-30 ",.02)
 ;;49999-0467-30
 ;;9002226.02101,"1224,49999-0467-90 ",.01)
 ;;49999-0467-90
 ;;9002226.02101,"1224,49999-0467-90 ",.02)
 ;;49999-0467-90
 ;;9002226.02101,"1224,49999-0468-30 ",.01)
 ;;49999-0468-30
 ;;9002226.02101,"1224,49999-0468-30 ",.02)
 ;;49999-0468-30
 ;;9002226.02101,"1224,49999-0468-90 ",.01)
 ;;49999-0468-90
 ;;9002226.02101,"1224,49999-0468-90 ",.02)
 ;;49999-0468-90
 ;;9002226.02101,"1224,49999-0470-30 ",.01)
 ;;49999-0470-30
 ;;9002226.02101,"1224,49999-0470-30 ",.02)
 ;;49999-0470-30
 ;;9002226.02101,"1224,49999-0470-60 ",.01)
 ;;49999-0470-60
 ;;9002226.02101,"1224,49999-0470-60 ",.02)
 ;;49999-0470-60
 ;;9002226.02101,"1224,49999-0470-90 ",.01)
 ;;49999-0470-90
 ;;9002226.02101,"1224,49999-0470-90 ",.02)
 ;;49999-0470-90
 ;;9002226.02101,"1224,49999-0471-00 ",.01)
 ;;49999-0471-00
 ;;9002226.02101,"1224,49999-0471-00 ",.02)
 ;;49999-0471-00
 ;;9002226.02101,"1224,49999-0471-30 ",.01)
 ;;49999-0471-30
 ;;9002226.02101,"1224,49999-0471-30 ",.02)
 ;;49999-0471-30
 ;;9002226.02101,"1224,49999-0471-60 ",.01)
 ;;49999-0471-60
 ;;9002226.02101,"1224,49999-0471-60 ",.02)
 ;;49999-0471-60
 ;;9002226.02101,"1224,49999-0471-90 ",.01)
 ;;49999-0471-90
 ;;9002226.02101,"1224,49999-0471-90 ",.02)
 ;;49999-0471-90
 ;;9002226.02101,"1224,49999-0488-30 ",.01)
 ;;49999-0488-30
 ;;9002226.02101,"1224,49999-0488-30 ",.02)
 ;;49999-0488-30
 ;;9002226.02101,"1224,49999-0873-30 ",.01)
 ;;49999-0873-30
 ;;9002226.02101,"1224,49999-0873-30 ",.02)
 ;;49999-0873-30
 ;;9002226.02101,"1224,49999-0873-90 ",.01)
 ;;49999-0873-90
 ;;9002226.02101,"1224,49999-0873-90 ",.02)
 ;;49999-0873-90
 ;;9002226.02101,"1224,49999-0882-30 ",.01)
 ;;49999-0882-30
 ;;9002226.02101,"1224,49999-0882-30 ",.02)
 ;;49999-0882-30
 ;;9002226.02101,"1224,49999-0882-90 ",.01)
 ;;49999-0882-90
 ;;9002226.02101,"1224,49999-0882-90 ",.02)
 ;;49999-0882-90
 ;;9002226.02101,"1224,49999-0889-30 ",.01)
 ;;49999-0889-30
 ;;9002226.02101,"1224,49999-0889-30 ",.02)
 ;;49999-0889-30
 ;;9002226.02101,"1224,49999-0889-60 ",.01)
 ;;49999-0889-60
 ;;9002226.02101,"1224,49999-0889-60 ",.02)
 ;;49999-0889-60
 ;;9002226.02101,"1224,49999-0889-90 ",.01)
 ;;49999-0889-90
 ;;9002226.02101,"1224,49999-0889-90 ",.02)
 ;;49999-0889-90
 ;;9002226.02101,"1224,49999-0900-90 ",.01)
 ;;49999-0900-90
 ;;9002226.02101,"1224,49999-0900-90 ",.02)
 ;;49999-0900-90
 ;;9002226.02101,"1224,49999-0903-15 ",.01)
 ;;49999-0903-15
 ;;9002226.02101,"1224,49999-0903-15 ",.02)
 ;;49999-0903-15
 ;;9002226.02101,"1224,49999-0903-30 ",.01)
 ;;49999-0903-30
 ;;9002226.02101,"1224,49999-0903-30 ",.02)
 ;;49999-0903-30
 ;;9002226.02101,"1224,49999-0903-90 ",.01)
 ;;49999-0903-90
 ;;9002226.02101,"1224,49999-0903-90 ",.02)
 ;;49999-0903-90
 ;;9002226.02101,"1224,49999-0957-30 ",.01)
 ;;49999-0957-30
 ;;9002226.02101,"1224,49999-0957-30 ",.02)
 ;;49999-0957-30
 ;;9002226.02101,"1224,49999-0958-30 ",.01)
 ;;49999-0958-30
 ;;9002226.02101,"1224,49999-0958-30 ",.02)
 ;;49999-0958-30
 ;;9002226.02101,"1224,49999-0989-30 ",.01)
 ;;49999-0989-30
 ;;9002226.02101,"1224,49999-0989-30 ",.02)
 ;;49999-0989-30
 ;;9002226.02101,"1224,49999-0992-90 ",.01)
 ;;49999-0992-90
 ;;9002226.02101,"1224,49999-0992-90 ",.02)
 ;;49999-0992-90
 ;;9002226.02101,"1224,50111-0761-17 ",.01)
 ;;50111-0761-17
 ;;9002226.02101,"1224,50111-0761-17 ",.02)
 ;;50111-0761-17
 ;;9002226.02101,"1224,50111-0762-03 ",.01)
 ;;50111-0762-03
 ;;9002226.02101,"1224,50111-0762-03 ",.02)
 ;;50111-0762-03
 ;;9002226.02101,"1224,50111-0762-17 ",.01)
 ;;50111-0762-17
 ;;9002226.02101,"1224,50111-0762-17 ",.02)
 ;;50111-0762-17
 ;;9002226.02101,"1224,50268-0093-11 ",.01)
 ;;50268-0093-11
 ;;9002226.02101,"1224,50268-0093-11 ",.02)
 ;;50268-0093-11
 ;;9002226.02101,"1224,50268-0093-15 ",.01)
 ;;50268-0093-15
 ;;9002226.02101,"1224,50268-0093-15 ",.02)
 ;;50268-0093-15
 ;;9002226.02101,"1224,50268-0094-11 ",.01)
 ;;50268-0094-11
 ;;9002226.02101,"1224,50268-0094-11 ",.02)
 ;;50268-0094-11
 ;;9002226.02101,"1224,50268-0094-15 ",.01)
 ;;50268-0094-15
 ;;9002226.02101,"1224,50268-0094-15 ",.02)
 ;;50268-0094-15
 ;;9002226.02101,"1224,50268-0095-11 ",.01)
 ;;50268-0095-11