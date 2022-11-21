%{
#include <stdio.h>
#include <stdlib.h>
int count = 0;
int yylex();
int yyerror(char const *s);
%}
%token NEWLINE INVALID
%%
start : S NEWLINE { return 0; }
;
S :'a' S { count++; }
| 'b' {}
;
%%
int main()
{
printf("Enter the string:\n");
yyparse();
printf("Number of a\'s: %d\n", count);
return 1;
}
int yyerror(char const *s)
{
printf("INVALID INPUT : %s\n", s);
exit(1);
return 0;
}
