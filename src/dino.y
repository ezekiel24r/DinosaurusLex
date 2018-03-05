%{

#include <stdio.h>

%}

%token t_BOOLEAN t_ELSE t_IMPLEMENTS t_PRINTLN t_VOID t_MULTIPLICATION t_LESSEQUAL t_NOTEQUAL t_ASSIGNOP t_LEFTPAREN t_LEFTBRACE t_STRINGCONSTANT t_BREAK t_EXTENDS t_INT t_READLN t_WHILE t_DIVISION t_GREATER t_AND t_SEMICOLON t_RIGHTPAREN t_RIGHTBRACE t_BOOLEANCONSTANT t_CLASS t_FOR t_INTERFACE t_RETURN t_PLUS t_MOD t_GREATEREQUAL t_OR t_COMMA t_LEFTBRACKET t_INTCONSTANT t_ID t_DOUBLE t_IF t_NEWARRAY t_STRING t_MINUS t_LESS t_EQUAL t_NOT t_PERIOD t_RIGHTBRACKET t_DOUBLECONSTANT


%%
statement : expression '\n' {printf("=%d\n",$1); exit(0);}
 ;
expression : expression '+' expression {$$=$1+$3;}
 | expression '-' expression {$$=$1-$3;}
 | expression '*' expression {$$=$1*$3;}
 | expression '/' expression {
 if ($3==0) {yyerror("divide by 0"); exit(0);}
 else $$=$1/$3;}
 | t_NUM {$$=$1;}
 ;


Decl : VariableDecl
 | FunctionDecl
 |  ClassDecl
 | InterfaceDecl
;

VariableDecl : Variable _semicolon
;

Variable :  Type id
;

Type : int
 | double
 | booleanType
 | string
 | Type _leftBrace _rightBrace
 | id
;

FunctionDecl :  Type id _leftParen Formals _rightParen StmtBlock
 |  void id _leftParen Formals _rightParen StmtBlock 
;

Formals : Variable D
 | epsilon
;

D : _comma Variable D
 | epsilon
;

ClassDecl :  class id A B _leftBrace P _rightBrace
;

A :  extends id
 | epsilon
;

B : implements id C
;

C : _comma id C
 | epsilon
;

P : Field P
 | epsilon
;

Field : VariableDecl
 | FunctionDecl 
;

InterfaceDecl : interface id _leftBrace E _rightBrace
;

E : Prototype E
 | epsilon
;

Prototype : Type id _leftParen Formals _rightParen _semicolon
 | void id _leftParen Formals _rightParen _semicolon
;

StmtBlock : _leftBrace K L _rightBrace
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

M : Expr _semicolon
 | epsilon
;

IfStmt : if _leftParen Expr _rightParen Stmt N
;

N : else Stmt
 | epsilon
;

WhieStmt : while _leftParen Expr _rightParen Stmt
;

ForStmt : for _leftParen H _semicolon Expr _semicolon H _rightParen Stmt
;

H :  Expr
 | epsilon
;

BreakStmt : break _semicolon
;

ReturnStmt : return O _semicolon
;

O :  Expr
 | epsilon
;

PrintStmt :  println _leftParen  F _rightParen _semicolon 
;

F : Expr G
;

G :  _comma Expr G
 | epsilon
;

Expr : Lvalue _equal Expr 
 | Constant 
 | Lvalue 
 | Call 
 | _LeftParen Expr _RightParen 
 | Expr _plus Expr 
 | Expr _minus Expr 
 | Expr _multiple Exprcd..
 | Expr _divide Expr 
 | Expr _modulus Expr
 | _negative Expr
 | Expr _lessThan Expr 
 | Expr _lessThanEqualTo Expr
 | Expr _greaterThan Expr 
 | Expr _greaterThanEqual Expr
 | Expr _equalEqual Expr 
 | Expr _notEqualTo Expr
 | Expr _AND Expr
 | Expr _OR Expr 
 | _NOT Expr
 | readln _leftParen _rightParen 
 | newarray _leftParen intconstant _comma Type _rightParen
;

Lvalue : id
| Lvalue _LeftBrac Expr _RightBrac
| Lvalue _period id
;

Call : id_LeftParen Actuals _RightParen
| id_period id _LeftParen Actuals _RightParen
;

Actuals : Expr R
| epsilon
;
R : _comma Expr R
| epsilon
;

Constant : intconstant
| doubleconstant
| stringconstant
| booleanconstant
;





%%



void yyerror(char *s) {
 fprintf(stderr, "%s\n", s);
}
int main() {
 yyparse();
}

