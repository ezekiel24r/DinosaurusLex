%{
#define MAX_LENGTH 10
#define MAX 100
#define INT 1
#define FLOAT 2
#define DOUBLE 3
#define BOOLEAN 4
#define STRING 5
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
multilinecomment ("/*")([^*]*"*"+[^*/])*([^*]*)("*"+)"/"
comment ("//".*)|{multilinecomment}

intconstant {hex}|{number}

newline \n

ws [ \t]



/*commented rules



*/


%%

{ws}    ;



boolean {t_flag=BOOLEAN; printf("boolean ", yytext); return (t_BOOLEAN);}
break {printf("break ", yytext); return (t_BREAK);}
extends {printf("extends ", yytext); return (t_EXTENDS);}
int {t_flag=INT; printf("int ", yytext); return (t_INT);}
readln {printf("readln ", yytext); return (t_READLN);}
while {printf("while ", yytext); return (t_WHILE);}
else {printf("else ", yytext); return (t_ELSE);}
implements {printf("implements ", yytext); return (t_IMPLEMENTS);}
println {printf("println ", yytext); return (t_PRINTLN);}
void {printf("void ", yytext); return (t_VOID);}
class {printf("class ", yytext); return (t_CLASS);} 
for {printf("for ", yytext); return (t_FOR);} 
interface {printf("interface ", yytext); return (t_INTERFACE);}
return {printf("return ", yytext); return (t_RETURN);}
double {t_flag=DOUBLE; printf("double ", yytext); return (t_DOUBLE);}
if {printf("if ", yytext); return (t_IF);}
newarray {printf("newarray ", yytext); return (t_NEWARRAY);}
string {t_flag=STRING; printf("string ", yytext); return (t_STRING);}
"*" {printf("star ", yytext); return (t_MULTIPLICATION);}
"<=" {printf("lessequal ", yytext); return (t_LESSEQUAL);}
"!=" {printf("notequal ", yytext); return (t_NOTEQUAL);}
"(" {printf("leftparen ", yytext); return (t_LEFTPAREN);}
"/" {printf("division ", yytext); return (t_DIVISION);}
">" {printf("greater ", yytext); return (t_GREATER);}
"&&" {printf("and ", yytext); return (t_AND);}
";" {printf("semicolon ", yytext); return (t_SEMICOLON);}
")" {printf("rightparen ", yytext); return (t_RIGHTPAREN);}
"}" {printf("rightbrace ", yytext); return (t_RIGHTBRACE);}
"{" {printf("leftbrac ", yytext); return (t_LEFTBRACE);}
"+" {printf("add ", yytext); return (t_PLUS);}
"%" {printf("mod ", yytext); return (t_MOD);}
">=" {printf("greatereaqual ", yytext); return (t_GREATEREQUAL);}
"||" {printf("or ", yytext); return (t_OR);}
"," {printf("comma ", yytext); return (t_COMMA);}
"[" {printf("leftbracket ", yytext); return (t_LEFTBRACKET);}
"-" {printf("minus ", yytext); return (t_MINUS);}
"<" {printf("less ", yytext); return (t_LESS);}
"=" {printf("equal ", yytext); return (t_EQUAL);}
"!" {printf("not ", yytext); return (t_NOT);}
"." {printf("period ", yytext); return (t_PERIOD);}
"]" {printf("rightbracket ", yytext); return (t_RIGHTBRACKET);}

{newline} {printf("\n");}

{intconstant} {printf("intconstant ", yytext); return (t_INTCONSTANT);}
{booleanconstant} {printf("boolconstant ", yytext); return (t_BOOLEANCONSTANT);}
{doubleconstant} {printf("doubleconstant ", yytext); return (t_DOUBLECONSTANT);}
{stringconstant} {printf("stringconstant ", yytext); return (t_STRINGCONSTANT);}
{comment} ;



{id}    {yytext[yyleng]='\0'; yylval=insert(yytext);
    printf("id ", yytext); return(t_ID);}
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
