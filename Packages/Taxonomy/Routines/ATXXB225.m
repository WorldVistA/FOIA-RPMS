ATXXB225 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,D9Y0FZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y17ZZ ",.01)
 ;;D9Y17ZZ 
 ;;9002226.02101,"1804,D9Y17ZZ ",.02)
 ;;D9Y17ZZ 
 ;;9002226.02101,"1804,D9Y17ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y18ZZ ",.01)
 ;;D9Y18ZZ 
 ;;9002226.02101,"1804,D9Y18ZZ ",.02)
 ;;D9Y18ZZ 
 ;;9002226.02101,"1804,D9Y18ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y1FZZ ",.01)
 ;;D9Y1FZZ 
 ;;9002226.02101,"1804,D9Y1FZZ ",.02)
 ;;D9Y1FZZ 
 ;;9002226.02101,"1804,D9Y1FZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y37ZZ ",.01)
 ;;D9Y37ZZ 
 ;;9002226.02101,"1804,D9Y37ZZ ",.02)
 ;;D9Y37ZZ 
 ;;9002226.02101,"1804,D9Y37ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y38ZZ ",.01)
 ;;D9Y38ZZ 
 ;;9002226.02101,"1804,D9Y38ZZ ",.02)
 ;;D9Y38ZZ 
 ;;9002226.02101,"1804,D9Y38ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y47ZZ ",.01)
 ;;D9Y47ZZ 
 ;;9002226.02101,"1804,D9Y47ZZ ",.02)
 ;;D9Y47ZZ 
 ;;9002226.02101,"1804,D9Y47ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y48ZZ ",.01)
 ;;D9Y48ZZ 
 ;;9002226.02101,"1804,D9Y48ZZ ",.02)
 ;;D9Y48ZZ 
 ;;9002226.02101,"1804,D9Y48ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y4CZZ ",.01)
 ;;D9Y4CZZ 
 ;;9002226.02101,"1804,D9Y4CZZ ",.02)
 ;;D9Y4CZZ 
 ;;9002226.02101,"1804,D9Y4CZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y4FZZ ",.01)
 ;;D9Y4FZZ 
 ;;9002226.02101,"1804,D9Y4FZZ ",.02)
 ;;D9Y4FZZ 
 ;;9002226.02101,"1804,D9Y4FZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y57ZZ ",.01)
 ;;D9Y57ZZ 
 ;;9002226.02101,"1804,D9Y57ZZ ",.02)
 ;;D9Y57ZZ 
 ;;9002226.02101,"1804,D9Y57ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y58ZZ ",.01)
 ;;D9Y58ZZ 
 ;;9002226.02101,"1804,D9Y58ZZ ",.02)
 ;;D9Y58ZZ 
 ;;9002226.02101,"1804,D9Y58ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y5FZZ ",.01)
 ;;D9Y5FZZ 
 ;;9002226.02101,"1804,D9Y5FZZ ",.02)
 ;;D9Y5FZZ 
 ;;9002226.02101,"1804,D9Y5FZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y67ZZ ",.01)
 ;;D9Y67ZZ 
 ;;9002226.02101,"1804,D9Y67ZZ ",.02)
 ;;D9Y67ZZ 
 ;;9002226.02101,"1804,D9Y67ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y68ZZ ",.01)
 ;;D9Y68ZZ 
 ;;9002226.02101,"1804,D9Y68ZZ ",.02)
 ;;D9Y68ZZ 
 ;;9002226.02101,"1804,D9Y68ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y6FZZ ",.01)
 ;;D9Y6FZZ 
 ;;9002226.02101,"1804,D9Y6FZZ ",.02)
 ;;D9Y6FZZ 
 ;;9002226.02101,"1804,D9Y6FZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y77ZZ ",.01)
 ;;D9Y77ZZ 
 ;;9002226.02101,"1804,D9Y77ZZ ",.02)
 ;;D9Y77ZZ 
 ;;9002226.02101,"1804,D9Y77ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y78ZZ ",.01)
 ;;D9Y78ZZ 
 ;;9002226.02101,"1804,D9Y78ZZ ",.02)
 ;;D9Y78ZZ 
 ;;9002226.02101,"1804,D9Y78ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y7FZZ ",.01)
 ;;D9Y7FZZ 
 ;;9002226.02101,"1804,D9Y7FZZ ",.02)
 ;;D9Y7FZZ 
 ;;9002226.02101,"1804,D9Y7FZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y87ZZ ",.01)
 ;;D9Y87ZZ 
 ;;9002226.02101,"1804,D9Y87ZZ ",.02)
 ;;D9Y87ZZ 
 ;;9002226.02101,"1804,D9Y87ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y88ZZ ",.01)
 ;;D9Y88ZZ 
 ;;9002226.02101,"1804,D9Y88ZZ ",.02)
 ;;D9Y88ZZ 
 ;;9002226.02101,"1804,D9Y88ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y8FZZ ",.01)
 ;;D9Y8FZZ 
 ;;9002226.02101,"1804,D9Y8FZZ ",.02)
 ;;D9Y8FZZ 
 ;;9002226.02101,"1804,D9Y8FZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y97ZZ ",.01)
 ;;D9Y97ZZ 
 ;;9002226.02101,"1804,D9Y97ZZ ",.02)
 ;;D9Y97ZZ 
 ;;9002226.02101,"1804,D9Y97ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y98ZZ ",.01)
 ;;D9Y98ZZ 
 ;;9002226.02101,"1804,D9Y98ZZ ",.02)
 ;;D9Y98ZZ 
 ;;9002226.02101,"1804,D9Y98ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9Y9FZZ ",.01)
 ;;D9Y9FZZ 
 ;;9002226.02101,"1804,D9Y9FZZ ",.02)
 ;;D9Y9FZZ 
 ;;9002226.02101,"1804,D9Y9FZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YB7ZZ ",.01)
 ;;D9YB7ZZ 
 ;;9002226.02101,"1804,D9YB7ZZ ",.02)
 ;;D9YB7ZZ 
 ;;9002226.02101,"1804,D9YB7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YB8ZZ ",.01)
 ;;D9YB8ZZ 
 ;;9002226.02101,"1804,D9YB8ZZ ",.02)
 ;;D9YB8ZZ 
 ;;9002226.02101,"1804,D9YB8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YBCZZ ",.01)
 ;;D9YBCZZ 
 ;;9002226.02101,"1804,D9YBCZZ ",.02)
 ;;D9YBCZZ 
 ;;9002226.02101,"1804,D9YBCZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YBFZZ ",.01)
 ;;D9YBFZZ 
 ;;9002226.02101,"1804,D9YBFZZ ",.02)
 ;;D9YBFZZ 
 ;;9002226.02101,"1804,D9YBFZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YCCZZ ",.01)
 ;;D9YCCZZ 
 ;;9002226.02101,"1804,D9YCCZZ ",.02)
 ;;D9YCCZZ 
 ;;9002226.02101,"1804,D9YCCZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YCFZZ ",.01)
 ;;D9YCFZZ 
 ;;9002226.02101,"1804,D9YCFZZ ",.02)
 ;;D9YCFZZ 
 ;;9002226.02101,"1804,D9YCFZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YD7ZZ ",.01)
 ;;D9YD7ZZ 
 ;;9002226.02101,"1804,D9YD7ZZ ",.02)
 ;;D9YD7ZZ 
 ;;9002226.02101,"1804,D9YD7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YD8ZZ ",.01)
 ;;D9YD8ZZ 
 ;;9002226.02101,"1804,D9YD8ZZ ",.02)
 ;;D9YD8ZZ 
 ;;9002226.02101,"1804,D9YD8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YDCZZ ",.01)
 ;;D9YDCZZ 
 ;;9002226.02101,"1804,D9YDCZZ ",.02)
 ;;D9YDCZZ 
 ;;9002226.02101,"1804,D9YDCZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YDFZZ ",.01)
 ;;D9YDFZZ 
 ;;9002226.02101,"1804,D9YDFZZ ",.02)
 ;;D9YDFZZ 
 ;;9002226.02101,"1804,D9YDFZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YF7ZZ ",.01)
 ;;D9YF7ZZ 
 ;;9002226.02101,"1804,D9YF7ZZ ",.02)
 ;;D9YF7ZZ 
 ;;9002226.02101,"1804,D9YF7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9YF8ZZ ",.01)
 ;;D9YF8ZZ 
 ;;9002226.02101,"1804,D9YF8ZZ ",.02)
 ;;D9YF8ZZ 
 ;;9002226.02101,"1804,D9YF8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB000ZZ ",.01)
 ;;DB000ZZ 
 ;;9002226.02101,"1804,DB000ZZ ",.02)
 ;;DB000ZZ 
 ;;9002226.02101,"1804,DB000ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB001ZZ ",.01)
 ;;DB001ZZ 
 ;;9002226.02101,"1804,DB001ZZ ",.02)
 ;;DB001ZZ 
 ;;9002226.02101,"1804,DB001ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB002ZZ ",.01)
 ;;DB002ZZ 
 ;;9002226.02101,"1804,DB002ZZ ",.02)
 ;;DB002ZZ 
 ;;9002226.02101,"1804,DB002ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB003Z0 ",.01)
 ;;DB003Z0 
 ;;9002226.02101,"1804,DB003Z0 ",.02)
 ;;DB003Z0 
 ;;9002226.02101,"1804,DB003Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,DB003ZZ ",.01)
 ;;DB003ZZ 
 ;;9002226.02101,"1804,DB003ZZ ",.02)
 ;;DB003ZZ 
 ;;9002226.02101,"1804,DB003ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB004ZZ ",.01)
 ;;DB004ZZ 
 ;;9002226.02101,"1804,DB004ZZ ",.02)
 ;;DB004ZZ 
 ;;9002226.02101,"1804,DB004ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB005ZZ ",.01)
 ;;DB005ZZ 
 ;;9002226.02101,"1804,DB005ZZ ",.02)
 ;;DB005ZZ 
 ;;9002226.02101,"1804,DB005ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB006ZZ ",.01)
 ;;DB006ZZ 
 ;;9002226.02101,"1804,DB006ZZ ",.02)
 ;;DB006ZZ 
 ;;9002226.02101,"1804,DB006ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB010ZZ ",.01)
 ;;DB010ZZ 
 ;;9002226.02101,"1804,DB010ZZ ",.02)
 ;;DB010ZZ 
 ;;9002226.02101,"1804,DB010ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB011ZZ ",.01)
 ;;DB011ZZ 
 ;;9002226.02101,"1804,DB011ZZ ",.02)
 ;;DB011ZZ 
 ;;9002226.02101,"1804,DB011ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB012ZZ ",.01)
 ;;DB012ZZ 
 ;;9002226.02101,"1804,DB012ZZ ",.02)
 ;;DB012ZZ 
 ;;9002226.02101,"1804,DB012ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB013Z0 ",.01)
 ;;DB013Z0 
 ;;9002226.02101,"1804,DB013Z0 ",.02)
 ;;DB013Z0 
 ;;9002226.02101,"1804,DB013Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,DB013ZZ ",.01)
 ;;DB013ZZ 
 ;;9002226.02101,"1804,DB013ZZ ",.02)
 ;;DB013ZZ 
 ;;9002226.02101,"1804,DB013ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB014ZZ ",.01)
 ;;DB014ZZ 
 ;;9002226.02101,"1804,DB014ZZ ",.02)
 ;;DB014ZZ 
 ;;9002226.02101,"1804,DB014ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB015ZZ ",.01)
 ;;DB015ZZ 
 ;;9002226.02101,"1804,DB015ZZ ",.02)
 ;;DB015ZZ 
 ;;9002226.02101,"1804,DB015ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB016ZZ ",.01)
 ;;DB016ZZ 
 ;;9002226.02101,"1804,DB016ZZ ",.02)
 ;;DB016ZZ 
 ;;9002226.02101,"1804,DB016ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB020ZZ ",.01)
 ;;DB020ZZ 
 ;;9002226.02101,"1804,DB020ZZ ",.02)
 ;;DB020ZZ 
 ;;9002226.02101,"1804,DB020ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB021ZZ ",.01)
 ;;DB021ZZ 
 ;;9002226.02101,"1804,DB021ZZ ",.02)
 ;;DB021ZZ 
 ;;9002226.02101,"1804,DB021ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB022ZZ ",.01)
 ;;DB022ZZ 
 ;;9002226.02101,"1804,DB022ZZ ",.02)
 ;;DB022ZZ 
 ;;9002226.02101,"1804,DB022ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB023Z0 ",.01)
 ;;DB023Z0 
 ;;9002226.02101,"1804,DB023Z0 ",.02)
 ;;DB023Z0 
 ;;9002226.02101,"1804,DB023Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,DB023ZZ ",.01)
 ;;DB023ZZ 
 ;;9002226.02101,"1804,DB023ZZ ",.02)
 ;;DB023ZZ 
 ;;9002226.02101,"1804,DB023ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB024ZZ ",.01)
 ;;DB024ZZ 
 ;;9002226.02101,"1804,DB024ZZ ",.02)
 ;;DB024ZZ 
 ;;9002226.02101,"1804,DB024ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB025ZZ ",.01)
 ;;DB025ZZ 
 ;;9002226.02101,"1804,DB025ZZ ",.02)
 ;;DB025ZZ 
 ;;9002226.02101,"1804,DB025ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB026ZZ ",.01)
 ;;DB026ZZ 
 ;;9002226.02101,"1804,DB026ZZ ",.02)
 ;;DB026ZZ 
 ;;9002226.02101,"1804,DB026ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB050ZZ ",.01)
 ;;DB050ZZ 
 ;;9002226.02101,"1804,DB050ZZ ",.02)
 ;;DB050ZZ 
 ;;9002226.02101,"1804,DB050ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB051ZZ ",.01)
 ;;DB051ZZ 
 ;;9002226.02101,"1804,DB051ZZ ",.02)
 ;;DB051ZZ 
 ;;9002226.02101,"1804,DB051ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB052ZZ ",.01)
 ;;DB052ZZ 
 ;;9002226.02101,"1804,DB052ZZ ",.02)
 ;;DB052ZZ 
 ;;9002226.02101,"1804,DB052ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB053Z0 ",.01)
 ;;DB053Z0 
 ;;9002226.02101,"1804,DB053Z0 ",.02)
 ;;DB053Z0 
 ;;9002226.02101,"1804,DB053Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,DB053ZZ ",.01)
 ;;DB053ZZ 
 ;;9002226.02101,"1804,DB053ZZ ",.02)
 ;;DB053ZZ 
 ;;9002226.02101,"1804,DB053ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB054ZZ ",.01)
 ;;DB054ZZ 
 ;;9002226.02101,"1804,DB054ZZ ",.02)
 ;;DB054ZZ 
 ;;9002226.02101,"1804,DB054ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB055ZZ ",.01)
 ;;DB055ZZ 
 ;;9002226.02101,"1804,DB055ZZ ",.02)
 ;;DB055ZZ 
 ;;9002226.02101,"1804,DB055ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB056ZZ ",.01)
 ;;DB056ZZ 
 ;;9002226.02101,"1804,DB056ZZ ",.02)
 ;;DB056ZZ 
 ;;9002226.02101,"1804,DB056ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB060ZZ ",.01)
 ;;DB060ZZ 
 ;;9002226.02101,"1804,DB060ZZ ",.02)
 ;;DB060ZZ 
 ;;9002226.02101,"1804,DB060ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB061ZZ ",.01)
 ;;DB061ZZ 
 ;;9002226.02101,"1804,DB061ZZ ",.02)
 ;;DB061ZZ 
 ;;9002226.02101,"1804,DB061ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB062ZZ ",.01)
 ;;DB062ZZ 
 ;;9002226.02101,"1804,DB062ZZ ",.02)
 ;;DB062ZZ 
 ;;9002226.02101,"1804,DB062ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB063Z0 ",.01)
 ;;DB063Z0 
 ;;9002226.02101,"1804,DB063Z0 ",.02)
 ;;DB063Z0 
 ;;9002226.02101,"1804,DB063Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,DB063ZZ ",.01)
 ;;DB063ZZ 
 ;;9002226.02101,"1804,DB063ZZ ",.02)
 ;;DB063ZZ 
 ;;9002226.02101,"1804,DB063ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB064ZZ ",.01)
 ;;DB064ZZ 
 ;;9002226.02101,"1804,DB064ZZ ",.02)
 ;;DB064ZZ 
 ;;9002226.02101,"1804,DB064ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB065ZZ ",.01)
 ;;DB065ZZ 
 ;;9002226.02101,"1804,DB065ZZ ",.02)
 ;;DB065ZZ 
 ;;9002226.02101,"1804,DB065ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB066ZZ ",.01)
 ;;DB066ZZ 
 ;;9002226.02101,"1804,DB066ZZ ",.02)
 ;;DB066ZZ 
 ;;9002226.02101,"1804,DB066ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB070ZZ ",.01)
 ;;DB070ZZ 
 ;;9002226.02101,"1804,DB070ZZ ",.02)
 ;;DB070ZZ 
 ;;9002226.02101,"1804,DB070ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DB071ZZ ",.01)
 ;;DB071ZZ 
 ;;9002226.02101,"1804,DB071ZZ ",.02)
 ;;DB071ZZ 
 ;;9002226.02101,"1804,DB071ZZ ",.03)
 ;;31