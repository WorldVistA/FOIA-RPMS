ATXXA86 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S62.348B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.349A ",.01)
 ;;S62.349A
 ;;9002226.02101,"873,S62.349A ",.02)
 ;;S62.349A
 ;;9002226.02101,"873,S62.349A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.349B ",.01)
 ;;S62.349B
 ;;9002226.02101,"873,S62.349B ",.02)
 ;;S62.349B
 ;;9002226.02101,"873,S62.349B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.350A ",.01)
 ;;S62.350A
 ;;9002226.02101,"873,S62.350A ",.02)
 ;;S62.350A
 ;;9002226.02101,"873,S62.350A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.350B ",.01)
 ;;S62.350B
 ;;9002226.02101,"873,S62.350B ",.02)
 ;;S62.350B
 ;;9002226.02101,"873,S62.350B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.351A ",.01)
 ;;S62.351A
 ;;9002226.02101,"873,S62.351A ",.02)
 ;;S62.351A
 ;;9002226.02101,"873,S62.351A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.351B ",.01)
 ;;S62.351B
 ;;9002226.02101,"873,S62.351B ",.02)
 ;;S62.351B
 ;;9002226.02101,"873,S62.351B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.352A ",.01)
 ;;S62.352A
 ;;9002226.02101,"873,S62.352A ",.02)
 ;;S62.352A
 ;;9002226.02101,"873,S62.352A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.352B ",.01)
 ;;S62.352B
 ;;9002226.02101,"873,S62.352B ",.02)
 ;;S62.352B
 ;;9002226.02101,"873,S62.352B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.353A ",.01)
 ;;S62.353A
 ;;9002226.02101,"873,S62.353A ",.02)
 ;;S62.353A
 ;;9002226.02101,"873,S62.353A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.353B ",.01)
 ;;S62.353B
 ;;9002226.02101,"873,S62.353B ",.02)
 ;;S62.353B
 ;;9002226.02101,"873,S62.353B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.354A ",.01)
 ;;S62.354A
 ;;9002226.02101,"873,S62.354A ",.02)
 ;;S62.354A
 ;;9002226.02101,"873,S62.354A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.354B ",.01)
 ;;S62.354B
 ;;9002226.02101,"873,S62.354B ",.02)
 ;;S62.354B
 ;;9002226.02101,"873,S62.354B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.355A ",.01)
 ;;S62.355A
 ;;9002226.02101,"873,S62.355A ",.02)
 ;;S62.355A
 ;;9002226.02101,"873,S62.355A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.355B ",.01)
 ;;S62.355B
 ;;9002226.02101,"873,S62.355B ",.02)
 ;;S62.355B
 ;;9002226.02101,"873,S62.355B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.356A ",.01)
 ;;S62.356A
 ;;9002226.02101,"873,S62.356A ",.02)
 ;;S62.356A
 ;;9002226.02101,"873,S62.356A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.356B ",.01)
 ;;S62.356B
 ;;9002226.02101,"873,S62.356B ",.02)
 ;;S62.356B
 ;;9002226.02101,"873,S62.356B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.357A ",.01)
 ;;S62.357A
 ;;9002226.02101,"873,S62.357A ",.02)
 ;;S62.357A
 ;;9002226.02101,"873,S62.357A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.357B ",.01)
 ;;S62.357B
 ;;9002226.02101,"873,S62.357B ",.02)
 ;;S62.357B
 ;;9002226.02101,"873,S62.357B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.358A ",.01)
 ;;S62.358A
 ;;9002226.02101,"873,S62.358A ",.02)
 ;;S62.358A
 ;;9002226.02101,"873,S62.358A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.358B ",.01)
 ;;S62.358B
 ;;9002226.02101,"873,S62.358B ",.02)
 ;;S62.358B
 ;;9002226.02101,"873,S62.358B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.359A ",.01)
 ;;S62.359A
 ;;9002226.02101,"873,S62.359A ",.02)
 ;;S62.359A
 ;;9002226.02101,"873,S62.359A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.359B ",.01)
 ;;S62.359B
 ;;9002226.02101,"873,S62.359B ",.02)
 ;;S62.359B
 ;;9002226.02101,"873,S62.359B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.360A ",.01)
 ;;S62.360A
 ;;9002226.02101,"873,S62.360A ",.02)
 ;;S62.360A
 ;;9002226.02101,"873,S62.360A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.360B ",.01)
 ;;S62.360B
 ;;9002226.02101,"873,S62.360B ",.02)
 ;;S62.360B
 ;;9002226.02101,"873,S62.360B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.361A ",.01)
 ;;S62.361A
 ;;9002226.02101,"873,S62.361A ",.02)
 ;;S62.361A
 ;;9002226.02101,"873,S62.361A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.361B ",.01)
 ;;S62.361B
 ;;9002226.02101,"873,S62.361B ",.02)
 ;;S62.361B
 ;;9002226.02101,"873,S62.361B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.362A ",.01)
 ;;S62.362A
 ;;9002226.02101,"873,S62.362A ",.02)
 ;;S62.362A
 ;;9002226.02101,"873,S62.362A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.362B ",.01)
 ;;S62.362B
 ;;9002226.02101,"873,S62.362B ",.02)
 ;;S62.362B
 ;;9002226.02101,"873,S62.362B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.363A ",.01)
 ;;S62.363A
 ;;9002226.02101,"873,S62.363A ",.02)
 ;;S62.363A
 ;;9002226.02101,"873,S62.363A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.363B ",.01)
 ;;S62.363B
 ;;9002226.02101,"873,S62.363B ",.02)
 ;;S62.363B
 ;;9002226.02101,"873,S62.363B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.364A ",.01)
 ;;S62.364A
 ;;9002226.02101,"873,S62.364A ",.02)
 ;;S62.364A
 ;;9002226.02101,"873,S62.364A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.364B ",.01)
 ;;S62.364B
 ;;9002226.02101,"873,S62.364B ",.02)
 ;;S62.364B
 ;;9002226.02101,"873,S62.364B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.365A ",.01)
 ;;S62.365A
 ;;9002226.02101,"873,S62.365A ",.02)
 ;;S62.365A
 ;;9002226.02101,"873,S62.365A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.365B ",.01)
 ;;S62.365B
 ;;9002226.02101,"873,S62.365B ",.02)
 ;;S62.365B
 ;;9002226.02101,"873,S62.365B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.366A ",.01)
 ;;S62.366A
 ;;9002226.02101,"873,S62.366A ",.02)
 ;;S62.366A
 ;;9002226.02101,"873,S62.366A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.366B ",.01)
 ;;S62.366B
 ;;9002226.02101,"873,S62.366B ",.02)
 ;;S62.366B
 ;;9002226.02101,"873,S62.366B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.367A ",.01)
 ;;S62.367A
 ;;9002226.02101,"873,S62.367A ",.02)
 ;;S62.367A
 ;;9002226.02101,"873,S62.367A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.367B ",.01)
 ;;S62.367B
 ;;9002226.02101,"873,S62.367B ",.02)
 ;;S62.367B
 ;;9002226.02101,"873,S62.367B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.368A ",.01)
 ;;S62.368A
 ;;9002226.02101,"873,S62.368A ",.02)
 ;;S62.368A
 ;;9002226.02101,"873,S62.368A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.368B ",.01)
 ;;S62.368B
 ;;9002226.02101,"873,S62.368B ",.02)
 ;;S62.368B
 ;;9002226.02101,"873,S62.368B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.369A ",.01)
 ;;S62.369A
 ;;9002226.02101,"873,S62.369A ",.02)
 ;;S62.369A
 ;;9002226.02101,"873,S62.369A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.369B ",.01)
 ;;S62.369B
 ;;9002226.02101,"873,S62.369B ",.02)
 ;;S62.369B
 ;;9002226.02101,"873,S62.369B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.390A ",.01)
 ;;S62.390A
 ;;9002226.02101,"873,S62.390A ",.02)
 ;;S62.390A
 ;;9002226.02101,"873,S62.390A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.390B ",.01)
 ;;S62.390B
 ;;9002226.02101,"873,S62.390B ",.02)
 ;;S62.390B
 ;;9002226.02101,"873,S62.390B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.391A ",.01)
 ;;S62.391A
 ;;9002226.02101,"873,S62.391A ",.02)
 ;;S62.391A
 ;;9002226.02101,"873,S62.391A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.391B ",.01)
 ;;S62.391B
 ;;9002226.02101,"873,S62.391B ",.02)
 ;;S62.391B
 ;;9002226.02101,"873,S62.391B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.392A ",.01)
 ;;S62.392A
 ;;9002226.02101,"873,S62.392A ",.02)
 ;;S62.392A
 ;;9002226.02101,"873,S62.392A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.392B ",.01)
 ;;S62.392B
 ;;9002226.02101,"873,S62.392B ",.02)
 ;;S62.392B
 ;;9002226.02101,"873,S62.392B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.393A ",.01)
 ;;S62.393A
 ;;9002226.02101,"873,S62.393A ",.02)
 ;;S62.393A
 ;;9002226.02101,"873,S62.393A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.393B ",.01)
 ;;S62.393B
 ;;9002226.02101,"873,S62.393B ",.02)
 ;;S62.393B
 ;;9002226.02101,"873,S62.393B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.394A ",.01)
 ;;S62.394A
 ;;9002226.02101,"873,S62.394A ",.02)
 ;;S62.394A
 ;;9002226.02101,"873,S62.394A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.394B ",.01)
 ;;S62.394B
 ;;9002226.02101,"873,S62.394B ",.02)
 ;;S62.394B
 ;;9002226.02101,"873,S62.394B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.395A ",.01)
 ;;S62.395A
 ;;9002226.02101,"873,S62.395A ",.02)
 ;;S62.395A
 ;;9002226.02101,"873,S62.395A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.395B ",.01)
 ;;S62.395B
 ;;9002226.02101,"873,S62.395B ",.02)
 ;;S62.395B
 ;;9002226.02101,"873,S62.395B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.396A ",.01)
 ;;S62.396A
 ;;9002226.02101,"873,S62.396A ",.02)
 ;;S62.396A
 ;;9002226.02101,"873,S62.396A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.396B ",.01)
 ;;S62.396B
 ;;9002226.02101,"873,S62.396B ",.02)
 ;;S62.396B
 ;;9002226.02101,"873,S62.396B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.397A ",.01)
 ;;S62.397A
 ;;9002226.02101,"873,S62.397A ",.02)
 ;;S62.397A
 ;;9002226.02101,"873,S62.397A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.397B ",.01)
 ;;S62.397B
 ;;9002226.02101,"873,S62.397B ",.02)
 ;;S62.397B
 ;;9002226.02101,"873,S62.397B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.398A ",.01)
 ;;S62.398A
 ;;9002226.02101,"873,S62.398A ",.02)
 ;;S62.398A
 ;;9002226.02101,"873,S62.398A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.398B ",.01)
 ;;S62.398B
 ;;9002226.02101,"873,S62.398B ",.02)
 ;;S62.398B
 ;;9002226.02101,"873,S62.398B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.399A ",.01)
 ;;S62.399A
 ;;9002226.02101,"873,S62.399A ",.02)
 ;;S62.399A
 ;;9002226.02101,"873,S62.399A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.399B ",.01)
 ;;S62.399B
 ;;9002226.02101,"873,S62.399B ",.02)
 ;;S62.399B
 ;;9002226.02101,"873,S62.399B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.501A ",.01)
 ;;S62.501A
 ;;9002226.02101,"873,S62.501A ",.02)
 ;;S62.501A
 ;;9002226.02101,"873,S62.501A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.501B ",.01)
 ;;S62.501B
 ;;9002226.02101,"873,S62.501B ",.02)
 ;;S62.501B
 ;;9002226.02101,"873,S62.501B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.502A ",.01)
 ;;S62.502A
 ;;9002226.02101,"873,S62.502A ",.02)
 ;;S62.502A
 ;;9002226.02101,"873,S62.502A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.502B ",.01)
 ;;S62.502B
 ;;9002226.02101,"873,S62.502B ",.02)
 ;;S62.502B
 ;;9002226.02101,"873,S62.502B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.509A ",.01)
 ;;S62.509A
 ;;9002226.02101,"873,S62.509A ",.02)
 ;;S62.509A
 ;;9002226.02101,"873,S62.509A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.509B ",.01)
 ;;S62.509B
 ;;9002226.02101,"873,S62.509B ",.02)
 ;;S62.509B
 ;;9002226.02101,"873,S62.509B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.511A ",.01)
 ;;S62.511A
 ;;9002226.02101,"873,S62.511A ",.02)
 ;;S62.511A
 ;;9002226.02101,"873,S62.511A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.511B ",.01)
 ;;S62.511B
 ;;9002226.02101,"873,S62.511B ",.02)
 ;;S62.511B
 ;;9002226.02101,"873,S62.511B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.512A ",.01)
 ;;S62.512A
 ;;9002226.02101,"873,S62.512A ",.02)
 ;;S62.512A
 ;;9002226.02101,"873,S62.512A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.512B ",.01)
 ;;S62.512B
 ;;9002226.02101,"873,S62.512B ",.02)
 ;;S62.512B
 ;;9002226.02101,"873,S62.512B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.513A ",.01)
 ;;S62.513A
 ;;9002226.02101,"873,S62.513A ",.02)
 ;;S62.513A
 ;;9002226.02101,"873,S62.513A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.513B ",.01)
 ;;S62.513B
 ;;9002226.02101,"873,S62.513B ",.02)
 ;;S62.513B
 ;;9002226.02101,"873,S62.513B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.514A ",.01)
 ;;S62.514A
 ;;9002226.02101,"873,S62.514A ",.02)
 ;;S62.514A
 ;;9002226.02101,"873,S62.514A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.514B ",.01)
 ;;S62.514B
 ;;9002226.02101,"873,S62.514B ",.02)
 ;;S62.514B
 ;;9002226.02101,"873,S62.514B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.515A ",.01)
 ;;S62.515A
 ;;9002226.02101,"873,S62.515A ",.02)
 ;;S62.515A
 ;;9002226.02101,"873,S62.515A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.515B ",.01)
 ;;S62.515B
 ;;9002226.02101,"873,S62.515B ",.02)
 ;;S62.515B
 ;;9002226.02101,"873,S62.515B ",.03)
 ;;30