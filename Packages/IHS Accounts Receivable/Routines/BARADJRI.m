BARADJRI  ;IHS/SD/POT - CREATE ENTRY IN A/R EDI STND CLAIM ADJ REASON ;
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ; IHS/DIT/CPC HEAT326081 - V1.8 P28 - updated SARs
 ; Continuation of BARADJRH
 ; *********************************************************************
EN ; EP
 ; Update A/R EDI Stnd Adj Reason Descriptions
 S BARD=";;"
 S BARCNT=0
 D BMES^XPDUTL("A/R EDI STND CLAIM ADJ REASONS Phase 5...")
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
 ;;250;;Incorrect attachment/documentation received;;4;;300;;The attachment/other documentation that was received was the incorrect attachment/document. The expected attachment/document is still missing.
 ;;251;;Documentation recv'd was incomplete or deficient;;4;;301;;The attachment/other documentation that was received was incomplete or deficient. The necessary information is still needed to process the claim.
 ;;252;;Doc required to adjudicate clm/svc. At least one Remark Code must be provided.;;4;;302;;An attachment/other documentation is required to adjudicate this claim/service.
 ;;253;;Sequestration - reduction in federal pymt.;;15;;303;;Sequestration - reduction in federal payment
 ;;254;;Clm rcvd by dental plan but bnfts not avail. Submit to pt's medical plan;;4;;304;;Claim received by the dental plan, but benefits not available under this plan. Submit these services to the patient's medical plan for further consideration.
 ;;255;;Clm pending due to litigation.;;21;;305;;The disposition of the related Property & Casualty claim (injury or illness) is pending due to litigation. (Use only with Group Code OA)
 ;;256;;Svc not payable per managed care contract;;4;;306;;Service not payable per managed care contract.
 ;;257;;Clm pending during the prem grace period, per Health Ins Exchange requirements;;21;;307;;The disposition of the claim is undetermined during the premium payment grace period, per Health Insurance Exchange requirements. This claim will be reversed and corrected when the grace period ends.
 ;;258;;Clm/svc not cvrd when pt in cust/incarcerated. Fed,state,local auth may cover.;;4;;308;;Claim/service not covered when patient is in custody/incarcerated. Applicable federal, state or local authority may cover the claim/service.
 ;;A0;;Patient refund amount;;19;;800;;Patient refund amount.
 ;;A1;;Claim denied charges;;4;;801;;Claim/Service denied. At least one Remark Code must be provided (may be comprised of either the NCPDP Reject Reason Code, or Remittance Advice Remark Code that is not an ALERT.)
 ;;A2;;Contractual adjustment;;4;;802;;Contractual adjustment. Notes: Use Code 45 with Group Code 'CO' or use another appropriate specific adjustment code.
 ;;A3;;Medicare Secondary Payer liability met;;4;;803;;Medicare Secondary Payer liability met.
 ;;A4;;Medicare Claim PPS Capital Day Outlier Amount;;4;;804;;Medicare Claim PPS Capital Day Outlier Amount.
 ;;A5;;Medicare Claim PPS Capital Cost Outlier Amount;;4;;805;;Medicare Claim PPS Capital Cost Outlier Amount.
 ;;A6;;Prior hospitalization or 30 day transfer requirement not met;;4;;806;;Prior hospitalization or 30 day transfer requirement not met.
 ;;A7;;Presumptive Payment Adjustment;;4;;807;;Presumptive Payment Adjustment
 ;;A8;;Ungroupable DRG;;4;;808;;Ungroupable DRG.
 ;;B1;;Non-covered visits;;4;;851;;Non-covered visits.
 ;;B2;;Covered visits;;4;;852;;Covered visits.
 ;;B3;;Covered charges;;4;;853;;Covered charges.
 ;;B4;;Late filing penalty;;15;;854;;Late filing penalty.
 ;;B5;;Coverage/program guidelines were not met or were exceeded;;4;;855;;Coverage/program guidelines were not met or were exceeded.
 ;;B6;;Payment adj when performed/billed by type prv/type prv in type fac/prv specialty;;4;;856;;This payment is adjusted when performed/billed by this type of provider, by this type of provider in this type of facility, or by a provider of this specialty.
 ;;B7;;Provider not certified/eligible to be paid for proc/service on date of service;;4;;857;;This provider was not certified/eligible to be paid for this procedure/service on this date of service.
 ;;B8;;Alternative services available and should have been utilized;;4;;858;;Alternative services were available, and should have been utilized. Usage: Refer to the 835 Healthcare Policy Identification Segment (loop 2110 Service Payment Information REF), if present.
 ;;B9;;Patient is enrolled in a Hospice;;4;;859;;Patient is enrolled in a Hospice.
 ;;B10;;Allowed amount reduced. Component of basic proc was paid.;;4;;860;;Allowed amount has been reduced because a component of the basic procedure/test was paid. The beneficiary is not liable for more than the charge limit for the basic procedure/test.
 ;;B11;;Claim transferred to proper payer/processor. Service not covered by this payer.;;4;;861;;The claim/service has been transferred to the proper payer/processor for processing. Claim/service not covered by this payer/processor.
 ;;B12;;Services not documented in patients' medical records;;4;;862;;Services not documented in patients' medical records.
 ;;B13;;Previously paid. Payment for claim/service provided in a previous payment;;4;;863;;Previously paid. Payment for this claim/service may have been provided in a previous payment.
 ;;B14;;Payment denied. One visit or consultation per physician per day is covered.;;4;;864;;Only one visit or consultation per physician per day is covered.
 ;;B15;;Service/procedure req that a qualifying service/proc be received and covered;;4;;865;;This service/procedure requires that a qualifying service/procedure be received and covered. The qualifying other service/procedure has not been received/adjudicated.
 ;;B16;;`New Patient' qualifications were not met;;4;;866;;`New Patient' qualifications were not met.
 ;;B17;;Payment adjust-svc not prescribed by physician/prior to deliv, RX incomp/not curr;;4;;867;;Payment adjusted because this service was not prescribed by a physician, not prescribed prior to delivery, the prescription is incomplete, or the prescription is not current.
 ;;B18;;Procedure code and modifier invalid on date of service;;4;;868;;This procedure code and modifier was invalid on the date of service.
 ;;B19;;Claim/service adjusted because of the finding of a Review Organization;;4;;869;;Claim/service adjusted because of the finding of a Review Organization.
 ;;B20;;Procedure/service partially/fully furnished by another provider;;4;;870;;Procedure/service was partially or fully furnished by another provider.
 ;;B21;;Charges reduced - service/care partially furnished by another physician;;4;;871;;The charges were reduced because the service/care was partially furnished by another physician.
 ;;B22;;This payment is adjusted based on the diagnosis;;4;;872;;This payment is adjusted based on the diagnosis.
 ;;B23;;Proc billed not authorized per CLIA proficiency test;;4;;873;;Procedure billed is not authorized per your Clinical Laboratory Improvement Amendment (CLIA) proficiency test.
 ;;D1;;Claim/service denied. Level of subluxation is missing or inadequate;;4;;901;;Claim/service denied. Level of subluxation is missing or inadequate. Notes: Use code 16 and remark codes if necessary.
 ;;D2;;Claim lacks the name, strength, or dosage of the drug furnished;;4;;902;;Claim lacks the name, strength, or dosage of the drug furnished. Notes: Use code 16 and remark codes if necessary.
 ;;D3;;Claim/service denied - info indicating pat own equip requiring part/supply missing;;4;;903;;Claim/service denied because information to indicate if the patient owns the equipment that requires the part or supply was missing.
 ;;D4;;Claim/service does not indicate the period of time for which this will be needed;;4;;904;;Claim/service does not indicate the period of time for which this will be needed. Notes: Use code 16 and remark codes if necessary.
 ;;D5;;Claim/service denied - claim lacks individual lab codes included in the test;;4;;905;;Claim/service denied. Claim lacks individual lab codes included in the test. Notes: Use code 16 and remark codes if necessary.
 ;;D6;;Claim/service denied - claim not include patient's medical record for the service;;4;;906;;Claim/service denied. Claim did not include patient's medical record for the service. Notes: Use code 16 and remark codes if necessary.
 ;;D7;;Claim/service denied - claim lacks date of patient's most recent physician visit;;4;;907;;Claim/service denied. Claim lacks date of patient's most recent physician visit. Notes: Use code 16 and remark codes if necessary.
 ;;D8;;Claim/service denied - claim lacks indicator that `x-ray is available for review;;4;;908;;Claim/service denied. Claim lacks indicator that `x-ray is available for review'. Notes: Use code 16 and remark codes if necessary.
 ;;D9;;Claim/svc denied - need inv/stat cert act cost lens-disc/type intraocular lens;;4;;909;;Claim/service denied. Claim lacks invoice or statement certifying the actual cost of the lens, less discounts or the type of intraocular lens used.
 ;;D10;;Claim/svc denied - Completed phys financial relationship form not on file;;4;;910;;Claim/service denied. Completed physician financial relationship form not on file. Notes: Use code 17.
 ;;D11;;Claim lacks completed pacemaker registration form;;4;;911;;Claim lacks completed pacemaker registration form. Notes: Use code 17.
 ;;D12;;Claim/svc denied - need ident who performed the purchased diag test/amt charged;;4;;912;;Claim/service denied. Claim does not identify who performed the purchased diagnostic test or the amount you were charged for the test. Notes: Use code 17.
 ;;D13;;Claim/svc denied - performed by fac/supplier where order/refer phys has finan int;;4;;913;;Claim/service denied. Performed by a facility/supplier in which the ordering/referring physician has a financial interest. Notes: Use code 17.
 ;;D14;;Claim lacks indication that plan of treatment is on file;;4;;914;;Claim lacks indication that plan of treatment is on file. Notes: Use code 17.
 ;;D15;;Claim lacks indication that service was supervised or evaluated by a physician;;4;;915;;Claim lacks indication that service was supervised or evaluated by a physician. Notes: Use code 17.
 ;;D16;;Claim lacks prior payment information;;4;;900;;Claim lacks prior payer payment information. Notes: Use code 16 with appropriate claim payment remark code [N4].
 ;;D17;;Claim/service has invalid non-covered days;;4;;927;;Claim/Service has invalid non-covered days. Notes: Use code 16 with appropriate claim payment remark code.
 ;;D18;;Claim/service has missing diagnosis information;;4;;928;;Claim/Service has missing diagnosis information. Notes: Use code 16 with appropriate claim payment remark code.
 ;;D19;;Claim/service lacks physician/operative or other supporting documentation;;4;;929;;Claim/Service lacks Physician/Operative or other supporting documentation. Notes: Use code 16 with appropriate claim payment remark code.
 ;;D20;;Claim/service missing service/product information;;4;;970;;Claim/Service missing service/product information. Notes: Use code 16 with appropriate claim payment remark code.
 ;;D21;;This (these) diagnosis(es) is/are missing or are invalid;;4;;971;;This (these) diagnosis(es) is (are) missing or are invalid.
 ;;D22;;Reimbursement adjust-reasons to be provided in separate correspondence (WC only);;4;;972;;Reimbursement was adjusted for the reasons to be provided in separate correspondence. (Note: To be used for Workers' Compensation only).
 ;;D23;;Dual elig pt covered by Medicare Part D per Medicare Retro-Eligibility;;4;;973;;This dual eligible patient is covered by Medicare Part D per Medicare Retro-Eligibility.
 ;;END
 ;;
