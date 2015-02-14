#include "stdio.h"

int main(int argc, char** agrv)
{
    int a = 0;
    int b = 300;

    printf("%s %d \n", __func__, __LINE__);
    while(a < 300)
    {
        a++;
        b++;
        printf("%s %d \n", __func__, b);
    }

    return 0;
}



