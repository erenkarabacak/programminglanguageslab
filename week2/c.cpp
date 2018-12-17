#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <limits.h>
#include <float.h>
using namespace std;

int main ( void ){

bool b;
char c;
short s;
int i;
double r;

printf("The size of bool is:%d\n",sizeof(b));
printf("The size of short is:%d\n",sizeof(s));
printf("The size of int is:%d\n",sizeof(i));
printf("The size of char is:%d\n",sizeof(c));
printf("The size of double is:%d\n",sizeof(r));

return 0;
}

