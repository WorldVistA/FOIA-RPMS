ABMDF28S ; IHS/SD/SDR - PRINT UB-04 ;  
 ;;2.6;IHS 3P BILLING SYSTEM;**21,23**;NOV 12, 2009;Build 427
 ;new routine abm*2.6*21
 ;IHS/SD/SDR-2.6*21 HEAT240744 - Added routine to resort line items for dialysis billing for Medi-Cal.  All Z6004 CPTs should be reported as 1 line item
 ; with all dates, total units for all Z6004s, and a total $$.
 ;IHS/SD/SDR 2.6*23 HEAT247169 If there's an NDC on the line item add it to the description
 ;IHS/SD/SDR 2.6*23 HEAT347035 Make T1015 print on the top line for Medi-Cal
 ;
COMPILE ;EP
 K I,J,K
 ;make sure Z6004 codes are in chronological order
 S I=0
 F  S I=$O(ABMRV(I)) Q:'I  D
 .S J=-1
 .F  S J=$O(ABMRV(I,J)) Q:J=""  D
 ..I J'="Z6004" Q  ;looking for Z6004 specifically
 ..S K=0
 ..F  S K=$O(ABMRV(I,J,K)) Q:'K  D
 ...S ABMRTMP($P(ABMRV(I,J,K),U,10),I,J,K)=$G(ABMRV(I,J,K))
 ...K ABMRV(I,J,K)
 ;
 S ABMSDT=0
 S L=1
 F  S ABMSDT=$O(ABMRTMP(ABMSDT)) Q:'ABMSDT  D
 .S I=0
 .F  S I=$O(ABMRTMP(ABMSDT,I)) Q:'I  D
 ..S J=-1
 ..F  S J=$O(ABMRTMP(ABMSDT,I,J)) Q:J=""  D
 ...S K=0
 ...F  S K=$O(ABMRTMP(ABMSDT,I,J,K)) Q:'K  D
 ....S ABMRV(I,J,L)=$G(ABMRTMP(ABMSDT,I,J,K))
 ....S L=L+1
 ;
 ;now merge Z6004 entries into 1
 S ABMN=1
 S ABMI=1
 S I=0
 F  S I=$O(ABMRV(I)) Q:'I  D
 .S J=-1
 .F  S J=$O(ABMRV(I,J)) Q:J=""  D
 ..I J'="Z6004" Q  ;looking for Z6004 specifically
 ..S K=0
 ..F  S K=$O(ABMRV(I,J,K)) Q:'K  D
 ...I ABMN=1 D
 ....S ABMSLN=K  ;keep track of 1st line with Z6004
 ....S ABMSDT=$P(ABMRV(I,J,K),U,10)  ;save date from 1st line
 ....S ABMSMNTH=$P($$SDT^ABMDUTL(ABMSDT),"/")
 ....S ABMN=2
 ...I ABMN'=1 D
 ....I $P(ABMRV(I,J,K),U,27)>ABMSDT S $P(ABMRV(I,J,ABMSLN),U,27)=$P(ABMRV(I,J,K),U,27)
 ....I +$P(ABMRV(I,J,ABMSLN),U,27)=0!($P(ABMRV(I,J,K),U,10)>$P(ABMRV(I,J,ABMSLN),U,27)) S $P(ABMRV(I,J,ABMSLN),U,27)=$P(ABMRV(I,J,K),U,10)  ;default to later start date if do SERVICE DATE TO
 ....S ABMSUNIT=+$G(ABMSUNIT)+$P(ABMRV(I,J,K),U,5)  ;accumulate units
 ....S ABMSCHG=+$G(ABMSCHG)+$P(ABMRV(I,J,K),U,6)  ;accumulate chgs
 ....S ABMSDT2=$P($$SDT^ABMDUTL($P(ABMRV(I,J,K),U,10)),"/",1,2)
 ....I (+$G(ABMRV(I,J,ABMSLN,1))'=0)&(ABMSMNTH=$P(ABMSDT2,"/")) S ABMSDT2=$P(ABMSDT2,"/",2)
 ....E  S ABMSMNTH=$P(ABMSDT2,"/")
 ....I $G(ABMRV(I,J,ABMSLN,1))'="" S ABMSDT2=","_ABMSDT2
 ....I ($L($G(ABMRV(I,J,ABMSLN,ABMI)))+$L(ABMSDT2))>21 S ABMRV(I,J,ABMSLN,ABMI)=ABMRV(I,J,ABMSLN,ABMI)_",",ABMI=ABMI+1,ABMSDT2=$P(ABMSDT2,",",2)
 ....S ABMRV(I,J,ABMSLN,ABMI)=$G(ABMRV(I,J,ABMSLN,ABMI))_ABMSDT2
 ...I ABMSLN'=K K ABMRV(I,J,K)
 ..S $P(ABMRV(I,J,ABMSLN),U,5)=ABMSUNIT
 ..S $P(ABMRV(I,J,ABMSLN),U,6)=ABMSCHG
 Q
 ;
Z6004PRT ;EP
 S ABMIJ=0
 F  S ABMIJ=$O(ABMRV(I,J,L,ABMIJ)) Q:'ABMIJ  D
 .S ABMCTR=ABMCTR+1
 .W !
 .S ABMDE="LAB "_$G(ABMRV(I,J,L,ABMIJ))_"^5^25"
 .D WRT^ABMDF28W  ;#43
 S ABMDE=J_"^30^14"
 D WRT^ABMDF28W
 S ABMDE=$$MDY^ABMDUTL($P(ABMRV(I,J,L),U,27))_"^45^6"
 D WRT^ABMDF28W  ;#45
 S ABMDE=$P(ABMRV(I,J,L),U,5)_"^52^7R"  ;Tot units/item
 D WRT^ABMDF28W  ;#46
 S ABMDE=$FN($P(ABMRV(I,J,L),U,6),"T",2)
 S ABMDE=$TR(ABMDE,".")_"^61^9R"  ;Tot chg per item
 D WRT^ABMDF28W  ;#47
 Q
 ;
2LNMDS ;EP
 ;start new abm*2.6*9 HEAT18507
 S I=0
 F  S I=$O(ABMRV(I)) Q:'I  D
 .S J=-1
 .F  S J=$O(ABMRV(I,J)) Q:J=""  D
 ..S K=0
 ..F  S K=$O(ABMRV(I,J,K)) Q:'K  D
 ...Q:$P(ABMRV(I,J,K),U,9)=""
 ...S L=K+.5
 ...S $P(ABMRV(I,J,L),U,9)=$P($P(ABMRV(I,J,K),U,9)," ",2,$L(ABMRV(I,J,K)," "))
 ...S $P(ABMRV(I,J,K),U,9)=$P($P(ABMRV(I,J,K),U,9)," ")
 ...S K=L
 ;end new HEAT18507
 ;
PGCNT ;EP
 ;cnt lines for page numbering
 S ABMLCNT=0
 F  S I=$O(ABMRV(I)) Q:'I  D
 .I 'ABMITMZ S ABMLCNT=ABMLCNT+1 Q
 .S J=-1
 .F  S J=$O(ABMRV(I,J)) Q:J=""  D
 ..S L=0
 ..F  S L=$O(ABMRV(I,J,L)) Q:+L=0  D
 ...;S ABMLCNT=ABMLCNT+1  ;abm*2.6*21 IHS/SD/SDR HEAT240744
 ...;start new abm*2.6*21 IHS/SD/SDR HEAT240744
 ...S ABMIJ=0
 ...F  S ABMIJ=$O(ABMRV(I,J,L,ABMIJ)) Q:'ABMIJ  D
 ....S ABMLCNT=ABMLCNT+1
 ....S ABMDE="LAB "_$G(ABMRV(I,J,L,ABMIJ))_"^5^25"
 ;end new abm*2.6*21 IHS/SD/SDR HEAT240744
 S ABMPGTOT=ABMLCNT/22  ;# pages
 I $P(ABMPGTOT,".",2)>0 S ABMPGTOT=(ABMPGTOT\1)+1
 K ABMLCNT
 Q
 ;start new abm*2.6*21 HEAT205579
T1015 ;EP
 ;start old abm*2.6*23 IHS/SD/SDR HEAT347035
 ;I (($P($G(^AUTNINS(ABMP("INS"),0)),U)="ARBOR HEALTH PLAN")&($D(ABMRV))) D
 ;.S ABMIS=$O(ABMRV(0))
 ;.S ABMJS=$O(ABMRV(ABMIS,""))
 ;.S ABMKS=$O(ABMRV(ABMIS,ABMJS,""))
 ;.S ABMI=0
 ;.F  S ABMI=$O(ABMRV(ABMI)) Q:'ABMI  D
 ;..S ABMJ=""
 ;..F  S ABMJ=$O(ABMRV(ABMI,ABMJ)) Q:$G(ABMJ)=""  D
 ;...S ABMK=""
 ;...F  S ABMK=$O(ABMRV(ABMI,ABMJ,ABMK)) Q:'ABMK  D
 ;....I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,2)'="T1015" Q
 ;....S ABMTMP("TMP")=$G(ABMRV(ABMIS,ABMJS,ABMKS))
 ;....S ABMRV(ABMIS,ABMJS,ABMKS)=$G(ABMRV(ABMI,ABMJ,ABMK))
 ;....S ABMRV(ABMI,ABMJ,ABMK)=$G(ABMTMP("TMP"))
 ;end old start new abm*2.6*23 IHS/SD/SDR HEAT347035
 I ($D(ABMRV))&(($P($G(^AUTNINS(ABMP("INS"),0)),U)="ARBOR HEALTH PLAN")!($$RCID^ABMUTLP(ABMP("INS"))["61044")) D
 .S ABMF=0
 .S (ABMIS,ABMJS,ABMKS)=1
 .S ABMI=0
 .F  S ABMI=$O(ABMRV(ABMI)) Q:'ABMI  D
 ..S ABMJ=""
 ..F  S ABMJ=$O(ABMRV(ABMI,ABMJ)) Q:$G(ABMJ)=""  D
 ...S ABMK=""
 ...F  S ABMK=$O(ABMRV(ABMI,ABMJ,ABMK)) Q:'ABMK  D
 ....M ABMTMP(ABMIS,ABMJS,ABMKS)=ABMRV(ABMI,ABMJ,ABMK)
 ....S ABMIS=ABMIS+1,ABMJS=ABMJS+1,ABMKS=ABMKS+1
 ....I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,2)'="T1015" S ABMF=1 Q
 .I ABMF=0 Q  ;no T1015 on claim
 .K ABMRV
 .M ABMRV=ABMTMP
 .S ABMI=0
 .F  S ABMI=$O(ABMRV(ABMI)) Q:'ABMI  D
 ..S ABMJ=""
 ..F  S ABMJ=$O(ABMRV(ABMI,ABMJ)) Q:$G(ABMJ)=""  D
 ...S ABMK=""
 ...F  S ABMK=$O(ABMRV(ABMI,ABMJ,ABMK)) Q:$G(ABMK)=""  D
 ....I $P($G(ABMRV(ABMI,ABMJ,ABMK)),U,2)'="T1015" Q
 ....S ABMTMP("TMP")=$G(ABMRV(ABMI,ABMJ,ABMK))
 ....S ABMRV(ABMI,ABMJ,ABMK)=$G(ABMRV(1,1,1))
 ....S ABMRV(1,1,1)=$G(ABMTMP("TMP"))
 ;end new abm*2.6*23 IHS/SD/SDR HEAT347035
 Q
 ;end new abm*2.6*21 HEAT205579
 ;start new abm*2.6*23 IHS/SD/SDR HEAT247169
NDC ;EP
 K I,J,L
 S I=0
 F  S I=$O(ABMRV(I)) Q:'I  D
 .S J=" "
 .F  S J=$O(ABMRV(I,J)) Q:($G(J)="")  D
 ..S L=0
 ..F  S L=$O(ABMRV(I,J,L)) Q:'L  D
 ...I $P($G(ABMRV(I,J,L)),U,19)'="" S $P(ABMRV(I,J,L),U,9)=$P(ABMRV(I,J,L),U,19)_" "_$P(ABMRV(I,J,L),U,9)
 Q
 ;end new abm*2.6*23 IHS/SD/SDR HEAT247169
