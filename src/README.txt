   CS 411: Compilers and Interpreters
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
