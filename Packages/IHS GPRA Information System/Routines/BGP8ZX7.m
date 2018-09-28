BGP8ZX7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63874-0558-10 ")
 ;;2023
 ;;21,"63874-0558-14 ")
 ;;2024
 ;;21,"63874-0558-16 ")
 ;;2025
 ;;21,"63874-0558-28 ")
 ;;2026
 ;;21,"63874-0558-30 ")
 ;;2027
 ;;21,"63874-0558-60 ")
 ;;2028
 ;;21,"63874-0558-90 ")
 ;;2029
 ;;21,"63874-0581-10 ")
 ;;2030
 ;;21,"63874-0581-30 ")
 ;;2031
 ;;21,"63874-0581-90 ")
 ;;2032
 ;;21,"63874-0655-01 ")
 ;;2033
 ;;21,"63874-0655-10 ")
 ;;2034
 ;;21,"63874-0655-20 ")
 ;;2035
 ;;21,"63874-0655-30 ")
 ;;2036
 ;;21,"63874-0655-60 ")
 ;;2037
 ;;21,"63874-0987-01 ")
 ;;2038
 ;;21,"63874-0987-10 ")
 ;;2039
 ;;21,"63874-0987-14 ")
 ;;2040
 ;;21,"63874-0987-20 ")
 ;;2041
 ;;21,"63874-0987-30 ")
 ;;2042
 ;;21,"63874-0987-60 ")
 ;;2043
 ;;21,"63874-1114-09 ")
 ;;2044
 ;;21,"64455-0140-30 ")
 ;;2045
 ;;21,"64455-0140-90 ")
 ;;2046
 ;;21,"64455-0141-10 ")
 ;;2047
 ;;21,"64455-0141-30 ")
 ;;2048
 ;;21,"64455-0141-90 ")
 ;;2049
 ;;21,"64455-0142-10 ")
 ;;2050
 ;;21,"64455-0142-30 ")
 ;;2051
 ;;21,"64455-0142-90 ")
 ;;2052
 ;;21,"64455-0143-10 ")
 ;;2053
 ;;21,"64455-0143-30 ")
 ;;2054
 ;;21,"64455-0143-90 ")
 ;;2055
 ;;21,"64455-0145-01 ")
 ;;2056
 ;;21,"64455-0146-01 ")
 ;;2057
 ;;21,"64679-0902-01 ")
 ;;2058
 ;;21,"64679-0902-02 ")
 ;;2059
 ;;21,"64679-0902-05 ")
 ;;2060
 ;;21,"64679-0903-01 ")
 ;;2061
 ;;21,"64679-0903-02 ")
 ;;2062
 ;;21,"64679-0903-05 ")
 ;;2063
 ;;21,"64679-0904-01 ")
 ;;2064
 ;;21,"64679-0904-02 ")
 ;;2065
 ;;21,"64679-0904-05 ")
 ;;2066
 ;;21,"64679-0905-01 ")
 ;;2067
 ;;21,"64679-0905-04 ")
 ;;2068
 ;;21,"64679-0923-02 ")
 ;;2069
 ;;21,"64679-0923-03 ")
 ;;2070
 ;;21,"64679-0923-09 ")
 ;;2071
 ;;21,"64679-0923-10 ")
 ;;2072
 ;;21,"64679-0924-02 ")
 ;;2073
 ;;21,"64679-0924-03 ")
 ;;2074
 ;;21,"64679-0924-09 ")
 ;;2075
 ;;21,"64679-0924-10 ")
 ;;2076
 ;;21,"64679-0925-02 ")
 ;;2077
 ;;21,"64679-0925-03 ")
 ;;2078
 ;;21,"64679-0925-09 ")
 ;;2079
 ;;21,"64679-0925-10 ")
 ;;2080
 ;;21,"64679-0926-02 ")
 ;;2081
 ;;21,"64679-0926-03 ")
 ;;2082
 ;;21,"64679-0926-09 ")
 ;;2083
 ;;21,"64679-0926-10 ")
 ;;2084
 ;;21,"64679-0927-01 ")
 ;;2085
 ;;21,"64679-0927-02 ")
 ;;2086
 ;;21,"64679-0927-05 ")
 ;;2087
 ;;21,"64679-0927-09 ")
 ;;2088
 ;;21,"64679-0928-01 ")
 ;;2089
 ;;21,"64679-0928-05 ")
 ;;2090
 ;;21,"64679-0928-06 ")
 ;;2091
 ;;21,"64679-0928-10 ")
 ;;2092
 ;;21,"64679-0929-01 ")
 ;;2093
 ;;21,"64679-0929-05 ")
 ;;2094
 ;;21,"64679-0929-06 ")
 ;;2095
 ;;21,"64679-0929-10 ")
 ;;2096
 ;;21,"64679-0941-01 ")
 ;;2097
 ;;21,"64679-0941-05 ")
 ;;2098
 ;;21,"64679-0941-06 ")
 ;;2099
 ;;21,"64679-0941-10 ")
 ;;2100
 ;;21,"64679-0942-01 ")
 ;;2101
 ;;21,"64679-0942-02 ")
 ;;2102
 ;;21,"64679-0942-05 ")
 ;;2103
 ;;21,"64679-0942-09 ")
 ;;2104
 ;;21,"64679-0953-01 ")
 ;;2105
 ;;21,"64679-0953-02 ")
 ;;2106
 ;;21,"64679-0953-05 ")
 ;;2107
 ;;21,"64679-0953-09 ")
 ;;2108
 ;;21,"64980-0194-01 ")
 ;;2109
 ;;21,"64980-0195-01 ")
 ;;2110
 ;;21,"64980-0196-01 ")
 ;;2111
 ;;21,"65162-0751-10 ")
 ;;2112
 ;;21,"65162-0751-50 ")
 ;;2113
 ;;21,"65162-0752-10 ")
 ;;2114
 ;;21,"65162-0752-50 ")
 ;;2115
 ;;21,"65162-0753-10 ")
 ;;2116
 ;;21,"65162-0753-50 ")
 ;;2117
 ;;21,"65162-0754-10 ")
 ;;2118
 ;;21,"65162-0754-50 ")
 ;;2119
 ;;21,"65243-0303-03 ")
 ;;2120
 ;;21,"65243-0314-03 ")
 ;;2121
 ;;21,"65862-0037-01 ")
 ;;2122
 ;;21,"65862-0037-05 ")
 ;;2123
 ;;21,"65862-0037-99 ")
 ;;2124
 ;;21,"65862-0038-01 ")
 ;;2125
 ;;21,"65862-0038-05 ")
 ;;2126
 ;;21,"65862-0038-99 ")
 ;;2127
 ;;21,"65862-0039-01 ")
 ;;2128
 ;;21,"65862-0039-05 ")
 ;;2129
 ;;21,"65862-0039-99 ")
 ;;2130
 ;;21,"65862-0040-01 ")
 ;;2131
 ;;21,"65862-0040-05 ")
 ;;2132
 ;;21,"65862-0040-99 ")
 ;;2133
 ;;21,"65862-0041-01 ")
 ;;2134
 ;;21,"65862-0041-05 ")
 ;;2135
 ;;21,"65862-0041-99 ")
 ;;2136
 ;;21,"65862-0042-01 ")
 ;;2137
 ;;21,"65862-0042-05 ")
 ;;2138
 ;;21,"65862-0042-99 ")
 ;;2139
 ;;21,"65862-0043-01 ")
 ;;2140
 ;;21,"65862-0043-05 ")
 ;;2141
 ;;21,"65862-0044-01 ")
 ;;2142
 ;;21,"65862-0044-05 ")
 ;;2143
 ;;21,"65862-0045-01 ")
 ;;2144
 ;;21,"65862-0045-05 ")
 ;;2145
 ;;21,"65862-0116-01 ")
 ;;2146
 ;;21,"65862-0117-01 ")
 ;;2147
 ;;21,"65862-0118-01 ")
 ;;2148
 ;;21,"65862-0161-90 ")
 ;;2149
 ;;21,"65862-0162-30 ")
 ;;2150
 ;;21,"65862-0162-90 ")
 ;;2151
 ;;21,"65862-0163-90 ")
 ;;2152
 ;;21,"65862-0164-01 ")
 ;;2153
 ;;21,"65862-0165-01 ")
 ;;2154
 ;;21,"65862-0166-01 ")
 ;;2155
 ;;21,"65862-0286-01 ")
 ;;2156
 ;;21,"65862-0287-01 ")
 ;;2157
 ;;21,"65862-0288-01 ")
 ;;2158
 ;;21,"65862-0308-01 ")
 ;;2159
 ;;21,"65862-0309-01 ")
 ;;2160
 ;;21,"65862-0471-90 ")
 ;;2161
 ;;21,"65862-0472-90 ")
 ;;2162
 ;;21,"65862-0473-90 ")
 ;;2163
 ;;21,"65862-0474-01 ")
 ;;2164
 ;;21,"65862-0474-30 ")
 ;;2165
 ;;21,"65862-0475-01 ")
 ;;2166
 ;;21,"65862-0475-05 ")
 ;;2167
 ;;21,"65862-0476-01 ")
 ;;2168
 ;;21,"65862-0476-05 ")
 ;;2169
 ;;21,"65862-0477-01 ")
 ;;2170
 ;;21,"65862-0477-05 ")
 ;;2171
 ;;21,"65862-0582-01 ")
 ;;2172
 ;;21,"65862-0582-05 ")
 ;;2173
 ;;21,"65862-0583-01 ")
 ;;2174
 ;;21,"65862-0583-05 ")
 ;;2175
 ;;21,"65862-0584-01 ")
 ;;2176
 ;;21,"65862-0584-05 ")
 ;;2177
 ;;21,"65862-0585-01 ")
 ;;2178
 ;;21,"65862-0585-05 ")
 ;;2179
 ;;21,"65862-0586-01 ")
 ;;2180
 ;;21,"65862-0586-05 ")
 ;;2181
 ;;21,"65862-0587-01 ")
 ;;2182
 ;;21,"65862-0587-05 ")
 ;;2183
 ;;21,"65862-0617-90 ")
 ;;2184
 ;;21,"65862-0618-90 ")
 ;;2185
 ;;21,"65862-0619-90 ")
 ;;2186
 ;;21,"65862-0620-90 ")
 ;;2187
 ;;21,"66105-0101-09 ")
 ;;2188
 ;;21,"66105-0102-09 ")
 ;;2189
 ;;21,"66105-0103-09 ")
 ;;2190
 ;;21,"66105-0524-09 ")
 ;;2191
 ;;21,"66105-0548-03 ")
 ;;2192
 ;;21,"66105-0555-10 ")
 ;;2193
 ;;21,"66267-0323-30 ")
 ;;2194
 ;;21,"66267-0323-60 ")
 ;;2195
 ;;21,"66267-0323-90 ")
 ;;2196
 ;;21,"66267-0323-91 ")
 ;;2197
 ;;21,"66267-0380-30 ")
 ;;2198
 ;;21,"66267-0380-60 ")
 ;;2199
 ;;21,"66267-0380-90 ")
 ;;2200
 ;;21,"66267-0380-91 ")
 ;;2201
 ;;21,"66267-0413-30 ")
 ;;2202
 ;;21,"66267-0413-60 ")
 ;;2203
 ;;21,"66267-0413-90 ")
 ;;2204
 ;;21,"66267-0413-92 ")
 ;;2205
 ;;21,"66336-0124-30 ")
 ;;2206
 ;;21,"66336-0232-30 ")
 ;;2207
 ;;21,"66336-0366-30 ")
 ;;2208
 ;;21,"66336-0389-30 ")
 ;;2209
 ;;21,"66336-0389-60 ")
 ;;2210
 ;;21,"66336-0391-30 ")
 ;;2211
 ;;21,"66336-0391-60 ")
 ;;2212
 ;;21,"66336-0393-30 ")
 ;;2213
 ;;21,"66336-0393-60 ")
 ;;2214
 ;;21,"66336-0572-30 ")
 ;;2215
 ;;21,"66336-0618-60 ")
 ;;2216
 ;;21,"66336-0691-30 ")
 ;;2217
 ;;21,"66336-0741-30 ")
 ;;2218
 ;;21,"66336-0750-60 ")
 ;;2219
 ;;21,"66336-0750-90 ")
 ;;2220
 ;;21,"66336-0773-30 ")
 ;;2221
 ;;21,"66336-0794-60 ")
 ;;2222
 ;;21,"66336-0805-30 ")
 ;;2223
 ;;21,"66336-0946-30 ")
 ;;2224
 ;;21,"66336-0946-60 ")
 ;;2225
 ;;21,"66336-0946-90 ")
 ;;2226
 ;;21,"66336-0972-30 ")
 ;;2227
 ;;21,"66636-0691-30 ")
 ;;2228
 ;;21,"66685-0301-00 ")
 ;;2229
 ;;21,"66685-0301-02 ")
 ;;2230
 ;;21,"66685-0302-00 ")
 ;;2231
 ;;21,"66685-0302-02 ")
 ;;2232
 ;;21,"66685-0303-00 ")
 ;;2233
 ;;21,"66685-0303-02 ")
 ;;2234
 ;;21,"66685-0304-00 ")
 ;;2235
 ;;21,"66685-0304-02 ")
 ;;2236
 ;;21,"66685-0701-01 ")
 ;;2237
 ;;21,"66685-0701-02 ")
 ;;2238
 ;;21,"66685-0702-01 ")
 ;;2239
 ;;21,"66685-0702-02 ")
 ;;2240
 ;;21,"66685-0702-03 ")
 ;;2241
 ;;21,"66685-0703-01 ")
 ;;2242
 ;;21,"66685-0703-02 ")
 ;;2243
 ;;21,"66685-0703-03 ")
 ;;2244
 ;;21,"66685-0704-01 ")
 ;;2245
 ;;21,"66685-0704-02 ")
 ;;2246
 ;;21,"66685-0704-03 ")
 ;;2247
 ;;21,"66685-0705-01 ")
 ;;2248
 ;;21,"66685-0705-02 ")
 ;;2249
 ;;21,"66685-0706-01 ")
 ;;2250
 ;;21,"66685-0706-03 ")
 ;;2251
 ;;21,"66685-0706-04 ")
 ;;2252
 ;;21,"67253-0106-10 ")
 ;;2253
 ;;21,"67253-0107-10 ")
 ;;2254
 ;;21,"67253-0671-10 ")
 ;;2255
 ;;21,"67253-0672-10 ")
 ;;2256
 ;;21,"67253-0672-11 ")
 ;;2257
 ;;21,"67253-0673-10 ")
 ;;2258
 ;;21,"67253-0673-11 ")
 ;;2259
 ;;21,"67253-0674-10 ")
 ;;2260
 ;;21,"67253-0674-11 ")
 ;;2261
 ;;21,"67544-0062-30 ")
 ;;2262
 ;;21,"67544-0128-15 ")
 ;;2263
 ;;21,"67544-0134-15 ")
 ;;2264
 ;;21,"67544-0148-15 ")
 ;;2265
 ;;21,"67544-0159-15 ")
 ;;2266
 ;;21,"67544-0173-30 ")
 ;;2267
 ;;21,"67544-0174-30 ")
 ;;2268
 ;;21,"67544-0219-15 ")
 ;;2269
 ;;21,"67544-0306-30 ")
 ;;2270
 ;;21,"67544-0311-30 ")
 ;;2271
 ;;21,"67544-0322-15 ")
 ;;2272
 ;;21,"67544-0350-80 ")
 ;;2273
 ;;21,"67544-0377-60 ")
 ;;2274
 ;;21,"67544-0380-30 ")
 ;;2275
 ;;21,"67544-0418-60 ")
 ;;2276
 ;;21,"67544-0431-15 ")
 ;;2277
 ;;21,"67544-0454-15 ")
 ;;2278
 ;;21,"67544-0489-15 ")
 ;;2279
 ;;21,"67544-0997-30 ")
 ;;2280
 ;;21,"67544-0999-60 ")
 ;;2281
 ;;21,"67801-0340-03 ")
 ;;2282
 ;;21,"67801-0342-03 ")
 ;;2283
 ;;21,"67801-0343-03 ")
 ;;2284
 ;;21,"67801-0441-03 ")
 ;;2285
 ;;21,"68001-0130-00 ")
 ;;2286
 ;;21,"68001-0131-00 ")
 ;;2287
 ;;21,"68001-0132-00 ")
 ;;2288
 ;;21,"68001-0133-00 ")
 ;;2289
 ;;21,"68001-0134-00 ")
 ;;2290
 ;;21,"68001-0135-00 ")
 ;;2291
 ;;21,"68001-0140-04 ")
 ;;2292
 ;;21,"68001-0141-00 ")
 ;;2293
 ;;21,"68001-0141-03 ")
 ;;2294
 ;;21,"68001-0142-00 ")
 ;;2295
 ;;21,"68001-0142-03 ")
 ;;2296
 ;;21,"68001-0143-00 ")
 ;;2297
 ;;21,"68001-0143-03 ")
 ;;2298
 ;;21,"68001-0186-05 ")
 ;;2299
 ;;21,"68001-0187-05 ")
 ;;2300
 ;;21,"68001-0188-05 ")
 ;;2301
 ;;21,"68001-0189-05 ")
 ;;2302
 ;;21,"68001-0207-00 ")
 ;;2303
 ;;21,"68001-0207-08 ")
 ;;2304
 ;;21,"68001-0208-00 ")
 ;;2305
 ;;21,"68001-0208-08 ")
 ;;2306
 ;;21,"68001-0209-00 ")
 ;;2307
 ;;21,"68001-0209-08 ")
 ;;2308
 ;;21,"68001-0210-00 ")
 ;;2309
 ;;21,"68001-0210-08 ")
 ;;2310
 ;;21,"68001-0211-00 ")
 ;;2311
 ;;21,"68001-0211-08 ")
 ;;2312
 ;;21,"68001-0212-00 ")
 ;;2313
 ;;21,"68001-0260-05 ")
 ;;2314
 ;;21,"68001-0268-00 ")
 ;;2315
 ;;21,"68001-0268-08 ")
 ;;2316
 ;;21,"68001-0269-00 ")
 ;;2317
 ;;21,"68001-0269-08 ")
 ;;2318
 ;;21,"68001-0270-00 ")
 ;;2319
 ;;21,"68001-0271-00 ")
 ;;2320
 ;;21,"68001-0271-08 ")
 ;;2321
 ;;21,"68001-0272-00 ")
 ;;2322
 ;;21,"68001-0272-08 ")
 ;;2323
 ;;21,"68084-0058-01 ")
 ;;2324
 ;;21,"68084-0060-01 ")
 ;;2325
 ;;21,"68084-0060-11 ")
 ;;2326
 ;;21,"68084-0061-01 ")
 ;;2327
 ;;21,"68084-0061-11 ")
 ;;2328
 ;;21,"68084-0062-01 ")
 ;;2329
 ;;21,"68084-0062-11 ")
 ;;2330
 ;;21,"68084-0064-01 ")
 ;;2331
 ;;21,"68084-0064-11 ")
 ;;2332
 ;;21,"68084-0196-01 ")
 ;;2333
 ;;21,"68084-0196-11 ")
 ;;2334
 ;;21,"68084-0197-01 ")
 ;;2335
 ;;21,"68084-0198-01 ")
 ;;2336
 ;;21,"68084-0198-11 ")
 ;;2337
 ;;21,"68084-0199-01 ")
 ;;2338
 ;;21,"68084-0266-01 ")
 ;;2339
 ;;21,"68084-0266-11 ")
 ;;2340
 ;;21,"68084-0267-01 ")
 ;;2341
 ;;21,"68084-0267-11 ")
 ;;2342
 ;;21,"68084-0268-01 ")
 ;;2343
 ;;21,"68084-0268-11 ")
 ;;2344
 ;;21,"68084-0294-11 ")
 ;;2345
 ;;21,"68084-0294-21 ")
 ;;2346
 ;;21,"68084-0390-01 ")
 ;;2347
 ;;21,"68084-0390-11 ")
 ;;2348
 ;;21,"68084-0391-01 ")
 ;;2349
 ;;21,"68084-0391-11 ")
 ;;2350
 ;;21,"68084-0392-01 ")
 ;;2351
 ;;21,"68084-0392-11 ")
 ;;2352
 ;;21,"68084-0519-11 ")
 ;;2353
 ;;21,"68084-0519-21 ")
 ;;2354
 ;;21,"68084-0519-25 ")
 ;;2355