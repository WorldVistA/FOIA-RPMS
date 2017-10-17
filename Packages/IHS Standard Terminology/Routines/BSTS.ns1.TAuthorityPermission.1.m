 ;BSTS.ns1.TAuthorityPermission.1
 ;(C)InterSystems, generated for class BSTS.ns1.TAuthorityPermission.  Do NOT edit. 08/21/2017 07:45:58PM
 ;;34436663;BSTS.ns1.TAuthorityPermission
 ;
zIsValid(%val) public {
	Q $s(%val'[","&&(",R,M,"[(","_$select(%val=$c(0):"",1:%val)_",")):1,1:$$Error^%apiOBJ(7205,%val,",R,M")) }
