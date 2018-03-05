%{
/* CS 411: Compilers and Interpreters
   Project 1
   Team Members: Eric Rensel, Anthony Vu, Awais Ibrahim

   How to compile and run program (if your computer does not have Lex intalled):
   	1. Connect to the cal poly pomona campus server using an ssh shell (such as putty)
		@ login.cpp.edu.
	2. Use an ssh file transfer program (such as winscp) to transfer all files from the src
		folder into a folder in the ssh shell.
   	3. Make sure dino.l, test.toy, and java.toy are in the same folder.
	4. Type "lex dino.l" to change the lex file into c code. This should create "lex.yy.c"
	5. Type "cc lex.yy.c -lfl" to compile the c code file.
	6. Type "./a.out" to test the lexical analyzer with your own input. At any point you can
		press ctrl+d to print the trie table and exit out of the program.
	7. Type "./a.out < test.toy" to use the input file given in the project specifications.
	8. Type "./a.out < java.toy" to use our test file that we created to account for all 
		possible inputs for the lexical analyzer.
    If your computer has lex installed, steps 1 and 2 can be skipped and the src files can be put 
    	into your own working directory.

*/
#define MAXTRANSITIONS 1000
#define INT 1
#define FLOAT 2
#define DOUBLE 3
#define BOOLEAN 4
#define STRING 5
#include <stdio.h>
#include <string.h>
#include "y.tab.h"

extern int yylval;
    
int t_index=0;
int t_flag=0;

int firstLetter[52];
char symTable[MAXTRANSITIONS];
int nextTable[MAXTRANSITIONS];
int tail = 0;

void initFirstLetter();
void initSymAndNext();
int trieInsert(char * s);
void triePrint();

%}

letter [a-zA-Z]
digit [0-9]
id {letter}({letter}|{digit}|_)*
number {digit}+
doubleconstant {number}"."{digit}*((e|E)("+"|"-")?{number})?
hex (0x|0X)[a-fA-F0-9]+
stringconstant \"[^"\n]*\"
multilinecomment ("/*")([^*]*"*"+[^*/])*([^*]*)("*"+)"/"
comment ("//".*)|{multilinecomment}
intconstant {hex}|{number}
newline [\n]
ws [ \t\r]


%%

{ws}    ;

boolean {t_flag=BOOLEAN; printf("boolean ", yytext); yylval=trieInsert(yytext); 
    return (t_BOOLEAN);}
int {t_flag=INT; printf("int ", yytext); yylval=trieInsert(yytext);
    return (t_INT);}
double {t_flag=DOUBLE; printf("double ", yytext); yylval=trieInsert(yytext);
    return (t_DOUBLE);}
string {t_flag=STRING; printf("string ", yytext); yylval=trieInsert(yytext);
    return (t_STRING);}

break {printf("break ", yytext); yylval=trieInsert(yytext);
    return (t_BREAK);}
extends {printf("extends ", yytext); yylval=trieInsert(yytext);
    return (t_EXTENDS);}
readln {printf("readln ", yytext); yylval=trieInsert(yytext);
    return (t_READLN);}
while {printf("while ", yytext); yylval=trieInsert(yytext);
    return (t_WHILE);}
else {printf("else ", yytext); yylval=trieInsert(yytext);
    return (t_ELSE);}
implements {printf("implements ", yytext); yylval=trieInsert(yytext);
    return (t_IMPLEMENTS);}
println {printf("println ", yytext); yylval=trieInsert(yytext);
    return (t_PRINTLN);}
void {printf("void ", yytext); yylval=trieInsert(yytext);
    return (t_VOID);}
class {printf("class ", yytext); yylval=trieInsert(yytext);
    return (t_CLASS);} 
for {printf("for ", yytext); yylval=trieInsert(yytext);
    return (t_FOR);} 
interface {printf("interface ", yytext); yylval=trieInsert(yytext);
    return (t_INTERFACE);}
return {printf("return ", yytext); yylval=trieInsert(yytext);
    return (t_RETURN);}
if {printf("if ", yytext); yylval=trieInsert(yytext);
    return (t_IF);}
newarray {printf("newarray ", yytext); yylval=trieInsert(yytext);
    return (t_NEWARRAY);}
true {printf("boolconstant ", yytext); yylval=trieInsert(yytext); 
    return (t_BOOLEANCONSTANT);}
