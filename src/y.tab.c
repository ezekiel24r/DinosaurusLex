/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 1 "dino.y" /* yacc.c:339  */


    #include <stdio.h>
    #ifdef YYDEBUG
    extern int yydebug;
    #endif




#line 77 "y.tab.c" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "y.tab.h".  */
#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
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

/* Copy the second part of user declarations.  */

#line 226 "y.tab.c" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  21
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   378

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  50
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  40
/* YYNRULES -- Number of rules.  */
#define YYNRULES  99
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  212

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   304

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint8 yyrline[] =
{
       0,    27,    27,    29,    30,    33,    34,    35,    36,    39,
      42,    45,    46,    47,    48,    49,    50,    53,    54,    57,
      58,    61,    62,    65,    68,    69,    72,    75,    76,    79,
      80,    83,    84,    87,    90,    91,    94,    95,    98,   101,
     102,   105,   106,   109,   110,   111,   112,   113,   114,   115,
     116,   119,   120,   123,   126,   127,   130,   133,   136,   137,
     140,   143,   146,   149,   152,   153,   156,   157,   158,   159,
     160,   161,   162,   163,   164,   165,   166,   167,   168,   169,
     170,   171,   172,   173,   174,   175,   176,   177,   180,   181,
     182,   185,   186,   189,   190,   193,   194,   195,   196,   199
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "t_BOOLEAN", "t_ELSE", "t_IMPLEMENTS",
  "t_PRINTLN", "t_VOID", "t_LEFTPAREN", "t_LEFTBRACE", "t_STRINGCONSTANT",
  "t_BREAK", "t_EXTENDS", "t_INT", "t_READLN", "t_WHILE", "t_SEMICOLON",
  "t_RIGHTPAREN", "t_RIGHTBRACE", "t_BOOLEANCONSTANT", "t_CLASS", "t_FOR",
  "t_INTERFACE", "t_RETURN", "t_COMMA", "t_INTCONSTANT", "t_ID",
  "t_DOUBLE", "t_IF", "t_NEWARRAY", "t_STRING", "t_RIGHTBRACKET",
  "t_DOUBLECONSTANT", "t_ASSIGNOP", "t_OR", "t_AND", "t_EQUAL",
  "t_NOTEQUAL", "t_LESS", "t_GREATER", "t_GREATEREQUAL", "t_LESSEQUAL",
  "t_PLUS", "t_MINUS", "t_MULTIPLICATION", "t_DIVISION", "t_MOD", "t_NOT",
  "t_LEFTBRACKET", "t_PERIOD", "$accept", "Start", "Program", "Decl",
  "VariableDecl", "Variable", "Type", "FunctionDecl", "Formals",
  "MoreVariables", "ClassDecl", "OptExtends", "OptImplements", "MoreIDs",
  "OptFields", "Field", "InterfaceDecl", "OptPrototypes", "Prototype",
  "StmtBlock", "OptVariableDecl", "OptStmt", "Stmt", "ExprStmt", "IfStmt",
  "OptElseStmt", "WhileStmt", "ForStmt", "OptExpr", "BreakStmt",
  "ReturnStmt", "PrintStmt", "OptExprs", "MoreExprs", "Expr", "Lvalue",
  "Call", "Actuals", "Constant", "epsilon", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304
};
# endif

#define YYPACT_NINF -173

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-173)))

#define YYTABLE_NINF -1

