ATXXB16 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"0WPDX1Z ")
 ;;5969
 ;;21,"0WPDX3Z ")
 ;;5970
 ;;21,"0WPFX0Z ")
 ;;5971
 ;;21,"0WPFX1Z ")
 ;;5972
 ;;21,"0WPFX3Z ")
 ;;5973
 ;;21,"0WPFX7Z ")
 ;;5974
 ;;21,"0WPFXJZ ")
 ;;5975
 ;;21,"0WPFXKZ ")
 ;;5976
 ;;21,"0WPFXYZ ")
 ;;5977
 ;;21,"0WPGX0Z ")
 ;;5978
 ;;21,"0WPGX1Z ")
 ;;5979
 ;;21,"0WPGX3Z ")
 ;;5980
 ;;21,"0WPHX0Z ")
 ;;5981
 ;;21,"0WPHX1Z ")
 ;;5982
 ;;21,"0WPHX3Z ")
 ;;5983
 ;;21,"0WPJ00Z ")
 ;;5984
 ;;21,"0WPJ01Z ")
 ;;5985
 ;;21,"0WPJ03Z ")
 ;;5986
 ;;21,"0WPJ0JZ ")
 ;;5987
 ;;21,"0WPJ0YZ ")
 ;;5988
 ;;21,"0WPJ30Z ")
 ;;5989
 ;;21,"0WPJ31Z ")
 ;;5990
 ;;21,"0WPJ33Z ")
 ;;5991
 ;;21,"0WPJ3JZ ")
 ;;5992
 ;;21,"0WPJ3YZ ")
 ;;5993
 ;;21,"0WPJ40Z ")
 ;;5994
 ;;21,"0WPJ41Z ")
 ;;5995
 ;;21,"0WPJ43Z ")
 ;;5996
 ;;21,"0WPJ4JZ ")
 ;;5997
 ;;21,"0WPJ4YZ ")
 ;;5998
 ;;21,"0WPJX0Z ")
 ;;5999
 ;;21,"0WPJX1Z ")
 ;;6000
 ;;21,"0WPJX3Z ")
 ;;6001
 ;;21,"0WPK00Z ")
 ;;6002
 ;;21,"0WPK01Z ")
 ;;6003
 ;;21,"0WPK03Z ")
 ;;6004
 ;;21,"0WPK07Z ")
 ;;6005
 ;;21,"0WPK0JZ ")
 ;;6006
 ;;21,"0WPK0KZ ")
 ;;6007
 ;;21,"0WPK0YZ ")
 ;;6008
 ;;21,"0WPK30Z ")
 ;;6009
 ;;21,"0WPK31Z ")
 ;;6010
 ;;21,"0WPK33Z ")
 ;;6011
 ;;21,"0WPK37Z ")
 ;;6012
 ;;21,"0WPK3JZ ")
 ;;6013
 ;;21,"0WPK3KZ ")
 ;;6014
 ;;21,"0WPK3YZ ")
 ;;6015
 ;;21,"0WPK40Z ")
 ;;6016
 ;;21,"0WPK41Z ")
 ;;6017
 ;;21,"0WPK43Z ")
 ;;6018
 ;;21,"0WPK47Z ")
 ;;6019
 ;;21,"0WPK4JZ ")
 ;;6020
 ;;21,"0WPK4KZ ")
 ;;6021
 ;;21,"0WPK4YZ ")
 ;;6022
 ;;21,"0WPKX0Z ")
 ;;6023
 ;;21,"0WPKX1Z ")
 ;;6024
 ;;21,"0WPKX3Z ")
 ;;6025
 ;;21,"0WPKX7Z ")
 ;;6026
 ;;21,"0WPKXJZ ")
 ;;6027
 ;;21,"0WPKXKZ ")
 ;;6028
 ;;21,"0WPKXYZ ")
 ;;6029
 ;;21,"0WPL00Z ")
 ;;6030
 ;;21,"0WPL01Z ")
 ;;6031
 ;;21,"0WPL03Z ")
 ;;6032
 ;;21,"0WPL07Z ")
 ;;6033
 ;;21,"0WPL0JZ ")
 ;;6034
 ;;21,"0WPL0KZ ")
 ;;6035
 ;;21,"0WPL0YZ ")
 ;;6036
 ;;21,"0WPL30Z ")
 ;;6037
 ;;21,"0WPL31Z ")
 ;;6038
 ;;21,"0WPL33Z ")
 ;;6039
 ;;21,"0WPL37Z ")
 ;;6040
 ;;21,"0WPL3JZ ")
 ;;6041
 ;;21,"0WPL3KZ ")
 ;;6042
 ;;21,"0WPL3YZ ")
 ;;6043
 ;;21,"0WPL40Z ")
 ;;6044
 ;;21,"0WPL41Z ")
 ;;6045
 ;;21,"0WPL43Z ")
 ;;6046
 ;;21,"0WPL47Z ")
 ;;6047
 ;;21,"0WPL4JZ ")
 ;;6048
 ;;21,"0WPL4KZ ")
 ;;6049
 ;;21,"0WPL4YZ ")
 ;;6050
 ;;21,"0WPLX0Z ")
 ;;6051
 ;;21,"0WPLX1Z ")
 ;;6052
 ;;21,"0WPLX3Z ")
 ;;6053
 ;;21,"0WPLX7Z ")
 ;;6054
 ;;21,"0WPLXJZ ")
 ;;6055
 ;;21,"0WPLXKZ ")
 ;;6056
 ;;21,"0WPLXYZ ")
 ;;6057
 ;;21,"0WPM00Z ")
 ;;6058
 ;;21,"0WPM01Z ")
 ;;6059
 ;;21,"0WPM03Z ")
 ;;6060
 ;;21,"0WPM0JZ ")
 ;;6061
 ;;21,"0WPM0YZ ")
 ;;6062
 ;;21,"0WPM30Z ")
 ;;6063
 ;;21,"0WPM31Z ")
 ;;6064
 ;;21,"0WPM33Z ")
 ;;6065
 ;;21,"0WPM3JZ ")
 ;;6066
 ;;21,"0WPM3YZ ")
 ;;6067
 ;;21,"0WPM40Z ")
 ;;6068
 ;;21,"0WPM41Z ")
 ;;6069
 ;;21,"0WPM43Z ")
 ;;6070
 ;;21,"0WPM4JZ ")
 ;;6071
 ;;21,"0WPM4YZ ")
 ;;6072
 ;;21,"0WPMX0Z ")
 ;;6073
 ;;21,"0WPMX1Z ")
 ;;6074
 ;;21,"0WPMX3Z ")
 ;;6075
 ;;21,"0WPMXYZ ")
 ;;6076
 ;;21,"0WPNX0Z ")
 ;;6077
 ;;21,"0WPNX1Z ")
 ;;6078
 ;;21,"0WPNX3Z ")
 ;;6079
 ;;21,"0WPNX7Z ")
 ;;6080
 ;;21,"0WPNXJZ ")
 ;;6081
 ;;21,"0WPNXKZ ")
 ;;6082
 ;;21,"0WPNXYZ ")
 ;;6083
 ;;21,"0WPPX1Z ")
 ;;6084
 ;;21,"0WPPX3Z ")
 ;;6085
 ;;21,"0WPPXYZ ")
 ;;6086
 ;;21,"0WPQX1Z ")
 ;;6087
 ;;21,"0WPQX3Z ")
 ;;6088
 ;;21,"0WPQXYZ ")
 ;;6089
 ;;21,"0WPRX1Z ")
 ;;6090
 ;;21,"0WPRX3Z ")
 ;;6091
 ;;21,"0WPRXYZ ")
 ;;6092
 ;;21,"0WQ00ZZ ")
 ;;6093
 ;;21,"0WQ03ZZ ")
 ;;6094
 ;;21,"0WQ04ZZ ")
 ;;6095
 ;;21,"0WQ0XZZ ")
 ;;6096
 ;;21,"0WQ20ZZ ")
 ;;6097
 ;;21,"0WQ23ZZ ")
 ;;6098
 ;;21,"0WQ24ZZ ")
 ;;6099
 ;;21,"0WQ2XZZ ")
 ;;6100
 ;;21,"0WQ40ZZ ")
 ;;6101
 ;;21,"0WQ43ZZ ")
 ;;6102
 ;;21,"0WQ44ZZ ")
 ;;6103
 ;;21,"0WQ4XZZ ")
 ;;6104
 ;;21,"0WQ50ZZ ")
 ;;6105
 ;;21,"0WQ53ZZ ")
 ;;6106
 ;;21,"0WQ54ZZ ")
 ;;6107
 ;;21,"0WQ5XZZ ")
 ;;6108
 ;;21,"0WQ60ZZ ")
 ;;6109
 ;;21,"0WQ63ZZ ")
 ;;6110
 ;;21,"0WQ64ZZ ")
 ;;6111
 ;;21,"0WQ6XZZ ")
 ;;6112
 ;;21,"0WQK0ZZ ")
 ;;6113
 ;;21,"0WQK3ZZ ")
 ;;6114
 ;;21,"0WQK4ZZ ")
 ;;6115
 ;;21,"0WQKXZZ ")
 ;;6116
 ;;21,"0WQL0ZZ ")
 ;;6117
 ;;21,"0WQL3ZZ ")
 ;;6118
 ;;21,"0WQL4ZZ ")
 ;;6119
 ;;21,"0WQLXZZ ")
 ;;6120
 ;;21,"0WQM0ZZ ")
 ;;6121
 ;;21,"0WQM3ZZ ")
 ;;6122
 ;;21,"0WQM4ZZ ")
 ;;6123
 ;;21,"0WQMXZZ ")
 ;;6124
 ;;21,"0WU007Z ")
 ;;6125
 ;;21,"0WU00JZ ")
 ;;6126
 ;;21,"0WU00KZ ")
 ;;6127
 ;;21,"0WU047Z ")
 ;;6128
 ;;21,"0WU04JZ ")
 ;;6129
 ;;21,"0WU04KZ ")
 ;;6130
 ;;21,"0WU207Z ")
 ;;6131
 ;;21,"0WU20JZ ")
 ;;6132
 ;;21,"0WU20KZ ")
 ;;6133
 ;;21,"0WU247Z ")
 ;;6134
 ;;21,"0WU24JZ ")
 ;;6135
 ;;21,"0WU24KZ ")
 ;;6136
 ;;21,"0WU607Z ")
 ;;6137
 ;;21,"0WU60JZ ")
 ;;6138
 ;;21,"0WU60KZ ")
 ;;6139
 ;;21,"0WU647Z ")
 ;;6140
 ;;21,"0WU64JZ ")
 ;;6141
 ;;21,"0WU64KZ ")
 ;;6142
 ;;21,"0WUK07Z ")
 ;;6143
 ;;21,"0WUK0JZ ")
 ;;6144
 ;;21,"0WUK0KZ ")
 ;;6145
 ;;21,"0WUK47Z ")
 ;;6146
 ;;21,"0WUK4JZ ")
 ;;6147
 ;;21,"0WUK4KZ ")
 ;;6148
 ;;21,"0WUL07Z ")
 ;;6149
 ;;21,"0WUL0JZ ")
 ;;6150
 ;;21,"0WUL0KZ ")
 ;;6151
 ;;21,"0WUL47Z ")
 ;;6152
 ;;21,"0WUL4JZ ")
 ;;6153
 ;;21,"0WUL4KZ ")
 ;;6154
 ;;21,"0WUM0JZ ")
 ;;6155
 ;;21,"0WUM0KZ ")
 ;;6156
 ;;21,"0WUM4JZ ")
 ;;6157
 ;;21,"0WUM4KZ ")
 ;;6158
 ;;21,"0WW000Z ")
 ;;6159
 ;;21,"0WW001Z ")
 ;;6160
 ;;21,"0WW003Z ")
 ;;6161
 ;;21,"0WW007Z ")
 ;;6162
 ;;21,"0WW00JZ ")
 ;;6163
 ;;21,"0WW00KZ ")
 ;;6164
 ;;21,"0WW00YZ ")
 ;;6165
 ;;21,"0WW030Z ")
 ;;6166
 ;;21,"0WW031Z ")
 ;;6167
 ;;21,"0WW033Z ")
 ;;6168
 ;;21,"0WW037Z ")
 ;;6169
 ;;21,"0WW03JZ ")
 ;;6170
 ;;21,"0WW03KZ ")
 ;;6171
 ;;21,"0WW03YZ ")
 ;;6172
 ;;21,"0WW040Z ")
 ;;6173
 ;;21,"0WW041Z ")
 ;;6174
 ;;21,"0WW043Z ")
 ;;6175
 ;;21,"0WW047Z ")
 ;;6176
 ;;21,"0WW04JZ ")
 ;;6177
 ;;21,"0WW04KZ ")
 ;;6178
 ;;21,"0WW04YZ ")
 ;;6179
 ;;21,"0WW0X0Z ")
 ;;6180
 ;;21,"0WW0X1Z ")
 ;;6181
 ;;21,"0WW0X3Z ")
 ;;6182
 ;;21,"0WW0X7Z ")
 ;;6183
 ;;21,"0WW0XJZ ")
 ;;6184
 ;;21,"0WW0XKZ ")
 ;;6185
 ;;21,"0WW0XYZ ")
 ;;6186
 ;;21,"0WW1X0Z ")
 ;;6187
 ;;21,"0WW1X1Z ")
 ;;6188
 ;;21,"0WW1X3Z ")
 ;;6189
 ;;21,"0WW1XJZ ")
 ;;6190
 ;;21,"0WW1XYZ ")
 ;;6191
 ;;21,"0WW200Z ")
 ;;6192
 ;;21,"0WW201Z ")
 ;;6193
 ;;21,"0WW203Z ")
 ;;6194
 ;;21,"0WW207Z ")
 ;;6195
 ;;21,"0WW20JZ ")
 ;;6196
 ;;21,"0WW20KZ ")
 ;;6197
 ;;21,"0WW20YZ ")
 ;;6198
 ;;21,"0WW230Z ")
 ;;6199
 ;;21,"0WW231Z ")
 ;;6200
 ;;21,"0WW233Z ")
 ;;6201
 ;;21,"0WW237Z ")
 ;;6202
 ;;21,"0WW23JZ ")
 ;;6203
 ;;21,"0WW23KZ ")
 ;;6204
 ;;21,"0WW23YZ ")
 ;;6205
 ;;21,"0WW240Z ")
 ;;6206
 ;;21,"0WW241Z ")
 ;;6207
 ;;21,"0WW243Z ")
 ;;6208
 ;;21,"0WW247Z ")
 ;;6209
 ;;21,"0WW24JZ ")
 ;;6210
 ;;21,"0WW24KZ ")
 ;;6211
 ;;21,"0WW24YZ ")
 ;;6212
 ;;21,"0WW2X0Z ")
 ;;6213
 ;;21,"0WW2X1Z ")
 ;;6214
 ;;21,"0WW2X3Z ")
 ;;6215
 ;;21,"0WW2X7Z ")
 ;;6216
 ;;21,"0WW2XJZ ")
 ;;6217
 ;;21,"0WW2XKZ ")
 ;;6218
 ;;21,"0WW2XYZ ")
 ;;6219
 ;;21,"0WW400Z ")
 ;;6220
 ;;21,"0WW401Z ")
 ;;6221
 ;;21,"0WW403Z ")
 ;;6222
 ;;21,"0WW407Z ")
 ;;6223
 ;;21,"0WW40JZ ")
 ;;6224
 ;;21,"0WW40KZ ")
 ;;6225
 ;;21,"0WW40YZ ")
 ;;6226
 ;;21,"0WW430Z ")
 ;;6227
 ;;21,"0WW431Z ")
 ;;6228
 ;;21,"0WW433Z ")
 ;;6229
 ;;21,"0WW437Z ")
 ;;6230
 ;;21,"0WW43JZ ")
 ;;6231
 ;;21,"0WW43KZ ")
 ;;6232
 ;;21,"0WW43YZ ")
 ;;6233
 ;;21,"0WW440Z ")
 ;;6234
 ;;21,"0WW441Z ")
 ;;6235
 ;;21,"0WW443Z ")
 ;;6236
 ;;21,"0WW447Z ")
 ;;6237
 ;;21,"0WW44JZ ")
 ;;6238
 ;;21,"0WW44KZ ")
 ;;6239
 ;;21,"0WW44YZ ")
 ;;6240
 ;;21,"0WW4X0Z ")
 ;;6241
 ;;21,"0WW4X1Z ")
 ;;6242
 ;;21,"0WW4X3Z ")
 ;;6243
 ;;21,"0WW4X7Z ")
 ;;6244
 ;;21,"0WW4XJZ ")
 ;;6245
 ;;21,"0WW4XKZ ")
 ;;6246
 ;;21,"0WW4XYZ ")
 ;;6247
 ;;21,"0WW500Z ")
 ;;6248
 ;;21,"0WW501Z ")
 ;;6249
 ;;21,"0WW503Z ")
 ;;6250
 ;;21,"0WW507Z ")
 ;;6251
 ;;21,"0WW50JZ ")
 ;;6252
 ;;21,"0WW50KZ ")
 ;;6253
 ;;21,"0WW50YZ ")
 ;;6254
 ;;21,"0WW530Z ")
 ;;6255
 ;;21,"0WW531Z ")
 ;;6256
 ;;21,"0WW533Z ")
 ;;6257
 ;;21,"0WW537Z ")
 ;;6258
 ;;21,"0WW53JZ ")
 ;;6259
 ;;21,"0WW53KZ ")
 ;;6260
 ;;21,"0WW53YZ ")
 ;;6261
 ;;21,"0WW540Z ")
 ;;6262
 ;;21,"0WW541Z ")
 ;;6263
 ;;21,"0WW543Z ")
 ;;6264
 ;;21,"0WW547Z ")
 ;;6265
 ;;21,"0WW54JZ ")
 ;;6266
 ;;21,"0WW54KZ ")
 ;;6267
 ;;21,"0WW54YZ ")
 ;;6268
 ;;21,"0WW5X0Z ")
 ;;6269
 ;;21,"0WW5X1Z ")
 ;;6270
 ;;21,"0WW5X3Z ")
 ;;6271
 ;;21,"0WW5X7Z ")
 ;;6272
 ;;21,"0WW5XJZ ")
 ;;6273
 ;;21,"0WW5XKZ ")
 ;;6274
 ;;21,"0WW5XYZ ")
 ;;6275
 ;;21,"0WW600Z ")
 ;;6276
 ;;21,"0WW601Z ")
 ;;6277
 ;;21,"0WW603Z ")
 ;;6278
 ;;21,"0WW607Z ")
 ;;6279
 ;;21,"0WW60JZ ")
 ;;6280
 ;;21,"0WW60KZ ")
 ;;6281
 ;;21,"0WW60YZ ")
 ;;6282
 ;;21,"0WW630Z ")
 ;;6283
 ;;21,"0WW631Z ")
 ;;6284
 ;;21,"0WW633Z ")
 ;;6285
 ;;21,"0WW637Z ")
 ;;6286
 ;;21,"0WW63JZ ")
 ;;6287
 ;;21,"0WW63KZ ")
 ;;6288
 ;;21,"0WW63YZ ")
 ;;6289
 ;;21,"0WW640Z ")
 ;;6290
 ;;21,"0WW641Z ")
 ;;6291
 ;;21,"0WW643Z ")
 ;;6292
 ;;21,"0WW647Z ")
 ;;6293
 ;;21,"0WW64JZ ")
 ;;6294
 ;;21,"0WW64KZ ")
 ;;6295
 ;;21,"0WW64YZ ")
 ;;6296
 ;;21,"0WW6X0Z ")
 ;;6297
 ;;21,"0WW6X1Z ")
 ;;6298
 ;;21,"0WW6X3Z ")
 ;;6299
 ;;21,"0WW6X7Z ")
 ;;6300
 ;;21,"0WW6XJZ ")
 ;;6301
 ;;21,"0WW6XKZ ")
 ;;6302
 ;;21,"0WW6XYZ ")
 ;;6303
 ;;21,"0WW8X0Z ")
 ;;6304
 ;;21,"0WW8X1Z ")
 ;;6305
 ;;21,"0WW8X3Z ")
 ;;6306
 ;;21,"0WW8X7Z ")
 ;;6307
 ;;21,"0WW8XJZ ")
 ;;6308
 ;;21,"0WW8XKZ ")
 ;;6309
 ;;21,"0WW8XYZ ")
 ;;6310
 ;;21,"0WW9X0Z ")
 ;;6311
 ;;21,"0WW9X1Z ")
 ;;6312
 ;;21,"0WW9X3Z ")
 ;;6313
 ;;21,"0WW9XJZ ")
 ;;6314
 ;;21,"0WW9XYZ ")
 ;;6315
 ;;21,"0WWBX0Z ")
 ;;6316
 ;;21,"0WWBX1Z ")
 ;;6317
 ;;21,"0WWBX3Z ")
 ;;6318
 ;;21,"0WWBXJZ ")
 ;;6319
 ;;21,"0WWBXYZ ")
 ;;6320
 ;;21,"0WWCX0Z ")
 ;;6321
 ;;21,"0WWCX1Z ")
 ;;6322
 ;;21,"0WWCX3Z ")
 ;;6323
 ;;21,"0WWCX7Z ")
 ;;6324
 ;;21,"0WWCXJZ ")
 ;;6325
 ;;21,"0WWCXKZ ")
 ;;6326
 ;;21,"0WWCXYZ ")
 ;;6327
 ;;21,"0WWDX0Z ")
 ;;6328
 ;;21,"0WWDX1Z ")
 ;;6329
 ;;21,"0WWDX3Z ")
 ;;6330
 ;;21,"0WWDXYZ ")
 ;;6331
 ;;21,"0WWFX0Z ")
 ;;6332
 ;;21,"0WWFX1Z ")
 ;;6333
 ;;21,"0WWFX3Z ")
 ;;6334
 ;;21,"0WWFX7Z ")
 ;;6335
 ;;21,"0WWFXJZ ")
 ;;6336
 ;;21,"0WWFXKZ ")
 ;;6337
 ;;21,"0WWFXYZ ")
 ;;6338
 ;;21,"0WWGX0Z ")
 ;;6339
 ;;21,"0WWGX1Z ")
 ;;6340
 ;;21,"0WWGX3Z ")
 ;;6341
 ;;21,"0WWGXJZ ")
 ;;6342
 ;;21,"0WWGXYZ ")
 ;;6343
 ;;21,"0WWHX0Z ")
 ;;6344
 ;;21,"0WWHX1Z ")
 ;;6345
 ;;21,"0WWHX3Z ")
 ;;6346
 ;;21,"0WWHXYZ ")
 ;;6347
 ;;21,"0WWJX0Z ")
 ;;6348
 ;;21,"0WWJX1Z ")
 ;;6349
 ;;21,"0WWJX3Z ")
 ;;6350
 ;;21,"0WWJXJZ ")
 ;;6351
 ;;21,"0WWJXYZ ")
 ;;6352
 ;;21,"0WWK00Z ")
 ;;6353
 ;;21,"0WWK01Z ")
 ;;6354
 ;;21,"0WWK03Z ")
 ;;6355
 ;;21,"0WWK07Z ")
 ;;6356
 ;;21,"0WWK0JZ ")
 ;;6357
 ;;21,"0WWK0KZ ")
 ;;6358
 ;;21,"0WWK0YZ ")
 ;;6359
 ;;21,"0WWK30Z ")
 ;;6360
 ;;21,"0WWK31Z ")
 ;;6361
 ;;21,"0WWK33Z ")
 ;;6362
 ;;21,"0WWK37Z ")
 ;;6363
 ;;21,"0WWK3JZ ")
 ;;6364