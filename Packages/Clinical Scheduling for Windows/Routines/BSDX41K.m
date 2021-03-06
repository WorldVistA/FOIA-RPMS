BSDX41K ; IHS/OIT/HMW/MSC/SAT - WINDOWS SCHEDULING RPCS ;
 ;;3.0;IHS WINDOWS SCHEDULING;;DEC 09, 2010
MRR ; ******************** MOST RECENT RADIOLOGY * 9000010.22 *******
 Q:'$D(^AUPNVRAD("AA",APCHSPAT))
 ;X APCHSCKP Q:$D(APCHSQIT)
 ;X:'APCHSNPG APCHSBRK
 ; <SETUP>
 ; <PROCESS>
 D RBLD,RPRT
 ; <CLEANUP>
 ;now display RAD refusals
 S APCHST="RADIOLOGY EXAM",APCHSFN=71 D DISPREF^BSDX41F
 K APCHST,APCHSFN
MRRX K APCHSRT,APCHSRR,APCHSRTX,APCHSRRT,APCHSMXL,APCHSRL,APCHSRW,APCHSNMX,APCHSDFN,APCHSIVD,APCHSRTD,APCHSN,APCHSDCD,APCHSEDT,Y
 Q
 ; <BUILD>
RBLD K APCHSRRT S APCHSMXL=0
 S APCHSRRT="" F APCHSQ=0:0 S APCHSRRT=$O(^AUPNVRAD("AA",APCHSPAT,APCHSRRT)) Q:APCHSRRT=""  D RDATE
 Q
RDATE S APCHSIVD=$O(^AUPNVRAD("AA",APCHSPAT,APCHSRRT,0)) S APCHSDFN=$O(^(APCHSIVD,0)) D:APCHSIVD&(APCHSIVD'>APCHSDLM) RSET
 Q
RSET S APCHSN=^AUPNVRAD(APCHSDFN,0),APCHSRR=$G(^AUPNVRAD(APCHSDFN,11))
 ;I APCHSRR]"",$P(APCHSN,U,5)=1 S APCHSRR=APCHSRR_" (ABNORMAL)"
 ;I APCHSRR="",$P(APCHSN,U,5)=1 S APCHSRR="(ABNORMAL)"
 S APCHSEDT=$P($G(^AUPNVRAD(APCHSDFN,12)),U) ;NEW LINE!
 S X=$P(APCHSN,U,5),X=$$EXTSET^XBFUNC(9000010.22,.05,X) S APCHSDCD=X
 ;S APCHSRRT(APCHSRRT)=(-APCHSIVD\1+9999999)_U_APCHSRR S APCHSRTX=$P(^RAMIS(71,APCHSRRT,0),U,1) S:$L(APCHSRTX)>APCHSMXL APCHSMXL=$L(APCHSRTX) ;ORIG LINE
 S APCHSRRT(APCHSRRT)=(-APCHSIVD\1+9999999)_U_APCHSRR_U_APCHSEDT_U_APCHSDCD_U_$$VAL^XBDIQ1(9000010.22,APCHSDFN,.06)
 S APCHSRTX=$P(^RAMIS(71,APCHSRRT,0),U,1) S:$L(APCHSRTX)>APCHSMXL APCHSMXL=$L(APCHSRTX)
 Q
 ; <PRINT>
RPRT S APCHSRW=APCHSMXL+1,APCHSRL=10,APCHSNMX=(IOM-1-APCHSRW)\APCHSRL
 S APCHSRT="" F APCHSQ=0:0 S APCHSRT=$O(APCHSRRT(APCHSRT)) Q:APCHSRT=""  D RPRT2
 Q
