ABMP2622 ; IHS/SD/SDR - 3P BILLING 2.6 Patch 22 POST INIT ;  
 ;;2.6;IHS Third Party Billing;**22**;NOV 12, 2009;Build 418
 ;
 ;IHS/SD/SDR 2.6*22 - HEAT335246 Turn on audit for split claim setup fields
 ;
 Q
POST ;
 D AUDIT  ;abm*2.6*22 IHS/SD/SDR HEAT335246
 Q
AUDIT ;EP
 D TURNON^DIAUTL(9002274.096,.01,"y")  ;turn on audit for 3P INSURER, 6 Split Claim multiple, field .01
 D TURNON^DIAUTL(9002274.096,.02,"y")  ;turn on audit for 3P INSURER, 6 Split Claim multiple, field .02
 D TURNON^DIAUTL(9002274.096,.03,"y")  ;turn on audit for 3P INSURER, 6 Split Claim multiple, field .03
 D TURNON^DIAUTL(9002274.096,.04,"y")  ;turn on audit for 3P INSURER, 6 Split Claim multiple, field .04
 D TURNON^DIAUTL(9002274.096,.05,"y")  ;turn on audit for 3P INSURER, 6 Split Claim multiple, field .05
 D TURNON^DIAUTL(9002274.096,.06,"y")  ;turn on audit for 3P INSURER, 6 Split Claim multiple, field .06
 D TURNON^DIAUTL(9002274.096,.07,"y")  ;turn on audit for 3P INSURER, 6 Split Claim multiple, field .07
 D TURNON^DIAUTL(9002274.096,.08,"y")  ;turn on audit for 3P INSURER, 6 Split Claim multiple, field .08
 Q
