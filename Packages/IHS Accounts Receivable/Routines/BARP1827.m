BARP1827 ;IHS/OIT/CPC - A/R V1.8 P27 PRE/POST-INSTALL ;10/25/17  14:38
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**27**;OCT 26,2005;Build 12
 ;
 ;POST function fixes missing visit locations in UN-ALLOCATED transactions due to bug
 ;in BARPST7 also fixed in this patch.  
 ;
 ; IHS/DIT/CPC New Medicare Card Initiative HEAT348817 11/3/2017 - BAR*1.8*27
 ;
 Q
PRE ;EP
 Q
POST ;EP
 ;ADD COLLECTION BATCH VISIT LOCATION TO UN-ALLOCATED TRANSACTIONS WHEN MULTIPLE 3P EOB LOCATION PARAMETER SET TO YES
 ;HEAT 348817
 K ^BARTMP($J,"BARP1827","POST")
 S BARLOC=""
 S BARLOC=$O(^AUTTSITE("B",BARLOC)) Q:BARLOC=""  D
 .S ^BARTMP($J,"BARP1827","POST",BARLOC)="CHECKED SITE "_BARLOC_" MULT EOB SET TO "_$P($G(^BAR(90052.06,BARLOC,BARLOC,0)),"^",2)
 .Q:'$P($G(^BAR(90052.06,BARLOC,BARLOC,0)),"^",2)  ;MULT EOB SET TO NO
 .K BARTT,BARCOL,BARITM,BARTX,BARVLOC
 .S BARTT=$O(^BARTBL("B","UN-ALLOCATED",""))  ;FIND UNALLOCATED TRANSACTION TYPE
 .S BARCOL="" F  S BARCOL=$O(^BARTR(BARLOC,"ACB",BARCOL)) Q:BARCOL=""  D  ;FIND COLLECTION BATCH
 ..Q:'$$CKDATE(BARCOL,0,"COLLECTION",BARLOC)
 ..S BARITM="" F  S BARITM=$O(^BARTR(BARLOC,"ACB",BARCOL,BARITM)) Q:BARITM=""  D  ;FIND COLLECTION ITEM
 ...S BARTX="" F  S BARTX=$O(^BARTR(BARLOC,"ACB",BARCOL,BARITM,BARTT,BARTX)) Q:BARTX=""  D  ;FIND UNALLOCATED TRANSACTIONS
 ....I $P($G(^BARTR(BARLOC,BARTX,0)),"^",11)="" D
 .....S BARVLOC=$P($G(^BARCOL(BARLOC,BARCOL,BARITM,1,0)),"^",8)
 .....S $P(^BARTR(BARLOC,BARTX,0),"^",11)=BARVLOC
 .....S ^BARTMP($J,"BARP1827","POST",BARLOC,BARCOL,BARITM,BARTT,BARTX)="NEW VISIT LOCATION="_BARVLOC
 K BARTT,BARCOL,BARITM,BARTX,BARVLOC
 Q
 ;
