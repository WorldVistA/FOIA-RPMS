ORY01107 ;SLC/RJS,CLA - OCX PACKAGE RULE TRANSPORT ROUTINE (Delete after Install of OR*3*1011) ;APR 8,2013 at 18:46
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**1011**;Dec 17,1997;Build 242
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
S ;
 ;
 D DOT^ORY011ES
 ;
 ;
 K REMOTE,LOCAL,OPCODE,REF
 F LINE=1:1:500 S TEXT=$P($T(DATA+LINE),";",2,999) Q:TEXT  I $L(TEXT) D  Q:QUIT
 .S ^TMP("OCXRULE",$J,$O(^TMP("OCXRULE",$J,"A"),-1)+1)=TEXT
 ;
 ;
 ;
 Q
 ;
DATA ;
 ;
 ;;EOR^
 ;;EOF^OCXS(860.3)^1
 ;;SOF^860.2  ORDER CHECK RULE
 ;;KEY^860.2:^ORDER REQUIRES ELECTRONIC SIGNATURE
 ;;R^"860.2:",.01,"E"
 ;;D^ORDER REQUIRES ELECTRONIC SIGNATURE
 ;;R^"860.2:","860.21:1",.01,"E"
 ;;D^ELECTRONIC SIGNATURE
 ;;R^"860.2:","860.21:1",1,"E"
 ;;D^ORDER REQUIRES ELECTRONIC SIGNATURE
 ;;R^"860.2:","860.21:2",.01,"E"
 ;;D^REFILL REQUEST
 ;;R^"860.2:","860.21:2",1,"E"
 ;;D^SS REFILL REQUEST
 ;;R^"860.2:","860.21:3",.01,"E"
 ;;D^NO REFILL REQUEST
 ;;R^"860.2:","860.21:3",1,"E"
 ;;D^NO SS REFILL REQUEST
 ;;R^"860.2:","860.22:1",.01,"E"
 ;;D^1
 ;;R^"860.2:","860.22:1",1,"E"
 ;;D^ELECTRONIC SIGNATURE AND NO REFILL REQUEST
 ;;R^"860.2:","860.22:1",3,"E"
 ;;D^ORDER REQUIRES ELEC SIGNATURE
 ;;R^"860.2:","860.22:1",5,"E"
 ;;D^Order requires electronic signature.
 ;;R^"860.2:","860.22:2",.01,"E"
 ;;D^2
 ;;R^"860.2:","860.22:2",1,"E"
 ;;D^ELECTRONIC SIGNATURE AND REFILL REQUEST
 ;;R^"860.2:","860.22:2",3,"E"
 ;;D^SS REFILL REQUEST SIGNATURE
 ;;R^"860.2:","860.22:2",5,"E"
 ;;D^Surescripts renewal request requires electronic signature.
 ;;EOR^
 ;;EOF^OCXS(860.2)^1
 ;1;
 ;