ATXO4I3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 22, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"06760ZZ ")
 ;;936
 ;;21,"06763DZ ")
 ;;937
 ;;21,"06763ZZ ")
 ;;938
 ;;21,"06764DZ ")
 ;;939
 ;;21,"06764ZZ ")
 ;;940
 ;;21,"06770DZ ")
 ;;941
 ;;21,"06770ZZ ")
 ;;942
 ;;21,"06773DZ ")
 ;;943
 ;;21,"06773ZZ ")
 ;;944
 ;;21,"06774DZ ")
 ;;945
 ;;21,"06774ZZ ")
 ;;946
 ;;21,"06780DZ ")
 ;;947
 ;;21,"06780ZZ ")
 ;;948
 ;;21,"06783DZ ")
 ;;949
 ;;21,"06783ZZ ")
 ;;950
 ;;21,"06784DZ ")
 ;;951
 ;;21,"06784ZZ ")
 ;;952
 ;;21,"06790DZ ")
 ;;953
 ;;21,"06790ZZ ")
 ;;954
 ;;21,"06793DZ ")
 ;;955
 ;;21,"06793ZZ ")
 ;;956
 ;;21,"06794DZ ")
 ;;957
 ;;21,"06794ZZ ")
 ;;958
 ;;21,"067B0DZ ")
 ;;959
 ;;21,"067B0ZZ ")
 ;;960
 ;;21,"067B3DZ ")
 ;;961
 ;;21,"067B3ZZ ")
 ;;962
 ;;21,"067B4DZ ")
 ;;963
 ;;21,"067B4ZZ ")
 ;;964
 ;;21,"067C0DZ ")
 ;;965
 ;;21,"067C0ZZ ")
 ;;966
 ;;21,"067C3DZ ")
 ;;967
 ;;21,"067C3ZZ ")
 ;;968
 ;;21,"067C4DZ ")
 ;;969
 ;;21,"067C4ZZ ")
 ;;970
 ;;21,"067D0DZ ")
 ;;971
 ;;21,"067D0ZZ ")
 ;;972
 ;;21,"067D3DZ ")
 ;;973
 ;;21,"067D3ZZ ")
 ;;974
 ;;21,"067D4DZ ")
 ;;975
 ;;21,"067D4ZZ ")
 ;;976
 ;;21,"067F0DZ ")
 ;;977
 ;;21,"067F0ZZ ")
 ;;978
 ;;21,"067F3DZ ")
 ;;979
 ;;21,"067F3ZZ ")
 ;;980
 ;;21,"067F4DZ ")
 ;;981
 ;;21,"067F4ZZ ")
 ;;982
 ;;21,"067G0DZ ")
 ;;983
 ;;21,"067G0ZZ ")
 ;;984
 ;;21,"067G3DZ ")
 ;;985
 ;;21,"067G3ZZ ")
 ;;986
 ;;21,"067G4DZ ")
 ;;987
 ;;21,"067G4ZZ ")
 ;;988
 ;;21,"067H0DZ ")
 ;;989
 ;;21,"067H0ZZ ")
 ;;990
 ;;21,"067H3DZ ")
 ;;991
 ;;21,"067H3ZZ ")
 ;;992
 ;;21,"067H4DZ ")
 ;;993
 ;;21,"067H4ZZ ")
 ;;994
 ;;21,"067J0DZ ")
 ;;995
 ;;21,"067J0ZZ ")
 ;;996
 ;;21,"067J3DZ ")
 ;;997
 ;;21,"067J3ZZ ")
 ;;998
 ;;21,"067J4DZ ")
 ;;999
 ;;21,"067J4ZZ ")
 ;;1000
 ;;21,"067M0DZ ")
 ;;1001
 ;;21,"067M0ZZ ")
 ;;1002
 ;;21,"067M3DZ ")
 ;;1003
 ;;21,"067M3ZZ ")
 ;;1004
 ;;21,"067M4DZ ")
 ;;1005
 ;;21,"067M4ZZ ")
 ;;1006
 ;;21,"067N0DZ ")
 ;;1007
 ;;21,"067N0ZZ ")
 ;;1008
 ;;21,"067N3DZ ")
 ;;1009
 ;;21,"067N3ZZ ")
 ;;1010
 ;;21,"067N4DZ ")
 ;;1011
 ;;21,"067N4ZZ ")
 ;;1012
 ;;21,"067P0DZ ")
 ;;1013
 ;;21,"067P0ZZ ")
 ;;1014
 ;;21,"067P3DZ ")
 ;;1015
 ;;21,"067P3ZZ ")
 ;;1016
 ;;21,"067P4DZ ")
 ;;1017
 ;;21,"067P4ZZ ")
 ;;1018
 ;;21,"067Q0DZ ")
 ;;1019
 ;;21,"067Q0ZZ ")
 ;;1020
 ;;21,"067Q3DZ ")
 ;;1021
 ;;21,"067Q3ZZ ")
 ;;1022
 ;;21,"067Q4DZ ")
 ;;1023
 ;;21,"067Q4ZZ ")
 ;;1024
 ;;21,"067R0DZ ")
 ;;1025
 ;;21,"067R0ZZ ")
 ;;1026
 ;;21,"067R3DZ ")
 ;;1027
 ;;21,"067R3ZZ ")
 ;;1028
 ;;21,"067R4DZ ")
 ;;1029
 ;;21,"067R4ZZ ")
 ;;1030
 ;;21,"067S0DZ ")
 ;;1031
 ;;21,"067S0ZZ ")
 ;;1032
 ;;21,"067S3DZ ")
 ;;1033
 ;;21,"067S3ZZ ")
 ;;1034
 ;;21,"067S4DZ ")
 ;;1035
 ;;21,"067S4ZZ ")
 ;;1036
 ;;21,"067T0DZ ")
 ;;1037
 ;;21,"067T0ZZ ")
 ;;1038
 ;;21,"067T3DZ ")
 ;;1039
 ;;21,"067T3ZZ ")
 ;;1040
 ;;21,"067T4DZ ")
 ;;1041
 ;;21,"067T4ZZ ")
 ;;1042
 ;;21,"067V0DZ ")
 ;;1043
 ;;21,"067V0ZZ ")
 ;;1044
 ;;21,"067V3DZ ")
 ;;1045
 ;;21,"067V3ZZ ")
 ;;1046
 ;;21,"067V4DZ ")
 ;;1047
 ;;21,"067V4ZZ ")
 ;;1048
 ;;21,"067Y0DZ ")
 ;;1049
 ;;21,"067Y0ZZ ")
 ;;1050
 ;;21,"067Y3DZ ")
 ;;1051
 ;;21,"067Y3ZZ ")
 ;;1052
 ;;21,"067Y4DZ ")
 ;;1053
 ;;21,"067Y4ZZ ")
 ;;1054
 ;;21,"0G560ZZ ")
 ;;1078
 ;;21,"0G563ZZ ")
 ;;1079
 ;;21,"0G564ZZ ")
 ;;1080
 ;;21,"0G570ZZ ")
 ;;1081
 ;;21,"0G573ZZ ")
 ;;1082
 ;;21,"0G574ZZ ")
 ;;1083
 ;;21,"0G580ZZ ")
 ;;1084
 ;;21,"0G583ZZ ")
 ;;1085
 ;;21,"0G584ZZ ")
 ;;1086
 ;;21,"0G590ZZ ")
 ;;1087
 ;;21,"0G593ZZ ")
 ;;1088
 ;;21,"0G594ZZ ")
 ;;1089
 ;;21,"0G5B0ZZ ")
 ;;1090
 ;;21,"0G5B3ZZ ")
 ;;1091
 ;;21,"0G5B4ZZ ")
 ;;1092
 ;;21,"0G5C0ZZ ")
 ;;1093
 ;;21,"0G5C3ZZ ")
 ;;1094
 ;;21,"0G5C4ZZ ")
 ;;1095
 ;;21,"0G5D0ZZ ")
 ;;1096
 ;;21,"0G5D3ZZ ")
 ;;1097
 ;;21,"0G5D4ZZ ")
 ;;1098
 ;;21,"0G5F0ZZ ")
 ;;1099
 ;;21,"0G5F3ZZ ")
 ;;1100
 ;;21,"0G5F4ZZ ")
 ;;1101
 ;;21,"0G9600Z ")
 ;;1102
 ;;21,"0G960ZX ")
 ;;1103
 ;;21,"0G960ZZ ")
 ;;1104
 ;;21,"0G9630Z ")
 ;;1105
 ;;21,"0G963ZX ")
 ;;1106
 ;;21,"0G963ZZ ")
 ;;1107
 ;;21,"0G9640Z ")
 ;;1108
 ;;21,"0G964ZX ")
 ;;1109
 ;;21,"0G964ZZ ")
 ;;1110
 ;;21,"0G9700Z ")
 ;;1111
 ;;21,"0G970ZX ")
 ;;1112
 ;;21,"0G970ZZ ")
 ;;1113
 ;;21,"0G9730Z ")
 ;;1114
 ;;21,"0G973ZX ")
 ;;1115
 ;;21,"0G973ZZ ")
 ;;1116
 ;;21,"0G9740Z ")
 ;;1117
 ;;21,"0G974ZX ")
 ;;1118
 ;;21,"0G974ZZ ")
 ;;1119
 ;;21,"0G9800Z ")
 ;;1120
 ;;21,"0G980ZX ")
 ;;1121
 ;;21,"0G980ZZ ")
 ;;1122
 ;;21,"0G9830Z ")
 ;;1123
 ;;21,"0G983ZX ")
 ;;1124
 ;;21,"0G983ZZ ")
 ;;1125
 ;;21,"0G9840Z ")
 ;;1126
 ;;21,"0G984ZX ")
 ;;1127
 ;;21,"0G984ZZ ")
 ;;1128
 ;;21,"0G9900Z ")
 ;;1129
 ;;21,"0G990ZX ")
 ;;1130
 ;;21,"0G990ZZ ")
 ;;1131
 ;;21,"0G9930Z ")
 ;;1132
 ;;21,"0G993ZX ")
 ;;1133
 ;;21,"0G993ZZ ")
 ;;1134
 ;;21,"0G9940Z ")
 ;;1135
 ;;21,"0G994ZX ")
 ;;1136
 ;;21,"0G994ZZ ")
 ;;1137
 ;;21,"0G9B00Z ")
 ;;1138
 ;;21,"0G9B0ZX ")
 ;;1139
 ;;21,"0G9B0ZZ ")
 ;;1140
 ;;21,"0G9B30Z ")
 ;;1141
 ;;21,"0G9B3ZX ")
 ;;1142
 ;;21,"0G9B3ZZ ")
 ;;1143
 ;;21,"0G9B40Z ")
 ;;1144
 ;;21,"0G9B4ZX ")
 ;;1145
 ;;21,"0G9B4ZZ ")
 ;;1146
 ;;21,"0G9C00Z ")
 ;;1147
 ;;21,"0G9C0ZX ")
 ;;1148
 ;;21,"0G9C0ZZ ")
 ;;1149
 ;;21,"0G9C30Z ")
 ;;1150
 ;;21,"0G9C3ZX ")
 ;;1151
 ;;21,"0G9C3ZZ ")
 ;;1152
 ;;21,"0G9C40Z ")
 ;;1153
 ;;21,"0G9C4ZX ")
 ;;1154
 ;;21,"0G9C4ZZ ")
 ;;1155
 ;;21,"0G9D00Z ")
 ;;1156
 ;;21,"0G9D0ZX ")
 ;;1157
 ;;21,"0G9D0ZZ ")
 ;;1158
 ;;21,"0G9D30Z ")
 ;;1159
 ;;21,"0G9D3ZX ")
 ;;1160
 ;;21,"0G9D3ZZ ")
 ;;1161
 ;;21,"0G9D40Z ")
 ;;1162
 ;;21,"0G9D4ZX ")
 ;;1163
 ;;21,"0G9D4ZZ ")
 ;;1164
 ;;21,"0G9F00Z ")
 ;;1165
 ;;21,"0G9F0ZX ")
 ;;1166
 ;;21,"0G9F0ZZ ")
 ;;1167
 ;;21,"0G9F30Z ")
 ;;1168
 ;;21,"0G9F3ZX ")
 ;;1169
 ;;21,"0G9F3ZZ ")
 ;;1170
 ;;21,"0G9F40Z ")
 ;;1171
 ;;21,"0G9F4ZX ")
 ;;1172
 ;;21,"0G9F4ZZ ")
 ;;1173
 ;;21,"0GB60ZX ")
 ;;1174
 ;;21,"0GB60ZZ ")
 ;;1175
 ;;21,"0GB63ZX ")
 ;;1176
 ;;21,"0GB63ZZ ")
 ;;1177
 ;;21,"0GB64ZX ")
 ;;1178
 ;;21,"0GB64ZZ ")
 ;;1179
 ;;21,"0GB70ZX ")
 ;;1180
 ;;21,"0GB70ZZ ")
 ;;1181
 ;;21,"0GB73ZX ")
 ;;1182
 ;;21,"0GB73ZZ ")
 ;;1183
 ;;21,"0GB74ZX ")
 ;;1184
 ;;21,"0GB74ZZ ")
 ;;1185
 ;;21,"0GB80ZX ")
 ;;1186
 ;;21,"0GB80ZZ ")
 ;;1187
 ;;21,"0GB83ZX ")
 ;;1188
 ;;21,"0GB83ZZ ")
 ;;1189
 ;;21,"0GB84ZX ")
 ;;1190
 ;;21,"0GB84ZZ ")
 ;;1191
 ;;21,"0GB90ZX ")
 ;;1192
 ;;21,"0GB90ZZ ")
 ;;1193
 ;;21,"0GB93ZX ")
 ;;1194
 ;;21,"0GB93ZZ ")
 ;;1195
 ;;21,"0GB94ZX ")
 ;;1196
 ;;21,"0GB94ZZ ")
 ;;1197
 ;;21,"0GBB0ZX ")
 ;;1198
 ;;21,"0GBB0ZZ ")
 ;;1199
 ;;21,"0GBB3ZX ")
 ;;1200
 ;;21,"0GBB3ZZ ")
 ;;1201
 ;;21,"0GBB4ZX ")
 ;;1202
 ;;21,"0GBB4ZZ ")
 ;;1203
 ;;21,"0GBC0ZX ")
 ;;1204
 ;;21,"0GBC0ZZ ")
 ;;1205
 ;;21,"0GBC3ZX ")
 ;;1206
 ;;21,"0GBC3ZZ ")
 ;;1207
 ;;21,"0GBC4ZX ")
 ;;1208
 ;;21,"0GBC4ZZ ")
 ;;1209
 ;;21,"0GBD0ZX ")
 ;;1210
 ;;21,"0GBD0ZZ ")
 ;;1211
 ;;21,"0GBD3ZX ")
 ;;1212
 ;;21,"0GBD3ZZ ")
 ;;1213
 ;;21,"0GBD4ZX ")
 ;;1214
 ;;21,"0GBD4ZZ ")
 ;;1215
 ;;21,"0GBF0ZX ")
 ;;1216
 ;;21,"0GBF0ZZ ")
 ;;1217
 ;;21,"0GBF3ZX ")
 ;;1218
 ;;21,"0GBF3ZZ ")
 ;;1219
 ;;21,"0GBF4ZX ")
 ;;1220
 ;;21,"0GBF4ZZ ")
 ;;1221
 ;;21,"0GC60ZZ ")
 ;;1222
 ;;21,"0GC63ZZ ")
 ;;1223
 ;;21,"0GC64ZZ ")
 ;;1224
 ;;21,"0GC70ZZ ")
 ;;1225
 ;;21,"0GC73ZZ ")
 ;;1226
 ;;21,"0GC74ZZ ")
 ;;1227
 ;;21,"0GC80ZZ ")
 ;;1228
 ;;21,"0GC83ZZ ")
 ;;1229
 ;;21,"0GC84ZZ ")
 ;;1230
 ;;21,"0GC90ZZ ")
 ;;1231
 ;;21,"0GC93ZZ ")
 ;;1232
 ;;21,"0GC94ZZ ")
 ;;1233
 ;;21,"0GCB0ZZ ")
 ;;1234
 ;;21,"0GCB3ZZ ")
 ;;1235
 ;;21,"0GCB4ZZ ")
 ;;1236
 ;;21,"0GCC0ZZ ")
 ;;1237
 ;;21,"0GCC3ZZ ")
 ;;1238
 ;;21,"0GCC4ZZ ")
 ;;1239
 ;;21,"0GCD0ZZ ")
 ;;1240
 ;;21,"0GCD3ZZ ")
 ;;1241
 ;;21,"0GCD4ZZ ")
 ;;1242
 ;;21,"0GCF0ZZ ")
 ;;1243
 ;;21,"0GCF3ZZ ")
 ;;1244
 ;;21,"0GCF4ZZ ")
 ;;1245
 ;;21,"0GHS02Z ")
 ;;1246
 ;;21,"0GHS03Z ")
 ;;1247
 ;;21,"0GHS32Z ")
 ;;1248
 ;;21,"0GHS33Z ")
 ;;1249
 ;;21,"0GHS42Z ")
 ;;1250
 ;;21,"0GHS43Z ")
 ;;1251
 ;;21,"0GJS0ZZ ")
 ;;1252
 ;;21,"0GJS3ZZ ")
 ;;1253
 ;;21,"0GJS4ZZ ")
 ;;1254
 ;;21,"0GN60ZZ ")
 ;;1255
 ;;21,"0GN63ZZ ")
 ;;1256
 ;;21,"0GN64ZZ ")
 ;;1257
 ;;21,"0GN70ZZ ")
 ;;1258
 ;;21,"0GN73ZZ ")
 ;;1259
 ;;21,"0GN74ZZ ")
 ;;1260
 ;;21,"0GN80ZZ ")
 ;;1261
 ;;21,"0GN83ZZ ")
 ;;1262
 ;;21,"0GN84ZZ ")
 ;;1263
 ;;21,"0GN90ZZ ")
 ;;1264
 ;;21,"0GN93ZZ ")
 ;;1265
 ;;21,"0GN94ZZ ")
 ;;1266
 ;;21,"0GNB0ZZ ")
 ;;1267
 ;;21,"0GNB3ZZ ")
 ;;1268
 ;;21,"0GNB4ZZ ")
 ;;1269
 ;;21,"0GNC0ZZ ")
 ;;1270
 ;;21,"0GNC3ZZ ")
 ;;1271
 ;;21,"0GNC4ZZ ")
 ;;1272
 ;;21,"0GND0ZZ ")
 ;;1273
 ;;21,"0GND3ZZ ")
 ;;1274
 ;;21,"0GND4ZZ ")
 ;;1275
 ;;21,"0GNF0ZZ ")
 ;;1276
 ;;21,"0GNF3ZZ ")
 ;;1277
 ;;21,"0GNF4ZZ ")
 ;;1278
 ;;21,"0GPS00Z ")
 ;;1279
 ;;21,"0GPS02Z ")
 ;;1280
 ;;21,"0GPS03Z ")
 ;;1281
 ;;21,"0GPS30Z ")
 ;;1282
 ;;21,"0GPS32Z ")
 ;;1283
 ;;21,"0GPS33Z ")
 ;;1284
 ;;21,"0GPS40Z ")
 ;;1285
 ;;21,"0GPS42Z ")
 ;;1286
 ;;21,"0GPS43Z ")
 ;;1287
 ;;21,"0GQ60ZZ ")
 ;;1288
 ;;21,"0GQ63ZZ ")
 ;;1289
 ;;21,"0GQ64ZZ ")
 ;;1290
 ;;21,"0GQ70ZZ ")
 ;;1291
 ;;21,"0GQ73ZZ ")
 ;;1292
 ;;21,"0GQ74ZZ ")
 ;;1293
 ;;21,"0GQ80ZZ ")
 ;;1294
 ;;21,"0GQ83ZZ ")
 ;;1295
 ;;21,"0GQ84ZZ ")
 ;;1296
 ;;21,"0GQ90ZZ ")
 ;;1297
 ;;21,"0GQ93ZZ ")
 ;;1298
 ;;21,"0GQ94ZZ ")
 ;;1299
 ;;21,"0GQB0ZZ ")
 ;;1300
 ;;21,"0GQB3ZZ ")
 ;;1301
 ;;21,"0GQB4ZZ ")
 ;;1302
 ;;21,"0GQC0ZZ ")
 ;;1303
 ;;21,"0GQC3ZZ ")
 ;;1304
 ;;21,"0GQC4ZZ ")
 ;;1305
 ;;21,"0GQD0ZZ ")
 ;;1306
 ;;21,"0GQD3ZZ ")
 ;;1307
 ;;21,"0GQD4ZZ ")
 ;;1308
 ;;21,"0GQF0ZZ ")
 ;;1309
 ;;21,"0GQF3ZZ ")
 ;;1310
 ;;21,"0GQF4ZZ ")
 ;;1311
 ;;21,"0GT60ZZ ")
 ;;1312
 ;;21,"0GT64ZZ ")
 ;;1313
 ;;21,"0GT70ZZ ")
 ;;1314
 ;;21,"0GT74ZZ ")
 ;;1315
 ;;21,"0GT80ZZ ")
 ;;1316
 ;;21,"0GT84ZZ ")
 ;;1317
 ;;21,"0GT90ZZ ")
 ;;1318
 ;;21,"0GT94ZZ ")
 ;;1319
 ;;21,"0GTB0ZZ ")
 ;;1320
 ;;21,"0GTB4ZZ ")
 ;;1321
 ;;21,"0GTC0ZZ ")
 ;;1322
 ;;21,"0GTC4ZZ ")
 ;;1323
 ;;21,"0GTD0ZZ ")
 ;;1324
 ;;21,"0GTD4ZZ ")
 ;;1325
 ;;21,"0GTF0ZZ ")
 ;;1326
 ;;21,"0GTF4ZZ ")
 ;;1327
 ;;21,"0GWS00Z ")
 ;;1328
 ;;21,"0GWS02Z ")
 ;;1329
 ;;21,"0GWS03Z ")
 ;;1330
 ;;21,"0GWS30Z ")
 ;;1331
 ;;21,"0GWS32Z ")
 ;;1332
 ;;21,"0GWS33Z ")
 ;;1333
 ;;21,"0GWS40Z ")
 ;;1334
 ;;21,"0GWS42Z ")
 ;;1335
 ;;21,"0GWS43Z ")
 ;;1336
 ;;21,"0JH60MZ ")
 ;;1061
 ;;21,"0JH63MZ ")
 ;;1062
 ;;21,"0JH70MZ ")
 ;;1063
 ;;21,"0JH73MZ ")
 ;;1064
 ;;21,"0JH80MZ ")
 ;;1065
 ;;21,"0JH83MZ ")
 ;;1066
 ;;21,"0JPT0MZ ")
 ;;1076
 ;;21,"0JPT3MZ ")
 ;;1077
 ;;21,"0JWT0MZ ")
 ;;1070
 ;;21,"0JWT3MZ ")
 ;;1071
 ;;21,"0JWTXMZ ")
 ;;1072
 ;;21,"38.10 ")
 ;;1
 ;;21,"38.12 ")
 ;;2
 ;;21,"39.50 ")
 ;;3
 ;;21,"39.8 ")
 ;;4
 ;;21,"39.90 ")
 ;;5
 ;;9002226,752,.01)
 ;;BQI KNOWN CVD-1 PROCEDURES
 ;;9002226,752,.02)
 ;;1 only identifies Known CVD
 ;;9002226,752,.04)
 ;;@
 ;;9002226,752,.06)
 ;;@
 ;;9002226,752,.08)
 ;;0
 ;;9002226,752,.09)
 ;;3131122
 ;;9002226,752,.11)
 ;;@
 ;;9002226,752,.12)
 ;;255
 ;;9002226,752,.13)
 ;;1
 ;;9002226,752,.14)
 ;;@
 ;;9002226,752,.15)
 ;;80.1
 ;;9002226,752,.16)
 ;;@
 ;;9002226,752,.17)
 ;;@
 ;;9002226,752,3101)
 ;;@
 ;;9002226.02101,"752,027P04Z ",.01)
 ;;027P04Z 
 ;;9002226.02101,"752,027P04Z ",.02)
 ;;027P04Z 
 ;;9002226.02101,"752,027P04Z ",.03)
 ;;31
 ;;9002226.02101,"752,027P0DZ ",.01)
 ;;027P0DZ 
 ;;9002226.02101,"752,027P0DZ ",.02)
 ;;027P0DZ 
 ;;9002226.02101,"752,027P0DZ ",.03)
 ;;31
 ;;9002226.02101,"752,027P0ZZ ",.01)
 ;;027P0ZZ 
 ;;9002226.02101,"752,027P0ZZ ",.02)
 ;;027P0ZZ 
 ;;9002226.02101,"752,027P0ZZ ",.03)
 ;;31
 ;;9002226.02101,"752,027P34Z ",.01)
 ;;027P34Z 
 ;;9002226.02101,"752,027P34Z ",.02)
 ;;027P34Z 
 ;;9002226.02101,"752,027P34Z ",.03)
 ;;31
 ;;9002226.02101,"752,027P3DZ ",.01)
 ;;027P3DZ 
 ;;9002226.02101,"752,027P3DZ ",.02)
 ;;027P3DZ 
 ;;9002226.02101,"752,027P3DZ ",.03)
 ;;31
 ;;9002226.02101,"752,027P3ZZ ",.01)
 ;;027P3ZZ 
 ;;9002226.02101,"752,027P3ZZ ",.02)
 ;;027P3ZZ 
 ;;9002226.02101,"752,027P3ZZ ",.03)
 ;;31
 ;;9002226.02101,"752,027P44Z ",.01)
 ;;027P44Z 
 ;;9002226.02101,"752,027P44Z ",.02)
 ;;027P44Z 
 ;;9002226.02101,"752,027P44Z ",.03)
 ;;31
 ;;9002226.02101,"752,027P4DZ ",.01)
 ;;027P4DZ 
 ;;9002226.02101,"752,027P4DZ ",.02)
 ;;027P4DZ 
 ;;9002226.02101,"752,027P4DZ ",.03)
 ;;31
 ;;9002226.02101,"752,027P4ZZ ",.01)
 ;;027P4ZZ 
 ;;9002226.02101,"752,027P4ZZ ",.02)
 ;;027P4ZZ 
 ;;9002226.02101,"752,027P4ZZ ",.03)
 ;;31
 ;;9002226.02101,"752,027Q04Z ",.01)
 ;;027Q04Z 
 ;;9002226.02101,"752,027Q04Z ",.02)
 ;;027Q04Z 
 ;;9002226.02101,"752,027Q04Z ",.03)
 ;;31
 ;;9002226.02101,"752,027Q0DZ ",.01)
 ;;027Q0DZ 