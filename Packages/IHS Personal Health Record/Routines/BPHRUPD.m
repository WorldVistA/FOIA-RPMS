BPHRUPD ;GDIT/HS/ALA-Update parameters ; 05 Aug 2013  1:57 PM
 ;;2.1;IHS PERSONAL HEALTH RECORD;**1,2**;Apr 01, 2014;Build 4
 Q
 ;
WEB ;EP - Update Web Services
 ; Add a new service and update the associated fields
 ; Edit an existing service's associated fields
 NEW DA,DIC,DIE,DR,Y,DLAYGO,DIR,X,DIRUT,DUOUT
 S DIR(0)="S^1:TEST PHR SERVER;2:PRODUCTION PHR SERVER"
 D ^DIR I Y="^"!(Y="") Q
 S DA=Y
 ;
 S DIC="^BPHR(90670.2,",DIC(0)="AELMNZ",DIE=DIC,DR="[BPHR ADD/EDIT WEB SERVICE]"
 ;S DLAYGO=90670.2 D ^DIC S DA=+Y
 D ^DIE
 Q
 ;
ITR ;EP - Input Transform
 I $L(X)>40!($L(X)<1) K X Q
 I $E(X,1,8)'="https://" K X Q
 Q
 ;
PROV(PROV) ;EP = Provider DIRECT address
 NEW FACAD,MAD,NCOMP,NAME,VALUE,FN,LN
 S ADDR=""
 I $G(PROV)="" Q ADDR
 S FACAD=$P($G(^AUTTLOC(DUZ(2),21)),"^",5)
 I FACAD="" Q ADDR
 I FACAD'="" S MAD=$P(FACAD,"@",2)
 S NCOMP=$P($G(^VA(200,PROV,3.1)),"^",1)
 I NCOMP'="" D
 . S FN=$P($G(^VA(20,NCOMP,1)),"^",2),FN=$$STRIP^XLFSTR(FN," "),FN=$$PUNC(FN)
 . S LN=$P($G(^VA(20,NCOMP,1)),"^",1),LN=$$STRIP^XLFSTR(LN," "),LN=$$PUNC(LN)
 . S VALUE=$$LOW^XLFSTR(FN)_"."_$$LOW^XLFSTR(LN)
 . I $G(VALUE)=""!($G(VALUE)=".") S NCOMP=""
 ;
 I NCOMP="" D
 . S NAME=$P(^VA(200,PROV,0),"^",1)
 . D STDNAME^XLFNAME(.NAME,"FC")
 . S FN=$G(NAME("GIVEN")),FN=$$STRIP^XLFSTR(FN," "),FN=$$PUNC(FN)
 . S LN=$G(NAME("FAMILY")),LN=$$STRIP^XLFSTR(LN," "),LN=$$PUNC(LN)
 . S VALUE=$$LOW^XLFSTR(FN)_"."_$$LOW^XLFSTR(LN)
 ;
 S ADDR=VALUE_"@"_MAD
 Q ADDR
 ;
AGNT(DFN) ;EP = Messaging Agent for Patient
 NEW BDPCAT,BDPIEN,MSA,BPA,AGN,ADR,BPDATA,NBP,OK
 S ADDR=""
 S BDPCAT=$$FIND1^DIC(90360.3,,"X","MESSAGE AGENT")
 I BDPCAT="" Q ADDR
 S BDPIEN=$O(^BDPRECN("AA",DFN,BDPCAT,""))
 I BDPIEN="" Q ADDR
 S BPA=0
 F  S BPA=$O(^BDPRECN(BDPIEN,1,BPA)) Q:'BPA  D
 . S BPDATA=^BDPRECN(BDPIEN,1,BPA,0)
 . S MSA=$P(^BDPRECN(BDPIEN,1,BPA,0),"^",1)
 . S AGN(BPA)=MSA_"^"_$P(BPDATA,"^",3)
 . S AGN(BPA)=MSA_"^"_$P(BPDATA,"^",3),LBP=BPA
 . ; Check the next agent in the history
 . S NBP=$O(^BDPRECN(BDPIEN,1,BPA)) I 'NBP D  Q
 .. S QL=0 D CMA^BPHRCHK
 .. I 'QL S $P(AGN(BPA),"^",3)=DT Q
 .. I QL S $P(AGN(BPA),"^",3)=CDT
 . S $P(AGN(BPA),"^",3)=$P(^BDPRECN(BDPIEN,1,NBP,0),"^",3)
 ;
 I CURR'="",$P(^BDPRECN(BDPIEN,1,LBP,0),"^",1)'=CURR D
 . S AGN(LBP+1)=CURR_"^"_CDT_"^"_DT
 ;
 S MS="" F  S MS=$O(AGN(MS)) Q:MS=""  D
 . S OK=0
 . I EDT<$P(AGN(MS),"^",2)!(BDT>$P(AGN(MS),"^",3)) Q
 . I BDT'<$P(AGN(MS),"^",2),BDT'>$P(AGN(MS),"^",3) S OK=1
 . I EDT'<$P(AGN(MS),"^",2),EDT'>$P(AGN(MS),"^",3) S OK=1
 . ;
 . I BDT'>$P(AGN(MS),"^",2),EDT'<$P(AGN(MS),"^",2) S OK=1
 . I BDT'>$P(AGN(MS),"^",3),EDT'<$P(AGN(MS),"^",3) S OK=1
 . ;
 . I OK D
 .. S MSA=$P(AGN(MS),"^",1)
 .. S ADR=$$LOW^XLFSTR($P($G(^BDPMSGA(MSA,0)),"^",2))
 .. I ADR'["direct" Q
 .. S ADDR=ADDR_ADR_","
 Q ADDR
 ;
PUNC(X) ;EP
 Q $TR(X,"`~!@#$%^&*()-_=+\|[{]};:'"",<.>/?","")
