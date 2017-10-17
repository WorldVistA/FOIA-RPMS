BQITD14 ;GDIT/HS/ALA-ESRD Dx Tag ; 27 Jan 2015  3:00 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;
 ;
POP(BQARY,TGLOB) ; EP -- By population
 ;
 ;Description
 ;  Finds all patients who meet the criteria for End Stage Renal Disease (ESRD)
 ;Input
 ;  BQARY - Array of taxonomies and other information
 ;  TGLOB - Global where data is to be stored and passed back
 ;          to calling routine
 ;          Structure:
 ;          TGLOB(DFN,"CRITERIA",criteria or taxonomy,visit or problem ien)=date/time
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
