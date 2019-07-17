ABMDF28Y ; IHS/SD/SDR - PRINT UB-04 ;    
 ;;2.6;IHS Third Party Billing;**1,2,4,6,9,10,11,13,19,20,21,22,23,25,27**;NOV 12, 2009;Build 486
 ;IHS/SD/SDR-2.6*20-HEAT262141-AHCCCS RX.  Print detail lines for all meds, but won't print price, only NDC, desc, date, and units.
 ;IHS/SD/SDR-2.6*21-HEAT205579-Made T1015 print first for ARBOR HEALTH PLAN
 ;IHS/SD/SDR-2.6*21-HEAT268438-check for 61044 from 61004 for Medi-Cal
 ;IHS/SD/SDR-2.6*21-HEAT240744-call to resort,print lines for Medi-Cal dialysis billing
 ;IHS/SD/SDR 2.6*22 HEAT335246 chk new parm for printing itemized w/first line printing flat rate and NDC.
 ;IHS/SD/SDR 2.6*23 HEAT347035 Changed how it was getting rev code; made rev code print when Medi-Cal and there is chg on line item.
 ;  Made change to ABMDF28S to ake T1015 print on the top line for Medi-Cal; it caused issue with ABMRV("ZZTOT" and ABMRV("NCTOT") so had to add $G to stop UNDEF
 ;IHS/SD/SDR 2.6*25 CR10016 correction to AZ Mcd 997 to make 0.00 print on all lines except first; first line prints flat rate;
 ;  Also made change to have rev code print on every line even if chg is 0.00
 ;IHS/SD/AML,SDR 2.6*27 CR8897 Split to routine ABMDF28Q due to size.  Made rev code print for AZ Mcd 997 claims
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
 D 38^ABMDF28V  ;split abm*2.6*21
 D VALCDS1^ABMDF28V  ;split abm*2.6*21
14 ;
 W !
 D 38P2^ABMDF28V  ;split abm*2.6*21
 D VALCDS2^ABMDF28V  ;split abm*2.6*21
 Q:$G(ABMORE)
15 ;
 W !
 K ABM
 D VALCDS3^ABMDF28V  ;split abm*2.6*21
16 ;
 W !
 D VALCDS4^ABMDF28V  ;split abm*2.6*21
18 ;
 ;Lines 18-40 on form (desc area)
 ;ABMRV(IEN,code,cntr)=IEN^Code^Mod^2nd Mod^Total unts^Total chgs^^Unit chg^NDC name/desc^dt/tm
 W !
 K ABMRV
 D ORV^ABMERGRV  ;get other rev codes
 D P1^ABMERGRV  ;Build ABMVR of rev codes
 ;Itemized UB-92 flag (1=yes, 0=no)
 S ABMITMZ=$P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),"^",12)
 S ABMPOS=0  ;abm*2.6*27 IHS/SD/SDR CR8897
 I "^51^52^53^54^55^"[("^"_$$GET1^DIQ(9002274.03,$P($G(^ABMDPARM(ABMP("LDFN"),1,3)),U,6),".01","E")_"^") S ABMPOS=1  ;Place of Service setup for facility  ;abm*2.6*27 IHS/SD/SDR CR8897
 I (((ABMITMZ)&($P($G(^ABMNINS(DUZ(2),ABMP("INS"),0)),U,14)="Y")&($D(ABMP("FLAT")))!($$RCID^ABMUTLP(ABMP("INS")))["61044")) D START^ABMERGR4 K ABMP("FLAT")  ;abm*2.6*22 HEAT335246
 I (($G(ABMP("VTYP"))=721)!($P($G(^ABMDVTYP(ABMP("VTYP"),0)),U)["DIALYSIS")) S ABMDIAL=1  ;abm*2.6*21 HEAT240744
 I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")) D COMPILE^ABMDF28S  ;dialysis  ;abm*2.6*21 HEAT240744
 ;
 ;start new abm*2.6*27 IHS/SD/SDR CR8897
 K I,J,L
 S I=0
 F  S I=$O(ABMRV(I)) Q:'I  D
 .S J=-1
 .F  S J=$O(ABMRV(I,J)) Q:J=""  D
 ..S L=0
 ..F  S L=$O(ABMRV(I,J,L)) Q:+L=0  D
 ...Q:$P($G(ABMRV(I,J,L)),U,2)=""
 ...S ABMX("CPT",$P(ABMRV(I,J,L),U,2))=+$G(ABMX("CPT",$P(ABMRV(I,J,L),U,2)))+1
 S ABMX("CPT","FLG")=0
 S I=""
 ;F  S I=$O(ABMX("CPT",I)) Q:I=""  D
 ;.I $G(ABMX("CPT",I))>1 S ABMX("CPT","FLG")=1
 ;I (($$RCID^ABMUTLP(ABMP("INS")))["61044")&(+$G(ABMX("CPT","FLG"))=1) D  ;if Medi-Cal and the same CPT multiple times
 I ($$RCID^ABMUTLP(ABMP("INS"))["61044") D  ;if Medi-Cal
 .I ((ABMP("VTYP")=142))&((ABMP("BTYP")=731)) D 23CMPL^ABMDF28S Q
 .I ((ABMPOS=1)&(ABMP("VTYP")=142)) D 23CMPL^ABMDF28S Q
 .I (($G(ABMDIAL)'=1)&(ABMP("VTYP")'=142)&(ABMP("BTYP")'=731)) D 23CMPL^ABMDF28S Q
 .I ((ABMPOS=1)&(ABMP("BTYP")=731)&(ABMP("VTYP")'=142)) D 23CMPL^ABMDF28S
 ;end new abm*2.6*27 IHS/SD/SDR CR8897
 ; 
 K I,J,L
 I $P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),0)),U,26)="Y" D 2LNMDS^ABMDF28S  ;put meds on 2 lines  ;abm*2.6*21 split rtn
 S I=0
 D PGCNT^ABMDF28S  ;split rtn abm*2.6*21
 ;start new abm*2.6*13 HEAT117086
 S (ABMCTR,ABMRV("ZZTOT"),ABMRV("NCTOT"))=0
 D T1015^ABMDF28S  ;abm*2.6*21 HEAT205579
 ;
 I ABMP("ITYPE")="D" D ^ABMDF28Q  ;abm*2.6*27 IHS/SD/SDR CR8897 split routine
 ;
 D ^ABMDF28P  ;abm*2.6*27 IHS/SD/SDR CR8897 split routine
 K I,J,L
 S I=0
 S ABMPGCNT=1
 F  S I=$O(ABMRV(I)) Q:'I  D
 .S J=-1
 .F  S J=$O(ABMRV(I,J)) Q:J=""  D
 ..S L=0
 ..F  S L=$O(ABMRV(I,J,L)) Q:+L=0  D
 ...I 'ABMITMZ,J'="ZZTOT" Q
 ...I ABMITMZ,J="ZZTOT" Q  ;If itemized & done, Q
 ...W !
 ...S ABMCTR=ABMCTR+1  ;Cnt items
 ...;If >22 items, complete bottom of form, start new page
 ...I ABMCTR>22 D
 ....S ABMORE=1
 ....S ABMDE=ABMPGCNT_"    "_ABMPGTOT_"^11^15"  ;page#
 ....D WRT^ABMDF28W  ;#43
 ....S ABMDE=$$MDY^ABMDUTL($S($G(ABMP("PRINTDT"))="O":$P($G(^ABMDTXST(DUZ(2),$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),1),U,7),0)),U),$G(ABMP("PRINTDT"))="A":$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),1)),U,5),1:DT))_"^45^20"  ;create dt
 ....D WRT^ABMDF28W
 ....W !
 ....S ABMLNPI=$S($P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1)),U,8)'="":$P(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1),U,8),$P($G(^ABMDPARM(ABMP("LDFN"),1,2)),U,12)'="":$P(^ABMDPARM(ABMP("LDFN"),1,2),U,12),1:ABMP("LDFN"))
 ....S ABMDE=$S($P($$NPI^XUSNPI("Organization_ID",ABMLNPI),U)>0:$P($$NPI^XUSNPI("Organization_ID",ABMLNPI),U),1:"")  ;NPI-#56
 ....I DUZ(2)=4610,($$GET1^DIQ(9999999.18,ABMP("INS"),".01","E")="EDS/CDP") S ABMDE=1124150891
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
 ...;S ABMDE=$$GETREV^ABMDUTL(I)_"^^4R"  ;Rev code  ;abm*2.6*23 HEAT347035
 ...S ABMDE=$S(($P(ABMRV(I,J,L),U)'=0):$$GETREV^ABMDUTL($P(ABMRV(I,J,L),U)),1:"")_"^^4R"  ;Rev code  ;abm*2.6*23 HEAT347035
 ...I L["." S ABMDE=""  ;abm*2.6*9 HEAT18507
 ...;I $$RCID^ABMERUTL(ABMP("INS"))'=61004!((ABMP("VDT")>3100630)&($P($G(^AUTNINS(ABMP("INS"),0)),U)="EAPC")) D WRT^ABMDF28W  ;#42  ;abm*2.6*21 HEAT268438
 ...;I $$RCID^ABMERUTL(ABMP("INS"))'["61044"!((ABMP("VDT")>3100630)&($P($G(^AUTNINS(ABMP("INS"),0)),U)="EAPC")) D WRT^ABMDF28W  ;#42  ;abm*2.6*21 HEAT268438  ;abm*2.6*23 HEAT347035
 ...;I '(($$RCID^ABMERUTL(ABMP("INS"))["61044")&($D(ABMP("FLAT"))))&(+$P(ABMRV(I,J,L),U,6)'=0) D WRT^ABMDF28W  ;abm*2.6*23 IHS/SD/SDR HEAT347035  ;abm*2.6*27 IHS/SD/SDR CR8897
 ...I (($$RCID^ABMERUTL(ABMP("INS"))=99999)&(ABMP("VTYP")=997)&(+$P(ABMRV(I,J,L),U,6)=0)) D WRT^ABMDF28W  ;abm*2.6*25 IHS/SD/SDR CR10016
 ...I ((ABMP("VDT")>3100630)&($P($G(^AUTNINS(ABMP("INS"),0)),U)="EAPC")) D WRT^ABMDF28W  ;#42  ;abm*2.6*21 HEAT268438  ;abm*2.6*23 HEAT347035
 ...;start new abm*2.6*27 IHS/SD/SDR CR8897
 ...I (($$RCID^ABMUTLP(ABMP("INS")))["61044") D
 ....I +$P(ABMRV(I,J,L),U)=0 Q  ;don't do this part if no rev code
 ....I ((ABMPOS=1)&((ABMP("BTYP")=731)!(ABMP("VTYP")'=142))) S ABMDE=$$GETREV^ABMDUTL($P(ABMRV(I,J,L),U))_"^^4"
 ....I '($D(ABMP("FLAT"))&(+$P(ABMRV(I,J,L),U,6)'=0)) S ABMDE=$$GETREV^ABMDUTL($P(ABMRV(I,J,L),U))_"^^4"
 ....I +$G(ABMDIAL)=1 S ABMDE="^^4"
 ....D WRT^ABMDF28W
 ...I ($$RCID^ABMUTLP(ABMP("INS"))'["61044") D WRT^ABMDF28W
 ...;end new abm*2.6*27 IHS/SD/SDR CR8897
 ...;If desc is blank, get it from vtyp in INS file
 ...I $P(ABMRV(I,J,L),U,9)="" D
 ....Q:+$P(ABMRV(I,J,L),U)=0  ;quit if no rev code  ;abm*2.6*23 HEAT347035
 ....S ABMDE=$P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),U,9)
 ....;S:ABMDE="" ABMDE=$P($G(^AUTTREVN(I,0)),U,2)  ;std abbrev  ;abm*2.6*23 HEAT347035
 ....S:ABMDE="" ABMDE=$P($G(^AUTTREVN($P(ABMRV(I,J,L),U),0)),U,2)  ;std abbrev  ;abm*2.6*23 HEAT347035
 ....S ABMDE=ABMDE_"^5^24"  ;Desc
 ....;I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")&(J="Z6004")) S ABMDE="MAINTENANCE DIALYSIS WITH^5^25"  ;abm*2.6*21 HEAT240744  ;broke between 21 and 26 so required a change  ;abm*2.6*27 IHS/SD/SDR CR8897
 ....I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")&($P(ABMRV(I,J,L),U,2)="Z6004")) S ABMDE="MAINTENANCE DIALYSIS WITH^5^25"  ;abm*2.6*21 HEAT240744  ;broke between 21 and 26 so required a change; abm*2.6*27 IHS/SD/SDR CR8897
 ....I (($$RCID^ABMUTLP(ABMP("INS"))["61044")&(+$P(ABMRV(I,J,L),U,6)=0)) S ABMDE="^^5^24"  ;don't print desc for Medi-Cal when charge amt is 0  ;abm*2.6*23 HEAT347035
 ....D WRT^ABMDF28W  ;#43
 ....Q
 ...I $P(ABMRV(I,J,L),U,9)'="" D  ;if desc, use it
 ....S ABMDE=$P(ABMRV(I,J,L),U,9)_"^5^24"  ;Desc
 ....I (($$RCID^ABMUTLP(ABMP("INS"))["61044")&(+$P(ABMRV(I,J,L),U,6)=0)) S ABMDE="^^5^24"  ;don't print desc for Medi-Cal when charge amt is 0  ;abm*2.6*23 HEAT347035
 ....D WRT^ABMDF28W  ;#43
 ....Q
 ...;start new abm*2.6*27 IHS/SD/SDR CR8897 - note moved this up from further down to make info print on first line not last line
 ...S ABMCAFLG=0
 ...I ($$RCID^ABMUTLP(ABMP("INS"))["61044")&(+$G(ABMITMZ)) D  I ABMCAFLG=1 Q
 ....I ((ABMPOS=1)&(ABMP("BTYP")=731)&(ABMP("VTYP")'=142)) S ABMCAFLG=1 D CALYRTC^ABMDF28S
 ....I ((ABMP("BTYP")=731)&(ABMP("VTYP")=142)) S ABMCAFLG=1 D 23PRT^ABMDF28S
 ...;end new abm*2.6*27 IHS/SD/SDR CR8897
 ...;HCPCS/rates-#44
 ...S ABMMODL=$S($P(ABMRV(I,J,L),U,3)]"":$P(ABMRV(I,J,L),U,3),1:"")
 ...S ABMMODL=ABMMODL_$S($P(ABMRV(I,J,L),U,4)]"":$P(ABMRV(I,J,L),U,4),1:"")
 ...S ABMMODL=ABMMODL_$S($P(ABMRV(I,J,L),U,12)]"":$P(ABMRV(I,J,L),U,12),1:"")
 ...S ABMDE=$S($L($P(ABMRV(I,J,L),U,2))>3:$P(ABMRV(I,J,L),U,2)_ABMMODL_"^30^14",$P(ABMRV(I,J,L),U,8)&(+$P(ABMRV(I,J,L),U,2)'=0):$J($P(ABMRV(I,J,L),U,8),1,2)_"^30^14R",+ABMMODL:$J(ABMMODL,1,2)_"^30^14",1:"")
 ...;make 2-digit CPT print for Medi-Cal
 ...I $$RCID^ABMUTLP(ABMP("INS"))["61044" D  ;abm*2.6*23 HEAT347035
 ....S ABMDE=$S($P(ABMRV(I,J,L),U,2)'="":$P(ABMRV(I,J,L),U,2)_ABMMODL_"^30^14",$P(ABMRV(I,J,L),U,8)&(+$P(ABMRV(I,J,L),U,2)'=0):$J($P(ABMRV(I,J,L),U,8),1,2)_"^30^14R",+ABMMODL:$J(ABMMODL,1,2)_"^30^14",1:"")  ;abm*2.6*23 HEAT347035
 ...I $P($G(ABMRV(I,J,L)),U,14)'="",($P($G(^ABMNINS(DUZ(2),ABMP("INS"),1,ABMP("VTYP"),0)),U,24)="Y") S ABMDE="RX"_$P(ABMRV(I,J,L),U,14)_"^30^9"
 ...I ABMDE=""&($D(ABMP("FLAT"))!((I>99)&(I<250))) S ABMDE=$J($S($D(ABMP("FLAT")):$P(ABMP("FLAT"),U),1:$P(ABMRV(I,J,L),U,8)),1,2)_"^30^14"  ;deflt flat rate
 ...I $P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1)),U,20)="Y" S ABMDE="^30^14"
 ...;I $$RCID^ABMERUTL(ABMP("INS"))=99999&(ABMP("VTYP")=997) S ABMDE=$S(ABMCTR=1:$J($P(ABMP("FLAT"),U),1,2),1:"")_"^30^14"  ;abm*2.6*20 HEAT262141  ;abm*2.6*25 IHS/SD/SDR CR10016
 ...I $$RCID^ABMERUTL(ABMP("INS"))=99999&(ABMP("VTYP")=997) S ABMDE=$S(ABMCTR=1:$J($P(ABMP("FLAT"),U),1,2),1:$J(0,1,2))_"^30^14R"  ;abm*2.6*20 HEAT262141  ;abm*2.6*25 IHS/SD/SDR CR10016
 ...;I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")&(J="Z6004")) S ABMDE="^30^14"  ;abm*2.6*21 HEAT240744  ;abm*2.6*27 IHS/SD/SDR CR8897
 ...I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")&($P(ABMRV(I,J,L),U,2)="Z6004")) S ABMDE="^30^14"  ;abm*2.6*21 HEAT240744  ;abm*2.6*27 IHS/SD/SDR CR8897
 ...I (($$RCID^ABMUTLP(ABMP("INS")))["61044")&(ABMP("BTYP")=731)&(ABMITMZ)&(+$G(ABMCPTM)=0) S ABMDE="^30^14"  ;abm*2.6*27 IHS/SD/AML CR8897
 ...D WRT^ABMDF28W
 ...S ABMDE=$$MDY^ABMDUTL($P(ABMRV(I,J,L),U,10))_"^45^6"  ;DOS
 ...I (($$RCID^ABMUTLP(ABMP("INS")))["61044")&(ABMP("BTYP")=731) S ABMDE=$$MDY^ABMDUTL($S($P(ABMRV(I,J,L),U,27):$P(ABMRV(I,J,L),U,27),1:$P(ABMRV(I,J,L),U,10)))_"^45^6"  ;DOS  ;abm*2.6*27 IHS/SD/SDR CR8897
 ...D WRT^ABMDF28W  ;#45
 ...S ABMDE=$P(ABMRV(I,J,L),U,5)_"^52^7R"  ;Tot units/item
 ...;I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")&(J="Z6004")) S ABMDE="^52^7R"  ;abm*2.6*21 HEAT240744  ;abm*2.6*27 IHS/SD/SDR CR8897
 ...;start new abm*2.6*27 IHS/SD/SDR CR8897
 ...I ($$RCID^ABMUTLP(ABMP("INS"))["61044") D
 ....I ((+$G(ABMDIAL)=1)&($P(ABMRV(I,J,L),U,2)="Z6004")) S ABMDE="^52^7R"
 ....I ((ABMP("BTYP")=731)&(ABMITMZ)&(+$G(ABMCPTM)=0)) S ABMDE="^52^7R"
 ....I (($P(ABMRV(I,J,L),U,5)=0)&($P(ABMRV(I,J,L),U,6)=0)) S ABMDE="00^52^7R"  ;if Medi-Cal, no charge, and no units make units print 00
 ...;end new abm*2.6*27 IHS/SD/SDR CR8897
 ...D WRT^ABMDF28W  ;#46
 ...S ABMDE=$FN($P(ABMRV(I,J,L),U,6),"T",2)
 ...S ABMDE=$TR(ABMDE,".")_"^61^9R"  ;Tot chg per item
 ...I L["." S ABMDE=""  ;abm*2.6*9 HEAT18507
 ...I $$RCID^ABMERUTL(ABMP("INS"))=99999&(ABMP("VTYP")=997) S ABMDE="^61^9R"
 ...;I ((+$G(ABMDIAL)=1)&(($$RCID^ABMUTLP(ABMP("INS")))["61044")&(J="Z6004")) S ABMDE="^61^9R"  ;abm*2.6*21 HEAT240744  ;abm*2.6*27 IHS/SD/SDR CR8897
 ...;start new abm*2.6*27 IHS/SD/SDR CR8897
 ...I ($$RCID^ABMUTLP(ABMP("INS"))["61044") D
 ....I ((+$G(ABMDIAL)=1)&($P(ABMRV(I,J,L),U,2)="Z6004")) S ABMDE="^61^9R"  ;abm*2.6*21 HEAT240744
 ....I ((ABMP("BTYP")=731)&(ABMITMZ)&(+$G(ABMCPTM)=0)) S ABMDE="^61^9R"
 ...;end new abm*2.6*27 IHS/SD/SDR CR8897
 ...D WRT^ABMDF28W  ;#47
 ...S ABMDE=$FN($P(ABMRV(I,J,L),U,7),"T",2)
 ...I +ABMDE D
 ....S ABMDE=$TR(ABMDE,".")_"^71^9R"  ;Tot noncover chgs/item
 ....D WRT^ABMDF28W  ;#48
 ....Q
 ...;I $G(ABMRV(I,J,L,1))'="" D Z6004PRT^ABMDF28S  ;abm*2.6*21 HEAT240744  ;abm*2.6*27 IHS/SD/AML CR8897
 ...;start new abm*2.6*27 IHS/SD/SDR CR8897
 ...I ($$RCID^ABMUTLP(ABMP("INS"))["61044")&(+$G(ABMITMZ)) D
 ....I (($P(ABMRV(I,J,L),U,2)="Z6004")&($G(ABMRV(I,J,L,1))'="")&(ABMP("VTYP")'=142)) D Z6004PRT^ABMDF28S
 ....;I (ABMP("BTYP")=731)&(ABMP("VTYP")'=142) D CALYRTC^ABMDF28S
 ....;I (ABMP("BTYP")=731)&(ABMP("VTYP")=142) D 23PRT^ABMDF28S
 ;end new abm*2.6*27 IHS/SD/SDR CR8897
 D 18A^ABMDF28R  ;abm*2.6*23 split rtn
 ;
42 ;
 D 42^ABMDF28R  ;abm*2.6*23 split rtn
 Q
