AGMPCHK ;GDIT/HS/SWH-Site ID Check; NOV 11, 2016
 ;;7.2;IHS PATIENT REGISTRATION;**5**;NOV 30, 2016 ;Build 20
 Q
 ;
 ; 
BUILD ;Create the Institution - Site Information globals entries
 N INST,SID
 I $G(^AGMPCHK(0))'="" W !,"The Build process for the AGMPCHK global is already completed, please use the Update option!" Q  ;The CHK global entries have already been created, run the Update routine if you need to change their values
 S ^AGMPCHK(0)=0 ;Set the initial count to zero
 S INST=0 ;Set the Institution to zero
 F  S INST=$O(^AGFAC(INST)) Q:INST=""  D  ;Loop through the Institution numbers from the AGFAC global
 .I $P($G(^AGFAC(INST,0)),U,21)'="Y" Q  ;If the the Institution isn't an Ordering Facility don't process
 .S SID=$P($G(^DIC(4,INST,99)),U,1) ;Pull the SiteID from the Institution file
 .D CENTRY(SID,INST,"VALID")
 Q
 ;
 ;
UENTRY(INST,VAL,ID1) ;Update an entry within the ^AGMPCHK global
 S ^AGMPCHK(INST,1)=VAL
 S ^AGMPCHK(INST)=ID1
 I (VAL="INVALID") D  Q
 .S ^AGMPCHK(INST,"NT")=$H
 .D NOTIF^AGMPIHLO("","The "_INST_" / "_ID1_" site is now disabled.")
 S ^AGMPCHK(INST,0)=ID1
 Q
 ;
 ;
CENTRY(ID1,INST,VAL) ;Create an entry within the ^AGMPCHK global
 S ^AGMPCHK(INST)=ID1
 S ^AGMPCHK(INST,0)=ID1
 S ^AGMPCHK(INST,1)=VAL
 S ^AGMPCHK(0)=$G(^AGMPCHK(0))+1 ;Add one to to total number of entries
 Q
 ;
 ;
RENTRY(INST) ;Remove an entry within the ^AGMPCHK global
 K ^AGMPCHK(INST)
 S ^AGMPCHK(0)=$G(^AGMPCHK(0))-1 ; Subtract one from the total number of entries
 Q
 ;
 ;
GETINST(ID1,INST) ;Retrieve the institution associated with the Site from the ^AGMPCHK global
 N TINST
 S TINST=0
 S INST=""
 F  S TINST=$O(^AGMPCHK(TINST)) Q:TINST=""  D
 .I $G(^AGMPCHK(TINST))=ID1 S INST=TINST
 Q
 ;
 ;
SITELST ;Print out the current site information within the ^AGMPCHK global
 N INTS,TB
 I '($G(^AGMPCHK(0))) W !,"There is no site information to display"  Q
 S INST=0
 S TB="     "
 W !,"Inst",TB,"Site ID",TB,"OLD Site ID",TB,"Status"
 F  S INST=$O(^AGMPCHK(INST)) Q:INST=""  D
 .W !,INST
 .W $J(^AGMPCHK(INST),11)
 .W $J(^AGMPCHK(INST,0),14)
 .W $J(^AGMPCHK(INST,1),14)
 Q
 ;
 ;
ISITERST ;Interactive Reset, user option
 L +^AGMPCHK:3
 I '$T D  Q
 .W !,"Please run the Site Reset option again, currently there is a lock on the ^AGMPCHK global.  If this notification continues please contact the OIT HelpDesk."
 L -^AGMPCHK
 N INST,TC,DIR,TID,X,Y,DTOUT,DUOUT,DIRUT,DIROUT
 S INST=0
 S TC=1
 S DIR(0)=""
 S DIR("A")="Site"
 S DIR(0)="SO^1:ALL"
 F  S INST=$O(^AGMPCHK(INST)) Q:INST=""  D
 .S TC=TC+1
 .S TID=$G(^AGMPCHK(INST))
 .S DIR(0)=DIR(0)_";"_TC_":"_TID_" - "_$G(^AGMPCHK(INST,1))
 D ^DIR
 I Y D SITERST(Y(0))
 Q
 ;
 ;
