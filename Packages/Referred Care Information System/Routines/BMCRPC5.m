BMCRPC5 ; IHS/CAS/AU - GUI REFERRED CARE INFO SYSTEM (4/4);     
 ;;4.0;REFERRED CARE INFO SYSTEM;**11,12**;JAN 09, 2006;Build 101
 ;
 ;GDIT/HS/BEE 10/19/17 - p12 CR#5450:Added BMC PRINT REFERRAL RPC call (tag PRINT)
 ;GDIT/HS/BEE 10/19/17 - p12 - Address XINDEX/SAC issues
 ;
 ; RPC code for RCIS GUI Application
 ; Routines contains code for saving Business office and Medical History/Finding in RCIS Referral table.
 ;SETWP(FN,WPFN,IEN,NOTES,ISAPPEND,ISDELETE) ;Set WordProcessing Data based on file, field and IEN information!
 ;S FileNumber=$G(FN),WpFieldNumber=$G(WPFN),RowId=$G(IEN),Notes=$G(NOTES),IsAppend=$G(ISAPPEND),IsDelete=$G(ISDELETE)
 ;I +$G(RowId)<1,+$G(FileNumber)<1,+$G(WpFieldNumber)<1,$L($G(Notes))<1 Q "0^Required Data missing"
 ;I $G(Notes)["2@%Library.GlobalBinaryStream" Q "-2^GlobalBinaryStream error"
 ;N err,wproot,wp,i,OrigCharCount,RunningCharCount
 ;S OrigCharCount=$L($G(Notes))
 ;I IsDelete S wproot="@"
 ;I 'IsDelete  D
 ;. S Notes=$LISTFROMSTRING(Notes,$c(13))
 ;. S wproot="wp",i=0,RunningCharCount=0
 ;. F i=1:1:$ll(Notes) S wp(i)=$lg(Notes,i)
 ;I IsAppend D WP^DIE(FileNumber,RowId_",",WpFieldNumber,"AK",wproot,"err")
 ;I 'IsAppend D WP^DIE(FileNumber,RowId_",",WpFieldNumber,"K",wproot,"err")
 ;I $D(err) Q "-1^"_$G(err("DIERR",1,"TEXT",1))
 ;K err,wproot,wp,i,OrigCharCount,RunningCharCount,Notes,RowId,FileNumber,WpFieldNumber
 ;Q "1"
SETWP(FILENUM,WPFLDNM,ROWID,NOTES,ISAPPEND,ISDELETE) ;EP Set WordProcessing Data based on file, field and IEN information
 ;
 NEW ERR,WPROOT,WP,II
 ;
 S ISAPPEND=$G(ISAPPEND),ISDELETE=$G(ISDELETE)
 ;
 ;Input checking
 I (+$G(ROWID)<1)!(+$G(FILENUM)<1)!(+$G(WPFLDNM)<1)!($L($G(NOTES))<1) Q "0^Required Data missing"
 I NOTES["2@%Library.GlobalBinaryStream" Q "-2^GlobalBinaryStream error"
 ;
 ;Deletes
 I ISDELETE S WPROOT="@"
 ;
 ;Format Add/Appends
 I 'ISDELETE  D
 . S WPROOT="WP"
 . F II=1:1:$L(NOTES,"~") S WP(II)=$P(NOTES,"~",II)
 ;
 ;Add/Append/Delete
 I ISAPPEND D WP^DIE(FILENUM,ROWID_",",WPFLDNM,"AK",WPROOT,"ERR")
 I 'ISAPPEND D WP^DIE(FILENUM,ROWID_",",WPFLDNM,"K",WPROOT,"ERR")
 I $D(ERR) Q "-1^"_$G(ERR("DIERR",1,"TEXT",1))
 Q "1"
 ;
 ;GDIT/HS/BEE 10/19/17 - p12 CR#5450;Added PRINT and GETRPT tags
PRINT(ROOT,BMCREF) ;EP RPC - BMC PRINT REFERRAL
 ;
 ;This tag is called by the BMC PRINT REFERRAL RPC call - It returns a formatted
 ;STANDARD IHS REFERRAL LETTER for a passed in referral number
 ;
 ;Input: BMCREF - Pointer to RCIS REFERRAL entry
 ;
 ;Reset output and define root
 K ^TMP("BMCDATA",$J)
 S ROOT=$NA(^TMP("BMCDATA",$J,1))
 ;
 ;Compile the report
 D GETRPT(.ROOT,BMCREF)
 Q
 ;
GETRPT(DATA,BMCREF) ;Retrieve the referral letter
 NEW II
 S DATA=$$TMPGBL^CIAVMRPC
 I '$G(BMCREF) S @DATA@(1)="A referral has not been selected." Q
 D CAPTURE^CIAUHFS("D GPRINT^BMCFPRN(BMCREF)",DATA,80)
 S:'$D(@DATA) @DATA@(1)="No referral information was found."
 ;
 ;Append CR/LF to end of each line
 S II="" F  S II=$O(@DATA@(II)) Q:II=""  S @DATA@(II)=@DATA@(II)_$C(13)_$C(10)
 Q
