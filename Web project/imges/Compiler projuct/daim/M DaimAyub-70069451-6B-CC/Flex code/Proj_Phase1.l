%option noyywrap
%{
	#include<stdio.h>
%}
letter [a-zA-Z]
digit [0-9]
%%
([0-9])+|(([0-9])+"."([0-9])+) {printf("Number\n");}
([0-9])+|(([0-9])+("."([0-9])+){2}) {printf("Not Number\n");}
"CONST"|"FLOAT"|"INT"|"BREAK"|"CONTINUE"|"ELSE"|"FOR"|"SWITCH"|"VOID"|"CASE"|"ENUM"|"SIZEOF"|"TYPEDEF"|"CHAR"|"DO"|"IF"|"RETURN"|"UNION"|"WHILE"|"UOP"|"DEAN"|"HOD"|"and"|"or" {printf("Reserve Word\n");}
(^("CONST"|"FLOAT"|"INT"|"BREAK"|"CONTINUE"|"ELSE"|"FOR"|"SWITCH"|"VOID"|"CASE"|"ENUM"|"SIZEOF"|"TYPEDEF"|"CHAR"|"DO"|"IF"|"RETURN"|"UNION"|"WHILE"|"UOP"|"DEAN"|"HOD"|"and"|"or")) {printf("Not Reserve Word\n");}
(([a-zA-Z]([a-zA-Z]+"_"|"_"|([a-zA-Z]+[0-9]|[0-9])([a-zA-Z]|[0-9]|("_")+([a-zA-Z]|[0-9]))*)*([a-zA-Z]+[0-9]|[0-9])([a-zA-Z]|[0-9]|(("_")+([a-zA-Z]|[0-9])))*)) {printf("Identifier\n");}
([0-9](("_")|[a-zA-Z]|[0-9])*[a-zA-Z]+(("_")*([a-zA-Z]|[0-9])+)*)  {printf("Identifier\n");}
(([a-zA-Z]([a-zA-Z]+"_"|"_"|([a-zA-Z]+[0-9]|[0-9])([a-zA-Z]|[0-9]|("_")+([a-zA-Z]|[0-9]))*)*([a-zA-Z]+[0-9]|[0-9])([a-zA-Z]|[0-9]|(("_")+([a-zA-Z]|[0-9])))*))("_")+ {printf("Not Identifier\n");}
(([0-9](("_")|[a-zA-Z]|[0-9])*[a-zA-Z]+(("_")*([a-zA-Z]|[0-9])+)*))("_")+  {printf("Not Identifier\n");}
"<"|">"|"!="|"<>"|":="|"=="|"*"|"+"|"/"|"-"|"++"|"+="|"--"|"-="|"&&"|"||"|"|&"|"&|" {printf("Operator\n");}
(^("<"|">"|"!="|"<>"|":="|"=="|"*"|"+"|"/"|"-"|"++"|"+="|"--"|"-="|"&&"|"||"|"|&"|"&|")) {printf("Not Operator\n");}
">>>" {printf("Operator and UserInput\n");}
"<<<" {printf("Operator and UserOutput\n");}
"["|"]"|"{"|"}"|"("|")"|"\""|"\"" {printf("Punctuation");}
"//"([a-zA-Z]|" "|[0-9])+      {printf("Single line comment\n");}
"/*"([a-zA-Z]|" "|[0-9])+"*/"  {printf("Multiline comment\n");}
%%
main()
{
	printf("Enter a String\n");
	yylex();
}