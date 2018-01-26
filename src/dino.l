%{
#define MAX_LENGTH 10
#define MAX 100
#define INT 1
#define FLOAT 2
#include <stdio.h>
#include <string.h>
#include "y.tab.h"
struct {
    char name[MAX_LENGTH];
    int type;
}table[MAX];
int t_index=0;
int t_flag=0;
%}
letter [a-zA-Z]
digit [0-9]
id {letter}({letter}|{digit})*
number {digit}+
ws [ \t\n]

%%

{ws}    ;

or {t_flag=OR; printf("%sor\n", yytext); return (t_OR);}
comma {t_flag=COMMA; printf("%scomma\n", yytext); return (t_COMMA);}
leftbracket {t_flag=LEFTBRACKET; printf("%sleftbracket\n", yytext); return (t_LEFTBRACKET);}
intconstant {t_flag=INTCONSTANT; printf("%sintconstant\n", yytext); return (t_INTCONSTANT);}
id {t_flag=ID; printf("%sid\n", yytext); return (t_ID);}
double {t_flag=DOUBLE; printf("%sdouble\n", yytext); return (t_DOUBLE);}
if {t_flag=IF; printf("%sif\n", yytext); return (t_IF);}
newarray {t_flag=NEWARRAY; printf("%snewarray\n", yytext); return (t_NEWARRAY);}
string {t_flag=STRING; printf("%sstring\n", yytext); return (t_STRING);}
minus {t_flag=MINUS; printf("%sminus\n", yytext); return (t_MINUS);}
less {t_flag=LESS; printf("%sless\n", yytext); return (t_LESS);}
equal {t_flag=EQUAL; printf("%sequal\n", yytext); return (t_EQUAL);}
not {t_flag=NOT; printf("%snot\n", yytext); return (t_NOT);}
period {t_flag=PERIOD; printf("%speriod\n", yytext); return (t_PERIOD);}
rightbracket {t_flag=RIGHTBRACKET; printf("%srightbracket\n", yytext); return (t_RIGHTBRACKET);}
doubleconstant {t_flag=DOUBLECONSTANT; printf("%sdoubleconstant\n", yytext); return (t_DOUBLECONSTANT);}
"+" {printf("%s\n", yytext); return (t_ADDOP);}
"*" {printf("%s\n", yytext); return (t_MULOP);}
"," {printf("%s\n", yytext); return (t_COMMA);}
";" {printf("%s\n", yytext); return (t_SEMICOL);}
"." {printf("%s\n", yytext); return (t_DOT);}
{number} {printf("%s\n", yytext); return (t_NUM);}

{id}    {yytext[yyleng]='\0'; yylval=insert(yytext);
    printf("%s\n", yytext); return(t_ID);}
.   {printf("error!\n"); return (0);}
    
%%
    int insert(char *s) {
        int i=0;
        while (i< t_index) {
            if (strcmp(s, table[i].name)==0) return i;
            i++;
        }
        strcpy(table[t_index].name, s);
        table[t_index].type = t_flag;
        t_index++;
        return t_index-1;
    }
int main () {
    while (yylex()) {}
}
