BLRSHPL2 ;cmi/anch/maw - BLR Reference Lab Shipping Manifest: Others ; 20-May-2016 07:17 ; MKK
 ;;5.2;IHS LABORATORY;**1027,1028,1031,1034,1039**;NOV 01, 1997;Build 38
 ;
 ;
 ;
WA ;-- print labcorp written authorization
 W !!
 W "I hereby authorize the release of medical information related to the services"
 W !,"described herein and authorize payment directly to Laboratory Corporation of"
 W !,"America.  I agree to assume responsibility for payment of charges for"
 W !,"laboratory services that are not covered by any healthcare insurer."
 W !!!
 W "____________________  __________",?40,"___________________  __________"
 W !,"Patient Signature     Date",?40,"Physician Signature  Date"
 Q
 ;
PRTSECI(SEC,PT) ;-- print the secondary insurance
 N INSI,ICC,IN,IR,IRE,INRN,INRA,INRAE,INSAD,INSADE,GUARI,GUAR,GUARA,GUARAE,GUARPH,ING,INID,GUARP
 N INST
 S INSI=$P(SEC,U,2)
 S ICC=$TR($P($G(^AUTNINS(INSI,2)),U,19),"~")
 S IR=$S($P(SEC,U,16):$P($G(^AUTTRLSH($P(SEC,U,16),0)),U),1:"")
 I $G(IR)]"" D
 . I IR="SELF" S IR=1 Q
 . I IR="SPOUSE" S IR=2,IRE="SPOUSE" Q
 . I IR="HUSBAND" S IR=2,IRE="SPOUSE" Q
 . I IR="WIFE" S IR=2,IRE="SPOUSE" Q
 . S IR=3,IRE="OTHER" Q
 I $G(IR)="" S IR=1,IRE="SELF"
 S INRN=$P($G(^AUTNINS(INSI,0)),U)
 S INRA=$$PATADD^BLRRLHL(PT)
 S INRAE=$TR($P($$PATADD^BLRRLHL(PT),U),U," ")_"~"_$TR($P($$PATADD^BLRRLHL(PT),U,3,99),U," ")
 S INSAD=$$INSADD^BLRRLHL(INSI)
 S INSADE=$TR($P(INSAD,U),U," ")_"~"_$TR($P(INSAD,U,3,99),U," ")
 S GUARI=$P(SEC,U,7)
 S INST=$P($G(^AUTNINS(INSI,2)),U)
 I $E(GUARI,1,1)="P" D
 . S GUAR=$$HLNAME^XLFNAME($P(^AUPN3PPH($E(GUARI,2,99),0),U))
 . S GUARAD=$$GT1ADD^BLRRLHL($E(GUARI,2,99))
 . S GUARPH=$P($G(^AUPN3PPH($E(GUARI,2,99),0)),U,14)
 . ;D INSTYP(BLRTSTDA)
 . S GUARAE=$TR($P($G(GUARA),U),U," ")_"~"_$TR($P($G(GUARA),U,3,99),U," ")
 . S GUARE=$TR($G(GUAR),U," ")
 I GUARI]"",$E(GUARI,1,1)'="P" D
 . S GUAR=$P(^DPT(PT,0),U)
 . S GUARA=$$PATADD^BLRRLHL(PT)
 . S GUARPH=$P($G(^DPT(PT,.131)),U)
 I GUAR="" D
 . S GUAR=$P($G(^DPT(PT,0)),U)
 . S GUARA=$G(INRAE)
 ;D INSTYP(BLRTSTDA)
 S GUARAE=$TR($P($G(GUARA),U),U," ")_"~"_$TR($P($G(GUARA),U,3,99),U," ")
 S GUARE=$TR($G(GUAR),U," ")
 S ING=$P(SEC,U,20)
 S INID=$P(SEC,U,9)
 W !!,"SECONDARY INSURANCE"
 W !,"Ins Carrier Code: "_$G(ICC),?40,"Insured Name: "_$E($P($G(^DPT(PT,0)),U),1,26)
 W !,?40,"Relationship: "_$G(IRE)
 W !,"Insurer Name: ",$E($G(INRN),1,30),?40,"Insured Add: "_$P(INRAE,"~")
 W !,"Insurer Add: ",?54,$P(INRAE,"~",2)
 W !,$P($G(INSADE),"~"),?40,"Guarantor: "_$E($G(GUARE),1,25)
 W !,$P($G(INSADE),"~",2),?40,"Guar Add: "_$P($G(GUARAE),"~")
 W !,"Insurer Group: "_$G(ING),?50,$P($G(GUARE),"~",2)
 W !,"Insured ID: "_$G(INID),?40,"Guarantor Phone: "_$G(GUARPH)
 Q
