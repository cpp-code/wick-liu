all: regular_expression variable_arguments date_and_time

regular_expression: regular_expression.o 
	g++ -o $@ $^ -Wall -Werror

variable_arguments: variable_arguments.o
	g++ -o $@ $^ -Wall -Werror

date_and_time: 
	g++ -o $@ $^ -Wall -Werror
	
check:
	@echo Done

distcheck:
	@echo

clean:
	@rm -vf *.o regular_expression

distclean:
	@echo
