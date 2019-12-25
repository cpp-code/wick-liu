#include <time.h>
#include <stdio.h>
#include <unistd.h>
#define DATE_OUT() printf("Now the time: %s, %s\n", __DATE__, __TIME__);

int main()
{
    time_t start_t, end_t;
    time(&start_t);
    struct tm *t;
    time_t ptr;
    time_t sec = time(&ptr);
    char buffer[80];

    sleep(2);
    DATE_OUT();

    printf("Local time: %s", asctime(localtime(&ptr)));
    printf("Local time: %s", ctime(&ptr));
    strftime(buffer, 80, "%Y-%m-%d %H:%M:%S", localtime(&ptr));
    printf("Format time: %s\n", buffer);

    time(&end_t);
    printf("Program execution time: %f\n", difftime(end_t, start_t));

    return 0;
}