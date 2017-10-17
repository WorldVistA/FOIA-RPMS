ABMDF28U ; IHS/SD/SDR - PRINT UB-04 ;    
 ;;2.6;IHS Third Party Billing;**20,21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR - 2.6*20 - HEAT262141 - Split routine from ABMDF28Y.  Added code for AHCCCS RX billing.  Will print detail lines for all meds,
 ;  but won't print the price, only the NDC, desc., date, and units.
 ;IHS/SD/SDR - 2.6*21 - HEAT268438 - Added check for Medi-Cal to only print 001 not 0001 for total line
 ;
14 ;
 Q
PGTOT ;EP
 Q
