BLRRLRES ;ihs/cmi/maw - BLR RESTART GIS LINKS, ENHANCED ; 13-Oct-2017 14:04 ; MAW
 ;;5.2;IHS LABORATORY;**1041**;NOV 01, 1997;Build 23
 ;
 Q
 ;
RES(BP,SH) ;EP - restart the link passed in, task man only
 N RUNNING
 S RUNNING=0
 S BP=$O(^INTHPC("B",BP,0))
 I 'BP Q 1
 S X=$P($G(^INTHPC(BP,0)),U,4) D JOBPAR^%ZOSV I $G(Y)]"" S RUNNING=1
 I $D(^INRHB("RUN",BP)),$G(RUNNING) Q 1
 I $G(SH) D SHUT(SH,BP)
 I $G(SH) H 120  ;maw 4/19/2006 increased hang time to 120 from 60
 D START(BP)
 Q 0
 ;
SHUT(S,B) ;EP - shut down the process    
 Q:'$G(S)  ;quits when shutdown flag is not present
 N X
 F X=1:1:100 K ^INRHB("RUN",B)
 S X=$$SRVRHNG^INHB(B)
 Q
 ;
START(B) ;EP - restart the process
 S X=$$A^INHB(B)
 Q
 ;
