ATXXB54 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,059630Z ",.03)
 ;;31
 ;;9002226.02101,"1804,05963ZZ ",.01)
 ;;05963ZZ 
 ;;9002226.02101,"1804,05963ZZ ",.02)
 ;;05963ZZ 
 ;;9002226.02101,"1804,05963ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059640Z ",.01)
 ;;059640Z 
 ;;9002226.02101,"1804,059640Z ",.02)
 ;;059640Z 
 ;;9002226.02101,"1804,059640Z ",.03)
 ;;31
 ;;9002226.02101,"1804,05964ZZ ",.01)
 ;;05964ZZ 
 ;;9002226.02101,"1804,05964ZZ ",.02)
 ;;05964ZZ 
 ;;9002226.02101,"1804,05964ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059700Z ",.01)
 ;;059700Z 
 ;;9002226.02101,"1804,059700Z ",.02)
 ;;059700Z 
 ;;9002226.02101,"1804,059700Z ",.03)
 ;;31
 ;;9002226.02101,"1804,05970ZZ ",.01)
 ;;05970ZZ 
 ;;9002226.02101,"1804,05970ZZ ",.02)
 ;;05970ZZ 
 ;;9002226.02101,"1804,05970ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059730Z ",.01)
 ;;059730Z 
 ;;9002226.02101,"1804,059730Z ",.02)
 ;;059730Z 
 ;;9002226.02101,"1804,059730Z ",.03)
 ;;31
 ;;9002226.02101,"1804,05973ZZ ",.01)
 ;;05973ZZ 
 ;;9002226.02101,"1804,05973ZZ ",.02)
 ;;05973ZZ 
 ;;9002226.02101,"1804,05973ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059740Z ",.01)
 ;;059740Z 
 ;;9002226.02101,"1804,059740Z ",.02)
 ;;059740Z 
 ;;9002226.02101,"1804,059740Z ",.03)
 ;;31
 ;;9002226.02101,"1804,05974ZZ ",.01)
 ;;05974ZZ 
 ;;9002226.02101,"1804,05974ZZ ",.02)
 ;;05974ZZ 
 ;;9002226.02101,"1804,05974ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059800Z ",.01)
 ;;059800Z 
 ;;9002226.02101,"1804,059800Z ",.02)
 ;;059800Z 
 ;;9002226.02101,"1804,059800Z ",.03)
 ;;31
 ;;9002226.02101,"1804,05980ZZ ",.01)
 ;;05980ZZ 
 ;;9002226.02101,"1804,05980ZZ ",.02)
 ;;05980ZZ 
 ;;9002226.02101,"1804,05980ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059830Z ",.01)
 ;;059830Z 
 ;;9002226.02101,"1804,059830Z ",.02)
 ;;059830Z 
 ;;9002226.02101,"1804,059830Z ",.03)
 ;;31
 ;;9002226.02101,"1804,05983ZZ ",.01)
 ;;05983ZZ 
 ;;9002226.02101,"1804,05983ZZ ",.02)
 ;;05983ZZ 
 ;;9002226.02101,"1804,05983ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059840Z ",.01)
 ;;059840Z 
 ;;9002226.02101,"1804,059840Z ",.02)
 ;;059840Z 
 ;;9002226.02101,"1804,059840Z ",.03)
 ;;31
 ;;9002226.02101,"1804,05984ZZ ",.01)
 ;;05984ZZ 
 ;;9002226.02101,"1804,05984ZZ ",.02)
 ;;05984ZZ 
 ;;9002226.02101,"1804,05984ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059900Z ",.01)
 ;;059900Z 
 ;;9002226.02101,"1804,059900Z ",.02)
 ;;059900Z 
 ;;9002226.02101,"1804,059900Z ",.03)
 ;;31
 ;;9002226.02101,"1804,05990ZZ ",.01)
 ;;05990ZZ 
 ;;9002226.02101,"1804,05990ZZ ",.02)
 ;;05990ZZ 
 ;;9002226.02101,"1804,05990ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059930Z ",.01)
 ;;059930Z 
 ;;9002226.02101,"1804,059930Z ",.02)
 ;;059930Z 
 ;;9002226.02101,"1804,059930Z ",.03)
 ;;31
 ;;9002226.02101,"1804,05993ZZ ",.01)
 ;;05993ZZ 
 ;;9002226.02101,"1804,05993ZZ ",.02)
 ;;05993ZZ 
 ;;9002226.02101,"1804,05993ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059940Z ",.01)
 ;;059940Z 
 ;;9002226.02101,"1804,059940Z ",.02)
 ;;059940Z 
 ;;9002226.02101,"1804,059940Z ",.03)
 ;;31
 ;;9002226.02101,"1804,05994ZZ ",.01)
 ;;05994ZZ 
 ;;9002226.02101,"1804,05994ZZ ",.02)
 ;;05994ZZ 
 ;;9002226.02101,"1804,05994ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059A00Z ",.01)
 ;;059A00Z 
 ;;9002226.02101,"1804,059A00Z ",.02)
 ;;059A00Z 
 ;;9002226.02101,"1804,059A00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059A0ZZ ",.01)
 ;;059A0ZZ 
 ;;9002226.02101,"1804,059A0ZZ ",.02)
 ;;059A0ZZ 
 ;;9002226.02101,"1804,059A0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059A30Z ",.01)
 ;;059A30Z 
 ;;9002226.02101,"1804,059A30Z ",.02)
 ;;059A30Z 
 ;;9002226.02101,"1804,059A30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059A3ZZ ",.01)
 ;;059A3ZZ 
 ;;9002226.02101,"1804,059A3ZZ ",.02)
 ;;059A3ZZ 
 ;;9002226.02101,"1804,059A3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059A40Z ",.01)
 ;;059A40Z 
 ;;9002226.02101,"1804,059A40Z ",.02)
 ;;059A40Z 
 ;;9002226.02101,"1804,059A40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059A4ZZ ",.01)
 ;;059A4ZZ 
 ;;9002226.02101,"1804,059A4ZZ ",.02)
 ;;059A4ZZ 
 ;;9002226.02101,"1804,059A4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059B00Z ",.01)
 ;;059B00Z 
 ;;9002226.02101,"1804,059B00Z ",.02)
 ;;059B00Z 
 ;;9002226.02101,"1804,059B00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059B0ZZ ",.01)
 ;;059B0ZZ 
 ;;9002226.02101,"1804,059B0ZZ ",.02)
 ;;059B0ZZ 
 ;;9002226.02101,"1804,059B0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059B30Z ",.01)
 ;;059B30Z 
 ;;9002226.02101,"1804,059B30Z ",.02)
 ;;059B30Z 
 ;;9002226.02101,"1804,059B30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059B3ZZ ",.01)
 ;;059B3ZZ 
 ;;9002226.02101,"1804,059B3ZZ ",.02)
 ;;059B3ZZ 
 ;;9002226.02101,"1804,059B3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059B40Z ",.01)
 ;;059B40Z 
 ;;9002226.02101,"1804,059B40Z ",.02)
 ;;059B40Z 
 ;;9002226.02101,"1804,059B40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059B4ZZ ",.01)
 ;;059B4ZZ 
 ;;9002226.02101,"1804,059B4ZZ ",.02)
 ;;059B4ZZ 
 ;;9002226.02101,"1804,059B4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059C00Z ",.01)
 ;;059C00Z 
 ;;9002226.02101,"1804,059C00Z ",.02)
 ;;059C00Z 
 ;;9002226.02101,"1804,059C00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059C0ZZ ",.01)
 ;;059C0ZZ 
 ;;9002226.02101,"1804,059C0ZZ ",.02)
 ;;059C0ZZ 
 ;;9002226.02101,"1804,059C0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059C30Z ",.01)
 ;;059C30Z 
 ;;9002226.02101,"1804,059C30Z ",.02)
 ;;059C30Z 
 ;;9002226.02101,"1804,059C30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059C3ZZ ",.01)
 ;;059C3ZZ 
 ;;9002226.02101,"1804,059C3ZZ ",.02)
 ;;059C3ZZ 
 ;;9002226.02101,"1804,059C3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059C40Z ",.01)
 ;;059C40Z 
 ;;9002226.02101,"1804,059C40Z ",.02)
 ;;059C40Z 
 ;;9002226.02101,"1804,059C40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059C4ZZ ",.01)
 ;;059C4ZZ 
 ;;9002226.02101,"1804,059C4ZZ ",.02)
 ;;059C4ZZ 
 ;;9002226.02101,"1804,059C4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059D00Z ",.01)
 ;;059D00Z 
 ;;9002226.02101,"1804,059D00Z ",.02)
 ;;059D00Z 
 ;;9002226.02101,"1804,059D00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059D0ZZ ",.01)
 ;;059D0ZZ 
 ;;9002226.02101,"1804,059D0ZZ ",.02)
 ;;059D0ZZ 
 ;;9002226.02101,"1804,059D0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059D30Z ",.01)
 ;;059D30Z 
 ;;9002226.02101,"1804,059D30Z ",.02)
 ;;059D30Z 
 ;;9002226.02101,"1804,059D30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059D3ZZ ",.01)
 ;;059D3ZZ 
 ;;9002226.02101,"1804,059D3ZZ ",.02)
 ;;059D3ZZ 
 ;;9002226.02101,"1804,059D3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059D40Z ",.01)
 ;;059D40Z 
 ;;9002226.02101,"1804,059D40Z ",.02)
 ;;059D40Z 
 ;;9002226.02101,"1804,059D40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059D4ZZ ",.01)
 ;;059D4ZZ 
 ;;9002226.02101,"1804,059D4ZZ ",.02)
 ;;059D4ZZ 
 ;;9002226.02101,"1804,059D4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059F00Z ",.01)
 ;;059F00Z 
 ;;9002226.02101,"1804,059F00Z ",.02)
 ;;059F00Z 
 ;;9002226.02101,"1804,059F00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059F0ZZ ",.01)
 ;;059F0ZZ 
 ;;9002226.02101,"1804,059F0ZZ ",.02)
 ;;059F0ZZ 
 ;;9002226.02101,"1804,059F0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059F30Z ",.01)
 ;;059F30Z 
 ;;9002226.02101,"1804,059F30Z ",.02)
 ;;059F30Z 
 ;;9002226.02101,"1804,059F30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059F3ZZ ",.01)
 ;;059F3ZZ 
 ;;9002226.02101,"1804,059F3ZZ ",.02)
 ;;059F3ZZ 
 ;;9002226.02101,"1804,059F3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059F40Z ",.01)
 ;;059F40Z 
 ;;9002226.02101,"1804,059F40Z ",.02)
 ;;059F40Z 
 ;;9002226.02101,"1804,059F40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059F4ZZ ",.01)
 ;;059F4ZZ 
 ;;9002226.02101,"1804,059F4ZZ ",.02)
 ;;059F4ZZ 
 ;;9002226.02101,"1804,059F4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059G00Z ",.01)
 ;;059G00Z 
 ;;9002226.02101,"1804,059G00Z ",.02)
 ;;059G00Z 
 ;;9002226.02101,"1804,059G00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059G0ZZ ",.01)
 ;;059G0ZZ 
 ;;9002226.02101,"1804,059G0ZZ ",.02)
 ;;059G0ZZ 
 ;;9002226.02101,"1804,059G0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059G30Z ",.01)
 ;;059G30Z 
 ;;9002226.02101,"1804,059G30Z ",.02)
 ;;059G30Z 
 ;;9002226.02101,"1804,059G30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059G3ZZ ",.01)
 ;;059G3ZZ 
 ;;9002226.02101,"1804,059G3ZZ ",.02)
 ;;059G3ZZ 
 ;;9002226.02101,"1804,059G3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059G40Z ",.01)
 ;;059G40Z 
 ;;9002226.02101,"1804,059G40Z ",.02)
 ;;059G40Z 
 ;;9002226.02101,"1804,059G40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059G4ZZ ",.01)
 ;;059G4ZZ 
 ;;9002226.02101,"1804,059G4ZZ ",.02)
 ;;059G4ZZ 
 ;;9002226.02101,"1804,059G4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059H00Z ",.01)
 ;;059H00Z 
 ;;9002226.02101,"1804,059H00Z ",.02)
 ;;059H00Z 
 ;;9002226.02101,"1804,059H00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059H0ZZ ",.01)
 ;;059H0ZZ 
 ;;9002226.02101,"1804,059H0ZZ ",.02)
 ;;059H0ZZ 
 ;;9002226.02101,"1804,059H0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059H30Z ",.01)
 ;;059H30Z 
 ;;9002226.02101,"1804,059H30Z ",.02)
 ;;059H30Z 
 ;;9002226.02101,"1804,059H30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059H3ZZ ",.01)
 ;;059H3ZZ 
 ;;9002226.02101,"1804,059H3ZZ ",.02)
 ;;059H3ZZ 
 ;;9002226.02101,"1804,059H3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059H40Z ",.01)
 ;;059H40Z 
 ;;9002226.02101,"1804,059H40Z ",.02)
 ;;059H40Z 
 ;;9002226.02101,"1804,059H40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059H4ZZ ",.01)
 ;;059H4ZZ 
 ;;9002226.02101,"1804,059H4ZZ ",.02)
 ;;059H4ZZ 
 ;;9002226.02101,"1804,059H4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059L00Z ",.01)
 ;;059L00Z 
 ;;9002226.02101,"1804,059L00Z ",.02)
 ;;059L00Z 
 ;;9002226.02101,"1804,059L00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059L0ZZ ",.01)
 ;;059L0ZZ 
 ;;9002226.02101,"1804,059L0ZZ ",.02)
 ;;059L0ZZ 
 ;;9002226.02101,"1804,059L0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059L30Z ",.01)
 ;;059L30Z 
 ;;9002226.02101,"1804,059L30Z ",.02)
 ;;059L30Z 
 ;;9002226.02101,"1804,059L30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059L3ZZ ",.01)
 ;;059L3ZZ 
 ;;9002226.02101,"1804,059L3ZZ ",.02)
 ;;059L3ZZ 
 ;;9002226.02101,"1804,059L3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059L40Z ",.01)
 ;;059L40Z 
 ;;9002226.02101,"1804,059L40Z ",.02)
 ;;059L40Z 
 ;;9002226.02101,"1804,059L40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059L4ZZ ",.01)
 ;;059L4ZZ 
 ;;9002226.02101,"1804,059L4ZZ ",.02)
 ;;059L4ZZ 
 ;;9002226.02101,"1804,059L4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059M00Z ",.01)
 ;;059M00Z 
 ;;9002226.02101,"1804,059M00Z ",.02)
 ;;059M00Z 
 ;;9002226.02101,"1804,059M00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059M0ZZ ",.01)
 ;;059M0ZZ 
 ;;9002226.02101,"1804,059M0ZZ ",.02)
 ;;059M0ZZ 
 ;;9002226.02101,"1804,059M0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059M30Z ",.01)
 ;;059M30Z 
 ;;9002226.02101,"1804,059M30Z ",.02)
 ;;059M30Z 
 ;;9002226.02101,"1804,059M30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059M3ZZ ",.01)
 ;;059M3ZZ 
 ;;9002226.02101,"1804,059M3ZZ ",.02)
 ;;059M3ZZ 
 ;;9002226.02101,"1804,059M3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059M40Z ",.01)
 ;;059M40Z 
 ;;9002226.02101,"1804,059M40Z ",.02)
 ;;059M40Z 
 ;;9002226.02101,"1804,059M40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059M4ZZ ",.01)
 ;;059M4ZZ 
 ;;9002226.02101,"1804,059M4ZZ ",.02)
 ;;059M4ZZ 
 ;;9002226.02101,"1804,059M4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059N00Z ",.01)
 ;;059N00Z 
 ;;9002226.02101,"1804,059N00Z ",.02)
 ;;059N00Z 
 ;;9002226.02101,"1804,059N00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,059N0ZZ ",.01)
 ;;059N0ZZ 
 ;;9002226.02101,"1804,059N0ZZ ",.02)
 ;;059N0ZZ 
 ;;9002226.02101,"1804,059N0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,059N30Z ",.01)
 ;;059N30Z 
 ;;9002226.02101,"1804,059N30Z ",.02)
 ;;059N30Z 
 ;;9002226.02101,"1804,059N30Z ",.03)
 ;;31