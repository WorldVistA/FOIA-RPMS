 ;BSTS.ns1.TContentType.1
 ;(C)InterSystems, generated for class BSTS.ns1.TContentType.  Do NOT edit. 08/21/2017 07:45:58PM
 ;;37547631;BSTS.ns1.TContentType
 ;
zIsValid(%val) public {
	Q $s(%val'[","&&(",N,S,A,"[(","_$select(%val=$c(0):"",1:%val)_",")):1,1:$$Error^%apiOBJ(7205,%val,",N,S,A")) }
