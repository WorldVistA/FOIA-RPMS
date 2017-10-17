BLREXEC4 ;IHS/OIT/MKK - IHS Implementation of the Creatinine Clearance equation ; 11-Apr-2016 14:39 ; MKK
 ;;5.2;IHS LABORATORY;**1039**;NOV 01, 1997;Build 38
 ;
 ;
EEP ; Ersatz EP
 D EEP^BLRGMENU
 Q
 ;
 ;
CREATCLR(CREAT,URINECR,URINEVOL,CREATCLR) ; EP - Standard -- major assumption is 24hr urine
 NEW (CREAT,DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,URINECR,URINEVOL,XPARSYS,XQXFLG)
 ;
 ; Algorithm:  Ucr     TV
 ;             ---  x  ----
 ;             Scr     1440
 ;
 ; where Ucr = Urine Creatinine; Scr = Serum Creatinine; TV = Total Urine Volume; 1440 = 24 hours in minutes
 ;
 ; None of the values can be less than 0.1, otherwise it's deemed an invalid amount.
 Q:+$G(CREAT)<.1 " CREAT N/A"
 Q:+$G(URINECR)<.1 "URINECR N/A"
 Q:+$G(URINEVOL)<.1 "URINEVOL N/A"
 ;
 S TRAILER=""
 ;
 I +$G(CREATCLR) D
 . S F60CCLR=$O(^LAB(60,"C","CH;"_CREATCLR_";1",0))
 . S SITESPEC=$O(^LAB(60,F60CCLR,1,0))
 . S UNITS=$P($G(^LAB(60,F60CCLR,1,SITESPEC,0)),U,7)
 . ;
 . S $P(TRAILER,"!",13)=""
 . S TRAILER="^^"_TRAILER_UNITS_"^^^^"_DUZ(2)
 ;
 Q $FN(((URINECR/CREAT)*(URINEVOL/1440)),"",2)
 ;
 ;
TESTEQUA ; EP - Debug -- Allows user to TEST the equation
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 S (BLRTFLAG,ONGO)="YES"
 S TAB=$J("",5),TAB2=TAB_TAB,TAB3=TAB_TAB_TAB
 S HEADER(1)="IHS LAB"
 S HEADER(2)="Creatinine Clearance"
 S HEADER(3)=$$CJ^XLFSTR("Equation Testing",IOM)
 ;
 F  Q:ONGO'="YES"  D
 . D HEADERDT^BLRGMENU
 . Q:$$GETCREAT(.CREATININE)="Q"
 . Q:$$GETURICR(.URINECR)="Q"
 . Q:$$GETURVOL(.URINEVOL)="Q"
 . ;
 . D HEADERDT^BLRGMENU
 . W TAB,"Serum Creatinine: ",CREATININE_" mg/dL",!
 . W TAB,"Urine Creatinine: ",URINECR_" mg/dL",!
 . W TAB,"    Urine Volume: ",URINEVOL_" mL",!
 . W TAB,"Time Assumed to be 24 Hours.",!
 . W !!,TAB2,"Creatinine Clearance Equation = ",$$CREATCLR(CREATININE,URINECR,URINEVOL),!!
 . ;
 . D ^XBFMK
 . S DIR(0)="YO"
 . S DIR("A")=TAB3_"Again"
 . S DIR("B")="NO"
 . D ^DIR
 . S ONGO=$S(Y=1:"YES",1:"NO")
 ;
 Q
 ;
 ;
