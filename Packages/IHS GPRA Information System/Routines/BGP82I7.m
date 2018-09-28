BGP82I7 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"49999-0877-30 ")
 ;;2023
 ;;21,"49999-0877-90 ")
 ;;2024
 ;;21,"49999-0878-30 ")
 ;;2025
 ;;21,"49999-0878-90 ")
 ;;2026
 ;;21,"49999-0879-00 ")
 ;;2027
 ;;21,"49999-0879-30 ")
 ;;2028
 ;;21,"49999-0880-00 ")
 ;;2029
 ;;21,"49999-0880-30 ")
 ;;2030
 ;;21,"49999-0880-90 ")
 ;;2031
 ;;21,"49999-0924-00 ")
 ;;2032
 ;;21,"49999-0924-10 ")
 ;;2033
 ;;21,"49999-0924-30 ")
 ;;2034
 ;;21,"49999-0924-60 ")
 ;;2035
 ;;21,"49999-0924-90 ")
 ;;2036
 ;;21,"49999-0934-30 ")
 ;;2037
 ;;21,"49999-0940-30 ")
 ;;2038
 ;;21,"49999-0940-90 ")
 ;;2039
 ;;21,"49999-0943-00 ")
 ;;2040
 ;;21,"49999-0943-90 ")
 ;;2041
 ;;21,"49999-0946-30 ")
 ;;2042
 ;;21,"49999-0947-30 ")
 ;;2043
 ;;21,"49999-0948-30 ")
 ;;2044
 ;;21,"49999-0988-30 ")
 ;;2045
 ;;21,"49999-0991-90 ")
 ;;2046
 ;;21,"50090-1995-00 ")
 ;;2047
 ;;21,"50268-0109-11 ")
 ;;2048
 ;;21,"50268-0109-15 ")
 ;;2049
 ;;21,"50268-0110-11 ")
 ;;2050
 ;;21,"50268-0110-15 ")
 ;;2051
 ;;21,"50268-0111-11 ")
 ;;2052
 ;;21,"50268-0111-15 ")
 ;;2053
 ;;21,"50268-0112-11 ")
 ;;2054
 ;;21,"50268-0112-15 ")
 ;;2055
 ;;21,"50268-0440-11 ")
 ;;2056
 ;;21,"50268-0440-15 ")
 ;;2057
 ;;21,"50268-0441-11 ")
 ;;2058
 ;;21,"50268-0441-15 ")
 ;;2059
 ;;21,"50268-0442-11 ")
 ;;2060
 ;;21,"50268-0442-15 ")
 ;;2061
 ;;21,"50268-0513-11 ")
 ;;2062
 ;;21,"50268-0513-15 ")
 ;;2063
 ;;21,"50268-0514-11 ")
 ;;2064
 ;;21,"50268-0514-15 ")
 ;;2065
 ;;21,"50268-0515-11 ")
 ;;2066
 ;;21,"50268-0515-15 ")
 ;;2067
 ;;21,"50268-0516-11 ")
 ;;2068
 ;;21,"50268-0516-15 ")
 ;;2069
 ;;21,"50268-0517-11 ")
 ;;2070
 ;;21,"50268-0517-15 ")
 ;;2071
 ;;21,"50268-0518-11 ")
 ;;2072
 ;;21,"50268-0518-15 ")
 ;;2073
 ;;21,"50268-0688-11 ")
 ;;2074
 ;;21,"50268-0688-15 ")
 ;;2075
 ;;21,"50268-0689-11 ")
 ;;2076
 ;;21,"50268-0689-15 ")
 ;;2077
 ;;21,"50268-0690-11 ")
 ;;2078
 ;;21,"50268-0690-15 ")
 ;;2079
 ;;21,"50268-0691-11 ")
 ;;2080
 ;;21,"50268-0691-15 ")
 ;;2081
 ;;21,"50268-0783-11 ")
 ;;2082
 ;;21,"50268-0783-15 ")
 ;;2083
 ;;21,"50268-0784-11 ")
 ;;2084
 ;;21,"50268-0784-15 ")
 ;;2085
 ;;21,"50268-0785-11 ")
 ;;2086
 ;;21,"50268-0785-15 ")
 ;;2087
 ;;21,"50268-0786-11 ")
 ;;2088
 ;;21,"50268-0786-13 ")
 ;;2089
 ;;21,"50268-0790-11 ")
 ;;2090
 ;;21,"50268-0790-15 ")
 ;;2091
 ;;21,"50268-0791-11 ")
 ;;2092
 ;;21,"50268-0791-15 ")
 ;;2093
 ;;21,"50268-0792-11 ")
 ;;2094
 ;;21,"50268-0792-15 ")
 ;;2095
 ;;21,"50268-0793-11 ")
 ;;2096
 ;;21,"50268-0793-15 ")
 ;;2097
 ;;21,"50268-0794-11 ")
 ;;2098
 ;;21,"50268-0794-15 ")
 ;;2099
 ;;21,"50436-4000-03 ")
 ;;2100
 ;;21,"50436-5000-01 ")
 ;;2101
 ;;21,"51079-0145-01 ")
 ;;2102
 ;;21,"51079-0145-20 ")
 ;;2103
 ;;21,"51079-0146-01 ")
 ;;2104
 ;;21,"51079-0146-20 ")
 ;;2105
 ;;21,"51079-0192-01 ")
 ;;2106
 ;;21,"51079-0192-03 ")
 ;;2107
 ;;21,"51079-0193-01 ")
 ;;2108
 ;;21,"51079-0193-03 ")
 ;;2109
 ;;21,"51079-0194-01 ")
 ;;2110
 ;;21,"51079-0194-03 ")
 ;;2111
 ;;21,"51079-0256-40 ")
 ;;2112
 ;;21,"51079-0261-40 ")
 ;;2113
 ;;21,"51079-0863-01 ")
 ;;2114
 ;;21,"51079-0863-20 ")
 ;;2115
 ;;21,"51079-0864-01 ")
 ;;2116
 ;;21,"51079-0864-20 ")
 ;;2117
 ;;21,"51079-0950-01 ")
 ;;2118
 ;;21,"51079-0950-20 ")
 ;;2119
 ;;21,"51079-0951-01 ")
 ;;2120
 ;;21,"51079-0951-20 ")
 ;;2121
 ;;21,"51079-0952-01 ")
 ;;2122
 ;;21,"51079-0952-20 ")
 ;;2123
 ;;21,"51079-0953-01 ")
 ;;2124
 ;;21,"51079-0953-20 ")
 ;;2125
 ;;21,"51079-0981-01 ")
 ;;2126
 ;;21,"51079-0981-20 ")
 ;;2127
 ;;21,"51079-0981-30 ")
 ;;2128
 ;;21,"51079-0981-40 ")
 ;;2129
 ;;21,"51079-0981-56 ")
 ;;2130
 ;;21,"51079-0981-60 ")
 ;;2131
 ;;21,"51079-0982-01 ")
 ;;2132
 ;;21,"51079-0982-17 ")
 ;;2133
 ;;21,"51079-0982-19 ")
 ;;2134
 ;;21,"51079-0982-20 ")
 ;;2135
 ;;21,"51079-0982-30 ")
 ;;2136
 ;;21,"51079-0982-40 ")
 ;;2137
 ;;21,"51079-0982-56 ")
 ;;2138
 ;;21,"51079-0982-60 ")
 ;;2139
 ;;21,"51079-0983-01 ")
 ;;2140
 ;;21,"51079-0983-17 ")
 ;;2141
 ;;21,"51079-0983-19 ")
 ;;2142
 ;;21,"51079-0983-20 ")
 ;;2143
 ;;21,"51079-0983-30 ")
 ;;2144
 ;;21,"51079-0983-40 ")
 ;;2145
 ;;21,"51079-0983-56 ")
 ;;2146
 ;;21,"51079-0983-60 ")
 ;;2147
 ;;21,"51079-0984-01 ")
 ;;2148
 ;;21,"51079-0984-20 ")
 ;;2149
 ;;21,"51079-0984-40 ")
 ;;2150
 ;;21,"51138-0033-30 ")
 ;;2151
 ;;21,"51138-0034-30 ")
 ;;2152
 ;;21,"51138-0035-30 ")
 ;;2153
 ;;21,"51138-0036-30 ")
 ;;2154
 ;;21,"51138-0063-30 ")
 ;;2155
 ;;21,"51138-0064-30 ")
 ;;2156
 ;;21,"51138-0065-30 ")
 ;;2157
 ;;21,"51138-0066-30 ")
 ;;2158
 ;;21,"51138-0067-30 ")
 ;;2159
 ;;21,"51138-0068-30 ")
 ;;2160
 ;;21,"51138-0211-30 ")
 ;;2161
 ;;21,"51138-0212-30 ")
 ;;2162
 ;;21,"51138-0213-30 ")
 ;;2163
 ;;21,"51660-0140-30 ")
 ;;2164
 ;;21,"51660-0141-90 ")
 ;;2165
 ;;21,"51660-0142-90 ")
 ;;2166
 ;;21,"51660-0143-90 ")
 ;;2167
 ;;21,"51672-4037-01 ")
 ;;2168
 ;;21,"51672-4037-03 ")
 ;;2169
 ;;21,"51672-4038-01 ")
 ;;2170
 ;;21,"51672-4038-03 ")
 ;;2171
 ;;21,"51672-4039-01 ")
 ;;2172
 ;;21,"51672-4039-03 ")
 ;;2173
 ;;21,"51672-4040-01 ")
 ;;2174
 ;;21,"51672-4040-03 ")
 ;;2175
 ;;21,"51672-4045-01 ")
 ;;2176
 ;;21,"51672-4046-01 ")
 ;;2177
 ;;21,"52343-0116-30 ")
 ;;2178
 ;;21,"52343-0116-90 ")
 ;;2179
 ;;21,"52343-0116-99 ")
 ;;2180
 ;;21,"52343-0117-30 ")
 ;;2181
 ;;21,"52343-0117-90 ")
 ;;2182
 ;;21,"52343-0117-99 ")
 ;;2183
 ;;21,"52343-0118-30 ")
 ;;2184
 ;;21,"52343-0118-90 ")
 ;;2185
 ;;21,"52343-0118-99 ")
 ;;2186
 ;;21,"52343-0122-30 ")
 ;;2187
 ;;21,"52343-0123-90 ")
 ;;2188
 ;;21,"52343-0124-90 ")
 ;;2189
 ;;21,"52343-0125-90 ")
 ;;2190
 ;;21,"52427-0435-90 ")
 ;;2191
 ;;21,"52427-0436-90 ")
 ;;2192
 ;;21,"52427-0437-90 ")
 ;;2193
 ;;21,"52427-0438-90 ")
 ;;2194
 ;;21,"52427-0439-90 ")
 ;;2195
 ;;21,"52427-0440-90 ")
 ;;2196
 ;;21,"52427-0441-90 ")
 ;;2197
 ;;21,"52427-0442-90 ")
 ;;2198
 ;;21,"52427-0443-90 ")
 ;;2199
 ;;21,"52652-1001-01 ")
 ;;2200
 ;;21,"52652-3001-01 ")
 ;;2201
 ;;21,"52652-4001-01 ")
 ;;2202
 ;;21,"52959-0137-15 ")
 ;;2203
 ;;21,"52959-0180-30 ")
 ;;2204
 ;;21,"52959-0180-60 ")
 ;;2205
 ;;21,"52959-0498-00 ")
 ;;2206
 ;;21,"52959-0728-15 ")
 ;;2207
 ;;21,"52959-0728-20 ")
 ;;2208
 ;;21,"52959-0728-30 ")
 ;;2209
 ;;21,"52959-0728-90 ")
 ;;2210
 ;;21,"52959-0729-30 ")
 ;;2211
 ;;21,"52959-0729-60 ")
 ;;2212
 ;;21,"52959-0729-90 ")
 ;;2213
 ;;21,"52959-0753-00 ")
 ;;2214
 ;;21,"52959-0753-30 ")
 ;;2215
 ;;21,"52959-0753-60 ")
 ;;2216
 ;;21,"52959-0756-30 ")
 ;;2217
 ;;21,"52959-0831-30 ")
 ;;2218
 ;;21,"52959-0835-30 ")
 ;;2219
 ;;21,"52959-0835-60 ")
 ;;2220
 ;;21,"52959-0841-30 ")
 ;;2221
 ;;21,"52959-0841-60 ")
 ;;2222
 ;;21,"52959-0854-20 ")
 ;;2223
 ;;21,"52959-0854-30 ")
 ;;2224
 ;;21,"52959-0907-30 ")
 ;;2225
 ;;21,"52959-0942-30 ")
 ;;2226
 ;;21,"52959-0973-30 ")
 ;;2227
 ;;21,"52959-0975-30 ")
 ;;2228
 ;;21,"52959-0997-30 ")
 ;;2229
 ;;21,"53002-0431-00 ")
 ;;2230
 ;;21,"53002-0431-30 ")
 ;;2231
 ;;21,"53002-0431-60 ")
 ;;2232
 ;;21,"53002-1086-00 ")
 ;;2233
 ;;21,"53002-1086-03 ")
 ;;2234
 ;;21,"53002-1086-06 ")
 ;;2235
 ;;21,"53002-1123-00 ")
 ;;2236
 ;;21,"53002-1123-03 ")
 ;;2237
 ;;21,"53002-1123-06 ")
 ;;2238
 ;;21,"53002-1178-00 ")
 ;;2239
 ;;21,"53002-1178-03 ")
 ;;2240
 ;;21,"53002-1178-06 ")
 ;;2241
 ;;21,"53002-1225-00 ")
 ;;2242
 ;;21,"53002-1225-03 ")
 ;;2243
 ;;21,"53002-1225-06 ")
 ;;2244
 ;;21,"53002-1463-00 ")
 ;;2245
 ;;21,"53002-1463-03 ")
 ;;2246
 ;;21,"53217-0003-00 ")
 ;;2247
 ;;21,"53217-0003-30 ")
 ;;2248
 ;;21,"53217-0003-60 ")
 ;;2249
 ;;21,"53217-0003-90 ")
 ;;2250
 ;;21,"53217-0012-30 ")
 ;;2251
 ;;21,"53217-0012-60 ")
 ;;2252
 ;;21,"53217-0012-90 ")
 ;;2253
 ;;21,"53217-0076-30 ")
 ;;2254
 ;;21,"53217-0076-60 ")
 ;;2255
 ;;21,"53217-0076-90 ")
 ;;2256
 ;;21,"53217-0089-30 ")
 ;;2257
 ;;21,"53217-0089-60 ")
 ;;2258
 ;;21,"53217-0089-90 ")
 ;;2259
 ;;21,"53217-0114-00 ")
 ;;2260
 ;;21,"53217-0114-30 ")
 ;;2261
 ;;21,"53217-0114-60 ")
 ;;2262
 ;;21,"53217-0114-90 ")
 ;;2263
 ;;21,"53217-0190-30 ")
 ;;2264
 ;;21,"53217-0253-02 ")
 ;;2265
 ;;21,"53217-0253-30 ")
 ;;2266
 ;;21,"53217-0253-60 ")
 ;;2267
 ;;21,"53217-0253-90 ")
 ;;2268
 ;;21,"53217-0277-30 ")
 ;;2269
 ;;21,"53217-0278-30 ")
 ;;2270
 ;;21,"53217-0283-02 ")
 ;;2271
 ;;21,"53217-0283-30 ")
 ;;2272
 ;;21,"53217-0283-60 ")
 ;;2273
 ;;21,"53217-0283-90 ")
 ;;2274
 ;;21,"53217-0303-02 ")
 ;;2275
 ;;21,"53217-0303-30 ")
 ;;2276
 ;;21,"53217-0303-60 ")
 ;;2277
 ;;21,"53217-0303-90 ")
 ;;2278
 ;;21,"54458-0862-10 ")
 ;;2279
 ;;21,"54458-0862-16 ")
 ;;2280
 ;;21,"54458-0863-10 ")
 ;;2281
 ;;21,"54458-0863-16 ")
 ;;2282
 ;;21,"54458-0872-10 ")
 ;;2283
 ;;21,"54458-0873-10 ")
 ;;2284
 ;;21,"54458-0874-10 ")
 ;;2285
 ;;21,"54458-0877-10 ")
 ;;2286
 ;;21,"54458-0886-10 ")
 ;;2287
 ;;21,"54458-0893-10 ")
 ;;2288
 ;;21,"54458-0906-02 ")
 ;;2289
 ;;21,"54458-0907-02 ")
 ;;2290
 ;;21,"54458-0910-02 ")
 ;;2291
 ;;21,"54458-0957-10 ")
 ;;2292
 ;;21,"54458-0991-10 ")
 ;;2293
 ;;21,"54458-0992-10 ")
 ;;2294
 ;;21,"54458-0993-09 ")
 ;;2295
 ;;21,"54458-0994-10 ")
 ;;2296
 ;;21,"54458-0995-10 ")
 ;;2297
 ;;21,"54458-0996-10 ")
 ;;2298
 ;;21,"54458-0997-10 ")
 ;;2299
 ;;21,"54458-0998-09 ")
 ;;2300
 ;;21,"54458-0999-09 ")
 ;;2301
 ;;21,"54458-0999-10 ")
 ;;2302
 ;;21,"54569-1944-02 ")
 ;;2303
 ;;21,"54569-3714-00 ")
 ;;2304
 ;;21,"54569-4246-00 ")
 ;;2305
 ;;21,"54569-4246-03 ")
 ;;2306
 ;;21,"54569-4246-04 ")
 ;;2307
 ;;21,"54569-4246-05 ")
 ;;2308
 ;;21,"54569-4246-07 ")
 ;;2309
 ;;21,"54569-4247-00 ")
 ;;2310
 ;;21,"54569-4247-02 ")
 ;;2311
 ;;21,"54569-4247-03 ")
 ;;2312
 ;;21,"54569-4247-04 ")
 ;;2313
 ;;21,"54569-4438-00 ")
 ;;2314
 ;;21,"54569-4572-00 ")
 ;;2315
 ;;21,"54569-4593-00 ")
 ;;2316
 ;;21,"54569-4593-01 ")
 ;;2317
 ;;21,"54569-4593-03 ")
 ;;2318
 ;;21,"54569-4714-00 ")
 ;;2319
 ;;21,"54569-4722-01 ")
 ;;2320
 ;;21,"54569-4766-00 ")
 ;;2321
 ;;21,"54569-4766-03 ")
 ;;2322
 ;;21,"54569-4767-00 ")
 ;;2323
 ;;21,"54569-4767-03 ")
 ;;2324
 ;;21,"54569-5133-00 ")
 ;;2325
 ;;21,"54569-5133-01 ")
 ;;2326
 ;;21,"54569-5134-00 ")
 ;;2327
 ;;21,"54569-5134-01 ")
 ;;2328
 ;;21,"54569-5134-02 ")
 ;;2329
 ;;21,"54569-5134-04 ")
 ;;2330
 ;;21,"54569-5135-00 ")
 ;;2331
 ;;21,"54569-5135-01 ")
 ;;2332
 ;;21,"54569-5361-00 ")
 ;;2333
 ;;21,"54569-5362-00 ")
 ;;2334
 ;;21,"54569-5434-00 ")
 ;;2335
 ;;21,"54569-5434-03 ")
 ;;2336
 ;;21,"54569-5434-04 ")
 ;;2337
 ;;21,"54569-5434-05 ")
 ;;2338
 ;;21,"54569-5435-00 ")
 ;;2339
 ;;21,"54569-5435-03 ")
 ;;2340
 ;;21,"54569-5435-04 ")
 ;;2341
 ;;21,"54569-5435-05 ")
 ;;2342
 ;;21,"54569-5437-00 ")
 ;;2343
 ;;21,"54569-5437-02 ")
 ;;2344
 ;;21,"54569-5438-00 ")
 ;;2345
 ;;21,"54569-5438-03 ")
 ;;2346
 ;;21,"54569-5472-00 ")
 ;;2347
 ;;21,"54569-5472-02 ")
 ;;2348
 ;;21,"54569-5606-00 ")
 ;;2349
 ;;21,"54569-5621-00 ")
 ;;2350
 ;;21,"54569-5665-00 ")
 ;;2351
 ;;21,"54569-5666-00 ")
 ;;2352
 ;;21,"54569-5667-00 ")
 ;;2353
 ;;21,"54569-5668-00 ")
 ;;2354
 ;;21,"54569-5668-01 ")
 ;;2355