RPRT2 ;
 S Y=$P(APCHSRRT(APCHSRT),U,1),APCHSRR=$P(APCHSRRT(APCHSRT),U,2) X APCHSCVD S APCHSRTD=Y
 S APCHSEDT=$P($G(APCHSRRT(APCHSRT)),U,3) I APCHSEDT]"" S Y=$P(APCHSEDT,".") X APCHSCVD S APCHSEDT=Y
 ;S APCHSRTX=$P(^RAMIS(71,APCHSRT,0),U,1) X APCHSCKP Q:$D(APCHSQIT)  W APCHSRTX,?APCHSRW,"(",APCHSRTD,")  ",APCHSRR,!
 S APCHSRTX=$P(^RAMIS(71,APCHSRT,0),U,1)
 ;X APCHSCKP Q:$D(APCHSQIT)
 S BSDXI=BSDXI+1 S ^BSDXTMP($J,BSDXI)=$C(30)
 S BSDXTMP=APCHSRTX_$$FILL^BSDX41(APCHSRW-$L(APCHSRTX))_"("_$S(APCHSEDT]"":APCHSEDT,1:APCHSRTD)_")  "
 I $P(APCHSRRT(APCHSRT),U,4)]"" S BSDXTMP=BSDXTMP_"RESULT:  " S APCHSDCD=$P(APCHSRRT(APCHSRT),U,4) S BSDXTMP=BSDXTMP_$S(APCHSDCD]"":APCHSDCD,1:"<none recorded>")
 S BSDXI=BSDXI+1 S ^BSDXTMP($J,BSDXI)=BSDXTMP_$C(30)
 I $P(APCHSRRT(APCHSRT),U,5)]"" S BSDXI=BSDXI+1 S ^BSDXTMP($J,BSDXI)="  "_"Diagnostic Code: "_$P(APCHSRRT(APCHSRT),U,5)_$C(30)
 S BSDXTMP="  "_"IMPRESSION:  " S APCHSICL=16,APCHSNRQ=APCHSRR,APCHSTXT="",APCHSICD="" D PRTTXT^BSDX41F
 K APCHSTXT,APCHSNRQ
 Q
 ;
 ; MOST RECENT EXAMINATION OF EACH TYPE WITHIN DATE RANGE
 ;
MRE ; ******************** MOST RECENT EXAMINATION * 9000010.13 *******
 ;I '$D(^AUPNVXAM("AA",APCHSPAT)),'$D(^AUPNPREF("AA",APCHSPAT,9999999.15)) Q
 ;X APCHSCKP Q:$D(APCHSQIT)
 ;X:'APCHSNPG APCHSBRK
 ; <SETUP>
 ; <PROCESS>
 ;D EBLD,EPRT
 D EBLDNEW,EPRTNEW
 ; <CLEANUP>
 ;NOW DISPLAY EXAM REFUSALS
 Q:'$D(^AUPNPREF("AA",APCHSPAT,9999999.15))
 ;X APCHSCKP Q:$D(APCHSQIT)
 S APCHSFN=9999999.15,APCHST="EXAM"
 D DISPREF
MREX K APCHSET,APCHSER,APCHSETX,APCHSERT,APCHSMXL,APCHSRL,APCHSRW,APCHSNMX,APCHSDFN,APCHSIVD,APCHSETD,APCHSN,Y
 K APCHEIEN,APCHP,APCHSD
 Q
DISPREF ;EP
 ;X APCHSCKP Q:$D(APCHSQIT)
 S APCHSRC=0
 S APCHSX="" F  S APCHSX=$O(^AUPNPREF("AA",APCHSPAT,APCHSFN,APCHSX)) Q:APCHSX=""!($D(APCHSQIT))  D
 .S APCHSD=0 F  S APCHSD=$O(^AUPNPREF("AA",APCHSPAT,APCHSFN,APCHSX,APCHSD)) Q:APCHSD=""!(APCHSD>APCHSDLM)!($D(APCHSQIT))  D
 ..S APCHSI=0 F  S APCHSI=$O(^AUPNPREF("AA",APCHSPAT,APCHSFN,APCHSX,APCHSD,APCHSI)) Q:APCHSI=""!($D(APCHSQIT))  D
 ...I $D(APCHSS) X APCHSS Q:'%
 ...S APCHSRC=APCHSRC+1
 ...I APCHSRC=1 I APCHST]"" S BSDXI=BSDXI+1 S ^BSDXTMP($J,BSDXI)=$C(30) S BSDXTMP=APCHST_" Refusals "_$C(30)
 ...;X APCHSCKP Q:$D(APCHSQIT)
 ...S BSDXTMP=$$VAL^XBDIQ1(9000022,APCHSI,.04)_" -- "_$$VAL^XBDIQ1(9000022,APCHSI,.07)
 ...S BSDXTMP=BSDXTMP_$$FILL^BSDX41(59-$L(BSDXTMP))_"("_$$DATE^APCHSMU(9999999-APCHSD)_")"
 ..Q
 .Q
 S BSDXI=BSDXI+1 S ^BSDXTMP($J,BSDXI)=BSDXTMP_$C(30)
 K APCHST,APCHSX,APCHSD,APCHSS,APCHSFN,APCHSI
 Q
 ; <BUILD>
 ;
