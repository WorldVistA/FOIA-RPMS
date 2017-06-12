PXRMDATA ; SLC/PKR - Routines for getting data. ;08-Nov-2013 12:55;DU
 ;;2.0;CLINICAL REMINDERS;**4,6,1001**;Feb 04, 2005;Build 21
 ;IHS/MSC/MGH Patch 1001 Add IHS files
 ;
 ;===============================================
GETDATA(FILENUM,DAS,FIEVT) ;Return data for a finding.
 K FIEVT
 I FILENUM=45 D GETDATA^PXRMDGPT(DAS,.FIEVT) Q
 I FILENUM=52 D GETDATA^PXRMDOUT(DAS,.FIEVT) Q
 I FILENUM=55 D GETDATA^PXRMDIN(DAS,.FIEVT)  Q
 I FILENUM="55NVA" D GETDATA^PXRMDNVA(DAS,.FIEVT) Q
 I FILENUM=63 D GETDATA^PXRMLAB(DAS,.FIEVT) Q
 I FILENUM=70 D GETDATA^PXRMRAD(DAS,.FIEVT) Q
 I FILENUM=100 D GETDATA^PXRMORDR(DAS,.FIEVT) Q
 I FILENUM=120.5 D GETDATA^PXRMVITL(DAS,.FIEVT) Q
 I FILENUM=601.84 D GETDATA^PXRMMH(DAS,.FIEVT) Q
 I FILENUM=9000010 D GETDATA^PXRMVSIT(DAS,.FIEVT,1) Q
 I FILENUM=9000010.07 D GETDATA^PXRMVPOV(DAS,.FIEVT) Q
 I FILENUM=9000010.11 D GETDATA^PXRMIMM(DAS,.FIEVT) Q
 I FILENUM=9000010.12 D GETDATA^PXRMSKIN(DAS,.FIEVT) Q
 I FILENUM=9000010.13 D GETDATA^PXRMEXAM(DAS,.FIEVT) Q
 I FILENUM=9000010.16 D GETDATA^PXRMEDU(DAS,.FIEVT) Q
 I FILENUM=9000010.18 D GETDATA^PXRMVCPT(DAS,.FIEVT) Q
 I FILENUM=9000010.23 D GETDATA^PXRMHF(DAS,.FIEVT) Q
 I FILENUM=9000011 D GETDATA^PXRMPROB(DAS,.FIEVT) Q
 ;IHS/MSC/MGH Patch 1001 Get data for files IHS does not use
 I FILENUM=9000010.01 D GETDATA^BPXRMEA(DAS,.FIEVT) Q
 Q
 ;
 ;===============================================
GETFNAME(FINDING) ;Given a finding of the form IEN;GLOBAL return its name.
 N DIC,DO,IEN,FNUM,GLOBAL
 S IEN=$P(FINDING,";",1)
 S GLOBAL=$P(FINDING,";",2)
 S GLOBAL=$S(GLOBAL="PS(55NVA,":"PS(50.7,",GLOBAL="PS(55,":"PSDRUG(",1:GLOBAL)
 S DIC="^"_GLOBAL
 D DO^DIC1
 S FNUM=+$P(DO,U,2)
 Q $$GET1^DIQ(FNUM,IEN,.01)
 ;
 ;===============================================
GETFNUM(ENODE) ;Given an ENODE return the file number for the data source.
 I ENODE="AUTTEDT(" Q 9000010.16
 I ENODE="AUTTEXAM(" Q 9000010.13
 I ENODE="AUTTHF(" Q 9000010.23
 I ENODE="AUTTIMM(" Q 9000010.11
 I ENODE="AUTTSK(" Q 9000010.12
 I ENODE="GMRD(120.51," Q 120.5
 I ENODE="LAB(60," Q 63
 I ENODE="ORD(101.43," Q 100
 I ENODE="PXD(811.2," Q 811.2
 I ENODE="PXRMD(810.9," Q 9000010
 I ENODE="PXRMD(811.4," Q 811.4
 I ENODE="PXRMD(811.5," Q 811.5
 I ENODE="PS(50.605," Q 52_U_55_U_"55NVA"
 I ENODE="PS(55," Q 55
 I ENODE="PS(55NVA," Q "55NVA"
 I ENODE="PSDRUG(" Q 52_U_55_U_"55NVA"
 I ENODE="PSNDF(50.6," Q 52_U_55_U_"55NVA"
 I ENODE="PSRX(" Q 52
 I ENODE="RAMIS(71," Q 70
 I ENODE="YTT(601.71," Q 601.84
 ;IHS/MSC/MGH Add data for IHS files
 I ENODE="AUTTMSR(" Q 9000010.01
 Q 0
 ;