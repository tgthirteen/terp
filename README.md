# terp  ---Trevor Griffin and Caleb Oster (Language to be re-named later - But emphasis on mathematical operations)
program
  : statement* EOF

statement
  : PRINT expr
  | IDENTIFIER ASSIGN expr 
  | IF expr statement* ELSE statement* END
  | WHILE expr statement* END
  | TO IDENTIFIER LEFT_PARENTHESIS IDENTIFIER* RIGHT_PARENTHESIS statement* END
  | IDENTIFIER LEFT_PARENTHESIS expr* RIGHT_PARENTHESIS
	<!-- STILL NEED ALSO IF FOR AND FOR_EACH

expr
  : INTEGER
	| (SQRT) expr
  | expr (COMB|PERM)
  |	expr (DERIVATIVE|INTEGRAL) expr <!-- is this possible?
  | expr (ROOT|POWER|LOG) expr
  | expr (MULTIPLY|DIVIDE|MOD) expr
  | expr (PLUS|MINUS) expr
  | expr (BIGGER|BIGGER_OR_SAME|SMALLER|SMALLER_OR_SAME|SAME|NOT_SAME) expr
  
  : DOUBLE
	| (SQRT) expr 
	| expr (DERIVATIVE|INTEGRAL) expr
	| expr (ROOT|POWER|LOG) expr
  | expr (SQRT|POWER) expr
  | expr (MULTIPLY|DIVIDE|MOD) expr
  | expr (PLUS|MINUS) expr
  | expr (BIGGER|BIGGER_OR_SAME|SMALLER|SMALLER_OR_SAME|SAME|NOT_SAME) expr
 

<!--Tiered system of expressions-->

expr
  : additive

additive
  : multiplicative ((PLUS|MINUS) multiplicative)*

multiplicative
  : repetition ((ASTERISK|DIVIDE|MOD) repetition)*

repetition
	: atom ((SQRT|ROOT|COMB|PERM|POWER|LOG) atom)*

atom
  : IDENTIFIER
  | INTEGER|DOUBLE
