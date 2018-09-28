BARADJRL  ;IHS/SD/POT - CREATE ENTRY IN A/R EDI STND CLAIM ADJ REASON ;
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ; IHS/SD/CPC HEAT326081 - V1.8 P28 - updated SARs
 ; code cloned from BARADJR7
 ;
EN ; EP
 ; Change Name of these reasons
 S BARD=";;"
 S BARCNT=0
 D BMES^XPDUTL("Updating Adjustment Reasons to A/R Table Entry file Phase 2...")
 F  D CHNGREA2 Q:BARVALUE="END"
 K DIC,DA,X,Y,DIE
 D ^BARVKL0
 D BMES^XPDUTL("SAR Codes Update Complete...")
 Q
 ; ********************************************************************
CHNGREA2 ;
 S BARCNT=BARCNT+1
 S BARVALUE=$P($T(@4+BARCNT),BARD,2)
 Q:BARVALUE="END"
 K DIC,DA,X,Y,DIE
 S DIC="^BARTBL("
 S DIC(0)="M"
 S X=BARVALUE
 D ^DIC
 I +Y>0 D
 .K DIC,DIE,BARNAME
 .S DIE="^BARTBL("
 .S DA=+Y
 .S BARNAME=$P($T(@4+BARCNT),BARD,3)
 .S DR=".01////^S X=BARNAME"
 .D ^DIE
 .D MES^XPDUTL(BARVALUE_$S($L(BARVALUE)=2:"   ",$L(BARVALUE)=1:"    ",1:"  ")_BARNAME)
 Q
 ; ********************************************************************
 ; STANDARD CODE ;; RPMS REASON
 ; ********************************************************************
4 ;;A/R Table Entry file - Edits DIE="^BARTBL("
 ;;900;;Clm Lacks Prior Pymt Info;;4;;D16
 ;;901;;Clm Den Inadq Level of Sublux;;4;;D1
 ;;902;;Claim lacks drug information;;4;;D2
 ;;903;;Clm Den Info Pt Equip Missing;;4;;D3
 ;;904;;Period of time missing;;4;;D4
 ;;905;;Clm Den Lacks Indvdl Lab Code;;4;;D5
 ;;906;;Clm Den No MR Copy Included;;4;;D6
 ;;907;;Clm Den Lacks Date of RecVisit;;4;;D7
 ;;908;;Clm Den Lacks Info Xray Avail;;4;;D8
 ;;909;;Clm Den Lacks Actual Lens Cost;;4;;D9
 ;;910;;Clm Den Pvdr Fin. Forms NOF;;4;;D10
 ;;911;;Clm Lacks Pcmkr Reg Form;;4;;D11
 ;;912;;Clm Den No Idtfr Who did DXtst;;4;;D12
 ;;913;;Clm Den Pvdr has Fin Interest;;4;;D13
 ;;914;;Clm Lacks TX Plan on File;;4;;D14
 ;;915;;Clm Lacks Sprvs MD Info;;4;;D15
 ;;919;;Penalty for interest pymt;;15;;225
 ;;922;;Provider Performance Bonus;;16;;161
 ;;927;;Clm/Svc invld noncoverd days;;4;;D17
 ;;928;;Clm/Svc missing DX info;;4;;D18
 ;;929;;Clm Lacks Supporting Dcmnt;;4;;D19
 ;;930;;DOS during lapse in coverage;;4;;200
 ;;931;;Pt resp thru set aside agreemt;;4;;201
 ;;932;;Non Cov Personal/Convenient;;4;;202
 ;;933;;Discontinued/Reduced Service;;4;;203
 ;;934;;Srvc Not Cov Under Ben Plan;;4;;204
 ;;935;;RX discount card proc fee;;3;;205
 ;;936;;NPI Missing;;21;;206
 ;;937;;Invalid NPI format;;21;;207
 ;;938;;NPI Not Matched;;21;;208
 ;;939;;Pt Resp. Bill Other Ins.;;4;;209
 ;;940;;Pymt Adj Precert Not Timely;;4;;210
 ;;941;;NDC not elg for rebate not cov;;4;;211
 ;;942;;Admin Surcharge Not Covered;;4;;212
 ;;943;;Non Compliant with Policy;;4;;213
 ;;944;;Work Comp Non-Compensable;;4;;214
 ;;945;;Subrogation of TP Settlement;;4;;215
 ;;946;;Findings of Review Org.;;4;;216
 ;;947;;Work Comp over UCR;;4;;217
 ;;948;;Work Comp entitlement to ben.;;4;;218
 ;;949;;Work Comp extent of injury;;4;;219
 ;;950;;Work Comp - Bill with Code;;4;;220
 ;;951;;Work Comp - Clm Under Invest;;21;;221
 ;;952;;Max Time/Hours for Provider;;4;;222
 ;;953;;Mandated Fed/State/Local Reg;;4;;223
 ;;954;;Pt ID compromised by ID theft;;4;;224
 ;;956;;Info req from prov not rec/suf;;4;;226
 ;;957;;Pymt Adj Pat. Infor Incmplt;;4;;227
 ;;958;;Req info not prov for proc;;4;;228
 ;;959;;Partial Chg Unall due to TOB;;4;;229
 ;;960;;No CPT/HCPCS to describe svc;;4;;230
 ;;961;;Proc not allowed same day/set;;4;;231
 ;;962;;Institutional Transfer Amt;;4;;232
 ;;963;;Hospital acquired condition;;4;;233
 ;;964;;Proc not paid seperately;;4;;234
 ;;965;;Sales Tax;;4;;235
 ;;966;;Proc/mod not comp,othr,NCCI;;4;;236
 ;;967;;Clm spans elig/inelg cov-PT;;4;;238
 ;;969;;Clm spans elig/inelg cov-rebi;;4;;239
 ;;970;;Clm/Svc miss svc/prod info;;4;;D20
 ;;971;;DX(s) missing or invalid;;4;;D21
 ;;972;;WC Pymt Adj Reason issue separ;;4;;D22
 ;;973;;Other primary coverage;;4;;D23
 ;;975;;Legislative/Regulatory Penalty;;15;;237
 ;;980;;Dx inconsist w pt's birth wt;;4;;240
 ;;981;;Low Income Subsidy copay amt;;14;;241
 ;;982;;Svcs not provided by netwk/pcp;;4;;242
 ;;983;;Svcs not auth'd by network/pcp;;4;;243
 ;;984;;Pmt reduced to zero due to lit;;21;;244
 ;;985;;Prov performance prog withhold;;15;;245
 ;;986;;Non-payable code for req'd rep;;4;;246
 ;;987;;Ded-Prof svc rendered in Inst;;13;;247
 ;;988;;Coins-Prof svc rendrd in Inst;;14;;248
 ;;989;;Clm identified as readmission;;4;;249
 ;;END
