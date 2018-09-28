BGP8YA ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;;BGP PQA NEBULIZED BRONCHO NDC
 ;
 ; This routine loads Taxonomy BGP PQA NEBULIZED BRONCHO NDC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00093-4145-04 ")
 ;;134
 ;;21,"00093-4145-64 ")
 ;;135
 ;;21,"00093-4146-04 ")
 ;;150
 ;;21,"00093-4146-64 ")
 ;;151
 ;;21,"00093-4147-19 ")
 ;;196
 ;;21,"00093-4147-56 ")
 ;;197
 ;;21,"00093-4148-04 ")
 ;;174
 ;;21,"00093-4148-64 ")
 ;;175
 ;;21,"00093-6723-45 ")
 ;;96
 ;;21,"00093-6723-73 ")
 ;;97
 ;;21,"00093-6723-74 ")
 ;;98
 ;;21,"00185-7322-30 ")
 ;;99
 ;;21,"00185-7322-60 ")
 ;;100
 ;;21,"00378-6991-52 ")
 ;;43
 ;;21,"00378-6992-52 ")
 ;;47
 ;;21,"00378-6993-31 ")
 ;;198
 ;;21,"00378-6993-93 ")
 ;;199
 ;;21,"00378-7970-31 ")
 ;;60
 ;;21,"00378-7970-52 ")
 ;;61
 ;;21,"00378-7970-55 ")
 ;;62
 ;;21,"00378-7970-62 ")
 ;;63
 ;;21,"00378-7970-64 ")
 ;;64
 ;;21,"00378-7970-91 ")
 ;;65
 ;;21,"00378-7970-93 ")
 ;;66
 ;;21,"00378-8270-31 ")
 ;;1
 ;;21,"00378-8270-52 ")
 ;;2
 ;;21,"00378-8270-55 ")
 ;;3
 ;;21,"00378-8270-62 ")
 ;;4
 ;;21,"00378-8270-64 ")
 ;;5
 ;;21,"00378-8270-91 ")
 ;;6
 ;;21,"00378-8270-93 ")
 ;;7
 ;;21,"00378-9671-30 ")
 ;;101
 ;;21,"00378-9671-31 ")
 ;;102
 ;;21,"00378-9671-58 ")
 ;;103
 ;;21,"00378-9671-60 ")
 ;;104
 ;;21,"00378-9671-64 ")
 ;;105
 ;;21,"00378-9671-91 ")
 ;;106
 ;;21,"00378-9671-93 ")
 ;;107
 ;;21,"00378-9671-98 ")
 ;;108
 ;;21,"00378-9680-44 ")
 ;;136
 ;;21,"00378-9680-96 ")
 ;;137
 ;;21,"00378-9681-44 ")
 ;;152
 ;;21,"00378-9681-96 ")
 ;;153
 ;;21,"00378-9682-44 ")
 ;;176
 ;;21,"00378-9682-96 ")
 ;;177
 ;;21,"00487-0201-01 ")
 ;;109
 ;;21,"00487-0201-02 ")
 ;;110
 ;;21,"00487-0201-03 ")
 ;;111
 ;;21,"00487-0201-60 ")
 ;;112
 ;;21,"00487-0301-01 ")
 ;;44
 ;;21,"00487-0301-02 ")
 ;;45
 ;;21,"00487-9501-01 ")
 ;;8
 ;;21,"00487-9501-02 ")
 ;;9
 ;;21,"00487-9501-03 ")
 ;;10
 ;;21,"00487-9501-25 ")
 ;;11
 ;;21,"00487-9501-60 ")
 ;;12
 ;;21,"00487-9801-01 ")
 ;;67
 ;;21,"00487-9801-02 ")
 ;;68
 ;;21,"00487-9801-25 ")
 ;;69
 ;;21,"00487-9801-30 ")
 ;;70
 ;;21,"00487-9801-60 ")
 ;;71
 ;;21,"00487-9901-02 ")
 ;;33
 ;;21,"00487-9901-30 ")
 ;;34
 ;;21,"00487-9904-01 ")
 ;;48
 ;;21,"00487-9904-02 ")
 ;;49
 ;;21,"00487-9904-25 ")
 ;;50
 ;;21,"00591-2736-23 ")
 ;;138
 ;;21,"00591-2736-39 ")
 ;;139
 ;;21,"00591-2737-23 ")
 ;;154
 ;;21,"00591-2737-39 ")
 ;;155
 ;;21,"00591-2738-23 ")
 ;;178
 ;;21,"00591-2738-39 ")
 ;;179
 ;;21,"00591-2919-23 ")
 ;;156
 ;;21,"00591-2919-39 ")
 ;;157
 ;;21,"00591-2920-23 ")
 ;;180
 ;;21,"00591-2920-39 ")
 ;;181
 ;;21,"00591-3467-53 ")
 ;;46
 ;;21,"00591-3468-53 ")
 ;;51
 ;;21,"00591-3797-30 ")
 ;;13
 ;;21,"00591-3797-60 ")
 ;;14
 ;;21,"00591-3797-83 ")
 ;;15
 ;;21,"00591-3798-30 ")
 ;;72
 ;;21,"00591-3798-60 ")
 ;;73
 ;;21,"00591-3798-83 ")
 ;;74
 ;;21,"00591-3817-15 ")
 ;;113
 ;;21,"00591-3817-30 ")
 ;;114
 ;;21,"00591-3817-39 ")
 ;;115
 ;;21,"00591-3817-60 ")
 ;;116
 ;;21,"00591-3817-66 ")
 ;;117
 ;;21,"00591-3817-72 ")
 ;;118
 ;;21,"00781-7146-29 ")
 ;;119
 ;;21,"00781-7146-51 ")
 ;;120
 ;;21,"00781-7146-63 ")
 ;;121
 ;;21,"00781-7146-64 ")
 ;;122
 ;;21,"00781-7146-87 ")
 ;;123
 ;;21,"00781-7155-29 ")
 ;;16
 ;;21,"00781-7155-64 ")
 ;;17
 ;;21,"00781-7155-86 ")
 ;;18
 ;;21,"00781-7157-29 ")
 ;;75
 ;;21,"00781-7157-64 ")
 ;;76
 ;;21,"00781-7157-86 ")
 ;;77
 ;;21,"17478-0171-01 ")
 ;;200
 ;;21,"17478-0171-30 ")
 ;;201
 ;;21,"17478-0172-12 ")
 ;;140
 ;;21,"17478-0172-24 ")
 ;;141
 ;;21,"17478-0173-12 ")
 ;;158
 ;;21,"17478-0173-24 ")
 ;;159
 ;;21,"17478-0174-12 ")
 ;;182
 ;;21,"17478-0174-24 ")
 ;;183
 ;;21,"21695-0153-24 ")
 ;;184
 ;;21,"21695-0245-20 ")
 ;;35
 ;;21,"21695-0332-25 ")
 ;;19
 ;;21,"21695-0332-30 ")
 ;;20
 ;;21,"21695-0911-25 ")
 ;;78
 ;;21,"21695-0911-30 ")
 ;;79
 ;;21,"24208-0347-20 ")
 ;;36
 ;;21,"33261-0610-01 ")
 ;;37
 ;;21,"33261-0789-01 ")
 ;;21
 ;;21,"33261-0812-01 ")
 ;;80
 ;;21,"35356-0124-25 ")
 ;;81
 ;;21,"35356-0124-30 ")
 ;;82
 ;;21,"35356-0489-03 ")
 ;;160
 ;;21,"42254-0041-25 ")
 ;;83
 ;;21,"43598-0409-05 ")
 ;;185
 ;;21,"43598-0409-25 ")
 ;;186
 ;;21,"43598-0410-05 ")
 ;;161
 ;;21,"43598-0410-25 ")
 ;;162
 ;;21,"43598-0412-05 ")
 ;;142
 ;;21,"43598-0412-25 ")
 ;;143
 ;;21,"49502-0605-30 ")
 ;;57
 ;;21,"49502-0605-61 ")
 ;;58
 ;;21,"49502-0605-95 ")
 ;;59
 ;;21,"49999-0344-25 ")
 ;;22
 ;;21,"50383-0741-20 ")
 ;;38
 ;;21,"52959-0741-20 ")
 ;;39
 ;;21,"53217-0008-01 ")
 ;;84
 ;;21,"54569-3899-00 ")
 ;;23
 ;;21,"54569-3899-01 ")
 ;;24
 ;;21,"54569-3900-00 ")
 ;;40
 ;;21,"54569-4748-00 ")
 ;;163
 ;;21,"54569-4910-00 ")
 ;;85
 ;;21,"54569-5445-00 ")
 ;;187
 ;;21,"54569-6381-00 ")
 ;;164
 ;;21,"54569-6445-00 ")
 ;;124
 ;;21,"54868-2472-00 ")
 ;;25
 ;;21,"54868-2472-01 ")
 ;;26
 ;;21,"54868-3407-00 ")
 ;;41
 ;;21,"54868-4082-00 ")
 ;;86
 ;;21,"54868-4082-01 ")
 ;;87
 ;;21,"54868-4409-00 ")
 ;;165
 ;;21,"54868-5459-00 ")
 ;;188
 ;;21,"54868-5709-00 ")
 ;;52
 ;;21,"54868-5974-00 ")
 ;;125
 ;;21,"54868-6021-00 ")
 ;;202
 ;;21,"58118-0002-09 ")
 ;;27
 ;;21,"60760-0542-60 ")
 ;;88
 ;;21,"63402-0511-00 ")
 ;;144
 ;;21,"63402-0511-24 ")
 ;;145
 ;;21,"63402-0512-00 ")
 ;;166
 ;;21,"63402-0512-24 ")
 ;;167
 ;;21,"63402-0513-00 ")
 ;;189
 ;;21,"63402-0513-24 ")
 ;;190
 ;;21,"63402-0515-00 ")
 ;;203
 ;;21,"63402-0515-30 ")
 ;;204
 ;;21,"63402-0911-01 ")
 ;;53
 ;;21,"63402-0911-04 ")
 ;;54
 ;;21,"63402-0911-30 ")
 ;;55
 ;;21,"63402-0911-64 ")
 ;;56
 ;;21,"65862-0905-25 ")
 ;;89
 ;;21,"65862-0905-30 ")
 ;;90
 ;;21,"65862-0905-60 ")
 ;;91
 ;;21,"66993-0021-27 ")
 ;;146
 ;;21,"66993-0021-35 ")
 ;;147
 ;;21,"66993-0022-27 ")
 ;;168
 ;;21,"66993-0022-35 ")
 ;;169
 ;;21,"66993-0023-27 ")
 ;;191
 ;;21,"66993-0023-35 ")
 ;;192
 ;;21,"68788-0134-02 ")
 ;;28
 ;;21,"68788-6777-02 ")
 ;;170
 ;;21,"69097-0173-48 ")
 ;;126
 ;;21,"69097-0173-53 ")
 ;;127
 ;;21,"69097-0173-64 ")
 ;;128
 ;;21,"70004-0020-87 ")
 ;;42
 ;;21,"76204-0002-24 ")
 ;;171
 ;;21,"76204-0003-24 ")
 ;;193
 ;;21,"76204-0100-01 ")
 ;;92
 ;;21,"76204-0100-25 ")
 ;;93
 ;;21,"76204-0100-30 ")
 ;;94
 ;;21,"76204-0100-60 ")
 ;;95
 ;;21,"76204-0200-01 ")
 ;;29
 ;;21,"76204-0200-25 ")
 ;;30
 ;;21,"76204-0200-30 ")
 ;;31
 ;;21,"76204-0200-60 ")
 ;;32
 ;;21,"76204-0600-01 ")
 ;;129
 ;;21,"76204-0600-05 ")
 ;;130
 ;;21,"76204-0600-12 ")
 ;;131
 ;;21,"76204-0600-30 ")
 ;;132
 ;;21,"76204-0600-60 ")
 ;;133
 ;;21,"76204-0700-12 ")
 ;;148
 ;;21,"76204-0700-24 ")
 ;;149
 ;;21,"76204-0800-12 ")
 ;;172
 ;;21,"76204-0800-24 ")
 ;;173
 ;;21,"76204-0900-12 ")
 ;;194
 ;;21,"76204-0900-24 ")
 ;;195
 ;;9002226,2231,.01)
 ;;BGP PQA NEBULIZED BRONCHO NDC
 ;;9002226,2231,.02)
 ;;@
 ;;9002226,2231,.04)
 ;;@
 ;;9002226,2231,.06)
 ;;@
 ;;9002226,2231,.08)
 ;;@
 ;;9002226,2231,.09)
 ;;3180122
 ;;9002226,2231,.11)
 ;;@
 ;;9002226,2231,.12)
 ;;@
 ;;9002226,2231,.13)
 ;;1
 ;;9002226,2231,.14)
 ;;@
 ;;9002226,2231,.15)
 ;;50.67
 ;;9002226,2231,.16)
 ;;@
 ;;9002226,2231,.17)
 ;;@
 ;;9002226,2231,.22)
 ;;@
 ;;9002226,2231,3101)
 ;;@
 ;;9002226.02101,"2231,00093-4145-04 ",.01)
 ;;00093-4145-04
 ;;9002226.02101,"2231,00093-4145-04 ",.02)
 ;;00093-4145-04
 ;;9002226.02101,"2231,00093-4145-64 ",.01)
 ;;00093-4145-64
 ;;9002226.02101,"2231,00093-4145-64 ",.02)
 ;;00093-4145-64
 ;;9002226.02101,"2231,00093-4146-04 ",.01)
 ;;00093-4146-04
 ;;9002226.02101,"2231,00093-4146-04 ",.02)
 ;;00093-4146-04
 ;;9002226.02101,"2231,00093-4146-64 ",.01)
 ;;00093-4146-64
 ;;9002226.02101,"2231,00093-4146-64 ",.02)
 ;;00093-4146-64
 ;;9002226.02101,"2231,00093-4147-19 ",.01)
 ;;00093-4147-19
 ;;9002226.02101,"2231,00093-4147-19 ",.02)
 ;;00093-4147-19
 ;;9002226.02101,"2231,00093-4147-56 ",.01)
 ;;00093-4147-56
 ;;9002226.02101,"2231,00093-4147-56 ",.02)
 ;;00093-4147-56
 ;;9002226.02101,"2231,00093-4148-04 ",.01)
 ;;00093-4148-04
 ;;9002226.02101,"2231,00093-4148-04 ",.02)
 ;;00093-4148-04
 ;;9002226.02101,"2231,00093-4148-64 ",.01)
 ;;00093-4148-64
 ;;9002226.02101,"2231,00093-4148-64 ",.02)
 ;;00093-4148-64
 ;;9002226.02101,"2231,00093-6723-45 ",.01)
 ;;00093-6723-45
 ;;9002226.02101,"2231,00093-6723-45 ",.02)
 ;;00093-6723-45
 ;;9002226.02101,"2231,00093-6723-73 ",.01)
 ;;00093-6723-73
 ;;9002226.02101,"2231,00093-6723-73 ",.02)
 ;;00093-6723-73
 ;;9002226.02101,"2231,00093-6723-74 ",.01)
 ;;00093-6723-74
 ;;9002226.02101,"2231,00093-6723-74 ",.02)
 ;;00093-6723-74
 ;;9002226.02101,"2231,00185-7322-30 ",.01)
 ;;00185-7322-30
 ;;9002226.02101,"2231,00185-7322-30 ",.02)
 ;;00185-7322-30
 ;;9002226.02101,"2231,00185-7322-60 ",.01)
 ;;00185-7322-60
 ;;9002226.02101,"2231,00185-7322-60 ",.02)
 ;;00185-7322-60
 ;;9002226.02101,"2231,00378-6991-52 ",.01)
 ;;00378-6991-52
 ;;9002226.02101,"2231,00378-6991-52 ",.02)
 ;;00378-6991-52
 ;;9002226.02101,"2231,00378-6992-52 ",.01)
 ;;00378-6992-52
 ;;9002226.02101,"2231,00378-6992-52 ",.02)
 ;;00378-6992-52
 ;;9002226.02101,"2231,00378-6993-31 ",.01)
 ;;00378-6993-31
 ;;9002226.02101,"2231,00378-6993-31 ",.02)
 ;;00378-6993-31
 ;;9002226.02101,"2231,00378-6993-93 ",.01)
 ;;00378-6993-93
 ;;9002226.02101,"2231,00378-6993-93 ",.02)
 ;;00378-6993-93
 ;;9002226.02101,"2231,00378-7970-31 ",.01)
 ;;00378-7970-31
 ;;9002226.02101,"2231,00378-7970-31 ",.02)
 ;;00378-7970-31
 ;;9002226.02101,"2231,00378-7970-52 ",.01)
 ;;00378-7970-52
 ;;9002226.02101,"2231,00378-7970-52 ",.02)
 ;;00378-7970-52
 ;;9002226.02101,"2231,00378-7970-55 ",.01)
 ;;00378-7970-55
 ;;9002226.02101,"2231,00378-7970-55 ",.02)
 ;;00378-7970-55
 ;;9002226.02101,"2231,00378-7970-62 ",.01)
 ;;00378-7970-62
 ;;9002226.02101,"2231,00378-7970-62 ",.02)
 ;;00378-7970-62
 ;;9002226.02101,"2231,00378-7970-64 ",.01)
 ;;00378-7970-64
 ;;9002226.02101,"2231,00378-7970-64 ",.02)
 ;;00378-7970-64
 ;;9002226.02101,"2231,00378-7970-91 ",.01)
 ;;00378-7970-91
 ;;9002226.02101,"2231,00378-7970-91 ",.02)
 ;;00378-7970-91
 ;;9002226.02101,"2231,00378-7970-93 ",.01)
 ;;00378-7970-93
 ;;9002226.02101,"2231,00378-7970-93 ",.02)
 ;;00378-7970-93
 ;;9002226.02101,"2231,00378-8270-31 ",.01)
 ;;00378-8270-31
 ;;9002226.02101,"2231,00378-8270-31 ",.02)
 ;;00378-8270-31
 ;;9002226.02101,"2231,00378-8270-52 ",.01)
 ;;00378-8270-52
 ;;9002226.02101,"2231,00378-8270-52 ",.02)
 ;;00378-8270-52
 ;;9002226.02101,"2231,00378-8270-55 ",.01)
 ;;00378-8270-55
 ;;9002226.02101,"2231,00378-8270-55 ",.02)
 ;;00378-8270-55
 ;;9002226.02101,"2231,00378-8270-62 ",.01)
 ;;00378-8270-62
 ;;9002226.02101,"2231,00378-8270-62 ",.02)
 ;;00378-8270-62
 ;;9002226.02101,"2231,00378-8270-64 ",.01)
 ;;00378-8270-64
 ;;9002226.02101,"2231,00378-8270-64 ",.02)
 ;;00378-8270-64
 ;;9002226.02101,"2231,00378-8270-91 ",.01)
 ;;00378-8270-91
 ;;9002226.02101,"2231,00378-8270-91 ",.02)
 ;;00378-8270-91
 ;;9002226.02101,"2231,00378-8270-93 ",.01)
 ;;00378-8270-93
 ;;9002226.02101,"2231,00378-8270-93 ",.02)
 ;;00378-8270-93
 ;;9002226.02101,"2231,00378-9671-30 ",.01)
 ;;00378-9671-30
 ;;9002226.02101,"2231,00378-9671-30 ",.02)
 ;;00378-9671-30
 ;;9002226.02101,"2231,00378-9671-31 ",.01)
 ;;00378-9671-31
 ;;9002226.02101,"2231,00378-9671-31 ",.02)
 ;;00378-9671-31
 ;;9002226.02101,"2231,00378-9671-58 ",.01)
 ;;00378-9671-58
 ;
OTHER ; OTHER ROUTINES
 D ^BGP8YA2
 D ^BGP8YA3
 Q