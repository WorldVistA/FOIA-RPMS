ATXXA138 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,T22.742A ",.02)
 ;;T22.742A
 ;;9002226.02101,"873,T22.742A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.749A ",.01)
 ;;T22.749A
 ;;9002226.02101,"873,T22.749A ",.02)
 ;;T22.749A
 ;;9002226.02101,"873,T22.749A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.751A ",.01)
 ;;T22.751A
 ;;9002226.02101,"873,T22.751A ",.02)
 ;;T22.751A
 ;;9002226.02101,"873,T22.751A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.752A ",.01)
 ;;T22.752A
 ;;9002226.02101,"873,T22.752A ",.02)
 ;;T22.752A
 ;;9002226.02101,"873,T22.752A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.759A ",.01)
 ;;T22.759A
 ;;9002226.02101,"873,T22.759A ",.02)
 ;;T22.759A
 ;;9002226.02101,"873,T22.759A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.761A ",.01)
 ;;T22.761A
 ;;9002226.02101,"873,T22.761A ",.02)
 ;;T22.761A
 ;;9002226.02101,"873,T22.761A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.762A ",.01)
 ;;T22.762A
 ;;9002226.02101,"873,T22.762A ",.02)
 ;;T22.762A
 ;;9002226.02101,"873,T22.762A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.769A ",.01)
 ;;T22.769A
 ;;9002226.02101,"873,T22.769A ",.02)
 ;;T22.769A
 ;;9002226.02101,"873,T22.769A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.791A ",.01)
 ;;T22.791A
 ;;9002226.02101,"873,T22.791A ",.02)
 ;;T22.791A
 ;;9002226.02101,"873,T22.791A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.792A ",.01)
 ;;T22.792A
 ;;9002226.02101,"873,T22.792A ",.02)
 ;;T22.792A
 ;;9002226.02101,"873,T22.792A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.799A ",.01)
 ;;T22.799A
 ;;9002226.02101,"873,T22.799A ",.02)
 ;;T22.799A
 ;;9002226.02101,"873,T22.799A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.001A ",.01)
 ;;T23.001A
 ;;9002226.02101,"873,T23.001A ",.02)
 ;;T23.001A
 ;;9002226.02101,"873,T23.001A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.002A ",.01)
 ;;T23.002A
 ;;9002226.02101,"873,T23.002A ",.02)
 ;;T23.002A
 ;;9002226.02101,"873,T23.002A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.009A ",.01)
 ;;T23.009A
 ;;9002226.02101,"873,T23.009A ",.02)
 ;;T23.009A
 ;;9002226.02101,"873,T23.009A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.011A ",.01)
 ;;T23.011A
 ;;9002226.02101,"873,T23.011A ",.02)
 ;;T23.011A
 ;;9002226.02101,"873,T23.011A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.012A ",.01)
 ;;T23.012A
 ;;9002226.02101,"873,T23.012A ",.02)
 ;;T23.012A
 ;;9002226.02101,"873,T23.012A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.019A ",.01)
 ;;T23.019A
 ;;9002226.02101,"873,T23.019A ",.02)
 ;;T23.019A
 ;;9002226.02101,"873,T23.019A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.021A ",.01)
 ;;T23.021A
 ;;9002226.02101,"873,T23.021A ",.02)
 ;;T23.021A
 ;;9002226.02101,"873,T23.021A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.022A ",.01)
 ;;T23.022A
 ;;9002226.02101,"873,T23.022A ",.02)
 ;;T23.022A
 ;;9002226.02101,"873,T23.022A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.029A ",.01)
 ;;T23.029A
 ;;9002226.02101,"873,T23.029A ",.02)
 ;;T23.029A
 ;;9002226.02101,"873,T23.029A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.031A ",.01)
 ;;T23.031A
 ;;9002226.02101,"873,T23.031A ",.02)
 ;;T23.031A
 ;;9002226.02101,"873,T23.031A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.032A ",.01)
 ;;T23.032A
 ;;9002226.02101,"873,T23.032A ",.02)
 ;;T23.032A
 ;;9002226.02101,"873,T23.032A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.039A ",.01)
 ;;T23.039A
 ;;9002226.02101,"873,T23.039A ",.02)
 ;;T23.039A
 ;;9002226.02101,"873,T23.039A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.041A ",.01)
 ;;T23.041A
 ;;9002226.02101,"873,T23.041A ",.02)
 ;;T23.041A
 ;;9002226.02101,"873,T23.041A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.042A ",.01)
 ;;T23.042A
 ;;9002226.02101,"873,T23.042A ",.02)
 ;;T23.042A
 ;;9002226.02101,"873,T23.042A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.049A ",.01)
 ;;T23.049A
 ;;9002226.02101,"873,T23.049A ",.02)
 ;;T23.049A
 ;;9002226.02101,"873,T23.049A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.051A ",.01)
 ;;T23.051A
 ;;9002226.02101,"873,T23.051A ",.02)
 ;;T23.051A
 ;;9002226.02101,"873,T23.051A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.052A ",.01)
 ;;T23.052A
 ;;9002226.02101,"873,T23.052A ",.02)
 ;;T23.052A
 ;;9002226.02101,"873,T23.052A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.059A ",.01)
 ;;T23.059A
 ;;9002226.02101,"873,T23.059A ",.02)
 ;;T23.059A
 ;;9002226.02101,"873,T23.059A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.061A ",.01)
 ;;T23.061A
 ;;9002226.02101,"873,T23.061A ",.02)
 ;;T23.061A
 ;;9002226.02101,"873,T23.061A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.062A ",.01)
 ;;T23.062A
 ;;9002226.02101,"873,T23.062A ",.02)
 ;;T23.062A
 ;;9002226.02101,"873,T23.062A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.069A ",.01)
 ;;T23.069A
 ;;9002226.02101,"873,T23.069A ",.02)
 ;;T23.069A
 ;;9002226.02101,"873,T23.069A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.071A ",.01)
 ;;T23.071A
 ;;9002226.02101,"873,T23.071A ",.02)
 ;;T23.071A
 ;;9002226.02101,"873,T23.071A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.072A ",.01)
 ;;T23.072A
 ;;9002226.02101,"873,T23.072A ",.02)
 ;;T23.072A
 ;;9002226.02101,"873,T23.072A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.079A ",.01)
 ;;T23.079A
 ;;9002226.02101,"873,T23.079A ",.02)
 ;;T23.079A
 ;;9002226.02101,"873,T23.079A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.091A ",.01)
 ;;T23.091A
 ;;9002226.02101,"873,T23.091A ",.02)
 ;;T23.091A
 ;;9002226.02101,"873,T23.091A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.092A ",.01)
 ;;T23.092A
 ;;9002226.02101,"873,T23.092A ",.02)
 ;;T23.092A
 ;;9002226.02101,"873,T23.092A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.099A ",.01)
 ;;T23.099A
 ;;9002226.02101,"873,T23.099A ",.02)
 ;;T23.099A
 ;;9002226.02101,"873,T23.099A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.101A ",.01)
 ;;T23.101A
 ;;9002226.02101,"873,T23.101A ",.02)
 ;;T23.101A
 ;;9002226.02101,"873,T23.101A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.102A ",.01)
 ;;T23.102A
 ;;9002226.02101,"873,T23.102A ",.02)
 ;;T23.102A
 ;;9002226.02101,"873,T23.102A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.109A ",.01)
 ;;T23.109A
 ;;9002226.02101,"873,T23.109A ",.02)
 ;;T23.109A
 ;;9002226.02101,"873,T23.109A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.111A ",.01)
 ;;T23.111A
 ;;9002226.02101,"873,T23.111A ",.02)
 ;;T23.111A
 ;;9002226.02101,"873,T23.111A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.112A ",.01)
 ;;T23.112A
 ;;9002226.02101,"873,T23.112A ",.02)
 ;;T23.112A
 ;;9002226.02101,"873,T23.112A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.119A ",.01)
 ;;T23.119A
 ;;9002226.02101,"873,T23.119A ",.02)
 ;;T23.119A
 ;;9002226.02101,"873,T23.119A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.121A ",.01)
 ;;T23.121A
 ;;9002226.02101,"873,T23.121A ",.02)
 ;;T23.121A
 ;;9002226.02101,"873,T23.121A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.122A ",.01)
 ;;T23.122A
 ;;9002226.02101,"873,T23.122A ",.02)
 ;;T23.122A
 ;;9002226.02101,"873,T23.122A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.129A ",.01)
 ;;T23.129A
 ;;9002226.02101,"873,T23.129A ",.02)
 ;;T23.129A
 ;;9002226.02101,"873,T23.129A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.131A ",.01)
 ;;T23.131A
 ;;9002226.02101,"873,T23.131A ",.02)
 ;;T23.131A
 ;;9002226.02101,"873,T23.131A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.132A ",.01)
 ;;T23.132A
 ;;9002226.02101,"873,T23.132A ",.02)
 ;;T23.132A
 ;;9002226.02101,"873,T23.132A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.139A ",.01)
 ;;T23.139A
 ;;9002226.02101,"873,T23.139A ",.02)
 ;;T23.139A
 ;;9002226.02101,"873,T23.139A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.141A ",.01)
 ;;T23.141A
 ;;9002226.02101,"873,T23.141A ",.02)
 ;;T23.141A
 ;;9002226.02101,"873,T23.141A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.142A ",.01)
 ;;T23.142A
 ;;9002226.02101,"873,T23.142A ",.02)
 ;;T23.142A
 ;;9002226.02101,"873,T23.142A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.149A ",.01)
 ;;T23.149A
 ;;9002226.02101,"873,T23.149A ",.02)
 ;;T23.149A
 ;;9002226.02101,"873,T23.149A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.151A ",.01)
 ;;T23.151A
 ;;9002226.02101,"873,T23.151A ",.02)
 ;;T23.151A
 ;;9002226.02101,"873,T23.151A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.152A ",.01)
 ;;T23.152A
 ;;9002226.02101,"873,T23.152A ",.02)
 ;;T23.152A
 ;;9002226.02101,"873,T23.152A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.159A ",.01)
 ;;T23.159A
 ;;9002226.02101,"873,T23.159A ",.02)
 ;;T23.159A
 ;;9002226.02101,"873,T23.159A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.161A ",.01)
 ;;T23.161A
 ;;9002226.02101,"873,T23.161A ",.02)
 ;;T23.161A
 ;;9002226.02101,"873,T23.161A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.162A ",.01)
 ;;T23.162A
 ;;9002226.02101,"873,T23.162A ",.02)
 ;;T23.162A
 ;;9002226.02101,"873,T23.162A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.169A ",.01)
 ;;T23.169A
 ;;9002226.02101,"873,T23.169A ",.02)
 ;;T23.169A
 ;;9002226.02101,"873,T23.169A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.171A ",.01)
 ;;T23.171A
 ;;9002226.02101,"873,T23.171A ",.02)
 ;;T23.171A
 ;;9002226.02101,"873,T23.171A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.172A ",.01)
 ;;T23.172A
 ;;9002226.02101,"873,T23.172A ",.02)
 ;;T23.172A
 ;;9002226.02101,"873,T23.172A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.179A ",.01)
 ;;T23.179A
 ;;9002226.02101,"873,T23.179A ",.02)
 ;;T23.179A
 ;;9002226.02101,"873,T23.179A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.191A ",.01)
 ;;T23.191A
 ;;9002226.02101,"873,T23.191A ",.02)
 ;;T23.191A
 ;;9002226.02101,"873,T23.191A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.192A ",.01)
 ;;T23.192A
 ;;9002226.02101,"873,T23.192A ",.02)
 ;;T23.192A
 ;;9002226.02101,"873,T23.192A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.199A ",.01)
 ;;T23.199A
 ;;9002226.02101,"873,T23.199A ",.02)
 ;;T23.199A
 ;;9002226.02101,"873,T23.199A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.201A ",.01)
 ;;T23.201A
 ;;9002226.02101,"873,T23.201A ",.02)
 ;;T23.201A
 ;;9002226.02101,"873,T23.201A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.202A ",.01)
 ;;T23.202A
 ;;9002226.02101,"873,T23.202A ",.02)
 ;;T23.202A
 ;;9002226.02101,"873,T23.202A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.209A ",.01)
 ;;T23.209A
 ;;9002226.02101,"873,T23.209A ",.02)
 ;;T23.209A
 ;;9002226.02101,"873,T23.209A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.211A ",.01)
 ;;T23.211A
 ;;9002226.02101,"873,T23.211A ",.02)
 ;;T23.211A
 ;;9002226.02101,"873,T23.211A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.212A ",.01)
 ;;T23.212A
 ;;9002226.02101,"873,T23.212A ",.02)
 ;;T23.212A
 ;;9002226.02101,"873,T23.212A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.219A ",.01)
 ;;T23.219A
 ;;9002226.02101,"873,T23.219A ",.02)
 ;;T23.219A
 ;;9002226.02101,"873,T23.219A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.221A ",.01)
 ;;T23.221A
 ;;9002226.02101,"873,T23.221A ",.02)
 ;;T23.221A
 ;;9002226.02101,"873,T23.221A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.222A ",.01)
 ;;T23.222A
 ;;9002226.02101,"873,T23.222A ",.02)
 ;;T23.222A
 ;;9002226.02101,"873,T23.222A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.229A ",.01)
 ;;T23.229A
 ;;9002226.02101,"873,T23.229A ",.02)
 ;;T23.229A
 ;;9002226.02101,"873,T23.229A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.231A ",.01)
 ;;T23.231A
 ;;9002226.02101,"873,T23.231A ",.02)
 ;;T23.231A
 ;;9002226.02101,"873,T23.231A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.232A ",.01)
 ;;T23.232A
 ;;9002226.02101,"873,T23.232A ",.02)
 ;;T23.232A
 ;;9002226.02101,"873,T23.232A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.239A ",.01)
 ;;T23.239A
 ;;9002226.02101,"873,T23.239A ",.02)
 ;;T23.239A
 ;;9002226.02101,"873,T23.239A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.241A ",.01)
 ;;T23.241A
 ;;9002226.02101,"873,T23.241A ",.02)
 ;;T23.241A
 ;;9002226.02101,"873,T23.241A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.242A ",.01)
 ;;T23.242A
 ;;9002226.02101,"873,T23.242A ",.02)
 ;;T23.242A