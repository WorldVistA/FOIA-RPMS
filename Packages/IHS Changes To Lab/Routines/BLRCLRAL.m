BLRCLRAL ;IHS/OIT/MKK - Clear ALL Lab Module Errors in the Error Trap ; 22-Apr-2016 15:09 ; MKK
 ;;5.2;LR;**1024,1039**;NOV 01, 1997;Build 38
 ;
 ;Clear ALL BLR Errors from ERROR LOG, no matter the date
 ;Code cloned from CLRERRS^BLRUTIL.
CLRALLER ; EP
 NEW BLRERLIM,BLRERRS,CURUCI,ERRDT,ERRNUM,HEADER,RTN,TODAY,TONLERRS
 NEW ERRTOTAL      ; IHS/MSC/MKK - LR*5.2*1039
 ;
 S HEADER(1)="CLEAR ALL BLR ERRORS IN ERROR TRAP"
 D HEADERDT^BLRGMENU
 W ?4    ; IHS/MSC/MKK - LR*5.2*1039
 ;
 S STARTDT=$O(^%ZTER(1,0))                     ; Earliest date in Error Trap
 S TODAY=+$H
 S BLRQSITE=$P($G(^AUTTSITE(1,0)),U)           ; Division
 S BLRERLIM=$P($G(^BLRSITE(BLRQSITE,0)),U,11)  ; GET ERROR OVERFLOW LIMIT
 X ^%ZOSF("UCI")
 ; S CURUCI=Y
 S CURUCI=$P(Y,",")     ; IHS/MSC/MKK - LR*5.2*1039
 ;
 S ERRTOTAL=0           ; IHS/MSC/MKK - LR*5.2*1039
 S (BLRERRS,TONLERRS)=0
 ; F ERRDT=STARTDT:1:TODAY  Q:+$G(BLRERRS)>5  D          ; <<<<<<<DEBUG
 F ERRDT=STARTDT:1:TODAY  D       ; IHS/MSC/MKK - LR*5.2*1039 -- Remove DEBUG limit
 . S ERRNUM=0
 . F  S ERRNUM=$O(^%ZTER(1,ERRDT,1,ERRNUM)) Q:ERRNUM=""!(ERRNUM'?.N)  D
 .. ; Q:$P($G(^%ZTER(1,ERRDT,1,ERRNUM,"J")),U,4)'=CURUCI
 .. ;
 .. ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1039
 .. S ERRUCI=$P($G(^%ZTER(1,ERRDT,1,ERRNUM,"J")),U,4)
 .. S ERRUCI=$S(ERRUCI[":":$P(ERRUCI,":"),1:$P(ERRUCI,","))
 .. Q:ERRUCI'=CURUCI
 .. ;
 .. S ERRTOTAL=ERRTOTAL+1
 .. I (ERRTOTAL#100)=0 W "."  W:$X>74 !,?4
 .. ; ----- END IHS/MSC/MKK - LR*5.2*1039
 .. ;
 .. I $G(^%ZTER(1,ERRDT,1,ERRNUM,"ZE"))'[("^BLR") D  Q
 ... S TONLERRS=1+$G(TONLERRS)               ; Count # of Non-BLR errors
 .. ;
 .. S BLRERRS(ERRDT)=1+$G(BLRERRS(ERRDT))
 .. S BLRERRS=1+$G(BLRERRS)
 .. ; K ^%ZTER(1,ERRDT,1,ERRNUM)
 .. ; S $P(^%ZTER(1,ERRDT,0),U,2)=$P($G(^%ZTER(1,ERRDT,0)),U,2)-1
 .. ; ----- BEGIN IHS/MSC/MKK - LR*5.2*1039
 .. D ^XBFMK
 .. S DA=ERRNUM,DA(1)=ERRDT
 .. S DIK="^%ZTER(1,"_DA(1)_",1,"
 .. D ^DIK
 .. ;
 .. ; If deletion successful, have to manually reset the Error Counter
 .. S:$D(^%ZTER(1,ERRDT,1,ERRNUM))<1 $P(^%ZTER(1,ERRDT,0),U,2)=$P($G(^%ZTER(1,ERRDT,0)),U,2)-1
 .. ; ----- END IHS/MSC/MKK - LR*5.2*1039
 ;
 ; W !!
 ; I +$G(TONLERRS)>0 W ?5,"Total Non-Link Errors = ",TONLERRS,!
 W !!,?4,$FN(ERRTOTAL,",")," Errors analyzed.",!     ; IHS/MSC/MKK - LR*5.2*1039
 ;
 I +$G(BLRERRS)<1 D
 . ; W !,?5,"No link errors were found for Date Range: "
 . W !,?9,"No link errors were found for Date Range: "     ; IHS/MSC/MKK - LR*5.2*1039
 . W $$HTE^XLFDT(STARTDT,"2DZ")
 . W " thru "
 . W $$HTE^XLFDT(TODAY,"2DZ")
 . W !
 ;
 I +$G(BLRERRS)>0 D
 . W !
 . ; W +$G(BLRERRS)
 . ; W ?5,"Link Errors were found and cleared from the error log!",!!
 . W ?9,BLRERRS," Link Errors were found and cleared from the error log.",!    ; IHS/MSC/MKK - LR*5.2*1039
 . S ERRDT=0
 . F  S ERRDT=$O(BLRERRS(ERRDT))  Q:ERRDT=""  D
 .. ; W ?10,"Date: "
 .. W ?14,"Date: "      ; IHS/MSC/MKK - LR*5.2*1039
 .. W $$HTE^XLFDT(ERRDT,"2DZ")    ; External Date format
 .. W " had "
 .. W +$G(BLRERRS(ERRDT))         ; # of errors on that date
 .. W " link error"
 .. I +$G(BLRERRS(ERRDT))>1 W "s" ; if > 1 then make plural
 .. W "."
 .. W !
 . S $P(^BLRSITE(BLRQSITE,0),U,9)=0 ; Clear BLR MASTER CONTROL (#9009029) file's STOP PROCESSOR field
 ;
 D BLRGPGR^BLRGMENU(20)           ; Press Return
 ;
 Q
