 ;BSTS.ns1.TKind.1
 ;(C)InterSystems, generated for class BSTS.ns1.TKind.  Do NOT edit. 10/22/2016 08:53:38AM
 ;;34464D68;BSTS.ns1.TKind
 ;
%NormalizeObject() public {
	If '$system.CLS.GetModified() Quit 1
	If m%code Set:i%code'="" i%code=(..codeNormalize(i%code))
	If m%id Set:i%id'="" i%id=(..idNormalize(i%id))
	If m%name Set:i%name'="" i%name=(..nameNormalize(i%name))
	If m%namespaceId Set:i%namespaceId'="" i%namespaceId=(..namespaceIdNormalize(i%namespaceId))
	If m%reference Set:i%reference'="" i%reference=(..referenceNormalize(i%reference))
	If m%revisionIn Set:i%revisionIn'="" i%revisionIn=(..revisionInNormalize(i%revisionIn))
	If m%revisionOut Set:i%revisionOut'="" i%revisionOut=(..revisionOutNormalize(i%revisionOut))
	Quit 1 }
%ValidateObject(force=0) public {
	Set sc=1
	If '$system.CLS.GetModified() Quit sc
	Set iv=..code If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::"_"code"_"("_$this_",ID="),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
	If m%code Set rc=(..codeIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"code",iv)
	Set iv=..id If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::"_"id"_"("_$this_",ID="),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
	If m%id Set rc=(..idIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"id",iv)
	If m%name Set iv=..name If iv'="" Set rc=(..nameIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"name",iv)
	Set iv=..namespaceId If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::"_"namespaceId"_"("_$this_",ID="),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
	If m%namespaceId Set rc=(..namespaceIdIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"namespaceId",iv)
	Set iv=..reference If iv="" Set rc=$$Error^%apiOBJ(5659,$classname()_"::"_"reference"_"("_$this_",ID="),sc=$select(+sc:rc,1:$$AppendStatus^%occSystem(sc,rc))
	If m%reference Set rc=(..referenceIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"reference",iv)
	If m%revisionIn Set iv=..revisionIn If iv'="" Set rc=(..revisionInIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"revisionIn",iv)
	If m%revisionOut Set iv=..revisionOut If iv'="" Set rc=(..revisionOutIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"revisionOut",iv)
	Quit sc }
zXMLDTD(top,format,input,dtdlist)
 Quit ##class(%XML.Implementation).XMLDTD("BSTS.ns1.TKind",.top,.format,.input,.dtdlist)
zXMLExportInternal()
 New tag,summary,attrsVal,savelocal,aval,k,tmpPrefix,prefixDepth,hasNoContent,hasElement,topAttrs,beginprefix,endprefix,savexsiAttrs,initialxsiAttrs,initlist,initialCR,inlineFlag,popAtEnd,saveTopPrefix,saveTypesPrefix,saveAttrsPrefix,saveUsePrefix,initlist
 Set $ztrap="XMLExportInternalTrap",popAtEnd=0
 Set summary=summaryArg,initialxsiAttrs=xsiAttrs
 If group Quit $$Error^%apiOBJ(6386,"BSTS.ns1.TKind")
 If indentFlag Set initialCR=($extract(currentIndent,1,2)=$c(13,10))
 Set id=createId
 Set temp=""
 If id'="" {
   If $piece($get(idlist(+$this)),",",2)'="" Quit 1
   Set idlist(+$this)=id_",1"
 }
 If encoded Set initlist=$lb($get(oreflist),inlineFlagArg),oreflist=1,inlineFlag=inlineFlagArg
 If 'nocycle,('encoded||inlineFlag) {
   If $data(oreflist($this)) Quit $$Error^%apiOBJ(6296,"BSTS.ns1.TKind")
   Set oreflist($this)=""
 }
 Set tag=$get(topArg)
 Set tmpi=(($get(typeAttr)'="")&&(typeAttr'="BSTS.ns1.TKind"))
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
   If tag="" Set tag="TKind"
   Set xsitype=namespaces.OutputTypeAttribute
 } Else {
   Set saveTopPrefix=topPrefix,saveTypesPrefix=typesPrefix,saveAttrsPrefix=attrsPrefix,saveUsePrefix=usePrefix
   Set typesPrefix=namespaces If (typesPrefix'=""),($extract(typesPrefix,*)'=":") Set typesPrefix=typesPrefix_":"
   If 'encoded Set namespaces=""
   Set (topPrefix,attrsPrefix,topAttrs,beginprefix)=""
   If tag="" Set tag=typesPrefix_"TKind"
   Set xsitype=0
 }
 Set local=+$get(local),savelocal=local
 Set endprefix="</"_beginprefix,beginprefix="<"_beginprefix
 If tmpi Set temp=temp_" "_xsiPrefix_"type="""_typesPrefix_"TKind"""_xsiAttrs,xsiAttrs=""
   If id'="" Set temp=" "_$select($get(soap12):soapPrefix_"id",1:"id")_"=""id"_id_""""_temp
 If encoded Set temp=temp_xsiAttrs,xsiAttrs=""
 If indentFlag Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } Set currentIndent=$select(initialCR:"",1:$c(13,10))_currentIndent_indentChars
 If tag[":" Set topPrefix=$piece(tag,":"),tag=$piece(tag,":",2)  If topPrefix'="" Set topPrefix=topPrefix_":"
 Set %xmlmsg="<"_topPrefix_tag_temp if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set attrsVal=attrsArg,attrsArg="" Set %xmlmsg=attrsVal if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set %xmlmsg=">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set val=..namespaceId
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"namespaceId"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"int""",1:"")_">"_val_endprefix_"namespaceId>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..id
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"id"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"int""",1:"")_">"_val_endprefix_"id>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..name
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"name"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"name>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..code
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"code"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"string""",1:"")_">"_$select(val=$c(0):"",1:$select((val["<")||(val[">")||(val["&"):"<![CDATA["_$replace(val,"]]>","]]]]><![CDATA[>")_"]]>",1:val))_endprefix_"code>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..revisionIn
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"revisionIn"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"dateTime""",1:"")_">"_$select(val="":"",1:$translate(val," ","T")_"Z")_endprefix_"revisionIn>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..revisionOut
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"revisionOut"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"dateTime""",1:"")_">"_$select(val="":"",1:$translate(val," ","T")_"Z")_endprefix_"revisionOut>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 Set val=..reference
 If val'="" {
   Set %xmlmsg=currentIndent_beginprefix_"reference"_$select(xsitype:" "_xsiPrefix_"type="""_schemaPrefix_"boolean""",1:"")_">"_$s(val:"true",1:"false")_endprefix_"reference>" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 }
 If indentFlag Set currentIndent=$extract(currentIndent,1,*-$length(indentChars)) Set %xmlmsg=currentIndent if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg }
 Set %xmlmsg="</"_topPrefix_tag_">" if $data(%xmlBlock) { Do xeWrite^%occXMLInternal } else { write %xmlmsg } If indentFlag,'initialCR if $data(%xmlBlock) { Set %xmlmsg="" Do xeWriteLine^%occXMLInternal } else { write ! } Set $extract(currentIndent,1,2)=""
 If '$IsObject(namespaces) || (popAtEnd=1) Set topPrefix=saveTopPrefix,typesPrefix=saveTypesPrefix,attrsPrefix=saveAttrsPrefix,usePrefix=saveUsePrefix
 If popAtEnd Do namespaces.PopNode()
 If encoded Set oreflist=$list(initlist),inlineFlag=$list(initlist,2)
 If 'encoded||inlineFlag {
   If 'nocycle Kill oreflist($this)
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
 Quit ##class(%XML.Implementation).XMLGetSchemaImports("BSTS.ns1.TKind",.imports,.classes)
