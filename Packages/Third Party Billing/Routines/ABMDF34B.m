ABMDF34B ; IHS/SD/SDR - ADA 2012 Dental Export -part 3 ;    
 ;;2.6;IHS Third Party Billing;**11**;NOV 12, 2009;Build 133
 ;
INS ;Ins Info
 S ABM("I")=0
 F  S ABM("I")=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),13,"C",ABM("I"))) Q:'ABM("I")  D
 .S ABM=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),13,"C",ABM("I"),0))
 .S ABM=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),13,ABM,0),U)
 .I ABM'=ABMP("INS") D  Q
 ..I $P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),13,ABM,0)),U,3)="U" Q
 ..S ABMITYP=$$GET1^DIQ(9999999.181,$$GET1^DIQ(9999999.18,ABM,".211","I"),1,"I")
 ..I ABMITYP="N"!(ABMITYP="I") Q  ;ben/non-ben don't count
 ..S Y=ABM
 ..S ABMP("GL")="^ABMDBILL(DUZ(2),"_ABMP("BDFN")_","
 ..D SEL^ABMDE2X
 ..Q:$G(ABMP("INS2"))=""
 ..S $P(ABMF(14),U)=$P($P(ABMV("X2"),U),";",2)  ;(5)
 ..S $P(ABMF(16),U)=$P(ABMV("X2"),U,7)  ;(6)
 ..I ABMITYP="P" D
 ...S ABMPIEN=$O(^AUPNPRVT(ABMP("PDFN"),11,"B",ABMP("INS2"),0))
 ...Q:+ABMPIEN=0
 ...S $P(ABMF(14),U)=$P($G(^AUPN3PPH($P($G(^AUPNPRVT(ABMP("PDFN"),11,ABMPIEN,0)),U,8),0)),U)  ;(5)
 ...S $P(ABMF(16),U)=$P($G(^AUPN3PPH($P($G(^AUPNPRVT(ABMP("PDFN"),11,ABMPIEN,0)),U,8),0)),U,19)  ;(6)
 ..I ABMITYP="D" D
 ...S $P(ABMF(14),U)=$P($G(^DPT(ABMP("PDFN"),0)),U)  ;(5)
 ...S $P(ABMF(16),U)=$P($G(^DPT(ABMP("PDFN"),0)),U,3)  ;(6)
 ..I $$GET1^DIQ(9999999.18,ABMP("INS2"),".25","I")="" S $P(ABMF(12),U,2)="X"  ;Other Coverage (Medical) (4)
 ..I $$GET1^DIQ(9999999.18,ABMP("INS2"),".25","I")="O" S $P(ABMF(12),U)="X"  ;Other Coverage (Dental) (4)
 S $P(ABMF(1),U)="X"  ;stmt/actual svcs (1)
 I $P($G(^AUTNINS(ABMP("INS"),2)),"^")="D"&($P($G(^ABMDVTYP(ABMP("VTYP"),0)),U)["EPSDT") S $P(ABMF(2),U)="X"  ;EPSDT/Title 19(1)
BNODES ; Bill nodes
 I $D(^ABMDBILL(DUZ(2),ABMP("BDFN"),0)) D
 .S ABM("B4")=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),4))
 .S ABM("B5")=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),5))
 .S ABM("B7")=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),7))
 .S ABM("B8")=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),8))
 .S ABM("B9")=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),9))
 S $P(ABMF(4),U)=$P(ABM("B5"),U,12)  ;Prior Auth(2)
 I $P(ABM("B9"),U)]"" S $P(ABMF(49),U,3)="X"  ;Occup. illness(45)
