AMQQTXC1 ; IHS/CMI/THL - OHPRD/DG/MAINTAIN CODE RANGES IN TABLE ; 17 Mar 2014  2:26 PM
 ;;2.0;IHS PCC SUITE;**11**;MAY 14, 2009;Build 58
 ;-----
 I 'AMQQSUB D ADD I 1
 E  D DEL
 D EOJ
 Q
 ;
ADD ; SECTION FOR ADDING CODES TO TABLE
 I '$D(@AMQQHILO) S @AMQQHILO@(AMQQ("LOW"))=AMQQ("HI")_U_$G(AMQQISYS) G X1
 S AMQQDONE=0
 S AMQQVAL=""
 F  S AMQQVAL=$O(@AMQQHILO@(AMQQVAL)) Q:AMQQVAL=""  I $P(@AMQQHILO@(AMQQVAL),U,2)=$G(AMQQISYS) D GETCASE,ADDPROC Q:AMQQDONE
 D:'AMQQDONE SETRANGE
 K AMQQDONE,AMQQVAL,AMQQCASE
X1 Q
 ;
ADDPROC ; CASE SPECIFIC ADD PROCESSING
 G @("ADD"_AMQQCASE)
ADD2 ;;
ADD3 ;;
ADD4 ;;
 S @AMQQHILO@(AMQQ("LOW"))=@AMQQHILO@(AMQQVAL)
 K @AMQQHILO@(AMQQVAL)
ADD6 ;;
ADD7 ;;
ADD9 ;;
ADD10 ;;
 S AMQQDONE=1
 Q
ADD11 ;;
ADD12 ;;
 S AMQQ("LOW")=AMQQVAL
ADD5 ;;
ADD8 ;;
 K @AMQQHILO@(AMQQVAL)
ADD1 ;;
ADD13 ;;
 ; continue
 Q
 ;
SETRANGE ;
 I '$D(AMQQCASE) S @AMQQHILO@(AMQQ("LOW"))=AMQQ("HI")_U_$G(AMQQISYS) Q
 G @("SET"_AMQQCASE)
SET5 ;;
SET8 ;;
SET11 ;;
SET12 ;;
 S @AMQQHILO@(AMQQ("LOW"))=AMQQ("HI")_U_$G(AMQQISYS)
 Q
 ;
SET1 ;;
 S AMQQVAL=""
 S AMQQNEXT=$O(@AMQQTGBL@("BA",AMQQ("HI")))
 F  S AMQQVAL=$O(@AMQQHILO@(AMQQVAL)) Q:AMQQVAL=""!(AMQQVAL=AMQQNEXT)
 I AMQQVAL="" S @AMQQHILO@(AMQQ("LOW"))=AMQQ("HI")_U_$G(AMQQISYS)
 E  S @AMQQHILO@(AMQQ("LOW"))=@AMQQHILO@(AMQQVAL) K @AMQQHILO@(AMQQVAL)
 Q
 ;
SET13 ;;
 S AMQQVAL=""
 F  S AMQQVAL=$O(@AMQQHILO@(AMQQVAL)) Q:AMQQVAL=""  Q:AMQQ("LOW")=$O(@AMQQTGBL@("BA",$P(@AMQQHILO@(AMQQVAL),U,1)))
 I AMQQVAL="" S @AMQQHILO@(AMQQ("LOW"))=AMQQ("HI")_U_$G(AMQQISYS)
 E  S @AMQQHILO@(AMQQVAL)=AMQQ("HI")_U_$G(AMQQISYS)
 Q
 ;
DEL ; SECTION FOR DELETING CODES FROM TABLE
 I '$D(@AMQQHILO) G X2
 S AMQQDONE=0
 S AMQQVAL=""
 F  S AMQQVAL=$O(@AMQQHILO@(AMQQVAL)) Q:AMQQVAL=""  I $P(@AMQQHILO@(AMQQVAL),U,2)=$G(AMQQISYS) D GETCASE,DELPROC Q:AMQQDONE
X2 Q
 ;
DELPROC ;CASE SPECIFIC DEL PROCESSING
 G @("DEL"_AMQQCASE)
