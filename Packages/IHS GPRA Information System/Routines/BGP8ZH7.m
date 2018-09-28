BGP8ZH7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"42546-0777-30 ")
 ;;2023
 ;;21,"42582-0211-10 ")
 ;;2024
 ;;21,"42582-0211-18 ")
 ;;2025
 ;;21,"42582-0212-10 ")
 ;;2026
 ;;21,"42582-0212-18 ")
 ;;2027
 ;;21,"42582-0213-10 ")
 ;;2028
 ;;21,"42582-0213-18 ")
 ;;2029
 ;;21,"42582-0214-10 ")
 ;;2030
 ;;21,"42582-0214-18 ")
 ;;2031
 ;;21,"42783-0610-30 ")
 ;;2032
 ;;21,"42783-0610-60 ")
 ;;2033
 ;;21,"42806-0312-05 ")
 ;;2034
 ;;21,"42806-0312-50 ")
 ;;2035
 ;;21,"43063-0002-10 ")
 ;;2036
 ;;21,"43063-0015-04 ")
 ;;2037
 ;;21,"43063-0015-06 ")
 ;;2038
 ;;21,"43063-0015-15 ")
 ;;2039
 ;;21,"43063-0015-21 ")
 ;;2040
 ;;21,"43063-0015-24 ")
 ;;2041
 ;;21,"43063-0015-30 ")
 ;;2042
 ;;21,"43063-0015-40 ")
 ;;2043
 ;;21,"43063-0015-60 ")
 ;;2044
 ;;21,"43063-0016-06 ")
 ;;2045
 ;;21,"43063-0016-09 ")
 ;;2046
 ;;21,"43063-0016-10 ")
 ;;2047
 ;;21,"43063-0016-15 ")
 ;;2048
 ;;21,"43063-0016-20 ")
 ;;2049
 ;;21,"43063-0016-24 ")
 ;;2050
 ;;21,"43063-0016-28 ")
 ;;2051
 ;;21,"43063-0016-30 ")
 ;;2052
 ;;21,"43063-0016-40 ")
 ;;2053
 ;;21,"43063-0017-06 ")
 ;;2054
 ;;21,"43063-0017-09 ")
 ;;2055
 ;;21,"43063-0017-14 ")
 ;;2056
 ;;21,"43063-0017-15 ")
 ;;2057
 ;;21,"43063-0017-21 ")
 ;;2058
 ;;21,"43063-0017-24 ")
 ;;2059
 ;;21,"43063-0017-28 ")
 ;;2060
 ;;21,"43063-0017-30 ")
 ;;2061
 ;;21,"43063-0017-40 ")
 ;;2062
 ;;21,"43063-0017-42 ")
 ;;2063
 ;;21,"43063-0017-50 ")
 ;;2064
 ;;21,"43063-0017-56 ")
 ;;2065
 ;;21,"43063-0017-60 ")
 ;;2066
 ;;21,"43063-0017-63 ")
 ;;2067
 ;;21,"43063-0019-06 ")
 ;;2068
 ;;21,"43063-0024-02 ")
 ;;2069
 ;;21,"43063-0024-04 ")
 ;;2070
 ;;21,"43063-0024-06 ")
 ;;2071
 ;;21,"43063-0047-04 ")
 ;;2072
 ;;21,"43063-0047-06 ")
 ;;2073
 ;;21,"43063-0047-08 ")
 ;;2074
 ;;21,"43063-0047-09 ")
 ;;2075
 ;;21,"43063-0047-10 ")
 ;;2076
 ;;21,"43063-0047-14 ")
 ;;2077
 ;;21,"43063-0047-20 ")
 ;;2078
 ;;21,"43063-0047-21 ")
 ;;2079
 ;;21,"43063-0047-24 ")
 ;;2080
 ;;21,"43063-0047-28 ")
 ;;2081
 ;;21,"43063-0047-30 ")
 ;;2082
 ;;21,"43063-0047-40 ")
 ;;2083
 ;;21,"43063-0047-56 ")
 ;;2084
 ;;21,"43063-0053-04 ")
 ;;2085
 ;;21,"43063-0053-06 ")
 ;;2086
 ;;21,"43063-0054-06 ")
 ;;2087
 ;;21,"43063-0054-30 ")
 ;;2088
 ;;21,"43063-0054-40 ")
 ;;2089
 ;;21,"43063-0056-06 ")
 ;;2090
 ;;21,"43063-0077-03 ")
 ;;2091
 ;;21,"43063-0077-04 ")
 ;;2092
 ;;21,"43063-0077-06 ")
 ;;2093
 ;;21,"43063-0090-02 ")
 ;;2094
 ;;21,"43063-0090-04 ")
 ;;2095
 ;;21,"43063-0096-04 ")
 ;;2096
 ;;21,"43063-0096-06 ")
 ;;2097
 ;;21,"43063-0096-15 ")
 ;;2098
 ;;21,"43063-0096-20 ")
 ;;2099
 ;;21,"43063-0096-28 ")
 ;;2100
 ;;21,"43063-0096-30 ")
 ;;2101
 ;;21,"43063-0096-40 ")
 ;;2102
 ;;21,"43063-0110-06 ")
 ;;2103
 ;;21,"43063-0113-03 ")
 ;;2104
 ;;21,"43063-0180-06 ")
 ;;2105
 ;;21,"43063-0194-30 ")
 ;;2106
 ;;21,"43063-0269-04 ")
 ;;2107
 ;;21,"43063-0307-20 ")
 ;;2108
 ;;21,"43063-0323-02 ")
 ;;2109
 ;;21,"43063-0323-03 ")
 ;;2110
 ;;21,"43063-0323-07 ")
 ;;2111
 ;;21,"43063-0323-10 ")
 ;;2112
 ;;21,"43063-0324-05 ")
 ;;2113
 ;;21,"43063-0324-07 ")
 ;;2114
 ;;21,"43063-0324-10 ")
 ;;2115
 ;;21,"43063-0324-20 ")
 ;;2116
 ;;21,"43063-0341-04 ")
 ;;2117
 ;;21,"43063-0342-03 ")
 ;;2118
 ;;21,"43063-0362-20 ")
 ;;2119
 ;;21,"43063-0362-21 ")
 ;;2120
 ;;21,"43063-0362-28 ")
 ;;2121
 ;;21,"43063-0362-30 ")
 ;;2122
 ;;21,"43063-0362-40 ")
 ;;2123
 ;;21,"43063-0377-02 ")
 ;;2124
 ;;21,"43063-0378-03 ")
 ;;2125
 ;;21,"43063-0394-04 ")
 ;;2126
 ;;21,"43063-0394-06 ")
 ;;2127
 ;;21,"43063-0394-15 ")
 ;;2128
 ;;21,"43063-0394-17 ")
 ;;2129
 ;;21,"43063-0394-20 ")
 ;;2130
 ;;21,"43063-0394-28 ")
 ;;2131
 ;;21,"43063-0394-30 ")
 ;;2132
 ;;21,"43063-0394-40 ")
 ;;2133
 ;;21,"43063-0394-42 ")
 ;;2134
 ;;21,"43063-0394-56 ")
 ;;2135
 ;;21,"43063-0394-60 ")
 ;;2136
 ;;21,"43063-0394-80 ")
 ;;2137
 ;;21,"43063-0410-06 ")
 ;;2138
 ;;21,"43063-0410-10 ")
 ;;2139
 ;;21,"43063-0410-12 ")
 ;;2140
 ;;21,"43063-0410-14 ")
 ;;2141
 ;;21,"43063-0427-03 ")
 ;;2142
 ;;21,"43063-0427-04 ")
 ;;2143
 ;;21,"43063-0427-06 ")
 ;;2144
 ;;21,"43063-0427-10 ")
 ;;2145
 ;;21,"43063-0427-14 ")
 ;;2146
 ;;21,"43063-0427-20 ")
 ;;2147
 ;;21,"43063-0427-28 ")
 ;;2148
 ;;21,"43063-0427-30 ")
 ;;2149
 ;;21,"43063-0427-79 ")
 ;;2150
 ;;21,"43063-0434-21 ")
 ;;2151
 ;;21,"43063-0434-30 ")
 ;;2152
 ;;21,"43063-0434-40 ")
 ;;2153
 ;;21,"43063-0457-05 ")
 ;;2154
 ;;21,"43063-0457-07 ")
 ;;2155
 ;;21,"43063-0457-10 ")
 ;;2156
 ;;21,"43063-0459-05 ")
 ;;2157
 ;;21,"43063-0459-07 ")
 ;;2158
 ;;21,"43063-0459-10 ")
 ;;2159
 ;;21,"43063-0459-20 ")
 ;;2160
 ;;21,"43063-0466-14 ")
 ;;2161
 ;;21,"43063-0466-20 ")
 ;;2162
 ;;21,"43063-0497-04 ")
 ;;2163
 ;;21,"43063-0497-06 ")
 ;;2164
 ;;21,"43063-0497-08 ")
 ;;2165
 ;;21,"43063-0497-09 ")
 ;;2166
 ;;21,"43063-0497-10 ")
 ;;2167
 ;;21,"43063-0497-15 ")
 ;;2168
 ;;21,"43063-0497-20 ")
 ;;2169
 ;;21,"43063-0497-28 ")
 ;;2170
 ;;21,"43063-0497-30 ")
 ;;2171
 ;;21,"43063-0497-40 ")
 ;;2172
 ;;21,"43063-0506-02 ")
 ;;2173
 ;;21,"43063-0506-03 ")
 ;;2174
 ;;21,"43063-0506-07 ")
 ;;2175
 ;;21,"43063-0506-79 ")
 ;;2176
 ;;21,"43063-0508-04 ")
 ;;2177
 ;;21,"43063-0520-14 ")
 ;;2178
 ;;21,"43063-0524-04 ")
 ;;2179
 ;;21,"43063-0529-06 ")
 ;;2180
 ;;21,"43063-0529-14 ")
 ;;2181
 ;;21,"43063-0529-20 ")
 ;;2182
 ;;21,"43063-0529-28 ")
 ;;2183
 ;;21,"43063-0530-14 ")
 ;;2184
 ;;21,"43063-0530-20 ")
 ;;2185
 ;;21,"43063-0536-04 ")
 ;;2186
 ;;21,"43063-0536-06 ")
 ;;2187
 ;;21,"43063-0536-08 ")
 ;;2188
 ;;21,"43063-0536-09 ")
 ;;2189
 ;;21,"43063-0536-10 ")
 ;;2190
 ;;21,"43063-0536-14 ")
 ;;2191
 ;;21,"43063-0536-20 ")
 ;;2192
 ;;21,"43063-0536-21 ")
 ;;2193
 ;;21,"43063-0536-28 ")
 ;;2194
 ;;21,"43063-0536-30 ")
 ;;2195
 ;;21,"43063-0536-40 ")
 ;;2196
 ;;21,"43063-0536-56 ")
 ;;2197
 ;;21,"43063-0540-02 ")
 ;;2198
 ;;21,"43063-0540-03 ")
 ;;2199
 ;;21,"43063-0540-05 ")
 ;;2200
 ;;21,"43063-0540-07 ")
 ;;2201
 ;;21,"43063-0542-06 ")
 ;;2202
 ;;21,"43063-0542-08 ")
 ;;2203
 ;;21,"43063-0542-09 ")
 ;;2204
 ;;21,"43063-0542-14 ")
 ;;2205
 ;;21,"43063-0542-15 ")
 ;;2206
 ;;21,"43063-0542-21 ")
 ;;2207
 ;;21,"43063-0542-28 ")
 ;;2208
 ;;21,"43063-0542-30 ")
 ;;2209
 ;;21,"43063-0542-40 ")
 ;;2210
 ;;21,"43063-0542-60 ")
 ;;2211
 ;;21,"43063-0547-02 ")
 ;;2212
 ;;21,"43063-0547-03 ")
 ;;2213
 ;;21,"43063-0547-04 ")
 ;;2214
 ;;21,"43063-0547-06 ")
 ;;2215
 ;;21,"43063-0547-10 ")
 ;;2216
 ;;21,"43063-0547-14 ")
 ;;2217
 ;;21,"43063-0547-20 ")
 ;;2218
 ;;21,"43063-0547-30 ")
 ;;2219
 ;;21,"43063-0547-79 ")
 ;;2220
 ;;21,"43063-0553-10 ")
 ;;2221
 ;;21,"43063-0553-14 ")
 ;;2222
 ;;21,"43063-0553-20 ")
 ;;2223
 ;;21,"43063-0557-04 ")
 ;;2224
 ;;21,"43063-0557-06 ")
 ;;2225
 ;;21,"43063-0557-15 ")
 ;;2226
 ;;21,"43063-0557-20 ")
 ;;2227
 ;;21,"43063-0557-28 ")
 ;;2228
 ;;21,"43063-0557-30 ")
 ;;2229
 ;;21,"43063-0557-40 ")
 ;;2230
 ;;21,"43063-0563-06 ")
 ;;2231
 ;;21,"43063-0563-08 ")
 ;;2232
 ;;21,"43063-0563-09 ")
 ;;2233
 ;;21,"43063-0563-14 ")
 ;;2234
 ;;21,"43063-0563-15 ")
 ;;2235
 ;;21,"43063-0563-21 ")
 ;;2236
 ;;21,"43063-0563-28 ")
 ;;2237
 ;;21,"43063-0563-30 ")
 ;;2238
 ;;21,"43063-0563-40 ")
 ;;2239
 ;;21,"43063-0563-56 ")
 ;;2240
 ;;21,"43063-0563-60 ")
 ;;2241
 ;;21,"43063-0563-63 ")
 ;;2242
 ;;21,"43063-0568-02 ")
 ;;2243
 ;;21,"43063-0568-03 ")
 ;;2244
 ;;21,"43063-0568-79 ")
 ;;2245
 ;;21,"43063-0572-02 ")
 ;;2246
 ;;21,"43063-0572-04 ")
 ;;2247
 ;;21,"43063-0574-04 ")
 ;;2248
 ;;21,"43063-0574-06 ")
 ;;2249
 ;;21,"43063-0574-15 ")
 ;;2250
 ;;21,"43063-0574-21 ")
 ;;2251
 ;;21,"43063-0574-30 ")
 ;;2252
 ;;21,"43063-0576-28 ")
 ;;2253
 ;;21,"43063-0576-40 ")
 ;;2254
 ;;21,"43063-0584-20 ")
 ;;2255
 ;;21,"43063-0585-10 ")
 ;;2256
 ;;21,"43063-0595-20 ")
 ;;2257
 ;;21,"43063-0595-28 ")
 ;;2258
 ;;21,"43063-0597-20 ")
 ;;2259
 ;;21,"43063-0625-20 ")
 ;;2260
 ;;21,"43063-0625-60 ")
 ;;2261
 ;;21,"43063-0626-20 ")
 ;;2262
 ;;21,"43063-0626-60 ")
 ;;2263
 ;;21,"43063-0638-03 ")
 ;;2264
 ;;21,"43063-0638-07 ")
 ;;2265
 ;;21,"43063-0638-10 ")
 ;;2266
 ;;21,"43063-0638-14 ")
 ;;2267
 ;;21,"43063-0657-20 ")
 ;;2268
 ;;21,"43063-0682-20 ")
 ;;2269
 ;;21,"43063-0682-60 ")
 ;;2270
 ;;21,"43063-0704-06 ")
 ;;2271
 ;;21,"43063-0704-20 ")
 ;;2272
 ;;21,"43063-0704-28 ")
 ;;2273
 ;;21,"43063-0704-40 ")
 ;;2274
 ;;21,"43063-0713-02 ")
 ;;2275
 ;;21,"43063-0713-03 ")
 ;;2276
 ;;21,"43063-0713-05 ")
 ;;2277
 ;;21,"43063-0713-07 ")
 ;;2278
 ;;21,"43063-0713-79 ")
 ;;2279
 ;;21,"43063-0728-02 ")
 ;;2280
 ;;21,"43063-0728-04 ")
 ;;2281
 ;;21,"43063-0736-14 ")
 ;;2282
 ;;21,"43063-0736-30 ")
 ;;2283
 ;;21,"43063-0767-28 ")
 ;;2284
 ;;21,"43386-0330-01 ")
 ;;2285
 ;;21,"43386-0790-01 ")
 ;;2286
 ;;21,"43386-0791-01 ")
 ;;2287
 ;;21,"43386-0792-02 ")
 ;;2288
 ;;21,"43386-0792-11 ")
 ;;2289
 ;;21,"43538-0600-30 ")
 ;;2290
 ;;21,"43538-0601-30 ")
 ;;2291
 ;;21,"43538-0610-60 ")
 ;;2292
 ;;21,"43538-0611-60 ")
 ;;2293
 ;;21,"43538-0620-30 ")
 ;;2294
 ;;21,"43538-0621-30 ")
 ;;2295
 ;;21,"43547-0324-10 ")
 ;;2296
 ;;21,"43547-0325-06 ")
 ;;2297
 ;;21,"43598-0003-51 ")
 ;;2298
 ;;21,"43598-0003-54 ")
 ;;2299
 ;;21,"43598-0003-69 ")
 ;;2300
 ;;21,"43598-0004-51 ")
 ;;2301
 ;;21,"43598-0004-52 ")
 ;;2302
 ;;21,"43598-0004-53 ")
 ;;2303
 ;;21,"43598-0006-14 ")
 ;;2304
 ;;21,"43598-0012-51 ")
 ;;2305
 ;;21,"43598-0012-52 ")
 ;;2306
 ;;21,"43598-0012-53 ")
 ;;2307
 ;;21,"43598-0020-28 ")
 ;;2308
 ;;21,"43598-0020-40 ")
 ;;2309
 ;;21,"43598-0021-14 ")
 ;;2310
 ;;21,"43598-0203-51 ")
 ;;2311
 ;;21,"43598-0203-54 ")
 ;;2312
 ;;21,"43598-0203-69 ")
 ;;2313
 ;;21,"43598-0204-51 ")
 ;;2314
 ;;21,"43598-0204-52 ")
 ;;2315
 ;;21,"43598-0204-53 ")
 ;;2316
 ;;21,"43598-0205-01 ")
 ;;2317
 ;;21,"43598-0205-05 ")
 ;;2318
 ;;21,"43598-0206-14 ")
 ;;2319
 ;;21,"43598-0207-50 ")
 ;;2320
 ;;21,"43598-0207-51 ")
 ;;2321
 ;;21,"43598-0207-52 ")
 ;;2322
 ;;21,"43598-0208-50 ")
 ;;2323
 ;;21,"43598-0208-51 ")
 ;;2324
 ;;21,"43598-0208-52 ")
 ;;2325
 ;;21,"43598-0209-52 ")
 ;;2326
 ;;21,"43598-0209-53 ")
 ;;2327
 ;;21,"43598-0209-80 ")
 ;;2328
 ;;21,"43598-0213-50 ")
 ;;2329
 ;;21,"43598-0213-51 ")
 ;;2330
 ;;21,"43598-0213-52 ")
 ;;2331
 ;;21,"43598-0218-30 ")
 ;;2332
 ;;21,"43598-0219-01 ")
 ;;2333
 ;;21,"43598-0219-14 ")
 ;;2334
 ;;21,"43598-0220-28 ")
 ;;2335
 ;;21,"43598-0220-40 ")
 ;;2336
 ;;21,"43598-0221-14 ")
 ;;2337
 ;;21,"43598-0222-52 ")
 ;;2338
 ;;21,"43598-0222-53 ")
 ;;2339
 ;;21,"43598-0222-80 ")
 ;;2340
 ;;21,"43598-0223-50 ")
 ;;2341
 ;;21,"43598-0223-51 ")
 ;;2342
 ;;21,"43598-0223-52 ")
 ;;2343
 ;;21,"43598-0224-01 ")
 ;;2344
 ;;21,"43598-0225-01 ")
 ;;2345
 ;;21,"43598-0225-05 ")
 ;;2346
 ;;21,"43684-0200-20 ")
 ;;2347
 ;;21,"44009-0801-20 ")
 ;;2348
 ;;21,"44009-0802-20 ")
 ;;2349
 ;;21,"44183-0180-02 ")
 ;;2350
 ;;21,"44183-0400-22 ")
 ;;2351
 ;;21,"44567-0100-10 ")
 ;;2352
 ;;21,"44567-0101-10 ")
 ;;2353
 ;;21,"44567-0102-10 ")
 ;;2354
 ;;21,"44567-0103-10 ")
 ;;2355