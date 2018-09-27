IS00027A ;Compiled from script 'Generated: HL IHS IZV04 V03VXR IN-I' on FEB 22, 2018
 ;Part 2
 ;Copyright 2018 SAIC
EN I '$D(X) D ERROR^INHS("Variable 'PID11' failed input transform. Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 K DXS
 S (INX,X)=$G(@INV@("PID13"))
 I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 S @INV@("PID13")=$G(X)
 I '$D(X) D ERROR^INHS("Variable 'PID13' failed input transform. Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 K DXS
 S (INX,X)=$G(@INV@("PID14"))
 I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 S @INV@("PID14")=$G(X)
 I '$D(X) D ERROR^INHS("Variable 'PID14' failed input transform. Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 K DXS
 S (INX,X)=$G(@INV@("PID17"))
 I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 S @INV@("PID17")=$G(X)
 I '$D(X) D ERROR^INHS("Variable 'PID17' failed input transform. Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 K DXS
 S (INX,X)=$G(@INV@("PID19"))
 I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 S @INV@("PID19")=$G(X)
 I '$D(X) D ERROR^INHS("Variable 'PID19' failed input transform. Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 K DXS
 S (INX,X)=$G(@INV@("PID26"))
 I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 S @INV@("PID26")=$G(X)
 I '$D(X) D ERROR^INHS("Variable 'PID26' failed input transform. Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 K DXS
 Q