false {printf("boolconstant ", yytext); yylval=trieInsert(yytext); 
    return (t_BOOLEANCONSTANT);}

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
">=" {printf("greaterequal ", yytext); return (t_GREATEREQUAL);}
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
{doubleconstant} {printf("doubleconstant ", yytext); return (t_DOUBLECONSTANT);}
{stringconstant} {printf("stringconstant ", yytext); return (t_STRINGCONSTANT);}
{comment} {printf(" ");}
{newline} {printf("\n");}


{id}    {yytext[yyleng]='\0'; yylval=trieInsert(yytext);
        printf("id ", yytext);/* triePrint();*/ return(t_ID);}
.   {printf("error!\n"); return (0);}
    
%%
//intializes the firstLetter array
void initFirstLetter(){
    for(int i=0; i<52; i++){
        firstLetter[i] = -1;
    }
}

//initializes the symbolTable and the nextTable arrays
void initSymAndNext(){
    for(int i = 0; i < MAXTRANSITIONS; i++){
        symTable[i] = -1;
        nextTable[i] = -1;
    }
}

//trieInsert adds id's to the trie Table (firstLetter, symTable, and nextTable)
//char s is a pointer to the string of input to be processed
int trieInsert(char *s){
    //create pointer to navigate the trie table
    int ptr = -1;

    //check what the first letter of input is and set the pointer to the respective array position
    switch (*s){
        case 'A':
            ptr = 0;
            break;
        case 'B':
            ptr = 1;
            break;
        case 'C':
            ptr = 2;
            break;
        case 'D':
            ptr = 3;
            break;
        case 'E':
            ptr = 4;
            break;
        case 'F':
            ptr = 5;
            break;
        case 'G':
            ptr = 6;
            break;
        case 'H':
            ptr = 7;
            break;
        case 'I':
            ptr = 8;
            break;
        case 'J':
            ptr = 9;
            break;
        case 'K':
            ptr = 10;
            break;
        case 'L':
            ptr = 11;
            break;
        case 'M':
            ptr = 12;
            break;
        case 'N':
            ptr = 13;
            break;
        case 'O':
            ptr = 14;
            break;
        case 'P':
            ptr = 15;
            break;
        case 'Q':
            ptr = 16;
            break;
        case 'R':
            ptr = 17;
            break;
        case 'S':
            ptr = 18;
            break;
        case 'T':
            ptr = 19;
            break;
        case 'U':
            ptr = 20;
            break;
        case 'V':
            ptr = 21;
            break;
        case 'W':
            ptr = 22;
            break;
        case 'Y':
            ptr = 23;
            break;
        case 'X':
            ptr = 24;
            break;
        case 'Z':
            ptr = 25;
            break;
        case 'a':
            ptr = 26;
            break;
        case 'b':
            ptr = 27;
            break;
        case 'c':
            ptr = 28;
            break;
        case 'd':
            ptr = 29;
            break;
        case 'e':
            ptr = 30;
            break;
        case 'f':
            ptr = 31;
            break;
        case 'g':
            ptr = 32;
            break;
        case 'h':
            ptr = 33;
            break;
        case 'i':
            ptr = 34;
            break;
        case 'j':
            ptr = 35;
            break;
        case 'k':
            ptr = 36;
            break;
        case 'l':
            ptr = 37;
            break;
        case 'm':
            ptr = 38;
            break;
        case 'n':
            ptr = 39;
            break;
        case 'o':
            ptr = 40;
            break;
        case 'p':
            ptr = 41;
            break;
        case 'q':
            ptr = 42;
            break;
        case 'r':
            ptr = 43;
            break;
        case 's':
            ptr = 44;
            break;
        case 't':
            ptr = 45;
            break;
        case 'u':
            ptr = 46;
            break;
        case 'v':
            ptr = 47;
            break;
        case 'w':
            ptr = 48;
            break;
        case 'y':
            ptr = 49;
            break;
        case 'x':
            ptr = 50;
            break;
        case 'z':
            ptr = 51;
            break;
        default:
            printf("unknown char in id!");
    }

    int pos = ptr;                  //pos is used to remember the position used in the firstLetter array
    ptr = firstLetter[pos];         //set ptr to the value given by firstLetter
    if(ptr == -1){                  //if the value is -1, there is no match, so insert the id in the trie
        ptr = tail;                     //go to the end of symTable
        firstLetter[pos] = tail;        //map the firstLetter element to this position
        s++;                            //increment s (because we already processed the first character)
        while(*s != '\0'){              //insert rest of the id and then the delimiter
            symTable[ptr] = *s;     
            ptr++;
            s++;
            tail++;
        }
        symTable[ptr] = '*';
        tail++;
        t_index++;
        return t_index-1;
    }
    s++;
    while (1) {                     //loop to search and insert in the trie table
        if (symTable[ptr] == -1){       //empty position found, insert rest of string
            while(*s != '\0'){          
                symTable[ptr] = *s;
                ptr++;
                s++;
                tail++;
            }
            symTable[ptr] = '*';
            tail++;
            t_index++;
            return t_index-1;
        }
        else if (symTable[ptr] == *s){      //letter matched, move on through string and array
            s++;
            ptr++;
        }
        else if (*s == '\0' && symTable[ptr] == '*'){    //id already in table, do nothing
            return t_index;
        }            
        else if (symTable[ptr] != *s){                  //mismatch, check for next possible position
            if(nextTable[ptr] != -1){       //if next has a value, move to it
                ptr = nextTable[ptr];
            }
            else{
                nextTable[ptr] = tail;      //if next has no value, move to tail
                ptr = nextTable[ptr];
            }
        }


    }
    return t_index-1;

}

