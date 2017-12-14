BDGP16PS ;ihs/cmi/maw - PIMS Patch 1016 post init
 ;;5.3;PIMS;**1016**;MAY 28, 2004;Build 20
 ;
ENV ;-- environment check
 I '$$INSTALLD("PIMS*5.3*1015") D SORRY(2)
 I '$$INSTALLD("BJPC*2.0*9") D SORRY(2)
 I '$$INSTALLD("TIU*1.0*1010") D SORRY(2)
 Q
 ;
CLNPAH ;-- clean out existing entries before loading new
 S DA=0 F  S DA=$O(^BDGPAH(DA)) Q:'DA  D
 . S DIK="^BDGPAH("
 . D ^DIK
 K DIK,DA
 Q
 ;
POST ;-- patch 1016 post init
 D ENPF
 D PAH
 D MAIN^BSDSCDUP
 Q
 ;
ENPF ;-- enable patient flags for sites already using
 Q:+$P($G(^DGPF(26.13,0)),U,4)=0
 N PDA
 S PDA=0 F  S PDA=$O(^DG(40.8,PDA)) Q:'PDA  D
 . N FDA,FIENS,FERR
 . S FIENS=PDA_","
 . S FDA(40.8,FIENS,26.01)=1
 . S FDA(40.8,FIENS,26.02)=DT
 . S FDA(40.8,FIENS,26.03)=$G(DUZ)
 . D FILE^DIE("K","FDA","FERR(1)")
 Q
 ;
PAH ;-- update the Patch Application History
 N BDA,BDGDATA,BDGDG,BDGDGS,BDGSD,BDGSDS,BDG,BDG53,BSD,BSD53
 S BDG=$O(^DIC(9.4,"C","DG",0))
 Q:'BDG
 S BDG53=$O(^DIC(9.4,BDG,22,"B",5.3,0))
 Q:'BDG53
 S BSD=$O(^DIC(9.4,"C","SD",0))
 Q:'BSD
 S BSD53=$O(^DIC(9.4,BSD,22,"B",5.3,0))
 Q:'BSD53
 D NOW^%DTC
 S BDGNOW=$S(%:%,1:DT)
 W !,"Updating DG and SD Package file entries for Patch Application History"
 S BDA=0 F  S BDA=$O(^BDGPAH(BDA)) Q:'BDA  D
 . S BDGDATA=$G(^BDGPAH(BDA,0))
 . S BDGDGS=$P(BDGDATA,U)
 . S BDGDG=$P(BDGDATA,U,2)
 . W "."
 . D DGUP(BDG,BDG53,BDGDG,BDGDGS)
 . S BDGSDS=$P(BDGDATA,U,3)
 . S BDGSD=$P(BDGDATA,U,4)
 . Q:'BDGSD
 . W "."
 . D SDUP(BSD,BSD53,BDGSD,BDGSDS)
 K BDGNOW
 Q
 ;
DGUP(DG,DG53,DGDG,DGDGS) ;--update DG PAH node
 N CDA,MATCH,STR
 S MATCH=0
 S CDA=0 F  S CDA=$O(^DIC(9,4,DG,22,DG53,"PAH",CDA)) Q:'CDA  D
 . I $P(CDA," ")=DGDG S MATCH=1
 Q:$G(MATCH)
 N DDA,DIENS,DERR
 S DIENS(2)=DG
 S DIENS(1)=DG53
 S DIENS="+3,"_DG53_","_DG_","
 S STR=DGDG_" SEQ #"_DGDGS
 S DDA(9.4901,DIENS,.01)=STR
 S DDA(9.4901,DIENS,.02)=BDGNOW
 S DDA(9.4901,DIENS,.03)=DUZ
 D UPDATE^DIE("","DDA","DIENS","DERR(1)")
 Q
 ;
SDUP(SD,SD53,SDSD,SDSDS) ;update SD PAH node
 N CDA,MATCH,STR
 S MATCH=0
 S CDA=0 F  S CDA=$O(^DIC(9,4,SD,22,SD53,"PAH",CDA)) Q:'CDA  D
 . I $P(CDA," ")=SDSD S MATCH=1
 Q:$G(MATCH)
 N DDA,DIENS,DERR
 S DIENS(2)=SD
 S DIENS(1)=SD53
 S DIENS="+3,"_SD53_","_SD_","
 S STR=SDSD_" SEQ #"_SDSDS
 S DDA(9.4901,DIENS,.01)=STR
 S DDA(9.4901,DIENS,.02)=BDGNOW
 S DDA(9.4901,DIENS,.03)=DUZ
 D UPDATE^DIE("","DDA","DIENS","DERR(1)")
 Q
 ;
INSTALLD(BDGSTAL) ;EP - Determine if patch BDGSTAL was installed, where
 ; BDGSTAL is the name of the INSTALL.  E.g "AG*6.0*11".
 ;
 NEW BDGY,DIC,X,Y
 S X=$P(BDGSTAL,"*",1)
 S DIC="^DIC(9.4,",DIC(0)="FM",D="C"
 D IX^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",22,",X=$P(BDGSTAL,"*",2)
 D ^DIC
 I Y<1 D IMES Q 0
 S DIC=DIC_+Y_",""PAH"",",X=$P(BDGSTAL,"*",3)
 D ^DIC
 S BDGY=Y
 D IMES
 Q $S(BDGY<1:0,1:1)
IMES ;
 D MES^XPDUTL($$CJ^XLFSTR("Patch """_BDGSTAL_""" is"_$S(Y<1:" *NOT*",1:"")_" Present.",IOM))
 Q
SORRY(X) ;
 KILL DIFQ
 I X=3 S XPDQUIT=2 Q
 S XPDQUIT=X
 W *7,!,$$CJ^XLFSTR("Sorry....FIX IT!",IOM)
 Q
 ;