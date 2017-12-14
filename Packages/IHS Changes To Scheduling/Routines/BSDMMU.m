BSDMMU ;ihs/cmi/maw - BSD SDMM Hook
 ;;5.3;IHS Scheduling;**1014**;Feb 15, 2012
 ;
 ;this routine is called from SDMM1 and SDMA1 to set up the appointment
 ;node via either the UPDATE^DIE or FILE^DIE call instead of a direct set
 Q
 ;
SDM(BSDCOV,BSDYC,BSDFN,BSDX,BSDSC,BSDINP,BSDPTYP,BSD17,BSDXSCAT,BSDRTY,BSDMANA,BSDDATE,BSDRFU,BSDERR) ;-- make the call to UPDATE^DIE to add a new entry
 N FDA,FIENS,FERR,MD
 S FIENS="+2,"_BSDFN_","
 S MD="A"
 I +$G(^DPT(BSDFN,"S",BSDX,0)) D
 . S FIENS=BSDX_","_BSDFN_","
 . S MD="E"
 S FIENS(2)=BSDX
 S FDA(2.98,FIENS,.01)=BSDSC
 S FDA(2.98,FIENS,3)=$$STATUS^SDM1A(BSDSC,BSDINP,BSDX)
 S FDA(2.98,FIENS,9)=BSDCOV
 S FDA(2.98,FIENS,13)=BSDYC
 S FDA(2.98,FIENS,9.5)=BSDPTYP
 S FDA(2.98,FIENS,20)=$$NOW^XLFDT
 S FDA(2.98,FIENS,24)=BSDXSCAT
 S FDA(2.98,FIENS,25)=BSDRTY
 S FDA(2.98,FIENS,26)=BSDMANA
 S FDA(2.98,FIENS,27)=BSDDATE
 S FDA(2.98,FIENS,28)=BSDRFU
 I MD="E" D  Q
 . D FILE^DIE("K","FDA","FERR(1)")
 . I $D(FERR(1)) S BSDERR=FERR(1)
 I MD="A" D  Q
 . D UPDATE^DIE("","FDA","FIENS","FERR(1)")
 . I $D(FERR(1)) S BSDERR=FERR(1)
 Q
 ; 