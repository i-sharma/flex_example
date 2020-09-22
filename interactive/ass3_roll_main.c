/*
If you name this file the same as .l file, i.e. ass3_roll.c, sometimes flex compiler 
will redirect its output to ass3_roll.c instead of lex.yy.c; So, name the file containing 
main() carefully.
*/ 

#include<stdio.h>
#include "header.h"

extern int yylex ();
extern char* yytext;

int main()
{

	printf("\n\n---------starting interactive main---------\n\n");

	extern FILE *yyin; 
	yyin = fopen("../ass3_roll_test.c","r");
	
	int token;
	while(token = yylex()){
		switch (token)
		{
		case INT: 
		case FLOAT: 
		case DOUBLE: 
		case RETURN:
			printf("<KEYWORD, %d, %s>\n", token, yytext); break;
		case IDENTIFIER:
			printf("<IDENTIFIER, %d, %s>\n", token, yytext); break;
		case ASSIGN:
		case PLUS_EQ:
		case DIVIDE_EQ:
		case XOR:
			printf("<OPERATOR, %d, %s>\n", token, yytext); break;
		case SEMICOLON:
		case COMMA:
		case OP:
		case CP: 
		case OB:
		case CB:
			printf("<SPCHAR, %d, %s>\n", token, yytext); break;
		default:
			break;
		}
	}

	fclose(yyin);
	return 0;
}