ACCD ;Accident?
 I $P(ABM("B8"),U,3)'="" D
 .I "12"[$P(ABM("B8"),U,3) D  Q
 ..S $P(ABMF(49),U,4)="X"  ;auto accident(45)
 ..S $P(ABMF(50),U)=$P(ABM("B8"),U,2)  ;acc. dt(46)
 ..S $P(ABMF(50),U,2)=$P($G(^DIC(5,$P(ABM("B8"),U,16),0)),"^",2)  ;acc. st(47)
 .I "5"[$P(ABM("B8"),U,3) D  Q
 ..S $P(ABMF(49),U,5)="X"  ;other accident(45)
 .S $P(ABMF(50),U)=$P(ABM("B8"),U,2)   ;acc. dt(46)
 .S $P(ABMF(50),U,2)=$P($G(^DIC(5,$P(ABM("B8"),U,16),0)),"^",2)  ;acc. st(47)
FSYM I $P(ABM("B7"),U,4)="Y" D  ;ROI
 .S $P(ABMF(45),U)="SIGNATURE ON FILE"  ;(36)
 .S $P(ABMF(45),U,2)=$P(ABM("B7"),U,11)  ;(36)
 I $P(ABM("B7"),U,5)="Y" D  ;AOB
 .S $P(ABMF(49),U)="SIGNATURE ON FILE"  ;(37)
 .S $P(ABMF(49),U,2)=$S($G(ABMP("PRINTDT"))="O":$P($G(^ABMDTXST(DUZ(2),$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),1),U,7),0)),U),$G(ABMP("PRINTDT"))="A":$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),1)),U,5),1:DT)  ;(37)
 I $P($G(^AUTTLOC(ABMP("LDFN"),0)),U,2)="AIDC" S $P(ABMF(49),U,2)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),7)),U,12)
 S $P(ABMF(42),U)=$$POS^ABMERUTL  ;Place of Treatment (38)
 I (+$P($G(ABM("B4")),U,3)+$P($G(ABM("B9")),U,18)+$P($G(ABM("B9")),U,19))'=0 S $P(ABMF(43),U)="Y"  ;Enclosures (39)
 I (+$P($G(ABM("B4")),U,3)+$P($G(ABM("B9")),U,18)+$P($G(ABM("B9")),U,19))=0 S $P(ABMF(43),U)="N"  ;Enclosures (39)
XRAY ;#/X-rays included
ORTHO ;Ortho. Related?
 S $P(ABMF(45),U,$S($P(ABM("B4"),U,4):4,1:3))="X"  ;(40)
 ; Ortho. Placement Dt
 I $P(ABM("B4"),U,4) S $P(ABMF(45),U,5)=$P(ABM("B4"),U,5)  ;(41)
 I $P(ABM("B4"),U,13) S $P(ABMF(47),U)=$P(ABM("B4"),U,13)  ;(42)
PROTH ;Proth. Included?
 S $P(ABMF(47),U,$S($P(ABM("B4"),U,6):3,1:2))="X"  ;(43)
 ; Prior Placement Dt
 I $P(ABM("B4"),U,6) S $P(ABMF(47),U,4)=$P(ABM("B4"),U,7)  ;(44)
 ;
 S ABMBIL=$P(ABMP("B0"),U)  ;Bill#
 S ABMSFX=$P($G(^ABMDPARM(DUZ(2),1,2)),U,4)  ;Bill# suffix
 S ABMAHRN=$P($G(^ABMDPARM(DUZ(2),1,1,3)),U,3)  ;Append HRN?
 S ABMHRN=$P($G(^AUPNPAT(ABMP("PDFN"),41,ABMP("LDFN"),0)),U,2)  ;HRN
 S $P(ABMF(22),U,5)=ABMBIL_"-"_ABMSFX_" "_ABMHRN  ;Pt ID(23)
 I $D(^ABMDBILL(DUZ(2),ABMP("BDFN"),61,0)) D
 .S ABMIEN=0
 .S ABMLINE=39
 .F  S ABMIEN=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),61,ABMIEN)) Q:+ABMIEN=0!(ABMLINE>41)  D
 ..S ABMF(ABMLINE)=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),61,ABMIEN,0))
 ..S ABMLINE=ABMLINE+1
 Q
