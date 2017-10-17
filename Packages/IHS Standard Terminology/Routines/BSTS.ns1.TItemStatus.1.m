 ;BSTS.ns1.TItemStatus.1
 ;(C)InterSystems, generated for class BSTS.ns1.TItemStatus.  Do NOT edit. 08/21/2017 07:45:59PM
 ;;35716973;BSTS.ns1.TItemStatus
 ;
zIsValid(%val) public {
	Q $s(%val'[","&&(",A,I,D,"[(","_$select(%val=$c(0):"",1:%val)_",")):1,1:$$Error^%apiOBJ(7205,%val,",A,I,D")) }
