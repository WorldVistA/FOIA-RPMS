BEDDUTL2 ;VNGT/HS/BEE-BEDD Utility Routine 2 ; 08 Nov 2011  12:00 PM
 ;;2.0;BEDD DASHBOARD;**3**;Jun 04, 2014;Build 12
 ;
 Q
 ;
CLIN(CLIN) ;EP - Return List of Applicable Clinics
 ;
 ;Input:
 ; None
 ;
 ;Output:
 ; CLIN Array - List of Clinics
 ;
 NEW CIEN,CTIEN,CNT
 K CLIN
 S CTIEN=$O(^AMER(2,"B","CLINIC TYPE","")) Q:CTIEN=""
 S CNT=0,CIEN="" F  S CIEN=$O(^AMER(3,"AC",CTIEN,CIEN)) Q:+CIEN=0  D
 . ;GDIT/HS/BEE 05/10/2018;CR#10213 - BEDD*2.0*3 - Filter out inactive
 . I $$GET1^DIQ(9009083,CIEN_",",.05,"I") Q
 . S CNT=CNT+1
 . ;GDIT/HS/BEE 07/10/2018;CR#10213 - BEDD*2.0*3 - Now use CIEN rather then code
 . ;S CLIN(CNT)=$$GET1^DIQ(9009083,CIEN_",",5,"I")_"^"_$$GET1^DIQ(9009083,CIEN_",",".01","I")
 . S CLIN(CNT)=CIEN_"^"_$$GET1^DIQ(9009083,CIEN_",",".01","I")
 ;
 Q
 ;
VCLIN(VIEN) ;Return the ER Clinic IEN based on the PCC visit
 ;
 I '$G(VIEN) Q ""
 ;
 Q $$GETCLN^AMER2A(VIEN)
 ;
 NEW CLIN,HL
 ;
 S CLIN=""
 ;
 ;First lookup by hospital location
 S HL=$$GET1^DIQ(9000010,VIEN_",",.22,"I")
 I HL]"" D
 . NEW INST,DA,IENS
 . ;
 . ;Get the Hospital Location Pointer to file 4
 . S INST=$$GET1^DIQ(44,HL_",",3,"I") Q:INST=""
 . ;
 . ;Now look in ER PREFERENCES for map to ER OPTION Entry
 . S DA(1)=INST,DA=$O(^AMER(2.5,"C",HL,INST,"")) Q:DA=""
 . S IENS=$$IENS^DILF(.DA)
 . S CLIN=$$GET1^DIQ(9009082.58,IENS,.01,"I")
 ;
 ;If not set - try old method
 I CLIN="" D
 . NEW CL
 . ;
 . ;Get the clinic code from the visit
 . S CL=$$GET1^DIQ(9000010,VIEN_",",.08,"I")
 . I CL]"" S CLIN=$O(^AMER(3,"B",CL,""))
 ;
 Q CLIN
 ;
GCLIN(CLIN) ;Return the clinic code and hospital location for the ER OPTION CIEN
 ;
 I '$G(CLIN) Q ""
 ;
 NEW HLOC,ICPREF
 ;
 S HLOC=""
 ;
 ;Look for associated hospital location
 S ICPREF=$O(^AMER(2.5,DUZ(2),8,"B",CLIN,"")) I ICPREF]"" D
 . NEW DA,IENS
 . S DA(1)=DUZ(2),DA=ICPREF,IENS=$$IENS^DILF(.DA)
 . S HLOC=$$GET1^DIQ(9009082.58,IENS,".02","I")
 ;
 ;If hospital location isn't set, pull from default
 S:HLOC="" HLOC=$G(^AMER(2.5,DUZ(2),"SD"))
 ;
 I HLOC="" D  Q ""
 . W !,"SITE PARAMETERS have not been set up in the ERS PARAMETER option"
 . W !,"No entry for EMERGENCY MEDICINE could be located"
 ;
 ;Get the clinic
 S CLIN=$$GET1^DIQ(44,HLOC_",",8,"I")
 ;
 Q CLIN_U_HLOC
