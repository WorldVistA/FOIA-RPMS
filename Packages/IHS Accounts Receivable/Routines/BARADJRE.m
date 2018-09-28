BARADJRE  ;IHS/SD/POT - CREATE ENTRY IN A/R EDI STND CLAIM ADJ REASON ;
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ; IHS/SD/CPC HEAT326081 - V1.8 P28 - updated SARs
 ; code cloned from BARADJR7
 ;
 ; *****
EN ; EP
 D RPMSREA                   ; Create RPMS Reasons
 D STND                      ; Create new Standard Adj
 ;D CLAIM                     ; Create new Claim Status Codes
 K DIC,DA,X,Y,DIE
 D ^BARVKL0
 Q
 ; ********
 ;
RPMSREA ;
 ; Create new Adjustment Reasons in A/R TABLE ENTRY
 S BARD=";;"
 S BARCNT=0
 D BMES^XPDUTL("Adding New Adjustment Reasons to A/R Table Entry file...")
 F  D RPMSREA2 Q:BARVALUE="END"
 Q
 ; ********
 ;
RPMSREA2 ;
 S BARCNT=BARCNT+1
 S BARVALUE=$P($T(@1+BARCNT),BARD,2,4)
 Q:BARVALUE="END"
 K DIC,DA,X,Y
 S DIC="^BARTBL("
 S DIC(0)="LZE"
 S DINUM=$P(BARVALUE,BARD)
 S X=$P(BARVALUE,BARD,2)
 S DIC("DR")="2////^S X=$P(BARVALUE,BARD,3)"
 K DD,DO
 D MES^XPDUTL($P(BARVALUE,BARD)_"  "_$P(BARVALUE,BARD,2))
 D FILE^DICN
 Q
 ; ********
CHNGREA ; EP
 ; Change Name of these reasons
 S BARD=";;"
 S BARCNT=0
 F  D CHNGREA2 Q:BARVALUE="END"
 Q
 ; ********
CHNGREA2 ;
 S BARCNT=BARCNT+1
 S BARVALUE=$P($T(@4+BARCNT),BARD,1)
 Q:BARVALUE="END"
 K DIC,DA,X,Y,DIE
 S DIE="^BARTBL("
 S DA=BARVALUE
 S DR=".01////^S X=$P(BARVALUE,BARD,3)"
 D ^DIE
 Q
 ; ********
STND ;
 ; Create entries in A/R EDI STND CLAIM ADJ REASONS to accomodate
 ; Standard codes added between 6/02 and 9/03.
 S BARD=";;"
 S BARCNT=0
 D BMES^XPDUTL("Updating Standard Adjustment Reasons in A/R EDI STND CLAIM ADJ REASONS file...")
 F  D STND2 Q:BARVALUE="END"
 Q
 ; ********
STND2 ;
 S BARCNT=BARCNT+1
 S BARVALUE=$P($T(@2+BARCNT),BARD,2,6)
 Q:BARVALUE="END"
STND3 ;
 ;look for existing entry
 K DIC,DA,X,Y
 S DIC="^BARADJ("
 S DIC(0)="M"
 S X=$P(BARVALUE,BARD)
 D ^DIC
 I +Y>0 D  Q  ;if existing entry found - edit it
 .D MES^XPDUTL($P(BARVALUE,BARD)_$S($L($P(BARVALUE,BARD))=2:"   ",$L($P(BARVALUE,BARD))=1:"    ",1:"  ")_$E($P(BARVALUE,BARD,2),1,65))
 .K DIC,DIE
 .S DIE="^BARADJ("
 .S DA=+Y
 .S DR=".02///^S X=$E($P(BARVALUE,BARD,2),1,80)"        ; Short Desc
 .S DR=DR_";.03////^S X=$P(BARVALUE,BARD,3)"   ; RPMS Cat
 .S DR=DR_";.04////^S X=$P(BARVALUE,BARD,4)"   ; RPMS Type
 .S DR=DR_";101///^S X=$E($P(BARVALUE,BARD,5),1,200)"    ; Long Desc 
 .D ^DIE
 ;create new entry if none found
 K DIC,DA,X,Y
 S DIC="^BARADJ("
 S DIC(0)="LZE"
 S X=$P(BARVALUE,BARD)                                     ; Stnd Code
 S DIC("DR")=".02///^S X=$E($P(BARVALUE,BARD,2),1,80)"              ; Short Desc
 S DIC("DR")=DIC("DR")_";.03////^S X=$P(BARVALUE,BARD,3)"   ; RPMS Cat
 S DIC("DR")=DIC("DR")_";.04////^S X=$P(BARVALUE,BARD,4)"   ; RPMS Type
 S DIC("DR")=DIC("DR")_";101///^S X=$E($P(BARVALUE,BARD,5),1,200)"    ; Long Desc
 K DD,DO
 D MES^XPDUTL($P(BARVALUE,BARD)_$S($L($P(BARVALUE,BARD))=2:"   ",$L($P(BARVALUE,BARD))=1:"    ",1:"  ")_$E($P(BARVALUE,BARD,2),1,65))
 D FILE^DICN
 Q
 ; ********
