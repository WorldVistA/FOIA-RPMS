AGMPIACK ; IHS/SD/TPF - MPI A28/A08 ACK PROCESSOR ; 12/15/2007
 ;;7.2;IHS PATIENT REGISTRATION;**1,3**;MAY 20, 2010;Build 4
 ;
 Q
 ;
PROC(HLMSGIEN) ;EP -
 ; 06/7/2013 - DMB - TFS8067 - Use unique variables for the HLA and HLB IENs
 N DATA,HLMSTATE,MSGID,MSGSEG,ICNEUID,RETCODE,NEXTSEG,SENDER,HL778IEN,HL777IEN
 D PARSE(.DATA,HLMSGIEN,.HLMSTATE)
 N NXT,ICNEUID,LOCALID,SETICN,SEGIEN,SEGMENT,ACKIEN,SEGTYPE,PICN
 S ACKIEN=HLMSGIEN
 S HL778IEN=$P($G(DATA(1,3,1,1,1))," ",2)  ;MSG ID OF THE MSG THIS ACK IS RESPONDING TO
 I HL778IEN="" D  Q
 .S ERROR="NO ORIGINATING MSG ID FOUND WHERE ACKIEN='"_ACKIEN_"'"
 .D MSGERR("",ACKIEN,ACKIEN,ERROR)
 ; 05/30/2013 - KJH - TFS8073 - Check whether the message we are ACK'ing is an "RPMS-MPI" (since there have been 'overwrite' issues in the past).
 S SENDER=$P($G(^HLB(HL778IEN,1)),HLMSTATE("HDR","FIELD SEPARATOR"),3)
 I SENDER'="RPMS-MPI" D  Q
 .S ERROR="SENDER NOT 'RPMS-MPI'"
 .D MSGERR("",ACKIEN,HL778IEN,ERROR)
 S HL777IEN=$P($G(^HLB(HL778IEN,0)),U,2)   ;GET THE CORRECT ORIGINATING MESSAGE
 I HL777IEN="" D  Q
 .S ERROR="NO ORIGINATING MSG BODY ID FOUND WHERE ACKIEN='"_ACKIEN_"'"
 .D MSGERR("",ACKIEN,HL778IEN,ERROR)
 S MSGSEG=$G(DATA(1,1,1,1,1))
 ; 05/29/2013 - KJH - TFS8073 - Segment 3 must be a PID. Make sure (as far as possible) that we're ACK'ing the right message.
 S SEGTYPE=$E($G(^HLA(HL777IEN,1,3,0)),1,3)
 I SEGTYPE'="PID" D  Q
 .S ERROR="PID SEGMENT NOT FOUND"
 .D MSGERR("",ACKIEN,HL778IEN,ERROR)
 ;05/29/2013 - KJH - TFS8073 - Added $G to line below to correct an UNDEF. Moved NULL check for LOCALID from later in code.
 ;05/30/2013 - KJH - TFS8073 - Also added the FIELD SEPARATOR for consistency.
 S LOCALID=$P($P($P($G(^HLA(HL777IEN,1,3,0)),HLMSTATE("HDR","FIELD SEPARATOR"),4),HLMSTATE("HDR","REPETITION SEPARATOR"),3),HLMSTATE("HDR","COMPONENT SEPARATOR"))
 I LOCALID="" D  Q
 .S ERROR="LOCALID NULL FOR ACK"
 .D MSGERR("",ACKIEN,HL778IEN,ERROR)
 S ACKCODE=$G(DATA(1,2,1,1,1))
 S IFERR=ACKCODE="CE"!(ACKCODE="CR")!(ACKCODE="AE")!(ACKCODE="AR")
 I IFERR D  Q
 .S $P(^HLB(HL778IEN,0),U,20)=""
 .S ERROR=ACKCODE_" "_$G(DATA(2,2,1,4,1))
 .D MSGERR(LOCALID,ACKIEN,HL778IEN,ERROR)
 S ICNEUID=$P($G(DATA(1,7,1,1,1)),"=",2)
 I ICNEUID="" D  Q
 .S ERROR="NO ICNEUID RETURNED"
 .D MSGERR(LOCALID,ACKIEN,HL778IEN,ERROR)
 I '$D(^DPT(LOCALID)) D  Q
 .S ERROR="PATIENT RECORD DOES NOT EXIST"
 .D MSGERR(LOCALID,ACKIEN,HL778IEN,ERROR)
 ;06/07/2013 - DMB - TFS8073 - Update ICN if it has changed
 S PICN=$$GET1^DIQ(2,LOCALID_",",991.01,"E") ;INTEGRATION CONTROL NUMBER
 I ICNEUID]"",ICNEUID'=PICN D ADDICN(ICNEUID,LOCALID) Q
 ;06/07/2013 - DMB - TFS8073 - Call MSGCMPLT if not doing ADDICN (which will do it if there is not an error)
 D MSGCMPLT^AGMPIBGP(ACKIEN)
 D MSGCMPLT^AGMPIBGP(HL778IEN)
 Q
 ;
PARSE(DATA,MIEN,HLMSTATE) ;EP
 N SEG,CNT
 Q:'$$STARTMSG^HLOPRS(.HLMSTATE,MIEN)
 M DATA("HDR")=HLMSTATE("HDR")
 S CNT=0
 F  Q:'$$NEXTSEG^HLOPRS(.HLMSTATE,.SEG)  D
 .S CNT=CNT+1
 .M DATA(CNT)=SEG
 Q
 ;
ADDICN(AGICN,DFN) ;EP - ADD TO 'INTEGRATED CONTROL NUMBER' FIELD
 K DIE,DIC,DA,DR,DIR
 S DIE="^DPT("
 S DA=DFN
 S RGRSICN=1
 S DR="991.01///^S X=AGICN"
 D ^DIE
 I $$GET1^DIQ(2,DFN_",",991.01)="" D  Q
 .S ERROR="FIELD 991.01 DID NOT POPULATE"
 .D MSGERR(DFN,ACKIEN,HL778IEN,ERROR)
 ; 06/07/2013 - DMB - TFS8073 - Remove RESEND variable
 D MSGCMPLT^AGMPIBGP(ACKIEN)
 D MSGCMPLT^AGMPIBGP(HL778IEN)
 Q
 ;
MSGERR(LOCALID,ACKIEN,HL778IEN,ERROR) ;EP - ERROR OCURRED IN A28 ACK
 S AGERROR="MPI ERR ACK IEN "_ACKIEN_" - MSG IEN "_HL778IEN_" :: "_ERROR
 D NOTIF^AGMPIHLO(LOCALID,AGERROR)
 ;06/7/2013 - DMB - TFS8073 - If there is an error, mark it complete so the process can move on to the next ack
 D MSGCMPLT^AGMPIBGP(ACKIEN)
 Q