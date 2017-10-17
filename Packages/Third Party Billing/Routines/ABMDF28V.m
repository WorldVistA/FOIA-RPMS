ABMDF28V ; IHS/SD/SDR - PRINT UB-04 ;    
 ;;2.6;IHS Third Party Billing;**11,14,19,21**;NOV 12, 2009;Build 379
 ;IHS/SD/SDR - 2.6*19 - HEAT116949 - updated check for Medi-Cal to contain (not equal) 61044
 ;IHS/SD/SDR - 2.6*21 - HEAT97615 - Remove box 57 if billing Medicare and primary insurer was TSI.
 ;IHS/SD/SDR - 2.6*21 - VMBP - Updated p11 changes to include Serena ref#s
 ;
38 ;
 I ABM38FLG="P" D
 .I "^P^H^F^M^"[("^"_ABMP("ITYPE")_"^") D
 ..S ABMDE=$G(ABM(9000003.1,+$G(ABME("PH")),.09,"E"))_"^^40"
 ..D WRT^ABMDF28W  ;FL #38
 .;MCR or MCD - pt addr
 .I "^R^MD^MH^D^K^"[("^"_ABMP("ITYPE")_"^") D
 ..S ABMISTR=$G(ABME("AD1"))
 ..S ABMDE=ABMISTR_"^^40"
 ..D WRT^ABMDF28W   ;FL #38
 .I ABMP("ITYPE")="N" D  Q
 ..S ABMISTR=$G(ABME("AD1"))
 ..S ABMDE=ABMISTR_"^^40"
 ..D WRT^ABMDF28W
 .;end new FIXPMS10028
 I ABM38FLG["I" D
 .;start new abm*2.6*1 HEAT7998
 .I ABMP("ITYPE")="N" D  Q
 ..S ABMISTR=$G(ABME("AD1"))
 ..S ABMDE=ABMISTR_"^^40"
 ..D WRT^ABMDF28W
 .;end new HEAT7998
 .S ABMDE=ABMISTR_"^^40"
 .D WRT^ABMDF28W
 Q
VALCDS1 ;
 I ABMR(41,160)'="" D
 .S ABMDE=ABMR(41,160)_"^43^2"  ;Val cd 1
 .D WRT^ABMDF28W  ;FL #39a
 I ($TR(ABMR(41,170)," ",""))'="" D
 .I ABMR(41,160)="A0"!(ABMR(41,160)=80) S ABMDE=+ABMR(41,170)_"^46^7R"
 .E  S ABMDE=$FN(+ABMR(41,170),"",2)_"^46^9R"  ;Val Amt 1
 .D WRT^ABMDF28W  ;FL #39a
 I ABMR(41,180)'="" D
 .S ABMDE=ABMR(41,180)_"^56^2"  ;Val cd 2
 .D WRT^ABMDF28W  ;FL #40a
 I ($TR(ABMR(41,190)," ",""))'="" D
 .I ABMR(41,180)="A0"!(ABMR(41,180)=80) S ABMDE=+ABMR(41,190)_"^59^7R"
 .E  S ABMDE=$FN(+ABMR(41,190),"",2)_"^59^9R"
 .D WRT^ABMDF28W  ;FL #40a
 I ABMR(41,200)'="" D
 .S ABMDE=ABMR(41,200)_"^69^2"  ;Val cd 3
 .D WRT^ABMDF28W  ;FL #41a
 I ($TR(ABMR(41,210)," ",""))'="" D
 .I ABMR(41,200)="A0"!(ABMR(41,200)=80) S ABMDE=+ABMR(41,210)_"^72^7R"
 .E  S ABMDE=+ABMR(41,210)_"^72^9R"
 .D WRT^ABMDF28W  ;FL #41a
 Q
38P2 ;
 I ABM38FLG="P" D
 .I "^P^H^F^M^"[("^"_ABMP("ITYPE")_"^") D
 ..S ABMDE=$G(ABM(9000003.1,+$G(ABME("PH")),.11,"E"))_", "_$G(ABM(9000003.1,+$G(ABME("PH")),.12,"E"))_" "_$G(ABM(9000003.1,+$G(ABME("PH")),.13,"E"))_"^^40"
 ..D WRT^ABMDF28W  ;FL 38
 .;MCR or MCD - pt addr
 .I "^R^MD^MH^D^K^"[("^"_ABMP("ITYPE")_"^") D
 ..S ABMDE=$G(ABME("AD4"))_", "_$G(ABME("AD5"))_"  "_$G(ABME("AD6"))_"^^40"
 ..D WRT^ABMDF28W  ;FL 38
 .I ABMP("ITYPE")="N" D  Q
 ..S ABMDE=$G(ABME("AD4"))_", "_$G(ABME("AD5"))_"  "_$G(ABME("AD6"))_"^^40"
 ..D WRT^ABMDF28W
 I ABM38FLG["I" D
 .I ABMP("ITYPE")="N" D  Q
 ..S ABMDE=$G(ABME("AD4"))_", "_$G(ABME("AD5"))_"  "_$G(ABME("AD6"))_"^^40"
 ..D WRT^ABMDF28W
 .S ABMDE=ABMICTY_", "_$P($G(^DIC(5,ABMIST,0)),U,2)_"  "_ABMIZIP_"^^40"
 D WRT^ABMDF28W  ;FL #38
 Q
VALCDS2 ;
 I ABMR(41,220)'="" D
 .S ABMDE=ABMR(41,220)_"^43^2"  ;Val cd 4
 .D WRT^ABMDF28W  ;FL #39b
 I ABMR(41,230) D
 .I ABMR(41,220)="A0" S ABMDE=+ABMR(41,230)_"^46^9"
 .E  S ABMDE=+ABMR(41,230)_"^46^9R"  ;Val amt 4
 .D WRT^ABMDF28W  ;FL #39b
 I ABMR(41,240)'="" D
 .S ABMDE=ABMR(41,240)_"^56^2"  ;Val cd 5
 .D WRT^ABMDF28W  ;FL #40b
 I ABMR(41,250) D
 .I ABMR(41,240)="A0" S ABMDE=+ABMR(41,250)_"^59^9"
 .E  S ABMDE=+ABMR(41,250)_"^59^9R"  ;Val amt 5
 .D WRT^ABMDF28W  ;FL #40b
 I ABMR(41,260)'="" D
 .S ABMDE=ABMR(41,260)_"^69^2"  ;Val cd 6
 .D WRT^ABMDF28W  ;FL #41b
 I ABMR(41,270) D
 .I ABMR(41,260)="A0" S ABMDE=+ABMR(41,270)_"^72^9"
 .E  S ABMDE=+ABMR(41,270)_"^72^9R"  ;Val amt 6
 .D WRT^ABMDF28W  ;FL #41b
 Q
VALCDS3 ;
 I ABMR(41,280)'="" D
 .S ABMDE=ABMR(41,280)_"^43^2"  ;Val cd 7
 .D WRT^ABMDF28W  ;FL #39c
 I ABMR(41,290) D
 .I ABMR(41,280)="A0" S ABMDE=+ABMR(41,290)_"^46^9"
 .E  S ABMDE=+ABMR(41,290)_"^46^9R"  ;Val amt 7
 .D WRT^ABMDF28W  ;FL #39c
 I ABMR(41,300)'="" D
 .S ABMDE=ABMR(41,300)_"^56^2"  ;Val cd 8
 .D WRT^ABMDF28W  ;FL #40c
 I ABMR(41,310) D
 .I ABMR(41,300)="A0" S ABMDE=+ABMR(41,310)_"^59^9"
 .E  S ABMDE=+ABMR(41,310)_"^59^9R"  ;Val amt 8
 .D WRT^ABMDF28W  ;FL #40c
 I ABMR(41,320)'="" D
 .S ABMDE=ABMR(41,320)_"^69^2"  ;Val cd 9
 .D WRT^ABMDF28W  ;FL #41c
 I ABMR(41,330) D
 .I ABMR(41,320)="A0" S ABMDE=+ABMR(41,330)_"^72^9"
 .E  S ABMDE=+ABMR(41,330)_"^72^9R"  ;Val amt 9
 .D WRT^ABMDF28W  ;FL #41c
 Q
VALCDS4 ;
 I ABMR(41,340)'="" D
 .S ABMDE=ABMR(41,340)_"^43^2"  ;Val cd 10
 .D WRT^ABMDF28W  ;FL #39d
 I ABMR(41,350) D
 .I ABMR(41,340)="A0" S ABMDE=+ABMR(41,350)_"^46^9"
 .E  S ABMDE=+ABMR(41,350)_"^46^9R"  ;Val amt 10
 .D WRT^ABMDF28W  ;FL #39d
 I ABMR(41,360)'="" D
 .S ABMDE=ABMR(41,360)_"^56^2"  ;Val cd 11
 .D WRT^ABMDF28W  ;FL #40d
 I ABMR(41,370) D
 .I ABMR(41,360)="A0" S ABMDE=+ABMR(41,370)_"^59^9"
 .E  S ABMDE=+ABMR(41,370)_"^59^9R"  ;Val amt 11
 .D WRT^ABMDF28W  ;FL #40d
 I ABMR(41,380)'="" D
 .S ABMDE=ABMR(41,380)_"^69^2"  ;Val cd 12
 .D WRT^ABMDF28W  ;FL #41d
 I ABMR(41,390) D
 .I ABMR(41,380)="A0" S ABMDE=+ABMR(41,390)_"^72^9"
 .E  S ABMDE=+ABMR(41,390)_"^72^9R"  ;Val amt 12
 .D WRT^ABMDF28W  ;FL #41d
 Q
 ;start new abm*2.6*21 IHS/SD/SDR HEAT97615
PRIMECK ;
 ;if billing Medicare, see if primary insurer was tribal self insured; if so, remove box 57
 S ABMT=0,ABMTSIFG=0
 F  S ABMT=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),13,ABMT)) Q:'ABMT  D
 .I $P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),13,ABMT,0)),U,3)'="C" Q  ;only check complete
 .I $P($G(^ABMNINS(ABMP("LDFN"),$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),13,ABMT,0)),U),0)),U,11)="Y" S ABMTSIFG=1
 ;end new abm*2.6*21 IHS/SD/SDR HEAT97615
