IBDEI016	; ; 18-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	Q:'DIFQR(358.5)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,358.5,216,0)
	;;=SC CONDITION 2^57^11^^2
	;;^UTILITY(U,$J,358.5,216,2,0)
	;;=^357.52I^2^2
	;;^UTILITY(U,$J,358.5,216,2,1,0)
	;;=CONDITION^^I^^^6^1^40^1
	;;^UTILITY(U,$J,358.5,216,2,2,0)
	;;=%^^I^^^6^42^4^3
	;;^UTILITY(U,$J,358.5,217,0)
	;;=SC CONDITION 3^57^11^^3
	;;^UTILITY(U,$J,358.5,217,2,0)
	;;=^357.52I^2^2
	;;^UTILITY(U,$J,358.5,217,2,1,0)
	;;=CONDITION^^I^^^7^1^40^1
	;;^UTILITY(U,$J,358.5,217,2,2,0)
	;;=%^^I^^^7^42^4^3
	;;^UTILITY(U,$J,358.5,218,0)
	;;=SC CONDITION 4^57^11^1^4
	;;^UTILITY(U,$J,358.5,218,2,0)
	;;=^357.52I^2^2
	;;^UTILITY(U,$J,358.5,218,2,1,0)
	;;=CONDITION^^I^^^8^1^40^1
	;;^UTILITY(U,$J,358.5,218,2,2,0)
	;;=%^^I^^^8^42^4^3
	;;^UTILITY(U,$J,358.5,219,0)
	;;=SEX^57^23
	;;^UTILITY(U,$J,358.5,219,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,219,2,1,0)
	;;=Sex:^^^40^2^2^45^1^2
	;;^UTILITY(U,$J,358.5,220,0)
	;;=ELIGIBILITY^57^8
	;;^UTILITY(U,$J,358.5,220,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,220,2,1,0)
	;;=Eligibility:^^^1^3^3^14^30^1
	;;^UTILITY(U,$J,358.5,221,0)
	;;=MEANS TEST CATEGORY^57^24
	;;^UTILITY(U,$J,358.5,221,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,221,2,1,0)
	;;=Means Test Cat:^^^29^4^4^45^1^3
	;;^UTILITY(U,$J,358.5,222,0)
	;;=SERVICE HISTORY DATA^57^25
	;;^UTILITY(U,$J,358.5,222,2,0)
	;;=^357.52I^4^4
	;;^UTILITY(U,$J,358.5,222,2,1,0)
	;;=AO:^^^1^9^9^5^3^2
	;;^UTILITY(U,$J,358.5,222,2,2,0)
	;;=IR:^^^9^9^9^13^3^3
	;;^UTILITY(U,$J,358.5,222,2,3,0)
	;;=POW:^^^17^9^9^22^3^4
	;;^UTILITY(U,$J,358.5,222,2,4,0)
	;;=EC:^^^26^9^9^30^3^6
	;;^UTILITY(U,$J,358.5,223,0)
	;;=SC %^57^8
	;;^UTILITY(U,$J,358.5,223,2,0)
	;;=^357.52I^3^2
	;;^UTILITY(U,$J,358.5,223,2,2,0)
	;;=SC%:^^^17^4^4^22^3^7
	;;^UTILITY(U,$J,358.5,223,2,3,0)
	;;=%^^^25^4
	;;^UTILITY(U,$J,358.5,224,0)
	;;=PATEINT NAME^59^6
	;;^UTILITY(U,$J,358.5,224,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,224,2,1,0)
	;;=NAME^^I^^^0^0^30^1
	;;^UTILITY(U,$J,358.5,225,0)
	;;=PID^59^7
	;;^UTILITY(U,$J,358.5,225,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,225,2,1,0)
	;;=PID^^I^^^1^0^15^1
	;;^UTILITY(U,$J,358.5,226,0)
	;;=ELIGIBILITY^59^8
	;;^UTILITY(U,$J,358.5,226,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,226,2,1,0)
	;;=Elig:^^^0^2^2^6^30^1
	;;^UTILITY(U,$J,358.5,227,0)
	;;=ADDRESS LINE 1^59^9^0^1
	;;^UTILITY(U,$J,358.5,227,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,227,2,1,0)
	;;=LINE1^^I^^^0^39^45^1
	;;^UTILITY(U,$J,358.5,228,0)
	;;=ADDRESS LINE 2^59^9^0^2
	;;^UTILITY(U,$J,358.5,228,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,228,2,1,0)
	;;=LINE2^^I^^^1^39^45^1
	;;^UTILITY(U,$J,358.5,229,0)
	;;=DATE^59^10
	;;^UTILITY(U,$J,358.5,229,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,229,2,1,0)
	;;=Date Printed:^^^92^1^1^106^12^1
	;;^UTILITY(U,$J,358.5,230,0)
	;;=CHECK IF SC^59^3
	;;^UTILITY(U,$J,358.5,230,2,0)
	;;=^357.52I^2^2
	;;^UTILITY(U,$J,358.5,230,2,1,0)
	;;=*** NOTE:  IF THE PATIENT'S TREATMENT WAS FOR ANY CONDITION RELATED TO THE FOLLOWING SERVICE-CONNECTED^^^7^4
	;;^UTILITY(U,$J,358.5,230,2,2,0)
	;;=DISABILITIES, CHECK BELOW TO THE LEFT OF THE LISTED CONDITON(S). ***^^^11^5
	;;^UTILITY(U,$J,358.5,231,0)
	;;=SC DISABILITY 1^59^11^0^1
	;;^UTILITY(U,$J,358.5,231,2,0)
	;;=^357.52I^3^3
	;;^UTILITY(U,$J,358.5,231,2,1,0)
	;;=Disabilities:^^^8^7
	;;^UTILITY(U,$J,358.5,231,2,2,0)
	;;=(__)^^^0^8^8^5^45^1
	;;^UTILITY(U,$J,358.5,231,2,3,0)
	;;=% - SERVICE CONNECTED^^I^^^8^51^24^5
	;;^UTILITY(U,$J,358.5,232,0)
	;;=SC DISABILITY 2^59^11^0^2
	;;^UTILITY(U,$J,358.5,232,2,0)
	;;=^357.52I^2^2
	;;^UTILITY(U,$J,358.5,232,2,1,0)
	;;=(__)^^^0^9^9^5^45^1
	;;^UTILITY(U,$J,358.5,232,2,2,0)
	;;=% - SERVICE CONNECTED^^I^^^9^51^24^5