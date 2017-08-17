#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <sys/types.h>
#include <sys/time.h>


double calctime(struct timeval start, struct timeval end) 
{
  double time = 0.0;

  time = end.tv_usec - start.tv_usec;
  time = time/1000000;
  time += end.tv_sec - start.tv_sec;

  return time;
}

int main(){

    double *a;
    double *b;
    double *c;
    long long int i, j, m, n;
    m = 128*128; // 200 KB array = ~5.2GB matrix
    n = m;

    struct timeval start, end, diff;

    a = (double*) malloc(m*sizeof(double));
    b = (double*) malloc(m*n*sizeof(double));
    c = (double*) malloc(m*sizeof(double));

    // Data initialization
    for (i=0; i<m; i++){
        a[i] = 1.0;
        c[i] = 0.0;
        for (j=0; j<n; j++){
           // printf("Here!\n");
            b[i*n + j] = i*n + j;
        }
    }

    // Naive matrix * vector
    gettimeofday(&start, NULL);
    for (i=0; i<m; i++){
        for (j=0; j<n; j++){
            a[i] += b[i*n + j]*c[j];
        }
    }
    gettimeofday(&end, NULL);

    printf("Time in seconds: %lf(s) for matrix size %dx%d\n",
               calctime(start, end), m/8, n/8);

    free(a);
    free(b);
    free(c);

    return(0);

}




