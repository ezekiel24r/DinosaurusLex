%{

#include <stdio.h>

%}

%token t_NUM
%left '+' '-'
%left '*' '/'


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
6
}

