BGP82K4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"60429-0113-10 ")
 ;;1024
 ;;21,"60429-0113-18 ")
 ;;1025
 ;;21,"60429-0113-60 ")
 ;;1026
 ;;21,"60429-0113-90 ")
 ;;1027
 ;;21,"60429-0280-01 ")
 ;;1028
 ;;21,"60429-0280-10 ")
 ;;1029
 ;;21,"60429-0280-18 ")
 ;;1030
 ;;21,"60429-0725-05 ")
 ;;1031
 ;;21,"60429-0725-18 ")
 ;;1032
 ;;21,"60429-0725-60 ")
 ;;1033
 ;;21,"60429-0725-90 ")
 ;;1034
 ;;21,"60505-0190-00 ")
 ;;1035
 ;;21,"60505-0190-01 ")
 ;;1036
 ;;21,"60505-0190-04 ")
 ;;1037
 ;;21,"60505-0190-08 ")
 ;;1038
 ;;21,"60505-0191-00 ")
 ;;1039
 ;;21,"60505-0191-01 ")
 ;;1040
 ;;21,"60505-0191-04 ")
 ;;1041
 ;;21,"60505-0191-08 ")
 ;;1042
 ;;21,"60505-0192-00 ")
 ;;1043
 ;;21,"60505-0192-01 ")
 ;;1044
 ;;21,"60505-0192-04 ")
 ;;1045
 ;;21,"60505-0192-08 ")
 ;;1046
 ;;21,"60505-0260-01 ")
 ;;1047
 ;;21,"60505-0260-02 ")
 ;;1048
 ;;21,"60505-0260-07 ")
 ;;1049
 ;;21,"60505-1329-01 ")
 ;;1050
 ;;21,"60687-0143-01 ")
 ;;1051
 ;;21,"60687-0143-11 ")
 ;;1052
 ;;21,"60687-0155-01 ")
 ;;1053
 ;;21,"60687-0155-11 ")
 ;;1054
 ;;21,"60687-0162-01 ")
 ;;1055
 ;;21,"60687-0162-11 ")
 ;;1056
 ;;21,"60760-0042-60 ")
 ;;1057
 ;;21,"60760-0175-30 ")
 ;;1058
 ;;21,"60760-0175-90 ")
 ;;1059
 ;;21,"60760-0176-30 ")
 ;;1060
 ;;21,"60760-0176-90 ")
 ;;1061
 ;;21,"60760-0973-60 ")
 ;;1062
 ;;21,"60760-0973-98 ")
 ;;1063
 ;;21,"60760-0974-60 ")
 ;;1064
 ;;21,"60760-0974-90 ")
 ;;1065
 ;;21,"60760-0975-60 ")
 ;;1066
 ;;21,"60760-0975-90 ")
 ;;1067
 ;;21,"61442-0361-01 ")
 ;;1068
 ;;21,"61442-0361-05 ")
 ;;1069
 ;;21,"61442-0361-10 ")
 ;;1070
 ;;21,"61442-0362-01 ")
 ;;1071
 ;;21,"61442-0362-05 ")
 ;;1072
 ;;21,"61442-0363-01 ")
 ;;1073
 ;;21,"61442-0363-05 ")
 ;;1074
 ;;21,"61919-0313-60 ")
 ;;1075
 ;;21,"61919-0397-60 ")
 ;;1076
 ;;21,"61919-0418-60 ")
 ;;1077
 ;;21,"61919-0450-30 ")
 ;;1078
 ;;21,"61919-0450-60 ")
 ;;1079
 ;;21,"61919-0990-82 ")
 ;;1080
 ;;21,"62037-0571-01 ")
 ;;1081
 ;;21,"62037-0571-10 ")
 ;;1082
 ;;21,"62037-0577-01 ")
 ;;1083
 ;;21,"62037-0577-10 ")
 ;;1084
 ;;21,"62584-0259-01 ")
 ;;1085
 ;;21,"62584-0259-11 ")
 ;;1086
 ;;21,"62584-0332-01 ")
 ;;1087
 ;;21,"62584-0332-11 ")
 ;;1088
 ;;21,"62584-0452-01 ")
 ;;1089
 ;;21,"62584-0452-11 ")
 ;;1090
 ;;21,"62756-0142-01 ")
 ;;1091
 ;;21,"62756-0142-02 ")
 ;;1092
 ;;21,"62756-0143-01 ")
 ;;1093
 ;;21,"63629-1392-01 ")
 ;;1094
 ;;21,"63629-1392-02 ")
 ;;1095
 ;;21,"63629-1392-03 ")
 ;;1096
 ;;21,"63629-1395-01 ")
 ;;1097
 ;;21,"63629-1395-02 ")
 ;;1098
 ;;21,"63629-1395-03 ")
 ;;1099
 ;;21,"63629-1396-01 ")
 ;;1100
 ;;21,"63629-1396-02 ")
 ;;1101
 ;;21,"63629-1397-01 ")
 ;;1102
 ;;21,"63629-1397-02 ")
 ;;1103
 ;;21,"63629-1397-03 ")
 ;;1104
 ;;21,"63629-1397-04 ")
 ;;1105
 ;;21,"63629-1397-05 ")
 ;;1106
 ;;21,"63629-2793-01 ")
 ;;1107
 ;;21,"63629-2793-03 ")
 ;;1108
 ;;21,"63629-2793-04 ")
 ;;1109
 ;;21,"63629-2793-05 ")
 ;;1110
 ;;21,"63629-2883-01 ")
 ;;1111
 ;;21,"63629-2883-02 ")
 ;;1112
 ;;21,"63629-2883-03 ")
 ;;1113
 ;;21,"63629-3998-01 ")
 ;;1114
 ;;21,"63739-0640-10 ")
 ;;1115
 ;;21,"63739-0702-10 ")
 ;;1116
 ;;21,"63874-0501-01 ")
 ;;1117
 ;;21,"63874-0501-04 ")
 ;;1118
 ;;21,"63874-0501-10 ")
 ;;1119
 ;;21,"63874-0501-14 ")
 ;;1120
 ;;21,"63874-0501-20 ")
 ;;1121
 ;;21,"63874-0501-24 ")
 ;;1122
 ;;21,"63874-0501-28 ")
 ;;1123
 ;;21,"63874-0501-30 ")
 ;;1124
 ;;21,"63874-0501-60 ")
 ;;1125
 ;;21,"63874-0501-90 ")
 ;;1126
 ;;21,"63874-0635-01 ")
 ;;1127
 ;;21,"63874-0635-10 ")
 ;;1128
 ;;21,"63874-0635-20 ")
 ;;1129
 ;;21,"63874-0635-28 ")
 ;;1130
 ;;21,"63874-0635-30 ")
 ;;1131
 ;;21,"63874-0635-60 ")
 ;;1132
 ;;21,"63874-0635-90 ")
 ;;1133
 ;;21,"63874-0974-01 ")
 ;;1134
 ;;21,"63874-0974-30 ")
 ;;1135
 ;;21,"63874-0974-60 ")
 ;;1136
 ;;21,"64764-0155-18 ")
 ;;1137
 ;;21,"64764-0155-60 ")
 ;;1138
 ;;21,"64764-0158-18 ")
 ;;1139
 ;;21,"64764-0158-60 ")
 ;;1140
 ;;21,"64764-0310-30 ")
 ;;1141
 ;;21,"64764-0335-60 ")
 ;;1142
 ;;21,"64764-0337-60 ")
 ;;1143
 ;;21,"64764-0510-30 ")
 ;;1144
 ;;21,"65162-0174-10 ")
 ;;1145
 ;;21,"65162-0174-11 ")
 ;;1146
 ;;21,"65162-0174-50 ")
 ;;1147
 ;;21,"65162-0175-10 ")
 ;;1148
 ;;21,"65162-0175-11 ")
 ;;1149
 ;;21,"65162-0175-50 ")
 ;;1150
 ;;21,"65162-0177-10 ")
 ;;1151
 ;;21,"65162-0177-11 ")
 ;;1152
 ;;21,"65162-0177-50 ")
 ;;1153
 ;;21,"65162-0218-10 ")
 ;;1154
 ;;21,"65162-0218-11 ")
 ;;1155
 ;;21,"65162-0218-50 ")
 ;;1156
 ;;21,"65162-0219-10 ")
 ;;1157
 ;;21,"65162-0219-11 ")
 ;;1158
 ;;21,"65162-0219-50 ")
 ;;1159
 ;;21,"65162-0220-10 ")
 ;;1160
 ;;21,"65162-0220-11 ")
 ;;1161
 ;;21,"65162-0220-50 ")
 ;;1162
 ;;21,"65243-0239-09 ")
 ;;1163
 ;;21,"65243-0239-18 ")
 ;;1164
 ;;21,"65243-0239-27 ")
 ;;1165
 ;;21,"65243-0288-06 ")
 ;;1166
 ;;21,"65243-0288-09 ")
 ;;1167
 ;;21,"65243-0288-12 ")
 ;;1168
 ;;21,"65243-0288-18 ")
 ;;1169
 ;;21,"65243-0289-06 ")
 ;;1170
 ;;21,"65243-0289-09 ")
 ;;1171
 ;;21,"65243-0289-12 ")
 ;;1172
 ;;21,"65243-0289-18 ")
 ;;1173
 ;;21,"65243-0371-06 ")
 ;;1174
 ;;21,"65243-0371-09 ")
 ;;1175
 ;;21,"65243-0372-06 ")
 ;;1176
 ;;21,"65243-0372-09 ")
 ;;1177
 ;;21,"65243-0372-18 ")
 ;;1178
 ;;21,"65243-0373-09 ")
 ;;1179
 ;;21,"65862-0008-01 ")
 ;;1180
 ;;21,"65862-0008-05 ")
 ;;1181
 ;;21,"65862-0008-90 ")
 ;;1182
 ;;21,"65862-0008-99 ")
 ;;1183
 ;;21,"65862-0009-01 ")
 ;;1184
 ;;21,"65862-0009-05 ")
 ;;1185
 ;;21,"65862-0009-90 ")
 ;;1186
 ;;21,"65862-0010-01 ")
 ;;1187
 ;;21,"65862-0010-05 ")
 ;;1188
 ;;21,"65862-0010-46 ")
 ;;1189
 ;;21,"65862-0010-90 ")
 ;;1190
 ;;21,"65862-0010-99 ")
 ;;1191
 ;;21,"65862-0080-01 ")
 ;;1192
 ;;21,"65862-0080-05 ")
 ;;1193
 ;;21,"65862-0081-01 ")
 ;;1194
 ;;21,"65862-0081-05 ")
 ;;1195
 ;;21,"65862-0082-01 ")
 ;;1196
 ;;21,"65862-0082-05 ")
 ;;1197
 ;;21,"65862-0291-01 ")
 ;;1198
 ;;21,"65862-0291-05 ")
 ;;1199
 ;;21,"65862-0292-01 ")
 ;;1200
 ;;21,"65862-0525-18 ")
 ;;1201
 ;;21,"65862-0525-60 ")
 ;;1202
 ;;21,"65862-0526-18 ")
 ;;1203
 ;;21,"65862-0526-60 ")
 ;;1204
 ;;21,"66116-0233-30 ")
 ;;1205
 ;;21,"66116-0282-60 ")
 ;;1206
 ;;21,"66116-0293-30 ")
 ;;1207
 ;;21,"66116-0454-30 ")
 ;;1208
 ;;21,"66116-0695-60 ")
 ;;1209
 ;;21,"66267-0493-14 ")
 ;;1210
 ;;21,"66267-0493-30 ")
 ;;1211
 ;;21,"66267-0493-60 ")
 ;;1212
 ;;21,"66267-0493-90 ")
 ;;1213
 ;;21,"66267-0493-91 ")
 ;;1214
 ;;21,"66267-0493-92 ")
 ;;1215
 ;;21,"66267-0493-93 ")
 ;;1216
 ;;21,"66267-0497-30 ")
 ;;1217
 ;;21,"66267-0553-30 ")
 ;;1218
 ;;21,"67544-0047-30 ")
 ;;1219
 ;;21,"67544-0047-53 ")
 ;;1220
 ;;21,"67544-0047-60 ")
 ;;1221
 ;;21,"67544-0047-70 ")
 ;;1222
 ;;21,"67544-0047-75 ")
 ;;1223
 ;;21,"67544-0047-80 ")
 ;;1224
 ;;21,"67544-0047-90 ")
 ;;1225
 ;;21,"67544-0047-92 ")
 ;;1226
 ;;21,"67544-0047-94 ")
 ;;1227
 ;;21,"67544-0047-96 ")
 ;;1228
 ;;21,"67544-0107-53 ")
 ;;1229
 ;;21,"67544-0107-60 ")
 ;;1230
 ;;21,"67544-0107-80 ")
 ;;1231
 ;;21,"67544-0107-92 ")
 ;;1232
 ;;21,"67544-0163-30 ")
 ;;1233
 ;;21,"67544-0163-45 ")
 ;;1234
 ;;21,"67544-0163-53 ")
 ;;1235
 ;;21,"67544-0163-60 ")
 ;;1236
 ;;21,"67544-0163-80 ")
 ;;1237
 ;;21,"67544-0296-70 ")
 ;;1238
 ;;21,"67544-0421-60 ")
 ;;1239
 ;;21,"67544-0421-80 ")
 ;;1240
 ;;21,"67544-0421-92 ")
 ;;1241
 ;;21,"67544-0486-53 ")
 ;;1242
 ;;21,"67544-0511-30 ")
 ;;1243
 ;;21,"67544-0511-70 ")
 ;;1244
 ;;21,"67544-0511-94 ")
 ;;1245
 ;;21,"67877-0159-01 ")
 ;;1246
 ;;21,"67877-0159-05 ")
 ;;1247
 ;;21,"67877-0159-10 ")
 ;;1248
 ;;21,"67877-0217-01 ")
 ;;1249
 ;;21,"67877-0217-05 ")
 ;;1250
 ;;21,"67877-0217-10 ")
 ;;1251
 ;;21,"67877-0218-01 ")
 ;;1252
 ;;21,"67877-0218-05 ")
 ;;1253
 ;;21,"67877-0218-10 ")
 ;;1254
 ;;21,"67877-0221-01 ")
 ;;1255
 ;;21,"67877-0221-05 ")
 ;;1256
 ;;21,"67877-0221-10 ")
 ;;1257
 ;;21,"67877-0561-05 ")
 ;;1258
 ;;21,"67877-0561-10 ")
 ;;1259
 ;;21,"67877-0562-05 ")
 ;;1260
 ;;21,"67877-0562-10 ")
 ;;1261
 ;;21,"67877-0563-10 ")
 ;;1262
 ;;21,"68012-0002-13 ")
 ;;1263
 ;;21,"68012-0003-16 ")
 ;;1264
 ;;21,"68071-0028-30 ")
 ;;1265
 ;;21,"68071-0028-60 ")
 ;;1266
 ;;21,"68084-0072-01 ")
 ;;1267
 ;;21,"68084-0072-11 ")
 ;;1268
 ;;21,"68084-0136-01 ")
 ;;1269
 ;;21,"68084-0136-11 ")
 ;;1270
 ;;21,"68084-0137-01 ")
 ;;1271
 ;;21,"68084-0137-11 ")
 ;;1272
 ;;21,"68084-0138-01 ")
 ;;1273
 ;;21,"68084-0138-11 ")
 ;;1274
 ;;21,"68084-0745-25 ")
 ;;1275
 ;;21,"68084-0745-95 ")
 ;;1276
 ;;21,"68084-0819-32 ")
 ;;1277
 ;;21,"68084-0819-33 ")
 ;;1278
 ;;21,"68180-0336-07 ")
 ;;1279
 ;;21,"68180-0337-07 ")
 ;;1280
 ;;21,"68180-0338-01 ")
 ;;1281
 ;;21,"68180-0339-09 ")
 ;;1282
 ;;21,"68180-0490-01 ")
 ;;1283
 ;;21,"68180-0491-01 ")
 ;;1284
 ;;21,"68382-0027-05 ")
 ;;1285
 ;;21,"68382-0028-01 ")
 ;;1286
 ;;21,"68382-0028-05 ")
 ;;1287
 ;;21,"68382-0028-10 ")
 ;;1288
 ;;21,"68382-0029-01 ")
 ;;1289
 ;;21,"68382-0029-05 ")
 ;;1290
 ;;21,"68382-0029-10 ")
 ;;1291
 ;;21,"68382-0030-01 ")
 ;;1292
 ;;21,"68382-0030-05 ")
 ;;1293
 ;;21,"68382-0030-10 ")
 ;;1294
 ;;21,"68382-0039-05 ")
 ;;1295
 ;;21,"68382-0184-01 ")
 ;;1296
 ;;21,"68382-0185-01 ")
 ;;1297
 ;;21,"68382-0186-01 ")
 ;;1298
 ;;21,"68382-0653-01 ")
 ;;1299
 ;;21,"68382-0653-05 ")
 ;;1300
 ;;21,"68382-0654-01 ")
 ;;1301
 ;;21,"68382-0654-05 ")
 ;;1302
 ;;21,"68382-0655-01 ")
 ;;1303
 ;;21,"68382-0655-05 ")
 ;;1304
 ;;21,"68382-0758-01 ")
 ;;1305
 ;;21,"68382-0758-05 ")
 ;;1306
 ;;21,"68382-0758-10 ")
 ;;1307
 ;;21,"68382-0759-01 ")
 ;;1308
 ;;21,"68382-0759-05 ")
 ;;1309
 ;;21,"68382-0759-10 ")
 ;;1310
 ;;21,"68382-0760-01 ")
 ;;1311
 ;;21,"68382-0760-05 ")
 ;;1312
 ;;21,"68382-0760-10 ")
 ;;1313
 ;;21,"68462-0159-01 ")
 ;;1314
 ;;21,"68462-0159-05 ")
 ;;1315
 ;;21,"68462-0159-10 ")
 ;;1316
 ;;21,"68462-0159-18 ")
 ;;1317
 ;;21,"68462-0159-90 ")
 ;;1318
 ;;21,"68462-0160-01 ")
 ;;1319
 ;;21,"68462-0160-05 ")
 ;;1320
 ;;21,"68462-0160-10 ")
 ;;1321
 ;;21,"68462-0160-18 ")
 ;;1322
 ;;21,"68462-0160-90 ")
 ;;1323
 ;;21,"68462-0161-01 ")
 ;;1324
 ;;21,"68462-0161-05 ")
 ;;1325
 ;;21,"68462-0161-10 ")
 ;;1326
 ;;21,"68462-0161-18 ")
 ;;1327
 ;;21,"68462-0161-90 ")
 ;;1328
 ;;21,"68645-0290-59 ")
 ;;1329
 ;;21,"68645-0300-59 ")
 ;;1330
 ;;21,"68645-0539-59 ")
 ;;1331
 ;;21,"68645-0544-59 ")
 ;;1332
 ;;21,"68645-0545-59 ")
 ;;1333
 ;;21,"68645-0546-59 ")
 ;;1334
 ;;21,"68645-0547-59 ")
 ;;1335
 ;;21,"68645-0548-59 ")
 ;;1336
 ;;21,"68645-0549-59 ")
 ;;1337
 ;;21,"68682-0017-10 ")
 ;;1338
 ;;21,"68682-0018-90 ")
 ;;1339
 ;;21,"68788-0397-01 ")
 ;;1340
 ;;21,"68788-0397-03 ")
 ;;1341
 ;;21,"68788-0397-06 ")
 ;;1342
 ;;21,"68788-0397-08 ")
 ;;1343
 ;;21,"68788-0397-09 ")
 ;;1344
 ;;21,"68788-0435-01 ")
 ;;1345
 ;;21,"68788-0435-03 ")
 ;;1346
 ;;21,"68788-0435-06 ")
 ;;1347
 ;;21,"68788-0435-08 ")
 ;;1348
 ;;21,"68788-0435-09 ")
 ;;1349
 ;;21,"68788-0474-01 ")
 ;;1350
 ;;21,"68788-0474-03 ")
 ;;1351
 ;;21,"68788-0474-06 ")
 ;;1352
 ;;21,"68788-0474-08 ")
 ;;1353
 ;;21,"68788-0474-09 ")
 ;;1354
 ;;21,"68788-6426-03 ")
 ;;1355
 ;;21,"68788-6426-06 ")
 ;;1356