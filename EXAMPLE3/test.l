%{
#include <stdlib.h>
#include "y.tab.h"
extern int yylval;
%}
digit [0-9]
number {digit}+
ws [ \t]

%%

{ws} ;
{number} {yytext[yyleng]='\0'; yylval=atoi(yytext);
 return t_NUM;}
\n |
. {return yytext[0];}

%%


