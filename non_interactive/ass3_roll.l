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
