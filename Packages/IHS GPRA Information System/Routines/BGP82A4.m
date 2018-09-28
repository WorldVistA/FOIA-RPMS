BGP82A4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"43353-0617-25 ")
 ;;1024
 ;;21,"43353-0617-28 ")
 ;;1025
 ;;21,"43353-0617-30 ")
 ;;1026
 ;;21,"43353-0617-40 ")
 ;;1027
 ;;21,"43353-0617-45 ")
 ;;1028
 ;;21,"43353-0617-53 ")
 ;;1029
 ;;21,"43353-0617-59 ")
 ;;1030
 ;;21,"43353-0617-60 ")
 ;;1031
 ;;21,"43353-0617-62 ")
 ;;1032
 ;;21,"43353-0620-07 ")
 ;;1033
 ;;21,"43353-0620-10 ")
 ;;1034
 ;;21,"43353-0620-14 ")
 ;;1035
 ;;21,"43353-0620-15 ")
 ;;1036
 ;;21,"43353-0620-20 ")
 ;;1037
 ;;21,"43353-0620-28 ")
 ;;1038
 ;;21,"43353-0620-30 ")
 ;;1039
 ;;21,"43353-0620-45 ")
 ;;1040
 ;;21,"43353-0620-53 ")
 ;;1041
 ;;21,"43353-0620-59 ")
 ;;1042
 ;;21,"43353-0620-60 ")
 ;;1043
 ;;21,"43353-0628-30 ")
 ;;1044
 ;;21,"43353-0713-15 ")
 ;;1045
 ;;21,"43353-0727-30 ")
 ;;1046
 ;;21,"43353-0727-60 ")
 ;;1047
 ;;21,"43353-0743-30 ")
 ;;1048
 ;;21,"43353-0743-60 ")
 ;;1049
 ;;21,"43353-0841-30 ")
 ;;1050
 ;;21,"43353-0994-15 ")
 ;;1051
 ;;21,"43353-0994-45 ")
 ;;1052
 ;;21,"43386-0761-01 ")
 ;;1053
 ;;21,"43386-0761-30 ")
 ;;1054
 ;;21,"43386-0762-01 ")
 ;;1055
 ;;21,"43386-0762-30 ")
 ;;1056
 ;;21,"43547-0347-03 ")
 ;;1057
 ;;21,"43547-0347-09 ")
 ;;1058
 ;;21,"43547-0347-11 ")
 ;;1059
 ;;21,"43547-0347-50 ")
 ;;1060
 ;;21,"43547-0348-03 ")
 ;;1061
 ;;21,"43547-0348-09 ")
 ;;1062
 ;;21,"43547-0348-11 ")
 ;;1063
 ;;21,"43547-0348-50 ")
 ;;1064
 ;;21,"43547-0349-03 ")
 ;;1065
 ;;21,"43547-0349-09 ")
 ;;1066
 ;;21,"43547-0349-11 ")
 ;;1067
 ;;21,"43547-0349-50 ")
 ;;1068
 ;;21,"43547-0350-03 ")
 ;;1069
 ;;21,"43547-0350-09 ")
 ;;1070
 ;;21,"43547-0350-11 ")
 ;;1071
 ;;21,"43547-0350-50 ")
 ;;1072
 ;;21,"45963-0293-30 ")
 ;;1073
 ;;21,"45963-0294-30 ")
 ;;1074
 ;;21,"45963-0295-30 ")
 ;;1075
 ;;21,"45963-0341-02 ")
 ;;1076
 ;;21,"45963-0342-02 ")
 ;;1077
 ;;21,"45963-0343-02 ")
 ;;1078
 ;;21,"45963-0344-02 ")
 ;;1079
 ;;21,"45963-0345-02 ")
 ;;1080
 ;;21,"45963-0346-50 ")
 ;;1081
 ;;21,"46672-0053-10 ")
 ;;1082
 ;;21,"46672-0053-50 ")
 ;;1083
 ;;21,"47335-0586-83 ")
 ;;1084
 ;;21,"47335-0587-88 ")
 ;;1085
 ;;21,"47335-0588-88 ")
 ;;1086
 ;;21,"47463-0012-28 ")
 ;;1087
 ;;21,"47463-0012-30 ")
 ;;1088
 ;;21,"47463-0012-60 ")
 ;;1089
 ;;21,"47463-0012-90 ")
 ;;1090
 ;;21,"47463-0014-30 ")
 ;;1091
 ;;21,"47463-0014-60 ")
 ;;1092
 ;;21,"47463-0014-90 ")
 ;;1093
 ;;21,"47463-0015-30 ")
 ;;1094
 ;;21,"47463-0015-60 ")
 ;;1095
 ;;21,"47463-0016-30 ")
 ;;1096
 ;;21,"47463-0016-60 ")
 ;;1097
 ;;21,"47463-0017-30 ")
 ;;1098
 ;;21,"47463-0088-30 ")
 ;;1099
 ;;21,"47463-0372-30 ")
 ;;1100
 ;;21,"47463-0372-60 ")
 ;;1101
 ;;21,"47463-0396-28 ")
 ;;1102
 ;;21,"47463-0396-30 ")
 ;;1103
 ;;21,"47463-0547-60 ")
 ;;1104
 ;;21,"47463-0548-30 ")
 ;;1105
 ;;21,"47463-0548-60 ")
 ;;1106
 ;;21,"47463-0571-30 ")
 ;;1107
 ;;21,"47463-0571-45 ")
 ;;1108
 ;;21,"47463-0571-60 ")
 ;;1109
 ;;21,"47463-0572-30 ")
 ;;1110
 ;;21,"47463-0573-30 ")
 ;;1111
 ;;21,"47463-0573-90 ")
 ;;1112
 ;;21,"47463-0608-30 ")
 ;;1113
 ;;21,"47463-0824-30 ")
 ;;1114
 ;;21,"47463-0824-60 ")
 ;;1115
 ;;21,"47463-0824-71 ")
 ;;1116
 ;;21,"47463-0824-90 ")
 ;;1117
 ;;21,"47463-0825-06 ")
 ;;1118
 ;;21,"47463-0825-30 ")
 ;;1119
 ;;21,"47463-0825-71 ")
 ;;1120
 ;;21,"47463-0825-90 ")
 ;;1121
 ;;21,"47463-0827-30 ")
 ;;1122
 ;;21,"47463-0854-30 ")
 ;;1123
 ;;21,"47781-0535-01 ")
 ;;1124
 ;;21,"47781-0536-01 ")
 ;;1125
 ;;21,"47781-0536-05 ")
 ;;1126
 ;;21,"49884-0054-01 ")
 ;;1127
 ;;21,"49884-0054-10 ")
 ;;1128
 ;;21,"49884-0055-01 ")
 ;;1129
 ;;21,"49884-0055-10 ")
 ;;1130
 ;;21,"49884-0056-01 ")
 ;;1131
 ;;21,"49884-0056-10 ")
 ;;1132
 ;;21,"49884-0222-01 ")
 ;;1133
 ;;21,"49884-0222-03 ")
 ;;1134
 ;;21,"49884-0222-05 ")
 ;;1135
 ;;21,"49999-0037-00 ")
 ;;1136
 ;;21,"49999-0037-10 ")
 ;;1137
 ;;21,"49999-0037-15 ")
 ;;1138
 ;;21,"49999-0037-20 ")
 ;;1139
 ;;21,"49999-0037-30 ")
 ;;1140
 ;;21,"49999-0037-60 ")
 ;;1141
 ;;21,"49999-0037-90 ")
 ;;1142
 ;;21,"49999-0063-00 ")
 ;;1143
 ;;21,"49999-0063-15 ")
 ;;1144
 ;;21,"49999-0063-30 ")
 ;;1145
 ;;21,"49999-0063-50 ")
 ;;1146
 ;;21,"49999-0063-60 ")
 ;;1147
 ;;21,"49999-0063-90 ")
 ;;1148
 ;;21,"49999-0115-60 ")
 ;;1149
 ;;21,"49999-0151-08 ")
 ;;1150
 ;;21,"49999-0151-20 ")
 ;;1151
 ;;21,"49999-0151-30 ")
 ;;1152
 ;;21,"49999-0151-60 ")
 ;;1153
 ;;21,"49999-0190-30 ")
 ;;1154
 ;;21,"49999-0205-00 ")
 ;;1155
 ;;21,"49999-0205-30 ")
 ;;1156
 ;;21,"49999-0205-60 ")
 ;;1157
 ;;21,"49999-0215-25 ")
 ;;1158
 ;;21,"49999-0215-30 ")
 ;;1159
 ;;21,"49999-0215-60 ")
 ;;1160
 ;;21,"49999-0215-90 ")
 ;;1161
 ;;21,"49999-0228-00 ")
 ;;1162
 ;;21,"49999-0228-30 ")
 ;;1163
 ;;21,"49999-0228-60 ")
 ;;1164
 ;;21,"49999-0228-90 ")
 ;;1165
 ;;21,"49999-0318-00 ")
 ;;1166
 ;;21,"49999-0318-30 ")
 ;;1167
 ;;21,"49999-0318-60 ")
 ;;1168
 ;;21,"49999-0394-30 ")
 ;;1169
 ;;21,"49999-0394-60 ")
 ;;1170
 ;;21,"49999-0394-90 ")
 ;;1171
 ;;21,"49999-0400-30 ")
 ;;1172
 ;;21,"49999-0453-15 ")
 ;;1173
 ;;21,"49999-0453-30 ")
 ;;1174
 ;;21,"49999-0538-30 ")
 ;;1175
 ;;21,"49999-0538-60 ")
 ;;1176
 ;;21,"49999-0551-30 ")
 ;;1177
 ;;21,"49999-0597-30 ")
 ;;1178
 ;;21,"49999-0601-15 ")
 ;;1179
 ;;21,"49999-0601-30 ")
 ;;1180
 ;;21,"49999-0604-15 ")
 ;;1181
 ;;21,"49999-0604-30 ")
 ;;1182
 ;;21,"49999-0604-60 ")
 ;;1183
 ;;21,"49999-0613-30 ")
 ;;1184
 ;;21,"49999-0631-30 ")
 ;;1185
 ;;21,"49999-0631-60 ")
 ;;1186
 ;;21,"49999-0632-00 ")
 ;;1187
 ;;21,"49999-0632-30 ")
 ;;1188
 ;;21,"49999-0632-60 ")
 ;;1189
 ;;21,"49999-0737-00 ")
 ;;1190
 ;;21,"49999-0737-14 ")
 ;;1191
 ;;21,"49999-0737-15 ")
 ;;1192
 ;;21,"49999-0737-30 ")
 ;;1193
 ;;21,"49999-0737-60 ")
 ;;1194
 ;;21,"49999-0737-90 ")
 ;;1195
 ;;21,"49999-0763-30 ")
 ;;1196
 ;;21,"49999-0764-30 ")
 ;;1197
 ;;21,"49999-0778-30 ")
 ;;1198
 ;;21,"49999-0779-30 ")
 ;;1199
 ;;21,"49999-0780-30 ")
 ;;1200
 ;;21,"49999-0828-30 ")
 ;;1201
 ;;21,"49999-0867-00 ")
 ;;1202
 ;;21,"49999-0909-00 ")
 ;;1203
 ;;21,"49999-0909-30 ")
 ;;1204
 ;;21,"49999-0909-60 ")
 ;;1205
 ;;21,"49999-0915-30 ")
 ;;1206
 ;;21,"49999-0915-60 ")
 ;;1207
 ;;21,"49999-0915-90 ")
 ;;1208
 ;;21,"49999-0931-00 ")
 ;;1209
 ;;21,"49999-0931-02 ")
 ;;1210
 ;;21,"49999-0931-15 ")
 ;;1211
 ;;21,"49999-0931-30 ")
 ;;1212
 ;;21,"49999-0931-60 ")
 ;;1213
 ;;21,"49999-0932-00 ")
 ;;1214
 ;;21,"49999-0932-30 ")
 ;;1215
 ;;21,"49999-0932-60 ")
 ;;1216
 ;;21,"50268-0603-11 ")
 ;;1217
 ;;21,"50268-0603-15 ")
 ;;1218
 ;;21,"50268-0604-11 ")
 ;;1219
 ;;21,"50268-0604-15 ")
 ;;1220
 ;;21,"50268-0605-11 ")
 ;;1221
 ;;21,"50268-0605-15 ")
 ;;1222
 ;;21,"50268-0640-11 ")
 ;;1223
 ;;21,"50268-0640-15 ")
 ;;1224
 ;;21,"50268-0641-11 ")
 ;;1225
 ;;21,"50268-0641-15 ")
 ;;1226
 ;;21,"50268-0642-11 ")
 ;;1227
 ;;21,"50268-0642-15 ")
 ;;1228
 ;;21,"50268-0643-11 ")
 ;;1229
 ;;21,"50268-0643-15 ")
 ;;1230
 ;;21,"50383-0959-10 ")
 ;;1231
 ;;21,"50383-0960-10 ")
 ;;1232
 ;;21,"50436-0116-01 ")
 ;;1233
 ;;21,"50436-0193-01 ")
 ;;1234
 ;;21,"50436-1005-01 ")
 ;;1235
 ;;21,"50436-1006-01 ")
 ;;1236
 ;;21,"50436-3026-01 ")
 ;;1237
 ;;21,"50436-3030-01 ")
 ;;1238
 ;;21,"50436-3030-02 ")
 ;;1239
 ;;21,"50436-3031-01 ")
 ;;1240
 ;;21,"50436-3071-01 ")
 ;;1241
 ;;21,"50436-3071-02 ")
 ;;1242
 ;;21,"50436-3071-05 ")
 ;;1243
 ;;21,"50436-3072-01 ")
 ;;1244
 ;;21,"50436-3072-02 ")
 ;;1245
 ;;21,"50436-3072-05 ")
 ;;1246
 ;;21,"50436-3073-01 ")
 ;;1247
 ;;21,"50436-3073-02 ")
 ;;1248
 ;;21,"50436-3074-01 ")
 ;;1249
 ;;21,"50436-3075-01 ")
 ;;1250
 ;;21,"50436-3933-03 ")
 ;;1251
 ;;21,"50436-4565-01 ")
 ;;1252
 ;;21,"50436-4856-01 ")
 ;;1253
 ;;21,"50436-4856-02 ")
 ;;1254
 ;;21,"50436-5537-01 ")
 ;;1255
 ;;21,"50436-5538-01 ")
 ;;1256
 ;;21,"50436-5538-04 ")
 ;;1257
 ;;21,"50436-5539-01 ")
 ;;1258
 ;;21,"50436-5539-04 ")
 ;;1259
 ;;21,"50436-6650-01 ")
 ;;1260
 ;;21,"50436-6650-02 ")
 ;;1261
 ;;21,"50436-6651-02 ")
 ;;1262
 ;;21,"50436-6652-01 ")
 ;;1263
 ;;21,"51079-0107-01 ")
 ;;1264
 ;;21,"51079-0107-20 ")
 ;;1265
 ;;21,"51079-0107-63 ")
 ;;1266
 ;;21,"51079-0131-01 ")
 ;;1267
 ;;21,"51079-0131-20 ")
 ;;1268
 ;;21,"51079-0131-63 ")
 ;;1269
 ;;21,"51079-0133-01 ")
 ;;1270
 ;;21,"51079-0133-20 ")
 ;;1271
 ;;21,"51079-0133-63 ")
 ;;1272
 ;;21,"51079-0147-01 ")
 ;;1273
 ;;21,"51079-0147-20 ")
 ;;1274
 ;;21,"51079-0349-01 ")
 ;;1275
 ;;21,"51079-0349-03 ")
 ;;1276
 ;;21,"51079-0414-01 ")
 ;;1277
 ;;21,"51079-0414-03 ")
 ;;1278
 ;;21,"51079-0436-01 ")
 ;;1279
 ;;21,"51079-0436-20 ")
 ;;1280
 ;;21,"51079-0437-01 ")
 ;;1281
 ;;21,"51079-0437-20 ")
 ;;1282
 ;;21,"51079-0438-01 ")
 ;;1283
 ;;21,"51079-0438-20 ")
 ;;1284
 ;;21,"51079-0563-01 ")
 ;;1285
 ;;21,"51079-0563-20 ")
 ;;1286
 ;;21,"51079-0651-01 ")
 ;;1287
 ;;21,"51079-0651-20 ")
 ;;1288
 ;;21,"51079-0724-01 ")
 ;;1289
 ;;21,"51079-0724-20 ")
 ;;1290
 ;;21,"51079-0725-01 ")
 ;;1291
 ;;21,"51079-0725-20 ")
 ;;1292
 ;;21,"51079-0774-01 ")
 ;;1293
 ;;21,"51079-0774-20 ")
 ;;1294
 ;;21,"51285-0538-02 ")
 ;;1295
 ;;21,"51285-0539-02 ")
 ;;1296
 ;;21,"51285-0554-02 ")
 ;;1297
 ;;21,"51293-0605-01 ")
 ;;1298
 ;;21,"51293-0606-01 ")
 ;;1299
 ;;21,"51293-0625-01 ")
 ;;1300
 ;;21,"51293-0625-10 ")
 ;;1301
 ;;21,"51293-0626-01 ")
 ;;1302
 ;;21,"51293-0626-10 ")
 ;;1303
 ;;21,"51293-0627-01 ")
 ;;1304
 ;;21,"51293-0627-10 ")
 ;;1305
 ;;21,"51293-0628-01 ")
 ;;1306
 ;;21,"51293-0628-10 ")
 ;;1307
 ;;21,"51672-4001-01 ")
 ;;1308
 ;;21,"51672-4001-02 ")
 ;;1309
 ;;21,"51672-4001-05 ")
 ;;1310
 ;;21,"51672-4001-06 ")
 ;;1311
 ;;21,"51672-4002-01 ")
 ;;1312
 ;;21,"51672-4002-02 ")
 ;;1313
 ;;21,"51672-4002-05 ")
 ;;1314
 ;;21,"51672-4002-06 ")
 ;;1315
 ;;21,"51672-4003-01 ")
 ;;1316
 ;;21,"51672-4003-02 ")
 ;;1317
 ;;21,"51672-4003-05 ")
 ;;1318
 ;;21,"51672-4003-06 ")
 ;;1319
 ;;21,"51672-4004-01 ")
 ;;1320
 ;;21,"51672-4004-02 ")
 ;;1321
 ;;21,"51672-4004-05 ")
 ;;1322
 ;;21,"51672-4004-06 ")
 ;;1323
 ;;21,"51672-4011-05 ")
 ;;1324
 ;;21,"51672-4011-06 ")
 ;;1325
 ;;21,"51672-4012-05 ")
 ;;1326
 ;;21,"51672-4012-06 ")
 ;;1327
 ;;21,"51672-4013-05 ")
 ;;1328
 ;;21,"51672-4013-06 ")
 ;;1329
 ;;21,"51862-0015-01 ")
 ;;1330
 ;;21,"51862-0015-05 ")
 ;;1331
 ;;21,"51862-0016-01 ")
 ;;1332
 ;;21,"51862-0016-05 ")
 ;;1333
 ;;21,"51862-0016-10 ")
 ;;1334
 ;;21,"51862-0017-01 ")
 ;;1335
 ;;21,"51862-0017-05 ")
 ;;1336
 ;;21,"51862-0018-01 ")
 ;;1337
 ;;21,"51862-0179-01 ")
 ;;1338
 ;;21,"51862-0538-01 ")
 ;;1339
 ;;21,"51862-0540-01 ")
 ;;1340
 ;;21,"51862-0540-05 ")
 ;;1341
 ;;21,"51991-0073-01 ")
 ;;1342
 ;;21,"51991-0074-01 ")
 ;;1343
 ;;21,"51991-0074-05 ")
 ;;1344
 ;;21,"51991-0944-01 ")
 ;;1345
 ;;21,"51991-0945-01 ")
 ;;1346
 ;;21,"51991-0946-01 ")
 ;;1347
 ;;21,"52343-0073-30 ")
 ;;1348
 ;;21,"52343-0073-90 ")
 ;;1349
 ;;21,"52343-0073-99 ")
 ;;1350
 ;;21,"52343-0074-30 ")
 ;;1351
 ;;21,"52343-0074-90 ")
 ;;1352
 ;;21,"52343-0074-99 ")
 ;;1353
 ;;21,"52343-0075-30 ")
 ;;1354
 ;;21,"52343-0075-90 ")
 ;;1355
 ;;21,"52343-0075-99 ")
 ;;1356