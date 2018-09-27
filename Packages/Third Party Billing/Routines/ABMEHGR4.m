ABMEHGR4 ; IHS/SD/SDR - GET ANCILLARY SVCS REVENUE CODE INFO ; 
 ;;2.6;IHS Third Party Billing;**22**;NOV 12, 2009;Build 418
 ;IHS/SD/SDR 2.6*22 HEAT335246 New routine.  This will get line items like an itemized claim, but use the flat rate for the charge on the first line and zero the other lines out.
 ;
START ;EP
 K I,J,L
 S M=0
 S I=0
 F  S I=$O(ABMRV(I)) Q:'I  D
 .S J=""
 .F  S J=$O(ABMRV(I,J)) Q:($G(J)="")  D
 ..S L=0
 ..F  S L=$O(ABMRV(I,J,L)) Q:'L  D
 ...S M=+M+1
 ...I M=1 D  ;first line gets flat rate amount, flat rate rev code and 1 unit
 ....S $P(ABMRV(I,J,L),U,6)=+ABMP("FLAT")
 ....S $P(ABMRV(I,J,L),U)=$P(ABMP("FLAT"),U,2)
 ....S $P(ABMRV(I,J,L),U,5)=1
 ...I M'=1 S $P(ABMRV(I,J,L),U,6)=0,$P(ABMRV(I,J,L),U,5)=0  ;zeros for all other lines
 Q