#define yytable_value_is_error(Yytable_value) \
  (!!((Yytable_value) == (-1)))

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     289,  -173,    -8,  -173,    -2,     9,  -173,  -173,  -173,    26,
    -173,   289,  -173,    23,   -21,  -173,  -173,  -173,    42,    49,
      45,  -173,  -173,  -173,    54,    33,    67,    52,    63,  -173,
     152,    67,  -173,    55,   -19,    68,  -173,  -173,    60,    78,
      62,   -17,    71,   152,  -173,    75,    67,  -173,  -173,  -173,
      89,    77,   291,    91,    95,  -173,  -173,    89,    55,    67,
    -173,    79,  -173,  -173,  -173,  -173,    88,   291,  -173,    67,
      67,  -173,  -173,    67,   124,  -173,    77,  -173,  -173,    90,
     107,  -173,   117,    34,  -173,   110,   119,   120,  -173,  -173,
     123,    34,  -173,    -4,   129,   133,  -173,    34,    34,  -173,
     111,   124,  -173,  -173,  -173,  -173,  -173,  -173,  -173,   159,
     121,  -173,  -173,  -173,  -173,   128,   130,    34,   202,  -173,
     131,    34,    34,   135,   301,  -173,    34,   132,    34,   137,
     -24,  -173,  -173,  -173,  -173,    34,    34,    34,    34,    34,
      34,    34,    34,    34,    34,    34,    34,    34,    34,    34,
     134,  -173,  -173,   146,   288,  -173,  -173,   215,   150,  -173,
     288,   151,  -173,   165,   245,   156,   185,   312,   323,   323,
     332,   332,   332,   332,   -24,   -24,  -173,  -173,  -173,   301,
     232,  -173,   158,    34,  -173,  -173,   124,    34,  -173,  -173,
      34,   124,    67,  -173,  -173,   288,  -173,   172,   166,   181,
     -11,  -173,    34,  -173,   124,  -173,  -173,  -173,   169,  -173,
     124,  -173
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    13,     0,    11,     0,     0,    16,    12,    14,     0,
       2,     4,     5,     0,     0,     6,     7,     8,     0,    99,
       0,     1,     3,     9,    10,     0,    99,     0,     0,    25,
      99,    99,    15,    99,     0,     0,    20,    24,     0,     0,
       0,     0,     0,    99,    35,     0,     0,    19,    22,    10,
       0,    99,    99,     0,     0,    33,    34,     0,    99,    99,
      18,     0,    26,    28,    31,    32,     0,    99,    30,    99,
      99,    17,    21,    99,    99,    40,    99,    23,    29,     0,
       0,    39,     0,     0,    97,     0,     0,     0,    52,    98,
       0,    99,    95,    88,     0,     0,    96,     0,     0,    50,
       0,    99,    43,    44,    45,    46,    47,    48,    49,     0,
      68,    69,    67,    42,    27,     0,     0,     0,     0,    60,
       0,     0,    99,     0,    58,    59,    99,     0,     0,     0,
      76,    85,    38,    41,    51,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    37,    36,     0,    99,    70,    86,     0,     0,    61,
      99,     0,    94,     0,     0,     0,    84,    83,    81,    82,
      77,    79,    80,    78,    71,    72,    73,    74,    75,    66,
       0,    90,     0,     0,    63,    65,     0,     0,    93,    91,
      99,     0,     0,    89,    62,    99,    56,     0,     0,    99,
       0,    64,    99,    92,     0,    53,    55,    87,     0,    54,
       0,    57
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -173,  -173,   176,  -173,    17,   -23,     0,   -39,     5,   175,
    -173,  -173,  -173,   113,   167,  -173,  -173,   147,  -173,   -40,
     118,   163,  -172,  -173,  -173,  -173,  -173,  -173,  -120,  -173,
    -173,  -173,  -173,  -144,   -26,  -173,  -173,   103,  -173,   -18
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     9,    10,    11,    12,    13,    34,    15,    35,    47,
      16,    28,    39,    62,    66,    67,    17,    42,    43,    99,
      74,   100,   101,   102,   103,   205,   104,   105,   123,   106,
     107,   108,   153,   184,   109,   110,   111,   161,   112,    36
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      14,    29,   158,    33,   126,    24,   207,    49,    33,    54,
      60,    14,    44,    65,   196,    48,   188,    71,    18,   199,
     145,   146,   147,    58,    19,    44,    21,    25,    65,    25,
      41,    25,   209,    63,    68,    20,    45,    25,   211,    23,
      48,    75,    83,    41,    84,   127,    33,    33,    86,    68,
      26,   201,    14,    89,    30,    75,   113,   118,    63,    92,
      93,    27,    31,    95,    32,   124,    96,    14,    38,    64,
       1,   130,   131,   125,    79,    80,    73,    97,    37,    46,
       3,    98,   208,   113,    64,    50,    51,    52,    53,    55,
      73,   154,    57,     6,     7,   157,   124,     8,    59,    69,
     160,    61,   164,    70,   125,    76,    77,   115,   162,   166,
     167,   168,   169,   170,   171,   172,   173,   174,   175,   176,
     177,   178,   179,   180,   116,   117,   119,   120,   121,   132,
      82,   122,    83,    59,    84,    85,   185,   128,    86,    87,
      88,   129,   185,    89,   151,    90,   152,    91,   156,    92,
      93,   159,    94,    95,   148,     1,    96,   195,   163,    40,
     181,   197,   165,   182,   160,     3,   187,    97,   189,   149,
     150,    98,   162,   190,   194,   134,   124,   185,     6,     7,
     192,   206,     8,   203,   125,   204,   210,    22,   202,   114,
      56,    81,   200,   135,   136,   137,   138,   139,   140,   141,
     142,   143,   144,   145,   146,   147,   135,   136,   137,   138,
     139,   140,   141,   142,   143,   144,   145,   146,   147,   155,
     136,   137,   138,   139,   140,   141,   142,   143,   144,   145,
     146,   147,   186,    72,    78,     0,   135,   136,   137,   138,
     139,   140,   141,   142,   143,   144,   145,   146,   147,   135,
     136,   137,   138,   139,   140,   141,   142,   143,   144,   145,
     146,   147,   191,   193,   133,     0,   135,   136,   137,   138,
     139,   140,   141,   142,   143,   144,   145,   146,   147,   135,
     136,   137,   138,   139,   140,   141,   142,   143,   144,   145,
     146,   147,     1,   198,     1,     0,     2,     0,     2,     0,
       0,     0,     3,     0,     3,     0,     0,     0,     0,     4,
       0,     5,   183,     0,     0,     6,     7,     6,     7,     8,
       0,     8,   135,   136,   137,   138,   139,   140,   141,   142,
     143,   144,   145,   146,   147,   135,   136,   137,   138,   139,
     140,   141,   142,   143,   144,   145,   146,   147,   137,   138,
     139,   140,   141,   142,   143,   144,   145,   146,   147,    -1,
      -1,   139,   140,   141,   142,   143,   144,   145,   146,   147,
      -1,    -1,    -1,    -1,   143,   144,   145,   146,   147
};

