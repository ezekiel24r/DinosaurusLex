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
id {letter}({letter}|{digit}|_)*
number {digit}+
decimal {number}"."{digit}*((e|E)("+"|"-")?{number})?
hex (0x|0X)[a-fA-F0-9]+
stringConstant \"[^"\n]*\"
boolean (true|false)
comment ("//".*)|("/*"[^("*/")]*"*/")

ws [ \t\n]



/*commented rules



*/


%%

{ws}    ;

{number} {printf("%s\nnumber\n", yytext); return (t_NUM);}

{decimal} {printf("%s\ndecimal\n", yytext);/*return (t_DOUBLECONSTANT);*/}
{hex} {printf("%s\nhex\n", yytext);/*return (t_INTCONSTANT);*/}
{stringConstant} {printf("%s\nstring constant\n", yytext);/*return (t_STRINGCONSTANT);*/}
{boolean} {printf("%s\nboolean constant\n", yytext);/*return (t_BOOLEANCONSTANT);*/}
{comment} {printf("%s\ncomment\n", yytext);/*return (t_BOOLEANCONSTANT);*/}


if {printf("%s\nif statement\n", yytext);/*return (t_IF);*/}



{id}    {yytext[yyleng]='\0'; yylval=insert(yytext);
    printf("%s\nid\n", yytext); return(t_ID);}
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
