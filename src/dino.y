%{

    #include <stdio.h>
    #ifdef YYDEBUG
    extern int yydebug;
    #endif



%}

%token t_BOOLEAN t_ELSE t_IMPLEMENTS t_PRINTLN t_VOID t_LEFTPAREN t_LEFTBRACE t_STRINGCONSTANT t_BREAK t_EXTENDS t_INT t_READLN t_WHILE t_SEMICOLON t_RIGHTPAREN t_RIGHTBRACE t_BOOLEANCONSTANT t_CLASS t_FOR t_INTERFACE t_RETURN t_COMMA t_INTCONSTANT t_ID t_DOUBLE t_IF t_NEWARRAY t_STRING t_RIGHTBRACKET t_DOUBLECONSTANT

%nonassoc t_ASSIGNOP
%left t_OR
%left t_AND
%nonassoc t_EQUAL t_NOTEQUAL
%nonassoc t_LESS t_GREATER t_GREATEREQUAL t_LESSEQUAL
%left t_PLUS t_MINUS
%left t_MULTIPLICATION t_DIVISION t_MOD
%right t_NOT
%right t_LEFTBRACKET t_PERIOD


%%

Start : Program {printf("reduce 1\n");};

Program : Decl Program {printf("reduce 2\n");}
 | Decl {printf("reduce 3\n");}
;

Decl : VariableDecl {printf("reduce 4\n");}
 | FunctionDecl {printf("reduce 5\n");}
 |  ClassDecl {printf("reduce 6\n");}
 | InterfaceDecl {printf("reduce 7\n");}
;

VariableDecl : Variable t_SEMICOLON {printf("reduce 8\n");};
;

Variable :  Type t_ID {printf("reduce 9\n");}
;

Type : t_INT {printf("reduce 11\n");}
 | t_DOUBLE {printf("reduce 12\n");}
 | t_BOOLEAN {printf("reduce 13\n");}
 | t_STRING {printf("reduce 14\n");}
 | Type t_LEFTBRACKET t_RIGHTBRACKET {printf("reduce 15\n");}
 | t_ID {printf("reduce 16\n");}
;

FunctionDecl :  Type t_ID t_LEFTPAREN Formals t_RIGHTPAREN StmtBlock {printf("reduce 17\n");}
 |  t_VOID t_ID t_LEFTPAREN Formals t_RIGHTPAREN StmtBlock {printf("reduce 18\n");}
;

Formals : Variable MoreVariables {printf("reduce 19\n");}
 | epsilon {printf("reduce 20\n");}
;

MoreVariables : t_COMMA Variable MoreVariables {printf("reduce 21\n");}
 | epsilon {printf("reduce 22\n");}
;

ClassDecl : t_CLASS t_ID OptExtends OptImplements t_LEFTBRACE OptFields t_RIGHTBRACE {printf("reduce 23\n");}
;

OptExtends :  t_EXTENDS t_ID {printf("reduce 24\n");}
 | epsilon {printf("reduce 25\n");}
;

OptImplements : t_IMPLEMENTS t_ID MoreIDs {printf("reduce 26\n");}
;

MoreIDs : t_COMMA t_ID MoreIDs {printf("reduce 27\n");}
 | epsilon {printf("reduce 28\n");}
;

OptFields : Field OptFields {printf("reduce 29\n");}
 | epsilon {printf("reduce 30\n");}
;

Field : VariableDecl {printf("reduce 31\n");}
 | FunctionDecl {printf("reduce 32\n");}
;

InterfaceDecl : t_INTERFACE t_ID t_LEFTBRACE OptPrototypes t_RIGHTBRACE {printf("reduce 33\n");}
;

OptPrototypes : Prototype OptPrototypes {printf("reduce 34\n");}
 | epsilon {printf("reduce 34\n");}
;

Prototype : Type t_ID t_LEFTPAREN Formals t_RIGHTPAREN t_SEMICOLON {printf("reduce 35\n");}
 | t_VOID t_ID t_LEFTPAREN Formals t_RIGHTPAREN t_SEMICOLON {printf("reduce 36\n");}
;

StmtBlock : t_LEFTBRACE OptVariableDecl OptStmt t_RIGHTBRACE {printf("reduce 37\n");}
;

OptVariableDecl : VariableDecl OptVariableDecl {printf("reduce 38\n");}
 |  epsilon {printf("reduce 39\n");}
;

OptStmt : Stmt OptStmt {printf("reduce 40\n");}
 | epsilon {printf("reduce 41\n");}
;

