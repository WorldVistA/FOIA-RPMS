BGP61G15 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1220,35356-0511-30 ",.01)
 ;;35356-0511-30
 ;;9002226.02101,"1220,35356-0511-30 ",.02)
 ;;35356-0511-30
 ;;9002226.02101,"1220,35356-0739-10 ",.01)
 ;;35356-0739-10
 ;;9002226.02101,"1220,35356-0739-10 ",.02)
 ;;35356-0739-10
 ;;9002226.02101,"1220,35356-0740-10 ",.01)
 ;;35356-0740-10
 ;;9002226.02101,"1220,35356-0740-10 ",.02)
 ;;35356-0740-10
 ;;9002226.02101,"1220,35356-0774-30 ",.01)
 ;;35356-0774-30
 ;;9002226.02101,"1220,35356-0774-30 ",.02)
 ;;35356-0774-30
 ;;9002226.02101,"1220,35356-0774-60 ",.01)
 ;;35356-0774-60
 ;;9002226.02101,"1220,35356-0774-60 ",.02)
 ;;35356-0774-60
 ;;9002226.02101,"1220,35356-0858-30 ",.01)
 ;;35356-0858-30
 ;;9002226.02101,"1220,35356-0858-30 ",.02)
 ;;35356-0858-30
 ;;9002226.02101,"1220,35356-0858-60 ",.01)
 ;;35356-0858-60
 ;;9002226.02101,"1220,35356-0858-60 ",.02)
 ;;35356-0858-60
 ;;9002226.02101,"1220,35356-0866-60 ",.01)
 ;;35356-0866-60
 ;;9002226.02101,"1220,35356-0866-60 ",.02)
 ;;35356-0866-60
 ;;9002226.02101,"1220,35356-0907-30 ",.01)
 ;;35356-0907-30
 ;;9002226.02101,"1220,35356-0907-30 ",.02)
 ;;35356-0907-30
 ;;9002226.02101,"1220,35356-0907-90 ",.01)
 ;;35356-0907-90
 ;;9002226.02101,"1220,35356-0907-90 ",.02)
 ;;35356-0907-90
 ;;9002226.02101,"1220,35356-0915-30 ",.01)
 ;;35356-0915-30
 ;;9002226.02101,"1220,35356-0915-30 ",.02)
 ;;35356-0915-30
 ;;9002226.02101,"1220,35356-0917-30 ",.01)
 ;;35356-0917-30
 ;;9002226.02101,"1220,35356-0917-30 ",.02)
 ;;35356-0917-30
 ;;9002226.02101,"1220,35356-0947-30 ",.01)
 ;;35356-0947-30
 ;;9002226.02101,"1220,35356-0947-30 ",.02)
 ;;35356-0947-30
 ;;9002226.02101,"1220,35356-0952-30 ",.01)
 ;;35356-0952-30
 ;;9002226.02101,"1220,35356-0952-30 ",.02)
 ;;35356-0952-30
 ;;9002226.02101,"1220,35356-0960-30 ",.01)
 ;;35356-0960-30
 ;;9002226.02101,"1220,35356-0960-30 ",.02)
 ;;35356-0960-30
 ;;9002226.02101,"1220,35356-0960-60 ",.01)
 ;;35356-0960-60
 ;;9002226.02101,"1220,35356-0960-60 ",.02)
 ;;35356-0960-60
 ;;9002226.02101,"1220,35356-0960-90 ",.01)
 ;;35356-0960-90
 ;;9002226.02101,"1220,35356-0960-90 ",.02)
 ;;35356-0960-90
 ;;9002226.02101,"1220,35356-0965-30 ",.01)
 ;;35356-0965-30
 ;;9002226.02101,"1220,35356-0965-30 ",.02)
 ;;35356-0965-30
 ;;9002226.02101,"1220,35356-0965-60 ",.01)
 ;;35356-0965-60
 ;;9002226.02101,"1220,35356-0965-60 ",.02)
 ;;35356-0965-60
 ;;9002226.02101,"1220,35356-0965-90 ",.01)
 ;;35356-0965-90
 ;;9002226.02101,"1220,35356-0965-90 ",.02)
 ;;35356-0965-90
 ;;9002226.02101,"1220,35356-0971-30 ",.01)
 ;;35356-0971-30
 ;;9002226.02101,"1220,35356-0971-30 ",.02)
 ;;35356-0971-30
 ;;9002226.02101,"1220,35356-0971-60 ",.01)
 ;;35356-0971-60
 ;;9002226.02101,"1220,35356-0971-60 ",.02)
 ;;35356-0971-60
 ;;9002226.02101,"1220,35356-0971-90 ",.01)
 ;;35356-0971-90
 ;;9002226.02101,"1220,35356-0971-90 ",.02)
 ;;35356-0971-90
 ;;9002226.02101,"1220,42254-0072-30 ",.01)
 ;;42254-0072-30
 ;;9002226.02101,"1220,42254-0072-30 ",.02)
 ;;42254-0072-30
 ;;9002226.02101,"1220,42254-0073-30 ",.01)
 ;;42254-0073-30
 ;;9002226.02101,"1220,42254-0073-30 ",.02)
 ;;42254-0073-30
 ;;9002226.02101,"1220,42254-0074-30 ",.01)
 ;;42254-0074-30
 ;;9002226.02101,"1220,42254-0074-30 ",.02)
 ;;42254-0074-30
 ;;9002226.02101,"1220,42254-0095-30 ",.01)
 ;;42254-0095-30
 ;;9002226.02101,"1220,42254-0095-30 ",.02)
 ;;42254-0095-30
 ;;9002226.02101,"1220,42254-0095-90 ",.01)
 ;;42254-0095-90
 ;;9002226.02101,"1220,42254-0095-90 ",.02)
 ;;42254-0095-90
 ;;9002226.02101,"1220,42254-0398-30 ",.01)
 ;;42254-0398-30
 ;;9002226.02101,"1220,42254-0398-30 ",.02)
 ;;42254-0398-30
 ;;9002226.02101,"1220,42254-0421-30 ",.01)
 ;;42254-0421-30
 ;;9002226.02101,"1220,42254-0421-30 ",.02)
 ;;42254-0421-30
 ;;9002226.02101,"1220,42254-0429-30 ",.01)
 ;;42254-0429-30
 ;;9002226.02101,"1220,42254-0429-30 ",.02)
 ;;42254-0429-30
 ;;9002226.02101,"1220,42291-0126-30 ",.01)
 ;;42291-0126-30
 ;;9002226.02101,"1220,42291-0126-30 ",.02)
 ;;42291-0126-30
 ;;9002226.02101,"1220,42291-0127-30 ",.01)
 ;;42291-0127-30
 ;;9002226.02101,"1220,42291-0127-30 ",.02)
 ;;42291-0127-30
 ;;9002226.02101,"1220,42291-0128-30 ",.01)
 ;;42291-0128-30
 ;;9002226.02101,"1220,42291-0128-30 ",.02)
 ;;42291-0128-30
 ;;9002226.02101,"1220,42291-0129-30 ",.01)
 ;;42291-0129-30
 ;;9002226.02101,"1220,42291-0129-30 ",.02)
 ;;42291-0129-30
 ;;9002226.02101,"1220,42291-0236-90 ",.01)
 ;;42291-0236-90
 ;;9002226.02101,"1220,42291-0236-90 ",.02)
 ;;42291-0236-90
 ;;9002226.02101,"1220,42291-0237-90 ",.01)
 ;;42291-0237-90
 ;;9002226.02101,"1220,42291-0237-90 ",.02)
 ;;42291-0237-90
 ;;9002226.02101,"1220,42291-0238-90 ",.01)
 ;;42291-0238-90
 ;;9002226.02101,"1220,42291-0238-90 ",.02)
 ;;42291-0238-90
 ;;9002226.02101,"1220,42291-0239-90 ",.01)
 ;;42291-0239-90
 ;;9002226.02101,"1220,42291-0239-90 ",.02)
 ;;42291-0239-90
 ;;9002226.02101,"1220,42291-0286-10 ",.01)
 ;;42291-0286-10
 ;;9002226.02101,"1220,42291-0286-10 ",.02)
 ;;42291-0286-10
 ;;9002226.02101,"1220,42291-0286-90 ",.01)
 ;;42291-0286-90
 ;;9002226.02101,"1220,42291-0286-90 ",.02)
 ;;42291-0286-90
 ;;9002226.02101,"1220,42291-0287-10 ",.01)
 ;;42291-0287-10
 ;;9002226.02101,"1220,42291-0287-10 ",.02)
 ;;42291-0287-10
 ;;9002226.02101,"1220,42291-0287-90 ",.01)
 ;;42291-0287-90
 ;;9002226.02101,"1220,42291-0287-90 ",.02)
 ;;42291-0287-90
 ;;9002226.02101,"1220,42291-0288-10 ",.01)
 ;;42291-0288-10
 ;;9002226.02101,"1220,42291-0288-10 ",.02)
 ;;42291-0288-10
 ;;9002226.02101,"1220,42291-0288-90 ",.01)
 ;;42291-0288-90
 ;;9002226.02101,"1220,42291-0288-90 ",.02)
 ;;42291-0288-90
 ;;9002226.02101,"1220,42291-0640-90 ",.01)
 ;;42291-0640-90
 ;;9002226.02101,"1220,42291-0640-90 ",.02)
 ;;42291-0640-90
 ;;9002226.02101,"1220,42291-0641-90 ",.01)
 ;;42291-0641-90
 ;;9002226.02101,"1220,42291-0641-90 ",.02)
 ;;42291-0641-90
 ;;9002226.02101,"1220,42806-0055-05 ",.01)
 ;;42806-0055-05
 ;;9002226.02101,"1220,42806-0055-05 ",.02)
 ;;42806-0055-05
 ;;9002226.02101,"1220,42806-0055-09 ",.01)
 ;;42806-0055-09
 ;;9002226.02101,"1220,42806-0055-09 ",.02)
 ;;42806-0055-09
 ;;9002226.02101,"1220,42806-0055-10 ",.01)
 ;;42806-0055-10
 ;;9002226.02101,"1220,42806-0055-10 ",.02)
 ;;42806-0055-10
 ;;9002226.02101,"1220,42806-0056-05 ",.01)
 ;;42806-0056-05
 ;;9002226.02101,"1220,42806-0056-05 ",.02)
 ;;42806-0056-05
 ;;9002226.02101,"1220,42806-0056-09 ",.01)
 ;;42806-0056-09
 ;;9002226.02101,"1220,42806-0056-09 ",.02)
 ;;42806-0056-09
 ;;9002226.02101,"1220,42806-0056-10 ",.01)
 ;;42806-0056-10
 ;;9002226.02101,"1220,42806-0056-10 ",.02)
 ;;42806-0056-10
 ;;9002226.02101,"1220,42806-0057-05 ",.01)
 ;;42806-0057-05
 ;;9002226.02101,"1220,42806-0057-05 ",.02)
 ;;42806-0057-05
 ;;9002226.02101,"1220,42806-0057-09 ",.01)
 ;;42806-0057-09
 ;;9002226.02101,"1220,42806-0057-09 ",.02)
 ;;42806-0057-09
 ;;9002226.02101,"1220,42806-0057-10 ",.01)
 ;;42806-0057-10
 ;;9002226.02101,"1220,42806-0057-10 ",.02)
 ;;42806-0057-10
 ;;9002226.02101,"1220,42806-0263-01 ",.01)
 ;;42806-0263-01
 ;;9002226.02101,"1220,42806-0263-01 ",.02)
 ;;42806-0263-01
 ;;9002226.02101,"1220,42806-0264-01 ",.01)
 ;;42806-0264-01
 ;;9002226.02101,"1220,42806-0264-01 ",.02)
 ;;42806-0264-01
 ;;9002226.02101,"1220,42806-0501-01 ",.01)
 ;;42806-0501-01
 ;;9002226.02101,"1220,42806-0501-01 ",.02)
 ;;42806-0501-01
 ;;9002226.02101,"1220,42806-0501-05 ",.01)
 ;;42806-0501-05
 ;;9002226.02101,"1220,42806-0501-05 ",.02)
 ;;42806-0501-05
 ;;9002226.02101,"1220,42806-0501-09 ",.01)
 ;;42806-0501-09
 ;;9002226.02101,"1220,42806-0501-09 ",.02)
 ;;42806-0501-09
 ;;9002226.02101,"1220,42806-0502-01 ",.01)
 ;;42806-0502-01
 ;;9002226.02101,"1220,42806-0502-01 ",.02)
 ;;42806-0502-01
 ;;9002226.02101,"1220,42806-0502-05 ",.01)
 ;;42806-0502-05
 ;;9002226.02101,"1220,42806-0502-05 ",.02)
 ;;42806-0502-05
 ;;9002226.02101,"1220,42806-0502-09 ",.01)
 ;;42806-0502-09
 ;;9002226.02101,"1220,42806-0502-09 ",.02)
 ;;42806-0502-09
 ;;9002226.02101,"1220,43063-0011-01 ",.01)
 ;;43063-0011-01
 ;;9002226.02101,"1220,43063-0011-01 ",.02)
 ;;43063-0011-01
 ;;9002226.02101,"1220,43063-0041-30 ",.01)
 ;;43063-0041-30
 ;;9002226.02101,"1220,43063-0041-30 ",.02)
 ;;43063-0041-30
 ;;9002226.02101,"1220,43063-0041-90 ",.01)
 ;;43063-0041-90
 ;;9002226.02101,"1220,43063-0041-90 ",.02)
 ;;43063-0041-90
 ;;9002226.02101,"1220,43063-0171-14 ",.01)
 ;;43063-0171-14
 ;;9002226.02101,"1220,43063-0171-14 ",.02)
 ;;43063-0171-14
 ;;9002226.02101,"1220,43063-0232-30 ",.01)
 ;;43063-0232-30
 ;;9002226.02101,"1220,43063-0232-30 ",.02)
 ;;43063-0232-30
 ;;9002226.02101,"1220,43063-0232-60 ",.01)
 ;;43063-0232-60
 ;;9002226.02101,"1220,43063-0232-60 ",.02)
 ;;43063-0232-60
 ;;9002226.02101,"1220,43063-0233-60 ",.01)
 ;;43063-0233-60
 ;;9002226.02101,"1220,43063-0233-60 ",.02)
 ;;43063-0233-60
 ;;9002226.02101,"1220,43063-0234-60 ",.01)
 ;;43063-0234-60
 ;;9002226.02101,"1220,43063-0234-60 ",.02)
 ;;43063-0234-60
 ;;9002226.02101,"1220,43063-0402-60 ",.01)
 ;;43063-0402-60
 ;;9002226.02101,"1220,43063-0402-60 ",.02)
 ;;43063-0402-60
 ;;9002226.02101,"1220,43063-0404-30 ",.01)
 ;;43063-0404-30
 ;;9002226.02101,"1220,43063-0404-30 ",.02)
 ;;43063-0404-30
 ;;9002226.02101,"1220,43063-0404-90 ",.01)
 ;;43063-0404-90
 ;;9002226.02101,"1220,43063-0404-90 ",.02)
 ;;43063-0404-90
 ;;9002226.02101,"1220,43063-0561-30 ",.01)
 ;;43063-0561-30
 ;;9002226.02101,"1220,43063-0561-30 ",.02)
 ;;43063-0561-30
 ;;9002226.02101,"1220,43063-0562-30 ",.01)
 ;;43063-0562-30
 ;;9002226.02101,"1220,43063-0562-30 ",.02)
 ;;43063-0562-30
 ;;9002226.02101,"1220,43063-0564-30 ",.01)
 ;;43063-0564-30
 ;;9002226.02101,"1220,43063-0564-30 ",.02)
 ;;43063-0564-30
 ;;9002226.02101,"1220,43063-0564-90 ",.01)
 ;;43063-0564-90
 ;;9002226.02101,"1220,43063-0564-90 ",.02)
 ;;43063-0564-90
 ;;9002226.02101,"1220,43063-0571-90 ",.01)
 ;;43063-0571-90
 ;;9002226.02101,"1220,43063-0571-90 ",.02)
 ;;43063-0571-90
 ;;9002226.02101,"1220,43353-0130-30 ",.01)
 ;;43353-0130-30
 ;;9002226.02101,"1220,43353-0130-30 ",.02)
 ;;43353-0130-30
 ;;9002226.02101,"1220,43353-0130-60 ",.01)
 ;;43353-0130-60
 ;;9002226.02101,"1220,43353-0130-60 ",.02)
 ;;43353-0130-60
 ;;9002226.02101,"1220,43353-0130-80 ",.01)
 ;;43353-0130-80
 ;;9002226.02101,"1220,43353-0130-80 ",.02)
 ;;43353-0130-80
 ;;9002226.02101,"1220,43353-0256-30 ",.01)
 ;;43353-0256-30
 ;;9002226.02101,"1220,43353-0256-30 ",.02)
 ;;43353-0256-30
 ;;9002226.02101,"1220,43353-0256-45 ",.01)
 ;;43353-0256-45
 ;;9002226.02101,"1220,43353-0256-45 ",.02)
 ;;43353-0256-45
 ;;9002226.02101,"1220,43353-0256-53 ",.01)
 ;;43353-0256-53
 ;;9002226.02101,"1220,43353-0256-53 ",.02)
 ;;43353-0256-53
 ;;9002226.02101,"1220,43353-0256-60 ",.01)
 ;;43353-0256-60
 ;;9002226.02101,"1220,43353-0256-60 ",.02)
 ;;43353-0256-60
 ;;9002226.02101,"1220,43353-0295-30 ",.01)
 ;;43353-0295-30
 ;;9002226.02101,"1220,43353-0295-30 ",.02)
 ;;43353-0295-30
 ;;9002226.02101,"1220,43353-0295-45 ",.01)
 ;;43353-0295-45
 ;;9002226.02101,"1220,43353-0295-45 ",.02)
 ;;43353-0295-45
 ;;9002226.02101,"1220,43353-0295-53 ",.01)
 ;;43353-0295-53
 ;;9002226.02101,"1220,43353-0295-53 ",.02)
 ;;43353-0295-53
 ;;9002226.02101,"1220,43353-0311-30 ",.01)
 ;;43353-0311-30
 ;;9002226.02101,"1220,43353-0311-30 ",.02)
 ;;43353-0311-30
 ;;9002226.02101,"1220,43353-0311-60 ",.01)
 ;;43353-0311-60
 ;;9002226.02101,"1220,43353-0311-60 ",.02)
 ;;43353-0311-60
 ;;9002226.02101,"1220,43353-0311-80 ",.01)
 ;;43353-0311-80
 ;;9002226.02101,"1220,43353-0311-80 ",.02)
 ;;43353-0311-80
 ;;9002226.02101,"1220,43353-0534-30 ",.01)
 ;;43353-0534-30
 ;;9002226.02101,"1220,43353-0534-30 ",.02)
 ;;43353-0534-30
 ;;9002226.02101,"1220,43353-0534-45 ",.01)
 ;;43353-0534-45
 ;;9002226.02101,"1220,43353-0534-45 ",.02)
 ;;43353-0534-45
 ;;9002226.02101,"1220,43353-0534-60 ",.01)
 ;;43353-0534-60
 ;;9002226.02101,"1220,43353-0534-60 ",.02)
 ;;43353-0534-60
 ;;9002226.02101,"1220,43353-0545-45 ",.01)
 ;;43353-0545-45
 ;;9002226.02101,"1220,43353-0545-45 ",.02)
 ;;43353-0545-45
 ;;9002226.02101,"1220,43353-0551-30 ",.01)
 ;;43353-0551-30
 ;;9002226.02101,"1220,43353-0551-30 ",.02)
 ;;43353-0551-30
 ;;9002226.02101,"1220,43353-0599-60 ",.01)
 ;;43353-0599-60
 ;;9002226.02101,"1220,43353-0599-60 ",.02)
 ;;43353-0599-60
 ;;9002226.02101,"1220,43353-0599-80 ",.01)
 ;;43353-0599-80
 ;;9002226.02101,"1220,43353-0599-80 ",.02)
 ;;43353-0599-80
 ;;9002226.02101,"1220,43353-0600-30 ",.01)
 ;;43353-0600-30
 ;;9002226.02101,"1220,43353-0600-30 ",.02)
 ;;43353-0600-30
 ;;9002226.02101,"1220,43353-0600-60 ",.01)
 ;;43353-0600-60
 ;;9002226.02101,"1220,43353-0600-60 ",.02)
 ;;43353-0600-60