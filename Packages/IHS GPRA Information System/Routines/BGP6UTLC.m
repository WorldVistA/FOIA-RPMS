BGP6UTLC ; IHS/CMI/LAB - 27 Apr 2009 11:01 PM 30 Aug 2009 10:16 AM 30 Jun 2010 4:58 PM ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
 ;
SETHDR ;
 S BGPX="",$P(BGPX,U,1)="Site Name",$P(BGPX,U,2)="ASUFAC",$P(BGPX,U,3)="DB Id",$P(BGPX,U,4)="Date Report Run",$P(BGPX,U,5)="Current Report Begin Date",$P(BGPX,U,6)="Current Report End Date",$P(BGPX,U,7)="Previous Year Begin Date"
 S $P(BGPX,U,8)="Previous Year End Date",$P(BGPX,U,9)="Baseline Year Begin Date",$P(BGPX,U,10)="Baseline Year End Date"
 Q
GNT3 ;EP - area export file
 K BGPEXCT
 I '$G(BGPAREAA) G Q3
 S Y=$$OPEN^%ZISH(BGPUF,BGPFGNT3,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2016",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,27)
 F  S BGPP=$O(^BGPCTRL(BGPY,97,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,97,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,97,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 K BGPX
 S BGPX=0 F  S BGPX=$O(BGPEI3(BGPX)) Q:BGPX'=+BGPX  W BGPEI3(BGPX),!
Q3 ;
 K BGPEI3
 D ^%ZISC
GNT4 ;
 K BGPEXCT
 I '$G(BGPAREAA) G Q4
 S Y=$$OPEN^%ZISH(BGPUF,BGPFGNT4,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2016",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,29)
 F  S BGPP=$O(^BGPCTRL(BGPY,971,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,971,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,971,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 K BGPX
 S BGPX=0 F  S BGPX=$O(BGPEI4(BGPX)) Q:BGPX'=+BGPX  W BGPEI4(BGPX),!
Q4 ;
 K BGPEI4
 D ^%ZISC
DEV ;EP - area export file
 ;DEV FILES
 K BGPEXCT
 I '$G(BGPAREAA) G QD3
 S Y=$$OPEN^%ZISH(BGPUF,BGPFDEV1,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2016",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,22)
 F  S BGPP=$O(^BGPCTRL(BGPY,79,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,79,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,79,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 K BGPX
 S BGPX=0 F  S BGPX=$O(BGPEIDV1(BGPX)) Q:BGPX'=+BGPX  W BGPEIDV1(BGPX),!
QD3 ;
 K BGPEIDV1
 D ^%ZISC
DEV2 ;
 K BGPEXCT
 I '$G(BGPAREAA) G D2
 S Y=$$OPEN^%ZISH(BGPUF,BGPFDEV2,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2016",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,23)
 F  S BGPP=$O(^BGPCTRL(BGPY,81,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,81,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,81,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 K BGPX
 S BGPX=0 F  S BGPX=$O(BGPEIDV2(BGPX)) Q:BGPX'=+BGPX  W BGPEIDV2(BGPX),!
D2 ;
 K BGPEIDV2
 D ^%ZISC
DEV3 ;
 K BGPEXCT
 I '$G(BGPAREAA) G D3
 S Y=$$OPEN^%ZISH(BGPUF,BGPFDEV3,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2016",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,24)
 F  S BGPP=$O(^BGPCTRL(BGPY,85,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,85,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,85,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 K BGPX
 S BGPX=0 F  S BGPX=$O(BGPEIDV3(BGPX)) Q:BGPX'=+BGPX  W BGPEIDV3(BGPX),!
D3 ;
 K BGPEIDV3
 D ^%ZISC
GNT6 ;
 K BGPEXCT
 I '$G(BGPAREAA) G Q6
 S Y=$$OPEN^%ZISH(BGPUF,BGPFDEV4,"W")
 I Y=1 W:'$D(ZTQUEUED) !!,"Cannot open host file." Q
 U IO
 S BGPP=0,BGPY=$O(^BGPCTRL("B","2016",0)),BGPX="",BGPEC=$P(^BGPCTRL(BGPY,0),U,28)
 F  S BGPP=$O(^BGPCTRL(BGPY,851,BGPP)) Q:BGPP'=+BGPP  D
 .S BGPPP1=$P(^BGPCTRL(BGPY,851,BGPP,0),U,1)
 .S BGPZ=$P(^BGPCTRL(BGPY,851,BGPP,0),U,2)
 .S $P(BGPX,U,BGPPP1)=BGPZ
 W BGPX,!
 K BGPX
 S BGPX="" S P=11 F  S $P(BGPX,U,P)="Current",P=P+9 Q:P>(BGPEC-8)
 S P=14 F  S $P(BGPX,U,P)="Previous",P=P+9 Q:P>(BGPEC-5)
 S P=17 F  S $P(BGPX,U,P)="Baseline",P=P+9 Q:P>(BGPEC+1)
 W BGPX,!
 K BGPX
 D SETHDR
 S P=11 F  S $P(BGPX,U,P)="Num",P=P+3 Q:P>(BGPEC-2)
 S P=12 F  S $P(BGPX,U,P)="Den",P=P+3 Q:P>(BGPEC-1)
 S P=13 F  S $P(BGPX,U,P)="%",P=P+3 Q:P>BGPEC
 W BGPX,!
 K BGPX
 S BGPX=0 F  S BGPX=$O(BGPEIDV4(BGPX)) Q:BGPX'=+BGPX  W BGPEIDV4(BGPX),!
Q6 ;
 K BGPEIDV4
 D ^%ZISC
 Q