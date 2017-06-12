BGP61B5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1800,16590-0436-60 ",.01)
 ;;16590-0436-60
 ;;9002226.02101,"1800,16590-0436-60 ",.02)
 ;;16590-0436-60
 ;;9002226.02101,"1800,16590-0436-90 ",.01)
 ;;16590-0436-90
 ;;9002226.02101,"1800,16590-0436-90 ",.02)
 ;;16590-0436-90
 ;;9002226.02101,"1800,16590-0500-25 ",.01)
 ;;16590-0500-25
 ;;9002226.02101,"1800,16590-0500-25 ",.02)
 ;;16590-0500-25
 ;;9002226.02101,"1800,16590-0500-28 ",.01)
 ;;16590-0500-28
 ;;9002226.02101,"1800,16590-0500-28 ",.02)
 ;;16590-0500-28
 ;;9002226.02101,"1800,16590-0500-30 ",.01)
 ;;16590-0500-30
 ;;9002226.02101,"1800,16590-0500-30 ",.02)
 ;;16590-0500-30
 ;;9002226.02101,"1800,16590-0500-60 ",.01)
 ;;16590-0500-60
 ;;9002226.02101,"1800,16590-0500-60 ",.02)
 ;;16590-0500-60
 ;;9002226.02101,"1800,16590-0500-72 ",.01)
 ;;16590-0500-72
 ;;9002226.02101,"1800,16590-0500-72 ",.02)
 ;;16590-0500-72
 ;;9002226.02101,"1800,16590-0500-90 ",.01)
 ;;16590-0500-90
 ;;9002226.02101,"1800,16590-0500-90 ",.02)
 ;;16590-0500-90
 ;;9002226.02101,"1800,16590-0501-25 ",.01)
 ;;16590-0501-25
 ;;9002226.02101,"1800,16590-0501-25 ",.02)
 ;;16590-0501-25
 ;;9002226.02101,"1800,16590-0501-28 ",.01)
 ;;16590-0501-28
 ;;9002226.02101,"1800,16590-0501-28 ",.02)
 ;;16590-0501-28
 ;;9002226.02101,"1800,16590-0501-30 ",.01)
 ;;16590-0501-30
 ;;9002226.02101,"1800,16590-0501-30 ",.02)
 ;;16590-0501-30
 ;;9002226.02101,"1800,16590-0501-60 ",.01)
 ;;16590-0501-60
 ;;9002226.02101,"1800,16590-0501-60 ",.02)
 ;;16590-0501-60
 ;;9002226.02101,"1800,16590-0501-72 ",.01)
 ;;16590-0501-72
 ;;9002226.02101,"1800,16590-0501-72 ",.02)
 ;;16590-0501-72
 ;;9002226.02101,"1800,16590-0501-90 ",.01)
 ;;16590-0501-90
 ;;9002226.02101,"1800,16590-0501-90 ",.02)
 ;;16590-0501-90
 ;;9002226.02101,"1800,16590-0502-30 ",.01)
 ;;16590-0502-30
 ;;9002226.02101,"1800,16590-0502-30 ",.02)
 ;;16590-0502-30
 ;;9002226.02101,"1800,16590-0502-60 ",.01)
 ;;16590-0502-60
 ;;9002226.02101,"1800,16590-0502-60 ",.02)
 ;;16590-0502-60
 ;;9002226.02101,"1800,16590-0502-72 ",.01)
 ;;16590-0502-72
 ;;9002226.02101,"1800,16590-0502-72 ",.02)
 ;;16590-0502-72
 ;;9002226.02101,"1800,16590-0502-90 ",.01)
 ;;16590-0502-90
 ;;9002226.02101,"1800,16590-0502-90 ",.02)
 ;;16590-0502-90
 ;;9002226.02101,"1800,16590-0522-30 ",.01)
 ;;16590-0522-30
 ;;9002226.02101,"1800,16590-0522-30 ",.02)
 ;;16590-0522-30
 ;;9002226.02101,"1800,16590-0522-60 ",.01)
 ;;16590-0522-60
 ;;9002226.02101,"1800,16590-0522-60 ",.02)
 ;;16590-0522-60
 ;;9002226.02101,"1800,16590-0522-72 ",.01)
 ;;16590-0522-72
 ;;9002226.02101,"1800,16590-0522-72 ",.02)
 ;;16590-0522-72
 ;;9002226.02101,"1800,16590-0522-90 ",.01)
 ;;16590-0522-90
 ;;9002226.02101,"1800,16590-0522-90 ",.02)
 ;;16590-0522-90
 ;;9002226.02101,"1800,16590-0527-10 ",.01)
 ;;16590-0527-10
 ;;9002226.02101,"1800,16590-0527-10 ",.02)
 ;;16590-0527-10
 ;;9002226.02101,"1800,16590-0527-14 ",.01)
 ;;16590-0527-14
 ;;9002226.02101,"1800,16590-0527-14 ",.02)
 ;;16590-0527-14
 ;;9002226.02101,"1800,16590-0527-15 ",.01)
 ;;16590-0527-15
 ;;9002226.02101,"1800,16590-0527-15 ",.02)
 ;;16590-0527-15
 ;;9002226.02101,"1800,16590-0527-20 ",.01)
 ;;16590-0527-20
 ;;9002226.02101,"1800,16590-0527-20 ",.02)
 ;;16590-0527-20
 ;;9002226.02101,"1800,16590-0527-25 ",.01)
 ;;16590-0527-25
 ;;9002226.02101,"1800,16590-0527-25 ",.02)
 ;;16590-0527-25
 ;;9002226.02101,"1800,16590-0527-28 ",.01)
 ;;16590-0527-28
 ;;9002226.02101,"1800,16590-0527-28 ",.02)
 ;;16590-0527-28
 ;;9002226.02101,"1800,16590-0527-30 ",.01)
 ;;16590-0527-30
 ;;9002226.02101,"1800,16590-0527-30 ",.02)
 ;;16590-0527-30
 ;;9002226.02101,"1800,16590-0527-40 ",.01)
 ;;16590-0527-40
 ;;9002226.02101,"1800,16590-0527-40 ",.02)
 ;;16590-0527-40
 ;;9002226.02101,"1800,16590-0527-45 ",.01)
 ;;16590-0527-45
 ;;9002226.02101,"1800,16590-0527-45 ",.02)
 ;;16590-0527-45
 ;;9002226.02101,"1800,16590-0527-60 ",.01)
 ;;16590-0527-60
 ;;9002226.02101,"1800,16590-0527-60 ",.02)
 ;;16590-0527-60
 ;;9002226.02101,"1800,16590-0527-71 ",.01)
 ;;16590-0527-71
 ;;9002226.02101,"1800,16590-0527-71 ",.02)
 ;;16590-0527-71
 ;;9002226.02101,"1800,16590-0527-90 ",.01)
 ;;16590-0527-90
 ;;9002226.02101,"1800,16590-0527-90 ",.02)
 ;;16590-0527-90
 ;;9002226.02101,"1800,16590-0527-93 ",.01)
 ;;16590-0527-93
 ;;9002226.02101,"1800,16590-0527-93 ",.02)
 ;;16590-0527-93
 ;;9002226.02101,"1800,16590-0528-10 ",.01)
 ;;16590-0528-10
 ;;9002226.02101,"1800,16590-0528-10 ",.02)
 ;;16590-0528-10
 ;;9002226.02101,"1800,16590-0528-15 ",.01)
 ;;16590-0528-15
 ;;9002226.02101,"1800,16590-0528-15 ",.02)
 ;;16590-0528-15
 ;;9002226.02101,"1800,16590-0528-20 ",.01)
 ;;16590-0528-20
 ;;9002226.02101,"1800,16590-0528-20 ",.02)
 ;;16590-0528-20
 ;;9002226.02101,"1800,16590-0528-25 ",.01)
 ;;16590-0528-25
 ;;9002226.02101,"1800,16590-0528-25 ",.02)
 ;;16590-0528-25
 ;;9002226.02101,"1800,16590-0528-30 ",.01)
 ;;16590-0528-30
 ;;9002226.02101,"1800,16590-0528-30 ",.02)
 ;;16590-0528-30
 ;;9002226.02101,"1800,16590-0528-40 ",.01)
 ;;16590-0528-40
 ;;9002226.02101,"1800,16590-0528-40 ",.02)
 ;;16590-0528-40
 ;;9002226.02101,"1800,16590-0528-56 ",.01)
 ;;16590-0528-56
 ;;9002226.02101,"1800,16590-0528-56 ",.02)
 ;;16590-0528-56
 ;;9002226.02101,"1800,16590-0528-60 ",.01)
 ;;16590-0528-60
 ;;9002226.02101,"1800,16590-0528-60 ",.02)
 ;;16590-0528-60
 ;;9002226.02101,"1800,16590-0528-71 ",.01)
 ;;16590-0528-71
 ;;9002226.02101,"1800,16590-0528-71 ",.02)
 ;;16590-0528-71
 ;;9002226.02101,"1800,16590-0528-90 ",.01)
 ;;16590-0528-90
 ;;9002226.02101,"1800,16590-0528-90 ",.02)
 ;;16590-0528-90
 ;;9002226.02101,"1800,16590-0562-15 ",.01)
 ;;16590-0562-15
 ;;9002226.02101,"1800,16590-0562-15 ",.02)
 ;;16590-0562-15
 ;;9002226.02101,"1800,16590-0562-25 ",.01)
 ;;16590-0562-25
 ;;9002226.02101,"1800,16590-0562-25 ",.02)
 ;;16590-0562-25
 ;;9002226.02101,"1800,16590-0562-28 ",.01)
 ;;16590-0562-28
 ;;9002226.02101,"1800,16590-0562-28 ",.02)
 ;;16590-0562-28
 ;;9002226.02101,"1800,16590-0562-30 ",.01)
 ;;16590-0562-30
 ;;9002226.02101,"1800,16590-0562-30 ",.02)
 ;;16590-0562-30
 ;;9002226.02101,"1800,16590-0562-60 ",.01)
 ;;16590-0562-60
 ;;9002226.02101,"1800,16590-0562-60 ",.02)
 ;;16590-0562-60
 ;;9002226.02101,"1800,16590-0562-90 ",.01)
 ;;16590-0562-90
 ;;9002226.02101,"1800,16590-0562-90 ",.02)
 ;;16590-0562-90
 ;;9002226.02101,"1800,16590-0629-28 ",.01)
 ;;16590-0629-28
 ;;9002226.02101,"1800,16590-0629-28 ",.02)
 ;;16590-0629-28
 ;;9002226.02101,"1800,16590-0629-30 ",.01)
 ;;16590-0629-30
 ;;9002226.02101,"1800,16590-0629-30 ",.02)
 ;;16590-0629-30
 ;;9002226.02101,"1800,16590-0629-90 ",.01)
 ;;16590-0629-90
 ;;9002226.02101,"1800,16590-0629-90 ",.02)
 ;;16590-0629-90
 ;;9002226.02101,"1800,16590-0661-30 ",.01)
 ;;16590-0661-30
 ;;9002226.02101,"1800,16590-0661-30 ",.02)
 ;;16590-0661-30
 ;;9002226.02101,"1800,16590-0661-60 ",.01)
 ;;16590-0661-60
 ;;9002226.02101,"1800,16590-0661-60 ",.02)
 ;;16590-0661-60
 ;;9002226.02101,"1800,16590-0661-90 ",.01)
 ;;16590-0661-90
 ;;9002226.02101,"1800,16590-0661-90 ",.02)
 ;;16590-0661-90
 ;;9002226.02101,"1800,16590-0943-25 ",.01)
 ;;16590-0943-25
 ;;9002226.02101,"1800,16590-0943-25 ",.02)
 ;;16590-0943-25
 ;;9002226.02101,"1800,16590-0943-28 ",.01)
 ;;16590-0943-28
 ;;9002226.02101,"1800,16590-0943-28 ",.02)
 ;;16590-0943-28
 ;;9002226.02101,"1800,16590-0943-30 ",.01)
 ;;16590-0943-30
 ;;9002226.02101,"1800,16590-0943-30 ",.02)
 ;;16590-0943-30
 ;;9002226.02101,"1800,16590-0943-56 ",.01)
 ;;16590-0943-56
 ;;9002226.02101,"1800,16590-0943-56 ",.02)
 ;;16590-0943-56
 ;;9002226.02101,"1800,16590-0943-60 ",.01)
 ;;16590-0943-60
 ;;9002226.02101,"1800,16590-0943-60 ",.02)
 ;;16590-0943-60
 ;;9002226.02101,"1800,16590-0943-72 ",.01)
 ;;16590-0943-72
 ;;9002226.02101,"1800,16590-0943-72 ",.02)
 ;;16590-0943-72
 ;;9002226.02101,"1800,16590-0943-90 ",.01)
 ;;16590-0943-90
 ;;9002226.02101,"1800,16590-0943-90 ",.02)
 ;;16590-0943-90
 ;;9002226.02101,"1800,16590-0955-25 ",.01)
 ;;16590-0955-25
 ;;9002226.02101,"1800,16590-0955-25 ",.02)
 ;;16590-0955-25
 ;;9002226.02101,"1800,16590-0955-28 ",.01)
 ;;16590-0955-28
 ;;9002226.02101,"1800,16590-0955-28 ",.02)
 ;;16590-0955-28
 ;;9002226.02101,"1800,16590-0955-30 ",.01)
 ;;16590-0955-30
 ;;9002226.02101,"1800,16590-0955-30 ",.02)
 ;;16590-0955-30
 ;;9002226.02101,"1800,16590-0955-60 ",.01)
 ;;16590-0955-60
 ;;9002226.02101,"1800,16590-0955-60 ",.02)
 ;;16590-0955-60
 ;;9002226.02101,"1800,16590-0955-72 ",.01)
 ;;16590-0955-72
 ;;9002226.02101,"1800,16590-0955-72 ",.02)
 ;;16590-0955-72
 ;;9002226.02101,"1800,16590-0955-90 ",.01)
 ;;16590-0955-90
 ;;9002226.02101,"1800,16590-0955-90 ",.02)
 ;;16590-0955-90
 ;;9002226.02101,"1800,16714-0551-02 ",.01)
 ;;16714-0551-02
 ;;9002226.02101,"1800,16714-0551-02 ",.02)
 ;;16714-0551-02
 ;;9002226.02101,"1800,16714-0561-02 ",.01)
 ;;16714-0561-02
 ;;9002226.02101,"1800,16714-0561-02 ",.02)
 ;;16714-0561-02
 ;;9002226.02101,"1800,16714-0621-01 ",.01)
 ;;16714-0621-01
 ;;9002226.02101,"1800,16714-0621-01 ",.02)
 ;;16714-0621-01
 ;;9002226.02101,"1800,16714-0621-02 ",.01)
 ;;16714-0621-02
 ;;9002226.02101,"1800,16714-0621-02 ",.02)
 ;;16714-0621-02
 ;;9002226.02101,"1800,16714-0622-01 ",.01)
 ;;16714-0622-01
 ;;9002226.02101,"1800,16714-0622-01 ",.02)
 ;;16714-0622-01
 ;;9002226.02101,"1800,16714-0622-02 ",.01)
 ;;16714-0622-02
 ;;9002226.02101,"1800,16714-0622-02 ",.02)
 ;;16714-0622-02
 ;;9002226.02101,"1800,21695-0105-14 ",.01)
 ;;21695-0105-14
 ;;9002226.02101,"1800,21695-0105-14 ",.02)
 ;;21695-0105-14
 ;;9002226.02101,"1800,21695-0105-30 ",.01)
 ;;21695-0105-30
 ;;9002226.02101,"1800,21695-0105-30 ",.02)
 ;;21695-0105-30
 ;;9002226.02101,"1800,21695-0105-60 ",.01)
 ;;21695-0105-60
 ;;9002226.02101,"1800,21695-0105-60 ",.02)
 ;;21695-0105-60
 ;;9002226.02101,"1800,21695-0211-15 ",.01)
 ;;21695-0211-15
 ;;9002226.02101,"1800,21695-0211-15 ",.02)
 ;;21695-0211-15
 ;;9002226.02101,"1800,21695-0211-30 ",.01)
 ;;21695-0211-30
 ;;9002226.02101,"1800,21695-0211-30 ",.02)
 ;;21695-0211-30
 ;;9002226.02101,"1800,21695-0212-15 ",.01)
 ;;21695-0212-15
 ;;9002226.02101,"1800,21695-0212-15 ",.02)
 ;;21695-0212-15
 ;;9002226.02101,"1800,21695-0212-30 ",.01)
 ;;21695-0212-30
 ;;9002226.02101,"1800,21695-0212-30 ",.02)
 ;;21695-0212-30
 ;;9002226.02101,"1800,21695-0212-45 ",.01)
 ;;21695-0212-45
 ;;9002226.02101,"1800,21695-0212-45 ",.02)
 ;;21695-0212-45
 ;;9002226.02101,"1800,21695-0213-15 ",.01)
 ;;21695-0213-15
 ;;9002226.02101,"1800,21695-0213-15 ",.02)
 ;;21695-0213-15
 ;;9002226.02101,"1800,21695-0213-30 ",.01)
 ;;21695-0213-30
 ;;9002226.02101,"1800,21695-0213-30 ",.02)
 ;;21695-0213-30
 ;;9002226.02101,"1800,21695-0225-30 ",.01)
 ;;21695-0225-30
 ;;9002226.02101,"1800,21695-0225-30 ",.02)
 ;;21695-0225-30
 ;;9002226.02101,"1800,21695-0226-15 ",.01)
 ;;21695-0226-15
 ;;9002226.02101,"1800,21695-0226-15 ",.02)
 ;;21695-0226-15
 ;;9002226.02101,"1800,21695-0226-30 ",.01)
 ;;21695-0226-30
 ;;9002226.02101,"1800,21695-0226-30 ",.02)
 ;;21695-0226-30
 ;;9002226.02101,"1800,21695-0319-30 ",.01)
 ;;21695-0319-30
 ;;9002226.02101,"1800,21695-0319-30 ",.02)
 ;;21695-0319-30
 ;;9002226.02101,"1800,21695-0376-30 ",.01)
 ;;21695-0376-30
 ;;9002226.02101,"1800,21695-0376-30 ",.02)
 ;;21695-0376-30
 ;;9002226.02101,"1800,21695-0376-60 ",.01)
 ;;21695-0376-60
 ;;9002226.02101,"1800,21695-0376-60 ",.02)
 ;;21695-0376-60
 ;;9002226.02101,"1800,21695-0506-07 ",.01)
 ;;21695-0506-07
 ;;9002226.02101,"1800,21695-0506-07 ",.02)
 ;;21695-0506-07
 ;;9002226.02101,"1800,21695-0506-10 ",.01)
 ;;21695-0506-10
 ;;9002226.02101,"1800,21695-0506-10 ",.02)
 ;;21695-0506-10
 ;;9002226.02101,"1800,21695-0506-15 ",.01)
 ;;21695-0506-15