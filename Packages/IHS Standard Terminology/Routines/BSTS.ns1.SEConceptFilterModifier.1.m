 ;BSTS.ns1.SEConceptFilterModifier.1
 ;(C)InterSystems, generated for class BSTS.ns1.SEConceptFilterModifier.  Do NOT edit. 08/21/2017 07:45:58PM
 ;;73586D76;BSTS.ns1.SEConceptFilterModifier
 ;
zIsValid(%val) public {
	Q $s(%val'[","&&(",ALL,ONLY_DESCENDANTS_OF,ONLY_CHILD_OF,"[(","_$select(%val=$c(0):"",1:%val)_",")):1,1:$$Error^%apiOBJ(7205,%val,",ALL,ONLY_DESCENDANTS_OF,ONLY_CHILD_OF")) }
