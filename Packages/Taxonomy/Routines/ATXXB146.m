ATXXB146 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0YQEXZZ ",.02)
 ;;0YQEXZZ 
 ;;9002226.02101,"1804,0YQEXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU007Z ",.01)
 ;;0YU007Z 
 ;;9002226.02101,"1804,0YU007Z ",.02)
 ;;0YU007Z 
 ;;9002226.02101,"1804,0YU007Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU00JZ ",.01)
 ;;0YU00JZ 
 ;;9002226.02101,"1804,0YU00JZ ",.02)
 ;;0YU00JZ 
 ;;9002226.02101,"1804,0YU00JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU00KZ ",.01)
 ;;0YU00KZ 
 ;;9002226.02101,"1804,0YU00KZ ",.02)
 ;;0YU00KZ 
 ;;9002226.02101,"1804,0YU00KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU047Z ",.01)
 ;;0YU047Z 
 ;;9002226.02101,"1804,0YU047Z ",.02)
 ;;0YU047Z 
 ;;9002226.02101,"1804,0YU047Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU04JZ ",.01)
 ;;0YU04JZ 
 ;;9002226.02101,"1804,0YU04JZ ",.02)
 ;;0YU04JZ 
 ;;9002226.02101,"1804,0YU04JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU04KZ ",.01)
 ;;0YU04KZ 
 ;;9002226.02101,"1804,0YU04KZ ",.02)
 ;;0YU04KZ 
 ;;9002226.02101,"1804,0YU04KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU107Z ",.01)
 ;;0YU107Z 
 ;;9002226.02101,"1804,0YU107Z ",.02)
 ;;0YU107Z 
 ;;9002226.02101,"1804,0YU107Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU10JZ ",.01)
 ;;0YU10JZ 
 ;;9002226.02101,"1804,0YU10JZ ",.02)
 ;;0YU10JZ 
 ;;9002226.02101,"1804,0YU10JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU10KZ ",.01)
 ;;0YU10KZ 
 ;;9002226.02101,"1804,0YU10KZ ",.02)
 ;;0YU10KZ 
 ;;9002226.02101,"1804,0YU10KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU147Z ",.01)
 ;;0YU147Z 
 ;;9002226.02101,"1804,0YU147Z ",.02)
 ;;0YU147Z 
 ;;9002226.02101,"1804,0YU147Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU14JZ ",.01)
 ;;0YU14JZ 
 ;;9002226.02101,"1804,0YU14JZ ",.02)
 ;;0YU14JZ 
 ;;9002226.02101,"1804,0YU14JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU14KZ ",.01)
 ;;0YU14KZ 
 ;;9002226.02101,"1804,0YU14KZ ",.02)
 ;;0YU14KZ 
 ;;9002226.02101,"1804,0YU14KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU907Z ",.01)
 ;;0YU907Z 
 ;;9002226.02101,"1804,0YU907Z ",.02)
 ;;0YU907Z 
 ;;9002226.02101,"1804,0YU907Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU90JZ ",.01)
 ;;0YU90JZ 
 ;;9002226.02101,"1804,0YU90JZ ",.02)
 ;;0YU90JZ 
 ;;9002226.02101,"1804,0YU90JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU90KZ ",.01)
 ;;0YU90KZ 
 ;;9002226.02101,"1804,0YU90KZ ",.02)
 ;;0YU90KZ 
 ;;9002226.02101,"1804,0YU90KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU947Z ",.01)
 ;;0YU947Z 
 ;;9002226.02101,"1804,0YU947Z ",.02)
 ;;0YU947Z 
 ;;9002226.02101,"1804,0YU947Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU94JZ ",.01)
 ;;0YU94JZ 
 ;;9002226.02101,"1804,0YU94JZ ",.02)
 ;;0YU94JZ 
 ;;9002226.02101,"1804,0YU94JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YU94KZ ",.01)
 ;;0YU94KZ 
 ;;9002226.02101,"1804,0YU94KZ ",.02)
 ;;0YU94KZ 
 ;;9002226.02101,"1804,0YU94KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUB07Z ",.01)
 ;;0YUB07Z 
 ;;9002226.02101,"1804,0YUB07Z ",.02)
 ;;0YUB07Z 
 ;;9002226.02101,"1804,0YUB07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUB0JZ ",.01)
 ;;0YUB0JZ 
 ;;9002226.02101,"1804,0YUB0JZ ",.02)
 ;;0YUB0JZ 
 ;;9002226.02101,"1804,0YUB0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUB0KZ ",.01)
 ;;0YUB0KZ 
 ;;9002226.02101,"1804,0YUB0KZ ",.02)
 ;;0YUB0KZ 
 ;;9002226.02101,"1804,0YUB0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUB47Z ",.01)
 ;;0YUB47Z 
 ;;9002226.02101,"1804,0YUB47Z ",.02)
 ;;0YUB47Z 
 ;;9002226.02101,"1804,0YUB47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUB4JZ ",.01)
 ;;0YUB4JZ 
 ;;9002226.02101,"1804,0YUB4JZ ",.02)
 ;;0YUB4JZ 
 ;;9002226.02101,"1804,0YUB4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUB4KZ ",.01)
 ;;0YUB4KZ 
 ;;9002226.02101,"1804,0YUB4KZ ",.02)
 ;;0YUB4KZ 
 ;;9002226.02101,"1804,0YUB4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUC07Z ",.01)
 ;;0YUC07Z 
 ;;9002226.02101,"1804,0YUC07Z ",.02)
 ;;0YUC07Z 
 ;;9002226.02101,"1804,0YUC07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUC0JZ ",.01)
 ;;0YUC0JZ 
 ;;9002226.02101,"1804,0YUC0JZ ",.02)
 ;;0YUC0JZ 
 ;;9002226.02101,"1804,0YUC0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUC0KZ ",.01)
 ;;0YUC0KZ 
 ;;9002226.02101,"1804,0YUC0KZ ",.02)
 ;;0YUC0KZ 
 ;;9002226.02101,"1804,0YUC0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUC47Z ",.01)
 ;;0YUC47Z 
 ;;9002226.02101,"1804,0YUC47Z ",.02)
 ;;0YUC47Z 
 ;;9002226.02101,"1804,0YUC47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUC4JZ ",.01)
 ;;0YUC4JZ 
 ;;9002226.02101,"1804,0YUC4JZ ",.02)
 ;;0YUC4JZ 
 ;;9002226.02101,"1804,0YUC4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUC4KZ ",.01)
 ;;0YUC4KZ 
 ;;9002226.02101,"1804,0YUC4KZ ",.02)
 ;;0YUC4KZ 
 ;;9002226.02101,"1804,0YUC4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUD07Z ",.01)
 ;;0YUD07Z 
 ;;9002226.02101,"1804,0YUD07Z ",.02)
 ;;0YUD07Z 
 ;;9002226.02101,"1804,0YUD07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUD0JZ ",.01)
 ;;0YUD0JZ 
 ;;9002226.02101,"1804,0YUD0JZ ",.02)
 ;;0YUD0JZ 
 ;;9002226.02101,"1804,0YUD0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUD0KZ ",.01)
 ;;0YUD0KZ 
 ;;9002226.02101,"1804,0YUD0KZ ",.02)
 ;;0YUD0KZ 
 ;;9002226.02101,"1804,0YUD0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUD47Z ",.01)
 ;;0YUD47Z 
 ;;9002226.02101,"1804,0YUD47Z ",.02)
 ;;0YUD47Z 
 ;;9002226.02101,"1804,0YUD47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUD4JZ ",.01)
 ;;0YUD4JZ 
 ;;9002226.02101,"1804,0YUD4JZ ",.02)
 ;;0YUD4JZ 
 ;;9002226.02101,"1804,0YUD4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUD4KZ ",.01)
 ;;0YUD4KZ 
 ;;9002226.02101,"1804,0YUD4KZ ",.02)
 ;;0YUD4KZ 
 ;;9002226.02101,"1804,0YUD4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUF07Z ",.01)
 ;;0YUF07Z 
 ;;9002226.02101,"1804,0YUF07Z ",.02)
 ;;0YUF07Z 
 ;;9002226.02101,"1804,0YUF07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUF0JZ ",.01)
 ;;0YUF0JZ 
 ;;9002226.02101,"1804,0YUF0JZ ",.02)
 ;;0YUF0JZ 
 ;;9002226.02101,"1804,0YUF0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUF0KZ ",.01)
 ;;0YUF0KZ 
 ;;9002226.02101,"1804,0YUF0KZ ",.02)
 ;;0YUF0KZ 
 ;;9002226.02101,"1804,0YUF0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUF47Z ",.01)
 ;;0YUF47Z 
 ;;9002226.02101,"1804,0YUF47Z ",.02)
 ;;0YUF47Z 
 ;;9002226.02101,"1804,0YUF47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUF4JZ ",.01)
 ;;0YUF4JZ 
 ;;9002226.02101,"1804,0YUF4JZ ",.02)
 ;;0YUF4JZ 
 ;;9002226.02101,"1804,0YUF4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUF4KZ ",.01)
 ;;0YUF4KZ 
 ;;9002226.02101,"1804,0YUF4KZ ",.02)
 ;;0YUF4KZ 
 ;;9002226.02101,"1804,0YUF4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUG07Z ",.01)
 ;;0YUG07Z 
 ;;9002226.02101,"1804,0YUG07Z ",.02)
 ;;0YUG07Z 
 ;;9002226.02101,"1804,0YUG07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUG0JZ ",.01)
 ;;0YUG0JZ 
 ;;9002226.02101,"1804,0YUG0JZ ",.02)
 ;;0YUG0JZ 
 ;;9002226.02101,"1804,0YUG0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUG0KZ ",.01)
 ;;0YUG0KZ 
 ;;9002226.02101,"1804,0YUG0KZ ",.02)
 ;;0YUG0KZ 
 ;;9002226.02101,"1804,0YUG0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUG47Z ",.01)
 ;;0YUG47Z 
 ;;9002226.02101,"1804,0YUG47Z ",.02)
 ;;0YUG47Z 
 ;;9002226.02101,"1804,0YUG47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUG4JZ ",.01)
 ;;0YUG4JZ 
 ;;9002226.02101,"1804,0YUG4JZ ",.02)
 ;;0YUG4JZ 
 ;;9002226.02101,"1804,0YUG4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUG4KZ ",.01)
 ;;0YUG4KZ 
 ;;9002226.02101,"1804,0YUG4KZ ",.02)
 ;;0YUG4KZ 
 ;;9002226.02101,"1804,0YUG4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUH07Z ",.01)
 ;;0YUH07Z 
 ;;9002226.02101,"1804,0YUH07Z ",.02)
 ;;0YUH07Z 
 ;;9002226.02101,"1804,0YUH07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUH0JZ ",.01)
 ;;0YUH0JZ 
 ;;9002226.02101,"1804,0YUH0JZ ",.02)
 ;;0YUH0JZ 
 ;;9002226.02101,"1804,0YUH0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUH0KZ ",.01)
 ;;0YUH0KZ 
 ;;9002226.02101,"1804,0YUH0KZ ",.02)
 ;;0YUH0KZ 
 ;;9002226.02101,"1804,0YUH0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUH47Z ",.01)
 ;;0YUH47Z 
 ;;9002226.02101,"1804,0YUH47Z ",.02)
 ;;0YUH47Z 
 ;;9002226.02101,"1804,0YUH47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUH4JZ ",.01)
 ;;0YUH4JZ 
 ;;9002226.02101,"1804,0YUH4JZ ",.02)
 ;;0YUH4JZ 
 ;;9002226.02101,"1804,0YUH4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUH4KZ ",.01)
 ;;0YUH4KZ 
 ;;9002226.02101,"1804,0YUH4KZ ",.02)
 ;;0YUH4KZ 
 ;;9002226.02101,"1804,0YUH4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUJ07Z ",.01)
 ;;0YUJ07Z 
 ;;9002226.02101,"1804,0YUJ07Z ",.02)
 ;;0YUJ07Z 
 ;;9002226.02101,"1804,0YUJ07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUJ0JZ ",.01)
 ;;0YUJ0JZ 
 ;;9002226.02101,"1804,0YUJ0JZ ",.02)
 ;;0YUJ0JZ 
 ;;9002226.02101,"1804,0YUJ0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUJ0KZ ",.01)
 ;;0YUJ0KZ 
 ;;9002226.02101,"1804,0YUJ0KZ ",.02)
 ;;0YUJ0KZ 
 ;;9002226.02101,"1804,0YUJ0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUJ47Z ",.01)
 ;;0YUJ47Z 
 ;;9002226.02101,"1804,0YUJ47Z ",.02)
 ;;0YUJ47Z 
 ;;9002226.02101,"1804,0YUJ47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUJ4JZ ",.01)
 ;;0YUJ4JZ 
 ;;9002226.02101,"1804,0YUJ4JZ ",.02)
 ;;0YUJ4JZ 
 ;;9002226.02101,"1804,0YUJ4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUJ4KZ ",.01)
 ;;0YUJ4KZ 
 ;;9002226.02101,"1804,0YUJ4KZ ",.02)
 ;;0YUJ4KZ 
 ;;9002226.02101,"1804,0YUJ4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUK07Z ",.01)
 ;;0YUK07Z 
 ;;9002226.02101,"1804,0YUK07Z ",.02)
 ;;0YUK07Z 
 ;;9002226.02101,"1804,0YUK07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUK0JZ ",.01)
 ;;0YUK0JZ 
 ;;9002226.02101,"1804,0YUK0JZ ",.02)
 ;;0YUK0JZ 
 ;;9002226.02101,"1804,0YUK0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUK0KZ ",.01)
 ;;0YUK0KZ 
 ;;9002226.02101,"1804,0YUK0KZ ",.02)
 ;;0YUK0KZ 
 ;;9002226.02101,"1804,0YUK0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUK47Z ",.01)
 ;;0YUK47Z 
 ;;9002226.02101,"1804,0YUK47Z ",.02)
 ;;0YUK47Z 
 ;;9002226.02101,"1804,0YUK47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUK4JZ ",.01)
 ;;0YUK4JZ 
 ;;9002226.02101,"1804,0YUK4JZ ",.02)
 ;;0YUK4JZ 
 ;;9002226.02101,"1804,0YUK4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUK4KZ ",.01)
 ;;0YUK4KZ 
 ;;9002226.02101,"1804,0YUK4KZ ",.02)
 ;;0YUK4KZ 
 ;;9002226.02101,"1804,0YUK4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUL07Z ",.01)
 ;;0YUL07Z 
 ;;9002226.02101,"1804,0YUL07Z ",.02)
 ;;0YUL07Z 
 ;;9002226.02101,"1804,0YUL07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUL0JZ ",.01)
 ;;0YUL0JZ 
 ;;9002226.02101,"1804,0YUL0JZ ",.02)
 ;;0YUL0JZ 
 ;;9002226.02101,"1804,0YUL0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUL0KZ ",.01)
 ;;0YUL0KZ 
 ;;9002226.02101,"1804,0YUL0KZ ",.02)
 ;;0YUL0KZ 
 ;;9002226.02101,"1804,0YUL0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUL47Z ",.01)
 ;;0YUL47Z 
 ;;9002226.02101,"1804,0YUL47Z ",.02)
 ;;0YUL47Z 
 ;;9002226.02101,"1804,0YUL47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUL4JZ ",.01)
 ;;0YUL4JZ 
 ;;9002226.02101,"1804,0YUL4JZ ",.02)
 ;;0YUL4JZ 
 ;;9002226.02101,"1804,0YUL4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUL4KZ ",.01)
 ;;0YUL4KZ 
 ;;9002226.02101,"1804,0YUL4KZ ",.02)
 ;;0YUL4KZ 
 ;;9002226.02101,"1804,0YUL4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUM07Z ",.01)
 ;;0YUM07Z 
 ;;9002226.02101,"1804,0YUM07Z ",.02)
 ;;0YUM07Z 
 ;;9002226.02101,"1804,0YUM07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUM0JZ ",.01)
 ;;0YUM0JZ 
 ;;9002226.02101,"1804,0YUM0JZ ",.02)
 ;;0YUM0JZ 
 ;;9002226.02101,"1804,0YUM0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUM0KZ ",.01)
 ;;0YUM0KZ 
 ;;9002226.02101,"1804,0YUM0KZ ",.02)
 ;;0YUM0KZ 
 ;;9002226.02101,"1804,0YUM0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUM47Z ",.01)
 ;;0YUM47Z 
 ;;9002226.02101,"1804,0YUM47Z ",.02)
 ;;0YUM47Z 
 ;;9002226.02101,"1804,0YUM47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUM4JZ ",.01)
 ;;0YUM4JZ 
 ;;9002226.02101,"1804,0YUM4JZ ",.02)
 ;;0YUM4JZ 
 ;;9002226.02101,"1804,0YUM4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUM4KZ ",.01)
 ;;0YUM4KZ 
 ;;9002226.02101,"1804,0YUM4KZ ",.02)
 ;;0YUM4KZ 