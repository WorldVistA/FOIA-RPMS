ABMERGR5 ; IHS/SD/SDR - GET ANCILLARY SVCS REVENUE CODE INFO ; 
 ;;2.6;IHS 3P BILLING SYSTEM;**6,8,9,10,11,19,20,21,22,23**;NOV 12, 2009;Build 427
 ;
 ;IHS/SD/LSL 08/30/02 V2.5 Patch 1 HIPAA Added prescription number as 14th piece of ABMRV array for Pharmacy
 ;IHS/SD/SDR V2.5 P2 5/9/02 NOIS HQW-0302-100190 Modified to display 2nd and 3rd modifiers and units
 ;IHS/SD/EFG V2.5 P8 IM16385 Correction to calculate cumulative charges correctly for dental
 ;IHS/SD/SDR v2.5 p8 task 6 Added new ambulance multiple 47
 ;IHS/SD/SDR v2.5 p9 IM19492 Corrected HCPCS issue (was +'ing HCPCS, making it 0)
 ;IHS/SD/SDR v2.5 p9 split for routine size ABMERGR3
 ;IHS/SD/SDR v2.5 p10 IM20018 Added code to get CPT code on Revenue code page
 ;IHS/SD/SDR v2.5 p10 IM20395 Split out lines bundled by Rev Code.  NOTE: old code removed due to routine size
 ;IHS/SD/SDR v2.5 p11 IM24135 Fixed Rx number not printing (wasn't looking at both fields)
 ;IHS/SD/SDR v2.5 p12 IM25207 Changed default to RX number
 ;IHS/SD/SDR v2.5 p12 IM25947 Don't include dental charges if not doing ADA billing
 ;
 ;IHS/SD/SDR v2.6 CSV
 ;IHS/SD/SDR 2.6*6 5010 added date written
 ;IHS/SD/SDR 2.6*6 HEAT28973 if 55 modifier present use '1' for units to calculate charges
 ;IHS/SD/SDR 2.6*9 HEAT18507 Fixed where RX number was coming from (p14, not p6)
 ;IHS/SD/SDR 2.6*19 HEAT173117 Correction to CPT Narrative for 23 multiple.
 ;IHS/SD/AML 2.6*20 HEAT262141 AHCCCS RX billing.
 ;IHS/SD/SDR 2.6*21 HEAT106899 Get operating and rendering provider for 21 mult.
 ;IHS/SD/SDR 2.6*21 HEAT120880 Added SERVICE DATE TO in ABMRV array for all multiples.
 ;IHS/SD/SDR 2.6*21 HEAT168435 Added pharmacy modifiers (23 mult).
 ;IHS/SD/SDR 2.6*21 HEAT294086 Change for <UNDEF>23+25^ABMERGR2.
 ;IHS/SD/SDR 2.6*22 HEAT329144 Added print the medication name based on new parameter.
 ;IHS/SD/SDR 2.6*23 HEAT347035 Changed subscripts if print order is populated
 ;***********
 ; All line tags adhere to following description unless specified otherwise in the appropriate line tag:
 ;
 ; ABMRV(IEN to REVENUE CODE, CPT CODE)= IEN to REVENUE CODE ^ CPT Code ^ Modifier ^ 2nd modifier ^ cumulative units ^ cumulative
 ;     charges ^ ^ Unit Charge ^ NDC/ADA ^ from date/time ^ 3rd Modifier ^ 4th Modifier ^ Prescription ^ Attending Provider
 ;     ^ Operating Provider ^ Referring Provider ^ Other Provider
 ;*******
 ;
27 ;EP - Medical Procedures
 S DA=0
 F  S DA=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),27,DA)) Q:'DA  D
 .F J=1:1:10 S ABM(J)=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),27,DA,0),"^",J)
 .S:'+ABM(3) ABM(3)=1
 .S ABM(1)=$S(ABM(1):$P($$CPT^ABMCVAPI(ABM(1),ABMP("VDT")),U,2),1:0)  ;CPT code  ;CSV-c
 .S ABMLCNT=+$G(ABMLCNT)+1
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U)=ABM(2)  ;Revenue code IEN
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,2)=ABM(1)  ;CPT code
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,3)=ABM(5)  ;Modifier
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,4)=ABM(8)  ;2nd modifier
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,5)=ABM(3)  ;cumulative units
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,6)=(ABM(3)*ABM(4))  ;cumulative charges
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,15)=ABM(10)  ;Attending Provider
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,8)=ABM(4)  ;Unit Charge
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,10)=ABM(7)  ;Date/Time
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,12)=ABM(9)  ;3rd Modifier
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,27)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),27,DA,0)),U,12)  ;abm*2.6*21 IHS/SD/SDR HEAT120880
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,38)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),27,DA,2)),U)  ;abm*2.6*8 5010 LICN
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,39)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),27,DA,2)),U,2)  ;abm*2.6*9 NARR
 .;start new abm*2.6*23 IHS/SD/SDR HEAT347035
 .I +$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),27,DA,0)),U,23)'=0 D
 ..I $P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1)),U,24)'="Y" Q  ;don't do print order if parameter is off
 ..S ABMPO=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),27,DA,0)),U,23)
 ..S ABMRV(ABMPO,ABMPO,ABMPO)=$G(ABMRV(+ABM(2),ABM(1),ABMLCNT))
 ..K ABMRV(+ABM(2),ABM(1),ABMLCNT)
 ..I +$P(ABMRV(ABMPO,ABMPO,ABMPO),U,6)=0 S $P(ABMRV(ABMPO,ABMPO,ABMPO),U)=0,$P(ABMRV(ABMPO,ABMPO,ABMPO),U,5)=0
 ..I $$RCID^ABMUTLP(ABMP("INS"))["61044",$P(ABMRV(ABMPO,ABMPO,ABMPO),U,5)=0 S $P(ABMRV(ABMPO,ABMPO,ABMPO),U,5)="00"
 .;end new abm*2.6*23 IHS/SD/SDR HEAT347035
 Q
33 ;EP - Dental
 ; ABMRV(IEN, Dental Code) = IEN to REVENUE CODE ^ Dental code ^ ^ ^ Cumulative units ^ Cumulative charges ^ ^ ^ ADA Description ^ Date of Service
 S DA=0
 I $G(ABMP("LDFN"))'="",($G(ABMP("INS"))'=""),($G(ABMP("VTYP"))'="") Q:$P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),0)),U,2)'="A"
 F  S DA=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),33,DA)) Q:'DA  D
 .F J=1,2,7,8,9 S ABM(J)=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),33,DA,0),"^",J)
 .S:'+ABM(9) ABM(9)=1
 .S ABM("DCODE")=$P(^AUTTADA(ABM(1),0),U)  ;dental code
 .;start new abm*2.6*11 HEAT90370
 .S ABMDENP=$P($G(^ABMDREC(ABMP("INS"),0)),U,2)
 .S:ABMDENP="" ABMDENP=$P($G(^ABMDPARM(ABMP("LDFN"),1,3)),U,11)
 .S:ABMDENP="" ABMDENP=$P($G(^ABMDPARM(DUZ(2),1,3)),U,11)
 .S:ABMDENP]"" ABM("DCODE")=ABMDENP_ABM("DCODE")
 .;end new HEAT90370
 .S ABMLCNT=+$G(ABMLCNT)+1
 .S $P(ABMRV(+ABM(2),+ABM("DCODE"),ABMLCNT),U)=ABM(2)  ;Rev code IEN
 .S $P(ABMRV(+ABM(2),+ABM("DCODE"),ABMLCNT),U,2)=ABM("DCODE")  ;Dental code
 .S $P(ABMRV(+ABM(2),+ABM("DCODE"),ABMLCNT),U,5)=ABM(9)  ;units
 .S $P(ABMRV(+ABM(2),+ABM("DCODE"),ABMLCNT),U,6)=(ABM(8)*ABM(9))  ;charges
 .S $P(ABMRV(+ABM(2),+ABM("DCODE"),ABMLCNT),U,9)=$P(^AUTTADA(ABM(1),0),U,2)  ;ADA Desc
 .S $P(ABMRV(+ABM(2),+ABM("DCODE"),ABMLCNT),U,10)=ABM(7)  ;DoS
 .S $P(ABMRV(+ABM(2),+ABM("DCODE"),ABMLCNT),U,27)=ABM(7)  ;abm*2.6*21 IHS/SD/SDR HEAT120880
 .S $P(ABMRV(+ABM(2),+ABM("DCODE"),ABMLCNT),U,38)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),33,DA,2)),U)  ;abm*2.6*8 5010 LICN
 .S $P(ABMRV(+ABM(2),+ABM("DCODE"),ABMLCNT),U,39)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),33,DA,2)),U,2)  ;abm*2.6*9 NARR
 .;start new abm*2.6*23 IHS/SD/SDR HEAT347035
 .I +$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),33,DA,0)),U,23)'=0 D
 ..I $P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1)),U,24)'="Y" Q  ;don't do print order if parameter is off
 ..S ABMPO=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),33,DA,0)),U,23)
 ..S ABMRV(ABMPO,ABMPO,ABMPO)=$G(ABMRV(+ABM(2),+ABM("DCODE"),ABMLCNT))
 ..K ABMRV(+ABM(2),+ABM("DCODE"),ABMLCNT)
 ..I +$P(ABMRV(ABMPO,ABMPO,ABMPO),U,6)=0 S $P(ABMRV(ABMPO,ABMPO,ABMPO),U)=0,$P(ABMRV(ABMPO,ABMPO,ABMPO),U,5)=0
 ..I $$RCID^ABMUTLP(ABMP("INS"))["61044",$P(ABMRV(ABMPO,ABMPO,ABMPO),U,5)=0 S $P(ABMRV(ABMPO,ABMPO,ABMPO),U,5)="00"
 .;end new abm*2.6*23 IHS/SD/SDR HEAT347035
 Q
35 ;EP - Radiology
 S DA=0
 F  S DA=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),35,DA)) Q:'DA  D
 .F J=1:1:10 S ABM(J)=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),35,DA,0),"^",J)
 .S:'+ABM(3) ABM(3)=1
 .S ABM(1)=$S(ABM(1):$P($$CPT^ABMCVAPI(ABM(1),ABMP("VDT")),U,2),1:0)  ;CPT Code  ;CSV-c
 .S ABMLCNT=+$G(ABMLCNT)+1
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U)=ABM(2)  ;Revenue code IEN
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,2)=ABM(1)  ;CPT Code
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,3)=ABM(5)  ;Modifier
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,4)=ABM(6)  ;2nd Modifier
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,5)=ABM(3)  ;units
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,6)=(ABM(3)*ABM(4))  ;charges
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,8)=ABM(4)  ;Unit Charge
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,10)=ABM(9)  ;Date/Time
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,12)=ABM(7)  ;3rd Modifier
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,15)=ABM(10)  ;Attending Provider
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,27)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),35,DA,0)),U,12)  ;abm*2.6*21 IHS/SD/SDR HEAT120880
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,38)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),35,DA,2)),U)  ;abm*2.6*8 5010 LICN
 .S $P(ABMRV(+ABM(2),ABM(1),ABMLCNT),U,39)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),35,DA,2)),U,2)  ;abm*2.6*9 NARR
 .;start new abm*2.6*23 IHS/SD/SDR HEAT347035
 .I +$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),35,DA,0)),U,23)'=0 D
 ..I $P($G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),1,ABMP("VTYP"),1)),U,24)'="Y" Q  ;don't do print order if parameter is off
 ..S ABMPO=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),35,DA,0)),U,23)
 ..S ABMRV(ABMPO,ABMPO,ABMPO)=$G(ABMRV(+ABM(2),ABM(1),ABMLCNT))
 ..K ABMRV(+ABM(2),ABM(1),ABMLCNT)
 ..I +$P(ABMRV(ABMPO,ABMPO,ABMPO),U,6)=0 S $P(ABMRV(ABMPO,ABMPO,ABMPO),U)=0,$P(ABMRV(ABMPO,ABMPO,ABMPO),U,5)=0
 ..I $$RCID^ABMUTLP(ABMP("INS"))["61044",$P(ABMRV(ABMPO,ABMPO,ABMPO),U,5)=0 S $P(ABMRV(ABMPO,ABMPO,ABMPO),U,5)="00"
 .;end new abm*2.6*23 IHS/SD/SDR HEAT347035
 Q
