ARLIS6 ; ; 04 May 2015  9:21 AM
GLO R !,"Search Value: ",VALUE I VALUE="" Q
 ;D ^%GSET
 D ^%SYS.GSET
 S GBL=""
GBC S GBL=$O(^CacheTempJ($J,GBL)) Q:GBL=""
 S SRC="^"_GBL
 F  S SRC=$Q(@SRC) Q:SRC=""  I @SRC[VALUE W !,SRC,"  ",@SRC
 G GBC
 ;
RT ; Routines
 D ^%RSET
 S RTN=0
 F  S RTN=$O(^UTILITY(%JO,RTN)) Q:RTN=""  D
 . W !,RTN
 . S DTLEDT=$$DATE^%R(RTN_".INT",0)
 . W "|",$$HTFM^XLFDT(DTLEDT)
 Q
 ;
MNU ;Search menus
 R !,"Search Value: ",VALUE I VALUE="" Q
 S X="^DIC(19)"
 F  S X=$Q(@X) Q:X'["DIC(19,"  D
 . I $$UP^XLFSTR(@X)[$$UP^XLFSTR(VALUE) W !,X,"  ",@X
 Q
 ;
MEN ;Menu
 R !,"Option: ",OPT I OPT="" Q
 I OPT'?.N S OPT=$O(^DIC(19,"B",OPT,"")) I OPT="" Q
 S MN=""
 F  S MN=$O(^DIC(19,"AD",OPT,MN)) Q:MN=""  W !,MN,"|",^DIC(19,MN,0)
 Q
CMT ; Check KIDS build
 ; Routines
 W !,"ROUTINES: "
 D ^%RSET
 S RTN=0
 F  S RTN=$O(^UTILITY(%JO,RTN)) Q:RTN=""  D
 . I $O(^XPD(9.6,3077,"KRN",9.8,"NM","B",RTN,""))'="" Q
 . W !,RTN
 ;
 ; RPC Calls
 W !,"RPC CALLS: "
 S RPC="BTPW"
 F  S RPC=$O(^XWB(8994,"B",RPC)) Q:RPC=""!($E(RPC,1,4)'="BTPW")  D
 . I $O(^XPD(9.6,3077,"KRN",8994,"NM","B",RPC,""))'="" Q
 . W !,RPC
 ;
 W !,"CMET Files: "
 S FIL=90619.99
 F  S FIL=$O(^DIC(FIL)) Q:FIL>90629.99  D
 . I '$D(^XPD(9.6,3077,4,"B",FIL)) W !,"Missing File # "_FIL_" "_$P(^DIC(FIL,0),"^",1)
 Q
 ;
ICARE ;
 ;
 ; Routines
 W !?10,"ROUTINES: "
 D ^%RSET
 S RTN=0
 F  S RTN=$O(^UTILITY(%JO,RTN)) Q:RTN=""  D
 . I $O(^XPD(9.6,3269,"KRN",9.8,"NM","B",RTN,""))'="" W !,RTN_"  In KIDS" Q
 . W !,RTN
 ;
 ; RPC Calls
 W !?10,"RPC CALLS: "
 S OPT=$O(^DIC(19,"B","BQIRPC",""))
 S RPC="BQI"
 F  S RPC=$O(^XWB(8994,"B",RPC)) Q:RPC=""!($E(RPC,1,3)'="BQI")  D
 . S IEN=$O(^XWB(8994,"B",RPC,""))
 . I '$D(^DIC(19,OPT,"RPC","B",IEN)) W !,RPC_"   Not in BQIRPC"
 . I $O(^XPD(9.6,3269,"KRN",8994,"NM","B",RPC,""))'="" Q
 . W !,RPC_"   Not in KIDS"
 ;
 W !?10,"ICARE Files: "
 S FIL=90504.99
 F  S FIL=$O(^DIC(FIL)) Q:FIL>90509.99  D
 . I '$D(^XPD(9.6,3269,4,"B",FIL)) W !,"Missing File # "_FIL_" "_$P(^DIC(FIL,0),"^",1)
 Q
 ;
HIV ;
 ; Routines
 W !,"ROUTINES: "
 D ^%RSET
 S RTN=0
 F  S RTN=$O(^UTILITY(%JO,RTN)) Q:RTN=""  D
 . I $O(^XPD(9.6,3078,"KRN",9.8,"NM","B",RTN,""))'="" Q
 . W !,RTN
 Q
 ;
FVIS ;Find V records for a visit
 R !,"VISIT #: ",VISIT I VISIT="" Q
 F BI=1:1 S VFILE=$P($T(GL+BI),";;",2) Q:VFILE=""  D
 . S VGBL="^"_VFILE_"(""AD"""_")"
 . I $D(@VGBL@(VISIT)) D
 .. W !,VFILE
 .. S IEN="" F  S IEN=$O(@VGBL@(VISIT,IEN)) Q:IEN=""  W !,?5,IEN
 Q
 ;
GL ;
 ;;AUPNVACG
 ;;AUPNVAMB
 ;;AUPNVAMI
 ;;AUPNVAST
 ;;AUPNVBB
 ;;AUPNVCA
 ;;AUPNVCHS
 ;;AUPNVCPT
 ;;AUPNVDEN
 ;;AUPNVDXP
 ;;AUPNVELD
 ;;AUPNVER
 ;;AUPNVEYE
 ;;AUPNVFMP
 ;;AUPNVHF
 ;;AUPNVIF
 ;;AUPNVIMM
 ;;AUPNVINP
 ;;AUPNVLAB
 ;;AUPNVLI
 ;;AUPNVMED
 ;;AUPNVMEO
 ;;AUPNVMIC
 ;;AUPNVMPA
 ;;AUPNVMRO
 ;;AUPNVMSP
 ;;AUPNVMSR
 ;;AUPNVMVR
 ;;AUPNVMVT
 ;;AUPNVNOT
 ;;AUPNVNT
 ;;AUPNVNTS
 ;;AUPNVOB
 ;;AUPNVPED
 ;;AUPNVPHN
 ;;AUPNVPOD
 ;;AUPNVPOV
 ;;AUPNVPRC
 ;;AUPNVPRV
 ;;AUPNVPT
 ;;AUPNVPTH
 ;;AUPNVRAD
 ;;AUPNVREF
 ;;AUPNVRUP
 ;;AUPNVSK
 ;;AUPNVSTR
 ;;AUPNVTC
 ;;AUPNVTH
 ;;AUPNVTM
 ;;AUPNVTRC
 ;;AUPNVTRT
 ;;AUPNVTXC
 ;;AUPNVTXR
 ;;AUPNVUNH
 ;;AUPNVVI
 ;;AUPNVWC
 ;;AUPNVXAM
 ;;
