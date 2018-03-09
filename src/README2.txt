    CS 411: Compilers and Interpreters
   Project 2
   Team Members: Eric Rensel, Anthony Vu, Awais Ibrahim

   Instructions for compiling and running the project:
    1. Connect to the Cal Poly Pomona campus server using an ssh shell (such as putty)
        @ login.cpp.edu.
    2. Use an ssh file transfer program (such as winscp) to transfer all files from the src
        folder into a folder in the ssh shell.
    3. Make sure dino.l, dino.y, west.toy, test.toy and inputString[1 to 12].toy are in the same folder.
    4. Type "lex dino.l" to change the lex file into c code. This should create "lex.yy.c"
    5. Type “yacc -vd dino.y” to change the yacc file into c code. This should create “y.output”, “y.tab.c”, and “y.tab.h”.
    6. Type "cc lex.yy.c  y.tab.c -lfl" to compile the c code file.
    7. Type "./a.out" to test the parser with your own input. At any point you can press CTRL+D to have the program begin
       parsing the input. The program will exit upon accepting the input or display a syntax error.
    8. Type "./a.out < test.toy" to use the input file given in the included project directory.
    9. Type "./a.out < west.toy" or "./a.out < inputString12.toy" to use our test files that we created to account for
       possible inputs for the parser.
