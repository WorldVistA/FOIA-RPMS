BGP53J6 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"51079-0482-56 ")
 ;;1953
 ;;21,"51079-0543-01 ")
 ;;1954
 ;;21,"51079-0543-20 ")
 ;;1955
 ;;21,"51079-0543-56 ")
 ;;1956
 ;;21,"51079-0544-01 ")
 ;;1957
 ;;21,"51079-0544-20 ")
 ;;1958
 ;;21,"51079-0544-56 ")
 ;;1959
 ;;21,"51079-0563-01 ")
 ;;1960
 ;;21,"51079-0563-20 ")
 ;;1961
 ;;21,"51079-0564-01 ")
 ;;1962
 ;;21,"51079-0564-20 ")
 ;;1963
 ;;21,"51079-0645-01 ")
 ;;1964
 ;;21,"51079-0645-20 ")
 ;;1965
 ;;21,"51079-0651-01 ")
 ;;1966
 ;;21,"51079-0651-20 ")
 ;;1967
 ;;21,"51079-0762-01 ")
 ;;1968
 ;;21,"51079-0762-20 ")
 ;;1969
 ;;21,"51079-0763-01 ")
 ;;1970
 ;;21,"51079-0763-20 ")
 ;;1971
 ;;21,"51079-0764-01 ")
 ;;1972
 ;;21,"51079-0764-20 ")
 ;;1973
 ;;21,"51079-0774-01 ")
 ;;1974
 ;;21,"51079-0774-20 ")
 ;;1975
 ;;21,"51079-0775-01 ")
 ;;1976
 ;;21,"51079-0775-20 ")
 ;;1977
 ;;21,"51079-0803-01 ")
 ;;1978
 ;;21,"51079-0803-20 ")
 ;;1979
 ;;21,"51079-0804-01 ")
 ;;1980
 ;;21,"51079-0804-19 ")
 ;;1981
 ;;21,"51079-0804-20 ")
 ;;1982
 ;;21,"51079-0805-01 ")
 ;;1983
 ;;21,"51079-0805-20 ")
 ;;1984
 ;;21,"51079-0824-63 ")
 ;;1985
 ;;21,"51079-0825-62 ")
 ;;1986
 ;;21,"51079-0825-63 ")
 ;;1987
 ;;21,"51079-0943-01 ")
 ;;1988
 ;;21,"51079-0943-20 ")
 ;;1989
 ;;21,"51079-0943-30 ")
 ;;1990
 ;;21,"51079-0943-56 ")
 ;;1991
 ;;21,"51079-0944-01 ")
 ;;1992
 ;;21,"51079-0944-20 ")
 ;;1993
 ;;21,"51079-0971-01 ")
 ;;1994
 ;;21,"51079-0971-19 ")
 ;;1995
 ;;21,"51079-0971-20 ")
 ;;1996
 ;;21,"51079-0992-01 ")
 ;;1997
 ;;21,"51079-0992-20 ")
 ;;1998
 ;;21,"51079-0993-01 ")
 ;;1999
 ;;21,"51079-0993-20 ")
 ;;2000
 ;;21,"51079-0997-01 ")
 ;;2001
 ;;21,"51079-0997-20 ")
 ;;2002
 ;;21,"51285-0538-02 ")
 ;;2003
 ;;21,"51285-0539-02 ")
 ;;2004
 ;;21,"51285-0554-02 ")
 ;;2005
 ;;21,"51285-0594-02 ")
 ;;2006
 ;;21,"51285-0595-02 ")
 ;;2007
 ;;21,"51285-0910-04 ")
 ;;2008
 ;;21,"51285-0911-04 ")
 ;;2009
 ;;21,"51285-0912-04 ")
 ;;2010
 ;;21,"51655-0148-51 ")
 ;;2011
 ;;21,"51655-0148-77 ")
 ;;2012
 ;;21,"51655-0223-51 ")
 ;;2013
 ;;21,"51655-0662-24 ")
 ;;2014
 ;;21,"51672-1348-01 ")
 ;;2015
 ;;21,"51672-4001-05 ")
 ;;2016
 ;;21,"51672-4001-06 ")
 ;;2017
 ;;21,"51672-4002-05 ")
 ;;2018
 ;;21,"51672-4002-06 ")
 ;;2019
 ;;21,"51672-4003-05 ")
 ;;2020
 ;;21,"51672-4003-06 ")
 ;;2021
 ;;21,"51672-4004-05 ")
 ;;2022
 ;;21,"51672-4004-06 ")
 ;;2023
 ;;21,"51672-4011-01 ")
 ;;2024
 ;;21,"51672-4011-05 ")
 ;;2025
 ;;21,"51672-4011-06 ")
 ;;2026
 ;;21,"51672-4012-01 ")
 ;;2027
 ;;21,"51672-4012-05 ")
 ;;2028
 ;;21,"51672-4012-06 ")
 ;;2029
 ;;21,"51672-4013-01 ")
 ;;2030
 ;;21,"51672-4013-05 ")
 ;;2031
 ;;21,"51672-4013-06 ")
 ;;2032
 ;;21,"52152-0293-08 ")
 ;;2033
 ;;21,"52152-0293-30 ")
 ;;2034
 ;;21,"52152-0294-08 ")
 ;;2035
 ;;21,"52152-0294-30 ")
 ;;2036
 ;;21,"52152-0341-02 ")
 ;;2037
 ;;21,"52152-0342-02 ")
 ;;2038
 ;;21,"52152-0342-05 ")
 ;;2039
 ;;21,"52152-0343-02 ")
 ;;2040
 ;;21,"52152-0343-05 ")
 ;;2041
 ;;21,"52152-0344-02 ")
 ;;2042
 ;;21,"52152-0345-02 ")
 ;;2043
 ;;21,"52152-0345-04 ")
 ;;2044
 ;;21,"52152-0346-50 ")
 ;;2045
 ;;21,"52959-0008-02 ")
 ;;2046
 ;;21,"52959-0008-15 ")
 ;;2047
 ;;21,"52959-0008-30 ")
 ;;2048
 ;;21,"52959-0008-40 ")
 ;;2049
 ;;21,"52959-0008-60 ")
 ;;2050
 ;;21,"52959-0008-90 ")
 ;;2051
 ;;21,"52959-0010-00 ")
 ;;2052
 ;;21,"52959-0010-30 ")
 ;;2053
 ;;21,"52959-0010-60 ")
 ;;2054
 ;;21,"52959-0128-30 ")
 ;;2055
 ;;21,"52959-0128-60 ")
 ;;2056
 ;;21,"52959-0140-30 ")
 ;;2057
 ;;21,"52959-0140-60 ")
 ;;2058
 ;;21,"52959-0140-90 ")
 ;;2059
 ;;21,"52959-0163-30 ")
 ;;2060
 ;;21,"52959-0173-30 ")
 ;;2061
 ;;21,"52959-0233-00 ")
 ;;2062
 ;;21,"52959-0233-10 ")
 ;;2063
 ;;21,"52959-0233-14 ")
 ;;2064
 ;;21,"52959-0233-20 ")
 ;;2065
 ;;21,"52959-0233-30 ")
 ;;2066
 ;;21,"52959-0233-40 ")
 ;;2067
 ;;21,"52959-0233-50 ")
 ;;2068
 ;;21,"52959-0284-00 ")
 ;;2069
 ;;21,"52959-0284-30 ")
 ;;2070
 ;;21,"52959-0284-60 ")
 ;;2071
 ;;21,"52959-0285-30 ")
 ;;2072
 ;;21,"52959-0285-60 ")
 ;;2073
 ;;21,"52959-0348-05 ")
 ;;2074
 ;;21,"52959-0348-10 ")
 ;;2075
 ;;21,"52959-0348-12 ")
 ;;2076
 ;;21,"52959-0348-14 ")
 ;;2077
 ;;21,"52959-0348-15 ")
 ;;2078
 ;;21,"52959-0348-20 ")
 ;;2079
 ;;21,"52959-0348-30 ")
 ;;2080
 ;;21,"52959-0348-50 ")
 ;;2081
 ;;21,"52959-0348-60 ")
 ;;2082
 ;;21,"52959-0348-90 ")
 ;;2083
 ;;21,"52959-0358-02 ")
 ;;2084
 ;;21,"52959-0358-20 ")
 ;;2085
 ;;21,"52959-0358-90 ")
 ;;2086
 ;;21,"52959-0359-50 ")
 ;;2087
 ;;21,"52959-0360-12 ")
 ;;2088
 ;;21,"52959-0360-15 ")
 ;;2089
 ;;21,"52959-0360-20 ")
 ;;2090
 ;;21,"52959-0360-30 ")
 ;;2091
 ;;21,"52959-0360-60 ")
 ;;2092
 ;;21,"52959-0361-00 ")
 ;;2093
 ;;21,"52959-0361-14 ")
 ;;2094
 ;;21,"52959-0361-30 ")
 ;;2095
 ;;21,"52959-0361-60 ")
 ;;2096
 ;;21,"52959-0378-15 ")
 ;;2097
 ;;21,"52959-0378-20 ")
 ;;2098
 ;;21,"52959-0378-30 ")
 ;;2099
 ;;21,"52959-0378-60 ")
 ;;2100
 ;;21,"52959-0378-90 ")
 ;;2101
 ;;21,"52959-0388-30 ")
 ;;2102
 ;;21,"52959-0388-60 ")
 ;;2103
 ;;21,"52959-0458-14 ")
 ;;2104
 ;;21,"52959-0458-20 ")
 ;;2105
 ;;21,"52959-0458-30 ")
 ;;2106
 ;;21,"52959-0464-00 ")
 ;;2107
 ;;21,"52959-0464-12 ")
 ;;2108
 ;;21,"52959-0464-14 ")
 ;;2109
 ;;21,"52959-0464-20 ")
 ;;2110
 ;;21,"52959-0514-01 ")
 ;;2111
 ;;21,"52959-0514-10 ")
 ;;2112
 ;;21,"52959-0514-20 ")
 ;;2113
 ;;21,"52959-0514-21 ")
 ;;2114
 ;;21,"52959-0514-30 ")
 ;;2115
 ;;21,"52959-0514-60 ")
 ;;2116
 ;;21,"52959-0514-90 ")
 ;;2117
 ;;21,"52959-0519-15 ")
 ;;2118
 ;;21,"52959-0519-30 ")
 ;;2119
 ;;21,"52959-0519-60 ")
 ;;2120
 ;;21,"52959-0537-30 ")
 ;;2121
 ;;21,"52959-0537-90 ")
 ;;2122
 ;;21,"52959-0541-10 ")
 ;;2123
 ;;21,"52959-0541-20 ")
 ;;2124
 ;;21,"52959-0541-30 ")
 ;;2125
 ;;21,"52959-0541-60 ")
 ;;2126
 ;;21,"52959-0542-14 ")
 ;;2127
 ;;21,"52959-0542-15 ")
 ;;2128
 ;;21,"52959-0542-21 ")
 ;;2129
 ;;21,"52959-0542-28 ")
 ;;2130
 ;;21,"52959-0542-30 ")
 ;;2131
 ;;21,"52959-0542-40 ")
 ;;2132
 ;;21,"52959-0542-42 ")
 ;;2133
 ;;21,"52959-0550-30 ")
 ;;2134
 ;;21,"52959-0550-60 ")
 ;;2135
 ;;21,"52959-0638-04 ")
 ;;2136
 ;;21,"52959-0639-30 ")
 ;;2137
 ;;21,"52959-0655-00 ")
 ;;2138
 ;;21,"52959-0655-02 ")
 ;;2139
 ;;21,"52959-0655-30 ")
 ;;2140
 ;;21,"52959-0655-40 ")
 ;;2141
 ;;21,"52959-0655-60 ")
 ;;2142
 ;;21,"52959-0655-90 ")
 ;;2143
 ;;21,"52959-0662-30 ")
 ;;2144
 ;;21,"52959-0665-30 ")
 ;;2145
 ;;21,"52959-0669-30 ")
 ;;2146
 ;;21,"52959-0669-59 ")
 ;;2147
 ;;21,"52959-0669-60 ")
 ;;2148
 ;;21,"52959-0703-00 ")
 ;;2149
 ;;21,"52959-0703-30 ")
 ;;2150
 ;;21,"52959-0703-60 ")
 ;;2151
 ;;21,"52959-0704-00 ")
 ;;2152
 ;;21,"52959-0704-30 ")
 ;;2153
 ;;21,"52959-0704-60 ")
 ;;2154
 ;;21,"52959-0717-30 ")
 ;;2155
 ;;21,"52959-0732-00 ")
 ;;2156
 ;;21,"52959-0732-10 ")
 ;;2157
 ;;21,"52959-0732-14 ")
 ;;2158
 ;;21,"52959-0732-15 ")
 ;;2159
 ;;21,"52959-0732-20 ")
 ;;2160
 ;;21,"52959-0732-30 ")
 ;;2161
 ;;21,"52959-0732-40 ")
 ;;2162
 ;;21,"52959-0732-50 ")
 ;;2163
 ;;21,"52959-0732-60 ")
 ;;2164
 ;;21,"52959-0732-90 ")
 ;;2165
 ;;21,"52959-0771-60 ")
 ;;2166
 ;;21,"52959-0773-30 ")
 ;;2167
 ;;21,"52959-0773-52 ")
 ;;2168
 ;;21,"52959-0773-60 ")
 ;;2169
 ;;21,"52959-0774-30 ")
 ;;2170
 ;;21,"52959-0774-60 ")
 ;;2171
 ;;21,"52959-0775-30 ")
 ;;2172
 ;;21,"52959-0775-50 ")
 ;;2173
 ;;21,"52959-0775-60 ")
 ;;2174
 ;;21,"52959-0776-30 ")
 ;;2175
 ;;21,"52959-0776-60 ")
 ;;2176
 ;;21,"52959-0781-30 ")
 ;;2177
 ;;21,"52959-0781-60 ")
 ;;2178
 ;;21,"52959-0787-30 ")
 ;;2179
 ;;21,"52959-0791-30 ")
 ;;2180
 ;;21,"52959-0792-30 ")
 ;;2181
 ;;21,"52959-0805-60 ")
 ;;2182
 ;;21,"52959-0806-30 ")
 ;;2183
 ;;21,"52959-0806-60 ")
 ;;2184
 ;;21,"52959-0818-30 ")
 ;;2185
 ;;21,"52959-0818-60 ")
 ;;2186
 ;;21,"52959-0820-60 ")
 ;;2187
 ;;21,"52959-0840-60 ")
 ;;2188
 ;;21,"52959-0869-30 ")
 ;;2189
 ;;21,"52959-0872-30 ")
 ;;2190
 ;;21,"52959-0872-60 ")
 ;;2191
 ;;21,"52959-0875-30 ")
 ;;2192
 ;;21,"52959-0875-60 ")
 ;;2193
 ;;21,"52959-0875-90 ")
 ;;2194
 ;;21,"52959-0876-30 ")
 ;;2195
 ;;21,"52959-0876-60 ")
 ;;2196
 ;;21,"52959-0890-30 ")
 ;;2197
 ;;21,"52959-0890-60 ")
 ;;2198
 ;;21,"52959-0890-90 ")
 ;;2199
 ;;21,"52959-0892-30 ")
 ;;2200
 ;;21,"52959-0892-60 ")
 ;;2201
 ;;21,"52959-0894-30 ")
 ;;2202
 ;;21,"52959-0894-60 ")
 ;;2203
 ;;21,"52959-0898-60 ")
 ;;2204
 ;;21,"52959-0900-30 ")
 ;;2205
 ;;21,"52959-0901-30 ")
 ;;2206
 ;;21,"52959-0986-30 ")
 ;;2207
 ;;21,"52959-0991-30 ")
 ;;2208
 ;;21,"53489-0104-01 ")
 ;;2209
 ;;21,"53489-0105-01 ")
 ;;2210
 ;;21,"53489-0106-01 ")
 ;;2211
 ;;21,"53489-0108-01 ")
 ;;2212
 ;;21,"53489-0109-01 ")
 ;;2213
 ;;21,"53489-0330-01 ")
 ;;2214
 ;;21,"53489-0331-01 ")
 ;;2215
 ;;21,"53489-0332-01 ")
 ;;2216
 ;;21,"53489-0510-01 ")
 ;;2217
 ;;21,"53489-0511-01 ")
 ;;2218
 ;;21,"53489-0517-01 ")
 ;;2219
 ;;21,"54348-0511-30 ")
 ;;2220
 ;;21,"54458-0913-02 ")
 ;;2221
 ;;21,"54458-0922-05 ")
 ;;2222
 ;;21,"54458-0924-05 ")
 ;;2223
 ;;21,"54458-0944-05 ")
 ;;2224
 ;;21,"54458-0944-10 ")
 ;;2225
 ;;21,"54458-0945-10 ")
 ;;2226
 ;;21,"54458-0947-10 ")
 ;;2227
 ;;21,"54458-0960-10 ")
 ;;2228
 ;;21,"54458-0961-10 ")
 ;;2229
 ;;21,"54458-0980-10 ")
 ;;2230
 ;;21,"54458-0981-10 ")
 ;;2231
 ;;21,"54458-0988-10 ")
 ;;2232
 ;;21,"54458-0989-10 ")
 ;;2233
 ;;21,"54458-0990-10 ")
 ;;2234
 ;;21,"54569-0172-00 ")
 ;;2235
 ;;21,"54569-0172-01 ")
 ;;2236
 ;;21,"54569-0172-02 ")
 ;;2237
 ;;21,"54569-0172-04 ")
 ;;2238
 ;;21,"54569-0172-06 ")
 ;;2239
 ;;21,"54569-0172-08 ")
 ;;2240
 ;;21,"54569-0173-00 ")
 ;;2241
 ;;21,"54569-0175-00 ")
 ;;2242
 ;;21,"54569-0175-01 ")
 ;;2243
 ;;21,"54569-0175-02 ")
 ;;2244
 ;;21,"54569-0175-03 ")
 ;;2245
 ;;21,"54569-0175-04 ")
 ;;2246
 ;;21,"54569-0175-05 ")
 ;;2247
 ;;21,"54569-0175-06 ")
 ;;2248
 ;;21,"54569-0175-08 ")
 ;;2249
 ;;21,"54569-0194-00 ")
 ;;2250
 ;;21,"54569-0194-02 ")
 ;;2251
 ;;21,"54569-0196-03 ")
 ;;2252
 ;;21,"54569-0196-04 ")
 ;;2253
 ;;21,"54569-0225-00 ")
 ;;2254
 ;;21,"54569-0404-00 ")
 ;;2255
 ;;21,"54569-1470-00 ")
 ;;2256
 ;;21,"54569-1470-01 ")
 ;;2257
 ;;21,"54569-1470-06 ")
 ;;2258
 ;;21,"54569-1470-08 ")
 ;;2259
 ;;21,"54569-1470-09 ")
 ;;2260
 ;;21,"54569-1519-01 ")
 ;;2261
 ;;21,"54569-1519-02 ")
 ;;2262
 ;;21,"54569-1519-03 ")
 ;;2263
 ;;21,"54569-1696-00 ")
 ;;2264
 ;;21,"54569-1696-01 ")
 ;;2265
 ;;21,"54569-1701-02 ")
 ;;2266
 ;;21,"54569-1732-02 ")
 ;;2267
 ;;21,"54569-1732-03 ")
 ;;2268
 ;;21,"54569-1732-04 ")
 ;;2269
 ;;21,"54569-1732-05 ")
 ;;2270
 ;;21,"54569-1732-06 ")
 ;;2271
 ;;21,"54569-1864-01 ")
 ;;2272
 ;;21,"54569-1864-02 ")
 ;;2273
 ;;21,"54569-1999-00 ")
 ;;2274
 ;;21,"54569-1999-01 ")
 ;;2275
 ;;21,"54569-1999-02 ")
 ;;2276
 ;;21,"54569-1999-03 ")
 ;;2277
 ;;21,"54569-2006-00 ")
 ;;2278
 ;;21,"54569-2146-01 ")
 ;;2279
 ;;21,"54569-2146-02 ")
 ;;2280
 ;;21,"54569-2179-00 ")
 ;;2281
 ;;21,"54569-2179-01 ")
 ;;2282
 ;;21,"54569-2462-00 ")
 ;;2283
 ;;21,"54569-2726-00 ")
 ;;2284
 ;;21,"54569-3575-00 ")
 ;;2285
 ;;21,"54569-3575-01 ")
 ;;2286
 ;;21,"54569-3724-00 ")
 ;;2287
 ;;21,"54569-3724-01 ")
 ;;2288
 ;;21,"54569-3724-03 ")
 ;;2289
 ;;21,"54569-3724-04 ")
 ;;2290
 ;;21,"54569-3724-05 ")
 ;;2291
 ;;21,"54569-3732-01 ")
 ;;2292
 ;;21,"54569-3732-02 ")
 ;;2293
 ;;21,"54569-3732-03 ")
 ;;2294
 ;;21,"54569-3810-00 ")
 ;;2295
 ;;21,"54569-3849-00 ")
 ;;2296
 ;;21,"54569-3849-01 ")
 ;;2297
 ;;21,"54569-3894-00 ")
 ;;2298
 ;;21,"54569-4129-00 ")
 ;;2299
 ;;21,"54569-4131-01 ")
 ;;2300
 ;;21,"54569-4132-01 ")
 ;;2301
 ;;21,"54569-4146-00 ")
 ;;2302
 ;;21,"54569-4146-01 ")
 ;;2303
 ;;21,"54569-4529-00 ")
 ;;2304
 ;;21,"54569-4529-01 ")
 ;;2305
 ;;21,"54569-4529-02 ")
 ;;2306
 ;;21,"54569-4659-00 ")
 ;;2307
 ;;21,"54569-4703-01 ")
 ;;2308
 ;;21,"54569-4787-00 ")
 ;;2309
 ;;21,"54569-4879-00 ")
 ;;2310
 ;;21,"54569-5231-00 ")
 ;;2311
 ;;21,"54569-5265-00 ")
 ;;2312
 ;;21,"54569-5291-00 ")
 ;;2313
 ;;21,"54569-5291-01 ")
 ;;2314
 ;;21,"54569-5291-03 ")
 ;;2315
 ;;21,"54569-5319-00 ")
 ;;2316
 ;;21,"54569-5319-01 ")
 ;;2317
 ;;21,"54569-5319-02 ")
 ;;2318
 ;;21,"54569-5320-01 ")
 ;;2319
 ;;21,"54569-5391-00 ")
 ;;2320
 ;;21,"54569-5391-02 ")
 ;;2321
 ;;21,"54569-5391-03 ")
 ;;2322
 ;;21,"54569-5483-00 ")
 ;;2323
 ;;21,"54569-5484-00 ")
 ;;2324
 ;;21,"54569-5541-00 ")
 ;;2325
 ;;21,"54569-5541-01 ")
 ;;2326
 ;;21,"54569-5541-02 ")
 ;;2327
 ;;21,"54569-5568-00 ")
 ;;2328
 ;;21,"54569-5569-00 ")
 ;;2329
 ;;21,"54569-5598-00 ")
 ;;2330
 ;;21,"54569-5599-00 ")
 ;;2331
 ;;21,"54569-5626-00 ")
 ;;2332
 ;;21,"54569-5626-01 ")
 ;;2333
 ;;21,"54569-5626-02 ")
 ;;2334
 ;;21,"54569-5627-00 ")
 ;;2335
 ;;21,"54569-5627-01 ")
 ;;2336
 ;;21,"54569-5678-00 ")
 ;;2337
 ;;21,"54569-5682-00 ")
 ;;2338