SITERST(RSID) ;Site Reset, mark Valid the SiteID that is sent in, 'ALL' is sent in then we loop through the AGMPCHK global marking all Valid
 L +^AGMPCHK:5 ;Attempt to lock the AGMPCHK global.
 I '$T D  Q  ;if no lock quit the update process.
 .W !,"Please run the Site Reset option again, currently there is a lock on the ^AGMPCHK global.  If this notification continues please contact the OIT HelpDesk."
 N INST,RESULT
 S RSID=$p(RSID," ",1)
 I RSID="ALL" D  L -^AGMPCHK Q  ;If we're to update all entries within the AGMPCHK global
 .S INST=0 ;The Institution variable we use to loop through the sites within the global
 .S RESULT="ALL Sites are marked valid"
 .F  S INST=$O(^AGMPCHK(INST)) Q:INST=""  D  ;Loop while there's an Institution
 ..I '(^AGMPCHK(INST,1)="VALID")  D
 ...D SNDMSGQ(INST)
 ...D UENTRY(INST,"VALID",$P($G(^DIC(4,INST,99)),U,1))
 .W !,RESULT
 D GETINST(RSID,.INST)
 I (INST="") D  L -^AGMPCHK Q
 .S RESULT="The "_RSID_" wasn't found in the SiteId List"
 .W !,RESULT
 I ^AGMPCHK(INST,1)="VALID" D  L -^AGMPCHK Q
 .S RESULT="The "_RSID_" site is already marked valid"
 .W !,RESULT
 D SNDMSGQ(INST)
 D UENTRY(INST,"VALID",RSID)
 S RESULT="Site "_RSID_" was marked valid."
 W !,RESULT
 L -^AGMPCHK ;Unlock the AGMPCHK global
 Q
 ;
 ;
UPDATE ;Check to see if the information stored is the same as the information in the AGFAC and Institution Globals
 N INST,USID,$ESTACK,$ETRAP
 S $ETRAP="D UNWIND^%ZTER"
 I '($G(^AGMPCHK(0))) Q  ;The CHK global isn't built we need to create it before the Check routine is ran
 L +^AGMPCHK:5 I '$T Q  ;Attempt to lock the AGMPCHK global, if no lock quit the update process.
 S INST=0 ;Set the Institution to zero
 F  S INST=$O(^AGFAC(INST)) Q:INST=""  D  ;Loop through the Institution numbers from the AGFAC global
 .I '($P($G(^AGFAC(INST,0)),U,21)="Y") D  Q  ;If the the Institution isn't an Ordering Facility we do not check or store this information
 ..I '($G(^AGMPCHK(INST))="") D RENTRY(INST)  Q
 .S USID=$P($G(^DIC(4,INST,99)),U,1) ;Pull the SiteID from the Institution file
 .I ($G(^AGMPCHK(INST))="") D CENTRY(USID,INST,"INVALID")  Q
 .I '($G(^AGMPCHK(INST,0))=USID) D  Q
 ..I ($G(^AGMPCHK(INST,1))="VALID") D UENTRY(INST,"INVALID",USID)  Q
 L -^AGMPCHK ;Unlock the AGMPCHK global
 Q
 ;
 ;
