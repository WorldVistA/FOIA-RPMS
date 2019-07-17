ARLIS ; ; 27 Feb 2019  7:49 AM
 ;
LEX ;
 S N=0
 F  S N=$O(^LEX(757.02,N)) Q:'N  D
 . S SRC=$$GET1^DIQ(757.02,N_",",2,"E")
 . I SRC="CPC"!(SRC="CPT") S UPD(757.02,N_",",2)="@",UPD(757.02,N_",",1)="@"
 D FILE^DIE("","UPD","ERROR")
 Q
ZSH ;
 S N=0
 F  S N=$O(^%ZIB(9888888.93,N)) Q:'N  D
 . F FLD=.02,.03,.04,.05 S UPD(9888888.93,N_",",FLD)="@"
 D FILE^DIE("","UPD","ERROR")
 Q
