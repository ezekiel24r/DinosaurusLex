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

Start : Program {printf("reduce by rule 1\n");};

Program : Decl Program {printf("reduce by rule 2\n");}
 | Decl {printf("reduce by rule 3\n");}
;

Decl : VariableDecl {printf("reduce by rule 4\n");}
 | FunctionDecl {printf("reduce by rule 5\n");}
 |  ClassDecl {printf("reduce by rule 6\n");}
 | InterfaceDecl {printf("reduce by rule 7\n");}
;

VariableDecl : Variable t_SEMICOLON {printf("reduce by rule 8\n");};
;

Variable :  Type t_ID {printf("reduce by rule 9\n");}
;

Type : t_INT {printf("reduce by rule 10\n");}
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

StmtBlock : t_LEFTBRACE OptVariableDecl OptStmt t_RIGHTBRACE
;

OptVariableDecl : VariableDecl OptVariableDecl
 |  epsilon
;

OptStmt : Stmt OptStmt
 | epsilon
;

Stmt : ExprStmt
 | IfStmt
 | WhileStmt
 | ForStmt
 | BreakStmt
 | ReturnStmt
 | PrintStmt
 | StmtBlock
;

ExprStmt : Expr t_SEMICOLON
 | t_SEMICOLON
;

IfStmt : t_IF t_LEFTPAREN Expr t_RIGHTPAREN Stmt OptElseStmt
;

OptElseStmt : t_ELSE Stmt
 | epsilon
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

Expr : Lvalue t_ASSIGNOP Expr 
 | Constant 
 | Lvalue 
 | Call 
 | t_LEFTPAREN Expr t_RIGHTPAREN 
 | Expr t_PLUS Expr 
 | Expr t_MINUS Expr 
 | Expr t_MULTIPLICATION Expr
 | Expr t_DIVISION Expr 
 | Expr t_MOD Expr
 | t_MINUS Expr
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
| Lvalue t_LEFTBRACKET Expr t_RIGHTBRACKET
| Lvalue t_PERIOD t_ID
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
 //fprintf(stderr, "%s\n", s);
}
int main() {
    initFirstLetter();
    initSymAndNext();
    //yydebug = 1;
    yyparse();
}