I1 ;IF $D(@INV@("PD11"))
 I $D(@INV@("PD11"))
 D:$T
 .S (INX,X)=$G(@INV@("PD14"))
 .I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 .S @INV@("PD14")=$G(X)
 .I '$D(X) D ERROR^INHS("Variable 'PD14' failed input transform. Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 .K DXS
 .Q
 ;IF $D(@INV@("NK11"))
 I $D(@INV@("NK11"))
 D:$T
 .S INI(1)=0 F  S INI(1)=$O(@INV@("NK12",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("NK12",INI(1))
 ..S:X]"" X=$$HLPN^INHUT(X,INSUBDEL,INDELIMS,$P($G(INTHL7F2),U,4),"I")
 ..S @INV@("NK12",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'NK12' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("NK13",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("NK13",INI(1))
 ..I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ..S @INV@("NK13",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'NK13' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("NK14",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("NK14",INI(1))
 ..I $L(X) S:$P(X,INSUBDEL,4)="" $P(X,INSUBDEL,4)=INSUBDEL
 ..S @INV@("NK14",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'NK14' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("NK15",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("NK15",INI(1))
 ..I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ..S @INV@("NK15",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'NK15' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("NK17",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("NK17",INI(1))
 ..I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ..S @INV@("NK17",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'NK17' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("NK113",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("NK113",INI(1))
 ..I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ..S @INV@("NK113",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'NK113' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .Q
 ;IF $D(@INV@("PV11"))
 I $D(@INV@("PV11"))
 D:$T
 .S (INX,X)=$G(@INV@("PV144"))
 .I X]"" S X=$$TIMEIO^INHUT10(X,$P($G(INTHL7F2),U),$P($G(INTHL7F2),U,2),$P($G(INTHL7F2),U,3),1)
 .S @INV@("PV144")=$G(X)
 .I '$D(X) D ERROR^INHS("Variable 'PV144' failed input transform. Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 .K DXS
 .S (INX,X)=$G(@INV@("PV145"))
 .I X]"" S X=$$TIMEIO^INHUT10(X,$P($G(INTHL7F2),U),$P($G(INTHL7F2),U,2),$P($G(INTHL7F2),U,3),1)
 .S @INV@("PV145")=$G(X)
 .I '$D(X) D ERROR^INHS("Variable 'PV145' failed input transform. Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 .K DXS
 .Q
 ;IF $D(@INV@("IN11"))
 I $D(@INV@("IN11"))
 D:$T
 .S INI(1)=0 F  S INI(1)=$O(@INV@("IN14",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("IN14",INI(1))
 ..I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ..S @INV@("IN14",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'IN14' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("IN18",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("IN18",INI(1))
 ..I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ..S @INV@("IN18",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'IN18' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("IN19",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("IN19",INI(1))
 ..I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ..S @INV@("IN19",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'IN19' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("IN112",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("IN112",INI(1))
 ..I X]"" S X=$E(X,1,4)-1700_$E(X,5,8)
 ..S @INV@("IN112",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'IN112' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("IN113",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("IN113",INI(1))
 ..I X]"" S X=$E(X,1,4)-1700_$E(X,5,8)
 ..S @INV@("IN113",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'IN113' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("IN116",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("IN116",INI(1))
 ..S:X]"" X=$$HLPN^INHUT(X,INSUBDEL,INDELIMS,$P($G(INTHL7F2),U,4),"I")
 ..S @INV@("IN116",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'IN116' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("IN117",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("IN117",INI(1))
 ..I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ..S @INV@("IN117",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'IN117' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .;IF $D(@INV@("IN21"))
 .I $D(@INV@("IN21"))
 .D:$T
 ..S INI(1)=0 F  S INI(1)=$O(@INV@("IN23",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ...S (INX,X)=@INV@("IN23",INI(1))
 ...I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ...S @INV@("IN23",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'IN23' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ...Q
 ..K DXS
 ..S INI(1)=0 F  S INI(1)=$O(@INV@("IN26",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ...S (INX,X)=@INV@("IN26",INI(1))
 ...I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ...S @INV@("IN26",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'IN26' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ...Q
 ..K DXS
 ..S INI(1)=0 F  S INI(1)=$O(@INV@("IN28",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ...S (INX,X)=@INV@("IN28",INI(1))
 ...I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ...S @INV@("IN28",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'IN28' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ...Q
 ..K DXS
 ..Q
 .Q
 ;IF $D(@INV@("ORC1"))
 I $D(@INV@("ORC1"))
 D:$T
 .S INI(1)=0 F  S INI(1)=$O(@INV@("ORC5",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("ORC5",INI(1))
 ..I $P($G(INTHL7F2),U,4) S X=$$SUBESC^INHUT7(X,INDELIMS,"I")
 ..S @INV@("ORC5",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'ORC5' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("ORC9",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("ORC9",INI(1))
 ..I X]"" S X=$$TIMEIO^INHUT10(X,$P($G(INTHL7F2),U),$P($G(INTHL7F2),U,2),$P($G(INTHL7F2),U,3),1)
 ..S @INV@("ORC9",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'ORC9' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .S INI(1)=0 F  S INI(1)=$O(@INV@("ORC15",INI(1))) Q:'INI(1)  S INI=INI(1) D
 ..S (INX,X)=@INV@("ORC15",INI(1))
 ..I X]"" S X=$$TIMEIO^INHUT10(X,$P($G(INTHL7F2),U),$P($G(INTHL7F2),U,2),$P($G(INTHL7F2),U,3),1)
 ..S @INV@("ORC15",INI(1))=$G(X) I '$D(X) D ERROR^INHS("Variable 'ORC15' failed input transform in iteration #"_INI(1)_". Processing continues.",0),ERROR^INHS("  Value = '"_INX_"'",0)
 ..Q
 .K DXS
 .;IF $D(@INV@("RXA1"))
 .I $D(@INV@("RXA1"))
 .D:$T
 ..Q
 .Q
 ;Entering REQUIRED section.
 I $D(@INV@("MSH1"))#2,$G(@INV@("MSH1"))="" S INREQERR=2 D KILL^INHVA1("MSH","HL FIELD SEPARATOR")
 I $D(@INV@("MSH1"))#2,$G(@INV@("MSH2"))="" S INREQERR=2 D KILL^INHVA1("MSH","HL ENCODING CHARACTERS")
 I $D(@INV@("MSH1"))#2,$G(@INV@("MSH9"))="" S INREQERR=2 D KILL^INHVA1("MSH","HL MESSAGE TYPE")
 I $D(@INV@("MSH1"))#2,$G(@INV@("MSH11"))="" S INREQERR=2 D KILL^INHVA1("MSH","HL PROCESSING ID")
 I $D(@INV@("QRD1"))#2,$G(@INV@("QRD1"))="" S INREQERR=2 D KILL^INHVA1("QRD","HL IHS QRD IN QDTM (QRD-1)")
 I $D(@INV@("QRD1"))#2,$G(@INV@("QRD2"))="" S INREQERR=2 D KILL^INHVA1("QRD","HL IHS QRD IN QFC (QRD-2)")
 I $D(@INV@("QRD1"))#2,$G(@INV@("QRD3"))="" S INREQERR=2 D KILL^INHVA1("QRD","HL IHS QRD IN QP (QRD-3)")
 I $D(@INV@("QRD1"))#2,$G(@INV@("QRD4"))="" S INREQERR=2 D KILL^INHVA1("QRD","HL IHS QRD IN QID (QRD-4)")
 I $D(@INV@("QRD1"))#2,$G(@INV@("QRD7"))="" S INREQERR=2 D KILL^INHVA1("QRD","HL IHS QRD IN QTY (QRD-7)")
 I $D(@INV@("QRD1"))#2,$G(@INV@("QRD8"))="" S INREQERR=2 D KILL^INHVA1("QRD","HL IHS QRD IN WHO (QRD-8)")
 I $D(@INV@("QRD1"))#2,$G(@INV@("QRD9"))="" S INREQERR=2 D KILL^INHVA1("QRD","HL IHS QRD IN WHAT (QRD-9)")
 I $D(@INV@("QRF1"))#2,$G(@INV@("QRF1"))="" S INREQERR=2 D KILL^INHVA1("QRF","HL IHS QRF IN WHERE (QRF-1)")
 Q:$G(INSTERR) $S($G(INREQERR)>INSTERR:INREQERR,1:INSTERR)  D MAIN^BHLI
 I $G(INSTERR) Q $S($G(INREQERR)>INSTERR:INREQERR,1:INSTERR)
 ;Entering END section.
 I $G(INSTERR) Q $S($G(INREQERR)>INSTERR:INREQERR,1:INSTERR)
 K @INV,INV,INDA,DIPA Q +$G(INREQERR)
