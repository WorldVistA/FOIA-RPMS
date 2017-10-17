BQITD19 ;GDIT/HS/ALA-CKD Stage 1 ; 28 Jan 2015  8:42 AM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;
 ;
POP(BQARY,TGLOB) ; EP -- By population
 ;
 ;Description
 ;  Finds all patients who meet the criteria for Chronic Kidney Disease Stage 1
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
 ; If already ESRD or Stage 5 or Stage 4 or Stage 3 or Stage 2 then cannot be at Stage 1
 NEW TDFN,TDXNCN
 S TDFN=""
 F  S TDFN=$O(@TGLOB@(TDFN)) Q:'TDFN  D
 . NEW I,TEXT
 . F I=1:1 S TEXT=$T(TAG+I) Q:TEXT=" Q"  D
 .. S TDXNCN=$P(TEXT,";;",2) D
 ... I $$ATAG^BQITDUTL(TDFN,TDXNCN) K @TGLOB@(TDFN)
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
 ;
 ; if the person has already been identified as ESRD, Stage 5, Stage 4, Stage 3, or Stage 2
 NEW I,TEXT
 F I=1:1 S TEXT=$T(TAG+I) Q:TEXT=" Q"  D
 . S TDXNCN=$P(TEXT,";;",2) D
 .. I $$ATAG^BQITDUTL(BDFN,TDXNCN) S DXOK=0
 Q DXOK
 ;
TAG ;EP
 ;;End Stage Renal Disease
 ;;Chronic Kidney Dis Stg 5
 ;;Chronic Kidney Dis Stg 4
 ;;Chronic Kidney Dis Stg 3
 ;;Chronic Kidney Dis Stg 2
 Q
