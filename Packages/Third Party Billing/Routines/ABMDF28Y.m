ABMDF28Y ; IHS/SD/SDR - PRINT UB-04 ;    
 ;;2.6;IHS Third Party Billing;**1,2,4,6,9,10,11,13,19,20,21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR-2.6*13-HEAT117086-T1015 should be top line for all Medicaid
 ;IHS/SD/SDR-2.6*19-HEAT116949-If DUZ(2)=4610 (Chapa-De/Auburn), make FL56=1124150891
 ;IHS/SD/SDR-2.6*20-HEAT262141-Added code for AHCCCS RX billing.  Will print detail lines for all meds, but won't print price,
 ;  only NDC, desc, date, and units.
 ;IHS/SD/SDR-2.6*21-HEAT205579-Made T1015 print first for ARBOR HEALTH PLAN
 ;IHS/SD/SDR-2.6*21-HEAT268438-Made change to check for 61044 from 61004 for Medi-Cal
 ;IHS/SD/SDR-2.6*21-HEAT240744-Added call to resort,print lines for Medi-Cal dialysis billing
13 ; EP
 W !
 K ABMR
 S ABM("9SP")="         "
 N I
 F I=160:10:200 D
 .D @(I_"^ABMER41A")
 N I
 F I=210:10:390 D
 .D @(I_"^ABMER41")
 ;Policy holder st addr
 ;start new abm*2.6*2 FIXPMS10028
 D 38^ABMDF28V  ;split to rtn ABMDF28V abm*2.6*21
 D VALCDS1^ABMDF28V  ;split to rtn ABMDF28V abm*2.6*21
14 ;
 W !
 D 38P2^ABMDF28V  ;split to rtn ABMDF28V abm*2.6*21
 D VALCDS2^ABMDF28V  ;split to rtn ABMDF28V abm*2.6*21
 Q:$G(ABMORE)
15 ;
 W !
 K ABM
 D VALCDS3^ABMDF28V  ;split to routine ABMDF28V abm*2.6*21
16 ;
 W !
 D VALCDS4^ABMDF28V  ;split to routine ABMDF28V abm*2.6*21
