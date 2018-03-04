# terp
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
  | expr (SQRT|POWER)
  | expr (MULTIPLY|DIVIDE|MOD) expr
  | expr (PLUS|MINUS) expr
  | expr (BIGGER|BIGGER_OR_SAME|SMALLER|SMALLER_OR_SAME|SAME|NOT_SAME) expr
  
  : DOUBLE 
  | expr (SQRT|POWER)
  | expr (MULTIPLY|DIVIDE|MOD) expr
  | expr (PLUS|MINUS) expr
  | expr (BIGGER|BIGGER_OR_SAME|SMALLER|SMALLER_OR_SAME|SAME|NOT_SAME) expr
 
<!--https://twodee.org/blog/16542
Tiered system of expressions
expr
  : additive

<!--
additive
  : multiplicative ((PLUS|MINUS) multiplicative)*

<!--multiplicative
  : atom ((ASTERISK|DIVIDE|MOD) atom)*

<!--atom
  : IDENTIFIER
  | INTEGER-->
