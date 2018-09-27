ADE6P321 ;IHS/OIT/GAB - ADE V6.0 PATCH 32 [ 10/12/2017  8:37 AM ]
 ;;6.0;ADE*6.0*32;;March 25, 1999;Build 42
 ;IHS/OIT/GAB 10/2017 Patch 32 ADA-CDT code updates for 2018
 ;Addition of ADA-CDT 2018 Codes
ADDCDT32 ;EP
 D UPDATE^ADEUPD32(9999999.31,".01,.05,501,.06,,.02,8801,.09",1101,"?+1,","ADDADA^ADE6P321","SETX^ADE6P321")
 Q
 ;
SETX ;EP
 S ADEN=$P($P(ADEX,U),"D",2),$P(ADEX,U)=ADEN,$P(ADEX,U,6)=$TR($P(ADEX,U,6),"abcdefghijklmnopqrstuvwxyz","ABCDEFGHIJKLMNOPQRSTUVWXYZ")
 Q
 ;      
ADDADA ;    code^Level of care^RVU^Syn^^Nomen.^Mnem^Op Site Prompt (either "n" or leave blank) / next line is the descriptor
 ;;D0411^1^1.45^HBA1CTEST^^HbA1c in-office point of service testing^HBA1CTEST^n
 ;;D5511^1^3.35^RPRBRCOMDENMAN^^repair broken complete denture base, mandibular^RPRBRCOMDENMAN^n
 ;;D5512^1^3.35^RPRBRCOMDENMAX^^repair broken complete denture base, maxillary^RPRBRCOMDENMAX^n
 ;;D5611^1^3.35^RPRRESRPDMAN^^repair resin partial denture base, mandibular^RPRRESRPDMAN^n
 ;;D5612^1^3.35^RPRRESRPDMAX^^repair resin partial denture base, maxillary^RPRRESRPDMAX^n
 ;;D5621^1^4.58^RPRCASFRMMAN^^repair cast partial framework, mandibular^RPRCASFRMMAN^n
 ;;D5622^1^4.58^RPRCASFRMMAX^^repair cast partial framework, maxillary^RPRCASFRMMAX^n
 ;;D6096^1^1.43^RMVIMPRETSCRW^^remove broken implant retaining screw^RMVIMPRETSCRW^
 ;;D6118^5^18.50^IMPABTSUPFPDMAN^^implant/abutment supported interim fixed denture for edentulous arch - mandibular^IMPABTSUPFPDMAN^n
 ;;Used when a period of healing is necessary prior to fabrication and placement of a permanent prosthetic.
 ;;D6119^5^18.50^IMPABTSUPFPDMAX^^implant/abutment supported interim fixed denture for edentulous arch - maxillary^IMPABTSUPFPDMAX^n
 ;;Used when a period of healing is necessary prior to fabrication and placement of a permanent prosthetic.
 ;;D7296^5^5.22^CORTICOTOMY,1-3^^corticotomy - one to three teeth or tooth spaces, per quadrant^CORTICOTOMY,1-3^
 ;;This procedure involves creating multiple cuts, perforations, or removal of cortical, alveolar or basal bone of the jaw for the purpose of
 ;;facilitating orthodontic repositioning of the dentition.  This procedure includes flap entry and closure.  Graft material and
 ;;membrane, if used, should be reported separately.
 ;;D7297^5^5.30^CORTICOTOMY,4+^^corticotomy - four or more teeth or tooth spaces, per quadrant^CORTICOTOMY,4+^
 ;;This procedure involves creating multiple cuts, perforations, or removal of cortical, alveolar or basal bone of the jaw for the purpose of
 ;;facilitating orthodontic repositioning of the dentition.  This procedure includes flap entry and closure.
 ;;Graft material and membrane, if used, should be reported separately.
 ;;D7979^5^8.27^N-SSIALOLITHOTH^^non-surgical sialolithotomy^N-SSIALOLITHOTH^n
 ;;A sialolith is removed from the gland or ductal portion of the gland without surgical incision into the gland or the duct of the gland;
 ;;for example via manual manipulation, ductal dilation, or any other non-surgical method.
 ;;D8695^4^8.38^RMVORTHOAPPUNKR^^removal of fixed orthodontic appliances for reasons other than completion of treatment^RMVORTHOAPPUNKR^n
 ;;D9222^5^4.00^DEEPSEDFST15MIN^^deep sedation/general anesthesia - first 15 minutes^DEEPSEDFST15MIN^n
 ;;Anesthesia time begins when the doctor administering the anesthetic agent initiates the appropriate anesthesia and non-invasive monitoring protocol
 ;;and remains in continuous attendance of the patient. Anesthesia services are considered completed when the patient may be safely left under the
 ;;observation of trained personnel and the doctor may safely leave the room to attend to other patients or duties.
 ;;The level of anesthesia is determined by the anesthesia providers documentation of the anesthetic effects upon the central nervous system and not
 ;;dependent upon the route of administration.
 ;;D9239^5^3.00^IVSEDFST15MIN^^intravenous moderate  (conscious) sedation/analgesia- first 15 minutes^IVSEDFST15MIN^n
 ;;Anesthesia time begins when the doctor administering the anesthetic agent initiates the appropriate anesthesia and non-invasive monitoring protocol
 ;;and remains in continuous attendance of the patient. Anesthesia services are considered completed when the patient may be safely left under the
 ;;observation of trained personnel and the doctor may safely leave the room to attend to other patients or duties.
 ;;The level of anesthesia is determined by the anesthesia providers documentation of the anesthetic effects upon the central nervous system and not
 ;;dependent upon the route of administration.
 ;;D9995^5^1.77^TELEDENSYNENCTR^^teledentistry - synchronous; real-time encounter^TELEDENSYNENCTR^n
 ;;Reported in addition to other procedures (e.g., diagnostic) delivered to the patient on the date of service.
 ;;D9996^3^2.01^TELEDENASYENCTR^^teledentistry - asynchronous; Information stored and forwarded to dentist for subsequent review^TELEDENASYENCTR^n
 ;;Reported in addition to other procedures (e.g., diagnostic) delivered to the patient on the date of service.
 ;;D0460^1^0.76^PULP TEST^^PULP VITALITY TESTS (PER VISIT)^PTST^n
 ;;D5670^5^16.64^REPLACE TEETH ACRYL (MAX)^^REPLACE ALL TEETH AND ACRYLIC ON CAST METAL FRAMEWORK (MAXILLARY)^^n
 ;;D5671^5^16.64^REPLACE TEETH ACRYL (MAND)^^REPLACE ALL TEETH AND ACRYLIC ON CAST METAL FRAMEWORK (MANDIBULAR)^^n
 ;;D5862^5^9.94^PRE-ATTACH DENT^^PRECISION ATTACHMENT,PARTIAL (BY REPORT)^PRE-ATTACH DENT^
 ;;D5863^5^29.59^ODMAXCOM^^OVERDENTURE - COMPLETE MAXILLARY^ODMAXCOM^n
 ;;D5864^5^30.15^ODMAXPAR^^OVERDENTURE - PARTIAL MAXILLARY^ODMAXPAR^n
 ;;D5865^5^29.59^ODMANDCOM^^OVERDENTURE - COMPLETE MANDIBULAR^ODMANDCOM^n
 ;;D5866^5^30.15^ODMANDPAR^^OVERDENTURE - PARTIAL MANDIBULAR^ODMANDPAR^n
 ;;D6010^5^36.85^PLACE IMPLANT^^SURGICAL PLACEMENT OF IMPLANT BODY: ENDOSTEAL IMPLANT^PLACE IMPLANT^
 ;;D4320^3^7.59^SPLINT^^PROVISIONAL SPLINTING - INTRACORONAL^SPLINT^
 ;;D4321^3^6.70^SPLINT^^PROVISIONAL SPLINTING - EXTRACORONAL^SPLINT^
 ;;***END***
