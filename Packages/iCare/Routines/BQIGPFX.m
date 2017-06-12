BQIGPFX ;GDIT/HS/ALA-Fix IPC CRS Measures ; 24 Oct 2013  8:20 AM
 ;;2.3;ICARE MANAGEMENT SYSTEM;**3,4**;Apr 18, 2012;Build 66
 ;
 ; If somehow the users installed Version 2.3 AFTER they had installed CRS 13.0, their values might
 ; still be 2012
 ;
EN(BQFYR,BQSYR) ;EP
 NEW BQIDA,BQIPC,BQCYR,BQIYR,CODE,BQN,BQIMEAS,BQSN,BQIINDG,BQGDATA0,BQNYR,BQNN
 NEW BQGDATA,ID,PRV,FC,BQPN,PCODE,BQIINDF,BQIMEASF
 S BQIDA=1,BQIPC=2,BQCYR=$P($G(^BQI(90508,BQIDA,"GPRA")),"^",1)
 ; If site has not installed CRS 13.0
 I BQCYR=2012 Q
 K ^XTMP("BQICRSUPD")
 S BQN=0
 F  S BQN=$O(^BQI(90508,BQIDA,22,BQIPC,1,BQN)) Q:'BQN  D
 . S CODE=$P(^BQI(90508,BQIDA,22,BQIPC,1,BQN,0),"^",1)
 . I $E(CODE,1,1)'=2 Q
 . S BQIYR=$P(CODE,"_",1),BQIMEAS=$P(CODE,"_",2)
 . ; if IPC year and CRS year match, quit
 . I BQCYR=BQIYR Q
 . ; if they still have 2012 BQFYR, convert to 2013 BQSYR
 . I BQIYR=BQFYR D
 .. S BQSN=$O(^BQI(90508,BQIDA,20,"B",BQIYR,"")) I BQSN="" Q
 .. D GFN^BQIGPUTL(BQIDA,BQSN)
 .. S BQIINDG=$$ROOT^DILFD(BQIMEASF,"",1)
 .. S BQGDATA0=$G(@BQIINDG@(BQIMEAS,0)),ID=$P(BQGDATA0,"^",4)
 .. S ^XTMP("BQICRSUPD",ID)=CODE_"^"_BQN
 ;
 S BQN=0
 F  S BQN=$O(^BQI(90508,BQIDA,22,BQIPC,1,BQN)) Q:'BQN  D
 . S CODE=$P(^BQI(90508,BQIDA,22,BQIPC,1,BQN,0),"^",1)
 . I $E(CODE,1,1)=2 Q
 . D BUN
 ;
 I '$D(^XTMP("BQICRSUPD")) Q
 ;
 S BQNYR=BQSYR
 S BQSN=$O(^BQI(90508,BQIDA,20,"B",BQNYR,"")) I BQSN="" Q
 D GFN^BQIGPUTL(BQIDA,BQSN)
 S BQIINDG=$$ROOT^DILFD(BQIMEASF,"",1)
 S BQNN=0
 F  S BQNN=$O(@BQIINDG@(BQNN)) Q:'BQNN  D
 . S BQGDATA=$G(@BQIINDG@(BQNN,17)),ID=$P(BQGDATA,"^",8) I ID="" Q
 . I $D(^XTMP("BQICRSUPD",ID)) S $P(^XTMP("BQICRSUPD",ID),"^",3)=BQSYR_"_"_BQNN
 ;
 S ID=""
 F  S ID=$O(^XTMP("BQICRSUPD",ID)) Q:ID=""  D
 . S BQN=$P(^XTMP("BQICRSUPD",ID),"^",2),CODE=$P(^XTMP("BQICRSUPD",ID),"^",3)
 . I CODE="" Q
 . S PCODE=$P(^XTMP("BQICRSUPD",ID),"^",1)
 . I BQN'[":" D
 .. NEW DA,IENS
 .. S DA(2)=BQIDA,DA(1)=BQIPC,DA=BQN,IENS=$$IENS^DILF(.DA)
 .. S BQIUPD(90508.221,IENS,.01)=CODE
 . I BQN[":" D
 .. NEW DA,IENS
 .. S DA(3)=BQIDA,DA(2)=BQIPC,DA(1)=$P(BQN,":",1),DA=$P(BQN,":",2),IENS=$$IENS^DILF(.DA)
 .. S BQIUPD(90508.2212,IENS,.01)=CODE
 . S PRV=0
 . F  S PRV=$O(^BQIPROV(PRV)) Q:'PRV  D
 .. S BQPN=$O(^BQIPROV(PRV,30,"B",PCODE,"")) I BQPN="" Q
 .. NEW DA,IENS
 .. S DA(1)=PRV,DA=BQPN,IENS=$$IENS^DILF(.DA)
 .. S BQIUPD(90505.43,IENS,.01)=CODE
 . S FC=0
 . F  S FC=$O(^BQIFAC(FC)) Q:'FC  D
 .. S BQPN=$O(^BQIFAC(FC,30,"B",PCODE,"")) I BQPN="" Q
 .. NEW DA,IENS
 .. S DA(1)=FC,DA=BQPN,IENS=$$IENS^DILF(.DA)
 .. S BQIUPD(90505.63,IENS,.01)=CODE
 D FILE^DIE("","BQIUPD","ERROR")
 Q
 ;
BUN ;EP Check bundles
 S BQBN=0
 F  S BQBN=$O(^BQI(90508,BQIDA,22,BQIPC,1,BQN,2,BQBN)) Q:'BQBN  D
 . S CODE=$P(^BQI(90508,BQIDA,22,BQIPC,1,BQN,2,BQBN,0),"^",1)
 . I $E(CODE,1,1)'=2 Q
 . S BQIYR=$P(CODE,"_",1),BQIMEAS=$P(CODE,"_",2)
 . I BQCYR=BQIYR Q
 . ; if they still have 2012 BQFYR, convert to 2013 BQSYR
 . I BQIYR=BQFYR D
 .. S BQSN=$O(^BQI(90508,BQIDA,20,"B",BQIYR,"")) I BQSN="" Q
 .. D GFN^BQIGPUTL(BQIDA,BQSN)
 .. S BQIINDG=$$ROOT^DILFD(BQIMEASF,"",1)
 .. S BQGDATA0=$G(@BQIINDG@(BQIMEAS,0)),ID=$P(BQGDATA0,"^",4)
 .. S ^XTMP("BQICRSUPD",ID)=CODE_"^"_BQN_":"_BQBN
 Q