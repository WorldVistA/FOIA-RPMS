ABMDF28T ; IHS/SD/SDR - PRINT UB-04 ;  
 ;;2.6;IHS 3P BILLING SYSTEM;**3,8,9,10,11,14,16,21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR-2.6*3-POA changes-removed insurer type "R" check
 ;IHS/SD/SDR-2.6*14-ICD10 002F-Updated ICD indicator on form to 9 or 0
 ;IHS/SD/SDR-2.6*16-HEAT236243-Moved dt for box 74 so there is space between PX code and date.
 ;IHS/SD/SDR 2.6*21 Split routine from ABMDF28Z due to size.
 ;IHS/SD/SDR-2.6*21 HEAT97615 - Remove ID qualifier and ID from box 76 if Medicare is active and tribal
 ;IHS/SD/SDR-2.6*21 HEAT123457 - changed 61044 references from 'equals' to 'contains'
 ;IHS/SD/SDR-2.6*21 HEAT128931 - FL64 wasn't printing when insurer uses plan name
 ;IHS/SD/SDR-2.6*21 HEAT162190 - Print taxnomoy in 81 for Montana DPHHS.
 ;IHS/SD/SDR-2.6*21 HEAT189659 - Print taxonomy in 81 for SD Medicaid.
 ;IHS/SD/SDR-2.6*21 HEAT217449-Moved box 76 one char left.  Was only printing 7 of 8 chars of prov id.
 ; self-insured has already been billed.
 ;
