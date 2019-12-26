all: regular_expression variable_arguments date_and_time

regular_expression: regular_expression.o 
	g++ -o $@ $^ -Wall -Werror

variable_arguments: variable_arguments.o
	gcc -o $@ $^ -Wall -Werror

date_and_time: date_and_time.o
	gcc -o $@ $^ -Wall -Werror
	
check:
	@echo Done

distcheck:
	@echo

clean:
	@rm -vf *.o regular_expression date_and_time variable_arguments

distclean:
	@echo
