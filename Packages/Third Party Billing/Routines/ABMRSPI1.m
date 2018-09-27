ABMRSPI1 ; IHS/SD/SDR - Claims Identified as Potential Split Billing Report; 
 ;;2.6;IHS 3P BILLING SYSTEM;**22**;NOV 12, 2009;Build 418
 ;IHS/SD/SDR 2.6*22 HEAT335246 - New routine
 ;
 Q
VISIT ;EP
 S ABMSDT=ABMY("DT",1)-.5
 S ABMEDT=ABMY("DT",2)+.999999
 F  S ABMSDT=$O(^ABMDCLM(DUZ(2),"AD",ABMSDT)) Q:'ABMSDT!(ABMSDT>ABMEDT)  D
 .S ABMP("CDFN")=0
 .F  S ABMP("CDFN")=$O(^ABMDCLM(DUZ(2),"AD",ABMSDT,ABMP("CDFN"))) Q:'ABMP("CDFN")  D
 ..D DATA
 Q
APPROVAL ;EP
 S ABMSDT=ABMY("DT",1)-.5
 S ABMEDT=ABMY("DT",2)+.999999
 F  S ABMSDT=$O(^ABMDBILL(DUZ(2),"AP",ABMSDT)) Q:'ABMSDT!(ABMSDT>ABMEDT)  D
 .S ABMP("BDFN")=0
 .F  S ABMP("BDFN")=$O(^ABMDBILL(DUZ(2),"AP",ABMSDT,ABMP("BDFN"))) Q:'ABMP("BDFN")  D
 ..I +$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),0)),U)=0 Q  ;no bill number, bad x-ref entry
 ..S ABMP("CDFN")=+$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),0)),U)
 ..D DATA
 Q
DATA ;EP
 S ABMAINS=$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,8)  ;active insurer
 I ABMAINS="" Q  ;no active insurer
 I '$D(ABMY("INS",ABMAINS)) Q  ;not selected insurer
 I ABMY("DT")="V" S ABMCS=$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,4)  ;claim status
 I ABMY("DT")="A" S ABMCS=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),0)),U,4)  ;bill status
 I ABMY("STA")'[ABMCS Q  ;not selected claim status
 I $G(ABMY("SPLIT"))="A","^S^A^"[("^"_$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,22)_"^") Q  ;if auto is selected we only want the original claims to show up; this is for option STIN
 S ABMVSTCK=0  ;check for H or I service category
 D DATA2
 Q:ABMVSTCK=1  ;H or I service category
 S ABMVFILE=""
 F  S ABMVFILE=$O(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMVFILE)) Q:$G(ABMVFILE)=""  D  Q:ABMVMULT=1
 .I +$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMVFILE))>1 S ABMVMULT=1 Q
 .I +$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMVFILE))=1 S ABMVMULT=ABMVMULT+.5
 I ABMVMULT=1 D  ;multiple entries were found in requested files
 .S ABMP("VLOC")=$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,3)  ;visit loc
 .S ABMP("VTYP")=$P($G(^ABMDVTYP($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,7),0)),U)  ;visit type name
 .I +$G(^TMP("ABM-SPIN-DATA",$J,ABMP("VLOC"),ABMP("VTYP"),ABMP("CDFN")))=1 Q  ;already counted this claim
 .S ^TMP("ABM-SPIN-DATA",$J,ABMP("VLOC"),ABMP("VTYP"),ABMP("CDFN"))=1
 .I $G(ABMY("RTYP"))=2 D  ;statistical
 ..;visit loc short name
 ..S ABMP("VLOC")=$S($P($G(^AUTTLOC($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,3),0)),U,2)'="":$P($G(^AUTTLOC($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,3),0)),U,2),1:$P($G(^DIC(4,$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,3),0)),U))
 ..S ^TMP("ABM-SPIN",$J,ABMP("VLOC"),ABMP("VTYP"))=+$G(^TMP("ABM-SPIN",$J,ABMP("VLOC"),ABMP("VTYP")))+1
 .I $G(ABMY("RTYP"))=1 D  ;brief
 ..;claim status^split status^patient^HRN^active insurer^claim number^visit date^clinic
 ..;claim status
 ..I ABMY("DT")="V" S ABMPREC=$S(ABMCS="F":"FAB",ABMCS="E":"EDT",ABMCS="O":"ROL",ABMCS="C":"COM",ABMCS="P":"PEN",ABMCS="U":"UNB",ABMCS="X":"CLO",1:"")
 ..I ABMY("DT")="A" S ABMPREC=$S(ABMCS="A":"APP",ABMCS="B":"BLD",ABMCS="C":"COM",ABMCS="X":"CAN",1:"")
 ..S ABMSSTAT=$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,22)  ;split status
 ..S ABMPREC=ABMPREC_U_ABMSSTAT
 ..S ABMPREC=ABMPREC_U_$P($G(^DPT($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U),0)),U)  ;patient name
 ..S ABMPREC=ABMPREC_U_$P($G(^AUPNPAT($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U),41,ABMP("VLOC"),0)),U,2)_U_$P($G(^AUTNINS(ABMAINS,0)),U)_U_ABMP("CDFN")_U_ABMSDT  ;HRN, active insurer, claim#, visit date
 ..S ABMPREC=ABMPREC_U_+$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),"8D"))_U_+$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),"8E"))_U_+$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),"8F"))_U_+$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),"8H"))  ;page counts
 ..;visit loc short name
 ..S ABMP("VLOC")=$S($P($G(^AUTTLOC($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,3),0)),U,2)'="":$P($G(^AUTTLOC($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,3),0)),U,2),1:$P($G(^DIC(4,$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,3),0)),U))
 ..S ^TMP("ABM-SPIN",$J,ABMP("VLOC"),ABMP("VTYP"),ABMSDT,ABMP("CDFN"))=ABMPREC
 ..I ABMSSTAT'="S" S ^TMP("ABM-SPIN-CNT",$J)=+$G(^TMP("ABM-SPIN-CNT",$J))+1
 Q
