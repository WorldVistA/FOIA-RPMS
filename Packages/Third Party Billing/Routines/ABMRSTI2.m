ABMRSTI2 ; IHS/SD/SDR - Split Claim Billing (part 2); 
 ;;2.6;IHS 3P BILLING SYSTEM;**22**;NOV 12, 2009;Build 418
 ;IHS/SD/SDR 2.6*22 HEAT335246 - New routine
 ;
 Q
SPLITCLM ;EP
 S ABMPG=""
 F  S ABMPG=$O(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMPG)) Q:$G(ABMPG)=""  D  ;loop thru selected pages to split
 .I ABMY("PGS")'[("^"_ABMPG_"^") Q  ;not a page that was selected by user
 .I $TR($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,25),",")[ABMPG Q  ;don't split pages that have already been split from claim
 .;I +$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMPG))<2 Q  ;claim should have 2 entries for page before splitting will occur; this is to address issue found in TST but couldn't replicate again
 .S ABMCNT=0
 .S ABMCNTF=0
 .I ABMY("SPLITHOW")=2 D
 ..D NEWENTRY
 ..Q:$O(^TMP("ABM-STIN",$J,"NEWCLMLST",ABMP("CDFN"),""))=""
 ..;no entry was created so quit
 ..D CLEANUP
 .;
 .I ABMY("SPLITHOW")=1 D
 ..F J=1:1:$G(^TMP("ABM-SPIN",$J,"VLST",ABMP("CDFN"),ABMPG)) D
 ...D NEWENTRY
 ...Q:$O(^TMP("ABM-STIN",$J,"NEWCLMLST",ABMP("CDFN"),""))=""
 ...D CLEANUP
 ;
 I ABMY("SPLITHOW")=1 D
 .K ABMSV,ABMSV2
 .S ABMC2=0
 .F  S ABMC2=$O(^TMP("ABM-STIN",$J,"NEWCLMLST",ABMP("CDFN"),ABMC2)) Q:'ABMC2  D
 ..F ABMPA="8A","8B","8C","8D","8E","8F","8G","8H","8J","8K" D
 ...S ABMC=0
 ...S ABMP=$S(ABMPA="8A":21,ABMPA="8B":27,ABMPA="8C":25,ABMPA="8D":23,ABMPA="8E":37,ABMPA="8F":35,ABMPA="8G":39,ABMPA="8H":43,ABMPA="8J":45,ABMPA="8K":47,1:0)
 ...S ABMD=0
 ...F  S ABMD=$O(^ABMDCLM(DUZ(2),ABMC2,ABMP,ABMD)) Q:'ABMD  D
 ....S ABMC=+$G(ABMC)+1
 ....Q:$G(^TMP("ABM-STIN",$J,"NEWCLMLST",ABMP("CDFN"),ABMC2,ABMPA))=ABMC
 ....D DELSUB
 ...D REINDEX(ABMC2)  ;reindex new claim after claim is in final state (meaning all unwanted entries from this claim have been removed
 .; 
 ;If one claim per page, delete other charges
 I ABMY("SPLITHOW")=2 D
 .S ABMC2=0
 .F  S ABMC2=$O(^TMP("ABM-STIN",$J,"NEWCLMLST",ABMP("CDFN"),ABMC2)) Q:'ABMC2  D
 ..S ABMPA=""
 ..F  S ABMPA=$O(^TMP("ABM-STIN",$J,"NEWCLMLST",ABMP("CDFN"),ABMC2,ABMPA)) Q:$G(ABMPA)=""  D
 ...S ABMK=$S(ABMPA="8A":21,ABMPA="8B":27,ABMPA="8C":25,ABMPA="8D":23,ABMPA="8E":37,ABMPA="8F":35,ABMPA="8G":39,ABMPA="8H":43,ABMPA="8J":45,ABMPA="8K":47,1:0)
 ...F ABMD=27,21,25,23,37,35,39,33,43,45 D
 ....Q:ABMK=ABMD  ;only entry to keep; delete the rest
 ....K ^ABMDCLM(DUZ(2),ABMC2,ABMD)
 ..D REINDEX(ABMC2)  ;reindex new claim after claim is in final state (meaning all unwanted entries from this claim have been removed
 ;
 I +$G(ABMDLT)=1 D DEL  ;only delete if they asked to
 D REINDEX(ABMP("CDFN"))  ;reindex original claim
 ;I $G(ABMY("SPLIT"))'="A" D
 ;.W !,"Split claim complete."
 Q
NEWENTRY ;EP
 S X=$P(^ABMDCLM(DUZ(2),ABMP("CDFN"),0),U)
 S DINUM=$$NXNM^ABMDUTL
 I DINUM="" D  Q
 .W !!,"ERROR: Claim not created - check global ^ABMDCLM(0)"
 .S DIR(0)="E" D ^DIR K DIR
 S DIC="^ABMDCLM(DUZ(2),"
 S DIC(0)="L"
 K DD,DO D FILE^DICN Q:+Y<0  S ABMC2=+Y
 S ABMCNT=+$G(ABMCNT)+1
 S ^TMP("ABM-STIN",$J,"NEWCLMLST",ABMP("CDFN"),ABMC2,ABMPG)=ABMCNT ;keep list of new claims sorted by old claim number
 S ABMC=+$G(ABMC)+1
 M ^ABMDCLM(DUZ(2),ABMC2)=^ABMDCLM(DUZ(2),ABMP("CDFN"))  ;merge data into new claim
 ;edit new claim fields
 S DIE="^ABMDCLM(DUZ(2),"
 S DA=ABMC2
 S DR=".1////"_DT_";.04///E"
 S DR=DR_";.17////"_DT  ;date created
 S DR=DR_";.022////"_$S($G(ABMY("SPLIT"))="A":"A",1:"S")  ;auto or manual split
 S DR=DR_";.07////"_$S(ABMPG="8D":997,ABMPG="8E":996,ABMPG="8F":995,1:$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,7))  ;visit type
 S DR=DR_";.023////"_DUZ_";.024///"_ABMY("AUTODT")  ;who split and when
 D ^DIE
 ;label original claim
 S DIE="^ABMDCLM(DUZ(2),"
 S DA=ABMP("CDFN")
 S DR=".022////O"
 D ^DIE
 I $P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,25)[ABMPG Q  ;already labeled claim as split; it gets here for ea split claim so if there are multiple charges it will try to add the page multiple times
 S DR=".025////"_$S($P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,25)'="":$P($G(^ABMDCLM(DUZ(2),ABMP("CDFN"),0)),U,25)_",",1:"")_ABMPG  ;keep track of pages split from this claim
 D ^DIE
 K DIR
 Q
CLEANUP ;EP
 ;if one charge per claim, loop thru and delete other charges because we merged them all onto each claim
 F ABMPA="8A","8B","8C","8D","8E","8F","8G","8H","8J","8K" D
 .S ABMP=$S(ABMPA="8A":21,ABMPA="8B":27,ABMPA="8C":25,ABMPA="8D":23,ABMPA="8E":37,ABMPA="8F":35,ABMPA="8G":39,ABMPA="8H":43,ABMPA="8J":45,ABMPA="8K":47,1:0)
 .S ABMP("DSUB")=$S(ABMPA="8D":23,ABMPA="8E":37,ABMPA="8F":35,ABMPA="8H":43,1:0)
 .I ABMP("DSUB")=0!(ABMPG'[ABMPA) K ^ABMDCLM(DUZ(2),ABMC2,ABMP)
 Q
DEL ;EP DELETE SECTIONS FROM ORIGINAL CLAIM
 ;K ^ABMDCLM(DUZ(2),ABMC2,13)
 F I=1:1:10 D
 .S ABMPG=$P("8A^8B^8C^8D^8E^8F^8G^8H^8I^8J","^",I)
 .S ABMSEC=$P("27^21^25^23^37^35^39^43^33^45","^",I)
 .I ABMY("PGS")[ABMPG K ^ABMDCLM(DUZ(2),ABMP("CDFN"),ABMSEC)
 .Q:ABMY("PGS")["8Z"
 .;I '(ABMY("PGS")[ABMPG) K ^ABMDCLM(DUZ(2),ABMC2,ABMSEC)
 Q
DELSUB ;EP
 S DA=ABMD
 S DA(1)=ABMC2
 S DIK="^ABMDCLM(DUZ(2),"_DA(1)_","_ABMP_","
 D ^DIK
 Q
REINDEX(X) ;EP
 S DA=X
 K ^ABMDCLM(DUZ(2),DA,"ASRC")
 S DIK="^ABMDCLM(DUZ(2),"
 D IX1^DIK
 Q
