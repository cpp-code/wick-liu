all: variable_arguments regular_expression

variable_arguments: variable_arguments.o
	g++ -o $@ $^ -Wall -Werror

regular_expression: regular_expression.o
	g++ -o $@ $^ -Wall -Werror

check:variable_arguments
	@echo Done

distcheck:
	@echo

clean:
	@rm -vf *.o variable_arguments regular_expression

distclean:
	@echo
