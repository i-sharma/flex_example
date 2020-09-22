%{

	/*
	These are manifest constants, you will use something similar in interactive mode
	of writing flex

	#define  FLOAT 0
	#define  INT 1
	#define  DOUBLE 2
	#define  EQ 3
	#define  XOR 4
	#define  PLUS_EQ 5
	#define  DIVIDE_EQ 6
	#define  RETURN 7
	#define  KEYWORD 8
	#define  IDENTIFIER 9
	#define  OPERATOR 10
	#define  SPCHAR 11
	#define  SEMICOLON 12
	#define  COMMA 13
	#define  OP 14
	#define  CP 15
	#define  OB 16
	#define  CB 17

	*/

%}


/* regular definitions */
delim [ \t\n]
ws {delim}+
chars [A-Za-z]
digits [0-9]
id {chars}({chars}|_|{digits})*

%%

{ws}		//{/* no action and no return */}
int			{ printf("<KEYWORD, int>\n");} 
float 		{ printf("<KEYWORD, float>\n");} 
double		{ printf("<KEYWORD, double>\n");} 
return		{ printf("<KEYWORD, return>\n");} 
{id}		{ printf("<IDENTIFIER, %s>\n", yytext);} 
"="			{ printf("<OPERATOR, =>\n");} 
"+="		{ printf("<OPERATOR, +=>\n");} 
"/="		{ printf("<OPERATOR, /=>\n");} 
"^"			{ printf("<OPERATOR, ^>\n");} 
";"			{ printf("<SPCHAR, ;>\n");} 
","			{ printf("<SPCHAR, ,>\n");} 
"("			{ printf("<SPCHAR, (>\n");} 
")"			{ printf("<SPCHAR, )>\n");} 
"{"			{ printf("<SPCHAR, {>\n");} 
"}"			{ printf("<SPCHAR, }>\n");} 


%%
