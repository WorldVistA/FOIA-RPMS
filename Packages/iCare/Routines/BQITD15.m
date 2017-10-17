BQITD15 ;GDIT/HS/ALA-CKD Stage 5 ; 27 Jan 2015  3:04 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;
 ;
POP(BQARY,TGLOB) ; EP -- By population
 ;
 ;Description
 ;  Finds all patients who meet the criteria for Chronic Kidney Disease Stage 5
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
 ; If already ESRD, then cannot be at Stage 5
 NEW TDFN,TDXNCN
 S TDFN="",TDXNCN=$$GDXN^BQITUTL("End Stage Renal Disease")
 F  S TDFN=$O(@TGLOB@(TDFN)) Q:'TDFN  D
 . ; If the patient has been tagged as ESRD
 . I $$ATAG^BQITDUTL(TDFN,TDXNCN) K @TGLOB@(TDFN)
 Q
 ;
PAT(DEF,BTGLOB,BDFN) ; EP -- By patient
 NEW DXOK,BQDXN,BQREF
 S DXOK=0
 S BQDXN=$$GDXN^BQITUTL(DEF)
 ;
 S BQREF="BQIRY"
 D GDF^BQITUTL(BQDXN,BQREF)
 S DXOK=$$PAT^BQITDGN(BQREF,BTGLOB,BDFN)
 ; if the person has already been identified as End Stage Renal Disease (ESRD)
 F TDXNCN="End Stage Renal Disease" D
 . I $$ATAG^BQITDUTL(BDFN,TDXNCN) S DXOK=0
 Q DXOK