18 ;
 ;Lines 18-40 on form (desc area)
 ;ABMVR(IEN,code,counter) = IEN^Code^Modifier^2nd Modifier^Total units^Total charges^^Unit charge^NDC name/desc^date/time
 W !
 K ABMRV
 D ORV^ABMERGRV  ;get other rev codes
 D P1^ABMERGRV  ;Build ABMVR of rev codes
 ;Itemized UB-92 flag (1=yes, 0=no)
 S ABMITMZ=$P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),"^",12)
 I (($G(ABMP("VTYP"))=721)!($P($G(^ABMDVTYP(ABMP("VTYP"),0)),U)["DIALYSIS")) S ABMDIAL=1  ;abm*2.6*21 HEAT240744
 I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")) D COMPILE^ABMDF28S  ;abm*2.6*21 HEAT240744
 K I,J,L
 I $P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),0)),U,26)="Y" D 2LNMDS^ABMDF28S  ;abm*2.6*21 split rtn
 S I=0
 D PGCNT^ABMDF28S  ;split rtn abm*2.6*21
 ;start new abm*2.6*13 HEAT117086
 S (ABMCTR,ABMRV("ZZTOT"),ABMRV("NCTOT"))=0
 D T1015^ABMDF28S  ;abm*2.6*21 IHS/SD/SDR HEAT205579
 I ABMP("ITYPE")="D" D
 .K I,J,L
 .S I=0
 .S ABMFND=0
 .F  S I=$O(ABMRV(I)) Q:'I  D  Q:ABMFND=1
 ..S J=" "
 ..F  S J=$O(ABMRV(I,J)) Q:($G(J)="")  D  Q:ABMFND=1
 ...I J="T1015" D  K ABMRV(I,J)
 ....S L=0
 ....F  S L=$O(ABMRV(I,J,L)) Q:'L  D
 .....I $P($G(^ABMDVTYP(ABMP("VTYP"),0)),U)["EPSDT",(+$P($G(ABMRV(I,J,L)),U,2)=0) D
 .....S $P(ABMRV(I,J,L),U,9)="OUTPATIENT CLINIC"
 .....S:J'="ZZTOT" ABMRV("ZZTOT")=ABMRV("ZZTOT")+$P(ABMRV(I,J,L),U,6)
 .....;Grand tot noncov'd chgs
 .....S:J'="ZZTOT" ABMRV("NCTOT")=ABMRV("NCTOT")+$P(ABMRV(I,J,L),U,7)
 .....;if not itemized bill & not done, accumulate tots
 .....I 'ABMITMZ,J'="ZZTOT" D
 ......S $P(ABMRV(I,"ZZTOT",1),U)=I  ;IEN to REV CODE
 ......S:$D(ABMP("CPT")) $P(ABMRV(I,"ZZTOT",1),"^",2)=ABMP("CPT")  ;CPT code
 ......N K
 ......;Accumulate tots per rev code
 ......F K=5:1:7 S $P(ABMRV(I,"ZZTOT",1),U,K)=$P(ABMRV(I,"ZZTOT",1),U,K)+$P(ABMRV(I,J,L),U,K)
 ......S $P(ABMRV(I,"ZZTOT",1),U,8)=$P(ABMRV(I,J,L),U,8)  ;unit chg
 ......S $P(ABMRV(I,"ZZTOT",1),U,3)=$P(ABMRV(I,J,L),U,3)
 .....I 'ABMITMZ,J'="ZZTOT" Q
 .....I ABMITMZ,J="ZZTOT" Q  ;If itemized & done, Q
 .....W !
 .....S ABMCTR=ABMCTR+1  ;Cnt items
 .....S ABMDE=$$GETREV^ABMDUTL(I)_"^^4R"  ;Rev code
 .....I L["." S ABMDE=""  ;abm*2.6*9 HEAT18507
 .....;I $$RCID^ABMERUTL(ABMP("INS"))'=61004!((ABMP("VDT")>3100630)&($P($G(^AUTNINS(ABMP("INS"),0)),U)="EAPC")) D WRT^ABMDF28W  ;#42  ;abm*2.6*4 HEAT12271  ;abm*2.6*21 HEAT268438
 .....I $$RCID^ABMERUTL(ABMP("INS"))'["61044"!((ABMP("VDT")>3100630)&($P($G(^AUTNINS(ABMP("INS"),0)),U)="EAPC")) D WRT^ABMDF28W  ;#42 ;abm*2.6*21 HEAT268438
 .....;If desc is blank, get it from vtyp in INS file
 .....I $P(ABMRV(I,J,L),U,9)="" D
 ......S ABMDE=$P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),U,9)
 ......S:ABMDE="" ABMDE=$P($G(^AUTTREVN(I,0)),U,2)  ;std abbrev
 ......S ABMDE=ABMDE_"^5^24"  ;Desc
 ......D WRT^ABMDF28W  ;#43
 .....I $P(ABMRV(I,J,L),U,9)'="" D  ;if desc, use it
 ......S ABMDE=$P(ABMRV(I,J,L),U,9)_"^5^24"  ;Desc
 ......I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")) S ABMDE="MAINTENANCE DIALYSIS WITH^5^25"  ;abm*2.6*21 HEAT240744
 ......D WRT^ABMDF28W  ;#43
 .....; HCPCS/rates--#44
 .....S ABMMODL=$S($P(ABMRV(I,J,L),U,3)]"":$P(ABMRV(I,J,L),U,3),1:"")
 .....S ABMMODL=ABMMODL_$S($P(ABMRV(I,J,L),U,4)]"":$P(ABMRV(I,J,L),U,4),1:"")
 .....S ABMMODL=ABMMODL_$S($P(ABMRV(I,J,L),U,12)]"":$P(ABMRV(I,J,L),U,12),1:"")
 .....S ABMDE=$S($L($P(ABMRV(I,J,L),U,2))>3:$P(ABMRV(I,J,L),U,2)_ABMMODL_"^30^14",$P(ABMRV(I,J,L),U,8)&(+$P(ABMRV(I,J,L),U,2)'=0):$J($P(ABMRV(I,J,L),U,8),1,2)_"^30^14R",+ABMMODL:$J(ABMMODL,1,2)_"^30^14",1:"")
 .....I $P($G(ABMRV(I,J,L)),U,14)'="",($P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),U,24)="Y") S ABMDE="RX"_$P(ABMRV(I,J,L),U,14)_"^30^9"
 .....I ABMDE=""&($D(ABMP("FLAT"))!((I>99)&(I<250))) S ABMDE=$J($S($D(ABMP("FLAT")):$P(ABMP("FLAT"),U),1:$P(ABMRV(I,J,L),U,8)),1,2)_"^30^14"  ;def flat rate
 .....I $$RCID^ABMERUTL(ABMP("INS"))=99999&(ABMP("VTYP")=997) S ABMDE=$S(ABMCTR=1:$J($P(ABMP("FLAT"),U),1,2),1:"")_"^30^14"  ;abm*2.6*20 HEAT262141
 .....D WRT^ABMDF28W
 .....S ABMDE=$$MDY^ABMDUTL($P(ABMRV(I,J,L),U,10))_"^45^6"  ;DOS
 .....D WRT^ABMDF28W  ;#45
 .....S ABMDE=$P(ABMRV(I,J,L),U,5)_"^52^7R"  ;Tot units/item
 .....D WRT^ABMDF28W  ;#46
 .....S ABMDE=$FN($P(ABMRV(I,J,L),U,6),"T",2)
 .....S ABMDE=$TR(ABMDE,".")_"^61^9R"  ;Tot chg per item
 .....I L["." S ABMDE=""  ;abm*2.6*9 HEAT18507
 .....D WRT^ABMDF28W  ;#47
 .....S ABMDE=$FN($P(ABMRV(I,J,L),U,7),"T",2)
 .....I +ABMDE D
 ......S ABMDE=$TR(ABMDE,".")_"^71^9R"  ;Tot noncover chgs/item
 ......D WRT^ABMDF28W  ;#48
 .....I $G(ABMRV(I,J,L,1))'="" D Z6004PRT^ABMDF28S  ;abm*2.6*21 IHS/SD/SDR HEAT240744
 ....S ABMFND=1
 ;end new HEAT117086
 K I,J,L
 S I=0
 ;S (ABMCTR,ABMRV("ZZTOT"),ABMRV("NCTOT"))=0  ;abm*2.6*13 HEAT117086
 S ABMPGCNT=1
 F  S I=$O(ABMRV(I)) Q:'I  D
 .S J=-1
 .F  S J=$O(ABMRV(I,J)) Q:J=""  D
 ..S L=0
 ..F  S L=$O(ABMRV(I,J,L)) Q:+L=0  D
 ...;Grand tot chgs
 ...I $P($G(^ABMDVTYP(ABMP("VTYP"),0)),U)["EPSDT",(+$P($G(ABMRV(I,J,L)),U,2)=0) D
 ....S $P(ABMRV(I,J,L),U,9)="OUTPATIENT CLINIC"
 ...S:J'="ZZTOT" ABMRV("ZZTOT")=ABMRV("ZZTOT")+$P(ABMRV(I,J,L),U,6)
 ...;Grand tot noncovered chgs
 ...S:J'="ZZTOT" ABMRV("NCTOT")=ABMRV("NCTOT")+$P(ABMRV(I,J,L),U,7)
 ...;if not itemized bill & not done, accumulate tots
 ...I 'ABMITMZ,J'="ZZTOT" D
 ....S $P(ABMRV(I,"ZZTOT",1),U)=I  ;IEN to REV CODE
 ....S:$D(ABMP("CPT")) $P(ABMRV(I,"ZZTOT",1),"^",2)=ABMP("CPT")  ;CPT code
 ....N K
 ....;Accumulate tots per rev code
 ....F K=5:1:7 S $P(ABMRV(I,"ZZTOT",1),U,K)=$P(ABMRV(I,"ZZTOT",1),U,K)+$P(ABMRV(I,J,L),U,K)
 ....S $P(ABMRV(I,"ZZTOT",1),U,8)=$P(ABMRV(I,J,L),U,8)  ;unit chg
 ....S $P(ABMRV(I,"ZZTOT",1),U,3)=$P(ABMRV(I,J,L),U,3)
 ....Q
 ...I 'ABMITMZ,J'="ZZTOT" Q
 ...I ABMITMZ,J="ZZTOT" Q    ;If itemized & done, Q
 ...W !
 ...S ABMCTR=ABMCTR+1  ;Cnt items
 ...;If >22 items, complete bottom of form, start new page
 ...I ABMCTR>22 D
 ....S ABMORE=1
 ....S ABMDE=ABMPGCNT_"    "_ABMPGTOT_"^11^15"  ;page#
 ....D WRT^ABMDF28W  ;#43
 ....;S ABMDE=$$MDY^ABMDUTL($S($G(ABMP("PRINTDT"))="O":$P($G(^ABMDTXST(DUZ(2),$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),1),U,7),0)),U),1:DT))_"^45^20"  ;creation date  ;abm*2.6*4 HEAT17615  ;abm*2.6*11 HEAT81561
 ....S ABMDE=$$MDY^ABMDUTL($S($G(ABMP("PRINTDT"))="O":$P($G(^ABMDTXST(DUZ(2),$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),1),U,7),0)),U),$G(ABMP("PRINTDT"))="A":$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),1)),U,5),1:DT))_"^45^20"  ;create dt ;abm*2.6*11 HEAT81561
 ....D WRT^ABMDF28W
 ....W !
 ....S ABMLNPI=$S($P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1)),U,8)'="":$P(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1),U,8),$P($G(^ABMDPARM(ABMP("LDFN"),1,2)),U,12)'="":$P(^ABMDPARM(ABMP("LDFN"),1,2),U,12),1:ABMP("LDFN"))
 ....S ABMDE=$S($P($$NPI^XUSNPI("Organization_ID",ABMLNPI),U)>0:$P($$NPI^XUSNPI("Organization_ID",ABMLNPI),U),1:"")  ;NPI-#56
 ....I DUZ(2)=4610,($$GET1^DIQ(9999999.18,ABMP("INS"),".01","E")="EDS/CDP") S ABMDE=1124150891  ;abm*2.6*19 HEAT116949
 ....S ABMDE=ABMDE_"^68^15"
 ....D WRT^ABMDF28W
 ....S ABMPGCNT=ABMPGCNT+1
 ....N I,J
 ....D 42
 ....D ^ABMDF28Z
 ....W $$EN^ABMVDF("IOF")
 ....N I,J
 ....D 1^ABMDF28X
 ....K ABMORE
 ....N I
 ....F I=1:1:4 W !
 ....S ABMCTR=1
 ....Q
 ...S ABMDE=$$GETREV^ABMDUTL(I)_"^^4R"  ;Rev code
 ...I L["." S ABMDE=""  ;abm*2.6*9 HEAT18507
 ...;I $$RCID^ABMERUTL(ABMP("INS"))'=61004!((ABMP("VDT")>3100630)&($P($G(^AUTNINS(ABMP("INS"),0)),U)="EAPC")) D WRT^ABMDF28W  ;#42  ;abm*2.6*4 HEAT12271  ;abm*2.6*21 HEAT268438
 ...I $$RCID^ABMERUTL(ABMP("INS"))'["61044"!((ABMP("VDT")>3100630)&($P($G(^AUTNINS(ABMP("INS"),0)),U)="EAPC")) D WRT^ABMDF28W  ;#42  ;abm*2.6*21 HEAT268438
 ...;If desc is blank, get it from vtyp in INS file
 ...I $P(ABMRV(I,J,L),U,9)="" D
 ....S ABMDE=$P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),U,9)
 ....S:ABMDE="" ABMDE=$P($G(^AUTTREVN(I,0)),U,2)  ;std abbrev
 ....S ABMDE=ABMDE_"^5^24"  ;Desc
 ....I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")&(J="Z6004")) S ABMDE="MAINTENANCE DIALYSIS WITH^5^25"  ;abm*2.6*21 HEAT240744
 ....D WRT^ABMDF28W  ;#43
 ....Q
 ...I $P(ABMRV(I,J,L),U,9)'="" D  ;if desc, use it
 ....S ABMDE=$P(ABMRV(I,J,L),U,9)_"^5^24"  ;Desc
 ....D WRT^ABMDF28W  ;#43
 ....Q
 ...;HCPCS/rates-#44
 ...S ABMMODL=$S($P(ABMRV(I,J,L),U,3)]"":$P(ABMRV(I,J,L),U,3),1:"")
 ...S ABMMODL=ABMMODL_$S($P(ABMRV(I,J,L),U,4)]"":$P(ABMRV(I,J,L),U,4),1:"")
 ...S ABMMODL=ABMMODL_$S($P(ABMRV(I,J,L),U,12)]"":$P(ABMRV(I,J,L),U,12),1:"")
 ...S ABMDE=$S($L($P(ABMRV(I,J,L),U,2))>3:$P(ABMRV(I,J,L),U,2)_ABMMODL_"^30^14",$P(ABMRV(I,J,L),U,8)&(+$P(ABMRV(I,J,L),U,2)'=0):$J($P(ABMRV(I,J,L),U,8),1,2)_"^30^14R",+ABMMODL:$J(ABMMODL,1,2)_"^30^14",1:"")
 ...I $P($G(ABMRV(I,J,L)),U,14)'="",($P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),U,24)="Y") S ABMDE="RX"_$P(ABMRV(I,J,L),U,14)_"^30^9"
 ...I ABMDE=""&($D(ABMP("FLAT"))!((I>99)&(I<250))) S ABMDE=$J($S($D(ABMP("FLAT")):$P(ABMP("FLAT"),U),1:$P(ABMRV(I,J,L),U,8)),1,2)_"^30^14"  ;deflt flat rate
 ...I $P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1)),U,20)="Y" S ABMDE="^30^14"  ;abm*2.6*11 IHS/SD/AML HEAT92962
 ...I $$RCID^ABMERUTL(ABMP("INS"))=99999&(ABMP("VTYP")=997) S ABMDE=$S(ABMCTR=1:$J($P(ABMP("FLAT"),U),1,2),1:"")_"^30^14"  ;abm*2.6*20 HEAT262141
 ...I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")&(J="Z6004")) S ABMDE="^30^14"  ;abm*2.6*21 HEAT240744
 ...D WRT^ABMDF28W
 ...S ABMDE=$$MDY^ABMDUTL($P(ABMRV(I,J,L),U,10))_"^45^6"  ;DOS
 ...D WRT^ABMDF28W  ;#45
 ...S ABMDE=$P(ABMRV(I,J,L),U,5)_"^52^7R"  ;Tot units/item
 ...I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")&(J="Z6004")) S ABMDE="^52^7R"  ;abm*2.6*21 HEAT240744
 ...D WRT^ABMDF28W  ;#46
 ...S ABMDE=$FN($P(ABMRV(I,J,L),U,6),"T",2)
 ...S ABMDE=$TR(ABMDE,".")_"^61^9R"  ;Tot chg per item
 ...I L["." S ABMDE=""  ;abm*2.6*9 HEAT18507
 ...I $$RCID^ABMERUTL(ABMP("INS"))=99999&(ABMP("VTYP")=997) S ABMDE="^61^9R"  ;abm*2.6*20 HEAT262141
 ...I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")&(J="Z6004")) S ABMDE="^61^9R"  ;abm*2.6*21 HEAT240744
 ...D WRT^ABMDF28W  ;#47
 ...S ABMDE=$FN($P(ABMRV(I,J,L),U,7),"T",2)
 ...I +ABMDE D
 ....S ABMDE=$TR(ABMDE,".")_"^71^9R"  ;Tot noncover chgs/item
 ....D WRT^ABMDF28W  ;#48
 ....Q
 ...I $G(ABMRV(I,J,L,1))'="" D Z6004PRT^ABMDF28S  ;abm*2.6*21 IHS/SD/SDR HEAT240744
 F ABMCTR=ABMCTR:1:22 W !  ;get to line 23
 S ABMDE="0001 TOTAL^^4"
 I $$RCID^ABMERUTL(ABMP("INS"))["61044"  S ABMDE="001 TOTAL^^4"  ;abm*2.6*21 HEAT268438
 D WRT^ABMDF28W
 S ABMDE=ABMPGCNT_"    "_ABMPGTOT_"^10^15"  ;page #
 D WRT^ABMDF28W  ;#43
 ;creation date
 S ABMDE=$$MDY^ABMDUTL($S($G(ABMP("PRINTDT"))="O":$P($G(^ABMDTXST(DUZ(2),$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),1),U,7),0)),U),$G(ABMP("PRINTDT"))="A":$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),1)),U,5),1:DT))_"^45^20"  ;create dt ;abm*2.6*11 HEAT81561
 D WRT^ABMDF28W
 S ABMDE=$TR($FN(ABMRV("ZZTOT"),"T",2),".")_"^60^10R"  ;Grand tot
 D WRT^ABMDF28W  ;last item in desc section
 I +ABMRV("NCTOT") D
 .S ABMDE=$TR($FN(ABMRV("NCTOT"),"T",2),".")_"^69^10R"
 .D WRT^ABMDF28W  ;Grand tot-noncovered items
 .Q
 K ABMRV
 W !
 S ABMLNPI=$S($P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1)),U,8)'="":$P(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1),U,8),$P($G(^ABMDPARM(ABMP("LDFN"),1,2)),U,12)'="":$P(^ABMDPARM(ABMP("LDFN"),1,2),U,12),1:ABMP("LDFN"))
 S ABMDE=$S($P($$NPI^XUSNPI("Organization_ID",ABMLNPI),U)>0:$P($$NPI^XUSNPI("Organization_ID",ABMLNPI),U),1:"")  ;NPI-#56
 I DUZ(2)=4610,($$GET1^DIQ(9999999.18,ABMP("INS"),".01","E")="EDS/CDP") S ABMDE=1124150891  ;abm*2.6*19 HEAT116949
 S ABMDE=ABMDE_"^68^15"
 D WRT^ABMDF28W
 ;
