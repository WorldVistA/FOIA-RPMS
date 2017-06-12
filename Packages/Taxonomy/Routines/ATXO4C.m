ATXO4C ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BTPW PERIANAL BX PROC
 ;
 ; This routine loads Taxonomy BTPW PERIANAL BX PROC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"0DBQ0ZX ")
 ;;3
 ;;21,"0DBQ3ZX ")
 ;;4
 ;;21,"0DBQ4ZX ")
 ;;5
 ;;21,"0DBQ7ZX ")
 ;;6
 ;;21,"0DBQ8ZX ")
 ;;7
 ;;21,"0DBQXZX ")
 ;;8
 ;;21,"0DBR0ZX ")
 ;;9
 ;;21,"0DBR3ZX ")
 ;;10
 ;;21,"0DBR4ZX ")
 ;;11
 ;;21,"49.22 ")
 ;;1
 ;;21,"49.23 ")
 ;;2
 ;;9002226,1443,.01)
 ;;BTPW PERIANAL BX PROC
 ;;9002226,1443,.02)
 ;;@
 ;;9002226,1443,.04)
 ;;n
 ;;9002226,1443,.06)
 ;;@
 ;;9002226,1443,.08)
 ;;0
 ;;9002226,1443,.09)
 ;;3131112
 ;;9002226,1443,.11)
 ;;@
 ;;9002226,1443,.12)
 ;;255
 ;;9002226,1443,.13)
 ;;1
 ;;9002226,1443,.14)
 ;;@
 ;;9002226,1443,.15)
 ;;80.1
 ;;9002226,1443,.16)
 ;;@
 ;;9002226,1443,.17)
 ;;@
 ;;9002226,1443,3101)
 ;;@
 ;;9002226.02101,"1443,0DBQ0ZX ",.01)
 ;;0DBQ0ZX 
 ;;9002226.02101,"1443,0DBQ0ZX ",.02)
 ;;0DBQ0ZX 
 ;;9002226.02101,"1443,0DBQ0ZX ",.03)
 ;;31
 ;;9002226.02101,"1443,0DBQ3ZX ",.01)
 ;;0DBQ3ZX 
 ;;9002226.02101,"1443,0DBQ3ZX ",.02)
 ;;0DBQ3ZX 
 ;;9002226.02101,"1443,0DBQ3ZX ",.03)
 ;;31
 ;;9002226.02101,"1443,0DBQ4ZX ",.01)
 ;;0DBQ4ZX 
 ;;9002226.02101,"1443,0DBQ4ZX ",.02)
 ;;0DBQ4ZX 
 ;;9002226.02101,"1443,0DBQ4ZX ",.03)
 ;;31
 ;;9002226.02101,"1443,0DBQ7ZX ",.01)
 ;;0DBQ7ZX 
 ;;9002226.02101,"1443,0DBQ7ZX ",.02)
 ;;0DBQ7ZX 
 ;;9002226.02101,"1443,0DBQ7ZX ",.03)
 ;;31
 ;;9002226.02101,"1443,0DBQ8ZX ",.01)
 ;;0DBQ8ZX 
 ;;9002226.02101,"1443,0DBQ8ZX ",.02)
 ;;0DBQ8ZX 
 ;;9002226.02101,"1443,0DBQ8ZX ",.03)
 ;;31
 ;;9002226.02101,"1443,0DBQXZX ",.01)
 ;;0DBQXZX 
 ;;9002226.02101,"1443,0DBQXZX ",.02)
 ;;0DBQXZX 
 ;;9002226.02101,"1443,0DBQXZX ",.03)
 ;;31
 ;;9002226.02101,"1443,0DBR0ZX ",.01)
 ;;0DBR0ZX 
 ;;9002226.02101,"1443,0DBR0ZX ",.02)
 ;;0DBR0ZX 
 ;;9002226.02101,"1443,0DBR0ZX ",.03)
 ;;31
 ;;9002226.02101,"1443,0DBR3ZX ",.01)
 ;;0DBR3ZX 
 ;;9002226.02101,"1443,0DBR3ZX ",.02)
 ;;0DBR3ZX 
 ;;9002226.02101,"1443,0DBR3ZX ",.03)
 ;;31
 ;;9002226.02101,"1443,0DBR4ZX ",.01)
 ;;0DBR4ZX 
 ;;9002226.02101,"1443,0DBR4ZX ",.02)
 ;;0DBR4ZX 
 ;;9002226.02101,"1443,0DBR4ZX ",.03)
 ;;31
 ;;9002226.02101,"1443,49.22 ",.01)
 ;;49.22 
 ;;9002226.02101,"1443,49.22 ",.02)
 ;;49.22 
 ;;9002226.02101,"1443,49.22 ",.03)
 ;;2
 ;;9002226.02101,"1443,49.23 ",.01)
 ;;49.23 
 ;;9002226.02101,"1443,49.23 ",.02)
 ;;49.23 
 ;;9002226.02101,"1443,49.23 ",.03)
 ;;2
 ;
OTHER ; OTHER ROUTINES
 Q