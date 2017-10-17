 ;BSTS.ns1.TNamespacePermission.1
 ;(C)InterSystems, generated for class BSTS.ns1.TNamespacePermission.  Do NOT edit. 08/21/2017 07:45:59PM
 ;;327A7976;BSTS.ns1.TNamespacePermission
 ;
zIsValid(%val) public {
	Q $s(%val'[","&&(",R,W,M,"[(","_$select(%val=$c(0):"",1:%val)_",")):1,1:$$Error^%apiOBJ(7205,%val,",R,W,M")) }
