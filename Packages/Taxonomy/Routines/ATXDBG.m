ATXDBG ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI NEPHROPATHY DXS
 ;
 ; This routine loads Taxonomy BQI NEPHROPATHY DXS
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"250.40 ")
 ;;1
 ;;21,"403.0 ")
 ;;2
 ;;21,"405.11 ")
 ;;3
 ;;21,"405.91 ")
 ;;4
 ;;21,"580.0 ")
 ;;5
 ;;21,"753.0 ")
 ;;6
 ;;21,"791.0 ")
 ;;7
 ;;21,"B52.0 ")
 ;;62
 ;;21,"E08.21 ")
 ;;63
 ;;21,"E08.22 ")
 ;;64
 ;;21,"E08.29 ")
 ;;65
 ;;21,"E09.21 ")
 ;;66
 ;;21,"E09.22 ")
 ;;67
 ;;21,"E09.29 ")
 ;;68
 ;;21,"E10.21 ")
 ;;17
 ;;21,"E10.22 ")
 ;;18
 ;;21,"E10.29 ")
 ;;19
 ;;21,"E11.21 ")
 ;;11
 ;;21,"E11.22 ")
 ;;12
 ;;21,"E11.29 ")
 ;;13
 ;;21,"E13.21 ")
 ;;14
 ;;21,"E13.22 ")
 ;;15
 ;;21,"E13.29 ")
 ;;16
 ;;21,"I12.0 ")
 ;;21
 ;;21,"I12.9 ")
 ;;20
 ;;21,"I15.0 ")
 ;;22
 ;;21,"I15.1 ")
 ;;24
 ;;21,"I15.8 ")
 ;;23
 ;;21,"M32.14 ")
 ;;99
 ;;21,"M32.15 ")
 ;;100
 ;;21,"M35.04 ")
 ;;101
 ;;21,"N00.0 ")
 ;;26
 ;;21,"N00.1 ")
 ;;27
 ;;21,"N00.2 ")
 ;;28
 ;;21,"N00.3 ")
 ;;29
 ;;21,"N00.4 ")
 ;;30
 ;;21,"N00.5 ")
 ;;31
 ;;21,"N00.6 ")
 ;;32
 ;;21,"N00.7 ")
 ;;33
 ;;21,"N00.8 ")
 ;;45
 ;;21,"N00.9 ")
 ;;46
 ;;21,"N01.0 ")
 ;;34
 ;;21,"N01.1 ")
 ;;35
 ;;21,"N01.2 ")
 ;;36
 ;;21,"N01.3 ")
 ;;37
 ;;21,"N01.4 ")
 ;;38
 ;;21,"N01.5 ")
 ;;39
 ;;21,"N01.6 ")
 ;;40
 ;;21,"N01.7 ")
 ;;41
 ;;21,"N01.8 ")
 ;;42
 ;;21,"N01.9 ")
 ;;43
 ;;21,"N02.0 ")
 ;;60
 ;;21,"N02.1 ")
 ;;48
 ;;21,"N02.2 ")
 ;;49
 ;;21,"N02.3 ")
 ;;50
 ;;21,"N02.4 ")
 ;;53
 ;;21,"N02.5 ")
 ;;54
 ;;21,"N02.6 ")
 ;;55
 ;;21,"N02.7 ")
 ;;56
 ;;21,"N02.8 ")
 ;;69
 ;;21,"N02.9 ")
 ;;72
 ;;21,"N03.0 ")
 ;;82
 ;;21,"N03.1 ")
 ;;75
 ;;21,"N03.2 ")
 ;;74
 ;;21,"N03.3 ")
 ;;76
 ;;21,"N03.4 ")
 ;;77
 ;;21,"N03.5 ")
 ;;78
 ;;21,"N03.6 ")
 ;;79
 ;;21,"N03.7 ")
 ;;80
 ;;21,"N03.8 ")
 ;;81
 ;;21,"N03.9 ")
 ;;83
 ;;21,"N04.0 ")
 ;;61
 ;;21,"N04.1 ")
 ;;51
 ;;21,"N04.2 ")
 ;;52
 ;;21,"N04.3 ")
 ;;57
 ;;21,"N04.4 ")
 ;;47
 ;;21,"N04.5 ")
 ;;58
 ;;21,"N04.6 ")
 ;;59
 ;;21,"N04.7 ")
 ;;70
 ;;21,"N04.8 ")
 ;;71
 ;;21,"N04.9 ")
 ;;73
 ;;21,"N05.0 ")
 ;;103
 ;;21,"N05.1 ")
 ;;104
 ;;21,"N05.2 ")
 ;;85
 ;;21,"N05.3 ")
 ;;88
 ;;21,"N05.4 ")
 ;;89
 ;;21,"N05.5 ")
 ;;90
 ;;21,"N05.6 ")
 ;;105
 ;;21,"N05.7 ")
 ;;106
 ;;21,"N05.8 ")
 ;;107
 ;;21,"N05.9 ")
 ;;84
 ;;21,"N06.0 ")
 ;;108
 ;;21,"N06.1 ")
 ;;109
 ;;21,"N06.2 ")
 ;;86
 ;;21,"N06.3 ")
 ;;91
 ;;21,"N06.4 ")
 ;;92
 ;;21,"N06.5 ")
 ;;93
 ;;21,"N06.6 ")
 ;;110
 ;;21,"N06.7 ")
 ;;111
 ;;21,"N06.8 ")
 ;;112
 ;;21,"N06.9 ")
 ;;125
 ;;21,"N07.0 ")
 ;;113
 ;;21,"N07.1 ")
 ;;114
 ;;21,"N07.2 ")
 ;;87
 ;;21,"N07.3 ")
 ;;94
 ;;21,"N07.4 ")
 ;;95
 ;;21,"N07.5 ")
 ;;96
 ;;21,"N07.6 ")
 ;;115
 ;;21,"N07.7 ")
 ;;116
 ;;21,"N07.8 ")
 ;;117
 ;;21,"N07.9 ")
 ;;126
 ;;21,"N08. ")
 ;;44
 ;;21,"N14.0 ")
 ;;118
 ;;21,"N14.1 ")
 ;;119
 ;;21,"N14.2 ")
 ;;120
 ;;21,"N14.3 ")
 ;;121
 ;;21,"N14.4 ")
 ;;122
 ;;21,"N15.0 ")
 ;;123
 ;;21,"N15.8 ")
 ;;124
 ;;21,"N15.9 ")
 ;;127
 ;;21,"N16. ")
 ;;102
 ;;21,"N17.0 ")
 ;;128
 ;;21,"N17.1 ")
 ;;97
 ;;21,"N17.2 ")
 ;;98
 ;;21,"N17.8 ")
 ;;129
 ;;21,"N17.9 ")
 ;;130
 ;;21,"N18.1 ")
 ;;131
 ;;21,"N18.2 ")
 ;;132
 ;;21,"N18.3 ")
 ;;133
 ;;21,"N18.4 ")
 ;;134
 ;;21,"N18.5 ")
 ;;135
 ;;21,"N18.6 ")
 ;;136
 ;;21,"N18.9 ")
 ;;137
 ;;21,"N19. ")
 ;;138
 ;;21,"N25.0 ")
 ;;141
 ;;21,"N25.1 ")
 ;;142
 ;;21,"N25.81 ")
 ;;143
 ;;21,"N25.89 ")
 ;;144
 ;;21,"N25.9 ")
 ;;145
 ;;21,"N26.1 ")
 ;;139
 ;;21,"N26.2 ")
 ;;25
 ;;21,"N26.9 ")
 ;;140
 ;;21,"Q60.0 ")
 ;;146
 ;;21,"Q60.1 ")
 ;;147
 ;;21,"Q60.2 ")
 ;;148
 ;;21,"Q60.3 ")
 ;;149
 ;;21,"Q60.4 ")
 ;;150
 ;;21,"Q60.5 ")
 ;;151
 ;;21,"Q60.6 ")
 ;;152
 ;;21,"Q61.00 ")
 ;;153
 ;;21,"Q61.01 ")
 ;;155
 ;;21,"Q61.02 ")
 ;;162
 ;;21,"Q61.11 ")
 ;;158
 ;;21,"Q61.19 ")
 ;;159
 ;;21,"Q61.2 ")
 ;;157
 ;;21,"Q61.3 ")
 ;;156
 ;;21,"Q61.4 ")
 ;;160
 ;;21,"Q61.5 ")
 ;;161
 ;;21,"Q61.8 ")
 ;;163
 ;;21,"Q61.9 ")
 ;;154
 ;;21,"R80.0 ")
 ;;164
 ;;21,"R80.1 ")
 ;;165
 ;;21,"R80.3 ")
 ;;166
 ;;21,"R80.8 ")
 ;;167
 ;;21,"R80.9 ")
 ;;168
 ;;21,"R81. ")
 ;;173
 ;;21,"R82.0 ")
 ;;169
 ;;21,"R82.1 ")
 ;;171
 ;;21,"R82.2 ")
 ;;172
 ;;21,"R82.3 ")
 ;;170
 ;;21,"R82.4 ")
 ;;174
 ;;21,"R82.5 ")
 ;;176
 ;;21,"R82.6 ")
 ;;177
 ;;21,"R82.7 ")
 ;;178
 ;;21,"R82.8 ")
 ;;179
 ;;21,"R82.90 ")
 ;;180
 ;;21,"R82.91 ")
 ;;181
 ;;21,"R82.99 ")
 ;;175
 ;;21,"V42.0 ")
 ;;8
 ;;21,"V45.1 ")
 ;;9
 ;;21,"V56.0 ")
 ;;10
 ;;21,"Z48.22 ")
 ;;182
 ;;21,"Z49.01 ")
 ;;187
 ;;21,"Z49.02 ")
 ;;188
 ;;21,"Z49.31 ")
 ;;186
 ;;21,"Z49.32 ")
 ;;189
 ;;21,"Z91.15 ")
 ;;185
 ;;21,"Z94.0 ")
 ;;183
 ;;21,"Z99.2 ")
 ;;184
 ;;9002226,1846,.01)
 ;;BQI NEPHROPATHY DXS
 ;;9002226,1846,.02)
 ;;Nephropathy
 ;;9002226,1846,.04)
 ;;n
 ;;9002226,1846,.06)
 ;;@
 ;;9002226,1846,.08)
 ;;0
 ;;9002226,1846,.09)
 ;;3140317
 ;;9002226,1846,.11)
 ;;@
 ;;9002226,1846,.12)
 ;;31
 ;;9002226,1846,.13)
 ;;1
 ;;9002226,1846,.14)
 ;;@
 ;;9002226,1846,.15)
 ;;80
 ;;9002226,1846,.16)
 ;;@
 ;;9002226,1846,.17)
 ;;@
 ;;9002226,1846,3101)
 ;;@
 ;;9002226.01101,"1846,1",.01)
 ;;Nephropathy search for CVD Significant Risk Diagnostic tag and the CVD 
 ;;9002226.01101,"1846,2",.01)
 ;;Highest Risk: No ACEI/ARB Best Practice Prompt.
 ;;9002226.02101,"1846,250.40 ",.01)
 ;;250.40
 ;;9002226.02101,"1846,250.40 ",.02)
 ;;250.43
 ;;9002226.02101,"1846,250.40 ",.03)
 ;;1
 ;;9002226.02101,"1846,403.0 ",.01)
 ;;403.0
 ;;9002226.02101,"1846,403.0 ",.02)
 ;;405.01
 ;;9002226.02101,"1846,403.0 ",.03)
 ;;1
 ;;9002226.02101,"1846,405.11 ",.01)
 ;;405.11
 ;;9002226.02101,"1846,405.11 ",.02)
 ;;405.11
 ;;9002226.02101,"1846,405.11 ",.03)
 ;;1
 ;;9002226.02101,"1846,405.91 ",.01)
 ;;405.91
 ;;9002226.02101,"1846,405.91 ",.02)
 ;;405.91
 ;;9002226.02101,"1846,405.91 ",.03)
 ;;1
 ;;9002226.02101,"1846,580.0 ",.01)
 ;;580.0
 ;;9002226.02101,"1846,580.0 ",.02)
 ;;588.9
 ;;9002226.02101,"1846,580.0 ",.03)
 ;;1
 ;;9002226.02101,"1846,753.0 ",.01)
 ;;753.0
 ;;9002226.02101,"1846,753.0 ",.02)
 ;;753.19
 ;;9002226.02101,"1846,753.0 ",.03)
 ;;1
 ;;9002226.02101,"1846,791.0 ",.01)
 ;;791.0
 ;;9002226.02101,"1846,791.0 ",.02)
 ;;791.0
 ;;9002226.02101,"1846,791.0 ",.03)
 ;;1
 ;;9002226.02101,"1846,B52.0 ",.01)
 ;;B52.0 
 ;;9002226.02101,"1846,B52.0 ",.02)
 ;;B52.0 
 ;;9002226.02101,"1846,B52.0 ",.03)
 ;;30
 ;;9002226.02101,"1846,E08.21 ",.01)
 ;;E08.21 
 ;;9002226.02101,"1846,E08.21 ",.02)
 ;;E08.21 
 ;;9002226.02101,"1846,E08.21 ",.03)
 ;;30
 ;;9002226.02101,"1846,E08.22 ",.01)
 ;;E08.22 
 ;;9002226.02101,"1846,E08.22 ",.02)
 ;;E08.22 
 ;;9002226.02101,"1846,E08.22 ",.03)
 ;;30
 ;;9002226.02101,"1846,E08.29 ",.01)
 ;;E08.29 
 ;;9002226.02101,"1846,E08.29 ",.02)
 ;;E08.29 
 ;;9002226.02101,"1846,E08.29 ",.03)
 ;;30
 ;;9002226.02101,"1846,E09.21 ",.01)
 ;;E09.21 
 ;;9002226.02101,"1846,E09.21 ",.02)
 ;;E09.21 
 ;;9002226.02101,"1846,E09.21 ",.03)
 ;;30
 ;;9002226.02101,"1846,E09.22 ",.01)
 ;;E09.22 
 ;;9002226.02101,"1846,E09.22 ",.02)
 ;;E09.22 
 ;;9002226.02101,"1846,E09.22 ",.03)
 ;;30
 ;;9002226.02101,"1846,E09.29 ",.01)
 ;;E09.29 
 ;;9002226.02101,"1846,E09.29 ",.02)
 ;;E09.29 
 ;;9002226.02101,"1846,E09.29 ",.03)
 ;;30
 ;;9002226.02101,"1846,E10.21 ",.01)
 ;;E10.21 
 ;;9002226.02101,"1846,E10.21 ",.02)
 ;;E10.21 
 ;;9002226.02101,"1846,E10.21 ",.03)
 ;;30
 ;;9002226.02101,"1846,E10.22 ",.01)
 ;;E10.22 
 ;;9002226.02101,"1846,E10.22 ",.02)
 ;;E10.22 
 ;;9002226.02101,"1846,E10.22 ",.03)
 ;;30
 ;;9002226.02101,"1846,E10.29 ",.01)
 ;;E10.29 
 ;;9002226.02101,"1846,E10.29 ",.02)
 ;;E10.29 
 ;;9002226.02101,"1846,E10.29 ",.03)
 ;;30
 ;;9002226.02101,"1846,E11.21 ",.01)
 ;;E11.21 
 ;;9002226.02101,"1846,E11.21 ",.02)
 ;;E11.21 
 ;;9002226.02101,"1846,E11.21 ",.03)
 ;;30
 ;;9002226.02101,"1846,E11.22 ",.01)
 ;;E11.22 
 ;;9002226.02101,"1846,E11.22 ",.02)
 ;;E11.22 
 ;;9002226.02101,"1846,E11.22 ",.03)
 ;;30
 ;;9002226.02101,"1846,E11.29 ",.01)
 ;;E11.29 
 ;;9002226.02101,"1846,E11.29 ",.02)
 ;;E11.29 
 ;;9002226.02101,"1846,E11.29 ",.03)
 ;;30
 ;;9002226.02101,"1846,E13.21 ",.01)
 ;;E13.21 
 ;;9002226.02101,"1846,E13.21 ",.02)
 ;;E13.21 
 ;;9002226.02101,"1846,E13.21 ",.03)
 ;;30
 ;;9002226.02101,"1846,E13.22 ",.01)
 ;;E13.22 
 ;;9002226.02101,"1846,E13.22 ",.02)
 ;;E13.22 
 ;;9002226.02101,"1846,E13.22 ",.03)
 ;;30
 ;;9002226.02101,"1846,E13.29 ",.01)
 ;;E13.29 
 ;;9002226.02101,"1846,E13.29 ",.02)
 ;;E13.29 
 ;;9002226.02101,"1846,E13.29 ",.03)
 ;;30
 ;;9002226.02101,"1846,I12.0 ",.01)
 ;;I12.0 
 ;;9002226.02101,"1846,I12.0 ",.02)
 ;;I12.0 
 ;;9002226.02101,"1846,I12.0 ",.03)
 ;;30
 ;;9002226.02101,"1846,I12.9 ",.01)
 ;;I12.9 
 ;;9002226.02101,"1846,I12.9 ",.02)
 ;;I12.9 
 ;;9002226.02101,"1846,I12.9 ",.03)
 ;;30
 ;;9002226.02101,"1846,I15.0 ",.01)
 ;;I15.0 
 ;;9002226.02101,"1846,I15.0 ",.02)
 ;;I15.0 
 ;;9002226.02101,"1846,I15.0 ",.03)
 ;;30
 ;;9002226.02101,"1846,I15.1 ",.01)
 ;;I15.1 
 ;;9002226.02101,"1846,I15.1 ",.02)
 ;;I15.1 
 ;;9002226.02101,"1846,I15.1 ",.03)
 ;;30
 ;;9002226.02101,"1846,I15.8 ",.01)
 ;;I15.8 
 ;;9002226.02101,"1846,I15.8 ",.02)
 ;;I15.8 
 ;;9002226.02101,"1846,I15.8 ",.03)
 ;;30
 ;;9002226.02101,"1846,M32.14 ",.01)
 ;;M32.14 
 ;;9002226.02101,"1846,M32.14 ",.02)
 ;;M32.14 
 ;;9002226.02101,"1846,M32.14 ",.03)
 ;;30
 ;;9002226.02101,"1846,M32.15 ",.01)
 ;;M32.15 
 ;;9002226.02101,"1846,M32.15 ",.02)
 ;;M32.15 
 ;;9002226.02101,"1846,M32.15 ",.03)
 ;;30
 ;;9002226.02101,"1846,M35.04 ",.01)
 ;;M35.04 
 ;;9002226.02101,"1846,M35.04 ",.02)
 ;;M35.04 
 ;;9002226.02101,"1846,M35.04 ",.03)
 ;;30
 ;;9002226.02101,"1846,N00.0 ",.01)
 ;;N00.0 
 ;;9002226.02101,"1846,N00.0 ",.02)
 ;;N00.0 
 ;;9002226.02101,"1846,N00.0 ",.03)
 ;;30
 ;;9002226.02101,"1846,N00.1 ",.01)
 ;;N00.1 
 ;;9002226.02101,"1846,N00.1 ",.02)
 ;;N00.1 
 ;;9002226.02101,"1846,N00.1 ",.03)
 ;;30
 ;;9002226.02101,"1846,N00.2 ",.01)
 ;;N00.2 
 ;;9002226.02101,"1846,N00.2 ",.02)
 ;;N00.2 
 ;;9002226.02101,"1846,N00.2 ",.03)
 ;;30
 ;;9002226.02101,"1846,N00.3 ",.01)
 ;;N00.3 
 ;;9002226.02101,"1846,N00.3 ",.02)
 ;;N00.3 
 ;;9002226.02101,"1846,N00.3 ",.03)
 ;;30
 ;;9002226.02101,"1846,N00.4 ",.01)
 ;;N00.4 
 ;;9002226.02101,"1846,N00.4 ",.02)
 ;;N00.4 
 ;;9002226.02101,"1846,N00.4 ",.03)
 ;;30
 ;;9002226.02101,"1846,N00.5 ",.01)
 ;;N00.5 
 ;;9002226.02101,"1846,N00.5 ",.02)
 ;;N00.5 
 ;;9002226.02101,"1846,N00.5 ",.03)
 ;;30
 ;;9002226.02101,"1846,N00.6 ",.01)
 ;;N00.6 
 ;;9002226.02101,"1846,N00.6 ",.02)
 ;;N00.6 
 ;;9002226.02101,"1846,N00.6 ",.03)
 ;;30
 ;;9002226.02101,"1846,N00.7 ",.01)
 ;;N00.7 
 ;;9002226.02101,"1846,N00.7 ",.02)
 ;;N00.7 
 ;;9002226.02101,"1846,N00.7 ",.03)
 ;;30
 ;;9002226.02101,"1846,N00.8 ",.01)
 ;;N00.8 
 ;;9002226.02101,"1846,N00.8 ",.02)
 ;;N00.8 
 ;;9002226.02101,"1846,N00.8 ",.03)
 ;;30
 ;;9002226.02101,"1846,N00.9 ",.01)
 ;;N00.9 
 ;;9002226.02101,"1846,N00.9 ",.02)
 ;;N00.9 
 ;;9002226.02101,"1846,N00.9 ",.03)
 ;;30
 ;;9002226.02101,"1846,N01.0 ",.01)
 ;;N01.0 
 ;;9002226.02101,"1846,N01.0 ",.02)
 ;;N01.0 
 ;;9002226.02101,"1846,N01.0 ",.03)
 ;;30
 ;;9002226.02101,"1846,N01.1 ",.01)
 ;;N01.1 
 ;;9002226.02101,"1846,N01.1 ",.02)
 ;;N01.1 
 ;;9002226.02101,"1846,N01.1 ",.03)
 ;;30
 ;;9002226.02101,"1846,N01.2 ",.01)
 ;;N01.2 
 ;;9002226.02101,"1846,N01.2 ",.02)
 ;;N01.2 
 ;;9002226.02101,"1846,N01.2 ",.03)
 ;;30
 ;;9002226.02101,"1846,N01.3 ",.01)
 ;;N01.3 
 ;;9002226.02101,"1846,N01.3 ",.02)
 ;;N01.3 
 ;;9002226.02101,"1846,N01.3 ",.03)
 ;;30
 ;;9002226.02101,"1846,N01.4 ",.01)
 ;;N01.4 
 ;;9002226.02101,"1846,N01.4 ",.02)
 ;;N01.4 
 ;;9002226.02101,"1846,N01.4 ",.03)
 ;;30
 ;;9002226.02101,"1846,N01.5 ",.01)
 ;;N01.5 
 ;;9002226.02101,"1846,N01.5 ",.02)
 ;;N01.5 
 ;;9002226.02101,"1846,N01.5 ",.03)
 ;;30
 ;;9002226.02101,"1846,N01.6 ",.01)
 ;;N01.6 
 ;;9002226.02101,"1846,N01.6 ",.02)
 ;;N01.6 
 ;;9002226.02101,"1846,N01.6 ",.03)
 ;;30
 ;;9002226.02101,"1846,N01.7 ",.01)
 ;;N01.7 
 ;;9002226.02101,"1846,N01.7 ",.02)
 ;;N01.7 
 ;;9002226.02101,"1846,N01.7 ",.03)
 ;;30
 ;;9002226.02101,"1846,N01.8 ",.01)
 ;;N01.8 
 ;;9002226.02101,"1846,N01.8 ",.02)
 ;;N01.8 
 ;;9002226.02101,"1846,N01.8 ",.03)
 ;;30
 ;;9002226.02101,"1846,N01.9 ",.01)
 ;;N01.9 
 ;;9002226.02101,"1846,N01.9 ",.02)
 ;;N01.9 
 ;;9002226.02101,"1846,N01.9 ",.03)
 ;;30
 ;;9002226.02101,"1846,N02.0 ",.01)
 ;;N02.0 
 ;;9002226.02101,"1846,N02.0 ",.02)
 ;;N02.0 
 ;;9002226.02101,"1846,N02.0 ",.03)
 ;;30
 ;;9002226.02101,"1846,N02.1 ",.01)
 ;;N02.1 
 ;;9002226.02101,"1846,N02.1 ",.02)
 ;;N02.1 
 ;;9002226.02101,"1846,N02.1 ",.03)
 ;;30
 ;;9002226.02101,"1846,N02.2 ",.01)
 ;;N02.2 
 ;;9002226.02101,"1846,N02.2 ",.02)
 ;;N02.2 
 ;;9002226.02101,"1846,N02.2 ",.03)
 ;;30
 ;;9002226.02101,"1846,N02.3 ",.01)
 ;;N02.3 
 ;;9002226.02101,"1846,N02.3 ",.02)
 ;;N02.3 
 ;
OTHER ; OTHER ROUTINES
 D ^ATXDBG2
 D ^ATXDBG3
 Q