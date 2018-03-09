%{

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

Start : Program 
;

Program : Decl Program
 | Decl
;

Decl : VariableDecl
 | FunctionDecl
 |  ClassDecl
 | InterfaceDecl
;

VariableDecl : Variable t_SEMICOLON
;

Variable :  Type t_ID
;


Type : t_INT
 | t_DOUBLE
 | t_BOOLEAN
 | t_STRING
 | Type t_LEFTBRACKET t_RIGHTBRACKET
 | t_ID
 ;

FunctionDecl :  Type t_ID t_LEFTPAREN Formals t_RIGHTPAREN StmtBlock
 |  t_VOID t_ID t_LEFTPAREN Formals t_RIGHTPAREN StmtBlock 
;

Formals : Variable MoreVariables
 | epsilon
;

MoreVariables : t_COMMA Variable MoreVariables
 | epsilon
;

ClassDecl : t_CLASS t_ID OptExtends OptImplements t_LEFTBRACE OptFields t_RIGHTBRACE
;

OptExtends :  t_EXTENDS t_ID
 | epsilon
;

OptImplements : t_IMPLEMENTS t_ID MoreIDs
| epsilon
;

MoreIDs : t_COMMA t_ID MoreIDs
 | epsilon
;

OptFields : Field OptFields
 | epsilon
;

Field : VariableDecl
 | FunctionDecl 
;

InterfaceDecl : t_INTERFACE t_ID t_LEFTBRACE OptPrototypes t_RIGHTBRACE
;

OptPrototypes : Prototype OptPrototypes
 | epsilon
;

Prototype : Type t_ID t_LEFTPAREN Formals t_RIGHTPAREN t_SEMICOLON
 | t_VOID t_ID t_LEFTPAREN Formals t_RIGHTPAREN t_SEMICOLON
;

StmtBlock : t_LEFTBRACE OptStmtBlock t_RIGHTBRACE
;

OptStmtBlock : OptVariableDecl
 | OptStmt
;

OptVariableDecl : VariableDecl OptVariableDecl
 | OptStmt
;

OptStmt : Stmt OptStmt
 | epsilon
;

Stmt : OptExpr t_SEMICOLON
 | IfStmt
 | WhileStmt
 | ForStmt
 | BreakStmt
 | ReturnStmt
 | PrintStmt
 | StmtBlock
;

IfStmt : t_IF t_LEFTPAREN Expr t_RIGHTPAREN Stmt        %prec "noelse"
 | t_IF t_LEFTPAREN Expr t_RIGHTPAREN Stmt t_ELSE Stmt
;

WhileStmt : t_WHILE t_LEFTPAREN Expr t_RIGHTPAREN Stmt
;

ForStmt : t_FOR t_LEFTPAREN OptExpr t_SEMICOLON Expr t_SEMICOLON OptExpr t_RIGHTPAREN Stmt
;

OptExpr :  Expr
 | epsilon
;

BreakStmt : t_BREAK t_SEMICOLON
;

ReturnStmt : t_RETURN OptExpr t_SEMICOLON
;

PrintStmt :  t_PRINTLN t_LEFTPAREN  OptExprs t_RIGHTPAREN t_SEMICOLON 
;

OptExprs : Expr MoreExprs
;

MoreExprs :  t_COMMA Expr MoreExprs
 | epsilon
;

Expr :Lvalue t_ASSIGNOP Expr
 | Constant 
 | Lvalue
 | Call
 | t_LEFTPAREN Expr t_RIGHTPAREN 
 | Expr t_PLUS Expr 
 | Expr t_MINUS Expr 
 | Expr t_MULTIPLICATION Expr
 | Expr t_DIVISION Expr 
 | Expr t_MOD Expr
 | t_MINUS Expr   %prec t_UNARYMINUS
 | Expr t_LESS Expr 
 | Expr t_LESSEQUAL Expr
 | Expr t_GREATER Expr 
 | Expr t_GREATEREQUAL Expr
 | Expr t_EQUAL Expr 
 | Expr t_NOTEQUAL Expr
 | Expr t_AND Expr
 | Expr t_OR Expr 
 | t_NOT Expr
 | t_READLN t_LEFTPAREN t_RIGHTPAREN 
 | t_NEWARRAY t_LEFTPAREN t_INTCONSTANT t_COMMA Type t_RIGHTPAREN
;

Lvalue : t_ID
 | Lvalue t_PERIOD t_ID
 | Lvalue t_LEFTBRACKET Expr t_RIGHTBRACKET
;

Call : t_ID t_LEFTPAREN Actuals t_RIGHTPAREN
| t_ID t_PERIOD t_ID t_LEFTPAREN Actuals t_RIGHTPAREN
;

Actuals : Expr MoreExprs
| epsilon
;

Constant : t_INTCONSTANT 
| t_DOUBLECONSTANT
| t_STRINGCONSTANT
| t_BOOLEANCONSTANT
;

epsilon : ;



%%





void yyerror(char *s) {
 fprintf(stderr, "%s\n", s);
}
int main() {
    initFirstLetter();
    initSymAndNext();
    yydebug = 1;
    return(yyparse());
}

