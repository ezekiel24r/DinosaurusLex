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

boolean {t_flag=BOOLEAN; printf("%s\n", yytext); return (t_BOOLEAN);}
else {t_flag=ELSE; printf("%s\n", yytext); return (t_ELSE);}
implements {t_flag=IMPLEMENTS; printf("%s\n", yytext); return (t_IMPLEMENTS);}
println {t_flag=PRINTLN; printf("%s\n", yytext); return (t_PRINTLN);}
void {t_flag=VOID; printf("%s\n", yytext); return (t_VOID);}
"*" {printf("%s\n", yytext); return (t_MULTIPLICATION);}
"<=" {printf("%s\n", yytext); return (t_LESSEQUAL);}
"!=" {printf("%s\n", yytext); return (t_NOTEQUAL);}
"=" {printf("%s\n", yytext); return (t_ASSIGNOP);}
"(" {printf("%s\n", yytext); return (t_LEFTPAREN);}
"{" {printf("%s\n", yytext); return (t_LEFTBRACEN);}
stringconstant {t_flag=STRINGCONSTANT; printf("%s\n", yytext); return (t_STRINGCONSTANT);}
int {t_flag=INT; printf("%s\n", yytext); return (t_INT);}
println {t_flag=PRINTLN; printf("%s\n", yytext); return (t_PRINTLN);}
break {t_flag=BREAK; printf("%s\n", yytext); return (t_BREAK);}
class {t_flag=CLASS; printf("%s\n", yytext); return (t_CLASS);}
double {t_flag=DOUBLE; printf("%s\n", yytext); return (t_DOUBLE);}
else {t_flag=ELSE; printf("%s\n", yytext); return (t_ELSE);}
extends {t_flag=EXTENDS; printf("%s\n", yytext); return (t_EXTENDS);}
false {t_flag=FALSE; printf("%s\n", yytext); return (t_FALSE);}
for {t_flag=FOR; printf("%s\n", yytext); return (t_FOR);}
if {t_flag=IF; printf("%s\n", yytext); return (t_IF);}
implements {t_flag=IMPLEMENTS; printf("%s\n", yytext); return (t_IMPLEMENTS);}
implements {t_flag=IMPLEMENTS; printf("%s\n", yytext); return (t_IMPLEMENTS);}
interface {t_flag=INTERFACE; printf("%s\n", yytext); return (t_INTERFACE);}
newarray {t_flag=NEWARRAY; printf("%s\n", yytext); return (t_NEWARRAY);}
println {t_flag=PRINTLN; printf("%s\n", yytext); return (t_PRINTLN);}
readln {t_flag=readln; printf("%s\n", yytext); return (t_readln);}
return {t_flag=RETURN; printf("%s\n", yytext); return (t_RETURN);}
string {t_flag=STRING; printf("%s\n", yytext); return (t_STRING);}
true {t_flag=TRUE; printf("%s\n", yytext); return (t_TRUE);}
void {t_flag=VOID; printf("%s\n", yytext); return (t_VOID);}
while {t_flag=WHILE; printf("%s\n", yytext); return (t_WHILE);}
if {t_flag=IF; printf("%s\n", yytext); return (t_IF);}
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
