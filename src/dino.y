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
%%



void yyerror(char *s) {
 fprintf(stderr, "%s\n", s);
}
int main() {
 yyparse();
}

