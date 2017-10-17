BQIPDSCL ;GDHD/HCS/ALA-Panel Filter Description continued ; 13 Feb 2017  12:09 PM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;
ASPARM(FN) ;EP - Retrieve associated parameters from single value field
 NEW AP,APRM,ASTR
 ;First look for single value parameter
 S AP=0
 F  S AP=$O(^BQICARE(OWNR,1,PLIEN,15,FN,2,AP)) Q:'AP  D
 . NEW DA,IENS,APNAME,AVALUE,APTYP
 . S DA(3)=OWNR,DA(2)=PLIEN,DA(1)=FN,DA=AP,IENS=$$IENS^DILF(.DA)
 . S APNAME=$$GET1^DIQ(90505.1152,IENS,.01,"E") Q:APNAME=""
 . S APTYP=$$PTYP^BQIDCDF(FSOURCE,APNAME)
 . S AVALUE=$$GVAL^BQIPDSCF(APTYP,90505.1152,IENS,FSOURCE,APNAME)
 . I AVALUE'="" S APRM(APNAME)=AVALUE
 . ;
 . ;Now try looking for multi value parameter
 . I AVALUE="" D
 .. NEW MAP
 .. S MAP=0
 .. F  S MAP=$O(^BQICARE(OWNR,1,PLIEN,15,FN,2,AP,1,MAP)) Q:'MAP  D
 ... NEW DA,IENS,AVAL
 ... S DA(4)=OWNR,DA(3)=PLIEN,DA(2)=FN,DA(1)=AP,DA=MAP,IENS=$$IENS^DILF(.DA)
 ... S AVAL=$$GET1^DIQ(90505.11521,IENS,.01,"E")
 ... S AVAL=$$GMVAL^BQIPDSCF(APTYP,90505.11521,IENS,FSOURCE,APNAME)
 ... I AVAL'="" S AVALUE=AVALUE_$S(AVALUE="":"",1:$C(29))_AVAL
 .. S:AVALUE]"" APRM(APNAME)=AVALUE
 S ASTR=""
 S APRM="" F  S APRM=$O(APRM(APRM)) Q:APRM=""  D
 . ;
 . ;Form associate string
 . S ASTR=ASTR_$S(ASTR="":"",1:$C(26))_APRM_$C(28)_APRM(APRM)
 Q ASTR
 ;
ASMPARM(MN) ;EP - Retrieve associated parameters from multiple value field
 NEW AP,APRM,ASTR
 ;First look for single value parameter
 S AP=0
 F  S AP=$O(^BQICARE(OWNR,1,PLIEN,15,FN,1,MN,2,AP)) Q:'AP  D
 . NEW DA,IENS,APNAME,AVALUE,APTYP
 . S DA(4)=OWNR,DA(3)=PLIEN,DA(2)=FN,DA(1)=MN,DA=AP,IENS=$$IENS^DILF(.DA)
 . S APNAME=$$GET1^DIQ(90505.11512,IENS,.01,"E") Q:APNAME=""
 . S APTYP=$$PTYP^BQIDCDF(FSOURCE,APNAME)
 . S AVALUE=$$GVAL^BQIPDSCF(APTYP,90505.11512,IENS,FSOURCE,APNAME)
 . I AVALUE'="" S APRM(APNAME)=AVALUE
 . ;Now try looking for multi value parameter
 . I AVALUE="" D
 .. NEW MAP
 .. S MAP=0
 .. F  S MAP=$O(^BQICARE(OWNR,1,PLIEN,15,FN,1,MN,2,AP,1,MAP)) Q:'MAP  D
 ... NEW DA,IENS,AVAL
 ... S DA(5)=OWNR,DA(4)=PLIEN,DA(3)=FN,DA(2)=MN,DA(1)=AP,DA=MAP,IENS=$$IENS^DILF(.DA)
 ... S AVAL=$$GET1^DIQ(90505.115121,IENS,.01,"E")
 ... S AVAL=$$GMVAL^BQIPDSCF(APTYP,90505.115121,IENS,FSOURCE,APNAME)
 ... I AVAL'="" S AVALUE=AVALUE_$S(AVALUE="":"",1:$C(29))_AVAL
 .. S:AVALUE]"" APRM(APNAME)=AVALUE
 S ASTR=""
 S APRM="" F  S APRM=$O(APRM(APRM)) Q:APRM=""  D
 . ;Form associate string
 . S ASTR=ASTR_$S(ASTR="":"",1:$C(26))_APRM_$C(28)_APRM(APRM)
 Q ASTR
 ;
NVIS(PORD,VALUE,ASTR) ;EP - Assemble number of visits
 NEW I,CLIN,PROV,STR,N1,N2,FND,V,VAL
 S ASTR=$G(ASTR,"")
 S (CLIN,PROV)=""
 F I=1:1:$L($G(ASTR),$C(26)) D
 . NEW FINFO,FNAME,FVAL,NVAL,PC
 . S FINFO=$P(ASTR,$C(26),I)
 . S FNAME=$P(FINFO,$C(28)) Q:FNAME=""
 . S FVAL=$P(FINFO,$C(28),2) Q:FVAL=""
 . S NVAL=""
 . F PC=1:1:$L(FVAL,$C(29)) D
 .. S VAL=$P(FVAL,$C(29),PC) S:VAL]"" NVAL=NVAL_$S(NVAL]"":", ",1:"")_VAL
 . I FNAME]"",NVAL]"" S @FNAME=NVAL
 ;
 ;Get visit number(s)
 S (N1,FND)="" F I=1:1:$L(VALUE) Q:(FND=1&($E(VALUE,I)'?1N))  I $E(VALUE,I)?1N S N1=N1_$E(VALUE,I),FND=1
 Q:N1=""
 S (N2,FND)="" I I<$L(VALUE) F I=I:1:$L(VALUE) Q:(FND=1&($E(VALUE,I)'?1N))  I $E(VALUE,I)?1N S N2=N2_$E(VALUE,I),FND=1
 ;
 S STR="# of Visits"
 I CLIN]"" S STR=STR_" in clinic "_CLIN
 I PROV]"" S STR=STR_" for provider "_PROV
 ;
 S V=VALUE
 I V["~",V["'" S STR=STR_" in range (inclusive) "_N1_" thru "_N2
 E  I V["~" S STR=STR_" out of range (exclusive) less than "_N1_" or greater than "_N2
 E  I V["'<" S STR=STR_" greater than or equal to "_N1
 E  I V["'>" S STR=STR_" less than or equal to "_N1
 E  I V["<" S STR=STR_" less than "_N1
 E  I V[">" S STR=STR_" greater than "_N1
 E  S STR=STR_" equal to "_N1
 S VALUE=STR
 Q
