ATXXB138 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0Y0B0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0B0ZZ ",.01)
 ;;0Y0B0ZZ 
 ;;9002226.02101,"1804,0Y0B0ZZ ",.02)
 ;;0Y0B0ZZ 
 ;;9002226.02101,"1804,0Y0B0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0B37Z ",.01)
 ;;0Y0B37Z 
 ;;9002226.02101,"1804,0Y0B37Z ",.02)
 ;;0Y0B37Z 
 ;;9002226.02101,"1804,0Y0B37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0B3JZ ",.01)
 ;;0Y0B3JZ 
 ;;9002226.02101,"1804,0Y0B3JZ ",.02)
 ;;0Y0B3JZ 
 ;;9002226.02101,"1804,0Y0B3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0B3KZ ",.01)
 ;;0Y0B3KZ 
 ;;9002226.02101,"1804,0Y0B3KZ ",.02)
 ;;0Y0B3KZ 
 ;;9002226.02101,"1804,0Y0B3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0B3ZZ ",.01)
 ;;0Y0B3ZZ 
 ;;9002226.02101,"1804,0Y0B3ZZ ",.02)
 ;;0Y0B3ZZ 
 ;;9002226.02101,"1804,0Y0B3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0B47Z ",.01)
 ;;0Y0B47Z 
 ;;9002226.02101,"1804,0Y0B47Z ",.02)
 ;;0Y0B47Z 
 ;;9002226.02101,"1804,0Y0B47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0B4JZ ",.01)
 ;;0Y0B4JZ 
 ;;9002226.02101,"1804,0Y0B4JZ ",.02)
 ;;0Y0B4JZ 
 ;;9002226.02101,"1804,0Y0B4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0B4KZ ",.01)
 ;;0Y0B4KZ 
 ;;9002226.02101,"1804,0Y0B4KZ ",.02)
 ;;0Y0B4KZ 
 ;;9002226.02101,"1804,0Y0B4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0B4ZZ ",.01)
 ;;0Y0B4ZZ 
 ;;9002226.02101,"1804,0Y0B4ZZ ",.02)
 ;;0Y0B4ZZ 
 ;;9002226.02101,"1804,0Y0B4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C07Z ",.01)
 ;;0Y0C07Z 
 ;;9002226.02101,"1804,0Y0C07Z ",.02)
 ;;0Y0C07Z 
 ;;9002226.02101,"1804,0Y0C07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C0JZ ",.01)
 ;;0Y0C0JZ 
 ;;9002226.02101,"1804,0Y0C0JZ ",.02)
 ;;0Y0C0JZ 
 ;;9002226.02101,"1804,0Y0C0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C0KZ ",.01)
 ;;0Y0C0KZ 
 ;;9002226.02101,"1804,0Y0C0KZ ",.02)
 ;;0Y0C0KZ 
 ;;9002226.02101,"1804,0Y0C0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C0ZZ ",.01)
 ;;0Y0C0ZZ 
 ;;9002226.02101,"1804,0Y0C0ZZ ",.02)
 ;;0Y0C0ZZ 
 ;;9002226.02101,"1804,0Y0C0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C37Z ",.01)
 ;;0Y0C37Z 
 ;;9002226.02101,"1804,0Y0C37Z ",.02)
 ;;0Y0C37Z 
 ;;9002226.02101,"1804,0Y0C37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C3JZ ",.01)
 ;;0Y0C3JZ 
 ;;9002226.02101,"1804,0Y0C3JZ ",.02)
 ;;0Y0C3JZ 
 ;;9002226.02101,"1804,0Y0C3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C3KZ ",.01)
 ;;0Y0C3KZ 
 ;;9002226.02101,"1804,0Y0C3KZ ",.02)
 ;;0Y0C3KZ 
 ;;9002226.02101,"1804,0Y0C3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C3ZZ ",.01)
 ;;0Y0C3ZZ 
 ;;9002226.02101,"1804,0Y0C3ZZ ",.02)
 ;;0Y0C3ZZ 
 ;;9002226.02101,"1804,0Y0C3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C47Z ",.01)
 ;;0Y0C47Z 
 ;;9002226.02101,"1804,0Y0C47Z ",.02)
 ;;0Y0C47Z 
 ;;9002226.02101,"1804,0Y0C47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C4JZ ",.01)
 ;;0Y0C4JZ 
 ;;9002226.02101,"1804,0Y0C4JZ ",.02)
 ;;0Y0C4JZ 
 ;;9002226.02101,"1804,0Y0C4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C4KZ ",.01)
 ;;0Y0C4KZ 
 ;;9002226.02101,"1804,0Y0C4KZ ",.02)
 ;;0Y0C4KZ 
 ;;9002226.02101,"1804,0Y0C4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0C4ZZ ",.01)
 ;;0Y0C4ZZ 
 ;;9002226.02101,"1804,0Y0C4ZZ ",.02)
 ;;0Y0C4ZZ 
 ;;9002226.02101,"1804,0Y0C4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D07Z ",.01)
 ;;0Y0D07Z 
 ;;9002226.02101,"1804,0Y0D07Z ",.02)
 ;;0Y0D07Z 
 ;;9002226.02101,"1804,0Y0D07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D0JZ ",.01)
 ;;0Y0D0JZ 
 ;;9002226.02101,"1804,0Y0D0JZ ",.02)
 ;;0Y0D0JZ 
 ;;9002226.02101,"1804,0Y0D0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D0KZ ",.01)
 ;;0Y0D0KZ 
 ;;9002226.02101,"1804,0Y0D0KZ ",.02)
 ;;0Y0D0KZ 
 ;;9002226.02101,"1804,0Y0D0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D0ZZ ",.01)
 ;;0Y0D0ZZ 
 ;;9002226.02101,"1804,0Y0D0ZZ ",.02)
 ;;0Y0D0ZZ 
 ;;9002226.02101,"1804,0Y0D0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D37Z ",.01)
 ;;0Y0D37Z 
 ;;9002226.02101,"1804,0Y0D37Z ",.02)
 ;;0Y0D37Z 
 ;;9002226.02101,"1804,0Y0D37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D3JZ ",.01)
 ;;0Y0D3JZ 
 ;;9002226.02101,"1804,0Y0D3JZ ",.02)
 ;;0Y0D3JZ 
 ;;9002226.02101,"1804,0Y0D3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D3KZ ",.01)
 ;;0Y0D3KZ 
 ;;9002226.02101,"1804,0Y0D3KZ ",.02)
 ;;0Y0D3KZ 
 ;;9002226.02101,"1804,0Y0D3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D3ZZ ",.01)
 ;;0Y0D3ZZ 
 ;;9002226.02101,"1804,0Y0D3ZZ ",.02)
 ;;0Y0D3ZZ 
 ;;9002226.02101,"1804,0Y0D3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D47Z ",.01)
 ;;0Y0D47Z 
 ;;9002226.02101,"1804,0Y0D47Z ",.02)
 ;;0Y0D47Z 
 ;;9002226.02101,"1804,0Y0D47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D4JZ ",.01)
 ;;0Y0D4JZ 
 ;;9002226.02101,"1804,0Y0D4JZ ",.02)
 ;;0Y0D4JZ 
 ;;9002226.02101,"1804,0Y0D4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D4KZ ",.01)
 ;;0Y0D4KZ 
 ;;9002226.02101,"1804,0Y0D4KZ ",.02)
 ;;0Y0D4KZ 
 ;;9002226.02101,"1804,0Y0D4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0D4ZZ ",.01)
 ;;0Y0D4ZZ 
 ;;9002226.02101,"1804,0Y0D4ZZ ",.02)
 ;;0Y0D4ZZ 
 ;;9002226.02101,"1804,0Y0D4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F07Z ",.01)
 ;;0Y0F07Z 
 ;;9002226.02101,"1804,0Y0F07Z ",.02)
 ;;0Y0F07Z 
 ;;9002226.02101,"1804,0Y0F07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F0JZ ",.01)
 ;;0Y0F0JZ 
 ;;9002226.02101,"1804,0Y0F0JZ ",.02)
 ;;0Y0F0JZ 
 ;;9002226.02101,"1804,0Y0F0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F0KZ ",.01)
 ;;0Y0F0KZ 
 ;;9002226.02101,"1804,0Y0F0KZ ",.02)
 ;;0Y0F0KZ 
 ;;9002226.02101,"1804,0Y0F0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F0ZZ ",.01)
 ;;0Y0F0ZZ 
 ;;9002226.02101,"1804,0Y0F0ZZ ",.02)
 ;;0Y0F0ZZ 
 ;;9002226.02101,"1804,0Y0F0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F37Z ",.01)
 ;;0Y0F37Z 
 ;;9002226.02101,"1804,0Y0F37Z ",.02)
 ;;0Y0F37Z 
 ;;9002226.02101,"1804,0Y0F37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F3JZ ",.01)
 ;;0Y0F3JZ 
 ;;9002226.02101,"1804,0Y0F3JZ ",.02)
 ;;0Y0F3JZ 
 ;;9002226.02101,"1804,0Y0F3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F3KZ ",.01)
 ;;0Y0F3KZ 
 ;;9002226.02101,"1804,0Y0F3KZ ",.02)
 ;;0Y0F3KZ 
 ;;9002226.02101,"1804,0Y0F3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F3ZZ ",.01)
 ;;0Y0F3ZZ 
 ;;9002226.02101,"1804,0Y0F3ZZ ",.02)
 ;;0Y0F3ZZ 
 ;;9002226.02101,"1804,0Y0F3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F47Z ",.01)
 ;;0Y0F47Z 
 ;;9002226.02101,"1804,0Y0F47Z ",.02)
 ;;0Y0F47Z 
 ;;9002226.02101,"1804,0Y0F47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F4JZ ",.01)
 ;;0Y0F4JZ 
 ;;9002226.02101,"1804,0Y0F4JZ ",.02)
 ;;0Y0F4JZ 
 ;;9002226.02101,"1804,0Y0F4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F4KZ ",.01)
 ;;0Y0F4KZ 
 ;;9002226.02101,"1804,0Y0F4KZ ",.02)
 ;;0Y0F4KZ 
 ;;9002226.02101,"1804,0Y0F4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0F4ZZ ",.01)
 ;;0Y0F4ZZ 
 ;;9002226.02101,"1804,0Y0F4ZZ ",.02)
 ;;0Y0F4ZZ 
 ;;9002226.02101,"1804,0Y0F4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G07Z ",.01)
 ;;0Y0G07Z 
 ;;9002226.02101,"1804,0Y0G07Z ",.02)
 ;;0Y0G07Z 
 ;;9002226.02101,"1804,0Y0G07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G0JZ ",.01)
 ;;0Y0G0JZ 
 ;;9002226.02101,"1804,0Y0G0JZ ",.02)
 ;;0Y0G0JZ 
 ;;9002226.02101,"1804,0Y0G0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G0KZ ",.01)
 ;;0Y0G0KZ 
 ;;9002226.02101,"1804,0Y0G0KZ ",.02)
 ;;0Y0G0KZ 
 ;;9002226.02101,"1804,0Y0G0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G0ZZ ",.01)
 ;;0Y0G0ZZ 
 ;;9002226.02101,"1804,0Y0G0ZZ ",.02)
 ;;0Y0G0ZZ 
 ;;9002226.02101,"1804,0Y0G0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G37Z ",.01)
 ;;0Y0G37Z 
 ;;9002226.02101,"1804,0Y0G37Z ",.02)
 ;;0Y0G37Z 
 ;;9002226.02101,"1804,0Y0G37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G3JZ ",.01)
 ;;0Y0G3JZ 
 ;;9002226.02101,"1804,0Y0G3JZ ",.02)
 ;;0Y0G3JZ 
 ;;9002226.02101,"1804,0Y0G3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G3KZ ",.01)
 ;;0Y0G3KZ 
 ;;9002226.02101,"1804,0Y0G3KZ ",.02)
 ;;0Y0G3KZ 
 ;;9002226.02101,"1804,0Y0G3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G3ZZ ",.01)
 ;;0Y0G3ZZ 
 ;;9002226.02101,"1804,0Y0G3ZZ ",.02)
 ;;0Y0G3ZZ 
 ;;9002226.02101,"1804,0Y0G3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G47Z ",.01)
 ;;0Y0G47Z 
 ;;9002226.02101,"1804,0Y0G47Z ",.02)
 ;;0Y0G47Z 
 ;;9002226.02101,"1804,0Y0G47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G4JZ ",.01)
 ;;0Y0G4JZ 
 ;;9002226.02101,"1804,0Y0G4JZ ",.02)
 ;;0Y0G4JZ 
 ;;9002226.02101,"1804,0Y0G4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G4KZ ",.01)
 ;;0Y0G4KZ 
 ;;9002226.02101,"1804,0Y0G4KZ ",.02)
 ;;0Y0G4KZ 
 ;;9002226.02101,"1804,0Y0G4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0G4ZZ ",.01)
 ;;0Y0G4ZZ 
 ;;9002226.02101,"1804,0Y0G4ZZ ",.02)
 ;;0Y0G4ZZ 
 ;;9002226.02101,"1804,0Y0G4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H07Z ",.01)
 ;;0Y0H07Z 
 ;;9002226.02101,"1804,0Y0H07Z ",.02)
 ;;0Y0H07Z 
 ;;9002226.02101,"1804,0Y0H07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H0JZ ",.01)
 ;;0Y0H0JZ 
 ;;9002226.02101,"1804,0Y0H0JZ ",.02)
 ;;0Y0H0JZ 
 ;;9002226.02101,"1804,0Y0H0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H0KZ ",.01)
 ;;0Y0H0KZ 
 ;;9002226.02101,"1804,0Y0H0KZ ",.02)
 ;;0Y0H0KZ 
 ;;9002226.02101,"1804,0Y0H0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H0ZZ ",.01)
 ;;0Y0H0ZZ 
 ;;9002226.02101,"1804,0Y0H0ZZ ",.02)
 ;;0Y0H0ZZ 
 ;;9002226.02101,"1804,0Y0H0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H37Z ",.01)
 ;;0Y0H37Z 
 ;;9002226.02101,"1804,0Y0H37Z ",.02)
 ;;0Y0H37Z 
 ;;9002226.02101,"1804,0Y0H37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H3JZ ",.01)
 ;;0Y0H3JZ 
 ;;9002226.02101,"1804,0Y0H3JZ ",.02)
 ;;0Y0H3JZ 
 ;;9002226.02101,"1804,0Y0H3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H3KZ ",.01)
 ;;0Y0H3KZ 
 ;;9002226.02101,"1804,0Y0H3KZ ",.02)
 ;;0Y0H3KZ 
 ;;9002226.02101,"1804,0Y0H3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H3ZZ ",.01)
 ;;0Y0H3ZZ 
 ;;9002226.02101,"1804,0Y0H3ZZ ",.02)
 ;;0Y0H3ZZ 
 ;;9002226.02101,"1804,0Y0H3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H47Z ",.01)
 ;;0Y0H47Z 
 ;;9002226.02101,"1804,0Y0H47Z ",.02)
 ;;0Y0H47Z 
 ;;9002226.02101,"1804,0Y0H47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H4JZ ",.01)
 ;;0Y0H4JZ 
 ;;9002226.02101,"1804,0Y0H4JZ ",.02)
 ;;0Y0H4JZ 
 ;;9002226.02101,"1804,0Y0H4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H4KZ ",.01)
 ;;0Y0H4KZ 
 ;;9002226.02101,"1804,0Y0H4KZ ",.02)
 ;;0Y0H4KZ 
 ;;9002226.02101,"1804,0Y0H4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0H4ZZ ",.01)
 ;;0Y0H4ZZ 
 ;;9002226.02101,"1804,0Y0H4ZZ ",.02)
 ;;0Y0H4ZZ 
 ;;9002226.02101,"1804,0Y0H4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0J07Z ",.01)
 ;;0Y0J07Z 
 ;;9002226.02101,"1804,0Y0J07Z ",.02)
 ;;0Y0J07Z 
 ;;9002226.02101,"1804,0Y0J07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0J0JZ ",.01)
 ;;0Y0J0JZ 
 ;;9002226.02101,"1804,0Y0J0JZ ",.02)
 ;;0Y0J0JZ 
 ;;9002226.02101,"1804,0Y0J0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0J0KZ ",.01)
 ;;0Y0J0KZ 
 ;;9002226.02101,"1804,0Y0J0KZ ",.02)
 ;;0Y0J0KZ 
 ;;9002226.02101,"1804,0Y0J0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0J0ZZ ",.01)
 ;;0Y0J0ZZ 
 ;;9002226.02101,"1804,0Y0J0ZZ ",.02)
 ;;0Y0J0ZZ 
 ;;9002226.02101,"1804,0Y0J0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0J37Z ",.01)
 ;;0Y0J37Z 
 ;;9002226.02101,"1804,0Y0J37Z ",.02)
 ;;0Y0J37Z 
 ;;9002226.02101,"1804,0Y0J37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0J3JZ ",.01)
 ;;0Y0J3JZ 
 ;;9002226.02101,"1804,0Y0J3JZ ",.02)
 ;;0Y0J3JZ 
 ;;9002226.02101,"1804,0Y0J3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0J3KZ ",.01)
 ;;0Y0J3KZ 
 ;;9002226.02101,"1804,0Y0J3KZ ",.02)
 ;;0Y0J3KZ 
 ;;9002226.02101,"1804,0Y0J3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0J3ZZ ",.01)
 ;;0Y0J3ZZ 
 ;;9002226.02101,"1804,0Y0J3ZZ ",.02)
 ;;0Y0J3ZZ 
 ;;9002226.02101,"1804,0Y0J3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0Y0J47Z ",.01)
 ;;0Y0J47Z 
 ;;9002226.02101,"1804,0Y0J47Z ",.02)
 ;;0Y0J47Z 
 ;;9002226.02101,"1804,0Y0J47Z ",.03)
 ;;31