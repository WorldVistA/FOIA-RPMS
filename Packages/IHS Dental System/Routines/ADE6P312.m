ADE6P312 ;IHS/OIT/GAB - ADE6.0 PATCH 31 [ 09/09/16  8:37 AM ]
 ;;6.0;ADE*6.0*31;;March 25, 1999;Build 28
 ;IHS/OIT/GAB 9/2016 Patch 31 ADA-CDT code updates for 2017
 ;Modification of ADA-CDT Codes - 37 code changes
MODCDT5 ;EP
 D UPDATE^ADEUPD31(9999999.31,".01,,.02",1101,"?+1,","MODADA^ADE6P312","SETX^ADE6P312")
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
 ;;D1510^^space maintainer - fixed - unilateral
 ;;Excludes a distal shoe space maintainer.
 ;;D4263^^bone replacement graft - retained natural tooth - first site in quadrant
 ;;This procedure involves the use of grafts to stimulate periodontal regeneration when the disease process
 ;;has led to a deformity of the bone.  This procedure does not include flap entry and closure, wound debridement,
 ;;osseous contouring, or the placement of biologic materials to aid in osseous tissue regeneration or barrier membranes.
 ;;Other separate procedures delivered concurrently are documented with their own codes. Not to be reported for an
 ;;edentulous space or an extraction site.
 ;;D4264^^bone replacement graft - retained natural tooth - each additional site in quadrant
 ;;This procedure involves the use of grafts to stimulate periodontal regeneration when the disease process has led
 ;;to a deformity of the bone.  This procedure does not include flap entry and closure, wound debridement, osseous contouring,
 ;;or the placement of biologic materials to aid in osseous tissue regeneration or barrier membranes.  This procedure is
 ;;performed concurrently with one or more bone replacement grafts to document the number of sites involved. Not to be
 ;;reported for an edentulous space or an extraction site.
 ;;D4274^^mesial/distal wedge procedure, single tooth (when not performed in conjunction with surgical procedures in the same anatomical area)
 ;;This procedure is performed in an edentulous area adjacent to a tooth, allowing removal of a tissue wedge to gain access
 ;;for debridement, permit close flap adaptation, and reduce pocket depths.
 ;;D7140^^extraction, erupted tooth or exposed root (elevation and/or forceps removal)
 ;;Includes removal of tooth structure, minor smoothing of socket bone, and closure, as necessary.
 ;;D7210^^extraction, erupted tooth requiring removal of bone and/or sectioning of tooth, and including elevation of mucoperiosteal flap if indicated
 ;;Includes related cutting of gingiva and bone, removal of tooth structure, minor smoothing of socket bone and closure.
 ;;D7250^^removal of residual tooth roots (cutting procedure)
 ;;Includes cutting of soft tissue and bone, removal of tooth structure, and closure.
 ;;D7280^^exposure of an unerupted tooth
 ;;An incision is made and the tissue is reflected and bone removed as necessary to expose the crown of an impacted tooth not intended to be extracted.
 ;;D7292^^placement of temporary anchorage device [screw retained plate] requiring flap; includes device removal
 ;;D7293^^placement of temporary anchorage device requiring flap; includes device removal
 ;;D7294^^placement of temporary anchorage device without flap; includes device removal
 ;;D7310^^alveoloplasty in conjunction with extractions - four or more teeth or tooth spaces, per quadrant
 ;;The alveoloplasty is distinct (separate procedure) from extractions.  Usually in preparation for a prosthesis
 ;;or other treatments such as radiation therapy and transplant surgery.
 ;;D7311^^alveoloplasty in conjunction with extractions - one to three teeth or tooth spaces, per quadrant
 ;;The alveoloplasty is distinct (separate procedure) from extractions.  Usually in preparation for a prosthesis
 ;;or other treatments such as radiation therapy and transplant surgery.
 ;;D7485^^reduction of osseous tuberosity
 ;;D7610^^maxilla - open reduction (teeth immobilized, if present)
 ;;Teeth may be wired, banded or splinted together to prevent movement.
 ;;Incision required for interosseous fixation.
 ;;D7630^^mandible - open reduction (teeth immobilized, if present)
 ;;Teeth may be wired, banded or splinted together to prevent movement.  Incision required to reduce fracture.
 ;;D7710^^maxilla - open reduction
 ;;Incision required to reduce fracture.
 ;;D7730^^mandible - open reduction
 ;;Incision required to reduce fracture.
 ;;D7750^^malar and/or zygomatic arch - open reduction
 ;;Incision required to reduce fracture.
 ;;D7770^^alveolus - open reduction stabilization of teeth
 ;;Fractured bone(s) are exposed to mouth or outside the face.  Incision required to reduce fracture.
 ;;D7780^^facial bones - complicated reduction with fixation and multiple approaches
 ;;Incision required to reduce fracture.  Facial bones include upper and lower jaw, cheek, and bones around eyes, nose, and ears.
 ;;D7840^^condylectomy
 ;;Removal of all or portion of the mandibular condyle (separate procedure).
 ;;D7873^^arthroscopy: lavage and lysis of adhesions
 ;;Removal of adhesions using the arthroscope and lavage of the joint cavities.
 ;;D7874^^arthroscopy: disc repositioning and stabilization
 ;;Repositioning and stabilization of disc using arthroscopic techniques.
 ;;D7875^^arthroscopy: synovectomy
 ;;Removal of inflamed and hyperplastic synovium (partial/complete) via an arthroscopic technique.
 ;;D7876^^arthroscopy: discectomy
 ;;Removal of disc and remodeled posterior attachment via the arthroscope.
 ;;D7877^^arthroscopy: debridement
 ;;Removal of pathologic hard and/or soft tissue using the arthroscope.
 ;;D7945^^osteotomy - body of mandible
 ;;Sectioning of lower jaw.  This includes exposure, bone cut, fixation, routine wound closure and normal post-operative follow-up care.
 ;;D7946^^LeFort I (maxilla - total)
 ;;Sectioning of the upper jaw.  This includes exposure, bone cuts, downfracture, repositioning, fixation, routine wound closure
 ;;and normal post-operative follow-up care.
 ;;D7948^^LeFort II or LeFort III (osteoplasty of facial bones for midface hypoplasia or retrusion) - without bone graft
 ;;Sectioning of upper jaw.  This includes exposure, bone cuts, downfracture, segmentation of maxilla,
 ;;repositioning, fixation, routine wound closure and normal post-operative follow-up care.
 ;;D7960^^frenulectomy - also known as frenectomy or frenotomy - separate procedure not incidental to another procedure
 ;;Removal or release of mucosal and muscle elements of a buccal, labial or lingual frenum that is
 ;;associated with a pathological condition, or interferes with proper oral development or treatment.
 ;;D7971^^excision of pericoronal gingiva 
 ;;Removal of inflammatory or hypertrophied tissues surrounding partially erupted/impacted teeth.
 ;;D7982^^sialodochoplasty
 ;;Procedure for the repair of a defect and/or restoration of a portion of a salivary gland duct.
 ;;D7983^^closure of salivary fistula
 ;;Closure of an opening between a salivary duct and/or gland and the cutaneous surface, or an opening
 ;;into the oral cavity through other than the normal anatomic pathway.
 ;;D7990^^emergency tracheotomy
 ;;Formation of a tracheal opening usually below the cricoid cartilage to allow for respiratory exchange.
 ;;D7991^^coronoidectomy
 ;;Removal of the coronoid process of the mandible.
 ;;D9630^^drugs or medicaments dispensed in the office for home use
 ;;Includes, but is not limited to oral antibiotics, oral analgesics, and topical fluoride; does not include writing prescriptions.
 ;;***END***
