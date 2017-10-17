ABMDF28Z ; IHS/SD/SDR - PRINT UB-04 ;  
 ;;2.6;IHS 3P BILLING SYSTEM;**3,8,9,10,11,14,16,21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR-2.6*3-POA changes-removed insurer type "R" check
 ;IHS/SD/SDR-2.6*14-ICD10 002F-Updated ICD indicator on form to 9 or 0
 ;IHS/SD/SDR-2.6*16-HEAT236243-Moved dt for box 74 so there is space between PX code and date.
 ;IHS/SD/SDR 2.6*21 Split routine to ABMDF28T due to size.
 ;IHS/SD/SDR-2.6*21 HEAT97615 - Remove ID qualifier and ID from box 76 if Medicare is active and tribal
 ;IHS/SD/SDR-2.6*21 HEAT123457 - changed 61044 references from 'equals' to 'contains'
 ;IHS/SD/SDR-2.6*21 HEAT128931 - FL64 wasn't printing when insurer uses plan name
 ;IHS/SD/SDR-2.6*21 HEAT162190 - Print taxnomoy in 81 for Montana DPHHS.
 ;IHS/SD/SDR-2.6*21 HEAT189659 - Print taxonomy in 81 for SD Medicaid.
 ;IHS/SD/SDR-2.6*21 HEAT217449-Moved box 76 one char left.  Was only printing 7 of 8 chars of prov id.
 ; self-insured has already been billed.
 ;IHS/SD/SDR-2.6*21 -VMBP - Updated p11 changes to include Serena ref#s. Moved VA Station Number to correct field on form.
 ;
45 ; ABMPAID = Primary + Secondary + Tertiary + Prepaid
 ; ABMPBAL = Gross amount - ABM("PAID")
 ; FL #57
 ;
47 ;
 W !
 N I
 F I=1:1:3 D
 .W !
 .Q:'$D(ABMREC(30,I))
 .S ABMDE=$E(ABMREC(30,I),111,130)  ;Insured's last name
 .S ABMDE=$TR(ABMDE," ")
 .I $E(ABMREC(30,I),131,139)]"" S ABMDE=ABMDE_","_$TR($E(ABMREC(30,I),131,139)," ")   ;Add First Name
 .I $E(ABMREC(30,I),140)]"" S ABMDE=ABMDE_" "_$E(ABMREC(30,I),140)   ;Add Middle Init
 .S ABMDE=ABMDE_"^^25"  ;Insured's Name
 .D WRT^ABMDF28W  ;FL #58
 .S ABMDE=$E(ABMREC(30,I),144,145)_"^26^2"  ;Pat relation to Ins
 .D WRT^ABMDF28W  ;FL #59
 .S ABMDE=$E(ABMREC(30,I),35,53)_"^29^20"  ;Claim Certificate ID
 .;start new abm*2.6*11 HEAT86014
 .I ("^T^W^"[(ABMP("ITYPE")))&(I=1) D
 ..I $P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),7)),U,13)'="" S ABMDE=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),7)),U,13)_"^29^20" Q
 ..I $P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),7)),U,26)'="" S ABMDE=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),7)),U,26)_"^29^20" Q
 ..I $P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),4)),U,8)'="" S ABMDE=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),4)),U,8)_"^29^20"
 .;end new HEAT86014
 .;I ($P($G(ABMP("INS",I)),U,2)="V")&($P($G(^ABMDPARM(ABMP("LDFN"),1,3)),U,12)'="") S ABMDE=$P($G(^ABMDPARM(ABMP("LDFN"),1,3)),U,12)_"^29^20"  ;abm*2.6*11 VMBP RQMT_94  ;abm*2.6*21 IHS/SD/SDR VMBP
 .D WRT^ABMDF28W  ;FL #60
 .S ABMDE=$E(ABMREC(30,I),97,110)_"^49^14"  ;Insured Group Name
 .D WRT^ABMDF28W  ;FL #61
 .S ABMDE=$E(ABMREC(30,I),80,96)_"^64^16"  ;Insurance Group Num
 .D WRT^ABMDF28W  ;FL #62
51 ;
 W !
 N I
 F I=50:10:70 D
 .D @(I_"^ABMER40A")
 N I
 F I=1:1:3 D
 .W !
 .Q:'$D(ABMREC(30,I))
 .S ABMDE=ABMR(40,(10*I)+40)_"^^30"  ;Pro Auth #
 .I (($P($G(ABMP("INS",I)),U,2)="V")!(ABMREC(30,I)["VMBP"))&($P($G(^ABMDPARM(ABMP("LDFN"),1,3)),U,12)'="") S ABMDE=$P($G(^ABMDPARM(ABMP("LDFN"),1,3)),U,12)_"^^30"  ;abm*2.6*11 VMBP RQMT_94  ;abm*2.6*21 IHS/SD/SDR VMBP
 .D WRT^ABMDF28W   ;FL #63
 .;Document Control Number for active ins
 .;I $E(ABMREC(30,I),54,78)=$$FMT^ABMERUTL($P($G(^AUTNINS(ABMP("INS"),0)),U),25) D  ;abm*2.6*21 IHS/SD/SDR HEAT128931
 .I +$G(ABMP("INS",I))=ABMP("INS") D  ;abm*2.6*21 IHS/SD/SDR HEAT128931
 ..S ABMDE=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),4)),U,9)_"^30^26"
 ..D WRT^ABMDF28W  ;FL #64
 .S ABMDE=$E(ABMREC(31,I),87,110)_"^57^20"  ;Employer name
 .D WRT^ABMDF28W   ;FL #65
 .S ABMTMPDE=$E(ABMREC(31,I),129,143)  ;Employer city/state
 .S ABMDE=$P(ABMTMPDE," ",1)
 .N J
