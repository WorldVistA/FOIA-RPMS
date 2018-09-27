ABMPSPLT ; IHS/SD/SDR - Split claim based on Insurer setup ;     
 ;;2.6;IHS 3P BILLING SYSTEM;**22**;NOV 12, 2009;Build 418
 ;
 ;IHS/SD/SDR 2.6*22 HEAT335246 New routine; uses setup from 3P Insurer file to see if claim should be split so
 ; there is one charge per claim or one page (from the claim editor) per claim.
 ;
 I "^H^I^"[("^"_SERVCAT_"^") Q  ;skip claims that have a service category of H or I
 I $O(^ABMNINS(ABMP("LDFN"),ABMP("INS"),6,"B",""))="" Q  ;there aren't any splits setup for this insurer
 ;build list of pages that should be split with dates and how to split them
 S ABMP("PG")=""
 F  S ABMP("PG")=$O(^ABMNINS(ABMP("LDFN"),ABMP("INS"),6,"B",ABMP("PG"))) Q:$G(ABMP("PG"))=""  D
 .S ABMP("PGIEN")=0
 .F  S ABMP("PGIEN")=$O(^ABMNINS(ABMP("LDFN"),ABMP("INS"),6,"B",ABMP("PG"),ABMP("PGIEN"))) Q:'ABMP("PGIEN")  D
 ..S ABMPREC=$G(^ABMNINS(ABMP("LDFN"),ABMP("INS"),6,ABMP("PGIEN"),0))
 ..I $P(ABMPREC,U,2)'="",$P(ABMPREC,U,3)'="",$P(ABMPREC,U,2)=$P(ABMPREC,U,3) Q  ;there is a start and end date but they are the same; entry is 'deleted'
 ..Q:$P(ABMPREC,U,3)=0  ;don't split
 ..S ABMP("SPGS",ABMP("PG"))=$P(ABMPREC,U,2)_U_$P(ABMPREC,U,4)_U_$P(ABMPREC,U,3)  ;start date ^ end date ^ split how (by charge or by claim-editor-page)
 ;
 ;check that there's actually something in the what-should-split array, and split the claim if there is
 I $O(ABMP("SPGS",""))="" Q  ;nothing to split
 S ABMPGS=""
 F  S ABMPGS=$O(ABMP("SPGS",ABMPGS)) Q:$G(ABMPGS)=""  D
 .S ABMMLT=$S(ABMPGS="8D":23,ABMPGS="8E":37,ABMPGS="8F":35,1:43)
 .I +$O(^ABMDCLM(ABMP("LDFN"),ABMP("CDFN"),ABMMLT,0))=0 Q  ;no entries for multiple
 .I ABMP("VDT")<($P(ABMP("SPGS",ABMPGS),U)) Q  ;visit date is before start date
 .I $P(ABMP("SPGS",ABMPGS),U,2)'=""&(ABMP("VDT")>$P(ABMP("SPGS",ABMPGS),U,2)) Q  ;there is an end date and the visit date is after that
 .I $P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),ABMMLT,0)),U,4)<2 Q  ;must have multiple entries on a split page that need to be split
 .;if it gets here there is data on this page to split
 .S ABMY("SPLITHOW")=$P(ABMP("SPGS",ABMPGS),U,3)
 .S ABMY("INS")=ABMP("INS")
 .S ABMY("PGS")="^"_ABMPGS_"^"
 .S ^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMPGS)=$P($G(^ABMDCLM(ABMP("LDFN"),ABMP("CDFN"),ABMMLT,0)),U,4)
 .S ABMY("SPLIT")="A"  ;this makes it label the split claims as auto-split, not manual
 .I +$G(ABMY("AUTODT"))=0 D
 ..D NOW^%DTC
 ..S ABMY("AUTODT")=%
 .S ABMY("INS",ABMY("INS"))=""
 .S ABMY("DT")="C"
 .D SPLITCLM^ABMRSTI2  ;split claim
 .D INSSTMP^ABMRSTI4
 .K ^TMP("ABM-SPIN",$J)
 Q
