 ;BSTS.ns1.TPreviewOptions.1
 ;(C)InterSystems, generated for class BSTS.ns1.TPreviewOptions.  Do NOT edit. 10/22/2016 08:53:36AM
 ;;79493648;BSTS.ns1.TPreviewOptions
 ;
%BindExport(dev,Seen,RegisterOref,AllowedDepth,AllowedCapacity) public {
   i $d(Seen(+$this)) q 1
   Set Seen(+$this)=$this
   s sc = 1
 s proporef=..subsetExpression
   d:RegisterOref InitObjVar^%SYS.BINDSRV($this)
   i dev'="" s t=$io u dev i $zobjexport($this_"",3)+$zobjexport($this."%%OID",3)+$zobjexport($this,3)!1 u t
 If AllowedDepth>0 Set AllowedDepth = AllowedDepth - 1
 If AllowedCapacity>0 Set AllowedCapacity = AllowedCapacity - 1/1
 s proporef=..subsetExpression
       i proporef'="" s sc=1 i AllowedDepth'=0,AllowedCapacity'=0 s sc=proporef.%BindExport(dev,.Seen,RegisterOref,AllowedDepth,AllowedCapacity) q:('sc) sc
   Quit sc }
%ConstructCloneInit(object,deep=0,cloned,location) public {
	Set i%"%%OID"=""
	If deep>0 {
		If $isobject(..subsetExpression)=1 Set r%subsetExpression=r%subsetExpression.%ConstructClone(1,.cloned),i%subsetExpression=""
	}
	Quit 1 }
%NormalizeObject() public {
	If '$system.CLS.GetModified() Quit 1
	If m%DIFFADDITIONS Set:i%DIFFADDITIONS'="" i%DIFFADDITIONS=(..DIFFADDITIONSNormalize(i%DIFFADDITIONS))
	If m%DIFFDELETIONS Set:i%DIFFDELETIONS'="" i%DIFFDELETIONS=(..DIFFDELETIONSNormalize(i%DIFFDELETIONS))
	If m%FULL Set:i%FULL'="" i%FULL=(..FULLNormalize(i%FULL))
	If m%limit Set:i%limit'="" i%limit=(..limitNormalize(i%limit))
	If m%previewType Set:i%previewType'="" i%previewType=(..previewTypeNormalize(i%previewType))
	If m%subsetId Set:i%subsetId'="" i%subsetId=(..subsetIdNormalize(i%subsetId))
	Quit 1 }
