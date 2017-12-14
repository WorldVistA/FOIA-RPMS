BKMVF3 ;PRXM/HC/JGH - Reminders From Patient Record and Menu Tree (Main) ; 24 May 2005  5:55 PM
 ;;2.2;HIV MANAGEMENT SYSTEM;;Apr 01, 2015;Build 40
 QUIT
 ; KJH - 04/13/2005 - Split into several routines due to size restrictions.
 ;
REMIND(DFN,BDATE,REMLIST) ;Reminders ; PEP
 ; PRX/DLS 3/30/06 Kill REMLIST before proceeding.
 K REMLIST,LIST
 N PNT,BKMRIEN,PTNAME,AGE,SEX,BKMSUP
 S HIVIEN=$$HIVIEN^BKMIXX3()
 I HIVIEN="" Q
 ;
 ; Get Sex and Age for Patient
 S SEX=$E($$GET1^DIQ(9000001,DFN,1101.2,"E"),1),APCHSEX=SEX
 S AGE=$$GET1^DIQ(9000001,DFN,1102.99,"E"),APCHSAGE=AGE
 S APCHSANY=0,BKMSUP=1
 D ED01^BKMRMED(1)
 D ED02^BKMRMED(1)
 D IZ01^BKMRMIM(1)
 D IZ02^BKMRMIM(1)
 D IZ03^BKMRMIM(1)
 D IZ04^BKMRMIM(1)
 D IZ05^BKMRMIM(1)
 D EX01^BKMRMEX(1)
 D EX02^BKMRMEX(1)
 D MAM^BKMRMWH(1)
 D PAP^BKMRMWH(1)
 D CD4^BKMRMLB(1)
 D CHL^BKMRMLB(1)
 D SYPF^BKMRMLB(1)
 D GON^BKMRMLB(1)
 D HEPBR^BKMRMLB(1)
 D HEPB^BKMRMLB(1)
 D HEPCE^BKMRMLB(1)
 D HEPCR^BKMRMLB(1)
 D PPD^BKMRMLB(1)
 D TOX^BKMRMLB1(1)
 D VIR^BKMRMLB1(1)
 D SYPR^BKMRMLB1(1)
 K DUE,HIVIEN,LAST,LAST1,LRESULT,PDATE,CLN,PRV
 Q