ABMDF28Q ; IHS/SD/SDR - PRINT UB-04 ;    
 ;;2.6;IHS Third Party Billing;**27**;NOV 12, 2009;Build 486
 ;IHS/SD/SDR 2.6*27 CR8897 Split from ABMDF28Y.
 ;
 K I,J,L
 S I=0
 S ABMFND=0
 F  S I=$O(ABMRV(I)) Q:'I  D  Q:ABMFND=1
 .S J=-1
 .F  S J=$O(ABMRV(I,J)) Q:($G(J)="")  D  Q:ABMFND=1
 ..I J="T1015" D  K ABMRV(I,J)
 ...S L=0
 ...F  S L=$O(ABMRV(I,J,L)) Q:'L  D
 ....I $P($G(^ABMDVTYP(ABMP("VTYP"),0)),U)["EPSDT",(+$P($G(ABMRV(I,J,L)),U,2)=0) D
 ....;S $P(ABMRV(I,J,L),U,9)="OUTPATIENT CLINIC"  ;abm*2.6*27 IHS/SD/SDR CR8897
 ....I (($$RCID^ABMUTLP(ABMP("INS"))'["61044")&(ABMP("VTYP")'=142)&(ABMP("BTYP")'=731)) S $P(ABMRV(I,J,L),U,9)="OUTPATIENT CLINIC"  ;abm*2.6*27 IHS/SD/SDR CR8897
 ....S:J'="ZZTOT" ABMRV("ZZTOT")=ABMRV("ZZTOT")+$P(ABMRV(I,J,L),U,6)
 ....;Grand tot noncov'd chgs
 ....S:J'="ZZTOT" ABMRV("NCTOT")=ABMRV("NCTOT")+$P(ABMRV(I,J,L),U,7)
 ....;if not itemized bill & not done, accumulate tots
 ....I 'ABMITMZ,J'="ZZTOT" D
 .....S $P(ABMRV(I,"ZZTOT",1),U)=I  ;IEN to REV CODE
 .....S:$D(ABMP("CPT")) $P(ABMRV(I,"ZZTOT",1),"^",2)=ABMP("CPT")  ;CPT code
 .....N K
 .....;Accumulate tots per rev code
 .....F K=5:1:7 S $P(ABMRV(I,"ZZTOT",1),U,K)=$P(ABMRV(I,"ZZTOT",1),U,K)+$P(ABMRV(I,J,L),U,K)
 .....S $P(ABMRV(I,"ZZTOT",1),U,8)=$P(ABMRV(I,J,L),U,8)  ;unit chg
 .....S $P(ABMRV(I,"ZZTOT",1),U,3)=$P(ABMRV(I,J,L),U,3)
 ....I 'ABMITMZ,J'="ZZTOT" Q
 ....I ABMITMZ,J="ZZTOT" Q  ;If itemized & done, Q
 ....W !
 ....S ABMCTR=ABMCTR+1  ;Cnt items
 ....;S ABMDE=$$GETREV^ABMDUTL(I)_"^^4R"  ;Rev code  ;abm*2.6*23 HEAT347035
 ....S ABMDE=$S(($P(ABMRV(I,J,L),U)'=0):$$GETREV^ABMDUTL($P(ABMRV(I,J,L),U)),1:"")_"^^4R"  ;Rev code  ;abm*2.6*23 HEAT347035
 ....I L["." S ABMDE=""
 ....;I $$RCID^ABMERUTL(ABMP("INS"))'=61004!((ABMP("VDT")>3100630)&($P($G(^AUTNINS(ABMP("INS"),0)),U)="EAPC")) D WRT^ABMDF28W  ;#42  ;abm*2.6*4 HEAT12271  ;abm*2.6*21 HEAT268438
 ....;I $$RCID^ABMERUTL(ABMP("INS"))'["61044"!((ABMP("VDT")>3100630)&($P($G(^AUTNINS(ABMP("INS"),0)),U)="EAPC")) D WRT^ABMDF28W  ;#42 ;abm*2.6*21 HEAT268438  ;abm*2.6*23 HEAT347035
 ....;I (+$P(ABMRV(I,J,L),U,6)'=0) D WRT^ABMDF28W  ;abm*2.6*23 IHS/SD/SDR HEAT347035  ;abm*2.6*27 IHS/SD/SDR CR8897
 ....;start new abm*2.6*27 IHS/SD/SDR CR8897
 ....I (($$RCID^ABMUTLP(ABMP("INS")))["61044") D
 .....I $P(ABMRV(I,J,L),U)=0 Q  ;don't do anything if there's no rev code
 .....I ((ABMPOS=1)&((ABMP("BTYP")=731)!(ABMP("VTYP")'=142))) S ABMDE=$$GETREV^ABMDUTL($P(ABMRV(I,J,L),U))_"^^4"
 .....I '($D(ABMP("FLAT"))&(+$P(ABMRV(I,J,L),U,6)'=0)) S ABMDE=$$GETREV^ABMDUTL($P(ABMRV(I,J,L),U))_"^^4"
 .....I (ABMPOS'=1)&(ABMP("BTYP")'=731)&(ABMP("VTYP")'=142) S ABMDE="^^4"
 .....I +$G(ABMDIAL)=1 S ABMDE="^^4"
 .....D WRT^ABMDF28W
 ....I ($$RCID^ABMERUTL(ABMP("INS"))'["61044") D WRT^ABMDF28W
 ....;end new abm*2.6*27 IHS/SD/SDR CR8897
 ....I ((ABMP("VDT")>3100630)&($P($G(^AUTNINS(ABMP("INS"),0)),U)="EAPC")) D WRT^ABMDF28W  ;#42 ;abm*2.6*21 HEAT268438  ;abm*2.6*23 HEAT347035
 ....;If desc is blank, get it from vtyp in INS file
 ....I $P(ABMRV(I,J,L),U,9)="" D
 .....S ABMDE=$P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),U,9)
 .....;S:ABMDE="" ABMDE=$P($G(^AUTTREVN(I,0)),U,2)  ;std abbrev  ;abm*2.6*23 HEAT347035
 .....S:ABMDE="" ABMDE=$P($G(^AUTTREVN($P(ABMRV(I,J,L),U),0)),U,2)  ;std abbrev  ;abm*2.6*23 HEAT347035
 .....S ABMDE=ABMDE_"^5^24"  ;Desc
 .....I (($$RCID^ABMUTLP(ABMP("INS"))["61044")&(+$P(ABMRV(I,J,L),U,6)=0)) S ABMDE="^^5^24"  ;don't print description for Medi-Cal when charge amt is 0  ;abm*2.6*23 HEAT347035
 .....D WRT^ABMDF28W  ;#43
 ....I $P(ABMRV(I,J,L),U,9)'="" D  ;if desc, use it
 .....S ABMDE=$P(ABMRV(I,J,L),U,9)_"^5^24"  ;Desc
 .....I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")) S ABMDE="MAINTENANCE DIALYSIS WITH^5^25"  ;abm*2.6*21 HEAT240744
 .....I (($$RCID^ABMUTLP(ABMP("INS"))["61044")&(+$P(ABMRV(I,J,L),U,6)=0)) S ABMDE="^^5^24"  ;don't print description for Medi-Cal when charge amt is 0  ;abm*2.6*23 HEAT347035
 .....D WRT^ABMDF28W  ;#43
 ....;
 ....; HCPCS/rates--#44
 ....S ABMMODL=$S($P(ABMRV(I,J,L),U,3)]"":$P(ABMRV(I,J,L),U,3),1:"")
 ....S ABMMODL=ABMMODL_$S($P(ABMRV(I,J,L),U,4)]"":$P(ABMRV(I,J,L),U,4),1:"")
 ....S ABMMODL=ABMMODL_$S($P(ABMRV(I,J,L),U,12)]"":$P(ABMRV(I,J,L),U,12),1:"")
 ....S ABMDE=$S($L($P(ABMRV(I,J,L),U,2))>3:$P(ABMRV(I,J,L),U,2)_ABMMODL_"^30^14",$P(ABMRV(I,J,L),U,8)&(+$P(ABMRV(I,J,L),U,2)'=0):$J($P(ABMRV(I,J,L),U,8),1,2)_"^30^14R",+ABMMODL:$J(ABMMODL,1,2)_"^30^14",1:"")
 ....;make 2-digit CPT print for Medi-Cal
 ....;I $$RCID^ABMUTLP(ABMP("INS"))["61044" D  ;abm*2.6*23 HEAT347035  ;abm*2.6*27 IHS/SD/SDR CR8897
 ....S ABMCAFLG=0  ;abm*2.6*27 IHS/SD/SDR CR8897
 ....I $$RCID^ABMUTLP(ABMP("INS"))["61044" D  I ABMCAFLG=1 Q  ;abm*2.6*27 IHS/SD/SDR CR8897
 .....I (ABMP("BTYP")=731)&(ABMP("VTYP")=142) S ABMCAFLG=1 D 23PRT^ABMDF28S  ;abm*2.6*27 IHS/SD/SDR CR8897
 .....S ABMDE=$S($P(ABMRV(I,J,L),U,2)'="":$P(ABMRV(I,J,L),U,2)_ABMMODL_"^30^14",$P(ABMRV(I,J,L),U,8)&(+$P(ABMRV(I,J,L),U,2)'=0):$J($P(ABMRV(I,J,L),U,8),1,2)_"^30^14R",+ABMMODL:$J(ABMMODL,1,2)_"^30^14",1:"")  ;abm*2.6*23 HEAT347035
 .....;I (ABMP("BTYP")=731)&(ABMITMZ)&(+$G(ABMCPTM)=0) S ABMDE="^30^14"  ;abm*2.6*27 IHS/SD/AML CR8897
 ....I $P($G(ABMRV(I,J,L)),U,14)'="",($P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),U,24)="Y") S ABMDE="RX"_$P(ABMRV(I,J,L),U,14)_"^30^9"
 ....I ABMDE=""&($D(ABMP("FLAT"))!((I>99)&(I<250))) S ABMDE=$J($S($D(ABMP("FLAT")):$P(ABMP("FLAT"),U),1:$P(ABMRV(I,J,L),U,8)),1,2)_"^30^14"  ;def flat rate
 ....I $$RCID^ABMERUTL(ABMP("INS"))=99999&(ABMP("VTYP")=997) S ABMDE=$S(ABMCTR=1:$J($P(ABMP("FLAT"),U),1,2),1:"")_"^30^14"  ;abm*2.6*20 HEAT262141
 ....D WRT^ABMDF28W
 ....S ABMDE=$$MDY^ABMDUTL($P(ABMRV(I,J,L),U,10))_"^45^6"  ;DOS
 ....D WRT^ABMDF28W  ;#45
 ....S ABMDE=$P(ABMRV(I,J,L),U,5)_"^52^7R"  ;Tot units/item
 ....D WRT^ABMDF28W  ;#46
 ....S ABMDE=$FN($P(ABMRV(I,J,L),U,6),"T",2)
 ....S ABMDE=$TR(ABMDE,".")_"^61^9R"  ;Tot chg per item
 ....I L["." S ABMDE=""
 ....D WRT^ABMDF28W  ;#47
 ....S ABMDE=$FN($P(ABMRV(I,J,L),U,7),"T",2)
 ....I +ABMDE D
 .....S ABMDE=$TR(ABMDE,".")_"^71^9R"  ;Tot noncover chgs/item
 .....D WRT^ABMDF28W  ;#48
 ....;start old abm*2.6*27 IHS/SD/SDR CR8897
 ....;I $G(ABMRV(I,J,L,1))'="" D Z6004PRT^ABMDF28S  ;abm*2.6*21 HEAT240744
 ....;I $G(ABMRV(I,J,L,1))'="" D 23PRT^ABMDF28S  ;abm*2.6*27 IHS/SD/AML CR8897
 ....;end old start new abm*2.6*27 IHS/SD/SDR CR8897
 ....I ($$RCID^ABMUTLP(ABMP("INS"))["61044") D
 .....I (($P(ABMRV(I,J,L),U,2)="Z6004")&($G(ABMRV(I,J,L,1))'="")&(ABMP("VTYP")'=142)) D Z6004PRT^ABMDF28S
 .....;I (ABMP("BTYP")=731)&(ABMP("VTYP")=142) D 23PRT^ABMDF28S
 ....;
 ....I ($$RCID^ABMUTLP(ABMP("INS"))["61044")&(+$G(ABMITMZ)) D
 .....I ((ABMPOS=1)&(ABMP("BTYP")=731)&(ABMP("VTYP")'=142)) D CALYRTC^ABMDF28S
 ....;end new abm*2.6*27 IHS/SD/SDR CR8897
 ...S ABMFND=1
 ;end new HEAT117086
