 ;BSTS.ns1.TQualifiesItemType.1
 ;(C)InterSystems, generated for class BSTS.ns1.TQualifiesItemType.  Do NOT edit. 08/21/2017 07:45:59PM
 ;;3165484B;BSTS.ns1.TQualifiesItemType
 ;
zIsValid(%val) public {
	Q $s(%val'[","&&(",CA,TA,CP,TP,NP,VP,AP,SP,EP,"[(","_$select(%val=$c(0):"",1:%val)_",")):1,1:$$Error^%apiOBJ(7205,%val,",CA,TA,CP,TP,NP,VP,AP,SP,EP")) }