static const yytype_int16 yycheck[] =
{
       0,    19,   122,    26,     8,    26,    17,    26,    31,    26,
      50,    11,    30,    52,   186,    33,   160,    57,    26,   191,
      44,    45,    46,    46,    26,    43,     0,    48,    67,    48,
      30,    48,   204,    51,    52,    26,    31,    48,   210,    16,
      58,    59,     8,    43,    10,    49,    69,    70,    14,    67,
       8,   195,    52,    19,     9,    73,    74,    83,    76,    25,
      26,    12,     8,    29,    31,    91,    32,    67,     5,    52,
       3,    97,    98,    91,    69,    70,    59,    43,    26,    24,
      13,    47,   202,   101,    67,    17,    26,     9,    26,    18,
      73,   117,    17,    26,    27,   121,   122,    30,     9,     8,
     126,    24,   128,     8,   122,    26,    18,    17,   126,   135,
     136,   137,   138,   139,   140,   141,   142,   143,   144,   145,
     146,   147,   148,   149,    17,     8,    16,     8,     8,    18,
       6,     8,     8,     9,    10,    11,   154,     8,    14,    15,
      16,     8,   160,    19,    16,    21,    16,    23,    17,    25,
      26,    16,    28,    29,    33,     3,    32,   183,    26,     7,
      26,   187,    25,    17,   190,    13,    16,    43,    17,    48,
      49,    47,   190,     8,    16,    16,   202,   195,    26,    27,
      24,   199,    30,    17,   202,     4,    17,    11,    16,    76,
      43,    73,   192,    34,    35,    36,    37,    38,    39,    40,
      41,    42,    43,    44,    45,    46,    34,    35,    36,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    17,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    17,    58,    67,    -1,    34,    35,    36,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    17,    31,   101,    -1,    34,    35,    36,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,     3,   190,     3,    -1,     7,    -1,     7,    -1,
      -1,    -1,    13,    -1,    13,    -1,    -1,    -1,    -1,    20,
      -1,    22,    24,    -1,    -1,    26,    27,    26,    27,    30,
      -1,    30,    34,    35,    36,    37,    38,    39,    40,    41,
      42,    43,    44,    45,    46,    34,    35,    36,    37,    38,
      39,    40,    41,    42,    43,    44,    45,    46,    36,    37,
      38,    39,    40,    41,    42,    43,    44,    45,    46,    36,
      37,    38,    39,    40,    41,    42,    43,    44,    45,    46,
      38,    39,    40,    41,    42,    43,    44,    45,    46
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     7,    13,    20,    22,    26,    27,    30,    51,
      52,    53,    54,    55,    56,    57,    60,    66,    26,    26,
      26,     0,    52,    16,    26,    48,     8,    12,    61,    89,
       9,     8,    31,    55,    56,    58,    89,    26,     5,    62,
       7,    56,    67,    68,    89,    58,    24,    59,    89,    26,
      17,    26,     9,    26,    26,    18,    67,    17,    55,     9,
      69,    24,    63,    89,    54,    57,    64,    65,    89,     8,
       8,    69,    59,    54,    70,    89,    26,    18,    64,    58,
      58,    70,     6,     8,    10,    11,    14,    15,    16,    19,
      21,    23,    25,    26,    28,    29,    32,    43,    47,    69,
      71,    72,    73,    74,    76,    77,    79,    80,    81,    84,
      85,    86,    88,    89,    63,    17,    17,     8,    84,    16,
       8,     8,     8,    78,    84,    89,     8,    49,     8,     8,
      84,    84,    18,    71,    16,    34,    35,    36,    37,    38,
      39,    40,    41,    42,    43,    44,    45,    46,    33,    48,
      49,    16,    16,    82,    84,    17,    17,    84,    78,    16,
      84,    87,    89,    26,    84,    25,    84,    84,    84,    84,
      84,    84,    84,    84,    84,    84,    84,    84,    84,    84,
      84,    26,    17,    24,    83,    89,    17,    16,    83,    17,
       8,    17,    24,    31,    16,    84,    72,    84,    87,    72,
      56,    83,    16,    17,     4,    75,    89,    17,    78,    72,
      17,    72
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    50,    51,    52,    52,    53,    53,    53,    53,    54,
      55,    56,    56,    56,    56,    56,    56,    57,    57,    58,
      58,    59,    59,    60,    61,    61,    62,    63,    63,    64,
      64,    65,    65,    66,    67,    67,    68,    68,    69,    70,
      70,    71,    71,    72,    72,    72,    72,    72,    72,    72,
      72,    73,    73,    74,    75,    75,    76,    77,    78,    78,
      79,    80,    81,    82,    83,    83,    84,    84,    84,    84,
      84,    84,    84,    84,    84,    84,    84,    84,    84,    84,
      84,    84,    84,    84,    84,    84,    84,    84,    85,    85,
      85,    86,    86,    87,    87,    88,    88,    88,    88,    89
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     1,     1,     1,     2,
       2,     1,     1,     1,     1,     3,     1,     6,     6,     2,
       1,     3,     1,     7,     2,     1,     3,     3,     1,     2,
       1,     1,     1,     5,     2,     1,     6,     6,     4,     2,
       1,     2,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     2,     1,     6,     2,     1,     5,     9,     1,     1,
       2,     3,     5,     2,     3,     1,     3,     1,     1,     1,
       3,     3,     3,     3,     3,     3,     2,     3,     3,     3,
       3,     3,     3,     3,     3,     2,     3,     6,     1,     4,
       3,     4,     6,     2,     1,     1,     1,     1,     1,     0
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{/*
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");*/
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{/*
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
*/}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "reduce %d \n",
             yylno);
  /* The symbols being reduced.  */
  /*for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }*/
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  /*YYDPRINTF ((stderr, "Starting parse\n"));*/

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  /*YYDPRINTF ((stderr, "Entering state %d\n", yystate));*/

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      /*YYDPRINTF ((stderr, "Reading a token: "));*/
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      /*YYDPRINTF ((stderr, "Now at end of input.\n"));*/
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      /*YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);*/
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  /* YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc); */

  YYDPRINTF ((stderr, "[Shift]\n"));

  
  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 27 "dino.y" /* yacc.c:1646  */
    {printf("%sreduce 1\n",(yyval));}
#line 1485 "y.tab.c" /* yacc.c:1646  */
    break;

  case 3:
#line 29 "dino.y" /* yacc.c:1646  */
    {printf("reduce 2\n");}
#line 1491 "y.tab.c" /* yacc.c:1646  */
    break;

  case 4:
#line 30 "dino.y" /* yacc.c:1646  */
    {printf("reduce 3\n");}
#line 1497 "y.tab.c" /* yacc.c:1646  */
    break;

  case 5:
#line 33 "dino.y" /* yacc.c:1646  */
    {printf("reduce 4\n");}
#line 1503 "y.tab.c" /* yacc.c:1646  */
    break;

  case 6:
#line 34 "dino.y" /* yacc.c:1646  */
    {printf("reduce 5\n");}
#line 1509 "y.tab.c" /* yacc.c:1646  */
    break;

  case 7:
#line 35 "dino.y" /* yacc.c:1646  */
    {printf("reduce 6\n");}
#line 1515 "y.tab.c" /* yacc.c:1646  */
    break;

  case 8:
#line 36 "dino.y" /* yacc.c:1646  */
    {printf("reduce 7\n");}
#line 1521 "y.tab.c" /* yacc.c:1646  */
    break;

  case 9:
#line 39 "dino.y" /* yacc.c:1646  */
    {printf("reduce 8\n");}
#line 1527 "y.tab.c" /* yacc.c:1646  */
    break;

  case 10:
#line 42 "dino.y" /* yacc.c:1646  */
    {printf("reduce 9\n");}
#line 1533 "y.tab.c" /* yacc.c:1646  */
    break;

  case 11:
#line 45 "dino.y" /* yacc.c:1646  */
    {printf("reduce 11\n");}
#line 1539 "y.tab.c" /* yacc.c:1646  */
    break;

  case 12:
#line 46 "dino.y" /* yacc.c:1646  */
    {printf("reduce 12\n");}
#line 1545 "y.tab.c" /* yacc.c:1646  */
    break;

  case 13:
#line 47 "dino.y" /* yacc.c:1646  */
    {printf("reduce 13\n");}
#line 1551 "y.tab.c" /* yacc.c:1646  */
    break;

  case 14:
#line 48 "dino.y" /* yacc.c:1646  */
    {printf("reduce 14\n");}
#line 1557 "y.tab.c" /* yacc.c:1646  */
    break;

  case 15:
#line 49 "dino.y" /* yacc.c:1646  */
    {printf("reduce 15\n");}
#line 1563 "y.tab.c" /* yacc.c:1646  */
    break;

  case 16:
#line 50 "dino.y" /* yacc.c:1646  */
    {printf("reduce 16\n");}
#line 1569 "y.tab.c" /* yacc.c:1646  */
    break;

  case 17:
#line 53 "dino.y" /* yacc.c:1646  */
    {printf("reduce 17\n");}
#line 1575 "y.tab.c" /* yacc.c:1646  */
    break;

  case 18:
#line 54 "dino.y" /* yacc.c:1646  */
    {printf("reduce 18\n");}
#line 1581 "y.tab.c" /* yacc.c:1646  */
    break;

  case 19:
#line 57 "dino.y" /* yacc.c:1646  */
    {printf("reduce 19\n");}
#line 1587 "y.tab.c" /* yacc.c:1646  */
    break;

  case 20:
#line 58 "dino.y" /* yacc.c:1646  */
    {printf("reduce 20\n");}
#line 1593 "y.tab.c" /* yacc.c:1646  */
    break;

  case 21:
#line 61 "dino.y" /* yacc.c:1646  */
    {printf("reduce 21\n");}
#line 1599 "y.tab.c" /* yacc.c:1646  */
    break;

  case 22:
#line 62 "dino.y" /* yacc.c:1646  */
    {printf("reduce 22\n");}
#line 1605 "y.tab.c" /* yacc.c:1646  */
    break;

  case 23:
#line 65 "dino.y" /* yacc.c:1646  */
    {printf("reduce 23\n");}
#line 1611 "y.tab.c" /* yacc.c:1646  */
    break;

  case 24:
#line 68 "dino.y" /* yacc.c:1646  */
    {printf("reduce 24\n");}
#line 1617 "y.tab.c" /* yacc.c:1646  */
    break;

  case 25:
#line 69 "dino.y" /* yacc.c:1646  */
    {printf("reduce 25\n");}
#line 1623 "y.tab.c" /* yacc.c:1646  */
    break;

  case 26:
#line 72 "dino.y" /* yacc.c:1646  */
    {printf("reduce 26\n");}
#line 1629 "y.tab.c" /* yacc.c:1646  */
    break;

  case 27:
#line 75 "dino.y" /* yacc.c:1646  */
    {printf("reduce 27\n");}
#line 1635 "y.tab.c" /* yacc.c:1646  */
    break;

  case 28:
#line 76 "dino.y" /* yacc.c:1646  */
    {printf("reduce 28\n");}
#line 1641 "y.tab.c" /* yacc.c:1646  */
    break;

  case 29:
#line 79 "dino.y" /* yacc.c:1646  */
    {printf("reduce 29\n");}
#line 1647 "y.tab.c" /* yacc.c:1646  */
    break;

  case 30:
#line 80 "dino.y" /* yacc.c:1646  */
    {printf("reduce 30\n");}
#line 1653 "y.tab.c" /* yacc.c:1646  */
    break;

  case 31:
#line 83 "dino.y" /* yacc.c:1646  */
    {printf("reduce 31\n");}
#line 1659 "y.tab.c" /* yacc.c:1646  */
    break;

  case 32:
#line 84 "dino.y" /* yacc.c:1646  */
    {printf("reduce 32\n");}
#line 1665 "y.tab.c" /* yacc.c:1646  */
    break;

  case 33:
#line 87 "dino.y" /* yacc.c:1646  */
    {printf("reduce 33\n");}
#line 1671 "y.tab.c" /* yacc.c:1646  */
    break;

  case 34:
#line 90 "dino.y" /* yacc.c:1646  */
    {printf("reduce 34\n");}
#line 1677 "y.tab.c" /* yacc.c:1646  */
    break;

  case 35:
#line 91 "dino.y" /* yacc.c:1646  */
    {printf("reduce 34\n");}
#line 1683 "y.tab.c" /* yacc.c:1646  */
    break;

  case 36:
#line 94 "dino.y" /* yacc.c:1646  */
    {printf("reduce 35\n");}
#line 1689 "y.tab.c" /* yacc.c:1646  */
    break;

  case 37:
#line 95 "dino.y" /* yacc.c:1646  */
    {printf("reduce 36\n");}
#line 1695 "y.tab.c" /* yacc.c:1646  */
    break;

  case 38:
#line 98 "dino.y" /* yacc.c:1646  */
    {printf("reduce 37\n");}
#line 1701 "y.tab.c" /* yacc.c:1646  */
    break;

  case 39:
#line 101 "dino.y" /* yacc.c:1646  */
    {printf("reduce 38\n");}
#line 1707 "y.tab.c" /* yacc.c:1646  */
    break;

  case 40:
#line 102 "dino.y" /* yacc.c:1646  */
    {printf("reduce 39\n");}
#line 1713 "y.tab.c" /* yacc.c:1646  */
    break;

  case 41:
#line 105 "dino.y" /* yacc.c:1646  */
    {printf("reduce 40\n");}
#line 1719 "y.tab.c" /* yacc.c:1646  */
    break;

  case 42:
#line 106 "dino.y" /* yacc.c:1646  */
    {printf("reduce 41\n");}
#line 1725 "y.tab.c" /* yacc.c:1646  */
    break;

  case 43:
#line 109 "dino.y" /* yacc.c:1646  */
    {printf("reduce 42\n");}
#line 1731 "y.tab.c" /* yacc.c:1646  */
    break;

  case 44:
#line 110 "dino.y" /* yacc.c:1646  */
    {printf("reduce 43\n");}
#line 1737 "y.tab.c" /* yacc.c:1646  */
    break;

  case 45:
#line 111 "dino.y" /* yacc.c:1646  */
    {printf("reduce 44\n");}
#line 1743 "y.tab.c" /* yacc.c:1646  */
    break;

  case 46:
#line 112 "dino.y" /* yacc.c:1646  */
    {printf("reduce 45\n");}
#line 1749 "y.tab.c" /* yacc.c:1646  */
    break;

  case 47:
#line 113 "dino.y" /* yacc.c:1646  */
    {printf("reduce 46\n");}
#line 1755 "y.tab.c" /* yacc.c:1646  */
    break;

  case 48:
#line 114 "dino.y" /* yacc.c:1646  */
    {printf("reduce 47\n");}
#line 1761 "y.tab.c" /* yacc.c:1646  */
    break;

  case 49:
#line 115 "dino.y" /* yacc.c:1646  */
    {printf("reduce 48\n");}
#line 1767 "y.tab.c" /* yacc.c:1646  */
    break;

  case 50:
#line 116 "dino.y" /* yacc.c:1646  */
    {printf("reduce 49\n");}
#line 1773 "y.tab.c" /* yacc.c:1646  */
    break;

  case 51:
#line 119 "dino.y" /* yacc.c:1646  */
    {printf("reduce 50\n");}
#line 1779 "y.tab.c" /* yacc.c:1646  */
    break;

  case 52:
#line 120 "dino.y" /* yacc.c:1646  */
    {printf("reduce 51\n");}
#line 1785 "y.tab.c" /* yacc.c:1646  */
    break;

  case 53:
#line 123 "dino.y" /* yacc.c:1646  */
    {printf("reduce 52\n");}
#line 1791 "y.tab.c" /* yacc.c:1646  */
    break;

  case 54:
#line 126 "dino.y" /* yacc.c:1646  */
    {printf("reduce 53\n");}
#line 1797 "y.tab.c" /* yacc.c:1646  */
    break;

  case 55:
#line 127 "dino.y" /* yacc.c:1646  */
    {printf("reduce 54\n");}
#line 1803 "y.tab.c" /* yacc.c:1646  */
    break;

  case 56:
#line 130 "dino.y" /* yacc.c:1646  */
    {printf("reduce 55\n");}
#line 1809 "y.tab.c" /* yacc.c:1646  */
    break;

  case 57:
#line 133 "dino.y" /* yacc.c:1646  */
    {printf("reduce 56\n");}
#line 1815 "y.tab.c" /* yacc.c:1646  */
    break;

  case 58:
#line 136 "dino.y" /* yacc.c:1646  */
    {printf("reduce 57\n");}
#line 1821 "y.tab.c" /* yacc.c:1646  */
    break;

  case 59:
#line 137 "dino.y" /* yacc.c:1646  */
    {printf("reduce 58\n");}
#line 1827 "y.tab.c" /* yacc.c:1646  */
    break;

  case 60:
#line 140 "dino.y" /* yacc.c:1646  */
    {printf("reduce 59\n");}
#line 1833 "y.tab.c" /* yacc.c:1646  */
    break;

  case 61:
#line 143 "dino.y" /* yacc.c:1646  */
    {printf("reduce 60\n");}
#line 1839 "y.tab.c" /* yacc.c:1646  */
    break;

  case 62:
#line 146 "dino.y" /* yacc.c:1646  */
    {printf("reduce 61\n");}
#line 1845 "y.tab.c" /* yacc.c:1646  */
    break;

  case 63:
#line 149 "dino.y" /* yacc.c:1646  */
    {printf("reduce 62\n");}
#line 1851 "y.tab.c" /* yacc.c:1646  */
    break;

  case 64:
#line 152 "dino.y" /* yacc.c:1646  */
    {printf("reduce 63\n");}
#line 1857 "y.tab.c" /* yacc.c:1646  */
    break;

  case 65:
#line 153 "dino.y" /* yacc.c:1646  */
    {printf("reduce 64\n");}
#line 1863 "y.tab.c" /* yacc.c:1646  */
    break;

  case 66:
#line 156 "dino.y" /* yacc.c:1646  */
    {printf("reduce 65\n");}
#line 1869 "y.tab.c" /* yacc.c:1646  */
    break;

  case 67:
#line 157 "dino.y" /* yacc.c:1646  */
    {printf("reduce 66\n");}
#line 1875 "y.tab.c" /* yacc.c:1646  */
    break;

  case 68:
#line 158 "dino.y" /* yacc.c:1646  */
    {printf("reduce 67\n");}
#line 1881 "y.tab.c" /* yacc.c:1646  */
    break;

  case 69:
#line 159 "dino.y" /* yacc.c:1646  */
    {printf("reduce 68\n");}
#line 1887 "y.tab.c" /* yacc.c:1646  */
    break;

  case 70:
#line 160 "dino.y" /* yacc.c:1646  */
    {printf("reduce 69\n");}
#line 1893 "y.tab.c" /* yacc.c:1646  */
    break;

  case 71:
#line 161 "dino.y" /* yacc.c:1646  */
    {printf("reduce 70\n");}
#line 1899 "y.tab.c" /* yacc.c:1646  */
    break;

  case 72:
#line 162 "dino.y" /* yacc.c:1646  */
    {printf("reduce 71\n");}
#line 1905 "y.tab.c" /* yacc.c:1646  */
    break;

  case 73:
#line 163 "dino.y" /* yacc.c:1646  */
    {printf("reduce 72\n");}
#line 1911 "y.tab.c" /* yacc.c:1646  */
    break;

  case 74:
#line 164 "dino.y" /* yacc.c:1646  */
    {printf("reduce 73\n");}
#line 1917 "y.tab.c" /* yacc.c:1646  */
    break;

  case 75:
#line 165 "dino.y" /* yacc.c:1646  */
    {printf("reduce 74\n");}
#line 1923 "y.tab.c" /* yacc.c:1646  */
    break;

  case 76:
#line 166 "dino.y" /* yacc.c:1646  */
    {printf("reduce 75\n");}
#line 1929 "y.tab.c" /* yacc.c:1646  */
    break;

  case 77:
#line 167 "dino.y" /* yacc.c:1646  */
    {printf("reduce 76\n");}
#line 1935 "y.tab.c" /* yacc.c:1646  */
    break;

  case 78:
#line 168 "dino.y" /* yacc.c:1646  */
    {printf("reduce 77\n");}
#line 1941 "y.tab.c" /* yacc.c:1646  */
    break;

  case 79:
#line 169 "dino.y" /* yacc.c:1646  */
    {printf("reduce 78\n");}
#line 1947 "y.tab.c" /* yacc.c:1646  */
    break;

  case 80:
#line 170 "dino.y" /* yacc.c:1646  */
    {printf("reduce 79\n");}
#line 1953 "y.tab.c" /* yacc.c:1646  */
    break;

  case 81:
#line 171 "dino.y" /* yacc.c:1646  */
    {printf("reduce 80\n");}
#line 1959 "y.tab.c" /* yacc.c:1646  */
    break;

  case 82:
#line 172 "dino.y" /* yacc.c:1646  */
    {printf("reduce 81\n");}
#line 1965 "y.tab.c" /* yacc.c:1646  */
    break;

  case 83:
#line 173 "dino.y" /* yacc.c:1646  */
    {printf("reduce 82\n");}
#line 1971 "y.tab.c" /* yacc.c:1646  */
    break;

  case 84:
#line 174 "dino.y" /* yacc.c:1646  */
    {printf("reduce 83\n");}
#line 1977 "y.tab.c" /* yacc.c:1646  */
    break;

  case 85:
#line 175 "dino.y" /* yacc.c:1646  */
    {printf("reduce 84\n");}
#line 1983 "y.tab.c" /* yacc.c:1646  */
    break;

  case 86:
#line 176 "dino.y" /* yacc.c:1646  */
    {printf("reduce 85\n");}
#line 1989 "y.tab.c" /* yacc.c:1646  */
    break;

  case 87:
#line 177 "dino.y" /* yacc.c:1646  */
    {printf("reduce 86\n");}
#line 1995 "y.tab.c" /* yacc.c:1646  */
    break;

  case 88:
#line 180 "dino.y" /* yacc.c:1646  */
    {printf("reduce 87\n");}
#line 2001 "y.tab.c" /* yacc.c:1646  */
    break;

  case 89:
#line 181 "dino.y" /* yacc.c:1646  */
    {printf("reduce 88\n");}
#line 2007 "y.tab.c" /* yacc.c:1646  */
    break;

  case 90:
#line 182 "dino.y" /* yacc.c:1646  */
    {printf("reduce 89\n");}
#line 2013 "y.tab.c" /* yacc.c:1646  */
    break;

  case 91:
#line 185 "dino.y" /* yacc.c:1646  */
    {printf("reduce 90\n");}
#line 2019 "y.tab.c" /* yacc.c:1646  */
    break;

  case 92:
#line 186 "dino.y" /* yacc.c:1646  */
    {printf("reduce 91\n");}
#line 2025 "y.tab.c" /* yacc.c:1646  */
    break;

  case 93:
#line 189 "dino.y" /* yacc.c:1646  */
    {printf("reduce 92\n");}
#line 2031 "y.tab.c" /* yacc.c:1646  */
    break;

  case 94:
#line 190 "dino.y" /* yacc.c:1646  */
    {printf("reduce 93\n");}
#line 2037 "y.tab.c" /* yacc.c:1646  */
    break;

  case 95:
#line 193 "dino.y" /* yacc.c:1646  */
    {printf("reduce 94\n");}
#line 2043 "y.tab.c" /* yacc.c:1646  */
    break;

  case 96:
#line 194 "dino.y" /* yacc.c:1646  */
    {printf("reduce 95\n");}
#line 2049 "y.tab.c" /* yacc.c:1646  */
    break;

  case 97:
#line 195 "dino.y" /* yacc.c:1646  */
    {printf("reduce 96\n");}
#line 2055 "y.tab.c" /* yacc.c:1646  */
    break;

  case 98:
#line 196 "dino.y" /* yacc.c:1646  */
    {printf("reduce 97\n");}
#line 2061 "y.tab.c" /* yacc.c:1646  */
    break;

  case 99:
#line 199 "dino.y" /* yacc.c:1646  */
    {printf("reduce 98\n");}
#line 2067 "y.tab.c" /* yacc.c:1646  */
    break;


#line 2071 "y.tab.c" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  /*YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);*/
  
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      /*yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);*/
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      /*yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp); */
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 203 "dino.y" /* yacc.c:1906  */






void yyerror(char *s) {
    fprintf(stderr, "%s\nthis is going to work", s);
}
int main() {
    initFirstLetter();
    initSymAndNext();
    yydebug = 1;
    yyparse();
}

