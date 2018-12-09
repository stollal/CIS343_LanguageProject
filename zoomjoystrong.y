%{
	#include <stdio.h>
	#include "zoomjoystrong.h"
	#include <stdlib.h>
	int yylex();
	int yyerror(const char* err);
%}

%token INT
%token END
%token ENDSTATEMENT
%token FLOAT
%token POINT
%token LINE
%token CIRCLE
%token RECTANGLE
%token COLOR
%%


program: statement_list
       ;

statement_list:	statement
	      | statement statement_list
	      ;

statement: LINE INT INT INT INT
	 | POINT INT INT
	 | CIRCLE INT INT INT 
	 | RECTANGLE INT INT INT INT
	 | COLOR INT INT INT
	 | ENDSTATEMENT
	 | END
	 ;

%%

int yyerror(const char* err){
	printf("%s", err);
}

int main(int argc, char** argv){
	yyparse();
}

