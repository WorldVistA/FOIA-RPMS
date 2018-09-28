BGP8ZY12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 22, 2018;
 ;;18.0;IHS CLINICAL REPORTING;**1**;NOV 21, 2017;Build 62
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,13668-0328-30 ",.01)
 ;;13668-0328-30
 ;;9002226.02101,"873,13668-0328-30 ",.02)
 ;;13668-0328-30
 ;;9002226.02101,"873,13668-0329-30 ",.01)
 ;;13668-0329-30
 ;;9002226.02101,"873,13668-0329-30 ",.02)
 ;;13668-0329-30
 ;;9002226.02101,"873,13668-0343-30 ",.01)
 ;;13668-0343-30
 ;;9002226.02101,"873,13668-0343-30 ",.02)
 ;;13668-0343-30
 ;;9002226.02101,"873,13668-0344-30 ",.01)
 ;;13668-0344-30
 ;;9002226.02101,"873,13668-0344-30 ",.02)
 ;;13668-0344-30
 ;;9002226.02101,"873,13668-0345-30 ",.01)
 ;;13668-0345-30
 ;;9002226.02101,"873,13668-0345-30 ",.02)
 ;;13668-0345-30
 ;;9002226.02101,"873,13668-0346-30 ",.01)
 ;;13668-0346-30
 ;;9002226.02101,"873,13668-0346-30 ",.02)
 ;;13668-0346-30
 ;;9002226.02101,"873,13668-0409-10 ",.01)
 ;;13668-0409-10
 ;;9002226.02101,"873,13668-0409-10 ",.02)
 ;;13668-0409-10
 ;;9002226.02101,"873,13668-0409-30 ",.01)
 ;;13668-0409-30
 ;;9002226.02101,"873,13668-0409-30 ",.02)
 ;;13668-0409-30
 ;;9002226.02101,"873,13668-0409-90 ",.01)
 ;;13668-0409-90
 ;;9002226.02101,"873,13668-0409-90 ",.02)
 ;;13668-0409-90
 ;;9002226.02101,"873,13811-0685-30 ",.01)
 ;;13811-0685-30
 ;;9002226.02101,"873,13811-0685-30 ",.02)
 ;;13811-0685-30
 ;;9002226.02101,"873,13811-0686-30 ",.01)
 ;;13811-0686-30
 ;;9002226.02101,"873,13811-0686-30 ",.02)
 ;;13811-0686-30
 ;;9002226.02101,"873,13811-0687-30 ",.01)
 ;;13811-0687-30
 ;;9002226.02101,"873,13811-0687-30 ",.02)
 ;;13811-0687-30
 ;;9002226.02101,"873,13811-0688-30 ",.01)
 ;;13811-0688-30
 ;;9002226.02101,"873,13811-0688-30 ",.02)
 ;;13811-0688-30
 ;;9002226.02101,"873,16571-0500-50 ",.01)
 ;;16571-0500-50
 ;;9002226.02101,"873,16571-0500-50 ",.02)
 ;;16571-0500-50
 ;;9002226.02101,"873,16571-0501-11 ",.01)
 ;;16571-0501-11
 ;;9002226.02101,"873,16571-0501-11 ",.02)
 ;;16571-0501-11
 ;;9002226.02101,"873,16571-0502-11 ",.01)
 ;;16571-0502-11
 ;;9002226.02101,"873,16571-0502-11 ",.02)
 ;;16571-0502-11
 ;;9002226.02101,"873,16590-0063-30 ",.01)
 ;;16590-0063-30
 ;;9002226.02101,"873,16590-0063-30 ",.02)
 ;;16590-0063-30
 ;;9002226.02101,"873,16714-0224-01 ",.01)
 ;;16714-0224-01
 ;;9002226.02101,"873,16714-0224-01 ",.02)
 ;;16714-0224-01
 ;;9002226.02101,"873,16714-0224-02 ",.01)
 ;;16714-0224-02
 ;;9002226.02101,"873,16714-0224-02 ",.02)
 ;;16714-0224-02
 ;;9002226.02101,"873,16714-0225-01 ",.01)
 ;;16714-0225-01
 ;;9002226.02101,"873,16714-0225-01 ",.02)
 ;;16714-0225-01
 ;;9002226.02101,"873,16714-0225-02 ",.01)
 ;;16714-0225-02
 ;;9002226.02101,"873,16714-0225-02 ",.02)
 ;;16714-0225-02
 ;;9002226.02101,"873,16714-0225-04 ",.01)
 ;;16714-0225-04
 ;;9002226.02101,"873,16714-0225-04 ",.02)
 ;;16714-0225-04
 ;;9002226.02101,"873,16714-0226-01 ",.01)
 ;;16714-0226-01
 ;;9002226.02101,"873,16714-0226-01 ",.02)
 ;;16714-0226-01
 ;;9002226.02101,"873,16714-0226-02 ",.01)
 ;;16714-0226-02
 ;;9002226.02101,"873,16714-0226-02 ",.02)
 ;;16714-0226-02
 ;;9002226.02101,"873,16714-0226-04 ",.01)
 ;;16714-0226-04
 ;;9002226.02101,"873,16714-0226-04 ",.02)
 ;;16714-0226-04
 ;;9002226.02101,"873,16714-0581-02 ",.01)
 ;;16714-0581-02
 ;;9002226.02101,"873,16714-0581-02 ",.02)
 ;;16714-0581-02
 ;;9002226.02101,"873,16714-0581-03 ",.01)
 ;;16714-0581-03
 ;;9002226.02101,"873,16714-0581-03 ",.02)
 ;;16714-0581-03
 ;;9002226.02101,"873,16714-0582-01 ",.01)
 ;;16714-0582-01
 ;;9002226.02101,"873,16714-0582-01 ",.02)
 ;;16714-0582-01
 ;;9002226.02101,"873,16714-0582-02 ",.01)
 ;;16714-0582-02
 ;;9002226.02101,"873,16714-0582-02 ",.02)
 ;;16714-0582-02
 ;;9002226.02101,"873,16714-0582-03 ",.01)
 ;;16714-0582-03
 ;;9002226.02101,"873,16714-0582-03 ",.02)
 ;;16714-0582-03
 ;;9002226.02101,"873,16714-0583-01 ",.01)
 ;;16714-0583-01
 ;;9002226.02101,"873,16714-0583-01 ",.02)
 ;;16714-0583-01
 ;;9002226.02101,"873,16714-0583-02 ",.01)
 ;;16714-0583-02
 ;;9002226.02101,"873,16714-0583-02 ",.02)
 ;;16714-0583-02
 ;;9002226.02101,"873,16714-0583-03 ",.01)
 ;;16714-0583-03
 ;;9002226.02101,"873,16714-0583-03 ",.02)
 ;;16714-0583-03
 ;;9002226.02101,"873,16729-0321-10 ",.01)
 ;;16729-0321-10
 ;;9002226.02101,"873,16729-0321-10 ",.02)
 ;;16729-0321-10
 ;;9002226.02101,"873,16729-0321-15 ",.01)
 ;;16729-0321-15
 ;;9002226.02101,"873,16729-0321-15 ",.02)
 ;;16729-0321-15
 ;;9002226.02101,"873,16729-0321-17 ",.01)
 ;;16729-0321-17
 ;;9002226.02101,"873,16729-0321-17 ",.02)
 ;;16729-0321-17
 ;;9002226.02101,"873,16729-0322-10 ",.01)
 ;;16729-0322-10
 ;;9002226.02101,"873,16729-0322-10 ",.02)
 ;;16729-0322-10
 ;;9002226.02101,"873,16729-0322-15 ",.01)
 ;;16729-0322-15
 ;;9002226.02101,"873,16729-0322-15 ",.02)
 ;;16729-0322-15
 ;;9002226.02101,"873,16729-0322-17 ",.01)
 ;;16729-0322-17
 ;;9002226.02101,"873,16729-0322-17 ",.02)
 ;;16729-0322-17
 ;;9002226.02101,"873,27241-0083-03 ",.01)
 ;;27241-0083-03
 ;;9002226.02101,"873,27241-0083-03 ",.02)
 ;;27241-0083-03
 ;;9002226.02101,"873,27241-0083-09 ",.01)
 ;;27241-0083-09
 ;;9002226.02101,"873,27241-0083-09 ",.02)
 ;;27241-0083-09
 ;;9002226.02101,"873,27241-0084-03 ",.01)
 ;;27241-0084-03
 ;;9002226.02101,"873,27241-0084-03 ",.02)
 ;;27241-0084-03
 ;;9002226.02101,"873,27241-0084-09 ",.01)
 ;;27241-0084-09
 ;;9002226.02101,"873,27241-0084-09 ",.02)
 ;;27241-0084-09
 ;;9002226.02101,"873,27241-0085-03 ",.01)
 ;;27241-0085-03
 ;;9002226.02101,"873,27241-0085-03 ",.02)
 ;;27241-0085-03
 ;;9002226.02101,"873,27241-0085-09 ",.01)
 ;;27241-0085-09
 ;;9002226.02101,"873,27241-0085-09 ",.02)
 ;;27241-0085-09
 ;;9002226.02101,"873,27241-0086-03 ",.01)
 ;;27241-0086-03
 ;;9002226.02101,"873,27241-0086-03 ",.02)
 ;;27241-0086-03
 ;;9002226.02101,"873,27241-0086-09 ",.01)
 ;;27241-0086-09
 ;;9002226.02101,"873,27241-0086-09 ",.02)
 ;;27241-0086-09
 ;;9002226.02101,"873,31722-0160-05 ",.01)
 ;;31722-0160-05
 ;;9002226.02101,"873,31722-0160-05 ",.02)
 ;;31722-0160-05
 ;;9002226.02101,"873,31722-0161-10 ",.01)
 ;;31722-0161-10
 ;;9002226.02101,"873,31722-0161-10 ",.02)
 ;;31722-0161-10
 ;;9002226.02101,"873,31722-0162-05 ",.01)
 ;;31722-0162-05
 ;;9002226.02101,"873,31722-0162-05 ",.02)
 ;;31722-0162-05
 ;;9002226.02101,"873,31722-0700-05 ",.01)
 ;;31722-0700-05
 ;;9002226.02101,"873,31722-0700-05 ",.02)
 ;;31722-0700-05
 ;;9002226.02101,"873,31722-0700-10 ",.01)
 ;;31722-0700-10
 ;;9002226.02101,"873,31722-0700-10 ",.02)
 ;;31722-0700-10
 ;;9002226.02101,"873,31722-0700-90 ",.01)
 ;;31722-0700-90
 ;;9002226.02101,"873,31722-0700-90 ",.02)
 ;;31722-0700-90
 ;;9002226.02101,"873,31722-0701-10 ",.01)
 ;;31722-0701-10
 ;;9002226.02101,"873,31722-0701-10 ",.02)
 ;;31722-0701-10
 ;;9002226.02101,"873,31722-0701-30 ",.01)
 ;;31722-0701-30
 ;;9002226.02101,"873,31722-0701-30 ",.02)
 ;;31722-0701-30
 ;;9002226.02101,"873,31722-0701-90 ",.01)
 ;;31722-0701-90
 ;;9002226.02101,"873,31722-0701-90 ",.02)
 ;;31722-0701-90
 ;;9002226.02101,"873,31722-0702-10 ",.01)
 ;;31722-0702-10
 ;;9002226.02101,"873,31722-0702-10 ",.02)
 ;;31722-0702-10
 ;;9002226.02101,"873,31722-0702-30 ",.01)
 ;;31722-0702-30
 ;;9002226.02101,"873,31722-0702-30 ",.02)
 ;;31722-0702-30
 ;;9002226.02101,"873,31722-0702-90 ",.01)
 ;;31722-0702-90
 ;;9002226.02101,"873,31722-0702-90 ",.02)
 ;;31722-0702-90
 ;;9002226.02101,"873,31722-0729-30 ",.01)
 ;;31722-0729-30
 ;;9002226.02101,"873,31722-0729-30 ",.02)
 ;;31722-0729-30
 ;;9002226.02101,"873,31722-0729-90 ",.01)
 ;;31722-0729-90
 ;;9002226.02101,"873,31722-0729-90 ",.02)
 ;;31722-0729-90
 ;;9002226.02101,"873,31722-0730-30 ",.01)
 ;;31722-0730-30
 ;;9002226.02101,"873,31722-0730-30 ",.02)
 ;;31722-0730-30
 ;;9002226.02101,"873,31722-0730-90 ",.01)
 ;;31722-0730-90
 ;;9002226.02101,"873,31722-0730-90 ",.02)
 ;;31722-0730-90
 ;;9002226.02101,"873,31722-0731-30 ",.01)
 ;;31722-0731-30
 ;;9002226.02101,"873,31722-0731-30 ",.02)
 ;;31722-0731-30
 ;;9002226.02101,"873,31722-0731-90 ",.01)
 ;;31722-0731-90
 ;;9002226.02101,"873,31722-0731-90 ",.02)
 ;;31722-0731-90
 ;;9002226.02101,"873,31722-0745-30 ",.01)
 ;;31722-0745-30
 ;;9002226.02101,"873,31722-0745-30 ",.02)
 ;;31722-0745-30
 ;;9002226.02101,"873,31722-0746-90 ",.01)
 ;;31722-0746-90
 ;;9002226.02101,"873,31722-0746-90 ",.02)
 ;;31722-0746-90
 ;;9002226.02101,"873,31722-0747-90 ",.01)
 ;;31722-0747-90
 ;;9002226.02101,"873,31722-0747-90 ",.02)
 ;;31722-0747-90
 ;;9002226.02101,"873,31722-0748-90 ",.01)
 ;;31722-0748-90
 ;;9002226.02101,"873,31722-0748-90 ",.02)
 ;;31722-0748-90
 ;;9002226.02101,"873,31722-0802-34 ",.01)
 ;;31722-0802-34
 ;;9002226.02101,"873,31722-0802-34 ",.02)
 ;;31722-0802-34
 ;;9002226.02101,"873,31722-0802-35 ",.01)
 ;;31722-0802-35
 ;;9002226.02101,"873,31722-0802-35 ",.02)
 ;;31722-0802-35
 ;;9002226.02101,"873,31722-0803-34 ",.01)
 ;;31722-0803-34
 ;;9002226.02101,"873,31722-0803-34 ",.02)
 ;;31722-0803-34
 ;;9002226.02101,"873,31722-0803-35 ",.01)
 ;;31722-0803-35
 ;;9002226.02101,"873,31722-0803-35 ",.02)
 ;;31722-0803-35
 ;;9002226.02101,"873,31722-0804-34 ",.01)
 ;;31722-0804-34
 ;;9002226.02101,"873,31722-0804-34 ",.02)
 ;;31722-0804-34
 ;;9002226.02101,"873,31722-0804-35 ",.01)
 ;;31722-0804-35
 ;;9002226.02101,"873,31722-0804-35 ",.02)
 ;;31722-0804-35
 ;;9002226.02101,"873,33342-0044-07 ",.01)
 ;;33342-0044-07
 ;;9002226.02101,"873,33342-0044-07 ",.02)
 ;;33342-0044-07
 ;;9002226.02101,"873,33342-0044-10 ",.01)
 ;;33342-0044-10
 ;;9002226.02101,"873,33342-0044-10 ",.02)
 ;;33342-0044-10
 ;;9002226.02101,"873,33342-0044-44 ",.01)
 ;;33342-0044-44
 ;;9002226.02101,"873,33342-0044-44 ",.02)
 ;;33342-0044-44
 ;;9002226.02101,"873,33342-0045-07 ",.01)
 ;;33342-0045-07
 ;;9002226.02101,"873,33342-0045-07 ",.02)
 ;;33342-0045-07
 ;;9002226.02101,"873,33342-0045-10 ",.01)
 ;;33342-0045-10
 ;;9002226.02101,"873,33342-0045-10 ",.02)
 ;;33342-0045-10
 ;;9002226.02101,"873,33342-0045-44 ",.01)
 ;;33342-0045-44
 ;;9002226.02101,"873,33342-0045-44 ",.02)
 ;;33342-0045-44
 ;;9002226.02101,"873,33342-0046-10 ",.01)
 ;;33342-0046-10
 ;;9002226.02101,"873,33342-0046-10 ",.02)
 ;;33342-0046-10
 ;;9002226.02101,"873,33342-0046-44 ",.01)
 ;;33342-0046-44
 ;;9002226.02101,"873,33342-0046-44 ",.02)
 ;;33342-0046-44
 ;;9002226.02101,"873,33342-0047-07 ",.01)
 ;;33342-0047-07
 ;;9002226.02101,"873,33342-0047-07 ",.02)
 ;;33342-0047-07
 ;;9002226.02101,"873,33342-0047-10 ",.01)
 ;;33342-0047-10
 ;;9002226.02101,"873,33342-0047-10 ",.02)
 ;;33342-0047-10
 ;;9002226.02101,"873,33342-0048-07 ",.01)
 ;;33342-0048-07
 ;;9002226.02101,"873,33342-0048-07 ",.02)
 ;;33342-0048-07
 ;;9002226.02101,"873,33342-0048-10 ",.01)
 ;;33342-0048-10
 ;;9002226.02101,"873,33342-0048-10 ",.02)
 ;;33342-0048-10
 ;;9002226.02101,"873,33342-0049-07 ",.01)
 ;;33342-0049-07
 ;;9002226.02101,"873,33342-0049-07 ",.02)
 ;;33342-0049-07
 ;;9002226.02101,"873,33342-0049-10 ",.01)
 ;;33342-0049-10
 ;;9002226.02101,"873,33342-0049-10 ",.02)
 ;;33342-0049-10
 ;;9002226.02101,"873,33342-0050-10 ",.01)
 ;;33342-0050-10
 ;;9002226.02101,"873,33342-0050-10 ",.02)
 ;;33342-0050-10
 ;;9002226.02101,"873,33342-0050-44 ",.01)
 ;;33342-0050-44
 ;;9002226.02101,"873,33342-0050-44 ",.02)
 ;;33342-0050-44
 ;;9002226.02101,"873,33342-0051-07 ",.01)
 ;;33342-0051-07
 ;;9002226.02101,"873,33342-0051-07 ",.02)
 ;;33342-0051-07
 ;;9002226.02101,"873,33342-0051-10 ",.01)
 ;;33342-0051-10
 ;;9002226.02101,"873,33342-0051-10 ",.02)
 ;;33342-0051-10
 ;;9002226.02101,"873,33342-0051-44 ",.01)
 ;;33342-0051-44
 ;;9002226.02101,"873,33342-0051-44 ",.02)
 ;;33342-0051-44
 ;;9002226.02101,"873,33342-0052-07 ",.01)
 ;;33342-0052-07
 ;;9002226.02101,"873,33342-0052-07 ",.02)
 ;;33342-0052-07
 ;;9002226.02101,"873,33342-0052-10 ",.01)
 ;;33342-0052-10
 ;;9002226.02101,"873,33342-0052-10 ",.02)
 ;;33342-0052-10