Stmt : ExprStmt {printf("reduce 42\n");}
 | IfStmt {printf("reduce 43\n");}
 | WhileStmt {printf("reduce 44\n");}
 | ForStmt {printf("reduce 45\n");}
 | BreakStmt {printf("reduce 46\n");}
 | ReturnStmt {printf("reduce 47\n");}
 | PrintStmt {printf("reduce 48\n");}
 | StmtBlock {printf("reduce 49\n");}
;

ExprStmt : Expr t_SEMICOLON {printf("reduce 50\n");}
 | t_SEMICOLON {printf("reduce 51\n");}
;

IfStmt : t_IF t_LEFTPAREN Expr t_RIGHTPAREN Stmt OptElseStmt {printf("reduce 52\n");}
;

OptElseStmt : t_ELSE Stmt {printf("reduce 53\n");}
 | epsilon {printf("reduce 54\n");}
;

WhileStmt : t_WHILE t_LEFTPAREN Expr t_RIGHTPAREN Stmt {printf("reduce 55\n");}
;

ForStmt : t_FOR t_LEFTPAREN OptExpr t_SEMICOLON Expr t_SEMICOLON OptExpr t_RIGHTPAREN Stmt {printf("reduce 56\n");}
;

OptExpr :  Expr {printf("reduce 57\n");}
 | epsilon {printf("reduce 58\n");}
;

BreakStmt : t_BREAK t_SEMICOLON {printf("reduce 59\n");}
;

ReturnStmt : t_RETURN OptExpr t_SEMICOLON {printf("reduce 60\n");}
;

PrintStmt :  t_PRINTLN t_LEFTPAREN  OptExprs t_RIGHTPAREN t_SEMICOLON {printf("reduce 61\n");}
;

OptExprs : Expr MoreExprs {printf("reduce 62\n");}
;

MoreExprs :  t_COMMA Expr MoreExprs {printf("reduce 63\n");}
 | epsilon {printf("reduce 64\n");}
;

Expr : Lvalue t_ASSIGNOP Expr {printf("reduce 65\n");}
 | Constant {printf("reduce 66\n");}
 | Lvalue {printf("reduce 67\n");}
 | Call {printf("reduce 68\n");}
 | t_LEFTPAREN Expr t_RIGHTPAREN {printf("reduce 69\n");}
 | Expr t_PLUS Expr {printf("reduce 70\n");}
 | Expr t_MINUS Expr {printf("reduce 71\n");}
 | Expr t_MULTIPLICATION Expr {printf("reduce 72\n");}
 | Expr t_DIVISION Expr {printf("reduce 73\n");}
 | Expr t_MOD Expr {printf("reduce 74\n");}
 | t_MINUS Expr {printf("reduce 75\n");}
 | Expr t_LESS Expr {printf("reduce 76\n");}
 | Expr t_LESSEQUAL Expr {printf("reduce 77\n");}
 | Expr t_GREATER Expr {printf("reduce 78\n");}
 | Expr t_GREATEREQUAL Expr {printf("reduce 79\n");}
 | Expr t_EQUAL Expr {printf("reduce 80\n");}
 | Expr t_NOTEQUAL Expr {printf("reduce 81\n");}
 | Expr t_AND Expr {printf("reduce 82\n");}
 | Expr t_OR Expr {printf("reduce 83\n");}
 | t_NOT Expr {printf("reduce 84\n");}
 | t_READLN t_LEFTPAREN t_RIGHTPAREN {printf("reduce 85\n");}
 | t_NEWARRAY t_LEFTPAREN t_INTCONSTANT t_COMMA Type t_RIGHTPAREN {printf("reduce 86\n");}
;

Lvalue : t_ID {printf("reduce 87\n");}
| Lvalue t_LEFTBRACKET Expr t_RIGHTBRACKET {printf("reduce 88\n");}
| Lvalue t_PERIOD t_ID {printf("reduce 89\n");}
;

Call : t_ID t_LEFTPAREN Actuals t_RIGHTPAREN {printf("reduce 90\n");}
| t_ID t_PERIOD t_ID t_LEFTPAREN Actuals t_RIGHTPAREN {printf("reduce 91\n");}
;

Actuals : Expr MoreExprs {printf("reduce 92\n");}
| epsilon {printf("reduce 93\n");}
;

Constant : t_INTCONSTANT {printf("reduce 94\n");}
| t_DOUBLECONSTANT {printf("reduce 95\n");}
| t_STRINGCONSTANT {printf("reduce 96\n");}
| t_BOOLEANCONSTANT {printf("reduce 97\n");}
;

epsilon : {printf("reduce 98\n");};



%%





void yyerror(char *s) {
 //fprintf(stderr, "%s\n", s);
}
int main() {
    initFirstLetter();
    initSymAndNext();
    //yydebug = 1;
    yyparse();
}

