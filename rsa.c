#include<stdio.h>
#include<math.h>
int gcd(int a, int h)
{
    int temp;
    while (1)
    {
        temp = a%h;
        if (temp == 0)
          return h;
        a = h;
        h = temp;
    }
}

int power(int msg, int e)
{
	int x,xx;
	x=1;
	for(xx=0;xx<e;xx++)
	{
		x=x*msg;
		xx=xx+1;
	}
	return xx;
}

int main()
{
    double p = 3;
    double q = 7;
 
    
    double n = p*q;
 
    
    double e = 2;
    double phi = (p-1)*(q-1);
    while (e < phi)
    {
        if (gcd(e, phi)==1)
            break;
        else
            e++;
    }
 

    int k = 2; 
    double d = (1 + (k*phi))/e;
 

    double msg = 20;
 
    printf("Msg data = %lf", msg);

    double c = power(msg, e);
    c = c % n;
    printf("\nEncrypted data = %lf", c);
 

    double m = power(c, d);
    m = m % n;
    printf("\nOriginal Message Sent = %lf", m);
 
    return 0;
}
