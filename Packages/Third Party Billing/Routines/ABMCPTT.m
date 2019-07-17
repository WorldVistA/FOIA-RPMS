ABMCPTT ;IHS/SD/SDR - New routine created in Serenji at 6/28/2007 8:09:46 AM
 ;;2.6;IHS 3P BILLING SYSTEM;**27**;NOV 12, 2009;Build 486
 ;IHS/SD/SDR 2.6*27 new routine - to identify non-DINUM/dup CPT entries and how many times in the fee table
 ;
 Q
 ;CPT entries that aren't DINUMed
START ;EP
 K ^ABMFTMP("ABM-P27-VAL")  ;make sure this is clear upon first run; otherwise everything seems like a duplicate
 K SDR
 S CPTIEN=0
 F  S CPTIEN=$O(^ICPT(CPTIEN)) Q:'CPTIEN  D
 .S CPT=$P($G(^ICPT(CPTIEN,0)),U)
 .I +CPT=0 Q  ;it's a HCPCS; skip it for now
 .I $L(CPT)'=+$L(+CPT) Q  ;has an alpha at the end; skip for now
 .S SDR(CPT)=+$G(SDR(CPT))+1
 .S SDR("CPT",CPT,$G(SDR(CPT)))=CPTIEN
 .S SDR("CNT",CPT)=+$G(SDR("CNT",CPT))+1
 ;
 S CPT=0
 W !!
 ;how many times CPT is in CPT file and not DINUMed
 W !!,"How many times a CPT is in the CPT file"
 W !,"CPT",?12,"Count",?18,"CPTIEN",?28,"Status",?38,"Status Dt"
 F  S CPT=$O(SDR(CPT)) Q:'CPT  D
 .Q:$G(SDR(CPT))=1
 .W !,CPT,?12,$G(SDR("CNT",CPT))
 .S CPTIEN=0
 .F  S CPTIEN=$O(SDR("CPT",CPT,CPTIEN)) Q:'CPTIEN  D
 ..W !?18,$G(SDR("CPT",CPT,CPTIEN))
 ..W ?28,$S($P($$CPT^ICPTCOD($G(SDR("CPT",CPT,CPTIEN)),DT),U,7)=1:"Active",1:"Inactive")
 ..W ?38,$$SDT^ABMDUTL($P($$CPT^ICPTCOD($G(SDR("CPT",CPT,CPTIEN)),DT),U,6))
 ;
 ;
 K SDR
 S FEETAB=0
 F  S FEETAB=$O(^ABMDFEE(FEETAB)) Q:'FEETAB  D
 .F MULT=11,13,15,17,19,23 D
 ..S CPTIEN=0
 ..F  S CPTIEN=$O(^ABMDFEE(FEETAB,MULT,CPTIEN)) Q:'CPTIEN  D
 ...I +$P($G(^ABMDFEE(FEETAB,MULT,CPTIEN,0)),U)=0 Q	  ;zero or no pointer
 ...I '$D(^ICPT($P($G(^ABMDFEE(FEETAB,MULT,CPTIEN,0)),U))) Q  ;no CPT in CPT file
 ...S CPT=$P(^ICPT($P($G(^ABMDFEE(FEETAB,MULT,CPTIEN,0)),U),0),U)
 ...;S SDR(FEETAB,MULT,CPT)=+$G(SDR(FEETAB,MULT,CPT))+1
 ...;S SDR("CD",FEETAB,MULT,CPT,CPTIEN)=""
 ...S ^ABMFTMP("ABM-P27-VAL",FEETAB,MULT,CPT)=+$G(^ABMFTMP("ABM-P27-VAL",FEETAB,MULT,CPT))+1
 ...S ^ABMFTMP("ABM-P27-VAL","CD",FEETAB,MULT,CPT,CPTIEN)=""
 ;