DEL2 ;;
 I AMQQ("HI")=$P(@AMQQHILO@(AMQQVAL),U,1) K @AMQQHILO@(AMQQVAL)
 E  S @AMQQHILO@($O(@AMQQTGBL@("BA",AMQQ("HI"))))=@AMQQHILO@(AMQQVAL) K @AMQQHILO@(AMQQVAL)
 S AMQQDONE=1
 Q
 ;
DEL3 ;;
DEL6 ;;
 S @AMQQHILO@($O(@AMQQTGBL@("BA",AMQQ("HI"))))=@AMQQHILO@(AMQQVAL) K @AMQQHILO@(AMQQVAL)
 S AMQQDONE=1
 Q
 ;
DEL4 ;;
DEL5 ;;
DEL7 ;;
DEL8 ;;
 K @AMQQHILO@(AMQQVAL)
 I AMQQCASE'=8,AMQQCASE'=5 S AMQQDONE=1
 Q
 ;
DEL10 ;;
DEL11 ;;
DEL12 ;;
 D @$S($E(@AMQQHILO@(AMQQVAL))?1N:"NUMBER",1:"LETTER")
 S @AMQQHILO@(AMQQVAL)=AMQQ("NEWHI")_U_$G(AMQQISYS)
 I AMQQCASE=10 S AMQQDONE=1
 Q
 ;
DEL9 ;;
 D @$S($E(@AMQQHILO@(AMQQVAL))?1N:"NUMBER",1:"LETTER")
 S @AMQQHILO@($O(@AMQQTGBL@("BA",AMQQ("HI"))))=$P(@AMQQHILO@(AMQQVAL),U,1)
 S @AMQQHILO@(AMQQVAL)=AMQQ("NEWHI")_U_$G(AMQQISYS)
 S AMQQDONE=1
 Q
 ;
DEL1 ;;
DEL13 ;;
 Q
 ;
GETCASE ; SUBROUTINE TO DETERMINE AMQQCASE # FROM INPUT CODE RANGE
 S AMQQ("TLOW")=AMQQVAL
 S AMQQ("THI")=$P(@AMQQHILO@(AMQQVAL),U,1)
 D CASEA:AMQQ("TLOW")]AMQQ("LOW")
 D CASEB:AMQQ("LOW")=AMQQ("TLOW")
 D CASEC:AMQQ("LOW")]AMQQ("TLOW")
 K AMQQ("TLOW"),AMQQ("THI")
 Q
 ;
CASEA ;
 I AMQQ("HI")]AMQQ("TLOW") S AMQQCASE=$S(AMQQ("THI")]AMQQ("HI"):3,AMQQ("HI")=AMQQ("THI"):4,1:5)
 E  S AMQQCASE=$S(AMQQ("TLOW")]AMQQ("HI"):1,1:2)
 Q
 ;
CASEB ;
 S AMQQCASE=$S(AMQQ("THI")]AMQQ("HI"):6,AMQQ("HI")=AMQQ("THI"):7,1:8)
 Q
 ;
CASEC ;
 I AMQQ("THI")]AMQQ("LOW") S AMQQCASE=$S(AMQQ("THI")]AMQQ("HI"):9,AMQQ("HI")=AMQQ("THI"):10,1:11)
 E  S AMQQCASE=$S(AMQQ("LOW")=AMQQ("THI"):12,1:13)
 Q
 ;
NUMBER ;
 S AMQQ("CODE")=+AMQQ("LOW")-5
 F  Q:AMQQ("LOW")]AMQQ("CODE")  S AMQQ("CODE")=+$O(@AMQQTGBL@("BA",AMQQ("CODE")_" "))
 S AMQQ("CODE")=AMQQ("CODE")_" "
 F  S AMQQ("NEWHI")=AMQQ("CODE"),AMQQ("CODE")=$O(@AMQQTGBL@("BA",AMQQ("CODE"))) Q:AMQQ("CODE")=AMQQ("LOW")
 Q
 ;
LETTER ;
 S AMQQ("LET")=$E(AMQQ("LOW"))_" "
 F  S AMQQ("NEWHI")=AMQQ("LET"),AMQQ("LET")=$O(@AMQQTGBL@("BA",AMQQ("LET"))) Q:AMQQ("LET")=AMQQ("LOW")
 Q
EOJ ;
 K AMQQCASE,AMQQDONE,AMQQNEXT,AMQQONE,AMQQVAL
 Q
 ;