%SerializeObject(serial,partial=0) public {
	Set $Ztrap = "%SerializeObjectERR"
	Set sc=..%ValidateObject() If ('sc) { Ztrap "SO" }
	Set sc=..%NormalizeObject() If ('sc) { Ztrap "SO" }
	Quit sc
%SerializeObjectERR	Set $ZTrap="" If $extract($zerror,1,5)'="<ZSO>" Set sc=$$Error^%apiOBJ(5002,$ZE)
	Quit sc }
%AddToSaveSet(depth=3,refresh=0) public {
	If $data(%objTX(1,+$this)) && ('refresh) Quit 1
	Set sc=1,intOref=+$this
	If refresh Set intPoref="" For  Set intPoref=$order(%objTX(1,intOref,2,intPoref)) Quit:intPoref=""  Kill %objTX(1,intPoref,3,intOref),%objTX(1,intOref,2,intPoref)
	Set %objTX(1,intOref)=$this,%objTX(1,intOref,1)=-1
	Set Poref=r%subsetExpression If Poref'="",'$data(%objTX(1,+Poref)) Set %objTX(6,$i(%objTX(6)))=Poref
exit	Quit sc }
%ValidateObject(force=0) public {
	Set sc=1
	If '$system.CLS.GetModified() Quit sc
	Set iv=..DIFFADDITIONS If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::"_"DIFFADDITIONS"_"("_$this_",ID="),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
	If m%DIFFADDITIONS Set rc=(..DIFFADDITIONSIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"DIFFADDITIONS",iv)
	Set iv=..DIFFDELETIONS If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::"_"DIFFDELETIONS"_"("_$this_",ID="),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
	If m%DIFFDELETIONS Set rc=(..DIFFDELETIONSIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"DIFFDELETIONS",iv)
	Set iv=..FULL If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::"_"FULL"_"("_$this_",ID="),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
	If m%FULL Set rc=(..FULLIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"FULL",iv)
	Set iv=..limit If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::"_"limit"_"("_$this_",ID="),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
	If m%limit Set rc=(..limitIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"limit",iv)
	Set iv=..previewType If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::"_"previewType"_"("_$this_",ID="),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
	If m%previewType Set rc=(..previewTypeIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"previewType",iv)
	Set iv=..subsetId If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::"_"subsetId"_"("_$this_",ID="),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
	If m%subsetId Set rc=(..subsetIdIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"subsetId",iv)
	Quit sc }
zXMLDTD(top,format,input,dtdlist)
 Quit ##class(%XML.Implementation).XMLDTD("BSTS.ns1.TPreviewOptions",.top,.format,.input,.dtdlist)
zXMLExportInternal()
 New tag,summary,attrsVal,savelocal,aval,k,tmpPrefix,prefixDepth,hasNoContent,hasElement,topAttrs,beginprefix,endprefix,savexsiAttrs,initialxsiAttrs,initlist,initialCR,inlineFlag,popAtEnd,saveTopPrefix,saveTypesPrefix,saveAttrsPrefix,saveUsePrefix,initlist
 Set $ztrap="XMLExportInternalTrap",popAtEnd=0
 Set summary=summaryArg,initialxsiAttrs=xsiAttrs
 If group Quit $$Error^%apiOBJ(6386,"BSTS.ns1.TPreviewOptions")
 If indentFlag Set initialCR=($extract(currentIndent,1,2)=$c(13,10))
 Set id=createId
 Set temp=""
 If id'="" {
   If $piece($get(idlist(+$this)),",",2)'="" Quit 1
   Set idlist(+$this)=id_",1"
 }
 If encoded Set initlist=$lb($get(oreflist),inlineFlagArg),oreflist=1,inlineFlag=inlineFlagArg
 If 'nocycle,('encoded||inlineFlag) {
   If $data(oreflist($this)) Quit $$Error^%apiOBJ(6296,"BSTS.ns1.TPreviewOptions")
   Set oreflist($this)=""
 }
 Set tag=$get(topArg)
 Set tmpi=(($get(typeAttr)'="")&&(typeAttr'="BSTS.ns1.TPreviewOptions"))
 If $IsObject(namespaces) {
   If namespaces.Stable,namespaces.CurrentNamespace="http://apelon.com/dtsserver/types",'tmpi||(typesPrefix'="") {
     Set topAttrs=""
   } Else {
     Set popAtEnd=1,saveTopPrefix=topPrefix,saveTypesPrefix=typesPrefix,saveAttrsPrefix=attrsPrefix,saveUsePrefix=usePrefix
     Set sc=namespaces.PushNodeForExport("http://apelon.com/dtsserver/types",$get(local,0),(encoded||tmpi),1,,.topPrefix,.topAttrs,.typesPrefix,.attrsPrefix,.usePrefix)
     If 'sc Quit sc
   }
   Set beginprefix=$select(usePrefix:typesPrefix,1:"")
   If topAttrs'="" Set temp=temp_" "_topAttrs
   If tag="" Set tag="TPreviewOptions"
   Set xsitype=namespaces.OutputTypeAttribute
 } Else {
   Set saveTopPrefix=topPrefix,saveTypesPrefix=typesPrefix,saveAttrsPrefix=attrsPrefix,saveUsePrefix=usePrefix
   Set typesPrefix=namespaces If (typesPrefix'=""),($extract(typesPrefix,*)'=":") Set typesPrefix=typesPrefix_":"
   If 'encoded Set namespaces=""
   Set (topPrefix,attrsPrefix,topAttrs,beginprefix)=""
   If tag="" Set tag=typesPrefix_"TPreviewOptions"
   Set xsitype=0
 }
 Set local=+$get(local),savelocal=local
 Set endprefix="</"_beginprefix,beginprefix="<"_beginprefix
 If tmpi Set temp=temp_" "_xsiPrefix_"type="""_typesPrefix_"TPreviewOptions"""_xsiAttrs,xsiAttrs=""
   If id'="" Set temp=" "_$select($get(soap12):soapPrefix_"id",1:"id")_"=""id"_id_""""_temp
 If encoded Set temp=temp_xsiAttrs,xsiAttrs=""
 If indentFlag Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } Set currentIndent=$select(initialCR:"",1:$c(13,10))_currentIndent_indentChars
 If tag[":" Set topPrefix=$piece(tag,":"),tag=$piece(tag,":",2)  If topPrefix'="" Set topPrefix=topPrefix_":"
 Set %xmlmsg="<"_topPrefix_tag_temp if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set attrsVal=attrsArg,attrsArg="" Set %xmlmsg=attrsVal if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 If 'encoded {
   Set val=..DIFFADDITIONS
   If val'="" {
     Set %xmlmsg=" "_attrsPrefix_"DIFF_ADDITIONS="""_val_"""" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
   Set val=..DIFFDELETIONS
   If val'="" {
     Set %xmlmsg=" "_attrsPrefix_"DIFF_DELETIONS="""_val_"""" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
   Set val=..FULL
   If val'="" {
     Set %xmlmsg=" "_attrsPrefix_"FULL="""_val_"""" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
 }
 Set %xmlmsg=">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set val=..subsetId
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"subsetId"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"int""",1:"")_">"_val_endprefix_"subsetId>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..limit
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"limit"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"int""",1:"")_">"_val_endprefix_"limit>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..previewType
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"previewType"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"int""",1:"")_">"_val_endprefix_"previewType>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..subsetExpression
 If $IsObject(val) , deepFlag {
   Set id=""
   If encoded,'inlineFlag {
     Set temp=$select($parameter("BSTS.ns1.TSubsetExpression","XMLSUMMARY")'="":-1,1:1)
     Set id=+$get(idlist(temp*val))
     If 'soap12 , (id=0) Set id=$increment(idlist),oreflist(temp*id)=val,idlist(temp*val)=id
   }
   If +id'=0 {
     Set %xmlmsg=currentIndent_beginprefix_"subsetExpression "_$select(soap12:soapPrefix_"ref=""",1:"href=""#")_"id"_id_""" />" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   } Else { if id=0 Set id=$increment(idlist)
     Set topArg="subsetExpression",summaryArg=1,group=0,createId=$get(id),typeAttr=$select(encoded||xsitype:"*",1:"BSTS.ns1.TSubsetExpression"),local=1,savexsiAttrs=xsiAttrs
     Set sc=val.XMLExportInternal() Goto:'sc XMLExportExit Set xsiAttrs=savexsiAttrs
   }
 }
 If encoded {
   Set val=..DIFFADDITIONS
   If val'="" {
     Set %xmlmsg=currentIndent_beginprefix_"DIFF_ADDITIONS"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"int""",1:"")_">"_val_endprefix_"DIFF_ADDITIONS>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
 }
 If encoded {
   Set val=..DIFFDELETIONS
   If val'="" {
     Set %xmlmsg=currentIndent_beginprefix_"DIFF_DELETIONS"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"int""",1:"")_">"_val_endprefix_"DIFF_DELETIONS>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
 }
 If encoded {
   Set val=..FULL
   If val'="" {
     Set %xmlmsg=currentIndent_beginprefix_"FULL"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"int""",1:"")_">"_val_endprefix_"FULL>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
   }
 }
 If indentFlag Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set %xmlmsg="</"_topPrefix_tag_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } If indentFlag,'initialCR if $data(%xmlBlock) { Set %xmlmsg="" Do xeWriteLine^%occXMLInternal } else { write ! } Set $extract(currentIndent,1,2)=""
 If '$IsObject(namespaces) || (popAtEnd=1) Set topPrefix=saveTopPrefix,typesPrefix=saveTypesPrefix,attrsPrefix=saveAttrsPrefix,usePrefix=saveUsePrefix
 If popAtEnd Do namespaces.PopNode()
 If encoded Set oreflist=$list(initlist),inlineFlag=$list(initlist,2)
 If 'encoded||inlineFlag {
   If 'nocycle Kill oreflist($this)
 } ElseIf $get(oreflist)'=1 {
   Set oreflist=1
   Set id=$order(oreflist(""))
   While id'="" {
     Set val=oreflist(id)
     Kill oreflist(id)
     Set group=0,createId=$zabs(id),typeAttr="*",local=savelocal,xsiAttrs=initialxsiAttrs
     If $classname(val)="BSTS.ns1.TPreviewOptions" {
       Set attrsArg=attrsVal
       Set topArg=tag,summaryArg=0
       Set sc=val.XMLExportInternal()
     } Else {
       Set topArg="",summaryArg=(id<0)
       Set sc=val.XMLExportInternal()
     }
     If 'sc Quit
     Set id=$order(oreflist(""))
   }
   Kill oreflist
 }
 Quit sc
