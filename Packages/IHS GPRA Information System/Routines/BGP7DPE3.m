BGP7DPE3 ; IHS/CMI/LAB - patient ed report ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
 ;
SET73 ;EP
 I BGPTIME=2 D SET73P Q
 I BGPTIME=3 D SET73B Q
 I '$D(^BGPPEDCG(BGPRPT,18,0)) S ^BGPPEDCG(BGPRPT,18,0)="^90558.1218A^0^0"
 S Z=$O(^BGPPEDCG(BGPRPT,18,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDCG(BGPRPT,18,Z,0),U,3)=$P(^BGPPEDCG(BGPRPT,18,Z,0),U,3)+BGPC
 S Z=$P(^BGPPEDCG(BGPRPT,18,0),U,3)+BGPC,$P(^BGPPEDCG(BGPRPT,18,0),U,3)=Z,$P(^BGPPEDCG(BGPRPT,18,0),U,4)=Z
 S ^BGPPEDCG(BGPRPT,18,Z,0)=BGPT_U_BGPT_U_BGPC
 S ^BGPPEDCG(BGPRPT,18,"B",BGPT,Z)=""
 Q
SET73P ;
 I '$D(^BGPPEDPG(BGPRPT,18,0)) S ^BGPPEDPG(BGPRPT,18,0)="^90558.1318A^0^0"
 S Z=$O(^BGPPEDPG(BGPRPT,18,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDPG(BGPRPT,18,Z,0),U,3)=$P(^BGPPEDPG(BGPRPT,18,Z,0),U,3)+1
 S Z=$P(^BGPPEDPG(BGPRPT,18,0),U,3)+1,$P(^BGPPEDPG(BGPRPT,18,0),U,3)=Z,$P(^BGPPEDPG(BGPRPT,18,0),U,4)=Z
 S ^BGPPEDPG(BGPRPT,18,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDPG(BGPRPT,18,"B",BGPT,Z)=""
 Q
SET73B ;
 I '$D(^BGPPEDBG(BGPRPT,18,0)) S ^BGPPEDBG(BGPRPT,18,0)="^90558.1418A^0^0"
 S Z=$O(^BGPPEDBG(BGPRPT,18,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDBG(BGPRPT,18,Z,0),U,3)=$P(^BGPPEDBG(BGPRPT,18,Z,0),U,3)+1
 S Z=$P(^BGPPEDBG(BGPRPT,18,0),U,3)+1,$P(^BGPPEDBG(BGPRPT,18,0),U,3)=Z,$P(^BGPPEDBG(BGPRPT,18,0),U,4)=Z
 S ^BGPPEDBG(BGPRPT,18,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDBG(BGPRPT,18,"B",BGPT,Z)=""
 Q
SET74 ;EP
 I BGPTIME=2 D SET74P Q
 I BGPTIME=3 D SET74B Q
 I '$D(^BGPPEDCG(BGPRPT,19,0)) S ^BGPPEDCG(BGPRPT,19,0)="^90558.1219A^0^0"
 S Z=$O(^BGPPEDCG(BGPRPT,19,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDCG(BGPRPT,19,Z,0),U,3)=$P(^BGPPEDCG(BGPRPT,19,Z,0),U,3)+BGPC
 S Z=$P(^BGPPEDCG(BGPRPT,19,0),U,3)+BGPC,$P(^BGPPEDCG(BGPRPT,19,0),U,3)=Z,$P(^BGPPEDCG(BGPRPT,19,0),U,4)=Z
 S ^BGPPEDCG(BGPRPT,19,Z,0)=BGPT_U_BGPT_U_BGPC
 S ^BGPPEDCG(BGPRPT,19,"B",BGPT,Z)=""
 Q
SET74P ;
 I '$D(^BGPPEDPG(BGPRPT,19,0)) S ^BGPPEDPG(BGPRPT,19,0)="^90558.1319A^0^0"
 S Z=$O(^BGPPEDPG(BGPRPT,19,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDPG(BGPRPT,19,Z,0),U,3)=$P(^BGPPEDPG(BGPRPT,19,Z,0),U,3)+1
 S Z=$P(^BGPPEDPG(BGPRPT,19,0),U,3)+1,$P(^BGPPEDPG(BGPRPT,19,0),U,3)=Z,$P(^BGPPEDPG(BGPRPT,19,0),U,4)=Z
 S ^BGPPEDPG(BGPRPT,19,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDPG(BGPRPT,19,"B",BGPT,Z)=""
 Q
SET74B ;
 I '$D(^BGPPEDBG(BGPRPT,19,0)) S ^BGPPEDBG(BGPRPT,19,0)="^90558.1419A^0^0"
 S Z=$O(^BGPPEDBG(BGPRPT,19,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDBG(BGPRPT,19,Z,0),U,3)=$P(^BGPPEDBG(BGPRPT,19,Z,0),U,3)+1
 S Z=$P(^BGPPEDBG(BGPRPT,19,0),U,3)+1,$P(^BGPPEDBG(BGPRPT,19,0),U,3)=Z,$P(^BGPPEDBG(BGPRPT,19,0),U,4)=Z
 S ^BGPPEDBG(BGPRPT,19,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDBG(BGPRPT,19,"B",BGPT,Z)=""
 Q
SET75 ;EP
 I BGPTIME=2 D SET75P Q
 I BGPTIME=3 D SET75B Q
 I '$D(^BGPPEDCG(BGPRPT,21,0)) S ^BGPPEDCG(BGPRPT,21,0)="^90558.1221A^0^0"
 S Z=$O(^BGPPEDCG(BGPRPT,21,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDCG(BGPRPT,21,Z,0),U,3)=$P(^BGPPEDCG(BGPRPT,21,Z,0),U,3)+BGPC
 S Z=$P(^BGPPEDCG(BGPRPT,21,0),U,3)+BGPC,$P(^BGPPEDCG(BGPRPT,21,0),U,3)=Z,$P(^BGPPEDCG(BGPRPT,21,0),U,4)=Z
 S ^BGPPEDCG(BGPRPT,21,Z,0)=BGPT_U_BGPT_U_BGPC
 S ^BGPPEDCG(BGPRPT,21,"B",BGPT,Z)=""
 Q
SET75P ;
 I '$D(^BGPPEDPG(BGPRPT,21,0)) S ^BGPPEDPG(BGPRPT,21,0)="^90558.1321A^0^0"
 S Z=$O(^BGPPEDPG(BGPRPT,21,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDPG(BGPRPT,21,Z,0),U,3)=$P(^BGPPEDPG(BGPRPT,21,Z,0),U,3)+1
 S Z=$P(^BGPPEDPG(BGPRPT,21,0),U,3)+1,$P(^BGPPEDPG(BGPRPT,21,0),U,3)=Z,$P(^BGPPEDPG(BGPRPT,21,0),U,4)=Z
 S ^BGPPEDPG(BGPRPT,21,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDPG(BGPRPT,21,"B",BGPT,Z)=""
 Q
SET75B ;
 I '$D(^BGPPEDBG(BGPRPT,21,0)) S ^BGPPEDBG(BGPRPT,21,0)="^90558.1421A^0^0"
 S Z=$O(^BGPPEDBG(BGPRPT,21,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDBG(BGPRPT,21,Z,0),U,3)=$P(^BGPPEDBG(BGPRPT,21,Z,0),U,3)+1
 S Z=$P(^BGPPEDBG(BGPRPT,21,0),U,3)+1,$P(^BGPPEDBG(BGPRPT,21,0),U,3)=Z,$P(^BGPPEDBG(BGPRPT,21,0),U,4)=Z
 S ^BGPPEDBG(BGPRPT,21,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDBG(BGPRPT,21,"B",BGPT,Z)=""
 Q