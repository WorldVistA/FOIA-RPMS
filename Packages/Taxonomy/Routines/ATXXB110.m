ATXXB110 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0TWBX7Z ",.02)
 ;;0TWBX7Z 
 ;;9002226.02101,"1804,0TWBX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWBXCZ ",.01)
 ;;0TWBXCZ 
 ;;9002226.02101,"1804,0TWBXCZ ",.02)
 ;;0TWBXCZ 
 ;;9002226.02101,"1804,0TWBXCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWBXDZ ",.01)
 ;;0TWBXDZ 
 ;;9002226.02101,"1804,0TWBXDZ ",.02)
 ;;0TWBXDZ 
 ;;9002226.02101,"1804,0TWBXDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWBXJZ ",.01)
 ;;0TWBXJZ 
 ;;9002226.02101,"1804,0TWBXJZ ",.02)
 ;;0TWBXJZ 
 ;;9002226.02101,"1804,0TWBXJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWBXKZ ",.01)
 ;;0TWBXKZ 
 ;;9002226.02101,"1804,0TWBXKZ ",.02)
 ;;0TWBXKZ 
 ;;9002226.02101,"1804,0TWBXKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWBXLZ ",.01)
 ;;0TWBXLZ 
 ;;9002226.02101,"1804,0TWBXLZ ",.02)
 ;;0TWBXLZ 
 ;;9002226.02101,"1804,0TWBXLZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWBXMZ ",.01)
 ;;0TWBXMZ 
 ;;9002226.02101,"1804,0TWBXMZ ",.02)
 ;;0TWBXMZ 
 ;;9002226.02101,"1804,0TWBXMZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWDX0Z ",.01)
 ;;0TWDX0Z 
 ;;9002226.02101,"1804,0TWDX0Z ",.02)
 ;;0TWDX0Z 
 ;;9002226.02101,"1804,0TWDX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWDX2Z ",.01)
 ;;0TWDX2Z 
 ;;9002226.02101,"1804,0TWDX2Z ",.02)
 ;;0TWDX2Z 
 ;;9002226.02101,"1804,0TWDX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWDX3Z ",.01)
 ;;0TWDX3Z 
 ;;9002226.02101,"1804,0TWDX3Z ",.02)
 ;;0TWDX3Z 
 ;;9002226.02101,"1804,0TWDX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWDX7Z ",.01)
 ;;0TWDX7Z 
 ;;9002226.02101,"1804,0TWDX7Z ",.02)
 ;;0TWDX7Z 
 ;;9002226.02101,"1804,0TWDX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWDXCZ ",.01)
 ;;0TWDXCZ 
 ;;9002226.02101,"1804,0TWDXCZ ",.02)
 ;;0TWDXCZ 
 ;;9002226.02101,"1804,0TWDXCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWDXDZ ",.01)
 ;;0TWDXDZ 
 ;;9002226.02101,"1804,0TWDXDZ ",.02)
 ;;0TWDXDZ 
 ;;9002226.02101,"1804,0TWDXDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWDXJZ ",.01)
 ;;0TWDXJZ 
 ;;9002226.02101,"1804,0TWDXJZ ",.02)
 ;;0TWDXJZ 
 ;;9002226.02101,"1804,0TWDXJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWDXKZ ",.01)
 ;;0TWDXKZ 
 ;;9002226.02101,"1804,0TWDXKZ ",.02)
 ;;0TWDXKZ 
 ;;9002226.02101,"1804,0TWDXKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0TWDXLZ ",.01)
 ;;0TWDXLZ 
 ;;9002226.02101,"1804,0TWDXLZ ",.02)
 ;;0TWDXLZ 
 ;;9002226.02101,"1804,0TWDXLZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0U23X0Z ",.01)
 ;;0U23X0Z 
 ;;9002226.02101,"1804,0U23X0Z ",.02)
 ;;0U23X0Z 
 ;;9002226.02101,"1804,0U23X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0U23XYZ ",.01)
 ;;0U23XYZ 
 ;;9002226.02101,"1804,0U23XYZ ",.02)
 ;;0U23XYZ 
 ;;9002226.02101,"1804,0U23XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0U28X0Z ",.01)
 ;;0U28X0Z 
 ;;9002226.02101,"1804,0U28X0Z ",.02)
 ;;0U28X0Z 
 ;;9002226.02101,"1804,0U28X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0U28XYZ ",.01)
 ;;0U28XYZ 
 ;;9002226.02101,"1804,0U28XYZ ",.02)
 ;;0U28XYZ 
 ;;9002226.02101,"1804,0U28XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0U2DX0Z ",.01)
 ;;0U2DX0Z 
 ;;9002226.02101,"1804,0U2DX0Z ",.02)
 ;;0U2DX0Z 
 ;;9002226.02101,"1804,0U2DX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0U2DXHZ ",.01)
 ;;0U2DXHZ 
 ;;9002226.02101,"1804,0U2DXHZ ",.02)
 ;;0U2DXHZ 
 ;;9002226.02101,"1804,0U2DXHZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0U2DXYZ ",.01)
 ;;0U2DXYZ 
 ;;9002226.02101,"1804,0U2DXYZ ",.02)
 ;;0U2DXYZ 
 ;;9002226.02101,"1804,0U2DXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0U2HX0Z ",.01)
 ;;0U2HX0Z 
 ;;9002226.02101,"1804,0U2HX0Z ",.02)
 ;;0U2HX0Z 
 ;;9002226.02101,"1804,0U2HX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0U2HXGZ ",.01)
 ;;0U2HXGZ 
 ;;9002226.02101,"1804,0U2HXGZ ",.02)
 ;;0U2HXGZ 
 ;;9002226.02101,"1804,0U2HXGZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0U2HXYZ ",.01)
 ;;0U2HXYZ 
 ;;9002226.02101,"1804,0U2HXYZ ",.02)
 ;;0U2HXYZ 
 ;;9002226.02101,"1804,0U2HXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0U2MX0Z ",.01)
 ;;0U2MX0Z 
 ;;9002226.02101,"1804,0U2MX0Z ",.02)
 ;;0U2MX0Z 
 ;;9002226.02101,"1804,0U2MX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0U2MXYZ ",.01)
 ;;0U2MXYZ 
 ;;9002226.02101,"1804,0U2MXYZ ",.02)
 ;;0U2MXYZ 
 ;;9002226.02101,"1804,0U2MXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0U7G7DZ ",.01)
 ;;0U7G7DZ 
 ;;9002226.02101,"1804,0U7G7DZ ",.02)
 ;;0U7G7DZ 
 ;;9002226.02101,"1804,0U7G7DZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0U7G7ZZ ",.01)
 ;;0U7G7ZZ 
 ;;9002226.02101,"1804,0U7G7ZZ ",.02)
 ;;0U7G7ZZ 
 ;;9002226.02101,"1804,0U7G7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0U7G8DZ ",.01)
 ;;0U7G8DZ 
 ;;9002226.02101,"1804,0U7G8DZ ",.02)
 ;;0U7G8DZ 
 ;;9002226.02101,"1804,0U7G8DZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0U7G8ZZ ",.01)
 ;;0U7G8ZZ 
 ;;9002226.02101,"1804,0U7G8ZZ ",.02)
 ;;0U7G8ZZ 
 ;;9002226.02101,"1804,0U7G8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UC97ZZ ",.01)
 ;;0UC97ZZ 
 ;;9002226.02101,"1804,0UC97ZZ ",.02)
 ;;0UC97ZZ 
 ;;9002226.02101,"1804,0UC97ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UC98ZZ ",.01)
 ;;0UC98ZZ 
 ;;9002226.02101,"1804,0UC98ZZ ",.02)
 ;;0UC98ZZ 
 ;;9002226.02101,"1804,0UC98ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UCG7ZZ ",.01)
 ;;0UCG7ZZ 
 ;;9002226.02101,"1804,0UCG7ZZ ",.02)
 ;;0UCG7ZZ 
 ;;9002226.02101,"1804,0UCG7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UCG8ZZ ",.01)
 ;;0UCG8ZZ 
 ;;9002226.02101,"1804,0UCG8ZZ ",.02)
 ;;0UCG8ZZ 
 ;;9002226.02101,"1804,0UCG8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UCGXZZ ",.01)
 ;;0UCGXZZ 
 ;;9002226.02101,"1804,0UCGXZZ ",.02)
 ;;0UCGXZZ 
 ;;9002226.02101,"1804,0UCGXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UCMXZZ ",.01)
 ;;0UCMXZZ 
 ;;9002226.02101,"1804,0UCMXZZ ",.02)
 ;;0UCMXZZ 
 ;;9002226.02101,"1804,0UCMXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UF5XZZ ",.01)
 ;;0UF5XZZ 
 ;;9002226.02101,"1804,0UF5XZZ ",.02)
 ;;0UF5XZZ 
 ;;9002226.02101,"1804,0UF5XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UF6XZZ ",.01)
 ;;0UF6XZZ 
 ;;9002226.02101,"1804,0UF6XZZ ",.02)
 ;;0UF6XZZ 
 ;;9002226.02101,"1804,0UF6XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UF7XZZ ",.01)
 ;;0UF7XZZ 
 ;;9002226.02101,"1804,0UF7XZZ ",.02)
 ;;0UF7XZZ 
 ;;9002226.02101,"1804,0UF7XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UF9XZZ ",.01)
 ;;0UF9XZZ 
 ;;9002226.02101,"1804,0UF9XZZ ",.02)
 ;;0UF9XZZ 
 ;;9002226.02101,"1804,0UF9XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UH303Z ",.01)
 ;;0UH303Z 
 ;;9002226.02101,"1804,0UH303Z ",.02)
 ;;0UH303Z 
 ;;9002226.02101,"1804,0UH303Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UH333Z ",.01)
 ;;0UH333Z 
 ;;9002226.02101,"1804,0UH333Z ",.02)
 ;;0UH333Z 
 ;;9002226.02101,"1804,0UH333Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UH343Z ",.01)
 ;;0UH343Z 
 ;;9002226.02101,"1804,0UH343Z ",.02)
 ;;0UH343Z 
 ;;9002226.02101,"1804,0UH343Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UH803Z ",.01)
 ;;0UH803Z 
 ;;9002226.02101,"1804,0UH803Z ",.02)
 ;;0UH803Z 
 ;;9002226.02101,"1804,0UH803Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UH833Z ",.01)
 ;;0UH833Z 
 ;;9002226.02101,"1804,0UH833Z ",.02)
 ;;0UH833Z 
 ;;9002226.02101,"1804,0UH833Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UH843Z ",.01)
 ;;0UH843Z 
 ;;9002226.02101,"1804,0UH843Z ",.02)
 ;;0UH843Z 
 ;;9002226.02101,"1804,0UH843Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UH873Z ",.01)
 ;;0UH873Z 
 ;;9002226.02101,"1804,0UH873Z ",.02)
 ;;0UH873Z 
 ;;9002226.02101,"1804,0UH873Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UH883Z ",.01)
 ;;0UH883Z 
 ;;9002226.02101,"1804,0UH883Z ",.02)
 ;;0UH883Z 
 ;;9002226.02101,"1804,0UH883Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UH97HZ ",.01)
 ;;0UH97HZ 
 ;;9002226.02101,"1804,0UH97HZ ",.02)
 ;;0UH97HZ 
 ;;9002226.02101,"1804,0UH97HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UH98HZ ",.01)
 ;;0UH98HZ 
 ;;9002226.02101,"1804,0UH98HZ ",.02)
 ;;0UH98HZ 
 ;;9002226.02101,"1804,0UH98HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHC01Z ",.01)
 ;;0UHC01Z 
 ;;9002226.02101,"1804,0UHC01Z ",.02)
 ;;0UHC01Z 
 ;;9002226.02101,"1804,0UHC01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHC31Z ",.01)
 ;;0UHC31Z 
 ;;9002226.02101,"1804,0UHC31Z ",.02)
 ;;0UHC31Z 
 ;;9002226.02101,"1804,0UHC31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHC41Z ",.01)
 ;;0UHC41Z 
 ;;9002226.02101,"1804,0UHC41Z ",.02)
 ;;0UHC41Z 
 ;;9002226.02101,"1804,0UHC41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHC71Z ",.01)
 ;;0UHC71Z 
 ;;9002226.02101,"1804,0UHC71Z ",.02)
 ;;0UHC71Z 
 ;;9002226.02101,"1804,0UHC71Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHC7HZ ",.01)
 ;;0UHC7HZ 
 ;;9002226.02101,"1804,0UHC7HZ ",.02)
 ;;0UHC7HZ 
 ;;9002226.02101,"1804,0UHC7HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHC81Z ",.01)
 ;;0UHC81Z 
 ;;9002226.02101,"1804,0UHC81Z ",.02)
 ;;0UHC81Z 
 ;;9002226.02101,"1804,0UHC81Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHC8HZ ",.01)
 ;;0UHC8HZ 
 ;;9002226.02101,"1804,0UHC8HZ ",.02)
 ;;0UHC8HZ 
 ;;9002226.02101,"1804,0UHC8HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHF7GZ ",.01)
 ;;0UHF7GZ 
 ;;9002226.02101,"1804,0UHF7GZ ",.02)
 ;;0UHF7GZ 
 ;;9002226.02101,"1804,0UHF7GZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHF8GZ ",.01)
 ;;0UHF8GZ 
 ;;9002226.02101,"1804,0UHF8GZ ",.02)
 ;;0UHF8GZ 
 ;;9002226.02101,"1804,0UHF8GZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHG01Z ",.01)
 ;;0UHG01Z 
 ;;9002226.02101,"1804,0UHG01Z ",.02)
 ;;0UHG01Z 
 ;;9002226.02101,"1804,0UHG01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHG31Z ",.01)
 ;;0UHG31Z 
 ;;9002226.02101,"1804,0UHG31Z ",.02)
 ;;0UHG31Z 
 ;;9002226.02101,"1804,0UHG31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHG41Z ",.01)
 ;;0UHG41Z 
 ;;9002226.02101,"1804,0UHG41Z ",.02)
 ;;0UHG41Z 
 ;;9002226.02101,"1804,0UHG41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHG71Z ",.01)
 ;;0UHG71Z 
 ;;9002226.02101,"1804,0UHG71Z ",.02)
 ;;0UHG71Z 
 ;;9002226.02101,"1804,0UHG71Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHG7GZ ",.01)
 ;;0UHG7GZ 
 ;;9002226.02101,"1804,0UHG7GZ ",.02)
 ;;0UHG7GZ 
 ;;9002226.02101,"1804,0UHG7GZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHG81Z ",.01)
 ;;0UHG81Z 
 ;;9002226.02101,"1804,0UHG81Z ",.02)
 ;;0UHG81Z 
 ;;9002226.02101,"1804,0UHG81Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHG8GZ ",.01)
 ;;0UHG8GZ 
 ;;9002226.02101,"1804,0UHG8GZ ",.02)
 ;;0UHG8GZ 
 ;;9002226.02101,"1804,0UHG8GZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UHGX1Z ",.01)
 ;;0UHGX1Z 
 ;;9002226.02101,"1804,0UHGX1Z ",.02)
 ;;0UHGX1Z 
 ;;9002226.02101,"1804,0UHGX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UJ3XZZ ",.01)
 ;;0UJ3XZZ 
 ;;9002226.02101,"1804,0UJ3XZZ ",.02)
 ;;0UJ3XZZ 
 ;;9002226.02101,"1804,0UJ3XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UJ8XZZ ",.01)
 ;;0UJ8XZZ 
 ;;9002226.02101,"1804,0UJ8XZZ ",.02)
 ;;0UJ8XZZ 
 ;;9002226.02101,"1804,0UJ8XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UJDXZZ ",.01)
 ;;0UJDXZZ 
 ;;9002226.02101,"1804,0UJDXZZ ",.02)
 ;;0UJDXZZ 
 ;;9002226.02101,"1804,0UJDXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UJHXZZ ",.01)
 ;;0UJHXZZ 
 ;;9002226.02101,"1804,0UJHXZZ ",.02)
 ;;0UJHXZZ 
 ;;9002226.02101,"1804,0UJHXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UJMXZZ ",.01)
 ;;0UJMXZZ 
 ;;9002226.02101,"1804,0UJMXZZ ",.02)
 ;;0UJMXZZ 
 ;;9002226.02101,"1804,0UJMXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0UP3X0Z ",.01)
 ;;0UP3X0Z 
 ;;9002226.02101,"1804,0UP3X0Z ",.02)
 ;;0UP3X0Z 
 ;;9002226.02101,"1804,0UP3X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UP3X3Z ",.01)
 ;;0UP3X3Z 
 ;;9002226.02101,"1804,0UP3X3Z ",.02)
 ;;0UP3X3Z 
 ;;9002226.02101,"1804,0UP3X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UP8X0Z ",.01)
 ;;0UP8X0Z 
 ;;9002226.02101,"1804,0UP8X0Z ",.02)
 ;;0UP8X0Z 
 ;;9002226.02101,"1804,0UP8X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UP8X3Z ",.01)
 ;;0UP8X3Z 
 ;;9002226.02101,"1804,0UP8X3Z ",.02)
 ;;0UP8X3Z 
 ;;9002226.02101,"1804,0UP8X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0UP8XDZ ",.01)
 ;;0UP8XDZ 
 ;;9002226.02101,"1804,0UP8XDZ ",.02)
 ;;0UP8XDZ 