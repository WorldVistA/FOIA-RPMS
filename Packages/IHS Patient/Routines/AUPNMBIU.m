AUPNMBIU ; IHS/OIT/FBD&NKD - MBI API UTILITIES ; 11/02/2017 ;
 ;;99.1;IHS DICTIONARIES (PATIENT);**26**;MAR 9, 1999;Build 11
 ;
 Q  ;NO TOP-LEVEL CALL ALLOWED
 ;
RAND() ;PEP - RANDOM MBI VALUE GENERATOR
 ;Function: Return randomly generated MBI value (for testing use)
 ;Call: $$RAND^AUPNMBIU
 ;Returned value: Randomly generated text string complying with CMS-defined MBI format
 ;
 ;Acceptable MBI Format is:
 ;                            1 1
 ;Position: 1 2 3 4 5 6 7 8 9 0 1
 ;          ---------------------
 ;    Type: C A X N A X N A A N N
 ;
 ;Types are:
 ;  A = Alphabetic characters A-Z
 ;  C = Natural numbers 1-9
 ;  N = Whole numbers 0-9
 ;  X = Alphanumeric characters 0-9 and A-Z
 ;Letters excluded from use in alphabetics and alphanumerics: S, L, O, B, I, Z
 ;
 N RES
 S RES=$$C_$$A_$$X_$$N_$$A_$$X_$$N_$$A_$$A_$$N_$$N
 Q RES
 ;
C() Q $C((49+$R(9)))   ;RANDOM GENERATOR FOR NATURAL NUMBERS 1-9
 ;
N() Q $C((48+$R(10)))  ;RANDOM GENERATOR FOR WHOLE NUMBERS 0-9
 ;
A()  ;RANDOM GENERATOR FOR ALPHABETIC CHARACTERS A-Z
 N X,EXCLUDE
 S EXCLUDE="SLOBIZ"  ;EXCLUSIONS FROM ACCEPTABLE CHARACTER LIST
 F  S X=65+$R(26) Q:EXCLUDE'[$C(X)
 Q $C(X)
 ;
X()  ;RANDOM GENERATOR FOR ALPHANUMERIC CHARACTERS 0-9 AND A-Z
 N X,EXCLUDE
 S EXCLUDE="SLOBIZ"  ;EXCLUSIONS FROM ACCEPTABLE CHARACTER LIST
 F  D  Q:$G(X)  ;REPEAT LOOP UNTIL AN ACCEPTABLE VALUE PERSISTS THROUGH ALL CHECKS
 . S X=48+$R(43)  ;RANDOM GENERATOR
 . Q:X<58  ;EXIT IF GENERATED RANDOM VALUE FALLS INTO NUMERIC RANGE (ASCII 48-57 = CHARS "0"-"9")
 . I X>64 D  ;CHECK FURTHER IF GENERATED RANDOM VALUE FALLS INTO ALPHABETIC RANGE (ASCII 65-90 = CHARS "A"-"Z")
 . . K:EXCLUDE[$C(X) X  ;ELIMINATE IF GENERATED RANDOM VALUE CORRESPONDS TO EXCLUDED ASCII CHAR
 . E  K X
 Q $C(X)
 ;
