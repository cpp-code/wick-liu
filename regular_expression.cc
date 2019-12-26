#include <iostream>
#include <stdarg.h>
#include <regex>
using namespace std;

int main()
{
    string str = "https://www.mail.163.com";
    regex e("([\\w]+)://([\\w]+).([\\w]+.+)");
    smatch m;

    if(regex_search(str, m, e))
    {
        cout << "URL: " << m.str(0) << endl;
        cout << "Protocol: " << m.str(1) << endl;
        cout << "Host: " << m.str(2) << endl;
        cout << "Domain: " << m.str(3) << endl;
    }
    else cout << "Not Found" << endl;

    return 0;    
}