55 ;
 D 55^ABMDF28T  ;abm*2.6*20 IHS/SD/SDR split routine
 ;
56 ;
 D 56^ABMDF28T  ;abm*2.6*20 IHS/SD/SDR split routine
57 ;
 D 57^ABMDF28T  ;abm*2.6*20 IHS/SD/SDR split routine
58 ;
 ; Secondary Provider License #
 W !
 ;Operating provider
 ;I $$RCID^ABMERUTL(ABMP("INS"))'=61044 D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 I $$RCID^ABMERUTL(ABMP("INS"))'["61044" D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 .I $D(ABM("PRV",2)) D
 ..I $P(ABM("PRV",2),U,4)'="" D
 ...S ABMDE=$P($P($G(ABM("PRV",2)),U,4),"#",2)_"^59^10"  ;NPI
 ...D WRT^ABMDF28W  ;FL #77
 ..S ABMDE=$P($P(ABM("PRV",2),U,3),"#")_"^71^2"  ;ID qualifier
 ..D WRT^ABMDF28W  ;FL #77
 ..S ABMDE=$P($P(ABM("PRV",2),U,3),"#",2)_"^73^9"  ;ID
 ..D WRT^ABMDF28W  ;FL #77
 ;Operating provider-attending if Medical
 ;I $$RCID^ABMERUTL(ABMP("INS"))=61044 D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 I $$RCID^ABMERUTL(ABMP("INS"))["61044" D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 .I $D(ABM("PRV",1)) D  ;attending
 ..I $P(ABM("PRV",1),U,4)'="" D
 ...S ABMDE=$P($P($G(ABM("PRV",1)),U,4),"#",2)_"^59^10"  ;NPI
 ...D WRT^ABMDF28W  ;FL #77
 ..S ABMDE=$P($P(ABM("PRV",1),U,3),"#")_"^71^2"  ;ID qualifier
 ..D WRT^ABMDF28W  ;FL #77
 ..S ABMDE=$P($P(ABM("PRV",1),U,3),"#",2)_"^73^9"  ;ID
 ..D WRT^ABMDF28W  ;FL #77
 .;start new abm*2.6*21 IHS/SD/SDR HEAT240744
 .I '$D(ABM("PRV",1)) D  ;no attending; check for rendering if dialysis billing
 ..I $P($G(^ABMDVTYP(ABMP("VTYP"),0)),U)'["DIALYSIS" Q
 ..I +$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,"C","R",0))'=0 D  ;there's a rendering
 ...S ABMPRV=+$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,"C","R",0))
 ...S ABMPRV=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,ABMPRV,0),U)
 ...I $P($$NPI^XUSNPI("Individual_ID",ABMPRV),U)>0 D
 ....S ABMDE=$P($$NPI^XUSNPI("Individual_ID",ABMPRV),U)_"^59^10"
 ....D WRT^ABMDF28W  ;FL #77
 .;end new abm*2.6*21 IHS/SD/SDR HEAT240744