NEWDELTA ; EP - Allows users to create new Creatinine Clearance Delta Check
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 D SETBLRVS("NEWDELTA")
 ;
 S CREATSTR="Creatinine Clearance"
 S HEADER(1)="IHS LAB"
 S HEADER(2)=CREATSTR
 S HEADER(3)=$$CJ^XLFSTR("Delta Check Creation",IOM)
 ;
 D HEADERDT^BLRGMENU
 D ^XBFMK
 S DIR(0)="FO"
 S DIR("A")="Name of the "_CREATSTR_" Delta Check"
 D ^DIR
 I +$G(DIRUT) D GQMFDIRR  Q
 ;
 S NAME=$G(X)
 ;
 ; Make sure it's not a duplicate Delta Check Name
 I +$O(^LAB(62.1,"B",NAME,0)) D BADSTUFF(NAME_" is a duplicate Delta Check Name.")  Q
 ;
 Q:$$GF60DATA("Test to hold "_CREATSTR_" Results",.F60CCPTR,.F60CCDSC,.CRECLRDN)="Q"
 ;
 Q:$$GF60DATA("Serum Creatinine Test to use for "_CREATSTR_" calculation",.F60SCRP,.F60SCRD,.SCRDN)="Q"
 ;
 Q:$$GF60DATA("Urine Creatinine Test to use for "_CREATSTR_" calculation",.F60UCRP,.F60UCRD,.UCRDN)="Q"
 ;
 Q:$$GF60DATA("Urine Volume test to use for "_CREATSTR_" calculation",.F60UVPTR,.F60UVDSC,.URVOLDN)="Q"
 ;
 ; Create the delta check
 S XCODE="I LRSB("_SCRDN_"),LRSB("_UCRDN_"),LRDL S LRSB("_CRECLRDN_")=$$CREATCLR^BLREXEC4(LRSB("_SCRDN_"),LRSB("_UCRDN_"),LRDL)"
 ;
 S DESC(1)="This delta check, when added to the test named "
 S DESC(2)="     "_$$LJ^XLFSTR(F60UVDSC,75)
 S DESC(3)="will calculate a Creatinine Clearance."
 S DESC(4)=" "
 S DESC(5)="The Creatinine Clearance calculation will be stuffed into the test called"
 S DESC(6)="     "_$$LJ^XLFSTR(F60CCDSC,75)
 S DESC(7)=" "
 ;
 D HEADERDT^BLRGMENU
 ;
 D DLTADICA(NAME,XCODE,.DESC)
 ;
 D PRESSKEY^BLRGMENU(9)
 Q
 ;
 ;
 ; ============================= UTILITIES =============================
 ;
JUSTNEW ; EP - Generic RPMS EXCLUSIVE NEW
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 Q
 ;
SETBLRVS(TWO) ; EP - Set the BLRVERN variable(s)
 K BLRVERN,BLRVERN2
 ;
 S BLRVERN=$P($P($T(+1),";")," ")
 S:$L($G(TWO)) BLRVERN2=$G(TWO)
 Q
 ;
GQMFDIRR ; Generic "Quit" message for D ^DIR response
 D BADSTUFF("No/Invalid/Quit Entry.")
 Q
 ;
BADSTUFF(MSG,TAB) ; EP - Simple Message
 S:+$G(TAB)<1 TAB=4
 W !!,?TAB,$$TRIM^XLFSTR(MSG,"LR"," "),"  Routine Ends."
 D PRESSKEY^BLRGMENU(TAB+5)
 Q
 ;
GF60DATA(PROMPT,F60PTR,F60DESC,F60DN) ; EP - Get File 60 Data
 W !
 D ^XBFMK
 S DIR(0)="PO^60:EMZ"
 S DIR("A")=PROMPT
 D ^DIR
 I +$G(DIRUT) D GQMFDIRR  Q "Q"
 ;
 S F60DN=$$GET1^DIQ(60,+Y,"DATA NAME","I")
 I $L(F60DN)<1 D BADSTUFF("Test "_$P(Y,U,2)_" has no DataName.")  Q "Q"
 ;
 S F60PTR=+Y,F60DESC=$P(Y,U,2)
 Q "OK"
 ;
GETDNAMT(NAME) ; EP - Get DataName from File 60 Test
 NEW F60IEN
 S F60IEN=+$$FIND1^DIC(60,,,NAME)
 Q:F60IEN<1 "NULL"
 ;
 S DNAME=+$$GET1^DIQ(60,F60IEN_",",400,"I")
 ;
 Q $S(DNAME:DNAME,1:"NULL")
 ;
