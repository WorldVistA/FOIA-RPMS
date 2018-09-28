BARADJRH  ;IHS/SD/POT - CREATE ENTRY IN A/R EDI STND CLAIM ADJ REASON ;
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ; IHS/DIT/CPC HEAT326081 - V1.8 P28 - updated SARs
 ; Continuation of BARADJRG
 ; *********************************************************************
EN ; EP
 ; Update A/R EDI Stnd Adj Reason Descriptions
 S BARD=";;"
 S BARCNT=0
 D BMES^XPDUTL("A/R EDI STND CLAIM ADJ REASONS Phase 4...")
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
 ;;180;;Patient has not met the required residency requirements;;4;;780;;Patient has not met the required residency requirements.
 ;;181;;Procedure code invalid on the date of service;;4;;781;;Procedure code was invalid on the date of service.
 ;;182;;Procedure modifier was invalid on the date of service;;4;;782;;Procedure modifier was invalid on the date of service.
 ;;183;;Referring provider is not eligible to refer the services billed;;4;;783;;The referring provider is not eligible to refer the service billed. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;184;;Ordering provider not eligible to order service billed;;4;;784;;The prescribing/ordering provider is not eligible to prescribe/order the service billed.
 ;;185;;Rendering provider not eligible to perform the service billed;;4;;785;;The rendering provider is not eligible to perform the service billed. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;186;;Level of care change adjustment;;4;;786;;Level of care change adjustment.
 ;;187;;Consumer Spending Account payments (Flexible Spending, Health Savings);;22;;787;;Consumer Spending Account payments (includes but is not limited to Flexible Spending Account, Health Savings Account, Health Reimbursement Account, etc.).
 ;;188;;Product/procedure covered when used according to FDA recommendations;;4;;788;;This product/procedure is only covered when used according to FDA recommendations.
 ;;189;;NOC' or 'unlisted' procedure code (CPT/HCPCS) billed when specific code exists;;4;;789;;`Not otherwise classified' or 'unlisted' procedure code (CPT/HCPCS) was billed when there is a specific procedure code for this procedure/service.
 ;;190;;Payment included in allowance for Skilled Nursing Facility (SNF) qualified stay;;4;;790;;Payment is included in the allowance for a Skilled Nursing Facility (SNF) qualified stay.
 ;;191;;Not a work related injury/illness and not the liability of the WC carrier;;4;;791;;Not a work related injury/illness and thus not the liability of the workers' compensation carrier
 ;;192;;Non Standard adjustment code from paper remittance advice;;4;;792;;Non standard adjustment code from paper remittance advice
 ;;193;;Orig pymnt decision maintained - review determined claim was processed properly;;22;;793;;Original payment decision is being maintained. Upon review, it was determined that this claim was processed properly.
 ;;194;;Anesthesia perf by operating physician, assistant surgeon or attending physician;;4;;794;;Anesthesia performed by the operating physician, the assistant surgeon or the attending physician.
 ;;195;;Refund issued to erroneous priority payer for claim/service;;19;;795;;Refund issued to an erroneous priority payer for this claim/service.
 ;;196;;Claim/service denied based on prior payer's coverage detemination;;4;;796;;Claim/service denied based on prior payer's coverage determination. Notes: Use code 136.
 ;;197;;Precertification / authorization / notification absent;;4;;797;;Precertification/authorization/notification absent. Effective 05/01/2018: Precertification/authorization/notification/pre-treatment absent.
 ;;198;;Precertification / authorization exceeded;;4;;798;;Precertification/authorization exceeded. Effective 05/01/2018: Precertification/notification/authorization/pre-treatment exceeded.
 ;;199;;Revenue code and Procedure code do not match;;4;;799;;Revenue code and Procedure code do not match.
 ;;200;;Expenses incurred during lapse in coverage;;4;;930;;Expenses incurred during lapse in coverage.
 ;;201;;Pt is responsible thru 'set aside arrangmt' or other agreement;;4;;931;;Patient is responsible for amount of this claim/service through 'set aside arrangement' or other agreement.
 ;;202;;Non-covered personal comfort or convenience services;;4;;932;;Non-covered personal comfort or convenience services.
 ;;203;;Discontinued or reduced service;;4;;933;;Discontinued or reduced service.
 ;;204;;Service/equipment/drug not covered under the patient's current benefit plan;;4;;934;;This service/equipment/drug is not covered under the patient's current benefit plan.
 ;;205;;Pharmacy discount card processing fee;;3;;935;;Pharmacy discount card processing fee.
 ;;206;;National Provider Identifier - Missing;;21;;936;;National Provider Identifier - missing.
 ;;207;;National Provider Identifier - Invalid format;;21;;937;;National Provider Identifier - Invalid format.
 ;;208;;National Provider Identifier - Not matched;;21;;938;;National Provider Identifier - Not matched.
 ;;209;;Per regulatory agreement, provider cannot collect from patient;;4;;939;;Per regulatory or other agreement. The provider cannot collect this amount from the patient. However, this amount may be billed to subsequent payer. Refund to patient if collected.
 ;;210;;Payment adjusted - Pre-cert/auth not received in a timely fashion;;4;;940;;Payment adjusted because pre-certification/authorization not received in a timely fashion.
 ;;211;;National Drug Codes (NDC) not eligible for rebate, are not covered;;4;;941;;National Drug Codes (NDC) not eligible for rebate, are not covered.
 ;;212;;Administrative surcharges are not covered;;4;;942;;Administrative surcharges are not covered.
 ;;213;;Non-compliance with physician self referral prohibition legislation/payer policy;;4;;943;;Non-compliance with the physician self referral prohibition legislation or payer policy.
 ;;214;;WC claim adjusted as noncompensable. Payer not liable for claim or service/treat;;4;;944;;Workers' Compensation claim adjudicated as non-compensable. This Payer not liable for claim or service/treatment.
 ;;215;;Based on subrogation of a third party settlement;;4;;945;;Based on subrogation of a third party settlement
 ;;216;;Based on the findings of a review organization;;4;;946;;Based on the findings of a review organization.
 ;;217;;Based on payer reasonable and customary fees (WC only);;4;;947;;Based on payer reasonable and customary fees. No maximum allowable defined by legislated fee arrangement. (Note: To be used for Workers' Compensation only).
 ;;218;;Based on entitlement to benefits (WC only);;4;;948;;Based on entitlement to benefits.
 ;;219;;Based on extent of injury;;4;;949;;Based on extent of injury.
 ;;220;;Applicable fee schedule does not contain the billed code (WC only);;4;;950;;The applicable fee schedule does not contain the billed code. Please resubmit a bill that best describe the service(s) provided and supporting documentation if required.
 ;;221;;WC claim under investigation;;21;;951;;Workers' Compensation claim is under investigation.
 ;;222;;Exceeds contracted max number of hours/days/units by this provider/this period;;4;;952;;Exceeds the contracted maximum number of hours/days/units by this provider for this period. This is not patient specific.
 ;;223;;Adjust code for mandated fed/state/local law/reg not covered by another code;;4;;953;;Adjustment code for mandated federal, state, or local law/regulation that is not already covered by another code and is mandated before a new code can be created.
 ;;224;;Patient identification compromised. Identity verification req for processing.;;4;;954;;Patient identification compromised by identity theft. Identity verification required for processing this and future claims.
 ;;225;;Penalty or interest payment by payer;;15;;919;;Penalty or Interest Payment by Payer (Only used for plan to plan encounter reporting within the 837)
 ;;226;;Info req from billing/rend provider not provided or insuff/incomplete;;4;;956;;Information requested from the Billing/Rendering Provider was not provided or not provided timely or was insufficient/incomplete.
 ;;227;;Info req from pt/insured/resp party not provided or insuff/incomplete;;4;;957;;Information requested from the patient/insured/responsible party was not provided or was insufficient/incomplete.
 ;;228;;Denied - This/another prov/subscriber failed to supply req info to prev payer;;4;;958;;Denied for failure of this provider, another provider or the subscriber to supply requested information to a previous payer for their adjudication.
 ;;229;;Partial charge amt not considered by Medicare due to the initial claim TOB 12X;;4;;959;;Partial charge amount not considered by Medicare due to the initial claim Type of Bill being 12X.
 ;;230;;No available/correlating CPT/HCPCS to describe this service;;4;;960;;No available or correlating CPT/HCPCS code to describe this service. Note: Used only by Property and Casualty.
 ;;231;;Mutually exclusive procedures cannot be done in same day/setting;;4;;961;;Mutually exclusive procedures cannot be done in the same day/setting. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;232;;Institutional transfer amount;;4;;962;;Institutional Transfer Amount. Usage: Applies to institutional claims only and explains the DRG amount difference when the patient care crosses multiple institutions.
 ;;233;;Charges related to treatment of a hospital acquired condition.;;4;;963;;Services/charges related to the treatment of a hospital-acquired condition or preventable medical error.
 ;;234;;This procedure is not paid separately;;4;;964;;This procedure is not paid separately. At least one Remark Code must be provided (may be comprised of either the NCPDP Reject Reason Code, or Remittance Advice Remark Code that is not an ALERT.)
 ;;235;;Sales tax;;4;;965;;Sales Tax
 ;;236;;Proc/proc+mod comb not compat w/oth proc/proc+mod, same day per NCCI;;4;;966;;This procedure/modifier combination is not compatible with another procedure/modifier combination provided on the same day according to the National Correct Coding Initiative.
 ;;237;;Legislated/Regulatory Penalty. Check Remark Codes;;15;;975;;Legislated/Regulatory Penalty. At least one Remark Code must be provided (may be comprised of either the NCPDP Reject Reason Code, or Remittance Advice Remark Code that is not an ALERT.)
 ;;238;;Clm spans eligible, inelig periods of coverage, may be the patient's resp;;4;;967;;Claim spans eligible and ineligible periods of coverage, this is the reduction for the ineligible period (Use only with Group Code PR).
 ;;239;;Clm spans eligible, inelig periods of coverage. Rebill separate clms;;4;;969;;Claim spans eligible and ineligible periods of coverage. Rebill separate claims.
 ;;240;;Dx inconsistent with pt's birth weight;;4;;980;;The diagnosis is inconsistent with the patient's birth weight. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;241;;Low Income Subsidy (LIS) co-pay amount;;14;;981;;Low Income Subsidy (LIS) Co-payment Amount
 ;;242;;Svcs not provided by network/primary care providers;;4;;982;;Services not provided by network/primary care providers. Notes: This code replaces deactivated code 38
 ;;243;;Svcs not authorized by network/primary care providers;;4;;983;;Services not authorized by network/primary care providers. Notes: This code replaces deactivated code 38
 ;;244;;Pymt red to zero due to lit. Addt'l info will be sent following concl of lit.;;21;;984;;Payment reduced to zero due to litigation. Additional information will be sent following the conclusion of litigation. To be used for Property & Casualty only.
 ;;245;;Prov performance program withhold.;;15;;985;;Provider performance program withhold.
 ;;246;;This non-payable code is for req'd reporting only;;4;;986;;This non-payable code is for required reporting only.
 ;;247;;Ded for Prof svc rendered in Institutional setting and billed on Inst clm;;13;;987;;Deductible for Professional service rendered in an Institutional setting and billed on an Institutional claim.
 ;;248;;Coins for Prof svc rendered in Institutional setting and billed on Inst clm;;14;;988;;Coinsurance for Professional service rendered in an Institutional setting and billed on an Institutional claim.
 ;;249;;Clm identified as a readmission;;4;;989;;This claim has been identified as a readmission. (Use only with Group Code CO).
 ;;END
 ;;
