ADE6P332 ;IHS/OIT/GAB - ADE V6.0 PATCH 33 [ 10/12/2018 8:37 AM ]
 ;;6.0;ADE*6.0*33;;March 25, 1999;Build 53
 ;IHS/OIT/GAB 10/2018 Patch 33 ADA-CDT code updates for 2019
 ;Modification of 2019 ADA-CDT Codes - Update the .02 field (Nomenclature) and 1101 (Descriptor/Use)
MODCDT33 ;EP
 D UPDATE^ADEUPD33(9999999.31,".01,,.02",1101,"?+1,","MODADA^ADE6P332","SETX^ADE6P332")
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
 ;;D5211^^maxillary partial denture - resin base (including, retentive/clasping materials, rests, and teeth)
 ;;D5212^^mandibular partial denture - resin base (including, retentive/clasping materials, rests, and teeth)
 ;;D5630^^repair or replace broken retentive clasping materials - per tooth
 ;;D7283^^placement of device to facilitate eruption of impacted tooth
 ;;Placement of an attachment on an unerupted tooth, after its exposure, to aid in its eruption. Report the surgical exposure separately using D7280.
 ;;D9219^^evaluation for moderate sedation, deep sedation or general anesthesia
 ;;D0999^^unspecified diagnostic procedure, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;D1999^^unspecified preventive procedure, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;D2999^^unspecified restorative procedure, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;D3999^^unspecified endodontic procedure, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;D4230^^anatomical crown exposure - four or more contiguous teeth or tooth bounded spaces per quadrant
 ;;This procedure is utilized in an otherwise periodontally healthy area to remove enlarged gingival tissue and supporting bone (ostectomy) to provide
 ;;an anatomically correct gingival relationship.
 ;;D4231^^anatomical crown exposure - one to three teeth or tooth bounded spaces per quadrant
 ;;This procedure is utilized in an otherwise periodontally healthy area to remove enlarged gingival tissue and supporting bone (ostectomy) to provide 
 ;;an anatomically correct gingival relationship.
 ;;D4999^^unspecified periodontal procedure, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;D5899^^unspecified removable prosthodontic procedure, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;D5999^^unspecified maxillofacial prosthesis, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;D6199^^unspecified implant procedure, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;D6999^^unspecified fixed prosthodontic procedure, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;D7999^^unspecified oral surgery procedure, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;D8999^^unspecified orthodontic procedure, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;D9999^^unspecified adjunctive procedure, by report
 ;;Used for a procedure that is not adequately described by a code.  Describe the procedure.
 ;;***END***
