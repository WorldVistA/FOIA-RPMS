BARDYSV6 ; IHS/SD/SDR - DAYS TO COLLECTION detail print ; 02/09/2009
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26,2005;Build 92
 ;IHS/SD/SDR - 1.8*28 - HEAT224215 - New routine to print comma-delimited detail report
 ;
 Q
 ;
PRNTDET ;EP
 S ESC=0
 S $P(EQUALS,"=",181)=""
 D VISHDR
 ;THESE ARE PAGE SUBTOTALS
 S (COLVISIT,COLWITBL,COLNUMBL,COLBILAM,COLCHKIN,COLCREDY,COLREVDY)=0
 S (COLTPBA,COLTPBX,COLTOPY,COLEARPY,COLLSTPY,COLTOTPS,PGCNT)=0
 S COLTOTPY=0  ;TOT PAY MADE
 S VISITIEN=0
 F  S VISITIEN=$O(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET",VISITIEN)) Q:'VISITIEN  D
 .S BARREC=$G(^XTMP("BARDYSVS",$J,"DAYS TO COL VISIT","DET",VISITIEN))
 .S:$D(BARY("CSV")) $P(BARREC,U,2)=$$MONTH^BARDYSPR(+$P($P(BARREC,U,2)," ",2))_" "_$P($P(BARREC,U,2)," ")  ;format to print MMM CCYY
 .S:$D(BARY("XML")) $P(BARREC,U,2)=+$P($P(BARREC,U,2)," ",1)_"-"_$P($P(BARREC,U,2)," ",2)_"-"_"01T00:00:00.000"  ;format to print MMM CCYY
 .S $P(BARREC,U,3)=$P($G(^AUTTLOC($P(BARREC,U,3),0)),U,2)  ;Location short name
 .I $D(BARY("CSV")) F I=4,5,7 S $P(BARREC,U,I)=$$CDT^BARDUTL($P(BARREC,U,I))  ;format dates
 .I $D(BARY("XML")) F I=4,5,7 S $P(BARREC,U,I)=$$XDT^BARDUTL($P(BARREC,U,I))  ;format dates
 .S BARBILLS=$P($G(BARREC),U,9)
 .I $TR(BARBILLS,";")'="" D
 ..F I=1:1:$L(BARBILLS,"~") D  ;pull out bills one at a time using second delimiter (~)
 ...S BARBILL=$P(BARBILLS,"~",I)
 ...I $D(BARY("CSV")) F J=2:2:10 S $P(BARBILL,";",J)=$P($$CDT^BARDUTL(+$P(BARBILL,";",J)),"@")  ;format bill dates
 ...I $D(BARY("XML")) F J=2:2:10 S $P(BARBILL,";",J)=$P($$XDT^BARDUTL(+$P(BARBILL,";",J)),"@")  ;format bill dates
 ...S:+$P(BARBILL,";",12) $P(BARBILL,";",12)=$P($G(^VA(200,$P(BARBILL,";",12),0)),U)  ;provider name
 ...S $P(BARBILLS,"~",I)=BARBILL
 .S $P(BARREC,U,9)=BARBILLS
 .;W !,BARREC
 .D ROWTOCOL^BARDYSV9(VISITIEN,BARREC)  ;IHS/DIT/CPC - 20180424 CR8345 HEAT224215
 D:$D(BARY("XML")) PRTXML^BARDYSV9
 D:$D(BARY("CSV")) PRTCSV^BARDYSVA
 Q
VISHDR ;EP -
 S BAR("PG")=BAR("PG")+1
 S BAR("HD",0)=""
 S BAR("LOC")=""
 S BAR("OPT")="BAR RPT DAYS IN AR"
 D HD^BARRHD
 D:$G(BARY("SUMORDET"))="S" WHD^BARRHD
 ;W !,"VisitIEN^MonthYear^VisitLocation^VisitAdmitDate^DateCreatedPCC^NumDays^DateReviewed^NumDays^Bills(Bill#;ApprovalDate;NumDays;ExportDate;NumDays;FinalizedBatchDate;NumDays;FirstTransDate;NumDays;LastTransDate;NumDays;Provider;BilledAmount)"
 Q
 ;EOR - IHS/DIT/CPC 1.8*28