XMLExportInternalTrap Set $ztrap=""
 If $data(val) , $IsObject(val) , ($piece($ze,">",1)="<METHOD DOES NOT EXIST") {
   Set sc=$$Error^%apiOBJ(6249,$classname(val))
 } Else {
   Set sc=$$Error^%apiOBJ(5002,$ze)
 }
XMLExportExit 
 If '$IsObject(namespaces) || (popAtEnd=1) Set topPrefix=saveTopPrefix,typesPrefix=saveTypesPrefix,attrsPrefix=saveAttrsPrefix,usePrefix=saveUsePrefix
 If popAtEnd Do namespaces.PopNode()
 Quit sc
zXMLGetSchemaImports(imports,classes)
 Quit ##class(%XML.Implementation).XMLGetSchemaImports("BSTS.ns1.TPreviewOptions",.imports,.classes)
zXMLImportAttributes()
 ;
 New data,ref
 If ($data(@(tree)@(node,"a","DIFF_ADDITIONS"))) {
   Set ref="DIFF_ADDITIONS",data=$get(@(tree)@(node,"a",ref))
   Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$s($tr(data,"Ee(),.")'=data:"",1:$number(data,"I",-2147483648,2147483647)) Goto:data="" XMLImportAttrErr Goto:('$select($zu(115,13)&&(data=$c(0)):1,$isvalidnum(data,0,-2147483648,2147483647):1,'$isvalidnum(data):$$Error^%apiOBJ(7207,data),data<-2147483648:$$Error^%apiOBJ(7204,data,-2147483648),1:$$Error^%apiOBJ(7203,data,2147483647))) XMLImportAttrErr
   Set ..DIFFADDITIONS=data
 }
 If ($data(@(tree)@(node,"a","DIFF_DELETIONS"))) {
   Set ref="DIFF_DELETIONS",data=$get(@(tree)@(node,"a",ref))
   Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$s($tr(data,"Ee(),.")'=data:"",1:$number(data,"I",-2147483648,2147483647)) Goto:data="" XMLImportAttrErr Goto:('$select($zu(115,13)&&(data=$c(0)):1,$isvalidnum(data,0,-2147483648,2147483647):1,'$isvalidnum(data):$$Error^%apiOBJ(7207,data),data<-2147483648:$$Error^%apiOBJ(7204,data,-2147483648),1:$$Error^%apiOBJ(7203,data,2147483647))) XMLImportAttrErr
   Set ..DIFFDELETIONS=data
 }
 If ($data(@(tree)@(node,"a","FULL"))) {
   Set ref="FULL",data=$get(@(tree)@(node,"a",ref))
   Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$s($tr(data,"Ee(),.")'=data:"",1:$number(data,"I",-2147483648,2147483647)) Goto:data="" XMLImportAttrErr Goto:('$select($zu(115,13)&&(data=$c(0)):1,$isvalidnum(data,0,-2147483648,2147483647):1,'$isvalidnum(data):$$Error^%apiOBJ(7207,data),data<-2147483648:$$Error^%apiOBJ(7204,data,-2147483648),1:$$Error^%apiOBJ(7203,data,2147483647))) XMLImportAttrErr
   Set ..FULL=data
 }
 Quit 1
XMLImportAttrErr Quit $$Error^%apiOBJ(6260,ref,$get(@(tree)@(node,"a",ref)),@(tree)@(node)_$$XMLImportAttrLocation(node))
XMLImportAttrLocation(node) new msg,loc
 Set loc=$lb($listget($get(@(tree)@(node,0)),5),$listget($get(@(tree)@(node,0)),6))
 If loc="" Quit ""
 Set msg=$get(^%qCacheMsg("%ObjectErrors",$s(""'="":$zcvt("","L"),1:$get(^||%Language,"en")),"XMLImportLocation")," (%1,%2)")
 Quit $$FormatText^%occMessages(msg,$listget(loc,1),$listget(loc,2))
zXMLImportInternal()
 New child,node,data,ref,encodedArray,loopref,element,key,nsIndex
 Set $ztrap="XMLImportInternalTrap"
 Set encoded=$case($piece(fmt,",",1),"":0,"literal":0,"encoded":1,"encoded12":1,:"")
 If encoded="" Quit $$Error^%apiOBJ(6231,fmt)
 Set nsIndex=$get(@(tree)@("ns","http://apelon.com/dtsserver/types"))
 Set (node,ref)=nodeArg
 If ($listget($get(@(tree)@(node,0)),1)'="e")||(tag'=@(tree)@(node)) Goto XMLImportMalformed
 If bareProjection Quit $$Error^%apiOBJ(6386,"BSTS.ns1.TPreviewOptions")
 If encoded {
   If $data(@(tree)@(node,"a","id")) Set idlist(node)=$this
 }
 If 'encoded Set sc=..XMLImportAttributes() If 'sc Quit sc
 If +$listget($get(@(tree)@(node,0)),7,0) Quit 1
 Set sc=$$XMLImportElements()
XMLImportExit Quit sc
XMLImportElements() ;
 Set child=""
 If $$XMLLOOP()'=0 Quit sc
 If tag="subsetId" {
   If '$case($listget($get(@(tree)@(ref,0)),3),"":1,nsIndex:1,:0) Goto XMLImportNS
   If encoded,$$XMLImportId() {
     Set data=idlist(ref)
   } Else { Goto:'sc XMLImportExit
     If +$listget($get(@(tree)@(ref,0)),7,0) { Set data=""
     } Else {
             Set data=$order(@(tree)@(ref,"c",""))
             If $order(@(tree)@(ref,"c",data))'="" {
               Set data="" Goto XMLImportErr
             } ElseIf data'="" { Goto:$listget($get(@(tree)@(data,0)),1)="e" XMLImportErr Set data=@(tree)@(data) }
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$s($tr(data,"Ee(),.")'=data:"",1:$number(data,"I",-2147483648,2147483647)) Goto:data="" XMLImportErr Goto:('$select($zu(115,13)&&(data=$c(0)):1,$isvalidnum(data,0,-2147483648,2147483647):1,'$isvalidnum(data):$$Error^%apiOBJ(7207,data),data<-2147483648:$$Error^%apiOBJ(7204,data,-2147483648),1:$$Error^%apiOBJ(7203,data,2147483647))) XMLImportErr
     }
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   Set ..subsetId=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If tag="limit" {
   If '$case($listget($get(@(tree)@(ref,0)),3),"":1,nsIndex:1,:0) Goto XMLImportNS
   If encoded,$$XMLImportId() {
     Set data=idlist(ref)
   } Else { Goto:'sc XMLImportExit
     If +$listget($get(@(tree)@(ref,0)),7,0) { Set data=""
     } Else {
             Set data=$order(@(tree)@(ref,"c",""))
             If $order(@(tree)@(ref,"c",data))'="" {
               Set data="" Goto XMLImportErr
             } ElseIf data'="" { Goto:$listget($get(@(tree)@(data,0)),1)="e" XMLImportErr Set data=@(tree)@(data) }
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$s($tr(data,"Ee(),.")'=data:"",1:$number(data,"I",-2147483648,2147483647)) Goto:data="" XMLImportErr Goto:('$select($zu(115,13)&&(data=$c(0)):1,$isvalidnum(data,0,-2147483648,2147483647):1,'$isvalidnum(data):$$Error^%apiOBJ(7207,data),data<-2147483648:$$Error^%apiOBJ(7204,data,-2147483648),1:$$Error^%apiOBJ(7203,data,2147483647))) XMLImportErr
     }
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   Set ..limit=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If tag="previewType" {
   If '$case($listget($get(@(tree)@(ref,0)),3),"":1,nsIndex:1,:0) Goto XMLImportNS
   If encoded,$$XMLImportId() {
     Set data=idlist(ref)
   } Else { Goto:'sc XMLImportExit
     If +$listget($get(@(tree)@(ref,0)),7,0) { Set data=""
     } Else {
             Set data=$order(@(tree)@(ref,"c",""))
             If $order(@(tree)@(ref,"c",data))'="" {
               Set data="" Goto XMLImportErr
             } ElseIf data'="" { Goto:$listget($get(@(tree)@(data,0)),1)="e" XMLImportErr Set data=@(tree)@(data) }
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$s($tr(data,"Ee(),.")'=data:"",1:$number(data,"I",-2147483648,2147483647)) Goto:data="" XMLImportErr Goto:('$select($zu(115,13)&&(data=$c(0)):1,$isvalidnum(data,0,-2147483648,2147483647):1,'$isvalidnum(data):$$Error^%apiOBJ(7207,data),data<-2147483648:$$Error^%apiOBJ(7204,data,-2147483648),1:$$Error^%apiOBJ(7203,data,2147483647))) XMLImportErr
     }
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   Set ..previewType=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If tag="subsetExpression" {
   If '$case($listget($get(@(tree)@(ref,0)),3),"":1,nsIndex:1,:0) Goto XMLImportNS
   If encoded,$$XMLImportId() {
     Set data=idlist(ref)
   } Else { Goto:'sc XMLImportExit
     Set class=$select(($get(@(tree)@(ref,"a","type","u"))=1):$get(@(tree)@(ref,"a","type")),1:"")
     If (class="") || (class="TSubsetExpression") {
       Set class="BSTS.ns1.TSubsetExpression"
     } Else {
       If $length(class,":")=2 Set class=$piece(class,":",2)
       Set class=$get(^oddCOM("BSTS.ns1.TSubsetExpression",85,"s",class))_$get(^oddXML("BSTS.ns1.TSubsetExpression","s",class)) If class="" Set class=0
       Set tmp=$select($get(@(tree)@(ref,"a","type","v"))="":"",1:$get(@(tree)@("ns#",@(tree)@(ref,"a","type","v"))))
       If (class=0)||(($listlength(class)>1)&&(tmp="")) Set class=$get(@(tree)@(ref,"a","type")) Goto XMLImportBadType
       If $listlength(class)>1 {
         For tmpi=1:1:$listlength(class) {
           If tmp=$parameter($list(class,tmpi),"NAMESPACE") Set class=$list(class,tmpi),tmpi=0 Quit
         }
         If tmpi Set class=$get(@(tree)@(ref,"a","type")) Goto XMLImportBadType
       } Else { Set class=$list(class) }
     }
     Set data=$classmethod(class,"XMLNew",handler,ref,$this)
     If $isobject(data) Set tag=@(tree)@(ref),nodeArg=ref,bareProjection=0,summaryArg=1,keynameattr="",sc=data.XMLImportInternal() If ('sc) Goto XMLImportExit
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   If data'="" Set ..subsetExpression=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If encoded,(tag="DIFF_ADDITIONS") {
   If '$case($listget($get(@(tree)@(ref,0)),3),"":1,nsIndex:1,:0) Goto XMLImportNS
   If encoded,$$XMLImportId() {
     Set data=idlist(ref)
   } Else { Goto:'sc XMLImportExit
     If +$listget($get(@(tree)@(ref,0)),7,0) { Set data=""
     } Else {
             Set data=$order(@(tree)@(ref,"c",""))
             If $order(@(tree)@(ref,"c",data))'="" {
               Set data="" Goto XMLImportErr
             } ElseIf data'="" { Goto:$listget($get(@(tree)@(data,0)),1)="e" XMLImportErr Set data=@(tree)@(data) }
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$s($tr(data,"Ee(),.")'=data:"",1:$number(data,"I",-2147483648,2147483647)) Goto:data="" XMLImportErr Goto:('$select($zu(115,13)&&(data=$c(0)):1,$isvalidnum(data,0,-2147483648,2147483647):1,'$isvalidnum(data):$$Error^%apiOBJ(7207,data),data<-2147483648:$$Error^%apiOBJ(7204,data,-2147483648),1:$$Error^%apiOBJ(7203,data,2147483647))) XMLImportErr
     }
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   Set ..DIFFADDITIONS=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If encoded,(tag="DIFF_DELETIONS") {
   If '$case($listget($get(@(tree)@(ref,0)),3),"":1,nsIndex:1,:0) Goto XMLImportNS
   If encoded,$$XMLImportId() {
     Set data=idlist(ref)
   } Else { Goto:'sc XMLImportExit
     If +$listget($get(@(tree)@(ref,0)),7,0) { Set data=""
     } Else {
             Set data=$order(@(tree)@(ref,"c",""))
             If $order(@(tree)@(ref,"c",data))'="" {
               Set data="" Goto XMLImportErr
             } ElseIf data'="" { Goto:$listget($get(@(tree)@(data,0)),1)="e" XMLImportErr Set data=@(tree)@(data) }
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$s($tr(data,"Ee(),.")'=data:"",1:$number(data,"I",-2147483648,2147483647)) Goto:data="" XMLImportErr Goto:('$select($zu(115,13)&&(data=$c(0)):1,$isvalidnum(data,0,-2147483648,2147483647):1,'$isvalidnum(data):$$Error^%apiOBJ(7207,data),data<-2147483648:$$Error^%apiOBJ(7204,data,-2147483648),1:$$Error^%apiOBJ(7203,data,2147483647))) XMLImportErr
     }
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   Set ..DIFFDELETIONS=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If encoded,(tag="FULL") {
   If '$case($listget($get(@(tree)@(ref,0)),3),"":1,nsIndex:1,:0) Goto XMLImportNS
   If encoded,$$XMLImportId() {
     Set data=idlist(ref)
   } Else { Goto:'sc XMLImportExit
     If +$listget($get(@(tree)@(ref,0)),7,0) { Set data=""
     } Else {
             Set data=$order(@(tree)@(ref,"c",""))
             If $order(@(tree)@(ref,"c",data))'="" {
               Set data="" Goto XMLImportErr
             } ElseIf data'="" { Goto:$listget($get(@(tree)@(data,0)),1)="e" XMLImportErr Set data=@(tree)@(data) }
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$s($tr(data,"Ee(),.")'=data:"",1:$number(data,"I",-2147483648,2147483647)) Goto:data="" XMLImportErr Goto:('$select($zu(115,13)&&(data=$c(0)):1,$isvalidnum(data,0,-2147483648,2147483647):1,'$isvalidnum(data):$$Error^%apiOBJ(7207,data),data<-2147483648:$$Error^%apiOBJ(7204,data,-2147483648),1:$$Error^%apiOBJ(7203,data,2147483647))) XMLImportErr
     }
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   Set ..FULL=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 Goto XMLImportBadTag
XMLLOOP() For  { Set child=$order(@(tree)@(node,"c",child)) If (child="")||($listget($get(@(tree)@(child,0)),1)'="w") Quit }
 If child="" Quit sc
 Set tag=@(tree)@(child)
 Set ref=child
 If $listget($get(@(tree)@(ref,0)),1)'="e" Goto XMLImportMalformedNoTag
 Quit 0
XMLImportBadTag Quit $$Error^%apiOBJ(6237,tag_$$XMLImportLocation(ref))
XMLImportBadType Quit $$Error^%apiOBJ(6277,class,@(tree)@(ref)_$$XMLImportLocation(ref))
XMLImportErr
 Set data=$order(@(tree)@(ref,"c",""))
 If (data'="") {
   If $listget($get(@(tree)@(data,0)),1)'="e" {
     Quit $$Error^%apiOBJ(6232,@(tree)@(ref)_$$XMLImportLocation(ref),$extract(@(tree)@(data),1,200))
   } Else {
     Quit $$Error^%apiOBJ(6253,@(tree)@(ref)_$$XMLImportLocation(ref),@(tree)@(data))
   }
 } Else {
   Quit $$Error^%apiOBJ(6252,@(tree)@(ref)_$$XMLImportLocation(ref))
 }
XMLImportIdErr Set sc=$$Error^%apiOBJ(6236,id,@(tree)@(ref)_$$XMLImportLocation(ref)) Quit sc
XMLImportMalformed Set sc=$$Error^%apiOBJ(6233,@(tree)@(ref)_$$XMLImportLocation(ref)) Quit sc
XMLImportMalformedNoTag Set node=$listget($get(@(tree)@(ref,0)),2),sc=$$Error^%apiOBJ(6254,@(tree)@(ref),@(tree)@(node)_$$XMLImportLocation(node)) Quit sc
XMLImportNS Set sc=$$Error^%apiOBJ(6235,@(tree)@(ref)_$$XMLImportLocation(ref)) Quit sc
XMLImportLocation(node) new msg,loc
 Set loc=$lb($listget($get(@(tree)@(node,0)),5),$listget($get(@(tree)@(node,0)),6))
 If loc="" Quit ""
 Set msg=$get(^%qCacheMsg("%ObjectErrors",$s(""'="":$zcvt("","L"),1:$get(^||%Language,"en")),"XMLImportLocation")," (%1,%2)")
 Quit $$FormatText^%occMessages(msg,$listget(loc,1),$listget(loc,2))
XMLImportInternalTrap Set $ztrap=""
 If $ZE["<CLASS DOES NOT EXIST>" Goto XMLImportBadTag
 Quit $$Error^%apiOBJ(5002,$ZE)
XMLImportId() ;
 If $data(@(tree)@(ref,"a","href")) {
   Set id=$get(@(tree)@(ref,"a","href"))
   If $extract(id)="#" {
     Set tmp=$get(@(tree)@("id",$extract(id,2,*))) If tmp="" Goto XMLImportIdErr
     Set ref=tmp
   }
 } ElseIf $data(@(tree)@(ref,"a","ref")) , ($select($get(@(tree)@(ref,"a","ref","u"))="":"",1:$get(@(tree)@("ns#",@(tree)@(ref,"a","ref","u"))))="http://www.w3.org/2003/05/soap-encoding") {
   Set id=$get(@(tree)@(ref,"a","ref"))
   Set tmp=$get(@(tree)@("id",id)) If tmp="" Goto XMLImportIdErr
   Set ref=tmp
 } ElseIf '$data(@(tree)@(ref,"a","id")) {
   Quit 0
 }
 Quit $data(idlist(ref))
zXMLIsObjectEmpty(ignoreNull)
 If ..subsetId'="" Quit 0
 If ..limit'="" Quit 0
 If ..previewType'="" Quit 0
 If $IsObject(..subsetExpression) Quit 0
 If ..DIFFADDITIONS'="" Quit 0
 If ..DIFFDELETIONS'="" Quit 0
 If ..FULL'="" Quit 0
 Quit 1
zXMLNew(document,node,containerOref="")
	Quit (##class(BSTS.ns1.TPreviewOptions).%New())
zXMLSchema(top="",format="",namespacePrefix="",input=0,refOnly=0,schema)
 Quit ##class(%XML.Implementation).XMLSchema("BSTS.ns1.TPreviewOptions",top,format,namespacePrefix,input,refOnly,.schema)
zDIFFADDITIONSDisplayToLogical(%val) public {
	Q $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",1:+$in(%val,"",%val)) }
zDIFFADDITIONSIsValid(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):1,$isvalidnum(%val,0,-2147483648,2147483647):1,'$isvalidnum(%val):$$Error^%apiOBJ(7207,%val),%val<-2147483648:$$Error^%apiOBJ(7204,%val,-2147483648),1:$$Error^%apiOBJ(7203,%val,2147483647)) }
zDIFFADDITIONSNormalize(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):"",1:%val\1) }
zDIFFADDITIONSXSDToLogical(%val) public {
	Q $s($tr(%val,"Ee(),.")'=%val:"",1:$number(%val,"I",-2147483648,2147483647)) }
zDIFFDELETIONSDisplayToLogical(%val) public {
	Q $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",1:+$in(%val,"",%val)) }
zDIFFDELETIONSIsValid(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):1,$isvalidnum(%val,0,-2147483648,2147483647):1,'$isvalidnum(%val):$$Error^%apiOBJ(7207,%val),%val<-2147483648:$$Error^%apiOBJ(7204,%val,-2147483648),1:$$Error^%apiOBJ(7203,%val,2147483647)) }
zDIFFDELETIONSNormalize(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):"",1:%val\1) }
zDIFFDELETIONSXSDToLogical(%val) public {
	Q $s($tr(%val,"Ee(),.")'=%val:"",1:$number(%val,"I",-2147483648,2147483647)) }
zFULLDisplayToLogical(%val) public {
	Q $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",1:+$in(%val,"",%val)) }
zFULLIsValid(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):1,$isvalidnum(%val,0,-2147483648,2147483647):1,'$isvalidnum(%val):$$Error^%apiOBJ(7207,%val),%val<-2147483648:$$Error^%apiOBJ(7204,%val,-2147483648),1:$$Error^%apiOBJ(7203,%val,2147483647)) }
zFULLNormalize(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):"",1:%val\1) }
zFULLXSDToLogical(%val) public {
	Q $s($tr(%val,"Ee(),.")'=%val:"",1:$number(%val,"I",-2147483648,2147483647)) }
zlimitDisplayToLogical(%val) public {
	Q $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",1:+$in(%val,"",%val)) }
zlimitIsValid(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):1,$isvalidnum(%val,0,-2147483648,2147483647):1,'$isvalidnum(%val):$$Error^%apiOBJ(7207,%val),%val<-2147483648:$$Error^%apiOBJ(7204,%val,-2147483648),1:$$Error^%apiOBJ(7203,%val,2147483647)) }
zlimitNormalize(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):"",1:%val\1) }
zlimitXSDToLogical(%val) public {
	Q $s($tr(%val,"Ee(),.")'=%val:"",1:$number(%val,"I",-2147483648,2147483647)) }
zpreviewTypeDisplayToLogical(%val) public {
	Q $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",1:+$in(%val,"",%val)) }
zpreviewTypeIsValid(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):1,$isvalidnum(%val,0,-2147483648,2147483647):1,'$isvalidnum(%val):$$Error^%apiOBJ(7207,%val),%val<-2147483648:$$Error^%apiOBJ(7204,%val,-2147483648),1:$$Error^%apiOBJ(7203,%val,2147483647)) }
zpreviewTypeNormalize(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):"",1:%val\1) }
zpreviewTypeXSDToLogical(%val) public {
	Q $s($tr(%val,"Ee(),.")'=%val:"",1:$number(%val,"I",-2147483648,2147483647)) }
zsubsetExpressionNewObject() public {
	Set newobject=##class(BSTS.ns1.TSubsetExpression).%New() If newobject="" Quit ""
	Set ..subsetExpression=newobject
	Quit newobject }
zsubsetIdDisplayToLogical(%val) public {
	Q $s(%val="":"",$zu(115,13)&&(%val=$c(0)):"",1:+$in(%val,"",%val)) }
zsubsetIdIsValid(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):1,$isvalidnum(%val,0,-2147483648,2147483647):1,'$isvalidnum(%val):$$Error^%apiOBJ(7207,%val),%val<-2147483648:$$Error^%apiOBJ(7204,%val,-2147483648),1:$$Error^%apiOBJ(7203,%val,2147483647)) }
zsubsetIdNormalize(%val) public {
	Quit $select($zu(115,13)&&(%val=$c(0)):"",1:%val\1) }
zsubsetIdXSDToLogical(%val) public {
	Q $s($tr(%val,"Ee(),.")'=%val:"",1:$number(%val,"I",-2147483648,2147483647)) }