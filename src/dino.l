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
doubleconstant {number}"."{digit}*((e|E)("+"|"-")?{number})?
hex (0x|0X)[a-fA-F0-9]+
stringconstant \"[^"\n]*\"
booleanconstant (true|false)
comment ("//".*)|("/*"[^("*/")]*"*/")

intconstant {hex}|{number}

ws [ \t\n]



/*commented rules



*/


%%

{ws}    ;



boolean {t_flag=BOOLEAN; printf("%sboolean\n", yytext); return (t_BOOLEAN);}
else {printf("%selse\n", yytext); return (t_ELSE);}
implements {printf("%simplements\n", yytext); return (t_IMPLEMENTS);}
println {printf("%sprintln\n", yytext); return (t_PRINTLN);}
void {printf("%svoid\n", yytext); return (t_VOID);}
"*" {printf("%sstar\n", yytext); return (t_MULTIPLICATION);}
"<=" {printf("%slessequal\n", yytext); return (t_LESSEQUAL);}
"!=" {printf("%snotequal\n", yytext); return (t_NOTEQUAL);}
"(" {printf("%sleftparen\n", yytext); return (t_LEFTPAREN);}
"{" {printf("%sleftbrac\n", yytext); return (t_LEFTBRACEN);}
{stringconstant} {printf("%sstringconstant\n", yytext); return (t_STRINGCONSTANT);}
break {printf("%sbreak\n", yytext); return (t_BREAK);}
extends {printf("%sextends\n", yytext); return (t_EXTENDS);}
int {t_flag=INT; printf("%sint\n", yytext); return (t_INT);}
readln {printf("%sreadln\n", yytext); return (t_READLN);}
while {printf("%swhile\n", yytext); return (t_WHILE);}
"/" {printf("%sdivision\n", yytext); return (t_DIVISION);}
">" {printf("%sgreater\n", yytext); return (t_GREATER);}
"&&" {printf("%sand\n", yytext); return (t_AND);}
";" {printf("%ssemicolon\n", yytext); return (t_SEMICOLON);}
")" {printf("%srightparen\n", yytext); return (t_RIGHTPAREN);}
"}" {printf("%srightbrace\n", yytext); return (t_RIGHTBRACE);}
{booleanconstant} {printf("%sboolconstant\n", yytext); return (t_BOOLEANCONSTANT);}
class {printf("%sclass\n", yytext); return (t_CLASS);} 
for {printf("%sfor\n", yytext); return (t_FOR);} 
interface {printf("%sinterface\n", yytext); return (t_INTERFACE);}
return {printf("%sreturn\n", yytext); return (t_RETURN);}
"+" {printf("%sadd\n", yytext); return (t_PLUS);}
"%" {printf("%smod\n", yytext); return (t_MOD);}
">=" {printf("%sgreatereaqual\n", yytext); return (t_GREATEREQUAL);}
"||" {printf("%sor\n", yytext); return (t_OR);}
"," {printf("%scomma\n", yytext); return (t_COMMA);}
"[" {printf("%sleftbracket\n", yytext); return (t_LEFTBRACKET);}
{intconstant} {printf("%sintconstant\n", yytext); return (t_INTCONSTANT);}
double {t_flag=DOUBLE; printf("%sdouble\n", yytext); return (t_DOUBLE);}
if {printf("%sif\n", yytext); return (t_IF);}
newarray {printf("%snewarray\n", yytext); return (t_NEWARRAY);}
string {t_flag=STRING; printf("%sstring\n", yytext); return (t_STRING);}
"-" {printf("%sminus\n", yytext); return (t_MINUS);}
"<" {printf("%sless\n", yytext); return (t_LESS);}
"=" {printf("%sequal\n", yytext); return (t_EQUAL);}
"!" {printf("%snot\n", yytext); return (t_NOT);}
"." {printf("%speriod\n", yytext); return (t_PERIOD);}
"]" {printf("%srightbracket\n", yytext); return (t_RIGHTBRACKET);}

{doubleconstant} {printf("%sdoubleconstant\n", yytext); return (t_DOUBLECONSTANT);}
{comment} {printf("%s\ncomment\n", yytext);/*return (t_BOOLEANCONSTANT);*/}



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
