BARADJRJ  ;IHS/SD/POT - CREATE ENTRY IN A/R EDI STND CLAIM ADJ REASON ;
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ; IHS/DIT/CPC HEAT326081 - V1.8 P28 - updated SARs
 ; Continuation of BARADJRI
 ; *********************************************************************
EN ; EP
 ; Update A/R EDI Stnd Adj Reason Descriptions
 S BARD=";;"
 S BARCNT=0
 D BMES^XPDUTL("A/R EDI STND CLAIM ADJ REASONS Phase 6...")
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
 ;;P1;;State-mandated requirement for property/casualty, see claim payment for remark codes;;22;;401;;State-mandated Requirement for Property and Casualty, see Claim Payment Remarks Code for specific explanation. To be used for Property and Casualty only. Notes: This code replaces deactivated code 162
 ;;P2;;Not a work related injury/illness and not the liability of the WC carrier;;4;;402;;Not a work related injury/illness and thus not the liability of the workers' compensation carrier
 ;;P3;;Workers' Compensation case settled. Pt is responsible for amount of this claim.;;4;;403;;Workers' Compensation case settled. Patient is responsible for amount of this claim/service through WC 'Medicare set aside arrangement' or other agreement. To be used for Workers' Compensation only.
 ;;P4;;Worker's Comp case adjudicated as non-compensable. Payer not liable for clm/svc.;;4;;404;;Workers' Compensation claim adjudicated as non-compensable. This Payer not liable for claim or service/treatment.
 ;;P5;;Based on payer reasonable/customary fees. No max allow defined by fee arrgmt.;;4;;405;;Based on payer reasonable and customary fees. No maximum allowable defined by legislated fee arrangement. To be used for Property and Casualty only. Notes: This code replaces deactivated code 217
 ;;P6;;Based on entitlement to benefits;;4;;406;;Based on entitlement to benefits.
 ;;P7;;The applicable fee schedule does not contain the billed code. Please resubmit.;;22;;407;;The applicable fee schedule does not contain the billed code. Please resubmit a bill with the appropriate code(s) that best describe the service(s) provided and supporting documentation if required.
 ;;P8;;Claim is under investigation;;22;;408;;Claim is under investigation.
 ;;P9;;No available or correlating CPT/HCPCS to describe this service;;4;;409;;No available or correlating CPT/HCPCS code to describe this service. To be used for Property and Casualty only. Notes: This code replaces deactivated code 230
 ;;P10;;Payment reduced to zero due to litigation;;4;;410;;Payment reduced to zero due to litigation. Additional information will be sent following the conclusion of litigation. To be used for Property and Casualty only.
 ;;P11;;The disposition of this claim/service is pending due to litigation;;21;;411;;The disposition of the related Property & Casualty claim (injury or illness) is pending due to litigation. To be used for Property and Casualty only.
 ;;P12;;WC juridicational fee schedule adjustment;;4;;412;;Workers' compensation jurisdictional fee schedule adjustment.
 ;;P13;;Payment red or denied based on WC jurisdictional regulations or pymt policies;;4;;413;;Payment reduced or denied based on workers' compensation jurisdictional regulations or payment policies, use only if no other code is applicable.
 ;;P14;;Benefit for this svc included in pymt for another svc performed on the same day;;4;;414;;The Benefit for this Service is included in the payment/allowance for another service/procedure that has been performed on the same day.
 ;;P15;;WC Medical Treatment Guideline Adjustment;;4;;415;;Workers' Compensation Medical Treatment Guideline Adjustment. To be used for Workers' Compensation only. Notes: This code replaces deactivated code W4
 ;;P16;;Medical provider not auth'd/certified to provide trtmt to injured workers;;4;;416;;Medical provider not authorized/certified to provide treatment to injured workers in this jurisdiction. To be used for Workers' Compensation only.
 ;;P17;;Referral not auth'd by attending physician;;15;;417;;Referral not authorized by attending physician per regulatory requirement. To be used for Property and Casualty only. Notes: This code replaces deactivated code W6
 ;;P18;;Proc not listed in the jurisdiction fee schedule. Allowance made for comp svc;;4;;418;;Procedure is not listed in the jurisdiction fee schedule. An allowance has been made for a comparable service. To be used for Property and Casualty only. Notes: This code replaces deactivated code W7
 ;;P19;;Proc has a relative value of zero in the jurisdictional fee sched, no pymt due;;4;;419;;Procedure has a relative value of zero in the jurisdiction fee schedule, therefore no payment is due. To be used for Property and Casualty only. Notes: This code replaces deactivated code W8
 ;;P20;;Svc not pd under outpatient facility fee schedule;;4;;420;;Service not paid under jurisdiction allowed outpatient facility fee schedule. To be used for Property and Casualty only. Notes: This code replaces deactivated code W9
 ;;P21;;Payment den based on med payments coverage or personal injury protection bnfts;;4;;421;;Payment denied based on the Medical Payments Coverage (MPC) and/or Personal Injury Protection (PIP) Benefits jurisdictional regulations, or payment policies.
 ;;P22;;Payment adjusted based on Medical Payments Coverage/Personal Injury Protection;;4;;422;;Payment adjusted based on the Medical Payments Coverage (MPC) and/or Personal Injury Protection (PIP) Benefits jurisdictional regulations, or payment policies.
 ;;P23;;Medical Payments Coverage/Personal Injury Protection Benefits fee schedule adj;;4;;423;;Medical Payments Coverage (MPC) or Personal Injury Protection (PIP) Benefits jurisdictional fee schedule adjustment.
 ;;W1;;WC State fee schedule adjustment/WC jurisdiction fee schedule adjustment;;3;;15;;Workers Compensation State Fee Schedule Adjustment. Workers' compensation jurisdictional fee schedule adjustment.
 ;;W2;;Payment reduced/denied - WC jursidictional regulations or payment policies;;4;;822;;Payment reduced or denied based on workers' compensation jurisdictional regulations or payment policies, use only if no other code is applicable.
 ;;W3;;Benefit for this svc included in pymt for another svc performed on the same day.;;4;;823;;The Benefit for this Service is included in the payment/allowance for another service/procedure that has been performed on the same day. For use by Property and Casualty only.
 ;;W4;;WC Medical Treatment Guideline Adjustment;;4;;824;;Workers' Compensation Medical Treatment Guideline Adjustment.
 ;;W5;;Medical provider not auth'd/certified to provide trtmt to injured workers.;;4;;825;;Medical provider not authorized/certified to provide treatment to injured workers in this jurisdiction. (Use with Group Code CO or OA)
 ;;W6;;Referral not auth'd by attending physician.;;15;;826;;Referral not authorized by attending physician per regulatory requirement.
 ;;W7;;Proc not listed in the jurisdiction fee schedule. Allowance made for comp svc.;;22;;827;;Procedure is not listed in the jurisdiction fee schedule. An allowance has been made for a comparable service.
 ;;W8;;Proc has a relative value of zero in the jurisdictional fee sched, no pymt due.;;22;;828;;Procedure has a relative value of zero in the jurisdiction fee schedule, therefore no payment is due.
 ;;W9;;Svc not pd under outpatient facility fee schedule.;;4;;829;;Service not paid under jurisdiction allowed outpatient facility fee schedule.
 ;;Y1;;Payment den based on med payments coverage or personal injury protection bnfts.;;4;;841;;Payment denied based on Medical Payments Coverage (MPC) or Personal Injury Protection (PIP) Benefits jurisdictional regulations or payment policies, use only if no other code is applicable.
 ;;Y2;;Payment adjusted based on medical pymts cov or pers injury protection bnfts.;;4;;842;;Payment adjusted based on Medical Payments Coverage (MPC) or Personal Injury Protection (PIP) Benefits jurisdictional regulations or payment policies, use only if no other code is applicable.
 ;;Y3;;Med Payments Coverage or Pers Injury Protection Benefits fee sched adjustment.;;22;;843;;Medical Payments Coverage (MPC) or Personal Injury Protection (PIP) Benefits jurisdictional fee schedule adjustment.
 ;;END
 ;;