59 ;
 W !
 ;S ABMDE=ABMR(70,190)_"^2^7"  ;Other Procedure code - 3  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 S ABMDE=ABMR(70,190)_"^0^7"   ;Other Procedure code - 3  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 D WRT^ABMDF28W   ;FL #81e
 ;S ABMDE=ABMR(70,200)_"^9^6"  ;Other Procedure date - 3  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 S ABMDE=ABMR(70,200)_"^8^6"   ;Other Procedure date - 3  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 D WRT^ABMDF28W   ;FL #81f
 ;S ABMDE=ABMR(70,210)_"^16^7"  ;Other Procedure code - 4  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 S ABMDE=ABMR(70,210)_"^15^7"   ;Other Procedure code - 4  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 D WRT^ABMDF28W  ;FL #81g
 ;S ABMDE=ABMR(70,220)_"^24^6"  ;Other Procedure date - 4  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 S ABMDE=ABMR(70,220)_"^23^6"   ;Other Procedure date - 4  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 D WRT^ABMDF28W  ;FL #81h
 ;S ABMDE=ABMR(70,230)_"^31^7"  ;Other Procedure code - 5  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 S ABMDE=ABMR(70,230)_"^30^7"   ;Other Procedure code - 5  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 D WRT^ABMDF28W  ;FL #81i
 ;S ABMDE=ABMR(70,240)_"^39^6"  ;Other Procedure date - 5  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 S ABMDE=ABMR(70,240)_"^38^6"   ;Other Procedure date - 5  ;abm*2.6*16 IHS/SD/SDR HEAT236243
 D WRT^ABMDF28W  ;FL #81j
 ;Operating Provider name
 ;I $$RCID^ABMERUTL(ABMP("INS"))'=61044 D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 I $$RCID^ABMERUTL(ABMP("INS"))'["61044" D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 .S ABMDE=$P($P($G(ABM("PRV",2)),U),",")_"^53^15"
 .D WRT^ABMDF28W  ;FL #77
 .S ABMDE=$P($P($G(ABM("PRV",2)),U),",",2)_"^70^11"
 .D WRT^ABMDF28W  ;FL #77
60 ;
 W !
 S ABMDE=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),61,1,0))_"^^19"  ; remarks line 1
 ;I (ABMP("ITYPE")="V")&($P($G(^ABMDPARM(ABMP("LDFN"),1,3)),U,13)'="") S ABMDE=$P($G(^ABMDPARM(ABMP("LDFN"),1,3)),U,13)_"^^19"  ;abm*2.6*11 VMBP RQMT_94  ;abm*2.6*21 IHS/SD/SDR VMBP
 I ((ABMP("ITYPE")="V")!($$GET1^DIQ(9999999.18,ABMP("INS"),".01","E")["VMBP"))&($P($G(^ABMDPARM(ABMP("LDFN"),1,3)),U,13)'="") S ABMDE=$P($G(^ABMDPARM(ABMP("LDFN"),1,3)),U,13)_"^^19"  ;abm*2.6*11 VMBP RQMT_94  ;abm*2.6*21 IHS/SD/SDR VMBP
 D WRT^ABMDF28W  ;FL #80
 ;
 ;If NM Medicaid add Taxonomy and qualifier
 ;I ($P($G(^AUTNINS(ABMP("INS"),0)),U)="NEW MEXICO MEDICAID")!($P($G(^AUTNINS(ABMP("INS"),0)),U)="MEDICAID EXEMPT") D  ;abm*2.6*8 NOHEAT - ADD TAX FOR IA MCD ONLY
 ;I ($P($G(^AUTNINS(ABMP("INS"),0)),U)="NEW MEXICO MEDICAID")!($P($G(^AUTNINS(ABMP("INS"),0)),U)="MEDICAID EXEMPT")!($P($G(^AUTNINS(ABMP("INS"),0)),U)="IOWA MEDICAID") D  ;abm*2.6*8 NOHEAT - ADD TAX FOR IA MCD ONLY  ;abm*2.6*21 IHS/SD/SDR HEAT189659
 I "^NEW MEXICO MEDICAID^MEDICAID EXEMPT^IOWA MEDICAID^SOUTH DAKOTA MEDICAID^MONTANA DPHHS^"[("^"_$P($G(^AUTNINS(ABMP("INS"),0)),U)_"^") D  ;abm*2.6*8 NOHEAT - ADD TAX FOR IA MCD ONLY  ;abm*2.6*21 IHS/SD/SDR HEAT189659, HEAT162190
 .S ABMNLOC=$S($P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1)),U,8)'="":$P(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1),U,8),$P($G(^ABMDPARM(ABMP("LDFN"),1,2)),U,12)'="":$P(^(2),U,12),1:ABMP("LDFN"))  ;abm*2.6*10 HEAT82967
 .;S ABMDE="B3"_$$PTAX^ABMUTLF(ABMP("LDFN"))  ;taxonomy - form locator #81D  ;abm*2.6*10 IHS/SD/AML 9/18/12 -  HEAT82967
 .S ABMDE="B3"_$$PTAX^ABMUTLF(ABMNLOC) ;taxonomy - form locator #81D ;abm*2.6*10 IHS/SD/AML 9/18/12 - HEAT82967
 .S ABMDE=ABMDE_"^26^15"
 .D WRT^ABMDF28W
 ;abm*2.6*10 IHS/SD/AML 9/12/2012 HEAT83791 Begin changes
 I ($P($G(^AUTNINS(ABMP("INS"),0)),U)="NEBRASKA MEDICAID") D
 .S ABMDE=" "_$$PTAX^ABMUTLF(ABMP("LDFN"))
 .S ABMDE=ABMDE_"^26^15"
 .D WRT^ABMDF28W ;FL 81D, Line 1
 ;abm*2.6*10 IHS/SD/AML 9/11/12 HEAT83791 End changes
 ;
 ;Other provider (1)
 ;I $$RCID^ABMERUTL(ABMP("INS"))'=61044 D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 I $$RCID^ABMERUTL(ABMP("INS"))'["61044" D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 .I $D(ABM("PRV",3)) D
 ..I $P(ABM("PRV",3),U,4)'="" D
 ...S ABMDE=$P($P($G(ABM("PRV",3)),U,4),"#")_"^55^2"  ;NPI qualifier
 ...D WRT^ABMDF28W  ;FL #78
 ...S ABMDE=$P($P($G(ABM("PRV",3)),U,4),"#",2)_"^59^10"  ;NPI
 ...D WRT^ABMDF28W  ;FL #78
 ..S ABMDE=$P($P(ABM("PRV",3),U,3),"#")_"^71^2"  ;ID qualifier
 ..D WRT^ABMDF28W  ;FL #78
 ..S ABMDE=$P($P(ABM("PRV",3),U,3),"#",2)_"^73^9"  ;ID
 ..D WRT^ABMDF28W  ;FL #78
61 ;
 W !
 S ABMDE=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),61,2,0))_"^^24"  ; remarks line 2
 D WRT^ABMDF28W                      ; FL #80
 ;
 ;abm*2.6*10 IHS/SD/AML 9/11/2012 - BEGIN HEAT83791 - Winnebago Claim Form Modifications
 I ($P($G(^AUTNINS(ABMP("INS"),0)),U)="NEBRASKA MEDICAID") D
 .I $D(^DIC(4,ABMP("LDFN"),1)) D
 ..S ABMVLOC=$G(^DIC(4,ABMP("LDFN"),1))
 ..S ABMLZIP=$P(ABMVLOC,U,4)
 ..S ABMDE=" "_ABMLZIP_"^26^15"
 ..D WRT^ABMDF28W ; FL #81D Line 2
 ;abm*2.6*10 IHS/SD/AML 9/11/12 - END HEAT83791 - Winnebago claim form modifications
 ;
 ;Other Provider name (1)
 ;I $$RCID^ABMERUTL(ABMP("INS"))'=61044 D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 I $$RCID^ABMERUTL(ABMP("INS"))'["61044" D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 .S ABMDE=$P($P($G(ABM("PRV",3)),U),",")_"^53^15"
 .D WRT^ABMDF28W  ;FL #78
 .S ABMDE=$P($P($G(ABM("PRV",3)),U),",",2)_"^70^11"
 .D WRT^ABMDF28W  ;FL #78
62 ;
 W !
 S ABMDE=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),61,3,0))_"^^24"  ; remarks line 3
 D WRT^ABMDF28W  ;FL #80
 ;
 ;Other provider (2)
 ;I $$RCID^ABMERUTL(ABMP("INS"))'=61044 D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 I $$RCID^ABMERUTL(ABMP("INS"))'["61044" D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 .I $D(ABM("PRV",4)) D
 ..I $P(ABM("PRV",4),U,4)'="" D
 ...S ABMDE=$P($P($G(ABM("PRV",4)),U,4),"#")_"^54^2"  ;NPI qualifier
 ...D WRT^ABMDF28W                      ; FL #79
 ...S ABMDE=$P($P($G(ABM("PRV",4)),U,4),"#",2)_"^57^10"  ;NPI
 ...D WRT^ABMDF28W                      ; FL #79
 ..S ABMDE=$P($P(ABM("PRV",4),U,3),"#")_"^70^2"  ;ID qualifier
 ..D WRT^ABMDF28W  ; FL #79
 ..S ABMDE=$P($P(ABM("PRV",4),U,3),"#",2)_"^72^9"  ;ID
 ..D WRT^ABMDF28W  ; FL #79
63 ;
 W !
 S ABMDE=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),61,4,0))_"^^24"  ; remarks line 4
 D WRT^ABMDF28W                      ; FL #80
 ;
 ;Other Provider name (2)
 ;I $$RCID^ABMERUTL(ABMP("INS"))'=61044 D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 I $$RCID^ABMERUTL(ABMP("INS"))'["61044" D  ;abm*2.6*21 IHS/SD/SDR HEAT123457
 .S ABMDE=$P($P($G(ABM("PRV",4)),U),",")_"^53^15"
 .D WRT^ABMDF28W                      ; FL #79
 .S ABMDE=$P($P($G(ABM("PRV",4)),U),",",2)_"^69^11"
 .D WRT^ABMDF28W                      ; FL #79
 Q