UPDMSGQ(PDFN,PDFN2,PMSGTYPE,PSITE) ;Add the needed entries to the AGMPCHKQ global
 L +^AGMPCHKQ(PSITE,PDFN):5 I '$T Q  ;Attempt to lock the AGMPCHKQ(SITE,Patient) global node, if no lock quit the update process.
 I ($G(PMSGTYPE)="A40") D  L -^AGMPCHKQ(PSITE,PDFN) Q  ;if this is a merge message do some checks and then set the Queue entry as needed.
 .I '($G(PDFN2)) D NOTIF^AGMPIHLO(PDFN,"Unable to ADD merge entry to the AGMPCHKQ.  No DFN2")  Q
 .I '($G(PDFN)) D NOTIF^AGMPIHLO(PDFN,"Unable to ADD merge entry to the AGMPCHKQ. No DFN")  Q
 .I ($D(^DPT(PDFN,0))),'($D(^DPT(PDFN2,0))),'($D(^AGMPCHKQ(PSITE,PDFN2,0))="1") D NOTIF^AGMPIHLO(PDFN,"Missing DFN2 information not ADDing the merge entry to the AGMPCHKQ.")  Q
 .I ($D(^DPT(PDFN2,0))),'($D(^DPT(PDFN,0))),'($D(^AGMPCHKQ(PSITE,PDFN,0))="1") D NOTIF^AGMPIHLO(PDFN,"Missing DFN information not ADDing the merge entry to the AGMPCHKQ.")  Q
 .I '($D(^AGMPCHKQ(PSITE,PDFN,1))) D  Q
 ..I '($D(^AGMPCHKQ(PSITE,PDFN))) S ^AGMPCHKQ(PSITE,0)=$G(^AGMPCHKQ(PSITE,0))+1
 ..S ^AGMPCHKQ(PSITE,PDFN,1)=PDFN2
 I '($D(^AGMPCHKQ(PSITE,PDFN,0))) D  L -^AGMPCHKQ(PSITE,PDFN) Q
 .I '($D(^AGMPCHKQ(PSITE,PDFN))) S ^AGMPCHKQ(PSITE,0)=$G(^AGMPCHKQ(PSITE,0))+1
 .S ^AGMPCHKQ(PSITE,PDFN,0)=""
 L -^AGMPCHKQ(PSITE,PDFN)
 Q
 ;
 ;
SNDMSGQ(PSITE) ;Send the messages for the instituiton/site ID that is now VALID
 N AGMPCHKFLG,SUCCESS,SDUZ2,SNDC,DEXEC,TDFN,TDFN2
 I $D(^AGMPCHKQ(PSITE)) D  Q
 .S AGMPCHKFLG=1
 .S SUCCESS=1
 .S SDUZ2=DUZ(2)
 .S DUZ(2)=PSITE ; SAC 2009 2.2.3.3
 .S SNDC=1
 .S TDFN=""
 .F  S TDFN=$O(^AGMPCHKQ(PSITE,TDFN),-1) Q:'TDFN  D
 ..L +^AGMPCHKQ(PSITE,TDFN):5 I '$T S SNDC=0 Q  ;Attempt to lock the AGMPCHKQ(SITE,Patient) global node, if we can't lock go to the next patient.
 ..I $D(^AGMPCHKQ(PSITE,TDFN,0)) D
 ...D CREATMSG^AGMPIHLO(TDFN,"A08",,.SUCCESS)
 ..I SUCCESS,$G(^AGMPCHKQ(PSITE,TDFN,1)) D
 ...S TDFN2=$G(^AGMPCHKQ(PSITE,TDFN,1))
 ...I $D(^AGMPCHKQ(PSITE,TDFN2,0)) D
 ....D CREATMSG^AGMPIHLO(TDFN2,"A08",,.SUCCESS)
 ....I SUCCESS K ^AGMPCHKQ(PSITE,TDFN2)
 ...I SUCCESS D CREATMSG^AGMPIHLO(TDFN,"A40",TDFN2,.SUCCESS)
 ..I SNDC S SNDC=SUCCESS
 ..L -^AGMPCHKQ(PSITE,TDFN)
 ..Q:'SUCCESS
 ..K ^AGMPCHKQ(PSITE,TDFN)
 .I SNDC  D
 ..K ^AGMPCHKQ(PSITE)
 ..W !,"Messages sent for Site "_PSITE
 .I 'SNDC  W !,"There was an Error in processing the messages for Site "_PSITE
 .K AGMPCHKFLG
 .S DUZ(2)=SDUZ2 ; SAC 2009 2.2.3.3
 Q
