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

int firstLetter[52];
int symTable[100];
int nextTable [100];
int tail = 0;

void initFirstLetter();
void initSymAndNext();
void trieInsert();
void triePrint();

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

ws [ \t\r]



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
"=" {printf("assignop ", yytext); return (t_ASSIGNOP);}
"==" {printf("equal ", yytext); return (t_EQUAL);}
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

    void initFirstLetter(){
        for(int i=0; i<52; i++){
            firstLetter[i] = -1;
        }
    }

    void initSymAndNext(){
        for(int i = 0; i < 100; i++){
            symTable[i] = -1;
            nextTable[i] = -1;
        }
    }
    
//trieInsert
    void trieInsert(char *s){

        char *n = s;
        int ptr = -1;
        
        switch (*s){
            case 'a':
                ptr = 0;
                break;
            case 'b':
                ptr = 1;
                break;
            case 'c':
                ptr = 2;
                break;
            case 'd':
                ptr = 3;
                break;
            case 'e':
                ptr = 4;
                break;
            case 'f':
                ptr = 5;
                break;
            case 'g':
                ptr = 6;
                break;
            case 'h':
                ptr = 7;
                break;
            case 'i':
                ptr = 8;
                break;
            case 'j':
                ptr = 9;
                break;
            case 'k':
                ptr = 10;
                break;
            case 'l':
                ptr = 11;
                break;
            case 'm':
                ptr = 12;
                break;
            case 'n':
                ptr = 13;
                break;
            case 'o':
                ptr = 14;
                break;
            case 'p':
                ptr = 15;
                break;
            case 'q':
                ptr = 16;
                break;
            case 'r':
                ptr = 17;
                break;
            case 's':
                ptr = 18;
                break;
            case 't':
                ptr = 19;
                break;
            case 'u':
                ptr = 20;
                break;
            case 'v':
                ptr = 21;
                break;
            case 'w':
                ptr = 22;
                break;
            case 'y':
                ptr = 23;
                break;
            case 'x':
                ptr = 24;
                break;
            case 'z':
                ptr = 25;
                break;
            case 'A':
                ptr = 26;
                break;
            case 'B':
                ptr = 27;
                break;
            case 'C':
                ptr = 28;
                break;
            case 'D':
                ptr = 29;
                break;
            case 'E':
                ptr = 30;
                break;
            case 'F':
                ptr = 31;
                break;
            case 'G':
                ptr = 32;
                break;
            case 'H':
                ptr = 33;
                break;
            case 'I':
                ptr = 34;
                break;
            case 'J':
                ptr = 35;
                break;
            case 'K':
                ptr = 36;
                break;
            case 'L':
                ptr = 37;
                break;
            case 'M':
                ptr = 38;
                break;
            case 'N':
                ptr = 39;
                break;
            case 'O':
                ptr = 40;
                break;
            case 'P':
                ptr = 41;
                break;
            case 'Q':
                ptr = 42;
                break;
            case 'R':
                ptr = 43;
                break;
            case 'S':
                ptr = 44;
                break;
            case 'T':
                ptr = 45;
                break;
            case 'U':
                ptr = 46;
                break;
            case 'V':
                ptr = 47;
                break;
            case 'W':
                ptr = 48;
                break;
            case 'Y':
                ptr = 49;
                break;
            case 'X':
                ptr = 50;
                break;
            case 'Z':
                ptr = 51;
                break;
            default:
                printf("unknown char in id!");
        }
        int pos = ptr;
        ptr = firstLetter[pos];
        if(ptr == -1){
            //find next location to start
            ptr = tail;
            firstLetter[pos] = tail;
            s++;
            //insert word and then delimiter
            while(*s != '\0'){
                symTable[ptr] = *s;
                ptr++;
                s++;
                tail++;
            }
            symTable[ptr] = '@';
            tail++;
            return;
        }
        //ptr now points to first search position in array
        s++;
        while (1) {
            printf("WHILELOOP!\n");
            if (symTable[ptr] == -1){
                //empty position, insert rest of word
                while(*s != '\0'){
                    symTable[ptr] = *s;
                    ptr++;
                    s++;
                    tail++;
                }
                //add delimiter
                symTable[ptr] = '@';
                tail++;
                return;
            }
            else if (symTable[ptr] == *s){
                //letter matched, move on through string and array
                s++;
                ptr++;
            }
           else if (*s == '\0' && symTable[ptr] == '@'){
                printf("match!");
                //id already here, do nothing
                return;
            }            
            else if (symTable[ptr] != *s){
                //mismatch, check for next possible position
                if(nextTable[ptr] != -1){
                    ptr = nextTable[ptr];
                }
                else{
                    nextTable[ptr] = tail;
                    ptr = nextTable[ptr];
                }
            }
 

        }

    }

    void triePrint(){
        for(int i=0; i<52; i++){
            printf("%i,", firstLetter[i]);
        }
        printf("\n");
        for(int i=0; i<1000; i++){
            printf("%c,", symTable[i]);
        }
        printf("\n");
        for(int i=0; i<1000; i++){
            printf("%i,", nextTable[i]);
        }
        printf("\n");
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
        trieInsert(s);
        triePrint();

        return t_index-1;
    }
int main () {
    printf("hi\n");
    initFirstLetter();
    initSymAndNext();
    while (yylex()) {}
}

