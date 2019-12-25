all: variable_arguments regular_expression date_and_time

variable_arguments: variable_arguments.o
	g++ -o $@ $^ -Wall -Werror

regular_expression: regular_expression.o
	g++ -o $@ $^ -Wall -Werror

date_and_time: date_and_time.o
	g++ -o $@ $^ -Wall -Werror

check:variable_arguments
	@echo Done

distcheck:
	@echo

clean:
	@rm -vf *.o variable_arguments regular_expression date_and_time

distclean:
	@echo
