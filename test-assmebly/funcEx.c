#include <stdio.h>

int equation(int a);

int main()
{
	int x=5;
	int y;

	y = equation(x);
	
	printf("y=%i\n", y);

	return 0;
}

int equation(int a)
{
	return 3*a+5;
}
