BGP8ZI47 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,55289-0028-30 ",.01)
 ;;55289-0028-30
 ;;9002226.02101,"869,55289-0028-30 ",.02)
 ;;55289-0028-30
 ;;9002226.02101,"869,55289-0036-21 ",.01)
 ;;55289-0036-21
 ;;9002226.02101,"869,55289-0036-21 ",.02)
 ;;55289-0036-21
 ;;9002226.02101,"869,55289-0036-30 ",.01)
 ;;55289-0036-30
 ;;9002226.02101,"869,55289-0036-30 ",.02)
 ;;55289-0036-30
 ;;9002226.02101,"869,55289-0037-45 ",.01)
 ;;55289-0037-45
 ;;9002226.02101,"869,55289-0037-45 ",.02)
 ;;55289-0037-45
 ;;9002226.02101,"869,55289-0037-90 ",.01)
 ;;55289-0037-90
 ;;9002226.02101,"869,55289-0037-90 ",.02)
 ;;55289-0037-90
 ;;9002226.02101,"869,55289-0053-45 ",.01)
 ;;55289-0053-45
 ;;9002226.02101,"869,55289-0053-45 ",.02)
 ;;55289-0053-45
 ;;9002226.02101,"869,55289-0053-90 ",.01)
 ;;55289-0053-90
 ;;9002226.02101,"869,55289-0053-90 ",.02)
 ;;55289-0053-90
 ;;9002226.02101,"869,55289-0060-14 ",.01)
 ;;55289-0060-14
 ;;9002226.02101,"869,55289-0060-14 ",.02)
 ;;55289-0060-14
 ;;9002226.02101,"869,55289-0060-30 ",.01)
 ;;55289-0060-30
 ;;9002226.02101,"869,55289-0060-30 ",.02)
 ;;55289-0060-30
 ;;9002226.02101,"869,55289-0064-07 ",.01)
 ;;55289-0064-07
 ;;9002226.02101,"869,55289-0064-07 ",.02)
 ;;55289-0064-07
 ;;9002226.02101,"869,55289-0064-14 ",.01)
 ;;55289-0064-14
 ;;9002226.02101,"869,55289-0064-14 ",.02)
 ;;55289-0064-14
 ;;9002226.02101,"869,55289-0064-30 ",.01)
 ;;55289-0064-30
 ;;9002226.02101,"869,55289-0064-30 ",.02)
 ;;55289-0064-30
 ;;9002226.02101,"869,55289-0064-60 ",.01)
 ;;55289-0064-60
 ;;9002226.02101,"869,55289-0064-60 ",.02)
 ;;55289-0064-60
 ;;9002226.02101,"869,55289-0064-90 ",.01)
 ;;55289-0064-90
 ;;9002226.02101,"869,55289-0064-90 ",.02)
 ;;55289-0064-90
 ;;9002226.02101,"869,55289-0099-30 ",.01)
 ;;55289-0099-30
 ;;9002226.02101,"869,55289-0099-30 ",.02)
 ;;55289-0099-30
 ;;9002226.02101,"869,55289-0099-50 ",.01)
 ;;55289-0099-50
 ;;9002226.02101,"869,55289-0099-50 ",.02)
 ;;55289-0099-50
 ;;9002226.02101,"869,55289-0124-12 ",.01)
 ;;55289-0124-12
 ;;9002226.02101,"869,55289-0124-12 ",.02)
 ;;55289-0124-12
 ;;9002226.02101,"869,55289-0124-30 ",.01)
 ;;55289-0124-30
 ;;9002226.02101,"869,55289-0124-30 ",.02)
 ;;55289-0124-30
 ;;9002226.02101,"869,55289-0144-30 ",.01)
 ;;55289-0144-30
 ;;9002226.02101,"869,55289-0144-30 ",.02)
 ;;55289-0144-30
 ;;9002226.02101,"869,55289-0144-90 ",.01)
 ;;55289-0144-90
 ;;9002226.02101,"869,55289-0144-90 ",.02)
 ;;55289-0144-90
 ;;9002226.02101,"869,55289-0215-22 ",.01)
 ;;55289-0215-22
 ;;9002226.02101,"869,55289-0215-22 ",.02)
 ;;55289-0215-22
 ;;9002226.02101,"869,55289-0215-30 ",.01)
 ;;55289-0215-30
 ;;9002226.02101,"869,55289-0215-30 ",.02)
 ;;55289-0215-30
 ;;9002226.02101,"869,55289-0216-30 ",.01)
 ;;55289-0216-30
 ;;9002226.02101,"869,55289-0216-30 ",.02)
 ;;55289-0216-30
 ;;9002226.02101,"869,55289-0223-30 ",.01)
 ;;55289-0223-30
 ;;9002226.02101,"869,55289-0223-30 ",.02)
 ;;55289-0223-30
 ;;9002226.02101,"869,55289-0223-60 ",.01)
 ;;55289-0223-60
 ;;9002226.02101,"869,55289-0223-60 ",.02)
 ;;55289-0223-60
 ;;9002226.02101,"869,55289-0223-90 ",.01)
 ;;55289-0223-90
 ;;9002226.02101,"869,55289-0223-90 ",.02)
 ;;55289-0223-90
 ;;9002226.02101,"869,55289-0258-30 ",.01)
 ;;55289-0258-30
 ;;9002226.02101,"869,55289-0258-30 ",.02)
 ;;55289-0258-30
 ;;9002226.02101,"869,55289-0277-30 ",.01)
 ;;55289-0277-30
 ;;9002226.02101,"869,55289-0277-30 ",.02)
 ;;55289-0277-30
 ;;9002226.02101,"869,55289-0291-14 ",.01)
 ;;55289-0291-14
 ;;9002226.02101,"869,55289-0291-14 ",.02)
 ;;55289-0291-14
 ;;9002226.02101,"869,55289-0291-30 ",.01)
 ;;55289-0291-30
 ;;9002226.02101,"869,55289-0291-30 ",.02)
 ;;55289-0291-30
 ;;9002226.02101,"869,55289-0291-60 ",.01)
 ;;55289-0291-60
 ;;9002226.02101,"869,55289-0291-60 ",.02)
 ;;55289-0291-60
 ;;9002226.02101,"869,55289-0308-07 ",.01)
 ;;55289-0308-07
 ;;9002226.02101,"869,55289-0308-07 ",.02)
 ;;55289-0308-07
 ;;9002226.02101,"869,55289-0308-14 ",.01)
 ;;55289-0308-14
 ;;9002226.02101,"869,55289-0308-14 ",.02)
 ;;55289-0308-14
 ;;9002226.02101,"869,55289-0308-30 ",.01)
 ;;55289-0308-30
 ;;9002226.02101,"869,55289-0308-30 ",.02)
 ;;55289-0308-30
 ;;9002226.02101,"869,55289-0370-30 ",.01)
 ;;55289-0370-30
 ;;9002226.02101,"869,55289-0370-30 ",.02)
 ;;55289-0370-30
 ;;9002226.02101,"869,55289-0378-30 ",.01)
 ;;55289-0378-30
 ;;9002226.02101,"869,55289-0378-30 ",.02)
 ;;55289-0378-30
 ;;9002226.02101,"869,55289-0381-30 ",.01)
 ;;55289-0381-30
 ;;9002226.02101,"869,55289-0381-30 ",.02)
 ;;55289-0381-30
 ;;9002226.02101,"869,55289-0381-45 ",.01)
 ;;55289-0381-45
 ;;9002226.02101,"869,55289-0381-45 ",.02)
 ;;55289-0381-45
 ;;9002226.02101,"869,55289-0381-60 ",.01)
 ;;55289-0381-60
 ;;9002226.02101,"869,55289-0381-60 ",.02)
 ;;55289-0381-60
 ;;9002226.02101,"869,55289-0381-90 ",.01)
 ;;55289-0381-90
 ;;9002226.02101,"869,55289-0381-90 ",.02)
 ;;55289-0381-90
 ;;9002226.02101,"869,55289-0409-30 ",.01)
 ;;55289-0409-30
 ;;9002226.02101,"869,55289-0409-30 ",.02)
 ;;55289-0409-30
 ;;9002226.02101,"869,55289-0409-60 ",.01)
 ;;55289-0409-60
 ;;9002226.02101,"869,55289-0409-60 ",.02)
 ;;55289-0409-60
 ;;9002226.02101,"869,55289-0550-15 ",.01)
 ;;55289-0550-15
 ;;9002226.02101,"869,55289-0550-15 ",.02)
 ;;55289-0550-15
 ;;9002226.02101,"869,55289-0550-30 ",.01)
 ;;55289-0550-30
 ;;9002226.02101,"869,55289-0550-30 ",.02)
 ;;55289-0550-30
 ;;9002226.02101,"869,55289-0586-30 ",.01)
 ;;55289-0586-30
 ;;9002226.02101,"869,55289-0586-30 ",.02)
 ;;55289-0586-30
 ;;9002226.02101,"869,55289-0610-28 ",.01)
 ;;55289-0610-28
 ;;9002226.02101,"869,55289-0610-28 ",.02)
 ;;55289-0610-28
 ;;9002226.02101,"869,55289-0610-30 ",.01)
 ;;55289-0610-30
 ;;9002226.02101,"869,55289-0610-30 ",.02)
 ;;55289-0610-30
 ;;9002226.02101,"869,55289-0610-60 ",.01)
 ;;55289-0610-60
 ;;9002226.02101,"869,55289-0610-60 ",.02)
 ;;55289-0610-60
 ;;9002226.02101,"869,55289-0610-90 ",.01)
 ;;55289-0610-90
 ;;9002226.02101,"869,55289-0610-90 ",.02)
 ;;55289-0610-90
 ;;9002226.02101,"869,55289-0613-14 ",.01)
 ;;55289-0613-14
 ;;9002226.02101,"869,55289-0613-14 ",.02)
 ;;55289-0613-14
 ;;9002226.02101,"869,55289-0613-30 ",.01)
 ;;55289-0613-30
 ;;9002226.02101,"869,55289-0613-30 ",.02)
 ;;55289-0613-30
 ;;9002226.02101,"869,55289-0613-60 ",.01)
 ;;55289-0613-60
 ;;9002226.02101,"869,55289-0613-60 ",.02)
 ;;55289-0613-60
 ;;9002226.02101,"869,55289-0730-01 ",.01)
 ;;55289-0730-01
 ;;9002226.02101,"869,55289-0730-01 ",.02)
 ;;55289-0730-01
 ;;9002226.02101,"869,55289-0730-12 ",.01)
 ;;55289-0730-12
 ;;9002226.02101,"869,55289-0730-12 ",.02)
 ;;55289-0730-12
 ;;9002226.02101,"869,55289-0730-25 ",.01)
 ;;55289-0730-25
 ;;9002226.02101,"869,55289-0730-25 ",.02)
 ;;55289-0730-25
 ;;9002226.02101,"869,55289-0730-30 ",.01)
 ;;55289-0730-30
 ;;9002226.02101,"869,55289-0730-30 ",.02)
 ;;55289-0730-30
 ;;9002226.02101,"869,55289-0730-60 ",.01)
 ;;55289-0730-60
 ;;9002226.02101,"869,55289-0730-60 ",.02)
 ;;55289-0730-60
 ;;9002226.02101,"869,55289-0730-90 ",.01)
 ;;55289-0730-90
 ;;9002226.02101,"869,55289-0730-90 ",.02)
 ;;55289-0730-90
 ;;9002226.02101,"869,55289-0733-30 ",.01)
 ;;55289-0733-30
 ;;9002226.02101,"869,55289-0733-30 ",.02)
 ;;55289-0733-30
 ;;9002226.02101,"869,55289-0733-60 ",.01)
 ;;55289-0733-60
 ;;9002226.02101,"869,55289-0733-60 ",.02)
 ;;55289-0733-60
 ;;9002226.02101,"869,55289-0768-30 ",.01)
 ;;55289-0768-30
 ;;9002226.02101,"869,55289-0768-30 ",.02)
 ;;55289-0768-30
 ;;9002226.02101,"869,55289-0827-30 ",.01)
 ;;55289-0827-30
 ;;9002226.02101,"869,55289-0827-30 ",.02)
 ;;55289-0827-30
 ;;9002226.02101,"869,55289-0828-30 ",.01)
 ;;55289-0828-30
 ;;9002226.02101,"869,55289-0828-30 ",.02)
 ;;55289-0828-30
 ;;9002226.02101,"869,55289-0869-30 ",.01)
 ;;55289-0869-30
 ;;9002226.02101,"869,55289-0869-30 ",.02)
 ;;55289-0869-30
 ;;9002226.02101,"869,55289-0883-14 ",.01)
 ;;55289-0883-14
 ;;9002226.02101,"869,55289-0883-14 ",.02)
 ;;55289-0883-14
 ;;9002226.02101,"869,55289-0883-30 ",.01)
 ;;55289-0883-30
 ;;9002226.02101,"869,55289-0883-30 ",.02)
 ;;55289-0883-30
 ;;9002226.02101,"869,55289-0883-90 ",.01)
 ;;55289-0883-90
 ;;9002226.02101,"869,55289-0883-90 ",.02)
 ;;55289-0883-90
 ;;9002226.02101,"869,55289-0897-30 ",.01)
 ;;55289-0897-30
 ;;9002226.02101,"869,55289-0897-30 ",.02)
 ;;55289-0897-30
 ;;9002226.02101,"869,55289-0900-15 ",.01)
 ;;55289-0900-15
 ;;9002226.02101,"869,55289-0900-15 ",.02)
 ;;55289-0900-15
 ;;9002226.02101,"869,55289-0900-30 ",.01)
 ;;55289-0900-30
 ;;9002226.02101,"869,55289-0900-30 ",.02)
 ;;55289-0900-30
 ;;9002226.02101,"869,55289-0905-30 ",.01)
 ;;55289-0905-30
 ;;9002226.02101,"869,55289-0905-30 ",.02)
 ;;55289-0905-30
 ;;9002226.02101,"869,55289-0922-15 ",.01)
 ;;55289-0922-15
 ;;9002226.02101,"869,55289-0922-15 ",.02)
 ;;55289-0922-15
 ;;9002226.02101,"869,55289-0922-30 ",.01)
 ;;55289-0922-30
 ;;9002226.02101,"869,55289-0922-30 ",.02)
 ;;55289-0922-30
 ;;9002226.02101,"869,55289-0972-30 ",.01)
 ;;55289-0972-30
 ;;9002226.02101,"869,55289-0972-30 ",.02)
 ;;55289-0972-30
 ;;9002226.02101,"869,55289-0972-60 ",.01)
 ;;55289-0972-60
 ;;9002226.02101,"869,55289-0972-60 ",.02)
 ;;55289-0972-60
 ;;9002226.02101,"869,55289-0972-90 ",.01)
 ;;55289-0972-90
 ;;9002226.02101,"869,55289-0972-90 ",.02)
 ;;55289-0972-90
 ;;9002226.02101,"869,55864-0708-30 ",.01)
 ;;55864-0708-30
 ;;9002226.02101,"869,55864-0708-30 ",.02)
 ;;55864-0708-30
 ;;9002226.02101,"869,55887-0125-60 ",.01)
 ;;55887-0125-60
 ;;9002226.02101,"869,55887-0125-60 ",.02)
 ;;55887-0125-60
 ;;9002226.02101,"869,55887-0143-30 ",.01)
 ;;55887-0143-30
 ;;9002226.02101,"869,55887-0143-30 ",.02)
 ;;55887-0143-30
 ;;9002226.02101,"869,55887-0143-60 ",.01)
 ;;55887-0143-60
 ;;9002226.02101,"869,55887-0143-60 ",.02)
 ;;55887-0143-60
 ;;9002226.02101,"869,55887-0143-82 ",.01)
 ;;55887-0143-82
 ;;9002226.02101,"869,55887-0143-82 ",.02)
 ;;55887-0143-82
 ;;9002226.02101,"869,55887-0143-90 ",.01)
 ;;55887-0143-90
 ;;9002226.02101,"869,55887-0143-90 ",.02)
 ;;55887-0143-90
 ;;9002226.02101,"869,55887-0143-92 ",.01)
 ;;55887-0143-92
 ;;9002226.02101,"869,55887-0143-92 ",.02)
 ;;55887-0143-92
 ;;9002226.02101,"869,55887-0144-30 ",.01)
 ;;55887-0144-30
 ;;9002226.02101,"869,55887-0144-30 ",.02)
 ;;55887-0144-30
 ;;9002226.02101,"869,55887-0144-60 ",.01)
 ;;55887-0144-60
 ;;9002226.02101,"869,55887-0144-60 ",.02)
 ;;55887-0144-60
 ;;9002226.02101,"869,55887-0144-82 ",.01)
 ;;55887-0144-82
 ;;9002226.02101,"869,55887-0144-82 ",.02)
 ;;55887-0144-82
 ;;9002226.02101,"869,55887-0144-90 ",.01)
 ;;55887-0144-90
 ;;9002226.02101,"869,55887-0144-90 ",.02)
 ;;55887-0144-90
 ;;9002226.02101,"869,55887-0144-92 ",.01)
 ;;55887-0144-92
 ;;9002226.02101,"869,55887-0144-92 ",.02)
 ;;55887-0144-92
 ;;9002226.02101,"869,55887-0151-01 ",.01)
 ;;55887-0151-01
 ;;9002226.02101,"869,55887-0151-01 ",.02)
 ;;55887-0151-01
 ;;9002226.02101,"869,55887-0151-20 ",.01)
 ;;55887-0151-20
 ;;9002226.02101,"869,55887-0151-20 ",.02)
 ;;55887-0151-20
 ;;9002226.02101,"869,55887-0151-30 ",.01)
 ;;55887-0151-30
 ;;9002226.02101,"869,55887-0151-30 ",.02)
 ;;55887-0151-30
 ;;9002226.02101,"869,55887-0151-60 ",.01)
 ;;55887-0151-60
 ;;9002226.02101,"869,55887-0151-60 ",.02)
 ;;55887-0151-60
 ;;9002226.02101,"869,55887-0151-82 ",.01)
 ;;55887-0151-82
 ;;9002226.02101,"869,55887-0151-82 ",.02)
 ;;55887-0151-82
 ;;9002226.02101,"869,55887-0151-90 ",.01)
 ;;55887-0151-90
 ;;9002226.02101,"869,55887-0151-90 ",.02)
 ;;55887-0151-90
 ;;9002226.02101,"869,55887-0160-15 ",.01)
 ;;55887-0160-15
 ;;9002226.02101,"869,55887-0160-15 ",.02)
 ;;55887-0160-15
 ;;9002226.02101,"869,55887-0160-30 ",.01)
 ;;55887-0160-30
 ;;9002226.02101,"869,55887-0160-30 ",.02)
 ;;55887-0160-30