void triePrint(){
	
	//print Top letters from A to T
	printf("           ");
	for(int i=65; i < 85; i++){
		printf("%c    ", i);
	}
	//printing switch from A to T
	printf("\nswitch:");
	for(int i=0; i<20; i++){
		printf("%5i", firstLetter[i]);
	}
	printf("\n");
	//print top letters from U to Z
	printf("\n           ");
	for(int i = 85; i < 91; i++)
		printf("%c    ", i);
	//print a to n
	for(int i = 97; i < 111;i++)
		printf("%c    ", i);
	//print switch from U to n
	printf("\nswitch:");
	for(int i = 20; i < 40; i++)
		printf("%5i", firstLetter[i]);
	printf("\n");
	//print top letters o to z
	printf("\n           ");
	for(int i = 111; i < 123; i ++)
		printf("%c    ", i);
	//print switch from o to z
	printf("\nswitch:");
	for(int i = 40; i < 52; i++)
		printf("%5i", firstLetter[i]);

	printf("\n\n");
	int rows = MAXTRANSITIONS/20+1;
	int rowGroupCounter = 1;
	int symbolTableCounter = 0;
	int j;
	int endFlag = 0;
	
	for(int i = 1; i < rows*3+1; i++){
		//only used when last row has less than 20 elements
		if(MAXTRANSITIONS-symbolTableCounter < 20){
			if(rowGroupCounter==1){
				printf("       ");
			for(j = symbolTableCounter; j < MAXTRANSITIONS; j++)
				printf("%5i",j);
				rowGroupCounter++;
			}else if(rowGroupCounter==2){
				printf("\nsymbol:");
				for(j = symbolTableCounter; j < MAXTRANSITIONS; j++){
				    if(symTable[j] == -1){
				        endFlag = 1;
					break;
				    }
				    else printf("%5c",symTable[j]);
				}
				rowGroupCounter++;
			}else if(rowGroupCounter==3){
				printf("\nnext:  ");
				for(j = symbolTableCounter; j < MAXTRANSITIONS; j++)
					if(nextTable[j] == -1) 
						printf("%5s", "");
					else
						printf("%5i",nextTable[j]);
				printf("\n\n");
			}	
		}else if(rowGroupCounter==1){
			printf("       ");
			for(j = symbolTableCounter; j < symbolTableCounter+20; j++)
				printf("%5i",j);
			rowGroupCounter++;
		}else if(rowGroupCounter==2){
			printf("\nsymbol:");
			for(j = symbolTableCounter; j < symbolTableCounter+20; j++){
				if(symTable[j] == -1){
				    endFlag = 1;
				    break;
				}
				else printf("%5c",symTable[j]);
			    }
			rowGroupCounter++;
		}else if(rowGroupCounter==3){
			printf("\nnext:  ");
			for(j = symbolTableCounter; j < symbolTableCounter+20; j++){
				if(nextTable[j] == -1)
					printf("%5s","");
				else
					printf("%5i",nextTable[j]);
			}
			printf("\n\n");
			rowGroupCounter = 1;
			symbolTableCounter+=20;
			if(endFlag == 1){
			    return;
			}
		}
   }
   printf("\n");
}

/*int main () {
    initFirstLetter();
    initSymAndNext();
    while (yylex()) {}
    triePrint();
}*/