CKDATE(Z,Q,P,C) ;EP; NEW; CHECK COLLECTION BATCH DATE ;MRS;BAR*1.8*6 DD 4.2.4
 ;ENTERS WITH: Z = COLLECTION BATCH IEN
 ;             Q = 0=SILENT OR 1=VERBOSE
 ;             P = TYPE (ERA or COLLECTION BATCH CHECK) ALSO CALLED BY BAREDP00
 ;			   C = LOCATION
 ;I DUZ=902 Q 1
 N X,Y,BAR
 I '$$IHS^BARUFUT(C) Q 1  ;
 ;;;I '$$IHSERA^BARUFUT(DUZ(2)) Q 1  ;P.OTT
 I Z="",P["COLLECTION" D  Q 0          ;MRS;BAR*1.8*7 IM30386
 .N BARBIL
 .S BARBIL=$$GET1^DIQ(90050.03,BARTX_",",4,"E")
 .W !,"SESSION ID "_UFMSESID_" HAS TRANSACTION "_BARTX
 .W:BARBIL]"" !,"FOR A/R BILL # "_BARBIL
 .W !,"WITH MISSING COLLECTION BATCH, NOTIFY OIT SUPPORT"
 .D EOP^BARUTL(1)
 ;***BEGIN ADD***     ;M3*TMM*12/21/09*ADD
 ;N BARYYY,BARYYY2,BARYYY3,BARMM,BARTMP,BARQTR,BARL1,BARL2,BARL3,BARL4,BARL5,BARL6
 S BARYYY=$E(DT,1,3)
 S BARMM=$E(DT,4,5)
 S BARTMP=+BARMM
 S BARQTR=$P($T(LOCKDOWN+BARTMP),";;",2)     ; quarter dates
 S BARL1=$P(BARQTR,"^",1)                    ;*current month (for current month, use this line of data)
 S BARL2=$P(BARQTR,"^",2)                    ;*last day of month/lock down period
 S BARL3=$P(BARQTR,"^",3)                    ; first day of month after the lock down/cut off date
 S BARL4=$P(BARQTR,"^",4)                    ;*month/quarter lockdown begins (lock down based on quarter, not month)
 S BARL5=$P(BARQTR,"^",5)                    ;*use current(0) or prior year(1)
 S BARL6=$P(BARQTR,"^",6)                    ;*use current(0) or prior year(1)
 S BARYYY2=BARYYY-BARL5
 S BARYYY3=BARYYY-BARL6
 S BARL2=BARYYY2_BARL2                       ;last date of lock down period
 S BARL3=BARYYY3_BARL3                       ;first available date after lock down period
 ;W !,"BARL2=",BARL2
 ;S X=DT>BARL2
 ;W !,"DT>BARL2=",X
 ;W !,"DT=",DT
 ;M4*DEL*TMM*20100714  I DT>BARL2 S BARCDT=BARYYY2_BARL4_"00"
 I DT>BARL2 S BARCDT=$E(BARL3,1,5)_"00"        ;M4*ADD*TMM*20100714
 I DT<BARL3 S BARCDT=3051000                 ;oldest collection date allowed (lockdown date)
 ;W !,"BARCDT=",BARCDT
 S BARL3MM=$E(BARL3,4,5)
 S BARL3DD=$E(BARL3,6,7)
 S BARL3YY=$E(BARL3,1,3)+1700
 S BARL3FMT=BARL3MM_"/"_BARL3DD_"/"_BARL3YY
 ;
 I P["COLLECTION",($P($G(^BARCOL(C,+Z,0)),U,4)>BARCDT) Q 1
 ;-------------------------------------REWRITE P.OTT
 I P["ERA" D  I $G(Y)>BARCDT Q 1
 . S Y=0,BAR=$$GETONE(Z,C) ;W !,"RETURNED BAR=",BAR
 . I 'BAR W !!,"Cannot find filename in A/R EDI IMPORT File" Q
 . S X=$P($P($G(^BAREDI("I",C,BAR,0)),U,2),"@",1)  ;RETURN DATE 
 . S %DT="" D ^%DT ;RETURN Y (DATE)
 . QUIT
 ;--------------------------------------
 I P["ERA" D  I $G(Y)>BARCDT Q 1
 .;some files have 30 characters; some have full name; check for both
 .S BAR=$O(^BAREDI("I",C,"C",Z,""))
 .S:BAR="" BAR=$O(^BAREDI("I",C,"C",$E(Z,1,30),""))
 .I BAR="" W !!,"Cannot find filename in A/R EDI IMPORT File"
 .;end new code HEAT56444
 .Q:BAR=""                                  ;MRS:BAR*1.8*7 IM30386
 .S X=$P($P($G(^BAREDI("I",C,BAR,0)),U,2),"@",1)
 .S %DT=""
 .D ^%DT
 I P["ERA",(BAR="") Q  ;bar*1.8*22 SDR HEAT56444
 I Q D
 .W !!,"CANNOT "_P_" OLDER THAN "_$S(DT>BARL2:BARL3FMT,1:"10/01/2005")  ;M3*TMM*12/21/09*ADD
 .D EOP^BARUTL(1)
 Q 0
 ;
GETONE(BARZNAM,C) ;P.OTT
 NEW BARFN1,BARFN2
 SET BARFN1=BARZNAM,BARFN2=$E(BARZNAM,1,30),CNT=0
 S BAR="" F  S BAR=$O(^BAREDI("I",C,"C",BARFN1,BAR)) Q:BAR=""  I $D(^BAREDI("I",C,BAR,0)) Q
 I BAR Q BAR
 ;some files have 30 characters; some have full name; check for both
 S BAR="" F  S BAR=$O(^BAREDI("I",C,"C",BARFN2,BAR)) Q:BAR=""  I $D(^BAREDI("I",C,BAR,0)) Q
 I BAR Q BAR
 Q 0  ;NO DATA FOUND: RETURN ZERO
