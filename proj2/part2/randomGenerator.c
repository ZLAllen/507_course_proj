#include <stdio.h>
#include <time.h>
#include <stdlib.h>

#define MAX 100
#define loop 5
#define mask 0xffff
#define size 3
int main(void){
    int i, j, k;
    int mat[size * size], vec[size];
    long result[size];
    FILE *c = fopen("hex.txt", "w");
    FILE *d = fopen("dec.txt", "w");
    FILE *e = fopen("sol.txt", "w");

    srand(time(NULL));


    for(i = 0; i < loop; i++) {
        
        for(j = 0; j < size*size; j++){
            fprintf(c, "%02x\n", (unsigned char)(mat[j] = rand()%(2*MAX) - MAX));
            fprintf(d, "%d\n", mat[j]);
        }
        
        for(j = 0; j < size; j++){
            fprintf(c, "%02x\n", (unsigned char)(result[j] = rand()%(2*MAX) - MAX));
            fprintf(d, "%ld\n", result[j]);
        }

        for(j = 0; j < size; j++) {
            fprintf(c, "%02x\n", (unsigned char)(vec[j] = rand()%(2*MAX) - MAX));
            fprintf(d, "%d\n", vec[j]);
        }



        for(j = 0; j < size*size; j++){
            result[j/size] +=((long)(mat[j]))*vec[j%size];
            printf("%d, %d, %ld\n",mat[j], vec[j%size], result[j/size]);
    }
                    

        for(j = 0; j < size; j++){
            fprintf(e, "%04x\n", result[j]&mask);
           // printf( "%ld\n", result[j]&mask); 

        }
    }

    return 0;
}

