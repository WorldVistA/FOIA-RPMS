BGP8ZI4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"13668-0137-01 ")
 ;;1024
 ;;21,"13668-0137-05 ")
 ;;1025
 ;;21,"13668-0137-10 ")
 ;;1026
 ;;21,"13668-0330-01 ")
 ;;1027
 ;;21,"13668-0330-05 ")
 ;;1028
 ;;21,"13668-0331-01 ")
 ;;1029
 ;;21,"13668-0331-05 ")
 ;;1030
 ;;21,"13668-0332-01 ")
 ;;1031
 ;;21,"13668-0333-01 ")
 ;;1032
 ;;21,"13668-0430-60 ")
 ;;1033
 ;;21,"13668-0431-25 ")
 ;;1034
 ;;21,"13668-0431-60 ")
 ;;1035
 ;;21,"13668-0432-60 ")
 ;;1036
 ;;21,"13668-0443-01 ")
 ;;1037
 ;;21,"13668-0443-30 ")
 ;;1038
 ;;21,"13668-0443-91 ")
 ;;1039
 ;;21,"13668-0473-01 ")
 ;;1040
 ;;21,"13668-0473-30 ")
 ;;1041
 ;;21,"13668-0473-91 ")
 ;;1042
 ;;21,"13811-0672-10 ")
 ;;1043
 ;;21,"13811-0673-10 ")
 ;;1044
 ;;21,"13811-0674-10 ")
 ;;1045
 ;;21,"13811-0675-10 ")
 ;;1046
 ;;21,"13811-0676-10 ")
 ;;1047
 ;;21,"13811-0712-30 ")
 ;;1048
 ;;21,"13811-0712-90 ")
 ;;1049
 ;;21,"13811-0713-30 ")
 ;;1050
 ;;21,"13811-0713-90 ")
 ;;1051
 ;;21,"13811-0714-30 ")
 ;;1052
 ;;21,"13811-0714-90 ")
 ;;1053
 ;;21,"13811-0715-30 ")
 ;;1054
 ;;21,"13811-0715-90 ")
 ;;1055
 ;;21,"16241-0759-01 ")
 ;;1056
 ;;21,"16252-0533-30 ")
 ;;1057
 ;;21,"16252-0533-50 ")
 ;;1058
 ;;21,"16252-0534-30 ")
 ;;1059
 ;;21,"16252-0534-50 ")
 ;;1060
 ;;21,"16252-0534-90 ")
 ;;1061
 ;;21,"16252-0535-30 ")
 ;;1062
 ;;21,"16252-0535-50 ")
 ;;1063
 ;;21,"16252-0535-90 ")
 ;;1064
 ;;21,"16590-0011-30 ")
 ;;1065
 ;;21,"16590-0011-56 ")
 ;;1066
 ;;21,"16590-0011-60 ")
 ;;1067
 ;;21,"16590-0011-72 ")
 ;;1068
 ;;21,"16590-0011-90 ")
 ;;1069
 ;;21,"16590-0012-15 ")
 ;;1070
 ;;21,"16590-0012-30 ")
 ;;1071
 ;;21,"16590-0012-60 ")
 ;;1072
 ;;21,"16590-0012-90 ")
 ;;1073
 ;;21,"16590-0013-30 ")
 ;;1074
 ;;21,"16590-0013-60 ")
 ;;1075
 ;;21,"16590-0013-90 ")
 ;;1076
 ;;21,"16590-0036-30 ")
 ;;1077
 ;;21,"16590-0036-60 ")
 ;;1078
 ;;21,"16590-0037-30 ")
 ;;1079
 ;;21,"16590-0037-60 ")
 ;;1080
 ;;21,"16590-0038-30 ")
 ;;1081
 ;;21,"16590-0038-60 ")
 ;;1082
 ;;21,"16590-0055-30 ")
 ;;1083
 ;;21,"16590-0055-60 ")
 ;;1084
 ;;21,"16590-0055-90 ")
 ;;1085
 ;;21,"16590-0056-30 ")
 ;;1086
 ;;21,"16590-0056-60 ")
 ;;1087
 ;;21,"16590-0056-90 ")
 ;;1088
 ;;21,"16590-0066-30 ")
 ;;1089
 ;;21,"16590-0066-60 ")
 ;;1090
 ;;21,"16590-0067-30 ")
 ;;1091
 ;;21,"16590-0067-60 ")
 ;;1092
 ;;21,"16590-0081-30 ")
 ;;1093
 ;;21,"16590-0081-60 ")
 ;;1094
 ;;21,"16590-0081-72 ")
 ;;1095
 ;;21,"16590-0081-90 ")
 ;;1096
 ;;21,"16590-0085-30 ")
 ;;1097
 ;;21,"16590-0085-60 ")
 ;;1098
 ;;21,"16590-0086-30 ")
 ;;1099
 ;;21,"16590-0086-56 ")
 ;;1100
 ;;21,"16590-0086-60 ")
 ;;1101
 ;;21,"16590-0086-90 ")
 ;;1102
 ;;21,"16590-0087-60 ")
 ;;1103
 ;;21,"16590-0099-30 ")
 ;;1104
 ;;21,"16590-0099-60 ")
 ;;1105
 ;;21,"16590-0100-30 ")
 ;;1106
 ;;21,"16590-0100-60 ")
 ;;1107
 ;;21,"16590-0100-90 ")
 ;;1108
 ;;21,"16590-0139-30 ")
 ;;1109
 ;;21,"16590-0139-60 ")
 ;;1110
 ;;21,"16590-0153-30 ")
 ;;1111
 ;;21,"16590-0153-60 ")
 ;;1112
 ;;21,"16590-0154-30 ")
 ;;1113
 ;;21,"16590-0154-60 ")
 ;;1114
 ;;21,"16590-0155-30 ")
 ;;1115
 ;;21,"16590-0155-60 ")
 ;;1116
 ;;21,"16590-0166-30 ")
 ;;1117
 ;;21,"16590-0166-60 ")
 ;;1118
 ;;21,"16590-0166-90 ")
 ;;1119
 ;;21,"16590-0171-30 ")
 ;;1120
 ;;21,"16590-0171-60 ")
 ;;1121
 ;;21,"16590-0171-90 ")
 ;;1122
 ;;21,"16590-0181-30 ")
 ;;1123
 ;;21,"16590-0181-60 ")
 ;;1124
 ;;21,"16590-0181-90 ")
 ;;1125
 ;;21,"16590-0231-30 ")
 ;;1126
 ;;21,"16590-0231-60 ")
 ;;1127
 ;;21,"16590-0231-90 ")
 ;;1128
 ;;21,"16590-0232-30 ")
 ;;1129
 ;;21,"16590-0232-45 ")
 ;;1130
 ;;21,"16590-0232-60 ")
 ;;1131
 ;;21,"16590-0232-90 ")
 ;;1132
 ;;21,"16590-0246-30 ")
 ;;1133
 ;;21,"16590-0246-60 ")
 ;;1134
 ;;21,"16590-0246-90 ")
 ;;1135
 ;;21,"16590-0249-30 ")
 ;;1136
 ;;21,"16590-0249-60 ")
 ;;1137
 ;;21,"16590-0249-90 ")
 ;;1138
 ;;21,"16590-0250-30 ")
 ;;1139
 ;;21,"16590-0250-60 ")
 ;;1140
 ;;21,"16590-0250-90 ")
 ;;1141
 ;;21,"16590-0251-30 ")
 ;;1142
 ;;21,"16590-0251-60 ")
 ;;1143
 ;;21,"16590-0251-90 ")
 ;;1144
 ;;21,"16590-0322-30 ")
 ;;1145
 ;;21,"16590-0322-56 ")
 ;;1146
 ;;21,"16590-0322-60 ")
 ;;1147
 ;;21,"16590-0322-72 ")
 ;;1148
 ;;21,"16590-0322-90 ")
 ;;1149
 ;;21,"16590-0416-30 ")
 ;;1150
 ;;21,"16590-0437-30 ")
 ;;1151
 ;;21,"16590-0482-30 ")
 ;;1152
 ;;21,"16590-0482-60 ")
 ;;1153
 ;;21,"16590-0482-72 ")
 ;;1154
 ;;21,"16590-0482-90 ")
 ;;1155
 ;;21,"16590-0483-30 ")
 ;;1156
 ;;21,"16590-0483-60 ")
 ;;1157
 ;;21,"16590-0483-72 ")
 ;;1158
 ;;21,"16590-0483-90 ")
 ;;1159
 ;;21,"16590-0484-30 ")
 ;;1160
 ;;21,"16590-0484-60 ")
 ;;1161
 ;;21,"16590-0484-72 ")
 ;;1162
 ;;21,"16590-0484-90 ")
 ;;1163
 ;;21,"16590-0490-30 ")
 ;;1164
 ;;21,"16590-0490-60 ")
 ;;1165
 ;;21,"16590-0490-72 ")
 ;;1166
 ;;21,"16590-0490-90 ")
 ;;1167
 ;;21,"16590-0497-30 ")
 ;;1168
 ;;21,"16590-0497-60 ")
 ;;1169
 ;;21,"16590-0497-72 ")
 ;;1170
 ;;21,"16590-0497-90 ")
 ;;1171
 ;;21,"16590-0510-30 ")
 ;;1172
 ;;21,"16590-0510-60 ")
 ;;1173
 ;;21,"16590-0510-72 ")
 ;;1174
 ;;21,"16590-0510-90 ")
 ;;1175
 ;;21,"16590-0512-06 ")
 ;;1176
 ;;21,"16590-0512-30 ")
 ;;1177
 ;;21,"16590-0512-60 ")
 ;;1178
 ;;21,"16590-0512-72 ")
 ;;1179
 ;;21,"16590-0512-90 ")
 ;;1180
 ;;21,"16590-0513-30 ")
 ;;1181
 ;;21,"16590-0513-56 ")
 ;;1182
 ;;21,"16590-0513-60 ")
 ;;1183
 ;;21,"16590-0513-72 ")
 ;;1184
 ;;21,"16590-0513-90 ")
 ;;1185
 ;;21,"16590-0514-30 ")
 ;;1186
 ;;21,"16590-0514-60 ")
 ;;1187
 ;;21,"16590-0514-72 ")
 ;;1188
 ;;21,"16590-0514-90 ")
 ;;1189
 ;;21,"16590-0526-30 ")
 ;;1190
 ;;21,"16590-0526-60 ")
 ;;1191
 ;;21,"16590-0526-90 ")
 ;;1192
 ;;21,"16590-0577-30 ")
 ;;1193
 ;;21,"16714-0311-01 ")
 ;;1194
 ;;21,"16714-0312-01 ")
 ;;1195
 ;;21,"16714-0313-01 ")
 ;;1196
 ;;21,"16714-0314-01 ")
 ;;1197
 ;;21,"16714-0315-01 ")
 ;;1198
 ;;21,"16714-0334-01 ")
 ;;1199
 ;;21,"16714-0334-02 ")
 ;;1200
 ;;21,"16714-0334-03 ")
 ;;1201
 ;;21,"16714-0335-01 ")
 ;;1202
 ;;21,"16714-0335-02 ")
 ;;1203
 ;;21,"16714-0335-03 ")
 ;;1204
 ;;21,"16714-0336-01 ")
 ;;1205
 ;;21,"16714-0351-01 ")
 ;;1206
 ;;21,"16714-0351-02 ")
 ;;1207
 ;;21,"16714-0351-03 ")
 ;;1208
 ;;21,"16714-0352-01 ")
 ;;1209
 ;;21,"16714-0352-02 ")
 ;;1210
 ;;21,"16714-0352-03 ")
 ;;1211
 ;;21,"16714-0353-01 ")
 ;;1212
 ;;21,"16714-0353-02 ")
 ;;1213
 ;;21,"16714-0353-03 ")
 ;;1214
 ;;21,"16714-0353-04 ")
 ;;1215
 ;;21,"16714-0446-01 ")
 ;;1216
 ;;21,"16714-0446-02 ")
 ;;1217
 ;;21,"16714-0447-01 ")
 ;;1218
 ;;21,"16714-0447-02 ")
 ;;1219
 ;;21,"16714-0448-01 ")
 ;;1220
 ;;21,"16714-0448-02 ")
 ;;1221
 ;;21,"16714-0449-01 ")
 ;;1222
 ;;21,"16714-0450-01 ")
 ;;1223
 ;;21,"16714-0451-01 ")
 ;;1224
 ;;21,"16714-0601-01 ")
 ;;1225
 ;;21,"16714-0601-02 ")
 ;;1226
 ;;21,"16714-0611-01 ")
 ;;1227
 ;;21,"16714-0611-04 ")
 ;;1228
 ;;21,"16714-0611-05 ")
 ;;1229
 ;;21,"16714-0611-06 ")
 ;;1230
 ;;21,"16714-0612-01 ")
 ;;1231
 ;;21,"16714-0612-04 ")
 ;;1232
 ;;21,"16714-0612-05 ")
 ;;1233
 ;;21,"16714-0612-06 ")
 ;;1234
 ;;21,"16714-0613-01 ")
 ;;1235
 ;;21,"16714-0613-04 ")
 ;;1236
 ;;21,"16714-0613-05 ")
 ;;1237
 ;;21,"16714-0613-06 ")
 ;;1238
 ;;21,"16714-0655-01 ")
 ;;1239
 ;;21,"16714-0656-01 ")
 ;;1240
 ;;21,"16714-0657-01 ")
 ;;1241
 ;;21,"16714-0658-01 ")
 ;;1242
 ;;21,"16714-0659-01 ")
 ;;1243
 ;;21,"16714-0706-01 ")
 ;;1244
 ;;21,"16714-0707-01 ")
 ;;1245
 ;;21,"16714-0708-01 ")
 ;;1246
 ;;21,"16714-0709-01 ")
 ;;1247
 ;;21,"16714-0709-02 ")
 ;;1248
 ;;21,"16729-0168-01 ")
 ;;1249
 ;;21,"16729-0168-17 ")
 ;;1250
 ;;21,"16729-0169-01 ")
 ;;1251
 ;;21,"16729-0169-17 ")
 ;;1252
 ;;21,"16729-0170-01 ")
 ;;1253
 ;;21,"16729-0170-17 ")
 ;;1254
 ;;21,"16729-0171-01 ")
 ;;1255
 ;;21,"16729-0171-17 ")
 ;;1256
 ;;21,"16729-0172-01 ")
 ;;1257
 ;;21,"16729-0172-17 ")
 ;;1258
 ;;21,"16729-0173-01 ")
 ;;1259
 ;;21,"16729-0173-17 ")
 ;;1260
 ;;21,"16729-0174-01 ")
 ;;1261
 ;;21,"16729-0175-01 ")
 ;;1262
 ;;21,"16729-0176-01 ")
 ;;1263
 ;;21,"16729-0215-10 ")
 ;;1264
 ;;21,"16729-0215-15 ")
 ;;1265
 ;;21,"16729-0215-16 ")
 ;;1266
 ;;21,"16729-0216-15 ")
 ;;1267
 ;;21,"16729-0216-16 ")
 ;;1268
 ;;21,"16729-0217-15 ")
 ;;1269
 ;;21,"16729-0217-16 ")
 ;;1270
 ;;21,"17236-0358-11 ")
 ;;1271
 ;;21,"17236-0359-11 ")
 ;;1272
 ;;21,"17856-0540-30 ")
 ;;1273
 ;;21,"18837-0035-90 ")
 ;;1274
 ;;21,"18837-0048-90 ")
 ;;1275
 ;;21,"18837-0076-90 ")
 ;;1276
 ;;21,"18837-0093-60 ")
 ;;1277
 ;;21,"18837-0121-30 ")
 ;;1278
 ;;21,"18837-0175-30 ")
 ;;1279
 ;;21,"18837-0176-30 ")
 ;;1280
 ;;21,"18837-0185-60 ")
 ;;1281
 ;;21,"18837-0185-90 ")
 ;;1282
 ;;21,"18837-0207-60 ")
 ;;1283
 ;;21,"18837-0242-30 ")
 ;;1284
 ;;21,"21695-0017-00 ")
 ;;1285
 ;;21,"21695-0017-60 ")
 ;;1286
 ;;21,"21695-0018-30 ")
 ;;1287
 ;;21,"21695-0018-60 ")
 ;;1288
 ;;21,"21695-0018-90 ")
 ;;1289
 ;;21,"21695-0019-30 ")
 ;;1290
 ;;21,"21695-0019-60 ")
 ;;1291
 ;;21,"21695-0020-60 ")
 ;;1292
 ;;21,"21695-0030-00 ")
 ;;1293
 ;;21,"21695-0031-00 ")
 ;;1294
 ;;21,"21695-0031-30 ")
 ;;1295
 ;;21,"21695-0032-00 ")
 ;;1296
 ;;21,"21695-0032-30 ")
 ;;1297
 ;;21,"21695-0045-15 ")
 ;;1298
 ;;21,"21695-0046-15 ")
 ;;1299
 ;;21,"21695-0046-30 ")
 ;;1300
 ;;21,"21695-0046-45 ")
 ;;1301
 ;;21,"21695-0047-15 ")
 ;;1302
 ;;21,"21695-0047-45 ")
 ;;1303
 ;;21,"21695-0052-20 ")
 ;;1304
 ;;21,"21695-0052-30 ")
 ;;1305
 ;;21,"21695-0052-60 ")
 ;;1306
 ;;21,"21695-0052-90 ")
 ;;1307
 ;;21,"21695-0053-30 ")
 ;;1308
 ;;21,"21695-0053-60 ")
 ;;1309
 ;;21,"21695-0053-90 ")
 ;;1310
 ;;21,"21695-0054-30 ")
 ;;1311
 ;;21,"21695-0054-60 ")
 ;;1312
 ;;21,"21695-0054-90 ")
 ;;1313
 ;;21,"21695-0073-15 ")
 ;;1314
 ;;21,"21695-0073-30 ")
 ;;1315
 ;;21,"21695-0073-45 ")
 ;;1316
 ;;21,"21695-0074-15 ")
 ;;1317
 ;;21,"21695-0074-30 ")
 ;;1318
 ;;21,"21695-0081-00 ")
 ;;1319
 ;;21,"21695-0081-30 ")
 ;;1320
 ;;21,"21695-0081-60 ")
 ;;1321
 ;;21,"21695-0082-00 ")
 ;;1322
 ;;21,"21695-0082-30 ")
 ;;1323
 ;;21,"21695-0082-60 ")
 ;;1324
 ;;21,"21695-0083-30 ")
 ;;1325
 ;;21,"21695-0093-30 ")
 ;;1326
 ;;21,"21695-0093-60 ")
 ;;1327
 ;;21,"21695-0093-90 ")
 ;;1328
 ;;21,"21695-0094-30 ")
 ;;1329
 ;;21,"21695-0094-60 ")
 ;;1330
 ;;21,"21695-0094-90 ")
 ;;1331
 ;;21,"21695-0101-30 ")
 ;;1332
 ;;21,"21695-0101-60 ")
 ;;1333
 ;;21,"21695-0101-90 ")
 ;;1334
 ;;21,"21695-0102-30 ")
 ;;1335
 ;;21,"21695-0102-60 ")
 ;;1336
 ;;21,"21695-0102-90 ")
 ;;1337
 ;;21,"21695-0103-30 ")
 ;;1338
 ;;21,"21695-0103-90 ")
 ;;1339
 ;;21,"21695-0104-30 ")
 ;;1340
 ;;21,"21695-0104-90 ")
 ;;1341
 ;;21,"21695-0133-30 ")
 ;;1342
 ;;21,"21695-0133-60 ")
 ;;1343
 ;;21,"21695-0133-90 ")
 ;;1344
 ;;21,"21695-0134-30 ")
 ;;1345
 ;;21,"21695-0134-60 ")
 ;;1346
 ;;21,"21695-0134-90 ")
 ;;1347
 ;;21,"21695-0135-60 ")
 ;;1348
 ;;21,"21695-0137-15 ")
 ;;1349
 ;;21,"21695-0137-30 ")
 ;;1350
 ;;21,"21695-0137-45 ")
 ;;1351
 ;;21,"21695-0138-15 ")
 ;;1352
 ;;21,"21695-0138-30 ")
 ;;1353
 ;;21,"21695-0145-15 ")
 ;;1354
 ;;21,"21695-0145-30 ")
 ;;1355
 ;;21,"21695-0146-15 ")
 ;;1356