%{

#include <stdio.h>

%}

%token t_BOOLEAN t_ELSE t_IMPLEMENTS t_PRINTLN t_VOID t_LEFTPAREN t_LEFTBRACE t_STRINGCONSTANT t_BREAK t_EXTENDS t_INT t_READLN t_WHILE t_SEMICOLON t_RIGHTPAREN t_RIGHTBRACE t_BOOLEANCONSTANT t_CLASS t_FOR t_INTERFACE t_RETURN t_COMMA t_INTCONSTANT t_ID t_DOUBLE t_IF t_NEWARRAY t_STRING t_RIGHTBRACKET t_DOUBLECONSTANT

%right t_ASSIGNOP
%left t_OR
%left t_AND
%right t_EQUAL t_NOTEQUAL
%left t_LESS t_GREATER t_GREATEREQUAL t_LESSEQUAL
%left t_PLUS t_MINUS
%left t_MULTIPLICATION t_DIVISION t_MOD
%right t_NOT
%right t_LEFTBRACKET t_PERIOD


%%

Start : Program '\n' {exit(0);};

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

Formals : Variable D
 | epsilon
;

D : t_COMMA Variable D
 | epsilon
;

ClassDecl : t_CLASS t_ID A B t_LEFTBRACE P t_RIGHTBRACE
;

A :  t_EXTENDS t_ID
 | epsilon
;

B : t_IMPLEMENTS t_ID C
;

C : t_COMMA t_ID C
 | epsilon
;

P : Field P
 | epsilon
;

Field : VariableDecl
 | FunctionDecl 
;

InterfaceDecl : t_INTERFACE t_ID t_LEFTBRACE E t_RIGHTBRACE
;

E : Prototype E
 | epsilon
;

Prototype : Type t_ID t_LEFTPAREN Formals t_RIGHTPAREN t_SEMICOLON
 | t_VOID t_ID t_LEFTPAREN Formals t_RIGHTPAREN t_SEMICOLON
;

StmtBlock : t_LEFTBRACE K L t_RIGHTBRACE
;

K : VariableDecl K
 |  epsilon
;

L : Stmt L
 | epsilon
;

Stmt : M
 | IfStmt
 | WhileStmt
 | ForStmt
 | BreakStmt
 | ReturnStmt
 | PrintStmt
 | StmtBlock
;

M : Expr t_SEMICOLON
 | epsilon
;

IfStmt : t_IF t_LEFTPAREN Expr t_RIGHTPAREN Stmt N
;

N : t_ELSE Stmt
 | epsilon
;

WhileStmt : t_WHILE t_LEFTPAREN Expr t_RIGHTPAREN Stmt
;

ForStmt : t_FOR t_LEFTPAREN H t_SEMICOLON Expr t_SEMICOLON H t_RIGHTPAREN Stmt
;

H :  Expr
 | epsilon
;

BreakStmt : t_BREAK t_SEMICOLON
;

ReturnStmt : t_RETURN O t_SEMICOLON
;

O :  Expr
 | epsilon
;

PrintStmt :  t_PRINTLN t_LEFTPAREN  F t_RIGHTPAREN t_SEMICOLON 
;

F : Expr G
;

G :  t_COMMA Expr G
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

Actuals : Expr R
| epsilon
;
R : t_COMMA Expr R
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
    #ifdef YYDEBUG
    extern int yydebug;
    #endif
    yydebug = 1;
    yyparse();
}