42 ;
 ;Lines 42 - 44
 K ABMP("SET")
 D ^ABMER30  ;get ins, pymt data
 N I
 F I=1:1:3 D  ;check for blank entries; if any, move others up
 .I '$D(ABMREC(30,I)) D
 ..S ABMREC(30,I)=$G(ABMREC(30,(I+1)))
 ..S ABMREC(31,I)=$G(ABMREC(31,(I+1)))
 F I=1:1:3 D
 .W !
 .;Q:'$D(ABMREC(30,I))  ;HEAT144755
 .Q:$TR(ABMREC(30,I),"")=""  ;HEAT144755
 .;Ins name_" "_Payor Sub ID
 .S ABMDE=$S($E(ABMREC(30,I),54,78)["RAILROAD":"RAILROAD MEDICARE",1:$E(ABMREC(30,I),54,78))_" "_$E(ABMREC(30,I),31,34)_"^^22"
 .;I $$RCID^ABMERUTL(+$G(ABMP("INS",I)))=61044 S ABMDE="O/P MEDI-CAL^^22"  ;abm*2.6*19 HEAT116949
 .I $$RCID^ABMERUTL(+$G(ABMP("INS",I)))["61044" S ABMDE="O/P MEDI-CAL^^22"  ;abm*2.6*19 HEAT116949
 .D WRT^ABMDF28W  ;#50
 .S ABMDE=$E(ABMREC(30,I),160,172)_"^23^15"  ;Provider ID (blank)
 .I $P($G(^AUTNINS(ABMP("INS"),0)),U)="IOWA MEDICAID" S ABMDE="^23^15"
 .D WRT^ABMDF28W  ;#51
 .S ABMDE=$E(ABMREC(30,I),142)_"^38^1"  ;Release code
 .D WRT^ABMDF28W  ;#52
 .S ABMDE=$E(ABMREC(30,I),143)_"^41^1"  ;Ben Assgn Indicator
 .D WRT^ABMDF28W  ;#53
 .S ABMDE=+$E(ABMREC(30,I),173,182)_" ^43^10R"  ;3PB pymt receive
 .I +ABMDE D WRT^ABMDF28W  ;#54
 .S ABMDE=+$E(ABMREC(30,I),183,192)_" ^55^10R"  ;Est 3PB amt due
 .I +ABMDE D WRT^ABMDF28W  ;#55
 .I I=1 D  ;other prov ID-#57
 ..S Y=$P($G(^ABMNINS(ABMP("LDFN"),+ABMP("INS",I),1,ABMP("VTYP"),0)),U,8)
 ..S:Y="" Y=$P($G(^AUTNINS(+ABMP("INS",I),15,ABMP("LDFN"),0)),U,2)
 ..S:Y="" Y=$TR($P($G(^AUTTLOC(DUZ(2),0)),U,18),"-")
 ..Q:$P($G(^AUTNINS(ABMP("INS"),0)),U)["VMBP"  ;abm*2.6*11 IHS/SD/AML 7/30/2013 RQMT_94
 ..S ABMDE=Y_"^67^15"
 ..I $P($G(^AUTNINS(ABMP("INS"),0)),U)="IOWA MEDICAID" S ABMDE="^67^15"
 ..I $P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),0)),U,8)=2 D PRIMECK^ABMDF28V  ;abm*2.6*21 HEAT97615
 ..I $P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),0)),U,8)=2,$G(ABMTSIFG)=1 Q  ;don't write #57 if Medicare & TSI billed  ;abm*2.6*21 HEAT97615
 ..D WRT^ABMDF28W
 K ABMR
 Q
