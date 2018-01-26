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

int {t_flag=INT; printf("%s\n", yytext); return (t_INT);}
float {t_flag=FLOAT; printf("%s\n", yytext); return (t_FLOAT);}
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
