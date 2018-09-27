BEDDPRT ;GDIT/HS/BEE-BEDD Admit Print Handling Routine ; 08 Nov 2011  12:00 PM
 ;;2.0;BEDD DASHBOARD;**2**;Jun 04, 2014;Build 26
 ;
 Q
 ;
LABEL(DUZ,DFN,DEV,AMERCOPY) ;Print Labels
 ;
 NEW DATA,X,ZTREQ
 ;
 I $G(DEV)="" Q
 I $G(DFN)="" Q
 ;
 ;Check for 0 copies
 I +$G(AMERCOPY)=0 Q
 ;
 ;Make sure initial variables are set
 S X="S:$G(U)="""" U=""^""" X X
 S X="S:$G(DT)="""" DT=$$DT^XLFDT" X X
 ;
 ;Set up DUZ
 D DUZ^XUP(DUZ)
 ;
 S DATA=$$QUEUE^CIAUTSK("PLABEL^BEDDPRT","BEDD: Print Labels",,"DFN^AMERCOPY","`"_+DEV)
 ;
 Q
 ;
PLABEL ;Label Print Entry Point
 ;
 ;Log BUSA entry
 D LOG^BEDDUTIU(DUZ,"P","P","BEDDADM","BEDD: Printed Patient ER Labels",DFN) I 1
 ;
 D START^AMERCLP
 ;
 S IO("C")=""
 D ^%ZISC
 S ZTREQ="@"
 Q
 ;
ROUTE(DUZ,DFN,DEV,AMERCOPY) ;Print Routing Slip
 ;
 NEW DATA,X,ZTREQ,BEDDCOPY
 ;
 I $G(DEV)="" Q
 I $G(DFN)="" Q
 ;
 ;Check for 0 copies
 I +$G(AMERCOPY)=0 Q
 ;
 ;Make sure initial variables are set
 S X="S:$G(U)="""" U=""^""" X X
 S X="S:$G(DT)="""" DT=$$DT^XLFDT" X X
 ;
 ;Set up DUZ
 D DUZ^XUP(DUZ)
 ;
 ;Log BUSA entry
 D LOG^BEDDUTIU(DUZ,"P","P","BEDDADM","BEDD: Printed Patient ER Routing Slip",DFN) I 1
 ;
 ;Task each copy
 F BEDDCOPY=1:1:AMERCOPY D
 . S DATA=$$QUEUE^CIAUTSK("PTROUTE^BEDDPRT","BEDD: Print Routing Slip",,"DFN","`"_+DEV)
 ;
 Q
 ;
PTROUTE ;Routing Slip Print Entry Point
 ;
 NEW BSDMODE,SDATE,SDX,SDSTART,ORDER,SDREP,DIV
 ;
 S SDX="ALL",ORDER="",SDREP=0,SDSTART="",DIV=$$DIV^BSDU
 ;
 I +$G(DFN)=0 Q
 S BSDMODE="WI"
 S SDATE=$$GET1^DIQ(9009081,DFN_",",1,"I")
 ;
 D SINGLE^BSDROUT
 ;
 S IO("C")=""
 D ^%ZISC
 S ZTREQ="@"
 Q
 ;
MREC(DUZ,DFN,DEV,AMERCOPY) ;Print Med Rec Report
 ;
 ;
 NEW DATA,X,ZTREQ,BEDDCOPY
 ;
 I $G(DEV)="" Q
 I $G(DFN)="" Q
 ;
 ;Check for 0 copies
 I +$G(AMERCOPY)=0 Q
 ;
 ;Make sure initial variables are set
 S X="S:$G(U)="""" U=""^""" X X
 S X="S:$G(DT)="""" DT=$$DT^XLFDT" X X
 ;
 ;Set up DUZ
 D DUZ^XUP(DUZ)
 ;
 ;Log BUSA entry
 D LOG^BEDDUTIU(DUZ,"P","P","BEDDADM","BEDD: Printed Patient ER Medication Reconciliation",DFN) I 1
 ;
 ;Task each copy
 F BEDDCOPY=1:1:AMERCOPY D
 . S DATA=$$QUEUE^CIAUTSK("PMREC^BEDDPRT","BEDD: Print Medication Reconciliation",,"DFN","`"_+DEV)
 ;
 Q
 ;
PMREC ;Print Medication Reconciliation
 ;
 NEW VIEN
 ;
 I $G(DFN)="" Q
 ;
 ;Get the visit
 S VIEN=$$GET1^DIQ(9009081,DFN_",",1.1,"I") I VIEN="" Q
 ;
 U IO
 ;
 ;Call the report
 D START^BEDDMREC
 ;
 S IO("C")=""
 D ^%ZISC
 S ZTREQ="@"
 Q
 ;
PROUTE(DUZ,DFN,DEV,AMERCOPY) ;Print Patient Routing Slip
 ;
 NEW DATA,X,ZTREQ,BEDDCOPY
 ;
 I $G(DEV)="" Q
 I $G(DFN)="" Q
 ;
 ;Make sure initial variables are set
 S X="S:$G(U)="""" U=""^""" X X
 S X="S:$G(DT)="""" DT=$$DT^XLFDT" X X
 ;
 ;Check for 0 copies
 I +$G(AMERCOPY)=0 Q
 ;
 ;Set up DUZ
 D DUZ^XUP(DUZ)
 ;
 ;Task each copy
 F BEDDCOPY=1:1:AMERCOPY D
 . S DATA=$$QUEUE^CIAUTSK("PRTSLIP^BEDDPRT","BEDD: Print Patient Routing Slip",,"DFN","`"_+DEV)
 ;
 Q
 ;
PRTSLIP ;Routing Slip Print Entry Point
 ;
 I +$G(DFN)=0 Q
 ;
 U IO
 ;
 ;Log BUSA entry
 D LOG^BEDDUTIU(DUZ,"P","P","BEDDADM","BEDD: Printed Patient ER Routing Slip",DFN) I 1
 ;
 D START^BEDDEHRS
 ;
 S IO("C")=""
 D ^%ZISC
 S ZTREQ="@"
 Q
 ;
EMBCARD(DUZ,DFN,DEV,AGCOPY) ;Print Embossed Cards
 ;
 NEW DATA,X,ZTREQ
 ;
 I $G(DEV)="" Q
 I $G(DFN)="" Q
 ;
 ;Check for 0 copies
 I +$G(AGCOPY)=0 Q
 ;
 ;Make sure initial variables are set
 S X="S:$G(U)="""" U=""^""" X X
 S X="S:$G(DT)="""" DT=$$DT^XLFDT" X X
 ;
 ;Set up DUZ
 D DUZ^XUP(DUZ)
 ;
 ;Log BUSA entry
 D LOG^BEDDUTIU(DUZ,"P","P","BEDDADM","BEDD: Printed ER Embossed Card/Armband",DFN) I 1
 ;
 S DATA=$$QUEUE^CIAUTSK("START^AGCARD","BEDD: Embossed Card for "_$P($G(^DPT(DFN,0)),U)_".",,"DFN^AGCOPY","`"_+DEV)
 ;
 Q
 ;
CUSTOM(DUZ,DFN,NEWVISIT) ;Custom Print Call
 ;
 NEW X,VIEN
 ;
 I $G(DFN)="" Q
 I $G(DUZ)="" Q
 I $G(NEWVISIT)="" Q
 ;
 ;Make sure initial variables are set
 S X="S:$G(U)="""" U=""^""" X X
 S X="S:$G(DT)="""" DT=$$DT^XLFDT" X X
 ;
 ;Set up DUZ
 D DUZ^XUP(DUZ)
 ;
 ;Get the visit
 S VIEN=$$GET1^DIQ(9009081,DFN_",",1.1,"I") I VIEN="" Q
 ;
 ;Make call to custom routine if it exists
 D EN^XBNEW("EN^BEDDCPRT","DFN;VIEN;NEWVISIT")
 ;
 Q
 ;
ERR ;
 D ^%ZTER
 Q
