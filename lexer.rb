#!/usr/bin/env ruby
This is the lexing file for Terp
#Trevor Griffin
----------------------------------------------------------------------------------
#Mathematical Variables 
----------------------------------------------------------------------------------
PLUS = 'PLUS'
MINUS = 'MINUS'
DIVIDE = 'DIVIDE'
MULTIPLY = 'MULTIPLY'
MOD = 'MOD'
POWER = 'POWER'
SQRT = 'SQRT'
----------------------------------------------------------------------------------
#LOGICAL OPERATORS
----------------------------------------------------------------------------------
BIGGER = 'BIGGER'
SMALLER = 'SMALLER"
SAME = 'SAME' 
BIGGER_OR_SAME = 'BIGGER_OR_SAME'
SMALLER_OR_SAME = 'SMALLER_OR_SAME'
NOT = 'NOT'
----------------------------------------------------------------------------------
#LOOPING STRUCTURES
----------------------------------------------------------------------------------
IF = 'IF'
ALSO_IF = 'ALSO_IF'
ELSE = 'ELSE'
WHILE = 'WHILE'
FOR = 'FOR'
FOR_EACH = 'FOREACH'
----------------------------------------------------------------------------------
#OTHER VARIABLES
----------------------------------------------------------------------------------
PRINT = 'PRINT'
----------------------------------------------------------------------------------

#lexer definition to walk step by step and store values
#-------------------------------------------------------
def	lexer(source) 
	results = []
	current_result = '';
	i = 0

	#function to simplify matching source tokens to variables
	def contains(regex)
		return source[i].scan(regex)
	end
	
	#function to move forward in the token string
	def stepForward
		current_result += source[i]
		i += 1
	end

	#function to pop out the found token
	def popout
		#--------------
	end

end
