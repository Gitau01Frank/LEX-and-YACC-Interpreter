%{
#include <stdio.h>
#include "y.tab.h"
%}
%%
"a" return *yytext;
"b" return *yytext;
[\n] return NEWLINE;
. return INVALID;
%%
int yywrap()
{
return 1;
}
