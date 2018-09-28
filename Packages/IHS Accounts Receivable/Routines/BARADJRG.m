BARADJRG  ;IHS/SD/POT - CREATE ENTRY IN A/R EDI STND CLAIM ADJ REASON ;
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ; IHS/DIT/CPC HEAT326081 - V1.8 P28 - updated SARs
 ; Continuation of BARADJRF
 ; *********************************************************************
EN ; EP
 ; Update A/R EDI Stnd Adj Reason Descriptions
 S BARD=";;"
 S BARCNT=0
 D BMES^XPDUTL("A/R EDI STND CLAIM ADJ REASONS Phase 3...")
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
 ;;95;;Plan procedures not followed;;4;;695;;Plan procedures not followed.
 ;;96;;Non-covered charge(s);;4;;696;;Non-covered charge(s). At least one Remark Code must be provided (may be comprised of either the NCPDP Reject Reason Code, or Remittance Advice Remark Code that is not an ALERT.)
 ;;97;;Benefit included in payment for another service already adjudicated;;4;;697;;The benefit for this service is included in the payment/allowance for another service/procedure that has already been adjudicated.
 ;;98;;Hospital must file Medicare claim for this inpatient non-physician service;;21;;698;;The hospital must file the Medicare claim for this inpatient non-physician service.
 ;;99;;Medicare Secondary Payer Adjustment Amount;;4;;699;;Medicare Secondary Payer Adjustment Amount.
 ;;100;;Payment made to patient/insured/responsible party/employer;;4;;23;;Payment made to patient/insured/responsible party/employer. Effective 05/01/2018: Payment made to patient/insured/responsible party.
 ;;101;;Predetermination: anticipate payment upon completion of svcs/claim adjudication;;21;;701;;Predetermination: anticipated payment upon completion of services or claim adjudication.
 ;;102;;Major Medical Adjustment;;4;;702;;Major Medical Adjustment.
 ;;103;;Provider promotional discount (e.g., Senior citizen discount);;4;;703;;Provider promotional discount (e.g., Senior citizen discount).
 ;;104;;Managed care withholding;;4;;704;;Managed care withholding.
 ;;105;;Tax withholding;;4;;705;;Tax withholding.
 ;;106;;Patient payment option/election not in effect;;4;;706;;Patient payment option/election not in effect.
 ;;107;;Related or qualifying claim/service not identified on claim;;4;;707;;The related or qualifying claim/service was not identified on this claim. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;108;;Rent/purchase guidelines were not met;;4;;708;;Rent/purchase guidelines were not met. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;109;;Claim not covered by payer/contractor. Send claim to correct payer/contractor;;4;;709;;Claim/service not covered by this payer/contractor. You must send the claim/service to the correct payer/contractor.
 ;;110;;Billing date predates service date;;4;;710;;Billing date predates service date.
 ;;111;;Not covered unless the provider accepts assignment;;4;;711;;Not covered unless the provider accepts assignment.
 ;;112;;Payment adjusted as not furnished directly to the patient and/or not documented;;4;;180;;Service not furnished directly to the patient and/or not documented.
 ;;113;;Payment denied-service/procedure provided outside the US or as a result of war;;4;;713;;Payment denied because service/procedure was provided outside the United States or as a result of war. Notes: Use Codes 157, 158, or 159
 ;;114;;Procedure/product not approved by the Food and Drug Administration;;4;;714;;Procedure/product not approved by the Food and Drug Administration.
 ;;115;;Procedure postponed or canceled;;4;;715;;Procedure postponed, canceled, or delayed.
 ;;116;;Advance indemnification signed by the patient did not comply w/requirements;;4;;716;;The advance indemnification notice signed by the patient did not comply with requirements.
 ;;117;;Transport only covered closest facility that can provide necessary care;;4;;717;;Transportation is only covered to the closest facility that can provide the necessary care.
 ;;118;;ESRD network support adjustment;;4;;718;;ESRD network support adjustment.
 ;;119;;Benefit maximum for this time period or occurrence has been reached;;4;;719;;Benefit maximum for this time period or occurrence has been reached.
 ;;120;;Patient is covered by a managed care plan;;4;;720;;Patient is covered by a managed care plan. Notes: Use code 24.
 ;;121;;Indemnification adjustment;;4;;721;;Indemnification adjustment - compensation for outstanding member responsibility.
 ;;122;;Psychiatric reduction;;4;;722;;Psychiatric reduction.
 ;;123;;Payer refund due to overpayment;;22;;723;;Payer refund due to overpayment.
 ;;124;;Payer refund amount - not our patient;;22;;724;;Payer refund amount - not our patient. Notes: Refer to implementation guide for proper handling of reversals.
 ;;125;;Submission/billing error(s);;4;;725;;Submission/billing error(s). At least one Remark Code must be provided (may be comprised of either the NCPDP Reject Reason Code, or Remittance Advice Remark Code that is not an ALERT.)
 ;;126;;Deductible -- Major Medical;;13;;726;;Deductible -- Major Medical Notes: Use Group Code PR and code 1.
 ;;127;;Coinsurance -- Major Medical;;14;;727;;Coinsurance -- Major Medical Notes: Use Group Code PR and code 2.
 ;;128;;Newborn's services are covered in the mother's allowance;;4;;728;;Newborn's services are covered in the mother's Allowance.
 ;;129;;Prior processing information appears incorrect;;4;;164;;Prior processing information appears incorrect. At least one Remark Code must be provided. )
 ;;130;;Claim submission fee;;4;;730;;Claim submission fee.
 ;;131;;Claim specific negotiated discount;;4;;731;;Claim specific negotiated discount.
 ;;132;;Prearranged demonstration project adjustment;;4;;732;;Prearranged demonstration project adjustment.
 ;;133;;The disposition of this service line is pending further review;;21;;733;;The disposition of this service line is pending further review. (Use only with Group Code OA).
 ;;134;;Technical fees removed from charges;;4;;734;;Technical fees removed from charges.
 ;;135;;Interim bills cannot be processed;;4;;735;;Interim bills cannot be processed.
 ;;136;;Failure to follow prior payer's coverage rules;;4;;736;;Failure to follow prior payer's coverage rules. (Use only with Group Code OA).
 ;;137;;Regulatory Surcharges/Assessments/Allowances/Health Related Taxes;;4;;141;;Regulatory Surcharges, Assessments, Allowances or Health Related Taxes.
 ;;138;;Appeal procedures not followed or time limits not met;;4;;738;;Appeal procedures not followed or time limits not met.
 ;;139;;Contracted funding agreement - Subscriber employed by the provider of services;;4;;739;;Effective 05/01/2018: Contracted funding agreement - Subscriber is employed by the provider of services. Use only with Group Code CO.
 ;;140;;Patient/Insured health identification number and name do not match;;4;;740;;Patient/Insured health identification number and name do not match.
 ;;141;;Claim spans eligible and ineligible periods of coverage;;4;;125;;Claim spans eligible and ineligible periods of coverage.
 ;;142;;Monthly Medicaid patient liability amount;;4;;742;;Monthly Medicaid patient liability amount.
 ;;143;;Portion of payment deferred;;21;;743;;Portion of payment deferred.
 ;;144;;Incentive adjustment, e.g. preferred product/service;;4;;744;;Incentive adjustment, e.g. preferred product/service.
 ;;145;;Premium payment withholding;;4;;745;;Premium payment withholding Notes: Use Group Code CO and code 45
 ;;146;;Diagnosis invalid for the date(s) of service reported;;4;;746;;Diagnosis was invalid for the date(s) of service reported.
 ;;147;;Provider contracted/negotiated rate expired or not on file;;4;;747;;Provider contracted/negotiated rate expired or not on file.
 ;;148;;Information from another provider was not provided or was insuff/incomplete;;4;;748;;Information from another provider was not provided or was insufficient/incomplete.
 ;;149;;Lifetime benefit maximum has been reached for this service/benefit category;;4;;749;;Lifetime benefit maximum has been reached for this service/benefit category.
 ;;150;;Payer deems the info submitted does not support level of service;;4;;754;;Payer deems the information submitted does not support this level of service.
 ;;151;;Pmt adjusted - payer deems the info submitted not support this many svcs;;4;;750;;Payment adjusted because the payer deems the information submitted does not support this many/frequency of services.
 ;;152;;Payer deems the info submitted not support this lgth of svc;;4;;751;;Payer deems the information submitted does not support this length of service. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;153;;Payer deems the info submitted does not support this dosage;;4;;752;;Payer deems the information submitted does not support this dosage.
 ;;154;;Payer deems the info submitted does not support this day's supply;;4;;753;;Payer deems the information submitted does not support this day's supply.
 ;;155;;Patient refused the service/procedure;;4;;755;;Patient refused the service/procedure.
 ;;156;;Flexible spending account payments.;;22;;756;;Flexible spending account payments. Note: Use code 187.
 ;;157;;Service/procedure provided as a result of an act of war;;4;;757;;Service/procedure was provided as a result of an act of war.
 ;;158;;Service/procedure provided outside the United States;;4;;758;;Service/procedure was provided outside of the United States.
 ;;159;;Service/procedure provided as a result of terrorism;;4;;759;;Service/procedure was provided as a result of terrorism.
 ;;160;;Injury/illness result of activity that's a benefit exclusion;;4;;760;;Injury/illness was the result of an activity that is a benefit exclusion.
 ;;161;;Provider performance bonus;;16;;922;;Provider performance bonus.
 ;;162;;State-mandated requirment for property/casulty--see claim payment remark codes;;4;;762;;State-mandated Requirement for Property and Casualty, see Claim Payment Remarks code for specific explanation.
 ;;163;;Attachment referenced on the claim was not received;;21;;763;;Attachment/other documentation referenced on the claim was not received.
 ;;164;;Attachment referenced on the claim was not received in a timely fashion;;4;;764;;Attachment/other documentation referenced on the claim was not received in a timely fashion.
 ;;165;;Referral absent or exceeded;;15;;765;;Referral absent or exceeded.
 ;;166;;Service submitted to payer after responsibility for processing claims ended;;4;;766;;These services were submitted after this payers responsibility for processing claims under this plan ended.
 ;;167;;This (these) diagnosis(es) is (are) not covered;;4;;767;;This (these) diagnosis(es) is (are) not covered. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;168;;Svcs have been considerd under pts med plan. Benfts not avail under dental plan;;4;;768;;Service(s) have been considered under the patient's medical plan. Benefits are not available under this dental plan.
 ;;169;;Alternate benefit has been provided;;4;;769;;Alternate benefit has been provided.
 ;;170;;Payment denied when performed/billed by this type of provider;;4;;770;;Payment is denied when performed/billed by this type of provider. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;171;;Payment denied when performed by this type of provider in this type of facility;;4;;771;;Payment is denied when performed/billed by this type of provider in this type of facility.
 ;;172;;Payment adjusted when perfomed/billed by a provider of this specialty;;4;;772;;Payment is adjusted when performed/billed by a provider of this specialty. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;173;;Service/equipment was not prescribed by a physician;;4;;773;;Service/equipment was not prescribed by a physician.
 ;;174;;Service was not prescribed prior to delivery;;4;;774;;Service was not prescribed prior to delivery.
 ;;175;;Prescription is incomplete;;4;;775;;Prescription is incomplete.
 ;;176;;Prescription is not current;;4;;776;;Prescription is not current.
 ;;177;;Patient has not met the required eligibility requirements;;4;;777;;Patient has not met the required eligibility requirements.
 ;;178;;Patient has not met the required spend down requirements;;4;;778;;Patient has not met the required spend down requirements.
 ;;179;;Patient has not met the required waiting requirements;;4;;779;;Patient has not met the required waiting requirements. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;END
 ;;
