BGP62Z40 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,51079-0993-01 ",.01)
 ;;51079-0993-01
 ;;9002226.02101,"869,51079-0993-01 ",.02)
 ;;51079-0993-01
 ;;9002226.02101,"869,51079-0993-20 ",.01)
 ;;51079-0993-20
 ;;9002226.02101,"869,51079-0993-20 ",.02)
 ;;51079-0993-20
 ;;9002226.02101,"869,51079-0997-01 ",.01)
 ;;51079-0997-01
 ;;9002226.02101,"869,51079-0997-01 ",.02)
 ;;51079-0997-01
 ;;9002226.02101,"869,51079-0997-20 ",.01)
 ;;51079-0997-20
 ;;9002226.02101,"869,51079-0997-20 ",.02)
 ;;51079-0997-20
 ;;9002226.02101,"869,51138-0093-30 ",.01)
 ;;51138-0093-30
 ;;9002226.02101,"869,51138-0093-30 ",.02)
 ;;51138-0093-30
 ;;9002226.02101,"869,51138-0094-30 ",.01)
 ;;51138-0094-30
 ;;9002226.02101,"869,51138-0094-30 ",.02)
 ;;51138-0094-30
 ;;9002226.02101,"869,51138-0095-30 ",.01)
 ;;51138-0095-30
 ;;9002226.02101,"869,51138-0095-30 ",.02)
 ;;51138-0095-30
 ;;9002226.02101,"869,51285-0538-02 ",.01)
 ;;51285-0538-02
 ;;9002226.02101,"869,51285-0538-02 ",.02)
 ;;51285-0538-02
 ;;9002226.02101,"869,51285-0539-02 ",.01)
 ;;51285-0539-02
 ;;9002226.02101,"869,51285-0539-02 ",.02)
 ;;51285-0539-02
 ;;9002226.02101,"869,51285-0554-02 ",.01)
 ;;51285-0554-02
 ;;9002226.02101,"869,51285-0554-02 ",.02)
 ;;51285-0554-02
 ;;9002226.02101,"869,51285-0594-02 ",.01)
 ;;51285-0594-02
 ;;9002226.02101,"869,51285-0594-02 ",.02)
 ;;51285-0594-02
 ;;9002226.02101,"869,51285-0595-02 ",.01)
 ;;51285-0595-02
 ;;9002226.02101,"869,51285-0595-02 ",.02)
 ;;51285-0595-02
 ;;9002226.02101,"869,51285-0910-04 ",.01)
 ;;51285-0910-04
 ;;9002226.02101,"869,51285-0910-04 ",.02)
 ;;51285-0910-04
 ;;9002226.02101,"869,51285-0911-04 ",.01)
 ;;51285-0911-04
 ;;9002226.02101,"869,51285-0911-04 ",.02)
 ;;51285-0911-04
 ;;9002226.02101,"869,51285-0912-04 ",.01)
 ;;51285-0912-04
 ;;9002226.02101,"869,51285-0912-04 ",.02)
 ;;51285-0912-04
 ;;9002226.02101,"869,51655-0148-51 ",.01)
 ;;51655-0148-51
 ;;9002226.02101,"869,51655-0148-51 ",.02)
 ;;51655-0148-51
 ;;9002226.02101,"869,51655-0148-77 ",.01)
 ;;51655-0148-77
 ;;9002226.02101,"869,51655-0148-77 ",.02)
 ;;51655-0148-77
 ;;9002226.02101,"869,51655-0223-51 ",.01)
 ;;51655-0223-51
 ;;9002226.02101,"869,51655-0223-51 ",.02)
 ;;51655-0223-51
 ;;9002226.02101,"869,51655-0662-24 ",.01)
 ;;51655-0662-24
 ;;9002226.02101,"869,51655-0662-24 ",.02)
 ;;51655-0662-24
 ;;9002226.02101,"869,51672-1348-01 ",.01)
 ;;51672-1348-01
 ;;9002226.02101,"869,51672-1348-01 ",.02)
 ;;51672-1348-01
 ;;9002226.02101,"869,51672-4001-02 ",.01)
 ;;51672-4001-02
 ;;9002226.02101,"869,51672-4001-02 ",.02)
 ;;51672-4001-02
 ;;9002226.02101,"869,51672-4001-05 ",.01)
 ;;51672-4001-05
 ;;9002226.02101,"869,51672-4001-05 ",.02)
 ;;51672-4001-05
 ;;9002226.02101,"869,51672-4001-06 ",.01)
 ;;51672-4001-06
 ;;9002226.02101,"869,51672-4001-06 ",.02)
 ;;51672-4001-06
 ;;9002226.02101,"869,51672-4002-02 ",.01)
 ;;51672-4002-02
 ;;9002226.02101,"869,51672-4002-02 ",.02)
 ;;51672-4002-02
 ;;9002226.02101,"869,51672-4002-05 ",.01)
 ;;51672-4002-05
 ;;9002226.02101,"869,51672-4002-05 ",.02)
 ;;51672-4002-05
 ;;9002226.02101,"869,51672-4002-06 ",.01)
 ;;51672-4002-06
 ;;9002226.02101,"869,51672-4002-06 ",.02)
 ;;51672-4002-06
 ;;9002226.02101,"869,51672-4003-02 ",.01)
 ;;51672-4003-02
 ;;9002226.02101,"869,51672-4003-02 ",.02)
 ;;51672-4003-02
 ;;9002226.02101,"869,51672-4003-05 ",.01)
 ;;51672-4003-05
 ;;9002226.02101,"869,51672-4003-05 ",.02)
 ;;51672-4003-05
 ;;9002226.02101,"869,51672-4003-06 ",.01)
 ;;51672-4003-06
 ;;9002226.02101,"869,51672-4003-06 ",.02)
 ;;51672-4003-06
 ;;9002226.02101,"869,51672-4004-02 ",.01)
 ;;51672-4004-02
 ;;9002226.02101,"869,51672-4004-02 ",.02)
 ;;51672-4004-02
 ;;9002226.02101,"869,51672-4004-05 ",.01)
 ;;51672-4004-05
 ;;9002226.02101,"869,51672-4004-05 ",.02)
 ;;51672-4004-05
 ;;9002226.02101,"869,51672-4004-06 ",.01)
 ;;51672-4004-06
 ;;9002226.02101,"869,51672-4004-06 ",.02)
 ;;51672-4004-06
 ;;9002226.02101,"869,51672-4011-01 ",.01)
 ;;51672-4011-01
 ;;9002226.02101,"869,51672-4011-01 ",.02)
 ;;51672-4011-01
 ;;9002226.02101,"869,51672-4011-05 ",.01)
 ;;51672-4011-05
 ;;9002226.02101,"869,51672-4011-05 ",.02)
 ;;51672-4011-05
 ;;9002226.02101,"869,51672-4011-06 ",.01)
 ;;51672-4011-06
 ;;9002226.02101,"869,51672-4011-06 ",.02)
 ;;51672-4011-06
 ;;9002226.02101,"869,51672-4012-01 ",.01)
 ;;51672-4012-01
 ;;9002226.02101,"869,51672-4012-01 ",.02)
 ;;51672-4012-01
 ;;9002226.02101,"869,51672-4012-05 ",.01)
 ;;51672-4012-05
 ;;9002226.02101,"869,51672-4012-05 ",.02)
 ;;51672-4012-05
 ;;9002226.02101,"869,51672-4012-06 ",.01)
 ;;51672-4012-06
 ;;9002226.02101,"869,51672-4012-06 ",.02)
 ;;51672-4012-06
 ;;9002226.02101,"869,51672-4013-01 ",.01)
 ;;51672-4013-01
 ;;9002226.02101,"869,51672-4013-01 ",.02)
 ;;51672-4013-01
 ;;9002226.02101,"869,51672-4013-05 ",.01)
 ;;51672-4013-05
 ;;9002226.02101,"869,51672-4013-05 ",.02)
 ;;51672-4013-05
 ;;9002226.02101,"869,51672-4013-06 ",.01)
 ;;51672-4013-06
 ;;9002226.02101,"869,51672-4013-06 ",.02)
 ;;51672-4013-06
 ;;9002226.02101,"869,51991-0747-10 ",.01)
 ;;51991-0747-10
 ;;9002226.02101,"869,51991-0747-10 ",.02)
 ;;51991-0747-10
 ;;9002226.02101,"869,51991-0747-90 ",.01)
 ;;51991-0747-90
 ;;9002226.02101,"869,51991-0747-90 ",.02)
 ;;51991-0747-90
 ;;9002226.02101,"869,51991-0748-10 ",.01)
 ;;51991-0748-10
 ;;9002226.02101,"869,51991-0748-10 ",.02)
 ;;51991-0748-10
 ;;9002226.02101,"869,51991-0748-90 ",.01)
 ;;51991-0748-90
 ;;9002226.02101,"869,51991-0748-90 ",.02)
 ;;51991-0748-90
 ;;9002226.02101,"869,52152-0293-08 ",.01)
 ;;52152-0293-08
 ;;9002226.02101,"869,52152-0293-08 ",.02)
 ;;52152-0293-08
 ;;9002226.02101,"869,52152-0293-30 ",.01)
 ;;52152-0293-30
 ;;9002226.02101,"869,52152-0293-30 ",.02)
 ;;52152-0293-30
 ;;9002226.02101,"869,52152-0294-08 ",.01)
 ;;52152-0294-08
 ;;9002226.02101,"869,52152-0294-08 ",.02)
 ;;52152-0294-08
 ;;9002226.02101,"869,52152-0294-30 ",.01)
 ;;52152-0294-30
 ;;9002226.02101,"869,52152-0294-30 ",.02)
 ;;52152-0294-30
 ;;9002226.02101,"869,52152-0341-02 ",.01)
 ;;52152-0341-02
 ;;9002226.02101,"869,52152-0341-02 ",.02)
 ;;52152-0341-02
 ;;9002226.02101,"869,52152-0342-02 ",.01)
 ;;52152-0342-02
 ;;9002226.02101,"869,52152-0342-02 ",.02)
 ;;52152-0342-02
 ;;9002226.02101,"869,52152-0342-05 ",.01)
 ;;52152-0342-05
 ;;9002226.02101,"869,52152-0342-05 ",.02)
 ;;52152-0342-05
 ;;9002226.02101,"869,52152-0343-02 ",.01)
 ;;52152-0343-02
 ;;9002226.02101,"869,52152-0343-02 ",.02)
 ;;52152-0343-02
 ;;9002226.02101,"869,52152-0343-05 ",.01)
 ;;52152-0343-05
 ;;9002226.02101,"869,52152-0343-05 ",.02)
 ;;52152-0343-05
 ;;9002226.02101,"869,52152-0344-02 ",.01)
 ;;52152-0344-02
 ;;9002226.02101,"869,52152-0344-02 ",.02)
 ;;52152-0344-02
 ;;9002226.02101,"869,52152-0345-02 ",.01)
 ;;52152-0345-02
 ;;9002226.02101,"869,52152-0345-02 ",.02)
 ;;52152-0345-02
 ;;9002226.02101,"869,52152-0345-04 ",.01)
 ;;52152-0345-04
 ;;9002226.02101,"869,52152-0345-04 ",.02)
 ;;52152-0345-04
 ;;9002226.02101,"869,52152-0346-50 ",.01)
 ;;52152-0346-50
 ;;9002226.02101,"869,52152-0346-50 ",.02)
 ;;52152-0346-50
 ;;9002226.02101,"869,52959-0008-02 ",.01)
 ;;52959-0008-02
 ;;9002226.02101,"869,52959-0008-02 ",.02)
 ;;52959-0008-02
 ;;9002226.02101,"869,52959-0008-15 ",.01)
 ;;52959-0008-15
 ;;9002226.02101,"869,52959-0008-15 ",.02)
 ;;52959-0008-15
 ;;9002226.02101,"869,52959-0008-30 ",.01)
 ;;52959-0008-30
 ;;9002226.02101,"869,52959-0008-30 ",.02)
 ;;52959-0008-30
 ;;9002226.02101,"869,52959-0008-40 ",.01)
 ;;52959-0008-40
 ;;9002226.02101,"869,52959-0008-40 ",.02)
 ;;52959-0008-40
 ;;9002226.02101,"869,52959-0008-60 ",.01)
 ;;52959-0008-60
 ;;9002226.02101,"869,52959-0008-60 ",.02)
 ;;52959-0008-60
 ;;9002226.02101,"869,52959-0008-90 ",.01)
 ;;52959-0008-90
 ;;9002226.02101,"869,52959-0008-90 ",.02)
 ;;52959-0008-90
 ;;9002226.02101,"869,52959-0010-00 ",.01)
 ;;52959-0010-00
 ;;9002226.02101,"869,52959-0010-00 ",.02)
 ;;52959-0010-00
 ;;9002226.02101,"869,52959-0010-30 ",.01)
 ;;52959-0010-30
 ;;9002226.02101,"869,52959-0010-30 ",.02)
 ;;52959-0010-30
 ;;9002226.02101,"869,52959-0010-60 ",.01)
 ;;52959-0010-60
 ;;9002226.02101,"869,52959-0010-60 ",.02)
 ;;52959-0010-60
 ;;9002226.02101,"869,52959-0128-30 ",.01)
 ;;52959-0128-30
 ;;9002226.02101,"869,52959-0128-30 ",.02)
 ;;52959-0128-30
 ;;9002226.02101,"869,52959-0128-60 ",.01)
 ;;52959-0128-60
 ;;9002226.02101,"869,52959-0128-60 ",.02)
 ;;52959-0128-60
 ;;9002226.02101,"869,52959-0140-30 ",.01)
 ;;52959-0140-30
 ;;9002226.02101,"869,52959-0140-30 ",.02)
 ;;52959-0140-30
 ;;9002226.02101,"869,52959-0140-60 ",.01)
 ;;52959-0140-60
 ;;9002226.02101,"869,52959-0140-60 ",.02)
 ;;52959-0140-60
 ;;9002226.02101,"869,52959-0140-90 ",.01)
 ;;52959-0140-90
 ;;9002226.02101,"869,52959-0140-90 ",.02)
 ;;52959-0140-90
 ;;9002226.02101,"869,52959-0163-30 ",.01)
 ;;52959-0163-30
 ;;9002226.02101,"869,52959-0163-30 ",.02)
 ;;52959-0163-30
 ;;9002226.02101,"869,52959-0173-30 ",.01)
 ;;52959-0173-30
 ;;9002226.02101,"869,52959-0173-30 ",.02)
 ;;52959-0173-30
 ;;9002226.02101,"869,52959-0233-00 ",.01)
 ;;52959-0233-00
 ;;9002226.02101,"869,52959-0233-00 ",.02)
 ;;52959-0233-00
 ;;9002226.02101,"869,52959-0233-10 ",.01)
 ;;52959-0233-10
 ;;9002226.02101,"869,52959-0233-10 ",.02)
 ;;52959-0233-10
 ;;9002226.02101,"869,52959-0233-14 ",.01)
 ;;52959-0233-14
 ;;9002226.02101,"869,52959-0233-14 ",.02)
 ;;52959-0233-14
 ;;9002226.02101,"869,52959-0233-20 ",.01)
 ;;52959-0233-20
 ;;9002226.02101,"869,52959-0233-20 ",.02)
 ;;52959-0233-20
 ;;9002226.02101,"869,52959-0233-30 ",.01)
 ;;52959-0233-30
 ;;9002226.02101,"869,52959-0233-30 ",.02)
 ;;52959-0233-30
 ;;9002226.02101,"869,52959-0233-40 ",.01)
 ;;52959-0233-40
 ;;9002226.02101,"869,52959-0233-40 ",.02)
 ;;52959-0233-40
 ;;9002226.02101,"869,52959-0233-50 ",.01)
 ;;52959-0233-50
 ;;9002226.02101,"869,52959-0233-50 ",.02)
 ;;52959-0233-50
 ;;9002226.02101,"869,52959-0284-00 ",.01)
 ;;52959-0284-00
 ;;9002226.02101,"869,52959-0284-00 ",.02)
 ;;52959-0284-00
 ;;9002226.02101,"869,52959-0284-30 ",.01)
 ;;52959-0284-30
 ;;9002226.02101,"869,52959-0284-30 ",.02)
 ;;52959-0284-30
 ;;9002226.02101,"869,52959-0284-60 ",.01)
 ;;52959-0284-60
 ;;9002226.02101,"869,52959-0284-60 ",.02)
 ;;52959-0284-60
 ;;9002226.02101,"869,52959-0285-30 ",.01)
 ;;52959-0285-30
 ;;9002226.02101,"869,52959-0285-30 ",.02)
 ;;52959-0285-30
 ;;9002226.02101,"869,52959-0285-60 ",.01)
 ;;52959-0285-60
 ;;9002226.02101,"869,52959-0285-60 ",.02)
 ;;52959-0285-60
 ;;9002226.02101,"869,52959-0348-05 ",.01)
 ;;52959-0348-05
 ;;9002226.02101,"869,52959-0348-05 ",.02)
 ;;52959-0348-05
 ;;9002226.02101,"869,52959-0348-10 ",.01)
 ;;52959-0348-10
 ;;9002226.02101,"869,52959-0348-10 ",.02)
 ;;52959-0348-10
 ;;9002226.02101,"869,52959-0348-12 ",.01)
 ;;52959-0348-12
 ;;9002226.02101,"869,52959-0348-12 ",.02)
 ;;52959-0348-12
 ;;9002226.02101,"869,52959-0348-14 ",.01)
 ;;52959-0348-14
 ;;9002226.02101,"869,52959-0348-14 ",.02)
 ;;52959-0348-14
 ;;9002226.02101,"869,52959-0348-15 ",.01)
 ;;52959-0348-15
 ;;9002226.02101,"869,52959-0348-15 ",.02)
 ;;52959-0348-15
 ;;9002226.02101,"869,52959-0348-20 ",.01)
 ;;52959-0348-20
 ;;9002226.02101,"869,52959-0348-20 ",.02)
 ;;52959-0348-20
 ;;9002226.02101,"869,52959-0348-30 ",.01)
 ;;52959-0348-30
 ;;9002226.02101,"869,52959-0348-30 ",.02)
 ;;52959-0348-30
 ;;9002226.02101,"869,52959-0348-50 ",.01)
 ;;52959-0348-50
 ;;9002226.02101,"869,52959-0348-50 ",.02)
 ;;52959-0348-50
 ;;9002226.02101,"869,52959-0348-60 ",.01)
 ;;52959-0348-60
 ;;9002226.02101,"869,52959-0348-60 ",.02)
 ;;52959-0348-60
 ;;9002226.02101,"869,52959-0348-90 ",.01)
 ;;52959-0348-90
 ;;9002226.02101,"869,52959-0348-90 ",.02)
 ;;52959-0348-90