BARP1828 ; IHS/SD/SDR - Post init for V1.8 Patch 28
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ;
 ;IHS/SD/SDR 1.8*28 HEAT293633 - Add A/R Table Entry/IHS 150 Payment Adj-Clean Up.  Added for data cleanup at Belcourt
 ;  but being released nationally in case others need.
 Q
 ; ********************************************************************
 ;
EN ; EP - Driver
 ; Create New transaction type called Remark Code
 W !!,"Creating Payment Adj Clean Up Transaction Types... "
 ;PAYMENT ADJ CLEAN UP
 K DIC,DA,DR,X,Y
 S DIC="^BARTBL("
 S DIC(0)="LZX"
 S DINUM=150
 S X="PAYMENT ADJ CLEAN UP"
 S DLAYGO=90052
 S DIC("DR")="2////20"  ;Table Type
 S DIC("DR")=DIC("DR")_";6///PAYCRD"  ;Acronym
 K DD,DO
 D ^DIC
 ;
 ;Change A/R Collection Batch/Item deletion permissions to "@"
 S ^DIC(90051.01,0,"DEL")="@"
 ;
 ;Update Standard Adjustment Reason Codes
 D EN^BARADJRE
 D EN^BARADJRF
 D EN^BARADJRG
 D EN^BARADJRH
 D EN^BARADJRI
 D EN^BARADJRJ
 D EN^BARADJRK
 D EN^BARADJRL
 Q
 ; ********************************************************************
 ;EOR - IHS/DIT/CPC 1.8*28
