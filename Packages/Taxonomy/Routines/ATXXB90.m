ATXXB90 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0JWW33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWW37Z ",.01)
 ;;0JWW37Z 
 ;;9002226.02101,"1804,0JWW37Z ",.02)
 ;;0JWW37Z 
 ;;9002226.02101,"1804,0JWW37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWW3HZ ",.01)
 ;;0JWW3HZ 
 ;;9002226.02101,"1804,0JWW3HZ ",.02)
 ;;0JWW3HZ 
 ;;9002226.02101,"1804,0JWW3HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWW3JZ ",.01)
 ;;0JWW3JZ 
 ;;9002226.02101,"1804,0JWW3JZ ",.02)
 ;;0JWW3JZ 
 ;;9002226.02101,"1804,0JWW3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWW3KZ ",.01)
 ;;0JWW3KZ 
 ;;9002226.02101,"1804,0JWW3KZ ",.02)
 ;;0JWW3KZ 
 ;;9002226.02101,"1804,0JWW3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWW3NZ ",.01)
 ;;0JWW3NZ 
 ;;9002226.02101,"1804,0JWW3NZ ",.02)
 ;;0JWW3NZ 
 ;;9002226.02101,"1804,0JWW3NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWW3VZ ",.01)
 ;;0JWW3VZ 
 ;;9002226.02101,"1804,0JWW3VZ ",.02)
 ;;0JWW3VZ 
 ;;9002226.02101,"1804,0JWW3VZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWW3WZ ",.01)
 ;;0JWW3WZ 
 ;;9002226.02101,"1804,0JWW3WZ ",.02)
 ;;0JWW3WZ 
 ;;9002226.02101,"1804,0JWW3WZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWW3XZ ",.01)
 ;;0JWW3XZ 
 ;;9002226.02101,"1804,0JWW3XZ ",.02)
 ;;0JWW3XZ 
 ;;9002226.02101,"1804,0JWW3XZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWWX0Z ",.01)
 ;;0JWWX0Z 
 ;;9002226.02101,"1804,0JWWX0Z ",.02)
 ;;0JWWX0Z 
 ;;9002226.02101,"1804,0JWWX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWWX3Z ",.01)
 ;;0JWWX3Z 
 ;;9002226.02101,"1804,0JWWX3Z ",.02)
 ;;0JWWX3Z 
 ;;9002226.02101,"1804,0JWWX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWWX7Z ",.01)
 ;;0JWWX7Z 
 ;;9002226.02101,"1804,0JWWX7Z ",.02)
 ;;0JWWX7Z 
 ;;9002226.02101,"1804,0JWWX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWWXHZ ",.01)
 ;;0JWWXHZ 
 ;;9002226.02101,"1804,0JWWXHZ ",.02)
 ;;0JWWXHZ 
 ;;9002226.02101,"1804,0JWWXHZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWWXJZ ",.01)
 ;;0JWWXJZ 
 ;;9002226.02101,"1804,0JWWXJZ ",.02)
 ;;0JWWXJZ 
 ;;9002226.02101,"1804,0JWWXJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWWXKZ ",.01)
 ;;0JWWXKZ 
 ;;9002226.02101,"1804,0JWWXKZ ",.02)
 ;;0JWWXKZ 
 ;;9002226.02101,"1804,0JWWXKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWWXNZ ",.01)
 ;;0JWWXNZ 
 ;;9002226.02101,"1804,0JWWXNZ ",.02)
 ;;0JWWXNZ 
 ;;9002226.02101,"1804,0JWWXNZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWWXVZ ",.01)
 ;;0JWWXVZ 
 ;;9002226.02101,"1804,0JWWXVZ ",.02)
 ;;0JWWXVZ 
 ;;9002226.02101,"1804,0JWWXVZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWWXWZ ",.01)
 ;;0JWWXWZ 
 ;;9002226.02101,"1804,0JWWXWZ ",.02)
 ;;0JWWXWZ 
 ;;9002226.02101,"1804,0JWWXWZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JWWXXZ ",.01)
 ;;0JWWXXZ 
 ;;9002226.02101,"1804,0JWWXXZ ",.02)
 ;;0JWWXXZ 
 ;;9002226.02101,"1804,0JWWXXZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX00ZB ",.01)
 ;;0JX00ZB 
 ;;9002226.02101,"1804,0JX00ZB ",.02)
 ;;0JX00ZB 
 ;;9002226.02101,"1804,0JX00ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX00ZC ",.01)
 ;;0JX00ZC 
 ;;9002226.02101,"1804,0JX00ZC ",.02)
 ;;0JX00ZC 
 ;;9002226.02101,"1804,0JX00ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX03ZB ",.01)
 ;;0JX03ZB 
 ;;9002226.02101,"1804,0JX03ZB ",.02)
 ;;0JX03ZB 
 ;;9002226.02101,"1804,0JX03ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX03ZC ",.01)
 ;;0JX03ZC 
 ;;9002226.02101,"1804,0JX03ZC ",.02)
 ;;0JX03ZC 
 ;;9002226.02101,"1804,0JX03ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX10ZB ",.01)
 ;;0JX10ZB 
 ;;9002226.02101,"1804,0JX10ZB ",.02)
 ;;0JX10ZB 
 ;;9002226.02101,"1804,0JX10ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX10ZC ",.01)
 ;;0JX10ZC 
 ;;9002226.02101,"1804,0JX10ZC ",.02)
 ;;0JX10ZC 
 ;;9002226.02101,"1804,0JX10ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX13ZB ",.01)
 ;;0JX13ZB 
 ;;9002226.02101,"1804,0JX13ZB ",.02)
 ;;0JX13ZB 
 ;;9002226.02101,"1804,0JX13ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX13ZC ",.01)
 ;;0JX13ZC 
 ;;9002226.02101,"1804,0JX13ZC ",.02)
 ;;0JX13ZC 
 ;;9002226.02101,"1804,0JX13ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX40ZB ",.01)
 ;;0JX40ZB 
 ;;9002226.02101,"1804,0JX40ZB ",.02)
 ;;0JX40ZB 
 ;;9002226.02101,"1804,0JX40ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX40ZC ",.01)
 ;;0JX40ZC 
 ;;9002226.02101,"1804,0JX40ZC ",.02)
 ;;0JX40ZC 
 ;;9002226.02101,"1804,0JX40ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX43ZB ",.01)
 ;;0JX43ZB 
 ;;9002226.02101,"1804,0JX43ZB ",.02)
 ;;0JX43ZB 
 ;;9002226.02101,"1804,0JX43ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX43ZC ",.01)
 ;;0JX43ZC 
 ;;9002226.02101,"1804,0JX43ZC ",.02)
 ;;0JX43ZC 
 ;;9002226.02101,"1804,0JX43ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX50ZB ",.01)
 ;;0JX50ZB 
 ;;9002226.02101,"1804,0JX50ZB ",.02)
 ;;0JX50ZB 
 ;;9002226.02101,"1804,0JX50ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX50ZC ",.01)
 ;;0JX50ZC 
 ;;9002226.02101,"1804,0JX50ZC ",.02)
 ;;0JX50ZC 
 ;;9002226.02101,"1804,0JX50ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX53ZB ",.01)
 ;;0JX53ZB 
 ;;9002226.02101,"1804,0JX53ZB ",.02)
 ;;0JX53ZB 
 ;;9002226.02101,"1804,0JX53ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX53ZC ",.01)
 ;;0JX53ZC 
 ;;9002226.02101,"1804,0JX53ZC ",.02)
 ;;0JX53ZC 
 ;;9002226.02101,"1804,0JX53ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX60ZB ",.01)
 ;;0JX60ZB 
 ;;9002226.02101,"1804,0JX60ZB ",.02)
 ;;0JX60ZB 
 ;;9002226.02101,"1804,0JX60ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX60ZC ",.01)
 ;;0JX60ZC 
 ;;9002226.02101,"1804,0JX60ZC ",.02)
 ;;0JX60ZC 
 ;;9002226.02101,"1804,0JX60ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX63ZB ",.01)
 ;;0JX63ZB 
 ;;9002226.02101,"1804,0JX63ZB ",.02)
 ;;0JX63ZB 
 ;;9002226.02101,"1804,0JX63ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX63ZC ",.01)
 ;;0JX63ZC 
 ;;9002226.02101,"1804,0JX63ZC ",.02)
 ;;0JX63ZC 
 ;;9002226.02101,"1804,0JX63ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX70ZB ",.01)
 ;;0JX70ZB 
 ;;9002226.02101,"1804,0JX70ZB ",.02)
 ;;0JX70ZB 
 ;;9002226.02101,"1804,0JX70ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX70ZC ",.01)
 ;;0JX70ZC 
 ;;9002226.02101,"1804,0JX70ZC ",.02)
 ;;0JX70ZC 
 ;;9002226.02101,"1804,0JX70ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX73ZB ",.01)
 ;;0JX73ZB 
 ;;9002226.02101,"1804,0JX73ZB ",.02)
 ;;0JX73ZB 
 ;;9002226.02101,"1804,0JX73ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX73ZC ",.01)
 ;;0JX73ZC 
 ;;9002226.02101,"1804,0JX73ZC ",.02)
 ;;0JX73ZC 
 ;;9002226.02101,"1804,0JX73ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX80ZB ",.01)
 ;;0JX80ZB 
 ;;9002226.02101,"1804,0JX80ZB ",.02)
 ;;0JX80ZB 
 ;;9002226.02101,"1804,0JX80ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX80ZC ",.01)
 ;;0JX80ZC 
 ;;9002226.02101,"1804,0JX80ZC ",.02)
 ;;0JX80ZC 
 ;;9002226.02101,"1804,0JX80ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX83ZB ",.01)
 ;;0JX83ZB 
 ;;9002226.02101,"1804,0JX83ZB ",.02)
 ;;0JX83ZB 
 ;;9002226.02101,"1804,0JX83ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX83ZC ",.01)
 ;;0JX83ZC 
 ;;9002226.02101,"1804,0JX83ZC ",.02)
 ;;0JX83ZC 
 ;;9002226.02101,"1804,0JX83ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX90ZB ",.01)
 ;;0JX90ZB 
 ;;9002226.02101,"1804,0JX90ZB ",.02)
 ;;0JX90ZB 
 ;;9002226.02101,"1804,0JX90ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX90ZC ",.01)
 ;;0JX90ZC 
 ;;9002226.02101,"1804,0JX90ZC ",.02)
 ;;0JX90ZC 
 ;;9002226.02101,"1804,0JX90ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX93ZB ",.01)
 ;;0JX93ZB 
 ;;9002226.02101,"1804,0JX93ZB ",.02)
 ;;0JX93ZB 
 ;;9002226.02101,"1804,0JX93ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JX93ZC ",.01)
 ;;0JX93ZC 
 ;;9002226.02101,"1804,0JX93ZC ",.02)
 ;;0JX93ZC 
 ;;9002226.02101,"1804,0JX93ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXB0ZB ",.01)
 ;;0JXB0ZB 
 ;;9002226.02101,"1804,0JXB0ZB ",.02)
 ;;0JXB0ZB 
 ;;9002226.02101,"1804,0JXB0ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXB0ZC ",.01)
 ;;0JXB0ZC 
 ;;9002226.02101,"1804,0JXB0ZC ",.02)
 ;;0JXB0ZC 
 ;;9002226.02101,"1804,0JXB0ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXB3ZB ",.01)
 ;;0JXB3ZB 
 ;;9002226.02101,"1804,0JXB3ZB ",.02)
 ;;0JXB3ZB 
 ;;9002226.02101,"1804,0JXB3ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXB3ZC ",.01)
 ;;0JXB3ZC 
 ;;9002226.02101,"1804,0JXB3ZC ",.02)
 ;;0JXB3ZC 
 ;;9002226.02101,"1804,0JXB3ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXC0ZB ",.01)
 ;;0JXC0ZB 
 ;;9002226.02101,"1804,0JXC0ZB ",.02)
 ;;0JXC0ZB 
 ;;9002226.02101,"1804,0JXC0ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXC0ZC ",.01)
 ;;0JXC0ZC 
 ;;9002226.02101,"1804,0JXC0ZC ",.02)
 ;;0JXC0ZC 
 ;;9002226.02101,"1804,0JXC0ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXC3ZB ",.01)
 ;;0JXC3ZB 
 ;;9002226.02101,"1804,0JXC3ZB ",.02)
 ;;0JXC3ZB 
 ;;9002226.02101,"1804,0JXC3ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXC3ZC ",.01)
 ;;0JXC3ZC 
 ;;9002226.02101,"1804,0JXC3ZC ",.02)
 ;;0JXC3ZC 
 ;;9002226.02101,"1804,0JXC3ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXD0ZB ",.01)
 ;;0JXD0ZB 
 ;;9002226.02101,"1804,0JXD0ZB ",.02)
 ;;0JXD0ZB 
 ;;9002226.02101,"1804,0JXD0ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXD0ZC ",.01)
 ;;0JXD0ZC 
 ;;9002226.02101,"1804,0JXD0ZC ",.02)
 ;;0JXD0ZC 
 ;;9002226.02101,"1804,0JXD0ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXD3ZB ",.01)
 ;;0JXD3ZB 
 ;;9002226.02101,"1804,0JXD3ZB ",.02)
 ;;0JXD3ZB 
 ;;9002226.02101,"1804,0JXD3ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXD3ZC ",.01)
 ;;0JXD3ZC 
 ;;9002226.02101,"1804,0JXD3ZC ",.02)
 ;;0JXD3ZC 
 ;;9002226.02101,"1804,0JXD3ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXF0ZB ",.01)
 ;;0JXF0ZB 
 ;;9002226.02101,"1804,0JXF0ZB ",.02)
 ;;0JXF0ZB 
 ;;9002226.02101,"1804,0JXF0ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXF0ZC ",.01)
 ;;0JXF0ZC 
 ;;9002226.02101,"1804,0JXF0ZC ",.02)
 ;;0JXF0ZC 
 ;;9002226.02101,"1804,0JXF0ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXF3ZB ",.01)
 ;;0JXF3ZB 
 ;;9002226.02101,"1804,0JXF3ZB ",.02)
 ;;0JXF3ZB 
 ;;9002226.02101,"1804,0JXF3ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXF3ZC ",.01)
 ;;0JXF3ZC 
 ;;9002226.02101,"1804,0JXF3ZC ",.02)
 ;;0JXF3ZC 
 ;;9002226.02101,"1804,0JXF3ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXG0ZB ",.01)
 ;;0JXG0ZB 
 ;;9002226.02101,"1804,0JXG0ZB ",.02)
 ;;0JXG0ZB 
 ;;9002226.02101,"1804,0JXG0ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXG0ZC ",.01)
 ;;0JXG0ZC 
 ;;9002226.02101,"1804,0JXG0ZC ",.02)
 ;;0JXG0ZC 
 ;;9002226.02101,"1804,0JXG0ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXG3ZB ",.01)
 ;;0JXG3ZB 
 ;;9002226.02101,"1804,0JXG3ZB ",.02)
 ;;0JXG3ZB 
 ;;9002226.02101,"1804,0JXG3ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXG3ZC ",.01)
 ;;0JXG3ZC 
 ;;9002226.02101,"1804,0JXG3ZC ",.02)
 ;;0JXG3ZC 
 ;;9002226.02101,"1804,0JXG3ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXH0ZB ",.01)
 ;;0JXH0ZB 
 ;;9002226.02101,"1804,0JXH0ZB ",.02)
 ;;0JXH0ZB 
 ;;9002226.02101,"1804,0JXH0ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXH0ZC ",.01)
 ;;0JXH0ZC 
 ;;9002226.02101,"1804,0JXH0ZC ",.02)
 ;;0JXH0ZC 
 ;;9002226.02101,"1804,0JXH0ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXH3ZB ",.01)
 ;;0JXH3ZB 
 ;;9002226.02101,"1804,0JXH3ZB ",.02)
 ;;0JXH3ZB 
 ;;9002226.02101,"1804,0JXH3ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXH3ZC ",.01)
 ;;0JXH3ZC 
 ;;9002226.02101,"1804,0JXH3ZC ",.02)
 ;;0JXH3ZC 
 ;;9002226.02101,"1804,0JXH3ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXJ0ZB ",.01)
 ;;0JXJ0ZB 
 ;;9002226.02101,"1804,0JXJ0ZB ",.02)
 ;;0JXJ0ZB 
 ;;9002226.02101,"1804,0JXJ0ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXJ0ZC ",.01)
 ;;0JXJ0ZC 
 ;;9002226.02101,"1804,0JXJ0ZC ",.02)
 ;;0JXJ0ZC 
 ;;9002226.02101,"1804,0JXJ0ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXJ3ZB ",.01)
 ;;0JXJ3ZB 
 ;;9002226.02101,"1804,0JXJ3ZB ",.02)
 ;;0JXJ3ZB 
 ;;9002226.02101,"1804,0JXJ3ZB ",.03)
 ;;31
 ;;9002226.02101,"1804,0JXJ3ZC ",.01)
 ;;0JXJ3ZC 
 ;;9002226.02101,"1804,0JXJ3ZC ",.02)
 ;;0JXJ3ZC 
 ;;9002226.02101,"1804,0JXJ3ZC ",.03)
 ;;31