55 ;
 W !
 N I
 F I=40:10:120 D
 .D @(I_"^ABMER70A")
 N I
 F I=250,260,290,300 D
 .D @(I_"^ABMER70")
 S ABMDE=ABMR(70,40)_"^1^7"  ;Principle DX
 D WRT^ABMDF28W  ;FL #67
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,40,"POA")'=1:$G(ABMR(70,40,"POA")),1:"")_"^8^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,50)_"^9^7"  ;Other DX 1
 D WRT^ABMDF28W  ;FL #67a
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,50,"POA")'=1:$G(ABMR(70,50,"POA")),1:"")_"^16^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,60)_"^17^7"  ;Other DX 2
 D WRT^ABMDF28W  ;FL #67b
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,60,"POA")'=1:$G(ABMR(70,60,"POA")),1:"")_"^24^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,70)_"^25^7"  ;Other DX 3
 D WRT^ABMDF28W  ;FL #67c
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,70,"POA")'=1:$G(ABMR(70,70,"POA")),1:"")_"^32^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,80)_"^33^7"  ;Other DX 4
 D WRT^ABMDF28W  ;FL #67d
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,80,"POA")'=1:$G(ABMR(70,80,"POA")),1:"")_"^40^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,90)_"^41^7"  ;Other DX 5
 D WRT^ABMDF28W  ;FL #67e
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,90,"POA")'=1:$G(ABMR(70,90,"POA")),1:"")_"^48^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,100)_"^49^7"  ;Other DX 6
 D WRT^ABMDF28W  ;FL #67f
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,100,"POA")'=1:$G(ABMR(70,100,"POA")),1:"")_"^56^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,110)_"^57^7"  ;Other DX 7
 D WRT^ABMDF28W  ;FL #67g
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,110,"POA")'=1:$G(ABMR(70,110,"POA")),1:"")_"^64^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,120)_"^65^7"  ;Other DX 8
 D WRT^ABMDF28W  ;FL #67h
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,120,"POA")'=1:$G(ABMR(70,120,"POA")),1:"")_"^72^1"
 D WRT^ABMDF28W  ;FL #67 POA
 F I=130:10:200 D
 .D @(I_"^ABMER70A")
 W !
 ;S ABMDE="9^^1"  ;DX Version Qualifier-always 9  ;abm*2.6*14 ICD10 002F
 S ABMDE=$S(+$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),0)),U,21)=10:"0",1:"9")_"^^1"  ;DX Version Qualifier -9 for ICD9; 0 for ICD10  ;abm*2.6*14 ICD10 002F
 D WRT^ABMDF28W  ;FL #66
 S ABMDE=ABMR(70,130)_"^1^7"  ;Other DX 9
 D WRT^ABMDF28W  ;FL #67i
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,130,"POA")'=1:$G(ABMR(70,130,"POA")),1:"")_"^8^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,140)_"^9^7"  ;Other DX 10
 D WRT^ABMDF28W   ;FL #67j
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,140,"POA")'=1:$G(ABMR(70,140,"POA")),1:"")_"^16^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,150)_"^17^7"  ;Other DX 11
 D WRT^ABMDF28W   ;FL #67k
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,150,"POA")'=1:$G(ABMR(70,150,"POA")),1:"")_"^24^1"
 D WRT^ABMDF28W  ; FL #67 POA
 S ABMDE=ABMR(70,160)_"^25^7"  ;Other DX 12
 D WRT^ABMDF28W  ;FL #67l
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,160,"POA")'=1:$G(ABMR(70,160,"POA")),1:"")_"^32^1"
 D WRT^ABMDF28W  ; FL #67 POA
 S ABMDE=ABMR(70,170)_"^33^7"  ;Other DX 13
 D WRT^ABMDF28W  ;FL #67m
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,170,"POA")'=1:$G(ABMR(70,170,"POA")),1:"")_"^40^1"
 D WRT^ABMDF28W  ; FL #67 POA
 S ABMDE=ABMR(70,180)_"^41^7"  ;Other DX 14
 D WRT^ABMDF28W  ;FL #67n
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,180,"POA")'=1:$G(ABMR(70,180,"POA")),1:"")_"^48^1"
 D WRT^ABMDF28W  ; FL #67 POA
 S ABMDE=ABMR(70,190)_"^49^7"  ;Other DX 15
 D WRT^ABMDF28W  ;FL #67o
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,190,"POA")'=1:$G(ABMR(70,190,"POA")),1:"")_"^56^1"
 D WRT^ABMDF28W  ; FL #67 POA
 S ABMDE=ABMR(70,200)_"^57^7" ;Other DX 16
 D WRT^ABMDF28W  ;FL #67p
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,200,"POA")'=1:$G(ABMR(70,200,"POA")),1:"")_"^64^1"
 D WRT^ABMDF28W  ; FL #67 POA
 W !
 ;
 S ABMDE=ABMR(70,250)_"^4^7" ;Admitting DX
 D WRT^ABMDF28W  ;FL #69
 S ABMDE=ABMR(70,250)_"^17^7"  ;Pt Reason Dx
 D WRT^ABMDF28W  ;FL #70
 ;
 S ABMDE=ABMR(70,260)_"^48^7"  ;Ext. cause of injury (1)
 D WRT^ABMDF28W  ;FL #72
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,260,"POA")'=1:$G(ABMR(70,260,"POA")),1:"")_"^55^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,290)_"^56^7" ;Ext. cause of injury (2)
 D WRT^ABMDF28W  ;FL #72
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,290,"POA")'=1:$G(ABMR(70,290,"POA")),1:"")_"^63^1"
 D WRT^ABMDF28W  ;FL #67 POA
 S ABMDE=ABMR(70,300)_"^64^7"  ;Ext. cause of injury (3)
 D WRT^ABMDF28W  ;FL #72
 ;I ABMP("ITYPE")="R" D
 S ABMDE=$S(ABMR(70,300,"POA")'=1:$G(ABMR(70,300,"POA")),1:"")_"^71^1"
 D WRT^ABMDF28W  ;FL #67 POA
 ;
 Q
56 ;
 W !
 D PROV^ABMDF28W
 ;Attending Prov
 ;I $$RCID^ABMERUTL(ABMP("INS"))'=61044 D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 I $$RCID^ABMERUTL(ABMP("INS"))'["61044" D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 .I $P(ABM("PRV",1),U,4)'="" D
 ..S ABMDE=$P($P(ABM("PRV",1),U,4),"#",2)_"^59^10"  ;NPI
 ..I $P($G(^AUTNINS(ABMP("INS"),0)),U)="MONTANA DPHHS" S ABMDE=$P($P(ABM("PRV",1),U,4),"#",2)_"^57^10"  ;NPI  ;abm*2.6*21 IHS/SD/SDR HEAT162190
 ..D WRT^ABMDF28W  ;FL #76
 .;don't print 76 ID qual and ID if Medicare and Tribal Self-Insured
 .I $P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),0)),U,8)=2,$G(ABMTSIFG)=1 Q  ;abm*2.6*21 IHS/SD/SDR HEAT97615
 .;S ABMDE=$P($P(ABM("PRV",1),U,3),"#")_"^71^2"  ;ID qualifier  ;abm*2.6*21 IHS/SD/SDR HEAT217449
 .S ABMDE=$P($P(ABM("PRV",1),U,3),"#")_"^70^2"  ;ID qualifier  ;abm*2.6*21 IHS/SD/SDR HEAT217449
 .I DUZ("2")=1157 S ABMDE="^71^2"  ;IHS/SD/AML HEAT46786 - Remove ID Qualifier
 .I $P($G(^AUTNINS(ABMP("INS"),0)),U)="MONTANA DPHHS" S ABMDE="ZZ^68^2"  ;abm*2.6*21 IHS/SD/SDR HEAT162190
 .D WRT^ABMDF28W  ;FL #76
 .;S ABMDE=$P($P(ABM("PRV",1),U,3),"#",2)_"^73^9"  ;ID  ;abm*2.6*21 IHS/SD/SDR HEAT217449
 .S ABMDE=$P($P(ABM("PRV",1),U,3),"#",2)_"^72^9"  ;ID  ;abm*2.6*21 IHS/SD/SDR HEAT217449
 .I DUZ("2")=1157 S ABMDE="^73^9"  ;IHS/SD/AML HEAT46786 - Remove ID
 .I $P($G(^AUTNINS(ABMP("INS"),0)),U)="MONTANA DPHHS" S ABMDE="261QR1300X^70^10"  ;abm*2.6*21 IHS/SD/SDR HEAT162190
 .D WRT^ABMDF28W  ;FL #76
 ;start new abm*2.6*21 IHS/SD/SDR HEAT240744
 I ($$RCID^ABMERUTL(ABMP("INS"))["61044")&($P($G(^ABMDVTYP(ABMP("VTYP"),0)),U)["DIALYSIS")&(+$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,"C","F",0))'=0) D  ;Medi-Cal, Dialysis, and a referring provider
 .S ABMPRV=+$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,"C","F",0))
 .S ABMPRV=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,ABMPRV,0),U)
 .I $P($$NPI^XUSNPI("Individual_ID",ABMPRV),U)>0 D
 ..S ABMDE=$P($$NPI^XUSNPI("Individual_ID",ABMPRV),U)_"^59^10"
 ..D WRT^ABMDF28W  ;FL #76
 ;end new abm*2.6*21 IHS/SD/SDR HEAT240744
 Q
