BARADJRK  ;IHS/SD/POT - CREATE ENTRY IN A/R EDI STND CLAIM ADJ REASON ;
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**28**;OCT 26, 2005;Build 92
 ; IHS/SD/CPC HEAT326081 - V1.8 P28 - updated SARs
 ; code cloned from BARADJR7
 ;
EN ; EP
 ; Change Name of these reasons
 S BARD=";;"
 S BARCNT=0
 D BMES^XPDUTL("Updating Adjustment Reasons to A/R Table Entry file Phase 1...")
 F  D CHNGREA2 Q:BARVALUE="END"
 K DIC,DA,X,Y,DIE
 D ^BARVKL0
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
 ;;15;;Wrkrs comp State Fee Sched Adj;;3;;W1
 ;;17;;Clm Den Insured no Cov for NB;;4;;34
 ;;19;;Non Cov Srv PreExist Condition;;4;;51
 ;;20;;Non Cov Srv Routine Exam;;4;;49
 ;;21;;Chrgs Excd Max Allowable Amt;;4;;42
 ;;23;;Pymt Made to PT/Insrd/Res Prty;;4;;100
 ;;27;;Co-payment;;14;;3
 ;;29;;Deductible;;13;;1
 ;;93;;DRG Weight;;16;;68
 ;;122;;Services Not Covered;;4;;46
 ;;125;;Clm Adj Spans Elig/Inelig Date;;4;;141
 ;;134;;Time Limit for Filing Expired;;4;;29
 ;;135;;Duplicate Claim/Service;;3;;18
 ;;141;;Regulatory surcharge/allowance;;4;;137
 ;;164;;Pymt Den Prior Info Incorrect;;4;;129
 ;;165;;Primary Payer Amount;;4;;71
 ;;166;;Pt cannot be ID'd as insured;;4;;31
 ;;167;;Lifetime max benefit reached;;4;;35
 ;;168;;Disc Agrmt Pref Prov Contract;;4;;41
 ;;169;;Non Cov Srv Not Medically Nec;;4;;50
 ;;178;;Prov Not Elig to Provd Serv/Bl;;4;;52
 ;;180;;Svc not furnished direct to pt;;4;;112
 ;;300;;Incorrect attchmt/documnt rcvd;;4;;250
 ;;301;;Incomplete or deficient docs;;4;;251
 ;;302;;Doc reqd to adjudicate clm/svc;;4;;252
 ;;303;;Sequestration-red in fed pymt;;15;;253
 ;;304;;No bnfts-Submit svcs to med pl;;4;;254
 ;;305;;Clm pending due to litigation;;21;;255
 ;;306;;Not payable per mngd care cont;;4;;256
 ;;307;;Clm pndng during prem grace pd;;21;;257
 ;;308;;Clm not cvrd - pt incarcerated;;4;;258
 ;;401;;ST-mandated rqrmt for property;;22;;P1
 ;;402;;No WC liab-Not wrk rel inj/ill;;4;;P2
 ;;403;;WC case settled, pt resp;;4;;P3
 ;;404;;WC case adjudicated as non-WC;;4;;P4
 ;;405;;Based on payer reas & cust fee;;4;;P5
 ;;406;;Based on entitlement to bnfts;;4;;P6
 ;;407;;Resub w/correct proc code;;22;;P7
 ;;408;;Claim is under investigation.;;22;;P8
 ;;409;;No CPT/HCPCS to describe svc;;4;;P9
 ;;410;;Pmt reduc to zero, litigation;;4;;P10
 ;;411;;Clm pending due to litigation;;21;;P11
 ;;412;;WC fee schedule adjustment;;4;;P12
 ;;413;;Pmt red/den due to WC policies;;4;;P13
 ;;414;;Pmt incl w/pmt for other svc;;4;;P14
 ;;415;;WC Med Trtmt Guideline adjstmt;;4;;P15
 ;;416;;Med prov not auth'd for WC;;4;;P16
 ;;417;;Referral not auth'd by attndng;;15;;P17
 ;;418;;Proc not listed/comp svc allwd;;4;;P18
 ;;419;;No pymt due,proc fee is zero;;4;;P19
 ;;420;;Svc not pd under oupt fee schd;;4;;P20
 ;;421;;TPL Payment denied-MPC/PIP;;4;;P21
 ;;422;;TPL Payment adjusted-MPC/PIP;;4;;P22
 ;;423;;TPL Fee Sch Adjust-MPC/PIP;;4;;P23
 ;;602;;Coinsurance Amount;;14;;2
 ;;604;;Proc code inconst w/mod;;4;;4
 ;;605;;Proc Code/TOB inconst w/POS;;4;;5
 ;;606;;Proc/Rev Code inconst w/pt age;;4;;6
 ;;607;;Proc Code inconst w/pt gender;;4;;7
 ;;608;;Proc Code inconst w/Prov Type;;4;;8
 ;;609;;DX inconst w/pt age;;4;;9
 ;;610;;DX inconst w/pt gender;;4;;10
 ;;611;;DX inconst w/proc;;4;;11
 ;;612;;DX inconst w/Prov Type;;4;;12
 ;;613;;Date of death precedes DOS;;4;;13
 ;;614;;Date of birth follows DOS;;4;;14
 ;;615;;Auth Number missing/invalid;;4;;15
 ;;616;;Clm/Srvc Lacks Info For Adjud;;4;;16
 ;;617;;Pymt Adj Info Incomplete;;4;;17
 ;;619;;Clm Denied work related injury;;4;;19
 ;;620;;Clm Den Injry Covrd Liab Carr;;4;;20
 ;;621;;Inj liability of no-fault ins;;4;;21
 ;;622;;Covd by another payer per COB;;4;;22
 ;;623;;Chrgs pd/adj by another payer;;4;;23
 ;;624;;Chrgs covd by cap agreement;;4;;24
 ;;625;;Pymt Den Stoploss Ded Not Met;;4;;25
 ;;626;;Expnse Incrrd Prior to Coverag;;4;;26
 ;;627;;Expnse Incrrd Aft Cov Termnatd;;4;;27
 ;;628;;Coverage Not in Effect on DOS;;4;;28
 ;;630;;Requirements for elig not met;;4;;30
 ;;632;;Records Indicate Dep Not Elig;;4;;32
 ;;633;;Clm DenInsured No Depend Cove;;4;;33
 ;;636;;Bal Does not Exceed CoPymt Amt;;4;;36
 ;;637;;Bal Does not Exceed Deductible;;4;;37
 ;;638;;Serv Not Auth by Designtd Prov;;4;;38
 ;;639;;Service denied at prior auth;;4;;39
 ;;640;;Criteria for ER/UC not met;;4;;40
 ;;643;;Gramm-Rudman reduction;;4;;43
 ;;644;;Prompt Pay Discount;;4;;44
 ;;645;;Chgs exceed fee schd/max allow;;4;;45
 ;;647;;Dx not Covered/Missing/Invalid;;4;;47
 ;;648;;Procedure Not Covered;;4;;48
 ;;653;;Srv by immed relative not cov;;4;;53
 ;;654;;Mult Prov Not Cov in This Case;;4;;54
 ;;655;;Clm Srv deemed experimental;;4;;55
 ;;656;;Proc not deemed as effective;;4;;56
 ;;657;;Pymt Den Info Submtd Not Suff;;4;;57
 ;;658;;Invalid/inappropriate POS;;4;;58
 ;;659;;Mult surgery/concurrent rules;;4;;59
 ;;660;;Outpt srv w/in inpt proximity;;4;;60
 ;;661;;Failed to obtain sec surg opin;;21;;61
 ;;662;;Pymt Den/Reducd No Precrt Auth;;15;;62
 ;;663;;Correction to Prior Claim;;4;;63
 ;;664;;Denial reversed per Med Review;;22;;64
 ;;665;;Pmt Den/Reducd Proc Code Wrong;;4;;65
 ;;666;;Blood Deductible;;13;;66
 ;;667;;Lifetime Reserve Days;;4;;67
 ;;669;;Day Outlier Amount;;4;;69
 ;;670;;Cost Outlr Adj for Addl Cost;;4;;70
 ;;672;;Coinsurance Day;;14;;72
 ;;673;;Administrative Days;;4;;73
 ;;674;;Indirect Med Educ Adjustment;;4;;74
 ;;675;;Direct Med Educ Adjustment;;4;;75
 ;;676;;Disproportionate Share Adj;;4;;76
 ;;677;;Covered Days;;4;;77
 ;;678;;Non Covered Days/Room Chrg Adj;;4;;78
 ;;679;;Cost Report Days;;4;;79
 ;;680;;Outlier Days;;4;;80
 ;;681;;Discharges;;4;;81
 ;;682;;PIP days;;4;;82
 ;;683;;Total visits;;4;;83
 ;;684;;Capital Adjustment;;4;;84
 ;;685;;Patient Interest adjustment;;4;;85
 ;;686;;Statutory Adjustment;;4;;86
 ;;687;;Transfer Amount;;4;;87
 ;;688;;Adj Amt Rep Rec Prior OvrPymt;;21;;88
 ;;689;;Pro Fees Removed from Charges;;4;;89
 ;;690;;Ingredient Cost Adjustment;;4;;90
 ;;691;;Dispensing Fee Adjustment;;3;;91
 ;;692;;Claim Paid In Full;;22;;92
 ;;693;;No Claim level adjustments;;22;;93
 ;;694;;Processed in excess of Charges;;16;;94
 ;;695;;Plan proc not followed;;4;;95
 ;;696;;Non Covered Charge(s);;4;;96
 ;;697;;Pymt IncludeAllow for Diff Srv;;4;;97
 ;;698;;Hosp Must File Medicare Claim;;21;;98
 ;;699;;MSP Adjustment Amount;;4;;99
 ;;701;;Predetermined Antcptd Pymt;;21;;101
 ;;702;;Major Medical Adjustment;;4;;102
 ;;703;;Provider Promotional Discount;;4;;103
 ;;704;;Managed Care Withholding;;4;;104
 ;;705;;Tax Withholding;;4;;105
 ;;706;;Pt Pymt Optn/Elect Not inEffct;;4;;106
 ;;707;;Qualifying srv not identified;;4;;107
 ;;708;;Rent/Purch Guidelines Not Met;;4;;108
 ;;709;;Clm not Covered by this Payer;;4;;109
 ;;710;;Billing Date Precedes DOS;;4;;110
 ;;711;;Prov did not accept assignment;;4;;111
 ;;713;;Pymt Den Srv Prov Outside US;;4;;113
 ;;714;;Proc/Srv Not Approved by FDA;;4;;114
 ;;715;;Proc postponed/cancelled;;4;;115
 ;;716;;Req not met pt indemnification;;4;;116
 ;;717;;Pymt Adj Transp Covrd CloseFac;;4;;117
 ;;718;;Charges Redcd for ESRD Support;;4;;118
 ;;719;;Benefit maximum reached;;4;;119
 ;;720;;Pt Cov by Managed Care Plan;;4;;120
 ;;721;;Indemnification Adjustment;;4;;121
 ;;722;;Psychiatric Reduction;;4;;122
 ;;723;;Payer refund due to ovrpymt;;22;;123
 ;;724;;Payer refund Amt - not our pt;;22;;124
 ;;725;;Pymt adj due to billing errors;;4;;125
 ;;726;;Deductible - Major Medical;;13;;126
 ;;727;;Coinsurance - Major Medical;;14;;127
 ;;728;;Newbrn srv incl w/mother allow;;4;;128
 ;;730;;Claim Submission Fee;;4;;130
 ;;731;;Clm Spec Negotiated Discount;;4;;131
 ;;732;;Pre-Arranged Demo Proj Adj;;4;;132
 ;;733;;Svc line pending further rev;;21;;133
 ;;734;;Tech Fees Removed From Chrgs;;4;;134
 ;;735;;Clm Den Intrm bill Cannot Proc;;4;;135
 ;;736;;Clm Adj Plan Proc Prior Payer;;4;;136
 ;;738;;Clm Den Appeal Proc Not Follow;;4;;138
 ;;739;;Contracted funding agreement;;4;;139
 ;;740;;Pt ID# & Name do not match;;4;;140
 ;;742;;Clm Adj Mnth Medcd Pt Liab Amt;;4;;142
 ;;743;;Portion of Payment Deferred;;21;;143
 ;;744;;Incentive Adjustment;;4;;144
 ;;745;;Premium Pymt Withholding;;4;;145
 ;;746;;Diagnosis invalid for DOS;;4;;146
 ;;747;;Prv Rate Expired/Not on file;;4;;147
 ;;748;;Clm/Srv Rej Info Incomplete;;4;;148
 ;;749;;Lifetime benefit max reached;;4;;149
 ;;750;;PayAdj No Info for Lgth of Svc;;4;;151
 ;;751;;PayAdj No Info for Lgth of Svc;;4;;152
 ;;752;;Info does not support dosage;;4;;153
 ;;753;;Days supply not supported;;4;;154
 ;;754;;PayAdj No Info for Lvl of Svc;;4;;150
 ;;755;;Clm Den Pt Refused Srv/Proc;;4;;155
 ;;756;;Flex Spending Acct Pymnt;;22;;156
 ;;757;;Service/proc result of war;;4;;157
 ;;758;;Pmt Den/Red Outside US;;4;;158
 ;;759;;Srv prov result of terrorism;;4;;159
 ;;760;;Injury is a benefit exclusion;;4;;160
 ;;762;;Property & Casualty Require;;4;;162
 ;;763;;Attachment/Doc not received;;21;;163
 ;;764;;Attachment/Doc not rec timely;;4;;164
 ;;765;;Referral absent/exceeded;;15;;165
 ;;766;;Payer Resp for Processing Over;;4;;166
 ;;767;;Diagnosis(s) not covered;;4;;167
 ;;768;;Ben not available under plan;;4;;168
 ;;769;;Alternate benefit provided;;4;;169
 ;;770;;Type of provider not payable;;4;;170
 ;;771;;Type of prov/fac not payable;;4;;171
 ;;772;;Pymt Adj Specialty Provider;;4;;172
 ;;773;;Svc not prescribd by physician;;4;;173
 ;;774;;Svc not prescribd prior to del;;4;;174
 ;;775;;Prescription is incomplete;;4;;175
 ;;776;;Prescription is not current;;4;;176
 ;;777;;Pymt Den PT Not Met Reqrmts;;4;;177
 ;;778;;Pymt Adj Pt Spend Dn Not Met;;4;;178
 ;;779;;Pymt Adj Pt Waiting Req Not Me;;4;;179
 ;;780;;Pymt Adj Pt Residency Req Not;;4;;180
 ;;781;;Pymt Adj Proc Code Inv DOS;;4;;181
 ;;782;;Pymt Adj Modifier Inv DOS;;4;;182
 ;;783;;Ref Prov not Elig to Refer;;4;;183
 ;;784;;Order Prov not Elig to Order;;4;;184
 ;;785;;Rend Prov not Elig to Prvd Svc;;4;;185
 ;;786;;Change in level of care;;4;;186
 ;;787;;Consumer spending account pymt;;22;;187
 ;;788;;Proc Cov Only for FDA Rec;;4;;188
 ;;789;;NOC/Unlisted Proc Code Used;;4;;189
 ;;790;;Pymt Incl in SNF Qual Stay;;4;;190
 ;;791;;Clm Den Not Work Related No WC;;4;;191
 ;;792;;Non Std ADJ Code Paper RA;;4;;192
 ;;793;;Clm Properly Proc First Time;;22;;193
 ;;794;;Prov not payble for anesthesia;;4;;194
 ;;795;;Pymt Adj Err Refund is oth pyr;;19;;195
 ;;796;;Clm/Svc Den Prior Payor Determ;;4;;196
 ;;797;;Precert/Authorization absent;;4;;197
 ;;798;;Precert/Authorization exceeded;;4;;198
 ;;799;;Rev/Proc Code do not match;;4;;199
 ;;800;;Patient Refund Amount;;19;;A0
 ;;801;;Claim Denied Charges;;4;;A1
 ;;802;;Contractual Adjustment;;4;;A2
 ;;803;;MSP liability met;;4;;A3
 ;;804;;Medicare claim PPS Day Outlier;;4;;A4
 ;;805;;Medicare Clm PPS Cost Outlier;;4;;A5
 ;;806;;PriorHosp 30day transf not met;;4;;A6
 ;;807;;Presumptive Pymt Adjustment;;4;;A7
 ;;808;;Clm Den Ungroupable DRG;;4;;A8
 ;;822;;WC Pymt Den, no other code app;;4;;W2
 ;;823;;Pmt incl w/pmt for other svc;;4;;W3
 ;;824;;WC Med Trtmt Guideline adjstmt;;4;;W4
 ;;825;;Med prov not auth'd for WC;;4;;W5
 ;;826;;Referral not auth'd by attndng;;15;;W6
 ;;827;;Proc not listed/comp svc allwd;;22;;W7
 ;;828;;No pymt due,proc fee is zero;;22;;W8
 ;;829;;Svc not pd under oupt fee schd;;4;;W9
 ;;841;;Payment denied;;4;;Y1
 ;;842;;Payment adjusted;;4;;Y2
 ;;843;;Fee schedule adjustment;;22;;Y3
 ;;851;;Non covered visit;;4;;B1
 ;;852;;Covered Visits;;4;;B2
 ;;853;;Covered charges;;4;;B3
 ;;854;;Late Filing Penalty;;15;;B4
 ;;855;;Guidelines Not Met/Exceeded;;4;;B5
 ;;856;;Pymt Adj Due to Type of Prvdr;;4;;B6
 ;;857;;Prov not cert for proc/svc DOS;;4;;B7
 ;;858;;Altrnt Svc Avail, s/b utilized;;4;;B8
 ;;859;;Srvc Not Covd Pt Enrll Hospice;;4;;B9
 ;;860;;Amt Reduced Portion of Proc pd;;4;;B10
 ;;861;;Clm transfer to proper payer;;4;;B11
 ;;862;;Service not documented in MR;;4;;B12
 ;;863;;Payment made in prev payment;;4;;B13
 ;;864;;Pymt Den 1 VT Per Prov Per Day;;4;;B14
 ;;865;;Pymt Adj Proc Not Pd Separate;;4;;B15
 ;;866;;PymtAdj New Pt Qualifn Not Met;;4;;B16
 ;;867;;Adj Nt Prescr, RX Not Complete;;4;;B17
 ;;868;;Pymt Den Proc/Mod Code Invalid;;4;;B18
 ;;869;;Clm Adj Post Rev Org Finding;;4;;B19
 ;;870;;PymtAdj Proc Prtly by DiffProv;;4;;B20
 ;;871;;Charge red srv by another prov;;4;;B21
 ;;872;;Pymt Adj Based on Diagnosis;;4;;B22
 ;;873;;Pymt Den Prov Fail Profcy Test;;4;;B23
 ;;END
