BARADJRF  ;IHS/SD/POT - CREATE ENTRY IN A/R EDI STND CLAIM ADJ REASON ;
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ;vc; Version BARADJR10.INT/BAR.1  Date 07-Mar-17  By User  Location BAR$M
 ;vc; Component name INT.BARADJR10  Routine name: BARADJR10
 ; IHS/DIT/CPC HEAT326081 - V1.8 P28 - updated SARs
 ; Continuation of BARADJRL
 ;
EN ; EP
 ; Update A/R EDI Stnd Adj Reason Descriptions
 S BARD=";;"
 S BARCNT=0
 D BMES^XPDUTL("A/R EDI STND CLAIM ADJ REASONS Phase 2...")
 F  D UPDSTND2 Q:BARVALUE="END"
 K DIC,DA,X,Y,DIE
 D ^BARVKL0
 Q
 ; ********************************************************************
UPDSTND2 ;
 S BARCNT=BARCNT+1
 S BARVALUE=$P($T(@1+BARCNT),BARD,2,6)
 Q:BARVALUE="END"
 K DIC,DA,X,Y,DIE
 S DA=0
 S DA=$O(^BARADJ("B",$P(BARVALUE,BARD),DA))
 Q:+DA<=0
 S DIE="^BARADJ("
 S DR=".02///^S X=$E($P(BARVALUE,BARD,2),1,80);101///^S X=$E($P(BARVALUE,BARD,5),1,200)"
 D ^DIE
 D MES^XPDUTL($P(BARVALUE,BARD)_$S($L($P(BARVALUE,BARD))=2:"   ",$L($P(BARVALUE,BARD))=1:"    ",1:"  ")_$E($P(BARVALUE,BARD,2),1,65))
 Q
 ; ********************************************************************
 ; STND CODE ;; SHORT DESC ;; RPMS CAT ;; RPMS TYP ;; LONG DESC
 ; ********************************************************************
