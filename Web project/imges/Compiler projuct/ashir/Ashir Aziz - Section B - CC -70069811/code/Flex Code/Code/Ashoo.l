%option noyywrap
%{
	# include<iostream>
	#include<stdio.h>
%}
letter [a-z,A-Z]
digit [0-9]
%%

"CONST"|"FLOAT"|"INT"|"BREAK"|"CONTINUE"|"ELSE"|"FOR"|"SWITCH"|"VOID"|"CASE"
|"ENUM"|"SIZEOF"|"TYPEDEF"|"CHAR"|"DO"|"IF"|"RETURN"|"UNION"|"WHILE"|"UOP"|"DEAN"|"HOD"|"and"|"or" {printf("keywords \n");}

([a-zA-Z]([a-zA-Z]+"_"|"_"|([a-zA-Z]+[0-9]|[0-9])([a-zA-Z]|[0-9]|"_"+([a-zA-Z]|[0-9]))*)*([a-zA-Z]+[0-9]|[0-9])([a-zA-Z]|[0-9]|("_"+([a-zA-Z]|
[0-9])))*)|([0-9]("_"|[a-zA-Z]|[0-9])*([a-zA-Z]|[0-9]))
{printf("ndentifier \n");}

([0-9])*|(([0-9])+"."([0-9])+) {printf("numbers \n");}


"<"|">"|"!="|"<>"|":="|"=="|"*"|"+"|"/"|"-"|"++"|"+="|"--"|"-="|"&&"|"||"|"|&"|"&|" {printf("operators \n");}


">>>" {printf("user input \n");}     "<<<" {printf("user input \n");}


"["|"]"|"{"|"}"|"("|")"|"'"|"'" {printf("punctuations \n");}


"//"([a-zA-Z]|[0-9])+      {printf("single line comment \n");}


"/*"([a-zA-Z]|[0-9])+"*/"  {printf("multiple line comment \n");}
%%

main()
{

	printf("Enter the String\n");
	yylex();
	return 0;
}