57 ;
 W !
 N I
 F I=130:10:240,270 D
 .D @(I_"^ABMER70")
 I $P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1)),U,9)'="N" D
 .;S ABMDE=$TR(ABMR(70,130),".")_"^1^7"  ;Principle Procedure code  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 .S ABMDE=$TR(ABMR(70,130),".")_"^0^7"  ;Principle Procedure code  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 .D WRT^ABMDF28W   ;FL #74
 .S ABMDE=ABMR(70,140)_"^8^6"  ;Principle Procedure date
 .D WRT^ABMDF28W   ;FL #74a
 .S ABMDE=$TR(ABMR(70,150),".")_"^15^7" ;Other Procedure code - 1
 .D WRT^ABMDF28W  ;FL #74b
 .S ABMDE=ABMR(70,160)_"^23^6" ;Other Procedure date - 1
 .D WRT^ABMDF28W  ;FL #74c
 .S ABMDE=$TR(ABMR(70,170),".")_"^30^7"  ;Other Procedure code - 2
 .D WRT^ABMDF28W  ;FL #74d
 .S ABMDE=ABMR(70,180)_"^38^6"  ;Other Procedure date - 2
 .D WRT^ABMDF28W  ;FL #74e
 ;I $$RCID^ABMERUTL(ABMP("INS"))'=61044 D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 I $$RCID^ABMERUTL(ABMP("INS"))'["61044" D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 .S ABMDE=$P($P(ABM("PRV",1),U),",")_"^53^15"  ;Attending provider name
 .D WRT^ABMDF28W  ; FL #76
 .S ABMDE=$P($P(ABM("PRV",1),U),",",2)_"^70^11"  ;Attending provider name
 .D WRT^ABMDF28W  ; FL #76
 Q
