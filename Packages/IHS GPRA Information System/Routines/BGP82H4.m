BGP82H4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"52427-0382-90 ")
 ;;1024
 ;;21,"52427-0383-90 ")
 ;;1025
 ;;21,"52427-0429-90 ")
 ;;1026
 ;;21,"52427-0430-90 ")
 ;;1027
 ;;21,"52427-0431-90 ")
 ;;1028
 ;;21,"52959-0212-01 ")
 ;;1029
 ;;21,"52959-0212-10 ")
 ;;1030
 ;;21,"52959-0212-20 ")
 ;;1031
 ;;21,"52959-0212-45 ")
 ;;1032
 ;;21,"52959-0212-50 ")
 ;;1033
 ;;21,"52959-0212-60 ")
 ;;1034
 ;;21,"52959-0241-30 ")
 ;;1035
 ;;21,"52959-0253-00 ")
 ;;1036
 ;;21,"52959-0253-20 ")
 ;;1037
 ;;21,"52959-0253-30 ")
 ;;1038
 ;;21,"52959-0253-40 ")
 ;;1039
 ;;21,"52959-0258-30 ")
 ;;1040
 ;;21,"52959-0258-60 ")
 ;;1041
 ;;21,"52959-0280-30 ")
 ;;1042
 ;;21,"52959-0337-10 ")
 ;;1043
 ;;21,"52959-0337-30 ")
 ;;1044
 ;;21,"52959-0463-01 ")
 ;;1045
 ;;21,"52959-0463-30 ")
 ;;1046
 ;;21,"52959-0463-60 ")
 ;;1047
 ;;21,"52959-0543-30 ")
 ;;1048
 ;;21,"52959-0827-30 ")
 ;;1049
 ;;21,"52959-0839-30 ")
 ;;1050
 ;;21,"52959-0839-60 ")
 ;;1051
 ;;21,"52959-0895-60 ")
 ;;1052
 ;;21,"53002-1004-00 ")
 ;;1053
 ;;21,"53002-1004-03 ")
 ;;1054
 ;;21,"53002-1004-06 ")
 ;;1055
 ;;21,"53002-1108-00 ")
 ;;1056
 ;;21,"53002-1108-03 ")
 ;;1057
 ;;21,"53002-1108-06 ")
 ;;1058
 ;;21,"53002-1138-00 ")
 ;;1059
 ;;21,"53002-1138-03 ")
 ;;1060
 ;;21,"53002-1138-06 ")
 ;;1061
 ;;21,"53217-0181-00 ")
 ;;1062
 ;;21,"53217-0181-30 ")
 ;;1063
 ;;21,"53217-0181-90 ")
 ;;1064
 ;;21,"53217-0201-00 ")
 ;;1065
 ;;21,"53217-0201-30 ")
 ;;1066
 ;;21,"53217-0201-60 ")
 ;;1067
 ;;21,"53217-0201-90 ")
 ;;1068
 ;;21,"53217-0237-30 ")
 ;;1069
 ;;21,"53217-0237-90 ")
 ;;1070
 ;;21,"53489-0529-01 ")
 ;;1071
 ;;21,"53489-0529-10 ")
 ;;1072
 ;;21,"53489-0530-01 ")
 ;;1073
 ;;21,"53489-0530-10 ")
 ;;1074
 ;;21,"53489-0531-01 ")
 ;;1075
 ;;21,"53489-0532-01 ")
 ;;1076
 ;;21,"53489-0536-01 ")
 ;;1077
 ;;21,"53489-0536-10 ")
 ;;1078
 ;;21,"54348-0142-30 ")
 ;;1079
 ;;21,"54458-0300-30 ")
 ;;1080
 ;;21,"54458-0300-31 ")
 ;;1081
 ;;21,"54458-0301-30 ")
 ;;1082
 ;;21,"54458-0301-31 ")
 ;;1083
 ;;21,"54458-0302-30 ")
 ;;1084
 ;;21,"54458-0302-31 ")
 ;;1085
 ;;21,"54569-0557-01 ")
 ;;1086
 ;;21,"54569-0557-02 ")
 ;;1087
 ;;21,"54569-0559-01 ")
 ;;1088
 ;;21,"54569-0559-06 ")
 ;;1089
 ;;21,"54569-0561-01 ")
 ;;1090
 ;;21,"54569-0561-06 ")
 ;;1091
 ;;21,"54569-3097-00 ")
 ;;1092
 ;;21,"54569-3432-00 ")
 ;;1093
 ;;21,"54569-3432-01 ")
 ;;1094
 ;;21,"54569-3432-04 ")
 ;;1095
 ;;21,"54569-3432-07 ")
 ;;1096
 ;;21,"54569-3432-08 ")
 ;;1097
 ;;21,"54569-3654-00 ")
 ;;1098
 ;;21,"54569-3654-03 ")
 ;;1099
 ;;21,"54569-3654-04 ")
 ;;1100
 ;;21,"54569-3654-05 ")
 ;;1101
 ;;21,"54569-3654-06 ")
 ;;1102
 ;;21,"54569-3787-00 ")
 ;;1103
 ;;21,"54569-3787-01 ")
 ;;1104
 ;;21,"54569-3787-04 ")
 ;;1105
 ;;21,"54569-3787-05 ")
 ;;1106
 ;;21,"54569-3788-00 ")
 ;;1107
 ;;21,"54569-3788-01 ")
 ;;1108
 ;;21,"54569-3788-03 ")
 ;;1109
 ;;21,"54569-3788-04 ")
 ;;1110
 ;;21,"54569-3885-00 ")
 ;;1111
 ;;21,"54569-3885-02 ")
 ;;1112
 ;;21,"54569-3885-04 ")
 ;;1113
 ;;21,"54569-3885-05 ")
 ;;1114
 ;;21,"54569-3885-06 ")
 ;;1115
 ;;21,"54569-4441-00 ")
 ;;1116
 ;;21,"54569-4442-00 ")
 ;;1117
 ;;21,"54569-5404-00 ")
 ;;1118
 ;;21,"54569-5404-01 ")
 ;;1119
 ;;21,"54569-5404-02 ")
 ;;1120
 ;;21,"54569-5417-00 ")
 ;;1121
 ;;21,"54569-5417-01 ")
 ;;1122
 ;;21,"54569-5419-00 ")
 ;;1123
 ;;21,"54569-5419-01 ")
 ;;1124
 ;;21,"54569-5870-00 ")
 ;;1125
 ;;21,"54569-5870-01 ")
 ;;1126
 ;;21,"54569-5870-02 ")
 ;;1127
 ;;21,"54569-5954-00 ")
 ;;1128
 ;;21,"54569-5954-01 ")
 ;;1129
 ;;21,"54569-5961-00 ")
 ;;1130
 ;;21,"54569-5961-01 ")
 ;;1131
 ;;21,"54569-5961-02 ")
 ;;1132
 ;;21,"54569-5974-00 ")
 ;;1133
 ;;21,"54569-5974-01 ")
 ;;1134
 ;;21,"54569-5974-02 ")
 ;;1135
 ;;21,"54569-5975-00 ")
 ;;1136
 ;;21,"54569-5975-01 ")
 ;;1137
 ;;21,"54569-5975-02 ")
 ;;1138
 ;;21,"54569-5975-03 ")
 ;;1139
 ;;21,"54569-5975-04 ")
 ;;1140
 ;;21,"54569-5976-00 ")
 ;;1141
 ;;21,"54569-5976-01 ")
 ;;1142
 ;;21,"54569-5976-02 ")
 ;;1143
 ;;21,"54569-5976-03 ")
 ;;1144
 ;;21,"54569-5976-04 ")
 ;;1145
 ;;21,"54569-5977-00 ")
 ;;1146
 ;;21,"54569-5977-01 ")
 ;;1147
 ;;21,"54569-5977-02 ")
 ;;1148
 ;;21,"54569-5977-03 ")
 ;;1149
 ;;21,"54569-5977-04 ")
 ;;1150
 ;;21,"54569-6119-00 ")
 ;;1151
 ;;21,"54569-6169-00 ")
 ;;1152
 ;;21,"54569-6298-00 ")
 ;;1153
 ;;21,"54569-6298-01 ")
 ;;1154
 ;;21,"54569-6298-02 ")
 ;;1155
 ;;21,"54569-6298-03 ")
 ;;1156
 ;;21,"54569-6314-00 ")
 ;;1157
 ;;21,"54569-6314-01 ")
 ;;1158
 ;;21,"54569-6315-00 ")
 ;;1159
 ;;21,"54569-6315-01 ")
 ;;1160
 ;;21,"54569-6342-00 ")
 ;;1161
 ;;21,"54569-6342-01 ")
 ;;1162
 ;;21,"54569-9009-00 ")
 ;;1163
 ;;21,"54569-9047-00 ")
 ;;1164
 ;;21,"54569-9070-00 ")
 ;;1165
 ;;21,"54569-9075-00 ")
 ;;1166
 ;;21,"54868-0052-00 ")
 ;;1167
 ;;21,"54868-0052-01 ")
 ;;1168
 ;;21,"54868-0052-02 ")
 ;;1169
 ;;21,"54868-0053-02 ")
 ;;1170
 ;;21,"54868-0053-03 ")
 ;;1171
 ;;21,"54868-0053-07 ")
 ;;1172
 ;;21,"54868-0106-00 ")
 ;;1173
 ;;21,"54868-0106-01 ")
 ;;1174
 ;;21,"54868-0293-00 ")
 ;;1175
 ;;21,"54868-0293-01 ")
 ;;1176
 ;;21,"54868-0293-05 ")
 ;;1177
 ;;21,"54868-0293-06 ")
 ;;1178
 ;;21,"54868-0321-00 ")
 ;;1179
 ;;21,"54868-0674-00 ")
 ;;1180
 ;;21,"54868-0674-01 ")
 ;;1181
 ;;21,"54868-0680-00 ")
 ;;1182
 ;;21,"54868-0680-01 ")
 ;;1183
 ;;21,"54868-0685-01 ")
 ;;1184
 ;;21,"54868-0696-01 ")
 ;;1185
 ;;21,"54868-0696-02 ")
 ;;1186
 ;;21,"54868-0696-03 ")
 ;;1187
 ;;21,"54868-0701-00 ")
 ;;1188
 ;;21,"54868-0854-00 ")
 ;;1189
 ;;21,"54868-0854-01 ")
 ;;1190
 ;;21,"54868-1063-00 ")
 ;;1191
 ;;21,"54868-1063-01 ")
 ;;1192
 ;;21,"54868-1063-02 ")
 ;;1193
 ;;21,"54868-1441-00 ")
 ;;1194
 ;;21,"54868-1441-01 ")
 ;;1195
 ;;21,"54868-1442-00 ")
 ;;1196
 ;;21,"54868-1442-01 ")
 ;;1197
 ;;21,"54868-1442-02 ")
 ;;1198
 ;;21,"54868-1517-00 ")
 ;;1199
 ;;21,"54868-1517-02 ")
 ;;1200
 ;;21,"54868-1517-03 ")
 ;;1201
 ;;21,"54868-1518-00 ")
 ;;1202
 ;;21,"54868-1518-01 ")
 ;;1203
 ;;21,"54868-1518-02 ")
 ;;1204
 ;;21,"54868-1518-03 ")
 ;;1205
 ;;21,"54868-1871-00 ")
 ;;1206
 ;;21,"54868-1871-01 ")
 ;;1207
 ;;21,"54868-1871-02 ")
 ;;1208
 ;;21,"54868-1871-04 ")
 ;;1209
 ;;21,"54868-1971-00 ")
 ;;1210
 ;;21,"54868-1971-01 ")
 ;;1211
 ;;21,"54868-1971-03 ")
 ;;1212
 ;;21,"54868-1971-04 ")
 ;;1213
 ;;21,"54868-1980-00 ")
 ;;1214
 ;;21,"54868-1980-01 ")
 ;;1215
 ;;21,"54868-2349-01 ")
 ;;1216
 ;;21,"54868-2349-02 ")
 ;;1217
 ;;21,"54868-2349-03 ")
 ;;1218
 ;;21,"54868-2349-04 ")
 ;;1219
 ;;21,"54868-2349-05 ")
 ;;1220
 ;;21,"54868-2572-00 ")
 ;;1221
 ;;21,"54868-2572-01 ")
 ;;1222
 ;;21,"54868-2572-02 ")
 ;;1223
 ;;21,"54868-2683-00 ")
 ;;1224
 ;;21,"54868-2683-01 ")
 ;;1225
 ;;21,"54868-2683-02 ")
 ;;1226
 ;;21,"54868-2864-00 ")
 ;;1227
 ;;21,"54868-2864-01 ")
 ;;1228
 ;;21,"54868-2989-00 ")
 ;;1229
 ;;21,"54868-2989-02 ")
 ;;1230
 ;;21,"54868-2989-03 ")
 ;;1231
 ;;21,"54868-2989-04 ")
 ;;1232
 ;;21,"54868-2989-05 ")
 ;;1233
 ;;21,"54868-2989-06 ")
 ;;1234
 ;;21,"54868-2989-07 ")
 ;;1235
 ;;21,"54868-2990-00 ")
 ;;1236
 ;;21,"54868-2990-02 ")
 ;;1237
 ;;21,"54868-2990-03 ")
 ;;1238
 ;;21,"54868-2990-04 ")
 ;;1239
 ;;21,"54868-2990-05 ")
 ;;1240
 ;;21,"54868-3062-00 ")
 ;;1241
 ;;21,"54868-3062-01 ")
 ;;1242
 ;;21,"54868-3062-02 ")
 ;;1243
 ;;21,"54868-3062-03 ")
 ;;1244
 ;;21,"54868-3064-00 ")
 ;;1245
 ;;21,"54868-3064-01 ")
 ;;1246
 ;;21,"54868-3257-01 ")
 ;;1247
 ;;21,"54868-3257-02 ")
 ;;1248
 ;;21,"54868-3257-03 ")
 ;;1249
 ;;21,"54868-3257-04 ")
 ;;1250
 ;;21,"54868-3257-05 ")
 ;;1251
 ;;21,"54868-3257-06 ")
 ;;1252
 ;;21,"54868-3587-00 ")
 ;;1253
 ;;21,"54868-3587-01 ")
 ;;1254
 ;;21,"54868-3587-02 ")
 ;;1255
 ;;21,"54868-3587-03 ")
 ;;1256
 ;;21,"54868-3587-04 ")
 ;;1257
 ;;21,"54868-3602-00 ")
 ;;1258
 ;;21,"54868-3721-01 ")
 ;;1259
 ;;21,"54868-3721-02 ")
 ;;1260
 ;;21,"54868-4173-00 ")
 ;;1261
 ;;21,"54868-4179-00 ")
 ;;1262
 ;;21,"54868-4223-00 ")
 ;;1263
 ;;21,"54868-4223-01 ")
 ;;1264
 ;;21,"54868-4223-02 ")
 ;;1265
 ;;21,"54868-4223-03 ")
 ;;1266
 ;;21,"54868-4395-00 ")
 ;;1267
 ;;21,"54868-4395-01 ")
 ;;1268
 ;;21,"54868-4395-02 ")
 ;;1269
 ;;21,"54868-4395-03 ")
 ;;1270
 ;;21,"54868-4396-00 ")
 ;;1271
 ;;21,"54868-4396-01 ")
 ;;1272
 ;;21,"54868-4396-02 ")
 ;;1273
 ;;21,"54868-4396-03 ")
 ;;1274
 ;;21,"54868-4421-00 ")
 ;;1275
 ;;21,"54868-4421-01 ")
 ;;1276
 ;;21,"54868-4421-02 ")
 ;;1277
 ;;21,"54868-4424-00 ")
 ;;1278
 ;;21,"54868-4424-01 ")
 ;;1279
 ;;21,"54868-4424-02 ")
 ;;1280
 ;;21,"54868-4424-03 ")
 ;;1281
 ;;21,"54868-4576-00 ")
 ;;1282
 ;;21,"54868-4576-01 ")
 ;;1283
 ;;21,"54868-4576-02 ")
 ;;1284
 ;;21,"54868-4576-03 ")
 ;;1285
 ;;21,"54868-4577-00 ")
 ;;1286
 ;;21,"54868-4577-01 ")
 ;;1287
 ;;21,"54868-4577-03 ")
 ;;1288
 ;;21,"54868-4578-00 ")
 ;;1289
 ;;21,"54868-4578-01 ")
 ;;1290
 ;;21,"54868-4578-02 ")
 ;;1291
 ;;21,"54868-4578-03 ")
 ;;1292
 ;;21,"54868-4621-00 ")
 ;;1293
 ;;21,"54868-4661-00 ")
 ;;1294
 ;;21,"54868-4661-01 ")
 ;;1295
 ;;21,"54868-4844-00 ")
 ;;1296
 ;;21,"54868-4844-01 ")
 ;;1297
 ;;21,"54868-4844-02 ")
 ;;1298
 ;;21,"54868-4844-03 ")
 ;;1299
 ;;21,"54868-4903-00 ")
 ;;1300
 ;;21,"54868-4903-01 ")
 ;;1301
 ;;21,"54868-4903-02 ")
 ;;1302
 ;;21,"54868-4921-00 ")
 ;;1303
 ;;21,"54868-4921-01 ")
 ;;1304
 ;;21,"54868-4921-02 ")
 ;;1305
 ;;21,"54868-4921-03 ")
 ;;1306
 ;;21,"54868-4921-04 ")
 ;;1307
 ;;21,"54868-4932-00 ")
 ;;1308
 ;;21,"54868-4932-01 ")
 ;;1309
 ;;21,"54868-5013-00 ")
 ;;1310
 ;;21,"54868-5013-01 ")
 ;;1311
 ;;21,"54868-5021-00 ")
 ;;1312
 ;;21,"54868-5021-01 ")
 ;;1313
 ;;21,"54868-5021-02 ")
 ;;1314
 ;;21,"54868-5021-03 ")
 ;;1315
 ;;21,"54868-5021-04 ")
 ;;1316
 ;;21,"54868-5068-00 ")
 ;;1317
 ;;21,"54868-5068-01 ")
 ;;1318
 ;;21,"54868-5068-03 ")
 ;;1319
 ;;21,"54868-5095-00 ")
 ;;1320
 ;;21,"54868-5095-01 ")
 ;;1321
 ;;21,"54868-5095-02 ")
 ;;1322
 ;;21,"54868-5095-03 ")
 ;;1323
 ;;21,"54868-5295-00 ")
 ;;1324
 ;;21,"54868-5295-01 ")
 ;;1325
 ;;21,"54868-5344-00 ")
 ;;1326
 ;;21,"54868-5344-01 ")
 ;;1327
 ;;21,"54868-5344-02 ")
 ;;1328
 ;;21,"54868-5395-00 ")
 ;;1329
 ;;21,"54868-5400-00 ")
 ;;1330
 ;;21,"54868-5400-01 ")
 ;;1331
 ;;21,"54868-5520-00 ")
 ;;1332
 ;;21,"54868-5524-00 ")
 ;;1333
 ;;21,"54868-5524-01 ")
 ;;1334
 ;;21,"54868-5564-00 ")
 ;;1335
 ;;21,"54868-5564-01 ")
 ;;1336
 ;;21,"54868-5729-00 ")
 ;;1337
 ;;21,"54868-5729-01 ")
 ;;1338
 ;;21,"54868-5729-02 ")
 ;;1339
 ;;21,"54868-5729-03 ")
 ;;1340
 ;;21,"54868-5729-04 ")
 ;;1341
 ;;21,"54868-5729-05 ")
 ;;1342
 ;;21,"54868-5729-06 ")
 ;;1343
 ;;21,"54868-5730-00 ")
 ;;1344
 ;;21,"54868-5730-01 ")
 ;;1345
 ;;21,"54868-5730-02 ")
 ;;1346
 ;;21,"54868-5730-03 ")
 ;;1347
 ;;21,"54868-5730-04 ")
 ;;1348
 ;;21,"54868-5730-05 ")
 ;;1349
 ;;21,"54868-5731-00 ")
 ;;1350
 ;;21,"54868-5731-01 ")
 ;;1351
 ;;21,"54868-5731-02 ")
 ;;1352
 ;;21,"54868-5731-03 ")
 ;;1353
 ;;21,"54868-5731-04 ")
 ;;1354
 ;;21,"54868-5731-05 ")
 ;;1355
 ;;21,"54868-5732-00 ")
 ;;1356