EBLDNEW ;new exam section that looks at dx, procedures, cpts in addition to exam
 K APCHSERT
 S APCHEIEN=0 F  S APCHEIEN=$O(^AUTTEXAM(APCHEIEN)) Q:APCHEIEN'=+APCHEIEN  D
 .S APCHECOD=$P(^AUTTEXAM(APCHEIEN,0),U,2)
 .I APCHECOD="" S Y=$$VXAM(APCHSPAT,(9999999-APCHSDLM),DT,APCHEIEN) D SEXAM Q  ;just V EXAM
 .;now see if there is a special routine to get the last of this code
 .I APCHECOD="01" S Y=$$LASTEX01(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="02" S Y=$$LASTEX02(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="04" S Y=$$LASTEX04(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="06" S Y=$$LASTEX06(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="07" S Y=$$LASTEX07(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="08" S Y=$$LASTEX08(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="11" S Y=$$LASTEX11(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="12" S Y=$$LASTEX12(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="14" S Y=$$LASTEX14(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="15" S Y=$$LASTEX15(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="16" S Y=$$LASTEX16(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="17" S Y=$$LASTEX17(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="19" S Y=$$LASTEX19(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="21" S Y=$$LASTEX21(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .I APCHECOD="23" S Y=$$LASTEX23(APCHSPAT,(9999999-APCHSDLM),DT) D SEXAM Q
 .S Y=$$VXAM(APCHSPAT,(9999999-APCHSDLM),DT,APCHEIEN) D SEXAM
 .Q
 Q
 ;
EPRTNEW ;
 S APCHEXT=0 F  S APCHEXT=$O(APCHSERT(APCHEXT)) Q:APCHEXT=""!($D(APCHSQIT))  D
 .S APCHSN=$S($P($G(^AUTTEXAM(APCHEXT,0)),U,2)=34:"DOMESTIC VIOLENCE SCREENING",1:$E($P($G(^AUTTEXAM(APCHEXT,0)),U),1,28))
 .I $P(APCHSERT(APCHEXT),U,2)'["Exam" S APCHSN=$E(APCHSN,1,22)_" ["_$P(APCHSERT(APCHEXT),U,2)_"]"
 .S Y=$P(APCHSERT(APCHEXT),U,1) X APCHSCVD S APCHSD=Y
 .S APCHSER=$P(APCHSERT(APCHEXT),U,3)
 .S APCHP=$E($P(APCHSERT(APCHEXT),U,4),1,15)
 .;X APCHSCKP
 .;Q:$D(APCHSQIT)
 .S BSDXTMP=APCHSN_$$FILL^BSDX41(36-$L(APCHSN))_APCHSD
 .S BSDXTMP=BSDXTMP_$$FILL^BSDX41(46-$L(BSDXTMP))_APCHSER
 .S BSDXTMP=BSDXTMP_$$FILL^BSDX41(64-$L(BSDXTMP))_APCHP
 .S BSDXI=BSDXI+1 S ^BSDXTMP($J,BSDXI)=BSDXTMP_$C(30)
 .Q
 Q
VXAM(P,BD,ED,E) ;
 S ED=$G(ED)
 NEW D,I
 S D=$O(^AUPNVXAM("AA",P,E,0))
 I D="" Q ""
 I (9999999-D)<BD Q ""  ;before date limits
 S I=$O(^AUPNVXAM("AA",P,E,D,0))
 Q (9999999-D)_"^"_"Exam code "_$P(^AUTTEXAM(E,0),U,2)_"^"_$$VAL^XBDIQ1(9000010.13,I,.04)_"^"_$$VAL^XBDIQ1(9000010.13,I,1204)_"^"_$$VAL^XBDIQ1(9000010.13,I,81101)
 ;
SEXAM ;
 I Y="" Q
 S APCHSERT(APCHEIEN)=Y
 Q
 ;
LASTEX01(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,"01",BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 01^"_$P(D,U,2,99)
 S D=$$LASTDXI^APCHSMU2(P,"V70.0",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V70.0"
 S D=$$LASTDXI^APCHSMU2(P,"V70.3")
 I D S LBE(9999999-$P(D,U,3))="Dx: V70.3"
 S D=$$LASTDXI^APCHSMU2(P,"V70.9")
 I D S LBE(9999999-$P(D,U,3))="Dx: V70.9"
 S D=$$CPT^APCHSMU2(P,BD,DT,$O(^ATXAX("B","APCH GENERAL EXAM CPTS",0)),5)
 I D S LBE(9999999-$P(D,U,1))="CPT: "_$P(D,U,2)
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
 ;
LASTEX02(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,"02",BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 02^"_$P(D,U,2,99)
 S D=$$LASTDXI^APCHSMU2(P,"V72.1",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V72.1"
 S D=$$LASTDXI^APCHSMU2(P,"V72.19")
 I D S LBE(9999999-$P(D,U,3))="Dx: V72.19"
 S D=$$LASTDXI^APCHSMU2(P,"V80.3")
 I D S LBE(9999999-$P(D,U,3))="Dx: V80.3"
 S D=$$LASTPRCI^APCHSMU2(P,"18.11")
 I D S LBE(9999999-$P(D,U,3))="ICD: 18.11"
 S D=$$LASTCPTI^APCHSMU2(P,92700)
 I D S LBE(9999999-$P(D,U,3))="CPT: 92700"
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
 ;
LASTEX04(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,"04",BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 04^"_$P(D,U,2,99)
 S D=$$LASTDXI^APCHSMU2(P,"V76.42",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V76.42"
 S D=$$LASTPRCI^APCHSMU2(P,"89.31")
 I D S LBE(9999999-$P(D,U,3))="ICD: 89.31"
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
 ;
LASTEX06(P,BD,ED) ;
 NEW Y
 S Y=$$LASTBRST^APCLAPI3(P)
 I $P(Y,U)<BD S Y=""
 Q Y
 ;
LASTEX07(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,"07",BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 07^"_$P(D,U,2,99)
 S D=$$LASTDXI^APCHSMU2(P,"V72.82",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V72.82"
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
 ;
LASTEX08(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,"08",BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 08^"_$P(D,U,2,99)
 S D=$$LASTDXI^APCHSMU2(P,"V72.81",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V72.81"
 S D=$$LASTDXI^APCHSMU2(P,"V81.0")
 I D S LBE(9999999-$P(D,U,3))="Dx: V81.0"
 S D=$$LASTDXI^APCHSMU2(P,"V81.2")
 I D S LBE(9999999-$P(D,U,3))="Dx: V81.2"
 S D=$$LASTCPTI^APCHSMU2(P,"G0367")
 I D S LBE(9999999-$P(D,U,3))="CPT: G0367"
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
 ;
LASTEX11(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,"11",BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 11^"_$P(D,U,2,99)
 S D=$$LASTDXI^APCHSMU2(P,"V80.0",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V80.0"
 S D=$$LASTPRCI^APCHSMU2(P,"89.13")
 I D S LBE(9999999-$P(D,U,3))="ICD: 89.13"
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
LASTEX12(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,"12",BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 12^"_$P(D,U,2,99)
 S D=$$LASTPRCI^APCHSMU2(P,"89,39")
 I D S LBE(9999999-$P(D,U,3))="ICD: 89.39"
 S D=$$LASTCPTI^APCHSMU2(P,95851)
 I D S LBE(9999999-$P(D,U,3))="CPT: 95851"
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
LASTEX14(P,BD,ED) ;
 NEW Y
 S Y=$$LASTRECT^APCLAPI2(P)
 I $P(Y,U)<BD S Y=""
 Q Y
 ;
LASTEX15(P,BD,ED) ;
 NEW Y
 S Y=$$LASTPELV^APCLAPI2(P)
 I $P(Y,U)<BD S Y=""
 Q Y
 ;
LASTEX16(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,16,BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 16^"_$P(D,U,2,99)
 S D=$$LASTDXI^APCHSMU2(P,"V20.2",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V20.2"
 S D=$$LASTDXI^APCHSMU2(P,"V79.3",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V79.3"
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
 ;
LASTEX17(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,17,BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 17^"_$P(D,U,2,99)
 S D=$$LASTDXI^APCHSMU2(P,"V72.11",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V72.11"
 S D=$$LASTDXI^APCHSMU2(P,"V72.19",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V72.19"
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
 ;
LASTEX19(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,19,BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 19^"_$P(D,U,2,99)
 S D=$$LASTDXI^APCHSMU2(P,"V72.0",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V72.0"
 S D=$$LASTPRCI^APCHSMU2(P,"95.09")
 I D S LBE(9999999-$P(D,U,3))="ICD: 95.09"
 S D=$$LASTPRCI^APCHSMU2(P,"95.05")
 I D S LBE(9999999-$P(D,U,3))="ICD: 95.05"
 S D=$$LASTCPTI^APCHSMU2(P,99172)
 I D S LBE(9999999-$P(D,U,3))="CPT: 99172"
 S D=$$LASTCPTI^APCHSMU2(P,99173)
 I D S LBE(9999999-$P(D,U,3))="CPT: 99173"
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
 ;
LASTEX21(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,21,BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 21^"_$P(D,U,2,99)
 S D=$$LASTDXI^APCHSMU2(P,"V72.1",BD,DT)
 I D S LBE(9999999-$P(D,U,3))="Dx: V72.1"
 S D=$$LASTDXI^APCHSMU2(P,"V72.19")
 I D S LBE(9999999-$P(D,U,3))="Dx: V72.19"
 S D=$$LASTDXI^APCHSMU2(P,"V80.3")
 I D S LBE(9999999-$P(D,U,3))="Dx: V80.3"
 S D=$$LASTPRCI^APCHSMU2(P,"18.11")
 I D S LBE(9999999-$P(D,U,3))="ICD: 18.11"
 S D=$$LASTCPTI^APCHSMU2(P,92700)
 I D S LBE(9999999-$P(D,U,3))="CPT: 92700"
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
 ;
LASTEX23(P,BD,ED) ;
 NEW LBE,D
 K LBE
 S ED=$G(ED)
 S D=$$LASTEXAM(P,23,BD,ED)
 I D]"" S LBE(9999999-$P(D,U,1))="Exam code 23^"_$P(D,U,2,99)
 S D=$$LASTCPTI^APCHSMU2(P,92551)
 I D S LBE(9999999-$P(D,U,3))="CPT: 92551"
 I '$D(LBE) Q ""
 S D=$O(LBE(0))
 Q (9999999-D)_"^"_LBE(D)
 ;
LASTEXAM(P,C,B,E) ;
 I '$G(P) Q ""
 I $G(C)="" Q ""
 S B=$G(B)
 S E=$G(E)
 NEW D,I
 S C=$O(^AUTTEXAM("C",C,0))
 I C="" Q ""
 S D=$O(^AUPNVXAM("AA",P,C,0))
 I D="" Q ""
 I (9999999-D)<B Q ""  ;before date limits
 S I=$O(^AUPNVXAM("AA",P,C,D,0))
 Q (9999999-D)_"^"_$$VAL^XBDIQ1(9000010.13,I,.04)_"^"_$$VAL^XBDIQ1(9000010.13,I,1204)_"^"_$$VAL^XBDIQ1(9000010.13,I,81101)
 ;
RAD ; ******************* RAD TESTS - ALL * 9000010.12 *******
 G RAD^BSDX41P
