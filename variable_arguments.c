#include <stdio.h>
#include <stdarg.h>

int add(const int num, ...)
{
    va_list arg;
    va_start(arg, num);
    int i = 0, sum = 0;

    while (i < num)
    {
        sum += va_arg(arg, int);
        i++;
    }

    va_end(arg);
    return sum;
}

int main()
{
    printf("sum: %d\n", add(3, 11, 22, 33));
    return 0;
}