CLAIM ;
 ; Populate A/R EDI CLAIM STATUS CODES to accomodate new codes added
 ; between 6/02 and 9/03. Inactivate necessary codes.
 S BARCNT=0
 F  D CLAIM2 Q:BARVALUE="END"
 S BARCNT=0
 F BARVALUE=8,10,11,13,14,28,69,70 D CLAIM3
 Q
 ; ********
CLAIM2 ;
 S BARCNT=BARCNT+1
 S BARVALUE=$P($T(@3+BARCNT),BARD,2,4)
 Q:BARVALUE="END"
 K DIC,DA,X,Y
 S DIC="^BARECSC("
 S DIC(0)="LZE"
 S X=$P(BARVALUE,BARD)                        ;Status Cd
 S DIC("DR")="11///^S X=$P(BARVALUE,BARD,2)"  ;Description
 K DD,DO
 D FILE^DICN
 Q
 ; ********
CLAIM3 ;
 Q
 K DIC,DA,X,Y
 S DIC="^BARECSC("
 S DIC(0)="XZQ"
 S X=BARVALUE
 K DD,DO
 D ^DIC
 Q:+Y<1
 K DA,DIE,DR
 S DA=+Y
 S DIE=DIC
 S DR=".02///Y"
 D ^DIE
 Q
 ; ********
MODIFY ; EP
 ; Change PENDING to NON PAYMENT
 S BARD=";;"
 S BARCNT=0
 F  D MODIFY2 Q:BARVALUE="END"
 Q
 ; *****
MODIFY2 ;
 S BARCNT=BARCNT+1
 S BARVALUE=$P($T(@4+BARCNT),BARD,2)
 Q:BARVALUE="END"
 K DIC,DA,X,Y,DR
 S DIC="^BARADJ("
 S DIC(0)="Z"
 S X=$P(BARVALUE,BARD)  ;Stnd Code
 K DD,DO
 D ^DIC
 Q:'+Y
 ;
 S DIE=DIC
 S DA=+Y
 S DR=".03////^S X=4"
 D ^DIE
 Q
 ;
 ; *****
 ; IEN;;NAME;;TABLE TYPE
 ; *****
1 ;; A/R Table Entry file - Adds (S DIC="^BARTBL(")
 ;;309;;Addl Pmt dntal/vision Svc Util;;22;;259
 ;;310;;Prcsd undr McdACA enhncd f/sch;;22;;260
 ;;311;;Proc/Srv incnsistnt w/PtHistry;;4;;261
 ;;312;;Adj for delivery cost(RX only);;4;;262
 ;;313;;Adj for shipping cost(RX only);;4;;263
 ;;314;;Adj for postage cost (RX only);;4;;264
 ;;315;;Adj for admin cost (RX only);;4;;265
 ;;316;;Adj, compnd prep cost(RX only);;4;;266
 ;;317;;Rebill sep clm/sv for month sv;;4;;267
 ;;318;;Resub one clm per cal year;;4;;268
 ;;319;;Anesthesia not cov for proc;;4;;269
 ;;320;;Ben not avail-Submit to dental;;4;;270
 ;;321;;Prior contractual reductions;;4;;271
 ;;322;;Cvg/program guidelines not met;;4;;272
 ;;323;;Cvg/progrm guidelines exceeded;;4;;273
 ;;324;;Not payable-PtCareCoord arngmt;;4;;274
 ;;325;;Prior payer pt resp not coverd;;4;;275
 ;;326;;Svc denied by prior payer;;4;;276
 ;;327;;Undetermined-prem grace period;;22;;277
 ;;328;;Performance prgm req not met;;4;;278
 ;;329;;Svc not prov by network prov;;4;;279
 ;;330;;Submit to RX plan;;4;;280
 ;;331;;Ded waived-contract agreement;;4;;281
 ;;332;;Proc/Rev code inconst w/TOB;;4;;282
 ;;333;;Prov not elig to prov dir care;;4;;283
 ;;334;;Precert does not apply to srv;;4;;284
 ;;335;;Appeal proc not followed;;4;;285
 ;;336;;Appeal time limits not met;;4;;286
 ;;337;;Referral exceeded;;4;;287
 ;;338;;Referral absent;;4;;288
 ;;339;;Svc cvrd by med/dent, no bnfts;;4;;289
 ;;340;;No bnfts-Forward to med plan;;4;;290
 ;;341;;No bnfts-Forward to dentl plan;;4;;291
 ;;342;;No bnfts-Forward to pharm plan;;4;;292
 ;;343;;Payment made to employer;;4;;293
 ;;344;;Payment made to attorney;;4;;294
 ;;345;;RX Direct/IndirectRemuneration;;4;;295
 ;;424;;Pmt Adj-PPO;;4;;P24
 ;;425;;Pmt Adj-MPN;;4;;P25
 ;;426;;Pmt Adj-VPN;;4;;P26
 ;;427;;Pmt Den-Liab Coverage Benefts;;4;;P27
 ;;428;;Pmt Adj-Liab Coverage Benefts;;4;;P28
 ;;429;;Liab Bnfts fee sched adjust;;4;;P29
 ;;END
 ;
 ; ********
 ; STND CODE ;; SHORT DESC ;; RPMS CAT ;; RPMS TYP ;; LONG DESC
 ; ********