zXMLImportInternal()
 New child,node,data,ref,encodedArray,loopref,element,key,nsIndex
 Set $ztrap="XMLImportInternalTrap"
 Set encoded=$case($piece(fmt,",",1),"":0,"literal":0,"encoded":1,"encoded12":1,:"")
 If encoded="" Quit $$Error^%apiOBJ(6231,fmt)
 Set nsIndex=$get(@(tree)@("ns","http://apelon.com/dtsserver/types"))
 Set (node,ref)=nodeArg
 If ($listget($get(@(tree)@(node,0)),1)'="e")||(tag'=@(tree)@(node)) Goto XMLImportMalformed
 If bareProjection Quit $$Error^%apiOBJ(6386,"BSTS.ns1.TKind")
 If encoded {
   If $data(@(tree)@(node,"a","id")) Set idlist(node)=$this
 }
 If +$listget($get(@(tree)@(node,0)),7,0) Quit 1
 Set sc=$$XMLImportElements()
XMLImportExit Quit sc
XMLImportElements() ;
 Set child=""
 If $$XMLLOOP()'=0 Quit sc
 If tag="namespaceId" {
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
   Set ..namespaceId=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If tag="id" {
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
   Set ..id=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If tag="name" {
   If '$case($listget($get(@(tree)@(ref,0)),3),"":1,nsIndex:1,:0) Goto XMLImportNS
   If encoded,$$XMLImportId() {
     Set data=idlist(ref)
   } Else { Goto:'sc XMLImportExit
     If +$listget($get(@(tree)@(ref,0)),7,0) { Set data=""
     } Else {
             Set data=$order(@(tree)@(ref,"c",""))
             If $order(@(tree)@(ref,"c",data))'="" {
               Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,ref,0,0,.data) Goto XMLImportErr
             } ElseIf data'="" { Goto:$listget($get(@(tree)@(data,0)),1)="e" XMLImportErr Set data=@(tree)@(data) }
             If data="" Set data=$c(0)
     }
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   Set ..name=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If tag="code" {
   If '$case($listget($get(@(tree)@(ref,0)),3),"":1,nsIndex:1,:0) Goto XMLImportNS
   If encoded,$$XMLImportId() {
     Set data=idlist(ref)
   } Else { Goto:'sc XMLImportExit
     If +$listget($get(@(tree)@(ref,0)),7,0) { Set data=""
     } Else {
             Set data=$order(@(tree)@(ref,"c",""))
             If $order(@(tree)@(ref,"c",data))'="" {
               Set data="" If '##class(%XML.ImportHandler).SerializeNode(tree,ref,0,0,.data) Goto XMLImportErr
             } ElseIf data'="" { Goto:$listget($get(@(tree)@(data,0)),1)="e" XMLImportErr Set data=@(tree)@(data) }
             If data="" Set data=$c(0)
     }
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   Set ..code=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If tag="revisionIn" {
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
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=..revisionInXSDToLogical(data) Goto:data="" XMLImportErr Goto:('..revisionInIsValid(data)) XMLImportErr
     }
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   Set ..revisionIn=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If tag="revisionOut" {
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
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=..revisionOutXSDToLogical(data) Goto:data="" XMLImportErr Goto:('..revisionOutIsValid(data)) XMLImportErr
     }
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   Set ..revisionOut=data
   If $$XMLLOOP()'=0 Goto XMLImportExit }
 If tag="reference" {
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
             Set data=$zstrip(data,"<>W",$c(13,10)) If data'="" Set data=$case(data,"true":1,"false":0,1:1,0:0,:"") Goto:data="" XMLImportErr Goto:('$s($isvalidnum(data,0,0,2)&&(+data'=2):1,1:$$Error^%apiOBJ(7206,data))) XMLImportErr
     }
     If encoded,($data(@(tree)@(ref,"a","id"))) Set idlist(ref)=data
   }
   Set ..reference=data
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
 If ..namespaceId'="" Quit 0
 If ..id'="" Quit 0
 If ..name'="" Quit 0
 If ..code'="" Quit 0
 If ..revisionIn'="" Quit 0
 If ..revisionOut'="" Quit 0
 If ..reference'="" Quit 0
 Quit 1
zXMLNew(document,node,containerOref="")
	Quit (##class(BSTS.ns1.TKind).%New())
zXMLSchema(top="",format="",namespacePrefix="",input=0,refOnly=0,schema)
 Quit ##class(%XML.Implementation).XMLSchema("BSTS.ns1.TKind",top,format,namespacePrefix,input,refOnly,.schema)
zreferenceDisplayToLogical(%val) public {
	Quit ''%val }
zreferenceIsValid(%val="") public {
	Q $s($isvalidnum(%val,0,0,2)&&(+%val'=2):1,1:$$Error^%apiOBJ(7206,%val)) }
zreferenceLogicalToXSD(%val) public {
	Q $s(%val:"true",1:"false") }
zreferenceNormalize(%val) public {
	Quit %val\1 }
zreferenceXSDToLogical(%val) public {
	Q $case(%val,"true":1,"false":0,1:1,0:0,:"") }