PAT ;
 S ABM("P0")=^DPT(ABMP("PDFN"),0)  ;0 node pt file
 S ABMF(17)=$P(ABM("P0"),U)  ;Name(20)
 S ABM("P11")=$G(^DPT(ABMP("PDFN"),.11))
 S $P(ABMF(18),U,6)=$P(ABM("P11"),U)  ;Mailing addr(20)
 S $P(ABMF(19),U)=$P(ABM("P11"),U,4)  ;Mailing-city(20)
 S $P(ABMF(19),U)=$P(ABMF(19),U)_", "_$P(^DIC(5,$P(ABM("P11"),U,5),0),U,2)  ;Mailing-St(20)
 S $P(ABMF(19),U)=$P(ABMF(19),U)_"  "_$P(ABM("P11"),U,6)  ;Mailing-Zip(20)
 S $P(ABMF(22),U,2)=$P(ABM("P0"),U,3)  ;dob(21)
 I $P(ABM("P0"),U,2)="M" S $P(ABMF(22),U,3)="X"  ;sex-male(22)
 E  S $P(ABMF(22),U,4)="X"  ;sex-female(22)
 K ABM("P0"),ABM("P11")
 S (ABMV("X1"),ABMV("X2"),ABMV("X3"))=""
 D PAT^ABMDE1X
 D REMPL^ABMDE1X1
 D LOC^ABMDE1X1
 K ABME
 Q
