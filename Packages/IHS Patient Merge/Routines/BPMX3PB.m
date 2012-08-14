BPMX3PB ;IHS/PHXAO/AEF - REPOINT 3P CLAIM AND BILL PATIENTS
 ;;1.0;IHS PATIENT MERGE;;MAR 01, 2010
 ;IHS/OIT/LJF 10/26/2006 routine originated from Phoenix Area Office
 ;                       changed namespace from BZXM to BPM
 ;;
DESC ;----- ROUTINE DESCRIPTION
 ;;BPMX3PB:
 ;;THIS ROUTINE LOOPS THROUGH EACH ENTRY IN THE 3P CLAIM DATA #9002274.3
 ;;AND REPOINTS THE PATIENT NAME IN FIELD .01.  IT ALSO LOOPS THROUGH
 ;;THE 3P BILL #9002274.4 FILE AND REPOINTS THE PATIENT NAME IN FIELD
 ;;.05. THESE NAME FIELDS ARE REPOINTED TO THE SPECIFIED VA/IHS PATIENT
 ;;FILE ENTRY.
 ;;
 ;;THIS ROUTINE IS CALLED BY THE SPECIAL MERGE ROUTINE DRIVER - ^BPMXDRV
 ;;
 ;;THE IHS PATIENT MERGE SOFTWARE ENTERS AT EN LINE LABEL.  IT IS EXPECTED
 ;;THAT THE FOLLOWING GLOBAL WOULD HAVE BEEN SET UP BY THE PATIENT MERGE
 ;;SOFTWARE:
 ;;^TMP("XDRFROM",$J,FROMIEN,TOIEN,FROMIEN_GLOBROOT,TOIEN_GLOBROOT)=FILE
 ;;EXAMPLE:
 ;;^TMP("XDRFROM",2804,6364,1991,"6364;DPT(","1991;DPT(")=2
 ;;WHERE =2 IS THE PARENT FILE (VA PATIENT FILE).
 ;;
 ;;$$END
 ;
 N I,X F I=1:1 S X=$P($T(DESC+I),";;",2) Q:X["$$END"  W !,X
 Q
 ;
EN(BPMRY) ;EP
 ;----- MAIN ENTRY POINT FROM DUPLICATE PATIENT MERGE SOFTWARE
 ;
 ;      BPMRY  =  TEMP GLOBAL SET UP BY THE PATIENT MERGE SOFTWARE,
 ;                 I.E., "^TMP(""XDFROM"",$J)"
 ;
 N BPM41,BPMFR,BPMTO
 ;
 S BPMFR=$O(@BPMRY@(0))
 Q:'BPMFR
 S BPMTO=$O(@BPMRY@(BPMFR,0))
 Q:'BPMTO
 ;
 D ACT1(BPMTO,.BPM41)
 D CLAIM(BPMFR,BPMTO)
 D BILL(BPMFR,BPMTO)
 D ACT2(BPMTO,.BPM41)
 ;
 Q
CLAIM(BPMFR,BPMTO) ;
 ;----- REPOINT 3P CLAIM DATA PATIENTS
 ;
 N BPMD0,BPMDUZ2
 ;
 S BPMDUZ2=0
 F  S BPMDUZ2=$O(^ABMDCLM(BPMDUZ2)) Q:'BPMDUZ2  D
 . S BPMD0=0
 . F  S BPMD0=$O(^ABMDCLM(BPMDUZ2,"B",BPMFR,BPMD0)) Q:'BPMD0  D
 . . Q:$P($G(^ABMDCLM(BPMDUZ2,BPMD0,0)),U)'=BPMFR
 . . D ONECLAIM(BPMDUZ2,BPMD0,BPMTO)
 Q
ONECLAIM(BPMDUZ2,BPMD0,BPMTO) ;
 ;----- REPOINT ONE CLAIM
 ;
 N BPMDUZ,DA,DIE,DR,X,XDRMRG,Y
 ;
 S BPMDUZ(2)=DUZ(2)
 S DUZ(2)=BPMDUZ2   ;sets DUZ(2) because xref on .01 field requires it
 I '$D(AUPNPAT(BPMTO,41,DUZ(2))) D
 . S ^AUPNPAT(BPMTO,41,DUZ(2),0)=DUZ(2)
 S DIC(0)=$G(DIC(0))_"I"
 ;
 S XDRMRG=1
 S DIE="^ABMDCLM("_DUZ(2)_","
 S DA=BPMD0
 S DR=".01///^S X=BPMTO"
 D ^DIE
 ;
 S DUZ(2)=BPMDUZ(2)  ;resetting DUZ(2) back to original value
 ;
 Q
BILL(BPMFR,BPMTO) ;
 ;----- REPOINT 3P BILL PATIENTS
 ;
 N BPMD0,BPMDUZ2
 ;
 S BPMDUZ2=0
 F  S BPMDUZ2=$O(^ABMDBILL(BPMDUZ2)) Q:'BPMDUZ2  D
 . S BPMD0=0
 . F  S BPMD0=$O(^ABMDBILL(BPMDUZ2,"D",BPMFR,BPMD0)) Q:'BPMD0  D
 . . Q:$P($G(^ABMDBILL(BPMDUZ2,BPMD0,0)),U,5)'=BPMFR
 . . D ONEBILL(BPMDUZ2,BPMD0,BPMTO)
 Q
ONEBILL(BPMDUZ2,BPMD0,BPMTO) ;
 ;----- REPOINT ONE CLAIM
 ;
 N BPMDUZ,DA,DIE,DR,X,Y
 ;
 S BPMDUZ(2)=DUZ(2)
 S DUZ(2)=BPMDUZ2   ;sets DUZ(2) because xref on .05 field requires it
 S DIE="^ABMDBILL("_DUZ(2)_","
 S DA=BPMD0
 S DR=".05////"_BPMTO
 D ^DIE
 S DUZ(2)=BPMDUZ(2)  ;resetting DUZ(2) back to original value
 Q
ACT1(D0,BPM41) ;
 ;----- MAKE SURE ALL HRNS IN IHS PATIENT FILE ARE ACTIVE FOR MERGE TO
 ;      OCCUR
 ;
 N D1,X
 ;
 S D1=0
 F  S D1=$O(^AUPNPAT(D0,41,D1)) Q:'D1  D
 . S X=$G(^AUPNPAT(D0,41,D1,0))
 . S BPM41(D0,41,D1,0)=X
 . S ^AUPNPAT(D0,41,D1,0)=$P(X,U,1,2)
 Q
ACT2(D0,BPM41) ;
 ;----- PUT ALL HRNS BACK THE WAY THEY WERE BEFORE THE MERGE
 ;
 N D1
 ;
 Q:'$D(BPM41(D0))
 S D1=0
 F  S D1=$O(BPM41(D0,41,D1)) Q:'D1  D
 . S ^AUPNPAT(D0,41,D1,0)=BPM41(D0,41,D1,0)
 Q