2 ;;DIC="^BARADJ("
 ;;259;;Additional payment for Dental/Vision service utilization;;22;;309;;Additional payment for Dental/Vision service utilization.
 ;;260;;Processed under Medicaid ACA Enhanced Fee Schedule;;22;;310;;Processed under Medicaid ACA Enhanced Fee Schedule
 ;;261;;The procedure or service is inconsistent with the patient's history;;4;;311;;The procedure or service is inconsistent with the patient's history.
 ;;262;;Adjustment for delivery cost. Note: To be used for pharmaceuticals only.;;4;;312;;Adjustment for delivery cost. Usage: To be used for pharmaceuticals only.
 ;;263;;Adjustment for shipping cost. Note: To be used for pharmaceuticals only.;;4;;313;;Adjustment for shipping cost. Usage: To be used for pharmaceuticals only.
 ;;264;;Adjustment for postage cost. Note: To be used for pharmaceuticals only.;;4;;314;;Adjustment for postage cost. Usage: To be used for pharmaceuticals only.
 ;;265;;Adjustment for administrative cost. Note: To be used for pharmaceuticals only.;;4;;315;;Adjustment for administrative cost. Usage: To be used for pharmaceuticals only.
 ;;266;;Adjustment for compound prep cost. Note: to be used for pharmaceuticals only.;;4;;316;;Adjustment for compound preparation cost. Usage: To be used for pharmaceuticals only.
 ;;267;;Claim/service spans multiple months. Rebill as separate claim/service.;;4;;317;;Claim/service spans multiple months. At least one Remark Code must be provided (may be comprised of either the NCPDP Reject Reason Code, or Remittance Advice Remark Code that is not an ALERT.)
 ;;268;;Claim spans two calendar years. Please resubmit one claim per calendar year.;;4;;318;;The Claim spans two calendar years. Please resubmit one claim per calendar year.
 ;;269;;Anesthesia not covered for this service/procedure;;4;;319;;Anesthesia not covered for this service/procedure. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;270;;Benefit not available under medical plan. Submit to dental plan.;;4;;320;;Claim received by the medical plan, but benefits not available under this plan. Submit these services to the patient's dental plan for further consideration.
 ;;271;;Prior contractual reductions related to a current periodic payment;;4;;321;;Prior contractual reductions related to a current periodic payment as part of a contractual payment schedule when deferred amounts have been previously reported. (Use only with Group Code OA)
 ;;272;;Coverage/program guidelines were not met;;4;;322;;Coverage/program guidelines were not met.
 ;;273;;Coverage/program guidelines were exceeded.;;4;;323;;Coverage/program guidelines were exceeded.
 ;;274;;Fee/Service not payable per patient Care Coordination arrangement;;4;;324;;Fee/Service not payable per patient Care Coordination arrangement.
 ;;275;;Prior payer(s) responsibility (ded,coins,copay) not covered;;4;;325;;Prior payer's (or payers') patient responsibility (deductible, coinsurance, co-payment) not covered. (Use only with Group Code PR)
 ;;276;;Services denied by prior payer(s) not covered by this payer;;4;;326;;Services denied by the prior payer(s) are not covered by this payer.
 ;;277;;Disposition of claim is undetermined during premium payment grace period;;22;;327;;The disposition of the claim is undetermined during the premium payment grace period per Health Insurance SHOP Exchange requirements.
 ;;278;;Performance program proficiency requirements not met.;;4;;328;;Performance program proficiency requirements not met. (Use only with Group Codes CO or PI)
 ;;279;;Services not provided by Preferred network providers;;4;;329;;Services not provided by Preferred network providers. Usage: Use this code when there are member network limitations. For example, using contracted providers not in the member's 'narrow' network.
 ;;280;;Claim received by medical plan. Submit to pharmacy plan for consideration.;;4;;330;;Claim received by the medical plan, but benefits not available under this plan. Submit these services to the patient's Pharmacy plan for further consideration.
 ;;281;;Deductible waived per contractual agreement;;4;;331;;Deductible waived per contractual agreement. Use only with Group Code CO.
 ;;282;;Procedure/revenue code is inconsistent with type of bill;;4;;332;;The procedure/revenue code is inconsistent with the type of bill. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;283;;Attending provider is not eligible to provide direction of care;;4;;333;;Attending provider is not eligible to provide direction of care.
 ;;284;;Precert/authorization may be valid but does not apply to billed services;;4;;334;;Precertification/authorization/notification/pre-treatment number may be valid but does not apply to the billed services.
 ;;285;;Appeal procedures not followed;;4;;335;;Appeal procedures not followed
 ;;286;;Appeal time limits not met;;4;;336;;Appeal time limits not met
 ;;287;;Referral exceeded;;4;;337;;Referral exceeded
 ;;288;;Referral absent;;4;;338;;Referral absent
 ;;289;;Services considered under medical and dental. Benefits not available.;;4;;339;;Services considered under the dental and medical plans, benefits not available. Notes: Also see CARCs 254, 270 and 280.
 ;;290;;Claim recd by dental plan but benefit not available. Claim forwarded to medical.;;4;;340;;Claim received by the dental plan, but benefits not available under this plan. Claim has been forwarded to the patient's medical plan for further consideration.
 ;;291;;Claim recd by medical plan but benefit not available. Claim forwarded to dental.;;4;;341;;Claim received by the medical plan, but benefits not available under this plan. Claim has been forwarded to the patient's dental plan for further consideration.
 ;;292;;Claim recd by medical plan but benefit not available. Claim forwarded to Rx.;;4;;342;;Claim received by the medical plan, but benefits not available under this plan. Claim has been forwarded to the patient's pharmacy plan for further consideration.
 ;;293;;Payment made to employer.;;4;;343;;Payment made to employer.
 ;;294;;Payment made to attorney.;;4;;344;;Payment made to attorney.
 ;;295;;Pharmacy Direct/Indirect Remuneration (DIR);;4;;345;;Pharmacy Direct/Indirect Remuneration (DIR)
 ;;P24;;Payment adjusted based on Preferred Provider Organization (PPO);;4;;424;;Payment adjusted based on Preferred Provider Organization (PPO).
 ;;P25;;Payment adjusted based on Medical Provider Network (MPN);;4;;425;;Payment adjusted based on Medical Provider Network (MPN).
 ;;P26;;Payment adjusted based on Voluntary Provider Network (VPN);;4;;426;;Payment adjusted based on Voluntary Provider network (VPN).
 ;;P27;;Pymt denied based on Liability Cov Benefits regulations/pymt policies;;4;;427;;Payment denied based on the Liability Coverage Benefits jurisdictional regulations and/or payment policies.
 ;;P28;;Payment adjusted based on Liability Coverage Benefits regulations/pymt policies;;4;;428;;Payment adjusted based on the Liability Coverage Benefits jurisdictional regulations and/or payment policies.
 ;;P29;;Liability Benefits jurisdictional fee schedule adjustment.;;4;;429;;Liability Benefits jurisdictional fee schedule adjustment.
 ;;END
 ;
 ; ********
 ; CLAIM STATUS CODE ;; DESCRIPTION
 ; ********
3 ;; - A/R EDI Claim Status Codes file - Adds DIC="^BARECSC("
 ;;END
 ;
 ; ********
 ; STANDARD CODE ;; RPMS REASON
 ; ********
4 ;;A/R Table Entry file - Edits DIE="^BARTBL("
 ;;END
