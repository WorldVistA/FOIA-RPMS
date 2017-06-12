BGP47V11 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"805,10702-0014-01 ",.01)
 ;;10702-0014-01
 ;;9002226.02101,"805,10702-0014-01 ",.02)
 ;;10702-0014-01
 ;;9002226.02101,"805,12280-0145-00 ",.01)
 ;;12280-0145-00
 ;;9002226.02101,"805,12280-0145-00 ",.02)
 ;;12280-0145-00
 ;;9002226.02101,"805,12280-0376-00 ",.01)
 ;;12280-0376-00
 ;;9002226.02101,"805,12280-0376-00 ",.02)
 ;;12280-0376-00
 ;;9002226.02101,"805,12280-0376-30 ",.01)
 ;;12280-0376-30
 ;;9002226.02101,"805,12280-0376-30 ",.02)
 ;;12280-0376-30
 ;;9002226.02101,"805,12280-0377-00 ",.01)
 ;;12280-0377-00
 ;;9002226.02101,"805,12280-0377-00 ",.02)
 ;;12280-0377-00
 ;;9002226.02101,"805,12280-0377-30 ",.01)
 ;;12280-0377-30
 ;;9002226.02101,"805,12280-0377-30 ",.02)
 ;;12280-0377-30
 ;;9002226.02101,"805,13107-0142-01 ",.01)
 ;;13107-0142-01
 ;;9002226.02101,"805,13107-0142-01 ",.02)
 ;;13107-0142-01
 ;;9002226.02101,"805,13107-0142-05 ",.01)
 ;;13107-0142-05
 ;;9002226.02101,"805,13107-0142-05 ",.02)
 ;;13107-0142-05
 ;;9002226.02101,"805,13107-0143-01 ",.01)
 ;;13107-0143-01
 ;;9002226.02101,"805,13107-0143-01 ",.02)
 ;;13107-0143-01
 ;;9002226.02101,"805,13107-0143-05 ",.01)
 ;;13107-0143-05
 ;;9002226.02101,"805,13107-0143-05 ",.02)
 ;;13107-0143-05
 ;;9002226.02101,"805,13107-0144-01 ",.01)
 ;;13107-0144-01
 ;;9002226.02101,"805,13107-0144-01 ",.02)
 ;;13107-0144-01
 ;;9002226.02101,"805,13107-0144-05 ",.01)
 ;;13107-0144-05
 ;;9002226.02101,"805,13107-0144-05 ",.02)
 ;;13107-0144-05
 ;;9002226.02101,"805,13107-0145-01 ",.01)
 ;;13107-0145-01
 ;;9002226.02101,"805,13107-0145-01 ",.02)
 ;;13107-0145-01
 ;;9002226.02101,"805,13107-0145-05 ",.01)
 ;;13107-0145-05
 ;;9002226.02101,"805,13107-0145-05 ",.02)
 ;;13107-0145-05
 ;;9002226.02101,"805,13411-0169-01 ",.01)
 ;;13411-0169-01
 ;;9002226.02101,"805,13411-0169-01 ",.02)
 ;;13411-0169-01
 ;;9002226.02101,"805,13411-0169-03 ",.01)
 ;;13411-0169-03
 ;;9002226.02101,"805,13411-0169-03 ",.02)
 ;;13411-0169-03
 ;;9002226.02101,"805,13411-0169-06 ",.01)
 ;;13411-0169-06
 ;;9002226.02101,"805,13411-0169-06 ",.02)
 ;;13411-0169-06
 ;;9002226.02101,"805,13411-0169-09 ",.01)
 ;;13411-0169-09
 ;;9002226.02101,"805,13411-0169-09 ",.02)
 ;;13411-0169-09
 ;;9002226.02101,"805,13411-0169-10 ",.01)
 ;;13411-0169-10
 ;;9002226.02101,"805,13411-0169-10 ",.02)
 ;;13411-0169-10
 ;;9002226.02101,"805,13411-0176-01 ",.01)
 ;;13411-0176-01
 ;;9002226.02101,"805,13411-0176-01 ",.02)
 ;;13411-0176-01
 ;;9002226.02101,"805,13411-0176-03 ",.01)
 ;;13411-0176-03
 ;;9002226.02101,"805,13411-0176-03 ",.02)
 ;;13411-0176-03
 ;;9002226.02101,"805,13411-0176-06 ",.01)
 ;;13411-0176-06
 ;;9002226.02101,"805,13411-0176-06 ",.02)
 ;;13411-0176-06
 ;;9002226.02101,"805,13411-0176-09 ",.01)
 ;;13411-0176-09
 ;;9002226.02101,"805,13411-0176-09 ",.02)
 ;;13411-0176-09
 ;;9002226.02101,"805,13411-0176-10 ",.01)
 ;;13411-0176-10
 ;;9002226.02101,"805,13411-0176-10 ",.02)
 ;;13411-0176-10
 ;;9002226.02101,"805,15330-0025-01 ",.01)
 ;;15330-0025-01
 ;;9002226.02101,"805,15330-0025-01 ",.02)
 ;;15330-0025-01
 ;;9002226.02101,"805,15330-0025-10 ",.01)
 ;;15330-0025-10
 ;;9002226.02101,"805,15330-0025-10 ",.02)
 ;;15330-0025-10
 ;;9002226.02101,"805,15330-0028-01 ",.01)
 ;;15330-0028-01
 ;;9002226.02101,"805,15330-0028-01 ",.02)
 ;;15330-0028-01
 ;;9002226.02101,"805,15330-0028-10 ",.01)
 ;;15330-0028-10
 ;;9002226.02101,"805,15330-0028-10 ",.02)
 ;;15330-0028-10
 ;;9002226.02101,"805,15330-0029-01 ",.01)
 ;;15330-0029-01
 ;;9002226.02101,"805,15330-0029-01 ",.02)
 ;;15330-0029-01
 ;;9002226.02101,"805,15330-0029-10 ",.01)
 ;;15330-0029-10
 ;;9002226.02101,"805,15330-0029-10 ",.02)
 ;;15330-0029-10
 ;;9002226.02101,"805,15330-0208-01 ",.01)
 ;;15330-0208-01
 ;;9002226.02101,"805,15330-0208-01 ",.02)
 ;;15330-0208-01
 ;;9002226.02101,"805,15330-0209-01 ",.01)
 ;;15330-0209-01
 ;;9002226.02101,"805,15330-0209-01 ",.02)
 ;;15330-0209-01
 ;;9002226.02101,"805,15330-0210-01 ",.01)
 ;;15330-0210-01
 ;;9002226.02101,"805,15330-0210-01 ",.02)
 ;;15330-0210-01
 ;;9002226.02101,"805,16571-0430-11 ",.01)
 ;;16571-0430-11
 ;;9002226.02101,"805,16571-0430-11 ",.02)
 ;;16571-0430-11
 ;;9002226.02101,"805,16571-0431-11 ",.01)
 ;;16571-0431-11
 ;;9002226.02101,"805,16571-0431-11 ",.02)
 ;;16571-0431-11
 ;;9002226.02101,"805,16571-0441-11 ",.01)
 ;;16571-0441-11
 ;;9002226.02101,"805,16571-0441-11 ",.02)
 ;;16571-0441-11
 ;;9002226.02101,"805,16590-0132-30 ",.01)
 ;;16590-0132-30
 ;;9002226.02101,"805,16590-0132-30 ",.02)
 ;;16590-0132-30
 ;;9002226.02101,"805,16590-0132-60 ",.01)
 ;;16590-0132-60
 ;;9002226.02101,"805,16590-0132-60 ",.02)
 ;;16590-0132-60
 ;;9002226.02101,"805,16590-0133-30 ",.01)
 ;;16590-0133-30
 ;;9002226.02101,"805,16590-0133-30 ",.02)
 ;;16590-0133-30
 ;;9002226.02101,"805,16590-0133-60 ",.01)
 ;;16590-0133-60
 ;;9002226.02101,"805,16590-0133-60 ",.02)
 ;;16590-0133-60
 ;;9002226.02101,"805,16590-0533-30 ",.01)
 ;;16590-0533-30
 ;;9002226.02101,"805,16590-0533-30 ",.02)
 ;;16590-0533-30
 ;;9002226.02101,"805,16590-0533-60 ",.01)
 ;;16590-0533-60
 ;;9002226.02101,"805,16590-0533-60 ",.02)
 ;;16590-0533-60
 ;;9002226.02101,"805,16590-0533-72 ",.01)
 ;;16590-0533-72
 ;;9002226.02101,"805,16590-0533-72 ",.02)
 ;;16590-0533-72
 ;;9002226.02101,"805,16590-0533-90 ",.01)
 ;;16590-0533-90
 ;;9002226.02101,"805,16590-0533-90 ",.02)
 ;;16590-0533-90
 ;;9002226.02101,"805,16714-0021-04 ",.01)
 ;;16714-0021-04
 ;;9002226.02101,"805,16714-0021-04 ",.02)
 ;;16714-0021-04
 ;;9002226.02101,"805,16714-0021-06 ",.01)
 ;;16714-0021-06
 ;;9002226.02101,"805,16714-0021-06 ",.02)
 ;;16714-0021-06
 ;;9002226.02101,"805,16714-0022-04 ",.01)
 ;;16714-0022-04
 ;;9002226.02101,"805,16714-0022-04 ",.02)
 ;;16714-0022-04
 ;;9002226.02101,"805,16714-0022-06 ",.01)
 ;;16714-0022-06
 ;;9002226.02101,"805,16714-0022-06 ",.02)
 ;;16714-0022-06
 ;;9002226.02101,"805,16714-0023-04 ",.01)
 ;;16714-0023-04
 ;;9002226.02101,"805,16714-0023-04 ",.02)
 ;;16714-0023-04
 ;;9002226.02101,"805,16714-0023-06 ",.01)
 ;;16714-0023-06
 ;;9002226.02101,"805,16714-0023-06 ",.02)
 ;;16714-0023-06
 ;;9002226.02101,"805,16714-0024-04 ",.01)
 ;;16714-0024-04
 ;;9002226.02101,"805,16714-0024-04 ",.02)
 ;;16714-0024-04
 ;;9002226.02101,"805,16714-0025-04 ",.01)
 ;;16714-0025-04
 ;;9002226.02101,"805,16714-0025-04 ",.02)
 ;;16714-0025-04
 ;;9002226.02101,"805,16714-0025-05 ",.01)
 ;;16714-0025-05
 ;;9002226.02101,"805,16714-0025-05 ",.02)
 ;;16714-0025-05
 ;;9002226.02101,"805,16714-0031-04 ",.01)
 ;;16714-0031-04
 ;;9002226.02101,"805,16714-0031-04 ",.02)
 ;;16714-0031-04
 ;;9002226.02101,"805,16714-0031-06 ",.01)
 ;;16714-0031-06
 ;;9002226.02101,"805,16714-0031-06 ",.02)
 ;;16714-0031-06
 ;;9002226.02101,"805,16714-0032-04 ",.01)
 ;;16714-0032-04
 ;;9002226.02101,"805,16714-0032-04 ",.02)
 ;;16714-0032-04
 ;;9002226.02101,"805,16714-0032-06 ",.01)
 ;;16714-0032-06
 ;;9002226.02101,"805,16714-0032-06 ",.02)
 ;;16714-0032-06
 ;;9002226.02101,"805,16714-0033-04 ",.01)
 ;;16714-0033-04
 ;;9002226.02101,"805,16714-0033-04 ",.02)
 ;;16714-0033-04
 ;;9002226.02101,"805,16714-0033-06 ",.01)
 ;;16714-0033-06
 ;;9002226.02101,"805,16714-0033-06 ",.02)
 ;;16714-0033-06
 ;;9002226.02101,"805,21695-0291-30 ",.01)
 ;;21695-0291-30
 ;;9002226.02101,"805,21695-0291-30 ",.02)
 ;;21695-0291-30
 ;;9002226.02101,"805,21695-0298-30 ",.01)
 ;;21695-0298-30
 ;;9002226.02101,"805,21695-0298-30 ",.02)
 ;;21695-0298-30
 ;;9002226.02101,"805,21695-0299-00 ",.01)
 ;;21695-0299-00
 ;;9002226.02101,"805,21695-0299-00 ",.02)
 ;;21695-0299-00
 ;;9002226.02101,"805,21695-0299-30 ",.01)
 ;;21695-0299-30
 ;;9002226.02101,"805,21695-0299-30 ",.02)
 ;;21695-0299-30
 ;;9002226.02101,"805,21695-0322-30 ",.01)
 ;;21695-0322-30
 ;;9002226.02101,"805,21695-0322-30 ",.02)
 ;;21695-0322-30
 ;;9002226.02101,"805,21695-0322-90 ",.01)
 ;;21695-0322-90
 ;;9002226.02101,"805,21695-0322-90 ",.02)
 ;;21695-0322-90
 ;;9002226.02101,"805,21695-0323-30 ",.01)
 ;;21695-0323-30
 ;;9002226.02101,"805,21695-0323-30 ",.02)
 ;;21695-0323-30
 ;;9002226.02101,"805,21695-0323-60 ",.01)
 ;;21695-0323-60
 ;;9002226.02101,"805,21695-0323-60 ",.02)
 ;;21695-0323-60
 ;;9002226.02101,"805,21695-0324-30 ",.01)
 ;;21695-0324-30
 ;;9002226.02101,"805,21695-0324-30 ",.02)
 ;;21695-0324-30
 ;;9002226.02101,"805,21695-0397-30 ",.01)
 ;;21695-0397-30
 ;;9002226.02101,"805,21695-0397-30 ",.02)
 ;;21695-0397-30
 ;;9002226.02101,"805,21695-0592-60 ",.01)
 ;;21695-0592-60
 ;;9002226.02101,"805,21695-0592-60 ",.02)
 ;;21695-0592-60
 ;;9002226.02101,"805,21695-0645-60 ",.01)
 ;;21695-0645-60
 ;;9002226.02101,"805,21695-0645-60 ",.02)
 ;;21695-0645-60
 ;;9002226.02101,"805,21695-0646-60 ",.01)
 ;;21695-0646-60
 ;;9002226.02101,"805,21695-0646-60 ",.02)
 ;;21695-0646-60
 ;;9002226.02101,"805,21695-0647-60 ",.01)
 ;;21695-0647-60
 ;;9002226.02101,"805,21695-0647-60 ",.02)
 ;;21695-0647-60
 ;;9002226.02101,"805,21695-0648-60 ",.01)
 ;;21695-0648-60
 ;;9002226.02101,"805,21695-0648-60 ",.02)
 ;;21695-0648-60
 ;;9002226.02101,"805,21695-0668-60 ",.01)
 ;;21695-0668-60
 ;;9002226.02101,"805,21695-0668-60 ",.02)
 ;;21695-0668-60
 ;;9002226.02101,"805,21695-0669-30 ",.01)
 ;;21695-0669-30
 ;;9002226.02101,"805,21695-0669-30 ",.02)
 ;;21695-0669-30
 ;;9002226.02101,"805,21695-0669-60 ",.01)
 ;;21695-0669-60
 ;;9002226.02101,"805,21695-0669-60 ",.02)
 ;;21695-0669-60
 ;;9002226.02101,"805,21695-0743-30 ",.01)
 ;;21695-0743-30
 ;;9002226.02101,"805,21695-0743-30 ",.02)
 ;;21695-0743-30
 ;;9002226.02101,"805,21695-0808-30 ",.01)
 ;;21695-0808-30
 ;;9002226.02101,"805,21695-0808-30 ",.02)
 ;;21695-0808-30
 ;;9002226.02101,"805,21695-0809-30 ",.01)
 ;;21695-0809-30
 ;;9002226.02101,"805,21695-0809-30 ",.02)
 ;;21695-0809-30
 ;;9002226.02101,"805,23155-0110-01 ",.01)
 ;;23155-0110-01
 ;;9002226.02101,"805,23155-0110-01 ",.02)
 ;;23155-0110-01
 ;;9002226.02101,"805,23155-0110-10 ",.01)
 ;;23155-0110-10
 ;;9002226.02101,"805,23155-0110-10 ",.02)
 ;;23155-0110-10
 ;;9002226.02101,"805,23155-0111-01 ",.01)
 ;;23155-0111-01
 ;;9002226.02101,"805,23155-0111-01 ",.02)
 ;;23155-0111-01
 ;;9002226.02101,"805,23155-0111-10 ",.01)
 ;;23155-0111-10
 ;;9002226.02101,"805,23155-0111-10 ",.02)
 ;;23155-0111-10
 ;;9002226.02101,"805,23155-0112-01 ",.01)
 ;;23155-0112-01
 ;;9002226.02101,"805,23155-0112-01 ",.02)
 ;;23155-0112-01
 ;;9002226.02101,"805,23155-0112-10 ",.01)
 ;;23155-0112-10
 ;;9002226.02101,"805,23155-0112-10 ",.02)
 ;;23155-0112-10
 ;;9002226.02101,"805,23155-0113-01 ",.01)
 ;;23155-0113-01
 ;;9002226.02101,"805,23155-0113-01 ",.02)
 ;;23155-0113-01
 ;;9002226.02101,"805,23155-0114-01 ",.01)
 ;;23155-0114-01
 ;;9002226.02101,"805,23155-0114-01 ",.02)
 ;;23155-0114-01
 ;;9002226.02101,"805,23155-0114-05 ",.01)
 ;;23155-0114-05
 ;;9002226.02101,"805,23155-0114-05 ",.02)
 ;;23155-0114-05
 ;;9002226.02101,"805,23490-5096-01 ",.01)
 ;;23490-5096-01
 ;;9002226.02101,"805,23490-5096-01 ",.02)
 ;;23490-5096-01
 ;;9002226.02101,"805,23490-5096-02 ",.01)
 ;;23490-5096-02
 ;;9002226.02101,"805,23490-5096-02 ",.02)
 ;;23490-5096-02
 ;;9002226.02101,"805,23490-5096-03 ",.01)
 ;;23490-5096-03
 ;;9002226.02101,"805,23490-5096-03 ",.02)
 ;;23490-5096-03
 ;;9002226.02101,"805,23490-5097-01 ",.01)
 ;;23490-5097-01
 ;;9002226.02101,"805,23490-5097-01 ",.02)
 ;;23490-5097-01
 ;;9002226.02101,"805,23490-5097-02 ",.01)
 ;;23490-5097-02
 ;;9002226.02101,"805,23490-5097-02 ",.02)
 ;;23490-5097-02
 ;;9002226.02101,"805,23490-5097-03 ",.01)
 ;;23490-5097-03
 ;;9002226.02101,"805,23490-5097-03 ",.02)
 ;;23490-5097-03
 ;;9002226.02101,"805,23490-5098-01 ",.01)
 ;;23490-5098-01
 ;;9002226.02101,"805,23490-5098-01 ",.02)
 ;;23490-5098-01
 ;;9002226.02101,"805,23490-5098-02 ",.01)
 ;;23490-5098-02
 ;;9002226.02101,"805,23490-5098-02 ",.02)
 ;;23490-5098-02
 ;;9002226.02101,"805,23490-5920-00 ",.01)
 ;;23490-5920-00
 ;;9002226.02101,"805,23490-5920-00 ",.02)
 ;;23490-5920-00
 ;;9002226.02101,"805,23490-5920-01 ",.01)
 ;;23490-5920-01
 ;;9002226.02101,"805,23490-5920-01 ",.02)
 ;;23490-5920-01
 ;;9002226.02101,"805,23490-5921-01 ",.01)
 ;;23490-5921-01
 ;;9002226.02101,"805,23490-5921-01 ",.02)
 ;;23490-5921-01
 ;;9002226.02101,"805,23490-5921-02 ",.01)
 ;;23490-5921-02
 ;;9002226.02101,"805,23490-5921-02 ",.02)
 ;;23490-5921-02
 ;;9002226.02101,"805,23490-6203-03 ",.01)
 ;;23490-6203-03
 ;;9002226.02101,"805,23490-6203-03 ",.02)
 ;;23490-6203-03
 ;;9002226.02101,"805,23490-6203-06 ",.01)
 ;;23490-6203-06
 ;;9002226.02101,"805,23490-6203-06 ",.02)
 ;;23490-6203-06
 ;;9002226.02101,"805,23490-6203-09 ",.01)
 ;;23490-6203-09
 ;;9002226.02101,"805,23490-6203-09 ",.02)
 ;;23490-6203-09
 ;;9002226.02101,"805,23490-6503-03 ",.01)
 ;;23490-6503-03
 ;;9002226.02101,"805,23490-6503-03 ",.02)
 ;;23490-6503-03
 ;;9002226.02101,"805,23490-6504-03 ",.01)
 ;;23490-6504-03
 ;;9002226.02101,"805,23490-6504-03 ",.02)
 ;;23490-6504-03
 ;;9002226.02101,"805,23490-6504-06 ",.01)
 ;;23490-6504-06
 ;;9002226.02101,"805,23490-6504-06 ",.02)
 ;;23490-6504-06
 ;;9002226.02101,"805,23490-6504-09 ",.01)
 ;;23490-6504-09
 ;;9002226.02101,"805,23490-6504-09 ",.02)
 ;;23490-6504-09
 ;;9002226.02101,"805,23490-7861-03 ",.01)
 ;;23490-7861-03
 ;;9002226.02101,"805,23490-7861-03 ",.02)
 ;;23490-7861-03
 ;;9002226.02101,"805,23490-9369-03 ",.01)
 ;;23490-9369-03
 ;;9002226.02101,"805,23490-9369-03 ",.02)
 ;;23490-9369-03
 ;;9002226.02101,"805,23490-9369-06 ",.01)
 ;;23490-9369-06
 ;;9002226.02101,"805,23490-9369-06 ",.02)
 ;;23490-9369-06