GETCREAT(CREATININE) ; EP - Serum Creatinine function
 D ^XBFMK
 S DIR(0)="NO^::2"
 S DIR("A")=TAB_"Enter Serum Creatinine Value (mg/dL Units)"
 D ^DIR
 ;
 I X=""!(+$G(DIRUT))!(+$G(Y)<.1) D GQMFDIRR  S ONGO="NO"  Q "Q"
 ;
 W !
 S CREATININE=+Y
 Q "OK"
 ;
 ;
GETURICR(URINECR) ; EP - Urine Creatinine function
 ; D HEADERDT^BLRGMENU
 D ^XBFMK
 S DIR(0)="NO^::2"
 S DIR("A")=TAB_"Enter Urine Creatinine Value (mg/dL Units)"
 D ^DIR
 ;
 I X=""!(+$G(DIRUT))!(+$G(Y)<.1) D GQMFDIRR  S ONGO="NO"  Q "Q"
 ;
 W !
 S URINECR=+Y
 Q "OK"
 ;
 ;
GETURVOL(URINEVOL) ; EP - Urine Volume function
 ; D HEADERDT^BLRGMENU
 D ^XBFMK
 S DIR(0)="NO^::2"
 S DIR("A")=TAB_"Enter 24 Hour Urine Volume (mL Units)"
 D ^DIR
 ;
 I X=""!(+$G(DIRUT))!(+$G(Y)<.1) D GQMFDIRR  S ONGO="NO"  Q "Q"
 ;
 S URINEVOL=+Y
 W !
 Q "OK"
 ;
 ;
DLTADICA(NAME,XCODE,DESC) ; EP
 NEW DICT0,DICT1,FDA,ERRS,PTR
 NEW HEREYAGO
 ;
 W !!,"Adding "_NAME_" to Delta Check Dictionary.",!
 ;
 D ^XBFMK
 K ERRS,FDA,IENS,DIE
 ; 
 S DICT1="62.1"
 S FDA(DICT1,"?+1,",.01)=NAME   ; Find the Name node, or create it.
 S FDA(DICT1,"?+1,",10)=XCODE   ; Execute Code
 D UPDATE^DIE("S","FDA",,"ERRS")
 ;
 I $D(ERRS("DIERR"))>0 D  Q
 . D BADSTUFF("Error in adding "_NAME_" to the Delta Check Dictionary.")
 ;
 W !,?5,NAME_" Delta Check added to Delta Check Dictionary.",!
 ;
 ; Now, add the Description
 K ERRS
 S PTR=$$FIND1^DIC(62.1,,,NAME)
 M WPARRAY("WP")=DESC
 D WP^DIE(62.1,PTR_",",30,"K","WPARRAY(""WP"")","ERRS")
 ;
 I $D(ERRS("DIERR"))>0 D  Q
 . W !!,"Error in adding DESCRIPTION to "_NAME_" Delta Check in the Delta Check Dictionary."
 . D BADSTUFF("")
 ;
 W !,?5,NAME_" Delta Check DESCRIPTION added to Delta Check Dictionary.",!
 ;
 ; Now, add the SITE NOTES DATE
 K ERRS,FDA
 S FDA(62.131,"?+1,"_PTR_",",.01)=$P($$NOW^XLFDT,".",1)
 D UPDATE^DIE("S","FDA",,"ERRS")
 ;
 I $D(ERRS("DIERR"))>0 D  Q
 . W !!,"Error in adding SITES NOTES DATE to "_NAME_" Delta Check in the Delta Check Dictionary."
 . D BADSTUFF("")
 ;
 ; Now, add the TEXT
 K ERRS,WPARRAY
 S WPARRAY("WP",1)="Created by "_$$GET1^DIQ(200,DUZ,"NAME")_"     DUZ:"_DUZ
 D WP^DIE(62.131,"1,"_PTR_",",1,"K","WPARRAY(""WP"")","ERRS")
 ;
 I $D(ERRS("DIERR"))>0 D  Q
 . W !!,"Error in adding TEXT to "_NAME_" Delta Check in the Delta Check Dictionary."
 . D BADSTUFF("")
 ;
 W !,?5,NAME_" Delta Check TEXT added to Delta Check Dictionary."
 Q
