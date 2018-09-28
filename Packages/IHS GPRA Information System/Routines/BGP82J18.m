BGP82J18 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 09, 2017 ;
 ;;18.0;IHS CLINICAL REPORTING;;NOV 21, 2017;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1220,47463-0210-30 ",.02)
 ;;47463-0210-30
 ;;9002226.02101,"1220,47463-0211-30 ",.01)
 ;;47463-0211-30
 ;;9002226.02101,"1220,47463-0211-30 ",.02)
 ;;47463-0211-30
 ;;9002226.02101,"1220,47463-0212-30 ",.01)
 ;;47463-0212-30
 ;;9002226.02101,"1220,47463-0212-30 ",.02)
 ;;47463-0212-30
 ;;9002226.02101,"1220,47463-0213-30 ",.01)
 ;;47463-0213-30
 ;;9002226.02101,"1220,47463-0213-30 ",.02)
 ;;47463-0213-30
 ;;9002226.02101,"1220,47463-0542-30 ",.01)
 ;;47463-0542-30
 ;;9002226.02101,"1220,47463-0542-30 ",.02)
 ;;47463-0542-30
 ;;9002226.02101,"1220,47463-0543-30 ",.01)
 ;;47463-0543-30
 ;;9002226.02101,"1220,47463-0543-30 ",.02)
 ;;47463-0543-30
 ;;9002226.02101,"1220,47463-0544-30 ",.01)
 ;;47463-0544-30
 ;;9002226.02101,"1220,47463-0544-30 ",.02)
 ;;47463-0544-30
 ;;9002226.02101,"1220,47463-0819-30 ",.01)
 ;;47463-0819-30
 ;;9002226.02101,"1220,47463-0819-30 ",.02)
 ;;47463-0819-30
 ;;9002226.02101,"1220,47463-0820-30 ",.01)
 ;;47463-0820-30
 ;;9002226.02101,"1220,47463-0820-30 ",.02)
 ;;47463-0820-30
 ;;9002226.02101,"1220,47781-0368-01 ",.01)
 ;;47781-0368-01
 ;;9002226.02101,"1220,47781-0368-01 ",.02)
 ;;47781-0368-01
 ;;9002226.02101,"1220,47781-0369-01 ",.01)
 ;;47781-0369-01
 ;;9002226.02101,"1220,47781-0369-01 ",.02)
 ;;47781-0369-01
 ;;9002226.02101,"1220,47781-0370-01 ",.01)
 ;;47781-0370-01
 ;;9002226.02101,"1220,47781-0370-01 ",.02)
 ;;47781-0370-01
 ;;9002226.02101,"1220,49884-0172-09 ",.01)
 ;;49884-0172-09
 ;;9002226.02101,"1220,49884-0172-09 ",.02)
 ;;49884-0172-09
 ;;9002226.02101,"1220,49884-0172-11 ",.01)
 ;;49884-0172-11
 ;;9002226.02101,"1220,49884-0172-11 ",.02)
 ;;49884-0172-11
 ;;9002226.02101,"1220,49884-0173-09 ",.01)
 ;;49884-0173-09
 ;;9002226.02101,"1220,49884-0173-09 ",.02)
 ;;49884-0173-09
 ;;9002226.02101,"1220,49884-0173-11 ",.01)
 ;;49884-0173-11
 ;;9002226.02101,"1220,49884-0173-11 ",.02)
 ;;49884-0173-11
 ;;9002226.02101,"1220,49884-0174-09 ",.01)
 ;;49884-0174-09
 ;;9002226.02101,"1220,49884-0174-09 ",.02)
 ;;49884-0174-09
 ;;9002226.02101,"1220,49884-0174-11 ",.01)
 ;;49884-0174-11
 ;;9002226.02101,"1220,49884-0174-11 ",.02)
 ;;49884-0174-11
 ;;9002226.02101,"1220,49884-0175-09 ",.01)
 ;;49884-0175-09
 ;;9002226.02101,"1220,49884-0175-09 ",.02)
 ;;49884-0175-09
 ;;9002226.02101,"1220,49884-0175-11 ",.01)
 ;;49884-0175-11
 ;;9002226.02101,"1220,49884-0175-11 ",.02)
 ;;49884-0175-11
 ;;9002226.02101,"1220,49884-0185-09 ",.01)
 ;;49884-0185-09
 ;;9002226.02101,"1220,49884-0185-09 ",.02)
 ;;49884-0185-09
 ;;9002226.02101,"1220,49884-0185-11 ",.01)
 ;;49884-0185-11
 ;;9002226.02101,"1220,49884-0185-11 ",.02)
 ;;49884-0185-11
 ;;9002226.02101,"1220,49884-0574-11 ",.01)
 ;;49884-0574-11
 ;;9002226.02101,"1220,49884-0574-11 ",.02)
 ;;49884-0574-11
 ;;9002226.02101,"1220,49884-0575-11 ",.01)
 ;;49884-0575-11
 ;;9002226.02101,"1220,49884-0575-11 ",.02)
 ;;49884-0575-11
 ;;9002226.02101,"1220,49884-0576-11 ",.01)
 ;;49884-0576-11
 ;;9002226.02101,"1220,49884-0576-11 ",.02)
 ;;49884-0576-11
 ;;9002226.02101,"1220,49884-0577-11 ",.01)
 ;;49884-0577-11
 ;;9002226.02101,"1220,49884-0577-11 ",.02)
 ;;49884-0577-11
 ;;9002226.02101,"1220,49884-0677-01 ",.01)
 ;;49884-0677-01
 ;;9002226.02101,"1220,49884-0677-01 ",.02)
 ;;49884-0677-01
 ;;9002226.02101,"1220,49884-0677-05 ",.01)
 ;;49884-0677-05
 ;;9002226.02101,"1220,49884-0677-05 ",.02)
 ;;49884-0677-05
 ;;9002226.02101,"1220,49884-0678-01 ",.01)
 ;;49884-0678-01
 ;;9002226.02101,"1220,49884-0678-01 ",.02)
 ;;49884-0678-01
 ;;9002226.02101,"1220,49884-0678-05 ",.01)
 ;;49884-0678-05
 ;;9002226.02101,"1220,49884-0678-05 ",.02)
 ;;49884-0678-05
 ;;9002226.02101,"1220,49884-0679-01 ",.01)
 ;;49884-0679-01
 ;;9002226.02101,"1220,49884-0679-01 ",.02)
 ;;49884-0679-01
 ;;9002226.02101,"1220,49884-0786-09 ",.01)
 ;;49884-0786-09
 ;;9002226.02101,"1220,49884-0786-09 ",.02)
 ;;49884-0786-09
 ;;9002226.02101,"1220,49884-0786-11 ",.01)
 ;;49884-0786-11
 ;;9002226.02101,"1220,49884-0786-11 ",.02)
 ;;49884-0786-11
 ;;9002226.02101,"1220,49884-0787-09 ",.01)
 ;;49884-0787-09
 ;;9002226.02101,"1220,49884-0787-09 ",.02)
 ;;49884-0787-09
 ;;9002226.02101,"1220,49884-0787-11 ",.01)
 ;;49884-0787-11
 ;;9002226.02101,"1220,49884-0787-11 ",.02)
 ;;49884-0787-11
 ;;9002226.02101,"1220,49884-0788-09 ",.01)
 ;;49884-0788-09
 ;;9002226.02101,"1220,49884-0788-09 ",.02)
 ;;49884-0788-09
 ;;9002226.02101,"1220,49884-0788-11 ",.01)
 ;;49884-0788-11
 ;;9002226.02101,"1220,49884-0788-11 ",.02)
 ;;49884-0788-11
 ;;9002226.02101,"1220,49884-0789-09 ",.01)
 ;;49884-0789-09
 ;;9002226.02101,"1220,49884-0789-09 ",.02)
 ;;49884-0789-09
 ;;9002226.02101,"1220,49884-0789-11 ",.01)
 ;;49884-0789-11
 ;;9002226.02101,"1220,49884-0789-11 ",.02)
 ;;49884-0789-11
 ;;9002226.02101,"1220,49884-0790-09 ",.01)
 ;;49884-0790-09
 ;;9002226.02101,"1220,49884-0790-09 ",.02)
 ;;49884-0790-09
 ;;9002226.02101,"1220,49884-0790-11 ",.01)
 ;;49884-0790-11
 ;;9002226.02101,"1220,49884-0790-11 ",.02)
 ;;49884-0790-11
 ;;9002226.02101,"1220,49884-0829-05 ",.01)
 ;;49884-0829-05
 ;;9002226.02101,"1220,49884-0829-05 ",.02)
 ;;49884-0829-05
 ;;9002226.02101,"1220,49884-0829-09 ",.01)
 ;;49884-0829-09
 ;;9002226.02101,"1220,49884-0829-09 ",.02)
 ;;49884-0829-09
 ;;9002226.02101,"1220,49884-0829-11 ",.01)
 ;;49884-0829-11
 ;;9002226.02101,"1220,49884-0829-11 ",.02)
 ;;49884-0829-11
 ;;9002226.02101,"1220,49884-0830-05 ",.01)
 ;;49884-0830-05
 ;;9002226.02101,"1220,49884-0830-05 ",.02)
 ;;49884-0830-05
 ;;9002226.02101,"1220,49884-0830-09 ",.01)
 ;;49884-0830-09
 ;;9002226.02101,"1220,49884-0830-09 ",.02)
 ;;49884-0830-09
 ;;9002226.02101,"1220,49884-0830-11 ",.01)
 ;;49884-0830-11
 ;;9002226.02101,"1220,49884-0830-11 ",.02)
 ;;49884-0830-11
 ;;9002226.02101,"1220,49884-0831-05 ",.01)
 ;;49884-0831-05
 ;;9002226.02101,"1220,49884-0831-05 ",.02)
 ;;49884-0831-05
 ;;9002226.02101,"1220,49884-0831-09 ",.01)
 ;;49884-0831-09
 ;;9002226.02101,"1220,49884-0831-09 ",.02)
 ;;49884-0831-09
 ;;9002226.02101,"1220,49884-0831-11 ",.01)
 ;;49884-0831-11
 ;;9002226.02101,"1220,49884-0831-11 ",.02)
 ;;49884-0831-11
 ;;9002226.02101,"1220,49884-0832-05 ",.01)
 ;;49884-0832-05
 ;;9002226.02101,"1220,49884-0832-05 ",.02)
 ;;49884-0832-05
 ;;9002226.02101,"1220,49884-0832-09 ",.01)
 ;;49884-0832-09
 ;;9002226.02101,"1220,49884-0832-09 ",.02)
 ;;49884-0832-09
 ;;9002226.02101,"1220,49884-0832-11 ",.01)
 ;;49884-0832-11
 ;;9002226.02101,"1220,49884-0832-11 ",.02)
 ;;49884-0832-11
 ;;9002226.02101,"1220,49884-0929-01 ",.01)
 ;;49884-0929-01
 ;;9002226.02101,"1220,49884-0929-01 ",.02)
 ;;49884-0929-01
 ;;9002226.02101,"1220,49884-0929-05 ",.01)
 ;;49884-0929-05
 ;;9002226.02101,"1220,49884-0929-05 ",.02)
 ;;49884-0929-05
 ;;9002226.02101,"1220,49884-0930-01 ",.01)
 ;;49884-0930-01
 ;;9002226.02101,"1220,49884-0930-01 ",.02)
 ;;49884-0930-01
 ;;9002226.02101,"1220,49884-0930-05 ",.01)
 ;;49884-0930-05
 ;;9002226.02101,"1220,49884-0930-05 ",.02)
 ;;49884-0930-05
 ;;9002226.02101,"1220,49884-0931-01 ",.01)
 ;;49884-0931-01
 ;;9002226.02101,"1220,49884-0931-01 ",.02)
 ;;49884-0931-01
 ;;9002226.02101,"1220,49884-0931-05 ",.01)
 ;;49884-0931-05
 ;;9002226.02101,"1220,49884-0931-05 ",.02)
 ;;49884-0931-05
 ;;9002226.02101,"1220,49999-0075-00 ",.01)
 ;;49999-0075-00
 ;;9002226.02101,"1220,49999-0075-00 ",.02)
 ;;49999-0075-00
 ;;9002226.02101,"1220,49999-0075-30 ",.01)
 ;;49999-0075-30
 ;;9002226.02101,"1220,49999-0075-30 ",.02)
 ;;49999-0075-30
 ;;9002226.02101,"1220,49999-0075-90 ",.01)
 ;;49999-0075-90
 ;;9002226.02101,"1220,49999-0075-90 ",.02)
 ;;49999-0075-90
 ;;9002226.02101,"1220,49999-0248-10 ",.01)
 ;;49999-0248-10
 ;;9002226.02101,"1220,49999-0248-10 ",.02)
 ;;49999-0248-10
 ;;9002226.02101,"1220,49999-0283-00 ",.01)
 ;;49999-0283-00
 ;;9002226.02101,"1220,49999-0283-00 ",.02)
 ;;49999-0283-00
 ;;9002226.02101,"1220,49999-0283-30 ",.01)
 ;;49999-0283-30
 ;;9002226.02101,"1220,49999-0283-30 ",.02)
 ;;49999-0283-30
 ;;9002226.02101,"1220,49999-0283-60 ",.01)
 ;;49999-0283-60
 ;;9002226.02101,"1220,49999-0283-60 ",.02)
 ;;49999-0283-60
 ;;9002226.02101,"1220,49999-0283-90 ",.01)
 ;;49999-0283-90
 ;;9002226.02101,"1220,49999-0283-90 ",.02)
 ;;49999-0283-90
 ;;9002226.02101,"1220,49999-0284-00 ",.01)
 ;;49999-0284-00
 ;;9002226.02101,"1220,49999-0284-00 ",.02)
 ;;49999-0284-00
 ;;9002226.02101,"1220,49999-0284-30 ",.01)
 ;;49999-0284-30
 ;;9002226.02101,"1220,49999-0284-30 ",.02)
 ;;49999-0284-30
 ;;9002226.02101,"1220,49999-0284-60 ",.01)
 ;;49999-0284-60
 ;;9002226.02101,"1220,49999-0284-60 ",.02)
 ;;49999-0284-60
 ;;9002226.02101,"1220,49999-0284-90 ",.01)
 ;;49999-0284-90
 ;;9002226.02101,"1220,49999-0284-90 ",.02)
 ;;49999-0284-90
 ;;9002226.02101,"1220,49999-0310-00 ",.01)
 ;;49999-0310-00
 ;;9002226.02101,"1220,49999-0310-00 ",.02)
 ;;49999-0310-00
 ;;9002226.02101,"1220,49999-0310-60 ",.01)
 ;;49999-0310-60
 ;;9002226.02101,"1220,49999-0310-60 ",.02)
 ;;49999-0310-60
 ;;9002226.02101,"1220,49999-0357-30 ",.01)
 ;;49999-0357-30
 ;;9002226.02101,"1220,49999-0357-30 ",.02)
 ;;49999-0357-30
 ;;9002226.02101,"1220,49999-0357-60 ",.01)
 ;;49999-0357-60
 ;;9002226.02101,"1220,49999-0357-60 ",.02)
 ;;49999-0357-60
 ;;9002226.02101,"1220,49999-0357-90 ",.01)
 ;;49999-0357-90
 ;;9002226.02101,"1220,49999-0357-90 ",.02)
 ;;49999-0357-90
 ;;9002226.02101,"1220,49999-0436-30 ",.01)
 ;;49999-0436-30
 ;;9002226.02101,"1220,49999-0436-30 ",.02)
 ;;49999-0436-30
 ;;9002226.02101,"1220,49999-0436-90 ",.01)
 ;;49999-0436-90
 ;;9002226.02101,"1220,49999-0436-90 ",.02)
 ;;49999-0436-90
 ;;9002226.02101,"1220,49999-0476-30 ",.01)
 ;;49999-0476-30
 ;;9002226.02101,"1220,49999-0476-30 ",.02)
 ;;49999-0476-30
 ;;9002226.02101,"1220,49999-0476-60 ",.01)
 ;;49999-0476-60
 ;;9002226.02101,"1220,49999-0476-60 ",.02)
 ;;49999-0476-60
 ;;9002226.02101,"1220,49999-0476-90 ",.01)
 ;;49999-0476-90
 ;;9002226.02101,"1220,49999-0476-90 ",.02)
 ;;49999-0476-90
 ;;9002226.02101,"1220,49999-0478-30 ",.01)
 ;;49999-0478-30
 ;;9002226.02101,"1220,49999-0478-30 ",.02)
 ;;49999-0478-30
 ;;9002226.02101,"1220,49999-0478-90 ",.01)
 ;;49999-0478-90
 ;;9002226.02101,"1220,49999-0478-90 ",.02)
 ;;49999-0478-90
 ;;9002226.02101,"1220,49999-0496-30 ",.01)
 ;;49999-0496-30
 ;;9002226.02101,"1220,49999-0496-30 ",.02)
 ;;49999-0496-30
 ;;9002226.02101,"1220,49999-0499-10 ",.01)
 ;;49999-0499-10
 ;;9002226.02101,"1220,49999-0499-10 ",.02)
 ;;49999-0499-10
 ;;9002226.02101,"1220,49999-0572-10 ",.01)
 ;;49999-0572-10
 ;;9002226.02101,"1220,49999-0572-10 ",.02)
 ;;49999-0572-10
 ;;9002226.02101,"1220,49999-0821-10 ",.01)
 ;;49999-0821-10
 ;;9002226.02101,"1220,49999-0821-10 ",.02)
 ;;49999-0821-10
 ;;9002226.02101,"1220,49999-0946-30 ",.01)
 ;;49999-0946-30
 ;;9002226.02101,"1220,49999-0946-30 ",.02)
 ;;49999-0946-30
 ;;9002226.02101,"1220,49999-0947-30 ",.01)
 ;;49999-0947-30
 ;;9002226.02101,"1220,49999-0947-30 ",.02)
 ;;49999-0947-30
 ;;9002226.02101,"1220,49999-0948-30 ",.01)
 ;;49999-0948-30
 ;;9002226.02101,"1220,49999-0948-30 ",.02)
 ;;49999-0948-30
 ;;9002226.02101,"1220,49999-0989-30 ",.01)
 ;;49999-0989-30
 ;;9002226.02101,"1220,49999-0989-30 ",.02)
 ;;49999-0989-30
 ;;9002226.02101,"1220,50090-1995-00 ",.01)
 ;;50090-1995-00
 ;;9002226.02101,"1220,50090-1995-00 ",.02)
 ;;50090-1995-00
 ;;9002226.02101,"1220,50268-0081-11 ",.01)
 ;;50268-0081-11
 ;;9002226.02101,"1220,50268-0081-11 ",.02)
 ;;50268-0081-11
 ;;9002226.02101,"1220,50268-0081-15 ",.01)
 ;;50268-0081-15
 ;;9002226.02101,"1220,50268-0081-15 ",.02)
 ;;50268-0081-15
 ;;9002226.02101,"1220,50268-0082-11 ",.01)
 ;;50268-0082-11
 ;;9002226.02101,"1220,50268-0082-11 ",.02)
 ;;50268-0082-11