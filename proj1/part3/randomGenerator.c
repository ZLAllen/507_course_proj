#include <stdio.h>
#include <time.h>
#include <stdlib.h>

#define MAX 100
#define loop 20 
#define mask 0xffff
int main(void){
    long sum;
    char a, b, valid_in,valid_out, i;

    FILE *c = fopen("a.txt", "w");
    FILE *d = fopen("b.txt", "w");
    FILE *f = fopen("valid_in.txt", "w");
    FILE *g = fopen("result.txt", "w");
    FILE *e = fopen("valid_out.txt", "w");

    srand(time(NULL));
     
    sum = 0;
    
    
    //generate a set of 100 inputs along with a series of valid_in that is set with a possibility of 60%
    for(i = 0; i < loop; i++){
        fprintf(c, "%02x\n", (unsigned char)(a = rand()%(2*MAX) - MAX));
        
        fprintf(d, "%02x\n",(unsigned char)(b = rand()%(2*MAX) - MAX));


    
        fprintf(f, "%i\n",(valid_in = ( (rand()%10 < 5)? 0:1)));

        //we are outputing valid_out and result before the calculation, making the current input and previous output stand at the same timeframe;
        //for instance, at the beginning of the program, if a = 1, b = 1, valid_in = 1, the result will still be valid_out = 0, f = 0, because calculation is not yet done.
        fprintf(e, "%i\n", valid_out);

        fprintf(g, "%04x\n",(unsigned long)sum&mask);
        
        if(valid_in){
            printf("%i\n", valid_in);
            sum += a*b;
            valid_out = 1;
        }else{
            valid_out = 0;
        }


    }

    return 0;
}