PRINT ;EP
 K SDR
 S CPTIEN=0
 F  S CPTIEN=$O(^ICPT(CPTIEN)) Q:'CPTIEN  D
 .S CPT=$P($G(^ICPT(CPTIEN,0)),U)
 .I +CPT=0 Q  ;it's a HCPCS; skip it for now
 .I $L(CPT)'=+$L(+CPT) Q  ;has an alpha at the end; skip for now
 .S SDR(CPT)=+$G(SDR(CPT))+1
 .S SDR("CPT",CPT,$G(SDR(CPT)))=CPTIEN
 .S SDR("CNT",CPT)=+$G(SDR("CNT",CPT))+1
 ;
 S CPT=0
 W !!
 ;how many times CPT is in CPT file and not DINUMed
 W !!,"How many times a CPT is in the CPT file"
 W !,"CPT",?12,"Count",?18,"CPTIEN",?28,"Status",?38,"Status Dt"
 F  S CPT=$O(SDR(CPT)) Q:'CPT  D
 .Q:$G(SDR(CPT))=1
 .W !,CPT,?12,$G(SDR("CNT",CPT))
 .S CPTIEN=0
 .F  S CPTIEN=$O(SDR("CPT",CPT,CPTIEN)) Q:'CPTIEN  D
 ..W !?18,$G(SDR("CPT",CPT,CPTIEN))
 ..W ?28,$S($P($$CPT^ICPTCOD($G(SDR("CPT",CPT,CPTIEN)),DT),U,7)=1:"Active",1:"Inactive")
 ..W ?38,$$SDT^ABMDUTL($P($$CPT^ICPTCOD($G(SDR("CPT",CPT,CPTIEN)),DT),U,6))
 ;
 W !!,"How many times CPT in fee table"
 W !,"FT",?4,"MLT",?8,"CPT",?16,"Cnt",?20,"FTCPTIEN",?32,"Status"
 S FEETAB=0
 F  S FEETAB=$O(^ABMFTMP("ABM-P27-VAL",FEETAB)) Q:'FEETAB  D
 .S MULT=0
 .F  S MULT=$O(^ABMFTMP("ABM-P27-VAL",FEETAB,MULT)) Q:'MULT  D
 ..S CPT=0
 ..F  S CPT=$O(^ABMFTMP("ABM-P27-VAL",FEETAB,MULT,CPT)) Q:'CPT  D
 ...I $G(^ABMFTMP("ABM-P27-VAL",FEETAB,MULT,CPT))<2 Q  ;only one entry for CPT
 ...W !,FEETAB,?4,MULT,?8,CPT,?16,$G(^ABMFTMP("ABM-P27-VAL",FEETAB,MULT,CPT))
 ...S CPTIEN=0
 ...F  S CPTIEN=$O(^ABMFTMP("ABM-P27-VAL","CD",FEETAB,MULT,CPT,CPTIEN)) Q:'CPTIEN  D
 ....W !?20,CPTIEN
 ....W ?32,$S($P($$CPT^ICPTCOD(CPTIEN,DT),U,7)=1:"Active",1:"Inactive")
 .K SDR
 Q
 ;
CPTCHK ;
 K SDR
 S FEETAB=0
 F  S FEETAB=$O(^ABMFTMP("ABM-FT",FEETAB)) Q:'FEETAB  D
 .S MULT=0
 .F  S MULT=$O(^ABMFTMP("ABM-FT",FEETAB,MULT)) Q:'MULT  D
 ..S CPTIEN=0
 ..F  S CPTIEN=$O(^ABMFTMP("ABM-FT",FEETAB,MULT,CPTIEN)) Q:'CPTIEN  D
 ...S CPT=$P($G(^ABMFTMP("ABM-FT",FEETAB,MULT,CPTIEN,0)),U)
 ...I $G(^ICPT(CPT,0))="" K ^ABMFTMP("ABM-FT",FEETAB,MULT,CPTIEN)
 Q
