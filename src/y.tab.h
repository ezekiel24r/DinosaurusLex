/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    t_BOOLEAN = 258,
    t_ELSE = 259,
    t_IMPLEMENTS = 260,
    t_PRINTLN = 261,
    t_VOID = 262,
    t_LEFTPAREN = 263,
    t_LEFTBRACE = 264,
    t_STRINGCONSTANT = 265,
    t_BREAK = 266,
    t_EXTENDS = 267,
    t_INT = 268,
    t_READLN = 269,
    t_WHILE = 270,
    t_SEMICOLON = 271,
    t_RIGHTPAREN = 272,
    t_RIGHTBRACE = 273,
    t_BOOLEANCONSTANT = 274,
    t_CLASS = 275,
    t_FOR = 276,
    t_INTERFACE = 277,
    t_RETURN = 278,
    t_COMMA = 279,
    t_INTCONSTANT = 280,
    t_ID = 281,
    t_DOUBLE = 282,
    t_IF = 283,
    t_NEWARRAY = 284,
    t_STRING = 285,
    t_RIGHTBRACKET = 286,
    t_DOUBLECONSTANT = 287,
    t_ASSIGNOP = 288,
    t_OR = 289,
    t_AND = 290,
    t_EQUAL = 291,
    t_NOTEQUAL = 292,
    t_LESS = 293,
    t_GREATER = 294,
    t_GREATEREQUAL = 295,
    t_LESSEQUAL = 296,
    t_PLUS = 297,
    t_MINUS = 298,
    t_MULTIPLICATION = 299,
    t_DIVISION = 300,
    t_MOD = 301,
    t_NOT = 302,
    t_LEFTBRACKET = 303,
    t_PERIOD = 304
  };
#endif
/* Tokens.  */
#define t_BOOLEAN 258
#define t_ELSE 259
#define t_IMPLEMENTS 260
#define t_PRINTLN 261
#define t_VOID 262
#define t_LEFTPAREN 263
#define t_LEFTBRACE 264
#define t_STRINGCONSTANT 265
#define t_BREAK 266
#define t_EXTENDS 267
#define t_INT 268
#define t_READLN 269
#define t_WHILE 270
#define t_SEMICOLON 271
#define t_RIGHTPAREN 272
#define t_RIGHTBRACE 273
#define t_BOOLEANCONSTANT 274
#define t_CLASS 275
#define t_FOR 276
#define t_INTERFACE 277
#define t_RETURN 278
#define t_COMMA 279
#define t_INTCONSTANT 280
#define t_ID 281
#define t_DOUBLE 282
#define t_IF 283
#define t_NEWARRAY 284
#define t_STRING 285
#define t_RIGHTBRACKET 286
#define t_DOUBLECONSTANT 287
#define t_ASSIGNOP 288
#define t_OR 289
#define t_AND 290
#define t_EQUAL 291
#define t_NOTEQUAL 292
#define t_LESS 293
#define t_GREATER 294
#define t_GREATEREQUAL 295
#define t_LESSEQUAL 296
#define t_PLUS 297
#define t_MINUS 298
#define t_MULTIPLICATION 299
#define t_DIVISION 300
#define t_MOD 301
#define t_NOT 302
#define t_LEFTBRACKET 303
#define t_PERIOD 304

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
