BPHR21P2 ;GDIT/HCS/ALA-Version 2.1 Patch 2 ; 16 Feb 2018  11:37 AM
 ;;2.1;IHS PERSONAL HEALTH RECORD;**2**;Apr 01, 2014;Build 4
 ;
PRE ;Pre-install check
 I $P(^BPHR(90670.2,1,0),"^",2)'="https://hqabqdittphrw01.d1.na.ihs.gov" D
 . S BPHR(90670.2,"1,",.02)="https://hqabqdittphrw01.d1.na.ihs.gov"
 I $P(^BPHR(90670.2,2,0),"^",2)'="https://phrperfm.ihs.gov" D
 . S BPHR(90670.2,"2,",.02)="https://phrperfm.ihs.gov"
 I $D(BPHR) D FILE^DIE("","BPHR","ERROR")
 ;
 Q