1 ;;DIC="^BARADJ("
 ;;1;;Deductible Amount;;13;;29;;Deductible Amount
 ;;2;;Coinsurance Amount;;14;;602;;Coinsurance Amount
 ;;3;;Co-payment Amount;;14;;27;;Co-payment Amount
 ;;4;;Procedure code is inconsistent with modifier used or a req modifier is missing;;4;;604;;The procedure code is inconsistent with the modifier used or a required modifier is missing.
 ;;5;;Procedure code/type of bill is inconsistent with the place of service;;4;;605;;The procedure code/type of bill is inconsistent with the place of service. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;6;;The procedure/revenue code is not consistent with the patient's age;;4;;606;;The procedure/revenue code is inconsistent with the patient's age. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;7;;Procedure/revenue code is not consistent with the patient's gender;;4;;607;;The procedure/revenue code is inconsistent with the patient's gender. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;8;;Procedure code is not consistent with the provider type/specialty;;4;;608;;The procedure code is inconsistent with the provider type/specialty (taxonomy).
 ;;9;;Diagnosis inconsistent with patient's age;;4;;609;;The diagnosis is inconsistent with the patient's age. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;10;;Diagnosis inconsistent with patient's gender;;4;;610;;The diagnosis is inconsistent with the patient's gender. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;11;;Diagnosis inconsistent with procedure;;4;;611;;The diagnosis is inconsistent with the procedure. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;12;;Diagnosis inconsistent with provider type;;4;;612;;The diagnosis is inconsistent with the provider type. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;13;;The date of death precedes the date of service;;4;;613;;The date of death precedes the date of service.
 ;;14;;The date of birth follows the date of service;;4;;614;;The date of birth follows the date of service.
 ;;15;;Auth # missing, invalid, or does not apply to billed svc or prv;;4;;615;;The authorization number is missing, invalid, or does not apply to the billed services or provider.
 ;;16;;Claim/service lacks information/has submission/billing error(s).;;4;;616;;Claim/service lacks information or has submission/billing error(s).
 ;;17;;Requested info not provided or insufficient/incomplete;;4;;617;;Requested information was not provided or was insufficient/incomplete. At least one Remark Code must be provided.
 ;;18;;Duplicate claim/service;;3;;135;;Exact duplicate claim/service (Use only with Group Code OA except where state workers' compensation regulations requires CO)
 ;;19;;Work related injury/illness-liability of Work Comp Carrier;;4;;619;;This is a work-related injury/illness and thus the liability of the Worker's Compensation Carrier.
 ;;20;;Injury/illness is covered by the liability carrier;;4;;620;;This injury/illness is covered by the liability carrier.
 ;;21;;Injury/illness is the liability of the no-fault carrier;;4;;621;;This injury/illness is the liability of the no-fault carrier.
 ;;22;;Care may be covered by another payer per coord of benefits;;4;;622;;This care may be covered by another payer per coordination of benefits.
 ;;23;;The impact of prior payer(s) adjudication including payments and/or adjustments;;4;;623;;The impact of prior payer(s) adjudication including payments and/or adjustments. (Use only with Group Code OA)
 ;;24;;Charges covered under cap agreemnt/managed care;;4;;624;;Charges are covered under a capitation agreement/managed care plan.
 ;;25;;Payment denied. Stop loss deductible has not been met;;4;;625;;Payment denied. Your Stop loss deductible has not been met.
 ;;26;;Expenses incurred prior to coverage;;4;;626;;Expenses incurred prior to coverage.
 ;;27;;Expenses incurred after coverage terminated;;4;;627;;Expenses incurred after coverage terminated.
 ;;28;;Coverage not in effect at the time the service was provided;;4;;628;;Coverage not in effect at the time the service was provided. Notes: Redundant to codes 26 & 27
 ;;29;;The time limit for filing has expired;;4;;134;;The time limit for filing has expired.
 ;;30;;Payment adjusted-patient not met required elig, spend down, wait, or res reqmnts;;4;;630;;Payment adjusted because the patient has not met the required eligibility, spend down, waiting, or residency requirements.
 ;;31;;Patient cannot be identified as insured;;4;;166;;Patient cannot be identified as our insured.
 ;;32;;Our records indicate patient is not an eligible dependent;;4;;632;;Our records indicate the patient is not an eligible dependent.
 ;;33;;Insured has no dependent coverage;;4;;633;;Insured has no dependent coverage.
 ;;34;;Insured has no coverage for newborns;;4;;17;;Insured has no coverage for newborns.
 ;;35;;Lifetime benefit maximum has been reached;;4;;167;;Lifetime benefit maximum has been reached.
 ;;36;;Balance does not exceed co-payment amount;;4;;636;;Balance does not exceed co-payment amount.
 ;;37;;Balance does not exceed deductible;;4;;637;;Balance does not exceed deductible.
 ;;38;;Services not provided or authorized by designated (network) providers;;4;;638;;Services not provided or authorized by designated (network/primary care) providers.
 ;;39;;Services denied at the time authorization/pre-certification was requested;;4;;639;;Services denied at the time authorization/pre-certification was requested.
 ;;40;;Charges do not meet qualifications for emergent/urgent care;;4;;640;;Charges do not meet qualifications for emergent/urgent care. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;41;;Discount agreed to in Preferred Provider contract;;4;;168;;Discount agreed to in Preferred Provider contract.
 ;;42;;Charges exceed our fee schedule or maximum allowable amount;;4;;21;;Charges exceed our fee schedule or maximum allowable amount. (Use CARC 45)
 ;;43;;Gramm-Rudman reduction;;4;;643;;Gramm-Rudman reduction.
 ;;44;;Prompt-pay discount;;4;;644;;Prompt-pay discount.
 ;;45;;Charges exceed fee schedule/max allow or contracted/legislated fee arrangement;;4;;645;;Charge exceeds fee schedule/maximum allowable or contracted/legislated fee arrangement.
 ;;46;;This (these) service(s) is (are) not covered;;4;;122;;This (these) service(s) is (are) not covered. Notes: Use code 96.
 ;;47;;This (these) diagnosis(es) is (are) not covered, missing, or are invalid;;4;;647;;This (these) diagnosis(es) is (are) not covered, missing, or are invalid.
 ;;48;;This (these) procedure(s) is (are) not covered;;4;;648;;This (these) procedure(s) is (are) not covered. Notes: Use code 96.
 ;;49;;Routine service done in conjunction with another routine/preventative exam;;4;;20;;This is a non-covered service because it is a routine/preventive exam or a diagnostic/screening procedure done in conjunction with a routine/preventive exam.
 ;;50;;Payer considers services not medically necessary;;4;;169;;These are non-covered services because this is not deemed a 'medical necessity' by the payer.
 ;;51;;Services are not covered due to a pre-existing condition;;4;;19;;These are non-covered services because this is a pre-existing condition. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;52;;Ref/prescrib/render/Prv not eligible to ref/prescrib/order/perform svc billed;;4;;178;;The referring/prescribing/rendering provider is not eligible to refer/prescribe/order/perform the service billed.
 ;;53;;Services by an immediate relative/member of the same household are not covered;;4;;653;;Services by an immediate relative or a member of the same household are not covered.
 ;;54;;Multiple physicians/assistants are not covered in this case;;4;;654;;Multiple physicians/assistants are not covered in this case. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;55;;Claim/svc denied. Proc/treatment considered experimental by the payer;;4;;655;;Procedure/treatment/drug is deemed experimental/investigational by the payer. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;56;;Procedure has not been proven to be effective by the payer;;4;;656;;Procedure/treatment has not been deemed 'proven to be effective' by the payer. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;57;;Payment denied/reduced-doc not support level/#/length of svc/dosage/day's supply;;4;;657;;Payment denied/reduced because payer deems info submitted does not support level of service, this many services, length of service, dosage, or this day's supply.
 ;;58;;Treatment rendered inappropriate or invalid date of service;;4;;658;;Treatment was deemed by the payer to have been rendered in an inappropriate or invalid place of service.
 ;;59;;Charges adjusted-multiple surgery rules/concurrent anesthesia rules;;4;;659;;Processed based on multiple or concurrent procedure rules. (For example multiple surgery or diagnostic imaging, concurrent anesthesia.)
 ;;60;;Charges for outpat svcs w/this proximity to inpat svcs not covered;;4;;660;;Charges for outpatient services are not covered when performed within a period of time prior to or after inpatient services.
 ;;61;;Charges adjusted-penalty for failure to obtain second surgical opinion;;21;;661;;Adjusted for failure to obtain second surgical opinion Notes: The description effective date was inadvertently published as 3/1/2016 on 7/1/2016. That has been corrected to 1/1/2017.
 ;;62;;Payment denied/reduced-absence of/exceeded, pre-certification/authorization;;15;;662;;Payment denied/reduced for absence of, or exceeded, pre-certification/authorization.
 ;;63;;Correction to a prior claim;;4;;663;;Correction to a prior claim.
 ;;64;;Denial reversed per Medical Review;;22;;664;;Denial reversed per Medical Review.
 ;;65;;Procedure code was incorrect. This payment reflects the correct code;;4;;665;;Procedure code was incorrect. This payment reflects the correct code.
 ;;66;;Blood Deductible;;13;;666;;Blood Deductible.
 ;;67;;Lifetime reserve days;;4;;667;;Lifetime reserve days. (Handled in QTY, QTY01=LA)
 ;;68;;DRG weight;;16;;93;;DRG weight. (Handled in CLP12)
 ;;69;;Day outlier amount;;4;;669;;Day outlier amount.
 ;;70;;Cost outlier - Adjustment to compensate for additonal costs;;4;;670;;Cost outlier - Adjustment to compensate for additional costs.
 ;;71;;Primary Payer amount;;4;;165;;Primary Payer amount. Notes: Use code 23
 ;;72;;Coinsurance day;;14;;672;;Coinsurance day. (Handled in QTY, QTY01=CD)
 ;;73;;Administrative days;;4;;673;;Administrative days.
 ;;74;;Indirect Medical Education Adjustment;;4;;674;;Indirect Medical Education Adjustment.
 ;;75;;Direct Medical Education Adjustment;;4;;675;;Direct Medical Education Adjustment.
 ;;76;;Disproportionate Share Adjustment;;4;;676;;Disproportionate Share Adjustment.
 ;;77;;Covered days;;4;;677;;Covered days. (Handled in QTY, QTY01=CA)
 ;;78;;Non-Covered days/Room charge adjustment;;4;;678;;Non-Covered days/Room charge adjustment.
 ;;79;;Cost Report days;;4;;679;;Cost Report days. (Handled in MIA15)
 ;;80;;Outlier days;;4;;680;;Outlier days. (Handled in QTY, QTY01=OU)
 ;;81;;Discharges;;4;;681;;Discharges.
 ;;82;;PIP days;;4;;682;;PIP days.
 ;;83;;Total visits;;4;;683;;Total visits.
 ;;84;;Capital Adjustment;;4;;684;;Capital Adjustment. (Handled in MIA)
 ;;85;;Patient interest amount;;4;;685;;Patient Interest Adjustment (Use Only Group code PR) Notes: Only use when the payment of interest is the responsibility of the patient.
 ;;86;;Statutory Adjustment;;4;;686;;Statutory Adjustment. Notes: Duplicative of code 45.
 ;;87;;Transfer amount;;4;;687;;Transfer amount.
 ;;88;;Adj amt represents collection against receivable created in prior overpayment;;21;;688;;Adjustment amount represents collection against receivable created in prior overpayment.
 ;;89;;Professional fees removed from charges;;4;;689;;Professional fees removed from charges.
 ;;90;;Ingredient cost adjustment;;4;;690;;Ingredient cost adjustment. Usage: To be used for pharmaceuticals only.
 ;;91;;Dispensing fee adjustment;;3;;691;;Dispensing fee adjustment.
 ;;92;;Claim Paid in full;;22;;692;;Claim Paid in full.
 ;;93;;No Claim level Adjustments;;22;;693;;No Claim level Adjustments. Notes: As of 004010, CAS at the claim level is optional.
 ;;94;;Processed in excess of charges;;16;;694;;Processed in Excess of charges.
 ;;END
