%{
/*
    comments go here

*/

    #include <stdio.h>
    #ifdef YYDEBUG
    extern int yydebug;
    #endif

    int dflag;

%}

%token t_BOOLEAN t_ELSE t_IMPLEMENTS t_PRINTLN t_VOID t_LEFTPAREN t_LEFTBRACE t_STRINGCONSTANT t_BREAK t_EXTENDS t_INT t_READLN t_WHILE t_SEMICOLON t_RIGHTPAREN t_RIGHTBRACE t_BOOLEANCONSTANT t_CLASS t_FOR t_INTERFACE t_RETURN t_COMMA t_INTCONSTANT t_ID t_DOUBLE t_IF t_NEWARRAY t_STRING t_RIGHTBRACKET t_DOUBLECONSTANT


%nonassoc "noelse"
%nonassoc t_ELSE
%nonassoc t_ASSIGNOP
%nonassoc t_ID
%left t_OR
%left t_AND
%nonassoc t_EQUAL t_NOTEQUAL
%nonassoc t_LESS t_GREATER t_GREATEREQUAL t_LESSEQUAL
%left t_PLUS t_MINUS
%left t_MULTIPLICATION t_DIVISION t_MOD
%right t_NOT t_UNARYMINUS
%right t_LEFTBRACKET t_PERIOD
%nonassoc "lvalue"

%%

Start : Program {printf("[reduce 0]\n[accept]\n");}
;

Program : Decl Program {printf("[reduce 1]");}
 | Decl {printf("[reduce 2]");}
;

Decl : VariableDecl {printf("[reduce 3]");}
 | FunctionDecl {printf("[reduce 4]");}
 |  ClassDecl {printf("[reduce 5]");}
 | InterfaceDecl {printf("[reduce 6]");}
;

VariableDecl : Variable t_SEMICOLON {printf("[reduce 7]");}
;

Variable :  Type t_ID {printf("[reduce 8]");}
;


Type : t_INT {printf("[reduce 9]");}
 | t_DOUBLE {printf("[reduce 10]");}
 | t_BOOLEAN {printf("[reduce 11]");}
 | t_STRING {printf("[reduce 12]");}
 | Type t_LEFTBRACKET t_RIGHTBRACKET {printf("[reduce 13]");}
 | t_ID {printf("[reduce 14]");}
 ;

FunctionDecl :  Type t_ID t_LEFTPAREN Formals t_RIGHTPAREN StmtBlock {printf("[reduce 15]");}
 |  t_VOID t_ID t_LEFTPAREN Formals t_RIGHTPAREN StmtBlock {printf("[reduce 16]");}
;

Formals : Variable MoreVariables {printf("[reduce 17]");}
 | epsilon {printf("[reduce 18]");}
;

MoreVariables : t_COMMA Variable MoreVariables {printf("[reduce 19]");}
 | epsilon {printf("[reduce 20]");}
;

ClassDecl : t_CLASS t_ID OptExtends OptImplements t_LEFTBRACE OptFields t_RIGHTBRACE {printf("[reduce 21]");}
;

OptExtends :  t_EXTENDS t_ID {printf("[reduce 22]");}
 | epsilon {printf("[reduce 23]");}
;

OptImplements : t_IMPLEMENTS t_ID MoreIDs {printf("[reduce 24]");}
| epsilon {printf("[reduce 25]");}
;

MoreIDs : t_COMMA t_ID MoreIDs {printf("[reduce 26]");}
 | epsilon {printf("[reduce 27]");}
;

OptFields : Field OptFields {printf("[reduce 28]");}
 | epsilon {printf("[reduce 29]");}
;

Field : VariableDecl {printf("[reduce 30]");}
 | FunctionDecl {printf("[reduce 31]");}
;

InterfaceDecl : t_INTERFACE t_ID t_LEFTBRACE OptPrototypes t_RIGHTBRACE {printf("[reduce 32]");}
;

OptPrototypes : Prototype OptPrototypes {printf("[reduce 33]");}
 | epsilon {printf("[reduce 34]");}
;

Prototype : Type t_ID t_LEFTPAREN Formals t_RIGHTPAREN t_SEMICOLON {printf("[reduce 35]");}
 | t_VOID t_ID t_LEFTPAREN Formals t_RIGHTPAREN t_SEMICOLON {printf("[reduce 36]");}
;

StmtBlock : t_LEFTBRACE OptStmtBlock t_RIGHTBRACE {printf("[reduce 37]");}
;

OptStmtBlock : OptVariableDecl {printf("[reduce 38]");}
 | OptStmt {printf("[reduce 39]");}
;

OptVariableDecl : VariableDecl OptVariableDecl {printf("[reduce 40]");}
 | OptStmt {printf("[reduce 41]");}
;

