ADE6P322 ;IHS/OIT/GAB - ADE V6.0 PATCH 32 [ 10/12/2017 8:37 AM ]
 ;;6.0;ADE*6.0*32;;March 25, 1999;Build 42
 ;IHS/OIT/GAB 10/2017 Patch 32 ADA-CDT code updates for 2018
 ;Modification of 2018 ADA-CDT Codes - Update the .02 field (Nomenclature)
MODCDT32 ;EP
 D UPDATE^ADEUPD32(9999999.31,".01,,.02",1101,"?+1,","MODADA^ADE6P322","SETX^ADE6P322")
 Q
 ;
SETX ;EP
 I $G(ADERPEAT) D  Q:ADERPEAT
 .S:ADERPEAT=1 ADECURX=ADEX,ADERPEAT=2
 .S ADEN=$O(^AUTTADA("B",ADEN)) I ADEN'?1N.N!(ADEN]ADEEND) S ADERPEAT=0,ADEX=ADECURX,ADEN="" Q
 .S ADEX=ADESVX,$P(ADEX,U)=ADEN,ADERPEAT=2
 Q:ADEDONE
 I $P(ADEX,U)["-" D  Q:'ADERPEAT
 .S ADERPEAT=1,ADESVX=ADEX,ADESTART=$P($P($P(ADEX,U),"-"),"D",2),ADEEND=$P($P($P(ADEX,U),"-",2),"D",2),ADEN=$O(^AUTTADA("B",ADESTART),-1)
 .S ADEN=$O(^AUTTADA("B",ADEN)) I ADEN'?1N.N!(ADEN]ADEEND) S ADERPEAT=0,ADEN="" Q
 .S $P(ADEX,U)=ADEN
 I 'ADERPEAT S ADEN=$P($P(ADEX,U),"D",2),$P(ADEX,U)=ADEN
 S $P(ADEX,U,3)=$TR($P(ADEX,U,3),"abcdefghijklmnopqrstuvwxyz","ABCDEFGHIJKLMNOPQRSTUVWXYZ")
 S:ADERPEAT ADESVX=ADEX
 Q
 ;
MODADA ;  Code^^Nomenclature    /   Descriptor on next line
 ;;D1354^^interim caries arresting medicament application - per tooth
 ;;D2740^^crown - porcelain/ceramic
 ;;D3310^^endodontic therapy, anterior tooth (excluding final restoration)
 ;;D3320^^endodontic therapy, premolar tooth (excluding final restoration)
 ;;D3330^^endodontic therapy, molar tooth (excluding final restoration)
 ;;D3347^^retreatment of previous root canal therapy - premolar
 ;;D3352^^APEXIFICATION/RECALCIFICATION - INTERIM MEDICATION REPLACEMENT
 ;;D3410^^apicoectomy - anterior
 ;;D3421^^apicoectomy - premolar (first root)
 ;;D3425^^apicoectomy - molar (first root)
 ;;D3426^^apicoectomy (each additional root)
 ;;D4230^^anatomical crown exposure - four or more contiguous teeth or bounded tooth spaces per quadrant
 ;;D4231^^anatomical crown exposure - one to three teeth or bounded tooth spaces per quadrant
 ;;D4355^^full mouth debridement to enable a comprehensive oral evaluation and diagnosis on a subsequent visit
 ;;D4381^^localized delivery of antimicrobial agents via a controlled release vehicle into diseased crevicular tissue, per tooth
 ;;D4910^^periodontal maintenance
 ;;D4920^^UNSCHEDULED DRESSING CHANGE (BY SOMEONE OTHER THAN TREATING DENTIST or their staff)
 ;;D6081^^scaling and debridement in the presence of inflammation or mucositis of a single implant, including cleaning of the implant surfaces, without flap entry and closure
 ;;D7111^^extraction, coronal remnants - primary tooth
 ;;D7320^^ALVEOLOPLASTY NOT IN CONJUNCTION WITH EXTRACTIONS - FOUR OR MORE TEETH OR TOOTH SPACES, PER QUADRANT
 ;;D7980^^surgical sialolithotomy
 ;;D9223^^deep sedation/general anesthesia - each subsequent 15 minute increment
 ;;D9230^^INHALATION OF NITROUS OXIDE / ANALGESIA, ANXIOLYSIS
 ;;D9243^^intravenous moderate (conscious) sedation/analgesia - each subsequent 15 minute increment
 ;;***END***
