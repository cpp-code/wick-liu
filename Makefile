all: regular_expression

regular_expression: regular_expression.o
	g++ -o $@ $^ -Wall -Werror

check:regular_expression
	./$<
	@echo Done

distcheck:
	@echo

clean:
	@rm -vf *.o regular_expression

distclean:
	@echo