OptStmt : Stmt OptStmt {printf("[reduce 42]");}
 | epsilon {printf("[reduce 43]");}
;

Stmt : OptExpr t_SEMICOLON {printf("[reduce 44]");}
 | IfStmt {printf("[reduce 45]");}
 | WhileStmt {printf("[reduce 46]");}
 | ForStmt {printf("[reduce 47]");}
 | BreakStmt {printf("[reduce 48]");}
 | ReturnStmt {printf("[reduce 49]");}
 | PrintStmt {printf("[reduce 50]");}
 | StmtBlock {printf("[reduce 51]");}
;

IfStmt : t_IF t_LEFTPAREN Expr t_RIGHTPAREN Stmt        %prec "noelse" {printf("[reduce 52]");}
 | t_IF t_LEFTPAREN Expr t_RIGHTPAREN Stmt t_ELSE Stmt {printf("[reduce 53]");}
;

WhileStmt : t_WHILE t_LEFTPAREN Expr t_RIGHTPAREN Stmt {printf("[reduce 54]");}
;

ForStmt : t_FOR t_LEFTPAREN OptExpr t_SEMICOLON Expr t_SEMICOLON OptExpr t_RIGHTPAREN Stmt {printf("[reduce 55]");}
;

OptExpr :  Expr {printf("[reduce 56]");}
 | epsilon {printf("[reduce 57]");}
;

BreakStmt : t_BREAK t_SEMICOLON {printf("[reduce 58]");}
;

ReturnStmt : t_RETURN OptExpr t_SEMICOLON {printf("[reduce 59]");}
;

PrintStmt :  t_PRINTLN t_LEFTPAREN  OptExprs t_RIGHTPAREN t_SEMICOLON {printf("[reduce 60]");}
;

OptExprs : Expr MoreExprs {printf("[reduce 61]");}
;

MoreExprs :  t_COMMA Expr MoreExprs {printf("[reduce 62]");}
 | epsilon {printf("[reduce 63]");}
;

Expr :Lvalue t_ASSIGNOP Expr {printf("[reduce 64]");}
 | Constant {printf("[reduce 65]");}
 | Lvalue{printf("[reduce 66]");}
 | Call {printf("[reduce 67]");}
 | t_LEFTPAREN Expr t_RIGHTPAREN  {printf("[reduce 68]");}
 | Expr t_PLUS Expr {printf("[reduce 69]");}
 | Expr t_MINUS Expr {printf("[reduce 70]");}
 | Expr t_MULTIPLICATION Expr {printf("[reduce 71]");}
 | Expr t_DIVISION Expr {printf("[reduce 72]");}
 | Expr t_MOD Expr {printf("[reduce 73]");}
 | t_MINUS Expr   %prec t_UNARYMINUS {printf("[reduce 74]");}
 | Expr t_LESS Expr {printf("[reduce 75]");}
 | Expr t_LESSEQUAL Expr {printf("[reduce 76]");}
 | Expr t_GREATER Expr {printf("[reduce 77]");}
 | Expr t_GREATEREQUAL Expr {printf("[reduce 78]");}
 | Expr t_EQUAL Expr {printf("[reduce 79]");}
 | Expr t_NOTEQUAL Expr {printf("[reduce 80]");}
 | Expr t_AND Expr {printf("[reduce 81]");}
 | Expr t_OR Expr {printf("[reduce 82]");}
 | t_NOT Expr {printf("[reduce 83]");}
 | t_READLN t_LEFTPAREN t_RIGHTPAREN {printf("[reduce 84]");}
 | t_NEWARRAY t_LEFTPAREN t_INTCONSTANT t_COMMA Type t_RIGHTPAREN {printf("[reduce 85]");}
;

Lvalue : t_ID {printf("[reduce 86]");}
 | Lvalue t_PERIOD t_ID {printf("[reduce 87]");}
 | Lvalue t_LEFTBRACKET Expr t_RIGHTBRACKET {printf("[reduce 88]");}
;

Call : t_ID t_LEFTPAREN Actuals t_RIGHTPAREN {printf("[reduce 89]");}
| t_ID t_PERIOD t_ID t_LEFTPAREN Actuals t_RIGHTPAREN {printf("[reduce 90]");}
;

Actuals : Expr MoreExprs {printf("[reduce 91]");}
| epsilon {printf("[reduce 92]");}
;

Constant : t_INTCONSTANT {printf("[reduce 93]");}
| t_DOUBLECONSTANT{printf("[reduce 93]");}
| t_STRINGCONSTANT {printf("[reduce 94]");}
| t_BOOLEANCONSTANT {printf("[reduce 95]");}
;

epsilon : {printf("[reduce 96]");}
;



%%





void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}
int main() {
    initFirstLetter();
    initSymAndNext();
    //yydebug = 1;
    return(yyparse());
}

