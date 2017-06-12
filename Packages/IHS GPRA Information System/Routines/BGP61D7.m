BGP61D7 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"68788-2582-09 ")
 ;;2179
 ;;21,"68788-9069-02 ")
 ;;2180
 ;;21,"68788-9069-03 ")
 ;;2181
 ;;21,"68788-9069-05 ")
 ;;2182
 ;;21,"68788-9069-06 ")
 ;;2183
 ;;21,"68788-9069-09 ")
 ;;2184
 ;;21,"68788-9075-03 ")
 ;;2185
 ;;21,"68788-9075-04 ")
 ;;2186
 ;;21,"68788-9075-06 ")
 ;;2187
 ;;21,"68788-9075-09 ")
 ;;2188
 ;;21,"68788-9076-02 ")
 ;;2189
 ;;21,"68788-9076-03 ")
 ;;2190
 ;;21,"68788-9076-06 ")
 ;;2191
 ;;21,"68788-9076-09 ")
 ;;2192
 ;;21,"68788-9138-03 ")
 ;;2193
 ;;21,"68788-9138-06 ")
 ;;2194
 ;;21,"68788-9138-09 ")
 ;;2195
 ;;21,"68788-9150-03 ")
 ;;2196
 ;;21,"68788-9150-06 ")
 ;;2197
 ;;21,"68788-9150-09 ")
 ;;2198
 ;;21,"68788-9508-02 ")
 ;;2199
 ;;21,"68788-9508-03 ")
 ;;2200
 ;;21,"68788-9797-03 ")
 ;;2201
 ;;21,"68788-9797-06 ")
 ;;2202
 ;;21,"68788-9896-03 ")
 ;;2203
 ;;21,"69420-1001-01 ")
 ;;2204
 ;;21,"76218-1219-01 ")
 ;;2205
 ;;21,"76218-1219-07 ")
 ;;2206
 ;;21,"76420-0991-06 ")
 ;;2207
 ;;21,"76420-0992-01 ")
 ;;2208
 ;;21,"76439-0134-10 ")
 ;;2209
 ;;21,"76439-0134-50 ")
 ;;2210
 ;;21,"76439-0135-10 ")
 ;;2211
 ;;21,"76439-0135-50 ")
 ;;2212
 ;;21,"76519-0100-01 ")
 ;;2213
 ;;21,"76519-0100-02 ")
 ;;2214
 ;;21,"76519-0100-03 ")
 ;;2215
 ;;21,"76519-0100-05 ")
 ;;2216
 ;;21,"76519-0100-06 ")
 ;;2217
 ;;21,"76519-0100-07 ")
 ;;2218
 ;;21,"76519-0100-09 ")
 ;;2219
 ;;9002226,875,.01)
 ;;BGP HEDIS SKL MUSCLE RELAX NDC
 ;;9002226,875,.02)
 ;;@
 ;;9002226,875,.04)
 ;;n
 ;;9002226,875,.06)
 ;;@
 ;;9002226,875,.08)
 ;;@
 ;;9002226,875,.09)
 ;;3150818
 ;;9002226,875,.11)
 ;;@
 ;;9002226,875,.12)
 ;;@
 ;;9002226,875,.13)
 ;;1
 ;;9002226,875,.14)
 ;;@
 ;;9002226,875,.15)
 ;;50.67
 ;;9002226,875,.16)
 ;;@
 ;;9002226,875,.17)
 ;;@
 ;;9002226,875,3101)
 ;;@
 ;;9002226.02101,"875,00037-2001-01 ",.01)
 ;;00037-2001-01
 ;;9002226.02101,"875,00037-2001-01 ",.02)
 ;;00037-2001-01
 ;;9002226.02101,"875,00037-2250-10 ",.01)
 ;;00037-2250-10
 ;;9002226.02101,"875,00037-2250-10 ",.02)
 ;;00037-2250-10
 ;;9002226.02101,"875,00037-2250-30 ",.01)
 ;;00037-2250-30
 ;;9002226.02101,"875,00037-2250-30 ",.02)
 ;;00037-2250-30
 ;;9002226.02101,"875,00091-7429-63 ",.01)
 ;;00091-7429-63
 ;;9002226.02101,"875,00091-7429-63 ",.02)
 ;;00091-7429-63
 ;;9002226.02101,"875,00091-7449-63 ",.01)
 ;;00091-7449-63
 ;;9002226.02101,"875,00091-7449-63 ",.02)
 ;;00091-7449-63
 ;;9002226.02101,"875,00115-2011-01 ",.01)
 ;;00115-2011-01
 ;;9002226.02101,"875,00115-2011-01 ",.02)
 ;;00115-2011-01
 ;;9002226.02101,"875,00115-2011-02 ",.01)
 ;;00115-2011-02
 ;;9002226.02101,"875,00115-2011-02 ",.02)
 ;;00115-2011-02
 ;;9002226.02101,"875,00143-1176-01 ",.01)
 ;;00143-1176-01
 ;;9002226.02101,"875,00143-1176-01 ",.02)
 ;;00143-1176-01
 ;;9002226.02101,"875,00143-1176-05 ",.01)
 ;;00143-1176-05
 ;;9002226.02101,"875,00143-1176-05 ",.02)
 ;;00143-1176-05
 ;;9002226.02101,"875,00143-1176-10 ",.01)
 ;;00143-1176-10
 ;;9002226.02101,"875,00143-1176-10 ",.02)
 ;;00143-1176-10
 ;;9002226.02101,"875,00143-1290-01 ",.01)
 ;;00143-1290-01
 ;;9002226.02101,"875,00143-1290-01 ",.02)
 ;;00143-1290-01
 ;;9002226.02101,"875,00143-1290-05 ",.01)
 ;;00143-1290-05
 ;;9002226.02101,"875,00143-1290-05 ",.02)
 ;;00143-1290-05
 ;;9002226.02101,"875,00143-1292-01 ",.01)
 ;;00143-1292-01
 ;;9002226.02101,"875,00143-1292-01 ",.02)
 ;;00143-1292-01
 ;;9002226.02101,"875,00143-1292-05 ",.01)
 ;;00143-1292-05
 ;;9002226.02101,"875,00143-1292-05 ",.02)
 ;;00143-1292-05
 ;;9002226.02101,"875,00143-9749-01 ",.01)
 ;;00143-9749-01
 ;;9002226.02101,"875,00143-9749-01 ",.02)
 ;;00143-9749-01
 ;;9002226.02101,"875,00143-9749-05 ",.01)
 ;;00143-9749-05
 ;;9002226.02101,"875,00143-9749-05 ",.02)
 ;;00143-9749-05
 ;;9002226.02101,"875,00143-9749-10 ",.01)
 ;;00143-9749-10
 ;;9002226.02101,"875,00143-9749-10 ",.02)
 ;;00143-9749-10
 ;;9002226.02101,"875,00179-0057-30 ",.01)
 ;;00179-0057-30
 ;;9002226.02101,"875,00179-0057-30 ",.02)
 ;;00179-0057-30
 ;;9002226.02101,"875,00185-0022-01 ",.01)
 ;;00185-0022-01
 ;;9002226.02101,"875,00185-0022-01 ",.02)
 ;;00185-0022-01
 ;;9002226.02101,"875,00185-0022-10 ",.01)
 ;;00185-0022-10
 ;;9002226.02101,"875,00185-0022-10 ",.02)
 ;;00185-0022-10
 ;;9002226.02101,"875,00185-0448-01 ",.01)
 ;;00185-0448-01
 ;;9002226.02101,"875,00185-0448-01 ",.02)
 ;;00185-0448-01
 ;;9002226.02101,"875,00185-0448-10 ",.01)
 ;;00185-0448-10
 ;;9002226.02101,"875,00185-0448-10 ",.02)
 ;;00185-0448-10
 ;;9002226.02101,"875,00185-0713-01 ",.01)
 ;;00185-0713-01
 ;;9002226.02101,"875,00185-0713-01 ",.02)
 ;;00185-0713-01
 ;;9002226.02101,"875,00185-0713-05 ",.01)
 ;;00185-0713-05
 ;;9002226.02101,"875,00185-0713-05 ",.02)
 ;;00185-0713-05
 ;;9002226.02101,"875,00185-0714-01 ",.01)
 ;;00185-0714-01
 ;;9002226.02101,"875,00185-0714-01 ",.02)
 ;;00185-0714-01
 ;;9002226.02101,"875,00185-0724-01 ",.01)
 ;;00185-0724-01
 ;;9002226.02101,"875,00185-0724-01 ",.02)
 ;;00185-0724-01
 ;;9002226.02101,"875,00185-0724-05 ",.01)
 ;;00185-0724-05
 ;;9002226.02101,"875,00185-0724-05 ",.02)
 ;;00185-0724-05
 ;;9002226.02101,"875,00185-0749-01 ",.01)
 ;;00185-0749-01
 ;;9002226.02101,"875,00185-0749-01 ",.02)
 ;;00185-0749-01
 ;;9002226.02101,"875,00378-0751-01 ",.01)
 ;;00378-0751-01
 ;;9002226.02101,"875,00378-0751-01 ",.02)
 ;;00378-0751-01
 ;;9002226.02101,"875,00378-0751-05 ",.01)
 ;;00378-0751-05
 ;;9002226.02101,"875,00378-0751-05 ",.02)
 ;;00378-0751-05
 ;;9002226.02101,"875,00378-0751-10 ",.01)
 ;;00378-0751-10
 ;;9002226.02101,"875,00378-0751-10 ",.02)
 ;;00378-0751-10
 ;;9002226.02101,"875,00378-0751-93 ",.01)
 ;;00378-0751-93
 ;;9002226.02101,"875,00378-0751-93 ",.02)
 ;;00378-0751-93
 ;;9002226.02101,"875,00378-0761-01 ",.01)
 ;;00378-0761-01
 ;;9002226.02101,"875,00378-0761-01 ",.02)
 ;;00378-0761-01
 ;;9002226.02101,"875,00378-0771-01 ",.01)
 ;;00378-0771-01
 ;;9002226.02101,"875,00378-0771-01 ",.02)
 ;;00378-0771-01
 ;;9002226.02101,"875,00378-0771-05 ",.01)
 ;;00378-0771-05
 ;;9002226.02101,"875,00378-0771-05 ",.02)
 ;;00378-0771-05
 ;;9002226.02101,"875,00378-0771-93 ",.01)
 ;;00378-0771-93
 ;;9002226.02101,"875,00378-0771-93 ",.02)
 ;;00378-0771-93
 ;;9002226.02101,"875,00440-1350-09 ",.01)
 ;;00440-1350-09
 ;;9002226.02101,"875,00440-1350-09 ",.02)
 ;;00440-1350-09
 ;;9002226.02101,"875,00440-1740-40 ",.01)
 ;;00440-1740-40
 ;;9002226.02101,"875,00440-1740-40 ",.02)
 ;;00440-1740-40
 ;;9002226.02101,"875,00440-7238-04 ",.01)
 ;;00440-7238-04
 ;;9002226.02101,"875,00440-7238-04 ",.02)
 ;;00440-7238-04
 ;;9002226.02101,"875,00440-7238-20 ",.01)
 ;;00440-7238-20
 ;;9002226.02101,"875,00440-7238-20 ",.02)
 ;;00440-7238-20
 ;;9002226.02101,"875,00440-7238-30 ",.01)
 ;;00440-7238-30
 ;;9002226.02101,"875,00440-7238-30 ",.02)
 ;;00440-7238-30
 ;;9002226.02101,"875,00440-7238-40 ",.01)
 ;;00440-7238-40
 ;;9002226.02101,"875,00440-7238-40 ",.02)
 ;;00440-7238-40
 ;;9002226.02101,"875,00440-7238-90 ",.01)
 ;;00440-7238-90
 ;;9002226.02101,"875,00440-7238-90 ",.02)
 ;;00440-7238-90
 ;;9002226.02101,"875,00440-7238-91 ",.01)
 ;;00440-7238-91
 ;;9002226.02101,"875,00440-7238-91 ",.02)
 ;;00440-7238-91
 ;;9002226.02101,"875,00440-7239-20 ",.01)
 ;;00440-7239-20
 ;;9002226.02101,"875,00440-7239-20 ",.02)
 ;;00440-7239-20
 ;;9002226.02101,"875,00440-7239-40 ",.01)
 ;;00440-7239-40
 ;;9002226.02101,"875,00440-7239-40 ",.02)
 ;;00440-7239-40
 ;;9002226.02101,"875,00440-7270-10 ",.01)
 ;;00440-7270-10
 ;;9002226.02101,"875,00440-7270-10 ",.02)
 ;;00440-7270-10
 ;;9002226.02101,"875,00440-7270-20 ",.01)
 ;;00440-7270-20
 ;;9002226.02101,"875,00440-7270-20 ",.02)
 ;;00440-7270-20
 ;;9002226.02101,"875,00440-7270-28 ",.01)
 ;;00440-7270-28
 ;;9002226.02101,"875,00440-7270-28 ",.02)
 ;;00440-7270-28
 ;;9002226.02101,"875,00440-7270-30 ",.01)
 ;;00440-7270-30
 ;;9002226.02101,"875,00440-7270-30 ",.02)
 ;;00440-7270-30
 ;;9002226.02101,"875,00440-7270-40 ",.01)
 ;;00440-7270-40
 ;;9002226.02101,"875,00440-7270-40 ",.02)
 ;;00440-7270-40
 ;;9002226.02101,"875,00440-7350-02 ",.01)
 ;;00440-7350-02
 ;;9002226.02101,"875,00440-7350-02 ",.02)
 ;;00440-7350-02
 ;;9002226.02101,"875,00440-7350-03 ",.01)
 ;;00440-7350-03
 ;;9002226.02101,"875,00440-7350-03 ",.02)
 ;;00440-7350-03
 ;;9002226.02101,"875,00440-7350-04 ",.01)
 ;;00440-7350-04
 ;;9002226.02101,"875,00440-7350-04 ",.02)
 ;;00440-7350-04
 ;;9002226.02101,"875,00440-7350-06 ",.01)
 ;;00440-7350-06
 ;;9002226.02101,"875,00440-7350-06 ",.02)
 ;;00440-7350-06
 ;;9002226.02101,"875,00440-7350-09 ",.01)
 ;;00440-7350-09
 ;;9002226.02101,"875,00440-7350-09 ",.02)
 ;;00440-7350-09
 ;;9002226.02101,"875,00440-7350-10 ",.01)
 ;;00440-7350-10
 ;;9002226.02101,"875,00440-7350-10 ",.02)
 ;;00440-7350-10
 ;;9002226.02101,"875,00440-7350-12 ",.01)
 ;;00440-7350-12
 ;;9002226.02101,"875,00440-7350-12 ",.02)
 ;;00440-7350-12
 ;;9002226.02101,"875,00440-7350-15 ",.01)
 ;;00440-7350-15
 ;;9002226.02101,"875,00440-7350-15 ",.02)
 ;;00440-7350-15
 ;;9002226.02101,"875,00440-7350-21 ",.01)
 ;;00440-7350-21
 ;;9002226.02101,"875,00440-7350-21 ",.02)
 ;;00440-7350-21
 ;;9002226.02101,"875,00440-7350-30 ",.01)
 ;;00440-7350-30
 ;;9002226.02101,"875,00440-7350-30 ",.02)
 ;;00440-7350-30
 ;;9002226.02101,"875,00440-7350-60 ",.01)
 ;;00440-7350-60
 ;;9002226.02101,"875,00440-7350-60 ",.02)
 ;;00440-7350-60
 ;;9002226.02101,"875,00440-7350-81 ",.01)
 ;;00440-7350-81
 ;;9002226.02101,"875,00440-7350-81 ",.02)
 ;;00440-7350-81
 ;;9002226.02101,"875,00440-7350-85 ",.01)
 ;;00440-7350-85
 ;;9002226.02101,"875,00440-7350-85 ",.02)
 ;;00440-7350-85
 ;;9002226.02101,"875,00440-7350-89 ",.01)
 ;;00440-7350-89
 ;;9002226.02101,"875,00440-7350-89 ",.02)
 ;;00440-7350-89
 ;;9002226.02101,"875,00440-7350-90 ",.01)
 ;;00440-7350-90
 ;;9002226.02101,"875,00440-7350-90 ",.02)
 ;;00440-7350-90
 ;;9002226.02101,"875,00440-7740-10 ",.01)
 ;;00440-7740-10
 ;;9002226.02101,"875,00440-7740-10 ",.02)
 ;;00440-7740-10
 ;;9002226.02101,"875,00440-7740-12 ",.01)
 ;;00440-7740-12
 ;;9002226.02101,"875,00440-7740-12 ",.02)
 ;;00440-7740-12
 ;;9002226.02101,"875,00440-7740-20 ",.01)
 ;;00440-7740-20
 ;;9002226.02101,"875,00440-7740-20 ",.02)
 ;;00440-7740-20
 ;;9002226.02101,"875,00440-7740-24 ",.01)
 ;;00440-7740-24
 ;;9002226.02101,"875,00440-7740-24 ",.02)
 ;;00440-7740-24
 ;;9002226.02101,"875,00440-7740-28 ",.01)
 ;;00440-7740-28
 ;;9002226.02101,"875,00440-7740-28 ",.02)
 ;;00440-7740-28
 ;;9002226.02101,"875,00440-7740-40 ",.01)
 ;;00440-7740-40
 ;;9002226.02101,"875,00440-7740-40 ",.02)
 ;;00440-7740-40
 ;;9002226.02101,"875,00440-7740-60 ",.01)
 ;;00440-7740-60
 ;;9002226.02101,"875,00440-7740-60 ",.02)
 ;;00440-7740-60
 ;;9002226.02101,"875,00440-7740-81 ",.01)
 ;;00440-7740-81
 ;;9002226.02101,"875,00440-7740-81 ",.02)
 ;;00440-7740-81
 ;;9002226.02101,"875,00440-7740-85 ",.01)
 ;;00440-7740-85
 ;;9002226.02101,"875,00440-7740-85 ",.02)
 ;;00440-7740-85
 ;;9002226.02101,"875,00440-7740-89 ",.01)
 ;;00440-7740-89
 ;;9002226.02101,"875,00440-7740-89 ",.02)
 ;;00440-7740-89
 ;;9002226.02101,"875,00440-7740-90 ",.01)
 ;;00440-7740-90
 ;;9002226.02101,"875,00440-7740-90 ",.02)
 ;;00440-7740-90
 ;;9002226.02101,"875,00440-7740-91 ",.01)
 ;;00440-7740-91
 ;;9002226.02101,"875,00440-7740-91 ",.02)
 ;;00440-7740-91
 ;;9002226.02101,"875,00440-7740-92 ",.01)
 ;;00440-7740-92
 ;;9002226.02101,"875,00440-7740-92 ",.02)
 ;;00440-7740-92
 ;;9002226.02101,"875,00440-7741-04 ",.01)
 ;;00440-7741-04
 ;;9002226.02101,"875,00440-7741-04 ",.02)
 ;;00440-7741-04
 ;;9002226.02101,"875,00440-7741-06 ",.01)
 ;;00440-7741-06
 ;;9002226.02101,"875,00440-7741-06 ",.02)
 ;;00440-7741-06
 ;;9002226.02101,"875,00440-7741-20 ",.01)
 ;;00440-7741-20
 ;;9002226.02101,"875,00440-7741-20 ",.02)
 ;;00440-7741-20
 ;;9002226.02101,"875,00440-7741-30 ",.01)
 ;;00440-7741-30
 ;;9002226.02101,"875,00440-7741-30 ",.02)
 ;;00440-7741-30
 ;;9002226.02101,"875,00440-7741-40 ",.01)
 ;;00440-7741-40
 ;;9002226.02101,"875,00440-7741-40 ",.02)
 ;;00440-7741-40
 ;;9002226.02101,"875,00440-7741-90 ",.01)
 ;;00440-7741-90
 ;;9002226.02101,"875,00440-7741-90 ",.02)
 ;;00440-7741-90
 ;;9002226.02101,"875,00440-7741-92 ",.01)
 ;;00440-7741-92
 ;;9002226.02101,"875,00440-7741-92 ",.02)
 ;;00440-7741-92
 ;;9002226.02101,"875,00440-7880-14 ",.01)
 ;;00440-7880-14
 ;;9002226.02101,"875,00440-7880-14 ",.02)
 ;;00440-7880-14
 ;;9002226.02101,"875,00440-7880-20 ",.01)
 ;;00440-7880-20
 ;;9002226.02101,"875,00440-7880-20 ",.02)
 ;;00440-7880-20