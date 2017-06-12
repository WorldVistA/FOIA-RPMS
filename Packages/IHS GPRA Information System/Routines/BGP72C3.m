BGP72C3 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1225,00555-0588-01 ",.01)
 ;;00555-0588-01
 ;;9002226.02101,"1225,00555-0588-01 ",.02)
 ;;00555-0588-01
 ;;9002226.02101,"1225,00555-0589-01 ",.01)
 ;;00555-0589-01
 ;;9002226.02101,"1225,00555-0589-01 ",.02)
 ;;00555-0589-01
 ;;9002226.02101,"1225,00555-0590-01 ",.01)
 ;;00555-0590-01
 ;;9002226.02101,"1225,00555-0590-01 ",.02)
 ;;00555-0590-01
 ;;9002226.02101,"1225,00597-0002-01 ",.01)
 ;;00597-0002-01
 ;;9002226.02101,"1225,00597-0002-01 ",.02)
 ;;00597-0002-01
 ;;9002226.02101,"1225,00597-0003-02 ",.01)
 ;;00597-0003-02
 ;;9002226.02101,"1225,00597-0003-02 ",.02)
 ;;00597-0003-02
 ;;9002226.02101,"1225,00597-0046-46 ",.01)
 ;;00597-0046-46
 ;;9002226.02101,"1225,00597-0046-46 ",.02)
 ;;00597-0046-46
 ;;9002226.02101,"1225,00597-0046-60 ",.01)
 ;;00597-0046-60
 ;;9002226.02101,"1225,00597-0046-60 ",.02)
 ;;00597-0046-60
 ;;9002226.02101,"1225,00597-0047-24 ",.01)
 ;;00597-0047-24
 ;;9002226.02101,"1225,00597-0047-24 ",.02)
 ;;00597-0047-24
 ;;9002226.02101,"1225,00597-0123-30 ",.01)
 ;;00597-0123-30
 ;;9002226.02101,"1225,00597-0123-30 ",.02)
 ;;00597-0123-30
 ;;9002226.02101,"1225,00597-0129-90 ",.01)
 ;;00597-0129-90
 ;;9002226.02101,"1225,00597-0129-90 ",.02)
 ;;00597-0129-90
 ;;9002226.02101,"1225,00781-5893-31 ",.01)
 ;;00781-5893-31
 ;;9002226.02101,"1225,00781-5893-31 ",.02)
 ;;00781-5893-31
 ;;9002226.02101,"1225,10135-0605-71 ",.01)
 ;;10135-0605-71
 ;;9002226.02101,"1225,10135-0605-71 ",.02)
 ;;10135-0605-71
 ;;9002226.02101,"1225,15584-0101-01 ",.01)
 ;;15584-0101-01
 ;;9002226.02101,"1225,15584-0101-01 ",.02)
 ;;15584-0101-01
 ;;9002226.02101,"1225,16590-0061-10 ",.01)
 ;;16590-0061-10
 ;;9002226.02101,"1225,16590-0061-10 ",.02)
 ;;16590-0061-10
 ;;9002226.02101,"1225,16590-0061-30 ",.01)
 ;;16590-0061-30
 ;;9002226.02101,"1225,16590-0061-30 ",.02)
 ;;16590-0061-30
 ;;9002226.02101,"1225,16590-0064-90 ",.01)
 ;;16590-0064-90
 ;;9002226.02101,"1225,16590-0064-90 ",.02)
 ;;16590-0064-90
 ;;9002226.02101,"1225,21695-0362-12 ",.01)
 ;;21695-0362-12
 ;;9002226.02101,"1225,21695-0362-12 ",.02)
 ;;21695-0362-12
 ;;9002226.02101,"1225,21695-0366-18 ",.01)
 ;;21695-0366-18
 ;;9002226.02101,"1225,21695-0366-18 ",.02)
 ;;21695-0366-18
 ;;9002226.02101,"1225,21695-0367-06 ",.01)
 ;;21695-0367-06
 ;;9002226.02101,"1225,21695-0367-06 ",.02)
 ;;21695-0367-06
 ;;9002226.02101,"1225,21695-0369-18 ",.01)
 ;;21695-0369-18
 ;;9002226.02101,"1225,21695-0369-18 ",.02)
 ;;21695-0369-18
 ;;9002226.02101,"1225,21695-0846-06 ",.01)
 ;;21695-0846-06
 ;;9002226.02101,"1225,21695-0846-06 ",.02)
 ;;21695-0846-06
 ;;9002226.02101,"1225,21695-0996-02 ",.01)
 ;;21695-0996-02
 ;;9002226.02101,"1225,21695-0996-02 ",.02)
 ;;21695-0996-02
 ;;9002226.02101,"1225,31722-0505-60 ",.01)
 ;;31722-0505-60
 ;;9002226.02101,"1225,31722-0505-60 ",.02)
 ;;31722-0505-60
 ;;9002226.02101,"1225,31722-0509-60 ",.01)
 ;;31722-0509-60
 ;;9002226.02101,"1225,31722-0509-60 ",.02)
 ;;31722-0509-60
 ;;9002226.02101,"1225,31722-0515-60 ",.01)
 ;;31722-0515-60
 ;;9002226.02101,"1225,31722-0515-60 ",.02)
 ;;31722-0515-60
 ;;9002226.02101,"1225,31722-0516-60 ",.01)
 ;;31722-0516-60
 ;;9002226.02101,"1225,31722-0516-60 ",.02)
 ;;31722-0516-60
 ;;9002226.02101,"1225,31722-0517-60 ",.01)
 ;;31722-0517-60
 ;;9002226.02101,"1225,31722-0517-60 ",.02)
 ;;31722-0517-60
 ;;9002226.02101,"1225,31722-0518-60 ",.01)
 ;;31722-0518-60
 ;;9002226.02101,"1225,31722-0518-60 ",.02)
 ;;31722-0518-60
 ;;9002226.02101,"1225,31722-0557-60 ",.01)
 ;;31722-0557-60
 ;;9002226.02101,"1225,31722-0557-60 ",.02)
 ;;31722-0557-60
 ;;9002226.02101,"1225,31722-0739-60 ",.01)
 ;;31722-0739-60
 ;;9002226.02101,"1225,31722-0739-60 ",.02)
 ;;31722-0739-60
 ;;9002226.02101,"1225,31722-0753-60 ",.01)
 ;;31722-0753-60
 ;;9002226.02101,"1225,31722-0753-60 ",.02)
 ;;31722-0753-60
 ;;9002226.02101,"1225,31722-0754-30 ",.01)
 ;;31722-0754-30
 ;;9002226.02101,"1225,31722-0754-30 ",.02)
 ;;31722-0754-30
 ;;9002226.02101,"1225,35356-0064-30 ",.01)
 ;;35356-0064-30
 ;;9002226.02101,"1225,35356-0064-30 ",.02)
 ;;35356-0064-30
 ;;9002226.02101,"1225,35356-0065-30 ",.01)
 ;;35356-0065-30
 ;;9002226.02101,"1225,35356-0065-30 ",.02)
 ;;35356-0065-30
 ;;9002226.02101,"1225,35356-0066-24 ",.01)
 ;;35356-0066-24
 ;;9002226.02101,"1225,35356-0066-24 ",.02)
 ;;35356-0066-24
 ;;9002226.02101,"1225,35356-0067-06 ",.01)
 ;;35356-0067-06
 ;;9002226.02101,"1225,35356-0067-06 ",.02)
 ;;35356-0067-06
 ;;9002226.02101,"1225,35356-0067-60 ",.01)
 ;;35356-0067-60
 ;;9002226.02101,"1225,35356-0067-60 ",.02)
 ;;35356-0067-60
 ;;9002226.02101,"1225,35356-0068-06 ",.01)
 ;;35356-0068-06
 ;;9002226.02101,"1225,35356-0068-06 ",.02)
 ;;35356-0068-06
 ;;9002226.02101,"1225,35356-0068-60 ",.01)
 ;;35356-0068-60
 ;;9002226.02101,"1225,35356-0068-60 ",.02)
 ;;35356-0068-60
 ;;9002226.02101,"1225,35356-0069-90 ",.01)
 ;;35356-0069-90
 ;;9002226.02101,"1225,35356-0069-90 ",.02)
 ;;35356-0069-90
 ;;9002226.02101,"1225,35356-0070-03 ",.01)
 ;;35356-0070-03
 ;;9002226.02101,"1225,35356-0070-03 ",.02)
 ;;35356-0070-03
 ;;9002226.02101,"1225,35356-0070-06 ",.01)
 ;;35356-0070-06
 ;;9002226.02101,"1225,35356-0070-06 ",.02)
 ;;35356-0070-06
 ;;9002226.02101,"1225,35356-0070-30 ",.01)
 ;;35356-0070-30
 ;;9002226.02101,"1225,35356-0070-30 ",.02)
 ;;35356-0070-30
 ;;9002226.02101,"1225,35356-0071-06 ",.01)
 ;;35356-0071-06
 ;;9002226.02101,"1225,35356-0071-06 ",.02)
 ;;35356-0071-06
 ;;9002226.02101,"1225,35356-0071-60 ",.01)
 ;;35356-0071-60
 ;;9002226.02101,"1225,35356-0071-60 ",.02)
 ;;35356-0071-60
 ;;9002226.02101,"1225,35356-0072-24 ",.01)
 ;;35356-0072-24
 ;;9002226.02101,"1225,35356-0072-24 ",.02)
 ;;35356-0072-24
 ;;9002226.02101,"1225,35356-0073-06 ",.01)
 ;;35356-0073-06
 ;;9002226.02101,"1225,35356-0073-06 ",.02)
 ;;35356-0073-06
 ;;9002226.02101,"1225,35356-0073-30 ",.01)
 ;;35356-0073-30
 ;;9002226.02101,"1225,35356-0073-30 ",.02)
 ;;35356-0073-30
 ;;9002226.02101,"1225,35356-0074-60 ",.01)
 ;;35356-0074-60
 ;;9002226.02101,"1225,35356-0074-60 ",.02)
 ;;35356-0074-60
 ;;9002226.02101,"1225,35356-0075-06 ",.01)
 ;;35356-0075-06
 ;;9002226.02101,"1225,35356-0075-06 ",.02)
 ;;35356-0075-06
 ;;9002226.02101,"1225,35356-0075-60 ",.01)
 ;;35356-0075-60
 ;;9002226.02101,"1225,35356-0075-60 ",.02)
 ;;35356-0075-60
 ;;9002226.02101,"1225,35356-0110-06 ",.01)
 ;;35356-0110-06
 ;;9002226.02101,"1225,35356-0110-06 ",.02)
 ;;35356-0110-06
 ;;9002226.02101,"1225,35356-0110-60 ",.01)
 ;;35356-0110-60
 ;;9002226.02101,"1225,35356-0110-60 ",.02)
 ;;35356-0110-60
 ;;9002226.02101,"1225,35356-0111-60 ",.01)
 ;;35356-0111-60
 ;;9002226.02101,"1225,35356-0111-60 ",.02)
 ;;35356-0111-60
 ;;9002226.02101,"1225,35356-0112-01 ",.01)
 ;;35356-0112-01
 ;;9002226.02101,"1225,35356-0112-01 ",.02)
 ;;35356-0112-01
 ;;9002226.02101,"1225,35356-0112-30 ",.01)
 ;;35356-0112-30
 ;;9002226.02101,"1225,35356-0112-30 ",.02)
 ;;35356-0112-30
 ;;9002226.02101,"1225,35356-0114-06 ",.01)
 ;;35356-0114-06
 ;;9002226.02101,"1225,35356-0114-06 ",.02)
 ;;35356-0114-06
 ;;9002226.02101,"1225,35356-0114-30 ",.01)
 ;;35356-0114-30
 ;;9002226.02101,"1225,35356-0114-30 ",.02)
 ;;35356-0114-30
 ;;9002226.02101,"1225,35356-0115-06 ",.01)
 ;;35356-0115-06
 ;;9002226.02101,"1225,35356-0115-06 ",.02)
 ;;35356-0115-06
 ;;9002226.02101,"1225,35356-0115-30 ",.01)
 ;;35356-0115-30
 ;;9002226.02101,"1225,35356-0115-30 ",.02)
 ;;35356-0115-30
 ;;9002226.02101,"1225,35356-0116-06 ",.01)
 ;;35356-0116-06
 ;;9002226.02101,"1225,35356-0116-06 ",.02)
 ;;35356-0116-06
 ;;9002226.02101,"1225,35356-0116-60 ",.01)
 ;;35356-0116-60
 ;;9002226.02101,"1225,35356-0116-60 ",.02)
 ;;35356-0116-60
 ;;9002226.02101,"1225,35356-0117-01 ",.01)
 ;;35356-0117-01
 ;;9002226.02101,"1225,35356-0117-01 ",.02)
 ;;35356-0117-01
 ;;9002226.02101,"1225,35356-0138-30 ",.01)
 ;;35356-0138-30
 ;;9002226.02101,"1225,35356-0138-30 ",.02)
 ;;35356-0138-30
 ;;9002226.02101,"1225,35356-0139-18 ",.01)
 ;;35356-0139-18
 ;;9002226.02101,"1225,35356-0139-18 ",.02)
 ;;35356-0139-18
 ;;9002226.02101,"1225,35356-0139-60 ",.01)
 ;;35356-0139-60
 ;;9002226.02101,"1225,35356-0139-60 ",.02)
 ;;35356-0139-60
 ;;9002226.02101,"1225,35356-0186-30 ",.01)
 ;;35356-0186-30
 ;;9002226.02101,"1225,35356-0186-30 ",.02)
 ;;35356-0186-30
 ;;9002226.02101,"1225,35356-0205-30 ",.01)
 ;;35356-0205-30
 ;;9002226.02101,"1225,35356-0205-30 ",.02)
 ;;35356-0205-30
 ;;9002226.02101,"1225,35356-0207-60 ",.01)
 ;;35356-0207-60
 ;;9002226.02101,"1225,35356-0207-60 ",.02)
 ;;35356-0207-60
 ;;9002226.02101,"1225,35356-0208-60 ",.01)
 ;;35356-0208-60
 ;;9002226.02101,"1225,35356-0208-60 ",.02)
 ;;35356-0208-60
 ;;9002226.02101,"1225,35356-0209-60 ",.01)
 ;;35356-0209-60
 ;;9002226.02101,"1225,35356-0209-60 ",.02)
 ;;35356-0209-60
 ;;9002226.02101,"1225,35356-0259-30 ",.01)
 ;;35356-0259-30
 ;;9002226.02101,"1225,35356-0259-30 ",.02)
 ;;35356-0259-30
 ;;9002226.02101,"1225,35356-0284-60 ",.01)
 ;;35356-0284-60
 ;;9002226.02101,"1225,35356-0284-60 ",.02)
 ;;35356-0284-60
 ;;9002226.02101,"1225,35356-0285-60 ",.01)
 ;;35356-0285-60
 ;;9002226.02101,"1225,35356-0285-60 ",.02)
 ;;35356-0285-60
 ;;9002226.02101,"1225,42291-0363-60 ",.01)
 ;;42291-0363-60
 ;;9002226.02101,"1225,42291-0363-60 ",.02)
 ;;42291-0363-60
 ;;9002226.02101,"1225,42799-0113-01 ",.01)
 ;;42799-0113-01
 ;;9002226.02101,"1225,42799-0113-01 ",.02)
 ;;42799-0113-01
 ;;9002226.02101,"1225,42799-0403-01 ",.01)
 ;;42799-0403-01
 ;;9002226.02101,"1225,42799-0403-01 ",.02)
 ;;42799-0403-01
 ;;9002226.02101,"1225,42799-0404-01 ",.01)
 ;;42799-0404-01
 ;;9002226.02101,"1225,42799-0404-01 ",.02)
 ;;42799-0404-01
 ;;9002226.02101,"1225,43063-0346-06 ",.01)
 ;;43063-0346-06
 ;;9002226.02101,"1225,43063-0346-06 ",.02)
 ;;43063-0346-06
 ;;9002226.02101,"1225,47781-0100-60 ",.01)
 ;;47781-0100-60
 ;;9002226.02101,"1225,47781-0100-60 ",.02)
 ;;47781-0100-60
 ;;9002226.02101,"1225,47781-0317-30 ",.01)
 ;;47781-0317-30
 ;;9002226.02101,"1225,47781-0317-30 ",.02)
 ;;47781-0317-30
 ;;9002226.02101,"1225,49702-0202-18 ",.01)
 ;;49702-0202-18
 ;;9002226.02101,"1225,49702-0202-18 ",.02)
 ;;49702-0202-18
 ;;9002226.02101,"1225,49702-0202-29 ",.01)
 ;;49702-0202-29
 ;;9002226.02101,"1225,49702-0202-29 ",.02)
 ;;49702-0202-29
 ;;9002226.02101,"1225,49702-0203-18 ",.01)
 ;;49702-0203-18
 ;;9002226.02101,"1225,49702-0203-18 ",.02)
 ;;49702-0203-18
 ;;9002226.02101,"1225,49702-0204-13 ",.01)
 ;;49702-0204-13
 ;;9002226.02101,"1225,49702-0204-13 ",.02)
 ;;49702-0204-13
 ;;9002226.02101,"1225,49702-0205-48 ",.01)
 ;;49702-0205-48
 ;;9002226.02101,"1225,49702-0205-48 ",.02)
 ;;49702-0205-48
 ;;9002226.02101,"1225,49702-0206-13 ",.01)
 ;;49702-0206-13
 ;;9002226.02101,"1225,49702-0206-13 ",.02)
 ;;49702-0206-13
 ;;9002226.02101,"1225,49702-0207-18 ",.01)
 ;;49702-0207-18
 ;;9002226.02101,"1225,49702-0207-18 ",.02)
 ;;49702-0207-18
 ;;9002226.02101,"1225,49702-0208-53 ",.01)
 ;;49702-0208-53
 ;;9002226.02101,"1225,49702-0208-53 ",.02)
 ;;49702-0208-53
 ;;9002226.02101,"1225,49702-0209-24 ",.01)
 ;;49702-0209-24
 ;;9002226.02101,"1225,49702-0209-24 ",.02)
 ;;49702-0209-24
 ;;9002226.02101,"1225,49702-0210-17 ",.01)
 ;;49702-0210-17
 ;;9002226.02101,"1225,49702-0210-17 ",.02)
 ;;49702-0210-17
 ;;9002226.02101,"1225,49702-0211-20 ",.01)
 ;;49702-0211-20
 ;;9002226.02101,"1225,49702-0211-20 ",.02)
 ;;49702-0211-20
 ;;9002226.02101,"1225,49702-0212-48 ",.01)
 ;;49702-0212-48
 ;;9002226.02101,"1225,49702-0212-48 ",.02)
 ;;49702-0212-48
 ;;9002226.02101,"1225,49702-0214-18 ",.01)
 ;;49702-0214-18
 ;;9002226.02101,"1225,49702-0214-18 ",.02)
 ;;49702-0214-18
 ;;9002226.02101,"1225,49702-0215-18 ",.01)
 ;;49702-0215-18