PRV ;
 S ABM("X")=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),41,"C","A",0))
 I ABM("X") D
 .D SELBILL^ABMDE4X
 .D PAYED^ABMERUTL
 .S $P(ABMF(54),U,2)=$P(ABM("A"),U)  ;(53)
 .I $P($G(^AUTTLOC(ABMP("LDFN"),0)),U,2)="AIDC",($P($G(^AUTNINS(ABMP("INS"),0)),U)["DELTA DENTAL") S $P(ABMF(54),U,2)=""
 .S $P(ABMF(54),U,3)=$S($G(ABMP("PRINTDT"))="O":$P($G(^ABMDTXST(DUZ(2),$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),1)),U,7),0)),U),1:DT)  ;(53)
 .S $P(ABMF(56),U,2)=$S($P($$NPI^XUSNPI("Individual_ID",$P(ABM("A"),U,2)),U)>0:$P($$NPI^XUSNPI("Individual_ID",$P(ABM("A"),U,2)),U),1:"")  ;Dent NPI (54)
 .I $P($G(^AUTTLOC(ABMP("LDFN"),0)),U,2)="AIDC",((ABMP("INS")=1722)!($P($G(^AUTNINS(ABMP("INS"),0)),U)["DELTA DENTAL")) S $P(ABMF(56),U,2)=""
 .I $P($G(^AUTNINS(ABMP("INS"),0)),U)["MEDICAID UTAH" S $P(ABMF(56),U,2)=$S($P($$NPI^XUSNPI("Organization_ID",ABMP("LDFN")),U)>0:$P($$NPI^XUSNPI("Organization_ID",ABMP("LDFN")),U),1:"")  ;Fac NPI for UTAH MEDICAID (54)
 .S $P(ABMF(59),U,2)=$$SLN^ABMEEPRV($P(ABM("A"),U,2))  ;Dent Lic(55)
 .I $P($G(^AUTTLOC(ABMP("LDFN"),0)),U,2)="AIDC" D
 ..I ((ABMP("INS")=1722)!($P($G(^AUTNINS(ABMP("INS"),0)),U)["DELTA DENTAL")) S $P(ABMF(57),U,2)=""
 ..S $P(ABMF(59),U,2)=""
 ..I ABMP("INS")=5 S $P(ABMF(59),U,2)="NM008A76"
 ..I $P($G(^AUTNINS(ABMP("INS"),0)),U)["UNITED CONCORDIA" S $P(ABMF(59),U,2)=601046
 ..I $P($G(^AUTNINS(ABMP("INS"),0)),U)["DELTA DENTAL" S $P(ABMF(59),U,2)=8886
 .S $P(ABMF(56),U,3)=$$SLN^ABMEEPRV($P(ABM("A"),U,2))  ;(55)
 .I $P($G(^AUTTLOC(ABMP("LDFN"),0)),U,2)="AIDC" D
 ..I (ABMP("INS")=1722)!($P($G(^AUTNINS(ABMP("INS"),0)),U)["DELTA DENTAL") S $P(ABMF(56),U,3)=$S(ABMP("INS")=5:"NM008A76",ABMP("INS")["UNITED CONCORDIA":601046,($P($G(^AUTNINS(ABMP("INS"),0)),U)["DELTA DENTAL"):8886,1:"")
 .S $P(ABMF(60),U,4)=ABM("PNUM")  ;Prov#(58)
 .I $P($G(^AUTTLOC(ABMP("LDFN"),0)),U,2)="AIDC" D
 ..S $P(ABMF(60),U,4)=$S(ABMP("INS")=5:"NM008A76",ABMP("INS")["UNITED CONCORDIA":601046,($P($G(^AUTNINS(ABMP("INS"),0)),U)["DELTA DENTAL"):8886,1:"")
 .S $P(ABMF(60),U,2)=ABM("INUM")  ;loc id(52a)
 .I $P($G(^AUTTLOC(ABMP("LDFN"),0)),U,2)="AIDC" D
 ..S $P(ABMF(60),U,2)=$S(ABMP("INS")=5:"NM008A76",ABMP("INS")["UNITED CONCORDIA":601046,($P($G(^AUTNINS(ABMP("INS"),0)),U)["DELTA DENTAL"):8886,1:"")
 .S $P(ABMF(60),U,3)=$P($G(^VA(200,$P(ABM("A"),U,2),.13)),U,2)  ;off. phone(57)
 .I $P(ABMF(60),U,3)="" S $P(ABMF(60),U,3)=$P($G(^AUTTLOC(ABMP("LDFN"),0)),U,11)  ;loc phone(57)
 .S $P(ABMF(57),U)=$$PTAX^ABMEEPRV($P(ABM("A"),U,2))  ;specialty(tax. code)(56a)
 .I $P($G(^AUTTLOC(ABMP("LDFN"),0)),U,2)="AIDC" D
 ..I $P($G(^AUTNINS(ABMP("INS"),0)),U)["DELTA DENTAL" S $P(ABMF(57),U)=""
 Q
POL ;
 N I
 S I=0
 F  S I=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),13,I)) Q:'I  D
 .I $P(^ABMDBILL(DUZ(2),ABMP("BDFN"),13,I,0),U,3)="I" S ABM("XIEN")=I
 S Y=ABMP("INS")
 S ABMP("GL")="^ABMDBILL(DUZ(2),"_ABMP("BDFN")_","
 D SEL^ABMDE2X  ;ABMV("X2")  ;Pol. holder info
 I ABM("ADD")["NON-BEN" D
 .S ABM("ADD")=ABMV("X2")
 S $P(ABMF(5),U)=$P($P(ABMV("X2"),U),";",2)  ;Sub. name(12)
 S $P(ABMF(6),U)=$P(ABMV("X2"),U,3)  ;Addr(12)
 S ABMCSZ=$P(ABMV("X2"),"^",4)
 S $P(ABMF(7),U,2)=$P(ABMCSZ,",",1)  ;City(12)
 S ABMCSZ=$P(ABMCSZ,",",2)
 S $P(ABMF(7),U,2)=$P(ABMF(7),U,2)_", "_$P(ABMCSZ," ",2)  ;St(12)
 S $P(ABMF(7),U,2)=$P(ABMF(7),U,2)_"  "_$P(ABMCSZ," ",4)  ;Zip(12)
 K ABMCSZ
 S $P(ABMF(10),U,$S($P(ABMV("X2"),U,6)="M":2,1:3))="X"  ;Sex(14)
 S $P(ABMF(10),U,4)=$P(ABMV("X1"),U,4)  ;Emp. id(15)
 S $P(ABMF(10),U)=$P(ABMV("X2"),U,7)  ;dob(13)
 S ABMSTAT=$P($P(ABMV("X3"),U,5),";")
 Q