ATXXA36 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S12.501B ",.01)
 ;;S12.501B
 ;;9002226.02101,"873,S12.501B ",.02)
 ;;S12.501B
 ;;9002226.02101,"873,S12.501B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.530A ",.01)
 ;;S12.530A
 ;;9002226.02101,"873,S12.530A ",.02)
 ;;S12.530A
 ;;9002226.02101,"873,S12.530A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.530B ",.01)
 ;;S12.530B
 ;;9002226.02101,"873,S12.530B ",.02)
 ;;S12.530B
 ;;9002226.02101,"873,S12.530B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.531A ",.01)
 ;;S12.531A
 ;;9002226.02101,"873,S12.531A ",.02)
 ;;S12.531A
 ;;9002226.02101,"873,S12.531A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.531B ",.01)
 ;;S12.531B
 ;;9002226.02101,"873,S12.531B ",.02)
 ;;S12.531B
 ;;9002226.02101,"873,S12.531B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.54XA ",.01)
 ;;S12.54XA
 ;;9002226.02101,"873,S12.54XA ",.02)
 ;;S12.54XA
 ;;9002226.02101,"873,S12.54XA ",.03)
 ;;30
 ;;9002226.02101,"873,S12.54XB ",.01)
 ;;S12.54XB
 ;;9002226.02101,"873,S12.54XB ",.02)
 ;;S12.54XB
 ;;9002226.02101,"873,S12.54XB ",.03)
 ;;30
 ;;9002226.02101,"873,S12.550A ",.01)
 ;;S12.550A
 ;;9002226.02101,"873,S12.550A ",.02)
 ;;S12.550A
 ;;9002226.02101,"873,S12.550A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.550B ",.01)
 ;;S12.550B
 ;;9002226.02101,"873,S12.550B ",.02)
 ;;S12.550B
 ;;9002226.02101,"873,S12.550B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.551A ",.01)
 ;;S12.551A
 ;;9002226.02101,"873,S12.551A ",.02)
 ;;S12.551A
 ;;9002226.02101,"873,S12.551A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.551B ",.01)
 ;;S12.551B
 ;;9002226.02101,"873,S12.551B ",.02)
 ;;S12.551B
 ;;9002226.02101,"873,S12.551B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.590A ",.01)
 ;;S12.590A
 ;;9002226.02101,"873,S12.590A ",.02)
 ;;S12.590A
 ;;9002226.02101,"873,S12.590A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.590B ",.01)
 ;;S12.590B
 ;;9002226.02101,"873,S12.590B ",.02)
 ;;S12.590B
 ;;9002226.02101,"873,S12.590B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.591A ",.01)
 ;;S12.591A
 ;;9002226.02101,"873,S12.591A ",.02)
 ;;S12.591A
 ;;9002226.02101,"873,S12.591A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.591B ",.01)
 ;;S12.591B
 ;;9002226.02101,"873,S12.591B ",.02)
 ;;S12.591B
 ;;9002226.02101,"873,S12.591B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.600A ",.01)
 ;;S12.600A
 ;;9002226.02101,"873,S12.600A ",.02)
 ;;S12.600A
 ;;9002226.02101,"873,S12.600A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.600B ",.01)
 ;;S12.600B
 ;;9002226.02101,"873,S12.600B ",.02)
 ;;S12.600B
 ;;9002226.02101,"873,S12.600B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.601A ",.01)
 ;;S12.601A
 ;;9002226.02101,"873,S12.601A ",.02)
 ;;S12.601A
 ;;9002226.02101,"873,S12.601A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.601B ",.01)
 ;;S12.601B
 ;;9002226.02101,"873,S12.601B ",.02)
 ;;S12.601B
 ;;9002226.02101,"873,S12.601B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.630A ",.01)
 ;;S12.630A
 ;;9002226.02101,"873,S12.630A ",.02)
 ;;S12.630A
 ;;9002226.02101,"873,S12.630A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.630B ",.01)
 ;;S12.630B
 ;;9002226.02101,"873,S12.630B ",.02)
 ;;S12.630B
 ;;9002226.02101,"873,S12.630B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.631A ",.01)
 ;;S12.631A
 ;;9002226.02101,"873,S12.631A ",.02)
 ;;S12.631A
 ;;9002226.02101,"873,S12.631A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.631B ",.01)
 ;;S12.631B
 ;;9002226.02101,"873,S12.631B ",.02)
 ;;S12.631B
 ;;9002226.02101,"873,S12.631B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.64XA ",.01)
 ;;S12.64XA
 ;;9002226.02101,"873,S12.64XA ",.02)
 ;;S12.64XA
 ;;9002226.02101,"873,S12.64XA ",.03)
 ;;30
 ;;9002226.02101,"873,S12.64XB ",.01)
 ;;S12.64XB
 ;;9002226.02101,"873,S12.64XB ",.02)
 ;;S12.64XB
 ;;9002226.02101,"873,S12.64XB ",.03)
 ;;30
 ;;9002226.02101,"873,S12.650A ",.01)
 ;;S12.650A
 ;;9002226.02101,"873,S12.650A ",.02)
 ;;S12.650A
 ;;9002226.02101,"873,S12.650A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.650B ",.01)
 ;;S12.650B
 ;;9002226.02101,"873,S12.650B ",.02)
 ;;S12.650B
 ;;9002226.02101,"873,S12.650B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.651A ",.01)
 ;;S12.651A
 ;;9002226.02101,"873,S12.651A ",.02)
 ;;S12.651A
 ;;9002226.02101,"873,S12.651A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.651B ",.01)
 ;;S12.651B
 ;;9002226.02101,"873,S12.651B ",.02)
 ;;S12.651B
 ;;9002226.02101,"873,S12.651B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.690A ",.01)
 ;;S12.690A
 ;;9002226.02101,"873,S12.690A ",.02)
 ;;S12.690A
 ;;9002226.02101,"873,S12.690A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.690B ",.01)
 ;;S12.690B
 ;;9002226.02101,"873,S12.690B ",.02)
 ;;S12.690B
 ;;9002226.02101,"873,S12.690B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.691A ",.01)
 ;;S12.691A
 ;;9002226.02101,"873,S12.691A ",.02)
 ;;S12.691A
 ;;9002226.02101,"873,S12.691A ",.03)
 ;;30
 ;;9002226.02101,"873,S12.691B ",.01)
 ;;S12.691B
 ;;9002226.02101,"873,S12.691B ",.02)
 ;;S12.691B
 ;;9002226.02101,"873,S12.691B ",.03)
 ;;30
 ;;9002226.02101,"873,S12.8XXA ",.01)
 ;;S12.8XXA
 ;;9002226.02101,"873,S12.8XXA ",.02)
 ;;S12.8XXA
 ;;9002226.02101,"873,S12.8XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S12.9XXA ",.01)
 ;;S12.9XXA
 ;;9002226.02101,"873,S12.9XXA ",.02)
 ;;S12.9XXA
 ;;9002226.02101,"873,S12.9XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S13.0XXA ",.01)
 ;;S13.0XXA
 ;;9002226.02101,"873,S13.0XXA ",.02)
 ;;S13.0XXA
 ;;9002226.02101,"873,S13.0XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S13.100A ",.01)
 ;;S13.100A
 ;;9002226.02101,"873,S13.100A ",.02)
 ;;S13.100A
 ;;9002226.02101,"873,S13.100A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.101A ",.01)
 ;;S13.101A
 ;;9002226.02101,"873,S13.101A ",.02)
 ;;S13.101A
 ;;9002226.02101,"873,S13.101A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.110A ",.01)
 ;;S13.110A
 ;;9002226.02101,"873,S13.110A ",.02)
 ;;S13.110A
 ;;9002226.02101,"873,S13.110A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.111A ",.01)
 ;;S13.111A
 ;;9002226.02101,"873,S13.111A ",.02)
 ;;S13.111A
 ;;9002226.02101,"873,S13.111A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.120A ",.01)
 ;;S13.120A
 ;;9002226.02101,"873,S13.120A ",.02)
 ;;S13.120A
 ;;9002226.02101,"873,S13.120A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.121A ",.01)
 ;;S13.121A
 ;;9002226.02101,"873,S13.121A ",.02)
 ;;S13.121A
 ;;9002226.02101,"873,S13.121A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.130A ",.01)
 ;;S13.130A
 ;;9002226.02101,"873,S13.130A ",.02)
 ;;S13.130A
 ;;9002226.02101,"873,S13.130A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.131A ",.01)
 ;;S13.131A
 ;;9002226.02101,"873,S13.131A ",.02)
 ;;S13.131A
 ;;9002226.02101,"873,S13.131A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.140A ",.01)
 ;;S13.140A
 ;;9002226.02101,"873,S13.140A ",.02)
 ;;S13.140A
 ;;9002226.02101,"873,S13.140A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.141A ",.01)
 ;;S13.141A
 ;;9002226.02101,"873,S13.141A ",.02)
 ;;S13.141A
 ;;9002226.02101,"873,S13.141A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.150A ",.01)
 ;;S13.150A
 ;;9002226.02101,"873,S13.150A ",.02)
 ;;S13.150A
 ;;9002226.02101,"873,S13.150A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.151A ",.01)
 ;;S13.151A
 ;;9002226.02101,"873,S13.151A ",.02)
 ;;S13.151A
 ;;9002226.02101,"873,S13.151A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.160A ",.01)
 ;;S13.160A
 ;;9002226.02101,"873,S13.160A ",.02)
 ;;S13.160A
 ;;9002226.02101,"873,S13.160A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.161A ",.01)
 ;;S13.161A
 ;;9002226.02101,"873,S13.161A ",.02)
 ;;S13.161A
 ;;9002226.02101,"873,S13.161A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.170A ",.01)
 ;;S13.170A
 ;;9002226.02101,"873,S13.170A ",.02)
 ;;S13.170A
 ;;9002226.02101,"873,S13.170A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.171A ",.01)
 ;;S13.171A
 ;;9002226.02101,"873,S13.171A ",.02)
 ;;S13.171A
 ;;9002226.02101,"873,S13.171A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.180A ",.01)
 ;;S13.180A
 ;;9002226.02101,"873,S13.180A ",.02)
 ;;S13.180A
 ;;9002226.02101,"873,S13.180A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.181A ",.01)
 ;;S13.181A
 ;;9002226.02101,"873,S13.181A ",.02)
 ;;S13.181A
 ;;9002226.02101,"873,S13.181A ",.03)
 ;;30
 ;;9002226.02101,"873,S13.20XA ",.01)
 ;;S13.20XA
 ;;9002226.02101,"873,S13.20XA ",.02)
 ;;S13.20XA
 ;;9002226.02101,"873,S13.20XA ",.03)
 ;;30
 ;;9002226.02101,"873,S13.29XA ",.01)
 ;;S13.29XA
 ;;9002226.02101,"873,S13.29XA ",.02)
 ;;S13.29XA
 ;;9002226.02101,"873,S13.29XA ",.03)
 ;;30
 ;;9002226.02101,"873,S13.4XXA ",.01)
 ;;S13.4XXA
 ;;9002226.02101,"873,S13.4XXA ",.02)
 ;;S13.4XXA
 ;;9002226.02101,"873,S13.4XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S13.5XXA ",.01)
 ;;S13.5XXA
 ;;9002226.02101,"873,S13.5XXA ",.02)
 ;;S13.5XXA
 ;;9002226.02101,"873,S13.5XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S13.8XXA ",.01)
 ;;S13.8XXA
 ;;9002226.02101,"873,S13.8XXA ",.02)
 ;;S13.8XXA
 ;;9002226.02101,"873,S13.8XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S13.9XXA ",.01)
 ;;S13.9XXA
 ;;9002226.02101,"873,S13.9XXA ",.02)
 ;;S13.9XXA
 ;;9002226.02101,"873,S13.9XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S14.0XXA ",.01)
 ;;S14.0XXA
 ;;9002226.02101,"873,S14.0XXA ",.02)
 ;;S14.0XXA
 ;;9002226.02101,"873,S14.0XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S14.101A ",.01)
 ;;S14.101A
 ;;9002226.02101,"873,S14.101A ",.02)
 ;;S14.101A
 ;;9002226.02101,"873,S14.101A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.102A ",.01)
 ;;S14.102A
 ;;9002226.02101,"873,S14.102A ",.02)
 ;;S14.102A
 ;;9002226.02101,"873,S14.102A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.103A ",.01)
 ;;S14.103A
 ;;9002226.02101,"873,S14.103A ",.02)
 ;;S14.103A
 ;;9002226.02101,"873,S14.103A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.104A ",.01)
 ;;S14.104A
 ;;9002226.02101,"873,S14.104A ",.02)
 ;;S14.104A
 ;;9002226.02101,"873,S14.104A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.105A ",.01)
 ;;S14.105A
 ;;9002226.02101,"873,S14.105A ",.02)
 ;;S14.105A
 ;;9002226.02101,"873,S14.105A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.106A ",.01)
 ;;S14.106A
 ;;9002226.02101,"873,S14.106A ",.02)
 ;;S14.106A
 ;;9002226.02101,"873,S14.106A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.107A ",.01)
 ;;S14.107A
 ;;9002226.02101,"873,S14.107A ",.02)
 ;;S14.107A
 ;;9002226.02101,"873,S14.107A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.108A ",.01)
 ;;S14.108A
 ;;9002226.02101,"873,S14.108A ",.02)
 ;;S14.108A
 ;;9002226.02101,"873,S14.108A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.109A ",.01)
 ;;S14.109A
 ;;9002226.02101,"873,S14.109A ",.02)
 ;;S14.109A
 ;;9002226.02101,"873,S14.109A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.111A ",.01)
 ;;S14.111A
 ;;9002226.02101,"873,S14.111A ",.02)
 ;;S14.111A
 ;;9002226.02101,"873,S14.111A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.112A ",.01)
 ;;S14.112A
 ;;9002226.02101,"873,S14.112A ",.02)
 ;;S14.112A
 ;;9002226.02101,"873,S14.112A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.113A ",.01)
 ;;S14.113A
 ;;9002226.02101,"873,S14.113A ",.02)
 ;;S14.113A
 ;;9002226.02101,"873,S14.113A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.114A ",.01)
 ;;S14.114A
 ;;9002226.02101,"873,S14.114A ",.02)
 ;;S14.114A
 ;;9002226.02101,"873,S14.114A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.115A ",.01)
 ;;S14.115A
 ;;9002226.02101,"873,S14.115A ",.02)
 ;;S14.115A
 ;;9002226.02101,"873,S14.115A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.116A ",.01)
 ;;S14.116A
 ;;9002226.02101,"873,S14.116A ",.02)
 ;;S14.116A
 ;;9002226.02101,"873,S14.116A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.117A ",.01)
 ;;S14.117A
 ;;9002226.02101,"873,S14.117A ",.02)
 ;;S14.117A
 ;;9002226.02101,"873,S14.117A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.118A ",.01)
 ;;S14.118A
 ;;9002226.02101,"873,S14.118A ",.02)
 ;;S14.118A
 ;;9002226.02101,"873,S14.118A ",.03)
 ;;30
 ;;9002226.02101,"873,S14.119A ",.01)
 ;;S14.119A