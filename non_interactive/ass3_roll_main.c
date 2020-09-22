/*
If you name this file the same as .l file, i.e. ass3_roll.c, sometimes flex compiler 
will redirect its output to ass3_roll.c instead of lex.yy.c; So, name the file containing 
main() carefully.
*/ 

#include<stdio.h>

extern int yylex ();

int main()
{

	printf("\n\n---------starting non-interactive main---------\n\n");

	extern FILE *yyin; 
	yyin = fopen("../ass3_roll_test.c","r");

	yylex();	//Calling only once 
	
	fclose(yyin);
	return 0;
}