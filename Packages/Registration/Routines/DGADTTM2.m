DGADTTM2 ;ALB/RMM-CREATE NEW-STYLE XREF ;12:21 PM  24 May 2005
 ;;5.3;REGISTRATION;**665,1015**;Aug 13,1993;Build 21
 ;
 ; This routine adds the new style cross-reference ADTTM2 which triggers
 ; an update for the CONFIDENTIAL ADDR CHANGE DT/TM field (#.14112) in
 ; the PATIENT File #2.
 ;
 N DGENXR,DGENRES,DGENOUT
 S DGENXR("FILE")=2
 S DGENXR("NAME")="ADTTM2"
 S DGENXR("TYPE")="MU"
 S DGENXR("USE")="A"
 S DGENXR("EXECUTION")="R"
 S DGENXR("ACTIVITY")=""
 S DGENXR("SHORT DESCR")="CONFIDENTIAL ADDRESS Cross-Reference"
 S DGENXR("DESCR",1)="This cross-reference will update the CONFIDENTIAL ADDR CHANGE DT/TM field"
 S DGENXR("DESCR",2)="when the confidential address data changes for a patient."
 S DGENXR("SET")="D CONF^DGDDDTTM"
 S DGENXR("KILL")="D CONF^DGDDDTTM"
 S DGENXR("VAL",1)=.1411
 S DGENXR("VAL",1,"COLLATION")="F"
 S DGENXR("VAL",2)=.1412
 S DGENXR("VAL",2,"COLLATION")="F"
 S DGENXR("VAL",3)=.1413
 S DGENXR("VAL",3,"COLLATION")="F"
 S DGENXR("VAL",4)=.1414
 S DGENXR("VAL",4,"COLLATION")="F"
 S DGENXR("VAL",5)=.1415
 S DGENXR("VAL",5,"COLLATION")="F"
 S DGENXR("VAL",6)=.1416
 S DGENXR("VAL",6,"COLLATION")="F"
 S DGENXR("VAL",7)=.1417
 S DGENXR("VAL",7,"COLLATION")="F"
 S DGENXR("VAL",8)=.1418
 S DGENXR("VAL",8,"COLLATION")="F"
 S DGENXR("VAL",9)=.14105
 S DGENXR("VAL",9,"COLLATION")="F"
 D CREIXN^DDMOD(.DGENXR,"W",.DGENRES,"DGENOUT")
 Q