IS00026B ;Compiled from script 'Generated: HL IHS IZV04 V02VXX IN-I' on FEB 28, 2013
 ;Part 3
 ;Copyright 2013 SAIC
EN I $D(@INV@("QRF1"))#2,$G(@INV@("QRF1"))="" S INREQERR=2 D KILL^INHVA1("QRF","HL IHS QRF IN WHERE (QRF-1)")
 Q:$G(INSTERR) $S($G(INREQERR)>INSTERR:INREQERR,1:INSTERR)  D MAIN^BHLV02I
 I $G(INSTERR) Q $S($G(INREQERR)>INSTERR:INREQERR,1:INSTERR)
 ;Entering END section.
 I $G(INSTERR) Q $S($G(INREQERR)>INSTERR:INREQERR,1:INSTERR)
 K @INV,INV,INDA,DIPA Q +$G(INREQERR)