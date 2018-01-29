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


{id}    {yytext[yyleng]='\0'; yylval=insert(yytext); insertIntoTrieTable(yytext);
    printf("id ", yytext); return(t_ID);}
.   {printf("error!\n"); return (0);}
    
%%
    
    typedef struct {
        char* symbol;
	size_t used;
	size_t size;
    } ArrayChar;

    typedef struct{
	int *next;
	size_t used;
	size_t size;
    } ArrayInt;

    int switchTable[51];
    char* symbol;
    int* next;
    int lastIndexInSwitchTable = 0;
    
    void initTrieTable(){
	for(int i = 0; i < 51; i ++)
	    switchTable[i] = -1;
        initCharArray(&symbol, 10);
	initIntArray(&next, 10);
    }

    void initCharArray(ArrayChar* a, size_t initialSize) {
	a->symbol = (char*)malloc(initialSize*sizeof(char));
	a->used = 0;
	a->size = initialSize;
    }

    void initIntArray(ArrayInt* a, size_t initialSize) {
	a->next = (int*)malloc(initialSize*sizeof(int));
	a->used = 0;
	a->size = initialSize;
    }

    void freeCharArray(ArrayChar* a) {
	free(a->symbol);
	a->symbol = NULL;
	a-> used = a-> size = 0;
    }

    void freeIntArray(ArrayInt* a){
	free(a->next);
	a->next = NULL;
	a-> used = a-> size = 0;
    }
    
    void insertCharArray(char value, int index) {
	ArrayChar* a;
	if(a->used == a->size) {
	   a->size *= 2;
	   a->symbol = (char*)realloc(a->symbol, a->size*sizeof(char));
	}
	a->symbol[index] = value;
	a->used++;
    }

    void insertIntArray(int value, int index) {
	ArrayInt* a;
	if(a->used == a->size) {
	   a->size *= 2;
	   a->next = (int*)realloc(a->next, a->size*sizeof(int));
	}
	a->next[index] = value;
	a->used++;
    }

    void insertIntoTrieTable(char* s) {
        int idValueIndex = 0;
	char idValue = s[idValueIndex];
	int switchTableIndex = s[idValue]-65;

	if(switchTable[switchTableIndex] == -1)
	    create(s, switchTableIndex);
	else {
	    idValueIndex++;
            idValue = s[idValueIndex];
	    /* true   = 1
	       false  = 0 */
	    int exit = 0;
            while(exit==0) {
                if(symbol[switchTable[switchTableIndex]] == idValue)
                    if (idValue != '\0') {
                        switchTableIndex++;
			idValueIndex++;
		    } else
		        exit = 1;
                else if (next[idValue] != -1)
		    idValue = next[idValue];
                else {
                    create(s, switchTableIndex);
                    exit = 1;
		}
	    }
	}
    }

    void create(char* s, int switchTableIndex){
	switchTable[switchTableIndex] = lastIndexInSwitchTable;
        
	int sLength = sizeof(s)/sizeof(s[0]);
	int i;
	for(i = 0; i < sLength; i++) {
	    insertCharArray(s[i], switchTable[switchTableIndex+i]);
        
	}
	insertCharArray('*', sLength);
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
    while (yylex()) {}
    for(int i = 0; i < 51; i++){
        print(switchTable[i] + "   ");
    }

}





