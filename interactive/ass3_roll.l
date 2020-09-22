%{
	#include "header.h"
%}


/* regular definitions */
delim [ \t\n]
ws {delim}+
chars [A-Za-z]
digits [0-9]
id {chars}({chars}|_|{digits})*

%%

{ws}		//{/* no action and no return */}
int			{ return(INT);} 
float 		{ return(FLOAT);} 
double		{ return(DOUBLE);} 
return		{ return(RETURN);} 
{id}		{ return(IDENTIFIER);} 
"="			{ return(ASSIGN);} 
"+="		{ return(PLUS_EQ);} 
"/="		{ return(DIVIDE_EQ);} 
"^"			{ return(XOR);} 
";"			{ return(SEMICOLON);} 
","			{ return(COMMA);} 
"("			{ return(OP);} 
")"			{ return(CP);} 
"{"			{ return(OB);} 
"}"			{ return(CB);} 


%%
