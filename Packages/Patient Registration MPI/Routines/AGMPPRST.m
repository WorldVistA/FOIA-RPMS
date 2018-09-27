AGMPPRST ;GDIT/HS/SWH-Production Status Check; SEP 20, 2017
 ;;7.2;IHS PATIENT REGISTRATION;**6**;SEP 28, 2017 ;Build 23
 Q
 ;
 ;
CHKPRST ;Check the latest status information within the ^AGMPPRST global.
 L +^AGMPPSCH:5 Q:'$T  ;DO NOT START IF ALREADY RUNNING
 I $G(^AGMPPRST("STOP")) Q  ;If the 'STOP' global is populated we'll not send any alerts.
 H 5 ;we hang for 5 seconds to insure the Task running at the same time in the Ensemble MPI namespace has compled.
 I $D(^AGMPPRST("Status")) D  Q  ;If there is a 'Status' entry within the Global continue.
 .I $G(^AGMPPRST("Status"))="Running" D  Q  ;If the 'Status' is set to Running we clear out the saved alert entries.
 ..S ^AGMPPRST("LastAlertType")=""
 ..S ^AGMPPRST("LastAlertDate")=""
 .S TCRNTDT=$P($H,",")
 .I $G(^AGMPPRST("Status"))=$G(^AGMPPRST("LastAlertType")) D  Q  ;If the last alert status is the same as the current alert status.
 ..I TCRNTDT>$G(^AGMPPRST("LastAlertDate")) D SNDN(TCRNTDT) ; If the current date is greater than the last sent date we send another alert.
 .D SNDN(TCRNTDT) ;If we get here the production status isn't running and the last alert type wasn't the current production status
 L -^AGMPPSCH
 Q
 ;
 ;
SNDN(PDATE) ;Send an notification using the NOTIF routine of the AGMPIHLIO file.
 D NOTIF^AGMPIHLO("","The MPI Production status: "_^AGMPPRST("Status")_" : "_PDATE)
 S ^AGMPPRST("LastAlertDate")=PDATE ;Set the alert date to the date sent in.
 S ^AGMPPRST("LastAlertType")=^AGMPPRST("Status") ;Set the alert type to the current status.
 Q
 ;
 ;