DATA2 ;EP
 ;now loop thru visits on claim and see if there are multiple charges on the selected pages
 S ABMP("VDFN")=0
 S ABMVMULT=0
 F  S ABMP("VDFN")=$O(^ABMDCLM(DUZ(2),ABMP("CDFN"),11,ABMP("VDFN"))) Q:'ABMP("VDFN")  D
 .S ^TMP("ABM-SPIN",$J,"VSTS",ABMP("VDFN"))=$P($G(^AUPNVSIT(ABMP("VDFN"),0)),U,7)  ;list of visits with service category
 .I "^H^I^"[("^"_$P($G(^AUPNVSIT(ABMP("VDFN"),0)),U,7)_"^") S ABMVSTCK=1  ;check if service category is H or I
 .I ((ABMY("PGS")["8D")!(ABMY("PGS")["8Z")) D CHECK("^AUPNVMED","8D")  ;meds - 8D
 .I ((ABMY("PGS")["8E")!(ABMY("PGS")["8Z")) D CHECK("^AUPNVLAB","8E"),CHECK("^AUPNVMIC","8E"),CHECK("^AUPNVPTH","8E"),CHECK("^AUPNVBB","8E"),CHECK("^AUPNVCYT","8E")  ;lab - 8E
 .I ((ABMY("PGS")["8F")!(ABMY("PGS")["8Z")) D CHECK("^AUPNVRAD","8F")  ;rad - 8F
 .D CHECK2  ;checks V CPT entries and if that page was selected by user as one to report on, since V CPT could have anything
 Q
 ;
CHECK(VFILE,ABMVFILE) ;EP - VFILE is the V file global name
 ;This subrtn goes thru the visits in the V file and check for multiple entries in that file
 N L,T,L11,L12,COLDATE,ORDPROV,CPTSTR,CPT,MODIFIER,FILEN
 S L=0
 F  S L=$O(@VFILE@("AD",ABMP("VDFN"),L)) Q:'L  D
 .;T first piece is test, S is site
 .S T=$G(@VFILE@(+L,0)) Q:'T
 .I VFILE["VLAB"&($P($G(^AUPNVLAB(+L,14)),U,2)="") Q  ;skip entries that don't have CPT - BILLABLE ITEM populated
 .S ^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMVFILE)=+$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMVFILE))+1
 .S ABMP("VDETAIL",ABMVFILE,VFILE,+L)=""
 .I VFILE["VLAB"&($L($P($G(^AUPNVLAB(+L,14)),U,2),";")>1) D  ;there is more than 1 CPT on a lab
 ..F S=2:1:$L($P($G(^AUPNVLAB(+L,14)),U,2),";") S ^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMVFILE)=+$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMVFILE))+1,ABMP("VDETAIL",ABMVFILE,VFILE,+L)=""
 Q
CHECK2 ;EP
 S ABMVIEN=0
 F  S ABMVIEN=$O(^AUPNVCPT("AD",ABMP("VDFN"),ABMVIEN)) Q:'ABMVIEN  D
 .S ABMCPT=$P($G(^ICPT($P($G(^AUPNVCPT(ABMVIEN,0)),U),0)),U)  ;CPT
 .S ABMVFILE="8H"  ;default
 .I (((ABMCPT<100)!(ABMCPT?.5N1.6A.5N)!($L(ABMCPT)=6))&((ABMY("PGS")["8H")!(ABMY("PGS")["8Z"))) S ^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),"8H")=+$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),"8H"))+1,ABMVFILE="8H"
 .I (((ABMCPT>79999)&(ABMCPT<90000))&((ABMY("PGS")["8E")!(ABMY("PGS")["8Z"))) S ^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),"8E")=+$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),"8E"))+1,ABMVFILE="8E"
 .I (((ABMCPT>69999)&(ABMCPT<80000))&((ABMY("PGS")["8F")!(ABMY("PGS")["8Z"))) S ^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),"8F")=+$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),"8F"))+1,ABMVFILE="8F"
 .I (ABMCPT>89999) S ABMVFILE="8A"
 .S ABMP("VDETAIL",ABMVFILE,"^AUPNVCPT",ABMVIEN)=""
 Q
