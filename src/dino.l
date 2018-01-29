%{
#define MAX_LENGTH 10
#define MAX 100
#define INT 1
#define FLOAT 2
#define DOUBLE 3
#define BOOLEAN 4
#define STRING 5
#include <stdio.h>
#include <stdlib.h>
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
int {t_flag=INT; printf("int ", yytext); return (t_INT);}
double {t_flag=DOUBLE; printf("double ", yytext); return (t_DOUBLE);}
string {t_flag=STRING; printf("string ", yytext); return (t_STRING);}


break {printf("break ", yytext); return (t_BREAK);}
extends {printf("extends ", yytext); return (t_EXTENDS);}
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
if {printf("if ", yytext); return (t_IF);}
newarray {printf("newarray ", yytext); return (t_NEWARRAY);}


"*" {printf("multiplication ", yytext); return (t_MULTIPLICATION);}
"<=" {printf("lessequal ", yytext); return (t_LESSEQUAL);}
"!=" {printf("notequal ", yytext); return (t_NOTEQUAL);}
"(" {printf("leftparen ", yytext); return (t_LEFTPAREN);}
"/" {printf("division ", yytext); return (t_DIVISION);}
">" {printf("greater ", yytext); return (t_GREATER);}
"&&" {printf("and ", yytext); return (t_AND);}
";" {printf("semicolon ", yytext); return (t_SEMICOLON);}
")" {printf("rightparen ", yytext); return (t_RIGHTPAREN);}
"}" {printf("rightbrace ", yytext); return (t_RIGHTBRACE);}
"{" {printf("leftbrace ", yytext); return (t_LEFTBRACE);}
"+" {printf("plus ", yytext); return (t_PLUS);}
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


{intconstant} {printf("intconstant ", yytext); return (t_INTCONSTANT);}
{booleanconstant} {printf("boolconstant ", yytext); return (t_BOOLEANCONSTANT);}
{doubleconstant} {printf("doubleconstant ", yytext); return (t_DOUBLECONSTANT);}
{stringconstant} {printf("stringconstant ", yytext); return (t_STRINGCONSTANT);}
{comment} {printf(" ");}
{newline} {printf("\n");}


{id}    {yytext[yyleng]='\0'; yylval=insert(yytext);
    printf("id ", yytext); return(t_ID);}
.   {printf("error!\n"); return (0);}
    
%%

    void initTrieTable();
    void resizeArrays();
    void InsertIntoTrieTable(char* s);
    void insertSymbolArray(char value, int index);
    void create(char* s, int switchTableValue);

    int switchTable[51]; 
    char* symbolArray;
    int usedSymbolArray;
    int sizeSymbolArray;
    int* nextArray;
    
    void initTrieTable(){
	for(int i = 0; i < 51; i ++)
	    switchTable[i] = -1;
        symbolArray = (char*)malloc(100*sizeof(char));
        usedSymbolArray = 1;
	sizeSymbolArray = 100;
	nextArray = (int*)malloc(100*sizeof(int));
    }

    void resizeArrays() {
        int n = sizeof(symbolArray)/sizeof(symbolArray[0]);
        int j = sizeof(nextArray)/sizeof(nextArray[0]);
	char* symbolArrayNew = (char*)realloc(symbolArray, 2*n*sizeof(char));
        int* nextArrayNew = (int*)realloc(nextArray, 2*j*sizeof(int));
	free(symbolArray);
	free(nextArray);
	symbolArray = symbolArrayNew;
        nextArray = nextArrayNew;
	free(symbolArrayNew);
        free(nextArrayNew);
    }
    
    void insertIntoTrieTable(char* s) {
        int idValueIndex = 0;
	char idValue = s[idValueIndex];
	int switchTableIndex = s[idValue]-65;
        int switchTableValue = switchTable[switchTableIndex];

        if(usedSymbolArray == 0) {
	    switchTable[switchTableIndex] = 0;
	    create(s, switchTable[switchTableIndex]);
	} else if(switchTable[switchTableIndex] == -1)
	    create(s, switchTable[switchTableIndex]);
	else {
	    idValueIndex++;
            idValue = s[idValueIndex];
	    /* true   = 1
	       false  = 0 */ 
	    int exit = 0;
            while(exit == 0) {
                if(symbolArray[switchTableValue] == idValue)
                    if (idValue != '\0') {
                        switchTableValue++;
			idValueIndex++;
		    } else
		        exit = 1;
                else if (nextArray[switchTableValue] != -1)
		    switchTableValue = nextArray[switchTableValue];
                else {
                    create(s, switchTable[switchTableIndex]);
                    exit = 1;
		}
	    }
	}
    }
    
    void insertSymbolArray(char value, int index){
        if (usedSymbolArray+20 > sizeSymbolArray)
	    resizeArrays();
	symbolArray[index] = value;
	usedSymbolArray++;
    }

    void create(char* s, int switchTableValue){
	int sLength = sizeof(s)/sizeof(s[0]);
	int i;

	for(i = 0; i < sLength; i++) {
	    insertSymbolArray(s[i], switchTableValue+i);
	}
	insertSymbolArray('*', sLength);
	usedSymbolArray++;
    }

    int insert(char *s) {
        int i=0;
        while (i< t_index) {
            if (strcmp(s, table[i].name)==0) return i;
            i++;
        }
        strcpy(table[t_index].name, s);
        table[t_index].type = t_flag;
        t_index++;
	insertIntoTrieTable(s);
        return t_index-1;
    }

int main () {
    initTrieTable();
    
    for(int i = 65; i < 85; i ++)
        printf("%c     ",i );
    for(int i = 85; i < 
    while (yylex()) {}
    /*for(int i = 0; i < 51; i++){
        printf("%i  ", switchTable[i]);
    }*/

}





