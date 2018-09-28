BGP82O7 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"61442-0117-05 ")
 ;;2023
 ;;21,"61442-0361-01 ")
 ;;2024
 ;;21,"61442-0361-05 ")
 ;;2025
 ;;21,"61442-0361-10 ")
 ;;2026
 ;;21,"61442-0362-01 ")
 ;;2027
 ;;21,"61442-0362-05 ")
 ;;2028
 ;;21,"61442-0363-01 ")
 ;;2029
 ;;21,"61442-0363-05 ")
 ;;2030
 ;;21,"61919-0250-60 ")
 ;;2031
 ;;21,"61919-0250-90 ")
 ;;2032
 ;;21,"61919-0286-90 ")
 ;;2033
 ;;21,"61919-0313-60 ")
 ;;2034
 ;;21,"61919-0330-30 ")
 ;;2035
 ;;21,"61919-0330-60 ")
 ;;2036
 ;;21,"61919-0378-60 ")
 ;;2037
 ;;21,"61919-0397-60 ")
 ;;2038
 ;;21,"61919-0418-60 ")
 ;;2039
 ;;21,"61919-0448-60 ")
 ;;2040
 ;;21,"61919-0450-30 ")
 ;;2041
 ;;21,"61919-0450-60 ")
 ;;2042
 ;;21,"61919-0476-30 ")
 ;;2043
 ;;21,"61919-0725-90 ")
 ;;2044
 ;;21,"61919-0990-82 ")
 ;;2045
 ;;21,"62037-0571-01 ")
 ;;2046
 ;;21,"62037-0571-10 ")
 ;;2047
 ;;21,"62037-0577-01 ")
 ;;2048
 ;;21,"62037-0577-10 ")
 ;;2049
 ;;21,"62584-0259-01 ")
 ;;2050
 ;;21,"62584-0259-11 ")
 ;;2051
 ;;21,"62584-0332-01 ")
 ;;2052
 ;;21,"62584-0332-11 ")
 ;;2053
 ;;21,"62584-0452-01 ")
 ;;2054
 ;;21,"62584-0452-11 ")
 ;;2055
 ;;21,"62756-0142-01 ")
 ;;2056
 ;;21,"62756-0142-02 ")
 ;;2057
 ;;21,"62756-0143-01 ")
 ;;2058
 ;;21,"63187-0746-90 ")
 ;;2059
 ;;21,"63187-0811-30 ")
 ;;2060
 ;;21,"63304-0254-05 ")
 ;;2061
 ;;21,"63304-0254-30 ")
 ;;2062
 ;;21,"63304-0254-90 ")
 ;;2063
 ;;21,"63304-0255-05 ")
 ;;2064
 ;;21,"63304-0255-30 ")
 ;;2065
 ;;21,"63304-0255-90 ")
 ;;2066
 ;;21,"63304-0261-05 ")
 ;;2067
 ;;21,"63304-0261-30 ")
 ;;2068
 ;;21,"63304-0261-90 ")
 ;;2069
 ;;21,"63304-0311-05 ")
 ;;2070
 ;;21,"63304-0311-30 ")
 ;;2071
 ;;21,"63304-0311-90 ")
 ;;2072
 ;;21,"63304-0312-05 ")
 ;;2073
 ;;21,"63304-0312-30 ")
 ;;2074
 ;;21,"63304-0312-90 ")
 ;;2075
 ;;21,"63304-0313-05 ")
 ;;2076
 ;;21,"63304-0313-30 ")
 ;;2077
 ;;21,"63304-0313-90 ")
 ;;2078
 ;;21,"63629-1255-01 ")
 ;;2079
 ;;21,"63629-1255-02 ")
 ;;2080
 ;;21,"63629-1269-01 ")
 ;;2081
 ;;21,"63629-1392-01 ")
 ;;2082
 ;;21,"63629-1392-02 ")
 ;;2083
 ;;21,"63629-1392-03 ")
 ;;2084
 ;;21,"63629-1393-01 ")
 ;;2085
 ;;21,"63629-1393-02 ")
 ;;2086
 ;;21,"63629-1393-03 ")
 ;;2087
 ;;21,"63629-1393-04 ")
 ;;2088
 ;;21,"63629-1394-01 ")
 ;;2089
 ;;21,"63629-1394-02 ")
 ;;2090
 ;;21,"63629-1394-03 ")
 ;;2091
 ;;21,"63629-1395-01 ")
 ;;2092
 ;;21,"63629-1395-02 ")
 ;;2093
 ;;21,"63629-1395-03 ")
 ;;2094
 ;;21,"63629-1396-01 ")
 ;;2095
 ;;21,"63629-1396-02 ")
 ;;2096
 ;;21,"63629-1397-01 ")
 ;;2097
 ;;21,"63629-1397-02 ")
 ;;2098
 ;;21,"63629-1397-03 ")
 ;;2099
 ;;21,"63629-1397-04 ")
 ;;2100
 ;;21,"63629-1397-05 ")
 ;;2101
 ;;21,"63629-1398-01 ")
 ;;2102
 ;;21,"63629-1398-02 ")
 ;;2103
 ;;21,"63629-1398-03 ")
 ;;2104
 ;;21,"63629-2793-01 ")
 ;;2105
 ;;21,"63629-2793-03 ")
 ;;2106
 ;;21,"63629-2793-04 ")
 ;;2107
 ;;21,"63629-2793-05 ")
 ;;2108
 ;;21,"63629-2883-01 ")
 ;;2109
 ;;21,"63629-2883-02 ")
 ;;2110
 ;;21,"63629-2883-03 ")
 ;;2111
 ;;21,"63629-2907-01 ")
 ;;2112
 ;;21,"63629-2907-02 ")
 ;;2113
 ;;21,"63629-3043-01 ")
 ;;2114
 ;;21,"63629-3043-02 ")
 ;;2115
 ;;21,"63629-3158-01 ")
 ;;2116
 ;;21,"63629-3158-02 ")
 ;;2117
 ;;21,"63629-3158-03 ")
 ;;2118
 ;;21,"63629-3397-03 ")
 ;;2119
 ;;21,"63629-3998-01 ")
 ;;2120
 ;;21,"63629-4071-01 ")
 ;;2121
 ;;21,"63739-0119-10 ")
 ;;2122
 ;;21,"63739-0640-10 ")
 ;;2123
 ;;21,"63739-0702-10 ")
 ;;2124
 ;;21,"63874-0316-01 ")
 ;;2125
 ;;21,"63874-0316-02 ")
 ;;2126
 ;;21,"63874-0316-04 ")
 ;;2127
 ;;21,"63874-0316-05 ")
 ;;2128
 ;;21,"63874-0316-10 ")
 ;;2129
 ;;21,"63874-0316-12 ")
 ;;2130
 ;;21,"63874-0316-14 ")
 ;;2131
 ;;21,"63874-0316-15 ")
 ;;2132
 ;;21,"63874-0316-20 ")
 ;;2133
 ;;21,"63874-0316-21 ")
 ;;2134
 ;;21,"63874-0316-24 ")
 ;;2135
 ;;21,"63874-0316-28 ")
 ;;2136
 ;;21,"63874-0316-30 ")
 ;;2137
 ;;21,"63874-0316-50 ")
 ;;2138
 ;;21,"63874-0316-60 ")
 ;;2139
 ;;21,"63874-0316-81 ")
 ;;2140
 ;;21,"63874-0316-90 ")
 ;;2141
 ;;21,"63874-0317-01 ")
 ;;2142
 ;;21,"63874-0317-02 ")
 ;;2143
 ;;21,"63874-0317-04 ")
 ;;2144
 ;;21,"63874-0317-10 ")
 ;;2145
 ;;21,"63874-0317-12 ")
 ;;2146
 ;;21,"63874-0317-14 ")
 ;;2147
 ;;21,"63874-0317-15 ")
 ;;2148
 ;;21,"63874-0317-20 ")
 ;;2149
 ;;21,"63874-0317-24 ")
 ;;2150
 ;;21,"63874-0317-28 ")
 ;;2151
 ;;21,"63874-0317-30 ")
 ;;2152
 ;;21,"63874-0317-40 ")
 ;;2153
 ;;21,"63874-0317-50 ")
 ;;2154
 ;;21,"63874-0317-60 ")
 ;;2155
 ;;21,"63874-0317-90 ")
 ;;2156
 ;;21,"63874-0357-01 ")
 ;;2157
 ;;21,"63874-0357-02 ")
 ;;2158
 ;;21,"63874-0357-10 ")
 ;;2159
 ;;21,"63874-0357-12 ")
 ;;2160
 ;;21,"63874-0357-14 ")
 ;;2161
 ;;21,"63874-0357-15 ")
 ;;2162
 ;;21,"63874-0357-20 ")
 ;;2163
 ;;21,"63874-0357-21 ")
 ;;2164
 ;;21,"63874-0357-24 ")
 ;;2165
 ;;21,"63874-0357-30 ")
 ;;2166
 ;;21,"63874-0357-40 ")
 ;;2167
 ;;21,"63874-0357-60 ")
 ;;2168
 ;;21,"63874-0432-01 ")
 ;;2169
 ;;21,"63874-0432-02 ")
 ;;2170
 ;;21,"63874-0432-04 ")
 ;;2171
 ;;21,"63874-0432-10 ")
 ;;2172
 ;;21,"63874-0432-14 ")
 ;;2173
 ;;21,"63874-0432-20 ")
 ;;2174
 ;;21,"63874-0432-21 ")
 ;;2175
 ;;21,"63874-0432-24 ")
 ;;2176
 ;;21,"63874-0432-28 ")
 ;;2177
 ;;21,"63874-0432-30 ")
 ;;2178
 ;;21,"63874-0432-50 ")
 ;;2179
 ;;21,"63874-0432-60 ")
 ;;2180
 ;;21,"63874-0432-81 ")
 ;;2181
 ;;21,"63874-0432-90 ")
 ;;2182
 ;;21,"63874-0501-01 ")
 ;;2183
 ;;21,"63874-0501-04 ")
 ;;2184
 ;;21,"63874-0501-10 ")
 ;;2185
 ;;21,"63874-0501-14 ")
 ;;2186
 ;;21,"63874-0501-20 ")
 ;;2187
 ;;21,"63874-0501-24 ")
 ;;2188
 ;;21,"63874-0501-28 ")
 ;;2189
 ;;21,"63874-0501-30 ")
 ;;2190
 ;;21,"63874-0501-60 ")
 ;;2191
 ;;21,"63874-0501-90 ")
 ;;2192
 ;;21,"63874-0588-01 ")
 ;;2193
 ;;21,"63874-0588-04 ")
 ;;2194
 ;;21,"63874-0588-10 ")
 ;;2195
 ;;21,"63874-0588-14 ")
 ;;2196
 ;;21,"63874-0588-20 ")
 ;;2197
 ;;21,"63874-0588-30 ")
 ;;2198
 ;;21,"63874-0588-60 ")
 ;;2199
 ;;21,"63874-0588-80 ")
 ;;2200
 ;;21,"63874-0588-90 ")
 ;;2201
 ;;21,"63874-0635-01 ")
 ;;2202
 ;;21,"63874-0635-10 ")
 ;;2203
 ;;21,"63874-0635-20 ")
 ;;2204
 ;;21,"63874-0635-28 ")
 ;;2205
 ;;21,"63874-0635-30 ")
 ;;2206
 ;;21,"63874-0635-60 ")
 ;;2207
 ;;21,"63874-0635-90 ")
 ;;2208
 ;;21,"63874-0665-01 ")
 ;;2209
 ;;21,"63874-0665-04 ")
 ;;2210
 ;;21,"63874-0665-10 ")
 ;;2211
 ;;21,"63874-0665-14 ")
 ;;2212
 ;;21,"63874-0665-30 ")
 ;;2213
 ;;21,"63874-0665-60 ")
 ;;2214
 ;;21,"63874-0665-90 ")
 ;;2215
 ;;21,"63874-0974-01 ")
 ;;2216
 ;;21,"63874-0974-30 ")
 ;;2217
 ;;21,"63874-0974-60 ")
 ;;2218
 ;;21,"64720-0123-10 ")
 ;;2219
 ;;21,"64720-0125-10 ")
 ;;2220
 ;;21,"64720-0125-11 ")
 ;;2221
 ;;21,"64720-0290-10 ")
 ;;2222
 ;;21,"64720-0291-10 ")
 ;;2223
 ;;21,"64720-0292-10 ")
 ;;2224
 ;;21,"64720-0292-11 ")
 ;;2225
 ;;21,"64764-0121-03 ")
 ;;2226
 ;;21,"64764-0123-03 ")
 ;;2227
 ;;21,"64764-0124-03 ")
 ;;2228
 ;;21,"64764-0125-30 ")
 ;;2229
 ;;21,"64764-0151-04 ")
 ;;2230
 ;;21,"64764-0151-05 ")
 ;;2231
 ;;21,"64764-0151-06 ")
 ;;2232
 ;;21,"64764-0155-18 ")
 ;;2233
 ;;21,"64764-0155-60 ")
 ;;2234
 ;;21,"64764-0158-18 ")
 ;;2235
 ;;21,"64764-0158-60 ")
 ;;2236
 ;;21,"64764-0250-30 ")
 ;;2237
 ;;21,"64764-0251-03 ")
 ;;2238
 ;;21,"64764-0253-03 ")
 ;;2239
 ;;21,"64764-0254-03 ")
 ;;2240
 ;;21,"64764-0301-14 ")
 ;;2241
 ;;21,"64764-0301-15 ")
 ;;2242
 ;;21,"64764-0301-16 ")
 ;;2243
 ;;21,"64764-0302-30 ")
 ;;2244
 ;;21,"64764-0304-30 ")
 ;;2245
 ;;21,"64764-0310-30 ")
 ;;2246
 ;;21,"64764-0335-60 ")
 ;;2247
 ;;21,"64764-0337-60 ")
 ;;2248
 ;;21,"64764-0451-24 ")
 ;;2249
 ;;21,"64764-0451-25 ")
 ;;2250
 ;;21,"64764-0451-26 ")
 ;;2251
 ;;21,"64764-0510-30 ")
 ;;2252
 ;;21,"64764-0625-30 ")
 ;;2253
 ;;21,"64980-0279-03 ")
 ;;2254
 ;;21,"64980-0280-01 ")
 ;;2255
 ;;21,"64980-0280-05 ")
 ;;2256
 ;;21,"64980-0280-10 ")
 ;;2257
 ;;21,"64980-0281-01 ")
 ;;2258
 ;;21,"64980-0281-05 ")
 ;;2259
 ;;21,"64980-0281-10 ")
 ;;2260
 ;;21,"65162-0174-10 ")
 ;;2261
 ;;21,"65162-0174-11 ")
 ;;2262
 ;;21,"65162-0174-50 ")
 ;;2263
 ;;21,"65162-0175-10 ")
 ;;2264
 ;;21,"65162-0175-11 ")
 ;;2265
 ;;21,"65162-0175-50 ")
 ;;2266
 ;;21,"65162-0177-10 ")
 ;;2267
 ;;21,"65162-0177-11 ")
 ;;2268
 ;;21,"65162-0177-50 ")
 ;;2269
 ;;21,"65162-0218-10 ")
 ;;2270
 ;;21,"65162-0218-11 ")
 ;;2271
 ;;21,"65162-0218-50 ")
 ;;2272
 ;;21,"65162-0219-10 ")
 ;;2273
 ;;21,"65162-0219-11 ")
 ;;2274
 ;;21,"65162-0219-50 ")
 ;;2275
 ;;21,"65162-0220-10 ")
 ;;2276
 ;;21,"65162-0220-11 ")
 ;;2277
 ;;21,"65162-0220-50 ")
 ;;2278
 ;;21,"65243-0176-09 ")
 ;;2279
 ;;21,"65243-0176-12 ")
 ;;2280
 ;;21,"65243-0176-18 ")
 ;;2281
 ;;21,"65243-0176-27 ")
 ;;2282
 ;;21,"65243-0176-36 ")
 ;;2283
 ;;21,"65243-0183-18 ")
 ;;2284
 ;;21,"65243-0185-36 ")
 ;;2285
 ;;21,"65243-0195-09 ")
 ;;2286
 ;;21,"65243-0195-12 ")
 ;;2287
 ;;21,"65243-0196-09 ")
 ;;2288
 ;;21,"65243-0239-09 ")
 ;;2289
 ;;21,"65243-0239-18 ")
 ;;2290
 ;;21,"65243-0239-27 ")
 ;;2291
 ;;21,"65243-0288-06 ")
 ;;2292
 ;;21,"65243-0288-09 ")
 ;;2293
 ;;21,"65243-0288-12 ")
 ;;2294
 ;;21,"65243-0288-18 ")
 ;;2295
 ;;21,"65243-0289-06 ")
 ;;2296
 ;;21,"65243-0289-09 ")
 ;;2297
 ;;21,"65243-0289-12 ")
 ;;2298
 ;;21,"65243-0289-18 ")
 ;;2299
 ;;21,"65243-0325-09 ")
 ;;2300
 ;;21,"65243-0325-18 ")
 ;;2301
 ;;21,"65243-0343-09 ")
 ;;2302
 ;;21,"65243-0343-36 ")
 ;;2303
 ;;21,"65243-0346-09 ")
 ;;2304
 ;;21,"65243-0371-06 ")
 ;;2305
 ;;21,"65243-0371-09 ")
 ;;2306
 ;;21,"65243-0372-06 ")
 ;;2307
 ;;21,"65243-0372-09 ")
 ;;2308
 ;;21,"65243-0372-18 ")
 ;;2309
 ;;21,"65243-0373-09 ")
 ;;2310
 ;;21,"65243-0375-09 ")
 ;;2311
 ;;21,"65243-0378-09 ")
 ;;2312
 ;;21,"65862-0008-01 ")
 ;;2313
 ;;21,"65862-0008-05 ")
 ;;2314
 ;;21,"65862-0008-90 ")
 ;;2315
 ;;21,"65862-0008-99 ")
 ;;2316
 ;;21,"65862-0009-01 ")
 ;;2317
 ;;21,"65862-0009-05 ")
 ;;2318
 ;;21,"65862-0009-90 ")
 ;;2319
 ;;21,"65862-0010-01 ")
 ;;2320
 ;;21,"65862-0010-05 ")
 ;;2321
 ;;21,"65862-0010-46 ")
 ;;2322
 ;;21,"65862-0010-90 ")
 ;;2323
 ;;21,"65862-0010-99 ")
 ;;2324
 ;;21,"65862-0028-01 ")
 ;;2325
 ;;21,"65862-0029-01 ")
 ;;2326
 ;;21,"65862-0029-05 ")
 ;;2327
 ;;21,"65862-0030-01 ")
 ;;2328
 ;;21,"65862-0030-99 ")
 ;;2329
 ;;21,"65862-0080-01 ")
 ;;2330
 ;;21,"65862-0080-05 ")
 ;;2331
 ;;21,"65862-0081-01 ")
 ;;2332
 ;;21,"65862-0081-05 ")
 ;;2333
 ;;21,"65862-0082-01 ")
 ;;2334
 ;;21,"65862-0082-05 ")
 ;;2335
 ;;21,"65862-0291-01 ")
 ;;2336
 ;;21,"65862-0291-05 ")
 ;;2337
 ;;21,"65862-0292-01 ")
 ;;2338
 ;;21,"65862-0512-30 ")
 ;;2339
 ;;21,"65862-0513-30 ")
 ;;2340
 ;;21,"65862-0514-30 ")
 ;;2341
 ;;21,"65862-0525-18 ")
 ;;2342
 ;;21,"65862-0525-60 ")
 ;;2343
 ;;21,"65862-0526-18 ")
 ;;2344
 ;;21,"65862-0526-60 ")
 ;;2345
 ;;21,"65862-0670-01 ")
 ;;2346
 ;;21,"65862-0671-01 ")
 ;;2347
 ;;21,"65862-0672-01 ")
 ;;2348
 ;;21,"66105-0145-01 ")
 ;;2349
 ;;21,"66105-0145-03 ")
 ;;2350
 ;;21,"66105-0145-06 ")
 ;;2351
 ;;21,"66105-0145-09 ")
 ;;2352
 ;;21,"66105-0145-15 ")
 ;;2353
 ;;21,"66105-0154-01 ")
 ;;2354
 ;;21,"66105-0154-03 ")
 ;;2355