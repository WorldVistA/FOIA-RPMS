ABMDF28P ; IHS/SD/SDR - PRINT UB-04 ;    
 ;;2.6;IHS Third Party Billing;**27**;NOV 12, 2009;Build 486
 ;IHS/SD/AML,SDR 2.6*27 CR8897 Split to routine ABMDF28Y due to size.  Fixes for revenue codes in ABMRV array printing correctly.
 K I,J,L
 S I=0
 S ABMPGCNT=1
 F  S I=$O(ABMRV(I)) Q:'I  D
 .S J=-1
 .F  S J=$O(ABMRV(I,J)) Q:J=""  D
 ..S L=0
 ..F  S L=$O(ABMRV(I,J,L)) Q:+L=0  D
 ...;Grand tot chgs
 ...I $P($G(^ABMDVTYP(ABMP("VTYP"),0)),U)["EPSDT",(+$P($G(ABMRV(I,J,L)),U,2)=0) D
 ....S $P(ABMRV(I,J,L),U,9)="OUTPATIENT CLINIC"
 ...;S:J'="ZZTOT" ABMRV("ZZTOT")=ABMRV("ZZTOT")+$P(ABMRV(I,J,L),U,6)  ;abm*2.6*23 HEAT347035
 ...S:J'="ZZTOT" ABMRV("ZZTOT")=+$G(ABMRV("ZZTOT"))+$P(ABMRV(I,J,L),U,6)  ;abm*2.6*23 HEAT347035
 ...;Grand tot noncovered chgs
 ...;S:J'="ZZTOT" ABMRV("NCTOT")=ABMRV("NCTOT")+$P(ABMRV(I,J,L),U,7)  ;abm*2.6*23 HEAT347035
 ...S:J'="ZZTOT" ABMRV("NCTOT")=+$G(ABMRV("NCTOT"))+$P(ABMRV(I,J,L),U,7)  ;abm*2.6*23 HEAT347035
 ...;if not itemized bill & not done, accumulate tots
 ...I 'ABMITMZ,J'="ZZTOT" D
 ....;
 ....S $P(ABMRV(I,"ZZTOT",1),U)=I  ;IEN to REV CODE
 ....S:$D(ABMP("CPT")) $P(ABMRV(I,"ZZTOT",1),"^",2)=ABMP("CPT")  ;CPT code
 ....N K
 ....;Accumulate tots per rev code
 ....F K=5:1:7 S $P(ABMRV(I,"ZZTOT",1),U,K)=$P(ABMRV(I,"ZZTOT",1),U,K)+$P(ABMRV(I,J,L),U,K)
 ....S $P(ABMRV(I,"ZZTOT",1),U,8)=$P(ABMRV(I,J,L),U,8)  ;unit chg
 ....S $P(ABMRV(I,"ZZTOT",1),U,3)=$P(ABMRV(I,J,L),U,3)
 ....S $P(ABMRV(I,"ZZTOT",1),U,10)=$P(ABMRV(I,J,L),U,10)  ;abm*2.6*27 IHS/SD/SDR CR8897
 ....Q
