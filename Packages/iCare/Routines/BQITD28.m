BQITD28 ;GDHD/HCS/ALA-Glaucoma ; 17 Oct 2016  12:31 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;
 Q
 ;
POP(BQARY,TGLOB) ; EP
 ;
 ;Description
 ;  Finds all patients who meet the criteria for Glaucoma diagnosis'
 ;Input
 ;  BQARY - Array of taxonomies and other information
 ;  TGLOB - Global where data is to be stored
 ;          Structure:
 ;     TGLOB(DFN,"CRITERIA",criteria or taxonomy,visit or problem ien)=date/time
 ;
 I $D(@BQARY) D
 . D POP^BQITDGN(BQARY,TGLOB)
 ;
 ; Finish with all the logic and have a list of patients to file
 Q
 ;
PAT(DEF,BTGLOB,BDFN) ;EP -- Get value for a single patient
 NEW DXOK,BQDXN,BQREF
 S DXOK=0
 S BQDXN=$$GDXN^BQITUTL(DEF)
 ;
 S BQREF="BQIRY"
 D GDF^BQITUTL(BQDXN,BQREF)
 Q $$PAT^BQITDGN(BQREF,BTGLOB,BDFN)
