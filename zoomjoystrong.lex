%{
	#include <stdio.h>
	#include "zoomjoystrong.tab.h"

%}

%option noyywrap

%%

END	{return END;}
;	{return ENDSTATEMENT;}
POINT	{return POINT;}
LINE	{return LINE;}
CIRCLE	{return CIRCLE;}
RECTANGLE {return RECTANGLE;}
SET_COLOR {return COLOR;}
[0-9]+	{return INT;}
[0-9]+\.[0-9]+	{return FLOAT;}
[ |\t\n]	; //Ignore whitespace
.	{printf("INVALID");}

%%
